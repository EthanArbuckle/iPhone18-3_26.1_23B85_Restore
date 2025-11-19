uint64_t sub_266C4876C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA050, &qword_266DB0080);
  OUTLINED_FUNCTION_11_3(v1);
  v3 = v2;
  v5 = v4;
  v6 = *(v3 + 80);
  v7 = (v6 + 24) & ~v6;
  v8 = *(v0 + 16);
  v9 = v0 + ((*(v5 + 64) + v6 + v7) & ~v6);

  return sub_266C74004(v8, v0 + v7, v9);
}

unint64_t sub_266C4884C()
{
  result = qword_2800CA0C8;
  if (!qword_2800CA0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA0C8);
  }

  return result;
}

uint64_t sub_266C488A0(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_266C488E8(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

unint64_t sub_266C488FC()
{
  result = qword_2800CA0D8;
  if (!qword_2800CA0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA0D8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10SiriFindMy25DeviceDisambiguationErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_266C489BC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_266C48A10(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_266C48A6C(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10SiriFindMy0B6DeviceO22DisambiguationStrategyC6ErrorsO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_266C48AC0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_266C48B14(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_266C48B70(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

unint64_t sub_266C48BA4(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_11()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_6()
{
  v1 = v0[73];
  v2 = v0[66];
  v3 = v0[65];
  v12 = v0[64];
  v13 = v0[63];
  v14 = v0[62];
  v15 = v0[61];
  v16 = v0[60];
  v17 = v0[59];
  v4 = v0[55];
  v5 = v0[56];
  v6 = v0[54];
  v7 = v0[51];
  v8 = v0[52];
  v9 = v0[48];
  v18 = v0[53];
  v19 = v0[47];
  v20 = v0[46];
  v21 = v0[45];
  v22 = v0[44];
  v10 = *(v0[49] + 8);
  return v0[50];
}

void OUTLINED_FUNCTION_4_8()
{
  v2 = v0[62];
  v3 = v0[60];
  v5 = v0[52];
  v4 = v0[53];
  v7 = v0[50];
  v6 = v0[51];
  v8 = v0[49];
  v12 = v0[48];
  v13 = v0[47];
  v14 = v0[46];
  v15 = v0[45];
  v16 = v0[44];
  v17 = v0[43];
  v9 = v0[38];
  v10 = v0[39];
  v18 = v0[42];
  v19 = v0[37];
  v20 = v0[36];
  v21 = v0[33];
  v22 = v0[30];
  v23 = v0[29];
  v11 = v0[27];
  *(v1 - 88) = v0[28];
  *(v1 - 80) = v11;
}

uint64_t OUTLINED_FUNCTION_5_7()
{
  v1 = v0[55];
  v2 = v0[56];
  v3 = v0[54];
  v12 = v0[53];
  v13 = v0[52];
  v14 = v0[51];
  v15 = v0[50];
  v4 = v0[45];
  v5 = v0[46];
  v6 = v0[44];
  v16 = v0[49];
  v17 = v0[43];
  v7 = v0[41];
  v8 = v0[42];
  v9 = v0[37];
  v18 = v0[36];
  v19 = v0[35];
  v20 = v0[34];
  v10 = *(v0[39] + 8);
  return v0[40];
}

uint64_t OUTLINED_FUNCTION_6_7()
{
  v1 = v0[47];
  v2 = v0[48];
  v3 = v0[46];
  v12 = v0[45];
  v13 = v0[44];
  v14 = v0[43];
  v15 = v0[42];
  v4 = v0[37];
  v5 = v0[38];
  v6 = v0[36];
  v16 = v0[41];
  v17 = v0[35];
  v7 = v0[33];
  v8 = v0[34];
  v9 = v0[29];
  v18 = v0[28];
  v19 = v0[27];
  v20 = v0[26];
  v10 = *(v0[31] + 8);
  return v0[32];
}

uint64_t OUTLINED_FUNCTION_12_4@<X0>(int *a1@<X8>)
{
  result = a1[1];
  v2 = a1 + *a1;
  return result;
}

uint64_t OUTLINED_FUNCTION_15_4()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_16_3()
{
  v1 = v0[52];
  v2 = v0[53];
  v4 = v0[42];
  v3 = v0[43];
  v5 = v0[39];
  v6 = v0[40];
  result = v0[37];
  v8 = v0[38];
  v9 = v0[35];
  v10 = v0[29];
  v11 = *(v0[36] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_17_4(uint64_t result)
{
  *(result + 8) = sub_266C42EC8;
  v2 = *(v1 + 328);
  return result;
}

void *OUTLINED_FUNCTION_26_1(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  result[3] = 0;
  result[4] = 0;
  result[5] = a14;
  result[6] = a17;
  result[7] = a10;
  return result;
}

uint64_t OUTLINED_FUNCTION_27_0()
{
  v3 = v0[41];
  v4 = v0[38];
  v5 = v0[37];
  v6 = v0[34];
  v7 = v0[33];
  v8 = v0[32];
  v9 = v0[31];
}

uint64_t OUTLINED_FUNCTION_28()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_37()
{

  return sub_266C47654(v0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_44()
{
  v2 = v0[53];
  v4 = v0[49];
  v3 = v0[50];
  v6 = v0[47];
  v5 = v0[48];
  v8 = v0[45];
  v7 = v0[46];
  v10 = v0[43];
  v9 = v0[44];
  v11 = v0[42];
  v13 = v0[39];
  v14 = v0[38];
  v15 = v0[37];
  v16 = v0[36];
  v17 = v0[33];
  v18 = v0[30];
  v19 = v0[29];
  v20 = v0[28];
  v21 = v0[27];
}

uint64_t OUTLINED_FUNCTION_45()
{
  v3 = v0[55];
  v2 = v0[56];
  v5 = v0[53];
  v4 = v0[54];
  v7 = v0[51];
  v6 = v0[52];
  v9 = v0[49];
  v8 = v0[50];
  v11 = v0[45];
  v10 = v0[46];
  v13 = v0[44];
  v14 = v0[43];
  v15 = v0[40];
  v16 = v0[37];
  v17 = v0[36];
  v18 = v0[35];
  v19 = v0[34];
}

uint64_t OUTLINED_FUNCTION_53()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_62()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_64()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_66(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_69()
{

  return sub_266CB9F54(0, (v0 & 0xC000000000000001) == 0, v0);
}

uint64_t OUTLINED_FUNCTION_70@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + a1 + 8);
}

uint64_t OUTLINED_FUNCTION_71()
{
  result = v0[65];
  v2 = v0[48];
  v3 = v0[49];
  v4 = v0[37];
  v5 = v0[34];
  v6 = v0[35];
  v8 = v0[32];
  v7 = v0[33];
  v9 = v0[31];
  return result;
}

uint64_t OUTLINED_FUNCTION_73()
{

  return sub_266C47654(v0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_79(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = v2[51];
  v4 = v2[49];
  v5 = v2[32];
  return v2[22];
}

uint64_t OUTLINED_FUNCTION_86(uint64_t a1)
{

  return sub_266C47750(v1, a1);
}

uint64_t OUTLINED_FUNCTION_87()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{

  return sub_266C4756C(a13, a16);
}

uint64_t OUTLINED_FUNCTION_89@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + a1 + 8);
}

uint64_t OUTLINED_FUNCTION_90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *(a1 + 88) = a11;
}

uint64_t OUTLINED_FUNCTION_91(uint64_t a1)
{
  *(a1 + 16) = v3;

  return sub_266C475DC(v1, a1 + v2);
}

BOOL OUTLINED_FUNCTION_95(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_96(uint64_t a1)
{
  v2 = *(a1 + 24);

  return sub_266DA74AC();
}

uint64_t *OUTLINED_FUNCTION_97(uint64_t a1)
{
  *(v1 + 128) = a1;

  return __swift_allocate_boxed_opaque_existential_1((v1 + 96));
}

uint64_t OUTLINED_FUNCTION_98(uint64_t a1)
{
  v2 = *(a1 + 24);

  return sub_266DA74AC();
}

uint64_t OUTLINED_FUNCTION_101()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_103(uint64_t result)
{
  *(result + 8) = v1;
  v3 = *(v2 + 464);
  return result;
}

uint64_t OUTLINED_FUNCTION_104()
{
  v2 = *(v1 + 320) + v0;
  v4 = *(v2 - 40);
  result = *(v2 - 32);
  *(v1 + 360) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_106(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  result = v15;
  *(a1 + 16) = v15;
  *(a1 + 24) = a15;
  return result;
}

uint64_t OUTLINED_FUNCTION_115(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v13 = v10 + *(v11 + 32);

  return __swift_getEnumTagSinglePayload(v13, 1, a10);
}

uint64_t OUTLINED_FUNCTION_116()
{

  return sub_266DA800C();
}

uint64_t *OUTLINED_FUNCTION_117(uint64_t a1)
{
  *(v1 + 88) = a1;

  return __swift_allocate_boxed_opaque_existential_1((v1 + 56));
}

uint64_t OUTLINED_FUNCTION_119(uint64_t a1)
{
  *(v1 + 368) = a1;

  return swift_task_alloc();
}

uint64_t sub_266C49698()
{
  sub_266DA929C();
  result = sub_266DA927C();
  qword_2800E61D8 = result;
  return result;
}

uint64_t sub_266C496F4()
{
  v0 = sub_266DA94AC();
  __swift_allocate_value_buffer(v0, qword_2800E61E0);
  v1 = __swift_project_value_buffer(v0, qword_2800E61E0);
  if (qword_28156F1D8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, &unk_28156F1E0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

_BYTE *storeEnumTagSinglePayload for SetSharedLocationVisibility.Errors(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_266C4989C()
{
  result = qword_2800CA0E0;
  if (!qword_2800CA0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA0E0);
  }

  return result;
}

uint64_t sub_266C498F8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 184))
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

uint64_t sub_266C49938(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 184) = 1;
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

    *(result + 184) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_266C499B4()
{
  OUTLINED_FUNCTION_22_0();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_266DA7A4C();
  v1[5] = v4;
  OUTLINED_FUNCTION_11_3(v4);
  v1[6] = v5;
  v7 = *(v6 + 64);
  v1[7] = OUTLINED_FUNCTION_62();
  v8 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_266C49A5C()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = v0[2];
  v5 = v0[3];
  v6 = *(v0[4] + 40);
  type metadata accessor for SetSharedLocationVisibilityIntent();

  v7 = v6;
  v8 = v5;
  sub_266DA7A3C();
  sub_266DA7A9C();
  sub_266DA7A8C();
  (*(v2 + 8))(v1, v3);

  v9 = OUTLINED_FUNCTION_15_5();

  return v10(v9);
}

uint64_t sub_266C49B48()
{
  OUTLINED_FUNCTION_22_0();
  v1[31] = v2;
  v1[32] = v0;
  v1[30] = v3;
  v4 = type metadata accessor for Snippets();
  v1[33] = v4;
  OUTLINED_FUNCTION_4_3(v4);
  v6 = *(v5 + 64);
  v1[34] = OUTLINED_FUNCTION_64();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v7 = sub_266DA80AC();
  v1[38] = v7;
  OUTLINED_FUNCTION_11_3(v7);
  v1[39] = v8;
  v10 = *(v9 + 64);
  v1[40] = OUTLINED_FUNCTION_62();
  v11 = sub_266DA7C0C();
  v1[41] = v11;
  OUTLINED_FUNCTION_11_3(v11);
  v1[42] = v12;
  v14 = *(v13 + 64);
  v1[43] = OUTLINED_FUNCTION_64();
  v1[44] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA040, &unk_266DB0070);
  OUTLINED_FUNCTION_4_3(v15);
  v17 = *(v16 + 64);
  v1[45] = OUTLINED_FUNCTION_62();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA048, &unk_266DAFC00);
  OUTLINED_FUNCTION_4_3(v18);
  v20 = *(v19 + 64);
  v1[46] = OUTLINED_FUNCTION_62();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA050, &qword_266DB0080);
  OUTLINED_FUNCTION_11_3(v21);
  v1[47] = v22;
  v1[48] = *(v23 + 64);
  v1[49] = OUTLINED_FUNCTION_64();
  v1[50] = swift_task_alloc();
  v1[51] = swift_task_alloc();
  v1[52] = swift_task_alloc();
  v1[53] = swift_task_alloc();
  v1[54] = swift_task_alloc();
  v1[55] = swift_task_alloc();
  v1[56] = swift_task_alloc();
  v24 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v24, v25, v26);
}

void sub_266C49D98()
{
  v1 = v0[31];
  v2 = v0[32];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA0F0, &qword_266DB0090);
  v0[57] = sub_266DA7FCC();
  v0[58] = sub_266DA7FBC();
  v3 = v2[22];
  __swift_project_boxed_opaque_existential_1(v2 + 18, v2[21]);
  v4 = *(v3 + 8);
  v10 = v4 + *v4;
  v5 = v4[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_24_1();
  v0[59] = v6;
  *v6 = v7;
  v6[1] = sub_266C49EF4;
  OUTLINED_FUNCTION_57_0();

  __asm { BRAA            X3, X16 }
}

uint64_t sub_266C49EF4()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v3 = *(v2 + 472);
  v4 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_49();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_266C49FF8()
{
  v1 = v0;
  v2 = *(v0 + 176);
  v3 = *(v0 + 184);
  v4 = *(v0 + 192);
  v5 = *(v0 + 200);
  v6 = *(v0 + 456);
  v7 = *(v0 + 464);
  v36 = v6;
  v8 = *(v0 + 448);
  v34 = v7;
  v33 = *(v0 + 264);
  *(v0 + 480) = *(*(v0 + 256) + 136);
  v9 = [v6 visibility];
  v10 = OBJC_IVAR___SetSharedLocationVisibilityIntentResponse_code;
  v35 = OBJC_IVAR___SetSharedLocationVisibilityIntentResponse_code;
  swift_beginAccess();
  v32 = *(v7 + v10) == 100;
  v11 = type metadata accessor for Snippets.SetSharedLocationVisibilityResult();
  v12 = v8 + *(v11 + 24);
  *v12 = 0;
  *(v12 + 8) = 0;
  *(v12 + 16) = 1;
  *(v12 + 24) = 0;
  *(v1 + 232) = v9;
  v13 = OUTLINED_FUNCTION_47_0();
  sub_266C4DBA4(v13, v14, v15);
  sub_266DA751C();
  v16 = *(v11 + 20);
  *(v1 + 201) = v32;
  sub_266DA751C();
  v17 = OUTLINED_FUNCTION_47_0();
  sub_266C4DBB8(v17, v18, v19);
  v20 = *(v12 + 24);
  sub_266C4DBB8(*v12, *(v12 + 8), *(v12 + 16));
  *v12 = v2;
  *(v12 + 8) = v3;
  *(v12 + 16) = v4;
  *(v12 + 24) = v5;
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_54_0();
  OUTLINED_FUNCTION_43();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v33);
  *(v1 + 202) = 0;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA058, &unk_266DB30D0);
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_41();
  *(v1 + 488) = sub_266DA93CC();
  v27 = [v36 visibility];
  v28 = *(v34 + v35);
  v29 = swift_task_alloc();
  *(v1 + 496) = v29;
  *v29 = v1;
  OUTLINED_FUNCTION_19_3(v29);
  v30 = *(v1 + 256);

  return sub_266C4B5B0(v27, v28);
}

uint64_t sub_266C4A214()
{
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  OUTLINED_FUNCTION_10_3();
  *v4 = v3;
  v6 = *(v5 + 496);
  *v4 = *v1;
  v3[63] = v7;
  v3[64] = v0;

  if (v0)
  {
    v8 = v3[56];
    sub_266C47654(v3[55], &qword_2800CA050, &qword_266DB0080);
    v9 = OUTLINED_FUNCTION_32();
    sub_266C47654(v9, v10, &qword_266DB0080);
  }

  OUTLINED_FUNCTION_49();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_266C4A8A8()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v5 = *(v4 + 536);
  v6 = *(v4 + 520);
  v7 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 136));
  __swift_destroy_boxed_opaque_existential_0((v2 + 96));
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266C4A9B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_38_0();
  OUTLINED_FUNCTION_46_0();
  v27 = v24[66];
  v28 = v24[63];
  v29 = v24[61];
  v31 = v24[36];
  v30 = v24[37];

  sub_266C477B4(v31);
  sub_266C477B4(v30);
  v32 = OUTLINED_FUNCTION_0_17();
  v33(v32);
  v34 = OUTLINED_FUNCTION_18_3();
  v35(v34);
  OUTLINED_FUNCTION_17_5();
  sub_266C47654(v25, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v26, &qword_2800CA048, &unk_266DAFC00);
  OUTLINED_FUNCTION_37();

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_112();

  return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_266C4AB34()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v5 = *(v4 + 544);
  v6 = *(v4 + 520);
  v7 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 56));
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266C4AC34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_38_0();
  OUTLINED_FUNCTION_46_0();
  v27 = v24[66];
  v28 = v24[63];
  v29 = v24[61];
  v30 = v24[35];

  sub_266C477B4(v30);
  v31 = OUTLINED_FUNCTION_0_17();
  v32(v31);
  v33 = OUTLINED_FUNCTION_18_3();
  v34(v33);
  OUTLINED_FUNCTION_17_5();
  sub_266C47654(v25, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v26, &qword_2800CA048, &unk_266DAFC00);
  OUTLINED_FUNCTION_37();

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_112();

  return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_266C4ADB0()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v5 = *(v4 + 552);
  v6 = *(v4 + 520);
  v7 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 16));
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266C4AEB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_38_0();
  OUTLINED_FUNCTION_46_0();
  v27 = v24[66];
  v28 = v24[63];
  v29 = v24[61];
  v30 = v24[34];

  sub_266C477B4(v30);
  v31 = OUTLINED_FUNCTION_0_17();
  v32(v31);
  v33 = OUTLINED_FUNCTION_18_3();
  v34(v33);
  OUTLINED_FUNCTION_17_5();
  sub_266C47654(v25, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v26, &qword_2800CA048, &unk_266DAFC00);
  OUTLINED_FUNCTION_37();

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_112();

  return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_266C4B02C()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v1 + 560);
  v3 = *(v1 + 520);
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_266C4B12C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_38_0();
  OUTLINED_FUNCTION_46_0();
  v27 = v24[66];
  v28 = v24[63];
  v29 = v24[61];

  v30 = OUTLINED_FUNCTION_0_17();
  v31(v30);
  v32 = OUTLINED_FUNCTION_18_3();
  v33(v32);
  OUTLINED_FUNCTION_17_5();
  sub_266C47654(v25, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v26, &qword_2800CA048, &unk_266DAFC00);
  OUTLINED_FUNCTION_37();

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_112();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_266C4B29C()
{
  v1 = *(v0 + 456);
  v2 = *(v0 + 464);
  v3 = *(v0 + 448);
  v29 = v1;
  v4 = *(v0 + 264);
  *(v0 + 480) = *(*(v0 + 256) + 136);
  v5 = [v1 visibility];
  v6 = OBJC_IVAR___SetSharedLocationVisibilityIntentResponse_code;
  swift_beginAccess();
  v7 = *(v2 + v6) == 100;
  v8 = type metadata accessor for Snippets.SetSharedLocationVisibilityResult();
  v9 = v3 + *(v8 + 24);
  OUTLINED_FUNCTION_49_0();
  *(v0 + 232) = v5;
  v10 = OUTLINED_FUNCTION_52_0();
  sub_266C4DBA4(v10, v11, v12);
  sub_266DA751C();
  v13 = *(v8 + 20);
  *(v0 + 201) = v7;
  sub_266DA751C();
  v14 = OUTLINED_FUNCTION_52_0();
  sub_266C4DBB8(v14, v15, v16);
  v17 = *(v9 + 24);
  sub_266C4DBB8(*v9, *(v9 + 8), *(v9 + 16));
  OUTLINED_FUNCTION_49_0();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_54_0();
  OUTLINED_FUNCTION_43();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v4);
  *(v0 + 202) = 0;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA058, &unk_266DB30D0);
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_41();
  *(v0 + 488) = sub_266DA93CC();
  v24 = [v29 visibility];
  v25 = *(v2 + v6);
  v26 = swift_task_alloc();
  *(v0 + 496) = v26;
  *v26 = v0;
  OUTLINED_FUNCTION_19_3(v26);
  v27 = *(v0 + 256);

  return sub_266C4B5B0(v24, v25);
}

uint64_t sub_266C4B478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_36();
  v23 = *(v22 + 488);
  v24 = *(v22 + 464);
  v25 = *(v22 + 440);
  v26 = *(v22 + 448);
  v28 = *(v22 + 424);
  v27 = *(v22 + 432);
  v30 = *(v22 + 408);
  v29 = *(v22 + 416);
  v31 = *(v22 + 400);
  v42 = *(v22 + 392);
  v43 = *(v22 + 368);
  v44 = *(v22 + 360);
  v45 = *(v22 + 352);
  v46 = *(v22 + 344);
  v47 = *(v22 + 320);
  v48 = *(v22 + 296);
  v49 = *(v22 + 288);
  v50 = *(v22 + 280);
  v51 = *(v22 + 272);

  OUTLINED_FUNCTION_28();
  v32 = *(v22 + 512);
  OUTLINED_FUNCTION_25_0();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, a20, a21, a22);
}

uint64_t sub_266C4B5B0(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA038, &unk_266DAFBF0) - 8) + 64) + 15;
  v3[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266C4B650, 0, 0);
}

uint64_t sub_266C4B650()
{
  sub_266DA914C();
  if (qword_2800C9198 != -1)
  {
    swift_once();
  }

  v1 = v0[13];

  v0[16] = sub_266C556E8(v2);
  if (v1 == 100)
  {
    v3 = v0[15];
    v4 = *(v0[14] + 48);
    SharedLocationVisibility.description.getter(v0[12]);
    sub_266DAA77C();

    v5 = sub_266DA919C();
    __swift_storeEnumTagSinglePayload(v3, 0, 1, v5);
    v6 = swift_task_alloc();
    v0[21] = v6;
    *v6 = v0;
    v6[1] = sub_266C4BCC0;
    v7 = v0[15];
    OUTLINED_FUNCTION_57_0();

    return sub_266CB577C();
  }

  else
  {
    v10 = v0[12];
    if (v10 == 2)
    {
      v24 = *(v0[14] + 48);
      v25 = swift_task_alloc();
      v0[19] = v25;
      *v25 = v0;
      v25[1] = sub_266C4BB58;
      OUTLINED_FUNCTION_57_0();

      return sub_266CB40EC(v26);
    }

    else if (v10 == 1)
    {
      v20 = *(v0[14] + 48);
      v21 = swift_task_alloc();
      v0[17] = v21;
      *v21 = v0;
      v21[1] = sub_266C4B9F0;
      OUTLINED_FUNCTION_57_0();

      return sub_266CB5A74(v22);
    }

    else
    {
      if (!v10)
      {
        if (qword_2800C91A0 != -1)
        {
          swift_once();
        }

        v11 = sub_266DA94AC();
        __swift_project_value_buffer(v11, qword_2800E61E0);
        v12 = sub_266DA948C();
        v13 = sub_266DAAAEC();
        if (os_log_type_enabled(v12, v13))
        {
          v14 = swift_slowAlloc();
          *v14 = 0;
          _os_log_impl(&dword_266C08000, v12, v13, "Visibility is unknown could not generate successful handle response.", v14, 2u);
          MEMORY[0x26D5F2480](v14, -1, -1);
        }

        sub_266C4E844();
        swift_allocError();
        *v15 = 0;
        swift_willThrow();
        v17 = v0[15];
        v16 = v0[16];

        OUTLINED_FUNCTION_28();
        OUTLINED_FUNCTION_57_0();

        __asm { BRAA            X1, X16 }
      }

      v0[11] = v10;
      OUTLINED_FUNCTION_57_0();

      return sub_266DAB1DC();
    }
  }
}

uint64_t sub_266C4B9F0()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_35_0();
  *v3 = v2;
  v2[2] = v1;
  v2[3] = v4;
  v2[4] = v0;
  v6 = *(v5 + 136);
  v7 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;
  *(v9 + 144) = v0;

  OUTLINED_FUNCTION_49();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_266C4BAF0()
{
  OUTLINED_FUNCTION_22_0();
  v1 = v0[3];
  v3 = v0[15];
  v2 = v0[16];

  v4 = OUTLINED_FUNCTION_15_5();

  return v5(v4);
}

uint64_t sub_266C4BB58()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_35_0();
  *v3 = v2;
  v2[5] = v1;
  v2[6] = v4;
  v2[7] = v0;
  v6 = *(v5 + 152);
  v7 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;
  *(v9 + 160) = v0;

  OUTLINED_FUNCTION_49();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_266C4BC58()
{
  OUTLINED_FUNCTION_22_0();
  v1 = v0[6];
  v3 = v0[15];
  v2 = v0[16];

  v4 = OUTLINED_FUNCTION_15_5();

  return v5(v4);
}

uint64_t sub_266C4BCC0()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_35_0();
  *v3 = v2;
  v2[8] = v1;
  v2[9] = v4;
  v2[10] = v0;
  v6 = *(v5 + 168);
  v7 = *(v5 + 120);
  v8 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v9 = v8;
  *(v10 + 176) = v0;

  sub_266C47654(v7, &qword_2800CA038, &unk_266DAFBF0);
  OUTLINED_FUNCTION_49();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_266C4BDEC()
{
  OUTLINED_FUNCTION_22_0();
  v1 = v0[9];
  v3 = v0[15];
  v2 = v0[16];

  v4 = OUTLINED_FUNCTION_15_5();

  return v5(v4);
}

uint64_t sub_266C4BE54()
{
  OUTLINED_FUNCTION_22_0();
  v1 = v0[22];
  v3 = v0[15];
  v2 = v0[16];

  OUTLINED_FUNCTION_28();

  return v4();
}

uint64_t sub_266C4BEB8()
{
  OUTLINED_FUNCTION_22_0();
  v1 = v0[18];
  v3 = v0[15];
  v2 = v0[16];

  OUTLINED_FUNCTION_28();

  return v4();
}

uint64_t sub_266C4BF1C()
{
  OUTLINED_FUNCTION_22_0();
  v1 = v0[20];
  v3 = v0[15];
  v2 = v0[16];

  OUTLINED_FUNCTION_28();

  return v4();
}

uint64_t sub_266C4BF80()
{
  OUTLINED_FUNCTION_22_0();
  v1[22] = v2;
  v1[23] = v0;
  v3 = type metadata accessor for Snippets();
  v1[24] = v3;
  OUTLINED_FUNCTION_4_3(v3);
  v5 = *(v4 + 64);
  v1[25] = OUTLINED_FUNCTION_64();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v6 = sub_266DA80AC();
  v1[29] = v6;
  OUTLINED_FUNCTION_11_3(v6);
  v1[30] = v7;
  v9 = *(v8 + 64);
  v1[31] = OUTLINED_FUNCTION_62();
  v10 = sub_266DA7C0C();
  v1[32] = v10;
  OUTLINED_FUNCTION_11_3(v10);
  v1[33] = v11;
  v13 = *(v12 + 64);
  v1[34] = OUTLINED_FUNCTION_64();
  v1[35] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA040, &unk_266DB0070);
  OUTLINED_FUNCTION_4_3(v14);
  v16 = *(v15 + 64);
  v1[36] = OUTLINED_FUNCTION_62();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA048, &unk_266DAFC00);
  OUTLINED_FUNCTION_4_3(v17);
  v19 = *(v18 + 64);
  v1[37] = OUTLINED_FUNCTION_62();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA050, &qword_266DB0080);
  OUTLINED_FUNCTION_11_3(v20);
  v1[38] = v21;
  v1[39] = *(v22 + 64);
  v1[40] = OUTLINED_FUNCTION_64();
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();
  v23 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v23, v24, v25);
}

uint64_t sub_266C4C1CC()
{
  v2 = *(v0 + 368);
  v1 = *(v0 + 376);
  v4 = *(v0 + 184);
  v3 = *(v0 + 192);
  *(v0 + 384) = *(v4 + 136);
  OUTLINED_FUNCTION_43();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v3);
  OUTLINED_FUNCTION_43();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v3);
  *(v0 + 472) = 0;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA058, &unk_266DB30D0);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  *(v0 + 392) = sub_266DA93CC();
  v14 = *(v4 + 48);
  v15 = swift_task_alloc();
  *(v0 + 400) = v15;
  *v15 = v0;
  v15[1] = sub_266C4C2C4;

  return sub_266CB56D4();
}

uint64_t sub_266C4C2C4()
{
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  OUTLINED_FUNCTION_10_3();
  *v4 = v3;
  v6 = *(v5 + 400);
  *v4 = *v1;
  v3[51] = v7;
  v3[52] = v0;

  if (v0)
  {
    v8 = v3[47];
    sub_266C47654(v3[46], &qword_2800CA050, &qword_266DB0080);
    v9 = OUTLINED_FUNCTION_32();
    sub_266C47654(v9, v10, &qword_266DB0080);
  }

  OUTLINED_FUNCTION_49();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_266C4C954()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v5 = *(v4 + 440);
  v6 = *(v4 + 424);
  v7 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 136));
  __swift_destroy_boxed_opaque_existential_0((v2 + 96));
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266C4CA5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_36();
  v25 = v22[54];
  v26 = v22[51];
  v27 = v22[49];
  v29 = v22[27];
  v28 = v22[28];

  sub_266C477B4(v29);
  sub_266C477B4(v28);
  v30 = OUTLINED_FUNCTION_1_12();
  v31(v30);
  v32 = OUTLINED_FUNCTION_18_3();
  v33(v32);
  OUTLINED_FUNCTION_17_5();
  OUTLINED_FUNCTION_37();
  sub_266C47654(v23, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v24, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_25_0();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_266C4CBD4()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v5 = *(v4 + 448);
  v6 = *(v4 + 424);
  v7 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 56));
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266C4CCD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_36();
  v25 = v22[54];
  v26 = v22[51];
  v27 = v22[49];
  v28 = v22[26];

  sub_266C477B4(v28);
  v29 = OUTLINED_FUNCTION_1_12();
  v30(v29);
  v31 = OUTLINED_FUNCTION_18_3();
  v32(v31);
  OUTLINED_FUNCTION_17_5();
  OUTLINED_FUNCTION_37();
  sub_266C47654(v23, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v24, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_25_0();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_266C4CE44()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v5 = *(v4 + 456);
  v6 = *(v4 + 424);
  v7 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 16));
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266C4CF44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_36();
  v25 = v22[54];
  v26 = v22[51];
  v27 = v22[49];
  v28 = v22[25];

  sub_266C477B4(v28);
  v29 = OUTLINED_FUNCTION_1_12();
  v30(v29);
  v31 = OUTLINED_FUNCTION_18_3();
  v32(v31);
  OUTLINED_FUNCTION_17_5();
  OUTLINED_FUNCTION_37();
  sub_266C47654(v23, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v24, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_25_0();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_266C4D0B4()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v1 + 464);
  v3 = *(v1 + 424);
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_266C4D1B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_36();
  v25 = v22[54];
  v26 = v22[51];
  v27 = v22[49];

  v28 = OUTLINED_FUNCTION_1_12();
  v29(v28);
  v30 = OUTLINED_FUNCTION_18_3();
  v31(v30);
  OUTLINED_FUNCTION_17_5();
  OUTLINED_FUNCTION_37();
  sub_266C47654(v23, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v24, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_25_0();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_266C4D318()
{
  v1 = v0[49];
  v3 = v0[46];
  v2 = v0[47];
  v5 = v0[44];
  v4 = v0[45];
  v6 = v0[42];
  v7 = v0[43];
  v9 = v0[40];
  v8 = v0[41];
  v10 = v0[37];
  v14 = v0[36];
  v15 = v0[35];
  v16 = v0[34];
  v17 = v0[31];
  v18 = v0[28];
  v19 = v0[27];
  v20 = v0[26];
  v21 = v0[25];

  OUTLINED_FUNCTION_28();
  v12 = v0[52];

  return v11();
}

uint64_t sub_266C4D458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5B3C8] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_266C48BB4;

  return MEMORY[0x2821B9C68](a1, a2, a3, a4);
}

uint64_t sub_266C4D51C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5B3D0] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_266C48BB4;

  return MEMORY[0x2821B9C70](a1, a2, a3, a4);
}

uint64_t sub_266C4D5E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5B3B0] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_266C48BB4;

  return MEMORY[0x2821B9C48](a1, a2, a3, a4);
}

uint64_t sub_266C4D6A4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_266C48BB4;

  return sub_266C49B48();
}

uint64_t sub_266C4D74C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5B3C0] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_266C48BB4;

  return MEMORY[0x2821B9C60](a1, a2, a3, a4);
}

uint64_t sub_266C4D810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5B3B8] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_266C48BB4;

  return MEMORY[0x2821B9C58](a1, a2, a3, a4);
}

uint64_t sub_266C4D8D4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_266C4716C;

  return sub_266C4BF80();
}

uint64_t sub_266C4D96C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_266C4DA10;

  return sub_266C499B4();
}

uint64_t sub_266C4DA10()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_15_5();

  return v6(v5);
}

unint64_t sub_266C4DAF8()
{
  result = qword_2800CA0E8;
  if (!qword_2800CA0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA0E8);
  }

  return result;
}

unint64_t sub_266C4DB4C()
{
  result = qword_2800CA070;
  if (!qword_2800CA070)
  {
    type metadata accessor for Snippets();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA070);
  }

  return result;
}

uint64_t sub_266C4DBA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

uint64_t sub_266C4DBB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

uint64_t objectdestroyTm_1()
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA050, &qword_266DB0080);
  OUTLINED_FUNCTION_11_3(v4);
  v6 = *(v5 + 80);
  v8 = *(v7 + 64);
  v9 = (v6 + 24) & ~v6;
  v10 = (v8 + v6 + v9) & ~v6;
  v11 = *(v0 + 16);

  v12 = (v0 + v9);
  v13 = type metadata accessor for Snippets();
  v14 = OUTLINED_FUNCTION_55();
  if (!__swift_getEnumTagSinglePayload(v14, v15, v13))
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v35 = v12[1];

        v36 = v12[3];

        v37 = type metadata accessor for Snippets.Contact();
        v38 = OUTLINED_FUNCTION_98(v37);
        OUTLINED_FUNCTION_8_0(v38);
        (*(v39 + 8))(&v2[v12]);
        v34 = v1[7];
        goto LABEL_35;
      case 1u:
      case 2u:
      case 3u:
        v16 = *v12;
        goto LABEL_36;
      case 4u:
        v21 = v12[1];

        v22 = v12[3];

        v23 = v12[5];

        v24 = v12[6];

        v12 = (v12 + *(type metadata accessor for Friend() + 40));
        v1 = type metadata accessor for FriendLocation();
        v25 = OUTLINED_FUNCTION_55();
        if (__swift_getEnumTagSinglePayload(v25, v26, v1))
        {
          break;
        }

        v27 = v12[1];

        v28 = v1[8];
LABEL_23:
        v71 = v12 + v28;
        v1 = type metadata accessor for Location();
        v72 = OUTLINED_FUNCTION_55();
        if (!__swift_getEnumTagSinglePayload(v72, v73, v1))
        {
          v74 = v1[7];
          v75 = sub_266DA746C();
          OUTLINED_FUNCTION_8_0(v75);
          (*(v76 + 8))(&v71[v74]);
          OUTLINED_FUNCTION_48(v1[8]);

          v2 = &v71[v1[11]];
          v77 = type metadata accessor for Address();
          v78 = OUTLINED_FUNCTION_109();
          if (!__swift_getEnumTagSinglePayload(v78, v79, v77))
          {
            sub_266DA919C();
            v80 = OUTLINED_FUNCTION_109();
            v238 = v81;
            EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v80, v82, v81);
            if (!EnumTagSinglePayload)
            {
              OUTLINED_FUNCTION_20_2(EnumTagSinglePayload, v84, v85, v86, v87, v88, v89, v90, v235, v238);
              (*(v91 + 8))(v2);
            }

            OUTLINED_FUNCTION_70(v77[5]);
            OUTLINED_FUNCTION_70(v77[6]);
            v92 = OUTLINED_FUNCTION_70(v77[7]);
            v100 = OUTLINED_FUNCTION_115(v92, v93, v94, v95, v96, v97, v98, v99, v235, v238);
            if (!v100)
            {
              OUTLINED_FUNCTION_20_2(v100, v101, v102, v103, v104, v105, v106, v107, v235, v239);
              (*(v108 + 8))(v3 + v2);
            }

            OUTLINED_FUNCTION_70(v77[9]);
            OUTLINED_FUNCTION_70(v77[10]);
            OUTLINED_FUNCTION_70(v77[11]);
            v109 = *&v2[v77[12]];
          }

          v34 = v1[12];
LABEL_35:
          OUTLINED_FUNCTION_48(v34);
LABEL_36:
        }

        break;
      case 5u:
        v48 = v12[1];

        v49 = v12[3];

        v50 = v12[5];

        v51 = v12[6];

        v52 = v12 + *(type metadata accessor for Friend() + 40);
        v53 = type metadata accessor for FriendLocation();
        if (!OUTLINED_FUNCTION_66(v53))
        {
          v54 = *(v52 + 1);

          v55 = &v52[*(v2 + 8)];
          v56 = type metadata accessor for Location();
          if (!OUTLINED_FUNCTION_66(v56))
          {
            v57 = *(v2 + 7);
            v58 = sub_266DA746C();
            OUTLINED_FUNCTION_8_0(v58);
            (*(v59 + 8))(&v55[v57]);
            OUTLINED_FUNCTION_21_0(*(v2 + 8));
            v60 = &v55[*(v2 + 11)];
            v3 = type metadata accessor for Address();
            if (!__swift_getEnumTagSinglePayload(v60, 1, v3))
            {
              v237 = sub_266DA919C();
              v61 = __swift_getEnumTagSinglePayload(v60, 1, v237);
              if (!v61)
              {
                OUTLINED_FUNCTION_20_2(v61, v62, v63, v64, v65, v66, v67, v68, v235, v237);
                (*(v69 + 8))(v60);
              }

              OUTLINED_FUNCTION_89(v3[5]);
              OUTLINED_FUNCTION_89(v3[6]);
              OUTLINED_FUNCTION_89(v3[7]);
              v235 = v3[8];
              if (!__swift_getEnumTagSinglePayload(v60 + v235, 1, v237))
              {
                (*(*(v237 - 8) + 8))(v60 + v235);
              }

              OUTLINED_FUNCTION_89(v3[9]);
              OUTLINED_FUNCTION_89(v3[10]);
              OUTLINED_FUNCTION_89(v3[11]);
              v70 = *(v60 + v3[12]);
            }

            OUTLINED_FUNCTION_21_0(*(v2 + 12));
          }
        }

        v28 = *(type metadata accessor for Snippets.CarPlayFriendLocation() + 20);
        goto LABEL_23;
      case 6u:
        v110 = v12[1];

        v111 = v12[3];

        OUTLINED_FUNCTION_52();
        if (!(!v44 & v43))
        {
          sub_266C2BB04(v12[5], v112);
        }

        v113 = v12[8];

        v114 = v12[10];
        goto LABEL_36;
      case 7u:
        v40 = v12[1];

        v41 = v12[3];

        OUTLINED_FUNCTION_52();
        if (!(!v44 & v43))
        {
          sub_266C2BB04(v12[5], v42);
        }

        v45 = v12[8];

        v46 = v12[10];

        v47 = v12[12];
        goto LABEL_36;
      case 8u:
        if ((v12[2] - 1) < 7)
        {
          break;
        }

        goto LABEL_36;
      case 9u:
        v29 = v12[1];

        v30 = v12[3];

        v31 = type metadata accessor for Snippets.Contact();
        v32 = OUTLINED_FUNCTION_98(v31);
        OUTLINED_FUNCTION_8_0(v32);
        (*(v33 + 8))(&v2[v12]);
        OUTLINED_FUNCTION_48(v1[7]);

        v1 = type metadata accessor for Snippets.SetGeoFenceConfirmation();
        OUTLINED_FUNCTION_48(v1[5]);

        v34 = v1[6];
        goto LABEL_35;
      case 0xAu:
        v115 = v12[1];

        v116 = v12[3];

        v117 = type metadata accessor for Snippets.Contact();
        v118 = OUTLINED_FUNCTION_98(v117);
        OUTLINED_FUNCTION_8_0(v118);
        (*(v119 + 8))(&v2[v12]);
        OUTLINED_FUNCTION_48(v1[7]);

        v1 = type metadata accessor for Snippets.SetGeoFenceResult();
        OUTLINED_FUNCTION_48(v1[7]);

        v34 = v1[8];
        goto LABEL_35;
      case 0xBu:
        v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA060, &unk_266DB1040);
        OUTLINED_FUNCTION_8_0(v17);
        (*(v18 + 8))(v12);
        v1 = type metadata accessor for Snippets.SetSharedLocationVisibilityResult();
        v2 = v1[5];
        v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA068, &qword_266DAFC30);
        OUTLINED_FUNCTION_8_0(v19);
        (*(v20 + 8))(&v2[v12]);
        if (*(v12 + v1[6] + 16) == 1)
        {
          break;
        }

        goto LABEL_36;
      default:
        break;
    }
  }

  v120 = (v0 + v10);
  v121 = OUTLINED_FUNCTION_55();
  if (!__swift_getEnumTagSinglePayload(v121, v122, v13))
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v147 = *(v120 + 1);

        v148 = *(v120 + 3);

        v149 = type metadata accessor for Snippets.Contact();
        v150 = OUTLINED_FUNCTION_96(v149);
        OUTLINED_FUNCTION_8_0(v150);
        (*(v151 + 8))(v1 + v120);
        v146 = *(v13 + 28);
        goto LABEL_71;
      case 1u:
      case 2u:
      case 3u:
        v123 = *v120;
        goto LABEL_73;
      case 4u:
        v130 = *(v120 + 1);

        v131 = *(v120 + 3);

        v132 = *(v120 + 5);

        v133 = *(v120 + 6);

        v134 = &v120[*(type metadata accessor for Friend() + 40)];
        v135 = type metadata accessor for FriendLocation();
        v136 = OUTLINED_FUNCTION_31();
        if (__swift_getEnumTagSinglePayload(v136, v137, v135))
        {
          break;
        }

        v138 = *(v134 + 1);

        v139 = &v134[*(v135 + 32)];
LABEL_59:
        v209 = type metadata accessor for Location();
        v210 = OUTLINED_FUNCTION_31();
        if (__swift_getEnumTagSinglePayload(v210, v211, v209))
        {
          break;
        }

        v212 = v209[7];
        v213 = sub_266DA746C();
        OUTLINED_FUNCTION_8_0(v213);
        (*(v214 + 8))(&v139[v212]);
        v215 = *&v139[v209[8] + 8];

        v216 = &v139[v209[11]];
        v217 = type metadata accessor for Address();
        if (!OUTLINED_FUNCTION_66(v217))
        {
          v218 = sub_266DA919C();
          if (!__swift_getEnumTagSinglePayload(v216, 1, v218))
          {
            (*(*(v218 - 8) + 8))(v216, v218);
          }

          OUTLINED_FUNCTION_21_0(*(v2 + 5));
          OUTLINED_FUNCTION_21_0(*(v2 + 6));
          OUTLINED_FUNCTION_21_0(*(v2 + 7));
          v219 = *(v2 + 8);
          if (!__swift_getEnumTagSinglePayload(v216 + v219, 1, v218))
          {
            (*(*(v218 - 8) + 8))(v216 + v219, v218);
          }

          OUTLINED_FUNCTION_21_0(*(v2 + 9));
          OUTLINED_FUNCTION_21_0(*(v2 + 10));
          OUTLINED_FUNCTION_21_0(*(v2 + 11));
          v220 = *(v216 + *(v2 + 12));
        }

        v221 = &v139[v209[12]];
LABEL_72:
        v233 = *(v221 + 1);
LABEL_73:

        break;
      case 5u:
        v158 = *(v120 + 1);

        v159 = *(v120 + 3);

        v160 = *(v120 + 5);

        v161 = *(v120 + 6);

        v162 = &v120[*(type metadata accessor for Friend() + 40)];
        v163 = type metadata accessor for FriendLocation();
        v164 = OUTLINED_FUNCTION_31();
        if (!__swift_getEnumTagSinglePayload(v164, v165, v163))
        {
          v166 = *(v162 + 1);

          v167 = &v162[*(v163 + 32)];
          v168 = type metadata accessor for Location();
          v169 = OUTLINED_FUNCTION_31();
          if (!__swift_getEnumTagSinglePayload(v169, v170, v168))
          {
            v171 = v168[7];
            v172 = sub_266DA746C();
            OUTLINED_FUNCTION_8_0(v172);
            (*(v173 + 8))(&v167[v171]);
            v174 = *&v167[v168[8] + 8];

            v2 = &v167[v168[11]];
            v175 = type metadata accessor for Address();
            v176 = OUTLINED_FUNCTION_109();
            if (!__swift_getEnumTagSinglePayload(v176, v177, v175))
            {
              sub_266DA919C();
              v178 = OUTLINED_FUNCTION_109();
              v240 = v179;
              v181 = __swift_getEnumTagSinglePayload(v178, v180, v179);
              if (!v181)
              {
                OUTLINED_FUNCTION_20_2(v181, v182, v183, v184, v185, v186, v187, v188, v235, v240);
                (*(v189 + 8))(v2);
              }

              OUTLINED_FUNCTION_70(v175[5]);
              OUTLINED_FUNCTION_70(v175[6]);
              v190 = OUTLINED_FUNCTION_70(v175[7]);
              v198 = OUTLINED_FUNCTION_115(v190, v191, v192, v193, v194, v195, v196, v197, v235, v240);
              if (!v198)
              {
                OUTLINED_FUNCTION_20_2(v198, v199, v200, v201, v202, v203, v204, v205, v236, v241);
                (*(v206 + 8))(v3 + v2);
              }

              OUTLINED_FUNCTION_70(v175[9]);
              OUTLINED_FUNCTION_70(v175[10]);
              OUTLINED_FUNCTION_70(v175[11]);
              v207 = *&v2[v175[12]];
            }

            v208 = *&v167[v168[12] + 8];
          }
        }

        v139 = &v120[*(type metadata accessor for Snippets.CarPlayFriendLocation() + 20)];
        goto LABEL_59;
      case 6u:
        v222 = *(v120 + 1);

        v223 = *(v120 + 3);

        OUTLINED_FUNCTION_52();
        if (!(!v44 & v43))
        {
          sub_266C2BB04(*(v120 + 5), v224);
        }

        v225 = *(v120 + 8);

        v226 = *(v120 + 10);
        goto LABEL_73;
      case 7u:
        v152 = *(v120 + 1);

        v153 = *(v120 + 3);

        OUTLINED_FUNCTION_52();
        if (!(!v44 & v43))
        {
          sub_266C2BB04(*(v120 + 5), v154);
        }

        v155 = *(v120 + 8);

        v156 = *(v120 + 10);

        v157 = *(v120 + 12);
        goto LABEL_73;
      case 8u:
        if ((*(v120 + 2) - 1) < 7)
        {
          break;
        }

        goto LABEL_73;
      case 9u:
        v140 = *(v120 + 1);

        v141 = *(v120 + 3);

        v142 = type metadata accessor for Snippets.Contact();
        v143 = OUTLINED_FUNCTION_96(v142);
        OUTLINED_FUNCTION_8_0(v143);
        (*(v144 + 8))(v1 + v120);
        OUTLINED_FUNCTION_48(*(v13 + 28));

        v145 = type metadata accessor for Snippets.SetGeoFenceConfirmation();
        OUTLINED_FUNCTION_48(*(v145 + 20));

        v146 = *(v145 + 24);
        goto LABEL_71;
      case 0xAu:
        v227 = *(v120 + 1);

        v228 = *(v120 + 3);

        v229 = type metadata accessor for Snippets.Contact();
        v230 = OUTLINED_FUNCTION_96(v229);
        OUTLINED_FUNCTION_8_0(v230);
        (*(v231 + 8))(v1 + v120);
        OUTLINED_FUNCTION_48(*(v13 + 28));

        v232 = type metadata accessor for Snippets.SetGeoFenceResult();
        OUTLINED_FUNCTION_48(*(v232 + 28));

        v146 = *(v232 + 32);
LABEL_71:
        v221 = &v120[v146];
        goto LABEL_72;
      case 0xBu:
        v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA060, &unk_266DB1040);
        OUTLINED_FUNCTION_8_0(v124);
        (*(v125 + 8))(v0 + v10);
        v126 = type metadata accessor for Snippets.SetSharedLocationVisibilityResult();
        v127 = *(v126 + 20);
        v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA068, &qword_266DAFC30);
        OUTLINED_FUNCTION_8_0(v128);
        (*(v129 + 8))(&v120[v127]);
        if (*&v120[*(v126 + 24) + 16] == 1)
        {
          break;
        }

        goto LABEL_73;
      default:
        break;
    }
  }

  return MEMORY[0x2821FE8E8](v0, v10 + v8, v6 | 7);
}

unint64_t sub_266C4E844()
{
  result = qword_2800CA0F8;
  if (!qword_2800CA0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA0F8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_17()
{
  v2 = v0[58];
  v3 = v0[55];
  v4 = v0[56];
  v15 = v0[57];
  v16 = v0[54];
  v17 = v0[53];
  v18 = v0[52];
  v19 = v0[51];
  v20 = v0[50];
  v5 = v0[45];
  v6 = v0[46];
  v7 = v0[44];
  v21 = v0[49];
  v22 = v0[43];
  v8 = v0[41];
  v9 = v0[42];
  v10 = v0[39];
  v11 = v0[40];
  v12 = v0[37];
  v23 = v0[36];
  v24 = v0[35];
  *(v1 - 80) = v0[34];
  v13 = *(v10 + 8);
  return v11;
}

uint64_t OUTLINED_FUNCTION_1_12()
{
  v1 = v0[46];
  v2 = v0[47];
  v3 = v0[45];
  v12 = v0[44];
  v13 = v0[43];
  v14 = v0[42];
  v15 = v0[41];
  v4 = v0[36];
  v5 = v0[37];
  v6 = v0[35];
  v16 = v0[40];
  v17 = v0[34];
  v7 = v0[32];
  v8 = v0[33];
  v9 = v0[28];
  v18 = v0[27];
  v19 = v0[26];
  v20 = v0[25];
  v10 = *(v0[30] + 8);
  return v0[31];
}

uint64_t OUTLINED_FUNCTION_10_4@<X0>(int *a1@<X8>)
{
  v2 = a1[1];
  v4 = a1 + *a1;

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_17_5()
{

  return sub_266C47654(v0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_22_1(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 40) = a15;
  *(result + 48) = a18;
  *(result + 56) = a11;
  *(result + 64) = 514;
  return result;
}

void OUTLINED_FUNCTION_49_0()
{
  *v0 = 0;
  *(v0 + 8) = 0;
  *(v0 + 16) = 1;
  *(v0 + 24) = 0;
}

uint64_t OUTLINED_FUNCTION_50_0(uint64_t result)
{
  *(result + 8) = v1;
  v3 = *(v2 + 384);
  return result;
}

uint64_t OUTLINED_FUNCTION_51_0(uint64_t result)
{
  *(result + 8) = v1;
  v3 = *(v2 + 480);
  return result;
}

uint64_t OUTLINED_FUNCTION_53_0()
{

  return sub_266DA800C();
}

uint64_t OUTLINED_FUNCTION_54_0()
{

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, v0);
}

uint64_t sub_266C4EAFC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v31 = MEMORY[0x277D84F90];
  sub_266C38A68(0, v1, 0);
  v2 = v31;
  result = sub_266C51C44(v3);
  v7 = result;
  v8 = 0;
  v9 = v3 + 56;
  v25 = v3 + 64;
  v26 = v3 + 56;
  v27 = v3;
  if ((result & 0x8000000000000000) == 0)
  {
    while (v7 < 1 << *(v3 + 32))
    {
      v10 = v7 >> 6;
      if ((*(v9 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_24;
      }

      if (*(v3 + 36) != v5)
      {
        goto LABEL_25;
      }

      v30 = v6;
      v28 = v8;
      v29 = v5;
      v11 = (*(v3 + 48) + 16 * v7);
      v12 = *v11;
      v13 = v11[1];
      v15 = *(v31 + 16);
      v14 = *(v31 + 24);

      if (v15 >= v14 >> 1)
      {
        result = sub_266C38A68(v14 > 1, v15 + 1, 1);
      }

      *(v31 + 16) = v15 + 1;
      v16 = v31 + 24 * v15;
      *(v16 + 32) = v12;
      *(v16 + 40) = v13;
      *(v16 + 48) = 1;
      if (v30)
      {
        goto LABEL_29;
      }

      v9 = v26;
      v3 = v27;
      v17 = 1 << *(v27 + 32);
      if (v7 >= v17)
      {
        goto LABEL_26;
      }

      v18 = *(v26 + 8 * v10);
      if ((v18 & (1 << v7)) == 0)
      {
        goto LABEL_27;
      }

      if (*(v27 + 36) != v29)
      {
        goto LABEL_28;
      }

      v19 = v18 & (-2 << (v7 & 0x3F));
      if (v19)
      {
        v17 = __clz(__rbit64(v19)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v20 = v10 << 6;
        v21 = v10 + 1;
        v22 = (v25 + 8 * v10);
        while (v21 < (v17 + 63) >> 6)
        {
          v24 = *v22++;
          v23 = v24;
          v20 += 64;
          ++v21;
          if (v24)
          {
            result = sub_266C2943C(v7, v29, 0);
            v17 = __clz(__rbit64(v23)) + v20;
            goto LABEL_19;
          }
        }

        result = sub_266C2943C(v7, v29, 0);
      }

LABEL_19:
      v8 = v28 + 1;
      if (v28 + 1 == v1)
      {
        return v2;
      }

      v6 = 0;
      v5 = *(v27 + 36);
      v7 = v17;
      if (v17 < 0)
      {
        break;
      }
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_266C4ED3C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = a1;
    v36 = MEMORY[0x277D84F90];
    sub_266C38A68(0, v3, 0);
    v5 = v36;
    result = sub_266C51C44(v4);
    v9 = result;
    v10 = 0;
    v11 = v4 + 56;
    v28 = v4 + 64;
    v29 = v3;
    v31 = v4;
    v32 = a2;
    v30 = v4 + 56;
    if ((result & 0x8000000000000000) == 0)
    {
      while (v9 < 1 << *(v4 + 32))
      {
        v12 = v9 >> 6;
        if ((*(v11 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
        {
          goto LABEL_26;
        }

        if (*(v4 + 36) != v7)
        {
          goto LABEL_27;
        }

        v35 = v8;
        v33 = v10;
        v34 = v7;
        v13 = (*(v4 + 48) + 16 * v9);
        v15 = *v13;
        v14 = v13[1];
        swift_bridgeObjectRetain_n();
        v16 = sub_266C50F74(v15, v14, a2);

        v18 = *(v36 + 16);
        v17 = *(v36 + 24);
        if (v18 >= v17 >> 1)
        {
          result = sub_266C38A68(v17 > 1, v18 + 1, 1);
        }

        *(v36 + 16) = v18 + 1;
        v19 = v36 + 24 * v18;
        *(v19 + 32) = v15;
        *(v19 + 40) = v14;
        *(v19 + 48) = v16;
        if (v35)
        {
          goto LABEL_31;
        }

        v4 = v31;
        a2 = v32;
        v20 = 1 << *(v31 + 32);
        v11 = v30;
        if (v9 >= v20)
        {
          goto LABEL_28;
        }

        v21 = *(v30 + 8 * v12);
        if ((v21 & (1 << v9)) == 0)
        {
          goto LABEL_29;
        }

        if (*(v31 + 36) != v34)
        {
          goto LABEL_30;
        }

        v22 = v21 & (-2 << (v9 & 0x3F));
        if (v22)
        {
          v20 = __clz(__rbit64(v22)) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v23 = v12 << 6;
          v24 = v12 + 1;
          v25 = (v28 + 8 * v12);
          while (v24 < (v20 + 63) >> 6)
          {
            v27 = *v25++;
            v26 = v27;
            v23 += 64;
            ++v24;
            if (v27)
            {
              result = sub_266C2943C(v9, v34, 0);
              v20 = __clz(__rbit64(v26)) + v23;
              goto LABEL_19;
            }
          }

          result = sub_266C2943C(v9, v34, 0);
        }

LABEL_19:
        v10 = v33 + 1;
        if (v33 + 1 == v29)
        {

          return v5;
        }

        v8 = 0;
        v7 = *(v31 + 36);
        v9 = v20;
        if (v20 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t DiscoveryError.hashValue.getter()
{
  sub_266DAB2AC();
  MEMORY[0x26D5F1C20](0);
  return sub_266DAB2DC();
}

uint64_t sub_266C4F078()
{
  sub_266DAB2AC();
  MEMORY[0x26D5F1C20](0);
  return sub_266DAB2DC();
}

uint64_t sub_266C4F0B8()
{
  v1 = *(v0 + 64);

  sub_266DA972C();

  return v3;
}

uint64_t sub_266C4F0FC()
{
  v0 = sub_266C4F0B8();
  v1 = sub_266C4EAFC(v0);

  return sub_266C4F158(v1);
}

uint64_t sub_266C4F158(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA240, &qword_266DB02D0);
    v1 = sub_266DAAF6C();
  }

  else
  {
    v1 = MEMORY[0x277D84F98];
  }

  v4 = v1;

  sub_266C51970(v2, 1, &v4);

  return v4;
}

uint64_t sub_266C4F20C()
{
  v1 = *(v0 + 72);

  sub_266DA972C();

  return v3;
}

void *sub_266C4F250(uint64_t a1)
{
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA1C8, &qword_266DB0258);
  OUTLINED_FUNCTION_0_2(v97);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_15_0(v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA1D0, &qword_266DB0260);
  v6 = OUTLINED_FUNCTION_0_2(v5);
  v98 = v7;
  v99 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_15_0(v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA1D8, &qword_266DB0268);
  OUTLINED_FUNCTION_0_2(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_10();
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA1E0, &qword_266DB0270);
  OUTLINED_FUNCTION_0_2(v93);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_15_0(v19);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA1E8, &qword_266DB0278);
  OUTLINED_FUNCTION_0_2(v94);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_15_0(v23);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA1F0, &unk_266DB0280);
  v25 = OUTLINED_FUNCTION_0_2(v24);
  v101 = v26;
  v102 = v25;
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_10();
  v100 = v30;
  v91 = sub_266DAAB7C();
  v31 = OUTLINED_FUNCTION_0_2(v91);
  v33 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_0_6();
  v38 = v37 - v36;
  v39 = sub_266DAAB6C();
  v40 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_0_6();
  v43 = v42 - v41;
  v44 = sub_266DA9FDC();
  v45 = *(*(v44 - 8) + 64);
  MEMORY[0x28223BE20](v44 - 8);
  OUTLINED_FUNCTION_0_6();
  v48 = v47 - v46;
  sub_266C22FD4();
  sub_266DA9FCC();
  *&v103 = MEMORY[0x277D84F90];
  sub_266C51F04(&qword_28156EFC8, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC440, &qword_266DAF890);
  OUTLINED_FUNCTION_6_8();
  sub_266C230E8(v49, &qword_2800CC440, &qword_266DAF890);
  sub_266DAAD0C();
  (*(v33 + 104))(v38, *MEMORY[0x277D85260], v91);
  v90[2] = sub_266D689A4(0xD000000000000018, 0x8000000266DC1BC0, v48, v43, v38, 0);
  v50 = MEMORY[0x277D84FA0];
  *&v103 = MEMORY[0x277D84FA0];
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA140, &qword_266DB00F8);
  v52 = *(v51 + 48);
  v53 = *(v51 + 52);
  swift_allocObject();
  v90[8] = sub_266DA973C();
  LOBYTE(v103) = 0;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA1F8, &qword_266DB0290);
  v55 = *(v54 + 48);
  v56 = *(v54 + 52);
  swift_allocObject();
  v90[9] = sub_266DA973C();
  v57 = *(a1 + 16);
  if (v57)
  {
    v109 = MEMORY[0x277D84F90];
    sub_266DAAE8C();
    v58 = a1 + 32;
    do
    {
      sub_266C233D0(v58, v106);
      v59 = v107;
      v60 = v108;
      __swift_project_boxed_opaque_existential_1(v106, v107);
      sub_266C6F86C(v59, v60, &v103);
      sub_266C51F4C();
      sub_266DA974C();
      sub_266C51FA0(&v103);
      __swift_destroy_boxed_opaque_existential_0(v106);
      sub_266DAAE6C();
      v61 = *(v109 + 16);
      sub_266DAAE9C();
      sub_266DAAEAC();
      sub_266DAAE7C();
      v58 += 40;
      --v57;
    }

    while (v57);

    v62 = v109;
  }

  else
  {

    v62 = MEMORY[0x277D84F90];
  }

  *&v103 = v62;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA200, &qword_266DB0298);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA208, &qword_266DB02A0);
  sub_266C230E8(&qword_28156F170, &qword_2800CA200, &qword_266DB0298);
  OUTLINED_FUNCTION_6_8();
  sub_266C230E8(v63, &qword_2800CA208, &qword_266DB02A0);
  sub_266DA95FC();
  sub_266C230E8(&unk_28156F0E0, &qword_2800CA1E0, &qword_266DB0270);
  sub_266DA97FC();
  OUTLINED_FUNCTION_9(&v110);
  v64(v92, v93);
  *&v103 = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA210, &qword_266DB02A8);
  sub_266C230E8(&qword_28156F178, &qword_2800CA1E8, &qword_266DB0278);
  sub_266DA985C();
  v65 = OUTLINED_FUNCTION_7_5();
  v66(v65);
  *&v103 = v90[8];
  OUTLINED_FUNCTION_5_8();
  sub_266C230E8(v67, v68, v69);

  sub_266DA984C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA218, &unk_266DB02B0);
  OUTLINED_FUNCTION_4_9();
  sub_266C230E8(v70, v71, v72);
  sub_266C230E8(&unk_28156F018, &qword_2800CA218, &unk_266DB02B0);
  sub_266DA987C();
  OUTLINED_FUNCTION_9(&v111);
  v73(v95, v97);
  LOBYTE(v103) = 0;
  OUTLINED_FUNCTION_3_7();
  sub_266C230E8(v74, v75, v76);
  sub_266DA985C();
  (*(v98 + 8))(v96, v99);
  v77 = v90[9];
  sub_266C230E8(&qword_28156F110, &qword_2800CA1D8, &qword_266DB0268);
  sub_266C230E8(&unk_28156F050, &qword_2800CA1F8, &qword_266DB0290);

  v78 = sub_266DA991C();

  v79 = OUTLINED_FUNCTION_7_5();
  v80(v79);
  v81 = v90[8];
  sub_266C230E8(&qword_28156F118, &qword_2800CA1F0, &unk_266DB0280);
  sub_266C230E8(&qword_28156F048, &qword_2800CA140, &qword_266DB00F8);

  v82 = sub_266DA991C();

  OUTLINED_FUNCTION_26_0();
  v83 = swift_allocObject();
  *(v83 + 16) = v78;
  *(v83 + 24) = v82;
  v84 = sub_266DA96AC();
  v85 = *(v84 + 48);
  v86 = *(v84 + 52);
  swift_allocObject();

  v87 = sub_266DA96BC();
  v104 = v84;
  v105 = MEMORY[0x277CBCDA0];

  *&v103 = v87;
  (*(v101 + 8))(v100, v102);
  sub_266C0B0D8(&v103, (v90 + 3));
  return v90;
}

uint64_t sub_266C4FE34@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = sub_266D549C4(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_266C4FE80@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  v6 = *a2;
  v5 = a2[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9F88, &unk_266DB6EF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_266DAE4A0;
  *(inited + 32) = v6;
  *(inited + 40) = v5;

  result = sub_266C4FF10(inited, v4);
  *a3 = result;
  return result;
}

uint64_t sub_266C4FF10(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v4 = *(result + 16);
  for (i = (result + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return a2;
    }

    if (v3 >= *(v2 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;

    sub_266C51548();
  }

  __break(1u);
  return result;
}

uint64_t sub_266C50034(uint64_t a1)
{
  v2 = v1;
  v115 = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA100, &qword_266DB00B0);
  v113 = OUTLINED_FUNCTION_0_2(v4);
  v114 = v5;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_10();
  v112 = v9;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA108, &qword_266DB00B8);
  OUTLINED_FUNCTION_0_2(v95);
  v96 = v10;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v13);
  v15 = &v87 - v14;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA110, &qword_266DB00C0);
  OUTLINED_FUNCTION_0_2(v101);
  v103 = v16;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_15_0(v20);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA118, &qword_266DB00C8);
  OUTLINED_FUNCTION_0_2(v102);
  v104 = v21;
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_15_0(v25);
  v26 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC360, &qword_266DB00D0) - 8) + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_15_0(v28);
  v99 = sub_266DAAB4C();
  v29 = OUTLINED_FUNCTION_0_2(v99);
  v97 = v30;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_0_6();
  v35 = v34 - v33;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA120, &qword_266DB00D8);
  v94 = *(v90 - 8);
  v36 = *(v94 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v37);
  v39 = &v87 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA128, &qword_266DB00E0);
  v106 = OUTLINED_FUNCTION_0_2(v40);
  v107 = v41;
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_10();
  v98 = v45;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA130, &qword_266DB00E8);
  OUTLINED_FUNCTION_0_2(v108);
  v110 = v46;
  v48 = *(v47 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_10();
  v100 = v50;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA138, &qword_266DB00F0);
  OUTLINED_FUNCTION_0_2(v109);
  v111 = v51;
  v53 = *(v52 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_10();
  v105 = v55;
  v116 = v1[8];
  v56 = v116;
  v57 = swift_allocObject();
  v93 = a1;
  *(v57 + 16) = a1;
  OUTLINED_FUNCTION_26_0();
  v58 = swift_allocObject();
  *(v58 + 16) = sub_266C50BF4;
  *(v58 + 24) = v57;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA140, &qword_266DB00F8);
  OUTLINED_FUNCTION_5_8();
  sub_266C230E8(v59, &qword_2800CA140, &qword_266DB00F8);
  v89 = v39;
  sub_266DA98AC();

  v88 = v35;
  sub_266DAAB2C();
  v60 = v2[2];
  v61 = sub_266DAAB1C();
  v62 = v91;
  __swift_storeEnumTagSinglePayload(v91, 1, 1, v61);
  v116 = v60;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA148, &qword_266DB0100);
  sub_266C230E8(&qword_2800CA150, &qword_2800CA120, &qword_266DB00D8);
  sub_266C230E8(&qword_2800CA158, &qword_2800CA148, &qword_266DB0100);
  sub_266DA98FC();
  sub_266C22FD4();
  sub_266C230E8(&qword_2800CA160, &qword_2800CA108, &qword_266DB00B8);
  sub_266C51F04(&qword_2800C9A90, sub_266C22FD4);
  v63 = v92;
  v64 = v95;
  sub_266DA98EC();
  OUTLINED_FUNCTION_9(&v118);
  v65(v15, v64);
  OUTLINED_FUNCTION_26_0();
  v66 = swift_allocObject();
  *(v66 + 16) = sub_266C50DEC;
  *(v66 + 24) = v56;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA168, &qword_266DB0108);
  sub_266C230E8(&qword_2800CA170, &qword_2800CA110, &qword_266DB00C0);
  sub_266C230E8(&qword_2800CA178, &qword_2800CA168, &qword_266DB0108);
  v67 = v101;
  sub_266DA987C();

  (*(v103 + 8))(v63, v67);
  OUTLINED_FUNCTION_3_7();
  sub_266C230E8(v68, &qword_2800CA118, &qword_266DB00C8);
  v69 = sub_266DA97EC();

  v70 = OUTLINED_FUNCTION_7_5();
  v71(v70);
  sub_266C51CBC(v62);
  OUTLINED_FUNCTION_9(&v119);
  v72(v88, v99);
  OUTLINED_FUNCTION_9(&v117);
  v73(v89, v90);
  v116 = v69;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA188, &qword_266DB0110);
  sub_266C230E8(&qword_2800CA190, &qword_2800CA188, &qword_266DB0110);
  v74 = v112;
  sub_266DA97CC();
  sub_266C230E8(&qword_2800CA198, &qword_2800CA100, &qword_266DB00B0);
  v75 = v98;
  v76 = v113;
  sub_266DA989C();
  (*(v114 + 8))(v74, v76);

  sub_266C230E8(&qword_2800CA1A0, &qword_2800CA128, &qword_266DB00E0);
  v77 = v100;
  v78 = v106;
  sub_266DA988C();
  (*(v107 + 8))(v75, v78);
  OUTLINED_FUNCTION_26_0();
  v79 = swift_allocObject();
  v80 = v115;
  *(v79 + 16) = v93;
  *(v79 + 24) = v80;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA1A8, &qword_266DB0118);
  sub_266C230E8(&qword_2800CA1B0, &qword_2800CA130, &qword_266DB00E8);
  v81 = v108;
  sub_266DA984C();

  (*(v110 + 8))(v77, v81);
  OUTLINED_FUNCTION_4_9();
  sub_266C230E8(v82, &qword_2800CA138, &qword_266DB00F0);
  v83 = sub_266DA97EC();

  v84 = OUTLINED_FUNCTION_7_5();
  v85(v84);
  return v83;
}

uint64_t sub_266C50BFC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) < *(a2 + 16))
  {
    return 0;
  }

  v2 = a2;
  v4 = a2 + 56;
  v5 = 1 << *(a2 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a2 + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a1 + 56;

  v11 = 0;
  v24 = v2;
  if (v7)
  {
    goto LABEL_10;
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v8)
    {

      return 1;
    }

    v7 = *(v4 + 8 * v12);
    ++v11;
    if (v7)
    {
      v11 = v12;
LABEL_10:
      while (2)
      {
        if (!*(a1 + 16))
        {

          return 0;
        }

        v13 = __clz(__rbit64(v7));
        v7 &= v7 - 1;
        v14 = (*(v2 + 48) + ((v11 << 10) | (16 * v13)));
        v16 = *v14;
        v15 = v14[1];
        v17 = *(a1 + 40);
        sub_266DAB2AC();

        sub_266DAA7BC();
        v18 = sub_266DAB2DC();
        v19 = ~(-1 << *(a1 + 32));
        do
        {
          v20 = v18 & v19;
          if (((*(v9 + (((v18 & v19) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v18 & v19)) & 1) == 0)
          {

            return 0;
          }

          v21 = (*(a1 + 48) + 16 * v20);
          if (*v21 == v16 && v21[1] == v15)
          {
            break;
          }

          v23 = sub_266DAB17C();
          v18 = v20 + 1;
        }

        while ((v23 & 1) == 0);

        v2 = v24;
        if (v7)
        {
          continue;
        }

        break;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_266C50DBC(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1) & 1;
}

uint64_t sub_266C50DF0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA220, &qword_266DB02C0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v6 - v3;
  sub_266DA972C();
  v6[0] = v6[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA210, &qword_266DB02A8);
  sub_266DA977C();
  sub_266C51FFC();
  sub_266DA976C();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_266C50F1C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;

  v6 = sub_266C4ED3C(a2, v5);
  result = sub_266C4F158(v6);
  *a3 = result;
  return result;
}

BOOL sub_266C50F74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_266DAB2AC();
  sub_266DAA7BC();
  v7 = sub_266DAB2DC();
  v8 = ~(-1 << *(a3 + 32));
  do
  {
    v9 = v7 & v8;
    v10 = (1 << (v7 & v8)) & *(a3 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8));
    v11 = v10 != 0;
    if (!v10)
    {
      break;
    }

    v12 = (*(a3 + 48) + 16 * v9);
    if (*v12 == a1 && v12[1] == a2)
    {
      break;
    }

    v14 = sub_266DAB17C();
    v7 = v9 + 1;
  }

  while ((v14 & 1) == 0);
  return v11;
}

uint64_t NearbyScanSession.deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 24));
  v1 = *(v0 + 64);

  v2 = *(v0 + 72);

  return v0;
}

uint64_t NearbyScanSession.__deallocating_deinit()
{
  NearbyScanSession.deinit();

  return MEMORY[0x2821FE8D8](v0, 80, 7);
}

uint64_t sub_266C510D8(char a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3)
{
  v22[1] = a3;
  v23 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA230, &qword_266DB02C8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v22 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA220, &qword_266DB02C0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v22 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA188, &qword_266DB0110);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = v22 - v18;
  if (a1)
  {
    v23(&v24, v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA210, &qword_266DB02A8);
    sub_266DA977C();
    sub_266C51FFC();
    sub_266DA976C();
    (*(v10 + 8))(v13, v9);
    sub_266C230E8(&qword_2800CA190, &qword_2800CA188, &qword_266DB0110);
    v20 = sub_266DA97EC();
    (*(v15 + 8))(v19, v14);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA210, &qword_266DB02A8);
    sub_266C51FFC();
    sub_266DA975C();
    sub_266C230E8(&qword_2800CA238, &qword_2800CA230, &qword_266DB02C8);
    v20 = sub_266DA97EC();
    (*(v5 + 8))(v8, v4);
  }

  return v20;
}

uint64_t sub_266C51408()
{
  OUTLINED_FUNCTION_12_5();
  sub_266DAB2CC();
  if (v1)
  {
    sub_266DAA7BC();
  }

  sub_266DAB2DC();
  OUTLINED_FUNCTION_14_4();
  v7 = v6 & ~v5;
  if (((*(v23 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
LABEL_15:
    v13 = *v2;
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_15_6();
    v14 = OUTLINED_FUNCTION_13_3();
    sub_266C5164C(v14, v15, v16, v17, v18, v19, v20, v21);
    *v2 = v23[0];
    *v0 = v3;
    v0[1] = v1;
    return 1;
  }

  v8 = ~v5;
  v9 = *(v4 + 48);
  while (1)
  {
    v10 = (v9 + 16 * v7);
    v11 = v10[1];
    if (v11)
    {
      break;
    }

    if (!v1)
    {
      goto LABEL_17;
    }

LABEL_14:
    v7 = (v7 + 1) & v8;
    if (((*(v23 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  if (!v1)
  {
    goto LABEL_14;
  }

  v12 = *v10 == v3 && v11 == v1;
  if (!v12 && (sub_266DAB17C() & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_17:
  *v0 = *(*(v4 + 48) + 16 * v7);

  return 0;
}

BOOL sub_266C51548()
{
  OUTLINED_FUNCTION_12_5();
  sub_266DAA7BC();
  sub_266DAB2DC();
  OUTLINED_FUNCTION_14_4();
  v7 = ~v6;
  while (1)
  {
    v8 = v5 & v7;
    v9 = (1 << (v5 & v7)) & *(v24 + (((v5 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v9)
    {
      break;
    }

    v10 = (*(v4 + 48) + 16 * v8);
    v11 = *v10 == v3 && v10[1] == v1;
    if (v11 || (sub_266DAB17C() & 1) != 0)
    {

      v12 = (*(v4 + 48) + 16 * v8);
      v13 = v12[1];
      *v0 = *v12;
      v0[1] = v13;

      return v9 == 0;
    }

    v5 = v8 + 1;
  }

  v14 = *v2;
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_15_6();
  v15 = OUTLINED_FUNCTION_13_3();
  sub_266C51808(v15, v16, v17, v18, v19, v20, v21, v22);
  *v2 = v24[0];
  *v0 = v3;
  v0[1] = v1;
  return v9 == 0;
}

void sub_266C5164C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v10 = a3;
  v13 = *(*v8 + 16);
  v14 = *(*v8 + 24);
  if (v14 <= v13 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_266D4FCD4(v13 + 1, a2, a3, a4, a5, a6, a7, a8, v30);
    }

    else
    {
      if (v14 > v13)
      {
        sub_266D501EC();
        goto LABEL_22;
      }

      sub_266D5052C(v13 + 1, a2, a3, a4, a5, a6, a7, a8, v30);
    }

    v15 = *v8;
    v16 = *(*v8 + 40);
    sub_266DAB2AC();
    sub_266DAB2CC();
    if (a2)
    {
      sub_266DAA7BC();
    }

    v17 = sub_266DAB2DC();
    v18 = v15 + 56;
    v19 = -1 << *(v15 + 32);
    v10 = v17 & ~v19;
    if ((*(v15 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
    {
      v20 = ~v19;
      v21 = *(v15 + 48);
      do
      {
        v22 = (v21 + 16 * v10);
        v23 = v22[1];
        if (v23)
        {
          if (a2)
          {
            v24 = *v22 == a1 && v23 == a2;
            if (v24 || (sub_266DAB17C() & 1) != 0)
            {
              goto LABEL_25;
            }
          }
        }

        else if (!a2)
        {
          goto LABEL_25;
        }

        v10 = (v10 + 1) & v20;
      }

      while (((*(v18 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
    }
  }

LABEL_22:
  v25 = *v9;
  *(*v9 + 8 * (v10 >> 6) + 56) |= 1 << v10;
  v26 = (*(v25 + 48) + 16 * v10);
  *v26 = a1;
  v26[1] = a2;
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (v28)
  {
    __break(1u);
LABEL_25:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9BE0, &qword_266DAE760);
    sub_266DAB1EC();
    __break(1u);
  }

  else
  {
    *(v25 + 16) = v29;
  }
}

void sub_266C51808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a3;
  v12 = *(*v8 + 16);
  v13 = *(*v8 + 24);
  if (v13 <= v12 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_266D4FE3C(v12 + 1, a2, a3, a4, a5, a6, a7, a8, v25);
      goto LABEL_10;
    }

    if (v13 <= v12)
    {
      sub_266D50688(v12 + 1, a2, a3, a4, a5, a6, a7, a8, v25);
LABEL_10:
      v19 = *v8;
      v20 = *(*v8 + 40);
      sub_266DAB2AC();
      sub_266DAA7BC();
      v21 = sub_266DAB2DC();
      v22 = ~(-1 << *(v19 + 32));
      while (1)
      {
        v9 = v21 & v22;
        if (((*(v19 + 56 + (((v21 & v22) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v21 & v22)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v23 = (*(v19 + 48) + 16 * v9);
        v24 = *v23 == a1 && v23[1] == a2;
        if (v24 || (sub_266DAB17C() & 1) != 0)
        {
          goto LABEL_19;
        }

        v21 = v9 + 1;
      }
    }

    sub_266D502D8();
  }

LABEL_7:
  v14 = *v8;
  *(*v8 + 8 * (v9 >> 6) + 56) |= 1 << v9;
  v15 = (*(v14 + 48) + 16 * v9);
  *v15 = a1;
  v15[1] = a2;
  v16 = *(v14 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
LABEL_19:
    sub_266DAB1EC();
    __break(1u);
  }

  else
  {
    *(v14 + 16) = v18;
  }
}

void sub_266C51970(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v26 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 24)
  {
    if (v26 == v4)
    {

      return;
    }

    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_266DAB1FC();
      __break(1u);
      goto LABEL_22;
    }

    v7 = *(i - 2);
    v6 = *(i - 1);
    v8 = *i;
    v9 = *a3;

    v11 = sub_266D99E08();
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_19;
    }

    v15 = v10;
    if (v9[3] < v14)
    {
      break;
    }

    if (a2)
    {
      if (v10)
      {
        goto LABEL_14;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA248, &qword_266DB02D8);
      sub_266DAAF0C();
      if (v15)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v19 = *a3;
    *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v20 = (v19[6] + 16 * v11);
    *v20 = v7;
    v20[1] = v6;
    *(v19[7] + v11) = v8;
    v21 = v19[2];
    v22 = __OFADD__(v21, 1);
    v23 = v21 + 1;
    if (v22)
    {
      goto LABEL_20;
    }

    v19[2] = v23;
    ++v4;
    a2 = 1;
  }

  sub_266D2EC6C(v14);
  v16 = *a3;
  v17 = sub_266D99E08();
  if ((v15 & 1) != (v18 & 1))
  {
    goto LABEL_21;
  }

  v11 = v17;
  if ((v15 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v24 = swift_allocError();
  swift_willThrow();
  v25 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800CA800, &unk_266DAFC10);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_22:
  sub_266DAADFC();
  MEMORY[0x26D5F1170](0xD00000000000001BLL, 0x8000000266DC1C20);
  sub_266DAAEEC();
  MEMORY[0x26D5F1170](39, 0xE100000000000000);
  sub_266DAAF1C();
  __break(1u);
}

uint64_t sub_266C51C44(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = sub_266DAAD1C();
  v4 = *(a1 + 36);
  return result;
}

uint64_t sub_266C51C88@<X0>(char *a1@<X0>, void (*a2)(uint64_t *__return_ptr, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_266C510D8(*a1, a2, a3);
  *a4 = result;
  return result;
}

uint64_t sub_266C51CBC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC360, &qword_266DB00D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_266C51D38()
{
  result = qword_2800CA1C0;
  if (!qword_2800CA1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA1C0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DiscoveryError(_BYTE *result, int a2, int a3)
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

uint64_t sub_266C51F04(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_266C51F4C()
{
  result = qword_28156F3A0;
  if (!qword_28156F3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28156F3A0);
  }

  return result;
}

uint64_t sub_266C51FF4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_266C50004();
}

unint64_t sub_266C51FFC()
{
  result = qword_2800CA228;
  if (!qword_2800CA228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA228);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_12_5()
{
  v2 = *(*v0 + 40);

  return sub_266DAB2AC();
}

uint64_t OUTLINED_FUNCTION_15_6()
{
  v3 = *v0;
}

uint64_t sub_266C52140(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 216))
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

uint64_t sub_266C52180(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 216) = 1;
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

    *(result + 216) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_266C52204()
{
  v1 = sub_266DA81AC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v0 + 168), *(v0 + 192));
  sub_266DA816C();
  v6 = sub_266D6F5AC(v5);
  v8 = v7;
  (*(v2 + 8))(v5, v1);
  if (!v8)
  {
    return sub_266DA7CAC();
  }

  if (v8 == 1)
  {
    return sub_266DA7CCC();
  }

  sub_266DA7CBC();
  return sub_266C488A0(v6, v8);
}

uint64_t sub_266C52334(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = OUTLINED_FUNCTION_14_3();
  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_266C5235C()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA268, &qword_266DB0490);
  v2 = sub_266DA80DC();
  v3 = [v2 disambiguationItems];
  v4 = sub_266DAA93C();

  v5 = sub_266C3A9E4(v4);

  if (v5)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA260, qword_266DB0398);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();
    v9 = sub_266DA813C();

    v10 = *(v0 + 8);

    return v10(v9);
  }

  else
  {
    sub_266C55488();
    OUTLINED_FUNCTION_87();
    *v12 = 0;
    swift_willThrow();

    OUTLINED_FUNCTION_28();

    return v13();
  }
}

uint64_t sub_266C524C0()
{
  OUTLINED_FUNCTION_22_0();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v1[2] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA278, &qword_266DB04B0);
  v1[7] = v6;
  OUTLINED_FUNCTION_11_3(v6);
  v1[8] = v7;
  v9 = *(v8 + 64);
  v1[9] = OUTLINED_FUNCTION_62();
  v10 = sub_266DA81AC();
  v1[10] = v10;
  OUTLINED_FUNCTION_11_3(v10);
  v1[11] = v11;
  v13 = *(v12 + 64);
  v1[12] = OUTLINED_FUNCTION_62();
  v14 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

void sub_266C525C4()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA268, &qword_266DB0490);
  v7 = sub_266DA80CC();
  __swift_project_boxed_opaque_existential_1((v5 + 168), *(v5 + 192));
  sub_266DA816C();
  v56 = sub_266D6F5AC(v2);
  v9 = v8;
  v10 = *(v1 + 8);
  v11 = OUTLINED_FUNCTION_83();
  v12(v11);
  if (v9)
  {
    if (v9 == 1)
    {
      if (qword_2800C93F8 != -1)
      {
        goto LABEL_39;
      }

      goto LABEL_4;
    }

    v54 = v7;
    v55 = v0;
    v27 = v0[4];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA270, &unk_266DB0498);
    v28 = sub_266DA7FFC();
    v31 = sub_266C3A14C(v28, v29, v30);
    v7 = 0;
    v0 = v56;
    while (1)
    {
      if (v31 == v7)
      {

        if (qword_2800C93F8 != -1)
        {
          OUTLINED_FUNCTION_7_6();
        }

        v38 = sub_266DA94AC();
        __swift_project_value_buffer(v38, qword_2800E64C0);
        v39 = sub_266DA948C();
        v40 = sub_266DAAAEC();
        v7 = v54;
        v0 = v55;
        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          *v41 = 0;
          _os_log_impl(&dword_266C08000, v39, v40, "DisambiguateLocationStrategy unable to determine selectedLocation", v41, 2u);
          MEMORY[0x26D5F2480](v41, -1, -1);
        }

        sub_266C55434();
        OUTLINED_FUNCTION_87();
        *v42 = v56;
        v42[1] = v9;
        goto LABEL_31;
      }

      if ((v28 & 0xC000000000000001) != 0)
      {
        v32 = MEMORY[0x26D5F1780](v7, v28);
      }

      else
      {
        if (v7 >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_38;
        }

        v32 = *(v28 + 8 * v7 + 32);
      }

      v33 = v32;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v34 = sub_266C1CEB4(v32);
      if (v35)
      {
        if (v34 == v56 && v35 == v9)
        {

LABEL_36:

          v47 = v55[12];
          v49 = v55[8];
          v48 = v55[9];
          v50 = v55[7];
          v51 = v55[2];
          sub_266C488A0(v56, v9);
          [v54 setLocation_];
          type metadata accessor for SpeakableLocation();
          type metadata accessor for SetGeoFenceIntent();
          v52 = v33;
          v53 = v54;
          sub_266DA7EAC();
          sub_266DA7F6C();

          (*(v49 + 8))(v48, v50);

          OUTLINED_FUNCTION_15_4();
LABEL_32:
          OUTLINED_FUNCTION_39();

          __asm { BRAA            X1, X16 }
        }

        v37 = sub_266DAB17C();

        if (v37)
        {
          goto LABEL_36;
        }
      }

      ++v7;
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    OUTLINED_FUNCTION_7_6();
LABEL_4:
    v13 = sub_266DA94AC();
    __swift_project_value_buffer(v13, qword_2800E64C0);
    v14 = sub_266DA948C();
    v15 = sub_266DAAAEC();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      OUTLINED_FUNCTION_45_0(&dword_266C08000, v17, v18, "DisambiguateLocationStrategy unable to make task from parse");
      MEMORY[0x26D5F2480](v16, -1, -1);
    }

    sub_266C55434();
    OUTLINED_FUNCTION_87();
    *v19 = 0;
    v19[1] = 0;
  }

  else
  {
    if (qword_2800C93F8 != -1)
    {
      OUTLINED_FUNCTION_7_6();
    }

    v20 = sub_266DA94AC();
    __swift_project_value_buffer(v20, qword_2800E64C0);
    v21 = sub_266DA948C();
    v22 = sub_266DAAAEC();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      OUTLINED_FUNCTION_45_0(&dword_266C08000, v24, v25, "DisambiguateLocationStrategy unexpected task");
      MEMORY[0x26D5F2480](v23, -1, -1);
    }

    sub_266C55434();
    OUTLINED_FUNCTION_87();
    *v26 = xmmword_266DAFA10;
  }

LABEL_31:
  v43 = v0[12];
  v44 = v0[9];
  swift_willThrow();

  OUTLINED_FUNCTION_28();
  goto LABEL_32;
}

uint64_t sub_266C52AAC()
{
  OUTLINED_FUNCTION_22_0();
  v1[24] = v2;
  v1[25] = v0;
  v1[22] = v3;
  v1[23] = v4;
  v5 = type metadata accessor for Snippets();
  v1[26] = v5;
  OUTLINED_FUNCTION_4_3(v5);
  v7 = *(v6 + 64);
  v1[27] = OUTLINED_FUNCTION_64();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v8 = sub_266DA80AC();
  v1[31] = v8;
  OUTLINED_FUNCTION_11_3(v8);
  v1[32] = v9;
  v11 = *(v10 + 64);
  v1[33] = OUTLINED_FUNCTION_62();
  v12 = sub_266DA7C0C();
  v1[34] = v12;
  OUTLINED_FUNCTION_11_3(v12);
  v1[35] = v13;
  v15 = *(v14 + 64);
  v1[36] = OUTLINED_FUNCTION_64();
  v1[37] = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA040, &unk_266DB0070);
  OUTLINED_FUNCTION_4_3(v16);
  v18 = *(v17 + 64);
  v1[38] = OUTLINED_FUNCTION_62();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA048, &unk_266DAFC00);
  OUTLINED_FUNCTION_4_3(v19);
  v21 = *(v20 + 64);
  v1[39] = OUTLINED_FUNCTION_62();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA050, &qword_266DB0080);
  OUTLINED_FUNCTION_11_3(v22);
  v1[40] = v23;
  v1[41] = *(v24 + 64);
  v1[42] = OUTLINED_FUNCTION_64();
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();
  v1[48] = swift_task_alloc();
  v1[49] = swift_task_alloc();
  v25 = sub_266DA7E5C();
  v1[50] = v25;
  OUTLINED_FUNCTION_11_3(v25);
  v1[51] = v26;
  v28 = *(v27 + 64);
  v1[52] = OUTLINED_FUNCTION_62();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA038, &unk_266DAFBF0);
  OUTLINED_FUNCTION_4_3(v29);
  v31 = *(v30 + 64);
  v1[53] = OUTLINED_FUNCTION_62();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC420, &unk_266DB0480);
  OUTLINED_FUNCTION_4_3(v32);
  v34 = *(v33 + 64);
  v1[54] = OUTLINED_FUNCTION_62();
  v35 = type metadata accessor for Address();
  v1[55] = v35;
  OUTLINED_FUNCTION_11_3(v35);
  v1[56] = v36;
  v38 = *(v37 + 64);
  v1[57] = OUTLINED_FUNCTION_64();
  v1[58] = swift_task_alloc();
  v1[59] = swift_task_alloc();
  v1[60] = swift_task_alloc();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B20, &unk_266DB1EC0);
  OUTLINED_FUNCTION_4_3(v39);
  v41 = *(v40 + 64);
  v1[61] = OUTLINED_FUNCTION_62();
  v42 = type metadata accessor for Location();
  v1[62] = v42;
  OUTLINED_FUNCTION_11_3(v42);
  v1[63] = v43;
  v45 = *(v44 + 64);
  v1[64] = OUTLINED_FUNCTION_64();
  v1[65] = swift_task_alloc();
  v46 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v46, v47, v48);
}

id sub_266C52E94()
{
  v84 = v0;
  v75 = v0[63];
  v2 = v0[23];
  v1 = v0[24];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA268, &qword_266DB0490);
  v74 = sub_266DA80CC();
  v0[66] = v74;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA270, &unk_266DB0498);
  v3 = sub_266DA7FFC();
  result = sub_266C3A14C(v3, v4, v5);
  v7 = result;
  v8 = 0;
  v77 = MEMORY[0x277D84F90];
  while (v7 != v8)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x26D5F1780](v8, v3);
    }

    else
    {
      if (v8 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_43;
      }

      result = *(v3 + 8 * v8 + 32);
    }

    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
      return result;
    }

    v9 = v0[62];
    sub_266C61918(result, 1701736302, 0xE400000000000000, v0[61]);
    v10 = OUTLINED_FUNCTION_55();
    if (__swift_getEnumTagSinglePayload(v10, v11, v9))
    {
      result = sub_266C47654(v0[61], &qword_2800C9B20, &unk_266DB1EC0);
      ++v8;
    }

    else
    {
      v12 = v0[65];
      v13 = v0[64];
      sub_266C55318(v0[61], v13, type metadata accessor for Location);
      sub_266C55318(v13, v12, type metadata accessor for Location);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = *(v77 + 16);
        sub_266CFA13C();
        v77 = v17;
      }

      v14 = *(v77 + 16);
      if (v14 >= *(v77 + 24) >> 1)
      {
        sub_266CFA13C();
        v77 = v18;
      }

      v15 = v0[65];
      *(v77 + 16) = v14 + 1;
      result = sub_266C55318(v15, v77 + ((*(v75 + 80) + 32) & ~*(v75 + 80)) + *(v75 + 72) * v14, type metadata accessor for Location);
      ++v8;
    }
  }

  v19 = v0[56];
  v20 = v0[23];

  v21 = sub_266DA7FFC();
  result = sub_266C3A14C(v21, v22, v23);
  v24 = result;
  v25 = 0;
  v26 = MEMORY[0x277D84F90];
  while (v24 != v25)
  {
    if ((v21 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x26D5F1780](v25, v21);
    }

    else
    {
      if (v25 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_45;
      }

      result = *(v21 + 8 * v25 + 32);
    }

    if (__OFADD__(v25, 1))
    {
      goto LABEL_44;
    }

    v28 = v0[54];
    v27 = v0[55];
    v29 = result;
    sub_266D7FBD8();
    __swift_storeEnumTagSinglePayload(v28, 0, 1, v27);

    v30 = OUTLINED_FUNCTION_55();
    if (__swift_getEnumTagSinglePayload(v30, v31, v27) == 1)
    {
      result = sub_266C47654(v0[54], &qword_2800CC420, &unk_266DB0480);
      ++v25;
    }

    else
    {
      v32 = v0[58];
      sub_266C55318(v0[54], v0[60], type metadata accessor for Address);
      v33 = OUTLINED_FUNCTION_42();
      sub_266C55318(v33, v34, type metadata accessor for Address);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v40 = *(v26 + 16);
        sub_266CFA074();
        v26 = v41;
      }

      v35 = *(v26 + 16);
      if (v35 >= *(v26 + 24) >> 1)
      {
        sub_266CFA074();
        v26 = v42;
      }

      v36 = v0[58];
      *(v26 + 16) = v35 + 1;
      OUTLINED_FUNCTION_34_0();
      result = sub_266C55318(v39, v37 + v38 * v35, type metadata accessor for Address);
      ++v25;
    }
  }

  v43 = 0;
  v44 = MEMORY[0x277D84F90];
  v81 = MEMORY[0x277D84F90];
  v45 = *(v26 + 16);
  while (1)
  {
    v0[67] = v44;
    if (v45 == v43)
    {
      break;
    }

    if (v43 >= *(v26 + 16))
    {
      goto LABEL_46;
    }

    v46 = v0[59];
    v47 = v0[57];
    OUTLINED_FUNCTION_34_0();
    sub_266C5537C(v48 + v49 * v43, v46, type metadata accessor for Address);
    sub_266DA8F2C();
    sub_266C5537C(v46, v47, type metadata accessor for Address);
    sub_266D7F7B0(v47);
    v50 = OUTLINED_FUNCTION_42();
    v52 = sub_266C553E0(v50, v51);
    MEMORY[0x26D5F1270](v52);
    if (*((v81 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v81 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_266DAA95C();
    }

    result = sub_266DAA96C();
    v44 = v81;
    ++v43;
  }

  v53 = [v74 location];
  if (!v53 || (v54 = v53, sub_266D6CDF4(&v78), v54, v55 = v80, v80 == 255))
  {
    v62 = v0[53];
    v59 = sub_266DA919C();
    v60 = v62;
    v61 = 1;
  }

  else
  {
    v56 = v0[53];
    v58 = v78;
    v57 = v79;
    v81 = v78;
    v82 = v79;
    v83 = v80;
    sub_266D91274();
    sub_266C23130(v58, v57, v55);
    v59 = sub_266DA919C();
    v60 = v56;
    v61 = 0;
  }

  __swift_storeEnumTagSinglePayload(v60, v61, 1, v59);
  v63 = v0[52];
  v64 = v0[49];
  v76 = v0[48];
  v65 = v0[25];
  v66 = v0[26];
  v67 = v0[23];
  __swift_project_boxed_opaque_existential_1(v65 + 6, v65[9]);
  v68 = sub_266DA7FFC();
  sub_266D45CE0(v68, v63);

  v0[68] = v65[26];
  v69 = sub_266DA7FFC();
  sub_266D3DAE8(v69, v64);

  __swift_storeEnumTagSinglePayload(v64, 0, 1, v66);
  __swift_storeEnumTagSinglePayload(v76, 1, 1, v66);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC460, &unk_266DAFC20);
  v70 = swift_allocObject();
  v0[69] = v70;
  *(v70 + 16) = xmmword_266DAE3B0;
  v71 = v65[5];
  v72 = swift_task_alloc();
  v0[70] = v72;
  *v72 = v0;
  v72[1] = sub_266C53548;
  v73 = v0[53];

  return sub_266CB2E78();
}

uint64_t sub_266C53548(uint64_t a1)
{
  OUTLINED_FUNCTION_23_0();
  v5 = v4;
  OUTLINED_FUNCTION_10_3();
  *v6 = v5;
  v8 = *(v7 + 560);
  v9 = *(v7 + 536);
  v10 = *v2;
  OUTLINED_FUNCTION_9_2();
  *v11 = v10;
  v5[71] = v1;

  if (v1)
  {
    v12 = v5[49];
    sub_266C47654(v5[48], &qword_2800CA050, &qword_266DB0080);
    sub_266C47654(v12, &qword_2800CA050, &qword_266DB0080);
    v13 = sub_266C54878;
  }

  else
  {
    v5[72] = a1;
    v13 = sub_266C536A4;
  }

  return MEMORY[0x2822009F8](v13, 0, 0);
}

void sub_266C536A4()
{
  v1 = v0[69];
  v2 = v0[50];
  v4 = v0[38];
  v3 = v0[39];
  v5 = v0[37];
  *(v1 + 32) = v0[72];
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v2);
  sub_266DA7C7C();
  v6 = OUTLINED_FUNCTION_31();
  __swift_storeEnumTagSinglePayload(v6, v7, 1, v8);
  sub_266DA7BCC();
  if (sub_266C3A14C(v1, v9, v10))
  {
    v11 = v0[69];
    v12 = v11 & 0xC000000000000001;
    sub_266CB9F54(0, (v11 & 0xC000000000000001) == 0, v11);
    v13 = v0[69];
    if (v12)
    {
      v14 = MEMORY[0x26D5F1780](0, v13);
    }

    else
    {
      v14 = *(v13 + 32);
    }

    v15 = v14;
    v16 = [v14 catId];

    v109 = sub_266DAA70C();
    v112 = v17;
  }

  else
  {
    v109 = 0;
    v112 = 0;
  }

  v18 = v0[68];
  v19 = v0[49];
  v20 = v0[46];
  v21 = v0[47];
  v22 = v0[40];
  v23 = v0[41];
  v106 = v0[39];
  v107 = v0[38];
  v24 = v0[36];
  v105 = v0[37];
  v26 = v0[34];
  v25 = v0[35];
  v108 = v19;
  v110 = v0[26];
  v111 = v0[45];
  sub_266C4756C(v0[48], v21);
  sub_266C4756C(v19, v20);
  v27 = *(v22 + 80);
  v28 = (v27 + 24) & ~v27;
  v29 = (v23 + v27 + v28) & ~v27;
  v30 = swift_allocObject();
  v0[73] = v30;
  *(v30 + 16) = v18;
  sub_266C475DC(v21, v30 + v28);
  sub_266C475DC(v20, v30 + v29);
  (*(v25 + 16))(v24, v105, v26);
  v31 = swift_task_alloc();
  *(v31 + 16) = 0;
  *(v31 + 24) = 0;
  *(v31 + 32) = 0;
  *(v31 + 40) = v109;
  *(v31 + 48) = v112;
  *(v31 + 56) = v106;
  *(v31 + 64) = 257;
  *(v31 + 72) = sub_266C4876C;
  *(v31 + 80) = v30;
  *(v31 + 88) = v107;

  sub_266DA800C();

  sub_266C4756C(v108, v111);
  if (__swift_getEnumTagSinglePayload(v111, 1, v110) == 1)
  {
    v32 = v0 + 45;
  }

  else
  {
    v33 = v0[48];
    v35 = v0[44];
    v34 = v0[45];
    v36 = v0[30];
    v37 = v0[26];
    OUTLINED_FUNCTION_2_9();
    sub_266C55318(v38, v39, v40);
    sub_266C4756C(v33, v35);
    v41 = OUTLINED_FUNCTION_31();
    if (__swift_getEnumTagSinglePayload(v41, v42, v37) != 1)
    {
      v75 = v0[44];
      v76 = v0[29];
      v77 = v0[30];
      v78 = v0[26];
      OUTLINED_FUNCTION_2_9();
      sub_266C55318(v79, v76, v80);
      v0[15] = v78;
      v81 = sub_266C4DB4C();
      v0[16] = v81;
      __swift_allocate_boxed_opaque_existential_1(v0 + 12);
      OUTLINED_FUNCTION_3_8();
      v83 = v82;
      sub_266C5537C(v77, v84, v82);
      v0[20] = v78;
      v0[21] = v81;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 17);
      sub_266C5537C(v76, boxed_opaque_existential_1, v83);
      OUTLINED_FUNCTION_14_5(MEMORY[0x277D5BD30]);
      OUTLINED_FUNCTION_24_1();
      v0[74] = v86;
      *v86 = v87;
      v86[1] = sub_266C53C78;
      v88 = v0[69];
      v89 = v0[68];
      v90 = v0[33];
      v91 = v0[22];
      OUTLINED_FUNCTION_39();

      __asm { BR              X5 }
    }

    v32 = v0 + 44;
    v43 = v0[30];
    OUTLINED_FUNCTION_4_10();
    sub_266C553E0(v44, v45);
  }

  v46 = *v32;
  v47 = v0[49];
  v48 = v0[43];
  v49 = v0[26];
  sub_266C47654(v46, &qword_2800CA050, &qword_266DB0080);
  sub_266C4756C(v47, v48);
  v50 = OUTLINED_FUNCTION_31();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v50, v51, v49);
  v53 = v0[26];
  if (EnumTagSinglePayload == 1)
  {
    v54 = v0[48];
    v55 = v0[42];
    sub_266C47654(v0[43], &qword_2800CA050, &qword_266DB0080);
    v56 = OUTLINED_FUNCTION_42();
    sub_266C4756C(v56, v57);
    v58 = OUTLINED_FUNCTION_55();
    if (__swift_getEnumTagSinglePayload(v58, v59, v53) == 1)
    {
      sub_266C47654(v0[42], &qword_2800CA050, &qword_266DB0080);
      OUTLINED_FUNCTION_14_5(MEMORY[0x277D5BD50]);
      OUTLINED_FUNCTION_24_1();
      v0[77] = v60;
      *v60 = v61;
      v60[1] = sub_266C54584;
      v62 = v0[69];
      v63 = v0[68];
      v64 = v0[33];
      v65 = v0[22];
      OUTLINED_FUNCTION_39();

      __asm { BR              X3 }
    }

    v94 = v0[42];
    v95 = v0[26];
    v96 = v0[27];
    OUTLINED_FUNCTION_2_9();
    sub_266C55318(v97, v96, v98);
    v0[5] = v95;
    v0[6] = sub_266C4DB4C();
    __swift_allocate_boxed_opaque_existential_1(v0 + 2);
    OUTLINED_FUNCTION_3_8();
    sub_266C5537C(v96, v99, v100);
    OUTLINED_FUNCTION_14_5(MEMORY[0x277D5BD40]);
    OUTLINED_FUNCTION_24_1();
    v0[76] = v101;
    *v101 = v102;
    OUTLINED_FUNCTION_36_0(v101);
  }

  else
  {
    v68 = v0[28];
    OUTLINED_FUNCTION_2_9();
    sub_266C55318(v69, v68, v70);
    v0[10] = v53;
    v0[11] = sub_266C4DB4C();
    __swift_allocate_boxed_opaque_existential_1(v0 + 7);
    OUTLINED_FUNCTION_3_8();
    sub_266C5537C(v68, v71, v72);
    OUTLINED_FUNCTION_14_5(MEMORY[0x277D5BD38]);
    OUTLINED_FUNCTION_24_1();
    v0[75] = v73;
    *v73 = v74;
    OUTLINED_FUNCTION_36_0(v73);
  }

  OUTLINED_FUNCTION_39();

  __asm { BR              X4 }
}

uint64_t sub_266C53C78()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v5 = *(v4 + 592);
  v6 = *(v4 + 552);
  v7 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 136));
  __swift_destroy_boxed_opaque_existential_0((v2 + 96));
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266C53D80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_22_2();
  OUTLINED_FUNCTION_33();
  v33 = v32[73];
  v60 = v32[48];
  v61 = v32[49];
  v34 = v32[37];
  v36 = v32[34];
  v35 = v32[35];
  v37 = v32[32];
  v38 = v32[33];
  v40 = v32[30];
  v39 = v32[31];
  v41 = v32[29];

  sub_266C553E0(v41, type metadata accessor for Snippets);
  sub_266C553E0(v40, type metadata accessor for Snippets);
  v42 = *(v37 + 8);
  v43 = OUTLINED_FUNCTION_83();
  v44(v43);
  v45 = *(v35 + 8);
  v46 = OUTLINED_FUNCTION_38();
  v47(v46);
  OUTLINED_FUNCTION_31_1(v60);
  OUTLINED_FUNCTION_31_1(v61);
  v48 = OUTLINED_FUNCTION_0_18();
  sub_266C47654(v48, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(type metadata accessor for Snippets, &qword_2800CA048, &unk_266DAFC00);

  v49 = OUTLINED_FUNCTION_17_6();
  v50(v49);
  sub_266C47654(&qword_2800CA050, &qword_2800CA038, &unk_266DAFBF0);

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_24_2();

  return v52(v51, v52, v53, v54, v55, v56, v57, v58, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, v60, v61, a30, a31, a32);
}

uint64_t sub_266C53FA4()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v5 = *(v4 + 600);
  v6 = *(v4 + 552);
  v7 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 56));
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266C540A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_22_2();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_26_2();
  v36 = *(v33 + 224);

  OUTLINED_FUNCTION_4_10();
  sub_266C553E0(v36, v37);
  v38 = *(v35 + 8);
  v39 = OUTLINED_FUNCTION_83();
  v40(v39);
  v41 = *(v34 + 8);
  v42 = OUTLINED_FUNCTION_38();
  v43(v42);
  v44 = OUTLINED_FUNCTION_42();
  sub_266C47654(v44, v45, &qword_266DB0080);
  OUTLINED_FUNCTION_31_1(v32);
  v46 = OUTLINED_FUNCTION_0_18();
  sub_266C47654(v46, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v35 + 8, &qword_2800CA048, &unk_266DAFC00);

  v47 = OUTLINED_FUNCTION_17_6();
  v48(v47);
  sub_266C47654(&qword_2800CA050, &qword_2800CA038, &unk_266DAFBF0);

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_24_2();

  return v50(v49, v50, v51, v52, v53, v54, v55, v56, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32);
}

uint64_t sub_266C54294()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v5 = *(v4 + 608);
  v6 = *(v4 + 552);
  v7 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 16));
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266C54394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_22_2();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_26_2();
  v36 = *(v33 + 216);

  OUTLINED_FUNCTION_4_10();
  sub_266C553E0(v36, v37);
  v38 = *(v35 + 8);
  v39 = OUTLINED_FUNCTION_83();
  v40(v39);
  v41 = *(v34 + 8);
  v42 = OUTLINED_FUNCTION_38();
  v43(v42);
  v44 = OUTLINED_FUNCTION_42();
  sub_266C47654(v44, v45, &qword_266DB0080);
  OUTLINED_FUNCTION_31_1(v32);
  v46 = OUTLINED_FUNCTION_0_18();
  sub_266C47654(v46, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v35 + 8, &qword_2800CA048, &unk_266DAFC00);

  v47 = OUTLINED_FUNCTION_17_6();
  v48(v47);
  sub_266C47654(&qword_2800CA050, &qword_2800CA038, &unk_266DAFBF0);

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_24_2();

  return v50(v49, v50, v51, v52, v53, v54, v55, v56, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32);
}

uint64_t sub_266C54584()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v1 + 616);
  v3 = *(v1 + 552);
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_266C54684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_22_2();
  OUTLINED_FUNCTION_33();
  v34 = v32[73];
  v35 = v32[48];
  v36 = v32[49];
  v37 = v32[37];
  v38 = v32[34];
  v39 = v32[35];
  v41 = v32[32];
  v40 = v32[33];
  v42 = v32[31];

  v43 = *(v41 + 8);
  v44 = OUTLINED_FUNCTION_83();
  v45(v44);
  v46 = *(v39 + 8);
  v47 = OUTLINED_FUNCTION_38();
  v48(v47);
  v49 = OUTLINED_FUNCTION_42();
  sub_266C47654(v49, v50, &qword_266DB0080);
  OUTLINED_FUNCTION_31_1(v36);
  v51 = OUTLINED_FUNCTION_0_18();
  sub_266C47654(v51, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v33, &qword_2800CA048, &unk_266DAFC00);

  v52 = OUTLINED_FUNCTION_17_6();
  v53(v52);
  sub_266C47654(&qword_2800CA050, &qword_2800CA038, &unk_266DAFBF0);

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_24_2();

  return v55(v54, v55, v56, v57, v58, v59, v60, v61, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32);
}

uint64_t sub_266C54878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_22_2();
  OUTLINED_FUNCTION_33();
  v33 = *(v32 + 552);
  v34 = *(v32 + 520);
  v35 = *(v32 + 512);
  v36 = *(v32 + 480);
  v37 = *(v32 + 488);
  v52 = *(v32 + 472);
  v53 = *(v32 + 464);
  v38 = *(v32 + 424);
  v54 = *(v32 + 456);
  v55 = *(v32 + 432);
  v39 = *(v32 + 408);
  v40 = *(v32 + 416);
  v41 = *(v32 + 400);
  v56 = *(v32 + 392);
  v57 = *(v32 + 384);
  v58 = *(v32 + 376);
  v59 = *(v32 + 368);
  v60 = *(v32 + 360);
  v61 = *(v32 + 352);
  v62 = *(v32 + 344);
  v63 = *(v32 + 336);
  v64 = *(v32 + 312);
  v65 = *(v32 + 304);
  v66 = *(v32 + 296);
  v67 = *(v32 + 288);
  v68 = *(v32 + 264);
  v69 = *(v32 + 240);
  v70 = *(v32 + 232);
  v71 = *(v32 + 224);
  v72 = *(v32 + 216);

  (*(v39 + 8))(v40, v41);
  sub_266C47654(v38, &qword_2800CA038, &unk_266DAFBF0);
  *(v33 + 16) = 0;

  OUTLINED_FUNCTION_28();
  v42 = *(v32 + 568);
  OUTLINED_FUNCTION_24_2();

  return v44(v43, v44, v45, v46, v47, v48, v49, v50, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, a30, a31, a32);
}

uint64_t sub_266C54A70(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_266C54B08;

  return sub_266C52334(a2);
}

uint64_t sub_266C54B08(uint64_t a1)
{
  OUTLINED_FUNCTION_23_0();
  v5 = v4;
  OUTLINED_FUNCTION_10_3();
  *v6 = v5;
  v8 = *(v7 + 24);
  v9 = *v2;
  OUTLINED_FUNCTION_9_2();
  *v10 = v9;

  if (!v1)
  {
    **(v5 + 16) = a1;
  }

  v11 = *(v9 + 8);

  return v11();
}

uint64_t sub_266C54C04()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_266C48BB4;

  return sub_266C524C0();
}

uint64_t sub_266C54CC4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_266C4716C;

  return sub_266C52AAC();
}

uint64_t sub_266C54D74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(MEMORY[0x277D5B588] + 4);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_266C48BB4;

  return MEMORY[0x2821B9F38](a1, a2, a3, a4, a5);
}

uint64_t sub_266C54E40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(MEMORY[0x277D5B598] + 4);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_266C48BB4;

  return MEMORY[0x2821B9F48](a1, a2, a3, a4, a5);
}

uint64_t sub_266C54F0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5B590] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_266C48BB4;

  return MEMORY[0x2821B9F40](a1, a2, a3, a4);
}

uint64_t sub_266C54FD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5B5A0] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_266C48BB4;

  return MEMORY[0x2821B9F58](a1, a2, a3, a4);
}

uint64_t sub_266C55098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(MEMORY[0x277D5C0B0] + 4);
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = sub_266C48BB4;

  return MEMORY[0x2821BBB18](a1, a2, a3, a4, a5, a6);
}

uint64_t sub_266C55174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = *(MEMORY[0x277D5C0B8] + 4);
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = sub_266C48BB4;

  return MEMORY[0x2821BBB20](a1, a2, a3, a4, a5, a6, a7);
}

unint64_t sub_266C5525C()
{
  result = qword_2800CA250;
  if (!qword_2800CA250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA250);
  }

  return result;
}

unint64_t sub_266C552B4()
{
  result = qword_2800CA258;
  if (!qword_2800CA258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800CA260, qword_266DB0398);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA258);
  }

  return result;
}

uint64_t sub_266C55318(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_9_3(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_266C5537C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_9_3(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_266C553E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_8_0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_266C55434()
{
  result = qword_2800CA280;
  if (!qword_2800CA280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA280);
  }

  return result;
}

unint64_t sub_266C55488()
{
  result = qword_2800CA288;
  if (!qword_2800CA288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA288);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10SiriFindMy27LocationDisambiguationErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t OUTLINED_FUNCTION_0_18()
{
  v2 = v0[66];
  v3 = v0[65];
  v4 = v0[64];
  v5 = v0[61];
  v16 = v0[60];
  v17 = v0[59];
  v18 = v0[58];
  v19 = v0[57];
  v6 = v0[53];
  v8 = v0[51];
  v7 = v0[52];
  v9 = v0[50];
  v20 = v0[54];
  v21 = v0[49];
  v22 = v0[48];
  v23 = v0[47];
  v24 = v0[46];
  v25 = v0[45];
  v27 = v0[43];
  v28 = v0[42];
  result = v0[38];
  v11 = v0[39];
  v26 = v0[44];
  v29 = v0[37];
  v30 = v0[36];
  v13 = v0[29];
  v12 = v0[30];
  *(v1 - 112) = v0[33];
  *(v1 - 104) = v12;
  v14 = v0[27];
  v15 = v0[28];
  *(v1 - 96) = v13;
  *(v1 - 88) = v15;
  *(v1 - 80) = v14;
  return result;
}

uint64_t OUTLINED_FUNCTION_7_6()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_14_5@<X0>(int *a1@<X8>)
{
  v2 = a1[1];
  v4 = a1 + *a1;

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_26_2()
{
  result = v0[73];
  v2 = v0[48];
  v3 = v0[49];
  v4 = v0[37];
  v5 = v0[34];
  v6 = v0[35];
  v8 = v0[32];
  v7 = v0[33];
  v9 = v0[31];
  return result;
}

uint64_t OUTLINED_FUNCTION_31_1(uint64_t a1)
{

  return sub_266C47654(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_36_0(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = v2[69];
  v4 = v2[68];
  v5 = v2[33];
  return v2[22];
}

void OUTLINED_FUNCTION_45_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_266C556E8(unint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA038, &unk_266DAFBF0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v65 = v60 - v5;
  v6 = sub_266DA919C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v60 - v12;
  sub_266DA928C();
  if (!v14)
  {
    if (qword_28156F1D8 != -1)
    {
      OUTLINED_FUNCTION_0_19();
    }

    v44 = sub_266DA94AC();
    __swift_project_value_buffer(v44, &unk_28156F1E0);

    v45 = sub_266DA948C();
    v46 = sub_266DAAAEC();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v69 = a1;
      v70 = v48;
      *v47 = 136315138;
      sub_266DA929C();
      sub_266C55E04();
      v49 = sub_266DAB13C();
      v51 = sub_266C22A3C(v49, v50, &v70);

      *(v47 + 4) = v51;
      _os_log_impl(&dword_266C08000, v45, v46, "Provided app did not have an app id: %s", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v48);
      OUTLINED_FUNCTION_6_1();
      OUTLINED_FUNCTION_6_1();
    }

    else
    {
    }

    return 0;
  }

  v60[1] = v1;
  sub_266DAA77C();

  v61 = v13;
  v62 = v7;
  (*(v7 + 32))(v13, v11, v6);
  v15 = sub_266DA7E8C();
  if (!v15 || (v16 = sub_266C55E5C(v15)) == 0)
  {
LABEL_15:
    if (qword_28156F1D8 != -1)
    {
LABEL_35:
      OUTLINED_FUNCTION_0_19();
    }

    v34 = sub_266DA94AC();
    __swift_project_value_buffer(v34, &unk_28156F1E0);

    v35 = sub_266DA948C();
    v36 = sub_266DAAAEC();

    v37 = os_log_type_enabled(v35, v36);
    v38 = v62;
    if (v37)
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v69 = a1;
      v70 = v40;
      *v39 = 136315138;
      sub_266DA929C();
      sub_266C55E04();
      v41 = sub_266DAB13C();
      v43 = sub_266C22A3C(v41, v42, &v70);

      *(v39 + 4) = v43;
      _os_log_impl(&dword_266C08000, v35, v36, "Could not create AppInfo for %s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v40);
      OUTLINED_FUNCTION_6_1();
      OUTLINED_FUNCTION_6_1();
    }

    else
    {
    }

    (*(v38 + 8))(v61, v6);
    return 0;
  }

  v17 = v16;
  v18 = *(v16 + 16);
  if (v18)
  {
    v64 = v6;
    v60[0] = a1;
    v70 = MEMORY[0x277D84F90];
    sub_266DAAE8C();
    v6 = sub_266C293FC(v17);
    v20 = v17 + 64;
    v21 = v18 - 1;
    v63 = v17 + 64;
    if ((v6 & 0x8000000000000000) == 0)
    {
      while (v6 < 1 << *(v17 + 32))
      {
        a1 = v6 >> 6;
        if ((*(v20 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
        {
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

        if (v19 != *(v17 + 36))
        {
          goto LABEL_31;
        }

        v66 = v21;
        v67 = v19;
        v22 = (*(v17 + 48) + 16 * v6);
        v23 = *v22;
        v24 = v22[1];
        v25 = (*(v17 + 56) + 16 * v6);
        v26 = v25[1];
        v68 = *v25;
        v27 = sub_266DA923C();
        v28 = *(v27 + 48);
        v29 = *(v27 + 52);
        swift_allocObject();

        sub_266DA922C();
        v30 = v65;
        sub_266DAA77C();
        v31 = v64;
        __swift_storeEnumTagSinglePayload(v30, 0, 1, v64);
        sub_266DA920C();

        sub_266C55ECC(v30);
        sub_266DAA77C();
        __swift_storeEnumTagSinglePayload(v30, 0, 1, v31);
        sub_266DA91FC();

        sub_266C55ECC(v30);
        sub_266DA921C();

        sub_266DAAE6C();
        v32 = v70[2];
        sub_266DAAE9C();
        sub_266DAAEAC();
        sub_266DAAE7C();
        if (v6 >= -(-1 << *(v17 + 32)))
        {
          goto LABEL_32;
        }

        v20 = v63;
        if ((*(v63 + 8 * a1) & (1 << v6)) == 0)
        {
          goto LABEL_33;
        }

        if (v67 != *(v17 + 36))
        {
          goto LABEL_34;
        }

        v33 = sub_266DAAD2C();
        if (!v66)
        {

          v6 = v64;
          goto LABEL_28;
        }

        v6 = v33;
        v19 = *(v17 + 36);
        v21 = v66 - 1;
        if (v33 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
    goto LABEL_15;
  }

LABEL_28:
  v53 = sub_266DA912C();
  v54 = *(v53 + 48);
  v55 = *(v53 + 52);
  swift_allocObject();
  sub_266DA911C();
  v57 = v61;
  v56 = v62;
  v58 = v65;
  (*(v62 + 16))(v65, v61, v6);
  __swift_storeEnumTagSinglePayload(v58, 0, 1, v6);
  sub_266DA910C();

  sub_266C55ECC(v58);
  sub_266DA90FC();

  v52 = sub_266DA913C();

  (*(v56 + 8))(v57, v6);
  return v52;
}

unint64_t sub_266C55E04()
{
  result = qword_2800CA290;
  if (!qword_2800CA290)
  {
    sub_266DA929C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA290);
  }

  return result;
}

uint64_t sub_266C55E5C(void *a1)
{
  v2 = [a1 appNameMap];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_266DAA6AC();

  return v3;
}

uint64_t sub_266C55ECC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA038, &unk_266DAFBF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_0_19()
{

  return swift_once();
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

uint64_t sub_266C55F68(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_266C55FA8(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_266C56000()
{
  v0 = sub_266DA94AC();
  __swift_allocate_value_buffer(v0, qword_2800CA298);
  v1 = __swift_project_value_buffer(v0, qword_2800CA298);
  if (qword_28156F870 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, &unk_28156FCA8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_266C560C8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA2B0, &qword_266DB5C10);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v13[-v6];
  if ([a1 action] == 2)
  {
    if (qword_2800C91A8 != -1)
    {
      swift_once();
    }

    v8 = sub_266DA94AC();
    __swift_project_value_buffer(v8, qword_2800CA298);
    v9 = sub_266DA948C();
    v10 = sub_266DAAAFC();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_266C08000, v9, v10, "Removing geo fences is not currently supported.", v11, 2u);
      MEMORY[0x26D5F2480](v11, -1, -1);
    }

    v13[15] = 1;
    sub_266C562D0();
    sub_266DA975C();
    sub_266C56324();
    sub_266DA97EC();
    (*(v4 + 8))(v7, v3);
  }

  else
  {
    v12 = *__swift_project_boxed_opaque_existential_1(v1, v1[3]);
    sub_266CE50C8();
  }
}

unint64_t sub_266C562D0()
{
  result = qword_2800CA2B8;
  if (!qword_2800CA2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA2B8);
  }

  return result;
}

unint64_t sub_266C56324()
{
  result = qword_2800CA2C0;
  if (!qword_2800CA2C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800CA2B0, &qword_266DB5C10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA2C0);
  }

  return result;
}

uint64_t sub_266C56388@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA2E0, &unk_266DB05F0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v18 - v4;
  v6 = sub_266DA876C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v18 - v12;
  if (qword_28156F798 != -1)
  {
    swift_once();
  }

  type metadata accessor for ContactNLIntent();
  OUTLINED_FUNCTION_0_20(&qword_28156F668);
  sub_266DA871C();
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_266C57D90(v5);
    v14 = 1;
  }

  else
  {
    (*(v7 + 32))(v13, v5, v6);
    (*(v7 + 16))(v11, v13, v6);
    v15 = sub_266DA850C();
    OUTLINED_FUNCTION_7_7(v15);
    OUTLINED_FUNCTION_9_4();
    sub_266DA84FC();
    sub_266DA866C();
    (*(v7 + 8))(v13, v6);
    v14 = 0;
  }

  v16 = sub_266DA867C();
  return __swift_storeEnumTagSinglePayload(a1, v14, 1, v16);
}

uint64_t sub_266C565E0()
{
  if (qword_2800C91B0 != -1)
  {
    swift_once();
  }

  type metadata accessor for ContactNLIntent();
  OUTLINED_FUNCTION_0_20(&qword_28156F668);
  OUTLINED_FUNCTION_10_5();
  v0 = 6647407;
  if (v2)
  {
    v0 = 31085;
  }

  if (v2 == 2)
  {
    return 0;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_266C56690()
{
  if (qword_28156F7B0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_266C566EC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA300, &qword_266DB0610);
  OUTLINED_FUNCTION_7_7(v0);
  OUTLINED_FUNCTION_8_1();
  result = sub_266DA851C();
  qword_28156F6C8 = result;
  return result;
}

uint64_t sub_266C56744()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA2D8, &qword_266DB05E8);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_266DA851C();
  qword_28156F760 = result;
  return result;
}

uint64_t sub_266C567AC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA2D0, &qword_266DB05E0);
  OUTLINED_FUNCTION_7_7(v0);
  result = sub_266DA851C();
  qword_28156F728 = result;
  return result;
}

uint64_t sub_266C5680C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA2D8, &qword_266DB05E8);
  OUTLINED_FUNCTION_7_7(v0);
  OUTLINED_FUNCTION_8_1();
  result = sub_266DA851C();
  qword_28156F6A0 = result;
  return result;
}

uint64_t sub_266C56860()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA2F8, &qword_266DB0608);
  OUTLINED_FUNCTION_7_7(v0);
  result = sub_266DA851C();
  qword_28156F718 = result;
  return result;
}

uint64_t sub_266C568C0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA2E8, &qword_266DB5980);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_266DAE4A0;
  v1 = sub_266DA850C();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v4 = sub_266DA84FC();
  v5 = MEMORY[0x277D5E210];
  *(v0 + 56) = v1;
  *(v0 + 64) = v5;
  *(v0 + 32) = v4;
  v6 = sub_266DA83FC();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  result = sub_266DA83EC();
  qword_28156F7A0 = result;
  return result;
}

uint64_t sub_266C56990()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA2E8, &qword_266DB5980);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_266DB05B0;
  if (qword_28156F6C0 != -1)
  {
    swift_once();
  }

  v1 = qword_28156F6C8;
  *(v0 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA300, &qword_266DB0610);
  *(v0 + 64) = sub_266C230E8(&qword_28156F1B8, &qword_2800CA300, &qword_266DB0610);
  *(v0 + 32) = v1;
  v2 = qword_28156F758;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = qword_28156F760;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA2D8, &qword_266DB05E8);
  *(v0 + 96) = v4;
  v5 = sub_266C230E8(&qword_28156F1A8, &qword_2800CA2D8, &qword_266DB05E8);
  *(v0 + 104) = v5;
  *(v0 + 72) = v3;
  v6 = qword_28156F720;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = qword_28156F728;
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA2D0, &qword_266DB05E0);
  *(v0 + 144) = sub_266C230E8(&qword_28156F1C8, &qword_2800CA2D0, &qword_266DB05E0);
  *(v0 + 112) = v7;
  v8 = qword_28156F698;

  if (v8 != -1)
  {
    swift_once();
  }

  v9 = qword_28156F6A0;
  *(v0 + 176) = v4;
  *(v0 + 184) = v5;
  *(v0 + 152) = v9;
  v10 = qword_28156F798;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = qword_28156F7A0;
  v12 = sub_266DA83FC();
  v13 = MEMORY[0x277D5E210];
  *(v0 + 216) = v12;
  *(v0 + 224) = v13;
  *(v0 + 192) = v11;
  v14 = qword_28156F710;

  if (v14 != -1)
  {
    swift_once();
  }

  v15 = qword_28156F718;
  *(v0 + 256) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA2F8, &qword_266DB0608);
  *(v0 + 264) = sub_266C230E8(&qword_28156F1D0, &qword_2800CA2F8, &qword_266DB0608);
  *(v0 + 232) = v15;
  v16 = qword_28156F788;

  if (v16 != -1)
  {
    swift_once();
  }

  v17 = qword_28156F790;
  *(v0 + 296) = v12;
  *(v0 + 304) = v13;
  *(v0 + 272) = v17;
  v18 = sub_266DA849C();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();

  result = sub_266DA848C();
  qword_28156F7B8 = result;
  return result;
}

uint64_t sub_266C56D5C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA2D8, &qword_266DB05E8);
  OUTLINED_FUNCTION_7_7(v0);
  OUTLINED_FUNCTION_9_4();
  result = sub_266DA851C();
  qword_28156F700 = result;
  return result;
}

uint64_t sub_266C56DB8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA2F0, &qword_266DB0600);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_266DA851C();
  qword_2800CA2C8 = result;
  return result;
}

uint64_t sub_266C56E20()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA2E8, &qword_266DB5980);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_266DB05C0;
  if (qword_2800C91B0 != -1)
  {
    swift_once();
  }

  v1 = qword_2800CA2C8;
  *(v0 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA2F0, &qword_266DB0600);
  *(v0 + 64) = sub_266C230E8(&qword_2800CA448, &qword_2800CA2F0, &qword_266DB0600);
  *(v0 + 32) = v1;
  v2 = qword_28156F6F8;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = qword_28156F700;
  *(v0 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA2D8, &qword_266DB05E8);
  *(v0 + 104) = sub_266C230E8(&qword_28156F1A8, &qword_2800CA2D8, &qword_266DB05E8);
  *(v0 + 72) = v3;
  v4 = sub_266DA83FC();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();

  result = sub_266DA83EC();
  qword_28156F750 = result;
  return result;
}

uint64_t sub_266C56FE0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA2E8, &qword_266DB5980);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_266DAE4A0;
  if (qword_28156F748 != -1)
  {
    swift_once();
  }

  v1 = qword_28156F750;
  v2 = sub_266DA83FC();
  v3 = MEMORY[0x277D5E210];
  *(v0 + 56) = v2;
  *(v0 + 64) = v3;
  *(v0 + 32) = v1;
  v4 = *(v2 + 48);
  v5 = *(v2 + 52);
  swift_allocObject();

  result = sub_266DA83EC();
  qword_28156F688 = result;
  return result;
}

uint64_t sub_266C570C4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA310, &qword_266DB0620);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_266DA851C();
  qword_28156F770 = result;
  return result;
}

uint64_t sub_266C5712C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA308, &qword_266DB0618);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_266DA851C();
  qword_28156F6E8 = result;
  return result;
}

uint64_t sub_266C57194()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA2E8, &qword_266DB5980);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_266DB05D0;
  if (qword_28156F768 != -1)
  {
    swift_once();
  }

  v1 = qword_28156F770;
  *(v0 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA310, &qword_266DB0620);
  *(v0 + 64) = sub_266C230E8(&qword_28156F1B0, &qword_2800CA310, &qword_266DB0620);
  *(v0 + 32) = v1;
  v2 = qword_28156F6E0;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = qword_28156F6E8;
  *(v0 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA308, &qword_266DB0618);
  *(v0 + 104) = sub_266C230E8(&qword_28156F1C0, &qword_2800CA308, &qword_266DB0618);
  *(v0 + 72) = v3;
  v4 = qword_28156F680;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = qword_28156F688;
  v6 = sub_266DA83FC();
  v7 = MEMORY[0x277D5E210];
  *(v0 + 136) = v6;
  *(v0 + 144) = v7;
  *(v0 + 112) = v5;
  v8 = *(v6 + 48);
  v9 = *(v6 + 52);
  swift_allocObject();

  result = sub_266DA83EC();
  qword_28156F790 = result;
  return result;
}

uint64_t sub_266C5739C()
{
  OUTLINED_FUNCTION_3_9();
  sub_266DAAF8C();
  OUTLINED_FUNCTION_6_9();
  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_266C573E8(char a1)
{
  if (a1)
  {
    return 31085;
  }

  else
  {
    return 6647407;
  }
}

uint64_t sub_266C5740C()
{
  OUTLINED_FUNCTION_3_9();
  sub_266DAAF8C();
  OUTLINED_FUNCTION_6_9();
  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_266C5744C(char a1)
{
  result = 28265;
  switch(a1)
  {
    case 1:
      result = 28271;
      break;
    case 2:
      result = 1918985582;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_266C574C4()
{
  OUTLINED_FUNCTION_3_9();
  sub_266DAAF8C();
  OUTLINED_FUNCTION_6_9();
  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_266C57508(char a1)
{
  if (a1)
  {
    return 0x79627261656ELL;
  }

  else
  {
    return 6647407;
  }
}

uint64_t sub_266C57534()
{
  OUTLINED_FUNCTION_3_9();
  sub_266DAB1BC();
  OUTLINED_FUNCTION_6_9();
  if (v0 >= 0x11)
  {
    return 17;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_266C5757C(char a1)
{
  result = 1684957542;
  switch(a1)
  {
    case 1:
      result = 7301239;
      break;
    case 2:
      v3 = 1634038371;
      goto LABEL_12;
    case 3:
      v3 = 1701602660;
LABEL_12:
      result = v3 & 0xFFFF0000FFFFFFFFLL | 0x657400000000;
      break;
    case 4:
      result = 0x796669646F6DLL;
      break;
    case 5:
      result = 0x646E696620666D66;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    case 7:
      result = 0x69746F6E20666D66;
      break;
    case 8:
      result = 0x7369206572656877;
      break;
    case 9:
      result = 1701079400;
      break;
    case 10:
      result = 0x656469686E75;
      break;
    case 11:
      result = 1684104562;
      break;
    case 12:
      result = 0xD000000000000015;
      break;
    case 13:
      result = 0xD000000000000016;
      break;
    case 14:
      result = 0x636E756F6E6F7270;
      break;
    case 15:
      result = 0x6E20746567726F66;
      break;
    case 16:
      result = 0x72696620646E6966;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_266C57744()
{
  OUTLINED_FUNCTION_3_9();
  sub_266DAAF8C();
  OUTLINED_FUNCTION_6_9();
  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_266C57784(char a1)
{
  result = 0x657669727261;
  switch(a1)
  {
    case 1:
      result = 0x747261706564;
      break;
    case 2:
      result = 0x6576697272612069;
      break;
    case 3:
      result = 0x7472617065642069;
      break;
    case 4:
      result = 0x656D697420656E6FLL;
      break;
    case 5:
      result = 0xD000000000000016;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_266C5783C()
{
  OUTLINED_FUNCTION_3_9();
  sub_266DAAF8C();
  OUTLINED_FUNCTION_6_9();
  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_266C5787C(char a1)
{
  if (!a1)
  {
    return 7562617;
  }

  if (a1 == 1)
  {
    return 28526;
  }

  return 0x6C65636E6163;
}

uint64_t sub_266C578E0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_266C574C4();
  *a2 = result;
  return result;
}

uint64_t sub_266C57918()
{
  v1 = OUTLINED_FUNCTION_4_11();
  result = sub_266C573E8(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_266C579B4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_266C5740C();
  *a2 = result;
  return result;
}

unint64_t sub_266C579E4()
{
  v1 = OUTLINED_FUNCTION_4_11();
  result = sub_266C5744C(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_266C57A80@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_266C574C4();
  *a2 = result;
  return result;
}

uint64_t sub_266C57AB8()
{
  v1 = OUTLINED_FUNCTION_4_11();
  result = sub_266C57508(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_266C57B54@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_266C57534();
  *a2 = result;
  return result;
}

unint64_t sub_266C57B84()
{
  v1 = OUTLINED_FUNCTION_4_11();
  result = sub_266C5757C(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_266C57C20@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_266C57744();
  *a2 = result;
  return result;
}

unint64_t sub_266C57C50()
{
  v1 = OUTLINED_FUNCTION_4_11();
  result = sub_266C57784(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_266C57CEC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_266C5783C();
  *a2 = result;
  return result;
}

uint64_t sub_266C57D1C()
{
  v1 = OUTLINED_FUNCTION_4_11();
  result = sub_266C5787C(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t type metadata accessor for ContactNLIntent()
{
  result = qword_28156F648;
  if (!qword_28156F648)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_266C57D90(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA2E0, &unk_266DB05F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_266C57E48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v10 = a4();
  v11 = a5();
  v12 = a6();

  return MEMORY[0x2821C21F8](a1, a2, v10, v11, v12);
}

uint64_t sub_266C57ED8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_266DA8BDC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_266C57F58(uint64_t a1)
{
  v2 = sub_266C5934C(&unk_28156F670);

  return MEMORY[0x2821C0C78](a1, v2);
}

uint64_t sub_266C57FC0(uint64_t a1)
{
  v2 = sub_266C5934C(&unk_28156F670);

  return MEMORY[0x2821C0C68](a1, v2);
}

uint64_t sub_266C58018(uint64_t a1)
{
  v2 = sub_266C5934C(&unk_28156F670);

  return MEMORY[0x2821C0C70](a1, v2);
}

uint64_t sub_266C58070()
{
  if (qword_28156F6C0 != -1)
  {
    OUTLINED_FUNCTION_1_13();
  }

  type metadata accessor for ContactNLIntent();
  OUTLINED_FUNCTION_0_20(&qword_28156F668);
  OUTLINED_FUNCTION_10_5();
  if (v2 == 17)
  {
    v0 = 0;
  }

  else
  {
    sub_266C1778C();
  }

  return v0 & 1;
}

uint64_t sub_266C58104()
{
  if (qword_28156F6C0 != -1)
  {
    OUTLINED_FUNCTION_1_13();
  }

  type metadata accessor for ContactNLIntent();
  OUTLINED_FUNCTION_0_20(&qword_28156F668);
  OUTLINED_FUNCTION_2_10();
  if (v20 == 17)
  {
LABEL_4:
    OUTLINED_FUNCTION_2_10();
    if (v20 == 17)
    {
      v0 = 0;
      goto LABEL_19;
    }

    if (sub_266C5757C(v20) != 0x646E696620666D66 || v4 != 0xE800000000000000)
    {
      v0 = sub_266DAB17C();

      goto LABEL_19;
    }

    goto LABEL_17;
  }

  if (sub_266C5757C(v20) != 0x7369206572656877 || v1 != 0xE800000000000000)
  {
    v3 = sub_266DAB17C();

    if (v3)
    {
      goto LABEL_18;
    }

    goto LABEL_4;
  }

LABEL_17:

LABEL_18:
  v0 = 1;
LABEL_19:
  if (qword_28156F768 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_5_9();
  if (v20 == 5)
  {
    v6 = 0;
  }

  else
  {
    sub_266C17B68();
    v6 = v7;
  }

  if (qword_28156F6F8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_5_9();
  if (v21)
  {
    if (v20 == 0xD000000000000010 && v21 == 0x8000000266DC1CA0)
    {
      goto LABEL_39;
    }

    v9 = sub_266DAB17C();

    if (v9)
    {
      v10 = 1;
      goto LABEL_42;
    }
  }

  OUTLINED_FUNCTION_5_9();
  if (v21)
  {
    if (v20 != 0x79627261656ELL || v21 != 0xE600000000000000)
    {
      v10 = sub_266DAB17C();
LABEL_40:

      goto LABEL_42;
    }

LABEL_39:
    v10 = 1;
    goto LABEL_40;
  }

  v10 = 0;
LABEL_42:
  OUTLINED_FUNCTION_2_10();
  if (v20 == 17)
  {
    v12 = 0;
    goto LABEL_55;
  }

  if (sub_266C5757C(v20) == 7301239 && v13 == 0xE300000000000000)
  {

    if ((v6 | v10))
    {
      v12 = 1;
      goto LABEL_55;
    }
  }

  else
  {
    v15 = sub_266DAB17C();

    v16 = v15 ^ 1 | v6;
    if ((v16 | v10))
    {
      v12 = v16 ^ 1 | v15;
      goto LABEL_55;
    }
  }

  if (qword_28156F6E0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_5_9();
  v12 = v20 != 2;
LABEL_55:
  if (qword_28156F758 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_5_9();
  if (!v21)
  {
    goto LABEL_62;
  }

  v17 = HIBYTE(v21) & 0xF;
  if ((v21 & 0x2000000000000000) == 0)
  {
    v17 = v20 & 0xFFFFFFFFFFFFLL;
  }

  if (v17)
  {
    v18 = 0;
  }

  else
  {
LABEL_62:
    v18 = v0 | v12;
  }

  return v18 & 1;
}

uint64_t getEnumTagSinglePayload for DefaultLocationLabel(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
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
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ContactNLIntent.Proximity(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ContactNLIntent.ContactAttribute(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ContactNLIntent.Verb(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF0)
  {
    if (a2 + 16 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 16) >> 8 < 0xFF)
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
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 17;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v5 = v6 - 17;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ContactNLIntent.Verb(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEF)
  {
    v6 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
          *result = a2 + 16;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_266C588D0(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for ContactNLIntent.Confirmation(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_266C58AB0()
{
  result = sub_266DA8BDC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_266C58B88()
{
  result = qword_28156F780;
  if (!qword_28156F780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28156F780);
  }

  return result;
}

unint64_t sub_266C58C24()
{
  result = qword_2800CA328;
  if (!qword_2800CA328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA328);
  }

  return result;
}

unint64_t sub_266C58C7C()
{
  result = qword_28156F778;
  if (!qword_28156F778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28156F778);
  }

  return result;
}

unint64_t sub_266C58CD4()
{
  result = qword_2800CA330;
  if (!qword_2800CA330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA330);
  }

  return result;
}

unint64_t sub_266C58D70()
{
  result = qword_2800CA348;
  if (!qword_2800CA348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA348);
  }

  return result;
}

unint64_t sub_266C58DC8()
{
  result = qword_2800CA350;
  if (!qword_2800CA350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA350);
  }

  return result;
}

unint64_t sub_266C58E20()
{
  result = qword_28156F6D8;
  if (!qword_28156F6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28156F6D8);
  }

  return result;
}

unint64_t sub_266C58EBC()
{
  result = qword_2800CA368;
  if (!qword_2800CA368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA368);
  }

  return result;
}

unint64_t sub_266C58F14()
{
  result = qword_28156F6D0;
  if (!qword_28156F6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28156F6D0);
  }

  return result;
}

unint64_t sub_266C58F6C()
{
  result = qword_28156F7C8;
  if (!qword_28156F7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28156F7C8);
  }

  return result;
}

unint64_t sub_266C59008()
{
  result = qword_2800CA380;
  if (!qword_2800CA380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA380);
  }

  return result;
}

unint64_t sub_266C59060()
{
  result = qword_28156F7C0;
  if (!qword_28156F7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28156F7C0);
  }

  return result;
}

unint64_t sub_266C590B8()
{
  result = qword_28156F738;
  if (!qword_28156F738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28156F738);
  }

  return result;
}

unint64_t sub_266C59154()
{
  result = qword_2800CA398;
  if (!qword_2800CA398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA398);
  }

  return result;
}

unint64_t sub_266C591AC()
{
  result = qword_28156F730;
  if (!qword_28156F730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28156F730);
  }

  return result;
}

unint64_t sub_266C59204()
{
  result = qword_28156F6B0;
  if (!qword_28156F6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28156F6B0);
  }

  return result;
}

unint64_t sub_266C592A0()
{
  result = qword_2800CA3B0;
  if (!qword_2800CA3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA3B0);
  }

  return result;
}

unint64_t sub_266C592F8()
{
  result = qword_28156F6A8;
  if (!qword_28156F6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28156F6A8);
  }

  return result;
}

uint64_t sub_266C5934C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ContactNLIntent();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_266C59390()
{
  result = qword_2800CA3B8;
  if (!qword_2800CA3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA3B8);
  }

  return result;
}

unint64_t sub_266C593E4()
{
  result = qword_2800CA3C0;
  if (!qword_2800CA3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA3C0);
  }

  return result;
}

unint64_t sub_266C59438()
{
  result = qword_2800CA3C8;
  if (!qword_2800CA3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA3C8);
  }

  return result;
}

unint64_t sub_266C5948C()
{
  result = qword_2800CA3D0;
  if (!qword_2800CA3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA3D0);
  }

  return result;
}

unint64_t sub_266C594E0()
{
  result = qword_2800CA3D8;
  if (!qword_2800CA3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA3D8);
  }

  return result;
}

unint64_t sub_266C59534()
{
  result = qword_2800CA3E0;
  if (!qword_2800CA3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA3E0);
  }

  return result;
}

unint64_t sub_266C59588()
{
  result = qword_2800CA3E8;
  if (!qword_2800CA3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA3E8);
  }

  return result;
}

unint64_t sub_266C595DC()
{
  result = qword_2800CA3F0;
  if (!qword_2800CA3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA3F0);
  }

  return result;
}

unint64_t sub_266C59630()
{
  result = qword_2800CA3F8;
  if (!qword_2800CA3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA3F8);
  }

  return result;
}

unint64_t sub_266C59684()
{
  result = qword_2800CA400;
  if (!qword_2800CA400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA400);
  }

  return result;
}

unint64_t sub_266C596D8()
{
  result = qword_2800CA408;
  if (!qword_2800CA408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA408);
  }

  return result;
}

unint64_t sub_266C5972C()
{
  result = qword_2800CA410;
  if (!qword_2800CA410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA410);
  }

  return result;
}

unint64_t sub_266C59780()
{
  result = qword_2800CA418;
  if (!qword_2800CA418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA418);
  }

  return result;
}

unint64_t sub_266C597D4()
{
  result = qword_2800CA420;
  if (!qword_2800CA420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA420);
  }

  return result;
}

unint64_t sub_266C59828()
{
  result = qword_2800CA428;
  if (!qword_2800CA428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA428);
  }

  return result;
}

unint64_t sub_266C5987C()
{
  result = qword_2800CA430;
  if (!qword_2800CA430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA430);
  }

  return result;
}

unint64_t sub_266C598D0()
{
  result = qword_2800CA438;
  if (!qword_2800CA438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA438);
  }

  return result;
}

unint64_t sub_266C59924()
{
  result = qword_2800CA440;
  if (!qword_2800CA440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA440);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_20(unint64_t *a1)
{

  return sub_266C5934C(a1);
}

uint64_t OUTLINED_FUNCTION_1_13()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_10()
{

  return sub_266DA873C();
}

uint64_t OUTLINED_FUNCTION_5_9()
{

  return sub_266DA873C();
}

uint64_t OUTLINED_FUNCTION_6_9()
{
}

uint64_t OUTLINED_FUNCTION_7_7(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_10_5()
{

  return sub_266DA873C();
}

uint64_t sub_266C59A8C(uint64_t a1)
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

uint64_t sub_266C59B2C()
{
  v0 = sub_266DA94AC();
  __swift_allocate_value_buffer(v0, qword_2800CA450);
  v1 = __swift_project_value_buffer(v0, qword_2800CA450);
  if (qword_2800C9110 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, &unk_2800E61A8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_266C59BF4(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = *v1;
  return MEMORY[0x2822009F8](sub_266C59C3C, 0, 0);
}

uint64_t sub_266C59C3C()
{
  v1 = v0[4] + *(*v0[4] + 104);
  v2 = (*(*(v0[5] + 88) + 8))(*(v0[5] + 80));
  if (qword_2800C91C0 != -1)
  {
    swift_once();
  }

  v3 = sub_266DA94AC();
  __swift_project_value_buffer(v3, qword_2800CA450);
  v4 = sub_266DA948C();
  v5 = sub_266DAAB0C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 67109120;
    *(v6 + 4) = v2 & 1;
    _os_log_impl(&dword_266C08000, v4, v5, "DeviceUnsupportedFlow isDeviceSupported: %{BOOL}d", v6, 8u);
    MEMORY[0x26D5F2480](v6, -1, -1);
  }

  v7 = sub_266DA948C();
  v8 = sub_266DAAB0C();
  v9 = os_log_type_enabled(v7, v8);
  if (v2)
  {
    if (v9)
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      OUTLINED_FUNCTION_35_1(&dword_266C08000, v11, v12, "DeviceUnsupportedFlow device supported");
      MEMORY[0x26D5F2480](v10, -1, -1);
    }

    v13 = v0[3];
    v14 = v0[4];

    *(v14 + 16) = 0;
    sub_266DA7D7C();
  }

  else
  {
    if (v9)
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      OUTLINED_FUNCTION_35_1(&dword_266C08000, v16, v17, "DeviceUnsupportedFlow creating simple output dialog for unsupported device");
      MEMORY[0x26D5F2480](v15, -1, -1);
    }

    v19 = v0[3];
    v18 = v0[4];

    sub_266C59EC4();
    sub_266DA7FEC();
    v20 = sub_266DA75FC();
    v21 = *(v20 + 48);
    v22 = *(v20 + 52);
    swift_allocObject();
    v0[2] = sub_266DA75EC();
    sub_266DA7D5C();
  }

  OUTLINED_FUNCTION_28();

  return v23();
}

uint64_t sub_266C59F04(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_266C48BB4;

  return sub_266C5A03C(a1);
}

uint64_t sub_266C59FA0()
{
  v1 = *v0;
  OUTLINED_FUNCTION_23_1();
  v3 = *(v2 + 80);
  OUTLINED_FUNCTION_23_1();
  v5 = *(v4 + 88);
  type metadata accessor for DeviceUnsupportedFlow();
  swift_getWitnessTable();
  return sub_266DA79AC();
}

uint64_t sub_266C5A03C(uint64_t a1)
{
  v4 = *v1;
  OUTLINED_FUNCTION_23_1();
  v6 = *(v5 + 104);
  v8 = *(v7 + 88);
  v9 = *(v8 + 16);
  OUTLINED_FUNCTION_23_1();
  v11 = *(v10 + 80);
  v17 = (v12 + *v12);
  v13 = v12[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_24_1();
  *(v2 + 16) = v14;
  *v14 = v15;
  v14[1] = sub_266C48BB4;

  return v17(a1, v11, v8);
}

char *sub_266C5A198()
{
  v1 = *v0;
  OUTLINED_FUNCTION_23_1();
  v3 = *(v2 + 104);
  OUTLINED_FUNCTION_9_3(*(v4 + 80));
  (*(v5 + 8))(&v0[v6]);
  return v0;
}

uint64_t sub_266C5A200()
{
  sub_266C5A198();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_266C5A270(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277D5B890] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_266C5A320;

  return MEMORY[0x2821BA650](a1, a2, a3);
}

uint64_t sub_266C5A320()
{
  OUTLINED_FUNCTION_22_0();
  v2 = v1;
  OUTLINED_FUNCTION_23_0();
  v4 = *(v3 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v6 = v5;

  v7 = *(v5 + 8);

  return v7(v2);
}

uint64_t sub_266C5A430(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_266C4716C;

  return sub_266C59BF4(a1);
}

uint64_t sub_266C5A4E0()
{
  OUTLINED_FUNCTION_22_0();
  v1[22] = v2;
  v1[23] = v0;
  v3 = type metadata accessor for Snippets();
  v1[24] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v5 = sub_266DA80AC();
  v1[29] = v5;
  OUTLINED_FUNCTION_11_3(v5);
  v1[30] = v6;
  v8 = *(v7 + 64) + 15;
  v1[31] = swift_task_alloc();
  v9 = sub_266DA7C0C();
  v1[32] = v9;
  OUTLINED_FUNCTION_11_3(v9);
  v1[33] = v10;
  v12 = *(v11 + 64) + 15;
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA040, &unk_266DB0070) - 8) + 64) + 15;
  v1[36] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA048, &unk_266DAFC00) - 8) + 64) + 15;
  v1[37] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA050, &qword_266DB0080);
  OUTLINED_FUNCTION_11_3(v15);
  v1[38] = v16;
  v1[39] = *(v17 + 64);
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();
  v18 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v18, v19, v20);
}

uint64_t sub_266C5A768()
{
  v2 = v0[46];
  v1 = v0[47];
  v4 = v0[23];
  v3 = v0[24];
  v0[48] = v4[11];
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v3);
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
  v5 = *v4;
  v6 = swift_task_alloc();
  v0[49] = v6;
  *v6 = v0;
  v6[1] = sub_266C5A834;

  return sub_266D8E028();
}

uint64_t sub_266C5A834()
{
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  OUTLINED_FUNCTION_21_1();
  *v4 = v3;
  v6 = *(v5 + 392);
  *v4 = *v1;
  v3[50] = v7;
  v3[51] = v0;

  if (v0)
  {
    v8 = v3[47];
    sub_266C47654(v3[46], &qword_2800CA050, &qword_266DB0080);
    sub_266C47654(v8, &qword_2800CA050, &qword_266DB0080);
    v9 = sub_266C5B98C;
  }

  else
  {
    v9 = sub_266C5A978;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

void sub_266C5A978()
{
  v1 = v0[50];
  v2 = v0[36];
  v3 = v0[37];
  v4 = v0[35];
  v5 = sub_266DA7E5C();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v5);
  sub_266DA7C7C();
  v6 = OUTLINED_FUNCTION_31();
  __swift_storeEnumTagSinglePayload(v6, v7, 1, v8);
  sub_266DA7BCC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC460, &unk_266DAFC20);
  v9 = swift_allocObject();
  v0[52] = v9;
  *(v9 + 16) = xmmword_266DAE3B0;
  *(v9 + 32) = v1;
  v10 = v1;
  if (sub_266C3A14C(v9, v11, v12))
  {
    sub_266CB9F54(0, (v9 & 0xC000000000000001) == 0, v9);
    if ((v9 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x26D5F1780](0, v9);
    }

    else
    {
      v13 = *(v9 + 32);
    }

    v14 = v13;
    v15 = [v13 catId];

    v87 = sub_266DAA70C();
    v90 = v16;
  }

  else
  {
    v87 = 0;
    v90 = 0;
  }

  v18 = v0[47];
  v17 = v0[48];
  v19 = v0[45];
  v20 = v0[44];
  v22 = v0[38];
  v21 = v0[39];
  v84 = v0[37];
  v85 = v0[36];
  v23 = v0[34];
  v83 = v0[35];
  v25 = v0[32];
  v24 = v0[33];
  v86 = v18;
  v88 = v0[24];
  v89 = v0[43];
  sub_266C4756C(v0[46], v19);
  sub_266C4756C(v18, v20);
  v26 = *(v22 + 80);
  v27 = (v26 + 24) & ~v26;
  v28 = (v21 + v26 + v27) & ~v26;
  v29 = swift_allocObject();
  v0[53] = v29;
  *(v29 + 16) = v17;
  sub_266C475DC(v19, v29 + v27);
  sub_266C475DC(v20, v29 + v28);
  (*(v24 + 16))(v23, v83, v25);
  v30 = swift_task_alloc();
  *(v30 + 16) = 0;
  *(v30 + 24) = 0;
  *(v30 + 32) = 0;
  *(v30 + 40) = v87;
  *(v30 + 48) = v90;
  *(v30 + 56) = v84;
  *(v30 + 64) = 514;
  *(v30 + 72) = sub_266C4876C;
  *(v30 + 80) = v29;
  *(v30 + 88) = v85;

  sub_266DA800C();

  sub_266C4756C(v86, v89);
  if (__swift_getEnumTagSinglePayload(v89, 1, v88) == 1)
  {
    v31 = v0 + 43;
  }

  else
  {
    v32 = v0[46];
    v33 = v0[42];
    v34 = v0[24];
    sub_266C476A8(v0[43], v0[28]);
    sub_266C4756C(v32, v33);
    v35 = OUTLINED_FUNCTION_31();
    if (__swift_getEnumTagSinglePayload(v35, v36, v34) != 1)
    {
      v62 = v0[27];
      v63 = v0[28];
      v64 = v0[24];
      sub_266C476A8(v0[42], v62);
      v0[15] = v64;
      v65 = sub_266C4DB4C();
      v0[16] = v65;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 12);
      sub_266C47750(v63, boxed_opaque_existential_1);
      v0[20] = v64;
      v0[21] = v65;
      v67 = __swift_allocate_boxed_opaque_existential_1(v0 + 17);
      sub_266C47750(v62, v67);
      OUTLINED_FUNCTION_10_4(MEMORY[0x277D5BD30]);
      OUTLINED_FUNCTION_24_1();
      v0[54] = v68;
      *v68 = v69;
      OUTLINED_FUNCTION_50_0(v68);
      v70 = v0[31];
      v71 = v0[22];
      OUTLINED_FUNCTION_25_0();

      __asm { BR              X5 }
    }

    v31 = v0 + 42;
    sub_266C477B4(v0[28]);
  }

  v37 = *v31;
  v38 = v0[47];
  v39 = v0[41];
  v40 = v0[24];
  sub_266C47654(v37, &qword_2800CA050, &qword_266DB0080);
  sub_266C4756C(v38, v39);
  v41 = OUTLINED_FUNCTION_31();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v41, v42, v40);
  v44 = v0[41];
  v45 = v0[24];
  if (EnumTagSinglePayload == 1)
  {
    v46 = v0[46];
    v47 = v0[40];
    sub_266C47654(v44, &qword_2800CA050, &qword_266DB0080);
    sub_266C4756C(v46, v47);
    v48 = OUTLINED_FUNCTION_55();
    if (__swift_getEnumTagSinglePayload(v48, v49, v45) == 1)
    {
      sub_266C47654(v0[40], &qword_2800CA050, &qword_266DB0080);
      OUTLINED_FUNCTION_10_4(MEMORY[0x277D5BD50]);
      OUTLINED_FUNCTION_24_1();
      v0[57] = v50;
      *v50 = v51;
      OUTLINED_FUNCTION_50_0(v50);
      v52 = v0[31];
      v53 = v0[22];
      OUTLINED_FUNCTION_25_0();

      __asm { BR              X3 }
    }

    v74 = v0[24];
    v75 = v0[25];
    sub_266C476A8(v0[40], v75);
    v0[5] = v74;
    v0[6] = sub_266C4DB4C();
    v76 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
    sub_266C47750(v75, v76);
    OUTLINED_FUNCTION_10_4(MEMORY[0x277D5BD40]);
    OUTLINED_FUNCTION_24_1();
    v0[56] = v77;
    *v77 = v78;
    OUTLINED_FUNCTION_50_0(v77);
    v79 = v0[31];
    v80 = v0[22];
  }

  else
  {
    v56 = v0[26];
    sub_266C476A8(v44, v56);
    v0[10] = v45;
    v0[11] = sub_266C4DB4C();
    v57 = __swift_allocate_boxed_opaque_existential_1(v0 + 7);
    sub_266C47750(v56, v57);
    OUTLINED_FUNCTION_10_4(MEMORY[0x277D5BD38]);
    OUTLINED_FUNCTION_24_1();
    v0[55] = v58;
    *v58 = v59;
    OUTLINED_FUNCTION_50_0(v58);
    v60 = v0[31];
    v61 = v0[22];
  }

  OUTLINED_FUNCTION_25_0();

  __asm { BR              X4 }
}

uint64_t sub_266C5AF68()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_21_1();
  *v3 = v2;
  v5 = *(v4 + 432);
  v6 = *(v4 + 416);
  v7 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 136));
  __swift_destroy_boxed_opaque_existential_0((v2 + 96));
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266C5B074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_57();
  v21 = v20[53];
  v22 = v20[50];
  v46 = v20[46];
  v47 = v20[47];
  v23 = v20[35];
  v25 = v20[32];
  v24 = v20[33];
  v26 = v20[30];
  v27 = v20[31];
  v29 = v20[28];
  v28 = v20[29];
  v30 = v20[27];

  sub_266C477B4(v30);
  sub_266C477B4(v29);
  v31 = *(v26 + 8);
  v32 = OUTLINED_FUNCTION_83();
  v33(v32);
  v34 = *(v24 + 8);
  v35 = OUTLINED_FUNCTION_38();
  v36(v35);
  OUTLINED_FUNCTION_31_1(v46);
  OUTLINED_FUNCTION_31_1(v47);
  OUTLINED_FUNCTION_1_14();
  sub_266C47654(v30, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v29, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_39();

  return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12, a13, a14, a15, v46, v47, a18, a19, a20);
}

uint64_t sub_266C5B210()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_21_1();
  *v3 = v2;
  v5 = *(v4 + 440);
  v6 = *(v4 + 416);
  v7 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 56));
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266C5B314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_14_6();
  v25 = *(v22 + 208);

  sub_266C477B4(v25);
  v26 = *(v21 + 8);
  v27 = OUTLINED_FUNCTION_83();
  v28(v27);
  v29 = *(v24 + 8);
  v30 = OUTLINED_FUNCTION_38();
  v31(v30);
  OUTLINED_FUNCTION_31_1(v20);
  OUTLINED_FUNCTION_31_1(a17);
  OUTLINED_FUNCTION_1_14();
  sub_266C47654(v23, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v25, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_39();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_266C5B48C()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_21_1();
  *v3 = v2;
  v5 = *(v4 + 448);
  v6 = *(v4 + 416);
  v7 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 16));
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266C5B590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_14_6();
  v25 = *(v22 + 200);

  sub_266C477B4(v25);
  v26 = *(v21 + 8);
  v27 = OUTLINED_FUNCTION_83();
  v28(v27);
  v29 = *(v24 + 8);
  v30 = OUTLINED_FUNCTION_38();
  v31(v30);
  OUTLINED_FUNCTION_31_1(v20);
  OUTLINED_FUNCTION_31_1(a17);
  OUTLINED_FUNCTION_1_14();
  sub_266C47654(v23, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v25, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_39();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_266C5B708()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v1 + 456);
  v3 = *(v1 + 416);
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_266C5B808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_57();
  v21 = v20[53];
  v22 = v20[50];
  v23 = v20[46];
  v24 = v20[47];
  v25 = v20[35];
  v26 = v20[32];
  v27 = v20[33];
  v29 = v20[30];
  v28 = v20[31];
  v30 = v20[29];

  v31 = *(v29 + 8);
  v32 = OUTLINED_FUNCTION_83();
  v33(v32);
  v34 = *(v27 + 8);
  v35 = OUTLINED_FUNCTION_38();
  v36(v35);
  OUTLINED_FUNCTION_31_1(v23);
  OUTLINED_FUNCTION_31_1(v24);
  OUTLINED_FUNCTION_1_14();
  sub_266C47654(v27 + 8, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v22, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_39();

  return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_266C5B98C()
{
  v2 = v0[46];
  v1 = v0[47];
  v4 = v0[44];
  v3 = v0[45];
  v6 = v0[42];
  v5 = v0[43];
  v7 = v0[40];
  v8 = v0[41];
  v10 = v0[36];
  v9 = v0[37];
  v14 = v0[35];
  v15 = v0[34];
  v16 = v0[31];
  v17 = v0[28];
  v18 = v0[27];
  v19 = v0[26];
  v20 = v0[25];

  OUTLINED_FUNCTION_28();
  v12 = v0[51];

  return v11();
}

uint64_t sub_266C5BABC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_266C4716C;

  return sub_266C5A4E0();
}

uint64_t sub_266C5BB54()
{
  OUTLINED_FUNCTION_22_0();
  v2 = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_24_1();
  *(v0 + 16) = v3;
  *v3 = v4;
  v3[1] = sub_266C4716C;

  return sub_266C59F04(v2);
}

uint64_t sub_266C5BC20(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_266C5BC60(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void OUTLINED_FUNCTION_1_14()
{
  v1 = v0[46];
  v2 = v0[47];
  v4 = v0[44];
  v3 = v0[45];
  v6 = v0[42];
  v5 = v0[43];
  v7 = v0[41];
  v9 = v0[36];
  v8 = v0[37];
  v10 = v0[40];
  v11 = v0[35];
  v12 = v0[34];
  v13 = v0[31];
  v14 = v0[28];
  v15 = v0[27];
  v16 = v0[26];
  v17 = v0[25];
}

uint64_t OUTLINED_FUNCTION_14_6()
{
  result = v0[53];
  v2 = v0[50];
  v3 = v0[46];
  v10 = v0[47];
  v4 = v0[35];
  v5 = v0[32];
  v6 = v0[33];
  v7 = v0[30];
  v8 = v0[31];
  v9 = v0[29];
  return result;
}

void OUTLINED_FUNCTION_35_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 2u);
}

uint64_t sub_266C5BD50()
{
  v0 = sub_266DA94AC();
  __swift_allocate_value_buffer(v0, qword_2800CA4E8);
  v1 = __swift_project_value_buffer(v0, qword_2800CA4E8);
  if (qword_28156F870 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, &unk_28156FCA8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_266C5BE18()
{
  v0 = [objc_opt_self() sharedManager];
  v1 = sub_266DAA6FC();
  v2 = [v0 retrieveAssetSet:v1 usages:0];

  qword_2800CA500 = v2;
}

uint64_t sub_266C5BEB4@<X0>(uint64_t a1@<X8>)
{
  if (qword_2800C91D0 != -1)
  {
    swift_once();
  }

  if (qword_2800CA500 && (v2 = [qword_2800CA500 assets]) != 0)
  {
    v3 = v2;
    sub_266C5C0EC();
    v4 = sub_266DAA6AC();
  }

  else
  {
    v4 = 0;
  }

  if (qword_2800C91C8 != -1)
  {
    swift_once();
  }

  v5 = sub_266DA94AC();
  __swift_project_value_buffer(v5, qword_2800CA4E8);

  v6 = sub_266DA948C();
  v7 = sub_266DAAACC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136446210;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA508, &unk_266DB1068);
    v10 = sub_266DAA72C();
    v12 = sub_266C22A3C(v10, v11, &v15);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_266C08000, v6, v7, "Assets: %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x26D5F2480](v9, -1, -1);
    MEMORY[0x26D5F2480](v8, -1, -1);
  }

  if (v4)
  {
    return sub_266C2A3C0(v4, a1);
  }

  v14 = type metadata accessor for ConfigurationFiles();
  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v14);
}

unint64_t sub_266C5C0EC()
{
  result = qword_2800CA510;
  if (!qword_2800CA510)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800CA510);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for GeoFenceSettingError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_266C5C210()
{
  result = qword_2800CA518;
  if (!qword_2800CA518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA518);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for OpenModuleIntentTargetRepresentation(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_266C5C340()
{
  result = qword_2800CA520;
  if (!qword_2800CA520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA520);
  }

  return result;
}

uint64_t sub_266C5C394()
{
  v0 = sub_266DAAF8C();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_266C5C3E0(char a1)
{
  if (!a1)
  {
    return 0x656C706F6570;
  }

  if (a1 == 1)
  {
    return 0x73656369766564;
  }

  return 0x736D657469;
}

uint64_t sub_266C5C454@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_266C5C394();
  *a2 = result;
  return result;
}

uint64_t sub_266C5C484@<X0>(uint64_t *a1@<X8>)
{
  result = sub_266C5C3E0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_266C5C4DC(uint64_t a1)
{
  v2 = sub_266C5C930();

  return MEMORY[0x28213DAB0](a1, v2);
}

uint64_t sub_266C5C518(uint64_t a1)
{
  v2 = sub_266C5C930();

  return MEMORY[0x28213DAD0](a1, v2);
}

uint64_t sub_266C5C554(uint64_t a1, uint64_t a2)
{
  v4 = sub_266C5C7C8();

  return MEMORY[0x28213DDE8](a1, a2, v4);
}

uint64_t sub_266C5C5A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_266C5C930();

  return MEMORY[0x28213DAC0](a1, a2, a3, v6);
}

uint64_t sub_266C5C608(uint64_t a1, uint64_t a2)
{
  v4 = sub_266C5C7C8();

  return MEMORY[0x28213DE00](a1, a2, v4);
}

unint64_t sub_266C5C658()
{
  result = qword_2800CA528;
  if (!qword_2800CA528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA528);
  }

  return result;
}

unint64_t sub_266C5C6B0()
{
  result = qword_2800CA530;
  if (!qword_2800CA530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA530);
  }

  return result;
}

unint64_t sub_266C5C708()
{
  result = qword_2800CA538;
  if (!qword_2800CA538)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800CA540, &qword_266DB1268);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA538);
  }

  return result;
}

unint64_t sub_266C5C770()
{
  result = qword_2800CA548;
  if (!qword_2800CA548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA548);
  }

  return result;
}

unint64_t sub_266C5C7C8()
{
  result = qword_2800CA550;
  if (!qword_2800CA550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA550);
  }

  return result;
}

unint64_t sub_266C5C820()
{
  result = qword_2800CA558;
  if (!qword_2800CA558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA558);
  }

  return result;
}

unint64_t sub_266C5C878()
{
  result = qword_2800CA560;
  if (!qword_2800CA560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA560);
  }

  return result;
}

unint64_t sub_266C5C8DC()
{
  result = qword_2800CA568;
  if (!qword_2800CA568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA568);
  }

  return result;
}

unint64_t sub_266C5C930()
{
  result = qword_2800CA570;
  if (!qword_2800CA570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA570);
  }

  return result;
}

uint64_t sub_266C5C988()
{
  v0 = sub_266DA94AC();
  __swift_allocate_value_buffer(v0, qword_28156F280);
  v1 = __swift_project_value_buffer(v0, qword_28156F280);
  if (qword_2800C90F0 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, &unk_28156FC80);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_266C5CA50()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA578, &unk_266DB13C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_266DAE4A0;
  v2 = [v0 effectiveIdentifier];
  v3 = sub_266DAA70C();
  v5 = v4;

  *(inited + 32) = v3;
  *(inited + 40) = v5;
  *(inited + 48) = 1;
  return sub_266C678C8(inited);
}

id sub_266C5CB0C()
{
  v13 = sub_266DAAB7C();
  v0 = *(v13 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_0_6();
  v4 = v3 - v2;
  v5 = sub_266DAAB6C();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_0_6();
  v7 = sub_266DA9FDC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  OUTLINED_FUNCTION_0_6();
  v9 = [objc_allocWithZone(MEMORY[0x277D44160]) init];
  sub_266C29814(0, &qword_28156EFC0, 0x277D85C78);
  v10 = v9;
  sub_266DA9FBC();
  sub_266C3601C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC440, &qword_266DAF890);
  sub_266C5D904();
  sub_266DAAD0C();
  (*(v0 + 104))(v4, *MEMORY[0x277D85260], v13);
  v11 = sub_266DAABBC();
  OUTLINED_FUNCTION_2_11([v10 setFlags_], sel_setDispatchQueue_);

  return v10;
}

void sub_266C5CD70(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  OUTLINED_FUNCTION_26_0();
  v10 = swift_allocObject();
  v42 = a3;
  *(v10 + 16) = a3;
  *(v10 + 24) = a4;
  v55 = sub_266C5D9F4;
  v56 = v10;
  aBlock = MEMORY[0x277D85DD0];
  v52 = 1107296256;
  v53 = sub_266C73FC4;
  v54 = &block_descriptor_0;
  v11 = _Block_copy(&aBlock);
  v43 = a4;

  OUTLINED_FUNCTION_2_11(v12, sel_setInvalidationHandler_);
  _Block_release(v11);
  v55 = sub_266C5D3A0;
  v56 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v52 = 1107296256;
  v53 = sub_266C73FC4;
  v54 = &block_descriptor_3;
  v13 = _Block_copy(&aBlock);
  OUTLINED_FUNCTION_2_11(v13, sel_setInterruptionHandler_);
  _Block_release(v13);
  OUTLINED_FUNCTION_26_0();
  v14 = swift_allocObject();
  v48 = a1;
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  v55 = sub_266C5DA14;
  v56 = v14;
  aBlock = MEMORY[0x277D85DD0];
  v52 = 1107296256;
  v53 = sub_266C5D6BC;
  v54 = &block_descriptor_9;
  v15 = _Block_copy(&aBlock);
  v16 = a2;

  OUTLINED_FUNCTION_2_11(v17, sel_setDeviceFoundHandler_);
  _Block_release(v15);
  v44 = a5;
  v18 = [a5 activeDevices];
  v19 = sub_266C29814(0, &unk_28156EFB0, 0x277D44170);
  v20 = sub_266DAA93C();

  v23 = sub_266C3A14C(v20, v21, v22);
  v24 = 0;
  v25 = v20 & 0xFFFFFFFFFFFFFF8;
  v45 = v23;
  v46 = v19;
  while (1)
  {
    if (v23 == v24)
    {

      OUTLINED_FUNCTION_26_0();
      v40 = swift_allocObject();
      *(v40 + 16) = v42;
      *(v40 + 24) = v43;
      v55 = sub_266C5DA1C;
      v56 = v40;
      aBlock = MEMORY[0x277D85DD0];
      v52 = 1107296256;
      v53 = sub_266D4E724;
      v54 = &block_descriptor_15;
      v41 = _Block_copy(&aBlock);

      [v44 activateWithCompletion_];
      _Block_release(v41);
      return;
    }

    if ((v20 & 0xC000000000000001) != 0)
    {
      v26 = MEMORY[0x26D5F1780](v24, v20);
    }

    else
    {
      if (v24 >= *(v25 + 16))
      {
        goto LABEL_15;
      }

      v26 = *(v20 + 8 * v24 + 32);
    }

    v27 = v26;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (qword_2800C91D8 != -1)
    {
      swift_once();
    }

    v28 = sub_266DA94AC();
    __swift_project_value_buffer(v28, qword_28156F280);
    v29 = v27;
    v30 = sub_266DA948C();
    v31 = sub_266DAAB0C();

    v49 = v31;
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v50 = v47;
      *v32 = 136315138;
      aBlock = sub_266C39CC0(v29, &selRef_name);
      v52 = v33;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9BE0, &qword_266DAE760);
      v34 = sub_266DAA72C();
      v36 = v16;
      v37 = sub_266C22A3C(v34, v35, &v50);
      v25 = v20 & 0xFFFFFFFFFFFFFF8;

      *(v32 + 4) = v37;
      v16 = v36;
      _os_log_impl(&dword_266C08000, v30, v49, "Companion link had cached device: %s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v47);
      v23 = v45;
      MEMORY[0x26D5F2480](v47, -1, -1);
      v38 = v32;
      v19 = v46;
      MEMORY[0x26D5F2480](v38, -1, -1);
    }

    v54 = v19;
    v55 = &off_28785F630;
    aBlock = v29;
    v39 = v29;
    v48(&aBlock);
    __swift_destroy_boxed_opaque_existential_0(&aBlock);

    ++v24;
  }

  __break(1u);
LABEL_15:
  __break(1u);
}

uint64_t sub_266C5D298(uint64_t (*a1)(char *))
{
  if (qword_2800C91D8 != -1)
  {
    swift_once();
  }

  v2 = sub_266DA94AC();
  __swift_project_value_buffer(v2, qword_28156F280);
  v3 = sub_266DA948C();
  v4 = sub_266DAAB0C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_266C08000, v3, v4, "Companion Link Discovery Invalidated", v5, 2u);
    MEMORY[0x26D5F2480](v5, -1, -1);
  }

  v7 = 1;
  return a1(&v7);
}

void sub_266C5D3A0()
{
  if (qword_2800C91D8 != -1)
  {
    swift_once();
  }

  v0 = sub_266DA94AC();
  __swift_project_value_buffer(v0, qword_28156F280);
  oslog = sub_266DA948C();
  v1 = sub_266DAAAEC();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_266C08000, oslog, v1, "Companion Link Discovery Interrupted", v2, 2u);
    MEMORY[0x26D5F2480](v2, -1, -1);
  }
}

uint64_t sub_266C5D488(void *a1, void (*a2)(uint64_t *))
{
  if (qword_2800C91D8 != -1)
  {
    swift_once();
  }

  v4 = sub_266DA94AC();
  __swift_project_value_buffer(v4, qword_28156F280);
  v5 = a1;
  v6 = sub_266DA948C();
  v7 = sub_266DAAB0C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v8 = 136315394;
    v21 = sub_266C39CC0(v5, &selRef_name);
    v22 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9BE0, &qword_266DAE760);
    v11 = sub_266DAA72C();
    v13 = sub_266C22A3C(v11, v12, &v20);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2080;
    v21 = sub_266C39CC0(v5, &selRef_idsDeviceIdentifier);
    v22 = v14;
    v15 = sub_266DAA72C();
    v17 = sub_266C22A3C(v15, v16, &v20);

    *(v8 + 14) = v17;
    _os_log_impl(&dword_266C08000, v6, v7, "Companion Link Discovery found device: %s %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D5F2480](v9, -1, -1);
    MEMORY[0x26D5F2480](v8, -1, -1);
  }

  v23 = sub_266C29814(0, &unk_28156EFB0, 0x277D44170);
  v24 = &off_28785F630;
  v21 = v5;
  v18 = v5;
  a2(&v21);
  return __swift_destroy_boxed_opaque_existential_0(&v21);
}