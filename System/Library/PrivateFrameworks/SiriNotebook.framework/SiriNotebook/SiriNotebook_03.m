void sub_26813B5FC()
{
  OUTLINED_FUNCTION_30_0();
  v2 = v1;
  v3 = sub_2683CB598();
  v4 = OUTLINED_FUNCTION_0_3(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_14_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4A8, &unk_2683D4D00);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_2683D1EC0;
  if (qword_28024CBE8 != -1)
  {
    swift_once();
  }

  v8 = sub_2683CD158();
  v10 = OUTLINED_FUNCTION_26_1(v8, v9);
  OUTLINED_FUNCTION_23_2(v10, &off_28790B0A0);
  OUTLINED_FUNCTION_20_2();
  v11 = swift_allocObject();
  sub_268128148(&v16, v11 + 16);

  __swift_destroy_boxed_opaque_existential_0(&v17);
  v13 = *v0;
  v12 = v0[1];

  sub_2683CB588();
  sub_2683CB548();
  v14 = OUTLINED_FUNCTION_16_3();
  v15(v14);
  *v2 = v7;
  *(v2 + 8) = &unk_2683D2728;
  *(v2 + 16) = 0;
  *(v2 + 24) = &unk_2683D2738;
  *(v2 + 32) = v11;
  *(v2 + 40) = &unk_2683D2748;
  *(v2 + 48) = v13;
  *(v2 + 56) = sub_26813C4EC;
  *(v2 + 64) = 0;
  *(v2 + 72) = sub_26813C5BC;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_29_0();
}

void sub_26813B7F8(void *a1)
{
  v5[3] = sub_268129504(0, &qword_28024D4C0, 0x277CD3E08);
  v5[0] = a1;
  sub_26813CC6C(v5, v4);
  sub_268129504(0, &qword_28024CDC0, 0x277CD4250);
  v2 = a1;
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(v5);
    sub_26813CCC8(v3);
    sub_2683CFB38();
  }

  else
  {
    sub_26813B8FC();
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_0(v5);
  }
}

uint64_t sub_26813B8FC()
{
  if (qword_28024C8E0 != -1)
  {
    swift_once();
  }

  v0 = sub_2683CF7E8();
  __swift_project_value_buffer(v0, qword_28027C958);
  v1 = sub_2683CF7C8();
  v2 = sub_2683CFE78();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_2680EB000, v1, v2, "[CreateNote DisambiguationStrategy] Disambiguation items contains an INImageContent and can not be disambiguated", v3, 2u);
    MEMORY[0x26D617A40](v3, -1, -1);
  }

  sub_26813CD2C();

  return swift_allocError();
}

uint64_t sub_26813B9FC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  a3(a2);
  v4 = *(v3 + 8);

  return v4();
}

uint64_t sub_26813BA84(uint64_t a1, uint64_t *a2, int *a3)
{
  v5 = *a2;
  v9 = (a3 + *a3);
  v6 = a3[1];
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2681342AC;

  return v9(a1, v5);
}

uint64_t sub_26813BB88(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_26813BBA8, 0, 0);
}

uint64_t sub_26813BBA8()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_25_2();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_9_3(v1);

  return sub_26834FBF8(v2);
}

uint64_t sub_26813BC30(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2681342AC;

  return sub_2683B6C0C(a1, a2);
}

id sub_26813BCF4(void **a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4B0, &unk_2683D26E0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - v7;
  v9 = *a1;
  sub_268129504(0, &qword_28024D350, 0x277CD3E00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAB0, &unk_2683D2C10);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_2683D2250;
  *(v10 + 32) = v9;
  v11 = sub_2683CB0D8();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v11);
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v11);
  v12 = v9;
  v13 = sub_2683B9B90(0, v10, 0, v8, v6);
  sub_26813CC04();
  return v13;
}

uint64_t sub_26813BE50(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26813D6E8;

  return sub_26812B380(a1);
}

uint64_t sub_26813BEE8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_26813BF08, 0, 0);
}

uint64_t sub_26813BF08()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_25_2();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_9_3(v1);

  return sub_26834FD08(v2);
}

uint64_t sub_26813BF90(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2681342AC;

  return sub_2683B6E54(a1, a2);
}

uint64_t sub_26813C054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void, unint64_t))
{
  v6 = sub_2683CDE38();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v9 = sub_2683CDE28();
  v10 = sub_2683CD9C8();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  sub_2683CD9B8();
  a5(0, 0xE000000000000000);
  sub_2683CDBF8();

  return v9;
}

id sub_26813C0E8(void **a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4B0, &unk_2683D26E0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - v7;
  v9 = *a1;
  sub_268129504(0, &qword_28024D350, 0x277CD3E00);
  v10 = sub_2683CB0D8();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v10);
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v10);
  v11 = v9;
  v12 = sub_2683B9B90(v9, 0, 0, v8, v6);
  sub_26813CC04();
  return v12;
}

uint64_t sub_26813C210(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26813D6E8;

  return sub_26812B6B8(a1);
}

uint64_t sub_26813C2A8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_26813C2C8, 0, 0);
}

uint64_t sub_26813C2C8()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_25_2();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_9_3(v1);

  return sub_26834FE18(v2);
}

uint64_t sub_26813C350()
{
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_42();
  v5 = *(v4 + 32);
  v6 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v7 = v6;

  v9 = *(v6 + 8);
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

uint64_t sub_26813C440(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2681342AC;

  return sub_2683B6D30(a1, a2);
}

uint64_t sub_26813C4EC()
{
  v0 = sub_2683CDE38();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  v3 = sub_2683CDE28();
  v4 = sub_2683CD9C8();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_2683CD9B8();
  v7 = sub_2683CDEC8();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  sub_2683CDEB8();
  sub_2683CDEA8();

  sub_2683CD9A8();

  sub_2683CDBF8();

  return v3;
}

id sub_26813C5BC(void **a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4B0, &unk_2683D26E0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - v7;
  v9 = *a1;
  sub_268129504(0, &qword_28024D350, 0x277CD3E00);
  v10 = sub_2683CB0D8();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v10);
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v10);
  v11 = v9;
  v12 = sub_2683B9B90(0, 0, v9, v8, v6);
  sub_26813CC04();
  return v12;
}

uint64_t sub_26813C6E4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_268137D60;

  return sub_26812B5B0(a1);
}

unint64_t sub_26813C77C()
{
  result = qword_28024D480;
  if (!qword_28024D480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28024D468, &unk_2683D2650);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024D480);
  }

  return result;
}

uint64_t sub_26813C898()
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

uint64_t sub_26813C94C()
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

uint64_t sub_26813CA00(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_26813CA64()
{
  OUTLINED_FUNCTION_14();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_8_3(v1);

  return sub_26813BB88(v3, v4);
}

uint64_t sub_26813CAE8()
{
  OUTLINED_FUNCTION_13_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_1_3(v0);
  *v1 = v2;
  v1[1] = sub_2681342AC;
  v3 = OUTLINED_FUNCTION_0_8();

  return sub_26813BC30(v3, v4);
}

uint64_t sub_26813CB80()
{
  OUTLINED_FUNCTION_14();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_7_3(v1);

  return sub_26813BE50(v3);
}

unint64_t sub_26813CC04()
{
  result = qword_28024D4B8;
  if (!qword_28024D4B8)
  {
    sub_268129504(255, &qword_28024D350, 0x277CD3E00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024D4B8);
  }

  return result;
}

uint64_t sub_26813CC6C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_26813CCC8(void *a1)
{
  v1 = [a1 text];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_2683CFA78();

  return v3;
}

unint64_t sub_26813CD2C()
{
  result = qword_28024D4C8[0];
  if (!qword_28024D4C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28024D4C8);
  }

  return result;
}

uint64_t sub_26813CD80()
{
  OUTLINED_FUNCTION_14();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_8_3(v1);

  return sub_26813BEE8(v3, v4);
}

uint64_t sub_26813CE04()
{
  OUTLINED_FUNCTION_13_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_1_3(v0);
  *v1 = v2;
  v1[1] = sub_2681342AC;
  v3 = OUTLINED_FUNCTION_0_8();

  return sub_26813BF90(v3, v4);
}

uint64_t sub_26813CE9C()
{
  OUTLINED_FUNCTION_14();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_7_3(v1);

  return sub_26813C210(v3);
}

uint64_t sub_26813CF20()
{
  OUTLINED_FUNCTION_14();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_8_3(v1);

  return sub_26813C2A8(v3, v4);
}

uint64_t sub_26813CFA4()
{
  OUTLINED_FUNCTION_13_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_1_3(v0);
  *v1 = v2;
  v1[1] = sub_268133EC8;
  v3 = OUTLINED_FUNCTION_0_8();

  return sub_26813C440(v3, v4);
}

uint64_t sub_26813D03C()
{
  OUTLINED_FUNCTION_14();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_7_3(v1);

  return sub_26813C6E4(v3);
}

uint64_t sub_26813D0C0()
{
  OUTLINED_FUNCTION_14();
  v2 = v1;
  OUTLINED_FUNCTION_42();
  v4 = *(v3 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;

  v7 = *(v5 + 8);

  return v7(v2);
}

uint64_t sub_26813D1B4(uint64_t a1)
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

uint64_t sub_26813D23C(uint64_t result, unsigned int a2, uint64_t a3)
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

void sub_26813D394(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
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

uint64_t get_enum_tag_for_layout_string_12SiriNotebook29ResponseFrameworkFeatureStateO(uint64_t a1)
{
  if ((*(a1 + 40) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 40) & 3;
  }
}

uint64_t sub_26813D5E4(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 224))
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

uint64_t sub_26813D624(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 216) = 0;
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
      *(result + 224) = 1;
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

    *(result + 224) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void OUTLINED_FUNCTION_4_3()
{
  *(v1 + 112) = 0;
  *(v1 + 120) = v0;
  *(v1 + 128) = v3;
  *(v1 + 136) = 1;
  *(v1 + 137) = *(v5 - 120);
  *(v1 + 140) = *(v5 - 117);
  *(v1 + 144) = sub_2683779DC;
  *(v1 + 152) = 0;
  *(v1 + 160) = v2;
  *(v1 + 168) = v4;
}

void *OUTLINED_FUNCTION_11_3(uint64_t a1)
{
  *(v1 + 528) = a1;

  return memcpy((v2 + 8), (v1 + 536), 0xB0uLL);
}

uint64_t OUTLINED_FUNCTION_18_2()
{
  v2 = *(v0 + 32);

  return sub_2683CC9B8();
}

uint64_t OUTLINED_FUNCTION_19_1()
{

  return sub_26813CA00(v1 + 104, v0 + 400);
}

uint64_t OUTLINED_FUNCTION_23_2@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v3 - 96) = a1;
  *(v3 - 88) = a2;
  *(v3 - 120) = v2;

  return sub_26813CA00(v3 - 120, v3 - 160);
}

uint64_t OUTLINED_FUNCTION_24_2()
{

  return sub_2681340E8(v0 + 536, v0 + 40, v1, v2);
}

uint64_t *OUTLINED_FUNCTION_25_2()
{
  result = __swift_project_boxed_opaque_existential_1(*(v0 + 24), *(*(v0 + 24) + 24));
  v2 = *result;
  return result;
}

uint64_t OUTLINED_FUNCTION_26_1(uint64_t a1, uint64_t a2)
{
  *(v3 + 32) = a1;
  *(v3 + 40) = a2;
  v4 = *__swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));

  return type metadata accessor for CreateNoteCATPatternsExecutor(0);
}

uint64_t sub_26813D8DC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  sub_26813CA00((v4 + 1), v16);
  sub_26813CA00((v4 + 6), v15);
  v10 = v4[11];
  type metadata accessor for AnnounceReminderFlow();
  v11 = swift_allocObject();
  sub_26813D9D8(v9, v16, v15, v10, a1, a2, a3, a4);
  *&v16[0] = v11;
  sub_26813F218();

  v12 = a1;
  v13 = sub_2683CBF38();

  return v13;
}

uint64_t sub_26813D9D8(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 144) = 0;
  *(v8 + 16) = a1;
  sub_268128148(a2, v8 + 24);
  sub_268128148(a3, v8 + 64);
  *(v8 + 104) = a4;
  *(v8 + 112) = a5;
  *(v8 + 120) = a6;
  *(v8 + 128) = a7;
  *(v8 + 136) = a8;
  return v8;
}

uint64_t sub_26813DA58()
{
  OUTLINED_FUNCTION_14();
  v1[20] = v2;
  v1[21] = v0;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D400, &qword_2683D2460) - 8) + 64);
  v1[22] = OUTLINED_FUNCTION_15_1();
  v4 = sub_2683CCC98();
  v1[23] = v4;
  OUTLINED_FUNCTION_3_1(v4);
  v1[24] = v5;
  v7 = *(v6 + 64);
  v1[25] = OUTLINED_FUNCTION_15_1();
  v8 = sub_2683CC528();
  v1[26] = v8;
  OUTLINED_FUNCTION_3_1(v8);
  v1[27] = v9;
  v11 = *(v10 + 64);
  v1[28] = OUTLINED_FUNCTION_15_1();
  v12 = sub_2683CC598();
  v1[29] = v12;
  OUTLINED_FUNCTION_3_1(v12);
  v1[30] = v13;
  v15 = *(v14 + 64);
  v1[31] = OUTLINED_FUNCTION_15_1();
  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_26813DBC8()
{
  v25 = v0;
  v1 = *(v0[21] + 112);
  v0[32] = v1;
  v2 = [v1 title];
  v3 = [v2 spokenPhrase];

  v4 = sub_2683CFA78();
  v6 = v5;

  v7 = [v1 identifier];
  if (v7)
  {
    v8 = v7;
    v9 = sub_2683CFA78();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  if (qword_28024C8E0 != -1)
  {
    swift_once();
  }

  v12 = sub_2683CF7E8();
  v0[33] = __swift_project_value_buffer(v12, qword_28027C958);

  v13 = sub_2683CF7C8();
  v14 = sub_2683CFE98();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v15 = 136315394;
    v16 = sub_2681610A0(v4, v6, &v24);

    *(v15 + 4) = v16;
    *(v15 + 12) = 2080;
    if (v11)
    {
      v17 = v9;
    }

    else
    {
      v17 = 7104878;
    }

    if (v11)
    {
      v18 = v11;
    }

    else
    {
      v18 = 0xE300000000000000;
    }

    v19 = sub_2681610A0(v17, v18, &v24);

    *(v15 + 14) = v19;
    _os_log_impl(&dword_2680EB000, v13, v14, "[AnnounceReminderFlow] Announcing reminder: '%s' with id: '%s'", v15, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();
  }

  else
  {
  }

  v20 = swift_task_alloc();
  v0[34] = v20;
  *v20 = v0;
  v20[1] = sub_26813DE94;
  v21 = v0[31];
  v22 = v0[21];

  return sub_26813E8B0();
}

uint64_t sub_26813DE94()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v3 = *(v2 + 272);
  v4 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;
  *(v6 + 280) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_26813DF94()
{
  v2 = v0[30];
  v1 = v0[31];
  v3 = v0[29];
  v4 = v0[21];
  v5 = sub_26813EBE4();
  v0[36] = v5;
  (*(v2 + 8))(v1, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D568, &qword_2683D2A18);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2683D2890;
  *(inited + 32) = sub_26813E750();
  *(inited + 40) = v5;
  v32 = MEMORY[0x277D84F90];
  v7 = v5;
  for (i = 0; i != 2; ++i)
  {
    v9 = *(inited + 8 * i + 32);
    if (v9)
    {
      v10 = v9;
      MEMORY[0x26D616770]();
      if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2683CFCD8();
      }

      sub_2683CFD08();
    }
  }

  v11 = v0[32];
  v12 = v0[27];
  v13 = v0[28];
  v14 = v0[26];
  v31 = v0[24];
  v29 = v0[25];
  v30 = v0[23];
  v15 = v0[21];
  v16 = v0[22];
  swift_setDeallocating();
  sub_2681F5558();
  v17 = v15[15];
  v18 = v15[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D570, &qword_2683D2A20);
  v19 = swift_initStackObject();
  *(v19 + 16) = xmmword_2683D1EC0;
  v20 = sub_26813F368();
  *(v19 + 32) = v11;
  *(v19 + 40) = v20;
  v21 = v11;
  sub_268168378();
  swift_setDeallocating();
  sub_2681F556C();
  (*(v12 + 16))(v16, v13, v14);
  __swift_storeEnumTagSinglePayload(v16, 0, 1, v14);
  sub_2683CCC78();
  v22 = v15[6];
  v23 = v15[7];
  __swift_project_boxed_opaque_existential_1(v15 + 3, v22);
  v24 = MEMORY[0x277D5C1D8];
  v0[17] = v30;
  v0[18] = v24;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 14);
  (*(v31 + 16))(boxed_opaque_existential_0, v29, v30);
  v26 = *(MEMORY[0x277D5BF40] + 4);
  v27 = swift_task_alloc();
  v0[37] = v27;
  *v27 = v0;
  v27[1] = sub_26813E268;

  return MEMORY[0x2821BB5D0](v0 + 14, v22, v23);
}

uint64_t sub_26813E268()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  v4 = *(v2 + 296);
  v5 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;
  *(v3 + 304) = v0;

  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_0((v3 + 112));
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_26813E370()
{
  OUTLINED_FUNCTION_12_2();
  OUTLINED_FUNCTION_11_4();
  v4 = *(v1 + 168);

  (*(v3 + 8))(v0, v2);
  v6 = OUTLINED_FUNCTION_5_3();
  v7(v6);
  *(v4 + 144) = 1;
  OUTLINED_FUNCTION_1_4();

  OUTLINED_FUNCTION_40();

  return v8();
}

uint64_t sub_26813E438()
{
  OUTLINED_FUNCTION_12_2();
  v14 = v0;
  v1 = *(v0 + 280);
  OUTLINED_FUNCTION_8_4();
  v2 = sub_2683CF7C8();
  v3 = sub_2683CFE78();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13 = v5;
    OUTLINED_FUNCTION_14_4(4.8751e-34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D3E0, &qword_2683D2360);
    v6 = sub_2683CFAD8();
    v8 = sub_2681610A0(v6, v7, &v13);

    *(v4 + 4) = v8;
    OUTLINED_FUNCTION_13_4(&dword_2680EB000, v9, v10, "[AnnounceReminderFlow] Failed announcing reminder with error: %{public}s");
    __swift_destroy_boxed_opaque_existential_0(v5);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();
  }

  else
  {
  }

  OUTLINED_FUNCTION_1_4();

  OUTLINED_FUNCTION_40();

  return v11();
}

uint64_t sub_26813E5A8()
{
  OUTLINED_FUNCTION_12_2();
  v20 = v1;
  OUTLINED_FUNCTION_11_4();

  (*(v3 + 8))(v0, v2);
  v5 = OUTLINED_FUNCTION_5_3();
  v6(v5);
  __swift_destroy_boxed_opaque_existential_0((v1 + 112));
  v7 = *(v1 + 304);
  OUTLINED_FUNCTION_8_4();
  v8 = sub_2683CF7C8();
  v9 = sub_2683CFE78();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    OUTLINED_FUNCTION_14_4(4.8751e-34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D3E0, &qword_2683D2360);
    v12 = sub_2683CFAD8();
    v14 = sub_2681610A0(v12, v13, &v19);

    *(v10 + 4) = v14;
    OUTLINED_FUNCTION_13_4(&dword_2680EB000, v15, v16, "[AnnounceReminderFlow] Failed announcing reminder with error: %{public}s");
    __swift_destroy_boxed_opaque_existential_0(v11);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();
  }

  else
  {
  }

  OUTLINED_FUNCTION_1_4();

  OUTLINED_FUNCTION_40();

  return v17();
}

id sub_26813E750()
{
  if (*(v0 + 136))
  {
    return 0;
  }

  else
  {
    return sub_26813E778();
  }
}

id sub_26813E778()
{
  v0 = sub_2683CB528();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2681D9A00();
  if (v4)
  {
    v5 = v4;
    sub_2683CB518();
    sub_2681D9B5C(128, v3, v5);

    v6 = OUTLINED_FUNCTION_5_3();
    v7(v6);
  }

  v8 = [objc_allocWithZone(MEMORY[0x277D47AE8]) init];
  v9 = *MEMORY[0x277D48758];
  v10 = sub_2683CFA78();
  sub_26813F2FC(v10, v11, v8, &selRef_setNotificationType_);
  return v8;
}

uint64_t sub_26813E8B0()
{
  OUTLINED_FUNCTION_14();
  v1[2] = v2;
  v1[3] = v0;
  v3 = *(*(sub_2683CB668() - 8) + 64);
  v1[4] = OUTLINED_FUNCTION_15_1();
  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_26813E930()
{
  OUTLINED_FUNCTION_12_2();
  v2 = v0[3];
  v1 = v0[4];
  v3 = v2[2];
  type metadata accessor for NotebookReminderConcept(0);
  v4 = v2[14];
  v5 = v2[12];
  __swift_project_boxed_opaque_existential_1(v2 + 8, v2[11]);
  v6 = v4;
  sub_2683CC088();
  v7 = sub_268346118(v6, v1);
  v0[5] = v7;
  v8 = v2[17];
  v9 = swift_task_alloc();
  v0[6] = v9;
  *v9 = v0;
  v9[1] = sub_26813EA50;
  v10 = v0[2];

  return sub_2682B2288(v10, v7, *&v8, 0);
}

uint64_t sub_26813EA50()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  v4 = v2[6];
  v5 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;
  v3[7] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {
    v11 = v3[4];
    v10 = v3[5];

    OUTLINED_FUNCTION_40();

    return v12();
  }
}

uint64_t sub_26813EB80()
{
  OUTLINED_FUNCTION_14();
  v2 = v0[4];
  v1 = v0[5];

  OUTLINED_FUNCTION_40();
  v4 = v0[7];

  return v3();
}

id sub_26813EBE4()
{
  v1 = *(v0 + 104);
  v2 = sub_2683CC1A8();
  v3 = [objc_allocWithZone(MEMORY[0x277D479E8]) init];
  if (v2 >> 62)
  {
    sub_268129504(0, &qword_28024D560, 0x277D47140);

    v4 = sub_2683D0398();
  }

  else
  {

    sub_2683D05C8();
    sub_268129504(0, &qword_28024D560, 0x277D47140);
    v4 = v2;
  }

  sub_26813F26C(v4, v3);
  v5 = *MEMORY[0x277D48C18];
  v6 = sub_2683CFA78();
  sub_26813F2FC(v6, v7, v3, &selRef_setDialogPhase_);
  return v3;
}

uint64_t sub_26813ECF0()
{
  type metadata accessor for AnnounceReminderFlow();
  sub_26813F218();
  return sub_2683CBF48();
}

uint64_t sub_26813ED4C()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_0((v0 + 24));
  __swift_destroy_boxed_opaque_existential_0((v0 + 64));
  v2 = *(v0 + 104);

  v3 = *(v0 + 128);

  return v0;
}

uint64_t sub_26813ED94()
{
  sub_26813ED4C();

  return MEMORY[0x2821FE8D8](v0, 145, 7);
}

uint64_t getEnumTagSinglePayload for CreateNote.Parameter(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AnnounceReminderFlow.ExitValue(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_26813EF54()
{
  result = qword_28024D550;
  if (!qword_28024D550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024D550);
  }

  return result;
}

uint64_t sub_26813EFA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277D5B890] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_26813F058;

  return MEMORY[0x2821BA650](a1, a2, a3);
}

uint64_t sub_26813F058()
{
  OUTLINED_FUNCTION_14();
  v2 = v1;
  OUTLINED_FUNCTION_42();
  v4 = *(v3 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;

  v7 = *(v5 + 8);

  return v7(v2);
}

uint64_t sub_26813F168()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_268133EC8;

  return sub_26813DA58();
}

unint64_t sub_26813F218()
{
  result = qword_28024D558;
  if (!qword_28024D558)
  {
    type metadata accessor for AnnounceReminderFlow();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024D558);
  }

  return result;
}

void sub_26813F26C(uint64_t a1, void *a2)
{
  sub_268129504(0, &qword_28024D560, 0x277D47140);
  v3 = sub_2683CFC98();

  [a2 setViews_];
}

void sub_26813F2FC(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = sub_2683CFA68();

  [a3 *a4];
}

unint64_t sub_26813F368()
{
  result = qword_28024D578;
  if (!qword_28024D578)
  {
    sub_268129504(255, &qword_280253310, 0x277CD4220);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024D578);
  }

  return result;
}

uint64_t sub_26813F3D8(uint64_t *a1, int a2)
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

uint64_t sub_26813F418(uint64_t result, int a2, int a3)
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

uint64_t OUTLINED_FUNCTION_1_4()
{
  v2 = v0[31];
  v3 = v0[28];
  v4 = v0[25];
  v5 = v0[22];
  v6 = v0[20];

  return sub_2683CC3F8();
}

id OUTLINED_FUNCTION_8_4()
{
  v3 = *(v1 + 264);
  *(*(v1 + 168) + 144) = 2;

  return v0;
}

void OUTLINED_FUNCTION_11_4()
{
  v1 = v0[36];
  v3 = v0[27];
  v2 = v0[28];
  v5 = v0[25];
  v4 = v0[26];
  v6 = v0[23];
  v7 = v0[24];
}

void OUTLINED_FUNCTION_13_4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

id OUTLINED_FUNCTION_14_4(float a1)
{
  *v3 = a1;
  *(v2 + 152) = v1;

  return v1;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_26813F544(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_26813F584(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_26813F5D4@<X0>(void (*a1)(void *__return_ptr, char *, uint64_t, uint64_t)@<X4>, uint64_t a2@<X5>, uint64_t a3@<X8>)
{
  v23 = a2;
  v24 = a1;
  v25 = a3;
  v3 = sub_2683CCC18();
  v4 = OUTLINED_FUNCTION_0_3(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2683CC748();
  v12 = OUTLINED_FUNCTION_0_3(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D590, &qword_2683D2C00);
  sub_2683CC9E8();
  v19 = sub_2683CC738();
  v21 = v20;
  (*(v14 + 8))(v18, v11);
  sub_2683CCB88();
  v24(v26, v10, v19, v21);

  (*(v6 + 8))(v10, v3);
  sub_268138A04();
  return sub_2681433DC(v26, &qword_28024D458, &unk_2683D2C60);
}

uint64_t sub_26813F7B0()
{
  OUTLINED_FUNCTION_14();
  v0[48] = v1;
  v0[49] = v2;
  v0[46] = v3;
  v0[47] = v4;
  v0[45] = v5;
  v6 = sub_2683CCBA8();
  v0[50] = v6;
  OUTLINED_FUNCTION_3_1(v6);
  v0[51] = v7;
  v9 = *(v8 + 64);
  v0[52] = OUTLINED_FUNCTION_15_1();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5B0, &qword_2683D97C0);
  OUTLINED_FUNCTION_23(v10);
  v12 = *(v11 + 64);
  v0[53] = OUTLINED_FUNCTION_15_1();
  v13 = sub_2683CCC18();
  v0[54] = v13;
  OUTLINED_FUNCTION_3_1(v13);
  v0[55] = v14;
  v16 = *(v15 + 64);
  v0[56] = OUTLINED_FUNCTION_15_1();
  v17 = sub_2683CC748();
  v0[57] = v17;
  OUTLINED_FUNCTION_3_1(v17);
  v0[58] = v18;
  v20 = *(v19 + 64);
  v0[59] = OUTLINED_FUNCTION_55();
  v0[60] = swift_task_alloc();
  v0[61] = swift_task_alloc();
  v21 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v21, v22, v23);
}

uint64_t sub_26813F938()
{
  v101 = v0;
  v1 = *(v0 + 488);
  v2 = *(v0 + 456);
  v3 = *(v0 + 464);
  v5 = *(v0 + 440);
  v4 = *(v0 + 448);
  v96 = *(v0 + 392);
  v98 = *(v0 + 432);
  v95 = *(v0 + 384);
  v7 = *(v0 + 368);
  v6 = *(v0 + 376);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D590, &qword_2683D2C00);
  sub_2683CC9E8();
  v8 = sub_2683CC738();
  v10 = v9;
  v11 = *(v3 + 8);
  v11(v1, v2);
  v12 = v11;
  sub_2683CCB88();
  v95(v4, v8, v10);

  (*(v5 + 8))(v4, v98);
  sub_2681340E8(v0 + 16, v0 + 88, &qword_28024D458, &unk_2683D2C60);
  v13 = *(v0 + 88);
  *(v0 + 496) = v13;
  if (v13 == 2)
  {
    sub_268143388(v0 + 88);
    goto LABEL_5;
  }

  if (v13 == 3)
  {
    sub_2681433DC(v0 + 88, &qword_28024D458, &unk_2683D2C60);
LABEL_5:
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v15 = *(v0 + 408);
    v14 = *(v0 + 416);
    v16 = *(v0 + 400);
    v17 = *(v0 + 368);
    v18 = sub_2683CF7E8();
    __swift_project_value_buffer(v18, qword_28027C958);
    v19 = OUTLINED_FUNCTION_32_1();
    v20(v19);
    v21 = sub_2683CF7C8();
    v22 = sub_2683CFE78();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = *(v0 + 448);
      v24 = *(v0 + 432);
      v26 = *(v0 + 408);
      v25 = *(v0 + 416);
      v27 = *(v0 + 400);
      swift_slowAlloc();
      v28 = OUTLINED_FUNCTION_34_1();
      v100[0] = v28;
      *v2 = 136315138;
      sub_2683CCB88();
      OUTLINED_FUNCTION_44();
      sub_2683CFAD8();
      (*(v26 + 8))(v25, v27);
      v29 = OUTLINED_FUNCTION_44();
      v32 = sub_2681610A0(v29, v30, v31);

      *(v2 + 4) = v32;
      _os_log_impl(&dword_2680EB000, v21, v22, "[SnoozeTasks NeedsConfirmation] Did not get ConfirmationTask from parse: %s", v2, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v28);
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_38();
    }

    else
    {
      v34 = *(v0 + 408);
      v33 = *(v0 + 416);
      v35 = *(v0 + 400);

      (*(v34 + 8))(v33, v35);
    }

    sub_26812C6B8();
    swift_allocError();
    *v36 = 0u;
    *(v36 + 16) = 0u;
    *(v36 + 32) = 4;
    swift_willThrow();
    goto LABEL_16;
  }

  v37 = *(v0 + 480);
  v38 = *(v0 + 456);
  v39 = *(v0 + 376);
  v40 = *(v0 + 112);
  *(v0 + 160) = *(v0 + 96);
  *(v0 + 176) = v40;
  *(v0 + 192) = *(v0 + 128);
  *(v0 + 201) = *(v0 + 137);
  sub_2683CC9E8();
  v41 = sub_2683CC738();
  v43 = v42;
  v12(v37, v38);

  v44 = sub_268201068();
  if (v44 == 2)
  {
    sub_26812C6B8();
    v45 = swift_allocError();
    *v46 = v41;
    v46[1] = v43;
    OUTLINED_FUNCTION_16_1(v45, v46);
    sub_2681433DC(v0 + 160, &qword_28024D460, &qword_2683D5050);
LABEL_16:
    sub_2681433DC(v0 + 16, &qword_28024D458, &unk_2683D2C60);
    v58 = *(v0 + 480);
    v57 = *(v0 + 488);
    v59 = *(v0 + 472);
    v60 = *(v0 + 448);
    v62 = *(v0 + 416);
    v61 = *(v0 + 424);

    OUTLINED_FUNCTION_40();
LABEL_17:

    return v63();
  }

  v47 = v44;
  v48 = *(v0 + 376);

  v49 = sub_2683CC9C8();
  if (v13)
  {
    v50 = sub_2682DD8C4(v47 & 1, 0, 1);
  }

  else
  {
    v51 = *(v0 + 472);
    v99 = *(v0 + 456);
    v52 = *(v0 + 376);
    v53 = sub_2683CC9D8();
    v54 = [v53 itemToConfirm];

    sub_2683D0038();
    swift_unknownObjectRelease();
    sub_2683CC9E8();
    v55 = sub_2683CC728();
    LOBYTE(v53) = v56;
    v12(v51, v99);
    v50 = sub_2682DD960(v47 & 1, (v0 + 328), v55, v53 & 1);
    __swift_destroy_boxed_opaque_existential_0((v0 + 328));
  }

  *(v0 + 504) = v50;
  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  v65 = sub_2683CF7E8();
  *(v0 + 512) = __swift_project_value_buffer(v65, qword_28027C958);
  v66 = sub_2683CF7C8();
  v67 = sub_2683CFE98();
  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    v100[0] = swift_slowAlloc();
    *v68 = 136315394;
    *(v0 + 81) = v13 & 1;
    v69 = sub_2683CFAD8();
    v71 = sub_2681610A0(v69, v70, v100);

    *(v68 + 4) = v71;
    *(v68 + 12) = 2080;
    v72 = v50;
    v73 = [v72 description];
    v74 = sub_2683CFA78();
    v76 = v75;

    v77 = sub_2681610A0(v74, v76, v100);

    *(v68 + 14) = v77;
    _os_log_impl(&dword_2680EB000, v66, v67, "[SnoozeTasks NeedsConfirmation] Parsed response as %s. Updated intent: %s", v68, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();
  }

  sub_2681340E8(v0 + 160, v0 + 224, &qword_28024D460, &qword_2683D5050);
  v78 = *(v0 + 280);
  if (v78 != 1)
  {
    if (v78 == 255)
    {
      sub_2681433DC(v0 + 224, &qword_28024D460, &qword_2683D5050);
    }

    else
    {
      sub_26813A1A0(v0 + 224);
    }

    OUTLINED_FUNCTION_29_1();
    v85 = *(v0 + 360);
    v86 = sub_2683CC758();
    OUTLINED_FUNCTION_1(v86);
    v88 = *(v87 + 104);
    v89 = OUTLINED_FUNCTION_28_1();
    v90(v89);
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v91, v92, v93, v86);
    sub_268143430();
    v94 = v50;
    OUTLINED_FUNCTION_0_0();
    sub_2683CC8D8();
    sub_2681433DC(v0 + 160, &qword_28024D460, &qword_2683D5050);
    sub_2681433DC(v0 + 16, &qword_28024D458, &unk_2683D2C60);

    OUTLINED_FUNCTION_7_4();
    goto LABEL_17;
  }

  sub_268128148((v0 + 224), v0 + 288);
  v79 = *(v0 + 312);
  v80 = *(v0 + 320);
  __swift_project_boxed_opaque_existential_1((v0 + 288), v79);
  v81 = *(v80 + 16);
  v82 = v50;
  v97 = (v81 + *v81);
  v83 = v81[1];
  v84 = swift_task_alloc();
  *(v0 + 520) = v84;
  *v84 = v0;
  v84[1] = sub_268140234;

  return v97(1, v79, v80);
}

uint64_t sub_268140234()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_26();
  *v2 = v1;
  v4 = *(v3 + 520);
  *v2 = *v0;
  *(v1 + 528) = v5;

  v6 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_268140320()
{
  v29 = v0;
  v1 = v0[66];
  v2 = v0[63];
  v3 = v0[64];
  v4 = sub_2682DDA40(v1);

  v5 = v4;
  v6 = v5;
  v7 = sub_2683CF7C8();
  v8 = sub_2683CFE98();

  if (os_log_type_enabled(v7, v8))
  {
    swift_slowAlloc();
    v9 = OUTLINED_FUNCTION_34_1();
    v28 = v9;
    *v4 = 136315138;
    v10 = v6;
    v11 = [v10 description];
    v12 = sub_2683CFA78();
    v14 = v13;

    v15 = sub_2681610A0(v12, v14, &v28);

    *(v4 + 1) = v15;
    _os_log_impl(&dword_2680EB000, v7, v8, "[SnoozeTasks NeedsConfirmation] Merged intent from secondary task: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();
  }

  else
  {
  }

  __swift_destroy_boxed_opaque_existential_0(v0 + 36);
  OUTLINED_FUNCTION_29_1();
  v16 = v0[45];
  v17 = sub_2683CC758();
  OUTLINED_FUNCTION_1(v17);
  v19 = *(v18 + 104);
  v20 = OUTLINED_FUNCTION_28_1();
  v21(v20);
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v17);
  sub_268143430();
  v25 = v6;
  OUTLINED_FUNCTION_0_0();
  sub_2683CC8D8();
  sub_2681433DC((v0 + 20), &qword_28024D460, &qword_2683D5050);
  sub_2681433DC((v0 + 2), &qword_28024D458, &unk_2683D2C60);

  OUTLINED_FUNCTION_7_4();

  return v26();
}

uint64_t sub_2681405A0()
{
  OUTLINED_FUNCTION_14();
  v0[32] = v1;
  v0[33] = v2;
  v0[30] = v3;
  v0[31] = v4;
  v0[28] = v5;
  v0[29] = v6;
  v0[27] = v7;
  v8 = type metadata accessor for Snippet();
  v0[34] = v8;
  OUTLINED_FUNCTION_23(v8);
  v10 = *(v9 + 64);
  v0[35] = OUTLINED_FUNCTION_55();
  v0[36] = swift_task_alloc();
  v0[37] = swift_task_alloc();
  v0[38] = swift_task_alloc();
  v11 = sub_2683CC9A8();
  v0[39] = v11;
  OUTLINED_FUNCTION_3_1(v11);
  v0[40] = v12;
  v14 = *(v13 + 64);
  v0[41] = OUTLINED_FUNCTION_15_1();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E760, &unk_2683D2BF0);
  OUTLINED_FUNCTION_23(v15);
  v17 = *(v16 + 64);
  v0[42] = OUTLINED_FUNCTION_15_1();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D588, &unk_2683D8DB0);
  OUTLINED_FUNCTION_23(v18);
  v20 = *(v19 + 64);
  v0[43] = OUTLINED_FUNCTION_15_1();
  v21 = sub_2683CC138();
  v0[44] = v21;
  OUTLINED_FUNCTION_3_1(v21);
  v0[45] = v22;
  v24 = *(v23 + 64);
  v0[46] = OUTLINED_FUNCTION_55();
  v0[47] = swift_task_alloc();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D400, &qword_2683D2460);
  OUTLINED_FUNCTION_23(v25);
  v27 = *(v26 + 64);
  v0[48] = OUTLINED_FUNCTION_15_1();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E770, &qword_2683D80D0);
  OUTLINED_FUNCTION_3_1(v28);
  v0[49] = v29;
  v0[50] = *(v30 + 64);
  v0[51] = OUTLINED_FUNCTION_55();
  v0[52] = swift_task_alloc();
  v0[53] = swift_task_alloc();
  v0[54] = swift_task_alloc();
  v0[55] = swift_task_alloc();
  v0[56] = swift_task_alloc();
  v0[57] = swift_task_alloc();
  v0[58] = swift_task_alloc();
  v31 = sub_2683CC528();
  v0[59] = v31;
  OUTLINED_FUNCTION_3_1(v31);
  v0[60] = v32;
  v34 = *(v33 + 64);
  v0[61] = OUTLINED_FUNCTION_15_1();
  v35 = sub_2683CC748();
  v0[62] = v35;
  OUTLINED_FUNCTION_3_1(v35);
  v0[63] = v36;
  v38 = *(v37 + 64);
  v0[64] = OUTLINED_FUNCTION_55();
  v0[65] = swift_task_alloc();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D590, &qword_2683D2C00);
  v0[66] = v39;
  OUTLINED_FUNCTION_3_1(v39);
  v0[67] = v40;
  v42 = *(v41 + 64);
  v0[68] = OUTLINED_FUNCTION_15_1();
  v43 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v43, v44, v45);
}

uint64_t sub_268140920()
{
  v69 = v0;
  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  v2 = v0[68];
  v3 = v0[67];
  v4 = v0[66];
  v5 = v0[29];
  v6 = sub_2683CF7E8();
  __swift_project_value_buffer(v6, qword_28027C958);
  v7 = OUTLINED_FUNCTION_32_1();
  v8(v7);
  v9 = sub_2683CF7C8();
  v10 = sub_2683CFE98();
  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[68];
  v13 = v0[67];
  v14 = v0[66];
  if (v11)
  {
    v15 = v0[65];
    v16 = v0[63];
    v64 = v0[62];
    swift_slowAlloc();
    v66 = OUTLINED_FUNCTION_34_1();
    v68 = v66;
    *v1 = 136315138;
    v65 = v10;
    sub_2683CC9E8();
    v17 = sub_2683CC738();
    v19 = v18;
    (*(v16 + 8))(v15, v64);
    v20 = *(v13 + 8);
    v21 = OUTLINED_FUNCTION_44();
    v22(v21);
    v23 = sub_2681610A0(v17, v19, &v68);

    *(v1 + 4) = v23;
    _os_log_impl(&dword_2680EB000, v9, v65, "[SnoozeTasks NeedsConfirmation] making prompt for confirming %s", v1, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v66);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();
  }

  else
  {

    v24 = *(v13 + 8);
    v25 = OUTLINED_FUNCTION_44();
    v26(v25);
  }

  v27 = v0[66];
  v29 = v0[63];
  v28 = v0[64];
  v30 = v0[62];
  v31 = v0[29];
  sub_2683CC9E8();
  v32 = sub_2683CC738();
  v34 = v33;
  v35 = *(v29 + 8);
  v36 = OUTLINED_FUNCTION_19_2();
  v37(v36);

  OUTLINED_FUNCTION_0_0();
  v38 = sub_268201068();
  if (v38 == 2)
  {
    sub_26812C6B8();
    v67 = swift_allocError();
    *v39 = v32;
    v39[1] = v34;
    OUTLINED_FUNCTION_16_1(v67, v39);
    v40 = v0[68];
    v41 = v0[65];
    v42 = v0[64];
    v43 = v0[61];
    v45 = v0[57];
    v44 = v0[58];
    v47 = v0[55];
    v46 = v0[56];
    v49 = v0[53];
    v48 = v0[54];
    OUTLINED_FUNCTION_13_5();

    OUTLINED_FUNCTION_40();

    return v50();
  }

  else
  {
    v52 = v38;
    v53 = v0[66];
    v54 = v0[61];
    v55 = v0[29];

    v0[5] = &type metadata for SnoozeTasks.Parameter;
    v0[6] = &off_2879048D8;
    *(v0 + 16) = v52 & 1;
    sub_2681686A4(v0 + 2);
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    v56 = sub_2683CC9D8();
    v57 = [v56 confirmationReason];

    v58 = swift_task_alloc();
    v0[69] = v58;
    *v58 = v0;
    v58[1] = sub_268140D60;
    v59 = v0[32];
    v60 = v0[33];
    v61 = v0[30];
    v62 = v0[31];
    v63 = v0[28];

    return sub_268142190(v63, v52 & 1, v57, v61);
  }
}

uint64_t sub_268140D60()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_26();
  *v3 = v2;
  v5 = *(v4 + 552);
  *v3 = *v1;
  *(v2 + 560) = v6;
  *(v2 + 568) = v0;

  if (v0)
  {
    v7 = sub_26814203C;
  }

  else
  {
    v7 = sub_268140E6C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

void sub_268140E6C()
{
  v1 = v0[70];
  v3 = v0[60];
  v2 = v0[61];
  v4 = v0[59];
  v5 = v0[57];
  v7 = v0[47];
  v6 = v0[48];
  v8 = v0[43];
  v94 = v0[42];
  v9 = v0[34];
  __swift_storeEnumTagSinglePayload(v0[58], 1, 1, v9);
  *v5 = 1541;
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v9);
  (*(v3 + 16))(v6, v2, v4);
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v4);
  sub_2683CC118();
  v16 = sub_2683CED08();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v16);
  v17 = sub_2683CC1D8();
  __swift_storeEnumTagSinglePayload(v94, 1, 1, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAB0, &unk_2683D2C10);
  v18 = swift_allocObject();
  v0[72] = v18;
  *(v18 + 16) = xmmword_2683D2250;
  *(v18 + 32) = v1;
  v19 = v1;
  if (sub_2683ABE58(v18))
  {
    sub_2683ABE60(0, (v18 & 0xC000000000000001) == 0, v18);
    if ((v18 & 0xC000000000000001) != 0)
    {
      v20 = MEMORY[0x26D616C90](0, v18);
    }

    else
    {
      v20 = *(v18 + 32);
    }

    v21 = v20;
    v22 = [v20 catId];

    v90 = sub_2683CFA78();
    v93 = v23;
  }

  else
  {
    v90 = 0;
    v93 = 0;
  }

  v24 = v0[58];
  v89 = v24;
  v26 = v0[55];
  v25 = v0[56];
  v28 = v0[49];
  v27 = v0[50];
  v84 = v0[47];
  v85 = v0[48];
  v29 = v0[45];
  v82 = v0[46];
  v83 = v0[44];
  v86 = v0[43];
  v87 = v0[42];
  v88 = v0[41];
  v91 = v0[34];
  v92 = v0[54];
  v30 = v0[31];
  sub_2681340E8(v0[57], v25, &qword_28024E770, &qword_2683D80D0);
  sub_2681340E8(v24, v26, &qword_28024E770, &qword_2683D80D0);
  v31 = *(v28 + 80);
  v32 = (v31 + 24) & ~v31;
  v33 = (v27 + v31 + v32) & ~v31;
  v34 = swift_allocObject();
  v0[73] = v34;
  *(v34 + 16) = v30;
  sub_2681430AC(v25, v34 + v32);
  sub_2681430AC(v26, v34 + v33);
  (*(v29 + 16))(v82, v84, v83);
  v35 = swift_task_alloc();
  *(v35 + 16) = 0;
  *(v35 + 24) = 0;
  *(v35 + 32) = 0;
  *(v35 + 40) = v90;
  *(v35 + 48) = v93;
  *(v35 + 56) = v85;
  *(v35 + 64) = 257;
  *(v35 + 72) = sub_26814311C;
  *(v35 + 80) = v34;
  *(v35 + 88) = 0;
  *(v35 + 96) = v86;
  *(v35 + 104) = 2;
  *(v35 + 112) = v87;

  sub_2683CC8E8();

  sub_2681340E8(v89, v92, &qword_28024E770, &qword_2683D80D0);
  if (__swift_getEnumTagSinglePayload(v92, 1, v91) == 1)
  {
    v36 = v0 + 54;
  }

  else
  {
    v37 = v0[57];
    v38 = v0[53];
    v39 = v0[34];
    sub_26814320C(v0[54], v0[38]);
    sub_2681340E8(v37, v38, &qword_28024E770, &qword_2683D80D0);
    if (__swift_getEnumTagSinglePayload(v38, 1, v39) != 1)
    {
      v62 = v0[37];
      v63 = v0[38];
      v64 = v0[34];
      sub_26814320C(v0[53], v62);
      v0[20] = v64;
      v65 = sub_268143270();
      v0[21] = v65;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 17);
      sub_2681432C8(v63, boxed_opaque_existential_0);
      v0[25] = v64;
      v0[26] = v65;
      v67 = __swift_allocate_boxed_opaque_existential_0(v0 + 22);
      sub_2681432C8(v62, v67);
      OUTLINED_FUNCTION_15_4(MEMORY[0x277D5BD30]);
      OUTLINED_FUNCTION_10_2();
      v0[74] = v68;
      *v68 = v69;
      v68[1] = sub_26814154C;
      v70 = v0[41];
      v71 = v0[31];
      v72 = v0[27];
      OUTLINED_FUNCTION_24_3();

      __asm { BR              X5 }
    }

    v36 = v0 + 53;
    sub_26814332C(v0[38]);
  }

  v40 = *v36;
  v41 = v0[58];
  v42 = v0[52];
  v43 = v0[34];
  sub_2681433DC(v40, &qword_28024E770, &qword_2683D80D0);
  sub_2681340E8(v41, v42, &qword_28024E770, &qword_2683D80D0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v42, 1, v43);
  v45 = v0[52];
  v46 = v0[34];
  if (EnumTagSinglePayload == 1)
  {
    v47 = v0[57];
    v48 = v0[51];
    sub_2681433DC(v45, &qword_28024E770, &qword_2683D80D0);
    sub_2681340E8(v47, v48, &qword_28024E770, &qword_2683D80D0);
    v49 = OUTLINED_FUNCTION_33_1();
    if (__swift_getEnumTagSinglePayload(v49, v50, v46) == 1)
    {
      sub_2681433DC(v0[51], &qword_28024E770, &qword_2683D80D0);
      OUTLINED_FUNCTION_15_4(MEMORY[0x277D5BD50]);
      OUTLINED_FUNCTION_10_2();
      v0[77] = v51;
      *v51 = v52;
      v51[1] = sub_268141D90;
      v53 = v0[41];
      v54 = v0[31];
      v55 = v0[27];
      OUTLINED_FUNCTION_24_3();

      __asm { BR              X3 }
    }

    v75 = v0[34];
    v76 = v0[35];
    sub_26814320C(v0[51], v76);
    v0[10] = v75;
    v0[11] = sub_268143270();
    v77 = __swift_allocate_boxed_opaque_existential_0(v0 + 7);
    sub_2681432C8(v76, v77);
    OUTLINED_FUNCTION_15_4(MEMORY[0x277D5BD40]);
    OUTLINED_FUNCTION_10_2();
    v0[76] = v78;
    *v78 = v79;
    OUTLINED_FUNCTION_40_0(v78);
  }

  else
  {
    v58 = v0[36];
    sub_26814320C(v45, v58);
    v0[15] = v46;
    v0[16] = sub_268143270();
    v59 = __swift_allocate_boxed_opaque_existential_0(v0 + 12);
    sub_2681432C8(v58, v59);
    OUTLINED_FUNCTION_15_4(MEMORY[0x277D5BD38]);
    OUTLINED_FUNCTION_10_2();
    v0[75] = v60;
    *v60 = v61;
    OUTLINED_FUNCTION_40_0(v60);
  }

  OUTLINED_FUNCTION_24_3();

  __asm { BR              X4 }
}

uint64_t sub_26814154C()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = v1;
  OUTLINED_FUNCTION_26();
  *v3 = v2;
  v5 = *(v4 + 592);
  v6 = *(v4 + 576);
  v7 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 176));
  __swift_destroy_boxed_opaque_existential_0((v2 + 136));
  v9 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_268141818()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = v1;
  OUTLINED_FUNCTION_26();
  *v3 = v2;
  v5 = *(v4 + 600);
  v6 = *(v4 + 576);
  v7 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 96));
  v9 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_268141AD4()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = v1;
  OUTLINED_FUNCTION_26();
  *v3 = v2;
  v5 = *(v4 + 608);
  v6 = *(v4 + 576);
  v7 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 56));
  v9 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_268141D90()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = *(v1 + 616);
  v3 = *(v1 + 576);
  v4 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

void sub_26814203C()
{
  (*(v0[60] + 8))(v0[61], v0[59]);
  v13 = v0[71];
  v1 = v0[68];
  v2 = v0[65];
  v3 = v0[64];
  v4 = v0[61];
  v6 = v0[57];
  v5 = v0[58];
  v8 = v0[55];
  v7 = v0[56];
  v10 = v0[53];
  v9 = v0[54];
  OUTLINED_FUNCTION_13_5();

  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_24_3();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_268142190(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 144) = a2;
  *(v4 + 64) = a1;
  *(v4 + 72) = a4;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7C0, &unk_2683D6CA0) - 8) + 64) + 15;
  *(v4 + 80) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_268142230, 0, 0);
}

uint64_t sub_268142230()
{
  v1 = *(v0 + 64);
  if (*(v0 + 144))
  {
    v2 = sub_2681DF64C(v1);
    *(v0 + 88) = v2;
    v3 = *(v0 + 80);
    v4 = [v2 title];
    sub_2683CFEA8();

    sub_2683CF168();
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
    v9 = swift_task_alloc();
    *(v0 + 96) = v9;
    *v9 = v0;
    v9[1] = sub_2681423F0;
    v11 = *(v0 + 72);
    v10 = *(v0 + 80);

    return sub_26818351C();
  }

  else
  {
    *(v0 + 112) = sub_2681DF614(v1);
    v13 = sub_268360738();
    *(v0 + 120) = v13;
    v14 = swift_task_alloc();
    *(v0 + 128) = v14;
    *v14 = v0;
    v14[1] = sub_268142588;
    v15 = *(v0 + 72);

    return sub_268183294(v13);
  }
}

uint64_t sub_2681423F0()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_26();
  *v3 = v2;
  v2[2] = v1;
  v2[3] = v4;
  v2[4] = v0;
  v6 = *(v5 + 96);
  v7 = *(v5 + 80);
  v8 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v9 = v8;
  *(v10 + 104) = v0;

  sub_2681433DC(v7, &unk_28024E7C0, &unk_2683D6CA0);
  if (v0)
  {
    v11 = sub_268142700;
  }

  else
  {
    v11 = sub_268142524;
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

uint64_t sub_268142524()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 24);
  v2 = *(v0 + 80);

  v3 = OUTLINED_FUNCTION_37_0();

  return v4(v3);
}

uint64_t sub_268142588()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_26();
  *v4 = v3;
  v3[5] = v1;
  v3[6] = v5;
  v3[7] = v0;
  v7 = *(v6 + 128);
  v8 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v9 = v8;
  v3[17] = v0;

  if (v0)
  {
    v10 = sub_268142764;
  }

  else
  {
    v11 = v3[15];

    v10 = sub_268142698;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_268142698()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 48);
  v2 = *(v0 + 80);

  v3 = OUTLINED_FUNCTION_37_0();

  return v4(v3);
}

uint64_t sub_268142700()
{
  OUTLINED_FUNCTION_14();

  v1 = *(v0 + 104);
  v2 = *(v0 + 80);

  OUTLINED_FUNCTION_40();

  return v3();
}

uint64_t sub_268142764()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 120);

  v2 = *(v0 + 136);
  v3 = *(v0 + 80);

  OUTLINED_FUNCTION_40();

  return v4();
}

uint64_t sub_2681427DC()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2681342AC;

  return sub_26813F7B0();
}

uint64_t sub_2681428A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5B4E0] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_26813F058;

  return MEMORY[0x2821B9E10](a1, a2, a3, a4);
}

uint64_t sub_268142960()
{
  v2 = *v0;
  v3 = v0[1];
  v5 = v0[2];
  v4 = v0[3];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_268133EC8;

  return sub_2681405A0();
}

uint64_t sub_268142A38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(MEMORY[0x277D5B4F0] + 4);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_2681342AC;

  return MEMORY[0x2821B9E28](a1, a2, a3, a4, a5);
}

uint64_t sub_268142B04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(MEMORY[0x277D5B500] + 4);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_2681342AC;

  return MEMORY[0x2821B9E38](a1, a2, a3, a4, a5);
}

uint64_t sub_268142BD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5B4F8] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_2681342AC;

  return MEMORY[0x2821B9E30](a1, a2, a3, a4);
}

uint64_t sub_268142C94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5B508] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_2681342AC;

  return MEMORY[0x2821B9E40](a1, a2, a3, a4);
}

uint64_t sub_268142D58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(MEMORY[0x277D5B4E8] + 4);
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = sub_2681342AC;

  return MEMORY[0x2821B9E18](a1, a2, a3, a4, a5, a6);
}

uint64_t sub_268142E34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(MEMORY[0x277D5C0B0] + 4);
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = sub_2681342AC;

  return MEMORY[0x2821BBB18](a1, a2, a3, a4, a5, a6);
}

uint64_t sub_268142F10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = *(MEMORY[0x277D5C0B8] + 4);
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = sub_2681342AC;

  return MEMORY[0x2821BBB20](a1, a2, a3, a4, a5, a6, a7);
}

unint64_t sub_268142FF8()
{
  result = qword_28024D580;
  if (!qword_28024D580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024D580);
  }

  return result;
}

uint64_t sub_268143054(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_2681430AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E770, &qword_2683D80D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26814311C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E770, &qword_2683D80D0);
  OUTLINED_FUNCTION_3_1(v1);
  v3 = v2;
  v5 = v4;
  v6 = *(v3 + 80);
  v7 = (v6 + 24) & ~v6;
  v8 = *(v0 + 16);
  v9 = v0 + ((*(v5 + 64) + v6 + v7) & ~v6);

  return sub_26839BC00(v8, v0 + v7, v9);
}

uint64_t sub_26814320C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Snippet();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_268143270()
{
  result = qword_28024E7B0;
  if (!qword_28024E7B0)
  {
    type metadata accessor for Snippet();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E7B0);
  }

  return result;
}

uint64_t sub_2681432C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Snippet();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26814332C(uint64_t a1)
{
  v2 = type metadata accessor for Snippet();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2681433DC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_0_9(v4);
  (*(v5 + 8))(a1);
  return a1;
}

unint64_t sub_268143430()
{
  result = qword_28024D5B8;
  if (!qword_28024D5B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28024D5B8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_5()
{
  v19 = v0[70];
  v20 = v0[68];
  v21 = v0[65];
  v22 = v0[64];
  v3 = v0[60];
  v2 = v0[61];
  v4 = v0[58];
  v5 = v0[57];
  v23 = v0[56];
  v24 = v0[55];
  v25 = v0[54];
  v26 = v0[53];
  v27 = v0[52];
  v6 = v0[47];
  v17 = v0[48];
  v18 = v0[59];
  v7 = v0[45];
  v29 = v0[46];
  v9 = v0[43];
  v8 = v0[44];
  result = v0[41];
  v11 = v0[42];
  v28 = v0[51];
  v12 = v0[39];
  v13 = v0[40];
  v14 = v0[37];
  *(v1 - 104) = v0[38];
  *(v1 - 96) = v14;
  v15 = v0[35];
  *(v1 - 88) = v0[36];
  *(v1 - 80) = v15;
  v16 = *(v13 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_7_4()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_13_5()
{
  v3 = v0[52];
  v4 = v0[51];
  v5 = v0[48];
  v6 = v0[47];
  v7 = v0[46];
  v8 = v0[43];
  v9 = v0[42];
  v10 = v0[41];
  v11 = v0[38];
  v12 = v0[37];
  v13 = v0[36];
  v14 = v0[35];
}

uint64_t OUTLINED_FUNCTION_15_4@<X0>(int *a1@<X8>)
{
  v2 = a1[1];
  v4 = a1 + *a1;

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_16_4(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_20_3()
{

  return sub_2681433DC(v2, v1, v0);
}

uint64_t OUTLINED_FUNCTION_28_1()
{
  if ((v2 & 1) == 0)
  {
    v0 = v1;
  }

  v4 = *v0;
  return v3;
}

void OUTLINED_FUNCTION_29_1()
{
  v1 = *(v0 + 496);
  v2 = *(v0 + 480);
  v3 = *(v0 + 488);
  v4 = *(v0 + 472);
  v5 = *(v0 + 448);
  v6 = *(v0 + 416);
  v7 = *(v0 + 424);
}

uint64_t OUTLINED_FUNCTION_34_1()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_40_0(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = v2[41];
  v4 = v2[31];
  return v2[27];
}

uint64_t OUTLINED_FUNCTION_48_0(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_49_0(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_50()
{
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);

  return sub_26814304C();
}

uint64_t OUTLINED_FUNCTION_51_0(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_2681433DC(a9, a2, a3);
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t Snippet.Reminder.identifier.getter()
{
  v0 = type metadata accessor for Snippet.Reminder(0);
  OUTLINED_FUNCTION_103(*(v0 + 20));
  return OUTLINED_FUNCTION_9_0();
}

uint64_t Snippet.Reminder.identifier.setter()
{
  v3 = OUTLINED_FUNCTION_53_0();
  v4 = (v1 + *(type metadata accessor for Snippet.Reminder(v3) + 20));
  v5 = v4[1];

  *v4 = v2;
  v4[1] = v0;
  return result;
}

uint64_t Snippet.Reminder.identifier.modify()
{
  v0 = OUTLINED_FUNCTION_24_4();
  v1 = *(type metadata accessor for Snippet.Reminder(v0) + 20);
  return OUTLINED_FUNCTION_44_1();
}

uint64_t Snippet.Reminder.title.getter()
{
  v0 = type metadata accessor for Snippet.Reminder(0);
  OUTLINED_FUNCTION_103(*(v0 + 24));
  return OUTLINED_FUNCTION_9_0();
}

uint64_t Snippet.Reminder.title.setter()
{
  v3 = OUTLINED_FUNCTION_53_0();
  v4 = (v1 + *(type metadata accessor for Snippet.Reminder(v3) + 24));
  v5 = v4[1];

  *v4 = v2;
  v4[1] = v0;
  return result;
}

uint64_t Snippet.Reminder.title.modify()
{
  v0 = OUTLINED_FUNCTION_24_4();
  v1 = *(type metadata accessor for Snippet.Reminder(v0) + 24);
  return OUTLINED_FUNCTION_44_1();
}

uint64_t Snippet.Reminder.subtitle.getter()
{
  v0 = type metadata accessor for Snippet.Reminder(0);
  OUTLINED_FUNCTION_103(*(v0 + 28));
  return OUTLINED_FUNCTION_9_0();
}

uint64_t Snippet.Reminder.subtitle.setter()
{
  v3 = OUTLINED_FUNCTION_53_0();
  v4 = (v1 + *(type metadata accessor for Snippet.Reminder(v3) + 28));
  v5 = v4[1];

  *v4 = v2;
  v4[1] = v0;
  return result;
}

uint64_t Snippet.Reminder.subtitle.modify()
{
  v0 = OUTLINED_FUNCTION_24_4();
  v1 = *(type metadata accessor for Snippet.Reminder(v0) + 28);
  return OUTLINED_FUNCTION_44_1();
}

uint64_t Snippet.Reminder.list.getter()
{
  v2 = OUTLINED_FUNCTION_70();
  v3 = *(type metadata accessor for Snippet.Reminder(v2) + 32);
  memcpy(__dst, (v1 + v3), 0x61uLL);
  memcpy(v0, (v1 + v3), 0x61uLL);
  return sub_26812DA38(__dst, &v5, &qword_28024D5C0, &unk_2683D2C80);
}

void *Snippet.Reminder.list.setter()
{
  v2 = OUTLINED_FUNCTION_24_4();
  v3 = *(type metadata accessor for Snippet.Reminder(v2) + 32);
  memcpy(__dst, (v1 + v3), 0x61uLL);
  sub_26812D9E0(__dst, &qword_28024D5C0, &unk_2683D2C80);
  return memcpy((v1 + v3), v0, 0x61uLL);
}

uint64_t Snippet.Reminder.list.modify()
{
  v0 = OUTLINED_FUNCTION_24_4();
  v1 = *(type metadata accessor for Snippet.Reminder(v0) + 32);
  return OUTLINED_FUNCTION_44_1();
}

uint64_t Snippet.Reminder.isComplete.getter()
{
  v0 = *(type metadata accessor for Snippet.Reminder(0) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A0, &unk_2683D2C30);
  OUTLINED_FUNCTION_105();
  return v2;
}

uint64_t Snippet.Reminder.isComplete.setter()
{
  v0 = OUTLINED_FUNCTION_92();
  v1 = *(type metadata accessor for Snippet.Reminder(v0) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A0, &unk_2683D2C30);
  return OUTLINED_FUNCTION_50_0();
}

uint64_t (*Snippet.Reminder.isComplete.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  v4 = *(type metadata accessor for Snippet.Reminder(v3) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A0, &unk_2683D2C30);
  *(v0 + 32) = OUTLINED_FUNCTION_43_1();
  return sub_268143C94;
}

uint64_t Snippet.Reminder.isCompletable.getter()
{
  v0 = *(type metadata accessor for Snippet.Reminder(0) + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A0, &unk_2683D2C30);
  OUTLINED_FUNCTION_105();
  return v2;
}

uint64_t Snippet.Reminder.isCompletable.setter()
{
  v0 = OUTLINED_FUNCTION_92();
  v1 = *(type metadata accessor for Snippet.Reminder(v0) + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A0, &unk_2683D2C30);
  return OUTLINED_FUNCTION_50_0();
}

uint64_t (*Snippet.Reminder.isCompletable.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  v4 = *(type metadata accessor for Snippet.Reminder(v3) + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A0, &unk_2683D2C30);
  *(v0 + 32) = OUTLINED_FUNCTION_43_1();
  return sub_268151B78;
}

uint64_t Snippet.Reminder.isFlagged.getter()
{
  v0 = *(type metadata accessor for Snippet.Reminder(0) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A0, &unk_2683D2C30);
  OUTLINED_FUNCTION_105();
  return v2;
}

uint64_t Snippet.Reminder.isFlagged.setter()
{
  v0 = OUTLINED_FUNCTION_92();
  v1 = *(type metadata accessor for Snippet.Reminder(v0) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A0, &unk_2683D2C30);
  return OUTLINED_FUNCTION_50_0();
}

uint64_t (*Snippet.Reminder.isFlagged.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  v4 = *(type metadata accessor for Snippet.Reminder(v3) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A0, &unk_2683D2C30);
  *(v0 + 32) = OUTLINED_FUNCTION_43_1();
  return sub_268151B78;
}

uint64_t Snippet.Reminder.locationTrigger.getter()
{
  v2 = OUTLINED_FUNCTION_70();
  v3 = type metadata accessor for Snippet.Reminder(v2);
  return sub_26812DA38(v1 + *(v3 + 48), v0, &qword_28024D5C8, &unk_2683D2C90);
}

uint64_t Snippet.Reminder.locationTrigger.setter()
{
  v2 = OUTLINED_FUNCTION_24_4();
  v3 = type metadata accessor for Snippet.Reminder(v2);
  return sub_26814441C(v0, v1 + *(v3 + 48), &qword_28024D5C8, &unk_2683D2C90);
}

uint64_t Snippet.Reminder.locationTrigger.modify()
{
  v0 = OUTLINED_FUNCTION_24_4();
  v1 = *(type metadata accessor for Snippet.Reminder(v0) + 48);
  return OUTLINED_FUNCTION_44_1();
}

uint64_t Snippet.Reminder.temporalTrigger.getter()
{
  v0 = OUTLINED_FUNCTION_70();
  v1 = *(type metadata accessor for Snippet.Reminder(v0) + 52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A8, &unk_2683D2C40);
  return sub_2683CB858();
}

uint64_t sub_268143FB8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5D0, &unk_2683D2CA0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_26812DA38(a1, &v6 - v4, &qword_28024D5D0, &unk_2683D2CA0);
  return Snippet.Reminder.temporalTrigger.setter();
}

uint64_t Snippet.Reminder.temporalTrigger.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_18_4();
  v6 = OUTLINED_FUNCTION_78();
  sub_26812DA38(v6, v7, &qword_28024D5D0, &unk_2683D2CA0);
  v8 = *(type metadata accessor for Snippet.Reminder(0) + 52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A8, &unk_2683D2C40);
  sub_2683CB868();
  v9 = OUTLINED_FUNCTION_55_0();
  return sub_26812D9E0(v9, v10, &unk_2683D2CA0);
}

uint64_t (*Snippet.Reminder.temporalTrigger.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  v4 = *(type metadata accessor for Snippet.Reminder(v3) + 52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A8, &unk_2683D2C40);
  *(v0 + 32) = OUTLINED_FUNCTION_43_1();
  return sub_268151B78;
}

uint64_t Snippet.Reminder.messagingTrigger.getter()
{
  v2 = OUTLINED_FUNCTION_70();
  v3 = (v1 + *(type metadata accessor for Snippet.Reminder(v2) + 56));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  *v0 = *v3;
  v0[1] = v5;
  v0[2] = v6;
  v0[3] = v7;

  return sub_2681441DC(v4, v5);
}

uint64_t sub_2681441DC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

__n128 Snippet.Reminder.messagingTrigger.setter()
{
  v2 = OUTLINED_FUNCTION_24_4();
  v3 = (v1 + *(type metadata accessor for Snippet.Reminder(v2) + 56));
  v4 = v3[2];
  v5 = v3[3];
  sub_268144260(*v3, v3[1]);
  result = *v0;
  v7 = *(v0 + 16);
  *v3 = *v0;
  *(v3 + 1) = v7;
  return result;
}

uint64_t sub_268144260(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t Snippet.Reminder.messagingTrigger.modify()
{
  v0 = OUTLINED_FUNCTION_24_4();
  v1 = *(type metadata accessor for Snippet.Reminder(v0) + 56);
  return OUTLINED_FUNCTION_44_1();
}

uint64_t Snippet.Reminder.attachedLinks.getter()
{
  v1 = *(v0 + *(type metadata accessor for Snippet.Reminder(0) + 60));
}

uint64_t Snippet.Reminder.attachedLinks.setter()
{
  v2 = OUTLINED_FUNCTION_24_4();
  v3 = *(type metadata accessor for Snippet.Reminder(v2) + 60);
  v4 = *(v1 + v3);

  *(v1 + v3) = v0;
  return result;
}

uint64_t Snippet.Reminder.attachedLinks.modify()
{
  v0 = OUTLINED_FUNCTION_24_4();
  v1 = *(type metadata accessor for Snippet.Reminder(v0) + 60);
  return OUTLINED_FUNCTION_44_1();
}

uint64_t Snippet.Reminder.appLink.getter()
{
  v2 = OUTLINED_FUNCTION_70();
  v3 = type metadata accessor for Snippet.Reminder(v2);
  return sub_26812DA38(v1 + *(v3 + 64), v0, &qword_28024D5D8, &qword_2683D4260);
}

uint64_t Snippet.Reminder.appLink.setter()
{
  v2 = OUTLINED_FUNCTION_24_4();
  v3 = type metadata accessor for Snippet.Reminder(v2);
  return sub_26814441C(v0, v1 + *(v3 + 64), &qword_28024D5D8, &qword_2683D4260);
}

uint64_t sub_26814441C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_11_0(a1, a2, a3, a4);
  OUTLINED_FUNCTION_1(v5);
  v7 = *(v6 + 40);
  v8 = OUTLINED_FUNCTION_9_0();
  v9(v8);
  return v4;
}

uint64_t Snippet.Reminder.appLink.modify()
{
  v0 = OUTLINED_FUNCTION_24_4();
  v1 = *(type metadata accessor for Snippet.Reminder(v0) + 64);
  return OUTLINED_FUNCTION_44_1();
}

uint64_t Snippet.Reminder.subtasks.getter()
{
  v1 = *(v0 + *(type metadata accessor for Snippet.Reminder(0) + 68));
}

uint64_t Snippet.Reminder.subtasks.setter()
{
  v2 = OUTLINED_FUNCTION_24_4();
  v3 = *(type metadata accessor for Snippet.Reminder(v2) + 68);
  v4 = *(v1 + v3);

  *(v1 + v3) = v0;
  return result;
}

uint64_t Snippet.Reminder.subtasks.modify()
{
  v0 = OUTLINED_FUNCTION_24_4();
  v1 = *(type metadata accessor for Snippet.Reminder(v0) + 68);
  return OUTLINED_FUNCTION_44_1();
}

void Snippet.Reminder.init(id:identifier:title:subtitle:list:isComplete:isCompletable:isFlagged:locationTrigger:temporalTrigger:messagingTrigger:attachedLinks:appLink:subtasks:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unsigned __int8 a21, unsigned __int8 a22, unsigned __int8 a23, uint64_t a24, uint64_t a25, __int128 *a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  OUTLINED_FUNCTION_30_0();
  v30 = v29;
  v97 = v31;
  v96 = v32;
  v95 = v33;
  v94 = v34;
  v93 = v35;
  v92 = v36;
  v108 = v37;
  v39 = v38;
  v107 = a29;
  v106 = a28;
  v104 = a25;
  v103 = a24;
  v100 = a23;
  v99 = a22;
  v98 = a21;
  v105 = a27;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5D0, &unk_2683D2CA0);
  v40 = *(*(v91 - 8) + 64);
  MEMORY[0x28223BE20](v91);
  OUTLINED_FUNCTION_19_3();
  v43 = v41 - v42;
  MEMORY[0x28223BE20](v44);
  v46 = &v82 - v45;
  memcpy(v110, v30, sizeof(v110));
  sub_2683CB588();
  v47 = type metadata accessor for Snippet.Reminder(0);
  v83 = (v39 + v47[5]);
  v48 = v47[8];
  v84 = (v39 + v47[7]);
  v49 = (v39 + v48);
  *v49 = 0u;
  v49[1] = 0u;
  v49[2] = 0u;
  v49[3] = 0u;
  v49[4] = 0u;
  v49[5] = 0u;
  *(v49 + 96) = 0;
  v50 = v47[10];
  OUTLINED_FUNCTION_117();
  sub_2683CB838();
  v88 = v47[12];
  type metadata accessor for Snippet.Reminder.LocationTrigger(0);
  v51 = a26[1];
  v102 = *a26;
  v101 = v51;
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v52, v53, v54, v55);
  v87 = v47[13];
  type metadata accessor for Snippet.Reminder.TemporalTrigger(0);
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v56, v57, v58, v59);
  v89 = v43;
  OUTLINED_FUNCTION_128(v46, v43);
  OUTLINED_FUNCTION_89();
  sub_2683CB838();
  sub_26812D9E0(v46, &qword_28024D5D0, &unk_2683D2CA0);
  v60 = v39 + v47[14];
  *v60 = 0u;
  *(v60 + 16) = 0u;
  v90 = v47[16];
  type metadata accessor for Snippet.Reminder.AppLink(0);
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v61, v62, v63, v64);
  v85 = sub_2683CB598();
  v86 = *(v85 - 8);
  (*(v86 + 24))(v39, v108, v85);
  v65 = v83;
  v66 = v93;
  *v83 = v92;
  v65[1] = v66;
  v67 = (v39 + v47[6]);
  v68 = v95;
  *v67 = v94;
  v67[1] = v68;
  v69 = v84;
  v70 = v97;
  *v84 = v96;
  v69[1] = v70;
  memcpy(v111, v49, 0x61uLL);
  sub_26812D9E0(v111, &qword_28024D5C0, &unk_2683D2C80);
  memcpy(v49, v110, 0x61uLL);
  v71 = v47[9];
  OUTLINED_FUNCTION_93();
  sub_2683CB838();
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A0, &unk_2683D2C30);
  OUTLINED_FUNCTION_1(v72);
  (*(v73 + 8))(v39 + v50);
  v109 = v99;
  sub_2683CB838();
  v74 = v47[11];
  OUTLINED_FUNCTION_93();
  sub_2683CB838();
  v75 = v103;
  sub_268144B2C(v103, v39 + v88);
  v76 = v104;
  OUTLINED_FUNCTION_128(v104, v46);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A8, &unk_2683D2C40);
  OUTLINED_FUNCTION_1(v77);
  (*(v78 + 8))(v39 + v87);
  OUTLINED_FUNCTION_128(v46, v89);
  sub_2683CB838();
  sub_26812D9E0(v76, &qword_28024D5D0, &unk_2683D2CA0);
  sub_26812D9E0(v75, &qword_28024D5C8, &unk_2683D2C90);
  (*(v86 + 8))(v108, v85);
  sub_26812D9E0(v46, &qword_28024D5D0, &unk_2683D2CA0);
  v79 = *(v60 + 16);
  v80 = *(v60 + 24);
  sub_268144260(*v60, *(v60 + 8));
  v81 = v101;
  *v60 = v102;
  *(v60 + 16) = v81;
  *(v39 + v47[15]) = v105;
  sub_26814441C(v106, v39 + v90, &qword_28024D5D8, &qword_2683D4260);
  *(v39 + v47[17]) = v107;
  OUTLINED_FUNCTION_29_0();
}

uint64_t sub_268144B2C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5C8, &unk_2683D2C90);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t Snippet.Reminder.LocationTrigger.label.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_9_0();
}

uint64_t Snippet.Reminder.LocationTrigger.label.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Snippet.Reminder.LocationTrigger.spatialEvent.getter()
{
  v0 = OUTLINED_FUNCTION_70();
  v1 = *(type metadata accessor for Snippet.Reminder.LocationTrigger(v0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7A0, &qword_2683D2CB0);
  return sub_2683CB858();
}

uint64_t sub_268144C70@<X0>(_BYTE *a1@<X8>)
{
  result = Snippet.Reminder.LocationTrigger.spatialEvent.getter();
  *a1 = v3;
  return result;
}

uint64_t Snippet.Reminder.LocationTrigger.spatialEvent.setter(char *a1)
{
  v3 = *a1;
  v1 = *(type metadata accessor for Snippet.Reminder.LocationTrigger(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7A0, &qword_2683D2CB0);
  return OUTLINED_FUNCTION_50_0();
}

uint64_t (*Snippet.Reminder.LocationTrigger.spatialEvent.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  v4 = *(type metadata accessor for Snippet.Reminder.LocationTrigger(v3) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7A0, &qword_2683D2CB0);
  *(v0 + 32) = OUTLINED_FUNCTION_43_1();
  return sub_268151B78;
}

uint64_t Snippet.Reminder.LocationTrigger.isCar.getter()
{
  v0 = *(type metadata accessor for Snippet.Reminder.LocationTrigger(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A0, &unk_2683D2C30);
  OUTLINED_FUNCTION_105();
  return v2;
}

uint64_t Snippet.Reminder.LocationTrigger.isCar.setter()
{
  v0 = OUTLINED_FUNCTION_92();
  v1 = *(type metadata accessor for Snippet.Reminder.LocationTrigger(v0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A0, &unk_2683D2C30);
  return OUTLINED_FUNCTION_50_0();
}

uint64_t (*Snippet.Reminder.LocationTrigger.isCar.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  v4 = *(type metadata accessor for Snippet.Reminder.LocationTrigger(v3) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A0, &unk_2683D2C30);
  *(v0 + 32) = OUTLINED_FUNCTION_43_1();
  return sub_268151B78;
}

uint64_t Snippet.Reminder.LocationTrigger.init(label:spatialEvent:isCar:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, void *a4@<X8>)
{
  v4 = *a3;
  *a4 = a1;
  a4[1] = a2;
  v5 = type metadata accessor for Snippet.Reminder.LocationTrigger(0);
  v6 = *(v5 + 20);
  sub_2683CB838();
  v7 = *(v5 + 24);
  return sub_2683CB838();
}

uint64_t static Snippet.Reminder.LocationTrigger.== infix(_:_:)(void *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_2683D0598() & 1) == 0)
  {
    return 0;
  }

  v3 = type metadata accessor for Snippet.Reminder.LocationTrigger(0);
  v4 = *(v3 + 20);
  sub_268144FE8();
  if ((sub_2683CB878() & 1) == 0)
  {
    return 0;
  }

  v5 = *(v3 + 24);

  return sub_2683CB878();
}

unint64_t sub_268144FE8()
{
  result = qword_28024D5E0;
  if (!qword_28024D5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024D5E0);
  }

  return result;
}

uint64_t sub_26814503C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C6562616CLL && a2 == 0xE500000000000000;
  if (v4 || (sub_2683D0598() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x456C616974617073 && a2 == 0xEC000000746E6576;
    if (v6 || (sub_2683D0598() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x7261437369 && a2 == 0xE500000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_2683D0598();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_268145150(char a1)
{
  if (!a1)
  {
    return 0x6C6562616CLL;
  }

  if (a1 == 1)
  {
    return 0x456C616974617073;
  }

  return 0x7261437369;
}

uint64_t sub_2681451B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26814503C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2681451F8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_268145148();
  *a1 = result;
  return result;
}

uint64_t sub_268145220(uint64_t a1)
{
  v2 = sub_268145460();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26814525C(uint64_t a1)
{
  v2 = sub_268145460();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Snippet.Reminder.LocationTrigger.encode(to:)(void *a1)
{
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5E8, &qword_2683D2CB8);
  OUTLINED_FUNCTION_0_3(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_18_4();
  v12 = a1[4];
  OUTLINED_FUNCTION_57_0(a1, a1[3]);
  sub_268145460();
  OUTLINED_FUNCTION_67_0();
  sub_2683D0718();
  v13 = *v4;
  v14 = v4[1];
  OUTLINED_FUNCTION_25_3();
  sub_2683D0518();
  if (!v2)
  {
    v15 = type metadata accessor for Snippet.Reminder.LocationTrigger(0);
    v16 = *(v15 + 20);
    OUTLINED_FUNCTION_118();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7A0, &qword_2683D2CB0);
    OUTLINED_FUNCTION_1_6();
    sub_268145CC0(v17);
    OUTLINED_FUNCTION_16_5();
    sub_2683D0548();
    v18 = *(v15 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A0, &unk_2683D2C30);
    OUTLINED_FUNCTION_1_6();
    sub_268145D30(v19);
    OUTLINED_FUNCTION_16_5();
    sub_2683D0548();
  }

  return (*(v8 + 8))(v3, v6);
}

unint64_t sub_268145460()
{
  result = qword_28024D5F0;
  if (!qword_28024D5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024D5F0);
  }

  return result;
}

unint64_t sub_2681454B4()
{
  result = qword_28024D600;
  if (!qword_28024D600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024D600);
  }

  return result;
}

unint64_t sub_268145508()
{
  result = qword_28024D608;
  if (!qword_28024D608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024D608);
  }

  return result;
}

void Snippet.Reminder.LocationTrigger.hash(into:)()
{
  OUTLINED_FUNCTION_130();
  v1 = *v0;
  v2 = v0[1];
  sub_2683CFB48();
  v3 = type metadata accessor for Snippet.Reminder.LocationTrigger(0);
  v4 = *(v3 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7A0, &qword_2683D2CB0);
  OUTLINED_FUNCTION_10_3();
  sub_26814FBBC(v5);
  sub_2683CFA08();
  v6 = *(v3 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A0, &unk_2683D2C30);
  sub_268145678();
  OUTLINED_FUNCTION_60();
  sub_2683CFA08();
  OUTLINED_FUNCTION_131();
}

unint64_t sub_268145624()
{
  result = qword_28024D620;
  if (!qword_28024D620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024D620);
  }

  return result;
}

unint64_t sub_268145678()
{
  result = qword_28024D628;
  if (!qword_28024D628)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28024D5A0, &unk_2683D2C30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024D628);
  }

  return result;
}

uint64_t Snippet.Reminder.LocationTrigger.hashValue.getter()
{
  OUTLINED_FUNCTION_79();
  v1 = *v0;
  v2 = v0[1];
  sub_2683CFB48();
  v3 = type metadata accessor for Snippet.Reminder.LocationTrigger(0);
  v4 = *(v3 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7A0, &qword_2683D2CB0);
  OUTLINED_FUNCTION_10_3();
  v6 = sub_26814FBBC(v5);
  OUTLINED_FUNCTION_87(v6, v7, v8, v9, v10, v11, v12, v13, v24, v26);
  sub_2683CFA08();
  v14 = *(v3 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A0, &unk_2683D2C30);
  v15 = sub_268145678();
  OUTLINED_FUNCTION_87(v15, v16, v17, v18, v19, v20, v21, v22, v25, v27);
  sub_2683CFA08();
  return sub_2683D06D8();
}

void Snippet.Reminder.LocationTrigger.init(from:)()
{
  OUTLINED_FUNCTION_63_0();
  v4 = v3;
  v30 = v5;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A0, &unk_2683D2C30);
  OUTLINED_FUNCTION_0_3(v32);
  v29 = v6;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_5_0();
  v31 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7A0, &qword_2683D2CB0);
  OUTLINED_FUNCTION_0_3(v11);
  v33 = v12;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_28_2();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D630, &qword_2683D2CC0);
  OUTLINED_FUNCTION_0_3(v34);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_18_4();
  v19 = type metadata accessor for Snippet.Reminder.LocationTrigger(0);
  v20 = OUTLINED_FUNCTION_1(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_116();
  v23 = v4[4];
  OUTLINED_FUNCTION_57_0(v4, v4[3]);
  sub_268145460();
  OUTLINED_FUNCTION_67_0();
  sub_2683D06F8();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(v4);
  }

  else
  {
    *v0 = sub_2683D0478();
    v0[1] = v24;
    OUTLINED_FUNCTION_118();
    OUTLINED_FUNCTION_2_4();
    sub_268145CC0(v25);
    sub_2683D04A8();
    (*(v33 + 32))(v0 + *(v19 + 20), v2, v11);
    OUTLINED_FUNCTION_2_4();
    sub_268145D30(v26);
    sub_2683D04A8();
    v27 = OUTLINED_FUNCTION_115();
    v28(v27);
    (*(v29 + 32))(v0 + *(v19 + 24), v31, v32);
    sub_26814F07C(v0, v30);
    __swift_destroy_boxed_opaque_existential_0(v4);
    OUTLINED_FUNCTION_13_6();
    sub_26814F0D4();
  }

  OUTLINED_FUNCTION_62();
}

uint64_t sub_268145BD4(uint64_t a1, uint64_t a2)
{
  sub_2683D0698();
  v4 = *v2;
  v5 = v2[1];
  sub_2683CFB48();
  v6 = *(a2 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7A0, &qword_2683D2CB0);
  sub_26814FBBC(&unk_28024D618);
  sub_2683CFA08();
  v7 = *(a2 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A0, &unk_2683D2C30);
  sub_268145678();
  sub_2683CFA08();
  return sub_2683D06D8();
}

unint64_t sub_268145CC0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_76(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28024E7A0, &qword_2683D2CB0);
    sub_2681454B4();
    sub_268145508();
    OUTLINED_FUNCTION_61_0();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_268145D30(uint64_t a1)
{
  result = OUTLINED_FUNCTION_76(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28024D5A0, &unk_2683D2C30);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_268145DC4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E697669727261 && a2 == 0xE800000000000000;
  if (v4 || (sub_2683D0598() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E69747261706564 && a2 == 0xE900000000000067)
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

uint64_t sub_268145E9C(char a1)
{
  if (a1)
  {
    return 0x6E69747261706564;
  }

  else
  {
    return 0x676E697669727261;
  }
}

uint64_t sub_268145EDC(uint64_t a1)
{
  v2 = sub_26814639C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268145F18(uint64_t a1)
{
  v2 = sub_26814639C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_268145F5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_268145DC4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_268145F84@<X0>(_BYTE *a1@<X8>)
{
  result = sub_268145E94();
  *a1 = result;
  return result;
}

uint64_t sub_268145FAC(uint64_t a1)
{
  v2 = sub_2681462F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268145FE8(uint64_t a1)
{
  v2 = sub_2681462F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_268146024(uint64_t a1)
{
  v2 = sub_268146348();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268146060(uint64_t a1)
{
  v2 = sub_268146348();

  return MEMORY[0x2821FE720](a1, v2);
}

void Snippet.Reminder.SpatialEvent.encode(to:)()
{
  OUTLINED_FUNCTION_63_0();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D648, &qword_2683D2CC8);
  v5 = OUTLINED_FUNCTION_0_3(v4);
  v32 = v6;
  v33 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_5_0();
  v31 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D650, &qword_2683D2CD0);
  v12 = OUTLINED_FUNCTION_0_3(v11);
  v29 = v13;
  v30 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_84();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D658, &qword_2683D2CD8);
  OUTLINED_FUNCTION_0_3(v17);
  v19 = v18;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v22);
  v24 = &v29 - v23;
  v25 = *v0;
  v26 = v3[4];
  OUTLINED_FUNCTION_57_0(v3, v3[3]);
  sub_2681462F4();
  sub_2683D0718();
  v27 = (v19 + 8);
  if (v25)
  {
    sub_268146348();
    v28 = v31;
    OUTLINED_FUNCTION_66();
    sub_2683D04C8();
    (*(v32 + 8))(v28, v33);
  }

  else
  {
    sub_26814639C();
    OUTLINED_FUNCTION_66();
    sub_2683D04C8();
    (*(v29 + 8))(v1, v30);
  }

  (*v27)(v24, v17);
  OUTLINED_FUNCTION_62();
}

unint64_t sub_2681462F4()
{
  result = qword_28024D660;
  if (!qword_28024D660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024D660);
  }

  return result;
}

unint64_t sub_268146348()
{
  result = qword_28024D668;
  if (!qword_28024D668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024D668);
  }

  return result;
}

unint64_t sub_26814639C()
{
  result = qword_28024D670;
  if (!qword_28024D670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024D670);
  }

  return result;
}

uint64_t Snippet.Reminder.SpatialEvent.hashValue.getter()
{
  v1 = *v0;
  OUTLINED_FUNCTION_79();
  v2 = OUTLINED_FUNCTION_119();
  MEMORY[0x26D617190](v2);
  return sub_2683D06D8();
}

void Snippet.Reminder.SpatialEvent.init(from:)()
{
  OUTLINED_FUNCTION_63_0();
  v5 = v4;
  v41 = v6;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D678, &qword_2683D2CE0);
  OUTLINED_FUNCTION_0_3(v43);
  v40 = v7;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_116();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D680, &qword_2683D2CE8);
  OUTLINED_FUNCTION_0_3(v11);
  v39 = v12;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_49_1();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D688, &unk_2683D2CF0);
  OUTLINED_FUNCTION_0_3(v16);
  v42 = v17;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_48_1();
  v21 = v5[4];
  OUTLINED_FUNCTION_57_0(v5, v5[3]);
  sub_2681462F4();
  sub_2683D06F8();
  if (v1)
  {
    goto LABEL_8;
  }

  v44 = v5;
  v22 = sub_2683D04B8();
  sub_26814E170(v22, 0);
  if (v25 == v26 >> 1)
  {
LABEL_7:
    v35 = sub_2683D01D8();
    swift_allocError();
    v37 = v36;
    v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D690, &qword_2683D52C0) + 48);
    *v37 = &type metadata for Snippet.Reminder.SpatialEvent;
    sub_2683D0428();
    OUTLINED_FUNCTION_122();
    (*(*(v35 - 8) + 104))(v37, *MEMORY[0x277D84160], v35);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v42 + 8))(v2, v16);
    v5 = v44;
LABEL_8:
    __swift_destroy_boxed_opaque_existential_0(v5);
LABEL_9:
    OUTLINED_FUNCTION_62();
    return;
  }

  if (v25 < (v26 >> 1))
  {
    v27 = *(v24 + v25);
    sub_268151AA0(v25 + 1, v26 >> 1, v23, v24, v25, v26);
    v29 = v28;
    v31 = v30;
    swift_unknownObjectRelease();
    if (v29 == v31 >> 1)
    {
      if (v27)
      {
        sub_268146348();
        v32 = v0;
        OUTLINED_FUNCTION_97();
        v33 = v41;
        v34 = v42;
        swift_unknownObjectRelease();
        (*(v40 + 8))(v32, v43);
      }

      else
      {
        sub_26814639C();
        OUTLINED_FUNCTION_97();
        v33 = v41;
        v34 = v42;
        swift_unknownObjectRelease();
        (*(v39 + 8))(v3, v11);
      }

      (*(v34 + 8))(v2, v29);
      *v33 = v27;
      __swift_destroy_boxed_opaque_existential_0(v44);
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t Snippet.Reminder.TemporalTrigger.date.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D698, &qword_2683D2D00);

  return sub_2683CB858();
}

uint64_t sub_268146914(uint64_t a1)
{
  v2 = sub_2683CB528();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return Snippet.Reminder.TemporalTrigger.date.setter();
}

uint64_t Snippet.Reminder.TemporalTrigger.date.setter()
{
  OUTLINED_FUNCTION_24_4();
  v2 = sub_2683CB528();
  v3 = OUTLINED_FUNCTION_0_3(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_52_0();
  (*(v5 + 16))(v1, v0, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D698, &qword_2683D2D00);
  sub_2683CB868();
  v8 = *(v5 + 8);
  v9 = OUTLINED_FUNCTION_55_0();
  return v10(v9);
}

uint64_t (*Snippet.Reminder.TemporalTrigger.date.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  *v0 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D698, &qword_2683D2D00);
  v2[4] = sub_2683CB848();
  return sub_268151B78;
}

uint64_t Snippet.Reminder.TemporalTrigger.isAllDay.getter()
{
  v0 = *(type metadata accessor for Snippet.Reminder.TemporalTrigger(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A0, &unk_2683D2C30);
  OUTLINED_FUNCTION_105();
  return v2;
}

uint64_t Snippet.Reminder.TemporalTrigger.isAllDay.setter()
{
  v0 = OUTLINED_FUNCTION_92();
  v1 = *(type metadata accessor for Snippet.Reminder.TemporalTrigger(v0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A0, &unk_2683D2C30);
  return OUTLINED_FUNCTION_50_0();
}

uint64_t (*Snippet.Reminder.TemporalTrigger.isAllDay.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  v4 = *(type metadata accessor for Snippet.Reminder.TemporalTrigger(v3) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A0, &unk_2683D2C30);
  *(v0 + 32) = OUTLINED_FUNCTION_43_1();
  return sub_268151B78;
}

void sub_268146C38(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

void Snippet.Reminder.TemporalTrigger.init(date:isAllDay:)()
{
  OUTLINED_FUNCTION_30_0();
  v1 = v0;
  v3 = v2;
  v4 = sub_2683CB528();
  v5 = OUTLINED_FUNCTION_0_3(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_19_3();
  MEMORY[0x28223BE20](v10);
  v12 = &v18[-v11];
  v13 = *(v7 + 16);
  (v13)(&v18[-v11], v3, v4);
  v14 = OUTLINED_FUNCTION_19_2();
  v13(v14);
  sub_2683CB838();
  v15 = *(v7 + 8);
  (v15)(v12, v4);
  v16 = *(type metadata accessor for Snippet.Reminder.TemporalTrigger(0) + 20);
  v18[15] = v1;
  sub_2683CB838();
  v17 = OUTLINED_FUNCTION_9_0();
  v15(v17);
  OUTLINED_FUNCTION_29_0();
}

uint64_t static Snippet.Reminder.TemporalTrigger.== infix(_:_:)()
{
  OUTLINED_FUNCTION_47_0();
  sub_2683CB528();
  OUTLINED_FUNCTION_14_5();
  sub_26814EEB8(v0);
  OUTLINED_FUNCTION_41_0();
  if ((sub_2683CB878() & 1) == 0)
  {
    return 0;
  }

  v1 = *(type metadata accessor for Snippet.Reminder.TemporalTrigger(0) + 20);

  return sub_2683CB878();
}

uint64_t sub_268146E8C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v3 || (sub_2683D0598() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7961446C6C417369 && a2 == 0xE800000000000000)
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

uint64_t sub_268146F54(char a1)
{
  if (a1)
  {
    return 0x7961446C6C417369;
  }

  else
  {
    return 1702125924;
  }
}

uint64_t sub_268146F8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_268146E8C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_268146FB4(uint64_t a1)
{
  v2 = sub_26814EE64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268146FF0(uint64_t a1)
{
  v2 = sub_26814EE64();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Snippet.Reminder.TemporalTrigger.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D6A8, &qword_2683D2D08);
  OUTLINED_FUNCTION_0_3(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_18_4();
  v10 = a1[4];
  OUTLINED_FUNCTION_57_0(a1, a1[3]);
  sub_26814EE64();
  OUTLINED_FUNCTION_67_0();
  sub_2683D0718();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D698, &qword_2683D2D00);
  OUTLINED_FUNCTION_1_6();
  sub_26814EFB0(v11);
  OUTLINED_FUNCTION_16_5();
  sub_2683D0548();
  if (!v1)
  {
    v12 = *(type metadata accessor for Snippet.Reminder.TemporalTrigger(0) + 20);
    OUTLINED_FUNCTION_118();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A0, &unk_2683D2C30);
    OUTLINED_FUNCTION_1_6();
    sub_268145D30(v13);
    OUTLINED_FUNCTION_16_5();
    sub_2683D0548();
  }

  return (*(v6 + 8))(v2, v4);
}

uint64_t Snippet.Reminder.TemporalTrigger.hash(into:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D698, &qword_2683D2D00);
  sub_26814EEFC();
  OUTLINED_FUNCTION_55_0();
  sub_2683CFA08();
  v0 = *(type metadata accessor for Snippet.Reminder.TemporalTrigger(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A0, &unk_2683D2C30);
  sub_268145678();
  OUTLINED_FUNCTION_55_0();
  return sub_2683CFA08();
}

uint64_t Snippet.Reminder.TemporalTrigger.hashValue.getter()
{
  OUTLINED_FUNCTION_79();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D698, &qword_2683D2D00);
  v0 = sub_26814EEFC();
  OUTLINED_FUNCTION_87(v0, v1, v2, v3, v4, v5, v6, v7, v18, v20);
  sub_2683CFA08();
  v8 = *(type metadata accessor for Snippet.Reminder.TemporalTrigger(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A0, &unk_2683D2C30);
  v9 = sub_268145678();
  OUTLINED_FUNCTION_87(v9, v10, v11, v12, v13, v14, v15, v16, v19, v21);
  sub_2683CFA08();
  return sub_2683D06D8();
}

void Snippet.Reminder.TemporalTrigger.init(from:)()
{
  OUTLINED_FUNCTION_63_0();
  v4 = v3;
  v33 = v5;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A0, &unk_2683D2C30);
  OUTLINED_FUNCTION_0_3(v35);
  v32 = v6;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_83();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D698, &qword_2683D2D00);
  OUTLINED_FUNCTION_0_3(v38);
  v34 = v10;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_5_0();
  v36 = v14;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D6E0, &qword_2683D2D10);
  OUTLINED_FUNCTION_0_3(v39);
  v37 = v15;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_28_2();
  v19 = type metadata accessor for Snippet.Reminder.TemporalTrigger(0);
  v20 = OUTLINED_FUNCTION_1(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_14_3();
  v25 = v24 - v23;
  v26 = v4[3];
  v27 = v4[4];
  v28 = OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_57_0(v28, v29);
  sub_26814EE64();
  sub_2683D06F8();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_0(v4);
  }

  else
  {
    OUTLINED_FUNCTION_2_4();
    sub_26814EFB0(v30);
    sub_2683D04A8();
    (*(v34 + 32))(v25, v36, v38);
    OUTLINED_FUNCTION_118();
    OUTLINED_FUNCTION_2_4();
    sub_268145D30(v31);
    sub_2683D04A8();
    (*(v37 + 8))(v1, v39);
    (*(v32 + 32))(v25 + *(v19 + 20), v2, v35);
    sub_26814F07C(v25, v33);
    __swift_destroy_boxed_opaque_existential_0(v4);
    sub_26814F0D4();
  }

  OUTLINED_FUNCTION_62();
}

uint64_t sub_2681476A8(uint64_t a1, uint64_t a2)
{
  sub_2683D0698();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D698, &qword_2683D2D00);
  sub_26814EEFC();
  sub_2683CFA08();
  v3 = *(a2 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A0, &unk_2683D2C30);
  sub_268145678();
  sub_2683CFA08();
  return sub_2683D06D8();
}

uint64_t Snippet.Reminder.MessagingTrigger.contact.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

__n128 Snippet.Reminder.MessagingTrigger.contact.setter(__n128 *a1)
{
  v7 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u64[1];
  v4 = v1->n128_u64[1];
  v5 = v1[1].n128_u64[1];

  result = v7;
  *v1 = v7;
  v1[1].n128_u64[0] = v2;
  v1[1].n128_u64[1] = v3;
  return result;
}

__n128 Snippet.Reminder.MessagingTrigger.init(contact:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  *a2 = *a1;
  a2[1].n128_u64[0] = v3;
  a2[1].n128_u64[1] = v4;
  return result;
}

BOOL static Snippet.Reminder.MessagingTrigger.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  result = 0;
  if (v6 || (sub_2683D0598() & 1) != 0)
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    OUTLINED_FUNCTION_9_0();
    if (sub_2683D0598())
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_2681478A4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x746361746E6F63 && a2 == 0xE700000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2683D0598();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_268147938@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2681478A4(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_268147964(uint64_t a1)
{
  v2 = sub_26814F128();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2681479A0(uint64_t a1)
{
  v2 = sub_26814F128();

  return MEMORY[0x2821FE720](a1, v2);
}

void Snippet.Reminder.MessagingTrigger.encode(to:)()
{
  OUTLINED_FUNCTION_63_0();
  v2 = v1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D6F0, &qword_2683D2D18);
  OUTLINED_FUNCTION_0_3(v16);
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_18_4();
  v8 = *v0;
  v9 = v0[1];
  v10 = v0[3];
  v15 = v0[2];
  v11 = v2[4];
  OUTLINED_FUNCTION_57_0(v2, v2[3]);
  sub_26814F128();

  OUTLINED_FUNCTION_67_0();
  sub_2683D0718();
  sub_26814F17C();
  sub_2683D0548();

  v12 = *(v4 + 8);
  v13 = OUTLINED_FUNCTION_19_2();
  v14(v13);
  OUTLINED_FUNCTION_62();
}

uint64_t Snippet.Reminder.MessagingTrigger.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_2683CFB48();
  OUTLINED_FUNCTION_55_0();

  return sub_2683CFB48();
}

uint64_t Snippet.Reminder.MessagingTrigger.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  OUTLINED_FUNCTION_79();
  sub_2683CFB48();
  sub_2683CFB48();
  return sub_2683D06D8();
}

void Snippet.Reminder.MessagingTrigger.init(from:)()
{
  OUTLINED_FUNCTION_63_0();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D708, &qword_2683D2D20);
  OUTLINED_FUNCTION_0_3(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_49_1();
  v12 = v3[4];
  OUTLINED_FUNCTION_57_0(v3, v3[3]);
  sub_26814F128();
  OUTLINED_FUNCTION_108();
  sub_2683D06F8();
  if (!v0)
  {
    sub_26814F1D0();
    OUTLINED_FUNCTION_66();
    sub_2683D04A8();
    (*(v8 + 8))(v1, v6);
    *v5 = v13;
    *(v5 + 16) = v14;
    *(v5 + 24) = v15;
  }

  __swift_destroy_boxed_opaque_existential_0(v3);
  OUTLINED_FUNCTION_62();
}

uint64_t sub_268147D5C()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_2683D0698();
  sub_2683CFB48();
  sub_2683CFB48();
  return sub_2683D06D8();
}

void static Snippet.Reminder.AppLink.== infix(_:_:)()
{
  OUTLINED_FUNCTION_30_0();
  v3 = v2;
  v5 = v4;
  v44 = sub_2683CB438();
  v6 = OUTLINED_FUNCTION_0_3(v44);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_110();
  v11 = type metadata accessor for Snippet.Reminder.AppLink(0);
  v12 = OUTLINED_FUNCTION_1(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_19_3();
  v17 = (v15 - v16);
  MEMORY[0x28223BE20](v18);
  v20 = &v43 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D718, &qword_2683D2D28);
  OUTLINED_FUNCTION_23(v21);
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_116();
  v26 = (v0 + *(v25 + 56));
  sub_26814F07C(v5, v0);
  sub_26814F07C(v3, v26);
  OUTLINED_FUNCTION_60();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_6_4();
    sub_26814F07C(v0, v17);
    v27 = *v17;
    v28 = v17[1];
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v29 = *v26;
      v30 = v26[1];
      v31 = OUTLINED_FUNCTION_61_0();
      MEMORY[0x26D611F40](v31);
      v32 = OUTLINED_FUNCTION_19_2();
      sub_268143054(v32, v33);
      v34 = OUTLINED_FUNCTION_61_0();
      sub_268143054(v34, v35);
LABEL_9:
      OUTLINED_FUNCTION_11_6();
      sub_26814F0D4();
      goto LABEL_10;
    }

    v38 = OUTLINED_FUNCTION_61_0();
    sub_268143054(v38, v39);
  }

  else
  {
    OUTLINED_FUNCTION_6_4();
    v36 = OUTLINED_FUNCTION_78();
    sub_26814F07C(v36, v37);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v40 = v44;
      (*(v8 + 32))(v1, v26, v44);
      sub_2683CB3D8();
      v41 = *(v8 + 8);
      v42 = OUTLINED_FUNCTION_114();
      v41(v42);
      (v41)(v20, v40);
      goto LABEL_9;
    }

    (*(v8 + 8))(v20, v44);
  }

  sub_26812D9E0(v0, &qword_28024D718, &qword_2683D2D28);
LABEL_10:
  OUTLINED_FUNCTION_29_0();
}

void static Snippet.Reminder.UserActivityStorage.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  JUMPOUT(0x26D611F40);
}

uint64_t sub_268148080(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6173726576696E75 && a2 == 0xED00006B6E694C6CLL;
  if (v4 || (sub_2683D0598() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6974634172657375 && a2 == 0xEC00000079746976)
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

uint64_t sub_268148154(char a1)
{
  if (a1)
  {
    return 0x6974634172657375;
  }

  else
  {
    return 0x6173726576696E75;
  }
}

uint64_t sub_2681481AC(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2683D0598();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_268148224@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_268148080(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26814824C(uint64_t a1)
{
  v2 = sub_26814F224();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268148288(uint64_t a1)
{
  v2 = sub_26814F224();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2681482C8(uint64_t a1)
{
  v2 = sub_26814F320();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268148304(uint64_t a1)
{
  v2 = sub_26814F320();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_268148340(uint64_t a1)
{
  v2 = sub_26814F278();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26814837C(uint64_t a1)
{
  v2 = sub_26814F278();

  return MEMORY[0x2821FE720](a1, v2);
}

void Snippet.Reminder.AppLink.encode(to:)()
{
  OUTLINED_FUNCTION_63_0();
  v47 = v1;
  v5 = v4;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D720, &qword_2683D2D30);
  OUTLINED_FUNCTION_0_3(v46);
  v44 = v6;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_5_0();
  v40 = v10;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D728, &qword_2683D2D38);
  OUTLINED_FUNCTION_0_3(v45);
  v43 = v11;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_83();
  v15 = sub_2683CB438();
  v16 = OUTLINED_FUNCTION_0_3(v15);
  v41 = v17;
  v42 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_116();
  v20 = type metadata accessor for Snippet.Reminder.AppLink(0);
  v21 = OUTLINED_FUNCTION_1(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_14_3();
  v26 = (v25 - v24);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D730, &qword_2683D2D40);
  OUTLINED_FUNCTION_0_3(v48);
  v28 = v27;
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_49_1();
  v32 = v5[4];
  OUTLINED_FUNCTION_57_0(v5, v5[3]);
  sub_26814F224();
  OUTLINED_FUNCTION_108();
  sub_2683D0718();
  OUTLINED_FUNCTION_6_4();
  sub_26814F07C(v47, v26);
  OUTLINED_FUNCTION_19_2();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v33 = *v26;
    v34 = v26[1];
    sub_26814F278();
    OUTLINED_FUNCTION_86();
    sub_2683D04C8();
    sub_26814F2CC();
    sub_2683D0548();
    (*(v44 + 8))(v40, v46);
    (*(v28 + 8))(v2, v48);
    v35 = OUTLINED_FUNCTION_78();
    sub_268143054(v35, v36);
  }

  else
  {
    v37 = *(v41 + 32);
    OUTLINED_FUNCTION_74();
    v38();
    sub_26814F320();
    OUTLINED_FUNCTION_66();
    sub_2683D04C8();
    OUTLINED_FUNCTION_0_10();
    sub_26814EEB8(v39);
    sub_2683D0548();
    (*(v43 + 8))(v3, v45);
    (*(v41 + 8))(v0, v42);
    (*(v28 + 8))(v2, v48);
  }

  OUTLINED_FUNCTION_62();
}

void Snippet.Reminder.AppLink.hash(into:)()
{
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_47_0();
  v2 = sub_2683CB438();
  v3 = OUTLINED_FUNCTION_0_3(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_110();
  v8 = type metadata accessor for Snippet.Reminder.AppLink(0);
  v9 = OUTLINED_FUNCTION_1(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_52_0();
  OUTLINED_FUNCTION_6_4();
  v12 = OUTLINED_FUNCTION_89();
  sub_26814F07C(v12, v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = *v1;
    v15 = v1[1];
    MEMORY[0x26D617190](1);
    OUTLINED_FUNCTION_41_0();
    sub_2683CB478();
    v16 = OUTLINED_FUNCTION_55_0();
    sub_268143054(v16, v17);
  }

  else
  {
    v18 = *(v5 + 32);
    v19 = OUTLINED_FUNCTION_113();
    v20(v19);
    MEMORY[0x26D617190](0);
    OUTLINED_FUNCTION_0_10();
    sub_26814EEB8(v21);
    OUTLINED_FUNCTION_88();
    sub_2683CFA08();
    (*(v5 + 8))(v0, v2);
  }

  OUTLINED_FUNCTION_131();
}

void Snippet.Reminder.AppLink.init(from:)()
{
  OUTLINED_FUNCTION_63_0();
  v3 = v2;
  v77 = v4;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D768, &qword_2683D2D48);
  OUTLINED_FUNCTION_0_3(v78);
  v83 = v5;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_5_0();
  v82 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D770, &qword_2683D2D50);
  v11 = OUTLINED_FUNCTION_0_3(v10);
  v79 = v12;
  v80 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_5_0();
  v81 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D778, &qword_2683D2D58);
  v18 = OUTLINED_FUNCTION_0_3(v17);
  v84 = v19;
  v85 = v18;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_18_4();
  v23 = type metadata accessor for Snippet.Reminder.AppLink(0);
  v24 = OUTLINED_FUNCTION_1(v23);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_19_3();
  v29 = (v27 - v28);
  v31 = MEMORY[0x28223BE20](v30);
  v33 = &v71[-v32];
  MEMORY[0x28223BE20](v31);
  v35 = &v71[-v34];
  v36 = v3[4];
  OUTLINED_FUNCTION_57_0(v3, v3[3]);
  sub_26814F224();
  OUTLINED_FUNCTION_67_0();
  sub_2683D06F8();
  if (v0)
  {
    goto LABEL_8;
  }

  v74 = v33;
  v75 = v29;
  v73 = v35;
  v76 = v23;
  v37 = v85;
  v38 = sub_2683D04B8();
  sub_26814E170(v38, 0);
  v43 = v1;
  if (v41 == v42 >> 1)
  {
LABEL_7:
    v50 = v76;
    v51 = sub_2683D01D8();
    swift_allocError();
    v53 = v52;
    v54 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D690, &qword_2683D52C0) + 48);
    *v53 = v50;
    sub_2683D0428();
    OUTLINED_FUNCTION_122();
    (*(*(v51 - 8) + 104))(v53, *MEMORY[0x277D84160], v51);
    swift_willThrow();
    swift_unknownObjectRelease();
    v55 = OUTLINED_FUNCTION_46_1();
    v56(v55, v37);
LABEL_8:
    v57 = v3;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_0(v57);
    OUTLINED_FUNCTION_62();
    return;
  }

  if (v41 < (v42 >> 1))
  {
    v72 = *(v40 + v41);
    sub_268151AA0(v41 + 1, v42 >> 1, v39, v40, v41, v42);
    v45 = v44;
    v47 = v46;
    swift_unknownObjectRelease();
    v48 = v83;
    v49 = v75;
    if (v45 == v47 >> 1)
    {
      if (v72)
      {
        LOBYTE(v86) = 1;
        sub_26814F278();
        OUTLINED_FUNCTION_86();
        sub_2683D0418();
        sub_26814F374();
        sub_2683D04A8();
        swift_unknownObjectRelease();
        v61 = *(v48 + 8);
        v62 = OUTLINED_FUNCTION_60();
        v63(v62);
        v64 = OUTLINED_FUNCTION_46_1();
        v65(v64, v37);
        *v49 = v86;
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_4_4();
        v66 = v49;
      }

      else
      {
        LOBYTE(v86) = 0;
        sub_26814F320();
        OUTLINED_FUNCTION_86();
        sub_2683D0418();
        sub_2683CB438();
        OUTLINED_FUNCTION_0_10();
        sub_26814EEB8(v58);
        v59 = v74;
        sub_2683D04A8();
        v60 = v84;
        swift_unknownObjectRelease();
        v67 = *(v79 + 8);
        v68 = OUTLINED_FUNCTION_60();
        v69(v68);
        (*(v60 + 8))(v43, v37);
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_4_4();
        v66 = v59;
      }

      v70 = v73;
      sub_26814F6E8(v66, v73);
      OUTLINED_FUNCTION_4_4();
      sub_26814F6E8(v70, v77);
      v57 = v3;
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t Snippet.Reminder.UserActivityStorage.data.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = OUTLINED_FUNCTION_9_0();
  sub_26814F3C8(v3, v4);
  return OUTLINED_FUNCTION_9_0();
}

uint64_t Snippet.Reminder.UserActivityStorage.init(data:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

void Snippet.Reminder.UserActivityStorage.userActivity.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_26814F420();
  v3 = sub_268149058();
  OUTLINED_FUNCTION_55_0();
  v4 = sub_2683CB448();
  v5 = [v3 _initWithUserActivityData_];

  if (!v5)
  {
    __break(1u);
  }
}

id sub_268149058()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_2683CFA68();

  v2 = [v0 initWithActivityType_];

  return v2;
}

uint64_t sub_2681490CC(uint64_t a1, uint64_t a2)
{
  if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2683D0598();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_268149144()
{
  OUTLINED_FUNCTION_79();
  MEMORY[0x26D617190](0);
  return sub_2683D06D8();
}

uint64_t sub_268149194@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2681490CC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2681491C0(uint64_t a1)
{
  v2 = sub_26814F464();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2681491FC(uint64_t a1)
{
  v2 = sub_26814F464();

  return MEMORY[0x2821FE720](a1, v2);
}

void Snippet.Reminder.UserActivityStorage.encode(to:)()
{
  OUTLINED_FUNCTION_63_0();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D798, &qword_2683D2D60);
  OUTLINED_FUNCTION_0_3(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_18_4();
  v10 = *v0;
  v11 = v0[1];
  v12 = v3[4];
  OUTLINED_FUNCTION_57_0(v3, v3[3]);
  v13 = OUTLINED_FUNCTION_44();
  sub_26814F3C8(v13, v14);
  sub_26814F464();
  OUTLINED_FUNCTION_67_0();
  sub_2683D0718();
  sub_26814F4B8();
  sub_2683D0548();
  sub_268143054(v10, v11);
  (*(v6 + 8))(v1, v4);
  OUTLINED_FUNCTION_62();
}

uint64_t Snippet.Reminder.UserActivityStorage.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_2683CB478();
}

uint64_t Snippet.Reminder.UserActivityStorage.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  OUTLINED_FUNCTION_79();
  sub_2683CB478();
  return sub_2683D06D8();
}

void Snippet.Reminder.UserActivityStorage.init(from:)()
{
  OUTLINED_FUNCTION_63_0();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D7B0, &qword_2683D2D68);
  OUTLINED_FUNCTION_0_3(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_48_1();
  v12 = v3[4];
  OUTLINED_FUNCTION_57_0(v3, v3[3]);
  sub_26814F464();
  OUTLINED_FUNCTION_108();
  sub_2683D06F8();
  if (!v0)
  {
    sub_26814F50C();
    OUTLINED_FUNCTION_66();
    sub_2683D04A8();
    (*(v8 + 8))(v1, v6);
    *v5 = v13;
  }

  __swift_destroy_boxed_opaque_existential_0(v3);
  OUTLINED_FUNCTION_62();
}

uint64_t sub_2681494F8()
{
  v1 = *v0;
  v2 = v0[1];
  sub_2683D0698();
  sub_2683CB478();
  return sub_2683D06D8();
}

uint64_t sub_26814958C()
{
  v0 = OUTLINED_FUNCTION_70();
  v2 = v1(v0);
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_9_0();

  return v6(v5);
}

uint64_t sub_268149604()
{
  v0 = OUTLINED_FUNCTION_24_4();
  v2 = v1(v0);
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_41_0();

  return v6(v5);
}

uint64_t Snippet.Reminder.URLAttachment.encodedMetadata.getter()
{
  OUTLINED_FUNCTION_56_0();
  v2 = (v0 + v1);
  v3 = *v2;
  v4 = v2[1];
  v5 = OUTLINED_FUNCTION_9_0();
  sub_26814F5B8(v5, v6);
  return OUTLINED_FUNCTION_9_0();
}

uint64_t Snippet.Reminder.URLAttachment.encodedMetadata.setter()
{
  v3 = OUTLINED_FUNCTION_53_0();
  v4 = v1 + *(type metadata accessor for Snippet.Reminder.URLAttachment(v3) + 20);
  result = sub_26814F5CC(*v4, *(v4 + 8));
  *v4 = v2;
  *(v4 + 8) = v0;
  return result;
}

uint64_t Snippet.Reminder.URLAttachment.encodedMetadata.modify()
{
  v0 = OUTLINED_FUNCTION_24_4();
  v1 = *(type metadata accessor for Snippet.Reminder.URLAttachment(v0) + 20);
  return OUTLINED_FUNCTION_44_1();
}

uint64_t Snippet.Reminder.URLAttachment.init(url:encodedMetadata:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  OUTLINED_FUNCTION_56_0();
  v7 = a3 + v6;
  *(a3 + v6) = xmmword_2683D2C70;
  v8 = sub_2683CB438();
  OUTLINED_FUNCTION_1(v8);
  v10 = *(v9 + 32);
  v11 = OUTLINED_FUNCTION_69();
  v12(v11);
  result = sub_26814F5CC(*v7, *(v7 + 8));
  *v7 = a1;
  *(v7 + 8) = a2;
  return result;
}

BOOL static Snippet.Reminder.URLAttachment.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_2683CB3D8() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_56_0();
  v6 = *(a1 + v4);
  v5 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  v9 = *v7;
  v8 = v7[1];
  if (v5 >> 60 != 15)
  {
    if (v8 >> 60 != 15)
    {
      v17 = OUTLINED_FUNCTION_32_2();
      v18 = MEMORY[0x26D611F40](v17);
      v19 = OUTLINED_FUNCTION_69();
      sub_26814F5CC(v19, v20);
      v21 = OUTLINED_FUNCTION_41_0();
      sub_26814F5CC(v21, v22);
      return (v18 & 1) != 0;
    }

LABEL_6:
    v12 = OUTLINED_FUNCTION_32_2();
    sub_26814F5CC(v12, v13);
    v14 = OUTLINED_FUNCTION_69();
    sub_26814F5CC(v14, v15);
    return 0;
  }

  if (v8 >> 60 != 15)
  {
    goto LABEL_6;
  }

  v10 = OUTLINED_FUNCTION_32_2();
  sub_26814F5CC(v10, v11);
  return 1;
}

uint64_t sub_268149884(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7107189 && a2 == 0xE300000000000000;
  if (v3 || (sub_2683D0598() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4D6465646F636E65 && a2 == 0xEF61746164617465)
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

uint64_t sub_268149954(char a1)
{
  OUTLINED_FUNCTION_79();
  MEMORY[0x26D617190](a1 & 1);
  return sub_2683D06D8();
}

uint64_t sub_268149994(char a1)
{
  if (a1)
  {
    return 0x4D6465646F636E65;
  }

  else
  {
    return 7107189;
  }
}

uint64_t sub_2681499D0()
{
  v1 = *v0;
  sub_2683D0698();
  v2 = OUTLINED_FUNCTION_119();
  MEMORY[0x26D617190](v2);
  return sub_2683D06D8();
}

uint64_t sub_268149A18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_268149884(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_268149A40(uint64_t a1)
{
  v2 = sub_26814F5E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268149A7C(uint64_t a1)
{
  v2 = sub_26814F5E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Snippet.Reminder.URLAttachment.encode(to:)(void *a1)
{
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D7C0, &qword_2683D2D70);
  OUTLINED_FUNCTION_0_3(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_28_2();
  v12 = a1[4];
  OUTLINED_FUNCTION_57_0(a1, a1[3]);
  sub_26814F5E0();
  sub_2683D0718();
  sub_2683CB438();
  OUTLINED_FUNCTION_0_10();
  sub_26814EEB8(v13);
  sub_2683D0548();
  if (!v2)
  {
    v14 = (v4 + *(type metadata accessor for Snippet.Reminder.URLAttachment(0) + 20));
    v16 = *v14;
    v17 = v14[1];
    sub_26814F5B8(*v14, v17);
    sub_26814F4B8();
    sub_2683D0508();
    sub_26814F5CC(v16, v17);
  }

  return (*(v8 + 8))(v3, v6);
}

uint64_t Snippet.Reminder.URLAttachment.hash(into:)()
{
  OUTLINED_FUNCTION_24_4();
  sub_2683CB438();
  OUTLINED_FUNCTION_0_10();
  sub_26814EEB8(v1);
  OUTLINED_FUNCTION_55_0();
  sub_2683CFA08();
  OUTLINED_FUNCTION_56_0();
  v3 = (v0 + v2);
  if (v3[1] >> 60 == 15)
  {
    return OUTLINED_FUNCTION_95();
  }

  v5 = *v3;
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_60();

  return sub_2683CB478();
}

uint64_t Snippet.Reminder.URLAttachment.hashValue.getter()
{
  OUTLINED_FUNCTION_79();
  sub_2683CB438();
  OUTLINED_FUNCTION_0_10();
  v2 = sub_26814EEB8(v1);
  OUTLINED_FUNCTION_87(v2, v3, v4, v5, v6, v7, v8, v9, v14, v15);
  sub_2683CFA08();
  OUTLINED_FUNCTION_56_0();
  v11 = (v0 + v10);
  if (v11[1] >> 60 == 15)
  {
    sub_2683D06B8();
  }

  else
  {
    v12 = *v11;
    sub_2683D06B8();
    sub_2683CB478();
  }

  return sub_2683D06D8();
}

void Snippet.Reminder.URLAttachment.init(from:)()
{
  OUTLINED_FUNCTION_63_0();
  v2 = v1;
  v30 = v3;
  v32 = sub_2683CB438();
  v4 = OUTLINED_FUNCTION_0_3(v32);
  v31 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_14_3();
  v10 = v9 - v8;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D7D0, &qword_2683D2D78);
  OUTLINED_FUNCTION_0_3(v33);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_84();
  v14 = type metadata accessor for Snippet.Reminder.URLAttachment(0);
  v15 = OUTLINED_FUNCTION_23(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_14_3();
  v20 = v19 - v18;
  v22 = v19 - v18 + *(v21 + 28);
  *v22 = xmmword_2683D2C70;
  v23 = v2[3];
  v24 = v2[4];
  v25 = OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_57_0(v25, v26);
  sub_26814F5E0();
  sub_2683D06F8();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_0(v2);
    sub_26814F5CC(*v22, *(v22 + 8));
  }

  else
  {
    LOBYTE(v34) = 0;
    OUTLINED_FUNCTION_0_10();
    sub_26814EEB8(v27);
    sub_2683D04A8();
    (*(v31 + 32))(v20, v10, v32);
    sub_26814F50C();
    sub_2683D0468();
    v28 = OUTLINED_FUNCTION_51_1();
    v29(v28);
    sub_26814F5CC(*v22, *(v22 + 8));
    *v22 = v34;
    *(v22 + 8) = v35;
    sub_26814F07C(v20, v30);
    __swift_destroy_boxed_opaque_existential_0(v2);
    sub_26814F0D4();
  }

  OUTLINED_FUNCTION_62();
}

uint64_t sub_26814A114(uint64_t a1, uint64_t a2)
{
  sub_2683D0698();
  sub_2683CB438();
  sub_26814EEB8(&unk_28024D760);
  sub_2683CFA08();
  v4 = (v2 + *(a2 + 20));
  if (v4[1] >> 60 == 15)
  {
    sub_2683D06B8();
  }

  else
  {
    v5 = *v4;
    sub_2683D06B8();
    sub_2683CB478();
  }

  return sub_2683D06D8();
}

void static Snippet.Reminder.== infix(_:_:)()
{
  OUTLINED_FUNCTION_30_0();
  v4 = v3;
  v6 = v5;
  v156 = type metadata accessor for Snippet.Reminder.AppLink(0);
  v7 = OUTLINED_FUNCTION_1(v156);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_14_3();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5D8, &qword_2683D4260);
  OUTLINED_FUNCTION_23(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_5_0();
  v157 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D7D8, &qword_2683D2D80);
  OUTLINED_FUNCTION_1(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_84();
  v22 = type metadata accessor for Snippet.Reminder.LocationTrigger(0);
  v23 = OUTLINED_FUNCTION_1(v22);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_52_0();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5C8, &unk_2683D2C90);
  OUTLINED_FUNCTION_23(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_48_1();
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D7E0, &qword_2683D2D88);
  OUTLINED_FUNCTION_1(v158);
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v32);
  v34 = &v147 - v33;
  if ((sub_2683CB568() & 1) == 0)
  {
    goto LABEL_87;
  }

  v35 = *(type metadata accessor for Snippet.Reminder(0) + 20);
  OUTLINED_FUNCTION_111();
  if (!v36)
  {
    if (v37)
    {
      goto LABEL_87;
    }

LABEL_11:
    v43 = *(v40 + 24);
    v44 = *(v6 + v43);
    v45 = *(v6 + v43 + 8);
    v46 = (v4 + v43);
    if (v44 != *v46 || v45 != v46[1])
    {
      OUTLINED_FUNCTION_64_0();
      OUTLINED_FUNCTION_58_0();
      if ((v48 & 1) == 0)
      {
        goto LABEL_87;
      }
    }

    v49 = *(v40 + 28);
    OUTLINED_FUNCTION_111();
    if (v50)
    {
      if (!v51)
      {
        goto LABEL_87;
      }

      v154 = v6;
      v55 = v4;
      if (*v52 != *v53 || v50 != v51)
      {
        v57 = v54;
        v58 = sub_2683D0598();
        v54 = v57;
        if ((v58 & 1) == 0)
        {
          goto LABEL_87;
        }
      }
    }

    else
    {
      v154 = v6;
      v55 = v4;
      if (v51)
      {
        goto LABEL_87;
      }
    }

    v150 = v12;
    v151 = v2;
    v59 = (v154 + v54[8]);
    v60 = v54;
    memcpy(v172, v59, 0x61uLL);
    v152 = v55;
    v153 = v60;
    v61 = (v55 + v60[8]);
    memcpy(v173, v61, 0x61uLL);
    v170 = *v59;
    v171 = v59[2];
    v62 = v172[3];
    memcpy(v169, v59 + 4, sizeof(v169));
    *&v168[7] = *v61;
    *&v168[23] = v61[2];
    v63 = v173[3];
    memcpy(v167, v61 + 4, sizeof(v167));
    if (v172[3])
    {
      OUTLINED_FUNCTION_109();
      *&v163[24] = v62;
      OUTLINED_FUNCTION_123();
      memcpy(v162, v163, 0x61uLL);
      v64 = v63;
      if (v63)
      {
        *v161 = *v61;
        *&v161[16] = v61[2];
        memcpy(&v161[32], v61 + 4, 0x41uLL);
        *&v161[24] = v63;
        OUTLINED_FUNCTION_99(v172);
        OUTLINED_FUNCTION_99(v173);
        OUTLINED_FUNCTION_99(v163);
        v65 = static Snippet.ReminderList.== infix(_:_:)(v162, v161);
        memcpy(v159, v161, 0x61uLL);
        sub_26814F740(v159);
        memcpy(v160, v162, 0x61uLL);
        sub_26814F740(v160);
        *v161 = v170;
        *&v161[16] = v171;
        *&v161[24] = v62;
        memcpy(&v161[32], v169, 0x41uLL);
        sub_26812D9E0(v161, &qword_28024D5C0, &unk_2683D2C80);
        if (!v65)
        {
          goto LABEL_87;
        }

LABEL_35:
        v71 = v153;
        v70 = v154;
        v72 = v153[9];
        v73 = v152;
        if ((sub_2683CB878() & 1) == 0)
        {
          goto LABEL_87;
        }

        v74 = v71[10];
        if ((sub_2683CB878() & 1) == 0)
        {
          goto LABEL_87;
        }

        v75 = v71[11];
        if ((sub_2683CB878() & 1) == 0)
        {
          goto LABEL_87;
        }

        v155 = v1;
        v76 = v71[12];
        v77 = *(v158 + 48);
        sub_26812DA38(v70 + v76, v34, &qword_28024D5C8, &unk_2683D2C90);
        v78 = v73 + v76;
        v79 = v77;
        sub_26812DA38(v78, &v34[v77], &qword_28024D5C8, &unk_2683D2C90);
        OUTLINED_FUNCTION_72(v34, 1, v22);
        if (v41)
        {
          OUTLINED_FUNCTION_72(&v34[v77], 1, v22);
          if (v41)
          {
            sub_26812D9E0(v34, &qword_28024D5C8, &unk_2683D2C90);
            goto LABEL_43;
          }
        }

        else
        {
          v104 = v155;
          sub_26812DA38(v34, v155, &qword_28024D5C8, &unk_2683D2C90);
          OUTLINED_FUNCTION_72(&v34[v79], 1, v22);
          if (!v105)
          {
            OUTLINED_FUNCTION_42_1();
            sub_26814F6E8(&v34[v79], v0);
            v106 = *v104 == *v0 && v104[1] == v0[1];
            if (v106 || (sub_2683D0598() & 1) != 0)
            {
              v107 = *(v22 + 20);
              sub_268144FE8();
              if (sub_2683CB878())
              {
                v108 = *(v22 + 24);
                v109 = sub_2683CB878();
                sub_26814F0D4();
                OUTLINED_FUNCTION_19_2();
                sub_26814F0D4();
                sub_26812D9E0(v34, &qword_28024D5C8, &unk_2683D2C90);
                if ((v109 & 1) == 0)
                {
                  goto LABEL_87;
                }

LABEL_43:
                v80 = v153;
                v81 = v153[13];
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5D0, &unk_2683D2CA0);
                sub_26814F634();
                if ((sub_2683CB878() & 1) == 0)
                {
                  goto LABEL_87;
                }

                v155 = v18;
                v82 = v80[14];
                v83 = *(v70 + v82);
                v84 = *(v70 + v82 + 8);
                v85 = *(v70 + v82 + 16);
                v86 = *(v70 + v82 + 24);
                v87 = (v73 + v82);
                v89 = *v87;
                v88 = v87[1];
                v90 = v87[2];
                v91 = v87[3];
                v158 = v85;
                if (v84)
                {
                  if (v88)
                  {
                    v92 = v83 == v89 && v84 == v88;
                    v149 = v83;
                    if (!v92)
                    {
                      OUTLINED_FUNCTION_44();
                      v93 = sub_2683D0598();
                      v85 = v158;
                      if ((v93 & 1) == 0)
                      {
                        v135 = OUTLINED_FUNCTION_44();
                        OUTLINED_FUNCTION_129(v135, v136);
                        v137 = OUTLINED_FUNCTION_17_2();
                        sub_2681441DC(v137, v138);
                        v139 = OUTLINED_FUNCTION_44();
                        sub_2681441DC(v139, v140);
                        v141 = OUTLINED_FUNCTION_17_2();
                        sub_268144260(v141, v142);
LABEL_85:

                        OUTLINED_FUNCTION_27_0();
                        goto LABEL_86;
                      }
                    }

                    if (v85 == v90 && v86 == v91)
                    {
                      v120 = OUTLINED_FUNCTION_44();
                      OUTLINED_FUNCTION_129(v120, v121);
                      v122 = OUTLINED_FUNCTION_17_2();
                      sub_2681441DC(v122, v123);
                      v124 = OUTLINED_FUNCTION_44();
                      sub_2681441DC(v124, v125);
                      v126 = OUTLINED_FUNCTION_17_2();
                      sub_268144260(v126, v127);
                    }

                    else
                    {
                      v95 = sub_2683D0598();
                      v147 = v91;
                      v148 = v95;
                      OUTLINED_FUNCTION_27_0();
                      sub_2681441DC(v96, v97);
                      v98 = OUTLINED_FUNCTION_17_2();
                      sub_2681441DC(v98, v99);
                      OUTLINED_FUNCTION_27_0();
                      sub_2681441DC(v100, v101);
                      v102 = OUTLINED_FUNCTION_17_2();
                      sub_268144260(v102, v103);
                      if ((v148 & 1) == 0)
                      {
                        goto LABEL_85;
                      }
                    }

                    goto LABEL_78;
                  }

                  v112 = OUTLINED_FUNCTION_44();
                  OUTLINED_FUNCTION_129(v112, v113);
                  OUTLINED_FUNCTION_124();
                  v114 = OUTLINED_FUNCTION_44();
                  sub_2681441DC(v114, v115);
                }

                else
                {
                  OUTLINED_FUNCTION_129(v83, 0);
                  if (!v88)
                  {
                    OUTLINED_FUNCTION_124();
LABEL_78:
                    OUTLINED_FUNCTION_27_0();
                    sub_268144260(v128, v129);
                    v130 = v153;
                    if ((sub_26814AD6C(*(v70 + v153[15]), *(v73 + v153[15])) & 1) == 0)
                    {
                      goto LABEL_87;
                    }

                    v131 = v130[16];
                    v132 = *(v155 + 48);
                    v133 = v151;
                    sub_26812DA38(v70 + v131, v151, &qword_28024D5D8, &qword_2683D4260);
                    sub_26812DA38(v73 + v131, v133 + v132, &qword_28024D5D8, &qword_2683D4260);
                    v134 = v156;
                    OUTLINED_FUNCTION_72(v133, 1, v156);
                    if (v41)
                    {
                      OUTLINED_FUNCTION_72(v133 + v132, 1, v134);
                      if (v41)
                      {
                        sub_26812D9E0(v151, &qword_28024D5D8, &qword_2683D4260);
                        goto LABEL_93;
                      }
                    }

                    else
                    {
                      sub_26812DA38(v133, v157, &qword_28024D5D8, &qword_2683D4260);
                      OUTLINED_FUNCTION_72(v133 + v132, 1, v134);
                      if (!v143)
                      {
                        OUTLINED_FUNCTION_4_4();
                        v144 = v151;
                        sub_26814F6E8(&v151[v132], v150);
                        static Snippet.Reminder.AppLink.== infix(_:_:)();
                        v146 = v145;
                        sub_26814F0D4();
                        sub_26814F0D4();
                        sub_26812D9E0(v144, &qword_28024D5D8, &qword_2683D4260);
                        if ((v146 & 1) == 0)
                        {
                          goto LABEL_87;
                        }

LABEL_93:
                        sub_26814B760(*(v70 + v153[17]), *(v73 + v153[17]));
                        goto LABEL_87;
                      }

                      OUTLINED_FUNCTION_11_6();
                      sub_26814F0D4();
                    }

                    v67 = &qword_28024D7D8;
                    v68 = &qword_2683D2D80;
                    v69 = v151;
LABEL_33:
                    sub_26812D9E0(v69, v67, v68);
                    goto LABEL_87;
                  }

                  v110 = OUTLINED_FUNCTION_17_2();
                  sub_2681441DC(v110, v111);
                }

                OUTLINED_FUNCTION_27_0();
                sub_268144260(v116, v117);
                v118 = OUTLINED_FUNCTION_17_2();
LABEL_86:
                sub_268144260(v118, v119);
                goto LABEL_87;
              }
            }

            sub_26814F0D4();
            sub_26814F0D4();
            v67 = &qword_28024D5C8;
            v68 = &unk_2683D2C90;
LABEL_70:
            v69 = v34;
            goto LABEL_33;
          }

          OUTLINED_FUNCTION_13_6();
          sub_26814F0D4();
        }

        v67 = &qword_28024D7E0;
        v68 = &qword_2683D2D88;
        goto LABEL_70;
      }

      v66 = v62;
      memcpy(v161, v163, sizeof(v161));
      OUTLINED_FUNCTION_98(v172);
      OUTLINED_FUNCTION_98(v173);
      OUTLINED_FUNCTION_98(v163);
      sub_26814F740(v161);
    }

    else
    {
      if (!v173[3])
      {
        OUTLINED_FUNCTION_109();
        *&v163[24] = 0;
        OUTLINED_FUNCTION_123();
        sub_26812DA38(v172, v162, &qword_28024D5C0, &unk_2683D2C80);
        sub_26812DA38(v173, v162, &qword_28024D5C0, &unk_2683D2C80);
        sub_26812D9E0(v163, &qword_28024D5C0, &unk_2683D2C80);
        goto LABEL_35;
      }

      v66 = 0;
      sub_26812DA38(v172, v163, &qword_28024D5C0, &unk_2683D2C80);
      sub_26812DA38(v173, v163, &qword_28024D5C0, &unk_2683D2C80);
      v64 = v63;
    }

    *v163 = v170;
    *&v163[16] = v171;
    *&v163[24] = v66;
    memcpy(&v163[32], v169, 0x41uLL);
    *v164 = *v168;
    *&v164[15] = *&v168[15];
    v165 = v64;
    memcpy(v166, v167, sizeof(v166));
    v67 = &qword_28024D7E8;
    v68 = &qword_2683D2D90;
    v69 = v163;
    goto LABEL_33;
  }

  if (v37)
  {
    v41 = *v38 == *v39 && v36 == v37;
    if (v41)
    {
      goto LABEL_11;
    }

    OUTLINED_FUNCTION_64_0();
    OUTLINED_FUNCTION_58_0();
    if (v42)
    {
      goto LABEL_11;
    }
  }

LABEL_87:
  OUTLINED_FUNCTION_29_0();
}

uint64_t sub_26814AD6C(uint64_t a1, uint64_t a2)
{
  __s1[3] = *MEMORY[0x277D85DE8];
  v80 = type metadata accessor for Snippet.Reminder.URLAttachment(0);
  v4 = *(*(v80 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v80);
  v7 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v10 = &v73 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    goto LABEL_105;
  }

  if (!v11 || a1 == a2)
  {
LABEL_100:
    result = 1;
    goto LABEL_106;
  }

  v77 = 0;
  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = a1 + v12;
  v14 = a2 + v12;
  v79 = *(v8 + 72);
  while (1)
  {
    sub_26814F07C(v13, v10);
    sub_26814F07C(v14, v7);
    if ((sub_2683CB3D8() & 1) == 0)
    {
      goto LABEL_104;
    }

    v15 = *(v80 + 20);
    v16 = *&v10[v15];
    v17 = *&v10[v15 + 8];
    v18 = &v7[v15];
    v19 = *v18;
    v20 = v18[1];
    if (v17 >> 60 == 15)
    {
      if (v20 >> 60 != 15)
      {
        break;
      }

      sub_26814F5B8(v16, v17);
      sub_26814F5B8(v19, v20);
LABEL_47:
      v26 = v16;
      v27 = v17;
      goto LABEL_48;
    }

    if (v20 >> 60 == 15)
    {
      break;
    }

    v21 = v17 >> 62;
    v22 = HIDWORD(v16);
    v23 = v20 >> 62;
    if (v20 >> 60 == 14)
    {
      if (v16)
      {
        v24 = 0;
      }

      else
      {
        v24 = v17 == 0xC000000000000000;
      }

      v28 = 0;
      v25 = v24 && v20 >> 62 == 3;
      if (v25 && !v19 && v20 == 0xC000000000000000)
      {
        sub_26814F5B8(0, 0xC000000000000000);
        sub_26814F5B8(0, 0xC000000000000000);
        sub_26814F5CC(0, 0xC000000000000000);
        v26 = 0;
        v27 = 0xC000000000000000;
LABEL_48:
        sub_26814F5CC(v26, v27);
        sub_26814F0D4();
        sub_26814F0D4();
        goto LABEL_49;
      }
    }

    else
    {
      v28 = 0;
      switch(v21)
      {
        case 0uLL:
          v28 = BYTE6(v17);
          break;
        case 1uLL:
          if (__OFSUB__(HIDWORD(v16), v16))
          {
            goto LABEL_110;
          }

          v28 = HIDWORD(v16) - v16;
          break;
        case 2uLL:
          v30 = *(v16 + 16);
          v29 = *(v16 + 24);
          v31 = __OFSUB__(v29, v30);
          v28 = v29 - v30;
          if (!v31)
          {
            break;
          }

          goto LABEL_109;
        case 3uLL:
          break;
        default:
          goto LABEL_127;
      }
    }

    switch(v23)
    {
      case 1uLL:
        LODWORD(v32) = HIDWORD(v19) - v19;
        if (__OFSUB__(HIDWORD(v19), v19))
        {
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
        }

        v32 = v32;
LABEL_37:
        if (v28 != v32)
        {
LABEL_102:
          sub_26814F5B8(v16, v17);
          sub_26814F5B8(v19, v20);
          sub_26814F5CC(v19, v20);
          v70 = v16;
          v71 = v17;
          goto LABEL_103;
        }

        if (v28 < 1)
        {
LABEL_46:
          sub_26814F5B8(v16, v17);
          sub_26814F5B8(v19, v20);
          sub_26814F5CC(v19, v20);
          goto LABEL_47;
        }

        v78 = v16;
        v35 = v19 >> 32;
        switch(v21)
        {
          case 1:
            v46 = v78;
            v76 = v78 >> 32;
            if (v46 >> 32 < v46)
            {
              goto LABEL_111;
            }

            v75 = v78;
            sub_26814F5B8(v19, v20);
            sub_26814F5B8(v19, v20);
            sub_26814F5B8(v46, v17);
            sub_26814F5B8(v19, v20);
            sub_26814F5B8(v19, v20);
            v47 = sub_2683CAF58();
            if (v47)
            {
              v48 = v47;
              v49 = sub_2683CAF78();
              if (__OFSUB__(v75, v49))
              {
                goto LABEL_114;
              }

              v74 = (v75 - v49 + v48);
            }

            else
            {
              v74 = 0;
            }

LABEL_70:
            sub_2683CAF68();
            v51 = v77;
            sub_26814DF4C(v74, v19, v20, __s1);
            sub_26814F5CC(v19, v20);
            sub_26814F5CC(v19, v20);
            sub_268143054(v19, v20);
            v77 = v51;
            if (v51)
            {
              goto LABEL_126;
            }

            v52 = __s1[0];
            sub_268143054(v19, v20);
            goto LABEL_98;
          case 2:
            v38 = v78;
            v39 = *(v78 + 16);
            v75 = *(v78 + 24);
            v76 = v39;
            sub_26814F5B8(v19, v20);
            sub_26814F5B8(v19, v20);
            sub_26814F5B8(v38, v17);
            sub_26814F5B8(v19, v20);
            sub_26814F5B8(v19, v20);
            v40 = sub_2683CAF58();
            if (v40)
            {
              v41 = v40;
              v42 = sub_2683CAF78();
              v43 = v76;
              if (__OFSUB__(v76, v42))
              {
                goto LABEL_113;
              }

              v74 = (v76 - v42 + v41);
            }

            else
            {
              v74 = 0;
              v43 = v76;
            }

            if (!__OFSUB__(v75, v43))
            {
              goto LABEL_70;
            }

            goto LABEL_112;
          case 3:
            memset(__s1, 0, 14);
            if (v23 == 2)
            {
              v53 = *(v19 + 16);
              v75 = *(v19 + 24);
              v76 = v53;
              sub_26814F5B8(v19, v20);
              sub_26814F5B8(v78, v17);
              sub_26814F5B8(v19, v20);
              v54 = sub_2683CAF58();
              if (v54)
              {
                v55 = v54;
                v56 = sub_2683CAF78();
                v57 = v76;
                if (__OFSUB__(v76, v56))
                {
                  goto LABEL_120;
                }

                v74 = (v76 - v56 + v55);
              }

              else
              {
                v74 = 0;
                v57 = v76;
              }

              v64 = v75 - v57;
              if (__OFSUB__(v75, v57))
              {
                goto LABEL_117;
              }

              v65 = sub_2683CAF68();
              v66 = v74;
              if (!v74)
              {
                __break(1u);
LABEL_123:
                __break(1u);
LABEL_124:
                __break(1u);
LABEL_125:
                __break(1u);
LABEL_126:

                __break(1u);
LABEL_127:
                JUMPOUT(0);
              }

              goto LABEL_85;
            }

            if (v23 != 1)
            {
LABEL_64:
              __s2 = v19;
              v82 = v20;
              v83 = BYTE2(v20);
              v84 = BYTE3(v20);
              v85 = BYTE4(v20);
              v86 = BYTE5(v20);
              sub_26814F5B8(v78, v17);
              sub_26814F5B8(v19, v20);
              v50 = memcmp(__s1, &__s2, BYTE6(v20));
              sub_26814F5CC(v19, v20);
              goto LABEL_97;
            }

            v76 = v19;
            if (v35 < v19)
            {
              goto LABEL_116;
            }

            sub_26814F5B8(v19, v20);
            sub_26814F5B8(v78, v17);
            sub_26814F5B8(v19, v20);
            v44 = sub_2683CAF58();
            if (v44)
            {
              v75 = v44;
              v45 = sub_2683CAF78();
              if (__OFSUB__(v76, v45))
              {
                goto LABEL_121;
              }

              v75 += v76 - v45;
            }

            else
            {
              v75 = 0;
            }

            v68 = sub_2683CAF68();
            v66 = v75;
            if (!v75)
            {
              goto LABEL_125;
            }

            goto LABEL_93;
          default:
            LODWORD(__s1[0]) = v78;
            BYTE4(__s1[0]) = v22;
            *(__s1 + 5) = *(&v78 + 5);
            HIBYTE(__s1[0]) = HIBYTE(v78);
            LOWORD(__s1[1]) = v17;
            BYTE2(__s1[1]) = BYTE2(v17);
            BYTE3(__s1[1]) = BYTE3(v17);
            BYTE4(__s1[1]) = BYTE4(v17);
            BYTE5(__s1[1]) = BYTE5(v17);
            if (!v23)
            {
              goto LABEL_64;
            }

            if (v23 == 1)
            {
              v76 = v19;
              if (v35 < v19)
              {
                goto LABEL_115;
              }

              sub_26814F5B8(v19, v20);
              sub_26814F5B8(v78, v17);
              sub_26814F5B8(v19, v20);
              v36 = sub_2683CAF58();
              if (v36)
              {
                v75 = v36;
                v37 = sub_2683CAF78();
                if (__OFSUB__(v76, v37))
                {
                  goto LABEL_122;
                }

                v75 += v76 - v37;
              }

              else
              {
                v75 = 0;
              }

              v68 = sub_2683CAF68();
              v66 = v75;
              if (!v75)
              {
                goto LABEL_124;
              }

LABEL_93:
              if (v68 >= v35 - v76)
              {
                v67 = v35 - v76;
              }

              else
              {
                v67 = v68;
              }
            }

            else
            {
              v58 = *(v19 + 16);
              v75 = *(v19 + 24);
              v76 = v58;
              sub_26814F5B8(v19, v20);
              sub_26814F5B8(v78, v17);
              sub_26814F5B8(v19, v20);
              v59 = sub_2683CAF58();
              if (v59)
              {
                v60 = v59;
                v61 = sub_2683CAF78();
                v62 = v76;
                if (__OFSUB__(v76, v61))
                {
                  goto LABEL_119;
                }

                v63 = v76 - v61 + v60;
              }

              else
              {
                v63 = 0;
                v62 = v76;
              }

              v76 = v63;
              v64 = v75 - v62;
              if (__OFSUB__(v75, v62))
              {
                goto LABEL_118;
              }

              v65 = sub_2683CAF68();
              v66 = v76;
              if (!v76)
              {
                goto LABEL_123;
              }

LABEL_85:
              if (v65 >= v64)
              {
                v67 = v64;
              }

              else
              {
                v67 = v65;
              }
            }

            v50 = memcmp(__s1, v66, v67);
            sub_26814F5CC(v19, v20);
            sub_268143054(v19, v20);
LABEL_97:
            v52 = v50 == 0;
LABEL_98:
            sub_26814F5CC(v78, v17);
            sub_26814F0D4();
            sub_26814F0D4();
            if ((v52 & 1) == 0)
            {
              goto LABEL_105;
            }

            break;
        }

        break;
      case 2uLL:
        v34 = *(v19 + 16);
        v33 = *(v19 + 24);
        v31 = __OFSUB__(v33, v34);
        v32 = v33 - v34;
        if (!v31)
        {
          goto LABEL_37;
        }

        goto LABEL_108;
      case 3uLL:
        if (v28)
        {
          goto LABEL_102;
        }

        goto LABEL_46;
      default:
        v32 = BYTE6(v20);
        goto LABEL_37;
    }

LABEL_49:
    v14 += v79;
    v13 += v79;
    if (!--v11)
    {
      goto LABEL_100;
    }
  }

  sub_26814F5B8(v16, v17);
  sub_26814F5B8(v19, v20);
  sub_26814F5CC(v16, v17);
  v70 = v19;
  v71 = v20;
LABEL_103:
  sub_26814F5CC(v70, v71);
LABEL_104:
  sub_26814F0D4();
  sub_26814F0D4();
LABEL_105:
  result = 0;
LABEL_106:
  v72 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_26814B760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_130();
  a17 = v19;
  a18 = v20;
  v22 = v21;
  v24 = v23;
  v25 = type metadata accessor for Snippet.Reminder(0);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v25 - 8);
  v29 = &a9 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v32 = &a9 - v31;
  v33 = *(v24 + 16);
  if (v33 == *(v22 + 16) && v33 && v24 != v22)
  {
    v34 = (*(v30 + 80) + 32) & ~*(v30 + 80);
    v35 = v24 + v34;
    v36 = v22 + v34;
    v37 = *(v30 + 72);
    do
    {
      sub_26814F07C(v35, v32);
      sub_26814F07C(v36, v29);
      OUTLINED_FUNCTION_41_0();
      static Snippet.Reminder.== infix(_:_:)();
      OUTLINED_FUNCTION_38_1();
      sub_26814F0D4();
      sub_26814F0D4();
      if ((v18 & 1) == 0)
      {
        break;
      }

      v36 += v37;
      v35 += v37;
      --v33;
    }

    while (v33);
  }

  OUTLINED_FUNCTION_131();
}

void sub_26814B8FC()
{
  OUTLINED_FUNCTION_30_0();
  v5 = v4;
  v6 = OUTLINED_FUNCTION_24_4();
  v7 = type metadata accessor for Snippet.Reminder(v6);
  v8 = OUTLINED_FUNCTION_3_1(v7);
  v81 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_19_3();
  v80 = v12 - v13;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v14);
  v16 = &v66 - v15;
  v17 = type metadata accessor for Snippet.SectionHeading();
  v18 = OUTLINED_FUNCTION_1(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_110();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DAF8, &qword_2683E3440);
  OUTLINED_FUNCTION_23(v21);
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_28_2();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DB00, &qword_2683D4180);
  OUTLINED_FUNCTION_1(v25);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_49_1();
  v77 = type metadata accessor for Snippet.ReminderSearchResult.Section(0);
  v29 = *(*(v77 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v77);
  v32 = &v66 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v35 = &v66 - v34;
  v36 = *(v0 + 16);
  if (v36 == *(v5 + 16) && v36 && v0 != v5)
  {
    v37 = (*(v33 + 80) + 32) & ~*(v33 + 80);
    v72 = v25;
    v73 = v5 + v37;
    v38 = 0;
    v74 = *(v33 + 72);
    v75 = v0 + v37;
    v78 = v36;
    v79 = &v66 - v34;
    while (1)
    {
      v39 = v74 * v38;
      OUTLINED_FUNCTION_35_1();
      sub_26814F07C(v40 + v39, v35);
      if (v38 == v78)
      {
        break;
      }

      sub_26814F07C(v73 + v39, v32);
      v41 = *(v25 + 48);
      sub_26812DA38(v35, v3, &qword_28024DAF8, &qword_2683E3440);
      sub_26812DA38(v32, v3 + v41, &qword_28024DAF8, &qword_2683E3440);
      OUTLINED_FUNCTION_72(v3, 1, v17);
      v76 = v38;
      if (v45)
      {
        OUTLINED_FUNCTION_72(v3 + v41, 1, v17);
        if (!v45)
        {
          goto LABEL_33;
        }

        OUTLINED_FUNCTION_74();
        sub_26812D9E0(v42, v43, v44);
      }

      else
      {
        sub_26812DA38(v3, v2, &qword_28024DAF8, &qword_2683E3440);
        OUTLINED_FUNCTION_72(v3 + v41, 1, v17);
        if (v45)
        {
          OUTLINED_FUNCTION_33_2();
          sub_26814F0D4();
LABEL_33:
          sub_26812D9E0(v3, &qword_28024DB00, &qword_2683D4180);
LABEL_34:
          OUTLINED_FUNCTION_12_3();
          sub_26814F0D4();
          sub_26814F0D4();
          goto LABEL_35;
        }

        OUTLINED_FUNCTION_34_2();
        sub_26814F6E8(v3 + v41, v1);
        v46 = OUTLINED_FUNCTION_69();
        v48 = static Snippet.SectionHeading.== infix(_:_:)(v46, v47);
        sub_26814F0D4();
        sub_26814F0D4();
        OUTLINED_FUNCTION_74();
        sub_26812D9E0(v49, v50, v51);
        if ((v48 & 1) == 0)
        {
          goto LABEL_34;
        }
      }

      v52 = *(v77 + 20);
      v53 = *&v79[v52];
      v54 = v79[v52 + 8];
      v55 = &v32[v52];
      v56 = *v55;
      v57 = v55[8];
      if (v54)
      {
        if ((v57 & 1) == 0)
        {
          goto LABEL_34;
        }

        v59 = sub_26814B8FC(v58, v56);

        OUTLINED_FUNCTION_12_3();
        sub_26814F0D4();
        v35 = v79;
        sub_26814F0D4();
        if ((v59 & 1) == 0)
        {
          goto LABEL_35;
        }
      }

      else
      {
        if (v57)
        {
          goto LABEL_34;
        }

        v60 = *(v53 + 16);
        if (v60 != *(v56 + 16))
        {
          goto LABEL_34;
        }

        if (v60 && v53 != v56)
        {
          v70 = v17;
          v71 = v32;
          v67 = v3;
          v68 = v2;
          v69 = v1;
          v61 = (*(v81 + 80) + 32) & ~*(v81 + 80);
          v62 = v53 + v61;
          v63 = v56 + v61;

          v64 = 0;
          while (v64 < *(v53 + 16))
          {
            v65 = *(v81 + 72) * v64;
            OUTLINED_FUNCTION_5_4();
            sub_26814F07C(v62 + v65, v16);
            if (v64 >= *(v56 + 16))
            {
              goto LABEL_37;
            }

            OUTLINED_FUNCTION_5_4();
            sub_26814F07C(v63 + v65, v80);
            static Snippet.Reminder.== infix(_:_:)();
            OUTLINED_FUNCTION_38_1();
            sub_26814F0D4();
            sub_26814F0D4();
            if ((v65 & 1) == 0)
            {

              goto LABEL_34;
            }

            if (v60 == ++v64)
            {

              v1 = v69;
              v17 = v70;
              v3 = v67;
              v2 = v68;
              v32 = v71;
              goto LABEL_27;
            }
          }

          __break(1u);
LABEL_37:
          __break(1u);
          break;
        }

LABEL_27:
        OUTLINED_FUNCTION_12_3();
        sub_26814F0D4();
        v35 = v79;
        sub_26814F0D4();
      }

      v38 = v76 + 1;
      v25 = v72;
      if (v76 + 1 == v78)
      {
        goto LABEL_35;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_35:
    OUTLINED_FUNCTION_29_0();
  }
}

uint64_t sub_26814BEB4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_2683D0598() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_26814BF40(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 32);
    for (i = a2 + 32; ; i += 104)
    {
      memcpy(__dst, v3, 0x61uLL);
      memcpy(v15, v3, 0x61uLL);
      OUTLINED_FUNCTION_121();
      memcpy(v5, v6, v7);
      OUTLINED_FUNCTION_121();
      memcpy(v8, v9, v10);
      sub_26814FB60(__dst, v13);
      sub_26814FB60(v17, v13);
      v11 = static Snippet.ReminderList.== infix(_:_:)(v15, __src);
      memcpy(v18, __src, 0x61uLL);
      sub_26814F740(v18);
      memcpy(v19, v15, 0x61uLL);
      sub_26814F740(v19);
      if (!v11)
      {
        break;
      }

      v3 += 104;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

void sub_26814C048()
{
  OUTLINED_FUNCTION_130();
  v2 = *(v0 + 16);
  if (v2 == *(v1 + 16) && v2 && v0 != v1)
  {
    v3 = (v0 + 56);
    v4 = (v1 + 56);
    do
    {
      v5 = *(v3 - 1);
      v6 = *v3;
      v7 = *(v4 - 1);
      v8 = *v4;
      v9 = *(v3 - 3) == *(v4 - 3) && *(v3 - 2) == *(v4 - 2);
      if (!v9 && (sub_2683D0598() & 1) == 0)
      {
        break;
      }

      if (v5 != v7 || v6 != v8)
      {
        OUTLINED_FUNCTION_9_0();
        if ((sub_2683D0598() & 1) == 0)
        {
          break;
        }
      }

      v3 += 4;
      v4 += 4;
      --v2;
    }

    while (v2);
  }

  OUTLINED_FUNCTION_131();
}

uint64_t sub_26814C108(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_2683D0598() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
    if (v6 || (sub_2683D0598() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
      if (v7 || (sub_2683D0598() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x656C746974627573 && a2 == 0xE800000000000000;
        if (v8 || (sub_2683D0598() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 1953720684 && a2 == 0xE400000000000000;
          if (v9 || (sub_2683D0598() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x656C706D6F437369 && a2 == 0xEA00000000006574;
            if (v10 || (sub_2683D0598() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x656C706D6F437369 && a2 == 0xED0000656C626174;
              if (v11 || (sub_2683D0598() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x656767616C467369 && a2 == 0xE900000000000064;
                if (v12 || (sub_2683D0598() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6E6F697461636F6CLL && a2 == 0xEF72656767697254;
                  if (v13 || (sub_2683D0598() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x6C61726F706D6574 && a2 == 0xEF72656767697254;
                    if (v14 || (sub_2683D0598() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000010 && 0x80000002683FD320 == a2;
                      if (v15 || (sub_2683D0598() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x6465686361747461 && a2 == 0xED0000736B6E694CLL;
                        if (v16 || (sub_2683D0598() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x6B6E694C707061 && a2 == 0xE700000000000000;
                          if (v17 || (sub_2683D0598() & 1) != 0)
                          {

                            return 12;
                          }

                          else if (a1 == 0x736B736174627573 && a2 == 0xE800000000000000)
                          {

                            return 13;
                          }

                          else
                          {
                            v19 = sub_2683D0598();

                            if (v19)
                            {
                              return 13;
                            }

                            else
                            {
                              return 14;
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
}

uint64_t sub_26814C558(unsigned __int8 a1)
{
  OUTLINED_FUNCTION_79();
  MEMORY[0x26D617190](a1);
  return sub_2683D06D8();
}

uint64_t sub_26814C598(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x696669746E656469;
      break;
    case 2:
      result = 0x656C746974;
      break;
    case 3:
      v3 = 0x746974627573;
      goto LABEL_13;
    case 4:
      result = 1953720684;
      break;
    case 5:
      result = 0x656C706D6F437369;
      break;
    case 6:
      v3 = 0x706D6F437369;
LABEL_13:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x656C000000000000;
      break;
    case 7:
      result = 0x656767616C467369;
      break;
    case 8:
      result = 0x6E6F697461636F6CLL;
      break;
    case 9:
      result = 0x6C61726F706D6574;
      break;
    case 10:
      result = 0xD000000000000010;
      break;
    case 11:
      result = 0x6465686361747461;
      break;
    case 12:
      result = 0x6B6E694C707061;
      break;
    case 13:
      result = 0x736B736174627573;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26814C72C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26814C108(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26814C754@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26814C550();
  *a1 = result;
  return result;
}

uint64_t sub_26814C77C(uint64_t a1)
{
  v2 = sub_26814F794();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26814C7B8(uint64_t a1)
{
  v2 = sub_26814F794();

  return MEMORY[0x2821FE720](a1, v2);
}

void Snippet.Reminder.encode(to:)()
{
  OUTLINED_FUNCTION_63_0();
  v2 = v0;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D800, &qword_2683D2D98);
  OUTLINED_FUNCTION_0_3(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_18_4();
  v11 = v4[4];
  OUTLINED_FUNCTION_57_0(v4, v4[3]);
  sub_26814F794();
  OUTLINED_FUNCTION_67_0();
  OUTLINED_FUNCTION_108();
  sub_2683D0718();
  v38[0] = 0;
  sub_2683CB598();
  OUTLINED_FUNCTION_9_4();
  sub_26814EEB8(v12);
  OUTLINED_FUNCTION_15_5();
  sub_2683D0548();
  if (!v1)
  {
    v13 = type metadata accessor for Snippet.Reminder(0);
    OUTLINED_FUNCTION_120(v13[5]);
    OUTLINED_FUNCTION_117();
    OUTLINED_FUNCTION_25_3();
    sub_2683D04D8();
    OUTLINED_FUNCTION_120(v13[6]);
    v38[0] = 2;
    OUTLINED_FUNCTION_25_3();
    sub_2683D0518();
    OUTLINED_FUNCTION_120(v13[7]);
    OUTLINED_FUNCTION_25_3();
    sub_2683D04D8();
    v14 = v13[8];
    memcpy(v38, (v2 + v14), 0x61uLL);
    memcpy(v37, (v2 + v14), sizeof(v37));
    sub_26812DA38(v38, v36, &qword_28024D5C0, &unk_2683D2C80);
    sub_26814F7E8();
    OUTLINED_FUNCTION_25_3();
    sub_2683D0508();
    memcpy(v36, v37, 0x61uLL);
    sub_26812D9E0(v36, &qword_28024D5C0, &unk_2683D2C80);
    v15 = v13[9];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A0, &unk_2683D2C30);
    OUTLINED_FUNCTION_1_6();
    sub_268145D30(v16);
    OUTLINED_FUNCTION_25_3();
    sub_2683D0548();
    v17 = v13[10];
    OUTLINED_FUNCTION_25_3();
    sub_2683D0548();
    v18 = v13[11];
    OUTLINED_FUNCTION_25_3();
    sub_2683D0548();
    v19 = v13[12];
    type metadata accessor for Snippet.Reminder.LocationTrigger(0);
    OUTLINED_FUNCTION_40_1();
    sub_26814EEB8(v20);
    OUTLINED_FUNCTION_15_5();
    sub_2683D0508();
    v21 = v13[13];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A8, &unk_2683D2C40);
    OUTLINED_FUNCTION_1_6();
    sub_26814FD3C(v22);
    OUTLINED_FUNCTION_15_5();
    sub_2683D0548();
    v30 = OUTLINED_FUNCTION_120(v13[14]);
    v33 = v24;
    v34 = *(v23 + 16);
    v35 = *(v23 + 24);
    sub_2681441DC(v30, v24);
    sub_26814F9A4();
    OUTLINED_FUNCTION_25_3();
    sub_2683D0508();
    sub_268144260(v30, v33);
    v31 = *(v2 + v13[15]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D858, &unk_2683D2DA0);
    sub_26814F9F8();
    OUTLINED_FUNCTION_15_5();
    sub_2683D0548();
    v25 = v13[16];
    type metadata accessor for Snippet.Reminder.AppLink(0);
    OUTLINED_FUNCTION_39_1();
    sub_26814EEB8(v26);
    OUTLINED_FUNCTION_15_5();
    sub_2683D0508();
    v32 = *(v2 + v13[17]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D878, &unk_2683E40E0);
    sub_26814FAAC();
    OUTLINED_FUNCTION_15_5();
    sub_2683D0548();
  }

  v27 = *(v7 + 8);
  v28 = OUTLINED_FUNCTION_89();
  v29(v28);
  OUTLINED_FUNCTION_62();
}

void Snippet.Reminder.hash(into:)()
{
  OUTLINED_FUNCTION_30_0();
  v2 = v0;
  v4 = v3;
  v52 = type metadata accessor for Snippet.Reminder.AppLink(0);
  v5 = OUTLINED_FUNCTION_1(v52);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_14_3();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5D8, &qword_2683D4260);
  OUTLINED_FUNCTION_23(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_5_0();
  v51 = v15;
  v53 = type metadata accessor for Snippet.Reminder.LocationTrigger(0);
  v16 = OUTLINED_FUNCTION_1(v53);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_14_3();
  v21 = (v20 - v19);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5C8, &unk_2683D2C90);
  OUTLINED_FUNCTION_23(v22);
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_48_1();
  sub_2683CB598();
  OUTLINED_FUNCTION_9_4();
  sub_26814EEB8(v26);
  sub_2683CFA08();
  v27 = type metadata accessor for Snippet.Reminder(0);
  v28 = (v0 + v27[5]);
  if (v28[1])
  {
    v29 = *v28;
    OUTLINED_FUNCTION_104();
    OUTLINED_FUNCTION_114();
    sub_2683CFB48();
  }

  else
  {
    OUTLINED_FUNCTION_100();
  }

  v30 = (v0 + v27[6]);
  v31 = *v30;
  v32 = v30[1];
  sub_2683CFB48();
  v33 = (v0 + v27[7]);
  if (v33[1])
  {
    v34 = *v33;
    OUTLINED_FUNCTION_104();
    OUTLINED_FUNCTION_114();
    sub_2683CFB48();
  }

  else
  {
    OUTLINED_FUNCTION_100();
  }

  v35 = (v0 + v27[8]);
  v61 = *v35;
  v36 = *(v35 + 3);
  v62 = *(v35 + 2);
  memcpy(v60, v35 + 2, sizeof(v60));
  if (v36)
  {
    v54[0] = *v35;
    *&v54[1] = *(v35 + 2);
    memcpy(&v54[2], v35 + 2, 0x41uLL);
    *(&v54[1] + 1) = v36;
    OUTLINED_FUNCTION_104();
    v55 = v61;
    v56 = v62;
    v57 = v36;
    memcpy(v58, v60, sizeof(v58));
    sub_26814FB60(&v55, v59);
    Snippet.ReminderList.hash(into:)();
    memcpy(v59, v54, 0x61uLL);
    sub_26814F740(v59);
  }

  else
  {
    OUTLINED_FUNCTION_100();
  }

  v37 = v27[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A0, &unk_2683D2C30);
  sub_268145678();
  OUTLINED_FUNCTION_75();
  v38 = v2 + v27[10];
  OUTLINED_FUNCTION_75();
  v39 = v2 + v27[11];
  OUTLINED_FUNCTION_75();
  sub_26812DA38(v2 + v27[12], v1, &qword_28024D5C8, &unk_2683D2C90);
  OUTLINED_FUNCTION_72(v1, 1, v53);
  if (v40)
  {
    OUTLINED_FUNCTION_100();
  }

  else
  {
    OUTLINED_FUNCTION_42_1();
    sub_26814F6E8(v1, v21);
    sub_2683D06B8();
    v41 = *v21;
    v42 = v21[1];
    sub_2683CFB48();
    v43 = *(v53 + 20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7A0, &qword_2683D2CB0);
    OUTLINED_FUNCTION_10_3();
    sub_26814FBBC(v44);
    sub_2683CFA08();
    v45 = v21 + *(v53 + 24);
    OUTLINED_FUNCTION_75();
    OUTLINED_FUNCTION_13_6();
    sub_26814F0D4();
  }

  v46 = v27[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A8, &unk_2683D2C40);
  sub_26814FBBC(&unk_28024D898);
  sub_2683CFA08();
  v47 = (v2 + v27[14]);
  if (v47[1])
  {
    v49 = v47[2];
    v48 = v47[3];
    v50 = *v47;
    OUTLINED_FUNCTION_104();
    sub_2683CFB48();
    OUTLINED_FUNCTION_114();
    sub_2683CFB48();
  }

  else
  {
    OUTLINED_FUNCTION_100();
  }

  sub_26814E238(v4, *(v2 + v27[15]));
  sub_26812DA38(v2 + v27[16], v51, &qword_28024D5D8, &qword_2683D4260);
  OUTLINED_FUNCTION_72(v51, 1, v52);
  if (v40)
  {
    OUTLINED_FUNCTION_100();
  }

  else
  {
    OUTLINED_FUNCTION_4_4();
    sub_26814F6E8(v51, v10);
    OUTLINED_FUNCTION_104();
    Snippet.Reminder.AppLink.hash(into:)();
    OUTLINED_FUNCTION_11_6();
    sub_26814F0D4();
  }

  sub_26814E1A8(v4, *(v2 + v27[17]));
  OUTLINED_FUNCTION_29_0();
}

uint64_t sub_26814D238(void (*a1)(_BYTE *))
{
  OUTLINED_FUNCTION_79();
  a1(v3);
  return sub_2683D06D8();
}

void Snippet.Reminder.init(from:)()
{
  OUTLINED_FUNCTION_63_0();
  v143 = v0;
  v149 = v1;
  v125 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5D8, &qword_2683D4260);
  OUTLINED_FUNCTION_23(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5_0();
  v126 = v7;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A8, &unk_2683D2C40);
  OUTLINED_FUNCTION_0_3(v141);
  v138 = v8;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_5_0();
  v127 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5C8, &unk_2683D2C90);
  OUTLINED_FUNCTION_23(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_5_0();
  v129 = v17;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A0, &unk_2683D2C30);
  v18 = OUTLINED_FUNCTION_0_3(v140);
  v144 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_19_3();
  *&v130 = v22 - v23;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v24);
  *&v131 = v124 - v25;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v26);
  v132 = v124 - v27;
  v28 = sub_2683CB598();
  v29 = OUTLINED_FUNCTION_0_3(v28);
  v146 = v30;
  v147 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_14_3();
  v135 = v34 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D8B0, &qword_2683D2DB0);
  v36 = OUTLINED_FUNCTION_0_3(v35);
  v133 = v37;
  v134 = v36;
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_5_0();
  v148 = v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5D0, &unk_2683D2CA0);
  v43 = OUTLINED_FUNCTION_1(v42);
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_19_3();
  v48 = v46 - v47;
  MEMORY[0x28223BE20](v49);
  v51 = v124 - v50;
  v52 = type metadata accessor for Snippet.Reminder(0);
  v53 = OUTLINED_FUNCTION_1(v52);
  v55 = *(v54 + 64);
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_14_3();
  v58 = (v57 - v56);
  sub_2683CB588();
  v59 = &v58[v52[8]];
  v59[96] = 0;
  *(v59 + 4) = 0u;
  *(v59 + 5) = 0u;
  *(v59 + 2) = 0u;
  *(v59 + 3) = 0u;
  *v59 = 0u;
  *(v59 + 1) = 0u;
  v145 = v59;
  v60 = v52[10];
  OUTLINED_FUNCTION_117();
  v142 = v61;
  sub_2683CB838();
  v62 = v52[12];
  type metadata accessor for Snippet.Reminder.LocationTrigger(0);
  v139 = v62;
  OUTLINED_FUNCTION_4_0();
  v128 = v63;
  __swift_storeEnumTagSinglePayload(v64, v65, v66, v63);
  v67 = v52[13];
  type metadata accessor for Snippet.Reminder.TemporalTrigger(0);
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v68, v69, v70, v71);
  sub_26812DA38(v51, v48, &qword_28024D5D0, &unk_2683D2CA0);
  v137 = v67;
  sub_2683CB838();
  OUTLINED_FUNCTION_74();
  sub_26812D9E0(v72, v73, v74);
  v75 = &v58[v52[14]];
  *v75 = 0u;
  *(v75 + 1) = 0u;
  v150 = v52;
  v76 = v52[16];
  v77 = type metadata accessor for Snippet.Reminder.AppLink(0);
  v136 = v76;
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v78, v79, v80, v77);
  v81 = v149[4];
  OUTLINED_FUNCTION_57_0(v149, v149[3]);
  sub_26814F794();
  v82 = v143;
  sub_2683D06F8();
  if (v82)
  {
    v143 = v82;
    OUTLINED_FUNCTION_23_4();
    v83 = v140;
    __swift_destroy_boxed_opaque_existential_0(v149);
    (*(v146 + 8))(v58, v147);

    memcpy(v155, v145, 0x61uLL);
    sub_26812D9E0(v155, &qword_28024D5C0, &unk_2683D2C80);
    if (v77)
    {
      v89 = v144[1];
      v89(&v58[v150[9]], v83);
    }

    else
    {
      v89 = v144[1];
    }

    v89(&v58[v142], v83);
    if (v81)
    {
      v89(&v58[v150[11]], v83);
    }

    sub_26812D9E0(&v58[v139], &qword_28024D5C8, &unk_2683D2C90);
    (*(v138 + 8))(&v58[v137], v141);
    v90 = *(v75 + 2);
    v91 = *(v75 + 3);
    sub_268144260(*v75, *(v75 + 1));
    if (v76)
    {
      v92 = *&v58[v150[15]];
    }

    sub_26812D9E0(&v58[v136], &qword_28024D5D8, &qword_2683D4260);
  }

  else
  {
    v84 = v132;
    v124[2] = v77;
    v155[0] = 0;
    OUTLINED_FUNCTION_9_4();
    sub_26814EEB8(v85);
    v86 = v147;
    sub_2683D04A8();
    v87 = v140;
    (*(v146 + 40))(v58, v135, v86);
    OUTLINED_FUNCTION_117();
    v88 = sub_2683D0438();
    v93 = v150;
    v94 = &v58[v150[5]];
    *v94 = v88;
    v94[1] = v95;
    v124[1] = v95;
    v155[0] = 2;
    v96 = sub_2683D0478();
    v97 = &v58[v93[6]];
    *v97 = v96;
    v97[1] = v98;
    v155[0] = 3;
    v99 = sub_2683D0438();
    v100 = &v58[v93[7]];
    *v100 = v99;
    v100[1] = v101;
    v135 = v101;
    sub_26814FCE8();
    sub_2683D0468();
    memcpy(v153, v155, sizeof(v153));
    v102 = v145;
    OUTLINED_FUNCTION_121();
    memcpy(v103, v104, v105);
    sub_26812D9E0(&v154, &qword_28024D5C0, &unk_2683D2C80);
    memcpy(v102, v153, 0x61uLL);
    LOBYTE(v151) = 5;
    OUTLINED_FUNCTION_2_4();
    v143 = sub_268145D30(v106);
    sub_2683D04A8();
    v107 = v93[9];
    v108 = v144 + 4;
    v132 = v144[4];
    (v132)(&v58[v107], v84, v87);
    LOBYTE(v151) = 6;
    OUTLINED_FUNCTION_73();
    v124[0] = v108;
    v109 = v144[5];
    OUTLINED_FUNCTION_74();
    v110();
    LOBYTE(v151) = 7;
    OUTLINED_FUNCTION_73();
    v143 = 0;
    v111 = v150[11];
    OUTLINED_FUNCTION_74();
    (v132)();
    LOBYTE(v151) = 8;
    OUTLINED_FUNCTION_40_1();
    sub_26814EEB8(v112);
    v113 = v129;
    OUTLINED_FUNCTION_54_0();
    sub_2683D0468();
    v143 = 0;
    v132 = v58;
    sub_26814441C(v113, &v58[v139], &qword_28024D5C8, &unk_2683D2C90);
    LOBYTE(v151) = 9;
    OUTLINED_FUNCTION_2_4();
    sub_26814FD3C(v114);
    OUTLINED_FUNCTION_54_0();
    sub_2683D04A8();
    v143 = 0;
    (*(v138 + 40))(&v132[v137], v127, v141);
    sub_26814FDAC();
    OUTLINED_FUNCTION_54_0();
    sub_2683D0468();
    v143 = 0;
    v115 = *v75;
    v116 = *(v75 + 1);
    v117 = *(v75 + 2);
    v118 = *(v75 + 3);
    v130 = v152;
    v131 = v151;
    sub_268144260(v115, v116);
    v119 = v130;
    *v75 = v131;
    *(v75 + 1) = v119;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D858, &unk_2683D2DA0);
    sub_26814FE00();
    OUTLINED_FUNCTION_71();
    v143 = 0;
    *&v132[v150[15]] = v151;
    LOBYTE(v151) = 12;
    OUTLINED_FUNCTION_39_1();
    sub_26814EEB8(v120);
    OUTLINED_FUNCTION_54_0();
    sub_2683D0468();
    v143 = 0;
    sub_26814441C(v126, &v132[v136], &qword_28024D5D8, &qword_2683D4260);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D878, &unk_2683E40E0);
    sub_26814FEB4();
    OUTLINED_FUNCTION_71();
    v143 = 0;
    v121 = OUTLINED_FUNCTION_20_4();
    v122(v121);
    v123 = v132;
    *&v132[v150[17]] = v151;
    OUTLINED_FUNCTION_5_4();
    sub_26814F07C(v123, v125);
    __swift_destroy_boxed_opaque_existential_0(v149);
    OUTLINED_FUNCTION_36_1();
    sub_26814F0D4();
  }

  OUTLINED_FUNCTION_62();
}

uint64_t sub_26814DF00(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_2683D0698();
  a4(v6);
  return sub_2683D06D8();
}

void sub_26814DF4C(char *__s1@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, _BYTE *a4@<X8>)
{
  v17 = *MEMORY[0x277D85DE8];
  switch(a3 >> 62)
  {
    case 1uLL:
      v9 = a2 >> 32;
      if (a2 >> 32 < a2)
      {
        __break(1u);
      }

      v8 = a2;
      goto LABEL_9;
    case 2uLL:
      v8 = *(a2 + 16);
      v9 = *(a2 + 24);
LABEL_9:
      v7 = sub_26814E0B8(v8, v9, a3 & 0x3FFFFFFFFFFFFFFFLL, __s1);
      if (!v4)
      {
        goto LABEL_10;
      }

      goto LABEL_14;
    case 3uLL:
      if (__s1)
      {
        v7 = 1;
LABEL_10:
        *a4 = v7 & 1;
        v10 = *MEMORY[0x277D85DE8];
      }

      else
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:

        __break(1u);
      }

      return;
    default:
      __s2 = a2;
      v12 = a3;
      v13 = BYTE2(a3);
      v14 = BYTE3(a3);
      v15 = BYTE4(a3);
      v16 = BYTE5(a3);
      if (!__s1)
      {
        goto LABEL_13;
      }

      v7 = memcmp(__s1, &__s2, BYTE6(a3)) == 0;
      goto LABEL_10;
  }
}

uint64_t sub_26814E0B8(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  result = sub_2683CAF58();
  v8 = result;
  if (result)
  {
    result = sub_2683CAF78();
    if (__OFSUB__(a1, result))
    {
LABEL_14:
      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    v8 += a1 - result;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_14;
  }

  result = sub_2683CAF68();
  if (result >= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = result;
  }

  if (!a4)
  {
    goto LABEL_15;
  }

  if (!v8)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  return v8 == a4 || memcmp(a4, v8, v11) == 0;
}

void sub_26814E170(uint64_t a1, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(a1 + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_65_0();
    return;
  }

LABEL_9:
  __break(1u);
}

void sub_26814E1A8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_102(a1, a2);
  if (v3)
  {
    v5 = type metadata accessor for Snippet.Reminder(0);
    OUTLINED_FUNCTION_3_1(v5);
    v7 = v4 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v9 = *(v8 + 72);
    do
    {
      Snippet.Reminder.hash(into:)(v2);
      v7 += v9;
      --v3;
    }

    while (v3);
  }
}

uint64_t sub_26814E238(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Snippet.Reminder.URLAttachment(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + 16);
  result = MEMORY[0x26D617190](v8);
  if (v8)
  {
    v10 = &v7[*(v3 + 20)];
    v11 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v12 = *(v4 + 72);
    do
    {
      sub_26814F07C(v11, v7);
      sub_2683CB438();
      sub_26814EEB8(&unk_28024D760);
      sub_2683CFA08();
      if (*(v10 + 1) >> 60 == 15)
      {
        sub_2683D06B8();
      }

      else
      {
        v13 = *v10;
        sub_2683D06B8();
        sub_2683CB478();
      }

      result = sub_26814F0D4();
      v11 += v12;
      --v8;
    }

    while (v8);
  }

  return result;
}

void sub_26814E408()
{
  OUTLINED_FUNCTION_30_0();
  v2 = v1;
  v3 = OUTLINED_FUNCTION_24_4();
  v4 = type metadata accessor for Snippet.Reminder(v3);
  v5 = OUTLINED_FUNCTION_3_1(v4);
  v62 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_52_0();
  v61 = sub_2683CB528();
  v9 = OUTLINED_FUNCTION_0_3(v61);
  v59 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_14_3();
  v60 = v14 - v13;
  v15 = type metadata accessor for Snippet.SectionHeading();
  v16 = OUTLINED_FUNCTION_1(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_19_3();
  v63 = (v19 - v20);
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v21);
  v68 = &v58 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DAF8, &qword_2683E3440);
  OUTLINED_FUNCTION_23(v23);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_83();
  v27 = type metadata accessor for Snippet.ReminderSearchResult.Section(0);
  v28 = OUTLINED_FUNCTION_0_3(v27);
  v30 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_14_3();
  v35 = v34 - v33;
  v36 = *(v2 + 16);
  MEMORY[0x26D617190](v36);
  v67 = v36;
  if (v36)
  {
    v37 = 0;
    v66 = v35 + *(v27 + 20);
    v65 = v2 + ((*(v30 + 80) + 32) & ~*(v30 + 80));
    v64 = *(v30 + 72);
    v58 = (v59 + 4);
    ++v59;
    do
    {
      OUTLINED_FUNCTION_35_1();
      sub_26814F07C(v38, v35);
      sub_26812DA38(v35, v0, &qword_28024DAF8, &qword_2683E3440);
      OUTLINED_FUNCTION_72(v0, 1, v15);
      if (v39)
      {
        OUTLINED_FUNCTION_95();
      }

      else
      {
        OUTLINED_FUNCTION_34_2();
        v40 = v68;
        sub_26814F6E8(v0, v68);
        OUTLINED_FUNCTION_96();
        sub_26814F07C(v40, v63);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        switch(EnumCaseMultiPayload)
        {
          case 1:
            memcpy(v70, v63, 0x61uLL);
            MEMORY[0x26D617190](3);
            memcpy(v69, v70, sizeof(v69));
            Snippet.ReminderList.hash(into:)();
            sub_26814F740(v70);
            break;
          case 2:
            v46 = *v63;
            v45 = v63[1];
            v47 = 4;
            goto LABEL_14;
          case 3:
            v49 = *v63;
            v48 = v63[1];
            v47 = 10;
LABEL_14:
            MEMORY[0x26D617190](v47);
            sub_2683CFB48();

            break;
          case 4:
            v44 = 0;
            goto LABEL_22;
          case 5:
            v44 = 2;
            goto LABEL_22;
          case 6:
            v44 = 5;
            goto LABEL_22;
          case 7:
            v44 = 6;
            goto LABEL_22;
          case 8:
            v44 = 7;
            goto LABEL_22;
          case 9:
            v44 = 8;
            goto LABEL_22;
          case 10:
            v44 = 9;
            goto LABEL_22;
          case 11:
            v44 = 11;
            goto LABEL_22;
          case 12:
            v44 = 12;
            goto LABEL_22;
          case 13:
            v44 = 13;
LABEL_22:
            MEMORY[0x26D617190](v44);
            break;
          default:
            v42 = v60;
            v43 = v61;
            (*v58)(v60, v63, v61);
            MEMORY[0x26D617190](1);
            OUTLINED_FUNCTION_14_5();
            sub_26814EEB8(&unk_28024D6D8);
            sub_2683CFA08();
            (*v59)(v42, v43);
            break;
        }

        OUTLINED_FUNCTION_33_2();
        sub_26814F0D4();
      }

      v50 = v15;
      v51 = *v66;
      if (*(v66 + 8))
      {
        MEMORY[0x26D617190](1);
        v52 = OUTLINED_FUNCTION_55_0();
        sub_26814E408(v52);
      }

      else
      {
        MEMORY[0x26D617190](0);
        MEMORY[0x26D617190](*(v51 + 16));
        v53 = *(v51 + 16);
        if (v53)
        {
          v54 = v51 + ((*(v62 + 80) + 32) & ~*(v62 + 80));
          v55 = *(v62 + 72);
          do
          {
            OUTLINED_FUNCTION_5_4();
            v56 = OUTLINED_FUNCTION_113();
            sub_26814F07C(v56, v57);
            Snippet.Reminder.hash(into:)();
            OUTLINED_FUNCTION_36_1();
            sub_26814F0D4();
            v54 += v55;
            --v53;
          }

          while (v53);
        }
      }

      ++v37;
      sub_26814F0D4();
      v15 = v50;
    }

    while (v37 != v67);
  }

  OUTLINED_FUNCTION_29_0();
}

void sub_26814E9C0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_126(a1, a2);
  if (v2)
  {
    v4 = (v3 + 40);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;

      OUTLINED_FUNCTION_61_0();
      sub_2683CFB48();

      v4 += 2;
      --v2;
    }

    while (v2);
  }
}

void sub_26814EA24()
{
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_126(v2, v3);
  if (v0)
  {
    v4 = (v1 + 56);
    do
    {
      v5 = *(v4 - 3);
      v6 = *(v4 - 2);
      v7 = *(v4 - 1);
      v8 = *v4;

      OUTLINED_FUNCTION_61_0();
      sub_2683CFB48();
      sub_2683CFB48();

      v4 += 4;
      --v0;
    }

    while (v0);
  }

  OUTLINED_FUNCTION_131();
}

void sub_26814EAAC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_102(a1, a2);
  if (v2)
  {
    v4 = (v3 + 64);
    do
    {
      v18 = v2;
      v5 = *(v4 - 1);
      v14 = *v4;
      v15 = *(v4 - 2);
      v6 = v4[1];
      v13 = *(v4 + 1);
      v7 = v4[4];
      v16 = *(v4 + 40);
      v8 = v4[7];
      v9 = *(v4 + 64);
      v17 = v4[6];
      if (*(v4 - 3))
      {
        v12 = *(v4 - 4);
        OUTLINED_FUNCTION_96();

        OUTLINED_FUNCTION_125();
        sub_2683CFB48();
      }

      else
      {
        OUTLINED_FUNCTION_95();

        OUTLINED_FUNCTION_125();
      }

      sub_2683CFB48();
      if (v6)
      {
        OUTLINED_FUNCTION_96();
        sub_2683CFB48();
      }

      else
      {
        OUTLINED_FUNCTION_95();
      }

      if (v16 == 3)
      {
        OUTLINED_FUNCTION_95();
      }

      else
      {
        OUTLINED_FUNCTION_96();
        Snippet.Color.hash(into:)();
      }

      if (v9 == 255)
      {
        OUTLINED_FUNCTION_95();
      }

      else
      {
        OUTLINED_FUNCTION_96();
        MEMORY[0x26D617190]((v9 & 1) != 0);
        OUTLINED_FUNCTION_78();
        sub_2683CFB48();
      }

      v4 += 13;

      v10 = OUTLINED_FUNCTION_89();
      sub_268151B3C(v10, v11, v9);
      v2 = v18 - 1;
    }

    while (v18 != 1);
  }
}

uint64_t sub_26814EC64()
{
  if (!v0[3])
  {
    return OUTLINED_FUNCTION_95();
  }

  OUTLINED_FUNCTION_121();
  memcpy(v1, v2, v3);
  OUTLINED_FUNCTION_96();
  memcpy(__dst, v0, 0x61uLL);
  sub_26814FB60(__dst, v7);
  OUTLINED_FUNCTION_119();
  Snippet.ReminderList.hash(into:)();
  memcpy(v7, __src, 0x61uLL);
  return sub_26814F740(v7);
}

void sub_26814ECF4()
{
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_47_0();
  v2 = sub_2683CB528();
  v3 = OUTLINED_FUNCTION_0_3(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_110();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DB08, qword_2683D5760);
  OUTLINED_FUNCTION_23(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_28_2();
  v12 = OUTLINED_FUNCTION_89();
  OUTLINED_FUNCTION_128(v12, v13);
  OUTLINED_FUNCTION_72(v1, 1, v2);
  if (v14)
  {
    sub_2683D06B8();
  }

  else
  {
    v15 = *(v5 + 32);
    v16 = OUTLINED_FUNCTION_113();
    v17(v16);
    sub_2683D06B8();
    OUTLINED_FUNCTION_14_5();
    sub_26814EEB8(v18);
    OUTLINED_FUNCTION_88();
    sub_2683CFA08();
    (*(v5 + 8))(v0, v2);
  }

  OUTLINED_FUNCTION_131();
}

unint64_t sub_26814EE64()
{
  result = qword_28024D6B0;
  if (!qword_28024D6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024D6B0);
  }

  return result;
}

unint64_t sub_26814EEB8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_76(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_26814EEFC()
{
  result = qword_28024D6D0;
  if (!qword_28024D6D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28024D698, &qword_2683D2D00);
    sub_26814EEB8(&unk_28024D6D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024D6D0);
  }

  return result;
}

unint64_t sub_26814EFB0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_76(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28024D698, &qword_2683D2D00);
    sub_26814EEB8(&unk_28024D6C0);
    sub_26814EEB8(&unk_28024D6C8);
    OUTLINED_FUNCTION_61_0();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_26814F07C(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_47_0();
  v5 = v4(v3);
  OUTLINED_FUNCTION_1(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_9_0();
  v9(v8);
  return a2;
}

uint64_t sub_26814F0D4()
{
  v1 = OUTLINED_FUNCTION_24_4();
  v3 = v2(v1);
  OUTLINED_FUNCTION_1(v3);
  (*(v4 + 8))(v0);
  return v0;
}

unint64_t sub_26814F128()
{
  result = qword_28024D6F8;
  if (!qword_28024D6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024D6F8);
  }

  return result;
}

unint64_t sub_26814F17C()
{
  result = qword_28024D700;
  if (!qword_28024D700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024D700);
  }

  return result;
}

unint64_t sub_26814F1D0()
{
  result = qword_28024D710;
  if (!qword_28024D710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024D710);
  }

  return result;
}

unint64_t sub_26814F224()
{
  result = qword_28024D738;
  if (!qword_28024D738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024D738);
  }

  return result;
}

unint64_t sub_26814F278()
{
  result = qword_28024D740;
  if (!qword_28024D740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024D740);
  }

  return result;
}

unint64_t sub_26814F2CC()
{
  result = qword_28024D748;
  if (!qword_28024D748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024D748);
  }

  return result;
}

unint64_t sub_26814F320()
{
  result = qword_28024D750;
  if (!qword_28024D750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024D750);
  }

  return result;
}

unint64_t sub_26814F374()
{
  result = qword_28024D780;
  if (!qword_28024D780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024D780);
  }

  return result;
}

uint64_t sub_26814F3C8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_26814F420()
{
  result = qword_28024D790;
  if (!qword_28024D790)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28024D790);
  }

  return result;
}

unint64_t sub_26814F464()
{
  result = qword_28024D7A0;
  if (!qword_28024D7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024D7A0);
  }

  return result;
}

unint64_t sub_26814F4B8()
{
  result = qword_28024D7A8;
  if (!qword_28024D7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024D7A8);
  }

  return result;
}

unint64_t sub_26814F50C()
{
  result = qword_28024D7B8;
  if (!qword_28024D7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024D7B8);
  }

  return result;
}

uint64_t sub_26814F580(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26814F5B8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_26814F3C8(a1, a2);
  }

  return a1;
}

uint64_t sub_26814F5CC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_268143054(a1, a2);
  }

  return a1;
}

unint64_t sub_26814F5E0()
{
  result = qword_28024D7C8;
  if (!qword_28024D7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024D7C8);
  }

  return result;
}

unint64_t sub_26814F634()
{
  result = qword_28024D7F0;
  if (!qword_28024D7F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28024D5D0, &unk_2683D2CA0);
    sub_26814EEB8(&unk_28024D7F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024D7F0);
  }

  return result;
}

uint64_t sub_26814F6E8(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_47_0();
  v5 = v4(v3);
  OUTLINED_FUNCTION_1(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_9_0();
  v9(v8);
  return a2;
}

unint64_t sub_26814F794()
{
  result = qword_28024D808;
  if (!qword_28024D808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024D808);
  }

  return result;
}

unint64_t sub_26814F7E8()
{
  result = qword_28024D818;
  if (!qword_28024D818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024D818);
  }

  return result;
}

unint64_t sub_26814F83C()
{
  result = qword_28024D830;
  if (!qword_28024D830)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28024D5D0, &unk_2683D2CA0);
    sub_26814EEB8(&unk_28024D838);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024D830);
  }

  return result;
}

unint64_t sub_26814F8F0()
{
  result = qword_28024D840;
  if (!qword_28024D840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28024D5D0, &unk_2683D2CA0);
    sub_26814EEB8(&unk_28024D848);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024D840);
  }

  return result;
}

unint64_t sub_26814F9A4()
{
  result = qword_28024D850;
  if (!qword_28024D850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024D850);
  }

  return result;
}

unint64_t sub_26814F9F8()
{
  result = qword_28024D860;
  if (!qword_28024D860)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28024D858, &unk_2683D2DA0);
    sub_26814EEB8(&unk_28024D868);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024D860);
  }

  return result;
}

unint64_t sub_26814FAAC()
{
  result = qword_28024D880;
  if (!qword_28024D880)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28024D878, &unk_2683E40E0);
    sub_26814EEB8(&unk_28024D888);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024D880);
  }

  return result;
}

unint64_t sub_26814FBBC(uint64_t a1)
{
  result = OUTLINED_FUNCTION_76(a1);
  if (!result)
  {
    v6 = v5;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v3, v4);
    v6();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_26814FC34()
{
  result = qword_28024D8A0;
  if (!qword_28024D8A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28024D5D0, &unk_2683D2CA0);
    sub_26814EEB8(&unk_28024D8A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024D8A0);
  }

  return result;
}

unint64_t sub_26814FCE8()
{
  result = qword_28024D8C0;
  if (!qword_28024D8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024D8C0);
  }

  return result;
}

unint64_t sub_26814FD3C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_76(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28024D5A8, &unk_2683D2C40);
    sub_26814F83C();
    sub_26814F8F0();
    OUTLINED_FUNCTION_61_0();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_26814FDAC()
{
  result = qword_28024D8D8;
  if (!qword_28024D8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024D8D8);
  }

  return result;
}

unint64_t sub_26814FE00()
{
  result = qword_28024D8E0;
  if (!qword_28024D8E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28024D858, &unk_2683D2DA0);
    sub_26814EEB8(&unk_28024D8E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024D8E0);
  }

  return result;
}

unint64_t sub_26814FEB4()
{
  result = qword_28024D8F8;
  if (!qword_28024D8F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28024D878, &unk_2683E40E0);
    sub_26814EEB8(&unk_28024D900);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024D8F8);
  }

  return result;
}

unint64_t sub_268150000()
{
  result = qword_28024D910;
  if (!qword_28024D910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024D910);
  }

  return result;
}

unint64_t sub_2681500A0()
{
  result = qword_28024D920;
  if (!qword_28024D920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024D920);
  }

  return result;
}

void sub_2681501F4()
{
  sub_2683CB598();
  if (v0 <= 0x3F)
  {
    sub_268150A0C(319, &qword_28024D948, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_268150A0C(319, &qword_28024D950, &type metadata for Snippet.ReminderList, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_268150A0C(319, &qword_28024D958, MEMORY[0x277D839B0], MEMORY[0x277D637C8]);
        if (v3 <= 0x3F)
        {
          sub_268150500(319, &qword_28024D960, type metadata accessor for Snippet.Reminder.LocationTrigger, MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            sub_26815049C();
            if (v5 <= 0x3F)
            {
              sub_268150A0C(319, &qword_28024D970, &type metadata for Snippet.Reminder.MessagingTrigger, MEMORY[0x277D83D88]);
              if (v6 <= 0x3F)
              {
                sub_268150500(319, &qword_28024D978, type metadata accessor for Snippet.Reminder.URLAttachment, MEMORY[0x277D83940]);
                if (v7 <= 0x3F)
                {
                  sub_268150500(319, &qword_28024D980, type metadata accessor for Snippet.Reminder.AppLink, MEMORY[0x277D83D88]);
                  if (v8 <= 0x3F)
                  {
                    sub_268150500(319, &qword_28024D988, type metadata accessor for Snippet.Reminder, MEMORY[0x277D83940]);
                    if (v9 <= 0x3F)
                    {
                      swift_cvw_initStructMetadataWithLayoutString();
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

void sub_26815049C()
{
  if (!qword_28024D968)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28024D5D0, &unk_2683D2CA0);
    v0 = sub_2683CB888();
    if (!v1)
    {
      atomic_store(v0, &qword_28024D968);
    }
  }
}

void sub_268150500(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_26815058C()
{
  sub_268150A0C(319, &qword_28024D9A0, &type metadata for Snippet.Reminder.SpatialEvent, MEMORY[0x277D637C8]);
  if (v0 <= 0x3F)
  {
    sub_268150A0C(319, &qword_28024D958, MEMORY[0x277D839B0], MEMORY[0x277D637C8]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2681506A0()
{
  sub_268150500(319, &qword_28024D9B8, MEMORY[0x277CC9578], MEMORY[0x277D637C8]);
  if (v0 <= 0x3F)
  {
    sub_268150A0C(319, &qword_28024D958, MEMORY[0x277D839B0], MEMORY[0x277D637C8]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_268150778(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_2681507B8(uint64_t result, int a2, int a3)
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

uint64_t sub_268150810()
{
  result = sub_2683CB438();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_268150894(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xD && *(a1 + 16))
    {
      v2 = *a1 + 12;
    }

    else
    {
      v2 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
      if (v2 >= 0xC)
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

uint64_t sub_2681508E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

void sub_268150964()
{
  sub_2683CB438();
  if (v0 <= 0x3F)
  {
    sub_268150A0C(319, &qword_28024D9E0, MEMORY[0x277CC9318], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_268150A0C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t _s14descr2878F8F29V8ReminderV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF3)
  {
    if (a2 + 13 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 13) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 14;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v5 = v6 - 14;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}