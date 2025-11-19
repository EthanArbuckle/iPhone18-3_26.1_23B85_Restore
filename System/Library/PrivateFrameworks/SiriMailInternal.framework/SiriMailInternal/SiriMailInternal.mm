uint64_t UsoEntity.description.getter()
{
  sub_2676CA58C();
  sub_2676CA78C();
  sub_2675D6878();
  v0 = sub_2676CC56C();

  return v0;
}

unint64_t sub_2675D6878()
{
  result = qword_2801CCC30;
  if (!qword_2801CCC30)
  {
    sub_2676CA78C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CCC30);
  }

  return result;
}

uint64_t sub_2675D6938@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2675DE14C();
  *a1 = result;
  return result;
}

uint64_t sub_2675D6964@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2675D6990(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

BOOL sub_2675D6A24(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

uint64_t sub_2675D6A50(uint64_t a1)
{
  result = *v1 & a1;
  if (result)
  {
    *v1 &= ~a1;
  }

  return result;
}

uint64_t sub_2675D6A74(uint64_t a1)
{
  v2 = *v1;
  *v1 |= a1;
  return v2 & a1;
}

uint64_t sub_2675D6BAC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2676CB68C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2675D6BFC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2676CB84C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2675D6C4C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2675D6C84()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2675D6CF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2676C8BFC();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_2675D6DA4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2676C8BFC();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 24) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2675D6E64@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x26D5FD400]();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2675D6E9C()
{
  OUTLINED_FUNCTION_5_6();
  result = sub_2676CB8DC();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2675D7090()
{
  OUTLINED_FUNCTION_5_6();
  result = sub_2676CB7FC();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2675D7144()
{
  OUTLINED_FUNCTION_5_6();
  result = sub_2676CB58C();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2675D7198()
{
  OUTLINED_FUNCTION_5_6();
  result = sub_2676CB55C();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2675D71EC()
{
  OUTLINED_FUNCTION_5_6();
  result = sub_2676CB57C();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2675D7240()
{
  OUTLINED_FUNCTION_5_6();
  result = MEMORY[0x26D5FD230]();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2675D7294()
{
  OUTLINED_FUNCTION_5_6();
  result = sub_2676CB59C();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2675D72E8()
{
  OUTLINED_FUNCTION_5_6();
  result = sub_2676CB54C();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2675D737C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFE8, &unk_2676CD9E0);
  v7 = OUTLINED_FUNCTION_7_7(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a3[6];
LABEL_5:

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC380, &unk_2676CEF40);
  v12 = OUTLINED_FUNCTION_7_7(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v10 = a3[7];
    goto LABEL_5;
  }

  v15 = *(a1 + a3[12] + 24);
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  return (v15 + 1);
}

uint64_t sub_2675D7484(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFE8, &unk_2676CD9E0);
  v9 = OUTLINED_FUNCTION_7_7(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a4[6];
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC380, &unk_2676CEF40);
    result = OUTLINED_FUNCTION_7_7(v13);
    if (*(v15 + 84) != a3)
    {
      *(a1 + a4[12] + 24) = (a2 - 1);
      return result;
    }

    v11 = result;
    v12 = a4[7];
  }

  return __swift_storeEnumTagSinglePayload(a1 + v12, a2, a2, v11);
}

uint64_t sub_2675D7588(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2676CAECC();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_2675D7610(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_2676CAECC();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2675D7690(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFE8, &unk_2676CD9E0);
  v7 = OUTLINED_FUNCTION_7_7(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a3[7];
LABEL_5:

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC380, &unk_2676CEF40);
  v12 = OUTLINED_FUNCTION_7_7(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v10 = a3[8];
    goto LABEL_5;
  }

  v15 = *(a1 + a3[9] + 24);
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  return (v15 + 1);
}

uint64_t sub_2675D7798(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFE8, &unk_2676CD9E0);
  v9 = OUTLINED_FUNCTION_7_7(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a4[7];
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC380, &unk_2676CEF40);
    result = OUTLINED_FUNCTION_7_7(v13);
    if (*(v15 + 84) != a3)
    {
      *(a1 + a4[9] + 24) = (a2 - 1);
      return result;
    }

    v11 = result;
    v12 = a4[8];
  }

  return __swift_storeEnumTagSinglePayload(a1 + v12, a2, a2, v11);
}

uint64_t sub_2675D789C()
{
  OUTLINED_FUNCTION_5_6();
  result = sub_2676C8A8C();
  *v0 = result;
  return result;
}

uint64_t sub_2675D78C4()
{
  OUTLINED_FUNCTION_5_6();
  result = sub_2676C8B4C();
  *v0 = result;
  return result;
}

uint64_t sub_2675D78EC()
{
  OUTLINED_FUNCTION_5_6();
  result = MEMORY[0x26D5FA820]();
  *v0 = result;
  return result;
}

uint64_t sub_2675D7914()
{
  OUTLINED_FUNCTION_5_6();
  result = MEMORY[0x26D5FA8B0]();
  *v0 = result;
  return result;
}

uint64_t sub_2675D793C()
{
  OUTLINED_FUNCTION_5_6();
  result = MEMORY[0x26D5FA890]();
  *v0 = result;
  return result;
}

uint64_t sub_2675D798C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC5E0, &qword_2676CF4D0);
  OUTLINED_FUNCTION_2_6(v2);
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_2675D79EC()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  OUTLINED_FUNCTION_90();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_2675D7B00()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2675D7B40()
{
  v1 = *(v0 + 16);
  if ((~v1 & 0xF000000000000007) != 0)
  {
    sub_267614A2C(v1);
  }

  OUTLINED_FUNCTION_82();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_2675D7BA4()
{
  if (*(v0 + 24) >= 8uLL)
  {
  }

  OUTLINED_FUNCTION_79();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_2675D7BE0()
{
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_82();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_2675D7C14()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  OUTLINED_FUNCTION_90();

  return MEMORY[0x2821FE8E8](v4, v5, v6);
}

uint64_t sub_2675D7C60()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_79();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_2675D7CE4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2675D7D44()
{
  v1 = *(v0 + 16);
  if ((~v1 & 0xF000000000000007) != 0)
  {
    sub_267614A2C(v1);
  }

  OUTLINED_FUNCTION_82();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_2675D7DC4()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2675D7E0C()
{
  v1 = sub_2676C8D8C();
  OUTLINED_FUNCTION_3(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v0 + 16);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v7, v4 | 7);
}

uint64_t sub_2675D7EC4()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2675D7F0C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2675D7F48(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC968, &unk_2676CFDF0);
  v7 = OUTLINED_FUNCTION_7_7(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC970, &qword_2676D1C50);
    v12 = OUTLINED_FUNCTION_7_7(v11);
    if (*(v13 + 84) == a2)
    {
      v9 = v12;
      v14 = a3[7];
    }

    else
    {
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC978, &unk_2676CFE00);
      v16 = OUTLINED_FUNCTION_7_7(v15);
      if (*(v17 + 84) == a2)
      {
        v9 = v16;
        v14 = a3[9];
      }

      else
      {
        v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8C8, &unk_2676D1C40);
        v19 = OUTLINED_FUNCTION_7_7(v18);
        if (*(v20 + 84) == a2)
        {
          v9 = v19;
          v14 = a3[10];
        }

        else
        {
          v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC980, &unk_2676CFE10);
          v22 = OUTLINED_FUNCTION_7_7(v21);
          if (*(v23 + 84) == a2)
          {
            v9 = v22;
            v14 = a3[11];
          }

          else
          {
            v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8D8, &unk_2676CFC70);
            v14 = a3[12];
          }
        }
      }
    }

    v10 = a1 + v14;
  }

  return __swift_getEnumTagSinglePayload(v10, a2, v9);
}

uint64_t sub_2675D8128()
{
  OUTLINED_FUNCTION_50_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC968, &unk_2676CFDF0);
  v5 = OUTLINED_FUNCTION_7_7(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = v5;
    v8 = v1;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC970, &qword_2676D1C50);
    v10 = OUTLINED_FUNCTION_7_7(v9);
    if (*(v11 + 84) == v3)
    {
      v7 = v10;
      v12 = v2[7];
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC978, &unk_2676CFE00);
      v14 = OUTLINED_FUNCTION_7_7(v13);
      if (*(v15 + 84) == v3)
      {
        v7 = v14;
        v12 = v2[9];
      }

      else
      {
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8C8, &unk_2676D1C40);
        v17 = OUTLINED_FUNCTION_7_7(v16);
        if (*(v18 + 84) == v3)
        {
          v7 = v17;
          v12 = v2[10];
        }

        else
        {
          v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC980, &unk_2676CFE10);
          v20 = OUTLINED_FUNCTION_7_7(v19);
          if (*(v21 + 84) == v3)
          {
            v7 = v20;
            v12 = v2[11];
          }

          else
          {
            v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8D8, &unk_2676CFC70);
            v12 = v2[12];
          }
        }
      }
    }

    v8 = v1 + v12;
  }

  return __swift_storeEnumTagSinglePayload(v8, v0, v0, v7);
}

uint64_t sub_2675D8304(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC9D0, &unk_2676D37C0);
  v7 = OUTLINED_FUNCTION_7_7(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC970, &qword_2676D1C50);
    v12 = OUTLINED_FUNCTION_7_7(v11);
    if (*(v13 + 84) == a2)
    {
      v9 = v12;
      v14 = a3[7];
    }

    else
    {
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC9D8, &unk_2676CFE60);
      v16 = OUTLINED_FUNCTION_7_7(v15);
      if (*(v17 + 84) == a2)
      {
        v9 = v16;
        v14 = a3[8];
      }

      else
      {
        v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC980, &unk_2676CFE10);
        v19 = OUTLINED_FUNCTION_7_7(v18);
        if (*(v20 + 84) == a2)
        {
          v9 = v19;
          v14 = a3[9];
        }

        else
        {
          v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8D8, &unk_2676CFC70);
          v14 = a3[10];
        }
      }
    }

    v10 = a1 + v14;
  }

  return __swift_getEnumTagSinglePayload(v10, a2, v9);
}

uint64_t sub_2675D8498()
{
  OUTLINED_FUNCTION_50_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC9D0, &unk_2676D37C0);
  v5 = OUTLINED_FUNCTION_7_7(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = v5;
    v8 = v1;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC970, &qword_2676D1C50);
    v10 = OUTLINED_FUNCTION_7_7(v9);
    if (*(v11 + 84) == v3)
    {
      v7 = v10;
      v12 = v2[7];
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC9D8, &unk_2676CFE60);
      v14 = OUTLINED_FUNCTION_7_7(v13);
      if (*(v15 + 84) == v3)
      {
        v7 = v14;
        v12 = v2[8];
      }

      else
      {
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC980, &unk_2676CFE10);
        v17 = OUTLINED_FUNCTION_7_7(v16);
        if (*(v18 + 84) == v3)
        {
          v7 = v17;
          v12 = v2[9];
        }

        else
        {
          v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8D8, &unk_2676CFC70);
          v12 = v2[10];
        }
      }
    }

    v8 = v1 + v12;
  }

  return __swift_storeEnumTagSinglePayload(v8, v0, v0, v7);
}

uint64_t sub_2675D8650(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2676C8BFC();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 24) + 24);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_2675D8700(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2676C8BFC();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2675D87AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for PromptForContactProducer();
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_2675D8834(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for PromptForContactProducer();
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2675D88B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC380, &unk_2676CEF40);
    v10 = a1 + *(a3 + 28);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

uint64_t sub_2675D8954(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC380, &unk_2676CEF40);
    v8 = v5 + *(a4 + 28);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2675D89E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFE8, &unk_2676CD9E0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 2)
    {
      return ((v8 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_2675D8AA8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFE8, &unk_2676CD9E0);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_2675D8CC0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2676CB7BC();
  *a1 = result;
  return result;
}

uint64_t sub_2675D8E48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC300, &unk_2676D09B0);
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_2675D8EDC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC300, &unk_2676D09B0);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2675D8F68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2676C8BFC();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 24);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_2675D9018(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2676C8BFC();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2675D9220()
{
  v1 = *(v0 + 16);

  v2 = OUTLINED_FUNCTION_11_18();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_2675D9250()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCD78, &unk_2676D1060);
  OUTLINED_FUNCTION_2_6(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4);
  v6 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_2675D92F0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2675D9458()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_79();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_2675D948C()
{
  sub_267614A2C(*(v0 + 16));
  OUTLINED_FUNCTION_82();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_2675D94C0()
{
  sub_267614A2C(*(v0 + 16));
  v1 = *(v0 + 32);

  OUTLINED_FUNCTION_32_4();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_2675D94FC(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_2675D9514()
{
  v1 = v0[2];

  sub_267614A2C(v0[3]);
  v2 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

uint64_t sub_2675D9564()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2675D95AC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2675D95E4()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC3D8, &unk_2676CEC00) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = sub_2676C8BFC();
  OUTLINED_FUNCTION_2_6(v6);
  (*(v7 + 8))(v5);
  v8 = *(v5 + v1[14] + 8);

  v9 = *(v0 + v4);

  return MEMORY[0x2821FE8E8](v0, v4 + 8, v2 | 7);
}

uint64_t sub_2675D9700()
{
  v1 = *(v0 + 16);
  if ((~v1 & 0xF000000000000007) != 0)
  {
    sub_267614A2C(v1);
  }

  v2 = *(v0 + 24);

  OUTLINED_FUNCTION_79();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t sub_2675D9748()
{
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_88_1();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_2675D978C()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  OUTLINED_FUNCTION_88_1();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_2675D97C8()
{
  v0 = OUTLINED_FUNCTION_97_0();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2675D97F8()
{
  v1 = *(v0 + 16);
  if ((~v1 & 0xF000000000000007) != 0)
  {
    sub_267614A2C(v1);
  }

  OUTLINED_FUNCTION_82();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_2675D9838()
{
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_82();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_2675D986C()
{
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_82();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_2675D98A0()
{
  v0 = OUTLINED_FUNCTION_97_0();

  return MEMORY[0x2821FE8E8](v0, 58, 7);
}

uint64_t sub_2675D98D0()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2675D9928()
{
  v0 = OUTLINED_FUNCTION_97_0();

  return MEMORY[0x2821FE8E8](v0, 57, 7);
}

uint64_t sub_2675D9974(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC3D8, &unk_2676CEC00);
  v7 = OUTLINED_FUNCTION_7_7(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFE8, &unk_2676CD9E0);
  v12 = OUTLINED_FUNCTION_7_7(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v10 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v15 = *(a1 + *(a3 + 28) + 24);
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  return (v15 + 1);
}

uint64_t sub_2675D9A7C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC3D8, &unk_2676CEC00);
  v9 = OUTLINED_FUNCTION_7_7(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFE8, &unk_2676CD9E0);
    result = OUTLINED_FUNCTION_7_7(v13);
    if (*(v15 + 84) != a3)
    {
      *(a1 + *(a4 + 28) + 24) = (a2 - 1);
      return result;
    }

    v11 = result;
    v12 = a1 + *(a4 + 24);
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_2675D9B80(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC3D8, &unk_2676CEC00);
  v7 = OUTLINED_FUNCTION_7_7(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
LABEL_11:

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFE8, &unk_2676CD9E0);
    v14 = OUTLINED_FUNCTION_7_7(v13);
    if (*(v15 + 84) == a2)
    {
      v9 = v14;
      v16 = a3[7];
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC380, &unk_2676CEF40);
      v16 = a3[12];
    }

    v10 = a1 + v16;
    goto LABEL_11;
  }

  v11 = *(a1 + a3[5]);
  if (v11 >= 0xFFFFFFFF)
  {
    LODWORD(v11) = -1;
  }

  return (v11 + 1);
}

uint64_t sub_2675D9CB0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC3D8, &unk_2676CEC00);
  result = OUTLINED_FUNCTION_7_7(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = result;
    v12 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[5]) = (a2 - 1);
      return result;
    }

    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFE8, &unk_2676CD9E0);
    v14 = OUTLINED_FUNCTION_7_7(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = a4[7];
    }

    else
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC380, &unk_2676CEF40);
      v16 = a4[12];
    }

    v12 = a1 + v16;
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_2675D9E2C()
{
  v1 = (type metadata accessor for MailStateChangeEventHandler(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC9D0, &unk_2676D37C0);
  OUTLINED_FUNCTION_2_6(v6);
  v8 = *(v7 + 8);
  v8(v5, v6);
  v8(v5 + v1[7], v6);
  v8(v5 + v1[8], v6);
  v9 = v1[9];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC970, &qword_2676D1C50);
  OUTLINED_FUNCTION_8_2(v10);
  (*(v11 + 8))(v5 + v9);
  v12 = v1[10];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC9D8, &unk_2676CFE60);
  OUTLINED_FUNCTION_8_2(v13);
  (*(v14 + 8))(v5 + v12);
  v15 = v1[11];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC980, &unk_2676CFE10);
  OUTLINED_FUNCTION_8_2(v16);
  (*(v17 + 8))(v5 + v15);
  v18 = v1[12];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8D8, &unk_2676CFC70);
  OUTLINED_FUNCTION_8_2(v19);
  (*(v20 + 8))(v5 + v18);
  v21 = *(v0 + v4);

  return MEMORY[0x2821FE8E8](v0, v4 + 8, v2 | 7);
}

uint64_t sub_2675DA094()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CD260, &unk_2676D1E78);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CD258, &qword_2676D1E70);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CD250, &qword_2676D1E68);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CD248, &qword_2676D1E60);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CD240, &qword_2676D1E58);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CD238, &qword_2676D1E50);
  type metadata accessor for ResolveSendMailIntent();
  sub_2676CBA6C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CC428, &unk_2676CEDD0);
  OUTLINED_FUNCTION_22_7();
  sub_267662E7C(v0, v1);
  OUTLINED_FUNCTION_0_20();
  sub_267662E7C(v2, v3);
  OUTLINED_FUNCTION_21_8();
  OUTLINED_FUNCTION_62_2();
  OUTLINED_FUNCTION_20_9();
  sub_267662E7C(v4, v5);
  OUTLINED_FUNCTION_19_4();
  OUTLINED_FUNCTION_62_2();
  OUTLINED_FUNCTION_27_8();
  OUTLINED_FUNCTION_62_2();
  OUTLINED_FUNCTION_26_7();
  OUTLINED_FUNCTION_62_2();
  OUTLINED_FUNCTION_25_10();
  OUTLINED_FUNCTION_62_2();
  OUTLINED_FUNCTION_24_7();
  OUTLINED_FUNCTION_62_2();
  return OUTLINED_FUNCTION_62_2();
}

uint64_t sub_2675DA2CC()
{
  OUTLINED_FUNCTION_21_1();
  v1 = (type metadata accessor for MailSceneHostStateChangeEventHandler(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC968, &unk_2676CFDF0);
  OUTLINED_FUNCTION_2_6(v5);
  v7 = *(v6 + 8);
  v7(v4, v5);
  v7(v4 + v1[7], v5);
  v7(v4 + v1[8], v5);
  v8 = v1[9];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC970, &qword_2676D1C50);
  OUTLINED_FUNCTION_2_6(v9);
  v11 = *(v10 + 8);
  v11(v4 + v8, v9);
  v11(v4 + v1[10], v9);
  v12 = v1[11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC978, &unk_2676CFE00);
  OUTLINED_FUNCTION_8_2(v13);
  (*(v14 + 8))(v4 + v12);
  v15 = v1[12];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8C8, &unk_2676D1C40);
  OUTLINED_FUNCTION_8_2(v16);
  (*(v17 + 8))(v4 + v15);
  v18 = v1[13];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC980, &unk_2676CFE10);
  OUTLINED_FUNCTION_8_2(v19);
  (*(v20 + 8))(v4 + v18);
  v21 = v1[14];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8D8, &unk_2676CFC70);
  OUTLINED_FUNCTION_8_2(v22);
  (*(v23 + 8))(v4 + v21);
  v24 = *(v0 + v3);

  OUTLINED_FUNCTION_20_1();

  return MEMORY[0x2821FE8E8](v25, v26, v27);
}

uint64_t sub_2675DA588()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CD300, &unk_2676D2488);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CD2F8, &qword_2676D2480);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CD2F0, &qword_2676D2478);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CD2E8, &qword_2676D2470);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CD2E0, &qword_2676D2468);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CD2D8, &qword_2676D2460);
  type metadata accessor for ResolveSiriMailMessageIntent();
  sub_2676CBA6C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CC428, &unk_2676CEDD0);
  OUTLINED_FUNCTION_28_6();
  sub_26766B3A8(v0, v1);
  OUTLINED_FUNCTION_0_21();
  sub_26766B3A8(v2, v3);
  OUTLINED_FUNCTION_21_8();
  OUTLINED_FUNCTION_62_2();
  OUTLINED_FUNCTION_9_20();
  sub_26766B3A8(v4, v5);
  OUTLINED_FUNCTION_19_4();
  OUTLINED_FUNCTION_62_2();
  OUTLINED_FUNCTION_27_8();
  OUTLINED_FUNCTION_62_2();
  OUTLINED_FUNCTION_26_7();
  OUTLINED_FUNCTION_62_2();
  OUTLINED_FUNCTION_25_10();
  OUTLINED_FUNCTION_62_2();
  OUTLINED_FUNCTION_24_7();
  OUTLINED_FUNCTION_62_2();
  return OUTLINED_FUNCTION_62_2();
}

uint64_t sub_2675DA7D8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2675DA848()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2675DA888()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2675DA8C0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2675DA920@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2676CB00C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2675DAA00@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2676CB96C();
  *a1 = result;
  return result;
}

uint64_t sub_2675DABB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC1E8, &qword_2676CF570);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 24);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_2675DAC74(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC1E8, &qword_2676CF570);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2675DAD48@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2676CB5FC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2675DAD80()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2675DAEE8()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2675DAF24()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2675DAF78()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  OUTLINED_FUNCTION_11_22();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t sub_2675DAFFC()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_79();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_2675DB058(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCA18, &qword_2676CFEB0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 36) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_2675DB114(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCA18, &qword_2676CFEB0);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2675DB1CC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = type metadata accessor for ResolveRecipientsPlan();
  v4 = *(*(v3 - 1) + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(*(v3 - 1) + 64);
  v7 = v0 + v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCA18, &qword_2676CFEB0);
  OUTLINED_FUNCTION_2_6(v8);
  (*(v9 + 8))(v0 + v5);
  v10 = *(v0 + v5 + v3[9] + 8);

  v11 = (v0 + v5 + v3[11]);
  if (v11[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v11);
  }

  v12 = (v7 + v3[12]);
  if (v12[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  return MEMORY[0x2821FE8E8](v0, v5 + v6, v4 | 7);
}

uint64_t sub_2675DB308()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CD790, &qword_2676D3570);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CD788, &qword_2676D3568);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CC9F8, &unk_2676CFE90);
  OUTLINED_FUNCTION_1_26();
  sub_2676148C4(v0, &qword_2801CD788, &qword_2676D3568);
  OUTLINED_FUNCTION_2_26();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2675DB3E0(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC168, &unk_2676CF510);
    v11 = &a1[*(a3 + 20)];

    return __swift_getEnumTagSinglePayload(v11, a2, v10);
  }
}

_BYTE *sub_2675DB474(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC168, &unk_2676CF510);
    v8 = &v5[*(a4 + 20)];

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2675DB50C@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x26D5FD2A0]();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2675DB554(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC980, &unk_2676CFE10);
  v7 = OUTLINED_FUNCTION_7_7(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
LABEL_14:

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8B8, &unk_2676CFC60);
  v12 = OUTLINED_FUNCTION_7_7(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v14 = a3[5];
LABEL_13:
    v10 = a1 + v14;
    goto LABEL_14;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC9D0, &unk_2676D37C0);
  v16 = OUTLINED_FUNCTION_7_7(v15);
  if (*(v17 + 84) == a2)
  {
    v9 = v16;
    v14 = a3[6];
    goto LABEL_13;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC970, &qword_2676D1C50);
  v19 = OUTLINED_FUNCTION_7_7(v18);
  if (*(v20 + 84) == a2)
  {
    v9 = v19;
    v14 = a3[9];
    goto LABEL_13;
  }

  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC9D8, &unk_2676CFE60);
  v22 = OUTLINED_FUNCTION_7_7(v21);
  if (*(v23 + 84) == a2)
  {
    v9 = v22;
    v14 = a3[10];
    goto LABEL_13;
  }

  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC3D0, &qword_2676D1D80);
  v25 = OUTLINED_FUNCTION_7_7(v24);
  if (*(v26 + 84) == a2)
  {
    v9 = v25;
    v14 = a3[11];
    goto LABEL_13;
  }

  v28 = *(a1 + a3[14]);
  if (v28 >= 0xFFFFFFFF)
  {
    LODWORD(v28) = -1;
  }

  return (v28 + 1);
}

uint64_t sub_2675DB788(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC980, &unk_2676CFE10);
  v9 = OUTLINED_FUNCTION_7_7(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8B8, &unk_2676CFC60);
    v14 = OUTLINED_FUNCTION_7_7(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = a4[5];
    }

    else
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC9D0, &unk_2676D37C0);
      v18 = OUTLINED_FUNCTION_7_7(v17);
      if (*(v19 + 84) == a3)
      {
        v11 = v18;
        v16 = a4[6];
      }

      else
      {
        v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC970, &qword_2676D1C50);
        v21 = OUTLINED_FUNCTION_7_7(v20);
        if (*(v22 + 84) == a3)
        {
          v11 = v21;
          v16 = a4[9];
        }

        else
        {
          v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC9D8, &unk_2676CFE60);
          v24 = OUTLINED_FUNCTION_7_7(v23);
          if (*(v25 + 84) == a3)
          {
            v11 = v24;
            v16 = a4[10];
          }

          else
          {
            v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC3D0, &qword_2676D1D80);
            result = OUTLINED_FUNCTION_7_7(v26);
            if (*(v28 + 84) != a3)
            {
              *(a1 + a4[14]) = (a2 - 1);
              return result;
            }

            v11 = result;
            v16 = a4[11];
          }
        }
      }
    }

    v12 = a1 + v16;
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_2675DB9B8()
{
  OUTLINED_FUNCTION_5_6();
  result = sub_2676CB92C();
  *v0 = result;
  return result;
}

uint64_t sub_2675DB9E4()
{
  OUTLINED_FUNCTION_5_6();
  result = sub_2676CB94C();
  *v0 = result;
  return result;
}

uint64_t sub_2675DBA10()
{
  OUTLINED_FUNCTION_5_6();
  result = sub_2676CB98C();
  *v0 = result;
  return result;
}

uint64_t sub_2675DBA3C()
{
  OUTLINED_FUNCTION_5_6();
  result = sub_2676CBAFC();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2675DBA74()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CD820, &qword_2676D38A8);
  OUTLINED_FUNCTION_3_23();
  sub_2676148C4(v0, &qword_2801CD820, &qword_2676D38A8);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2675DBB04(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC980, &unk_2676CFE10);
  v7 = OUTLINED_FUNCTION_7_7(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
LABEL_14:

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC968, &unk_2676CFDF0);
  v12 = OUTLINED_FUNCTION_7_7(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v14 = a3[5];
LABEL_13:
    v10 = a1 + v14;
    goto LABEL_14;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC970, &qword_2676D1C50);
  v16 = OUTLINED_FUNCTION_7_7(v15);
  if (*(v17 + 84) == a2)
  {
    v9 = v16;
    v14 = a3[8];
    goto LABEL_13;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC978, &unk_2676CFE00);
  v19 = OUTLINED_FUNCTION_7_7(v18);
  if (*(v20 + 84) == a2)
  {
    v9 = v19;
    v14 = a3[10];
    goto LABEL_13;
  }

  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8C8, &unk_2676D1C40);
  v22 = OUTLINED_FUNCTION_7_7(v21);
  if (*(v23 + 84) == a2)
  {
    v9 = v22;
    v14 = a3[11];
    goto LABEL_13;
  }

  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC3D0, &qword_2676D1D80);
  v25 = OUTLINED_FUNCTION_7_7(v24);
  if (*(v26 + 84) == a2)
  {
    v9 = v25;
    v14 = a3[12];
    goto LABEL_13;
  }

  v28 = *(a1 + a3[15]);
  if (v28 >= 0xFFFFFFFF)
  {
    LODWORD(v28) = -1;
  }

  return (v28 + 1);
}

uint64_t sub_2675DBD38(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC980, &unk_2676CFE10);
  v9 = OUTLINED_FUNCTION_7_7(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC968, &unk_2676CFDF0);
    v14 = OUTLINED_FUNCTION_7_7(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = a4[5];
    }

    else
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC970, &qword_2676D1C50);
      v18 = OUTLINED_FUNCTION_7_7(v17);
      if (*(v19 + 84) == a3)
      {
        v11 = v18;
        v16 = a4[8];
      }

      else
      {
        v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC978, &unk_2676CFE00);
        v21 = OUTLINED_FUNCTION_7_7(v20);
        if (*(v22 + 84) == a3)
        {
          v11 = v21;
          v16 = a4[10];
        }

        else
        {
          v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8C8, &unk_2676D1C40);
          v24 = OUTLINED_FUNCTION_7_7(v23);
          if (*(v25 + 84) == a3)
          {
            v11 = v24;
            v16 = a4[11];
          }

          else
          {
            v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC3D0, &qword_2676D1D80);
            result = OUTLINED_FUNCTION_7_7(v26);
            if (*(v28 + 84) != a3)
            {
              *(a1 + a4[15]) = (a2 - 1);
              return result;
            }

            v11 = result;
            v16 = a4[12];
          }
        }
      }
    }

    v12 = a1 + v16;
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_2675DBFAC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CD8A8, &qword_2676D3A80);
  OUTLINED_FUNCTION_3_24();
  sub_2676148C4(v0, &qword_2801CD8A8, &qword_2676D3A80);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2675DC03C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8C8, &unk_2676D1C40);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_2675DC090(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8C8, &unk_2676D1C40);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_2675DC0E8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CD900, &unk_2676D3CA0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CD8F8, &qword_2676D3C98);
  sub_2676CB0DC();
  OUTLINED_FUNCTION_1_28();
  sub_2676148C4(v0, &qword_2801CD8F8, &qword_2676D3C98);
  OUTLINED_FUNCTION_2_26();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2675DC244(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC9D0, &unk_2676D37C0);
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_2675DC2D8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC9D0, &unk_2676D37C0);
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2675DC364()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CD998, &qword_2676D3E38);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CD990, &qword_2676D3E30);
  OUTLINED_FUNCTION_1_26();
  sub_2676148C4(v0, &qword_2801CD990, &qword_2676D3E30);
  OUTLINED_FUNCTION_4_28();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2675DC43C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC968, &unk_2676CFDF0);
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_2675DC4D0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC968, &unk_2676CFDF0);
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2675DC55C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CD998, &qword_2676D3E38);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CD990, &qword_2676D3E30);
  OUTLINED_FUNCTION_1_26();
  sub_2676148C4(v0, &qword_2801CD990, &qword_2676D3E30);
  OUTLINED_FUNCTION_4_28();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2675DC640()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2675DC770()
{
  OUTLINED_FUNCTION_5_6();
  result = sub_2676CB9AC();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2675DC79C()
{
  OUTLINED_FUNCTION_5_6();
  result = sub_2676C8CDC();
  *v0 = result;
  return result;
}

uint64_t sub_2675DC7C8()
{
  OUTLINED_FUNCTION_5_6();
  result = sub_2676C8CAC();
  *v0 = result;
  return result;
}

uint64_t sub_2675DC7F4()
{
  OUTLINED_FUNCTION_5_6();
  result = sub_2676C8CFC();
  *v0 = result;
  return result;
}

uint64_t sub_2675DC820()
{
  OUTLINED_FUNCTION_5_6();
  result = sub_2676C8D4C();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2675DC84C()
{
  v1 = (type metadata accessor for MailStateChangeEventHandler(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC9D0, &unk_2676D37C0);
  OUTLINED_FUNCTION_2_6(v6);
  v8 = *(v7 + 8);
  v9 = OUTLINED_FUNCTION_49_1();
  v8(v9);
  (v8)(v5 + v1[7], v6);
  (v8)(v5 + v1[8], v6);
  v10 = v1[9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC970, &qword_2676D1C50);
  OUTLINED_FUNCTION_8_2(v11);
  (*(v12 + 8))(v5 + v10);
  v13 = v1[10];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC9D8, &unk_2676CFE60);
  OUTLINED_FUNCTION_8_2(v14);
  (*(v15 + 8))(v5 + v13);
  v16 = v1[11];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC980, &unk_2676CFE10);
  OUTLINED_FUNCTION_8_2(v17);
  (*(v18 + 8))(v5 + v16);
  v19 = v1[12];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8D8, &unk_2676CFC70);
  OUTLINED_FUNCTION_8_2(v20);
  (*(v21 + 8))(v5 + v19);
  v22 = *(v0 + v4);

  return MEMORY[0x2821FE8E8](v0, v4 + 8, v2 | 7);
}

uint64_t sub_2675DCA68()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CDB98, &qword_2676D46A8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CDB90, &qword_2676D46A0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CDB88, &qword_2676D4698);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CDB80, &qword_2676D4690);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CDB78, &qword_2676D4688);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CDB70, &qword_2676D4680);
  type metadata accessor for ResolveSendMailIntent();
  sub_2676CBA1C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CC428, &unk_2676CEDD0);
  OUTLINED_FUNCTION_28_9();
  sub_2676A15C4(v0, v1);
  OUTLINED_FUNCTION_0_28();
  sub_2676A15C4(v2, v3);
  OUTLINED_FUNCTION_21_8();
  OUTLINED_FUNCTION_62_2();
  OUTLINED_FUNCTION_26_10();
  sub_2676A15C4(v4, v5);
  OUTLINED_FUNCTION_19_4();
  OUTLINED_FUNCTION_62_2();
  OUTLINED_FUNCTION_27_8();
  OUTLINED_FUNCTION_62_2();
  OUTLINED_FUNCTION_26_7();
  OUTLINED_FUNCTION_62_2();
  OUTLINED_FUNCTION_25_10();
  OUTLINED_FUNCTION_62_2();
  OUTLINED_FUNCTION_24_7();
  OUTLINED_FUNCTION_62_2();
  return OUTLINED_FUNCTION_62_2();
}

uint64_t sub_2675DCC78()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2675DCD04()
{
  OUTLINED_FUNCTION_5_6();
  result = sub_2676CB09C();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2675DCD68()
{
  OUTLINED_FUNCTION_5_6();
  result = sub_2676CB05C();
  *v0 = result;
  return result;
}

uint64_t sub_2675DCD94()
{
  OUTLINED_FUNCTION_5_6();
  result = sub_2676CB02C();
  *v0 = result;
  return result;
}

uint64_t sub_2675DCDC0()
{
  OUTLINED_FUNCTION_5_6();
  result = sub_2676CB07C();
  *v0 = result;
  return result;
}

uint64_t sub_2675DCDEC()
{
  OUTLINED_FUNCTION_5_6();
  result = sub_2676CB16C();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2675DCE40()
{
  OUTLINED_FUNCTION_5_6();
  result = sub_2676CAFEC();
  *v0 = result;
  return result;
}

uint64_t sub_2675DCE6C()
{
  OUTLINED_FUNCTION_21_1();
  v1 = (type metadata accessor for MailSceneHostStateChangeEventHandler(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC968, &unk_2676CFDF0);
  OUTLINED_FUNCTION_2_6(v5);
  v7 = *(v6 + 8);
  v8 = OUTLINED_FUNCTION_49_1();
  v7(v8);
  (v7)(v4 + v1[7], v5);
  (v7)(v4 + v1[8], v5);
  v9 = v1[9];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC970, &qword_2676D1C50);
  OUTLINED_FUNCTION_2_6(v10);
  v12 = *(v11 + 8);
  v12(v4 + v9, v10);
  v12(v4 + v1[10], v10);
  v13 = v1[11];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC978, &unk_2676CFE00);
  OUTLINED_FUNCTION_8_2(v14);
  (*(v15 + 8))(v4 + v13);
  v16 = v1[12];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8C8, &unk_2676D1C40);
  OUTLINED_FUNCTION_8_2(v17);
  (*(v18 + 8))(v4 + v16);
  v19 = v1[13];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC980, &unk_2676CFE10);
  OUTLINED_FUNCTION_8_2(v20);
  (*(v21 + 8))(v4 + v19);
  v22 = v1[14];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8D8, &unk_2676CFC70);
  OUTLINED_FUNCTION_8_2(v23);
  (*(v24 + 8))(v4 + v22);
  v25 = *(v0 + v3);

  OUTLINED_FUNCTION_20_1();

  return MEMORY[0x2821FE8E8](v26, v27, v28);
}

uint64_t sub_2675DD0DC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CDC18, &qword_2676D4B90);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CDC10, &qword_2676D4B88);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CDC08, &qword_2676D4B80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CDC00, &qword_2676D4B78);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CDBF8, &qword_2676D4B70);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CDBF0, &qword_2676D4B68);
  type metadata accessor for ResolveSiriMailMessageIntent();
  sub_2676CBA1C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CC428, &unk_2676CEDD0);
  OUTLINED_FUNCTION_37_9();
  sub_2676AFE00(v0, v1);
  OUTLINED_FUNCTION_0_29();
  sub_2676AFE00(v2, v3);
  OUTLINED_FUNCTION_21_8();
  OUTLINED_FUNCTION_62_2();
  OUTLINED_FUNCTION_12_18();
  sub_2676AFE00(v4, v5);
  OUTLINED_FUNCTION_19_4();
  OUTLINED_FUNCTION_62_2();
  OUTLINED_FUNCTION_27_8();
  OUTLINED_FUNCTION_62_2();
  OUTLINED_FUNCTION_26_7();
  OUTLINED_FUNCTION_62_2();
  OUTLINED_FUNCTION_25_10();
  OUTLINED_FUNCTION_62_2();
  OUTLINED_FUNCTION_24_7();
  OUTLINED_FUNCTION_62_2();
  return OUTLINED_FUNCTION_62_2();
}

uint64_t sub_2675DD304()
{
  OUTLINED_FUNCTION_5_6();
  result = sub_2676CB75C();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2675DD358()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2675DD3FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2676CBE1C();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_2675DD444(uint64_t a1, uint64_t a2)
{
  v4 = sub_2676CBE1C();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_2675DD498(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2676CAA9C();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_2675DD558(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2676CAA9C();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  return result;
}

uint64_t sub_2675DD73C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t getEnumTagSinglePayload for AppHelper(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *storeEnumTagSinglePayload for AppHelper(_BYTE *result, int a2, int a3)
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

uint64_t sub_2675DD880()
{
  v38[1] = *MEMORY[0x277D85DE8];
  v0 = type metadata accessor for Signpost.OpenSignpost();
  v1 = *(*(v0 - 1) + 64);
  MEMORY[0x28223BE20](v0);
  v3 = v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2801CBAA8 != -1)
  {
LABEL_32:
    swift_once();
  }

  v4 = qword_2801D3F18;
  sub_2676CBE0C();
  sub_2676CC29C();
  sub_2676CBDFC();
  v5 = v3 + v0[5];
  *v5 = "ConfirmValidMailAccount";
  *(v5 + 8) = 23;
  *(v5 + 16) = 2;
  v6 = objc_allocWithZone(MEMORY[0x277CB8F48]);
  v7 = sub_2675DDFF0(0xD000000000000014, 0x80000002676D6080);
  if (!v7)
  {
    goto LABEL_22;
  }

  v8 = v7;
  v9 = sub_2675DDD4C();
  v38[0] = 0;
  v10 = sub_2675DE450(v9, v38, v8);
  v0 = v38[0];
  if (!v10)
  {
    v27 = v38[0];
    v28 = sub_2676C8FCC();

    swift_willThrow();
LABEL_22:
    if (qword_2801CBAA0 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v29 = sub_2676CBE4C();
    __swift_project_value_buffer(v29, qword_2801CDC90);
    v30 = sub_2676CBE2C();
    v31 = sub_2676CC23C();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_2675D4000, v30, v31, "#hasValidAccount found no Mail accounts", v32, 2u);
      MEMORY[0x26D5FEA80](v32, -1, -1);
    }

    v33 = 0;
    goto LABEL_29;
  }

  v11 = v10;
  v36[0] = v8;
  v36[1] = v4;
  v37 = v3;
  sub_2675DE684();
  v12 = sub_2676CC0FC();
  v13 = v0;

  v38[0] = MEMORY[0x277D84F90];
  v14 = sub_267630B8C(v12);
  v3 = 0;
  v15 = *MEMORY[0x277CB89C8];
  while (v14 != v3)
  {
    if ((v12 & 0xC000000000000001) != 0)
    {
      v16 = MEMORY[0x26D5FE0E0](v3, v12);
    }

    else
    {
      if (v3 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_31;
      }

      v16 = *(v12 + 8 * v3 + 32);
    }

    v17 = v16;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    if ([v16 isEnabledForDataclass_])
    {
      v0 = v38;
      sub_2676CC44C();
      v18 = *(v38[0] + 2);
      sub_2676CC47C();
      sub_2676CC48C();
      sub_2676CC45C();
    }

    else
    {
    }

    ++v3;
  }

  v19 = v38[0];
  if (!sub_267630B8C(v38[0]))
  {

    v3 = v37;
    goto LABEL_22;
  }

  v3 = v37;
  v20 = v36[0];
  if (qword_2801CBAA0 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v21 = sub_2676CBE4C();
  __swift_project_value_buffer(v21, qword_2801CDC90);

  v22 = sub_2676CBE2C();
  v23 = sub_2676CC23C();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 134217984;
    v25 = sub_267630B8C(v19);

    *(v24 + 4) = v25;

    _os_log_impl(&dword_2675D4000, v22, v23, "#hasValidAccount found %ld Mail accounts", v24, 0xCu);
    v26 = v24;
    v3 = v37;
    MEMORY[0x26D5FEA80](v26, -1, -1);
  }

  else
  {
  }

  v33 = 1;
LABEL_29:
  sub_2676CC28C();
  sub_2676CBDFC();
  sub_2675DE628(v3);
  v34 = *MEMORY[0x277D85DE8];
  return v33;
}

uint64_t sub_2675DDD4C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBB78, &qword_2676CD280);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2676CD240;
  v1 = *MEMORY[0x277CB8C60];
  *(v0 + 32) = sub_2676CBF6C();
  *(v0 + 40) = v2;
  v3 = *MEMORY[0x277CB8C68];
  *(v0 + 48) = sub_2676CBF6C();
  *(v0 + 56) = v4;
  v5 = *MEMORY[0x277CB8C00];
  *(v0 + 64) = sub_2676CBF6C();
  *(v0 + 72) = v6;
  v7 = *MEMORY[0x277CB8CD8];
  *(v0 + 80) = sub_2676CBF6C();
  *(v0 + 88) = v8;
  v9 = *MEMORY[0x277CB8CF8];
  *(v0 + 96) = sub_2676CBF6C();
  *(v0 + 104) = v10;
  v11 = *MEMORY[0x277CB8B98];
  *(v0 + 112) = sub_2676CBF6C();
  *(v0 + 120) = v12;
  v13 = *MEMORY[0x277CB8BA0];
  *(v0 + 128) = sub_2676CBF6C();
  *(v0 + 136) = v14;
  v15 = *MEMORY[0x277CB8D38];
  *(v0 + 144) = sub_2676CBF6C();
  *(v0 + 152) = v16;
  v17 = *MEMORY[0x277CB8C40];
  *(v0 + 160) = sub_2676CBF6C();
  *(v0 + 168) = v18;
  v19 = *MEMORY[0x277CB8C50];
  *(v0 + 176) = sub_2676CBF6C();
  *(v0 + 184) = v20;
  v21 = *MEMORY[0x277CB8B80];
  *(v0 + 192) = sub_2676CBF6C();
  *(v0 + 200) = v22;
  v23 = *MEMORY[0x277CB8B88];
  *(v0 + 208) = sub_2676CBF6C();
  *(v0 + 216) = v24;
  v25 = *MEMORY[0x277CB8CE8];
  *(v0 + 224) = sub_2676CBF6C();
  *(v0 + 232) = v26;
  return v0;
}

id sub_2675DDEA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2676C90FC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_allocWithZone(MEMORY[0x277D479F0]) init];
  sub_2675DE4C4(v9);
  if (v10)
  {
  }

  else
  {
    sub_2676C90EC();
    v11 = sub_2676C90DC();
    v13 = v12;
    (*(v5 + 8))(v8, v4);
    sub_2675DE58C(v11, v13, v9);
  }

  sub_2675DE534(a1, a2, v9);
  return v9;
}

id sub_2675DDFF0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_2676CBF3C();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithEffectiveBundleID_];

  return v4;
}

uint64_t sub_2675DE054(uint64_t a1, id *a2)
{
  result = sub_2676CBF4C();
  *a2 = 0;
  return result;
}

uint64_t sub_2675DE0CC(uint64_t a1, id *a2)
{
  v3 = sub_2676CBF5C();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_2675DE14C()
{
  sub_2676CBF6C();
  v0 = sub_2676CBF3C();

  return v0;
}

uint64_t sub_2675DE184()
{
  v0 = sub_2676CBF6C();
  v1 = MEMORY[0x26D5FDD40](v0);

  return v1;
}

uint64_t sub_2675DE1BC()
{
  sub_2676CBF6C();
  sub_2676CBFFC();
}

uint64_t sub_2675DE210()
{
  sub_2676CBF6C();
  sub_2676CC64C();
  sub_2676CBFFC();
  v0 = sub_2676CC67C();

  return v0;
}

uint64_t sub_2675DE290(uint64_t a1)
{
  v2 = sub_2675DE814(&qword_2801CBBD0, type metadata accessor for DocumentAttributeKey);
  v3 = sub_2675DE814(&qword_2801CBBD8, type metadata accessor for DocumentAttributeKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_2675DE34C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_2676CBF3C();

  *a2 = v5;
  return result;
}

uint64_t sub_2675DE394(uint64_t a1)
{
  v2 = sub_2675DE814(&qword_2801CBBC0, type metadata accessor for DocumentType);
  v3 = sub_2675DE814(&qword_2801CBBC8, type metadata accessor for DocumentType);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

id sub_2675DE450(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_2676CC0EC();

  v6 = [a3 accountsWithAccountTypeIdentifiers:v5 error:a2];

  return v6;
}

uint64_t sub_2675DE4C4(void *a1)
{
  v2 = [a1 aceId];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_2676CBF6C();

  return v3;
}

void sub_2675DE534(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_2676CBF3C();
  [a3 setBundleId_];
}

void sub_2675DE58C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_2676CBF3C();

  [a3 setAceId_];
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_2675DE628(uint64_t a1)
{
  v2 = type metadata accessor for Signpost.OpenSignpost();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2675DE684()
{
  result = qword_2801CBB70;
  if (!qword_2801CBB70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2801CBB70);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void sub_2675DE738(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_2675DE814(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_0()
{

  return swift_once();
}

uint64_t sub_2675DE9C0(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v34 = a1;
  v35 = a2;
  v37 = sub_2676C8C8C();
  v5 = OUTLINED_FUNCTION_3(v37);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4();
  v31 = v10;
  result = MEMORY[0x28223BE20](v11);
  v14 = &v28 - v13;
  v15 = 0;
  v36 = *(a3 + 16);
  v33 = v7 + 16;
  v16 = (v7 + 8);
  v30 = (v7 + 32);
  v32 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v36 == v15)
    {

      return v32;
    }

    if (v15 >= *(a3 + 16))
    {
      break;
    }

    v17 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v18 = *(v7 + 72);
    v19 = a3;
    (*(v7 + 16))(v14, a3 + v17 + v18 * v15, v37);
    v20 = v34(v14);
    if (v3)
    {
      (*v16)(v14, v37);
      v27 = v32;

      return v27;
    }

    if (v20)
    {
      v29 = *v30;
      v29(v31, v14, v37);
      v21 = v32;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v38 = v21;
      if (isUniquelyReferenced_nonNull_native)
      {
        v23 = v21;
      }

      else
      {
        sub_2676C2778(0, *(v21 + 16) + 1, 1);
        v23 = v38;
      }

      a3 = v19;
      v25 = *(v23 + 16);
      v24 = *(v23 + 24);
      v26 = v25 + 1;
      if (v25 >= v24 >> 1)
      {
        v32 = v25 + 1;
        v28 = v25;
        sub_2676C2778(v24 > 1, v25 + 1, 1);
        v26 = v32;
        v25 = v28;
        a3 = v19;
        v23 = v38;
      }

      ++v15;
      *(v23 + 16) = v26;
      v32 = v23;
      result = (v29)(v23 + v17 + v25 * v18, v31, v37);
    }

    else
    {
      result = (*v16)(v14, v37);
      ++v15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2675DEC6C(uint64_t a1, void (*a2)(uint64_t))
{
  v7 = sub_2676C8C8C();
  v8 = OUTLINED_FUNCTION_3(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_16();
  v13 = MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_11(v13, v14, v15, v16, v17, v18, v19, v20, v42);
  sub_2676A1944();
  OUTLINED_FUNCTION_5(v21);
  OUTLINED_FUNCTION_14(MEMORY[0x277D84F90]);
LABEL_2:
  while (a1 != v43)
  {
    v22 = OUTLINED_FUNCTION_0_0();
    v4(v22);
    v45 = a1 + 1;
    if (*(v3 + 16))
    {
      v23 = *(v3 + 40);
      OUTLINED_FUNCTION_1();
      sub_2675DF0DC(&qword_2801CBF50, v24);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_15();
      while (1)
      {
        OUTLINED_FUNCTION_7(v25);
        if ((v26 & 1) == 0)
        {
          break;
        }

        v27 = OUTLINED_FUNCTION_10();
        v4(v27);
        OUTLINED_FUNCTION_1();
        sub_2675DF0DC(&qword_2801CBF58, v28);
        OUTLINED_FUNCTION_12();
        v29 = OUTLINED_FUNCTION_13();
        a2(v29);
        v25 = v2 + 1;
        if (v23)
        {
          (a2)(v46, v7);
          a1 = v45;
          goto LABEL_2;
        }
      }
    }

    v30 = OUTLINED_FUNCTION_17();
    v4(v30);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32 = v44;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v33 = OUTLINED_FUNCTION_8();
      sub_2676C2778(v33, v34, v35);
      v32 = v44;
    }

    v36 = *(v32 + 24);
    if (*(v32 + 16) >= v36 >> 1)
    {
      v38 = OUTLINED_FUNCTION_9(v36);
      sub_2676C2778(v38, v39, v40);
    }

    v37 = OUTLINED_FUNCTION_6();
    v4(v37);
    a1 = v45;
  }

  return v44;
}

uint64_t sub_2675DEEA4(uint64_t a1, void (*a2)(uint64_t))
{
  v7 = sub_2676CB14C();
  v8 = OUTLINED_FUNCTION_3(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_16();
  v13 = MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_11(v13, v14, v15, v16, v17, v18, v19, v20, v42);
  sub_2676A1AA0();
  OUTLINED_FUNCTION_5(v21);
  OUTLINED_FUNCTION_14(MEMORY[0x277D84F90]);
LABEL_2:
  while (a1 != v43)
  {
    v22 = OUTLINED_FUNCTION_0_0();
    v4(v22);
    v45 = a1 + 1;
    if (*(v3 + 16))
    {
      v23 = *(v3 + 40);
      OUTLINED_FUNCTION_2();
      sub_2675DF0DC(&qword_2801CBF40, v24);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_15();
      while (1)
      {
        OUTLINED_FUNCTION_7(v25);
        if ((v26 & 1) == 0)
        {
          break;
        }

        v27 = OUTLINED_FUNCTION_10();
        v4(v27);
        OUTLINED_FUNCTION_2();
        sub_2675DF0DC(&qword_2801CBF48, v28);
        OUTLINED_FUNCTION_12();
        v29 = OUTLINED_FUNCTION_13();
        a2(v29);
        v25 = v2 + 1;
        if (v23)
        {
          (a2)(v46, v7);
          a1 = v45;
          goto LABEL_2;
        }
      }
    }

    v30 = OUTLINED_FUNCTION_17();
    v4(v30);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32 = v44;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v33 = OUTLINED_FUNCTION_8();
      sub_2676C27D0(v33, v34, v35);
      v32 = v44;
    }

    v36 = *(v32 + 24);
    if (*(v32 + 16) >= v36 >> 1)
    {
      v38 = OUTLINED_FUNCTION_9(v36);
      sub_2676C27D0(v38, v39, v40);
    }

    v37 = OUTLINED_FUNCTION_6();
    v4(v37);
    a1 = v45;
  }

  return v44;
}

uint64_t sub_2675DF0DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_0_0()
{
  v1 = *(v0 - 176);
  v2 = *(v0 - 168);
  *(v0 - 128) = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v1 + 72);
  v4 = *(v1 + 16);
  v6 = *(v0 - 104);
  return *(v0 - 96);
}

uint64_t OUTLINED_FUNCTION_5(uint64_t result)
{
  v4 = *(v1 + 16);
  *(v3 - 168) = v1;
  *(v3 - 160) = v4;
  *(v3 - 112) = result + 56;
  *(v3 - 104) = v2 + 16;
  return result;
}

uint64_t OUTLINED_FUNCTION_6()
{
  *(v0 + 16) = v1;
  *(v4 - 136) = v0;
  result = v0 + *(v4 - 128) + v2 * v3;
  v7 = *(v4 - 152);
  v6 = *(v4 - 144);
  return result;
}

uint64_t OUTLINED_FUNCTION_10()
{
  v5 = *(v2 + 48) + v1 * v3;
  result = v0;
  v7 = *(v4 - 104);
  return result;
}

uint64_t OUTLINED_FUNCTION_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v10 - 96) = &a9 - v9;
}

uint64_t OUTLINED_FUNCTION_12()
{
  v2 = *(v0 - 96);

  return sub_2676CBF1C();
}

void OUTLINED_FUNCTION_14(uint64_t a1@<X8>)
{
  *(v2 - 136) = a1;
  *(v2 - 176) = v1;
  *(v2 - 152) = v1 + 32;
}

uint64_t OUTLINED_FUNCTION_17()
{
  result = *(v0 - 144);
  v2 = **(v0 - 152);
  v3 = *(v0 - 96);
  return result;
}

uint64_t OUTLINED_FUNCTION_18()
{
  v2 = *(v0 - 96);

  return sub_2676CBF0C();
}

uint64_t sub_2675DF334()
{
  OUTLINED_FUNCTION_3_0();
  v0[2] = v1;
  v2 = sub_2676C90FC();
  v0[3] = v2;
  OUTLINED_FUNCTION_1_0(v2);
  v0[4] = v3;
  v5 = *(v4 + 64);
  v0[5] = OUTLINED_FUNCTION_2_0();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2801CCB20, &qword_2676CDA80) - 8) + 64);
  v0[6] = OUTLINED_FUNCTION_2_0();
  v7 = *(*(sub_2676CAF8C() - 8) + 64);
  v0[7] = OUTLINED_FUNCTION_2_0();
  v8 = sub_2676C99CC();
  v0[8] = v8;
  OUTLINED_FUNCTION_1_0(v8);
  v0[9] = v9;
  v11 = *(v10 + 64) + 15;
  v0[10] = swift_task_alloc();
  v0[11] = swift_task_alloc();
  v12 = sub_2676C9DDC();
  v0[12] = v12;
  OUTLINED_FUNCTION_1_0(v12);
  v0[13] = v13;
  v15 = *(v14 + 64);
  v0[14] = OUTLINED_FUNCTION_2_0();
  v16 = *(*(sub_2676CB48C() - 8) + 64);
  v0[15] = OUTLINED_FUNCTION_2_0();

  return MEMORY[0x2822009F8](sub_2675DF504, 0, 0);
}

uint64_t sub_2675DF504()
{
  OUTLINED_FUNCTION_3_0();
  v1 = v0[15];
  type metadata accessor for ReadMailCATsSimple();
  sub_2676CB47C();
  v0[16] = sub_2676CB42C();
  v2 = swift_task_alloc();
  v0[17] = v2;
  *v2 = v0;
  v2[1] = sub_2675DF5BC;

  return sub_267652C44();
}

uint64_t sub_2675DF5BC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 136);
  v6 = *v2;
  OUTLINED_FUNCTION_0_1();
  *v7 = v6;
  v4[18] = v1;

  if (v1)
  {
    v8 = sub_2675DFB70;
  }

  else
  {
    v9 = v4[16];

    v4[19] = a1;
    v8 = sub_2675DF6E4;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_2675DF6E4()
{
  v1 = v0[14];
  v2 = v0[10];
  v3 = v0[11];
  v4 = v0[8];
  v5 = v0[9];
  v6 = v0[7];
  v8 = v0[4];
  v7 = v0[5];
  v20 = v0[6];
  v21 = v0[3];
  v23 = v0[19];
  sub_2676C999C();
  (*(v5 + 16))(v2, v3, v4);
  sub_2676C9D2C();
  sub_2676C9D6C();
  sub_26762D4C8(v6);
  sub_2676C9D3C();
  sub_2676C9D7C();
  sub_2676C9DBC();
  sub_2676C9DAC();
  v9 = sub_2676C9B3C();
  __swift_storeEnumTagSinglePayload(v20, 1, 1, v9);
  sub_2676C9D8C();
  sub_2676C9D9C();
  sub_2676C90EC();
  sub_2676C90DC();
  (*(v8 + 8))(v7, v21);
  sub_2676C9D5C();
  (*(v5 + 8))(v3, v4);
  v10 = sub_2676C9B9C();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v0[20] = sub_2676C9B8C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC5A0, &qword_2676CD620);
  v13 = swift_allocObject();
  v0[21] = v13;
  *(v13 + 16) = xmmword_2676CD5C0;
  *(v13 + 32) = v23;
  v14 = *(MEMORY[0x277D5BD50] + 4);
  v22 = (*MEMORY[0x277D5BD50] + MEMORY[0x277D5BD50]);
  v15 = v23;
  v16 = swift_task_alloc();
  v0[22] = v16;
  *v16 = v0;
  v16[1] = sub_2675DF960;
  v17 = v0[14];
  v18 = v0[2];

  return v22(v18, v13, v17);
}

uint64_t sub_2675DF960()
{
  OUTLINED_FUNCTION_3_0();
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 168);
  v3 = *(*v0 + 160);
  v4 = *v0;
  OUTLINED_FUNCTION_0_1();
  *v5 = v4;

  return MEMORY[0x2822009F8](sub_2675DFA88, 0, 0);
}

uint64_t sub_2675DFA88()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  v3 = *(v0 + 96);
  v4 = *(v0 + 104);
  v6 = *(v0 + 80);
  v5 = *(v0 + 88);
  v8 = *(v0 + 48);
  v7 = *(v0 + 56);
  v9 = *(v0 + 40);

  (*(v4 + 8))(v1, v3);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_2675DFB70()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  v5 = v0[10];
  v4 = v0[11];
  v7 = v0[6];
  v6 = v0[7];
  v8 = v0[5];

  v9 = v0[1];
  v10 = v0[18];

  return v9();
}

uint64_t sub_2675DFC34()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2675DFCCC;

  return sub_2675DF334();
}

uint64_t sub_2675DFCCC()
{
  OUTLINED_FUNCTION_3_0();
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_0_1();
  *v3 = v2;

  v4 = *(v2 + 8);

  return v4();
}

uint64_t OUTLINED_FUNCTION_2_0()
{

  return swift_task_alloc();
}

uint64_t sub_2675DFE20(char a1)
{
  v1 = *(&off_279C11558 + a1);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF60, &unk_2676CEDE0);
  OUTLINED_FUNCTION_1_1();
  sub_2675E0214(v2, v3);
  OUTLINED_FUNCTION_0_2();
  sub_2675E0214(v4, v5);
  v6 = sub_2676CA8CC();

  return v6;
}

uint64_t sub_2675DFEE4(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF60, &unk_2676CEDE0);
  OUTLINED_FUNCTION_1_1();
  sub_2675E0214(v3, v4);
  OUTLINED_FUNCTION_0_2();
  sub_2675E0214(v5, v6);
  v7 = sub_2676CA8BC();
  sub_2676A1D90(a2);
  v7(&v9, 0);
}

void sub_2675E0008(char a1)
{
  if (a1)
  {
    if (a1 != 1)
    {
      goto LABEL_9;
    }

    swift_getKeyPath();
    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF60, &unk_2676CEDE0);
    OUTLINED_FUNCTION_1_1();
    sub_2675E0214(v2, v3);
    OUTLINED_FUNCTION_0_2();
    sub_2675E0214(v4, v5);
    OUTLINED_FUNCTION_2_1();
    OUTLINED_FUNCTION_3_1();
    OUTLINED_FUNCTION_4_0();
    if (v8 == v9)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  swift_getKeyPath();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF60, &unk_2676CEDE0);
  OUTLINED_FUNCTION_1_1();
  sub_2675E0214(v10, v11);
  OUTLINED_FUNCTION_0_2();
  sub_2675E0214(v12, v13);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_4_0();
  if (v8 == v9)
  {
    goto LABEL_10;
  }

  __break(1u);
LABEL_9:
  swift_getKeyPath();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF60, &unk_2676CEDE0);
  OUTLINED_FUNCTION_1_1();
  sub_2675E0214(v14, v15);
  OUTLINED_FUNCTION_0_2();
  sub_2675E0214(v16, v17);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_4_0();
  if (v8 == v9)
  {
LABEL_10:
    sub_2675E0994(v6, v7);
    v1(v18, 0);

    return;
  }

  __break(1u);
}

uint64_t sub_2675E0214(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2675E025C(char a1, uint64_t a2)
{
  v3 = *(&off_279C11558 + a1);
  KeyPath = swift_getKeyPath();

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF60, &unk_2676CEDE0);
  OUTLINED_FUNCTION_1_1();
  v8 = sub_2675E0214(v6, v7);
  OUTLINED_FUNCTION_0_2();
  v11 = sub_2675E0214(v9, v10);

  return MEMORY[0x2821C3648](a2, KeyPath, v5, v8, v11);
}

uint64_t sub_2675E0334(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a3 + 16);
  while (1)
  {
    if (v7 == v6)
    {
      return 0;
    }

    v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF78, &qword_2676CDF00) - 8);
    result = a1(a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v6);
    if (v3)
    {
      return result;
    }

    if (result)
    {
      break;
    }

    ++v6;
  }

  return v6;
}

uint64_t sub_2675E047C(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_2676CC4EC();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_2676CC42C();
  *v1 = result;
  return result;
}

uint64_t sub_2675E054C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    if (*(v6 + 16) > a1)
    {
      v8 = *(v6 + 16);
    }

    result = a3();
    *v3 = result;
  }

  return result;
}

uint64_t sub_2675E05C4(uint64_t (*a1)(unint64_t), uint64_t a2)
{
  v50 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF78, &qword_2676CDF00);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v38 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v38 - v13;
  v15 = *v2;
  v16 = v52;
  result = sub_2675E0334(v50, a2, *v2);
  if (!v16)
  {
    v45 = v14;
    v40 = v9;
    v41 = v12;
    v48 = result;
    if (v18)
    {
      return *(v15 + 16);
    }

    else
    {
      v51 = 0;
      v38 = v2;
      v19 = v48 + 1;
      if (!__OFADD__(v48, 1))
      {
        v47 = v5 + 16;
        v43 = a2;
        v44 = v5 + 8;
        v39 = (v5 + 40);
        v20 = v45;
        v42 = v5;
        while (1)
        {
          v21 = *(v15 + 16);
          if (v19 == v21)
          {
            return v48;
          }

          if (v19 >= v21)
          {
            break;
          }

          v22 = v15;
          v46 = (*(v5 + 80) + 32) & ~*(v5 + 80);
          v23 = v15 + v46;
          v24 = *(v5 + 72);
          v52 = v19;
          v25 = *(v5 + 16);
          v49 = v24 * v19;
          v25(v20, v23 + v24 * v19, v4);
          v26 = v51;
          v27 = v4;
          v28 = v50(v20);
          result = (*(v5 + 8))(v20, v27);
          if (v26)
          {
            return result;
          }

          v51 = 0;
          if (v28)
          {
            v4 = v27;
            v5 = v42;
            v20 = v45;
            v15 = v22;
            v29 = v52;
          }

          else
          {
            v30 = v48;
            v29 = v52;
            if (v52 == v48)
            {
              v4 = v27;
              v20 = v45;
              v15 = v22;
            }

            else
            {
              result = v41;
              if ((v48 & 0x8000000000000000) != 0)
              {
                goto LABEL_26;
              }

              v31 = *(v22 + 16);
              if (v48 >= v31)
              {
                goto LABEL_27;
              }

              v32 = v24 * v48;
              result = (v25)(v41, v23 + v24 * v48, v27);
              if (v52 >= v31)
              {
                goto LABEL_28;
              }

              v33 = v40;
              v25(v40, v23 + v49, v27);
              v15 = v22;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_2675E0958(v22);
                v15 = v37;
              }

              v34 = v15 + v46;
              v35 = *v39;
              v36 = v33;
              v4 = v27;
              result = (*v39)(v15 + v46 + v32, v36, v27);
              if (v52 >= *(v15 + 16))
              {
                goto LABEL_29;
              }

              result = v35(v34 + v49, v41, v27);
              v29 = v52;
              *v38 = v15;
              v30 = v48;
              v20 = v45;
            }

            v48 = v30 + 1;
            v5 = v42;
          }

          v19 = v29 + 1;
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
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_2675E0994(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = v4 - v6;
  if (__OFADD__(v4, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_2675E054C(result, 1, sub_267606BD8);
  v8 = *v2;
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF78, &qword_2676CDF00) - 8);
  v10 = v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v11 = *(v9 + 72);
  v12 = v10 + v11 * v5;
  result = swift_arrayDestroy();
  if (!v6)
  {
LABEL_10:
    *v2 = v8;
    return result;
  }

  v13 = *(v8 + 16);
  if (__OFSUB__(v13, a2))
  {
    goto LABEL_16;
  }

  result = sub_2676C24A0(v10 + v11 * a2, v13 - a2, v12);
  v14 = *(v8 + 16);
  v15 = __OFADD__(v14, v7);
  v16 = v14 - v6;
  if (!v15)
  {
    *(v8 + 16) = v16;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t OUTLINED_FUNCTION_2_1()
{

  return sub_2676CA8BC();
}

uint64_t OUTLINED_FUNCTION_3_1()
{

  return sub_2675E05C4(v1, v0);
}

uint64_t sub_2675E0B80()
{
  OUTLINED_FUNCTION_3_0();
  v0[2] = v1;
  v0[3] = v2;
  v3 = sub_2676C90FC();
  v0[4] = v3;
  OUTLINED_FUNCTION_1_0(v3);
  v0[5] = v4;
  v6 = *(v5 + 64);
  v0[6] = OUTLINED_FUNCTION_2_0();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2801CCB20, &qword_2676CDA80) - 8) + 64);
  v0[7] = OUTLINED_FUNCTION_2_0();
  v8 = *(*(sub_2676CAF8C() - 8) + 64);
  v0[8] = OUTLINED_FUNCTION_2_0();
  v9 = sub_2676C99CC();
  v0[9] = v9;
  OUTLINED_FUNCTION_1_0(v9);
  v0[10] = v10;
  v12 = *(v11 + 64) + 15;
  v0[11] = swift_task_alloc();
  v0[12] = swift_task_alloc();
  v13 = sub_2676C9DDC();
  v0[13] = v13;
  OUTLINED_FUNCTION_1_0(v13);
  v0[14] = v14;
  v16 = *(v15 + 64);
  v0[15] = OUTLINED_FUNCTION_2_0();
  v17 = *(*(sub_2676CB48C() - 8) + 64);
  v0[16] = OUTLINED_FUNCTION_2_0();

  return MEMORY[0x2822009F8](sub_2675E0D50, 0, 0);
}

uint64_t sub_2675E0D50()
{
  OUTLINED_FUNCTION_3_0();
  v1 = v0[16];
  type metadata accessor for ReadMailCATsSimple();
  sub_2676CB47C();
  v0[17] = sub_2676CB42C();
  v2 = swift_task_alloc();
  v0[18] = v2;
  *v2 = v0;
  v2[1] = sub_2675E0E08;

  return sub_267652AAC();
}

uint64_t sub_2675E0E08()
{
  OUTLINED_FUNCTION_3_0();
  v2 = *v1;
  v3 = *(*v1 + 144);
  v8 = *v1;
  v2[19] = v4;
  v2[20] = v0;

  if (v0)
  {
    v5 = sub_2675E14A0;
  }

  else
  {
    v6 = v2[17];

    v5 = sub_2675E0F20;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

void sub_2675E0F20()
{
  v1 = [*(v0 + 152) dialog];
  sub_2675E16F4();
  v2 = sub_2676CC0FC();

  v3 = sub_267630B8C(v2);
  for (i = 0; v3 != i; ++i)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x26D5FE0E0](i, v2);
    }

    else
    {
      if (i >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      v5 = *(v2 + 8 * i + 32);
    }

    v6 = v5;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_15:
      __break(1u);
      return;
    }

    [v5 setSpokenOnly_];
    [v6 setSpokenOnlyDefined_];
  }

  v7 = *(v0 + 120);
  v9 = *(v0 + 88);
  v8 = *(v0 + 96);
  v11 = *(v0 + 72);
  v10 = *(v0 + 80);
  v12 = *(v0 + 64);
  v14 = *(v0 + 40);
  v13 = *(v0 + 48);
  v28 = *(v0 + 56);
  v29 = *(v0 + 32);
  v30 = *(v0 + 24);

  sub_2676C999C();
  (*(v10 + 16))(v9, v8, v11);
  sub_2676C9D2C();
  sub_2676C9D6C();
  sub_26762D4C8(v12);
  sub_2676C9D3C();
  sub_2676C9D7C();
  sub_2676C9DBC();
  sub_2676C9DAC();
  v15 = sub_2676C9B3C();
  __swift_storeEnumTagSinglePayload(v28, 1, 1, v15);
  sub_2676C9D8C();
  sub_2676C9D9C();
  sub_2676C90EC();
  sub_2676C90DC();
  (*(v14 + 8))(v13, v29);
  sub_2676C9D5C();
  if ((v30 & 0x80) != 0)
  {
    v16 = *(v0 + 120);
    v17 = *(v0 + 64);
    sub_2676CAF6C();
    sub_2676C9D3C();
  }

  v18 = *(v0 + 152);
  (*(*(v0 + 80) + 8))(*(v0 + 96), *(v0 + 72));
  v19 = sub_2676C9B9C();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  *(v0 + 168) = sub_2676C9B8C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC5A0, &qword_2676CD620);
  v22 = swift_allocObject();
  *(v0 + 176) = v22;
  *(v22 + 16) = xmmword_2676CD5C0;
  *(v22 + 32) = v18;
  v23 = *(MEMORY[0x277D5BD50] + 4);
  v31 = (*MEMORY[0x277D5BD50] + MEMORY[0x277D5BD50]);
  v24 = v18;
  v25 = swift_task_alloc();
  *(v0 + 184) = v25;
  *v25 = v0;
  v25[1] = sub_2675E1288;
  v26 = *(v0 + 120);
  v27 = *(v0 + 16);

  v31(v27, v22, v26);
}

uint64_t sub_2675E1288()
{
  OUTLINED_FUNCTION_3_0();
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 176);
  v3 = *(*v0 + 168);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_2675E13B8, 0, 0);
}

uint64_t sub_2675E13B8()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);
  v3 = *(v0 + 104);
  v4 = *(v0 + 112);
  v6 = *(v0 + 88);
  v5 = *(v0 + 96);
  v8 = *(v0 + 56);
  v7 = *(v0 + 64);
  v9 = *(v0 + 48);

  (*(v4 + 8))(v1, v3);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_2675E14A0()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  v5 = v0[11];
  v4 = v0[12];
  v7 = v0[7];
  v6 = v0[8];
  v8 = v0[6];

  v9 = v0[1];
  v10 = v0[20];

  return v9();
}

uint64_t sub_2675E1564()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2675E1604;

  return sub_2675E0B80();
}

uint64_t sub_2675E1604()
{
  OUTLINED_FUNCTION_3_0();
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_2675E16F4()
{
  result = qword_2801CBF80;
  if (!qword_2801CBF80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2801CBF80);
  }

  return result;
}

uint64_t sub_2675E1754@<X0>(uint64_t *a1@<X8>)
{
  result = j__OUTLINED_FUNCTION_0_3();
  *a1 = result;
  return result;
}

uint64_t sub_2675E1780@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2675D6A0C(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_2675E17B0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2675D6A14(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_2675E17E0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2675D6A1C(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_2675E1818@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2675D6A50(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_2675E184C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2675D6A74(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_2675E1898@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2675D6AB0(*a1, *v2);
  *a2 = result;
  return result;
}

void *sub_2675E1908@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_2675E1930@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2675E1ABC(a1);
  *a2 = result;
  return result;
}

unint64_t sub_2675E195C()
{
  result = qword_2801CBF88;
  if (!qword_2801CBF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CBF88);
  }

  return result;
}

unint64_t sub_2675E19B4()
{
  result = qword_2801CBF90;
  if (!qword_2801CBF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CBF90);
  }

  return result;
}

unint64_t sub_2675E1A0C()
{
  result = qword_2801CBF98;
  if (!qword_2801CBF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CBF98);
  }

  return result;
}

unint64_t sub_2675E1A64()
{
  result = qword_2801CBFA0;
  if (!qword_2801CBFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CBFA0);
  }

  return result;
}

uint64_t sub_2675E1ABC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = (a1 + 32);
    do
    {
      v5 = *v3++;
      v4 = v5;
      if ((v5 & ~v2) == 0)
      {
        v4 = 0;
      }

      v2 |= v4;
      --v1;
    }

    while (v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (a2 == 0x7FFFFFFF)
  {
    v5 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v5) = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = a4(0);
    v10 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

void *__swift_store_extra_inhabitant_indexTm(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = a5(0);
    v9 = v6 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v9, a2, a2, v8);
  }

  return result;
}

uint64_t sub_2675E1D40(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2675E1D90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = type metadata accessor for SendMailCATsSimple();
  if (v6 <= 0x3F)
  {
    result = a4(319);
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2675E1E2C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_2676C90FC();
  v2[4] = v3;
  OUTLINED_FUNCTION_1_0(v3);
  v2[5] = v4;
  v6 = *(v5 + 64);
  v2[6] = OUTLINED_FUNCTION_2_0();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2801CCB20, &qword_2676CDA80);
  OUTLINED_FUNCTION_4_1(v7);
  v9 = *(v8 + 64);
  v2[7] = OUTLINED_FUNCTION_2_0();
  v10 = sub_2676CAF8C();
  OUTLINED_FUNCTION_4_1(v10);
  v12 = *(v11 + 64);
  v2[8] = OUTLINED_FUNCTION_2_0();
  v13 = sub_2676C99CC();
  v2[9] = v13;
  OUTLINED_FUNCTION_1_0(v13);
  v2[10] = v14;
  v16 = *(v15 + 64);
  v2[11] = OUTLINED_FUNCTION_19();
  v2[12] = swift_task_alloc();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFC8, &unk_2676CD9B0);
  OUTLINED_FUNCTION_4_1(v17);
  v19 = *(v18 + 64);
  v2[13] = OUTLINED_FUNCTION_2_0();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFD0, &qword_2676CDEA0);
  OUTLINED_FUNCTION_4_1(v20);
  v22 = *(v21 + 64);
  v2[14] = OUTLINED_FUNCTION_19();
  v2[15] = swift_task_alloc();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFD8, &unk_2676CD9C0);
  OUTLINED_FUNCTION_4_1(v23);
  v25 = *(v24 + 64);
  v2[16] = OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21();

  return MEMORY[0x2822009F8](v26, v27, v28);
}

uint64_t sub_2675E200C()
{
  v3 = *(v0 + 24);
  v4 = type metadata accessor for ConfirmSendSceneHostProducer(0);
  *(v0 + 136) = v4;
  *(v0 + 176) = *(v4 + 24);
  v5 = *(sub_2676CB05C() + 16);

  v6 = *(sub_2676CB02C() + 16);

  v8 = __OFADD__(v5, v6);
  v9 = v5 + v6;
  if (v8)
  {
    __break(1u);
    goto LABEL_16;
  }

  v10 = *(sub_2676CB07C() + 16);

  if (__OFADD__(v9, v10))
  {
LABEL_16:
    __break(1u);
    return result;
  }

  if (v9 + v10 <= 1)
  {
    v11 = *(v0 + 128);
    v12 = sub_2676CB05C();
    sub_267698E2C(v12);

    v13 = sub_2676CB14C();
    v14 = OUTLINED_FUNCTION_18_0();
    v15 = *(v0 + 128);
    if (v14 != 1)
    {
      sub_2676262E8();
      OUTLINED_FUNCTION_20();
      (*(v16 + 8))(v15, v13);
      goto LABEL_8;
    }

    sub_2675E35CC(*(v0 + 128), &qword_2801CBFD8, &unk_2676CD9C0);
  }

  v11 = 0;
LABEL_8:
  *(v0 + 144) = v11;
  v17 = *(v0 + 24);
  v18 = v17[1];
  v28 = *v17;
  sub_2676CB16C();
  if (v19)
  {
    v20 = *(v0 + 120);
    sub_2676CBFEC();
  }

  v21 = *(v0 + 120);
  v22 = sub_2676CB3FC();
  OUTLINED_FUNCTION_14_0(v22);
  sub_2676CB09C();
  if (v23)
  {
    v24 = *(v0 + 112);
    sub_2676CBFEC();

    v2 = 0;
  }

  __swift_storeEnumTagSinglePayload(*(v0 + 112), v2, 1, v1);
  v25 = swift_task_alloc();
  *(v0 + 152) = v25;
  *v25 = v0;
  v25[1] = sub_2675E2248;
  v27 = *(v0 + 112);
  v26 = *(v0 + 120);
  OUTLINED_FUNCTION_10_0();

  return sub_267693D64();
}

uint64_t sub_2675E2248()
{
  v2 = *(*v1 + 152);
  v3 = *(*v1 + 120);
  v4 = *(*v1 + 112);
  v5 = *v1;
  OUTLINED_FUNCTION_0_1();
  *v6 = v5;
  *(v8 + 160) = v7;
  *(v8 + 168) = v0;

  OUTLINED_FUNCTION_23(v4);
  OUTLINED_FUNCTION_23(v3);
  OUTLINED_FUNCTION_21();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2675E23AC()
{
  v1 = *(v0 + 24) + *(v0 + 176);
  sub_2676CB09C();
  if (v2)
  {
    v3 = sub_2676CC00C();

    if (v3 <= 100)
    {
      OUTLINED_FUNCTION_11_0(*(v0 + 136));
      if ((v4 & 1) == 0)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_11_0(*(v0 + 136));
    if (v38 != 1)
    {
LABEL_4:
      v5 = *(v0 + 160);
      v6 = *(v0 + 144);
      v8 = *(v0 + 96);
      v7 = *(v0 + 104);
      v9 = *(v0 + 80);
      v10 = *(v0 + 88);
      v12 = *(v0 + 64);
      v11 = *(v0 + 72);
      v14 = *(v0 + 48);
      v13 = *(v0 + 56);
      OUTLINED_FUNCTION_0_4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC5A0, &qword_2676CD620);
      v15 = OUTLINED_FUNCTION_24();
      v90 = OUTLINED_FUNCTION_8_0(v15, xmmword_2676CD5C0);
      sub_2676C998C();
      v16 = OUTLINED_FUNCTION_7_0();
      v17(v16);
      OUTLINED_FUNCTION_1_3();
      OUTLINED_FUNCTION_5_0();
      sub_26762D4C8(v12);
      sub_2676C9D3C();
      sub_2676C9D7C();
      sub_2676C9DBC();
      sub_2676C9DAC();
      v18 = sub_2676C9B3C();
      OUTLINED_FUNCTION_2_2(v18, v19, v20, v21, v22, v23, v24, v25, v84, v87);
      sub_2676C9D9C();
      sub_2676C90EC();
      sub_2676C90DC();
      OUTLINED_FUNCTION_13_0();
      v26(v14);
      sub_2676C9D5C();
      sub_2676C9DAC();
      v27 = sub_2676C9DCC();
      v28 = *(v9 + 8);
      v36 = OUTLINED_FUNCTION_22(v27, v29, v30, v31, v32, v33, v34, v35, v85, v88, v8);
      v37(v36);
      goto LABEL_7;
    }
  }

  v39 = *(v0 + 160);
  v40 = *(v0 + 144);
  v41 = *(v0 + 96);
  v7 = *(v0 + 104);
  v43 = *(v0 + 80);
  v42 = *(v0 + 88);
  v45 = *(v0 + 64);
  v44 = *(v0 + 72);
  v47 = *(v0 + 48);
  v46 = *(v0 + 56);
  OUTLINED_FUNCTION_0_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC5A0, &qword_2676CD620);
  v48 = OUTLINED_FUNCTION_24();
  v90 = OUTLINED_FUNCTION_8_0(v48, xmmword_2676CD5C0);
  sub_2676C998C();
  v49 = OUTLINED_FUNCTION_6_0();
  v50(v49);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_5_0();
  sub_26762D4C8(v45);
  sub_2676C9D3C();
  sub_2676C9D7C();
  sub_2676C9DBC();
  sub_2676C9DAC();
  v51 = sub_2676C9B3C();
  OUTLINED_FUNCTION_2_2(v51, v52, v53, v54, v55, v56, v57, v58, v84, v87);
  sub_2676C9D9C();
  sub_2676C90EC();
  sub_2676C90DC();
  v59 = OUTLINED_FUNCTION_16_0();
  v60(v59);
  sub_2676C9D5C();
  sub_2676C9DAC();
  sub_2676CAF7C();
  sub_2676C9D3C();
  v61 = sub_2676C9DCC();
  v62 = *(v43 + 8);
  v70 = OUTLINED_FUNCTION_22(v61, v63, v64, v65, v66, v67, v68, v69, v86, v89, v41);
  v71(v70);
LABEL_7:
  v72 = sub_2676C9DDC();
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v72);
  OUTLINED_FUNCTION_17_0();

  v74 = *(v0 + 120);
  v73 = *(v0 + 128);
  v76 = *(v0 + 104);
  v75 = *(v0 + 112);
  v78 = *(v0 + 88);
  v77 = *(v0 + 96);
  v80 = *(v0 + 56);
  v79 = *(v0 + 64);
  v81 = *(v0 + 48);

  OUTLINED_FUNCTION_15_0();

  return v82();
}

uint64_t sub_2675E2714()
{
  v1 = v0[18];
  v2 = v0[15];
  v3 = v0[16];
  v5 = v0[13];
  v4 = v0[14];
  v7 = v0[11];
  v6 = v0[12];
  v9 = v0[7];
  v8 = v0[8];
  v10 = v0[6];

  OUTLINED_FUNCTION_15_0();
  v12 = v0[21];

  return v11();
}

uint64_t sub_2675E27F0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2675E3684;

  return sub_2675E1E2C(a1);
}

uint64_t sub_2675E2888(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_2676C90FC();
  v2[4] = v3;
  OUTLINED_FUNCTION_1_0(v3);
  v2[5] = v4;
  v6 = *(v5 + 64);
  v2[6] = OUTLINED_FUNCTION_2_0();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2801CCB20, &qword_2676CDA80);
  OUTLINED_FUNCTION_4_1(v7);
  v9 = *(v8 + 64);
  v2[7] = OUTLINED_FUNCTION_2_0();
  v10 = sub_2676CAF8C();
  OUTLINED_FUNCTION_4_1(v10);
  v12 = *(v11 + 64);
  v2[8] = OUTLINED_FUNCTION_2_0();
  v13 = sub_2676C99CC();
  v2[9] = v13;
  OUTLINED_FUNCTION_1_0(v13);
  v2[10] = v14;
  v16 = *(v15 + 64);
  v2[11] = OUTLINED_FUNCTION_19();
  v2[12] = swift_task_alloc();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFC8, &unk_2676CD9B0);
  OUTLINED_FUNCTION_4_1(v17);
  v19 = *(v18 + 64);
  v2[13] = OUTLINED_FUNCTION_2_0();
  v20 = sub_2676C8E9C();
  v2[14] = v20;
  OUTLINED_FUNCTION_4_1(v20);
  v22 = *(v21 + 64);
  v2[15] = OUTLINED_FUNCTION_2_0();
  v23 = sub_2676C8EBC();
  v2[16] = v23;
  OUTLINED_FUNCTION_1_0(v23);
  v2[17] = v24;
  v26 = *(v25 + 64);
  v2[18] = OUTLINED_FUNCTION_2_0();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFE0, &qword_2676D1070);
  OUTLINED_FUNCTION_4_1(v27);
  v29 = *(v28 + 64);
  v2[19] = OUTLINED_FUNCTION_19();
  v2[20] = swift_task_alloc();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFD0, &qword_2676CDEA0);
  OUTLINED_FUNCTION_4_1(v30);
  v32 = *(v31 + 64);
  v2[21] = OUTLINED_FUNCTION_19();
  v2[22] = swift_task_alloc();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFE8, &unk_2676CD9E0);
  OUTLINED_FUNCTION_4_1(v33);
  v35 = *(v34 + 64);
  v2[23] = OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21();

  return MEMORY[0x2822009F8](v36, v37, v38);
}

uint64_t sub_2675E2B10()
{
  v3 = *(v0 + 24);
  v4 = type metadata accessor for ConfirmSendProducer(0);
  *(v0 + 192) = v4;
  *(v0 + 232) = *(v4 + 24);
  v5 = *(sub_2676C8CDC() + 16);

  v6 = *(sub_2676C8CAC() + 16);

  v8 = __OFADD__(v5, v6);
  v9 = v5 + v6;
  if (v8)
  {
    __break(1u);
    goto LABEL_16;
  }

  v10 = *(sub_2676C8CFC() + 16);

  if (__OFADD__(v9, v10))
  {
LABEL_16:
    __break(1u);
    return result;
  }

  if (v9 + v10 <= 1)
  {
    v11 = *(v0 + 184);
    v12 = sub_2676C8CDC();
    sub_267698E44(v12);

    v13 = sub_2676C8C8C();
    v14 = OUTLINED_FUNCTION_18_0();
    v15 = *(v0 + 184);
    if (v14 != 1)
    {
      sub_267626550();
      OUTLINED_FUNCTION_20();
      (*(v16 + 8))(v15, v13);
      goto LABEL_8;
    }

    sub_2675E35CC(*(v0 + 184), &qword_2801CBFE8, &unk_2676CD9E0);
  }

  v11 = 0;
LABEL_8:
  *(v0 + 200) = v11;
  v17 = *(v0 + 24);
  v18 = v17[1];
  v30 = *v17;
  sub_2676C8D4C();
  if (v19)
  {
    v20 = *(v0 + 176);
    sub_2676CBFEC();
  }

  v21 = *(v0 + 176);
  v22 = *(v0 + 160);
  v23 = sub_2676CB3FC();
  OUTLINED_FUNCTION_14_0(v23);
  sub_2676C8D1C();
  sub_26762D208();
  v25 = v24;
  sub_2675E35CC(v22, &qword_2801CBFE0, &qword_2676D1070);
  if (v25)
  {
    v26 = *(v0 + 168);
    sub_2676CBFEC();

    v2 = 0;
  }

  __swift_storeEnumTagSinglePayload(*(v0 + 168), v2, 1, v1);
  v27 = swift_task_alloc();
  *(v0 + 208) = v27;
  *v27 = v0;
  v27[1] = sub_2675E2D88;
  v29 = *(v0 + 168);
  v28 = *(v0 + 176);
  OUTLINED_FUNCTION_10_0();

  return sub_267693D64();
}

uint64_t sub_2675E2D88()
{
  v2 = *(*v1 + 208);
  v3 = *(*v1 + 176);
  v4 = *(*v1 + 168);
  v5 = *v1;
  OUTLINED_FUNCTION_0_1();
  *v6 = v5;
  *(v8 + 216) = v7;
  *(v8 + 224) = v0;

  OUTLINED_FUNCTION_23(v4);
  OUTLINED_FUNCTION_23(v3);
  OUTLINED_FUNCTION_21();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2675E2EEC()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 128);
  v3 = *(v0 + 24) + *(v0 + 232);
  sub_2676C8D1C();
  if (!OUTLINED_FUNCTION_18_0())
  {
    v6 = *(v0 + 144);
    v7 = *(v0 + 152);
    v8 = *(v0 + 128);
    v10 = *(v0 + 112);
    v9 = *(v0 + 120);
    (*(*(v0 + 136) + 16))(v6, v7, v8);
    sub_2675E35CC(v7, &qword_2801CBFE0, &qword_2676D1070);
    sub_2676C8E8C();
    sub_2675E362C();
    sub_2676CC08C();
    OUTLINED_FUNCTION_13_0();
    v11(v6, v8);
    v12 = sub_2676CC00C();

    if (v12 <= 100)
    {
      OUTLINED_FUNCTION_11_0(*(v0 + 192));
      if ((v13 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

LABEL_6:
    v14 = *(v0 + 216);
    v15 = *(v0 + 200);
    v17 = *(v0 + 96);
    v16 = *(v0 + 104);
    v19 = *(v0 + 80);
    v18 = *(v0 + 88);
    v21 = *(v0 + 64);
    v20 = *(v0 + 72);
    v23 = *(v0 + 48);
    v22 = *(v0 + 56);
    OUTLINED_FUNCTION_0_4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC5A0, &qword_2676CD620);
    v24 = OUTLINED_FUNCTION_24();
    v99 = OUTLINED_FUNCTION_8_0(v24, xmmword_2676CD5C0);
    sub_2676C998C();
    v25 = OUTLINED_FUNCTION_6_0();
    v26(v25);
    OUTLINED_FUNCTION_1_3();
    OUTLINED_FUNCTION_5_0();
    sub_26762D4C8(v21);
    sub_2676C9D3C();
    sub_2676C9D7C();
    sub_2676C9DBC();
    sub_2676C9DAC();
    v27 = sub_2676C9B3C();
    OUTLINED_FUNCTION_2_2(v27, v28, v29, v30, v31, v32, v33, v34, v93, v96);
    sub_2676C9D9C();
    sub_2676C90EC();
    sub_2676C90DC();
    v35 = OUTLINED_FUNCTION_16_0();
    v36(v35);
    sub_2676C9D5C();
    sub_2676C9DAC();
    sub_2676CAF7C();
    sub_2676C9D3C();
    v37 = sub_2676C9DCC();
    v38 = *(v19 + 8);
    v46 = OUTLINED_FUNCTION_22(v37, v39, v40, v41, v42, v43, v44, v45, v94, v97, v17);
    v47(v46);
    goto LABEL_8;
  }

  v4 = *(v0 + 192);
  v5 = *(v0 + 24);
  sub_2675E35CC(*(v0 + 152), &qword_2801CBFE0, &qword_2676D1070);
  if (*(v5 + *(v4 + 28)) == 1)
  {
    goto LABEL_6;
  }

LABEL_7:
  v48 = *(v0 + 216);
  v49 = *(v0 + 200);
  v50 = *(v0 + 96);
  v16 = *(v0 + 104);
  v51 = *(v0 + 80);
  v52 = *(v0 + 88);
  v54 = *(v0 + 64);
  v53 = *(v0 + 72);
  v56 = *(v0 + 48);
  v55 = *(v0 + 56);
  OUTLINED_FUNCTION_0_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC5A0, &qword_2676CD620);
  v57 = OUTLINED_FUNCTION_24();
  v99 = OUTLINED_FUNCTION_8_0(v57, xmmword_2676CD5C0);
  sub_2676C998C();
  v58 = OUTLINED_FUNCTION_7_0();
  v59(v58);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_5_0();
  sub_26762D4C8(v54);
  sub_2676C9D3C();
  sub_2676C9D7C();
  sub_2676C9DBC();
  sub_2676C9DAC();
  v60 = sub_2676C9B3C();
  OUTLINED_FUNCTION_2_2(v60, v61, v62, v63, v64, v65, v66, v67, v93, v96);
  sub_2676C9D9C();
  sub_2676C90EC();
  sub_2676C90DC();
  OUTLINED_FUNCTION_13_0();
  v68(v56);
  sub_2676C9D5C();
  sub_2676C9DAC();
  v69 = sub_2676C9DCC();
  v70 = *(v51 + 8);
  v78 = OUTLINED_FUNCTION_22(v69, v71, v72, v73, v74, v75, v76, v77, v95, v98, v50);
  v79(v78);
LABEL_8:
  v80 = sub_2676C9DDC();
  __swift_storeEnumTagSinglePayload(v16, 0, 1, v80);
  OUTLINED_FUNCTION_17_0();

  v82 = *(v0 + 176);
  v81 = *(v0 + 184);
  v84 = *(v0 + 160);
  v83 = *(v0 + 168);
  v86 = *(v0 + 144);
  v85 = *(v0 + 152);
  v87 = *(v0 + 120);
  v89 = *(v0 + 96);
  v88 = *(v0 + 104);
  v90 = *(v0 + 88);
  v100 = *(v0 + 64);
  v101 = *(v0 + 56);
  v102 = *(v0 + 48);

  OUTLINED_FUNCTION_15_0();

  return v91();
}

uint64_t sub_2675E333C()
{
  v1 = v0[25];
  v2 = v0[22];
  v3 = v0[23];
  v5 = v0[20];
  v4 = v0[21];
  v7 = v0[18];
  v6 = v0[19];
  v8 = v0[15];
  v10 = v0[12];
  v9 = v0[13];
  v14 = v0[11];
  v15 = v0[8];
  v16 = v0[7];
  v17 = v0[6];

  OUTLINED_FUNCTION_15_0();
  v12 = v0[28];

  return v11();
}

uint64_t sub_2675E344C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2675E34E4;

  return sub_2675E2888(a1);
}

uint64_t sub_2675E34E4()
{
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_0_1();
  *v3 = v2;

  OUTLINED_FUNCTION_15_0();

  return v4();
}

uint64_t sub_2675E35CC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_2675E362C()
{
  result = qword_2801CBFF0;
  if (!qword_2801CBFF0)
  {
    sub_2676C8E9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CBFF0);
  }

  return result;
}

double OUTLINED_FUNCTION_0_4()
{
  v1 = v0[5];
  v3 = v0[4];
  v4 = v0[2];
  return 0.0;
}

uint64_t OUTLINED_FUNCTION_1_3()
{

  return sub_2676C9D2C();
}

uint64_t OUTLINED_FUNCTION_2_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  __swift_storeEnumTagSinglePayload(a10, 1, 1, a1);

  return sub_2676C9D8C();
}

uint64_t OUTLINED_FUNCTION_5_0()
{

  return sub_2676C9D6C();
}

id OUTLINED_FUNCTION_8_0(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  a1[2].n128_u64[0] = v2;

  return v2;
}

uint64_t OUTLINED_FUNCTION_14_0(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v2, v1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_15_0()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_17_0()
{

  return sub_2676C9AAC();
}

uint64_t OUTLINED_FUNCTION_18_0()
{

  return __swift_getEnumTagSinglePayload(v0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_19()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_23(uint64_t a1)
{

  return sub_2675E35CC(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_24()
{

  return swift_allocObject();
}

uint64_t sub_2675E38E4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2676CAB1C();
  v3 = OUTLINED_FUNCTION_3(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_2();
  v10 = v9 - v8;
  sub_2676CAD6C();
  result = sub_2676CAE5C();
  if (*(result + 16))
  {
    (*(v5 + 16))(v10, result + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v2);

    v12 = sub_2676CAB0C();
    (*(v5 + 8))(v10, v2);
    static MailAddresseePrototype.from(name:email:)(v12, a1);

    sub_2676CADFC();
    return sub_2676C8C7C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2675E3A44()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFD0, &qword_2676CDEA0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v9 - v2;
  v4 = sub_2676CB33C();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_2676CB32C();
  sub_2676CAE9C();
  sub_2676CBFEC();

  sub_2676CB3FC();
  OUTLINED_FUNCTION_1_4();
  sub_2676CB2FC();

  sub_2675E3BB8(v3);
  sub_2676CAE7C();
  sub_2676CBFEC();

  OUTLINED_FUNCTION_1_4();
  sub_2676CB2EC();

  sub_2675E3BB8(v3);
  sub_2676CACEC();
  sub_2676CBFEC();

  OUTLINED_FUNCTION_1_4();
  sub_2676CB30C();

  sub_2675E3BB8(v3);
  v7 = sub_2676CB31C();

  return v7;
}

uint64_t sub_2675E3BB8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFD0, &qword_2676CDEA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2675E3C20()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFD0, &qword_2676CDEA0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v26 - v2;
  v32 = sub_2676CAB1C();
  v4 = OUTLINED_FUNCTION_3(v32);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3_2();
  v11 = v10 - v9;
  v33 = MEMORY[0x277D84F90];
  v12 = *(sub_2676CAE5C() + 16);

  if (v12)
  {
    v13 = sub_2676CAE5C();
    v14 = *(v13 + 16);
    if (v14)
    {
      v15 = sub_2676CB22C();
      v17 = *(v6 + 16);
      v16 = v6 + 16;
      v29 = v17;
      v30 = v15;
      v18 = v13 + ((*(v16 + 64) + 32) & ~*(v16 + 64));
      v28 = *(v16 + 56);
      v31 = v16;
      v26 = v13;
      v27 = (v16 - 8);
      do
      {
        v19 = v32;
        v29(v11, v18, v32);
        v20 = sub_2676CB33C();
        v21 = *(v20 + 48);
        v22 = *(v20 + 52);
        swift_allocObject();
        sub_2676CB32C();
        sub_2676CAE9C();
        sub_2676CBFEC();

        sub_2676CB3FC();
        OUTLINED_FUNCTION_2_3();
        sub_2676CB2FC();

        sub_2675E3BB8(v3);
        sub_2676CAE7C();
        sub_2676CBFEC();

        OUTLINED_FUNCTION_2_3();
        sub_2676CB2EC();

        sub_2675E3BB8(v3);
        sub_2676CACEC();
        sub_2676CBFEC();

        OUTLINED_FUNCTION_2_3();
        sub_2676CB30C();

        sub_2675E3BB8(v3);
        sub_2676CAAAC();
        (*v27)(v11, v19);
        sub_2676CB1BC();
        sub_2676CB2BC();

        sub_2676CB31C();

        MEMORY[0x26D5FDDA0](v23);
        if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2676CC11C();
        }

        sub_2676CC15C();

        v18 += v28;
        --v14;
      }

      while (v14);
      v24 = v33;
    }

    else
    {

      return MEMORY[0x277D84F90];
    }
  }

  else
  {
    sub_2675E3A44();
    MEMORY[0x26D5FDDA0]();
    if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_2676CC11C();
    }

    sub_2676CC15C();
    return v33;
  }

  return v24;
}

void sub_2675E3FBC(uint64_t a1)
{
  v38 = sub_2676CAECC();
  v2 = OUTLINED_FUNCTION_3(v38);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3_2();
  v9 = v8 - v7;
  v10 = *(a1 + 16);
  if (v10)
  {
    v39 = MEMORY[0x277D84F90];
    sub_2676C2828(0, v10, 0);
    v11 = v39;
    v13 = *(v4 + 16);
    v12 = v4 + 16;
    v14 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v36 = *(v12 + 56);
    v37 = v13;
    v15 = (v12 - 8);
    do
    {
      v16 = v12;
      v37(v9, v14, v38);
      v17 = sub_2676CAE5C();
      (*v15)(v9, v38);
      v19 = *(v39 + 16);
      v18 = *(v39 + 24);
      v20 = v19 + 1;
      if (v19 >= v18 >> 1)
      {
        sub_2676C2828((v18 > 1), v19 + 1, 1);
      }

      *(v39 + 16) = v20;
      *(v39 + 8 * v19 + 32) = v17;
      v14 += v36;
      --v10;
      v12 = v16;
    }

    while (v10);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
    v20 = *(MEMORY[0x277D84F90] + 16);
  }

  v21 = 0;
  v22 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v20 == v21)
    {

      return;
    }

    if (v21 >= *(v11 + 16))
    {
      break;
    }

    v23 = v11 + 8 * v21;
    v24 = *(v23 + 32);
    v25 = *(v24 + 16);
    v26 = *(v22 + 16);
    if (__OFADD__(v26, v25))
    {
      goto LABEL_24;
    }

    v27 = *(v23 + 32);

    if (!swift_isUniquelyReferenced_nonNull_native() || v26 + v25 > *(v22 + 24) >> 1)
    {
      sub_267606CBC();
      v22 = v28;
    }

    if (*(v24 + 16))
    {
      v29 = (*(v22 + 24) >> 1) - *(v22 + 16);
      v30 = *(sub_2676CAB1C() - 8);
      if (v29 < v25)
      {
        goto LABEL_26;
      }

      v31 = (*(v30 + 80) + 32) & ~*(v30 + 80);
      v32 = *(v30 + 72);
      swift_arrayInitWithCopy();

      if (v25)
      {
        v33 = *(v22 + 16);
        v34 = __OFADD__(v33, v25);
        v35 = v33 + v25;
        if (v34)
        {
          goto LABEL_27;
        }

        *(v22 + 16) = v35;
      }
    }

    else
    {

      if (v25)
      {
        goto LABEL_25;
      }
    }

    ++v21;
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
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_2675E42FC(uint64_t a1, int a2)
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

uint64_t sub_2675E433C(uint64_t result, int a2, int a3)
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

uint64_t sub_2675E438C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[30] = a4;
  v5[31] = a5;
  v5[28] = a2;
  v5[29] = a3;
  v5[27] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFC8, &unk_2676CD9B0);
  OUTLINED_FUNCTION_4_1(v6);
  v8 = *(v7 + 64);
  v5[32] = OUTLINED_FUNCTION_2_0();
  v9 = sub_2676C9A6C();
  v5[33] = v9;
  OUTLINED_FUNCTION_1_0(v9);
  v5[34] = v10;
  v12 = *(v11 + 64);
  v5[35] = OUTLINED_FUNCTION_2_0();
  v13 = sub_2676C90FC();
  v5[36] = v13;
  OUTLINED_FUNCTION_1_0(v13);
  v5[37] = v14;
  v16 = *(v15 + 64);
  v5[38] = OUTLINED_FUNCTION_2_0();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2801CCB20, &qword_2676CDA80);
  OUTLINED_FUNCTION_4_1(v17);
  v19 = *(v18 + 64);
  v5[39] = OUTLINED_FUNCTION_2_0();
  v20 = sub_2676CAF8C();
  OUTLINED_FUNCTION_4_1(v20);
  v22 = *(v21 + 64);
  v5[40] = OUTLINED_FUNCTION_2_0();
  v23 = sub_2676C99CC();
  v5[41] = v23;
  OUTLINED_FUNCTION_1_0(v23);
  v5[42] = v24;
  v26 = *(v25 + 64) + 15;
  v5[43] = swift_task_alloc();
  v5[44] = swift_task_alloc();
  v27 = sub_2676C9DDC();
  v5[45] = v27;
  OUTLINED_FUNCTION_1_0(v27);
  v5[46] = v28;
  v30 = *(v29 + 64);
  v5[47] = OUTLINED_FUNCTION_2_0();
  v31 = sub_2676CAECC();
  v5[48] = v31;
  OUTLINED_FUNCTION_1_0(v31);
  v5[49] = v32;
  v34 = *(v33 + 64);
  v5[50] = OUTLINED_FUNCTION_2_0();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFD0, &qword_2676CDEA0);
  OUTLINED_FUNCTION_4_1(v35);
  v37 = *(v36 + 64) + 15;
  v5[51] = swift_task_alloc();
  v5[52] = swift_task_alloc();
  v38 = sub_2676CB48C();
  OUTLINED_FUNCTION_4_1(v38);
  v40 = *(v39 + 64);
  v5[53] = OUTLINED_FUNCTION_2_0();

  return MEMORY[0x2822009F8](sub_2675E4660, 0, 0);
}

uint64_t sub_2675E4660()
{
  if (qword_2801CBAA0 != -1)
  {
    swift_once();
  }

  v1 = sub_2676CBE4C();
  __swift_project_value_buffer(v1, qword_2801CDC90);
  v2 = sub_2676CBE2C();
  v3 = sub_2676CC23C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2675D4000, v2, v3, "#ContactDisambiguationProducer producing contact disambiguation", v4, 2u);
    MEMORY[0x26D5FEA80](v4, -1, -1);
  }

  v6 = v0[28];
  v5 = v0[29];

  v7 = v6 == 0x7265646E6573 && v5 == 0xE600000000000000;
  if (v7 || (v8 = v0[28], v9 = v0[29], (sub_2676CC59C() & 1) != 0))
  {
    v10 = v0[52];
    v11 = v0[53];
    type metadata accessor for ReadMailCATsSimple();
    sub_2676CB47C();
    v0[54] = sub_2676CB42C();
    v12 = sub_2676CB3FC();
    OUTLINED_FUNCTION_32(v12);
    v13 = swift_task_alloc();
    v0[55] = v13;
    *v13 = v0;
    v13[1] = sub_2675E48D8;
    v14 = v0[52];

    return sub_267653CE8();
  }

  else
  {
    v16 = v0[53];
    v17 = v0[51];
    type metadata accessor for SendMailCATsSimple();
    sub_2676CB47C();
    v0[57] = sub_2676CB42C();
    v18 = sub_2676CB3FC();
    OUTLINED_FUNCTION_32(v18);
    v19 = swift_task_alloc();
    v0[58] = v19;
    *v19 = v0;
    v19[1] = sub_2675E5128;
    v20 = v0[51];

    return sub_267694768();
  }
}

uint64_t sub_2675E48D8(uint64_t a1)
{
  v3 = *v2;
  v12 = *v2;
  v12[21] = v2;
  v12[22] = a1;
  v12[23] = v1;
  OUTLINED_FUNCTION_25();
  v5 = *(v4 + 440);
  *v6 = *v2;
  *(v7 + 448) = v1;

  OUTLINED_FUNCTION_25();
  v9 = *(v8 + 432);
  sub_2675E3BB8(v3[52]);

  if (v1)
  {
    v10 = sub_2675E5978;
  }

  else
  {
    v10 = sub_2675E4A28;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_2675E4A28()
{
  v4 = v0;
  v5 = *(v0 + 448);
  v6 = v4[22];
  sub_2676C919C();
  v7 = sub_2676C917C();
  v8 = v4[30];
  v127 = v6;
  if ((v7 & 1) == 0)
  {
    v41 = qword_2801CBA70;

    if (v41 != -1)
    {
      goto LABEL_59;
    }

    goto LABEL_40;
  }

  v116 = sub_2676CBB7C();
  v4[15] = v116;
  OUTLINED_FUNCTION_4_2();
  v4[16] = sub_2675E5DE8(v9, v10);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v4 + 12);
  v124 = v5;
  v140 = *(v8 + 16);
  if (v140)
  {
    OUTLINED_FUNCTION_2_4();
    v2 = MEMORY[0x277D84F90];
    v139 = v11;
    v135 = *(v11 + 56);
    v129 = v4;
    do
    {
      v12 = OUTLINED_FUNCTION_11_1();
      v13(v12);
      v14 = v5;
      v15 = sub_2676CAD7C();
      v23 = OUTLINED_FUNCTION_18_1(v15, v16, v17, v18, v19, v20, v21, v22, v108, v112, v116, boxed_opaque_existential_1, v124, v127, v129, v131, v133, v135, v137);
      v24(v23);
      v5 >>= 62;
      if (v14 >> 62)
      {
        v25 = sub_2676CC4EC();
      }

      else
      {
        v25 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v26 = v2 >> 62;
      if (v2 >> 62)
      {
        v27 = OUTLINED_FUNCTION_38();
      }

      else
      {
        v27 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v28 = v27 + v25;
      if (__OFADD__(v27, v25))
      {
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        OUTLINED_FUNCTION_7_1();
        v107 = v4[30];
LABEL_40:
        v43 = *(qword_2801D3CD0 + 208);
        v42 = *(qword_2801D3CD0 + 216);

        OUTLINED_FUNCTION_9_0();
        sub_2676C91EC();
        v4[5] = OUTLINED_FUNCTION_37();
        OUTLINED_FUNCTION_5_1();
        v4[6] = sub_2675E5DE8(v44, v45);
        v46 = __swift_allocate_boxed_opaque_existential_1(v4 + 2);
        OUTLINED_FUNCTION_36(v46);
LABEL_49:
        OUTLINED_FUNCTION_0_5();
        v63 = OUTLINED_FUNCTION_13_1();
        v64(v63);
        OUTLINED_FUNCTION_3_3();
        OUTLINED_FUNCTION_33();
        sub_26762D4C8(v2);
        sub_2676C9D3C();
        sub_2676C9D7C();
        sub_2676C9DBC();
        sub_2676C9DAC();
        v65 = sub_2676C9B3C();
        OUTLINED_FUNCTION_19_0(v65, v66, v67, v68, v69, v70, v71, v72, v108, v112, v116, boxed_opaque_existential_1, v124, v127, v129, v131, v133, v135, v137, v138, v2, v139, v140, v141, v142, v143);
        sub_2676C9D9C();
        sub_2676C90EC();
        sub_2676C90DC();
        v73 = OUTLINED_FUNCTION_17_1();
        v74(v73);
        sub_2676C9D5C();
        v75 = sub_2676C9DAC();
        v82 = OUTLINED_FUNCTION_27(v75, *MEMORY[0x277D5BC50], v76, v77, v78, v79, v80, v81, v109, v113, v117, v121, v125);
        v83(v82);
        v84 = sub_2676C9D4C();
        v92 = OUTLINED_FUNCTION_26(v84, v85, v86, v87, v88, v89, v90, v91, v110, v114, v118, v122);
        v93(v92);
        sub_2675E5D38(v43 + 16, v43 + 56);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC5A0, &qword_2676CD620);
        v94 = swift_allocObject();
        v102 = OUTLINED_FUNCTION_6_1(v94, xmmword_2676CD5C0, v95, v96, v97, v98, v99, v100, v101, v111, v115, v119, v123, v126, v128, v130, v132, v134, v136);
        v103(v102);
        OUTLINED_FUNCTION_14_1();
        v104 = OUTLINED_FUNCTION_23_0();
        v105(v104);
        __swift_destroy_boxed_opaque_existential_1((v43 + 16));

        OUTLINED_FUNCTION_15_0();
        goto LABEL_50;
      }

      v143 = v1;
      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        if (v26)
        {
          goto LABEL_16;
        }

        OUTLINED_FUNCTION_21_0();
        if (v30 >= v28)
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (v26)
        {
LABEL_16:
          OUTLINED_FUNCTION_38();
          goto LABEL_17;
        }

        v29 = v2 & 0xFFFFFFFFFFFFFF8;
      }

      v31 = *(v29 + 16);
LABEL_17:
      v2 = OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_21_0();
LABEL_18:
      OUTLINED_FUNCTION_29();
      if (v5)
      {
        v33 = OUTLINED_FUNCTION_34();
        if (v33)
        {
          v34 = v33;
          v35 = sub_2676CC4EC();
          if (v1 < v35)
          {
            goto LABEL_56;
          }

          if (v34 < 1)
          {
            goto LABEL_58;
          }

          v131 = v35;
          v133 = v25;
          v1 = v2 + 32;
          sub_2675E5EC0();
          do
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC010, &qword_2676CDA88);
            v5 = OUTLINED_FUNCTION_20_0();
            v2 = *v36;
            (v5)(v3, 0);
            OUTLINED_FUNCTION_24_0();
          }

          while (!v37);
          v4 = v129;
          v32 = v131;
          goto LABEL_29;
        }
      }

      else
      {
        v5 = v14 & 0xFFFFFFFFFFFFFF8;
        v32 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v32)
        {
          if (v1 < v32)
          {
            goto LABEL_57;
          }

          sub_2675E5E30(0, &qword_2801CC008, 0x277CD3E90);
          OUTLINED_FUNCTION_31();
LABEL_29:

          if (v32 < v25)
          {
            goto LABEL_54;
          }

          if (v32 > 0)
          {
            v38 = *(v141 + 16);
            v39 = __OFADD__(v38, v32);
            v40 = v38 + v32;
            if (v39)
            {
              goto LABEL_55;
            }

            *(v141 + 16) = v40;
          }

          goto LABEL_34;
        }
      }

      if (v25 > 0)
      {
        goto LABEL_54;
      }

LABEL_34:
      OUTLINED_FUNCTION_22_0();
    }

    while (!v37);
  }

  v47 = v4[31];
  sub_2675ED7F4();

  v2 = v127;
  v48 = [v127 dialog];
  sub_2675E5E30(0, &qword_2801CBF80, 0x277D052B0);
  v49 = sub_2676CC0FC();

  if (sub_267630B8C(v49))
  {
    OUTLINED_FUNCTION_35();
    if (v48)
    {
      v50 = MEMORY[0x26D5FE0E0](0, v49);
    }

    else
    {
      v50 = *(v49 + 32);
    }

    v51 = v50;
    v52 = boxed_opaque_existential_1;

    v53 = [v51 fullPrint];

    v43 = sub_2676CBF6C();
  }

  else
  {

    v43 = 0;
    v52 = boxed_opaque_existential_1;
  }

  sub_2676C96AC();
  sub_2676C969C();
  OUTLINED_FUNCTION_9_0();
  v54 = sub_2676CBB5C();
  if (!v124)
  {
    OUTLINED_FUNCTION_28(v54, *MEMORY[0x277D565B0], v55, v56, v57, v58, v59, v60, v108, v112, v116);
    (*(v62 + 104))(v52);
    sub_2675DD73C(v4 + 6, (v4 + 2));
    goto LABEL_49;
  }

  __swift_deallocate_boxed_opaque_existential_1(v4 + 12);
  OUTLINED_FUNCTION_8_1();

  OUTLINED_FUNCTION_15_0();
LABEL_50:

  return v61();
}

uint64_t sub_2675E5128(uint64_t a1)
{
  v3 = *v2;
  v12 = *v2;
  v12[24] = v2;
  v12[25] = a1;
  v12[26] = v1;
  OUTLINED_FUNCTION_25();
  v5 = *(v4 + 464);
  *v6 = *v2;
  *(v7 + 472) = v1;

  OUTLINED_FUNCTION_25();
  v9 = *(v8 + 456);
  sub_2675E3BB8(v3[51]);

  if (v1)
  {
    v10 = sub_2675E5A50;
  }

  else
  {
    v10 = sub_2675E5278;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_2675E5278()
{
  v4 = v0;
  v5 = *(v0 + 472);
  v6 = v4[25];
  sub_2676C919C();
  v7 = sub_2676C917C();
  v8 = v4[30];
  v127 = v6;
  if ((v7 & 1) == 0)
  {
    v41 = qword_2801CBA70;

    if (v41 != -1)
    {
      goto LABEL_59;
    }

    goto LABEL_40;
  }

  v116 = sub_2676CBB7C();
  v4[15] = v116;
  OUTLINED_FUNCTION_4_2();
  v4[16] = sub_2675E5DE8(v9, v10);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v4 + 12);
  v124 = v5;
  v140 = *(v8 + 16);
  if (v140)
  {
    OUTLINED_FUNCTION_2_4();
    v2 = MEMORY[0x277D84F90];
    v139 = v11;
    v135 = *(v11 + 56);
    v129 = v4;
    do
    {
      v12 = OUTLINED_FUNCTION_11_1();
      v13(v12);
      v14 = v5;
      v15 = sub_2676CAD7C();
      v23 = OUTLINED_FUNCTION_18_1(v15, v16, v17, v18, v19, v20, v21, v22, v108, v112, v116, boxed_opaque_existential_1, v124, v127, v129, v131, v133, v135, v137);
      v24(v23);
      v5 >>= 62;
      if (v14 >> 62)
      {
        v25 = sub_2676CC4EC();
      }

      else
      {
        v25 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v26 = v2 >> 62;
      if (v2 >> 62)
      {
        v27 = OUTLINED_FUNCTION_38();
      }

      else
      {
        v27 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v28 = v27 + v25;
      if (__OFADD__(v27, v25))
      {
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        OUTLINED_FUNCTION_7_1();
        v107 = v4[30];
LABEL_40:
        v43 = *(qword_2801D3CD0 + 208);
        v42 = *(qword_2801D3CD0 + 216);

        OUTLINED_FUNCTION_9_0();
        sub_2676C91EC();
        v4[5] = OUTLINED_FUNCTION_37();
        OUTLINED_FUNCTION_5_1();
        v4[6] = sub_2675E5DE8(v44, v45);
        v46 = __swift_allocate_boxed_opaque_existential_1(v4 + 2);
        OUTLINED_FUNCTION_36(v46);
LABEL_49:
        OUTLINED_FUNCTION_0_5();
        v63 = OUTLINED_FUNCTION_13_1();
        v64(v63);
        OUTLINED_FUNCTION_3_3();
        OUTLINED_FUNCTION_33();
        sub_26762D4C8(v2);
        sub_2676C9D3C();
        sub_2676C9D7C();
        sub_2676C9DBC();
        sub_2676C9DAC();
        v65 = sub_2676C9B3C();
        OUTLINED_FUNCTION_19_0(v65, v66, v67, v68, v69, v70, v71, v72, v108, v112, v116, boxed_opaque_existential_1, v124, v127, v129, v131, v133, v135, v137, v138, v2, v139, v140, v141, v142, v143);
        sub_2676C9D9C();
        sub_2676C90EC();
        sub_2676C90DC();
        v73 = OUTLINED_FUNCTION_17_1();
        v74(v73);
        sub_2676C9D5C();
        v75 = sub_2676C9DAC();
        v82 = OUTLINED_FUNCTION_27(v75, *MEMORY[0x277D5BC50], v76, v77, v78, v79, v80, v81, v109, v113, v117, v121, v125);
        v83(v82);
        v84 = sub_2676C9D4C();
        v92 = OUTLINED_FUNCTION_26(v84, v85, v86, v87, v88, v89, v90, v91, v110, v114, v118, v122);
        v93(v92);
        sub_2675E5D38(v43 + 16, v43 + 56);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC5A0, &qword_2676CD620);
        v94 = swift_allocObject();
        v102 = OUTLINED_FUNCTION_6_1(v94, xmmword_2676CD5C0, v95, v96, v97, v98, v99, v100, v101, v111, v115, v119, v123, v126, v128, v130, v132, v134, v136);
        v103(v102);
        OUTLINED_FUNCTION_14_1();
        v104 = OUTLINED_FUNCTION_23_0();
        v105(v104);
        __swift_destroy_boxed_opaque_existential_1((v43 + 16));

        OUTLINED_FUNCTION_15_0();
        goto LABEL_50;
      }

      v143 = v1;
      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        if (v26)
        {
          goto LABEL_16;
        }

        OUTLINED_FUNCTION_21_0();
        if (v30 >= v28)
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (v26)
        {
LABEL_16:
          OUTLINED_FUNCTION_38();
          goto LABEL_17;
        }

        v29 = v2 & 0xFFFFFFFFFFFFFF8;
      }

      v31 = *(v29 + 16);
LABEL_17:
      v2 = OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_21_0();
LABEL_18:
      OUTLINED_FUNCTION_29();
      if (v5)
      {
        v33 = OUTLINED_FUNCTION_34();
        if (v33)
        {
          v34 = v33;
          v35 = sub_2676CC4EC();
          if (v1 < v35)
          {
            goto LABEL_56;
          }

          if (v34 < 1)
          {
            goto LABEL_58;
          }

          v131 = v35;
          v133 = v25;
          v1 = v2 + 32;
          sub_2675E5EC0();
          do
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC010, &qword_2676CDA88);
            v5 = OUTLINED_FUNCTION_20_0();
            v2 = *v36;
            (v5)(v3, 0);
            OUTLINED_FUNCTION_24_0();
          }

          while (!v37);
          v4 = v129;
          v32 = v131;
          goto LABEL_29;
        }
      }

      else
      {
        v5 = v14 & 0xFFFFFFFFFFFFFF8;
        v32 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v32)
        {
          if (v1 < v32)
          {
            goto LABEL_57;
          }

          sub_2675E5E30(0, &qword_2801CC008, 0x277CD3E90);
          OUTLINED_FUNCTION_31();
LABEL_29:

          if (v32 < v25)
          {
            goto LABEL_54;
          }

          if (v32 > 0)
          {
            v38 = *(v141 + 16);
            v39 = __OFADD__(v38, v32);
            v40 = v38 + v32;
            if (v39)
            {
              goto LABEL_55;
            }

            *(v141 + 16) = v40;
          }

          goto LABEL_34;
        }
      }

      if (v25 > 0)
      {
        goto LABEL_54;
      }

LABEL_34:
      OUTLINED_FUNCTION_22_0();
    }

    while (!v37);
  }

  v47 = v4[31];
  sub_2675ED7F4();

  v2 = v127;
  v48 = [v127 dialog];
  sub_2675E5E30(0, &qword_2801CBF80, 0x277D052B0);
  v49 = sub_2676CC0FC();

  if (sub_267630B8C(v49))
  {
    OUTLINED_FUNCTION_35();
    if (v48)
    {
      v50 = MEMORY[0x26D5FE0E0](0, v49);
    }

    else
    {
      v50 = *(v49 + 32);
    }

    v51 = v50;
    v52 = boxed_opaque_existential_1;

    v53 = [v51 fullPrint];

    v43 = sub_2676CBF6C();
  }

  else
  {

    v43 = 0;
    v52 = boxed_opaque_existential_1;
  }

  sub_2676C96AC();
  sub_2676C969C();
  OUTLINED_FUNCTION_9_0();
  v54 = sub_2676CBB5C();
  if (!v124)
  {
    OUTLINED_FUNCTION_28(v54, *MEMORY[0x277D565B0], v55, v56, v57, v58, v59, v60, v108, v112, v116);
    (*(v62 + 104))(v52);
    sub_2675DD73C(v4 + 6, (v4 + 2));
    goto LABEL_49;
  }

  __swift_deallocate_boxed_opaque_existential_1(v4 + 12);
  OUTLINED_FUNCTION_8_1();

  OUTLINED_FUNCTION_15_0();
LABEL_50:

  return v61();
}

uint64_t sub_2675E5978()
{
  v1 = *(v0 + 448);
  OUTLINED_FUNCTION_10_1();

  OUTLINED_FUNCTION_15_0();

  return v2();
}

uint64_t sub_2675E5A50()
{
  v1 = *(v0 + 472);
  OUTLINED_FUNCTION_10_1();

  OUTLINED_FUNCTION_15_0();

  return v2();
}

uint64_t sub_2675E5B28(uint64_t a1)
{
  v4 = *v1;
  v5 = v1[1];
  v7 = v1[2];
  v6 = v1[3];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2675E5BE8;

  return sub_2675E438C(a1, v4, v5, v7, v6);
}

uint64_t sub_2675E5BE8()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  OUTLINED_FUNCTION_15_0();

  return v2();
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_2675E5D38(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_2675E5DE8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2675E5E30(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t *__swift_deallocate_boxed_opaque_existential_1(uint64_t *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    v2 = *result;
    v3 = *(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80));
    JUMPOUT(0x26D5FEA80);
  }

  return result;
}

unint64_t sub_2675E5EC0()
{
  result = qword_2801CC018;
  if (!qword_2801CC018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CC010, &qword_2676CDA88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CC018);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_5()
{
  v19 = v0[53];
  v20 = v0[52];
  v21 = v0[51];
  v22 = v0[50];
  v2 = v0;
  v3 = v0[47];
  v15 = v2[46];
  v5 = v2[43];
  v4 = v2[44];
  v7 = v2[41];
  v6 = v2[42];
  v8 = v2[40];
  v23 = v2[39];
  v9 = v2[38];
  v12 = v2[36];
  v13 = v2[35];
  v10 = v2[34];
  v14 = v2[33];
  v16 = v2[32];
  v17 = v2[45];
  v18 = v2[27];

  return sub_2676C999C();
}

void OUTLINED_FUNCTION_2_4()
{
  v1 = *(v0 + 392);
  v2 = *(v1 + 16);
  v3 = *(v0 + 240) + ((*(v1 + 80) + 32) & ~*(v1 + 80));
}

uint64_t OUTLINED_FUNCTION_3_3()
{

  return sub_2676C9D2C();
}

uint64_t OUTLINED_FUNCTION_6_1(__n128 *a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  a1[1] = a2;
  a1[2].n128_u64[0] = a15;
  v19 = *(a18 + 16);
  return a19;
}

uint64_t OUTLINED_FUNCTION_7_1()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_8_1()
{
  v3 = v0[52];
  v2 = v0[53];
  v4 = v0[50];
  v5 = v0[51];
  v6 = v0[47];
  v8 = v0[43];
  v7 = v0[44];
  v9 = v0[39];
  v10 = v0[40];
  v11 = v0;
  v12 = v0[38];
  v14 = v11[35];
  v15 = v11[32];
}

uint64_t OUTLINED_FUNCTION_10_1()
{
  v3 = v0[52];
  v2 = v0[53];
  v5 = v0[50];
  v4 = v0[51];
  v6 = v0[47];
  v8 = v0[43];
  v7 = v0[44];
  v10 = v0[39];
  v9 = v0[40];
  v11 = v0[38];
  v13 = v0[35];
  v14 = v0[32];
}

uint64_t OUTLINED_FUNCTION_14_1()
{
  __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);

  return sub_2676C9AAC();
}

uint64_t OUTLINED_FUNCTION_19_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  __swift_storeEnumTagSinglePayload(a26, 1, 1, a1);

  return sub_2676C9D8C();
}

uint64_t (*OUTLINED_FUNCTION_20_0())()
{

  return sub_267646084(v2, v0, v1);
}

uint64_t OUTLINED_FUNCTION_30()
{

  return sub_2676CC42C();
}

uint64_t OUTLINED_FUNCTION_31()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_32(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_33()
{

  return sub_2676C9D6C();
}

uint64_t OUTLINED_FUNCTION_34()
{

  return sub_2676CC4EC();
}

uint64_t OUTLINED_FUNCTION_35()
{

  return sub_267692C1C(0, (v0 & 0xC000000000000001) == 0, v0);
}

uint64_t OUTLINED_FUNCTION_36(void *a1)
{
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v1;

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_37()
{

  return sub_2676C916C();
}

uint64_t OUTLINED_FUNCTION_38()
{

  return sub_2676CC4EC();
}

uint64_t sub_2675E6418(uint64_t a1)
{
  v69 = sub_2676C8DDC();
  v2 = OUTLINED_FUNCTION_3(v69);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_5();
  v68 = v7;
  v8 = sub_2676CAABC();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  OUTLINED_FUNCTION_1_5();
  v76 = v10;
  v11 = sub_2676CAB1C();
  v12 = OUTLINED_FUNCTION_3(v11);
  v77 = v13;
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v12);
  v18 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v61 - v20;
  MEMORY[0x28223BE20](v19);
  v67 = &v61 - v22;
  if (qword_2801CBAA0 != -1)
  {
    swift_once();
  }

  v23 = sub_2676CBE4C();
  v24 = __swift_project_value_buffer(v23, qword_2801CDC90);

  v61 = v24;
  v25 = sub_2676CBE2C();
  v26 = sub_2676CC23C();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v75 = v4;
    v28 = v27;
    v29 = swift_slowAlloc();
    v78[0] = v29;
    *v28 = 136380675;
    v30 = MEMORY[0x26D5FDDF0](a1, v11);
    v32 = sub_2676B0B84(v30, v31, v78);

    *(v28 + 4) = v32;
    _os_log_impl(&dword_2675D4000, v25, v26, "#ResolveRecipientsFlow .sanitizeContactHandles %{private}s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v29);
    OUTLINED_FUNCTION_2_5();
    v4 = v75;
    OUTLINED_FUNCTION_2_5();
  }

  v33 = *(a1 + 16);
  if (v33)
  {
    v75 = *(v77 + 16);
    v66 = (*(v77 + 80) + 32) & ~*(v77 + 80);
    v34 = a1 + v66;
    v35 = *(v77 + 72);
    v64 = (v4 + 8);
    v65 = v35;
    v36 = (v77 + 8);
    v77 += 16;
    v62 = (v77 + 16);
    v37 = MEMORY[0x277D84F90];
    v63 = (v77 - 8);
    do
    {
      v73 = v33;
      v74 = v37;
      v38 = v67;
      v72 = v34;
      v75(v67);
      v39 = sub_2676CAADC();
      v70 = v40;
      v71 = v39;
      sub_2676CAAEC();
      v41 = sub_2676CAAFC();
      v42 = v11;
      v44 = v43;
      v45 = v68;
      sub_2676C8DBC();
      v78[0] = v41;
      v78[1] = v44;
      sub_2675E69E4();
      sub_2676CC33C();
      (*v64)(v45, v69);

      sub_2676CAB0C();
      v46 = *v36;
      v47 = v38;
      v37 = v74;
      (*v36)(v47, v42);
      v11 = v42;
      sub_2676CAACC();
      (v75)(v18, v21, v42);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v50 = *(v37 + 16);
        sub_267606CBC();
        v37 = v51;
      }

      v48 = *(v37 + 16);
      v36 = v63;
      if (v48 >= *(v37 + 24) >> 1)
      {
        sub_267606CBC();
        v37 = v52;
      }

      v46(v21, v42);
      *(v37 + 16) = v48 + 1;
      v49 = v65;
      (*v62)(v37 + v66 + v48 * v65, v18, v42);
      v34 = v72 + v49;
      v33 = v73 - 1;
    }

    while (v73 != 1);
  }

  else
  {
    v37 = MEMORY[0x277D84F90];
  }

  v53 = sub_2676CBE2C();
  v54 = sub_2676CC23C();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v78[0] = v56;
    *v55 = 136380675;
    v57 = MEMORY[0x26D5FDDF0](v37, v11);
    v59 = sub_2676B0B84(v57, v58, v78);

    *(v55 + 4) = v59;

    _os_log_impl(&dword_2675D4000, v53, v54, "#ResolveRecipientsFlow .sanitizeContactHandles sanitizedHandles %{private}s", v55, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v56);
    OUTLINED_FUNCTION_2_5();
    OUTLINED_FUNCTION_2_5();
  }

  else
  {
  }

  return v37;
}

unint64_t sub_2675E69E4()
{
  result = qword_2801CDAA0;
  if (!qword_2801CDAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CDAA0);
  }

  return result;
}

void OUTLINED_FUNCTION_2_5()
{

  JUMPOUT(0x26D5FEA80);
}

void sub_2675E6A64()
{
  OUTLINED_FUNCTION_21_1();
  v1 = v0;
  v143 = sub_2676CAABC();
  v2 = OUTLINED_FUNCTION_3(v143);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_4();
  v148 = v7;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_24_1();
  v147 = v9;
  v10 = sub_2676CAB1C();
  v11 = OUTLINED_FUNCTION_3(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_4();
  v132 = v16;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v17);
  v134 = &v130 - v18;
  OUTLINED_FUNCTION_12_0();
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v130 - v21;
  MEMORY[0x28223BE20](v20);
  v133 = &v130 - v23;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v24);
  v26 = &v130 - v25;
  v27 = &off_279C11000;
  v28 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v29 = sub_2676CADFC();
  sub_2675EA76C(v29, v30, v28, &selRef_setInternalGUID_);
  sub_2676CAE1C();
  v31 = sub_2676CC16C();
  [v28 setMe_];

  v32 = sub_2676CAD6C();
  sub_2675EA76C(v32, v33, v28, &selRef_setFullName_);
  v34 = sub_2676CAE9C();
  sub_2675EA76C(v34, v35, v28, &selRef_setFirstName_);
  v36 = sub_2676CACEC();
  sub_2675EA76C(v36, v37, v28, &selRef_setLastName_);
  v38 = sub_2676CAD0C();
  sub_2675EA76C(v38, v39, v28, &selRef_setMiddleName_);
  v40 = sub_2676CAD2C();
  sub_2675EA76C(v40, v41, v28, &selRef_setPrefix_);
  v42 = sub_2676CAD4C();
  sub_2675EA76C(v42, v43, v28, &selRef_setSuffix_);
  v44 = sub_2676CAE7C();
  sub_2675EA76C(v44, v45, v28, &selRef_setNickName_);
  v46 = sub_2676CAD9C();
  v135 = v28;
  v47 = v28;
  v48 = v26;
  sub_2675EA76C(v46, v49, v47, &selRef_setCompany_);
  v136 = v1;
  v50 = v10;
  v51 = sub_2676CAE5C();
  v52 = 0;
  v142 = *(v51 + 16);
  LODWORD(v141) = *MEMORY[0x277D56010];
  v144 = (v4 + 8);
  v145 = (v4 + 104);
  v53 = (v13 + 8);
  v150 = v13;
  v139 = (v13 + 32);
  v137 = v50;
  v138 = MEMORY[0x277D84F90];
  v149 = v22;
  v146 = (v13 + 8);
  v151 = v13 + 16;
  v140 = v51;
  while (v142 != v52)
  {
    if (v52 >= *(v51 + 16))
    {
      __break(1u);
LABEL_35:
      __break(1u);
      return;
    }

    OUTLINED_FUNCTION_13_2();
    v56 = v55 & ~v54;
    v58 = *(v57 + 72);
    (*(v57 + 16))(v48, v51 + v56 + v58 * v52, v50);
    v53 = v147;
    v22 = v50;
    sub_2676CAAEC();
    v59 = v48;
    v60 = v148;
    v61 = v143;
    (*v145)(v148, v141, v143);
    OUTLINED_FUNCTION_11_2();
    sub_2675EA914(&qword_2801CC140, v62);
    sub_2676CC0CC();
    sub_2676CC0CC();
    v27 = v144;
    v50 = *v144;
    (*v144)(v60, v61);
    (v50)(v53, v61);
    if (v153 == v152)
    {
      v65 = *v139;
      (*v139)(v133, v59, v22);
      v66 = v138;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v68 = v66;
      v154 = v66;
      v53 = v146;
      v48 = v59;
      v131 = v65;
      if (isUniquelyReferenced_nonNull_native)
      {
        v50 = v22;
      }

      else
      {
        OUTLINED_FUNCTION_27_0(*(v66 + 16));
        v50 = v137;
        v68 = v154;
      }

      v22 = v149;
      v51 = v140;
      v69 = v52;
      v71 = *(v68 + 16);
      v70 = *(v68 + 24);
      v72 = v71 + 1;
      if (v71 >= v70 >> 1)
      {
        v73 = OUTLINED_FUNCTION_23_1(v70);
        v138 = v74;
        sub_2676C2848(v73, v74, 1);
        v50 = v137;
        v72 = v138;
        v69 = v52;
        v68 = v154;
      }

      v52 = v69 + 1;
      *(v68 + 16) = v72;
      v138 = v68;
      v131(v68 + v56 + v71 * v58, v133, v50);
      v27 = 0x279C11000;
    }

    else
    {
      v63 = OUTLINED_FUNCTION_26_0();
      v64(v63);
      OUTLINED_FUNCTION_25_0();
      v48 = v59;
      v51 = v140;
    }
  }

  v75 = *(v138 + 16);
  if (v75)
  {
    v154 = MEMORY[0x277D84F90];
    v76 = v138;
    sub_2676CC46C();
    OUTLINED_FUNCTION_13_2();
    v79 = v76 + (v78 & ~v77);
    v81 = *(v80 + 72);
    v142 = *(v80 + 16);
    v82 = v137;
    do
    {
      v142(v22, v79, v82);
      v83 = [objc_allocWithZone(MEMORY[0x277D47640]) *(v27 + 1808)];
      v84 = sub_2676CAAFC();
      sub_2675EA76C(v84, v85, v83, &selRef_setLabel_);
      v86 = sub_2676CAB0C();
      sub_2675EA76C(v86, v87, v83, &selRef_setNumber_);
      (*v53)(v22, v82);
      sub_2676CC44C();
      v88 = *(v154 + 16);
      sub_2676CC47C();
      v27 = 0x279C11000;
      sub_2676CC48C();
      sub_2676CC45C();
      v79 += v81;
      --v75;
    }

    while (v75);

    v89 = v154;
  }

  else
  {

    v89 = MEMORY[0x277D84F90];
  }

  sub_2675EA6E8(v89, v135, &qword_2801CC028, 0x277D47640, &selRef_setPhones_);
  v90 = sub_2676CAE5C();
  v91 = 0;
  v142 = *(v90 + 16);
  LODWORD(v140) = *MEMORY[0x277D56008];
  v138 = MEMORY[0x277D84F90];
  v92 = v137;
  v93 = v134;
  v141 = v90;
  while (v142 != v91)
  {
    if (v91 >= *(v90 + 16))
    {
      goto LABEL_35;
    }

    OUTLINED_FUNCTION_13_2();
    v96 = v95 & ~v94;
    v27 = *(v98 + 72);
    (*(v98 + 16))(v93, v97 + v96 + v27 * v91, v92);
    v99 = v147;
    v22 = v92;
    sub_2676CAAEC();
    v53 = v148;
    v100 = v143;
    (*v145)(v148, v140, v143);
    OUTLINED_FUNCTION_11_2();
    sub_2675EA914(&qword_2801CC140, v101);
    sub_2676CC0CC();
    sub_2676CC0CC();
    v92 = *v144;
    (*v144)(v53, v100);
    (v92)(v99, v100);
    if (v153 == v152)
    {
      v104 = *v139;
      (*v139)(v132, v93, v22);
      v105 = v138;
      v106 = swift_isUniquelyReferenced_nonNull_native();
      v154 = v105;
      v53 = v146;
      if (v106)
      {
        v92 = v22;
      }

      else
      {
        OUTLINED_FUNCTION_27_0(*(v105 + 16));
        v92 = v137;
        v105 = v154;
      }

      v22 = v149;
      v108 = *(v105 + 16);
      v107 = *(v105 + 24);
      v109 = v108 + 1;
      if (v108 >= v107 >> 1)
      {
        v110 = OUTLINED_FUNCTION_23_1(v107);
        v112 = v111;
        sub_2676C2848(v110, v111, 1);
        v109 = v112;
        v92 = v137;
        v105 = v154;
      }

      ++v91;
      *(v105 + 16) = v109;
      v138 = v105;
      v104(v105 + v96 + v108 * v27, v132, v92);
      v27 = 0x279C11000;
      v93 = v134;
      v90 = v141;
    }

    else
    {
      v102 = OUTLINED_FUNCTION_26_0();
      v103(v102);
      OUTLINED_FUNCTION_25_0();
      v90 = v141;
    }
  }

  v113 = v138;
  v114 = *(v138 + 16);
  if (v114)
  {
    v154 = MEMORY[0x277D84F90];
    sub_2676CC46C();
    OUTLINED_FUNCTION_13_2();
    v117 = v113 + (v116 & ~v115);
    v149 = *(v118 + 72);
    v119 = *(v118 + 16);
    do
    {
      v119(v22, v117, v92);
      v120 = [objc_allocWithZone(MEMORY[0x277D472D8]) *(v27 + 1808)];
      v121 = sub_2676CAAFC();
      sub_2675EA76C(v121, v122, v120, &selRef_setLabel_);
      v123 = sub_2676CAB0C();
      sub_2675EA76C(v123, v124, v120, &selRef_setEmailAddress_);
      (*v53)(v22, v92);
      sub_2676CC44C();
      v125 = *(v154 + 16);
      sub_2676CC47C();
      sub_2676CC48C();
      sub_2676CC45C();
      v117 += v149;
      --v114;
    }

    while (v114);

    v126 = v154;
  }

  else
  {

    v126 = MEMORY[0x277D84F90];
  }

  v127 = v135;
  sub_2675EA6E8(v126, v135, &qword_2801CC020, 0x277D472D8, &selRef_setEmails_);

  v128 = sub_2676CAECC();
  OUTLINED_FUNCTION_8_2(v128);
  (*(v129 + 8))(v136);
  OUTLINED_FUNCTION_20_1();
}

void sub_2675E748C()
{
  OUTLINED_FUNCTION_21_1();
  v225 = v1;
  v233 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC030, &qword_2676CDAA0);
  OUTLINED_FUNCTION_4_1(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_9_1();
  v232 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC038, &qword_2676D5A40);
  OUTLINED_FUNCTION_4_1(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_9_1();
  KeyPath = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC040, &qword_2676CDAA8);
  OUTLINED_FUNCTION_4_1(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_9_1();
  v231 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC048, &qword_2676CDAB0);
  OUTLINED_FUNCTION_4_1(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_9_1();
  v230 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC050, &unk_2676D0C20);
  OUTLINED_FUNCTION_4_1(v23);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_9_1();
  v229 = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC058, &unk_2676D0C50);
  OUTLINED_FUNCTION_4_1(v28);
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_9_1();
  v228 = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC060, &qword_2676CDAB8);
  OUTLINED_FUNCTION_4_1(v33);
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_9_1();
  v224 = v37;
  v38 = sub_2676C8FBC();
  v39 = OUTLINED_FUNCTION_4_1(v38);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_3_2();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC068, &unk_2676D4E00);
  OUTLINED_FUNCTION_4_1(v42);
  v44 = *(v43 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_19_1();
  v216 = v0;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0A0, &qword_2676CDAE0);
  v47 = OUTLINED_FUNCTION_4_1(v46);
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_4();
  v223 = v50;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v51);
  v217 = &v205 - v52;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC070, &qword_2676CDAC0);
  OUTLINED_FUNCTION_4_1(v53);
  v55 = *(v54 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v56);
  v218 = &v205 - v57;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC078, &unk_2676D3680);
  OUTLINED_FUNCTION_4_1(v58);
  v60 = *(v59 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v61);
  v219 = &v205 - v62;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC080, &unk_2676D3580);
  v64 = OUTLINED_FUNCTION_4_1(v63);
  v66 = *(v65 + 64);
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_4();
  v214 = v67;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v68);
  v227 = &v205 - v69;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC088, &qword_2676CDAC8);
  v71 = OUTLINED_FUNCTION_4_1(v70);
  v73 = *(v72 + 64);
  v74 = MEMORY[0x28223BE20](v71);
  v220 = &v205 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v74);
  v221 = &v205 - v76;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC090, &qword_2676CDAD0);
  OUTLINED_FUNCTION_4_1(v77);
  v79 = *(v78 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v80);
  v222 = &v205 - v81;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC098, &qword_2676CDAD8);
  OUTLINED_FUNCTION_4_1(v82);
  v84 = *(v83 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v85);
  v87 = &v205 - v86;
  sub_2676CB87C();
  OUTLINED_FUNCTION_5_2();
  v205 = v88;
  __swift_storeEnumTagSinglePayload(v89, v90, v91, v88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0B0, &qword_2676CDAE8);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v92, v93, v94, v95);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0B8, &qword_2676CDAF0);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v97, v98, v99, v96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0C0, &qword_2676CDAF8);
  OUTLINED_FUNCTION_5_2();
  v213 = v100;
  __swift_storeEnumTagSinglePayload(v101, v102, v103, v100);
  v104 = OUTLINED_FUNCTION_3_4();
  __swift_storeEnumTagSinglePayload(v104, v105, v106, v96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0C8, &qword_2676CDB00);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v107, v108, v109, v110);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0D0, &qword_2676CDB08);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v111, v112, v113, v114);
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0A8, &qword_2676D5AB0);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v116, v117, v118, v115);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0D8, &qword_2676D1490);
  v119 = OUTLINED_FUNCTION_4_3();
  v212 = v120;
  __swift_storeEnumTagSinglePayload(v119, v121, v122, v120);
  v123 = v225;
  sub_2676CAD8C();
  sub_2675E7F08();
  OUTLINED_FUNCTION_17_2();
  __swift_storeEnumTagSinglePayload(v124, v125, v126, v115);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0E0, &qword_2676CDB10);
  OUTLINED_FUNCTION_5_2();
  v211 = v127;
  __swift_storeEnumTagSinglePayload(v128, v129, v130, v127);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0E8, &qword_2676CDB18);
  OUTLINED_FUNCTION_5_2();
  v210 = v131;
  __swift_storeEnumTagSinglePayload(v132, v133, v134, v131);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0F0, &qword_2676CDB20);
  OUTLINED_FUNCTION_5_2();
  v209 = v135;
  __swift_storeEnumTagSinglePayload(v136, v137, v138, v135);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0F8, &unk_2676D2AA0);
  OUTLINED_FUNCTION_5_2();
  v208 = v139;
  __swift_storeEnumTagSinglePayload(v140, v141, v142, v139);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC100, &qword_2676CDB28);
  OUTLINED_FUNCTION_5_2();
  v207 = v143;
  __swift_storeEnumTagSinglePayload(v144, v145, v146, v143);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC108, &qword_2676D3590);
  OUTLINED_FUNCTION_5_2();
  v215 = v147;
  __swift_storeEnumTagSinglePayload(v148, v149, v150, v147);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC110, &qword_2676CDB30);
  v151 = OUTLINED_FUNCTION_3_4();
  v206 = v152;
  __swift_storeEnumTagSinglePayload(v151, v153, v154, v152);
  v155 = v123;
  sub_2676CA7FC();
  v156 = sub_2676CAE1C();
  if (v156 != 2 && (v156 & 1) != 0)
  {
    swift_getKeyPath();
    v157 = *MEMORY[0x277D5C6E0];
    v158 = v205;
    OUTLINED_FUNCTION_14_2(v205);
    (*(v159 + 104))(v87);
    OUTLINED_FUNCTION_17_2();
    __swift_storeEnumTagSinglePayload(v160, v161, v162, v158);
    OUTLINED_FUNCTION_0_6();
    sub_2675EA914(v163, v164);
    sub_2676CA85C();
  }

  v165 = sub_2676CAD9C();
  v167 = v166;

  v168 = HIBYTE(v167) & 0xF;
  if ((v167 & 0x2000000000000000) == 0)
  {
    v168 = v165 & 0xFFFFFFFFFFFFLL;
  }

  if (v168)
  {
    KeyPath = swift_getKeyPath();
    v169 = sub_2676CAD9C();
    v222 = v170;
    v223 = v169;
    v171 = OUTLINED_FUNCTION_3_4();
    __swift_storeEnumTagSinglePayload(v171, v172, v173, v212);
    OUTLINED_FUNCTION_5_2();
    __swift_storeEnumTagSinglePayload(v174, v175, v176, v211);
    OUTLINED_FUNCTION_5_2();
    __swift_storeEnumTagSinglePayload(v177, v178, v179, v210);
    OUTLINED_FUNCTION_5_2();
    __swift_storeEnumTagSinglePayload(v180, v181, v182, v209);
    OUTLINED_FUNCTION_5_2();
    __swift_storeEnumTagSinglePayload(v183, v184, v185, v208);
    OUTLINED_FUNCTION_5_2();
    __swift_storeEnumTagSinglePayload(v186, v187, v188, v207);
    v189 = v213;
    OUTLINED_FUNCTION_5_2();
    __swift_storeEnumTagSinglePayload(v190, v191, v192, v189);
    OUTLINED_FUNCTION_5_2();
    __swift_storeEnumTagSinglePayload(v193, v194, v195, v206);
    sub_2676CA7AC();
    OUTLINED_FUNCTION_17_2();
    __swift_storeEnumTagSinglePayload(v196, v197, v198, v189);
    OUTLINED_FUNCTION_0_6();
    sub_2675EA914(v199, v200);
    OUTLINED_FUNCTION_10_2();
    sub_2675EA914(v201, v202);
    sub_2676CA88C();
  }

  v203 = sub_2676CAECC();
  OUTLINED_FUNCTION_8_2(v203);
  (*(v204 + 8))(v155);
  OUTLINED_FUNCTION_20_1();
}

void sub_2675E7F08()
{
  OUTLINED_FUNCTION_21_1();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC030, &qword_2676CDAA0);
  OUTLINED_FUNCTION_4_1(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0A0, &qword_2676CDAE0);
  OUTLINED_FUNCTION_4_1(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC040, &qword_2676CDAA8);
  OUTLINED_FUNCTION_4_1(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_19_1();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC048, &qword_2676CDAB0);
  OUTLINED_FUNCTION_4_1(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC050, &unk_2676D0C20);
  OUTLINED_FUNCTION_4_1(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC058, &unk_2676D0C50);
  OUTLINED_FUNCTION_4_1(v22);
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v25);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC060, &qword_2676CDAB8);
  OUTLINED_FUNCTION_4_1(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v29);
  sub_2676C8EEC();
  sub_2676C8ECC();
  sub_2676C8F0C();
  sub_2676C8F4C();
  sub_2676C8F2C();
  sub_2676C8F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0E0, &qword_2676CDB10);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0E8, &qword_2676CDB18);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v37);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0F0, &qword_2676CDB20);
  v38 = OUTLINED_FUNCTION_3_4();
  __swift_storeEnumTagSinglePayload(v38, v39, v40, v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0F8, &unk_2676D2AA0);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v42, v43, v44, v45);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC100, &qword_2676CDB28);
  v46 = OUTLINED_FUNCTION_4_3();
  __swift_storeEnumTagSinglePayload(v46, v47, v48, v49);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0A8, &qword_2676D5AB0);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v50, v51, v52, v53);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC110, &qword_2676CDB30);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v54, v55, v56, v57);
  sub_2676CA79C();
  v58 = sub_2676C8FBC();
  OUTLINED_FUNCTION_8_2(v58);
  (*(v59 + 8))(v1);
  OUTLINED_FUNCTION_20_1();
}

void sub_2675E82AC()
{
  OUTLINED_FUNCTION_21_1();
  v2 = v1;
  v301 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC030, &qword_2676CDAA0);
  OUTLINED_FUNCTION_4_1(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_9_1();
  v298 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC038, &qword_2676D5A40);
  OUTLINED_FUNCTION_4_1(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_9_1();
  v297 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC040, &qword_2676CDAA8);
  OUTLINED_FUNCTION_4_1(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_9_1();
  v300 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC048, &qword_2676CDAB0);
  OUTLINED_FUNCTION_4_1(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_9_1();
  v296 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC050, &unk_2676D0C20);
  OUTLINED_FUNCTION_4_1(v24);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_9_1();
  v295 = v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC058, &unk_2676D0C50);
  OUTLINED_FUNCTION_4_1(v29);
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_9_1();
  v294 = v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC060, &qword_2676CDAB8);
  OUTLINED_FUNCTION_4_1(v34);
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_9_1();
  v292 = v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC068, &unk_2676D4E00);
  OUTLINED_FUNCTION_4_1(v39);
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_9_1();
  v304 = v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC070, &qword_2676CDAC0);
  OUTLINED_FUNCTION_4_1(v44);
  v46 = *(v45 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_9_1();
  KeyPath = v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC078, &unk_2676D3680);
  OUTLINED_FUNCTION_4_1(v49);
  v51 = *(v50 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_9_1();
  v302 = v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC080, &unk_2676D3580);
  v55 = OUTLINED_FUNCTION_4_1(v54);
  v57 = *(v56 + 64);
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_4();
  v286 = v58;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_24_1();
  v305 = v60;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC088, &qword_2676CDAC8);
  v62 = OUTLINED_FUNCTION_4_1(v61);
  v64 = *(v63 + 64);
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_4();
  v66 = v65;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_24_1();
  v69 = v68;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC090, &qword_2676CDAD0);
  OUTLINED_FUNCTION_4_1(v70);
  v72 = *(v71 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_9_1();
  v75 = v74;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC098, &qword_2676CDAD8);
  OUTLINED_FUNCTION_4_1(v76);
  v78 = *(v77 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_19_1();
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0A0, &qword_2676CDAE0);
  v81 = OUTLINED_FUNCTION_4_1(v80);
  v83 = *(v82 + 64);
  MEMORY[0x28223BE20](v81);
  OUTLINED_FUNCTION_4();
  v293 = v84;
  OUTLINED_FUNCTION_12_0();
  v86 = MEMORY[0x28223BE20](v85);
  v88 = &v284 - v87;
  MEMORY[0x28223BE20](v86);
  v90 = &v284 - v89;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0A8, &qword_2676D5AB0);
  OUTLINED_FUNCTION_3(v91);
  v93 = v92;
  v95 = *(v94 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v96);
  OUTLINED_FUNCTION_9_1();
  v98 = v97;
  v299 = v2;
  sub_2675E9108(v2, v90);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v90, 1, v91);
  v287 = v0;
  v288 = v88;
  v290 = v69;
  v291 = v75;
  v289 = v66;
  if (EnumTagSinglePayload == 1)
  {
    sub_2675EA8AC(v90);
    sub_2676CB87C();
    v100 = OUTLINED_FUNCTION_4_3();
    __swift_storeEnumTagSinglePayload(v100, v101, v102, v103);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0B0, &qword_2676CDAE8);
    v104 = OUTLINED_FUNCTION_3_4();
    __swift_storeEnumTagSinglePayload(v104, v105, v106, v107);
    v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0B8, &qword_2676CDAF0);
    OUTLINED_FUNCTION_5_2();
    __swift_storeEnumTagSinglePayload(v109, v110, v111, v108);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0C0, &qword_2676CDAF8);
    OUTLINED_FUNCTION_5_2();
    __swift_storeEnumTagSinglePayload(v112, v113, v114, v115);
    OUTLINED_FUNCTION_5_2();
    __swift_storeEnumTagSinglePayload(v116, v117, v118, v108);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0C8, &qword_2676CDB00);
    OUTLINED_FUNCTION_5_2();
    __swift_storeEnumTagSinglePayload(v119, v120, v121, v122);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0D0, &qword_2676CDB08);
    OUTLINED_FUNCTION_5_2();
    __swift_storeEnumTagSinglePayload(v123, v124, v125, v126);
    v285 = sub_2675EA84C(v299, &selRef_fullName);
    v284 = v127;
    OUTLINED_FUNCTION_5_2();
    __swift_storeEnumTagSinglePayload(v128, v129, v130, v91);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0D8, &qword_2676D1490);
    OUTLINED_FUNCTION_5_2();
    __swift_storeEnumTagSinglePayload(v131, v132, v133, v134);
    OUTLINED_FUNCTION_5_2();
    __swift_storeEnumTagSinglePayload(v135, v136, v137, v91);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0E0, &qword_2676CDB10);
    OUTLINED_FUNCTION_5_2();
    __swift_storeEnumTagSinglePayload(v138, v139, v140, v141);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0E8, &qword_2676CDB18);
    OUTLINED_FUNCTION_5_2();
    __swift_storeEnumTagSinglePayload(v142, v143, v144, v145);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0F0, &qword_2676CDB20);
    v146 = OUTLINED_FUNCTION_3_4();
    __swift_storeEnumTagSinglePayload(v146, v147, v148, v149);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0F8, &unk_2676D2AA0);
    OUTLINED_FUNCTION_5_2();
    __swift_storeEnumTagSinglePayload(v150, v151, v152, v153);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC100, &qword_2676CDB28);
    OUTLINED_FUNCTION_5_2();
    __swift_storeEnumTagSinglePayload(v154, v155, v156, v157);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC108, &qword_2676D3590);
    OUTLINED_FUNCTION_5_2();
    __swift_storeEnumTagSinglePayload(v158, v159, v160, v161);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC110, &qword_2676CDB30);
    OUTLINED_FUNCTION_5_2();
    __swift_storeEnumTagSinglePayload(v162, v163, v164, v165);
    OUTLINED_FUNCTION_28_0();
  }

  else
  {
    v285 = v93;
    v167 = *(v93 + 32);
    v284 = v98;
    v167(v98, v90, v91);
    sub_2676CB87C();
    v168 = OUTLINED_FUNCTION_4_3();
    __swift_storeEnumTagSinglePayload(v168, v169, v170, v171);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0B0, &qword_2676CDAE8);
    v172 = OUTLINED_FUNCTION_3_4();
    __swift_storeEnumTagSinglePayload(v172, v173, v174, v175);
    v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0B8, &qword_2676CDAF0);
    OUTLINED_FUNCTION_5_2();
    __swift_storeEnumTagSinglePayload(v177, v178, v179, v176);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0C0, &qword_2676CDAF8);
    OUTLINED_FUNCTION_5_2();
    __swift_storeEnumTagSinglePayload(v180, v181, v182, v183);
    OUTLINED_FUNCTION_5_2();
    __swift_storeEnumTagSinglePayload(v184, v185, v186, v176);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0C8, &qword_2676CDB00);
    OUTLINED_FUNCTION_5_2();
    __swift_storeEnumTagSinglePayload(v187, v188, v189, v190);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0D0, &qword_2676CDB08);
    OUTLINED_FUNCTION_5_2();
    __swift_storeEnumTagSinglePayload(v191, v192, v193, v194);
    OUTLINED_FUNCTION_5_2();
    __swift_storeEnumTagSinglePayload(v195, v196, v197, v91);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0D8, &qword_2676D1490);
    OUTLINED_FUNCTION_5_2();
    __swift_storeEnumTagSinglePayload(v198, v199, v200, v201);
    (*(v93 + 16))(v293, v98, v91);
    OUTLINED_FUNCTION_17_2();
    __swift_storeEnumTagSinglePayload(v202, v203, v204, v91);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0E0, &qword_2676CDB10);
    OUTLINED_FUNCTION_5_2();
    __swift_storeEnumTagSinglePayload(v205, v206, v207, v208);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0E8, &qword_2676CDB18);
    OUTLINED_FUNCTION_5_2();
    __swift_storeEnumTagSinglePayload(v209, v210, v211, v212);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0F0, &qword_2676CDB20);
    v213 = OUTLINED_FUNCTION_3_4();
    __swift_storeEnumTagSinglePayload(v213, v214, v215, v216);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0F8, &unk_2676D2AA0);
    OUTLINED_FUNCTION_5_2();
    __swift_storeEnumTagSinglePayload(v217, v218, v219, v220);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC100, &qword_2676CDB28);
    OUTLINED_FUNCTION_5_2();
    __swift_storeEnumTagSinglePayload(v221, v222, v223, v224);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC108, &qword_2676D3590);
    OUTLINED_FUNCTION_5_2();
    __swift_storeEnumTagSinglePayload(v225, v226, v227, v228);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC110, &qword_2676CDB30);
    OUTLINED_FUNCTION_5_2();
    __swift_storeEnumTagSinglePayload(v229, v230, v231, v232);
    OUTLINED_FUNCTION_28_0();
    (*(v285 + 8))(v284, v91);
  }

  v166 = v299;
  v233 = [v299 me];
  if (v233)
  {
    v234 = v233;
    v306[0] = 2;
    MEMORY[0x26D5FDE40](v233, v306);

    if (v306[0] != 2)
    {
      swift_getKeyPath();
      v235 = *MEMORY[0x277D5C6E0];
      v236 = sub_2676CB87C();
      OUTLINED_FUNCTION_14_2(v236);
      (*(v237 + 104))(v287, v235, v236);
      OUTLINED_FUNCTION_17_2();
      __swift_storeEnumTagSinglePayload(v238, v239, v240, v236);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC108, &qword_2676D3590);
      OUTLINED_FUNCTION_0_6();
      sub_2675EA914(v241, v242);
      sub_2676CA85C();
    }
  }

  v243 = sub_2675EA84C(v166, &selRef_company);
  if (v244)
  {
    v302 = v243;
    KeyPath = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0D8, &qword_2676D1490);
    OUTLINED_FUNCTION_5_2();
    __swift_storeEnumTagSinglePayload(v245, v246, v247, v248);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0E0, &qword_2676CDB10);
    OUTLINED_FUNCTION_5_2();
    __swift_storeEnumTagSinglePayload(v249, v250, v251, v252);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0E8, &qword_2676CDB18);
    OUTLINED_FUNCTION_5_2();
    __swift_storeEnumTagSinglePayload(v253, v254, v255, v256);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0F0, &qword_2676CDB20);
    v257 = OUTLINED_FUNCTION_3_4();
    __swift_storeEnumTagSinglePayload(v257, v258, v259, v260);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0F8, &unk_2676D2AA0);
    OUTLINED_FUNCTION_5_2();
    __swift_storeEnumTagSinglePayload(v261, v262, v263, v264);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC100, &qword_2676CDB28);
    OUTLINED_FUNCTION_5_2();
    __swift_storeEnumTagSinglePayload(v265, v266, v267, v268);
    v269 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0C0, &qword_2676CDAF8);
    OUTLINED_FUNCTION_5_2();
    __swift_storeEnumTagSinglePayload(v270, v271, v272, v269);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC110, &qword_2676CDB30);
    v273 = OUTLINED_FUNCTION_4_3();
    __swift_storeEnumTagSinglePayload(v273, v274, v275, v276);
    sub_2676CA7AC();
    OUTLINED_FUNCTION_17_2();
    __swift_storeEnumTagSinglePayload(v277, v278, v279, v269);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC108, &qword_2676D3590);
    OUTLINED_FUNCTION_0_6();
    sub_2675EA914(v280, v281);
    OUTLINED_FUNCTION_10_2();
    sub_2675EA914(v282, v283);
    sub_2676CA88C();
  }

  OUTLINED_FUNCTION_20_1();
}

uint64_t sub_2675E9108@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC030, &qword_2676CDAA0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v51 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0A0, &qword_2676CDAE0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v51 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC040, &qword_2676CDAA8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v51 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC048, &qword_2676CDAB0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v51 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC050, &unk_2676D0C20);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v51 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC058, &unk_2676D0C50);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v26 = &v51 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC060, &qword_2676CDAB8);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v30 = &v51 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0A8, &qword_2676D5AB0);
  v51 = *(v31 - 8);
  v32 = *(v51 + 64);
  MEMORY[0x28223BE20](v31);
  v34 = &v51 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0E0, &qword_2676CDB10);
  __swift_storeEnumTagSinglePayload(v30, 1, 1, v35);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0E8, &qword_2676CDB18);
  __swift_storeEnumTagSinglePayload(v26, 1, 1, v36);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0F0, &qword_2676CDB20);
  __swift_storeEnumTagSinglePayload(v22, 1, 1, v37);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0F8, &unk_2676D2AA0);
  __swift_storeEnumTagSinglePayload(v18, 1, 1, v38);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC100, &qword_2676CDB28);
  __swift_storeEnumTagSinglePayload(v14, 1, 1, v39);
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v31);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC110, &qword_2676CDB30);
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v40);
  sub_2676CA79C();
  sub_2675EA84C(a1, &selRef_firstName);
  v42 = v41 != 0;
  if (v41)
  {
    swift_getKeyPath();
    sub_2675EA914(&qword_2801CC128, MEMORY[0x277D5C468]);
    sub_2676CA8AC();
  }

  sub_2675EA84C(a1, &selRef_lastName);
  if (v43)
  {
    swift_getKeyPath();
    sub_2675EA914(&qword_2801CC128, MEMORY[0x277D5C468]);
    sub_2676CA8AC();
    v42 = 1;
  }

  sub_2675EA84C(a1, &selRef_middleName);
  if (v44)
  {
    swift_getKeyPath();
    sub_2675EA914(&qword_2801CC128, MEMORY[0x277D5C468]);
    sub_2676CA8AC();
    v42 = 1;
  }

  sub_2675EA84C(a1, &selRef_nickName);
  if (v45)
  {
    swift_getKeyPath();
    sub_2675EA914(&qword_2801CC128, MEMORY[0x277D5C468]);
    sub_2676CA8AC();
    v42 = 1;
  }

  sub_2675EA84C(a1, &selRef_prefix);
  if (v46)
  {
    swift_getKeyPath();
    sub_2675EA914(&qword_2801CC128, MEMORY[0x277D5C468]);
    sub_2676CA8AC();
    v42 = 1;
  }

  sub_2675EA84C(a1, &selRef_suffix);
  if (v47)
  {
    swift_getKeyPath();
    sub_2675EA914(&qword_2801CC128, MEMORY[0x277D5C468]);
    sub_2676CA8AC();
  }

  else if (!v42)
  {
    (*(v51 + 8))(v34, v31);
    v49 = 1;
    v48 = v52;
    return __swift_storeEnumTagSinglePayload(v48, v49, 1, v31);
  }

  v48 = v52;
  (*(v51 + 32))(v52, v34, v31);
  v49 = 0;
  return __swift_storeEnumTagSinglePayload(v48, v49, 1, v31);
}

void sub_2675E9880()
{
  OUTLINED_FUNCTION_21_1();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0A0, &qword_2676CDAE0);
  OUTLINED_FUNCTION_4_1(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v7);
  v9 = &v40 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0A8, &qword_2676D5AB0);
  OUTLINED_FUNCTION_3(v10);
  v46 = v11;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v14);
  v16 = &v40 - v15;
  v49 = sub_2676C9D1C();
  v17 = OUTLINED_FUNCTION_3(v49);
  v47 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_3_2();
  v48 = v22 - v21;
  swift_getKeyPath();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC108, &qword_2676D3590);
  OUTLINED_FUNCTION_0_6();
  sub_2675EA914(v24, v25);
  sub_2675EA914(&qword_2801CC128, MEMORY[0x277D5C468]);
  sub_2676CA87C();

  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    v26 = v48;
    sub_2675EA8AC(v9);
    swift_getKeyPath();
    sub_2676CA89C();
    v28 = v27;

    if (!v28)
    {
      OUTLINED_FUNCTION_14_2(v23);
      (*(v39 + 8))(v1, v23);
      v38 = 1;
      v37 = v49;
      goto LABEL_6;
    }

    v29 = v26;
    sub_2676C9D0C();
    OUTLINED_FUNCTION_14_2(v23);
    (*(v30 + 8))(v1, v23);
  }

  else
  {
    v31 = v46;
    (*(v46 + 32))(v16, v9, v10);
    swift_getKeyPath();
    OUTLINED_FUNCTION_15_1();
    v32 = sub_2676CA89C();
    v44 = v33;
    v45 = v32;

    swift_getKeyPath();
    OUTLINED_FUNCTION_15_1();
    v34 = sub_2676CA89C();
    v42 = v35;
    v43 = v34;

    swift_getKeyPath();
    OUTLINED_FUNCTION_15_1();
    sub_2676CA89C();
    v41 = v1;

    swift_getKeyPath();
    OUTLINED_FUNCTION_15_1();
    sub_2676CA89C();

    v29 = v48;
    sub_2676C9D0C();
    OUTLINED_FUNCTION_14_2(v23);
    (*(v36 + 8))(v41, v23);
    (*(v31 + 8))(v16, v10);
  }

  v37 = v49;
  (*(v47 + 32))(v3, v29, v49);
  v38 = 0;
LABEL_6:
  __swift_storeEnumTagSinglePayload(v3, v38, 1, v37);
  OUTLINED_FUNCTION_20_1();
}

uint64_t sub_2675E9CDC()
{
  v1 = v0;
  v2 = sub_2676C9BDC();
  v3 = OUTLINED_FUNCTION_3(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_2();
  v10 = (v9 - v8);
  (*(v5 + 16))(v9 - v8, v1, v2);
  v11 = (*(v5 + 88))(v10, v2);
  if (v11 == *MEMORY[0x277D5BD90])
  {
    (*(v5 + 96))(v10, v2);
    v12 = *v10;
    v13 = *(v10 + 1);
    if (qword_2801CBAA0 != -1)
    {
      swift_once();
    }

    v14 = sub_2676CBE4C();
    __swift_project_value_buffer(v14, qword_2801CDC90);
    v15 = sub_2676CBE2C();
    v16 = sub_2676CC24C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_2675D4000, v15, v16, ".asUsoRelationshipType called on NLv3-based semantic value, this is unexpected given how RelationshipLabel is used internally by UnsetRelationshipFlowFactory. As a result, the resulting string may have unexpected formatting.", v17, 2u);
      MEMORY[0x26D5FEA80](v17, -1, -1);
    }

    v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC138, &qword_2676CDCB8) + 48);
    v19 = sub_2676C911C();
    OUTLINED_FUNCTION_8_2(v19);
    (*(v20 + 8))(&v10[v18]);
    return v12;
  }

  if (v11 == *MEMORY[0x277D5BD88])
  {
    (*(v5 + 96))(v10, v2);
    v12 = *v10;
    v21 = *(v10 + 1);
    return v12;
  }

  sub_2676CC3FC();
  MEMORY[0x26D5FDD00](0xD000000000000032, 0x80000002676D6170);
  sub_2675EA914(&qword_2801CC130, MEMORY[0x277D5BD98]);
  v23 = sub_2676CC56C();
  MEMORY[0x26D5FDD00](v23);

  result = static Logger.logAndCrash(_:file:line:)(0, 0xE000000000000000, "/Library/Caches/com.apple.xbs/Sources/SiriMail/SiriMailInternal/Encore/ResolveRecipients/UnsetRelationship/ContactMappingExtensions.swift", 137, 2, 151);
  __break(1u);
  return result;
}

void sub_2675E9FD8()
{
  OUTLINED_FUNCTION_21_1();
  v1 = v0;
  v3 = v2;
  v87 = sub_2676CAABC();
  v4 = OUTLINED_FUNCTION_3(v87);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_4();
  v83 = v9;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_24_1();
  v84 = v11;
  v86 = sub_2676CAB1C();
  v12 = OUTLINED_FUNCTION_3(v86);
  v14 = v13;
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v12);
  v19 = v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v74 - v20;
  sub_2676CAEBC();
  v22 = sub_2675EA84C(v1, &selRef_internalGUID);
  OUTLINED_FUNCTION_16_1(v22, v23);
  sub_2676CAE0C();
  v24 = [v1 me];
  if (v24)
  {
    v25 = v24;
    [v24 BOOLValue];
  }

  sub_2676CAE2C();
  v26 = sub_2675EA84C(v1, &selRef_prefix);
  OUTLINED_FUNCTION_16_1(v26, v27);
  sub_2676CAD3C();
  v28 = sub_2675EA84C(v1, &selRef_firstName);
  OUTLINED_FUNCTION_16_1(v28, v29);
  sub_2676CAEAC();
  v30 = sub_2675EA84C(v1, &selRef_middleName);
  OUTLINED_FUNCTION_16_1(v30, v31);
  sub_2676CAD1C();
  v32 = sub_2675EA84C(v1, &selRef_lastName);
  OUTLINED_FUNCTION_16_1(v32, v33);
  sub_2676CACFC();
  v34 = sub_2675EA84C(v1, &selRef_fullName);
  if (v35)
  {
    v36 = HIBYTE(v35) & 0xF;
    if ((v35 & 0x2000000000000000) == 0)
    {
      v36 = v34 & 0xFFFFFFFFFFFFLL;
    }

    if (!v36)
    {
      goto LABEL_10;
    }

    v37 = sub_2676CAE9C();
    v39 = v38;

    v40 = HIBYTE(v39) & 0xF;
    if ((v39 & 0x2000000000000000) == 0)
    {
      v40 = v37 & 0xFFFFFFFFFFFFLL;
    }

    if (!v40)
    {
      sub_2676CAEAC();
    }

    else
    {
LABEL_10:
    }
  }

  v41 = sub_2675EA84C(v1, &selRef_suffix);
  OUTLINED_FUNCTION_16_1(v41, v42);
  sub_2676CAD5C();
  v43 = sub_2675EA84C(v1, &selRef_nickName);
  OUTLINED_FUNCTION_16_1(v43, v44);
  sub_2676CAE8C();
  v45 = sub_2675EA84C(v1, &selRef_company);
  OUTLINED_FUNCTION_16_1(v45, v46);
  sub_2676CADAC();
  v47 = sub_2675EA7D8(v1, &selRef_phones, &qword_2801CC028, 0x277D47640);
  v48 = MEMORY[0x277D84F90];
  if (v47)
  {
    v49 = v47;
  }

  else
  {
    v49 = MEMORY[0x277D84F90];
  }

  v50 = sub_267630B8C(v49);
  v82 = v19;
  v74[1] = v3;
  v75 = v1;
  if (v50)
  {
    v51 = v50;
    v85 = v49;
    OUTLINED_FUNCTION_22_1(v50);
    if (v51 < 0)
    {
      goto LABEL_49;
    }

    v79 = v51;
    v80 = v21;
    v52 = 0;
    v53 = v88;
    v54 = v85;
    v81 = v85 & 0xC000000000000001;
    v76 = v85 & 0xFFFFFFFFFFFFFF8;
    LODWORD(v78) = *MEMORY[0x277D56010];
    v74[0] = v6;
    v55 = (v6 + 104);
    v77 = v14 + 32;
    while (1)
    {
      if (v81)
      {
        v56 = MEMORY[0x26D5FE0E0](v52);
      }

      else
      {
        if ((v52 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
          return;
        }

        if (v52 >= *(v76 + 16))
        {
          goto LABEL_46;
        }

        v56 = *(v54 + 8 * v52 + 32);
      }

      v57 = v56;
      (*v55)(v84, v78, v87);
      sub_2675EA84C(v57, &selRef_label);
      sub_2675EA84C(v57, &selRef_number);
      v58 = v80;
      sub_2676CAACC();

      v88 = v53;
      v60 = *(v53 + 16);
      v59 = *(v53 + 24);
      if (v60 >= v59 >> 1)
      {
        v61 = OUTLINED_FUNCTION_23_1(v59);
        sub_2676C2848(v61, v60 + 1, 1);
        v53 = v88;
      }

      ++v52;
      *(v53 + 16) = v60 + 1;
      (*(v14 + 32))(v53 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v60, v58, v86);
      v54 = v85;
      if (v79 == v52)
      {

        v1 = v75;
        v6 = v74[0];
        v48 = MEMORY[0x277D84F90];
        goto LABEL_28;
      }
    }
  }

  v53 = MEMORY[0x277D84F90];
LABEL_28:
  v62 = sub_2675EA7D8(v1, &selRef_emails, &qword_2801CC020, 0x277D472D8);
  if (v62)
  {
    v63 = v62;
  }

  else
  {
    v63 = v48;
  }

  v64 = sub_267630B8C(v63);
  if (v64)
  {
    v65 = v64;
    OUTLINED_FUNCTION_22_1(v64);
    if ((v65 & 0x8000000000000000) != 0)
    {
      goto LABEL_50;
    }

    v81 = v65;
    v66 = 0;
    v67 = v88;
    v85 = v63 & 0xC000000000000001;
    v78 = v63 & 0xFFFFFFFFFFFFFF8;
    LODWORD(v80) = *MEMORY[0x277D56008];
    v79 = v14 + 32;
    v84 = v63;
    do
    {
      if (v85)
      {
        v68 = MEMORY[0x26D5FE0E0](v66, v63);
      }

      else
      {
        if ((v66 & 0x8000000000000000) != 0)
        {
          goto LABEL_47;
        }

        if (v66 >= *(v78 + 16))
        {
          goto LABEL_48;
        }

        v68 = *(v63 + 8 * v66 + 32);
      }

      v69 = v68;
      (*(v6 + 104))(v83, v80, v87);
      sub_2675EA84C(v69, &selRef_label);
      sub_2675EA84C(v69, &selRef_emailAddress);
      v70 = v82;
      sub_2676CAACC();

      v88 = v67;
      v72 = *(v67 + 16);
      v71 = *(v67 + 24);
      if (v72 >= v71 >> 1)
      {
        v73 = OUTLINED_FUNCTION_23_1(v71);
        sub_2676C2848(v73, v72 + 1, 1);
        v67 = v88;
      }

      ++v66;
      *(v67 + 16) = v72 + 1;
      (*(v14 + 32))(v67 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v72, v70, v86);
      v63 = v84;
    }

    while (v81 != v66);

    v1 = v75;
  }

  else
  {

    v67 = MEMORY[0x277D84F90];
  }

  v88 = v53;
  sub_2676A1E9C(v67);
  sub_2676CAE6C();

  OUTLINED_FUNCTION_20_1();
}

void sub_2675EA6E8(uint64_t a1, void *a2, unint64_t *a3, uint64_t *a4, SEL *a5)
{
  sub_2675E5E30(0, a3, a4);
  v7 = sub_2676CC0EC();

  [a2 *a5];
}

void sub_2675EA76C(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = sub_2676CBF3C();

  [a3 *a4];
}

uint64_t sub_2675EA7D8(void *a1, SEL *a2, unint64_t *a3, uint64_t *a4)
{
  v6 = [a1 *a2];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  sub_2675E5E30(0, a3, a4);
  v8 = sub_2676CC0FC();

  return v8;
}

uint64_t sub_2675EA84C(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_2676CBF6C();

  return v4;
}

uint64_t sub_2675EA8AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0A0, &qword_2676CDAE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2675EA914(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_16_1(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  return result;
}

size_t OUTLINED_FUNCTION_22_1(uint64_t a1)
{
  *(v2 - 88) = v1;

  return sub_2676C2848(0, a1 & ~(a1 >> 63), 0);
}

size_t OUTLINED_FUNCTION_27_0@<X0>(uint64_t a1@<X8>)
{

  return sub_2676C2848(0, a1 + 1, 1);
}

uint64_t OUTLINED_FUNCTION_28_0()
{
  v3 = *(v0 - 224);
  v2 = *(v0 - 216);
  v4 = *(v0 - 104);
  v5 = *(v0 - 232);
  v6 = *(v0 - 120);

  return sub_2676CA7FC();
}

uint64_t sub_2675EAB34@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v164 = a2;
  v162 = sub_2676C9EAC();
  v3 = OUTLINED_FUNCTION_3(v162);
  v5 = v4;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v3);
  v154 = v151 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v160 = v151 - v11;
  MEMORY[0x28223BE20](v10);
  v168 = v151 - v12;
  OUTLINED_FUNCTION_7_3();
  v13 = sub_2676CA0DC();
  v14 = OUTLINED_FUNCTION_3(v13);
  v156 = v15;
  v157 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3_2();
  v155 = v19 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC148, &unk_2676CDD90);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v158 = v151 - v22;
  OUTLINED_FUNCTION_7_3();
  v23 = sub_2676CA00C();
  v24 = OUTLINED_FUNCTION_3(v23);
  v161 = v25;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_3_2();
  v159 = v29 - v28;
  OUTLINED_FUNCTION_7_3();
  v30 = sub_2676C9EBC();
  v31 = OUTLINED_FUNCTION_3(v30);
  v166 = v32;
  v167 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_3_2();
  v165 = v36 - v35;
  OUTLINED_FUNCTION_7_3();
  v37 = sub_2676C9E6C();
  v38 = OUTLINED_FUNCTION_3(v37);
  v40 = v39;
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_3_2();
  v45 = v44 - v43;
  if (qword_2801CBAA0 != -1)
  {
    swift_once();
  }

  v46 = sub_2676CBE4C();
  v47 = __swift_project_value_buffer(v46, qword_2801CDC90);
  (*(v40 + 16))(v45, a1, v37);
  v163 = v47;
  v48 = sub_2676CBE2C();
  v49 = sub_2676CC23C();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = OUTLINED_FUNCTION_5_3();
    v151[1] = a1;
    v51 = v50;
    v52 = swift_slowAlloc();
    v152 = v23;
    v53 = v52;
    *&v170 = v52;
    *v51 = 136315138;
    sub_2675EB844();
    v54 = sub_2676CC56C();
    v55 = v5;
    v57 = v56;
    (*(v40 + 8))(v45, v37);
    v58 = sub_2676B0B84(v54, v57, &v170);
    v5 = v55;

    *(v51 + 4) = v58;
    _os_log_impl(&dword_2675D4000, v48, v49, "#ContactPromptResponseHandler handling contact prompt response: %s", v51, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v53);
    v23 = v152;
    OUTLINED_FUNCTION_2_5();
    OUTLINED_FUNCTION_2_5();
  }

  else
  {

    (*(v40 + 8))(v45, v37);
  }

  v59 = v165;
  sub_2676C9E5C();
  v60 = v166;
  v61 = *(v166 + 88);
  v62 = OUTLINED_FUNCTION_6_2();
  v64 = v63(v62);
  v65 = v168;
  if (v64 != *MEMORY[0x277D5C150])
  {
    if (v64 != *MEMORY[0x277D5C160])
    {
      v100 = *MEMORY[0x277D5BC80];
      v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC150, &unk_2676D54F0);
      OUTLINED_FUNCTION_2_6(v101);
      (*(v102 + 104))(v164, v100);
      v103 = *(v60 + 8);
      v104 = OUTLINED_FUNCTION_6_2();
      return v105(v104);
    }

    v77 = *(v60 + 96);
    v78 = OUTLINED_FUNCTION_6_2();
    v79(v78);
    v80 = v159;
    (*(v161 + 32))(v159, v59, v23);
    v81 = v155;
    sub_2676C9FFC();
    v82 = sub_2676CA0CC();
    (*(v156 + 8))(v81, v157);
    v83 = v158;
    sub_267698E5C(v82);

    v84 = sub_2676CA19C();
    if (__swift_getEnumTagSinglePayload(v83, 1, v84) == 1)
    {
      v85 = OUTLINED_FUNCTION_0_7();
      v86(v85);
      sub_2675EB7EC(v83, &qword_2801CC148, &unk_2676CDD90);
    }

    else
    {
      v122 = sub_26762AC20();
      (*(*(v84 - 8) + 8))(v83, v84);
      if (v122)
      {
        v123 = *(v153 + 24);
        v124 = (*(v153 + 16))(v122);
        if (v125)
        {
          v126 = v124;
          v127 = v125;

          v128 = sub_2676CBE2C();
          v129 = sub_2676CC23C();

          if (os_log_type_enabled(v128, v129))
          {
            v130 = OUTLINED_FUNCTION_5_3();
            v131 = swift_slowAlloc();
            v132 = v161;
            v133 = v131;
            *&v170 = v131;
            *v130 = 136315138;
            *(v130 + 4) = sub_2676B0B84(v126, v127, &v170);
            _os_log_impl(&dword_2675D4000, v128, v129, "#ContactPromptResponseHandler: Found parse with contact name (%s).", v130, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v133);
            OUTLINED_FUNCTION_2_5();
            OUTLINED_FUNCTION_2_5();

            (*(v132 + 8))(v80, v23);
          }

          else
          {

            v140 = OUTLINED_FUNCTION_0_7();
            v141(v140);
          }

          v98 = v164;
          *v164 = v126;
          v98[1] = v127;
          v99 = 1;
          goto LABEL_41;
        }

        v136 = sub_2676C39FC();
        if ((v137 & 1) == 0)
        {
          v145 = v136;
          v146 = sub_2676CBE2C();
          v147 = sub_2676CC23C();
          if (os_log_type_enabled(v146, v147))
          {
            v148 = OUTLINED_FUNCTION_5_3();
            *v148 = 134217984;
            *(v148 + 4) = v145;
            _os_log_impl(&dword_2675D4000, v146, v147, "#ContactPromptResponseHandler: Found parse with list position (%ld).", v148, 0xCu);
            OUTLINED_FUNCTION_2_5();
          }

          v149 = OUTLINED_FUNCTION_0_7();
          v150(v149);
          v98 = v164;
          *v164 = v145;
          goto LABEL_24;
        }

        v138 = OUTLINED_FUNCTION_0_7();
        v139(v138);
      }

      else
      {
        v134 = OUTLINED_FUNCTION_0_7();
        v135(v134);
      }
    }

LABEL_31:
    v119 = *MEMORY[0x277D5BC80];
    v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC150, &unk_2676D54F0);
    OUTLINED_FUNCTION_2_6(v120);
    return (*(v121 + 104))(v164, v119);
  }

  v66 = *(v60 + 96);
  v67 = OUTLINED_FUNCTION_6_2();
  v68(v67);
  v69 = v162;
  (*(v5 + 32))(v65, v59, v162);
  v70 = sub_2676C9E8C();
  v72 = v71;
  if (v70 == sub_2676C96AC() && v72 == v73)
  {

    v76 = v160;
  }

  else
  {
    v75 = sub_2676CC59C();

    v76 = v160;
    if ((v75 & 1) == 0)
    {
LABEL_28:
      v106 = v5;
      v107 = *(v5 + 16);
      v107(v76, v65, v69);
      v108 = sub_2676CBE2C();
      v109 = sub_2676CC23C();
      if (os_log_type_enabled(v108, v109))
      {
        v110 = OUTLINED_FUNCTION_5_3();
        v167 = swift_slowAlloc();
        *&v170 = v167;
        *v110 = 136315138;
        v107(v154, v76, v69);
        v111 = sub_2676CBFBC();
        v113 = v112;
        v114 = *(v106 + 8);
        v114(v76, v69);
        v115 = sub_2676B0B84(v111, v113, &v170);

        *(v110 + 4) = v115;
        OUTLINED_FUNCTION_8_3(&dword_2675D4000, v116, v117, "#ContactPromptResponseHandler received DI it cannot handle: %s");
        __swift_destroy_boxed_opaque_existential_1(v167);
        OUTLINED_FUNCTION_2_5();
        OUTLINED_FUNCTION_2_5();

        v114(v65, v69);
      }

      else
      {

        v118 = *(v5 + 8);
        v118(v76, v69);
        v118(v65, v69);
      }

      goto LABEL_31;
    }
  }

  v87 = sub_2676C9E9C();
  if (!v87)
  {
    v170 = 0u;
    v171 = 0u;
    goto LABEL_27;
  }

  v88 = v87;
  v89 = sub_2676C969C();
  sub_2675EB708(v89, v90, v88, &v170);

  if (!*(&v171 + 1))
  {
LABEL_27:
    sub_2675EB7EC(&v170, &qword_2801CC158, &qword_2676CDDA0);
    goto LABEL_28;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_28;
  }

  v91 = v169;
  v92 = sub_2676CBE2C();
  v93 = sub_2676CC23C();
  if (os_log_type_enabled(v92, v93))
  {
    v94 = OUTLINED_FUNCTION_5_3();
    *v94 = 134217984;
    *(v94 + 4) = v91;
    OUTLINED_FUNCTION_8_3(&dword_2675D4000, v95, v96, "#ContactPromptResponseHandler: Found direct invocation in parse with index=%ld.");
    OUTLINED_FUNCTION_2_5();
  }

  result = (*(v5 + 8))(v65, v69);
  if (!__OFADD__(v91, 1))
  {
    v98 = v164;
    *v164 = v91 + 1;
LABEL_24:
    v98[1] = 0;
    v99 = 4;
LABEL_41:
    *(v98 + 16) = v99;
    v142 = *MEMORY[0x277D5BC88];
    v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC150, &unk_2676D54F0);
    OUTLINED_FUNCTION_2_6(v143);
    return (*(v144 + 104))(v98, v142);
  }

  __break(1u);
  return result;
}

double sub_2675EB708@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_26760BE20(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_2675EB89C(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

uint64_t sub_2675EB76C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_2675EB7EC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_2_6(v4);
  (*(v5 + 8))(a1);
  return a1;
}

unint64_t sub_2675EB844()
{
  result = qword_2801CC160;
  if (!qword_2801CC160)
  {
    sub_2676C9E6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CC160);
  }

  return result;
}

uint64_t sub_2675EB89C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_5_3()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_8_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_2675EB96C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC080, &unk_2676D3580) - 8) + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v4);
  v58 = &v53 - v5;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0C0, &qword_2676CDAF8);
  OUTLINED_FUNCTION_3(v57);
  v55 = v6;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v9);
  v54 = &v53 - v10;
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC168, &unk_2676CF510) - 8) + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v12);
  v14 = &v53 - v13;
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC038, &qword_2676D5A40) - 8) + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v16);
  v18 = &v53 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC108, &qword_2676D3590);
  OUTLINED_FUNCTION_3(v19);
  v56 = v20;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v23);
  v25 = &v53 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF78, &qword_2676CDF00);
  v59 = *(v26 - 8);
  v27 = *(v59 + 16);
  v27(v14, a1, v26);
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v26);
  sub_2676CB91C();
  sub_2676CB86C();
  sub_2675EC200(&qword_2801CC118, MEMORY[0x277D5C778]);
  sub_2676CA8EC();
  if (__swift_getEnumTagSinglePayload(v18, 1, v19) == 1)
  {
    sub_2675E35CC(v18, &qword_2801CC038, &qword_2676D5A40);
    v27(v14, a1, v26);
    __swift_storeEnumTagSinglePayload(v14, 0, 1, v26);
    sub_2676CB6AC();
    sub_2675EC200(&qword_2801CC120, MEMORY[0x277D5C558]);
    v28 = v58;
    sub_2676CA8EC();
    v29 = v57;
    if (__swift_getEnumTagSinglePayload(v28, 1, v57) == 1)
    {
      sub_2675E35CC(v28, &qword_2801CC080, &unk_2676D3580);
      sub_2676CAA8C();
      swift_getKeyPath();
      sub_2675EC200(&qword_2801CBF70, MEMORY[0x277D5C6D0]);
      sub_2676CA89C();

      sub_2676CAA3C();
      v30 = OUTLINED_FUNCTION_4_4();
      return v31(v30, v26);
    }

    else
    {
      v44 = v54;
      v43 = v55;
      (*(v55 + 32))(v54, v28, v29);
      if (qword_2801CBAA0 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v45 = sub_2676CBE4C();
      __swift_project_value_buffer(v45, qword_2801CDC90);
      v46 = sub_2676CBE2C();
      v47 = sub_2676CC23C();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        *v48 = 0;
        OUTLINED_FUNCTION_6_3(&dword_2675D4000, v49, v50, "#ContactResolver converting Entity<Common.Organization> to ContactQuery");
        MEMORY[0x26D5FEA80](v48, -1, -1);
      }

      sub_2676CAA8C();
      swift_getKeyPath();
      sub_2676CA89C();

      sub_2676CAA3C();
      v51 = OUTLINED_FUNCTION_4_4();
      v52(v51, v26);
      return (*(v43 + 8))(v44, v29);
    }
  }

  else
  {
    v33 = v26;
    v34 = v56;
    (*(v56 + 32))(v25, v18, v19);
    if (qword_2801CBAA0 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v35 = sub_2676CBE4C();
    __swift_project_value_buffer(v35, qword_2801CDC90);
    v36 = sub_2676CBE2C();
    v37 = sub_2676CC23C();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      OUTLINED_FUNCTION_6_3(&dword_2675D4000, v39, v40, "#ContactResolver converting Entity<Common.Person> to ContactQuery");
      MEMORY[0x26D5FEA80](v38, -1, -1);
    }

    sub_2675F6DF0(v60);
    v41 = OUTLINED_FUNCTION_4_4();
    v42(v41, v33);
    return (*(v34 + 8))(v25, v19);
  }
}

uint64_t sub_2675EC018()
{
  v0 = sub_2676C8FBC();
  v1 = OUTLINED_FUNCTION_3(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2676CAA2C();
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_0_8();
  if (v8)
  {

    return sub_2676CAA2C();
  }

  else
  {
    sub_2676C8FAC();
    sub_2676CA98C();
    OUTLINED_FUNCTION_1_6();
    OUTLINED_FUNCTION_0_8();
    if (v10)
    {
      sub_2676CA98C();
      sub_2676C8F3C();
    }

    sub_2676CAA6C();
    OUTLINED_FUNCTION_1_6();
    OUTLINED_FUNCTION_0_8();
    if (v11)
    {
      sub_2676CAA6C();
      sub_2676C8EDC();
    }

    sub_2676CA96C();
    OUTLINED_FUNCTION_1_6();
    OUTLINED_FUNCTION_0_8();
    if (v12)
    {
      sub_2676CA96C();
      sub_2676C8F1C();
    }

    sub_2676CA94C();
    OUTLINED_FUNCTION_1_6();
    OUTLINED_FUNCTION_0_8();
    if (v13)
    {
      sub_2676CA94C();
      sub_2676C8EFC();
    }

    sub_2676CA9AC();
    OUTLINED_FUNCTION_1_6();
    OUTLINED_FUNCTION_0_8();
    if (v14)
    {
      sub_2676CA9AC();
      sub_2676C8F5C();
    }

    sub_2676CAA4C();
    OUTLINED_FUNCTION_1_6();
    OUTLINED_FUNCTION_0_8();
    if (v15)
    {
      sub_2676CAA4C();
      sub_2676C8F8C();
    }

    v16 = sub_2676C8F9C();
    (*(v3 + 8))(v7, v0);
    return v16;
  }
}

uint64_t sub_2675EC200(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2675EC248@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2676CB68C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2675EC274(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_2676CB69C();
}

uint64_t OUTLINED_FUNCTION_1_6()
{
}

void OUTLINED_FUNCTION_6_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 2u);
}

uint64_t type metadata accessor for ContactResolutionCATsSimple()
{
  result = qword_2801CC170;
  if (!qword_2801CC170)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2675EC3A0()
{
  OUTLINED_FUNCTION_3_0();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFD0, &qword_2676CDEA0);
  OUTLINED_FUNCTION_4_1(v4);
  v6 = *(v5 + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  OUTLINED_FUNCTION_21();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2675EC440()
{
  OUTLINED_FUNCTION_16_2();
  v1 = v0[6];
  v2 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC180, &qword_2676CDEA8);
  v3 = swift_allocObject();
  v0[7] = v3;
  *(v3 + 16) = xmmword_2676CDE10;
  *(v3 + 32) = 0xD000000000000015;
  *(v3 + 40) = 0x80000002676D62D0;
  sub_2675ED65C(v2, v1, &qword_2801CBFD0, &qword_2676CDEA0);
  v4 = sub_2676CB3FC();
  if (OUTLINED_FUNCTION_10_3() == 1)
  {
    sub_2675ED6C0(v0[6], &qword_2801CBFD0, &qword_2676CDEA0);
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
  }

  else
  {
    *(v3 + 72) = v4;
    __swift_allocate_boxed_opaque_existential_1((v3 + 48));
    OUTLINED_FUNCTION_14_2(v4);
    v6 = *(v5 + 32);
    OUTLINED_FUNCTION_11_3();
    v7();
  }

  v8 = v0[5];
  v9 = v0[3];
  OUTLINED_FUNCTION_7_4();
  *(v3 + 80) = v11;
  *(v3 + 88) = v10 & 0xFFFF0000FFFFLL | 0xEB00000000650000;
  sub_2675ED65C(v12, v8, &qword_2801CBFD0, &qword_2676CDEA0);
  if (OUTLINED_FUNCTION_10_3() == 1)
  {
    sub_2675ED6C0(v0[5], &qword_2801CBFD0, &qword_2676CDEA0);
    *(v3 + 96) = 0u;
    *(v3 + 112) = 0u;
  }

  else
  {
    *(v3 + 120) = v4;
    __swift_allocate_boxed_opaque_existential_1((v3 + 96));
    OUTLINED_FUNCTION_14_2(v4);
    v14 = *(v13 + 32);
    OUTLINED_FUNCTION_11_3();
    v15();
  }

  v16 = OUTLINED_FUNCTION_5_4(MEMORY[0x277D55C70]);
  v0[8] = v16;
  *v16 = v0;
  v16[1] = sub_2675EC670;
  v17 = v0[4];
  OUTLINED_FUNCTION_15_2();

  return v18();
}

uint64_t sub_2675EC670()
{
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_3_5();
  v3 = v2;
  OUTLINED_FUNCTION_2_7();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  OUTLINED_FUNCTION_0_1();
  *v8 = v7;
  v3[9] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_21();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v13 = v3[6];
    v12 = v3[7];
    v14 = v3[5];

    v15 = OUTLINED_FUNCTION_0_9();

    return v16(v15);
  }
}

uint64_t sub_2675EC7AC()
{
  OUTLINED_FUNCTION_3_0();
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];

  OUTLINED_FUNCTION_15_0();
  v5 = v0[9];

  return v4();
}

uint64_t sub_2675EC81C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  OUTLINED_FUNCTION_21();
  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2675EC848()
{
  OUTLINED_FUNCTION_16_2();
  v1 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC180, &qword_2676CDEA8);
  v2 = swift_allocObject();
  v0[4] = v2;
  *(v2 + 16) = xmmword_2676CDE20;
  OUTLINED_FUNCTION_7_4();
  *(v4 + 32) = v5;
  *(v4 + 40) = v3 | 0xEF7473694C650000;
  *(v2 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC190, &qword_2676CDEB8);
  *(v2 + 48) = v1;
  v6 = *(MEMORY[0x277D55C70] + 4);
  v10 = (*MEMORY[0x277D55C70] + MEMORY[0x277D55C70]);

  v7 = swift_task_alloc();
  v0[5] = v7;
  *v7 = v0;
  v7[1] = sub_2675EC984;
  v8 = v0[3];

  return v10(0xD000000000000027, 0x80000002676D6360, v2);
}

uint64_t sub_2675EC984()
{
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_3_5();
  v4 = v3;
  OUTLINED_FUNCTION_2_7();
  *v5 = v4;
  v7 = *(v6 + 40);
  v8 = *v2;
  OUTLINED_FUNCTION_0_1();
  *v9 = v8;
  *(v4 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_21();

    return MEMORY[0x2822009F8](v10, v11, v12);
  }

  else
  {
    v13 = *(v4 + 32);

    v14 = *(v8 + 8);

    return v14(v1);
  }
}

uint64_t sub_2675ECABC()
{
  OUTLINED_FUNCTION_3_0();
  v1 = *(v0 + 32);

  OUTLINED_FUNCTION_15_0();
  v3 = *(v0 + 48);

  return v2();
}

uint64_t sub_2675ECB18()
{
  OUTLINED_FUNCTION_3_0();
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  *(v1 + 73) = v3;
  *(v1 + 72) = v4;
  *(v1 + 16) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFD0, &qword_2676CDEA0);
  OUTLINED_FUNCTION_4_1(v6);
  v8 = *(v7 + 64) + 15;
  *(v1 + 40) = swift_task_alloc();
  OUTLINED_FUNCTION_21();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2675ECBB4()
{
  OUTLINED_FUNCTION_16_2();
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC180, &qword_2676CDEA8);
  v4 = swift_allocObject();
  *(v0 + 48) = v4;
  *(v4 + 16) = xmmword_2676CDE30;
  *(v4 + 32) = 0x73694C6C69616D65;
  *(v4 + 40) = 0xE900000000000074;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC188, &qword_2676CDEB0);
  *(v4 + 48) = v2;
  *(v4 + 72) = v5;
  *(v4 + 80) = 1701667182;
  *(v4 + 88) = 0xE400000000000000;
  sub_2675ED65C(v3, v1, &qword_2801CBFD0, &qword_2676CDEA0);
  v6 = sub_2676CB3FC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v6);
  v8 = *(v0 + 40);
  v9 = *(v0 + 16);
  if (EnumTagSinglePayload == 1)
  {
    v10 = *(v0 + 16);

    sub_2675ED6C0(v8, &qword_2801CBFD0, &qword_2676CDEA0);
    *(v4 + 96) = 0u;
    *(v4 + 112) = 0u;
  }

  else
  {
    *(v4 + 120) = v6;
    __swift_allocate_boxed_opaque_existential_1((v4 + 96));
    OUTLINED_FUNCTION_14_2(v6);
    (*(v11 + 32))();
  }

  v12 = *(v0 + 73);
  v13 = *(v0 + 72);
  strcpy((v4 + 128), "isMixedLabels");
  *(v4 + 142) = -4864;
  v14 = MEMORY[0x277D839B0];
  *(v4 + 144) = v13;
  *(v4 + 168) = v14;
  strcpy((v4 + 176), "isSameLabels");
  *(v4 + 189) = 0;
  *(v4 + 190) = -5120;
  *(v4 + 216) = v14;
  *(v4 + 192) = v12;
  v15 = OUTLINED_FUNCTION_5_4(MEMORY[0x277D55C70]);
  *(v0 + 56) = v15;
  *v15 = v0;
  v15[1] = sub_2675ECE0C;
  v16 = *(v0 + 32);

  return v18(0xD000000000000026, 0x80000002676D6330, v4);
}

uint64_t sub_2675ECE0C()
{
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_3_5();
  v3 = v2;
  OUTLINED_FUNCTION_2_7();
  *v4 = v3;
  v6 = *(v5 + 56);
  v7 = *v1;
  OUTLINED_FUNCTION_0_1();
  *v8 = v7;
  v3[8] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_21();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v13 = v3[5];
    v12 = v3[6];

    v14 = OUTLINED_FUNCTION_0_9();

    return v15(v14);
  }
}

uint64_t sub_2675ECF3C()
{
  OUTLINED_FUNCTION_3_0();
  v2 = v0[5];
  v1 = v0[6];

  OUTLINED_FUNCTION_15_0();
  v4 = v0[8];

  return v3();
}

uint64_t sub_2675ECFA0()
{
  OUTLINED_FUNCTION_3_0();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFD0, &qword_2676CDEA0);
  OUTLINED_FUNCTION_4_1(v3);
  v5 = *(v4 + 64) + 15;
  v1[4] = swift_task_alloc();
  OUTLINED_FUNCTION_21();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2675ED030()
{
  OUTLINED_FUNCTION_16_2();
  v1 = v0[4];
  v2 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC180, &qword_2676CDEA8);
  v3 = swift_allocObject();
  v0[5] = v3;
  *(v3 + 16) = xmmword_2676CDE20;
  *(v3 + 32) = 0xD000000000000015;
  *(v3 + 40) = 0x80000002676D62D0;
  sub_2675ED65C(v2, v1, &qword_2801CBFD0, &qword_2676CDEA0);
  v4 = sub_2676CB3FC();
  if (OUTLINED_FUNCTION_10_3() == 1)
  {
    sub_2675ED6C0(v0[4], &qword_2801CBFD0, &qword_2676CDEA0);
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
  }

  else
  {
    *(v3 + 72) = v4;
    __swift_allocate_boxed_opaque_existential_1((v3 + 48));
    OUTLINED_FUNCTION_14_2(v4);
    v6 = *(v5 + 32);
    OUTLINED_FUNCTION_11_3();
    v7();
  }

  v8 = OUTLINED_FUNCTION_5_4(MEMORY[0x277D55C70]);
  v0[6] = v8;
  *v8 = v0;
  v8[1] = sub_2675ED1C8;
  v9 = v0[3];
  OUTLINED_FUNCTION_15_2();

  return v10();
}

uint64_t sub_2675ED1C8()
{
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_3_5();
  v3 = v2;
  OUTLINED_FUNCTION_2_7();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  OUTLINED_FUNCTION_0_1();
  *v8 = v7;
  v3[7] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_21();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v13 = v3[4];
    v12 = v3[5];

    v14 = OUTLINED_FUNCTION_0_9();

    return v15(v14);
  }
}

uint64_t sub_2675ED2F8()
{
  OUTLINED_FUNCTION_3_0();
  v2 = v0[4];
  v1 = v0[5];

  OUTLINED_FUNCTION_15_0();
  v4 = v0[7];

  return v3();
}

uint64_t sub_2675ED35C()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_11_3();
  return sub_2675ED3AC(v3, v4);
}

uint64_t sub_2675ED3AC(uint64_t a1, uint64_t a2)
{
  v5 = sub_2676CB48C();
  v6 = OUTLINED_FUNCTION_8_4(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2801CDAC0, &unk_2676CF3A0);
  v14 = OUTLINED_FUNCTION_4_1(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  sub_2675ED65C(a1, &v20 - v17, &unk_2801CDAC0, &unk_2676CF3A0);
  (*(v8 + 16))(v12, a2, v2);
  v18 = sub_2676CB40C();
  (*(v8 + 8))(a2, v2);
  sub_2675ED6C0(a1, &unk_2801CDAC0, &unk_2676CF3A0);
  return v18;
}

uint64_t sub_2675ED524(uint64_t a1, uint64_t a2)
{
  v5 = sub_2676CB48C();
  v6 = OUTLINED_FUNCTION_8_4(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v2 + 48);
  v14 = *(v2 + 52);
  swift_allocObject();
  (*(v8 + 16))(v12, a2, v3);
  v15 = sub_2676CB41C();
  (*(v8 + 8))(a2, v3);
  return v15;
}

uint64_t sub_2675ED624()
{
  v0 = sub_2676CB43C();

  return MEMORY[0x2821FE8D8](v0, 16, 7);
}

uint64_t sub_2675ED65C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_14_2(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2675ED6C0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_14_2(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_5_4@<X0>(int *a1@<X8>)
{
  v2 = a1[1];
  v4 = a1 + *a1;

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_10_3()
{

  return __swift_getEnumTagSinglePayload(v1, 1, v0);
}

uint64_t sub_2675ED7F4()
{
  sub_2676C96AC();
  sub_2676C969C();
  sub_2676C9ECC();
  v0 = sub_2676CBB4C();
  __swift_destroy_boxed_opaque_existential_1(v2);

  return v0;
}

uint64_t sub_2675ED8D0(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  v3 = sub_2676C89DC();
  v2[8] = v3;
  v4 = *(v3 - 8);
  v2[9] = v4;
  v5 = *(v4 + 64) + 15;
  v2[10] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC198, &qword_2676CDEF8);
  v2[11] = v6;
  v7 = *(v6 - 8);
  v2[12] = v7;
  v8 = *(v7 + 64) + 15;
  v2[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2675ED9F8, 0, 0);
}

uint64_t sub_2675ED9F8()
{
  if (qword_2801CBAA0 != -1)
  {
    swift_once();
  }

  v1 = sub_2676CBE4C();
  v0[14] = __swift_project_value_buffer(v1, qword_2801CDC90);
  v2 = sub_2676CBE2C();
  v3 = sub_2676CC24C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2675D4000, v2, v3, "#ContactResolver.mailAddresseeEntities querying Mail app...", v4, 2u);
    MEMORY[0x26D5FEA80](v4, -1, -1);
  }

  v5 = v0[13];
  v7 = v0[9];
  v6 = v0[10];
  v8 = v0[8];

  sub_2676C8C8C();
  sub_2676C89CC();
  sub_2675EDF34();
  sub_2676C89AC();
  (*(v7 + 8))(v6, v8);
  v9 = *(MEMORY[0x277CBA038] + 4);
  v10 = swift_task_alloc();
  v0[15] = v10;
  *v10 = v0;
  v10[1] = sub_2675EDBE4;
  v11 = v0[13];
  v12 = v0[11];
  v14 = v0[6];
  v13 = v0[7];

  return MEMORY[0x28210BD88](v14, v13, v12);
}