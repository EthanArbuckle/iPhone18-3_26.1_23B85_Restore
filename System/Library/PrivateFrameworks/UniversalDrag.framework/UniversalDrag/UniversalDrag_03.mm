uint64_t sub_2706BEC14(uint64_t a1)
{
  v2 = sub_2706BFF14();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2706BEC50(uint64_t a1)
{
  v2 = sub_2706BFF14();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2706BECA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2706BE2A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2706BECC8(uint64_t a1)
{
  v2 = sub_2706BFEC0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2706BED04(uint64_t a1)
{
  v2 = sub_2706BFEC0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2706BED40(uint64_t a1)
{
  v2 = sub_2706BFF68();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2706BED7C(uint64_t a1)
{
  v2 = sub_2706BFF68();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2706BEDB8(uint64_t a1)
{
  v2 = sub_2706BFFBC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2706BEDF4(uint64_t a1)
{
  v2 = sub_2706BFFBC();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_2706BEE30(_BYTE *a1@<X8>)
{
  sub_2706BE6B4();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_2706BEE78(uint64_t a1, char a2)
{
  *(v2 + 24) = a1;
  *(v2 + 16) = a2;
  return v2;
}

uint64_t sub_2706BEE88(uint64_t a1)
{
  OUTLINED_FUNCTION_17_2();
  v2 = swift_allocObject();
  sub_2706BEED0(a1, v3, v4, v5, v6, v7, v8, v9, v11, v12);
  return v2;
}

void sub_2706BEED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_60();
  v13 = v12;
  OUTLINED_FUNCTION_48_1();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D840, &qword_2706EBB00);
  OUTLINED_FUNCTION_4(v24);
  v15 = v14;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v18);
  v20 = &v24 - v19;
  *(v10 + 16) = 0;
  v21 = v13[4];
  OUTLINED_FUNCTION_47_1(v13, v13[3]);
  sub_2706BFD80();
  sub_2706E668C();
  if (v11)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v22 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D220, &qword_2706EA050);
    v27 = 0;
    sub_2706BFDD4(&unk_28081D848);
    v23 = v24;
    sub_2706E605C();
    *(v10 + 24) = a10;
    v25 = 1;
    sub_2706C05B8();
    sub_2706E601C();
    (*(v22 + 8))(v20, v23);
    if (v26 != 3)
    {
      *(v10 + 16) = v26;
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v13);
  OUTLINED_FUNCTION_55();
}

uint64_t sub_2706BF12C()
{
  OUTLINED_FUNCTION_40_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D638, &unk_2706EB9A8);
  OUTLINED_FUNCTION_4(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_14_6();
  v9 = v0[4];
  OUTLINED_FUNCTION_47_1(v0, v0[3]);
  sub_2706BFD80();
  OUTLINED_FUNCTION_13_5();
  v15 = *(v2 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D220, &qword_2706EA050);
  sub_2706BFDD4(&unk_28081D648);
  OUTLINED_FUNCTION_16_8();
  if (!v1)
  {
    v14 = *(v2 + 16);
    sub_2706BFE6C();
    OUTLINED_FUNCTION_19_8();
    sub_2706E60DC();
  }

  v10 = *(v5 + 8);
  v11 = OUTLINED_FUNCTION_26_3();
  return v12(v11);
}

uint64_t sub_2706BF2C0()
{
  v1 = *(v0 + 24);

  v2 = OUTLINED_FUNCTION_17_2();

  return MEMORY[0x2821FE8D8](v2, v3, v4);
}

uint64_t get_enum_tag_for_layout_string_13UniversalDrag26PasteboardAcquisitionErrorO(void *a1)
{
  if (*a1 >> 62 == 3)
  {
    return (*a1 >> 3) + 6;
  }

  else
  {
    return *a1 >> 61;
  }
}

uint64_t sub_2706BF344(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7A && *(a1 + 8))
    {
      v2 = *a1 + 121;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x79)
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

uint64_t sub_2706BF398(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x79)
  {
    *result = a2 - 122;
    if (a3 >= 0x7A)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7A)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t *sub_2706BF3F8(unint64_t *result, uint64_t a2)
{
  if (a2 < 6)
  {
    v2 = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 61);
  }

  else
  {
    v2 = (8 * (a2 - 6)) | 0xC000000000000000;
  }

  *result = v2;
  return result;
}

unint64_t sub_2706BF434()
{
  result = qword_28081D5C8;
  if (!qword_28081D5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D5C8);
  }

  return result;
}

uint64_t sub_2706BF488@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2706BEE88(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void sub_2706BF4D8()
{
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_48_1();
  v10 = sub_2706E671C();
  MEMORY[0x2743A5EF0](10272, 0xE200000000000000);
  v3 = *(v0 + 24);
  v4 = sub_2706B87F8(v3);
  if (!v4)
  {
LABEL_11:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D5F8, &qword_2706EB988);
    v9 = sub_2706BF840();
    OUTLINED_FUNCTION_52_1(v9);

    OUTLINED_FUNCTION_56_1();

    MEMORY[0x2743A5EF0](41, 0xE100000000000000);

    OUTLINED_FUNCTION_63();
    return;
  }

  OUTLINED_FUNCTION_42_1(v4);
  if ((v1 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_60_0();
    do
    {
      if (v2)
      {
        MEMORY[0x2743A62C0](v10, v3);
      }

      else
      {
        v5 = *(v3 + 8 * v10 + 32);
      }

      sub_2706BDF24();

      OUTLINED_FUNCTION_61();
      if (v7)
      {
        OUTLINED_FUNCTION_54_1(v6);
      }

      OUTLINED_FUNCTION_46_1();
    }

    while (!v8);
    goto LABEL_11;
  }

  __break(1u);
}

unint64_t sub_2706BF6C4()
{
  result = qword_28081D5D8;
  if (!qword_28081D5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D5D8);
  }

  return result;
}

unint64_t sub_2706BF718(uint64_t a1)
{
  result = OUTLINED_FUNCTION_19_4(a1);
  if (!result)
  {
    v4(v3);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

char *sub_2706BF75C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_3_7(a3, result);
  }

  return result;
}

char *sub_2706BF77C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[72 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_3_7(a3, result);
  }

  return result;
}

char *sub_2706BF7A4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_3_7(a3, result);
  }

  return result;
}

char *sub_2706BF7C4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_3_7(a3, result);
  }

  return result;
}

unint64_t sub_2706BF7FC(unint64_t result, char a2, uint64_t a3)
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

char *sub_2706BF820(char *a1, int64_t a2, char a3)
{
  result = sub_2706BF8E4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_2706BF840()
{
  result = qword_28081D600;
  if (!qword_28081D600)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28081D5F8, &qword_2706EB988);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D600);
  }

  return result;
}

char *sub_2706BF8A4(char *a1, int64_t a2, char a3)
{
  result = sub_2706BF9EC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2706BF8C4(void *a1, int64_t a2, char a3)
{
  result = sub_2706BFB04(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2706BF8E4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D608, &qword_2706EB990);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2706BF9EC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D8A0, &qword_2706EBB30);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[72 * v8] <= v12)
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2706BFB04(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D8A8, &qword_2706EBB38);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[2 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D8B0, &qword_2706EBB40);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t (*sub_2706BFC34(uint64_t *a1, unint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v6 = sub_2706BF7EC(a3);
  sub_2706BF7FC(a2, v6, a3);
  if (v6)
  {
    v7 = *(a3 + 8 * a2 + 32);
  }

  else
  {
    v8 = MEMORY[0x2743A62C0](a2, a3);
  }

  *a1 = v8;
  return sub_2706BFCC0;
}

unint64_t sub_2706BFCC8()
{
  result = qword_28081D618;
  if (!qword_28081D618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D618);
  }

  return result;
}

unint64_t sub_2706BFD1C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_19_4(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28081D5F8, &qword_2706EB988);
    OUTLINED_FUNCTION_58_0();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_2706BFD80()
{
  result = qword_28081D640;
  if (!qword_28081D640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D640);
  }

  return result;
}

unint64_t sub_2706BFDD4(uint64_t a1)
{
  result = OUTLINED_FUNCTION_19_4(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28081D220, &qword_2706EA050);
    sub_2706BF718(v4);
    OUTLINED_FUNCTION_58_0();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_2706BFE6C()
{
  result = qword_28081D658;
  if (!qword_28081D658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D658);
  }

  return result;
}

unint64_t sub_2706BFEC0()
{
  result = qword_28081D680;
  if (!qword_28081D680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D680);
  }

  return result;
}

unint64_t sub_2706BFF14()
{
  result = qword_28081D688;
  if (!qword_28081D688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D688);
  }

  return result;
}

unint64_t sub_2706BFF68()
{
  result = qword_28081D690;
  if (!qword_28081D690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D690);
  }

  return result;
}

unint64_t sub_2706BFFBC()
{
  result = qword_28081D698;
  if (!qword_28081D698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D698);
  }

  return result;
}

unint64_t sub_2706C0010()
{
  result = qword_28081D740;
  if (!qword_28081D740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D740);
  }

  return result;
}

unint64_t sub_2706C0064()
{
  result = qword_28081D748;
  if (!qword_28081D748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D748);
  }

  return result;
}

unint64_t sub_2706C00B8()
{
  result = qword_28081D750;
  if (!qword_28081D750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D750);
  }

  return result;
}

uint64_t sub_2706C010C()
{
  sub_270688D9C(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

unint64_t sub_2706C0144()
{
  result = qword_28081D758;
  if (!qword_28081D758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D758);
  }

  return result;
}

unint64_t sub_2706C0198()
{
  result = qword_28081D760;
  if (!qword_28081D760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D760);
  }

  return result;
}

unint64_t sub_2706C01EC()
{
  result = qword_28081D768;
  if (!qword_28081D768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D768);
  }

  return result;
}

unint64_t sub_2706C0240()
{
  result = qword_28081D770;
  if (!qword_28081D770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D770);
  }

  return result;
}

uint64_t sub_2706C0294()
{
  v1 = *(v0 + 24);

  v2 = OUTLINED_FUNCTION_17_2();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

unint64_t sub_2706C02C4()
{
  result = qword_28081D778;
  if (!qword_28081D778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D778);
  }

  return result;
}

unint64_t sub_2706C0318()
{
  result = qword_28081D780;
  if (!qword_28081D780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D780);
  }

  return result;
}

unint64_t sub_2706C036C()
{
  result = qword_28081D788;
  if (!qword_28081D788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D788);
  }

  return result;
}

unint64_t sub_2706C03C0()
{
  result = qword_28081D790;
  if (!qword_28081D790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D790);
  }

  return result;
}

unint64_t sub_2706C0414()
{
  result = qword_28081D798;
  if (!qword_28081D798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D798);
  }

  return result;
}

unint64_t sub_2706C0468()
{
  result = qword_28081D7A0;
  if (!qword_28081D7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D7A0);
  }

  return result;
}

unint64_t sub_2706C04BC()
{
  result = qword_28081D7A8;
  if (!qword_28081D7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D7A8);
  }

  return result;
}

unint64_t sub_2706C0510()
{
  result = qword_28081D7B0;
  if (!qword_28081D7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D7B0);
  }

  return result;
}

unint64_t sub_2706C0564()
{
  result = qword_28081D7B8;
  if (!qword_28081D7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D7B8);
  }

  return result;
}

unint64_t sub_2706C05B8()
{
  result = qword_28081D858;
  if (!qword_28081D858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D858);
  }

  return result;
}

unint64_t sub_2706C060C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_19_4(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28081D620, &qword_2706EB9A0);
    OUTLINED_FUNCTION_58_0();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_2706C0670(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D278, &qword_2706EBB10);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_2706C06E0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_19_4(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28081D5E0, &qword_2706EB980);
    sub_2706BF718(v4);
    OUTLINED_FUNCTION_58_0();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_2706C0774()
{
  result = qword_28081D898;
  if (!qword_28081D898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D898);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PasteboardAcquisitionError.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF2)
  {
    if (a2 + 14 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 14) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 15;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v5 = v6 - 15;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PasteboardAcquisitionError.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF1)
  {
    v6 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
        JUMPOUT(0x2706C091CLL);
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
          *result = a2 + 14;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_2706C0A28(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x2706C0AC4);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *sub_2706C0B10(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2706C0BD8);
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
          result = OUTLINED_FUNCTION_46(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PasteboardRepresentation.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2706C0D20);
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

_BYTE *sub_2706C0D58(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2706C0E20);
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
          result = OUTLINED_FUNCTION_46(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2706C0E5C()
{
  result = qword_28081D8B8;
  if (!qword_28081D8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D8B8);
  }

  return result;
}

unint64_t sub_2706C0EB4()
{
  result = qword_28081D8C0;
  if (!qword_28081D8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D8C0);
  }

  return result;
}

unint64_t sub_2706C0F0C()
{
  result = qword_28081D8C8;
  if (!qword_28081D8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D8C8);
  }

  return result;
}

unint64_t sub_2706C0F64()
{
  result = qword_28081D8D0;
  if (!qword_28081D8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D8D0);
  }

  return result;
}

unint64_t sub_2706C0FBC()
{
  result = qword_28081D8D8;
  if (!qword_28081D8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D8D8);
  }

  return result;
}

unint64_t sub_2706C1014()
{
  result = qword_28081D8E0;
  if (!qword_28081D8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D8E0);
  }

  return result;
}

unint64_t sub_2706C106C()
{
  result = qword_28081D8E8;
  if (!qword_28081D8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D8E8);
  }

  return result;
}

unint64_t sub_2706C10C4()
{
  result = qword_28081D8F0;
  if (!qword_28081D8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D8F0);
  }

  return result;
}

unint64_t sub_2706C111C()
{
  result = qword_28081D8F8;
  if (!qword_28081D8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D8F8);
  }

  return result;
}

unint64_t sub_2706C1174()
{
  result = qword_28081D900;
  if (!qword_28081D900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D900);
  }

  return result;
}

unint64_t sub_2706C11CC()
{
  result = qword_28081D908;
  if (!qword_28081D908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D908);
  }

  return result;
}

unint64_t sub_2706C1224()
{
  result = qword_28081D910;
  if (!qword_28081D910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D910);
  }

  return result;
}

unint64_t sub_2706C127C()
{
  result = qword_28081D918;
  if (!qword_28081D918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D918);
  }

  return result;
}

unint64_t sub_2706C12D4()
{
  result = qword_28081D920;
  if (!qword_28081D920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D920);
  }

  return result;
}

unint64_t sub_2706C132C()
{
  result = qword_28081D928;
  if (!qword_28081D928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D928);
  }

  return result;
}

unint64_t sub_2706C1384()
{
  result = qword_28081D930;
  if (!qword_28081D930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D930);
  }

  return result;
}

unint64_t sub_2706C13DC()
{
  result = qword_28081D938;
  if (!qword_28081D938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D938);
  }

  return result;
}

unint64_t sub_2706C1434()
{
  result = qword_28081D940;
  if (!qword_28081D940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D940);
  }

  return result;
}

unint64_t sub_2706C148C()
{
  result = qword_28081D948;
  if (!qword_28081D948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D948);
  }

  return result;
}

unint64_t sub_2706C14E4()
{
  result = qword_28081D950;
  if (!qword_28081D950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D950);
  }

  return result;
}

unint64_t sub_2706C153C()
{
  result = qword_28081D958;
  if (!qword_28081D958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D958);
  }

  return result;
}

unint64_t sub_2706C1594()
{
  result = qword_28081D960;
  if (!qword_28081D960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D960);
  }

  return result;
}

unint64_t sub_2706C15EC()
{
  result = qword_28081D968;
  if (!qword_28081D968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D968);
  }

  return result;
}

unint64_t sub_2706C1644()
{
  result = qword_28081D970;
  if (!qword_28081D970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D970);
  }

  return result;
}

unint64_t sub_2706C169C()
{
  result = qword_28081D978;
  if (!qword_28081D978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D978);
  }

  return result;
}

unint64_t sub_2706C16F4()
{
  result = qword_28081D980;
  if (!qword_28081D980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D980);
  }

  return result;
}

unint64_t sub_2706C174C()
{
  result = qword_28081D988;
  if (!qword_28081D988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D988);
  }

  return result;
}

unint64_t sub_2706C17A4()
{
  result = qword_28081D990;
  if (!qword_28081D990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D990);
  }

  return result;
}

unint64_t sub_2706C17FC()
{
  result = qword_28081D998;
  if (!qword_28081D998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D998);
  }

  return result;
}

unint64_t sub_2706C1854()
{
  result = qword_28081D9A0;
  if (!qword_28081D9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D9A0);
  }

  return result;
}

unint64_t sub_2706C18AC()
{
  result = qword_28081D9A8;
  if (!qword_28081D9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D9A8);
  }

  return result;
}

unint64_t sub_2706C1904()
{
  result = qword_28081D9B0;
  if (!qword_28081D9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D9B0);
  }

  return result;
}

unint64_t sub_2706C195C()
{
  result = qword_28081D9B8;
  if (!qword_28081D9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D9B8);
  }

  return result;
}

unint64_t sub_2706C19B4()
{
  result = qword_28081D9C0;
  if (!qword_28081D9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D9C0);
  }

  return result;
}

unint64_t sub_2706C1A0C()
{
  result = qword_28081D9C8;
  if (!qword_28081D9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D9C8);
  }

  return result;
}

unint64_t sub_2706C1A64()
{
  result = qword_28081D9D0;
  if (!qword_28081D9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D9D0);
  }

  return result;
}

unint64_t sub_2706C1ABC()
{
  result = qword_28081D9D8;
  if (!qword_28081D9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D9D8);
  }

  return result;
}

unint64_t sub_2706C1B14()
{
  result = qword_28081D9E0;
  if (!qword_28081D9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D9E0);
  }

  return result;
}

unint64_t sub_2706C1B6C()
{
  result = qword_28081D9E8;
  if (!qword_28081D9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D9E8);
  }

  return result;
}

unint64_t sub_2706C1BC4()
{
  result = qword_28081D9F0;
  if (!qword_28081D9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D9F0);
  }

  return result;
}

unint64_t sub_2706C1C1C()
{
  result = qword_28081D9F8;
  if (!qword_28081D9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D9F8);
  }

  return result;
}

unint64_t sub_2706C1C74()
{
  result = qword_28081DA00;
  if (!qword_28081DA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081DA00);
  }

  return result;
}

unint64_t sub_2706C1CCC()
{
  result = qword_28081DA08;
  if (!qword_28081DA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081DA08);
  }

  return result;
}

unint64_t sub_2706C1D24()
{
  result = qword_28081DA10;
  if (!qword_28081DA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081DA10);
  }

  return result;
}

unint64_t sub_2706C1D7C()
{
  result = qword_28081DA18;
  if (!qword_28081DA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081DA18);
  }

  return result;
}

unint64_t sub_2706C1DD4()
{
  result = qword_28081DA20;
  if (!qword_28081DA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081DA20);
  }

  return result;
}

unint64_t sub_2706C1E2C()
{
  result = qword_28081DA28;
  if (!qword_28081DA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081DA28);
  }

  return result;
}

unint64_t sub_2706C1E84()
{
  result = qword_28081DA30;
  if (!qword_28081DA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081DA30);
  }

  return result;
}

unint64_t sub_2706C1EDC()
{
  result = qword_28081DA38;
  if (!qword_28081DA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081DA38);
  }

  return result;
}

unint64_t sub_2706C1F34()
{
  result = qword_28081DA40;
  if (!qword_28081DA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081DA40);
  }

  return result;
}

unint64_t sub_2706C1F8C()
{
  result = qword_28081DA48;
  if (!qword_28081DA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081DA48);
  }

  return result;
}

unint64_t sub_2706C1FE4()
{
  result = qword_28081DA50;
  if (!qword_28081DA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081DA50);
  }

  return result;
}

unint64_t sub_2706C203C()
{
  result = qword_28081DA58;
  if (!qword_28081DA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081DA58);
  }

  return result;
}

unint64_t sub_2706C2094()
{
  result = qword_28081DA60;
  if (!qword_28081DA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081DA60);
  }

  return result;
}

unint64_t sub_2706C20EC()
{
  result = qword_28081DA68;
  if (!qword_28081DA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081DA68);
  }

  return result;
}

unint64_t sub_2706C2144()
{
  result = qword_28081DA70;
  if (!qword_28081DA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081DA70);
  }

  return result;
}

unint64_t sub_2706C219C()
{
  result = qword_28081DA78;
  if (!qword_28081DA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081DA78);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_5_8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  v4 = *(v1 - 112);

  return sub_2706E608C();
}

uint64_t OUTLINED_FUNCTION_6_8()
{

  return sub_2706E5FFC();
}

uint64_t OUTLINED_FUNCTION_16_8()
{

  return sub_2706E60DC();
}

uint64_t OUTLINED_FUNCTION_21_5()
{
  v2 = *(*(v1 - 128) + 8);
  result = v0;
  v4 = *(v1 - 96);
  return result;
}

uint64_t OUTLINED_FUNCTION_22_4()
{
  v2 = *(v0 - 256);

  return sub_2706E605C();
}

uint64_t OUTLINED_FUNCTION_27_3()
{
  result = v0;
  v4 = *(v1 - 168);
  v3 = *(v1 - 160);
  return result;
}

uint64_t OUTLINED_FUNCTION_41_1()
{
  v3 = *(v0 - 120);
  v2 = *(v0 - 112);

  return sub_2706E608C();
}

char *OUTLINED_FUNCTION_42_1(uint64_t a1)
{

  return sub_2706BF820(0, a1 & ~(a1 >> 63), 0);
}

uint64_t OUTLINED_FUNCTION_43_1()
{
  v2 = *(v0 + 8);
  result = *(v1 - 168);
  v4 = *(v1 - 160);
  return result;
}

void OUTLINED_FUNCTION_46_1()
{
  *(v1 + 16) = v4;
  v5 = v1 + 16 * v0;
  *(v5 + 32) = v2;
  *(v5 + 40) = v3;
}

uint64_t OUTLINED_FUNCTION_51_1()
{
  v3 = *(v0 - 120);
  v2 = *(v0 - 112);

  return sub_2706E608C();
}

uint64_t OUTLINED_FUNCTION_52_1(uint64_t a1)
{

  return MEMORY[0x2821FBB70](10, 0xE100000000000000, v1, a1);
}

uint64_t OUTLINED_FUNCTION_53_1()
{

  return sub_2706E608C();
}

char *OUTLINED_FUNCTION_54_1@<X0>(unint64_t a1@<X8>)
{

  return sub_2706BF820((a1 > 1), v1, 1);
}

void OUTLINED_FUNCTION_56_1()
{

  JUMPOUT(0x2743A5EF0);
}

uint64_t sub_2706C2654()
{
  v1 = OBJC_IVAR____TtC13UniversalDrag18P2PPeerCoordinator_id;
  v2 = sub_2706E576C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC13UniversalDrag18P2PPeerCoordinator__label + 8);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v4, v5);
}

uint64_t type metadata accessor for P2PPeerCoordinator()
{
  result = qword_28081DA88;
  if (!qword_28081DA88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2706C2758()
{
  result = sub_2706E576C();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2706C27F0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC13UniversalDrag18P2PPeerCoordinator_id;
  v5 = sub_2706E576C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

unint64_t sub_2706C2894()
{
  result = qword_28081CF38;
  if (!qword_28081CF38)
  {
    sub_2706E576C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081CF38);
  }

  return result;
}

void sub_2706C28F0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = type metadata accessor for PasteboardDataTransferID(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v86 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2706E576C();
  v88 = *(v9 - 8);
  v89 = v9;
  v10 = *(v88 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v84 - v14;
  v91 = type metadata accessor for PasteboardMessage();
  v16 = *(*(v91 - 1) + 64);
  v17 = MEMORY[0x28223BE20](v91);
  v19 = &v84 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v84 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v84 - v23;
  v25 = sub_270692D3C(a2, a3);
  v26 = MEMORY[0x2743A6D20](v25);
  sub_2706C7EE0();
  if (v3)
  {
    objc_autoreleasePoolPop(v26);
    sub_270688E88(a2, a3);
    if (qword_28081C738 != -1)
    {
      swift_once();
    }

    v27 = sub_2706E58DC();
    v28 = __swift_project_value_buffer(v27, qword_2808292F0);
    MEMORY[0x28223BE20](v28);
    *(&v84 - 2) = v3;
    sub_270694664(sub_270692C74, 0, sub_2706C938C, (&v84 - 4), v29, v30, v31, v32, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97);
  }

  else
  {
    v84 = v13;
    v85 = 0;
    v34 = v88;
    v33 = v89;
    objc_autoreleasePoolPop(v26);
    sub_270688E88(a2, a3);
    sub_2706C9394(v22, v24, type metadata accessor for PasteboardMessage);
    sub_2706C9444(v24, v19, type metadata accessor for PasteboardMessage);
    v35 = v34;
    v36 = v33;
    v37 = v15;
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        (*(v34 + 32))(v15, v19, v33);
        sub_27069F874();
        break;
      case 2u:
        v49 = *&v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081CA18, &qword_2706E7F40) + 48)];
        (*(v34 + 32))(v15, v19, v33);
        sub_27069FC2C(v15, v49);
        sub_270688D9C(v49);
        break;
      case 3u:
        v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081CA08, &qword_2706E7F38);
        v51 = v19;
        v52 = *(v50 + 48);
        v53 = *(v50 + 64);
        v91 = v24;
        v54 = v15;
        v55 = *(v34 + 32);
        v55(v15, v51, v36);
        v56 = v84;
        v55(v84, &v51[v52], v36);
        v57 = &v51[v53];
        v58 = v86;
        sub_2706C9394(v57, v86, type metadata accessor for PasteboardDataTransferID);
        type metadata accessor for Completion();
        swift_allocObject();
        v59 = sub_2706DD84C();
        sub_2706C3314(v54, v56, v58, v59);

        sub_2706C93F0();
        v60 = *(v34 + 8);
        v60(v56, v36);
        v60(v54, v36);
        goto LABEL_19;
      case 4u:
        v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081C9F0, &qword_2706E7F30);
        v91 = v24;
        v39 = v15;
        v40 = v38[12];
        v41 = v19;
        v42 = v19[v38[16]];
        v43 = &v19[v38[20]];
        v44 = *v43;
        v45 = v43[8];
        (*(v34 + 32))(v39, v41, v33);
        v46 = &v41[v40];
        v47 = v86;
        sub_2706C9394(v46, v86, type metadata accessor for PasteboardDataTransferID);
        type metadata accessor for Completion();
        swift_allocObject();
        v48 = sub_2706DD84C();
        sub_2706C37E0(v39, v47, v42, v44, v45, v48);

        sub_2706C93F0();
        (*(v34 + 8))(v39, v33);
        goto LABEL_19;
      case 5u:
        v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081C9D8, &qword_2706E7F28);
        v69 = v19;
        v70 = *(v68 + 48);
        v71 = &v19[*(v68 + 64)];
        v72 = v37;
        v73 = *v71;
        v74 = v71[1];
        (*(v35 + 32))(v72, v69, v33);
        v75 = &v69[v70];
        v76 = v86;
        sub_2706C9394(v75, v86, type metadata accessor for PasteboardDataTransferID);
        type metadata accessor for Completion();
        swift_allocObject();
        v77 = sub_2706DD84C();
        sub_2706C3914(v72, v76, v73, v74, v77);

        sub_270688E88(v73, v74);
        sub_2706C93F0();
        (*(v35 + 8))(v72, v33);
        goto LABEL_19;
      case 6u:
        v78 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081C9C8, &qword_2706E7F20) + 48);
        (*(v34 + 32))(v15, v19, v33);
        v79 = v86;
        sub_2706C9394(&v19[v78], v86, type metadata accessor for PasteboardDataTransferID);
        type metadata accessor for Completion();
        swift_allocObject();
        v80 = sub_2706DD84C();
        sub_2706C3A38(v37, v79, v80);

        goto LABEL_17;
      case 7u:
        v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081C9A0, &qword_2706E7F18);
        v62 = v19;
        v63 = *(v61 + 48);
        v64 = *&v19[*(v61 + 64)];
        (*(v34 + 32))(v37, v62, v33);
        v65 = &v62[v63];
        v66 = v86;
        sub_2706C9394(v65, v86, type metadata accessor for PasteboardDataTransferID);
        type metadata accessor for Completion();
        swift_allocObject();
        v67 = sub_2706DD84C();
        sub_2706C3C48(v37, v66, v64, v67);
        goto LABEL_16;
      case 8u:
        v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081C9A0, &qword_2706E7F18);
        v82 = v19;
        v83 = *(v81 + 48);
        v64 = *&v19[*(v81 + 64)];
        (*(v34 + 32))(v37, v82, v33);
        sub_2706C9394(&v82[v83], v86, type metadata accessor for PasteboardDataTransferID);
        type metadata accessor for Completion();
        swift_allocObject();
        sub_2706DD84C();
        sub_2706C3B44(v37);
LABEL_16:

        sub_270688D9C(v64);
LABEL_17:
        sub_2706C93F0();
        break;
      default:
        (*(v34 + 32))(v15, v19, v33);
        sub_27069F630();
        break;
    }

    (*(v34 + 8))(v37, v33);
LABEL_19:
    sub_2706C93F0();
  }
}

uint64_t sub_2706C3314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v55 = a4;
  v56 = a1;
  v8 = type metadata accessor for PasteboardDataTransferID(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2706E576C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28081C738 != -1)
  {
    swift_once();
  }

  v17 = sub_2706E58DC();
  __swift_project_value_buffer(v17, qword_2808292F0);
  v52 = *(v13 + 16);
  v53 = v13 + 16;
  v52(v16, a2, v12);
  sub_2706C9444(a3, v11, type metadata accessor for PasteboardDataTransferID);
  v18 = sub_2706E58BC();
  v19 = sub_2706E5C1C();
  v20 = os_log_type_enabled(v18, v19);
  v54 = v12;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v49 = a3;
    v22 = v21;
    v48 = swift_slowAlloc();
    v57 = v48;
    *v22 = 136446466;
    sub_2706E572C();
    v23 = sub_2706B8734(8);
    v24 = MEMORY[0x2743A5EC0](v23);
    v50 = v4;
    v51 = a2;
    v25 = v24;
    v27 = v26;

    (*(v13 + 8))(v16, v12);
    v28 = sub_2706C83E8(v25, v27, &v57);

    *(v22 + 4) = v28;
    *(v22 + 12) = 2082;
    sub_2706E572C();
    v29 = sub_2706B8734(8);
    v30 = MEMORY[0x2743A5EC0](v29);
    v32 = v31;

    sub_2706C93F0();
    v33 = v30;
    a2 = v51;
    v34 = sub_2706C83E8(v33, v32, &v57);
    v5 = v50;

    *(v22 + 14) = v34;
    _os_log_impl(&dword_270680000, v18, v19, "Pasteboard Request: rep=%{public}s id=%{public}s", v22, 0x16u);
    v35 = v48;
    swift_arrayDestroy();
    MEMORY[0x2743A75B0](v35, -1, -1);
    v36 = v22;
    a3 = v49;
    MEMORY[0x2743A75B0](v36, -1, -1);
  }

  else
  {

    sub_2706C93F0();
    (*(v13 + 8))(v16, v12);
  }

  v37 = v56;
  sub_2706C3F98(0xD00000000000004BLL, 0x80000002706F10F0, v56, a3, v55);
  if (*(v5 + 88))
  {
    v38 = *(v5 + 88);

    sub_2706B881C();
    if (v39)
    {
      sub_27069FF6C(v37, v39);
    }

    else
    {
      v42 = v54;
      v43 = swift_allocBox();
      v52(v44, a2, v42);
      sub_270694B50();
      v45 = swift_allocError();
      *v46 = v43 | 0x2000000000000000;
      sub_2706DD768();
    }
  }

  else
  {
    sub_270694B50();
    v40 = swift_allocError();
    *v41 = 0xC000000000000000;
    sub_2706DD768();
  }
}

uint64_t sub_2706C37E0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6)
{
  v11 = sub_2706C4528(0xD000000000000043, 0x80000002706F1140, a1, a6);
  if (sub_270691700(a1))
  {
    sub_2706CBF94(a2, a3 & 1, a4, a5 & 1, v11);
  }

  else
  {
    v12 = sub_2706E576C();
    v13 = swift_allocBox();
    (*(*(v12 - 8) + 16))(v14, a1, v12);
    sub_270694B50();
    v15 = swift_allocError();
    *v16 = v13;
    sub_2706DD768();
  }
}

uint64_t sub_2706C3914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_2706C4528(0xD000000000000040, 0x80000002706F1190, a1, a5);
  if (sub_270691700(a1))
  {
    sub_2706CC070(a2, a3, a4, v9);
  }

  else
  {
    v10 = sub_2706E576C();
    v11 = swift_allocBox();
    (*(*(v10 - 8) + 16))(v12, a1, v10);
    sub_270694B50();
    v13 = swift_allocError();
    *v14 = v11;
    sub_2706DD768();
  }
}

uint64_t sub_2706C3A38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2706C4528(0xD00000000000003FLL, 0x80000002706F11E0, a1, a3);
  if (sub_270691700(a1))
  {
    sub_2706CC138(a2, v5);
  }

  else
  {
    v6 = sub_2706E576C();
    v7 = swift_allocBox();
    (*(*(v6 - 8) + 16))(v8, a1, v6);
    sub_270694B50();
    v9 = swift_allocError();
    *v10 = v7;
    sub_2706DD768();
  }
}

void sub_2706C3B44(uint64_t a1)
{
  if (sub_270691700(a1))
  {
    sub_2706CC1E8();
  }

  else
  {
    v2 = sub_2706E576C();
    v3 = swift_allocBox();
    (*(*(v2 - 8) + 16))(v4, a1, v2);
    sub_270694B50();
    v5 = swift_allocError();
    *v6 = v3;
    sub_2706DD768();
  }
}

void sub_2706C3C48(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for PasteboardDataTransferID(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28081C738 != -1)
  {
    swift_once();
  }

  v12 = sub_2706E58DC();
  __swift_project_value_buffer(v12, qword_2808292F0);
  sub_2706C9444(a2, v11, type metadata accessor for PasteboardDataTransferID);
  sub_270694BA4(a3);
  v13 = sub_2706E58BC();
  v14 = sub_2706E5C1C();
  sub_270688D9C(a3);
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v36[1] = v8;
    v16 = v15;
    v17 = swift_slowAlloc();
    v37 = a1;
    v18 = v17;
    v40 = v17;
    *v16 = 136446466;
    sub_2706E572C();
    v19 = sub_2706B8734(8);
    v20 = MEMORY[0x2743A5EC0](v19);
    v38 = a4;
    v39 = a2;
    v21 = v20;
    v23 = v22;

    sub_2706C93F0();
    v24 = sub_2706C83E8(v21, v23, &v40);

    *(v16 + 4) = v24;
    *(v16 + 12) = 2082;
    v25 = sub_2706B96E0(a3);
    v27 = sub_2706C83E8(v25, v26, &v40);

    *(v16 + 14) = v27;
    a4 = v38;
    a2 = v39;
    _os_log_impl(&dword_270680000, v13, v14, "Pasteboard Receiver Error %{public}s: %{public}s", v16, 0x16u);
    swift_arrayDestroy();
    v28 = v18;
    a1 = v37;
    MEMORY[0x2743A75B0](v28, -1, -1);
    MEMORY[0x2743A75B0](v16, -1, -1);
  }

  else
  {

    sub_2706C93F0();
  }

  v29 = sub_270691CE0(a2, a1);
  if (v29)
  {
    sub_2706AF208(a1, v29, v30, a3, a4);
    swift_unknownObjectRelease();
  }

  else
  {
    v31 = swift_allocBox();
    sub_2706C9444(a2, v32, type metadata accessor for PasteboardDataTransferID);
    v33 = v31 | 0x4000000000000000;
    sub_270694B50();
    v34 = swift_allocError();
    *v35 = v33;
    sub_2706DD768();
  }
}

void *sub_2706C3F98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = a1;
  v25 = a2;
  v8 = type metadata accessor for PasteboardDataTransferID(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v23 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2706E576C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = "start completed: ";
  (*(v12 + 16))(v14, a3, v11);
  sub_2706C9444(a4, &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PasteboardDataTransferID);
  v15 = (*(v12 + 80) + 48) & ~*(v12 + 80);
  v16 = (v13 + *(v9 + 80) + v15) & ~*(v9 + 80);
  v17 = swift_allocObject();
  v18 = v24;
  v19 = v25;
  *(v17 + 2) = a5;
  *(v17 + 3) = v18;
  v20 = v27;
  *(v17 + 4) = v19;
  *(v17 + 5) = v20;
  (*(v12 + 32))(&v17[v15], v14, v11);
  sub_2706C9394(v23, &v17[v16], type metadata accessor for PasteboardDataTransferID);
  type metadata accessor for Completion();
  swift_allocObject();

  return sub_2706DD8C4(0xD00000000000005CLL, v26 | 0x8000000000000000, 355, sub_2706C95E0, v17);
}

void sub_2706C4204(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = type metadata accessor for PasteboardMessage();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    if (qword_28081C738 != -1)
    {
      swift_once();
    }

    v16 = sub_2706E58DC();
    v17 = __swift_project_value_buffer(v16, qword_2808292F0);
    v18 = MEMORY[0x28223BE20](v17);
    *(&v33 - 2) = a3;
    *(&v33 - 1) = a4;
    MEMORY[0x28223BE20](v18);
    *(&v33 - 2) = a1;
    sub_270694664(sub_2706C96B0, v19, sub_2706C938C, (&v33 - 4), v20, v21, v22, v23, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, vars0, vars8);
    v34 = a1;
    v24 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D4A8, &qword_2706EAD40);
    if (swift_dynamicCast())
    {
      v25 = v33;
    }

    else
    {
      v25 = 0xC000000000000040;
    }

    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081C9A0, &qword_2706E7F18);
    v27 = *(v26 + 48);
    v28 = *(v26 + 64);
    v29 = sub_2706E576C();
    (*(*(v29 - 8) + 16))(v15, a6, v29);
    sub_2706C9444(a7, &v15[v27], type metadata accessor for PasteboardDataTransferID);
    *&v15[v28] = v25;
    swift_storeEnumTagMultiPayload();
    type metadata accessor for Completion();
    swift_allocObject();
    sub_270694BA4(v25);
    v30 = sub_2706DD84C();
    sub_2706928E0(v15, v30);

    sub_2706C93F0();
    sub_270694B50();
    v31 = swift_allocError();
    *v32 = v25;
    sub_270694BA4(v25);
    sub_2706DD768();

    sub_270688D9C(v25);
  }

  else
  {
    sub_2706DD768();
  }
}

void *sub_2706C4528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_2706E576C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v16 = "start completed: ";
  (*(v10 + 16))(&v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v9);
  v12 = (*(v10 + 80) + 48) & ~*(v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = a4;
  *(v13 + 3) = a1;
  *(v13 + 4) = a2;
  *(v13 + 5) = v4;
  (*(v10 + 32))(&v13[v12], &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  type metadata accessor for Completion();
  swift_allocObject();

  return sub_2706DD8C4(0xD00000000000005CLL, v16 | 0x8000000000000000, 435, sub_2706C9780, v13);
}

void sub_2706C46D0(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v10 = type metadata accessor for PasteboardMessage();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    if (qword_28081C738 != -1)
    {
      swift_once();
    }

    v14 = sub_2706E58DC();
    v15 = __swift_project_value_buffer(v14, qword_2808292F0);
    v16 = MEMORY[0x28223BE20](v15);
    *(&v29 - 2) = a3;
    *(&v29 - 1) = a4;
    MEMORY[0x28223BE20](v16);
    *(&v29 - 2) = a1;
    sub_270694664(sub_2706C96B0, v17, sub_2706C938C, (&v29 - 4), v18, v19, v20, v21, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, vars0, vars8);
    v30 = a1;
    v22 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D4A8, &qword_2706EAD40);
    if (swift_dynamicCast())
    {
      v23 = v29;
    }

    else
    {
      v23 = 0xC000000000000040;
    }

    v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081CA18, &qword_2706E7F40) + 48);
    v25 = sub_2706E576C();
    (*(*(v25 - 8) + 16))(v13, a6, v25);
    *&v13[v24] = v23;
    swift_storeEnumTagMultiPayload();
    type metadata accessor for Completion();
    swift_allocObject();
    sub_270694BA4(v23);
    v26 = sub_2706DD84C();
    sub_2706928E0(v13, v26);

    sub_2706C93F0();
    sub_270694B50();
    v27 = swift_allocError();
    *v28 = v23;
    sub_270694BA4(v23);
    sub_2706DD768();

    sub_270688D9C(v23);
  }

  else
  {
    sub_2706DD768();
  }
}

uint64_t sub_2706C49CC(uint64_t a1)
{
  sub_2706B462C(a1, v14);
  sub_2706E5F3C();
  v12 = MEMORY[0x277D84F90];
  v13 = sub_2706E59AC();
  v11 = sub_2706B46F4();
  v10[0] = swift_allocObject();
  sub_2706B45F4(&v12, v10[0] + 16);
  sub_270684F34(v10, v1, v2, v3, v4, v5, v6, v7, v9, v10[0], v10[1], v10[2], &type metadata for PropertyListTypeDecoder.RootDecoder, v11, v12, v13, v14[0], v14[1], v14[2], v14[3]);
  return sub_2706B4748(&v12);
}

uint64_t DragController.DragSessionProxy.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

double sub_2706C4AF4()
{
  OUTLINED_FUNCTION_11_7();
  swift_beginAccess();
  return *(v0 + 16);
}

uint64_t sub_2706C4B24(double a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_2706C4BB0()
{
  v0 = sub_27069EF80();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_2706C4C20(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = swift_unknownObjectRetain();
  return sub_2706C4C88(v5, v3);
}

uint64_t sub_2706C4C5C()
{
  OUTLINED_FUNCTION_10_7();
  result = swift_unknownObjectWeakLoadStrong();
  v2 = *(v0 + 32);
  return result;
}

uint64_t sub_2706C4C88(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 32) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_2706C4CE8(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  OUTLINED_FUNCTION_11_1();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v1 + 32);
  v3[3] = Strong;
  v3[4] = v5;
  return sub_2706C4D60;
}

void sub_2706C4D60(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + 32) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_2706C4DE4(uint64_t a1, uint64_t *a2)
{
  v4 = sub_2706E576C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a1);
  v9 = *a2;
  return sub_2706C4F2C(v7);
}

uint64_t sub_2706C4EB0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC13UniversalDrag14DragController_uuid;
  OUTLINED_FUNCTION_11_7();
  swift_beginAccess();
  v4 = sub_2706E576C();
  OUTLINED_FUNCTION_6_0(v4);
  return (*(v5 + 16))(a1, v1 + v3);
}

uint64_t sub_2706C4F2C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13UniversalDrag14DragController_uuid;
  OUTLINED_FUNCTION_11_1();
  v4 = sub_2706E576C();
  OUTLINED_FUNCTION_6_0(v4);
  (*(v5 + 40))(v1 + v3, a1);
  return swift_endAccess();
}

void sub_2706C5004(uint64_t a1)
{
  v2 = v1;
  if (qword_28081C730 != -1)
  {
    swift_once();
  }

  v4 = sub_2706E58DC();
  __swift_project_value_buffer(v4, qword_2808292D8);

  oslog = sub_2706E58BC();
  v5 = sub_2706E5BEC();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 136446466;
    v17 = &type metadata for DragController.State;
    v18 = v7;
    v16[0] = a1;

    v8 = sub_2706CB238(v16);
    v10 = sub_2706C83E8(v8, v9, &v18);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2082;
    v11 = *(v2 + OBJC_IVAR____TtC13UniversalDrag14DragController_state);
    v17 = &type metadata for DragController.State;
    v16[0] = v11;

    v12 = sub_2706CB238(v16);
    v14 = sub_2706C83E8(v12, v13, &v18);

    *(v6 + 14) = v14;
    _os_log_impl(&dword_270680000, oslog, v5, "DragController: %{public}s → %{public}s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2743A75B0](v7, -1, -1);
    MEMORY[0x2743A75B0](v6, -1, -1);
  }
}

uint64_t sub_2706C51F0(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC13UniversalDrag14DragController_state);
  *(v1 + OBJC_IVAR____TtC13UniversalDrag14DragController_state) = a1;

  sub_2706C5004(v2);
}

uint64_t sub_2706C5254()
{
  v1 = *(v0 + OBJC_IVAR____TtC13UniversalDrag14DragController_state);
  if (v1 >> 62)
  {
    if (v1 >> 62 != 1)
    {
      return 0;
    }

    v1 = *((v1 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    if (v1)
    {
LABEL_6:
      v2 = *(v1 + 32);
    }

    __break(1u);
  }

  v1 = *(v1 + 16);
  if (v1)
  {
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t DragController.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  DragController.init()();
  return v3;
}

uint64_t DragController.init()()
{
  *(v0 + 16) = 0x3FF0000000000000;
  *(v0 + 32) = 0;
  swift_unknownObjectWeakInit();
  sub_2706E574C();
  *(v0 + OBJC_IVAR____TtC13UniversalDrag14DragController_state) = 0x8000000000000000;
  v1 = (v0 + OBJC_IVAR____TtC13UniversalDrag14DragController_forwardingEventHandler);
  *v1 = 0;
  v1[1] = 0;
  return v0;
}

void sub_2706C5374(void *a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v9 = (v5 + OBJC_IVAR____TtC13UniversalDrag14DragController_forwardingEventHandler);
  v10 = *(v5 + OBJC_IVAR____TtC13UniversalDrag14DragController_forwardingEventHandler);
  v11 = v9[1];
  *v9 = a2;
  v9[1] = a3;

  sub_27068F6BC(v10);
  type metadata accessor for Completion();
  OUTLINED_FUNCTION_21_3();
  swift_allocObject();

  v12 = sub_2706DD84C();
  sub_2706C5FF8();

  sub_2706C80C0(a1, *&a4, *&a5, v12, 0);
}

void sub_2706C5494(void *a1)
{
  v1 = a1;
  sub_2706C5FF8();
  OUTLINED_FUNCTION_11_7();

  sub_2706C80C0(v2, v3, v4, v5, 3);
}

BOOL sub_2706C5540()
{
  v1 = *(v0 + OBJC_IVAR____TtC13UniversalDrag14DragController_state);
  if (v1 >> 62)
  {
    if (v1 >> 62 != 1)
    {
      return 0;
    }

    v2 = *((v1 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    if (v2)
    {
      v3 = *(v2 + 40) >> 61 >= 3uLL;
      return !v3;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v4 = *(v1 + 16);
  if (!v4)
  {
    goto LABEL_12;
  }

  v3 = *(v4 + 48) >= 5u;
  return !v3;
}

void sub_2706C55A0()
{
  v2 = v0;
  v3 = sub_2706E576C();
  v83 = OUTLINED_FUNCTION_4(v3);
  v84 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v83);
  OUTLINED_FUNCTION_3_0();
  v9 = v8 - v7;
  v10 = sub_2706E54DC();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  sub_2706E54CC();
  sub_2706C81B0();
  v13 = &type metadata for PeerDeviceEvent;
  sub_2706E54BC();
  v82 = v9;
  v14 = v86;
  v15 = v87;
  v17 = v88;
  v16 = v89;
  if (qword_28081C730 != -1)
  {
    OUTLINED_FUNCTION_2_0();
  }

  v18 = sub_2706E58DC();
  __swift_project_value_buffer(v18, qword_2808292D8);
  v19 = OUTLINED_FUNCTION_6_9();
  sub_2706C8204(v19, v20);
  v21 = sub_2706E58BC();
  v22 = sub_2706E5BEC();
  v23 = OUTLINED_FUNCTION_6_9();
  sub_2706B2C20(v23, v24);
  if (os_log_type_enabled(v21, v22))
  {
    v25 = v2;
    v79 = OUTLINED_FUNCTION_29_1();
    v26 = OUTLINED_FUNCTION_28_1();
    v85[0] = OUTLINED_FUNCTION_46_2(v26);
    *v79 = 136446210;
    v89 = &type metadata for PeerDeviceEvent;
    OUTLINED_FUNCTION_21_3();
    v27 = swift_allocObject();
    v86 = v27;
    v27[2] = v14;
    v27[3] = v15;
    v27[4] = v17;
    v27[5] = v16;
    v28 = OUTLINED_FUNCTION_6_9();
    sub_2706C8204(v28, v29);
    v30 = sub_2706CB238(&v86);
    v32 = sub_2706C83E8(v30, v31, v85);

    LOBYTE(v13) = v79;
    *(v79 + 4) = v32;
    v2 = v25;
    v33 = v22;
    v34 = v21;
    _os_log_impl(&dword_270680000, v21, v33, "DragController peer event: %{public}s", v79, 0xCu);
    v21 = v80;
    __swift_destroy_boxed_opaque_existential_1(v80);
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_12_0();
  }

  else
  {
  }

  switch((v15 >> 60) & 3)
  {
    case 1uLL:
      v48 = OBJC_IVAR____TtC13UniversalDrag14DragController_uuid;
      OUTLINED_FUNCTION_11_7();
      swift_beginAccess();
      v78 = *(v84 + 16);
      v78(v82, v2 + v48, v83);

      v49 = sub_2706E573C();
      v77 = *(v84 + 8);
      v77(v82, v83);
      if (v49)
      {
        v86 = v14;
        v87 = v15;
        v88 = 0;
        v89 = 0;
        v90 = 2;
        OUTLINED_FUNCTION_51_2();
        OUTLINED_FUNCTION_36_3();

        sub_2706B2C20(v14, v15);
        OUTLINED_FUNCTION_11_7();
        v41 = 2;
LABEL_15:
        sub_2706C80C0(v37, v38, v39, v40, v41);
        return;
      }

      OUTLINED_FUNCTION_49_1();

      OUTLINED_FUNCTION_1_9("Drag SessionIDs don't match. ");
      sub_2706E572C();
      OUTLINED_FUNCTION_42_2();

      OUTLINED_FUNCTION_18_5();
      v78(v82, v2 + v48, v83);
      v72 = sub_2706E572C();
      v74 = v73;
      v77(v82, v83);
      MEMORY[0x2743A5EF0](v72, v74);

      OUTLINED_FUNCTION_12_8();
      goto LABEL_48;
    case 2uLL:
      v86 = v14;
      v87 = v15 & 0xCFFFFFFFFFFFFFFFLL;
      v88 = 0;
      v89 = 0;
      v90 = 4;
      sub_270692D3C(v14, v15 & 0xCFFFFFFFFFFFFFFFLL);
      OUTLINED_FUNCTION_51_2();
      OUTLINED_FUNCTION_36_3();

      v42 = OUTLINED_FUNCTION_6_9();
      sub_2706B2C20(v42, v43);
      OUTLINED_FUNCTION_11_7();
      v41 = 4;
      goto LABEL_15;
    case 3uLL:
      v44 = v16 | v17;
      if (v15 != 0x3000000000000000 || v44 | v14)
      {
        v50 = v15 == 0x3000000000000000 && v14 == 1;
        if (!v50 || v44)
        {
          v53 = v15 == 0x3000000000000000 && v14 == 2;
          if (v53 && !v44)
          {
            v54 = OBJC_IVAR____TtC13UniversalDrag14DragController_uuid;
            OUTLINED_FUNCTION_11_7();
            swift_beginAccess();
            v55 = *(v84 + 16);
            v55(v82, v2 + v54, v83);
            v56 = sub_2706E573C();
            v81 = v2;
            v57 = *(v84 + 8);
            v57(v82, v83);
            if (v56)
            {
              v58 = *MEMORY[0x277CCA590];
              sub_2706E5A3C();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081DAB0, &qword_2706ED200);
              inited = swift_initStackObject();
              *(inited + 16) = xmmword_2706E8FC0;
              v60 = *MEMORY[0x277CCA068];
              *(inited + 32) = sub_2706E5A3C();
              *(inited + 40) = v61;
              *(inited + 72) = MEMORY[0x277D837D0];
              *(inited + 48) = 0xD000000000000017;
              *(inited + 56) = 0x80000002706F0F30;
              v62 = sub_2706E59AC();
              v63 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
              v64 = OUTLINED_FUNCTION_15_1();
              v86 = sub_2706C82B8(v64, v65, -6700, v62);
              v87 = 0;
              v88 = 0;
              v89 = 0;
              v90 = 3;
              v66 = v86;
              sub_2706C5FF8();

              OUTLINED_FUNCTION_36_3();

              OUTLINED_FUNCTION_11_7();
              v41 = 3;
              goto LABEL_15;
            }

            OUTLINED_FUNCTION_49_1();

            OUTLINED_FUNCTION_1_9("Drag SessionIDs don't match. ");
            sub_2706E572C();
            OUTLINED_FUNCTION_42_2();

            OUTLINED_FUNCTION_18_5();
            v55(v82, v81 + v54, v83);
            sub_2706E572C();
            v57(v82, v83);
            OUTLINED_FUNCTION_25_3();

            OUTLINED_FUNCTION_12_8();
LABEL_48:
            OUTLINED_FUNCTION_48_2();
            __break(1u);
            JUMPOUT(0x2706C5FE8);
          }

          v67 = v15 == 0x3000000000000000 && v14 == 3;
          if (!v67 || v44)
          {
            OUTLINED_FUNCTION_11_7();
            swift_beginAccess();
            v70 = OUTLINED_FUNCTION_3_8();
            (v21)(v70);
            OUTLINED_FUNCTION_20_4();
            v71 = OUTLINED_FUNCTION_7_7();
            (v17)(v71);
            if (v13)
            {
              v47 = 4;
              goto LABEL_24;
            }
          }

          else
          {
            OUTLINED_FUNCTION_11_7();
            swift_beginAccess();
            v68 = OUTLINED_FUNCTION_3_8();
            (v21)(v68);
            OUTLINED_FUNCTION_20_4();
            v69 = OUTLINED_FUNCTION_7_7();
            (v17)(v69);
            if (v13)
            {
              v47 = 3;
              goto LABEL_24;
            }
          }
        }

        else
        {
          OUTLINED_FUNCTION_11_7();
          swift_beginAccess();
          v51 = OUTLINED_FUNCTION_3_8();
          (v21)(v51);
          OUTLINED_FUNCTION_20_4();
          v52 = OUTLINED_FUNCTION_7_7();
          (v17)(v52);
          if (v13)
          {
            v47 = 2;
            goto LABEL_24;
          }
        }

LABEL_47:
        OUTLINED_FUNCTION_16_9();

        OUTLINED_FUNCTION_1_9("Drag SessionIDs don't match. ");
        sub_2706E572C();
        OUTLINED_FUNCTION_42_2();

        OUTLINED_FUNCTION_18_5();
        v75 = OUTLINED_FUNCTION_14_7();
        v1(v75);
        sub_2706E572C();
        v76 = OUTLINED_FUNCTION_8_9();
        (v17)(v76);
        OUTLINED_FUNCTION_25_3();

        OUTLINED_FUNCTION_12_8();
        goto LABEL_48;
      }

      OUTLINED_FUNCTION_11_7();
      swift_beginAccess();
      v45 = OUTLINED_FUNCTION_3_8();
      (v21)(v45);
      OUTLINED_FUNCTION_20_4();
      v46 = OUTLINED_FUNCTION_7_7();
      (v17)(v46);
      if ((v13 & 1) == 0)
      {
        goto LABEL_47;
      }

      v47 = 1;
LABEL_24:
      v86 = v47;
      v87 = 0;
      v88 = 0;
      v89 = 0;
      v90 = 5;
      OUTLINED_FUNCTION_51_2();
      OUTLINED_FUNCTION_36_3();

      return;
    default:
      v86 = v14;
      v87 = v15;
      v88 = v17;
      v89 = v16;
      v90 = 1;

      OUTLINED_FUNCTION_51_2();
      OUTLINED_FUNCTION_36_3();

      v35 = OUTLINED_FUNCTION_6_9();
      sub_2706B2C20(v35, v36);
      v37 = OUTLINED_FUNCTION_6_9();
      v41 = 1;
      goto LABEL_15;
  }
}

void sub_2706C5FF8()
{
  v2 = v1;
  v3 = OUTLINED_FUNCTION_20_1();
  v157 = type metadata accessor for DragForwardingCoordinator.Event(v3);
  v4 = OUTLINED_FUNCTION_6_0(v157);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3_0();
  v158 = v8 - v7;
  v161 = sub_2706E576C();
  v9 = OUTLINED_FUNCTION_4(v161);
  v163 = v10;
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v9);
  v159 = v155 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v162 = v155 - v15;
  v17 = *v0;
  v16 = *(v0 + 8);
  v18 = *(v0 + 16);
  v19 = *(v0 + 24);
  v20 = *(v0 + 32);
  if (qword_28081C730 != -1)
  {
    OUTLINED_FUNCTION_2_0();
  }

  v21 = sub_2706E58DC();
  v22 = __swift_project_value_buffer(v21, qword_2808292D8);

  v23 = OUTLINED_FUNCTION_24_2();
  sub_2706C912C(v23, v24, v25, v26, v20);
  v156 = v22;
  v27 = sub_2706E58BC();
  v28 = sub_2706E5BEC();

  v29 = OUTLINED_FUNCTION_24_2();
  sub_2706C80C0(v29, v30, v31, v32, v20);
  if (os_log_type_enabled(v27, v28))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v164 = v17;
    v155[1] = v34;
    v165 = v34;
    *v33 = 136315394;
    v35 = *(v2 + OBJC_IVAR____TtC13UniversalDrag14DragController_state);
    v169 = &type metadata for DragController.State;
    *&v167 = v35;

    v36 = sub_2706CB238(&v167);
    v38 = sub_2706C83E8(v36, v37, &v165);
    v160 = v2;
    v39 = v38;

    *(v33 + 4) = v39;
    *(v33 + 12) = 2080;
    v169 = &type metadata for DragController.Event;
    v40 = swift_allocObject();
    *&v167 = v40;
    *(v40 + 16) = v164;
    *(v40 + 24) = v16;
    *(v40 + 32) = v18;
    *(v40 + 40) = v19;
    *(v40 + 48) = v20;
    v41 = OUTLINED_FUNCTION_31_4();
    sub_2706C912C(v41, v16, v18, v19, v20);
    v42 = sub_2706CB238(&v167);
    v44 = sub_2706C83E8(v42, v43, &v165);

    *(v33 + 14) = v44;
    v2 = v160;
    _os_log_impl(&dword_270680000, v27, v28, "DragController: %s - %s", v33, 0x16u);
    swift_arrayDestroy();
    v17 = v164;
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_12_0();
  }

  v45 = OBJC_IVAR____TtC13UniversalDrag14DragController_state;
  v46 = *(v2 + OBJC_IVAR____TtC13UniversalDrag14DragController_state);
  if (v46 >> 62)
  {
    if (v46 >> 62 == 1)
    {
      switch(v20)
      {
        case 2:
          if (*((v46 & 0x3FFFFFFFFFFFFFFFLL) + 0x18))
          {
            *&v167 = v17;
            BYTE8(v167) = v16;

            sub_2706E03D4(&v167);
LABEL_48:

            goto LABEL_49;
          }

          __break(1u);
LABEL_80:
          __break(1u);
          goto LABEL_81;
        case 3:
          v80 = *((v46 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
          if (!v80)
          {
            goto LABEL_50;
          }

          if (v17)
          {
            OUTLINED_FUNCTION_47_2();
            swift_retain_n();

            v81 = v17;
          }

          else
          {
            v119 = *MEMORY[0x277CCA590];
            v120 = sub_2706E5A3C();
            OUTLINED_FUNCTION_46_2(v120);
            v160 = v121;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081DAB0, &qword_2706ED200);
            v81 = 0;
            v122 = v18;
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_2706E8FC0;
            v124 = *MEMORY[0x277CCA068];
            v125 = sub_2706E5A3C();
            v126 = v19;
            v127 = v16;
            v128 = MEMORY[0x277D837D0];
            *(inited + 32) = v125;
            *(inited + 40) = v129;
            *(inited + 72) = v128;
            *(inited + 48) = 0x206E776F6E6B6E55;
            *(inited + 56) = 0xEF6572756C696166;
            OUTLINED_FUNCTION_47_2();
            swift_retain_n();

            v130 = sub_2706E59AC();
            v131 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
            v132 = OUTLINED_FUNCTION_31_4();
            sub_2706C82B8(v132, v160, -6700, v130);
            v133 = OUTLINED_FUNCTION_20_1();
            sub_2706C80C0(v133, v127, v122, v126, 3);
          }

          v134 = OUTLINED_FUNCTION_24_2();
          sub_2706C912C(v134, v135, v136, v137, 3);
          sub_2706E0538(v81);
          if (*(v80 + 40) >> 61 < 3uLL)
          {

            OUTLINED_FUNCTION_47_2();

            goto LABEL_50;
          }

          OUTLINED_FUNCTION_40_1();
          OUTLINED_FUNCTION_2_5();

          OUTLINED_FUNCTION_47_2();

          goto LABEL_78;
        case 4:
          goto LABEL_15;
        case 5:
          v82 = v18 | v16 | v19;
          if (v17 == 1 && !v82)
          {
            if (*((v46 & 0x3FFFFFFFFFFFFFFFLL) + 0x18))
            {
              OUTLINED_FUNCTION_37_2();
              swift_storeEnumTagMultiPayload();

              sub_2706E05C8(v45);

              OUTLINED_FUNCTION_4_8();
              sub_2706C93F0();
LABEL_50:
              OUTLINED_FUNCTION_39_1();
              return;
            }

LABEL_81:
            __break(1u);
            goto LABEL_82;
          }

          if (v17 != 2 || v82)
          {
            if (v17 != 3 || v82)
            {
LABEL_62:
              if (v17 == 4 && !v82)
              {
                OUTLINED_FUNCTION_40_1();
                OUTLINED_FUNCTION_2_5();
                OUTLINED_FUNCTION_11_1();
                v114 = OUTLINED_FUNCTION_27_4();
                v115(v114);
                swift_endAccess();
                v116 = OUTLINED_FUNCTION_35_2(xmmword_2706ED1C0);
                sub_2706C7064(v116, v117, v118);
                goto LABEL_50;
              }

              goto LABEL_83;
            }

            if (*((v46 & 0x3FFFFFFFFFFFFFFFLL) + 0x18))
            {
              OUTLINED_FUNCTION_37_2();
              swift_storeEnumTagMultiPayload();

              sub_2706E05C8(v45);

              OUTLINED_FUNCTION_4_8();
              sub_2706C93F0();
            }

            else
            {
            }

            OUTLINED_FUNCTION_40_1();
            OUTLINED_FUNCTION_2_5();
          }

          else
          {
            v110 = *((v46 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
            if (!v110)
            {
              goto LABEL_50;
            }

            v111 = v158;
            swift_storeEnumTagMultiPayload();

            sub_2706E05C8(v111);
            OUTLINED_FUNCTION_4_8();
            sub_2706C93F0();
            if (*(v110 + 40) >> 61 < 3uLL)
            {
              goto LABEL_48;
            }

            OUTLINED_FUNCTION_40_1();
            OUTLINED_FUNCTION_2_5();
          }

LABEL_78:
          OUTLINED_FUNCTION_11_1();
          v140 = OUTLINED_FUNCTION_27_4();
          v141(v140);
          swift_endAccess();
          goto LABEL_50;
        default:
          goto LABEL_83;
      }
    }

    switch(v20)
    {
      case 0:
        v47 = *&v16;
        v48 = *&v18;
        type metadata accessor for DragForwardingCoordinator();
        v49 = swift_allocObject();

        v51 = sub_2706C92B8(v50, v2, v49);
        OUTLINED_FUNCTION_50_1(v51);
        type metadata accessor for DragController.Context();
        v52 = swift_allocObject();
        *(v52 + 16) = 0;
        *(v52 + 24) = v49;

        sub_2706C51F0(v52 | 0x4000000000000000);
        OUTLINED_FUNCTION_11_7();
        swift_beginAccess();
        v53 = *(v2 + 16);
        v54 = OBJC_IVAR____TtC13UniversalDrag14DragController_uuid;
        OUTLINED_FUNCTION_11_7();
        swift_beginAccess();
        v55 = v163;
        v56 = v162;
        v57 = v161;
        (*(v163 + 16))(v162, v2 + v54, v161);
        sub_2706E02A8(v17, v56, v19, v47, v48, v53);

        (*(v55 + 8))(v56, v57);
        goto LABEL_50;
      case 1:
        v89 = *&v18;
        type metadata accessor for DragSurrogateCoordinator();
        v90 = swift_allocObject();

        v92 = sub_2706C922C(v91, v90);
        OUTLINED_FUNCTION_50_1(v92);
        type metadata accessor for DragController.Context();
        v93 = swift_allocObject();
        *(v93 + 16) = v90;
        *(v93 + 24) = 0;
        v94 = v163;
        v95 = *(v163 + 16);
        v96 = OUTLINED_FUNCTION_45_2();
        v98 = *(v97 - 256);
        v99(v96);
        v100 = OBJC_IVAR____TtC13UniversalDrag14DragController_uuid;
        OUTLINED_FUNCTION_11_1();
        v101 = *(v94 + 40);

        v101(v2 + v100, v19, v98);
        swift_endAccess();

        sub_2706C51F0(v102);
        OUTLINED_FUNCTION_11_7();
        swift_beginAccess();
        sub_2706AFA40(v17, v16, 1.0 / *(v2 + 16), v89, *&v19);

        goto LABEL_49;
      case 2:
      case 3:
        goto LABEL_50;
      case 4:
        v105 = sub_2706E58BC();
        OUTLINED_FUNCTION_46_2(v105);
        v106 = sub_2706E5BEC();
        v107 = OUTLINED_FUNCTION_31_4();
        if (os_log_type_enabled(v107, v108))
        {
          v109 = swift_slowAlloc();
          *v109 = 0;
          _os_log_impl(&dword_270680000, v164, v106, "Ignoring data requested/sent while idle.", v109, 2u);
          OUTLINED_FUNCTION_12_0();

          goto LABEL_72;
        }

        OUTLINED_FUNCTION_31_4();
        OUTLINED_FUNCTION_39_1();

        break;
      case 5:
        v103 = (v17 & 0xFFFFFFFFFFFFFFFELL) == 2 || v17 == 4;
        if (!v103 || v18 | v16 | v19)
        {
          goto LABEL_38;
        }

        goto LABEL_50;
      default:
LABEL_38:
        *&v167 = 0;
        *(&v167 + 1) = 0xE000000000000000;
        sub_2706E5E3C();
        OUTLINED_FUNCTION_34_4();
        OUTLINED_FUNCTION_43_2();
        *&v167 = *(v2 + v45);
        OUTLINED_FUNCTION_19_9();
        MEMORY[0x2743A5EF0](540945696, 0xE400000000000000);
        *&v167 = v17;
        *(&v167 + 1) = v16;
        v168 = v18;
        v169 = v19;
        LOBYTE(v170) = v20;
        OUTLINED_FUNCTION_19_9();
        OUTLINED_FUNCTION_13_9();
        v104 = 370;
        goto LABEL_84;
    }
  }

  else
  {
    switch(v20)
    {
      case 2:
        if (!*(v46 + 16))
        {
          goto LABEL_80;
        }

        *&v167 = v17;
        BYTE8(v167) = v16;

        sub_2706AFAD4(&v167);
        goto LABEL_48;
      case 3:
        v85 = *(v2 + OBJC_IVAR____TtC13UniversalDrag14DragController_state);

        OUTLINED_FUNCTION_40_1();
        v84 = xmmword_2706EAA60;
        goto LABEL_30;
      case 4:
LABEL_15:
        v155[0] = v20;
        v158 = v18;
        v164 = v19;
        v58 = v16;
        v59 = v17;
        if (!sub_2706C5254())
        {
          goto LABEL_85;
        }

        v60 = OBJC_IVAR____TtC13UniversalDrag14DragController_uuid;
        OUTLINED_FUNCTION_11_7();
        swift_beginAccess();
        v61 = v163;
        v62 = *(v163 + 16);
        v63 = v162;
        v64 = v161;
        v62(v162, v2 + v60, v161);
        v157 = v60;
        v160 = v2;
        v65 = v2 + v60;
        v66 = v159;
        v156 = v62;
        v62(v159, v65, v64);
        v67 = v59;
        OUTLINED_FUNCTION_26_4();
        sub_2706C912C(v68, v69, v70, v71, v72);
        v73 = sub_2706E573C();
        v74 = *(v61 + 8);
        v74(v66, v64);
        v163 = v61 + 8;
        v74(v63, v64);
        if (v73)
        {
          sub_2706C28F0(v160, v67, v58);
          OUTLINED_FUNCTION_26_4();
          sub_2706C80C0(v75, v76, v77, v78, v79);
LABEL_49:

          goto LABEL_50;
        }

        v165 = 0;
        v166 = 0xE000000000000000;
        sub_2706E5E3C();

        v165 = 0xD00000000000001DLL;
        v166 = 0x80000002706F0F10;
        v142 = v157;
        v143 = v160;
        v144 = OUTLINED_FUNCTION_45_2();
        v146 = *(v145 - 256);
        v147 = v156;
        (v156)(v144);
        v148 = sub_2706E572C();
        OUTLINED_FUNCTION_46_2(v148);
        v150 = v149;
        v74(v58, v146);
        v151 = OUTLINED_FUNCTION_31_4();
        MEMORY[0x2743A5EF0](v151, v150);

        OUTLINED_FUNCTION_18_5();
        v147(v58, v143 + v142, v146);
        v152 = sub_2706E572C();
        v154 = v153;
        v74(v58, v146);
        MEMORY[0x2743A5EF0](v152, v154);

        OUTLINED_FUNCTION_13_9();
        v104 = 439;
        goto LABEL_84;
      case 5:
        if (!(v18 | v16 | v17 | v19))
        {
          if (*(v46 + 16))
          {
            v167 = xmmword_2706E8FD0;
            v169 = 0;
            v170 = 0;
            v168 = 0;

            sub_2706AFBAC(&v167);
            goto LABEL_48;
          }

LABEL_82:
          __break(1u);
LABEL_83:
          *&v167 = 0;
          *(&v167 + 1) = 0xE000000000000000;

          sub_2706E5E3C();
          OUTLINED_FUNCTION_34_4();
          OUTLINED_FUNCTION_43_2();
          *&v167 = *(v2 + v45);
          OUTLINED_FUNCTION_19_9();
          MEMORY[0x2743A5EF0](540945696, 0xE400000000000000);
          *&v167 = v17;
          *(&v167 + 1) = v16;
          v168 = v18;
          v169 = v19;
          LOBYTE(v170) = v20;
          OUTLINED_FUNCTION_19_9();
          OUTLINED_FUNCTION_13_9();
          v104 = 450;
LABEL_84:
          v155[0] = v104;
          while (1)
          {
LABEL_85:
            OUTLINED_FUNCTION_48_2();
            __break(1u);
          }
        }

        v82 = v18 | v16 | v19;
        if (v17 == 2 && !v82)
        {
          v83 = *(v2 + OBJC_IVAR____TtC13UniversalDrag14DragController_state);

          OUTLINED_FUNCTION_40_1();
          v84 = xmmword_2706EAA50;
LABEL_30:
          v86 = OUTLINED_FUNCTION_35_2(v84);
          sub_2706C7064(v86, v87, v88);
          goto LABEL_49;
        }

        if (v17 != 3 || v82)
        {
          goto LABEL_62;
        }

        if (*(v46 + 16))
        {
          v167 = xmmword_2706ED1D0;
          v169 = 0;
          v170 = 0;
          v168 = 0;

          sub_2706AFBAC(&v167);
        }

        else
        {
          v138 = *(v2 + OBJC_IVAR____TtC13UniversalDrag14DragController_state);
        }

        OUTLINED_FUNCTION_40_1();
LABEL_72:
        OUTLINED_FUNCTION_39_1();

        break;
      default:
        goto LABEL_83;
    }
  }
}

void sub_2706C7064(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v5 = v4;
  OUTLINED_FUNCTION_20_1();
  v7 = sub_2706E576C();
  v8 = OUTLINED_FUNCTION_4(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3_0();
  v15 = v14 - v13;
  v16 = *v3;
  v17 = v3[1];
  v19 = v3[2];
  v18 = v3[3];
  OUTLINED_FUNCTION_11_7();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v45 = *(v5 + 32);
    v46 = a3;
    v20 = sub_2706E550C();
    v21 = *(v20 + 48);
    v22 = *(v20 + 52);
    swift_allocObject();
    v48[0] = v16;
    v48[1] = v17;
    sub_2706E54FC();
    v48[2] = v19;
    v49 = v18;
    sub_2706C8C2C();
    v23 = sub_2706E54EC();
    v25 = v24;
    ObjectType = swift_getObjectType();
    v27 = OBJC_IVAR____TtC13UniversalDrag14DragController_uuid;
    OUTLINED_FUNCTION_11_7();
    swift_beginAccess();
    (*(v10 + 16))(v15, v5 + v27, v7);
    (*(v45 + 8))(v5, v23, v25, v15, a2, v46, ObjectType);
    sub_270688E88(v23, v25);
    swift_unknownObjectRelease();

    (*(v10 + 8))(v15, v7);
  }

  else
  {
    v28 = v17;
    if (qword_28081C730 != -1)
    {
      OUTLINED_FUNCTION_2_0();
    }

    v29 = sub_2706E58DC();
    __swift_project_value_buffer(v29, qword_2808292D8);
    v30 = v16;
    OUTLINED_FUNCTION_33_3();
    sub_2706C8204(v31, v32);
    v33 = sub_2706E58BC();
    v34 = sub_2706E5BFC();
    OUTLINED_FUNCTION_33_3();
    sub_2706B2C20(v35, v36);
    if (os_log_type_enabled(v33, v34))
    {
      v37 = OUTLINED_FUNCTION_29_1();
      v38 = OUTLINED_FUNCTION_28_1();
      v50 = v38;
      *v37 = 136315138;
      v49 = &type metadata for PeerDeviceEvent;
      OUTLINED_FUNCTION_21_3();
      v39 = swift_allocObject();
      v48[0] = v39;
      v39[2] = v30;
      v39[3] = v28;
      v39[4] = v19;
      v39[5] = v18;
      OUTLINED_FUNCTION_33_3();
      sub_2706C8204(v40, v41);
      v42 = sub_2706CB238(v48);
      v44 = sub_2706C83E8(v42, v43, &v50);

      *(v37 + 4) = v44;
      _os_log_impl(&dword_270680000, v33, v34, "DragController: no delegate to receive peer device event: %s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v38);
      OUTLINED_FUNCTION_12_0();
      OUTLINED_FUNCTION_12_0();
    }

    if (a2)
    {
      a2();
    }
  }
}

uint64_t sub_2706C73B8(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  OUTLINED_FUNCTION_20_1();
  v5 = sub_2706E576C();
  v6 = OUTLINED_FUNCTION_4(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_0();
  v13 = v12 - v11;
  v14 = *v3;
  v15 = v3[1];
  v17 = v3[2];
  v16 = v3[3];
  v18 = sub_2706E550C();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  sub_2706E54FC();
  v46[0] = v14;
  v46[1] = v15;
  v46[2] = v17;
  v47 = v16;
  sub_2706C8C2C();
  v42 = sub_2706E54EC();
  v43 = v21;
  OUTLINED_FUNCTION_11_7();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v22 = *(v4 + 32);
    ObjectType = swift_getObjectType();
    v24 = OBJC_IVAR____TtC13UniversalDrag14DragController_uuid;
    OUTLINED_FUNCTION_11_7();
    swift_beginAccess();
    (*(v8 + 16))(v13, v4 + v24, v5);
    (*(v22 + 16))(v4, v42, v43, v13, a2, a3, ObjectType, v22);
    sub_270688E88(v42, v43);
    swift_unknownObjectRelease();

    return (*(v8 + 8))(v13, v5);
  }

  else
  {
    if (qword_28081C730 != -1)
    {
      OUTLINED_FUNCTION_2_0();
    }

    v26 = sub_2706E58DC();
    __swift_project_value_buffer(v26, qword_2808292D8);
    v27 = OUTLINED_FUNCTION_23_4();
    sub_2706C8204(v27, v28);
    v29 = sub_2706E58BC();
    v30 = sub_2706E5BFC();
    v31 = OUTLINED_FUNCTION_23_4();
    sub_2706B2C20(v31, v32);
    if (os_log_type_enabled(v29, v30))
    {
      v33 = OUTLINED_FUNCTION_29_1();
      v34 = OUTLINED_FUNCTION_28_1();
      v45 = v34;
      *v33 = 136315138;
      v47 = &type metadata for PeerDeviceEvent;
      OUTLINED_FUNCTION_21_3();
      v35 = swift_allocObject();
      v46[0] = v35;
      v35[2] = v14;
      v35[3] = v15;
      v35[4] = v17;
      v35[5] = v16;
      v36 = OUTLINED_FUNCTION_23_4();
      sub_2706C8204(v36, v37);
      v38 = sub_2706CB238(v46);
      v40 = sub_2706C83E8(v38, v39, &v45);

      *(v33 + 4) = v40;
      _os_log_impl(&dword_270680000, v29, v30, "DragController: no delegate to receive peer device pasteboard event: %s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v34);
      OUTLINED_FUNCTION_12_0();
      OUTLINED_FUNCTION_12_0();
    }

    if (a2)
    {
      a2();
    }

    sub_270688E88(v42, v43);
  }
}

uint64_t DragController.deinit()
{
  sub_2706A59B4(v0 + 24);
  v1 = OBJC_IVAR____TtC13UniversalDrag14DragController_uuid;
  v2 = sub_2706E576C();
  OUTLINED_FUNCTION_6_0(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(v0 + OBJC_IVAR____TtC13UniversalDrag14DragController_state);

  v5 = *(v0 + OBJC_IVAR____TtC13UniversalDrag14DragController_forwardingEventHandler + 8);
  sub_27068F6BC(*(v0 + OBJC_IVAR____TtC13UniversalDrag14DragController_forwardingEventHandler));
  return v0;
}

uint64_t DragController.__deallocating_deinit()
{
  DragController.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_2706C7810(__n128 a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC13UniversalDrag14DragController_forwardingEventHandler);
  if (v2)
  {
    v3 = *(v1 + OBJC_IVAR____TtC13UniversalDrag14DragController_forwardingEventHandler + 8);
    v5 = a1;

    v2(&v5);
    v4 = OUTLINED_FUNCTION_15_1();
    sub_27068F6BC(v4);
  }
}

void sub_2706C786C(uint64_t a1, char a2, char *a3)
{
  v4 = *(v3 + OBJC_IVAR____TtC13UniversalDrag14DragController_forwardingEventHandler);
  if (v4)
  {
    v6 = *(v3 + OBJC_IVAR____TtC13UniversalDrag14DragController_forwardingEventHandler + 8);
    v10 = a2 & 1;
    v11 = a3;
    v7 = OUTLINED_FUNCTION_15_1();
    sub_2706A5AA4(v7);
    v8 = a3;
    v4(&v10);
    v9 = OUTLINED_FUNCTION_15_1();
    sub_27068F6BC(v9);
    sub_2706C8C14(v10, v11);
  }
}

uint64_t sub_2706C7908(uint64_t a1, uint64_t *a2, uint64_t a3, const char *a4, void (*a5)(void))
{
  v7 = *a2;
  v8 = a2[1];
  v9 = a2[2];
  v10 = a2[3];
  if (qword_28081C730 != -1)
  {
    OUTLINED_FUNCTION_2_0();
  }

  v11 = sub_2706E58DC();
  __swift_project_value_buffer(v11, qword_2808292D8);
  v12 = OUTLINED_FUNCTION_22_5();
  sub_2706C8204(v12, v13);
  v14 = sub_2706E58BC();
  v15 = sub_2706E5BEC();
  v16 = OUTLINED_FUNCTION_22_5();
  sub_2706B2C20(v16, v17);
  if (os_log_type_enabled(v14, v15))
  {
    buf = OUTLINED_FUNCTION_29_1();
    v27 = OUTLINED_FUNCTION_28_1();
    v29 = v27;
    *buf = 136315138;
    v31 = &type metadata for PeerDeviceEvent;
    OUTLINED_FUNCTION_21_3();
    v18 = swift_allocObject();
    v30[0] = v18;
    v18[2] = v7;
    v18[3] = v8;
    v18[4] = v9;
    v18[5] = v10;
    v19 = OUTLINED_FUNCTION_22_5();
    sub_2706C8204(v19, v20);
    v21 = sub_2706CB238(v30);
    v23 = a3;
    v24 = sub_2706C83E8(v21, v22, &v29);

    *(buf + 4) = v24;
    a3 = v23;
    _os_log_impl(&dword_270680000, v14, v15, a4, buf, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v27);
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_12_0();
  }

  else
  {
  }

  v30[0] = v7;
  v30[1] = v8;
  v30[2] = v9;
  v31 = v10;

  sub_2706C7064(v30, a5, a3);
}

uint64_t sub_2706C7B0C()
{
  OUTLINED_FUNCTION_10_7();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    OUTLINED_FUNCTION_54_2();
    v2 = *(v0 + 32);
    v3 = OUTLINED_FUNCTION_38_3();
    v4(v3);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2706C7B80()
{
  OUTLINED_FUNCTION_10_7();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    OUTLINED_FUNCTION_54_2();
    v2 = *(v0 + 40);
    v3 = OUTLINED_FUNCTION_38_3();
    v4(v3);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2706C7BF8(uint64_t a1, char *a2)
{
  v4 = *a2;
  OUTLINED_FUNCTION_10_7();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = OUTLINED_FUNCTION_54_2();
    v7[0] = v4;
    (*(v3 + 24))(v2, v7, v6, v3);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2706C7C70(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_10_7();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(v2 + 32);
    ObjectType = swift_getObjectType();
    (*(v5 + 48))(v2, a2 == 0, ObjectType, v5);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_2706C7CF4(int a1, id a2)
{
  if (a2)
  {
    if (a2 == 1)
    {
      OUTLINED_FUNCTION_15_8();
      v4 = 0;
      v5 = 0;
    }

    else
    {
      v6 = a2;
      sub_2706C5494(a2);
      v4 = 0;
      v5 = a2;
    }
  }

  else
  {
    OUTLINED_FUNCTION_15_8();
    v5 = 0;
    v4 = 1;
  }

  OUTLINED_FUNCTION_10_7();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v2 + 32);
    ObjectType = swift_getObjectType();
    (*(v7 + 56))(v2, v4, v5, ObjectType, v7);
    swift_unknownObjectRelease();
  }

  sub_2706B2B20(a2);
}

uint64_t sub_2706C7DD4@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_10_7();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(v1 + 32);
    ObjectType = swift_getObjectType();
    (*(v4 + 64))(v1, ObjectType, v4);
    return swift_unknownObjectRelease();
  }

  else
  {
    *a1 = 1;
  }

  return result;
}

uint64_t sub_2706C7E5C()
{
  OUTLINED_FUNCTION_10_7();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return 0;
  }

  v2 = OUTLINED_FUNCTION_54_2();
  v3 = (*(v1 + 72))(v0, v2, v1);
  swift_unknownObjectRelease();
  return v3;
}

uint64_t sub_2706C7EE0()
{
  v16 = *MEMORY[0x277D85DE8];
  v13 = sub_2706E590C();
  v0 = sub_2706E56AC();
  v1 = OPACKDecodeNSData(v0);

  if (!v1)
  {
    goto LABEL_5;
  }

  sub_2706E5D6C();
  swift_unknownObjectRelease();
  sub_270690AAC(&v14, v15);
  if (v13 != sub_2706E590C())
  {
    __swift_destroy_boxed_opaque_existential_1(v15);
LABEL_5:
    v3 = *MEMORY[0x277CCA590];
    v4 = sub_2706E5A3C();
    v6 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081DAB0, &qword_2706ED200);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2706E8FC0;
    v8 = *MEMORY[0x277CCA068];
    *(inited + 32) = sub_2706E5A3C();
    *(inited + 40) = v9;
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 48) = 0xD000000000000014;
    *(inited + 56) = 0x80000002706F1220;
    v10 = sub_2706E59AC();
    v11 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    sub_2706C82B8(v4, v6, v13, v10);
    result = swift_willThrow();
    goto LABEL_6;
  }

  type metadata accessor for PropertyListTypeDecoder();
  swift_initStackObject();
  sub_2706C49CC(v15);
  result = __swift_destroy_boxed_opaque_existential_1(v15);
LABEL_6:
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2706C80C0(void *a1, unint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  switch(a5)
  {
    case 0:
    case 1:

      break;
    case 2:

      break;
    case 3:

      break;
    case 4:

      sub_270688E88(a1, a2);
      break;
    default:
      return;
  }
}

unint64_t sub_2706C81B0()
{
  result = qword_28081DAA8;
  if (!qword_28081DAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081DAA8);
  }

  return result;
}

uint64_t sub_2706C8204(uint64_t result, unint64_t a2)
{
  switch((a2 >> 60) & 3)
  {
    case 1uLL:

      break;
    case 2uLL:
      v2 = a2 & 0xCFFFFFFFFFFFFFFFLL;

      result = sub_270692D3C(result, v2);
      break;
    case 3uLL:
      return result;
    default:

      break;
  }

  return result;
}

id sub_2706C82B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_2706E5A0C();

  if (a4)
  {
    v8 = sub_2706E598C();
  }

  else
  {
    v8 = 0;
  }

  v9 = [v4 initWithDomain:v7 code:a3 userInfo:v8];

  return v9;
}

uint64_t sub_2706C8368(uint64_t a1)
{
  if (a1 < 16)
  {
    return 0;
  }

  sub_2706E5E3C();
  return 0;
}

uint64_t sub_2706C83B0()
{
  v1 = v0[4];
  v2 = v0[5];
  sub_2706B2C20(v0[2], v0[3]);
  OUTLINED_FUNCTION_21_3();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t sub_2706C83E8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2706C8C80(v11, 0, 0, 1, a1, a2);
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
    sub_2706B462C(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

uint64_t sub_2706C8500@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_2706C4C5C();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t type metadata accessor for DragController()
{
  result = qword_28081DAB8;
  if (!qword_28081DAB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2706C85AC()
{
  result = sub_2706E576C();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13UniversalDrag0B10ControllerC15ForwardingEventO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2706C8904(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  v5 = v4 + 1;
  v6 = v4 - 1;
  if (v5 >= 3)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2706C896C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

void *sub_2706C89BC(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = a2;
  }

  return result;
}

unint64_t get_enum_tag_for_layout_string_13UniversalDrag0B10ControllerC5State33_E6CE935C2BCACFC1E057289D071BF1FDLLO(uint64_t *a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t sub_2706C8B28(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7E && *(a1 + 8))
    {
      v2 = *a1 + 125;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x7D)
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

uint64_t sub_2706C8B7C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t *sub_2706C8BDC(unint64_t *result, uint64_t a2)
{
  if (a2 < 2)
  {
    v2 = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    v2 = (8 * (a2 - 2)) | 0x8000000000000000;
  }

  *result = v2;
  return result;
}

void sub_2706C8C14(int a1, char *a2)
{
  if ((a2 - 1) >= 2)
  {
  }
}

unint64_t sub_2706C8C2C()
{
  result = qword_28081DAC8;
  if (!qword_28081DAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081DAC8);
  }

  return result;
}

unint64_t sub_2706C8C80(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_2706C8D80(a5, a6);
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
    result = sub_2706E5ECC();
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

uint64_t sub_2706C8D80(uint64_t a1, unint64_t a2)
{
  v4 = sub_2706C8DCC(a1, a2);
  sub_2706C8EE4(&unk_28806AA38);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_2706C8DCC(uint64_t a1, unint64_t a2)
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

  for (; v5; v5 = sub_2706E5AAC())
  {
    result = sub_2706C8FC8(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_2706E5E1C();
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
          result = sub_2706E5ECC();
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

uint64_t sub_2706C8EE4(uint64_t result)
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

    result = sub_2706C9038(result, v8, 1, v3);
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

void *sub_2706C8FC8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28081DAD0, "č");
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_2706C9038(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28081DAD0, "č");
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

id sub_2706C912C(id result, unint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  switch(a5)
  {
    case 0:
    case 1:

      break;
    case 2:

      break;
    case 3:

      result = result;
      break;
    case 4:

      result = sub_270692D3C(result, a2);
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2706C922C(uint64_t a1, uint64_t a2)
{
  *(a2 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(a2 + 40) = 0;
  *(a2 + 48) = 7;
  *(a2 + 56) = 0;
  type metadata accessor for PasteboardController_iOS();
  swift_allocObject();
  v3 = sub_27069F2AC();
  *(a2 + 24) = &off_28806D8F8;
  *(a2 + 32) = v3;
  swift_unknownObjectWeakAssign();

  return a2;
}

uint64_t sub_2706C92B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(a3 + 40) = xmmword_2706ED1F0;
  type metadata accessor for PasteboardController_iOS();
  swift_allocObject();
  v4 = sub_27069F384();
  *(a3 + 24) = &off_28806D8B8;
  *(a3 + 32) = v4;
  swift_unknownObjectWeakAssign();

  return a3;
}

uint64_t sub_2706C934C()
{
  sub_2706C80C0(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

uint64_t sub_2706C9394(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_6_0(v4);
  v6 = *(v5 + 32);
  v7 = OUTLINED_FUNCTION_15_1();
  v8(v7);
  return a2;
}

uint64_t sub_2706C93F0()
{
  v1 = OUTLINED_FUNCTION_20_1();
  v3 = v2(v1);
  OUTLINED_FUNCTION_6_0(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_2706C9444(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_6_0(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_15_1();
  v8(v7);
  return a2;
}

uint64_t sub_2706C94A0()
{
  v1 = sub_2706E576C();
  OUTLINED_FUNCTION_4(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 48) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(type metadata accessor for PasteboardDataTransferID(0) - 8);
  v9 = *(v8 + 80);
  v10 = (v5 + v7 + v9) & ~v9;
  v11 = *(v8 + 64);
  v12 = v4 | v9;
  v13 = *(v0 + 2);

  v14 = *(v0 + 4);

  v15 = *(v0 + 5);

  v16 = *(v3 + 8);
  v16(&v0[v5], v1);
  v16(&v0[v10], v1);

  return MEMORY[0x2821FE8E8](v0, v10 + v11, v12 | 7);
}

void sub_2706C95E0()
{
  OUTLINED_FUNCTION_20_1();
  v2 = *(sub_2706E576C() - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(*(type metadata accessor for PasteboardDataTransferID(0) - 8) + 80);
  OUTLINED_FUNCTION_44_1();

  sub_2706C9224(v0, v6, v7, v8, v9, v1 + v3, v1 + v10);
}

uint64_t sub_2706C96B8()
{
  v1 = sub_2706E576C();
  OUTLINED_FUNCTION_4(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 48) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v0 + 2);

  v9 = *(v0 + 4);

  v10 = *(v0 + 5);

  (*(v3 + 8))(&v0[v5], v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v7, v4 | 7);
}

void sub_2706C9780()
{
  OUTLINED_FUNCTION_20_1();
  v2 = *(*(sub_2706E576C() - 8) + 80);
  OUTLINED_FUNCTION_44_1();

  sub_2706C921C(v0, v3, v4, v5, v6, v1 + v7);
}

uint64_t OPACKDecodeNSData(void *a1)
{
  v1 = a1;
  v2 = OPACKDecodeData();

  return v2;
}

uint64_t sub_2706C982C()
{
  v1 = v0[2];

  v2 = v0[3];

  __swift_destroy_boxed_opaque_existential_1(v0 + 4);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
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

uint64_t get_enum_tag_for_layout_string_13UniversalDrag0B10ControllerC5Event33_E6CE935C2BCACFC1E057289D071BF1FDLLO(uint64_t a1)
{
  if ((*(a1 + 32) & 7u) <= 4)
  {
    return *(a1 + 32) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2706C98C0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFB && *(a1 + 33))
    {
      v2 = *a1 + 250;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 <= 5)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2706C9900(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_2706C9948(uint64_t result, unsigned int a2)
{
  if (a2 >= 5)
  {
    *result = a2 - 5;
    *(result + 8) = 0;
    LOBYTE(a2) = 5;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_2_5()
{
  v2 = *(v0 - 304);

  return sub_2706E574C();
}

uint64_t OUTLINED_FUNCTION_3_8()
{
  v1 = *(v0 - 256);
  v2 = *(*(v0 - 248) + 16);
  return *(v0 - 272);
}

uint64_t OUTLINED_FUNCTION_7_7()
{
  v3 = *(v1 + 8);
  result = v0;
  *(v2 - 248) = v1 + 8;
  return result;
}

uint64_t OUTLINED_FUNCTION_8_9()
{
  result = v0;
  v3 = *(v1 - 248);
  return result;
}

uint64_t OUTLINED_FUNCTION_10_7()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_14_7()
{
  result = v0;
  v3 = *(v1 - 256);
  return result;
}

void OUTLINED_FUNCTION_15_8()
{

  sub_2706C5FF8();
}

uint64_t OUTLINED_FUNCTION_16_9()
{
  *(v0 - 136) = 0;
  *(v0 - 128) = 0xE000000000000000;

  return sub_2706E5E3C();
}

void OUTLINED_FUNCTION_18_5()
{

  JUMPOUT(0x2743A5EF0);
}

uint64_t OUTLINED_FUNCTION_19_9()
{

  return sub_2706E5F2C();
}

uint64_t OUTLINED_FUNCTION_20_4()
{
  v2 = *(v0 - 280);

  return sub_2706E573C();
}

void OUTLINED_FUNCTION_25_3()
{

  JUMPOUT(0x2743A5EF0);
}

void OUTLINED_FUNCTION_26_4()
{
  v1 = *(v0 - 336);
  v2 = *(v0 - 288);
  v3 = *(v0 - 368);
}

uint64_t OUTLINED_FUNCTION_27_4()
{
  v3 = *(*(v2 - 296) + 40);
  result = v1 + v0;
  v5 = *(v2 - 312);
  return result;
}

void OUTLINED_FUNCTION_34_4()
{
  v1 = *(v0 - 168);
  *(v0 - 280) = *(v0 - 176);
  *(v0 - 272) = v1;
}

uint64_t OUTLINED_FUNCTION_35_2(__n128 a1)
{
  *(v1 - 176) = a1;
  *(v1 - 160) = 0;
  *(v1 - 152) = 0;
  return v1 - 176;
}

uint64_t OUTLINED_FUNCTION_37_2()
{
  result = *(v0 - 336);
  v2 = *(v0 - 344);
  return result;
}

uint64_t OUTLINED_FUNCTION_40_1()
{

  return sub_2706C51F0(0x8000000000000000);
}

void OUTLINED_FUNCTION_42_2()
{

  JUMPOUT(0x2743A5EF0);
}

void OUTLINED_FUNCTION_43_2()
{

  JUMPOUT(0x2743A5EF0);
}

void OUTLINED_FUNCTION_44_1()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
}

uint64_t OUTLINED_FUNCTION_48_2()
{

  return sub_2706E5F8C();
}

uint64_t OUTLINED_FUNCTION_49_1()
{
  *(v0 - 136) = 0;
  *(v0 - 128) = 0xE000000000000000;

  return sub_2706E5E3C();
}

uint64_t OUTLINED_FUNCTION_50_1(uint64_t a1)
{
  v2 = *(a1 + 32) + 16;

  return swift_weakAssign();
}

void OUTLINED_FUNCTION_51_2()
{

  sub_2706C5FF8();
}

uint64_t OUTLINED_FUNCTION_54_2()
{
  v2 = *(v0 + 32);

  return swift_getObjectType();
}

uint64_t sub_2706C9DEC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = swift_unknownObjectRetain();
  return sub_2706C9E54(v5, v3);
}

uint64_t sub_2706C9E28()
{
  OUTLINED_FUNCTION_3_9();
  result = swift_unknownObjectWeakLoadStrong();
  v2 = *(v0 + 40);
  return result;
}

uint64_t sub_2706C9E54(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 40) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_2706C9EB4(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v1 + 40);
  v3[3] = Strong;
  v3[4] = v5;
  return sub_2706C9F34;
}

void sub_2706C9F34(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + 40) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t DragObserver_iOS.__allocating_init(machServiceName:)()
{
  v0 = swift_allocObject();
  DragObserver_iOS.init(machServiceName:)();
  return v0;
}

uint64_t DragObserver_iOS.init(machServiceName:)()
{
  *(v0 + 24) = [objc_allocWithZone(type metadata accessor for DragObserver_iOS.InternalDragObserver()) init];
  *(v0 + 40) = 0;
  swift_unknownObjectWeakInit();
  sub_270690D44(0, &qword_28081DAE0, 0x277D75EE0);
  v1 = sub_2706CA0F4();
  *(v0 + 16) = v1;
  [v1 setDelegate_];
  v2 = *(v0 + 24);
  swift_weakAssign();
  [*(v0 + 16) activate];
  return v0;
}

id sub_2706CA0F4()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_2706E5A0C();

  v2 = [v0 initWithMachServiceName_];

  return v2;
}

uint64_t DragObserver_iOS.deinit()
{
  [*(v0 + 16) invalidate];

  sub_2706A59B4(v0 + 32);
  return v0;
}

uint64_t DragObserver_iOS.__deallocating_deinit()
{
  DragObserver_iOS.deinit();

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t sub_2706CA1DC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_2706C9E28();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_2706CA304(uint64_t a1)
{
  OUTLINED_FUNCTION_3_9();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(v1 + 40);
    ObjectType = swift_getObjectType();
    (*(v4 + 8))(v1, a1, ObjectType, v4);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2706CA380()
{
  OUTLINED_FUNCTION_3_9();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v1 = *(v0 + 40);
    ObjectType = swift_getObjectType();
    v3 = (*(v1 + 24))(v0, ObjectType, v1);
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t sub_2706CA404(int a1, id a2)
{
  v3 = v2;
  [a2 setDelegate_];
  v5 = [a2 sessionIdentifier];
  v6 = OBJC_IVAR____TtCC13UniversalDrag16DragObserver_iOSP33_46F4F7DBF7EBE5237C36EDB049F4D13E20InternalDragObserver_trackedSessions;
  swift_beginAccess();
  v7 = a2;
  v8 = *(v3 + v6);
  swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v3 + v6);
  sub_27068FF28(v7, v5);
  *(v3 + v6) = v10;
  return swift_endAccess();
}

uint64_t sub_2706CA53C(uint64_t a1, unsigned int a2)
{
  v3 = v2;
  v5 = OBJC_IVAR____TtCC13UniversalDrag16DragObserver_iOSP33_46F4F7DBF7EBE5237C36EDB049F4D13E20InternalDragObserver_trackedSessions;
  swift_beginAccess();
  v6 = *(v2 + v5);
  v7 = sub_27068F904(a2);
  if (v8)
  {
    v9 = v7;
    v10 = *(v3 + v5);
    swift_isUniquelyReferenced_nonNull_native();
    v14 = *(v3 + v5);
    *(v3 + v5) = 0x8000000000000000;
    v11 = *(v14 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081CEE0, &unk_2706E9150);
    sub_2706E5F5C();
    v12 = *(*(v14 + 56) + 8 * v9);
    sub_270690D44(0, &qword_28081DB70, 0x277D75EE8);
    sub_2706E5F6C();
    *(v3 + v5) = v14;
  }

  return swift_endAccess();
}

void sub_2706CA730(void *a1, void *a2)
{
  if (swift_weakLoadStrong())
  {
    v4 = sub_2706CAFB4(a2);
    type metadata accessor for DragController.DragSessionProxy();
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    v6 = a1;
    [v6 setDelegate_];
    sub_2706CA304(v5);
    LODWORD(v6) = [v6 sessionIdentifier];
    swift_beginAccess();
    v7 = sub_2706CAED8(v6);
    swift_endAccess();

    if (v4 && (v8 = sub_2706C2200(v4), , v8))
    {
    }

    else
    {
      if (qword_28081C730 != -1)
      {
        swift_once();
      }

      v9 = sub_2706E58DC();
      __swift_project_value_buffer(v9, qword_2808292D8);
      v10 = sub_2706E58BC();
      v11 = sub_2706E5BEC();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&dword_270680000, v10, v11, "got empty previews", v12, 2u);
        MEMORY[0x2743A75B0](v12, -1, -1);
      }
    }
  }
}

uint64_t sub_2706CA990()
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = sub_2706CA380();

    return v1 & 1;
  }

  return result;
}

id sub_2706CAA28()
{
  v1 = OBJC_IVAR____TtCC13UniversalDrag16DragObserver_iOSP33_46F4F7DBF7EBE5237C36EDB049F4D13E20InternalDragObserver_trackedSessions;
  sub_270690D44(0, &qword_28081DB70, 0x277D75EE8);
  *&v0[v1] = sub_2706E59AC();
  v2 = OBJC_IVAR____TtCC13UniversalDrag16DragObserver_iOSP33_46F4F7DBF7EBE5237C36EDB049F4D13E20InternalDragObserver_imageRetryCountBySession;
  *&v0[v2] = sub_2706E59AC();
  swift_weakInit();
  v4.receiver = v0;
  v4.super_class = type metadata accessor for DragObserver_iOS.InternalDragObserver();
  return objc_msgSendSuper2(&v4, sel_init);
}

id sub_2706CAB20()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DragObserver_iOS.InternalDragObserver();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2706CABB4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_27068F764(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_1_10();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081CF50, &qword_2706E9170);
  OUTLINED_FUNCTION_2_6();
  v8 = *(v15 + 48);
  v9 = sub_2706E576C();
  OUTLINED_FUNCTION_6_0(v9);
  (*(v10 + 8))(v8 + *(v10 + 72) * v6, v9);
  v11 = *(*(v15 + 56) + 8 * v6);
  type metadata accessor for _BasePasteboardController.DataSessionProvider();
  OUTLINED_FUNCTION_0_8();
  sub_2706CB024(v12, v13);
  OUTLINED_FUNCTION_5_9();
  *v2 = v15;
  return v11;
}

uint64_t sub_2706CACAC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_27068F764(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_1_10();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081DB90, &qword_2706E9188);
  OUTLINED_FUNCTION_2_6();
  v8 = *(v15 + 48);
  v9 = sub_2706E576C();
  OUTLINED_FUNCTION_6_0(v9);
  (*(v10 + 8))(v8 + *(v10 + 72) * v6, v9);
  v11 = *(*(v15 + 56) + 8 * v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D270, &unk_2706EA090);
  OUTLINED_FUNCTION_0_8();
  sub_2706CB024(v12, v13);
  OUTLINED_FUNCTION_5_9();
  *v2 = v15;
  return v11;
}

uint64_t sub_2706CADB0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_27068F860(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_1_10();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D290, &qword_2706EA0B0);
  OUTLINED_FUNCTION_2_6();
  v8 = *(v15 + 48);
  v9 = type metadata accessor for PasteboardDataTransferID(0);
  OUTLINED_FUNCTION_6_0(v9);
  sub_270687394(v8 + *(v10 + 72) * v6);
  v11 = (*(v15 + 56) + 16 * v6);
  v12 = *v11;
  v13 = v11[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28081DB80, &qword_2706E92A8);
  sub_2706CB024(&qword_28081CF88, type metadata accessor for PasteboardDataTransferID);
  sub_2706E5F6C();
  *v2 = v15;
  return v12;
}

uint64_t sub_2706CAED8(unsigned int a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_27068F904(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  swift_isUniquelyReferenced_nonNull_native();
  v11 = *v2;
  v8 = *(*v2 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081CEE0, &unk_2706E9150);
  sub_2706E5F5C();
  v9 = *(*(v11 + 56) + 8 * v6);
  sub_270690D44(0, &qword_28081DB70, 0x277D75EE8);
  sub_2706E5F6C();
  *v2 = v11;
  return v9;
}

uint64_t sub_2706CAFB4(void *a1)
{
  v1 = [a1 previewUpdates];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_270690D44(0, &qword_28081DB78, 0x277D75EF8);
  v3 = sub_2706E5B1C();

  return v3;
}

uint64_t sub_2706CB024(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_2_6()
{

  return sub_2706E5F5C();
}

uint64_t OUTLINED_FUNCTION_3_9()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_5_9()
{

  return sub_2706E5F6C();
}

uint64_t sub_2706CB0FC()
{
  MEMORY[0x2743A75B0](*(v0 + 16), -1, -1);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_2706CB178(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock(*(a1 + 16));
  v4 = *(a2 + 16);
  type metadata accessor for Completions();
  v5 = swift_allocObject();
  *(v5 + 16) = MEMORY[0x277D84F90];
  *(a2 + 16) = v5;
  sub_2706D21F8(3);
  os_unfair_lock_unlock(*(a1 + 16));

  return v4;
}

uint64_t sub_2706CB238(uint64_t *a1)
{
  v2 = sub_2706E663C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2706B462C(a1, v13);
  sub_2706E661C();
  v7 = sub_2706E662C();
  (*(v3 + 8))(v6, v2);
  sub_27068DE8C(v7, v13);

  sub_2706CB3C0(v13, v11);
  if (!v12[3])
  {
    sub_2706CB430(v11);
    goto LABEL_5;
  }

  v8 = v11[0];
  v9 = v11[1];
  __swift_destroy_boxed_opaque_existential_1(v12);
  if (!v9)
  {
LABEL_5:
    sub_2706B462C(a1, v11);
    v8 = sub_2706E5A4C();
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_2706CB430(v13);

    return v8;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  sub_2706CB430(v13);
  return v8;
}

uint64_t sub_2706CB3C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081DB98, "ʌ");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2706CB430(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081DB98, "ʌ");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2706CB498()
{
  OUTLINED_FUNCTION_21_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  if (qword_28081C738 != -1)
  {
    OUTLINED_FUNCTION_0_9();
    swift_once();
  }

  v6 = sub_2706E58DC();
  v7 = __swift_project_value_buffer(v6, qword_2808292F0);
  v8 = MEMORY[0x28223BE20](v7);
  LOBYTE(v27) = v5 & 1;
  MEMORY[0x28223BE20](v8);
  sub_270694664(sub_2706CF620, v9, sub_2706A74AC, v26, v10, v11, v12, v13, v26[0], v26[1], v3, v26[3], v26[4], v26[5], v0, v27, v28, v29, v30, v31, v32, v33);
  if (v5)
  {
    v14 = *(v0 + OBJC_IVAR____TtC13UniversalDrag21PasteboardDataSession_controller);
    type metadata accessor for Completion();
    OUTLINED_FUNCTION_21_3();
    swift_allocObject();
    OUTLINED_FUNCTION_15_9();
    v15 = sub_2706DD84C();
    sub_2706CBD18(v0, 0xC000000000000040, v15);
  }

  v16 = OBJC_IVAR____TtC13UniversalDrag21PasteboardDataSession_transfers;
  swift_beginAccess();
  v17 = *(v1 + v16);
  v18 = *(v17 + 16);
  if (v18)
  {
    v29 = v16;
    v30 = v1;
    type metadata accessor for Completion();

    v28 = v17;
    v19 = (v17 + 40);
    do
    {
      v20 = *(v19 - 1);
      v21 = *v19;
      ObjectType = swift_getObjectType();
      OUTLINED_FUNCTION_21_3();
      swift_allocObject();
      swift_unknownObjectRetain();
      OUTLINED_FUNCTION_15_9();
      v23 = sub_2706DD84C();
      (*(v21 + 64))(v3, v23, ObjectType, v21);
      swift_unknownObjectRelease();

      v19 += 2;
      --v18;
    }

    while (v18);

    v16 = v29;
    v1 = v30;
    v24 = *(v30 + v29);
  }

  *(v1 + v16) = MEMORY[0x277D84F90];

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_2706B2770(v1, v3);
    swift_unknownObjectRelease();
  }

  v25 = *(v1 + OBJC_IVAR____TtC13UniversalDrag21PasteboardDataSession_controller);
  sub_27069244C();
  OUTLINED_FUNCTION_16_0();
}

void sub_2706CB72C()
{
  switch(*(v0 + OBJC_IVAR____TtC13UniversalDrag21PasteboardDataSession_state))
  {
    case 1:
      if (qword_28081C738 != -1)
      {
        OUTLINED_FUNCTION_0_9();
        swift_once();
      }

      v17 = sub_2706E58DC();
      __swift_project_value_buffer(v17, qword_2808292F0);
      OUTLINED_FUNCTION_13_10();

      oslog = sub_2706E58BC();
      v2 = sub_2706E5BFC();

      if (!os_log_type_enabled(oslog, v2))
      {
        goto LABEL_18;
      }

      OUTLINED_FUNCTION_14_8();
      v3 = swift_slowAlloc();
      OUTLINED_FUNCTION_11_8();
      v4 = swift_slowAlloc();
      v21 = v4;
      *v3 = 136446210;
      v18 = sub_2706CD480();
      sub_2706C83E8(v18, v19, &v21);
      OUTLINED_FUNCTION_13_10();

      *(v3 + 4) = v0;
      v7 = "%{public}s: Data Session deactivated while activating";
      goto LABEL_17;
    case 2:
      if (qword_28081C738 != -1)
      {
        OUTLINED_FUNCTION_0_9();
        swift_once();
      }

      v8 = sub_2706E58DC();
      __swift_project_value_buffer(v8, qword_2808292F0);
      OUTLINED_FUNCTION_13_10();

      v9 = sub_2706E58BC();
      v10 = sub_2706E5C1C();

      if (os_log_type_enabled(v9, v10))
      {
        OUTLINED_FUNCTION_14_8();
        v11 = swift_slowAlloc();
        OUTLINED_FUNCTION_11_8();
        v12 = swift_slowAlloc();
        v21 = v12;
        *v11 = 136446210;
        v13 = sub_2706CD480();
        v15 = sub_2706C83E8(v13, v14, &v21);

        *(v11 + 4) = v15;
        _os_log_impl(&dword_270680000, v9, v10, "%{public}s: Data Session Deactivating", v11, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v12);
        v16 = OUTLINED_FUNCTION_7_8();
        MEMORY[0x2743A75B0](v16);
        OUTLINED_FUNCTION_8_10();
        MEMORY[0x2743A75B0]();
      }

      sub_2706CD468(3);

      sub_2706CD918(0, 0);
      break;
    case 3:
    case 4:
      return;
    default:
      if (qword_28081C738 != -1)
      {
        OUTLINED_FUNCTION_0_9();
        swift_once();
      }

      v1 = sub_2706E58DC();
      __swift_project_value_buffer(v1, qword_2808292F0);
      OUTLINED_FUNCTION_13_10();

      oslog = sub_2706E58BC();
      v2 = sub_2706E5BFC();

      if (os_log_type_enabled(oslog, v2))
      {
        OUTLINED_FUNCTION_14_8();
        v3 = swift_slowAlloc();
        OUTLINED_FUNCTION_11_8();
        v4 = swift_slowAlloc();
        v21 = v4;
        *v3 = 136446210;
        v5 = sub_2706CD480();
        sub_2706C83E8(v5, v6, &v21);
        OUTLINED_FUNCTION_13_10();

        *(v3 + 4) = v0;
        v7 = "%{public}s: Data Session deactivated while inactive";
LABEL_17:
        _os_log_impl(&dword_270680000, oslog, v2, v7, v3, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v4);
        OUTLINED_FUNCTION_8_10();
        MEMORY[0x2743A75B0]();
        OUTLINED_FUNCTION_8_10();
        MEMORY[0x2743A75B0]();
      }

      else
      {
LABEL_18:
      }

      break;
  }
}

uint64_t sub_2706CBAD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for PasteboardMessage();
  v6 = OUTLINED_FUNCTION_6_0(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_0();
  v11 = v10 - v9;
  v12 = sub_2706E576C();
  OUTLINED_FUNCTION_6_0(v12);
  (*(v13 + 16))(v11, a2);
  swift_storeEnumTagMultiPayload();
  sub_2706928E0(v11, a3);
  return sub_2706CF798();
}

uint64_t sub_2706CBBB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a4;
  v18 = a3;
  v6 = type metadata accessor for PasteboardMessage();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081CA08, &qword_2706E7F38);
  v11 = *(v10 + 48);
  v12 = *(v10 + 64);
  v13 = OBJC_IVAR____TtC13UniversalDrag21PasteboardDataSession_id;
  v14 = sub_2706E576C();
  v15 = *(*(v14 - 8) + 16);
  v15(v9, a1 + v13, v14);
  v15(&v9[v11], a2, v14);
  sub_270690CD8(v18, &v9[v12]);
  swift_storeEnumTagMultiPayload();
  sub_2706928E0(v9, v19);
  return sub_2706CF798();
}

uint64_t sub_2706CBD18(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PasteboardMessage();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081CA18, &qword_2706E7F40) + 48);
  v11 = OBJC_IVAR____TtC13UniversalDrag21PasteboardDataSession_id;
  v12 = sub_2706E576C();
  (*(*(v12 - 8) + 16))(v9, a1 + v11, v12);
  *&v9[v10] = a2;
  swift_storeEnumTagMultiPayload();
  sub_270694BA4(a2);
  sub_2706928E0(v9, a3);
  return sub_2706CF798();
}

uint64_t sub_2706CBE48(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for PasteboardMessage();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081C9A0, &qword_2706E7F18);
  v13 = *(v12 + 48);
  v14 = *(v12 + 64);
  v15 = OBJC_IVAR____TtC13UniversalDrag21PasteboardDataSession_id;
  v16 = sub_2706E576C();
  (*(*(v16 - 8) + 16))(v11, a1 + v15, v16);
  sub_270690CD8(a3, &v11[v13]);
  *&v11[v14] = a2;
  swift_storeEnumTagMultiPayload();
  sub_270694BA4(a2);
  sub_2706928E0(v11, a4);
  return sub_2706CF798();
}

void sub_2706CBF94(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5)
{
  if (!sub_2706CE17C(a1))
  {
LABEL_4:
    OUTLINED_FUNCTION_16_10();

    sub_2706CE218();
    return;
  }

  if (a4)
  {
    swift_unknownObjectRelease();
    goto LABEL_4;
  }

  v10 = v9;
  ObjectType = swift_getObjectType();
  (*(v10 + 48))(a2 & 1, a3, a5, ObjectType, v10);

  swift_unknownObjectRelease();
}

void sub_2706CC070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (sub_2706CE17C(a1))
  {
    v8 = v7;
    ObjectType = swift_getObjectType();
    (*(v8 + 56))(a2, a3, a4, ObjectType, v8);

    swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_16_10();

    sub_2706CE218();
  }
}

void sub_2706CC138(uint64_t a1, uint64_t a2)
{
  if (sub_2706CE17C(a1))
  {
    v4 = v3;
    ObjectType = swift_getObjectType();
    (*(v4 + 64))(0, a2, ObjectType, v4);

    swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_16_10();

    sub_2706CE218();
  }
}

void sub_2706CC1E8()
{
  OUTLINED_FUNCTION_21_0();
  v1 = v0;
  v3 = v2;
  if (sub_2706CE17C(v4))
  {
    v6 = v5;
    v7 = swift_allocObject();
    *(v7 + 16) = v3;
    ObjectType = swift_getObjectType();
    sub_270694B50();
    OUTLINED_FUNCTION_18_6();
    v9 = swift_allocError();
    *v10 = v7 | 0xA000000000000000;
    v11 = *(v6 + 64);
    sub_270694BA4(v3);

    v11(v9, v1, ObjectType, v6);

    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_16_0();
  }

  else
  {
    sub_270694B50();
    OUTLINED_FUNCTION_18_6();
    swift_allocError();
    *v13 = v3;
    sub_270694BA4(v3);
    sub_2706DD768();
    OUTLINED_FUNCTION_16_0();
  }
}

uint64_t sub_2706CC330(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_20_1();
  v5 = type metadata accessor for PasteboardDataTransferID(v4);
  v6 = OUTLINED_FUNCTION_16_3(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_0();
  (*(a2 + 32))(v2, a2);
  sub_2706E572C();
  v9 = OUTLINED_FUNCTION_4_9();
  v10 = sub_2706B8734(v9);
  v11 = MEMORY[0x2743A5EC0](v10);

  OUTLINED_FUNCTION_2_7();
  sub_2706CF798();
  MEMORY[0x2743A5EF0](58, 0xE100000000000000);
  v12 = sub_2706E671C();
  MEMORY[0x2743A5EF0](v12);

  return v11;
}

uint64_t sub_2706CC428(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = 0;
  v7 = *(a3 + 16);
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v7 == v6)
    {

      return v8;
    }

    if (v6 >= *(a3 + 16))
    {
      break;
    }

    v12 = *(a3 + 16 * v6 + 32);
    v13 = v12;
    swift_unknownObjectRetain();
    v9 = v5(&v13);
    if (v3)
    {

      swift_unknownObjectRelease();
      return v8;
    }

    if (v9)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      v14 = v8;
      if ((result & 1) == 0)
      {
        result = sub_2706BF8C4(0, *(v8 + 16) + 1, 1);
        v8 = v14;
      }

      v11 = *(v8 + 16);
      v10 = *(v8 + 24);
      if (v11 >= v10 >> 1)
      {
        result = sub_2706BF8C4((v10 > 1), v11 + 1, 1);
        v8 = v14;
      }

      *(v8 + 16) = v11 + 1;
      *(v8 + 16 * v11 + 32) = v12;
    }

    else
    {
      result = swift_unknownObjectRelease();
    }

    ++v6;
  }

  __break(1u);
  return result;
}

uint64_t sub_2706CC58C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v90 = a3;
  v4 = v3;
  v7 = type metadata accessor for PasteboardDataTransferID(0);
  v8 = OUTLINED_FUNCTION_16_3(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3_0();
  v91 = v12 - v11;
  v95 = sub_2706E576C();
  v13 = OUTLINED_FUNCTION_4(v95);
  v15 = v14;
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v13);
  v88 = v19;
  v89 = &v83[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v18);
  v21 = &v83[-v20];
  if (qword_28081C738 != -1)
  {
    OUTLINED_FUNCTION_0_9();
    swift_once();
  }

  v22 = sub_2706E58DC();
  v23 = __swift_project_value_buffer(v22, qword_2808292F0);
  v24 = *(v15 + 16);
  v93 = a1;
  v86 = v24;
  v87 = v15 + 16;
  v24(v21, a1, v95);

  swift_unknownObjectRetain();
  v25 = sub_2706E58BC();
  v26 = sub_2706E5C1C();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(v25, v26))
  {
    OUTLINED_FUNCTION_11_8();
    v27 = swift_slowAlloc();
    v92 = v23;
    v84 = v26;
    v28 = v27;
    v85 = swift_slowAlloc();
    v94[0] = v85;
    *v28 = 136446722;
    v29 = sub_2706CD480();
    v31 = sub_2706C83E8(v29, v30, v94);

    *(v28 + 4) = v31;
    *(v28 + 12) = 2082;
    sub_2706E572C();
    v32 = OUTLINED_FUNCTION_4_9();
    v33 = sub_2706B8734(v32);
    v34 = MEMORY[0x2743A5EC0](v33);
    v36 = v35;

    v37 = OUTLINED_FUNCTION_21_6();
    v38(v37);
    v39 = sub_2706C83E8(v34, v36, v94);

    *(v28 + 14) = v39;
    *(v28 + 22) = 2082;
    ObjectType = swift_getObjectType();
    (*(v90 + 32))(ObjectType);
    sub_2706E572C();
    v41 = OUTLINED_FUNCTION_4_9();
    v42 = sub_2706B8734(v41);
    v43 = MEMORY[0x2743A5EC0](v42);
    v45 = v44;

    OUTLINED_FUNCTION_2_7();
    sub_2706CF798();
    v46 = sub_2706C83E8(v43, v45, v94);

    *(v28 + 24) = v46;
    _os_log_impl(&dword_270680000, v25, v84, "Session %{public}s Request Representation: rep=%{public}s id=%{public}s", v28, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_8_10();
    MEMORY[0x2743A75B0]();
    OUTLINED_FUNCTION_8_10();
    MEMORY[0x2743A75B0]();
  }

  else
  {

    v47 = OUTLINED_FUNCTION_21_6();
    v48(v47);
  }

  if (*(v4 + OBJC_IVAR____TtC13UniversalDrag21PasteboardDataSession_state) == 3 && (v49 = OBJC_IVAR____TtC13UniversalDrag21PasteboardDataSession_transfers, swift_beginAccess(), !*(*(v4 + v49) + 16)))
  {

    v69 = sub_2706E58BC();
    sub_2706E5BFC();

    v70 = OUTLINED_FUNCTION_20_5();
    if (os_log_type_enabled(v70, v71))
    {
      OUTLINED_FUNCTION_14_8();
      swift_slowAlloc();
      OUTLINED_FUNCTION_9_8();
      v72 = swift_slowAlloc();
      v94[0] = v72;
      *v25 = 136446210;
      v73 = sub_2706CD480();
      sub_2706C83E8(v73, v74, v94);
      OUTLINED_FUNCTION_13_10();

      *(v25 + 4) = v4;
      OUTLINED_FUNCTION_6_10();
      _os_log_impl(v75, v76, v77, v78, v79, v80);
      __swift_destroy_boxed_opaque_existential_1(v72);
      OUTLINED_FUNCTION_8_10();
      MEMORY[0x2743A75B0]();
      v81 = OUTLINED_FUNCTION_7_8();
      MEMORY[0x2743A75B0](v81);
    }

    sub_270694B50();
    OUTLINED_FUNCTION_18_6();
    swift_allocError();
    *v82 = 0xC000000000000010;
    return swift_willThrow();
  }

  else
  {
    v50 = OBJC_IVAR____TtC13UniversalDrag21PasteboardDataSession_transfers;
    swift_beginAccess();
    sub_2706E25E4();
    v51 = *(*(v4 + v50) + 16);
    sub_2706E26B4(v51);
    v52 = *(v4 + v50);
    *(v52 + 16) = v51 + 1;
    v53 = v52 + 16 * v51;
    *(v53 + 32) = a2;
    v54 = v90;
    *(v53 + 40) = v90;
    *(v4 + v50) = v52;
    swift_endAccess();
    v92 = "ons";
    v55 = swift_allocObject();
    *(v55 + 24) = v54;
    swift_unknownObjectWeakInit();
    v56 = v89;
    v57 = v95;
    v86(v89, v93, v95);
    v58 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v59 = swift_allocObject();
    *(v59 + 16) = v55;
    *(v59 + 24) = v4;
    (*(v15 + 32))(v59 + v58, v56, v57);
    type metadata accessor for Completion();
    OUTLINED_FUNCTION_21_3();
    swift_allocObject();
    OUTLINED_FUNCTION_13_10();

    swift_unknownObjectRetain();
    v60 = OUTLINED_FUNCTION_15_9();
    v63 = sub_2706DD8C4(v60, v61, 124, v62, v59);
    v64 = swift_getObjectType();
    (*(v54 + 40))(v63, v64, v54);
    v65 = *(v4 + OBJC_IVAR____TtC13UniversalDrag21PasteboardDataSession_controller);
    v66 = v91;
    (*(v54 + 32))(v64, v54);
    OUTLINED_FUNCTION_21_3();
    swift_allocObject();
    OUTLINED_FUNCTION_15_9();
    v67 = sub_2706DD84C();
    sub_2706CBBB8(v4, v93, v66, v67);

    OUTLINED_FUNCTION_2_7();
    return sub_2706CF798();
  }
}

void sub_2706CCC3C()
{
  switch(*(v0 + OBJC_IVAR____TtC13UniversalDrag21PasteboardDataSession_state))
  {
    case 1:
      if (qword_28081C738 != -1)
      {
        OUTLINED_FUNCTION_0_9();
        swift_once();
      }

      v41 = sub_2706E58DC();
      __swift_project_value_buffer(v41, qword_2808292F0);
      OUTLINED_FUNCTION_24_3();
      v42 = sub_2706E58BC();
      sub_2706E5C1C();

      v43 = OUTLINED_FUNCTION_20_5();
      if (os_log_type_enabled(v43, v44))
      {
        OUTLINED_FUNCTION_14_8();
        swift_slowAlloc();
        OUTLINED_FUNCTION_9_8();
        v45 = swift_slowAlloc();
        v58[0] = v45;
        *v1 = 136446210;
        v46 = sub_2706CD480();
        v48 = sub_2706C83E8(v46, v47, v58);

        *(v1 + 4) = v48;
        OUTLINED_FUNCTION_6_10();
        _os_log_impl(v49, v50, v51, v52, v53, v54);
        __swift_destroy_boxed_opaque_existential_1(v45);
        OUTLINED_FUNCTION_8_10();
        MEMORY[0x2743A75B0]();
        v55 = OUTLINED_FUNCTION_7_8();
        MEMORY[0x2743A75B0](v55);
      }

      v56 = *(v0 + OBJC_IVAR____TtC13UniversalDrag21PasteboardDataSession_completions);
      swift_beginAccess();

      MEMORY[0x2743A5F60](v57);
      sub_2706E2658(*((*(v56 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10));
      sub_2706E5B4C();
      swift_endAccess();
      goto LABEL_20;
    case 2:
    case 3:
      if (qword_28081C738 != -1)
      {
        OUTLINED_FUNCTION_0_9();
        swift_once();
      }

      v2 = sub_2706E58DC();
      __swift_project_value_buffer(v2, qword_2808292F0);
      OUTLINED_FUNCTION_24_3();
      v3 = sub_2706E58BC();
      sub_2706E5C1C();

      v4 = OUTLINED_FUNCTION_20_5();
      if (os_log_type_enabled(v4, v5))
      {
        OUTLINED_FUNCTION_14_8();
        swift_slowAlloc();
        OUTLINED_FUNCTION_9_8();
        v6 = swift_slowAlloc();
        v58[0] = v6;
        *v1 = 136446210;
        v7 = sub_2706CD480();
        v9 = sub_2706C83E8(v7, v8, v58);

        *(v1 + 4) = v9;
        OUTLINED_FUNCTION_6_10();
        _os_log_impl(v10, v11, v12, v13, v14, v15);
        __swift_destroy_boxed_opaque_existential_1(v6);
        OUTLINED_FUNCTION_8_10();
        MEMORY[0x2743A75B0]();
        v16 = OUTLINED_FUNCTION_7_8();
        MEMORY[0x2743A75B0](v16);
      }

      sub_2706DD768();
      break;
    case 4:
      sub_2706B2CD4();
      v17 = sub_2706E483C(-6709, 0xD00000000000001DLL, 0x80000002706F14C0, "/Library/Caches/com.apple.xbs/Sources/UniversalDrag/UniversalDrag/PasteboardDataSession.swift", 93, 2, 84);
      if (qword_28081C738 != -1)
      {
        OUTLINED_FUNCTION_0_9();
        swift_once();
      }

      v18 = sub_2706E58DC();
      v19 = __swift_project_value_buffer(v18, qword_2808292F0);
      MEMORY[0x28223BE20](v19);

      sub_2706940CC(sub_2706A74AC);
      v20 = v17;
      sub_2706DD768();

      break;
    default:
      if (qword_28081C738 != -1)
      {
        OUTLINED_FUNCTION_0_9();
        swift_once();
      }

      v21 = sub_2706E58DC();
      __swift_project_value_buffer(v21, qword_2808292F0);
      OUTLINED_FUNCTION_24_3();
      v22 = sub_2706E58BC();
      sub_2706E5C1C();

      v23 = OUTLINED_FUNCTION_20_5();
      if (os_log_type_enabled(v23, v24))
      {
        OUTLINED_FUNCTION_14_8();
        swift_slowAlloc();
        OUTLINED_FUNCTION_9_8();
        v25 = swift_slowAlloc();
        v58[0] = v25;
        *v1 = 136446210;
        v26 = sub_2706CD480();
        v28 = sub_2706C83E8(v26, v27, v58);

        *(v1 + 4) = v28;
        OUTLINED_FUNCTION_6_10();
        _os_log_impl(v29, v30, v31, v32, v33, v34);
        __swift_destroy_boxed_opaque_existential_1(v25);
        OUTLINED_FUNCTION_8_10();
        MEMORY[0x2743A75B0]();
        v35 = OUTLINED_FUNCTION_7_8();
        MEMORY[0x2743A75B0](v35);
      }

      v36 = *(v0 + OBJC_IVAR____TtC13UniversalDrag21PasteboardDataSession_completions);
      swift_beginAccess();

      MEMORY[0x2743A5F60](v37);
      sub_2706E2658(*((*(v36 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10));
      sub_2706E5B4C();
      swift_endAccess();

      sub_2706CD468(1);
      v38 = *(v0 + OBJC_IVAR____TtC13UniversalDrag21PasteboardDataSession_controller);
      v39 = OBJC_IVAR____TtC13UniversalDrag21PasteboardDataSession_id;
      type metadata accessor for Completion();
      OUTLINED_FUNCTION_21_3();
      swift_allocObject();
      OUTLINED_FUNCTION_24_3();
      v40 = sub_2706DD8C4(0xD00000000000005DLL, 0x80000002706F1430, 68, sub_2706CF62C, v0);
      sub_2706CBAD4(v0, v0 + v39, v40);
LABEL_20:

      break;
  }
}

uint64_t sub_2706CD1DC(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = (a3 + 32);
  if (!v5)
  {
    return 0;
  }

  while (1)
  {
    v10 = *v6;
    v7 = v10;
    swift_unknownObjectRetain();
    v8 = a1(&v10);
    if (v3)
    {
      break;
    }

    if (v8)
    {
      return v7;
    }

    swift_unknownObjectRelease();
    ++v6;
    if (!--v5)
    {
      return 0;
    }
  }

  swift_unknownObjectRelease();
  return v7;
}

void sub_2706CD29C(char a1)
{
  v2 = v1;
  if (qword_28081C730 != -1)
  {
    swift_once();
  }

  v4 = sub_2706E58DC();
  __swift_project_value_buffer(v4, qword_2808292D8);

  oslog = sub_2706E58BC();
  v5 = sub_2706E5BEC();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 136446466;
    v17 = &type metadata for PasteboardDataSession.State;
    v18 = v7;
    LOBYTE(v16[0]) = a1;
    v8 = sub_2706CB238(v16);
    v10 = sub_2706C83E8(v8, v9, &v18);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2082;
    v11 = *(v2 + OBJC_IVAR____TtC13UniversalDrag21PasteboardDataSession_state);
    v17 = &type metadata for PasteboardDataSession.State;
    LOBYTE(v16[0]) = v11;
    v12 = sub_2706CB238(v16);
    v14 = sub_2706C83E8(v12, v13, &v18);

    *(v6 + 14) = v14;
    _os_log_impl(&dword_270680000, oslog, v5, "PasteboardDataSession: %{public}s → %{public}s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2743A75B0](v7, -1, -1);
    MEMORY[0x2743A75B0](v6, -1, -1);
  }
}

void sub_2706CD468(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC13UniversalDrag21PasteboardDataSession_state);
  *(v1 + OBJC_IVAR____TtC13UniversalDrag21PasteboardDataSession_state) = a1;
  sub_2706CD29C(v2);
}

uint64_t sub_2706CD480()
{
  v1 = v0;
  v2 = sub_2706E576C();
  v3 = OUTLINED_FUNCTION_4(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_0();
  v10 = v9 - v8;
  (*(v5 + 16))(v9 - v8, *(v1 + OBJC_IVAR____TtC13UniversalDrag21PasteboardDataSession_contents) + OBJC_IVAR____TtC13UniversalDrag18PasteboardContents_source, v2);
  sub_2706E572C();
  (*(v5 + 8))(v10, v2);
  v11 = sub_2706B8734(8);
  v12 = MEMORY[0x2743A5EC0](v11);

  v19 = v12;
  MEMORY[0x2743A5EF0](58, 0xE100000000000000);
  sub_2706E572C();
  v13 = OUTLINED_FUNCTION_4_9();
  v14 = sub_2706B8734(v13);
  v15 = MEMORY[0x2743A5EC0](v14);
  v17 = v16;

  MEMORY[0x2743A5EF0](v15, v17);

  return v19;
}

void sub_2706CD600()
{
  OUTLINED_FUNCTION_21_0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_2706E576C();
  v8 = OUTLINED_FUNCTION_4(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3_0();
  v15 = v14 - v13;
  v16 = OBJC_IVAR____TtC13UniversalDrag21PasteboardDataSession_completions;
  type metadata accessor for Completions();
  v17 = swift_allocObject();
  v18 = MEMORY[0x277D84F90];
  *(v17 + 16) = MEMORY[0x277D84F90];
  *(v0 + v16) = v17;
  *(v0 + OBJC_IVAR____TtC13UniversalDrag21PasteboardDataSession_state) = 0;
  *(v0 + OBJC_IVAR____TtC13UniversalDrag21PasteboardDataSession_transfers) = v18;
  *(v0 + OBJC_IVAR____TtC13UniversalDrag21PasteboardDataSession_delegate + 8) = 0;
  v19 = swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC13UniversalDrag21PasteboardDataSession_controller) = v6;
  *(v0 + OBJC_IVAR____TtC13UniversalDrag21PasteboardDataSession_contents) = v4;
  *(v19 + 8) = v2;
  swift_unknownObjectWeakAssign();

  sub_2706E575C();

  swift_unknownObjectRelease();
  (*(v10 + 32))(v0 + OBJC_IVAR____TtC13UniversalDrag21PasteboardDataSession_id, v15, v7);
  OUTLINED_FUNCTION_16_0();
}

uint64_t sub_2706CD77C(uint64_t a1, uint64_t a2)
{
  if (qword_28081C738 != -1)
  {
    swift_once();
  }

  v3 = sub_2706E58DC();
  __swift_project_value_buffer(v3, qword_2808292F0);

  v4 = sub_2706E58BC();
  v5 = sub_2706E5C1C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136446210;
    v8 = sub_2706CD480();
    v10 = sub_2706C83E8(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_270680000, v4, v5, "%{public}s: Data Session Activated", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x2743A75B0](v7, -1, -1);
    MEMORY[0x2743A75B0](v6, -1, -1);
  }

  sub_2706CD468(2);
  v11 = *(a2 + OBJC_IVAR____TtC13UniversalDrag21PasteboardDataSession_completions);

  sub_2706DAAE8();
}

void sub_2706CD918(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = OBJC_IVAR____TtC13UniversalDrag21PasteboardDataSession_transfers;
    swift_beginAccess();
    swift_unknownObjectRetain_n();
    v7 = sub_2706CF800((v3 + v6), a1);
    v8 = *(*(v3 + v6) + 16);
    if (v8 < v7)
    {
      __break(1u);
      swift_endAccess();
      __break(1u);
      return;
    }

    sub_2706D9AD0(v7, v8);
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  v9 = *(v3 + OBJC_IVAR____TtC13UniversalDrag21PasteboardDataSession_state);
  if (qword_28081C738 != -1)
  {
    swift_once();
  }

  v10 = sub_2706E58DC();
  __swift_project_value_buffer(v10, qword_2808292F0);
  swift_unknownObjectRetain();
  swift_retain_n();
  v11 = sub_2706E58BC();
  v12 = sub_2706E5C1C();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v28[0] = v14;
    *v13 = 136315650;
    v15 = sub_2706CD480();
    v17 = sub_2706C83E8(v15, v16, v28);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    if (a1)
    {
      ObjectType = swift_getObjectType();
      v19 = sub_2706CC330(ObjectType, a2);
      v21 = v20;
    }

    else
    {
      v19 = 0;
      v21 = 0xE000000000000000;
    }

    v22 = sub_2706C83E8(v19, v21, v28);

    *(v13 + 14) = v22;
    *(v13 + 22) = 2048;
    v23 = OBJC_IVAR____TtC13UniversalDrag21PasteboardDataSession_transfers;
    swift_beginAccess();
    v24 = *(*(v3 + v23) + 16);

    *(v13 + 24) = v24;

    _os_log_impl(&dword_270680000, v11, v12, "%s: Receiver Finished id=%{public}s, %ld remaining", v13, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x2743A75B0](v14, -1, -1);
    MEMORY[0x2743A75B0](v13, -1, -1);
  }

  else
  {
  }

  if (v9 == 3)
  {
    v25 = OBJC_IVAR____TtC13UniversalDrag21PasteboardDataSession_transfers;
    swift_beginAccess();
    if (!*(*(v3 + v25) + 16))
    {
      type metadata accessor for Completion();
      swift_allocObject();

      v26 = sub_2706DD8C4(0xD00000000000005DLL, 0x80000002706F1430, 216, sub_2706CF7F8, v3);
      v27 = *(v3 + OBJC_IVAR____TtC13UniversalDrag21PasteboardDataSession_controller);
      sub_2706CBAD4(v3, v3 + OBJC_IVAR____TtC13UniversalDrag21PasteboardDataSession_id, v26);
    }
  }
}

uint64_t sub_2706CDC80(void *a1, uint64_t a2, char *a3, void *a4)
{
  v8 = type metadata accessor for PasteboardDataTransferID(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = *(a2 + 24);
    if (a1)
    {
      v35 = a1;
      v15 = a1;
      v16 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D4A8, &qword_2706EAD40);
      if (swift_dynamicCast())
      {
        v17 = v34;
        if (v34 >> 61 == 5)
        {

          sub_270688D9C(v17);
          goto LABEL_10;
        }
      }

      else
      {
        v17 = 0xC000000000000040;
      }

      if (qword_28081C738 != -1)
      {
        swift_once();
      }

      v18 = sub_2706E58DC();
      v19 = __swift_project_value_buffer(v18, qword_2808292F0);
      v20 = v19;
      MEMORY[0x28223BE20](v19);
      *(&v33 - 4) = a3;
      *(&v33 - 3) = a4;
      v31 = v13;
      v32 = v14;
      v21 = a1;
      sub_270694BF4(sub_2706CF7EC, (&v33 - 6), v20, a1, v22, v23, v24, v25, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46);
      v26 = *&a3[OBJC_IVAR____TtC13UniversalDrag21PasteboardDataSession_controller];
      ObjectType = swift_getObjectType();
      (*(v14 + 32))(ObjectType, v14);
      type metadata accessor for Completion();
      swift_allocObject();
      v28 = sub_2706DD84C();
      sub_2706CBE48(a3, v17, v11, v28);

      sub_270688D9C(v17);

      sub_2706CF798();
    }

LABEL_10:
    v29 = swift_unknownObjectRetain();
    sub_2706CD918(v29, v14);
    return swift_unknownObjectRelease_n();
  }

  result = sub_2706E5F8C();
  __break(1u);
  return result;
}

uint64_t sub_2706CDF90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for PasteboardDataTransferID(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  sub_2706E5E3C();

  v7 = sub_2706CD480();
  MEMORY[0x2743A5EF0](v7);

  MEMORY[0x2743A5EF0](0xD000000000000015, 0x80000002706F1540);
  sub_2706E572C();
  v8 = sub_2706B8734(8);
  v9 = MEMORY[0x2743A5EC0](v8);
  v11 = v10;

  MEMORY[0x2743A5EF0](v9, v11);

  MEMORY[0x2743A5EF0](1029990688, 0xE400000000000000);
  ObjectType = swift_getObjectType();
  (*(a4 + 32))(ObjectType, a4);
  sub_2706E572C();
  v13 = sub_2706B8734(8);
  v14 = MEMORY[0x2743A5EC0](v13);
  v16 = v15;

  sub_2706CF798();
  MEMORY[0x2743A5EF0](v14, v16);

  return 0x206E6F6973736553;
}

uint64_t sub_2706CE17C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13UniversalDrag21PasteboardDataSession_transfers;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v7[2] = a1;

  v5 = sub_2706CD1DC(sub_2706CFC2C, v7, v4);

  return v5;
}

void sub_2706CE218()
{
  OUTLINED_FUNCTION_21_0();
  v26 = v1;
  v3 = v2;
  v5 = v4;
  if (qword_28081C738 != -1)
  {
    OUTLINED_FUNCTION_0_9();
    swift_once();
  }

  v6 = sub_2706E58DC();
  v7 = __swift_project_value_buffer(v6, qword_2808292F0);
  MEMORY[0x28223BE20](v7);
  v24 = v0;
  v25 = v5;
  sub_270694BA4(v3);
  sub_270694BF8(sub_2706CF9F0);
  v8 = *(v0 + OBJC_IVAR____TtC13UniversalDrag21PasteboardDataSession_controller);
  v28 = type metadata accessor for Completion();
  OUTLINED_FUNCTION_21_3();
  swift_allocObject();
  v29 = "ons";
  OUTLINED_FUNCTION_15_9();
  v9 = sub_2706DD84C();
  sub_2706CBE48(v0, v3, v5, v9);

  v10 = OBJC_IVAR____TtC13UniversalDrag21PasteboardDataSession_transfers;
  v11 = swift_beginAccess();
  v12 = *(v0 + v10);
  MEMORY[0x28223BE20](v11);
  v24 = v5;

  v27 = sub_2706CC428(sub_2706CF9F8, &v23, v12);
  v13 = *(v27 + 16);
  if (v13)
  {
    sub_270694B50();
    v14 = (v27 + 40);
    do
    {
      v15 = *(v14 - 1);
      v16 = *v14;
      ObjectType = swift_getObjectType();
      OUTLINED_FUNCTION_18_6();
      v18 = swift_allocError();
      *v19 = v3;
      OUTLINED_FUNCTION_21_3();
      swift_allocObject();
      sub_270694BA4(v3);
      swift_unknownObjectRetain();
      OUTLINED_FUNCTION_15_9();
      v20 = sub_2706DD84C();
      (*(v16 + 64))(v18, v20, ObjectType, v16);

      swift_unknownObjectRelease();
      v14 += 2;
      --v13;
    }

    while (v13);
  }

  if (v26)
  {
    sub_270694B50();
    OUTLINED_FUNCTION_18_6();
    v21 = swift_allocError();
    *v22 = v3;
    sub_270694BA4(v3);

    sub_2706DD768();
  }

  OUTLINED_FUNCTION_16_0();
}

uint64_t sub_2706CE4F4()
{
  sub_2706E5E3C();
  v0 = sub_2706CD480();

  MEMORY[0x2743A5EF0](0xD000000000000016, 0x80000002706F1590);
  sub_2706E572C();
  v1 = sub_2706B8734(8);
  v2 = MEMORY[0x2743A5EC0](v1);
  v4 = v3;

  MEMORY[0x2743A5EF0](v2, v4);

  return v0;
}

uint64_t sub_2706CE5D0(uint64_t *a1)
{
  v2 = type metadata accessor for PasteboardDataTransferID(0);
  v3 = OUTLINED_FUNCTION_16_3(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_0();
  v6 = *a1;
  v7 = a1[1];
  ObjectType = swift_getObjectType();
  (*(v7 + 32))(ObjectType, v7);
  LOBYTE(a1) = sub_2706E573C();
  OUTLINED_FUNCTION_2_7();
  sub_2706CF798();
  return a1 & 1;
}

uint64_t sub_2706CE694(uint64_t a1, char a2)
{
  sub_2706E5E3C();
  v3 = sub_2706CD480();

  MEMORY[0x2743A5EF0](0xD000000000000025, 0x80000002706F1490);
  if (a2)
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (a2)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  MEMORY[0x2743A5EF0](v4, v5);

  return v3;
}

void sub_2706CE75C(void *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = a1;
    if (qword_28081C738 != -1)
    {
      swift_once();
    }

    v5 = sub_2706E58DC();
    v6 = __swift_project_value_buffer(v5, qword_2808292F0);
    MEMORY[0x28223BE20](v6);
    sub_270694664(sub_2706CF9E8, a2, sub_2706A5A60, v20, v7, v8, v9, v10, v20[0], v20[1], a1, v20[3], v20[4], v21[0], v21[1], v21[2], v21[3], v21[4], v21[5], v21[6], v21[7], v21[8]);
  }

  else
  {
    if (qword_28081C738 != -1)
    {
      swift_once();
    }

    v11 = sub_2706E58DC();
    __swift_project_value_buffer(v11, qword_2808292F0);

    v12 = sub_2706E58BC();
    v13 = sub_2706E5C1C();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v21[0] = v15;
      *v14 = 136315138;
      v16 = sub_2706CD480();
      v18 = sub_2706C83E8(v16, v17, v21);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_270680000, v12, v13, "%s: Pasteboard Data Session Finished", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x2743A75B0](v15, -1, -1);
      MEMORY[0x2743A75B0](v14, -1, -1);
    }
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_2706B2770(a2, 0);
    swift_unknownObjectRelease();
  }

  v19 = *(a2 + OBJC_IVAR____TtC13UniversalDrag21PasteboardDataSession_controller);
  sub_27069244C();
}

uint64_t sub_2706CE9B4()
{
  sub_2706E5E3C();
  v0 = sub_2706CD480();

  MEMORY[0x2743A5EF0](0xD000000000000022, 0x80000002706F1560);
  return v0;
}

uint64_t sub_2706CEA3C()
{
  v1 = OBJC_IVAR____TtC13UniversalDrag21PasteboardDataSession_id;
  v2 = sub_2706E576C();
  OUTLINED_FUNCTION_6_0(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(v0 + OBJC_IVAR____TtC13UniversalDrag21PasteboardDataSession_contents);

  v5 = *(v0 + OBJC_IVAR____TtC13UniversalDrag21PasteboardDataSession_completions);

  v6 = *(v0 + OBJC_IVAR____TtC13UniversalDrag21PasteboardDataSession_controller);

  v7 = *(v0 + OBJC_IVAR____TtC13UniversalDrag21PasteboardDataSession_transfers);

  sub_2706A59B4(v0 + OBJC_IVAR____TtC13UniversalDrag21PasteboardDataSession_delegate);
  return v0;
}

uint64_t sub_2706CEAE4()
{
  sub_2706CEA3C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2706CEB64()
{
  result = sub_2706E576C();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PasteboardDataSession.State(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2706CECF4);
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

uint64_t sub_2706CED40(uint64_t a1, uint64_t a2)
{
  v4 = sub_2706E576C();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_2706CED9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2706E576C();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_2706CEE08()
{
  result = sub_2706E576C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2706CEEBC(uint64_t a1, uint64_t a2)
{
  if (a1 == 1684632949 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2706E631C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_2706CEF44(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081DC08, &qword_2706ED858);
  v3 = OUTLINED_FUNCTION_4(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2706CF584();
  sub_2706E66AC();
  sub_2706E576C();
  OUTLINED_FUNCTION_1_11();
  sub_2706CF5D8(v11, v12);
  sub_2706E60DC();
  return (*(v5 + 8))(v9, v2);
}

uint64_t sub_2706CF0A0()
{
  OUTLINED_FUNCTION_20_1();
  sub_2706E576C();
  OUTLINED_FUNCTION_1_11();
  sub_2706CF5D8(v0, v1);

  return sub_2706E59DC();
}

uint64_t sub_2706CF110()
{
  sub_2706E65EC();
  sub_2706E576C();
  OUTLINED_FUNCTION_1_11();
  sub_2706CF5D8(v0, v1);
  sub_2706E59DC();
  return sub_2706E660C();
}

uint64_t sub_2706CF188@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v4 = sub_2706E576C();
  v5 = OUTLINED_FUNCTION_4(v4);
  v32 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_0();
  v35 = v10 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081DBF8, &qword_2706ED850);
  v12 = OUTLINED_FUNCTION_4(v11);
  v33 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  v17 = &v31 - v16;
  v18 = type metadata accessor for PasteboardDataTransferID(0);
  v19 = OUTLINED_FUNCTION_16_3(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_3_0();
  v24 = v23 - v22;
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2706CF584();
  sub_2706E668C();
  if (!v2)
  {
    v26 = v32;
    v27 = v34;
    OUTLINED_FUNCTION_1_11();
    sub_2706CF5D8(v28, v29);
    sub_2706E605C();
    (*(v33 + 8))(v17, v11);
    (*(v26 + 32))(v24, v35, v4);
    sub_2706A66AC(v24, v27);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2706CF3D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2706CEEBC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2706CF404(uint64_t a1)
{
  v2 = sub_2706CF584();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2706CF440(uint64_t a1)
{
  v2 = sub_2706CF584();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2706CF4B8()
{
  sub_2706E65EC();
  sub_2706E576C();
  OUTLINED_FUNCTION_1_11();
  sub_2706CF5D8(v0, v1);
  sub_2706E59DC();
  return sub_2706E660C();
}

unint64_t sub_2706CF530()
{
  result = qword_28081DBF0;
  if (!qword_28081DBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081DBF0);
  }

  return result;
}

unint64_t sub_2706CF584()
{
  result = qword_28081DC00;
  if (!qword_28081DC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081DC00);
  }

  return result;
}

uint64_t sub_2706CF5D8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2706CF634()
{
  MEMORY[0x2743A7670](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2706CF66C()
{
  v1 = sub_2706E576C();
  OUTLINED_FUNCTION_4(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v0 + 16);

  v9 = *(v0 + 24);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v7, v4 | 7);
}

uint64_t sub_2706CF72C()
{
  OUTLINED_FUNCTION_20_1();
  v2 = sub_2706E576C();
  OUTLINED_FUNCTION_16_3(v2);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = (v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)));

  return sub_2706CDC80(v0, v4, v5, v6);
}

uint64_t sub_2706CF798()
{
  v1 = OUTLINED_FUNCTION_20_1();
  v3 = v2(v1);
  OUTLINED_FUNCTION_6_0(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_2706CF800(uint64_t *a1, uint64_t a2)
{
  v5 = *a1;
  swift_unknownObjectRetain();
  result = sub_2706CF958(v5, a2);
  v8 = result;
  if (v2)
  {
    goto LABEL_4;
  }

  if (v7)
  {
    v8 = *(v5 + 16);
LABEL_4:
    swift_unknownObjectRelease();
    return v8;
  }

  v9 = result + 1;
  if (!__OFADD__(result, 1))
  {
    for (i = 16 * result + 48; ; i += 16)
    {
      v11 = *(v5 + 16);
      if (v9 == v11)
      {
        break;
      }

      if (v9 >= v11)
      {
        __break(1u);
LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v12 = *(v5 + i);
      if (*(v5 + i) != a2)
      {
        if (v9 != v8)
        {
          if (v8 >= v11)
          {
            goto LABEL_19;
          }

          v18 = *(v5 + i);
          v17 = *(v5 + 32 + 16 * v8);
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_2706CF9D4(v5);
            v5 = v16;
          }

          v13 = v5 + 16 * v8;
          v14 = *(v13 + 32);
          *(v13 + 32) = v18;
          result = swift_unknownObjectRelease();
          if (v9 >= *(v5 + 16))
          {
            goto LABEL_20;
          }

          v15 = *(v5 + i);
          *(v5 + i) = v17;
          result = swift_unknownObjectRelease();
          *a1 = v5;
        }

        ++v8;
      }

      ++v9;
    }

    goto LABEL_4;
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_2706CF958(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  for (i = (a1 + 32); ; i += 2)
  {
    if (*(a1 + 16) == v2)
    {
      v4 = 0;
      goto LABEL_7;
    }

    if (*i == a2)
    {
      break;
    }

    ++v2;
  }

  v4 = v2;
LABEL_7:
  swift_unknownObjectRelease();
  return v4;
}

uint64_t sub_2706CF9F0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_2706CE4F4();
}

uint64_t sub_2706CFA18()
{
  sub_270688D9C(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

_BYTE *storeEnumTagSinglePayload for PasteboardDataTransferID.CodingKeys(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x2706CFAECLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_2706CFB28()
{
  result = qword_28081DC10;
  if (!qword_28081DC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081DC10);
  }

  return result;
}

unint64_t sub_2706CFB80()
{
  result = qword_28081DC18;
  if (!qword_28081DC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081DC18);
  }

  return result;
}

unint64_t sub_2706CFBD8()
{
  result = qword_28081DC20;
  if (!qword_28081DC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081DC20);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_21_6()
{
  v3 = *(v1 + 8);
  result = v0;
  v5 = *(v2 - 72);
  return result;
}

uint64_t OUTLINED_FUNCTION_24_3()
{
}

uint64_t sub_2706CFD6C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

id sub_2706CFDB0(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  result = sub_2706D5F9C(a1, &selRef_fileHandleForWritingToURL_error_);
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2706CFE04(void (*a1)(void))
{
  os_unfair_lock_lock(*(v1 + 16));
  a1();
  os_unfair_lock_unlock(*(v1 + 16));
}

uint64_t sub_2706CFE6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    v4 = sub_2706E611C();
    MEMORY[0x2743A5EF0](v4);

    a2 = 0x2065646F63;
  }

  return a2;
}

uint64_t sub_2706CFF10(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = archive_entry_filetype();

  if (((v2 + 0x4000) >> 12) | (16 * (v2 + 0x4000))) < 0xBu && ((0x569u >> (((v2 + 0x4000) >> 12) | (16 * v2))))
  {
    return asc_2706F194D[(((v2 + 0x4000) >> 12) | (16 * (v2 + 0x4000)))];
  }

  if (v2 == 40960)
  {
    return 6;
  }

  return 4;
}

uint64_t sub_2706CFF94(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = archive_entry_clone();
  if (result)
  {
    v4 = result;

    *(v1 + 16) = v4;
    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2706CFFE0()
{
  v1 = *(v0 + 16);
  archive_entry_free();
  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x2821FE8D8](v2, v3, v4);
}

uint64_t sub_2706D0038()
{
  type metadata accessor for FileAttributeKey(0);
  OUTLINED_FUNCTION_12_9();
  sub_2706DA580(v1, v2);
  v3 = sub_2706E59AC();
  v4 = *(v0 + 16);
  v5 = *MEMORY[0x277CCA180];
  v6 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedShort_];
  v11 = sub_270690D44(0, &qword_28081CEB8, 0x277CCABB0);
  v10[0] = v6;
  sub_270690AAC(v10, v9);
  swift_isUniquelyReferenced_nonNull_native();
  sub_270690038(v9, v5);

  if (archive_entry_ctime_is_set())
  {
    v7 = *MEMORY[0x277CCA108];
    archive_entry_ctime();
    archive_entry_ctime_nsec();
    v11 = sub_2706E571C();
    __swift_allocate_boxed_opaque_existential_1(v10);
    sub_2706E56FC();
    sub_270690AAC(v10, v9);
    swift_isUniquelyReferenced_nonNull_native();
    sub_270690038(v9, v7);
  }

  return v3;
}

uint64_t sub_2706D01FC()
{
  v1 = *(v0 + 16);
  v2 = archive_entry_size();
  return v2 & ~(v2 >> 63);
}

uint64_t sub_2706D0234()
{
  v1 = *(v0 + 16);
  result = archive_entry_symlink();
  if (result)
  {
    return sub_2706E5A9C();
  }

  return result;
}

uint64_t sub_2706D0278@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v5 = v2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D450, &qword_2706EAA20);
  OUTLINED_FUNCTION_16_3(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v10);
  v12 = &v17 - v11;
  if (a1(*(v5 + 16)))
  {

    sub_2706CFF10(v13);
    sub_2706E565C();
    v14 = OUTLINED_FUNCTION_23_5();
    __swift_storeEnumTagSinglePayload(v14, 1, 1, v3);
    sub_2706E560C();
    sub_2706ADE58(v12);
    return __swift_storeEnumTagSinglePayload(a2, 0, 1, v3);
  }

  else
  {
    v16 = sub_2706E565C();

    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v16);
  }
}

uint64_t sub_2706D03AC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D450, &qword_2706EAA20);
  OUTLINED_FUNCTION_16_3(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_32_3();
  v5 = sub_2706E565C();
  v6 = OUTLINED_FUNCTION_4(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_0();
  v13 = v12 - v11;
  sub_2706D0260(v0);
  if (__swift_getEnumTagSinglePayload(v0, 1, v5) != 1)
  {
    (*(v8 + 32))(v13, v0, v5);
    sub_2706E564C();
    sub_2706E564C();
    v14 = sub_2706E5ABC();

    if ((v14 & 1) == 0)
    {
      (*(v8 + 8))(v13, v5);
      return 0;
    }

    type metadata accessor for ArchiveEntry();
    OUTLINED_FUNCTION_19_0();
    swift_allocObject();
    OUTLINED_FUNCTION_21_7();

    v16 = sub_2706CFF94(v15);
    v17 = sub_2706E564C();
    v19 = v18;
    if (v17 == sub_2706E564C() && v19 == v20)
    {
    }

    else
    {
      v22 = sub_2706E631C();

      if ((v22 & 1) == 0)
      {
        v23 = sub_2706E564C();
        v25 = v24;
        v26 = sub_2706E564C();
        v28 = v27;

        v29 = HIBYTE(v28) & 0xF;
        if ((v28 & 0x2000000000000000) == 0)
        {
          v29 = v26;
        }

        v30 = 7;
        if (((v28 >> 60) & ((v26 & 0x800000000000000) == 0)) != 0)
        {
          v30 = 11;
        }

        v31 = sub_2706D06A0(v30 | (v29 << 16), v23, v25);
        v33 = v32;
        v35 = v34;
        v37 = v36;

        MEMORY[0x2743A5EC0](v31, v33, v35, v37);

        v38 = OUTLINED_FUNCTION_35_3();
        sub_2706D9D60(v38, v39, v16);

        goto LABEL_18;
      }
    }

    v40 = *(v16 + 16);
    archive_entry_set_pathname_utf8();
LABEL_18:
    (*(v8 + 8))(v13, v5);
    return v16;
  }

  sub_2706ADE58(v0);
  return 0;
}

unint64_t sub_2706D06A0(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 < result >> 14)
  {
    __break(1u);
  }

  else
  {
    v4 = sub_2706E5ADC();

    return v4;
  }

  return result;
}

uint64_t *sub_2706D0750(char a1, uint64_t a2, uint64_t a3)
{
  v7 = archive_read_new();
  OUTLINED_FUNCTION_20_6();
  swift_allocObject();
  v8 = sub_2706D0CD8(v7);
  if (!v3)
  {

    sub_2706D081C(v9, v8, a1);
    v10 = v8[4];
    v8[3] = a2;
    v8[4] = a3;

    v11 = v8[2];
    OUTLINED_FUNCTION_33_4();
    archive_read_open();
  }

  return v8;
}

uint64_t sub_2706D081C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *(a2 + 16);
  v5 = dword_2706EDD6C[a3];
  set_format = archive_read_set_format();
  if (set_format == 1)
  {

    return 1;
  }

  else if (set_format)
  {
    v8 = *(a1 + 16);
    v9 = archive_errno();
    if (archive_error_string())
    {
      v10 = sub_2706E5A9C();
      v12 = v11;
    }

    else
    {
      v10 = 0;
      v12 = 0;
    }

    sub_2706DA0E4();
    swift_allocError();
    *v13 = v9;
    *(v13 + 8) = v10;
    *(v13 + 16) = v12;
    swift_willThrow();
  }

  else
  {

    return 0;
  }
}

uint64_t sub_2706D0908(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  data_into_fd = archive_read_data_into_fd();
  if (data_into_fd == 1)
  {

    return 1;
  }

  else if (data_into_fd)
  {
    v6 = *(a1 + 16);
    v7 = archive_errno();
    if (archive_error_string())
    {
      v8 = sub_2706E5A9C();
      v10 = v9;
    }

    else
    {
      v8 = 0;
      v10 = 0;
    }

    sub_2706DA0E4();
    swift_allocError();
    *v11 = v7;
    *(v11 + 8) = v8;
    *(v11 + 16) = v10;
    swift_willThrow();
  }

  else
  {

    return 0;
  }
}

uint64_t sub_2706D0A2C(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2 && a3)
  {
    v4 = MEMORY[0x2743A6D20]();

    v5 = sub_2706D0BA4(a3);

    objc_autoreleasePoolPop(v4);
    return v5;
  }

  else
  {
    archive_set_static_error();
    return -1;
  }
}

uint64_t *sub_2706D0AAC()
{
  archive_read_disk_new();
  OUTLINED_FUNCTION_20_6();
  swift_allocObject();
  v1 = OUTLINED_FUNCTION_28_3();
  v2 = sub_2706D0CD8(v1);
  if (!v0)
  {
    sub_2706E55FC();
    if (v7)
    {
      v3 = v2[2];
      archive_errno();
      if (archive_error_string())
      {
        sub_2706E5A9C();
      }

      sub_2706DA0E4();
      v4 = OUTLINED_FUNCTION_11_6();
      OUTLINED_FUNCTION_36_4(v4, v5);
    }
  }

  return v2;
}

uint64_t sub_2706D0BA4(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);

  v7 = v4(v6);
  v9 = v8;

  v10 = *(v2 + 40);
  v11 = *(v2 + 48);
  *(v2 + 40) = v7;
  *(v2 + 48) = v9;
  if (v9 >> 60 == 15)
  {
    sub_2706A3BA4(v10, v11);
    return 0;
  }

  else
  {
    sub_2706A6E0C(v7, v9);
    sub_270692D3C(v7, v9);
    sub_2706A3BA4(v10, v11);
    v13 = sub_2706E56AC();
    v14 = [v13 bytes];
    v15 = v13;
    *a1 = v14;
    v16 = MEMORY[0x2743A5B30](v7, v9);
    sub_2706A3BA4(v7, v9);
    sub_2706A3BA4(v7, v9);
    return v16;
  }
}

uint64_t *sub_2706D0CD8(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = sub_2706E54AC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2[3] = sub_2706D0744;
  v2[4] = 0;
  v2[5] = 0;
  v2[6] = 0xF000000000000000;
  if (a1)
  {
    v2[2] = a1;
  }

  else
  {
    MEMORY[0x2743A5D60](v8);
    v11 = sub_2706E58EC();
    if ((v11 & 0x100000000) != 0)
    {
      v12 = 5;
    }

    else
    {
      v12 = v11;
    }

    v16 = v12;
    sub_2706D9998(MEMORY[0x277D84F90]);
    sub_2706DA580(&qword_28081DDE0, MEMORY[0x277CC8658]);
    sub_2706E556C();
    sub_2706E549C();
    (*(v6 + 8))(v10, v5);
    swift_willThrow();
    v13 = v2[4];

    sub_2706A3BA4(v2[5], v2[6]);
    swift_deallocPartialClassInstance();
  }

  return v2;
}

void *sub_2706D0EB4()
{
  v1 = v0[2];
  archive_read_free();
  v2 = v0[4];

  sub_2706A3BA4(v0[5], v0[6]);
  return v0;
}

uint64_t sub_2706D0EE4()
{
  sub_2706D0EB4();
  v0 = OUTLINED_FUNCTION_20_6();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2706D0F34()
{
  type metadata accessor for ArchiveEntry();
  OUTLINED_FUNCTION_19_0();
  v1 = swift_allocObject();
  result = archive_entry_new();
  if (result)
  {
    *(v1 + 16) = result;
    v3 = *(v0 + 16);
    next_header2 = archive_read_next_header2();
    if (next_header2 != -20)
    {
      if (next_header2 == 1)
      {

        return 0;
      }

      else if (next_header2)
      {
        archive_errno();
        if (archive_error_string())
        {
          sub_2706E5A9C();
        }

        sub_2706DA0E4();
        v5 = OUTLINED_FUNCTION_11_6();
        OUTLINED_FUNCTION_36_4(v5, v6);
      }
    }

    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2706D1010()
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = sub_2706E54AC();
  v3 = OUTLINED_FUNCTION_4(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_29_3();
  v8 = *(v0 + 16);
  data_block = archive_read_data_block();
  if (!data_block)
  {
    sub_2706D9998(MEMORY[0x277D84F90]);
    sub_2706DA580(&qword_28081DDE0, MEMORY[0x277CC8658]);
    sub_2706E556C();
    sub_2706E549C();
    (*(v5 + 8))(v1, v2);
LABEL_9:
    swift_willThrow();
    result = sub_270688E88(0, 0xC000000000000000);
    goto LABEL_10;
  }

  if (data_block != 1)
  {
    v11 = archive_errno();
    if (archive_error_string())
    {
      v12 = sub_2706E5A9C();
      v14 = v13;
    }

    else
    {
      v12 = 0;
      v14 = 0;
    }

    sub_2706DA0E4();
    OUTLINED_FUNCTION_11_6();
    *v15 = v11;
    *(v15 + 8) = v12;
    *(v15 + 16) = v14;
    goto LABEL_9;
  }

  result = 0;
LABEL_10:
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t *sub_2706D1230(char a1)
{
  archive_write_new();
  OUTLINED_FUNCTION_23_1();
  swift_allocObject();
  v3 = OUTLINED_FUNCTION_21_7();
  v4 = sub_2706D1408(v3, a1);
  v5 = v4;
  if (!v1)
  {
    v6 = v4[2];
    OUTLINED_FUNCTION_33_4();
    archive_write_open2();
  }

  return v5;
}

uint64_t sub_2706D12F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 && a3)
  {

    v6 = sub_2706D1370(a3, a4 + a3);

    return v6;
  }

  else
  {
    archive_set_static_error();
    return -1;
  }
}

uint64_t sub_2706D1370(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v7 = *(v3 + 24);
  v6 = *(v3 + 32);

  v8 = v7(a1, a2);

  return v8;
}

uint64_t *sub_2706D1408(uint64_t a1, char a2)
{
  v4 = v2;
  v7 = *v4;
  v8 = sub_2706E54AC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4[3] = sub_2706D1228;
  v4[4] = 0;
  if (a1)
  {
    v4[2] = a1;

    sub_2706D1620(v14, v4, a2);
    if (v3)
    {
    }

    else
    {

      sub_2706D170C(v15, v4);
    }
  }

  else
  {
    MEMORY[0x2743A5D60](v11);
    v16 = sub_2706E58EC();
    if ((v16 & 0x100000000) != 0)
    {
      v17 = 5;
    }

    else
    {
      v17 = v16;
    }

    v20[3] = v17;
    sub_2706D9998(MEMORY[0x277D84F90]);
    sub_2706DA580(&qword_28081DDE0, MEMORY[0x277CC8658]);
    sub_2706E556C();
    sub_2706E549C();
    (*(v9 + 8))(v13, v8);
    swift_willThrow();
    v18 = v4[4];

    swift_deallocPartialClassInstance();
  }

  return v4;
}

uint64_t sub_2706D1620(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *(a2 + 16);
  v5 = dword_2706EDD6C[a3];
  v6 = archive_write_set_format();
  if (v6 == 1)
  {

    return 1;
  }

  else if (v6)
  {
    v8 = *(a1 + 16);
    v9 = archive_errno();
    if (archive_error_string())
    {
      v10 = sub_2706E5A9C();
      v12 = v11;
    }

    else
    {
      v10 = 0;
      v12 = 0;
    }

    sub_2706DA0E4();
    swift_allocError();
    *v13 = v9;
    *(v13 + 8) = v10;
    *(v13 + 16) = v12;
    swift_willThrow();
  }

  else
  {

    return 0;
  }
}

uint64_t sub_2706D170C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = archive_write_set_bytes_per_block();
  if (v4 == 1)
  {

    return 1;
  }

  else if (v4)
  {
    v6 = *(a1 + 16);
    v7 = archive_errno();
    if (archive_error_string())
    {
      v8 = sub_2706E5A9C();
      v10 = v9;
    }

    else
    {
      v8 = 0;
      v10 = 0;
    }

    sub_2706DA0E4();
    swift_allocError();
    *v11 = v7;
    *(v11 + 8) = v8;
    *(v11 + 16) = v10;
    swift_willThrow();
  }

  else
  {

    return 0;
  }
}

uint64_t sub_2706D17EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 16);
  v5 = *(a3 + 16);
  v6 = archive_write_header();
  if (v6 >= 2)
  {
    v7 = *(a1 + 16);
    v8 = archive_errno();
    if (archive_error_string())
    {
      v9 = sub_2706E5A9C();
      v11 = v10;
    }

    else
    {
      v9 = 0;
      v11 = 0;
    }

    sub_2706DA0E4();
    swift_allocError();
    *v12 = v8;
    *(v12 + 8) = v9;
    *(v12 + 16) = v11;
    swift_willThrow();
  }

  else
  {
  }

  return v6;
}

uint64_t sub_2706D18D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(*(a2 + 16));
  if (v4 == 1)
  {

    return 1;
  }

  else if (v4)
  {
    v6 = *(a1 + 16);
    v7 = archive_errno();
    if (archive_error_string())
    {
      v8 = sub_2706E5A9C();
      v10 = v9;
    }

    else
    {
      v8 = 0;
      v10 = 0;
    }

    sub_2706DA0E4();
    OUTLINED_FUNCTION_11_6();
    *v11 = v7;
    *(v11 + 8) = v8;
    *(v11 + 16) = v10;
    swift_willThrow();
  }

  else
  {

    return 0;
  }
}

uint64_t sub_2706D19AC()
{
  v1 = *(v0 + 16);
  archive_write_free();
  v2 = *(v0 + 32);

  return v0;
}

uint64_t sub_2706D19D4()
{
  sub_2706D19AC();
  v0 = OUTLINED_FUNCTION_23_1();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2706D1A8C(uint64_t a1, void (*a2)(uint64_t))
{

  result = sub_2706D17EC(v2, v2, a1);
  if (!v3)
  {
    a2(result);

    return sub_2706D18D4(v7, v2, MEMORY[0x277D824E8]);
  }

  return result;
}

uint64_t sub_2706D1B14(uint64_t a1, unint64_t a2)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v13 = a1 >> 32;
      if (a1 >> 32 < a1)
      {
        __break(1u);
        JUMPOUT(0x2706D1BE8);
      }

      v14 = a1;

      v9 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      v10 = v14;
      v11 = v13;
      return sub_2706D9F08(v10, v11, v9, v2);
    case 2uLL:
      v8 = *(a1 + 16);
      v7 = *(a1 + 24);

      v9 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      v10 = v8;
      v11 = v7;
      return sub_2706D9F08(v10, v11, v9, v2);
    case 3uLL:

      v6 = 0;
      v5 = 0;
      return sub_2706D9E04(v6, v5, v2);
    default:

      v5 = a2 & 0xFFFFFFFFFFFFFFLL;
      v6 = a1;
      return sub_2706D9E04(v6, v5, v2);
  }
}

uint64_t sub_2706D1C58(uint64_t a1, uint64_t a2, unint64_t a3)
{
  swift_beginAccess();
  sub_2706DA1AC(a2, a3);
  sub_2706E25B4();
  v6 = *(*(a1 + 32) + 16);
  sub_2706E2684(v6);
  v7 = *(a1 + 32);
  *(v7 + 16) = v6 + 1;
  v8 = v7 + 16 * v6;
  *(v8 + 32) = a2;
  *(v8 + 40) = a3;
  *(a1 + 32) = v7;
  swift_endAccess();
  v9 = *(a1 + 24);
  return sub_2706E5CEC();
}

uint64_t sub_2706D1D04@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = *(v1 + 24);
  sub_2706E5CDC();
  v5 = *(v2 + 16);
  v6 = *(v5 + 16);

  os_unfair_lock_lock(v6);
  sub_2706D1D84(v2, a1);
  os_unfair_lock_unlock(*(v5 + 16));
}

uint64_t sub_2706D1D84@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = swift_beginAccess();
  v5 = *(a1 + 32);
  if (v5[2])
  {
    v6 = v5[4];
    v7 = v5[5];
    sub_2706DA1D8(v6, v7);
    sub_2706D9BD0(0, 1);
    result = swift_endAccess();
    v8 = v7 & 0x3000000000000000;
    if ((v7 & 0x3000000000000000) == 0x3000000000000000)
    {
      v9 = 0;
    }

    else
    {
      v9 = v6;
    }

    if ((v7 & 0x3000000000000000) != 0x3000000000000000)
    {
      v8 = v7;
    }

    *a2 = v9;
    a2[1] = v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2706D1E2C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return v0;
}

uint64_t sub_2706D1E5C()
{
  sub_2706D1E2C();
  v0 = OUTLINED_FUNCTION_23_1();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void *sub_2706D1EA0()
{
  type metadata accessor for UnfairLock();
  v1 = swift_allocObject();
  v2 = swift_slowAlloc();
  *v2 = 0;
  *(v1 + 16) = v2;
  v0[2] = v1;
  v3 = dispatch_semaphore_create(0);
  v4 = MEMORY[0x277D84F90];
  v0[3] = v3;
  v0[4] = v4;
  return v0;
}

uint64_t sub_2706D1F30()
{
  v0 = sub_2706E58DC();
  __swift_allocate_value_buffer(v0, qword_28081DC28);
  __swift_project_value_buffer(v0, qword_28081DC28);
  return sub_2706E58CC();
}

void sub_2706D1FA8(void *a1)
{
  v2 = v1;
  if (qword_28081C748 != -1)
  {
    swift_once();
  }

  v4 = sub_2706E58DC();
  __swift_project_value_buffer(v4, qword_28081DC28);

  sub_2706DA380(a1);
  oslog = sub_2706E58BC();
  v5 = sub_2706E5BEC();
  sub_2706DA390(a1);

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v23 = v7;
    *v6 = 136446722;
    sub_2706E572C();
    v8 = sub_2706B8734(8);
    v9 = MEMORY[0x2743A5EC0](v8);
    v11 = v10;

    v12 = sub_2706C83E8(v9, v11, &v23);

    *(v6 + 4) = v12;
    *(v6 + 12) = 2082;
    v22 = &type metadata for ArchiveTransferSource.State;
    v21[0] = a1;
    sub_2706DA380(a1);
    v13 = sub_2706CB238(v21);
    v15 = sub_2706C83E8(v13, v14, &v23);

    *(v6 + 14) = v15;
    *(v6 + 22) = 2082;
    v16 = *(v2 + OBJC_IVAR____TtC13UniversalDrag21ArchiveTransferSource_state);
    v22 = &type metadata for ArchiveTransferSource.State;
    v21[0] = v16;
    sub_2706DA380(v16);
    v17 = sub_2706CB238(v21);
    v19 = sub_2706C83E8(v17, v18, &v23);

    *(v6 + 24) = v19;
    _os_log_impl(&dword_270680000, oslog, v5, "%{public}s %{public}s → %{public}s", v6, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x2743A75B0](v7, -1, -1);
    MEMORY[0x2743A75B0](v6, -1, -1);
  }
}

void sub_2706D21F8(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC13UniversalDrag21ArchiveTransferSource_state);
  *(v1 + OBJC_IVAR____TtC13UniversalDrag21ArchiveTransferSource_state) = a1;
  sub_2706DA380(a1);
  sub_2706D1FA8(v3);
  sub_2706DA390(v3);

  sub_2706DA390(a1);
}

void sub_2706D2258()
{
  OUTLINED_FUNCTION_21_0();
  v1 = v0;
  v35 = v2;
  v36 = v3;
  v4 = sub_2706E5C3C();
  v5 = OUTLINED_FUNCTION_4(v4);
  v33 = v6;
  v34 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_0();
  v32 = v10 - v9;
  v11 = sub_2706E5C2C();
  v12 = OUTLINED_FUNCTION_6_0(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3_0();
  v15 = sub_2706E594C();
  v16 = OUTLINED_FUNCTION_16_3(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_3_0();
  type metadata accessor for Completions();
  OUTLINED_FUNCTION_19_0();
  v19 = swift_allocObject();
  *(v19 + 16) = MEMORY[0x277D84F90];
  v0[2] = v19;
  type metadata accessor for UnfairLock();
  OUTLINED_FUNCTION_19_0();
  v20 = swift_allocObject();
  v21 = swift_slowAlloc();
  *v21 = 0;
  *(v20 + 16) = v21;
  v0[3] = v20;
  v0[4] = sub_2706D1F04;
  v0[5] = 0;
  v31 = OBJC_IVAR____TtC13UniversalDrag21ArchiveTransferSource_queue;
  sub_270690D44(0, &qword_28081CEF0, 0x277D85C78);
  sub_2706E593C();
  OUTLINED_FUNCTION_11_9();
  sub_2706DA580(v22, v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081DE00, &unk_2706EDCB8);
  sub_270690C38(&qword_28081DE08, &qword_28081DE00, &unk_2706EDCB8);
  sub_2706E5D7C();
  (*(v33 + 104))(v32, *MEMORY[0x277D85260], v34);
  *(v0 + v31) = sub_2706E5C7C();
  *(v0 + OBJC_IVAR____TtC13UniversalDrag21ArchiveTransferSource_state) = 0;
  v24 = v0 + OBJC_IVAR____TtC13UniversalDrag21ArchiveTransferSource_size;
  *v24 = 0;
  v24[8] = 1;
  v25 = OBJC_IVAR____TtC13UniversalDrag21ArchiveTransferSource_id;
  v26 = sub_2706E576C();
  OUTLINED_FUNCTION_6_0(v26);
  (*(v27 + 32))(v1 + v25, v35);
  v28 = OBJC_IVAR____TtC13UniversalDrag21ArchiveTransferSource_url;
  v29 = sub_2706E565C();
  OUTLINED_FUNCTION_6_0(v29);
  (*(v30 + 32))(v1 + v28, v36);
  OUTLINED_FUNCTION_16_0();
}

void sub_2706D2578()
{
  OUTLINED_FUNCTION_21_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_2706E592C();
  v7 = OUTLINED_FUNCTION_4(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3_0();
  v25 = OUTLINED_FUNCTION_24_4();
  v10 = OUTLINED_FUNCTION_4(v25);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_29_3();
  v13 = *(v1 + OBJC_IVAR____TtC13UniversalDrag21ArchiveTransferSource_queue);
  v14 = swift_allocObject();
  v14[2] = v1;
  v14[3] = v5;
  v14[4] = v3;
  v26[4] = sub_2706DA48C;
  v26[5] = v14;
  OUTLINED_FUNCTION_5_10();
  OUTLINED_FUNCTION_4_10(COERCE_DOUBLE(1107296256));
  v26[2] = v15;
  v26[3] = &block_descriptor_120;
  v16 = _Block_copy(v26);
  v17 = v13;

  sub_2706E593C();
  OUTLINED_FUNCTION_6_11();
  sub_2706DA580(v18, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081CF00, &qword_2706EA080);
  sub_270690C38(&qword_28081CF08, &qword_28081CF00, &qword_2706EA080);
  OUTLINED_FUNCTION_8_11();
  sub_2706E5D7C();
  v20 = OUTLINED_FUNCTION_18_7();
  MEMORY[0x2743A60D0](v20);
  _Block_release(v16);

  v21 = OUTLINED_FUNCTION_14_9();
  v22(v21);
  v23 = OUTLINED_FUNCTION_19_10();
  v24(v23);

  OUTLINED_FUNCTION_16_0();
}

void sub_2706D27AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v55 = a3;
  v5 = sub_2706E592C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v48[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_2706E594C();
  v11 = *(v10 - 8);
  v12 = v11[8];
  MEMORY[0x28223BE20](v10);
  v14 = &v48[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = *(a1 + 24);
  v16 = *(v15 + 16);

  os_unfair_lock_lock(v16);
  if (*(a1 + OBJC_IVAR____TtC13UniversalDrag21ArchiveTransferSource_state))
  {
    v17 = a2;
    os_unfair_lock_unlock(*(v15 + 16));

    if (qword_28081C748 != -1)
    {
      swift_once();
    }

    v18 = sub_2706E58DC();
    __swift_project_value_buffer(v18, qword_28081DC28);

    v19 = sub_2706E58BC();
    v20 = sub_2706E5BFC();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      aBlock[0] = v22;
      *v21 = 136446210;
      sub_2706E572C();
      v23 = sub_2706B8734(8);
      v24 = MEMORY[0x2743A5EC0](v23);
      v26 = v25;

      v27 = sub_2706C83E8(v24, v26, aBlock);

      *(v21 + 4) = v27;
      _os_log_impl(&dword_270680000, v19, v20, "%{public}s cannot size archive, archiver not idle", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x2743A75B0](v22, -1, -1);
      MEMORY[0x2743A75B0](v21, -1, -1);
    }

    sub_270690D44(0, &qword_28081D250, 0x277CCA9B8);
    v54 = sub_2706E4830(16, 0xD000000000000011, 0x80000002706F18B0, "/Library/Caches/com.apple.xbs/Sources/UniversalDrag/UniversalDrag/Utility/Archive.swift", 87, 2, 460);
    sub_2706D3100(v54, a1, v17, v55);
    v28 = v54;
  }

  else
  {
    v54 = v11;
    sub_2706D21F8(1);
    os_unfair_lock_unlock(*(v15 + 16));

    v52 = sub_2706D45CC();
    if (qword_28081C748 != -1)
    {
      swift_once();
    }

    v53 = v6;
    v29 = sub_2706E58DC();
    __swift_project_value_buffer(v29, qword_28081DC28);

    v30 = sub_2706E58BC();
    v31 = sub_2706E5BEC();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v50 = v30;
      v49 = v31;
      v33 = v32;
      v34 = swift_slowAlloc();
      aBlock[0] = v34;
      *v33 = 136446466;
      sub_2706E572C();
      v35 = sub_2706B8734(8);
      v36 = MEMORY[0x2743A5EC0](v35);
      v51 = a2;
      v38 = v37;

      v39 = sub_2706C83E8(v36, v38, aBlock);
      a2 = v51;

      *(v33 + 4) = v39;
      *(v33 + 12) = 2048;
      v40 = v52;
      *(v33 + 14) = v52;
      v41 = v50;
      _os_log_impl(&dword_270680000, v50, v49, "%{public}s sizing completed: %llu", v33, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v34);
      MEMORY[0x2743A75B0](v34, -1, -1);
      MEMORY[0x2743A75B0](v33, -1, -1);
    }

    else
    {

      v40 = v52;
    }

    v42 = *(a1 + 24);
    v43 = *(v42 + 16);

    os_unfair_lock_lock(v43);
    v44 = a1 + OBJC_IVAR____TtC13UniversalDrag21ArchiveTransferSource_size;
    *v44 = v40;
    *(v44 + 8) = 0;
    sub_2706D21F8(0);
    os_unfair_lock_unlock(*(v42 + 16));

    sub_270690D44(0, &qword_28081CEF0, 0x277D85C78);
    v45 = sub_2706E5C4C();
    v46 = swift_allocObject();
    v46[2] = a2;
    v46[3] = v55;
    v46[4] = v40;
    aBlock[4] = sub_2706DA4C8;
    aBlock[5] = v46;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2706DA6A0;
    aBlock[3] = &block_descriptor_126;
    v47 = _Block_copy(aBlock);

    sub_2706E593C();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_2706DA580(&qword_28081CEF8, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081CF00, &qword_2706EA080);
    sub_270690C38(&qword_28081CF08, &qword_28081CF00, &qword_2706EA080);
    sub_2706E5D7C();
    MEMORY[0x2743A60D0](0, v14, v9, v47);
    _Block_release(v47);

    (*(v53 + 8))(v9, v5);
    (*(v54 + 1))(v14, v10);
  }
}