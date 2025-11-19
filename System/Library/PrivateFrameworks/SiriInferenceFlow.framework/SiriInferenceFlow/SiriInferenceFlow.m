uint64_t sub_222D8C310(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_23_0();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047AF0, &unk_222DDC9E0);
  v5 = OUTLINED_FUNCTION_30_0(*(a3 + 28));

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

void sub_222D8C390()
{
  OUTLINED_FUNCTION_31_0();
  if (v3)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    v4 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047AF0, &unk_222DDC9E0);
    v5 = OUTLINED_FUNCTION_30_0(*(v4 + 28));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

uint64_t sub_222D8C40C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_23_0();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047AF0, &unk_222DDC9E0);
  v5 = OUTLINED_FUNCTION_30_0(*(a3 + 20));

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

void sub_222D8C48C()
{
  OUTLINED_FUNCTION_31_0();
  if (v3)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    v4 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047AF0, &unk_222DDC9E0);
    v5 = OUTLINED_FUNCTION_30_0(*(v4 + 20));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

uint64_t sub_222D8C900()
{
  sub_222DB1064(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168));

  return MEMORY[0x2821FE8E8](v0, 169, 7);
}

uint64_t sub_222D8C974()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_222D8C9AC()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_222D8C9F4()
{
  v1 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_0((v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_222D8CA3C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_222D8CA74()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 24));
  v1 = *(v0 + 72);

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_222D8CABC()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D047F60, &qword_222DDE000) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v5 = sub_222DDA700();
    OUTLINED_FUNCTION_4_6(v5);
    (*(v6 + 8))(v0 + v3);
  }

  v7 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v0 + v7 + 8);

  __swift_destroy_boxed_opaque_existential_0((v0 + v8));

  return MEMORY[0x2821FE8E8](v0, v8 + 40, v2 | 7);
}

uint64_t sub_222D8CBDC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 56);

  __swift_destroy_boxed_opaque_existential_0((v0 + 64));

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_222D8CC2C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 56);

  __swift_destroy_boxed_opaque_existential_0((v0 + 64));

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t sub_222D8CCA8()
{
  v1 = sub_222DDADB0();
  OUTLINED_FUNCTION_2(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 48) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;

  v9 = *(v0 + 40);

  (*(v3 + 8))(v0 + v5, v1);
  v10 = *(v0 + v7 + 8);

  return MEMORY[0x2821FE8E8](v0, v8 + 8, v4 | 7);
}

uint64_t sub_222D8CD98()
{
  OUTLINED_FUNCTION_32_2();
  v3 = sub_222DDADB0();
  OUTLINED_FUNCTION_2(v3);
  v5 = v4;
  v6 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v8 = *(v7 + 64);
  v9 = OUTLINED_FUNCTION_8_3();
  OUTLINED_FUNCTION_2(v9);
  v11 = v10;
  v12 = (v1 + *(v11 + 80) + 16) & ~*(v11 + 80);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_5_7();

  v15 = *(v0 + 40);

  (*(v5 + 8))(v0 + v6, v3);
  v16 = *(v0 + v1 + 8);

  (*(v11 + 8))(v0 + v12, v9);

  OUTLINED_FUNCTION_36_1();

  return MEMORY[0x2821FE8E8](v17, v18, v19);
}

uint64_t sub_222D8CED8()
{
  OUTLINED_FUNCTION_32_2();
  v3 = sub_222DDADB0();
  OUTLINED_FUNCTION_2(v3);
  v5 = v4;
  v6 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v8 = *(v7 + 64);
  v9 = OUTLINED_FUNCTION_8_3();
  OUTLINED_FUNCTION_2(v9);
  v11 = v10;
  v12 = (v1 + *(v11 + 80) + 16) & ~*(v11 + 80);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_5_7();
  v15 = *(v0 + 40);

  v16 = *(v0 + 48);

  (*(v5 + 8))(v0 + v6, v3);
  v17 = *(v0 + v1 + 8);

  (*(v11 + 8))(v0 + v12, v9);

  OUTLINED_FUNCTION_36_1();

  return MEMORY[0x2821FE8E8](v18, v19, v20);
}

uint64_t sub_222D8D050()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_222D8D088()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];
  swift_unknownObjectRelease();
  v4 = v0[9];

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_222D8D0D8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  OUTLINED_FUNCTION_10_6();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t sub_222D8D114()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  OUTLINED_FUNCTION_10_6();

  return MEMORY[0x2821FE8E8](v4, v5, v6);
}

uint64_t sub_222D8D158()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[6];

  v5 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_222D8D1EC()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_222D8D2A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_222DDADB0();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, a2, v4);
  if (EnumTagSinglePayload >= 4)
  {
    return EnumTagSinglePayload - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_222D8D2EC(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 3);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_222DDADB0();

  return __swift_storeEnumTagSinglePayload(a1, v5, a3, v6);
}

uint64_t sub_222D8D34C()
{
  v1 = sub_222DDADB0();
  OUTLINED_FUNCTION_2(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 40) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v0 + 32);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v7, v4 | 7);
}

uint64_t sub_222D8D404()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_222D8D444()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_222D8D47C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_222D8D4BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_222DDB3F0();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_222D8D544(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_222DDB3F0();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_222D8D5C4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_222D8D5FC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_222D8D658@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_222DCD2F8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_222D8D7F8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_222D8D838()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
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

uint64_t sub_222D8D964(uint64_t a1, int a2)
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

uint64_t sub_222D8D9A4(uint64_t result, int a2, int a3)
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

uint64_t sub_222D8D9FC()
{
  v0 = objc_allocWithZone(MEMORY[0x277CC1E70]);
  result = sub_222D8E170(0xD00000000000001BLL, 0x8000000222DE0920, 0);
  if (result)
  {

    return 1;
  }

  return result;
}

uint64_t sub_222D8DA7C()
{
  v0 = objc_allocWithZone(MEMORY[0x277CC1E70]);
  result = sub_222D8E170(0xD000000000000015, 0x8000000222DE08B0, 0);
  if (result)
  {

    return 1;
  }

  return result;
}

id sub_222D8DAFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0475C8, &qword_222DDC580);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v27 - v9;
  v11 = sub_222DDA190();
  v12 = OUTLINED_FUNCTION_2(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_0();
  v17 = [objc_allocWithZone(MEMORY[0x277D479F0]) init];
  sub_222D8E3B4(v17);
  if (v18)
  {
  }

  else
  {
    sub_222DDA180();
    v19 = sub_222DDA170();
    v28 = v17;
    v21 = v20;
    (*(v14 + 8))(v2, v11);
    v17 = v28;
    sub_222D8E490(v19, v21, v28, &selRef_setAceId_);
  }

  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  if (sub_222D8D9FC())
  {
    if (a2)
    {
      OUTLINED_FUNCTION_3(0xD000000000000012);
      sub_222DDA0F0();

      v22 = sub_222DDA100();
      v23 = 0;
      if (__swift_getEnumTagSinglePayload(v10, 1, v22) != 1)
      {
        v23 = v10;
        sub_222DDA0D0();
        OUTLINED_FUNCTION_1();
        (*(v24 + 8))(v10, v22);
      }

LABEL_15:
      [v17 setPunchOutUri_];

      return v17;
    }

    sub_222D8E490(0xD00000000000001BLL, 0x8000000222DE0920, v17, &selRef_setBundleId_);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v2, v2[3]);
    if (sub_222D8DA7C())
    {
      if (a2)
      {
        OUTLINED_FUNCTION_3(0xD00000000000001FLL);
      }

      sub_222DDA0F0();

      v25 = sub_222DDA100();
      v23 = 0;
      if (__swift_getEnumTagSinglePayload(v8, 1, v25) != 1)
      {
        v23 = sub_222DDA0D0();
        (*(*(v25 - 8) + 8))(v8, v25);
      }

      goto LABEL_15;
    }

    return 0;
  }

  return v17;
}

id sub_222D8DE88()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0475C8, &qword_222DDC580);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v20 - v3;
  v5 = sub_222DDA190();
  v6 = OUTLINED_FUNCTION_2(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_0();
  v11 = [objc_allocWithZone(MEMORY[0x277D479F0]) init];
  sub_222D8E3B4(v11);
  if (v12)
  {
  }

  else
  {
    sub_222DDA180();
    v13 = sub_222DDA170();
    v15 = v14;
    (*(v8 + 8))(v0, v5);
    sub_222D8E490(v13, v15, v11, &selRef_setAceId_);
  }

  sub_222DDA0F0();
  v16 = sub_222DDA100();
  v17 = 0;
  if (__swift_getEnumTagSinglePayload(v4, 1, v16) != 1)
  {
    v17 = v4;
    sub_222DDA0D0();
    OUTLINED_FUNCTION_1();
    (*(v18 + 8))(v4, v16);
  }

  [v11 setPunchOutUri_];

  return v11;
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

id sub_222D8E0D0()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D47B08]) init];
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  v2 = sub_222D8D9FC();
  v3 = (v2 & 1) == 0;
  if (v2)
  {
    v4 = 0xD00000000000001BLL;
  }

  else
  {
    v4 = 0x6C7070612E6D6F63;
  }

  if (v3)
  {
    v5 = 0xEE00697269732E65;
  }

  else
  {
    v5 = 0x8000000222DE0920;
  }

  sub_222D8E490(v4, v5, v1, &selRef_setApplicationBundleIdentifier_);
  return v1;
}

id sub_222D8E170(uint64_t a1, uint64_t a2, char a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = sub_222DDB4C0();

  v11[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:v11];

  if (v6)
  {
    v7 = v11[0];
  }

  else
  {
    v8 = v11[0];
    sub_222DDA0C0();

    swift_willThrow();
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t sub_222D8E25C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_222D8E768();
  *a1 = result;
  return result;
}

uint64_t sub_222D8E284(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_222DA811C();
}

uint64_t sub_222D8E2A8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_222DDB4C0();

  *a2 = v5;
  return result;
}

uint64_t sub_222D8E2F0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_222DA0444(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_222D8E31C(uint64_t a1)
{
  v2 = sub_222D8E7D8(&qword_27D047650);
  v3 = sub_222D8E7D8(&qword_27D047658);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_222D8E3B4(void *a1)
{
  v2 = [a1 aceId];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_222DDB500();

  return v3;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void sub_222D8E490(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = sub_222DDB4C0();

  [a3 *a4];
}

void type metadata accessor for INPersonHandleLabel()
{
  if (!qword_27D047630)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27D047630);
    }
  }
}

uint64_t sub_222D8E5F8()
{
  sub_222DDB500();
  sub_222DDBB60();
  sub_222DDB560();
  v0 = sub_222DDBB90();

  return v0;
}

uint64_t sub_222D8E670(uint64_t a1, id *a2)
{
  result = sub_222DDB4E0();
  *a2 = 0;
  return result;
}

uint64_t sub_222D8E6E8(uint64_t a1, id *a2)
{
  v3 = sub_222DDB4F0();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_222D8E768()
{
  sub_222DDB500();
  v0 = sub_222DDB4C0();

  return v0;
}

uint64_t sub_222D8E7A0()
{
  v0 = sub_222DDB500();
  v1 = MEMORY[0x223DCE310](v0);

  return v1;
}

uint64_t sub_222D8E7D8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for INPersonHandleLabel();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void OUTLINED_FUNCTION_3(uint64_t a1@<X8>)
{
  *(v2 - 96) = a1;
  *(v2 - 88) = v1;

  JUMPOUT(0x223DCE2E0);
}

uint64_t sub_222D8E87C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0479C8, &qword_222DDC758);
  OUTLINED_FUNCTION_8(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v4);
  v6 = &v22 - v5;
  v7 = sub_222DDA0B0();
  v8 = OUTLINED_FUNCTION_2(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_4();
  v15 = v14 - v13;
  v16 = sub_222DDA1D0();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v16);
  sub_222DCB268(v0, v6);
  v17 = objc_opt_self();
  v18 = sub_222DDA050();
  v19 = [v17 localizedStringFromPersonNameComponents:v18 style:2 options:0];

  v20 = sub_222DDB500();
  (*(v10 + 8))(v15, v7);
  return v20;
}

uint64_t sub_222D8E9FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0479D0, &unk_222DDC760);
  OUTLINED_FUNCTION_8(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v9);
  v11 = &v41 - v10;
  v12 = sub_222DDB200();
  v13 = OUTLINED_FUNCTION_2(v12);
  v42 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_4();
  v19 = v18 - v17;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0479C8, &qword_222DDC758);
  OUTLINED_FUNCTION_8(v20);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v23);
  v25 = &v41 - v24;
  v26 = sub_222DDA1D0();
  v27 = OUTLINED_FUNCTION_2(v26);
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_4();
  v34 = v33 - v32;
  sub_222D8F140(a1, v25);
  if (__swift_getEnumTagSinglePayload(v25, 1, v26) == 1)
  {
    v35 = &qword_27D0479C8;
    v36 = &qword_222DDC758;
    v37 = v25;
LABEL_5:
    sub_222D8F1B0(v37, v35, v36);
    sub_222DDA0A0();
    sub_222D8ED28(&selRef_pronunciationGivenName, &selRef_phoneticGivenName);
    sub_222DD9FE0();
    sub_222D8ED28(&selRef_pronunciationFamilyName, &selRef_phoneticFamilyName);
    sub_222DDA000();
    sub_222D8EE10();
    sub_222DDA020();
    v38 = sub_222DDA0B0();
    return __swift_storeEnumTagSinglePayload(a2, 0, 1, v38);
  }

  (*(v29 + 32))(v34, v25, v26);
  static PhonemeDataParser.parse(from:)(v3, v11);
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    (*(v29 + 8))(v34, v26);
    v35 = &qword_27D0479D0;
    v36 = &unk_222DDC760;
    v37 = v11;
    goto LABEL_5;
  }

  v40 = v42;
  (*(v42 + 32))(v19, v11, v12);
  sub_222DDB1E0();
  (*(v40 + 8))(v19, v12);
  return (*(v29 + 8))(v34, v26);
}

SEL *sub_222D8ED28(SEL *a1, SEL *a2)
{
  v5 = sub_222D8F210(v2, a1);
  v7 = sub_222DCB094(v5, v6);

  if (v7)
  {
    v8 = [v2 *a2];
    v9 = sub_222DDB500();
    v11 = v10;

    v12 = HIBYTE(v11) & 0xF;
    if ((v11 & 0x2000000000000000) == 0)
    {
      v12 = v9 & 0xFFFFFFFFFFFFLL;
    }

    if (v12)
    {
      v13 = [v2 *a2];
      sub_222DDB500();
      OUTLINED_FUNCTION_6();
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_222D8F210(v2, a1);
    OUTLINED_FUNCTION_6();
  }

  return a2;
}

id sub_222D8EE10()
{
  v1 = [v0 phoneticMiddleName];
  v2 = sub_222DDB500();
  v4 = v3;

  v5 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v5 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return 0;
  }

  v6 = [v0 phoneticMiddleName];
  sub_222DDB500();
  OUTLINED_FUNCTION_6();

  return v1;
}

uint64_t sub_222D8EEBC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0479C0, &qword_222DDE100);
  OUTLINED_FUNCTION_8(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v5);
  v6 = sub_222DDB040();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  sub_222DDB030();
  v9 = [v0 organizationName];
  sub_222DDB500();

  OUTLINED_FUNCTION_5();
  sub_222DDB240();
  OUTLINED_FUNCTION_0_0();
  sub_222DDAF60();

  OUTLINED_FUNCTION_3_0();
  v10 = [v0 nickname];
  sub_222DDB500();

  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  sub_222DDAFA0();

  OUTLINED_FUNCTION_3_0();
  v11 = [v1 givenName];
  sub_222DDB500();

  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  sub_222DDAFB0();

  OUTLINED_FUNCTION_3_0();
  v12 = [v1 middleName];
  sub_222DDB500();

  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  sub_222DDAFD0();

  OUTLINED_FUNCTION_3_0();
  v13 = [v1 familyName];
  sub_222DDB500();

  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0_0();
  sub_222DDAFC0();

  OUTLINED_FUNCTION_3_0();
  sub_222DDB000();

  v14 = sub_222DDB020();

  return v14;
}

uint64_t sub_222D8F140(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0479C8, &qword_222DDC758);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_222D8F1B0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_222D8F210(void *a1, SEL *a2)
{
  v3 = [a1 *a2];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  sub_222DDB500();
  OUTLINED_FUNCTION_6();

  return v2;
}

uint64_t OUTLINED_FUNCTION_1_0()
{

  return sub_222DDB210();
}

uint64_t OUTLINED_FUNCTION_3_0()
{

  return sub_222D8F1B0(v2, v0, v1);
}

uint64_t OUTLINED_FUNCTION_5()
{

  return sub_222DDB210();
}

uint64_t CNLabeledValue<>.buildMapsURL(contact:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v45 = a2;
  v5 = sub_222DD9F60();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20]();
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = objc_opt_self();
  v11 = [v3 value];
  v12 = [v10 singleLineStringFromPostalAddress:v11 addCountryName:0];

  if (!v12)
  {
    goto LABEL_8;
  }

  v13 = sub_222DDB500();
  v15 = v14;

  v46[0] = v13;
  v46[1] = v15;
  sub_222DD9F10();
  sub_222D8F710();
  v16 = MEMORY[0x277D837D0];
  v17 = sub_222DDB780();
  v19 = v18;
  (*(v6 + 8))(v9, v5);

  if (v19)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0479E0, &qword_222DDC788);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_222DDC770;
    *(v20 + 56) = v16;
    v21 = sub_222D8F764();
    *(v20 + 64) = v21;
    *(v20 + 32) = v17;
    *(v20 + 40) = v19;
    v22 = [a1 iOSLegacyIdentifier];
    v23 = MEMORY[0x277D849A8];
    v24 = MEMORY[0x277D84A20];
    *(v20 + 96) = MEMORY[0x277D849A8];
    *(v20 + 104) = v24;
    *(v20 + 72) = v22;
    v25 = [v3 iOSLegacyIdentifier];
    *(v20 + 136) = v23;
    *(v20 + 144) = v24;
    *(v20 + 112) = v25;
    v26 = [a1 identifier];
    v27 = sub_222DDB500();
    v29 = v28;

    *(v20 + 176) = v16;
    *(v20 + 184) = v21;
    *(v20 + 152) = v27;
    *(v20 + 160) = v29;
    v30 = [v3 identifier];
    v31 = sub_222DDB500();
    v33 = v32;

    *(v20 + 216) = v16;
    *(v20 + 224) = v21;
    *(v20 + 192) = v31;
    *(v20 + 200) = v33;
    v34 = sub_222DDB4D0();
    v36 = v35;

    if (qword_27D0475A8 != -1)
    {
      swift_once();
    }

    v37 = sub_222DDB3E0();
    __swift_project_value_buffer(v37, qword_27D04C910);

    v38 = sub_222DDB3C0();
    v39 = sub_222DDB6B0();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v46[0] = v41;
      *v40 = 136315138;
      *(v40 + 4) = sub_222D8F7F0(v34, v36, v46);
      _os_log_impl(&dword_222D8A000, v38, v39, "Building Maps punchout URL from string: %s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v41);
      MEMORY[0x223DCEF40](v41, -1, -1);
      MEMORY[0x223DCEF40](v40, -1, -1);
    }

    sub_222DDA0F0();
  }

  else
  {
LABEL_8:
    v43 = sub_222DDA100();
    return __swift_storeEnumTagSinglePayload(v45, 1, 1, v43);
  }
}

unint64_t sub_222D8F710()
{
  result = qword_27D0479D8;
  if (!qword_27D0479D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0479D8);
  }

  return result;
}

unint64_t sub_222D8F764()
{
  result = qword_27D0479E8;
  if (!qword_27D0479E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0479E8);
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_222D8F7F0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_222D8F8B4(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_222D8FDAC(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_222D8F8B4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_222D8F9B4(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_222DDB880();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_222D8F9B4(uint64_t a1, unint64_t a2)
{
  v4 = sub_222D8FA00(a1, a2);
  sub_222D8FB18(&unk_28362C2D0);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_222D8FA00(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_222DDB5C0())
  {
    result = sub_222D8FBFC(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_222DDB820();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_222DDB880();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_222D8FB18(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_222D8FC6C(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_222D8FBFC(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0479F0, &unk_222DDC790);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_222D8FC6C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0479F0, &unk_222DDC790);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_222D8FDAC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_222D8FE0C()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_222D8FE40();
}

uint64_t sub_222D8FE40()
{
  v1 = (v0 + qword_27D047A60);
  *v1 = 0;
  v1[1] = 0;
  v2 = (v0 + qword_27D047A68);
  *v2 = 0;
  v2[1] = 0;
  v3 = (v0 + qword_27D047A70);
  *v3 = 0;
  v3[1] = 0;
  *(v0 + qword_27D047A78) = 2;
  v4 = (v0 + qword_27D047A80);
  *v4 = 0;
  v4[1] = 0;
  v5 = (v0 + qword_27D047A88);
  *v5 = 0;
  v5[1] = 0;
  *(v0 + qword_27D047A90) = xmmword_222DDC7A0;
  v6 = (v0 + qword_27D047A98);
  *v6 = 0;
  v6[1] = 0;
  return sub_222DDB030();
}

uint64_t sub_222D8FF04(uint64_t a1, unint64_t a2)
{
  v3 = (v2 + qword_27D047A90);
  v4 = *(v2 + qword_27D047A90);
  v5 = *(v2 + qword_27D047A90 + 8);
  *v3 = a1;
  v3[1] = a2;
  sub_222D931B0(a1, a2);
  sub_222D93218(v4, v5);
}

uint64_t sub_222D8FF6C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = (v3 + *a3);
  v5 = v4[1];
  *v4 = a1;
  v4[1] = a2;
}

uint64_t sub_222D8FFBC()
{
  v0 = type metadata accessor for ContactDialogPerson(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();

  return sub_222D9089C(v3);
}

uint64_t sub_222D90000()
{
  OUTLINED_FUNCTION_10(qword_27D047A60);

  OUTLINED_FUNCTION_10(qword_27D047A68);

  OUTLINED_FUNCTION_10(qword_27D047A70);

  OUTLINED_FUNCTION_10(qword_27D047A80);

  OUTLINED_FUNCTION_10(qword_27D047A88);

  sub_222D93218(*(v0 + qword_27D047A90), *(v0 + qword_27D047A90 + 8));
  OUTLINED_FUNCTION_10(qword_27D047A98);
}

uint64_t sub_222D90094()
{
  v0 = sub_222DDB050();
  v1 = *(v0 + qword_27D047A60 + 8);

  OUTLINED_FUNCTION_29(qword_27D047A68);
  OUTLINED_FUNCTION_29(qword_27D047A70);
  OUTLINED_FUNCTION_29(qword_27D047A80);
  OUTLINED_FUNCTION_29(qword_27D047A88);
  sub_222D93218(*(v0 + qword_27D047A90), *(v0 + qword_27D047A90 + 8));
  OUTLINED_FUNCTION_29(qword_27D047A98);
  return v0;
}

uint64_t sub_222D90120()
{
  v0 = sub_222D90094();

  return MEMORY[0x2821FE8D8](v0, 136, 7);
}

void *sub_222D9016C()
{
  v1 = v0;
  v2 = sub_222DDB0D0();
  sub_222D936D8();
  v3 = sub_222DDB390();
  OUTLINED_FUNCTION_48(qword_27D047A30);
  if (v2)
  {
    OUTLINED_FUNCTION_24(v12);
    *&v292 = v13;
    *(&v292 + 1) = v2;
    OUTLINED_FUNCTION_32(v14, v15, v16, v17, v18, v19, v20, v21, v264, v276, v289, v290, v291, v292);

    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_33();
    sub_222D937A8(v22, v23, v24);
    v3 = v277;
  }

  else
  {
    OUTLINED_FUNCTION_13(v4, v5, v6, v7, v8, v9, v10, v11, v264, v276, v289, *(&v289 + 1), v290, v291, v292, v293);
    v25 = OUTLINED_FUNCTION_23();
    sub_222DCC9E4(v25, v26);
    if (v27)
    {
      OUTLINED_FUNCTION_34();
      OUTLINED_FUNCTION_4_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047AE8, &unk_222DDC9A0);
      v28 = OUTLINED_FUNCTION_9();
      v36 = OUTLINED_FUNCTION_8_0(v28, v29, v30, v31, v32, v33, v34, v35, v265, v277);
      OUTLINED_FUNCTION_20(v36, v37, v38, v39, v40, v41, v42, v43, v266, v278, v289);
      OUTLINED_FUNCTION_12();
    }

    else
    {
      OUTLINED_FUNCTION_21();
    }

    sub_222D93730(&v289);
  }

  OUTLINED_FUNCTION_48(qword_27D047A28);
  if (v2)
  {
    OUTLINED_FUNCTION_24(v52);
    *&v292 = v53;
    *(&v292 + 1) = v2;
    OUTLINED_FUNCTION_32(v54, v55, v56, v57, v58, v59, v60, v61, v265, v277, v289, v290, v291, v292);

    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_33();
    sub_222D937A8(v62, v63, v64);
    v3 = v279;
  }

  else
  {
    OUTLINED_FUNCTION_13(v44, v45, v46, v47, v48, v49, v50, v51, v265, v277, v289, *(&v289 + 1), v290, v291, v292, v293);
    v65 = OUTLINED_FUNCTION_23();
    sub_222DCC9E4(v65, v66);
    if (v67)
    {
      OUTLINED_FUNCTION_34();
      OUTLINED_FUNCTION_4_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047AE8, &unk_222DDC9A0);
      v68 = OUTLINED_FUNCTION_9();
      v76 = OUTLINED_FUNCTION_8_0(v68, v69, v70, v71, v72, v73, v74, v75, v267, v279);
      OUTLINED_FUNCTION_20(v76, v77, v78, v79, v80, v81, v82, v83, v268, v280, v289);
      OUTLINED_FUNCTION_12();
    }

    else
    {
      OUTLINED_FUNCTION_21();
    }

    sub_222D93730(&v289);
  }

  OUTLINED_FUNCTION_48(qword_27D047A20);
  if (v2)
  {
    OUTLINED_FUNCTION_24(v92);
    *&v292 = v93;
    *(&v292 + 1) = v2;
    OUTLINED_FUNCTION_32(v94, v95, v96, v97, v98, v99, v100, v101, v267, v279, v289, v290, v291, v292);

    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_33();
    v105 = sub_222D937A8(v102, v103, v104);
    v3 = v281;
  }

  else
  {
    OUTLINED_FUNCTION_13(v84, v85, v86, v87, v88, v89, v90, v91, v267, v279, v289, *(&v289 + 1), v290, v291, v292, v293);
    v113 = OUTLINED_FUNCTION_23();
    sub_222DCC9E4(v113, v114);
    if (v115)
    {
      OUTLINED_FUNCTION_34();
      OUTLINED_FUNCTION_4_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047AE8, &unk_222DDC9A0);
      v116 = OUTLINED_FUNCTION_9();
      v124 = OUTLINED_FUNCTION_8_0(v116, v117, v118, v119, v120, v121, v122, v123, v269, v281);
      OUTLINED_FUNCTION_20(v124, v125, v126, v127, v128, v129, v130, v131, v270, v282, v289);
      OUTLINED_FUNCTION_12();
    }

    else
    {
      OUTLINED_FUNCTION_21();
    }

    v105 = sub_222D93730(&v289);
  }

  v132 = *(v1 + qword_27D047A18);
  if (v132 == 2)
  {
    sub_222DCC9E4(0xD000000000000015, 0x8000000222DE0210);
    if (v133)
    {
      OUTLINED_FUNCTION_34();
      *&v289 = v3;
      v2 = v3[3];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047AE8, &unk_222DDC9A0);
      sub_222DDB8E0();
      v3 = v289;
      v134 = *(*(v289 + 48) + 16 * "electAction" + 8);

      sub_222D93798((v3[7] + 32 * "electAction"), &v292);
      OUTLINED_FUNCTION_12();
    }

    else
    {
      v292 = 0u;
      v293 = 0u;
    }

    sub_222D93730(&v292);
  }

  else
  {
    *(&v293 + 1) = MEMORY[0x277D839B0];
    LOBYTE(v292) = v132 & 1;
    OUTLINED_FUNCTION_32(v105, v106, v107, v108, v109, v110, v111, v112, v269, v281, v289, v290, v291, v292);
    swift_isUniquelyReferenced_nonNull_native();
    v281 = v3;
    sub_222D937A8(&v289, 0xD000000000000015, 0x8000000222DE0210);
  }

  OUTLINED_FUNCTION_48(qword_27D047A10);
  if (v2)
  {
    OUTLINED_FUNCTION_24(v143);
    *&v292 = v144;
    *(&v292 + 1) = v2;
    OUTLINED_FUNCTION_32(v145, v146, v147, v148, v149, v150, v151, v152, v269, v281, v289, v290, v291, v292);

    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_33();
    v156 = sub_222D937A8(v153, v154, v155);
    v3 = v283;
  }

  else
  {
    OUTLINED_FUNCTION_13(v135, v136, v137, v138, v139, v140, v141, v142, v269, v281, v289, *(&v289 + 1), v290, v291, v292, v293);
    v164 = OUTLINED_FUNCTION_23();
    sub_222DCC9E4(v164, v165);
    if (v166)
    {
      OUTLINED_FUNCTION_34();
      OUTLINED_FUNCTION_4_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047AE8, &unk_222DDC9A0);
      v167 = OUTLINED_FUNCTION_9();
      v175 = OUTLINED_FUNCTION_8_0(v167, v168, v169, v170, v171, v172, v173, v174, v271, v283);
      OUTLINED_FUNCTION_20(v175, v176, v177, v178, v179, v180, v181, v182, v272, v284, v289);
      OUTLINED_FUNCTION_12();
    }

    else
    {
      OUTLINED_FUNCTION_21();
    }

    v156 = sub_222D93730(&v289);
  }

  v183 = *(v1 + qword_27D047A08 + 8);
  if (v183)
  {
    OUTLINED_FUNCTION_24((v1 + qword_27D047A08));
    *&v292 = v184;
    *(&v292 + 1) = v183;
    OUTLINED_FUNCTION_32(v185, v186, v187, v188, v189, v190, v191, v192, v271, v283, v289, v290, v291, v292);

    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_1_1();
    v194 = sub_222D937A8(v193, 0x49746361746E6F63, 0xE900000000000044);
    v3 = v285;
  }

  else
  {
    OUTLINED_FUNCTION_13(v156, v157, v158, v159, v160, v161, v162, v163, v271, v283, v289, *(&v289 + 1), v290, v291, v292, v293);
    sub_222DCC9E4(0x49746361746E6F63, 0xE900000000000044);
    if (v202)
    {
      OUTLINED_FUNCTION_34();
      OUTLINED_FUNCTION_4_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047AE8, &unk_222DDC9A0);
      v203 = OUTLINED_FUNCTION_9();
      v211 = OUTLINED_FUNCTION_8_0(v203, v204, v205, v206, v207, v208, v209, v210, v273, v285);
      OUTLINED_FUNCTION_20(v211, v212, v213, v214, v215, v216, v217, v218, v274, v286, v289);
      OUTLINED_FUNCTION_12();
    }

    else
    {
      OUTLINED_FUNCTION_21();
    }

    v194 = sub_222D93730(&v289);
  }

  v220 = *(v1 + qword_27D047A00);
  v219 = *(v1 + qword_27D047A00 + 8);
  if (v219 >> 60 == 15)
  {
    v292 = 0u;
    v293 = 0u;
    sub_222D931B0(v220, v219);
    sub_222D93730(&v292);
    sub_222DCC9E4(0x7461446567616D69, 0xE900000000000061);
    if (v221)
    {
      OUTLINED_FUNCTION_34();
      OUTLINED_FUNCTION_4_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047AE8, &unk_222DDC9A0);
      v222 = OUTLINED_FUNCTION_9();
      v230 = OUTLINED_FUNCTION_8_0(v222, v223, v224, v225, v226, v227, v228, v229, v273, v285);
      OUTLINED_FUNCTION_20(v230, v231, v232, v233, v234, v235, v236, v237, v275, v287, v289);
      OUTLINED_FUNCTION_12();
    }

    else
    {
      OUTLINED_FUNCTION_21();
    }

    v238 = sub_222D93730(&v289);
  }

  else
  {
    *(&v293 + 1) = MEMORY[0x277CC9318];
    *&v292 = v220;
    *(&v292 + 1) = v219;
    OUTLINED_FUNCTION_32(v194, v195, v196, v197, v198, v199, v200, v201, v273, v285, v289, v290, v291, v292);
    sub_222D931B0(v220, v219);
    swift_isUniquelyReferenced_nonNull_native();
    v285 = v3;
    v238 = sub_222D937A8(&v289, 0x7461446567616D69, 0xE900000000000061);
  }

  v246 = (v1 + qword_27D0479F8);
  v247 = *(v1 + qword_27D0479F8 + 8);
  if (v247)
  {
    OUTLINED_FUNCTION_24(v246);
    *&v292 = v248;
    *(&v292 + 1) = v247;
    OUTLINED_FUNCTION_32(v249, v250, v251, v252, v253, v254, v255, v256, v273, v285, v289, v290, v291, v292);

    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_1_1();
    sub_222D937A8(v257, 0x7369736168706D65, 0xEA00000000004449);
    return v288;
  }

  else
  {
    OUTLINED_FUNCTION_13(v238, v239, v240, v241, v242, v243, v244, v245, v273, v285, v289, *(&v289 + 1), v290, v291, v292, v293);
    v258 = sub_222DCC9E4(0x7369736168706D65, 0xEA00000000004449);
    if (v259)
    {
      v260 = v258;
      swift_isUniquelyReferenced_nonNull_native();
      v261 = v3[3];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047AE8, &unk_222DDC9A0);
      sub_222DDB8E0();
      v262 = *(v3[6] + 16 * v260 + 8);

      sub_222D93798((v3[7] + 32 * v260), &v289);
      sub_222DDB8F0();
    }

    else
    {
      OUTLINED_FUNCTION_21();
    }

    sub_222D93730(&v289);
  }

  return v3;
}

uint64_t sub_222D9089C(uint64_t a1)
{
  v3 = *(a1 + qword_27D047A60 + 8);
  v4 = (v1 + qword_27D047A30);
  *v4 = *(a1 + qword_27D047A60);
  v4[1] = v3;
  v5 = *(a1 + qword_27D047A68 + 8);
  v6 = (v1 + qword_27D047A28);
  *v6 = *(a1 + qword_27D047A68);
  v6[1] = v5;
  v7 = *(a1 + qword_27D047A70 + 8);
  v8 = (v1 + qword_27D047A20);
  *v8 = *(a1 + qword_27D047A70);
  v8[1] = v7;
  *(v1 + qword_27D047A18) = *(a1 + qword_27D047A78);
  v9 = *(a1 + qword_27D047A80 + 8);
  v10 = (v1 + qword_27D047A10);
  *v10 = *(a1 + qword_27D047A80);
  v10[1] = v9;
  v12 = *(a1 + qword_27D047A88);
  v11 = *(a1 + qword_27D047A88 + 8);
  v13 = (v1 + qword_27D047A08);
  *v13 = v12;
  v13[1] = v11;
  v14 = *(a1 + qword_27D047A90);
  v15 = *(a1 + qword_27D047A90 + 8);
  v16 = (v1 + qword_27D047A00);
  *v16 = v14;
  v16[1] = v15;
  v17 = *(a1 + qword_27D047A98 + 8);
  v18 = (v1 + qword_27D0479F8);
  *v18 = *(a1 + qword_27D047A98);
  v18[1] = v17;

  sub_222D931B0(v14, v15);

  return MEMORY[0x2821B7AE0](a1);
}

uint64_t sub_222D90A20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = a1 == OUTLINED_FUNCTION_37() && a2 == v7;
  if (v8 || (OUTLINED_FUNCTION_11() & 1) != 0)
  {
    v9 = qword_27D047A30;
    goto LABEL_7;
  }

  v14 = a1 == OUTLINED_FUNCTION_39() && a2 == v13;
  if (v14 || (OUTLINED_FUNCTION_11() & 1) != 0)
  {
    v9 = qword_27D047A28;
    goto LABEL_7;
  }

  v16 = a1 == OUTLINED_FUNCTION_36() && a2 == v15;
  if (v16 || (result = OUTLINED_FUNCTION_11(), (result & 1) != 0))
  {
    v9 = qword_27D047A20;
    goto LABEL_7;
  }

  v17 = a1 == 0xD000000000000015 && 0x8000000222DE0210 == a2;
  if (v17 || (result = OUTLINED_FUNCTION_11(), (result & 1) != 0))
  {
    v18 = *(v3 + qword_27D047A18);
    if (v18 != 2)
    {
      *(a3 + 24) = MEMORY[0x277D839B0];
      *a3 = v18 & 1;
      return result;
    }

    goto LABEL_29;
  }

  v20 = a1 == OUTLINED_FUNCTION_35() && a2 == v19;
  if (v20 || (OUTLINED_FUNCTION_11() & 1) != 0)
  {
    v9 = qword_27D047A10;
    goto LABEL_7;
  }

  v21 = a1 == 0x49746361746E6F63 && a2 == 0xE900000000000044;
  if (v21 || (OUTLINED_FUNCTION_11() & 1) != 0)
  {
    v9 = qword_27D047A08;
    goto LABEL_7;
  }

  result = 0x7461446567616D69;
  v22 = a1 == 0x7461446567616D69 && a2 == 0xE900000000000061;
  if (v22 || (result = OUTLINED_FUNCTION_11(), (result & 1) != 0))
  {
    v23 = *(v3 + qword_27D047A00 + 8);
    if (v23 >> 60 == 15)
    {
      goto LABEL_29;
    }

    v24 = *(v3 + qword_27D047A00);
    *(a3 + 24) = MEMORY[0x277CC9318];
    *a3 = v24;
    *(a3 + 8) = v23;

    return sub_222D93104(v24, v23);
  }

  else
  {
    v25 = a1 == 0x7369736168706D65 && a2 == 0xEA00000000004449;
    if (v25 || (OUTLINED_FUNCTION_11() & 1) != 0)
    {
      v9 = qword_27D0479F8;
LABEL_7:
      result = OUTLINED_FUNCTION_10(v9);
      if (result)
      {
        v12 = *v11;
        *(a3 + 24) = MEMORY[0x277D837D0];
        *a3 = v12;
        *(a3 + 8) = result;
      }

LABEL_29:
      *a3 = 0u;
      *(a3 + 16) = 0u;
      return result;
    }

    sub_222DDB0D0();
    sub_222DDB0E0();
    v26 = OUTLINED_FUNCTION_23();

    return v27(v26);
  }
}

uint64_t sub_222D90CDC()
{
  v0 = sub_222DDB960();

  if (v0 >= 8)
  {
    return 8;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_222D90D2C()
{
  result = OUTLINED_FUNCTION_37();
  switch(v1)
  {
    case 1:
      result = OUTLINED_FUNCTION_39();
      break;
    case 2:
      result = OUTLINED_FUNCTION_36();
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
      result = OUTLINED_FUNCTION_35();
      break;
    case 5:
      result = 0x49746361746E6F63;
      break;
    case 6:
      result = 0x7461446567616D69;
      break;
    case 7:
      result = 0x7369736168706D65;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_222D90E30()
{
  v0 = 0xEC0000006C6C6143;
  OUTLINED_FUNCTION_19();
  v4 = v3;
  v5 = v2;
  v6 = 0xEC0000006C6C6143;
  switch(v4)
  {
    case 1:
      break;
    case 2:
      v5 = 0x7373654D646E6573;
      v6 = 0xEB00000000656761;
      break;
    case 3:
      v5 = OUTLINED_FUNCTION_18();
      v6 = 0xEE00657469766E49;
      break;
    case 4:
      v5 = 0x7373654D64616572;
      v6 = 0xEC00000073656761;
      break;
    case 5:
      v5 = OUTLINED_FUNCTION_50();
      break;
    default:
      v5 = 0xD00000000000001CLL;
      v6 = 0x8000000222DE06B0;
      break;
  }

  switch(v1)
  {
    case 1:
      break;
    case 2:
      v2 = 0x7373654D646E6573;
      v0 = 0xEB00000000656761;
      break;
    case 3:
      OUTLINED_FUNCTION_16();
      OUTLINED_FUNCTION_46();
      break;
    case 4:
      v2 = 0x7373654D64616572;
      v0 = 0xEC00000073656761;
      break;
    case 5:
      OUTLINED_FUNCTION_44();
      break;
    default:
      OUTLINED_FUNCTION_45();
      break;
  }

  if (v5 == v2 && v6 == v0)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_27();
  }

  return v8 & 1;
}

uint64_t sub_222D90FBC(unsigned __int8 a1, char a2)
{
  v2 = 0xE900000000000064;
  v3 = 0x49746361746E6F63;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0x6E6F74747562;
    }

    else
    {
      v5 = 0x7865646E69;
    }

    if (v4 == 1)
    {
      v6 = 0xE600000000000000;
    }

    else
    {
      v6 = 0xE500000000000000;
    }
  }

  else
  {
    v5 = 0x49746361746E6F63;
    v6 = 0xE900000000000064;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0x6E6F74747562;
    }

    else
    {
      v3 = 0x7865646E69;
    }

    if (a2 == 1)
    {
      v2 = 0xE600000000000000;
    }

    else
    {
      v2 = 0xE500000000000000;
    }
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_27();
  }

  return v8 & 1;
}

uint64_t sub_222D910A0(char a1, char a2)
{
  v2 = 0xD000000000000025;
  v3 = "imageData";
  v5 = 0xD000000000000025;
  v6 = "imageData";
  switch(a1)
  {
    case 1:
      v6 = "rificationContactName";
      v5 = 0xD00000000000002ALL;
      break;
    case 2:
      v6 = "DisambiguationContactNames";
      goto LABEL_8;
    case 3:
      v6 = "sambiguationContactLabels";
      v5 = 0xD00000000000002ELL;
      break;
    case 4:
      v6 = "sambiguationAlternativeHandles";
      v5 = 0xD000000000000027;
      break;
    case 5:
      v6 = "sambiguationMixedLabels";
      v5 = 0xD000000000000031;
      break;
    case 6:
      v6 = "AlternativeHandle";
      v5 = 0xD000000000000036;
      break;
    case 7:
      v6 = "ltipleHandlesSameLabel";
LABEL_8:
      v5 = 0xD000000000000029;
      break;
    case 8:
      v6 = "DisambiguationMixedLabels";
      v5 = 0xD000000000000024;
      break;
    case 9:
      v6 = "dClarificationTarget";
      v5 = 0xD000000000000034;
      break;
    case 10:
      v6 = "xedLabelsNoWindowing";
      v5 = 0xD000000000000041;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = "rificationContactName";
      v2 = 0xD00000000000002ALL;
      break;
    case 2:
      v3 = "DisambiguationContactNames";
      goto LABEL_20;
    case 3:
      v3 = "sambiguationContactLabels";
      v2 = 0xD00000000000002ELL;
      break;
    case 4:
      v3 = "sambiguationAlternativeHandles";
      v2 = 0xD000000000000027;
      break;
    case 5:
      v3 = "sambiguationMixedLabels";
      v2 = 0xD000000000000031;
      break;
    case 6:
      v3 = "AlternativeHandle";
      v2 = 0xD000000000000036;
      break;
    case 7:
      v3 = "ltipleHandlesSameLabel";
LABEL_20:
      v2 = 0xD000000000000029;
      break;
    case 8:
      v3 = "DisambiguationMixedLabels";
      v2 = 0xD000000000000024;
      break;
    case 9:
      v3 = "dClarificationTarget";
      v2 = 0xD000000000000034;
      break;
    case 10:
      v3 = "xedLabelsNoWindowing";
      v2 = 0xD000000000000041;
      break;
    default:
      break;
  }

  if (v5 == v2 && (v6 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_28();
  }

  return v8 & 1;
}

uint64_t sub_222D912A0(char a1, char a2)
{
  v3 = 0xD000000000000031;
  v4 = "eLabelNoWindowing";
  v5 = "eLabelNoWindowing";
  switch(a1)
  {
    case 1:
      v5 = "ntactNames_Dialog";
      v3 = 0xD000000000000030;
      break;
    case 2:
      v5 = "actLabels_Dialog";
      v3 = 0xD00000000000002ELL;
      break;
    case 3:
      v5 = "sambiguationMixedLabels_Dialog";
      v3 = 0xD000000000000048;
      break;
    case 4:
      v5 = "eLabelNoWindowing_Dialog";
      v3 = 0xD00000000000003BLL;
      break;
    case 5:
      v5 = "xedLabelsNoWindowing_Dialog";
      v3 = 0xD00000000000002CLL;
      break;
    case 6:
      v5 = "rificationContactName_Dialog";
      v3 = 0xD00000000000001CLL;
      break;
    case 7:
      v5 = "contact#DisambiguationLabels";
      v3 = 0xD00000000000001BLL;
      break;
    case 8:
      v5 = "ContactLabels#PrimaryButton";
      v3 = 0xD00000000000001DLL;
      break;
    case 9:
      v5 = "ContactLabels#SecondaryButton";
      v3 = 0xD00000000000001ALL;
      break;
    default:
      break;
  }

  v6 = v5 | 0x8000000000000000;
  v7 = 0xD000000000000031;
  switch(a2)
  {
    case 1:
      v4 = "ntactNames_Dialog";
      v7 = 0xD000000000000030;
      break;
    case 2:
      v4 = "actLabels_Dialog";
      v7 = 0xD00000000000002ELL;
      break;
    case 3:
      v4 = "sambiguationMixedLabels_Dialog";
      v7 = 0xD000000000000048;
      break;
    case 4:
      v4 = "eLabelNoWindowing_Dialog";
      v7 = 0xD00000000000003BLL;
      break;
    case 5:
      v4 = "xedLabelsNoWindowing_Dialog";
      v7 = 0xD00000000000002CLL;
      break;
    case 6:
      v4 = "rificationContactName_Dialog";
      v7 = 0xD00000000000001CLL;
      break;
    case 7:
      v4 = "contact#DisambiguationLabels";
      v7 = 0xD00000000000001BLL;
      break;
    case 8:
      v4 = "ContactLabels#PrimaryButton";
      v7 = 0xD00000000000001DLL;
      break;
    case 9:
      v4 = "ContactLabels#SecondaryButton";
      v7 = 0xD00000000000001ALL;
      break;
    default:
      break;
  }

  if (v3 == v7 && v6 == (v4 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_28();
  }

  return v9 & 1;
}

uint64_t sub_222D91488()
{
  OUTLINED_FUNCTION_49();
  v2 = 0x6361466F54646461;
  v4 = v3;
  v5 = 0x6361466F54646461;
  v6 = v0;
  switch(v4)
  {
    case 1:
      break;
    case 2:
      v6 = 0xE800000000000000;
      v5 = OUTLINED_FUNCTION_47();
      break;
    case 3:
      v6 = 0xE700000000000000;
      v5 = OUTLINED_FUNCTION_31() & 0xFFFFFFFFFFFFLL | 0x65000000000000;
      break;
    case 4:
      v6 = 0xE800000000000000;
      v5 = OUTLINED_FUNCTION_18();
      break;
    case 5:
      v5 = 0x6E6F697461636F6CLL;
      v6 = 0xEE00686372616553;
      break;
    case 6:
      v5 = OUTLINED_FUNCTION_50();
      break;
    default:
      v5 = 0xD000000000000018;
      v6 = 0x8000000222DE0840;
      break;
  }

  switch(v1)
  {
    case 1:
      break;
    case 2:
      v0 = 0xE800000000000000;
      OUTLINED_FUNCTION_19();
      break;
    case 3:
      v0 = 0xE700000000000000;
      OUTLINED_FUNCTION_14();
      v2 = v7 & 0xFFFFFFFFFFFFLL | 0x65000000000000;
      break;
    case 4:
      v0 = 0xE800000000000000;
      OUTLINED_FUNCTION_16();
      break;
    case 5:
      OUTLINED_FUNCTION_42();
      break;
    case 6:
      OUTLINED_FUNCTION_44();
      break;
    default:
      OUTLINED_FUNCTION_45();
      break;
  }

  if (v5 == v2 && v6 == v0)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_27();
  }

  return v9 & 1;
}

uint64_t sub_222D91600(unsigned __int8 a1, char a2)
{
  v2 = 0xEE00343665736142;
  v3 = 0x6174614477656976;
  v4 = a1;
  v5 = 0x6174614477656976;
  v6 = 0xEE00343665736142;
  switch(v4)
  {
    case 1:
      v5 = 0x63417463656C6573;
      v6 = 0xEC0000006E6F6974;
      break;
    case 2:
      v5 = 0x636E657265666E69;
      v7 = 0x6372756F5365;
      goto LABEL_5;
    case 3:
      v5 = 0xD000000000000015;
      v6 = 0x8000000222DE0210;
      break;
    case 4:
      v5 = 0x614C656C646E6168;
      v7 = 0x7079546C6562;
LABEL_5:
      v6 = v7 & 0xFFFFFFFFFFFFLL | 0xEF65000000000000;
      break;
    case 5:
      v5 = 0x49746361746E6F63;
      v6 = 0xE900000000000044;
      break;
    case 6:
      v5 = 0x7461446567616D69;
      v6 = 0xE900000000000061;
      break;
    case 7:
      v5 = 0x7369736168706D65;
      v6 = 0xEA00000000004449;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = 0x63417463656C6573;
      v2 = 0xEC0000006E6F6974;
      break;
    case 2:
      v3 = 0x636E657265666E69;
      v8 = 0x6372756F5365;
      goto LABEL_14;
    case 3:
      v3 = 0xD000000000000015;
      v2 = 0x8000000222DE0210;
      break;
    case 4:
      v3 = 0x614C656C646E6168;
      v8 = 0x7079546C6562;
LABEL_14:
      v2 = v8 & 0xFFFFFFFFFFFFLL | 0xEF65000000000000;
      break;
    case 5:
      v3 = 0x49746361746E6F63;
      v2 = 0xE900000000000044;
      break;
    case 6:
      v3 = 0x7461446567616D69;
      v2 = 0xE900000000000061;
      break;
    case 7:
      v3 = 0x7369736168706D65;
      v2 = 0xEA00000000004449;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_222DDBAC0();
  }

  return v10 & 1;
}

uint64_t sub_222D91870(char a1, char a2)
{
  v3 = sub_222D967A4(a1);
  v5 = v4;
  if (v3 == sub_222D967A4(a2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_28();
  }

  return v8 & 1;
}

uint64_t sub_222D918E8()
{
  OUTLINED_FUNCTION_14();
  v2 = v1 & 0xFFFFFFFFFFFFLL | 0x7365000000000000;
  v3 = 0xE800000000000000;
  v5 = v4;
  v6 = v2;
  switch(v5)
  {
    case 1:
      v6 = OUTLINED_FUNCTION_47();
      break;
    case 2:
      v3 = 0xE500000000000000;
      v6 = 0x656E6F6870;
      break;
    case 3:
      v6 = OUTLINED_FUNCTION_18();
      break;
    case 4:
      OUTLINED_FUNCTION_41();
      break;
    case 5:
      v3 = 0xE700000000000000;
      v6 = 0x746C7561666564;
      break;
    default:
      break;
  }

  v7 = 0xE800000000000000;
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_19();
      break;
    case 2:
      v7 = 0xE500000000000000;
      v2 = 0x656E6F6870;
      break;
    case 3:
      OUTLINED_FUNCTION_16();
      break;
    case 4:
      v2 = 0x7265646E696D6572;
      v7 = 0xE900000000000073;
      break;
    case 5:
      v7 = 0xE700000000000000;
      v2 = 0x746C7561666564;
      break;
    default:
      break;
  }

  if (v6 == v2 && v3 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_28();
  }

  return v9 & 1;
}

uint64_t sub_222D91A3C(unsigned __int8 a1, char a2)
{
  v2 = 0xEB0000000079726FLL;
  v3 = 0x747369486C6C6163;
  v4 = a1;
  v5 = 0x747369486C6C6163;
  v6 = 0xEB0000000079726FLL;
  switch(v4)
  {
    case 1:
      v5 = OUTLINED_FUNCTION_31() & 0xFFFFFFFFFFFFLL | 0x7365000000000000;
      v6 = 0xEF79726F74736948;
      break;
    case 2:
      v6 = 0xE400000000000000;
      v5 = 1818845549;
      break;
    case 3:
      v6 = 0xE800000000000000;
      v5 = OUTLINED_FUNCTION_31() & 0xFFFFFFFFFFFFLL | 0x7365000000000000;
      break;
    case 4:
      v5 = 0x707041726568746FLL;
      v6 = 0xE900000000000073;
      break;
    case 5:
      v6 = 0xE400000000000000;
      v5 = 1701736302;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_52();
      break;
    case 2:
      v2 = 0xE400000000000000;
      v3 = 1818845549;
      break;
    case 3:
      v2 = 0xE800000000000000;
      OUTLINED_FUNCTION_14();
      v3 = v7 & 0xFFFFFFFFFFFFLL | 0x7365000000000000;
      break;
    case 4:
      OUTLINED_FUNCTION_41();
      break;
    case 5:
      v2 = 0xE400000000000000;
      v3 = 1701736302;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_27();
  }

  return v9 & 1;
}

uint64_t sub_222D91BBC()
{
  sub_222DDBB60();
  sub_222D90D2C();
  sub_222DDB560();

  return sub_222DDBB90();
}

uint64_t sub_222D91C68(char a1)
{
  sub_222DDBB60();
  sub_222D967A4(a1);
  OUTLINED_FUNCTION_38();

  return sub_222DDBB90();
}

uint64_t sub_222D91D0C(uint64_t a1, void (*a2)(_BYTE *, uint64_t))
{
  sub_222DDBB60();
  a2(v5, a1);
  return sub_222DDBB90();
}

uint64_t sub_222D91D64()
{
  OUTLINED_FUNCTION_17();
  switch(v0)
  {
    case 1:
    case 2:
    case 4:
      break;
    case 3:
      OUTLINED_FUNCTION_46();
      OUTLINED_FUNCTION_15();
      break;
    case 5:
      OUTLINED_FUNCTION_43();
      break;
    default:
      OUTLINED_FUNCTION_45();
      break;
  }

  sub_222DDB560();
}

uint64_t sub_222D91E34(uint64_t a1, char a2)
{
  if (!a2)
  {
    OUTLINED_FUNCTION_25();
  }

  sub_222DDB560();
}

uint64_t sub_222D91EA8()
{
  sub_222DDB560();
}

uint64_t sub_222D91FE0()
{
  sub_222DDB560();
}

uint64_t sub_222D9210C()
{
  OUTLINED_FUNCTION_49();
  switch(v0)
  {
    case 1:
      break;
    case 2:
      OUTLINED_FUNCTION_17();
      break;
    case 3:
      OUTLINED_FUNCTION_30();
      break;
    case 4:
      OUTLINED_FUNCTION_15();
      break;
    case 5:
      OUTLINED_FUNCTION_42();
      break;
    case 6:
      OUTLINED_FUNCTION_43();
      break;
    default:
      OUTLINED_FUNCTION_45();
      break;
  }

  sub_222DDB560();
}

uint64_t sub_222D921DC()
{
  sub_222DDB560();
}

uint64_t sub_222D92334(uint64_t a1, char a2)
{
  sub_222D967A4(a2);
  sub_222DDB560();
}

uint64_t sub_222D92388()
{
  OUTLINED_FUNCTION_30();
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_17();
      break;
    case 3:
      OUTLINED_FUNCTION_15();
      break;
    case 4:
      OUTLINED_FUNCTION_41();
      break;
    default:
      break;
  }

  sub_222DDB560();
}

uint64_t sub_222D92444(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
      OUTLINED_FUNCTION_52();
      goto LABEL_4;
    case 3:
LABEL_4:
      OUTLINED_FUNCTION_30();
      break;
    case 4:
      OUTLINED_FUNCTION_41();
      break;
    default:
      break;
  }

  sub_222DDB560();
}

uint64_t sub_222D92544(uint64_t a1, char a2)
{
  sub_222DDBB60();
  sub_222D967A4(a2);
  OUTLINED_FUNCTION_38();

  return sub_222DDBB90();
}

uint64_t sub_222D92590()
{
  sub_222DDBB60();
  sub_222D90D2C();
  sub_222DDB560();

  return sub_222DDBB90();
}

uint64_t sub_222D92638(uint64_t a1, char a2)
{
  sub_222DDBB60();
  if (!a2)
  {
    OUTLINED_FUNCTION_25();
  }

  sub_222DDB560();

  return sub_222DDBB90();
}

uint64_t sub_222D926D8(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t))
{
  sub_222DDBB60();
  a3(v6, a2);
  return sub_222DDBB90();
}

uint64_t sub_222D92724@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_222D90CDC();
  *a2 = result;
  return result;
}

uint64_t sub_222D92754@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_222D90D2C();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_222D9279C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_222D90D28();
  *a1 = result;
  return result;
}

uint64_t sub_222D927DC(uint64_t a1)
{
  v2 = sub_222D9315C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222D92818(uint64_t a1)
{
  v2 = sub_222D9315C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_222D92854(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  return sub_222D928A0(a1);
}

uint64_t sub_222D928A0(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047AC8, &unk_222DDC990);
  v4 = v3;
  v5 = OUTLINED_FUNCTION_2(v3);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5);
  v9 = &v29 - v8;
  v10 = a1[4];
  v11 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222D9315C();
  sub_222DDBBB0();
  if (v1)
  {
    OUTLINED_FUNCTION_7_0();
    __swift_destroy_boxed_opaque_existential_0(a1);
    if (0x7D047000)
    {
      return v11;
    }

    v13 = v30;
    if (v9)
    {
      OUTLINED_FUNCTION_40(qword_27D047A10);
      if (!v4)
      {
LABEL_6:
        if (!v11)
        {
LABEL_8:
          type metadata accessor for ContactDialogPerson(0);
          swift_deallocPartialClassInstance();
          return v11;
        }

LABEL_7:
        sub_222D93218(*(v13 + qword_27D047A00), *(v13 + qword_27D047A00 + 8));
        goto LABEL_8;
      }
    }

    else if (!v4)
    {
      goto LABEL_6;
    }

    OUTLINED_FUNCTION_40(qword_27D047A08);
    if (!v11)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  LOBYTE(v31[0]) = 0;
  v12 = sub_222DDB990();
  v15 = v30;
  OUTLINED_FUNCTION_26(v12, v16, qword_27D047A30);
  OUTLINED_FUNCTION_0_1(1);
  v17 = sub_222DDB990();
  OUTLINED_FUNCTION_26(v17, v18, qword_27D047A28);
  OUTLINED_FUNCTION_0_1(2);
  v19 = sub_222DDB990();
  OUTLINED_FUNCTION_26(v19, v20, qword_27D047A20);
  OUTLINED_FUNCTION_0_1(3);
  *(v15 + qword_27D047A18) = sub_222DDB9A0();
  OUTLINED_FUNCTION_0_1(4);
  v21 = sub_222DDB990();
  OUTLINED_FUNCTION_26(v21, v22, qword_27D047A10);
  OUTLINED_FUNCTION_0_1(5);
  v23 = sub_222DDB990();
  OUTLINED_FUNCTION_26(v23, v24, qword_27D047A08);
  v32 = 6;
  sub_222D93620();
  sub_222DDB9B0();
  *(v15 + qword_27D047A00) = v31[0];
  OUTLINED_FUNCTION_0_1(7);
  v25 = sub_222DDB990();
  OUTLINED_FUNCTION_26(v25, v26, qword_27D0479F8);
  sub_222D93674(a1, v31);
  v11 = sub_222DDAF30();
  v27 = OUTLINED_FUNCTION_2_0();
  v28(v27);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v11;
}

uint64_t sub_222D92CF8(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047A38, &unk_222DDC7B0);
  v5 = OUTLINED_FUNCTION_2(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v17 - v10;
  sub_222DDB0D0();
  v12 = sub_222DDB0E0();
  result = v12(a1);
  if (!v2)
  {
    v14 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_222D9315C();
    sub_222DDBBC0();
    OUTLINED_FUNCTION_22(qword_27D047A30);
    LOBYTE(v17) = 0;
    sub_222DDBA20();
    OUTLINED_FUNCTION_22(qword_27D047A28);
    OUTLINED_FUNCTION_3_1(1);
    OUTLINED_FUNCTION_22(qword_27D047A20);
    OUTLINED_FUNCTION_3_1(2);
    v15 = *(v1 + qword_27D047A18);
    LOBYTE(v17) = 3;
    sub_222DDBA30();
    OUTLINED_FUNCTION_22(qword_27D047A10);
    OUTLINED_FUNCTION_3_1(4);
    OUTLINED_FUNCTION_22(qword_27D047A08);
    OUTLINED_FUNCTION_3_1(5);
    v17 = OUTLINED_FUNCTION_22(qword_27D047A00);
    v18 = v16;
    v19 = 6;
    sub_222D931B0(v17, v16);
    sub_222D931C4();
    sub_222DDBA40();
    sub_222D93218(v17, v18);
    OUTLINED_FUNCTION_22(qword_27D0479F8);
    OUTLINED_FUNCTION_3_1(7);
    return (*(v7 + 8))(v11, v4);
  }

  return result;
}

uint64_t sub_222D92FB4()
{
  OUTLINED_FUNCTION_10(qword_27D047A30);

  OUTLINED_FUNCTION_10(qword_27D047A28);

  OUTLINED_FUNCTION_10(qword_27D047A20);

  OUTLINED_FUNCTION_10(qword_27D047A10);

  OUTLINED_FUNCTION_10(qword_27D047A08);

  sub_222D93218(*(v0 + qword_27D047A00), *(v0 + qword_27D047A00 + 8));
  OUTLINED_FUNCTION_10(qword_27D0479F8);
}

uint64_t ContactDialogPerson.deinit()
{
  v0 = sub_222DDB0F0();
  v1 = *(v0 + qword_27D047A30 + 8);

  OUTLINED_FUNCTION_29(qword_27D047A28);
  OUTLINED_FUNCTION_29(qword_27D047A20);
  OUTLINED_FUNCTION_29(qword_27D047A10);
  OUTLINED_FUNCTION_29(qword_27D047A08);
  sub_222D93218(*(v0 + qword_27D047A00), *(v0 + qword_27D047A00 + 8));
  OUTLINED_FUNCTION_29(qword_27D0479F8);
  return v0;
}

uint64_t ContactDialogPerson.__deallocating_deinit()
{
  v0 = ContactDialogPerson.deinit();

  return MEMORY[0x2821FE8D8](v0, 136, 7);
}

uint64_t sub_222D93104(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_222D9315C()
{
  result = qword_27D047A40;
  if (!qword_27D047A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D047A40);
  }

  return result;
}

uint64_t sub_222D931B0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_222D93104(a1, a2);
  }

  return a1;
}

unint64_t sub_222D931C4()
{
  result = qword_27D047A48;
  if (!qword_27D047A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D047A48);
  }

  return result;
}

uint64_t sub_222D93218(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_222D9322C(a1, a2);
  }

  return a1;
}

uint64_t sub_222D9322C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_222D932F0(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ContactDialogPerson.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
    if (a2 + 7 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 7) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ContactDialogPerson.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_222D9351C()
{
  result = qword_27D047AB0;
  if (!qword_27D047AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D047AB0);
  }

  return result;
}

unint64_t sub_222D93574()
{
  result = qword_27D047AB8;
  if (!qword_27D047AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D047AB8);
  }

  return result;
}

unint64_t sub_222D935CC()
{
  result = qword_27D047AC0;
  if (!qword_27D047AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D047AC0);
  }

  return result;
}

unint64_t sub_222D93620()
{
  result = qword_27D047AD0;
  if (!qword_27D047AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D047AD0);
  }

  return result;
}

uint64_t sub_222D93674(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_222D936D8()
{
  result = qword_27D047AD8;
  if (!qword_27D047AD8)
  {
    sub_222DDB0D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D047AD8);
  }

  return result;
}

uint64_t sub_222D93730(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047AE0, &qword_222DDDD30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_OWORD *sub_222D93798(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

_OWORD *sub_222D937A8(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_222DCC9E4(a2, a3);
  if (__OFADD__(*(v6 + 16), (v8 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v9 = v7;
  v10 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047AE8, &unk_222DDC9A0);
  if ((sub_222DDB8E0() & 1) == 0)
  {
    goto LABEL_5;
  }

  v11 = *v4;
  v12 = OUTLINED_FUNCTION_23();
  v14 = sub_222DCC9E4(v12, v13);
  if ((v10 & 1) != (v15 & 1))
  {
LABEL_13:
    result = sub_222DDBAF0();
    __break(1u);
    return result;
  }

  v9 = v14;
LABEL_5:
  if (v10)
  {
    v16 = (*(*v4 + 56) + 32 * v9);
    __swift_destroy_boxed_opaque_existential_0(v16);

    return sub_222D93798(a1, v16);
  }

  else
  {
    OUTLINED_FUNCTION_33();
    sub_222D938E8(v18, v19, v20, a1, v21);
  }
}

_OWORD *sub_222D938E8(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_222D93798(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_1@<X0>(char a1@<W8>)
{
  *(v1 - 96) = a1;

  return sub_222DDBA20();
}

uint64_t OUTLINED_FUNCTION_8_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = *(*(a10 + 48) + 16 * v10 + 8);
}

uint64_t OUTLINED_FUNCTION_9()
{

  return sub_222DDB8E0();
}

uint64_t OUTLINED_FUNCTION_11()
{

  return sub_222DDBAC0();
}

uint64_t OUTLINED_FUNCTION_12()
{

  return sub_222DDB8F0();
}

uint64_t OUTLINED_FUNCTION_13(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 a15, __int128 a16)
{
  a15 = 0u;
  a16 = 0u;

  return sub_222D93730(&a15);
}

_OWORD *OUTLINED_FUNCTION_20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11)
{
  v14 = (*(v11 + 56) + 32 * v12);

  return sub_222D93798(v14, &a11);
}

uint64_t OUTLINED_FUNCTION_22@<X0>(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  result = *v2;
  v4 = v2[1];
  return result;
}

uint64_t OUTLINED_FUNCTION_26@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = (v3 + a3);
  *v4 = result;
  v4[1] = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_27()
{

  return sub_222DDBAC0();
}

uint64_t OUTLINED_FUNCTION_28()
{

  return sub_222DDBAC0();
}

uint64_t OUTLINED_FUNCTION_29@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + a1 + 8);
}

_OWORD *OUTLINED_FUNCTION_32(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, uint64_t a12, uint64_t a13, __int128 a14)
{

  return sub_222D93798(&a14, &a11);
}

uint64_t OUTLINED_FUNCTION_34()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_38()
{

  return sub_222DDB560();
}

uint64_t OUTLINED_FUNCTION_40@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + a1 + 8);
}

void sub_222D93E18()
{
  sub_222D93F24(319, &qword_27D047B08, type metadata accessor for ContactDialogPerson, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_222D93F24(319, &qword_27D047B10, MEMORY[0x277D5C058], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_222D93F24(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_222D93F90(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_222D93FD0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_222D94078()
{
  sub_222D93F24(319, &qword_27D047B08, type metadata accessor for ContactDialogPerson, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_222D93F24(319, &qword_27D047B10, MEMORY[0x277D5C058], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_222D9416C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047AF0, &unk_222DDC9E0);
  OUTLINED_FUNCTION_8(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v6);
  v8 = &v22[-v7];
  v9 = sub_222DDA830();
  v10 = OUTLINED_FUNCTION_2(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_24_0();
  sub_222D95E6C(a1, v8);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_222D95C14(v8);
    if (qword_27D0475B0 != -1)
    {
      OUTLINED_FUNCTION_2_1();
      swift_once();
    }

    v15 = sub_222DDB3E0();
    __swift_project_value_buffer(v15, qword_27D04C928);
    v16 = sub_222DDB3C0();
    v17 = sub_222DDB6D0();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_222D8A000, v16, v17, "No windowing parameters provided, defaulting to no windowing", v18, 2u);
      MEMORY[0x223DCEF40](v18, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047B40, &unk_222DDD450);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_222DDC9B0;
    *(inited + 32) = 0x6953776F646E6977;
    *(inited + 40) = 0xEA0000000000657ALL;
    *(inited + 72) = MEMORY[0x277D83B88];
    *(inited + 48) = 0;
    return sub_222DDB460();
  }

  else
  {
    (*(v12 + 32))(v1, v8, v9);
    v20 = sub_222DDA820();
    (*(v12 + 8))(v1, v9);
  }

  return v20;
}

uint64_t sub_222D943DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(v8 + 8);
  v9 = *(v8 + 16);
  v12 = *(v8 + 24);
  v11 = *(v8 + 32);
  v13 = 0xED0000656D697465;
  v14 = 0x6361466F54646461;
  v15 = *(v8 + 40);
  switch(*v8)
  {
    case 1:
      break;
    case 2:
      OUTLINED_FUNCTION_3_2();
      break;
    case 3:
      OUTLINED_FUNCTION_17_0();
      break;
    case 4:
      OUTLINED_FUNCTION_4_1();
      break;
    case 5:
      OUTLINED_FUNCTION_8_1();
      break;
    case 6:
      OUTLINED_FUNCTION_6_1();
      break;
    default:
      OUTLINED_FUNCTION_9_0();
      v14 = 0xD000000000000018;
      break;
  }

  v16 = MEMORY[0x277D837D0];
  *&v75 = v14;
  *(&v75 + 1) = v13;
  OUTLINED_FUNCTION_32(a1, a2, a3, a4, a5, a6, a7, a8, v60, v66, v72, v73, v74, v75);

  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_22_0();
  v23 = OUTLINED_FUNCTION_20_0(v17, 0x56746361746E6F63, 0xEB00000000627265, v18, v19, v20, v21, v22, v61, v67, v72);
  v26 = sub_222D937A8(v23, v24, v25);
  v76 = v16;
  *&v75 = v10;
  *(&v75 + 1) = v9;
  OUTLINED_FUNCTION_32(v26, v27, v28, v29, v30, v31, v32, v33, v62, v68, v72, v73, v74, v75);
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_22_0();
  v34 = sub_222D937A8(&v72, 0xD000000000000014, 0x8000000222DE0B30);
  v76 = v16;
  *&v75 = v12;
  *(&v75 + 1) = v11;
  OUTLINED_FUNCTION_32(v34, v35, v36, v37, v38, v39, v40, v41, v63, v69, v72, v73, v74, v75);
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_22_0();
  sub_222D937A8(&v72, 0xD000000000000016, 0x8000000222DE0B50);
  v42 = v70;
  v43 = sub_222D9016C();
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047B38, &unk_222DDCAE0);
  *&v75 = v43;
  OUTLINED_FUNCTION_32(v76, v44, v45, v46, v47, v48, v49, v50, v64, v70, v72, v73, v74, v75);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v57 = OUTLINED_FUNCTION_20_0(isUniquelyReferenced_nonNull_native, 0x6E6F73726570, v52, isUniquelyReferenced_nonNull_native, v53, v54, v55, v56, v65, v42, v72);
  sub_222D937A8(v57, v58, 0xE600000000000000);
  return v71;
}

uint64_t sub_222D945EC()
{
  v2 = v0;
  v3 = type metadata accessor for ContactResolutionDisambiguationParameters(0);
  v4 = sub_222D9416C(v0 + *(v3 + 20));
  v5 = *v2;
  v6 = sub_222DA8780(*v2);
  v7 = MEMORY[0x277D84F90];
  v93 = v3;
  v99 = v2;
  if (v6)
  {
    v8 = v6;
    v82 = v4;
    *&v108 = MEMORY[0x277D84F90];
    result = sub_222DA54A8(0, v6 & ~(v6 >> 63), 0);
    if (v8 < 0)
    {
      goto LABEL_27;
    }

    v10 = 0;
    v11 = v108;
    v12 = v5 & 0xC000000000000001;
    do
    {
      if (v12)
      {
        MEMORY[0x223DCE590](v10, v5);
      }

      else
      {
        OUTLINED_FUNCTION_27_0(v5 + 8 * v10);
      }

      v13 = sub_222D9016C();
      OUTLINED_FUNCTION_21_0();

      *&v108 = v11;
      v15 = *(v11 + 16);
      v14 = *(v11 + 24);
      if (v15 >= v14 >> 1)
      {
        v16 = OUTLINED_FUNCTION_18_0(v14);
        sub_222DA54A8(v16, v15 + 1, 1);
        v11 = v108;
      }

      ++v10;
      *(v11 + 16) = v15 + 1;
      *(v11 + 8 * v15 + 32) = v13;
    }

    while (v8 != v10);
    v7 = MEMORY[0x277D84F90];
  }

  else
  {
    v12 = v5 & 0xC000000000000001;
    v11 = MEMORY[0x277D84F90];
  }

  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047B30, "|M");
  *&v108 = v11;
  OUTLINED_FUNCTION_26_0(v109, v17, v18, v19, v20, v21, v22, v23, v82, v1, v93, v99, v105, v106, v107, v108);
  swift_isUniquelyReferenced_nonNull_native();
  v110 = v4;
  OUTLINED_FUNCTION_15_0();
  sub_222D937A8(&v105, v24, 0xE500000000000000);
  v25 = v110;
  v26 = sub_222DA8780(v5);
  v109 = MEMORY[0x277D83B88];
  *&v108 = v26;
  OUTLINED_FUNCTION_26_0(v26, v27, v28, v29, v30, v31, v32, v33, v83, v88, v94, v100, v105, v106, v107, v108);
  swift_isUniquelyReferenced_nonNull_native();
  v110 = v25;
  OUTLINED_FUNCTION_32_0();
  v35 = sub_222D937A8(&v105, v34, 0xEA0000000000736DLL);
  v37 = v95;
  v36 = v101;
  v38 = *(v101 + *(v95 + 24));
  v39 = MEMORY[0x277D839B0];
  v109 = MEMORY[0x277D839B0];
  LOBYTE(v108) = v38;
  OUTLINED_FUNCTION_26_0(v35, v40, v41, v42, v43, v44, v45, v46, v84, v89, v95, v101, v105, v106, v107, v108);
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_14_0();
  v48 = sub_222D937A8(v47, 0xD000000000000011, 0x8000000222DE0BD0);
  v49 = *(v36 + *(v37 + 28));
  v109 = v39;
  LOBYTE(v108) = v49;
  OUTLINED_FUNCTION_26_0(v48, v50, v51, v52, v53, v54, v55, v56, v85, v90, v96, v102, v105, v106, v107, v108);
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_14_0();
  sub_222D937A8(v57, 0xD000000000000014, 0x8000000222DE0BF0);
  v103 = v110;
  *&v108 = v7;
  result = sub_222DA8780(v5);
  v58 = result;
  for (i = 0; ; ++i)
  {
    if (v58 == i)
    {
      v63 = sub_222DA8780(v108);

      v65 = MEMORY[0x277D839B0];
      v109 = MEMORY[0x277D839B0];
      LOBYTE(v108) = v63 == 1;
      OUTLINED_FUNCTION_26_0(v64, v66, v67, v68, v69, v70, v71, v72, v86, v91, v97, v103, v105, v106, v107, v108);
      swift_isUniquelyReferenced_nonNull_native();
      v110 = v104;
      v73 = sub_222D937A8(&v105, 0xD000000000000017, 0x8000000222DE0C10);
      v109 = v65;
      LOBYTE(v108) = v63 > 1;
      OUTLINED_FUNCTION_26_0(v73, v74, v75, v76, v77, v78, v79, v80, v87, v92, v98, v104, v105, v106, v107, v108);
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_14_0();
      sub_222D937A8(v81, 0xD00000000000001DLL, 0x8000000222DE0C30);
      return v110;
    }

    if (v12)
    {
      result = MEMORY[0x223DCE590](i, v5);
      v60 = result;
    }

    else
    {
      if (i >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_26;
      }

      v60 = *(v5 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    v61 = *(v60 + qword_27D047A18);
    if (v61 == 2 || (v61 & 1) == 0)
    {
    }

    else
    {
      sub_222DDB890();
      v62 = *(v108 + 16);
      sub_222DDB8C0();
      sub_222DDB8D0();
      result = sub_222DDB8A0();
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

void *sub_222D949EC()
{
  v3 = v0;
  v4 = *v0;
  v5 = sub_222DA8780(*v0);
  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
LABEL_11:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047B40, &unk_222DDD450);
    inited = swift_initStackObject();
    v13 = OUTLINED_FUNCTION_37_0(inited, xmmword_222DDC770);
    v13[2].n128_u64[0] = v14;
    v13[2].n128_u64[1] = 0xE500000000000000;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047B30, "|M");
    inited[3].n128_u64[0] = v6;
    OUTLINED_FUNCTION_7_1();
    inited[4].n128_u64[1] = v15;
    inited[5].n128_u64[0] = v16;
    inited[5].n128_u64[1] = 0xE800000000000000;
    v17 = MEMORY[0x277D839B0];
    inited[6].n128_u8[0] = *(v3 + 8);
    inited[7].n128_u64[1] = v17;
    inited[8].n128_u64[0] = 0x6C6562616CLL;
    v18 = MEMORY[0x277D837D0];
    v20 = v3[2];
    v19 = v3[3];
    inited[8].n128_u64[1] = 0xE500000000000000;
    inited[9].n128_u64[0] = v20;
    inited[9].n128_u64[1] = v19;
    OUTLINED_FUNCTION_9_0();
    inited[10].n128_u64[1] = v18;
    inited[11].n128_u64[0] = 0xD000000000000013;
    inited[11].n128_u64[1] = v21;
    inited[12].n128_u8[0] = *(v3 + 32);
    OUTLINED_FUNCTION_9_0();
    inited[13].n128_u64[1] = v22;
    inited[14].n128_u64[0] = v23;
    inited[14].n128_u64[1] = v24;
    LOBYTE(v24) = *(v3 + 33);
    inited[16].n128_u64[1] = v22;
    inited[15].n128_u8[0] = v24;

    return sub_222DDB460();
  }

  result = OUTLINED_FUNCTION_16_0(v5);
  if ((v1 & 0x8000000000000000) == 0)
  {
    v6 = v25;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        MEMORY[0x223DCE590](0, v4);
      }

      else
      {
        OUTLINED_FUNCTION_27_0(v4);
      }

      sub_222D9016C();
      OUTLINED_FUNCTION_21_0();

      OUTLINED_FUNCTION_28_0();
      if (v9)
      {
        v11 = OUTLINED_FUNCTION_18_0(v8);
        sub_222DA54A8(v11, v2, 1);
        v6 = v25;
      }

      OUTLINED_FUNCTION_19_0();
    }

    while (!v10);
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

void *sub_222D94BC4(uint64_t a1, int a2)
{
  v6 = sub_222DA8780(a1);
  v7 = MEMORY[0x277D84F90];
  if (!v6)
  {
LABEL_11:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047B40, &unk_222DDD450);
    inited = swift_initStackObject();
    v14 = OUTLINED_FUNCTION_37_0(inited, xmmword_222DDC9C0);
    v14[2].n128_u64[0] = v15;
    v14[2].n128_u64[1] = 0xE500000000000000;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047B30, "|M");
    inited[3].n128_u64[0] = v7;
    OUTLINED_FUNCTION_7_1();
    inited[4].n128_u64[1] = v16;
    inited[5].n128_u64[0] = v17;
    inited[5].n128_u64[1] = 0xE800000000000000;
    v18 = MEMORY[0x277D839B0];
    inited[6].n128_u8[0] = a2 & 1;
    inited[7].n128_u64[1] = v18;
    inited[8].n128_u64[0] = 0xD000000000000013;
    inited[8].n128_u64[1] = 0x8000000222DE0B90;
    inited[9].n128_u8[0] = BYTE1(a2) & 1;
    inited[10].n128_u64[1] = v18;
    inited[11].n128_u64[0] = 0xD000000000000013;
    inited[11].n128_u64[1] = 0x8000000222DE0BB0;
    inited[13].n128_u64[1] = v18;
    inited[12].n128_u8[0] = BYTE2(a2) & 1;
    return sub_222DDB460();
  }

  result = OUTLINED_FUNCTION_16_0(v6);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v7 = v19;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x223DCE590](0, a1);
      }

      else
      {
        OUTLINED_FUNCTION_27_0(a1);
      }

      sub_222D9016C();
      OUTLINED_FUNCTION_21_0();

      OUTLINED_FUNCTION_28_0();
      if (v10)
      {
        v12 = OUTLINED_FUNCTION_18_0(v9);
        sub_222DA54A8(v12, v3, 1);
        v7 = v19;
      }

      OUTLINED_FUNCTION_19_0();
    }

    while (!v11);
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t sub_222D94D7C()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(v1 + 8);
  v5 = v1[2];
  v4 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v31 = *(v1 + 48);
  v9 = v1[7];
  v8 = v1[8];
  if (sub_222DDAEE0())
  {
    v30 = v9;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047B40, &unk_222DDD450);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_222DDC9D0;
    *(inited + 32) = 0x6E6F73726570;
    *(inited + 40) = 0xE600000000000000;
    v11 = sub_222D9016C();
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047B38, &unk_222DDCAE0);
    *(inited + 48) = v11;
    *(inited + 72) = v12;
    *(inited + 80) = 0x56746361746E6F63;
    *(inited + 88) = 0xEB00000000627265;
    v13 = 0xED0000656D697465;
    v14 = 0x6361466F54646461;
    switch(v3)
    {
      case 1:
        break;
      case 2:
        OUTLINED_FUNCTION_3_2();
        break;
      case 3:
        OUTLINED_FUNCTION_17_0();
        break;
      case 4:
        OUTLINED_FUNCTION_4_1();
        break;
      case 5:
        OUTLINED_FUNCTION_8_1();
        break;
      case 6:
        OUTLINED_FUNCTION_6_1();
        break;
      default:
        OUTLINED_FUNCTION_9_0();
        v14 = v15 + 8;
        break;
    }

    v22 = MEMORY[0x277D837D0];
    *(inited + 96) = v14;
    *(inited + 104) = v13;
    OUTLINED_FUNCTION_9_0();
    *(inited + 120) = v22;
    *(inited + 128) = v23 + 4;
    *(inited + 136) = v24;
    *(inited + 144) = v5;
    *(inited + 152) = v4;
    OUTLINED_FUNCTION_9_0();
    *(inited + 168) = v22;
    *(inited + 176) = v25 + 6;
    *(inited + 184) = v26;
    *(inited + 192) = v7;
    *(inited + 200) = v6;
    OUTLINED_FUNCTION_7_1();
    *(inited + 216) = v22;
    *(inited + 224) = v27;
    v28 = MEMORY[0x277D839B0];
    *(inited + 232) = 0xE800000000000000;
    *(inited + 240) = v31;
    *(inited + 264) = v28;
    *(inited + 272) = v29;
    *(inited + 312) = v22;
    *(inited + 280) = 0x8000000222DE0B70;
    *(inited + 288) = v30;
    *(inited + 296) = v8;

    return sub_222DDB460();
  }

  else
  {
    if (qword_27D0475B0 != -1)
    {
      OUTLINED_FUNCTION_2_1();
      swift_once();
    }

    v16 = sub_222DDB3E0();
    __swift_project_value_buffer(v16, qword_27D04C928);
    v17 = sub_222DDB3C0();
    v18 = sub_222DDB6C0();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_222D8A000, v17, v18, "YesNoSingleAlternativeHandleParameters::asKeyValuePairs - Handle not found", v19, 2u);
      MEMORY[0x223DCEF40](v19, -1, -1);
    }

    sub_222D95EDC();
    swift_allocError();
    *v20 = 4;
    return swift_willThrow();
  }
}

void *sub_222D950A4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047B28, "|M");
  OUTLINED_FUNCTION_8(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v4);
  v6 = v70 - v5;
  v7 = type metadata accessor for DetailedDisambiguationMultipleHandlesSameLabelParameters(0);
  v8 = sub_222D9416C(v0 + *(v7 + 28));
  v72 = v0;
  v9 = *v0;
  v10 = sub_222DA8780(*v0);
  v11 = MEMORY[0x277D84F90];
  v71 = v7;
  if (!v10)
  {
LABEL_10:
    v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047B30, "|M");
    v76 = v11;
    OUTLINED_FUNCTION_10_0();
    swift_isUniquelyReferenced_nonNull_native();
    v74 = v8;
    OUTLINED_FUNCTION_15_0();
    sub_222D937A8(v75, v19, 0xE500000000000000);
    v20 = v74;
    v21 = v72[1];
    v22 = v72[2];
    v23 = v72;
    v78 = MEMORY[0x277D837D0];
    v76 = v21;
    v77 = v22;
    OUTLINED_FUNCTION_10_0();

    swift_isUniquelyReferenced_nonNull_native();
    v74 = v20;
    OUTLINED_FUNCTION_38_0();
    v24 = v74;
    v25 = *(v23 + 24);
    v78 = MEMORY[0x277D839B0];
    LOBYTE(v76) = v25;
    OUTLINED_FUNCTION_10_0();
    swift_isUniquelyReferenced_nonNull_native();
    v74 = v24;
    OUTLINED_FUNCTION_38_0();
    v26 = v74;
    sub_222DDB0D0();
    v27 = objc_allocWithZone(MEMORY[0x277CD3E98]);
    v28 = OUTLINED_FUNCTION_5_1();
    sub_222D95C7C(v28, v29, 2);
    v30 = sub_222DDA0B0();
    OUTLINED_FUNCTION_29_0();
    __swift_storeEnumTagSinglePayload(v31, v32, v33, v30);
    v34 = objc_allocWithZone(MEMORY[0x277CD3E90]);
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_0_2();
    sub_222D95CE8(v35, v36, v37, v38, v39, v40, v41, v42, v70[0]);
    v74 = sub_222DDAEA0();
    sub_222D936D8();
    v43 = sub_222DDB390();
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047B38, &unk_222DDCAE0);
    v78 = v44;

    v76 = v43;
    OUTLINED_FUNCTION_10_0();
    swift_isUniquelyReferenced_nonNull_native();
    v73 = v26;
    OUTLINED_FUNCTION_34_0();
    sub_222D937A8(v75, v45, 0xEB00000000656C64);
    v46 = v73;
    v47 = objc_allocWithZone(MEMORY[0x277CD3E98]);
    v48 = OUTLINED_FUNCTION_5_1();
    sub_222D95C7C(v48, v49, 1);
    OUTLINED_FUNCTION_29_0();
    __swift_storeEnumTagSinglePayload(v50, v51, v52, v30);
    v53 = objc_allocWithZone(MEMORY[0x277CD3E90]);
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_0_2();
    sub_222D95CE8(v54, v55, v56, v57, v58, v59, v60, v61, v71);
    v74 = sub_222DDAEA0();
    v62 = sub_222DDB390();
    v78 = v44;

    v76 = v62;
    OUTLINED_FUNCTION_10_0();
    swift_isUniquelyReferenced_nonNull_native();
    v73 = v46;
    v63 = OUTLINED_FUNCTION_11_0();
    sub_222D937A8(v63, v64, 0xEB00000000656C64);
    v65 = v72;
    v66 = v71;
    v67 = *(v72 + *(v71 + 32));
    v68 = MEMORY[0x277D83B88];
    v78 = MEMORY[0x277D83B88];
    v76 = v67;
    OUTLINED_FUNCTION_10_0();
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_12_0();
    v69 = *(v65 + *(v66 + 36));
    v78 = v68;
    v76 = v69;
    OUTLINED_FUNCTION_10_0();
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_12_0();
    return v74;
  }

  v12 = v10;
  v76 = MEMORY[0x277D84F90];
  result = sub_222DA54A8(0, v10 & ~(v10 >> 63), 0);
  if ((v12 & 0x8000000000000000) == 0)
  {
    v70[1] = v6;
    v14 = 0;
    v11 = v76;
    do
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        MEMORY[0x223DCE590](v14, v9);
      }

      else
      {
        OUTLINED_FUNCTION_27_0(v9 + 8 * v14);
      }

      v15 = sub_222D9016C();
      OUTLINED_FUNCTION_21_0();

      v76 = v11;
      v17 = *(v11 + 16);
      v16 = *(v11 + 24);
      if (v17 >= v16 >> 1)
      {
        v18 = OUTLINED_FUNCTION_18_0(v16);
        sub_222DA54A8(v18, v17 + 1, 1);
        v11 = v76;
      }

      ++v14;
      *(v11 + 16) = v17 + 1;
      *(v11 + 8 * v17 + 32) = v15;
    }

    while (v12 != v14);
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_222D954FC()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(v0 + 16);
  v4 = *(v0 + 17);

  v5 = sub_222DDB460();
  *&v83 = v2;
  *(&v83 + 1) = v1;
  OUTLINED_FUNCTION_32(v5, v6, v7, v8, v9, v10, v11, v12, v60, v66, v72, v77, v80, v83);
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_22_0();
  v19 = OUTLINED_FUNCTION_20_0(v13, 0x6574736575716572, 0xED0000656D614E64, v14, v15, v16, v17, v18, v61, v67, v73);
  sub_222D937A8(v19, v20, v21);
  OUTLINED_FUNCTION_3_2();
  switch(v3)
  {
    case 1:
      break;
    case 2:
      v30 = 0xEB00000000656761;
      v32 = 1684956531;
      goto LABEL_5;
    case 3:
      OUTLINED_FUNCTION_4_1();
      break;
    case 4:
      v30 = 0xEC00000073656761;
      v32 = 1684104562;
LABEL_5:
      v31 = v32 | 0x7373654D00000000;
      break;
    case 5:
      OUTLINED_FUNCTION_6_1();
      break;
    default:
      OUTLINED_FUNCTION_9_0();
      v31 = 0xD00000000000001CLL;
      break;
  }

  *&v84 = v31;
  *(&v84 + 1) = v30;
  OUTLINED_FUNCTION_32(v22, v23, v24, v25, v26, v27, v28, v29, v62, v68, v73, v78, v81, v84);
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_22_0();
  v40 = OUTLINED_FUNCTION_20_0(v33, 0x7954746E65746E69, v34, v35, v36, v37, v38, v39, v63, v69, v74);
  v42 = sub_222D937A8(v40, v41, 0xEA00000000006570);
  v43 = v70;
  LOBYTE(v85) = v4;
  OUTLINED_FUNCTION_32(v42, v44, v45, v46, v47, v48, v49, v50, v64, v70, v75, v79, v82, v85);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v56 = OUTLINED_FUNCTION_20_0(isUniquelyReferenced_nonNull_native, 0x6374614D6F72657ALL, 0xEB00000000736568, isUniquelyReferenced_nonNull_native, v52, v53, v54, v55, v65, v43, v76);
  sub_222D937A8(v56, v57, v58);
  return v71;
}

void *sub_222D956E0(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v83 = a3;
  v80 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047B28, "|M");
  OUTLINED_FUNCTION_8(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v10);
  v81 = &v79 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047AF0, &unk_222DDC9E0);
  OUTLINED_FUNCTION_8(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v15);
  v17 = &v79 - v16;
  v18 = sub_222DDA830();
  v19 = OUTLINED_FUNCTION_2(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_24_0();
  sub_222DDA810();
  v84 = v21;
  v24 = *(v21 + 16);
  v82 = v4;
  v24(v17, v4, v18);
  __swift_storeEnumTagSinglePayload(v17, 0, 1, v18);
  v25 = sub_222D9416C(v17);
  sub_222D95C14(v17);
  v26 = sub_222DA8780(a1);
  v27 = v26;
  v28 = MEMORY[0x277D84F90];
  v85 = v18;
  v86 = a4;
  if (!v26)
  {
LABEL_10:
    v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047B30, "|M");
    v90 = v28;
    OUTLINED_FUNCTION_10_0();
    swift_isUniquelyReferenced_nonNull_native();
    v88 = v25;
    OUTLINED_FUNCTION_15_0();
    sub_222D937A8(v89, v35, 0xE500000000000000);
    v91 = MEMORY[0x277D839B0];
    LOBYTE(v90) = v80 & 1;
    OUTLINED_FUNCTION_10_0();
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_1_2();
    v36 = v88;
    v91 = MEMORY[0x277D83B88];
    v90 = v27;
    OUTLINED_FUNCTION_10_0();
    swift_isUniquelyReferenced_nonNull_native();
    v88 = v36;
    OUTLINED_FUNCTION_32_0();
    sub_222D937A8(v89, v37, 0xEA0000000000736DLL);
    v38 = v88;
    sub_222DDB0D0();
    v39 = objc_allocWithZone(MEMORY[0x277CD3E98]);
    v40 = OUTLINED_FUNCTION_5_1();
    sub_222D95C7C(v40, v41, 2);
    v42 = sub_222DDA0B0();
    OUTLINED_FUNCTION_29_0();
    __swift_storeEnumTagSinglePayload(v43, v44, v45, v42);
    v46 = objc_allocWithZone(MEMORY[0x277CD3E90]);
    OUTLINED_FUNCTION_0_2();
    sub_222D95CE8(v47, v48, v49, v50, v51, v52, v53, v54, 0);
    v88 = sub_222DDAEA0();
    sub_222D936D8();
    v55 = sub_222DDB390();
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047B38, &unk_222DDCAE0);
    v91 = v56;

    v90 = v55;
    OUTLINED_FUNCTION_10_0();
    swift_isUniquelyReferenced_nonNull_native();
    v87 = v38;
    OUTLINED_FUNCTION_34_0();
    sub_222D937A8(v89, v57, 0xEB00000000656C64);
    v58 = v87;
    v59 = objc_allocWithZone(MEMORY[0x277CD3E98]);
    v60 = OUTLINED_FUNCTION_5_1();
    sub_222D95C7C(v60, v61, 1);
    OUTLINED_FUNCTION_29_0();
    __swift_storeEnumTagSinglePayload(v62, v63, v64, v42);
    v65 = objc_allocWithZone(MEMORY[0x277CD3E90]);
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_0_2();
    sub_222D95CE8(v66, v67, v68, v69, v70, v71, v72, v73, v79);
    v88 = sub_222DDAEA0();
    v74 = sub_222DDB390();
    v91 = v56;

    v90 = v74;
    OUTLINED_FUNCTION_10_0();
    swift_isUniquelyReferenced_nonNull_native();
    v87 = v58;
    v75 = OUTLINED_FUNCTION_11_0();
    sub_222D937A8(v75, v76, 0xEB00000000656C64);
    v77 = MEMORY[0x277D83B88];
    v91 = MEMORY[0x277D83B88];
    v90 = v83;
    OUTLINED_FUNCTION_10_0();
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_1_2();
    v91 = v77;
    v90 = v86;
    OUTLINED_FUNCTION_10_0();
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_1_2();
    v78 = v88;
    (*(v84 + 8))(v82, v85);
    return v78;
  }

  v90 = MEMORY[0x277D84F90];
  result = sub_222DA54A8(0, v26 & ~(v26 >> 63), 0);
  if ((v27 & 0x8000000000000000) == 0)
  {
    v30 = 0;
    v28 = v90;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x223DCE590](v30, a1);
      }

      else
      {
        OUTLINED_FUNCTION_27_0(a1 + 8 * v30);
      }

      v31 = sub_222D9016C();
      OUTLINED_FUNCTION_21_0();

      v90 = v28;
      v33 = *(v28 + 16);
      v32 = *(v28 + 24);
      if (v33 >= v32 >> 1)
      {
        v34 = OUTLINED_FUNCTION_18_0(v32);
        sub_222DA54A8(v34, v33 + 1, 1);
        v28 = v90;
      }

      ++v30;
      *(v28 + 16) = v33 + 1;
      *(v28 + 8 * v33 + 32) = v31;
    }

    while (v27 != v30);
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_222D95C14(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047AF0, &unk_222DDC9E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_222D95C7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_222DDB4C0();
  }

  else
  {
    v5 = 0;
  }

  v6 = [v3 initWithValue:v5 type:a3];

  return v6;
}

id sub_222D95CE8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v16 = sub_222DDA0B0();
  v17 = 0;
  if (__swift_getEnumTagSinglePayload(a2, 1, v16) != 1)
  {
    v17 = sub_222DDA050();
    (*(*(v16 - 8) + 8))(a2, v16);
  }

  if (a4)
  {
    v18 = sub_222DDB4C0();
  }

  else
  {
    v18 = 0;
  }

  if (!a7)
  {
    v19 = 0;
    if (a9)
    {
      goto LABEL_8;
    }

LABEL_10:
    v20 = 0;
    goto LABEL_11;
  }

  v19 = sub_222DDB4C0();

  if (!a9)
  {
    goto LABEL_10;
  }

LABEL_8:
  v20 = sub_222DDB4C0();

LABEL_11:
  v21 = [v10 initWithPersonHandle:a1 nameComponents:v17 displayName:v18 image:a5 contactIdentifier:v19 customIdentifier:v20];

  return v21;
}

uint64_t sub_222D95E6C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047AF0, &unk_222DDC9E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_222D95EDC()
{
  result = qword_27D047B48;
  if (!qword_27D047B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D047B48);
  }

  return result;
}

_OWORD *OUTLINED_FUNCTION_1_2()
{
  *(v2 - 152) = v0;

  return sub_222D937A8((v2 - 144), 0xD000000000000010, v1 | 0x8000000000000000);
}

_OWORD *OUTLINED_FUNCTION_10_0()
{

  return sub_222D93798((v0 - 112), (v0 - 144));
}

_OWORD *OUTLINED_FUNCTION_12_0()
{
  *(v2 - 152) = v1;

  return sub_222D937A8((v2 - 144), 0xD000000000000010, v0 | 0x8000000000000000);
}

void *OUTLINED_FUNCTION_16_0(uint64_t a1)
{
  *(v2 - 96) = v1;

  return sub_222DA54A8(0, a1 & ~(a1 >> 63), 0);
}

uint64_t OUTLINED_FUNCTION_23_0()
{
  v1 = *v0;
  if (*v0 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

_OWORD *OUTLINED_FUNCTION_26_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13, uint64_t a14, uint64_t a15, __int128 a16)
{

  return sub_222D93798(&a16, &a13);
}

uint64_t OUTLINED_FUNCTION_27_0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 + 32);
}

void OUTLINED_FUNCTION_28_0()
{
  *(v1 - 96) = v0;
  v2 = *(v0 + 24);
  v3 = *(v0 + 16) + 1;
}

_OWORD *OUTLINED_FUNCTION_38_0()
{

  return sub_222D937A8((v2 - 144), v1 | 1, v0 | 0x8000000000000000);
}

uint64_t ContactResolutionVerb.rawValue.getter()
{
  result = 0x6361466F54646461;
  switch(*v0)
  {
    case 1:
      return result;
    case 2:
      result = OUTLINED_FUNCTION_47();
      break;
    case 3:
      result = 0x6567617373656DLL;
      break;
    case 4:
      result = OUTLINED_FUNCTION_18();
      break;
    case 5:
      result = 0x6E6F697461636F6CLL;
      break;
    case 6:
      result = 0x726568746FLL;
      break;
    default:
      result = 0xD000000000000018;
      break;
  }

  return result;
}

uint64_t ContactResolutionIntentType.rawValue.getter()
{
  result = 0x656D697465636166;
  switch(*v0)
  {
    case 1:
      return result;
    case 2:
      v2 = 1684956531;
      goto LABEL_5;
    case 3:
      result = OUTLINED_FUNCTION_18();
      break;
    case 4:
      v2 = 1684104562;
LABEL_5:
      result = v2 | 0x7373654D00000000;
      break;
    case 5:
      result = 0x726568746FLL;
      break;
    default:
      result = 0xD00000000000001CLL;
      break;
  }

  return result;
}

SiriInferenceFlow::ContactResolutionPatternID_optional __swiftcall ContactResolutionPatternID.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_0_3();
  sub_222DDB960();
  result.value = OUTLINED_FUNCTION_4_2();
  v4 = 11;
  if (v2 < 0xB)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

unint64_t ContactResolutionPatternID.rawValue.getter()
{
  result = 0xD000000000000025;
  switch(*v0)
  {
    case 1:
      result = 0xD00000000000002ALL;
      break;
    case 2:
    case 7:
      result = 0xD000000000000029;
      break;
    case 3:
      result = 0xD00000000000002ELL;
      break;
    case 4:
      result = 0xD000000000000027;
      break;
    case 5:
      result = 0xD000000000000031;
      break;
    case 6:
      result = 0xD000000000000036;
      break;
    case 8:
      result = 0xD000000000000024;
      break;
    case 9:
      result = 0xD000000000000034;
      break;
    case 0xA:
      result = 0xD000000000000041;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_222D9652C@<X0>(unint64_t *a1@<X8>)
{
  result = ContactResolutionPatternID.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

SiriInferenceFlow::ContactResolutionCatId_optional __swiftcall ContactResolutionCatId.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_0_3();
  sub_222DDB960();
  result.value = OUTLINED_FUNCTION_4_2();
  v4 = 10;
  if (v2 < 0xA)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

unint64_t ContactResolutionCatId.rawValue.getter()
{
  result = 0xD000000000000031;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000030;
      break;
    case 2:
      result = 0xD00000000000002ELL;
      break;
    case 3:
      result = 0xD000000000000048;
      break;
    case 4:
      result = 0xD00000000000003BLL;
      break;
    case 5:
      result = 0xD00000000000002CLL;
      break;
    case 6:
      result = 0xD00000000000001CLL;
      break;
    case 7:
      result = 0xD00000000000001BLL;
      break;
    case 8:
      result = 0xD00000000000001DLL;
      break;
    case 9:
      result = 0xD00000000000001ALL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_222D966C8@<X0>(unint64_t *a1@<X8>)
{
  result = ContactResolutionCatId.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

SiriInferenceFlow::ContactResolutionIntentType_optional __swiftcall ContactResolutionIntentType.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_0_3();
  sub_222DDB960();
  result.value = OUTLINED_FUNCTION_4_2();
  v4 = 6;
  if (v2 < 6)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_222D96758()
{
  v0 = sub_222DDB960();

  if (v0 >= 9)
  {
    return 9;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_222D967A4(char a1)
{
  result = 0x6562614C656D6173;
  switch(a1)
  {
    case 1:
    case 5:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0xD000000000000016;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 6:
    case 7:
      return result;
    case 8:
      result = 0xD000000000000010;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_222D968A4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_222D90E30();
}

uint64_t sub_222D968D4@<X0>(uint64_t *a1@<X8>)
{
  result = ContactResolutionIntentType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_222D96920@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_222D96758();
  *a2 = result;
  return result;
}

unint64_t sub_222D96950@<X0>(unint64_t *a1@<X8>)
{
  result = sub_222D967A4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

SiriInferenceFlow::ContactInferenceSource_optional __swiftcall ContactInferenceSource.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_0_3();
  sub_222DDB960();
  result.value = OUTLINED_FUNCTION_4_2();
  v4 = 6;
  if (v2 < 6)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

uint64_t ContactInferenceSource.rawValue.getter()
{
  result = 0x747369486C6C6163;
  switch(*v0)
  {
    case 1:
    case 3:
      result = 0x736567617373656DLL;
      break;
    case 2:
      result = 1818845549;
      break;
    case 4:
      result = 0x707041726568746FLL;
      break;
    case 5:
      result = 1701736302;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_222D96AA0@<X0>(uint64_t *a1@<X8>)
{
  result = ContactInferenceSource.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

SiriInferenceFlow::ContactResolutionVerb_optional __swiftcall ContactResolutionVerb.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_0_3();
  sub_222DDB960();
  result.value = OUTLINED_FUNCTION_4_2();
  v4 = 7;
  if (v2 < 7)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_222D96B14(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_222D91488();
}

uint64_t sub_222D96B44@<X0>(uint64_t *a1@<X8>)
{
  result = ContactResolutionVerb.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

SiriInferenceFlow::ContactResolutionCommonKeys_optional __swiftcall ContactResolutionCommonKeys.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_0_3();
  sub_222DDB960();
  result.value = OUTLINED_FUNCTION_4_2();
  v4 = 3;
  if (v2 < 3)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

uint64_t ContactResolutionCommonKeys.rawValue.getter()
{
  v1 = 0x6E6F74747562;
  if (*v0 != 1)
  {
    v1 = 0x7865646E69;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x49746361746E6F63;
  }
}

uint64_t sub_222D96C40@<X0>(uint64_t *a1@<X8>)
{
  result = ContactResolutionCommonKeys.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t ContactResolutionPatternError.hashValue.getter()
{
  v1 = *v0;
  sub_222DDBB60();
  MEMORY[0x223DCE8B0](v1);
  return sub_222DDBB90();
}

uint64_t sub_222D96CFC()
{
  v1 = *v0;
  sub_222DDBB60();
  MEMORY[0x223DCE8B0](v1);
  return sub_222DDBB90();
}

SiriInferenceFlow::DomainDialog_optional __swiftcall DomainDialog.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_0_3();
  sub_222DDB960();
  result.value = OUTLINED_FUNCTION_4_2();
  v4 = 6;
  if (v2 < 6)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

uint64_t DomainDialog.rawValue.getter()
{
  result = 0x736567617373656DLL;
  switch(*v0)
  {
    case 1:
      result = OUTLINED_FUNCTION_47();
      break;
    case 2:
      result = 0x656E6F6870;
      break;
    case 3:
      result = OUTLINED_FUNCTION_18();
      break;
    case 4:
      result = 0x7265646E696D6572;
      break;
    case 5:
      result = 0x746C7561666564;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_222D96E18()
{
  result = qword_27D047B50;
  if (!qword_27D047B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D047B50);
  }

  return result;
}

unint64_t sub_222D96E70()
{
  result = qword_27D047B58;
  if (!qword_27D047B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D047B58);
  }

  return result;
}

unint64_t sub_222D96EC8()
{
  result = qword_27D047B60;
  if (!qword_27D047B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D047B60);
  }

  return result;
}

unint64_t sub_222D96F20()
{
  result = qword_27D047B68;
  if (!qword_27D047B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D047B68);
  }

  return result;
}

unint64_t sub_222D96F78()
{
  result = qword_27D047B70;
  if (!qword_27D047B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D047B70);
  }

  return result;
}

unint64_t sub_222D96FD0()
{
  result = qword_27D047B78;
  if (!qword_27D047B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D047B78);
  }

  return result;
}

unint64_t sub_222D97028()
{
  result = qword_27D047B80;
  if (!qword_27D047B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D047B80);
  }

  return result;
}

uint64_t sub_222D9707C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_222D918E8();
}

unint64_t sub_222D9708C()
{
  result = qword_27D047B88;
  if (!qword_27D047B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D047B88);
  }

  return result;
}

uint64_t sub_222D97104@<X0>(uint64_t *a1@<X8>)
{
  result = DomainDialog.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for ContactResolutionPatternID(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF6)
  {
    if (a2 + 10 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 10) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 11;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v5 = v6 - 11;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ContactResolutionPatternID(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ContactResolutionCatId(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF7)
  {
    if (a2 + 9 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 9) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 10;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v5 = v6 - 10;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ContactResolutionCatId(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ContactResolutionVerb(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
    if (a2 + 6 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 6) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ContactResolutionVerb(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ContactResolutionCommonKeys(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for ContactResolutionCommonKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for ContactResolutionPatternError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ContactHandle.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
    if (a2 + 5 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 5) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_222D978D4(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_222D979AC()
{
  result = qword_27D047B90;
  if (!qword_27D047B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D047B90);
  }

  return result;
}

uint64_t sub_222D97A00(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
    if (a2 + 8 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 8) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_222D97A88(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_222D97B64()
{
  result = qword_27D047B98;
  if (!qword_27D047B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D047B98);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_2()
{
}

uint64_t ContactResolutionPatternGenerator.__allocating_init(appBundleId:globals:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_52_0();
  v6 = swift_allocObject();
  ContactResolutionPatternGenerator.init(appBundleId:globals:)(a1, a2, a3);
  return v6;
}

void *ContactResolutionPatternGenerator.init(appBundleId:globals:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  sub_222DDA910();
  sub_222D97C84(&v5, (v3 + 5));
  return v3;
}

uint64_t sub_222D97C84(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *ContactResolutionPatternGenerator.__allocating_init(appBundleId:globals:deviceState:)(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  OUTLINED_FUNCTION_52_0();
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  sub_222D97C84(a4, (v8 + 5));
  return v8;
}

void *ContactResolutionPatternGenerator.init(appBundleId:globals:deviceState:)(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  sub_222D97C84(a4, (v4 + 5));
  return v4;
}

uint64_t static ContactResolutionPatternGenerator.generateYesNoClarificationContactName(contact:contactVerb:primaryButtonInvocationID:secondaryButtonInvocationID:globals:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 136) = a7;
  *(v8 + 144) = v7;
  *(v8 + 120) = a5;
  *(v8 + 128) = a6;
  *(v8 + 104) = a3;
  *(v8 + 112) = a4;
  *(v8 + 96) = a1;
  *(v8 + 185) = *a2;
  return OUTLINED_FUNCTION_1_3();
}

uint64_t sub_222D97D50()
{
  OUTLINED_FUNCTION_14_1();
  v1 = *(v0 + 185);
  v3 = *(v0 + 136);
  v2 = *(v0 + 144);
  *(v0 + 152) = swift_initStackObject();
  OUTLINED_FUNCTION_23_1(v3);
  *(v0 + 184) = v1;
  v4 = swift_task_alloc();
  *(v0 + 160) = v4;
  *v4 = v0;
  v4[1] = sub_222D97E1C;
  v5 = *(v0 + 120);
  v6 = *(v0 + 128);
  v7 = *(v0 + 104);
  v8 = *(v0 + 112);
  v9 = *(v0 + 96);

  return ContactResolutionPatternGenerator.generateYesNoClarificationContactName(contact:contactVerb:primaryButtonInvocationID:secondaryButtonInvocationID:)(v9, (v0 + 184), v7, v8, v5, v6);
}

uint64_t sub_222D97E1C()
{
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_5_2();
  v4 = v3;
  OUTLINED_FUNCTION_4_3();
  *v5 = v4;
  v7 = *(v6 + 160);
  v8 = *v2;
  OUTLINED_FUNCTION_3_3();
  *v9 = v8;
  *(v4 + 168) = v0;

  if (!v0)
  {
    *(v4 + 176) = v1;
  }

  OUTLINED_FUNCTION_6_2();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_222D97F20()
{
  OUTLINED_FUNCTION_12_1();
  v1 = *(v0 + 152);

  OUTLINED_FUNCTION_20_1();
  v3 = *(v0 + 176);

  return v2(v3);
}

uint64_t sub_222D97F80()
{
  OUTLINED_FUNCTION_12_1();
  v1 = *(v0 + 152);

  OUTLINED_FUNCTION_29_1();
  v3 = *(v0 + 168);

  return v2();
}

uint64_t ContactResolutionPatternGenerator.generateYesNoClarificationContactName(contact:contactVerb:primaryButtonInvocationID:secondaryButtonInvocationID:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 248) = a6;
  *(v7 + 256) = v6;
  *(v7 + 232) = a4;
  *(v7 + 240) = a5;
  *(v7 + 216) = a1;
  *(v7 + 224) = a3;
  *(v7 + 264) = *v6;
  *(v7 + 329) = *a2;
  return OUTLINED_FUNCTION_1_3();
}

uint64_t sub_222D98028()
{
  if (qword_27D0475B0 != -1)
  {
    OUTLINED_FUNCTION_0_4();
  }

  v1 = sub_222DDB3E0();
  __swift_project_value_buffer(v1, qword_27D04C928);
  v2 = sub_222DDB3C0();
  sub_222DDB6D0();
  OUTLINED_FUNCTION_37_1();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = OUTLINED_FUNCTION_43_0();
    OUTLINED_FUNCTION_35_0(v4);
    OUTLINED_FUNCTION_17_1(&dword_222D8A000, v5, v6, "ContactResolutionPatternGenerator::generateYesNoClarificationContactName");
    OUTLINED_FUNCTION_24_1();
  }

  v7 = *(v0 + 256);
  v8 = *(v0 + 216);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0487F0, &unk_222DDD310);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_222DDD2F0;
  *(inited + 32) = v8;
  v10 = v8;
  sub_222D9E144();
  swift_setDeallocating();
  sub_222D9DF30();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_222DDD2F0;
  *(v11 + 32) = v10;
  v13 = v7[3];
  v12 = v7[4];
  v14 = v7[2];
  v15 = v10;
  OUTLINED_FUNCTION_57();
  static ContactResolutionHelper.makeContactDialogPersons(inpersons:directInvocationID:deviceState:globals:appBundleId:)();
  v17 = v16;

  if ((v17 & 0xC000000000000001) != 0)
  {
    v19 = MEMORY[0x223DCE590](0, v17);
  }

  else
  {
    if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v19 = *(v17 + 32);
  }

  *(v0 + 272) = v19;
  v20 = *(v0 + 224);
  v21 = *(v0 + 232);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047B40, &unk_222DDD450);
  v22 = swift_initStackObject();
  *(v22 + 16) = xmmword_222DDC9B0;
  v23 = MEMORY[0x277D837D0];
  *(v22 + 32) = 0x6E6F74747562;
  *(v22 + 40) = 0xE600000000000000;
  *(v22 + 72) = v23;
  OUTLINED_FUNCTION_8_2(v22);
  v24 = sub_222DDB460();
  sub_222D9F1C0(v20, v21, v24, v7 + 5);
  *(v0 + 280) = v25;
  v27 = *(v0 + 240);
  v26 = *(v0 + 248);

  v28 = swift_initStackObject();
  v29 = OUTLINED_FUNCTION_15_1(v28, xmmword_222DDC9B0);
  v29[2].n128_u64[0] = v30;
  v29[4].n128_u64[1] = v23;
  OUTLINED_FUNCTION_40_0(v29);
  v31 = sub_222DDB460();
  sub_222D9F1C0(v27, v26, v31, v7 + 5);
  *(v0 + 288) = v32;
  LOBYTE(v26) = *(v0 + 329);

  *(v0 + 296) = sub_222D943DC(v33, v34, v35, v36, v37, v38, v39, v40);
  v41 = sub_222DDB3C0();
  sub_222DDB6D0();
  OUTLINED_FUNCTION_18_1();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = OUTLINED_FUNCTION_43_0();
    OUTLINED_FUNCTION_41_0(v43);
    OUTLINED_FUNCTION_22_1(&dword_222D8A000, v44, v45, "ContactResolutionPatternGenerator::generateYesNoClarificationContactName - Creating YesNoClarification::ContactName View");
    OUTLINED_FUNCTION_27_1();
  }

  v46 = *(v0 + 264);

  *(v0 + 328) = 0;
  v47 = swift_task_alloc();
  *(v0 + 304) = v47;
  *v47 = v0;
  v47[1] = sub_222D9843C;
  OUTLINED_FUNCTION_47_0();

  return sub_222D9863C(v48, v49, v50);
}

uint64_t sub_222D9843C()
{
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_5_2();
  v4 = v3;
  OUTLINED_FUNCTION_4_3();
  *v5 = v4;
  v7 = *(v6 + 304);
  v8 = *v2;
  OUTLINED_FUNCTION_3_3();
  *v9 = v8;
  v4[39] = v0;

  v10 = v4[37];

  if (!v0)
  {
    v4[40] = v1;
  }

  OUTLINED_FUNCTION_6_2();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_222D98550()
{
  OUTLINED_FUNCTION_12_1();
  v1 = v0[35];
  v2 = v0[36];
  v3 = v0[34];

  OUTLINED_FUNCTION_20_1();
  v5 = v0[40];

  return v4(v5);
}

uint64_t sub_222D985C8()
{
  OUTLINED_FUNCTION_12_1();
  v1 = v0[35];
  v2 = v0[36];
  v3 = v0[34];

  v4 = v0[39];
  OUTLINED_FUNCTION_29_1();

  return v5();
}

uint64_t sub_222D9863C(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 64) = a3;
  *(v4 + 72) = v3;
  *(v4 + 56) = a2;
  v6 = sub_222DDB3B0();
  *(v4 + 80) = v6;
  v7 = *(v6 - 8);
  *(v4 + 88) = v7;
  v8 = *(v7 + 64) + 15;
  *(v4 + 96) = swift_task_alloc();
  *(v4 + 136) = *a1;

  return MEMORY[0x2822009F8](sub_222D9870C, 0, 0);
}

uint64_t sub_222D9870C()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 72);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() bundleForClass_];
  *(v0 + 104) = v4;
  v5 = 0xD000000000000025;
  v6 = "imageData";
  v7 = v4;
  switch(v1)
  {
    case 1:
      v6 = "rificationContactName";
      v5 = 0xD00000000000002ALL;
      break;
    case 2:
      v8 = "contact#SimpleDisambiguationContactLabels";
      goto LABEL_8;
    case 3:
      v6 = "sambiguationContactLabels";
      v5 = 0xD00000000000002ELL;
      break;
    case 4:
      v6 = "sambiguationAlternativeHandles";
      v5 = 0xD000000000000027;
      break;
    case 5:
      v6 = "sambiguationMixedLabels";
      v5 = 0xD000000000000031;
      break;
    case 6:
      v6 = "AlternativeHandle";
      v5 = 0xD000000000000036;
      break;
    case 7:
      v8 = "contact#DetailedDisambiguationMixedLabels";
LABEL_8:
      v6 = (v8 - 32);
      v5 = 0xD000000000000029;
      break;
    case 8:
      v6 = "DisambiguationMixedLabels";
      v5 = 0xD000000000000024;
      break;
    case 9:
      v6 = "dClarificationTarget";
      v5 = 0xD000000000000034;
      break;
    case 10:
      v6 = "xedLabelsNoWindowing";
      v5 = 0xD000000000000041;
      break;
    default:
      break;
  }

  *(v0 + 112) = v6;
  v9 = *(v0 + 96);
  sub_222DDB1D0();
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  sub_222DDB3A0();
  v10 = *(MEMORY[0x277D55C30] + 4);
  v11 = swift_task_alloc();
  *(v0 + 120) = v11;
  *v11 = v0;
  v11[1] = sub_222D98930;
  v12 = *(v0 + 96);
  v13 = *(v0 + 56);
  v14 = *(v0 + 64);

  return MEMORY[0x2821B7E60](v7, v5, v6 | 0x8000000000000000, v13, v14, v0 + 16, v12);
}

uint64_t sub_222D98930()
{
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_3_3();
  *v4 = v3;
  v5 = v2[15];
  v6 = v2[14];
  v7 = v2[13];
  v8 = *v1;
  *v4 = *v1;
  v3[16] = v0;

  (*(v2[11] + 8))(v2[12], v2[10]);
  sub_222D9E37C((v3 + 2));
  if (!v0)
  {

    v13 = v8[1];
    OUTLINED_FUNCTION_70();

    __asm { BRAA            X2, X16 }
  }

  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_70();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_222D98B0C()
{
  OUTLINED_FUNCTION_12_1();
  v1 = *(v0 + 96);

  OUTLINED_FUNCTION_29_1();
  v3 = *(v0 + 128);

  return v2();
}

uint64_t static ContactResolutionPatternGenerator.generateDetailedDisambiguationContactNames(contacts:contactPickerDirectInvocationID:contactSelectionDirectInvocationID:windowedPaginationParameters:globals:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[16] = a7;
  v8[17] = v7;
  v8[14] = a5;
  v8[15] = a6;
  v8[12] = a1;
  v8[13] = a4;
  return OUTLINED_FUNCTION_1_3();
}

uint64_t sub_222D98B84()
{
  OUTLINED_FUNCTION_12_1();
  v2 = v0[16];
  v1 = v0[17];
  v0[18] = swift_initStackObject();
  OUTLINED_FUNCTION_23_1(v2);
  v3 = swift_task_alloc();
  v0[19] = v3;
  *v3 = v0;
  v3[1] = sub_222D98C28;
  OUTLINED_FUNCTION_36_0();

  return ContactResolutionPatternGenerator.generateDetailedDisambiguationContactNames(contacts:contactSelectionDirectInvocationID:windowedPaginationParameters:)();
}

uint64_t sub_222D98C28()
{
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_5_2();
  v4 = v3;
  OUTLINED_FUNCTION_4_3();
  *v5 = v4;
  v7 = *(v6 + 152);
  v8 = *v2;
  OUTLINED_FUNCTION_3_3();
  *v9 = v8;
  *(v4 + 160) = v0;

  if (!v0)
  {
    *(v4 + 168) = v1;
  }

  OUTLINED_FUNCTION_6_2();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_222D98D2C()
{
  OUTLINED_FUNCTION_12_1();
  v1 = *(v0 + 144);

  OUTLINED_FUNCTION_20_1();
  v3 = *(v0 + 168);

  return v2(v3);
}

uint64_t sub_222D98D8C()
{
  OUTLINED_FUNCTION_12_1();
  v1 = *(v0 + 144);

  OUTLINED_FUNCTION_29_1();
  v3 = *(v0 + 160);

  return v2();
}

uint64_t ContactResolutionPatternGenerator.generateDetailedDisambiguationContactNames(contacts:contactPickerDirectInvocationID:contactSelectionDirectInvocationID:windowedPaginationParameters:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_222D98EA4;

  return ContactResolutionPatternGenerator.generateDetailedDisambiguationContactNames(contacts:contactSelectionDirectInvocationID:windowedPaginationParameters:)();
}

uint64_t sub_222D98EA4()
{
  OUTLINED_FUNCTION_12_1();
  v3 = v2;
  v4 = *(*v1 + 16);
  v5 = *v1;
  OUTLINED_FUNCTION_3_3();
  *v6 = v5;

  OUTLINED_FUNCTION_20_1();
  if (!v0)
  {
    v7 = v3;
  }

  return v8(v7);
}

uint64_t ContactResolutionPatternGenerator.generateDetailedDisambiguationContactNames(contacts:contactSelectionDirectInvocationID:windowedPaginationParameters:)()
{
  OUTLINED_FUNCTION_12_1();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v1[2] = v5;
  v1[7] = *v0;
  v6 = type metadata accessor for ContactResolutionDisambiguationParameters(0);
  v1[8] = v6;
  OUTLINED_FUNCTION_8(v6);
  v8 = *(v7 + 64);
  v1[9] = OUTLINED_FUNCTION_48_0();
  v9 = OUTLINED_FUNCTION_45_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_222D99040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_49_0();
  if (qword_27D0475B0 != -1)
  {
    OUTLINED_FUNCTION_0_4();
  }

  v13 = sub_222DDB3E0();
  v14 = __swift_project_value_buffer(v13, qword_27D04C928);
  v15 = sub_222DDB3C0();
  sub_222DDB6D0();
  OUTLINED_FUNCTION_18_1();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = OUTLINED_FUNCTION_43_0();
    OUTLINED_FUNCTION_19_1(v17);
    OUTLINED_FUNCTION_9_1(&dword_222D8A000, v18, v19, "ContactResolutionPatternGenerator::generateDetailedDisambiguationContactNames");
    OUTLINED_FUNCTION_16_1();
  }

  v20 = *(v12 + 16);

  if (sub_222DA8780(v20))
  {
    v21 = *(v12 + 48);
    v23 = *(v12 + 24);
    v22 = *(v12 + 32);
    v24 = *(v12 + 16);
    sub_222D9E144();
    sub_222D9F3E0();
    v26 = v25;
    v27 = v21[3];
    v28 = v21[4];
    v29 = v21[2];
    static ContactResolutionHelper.makeContactDialogPersons(inpersons:directInvocationID:deviceState:globals:appBundleId:)();
    v31 = v30;
    v33 = *(v12 + 64);
    v32 = *(v12 + 72);
    v34 = *(v12 + 40);
    v35 = sub_222D9FAB0(v30);
    sub_222D95E6C(v34, v32 + v33[5]);
    *v32 = v31;
    *(v32 + v33[6]) = v26 & 1;
    *(v32 + v33[7]) = v35 & 1;
    *(v12 + 80) = sub_222D945EC();
    v52 = sub_222DDB3C0();
    sub_222DDB6D0();
    OUTLINED_FUNCTION_37_1();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = OUTLINED_FUNCTION_43_0();
      OUTLINED_FUNCTION_35_0(v54);
      _os_log_impl(&dword_222D8A000, v52, OS_LOG_TYPE_DEFAULT, "ContactResolutionPatternGenerator::generateDetailedDisambiguationContactNames - Creating DetailedDisambiguation::ContactName View", v14, 2u);
      OUTLINED_FUNCTION_24_1();
    }

    v55 = *(v12 + 56);

    *(v12 + 112) = 1;
    v56 = swift_task_alloc();
    *(v12 + 88) = v56;
    *v56 = v12;
    v56[1] = sub_222D99324;
    OUTLINED_FUNCTION_31_1();

    return sub_222D9863C(v57, v58, v59);
  }

  else
  {
    v36 = sub_222DDB3C0();
    sub_222DDB6C0();
    OUTLINED_FUNCTION_18_1();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = OUTLINED_FUNCTION_43_0();
      OUTLINED_FUNCTION_19_1(v38);
      OUTLINED_FUNCTION_9_1(&dword_222D8A000, v39, v40, "ContactResolutionPatternGenerator::generateDetailedDisambiguationContactNames - Cannot create view with empty input array!");
      OUTLINED_FUNCTION_16_1();
    }

    sub_222D95EDC();
    OUTLINED_FUNCTION_50_0();
    *v41 = 0;
    swift_willThrow();
    v42 = *(v12 + 72);

    OUTLINED_FUNCTION_29_1();
    OUTLINED_FUNCTION_31_1();

    return v44(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12);
  }
}

uint64_t sub_222D99324()
{
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_5_2();
  v4 = v3;
  OUTLINED_FUNCTION_4_3();
  *v5 = v4;
  v7 = *(v6 + 88);
  v8 = *v2;
  OUTLINED_FUNCTION_3_3();
  *v9 = v8;
  v4[12] = v0;

  v10 = v4[10];

  if (!v0)
  {
    v4[13] = v1;
  }

  OUTLINED_FUNCTION_6_2();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_222D99438()
{
  OUTLINED_FUNCTION_12_1();
  v1 = *(v0 + 72);
  OUTLINED_FUNCTION_7_2();
  sub_222D9E2B8(v1, v2);

  OUTLINED_FUNCTION_20_1();
  v4 = *(v0 + 104);

  return v3(v4);
}

uint64_t sub_222D994A8()
{
  OUTLINED_FUNCTION_12_1();
  v1 = *(v0 + 72);
  OUTLINED_FUNCTION_7_2();
  sub_222D9E2B8(v2, v3);
  v4 = *(v0 + 96);
  v5 = *(v0 + 72);

  OUTLINED_FUNCTION_29_1();

  return v6();
}

uint64_t static ContactResolutionPatternGenerator.generateSimpleDisambiguationUniqueLabels(contacts:directInvocationID:globals:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[15] = a4;
  v5[16] = v4;
  v5[13] = a2;
  v5[14] = a3;
  v5[12] = a1;
  return OUTLINED_FUNCTION_1_3();
}

uint64_t sub_222D9952C()
{
  OUTLINED_FUNCTION_12_1();
  v2 = v0[15];
  v1 = v0[16];
  v0[17] = swift_initStackObject();
  OUTLINED_FUNCTION_23_1(v2);
  v3 = swift_task_alloc();
  v0[18] = v3;
  *v3 = v0;
  v3[1] = sub_222D995D0;
  OUTLINED_FUNCTION_11_1();

  return ContactResolutionPatternGenerator.generateSimpleDisambiguationUniqueLabels(contacts:directInvocationID:)();
}

uint64_t sub_222D995D0()
{
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_5_2();
  v4 = v3;
  OUTLINED_FUNCTION_4_3();
  *v5 = v4;
  v7 = *(v6 + 144);
  v8 = *v2;
  OUTLINED_FUNCTION_3_3();
  *v9 = v8;
  *(v4 + 152) = v0;

  if (!v0)
  {
    *(v4 + 160) = v1;
  }

  OUTLINED_FUNCTION_6_2();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t ContactResolutionPatternGenerator.generateSimpleDisambiguationUniqueLabels(contacts:directInvocationID:)()
{
  OUTLINED_FUNCTION_12_1();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v1[6] = *v0;
  v5 = sub_222DDA770();
  v1[7] = v5;
  OUTLINED_FUNCTION_10_1(v5);
  v1[8] = v6;
  v8 = *(v7 + 64);
  v1[9] = OUTLINED_FUNCTION_48_0();
  v9 = OUTLINED_FUNCTION_45_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_222D997A4()
{
  if (qword_27D0475B0 != -1)
  {
    OUTLINED_FUNCTION_0_4();
  }

  v1 = sub_222DDB3E0();
  v2 = __swift_project_value_buffer(v1, qword_27D04C928);
  v3 = sub_222DDB3C0();
  sub_222DDB6D0();
  OUTLINED_FUNCTION_18_1();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_43_0();
    OUTLINED_FUNCTION_19_1(v5);
    OUTLINED_FUNCTION_9_1(&dword_222D8A000, v6, v7, "ContactResolutionPatternGenerator::generateSimpleDisambiguationUniqueLabels");
    OUTLINED_FUNCTION_16_1();
  }

  v8 = *(v0 + 16);

  if (!sub_222DA8780(v8))
  {
    v17 = sub_222DDB3C0();
    sub_222DDB6C0();
    OUTLINED_FUNCTION_18_1();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = OUTLINED_FUNCTION_43_0();
      OUTLINED_FUNCTION_19_1(v19);
      OUTLINED_FUNCTION_9_1(&dword_222D8A000, v20, v21, "ContactResolutionPatternGenerator::generateSimpleDisambiguationUniqueLabels - Cannot create view with empty input array!");
      OUTLINED_FUNCTION_16_1();
    }

    sub_222D95EDC();
    v22 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_38_1(v22, v23);
    v24 = *(v0 + 72);

    OUTLINED_FUNCTION_29_1();
    OUTLINED_FUNCTION_55();

    __asm { BRAA            X1, X16 }
  }

  v9 = *(v0 + 32);
  v10 = *(v0 + 40);
  v12 = *(v0 + 16);
  v11 = *(v0 + 24);
  sub_222D9E144();
  v13 = v10[3];
  v14 = v10[4];
  v15 = v10[2];
  static ContactResolutionHelper.makeContactDialogPersons(inpersons:directInvocationID:deviceState:globals:appBundleId:)();
  v16 = *(v0 + 16);
  sub_222DA3C38();
  v28 = *(v0 + 64);
  v27 = *(v0 + 72);
  OUTLINED_FUNCTION_44_0();
  v31 = *(v29 + 64);
  v43 = *(v29 + 72);
  v44 = v30;
  OUTLINED_FUNCTION_59(v10 + 5);
  sub_222DDA4A0();
  (*(v28 + 8))(v27, v44);
  *(v0 + 80) = OUTLINED_FUNCTION_66();

  v32 = sub_222DDB3C0();
  v33 = sub_222DDB6D0();
  if (OUTLINED_FUNCTION_58(v33))
  {
    v34 = OUTLINED_FUNCTION_43_0();
    OUTLINED_FUNCTION_41_0(v34);
    OUTLINED_FUNCTION_26_1(&dword_222D8A000, v35, v2, "ContactResolutionPatternGenerator::generateSimpleDisambiguationUniqueLabels - Creating SimpleDisambiguation::UniqueLabels View");
    OUTLINED_FUNCTION_27_1();
  }

  v36 = *(v0 + 48);

  *(v0 + 104) = 2;
  v37 = swift_task_alloc();
  *(v0 + 88) = v37;
  *v37 = v0;
  OUTLINED_FUNCTION_21_1(v37);
  OUTLINED_FUNCTION_55();

  return sub_222D9863C(v38, v39, v40);
}

uint64_t sub_222D99A74()
{
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_5_2();
  v4 = v3;
  OUTLINED_FUNCTION_4_3();
  *v5 = v4;
  v7 = *(v6 + 88);
  v8 = *v2;
  OUTLINED_FUNCTION_3_3();
  *v9 = v8;
  v4[12] = v0;

  if (v0)
  {
    v10 = v4[10];

    v11 = OUTLINED_FUNCTION_45_0();

    return MEMORY[0x2822009F8](v11, v12, v13);
  }

  else
  {
    v15 = v4[9];
    v14 = v4[10];

    OUTLINED_FUNCTION_20_1();

    return v16(v1);
  }
}

uint64_t static ContactResolutionPatternGenerator.generateSimpleDisambiguationAlternativeHandles(contacts:unavailableLabel:directInvocationID:globals:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[17] = a6;
  v7[18] = v6;
  v7[15] = a4;
  v7[16] = a5;
  v7[13] = a2;
  v7[14] = a3;
  v7[12] = a1;
  return OUTLINED_FUNCTION_1_3();
}

uint64_t sub_222D99BD0()
{
  OUTLINED_FUNCTION_12_1();
  v2 = v0[17];
  v1 = v0[18];
  v0[19] = swift_initStackObject();
  OUTLINED_FUNCTION_23_1(v2);
  v3 = swift_task_alloc();
  v0[20] = v3;
  *v3 = v0;
  v3[1] = sub_222D99C78;
  v4 = v0[15];
  v5 = v0[16];
  OUTLINED_FUNCTION_11_1();

  return ContactResolutionPatternGenerator.generateSimpleDisambiguationAlternativeHandles(contacts:unavailableLabel:directInvocationID:)();
}

uint64_t sub_222D99C78()
{
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_5_2();
  v4 = v3;
  OUTLINED_FUNCTION_4_3();
  *v5 = v4;
  v7 = *(v6 + 160);
  v8 = *v2;
  OUTLINED_FUNCTION_3_3();
  *v9 = v8;
  *(v4 + 168) = v0;

  if (!v0)
  {
    *(v4 + 176) = v1;
  }

  OUTLINED_FUNCTION_6_2();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t ContactResolutionPatternGenerator.generateSimpleDisambiguationAlternativeHandles(contacts:unavailableLabel:directInvocationID:)()
{
  OUTLINED_FUNCTION_12_1();
  v1[11] = v2;
  v1[12] = v0;
  v1[9] = v3;
  v1[10] = v4;
  v1[7] = v5;
  v1[8] = v6;
  v1[13] = *v0;
  v7 = sub_222DDA770();
  v1[14] = v7;
  OUTLINED_FUNCTION_10_1(v7);
  v1[15] = v8;
  v10 = *(v9 + 64);
  v1[16] = OUTLINED_FUNCTION_48_0();
  v11 = OUTLINED_FUNCTION_45_0();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_222D99E50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_63();
  if (qword_27D0475B0 != -1)
  {
    OUTLINED_FUNCTION_0_4();
  }

  v17 = sub_222DDB3E0();
  v18 = OUTLINED_FUNCTION_61(v17, qword_27D04C928);
  sub_222DDB6D0();
  OUTLINED_FUNCTION_37_1();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = OUTLINED_FUNCTION_43_0();
    OUTLINED_FUNCTION_35_0(v20);
    OUTLINED_FUNCTION_17_1(&dword_222D8A000, v21, v22, "ContactResolutionPatternGenerator::generateSimpleDisambiguationAlternativeHandles");
    OUTLINED_FUNCTION_24_1();
  }

  v23 = *(v16 + 56);

  sub_222D9E144();
  if (sub_222DA8780(v23))
  {
    v24 = *(v16 + 56);
    sub_222DA3C38();
    if ((v26 & 1) == 0)
    {
      if (v25 == 2)
      {
        v28 = 0;
        v27 = 1;
LABEL_14:
        v36 = *(v16 + 88);
        v37 = *(v16 + 96);
        v38 = *(v16 + 80);
        v39 = *(v16 + 56);
        v40 = v37[3];
        v41 = v37[4];
        v42 = v37[2];
        static ContactResolutionHelper.makeContactDialogPersons(inpersons:directInvocationID:deviceState:globals:appBundleId:)();
        v54 = v43;
        v56 = *(v16 + 120);
        v55 = *(v16 + 128);
        v57 = *(v16 + 96);
        v75 = v27;
        v76 = v28;
        v58 = *(v16 + 72);
        v73 = *(v16 + 112);
        v74 = *(v16 + 64);
        v59 = *(v57 + 64);
        v60 = *(v57 + 72);
        OUTLINED_FUNCTION_59(v37 + 5);
        v61 = sub_222DDA4A0();
        (*(v56 + 8))(v55, v73);
        *(v16 + 16) = v54;
        *(v16 + 24) = (v61 & 1) == 0;
        *(v16 + 32) = v74;
        *(v16 + 40) = v58;
        *(v16 + 48) = v75;
        *(v16 + 49) = v76;

        *(v16 + 136) = sub_222D949EC();

        v62 = sub_222DDB3C0();
        sub_222DDB6D0();
        OUTLINED_FUNCTION_18_1();
        if (os_log_type_enabled(v62, v63))
        {
          v64 = OUTLINED_FUNCTION_43_0();
          OUTLINED_FUNCTION_41_0(v64);
          OUTLINED_FUNCTION_22_1(&dword_222D8A000, v65, v66, "ContactResolutionPatternGenerator::generateSimpleDisambiguationAlternativeHandles - Creating SimpleDisambiguation::AlternativeHandles View");
          OUTLINED_FUNCTION_27_1();
        }

        v67 = *(v16 + 104);

        *(v16 + 50) = 3;
        v68 = swift_task_alloc();
        *(v16 + 144) = v68;
        *v68 = v16;
        OUTLINED_FUNCTION_13_1(v68);
        OUTLINED_FUNCTION_42_0();

        return sub_222D9863C(v69, v70, v71);
      }

      if (v25 == 1)
      {
        v27 = 0;
        v28 = 1;
        goto LABEL_14;
      }
    }

    v28 = 0;
    v27 = 0;
    goto LABEL_14;
  }

  v29 = sub_222DDB3C0();
  sub_222DDB6C0();
  OUTLINED_FUNCTION_18_1();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = OUTLINED_FUNCTION_43_0();
    OUTLINED_FUNCTION_19_1(v31);
    OUTLINED_FUNCTION_9_1(&dword_222D8A000, v32, v33, "ContactResolutionPatternGenerator::generateSimpleDisambiguationAlternativeHandles - Cannot create view with empty input array!");
    OUTLINED_FUNCTION_16_1();
  }

  sub_222D95EDC();
  v34 = OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_38_1(v34, v35);
  v44 = *(v16 + 128);

  OUTLINED_FUNCTION_29_1();
  OUTLINED_FUNCTION_42_0();

  return v46(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_222D9A170()
{
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_5_2();
  v4 = v3;
  OUTLINED_FUNCTION_4_3();
  *v5 = v4;
  v7 = *(v6 + 144);
  v8 = *v2;
  OUTLINED_FUNCTION_3_3();
  *v9 = v8;
  v4[19] = v0;

  if (v0)
  {
    v10 = v4[17];

    v11 = OUTLINED_FUNCTION_45_0();

    return MEMORY[0x2822009F8](v11, v12, v13);
  }

  else
  {
    v15 = v4[16];
    v14 = v4[17];

    OUTLINED_FUNCTION_20_1();

    return v16(v1);
  }
}

uint64_t sub_222D9A2AC()
{
  OUTLINED_FUNCTION_12_1();
  v1 = *(v0 + 152);
  v2 = *(v0 + 128);

  OUTLINED_FUNCTION_29_1();

  return v3();
}

uint64_t static ContactResolutionPatternGenerator.generateSimpleDisambiguationMixedLabels(contacts:directInvocationID:globals:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[15] = a4;
  v5[16] = v4;
  v5[13] = a2;
  v5[14] = a3;
  v5[12] = a1;
  return OUTLINED_FUNCTION_1_3();
}

uint64_t sub_222D9A324()
{
  OUTLINED_FUNCTION_12_1();
  v2 = v0[15];
  v1 = v0[16];
  v0[17] = swift_initStackObject();
  OUTLINED_FUNCTION_23_1(v2);
  v3 = swift_task_alloc();
  v0[18] = v3;
  *v3 = v0;
  v3[1] = sub_222D9A3C8;
  OUTLINED_FUNCTION_11_1();

  return ContactResolutionPatternGenerator.generateSimpleDisambiguationMixedLabels(contacts:directInvocationID:)();
}

uint64_t sub_222D9A3C8()
{
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_5_2();
  v4 = v3;
  OUTLINED_FUNCTION_4_3();
  *v5 = v4;
  v7 = *(v6 + 144);
  v8 = *v2;
  OUTLINED_FUNCTION_3_3();
  *v9 = v8;
  *(v4 + 152) = v0;

  if (!v0)
  {
    *(v4 + 160) = v1;
  }

  OUTLINED_FUNCTION_6_2();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_222D9A4CC()
{
  OUTLINED_FUNCTION_12_1();
  v1 = *(v0 + 136);

  OUTLINED_FUNCTION_20_1();
  v3 = *(v0 + 160);

  return v2(v3);
}

uint64_t sub_222D9A52C()
{
  OUTLINED_FUNCTION_12_1();
  v1 = *(v0 + 136);

  OUTLINED_FUNCTION_29_1();
  v3 = *(v0 + 152);

  return v2();
}

uint64_t ContactResolutionPatternGenerator.generateSimpleDisambiguationMixedLabels(contacts:directInvocationID:)()
{
  OUTLINED_FUNCTION_12_1();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v1[6] = *v0;
  v5 = sub_222DDA770();
  v1[7] = v5;
  OUTLINED_FUNCTION_10_1(v5);
  v1[8] = v6;
  v8 = *(v7 + 64);
  v1[9] = OUTLINED_FUNCTION_48_0();
  v9 = OUTLINED_FUNCTION_45_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_222D9A658()
{
  if (qword_27D0475B0 != -1)
  {
    OUTLINED_FUNCTION_0_4();
  }

  v1 = sub_222DDB3E0();
  v2 = OUTLINED_FUNCTION_61(v1, qword_27D04C928);
  sub_222DDB6D0();
  OUTLINED_FUNCTION_37_1();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = OUTLINED_FUNCTION_43_0();
    OUTLINED_FUNCTION_35_0(v4);
    OUTLINED_FUNCTION_17_1(&dword_222D8A000, v5, v6, "ContactResolutionPatternGenerator::generateSimpleDisambiguationMixedLabels");
    OUTLINED_FUNCTION_24_1();
  }

  v7 = *(v0 + 40);

  sub_222D9FBA4();
  if (!sub_222DA8780(*(v0 + 16)))
  {
    v19 = sub_222DDB3C0();
    sub_222DDB6C0();
    OUTLINED_FUNCTION_18_1();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = OUTLINED_FUNCTION_43_0();
      OUTLINED_FUNCTION_19_1(v21);
      OUTLINED_FUNCTION_9_1(&dword_222D8A000, v22, v23, "ContactResolutionPatternGenerator::generateSimpleDisambiguationMixedLabels - Cannot create view with empty input array!");
      OUTLINED_FUNCTION_16_1();
    }

    sub_222D95EDC();
    v24 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_38_1(v24, v25);
    v8 = *(v0 + 72);

    OUTLINED_FUNCTION_29_1();
    OUTLINED_FUNCTION_55();

    __asm { BRAA            X1, X16 }
  }

  v11 = *(v0 + 32);
  v12 = *(v0 + 40);
  v14 = *(v0 + 16);
  v13 = *(v0 + 24);
  sub_222D9E144();
  v15 = v12[3];
  v16 = v12[4];
  v17 = v12[2];
  static ContactResolutionHelper.makeContactDialogPersons(inpersons:directInvocationID:deviceState:globals:appBundleId:)();
  v18 = *(v0 + 16);
  sub_222DA3C38();
  v27 = *(v0 + 64);
  v26 = *(v0 + 72);
  OUTLINED_FUNCTION_44_0();
  v30 = *(v28 + 64);
  v43 = *(v28 + 72);
  v44 = v29;
  OUTLINED_FUNCTION_59((v7 + 40));
  sub_222DDA4A0();
  (*(v27 + 8))(v26, v44);
  *(v0 + 80) = OUTLINED_FUNCTION_66();

  v31 = sub_222DDB3C0();
  sub_222DDB6D0();
  OUTLINED_FUNCTION_18_1();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = OUTLINED_FUNCTION_43_0();
    OUTLINED_FUNCTION_41_0(v33);
    OUTLINED_FUNCTION_22_1(&dword_222D8A000, v34, v35, "ContactResolutionPatternGenerator::generateSimpleDisambiguationMixedLabels - Creating SimpleDisambiguation::MixedHandles View");
    OUTLINED_FUNCTION_27_1();
  }

  v36 = *(v0 + 48);

  *(v0 + 104) = 4;
  v37 = swift_task_alloc();
  *(v0 + 88) = v37;
  *v37 = v0;
  OUTLINED_FUNCTION_13_1(v37);
  OUTLINED_FUNCTION_55();

  return sub_222D9863C(v38, v39, v40);
}

uint64_t sub_222D9A93C()
{
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_5_2();
  v4 = v3;
  OUTLINED_FUNCTION_4_3();
  *v5 = v4;
  v7 = *(v6 + 88);
  v8 = *v2;
  OUTLINED_FUNCTION_3_3();
  *v9 = v8;
  v4[12] = v0;

  if (v0)
  {
    v10 = v4[10];

    v11 = OUTLINED_FUNCTION_45_0();

    return MEMORY[0x2822009F8](v11, v12, v13);
  }

  else
  {
    v15 = v4[9];
    v14 = v4[10];

    OUTLINED_FUNCTION_20_1();

    return v16(v1);
  }
}

uint64_t sub_222D9AA78()
{
  OUTLINED_FUNCTION_12_1();
  v1 = *(v0 + 96);
  v2 = *(v0 + 72);

  OUTLINED_FUNCTION_29_1();

  return v3();
}

uint64_t sub_222D9AAF8()
{
  OUTLINED_FUNCTION_14_1();
  v1 = *(v0 + 201);
  v3 = *(v0 + 152);
  v2 = *(v0 + 160);
  *(v0 + 168) = swift_initStackObject();
  OUTLINED_FUNCTION_23_1(v3);
  *(v0 + 200) = v1;
  v4 = swift_task_alloc();
  *(v0 + 176) = v4;
  *v4 = v0;
  v4[1] = sub_222D9ABBC;
  v5 = *(v0 + 136);
  v6 = *(v0 + 144);
  v7 = *(v0 + 120);
  v8 = *(v0 + 128);
  OUTLINED_FUNCTION_11_1();

  return ContactResolutionPatternGenerator.generateAlternativeHandleView(contacts:unavailableLabel:contactVerb:primaryButtonInvocationID:secondaryButtonInvocationID:)();
}

uint64_t sub_222D9ABBC()
{
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_5_2();
  v4 = v3;
  OUTLINED_FUNCTION_4_3();
  *v5 = v4;
  v7 = *(v6 + 176);
  v8 = *v2;
  OUTLINED_FUNCTION_3_3();
  *v9 = v8;
  *(v4 + 184) = v0;

  if (!v0)
  {
    *(v4 + 192) = v1;
  }

  OUTLINED_FUNCTION_6_2();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_222D9ACC0()
{
  OUTLINED_FUNCTION_12_1();
  v1 = *(v0 + 168);

  OUTLINED_FUNCTION_20_1();
  v3 = *(v0 + 192);

  return v2(v3);
}

uint64_t sub_222D9AD20()
{
  OUTLINED_FUNCTION_12_1();
  v1 = *(v0 + 168);

  OUTLINED_FUNCTION_29_1();
  v3 = *(v0 + 184);

  return v2();
}

uint64_t ContactResolutionPatternGenerator.generateAlternativeHandleView(contacts:unavailableLabel:contactVerb:primaryButtonInvocationID:secondaryButtonInvocationID:)()
{
  OUTLINED_FUNCTION_12_1();
  v3 = v2;
  *(v1 + 112) = v4;
  *(v1 + 120) = v0;
  *(v1 + 96) = v5;
  *(v1 + 104) = v6;
  *(v1 + 80) = v7;
  *(v1 + 88) = v8;
  *(v1 + 64) = v9;
  *(v1 + 72) = v10;
  v11 = sub_222DDAA70();
  *(v1 + 128) = v11;
  OUTLINED_FUNCTION_10_1(v11);
  *(v1 + 136) = v12;
  v14 = *(v13 + 64);
  *(v1 + 144) = OUTLINED_FUNCTION_48_0();
  v15 = sub_222DDABA0();
  *(v1 + 152) = v15;
  OUTLINED_FUNCTION_10_1(v15);
  *(v1 + 160) = v16;
  v18 = *(v17 + 64);
  *(v1 + 168) = OUTLINED_FUNCTION_48_0();
  v19 = sub_222DDAB50();
  OUTLINED_FUNCTION_8(v19);
  v21 = *(v20 + 64);
  *(v1 + 176) = OUTLINED_FUNCTION_48_0();
  v22 = sub_222DDA1D0();
  OUTLINED_FUNCTION_8(v22);
  v24 = *(v23 + 64);
  *(v1 + 184) = OUTLINED_FUNCTION_48_0();
  v25 = sub_222DDAB30();
  *(v1 + 192) = v25;
  OUTLINED_FUNCTION_10_1(v25);
  *(v1 + 200) = v26;
  v28 = *(v27 + 64);
  *(v1 + 208) = OUTLINED_FUNCTION_48_0();
  v29 = sub_222DDA9E0();
  *(v1 + 216) = v29;
  OUTLINED_FUNCTION_10_1(v29);
  *(v1 + 224) = v30;
  v32 = *(v31 + 64);
  *(v1 + 232) = OUTLINED_FUNCTION_48_0();
  v33 = sub_222DDA980();
  *(v1 + 240) = v33;
  OUTLINED_FUNCTION_10_1(v33);
  *(v1 + 248) = v34;
  v36 = *(v35 + 64);
  *(v1 + 256) = OUTLINED_FUNCTION_48_0();
  *(v1 + 313) = *v3;
  v37 = OUTLINED_FUNCTION_45_0();

  return MEMORY[0x2822009F8](v37, v38, v39);
}

uint64_t sub_222D9AFA8()
{
  if (qword_27D0475B0 != -1)
  {
    OUTLINED_FUNCTION_0_4();
  }

  v3 = sub_222DDB3E0();
  __swift_project_value_buffer(v3, qword_27D04C928);
  v4 = sub_222DDB3C0();
  sub_222DDB6D0();
  OUTLINED_FUNCTION_18_1();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = OUTLINED_FUNCTION_43_0();
    OUTLINED_FUNCTION_19_1(v6);
    _os_log_impl(&dword_222D8A000, v4, v0, "ContactResolutionPatternGenerator::generateAlternativeHandleView", v1, 2u);
    OUTLINED_FUNCTION_16_1();
  }

  v7 = *(v2 + 64);

  if (!sub_222DA8780(v7))
  {
    v26 = sub_222DDB3C0();
    sub_222DDB6C0();
    OUTLINED_FUNCTION_18_1();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = OUTLINED_FUNCTION_43_0();
      OUTLINED_FUNCTION_19_1(v28);
      OUTLINED_FUNCTION_9_1(&dword_222D8A000, v29, v30, "ContactResolutionPatternGenerator::generateAlternativeHandleView - Cannot create view with empty input array!");
      OUTLINED_FUNCTION_16_1();
    }

    sub_222D95EDC();
    v31 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_38_1(v31, v32);
LABEL_36:
    OUTLINED_FUNCTION_25_0();

    OUTLINED_FUNCTION_29_1();
    OUTLINED_FUNCTION_47_0();

    __asm { BRAA            X1, X16 }
  }

  v8 = *(v2 + 256);
  v9 = *(v2 + 232);
  v10 = *(v2 + 64);
  sub_222DDA970();
  sub_222DDA9D0();
  if ((v10 & 0xC000000000000001) != 0)
  {
    v11 = MEMORY[0x223DCE590](0, *(v2 + 64));
  }

  else
  {
    if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_47:
      v40 = MEMORY[0x223DCE590](0, v10);
      goto LABEL_19;
    }

    v11 = *(*(v2 + 64) + 32);
  }

  sub_222D9E05C(v11);
  v12 = *(v2 + 256);
  if (!v13)
  {
    v33 = *(v2 + 240);
    v34 = *(v2 + 248);
    v36 = *(v2 + 224);
    v35 = *(v2 + 232);
    v37 = *(v2 + 216);
    sub_222D95EDC();
    v38 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_69(v38, v39);
    (*(v36 + 8))(v35, v37);
    (*(v34 + 8))(v12, v33);
    goto LABEL_36;
  }

  v15 = *(v2 + 224);
  v14 = *(v2 + 232);
  v92 = *(v2 + 208);
  v93 = *(v2 + 256);
  v16 = *(v2 + 176);
  v88 = *(v2 + 216);
  v89 = *(v2 + 184);
  v17 = *(v2 + 160);
  v18 = *(v2 + 168);
  v19 = *(v2 + 144);
  v20 = *(v2 + 136);
  v90 = *(v2 + 152);
  v91 = *(v2 + 128);
  sub_222DDA9C0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047BA0, &qword_222DDD388);
  v21 = *(v15 + 72);
  v22 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_222DDC9B0;
  (*(v15 + 16))(v23 + v22, v14, v88);
  v24 = v89;
  sub_222DDA1C0();
  sub_222DDAB40();
  (*(v17 + 104))(v18, *MEMORY[0x277D56148], v90);
  (*(v20 + 104))(v19, *MEMORY[0x277D560D0], v91);
  v86 = 0;
  v87 = 0;
  v84 = v18;
  v85 = v19;
  v83 = v16;
  sub_222DDAB20();
  v25 = v93;
  v10 = sub_222DDA960();
  (*(*(v2 + 200) + 8))(*(v2 + 208), *(v2 + 192));

  if (!sub_222DA8780(v10))
  {

LABEL_30:
    v54 = sub_222DDB3C0();
    sub_222DDB6C0();
    OUTLINED_FUNCTION_18_1();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = OUTLINED_FUNCTION_43_0();
      OUTLINED_FUNCTION_19_1(v56);
      v59 = "ContactResolutionPatternGenerator::generateAlternativeHandleView - No matches found, unable to get handle";
LABEL_34:
      OUTLINED_FUNCTION_9_1(&dword_222D8A000, v57, v58, v59);
      OUTLINED_FUNCTION_16_1();
    }

LABEL_35:
    v63 = *(v2 + 248);
    v62 = *(v2 + 256);
    v65 = *(v2 + 232);
    v64 = *(v2 + 240);
    v66 = *(v2 + 216);
    v67 = *(v2 + 224);

    sub_222D95EDC();
    v68 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_69(v68, v69);
    (*(v67 + 8))(v65, v66);
    (*(v63 + 8))(v62, v64);
    goto LABEL_36;
  }

  if ((v10 & 0xC000000000000001) != 0)
  {
    goto LABEL_47;
  }

  if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_49:
    v43 = MEMORY[0x223DCE590](0, v24);
    goto LABEL_24;
  }

  v40 = *(v10 + 32);
LABEL_19:
  v41 = v40;

  v42 = sub_222D9E0CC(v41);
  *(v2 + 264) = v42;
  if (!v42)
  {
    goto LABEL_30;
  }

  v24 = v42;
  if (!sub_222DA8780(v42))
  {
    goto LABEL_32;
  }

  v25 = v24 & 0xC000000000000001;
  if ((v24 & 0xC000000000000001) != 0)
  {
    goto LABEL_49;
  }

  if (!*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_51;
  }

  v43 = *(v24 + 32);
LABEL_24:
  v44 = v43;
  v45 = [v43 personHandle];

  if (!v45)
  {
LABEL_32:

    v54 = sub_222DDB3C0();
    sub_222DDB6C0();
    OUTLINED_FUNCTION_18_1();
    if (os_log_type_enabled(v54, v60))
    {
      v61 = OUTLINED_FUNCTION_43_0();
      OUTLINED_FUNCTION_19_1(v61);
      v59 = "ContactResolutionPatternGenerator::generateAlternativeHandleView - No handles found for matches";
      goto LABEL_34;
    }

    goto LABEL_35;
  }

  result = sub_222DA8780(v24);
  if (result >= 2)
  {
    v47 = swift_task_alloc();
    *(v2 + 272) = v47;
    *v47 = v2;
    v47[1] = sub_222D9B69C;
    v48 = *(v2 + 120);
    v49 = *(v2 + 88);
    v50 = *(v2 + 96);
    v51 = *(v2 + 72);
    v52 = *(v2 + 80);
    OUTLINED_FUNCTION_47_0();

    return ContactResolutionPatternGenerator.generateSimpleDisambiguationAlternativeHandles(contacts:unavailableLabel:directInvocationID:)();
  }

  if (!v25)
  {
    if (!*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v72 = *(v24 + 32);
    goto LABEL_42;
  }

LABEL_51:
  v72 = MEMORY[0x223DCE590](0, v24);
LABEL_42:
  *(v2 + 288) = v72;
  v73 = *(v2 + 313);

  *(v2 + 312) = v73;
  v74 = swift_task_alloc();
  *(v2 + 296) = v74;
  *v74 = v2;
  v74[1] = sub_222D9B888;
  v75 = *(v2 + 112);
  v76 = *(v2 + 120);
  v77 = *(v2 + 96);
  v78 = *(v2 + 104);
  v79 = *(v2 + 80);
  v80 = *(v2 + 88);
  v81 = *(v2 + 72);
  OUTLINED_FUNCTION_47_0();

  return ContactResolutionPatternGenerator.generateYesNoClarificationSingleAlternativeHandle(contact:unavailableLabel:contactVerb:primaryButtonInvocationID:secondaryButtonInvocationID:)();
}

uint64_t sub_222D9B69C()
{
  OUTLINED_FUNCTION_14_1();
  v2 = *v1;
  OUTLINED_FUNCTION_4_3();
  *v4 = v3;
  v3[2] = v1;
  v3[3] = v5;
  v3[4] = v0;
  v6 = *(v2 + 272);
  *v4 = *v1;
  v3[35] = v0;

  v7 = *(v2 + 264);

  OUTLINED_FUNCTION_6_2();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_222D9B7C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_49_0();
  v16 = *(v15 + 24);
  v17 = OUTLINED_FUNCTION_32_1();
  v18(v17);
  (*(v13 + 8))(v12, v14);

  OUTLINED_FUNCTION_20_1();
  OUTLINED_FUNCTION_31_1();

  return v21(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12);
}

uint64_t sub_222D9B888()
{
  OUTLINED_FUNCTION_12_1();
  v2 = *v1;
  OUTLINED_FUNCTION_4_3();
  *v3 = v2;
  *(v2 + 40) = v1;
  *(v2 + 48) = v4;
  *(v2 + 56) = v0;
  v6 = *(v5 + 296);
  v7 = *v1;
  OUTLINED_FUNCTION_3_3();
  *v8 = v7;
  *(v2 + 304) = v0;

  OUTLINED_FUNCTION_57();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_222D9B99C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_49_0();
  v16 = *(v15 + 48);
  v17 = OUTLINED_FUNCTION_32_1();
  v18(v17);
  (*(v13 + 8))(v12, v14);

  OUTLINED_FUNCTION_20_1();
  OUTLINED_FUNCTION_31_1();

  return v21(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12);
}

void sub_222D9BA60()
{
  v4 = OUTLINED_FUNCTION_62();
  v5(v4);
  (*(v2 + 8))(v1, v0);
  v6 = *(v3 + 280);
  OUTLINED_FUNCTION_25_0();

  OUTLINED_FUNCTION_29_1();
  OUTLINED_FUNCTION_70();

  __asm { BRAA            X1, X16 }
}

void sub_222D9BB24()
{
  v4 = OUTLINED_FUNCTION_62();
  v5(v4);
  (*(v2 + 8))(v1, v0);
  v6 = *(v3 + 304);
  OUTLINED_FUNCTION_25_0();

  OUTLINED_FUNCTION_29_1();
  OUTLINED_FUNCTION_70();

  __asm { BRAA            X1, X16 }
}

uint64_t ContactResolutionPatternGenerator.generateYesNoClarificationSingleAlternativeHandle(contact:unavailableLabel:contactVerb:primaryButtonInvocationID:secondaryButtonInvocationID:)()
{
  OUTLINED_FUNCTION_12_1();
  v2 = v0;
  v4 = v3;
  *(v1 + 336) = v5;
  *(v1 + 344) = v2;
  *(v1 + 320) = v6;
  *(v1 + 328) = v7;
  *(v1 + 304) = v8;
  *(v1 + 312) = v9;
  *(v1 + 288) = v10;
  *(v1 + 296) = v11;
  *(v1 + 352) = *v2;
  v12 = sub_222DDA770();
  *(v1 + 360) = v12;
  OUTLINED_FUNCTION_10_1(v12);
  *(v1 + 368) = v13;
  v15 = *(v14 + 64);
  *(v1 + 376) = OUTLINED_FUNCTION_48_0();
  *(v1 + 425) = *v4;
  v16 = OUTLINED_FUNCTION_45_0();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_222D9BCCC()
{
  v55 = v0;
  if (qword_27D0475B0 != -1)
  {
    OUTLINED_FUNCTION_0_4();
  }

  v1 = sub_222DDB3E0();
  __swift_project_value_buffer(v1, qword_27D04C928);
  v2 = sub_222DDB3C0();
  sub_222DDB6D0();
  OUTLINED_FUNCTION_37_1();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = OUTLINED_FUNCTION_43_0();
    OUTLINED_FUNCTION_35_0(v4);
    OUTLINED_FUNCTION_17_1(&dword_222D8A000, v5, v6, "ContactResolutionPatternGenerator::generateYesNoSingleAlternativeHandle");
    OUTLINED_FUNCTION_24_1();
  }

  v7 = *(v0 + 344);
  v8 = *(v0 + 288);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0487F0, &unk_222DDD310);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_222DDD2F0;
  *(inited + 32) = v8;
  v10 = v8;
  sub_222D9E144();
  swift_setDeallocating();
  sub_222D9DF30();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_222DDD2F0;
  *(v11 + 32) = v10;
  v12 = v7[3];
  v13 = v7[4];
  v14 = v7[2];
  v15 = v10;
  OUTLINED_FUNCTION_57();
  static ContactResolutionHelper.makeContactDialogPersons(inpersons:directInvocationID:deviceState:globals:appBundleId:)();
  v17 = v16;

  if ((v17 & 0xC000000000000001) != 0)
  {
    v19 = MEMORY[0x223DCE590](0, v17);
  }

  else
  {
    if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v19 = *(v17 + 32);
  }

  *(v0 + 384) = v19;
  v21 = *(v0 + 312);
  v20 = *(v0 + 320);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047B40, &unk_222DDD450);
  v22 = swift_initStackObject();
  *(v22 + 16) = xmmword_222DDC9B0;
  v23 = MEMORY[0x277D837D0];
  *(v22 + 32) = 0x6E6F74747562;
  *(v22 + 40) = 0xE600000000000000;
  *(v22 + 72) = v23;
  OUTLINED_FUNCTION_8_2(v22);
  v24 = sub_222DDB460();
  v51 = sub_222D9F1C0(v21, v20, v24, v7 + 5);
  v52 = v25;
  v26 = *(v0 + 328);
  v27 = *(v0 + 336);

  v28 = swift_initStackObject();
  v29 = OUTLINED_FUNCTION_15_1(v28, xmmword_222DDC9B0);
  v29[2].n128_u64[0] = v30;
  v29[4].n128_u64[1] = v23;
  OUTLINED_FUNCTION_40_0(v29);
  v31 = sub_222DDB460();
  v32 = sub_222D9F1C0(v26, v27, v31, v7 + 5);
  v50 = *(v0 + 425);
  v34 = *(v0 + 368);
  v33 = *(v0 + 376);
  v46 = *(v0 + 360);
  v47 = v35;
  v36 = *(v0 + 344);
  v53 = *(v0 + 304);
  v48 = v32;
  v49 = *(v0 + 296);

  v37 = *(v36 + 64);
  v38 = *(v36 + 72);
  __swift_project_boxed_opaque_existential_1(v7 + 5, v37);

  sub_222DDA760();
  LOBYTE(v23) = sub_222DDA4A0();
  (*(v34 + 8))(v33, v46);
  *(v0 + 176) = v19;
  *(v0 + 184) = v50;
  *(v0 + 192) = v51;
  *(v0 + 200) = v52;
  *(v0 + 208) = v48;
  *(v0 + 216) = v47;
  *(v0 + 224) = (v23 & 1) == 0;
  *(v0 + 232) = v49;
  *(v0 + 240) = v53;
  memcpy(__dst, (v0 + 176), sizeof(__dst));

  v39 = sub_222D94D7C();
  *(v0 + 392) = v39;
  v40 = v39;
  v41 = sub_222DDB3C0();
  sub_222DDB6D0();
  OUTLINED_FUNCTION_18_1();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = OUTLINED_FUNCTION_43_0();
    OUTLINED_FUNCTION_19_1(v43);
    _os_log_impl(&dword_222D8A000, v41, v7, "ContactResolutionPatternGenerator::generateYesNoClarificationSingleAlternativeHandle - Creating YesNoClarification::SingleAlternativeHandle View", 0, 2u);
    OUTLINED_FUNCTION_16_1();
  }

  v44 = *(v0 + 352);

  *(v0 + 424) = 5;
  v45 = swift_task_alloc();
  *(v0 + 400) = v45;
  *v45 = v0;
  v45[1] = sub_222D9C1B8;

  return sub_222D9863C((v0 + 424), v40, v13);
}

uint64_t sub_222D9C1B8()
{
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_5_2();
  v4 = v3;
  OUTLINED_FUNCTION_4_3();
  *v5 = v4;
  v7 = *(v6 + 400);
  v8 = *v2;
  OUTLINED_FUNCTION_3_3();
  *v9 = v8;
  v4[51] = v0;

  v10 = v4[49];

  if (!v0)
  {
    v4[52] = v1;
  }

  OUTLINED_FUNCTION_6_2();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_222D9C2CC()
{
  OUTLINED_FUNCTION_12_1();
  v1 = v0[47];
  v2 = v0[48];
  sub_222D9E264((v0 + 22));

  OUTLINED_FUNCTION_20_1();
  v4 = v0[52];

  return v3(v4);
}

uint64_t sub_222D9C340()
{
  OUTLINED_FUNCTION_12_1();
  v1 = v0[48];

  sub_222D9E264((v0 + 22));
  v2 = v0[51];
  v3 = v0[47];

  OUTLINED_FUNCTION_29_1();

  return v4();
}

uint64_t sub_222D9C3D0()
{
  OUTLINED_FUNCTION_14_1();
  v1 = *(v0 + 201);
  v3 = *(v0 + 152);
  v2 = *(v0 + 160);
  *(v0 + 168) = swift_initStackObject();
  OUTLINED_FUNCTION_23_1(v3);
  *(v0 + 200) = v1;
  v4 = swift_task_alloc();
  *(v0 + 176) = v4;
  *v4 = v0;
  v4[1] = sub_222D9C494;
  v5 = *(v0 + 136);
  v6 = *(v0 + 144);
  v7 = *(v0 + 120);
  v8 = *(v0 + 128);
  OUTLINED_FUNCTION_11_1();

  return ContactResolutionPatternGenerator.generateYesNoClarificationSingleAlternativeHandle(contact:unavailableLabel:contactVerb:primaryButtonInvocationID:secondaryButtonInvocationID:)();
}

uint64_t sub_222D9C494()
{
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_5_2();
  v4 = v3;
  OUTLINED_FUNCTION_4_3();
  *v5 = v4;
  v7 = *(v6 + 176);
  v8 = *v2;
  OUTLINED_FUNCTION_3_3();
  *v9 = v8;
  *(v4 + 184) = v0;

  if (!v0)
  {
    *(v4 + 192) = v1;
  }

  OUTLINED_FUNCTION_6_2();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t static ContactResolutionPatternGenerator.generateDetailedDisambiguationMultipleHandlesSameLabel(contacts:buttonDirectInvocation:disambiguationResultDirectInvocation:windowParameters:globals:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[18] = a7;
  v8[19] = v7;
  v8[16] = a5;
  v8[17] = a6;
  v8[14] = a3;
  v8[15] = a4;
  v8[12] = a1;
  v8[13] = a2;
  return OUTLINED_FUNCTION_1_3();
}

uint64_t sub_222D9C5B8()
{
  OUTLINED_FUNCTION_12_1();
  v2 = v0[18];
  v1 = v0[19];
  v0[20] = swift_initStackObject();
  OUTLINED_FUNCTION_23_1(v2);
  v3 = swift_task_alloc();
  v0[21] = v3;
  *v3 = v0;
  v3[1] = sub_222D9C660;
  v4 = v0[16];
  v5 = v0[17];
  OUTLINED_FUNCTION_36_0();

  return ContactResolutionPatternGenerator.generateDetailedDisambiguationMultipleHandlesSameLabel(contacts:buttonDirectInvocation:disambiguationResultDirectInvocation:windowParameters:)();
}

uint64_t sub_222D9C660()
{
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_5_2();
  v4 = v3;
  OUTLINED_FUNCTION_4_3();
  *v5 = v4;
  v7 = *(v6 + 168);
  v8 = *v2;
  OUTLINED_FUNCTION_3_3();
  *v9 = v8;
  *(v4 + 176) = v0;

  if (!v0)
  {
    *(v4 + 184) = v1;
  }

  OUTLINED_FUNCTION_6_2();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t ContactResolutionPatternGenerator.generateDetailedDisambiguationMultipleHandlesSameLabel(contacts:buttonDirectInvocation:disambiguationResultDirectInvocation:windowParameters:)()
{
  OUTLINED_FUNCTION_12_1();
  v1[17] = v2;
  v1[18] = v0;
  v1[15] = v3;
  v1[16] = v4;
  v1[13] = v5;
  v1[14] = v6;
  v1[12] = v7;
  v1[19] = *v0;
  v8 = type metadata accessor for DetailedDisambiguationMultipleHandlesSameLabelParameters(0);
  v1[20] = v8;
  OUTLINED_FUNCTION_8(v8);
  v10 = *(v9 + 64);
  v1[21] = OUTLINED_FUNCTION_48_0();
  v11 = OUTLINED_FUNCTION_45_0();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_222D9CAE0()
{
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_5_2();
  v4 = v3;
  OUTLINED_FUNCTION_4_3();
  *v5 = v4;
  v7 = *(v6 + 184);
  v8 = *v2;
  OUTLINED_FUNCTION_3_3();
  *v9 = v8;
  v4[24] = v0;

  v10 = v4[22];

  if (!v0)
  {
    v4[25] = v1;
  }

  OUTLINED_FUNCTION_6_2();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t static ContactResolutionPatternGenerator.generateDetailedDisambiguationMixedLabels(contacts:buttonDirectInvocation:disambiguationResultDirectInvocation:windowParameters:globals:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[18] = a7;
  v8[19] = v7;
  v8[16] = a5;
  v8[17] = a6;
  v8[14] = a3;
  v8[15] = a4;
  v8[12] = a1;
  v8[13] = a2;
  return OUTLINED_FUNCTION_1_3();
}

uint64_t sub_222D9CC14()
{
  OUTLINED_FUNCTION_12_1();
  v2 = v0[18];
  v1 = v0[19];
  v0[20] = swift_initStackObject();
  OUTLINED_FUNCTION_23_1(v2);
  v3 = swift_task_alloc();
  v0[21] = v3;
  *v3 = v0;
  v3[1] = sub_222D9CCBC;
  v4 = v0[16];
  v5 = v0[17];
  OUTLINED_FUNCTION_36_0();

  return ContactResolutionPatternGenerator.generateDetailedDisambiguationMixedLabels(contacts:buttonDirectInvocation:disambiguationResultDirectInvocation:windowParameters:)();
}

uint64_t sub_222D9CCBC()
{
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_5_2();
  v4 = v3;
  OUTLINED_FUNCTION_4_3();
  *v5 = v4;
  v7 = *(v6 + 168);
  v8 = *v2;
  OUTLINED_FUNCTION_3_3();
  *v9 = v8;
  *(v4 + 176) = v0;

  if (!v0)
  {
    *(v4 + 184) = v1;
  }

  OUTLINED_FUNCTION_6_2();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_222D9CDC0()
{
  OUTLINED_FUNCTION_12_1();
  v1 = *(v0 + 160);

  OUTLINED_FUNCTION_20_1();
  v3 = *(v0 + 184);

  return v2(v3);
}

uint64_t sub_222D9CE20()
{
  OUTLINED_FUNCTION_12_1();
  v1 = *(v0 + 160);

  OUTLINED_FUNCTION_29_1();
  v3 = *(v0 + 176);

  return v2();
}

uint64_t ContactResolutionPatternGenerator.generateDetailedDisambiguationMixedLabels(contacts:buttonDirectInvocation:disambiguationResultDirectInvocation:windowParameters:)()
{
  OUTLINED_FUNCTION_12_1();
  v1[17] = v2;
  v1[18] = v0;
  v1[15] = v3;
  v1[16] = v4;
  v1[13] = v5;
  v1[14] = v6;
  v1[12] = v7;
  v1[19] = *v0;
  v8 = type metadata accessor for DetailedDisambiguationMultipleHandlesSameLabelParameters(0);
  v1[20] = v8;
  OUTLINED_FUNCTION_8(v8);
  v10 = *(v9 + 64);
  v1[21] = OUTLINED_FUNCTION_48_0();
  v11 = OUTLINED_FUNCTION_45_0();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_222D9D1F8()
{
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_5_2();
  v4 = v3;
  OUTLINED_FUNCTION_4_3();
  *v5 = v4;
  v7 = *(v6 + 184);
  v8 = *v2;
  OUTLINED_FUNCTION_3_3();
  *v9 = v8;
  v4[24] = v0;

  v10 = v4[22];

  if (!v0)
  {
    v4[25] = v1;
  }

  OUTLINED_FUNCTION_6_2();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_222D9D30C()
{
  OUTLINED_FUNCTION_12_1();
  v1 = *(v0 + 168);
  OUTLINED_FUNCTION_30_1();
  sub_222D9E2B8(v1, v2);

  OUTLINED_FUNCTION_20_1();
  v4 = *(v0 + 200);

  return v3(v4);
}

uint64_t sub_222D9D37C()
{
  OUTLINED_FUNCTION_12_1();
  v1 = *(v0 + 168);
  OUTLINED_FUNCTION_30_1();
  sub_222D9E2B8(v2, v3);
  v4 = *(v0 + 192);
  v5 = *(v0 + 168);

  OUTLINED_FUNCTION_29_1();

  return v6();
}

uint64_t ContactResolutionPatternGenerator.generateOpenEndedClarificationTarget(requestedName:intentType:zeroMatches:)(uint64_t a1, uint64_t a2, _BYTE *a3, char a4)
{
  *(v5 + 73) = a4;
  *(v5 + 24) = a2;
  *(v5 + 32) = v4;
  *(v5 + 16) = a1;
  *(v5 + 40) = *v4;
  *(v5 + 74) = *a3;
  return OUTLINED_FUNCTION_1_3();
}

uint64_t sub_222D9D430()
{
  OUTLINED_FUNCTION_49_0();
  if (qword_27D0475B0 != -1)
  {
    OUTLINED_FUNCTION_0_4();
  }

  v1 = sub_222DDB3E0();
  __swift_project_value_buffer(v1, qword_27D04C928);
  v2 = sub_222DDB3C0();
  sub_222DDB6D0();
  OUTLINED_FUNCTION_18_1();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = OUTLINED_FUNCTION_43_0();
    OUTLINED_FUNCTION_19_1(v4);
    OUTLINED_FUNCTION_9_1(&dword_222D8A000, v5, v6, "ContactResolutionPatternGenerator::generateOpenEndedClarificationTarget");
    OUTLINED_FUNCTION_16_1();
  }

  v7 = *(v0 + 74);
  v9 = *(v0 + 32);
  v8 = *(v0 + 40);
  v10 = *(v0 + 73);
  v12 = *(v0 + 16);
  v11 = *(v0 + 24);

  v13 = sub_222D954FC();
  *(v0 + 48) = v13;

  *(v0 + 72) = 8;
  v14 = *(v9 + 32);
  v15 = swift_task_alloc();
  *(v0 + 56) = v15;
  *v15 = v0;
  v15[1] = sub_222D9D5A4;

  return sub_222D9863C((v0 + 72), v13, v14);
}

uint64_t sub_222D9D5A4()
{
  OUTLINED_FUNCTION_14_1();
  v3 = v2;
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 48);
  v6 = *v1;
  OUTLINED_FUNCTION_3_3();
  *v7 = v6;
  *(v8 + 64) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_57();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_20_1();

    return v12(v3);
  }
}

uint64_t sub_222D9D6F4()
{
  OUTLINED_FUNCTION_29_1();
  v1 = *(v0 + 64);
  return v2();
}

uint64_t ContactResolutionPatternGenerator.generateDetailedDisambiguationMultipleHandlesSameLabelNoWindowing(contacts:disambiguationResultDirectInvocation:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = *v3;
  return OUTLINED_FUNCTION_2_3(sub_222D9D75C);
}

uint64_t sub_222D9D75C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_49_0();
  if (qword_27D0475B0 != -1)
  {
    OUTLINED_FUNCTION_0_4();
  }

  v13 = sub_222DDB3E0();
  __swift_project_value_buffer(v13, qword_27D04C928);
  v14 = sub_222DDB3C0();
  sub_222DDB6D0();
  OUTLINED_FUNCTION_37_1();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = OUTLINED_FUNCTION_43_0();
    OUTLINED_FUNCTION_35_0(v16);
    OUTLINED_FUNCTION_67(&dword_222D8A000, v17, v18, "ContactResolutionPatternGenerator::generateDetailedDisambiguationMultipleHandlesSameLabelNoWindowing");
    OUTLINED_FUNCTION_24_1();
  }

  v19 = *(v12 + 40);

  sub_222D9FBA4();
  if (!sub_222DA8780(*(v12 + 16)))
  {
    v33 = sub_222DDB3C0();
    sub_222DDB6C0();
    OUTLINED_FUNCTION_18_1();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = OUTLINED_FUNCTION_43_0();
      OUTLINED_FUNCTION_19_1(v35);
      OUTLINED_FUNCTION_9_1(&dword_222D8A000, v36, v37, "ContactResolutionPatternGenerator::generateDetailedDisambiguationMultipleHandlesSameLabelNoWindowing - Cannot create view with empty input array!");
      OUTLINED_FUNCTION_16_1();
    }

    sub_222D95EDC();
    OUTLINED_FUNCTION_50_0();
    *v38 = 0;
    swift_willThrow();
    goto LABEL_6;
  }

  v30 = *(v12 + 32);
  v29 = *(v12 + 40);
  v32 = *(v12 + 16);
  v31 = *(v12 + 24);
  sub_222D9E144();
  sub_222D9FD30(v32);
  OUTLINED_FUNCTION_33_0();
  if (v30)
  {
LABEL_6:
    OUTLINED_FUNCTION_29_1();
    OUTLINED_FUNCTION_31_1();

    return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
  }

  v39 = *(v12 + 16);
  sub_222D9FE18();
  *(v12 + 56) = OUTLINED_FUNCTION_65(v40);

  v41 = sub_222DDB3C0();
  v42 = sub_222DDB6D0();
  if (OUTLINED_FUNCTION_58(v42))
  {
    v43 = OUTLINED_FUNCTION_43_0();
    OUTLINED_FUNCTION_41_0(v43);
    OUTLINED_FUNCTION_26_1(&dword_222D8A000, v44, OS_LOG_TYPE_DEFAULT, "ContactResolutionPatternGenerator::generateDetailedDisambiguationMultipleHandlesSameLabelNoWindowing - Creating DetailedDisambiguation::MultipleHandlesSameLabelNoWindowing view");
    OUTLINED_FUNCTION_27_1();
  }

  v45 = *(v12 + 48);

  *(v12 + 80) = 10;
  v46 = swift_task_alloc();
  *(v12 + 64) = v46;
  *v46 = v12;
  OUTLINED_FUNCTION_21_1(v46);
  OUTLINED_FUNCTION_31_1();

  return sub_222D9863C(v47, v48, v49);
}

uint64_t sub_222D9D9B4()
{
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_5_2();
  v3 = v2;
  OUTLINED_FUNCTION_4_3();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  OUTLINED_FUNCTION_3_3();
  *v8 = v7;
  *(v3 + 72) = v0;

  if (v0)
  {
    v9 = *(v3 + 56);

    OUTLINED_FUNCTION_6_2();

    return MEMORY[0x2822009F8](v10, v11, v12);
  }

  else
  {
    v13 = *(v3 + 56);

    v14 = OUTLINED_FUNCTION_60();

    return v15(v14);
  }
}

uint64_t ContactResolutionPatternGenerator.generateDetailedDisambiguationMixedLabelsNoWindowing(contacts:disambiguationResultDirectInvocation:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = *v3;
  return OUTLINED_FUNCTION_2_3(sub_222D9DB28);
}

uint64_t sub_222D9DB28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_49_0();
  if (qword_27D0475B0 != -1)
  {
    OUTLINED_FUNCTION_0_4();
  }

  v13 = sub_222DDB3E0();
  __swift_project_value_buffer(v13, qword_27D04C928);
  v14 = sub_222DDB3C0();
  sub_222DDB6D0();
  OUTLINED_FUNCTION_37_1();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = OUTLINED_FUNCTION_43_0();
    OUTLINED_FUNCTION_35_0(v16);
    OUTLINED_FUNCTION_67(&dword_222D8A000, v17, v18, "ContactResolutionPatternGenerator::generateDetailedDisambiguationMixedLabelsNoWindowing");
    OUTLINED_FUNCTION_24_1();
  }

  v19 = *(v12 + 40);

  sub_222D9FBA4();
  if (!sub_222DA8780(*(v12 + 16)))
  {
    v33 = sub_222DDB3C0();
    sub_222DDB6C0();
    OUTLINED_FUNCTION_18_1();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = OUTLINED_FUNCTION_43_0();
      OUTLINED_FUNCTION_19_1(v35);
      OUTLINED_FUNCTION_9_1(&dword_222D8A000, v36, v37, "ContactResolutionPatternGenerator::generateDetailedDisambiguationMixedLabelsNoWindowing - Cannot create view with empty input array!");
      OUTLINED_FUNCTION_16_1();
    }

    sub_222D95EDC();
    OUTLINED_FUNCTION_50_0();
    *v38 = 0;
    swift_willThrow();
    goto LABEL_6;
  }

  v30 = *(v12 + 32);
  v29 = *(v12 + 40);
  v32 = *(v12 + 16);
  v31 = *(v12 + 24);
  sub_222D9E144();
  sub_222D9FD30(v32);
  OUTLINED_FUNCTION_33_0();
  if (v30)
  {
LABEL_6:
    OUTLINED_FUNCTION_29_1();
    OUTLINED_FUNCTION_31_1();

    return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
  }

  v39 = *(v12 + 16);
  sub_222D9FE18();
  *(v12 + 56) = OUTLINED_FUNCTION_65(v40);

  v41 = sub_222DDB3C0();
  v42 = sub_222DDB6D0();
  if (OUTLINED_FUNCTION_58(v42))
  {
    v43 = OUTLINED_FUNCTION_43_0();
    OUTLINED_FUNCTION_41_0(v43);
    OUTLINED_FUNCTION_26_1(&dword_222D8A000, v44, OS_LOG_TYPE_DEFAULT, "ContactResolutionPatternGenerator::generateDetailedDisambiguationMixedLabelsNoWindowing - Creating DetailedDisambiguation::MixedLabels view");
    OUTLINED_FUNCTION_27_1();
  }

  v45 = *(v12 + 48);

  *(v12 + 80) = 9;
  v46 = swift_task_alloc();
  *(v12 + 64) = v46;
  *v46 = v12;
  OUTLINED_FUNCTION_21_1(v46);
  OUTLINED_FUNCTION_31_1();

  return sub_222D9863C(v47, v48, v49);
}

uint64_t sub_222D9DD80()
{
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_5_2();
  v3 = v2;
  OUTLINED_FUNCTION_4_3();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  OUTLINED_FUNCTION_3_3();
  *v8 = v7;
  *(v3 + 72) = v0;

  if (v0)
  {
    v9 = *(v3 + 56);

    OUTLINED_FUNCTION_6_2();

    return MEMORY[0x2822009F8](v10, v11, v12);
  }

  else
  {
    v13 = *(v3 + 56);

    v14 = OUTLINED_FUNCTION_60();

    return v15(v14);
  }
}

uint64_t sub_222D9DEB0()
{
  v1 = *(v0 + 72);
  OUTLINED_FUNCTION_29_1();
  return v2();
}

uint64_t ContactResolutionPatternGenerator.deinit()
{
  v1 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_0((v0 + 40));
  return v0;
}

uint64_t ContactResolutionPatternGenerator.__deallocating_deinit()
{
  ContactResolutionPatternGenerator.deinit();
  v0 = OUTLINED_FUNCTION_52_0();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_222D9DF30()
{
  v1 = *(v0 + 16);
  swift_arrayDestroy();
  v2 = OUTLINED_FUNCTION_51();

  return MEMORY[0x2821FE8D8](v2, v3, v4);
}

uint64_t sub_222D9DF70()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047BA8, &qword_222DDE830);
  swift_arrayDestroy();
  v2 = OUTLINED_FUNCTION_51();

  return MEMORY[0x2821FE8D8](v2, v3, v4);
}

uint64_t sub_222D9DFC8()
{
  v1 = *(*(sub_222DDA160() - 8) + 80);
  v2 = *(v0 + 16);
  swift_arrayDestroy();
  v3 = OUTLINED_FUNCTION_51();

  return MEMORY[0x2821FE8D8](v3, v4, v5);
}

unint64_t sub_222D9E038(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_222D9E05C(void *a1)
{
  v2 = [a1 contactIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_222DDB500();

  return v3;
}

uint64_t sub_222D9E0CC(void *a1)
{
  v2 = [a1 siriMatches];

  if (!v2)
  {
    return 0;
  }

  sub_222D9E3E4(0, &qword_27D047BB0, 0x277CD3E90);
  v3 = sub_222DDB630();

  return v3;
}

uint64_t sub_222D9E144()
{
  v5[3] = &type metadata for CoreAnalyticsLogger;
  v5[4] = &off_28362D618;
  sub_222DA36F0();
  v1 = v0;
  __swift_project_boxed_opaque_existential_1(v5, &type metadata for CoreAnalyticsLogger);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047BC0, &qword_222DDD438);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_222DDC9B0;
  *(inited + 32) = 0xD000000000000015;
  *(inited + 40) = 0x8000000222DE0CE0;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  sub_222D9E3E4(0, &qword_27D047BC8, 0x277D82BB8);
  v3 = sub_222DDB460();
  sub_222DB1A78(0xD000000000000028, 0x8000000222DE0CB0, v3);

  return __swift_destroy_boxed_opaque_existential_0(v5);
}

uint64_t sub_222D9E2B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_222D9E37C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047BB8, &qword_222DDD430);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_222D9E3E4(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t OUTLINED_FUNCTION_0_4()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_8_2(uint64_t result)
{
  *(result + 48) = 0x7972616D697270;
  *(result + 56) = 0xE700000000000000;
  return result;
}

void OUTLINED_FUNCTION_9_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_11_1()
{
  v1 = v0[13];
  v2 = v0[14];
  return v0[12];
}

void OUTLINED_FUNCTION_16_1()
{

  JUMPOUT(0x223DCEF40);
}

void OUTLINED_FUNCTION_17_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void OUTLINED_FUNCTION_22_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v4, a4, v5, 2u);
}

void *OUTLINED_FUNCTION_23_1(uint64_t a1)
{

  return ContactResolutionPatternGenerator.init(appBundleId:globals:)(0, 0xE000000000000000, a1);
}

void OUTLINED_FUNCTION_24_1()
{

  JUMPOUT(0x223DCEF40);
}

uint64_t OUTLINED_FUNCTION_25_0()
{
  v2 = v0[32];
  v3 = v0[29];
  v4 = v0[26];
  v6 = v0[22];
  v5 = v0[23];
  v7 = v0[21];
  v8 = v0[18];
}

void OUTLINED_FUNCTION_26_1(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v5, a3, a4, v4, 2u);
}

void OUTLINED_FUNCTION_27_1()
{

  JUMPOUT(0x223DCEF40);
}

uint64_t OUTLINED_FUNCTION_29_1()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_32_1()
{
  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[30];
  v4 = v0[27];
  v5 = v0[26];
  v7 = v0[22];
  v6 = v0[23];
  v8 = v0[21];
  v9 = v0[18];
  v10 = *(v0[28] + 8);
  return v0[29];
}

void OUTLINED_FUNCTION_33_0()
{
  v2 = v0[3];
  v3 = v0[2];
  v4 = v0[4];

  static ContactResolutionHelper.makeContactDialogPersons(inpersons:directInvocationID:deviceState:globals:appBundleId:)();
}

void OUTLINED_FUNCTION_34_1()
{
  v2 = v0[3];
  v3 = v0[2];
  v4 = v0[4];

  static ContactResolutionHelper.makeContactDialogPersons(inpersons:directInvocationID:deviceState:globals:appBundleId:)();
}

uint64_t OUTLINED_FUNCTION_36_0()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[13];
  return v0[12];
}

uint64_t OUTLINED_FUNCTION_38_1(uint64_t a1, _BYTE *a2)
{
  *a2 = 0;

  return swift_willThrow();
}

void *OUTLINED_FUNCTION_39_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12)
{
  *v12 = v16;
  *(v12 + 8) = v17;
  *(v12 + 16) = v14;
  *(v12 + 24) = a12 & 1;
  *(v12 + *(v15 + 32)) = v13;
  *(v12 + *(v15 + 36)) = a10;

  return sub_222D950A4();
}

void *OUTLINED_FUNCTION_40_0(void *result)
{
  result[5] = v1;
  result[6] = 0x7261646E6F636573;
  result[7] = 0xE900000000000079;
  return result;
}

uint64_t OUTLINED_FUNCTION_43_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_48_0()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_50_0()
{

  return swift_allocError();
}

NSObject *OUTLINED_FUNCTION_53(uint64_t a1)
{

  return sub_222D9F1C0(v2, v1, a1, (v3 + 40));
}

uint64_t OUTLINED_FUNCTION_54()
{
  v3 = v0[20];
  v2 = v0[21];
  v4 = v0[17];
}

BOOL OUTLINED_FUNCTION_58(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_59(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_222DDA760();
}

uint64_t OUTLINED_FUNCTION_61(uint64_t a1, uint64_t a2)
{
  __swift_project_value_buffer(a1, a2);

  return sub_222DDB3C0();
}

uint64_t OUTLINED_FUNCTION_62()
{
  v2 = v0[31];
  v1 = v0[32];
  result = v0[29];
  v4 = v0[30];
  v5 = v0[27];
  v6 = *(v0[28] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_64()
{
  v2 = v0[18];
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[12];

  return sub_222D9E144();
}

void *OUTLINED_FUNCTION_65(char a1)
{

  return sub_222D956E0(v3, a1 & 1, v1, v2);
}

void *OUTLINED_FUNCTION_66()
{

  return sub_222D94BC4(v1, v2 & 0xFFFFFFFE | ((v0 & 1) == 0));
}

void OUTLINED_FUNCTION_67(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void OUTLINED_FUNCTION_68()
{
  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[12];

  sub_222D9FE18();
}