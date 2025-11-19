uint64_t sub_26A48FA0C()
{

  return swift_deallocObject();
}

uint64_t sub_26A48FA44()
{
  v0 = OUTLINED_FUNCTION_221();
  if (__isPlatformVersionAtLeast(v0, v1, 0, 0))
  {
    sub_26A84FFE8();

    return sub_26A84F4F8();
  }

  else
  {
    sub_26A84F618();
    OUTLINED_FUNCTION_138();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_150();
    sub_26A84FE78();
    OUTLINED_FUNCTION_150();
    sub_26A84F4F8();
    sub_26A852068();
    OUTLINED_FUNCTION_137();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_150();
    sub_26A84F618();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_150();
    sub_26A84FE78();
    return sub_26A84F4F8();
  }
}

uint64_t sub_26A48FB74()
{
  v0 = OUTLINED_FUNCTION_221();
  if (__isPlatformVersionAtLeast(v0, v1, 0, 0))
  {
    sub_26A84FFE8();
    OUTLINED_FUNCTION_222();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_58();
  }

  else
  {
    sub_26A84F618();
    OUTLINED_FUNCTION_138();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_150();
    sub_26A84FE78();
    OUTLINED_FUNCTION_222();
    sub_26A852068();
    OUTLINED_FUNCTION_137();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_150();
    sub_26A84F618();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_150();
    sub_26A84FE78();
    sub_26A84F4F8();
    swift_getWitnessTable();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  return swift_getWitnessTable();
}

uint64_t sub_26A48FD54@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26A4D34E4();
  *a1 = result;
  return result;
}

void sub_26A48FDD0(uint64_t a1@<X8>)
{
  sub_26A48FE04();
  *a1 = v2;
  *(a1 + 8) = v3 & 1;
}

uint64_t sub_26A48FE0C@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_26A48FE40(*a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_26A48FE60@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26A48FE8C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_26A48FE90()
{
  v0 = OUTLINED_FUNCTION_221();
  if (__isPlatformVersionAtLeast(v0, v1, 4, 0))
  {
    sub_26A84F328();
  }

  else
  {
    sub_26A84F198();
  }

  return sub_26A84F4F8();
}

uint64_t sub_26A48FEF4()
{
  v0 = OUTLINED_FUNCTION_221();
  if (__isPlatformVersionAtLeast(v0, v1, 4, 0))
  {
    sub_26A84F328();
    OUTLINED_FUNCTION_150();
    sub_26A84F4F8();
    sub_26A4D2548();
  }

  else
  {
    sub_26A84F198();
    OUTLINED_FUNCTION_150();
    sub_26A84F4F8();
    sub_26A4D2D18();
  }

  OUTLINED_FUNCTION_58();
  return swift_getWitnessTable();
}

uint64_t sub_26A48FFBC(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91F0);
  OUTLINED_FUNCTION_179();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a3[5];
LABEL_7:

    return __swift_getEnumTagSinglePayload(a1 + v9, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A0);
  OUTLINED_FUNCTION_179();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a3[6];
    goto LABEL_7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
  OUTLINED_FUNCTION_179();
  if (*(v13 + 84) == a2)
  {
    v8 = v12;
    v9 = a3[7];
    goto LABEL_7;
  }

  v15 = *(a1 + a3[8] + 224);
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  return (v15 + 1);
}

void sub_26A490110(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91F0);
  OUTLINED_FUNCTION_179();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a4[5];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A0);
    OUTLINED_FUNCTION_179();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v11 = a4[6];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
      OUTLINED_FUNCTION_179();
      if (*(v15 + 84) != a3)
      {
        *(a1 + a4[8] + 224) = (a2 - 1);
        return;
      }

      v10 = v14;
      v11 = a4[7];
    }
  }

  __swift_storeEnumTagSinglePayload(a1 + v11, a2, a2, v10);
}

uint64_t getEnumTagSinglePayload for SmartDialogAnimationValues(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SmartDialogAnimationValues(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t sub_26A49030C()
{
  sub_26A49035C(*(v0 + 16), *(v0 + 24));
  sub_26A4D3334(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));
  __swift_destroy_boxed_opaque_existential_1(v0 + 72);
  OUTLINED_FUNCTION_94();

  return swift_deallocObject();
}

uint64_t sub_26A49035C(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_26A490368()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  OUTLINED_FUNCTION_80();

  return swift_deallocObject();
}

uint64_t sub_26A4903AC()
{
  sub_26A4D3334(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return swift_deallocObject();
}

uint64_t sub_26A490450()
{

  return swift_deallocObject();
}

uint64_t sub_26A490490(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91F0);
  OUTLINED_FUNCTION_179();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
  OUTLINED_FUNCTION_179();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v12 = a3[6];
LABEL_7:
    v9 = a1 + v12;
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A0);
  OUTLINED_FUNCTION_179();
  if (*(v14 + 84) == a2)
  {
    v8 = v13;
    v12 = a3[7];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[8] + 224);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

void sub_26A4905E4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91F0);
  OUTLINED_FUNCTION_179();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
    OUTLINED_FUNCTION_179();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[6];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A0);
      OUTLINED_FUNCTION_179();
      if (*(v16 + 84) != a3)
      {
        *(a1 + a4[8] + 224) = (a2 - 1);
        return;
      }

      v10 = v15;
      v14 = a4[7];
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_26A490748(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A0);
  OUTLINED_FUNCTION_179();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    if (a2 == 254)
    {
      v10 = *(a1 + a3[5] + 8);
      if (v10 > 1)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
    OUTLINED_FUNCTION_179();
    if (*(v13 + 84) == a2)
    {
      v8 = v12;
      v14 = a3[6];
    }

    else
    {
      v8 = sub_26A84C7F8();
      v14 = a3[7];
    }

    v9 = a1 + v14;
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

void sub_26A490868(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A0);
  OUTLINED_FUNCTION_179();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    if (a3 == 254)
    {
      *(a1 + a4[5] + 8) = -a2;
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
    OUTLINED_FUNCTION_179();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[6];
    }

    else
    {
      v10 = sub_26A84C7F8();
      v14 = a4[7];
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_26A490A54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 32);
  v6 = sub_26A84B1D8();

  return __swift_getEnumTagSinglePayload(a1 + v5, a2, v6);
}

uint64_t sub_26A490AA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 32);
  v7 = sub_26A84B1D8();

  return __swift_storeEnumTagSinglePayload(a1 + v6, a2, a2, v7);
}

uint64_t sub_26A490B6C()
{

  return swift_deallocObject();
}

uint64_t sub_26A490BAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91F0);
  OUTLINED_FUNCTION_179();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
  OUTLINED_FUNCTION_179();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v13 = *(a1 + *(a3 + 28));
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_26A490CB0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91F0);
  OUTLINED_FUNCTION_179();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
    OUTLINED_FUNCTION_179();
    if (*(v13 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = (a2 - 1);
      return;
    }

    v10 = v12;
    v11 = a1 + *(a4 + 24);
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_26A490DDC()
{

  return swift_deallocObject();
}

uint64_t sub_26A490E1C(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A0);
  OUTLINED_FUNCTION_179();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91F0);
  OUTLINED_FUNCTION_179();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v12 = a3[5];
LABEL_7:
    v9 = a1 + v12;
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
  OUTLINED_FUNCTION_179();
  if (*(v14 + 84) == a2)
  {
    v8 = v13;
    v12 = a3[7];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[8]);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

void sub_26A490F6C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A0);
  OUTLINED_FUNCTION_179();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91F0);
    OUTLINED_FUNCTION_179();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
      OUTLINED_FUNCTION_179();
      if (*(v16 + 84) != a3)
      {
        *(a1 + a4[8]) = (a2 - 1);
        return;
      }

      v10 = v15;
      v14 = a4[7];
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_26A4910E8()
{
  sub_26A84E278();
  OUTLINED_FUNCTION_1_4();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_26A491170()
{
  sub_26A49035C(*(v0 + 16), *(v0 + 24));
  sub_26A49035C(*(v0 + 32), *(v0 + 40));
  sub_26A49035C(*(v0 + 48), *(v0 + 56));
  if (*(v0 + 88))
  {
    sub_26A4EC448(*(v0 + 64), *(v0 + 72), *(v0 + 80));
  }

  if (*(v0 + 112))
  {

    sub_26A4EC448(*(v0 + 120), *(v0 + 128), *(v0 + 136));

    if (*(v0 + 176))
    {
      sub_26A4EC448(*(v0 + 152), *(v0 + 160), *(v0 + 168));
    }

    sub_26A4EC448(*(v0 + 184), *(v0 + 192), *(v0 + 200));
  }

  return swift_deallocObject();
}

uint64_t sub_26A491288(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_26A84C168();
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_26A491308(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v7 = sub_26A84C168();
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_26A491388()
{
  type metadata accessor for KeyValueStandardView();
  OUTLINED_FUNCTION_6_3();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));
  sub_26A49035C(*v3, *(v3 + 8));
  sub_26A49035C(*(v3 + 16), *(v3 + 24));
  v4 = *(v0 + 32);
  sub_26A84C168();
  OUTLINED_FUNCTION_46();
  (*(v5 + 8))(v3 + v4);

  return swift_deallocObject();
}

uint64_t sub_26A49146C()
{
  type metadata accessor for KeyValueStandardView();
  OUTLINED_FUNCTION_6_3();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));
  sub_26A49035C(*v3, *(v3 + 8));
  sub_26A49035C(*(v3 + 16), *(v3 + 24));
  v4 = *(v0 + 32);
  sub_26A84C168();
  OUTLINED_FUNCTION_46();
  (*(v5 + 8))(v3 + v4);

  return swift_deallocObject();
}

uint64_t sub_26A491564()
{
  v1 = sub_26A84B888();
  OUTLINED_FUNCTION_15();
  v3 = v2;
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v6 = *(v5 + 64);
  v7 = (type metadata accessor for KeyValueStandardView() - 8);
  v8 = (v4 + v6 + *(*v7 + 80)) & ~*(*v7 + 80);
  (*(v3 + 8))(v0 + v4, v1);
  sub_26A49035C(*(v0 + v8), *(v0 + v8 + 8));
  sub_26A49035C(*(v0 + v8 + 16), *(v0 + v8 + 24));
  v9 = v7[8];
  sub_26A84C168();
  OUTLINED_FUNCTION_46();
  (*(v10 + 8))(v0 + v8 + v9);

  return swift_deallocObject();
}

uint64_t sub_26A4916CC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26A7D1158();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26A4916FC()
{

  return swift_deallocObject();
}

uint64_t sub_26A4917C8()
{

  return swift_deallocObject();
}

uint64_t sub_26A491808(uint64_t a1, uint64_t a2, int *a3)
{
  type metadata accessor for SwitchView();
  OUTLINED_FUNCTION_179();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_11:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  if (a2 != 0x7FFFFFFF)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91F0);
    OUTLINED_FUNCTION_179();
    if (*(v13 + 84) == a2)
    {
      v8 = v12;
      v14 = a3[8];
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
      v14 = a3[10];
    }

    v9 = a1 + v14;
    goto LABEL_11;
  }

  v10 = *(a1 + a3[5]);
  if (v10 >= 0xFFFFFFFF)
  {
    LODWORD(v10) = -1;
  }

  return (v10 + 1);
}

void sub_26A49192C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  type metadata accessor for SwitchView();
  OUTLINED_FUNCTION_179();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[5]) = (a2 - 1);
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91F0);
    OUTLINED_FUNCTION_179();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[8];
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
      v14 = a4[10];
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_26A491A94()
{
  OUTLINED_FUNCTION_196();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB3C0);
  OUTLINED_FUNCTION_46();
  (*(v1 + 8))(v0);
  return v0;
}

uint64_t sub_26A491B00()
{

  sub_26A4F5714(*(v0 + 24), *(v0 + 32));
  j__swift_release();
  sub_26A4F5724(*(v0 + 56), *(v0 + 64), *(v0 + 65));
  if (*(v0 + 81))
  {
    if ((*(v0 + 80) & 1) == 0)
    {
      MEMORY[0x26D665710](v0 + 72);
    }
  }

  else
  {
  }

  MEMORY[0x26D665710](v0 + 88);

  sub_26A4EC448(*(v0 + 112), *(v0 + 120), *(v0 + 128));

  if (*(v0 + 168))
  {
    sub_26A4EC448(*(v0 + 144), *(v0 + 152), *(v0 + 160));
  }

  sub_26A4EC448(*(v0 + 176), *(v0 + 184), *(v0 + 192));

  return swift_deallocObject();
}

uint64_t sub_26A491BF0()
{
  v1 = sub_26A84F088();
  OUTLINED_FUNCTION_15();
  v3 = v2;
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v6 = *(v5 + 64);
  v7 = sub_26A8507A8();
  OUTLINED_FUNCTION_15();
  v9 = v8;
  v11 = (v4 + v6 + *(v8 + 80)) & ~*(v8 + 80);
  v12 = (*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v3 + 8))(v0 + v4, v1);
  (*(v9 + 8))(v0 + v11, v7);
  v13 = v0 + v12;
  sub_26A4F5714(*(v0 + v12), *(v0 + v12 + 8));
  j__swift_release();
  sub_26A4F5724(*(v13 + 32), *(v13 + 40), *(v13 + 41));
  if (*(v0 + v12 + 57))
  {
    if ((*(v13 + 56) & 1) == 0)
    {
      MEMORY[0x26D665710](v13 + 48);
    }
  }

  else
  {
  }

  MEMORY[0x26D665710](v13 + 64);

  sub_26A4EC448(*(v13 + 88), *(v13 + 96), *(v13 + 104));

  if (*(v13 + 144))
  {
    sub_26A4EC448(*(v13 + 120), *(v13 + 128), *(v13 + 136));
  }

  sub_26A4EC448(*(v13 + 152), *(v13 + 160), *(v13 + 168));

  return swift_deallocObject();
}

uint64_t sub_26A491DE8()
{
  v1 = sub_26A8507A8();
  OUTLINED_FUNCTION_15();
  v3 = v2;
  v4 = *(v2 + 80);
  OUTLINED_FUNCTION_1_6();
  if (v5)
  {
    if ((*(v0 + 72) & 1) == 0)
    {
      MEMORY[0x26D665710](v0 + 64);
    }
  }

  else
  {
  }

  MEMORY[0x26D665710](v0 + 80);

  OUTLINED_FUNCTION_6_4();
  if (*(v0 + 160))
  {
    OUTLINED_FUNCTION_5_3();
  }

  OUTLINED_FUNCTION_4_3();

  (*(v3 + 8))(v0 + ((v4 + 232) & ~v4), v1);

  return swift_deallocObject();
}

uint64_t sub_26A491EF8()
{
  v1 = sub_26A8507A8();
  OUTLINED_FUNCTION_15();
  v3 = v2;
  v4 = *(v2 + 80);
  OUTLINED_FUNCTION_1_6();
  if (v5)
  {
    if ((*(v0 + 72) & 1) == 0)
    {
      MEMORY[0x26D665710](v0 + 64);
    }
  }

  else
  {
  }

  MEMORY[0x26D665710](v0 + 80);

  OUTLINED_FUNCTION_6_4();
  if (*(v0 + 160))
  {
    OUTLINED_FUNCTION_5_3();
  }

  OUTLINED_FUNCTION_4_3();

  (*(v3 + 8))(v0 + ((v4 + 248) & ~v4), v1);

  return swift_deallocObject();
}

uint64_t sub_26A49201C()
{
  OUTLINED_FUNCTION_1_6();
  if (v1)
  {
    if ((*(v0 + 72) & 1) == 0)
    {
      MEMORY[0x26D665710](v0 + 64);
    }
  }

  else
  {
  }

  MEMORY[0x26D665710](v0 + 80);

  OUTLINED_FUNCTION_6_4();
  if (*(v0 + 160))
  {
    OUTLINED_FUNCTION_5_3();
  }

  OUTLINED_FUNCTION_4_3();

  return swift_deallocObject();
}

uint64_t sub_26A4920BC()
{

  return swift_deallocObject();
}

uint64_t sub_26A4920F4@<X0>(uint64_t a1@<X8>)
{
  result = sub_26A4F49D4();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_26A492174(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 64);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for SmartDialogAnimationSettings(0);
    v9 = a1 + *(a3 + 40);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_26A4921FC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 64) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for SmartDialogAnimationSettings(0);
    v8 = v5 + *(a4 + 40);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_26A492288()
{
  OUTLINED_FUNCTION_196();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB5B0);
  OUTLINED_FUNCTION_1_4();
  (*(v1 + 8))(v0);
  return v0;
}

uint64_t sub_26A4922E0()
{
  type metadata accessor for SmartDialogAnimationModifier(0);
  OUTLINED_FUNCTION_6_3();
  OUTLINED_FUNCTION_10_3();

  v2 = v1 + *(v0 + 48);
  sub_26A8511F8();
  OUTLINED_FUNCTION_1_4();
  (*(v3 + 8))(v2);
  type metadata accessor for SmartDialogAnimationSettings(0);
  OUTLINED_FUNCTION_14_2();

  OUTLINED_FUNCTION_6_5();

  return swift_deallocObject();
}

uint64_t sub_26A4923E8()
{
  type metadata accessor for SmartDialogAnimationModifier(0);
  OUTLINED_FUNCTION_6_3();
  OUTLINED_FUNCTION_5_4();

  v2 = v1 + *(v0 + 48);
  sub_26A8511F8();
  OUTLINED_FUNCTION_1_4();
  (*(v3 + 8))(v2);
  type metadata accessor for SmartDialogAnimationSettings(0);
  OUTLINED_FUNCTION_14_2();

  OUTLINED_FUNCTION_6_5();

  return swift_deallocObject();
}

uint64_t sub_26A4924F0()
{
  type metadata accessor for SmartDialogAnimationSettings(0);
  OUTLINED_FUNCTION_6_3();
  v2 = (*(v1 + 80) + 34) & ~*(v1 + 80);

  sub_26A8511F8();
  OUTLINED_FUNCTION_1_4();
  (*(v3 + 8))(v0 + v2);

  OUTLINED_FUNCTION_6_5();

  return swift_deallocObject();
}

uint64_t sub_26A4925F4()
{
  type metadata accessor for SmartDialogAnimationModifier(0);
  OUTLINED_FUNCTION_6_3();
  OUTLINED_FUNCTION_5_4();

  v2 = v1 + *(v0 + 48);
  sub_26A8511F8();
  OUTLINED_FUNCTION_1_4();
  (*(v3 + 8))(v2);
  type metadata accessor for SmartDialogAnimationSettings(0);
  OUTLINED_FUNCTION_14_2();

  OUTLINED_FUNCTION_6_5();

  return swift_deallocObject();
}

uint64_t sub_26A4926F4()
{
  type metadata accessor for SmartDialogAnimationSettings(0);
  OUTLINED_FUNCTION_6_3();
  v2 = (*(v1 + 80) + 64) & ~*(v1 + 80);

  sub_26A8511F8();
  OUTLINED_FUNCTION_1_4();
  (*(v3 + 8))(v0 + v2);

  OUTLINED_FUNCTION_6_5();

  return swift_deallocObject();
}

uint64_t sub_26A4927D8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26A5D5274();
  *a1 = result;
  return result;
}

uint64_t sub_26A49282C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_26A492864@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26A4F9BFC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_26A492910()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  OUTLINED_FUNCTION_80();

  return swift_deallocObject();
}

uint64_t sub_26A492948()
{

  return swift_deallocObject();
}

uint64_t sub_26A492988@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isSpotlightPlus.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_26A4929E0(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_49_0(*(a1 + 224));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F8);
  OUTLINED_FUNCTION_179();
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a3[5];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91F0);
    OUTLINED_FUNCTION_179();
    if (*(v12 + 84) == a2)
    {
      v9 = v11;
      v10 = a3[6];
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
      v10 = a3[8];
    }
  }

  return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
}

uint64_t sub_26A492B00(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 224) = (a2 - 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F8);
    OUTLINED_FUNCTION_179();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = a4[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91F0);
      OUTLINED_FUNCTION_179();
      if (*(v13 + 84) == a3)
      {
        v10 = v12;
        v11 = a4[6];
      }

      else
      {
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
        v11 = a4[8];
      }
    }

    return __swift_storeEnumTagSinglePayload(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_26A492C2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F8);
  OUTLINED_FUNCTION_179();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
    OUTLINED_FUNCTION_179();
    if (*(v11 + 84) != a2)
    {
      return OUTLINED_FUNCTION_49_0(*(a1 + *(a3 + 32) + 80));
    }

    v8 = v10;
    v9 = a1 + *(a3 + 28);
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

void sub_26A492D28(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F8);
  OUTLINED_FUNCTION_179();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
    OUTLINED_FUNCTION_179();
    if (*(v13 + 84) != a3)
    {
      *(a1 + *(a4 + 32) + 80) = (a2 - 1);
      return;
    }

    v10 = v12;
    v11 = a1 + *(a4 + 28);
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_26A4930B8()
{
  v1 = (type metadata accessor for ComponentGroupWrapper(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  sub_26A84BB08();
  OUTLINED_FUNCTION_46();
  (*(v3 + 8))(v2);
  v4 = v1[7];
  sub_26A84E408();
  OUTLINED_FUNCTION_46();
  (*(v5 + 8))(v2 + v4);

  return swift_deallocObject();
}

uint64_t sub_26A4935B0()
{
  v1 = sub_26A84E408();
  OUTLINED_FUNCTION_15();
  v3 = v2;
  v4 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_26A493690()
{

  return swift_deallocObject();
}

uint64_t sub_26A493704()
{
  v1 = (type metadata accessor for ComponentGroupView(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  sub_26A84BB08();
  OUTLINED_FUNCTION_46();
  (*(v3 + 8))(v2);
  v4 = v1[7];
  sub_26A84E408();
  OUTLINED_FUNCTION_46();
  (*(v5 + 8))(v2 + v4);

  return swift_deallocObject();
}

uint64_t sub_26A493840()
{
  OUTLINED_FUNCTION_6_8();
  v0 = sub_26A5D6E04();
  return OUTLINED_FUNCTION_5_7(v0);
}

uint64_t sub_26A49388C()
{
  OUTLINED_FUNCTION_6_8();
  v0 = EnvironmentValues.hasComponentBelow.getter();
  return OUTLINED_FUNCTION_5_7(v0);
}

uint64_t sub_26A4938E8()
{
  OUTLINED_FUNCTION_6_8();
  v0 = EnvironmentValues.isSmartDialog.getter();
  return OUTLINED_FUNCTION_5_7(v0);
}

uint64_t sub_26A493934()
{

  return swift_deallocObject();
}

uint64_t sub_26A493978(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a3[5];
LABEL_8:

    return __swift_getEnumTagSinglePayload(a1 + v8, a2, v7);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91F0);
    v8 = a3[12];
    goto LABEL_8;
  }

  v9 = *(a1 + a3[6] + 224);
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_26A493A64(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A0);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a4[5];
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[6] + 224) = (a2 - 1);
      return result;
    }

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91F0);
    v10 = a4[12];
  }

  return __swift_storeEnumTagSinglePayload(a1 + v10, a2, a2, v9);
}

uint64_t sub_26A493C00@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26A84F768();
  *a1 = result;
  return result;
}

uint64_t sub_26A493CC0()
{

  sub_26A49035C(*(v0 + 32), *(v0 + 40));
  sub_26A49035C(*(v0 + 48), *(v0 + 56));
  sub_26A49035C(*(v0 + 64), *(v0 + 72));
  sub_26A49035C(*(v0 + 80), *(v0 + 88));

  return swift_deallocObject();
}

uint64_t sub_26A493D28()
{

  return swift_deallocObject();
}

uint64_t sub_26A493DA0()
{
  sub_26A49035C(*(v0 + 16), *(v0 + 24));
  sub_26A49035C(*(v0 + 32), *(v0 + 40));
  sub_26A49035C(*(v0 + 48), *(v0 + 56));
  if (*(v0 + 88))
  {
    sub_26A4EC448(*(v0 + 64), *(v0 + 72), *(v0 + 80));
  }

  if (*(v0 + 112))
  {

    sub_26A4EC448(*(v0 + 120), *(v0 + 128), *(v0 + 136));

    if (*(v0 + 176))
    {
      sub_26A4EC448(*(v0 + 152), *(v0 + 160), *(v0 + 168));
    }

    sub_26A4EC448(*(v0 + 184), *(v0 + 192), *(v0 + 200));
  }

  OUTLINED_FUNCTION_1_9();

  return swift_deallocObject();
}

uint64_t sub_26A493E8C()
{
  _Block_release(*(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_26A493ED8()
{

  return swift_deallocObject();
}

uint64_t sub_26A493F10()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803AC0C0);
  OUTLINED_FUNCTION_1_4();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_26A493FE4()
{

  return swift_deallocObject();
}

uint64_t sub_26A494078()
{
  OUTLINED_FUNCTION_6_8();
  v0 = sub_26A5D7460();
  return OUTLINED_FUNCTION_5_7(v0);
}

uint64_t sub_26A4940D4()
{
  OUTLINED_FUNCTION_6_8();
  v0 = EnvironmentValues.hasComponentAbove.getter();
  return OUTLINED_FUNCTION_5_7(v0);
}

uint64_t sub_26A494128()
{

  return swift_deallocObject();
}

uint64_t sub_26A494168()
{
  OUTLINED_FUNCTION_6_8();
  v0 = sub_26A5D6EF8();
  return OUTLINED_FUNCTION_5_7(v0);
}

uint64_t sub_26A4941B4(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91F0);
  OUTLINED_FUNCTION_179();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a3[6];
LABEL_5:

    return __swift_getEnumTagSinglePayload(a1 + v9, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
  OUTLINED_FUNCTION_179();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a3[7];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[8] + 224);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_26A4942BC()
{
  OUTLINED_FUNCTION_59_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91F0);
  OUTLINED_FUNCTION_179();
  if (*(v5 + 84) == v3)
  {
    v6 = v4;
    v7 = v2[6];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
    OUTLINED_FUNCTION_179();
    if (*(v9 + 84) != v3)
    {
      *(v1 + v2[8] + 224) = (v0 - 1);
      return;
    }

    v6 = v8;
    v7 = v2[7];
  }

  __swift_storeEnumTagSinglePayload(v1 + v7, v0, v0, v6);
}

uint64_t sub_26A4943B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC3C0);
  OUTLINED_FUNCTION_179();
  if (*(v7 + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v9 = *(a1 + *(a3 + 24));
    if (v9 >= 0xFFFFFFFF)
    {
      LODWORD(v9) = -1;
    }

    v10 = v9 - 1;
    if (v10 < 0)
    {
      v10 = -1;
    }

    return (v10 + 1);
  }
}

void sub_26A494474()
{
  OUTLINED_FUNCTION_59_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC3C0);
  OUTLINED_FUNCTION_179();
  if (*(v5 + 84) == v3)
  {

    __swift_storeEnumTagSinglePayload(v1, v0, v0, v4);
  }

  else
  {
    *(v1 + *(v2 + 24)) = v0;
  }
}

uint64_t sub_26A494548()
{
  v1 = type metadata accessor for SummaryItemPairNumberV2View(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  sub_26A49035C(*v2, *(v2 + 8));
  sub_26A49035C(*(v2 + 16), *(v2 + 24));
  v3 = (v2 + v1[6]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
LABEL_6:

    goto LABEL_7;
  }

  type metadata accessor for ActionType();
  if (OUTLINED_FUNCTION_83_0(v3))
  {
    goto LABEL_7;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
  }

  else
  {
    if (EnumCaseMultiPayload != 1)
    {
      if (EnumCaseMultiPayload)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    sub_26A84BAB8();
    OUTLINED_FUNCTION_46();
    (*(v9 + 8))(v3);
  }

LABEL_7:
  v5 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26A84F3A8();
    OUTLINED_FUNCTION_46();
    (*(v6 + 8))(v2 + v5);
  }

  else
  {
  }

  v7 = v2 + v1[8];
  sub_26A49035C(*v7, *(v7 + 8));
  sub_26A49035C(*(v7 + 16), *(v7 + 24));
  sub_26A49035C(*(v7 + 32), *(v7 + 40));
  sub_26A49035C(*(v7 + 48), *(v7 + 56));
  sub_26A49035C(*(v7 + 64), *(v7 + 72));
  sub_26A49035C(*(v7 + 80), *(v7 + 88));
  sub_26A49035C(*(v7 + 96), *(v7 + 104));
  sub_26A49035C(*(v7 + 112), *(v7 + 120));
  sub_26A49035C(*(v7 + 128), *(v7 + 136));
  sub_26A49035C(*(v7 + 144), *(v7 + 152));

  sub_26A49035C(*(v2 + v1[9]), *(v2 + v1[9] + 8));
  sub_26A49035C(*(v2 + v1[10]), *(v2 + v1[10] + 8));

  return swift_deallocObject();
}

uint64_t sub_26A4948BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26A84B1D8();
  v7 = a1 + *(a3 + 36);

  return __swift_getEnumTagSinglePayload(v7, a2, v6);
}

uint64_t sub_26A494914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_26A84B1D8();
  v8 = a1 + *(a4 + 36);

  return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
}

uint64_t sub_26A494A78()
{
  OUTLINED_FUNCTION_31_2();
  result = sub_26A52F59C();
  *v0 = result;
  return result;
}

uint64_t sub_26A494AA4()
{
  OUTLINED_FUNCTION_31_2();
  result = sub_26A52F5B0();
  *v0 = result;
  return result;
}

uint64_t sub_26A494B40()
{

  return swift_deallocObject();
}

uint64_t sub_26A494B78()
{

  return swift_deallocObject();
}

uint64_t sub_26A494BDC(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC780);
  OUTLINED_FUNCTION_46();
  v3 = OUTLINED_FUNCTION_211();
  v4(v3);
  return a2;
}

uint64_t sub_26A494C44(uint64_t a1, uint64_t a2, int *a3)
{
  sub_26A84AD18();
  OUTLINED_FUNCTION_179();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    sub_26A84F3A8();
    OUTLINED_FUNCTION_179();
    if (*(v11 + 84) == a2)
    {
      v8 = v10;
      v12 = a3[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC880);
      OUTLINED_FUNCTION_179();
      if (*(v14 + 84) == a2)
      {
        v8 = v13;
        v12 = a3[6];
      }

      else
      {
        sub_26A84F4E8();
        OUTLINED_FUNCTION_179();
        if (*(v16 + 84) == a2)
        {
          v8 = v15;
          v12 = a3[7];
        }

        else
        {
          sub_26A84EE68();
          OUTLINED_FUNCTION_179();
          if (*(v18 + 84) == a2)
          {
            v8 = v17;
            v12 = a3[8];
          }

          else
          {
            sub_26A84FBC8();
            OUTLINED_FUNCTION_179();
            if (*(v20 + 84) == a2)
            {
              v8 = v19;
              v12 = a3[9];
            }

            else
            {
              sub_26A84EF78();
              OUTLINED_FUNCTION_179();
              if (*(v22 + 84) != a2)
              {
                v24 = *(a1 + a3[12]);
                if (v24 >= 2)
                {
                  return ((v24 + 2147483646) & 0x7FFFFFFF) + 1;
                }

                else
                {
                  return 0;
                }
              }

              v8 = v21;
              v12 = a3[11];
            }
          }
        }
      }
    }

    v9 = a1 + v12;
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

void sub_26A494E8C()
{
  OUTLINED_FUNCTION_59_1();
  sub_26A84AD18();
  OUTLINED_FUNCTION_179();
  if (*(v5 + 84) == v3)
  {
    v6 = v4;
    v7 = v1;
  }

  else
  {
    sub_26A84F3A8();
    OUTLINED_FUNCTION_179();
    if (*(v9 + 84) == v3)
    {
      v6 = v8;
      v10 = v2[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC880);
      OUTLINED_FUNCTION_179();
      if (*(v12 + 84) == v3)
      {
        v6 = v11;
        v10 = v2[6];
      }

      else
      {
        sub_26A84F4E8();
        OUTLINED_FUNCTION_179();
        if (*(v14 + 84) == v3)
        {
          v6 = v13;
          v10 = v2[7];
        }

        else
        {
          sub_26A84EE68();
          OUTLINED_FUNCTION_179();
          if (*(v16 + 84) == v3)
          {
            v6 = v15;
            v10 = v2[8];
          }

          else
          {
            sub_26A84FBC8();
            OUTLINED_FUNCTION_179();
            if (*(v18 + 84) == v3)
            {
              v6 = v17;
              v10 = v2[9];
            }

            else
            {
              sub_26A84EF78();
              OUTLINED_FUNCTION_179();
              if (*(v20 + 84) != v3)
              {
                *(v1 + v2[12]) = v0 + 1;
                return;
              }

              v6 = v19;
              v10 = v2[11];
            }
          }
        }
      }
    }

    v7 = v1 + v10;
  }

  __swift_storeEnumTagSinglePayload(v7, v0, v0, v6);
}

uint64_t sub_26A4950B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC8A0);
  OUTLINED_FUNCTION_179();
  if (*(v7 + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v9 = *(a1 + *(a3 + 20));
    if (v9 >= 0xFFFFFFFF)
    {
      LODWORD(v9) = -1;
    }

    return (v9 + 1);
  }
}

void sub_26A495164()
{
  OUTLINED_FUNCTION_59_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC8A0);
  OUTLINED_FUNCTION_179();
  if (*(v5 + 84) == v3)
  {

    __swift_storeEnumTagSinglePayload(v1, v0, v0, v4);
  }

  else
  {
    *(v1 + *(v2 + 20)) = (v0 - 1);
  }
}

uint64_t sub_26A495208()
{
  v0 = OUTLINED_FUNCTION_211();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v0);
  type metadata accessor for SnippetEnvironment(255);
  sub_26A4DBCC8(&qword_2803AC8C8, &qword_2803AC8C0);
  sub_26A5361C0(&qword_2803AC8D0, type metadata accessor for SnippetEnvironment);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_26A495314()
{
  sub_26A49035C(*(v0 + 16), *(v0 + 24));
  sub_26A49035C(*(v0 + 32), *(v0 + 40));
  sub_26A49035C(*(v0 + 48), *(v0 + 56));
  if (*(v0 + 88))
  {
    sub_26A4EC448(*(v0 + 64), *(v0 + 72), *(v0 + 80));
  }

  if (*(v0 + 112))
  {

    sub_26A4EC448(*(v0 + 120), *(v0 + 128), *(v0 + 136));

    if (*(v0 + 176))
    {
      sub_26A4EC448(*(v0 + 152), *(v0 + 160), *(v0 + 168));
    }

    sub_26A4EC448(*(v0 + 184), *(v0 + 192), *(v0 + 200));
  }

  OUTLINED_FUNCTION_1_9();

  return swift_deallocObject();
}

uint64_t sub_26A495400(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_26A84AB98();
  OUTLINED_FUNCTION_179();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    if (a2 == 2147483646)
    {
      return OUTLINED_FUNCTION_11_6(*(a1 + *(a3 + 20) + 8));
    }

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC918);
    v9 = a1 + *(a3 + 32);
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

void sub_26A4954D0()
{
  OUTLINED_FUNCTION_14_4();
  sub_26A84AB98();
  OUTLINED_FUNCTION_179();
  if (*(v5 + 84) == v3)
  {
    v6 = v4;
    v7 = v1;
  }

  else
  {
    if (v3 == 2147483646)
    {
      *(v1 + *(v2 + 20) + 8) = v0;
      return;
    }

    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC918);
    v7 = v1 + *(v2 + 32);
  }

  __swift_storeEnumTagSinglePayload(v7, v0, v0, v6);
}

uint64_t sub_26A4955BC(uint64_t a1, int a2, uint64_t a3)
{
  OUTLINED_FUNCTION_31_3();
  sub_26A84EE68();
  OUTLINED_FUNCTION_179();
  if (*(v6 + 84) != a2)
  {
    return OUTLINED_FUNCTION_11_6(*(v3 + *(a3 + 24)));
  }

  v7 = OUTLINED_FUNCTION_211();

  return __swift_getEnumTagSinglePayload(v7, v8, v9);
}

void sub_26A495650()
{
  OUTLINED_FUNCTION_14_4();
  sub_26A84EE68();
  OUTLINED_FUNCTION_179();
  if (*(v5 + 84) == v3)
  {

    __swift_storeEnumTagSinglePayload(v1, v0, v0, v4);
  }

  else
  {
    *(v1 + *(v2 + 24)) = v0;
  }
}

uint64_t sub_26A495764@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26A5D74A0();
  *a1 = result;
  return result;
}

uint64_t sub_26A4957C0()
{

  return swift_deallocObject();
}

uint64_t sub_26A495820()
{

  return swift_deallocObject();
}

uint64_t sub_26A495860()
{

  return swift_deallocObject();
}

uint64_t sub_26A4958E4()
{
  OUTLINED_FUNCTION_14_5();
  type metadata accessor for ComponentStack();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AA240);
  sub_26A84F4F8();
  OUTLINED_FUNCTION_14_5();
  sub_26A851238();
  sub_26A84FE08();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_3_11();
  sub_26A5401F4(v0);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_5_13();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_6_14();
  return swift_getWitnessTable();
}

uint64_t sub_26A495A00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = type metadata accessor for SmartDialogAnimationDrawableType(0);

  return __swift_getEnumTagSinglePayload(a1 + v5, a2, v6);
}

uint64_t sub_26A495A54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = type metadata accessor for SmartDialogAnimationDrawableType(0);

  return __swift_storeEnumTagSinglePayload(a1 + v6, a2, a2, v7);
}

uint64_t sub_26A495AAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26A84B1D8();
  v7 = a1 + *(a3 + 52);

  return __swift_getEnumTagSinglePayload(v7, a2, v6);
}

uint64_t sub_26A495B04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_26A84B1D8();
  v8 = a1 + *(a4 + 52);

  return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
}

uint64_t sub_26A495BC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_26A495C7C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_26A495D38()
{
  type metadata accessor for TableHeaderView();
  OUTLINED_FUNCTION_37_0();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));
  sub_26A4D82E8(*v3, *(v3 + 8));

  v4 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26A84F3A8();
    OUTLINED_FUNCTION_1_4();
    (*(v5 + 8))(v3 + v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_26A495E5C()
{
  type metadata accessor for TableHeaderView();
  OUTLINED_FUNCTION_37_0();
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = sub_26A84AE88();
  OUTLINED_FUNCTION_15();
  v8 = v7;
  v9 = *(v7 + 80);
  sub_26A4D82E8(*(v1 + v3), *(v1 + v3 + 8));

  v10 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26A84F3A8();
    OUTLINED_FUNCTION_1_4();
    (*(v11 + 8))(v1 + v3 + v10);
  }

  else
  {
  }

  (*(v8 + 8))(v1 + ((((v5 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + v9 + 8) & ~v9), v6);

  return swift_deallocObject();
}

uint64_t sub_26A496014()
{

  return swift_deallocObject();
}

uint64_t sub_26A496050()
{
  sub_26A49035C(*(v0 + 16), *(v0 + 24));
  sub_26A49035C(*(v0 + 32), *(v0 + 40));
  sub_26A49035C(*(v0 + 48), *(v0 + 56));
  if (*(v0 + 88))
  {
    sub_26A4EC448(*(v0 + 64), *(v0 + 72), *(v0 + 80));
  }

  if (*(v0 + 112))
  {

    sub_26A4EC448(*(v0 + 120), *(v0 + 128), *(v0 + 136));

    if (*(v0 + 176))
    {
      sub_26A4EC448(*(v0 + 152), *(v0 + 160), *(v0 + 168));
    }

    sub_26A4EC448(*(v0 + 184), *(v0 + 192), *(v0 + 200));
  }

  return swift_deallocObject();
}

uint64_t sub_26A496140()
{
  v1 = sub_26A84BD78();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_26A4961F0()
{
  sub_26A84F4F8();
  sub_26A54D52C();
  return swift_getWitnessTable();
}

uint64_t sub_26A49625C()
{
  sub_26A49035C(*(v0 + 16), *(v0 + 24));
  sub_26A49035C(*(v0 + 32), *(v0 + 40));
  sub_26A49035C(*(v0 + 48), *(v0 + 56));
  if (*(v0 + 88))
  {
    sub_26A4EC448(*(v0 + 64), *(v0 + 72), *(v0 + 80));
  }

  if (*(v0 + 112))
  {

    sub_26A4EC448(*(v0 + 120), *(v0 + 128), *(v0 + 136));

    if (*(v0 + 176))
    {
      sub_26A4EC448(*(v0 + 152), *(v0 + 160), *(v0 + 168));
    }

    sub_26A4EC448(*(v0 + 184), *(v0 + 192), *(v0 + 200));
  }

  OUTLINED_FUNCTION_1_9();

  return swift_deallocObject();
}

uint64_t sub_26A496348(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACF08);
  OUTLINED_FUNCTION_46();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_26A4963B8()
{
  OUTLINED_FUNCTION_6_8();
  result = EnvironmentValues.responseViewId.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26A4963F4()
{
  OUTLINED_FUNCTION_6_8();
  result = sub_26A5D70A0();
  *v0 = result;
  return result;
}

uint64_t sub_26A496474()
{
  OUTLINED_FUNCTION_6_8();
  result = EnvironmentValues.mode.getter();
  *v0 = result;
  return result;
}

uint64_t sub_26A4964C8()
{

  return swift_deallocObject();
}

uint64_t sub_26A4965A8()
{
  OUTLINED_FUNCTION_145();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD080);
  OUTLINED_FUNCTION_46();
  v1 = OUTLINED_FUNCTION_211();
  v2(v1);
  return v0;
}

uint64_t sub_26A496604(uint64_t a1, uint64_t a2, int *a3)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAD50);
    OUTLINED_FUNCTION_179();
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = a3[10];
    }

    else
    {
      type metadata accessor for ActionHandler(0);
      OUTLINED_FUNCTION_179();
      if (*(v13 + 84) == a2)
      {
        v10 = v12;
        v11 = a3[15];
      }

      else
      {
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91F0);
        v11 = a3[18];
      }
    }

    return __swift_getEnumTagSinglePayload(a1 + v11, a2, v10);
  }
}

uint64_t sub_26A496724(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAD50);
    OUTLINED_FUNCTION_179();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = a4[10];
    }

    else
    {
      type metadata accessor for ActionHandler(0);
      OUTLINED_FUNCTION_179();
      if (*(v13 + 84) == a3)
      {
        v10 = v12;
        v11 = a4[15];
      }

      else
      {
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91F0);
        v11 = a4[18];
      }
    }

    return __swift_storeEnumTagSinglePayload(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_26A49684C()
{

  return swift_deallocObject();
}

uint64_t sub_26A4968B0()
{
  sub_26A49035C(*(v0 + 16), *(v0 + 24));
  sub_26A49035C(*(v0 + 32), *(v0 + 40));
  sub_26A49035C(*(v0 + 48), *(v0 + 56));
  if (*(v0 + 88))
  {
    sub_26A4EC448(*(v0 + 64), *(v0 + 72), *(v0 + 80));
  }

  if (*(v0 + 112))
  {

    sub_26A4EC448(*(v0 + 120), *(v0 + 128), *(v0 + 136));

    if (*(v0 + 176))
    {
      sub_26A4EC448(*(v0 + 152), *(v0 + 160), *(v0 + 168));
    }

    sub_26A4EC448(*(v0 + 184), *(v0 + 192), *(v0 + 200));
  }

  return swift_deallocObject();
}

uint64_t sub_26A4969D4(uint64_t a1, uint64_t a2, int *a3)
{
  sub_26A84ACC8();
  OUTLINED_FUNCTION_179();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC1D8);
  OUTLINED_FUNCTION_179();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v12 = a3[5];
LABEL_7:
    v9 = a1 + v12;
    goto LABEL_8;
  }

  type metadata accessor for TableManager.ColumnDefinitions(0);
  OUTLINED_FUNCTION_179();
  if (*(v14 + 84) == a2)
  {
    v8 = v13;
    v12 = a3[6];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[8]);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

void sub_26A496B0C()
{
  OUTLINED_FUNCTION_16_6();
  OUTLINED_FUNCTION_179();
  if (*(v5 + 84) == v3)
  {
    v6 = v4;
    v7 = v1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC1D8);
    OUTLINED_FUNCTION_179();
    if (*(v9 + 84) == v3)
    {
      v6 = v8;
      v10 = v2[5];
    }

    else
    {
      type metadata accessor for TableManager.ColumnDefinitions(0);
      OUTLINED_FUNCTION_179();
      if (*(v12 + 84) != v3)
      {
        *(v1 + v2[8]) = (v0 - 1);
        return;
      }

      v6 = v11;
      v10 = v2[6];
    }

    v7 = v1 + v10;
  }

  __swift_storeEnumTagSinglePayload(v7, v0, v0, v6);
}

uint64_t sub_26A496C28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_26A84ACC8();
  OUTLINED_FUNCTION_179();
  if (*(v7 + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v9 = *(a1 + *(a3 + 20));
    if (v9 >= 0xFFFFFFFF)
    {
      LODWORD(v9) = -1;
    }

    v10 = v9 - 1;
    if (v10 < 0)
    {
      v10 = -1;
    }

    return (v10 + 1);
  }
}

void sub_26A496CDC()
{
  OUTLINED_FUNCTION_16_6();
  OUTLINED_FUNCTION_179();
  if (*(v5 + 84) == v3)
  {

    __swift_storeEnumTagSinglePayload(v1, v0, v0, v4);
  }

  else
  {
    *(v1 + *(v2 + 20)) = v0;
  }
}

id sub_26A496D74@<X0>(unint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_26A7DBC10(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_26A496DA0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_26A73670C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_26A496DCC()
{

  return swift_deallocObject();
}

uint64_t sub_26A496E0C()
{

  return swift_deallocObject();
}

uint64_t sub_26A496E44()
{
  OUTLINED_FUNCTION_145();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD2B8);
  OUTLINED_FUNCTION_46();
  (*(v2 + 32))(v0, v1);
  return v0;
}

uint64_t sub_26A496EA4()
{
  OUTLINED_FUNCTION_145();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD2D0);
  OUTLINED_FUNCTION_46();
  (*(v2 + 16))(v0, v1);
  return v0;
}

uint64_t sub_26A496F04(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD2D0);
  OUTLINED_FUNCTION_46();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_26A496FD8(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
  OUTLINED_FUNCTION_179();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a3[6];
LABEL_9:

    return __swift_getEnumTagSinglePayload(a1 + v9, a2, v8);
  }

  sub_26A84BD28();
  OUTLINED_FUNCTION_179();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a3[7];
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA838);
  OUTLINED_FUNCTION_179();
  if (*(v13 + 84) == a2)
  {
    v8 = v12;
    v9 = a3[8];
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3800);
  OUTLINED_FUNCTION_179();
  if (*(v15 + 84) == a2)
  {
    v8 = v14;
    v9 = a3[10];
    goto LABEL_9;
  }

  v17 = *(a1 + a3[11] + 8);
  if (v17 >= 0xFFFFFFFF)
  {
    LODWORD(v17) = -1;
  }

  return (v17 + 1);
}

void sub_26A49716C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
  OUTLINED_FUNCTION_179();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a4[6];
  }

  else
  {
    sub_26A84BD28();
    OUTLINED_FUNCTION_179();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v11 = a4[7];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA838);
      OUTLINED_FUNCTION_179();
      if (*(v15 + 84) == a3)
      {
        v10 = v14;
        v11 = a4[8];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3800);
        OUTLINED_FUNCTION_179();
        if (*(v17 + 84) != a3)
        {
          *(a1 + a4[11] + 8) = (a2 - 1);
          return;
        }

        v10 = v16;
        v11 = a4[10];
      }
    }
  }

  __swift_storeEnumTagSinglePayload(a1 + v11, a2, a2, v10);
}

uint64_t sub_26A497348(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA838);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_26A49739C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA838);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_26A497448(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 264);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
    v9 = a1 + *(a3 + 28);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_26A4974DC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 264) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
    v8 = v5 + *(a4 + 28);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_26A497568()
{

  return swift_deallocObject();
}

uint64_t sub_26A4975E8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26A5D765C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_26A497640()
{
  type metadata accessor for ComponentStack.SeparatorAddingLayout();
  OUTLINED_FUNCTION_5_18();
  swift_getWitnessTable();
  sub_26A84F1A8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2803B31B0);
  sub_26A84F4F8();
  type metadata accessor for RFButtonStyle();
  OUTLINED_FUNCTION_4_17();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_3_18();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_3_11();
  sub_26A4D7DCC();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_1_19();
  sub_26A56D48C();
  OUTLINED_FUNCTION_12_7();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_39_2();
  sub_26A84F4F8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AD658);
  sub_26A84F4F8();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_17_5();
  sub_26A4D7DCC();
  swift_getWitnessTable();
  type metadata accessor for RequestHostBackgroundModifier();
  sub_26A84F4F8();
  sub_26A84FE08();
  OUTLINED_FUNCTION_11_10();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_6_14();
  return swift_getWitnessTable();
}

uint64_t sub_26A497914()
{
  type metadata accessor for ComponentStack();
  OUTLINED_FUNCTION_15_7();

  return swift_getWitnessTable();
}

uint64_t sub_26A497988()
{
  v1 = sub_26A84FF28();
  OUTLINED_FUNCTION_15();
  v3 = v2;
  v4 = (*(v2 + 80) + 720) & ~*(v2 + 80);
  OUTLINED_FUNCTION_9_14();

  OUTLINED_FUNCTION_10_10();

  OUTLINED_FUNCTION_22_6();

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_26A497A78()
{

  return swift_deallocObject();
}

uint64_t sub_26A497B38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26A84E8B8();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_26A497BE4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_26A84E8B8();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_26A497C90()
{
  type metadata accessor for StepSliderControlView();
  OUTLINED_FUNCTION_6_3();
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  swift_unknownObjectRelease();
  sub_26A84E8B8();
  OUTLINED_FUNCTION_1_4();
  (*(v3 + 8))(v0 + v2);

  return swift_deallocObject();
}

uint64_t sub_26A497D9C()
{

  return swift_deallocObject();
}

uint64_t sub_26A497DDC(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A0);
  OUTLINED_FUNCTION_179();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91F0);
  OUTLINED_FUNCTION_179();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v12 = a3[6];
LABEL_7:
    v9 = a1 + v12;
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
  OUTLINED_FUNCTION_179();
  if (*(v14 + 84) == a2)
  {
    v8 = v13;
    v12 = a3[8];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[9]);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

void sub_26A497F2C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A0);
  OUTLINED_FUNCTION_179();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91F0);
    OUTLINED_FUNCTION_179();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[6];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
      OUTLINED_FUNCTION_179();
      if (*(v16 + 84) != a3)
      {
        *(a1 + a4[9]) = (a2 - 1);
        return;
      }

      v10 = v15;
      v14 = a4[8];
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_26A4980D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 16);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADBD0);
    OUTLINED_FUNCTION_179();
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(a3 + 24);
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3910);
      v11 = *(a3 + 44);
    }

    return __swift_getEnumTagSinglePayload(a1 + v11, a2, v10);
  }
}

uint64_t sub_26A4981AC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 16) = -a2;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADBD0);
    OUTLINED_FUNCTION_179();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(a4 + 24);
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3910);
      v11 = *(a4 + 44);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_26A498284(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADBC8);
  OUTLINED_FUNCTION_179();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  else
  {
    v11 = *(a1 + *(a3 + 36));
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }
}

void sub_26A49833C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADBC8);
  OUTLINED_FUNCTION_179();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1 + *(a4 + 24);

    __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }
}

uint64_t sub_26A4984B4()
{
  v1 = type metadata accessor for StatusIndicatorView(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  sub_26A49035C(*v2, *(v2 + 8));
  v3 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB430);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26A84EE68();
    OUTLINED_FUNCTION_46();
    (*(v4 + 8))(v2 + v3);
  }

  else
  {
  }

  OUTLINED_FUNCTION_37_6(v1[6]);
  v5 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26A84F3A8();
    OUTLINED_FUNCTION_46();
    (*(v6 + 8))(v2 + v5);
  }

  else
  {
  }

  v7 = (v2 + v1[8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
LABEL_12:

    goto LABEL_13;
  }

  v8 = type metadata accessor for ActionType();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8))
  {
    goto LABEL_13;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
  }

  else
  {
    if (EnumCaseMultiPayload != 1)
    {
      if (EnumCaseMultiPayload)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    sub_26A84BAB8();
    OUTLINED_FUNCTION_46();
    (*(v11 + 8))(v7);
  }

LABEL_13:
  OUTLINED_FUNCTION_37_6(v1[9]);
  OUTLINED_FUNCTION_37_6(v1[10]);
  OUTLINED_FUNCTION_37_6(v1[11]);
  OUTLINED_FUNCTION_37_6(v1[12]);
  sub_26A4F5724(*(v2 + v1[13]), *(v2 + v1[13] + 8), *(v2 + v1[13] + 9));
  OUTLINED_FUNCTION_37_6(v1[14]);
  OUTLINED_FUNCTION_37_6(v1[15]);
  OUTLINED_FUNCTION_37_6(v1[16]);
  OUTLINED_FUNCTION_32_4(v1[17]);

  OUTLINED_FUNCTION_32_4(v1[18]);

  return swift_deallocObject();
}

uint64_t sub_26A4987E4()
{

  return swift_deallocObject();
}

uint64_t sub_26A49881C(uint64_t a1, int a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC3C0);
  OUTLINED_FUNCTION_179();
  if (*(v5 + 84) == a2)
  {
    v6 = a3[5];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
    OUTLINED_FUNCTION_179();
    if (*(v7 + 84) == a2)
    {
      v6 = a3[7];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91F0);
      OUTLINED_FUNCTION_179();
      if (*(v8 + 84) != a2)
      {
        OUTLINED_FUNCTION_65_1();
        return (v13 + 1);
      }

      v6 = a3[8];
    }
  }

  v9 = OUTLINED_FUNCTION_86_0(v6);

  return __swift_getEnumTagSinglePayload(v9, v10, v11);
}

void sub_26A498964()
{
  OUTLINED_FUNCTION_59_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC3C0);
  OUTLINED_FUNCTION_179();
  if (*(v4 + 84) == v3)
  {
    v5 = v2[5];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
    OUTLINED_FUNCTION_179();
    if (*(v6 + 84) == v3)
    {
      v5 = v2[7];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91F0);
      OUTLINED_FUNCTION_179();
      if (*(v7 + 84) != v3)
      {
        *(v1 + v2[17] + 280) = (v0 - 1);
        return;
      }

      v5 = v2[8];
    }
  }

  v8 = OUTLINED_FUNCTION_86_0(v5);

  __swift_storeEnumTagSinglePayload(v8, v9, v0, v10);
}

uint64_t sub_26A498AD8(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADD30);
  OUTLINED_FUNCTION_179();
  if (*(v5 + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v4);
  }

  else
  {
    OUTLINED_FUNCTION_65_1();
    v8 = v7 - 1;
    if (v8 < 0)
    {
      v8 = -1;
    }

    return (v8 + 1);
  }
}

void sub_26A498B94()
{
  OUTLINED_FUNCTION_59_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADD30);
  OUTLINED_FUNCTION_179();
  if (*(v5 + 84) == v3)
  {

    __swift_storeEnumTagSinglePayload(v1, v0, v0, v4);
  }

  else
  {
    *(v1 + *(v2 + 32) + 24) = v0;
  }
}

uint64_t sub_26A498C38(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    OUTLINED_FUNCTION_65_1();
    return (v3 + 1);
  }

  else
  {
    sub_26A850F88();
    v6 = OUTLINED_FUNCTION_86_0(*(a3 + 36));

    return __swift_getEnumTagSinglePayload(v6, v7, v8);
  }
}

uint64_t sub_26A498CB4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    sub_26A850F88();
    v6 = OUTLINED_FUNCTION_86_0(*(a4 + 36));

    return __swift_storeEnumTagSinglePayload(v6, v7, a2, v8);
  }

  return result;
}

uint64_t sub_26A498D58()
{
  OUTLINED_FUNCTION_145();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADD90);
  OUTLINED_FUNCTION_5_0();
  v1 = OUTLINED_FUNCTION_211();
  v2(v1);
  return v0;
}

uint64_t sub_26A498DC4()
{
  sub_26A49035C(*(v0 + 16), *(v0 + 24));
  sub_26A49035C(*(v0 + 32), *(v0 + 40));
  sub_26A49035C(*(v0 + 48), *(v0 + 56));
  if (*(v0 + 88))
  {
    sub_26A4EC448(*(v0 + 64), *(v0 + 72), *(v0 + 80));
  }

  if (*(v0 + 112))
  {

    sub_26A4EC448(*(v0 + 120), *(v0 + 128), *(v0 + 136));

    if (*(v0 + 176))
    {
      sub_26A4EC448(*(v0 + 152), *(v0 + 160), *(v0 + 168));
    }

    sub_26A4EC448(*(v0 + 184), *(v0 + 192), *(v0 + 200));
  }

  return swift_deallocObject();
}

uint64_t sub_26A498EB4()
{

  return swift_deallocObject();
}

uint64_t sub_26A498EF4(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
  OUTLINED_FUNCTION_179();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a3[5];
LABEL_7:

    return __swift_getEnumTagSinglePayload(a1 + v9, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91F0);
  OUTLINED_FUNCTION_179();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a3[6];
    goto LABEL_7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADE48);
  OUTLINED_FUNCTION_179();
  if (*(v13 + 84) == a2)
  {
    v8 = v12;
    v9 = a3[7];
    goto LABEL_7;
  }

  v15 = *(a1 + a3[8] + 224);
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  return (v15 + 1);
}

void sub_26A499048(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
  OUTLINED_FUNCTION_179();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a4[5];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91F0);
    OUTLINED_FUNCTION_179();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v11 = a4[6];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADE48);
      OUTLINED_FUNCTION_179();
      if (*(v15 + 84) != a3)
      {
        *(a1 + a4[8] + 224) = (a2 - 1);
        return;
      }

      v10 = v14;
      v11 = a4[7];
    }
  }

  __swift_storeEnumTagSinglePayload(a1 + v11, a2, a2, v10);
}

uint64_t sub_26A4991B8()
{
  sub_26A49035C(*(v0 + 16), *(v0 + 24));
  sub_26A49035C(*(v0 + 32), *(v0 + 40));
  sub_26A49035C(*(v0 + 48), *(v0 + 56));
  if (*(v0 + 88))
  {
    sub_26A4EC448(*(v0 + 64), *(v0 + 72), *(v0 + 80));
  }

  if (*(v0 + 112))
  {

    sub_26A4EC448(*(v0 + 120), *(v0 + 128), *(v0 + 136));

    if (*(v0 + 176))
    {
      sub_26A4EC448(*(v0 + 152), *(v0 + 160), *(v0 + 168));
    }

    sub_26A4EC448(*(v0 + 184), *(v0 + 192), *(v0 + 200));
  }

  OUTLINED_FUNCTION_1_9();

  return swift_deallocObject();
}

uint64_t sub_26A4992EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADF98);
  if (*(*(v6 - 8) + 84) != a2)
  {
    return OUTLINED_FUNCTION_49_0(*(a1 + *(a3 + 28)));
  }

  return __swift_getEnumTagSinglePayload(a1, a2, v6);
}

uint64_t sub_26A499398(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADF98);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_26A499450(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_49_0(*a1);
  }

  v7 = sub_26A84B1D8();
  v8 = a1 + *(a3 + 28);

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

void *sub_26A4994CC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_26A84B1D8();
    v8 = v5 + *(a4 + 28);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_26A499558()
{
  OUTLINED_FUNCTION_145();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE040);
  OUTLINED_FUNCTION_46();
  v1 = OUTLINED_FUNCTION_211();
  v2(v1);
  return v0;
}

uint64_t sub_26A4995B4()
{
  OUTLINED_FUNCTION_145();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE048);
  OUTLINED_FUNCTION_46();
  v1 = OUTLINED_FUNCTION_211();
  v2(v1);
  return v0;
}

uint64_t sub_26A499610()
{
  OUTLINED_FUNCTION_196();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE048);
  OUTLINED_FUNCTION_46();
  (*(v1 + 8))(v0);
  return v0;
}

id sub_26A4996C8(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_2_21(a1) currentIdiom];
  *v1 = result;
  return result;
}

id sub_26A49970C(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_2_21(a1) snippetWidth];
  *v1 = v3;
  return result;
}

id sub_26A499768(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_2_21(a1) backgroundMaterial];
  *v1 = result;
  return result;
}

id sub_26A49982C(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_2_21(a1) isRedacted];
  *v1 = result;
  return result;
}

id sub_26A499870(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_2_21(a1) isPresentedWithSmartDialogText];
  *v1 = result;
  return result;
}

id sub_26A4998B4(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_2_21(a1) visualResponseLocation];
  *v1 = result;
  return result;
}

uint64_t sub_26A4998F8()
{

  return swift_deallocObject();
}

uint64_t sub_26A499938@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26A58F070();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26A499968()
{

  return swift_deallocObject();
}

uint64_t sub_26A4999A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26A84E578();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 28) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_26A499A50(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_26A84E578();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_26A499B00()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AE238);
  sub_26A84F4F8();
  sub_26A506A30();
  OUTLINED_FUNCTION_15_10();
  return swift_getWitnessTable();
}

uint64_t sub_26A499C74()
{
  v1 = type metadata accessor for TextPropertyView();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  sub_26A84B888();
  OUTLINED_FUNCTION_46();
  (*(v3 + 8))(v2);
  OUTLINED_FUNCTION_60_0(v2 + v1[5]);
  v4 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A93D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_26A84E408();
    if (!__swift_getEnumTagSinglePayload(v2 + v4, 1, v5))
    {
      OUTLINED_FUNCTION_4_11();
      (*(v6 + 8))(v2 + v4, v5);
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_60_0(v2 + v1[7]);
  v7 = v2 + v1[8];
  sub_26A556DF4(*v7, *(v7 + 8), *(v7 + 16));
  sub_26A49035C(*(v7 + 24), *(v7 + 32));
  v8 = type metadata accessor for ActionHandler(0);
  v9 = v8[6];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_26A84E408();
    if (!__swift_getEnumTagSinglePayload(v7 + v9, 1, v10))
    {
      OUTLINED_FUNCTION_4_11();
      (*(v11 + 8))(v7 + v9, v10);
    }
  }

  else
  {
  }

  sub_26A556DF4(*(v7 + v8[7]), *(v7 + v8[7] + 8), *(v7 + v8[7] + 16));
  OUTLINED_FUNCTION_60_0(v7 + v8[8]);
  OUTLINED_FUNCTION_60_0(v7 + v8[9]);
  v12 = v7 + v8[10];
  if (*(v12 + 9))
  {
    if ((*(v12 + 8) & 1) == 0)
    {
      MEMORY[0x26D665710](v7 + v8[10]);
    }
  }

  else
  {
  }

  MEMORY[0x26D665710](v12 + 16);
  v13 = v7 + v8[11];
  v14 = type metadata accessor for StandardActionHandler(0);
  if (!__swift_getEnumTagSinglePayload(v13, 1, v14))
  {
    MEMORY[0x26D665710](v13);
    v15 = *(v14 + 24);
    v16 = sub_26A84E408();
    if (!__swift_getEnumTagSinglePayload(v13 + v15, 1, v16))
    {
      OUTLINED_FUNCTION_4_11();
      (*(v17 + 8))(v13 + v15, v16);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_26A499FA4(uint64_t a1, uint64_t a2, int *a3)
{
  sub_26A84B888();
  OUTLINED_FUNCTION_179();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    if (a2 == 254)
    {
      v10 = *(a1 + a3[5] + 8);
      if (v10 > 1)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADBD0);
    OUTLINED_FUNCTION_179();
    if (*(v13 + 84) == a2)
    {
      v8 = v12;
      v14 = a3[6];
    }

    else
    {
      v8 = type metadata accessor for ActionHandler(0);
      v14 = a3[8];
    }

    v9 = a1 + v14;
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

void sub_26A49A0B8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_26A84B888();
  OUTLINED_FUNCTION_179();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    if (a3 == 254)
    {
      *(a1 + a4[5] + 8) = -a2;
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADBD0);
    OUTLINED_FUNCTION_179();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[6];
    }

    else
    {
      v10 = type metadata accessor for ActionHandler(0);
      v14 = a4[8];
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_26A49A218(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE3D8);
  OUTLINED_FUNCTION_46();
  (*(v4 + 32))(a2, a1);
  return a2;
}

uint64_t sub_26A49A280()
{
  OUTLINED_FUNCTION_196();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE3D8);
  OUTLINED_FUNCTION_46();
  (*(v1 + 8))(v0);
  return v0;
}

uint64_t sub_26A49A2DC()
{
  sub_26A84F4F8();
  sub_26A593898();
  return swift_getWitnessTable();
}

uint64_t sub_26A49A344()
{
  OUTLINED_FUNCTION_145();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE480);
  OUTLINED_FUNCTION_46();
  (*(v2 + 16))(v0, v1);
  return v0;
}

uint64_t sub_26A49A3A4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE480);
  OUTLINED_FUNCTION_46();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_26A49A428()
{

  return swift_deallocObject();
}

uint64_t sub_26A49A468()
{
  OUTLINED_FUNCTION_37_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC908);
  OUTLINED_FUNCTION_179();
  if (*(v4 + 84) == v0)
  {
    v5 = v3;
    v6 = v1;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v6, v0, v5);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
  OUTLINED_FUNCTION_179();
  if (*(v8 + 84) == v0)
  {
    v5 = v7;
    v9 = v2[6];
LABEL_7:
    v6 = v1 + v9;
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91F0);
  OUTLINED_FUNCTION_179();
  if (*(v11 + 84) == v0)
  {
    v5 = v10;
    v9 = v2[7];
    goto LABEL_7;
  }

  v13 = *(v1 + v2[8]);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_26A49A5AC()
{
  OUTLINED_FUNCTION_59_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC908);
  OUTLINED_FUNCTION_179();
  if (*(v5 + 84) == v3)
  {
    v6 = v4;
    v7 = v1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
    OUTLINED_FUNCTION_179();
    if (*(v9 + 84) == v3)
    {
      v6 = v8;
      v10 = v2[6];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91F0);
      OUTLINED_FUNCTION_179();
      if (*(v12 + 84) != v3)
      {
        *(v1 + v2[8]) = (v0 - 1);
        return;
      }

      v6 = v11;
      v10 = v2[7];
    }

    v7 = v1 + v10;
  }

  __swift_storeEnumTagSinglePayload(v7, v0, v0, v6);
}

uint64_t sub_26A49A6EC()
{
  OUTLINED_FUNCTION_37_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC908);
  OUTLINED_FUNCTION_179();
  if (*(v4 + 84) == v0)
  {
    v5 = v3;
    v6 = v1;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v6, v0, v5);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
  OUTLINED_FUNCTION_179();
  if (*(v8 + 84) == v0)
  {
    v5 = v7;
    v6 = v1 + *(v2 + 24);
    goto LABEL_5;
  }

  v10 = *(v1 + *(v2 + 28) + 8);
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

void sub_26A49A7F4()
{
  OUTLINED_FUNCTION_59_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC908);
  OUTLINED_FUNCTION_179();
  if (*(v5 + 84) == v3)
  {
    v6 = v4;
    v7 = v1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
    OUTLINED_FUNCTION_179();
    if (*(v9 + 84) != v3)
    {
      *(v1 + *(v2 + 28) + 8) = v0;
      return;
    }

    v6 = v8;
    v7 = v1 + *(v2 + 24);
  }

  __swift_storeEnumTagSinglePayload(v7, v0, v0, v6);
}

uint64_t sub_26A49A908()
{
  v1 = type metadata accessor for SimpleItemStandardLayout(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  sub_26A49035C(*v2, *(v2 + 8));
  sub_26A49035C(*(v2 + 16), *(v2 + 24));
  sub_26A49035C(*(v2 + 32), *(v2 + 40));
  sub_26A49035C(*(v2 + 48), *(v2 + 56));
  sub_26A49035C(*(v2 + 64), *(v2 + 72));
  sub_26A49035C(*(v2 + 80), *(v2 + 88));
  sub_26A49035C(*(v2 + 96), *(v2 + 104));
  sub_26A49035C(*(v2 + 112), *(v2 + 120));
  sub_26A49035C(*(v2 + 128), *(v2 + 136));
  sub_26A49035C(*(v2 + 144), *(v2 + 152));
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC908);
  v4 = *(v3 + 28);
  v5 = type metadata accessor for SimpleItemConstants();
  v6 = v4 + *(v5 + 32);
  v7 = sub_26A84B1D8();
  OUTLINED_FUNCTION_46();
  v9 = *(v8 + 8);
  v9(v2 + v6, v7);
  v10 = v2 + *(v3 + 32);

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADC8);
  v9(v10 + *(v11 + 36) + *(v5 + 32), v7);
  sub_26A49035C(*(v2 + *(v1 + 20)), *(v2 + *(v1 + 20) + 8));
  v12 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26A84F3A8();
    OUTLINED_FUNCTION_46();
    (*(v13 + 8))(v2 + v12);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_26A49ABD0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AE530);
  sub_26A598C84();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_26A49AC8C@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.disableCarPlayScalingEffect.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_26A49ACE4()
{
  v1 = type metadata accessor for StandardSiriButtonStyle();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  sub_26A49035C(*(v2 + 8), *(v2 + 16));
  sub_26A49035C(*(v2 + 24), *(v2 + 32));
  sub_26A49035C(*(v2 + 40), *(v2 + 48));
  v3 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB430);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26A84EE68();
    OUTLINED_FUNCTION_46();
    (*(v4 + 8))(v2 + v3);
  }

  else
  {
  }

  sub_26A49035C(*(v2 + v1[10]), *(v2 + v1[10] + 8));

  if (*(v2 + v1[12]))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_26A49AE5C()
{
  OUTLINED_FUNCTION_196();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE6A8);
  OUTLINED_FUNCTION_46();
  (*(v1 + 8))(v0);
  return v0;
}

uint64_t sub_26A49AEB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC3C0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1 + *(a3 + 36);

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 44) + 8);
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

uint64_t sub_26A49AF84(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC3C0);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 36);

    return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 44) + 8) = a2;
  }

  return result;
}

uint64_t sub_26A49B088()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AE6A8);
  sub_26A59AE24();
  return swift_getOpaqueTypeConformance2();
}

double sub_26A49B108@<D0>(uint64_t a1@<X8>)
{
  sub_26A59B7D4(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_26A49B174()
{
  sub_26A84F4F8();
  sub_26A59D8F4();
  OUTLINED_FUNCTION_15_10();
  return swift_getWitnessTable();
}

uint64_t sub_26A49B1C4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AE778);
  sub_26A84F4F8();
  sub_26A506A30();
  OUTLINED_FUNCTION_15_10();
  return swift_getWitnessTable();
}

uint64_t sub_26A49B268()
{
  OUTLINED_FUNCTION_145();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE838);
  OUTLINED_FUNCTION_46();
  (*(v2 + 32))(v0, v1);
  return v0;
}

uint64_t sub_26A49B2D8()
{
  v1 = sub_26A84F088();
  OUTLINED_FUNCTION_15();
  v3 = v2;
  v4 = (*(v2 + 80) + 456) & ~*(v2 + 80);
  OUTLINED_FUNCTION_2_24();

  OUTLINED_FUNCTION_5_25();
  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_26A49B3B8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_26A49B594(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_26A84BD28();
  OUTLINED_FUNCTION_179();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADBD0);
  OUTLINED_FUNCTION_179();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a1 + *(a3 + 32);
    goto LABEL_5;
  }

  v13 = *(a1 + *(a3 + 36) + 8);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  v14 = v13 - 1;
  if (v14 < 0)
  {
    v14 = -1;
  }

  return (v14 + 1);
}

void sub_26A49B69C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_26A84BD28();
  OUTLINED_FUNCTION_179();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADBD0);
    OUTLINED_FUNCTION_179();
    if (*(v13 + 84) != a3)
    {
      *(a1 + *(a4 + 36) + 8) = a2;
      return;
    }

    v10 = v12;
    v11 = a1 + *(a4 + 32);
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_26A49B7E8()
{
  v1 = sub_26A84E278();
  OUTLINED_FUNCTION_15();
  v3 = v2;
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v6 = *(v5 + 64);
  v7 = type metadata accessor for VisualPropertyView();
  v8 = (v4 + v6 + *(*(v7 - 1) + 80)) & ~*(*(v7 - 1) + 80);
  (*(v3 + 8))(v0 + v4, v1);
  v9 = v0 + v8;
  sub_26A84BD28();
  OUTLINED_FUNCTION_46();
  (*(v10 + 8))(v0 + v8);
  v11 = v0 + v8 + v7[5];
  if (*(v11 + 9))
  {
    if ((*(v11 + 8) & 1) == 0)
    {
      MEMORY[0x26D665710](v9 + v7[5]);
    }
  }

  else
  {
  }

  MEMORY[0x26D665710](v11 + 16);
  sub_26A49035C(*(v9 + v7[6]), *(v9 + v7[6] + 8));
  sub_26A49035C(*(v9 + v7[7]), *(v9 + v7[7] + 8));
  v12 = v7[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A93D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_26A84E408();
    if (!__swift_getEnumTagSinglePayload(v9 + v12, 1, v13))
    {
      (*(*(v13 - 8) + 8))(v9 + v12, v13);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_26A49BA34(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AEA80);
  OUTLINED_FUNCTION_46();
  (*(v4 + 16))(a2, a1);
  return a2;
}

uint64_t sub_26A49BA9C()
{
  OUTLINED_FUNCTION_196();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AEA80);
  OUTLINED_FUNCTION_46();
  (*(v1 + 8))(v0);
  return v0;
}

uint64_t sub_26A49BAFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 232);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for NavigationHeader(0);
    v9 = a1 + *(a3 + 36);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_26A49BB84(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 232) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for NavigationHeader(0);
    v8 = v5 + *(a4 + 36);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_26A49BC04()
{
  type metadata accessor for NavigationHeader(255);
  sub_26A851238();
  sub_26A84F4F8();
  swift_getTupleTypeMetadata2();
  sub_26A851528();
  OUTLINED_FUNCTION_1_27();
  swift_getWitnessTable();
  sub_26A851238();
  OUTLINED_FUNCTION_5_13();

  return swift_getWitnessTable();
}

uint64_t sub_26A49BCF4()
{

  return swift_deallocObject();
}

uint64_t sub_26A49BD3C(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A0);
  OUTLINED_FUNCTION_179();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_11:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  if (a2 != 0x7FFFFFFF)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91F0);
    OUTLINED_FUNCTION_179();
    if (*(v13 + 84) == a2)
    {
      v8 = v12;
      v14 = a3[7];
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
      v14 = a3[9];
    }

    v9 = a1 + v14;
    goto LABEL_11;
  }

  v10 = *(a1 + a3[5] + 280);
  if (v10 >= 0xFFFFFFFF)
  {
    LODWORD(v10) = -1;
  }

  return (v10 + 1);
}

void sub_26A49BE70(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A0);
  OUTLINED_FUNCTION_179();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[5] + 280) = (a2 - 1);
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91F0);
    OUTLINED_FUNCTION_179();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[7];
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
      v14 = a4[9];
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_26A49BFFC()
{

  return swift_deallocObject();
}

uint64_t sub_26A49C044()
{
  v2 = OUTLINED_FUNCTION_0_26();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_26A49C07C()
{
  v2 = OUTLINED_FUNCTION_0_26();

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v2);
}

uint64_t sub_26A49C0D4()
{

  return swift_deallocObject();
}

uint64_t sub_26A49C114(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91F0);
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 24);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
      v10 = *(a3 + 32);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

void *sub_26A49C1F8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91F0);
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 24);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
      v10 = *(a4 + 32);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_26A49C2E0()
{

  return swift_deallocObject();
}

uint64_t sub_26A49C338()
{

  return swift_deallocObject();
}

uint64_t sub_26A49C394(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
    OUTLINED_FUNCTION_179();
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(a3 + 20);
    }

    else
    {
      v10 = sub_26A84D428();
      v11 = *(a3 + 24);
    }

    return __swift_getEnumTagSinglePayload(a1 + v11, a2, v10);
  }
}

uint64_t sub_26A49C460(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
    OUTLINED_FUNCTION_179();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(a4 + 20);
    }

    else
    {
      v10 = sub_26A84D428();
      v11 = *(a4 + 24);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_26A49C530(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_26A84D3E8();
  OUTLINED_FUNCTION_179();
  if (*(v7 + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v9 = *(a1 + *(a3 + 20) + 8);
    if (v9 >= 0xFFFFFFFF)
    {
      LODWORD(v9) = -1;
    }

    v10 = v9 - 1;
    if (v10 < 0)
    {
      v10 = -1;
    }

    return (v10 + 1);
  }
}

void sub_26A49C5E8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_26A84D3E8();
  OUTLINED_FUNCTION_179();
  if (*(v9 + 84) == a3)
  {

    __swift_storeEnumTagSinglePayload(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }
}

uint64_t sub_26A49C6D8()
{
  v1 = *(type metadata accessor for HorizontalListStandardView.ItemView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  sub_26A84D3E8();
  OUTLINED_FUNCTION_46();
  (*(v3 + 8))(v0 + v2);

  return swift_deallocObject();
}

uint64_t sub_26A49C7BC()
{

  return swift_deallocObject();
}

uint64_t sub_26A49C7FC()
{
  v1 = type metadata accessor for HorizontalListStandardView(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  sub_26A4D82E8(*v2, *(v2 + 8));
  v3 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26A84F3A8();
    OUTLINED_FUNCTION_46();
    (*(v4 + 8))(v2 + v3);
  }

  else
  {
  }

  v5 = *(v1 + 24);
  sub_26A84D428();
  OUTLINED_FUNCTION_46();
  (*(v6 + 8))(v2 + v5);

  return swift_deallocObject();
}

uint64_t sub_26A49C998()
{
  type metadata accessor for SelectableContentModifier();
  sub_26A84F4F8();
  OUTLINED_FUNCTION_2_28();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_58();
  return swift_getWitnessTable();
}

uint64_t sub_26A49CA0C()
{
  sub_26A84F4F8();
  sub_26A5B3C60();
  OUTLINED_FUNCTION_58();
  return swift_getWitnessTable();
}

uint64_t sub_26A49CA64()
{
  sub_26A84F4F8();
  sub_26A5B3C60();
  OUTLINED_FUNCTION_58();
  return swift_getWitnessTable();
}

uint64_t sub_26A49CB04()
{

  return swift_deallocObject();
}

uint64_t sub_26A49CB44(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AEFC8);
  OUTLINED_FUNCTION_46();
  (*(v4 + 16))(a2, a1);
  return a2;
}

uint64_t sub_26A49CBAC(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AEFC8);
  OUTLINED_FUNCTION_46();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_26A49CC0C()
{

  return swift_deallocObject();
}

uint64_t sub_26A49CC44()
{
  type metadata accessor for SelectableContentModifier();
  OUTLINED_FUNCTION_2_28();
  swift_getWitnessTable();
  sub_26A84FE88();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AEFA8);
  sub_26A84F4F8();
  OUTLINED_FUNCTION_7_24();
  OUTLINED_FUNCTION_17_5();
  sub_26A4DBCC8(v0, &qword_2803AEFA8);
  OUTLINED_FUNCTION_58();
  return swift_getWitnessTable();
}

uint64_t sub_26A49CD08()
{
  v1 = *(v0 + 24);
  if (v1 != 255)
  {
    sub_26A5066FC(*(v0 + 16), v1);
  }

  return swift_deallocObject();
}

uint64_t sub_26A49CD78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26A84E158();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
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

uint64_t sub_26A49CE34(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_26A84E158();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2;
  }

  return result;
}

uint64_t sub_26A49CF18(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF078);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A49CF88(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF078);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26A49D018(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC3C0);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_26A49D06C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC3C0);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_26A49D118()
{
  type metadata accessor for OnUpdateResponseCommandModifier();
  sub_26A84F4F8();
  OUTLINED_FUNCTION_0_29();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_26A49D1B0()
{

  return swift_deallocObject();
}

uint64_t sub_26A49D1F0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2803B0FE0);
  type metadata accessor for OnUpdateResponseCommandModifier();
  OUTLINED_FUNCTION_0_29();
  swift_getWitnessTable();
  sub_26A84FE88();
  sub_26A5BA618();
  OUTLINED_FUNCTION_2_31();
  swift_getWitnessTable();
  sub_26A84F608();
  OUTLINED_FUNCTION_1_32();
  return swift_getWitnessTable();
}

uint64_t sub_26A49D2A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAD50);
  OUTLINED_FUNCTION_179();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA838);
  OUTLINED_FUNCTION_179();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v13 = *(a1 + *(a3 + 32));
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  v14 = v13 - 1;
  if (v14 < 0)
  {
    v14 = -1;
  }

  return (v14 + 1);
}

void sub_26A49D3B0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAD50);
  OUTLINED_FUNCTION_179();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA838);
    OUTLINED_FUNCTION_179();
    if (*(v13 + 84) != a3)
    {
      *(a1 + *(a4 + 32)) = a2;
      return;
    }

    v10 = v12;
    v11 = a1 + *(a4 + 20);
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_26A49D504()
{

  return swift_deallocObject();
}

void sub_26A49D53C()
{
  OUTLINED_FUNCTION_31_2();
  *v0 = sub_26A5BD950();
  *(v0 + 8) = v1;
}

void sub_26A49D568()
{
  OUTLINED_FUNCTION_31_2();
  *v0 = sub_26A5BD850();
  *(v0 + 8) = v1;
}

void sub_26A49D594()
{
  OUTLINED_FUNCTION_31_2();
  *v0 = sub_26A5BD83C();
  *(v0 + 8) = v1;
}

void sub_26A49D5C0()
{
  OUTLINED_FUNCTION_31_2();
  *v0 = sub_26A5BD718();
  *(v0 + 8) = v1;
}

uint64_t sub_26A49D64C()
{
  sub_26A49035C(*(v0 + 16), *(v0 + 24));
  sub_26A49035C(*(v0 + 32), *(v0 + 40));
  sub_26A49035C(*(v0 + 48), *(v0 + 56));
  if (*(v0 + 88))
  {
    sub_26A4EC448(*(v0 + 64), *(v0 + 72), *(v0 + 80));
  }

  if (*(v0 + 112))
  {

    sub_26A4EC448(*(v0 + 120), *(v0 + 128), *(v0 + 136));

    if (*(v0 + 176))
    {
      sub_26A4EC448(*(v0 + 152), *(v0 + 160), *(v0 + 168));
    }

    sub_26A4EC448(*(v0 + 184), *(v0 + 192), *(v0 + 200));
  }

  OUTLINED_FUNCTION_1_9();

  return swift_deallocObject();
}

uint64_t sub_26A49D758()
{

  return swift_deallocObject();
}

uint64_t sub_26A49D798(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 224);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A0);
    OUTLINED_FUNCTION_179();
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = a3[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91F0);
      OUTLINED_FUNCTION_179();
      if (*(v13 + 84) == a2)
      {
        v10 = v12;
        v11 = a3[6];
      }

      else
      {
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
        v11 = a3[8];
      }
    }

    return __swift_getEnumTagSinglePayload(a1 + v11, a2, v10);
  }
}

uint64_t sub_26A49D8C4(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 224) = (a2 - 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A0);
    OUTLINED_FUNCTION_179();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = a4[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91F0);
      OUTLINED_FUNCTION_179();
      if (*(v13 + 84) == a3)
      {
        v10 = v12;
        v11 = a4[6];
      }

      else
      {
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
        v11 = a4[8];
      }
    }

    return __swift_storeEnumTagSinglePayload(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_26A49DB5C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF5B0);
    v9 = a1 + *(a3 + 64);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_26A49DBF0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF5B0);
    v8 = v5 + *(a4 + 64);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_26A49DC7C()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_26A49DD14()
{
  sub_26A84F4F8();
  sub_26A5C896C();
  return swift_getWitnessTable();
}

uint64_t sub_26A49DD7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF610);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_26A49DE38(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF610);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_26A49DF0C()
{
  v1 = type metadata accessor for MaterialVibrancyListenerModifier();
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC9F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_26A8513F8();
    if (!__swift_getEnumTagSinglePayload(v0 + v2, 1, v3))
    {
      (*(*(v3 - 8) + 8))(v0 + v2, v3);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_26A49E058()
{
  sub_26A49035C(*(v0 + 16), *(v0 + 24));
  sub_26A49035C(*(v0 + 32), *(v0 + 40));
  sub_26A49035C(*(v0 + 48), *(v0 + 56));
  if (*(v0 + 88))
  {
    sub_26A4EC448(*(v0 + 64), *(v0 + 72), *(v0 + 80));
  }

  if (*(v0 + 112))
  {

    sub_26A4EC448(*(v0 + 120), *(v0 + 128), *(v0 + 136));

    if (*(v0 + 176))
    {
      sub_26A4EC448(*(v0 + 152), *(v0 + 160), *(v0 + 168));
    }

    sub_26A4EC448(*(v0 + 184), *(v0 + 192), *(v0 + 200));
  }

  return swift_deallocObject();
}

uint64_t sub_26A49E140()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_26A49E188()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_26A49E260()
{

  return swift_deallocObject();
}

uint64_t sub_26A49E2A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91F0);
  OUTLINED_FUNCTION_179();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
  OUTLINED_FUNCTION_179();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v13 = *(a1 + *(a3 + 28));
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_26A49E3A4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91F0);
  OUTLINED_FUNCTION_179();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
    OUTLINED_FUNCTION_179();
    if (*(v13 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = (a2 - 1);
      return;
    }

    v10 = v12;
    v11 = a1 + *(a4 + 24);
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_26A49E4CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26A84F218();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 32));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_26A49E578(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_26A84F218();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 32)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_26A49E624()
{
  sub_26A49035C(*(v0 + 16), *(v0 + 24));
  sub_26A49035C(*(v0 + 32), *(v0 + 40));
  sub_26A49035C(*(v0 + 48), *(v0 + 56));
  if (*(v0 + 88))
  {
    sub_26A4EC448(*(v0 + 64), *(v0 + 72), *(v0 + 80));
  }

  if (*(v0 + 112))
  {

    sub_26A4EC448(*(v0 + 120), *(v0 + 128), *(v0 + 136));

    if (*(v0 + 176))
    {
      sub_26A4EC448(*(v0 + 152), *(v0 + 160), *(v0 + 168));
    }

    sub_26A4EC448(*(v0 + 184), *(v0 + 192), *(v0 + 200));
  }

  return swift_deallocObject();
}

uint64_t sub_26A49E734(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_26A8511F8();
  OUTLINED_FUNCTION_179();
  if (*(v7 + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v9 = *(a1 + *(a3 + 24));
    if (v9 >= 0xFFFFFFFF)
    {
      LODWORD(v9) = -1;
    }

    return (v9 + 1);
  }
}

void sub_26A49E7DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_26A8511F8();
  OUTLINED_FUNCTION_179();
  if (*(v9 + 84) == a3)
  {

    __swift_storeEnumTagSinglePayload(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }
}

uint64_t sub_26A49E8B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for SmartDialogAnimationSettings(0);
  OUTLINED_FUNCTION_179();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  else
  {
    v11 = *(a1 + *(a3 + 32));
    v12 = (v11 >> 3) & 0xFC0 | (v11 >> 2);
    v13 = 0x2000 - ((v11 >> 15) | (2 * v12));
    if (v12)
    {
      return v13;
    }

    else
    {
      return 0;
    }
  }
}

void sub_26A49E970(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  type metadata accessor for SmartDialogAnimationSettings(0);
  OUTLINED_FUNCTION_179();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1 + *(a4 + 24);

    __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
  }

  else
  {
    v12 = ((-a2 >> 1) & 0xFFF) - (a2 << 12);
    *(a1 + *(a4 + 32)) = (8 * v12) & 0xFE00 | (4 * (v12 & 0x3F));
  }
}

uint64_t sub_26A49EA68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SmartDialogAnimationSettings(0);
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

    return (v10 + 1);
  }
}

uint64_t sub_26A49EB1C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SmartDialogAnimationSettings(0);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_26A49EBCC()
{
  v1 = type metadata accessor for SmartDialogLineAnimatingView();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)) + *(v1 + 20);
  sub_26A8511F8();
  OUTLINED_FUNCTION_46();
  (*(v3 + 8))(v2);
  type metadata accessor for SmartDialogAnimationSettings(0);

  return swift_deallocObject();
}

uint64_t sub_26A49ED00()
{
  OUTLINED_FUNCTION_31_9();
  sub_26A5DB86C(&unk_2803AFA80);
  v0 = OUTLINED_FUNCTION_22_12();

  return MEMORY[0x282130D40](v0, v1, v2, v3, v4);
}

uint64_t sub_26A49ED68()
{
  OUTLINED_FUNCTION_31_9();
  sub_26A5DB86C(&qword_2803AFAE0);
  v0 = OUTLINED_FUNCTION_22_12();

  return MEMORY[0x282130D40](v0, v1, v2, v3, v4);
}

uint64_t sub_26A49EE0C()
{
  OUTLINED_FUNCTION_6_8();
  v0 = EnvironmentValues.ignoreSeparatorsWhenSizing.getter();
  return OUTLINED_FUNCTION_5_7(v0);
}

uint64_t sub_26A49EE80()
{
  OUTLINED_FUNCTION_6_8();
  v0 = EnvironmentValues.preferFullScreen.getter();
  return OUTLINED_FUNCTION_5_7(v0);
}

uint64_t sub_26A49EEE4()
{
  OUTLINED_FUNCTION_6_8();
  v0 = EnvironmentValues.isSolariumEnabled.getter();
  return OUTLINED_FUNCTION_5_7(v0);
}

uint64_t sub_26A49EF40()
{
  OUTLINED_FUNCTION_6_8();
  result = EnvironmentValues.componentLevelLineLimit.getter();
  *v0 = result;
  *(v0 + 8) = v2 & 1;
  return result;
}

unint64_t sub_26A49EF74()
{
  OUTLINED_FUNCTION_6_8();
  result = EnvironmentValues.currentProcessString.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26A49EFF0()
{
  OUTLINED_FUNCTION_6_8();
  v0 = EnvironmentValues.isContactImage.getter();
  return OUTLINED_FUNCTION_5_7(v0);
}

uint64_t sub_26A49F03C()
{
  OUTLINED_FUNCTION_6_8();
  result = EnvironmentValues.playerIdentifier.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26A49F0A8(uint64_t a1)
{
  if (*(a1 + 16) <= 2u)
  {
    return *(a1 + 16);
  }

  else
  {
    return (*a1 + 3);
  }
}

uint64_t sub_26A49F0C0(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_26A49F108(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for SmartDialogAnimationModifier(0);
    v9 = a1 + *(a3 + 56);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_26A49F190(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for SmartDialogAnimationModifier(0);
    v8 = v5 + *(a4 + 56);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_26A49F210()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AC4A8);
  sub_26A84F4F8();
  sub_26A4DBCC8(&qword_28157FB78, &qword_2803AC4A8);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_3_35();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803ABF38);
  sub_26A84F4F8();
  sub_26A84F4F8();
  OUTLINED_FUNCTION_15_15();
  sub_26A84F4F8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AFB30);
  OUTLINED_FUNCTION_150();
  sub_26A84F4F8();
  OUTLINED_FUNCTION_150();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_15_15();
  sub_26A851528();
  OUTLINED_FUNCTION_1_27();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_150();
  sub_26A851238();
  sub_26A84F4F8();
  sub_26A84F4F8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2803B31B0);
  OUTLINED_FUNCTION_150();
  sub_26A84F4F8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AFB38);
  OUTLINED_FUNCTION_150();
  sub_26A84F4F8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AFB40);
  OUTLINED_FUNCTION_150();
  sub_26A84F4F8();
  type metadata accessor for SmartDialogAnimationModifier(255);
  OUTLINED_FUNCTION_150();
  sub_26A84F4F8();
  sub_26A84F4F8();
  sub_26A84F4F8();
  OUTLINED_FUNCTION_7_31();
  swift_getWitnessTable();
  sub_26A5B3C60();
  swift_getWitnessTable();
  sub_26A4DBCC8(&qword_28157FB50, &unk_2803B31B0);
  swift_getWitnessTable();
  sub_26A4DBCC8(&qword_2803AFB48, &qword_2803AFB38);
  swift_getWitnessTable();
  sub_26A4DBCC8(&qword_2803AFB50, &qword_2803AFB40);
  swift_getWitnessTable();
  sub_26A5DDA90();
  swift_getWitnessTable();
  sub_26A4D38BC();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

void *sub_26A49F668@<X0>(void *a1@<X8>)
{
  result = sub_26A5E05F0();
  *a1 = result;
  return result;
}

uint64_t sub_26A49F6FC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26A84F8A8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_26A49F72C()
{

  return swift_deallocObject();
}

uint64_t sub_26A49F774(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91F0);
  OUTLINED_FUNCTION_179();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
  OUTLINED_FUNCTION_179();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v12 = a3[6];
LABEL_7:
    v9 = a1 + v12;
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADE48);
  OUTLINED_FUNCTION_179();
  if (*(v14 + 84) == a2)
  {
    v8 = v13;
    v12 = a3[8];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[9] + 224);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

void sub_26A49F8C8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91F0);
  OUTLINED_FUNCTION_179();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
    OUTLINED_FUNCTION_179();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[6];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADE48);
      OUTLINED_FUNCTION_179();
      if (*(v16 + 84) != a3)
      {
        *(a1 + a4[9] + 224) = (a2 - 1);
        return;
      }

      v10 = v15;
      v14 = a4[8];
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_26A49FA20()
{
  sub_26A49035C(*(v0 + 16), *(v0 + 24));
  sub_26A49035C(*(v0 + 32), *(v0 + 40));
  sub_26A49035C(*(v0 + 48), *(v0 + 56));
  if (*(v0 + 88))
  {
    sub_26A4EC448(*(v0 + 64), *(v0 + 72), *(v0 + 80));
  }

  if (*(v0 + 112))
  {

    sub_26A4EC448(*(v0 + 120), *(v0 + 128), *(v0 + 136));

    if (*(v0 + 176))
    {
      sub_26A4EC448(*(v0 + 152), *(v0 + 160), *(v0 + 168));
    }

    sub_26A4EC448(*(v0 + 184), *(v0 + 192), *(v0 + 200));
  }

  return swift_deallocObject();
}

uint64_t sub_26A49FAFC()
{
  v0 = OUTLINED_FUNCTION_14_19();
  if (v0)
  {
    v1 = [v0 respondsToSelector_];
    if (v1)
    {
      OUTLINED_FUNCTION_10_25(v1, sel_performAceCommand_);
      swift_unknownObjectRelease();
      return 1;
    }

    sub_26A851E78();
    OUTLINED_FUNCTION_6_30();
    OUTLINED_FUNCTION_0_37();
    j__OUTLINED_FUNCTION_13_45(v9, v10, v11, v12, v13, 162, v14, 20, v15);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_26A851E78();
    OUTLINED_FUNCTION_6_30();
    OUTLINED_FUNCTION_0_37();
    j__OUTLINED_FUNCTION_9_61(v3, v4, v5, v6, v7, 158, v8, 20, v15);
  }

  return 0;
}

uint64_t sub_26A49FBCC()
{

  OUTLINED_FUNCTION_12_20();

  return swift_deallocObject();
}

uint64_t sub_26A49FC00()
{
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_12_20();

  return swift_deallocObject();
}

uint64_t sub_26A49FC34()
{

  return swift_deallocObject();
}

uint64_t sub_26A49FC6C()
{
  OUTLINED_FUNCTION_37_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AFE38);
  OUTLINED_FUNCTION_179();
  if (*(v4 + 84) == v0)
  {
    v5 = v3;
    v6 = v1;
  }

  else
  {
    if (v0 == 254)
    {
      v7 = *(v1 + v2[5] + 8);
      if (v7 > 1)
      {
        return (v7 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AFE40);
    OUTLINED_FUNCTION_179();
    if (*(v10 + 84) == v0)
    {
      v5 = v9;
      v11 = v2[7];
    }

    else
    {
      v5 = type metadata accessor for EnvironmentImageSettings(0);
      v11 = v2[13];
    }

    v6 = v1 + v11;
  }

  return __swift_getEnumTagSinglePayload(v6, v0, v5);
}

void sub_26A49FD80()
{
  OUTLINED_FUNCTION_59_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AFE38);
  OUTLINED_FUNCTION_179();
  if (*(v5 + 84) == v3)
  {
    v6 = v4;
    v7 = v1;
  }

  else
  {
    if (v3 == 254)
    {
      *(v1 + v2[5] + 8) = -v0;
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AFE40);
    OUTLINED_FUNCTION_179();
    if (*(v9 + 84) == v3)
    {
      v6 = v8;
      v10 = v2[7];
    }

    else
    {
      v6 = type metadata accessor for EnvironmentImageSettings(0);
      v10 = v2[13];
    }

    v7 = v1 + v10;
  }

  __swift_storeEnumTagSinglePayload(v7, v0, v0, v6);
}

uint64_t sub_26A49FE90()
{
  OUTLINED_FUNCTION_37_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AFE50);
  OUTLINED_FUNCTION_179();
  if (*(v4 + 84) == v0)
  {
    v5 = v3;
    v6 = v1;
  }

  else
  {
    if (v0 == 254)
    {
      v7 = *(v1 + *(v2 + 20));
      if (v7 >= 2)
      {
        return ((v7 + 2147483646) & 0x7FFFFFFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF0C0);
    v6 = v1 + *(v2 + 28);
  }

  return __swift_getEnumTagSinglePayload(v6, v0, v5);
}

void sub_26A49FF74()
{
  OUTLINED_FUNCTION_59_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AFE50);
  OUTLINED_FUNCTION_179();
  if (*(v5 + 84) == v3)
  {
    v6 = v4;
    v7 = v1;
  }

  else
  {
    if (v3 == 254)
    {
      *(v1 + *(v2 + 20)) = v0 + 1;
      return;
    }

    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF0C0);
    v7 = v1 + *(v2 + 28);
  }

  __swift_storeEnumTagSinglePayload(v7, v0, v0, v6);
}

uint64_t sub_26A4A0060@<X0>(void *a1@<X8>)
{
  result = sub_26A84F708();
  *a1 = v3;
  return result;
}

uint64_t sub_26A4A00D4()
{
  sub_26A84F4F8();
  sub_26A5EA388();
  return swift_getWitnessTable();
}

uint64_t sub_26A4A0138(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADBD0);
    v10 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

uint64_t sub_26A4A01D8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADBD0);
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_26A4A0270()
{

  if (*(v0 + 41))
  {
    if ((*(v0 + 40) & 1) == 0)
    {
      MEMORY[0x26D665710](v0 + 32);
    }
  }

  else
  {
  }

  MEMORY[0x26D665710](v0 + 48);
  sub_26A556DF4(*(v0 + 56), *(v0 + 64), *(v0 + 72));
  sub_26A556DF4(*(v0 + 80), *(v0 + 88), *(v0 + 96));
  sub_26A49035C(*(v0 + 104), *(v0 + 112));
  sub_26A49035C(*(v0 + 120), *(v0 + 128));

  return swift_deallocObject();
}

uint64_t sub_26A4A032C()
{

  return swift_deallocObject();
}

uint64_t sub_26A4A036C(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC908);
  OUTLINED_FUNCTION_179();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_11:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  if (a2 != 0x7FFFFFFF)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91F0);
    OUTLINED_FUNCTION_179();
    if (*(v13 + 84) == a2)
    {
      v8 = v12;
      v14 = a3[6];
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
      v14 = a3[7];
    }

    v9 = a1 + v14;
    goto LABEL_11;
  }

  v10 = *(a1 + a3[5] + 224);
  if (v10 >= 0xFFFFFFFF)
  {
    LODWORD(v10) = -1;
  }

  return (v10 + 1);
}

void sub_26A4A04A0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC908);
  OUTLINED_FUNCTION_179();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[5] + 224) = (a2 - 1);
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91F0);
    OUTLINED_FUNCTION_179();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[6];
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
      v14 = a4[7];
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_26A4A05E4()
{
  v2 = OUTLINED_FUNCTION_11_26();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_26A4A061C()
{
  v2 = OUTLINED_FUNCTION_11_26();

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v2);
}

uint64_t sub_26A4A069C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 48);
    }

    else
    {
      v9 = sub_26A8505D8();
      v10 = *(a3 + 52);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

void *sub_26A4A0774(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 48);
    }

    else
    {
      v9 = sub_26A8505D8();
      v10 = *(a4 + 52);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_26A4A0858()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B0150);
  sub_26A84EFE8();
  OUTLINED_FUNCTION_3_40(&qword_28157FE88);
  sub_26A84F1A8();
  OUTLINED_FUNCTION_2_45(&qword_28157FE80);
  OUTLINED_FUNCTION_1_44();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_3_18();
  return swift_getWitnessTable();
}

uint64_t sub_26A4A0920()
{
  OUTLINED_FUNCTION_6_8();
  v0 = EnvironmentValues.imageElementFrameWidth.getter();
  return OUTLINED_FUNCTION_20_13(v0, v1);
}

uint64_t sub_26A4A094C()
{
  OUTLINED_FUNCTION_6_8();
  v0 = EnvironmentValues.imageElementFrameHeight.getter();
  return OUTLINED_FUNCTION_20_13(v0, v1);
}

uint64_t sub_26A4A09A0()
{
  OUTLINED_FUNCTION_6_8();
  result = sub_26A731A14();
  *v0 = result;
  return result;
}

uint64_t sub_26A4A09EC()
{
  OUTLINED_FUNCTION_6_8();
  result = EnvironmentValues.isModernizedSnippet.getter();
  *v0 = result & 1;
  return result;
}

uint64_t sub_26A4A0A3C()
{
  type metadata accessor for ImageSizeableModifier(255);
  sub_26A84F4F8();
  sub_26A5F7548();
  OUTLINED_FUNCTION_15_10();
  return swift_getWitnessTable();
}

uint64_t sub_26A4A0AC4()
{
  OUTLINED_FUNCTION_37_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0170);
  OUTLINED_FUNCTION_179();
  if (*(v3 + 84) == v0)
  {
    v4 = OUTLINED_FUNCTION_42_6();
  }

  else
  {
    if (v0 == 254)
    {
      v6 = *(v1 + v2[5] + 8);
      if (v6 > 1)
      {
        return (v6 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AFE38);
    OUTLINED_FUNCTION_179();
    if (*(v9 + 84) == v0)
    {
      v5 = v8;
      v10 = v2[6];
    }

    else
    {
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AFE40);
      v10 = v2[11];
    }

    v4 = v1 + v10;
  }

  return __swift_getEnumTagSinglePayload(v4, v0, v5);
}

void sub_26A4A0BE0()
{
  OUTLINED_FUNCTION_59_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0170);
  OUTLINED_FUNCTION_179();
  if (*(v5 + 84) == v3)
  {
    v6 = v4;
    v7 = v1;
  }

  else
  {
    if (v3 == 254)
    {
      *(v1 + v2[5] + 8) = -v0;
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AFE38);
    OUTLINED_FUNCTION_179();
    if (*(v9 + 84) == v3)
    {
      v6 = v8;
      v10 = v2[6];
    }

    else
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AFE40);
      v10 = v2[11];
    }

    v7 = v1 + v10;
  }

  __swift_storeEnumTagSinglePayload(v7, v0, v0, v6);
}

uint64_t sub_26A4A0CFC()
{
  OUTLINED_FUNCTION_37_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF0C0);
  OUTLINED_FUNCTION_179();
  if (*(v3 + 84) == v0)
  {
    v4 = OUTLINED_FUNCTION_42_6();
LABEL_10:

    return __swift_getEnumTagSinglePayload(v4, v0, v5);
  }

  sub_26A84B1D8();
  OUTLINED_FUNCTION_179();
  if (*(v7 + 84) == v0)
  {
    v5 = v6;
    v8 = v2[5];
LABEL_9:
    v4 = v1 + v8;
    goto LABEL_10;
  }

  if (v0 != 253)
  {
    v5 = sub_26A84B2F8();
    v8 = v2[8];
    goto LABEL_9;
  }

  v9 = *(v1 + v2[6]);
  if (v9 >= 2)
  {
    v10 = ((v9 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v10 = -2;
  }

  if (v10 < 0)
  {
    v10 = -1;
  }

  return (v10 + 1);
}

void sub_26A4A0E1C()
{
  OUTLINED_FUNCTION_59_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF0C0);
  OUTLINED_FUNCTION_179();
  if (*(v5 + 84) == v3)
  {
    v6 = v4;
    v7 = v1;
  }

  else
  {
    sub_26A84B1D8();
    OUTLINED_FUNCTION_179();
    if (*(v9 + 84) == v3)
    {
      v6 = v8;
      v10 = v2[5];
    }

    else
    {
      if (v3 == 253)
      {
        *(v1 + v2[6]) = v0 + 2;
        return;
      }

      v6 = sub_26A84B2F8();
      v10 = v2[8];
    }

    v7 = v1 + v10;
  }

  __swift_storeEnumTagSinglePayload(v7, v0, v0, v6);
}

uint64_t sub_26A4A0F38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF610);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 > 1)
    {
      return (v8 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_26A4A0FF0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF610);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = -a2;
  }

  return result;
}

uint64_t sub_26A4A1128@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26A5DA778();
  *a1 = result;
  return result;
}

uint64_t sub_26A4A1170@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26A5DA7E0();
  *a1 = result;
  return result;
}

uint64_t sub_26A4A123C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF758);
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_26A4A12D0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF758);
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_26A4A136C()
{
  v1 = sub_26A84E4B8();
  OUTLINED_FUNCTION_15();
  v3 = v2;
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v6 = v4 + *(v5 + 64);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF758);
  OUTLINED_FUNCTION_2_5(v7);
  v9 = (v6 + *(v8 + 80)) & ~*(v8 + 80);
  (*(v3 + 8))(v0 + v4, v1);
  v10 = sub_26A84AEB8();
  if (!__swift_getEnumTagSinglePayload(v0 + v9, 1, v10))
  {
    (*(*(v10 - 8) + 8))(v0 + v9, v10);
  }

  return swift_deallocObject();
}

uint64_t sub_26A4A14F0()
{

  return swift_deallocObject();
}

uint64_t sub_26A4A158C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91F0);
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 28);
    }

    else
    {
      v9 = type metadata accessor for ActionHandler(0);
      v10 = *(a3 + 32);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

void *sub_26A4A1664(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91F0);
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 28);
    }

    else
    {
      v9 = type metadata accessor for ActionHandler(0);
      v10 = *(a4 + 32);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_26A4A173C(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9ED0);
  OUTLINED_FUNCTION_46();
  (*(v4 + 16))(a2, a1);
  return a2;
}

uint64_t sub_26A4A17A4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9ED0);
  OUTLINED_FUNCTION_46();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_26A4A1824()
{
  OUTLINED_FUNCTION_31_2();
  result = sub_26A602150();
  *v0 = result;
  return result;
}

__n128 sub_26A4A1854(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_26A4A1860()
{
  OUTLINED_FUNCTION_31_2();
  result = sub_26A602B44();
  *v0 = result & 1;
  return result;
}

uint64_t sub_26A4A18C4()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_26A4A18FC()
{
  sub_26A84A858();
  OUTLINED_FUNCTION_46();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_26A4A19D4()
{
  OUTLINED_FUNCTION_31_2();
  result = sub_26A602424();
  *v0 = result;
  return result;
}

uint64_t sub_26A4A1A04()
{
  OUTLINED_FUNCTION_31_2();
  result = sub_26A6027F8();
  *v0 = result;
  return result;
}

uint64_t sub_26A4A1A34()
{

  OUTLINED_FUNCTION_29_7();

  return swift_deallocObject();
}

uint64_t sub_26A4A1A90()
{

  return swift_deallocObject();
}

uint64_t sub_26A4A1B40(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91F0);
    v9 = a1 + *(a3 + 40);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_26A4A1BD4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91F0);
    v8 = v5 + *(a4 + 40);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_26A4A1C60()
{
  type metadata accessor for ComponentSeparatorConfigModifier();
  swift_getWitnessTable();
  sub_26A84FE88();
  sub_26A84FE78();
  sub_26A84F4F8();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_15_10();
  return swift_getWitnessTable();
}

uint64_t sub_26A4A1D68()
{
  v1 = type metadata accessor for CompositionToken(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  sub_26A49035C(*v2, *(v2 + 8));
  sub_26A49035C(*(v2 + 16), *(v2 + 24));
  sub_26A49035C(*(v2 + 32), *(v2 + 40));
  sub_26A49035C(*(v2 + 48), *(v2 + 56));
  sub_26A49035C(*(v2 + 64), *(v2 + 72));
  sub_26A49035C(*(v2 + 80), *(v2 + 88));
  sub_26A49035C(*(v2 + 96), *(v2 + 104));
  sub_26A49035C(*(v2 + 112), *(v2 + 120));
  sub_26A49035C(*(v2 + 128), *(v2 + 136));
  sub_26A49035C(*(v2 + 144), *(v2 + 152));

  if (*(v2 + 224))
  {
    __swift_destroy_boxed_opaque_existential_1(v2 + 200);
  }

  if (*(v2 + 360))
  {
    __swift_destroy_boxed_opaque_existential_1(v2 + 336);
  }

  v3 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB430);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26A84EE68();
    OUTLINED_FUNCTION_46();
    (*(v4 + 8))(v2 + v3);
  }

  else
  {
  }

  if (*(v2 + *(v1 + 28)))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_26A4A1F90(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACE98);
    v9 = a1 + *(a3 + 28);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_26A4A2024(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACE98);
    v8 = v5 + *(a4 + 28);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_26A4A20F0()
{

  return swift_deallocObject();
}

uint64_t sub_26A4A2130(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F8);
  OUTLINED_FUNCTION_179();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_11:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  if (a2 != 0x7FFFFFFF)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91F0);
    OUTLINED_FUNCTION_179();
    if (*(v13 + 84) == a2)
    {
      v8 = v12;
      v14 = a3[7];
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
      v14 = a3[8];
    }

    v9 = a1 + v14;
    goto LABEL_11;
  }

  v10 = *(a1 + a3[5] + 224);
  if (v10 >= 0xFFFFFFFF)
  {
    LODWORD(v10) = -1;
  }

  return (v10 + 1);
}

void sub_26A4A2264(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F8);
  OUTLINED_FUNCTION_179();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[5] + 224) = (a2 - 1);
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91F0);
    OUTLINED_FUNCTION_179();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[7];
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
      v14 = a4[8];
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t _s9SnippetUI0A13GlassMaterialC8material3for05SwiftB00D0VAC13ConfigurationV_tFZ_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24[1] = a2;
  v4 = sub_26A851378();
  OUTLINED_FUNCTION_15();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_6_0();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_5_37();
  v12 = sub_26A8513A8();
  OUTLINED_FUNCTION_15();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_6_0();
  v18 = v16 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = v24 - v20;
  sub_26A60F23C(a1, v18);
  (*(v6 + 104))(v10, **(&unk_279CA26C8 + *(a1 + 48)), v4);
  (*(v6 + 32))(v2, v10, v4);
  sub_26A851388();
  (*(v6 + 8))(v2, v4);
  v22 = *(v14 + 8);
  v22(v18, v12);
  sub_26A8513C8();
  return (v22)(v21, v12);
}

uint64_t _s9SnippetUI0A13GlassMaterialC8material3forSo6UIViewC5UIKitE0D0_pAC13ConfigurationV_tFZ_0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_26A84EAF8();
  OUTLINED_FUNCTION_15();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_6_0();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_5_37();
  v12 = sub_26A84EB18();
  OUTLINED_FUNCTION_15();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_6_0();
  v18 = v16 - v17;
  MEMORY[0x28223BE20](v19);
  sub_26A60F364(a1, v18);
  (*(v6 + 104))(v10, **(&unk_279CA26F0 + *(a1 + 48)), v4);
  (*(v6 + 32))(v2, v10, v4);
  sub_26A84EB08();
  (*(v6 + 8))(v2, v4);
  (*(v14 + 8))(v18, v12);
  v20 = sub_26A84EB28();
  v21 = MEMORY[0x277D74E20];
  a2[3] = v20;
  a2[4] = v21;
  __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_26A84EB38();
}

uint64_t sub_26A4A288C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a3[5];
LABEL_8:

    return __swift_getEnumTagSinglePayload(a1 + v8, a2, v7);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91F0);
    v8 = a3[15];
    goto LABEL_8;
  }

  v9 = *(a1 + a3[7] + 8);
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_26A4A2978(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a4[5];
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[7] + 8) = (a2 - 1);
      return result;
    }

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91F0);
    v10 = a4[15];
  }

  return __swift_storeEnumTagSinglePayload(a1 + v10, a2, a2, v9);
}

uint64_t sub_26A4A2AB8()
{

  return swift_deallocObject();
}

uint64_t sub_26A4A2B08@<X0>(uint64_t *a1@<X8>)
{
  result = SFLatLng.isoDescription.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26A4A2B34()
{

  return swift_deallocObject();
}

uint64_t sub_26A4A2B78()
{
  sub_26A49035C(*(v0 + 16), *(v0 + 24));
  sub_26A49035C(*(v0 + 32), *(v0 + 40));
  sub_26A49035C(*(v0 + 48), *(v0 + 56));
  if (*(v0 + 88))
  {
    sub_26A4EC448(*(v0 + 64), *(v0 + 72), *(v0 + 80));
  }

  if (*(v0 + 112))
  {

    sub_26A4EC448(*(v0 + 120), *(v0 + 128), *(v0 + 136));

    if (*(v0 + 176))
    {
      sub_26A4EC448(*(v0 + 152), *(v0 + 160), *(v0 + 168));
    }

    sub_26A4EC448(*(v0 + 184), *(v0 + 192), *(v0 + 200));
  }

  OUTLINED_FUNCTION_1_9();

  return swift_deallocObject();
}

uint64_t sub_26A4A2C6C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  OUTLINED_FUNCTION_80();

  return swift_deallocObject();
}

uint64_t sub_26A4A2CA0()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  }

  OUTLINED_FUNCTION_80();

  return swift_deallocObject();
}

uint64_t sub_26A4A2D28()
{
  OUTLINED_FUNCTION_196();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA960);
  OUTLINED_FUNCTION_46();
  (*(v1 + 8))(v0);
  return v0;
}

uint64_t sub_26A4A2D84()
{

  return swift_deallocObject();
}

uint64_t sub_26A4A2DD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26A84E158();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
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

uint64_t sub_26A4A2E90(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_26A84E158();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2;
  }

  return result;
}

uint64_t sub_26A4A2F40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 328);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_26A84AD78();
    v9 = a1 + *(a3 + 44);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_26A4A2FC8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 328) = (a2 - 1);
  }

  else
  {
    v7 = sub_26A84AD78();
    v8 = v5 + *(a4 + 44);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_26A4A3048()
{
  v1 = (type metadata accessor for ButtonStyleSelectorModifier(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  sub_26A49035C(*v2, *(v2 + 8));
  sub_26A4F5724(*(v2 + 16), *(v2 + 24), *(v2 + 25));
  sub_26A49035C(*(v2 + 32), *(v2 + 40));
  sub_26A49035C(*(v2 + 48), *(v2 + 56));
  sub_26A49035C(*(v2 + 64), *(v2 + 72));
  sub_26A49035C(*(v2 + 80), *(v2 + 88));
  sub_26A49035C(*(v2 + 96), *(v2 + 104));
  sub_26A49035C(*(v2 + 112), *(v2 + 120));
  sub_26A49035C(*(v2 + 128), *(v2 + 136));
  sub_26A49035C(*(v2 + 144), *(v2 + 152));
  sub_26A49035C(*(v2 + 160), *(v2 + 168));
  sub_26A49035C(*(v2 + 176), *(v2 + 184));
  sub_26A49035C(*(v2 + 192), *(v2 + 200));

  sub_26A49035C(*(v2 + 624), *(v2 + 632));
  sub_26A49035C(*(v2 + 640), *(v2 + 648));
  sub_26A49035C(*(v2 + 656), *(v2 + 664));
  sub_26A49035C(*(v2 + 672), *(v2 + 680));
  sub_26A49035C(*(v2 + 688), *(v2 + 696));
  sub_26A49035C(*(v2 + 704), *(v2 + 712));
  sub_26A49035C(*(v2 + 720), *(v2 + 728));
  sub_26A49035C(*(v2 + 736), *(v2 + 744));
  sub_26A49035C(*(v2 + 752), *(v2 + 760));
  sub_26A49035C(*(v2 + 768), *(v2 + 776));

  sub_26A49035C(*(v2 + 864), *(v2 + 872));
  sub_26A49035C(*(v2 + 880), *(v2 + 888));
  sub_26A49035C(*(v2 + 896), *(v2 + 904));
  sub_26A49035C(*(v2 + 912), *(v2 + 920));
  sub_26A49035C(*(v2 + 928), *(v2 + 936));
  sub_26A49035C(*(v2 + 944), *(v2 + 952));
  sub_26A49035C(*(v2 + 960), *(v2 + 968));
  sub_26A49035C(*(v2 + 976), *(v2 + 984));
  sub_26A49035C(*(v2 + 992), *(v2 + 1000));
  sub_26A49035C(*(v2 + 1008), *(v2 + 1016));

  v3 = v1[13];
  sub_26A84AD78();
  OUTLINED_FUNCTION_46();
  (*(v4 + 8))(v2 + v3);

  return swift_deallocObject();
}

uint64_t sub_26A4A3398()
{
  sub_26A84AB98();
  OUTLINED_FUNCTION_5_30();
  v3 = v2;
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v3 + 8))(v1 + v4, v0);

  return swift_deallocObject();
}

uint64_t sub_26A4A344C()
{
  sub_26A84AB98();
  OUTLINED_FUNCTION_5_30();
  v3 = v2;
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v1 + v4, v0);

  return swift_deallocObject();
}

uint64_t sub_26A4A3568()
{
  OUTLINED_FUNCTION_31_2();
  result = sub_26A61B310();
  *v0 = result;
  *(v0 + 8) = v2 & 1;
  return result;
}

uint64_t sub_26A4A359C()
{
  OUTLINED_FUNCTION_31_2();
  result = sub_26A61B6A8();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26A4A35C8()
{
  OUTLINED_FUNCTION_31_2();
  result = sub_26A61BBC8();
  *v0 = result;
  return result;
}

uint64_t sub_26A4A35F4()
{
  OUTLINED_FUNCTION_31_2();
  v0 = sub_26A61BEB8();
  return OUTLINED_FUNCTION_5_7(v0);
}

uint64_t sub_26A4A3690()
{
  OUTLINED_FUNCTION_31_2();
  v0 = sub_26A61C54C();
  return OUTLINED_FUNCTION_5_7(v0);
}

uint64_t sub_26A4A36DC()
{
  OUTLINED_FUNCTION_31_2();
  v0 = sub_26A61C83C();
  return OUTLINED_FUNCTION_5_7(v0);
}

uint64_t sub_26A4A3728()
{
  OUTLINED_FUNCTION_31_2();
  v0 = sub_26A61CB2C();
  return OUTLINED_FUNCTION_5_7(v0);
}

uint64_t sub_26A4A3774()
{
  OUTLINED_FUNCTION_31_2();
  v0 = sub_26A61CE1C();
  return OUTLINED_FUNCTION_5_7(v0);
}

uint64_t sub_26A4A3810()
{
  OUTLINED_FUNCTION_31_2();
  result = sub_26A61E03C();
  *v0 = result;
  return result;
}

uint64_t sub_26A4A3C10()
{
  OUTLINED_FUNCTION_12_24();
  result = sub_26A61D1AC();
  *v0 = result;
  return result;
}

uint64_t sub_26A4A3C5C()
{
  OUTLINED_FUNCTION_12_24();
  result = sub_26A61D3B0();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26A4A3CAC()
{
  OUTLINED_FUNCTION_12_24();
  result = sub_26A61D410();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26A4A3CFC()
{
  OUTLINED_FUNCTION_31_2();
  result = sub_26A61D544();
  *v0 = result;
  return result;
}

uint64_t sub_26A4A3D88()
{
  OUTLINED_FUNCTION_12_24();
  result = sub_26A61DC9C();
  *v0 = result;
  return result;
}

uint64_t sub_26A4A3DB0()
{
  OUTLINED_FUNCTION_12_24();
  result = sub_26A61DF3C();
  *v0 = result;
  return result;
}

uint64_t sub_26A4A3E38()
{
  OUTLINED_FUNCTION_12_24();
  result = sub_26A61E5F8();
  *v0 = result;
  return result;
}

uint64_t sub_26A4A3E84()
{
  OUTLINED_FUNCTION_31_2();
  result = sub_26A61E500();
  *v0 = result;
  return result;
}

uint64_t sub_26A4A3EB0()
{
  MEMORY[0x26D665710](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_26A4A3EE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26A84ACC8();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_26A4A3F94(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_26A84ACC8();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_26A4A4064(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26A84E158();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_10:

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  if (a2 != 2147483646)
  {
    v7 = type metadata accessor for ActionHandler(0);
    v8 = a1 + *(a3 + 24);
    goto LABEL_10;
  }

  v9 = *(a1 + *(a3 + 20));
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  v10 = v9 - 1;
  if (v10 < 0)
  {
    v10 = -1;
  }

  return (v10 + 1);
}

uint64_t sub_26A4A4140(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_26A84E158();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 2147483646)
    {
      *(a1 + *(a4 + 20)) = a2;
      return result;
    }

    v9 = type metadata accessor for ActionHandler(0);
    v10 = a1 + *(a4 + 24);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_26A4A4210@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26A84F928();
  *a1 = result & 1;
  return result;
}

uint64_t sub_26A4A4278@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26A6C9194();
  *a1 = result;
  return result;
}

uint64_t sub_26A4A42D4()
{
  v1 = sub_26A84AB98();
  OUTLINED_FUNCTION_15();
  v3 = v2;
  v4 = *(v2 + 80);
  v6 = *(v5 + 64);
  v7 = (v4 + 16) & ~v4;
  v8 = (v6 + v4 + v7) & ~v4;
  v9 = (v6 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = sub_26A850F68();
  OUTLINED_FUNCTION_15();
  v11 = v10;
  v12 = *(v10 + 80);
  v13 = *(v3 + 8);
  v13(v0 + v7, v1);
  v13(v0 + v8, v1);
  v14 = *(v0 + v9 + 8);
  if (v14 != 255)
  {
    sub_26A5066FC(*(v0 + v9), v14);
  }

  (*(v11 + 8))(v0 + ((v12 + v9 + 9) & ~v12), v16);

  return swift_deallocObject();
}

uint64_t sub_26A4A4458()
{
  v1 = *(v0 + 32);
  if (v1 != 255)
  {
    sub_26A5066FC(*(v0 + 24), v1);
  }

  return swift_deallocObject();
}

uint64_t sub_26A4A44D4()
{

  return swift_deallocObject();
}

uint64_t sub_26A4A450C()
{

  return swift_deallocObject();
}

uint64_t sub_26A4A4594()
{

  return swift_deallocObject();
}

uint64_t sub_26A4A45D4(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A0);
  OUTLINED_FUNCTION_179();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91F0);
  OUTLINED_FUNCTION_179();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v12 = a3[5];
LABEL_7:
    v9 = a1 + v12;
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
  OUTLINED_FUNCTION_179();
  if (*(v14 + 84) == a2)
  {
    v8 = v13;
    v12 = a3[7];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[8]);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

void sub_26A4A4724(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A0);
  OUTLINED_FUNCTION_179();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91F0);
    OUTLINED_FUNCTION_179();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
      OUTLINED_FUNCTION_179();
      if (*(v16 + 84) != a3)
      {
        *(a1 + a4[8]) = (a2 - 1);
        return;
      }

      v10 = v15;
      v14 = a4[7];
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_26A4A4A74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_26A6329EC();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t sub_26A4A4AE0()
{
  OUTLINED_FUNCTION_6_8();
  v0 = sub_26A84F948();
  return OUTLINED_FUNCTION_5_7(v0);
}

uint64_t sub_26A4A4B08()
{
  OUTLINED_FUNCTION_6_8();
  v0 = sub_26A84F928();
  return OUTLINED_FUNCTION_5_7(v0);
}

uint64_t sub_26A4A4B84()
{
  OUTLINED_FUNCTION_6_8();
  v0 = EnvironmentValues.isVibrant.getter();
  return OUTLINED_FUNCTION_5_7(v0);
}

uint64_t sub_26A4A4BD8()
{
  v1 = type metadata accessor for ButtonItemButtonStyle(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  sub_26A49035C(*(v2 + 40), *(v2 + 48));
  sub_26A49035C(*(v2 + 56), *(v2 + 64));
  v3 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB430);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26A84EE68();
    OUTLINED_FUNCTION_46();
    (*(v4 + 8))(v2 + v3);
  }

  else
  {
  }

  OUTLINED_FUNCTION_17_16(v1[11]);
  OUTLINED_FUNCTION_17_16(v1[12]);
  OUTLINED_FUNCTION_17_16(v1[13]);
  v5 = v2 + v1[14];
  sub_26A49035C(*v5, *(v5 + 8));
  sub_26A49035C(*(v5 + 16), *(v5 + 24));
  sub_26A49035C(*(v5 + 32), *(v5 + 40));
  sub_26A49035C(*(v5 + 48), *(v5 + 56));
  sub_26A49035C(*(v5 + 64), *(v5 + 72));
  sub_26A49035C(*(v5 + 80), *(v5 + 88));
  sub_26A49035C(*(v5 + 96), *(v5 + 104));
  sub_26A49035C(*(v5 + 112), *(v5 + 120));
  sub_26A49035C(*(v5 + 128), *(v5 + 136));
  sub_26A49035C(*(v5 + 144), *(v5 + 152));

  v6 = v1[15];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26A84F3A8();
    OUTLINED_FUNCTION_46();
    (*(v7 + 8))(v2 + v6);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_26A4A4E78(uint64_t a1, int a2, int *a3)
{
  if (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC3C0) - 8) + 84) == a2)
  {
    v6 = a3[10];
  }

  else
  {
    if (a2 == 0x7FFFFFFF)
    {
      return OUTLINED_FUNCTION_49_0(*(a1 + a3[14] + 280));
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
    v6 = a3[15];
  }

  v8 = OUTLINED_FUNCTION_86_0(v6);

  return __swift_getEnumTagSinglePayload(v8, v9, v10);
}

uint64_t sub_26A4A4F54(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC3C0);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = a4[10];
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[14] + 280) = (a2 - 1);
      return result;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
    v9 = a4[15];
  }

  v10 = OUTLINED_FUNCTION_86_0(v9);

  return __swift_storeEnumTagSinglePayload(v10, v11, a2, v12);
}

uint64_t sub_26A4A5060()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B13F8);
  sub_26A637D30();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_26A4A50E8(unint64_t *a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_49_0(*a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B15C0);
  v5 = OUTLINED_FUNCTION_86_0(*(a3 + 32));

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

void *sub_26A4A516C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B15C0);
    v6 = OUTLINED_FUNCTION_86_0(*(a4 + 32));

    return __swift_storeEnumTagSinglePayload(v6, v7, a2, v8);
  }

  return result;
}

uint64_t sub_26A4A51F8()
{
  sub_26A49035C(*(v0 + 16), *(v0 + 24));
  sub_26A49035C(*(v0 + 32), *(v0 + 40));
  sub_26A49035C(*(v0 + 48), *(v0 + 56));
  if (*(v0 + 88))
  {
    sub_26A4EC448(*(v0 + 64), *(v0 + 72), *(v0 + 80));
  }

  if (*(v0 + 112))
  {

    sub_26A4EC448(*(v0 + 120), *(v0 + 128), *(v0 + 136));

    if (*(v0 + 176))
    {
      sub_26A4EC448(*(v0 + 152), *(v0 + 160), *(v0 + 168));
    }

    sub_26A4EC448(*(v0 + 184), *(v0 + 192), *(v0 + 200));
  }

  OUTLINED_FUNCTION_1_9();

  return swift_deallocObject();
}

uint64_t sub_26A4A52CC()
{
  OUTLINED_FUNCTION_145();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA950);
  OUTLINED_FUNCTION_46();
  (*(v2 + 32))(v0, v1);
  return v0;
}

uint64_t sub_26A4A532C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26A84D318();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    if (a2 == 254)
    {
      v9 = *(a1 + *(a3 + 20) + 16);
      if (v9 > 1)
      {
        return (v9 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
    v8 = a1 + *(a3 + 28);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_26A4A5404(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_26A84D318();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 254)
    {
      *(a1 + *(a4 + 20) + 16) = -a2;
      return result;
    }

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
    v10 = a1 + *(a4 + 28);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_26A4A55B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26A84ACC8();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 24));
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

uint64_t sub_26A4A566C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_26A84ACC8();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 1;
  }

  return result;
}

uint64_t sub_26A4A5774()
{
  v2 = OUTLINED_FUNCTION_2_52();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_26A4A57AC()
{
  v2 = OUTLINED_FUNCTION_2_52();

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v2);
}

uint64_t sub_26A4A5824(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 32);
  v6 = sub_26A84B1D8();

  return __swift_getEnumTagSinglePayload(a1 + v5, a2, v6);
}

uint64_t sub_26A4A5878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 32);
  v7 = sub_26A84B1D8();

  return __swift_storeEnumTagSinglePayload(a1 + v6, a2, a2, v7);
}

uint64_t sub_26A4A58D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC3C0);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_26A4A5924(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC3C0);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_26A4A5980(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 40) + 16);
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

uint64_t sub_26A4A5A4C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 40) + 16) = a2;
  }

  return result;
}

uint64_t sub_26A4A5B08(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B18E0);
  OUTLINED_FUNCTION_46();
  v3 = OUTLINED_FUNCTION_211();
  v4(v3);
  return a2;
}

uint64_t sub_26A4A5B6C()
{
  OUTLINED_FUNCTION_196();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B18E0);
  OUTLINED_FUNCTION_46();
  (*(v1 + 8))(v0);
  return v0;
}

uint64_t sub_26A4A5BCC(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B18F8);
  OUTLINED_FUNCTION_46();
  v3 = OUTLINED_FUNCTION_211();
  v4(v3);
  return a2;
}

uint64_t sub_26A4A5C68()
{

  OUTLINED_FUNCTION_29_7();

  return swift_deallocObject();
}

uint64_t sub_26A4A5CB8()
{

  return swift_deallocObject();
}

uint64_t sub_26A4A5CF4()
{
  sub_26A49035C(*(v0 + 16), *(v0 + 24));
  sub_26A49035C(*(v0 + 32), *(v0 + 40));
  sub_26A49035C(*(v0 + 48), *(v0 + 56));
  if (*(v0 + 88))
  {
    sub_26A4EC448(*(v0 + 64), *(v0 + 72), *(v0 + 80));
  }

  if (*(v0 + 112))
  {

    sub_26A4EC448(*(v0 + 120), *(v0 + 128), *(v0 + 136));

    if (*(v0 + 176))
    {
      sub_26A4EC448(*(v0 + 152), *(v0 + 160), *(v0 + 168));
    }

    sub_26A4EC448(*(v0 + 184), *(v0 + 192), *(v0 + 200));
  }

  return swift_deallocObject();
}

uint64_t sub_26A4A5DF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91F0);
  OUTLINED_FUNCTION_179();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
  OUTLINED_FUNCTION_179();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v13 = *(a1 + *(a3 + 28));
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_26A4A5EF8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91F0);
  OUTLINED_FUNCTION_179();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
    OUTLINED_FUNCTION_179();
    if (*(v13 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = (a2 - 1);
      return;
    }

    v10 = v12;
    v11 = a1 + *(a4 + 24);
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_26A4A5FFC()
{
  sub_26A49035C(*(v0 + 32), *(v0 + 40));

  return swift_deallocObject();
}

uint64_t sub_26A4A6050()
{
  sub_26A55841C();
  type metadata accessor for DisambiguationStandardView();
  OUTLINED_FUNCTION_0_55();
  return swift_getWitnessTable();
}

uint64_t sub_26A4A624C()
{

  return swift_deallocObject();
}

uint64_t sub_26A4A628C(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91F0);
  OUTLINED_FUNCTION_179();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
  OUTLINED_FUNCTION_179();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v12 = a3[5];
LABEL_7:
    v9 = a1 + v12;
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADE48);
  OUTLINED_FUNCTION_179();
  if (*(v14 + 84) == a2)
  {
    v8 = v13;
    v12 = a3[7];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[10]);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

void sub_26A4A63DC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91F0);
  OUTLINED_FUNCTION_179();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
    OUTLINED_FUNCTION_179();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADE48);
      OUTLINED_FUNCTION_179();
      if (*(v16 + 84) != a3)
      {
        *(a1 + a4[10]) = (a2 - 1);
        return;
      }

      v10 = v15;
      v14 = a4[7];
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_26A4A655C()
{
  OUTLINED_FUNCTION_6_8();
  result = EnvironmentValues.isInAmbient.getter();
  *v0 = result & 1;
  return result;
}

uint64_t sub_26A4A6600()
{
  sub_26A84F4F8();
  sub_26A4D38BC();
  return swift_getWitnessTable();
}

uint64_t sub_26A4A6664(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1C28);
  OUTLINED_FUNCTION_46();
  (*(v4 + 16))(a2, a1);
  return a2;
}

uint64_t sub_26A4A66CC(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1C28);
  OUTLINED_FUNCTION_46();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_26A4A6750()
{
  sub_26A84EAA8();
  OUTLINED_FUNCTION_15();

  v1 = OUTLINED_FUNCTION_56_2();
  v2(v1);
  OUTLINED_FUNCTION_54_4();

  return swift_deallocObject();
}

uint64_t sub_26A4A67FC()
{
  sub_26A513D40(*(v0 + 32), *(v0 + 40));

  return swift_deallocObject();
}

uint64_t sub_26A4A685C()
{
  sub_26A513D40(*(v0 + 16), *(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_26A4A689C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_26A4A68E0()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_26A4A6918()
{

  return swift_deallocObject();
}

uint64_t sub_26A4A6958()
{
  sub_26A84E408();
  OUTLINED_FUNCTION_46();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_26A4A69F0()
{
  sub_26A513D40(*(v0 + 16), *(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_26A4A6A48()
{

  return swift_deallocObject();
}

uint64_t sub_26A4A6A80()
{
  sub_26A84EAA8();
  OUTLINED_FUNCTION_15();
  sub_26A513D40(*(v0 + 16), *(v0 + 24));

  v1 = OUTLINED_FUNCTION_56_2();
  v2(v1);
  OUTLINED_FUNCTION_54_4();

  return swift_deallocObject();
}

uint64_t sub_26A4A6B58()
{

  return swift_deallocObject();
}

uint64_t sub_26A4A6B98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 224);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91F0);
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 24);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
      v10 = *(a3 + 28);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

void sub_26A4A6C7C()
{
  OUTLINED_FUNCTION_12_30();
  if (v2 == 0x7FFFFFFF)
  {
    *(v1 + 224) = (v0 - 1);
  }

  else
  {
    v4 = v3;
    v5 = v2;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91F0);
    if (*(*(v6 - 8) + 84) == v5)
    {
      v7 = v6;
      v8 = *(v4 + 24);
    }

    else
    {
      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
      v8 = *(v4 + 28);
    }

    __swift_storeEnumTagSinglePayload(v1 + v8, v0, v0, v7);
  }
}

uint64_t sub_26A4A6D80()
{
  OUTLINED_FUNCTION_12_30();
  v3 = *(v2 + 20);
  v4 = sub_26A84B1D8();

  return __swift_getEnumTagSinglePayload(v1 + v3, v0, v4);
}

uint64_t sub_26A4A6DCC()
{
  OUTLINED_FUNCTION_12_30();
  v3 = *(v2 + 20);
  v4 = sub_26A84B1D8();

  return __swift_storeEnumTagSinglePayload(v1 + v3, v0, v0, v4);
}

uint64_t sub_26A4A6E6C()
{
  v2 = OUTLINED_FUNCTION_2_58();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_26A4A6EA4()
{
  v2 = OUTLINED_FUNCTION_2_58();

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v2);
}

uint64_t sub_26A4A6F70()
{

  return swift_deallocObject();
}

uint64_t sub_26A4A6FB8()
{
  v2 = OUTLINED_FUNCTION_0_59();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_26A4A6FF0()
{
  v2 = OUTLINED_FUNCTION_0_59();

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v2);
}

uint64_t sub_26A4A704C()
{

  return swift_deallocObject();
}

uint64_t sub_26A4A708C(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F8);
  OUTLINED_FUNCTION_179();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_11:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  if (a2 != 0x7FFFFFFF)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91F0);
    OUTLINED_FUNCTION_179();
    if (*(v13 + 84) == a2)
    {
      v8 = v12;
      v14 = a3[6];
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
      v14 = a3[7];
    }

    v9 = a1 + v14;
    goto LABEL_11;
  }

  v10 = *(a1 + a3[5] + 224);
  if (v10 >= 0xFFFFFFFF)
  {
    LODWORD(v10) = -1;
  }

  return (v10 + 1);
}

void sub_26A4A71C0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F8);
  OUTLINED_FUNCTION_179();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[5] + 224) = (a2 - 1);
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91F0);
    OUTLINED_FUNCTION_179();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[6];
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
      v14 = a4[7];
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_26A4A72F4()
{
  v1 = type metadata accessor for FactItemDetailedNumberView();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  sub_26A49035C(*v2, *(v2 + 8));
  sub_26A49035C(*(v2 + 16), *(v2 + 24));
  sub_26A49035C(*(v2 + 32), *(v2 + 40));
  sub_26A49035C(*(v2 + 48), *(v2 + 56));
  sub_26A49035C(*(v2 + 64), *(v2 + 72));
  sub_26A49035C(*(v2 + 80), *(v2 + 88));
  sub_26A49035C(*(v2 + 96), *(v2 + 104));
  sub_26A49035C(*(v2 + 112), *(v2 + 120));
  sub_26A49035C(*(v2 + 128), *(v2 + 136));
  sub_26A49035C(*(v2 + 144), *(v2 + 152));
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F8);
  v4 = v2 + *(v3 + 28);
  v5 = type metadata accessor for FactItemConstants();
  v6 = *(v5 + 52);
  v7 = sub_26A84B1D8();
  OUTLINED_FUNCTION_46();
  v9 = *(v8 + 8);
  v9(v4 + v6, v7);
  v9(v4 + *(v5 + 56), v7);
  v10 = v2 + *(v3 + 32);

  v11 = v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F0) + 36);
  v9(v11 + *(v5 + 52), v7);
  v9(v11 + *(v5 + 56), v7);
  v12 = v2 + v1[5];
  sub_26A49035C(*v12, *(v12 + 8));
  sub_26A49035C(*(v12 + 16), *(v12 + 24));
  sub_26A49035C(*(v12 + 32), *(v12 + 40));
  sub_26A49035C(*(v12 + 48), *(v12 + 56));
  sub_26A49035C(*(v12 + 64), *(v12 + 72));
  sub_26A49035C(*(v12 + 80), *(v12 + 88));
  sub_26A49035C(*(v12 + 96), *(v12 + 104));
  sub_26A49035C(*(v12 + 112), *(v12 + 120));
  sub_26A49035C(*(v12 + 128), *(v12 + 136));
  sub_26A49035C(*(v12 + 144), *(v12 + 152));

  v13 = (v2 + v1[6]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
LABEL_6:

    goto LABEL_7;
  }

  v14 = type metadata accessor for ActionType();
  if (__swift_getEnumTagSinglePayload(v13, 1, v14))
  {
    goto LABEL_7;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
  }

  else
  {
    if (EnumCaseMultiPayload != 1)
    {
      if (EnumCaseMultiPayload)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    sub_26A84BAB8();
    OUTLINED_FUNCTION_46();
    (*(v19 + 8))(v13);
  }

LABEL_7:
  v16 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26A84F3A8();
    OUTLINED_FUNCTION_46();
    (*(v17 + 8))(v2 + v16);
  }

  else
  {
  }

  sub_26A49035C(*(v2 + v1[8]), *(v2 + v1[8] + 8));
  sub_26A49035C(*(v2 + v1[9]), *(v2 + v1[9] + 8));

  return swift_deallocObject();
}

uint64_t sub_26A4A7840()
{
  OUTLINED_FUNCTION_145();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2298);
  OUTLINED_FUNCTION_46();
  v1 = OUTLINED_FUNCTION_211();
  v2(v1);
  return v0;
}

uint64_t sub_26A4A789C()
{
  OUTLINED_FUNCTION_145();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B22B0);
  OUTLINED_FUNCTION_46();
  v1 = OUTLINED_FUNCTION_211();
  v2(v1);
  return v0;
}

uint64_t sub_26A4A78F8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B22B0);
  OUTLINED_FUNCTION_46();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_26A4A7958()
{

  return swift_deallocObject();
}

uint64_t sub_26A4A79AC()
{

  return swift_deallocObject();
}

uint64_t sub_26A4A79E4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B2348);
  sub_26A666324();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_26A4A7AA0()
{

  return swift_deallocObject();
}

uint64_t sub_26A4A7AF0()
{
  v0 = OUTLINED_FUNCTION_211();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v0);
  sub_26A84FE38();
  sub_26A4DBCC8(&qword_2803B23E8, &qword_2803B23A0);
  sub_26A66543C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_26A4A7BA4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26A666868();
  *a1 = result & 1;
  return result;
}

uint64_t sub_26A4A7C0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA838);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAD50);
    v8 = a1 + *(a3 + 40);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_26A4A7CC0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA838);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAD50);
    v10 = a1 + *(a4 + 40);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_26A4A7DAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26A84BBF8();
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

uint64_t sub_26A4A7E68(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_26A84BBF8();
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

uint64_t sub_26A4A7F10@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26A66915C();
  *a1 = result;
  return result;
}

uint64_t sub_26A4A7F88()
{

  return swift_deallocObject();
}

uint64_t sub_26A4A7FC8()
{
  OUTLINED_FUNCTION_37_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC908);
  OUTLINED_FUNCTION_179();
  if (*(v4 + 84) == v0)
  {
    v5 = v3;
    v6 = v1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
    OUTLINED_FUNCTION_179();
    if (*(v8 + 84) == v0)
    {
      v5 = v7;
      v9 = v2[6];
    }

    else
    {
      if (v0 == 0x7FFFFFFF)
      {
        return OUTLINED_FUNCTION_28_7(v2[8]);
      }

      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91F0);
      v9 = v2[17];
    }

    v6 = v1 + v9;
  }

  return __swift_getEnumTagSinglePayload(v6, v0, v5);
}

void sub_26A4A80DC()
{
  OUTLINED_FUNCTION_59_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC908);
  OUTLINED_FUNCTION_179();
  if (*(v5 + 84) == v3)
  {
    v6 = v4;
    v7 = v1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
    OUTLINED_FUNCTION_179();
    if (*(v9 + 84) == v3)
    {
      v6 = v8;
      v10 = v2[6];
    }

    else
    {
      if (v3 == 0x7FFFFFFF)
      {
        *(v1 + v2[8]) = (v0 - 1);
        return;
      }

      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91F0);
      v10 = v2[17];
    }

    v7 = v1 + v10;
  }

  __swift_storeEnumTagSinglePayload(v7, v0, v0, v6);
}

uint64_t sub_26A4A81FC()
{
  OUTLINED_FUNCTION_37_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC908);
  OUTLINED_FUNCTION_179();
  if (*(v4 + 84) == v0)
  {
    v5 = v3;
    v6 = v1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
    OUTLINED_FUNCTION_179();
    if (*(v8 + 84) != v0)
    {
      return OUTLINED_FUNCTION_28_7(*(v2 + 28));
    }

    v5 = v7;
    v6 = v1 + *(v2 + 24);
  }

  return __swift_getEnumTagSinglePayload(v6, v0, v5);
}

void sub_26A4A82E4()
{
  OUTLINED_FUNCTION_59_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC908);
  OUTLINED_FUNCTION_179();
  if (*(v5 + 84) == v3)
  {
    v6 = v4;
    v7 = v1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
    OUTLINED_FUNCTION_179();
    if (*(v9 + 84) != v3)
    {
      *(v1 + *(v2 + 28)) = (v0 - 1);
      return;
    }

    v6 = v8;
    v7 = v1 + *(v2 + 24);
  }

  __swift_storeEnumTagSinglePayload(v7, v0, v0, v6);
}

uint64_t sub_26A4A8404()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B2678);
  sub_26A674B80();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_26A4A8468(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26A84BBF8();
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

uint64_t sub_26A4A8524(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_2_11();
  result = sub_26A84BBF8();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = OUTLINED_FUNCTION_1_60();

    return __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  }

  else
  {
    *(v5 + *(a4 + 20)) = v4 + 1;
  }

  return result;
}

uint64_t sub_26A4A85B8()
{
  v2 = OUTLINED_FUNCTION_2_11();
  v3 = type metadata accessor for SeparatorConfig(v2);

  return __swift_getEnumTagSinglePayload(v1, v0, v3);
}

uint64_t sub_26A4A85F8()
{
  v0 = OUTLINED_FUNCTION_2_11();
  type metadata accessor for SeparatorConfig(v0);
  v1 = OUTLINED_FUNCTION_1_60();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_26A4A8668(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
  OUTLINED_FUNCTION_179();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a3[5];
LABEL_5:

    return __swift_getEnumTagSinglePayload(a1 + v9, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91F0);
  OUTLINED_FUNCTION_179();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a3[6];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[7]);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_26A4A876C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
  OUTLINED_FUNCTION_179();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a4[5];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91F0);
    OUTLINED_FUNCTION_179();
    if (*(v13 + 84) != a3)
    {
      *(a1 + a4[7]) = (a2 - 1);
      return;
    }

    v10 = v12;
    v11 = a4[6];
  }

  __swift_storeEnumTagSinglePayload(a1 + v11, a2, a2, v10);
}

uint64_t sub_26A4A88A8()
{

  return swift_deallocObject();
}

uint64_t sub_26A4A88F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91F0);
  OUTLINED_FUNCTION_179();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
  OUTLINED_FUNCTION_179();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v13 = *(a1 + *(a3 + 28));
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_26A4A89FC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91F0);
  OUTLINED_FUNCTION_179();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
    OUTLINED_FUNCTION_179();
    if (*(v13 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = (a2 - 1);
      return;
    }

    v10 = v12;
    v11 = a1 + *(a4 + 24);
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_26A4A8B00(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2878);
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_26A4A8B94(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2878);
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_26A4A8CDC@<X0>(uint64_t a1@<X8>)
{
  result = sub_26A5D89AC();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  return result;
}

uint64_t sub_26A4A8D10()
{
  v1 = (type metadata accessor for ResponseView() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  sub_26A84E408();
  OUTLINED_FUNCTION_46();
  (*(v3 + 8))(v2);

  return swift_deallocObject();
}

uint64_t sub_26A4A8E14()
{

  return swift_deallocObject();
}

uint64_t sub_26A4A8E4C()
{
  sub_26A513D40(*(v0 + 16), *(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_26A4A8EA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26A84E408();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 24) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_26A4A8F54(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_26A84E408();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_26A4A9000()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B2918);
  sub_26A67F6B8();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_26A4A9078()
{

  return swift_deallocObject();
}

uint64_t sub_26A4A90B8()
{
  type metadata accessor for ColumnMeasuringView.MeasuringLayout();
  OUTLINED_FUNCTION_2_63();
  swift_getWitnessTable();
  sub_26A84EF38();
  OUTLINED_FUNCTION_1_62();
  swift_getWitnessTable();
  sub_26A84F1A8();
  OUTLINED_FUNCTION_3_57();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_3_18();
  return swift_getWitnessTable();
}

uint64_t sub_26A4A9164()
{
  sub_26A49035C(*(v0 + 16), *(v0 + 24));
  sub_26A49035C(*(v0 + 32), *(v0 + 40));
  sub_26A49035C(*(v0 + 48), *(v0 + 56));
  if (*(v0 + 88))
  {
    sub_26A4EC448(*(v0 + 64), *(v0 + 72), *(v0 + 80));
  }

  if (*(v0 + 112))
  {

    sub_26A4EC448(*(v0 + 120), *(v0 + 128), *(v0 + 136));

    if (*(v0 + 176))
    {
      sub_26A4EC448(*(v0 + 152), *(v0 + 160), *(v0 + 168));
    }

    sub_26A4EC448(*(v0 + 184), *(v0 + 192), *(v0 + 200));
  }

  OUTLINED_FUNCTION_1_9();

  return swift_deallocObject();
}

uint64_t sub_26A4A9250(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for EnvironmentImageSettings(0);
    v9 = a1 + *(a3 + 40);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_26A4A92D8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for EnvironmentImageSettings(0);
    v8 = v5 + *(a4 + 40);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

__n128 sub_26A4A93D0(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_26A4A9410()
{
  sub_26A84B2B8();
  OUTLINED_FUNCTION_46();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 20) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_26A4A9598(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AFE50);
    v9 = a1 + *(a3 + 36);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_26A4A962C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AFE50);
    v8 = v5 + *(a4 + 36);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_26A4A9710()
{
  OUTLINED_FUNCTION_6_8();
  result = sub_26A5D7BB8();
  *v0 = result;
  return result;
}

uint64_t sub_26A4A975C()
{

  return swift_deallocObject();
}

uint64_t sub_26A4A97A4(unint64_t *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_49_0(*a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A0);
  OUTLINED_FUNCTION_179();
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a3[9];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
    OUTLINED_FUNCTION_179();
    if (*(v12 + 84) == a2)
    {
      v9 = v11;
      v10 = a3[15];
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91F0);
      v10 = a3[16];
    }
  }

  return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
}

void *sub_26A4A98C4(void *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A0);
    OUTLINED_FUNCTION_179();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = a4[9];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A91F8);
      OUTLINED_FUNCTION_179();
      if (*(v13 + 84) == a3)
      {
        v10 = v12;
        v11 = a4[15];
      }

      else
      {
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91F0);
        v11 = a4[16];
      }
    }

    return __swift_storeEnumTagSinglePayload(v5 + v11, a2, a2, v10);
  }

  return result;
}