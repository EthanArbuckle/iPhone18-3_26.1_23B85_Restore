__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_221C5E608(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_221C5E628(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t sub_221C5E668()
{
  v29 = sub_221C7B49C();
  v0 = *(v29 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v29, v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_221C7B48C();
  v5 = *(v28 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v28, v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_221C7B46C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v14 = MEMORY[0x28223BE20](v10, v13);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v14, v17);
  v20 = &v28 - v19;
  MEMORY[0x28223BE20](v18, v21);
  v23 = &v28 - v22;
  v30 = 0;
  v31 = 0xE000000000000000;
  sub_221C7B3CC();
  v24 = sub_221C7B44C();
  (*(v0 + 8))(v4, v29);
  if (*(v24 + 16))
  {
    v25 = v28;
    (*(v5 + 16))(v9, v24 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v28);

    sub_221C7B47C();
    (*(v5 + 8))(v9, v25);
    (*(v11 + 32))(v23, v20, v10);
    (*(v11 + 16))(v16, v23, v10);
    if ((*(v11 + 88))(v16, v10) == *MEMORY[0x277D42DD0])
    {
      (*(v11 + 96))(v16, v10);
      MEMORY[0x223DA6030](*v16, *(v16 + 1));

      (*(v11 + 8))(v23, v10);
    }

    else
    {
      v26 = *(v11 + 8);
      v26(v23, v10);
      v26(v16, v10);
    }
  }

  else
  {

    MEMORY[0x223DA6030](0x64696C61766E69, 0xE700000000000000);
  }

  return v30;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_221C5EA38(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_221C5EA80(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for PrettyCGRect(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for PrettyCGRect(uint64_t result, int a2, int a3)
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

void sub_221C5EB60(uint64_t a1, unint64_t *a2)
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

uint64_t sub_221C5EBC0()
{
  v1 = *v0;
  sub_221C7B9EC();
  MEMORY[0x223DA6470](v1);
  return sub_221C7BA0C();
}

uint64_t sub_221C5EC34()
{
  v1 = *v0;
  sub_221C7B9EC();
  MEMORY[0x223DA6470](v1);
  return sub_221C7BA0C();
}

uint64_t sub_221C5EC78()
{
  v1 = *v0;
  v2 = 1701869940;
  v3 = 0x6F69746365726964;
  v4 = 1954047348;
  if (v1 != 3)
  {
    v4 = 0x736C6961746564;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x5F746E656D656C65;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_221C5ED0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_221C5F02C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_221C5ED4C(uint64_t a1)
{
  v2 = sub_221C5F8C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_221C5ED88(uint64_t a1)
{
  v2 = sub_221C5F8C8();

  return MEMORY[0x2821FE720](a1, v2);
}

__n128 sub_221C5EDC4@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_221C5F1EC(a1, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v6[4];
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t sub_221C5EE18()
{
  sub_221C7B9EC();
  MEMORY[0x223DA6470](0);
  return sub_221C7BA0C();
}

uint64_t sub_221C5EE84()
{
  sub_221C7B9EC();
  MEMORY[0x223DA6470](0);
  return sub_221C7BA0C();
}

uint64_t sub_221C5EED8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_221C7B97C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_221C5EF68(uint64_t a1)
{
  v2 = sub_221C5F7D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_221C5EFA4(uint64_t a1)
{
  v2 = sub_221C5F7D4();

  return MEMORY[0x2821FE720](a1, v2);
}

__n128 sub_221C5EFE0@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_221C5F58C(a1, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v6[4];
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t sub_221C5F02C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_221C7B97C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5F746E656D656C65 && a2 == 0xEA00000000006469 || (sub_221C7B97C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F69746365726964 && a2 == 0xE90000000000006ELL || (sub_221C7B97C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1954047348 && a2 == 0xE400000000000000 || (sub_221C7B97C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x736C6961746564 && a2 == 0xE700000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_221C7B97C();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_221C5F1EC@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE1190, &qword_221C7C068);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v27 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_221C5F8C8();
  sub_221C7BA1C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v39[0]) = 0;
  v11 = sub_221C7B85C();
  v13 = v12;
  LOBYTE(v39[0]) = 1;
  v31 = sub_221C7B83C();
  v47 = v14 & 1;
  LOBYTE(v39[0]) = 2;
  v30 = sub_221C7B82C();
  v33 = v15;
  LOBYTE(v39[0]) = 3;
  v29 = sub_221C7B82C();
  v32 = v16;
  v48 = 4;
  v17 = sub_221C7B82C();
  v18 = *(v6 + 8);
  v19 = v17;
  v27 = v20;
  v18(v9, v5);
  *&v34 = v11;
  *(&v34 + 1) = v13;
  *&v35 = v31;
  v28 = v47;
  BYTE8(v35) = v47;
  v21 = v33;
  *&v36 = v30;
  *(&v36 + 1) = v33;
  v22 = v32;
  *&v37 = v29;
  *(&v37 + 1) = v32;
  v23 = v27;
  *&v38 = v19;
  *(&v38 + 1) = v27;
  sub_221C5F91C(&v34, v39);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v39[0] = v11;
  v39[1] = v13;
  v39[2] = v31;
  v40 = v28;
  v41 = v30;
  v42 = v21;
  v43 = v29;
  v44 = v22;
  v45 = v19;
  v46 = v23;
  result = sub_221C5F954(v39);
  v25 = v37;
  a2[2] = v36;
  a2[3] = v25;
  a2[4] = v38;
  v26 = v35;
  *a2 = v34;
  a2[1] = v26;
  return result;
}

uint64_t sub_221C5F58C@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE1178, &qword_221C7C060);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_221C5F7D4();
  sub_221C7BA1C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_221C5F874();
  sub_221C7B89C();
  (*(v6 + 8))(v9, v5);
  v16 = v21;
  v17 = v22;
  v18 = v23;
  v14 = v19;
  v15 = v20;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v12 = v17;
  a2[2] = v16;
  a2[3] = v12;
  a2[4] = v18;
  v13 = v15;
  *a2 = v14;
  a2[1] = v13;
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

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_221C5F7D4()
{
  result = qword_27CFE1180;
  if (!qword_27CFE1180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFE1180);
  }

  return result;
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

unint64_t sub_221C5F874()
{
  result = qword_27CFE1188;
  if (!qword_27CFE1188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFE1188);
  }

  return result;
}

unint64_t sub_221C5F8C8()
{
  result = qword_27CFE1198;
  if (!qword_27CFE1198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFE1198);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ModelResponseAction.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ModelResponseAction.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ModelResponseMessage.CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for ModelResponseMessage.CodingKeys(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_221C5FBE0()
{
  result = qword_27CFE11A0;
  if (!qword_27CFE11A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFE11A0);
  }

  return result;
}

unint64_t sub_221C5FC38()
{
  result = qword_27CFE11A8;
  if (!qword_27CFE11A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFE11A8);
  }

  return result;
}

unint64_t sub_221C5FC90()
{
  result = qword_27CFE11B0;
  if (!qword_27CFE11B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFE11B0);
  }

  return result;
}

unint64_t sub_221C5FCE8()
{
  result = qword_27CFE11B8;
  if (!qword_27CFE11B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFE11B8);
  }

  return result;
}

unint64_t sub_221C5FD40()
{
  result = qword_27CFE11C0;
  if (!qword_27CFE11C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFE11C0);
  }

  return result;
}

unint64_t sub_221C5FD98()
{
  result = qword_27CFE11C8;
  if (!qword_27CFE11C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFE11C8);
  }

  return result;
}

uint64_t sub_221C5FDFC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15[0] = a4;
  v15[1] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE1230, &qword_221C7C418);
  v8 = *(v7 - 8);
  v9 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v7, v10);
  v12 = v15 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_221C61C58();
  sub_221C7BA2C();
  v17 = 0;
  sub_221C7B8FC();
  if (!v5)
  {
    v16 = 1;
    sub_221C7B8FC();
  }

  return (*(v8 + 8))(v12, v7);
}

uint64_t sub_221C5FF90()
{
  if (*v0)
  {
    result = 0x746E65746E6F63;
  }

  else
  {
    result = 1701605234;
  }

  *v0;
  return result;
}

uint64_t sub_221C5FFC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701605234 && a2 == 0xE400000000000000;
  if (v5 || (sub_221C7B97C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_221C7B97C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_221C600A0(uint64_t a1)
{
  v2 = sub_221C61C58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_221C600DC(uint64_t a1)
{
  v2 = sub_221C61C58();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_221C60138@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_221C60B8C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_221C60168(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[0] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE1210, &qword_221C7C410);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_221C61B38();
  sub_221C7BA2C();
  v16 = 0;
  sub_221C7B8FC();
  if (!v4)
  {
    v14[1] = v14[0];
    v15 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE11E8, &qword_221C7C408);
    sub_221C61B8C(&qword_27CFE1220, sub_221C61C04);
    sub_221C7B93C();
  }

  return (*(v7 + 8))(v11, v6);
}

uint64_t sub_221C6035C()
{
  if (*v0)
  {
    result = 0x736567617373656DLL;
  }

  else
  {
    result = 0x6C65646F6DLL;
  }

  *v0;
  return result;
}

uint64_t sub_221C60394@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C65646F6DLL && a2 == 0xE500000000000000;
  if (v6 || (sub_221C7B97C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x736567617373656DLL && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_221C7B97C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_221C60478(uint64_t a1)
{
  v2 = sub_221C61B38();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_221C604B4(uint64_t a1)
{
  v2 = sub_221C61B38();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_221C60510()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x736567617373656DLL;
  v4 = 0x6567617375;
  if (v1 != 3)
  {
    v4 = 0x617461646174656DLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6C65646F6DLL;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_221C60598@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_221C6133C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_221C605C0(uint64_t a1)
{
  v2 = sub_221C61938();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_221C605FC(uint64_t a1)
{
  v2 = sub_221C61938();

  return MEMORY[0x2821FE720](a1, v2);
}

__n128 sub_221C60638@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_221C614DC(a1, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v6[4];
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t sub_221C60684()
{
  v1 = 0xD000000000000011;
  if (*v0 != 1)
  {
    v1 = 0x6F745F6C61746F74;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x745F74706D6F7270;
  }
}

uint64_t sub_221C606F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_221C62260(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_221C6072C(uint64_t a1)
{
  v2 = sub_221C62558();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_221C60768(uint64_t a1)
{
  v2 = sub_221C62558();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_221C607A4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_221C6238C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_221C607E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 2003790950 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_221C7B97C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_221C6086C(uint64_t a1)
{
  v2 = sub_221C625AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_221C608A8(uint64_t a1)
{
  v2 = sub_221C625AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_221C608E4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE12A0, &qword_221C7C818);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v16 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_221C625AC();
  sub_221C7BA1C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = sub_221C7B82C();
  v14 = v13;
  (*(v6 + 8))(v10, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v12;
  a2[1] = v14;
  return result;
}

char *sub_221C60A60(char *a1, int64_t a2, char a3)
{
  result = sub_221C60A80(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_221C60A80(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE11D0, &qword_221C7C290);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_221C60B8C(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE1240, &qword_221C7C420);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v11 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_221C61C58();
  sub_221C7BA1C();
  if (!v1)
  {
    v13 = 0;
    v9 = sub_221C7B85C();
    v12 = 1;
    sub_221C7B85C();
    (*(v4 + 8))(v8, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_221C60D70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v57 = sub_221C7B4AC();
  v5 = *(v57 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v57, v7);
  v56 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_221C7B3DC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x28223BE20](v9, v12);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v43 - v17;
  v19 = sub_221C7B3EC();
  v20 = *(v19 + 16);
  if (v20)
  {
    v44 = a3;
    v45 = a2;
    v61 = MEMORY[0x277D84F90];
    v21 = v19;
    sub_221C60A60(0, v20, 0);
    v22 = v61;
    v24 = *(v10 + 16);
    v23 = v10 + 16;
    v25 = (*(v23 + 64) + 32) & ~*(v23 + 64);
    v43 = v21;
    v26 = v21 + v25;
    v53 = *(v23 + 56);
    v54 = v24;
    v52 = (v5 + 88);
    v51 = *MEMORY[0x277D42E48];
    v48 = *MEMORY[0x277D42E40];
    v46 = (v5 + 8);
    v49 = v15;
    v50 = v23 - 8;
    v47 = *MEMORY[0x277D42E50];
    v55 = v23;
    v27 = (v23 - 8);
    while (1)
    {
      v60 = v22;
      v28 = v54;
      v54(v18, v26, v9);
      v28(v15, v18, v9);
      v29 = v56;
      sub_221C7B3BC();
      v30 = (*v52)(v29, v57);
      if (v30 == v51)
      {
        v58 = 0x5359535F454C4F52;
        v31 = 0xEB000000004D4554;
      }

      else
      {
        if (v30 == v48)
        {
          v59 = 0xE900000000000052;
          v58 = 0x4553555F454C4F52;
          goto LABEL_8;
        }

        if (v30 == v47)
        {
          v58 = 0x5353415F454C4F52;
          v31 = 0xEE00544E41545349;
        }

        else
        {
          (*v46)(v56, v57);
          v58 = 0;
          v31 = 0xE000000000000000;
        }
      }

      v59 = v31;
LABEL_8:
      v32 = sub_221C5E668();
      v34 = v33;
      v35 = *v27;
      (*v27)(v15, v9);
      v36 = v18;
      v35(v18, v9);
      v22 = v60;
      v61 = v60;
      v38 = *(v60 + 16);
      v37 = *(v60 + 24);
      if (v38 >= v37 >> 1)
      {
        sub_221C60A60((v37 > 1), v38 + 1, 1);
        v22 = v61;
      }

      *(v22 + 16) = v38 + 1;
      v39 = (v22 + 32 * v38);
      v40 = v59;
      v39[4] = v58;
      v39[5] = v40;
      v39[6] = v32;
      v39[7] = v34;
      v26 += v53;
      --v20;
      v15 = v49;
      v18 = v36;
      if (!v20)
      {
        v41 = sub_221C7B3FC();
        (*(*(v41 - 8) + 8))(v44, v41);

        return;
      }
    }
  }

  v42 = sub_221C7B3FC();
  (*(*(v42 - 8) + 8))(a3, v42);
}

uint64_t sub_221C611E8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_221C61230(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_221C61294(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_221C612DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_221C6133C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_221C7B97C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C65646F6DLL && a2 == 0xE500000000000000 || (sub_221C7B97C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x736567617373656DLL && a2 == 0xE800000000000000 || (sub_221C7B97C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6567617375 && a2 == 0xE500000000000000 || (sub_221C7B97C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_221C7B97C();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_221C614DC@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE11D8, &qword_221C7C400);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v24 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_221C61938();
  sub_221C7BA1C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v37) = 0;
  v12 = sub_221C7B85C();
  v31 = v13;
  LOBYTE(v37) = 1;
  v14 = sub_221C7B85C();
  *(&v30 + 1) = v15;
  *&v30 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE11E8, &qword_221C7C408);
  LOBYTE(v32) = 2;
  sub_221C61B8C(&qword_27CFE11F0, sub_221C619D4);
  sub_221C7B89C();
  v29 = v37;
  LOBYTE(v32) = 3;
  sub_221C61A28();
  sub_221C7B89C();
  v26 = v37;
  v28 = v38;
  v27 = v39;
  v48 = 4;
  sub_221C61A7C();
  sub_221C7B89C();
  (*(v6 + 8))(v10, v5);
  v24 = *(&v47 + 1);
  v25 = v47;
  *&v32 = v12;
  v16 = v31;
  v17 = v30;
  *(&v32 + 1) = v31;
  v33 = v30;
  v18 = *(&v30 + 1);
  v19 = v29;
  *&v34 = v29;
  v20 = v26;
  *(&v34 + 1) = v26;
  *&v35 = v28;
  *(&v35 + 1) = v27;
  v36 = v47;
  sub_221C61AD0(&v32, &v37);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v37 = v12;
  v38 = v16;
  v39 = v17;
  v40 = v18;
  v41 = v19;
  v42 = v20;
  v43 = v28;
  v44 = v27;
  v45 = v25;
  v46 = v24;
  result = sub_221C61B08(&v37);
  v22 = v35;
  a2[2] = v34;
  a2[3] = v22;
  a2[4] = v36;
  v23 = v33;
  *a2 = v32;
  a2[1] = v23;
  return result;
}

unint64_t sub_221C61938()
{
  result = qword_27CFE11E0;
  if (!qword_27CFE11E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFE11E0);
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

unint64_t sub_221C619D4()
{
  result = qword_27CFE11F8;
  if (!qword_27CFE11F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFE11F8);
  }

  return result;
}

unint64_t sub_221C61A28()
{
  result = qword_27CFE1200;
  if (!qword_27CFE1200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFE1200);
  }

  return result;
}

unint64_t sub_221C61A7C()
{
  result = qword_27CFE1208;
  if (!qword_27CFE1208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFE1208);
  }

  return result;
}

unint64_t sub_221C61B38()
{
  result = qword_27CFE1218;
  if (!qword_27CFE1218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFE1218);
  }

  return result;
}

uint64_t sub_221C61B8C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFE11E8, &qword_221C7C408);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_221C61C04()
{
  result = qword_27CFE1228;
  if (!qword_27CFE1228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFE1228);
  }

  return result;
}

unint64_t sub_221C61C58()
{
  result = qword_27CFE1238;
  if (!qword_27CFE1238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFE1238);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TemplateVersion(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TemplateVersion(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_221C61E30(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
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

  return (v4 + 1);
}

uint64_t sub_221C61E8C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ServerUsageParams(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ServerUsageParams(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
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

  *(result + 24) = v3;
  return result;
}

unint64_t sub_221C61F4C()
{
  result = qword_27CFE1248;
  if (!qword_27CFE1248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFE1248);
  }

  return result;
}

unint64_t sub_221C61FA4()
{
  result = qword_27CFE1250;
  if (!qword_27CFE1250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFE1250);
  }

  return result;
}

unint64_t sub_221C61FFC()
{
  result = qword_27CFE1258;
  if (!qword_27CFE1258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFE1258);
  }

  return result;
}

unint64_t sub_221C62054()
{
  result = qword_27CFE1260;
  if (!qword_27CFE1260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFE1260);
  }

  return result;
}

unint64_t sub_221C620AC()
{
  result = qword_27CFE1268;
  if (!qword_27CFE1268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFE1268);
  }

  return result;
}

unint64_t sub_221C62104()
{
  result = qword_27CFE1270;
  if (!qword_27CFE1270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFE1270);
  }

  return result;
}

unint64_t sub_221C6215C()
{
  result = qword_27CFE1278;
  if (!qword_27CFE1278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFE1278);
  }

  return result;
}

unint64_t sub_221C621B4()
{
  result = qword_27CFE1280;
  if (!qword_27CFE1280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFE1280);
  }

  return result;
}

unint64_t sub_221C6220C()
{
  result = qword_27CFE1288;
  if (!qword_27CFE1288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFE1288);
  }

  return result;
}

uint64_t sub_221C62260(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x745F74706D6F7270 && a2 == 0xED0000736E656B6FLL;
  if (v4 || (sub_221C7B97C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000221C7E330 == a2 || (sub_221C7B97C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F745F6C61746F74 && a2 == 0xEC000000736E656BLL)
  {

    return 2;
  }

  else
  {
    v6 = sub_221C7B97C();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_221C6238C(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE1290, &qword_221C7C810);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v11 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_221C62558();
  sub_221C7BA1C();
  v14 = 0;
  v9 = sub_221C7B88C();
  v13 = 1;
  sub_221C7B88C();
  v12 = 2;
  sub_221C7B88C();
  (*(v3 + 8))(v7, v2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

unint64_t sub_221C62558()
{
  result = qword_27CFE1298;
  if (!qword_27CFE1298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFE1298);
  }

  return result;
}

unint64_t sub_221C625AC()
{
  result = qword_27CFE12A8;
  if (!qword_27CFE12A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFE12A8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ServerUsageParams.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ServerUsageParams.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_221C62764()
{
  result = qword_27CFE12B0;
  if (!qword_27CFE12B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFE12B0);
  }

  return result;
}

unint64_t sub_221C627BC()
{
  result = qword_27CFE12B8;
  if (!qword_27CFE12B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFE12B8);
  }

  return result;
}

unint64_t sub_221C62814()
{
  result = qword_27CFE12C0;
  if (!qword_27CFE12C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFE12C0);
  }

  return result;
}

unint64_t sub_221C6286C()
{
  result = qword_27CFE12C8;
  if (!qword_27CFE12C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFE12C8);
  }

  return result;
}

unint64_t sub_221C628C4()
{
  result = qword_27CFE12D0;
  if (!qword_27CFE12D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFE12D0);
  }

  return result;
}

unint64_t sub_221C6291C()
{
  result = qword_27CFE12D8;
  if (!qword_27CFE12D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFE12D8);
  }

  return result;
}

uint64_t sub_221C629AC(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE1318, &qword_221C7CA90);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = &v17 - v8;
  v10 = (v2 + OBJC_IVAR____TtC11UIGrounding8WebAgent_daw);
  *v10 = a1;
  v10[1] = a2;
  sub_221C7A5D0();
  sub_221C7B04C();

  sub_221C63A3C(v9, v2 + OBJC_IVAR____TtC11UIGrounding8WebAgent_serverURL);
  v11 = sub_221C7A5E4();
  v13 = 0x8000000221C7E3B0;
  v14 = 0xD000000000000010;
  if (v12)
  {
    v14 = v11;
    v13 = v12;
  }

  v15 = (v2 + OBJC_IVAR____TtC11UIGrounding8WebAgent_targetModel);
  *v15 = v14;
  v15[1] = v13;
  return v2;
}

uint64_t sub_221C62ACC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  v41 = a1;
  v45 = a2;
  v40 = sub_221C7B3FC();
  v5 = *(v40 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v40, v7);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE1318, &qword_221C7CA90);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v14 = &v39 - v13;
  v15 = sub_221C7B06C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v19 = MEMORY[0x28223BE20](v15, v18);
  v21 = &v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v39 - v23;
  sub_221C63AAC(v4 + OBJC_IVAR____TtC11UIGrounding8WebAgent_serverURL, v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_221C63B1C(v14);
    sub_221C63B84();
    swift_allocError();
    return swift_willThrow();
  }

  else
  {
    (*(v16 + 32))(v24, v14, v15);
    (*(v16 + 16))(v21, v24, v15);
    v39 = v3;
    sub_221C7AE7C();
    sub_221C7AE6C();
    v42 = 0x3D6B63616361;
    v43 = 0xE600000000000000;
    v26 = *(v4 + OBJC_IVAR____TtC11UIGrounding8WebAgent_daw);
    v27 = *(v4 + OBJC_IVAR____TtC11UIGrounding8WebAgent_daw + 8);

    MEMORY[0x223DA6030](v26, v27);

    sub_221C7AE9C();

    v28 = *(v4 + OBJC_IVAR____TtC11UIGrounding8WebAgent_targetModel);
    v29 = *(v4 + OBJC_IVAR____TtC11UIGrounding8WebAgent_targetModel + 8);
    (*(v5 + 16))(v9, v41, v40);

    sub_221C60D70(v28, v29, v9);
    v31 = v30;
    v33 = v32;
    v34 = sub_221C7AF4C();
    v35 = *(v34 + 48);
    v36 = *(v34 + 52);
    swift_allocObject();
    sub_221C7AF3C();
    v42 = v28;
    v43 = v31;
    v44 = v33;
    sub_221C63BD8();
    v37 = v39;
    sub_221C7AF2C();
    if (v37)
    {

      v38 = sub_221C7AEAC();
      (*(*(v38 - 8) + 8))(v45, v38);
      (*(v16 + 8))(v24, v15);
    }

    else
    {

      sub_221C7AE8C();
      return (*(v16 + 8))(v24, v15);
    }
  }
}

uint64_t sub_221C62F1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[32] = a2;
  v3[33] = a3;
  v3[31] = a1;
  v4 = *(*(sub_221C7B56C() - 8) + 64) + 15;
  v3[34] = swift_task_alloc();
  v5 = sub_221C7AEAC();
  v3[35] = v5;
  v6 = *(v5 - 8);
  v3[36] = v6;
  v7 = *(v6 + 64) + 15;
  v3[37] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221C6300C, 0, 0);
}

uint64_t sub_221C6300C()
{
  v1 = v0[32];
  sub_221C62ACC(v0[31], v0[37]);
  v0[38] = [objc_opt_self() sharedSession];
  v2 = *(MEMORY[0x277CC9D18] + 4);
  v3 = swift_task_alloc();
  v0[39] = v3;
  *v3 = v0;
  v3[1] = sub_221C63138;
  v4 = v0[37];

  return MEMORY[0x28211ECF8](v4, 0);
}

uint64_t sub_221C63138(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *v4;
  v7 = *(*v4 + 312);
  v8 = *(*v4 + 304);
  v11 = *v4;
  v6[40] = a1;
  v6[41] = a2;
  v6[42] = v3;

  if (v3)
  {
    v9 = sub_221C6367C;
  }

  else
  {

    v9 = sub_221C6327C;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_221C6327C()
{
  v1 = *(v0 + 328);
  v2 = *(v0 + 336);
  v3 = *(v0 + 320);
  v4 = sub_221C7AEDC();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_221C7AECC();
  sub_221C638D8();
  sub_221C7AEBC();
  v8 = *(v0 + 320);
  v7 = *(v0 + 328);
  if (v2)
  {
    v9 = *(v0 + 272);
    v10 = *(v0 + 256);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE1300, &qword_221C7CA80);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_221C7CA40;
    MEMORY[0x223DA6030](*(v10 + OBJC_IVAR____TtC11UIGrounding8WebAgent_targetModel), *(v10 + OBJC_IVAR____TtC11UIGrounding8WebAgent_targetModel + 8));
    MEMORY[0x223DA6030](46, 0xE100000000000000);
    v12 = MEMORY[0x277D837D0];
    *(v11 + 56) = MEMORY[0x277D837D0];
    *(v11 + 32) = 0x646567617373654DLL;
    *(v11 + 40) = 0xEA0000000000203ALL;
    sub_221C7B9DC();

    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_221C7CA40;
    sub_221C7B74C();
    *(v0 + 200) = 0;
    *(v0 + 208) = 0xE000000000000000;
    MEMORY[0x223DA6030](0xD000000000000011, 0x8000000221C7E390);
    sub_221C7B55C();
    *(v0 + 216) = sub_221C7B54C();
    *(v0 + 224) = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE1308, &qword_221C7CA88);
    v15 = sub_221C7B57C();
    MEMORY[0x223DA6030](v15);

    MEMORY[0x223DA6030](0x7265206874697720, 0xEC00000020726F72);
    *(v0 + 232) = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE1310, "0+");
    sub_221C7B7BC();
    v16 = *(v0 + 200);
    v17 = *(v0 + 208);
    *(v13 + 56) = v12;
    *(v13 + 32) = v16;
    *(v13 + 40) = v17;
    sub_221C7B9DC();

    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_221C7CA40;
    swift_getErrorValue();
    v19 = *(v0 + 176);
    v20 = *(v0 + 184);
    v21 = *(v0 + 192);
    MEMORY[0x223DA6790](v2);
    v22 = sub_221C7B98C();
    MEMORY[0x223DA6030](v22);

    *(v18 + 56) = v12;
    *(v18 + 32) = 0x20726F727245;
    *(v18 + 40) = 0xE600000000000000;
    sub_221C7B9DC();

    sub_221C6392C(v8, v7);
  }

  else
  {
    v23 = *(v0 + 264);

    v24 = *(v0 + 64);
    *(v0 + 128) = *(v0 + 48);
    *(v0 + 144) = v24;
    *(v0 + 160) = *(v0 + 80);
    v25 = *(v0 + 32);
    *(v0 + 96) = *(v0 + 16);
    *(v0 + 112) = v25;
    sub_221C63980(*(v0 + 128), v23);
    sub_221C61B08(v0 + 96);
    sub_221C6392C(v8, v7);
  }

  v26 = *(v0 + 272);
  (*(*(v0 + 288) + 8))(*(v0 + 296), *(v0 + 280));

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_221C6367C()
{
  (*(v0[36] + 8))(v0[37], v0[35]);
  v1 = v0[42];
  v2 = v0[37];
  v3 = v0[34];

  v4 = v0[1];

  return v4();
}

uint64_t sub_221C63704()
{
  sub_221C63B1C(v0 + OBJC_IVAR____TtC11UIGrounding8WebAgent_serverURL);
  v1 = *(v0 + OBJC_IVAR____TtC11UIGrounding8WebAgent_daw + 8);

  v2 = *(v0 + OBJC_IVAR____TtC11UIGrounding8WebAgent_targetModel + 8);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t type metadata accessor for WebAgent()
{
  result = qword_27CFE12E0;
  if (!qword_27CFE12E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_221C637E4()
{
  sub_221C63880();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_221C63880()
{
  if (!qword_27CFE12F0)
  {
    sub_221C7B06C();
    v0 = sub_221C7B6DC();
    if (!v1)
    {
      atomic_store(v0, &qword_27CFE12F0);
    }
  }
}

unint64_t sub_221C638D8()
{
  result = qword_27CFE12F8;
  if (!qword_27CFE12F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFE12F8);
  }

  return result;
}

uint64_t sub_221C6392C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_221C63980(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 16);
  result = swift_beginAccess();
  if (v4)
  {
    v6 = (a1 + 56);
    do
    {
      v7 = *(v6 - 1);
      v8 = *v6;
      v9 = *(v6 - 2);

      v10 = sub_221C678C0(v7, v8);
      v11 = *a2;
      *a2 = v10;

      v6 += 4;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_221C63A3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE1318, &qword_221C7CA90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_221C63AAC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE1318, &qword_221C7CA90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_221C63B1C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE1318, &qword_221C7CA90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_221C63B84()
{
  result = qword_27CFE1320;
  if (!qword_27CFE1320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFE1320);
  }

  return result;
}

unint64_t sub_221C63BD8()
{
  result = qword_27CFE1328;
  if (!qword_27CFE1328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFE1328);
  }

  return result;
}

unint64_t sub_221C63C40()
{
  result = qword_27CFE1330;
  if (!qword_27CFE1330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFE1330);
  }

  return result;
}

uint64_t sub_221C63C94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[18] = a2;
  v3[19] = a3;
  v3[17] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE1358, &qword_221C7CC20) - 8) + 64) + 15;
  v3[20] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE1360, &qword_221C7CC28);
  v3[21] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v3[22] = swift_task_alloc();
  v7 = sub_221C7B2BC();
  v3[23] = v7;
  v8 = *(v7 - 8);
  v3[24] = v8;
  v9 = *(v8 + 64) + 15;
  v3[25] = swift_task_alloc();
  v10 = sub_221C7B2CC();
  v3[26] = v10;
  v11 = *(v10 - 8);
  v3[27] = v11;
  v12 = *(v11 + 64) + 15;
  v3[28] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE1368, &qword_221C7CC30) - 8) + 64) + 15;
  v3[29] = swift_task_alloc();
  v14 = sub_221C7B30C();
  v3[30] = v14;
  v15 = *(v14 - 8);
  v3[31] = v15;
  v16 = *(v15 + 64) + 15;
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v17 = sub_221C7B28C();
  v3[34] = v17;
  v18 = *(v17 - 8);
  v3[35] = v18;
  v19 = *(v18 + 64) + 15;
  v3[36] = swift_task_alloc();
  v20 = sub_221C7B1FC();
  v3[37] = v20;
  v21 = *(v20 - 8);
  v3[38] = v21;
  v22 = *(v21 + 64) + 15;
  v3[39] = swift_task_alloc();
  v23 = sub_221C7B1EC();
  v3[40] = v23;
  v24 = *(v23 - 8);
  v3[41] = v24;
  v25 = *(v24 + 64) + 15;
  v3[42] = swift_task_alloc();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE1370, &qword_221C7CC38);
  v3[43] = v26;
  v27 = *(v26 - 8);
  v3[44] = v27;
  v28 = *(v27 + 64) + 15;
  v3[45] = swift_task_alloc();
  v29 = sub_221C7B24C();
  v3[46] = v29;
  v30 = *(v29 - 8);
  v3[47] = v30;
  v31 = *(v30 + 64) + 15;
  v3[48] = swift_task_alloc();
  v32 = sub_221C7B23C();
  v3[49] = v32;
  v33 = *(v32 - 8);
  v3[50] = v33;
  v34 = *(v33 + 64) + 15;
  v3[51] = swift_task_alloc();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE1378, &qword_221C7CC40);
  v3[52] = v35;
  v36 = *(v35 - 8);
  v3[53] = v36;
  v37 = *(v36 + 64) + 15;
  v3[54] = swift_task_alloc();
  v38 = sub_221C7B3FC();
  v3[55] = v38;
  v39 = *(v38 - 8);
  v3[56] = v39;
  v40 = *(v39 + 64) + 15;
  v3[57] = swift_task_alloc();
  v3[58] = swift_task_alloc();
  v3[59] = swift_task_alloc();
  v3[60] = swift_task_alloc();
  v3[61] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221C641F0, 0, 0);
}

uint64_t sub_221C641F0()
{
  v43 = v0[61];
  v38 = v0[60];
  v36 = v0[59];
  v45 = v0[58];
  v1 = v0[57];
  v2 = v0[54];
  v25 = v0[55];
  v26 = v0[56];
  v3 = v0[53];
  v24 = v0[52];
  v4 = v0[50];
  v5 = v0[51];
  v6 = v0[48];
  v7 = v0[47];
  v22 = v0[49];
  v23 = v0[46];
  v33 = v0[45];
  v34 = v0[44];
  v35 = v0[43];
  v27 = v0[42];
  v28 = v0[41];
  v29 = v0[40];
  v30 = v0[39];
  v31 = v0[38];
  v32 = v0[37];
  v41 = v0[36];
  v39 = v0[35];
  v40 = v0[34];
  v44 = v0[33];
  v42 = v0[29];
  v8 = v0[18];
  v37 = v0[19];
  *(swift_task_alloc() + 16) = v8;
  sub_221C7B40C();

  v9 = sub_221C7B25C();
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  (*(v4 + 104))(v5, *MEMORY[0x277D0E5C0], v22);
  v10 = sub_221C7B22C();
  (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
  (*(v7 + 104))(v6, *MEMORY[0x277D0E5C8], v23);
  sub_221C7B26C();
  v11 = *MEMORY[0x277D0E550];
  (*(v3 + 104))(v2, v11, v24);
  v0[62] = sub_221C6660C(&qword_27CFE1380, MEMORY[0x277D42D78]);
  sub_221C7B4DC();
  (*(v3 + 8))(v2, v24);
  v12 = *(v26 + 8);
  v0[63] = v12;
  v0[64] = (v26 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12(v1, v25);
  v13 = sub_221C7B20C();
  (*(*(v13 - 8) + 56))(v27, 1, 1, v13);
  (*(v28 + 104))(v27, *MEMORY[0x277D0E578], v29);
  v14 = sub_221C7B1DC();
  (*(*(v14 - 8) + 56))(v30, 1, 1, v14);
  (*(v31 + 104))(v30, *MEMORY[0x277D0E580], v32);
  sub_221C7B21C();
  (*(v34 + 104))(v33, v11, v35);
  sub_221C7B4EC();
  (*(v34 + 8))(v33, v35);
  v12(v45, v25);
  sub_221C6AB38(MEMORY[0x277D84F90]);
  sub_221C7B4CC();

  v12(v36, v25);
  v15 = *(v37 + 16);
  v0[65] = v15;
  v16 = OBJC_IVAR____TtCC11UIGrounding17GMSGroundingModelP33_70A12DEF82FBCB7C3411E83FF8DCC1A711_ClientInfo_trackingConfig;
  swift_beginAccess();
  (*(v39 + 16))(v41, v15 + v16, v40);
  sub_221C7B4FC();
  (*(v39 + 8))(v41, v40);
  v12(v38, v25);
  v17 = sub_221C7B2FC();
  (*(*(v17 - 8) + 56))(v42, 1, 1, v17);
  sub_221C7B2EC();
  v18 = *(MEMORY[0x277D0E540] + 4);
  v19 = swift_task_alloc();
  v0[66] = v19;
  *v19 = v0;
  v19[1] = sub_221C647BC;
  v20 = v0[20];

  return MEMORY[0x282166B60](v20, 0xD00000000000001CLL, 0x8000000221C7E4A0);
}

uint64_t sub_221C647BC()
{
  v2 = *(*v1 + 528);
  v5 = *v1;
  *(*v1 + 536) = v0;

  if (v0)
  {
    v3 = sub_221C64DE4;
  }

  else
  {
    v3 = sub_221C648D0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_221C648D0()
{
  v1 = v0[20];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE1388, &qword_221C7CC48);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_221C665AC(v1, &qword_27CFE1358, &qword_221C7CC20);
  }

  else
  {
    v53 = v0[63];
    v55 = v0[64];
    v47 = v0[60];
    v49 = v0[61];
    v42 = v0[55];
    v3 = v0[32];
    v36 = v0[33];
    v38 = v0[56];
    v32 = v0[31];
    v34 = v0[30];
    v59 = v0[28];
    v51 = v0[27];
    v4 = v0[26];
    v30 = v0[25];
    v5 = v0[24];
    v45 = v5;
    v57 = v0[23];
    v6 = v0[21];
    v7 = v0[22];
    v40 = v0[18];
    v26 = *(v6 + 48);
    v28 = *(v2 + 48);
    v8 = *(v51 + 32);
    v8(v7, v1, v4);
    v9 = *(v5 + 32);
    v9(v7 + v26, v1 + v28, v57);
    v10 = *(v6 + 48);
    v8(v59, v7, v4);
    v9(v30, v7 + v10, v57);
    sub_221C7B2AC();
    (*(v32 + 8))(v36, v34);
    (*(v32 + 32))(v36, v3, v34);
    v11 = MEMORY[0x277D84F90];
    sub_221C6ACA4(MEMORY[0x277D84F90]);
    sub_221C6ADD8(v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE1390, &unk_221C7CC50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_221C7CA40;
    *(inited + 32) = 1952540771;
    *(inited + 40) = 0xE400000000000000;
    v13 = MEMORY[0x277D42D68];
    *(inited + 72) = v42;
    *(inited + 80) = v13;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
    (*(v38 + 16))(boxed_opaque_existential_1, v40, v42);
    sub_221C6AF08(inited);
    swift_setDeallocating();
    sub_221C665AC(inited + 32, &qword_27CFE1398, &qword_221C7D110);
    sub_221C7B29C();

    (*(v45 + 8))(v30, v57);
    (*(v51 + 8))(v59, v4);
    v53(v49, v42);
    (*(v38 + 32))(v49, v47, v42);
  }

  v15 = v0[65];
  v27 = v0[63];
  v29 = v0[64];
  v16 = v0[61];
  v17 = v0[62];
  v18 = v0[60];
  v31 = v0[59];
  v33 = v0[58];
  v19 = v0[55];
  v35 = v0[57];
  v37 = v0[54];
  v39 = v0[51];
  v41 = v0[48];
  v43 = v0[45];
  v44 = v0[42];
  v46 = v0[39];
  v48 = v0[36];
  v20 = v0[33];
  v21 = v0[31];
  v25 = v0[30];
  v50 = v0[32];
  v52 = v0[29];
  v54 = v0[28];
  v56 = v0[25];
  v58 = v0[22];
  v60 = v0[20];
  v22 = v0[17];
  sub_221C7B4BC();
  v0[16] = *(v15 + OBJC_IVAR____TtCC11UIGrounding17GMSGroundingModelP33_70A12DEF82FBCB7C3411E83FF8DCC1A711_ClientInfo__model);
  sub_221C7B17C();
  sub_221C7B50C();
  v27(v18, v19);
  (*(v21 + 8))(v20, v25);
  v27(v16, v19);

  v23 = v0[1];

  return v23();
}

uint64_t sub_221C64DE4()
{
  v2 = v0[63];
  v1 = v0[64];
  v4 = v0[60];
  v3 = v0[61];
  v6 = v0[58];
  v5 = v0[59];
  v7 = v0[57];
  v8 = v0[55];
  v13 = v0[54];
  v14 = v0[51];
  v15 = v0[48];
  v16 = v0[45];
  v17 = v0[42];
  v18 = v0[39];
  v19 = v0[36];
  v20 = v0[32];
  v21 = v0[29];
  v22 = v0[28];
  v9 = v0[25];
  v23 = v0[22];
  v24 = v0[20];
  (*(v0[31] + 8))(v0[33], v0[30]);
  v2(v3, v8);

  v10 = v0[1];
  v11 = v0[67];

  return v10();
}

uint64_t sub_221C64F78()
{
  v0 = sub_221C7B3FC();
  v1 = *(v0 - 8);
  v2 = v1;
  v3 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_221C7B43C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE13A0, &qword_221C7CC60);
  v7 = *(v1 + 72);
  v8 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_221C7CA40;
  (*(v2 + 16))(v9 + v8, v6, v0);
  MEMORY[0x223DA5EA0](v9);

  return (*(v2 + 8))(v6, v0);
}

unsigned __int8 *sub_221C650EC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v6 = v5;
  v11 = sub_221C7B19C();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v62[1] = v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_221C7B1CC();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8, v17);
  v62[0] = v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE13A8, &qword_221C7CC68);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8, v21);
  v22 = sub_221C7B28C();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22, v25);
  v27 = v62 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  sub_221C6AB38(MEMORY[0x277D84F90]);
  sub_221C7B27C();
  (*(v23 + 32))(v6 + OBJC_IVAR____TtCC11UIGrounding17GMSGroundingModelP33_70A12DEF82FBCB7C3411E83FF8DCC1A711_ClientInfo_trackingConfig, v27, v22);
  v28 = *(a5 + 16);
  v63 = a4;
  if (!v28)
  {
    goto LABEL_67;
  }

  v29 = sub_221C6AA08(0xD000000000000015, 0x8000000221C7E4C0);
  if ((v30 & 1) == 0)
  {
    goto LABEL_67;
  }

  v31 = (*(a5 + 56) + 16 * v29);
  v33 = *v31;
  v32 = v31[1];

  v35 = HIBYTE(v32) & 0xF;
  v36 = v33 & 0xFFFFFFFFFFFFLL;
  if (!((v32 & 0x2000000000000000) != 0 ? HIBYTE(v32) & 0xF : v33 & 0xFFFFFFFFFFFFLL))
  {
    goto LABEL_67;
  }

  if ((v32 & 0x1000000000000000) != 0)
  {
    sub_221C65BC4(v33, v32, 10);
    goto LABEL_67;
  }

  if ((v32 & 0x2000000000000000) == 0)
  {
    if ((v33 & 0x1000000000000000) != 0)
    {
      result = ((v32 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      result = sub_221C7B79C();
    }

    v38 = *result;
    if (v38 == 43)
    {
      if (v36 >= 1)
      {
        v35 = v36 - 1;
        if (v36 != 1)
        {
          if (result)
          {
            v47 = 0;
            v48 = result + 1;
            while (1)
            {
              v49 = *v48 - 48;
              if (v49 > 9)
              {
                goto LABEL_65;
              }

              v50 = 10 * v47;
              if ((v47 * 10) >> 64 != (10 * v47) >> 63)
              {
                goto LABEL_65;
              }

              v47 = v50 + v49;
              if (__OFADD__(v50, v49))
              {
                goto LABEL_65;
              }

              ++v48;
              if (!--v35)
              {
                goto LABEL_66;
              }
            }
          }

          goto LABEL_57;
        }

        goto LABEL_65;
      }

      goto LABEL_73;
    }

    if (v38 != 45)
    {
      if (v36)
      {
        if (result)
        {
          v55 = 0;
          while (1)
          {
            v56 = *result - 48;
            if (v56 > 9)
            {
              goto LABEL_65;
            }

            v57 = 10 * v55;
            if ((v55 * 10) >> 64 != (10 * v55) >> 63)
            {
              goto LABEL_65;
            }

            v55 = v57 + v56;
            if (__OFADD__(v57, v56))
            {
              goto LABEL_65;
            }

            ++result;
            if (!--v36)
            {
              goto LABEL_57;
            }
          }
        }

        goto LABEL_57;
      }

LABEL_65:
      LOBYTE(v35) = 1;
      goto LABEL_66;
    }

    if (v36 >= 1)
    {
      v35 = v36 - 1;
      if (v36 != 1)
      {
        if (result)
        {
          v39 = 0;
          v40 = result + 1;
          while (1)
          {
            v41 = *v40 - 48;
            if (v41 > 9)
            {
              goto LABEL_65;
            }

            v42 = 10 * v39;
            if ((v39 * 10) >> 64 != (10 * v39) >> 63)
            {
              goto LABEL_65;
            }

            v39 = v42 - v41;
            if (__OFSUB__(v42, v41))
            {
              goto LABEL_65;
            }

            ++v40;
            if (!--v35)
            {
              goto LABEL_66;
            }
          }
        }

LABEL_57:
        LOBYTE(v35) = 0;
LABEL_66:
        v65 = v35;
LABEL_67:

        sub_221C7B17C();
        sub_221C7B15C();
        sub_221C6660C(&qword_27CFE13B0, MEMORY[0x277D29CE0]);
        sub_221C7B14C();
        sub_221C7B18C();
        sub_221C7B1BC();
        *(v6 + OBJC_IVAR____TtCC11UIGrounding17GMSGroundingModelP33_70A12DEF82FBCB7C3411E83FF8DCC1A711_ClientInfo__model) = sub_221C7B16C();
        return v6;
      }

      goto LABEL_65;
    }

    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v64[0] = v33;
  v64[1] = v32 & 0xFFFFFFFFFFFFFFLL;
  if (v33 != 43)
  {
    if (v33 != 45)
    {
      if (v35)
      {
        v58 = 0;
        v59 = v64;
        while (1)
        {
          v60 = *v59 - 48;
          if (v60 > 9)
          {
            break;
          }

          v61 = 10 * v58;
          if ((v58 * 10) >> 64 != (10 * v58) >> 63)
          {
            break;
          }

          v58 = v61 + v60;
          if (__OFADD__(v61, v60))
          {
            break;
          }

          ++v59;
          if (!--v35)
          {
            goto LABEL_66;
          }
        }
      }

      goto LABEL_65;
    }

    if (v35)
    {
      if (--v35)
      {
        v43 = 0;
        v44 = v64 + 1;
        while (1)
        {
          v45 = *v44 - 48;
          if (v45 > 9)
          {
            break;
          }

          v46 = 10 * v43;
          if ((v43 * 10) >> 64 != (10 * v43) >> 63)
          {
            break;
          }

          v43 = v46 - v45;
          if (__OFSUB__(v46, v45))
          {
            break;
          }

          ++v44;
          if (!--v35)
          {
            goto LABEL_66;
          }
        }
      }

      goto LABEL_65;
    }

    goto LABEL_72;
  }

  if (v35)
  {
    if (--v35)
    {
      v51 = 0;
      v52 = v64 + 1;
      while (1)
      {
        v53 = *v52 - 48;
        if (v53 > 9)
        {
          break;
        }

        v54 = 10 * v51;
        if ((v51 * 10) >> 64 != (10 * v51) >> 63)
        {
          break;
        }

        v51 = v54 + v53;
        if (__OFADD__(v54, v53))
        {
          break;
        }

        ++v52;
        if (!--v35)
        {
          goto LABEL_66;
        }
      }
    }

    goto LABEL_65;
  }

LABEL_74:
  __break(1u);
  return result;
}

uint64_t sub_221C65740()
{
  v1 = *(v0 + 3);

  v2 = OBJC_IVAR____TtCC11UIGrounding17GMSGroundingModelP33_70A12DEF82FBCB7C3411E83FF8DCC1A711_ClientInfo_trackingConfig;
  v3 = sub_221C7B28C();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *&v0[OBJC_IVAR____TtCC11UIGrounding17GMSGroundingModelP33_70A12DEF82FBCB7C3411E83FF8DCC1A711_ClientInfo__model];

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v5, v6);
}

uint64_t sub_221C657F4()
{
  v1 = *(*v0 + 16);
  v2 = *(*v0 + 24);

  return v1;
}

uint64_t sub_221C65828@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtCC11UIGrounding17GMSGroundingModelP33_70A12DEF82FBCB7C3411E83FF8DCC1A711_ClientInfo_trackingConfig;
  swift_beginAccess();
  v5 = sub_221C7B28C();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

uint64_t sub_221C658B4(uint64_t a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtCC11UIGrounding17GMSGroundingModelP33_70A12DEF82FBCB7C3411E83FF8DCC1A711_ClientInfo_trackingConfig;
  swift_beginAccess();
  v5 = sub_221C7B28C();
  (*(*(v5 - 8) + 40))(v3 + v4, a1, v5);
  return swift_endAccess();
}

uint64_t (*sub_221C65948())()
{
  v1 = *v0;
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_221C659C4()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t type metadata accessor for GMSGroundingModel._ClientInfo()
{
  result = qword_27CFE1348;
  if (!qword_27CFE1348)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_221C65A74()
{
  result = sub_221C7B28C();
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

void *sub_221C65B50(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE13B8, &unk_221C7CC70);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unsigned __int8 *sub_221C65BC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_221C7B61C();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_221C66150();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_221C7B79C();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_221C66150()
{
  v0 = sub_221C7B62C();
  v4 = sub_221C661D0(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_221C661D0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_221C7B59C();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_221C7B6EC();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_221C65B50(v9, 0);
  v12 = sub_221C66328(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_221C7B59C();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_221C7B79C();
LABEL_4:

  return sub_221C7B59C();
}

unint64_t sub_221C66328(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_221C66BF4(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_221C7B5FC();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_221C7B79C();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_221C66BF4(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_221C7B5DC();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_221C665AC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_221C6660C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_221C66654(uint64_t a1, unint64_t a2)
{
  v44 = *MEMORY[0x277D85DE8];
  *&v41 = a1;
  *(&v41 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE13D0, ".,");
  if (swift_dynamicCast())
  {
    sub_221C681BC(__src, &v42);
    __swift_project_boxed_opaque_existential_1(&v42, v43);
    sub_221C7AFCC();
    __src[0] = v41;
    __swift_destroy_boxed_opaque_existential_1(&v42);
    goto LABEL_63;
  }

  v40 = 0;
  memset(__src, 0, sizeof(__src));
  sub_221C665AC(__src, &qword_27CFE13D8, ".,");
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_221C7B79C();
  }

  sub_221C66C70(v4, v5, &v42);
  v6 = *(&v42 + 1);
  v7 = v42;
  if (*(&v42 + 1) >> 60 != 15)
  {
    __src[0] = v42;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_221C67398(v8);
  *(&__src[0] + 1) = v9;
  MEMORY[0x28223BE20](*&__src[0], v9);
  v10 = sub_221C66D38(sub_221C680EC);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        sub_221C7B09C();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v36 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v41 + 7) = 0;
  *&v41 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v35 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v37 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v38 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_221C66BF4(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = sub_221C7B5CC();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_221C7B5FC();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v42 = v14;
      *(&v42 + 1) = v38;
      v31 = *(&v42 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_221C7B79C();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_221C66BF4(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = sub_221C7B5DC();
LABEL_52:
    *(&v41 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v42 = v41;
      *(&v42 + 6) = *(&v41 + 6);
      sub_221C7B0AC();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v42 = v41;
    *(&v42 + 6) = *(&v41 + 6);
    sub_221C7B0AC();
    sub_221C681A8(v36, v35);
    goto LABEL_62;
  }

LABEL_57:

  sub_221C681A8(v36, v6);
LABEL_63:
  v32 = __src[0];
  sub_221C68154(*&__src[0], *(&__src[0] + 1));

  sub_221C6392C(v32, *(&v32 + 1));
  v33 = *MEMORY[0x277D85DE8];
  return v32;
}

unint64_t sub_221C66BA8(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return sub_221C7B62C();
  }

  __break(1u);
  return result;
}

uint64_t sub_221C66BF4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_221C7B60C();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x223DA6060](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_221C66C70@<X0>(_BYTE *__src@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a2)
  {
    if (a2 <= 14)
    {
      result = sub_221C672E0(__src, &__src[a2]);
      v6 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = sub_221C7AFBC();
      v9 = *(v8 + 48);
      v10 = *(v8 + 52);
      swift_allocObject();
      v11 = sub_221C7AF6C();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_221C7B08C();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v11 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v11 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

void *sub_221C66D38(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v3 = v1;
  v22[2] = *MEMORY[0x277D85DE8];
  v6 = *v1;
  v5 = v1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      sub_221C6392C(v6, v5);
      v22[0] = v6;
      LOWORD(v22[1]) = v5;
      BYTE2(v22[1]) = BYTE2(v5);
      BYTE3(v22[1]) = BYTE3(v5);
      BYTE4(v22[1]) = BYTE4(v5);
      BYTE5(v22[1]) = BYTE5(v5);
      BYTE6(v22[1]) = BYTE6(v5);
      result = a1(&v20, v22, v22 + BYTE6(v5));
      if (!v2)
      {
        result = v20;
      }

      v9 = LODWORD(v22[1]) | ((WORD2(v22[1]) | (BYTE6(v22[1]) << 16)) << 32);
      *v3 = v22[0];
      v3[1] = v9;
      goto LABEL_22;
    }

    v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    sub_221C6392C(v6, v5);
    *v3 = xmmword_221C7CC80;
    sub_221C6392C(0, 0xC000000000000000);
    v12 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v12 < v6)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_221C7AF7C() && __OFSUB__(v6, sub_221C7AFAC()))
      {
LABEL_26:
        __break(1u);
      }

      v13 = sub_221C7AFBC();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = sub_221C7AF5C();

      v11 = v16;
    }

    if (v12 >= v6)
    {

      v17 = sub_221C671DC(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (!v2)
      {
        *v3 = v6;
        v3[1] = v10;
        result = v17;
        goto LABEL_22;
      }

      *v3 = v6;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v7 == 2)
  {

    sub_221C6392C(v6, v5);
    v20 = v6;
    v21 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *v3 = xmmword_221C7CC80;
    sub_221C6392C(0, 0xC000000000000000);
    sub_221C7B07C();
    result = sub_221C671DC(v20[2], v20[3], a1);
    v10 = v21 | 0x8000000000000000;
    if (!v2)
    {
      *v3 = v20;
      v3[1] = v10;
      goto LABEL_22;
    }

    *v3 = v20;
LABEL_21:
    v3[1] = v10;
    goto LABEL_22;
  }

  memset(v22, 0, 15);
  result = a1(&v20, v22, v22);
  if (!v2)
  {
    result = v20;
  }

LABEL_22:
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

_BYTE *sub_221C670DC@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_221C672E0(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_221C67438(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_221C674B4(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *sub_221C67170(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = a1(&v6, 0, 0);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *sub_221C671DC(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_221C7AF7C();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_221C7AFAC();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_221C7AF9C();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_221C67290@<X0>(uint64_t result@<X0>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  if (result)
  {
    v4 = *a2;
    v5 = a2[1];
    result = sub_221C7B75C();
    if ((v7 & 1) == 0)
    {
      *a3 = 0;
      a3[1] = 0xE000000000000000;
      a3[2] = 15;
      a3[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_221C672E0(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v10 = v3;
  v9 = 0;
  v8 = 0;
  if (__src && a2 != __src)
  {
    memcpy(&__dst, __src, v2);
    result = __dst;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_221C67398(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v2 = sub_221C7AFBC();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      sub_221C7AF8C();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_221C7B08C();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t sub_221C67438(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_221C7AFBC();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_221C7AF6C();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_221C7B08C();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_221C674B4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_221C7AFBC();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_221C7AF6C();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_221C67538(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_221C68098();
    swift_allocError();
    *v1 = 0;
    return swift_willThrow();
  }

  else
  {
    v3 = *(a1 + 16);
    type metadata accessor for UIGroundingAction();
    v4 = swift_allocObject();
    *(v4 + 56) = 0;
    *(v4 + 16) = 1;
    *(v4 + 24) = v3;
    swift_beginAccess();
    result = v4;
    *(v4 + 32) = 4;
    *(v4 + 56) = 0;
    *(v4 + 40) = 0;
    *(v4 + 48) = 0;
  }

  return result;
}

uint64_t sub_221C675FC(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v1 = *(a1 + 32);
    v2 = *(a1 + 40);

    v3 = sub_221C7B7FC();

    if (v3 >= 4)
    {
      v4 = 4;
    }

    else
    {
      v4 = v3;
    }

    type metadata accessor for UIGroundingAction();
    v5 = swift_allocObject();
    *(v5 + 56) = 0;
    *(v5 + 16) = 2;
    *(v5 + 24) = -1;
    swift_beginAccess();
    result = v5;
    *(v5 + 32) = v4;
    *(v5 + 56) = 0;
    *(v5 + 40) = 0;
    *(v5 + 48) = 0;
  }

  else
  {
    sub_221C68098();
    swift_allocError();
    *v7 = 1;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_221C676F8(uint64_t a1)
{
  if (*(a1 + 24))
  {
    v2 = 2;
LABEL_5:
    sub_221C68098();
    swift_allocError();
    *v6 = v2;
    swift_willThrow();
    return v1;
  }

  v3 = *(a1 + 56);
  v2 = 3;
  if (!v3)
  {
    goto LABEL_5;
  }

  v4 = *(a1 + 16);
  v5 = *(a1 + 48);
  type metadata accessor for UIGroundingAction();
  v1 = swift_allocObject();
  *(v1 + 56) = 0;
  *(v1 + 16) = 3;
  *(v1 + 24) = v4;
  swift_beginAccess();
  *(v1 + 56) = 0;
  *(v1 + 32) = 4;
  *(v1 + 40) = v5;
  *(v1 + 48) = v3;

  return v1;
}

uint64_t sub_221C677E8(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    v3 = *(a1 + 64);
    type metadata accessor for UIGroundingAction();
    v1 = swift_allocObject();
    *(v1 + 56) = 0;
    *(v1 + 16) = 4;
    *(v1 + 24) = -1;
    swift_beginAccess();
    *(v1 + 56) = 0;
    *(v1 + 32) = 4;
    *(v1 + 40) = v3;
    *(v1 + 48) = v2;
  }

  else
  {
    sub_221C68098();
    swift_allocError();
    *v4 = 4;
    swift_willThrow();
  }

  return v1;
}

uint64_t sub_221C678C0(uint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE13E0, "0,");
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v40 - v7;
  v46._countAndFlagsBits = a1;
  v46._object = a2;
  v41._countAndFlagsBits = 0x6E6F736A606060;
  v41._object = 0xE700000000000000;
  v9 = sub_221C7B10C();
  v10 = *(*(v9 - 8) + 56);
  v10(v8, 1, 1, v9);
  sub_221C681F4();
  sub_221C7B6FC();
  v12 = v11;
  v14 = v13;
  sub_221C665AC(v8, &qword_27CFE13E0, "0,");
  if (v14)
  {
    goto LABEL_3;
  }

  v46._countAndFlagsBits = sub_221C66BA8(v12, a1, a2);
  v46._object = v15;
  *&v47 = v16;
  *(&v47 + 1) = v17;
  v41._countAndFlagsBits = 6316128;
  v41._object = 0xE300000000000000;
  v10(v8, 1, 1, v9);
  sub_221C68248();
  v18 = sub_221C7B6FC();
  v20 = v19;
  sub_221C665AC(v8, &qword_27CFE13E0, "0,");

  if (v20)
  {
LABEL_3:

    v22 = a1;
    v23 = a2;
  }

  else
  {
    if (v18 >> 14 < v12 >> 14)
    {
      __break(1u);
      return result;
    }

    v24 = sub_221C7B62C();
    v22 = MEMORY[0x223DA6000](v24);
    v23 = v25;
  }

  v26 = sub_221C7AEDC();
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  sub_221C7AECC();
  v29 = sub_221C66654(v22, v23);
  v31 = v30;
  sub_221C5F874();
  sub_221C7AEBC();
  sub_221C6392C(v29, v31);
  v46 = v41;
  v47 = v42;
  v48 = v43;
  v49 = v44;
  v50 = v45;
  v32 = v41;

  UIGroundingActionType.init(rawValue:)(v32);
  if (LOBYTE(v41._countAndFlagsBits) > 1u)
  {
    if (LOBYTE(v41._countAndFlagsBits) == 2)
    {
      v33 = sub_221C675FC(&v46);
    }

    else if (LOBYTE(v41._countAndFlagsBits) == 3)
    {
      v33 = sub_221C676F8(&v46);
    }

    else
    {
      v33 = sub_221C677E8(&v46);
    }

    goto LABEL_10;
  }

  if (LOBYTE(v41._countAndFlagsBits))
  {
    v33 = sub_221C67538(&v46);
LABEL_10:
    v34 = v33;

    sub_221C5F954(&v46);
    return v34;
  }

  sub_221C5F954(&v46);
  sub_221C68098();
  v35 = swift_allocError();
  *v36 = 5;
  swift_willThrow();
  v37 = v35;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE1300, &qword_221C7CA80);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_221C7CA40;
  v41._countAndFlagsBits = 0;
  v41._object = 0xE000000000000000;
  sub_221C7B74C();
  MEMORY[0x223DA6030](0xD000000000000010, 0x8000000221C7E540);
  MEMORY[0x223DA6030](a1, a2);
  MEMORY[0x223DA6030](8250, 0xE200000000000000);
  v40 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE1310, "0+");
  sub_221C7B7BC();
  v39 = v41;
  *(v38 + 56) = MEMORY[0x277D837D0];
  *(v38 + 32) = v39;
  sub_221C7B9DC();

  return 0;
}

uint64_t sub_221C67D88(uint64_t a1, unint64_t a2)
{
  v4 = sub_221C7AEDC();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_221C7AECC();

  v7 = sub_221C66654(a1, a2);
  v9 = v8;
  sub_221C68044();
  sub_221C7AEBC();
  sub_221C6392C(v7, v9);
  v23[0] = v17;
  v23[1] = v19;
  v23[2] = v20;
  v23[3] = v21;
  v23[4] = v22;

  UIGroundingActionType.init(rawValue:)(v17);
  if (LOBYTE(v17._countAndFlagsBits) > 1u)
  {
    if (LOBYTE(v17._countAndFlagsBits) == 2)
    {
      v10 = sub_221C675FC(v23);
    }

    else if (LOBYTE(v17._countAndFlagsBits) == 3)
    {
      v10 = sub_221C676F8(v23);
    }

    else
    {
      v10 = sub_221C677E8(v23);
    }

    goto LABEL_5;
  }

  if (LOBYTE(v17._countAndFlagsBits))
  {
    v10 = sub_221C67538(v23);
LABEL_5:
    v11 = v10;

    sub_221C5F954(v23);
    return v11;
  }

  sub_221C5F954(v23);
  sub_221C68098();
  v13 = swift_allocError();
  *v14 = 5;
  swift_willThrow();
  v15 = v13;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE1300, &qword_221C7CA80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_221C7CA40;
  *&v18 = 0;
  *(&v18 + 1) = 0xE000000000000000;
  sub_221C7B74C();
  MEMORY[0x223DA6030](0xD000000000000010, 0x8000000221C7E540);
  MEMORY[0x223DA6030](a1, a2);
  MEMORY[0x223DA6030](8250, 0xE200000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE1310, "0+");
  sub_221C7B7BC();
  *(v16 + 56) = MEMORY[0x277D837D0];
  *(v16 + 32) = v18;
  sub_221C7B9DC();

  return 0;
}

unint64_t sub_221C68044()
{
  result = qword_27CFE13C0;
  if (!qword_27CFE13C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFE13C0);
  }

  return result;
}

unint64_t sub_221C68098()
{
  result = qword_27CFE13C8;
  if (!qword_27CFE13C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFE13C8);
  }

  return result;
}

void *sub_221C680EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_221C67170(sub_221C681D4, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t sub_221C68154(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_221C681A8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_221C6392C(a1, a2);
  }

  return a1;
}

uint64_t sub_221C681BC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_221C681F4()
{
  result = qword_27CFE13E8;
  if (!qword_27CFE13E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFE13E8);
  }

  return result;
}

unint64_t sub_221C68248()
{
  result = qword_27CFE13F0;
  if (!qword_27CFE13F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFE13F0);
  }

  return result;
}

uint64_t sub_221C682B4()
{
  if (*v0)
  {
    result = 0x6563697665446E6FLL;
  }

  else
  {
    result = 6448503;
  }

  *v0;
  return result;
}

uint64_t sub_221C682E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 6448503 && a2 == 0xE300000000000000;
  if (v5 || (sub_221C7B97C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6563697665446E6FLL && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_221C7B97C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_221C683C4(uint64_t a1)
{
  v2 = sub_221C68818();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_221C68400(uint64_t a1)
{
  v2 = sub_221C68818();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_221C68448(uint64_t a1)
{
  v2 = sub_221C6886C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_221C68484(uint64_t a1)
{
  v2 = sub_221C6886C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_221C684C0@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_221C684F0(uint64_t a1)
{
  v2 = sub_221C688C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_221C6852C(uint64_t a1)
{
  v2 = sub_221C688C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GroundingModelEnv.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE13F8, "0,");
  v26 = *(v3 - 8);
  v27 = v3;
  v4 = *(v26 + 64);
  MEMORY[0x28223BE20](v3, v5);
  v25 = &v23 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE1400, &qword_221C7CCD8);
  v23 = *(v7 - 8);
  v24 = v7;
  v8 = *(v23 + 64);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v23 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE1408, &qword_221C7CCE0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v23 - v16;
  v18 = *v1;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_221C68818();
  sub_221C7BA2C();
  v20 = (v13 + 8);
  if (v18)
  {
    v29 = 1;
    sub_221C6886C();
    v21 = v25;
    sub_221C7B8BC();
    (*(v26 + 8))(v21, v27);
  }

  else
  {
    v28 = 0;
    sub_221C688C0();
    sub_221C7B8BC();
    (*(v23 + 8))(v11, v24);
  }

  return (*v20)(v17, v12);
}

unint64_t sub_221C68818()
{
  result = qword_27CFE1410;
  if (!qword_27CFE1410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFE1410);
  }

  return result;
}

unint64_t sub_221C6886C()
{
  result = qword_27CFE1418;
  if (!qword_27CFE1418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFE1418);
  }

  return result;
}

unint64_t sub_221C688C0()
{
  result = qword_27CFE1420;
  if (!qword_27CFE1420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFE1420);
  }

  return result;
}

uint64_t GroundingModelEnv.hashValue.getter()
{
  v1 = *v0;
  sub_221C7B9EC();
  MEMORY[0x223DA6470](v1);
  return sub_221C7BA0C();
}

uint64_t GroundingModelEnv.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v39 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE1428, &qword_221C7CCE8);
  v4 = *(v3 - 8);
  v36 = v3;
  v37 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v33 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE1430, &qword_221C7CCF0);
  v35 = *(v9 - 8);
  v10 = *(v35 + 64);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v33 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE1438, &qword_221C7CCF8);
  v38 = *(v14 - 8);
  v15 = *(v38 + 64);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v33 - v17;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_221C68818();
  v20 = v40;
  sub_221C7BA1C();
  if (v20)
  {
    goto LABEL_7;
  }

  v34 = v9;
  v40 = a1;
  v22 = v38;
  v21 = v39;
  v23 = v18;
  v24 = sub_221C7B8AC();
  if (*(v24 + 16) != 1)
  {
    v26 = sub_221C7B78C();
    swift_allocError();
    v28 = v27;
    v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE1440, &qword_221C7CD00) + 48);
    *v28 = &type metadata for GroundingModelEnv;
    sub_221C7B81C();
    sub_221C7B77C();
    (*(*(v26 - 8) + 104))(v28, *MEMORY[0x277D84160], v26);
    swift_willThrow();
    (*(v22 + 8))(v23, v14);
    swift_unknownObjectRelease();
    a1 = v40;
LABEL_7:
    v31 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v31);
  }

  v33 = v24;
  v25 = *(v24 + 32);
  if (v25)
  {
    v42 = 1;
    sub_221C6886C();
    sub_221C7B80C();
    (*(v37 + 8))(v8, v36);
  }

  else
  {
    v30 = *(v24 + 32);
    v41 = 0;
    sub_221C688C0();
    sub_221C7B80C();
    (*(v35 + 8))(v13, v34);
  }

  (*(v22 + 8))(v23, v14);
  swift_unknownObjectRelease();
  *v21 = v25;
  v31 = v40;
  return __swift_destroy_boxed_opaque_existential_1(v31);
}

unint64_t sub_221C68DE0()
{
  result = qword_27CFE1448;
  if (!qword_27CFE1448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFE1448);
  }

  return result;
}

uint64_t sub_221C68E74@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE14F8, &unk_221C7D140);
  v4 = *(*(v3 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v3 - 8, v5);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v16[-v10];
  v12 = OBJC_IVAR____TtC11UIGrounding22UIGroundingChatManager____lazy_storage___chat;
  swift_beginAccess();
  sub_221C6B12C(v1 + v12, v11, &qword_27CFE14F8, &unk_221C7D140);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE1478, &qword_221C7CE70);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    return sub_221C6B0BC(v11, a1);
  }

  sub_221C665AC(v11, &qword_27CFE14F8, &unk_221C7D140);
  sub_221C6905C(v1, a1);
  sub_221C6B12C(a1, v8, &qword_27CFE1478, &qword_221C7CE70);
  (*(v14 + 56))(v8, 0, 1, v13);
  swift_beginAccess();
  sub_221C6B04C(v8, v1 + v12);
  return swift_endAccess();
}

uint64_t sub_221C6905C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE1500, qword_221C7DD40);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v29 - v6;
  v8 = sub_221C7B3DC();
  v9 = *(v8 - 8);
  v10 = v9;
  v11 = *(v9 + 64);
  v13 = MEMORY[0x28223BE20](v8, v12);
  v31 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v29 - v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE1508, &unk_221C7D150);
  v18 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v30 = v18 + *(v9 + 72);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_221C7CA40;
  v20 = OBJC_IVAR____TtC11UIGrounding22UIGroundingChatManager_system;
  swift_beginAccess();
  v21 = *(v10 + 16);
  v21(v19 + v18, a1 + v20, v8);
  v22 = OBJC_IVAR____TtC11UIGrounding22UIGroundingChatManager_user;
  swift_beginAccess();
  sub_221C6B12C(a1 + v22, v7, &qword_27CFE1500, qword_221C7DD40);
  if ((*(v10 + 48))(v7, 1, v8) == 1)
  {
    sub_221C665AC(v7, &qword_27CFE1500, qword_221C7DD40);
  }

  else
  {
    v23 = *(v10 + 32);
    v23(v17, v7, v8);
    v24 = v31;
    v21(v31, v17, v8);
    v25 = sub_221C6B9F4(1uLL, 2, 1, v19);
    (*(v10 + 8))(v17, v8);
    *(v25 + 16) = 2;
    v23((v25 + v30), v24, v8);
  }

  v26 = v32;
  sub_221C7B41C();
  v27 = sub_221C7B3FC();
  return (*(*(v27 - 8) + 56))(v26, 0, 1, v27);
}

uint64_t sub_221C6937C()
{
  v1[6] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE1478, &qword_221C7CE70) - 8) + 64) + 15;
  v1[7] = swift_task_alloc();
  v3 = sub_221C7B3FC();
  v1[8] = v3;
  v4 = *(v3 - 8);
  v1[9] = v4;
  v5 = *(v4 + 64) + 15;
  v1[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221C69474, 0, 0);
}

uint64_t sub_221C69474()
{
  v1 = sub_221C7A5FC();
  if (!v2)
  {
    v9 = 6;
    goto LABEL_5;
  }

  v3 = v2;
  v4 = v1;
  v5 = v0[8];
  v6 = v0[9];
  v7 = v0[7];
  sub_221C68E74(v7);
  if ((*(v6 + 48))(v7, 1, v5) == 1)
  {
    v8 = v0[7];

    sub_221C665AC(v8, &qword_27CFE1478, &qword_221C7CE70);
    v9 = 7;
LABEL_5:
    sub_221C68098();
    swift_allocError();
    *v10 = v9;
    swift_willThrow();
    v11 = v0[10];
    v12 = v0[7];

    v13 = v0[1];

    return v13();
  }

  (*(v0[9] + 32))(v0[10], v0[7], v0[8]);
  v15 = type metadata accessor for WebAgent();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  v18 = sub_221C629AC(v4, v3);
  v0[5] = 0;
  v0[11] = v18;
  v19 = swift_task_alloc();
  v0[12] = v19;
  *v19 = v0;
  v19[1] = sub_221C69678;
  v20 = v0[10];

  return sub_221C62F1C(v20, v18, (v0 + 5));
}

uint64_t sub_221C69678()
{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_221C69844;
  }

  else
  {
    v3 = sub_221C6978C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_221C6978C()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];

  (*(v4 + 8))(v2, v3);
  swift_beginAccess();
  v6 = v0[5];

  v7 = v0[1];

  return v7(v6);
}

uint64_t sub_221C69844()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[8];
  v4 = v0[9];

  (*(v4 + 8))(v2, v3);
  v5 = v0[5];

  v6 = v0[13];
  v7 = v0[10];
  v8 = v0[7];

  v9 = v0[1];

  return v9();
}

uint64_t sub_221C698E8()
{
  v1[5] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE14B8, &qword_221C7D100);
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v4 = *(v3 + 64) + 15;
  v1[8] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE1478, &qword_221C7CE70) - 8) + 64) + 15;
  v1[9] = swift_task_alloc();
  v6 = sub_221C7B3FC();
  v1[10] = v6;
  v7 = *(v6 - 8);
  v1[11] = v7;
  v8 = *(v7 + 64) + 15;
  v1[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221C69A48, 0, 0);
}

uint64_t sub_221C69A48()
{
  if (*(v0[5] + 16))
  {
    v1 = v0[10];
    v2 = v0[11];
    v3 = v0[9];
    sub_221C68E74(v3);
    if ((*(v2 + 48))(v3, 1, v1) == 1)
    {
      sub_221C665AC(v0[9], &qword_27CFE1478, &qword_221C7CE70);
      sub_221C68098();
      swift_allocError();
      *v4 = 7;
      swift_willThrow();
      v5 = v0[12];
      v7 = v0[8];
      v6 = v0[9];

      v8 = v0[1];

      return v8();
    }

    else
    {
      (*(v0[11] + 32))(v0[12], v0[9], v0[10]);
      type metadata accessor for GMSGroundingModel();
      inited = swift_initStackObject();
      v0[14] = inited;
      v13 = sub_221C6AB38(MEMORY[0x277D84F90]);
      v14 = type metadata accessor for GMSGroundingModel._ClientInfo();
      v15 = *(v14 + 48);
      v16 = *(v14 + 52);
      swift_allocObject();
      v17 = sub_221C650EC(0x646E756F72474955, 0xEB00000000676E69, 0, 1, v13);
      v0[15] = v17;
      *(inited + 16) = v17;
      if (qword_27CFE1158 != -1)
      {
        swift_once();
      }

      v0[16] = qword_27CFE55C0;
      sub_221C7AAA8();
      v18 = swift_task_alloc();
      v0[17] = v18;
      *v18 = v0;
      v18[1] = sub_221C69E7C;
      v19 = v0[12];
      v20 = v0[8];

      return sub_221C63C94(v20, v19, inited);
    }
  }

  else
  {
    v10 = swift_task_alloc();
    v0[13] = v10;
    *v10 = v0;
    v10[1] = sub_221C69D10;
    v11 = v0[5];

    return sub_221C6937C();
  }
}

uint64_t sub_221C69D10(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 104);
  v6 = *v2;

  v7 = v4[12];
  v8 = v4[9];
  v9 = v4[8];

  v11 = *(v6 + 8);
  if (!v1)
  {
    v10 = a1;
  }

  return v11(v10);
}

uint64_t sub_221C69E7C()
{
  v2 = *(*v1 + 136);
  v3 = *v1;
  v3[18] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_221C6A194, 0, 0);
  }

  else
  {
    v4 = *(MEMORY[0x277D0D8E8] + 4);
    v5 = swift_task_alloc();
    v3[19] = v5;
    v6 = sub_221C6AC4C();
    *v5 = v3;
    v5[1] = sub_221C6A008;
    v7 = v3[8];
    v8 = v3[6];

    return MEMORY[0x282165A78](v8, v6);
  }
}

uint64_t sub_221C6A008(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 152);
  v8 = *v3;
  v6[20] = v2;

  v9 = v6[8];
  v10 = v6[7];
  v11 = v6[6];
  if (v2)
  {
    (*(v10 + 8))(v9, v11);
    v12 = sub_221C6A318;
  }

  else
  {
    v6[21] = a2;
    v6[22] = a1;
    (*(v10 + 8))(v9, v11);
    v12 = sub_221C6A23C;
  }

  return MEMORY[0x2822009F8](v12, 0, 0);
}

uint64_t sub_221C6A194()
{
  v1 = v0[18];
  v2 = v0[15];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[10];

  (*(v4 + 8))(v3, v5);
  v6 = v0[12];
  v8 = v0[8];
  v7 = v0[9];

  v9 = v0[1];

  return v9();
}

uint64_t sub_221C6A23C()
{
  v2 = v0[15];
  v1 = v0[16];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[10];
  v6 = sub_221C67D88(v0[22], v0[21]);

  sub_221C7AAB4();

  (*(v4 + 8))(v3, v5);
  v7 = v0[12];
  v8 = v0[8];
  v9 = v0[9];

  v10 = v0[1];

  return v10(v6);
}

uint64_t sub_221C6A318()
{
  v1 = v0[20];
  v2 = v0[15];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[10];

  (*(v4 + 8))(v3, v5);
  v6 = v0[12];
  v8 = v0[8];
  v7 = v0[9];

  v9 = v0[1];

  return v9();
}

uint64_t sub_221C6A3C0()
{
  v1 = OBJC_IVAR____TtC11UIGrounding22UIGroundingChatManager_log;
  v2 = sub_221C7B39C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC11UIGrounding22UIGroundingChatManager_system;
  v4 = sub_221C7B3DC();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_221C665AC(v0 + OBJC_IVAR____TtC11UIGrounding22UIGroundingChatManager_user, &qword_27CFE1500, qword_221C7DD40);
  v5 = *(v0 + OBJC_IVAR____TtC11UIGrounding22UIGroundingChatManager_assistant + 8);

  v6 = *(v0 + OBJC_IVAR____TtC11UIGrounding22UIGroundingChatManager_response);

  sub_221C665AC(v0 + OBJC_IVAR____TtC11UIGrounding22UIGroundingChatManager____lazy_storage___chat, &qword_27CFE14F8, &unk_221C7D140);
  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v7, v8);
}

uint64_t type metadata accessor for UIGroundingChatManager()
{
  result = qword_27CFE1458;
  if (!qword_27CFE1458)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_221C6A554()
{
  v0 = sub_221C7B39C();
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    v2 = sub_221C7B3DC();
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      sub_221C6A6B4();
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        sub_221C6A70C();
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_221C6A6B4()
{
  if (!qword_27CFE1468)
  {
    sub_221C7B3DC();
    v0 = sub_221C7B6DC();
    if (!v1)
    {
      atomic_store(v0, &qword_27CFE1468);
    }
  }
}

void sub_221C6A70C()
{
  if (!qword_27CFE1470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFE1478, &qword_221C7CE70);
    v0 = sub_221C7B6DC();
    if (!v1)
    {
      atomic_store(v0, &qword_27CFE1470);
    }
  }
}

unint64_t sub_221C6A7A4()
{
  result = qword_27CFE1480;
  if (!qword_27CFE1480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFE1480);
  }

  return result;
}

unint64_t sub_221C6A7FC()
{
  result = qword_27CFE1488;
  if (!qword_27CFE1488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFE1488);
  }

  return result;
}

unint64_t sub_221C6A854()
{
  result = qword_27CFE1490;
  if (!qword_27CFE1490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFE1490);
  }

  return result;
}

unint64_t sub_221C6A8AC()
{
  result = qword_27CFE1498;
  if (!qword_27CFE1498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFE1498);
  }

  return result;
}

unint64_t sub_221C6A904()
{
  result = qword_27CFE14A0;
  if (!qword_27CFE14A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFE14A0);
  }

  return result;
}

unint64_t sub_221C6A95C()
{
  result = qword_27CFE14A8;
  if (!qword_27CFE14A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFE14A8);
  }

  return result;
}

unint64_t sub_221C6A9B4()
{
  result = qword_27CFE14B0;
  if (!qword_27CFE14B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFE14B0);
  }

  return result;
}

unint64_t sub_221C6AA08(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_221C7B9EC();
  sub_221C7B5AC();
  v6 = sub_221C7BA0C();

  return sub_221C6AA80(a1, a2, v6);
}

unint64_t sub_221C6AA80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_221C7B97C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_221C6AB38(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE14F0, &qword_221C7D138);
    v3 = sub_221C7B7EC();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_221C6AA08(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_221C6AC4C()
{
  result = qword_27CFE14C0;
  if (!qword_27CFE14C0)
  {
    sub_221C7B17C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFE14C0);
  }

  return result;
}

unint64_t sub_221C6ACA4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE14E0, &qword_221C7D128);
    v3 = sub_221C7B7EC();
    v4 = a1 + 32;

    while (1)
    {
      sub_221C6B12C(v4, &v13, &qword_27CFE14E8, &qword_221C7D130);
      v5 = v13;
      v6 = v14;
      result = sub_221C6AA08(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_221C681BC(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_221C6ADD8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE14D0, &qword_221C7D118);
    v3 = sub_221C7B7EC();
    v4 = a1 + 32;

    while (1)
    {
      sub_221C6B12C(v4, &v13, &qword_27CFE14D8, &qword_221C7D120);
      v5 = v13;
      v6 = v14;
      result = sub_221C6AA08(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_221C6B03C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_221C6AF08(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE14C8, &qword_221C7D108);
    v3 = sub_221C7B7EC();
    v4 = a1 + 32;

    while (1)
    {
      sub_221C6B12C(v4, &v13, &qword_27CFE1398, &qword_221C7D110);
      v5 = v13;
      v6 = v14;
      result = sub_221C6AA08(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_221C681BC(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

_OWORD *sub_221C6B03C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_221C6B04C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE14F8, &unk_221C7D140);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_221C6B0BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE1478, &qword_221C7CE70);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_221C6B12C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t getEnumTagSinglePayload for GroundingChatManagerError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for GroundingChatManagerError(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_221C6B2E8()
{
  result = qword_27CFE1510;
  if (!qword_27CFE1510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFE1510);
  }

  return result;
}

unint64_t sub_221C6B360()
{
  result = qword_27CFE1518;
  if (!qword_27CFE1518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFE1518);
  }

  return result;
}

uint64_t sub_221C6B494@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v48 = a4;
  v47 = a1;
  v9 = sub_221C7B49C();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_221C7B4AC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v18 = MEMORY[0x28223BE20](v14, v17);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 >> 62)
  {
    v37 = v18;
    v38 = sub_221C7B7DC();
    if (v38 < 0)
    {
      __break(1u);
    }

    v21 = v38;
    v18 = v37;
  }

  else
  {
    v21 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v40 = a2;
  v41 = v5;
  v42 = v20;
  v43 = v15;
  v46 = a5;
  v22 = MEMORY[0x277D84F90];
  v44 = v18;
  v45 = v13;
  if (v21)
  {
    v23 = 0;
    do
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        MEMORY[0x223DA61E0](v23, a3);
        v24 = MEMORY[0x223DA61E0](v23, a3);
      }

      else
      {
        v25 = *(a3 + 8 * v23 + 32);
        v24 = swift_retain_n();
      }

      v26 = v24 + OBJC_IVAR____TtC11UIGrounding18UIGroundingElement_elementID;
      *v26 = v23;
      *(v26 + 8) = 0;

      v27 = UIGroundingElement.parse(index:withBoundingBox:)(v23, v48 & 1);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = sub_221C6BBCC(0, *(v22 + 2) + 1, 1, v22);
      }

      v29 = *(v22 + 2);
      v28 = *(v22 + 3);
      if (v29 >= v28 >> 1)
      {
        v22 = sub_221C6BBCC((v28 > 1), v29 + 1, 1, v22);
      }

      ++v23;

      *(v22 + 2) = v29 + 1;
      *&v22[16 * v29 + 32] = v27;
    }

    while (v21 != v23);
  }

  v49 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE1520, &qword_221C7D370);
  sub_221C6BCD8();
  v30 = sub_221C7B51C();
  v32 = v31;

  v51 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE1530, &qword_221C7D378);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_221C7D230;
  *(inited + 32) = 0xD000000000000043;
  *(inited + 40) = 0x8000000221C7E640;
  *(inited + 48) = v30;
  *(inited + 56) = v32;
  v49 = 0;
  v50 = 0xE000000000000000;
  sub_221C7B74C();
  MEMORY[0x223DA6030](0xD000000000000041, 0x8000000221C7E690);
  MEMORY[0x223DA6030](v47, v40);
  MEMORY[0x223DA6030](34, 0xE100000000000000);
  v34 = v50;
  *(inited + 64) = v49;
  *(inited + 72) = v34;
  v35 = *(v41 + 32);
  *(inited + 80) = *(v41 + 24);
  *(inited + 88) = v35;

  sub_221C6B8A4(inited);
  v49 = v51;
  sub_221C7B51C();

  (*(v43 + 104))(v42, *MEMORY[0x277D42E40], v44);
  sub_221C7B45C();
  return sub_221C7B3AC();
}

uint64_t sub_221C6B8A4(uint64_t result)
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_221C6BBCC(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_221C6B998()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

size_t sub_221C6B9F4(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE1508, &unk_221C7D150);
  v10 = *(sub_221C7B3DC() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_221C7B3DC() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_221C6BBCC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE1530, &qword_221C7D378);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_221C6BCD8()
{
  result = qword_27CFE1528;
  if (!qword_27CFE1528)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFE1520, &qword_221C7D370);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFE1528);
  }

  return result;
}

unint64_t sub_221C6BD3C()
{
  result = qword_27CFE1538;
  if (!qword_27CFE1538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFE1538);
  }

  return result;
}

char *sub_221C6BD90(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE1540, &unk_221C7E000);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

UIGrounding::UIGroundingActionType __swiftcall UIGroundingActionType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  sub_221C681F4();
  if (sub_221C7B70C())
  {

    v4 = 1;
  }

  else if (sub_221C7B70C())
  {

    v4 = 2;
  }

  else if (sub_221C7B70C())
  {

    v4 = 3;
  }

  else
  {
    v5 = sub_221C7B70C();

    if (v5)
    {
      v4 = 4;
    }

    else
    {
      v4 = 0;
    }
  }

  *v2 = v4;
  return result;
}

uint64_t UIGroundingAction.__allocating_init(action:elementID:targetElement:direction:text:)(char *a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v13 = *a1;
  LOBYTE(a1) = *a4;
  *(v12 + 56) = 0;
  *(v12 + 16) = v13;
  *(v12 + 24) = a2;
  swift_beginAccess();
  *(v12 + 56) = a3;
  *(v12 + 32) = a1;
  *(v12 + 40) = a5;
  *(v12 + 48) = a6;
  return v12;
}

UIGrounding::UISwipeDirection_optional __swiftcall UISwipeDirection.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_221C7B7FC();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t UIGroundingActionType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x726568746FLL;
  v3 = 0x6570697773;
  v4 = 0x72746E6574786574;
  if (v1 != 3)
  {
    v4 = 1886352499;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 7364980;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_221C6C1A8()
{
  v1 = *v0;
  sub_221C7B9EC();
  sub_221C7B5AC();

  return sub_221C7BA0C();
}

uint64_t sub_221C6C278()
{
  *v0;
  *v0;
  *v0;
  sub_221C7B5AC();
}

uint64_t sub_221C6C334()
{
  v1 = *v0;
  sub_221C7B9EC();
  sub_221C7B5AC();

  return sub_221C7BA0C();
}

uint64_t sub_221C6C400@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = UIGroundingActionType.init(rawValue:)(*a1);
  *a2 = v4;
  return result;
}

void sub_221C6C440(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x726568746FLL;
  v5 = 0xE500000000000000;
  v6 = 0x6570697773;
  v7 = 0xE900000000000079;
  v8 = 0x72746E6574786574;
  if (v2 != 3)
  {
    v8 = 1886352499;
    v7 = 0xE400000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 7364980;
    v3 = 0xE300000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t UISwipeDirection.rawValue.getter()
{
  v1 = 28789;
  v2 = 1952867692;
  if (*v0 != 2)
  {
    v2 = 0x7468676972;
  }

  if (*v0)
  {
    v1 = 1853321060;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_221C6C5E4()
{
  v1 = *v0;
  sub_221C7B9EC();
  sub_221C7B5AC();

  return sub_221C7BA0C();
}

uint64_t sub_221C6C688()
{
  *v0;
  *v0;
  *v0;
  sub_221C7B5AC();
}

uint64_t sub_221C6C718()
{
  v1 = *v0;
  sub_221C7B9EC();
  sub_221C7B5AC();

  return sub_221C7BA0C();
}

void sub_221C6C7C4(uint64_t *a1@<X8>)
{
  v2 = 0xE200000000000000;
  v3 = 28789;
  v4 = 0xE400000000000000;
  v5 = 1952867692;
  if (*v1 != 2)
  {
    v5 = 0x7468676972;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 1853321060;
    v2 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t UIGroundingAction.text.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t sub_221C6C924(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 56);
  *(v3 + 56) = v2;
}

uint64_t sub_221C6C984()
{
  swift_beginAccess();
  v1 = *(v0 + 56);
}

uint64_t sub_221C6C9BC(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 56);
  *(v1 + 56) = a1;
}

uint64_t UIGroundingAction.init(action:elementID:targetElement:direction:text:)(char *a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6)
{
  v10 = *a1;
  v11 = *a4;
  *(v6 + 56) = 0;
  *(v6 + 16) = v10;
  *(v6 + 24) = a2;
  swift_beginAccess();
  *(v6 + 56) = a3;
  *(v6 + 32) = v11;
  *(v6 + 40) = a5;
  *(v6 + 48) = a6;
  return v6;
}

uint64_t sub_221C6CAD0()
{
  sub_221C7B74C();
  MEMORY[0x223DA6030](0x49746E656D656C45, 0xEB00000000203A44);
  v27 = *(v0 + 24);
  v1 = sub_221C7B96C();
  MEMORY[0x223DA6030](v1);

  MEMORY[0x223DA6030](0x3A6E6F697463410ALL, 0xE900000000000020);
  v2 = 0xE500000000000000;
  v3 = 0x726568746FLL;
  v4 = *(v0 + 16);
  v5 = 0xE500000000000000;
  v6 = 0x6570697773;
  v7 = 0xE900000000000079;
  v8 = 0x72746E6574786574;
  if (v4 != 3)
  {
    v8 = 1886352499;
    v7 = 0xE400000000000000;
  }

  if (v4 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*(v0 + 16))
  {
    v3 = 7364980;
    v2 = 0xE300000000000000;
  }

  if (*(v0 + 16) <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v6;
  }

  if (*(v0 + 16) <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v5;
  }

  MEMORY[0x223DA6030](v9, v10);

  MEMORY[0x223DA6030](0x3A7465677261540ALL, 0xE900000000000020);
  swift_beginAccess();
  if (*(v0 + 56))
  {
    v11 = *(v0 + 56);

    v12 = sub_221C6F9F4();
    v14 = v13;
  }

  else
  {
    v14 = 0xE400000000000000;
    v12 = 1701736270;
  }

  MEMORY[0x223DA6030](v12, v14);

  MEMORY[0x223DA6030](0x697463657269440ALL, 0xEC000000203A6E6FLL);
  v15 = 0xE200000000000000;
  v16 = 28789;
  v17 = *(v0 + 32);
  v18 = 0xE400000000000000;
  v19 = 1952867692;
  v20 = 0xE500000000000000;
  v21 = 0x7468676972;
  if (v17 != 3)
  {
    v21 = 4271950;
    v20 = 0xE300000000000000;
  }

  if (v17 != 2)
  {
    v19 = v21;
    v18 = v20;
  }

  if (*(v0 + 32))
  {
    v16 = 1853321060;
    v15 = 0xE400000000000000;
  }

  if (*(v0 + 32) <= 1u)
  {
    v22 = v16;
  }

  else
  {
    v22 = v19;
  }

  if (*(v0 + 32) <= 1u)
  {
    v23 = v15;
  }

  else
  {
    v23 = v18;
  }

  MEMORY[0x223DA6030](v22, v23);

  MEMORY[0x223DA6030](0x203A747865540ALL, 0xE700000000000000);
  if (*(v0 + 48))
  {
    v24 = *(v0 + 40);
    v25 = *(v0 + 48);
  }

  else
  {
    v24 = 4271950;
    v25 = 0xE300000000000000;
  }

  MEMORY[0x223DA6030](v24, v25);

  return 0;
}

uint64_t static UIGroundingAction.== infix(_:_:)()
{
  v0 = sub_221C6CAD0();
  v2 = v1;
  if (v0 == sub_221C6CAD0() && v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_221C7B97C();
  }

  return v4 & 1;
}

uint64_t sub_221C6CE40()
{
  v1 = *v0;
  v2 = 0x6E6F69746361;
  v3 = 0x6F69746365726964;
  v4 = 1954047348;
  if (v1 != 3)
  {
    v4 = 0x6C45746567726174;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x49746E656D656C65;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_221C6CEEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_221C6DD6C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_221C6CF14(uint64_t a1)
{
  v2 = sub_221C6D6C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_221C6CF50(uint64_t a1)
{
  v2 = sub_221C6D6C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UIGroundingAction.deinit()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 56);

  return v0;
}

uint64_t UIGroundingAction.__deallocating_deinit()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 56);

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

uint64_t sub_221C6CFF4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE1548, &qword_221C7D380);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v16[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_221C6D6C4();
  sub_221C7BA2C();
  v18 = *(v3 + 16);
  LOBYTE(v17) = 0;
  sub_221C6D718();
  sub_221C7B93C();
  if (!v2)
  {
    v13 = *(v3 + 24);
    v18 = 1;
    sub_221C7B92C();
    v18 = *(v3 + 32);
    LOBYTE(v17) = 2;
    sub_221C6D76C();
    sub_221C7B8EC();
    v14 = *(v3 + 40);
    v15 = *(v3 + 48);
    v18 = 3;
    sub_221C7B8CC();
    swift_beginAccess();
    v17 = *(v3 + 56);
    v16[15] = 4;
    type metadata accessor for UIGroundingElement();
    sub_221C6D88C(&qword_27CFE1568);
    sub_221C7B8EC();
  }

  return (*(v6 + 8))(v10, v5);
}

uint64_t UIGroundingAction.__allocating_init(from:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  UIGroundingAction.init(from:)(a1);
  return v2;
}

uint64_t UIGroundingAction.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE1570, &qword_221C7D388);
  v5 = *(v19 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v19, v7);
  v9 = &v19 - v8;
  *(v1 + 56) = 0;
  v10 = (v1 + 56);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_221C6D6C4();
  sub_221C7BA1C();
  if (v2)
  {
    v14 = *(v1 + 56);

    type metadata accessor for UIGroundingAction();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v12 = v5;
    LOBYTE(v21) = 0;
    sub_221C6D7E4();
    v13 = v19;
    sub_221C7B89C();
    *(v1 + 16) = v20;
    v20 = 1;
    *(v1 + 24) = sub_221C7B88C();
    LOBYTE(v21) = 2;
    sub_221C6D838();
    sub_221C7B84C();
    *(v1 + 32) = v20;
    v20 = 3;
    *(v1 + 40) = sub_221C7B82C();
    *(v1 + 48) = v16;
    type metadata accessor for UIGroundingElement();
    v20 = 4;
    sub_221C6D88C(&qword_27CFE1588);
    sub_221C7B84C();
    (*(v12 + 8))(v9, v13);
    v17 = v21;
    swift_beginAccess();
    v18 = *v10;
    *v10 = v17;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

uint64_t sub_221C6D5C0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for UIGroundingAction();
  v5 = swift_allocObject();
  result = UIGroundingAction.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_221C6D63C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_221C6CAD0();
  v6 = v5;
  if (v4 == sub_221C6CAD0() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_221C7B97C();
  }

  return v9 & 1;
}

unint64_t sub_221C6D6C4()
{
  result = qword_27CFE1550;
  if (!qword_27CFE1550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFE1550);
  }

  return result;
}

unint64_t sub_221C6D718()
{
  result = qword_27CFE1558;
  if (!qword_27CFE1558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFE1558);
  }

  return result;
}

unint64_t sub_221C6D76C()
{
  result = qword_27CFE1560;
  if (!qword_27CFE1560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFE1560);
  }

  return result;
}

unint64_t sub_221C6D7E4()
{
  result = qword_27CFE1578;
  if (!qword_27CFE1578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFE1578);
  }

  return result;
}

unint64_t sub_221C6D838()
{
  result = qword_27CFE1580;
  if (!qword_27CFE1580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFE1580);
  }

  return result;
}

uint64_t sub_221C6D88C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UIGroundingElement();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_221C6D8D4()
{
  result = qword_27CFE1590;
  if (!qword_27CFE1590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFE1590);
  }

  return result;
}

unint64_t sub_221C6D92C()
{
  result = qword_27CFE1598;
  if (!qword_27CFE1598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFE1598);
  }

  return result;
}

uint64_t sub_221C6D980@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 56);
}

uint64_t getEnumTagSinglePayload for UISwipeDirection(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for UISwipeDirection(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_221C6DC68()
{
  result = qword_27CFE15A0;
  if (!qword_27CFE15A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFE15A0);
  }

  return result;
}

unint64_t sub_221C6DCC0()
{
  result = qword_27CFE15A8;
  if (!qword_27CFE15A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFE15A8);
  }

  return result;
}

unint64_t sub_221C6DD18()
{
  result = qword_27CFE15B0;
  if (!qword_27CFE15B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFE15B0);
  }

  return result;
}

uint64_t sub_221C6DD6C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F69746361 && a2 == 0xE600000000000000;
  if (v4 || (sub_221C7B97C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x49746E656D656C65 && a2 == 0xE900000000000044 || (sub_221C7B97C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F69746365726964 && a2 == 0xE90000000000006ELL || (sub_221C7B97C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1954047348 && a2 == 0xE400000000000000 || (sub_221C7B97C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6C45746567726174 && a2 == 0xED0000746E656D65)
  {

    return 4;
  }

  else
  {
    v6 = sub_221C7B97C();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

unint64_t sub_221C6DF2C()
{
  result = qword_27CFE15B8;
  if (!qword_27CFE15B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFE15B8);
  }

  return result;
}

unint64_t sub_221C6DF80()
{
  result = qword_27CFE15C0;
  if (!qword_27CFE15C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFE15C0);
  }

  return result;
}

uint64_t sub_221C6DFDC()
{
  sub_221C7B9EC();
  sub_221C7B5AC();

  return sub_221C7BA0C();
}

UIGrounding::UIGroundingElementType_optional __swiftcall UIGroundingElementType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_221C7B7FC();

  v5 = 13;
  if (v3 < 0xD)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t UIGroundingElementType.rawValue.getter()
{
  result = 0x6E6F74747562;
  switch(*v0)
  {
    case 1:
      result = 0x70756F7267;
      break;
    case 2:
      result = 0x726564616568;
      break;
    case 3:
      result = 1852793705;
      break;
    case 4:
      result = 0x7475706E69;
      break;
    case 5:
      result = 0x697461676976616ELL;
      break;
    case 6:
      result = 0x726568746FLL;
      break;
    case 7:
      result = 0x65727574636970;
      break;
    case 8:
      result = 1954047348;
      break;
    case 9:
      result = 0x75706E4974786574;
      break;
    case 0xA:
      result = 0xD000000000000010;
      break;
    case 0xB:
      result = 0x656C67676F74;
      break;
    case 0xC:
      result = 0x6E776F6E6B6E75;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_221C6E2DC(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = UIGroundingElementType.rawValue.getter();
  v4 = v3;
  if (v2 == UIGroundingElementType.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_221C7B97C();
  }

  return v7 & 1;
}

uint64_t sub_221C6E378()
{
  v1 = *v0;
  sub_221C7B9EC();
  UIGroundingElementType.rawValue.getter();
  sub_221C7B5AC();

  return sub_221C7BA0C();
}

uint64_t sub_221C6E3E0()
{
  v2 = *v0;
  UIGroundingElementType.rawValue.getter();
  sub_221C7B5AC();
}

uint64_t sub_221C6E444()
{
  v1 = *v0;
  sub_221C7B9EC();
  UIGroundingElementType.rawValue.getter();
  sub_221C7B5AC();

  return sub_221C7BA0C();
}

unint64_t sub_221C6E4B4@<X0>(unint64_t *a1@<X8>)
{
  result = UIGroundingElementType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_221C6E58C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE1630, &qword_221C7DC00);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v11 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_221C71164();
  sub_221C7BA2C();
  v15 = 0;
  sub_221C7B91C();
  if (!v1)
  {
    v14 = 1;
    sub_221C7B91C();
    v13 = 2;
    sub_221C7B91C();
    v12 = 3;
    sub_221C7B91C();
  }

  return (*(v4 + 8))(v8, v3);
}

uint64_t sub_221C6E764()
{
  v1 = 0x64726F6F4378;
  v2 = 0x6874646977;
  if (*v0 != 2)
  {
    v2 = 0x746867696568;
  }

  if (*v0)
  {
    v1 = 0x64726F6F4379;
  }

  *v0;
  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_221C6E7C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_221C6FE50(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_221C6E7F4(uint64_t a1)
{
  v2 = sub_221C71164();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_221C6E830(uint64_t a1)
{
  v2 = sub_221C71164();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_221C6E86C(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_221C6FFA8(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 4) = v5;
    *(a2 + 8) = v6;
    *(a2 + 12) = v7;
  }
}

uint64_t sub_221C6E89C(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  return sub_221C6E58C(a1);
}

double UIGroundingElement.rect.getter()
{
  result = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  return result;
}

uint64_t sub_221C6E8DC(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v4 + 72);
  *(v4 + 64) = v3;
  *(v4 + 72) = v2;
}

uint64_t sub_221C6E93C()
{
  swift_beginAccess();
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t sub_221C6E988(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 72);
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
}

uint64_t sub_221C6EA2C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v4 + 88);
  *(v4 + 80) = v3;
  *(v4 + 88) = v2;
}

uint64_t sub_221C6EA8C()
{
  swift_beginAccess();
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return v1;
}

uint64_t sub_221C6EAD8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 88);
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
}

uint64_t sub_221C6EB7C(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE15C8, &qword_221C7D7C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v12 - v7;
  sub_221C6EC94(a1, &v12 - v7);
  v9 = *a2;
  v10 = OBJC_IVAR____TtC11UIGrounding18UIGroundingElement_externalID;
  swift_beginAccess();
  sub_221C6ED64(v8, v9 + v10);
  return swift_endAccess();
}

uint64_t sub_221C6EC3C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11UIGrounding18UIGroundingElement_externalID;
  swift_beginAccess();
  return sub_221C6EC94(v1 + v3, a1);
}

uint64_t sub_221C6EC94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE15C8, &qword_221C7D7C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_221C6ED04(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11UIGrounding18UIGroundingElement_externalID;
  swift_beginAccess();
  sub_221C6ED64(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_221C6ED64(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE15C8, &qword_221C7D7C0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_221C6EE4C()
{
  *v0;
  *v0;
  *v0;
  sub_221C7B5AC();
}

uint64_t sub_221C6EF7C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_221C701A4();
  *a2 = result;
  return result;
}

uint64_t sub_221C6EFAC@<X0>(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000657079;
  v4 = 0x54746E656D656C65;
  v5 = 0x8000000221C7E2C0;
  v6 = 0xD000000000000015;
  if (v2 != 5)
  {
    v6 = 0x49746E656D656C65;
    v5 = 0xE900000000000044;
  }

  v7 = 0xEA00000000004449;
  v8 = 0x6C616E7265747865;
  result = 0x746E6F4374786574;
  if (v2 != 3)
  {
    v8 = 0x746E6F4374786574;
    v7 = 0xEC00000073746E65;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v10 = 0xE400000000000000;
  v11 = 1952671090;
  if (v2 != 1)
  {
    v11 = 0x6C62616B63696C63;
    v10 = 0xE900000000000065;
  }

  if (*v1)
  {
    v4 = v11;
    v3 = v10;
  }

  if (*v1 <= 2u)
  {
    v12 = v4;
  }

  else
  {
    v12 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v12;
  a1[1] = v3;
  return result;
}

unint64_t sub_221C6F0A4()
{
  v1 = *v0;
  v2 = 0x54746E656D656C65;
  v3 = 0xD000000000000015;
  if (v1 != 5)
  {
    v3 = 0x49746E656D656C65;
  }

  v4 = 0x6C616E7265747865;
  if (v1 != 3)
  {
    v4 = 0x746E6F4374786574;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 1952671090;
  if (v1 != 1)
  {
    v5 = 0x6C62616B63696C63;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_221C6F198@<X0>(_BYTE *a1@<X8>)
{
  result = sub_221C701A4();
  *a1 = result;
  return result;
}

uint64_t sub_221C6F1CC(uint64_t a1)
{
  v2 = sub_221C70740();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_221C6F208(uint64_t a1)
{
  v2 = sub_221C70740();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_221C6F25C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE15C8, &qword_221C7D7C0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = &v34[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE15D0, &qword_221C7D7C8);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v34[-v14];
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_221C70740();
  sub_221C7BA2C();
  LOBYTE(v38) = *(v3 + 16);
  v37 = 0;
  sub_221C70794();
  sub_221C7B93C();
  if (!v2)
  {
    v17 = *(v3 + 24);
    v18 = *(v3 + 32);
    v19 = *(v3 + 40);
    v20 = *(v3 + 48);
    v42.origin.x = v17;
    v42.origin.y = v18;
    v42.size.width = v19;
    v42.size.height = v20;
    MinX = CGRectGetMinX(v42);
    v43.origin.x = v17;
    v43.origin.y = v18;
    v43.size.width = v19;
    v43.size.height = v20;
    MinY = CGRectGetMinY(v43);
    v44.origin.x = v17;
    v44.origin.y = v18;
    v44.size.width = v19;
    v44.size.height = v20;
    Width = CGRectGetWidth(v44);
    v45.origin.x = v17;
    v45.origin.y = v18;
    v45.size.width = v19;
    v45.size.height = v20;
    Height = CGRectGetHeight(v45);
    v38 = MinX;
    v39 = MinY;
    v40 = Width;
    v41 = Height;
    v37 = 1;
    sub_221C707E8();
    sub_221C7B93C();
    v25 = *(v3 + 56);
    LOBYTE(v38) = 2;
    sub_221C7B90C();
    swift_beginAccess();
    v27 = *(v3 + 64);
    v28 = *(v3 + 72);
    v37 = 4;

    sub_221C7B8CC();

    swift_beginAccess();
    v29 = *(v3 + 80);
    v30 = *(v3 + 88);
    v36 = 5;

    sub_221C7B8CC();

    v31 = OBJC_IVAR____TtC11UIGrounding18UIGroundingElement_externalID;
    swift_beginAccess();
    sub_221C6EC94(v3 + v31, v9);
    v35 = 3;
    sub_221C7B0FC();
    sub_221C712B4(&qword_27CFE15F0);
    sub_221C7B8EC();
    sub_221C7083C(v9);
    v32 = *(v3 + OBJC_IVAR____TtC11UIGrounding18UIGroundingElement_elementID);
    v33 = *(v3 + OBJC_IVAR____TtC11UIGrounding18UIGroundingElement_elementID + 8);
    v35 = 6;
    sub_221C7B8DC();
  }

  return (*(v11 + 8))(v15, v10);
}

uint64_t UIGroundingElement.__allocating_init(elementType:rect:clickable:elementText:additionalDescriptors:elementID:externalID:)(char *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, double a9, double a10, double a11, double a12, uint64_t a13)
{
  v23 = *(v13 + 48);
  v24 = *(v13 + 52);
  v25 = swift_allocObject();
  *(v25 + 80) = 0u;
  v26 = *a1;
  *(v25 + 64) = 0u;
  v27 = OBJC_IVAR____TtC11UIGrounding18UIGroundingElement_externalID;
  v28 = sub_221C7B0FC();
  (*(*(v28 - 8) + 56))(v25 + v27, 1, 1, v28);
  v29 = v25 + OBJC_IVAR____TtC11UIGrounding18UIGroundingElement_elementID;
  *v29 = 0;
  *(v29 + 8) = 1;
  *(v25 + 16) = v26;
  *(v25 + 24) = a9;
  *(v25 + 32) = a10;
  *(v25 + 40) = a11;
  *(v25 + 48) = a12;
  *(v25 + 56) = a2;
  swift_beginAccess();
  *(v25 + 64) = a3;
  *(v25 + 72) = a4;
  swift_beginAccess();
  *(v25 + 80) = a5;
  *(v25 + 88) = a6;
  v30 = v25 + OBJC_IVAR____TtC11UIGrounding18UIGroundingElement_elementID;
  *v30 = a7;
  *(v30 + 8) = a8 & 1;
  v31 = OBJC_IVAR____TtC11UIGrounding18UIGroundingElement_externalID;
  swift_beginAccess();
  sub_221C6ED64(a13, v25 + v31);
  swift_endAccess();
  return v25;
}

uint64_t UIGroundingElement.init(elementType:rect:clickable:elementText:additionalDescriptors:elementID:externalID:)(char *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, double a9, double a10, double a11, double a12, uint64_t a13)
{
  v22 = *a1;
  v23 = OBJC_IVAR____TtC11UIGrounding18UIGroundingElement_externalID;
  *(v13 + 80) = 0u;
  *(v13 + 64) = 0u;
  v24 = sub_221C7B0FC();
  (*(*(v24 - 8) + 56))(v13 + v23, 1, 1, v24);
  v25 = v13 + OBJC_IVAR____TtC11UIGrounding18UIGroundingElement_elementID;
  *v25 = 0;
  *(v25 + 8) = 1;
  *(v13 + 16) = v22;
  *(v13 + 24) = a9;
  *(v13 + 32) = a10;
  *(v13 + 40) = a11;
  *(v13 + 48) = a12;
  *(v13 + 56) = a2;
  swift_beginAccess();
  *(v13 + 64) = a3;
  *(v13 + 72) = a4;
  swift_beginAccess();
  *(v13 + 80) = a5;
  *(v13 + 88) = a6;
  v26 = v13 + OBJC_IVAR____TtC11UIGrounding18UIGroundingElement_elementID;
  *v26 = a7;
  *(v26 + 8) = a8 & 1;
  v27 = OBJC_IVAR____TtC11UIGrounding18UIGroundingElement_externalID;
  swift_beginAccess();
  sub_221C6ED64(a13, v13 + v27);
  swift_endAccess();
  return v13;
}

BOOL sub_221C6F9C8(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = *(a1 + 32);
  if (vabdd_f64(v2, v3) < 1.0)
  {
    v2 = *(v1 + 24);
    v3 = *(a1 + 24);
  }

  return v2 < v3;
}

uint64_t sub_221C6F9F4()
{
  if (*(v0 + OBJC_IVAR____TtC11UIGrounding18UIGroundingElement_elementID + 8))
  {
    v19 = 0;
  }

  else
  {
    v20 = *(v0 + OBJC_IVAR____TtC11UIGrounding18UIGroundingElement_elementID);
    v1 = sub_221C7B96C();
    MEMORY[0x223DA6030](v1);

    v19 = 540689481;
  }

  v21 = *(v0 + 16);
  v2 = UIGroundingElementType.rawValue.getter();
  MEMORY[0x223DA6030](v2);

  sub_221C7B74C();

  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v22.origin.x = v3;
  v22.origin.y = v4;
  v22.size.width = v5;
  v22.size.height = v6;
  CGRectGetMinX(v22);
  v7 = sub_221C7B68C();
  MEMORY[0x223DA6030](v7);

  MEMORY[0x223DA6030](981016620, 0xE400000000000000);
  v23.origin.x = v3;
  v23.origin.y = v4;
  v23.size.width = v5;
  v23.size.height = v6;
  CGRectGetMinY(v23);
  v8 = sub_221C7B68C();
  MEMORY[0x223DA6030](v8);

  MEMORY[0x223DA6030](980885548, 0xE400000000000000);
  v24.origin.x = v3;
  v24.origin.y = v4;
  v24.size.width = v5;
  v24.size.height = v6;
  CGRectGetWidth(v24);
  v9 = sub_221C7B68C();
  MEMORY[0x223DA6030](v9);

  MEMORY[0x223DA6030](3827744, 0xE300000000000000);
  v25.origin.x = v3;
  v25.origin.y = v4;
  v25.size.width = v5;
  v25.size.height = v6;
  CGRectGetHeight(v25);
  v10 = sub_221C7B68C();
  MEMORY[0x223DA6030](v10);

  swift_beginAccess();
  v12 = *(v0 + 80);
  v11 = *(v0 + 88);
  if (v11)
  {
    v13 = *(v0 + 80);
  }

  else
  {
    v13 = 0;
  }

  if (v11)
  {
    v14 = *(v0 + 88);
  }

  else
  {
    v14 = 0xE000000000000000;
  }

  MEMORY[0x223DA6030](v13, v14);

  swift_beginAccess();
  v15 = *(v0 + 72);
  if (v15)
  {
    v16 = *(v0 + 64);
  }

  else
  {
    v16 = 0;
  }

  if (v15)
  {
    v17 = *(v0 + 72);
  }

  else
  {
    v17 = 0xE000000000000000;
  }

  MEMORY[0x223DA6030](32, 0xE100000000000000);
  MEMORY[0x223DA6030](0x203A6C6562614CLL, 0xE700000000000000);

  MEMORY[0x223DA6030](32, 0xE100000000000000);
  MEMORY[0x223DA6030](0x203A65707954, 0xE600000000000000);

  MEMORY[0x223DA6030](32, 0xE100000000000000);
  MEMORY[0x223DA6030](0x3A78203A636F4CLL, 0xE700000000000000);

  MEMORY[0x223DA6030](32, 0xE100000000000000);
  MEMORY[0x223DA6030](v16, v17);

  return v19;
}

uint64_t UIGroundingElement.deinit()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 88);

  sub_221C7083C(v0 + OBJC_IVAR____TtC11UIGrounding18UIGroundingElement_externalID);
  return v0;
}

uint64_t UIGroundingElement.__deallocating_deinit()
{
  v1 = v0[9];

  v2 = v0[11];

  sub_221C7083C(v0 + OBJC_IVAR____TtC11UIGrounding18UIGroundingElement_externalID);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

char *sub_221C6FE00@<X0>(uint64_t *a1@<X0>, char **a2@<X8>)
{
  result = sub_221C701F0(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_221C6FE50(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x64726F6F4378 && a2 == 0xE600000000000000;
  if (v3 || (sub_221C7B97C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64726F6F4379 && a2 == 0xE600000000000000 || (sub_221C7B97C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6874646977 && a2 == 0xE500000000000000 || (sub_221C7B97C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x746867696568 && a2 == 0xE600000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_221C7B97C();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

float sub_221C6FFA8(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE1640, &qword_221C7DC08);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v12[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_221C71164();
  sub_221C7BA1C();
  v12[15] = 0;
  sub_221C7B87C();
  v10 = v9;
  v12[14] = 1;
  sub_221C7B87C();
  v12[13] = 2;
  sub_221C7B87C();
  v12[12] = 3;
  sub_221C7B87C();
  (*(v3 + 8))(v7, v2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v10;
}

uint64_t sub_221C701A4()
{
  v0 = sub_221C7B7FC();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

char *sub_221C701F0(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE15C8, &qword_221C7D7C0);
  v4 = *(*(v3 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v3 - 8, v5);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v41 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE1650, &qword_221C7DC10);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v41 - v16;
  v18 = a1[3];
  v19 = a1[4];
  v51 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_221C70740();
  sub_221C7BA1C();
  if (!v1)
  {
    v20 = v11;
    v21 = v13;
    v22 = v8;
    v49 = 0;
    sub_221C7120C();
    v23 = v12;
    sub_221C7B89C();
    v24 = v50.i8[0];
    v49 = 1;
    sub_221C71260();
    sub_221C7B89C();
    v25 = v21;
    v48 = v50;
    v50.i8[0] = 2;
    v47 = sub_221C7B86C();
    v50.i8[0] = 4;
    v26 = sub_221C7B82C();
    v29 = v28;
    v46 = v26;
    v50.i8[0] = 5;
    v43 = sub_221C7B82C();
    v44 = v29;
    v45 = v30;
    v31 = sub_221C7B0FC();
    v50.i8[0] = 3;
    sub_221C712B4(&qword_27CFE1668);
    sub_221C7B84C();
    v50.i8[0] = 6;
    v32 = sub_221C7B83C();
    v33 = *(v25 + 8);
    v42 = v34;
    v33(v17, v23);
    v41 = vcvtq_f64_f32(*v48.f32);
    v48 = vcvt_hight_f64_f32(v48);
    sub_221C712F8(v20, v22);
    v35 = type metadata accessor for UIGroundingElement();
    v36 = *(v35 + 48);
    v37 = *(v35 + 52);
    v11 = swift_allocObject();
    *(v11 + 5) = 0u;
    *(v11 + 4) = 0u;
    (*(*(v31 - 8) + 56))(&v11[OBJC_IVAR____TtC11UIGrounding18UIGroundingElement_externalID], 1, 1, v31);
    v38 = &v11[OBJC_IVAR____TtC11UIGrounding18UIGroundingElement_elementID];
    *v38 = 0;
    v38[8] = 1;
    v11[16] = v24;
    *(v11 + 40) = v48;
    *(v11 + 24) = v41;
    v11[56] = v47 & 1;
    swift_beginAccess();
    *(v11 + 8) = v46;
    *(v11 + 9) = v44;
    swift_beginAccess();
    *(v11 + 10) = v43;
    *(v11 + 11) = v45;
    v39 = &v11[OBJC_IVAR____TtC11UIGrounding18UIGroundingElement_elementID];
    *v39 = v32;
    v39[8] = v42 & 1;
    v40 = OBJC_IVAR____TtC11UIGrounding18UIGroundingElement_externalID;
    swift_beginAccess();
    sub_221C6ED64(v22, &v11[v40]);
    swift_endAccess();
  }

  __swift_destroy_boxed_opaque_existential_1(v51);
  return v11;
}

unint64_t sub_221C70740()
{
  result = qword_27CFE15D8;
  if (!qword_27CFE15D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFE15D8);
  }

  return result;
}

unint64_t sub_221C70794()
{
  result = qword_27CFE15E0;
  if (!qword_27CFE15E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFE15E0);
  }

  return result;
}

unint64_t sub_221C707E8()
{
  result = qword_27CFE15E8;
  if (!qword_27CFE15E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFE15E8);
  }

  return result;
}

uint64_t sub_221C7083C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE15C8, &qword_221C7D7C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_221C708A8()
{
  result = qword_27CFE15F8;
  if (!qword_27CFE15F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFE15F8);
  }

  return result;
}

uint64_t sub_221C708FC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 72);
  *a2 = *(v3 + 64);
  a2[1] = v4;
}

uint64_t sub_221C7094C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 88);
  *a2 = *(v3 + 80);
  a2[1] = v4;
}

uint64_t sub_221C7099C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11UIGrounding18UIGroundingElement_externalID;
  swift_beginAccess();
  return sub_221C6EC94(v3 + v4, a2);
}

uint64_t getEnumTagSinglePayload for UIGroundingElementType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}