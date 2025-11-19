uint64_t sub_230D2CBC8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

__n128 __swift_memcpy34_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_230D2CC30(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 34))
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

uint64_t sub_230D2CC78(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 34) = 1;
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

    *(result + 34) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_230D2CD44()
{
  result = qword_27DB5AF48;
  if (!qword_27DB5AF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5AF48);
  }

  return result;
}

unint64_t sub_230D2CD9C()
{
  result = qword_27DB5AF50;
  if (!qword_27DB5AF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5AF50);
  }

  return result;
}

unint64_t sub_230D2CDF4()
{
  result = qword_27DB5AF58;
  if (!qword_27DB5AF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5AF58);
  }

  return result;
}

unint64_t sub_230D2CE4C()
{
  result = qword_27DB5AF60;
  if (!qword_27DB5AF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5AF60);
  }

  return result;
}

unint64_t sub_230D2CEA4()
{
  result = qword_27DB5AF68;
  if (!qword_27DB5AF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5AF68);
  }

  return result;
}

unint64_t sub_230D2CEFC()
{
  result = qword_27DB5AF70;
  if (!qword_27DB5AF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5AF70);
  }

  return result;
}

unint64_t sub_230D2CF54()
{
  result = qword_27DB5AF78;
  if (!qword_27DB5AF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5AF78);
  }

  return result;
}

unint64_t sub_230D2CFAC()
{
  result = qword_27DB5AF80;
  if (!qword_27DB5AF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5AF80);
  }

  return result;
}

unint64_t sub_230D2D004()
{
  result = qword_27DB5AF88;
  if (!qword_27DB5AF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5AF88);
  }

  return result;
}

unint64_t sub_230D2D05C()
{
  result = qword_2815660B8;
  if (!qword_2815660B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815660B8);
  }

  return result;
}

unint64_t sub_230D2D0B4()
{
  result = qword_2815660C0;
  if (!qword_2815660C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815660C0);
  }

  return result;
}

unint64_t sub_230D2D10C()
{
  result = qword_2815660D8;
  if (!qword_2815660D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815660D8);
  }

  return result;
}

unint64_t sub_230D2D164()
{
  result = qword_2815660E0;
  if (!qword_2815660E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815660E0);
  }

  return result;
}

unint64_t sub_230D2D1BC()
{
  result = qword_281566330;
  if (!qword_281566330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281566330);
  }

  return result;
}

unint64_t sub_230D2D214()
{
  result = qword_281566338;
  if (!qword_281566338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281566338);
  }

  return result;
}

uint64_t sub_230D2D268(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_230E698C0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000 || (sub_230E698C0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x73616C4361746164 && a2 == 0xE900000000000073 || (sub_230E698C0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x73656C626174 && a2 == 0xE600000000000000 || (sub_230E698C0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7265764F68746170 && a2 == 0xEC00000065646972)
  {

    return 4;
  }

  else
  {
    v6 = sub_230E698C0();

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

uint64_t sub_230D2D41C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_230E698C0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_230E698C0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x56746C7561666564 && a2 == 0xEC00000065756C61 || (sub_230E698C0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x62616C6C754E7369 && a2 == 0xEA0000000000656CLL || (sub_230E698C0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x657571696E557369 && a2 == 0xE800000000000000 || (sub_230E698C0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x72616D6972507369 && a2 == 0xEC00000079654B79 || (sub_230E698C0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000230E80FD0 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_230E698C0();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_230D2D67C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x636E657265666572 && a2 == 0xEF656C6261546465;
  if (v4 || (sub_230E698C0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000230E80FF0 == a2 || (sub_230E698C0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6574656C65446E6FLL && a2 == 0xE800000000000000 || (sub_230E698C0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6574616470556E6FLL && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_230E698C0();

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

unint64_t sub_230D2D7F0()
{
  result = qword_27DB5AF90;
  if (!qword_27DB5AF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5AF90);
  }

  return result;
}

unint64_t sub_230D2D844()
{
  result = qword_2815664D0;
  if (!qword_2815664D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815664D0);
  }

  return result;
}

uint64_t sub_230D2D9F8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_230D2DA58(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t UpsertIntoSQLDatabaseRequest.init(tableName:data:fieldsToUpdateOnConflict:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t UpsertIntoSQLDatabaseRequest.tableName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t UpsertIntoSQLDatabaseRequest.tableName.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t UpsertIntoSQLDatabaseRequest.data.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t UpsertIntoSQLDatabaseRequest.fieldsToUpdateOnConflict.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t sub_230D2DBFC()
{
  v1 = 1635017060;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000018;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6D614E656C626174;
  }
}

uint64_t sub_230D2DC58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_230D2EBA0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_230D2DC80(uint64_t a1)
{
  v2 = sub_230D2DF10();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230D2DCBC(uint64_t a1)
{
  v2 = sub_230D2DF10();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UpsertIntoSQLDatabaseRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5AFB0, &unk_230E6E0C0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v16 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = v1[2];
  v16 = v1[3];
  v17 = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D2DF10();
  sub_230E69A50();
  LOBYTE(v20) = 0;
  v13 = v18;
  sub_230E69810();
  if (!v13)
  {
    v14 = v16;
    v20 = v17;
    v19 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5AC10, &unk_230E6CAF0);
    sub_230D247CC();
    sub_230E69850();
    v20 = v14;
    v19 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5A6B0, &qword_230E72AC0);
    sub_230D0AD9C(&qword_27DB5A6C0);
    sub_230E697F0();
  }

  return (*(v4 + 8))(v8, v3);
}

unint64_t sub_230D2DF10()
{
  result = qword_27DB5AFB8;
  if (!qword_27DB5AFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5AFB8);
  }

  return result;
}

uint64_t UpsertIntoSQLDatabaseRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5AFC0, &qword_230E6E0D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v18 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D2DF10();
  sub_230E69A30();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v22) = 0;
  v12 = sub_230E69720();
  v14 = v13;
  v20 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5AC10, &unk_230E6CAF0);
  v21 = 1;
  sub_230D24A5C();
  sub_230E69760();
  v19 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5A6B0, &qword_230E72AC0);
  v21 = 2;
  sub_230D0AD9C(qword_27DB5A6C8);
  sub_230E69700();
  (*(v6 + 8))(v10, v5);
  v15 = v22;
  v16 = v19;
  *a2 = v20;
  a2[1] = v14;
  a2[2] = v16;
  a2[3] = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_230D2E2D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65737365636F7270 && a2 == 0xEE00746E756F4364)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_230E698C0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_230D2E368(uint64_t a1)
{
  v2 = sub_230D2E518();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230D2E3A4(uint64_t a1)
{
  v2 = sub_230D2E518();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UpsertIntoSQLDatabaseResponse.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5AFC8, &qword_230E6E0D8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D2E518();
  sub_230E69A50();
  sub_230E69860();
  return (*(v4 + 8))(v8, v3);
}

unint64_t sub_230D2E518()
{
  result = qword_27DB5AFD0;
  if (!qword_27DB5AFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5AFD0);
  }

  return result;
}

uint64_t UpsertIntoSQLDatabaseResponse.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5AFD8, &qword_230E6E0E0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v14 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D2E518();
  sub_230E69A30();
  if (!v2)
  {
    v12 = sub_230E69770();
    (*(v6 + 8))(v10, v5);
    *a2 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_230D2E6D8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5AFC8, &qword_230E6E0D8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D2E518();
  sub_230E69A50();
  sub_230E69860();
  return (*(v4 + 8))(v8, v3);
}

uint64_t getEnumTagSinglePayload for DatabaseType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DatabaseType(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_230D2E994()
{
  result = qword_27DB5AFE0;
  if (!qword_27DB5AFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5AFE0);
  }

  return result;
}

unint64_t sub_230D2E9EC()
{
  result = qword_27DB5AFE8;
  if (!qword_27DB5AFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5AFE8);
  }

  return result;
}

unint64_t sub_230D2EA44()
{
  result = qword_27DB5AFF0;
  if (!qword_27DB5AFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5AFF0);
  }

  return result;
}

unint64_t sub_230D2EA9C()
{
  result = qword_27DB5AFF8;
  if (!qword_27DB5AFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5AFF8);
  }

  return result;
}

unint64_t sub_230D2EAF4()
{
  result = qword_27DB5B000;
  if (!qword_27DB5B000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B000);
  }

  return result;
}

unint64_t sub_230D2EB4C()
{
  result = qword_27DB5B008;
  if (!qword_27DB5B008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B008);
  }

  return result;
}

uint64_t sub_230D2EBA0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D614E656C626174 && a2 == 0xE900000000000065;
  if (v4 || (sub_230E698C0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1635017060 && a2 == 0xE400000000000000 || (sub_230E698C0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000230E81010 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_230E698C0();

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

uint64_t ServicesIntelligenceProvider.getSQLDatabaseClient(domain:name:requestContext:)(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = *MEMORY[0x277D85DE8];
  *(v5 + 120) = a3;
  *(v5 + 128) = v4;
  *(v5 + 112) = a2;
  v8 = sub_230E68D80();
  *(v5 + 136) = v8;
  v9 = *(v8 - 8);
  *(v5 + 144) = v9;
  v10 = *(v9 + 64) + 15;
  *(v5 + 152) = swift_task_alloc();
  *(v5 + 653) = *a1;
  v11 = *(a4 + 16);
  *(v5 + 160) = *a4;
  *(v5 + 176) = v11;
  *(v5 + 192) = *(a4 + 32);
  v12 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230D2EDE0, v4, 0);
}

uint64_t sub_230D2EDE0()
{
  v36 = v0;
  v35[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 176);
  if (v1)
  {
    v3 = *(v0 + 184);
    v2 = *(v0 + 192);
    v5 = *(v0 + 160);
    v4 = *(v0 + 168);
    *(v0 + 208) = v1;
    *(v0 + 216) = v2;
    v6 = *(v0 + 152);
    v7 = *(v0 + 120);
    v8 = *(v0 + 128);
    *(v0 + 16) = v5;
    *(v0 + 24) = v4;
    *(v0 + 32) = v1;
    *(v0 + 40) = v3 & 1;
    v34 = v3 >> 8;
    *(v0 + 41) = BYTE1(v3);
    *(v0 + 48) = v2;

    sub_230D0585C(v5, v4, v1);
    sub_230E68D70();

    v9 = sub_230E68D60();
    v10 = sub_230E693E0();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v35[0] = v33;
      *v11 = 136315650;
      *(v11 + 4) = sub_230D7E620(0xD000000000000014, 0x8000000230E805F0, v35);
      *(v11 + 12) = 2080;
      *(v11 + 14) = sub_230D7E620(v4, v1, v35);
      *(v11 + 22) = 2080;
      v12 = RequestType.rawValue.getter();
      MEMORY[0x23191DA00](v12);

      v13 = sub_230D7E620(0x6C616E7265746E69, 0xE90000000000002ELL, v35);

      *(v11 + 24) = v13;
      _os_log_impl(&dword_230D02000, v9, v10, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v11, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x23191EAE0](v33, -1, -1);
      MEMORY[0x23191EAE0](v11, -1, -1);
    }

    if (v3 & 1) != 0 && ((v14 = RequestType.rawValue.getter(), v16 = v15, , LOBYTE(v14) = sub_230D33FDC(v14, v16, v2), , , (v14) || v34 >= 2u))
    {
      sub_230E68950();
      *(v0 + 224) = CFAbsoluteTimeGetCurrent();
      *(v0 + 272) = 0u;
      *(v0 + 288) = 0u;
      *(v0 + 304) = 0u;
      *(v0 + 320) = 0u;
      *(v0 + 336) = 0u;
      *(v0 + 352) = 0u;
      *(v0 + 368) = 0u;
      *(v0 + 384) = 0u;
      *(v0 + 400) = 0u;
      *(v0 + 416) = 0u;
      *(v0 + 432) = 0u;
      *(v0 + 448) = 0u;
      *(v0 + 464) = 0u;
      *(v0 + 480) = 0u;
      *(v0 + 496) = 0u;
      *(v0 + 512) = 0u;
      *(v0 + 528) = 0u;
      *(v0 + 544) = 0u;
      *(v0 + 560) = 0u;
      *(v0 + 576) = 0u;
      *(v0 + 592) = 0u;
      *(v0 + 608) = 0u;
      *(v0 + 624) = 0u;
      *(v0 + 640) = 0;
      *(v0 + 644) = 93;
      v22 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 272), (v0 + 644));
      *(v0 + 648) = v22;
      v23 = 0.0;
      if (!v22)
      {
        v24 = *(v0 + 320);
        v25 = *(v0 + 392);
        v26 = __CFADD__(v24, v25);
        v27 = v24 + v25;
        if (v26)
        {
          __break(1u);
        }

        v23 = vcvtd_n_f64_u64(v27, 0x14uLL);
      }

      *(v0 + 248) = v23;
      *(v0 + 104) = 0;
      v17 = swift_task_alloc();
      *(v0 + 256) = v17;
      *v17 = v0;
      v18 = sub_230D2FA20;
    }

    else
    {
      v17 = swift_task_alloc();
      *(v0 + 232) = v17;
      *v17 = v0;
      v18 = sub_230D2F8C8;
    }

    v17[1] = v18;
    v28 = *(v0 + 120);
    v29 = *(v0 + 128);
    v30 = *(v0 + 112);
    v31 = *(v0 + 653);
    v32 = *MEMORY[0x277D85DE8];

    return sub_230D2FFF0(v0 + 96, v31, v30, v28, v29, v0 + 16);
  }

  else
  {
    *(v0 + 652) = 16;
    v19 = swift_task_alloc();
    *(v0 + 200) = v19;
    *v19 = v0;
    v19[1] = sub_230D2F2EC;
    v20 = *MEMORY[0x277D85DE8];

    return static RequestContext.from(_:correlationID:)(v0 + 56, (v0 + 652), 0, 0);
  }
}

uint64_t sub_230D2F2EC()
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 200);
  v2 = *(*v0 + 128);
  v6 = *v0;

  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230D2F428, v2, 0);
}

uint64_t sub_230D2F428()
{
  v43 = v0;
  v42[1] = *MEMORY[0x277D85DE8];
  *(v0 + 16) = *(v0 + 56);
  v1 = v0 + 16;
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v5 = *(v0 + 81);
  v6 = *(v0 + 88);
  *(v1 + 192) = v3;
  *(v1 + 200) = v6;
  v7 = *(v1 + 168);
  v8 = *(v1 + 176);
  v10 = *(v1 + 152);
  v9 = *(v1 + 160);
  v11 = *(v1 + 136);
  v12 = *(v1 + 144);
  v13 = *(v1 + 104);
  v14 = *(v1 + 112);
  v39 = v2;
  *(v1 + 8) = v2;
  *(v1 + 16) = v3;
  v40 = v4;
  *(v1 + 24) = v4;
  v38 = v5;
  *(v1 + 25) = v5;
  *(v1 + 32) = v6;

  sub_230D0585C(v12, v10, v9);
  sub_230E68D70();

  v15 = sub_230E68D60();
  v16 = sub_230E693E0();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v42[0] = v18;
    *v17 = 136315650;
    *(v17 + 4) = sub_230D7E620(0xD000000000000014, 0x8000000230E805F0, v42);
    *(v17 + 12) = 2080;
    *(v17 + 14) = sub_230D7E620(v39, v3, v42);
    *(v17 + 22) = 2080;
    v19 = RequestType.rawValue.getter();
    MEMORY[0x23191DA00](v19);

    v20 = sub_230D7E620(0x6C616E7265746E69, 0xE90000000000002ELL, v42);

    *(v17 + 24) = v20;
    _os_log_impl(&dword_230D02000, v15, v16, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v17, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v18, -1, -1);
    MEMORY[0x23191EAE0](v17, -1, -1);

    if (!v40)
    {
      goto LABEL_7;
    }
  }

  else
  {

    if (!v40)
    {
LABEL_7:
      v24 = swift_task_alloc();
      *(v41 + 232) = v24;
      *v24 = v41;
      v24[1] = sub_230D2F8C8;
      v25 = *(v41 + 120);
      v26 = *(v41 + 128);
      v27 = *(v41 + 112);
      v28 = *(v41 + 653);
      goto LABEL_12;
    }
  }

  v21 = RequestType.rawValue.getter();
  v23 = v22;

  LOBYTE(v21) = sub_230D33FDC(v21, v23, v6);

  if ((v21 & 1) == 0 && v38 < 2)
  {
    goto LABEL_7;
  }

  sub_230E68950();
  *(v41 + 224) = CFAbsoluteTimeGetCurrent();
  *(v1 + 256) = 0u;
  *(v1 + 272) = 0u;
  *(v1 + 288) = 0u;
  *(v1 + 304) = 0u;
  *(v1 + 320) = 0u;
  *(v1 + 336) = 0u;
  *(v1 + 352) = 0u;
  *(v1 + 368) = 0u;
  *(v1 + 384) = 0u;
  *(v1 + 400) = 0u;
  *(v1 + 416) = 0u;
  *(v1 + 432) = 0u;
  *(v1 + 448) = 0u;
  *(v1 + 464) = 0u;
  *(v1 + 480) = 0u;
  *(v1 + 496) = 0u;
  *(v1 + 512) = 0u;
  *(v1 + 528) = 0u;
  *(v1 + 544) = 0u;
  *(v1 + 560) = 0u;
  *(v1 + 576) = 0u;
  *(v1 + 592) = 0u;
  *(v1 + 608) = 0u;
  *(v1 + 624) = 0;
  *(v41 + 644) = 93;
  v29 = task_info(*MEMORY[0x277D85F48], 0x16u, (v1 + 256), (v1 + 628));
  *(v41 + 648) = v29;
  v30 = 0.0;
  if (!v29)
  {
    v31 = *(v41 + 320);
    v32 = *(v41 + 392);
    v33 = __CFADD__(v31, v32);
    v34 = v31 + v32;
    if (v33)
    {
      __break(1u);
    }

    v30 = vcvtd_n_f64_u64(v34, 0x14uLL);
  }

  *(v41 + 248) = v30;
  *(v41 + 104) = 0;
  v35 = swift_task_alloc();
  *(v41 + 256) = v35;
  *v35 = v41;
  v35[1] = sub_230D2FA20;
  v25 = *(v41 + 120);
  v26 = *(v41 + 128);
  v27 = *(v41 + 112);
  v28 = *(v41 + 653);
LABEL_12:
  v36 = *MEMORY[0x277D85DE8];

  return sub_230D2FFF0(v1 + 80, v28, v27, v25, v26, v1);
}

uint64_t sub_230D2F8C8()
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 232);
  v4 = *v1;
  *(*v1 + 240) = v0;

  v5 = *(v2 + 128);
  if (v0)
  {
    v6 = sub_230D2FF08;
  }

  else
  {
    v6 = sub_230D2FE0C;
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_230D2FA20()
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 256);
  v4 = *v1;
  *(*v1 + 264) = v0;

  v5 = *(v2 + 128);
  if (v0)
  {
    v6 = sub_230D2FCA8;
  }

  else
  {
    v6 = sub_230D2FB78;
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_230D2FB78()
{
  v15 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  v4 = *(v0 + 144);
  v3 = *(v0 + 152);
  v6 = *(v0 + 128);
  v5 = *(v0 + 136);
  v7 = *(v0 + 120);
  sub_230D34594(16, *(v0 + 248), *(v0 + 648) != 0, v0 + 16, (v0 + 104), *(v0 + 224));
  (*(v4 + 8))(v3, v5);

  v8 = *(v0 + 208);
  v9 = *(v0 + 216);
  v10 = *(v0 + 152);
  v11 = *(v0 + 96);

  v12 = *(v0 + 8);
  v13 = *MEMORY[0x277D85DE8];

  return v12(v11);
}

uint64_t sub_230D2FCA8()
{
  v18 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 264);
  v2 = *(v0 + 248);
  v3 = *(v0 + 224);
  v16 = *(v0 + 208);
  v17 = *(v0 + 216);
  v5 = *(v0 + 144);
  v4 = *(v0 + 152);
  v6 = *(v0 + 136);
  v15 = *(v0 + 128);
  v7 = *(v0 + 120);
  v8 = *(v0 + 648) != 0;
  *(v0 + 104) = v1;
  swift_willThrow();
  v9 = v1;
  sub_230D34594(16, v2, v8, v0 + 16, (v0 + 104), v3);
  MEMORY[0x23191E910](v1);
  (*(v5 + 8))(v4, v6);

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  v10 = *(v0 + 264);
  v11 = *(v0 + 152);

  v12 = *(v0 + 8);
  v13 = *MEMORY[0x277D85DE8];

  return v12();
}

uint64_t sub_230D2FE0C()
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = v0[26];
  v2 = v0[27];
  v3 = v0[16];
  v4 = v0[15];
  (*(v0[18] + 8))(v0[19], v0[17]);

  v5 = v0[26];
  v6 = v0[27];
  v7 = v0[19];
  v8 = v0[12];

  v9 = v0[1];
  v10 = *MEMORY[0x277D85DE8];

  return v9(v8);
}

uint64_t sub_230D2FF08()
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = v0[26];
  v2 = v0[27];
  v3 = v0[16];
  v4 = v0[15];
  (*(v0[18] + 8))(v0[19], v0[17]);

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  v5 = v0[30];
  v6 = v0[19];

  v7 = v0[1];
  v8 = *MEMORY[0x277D85DE8];

  return v7();
}

uint64_t sub_230D2FFF0(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 416) = a5;
  *(v6 + 424) = a6;
  *(v6 + 400) = a3;
  *(v6 + 408) = a4;
  *(v6 + 241) = a2;
  *(v6 + 392) = a1;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5B030, &qword_230E6E700) - 8) + 64) + 15;
  *(v6 + 432) = swift_task_alloc();
  v9 = type metadata accessor for SQLDatabaseConfiguration();
  *(v6 + 440) = v9;
  v10 = *(v9 - 8);
  *(v6 + 448) = v10;
  v11 = *(v10 + 64) + 15;
  *(v6 + 456) = swift_task_alloc();
  *(v6 + 464) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_230D30104, a5, 0);
}

uint64_t sub_230D30104()
{
  v1 = *(v0 + 408);
  v2 = *(v0 + 416);
  swift_beginAccess();
  v3 = *(v2 + 112);
  v4 = *(v3 + 16);

  if (v4)
  {
    v6 = *(v0 + 400);
    v5 = *(v0 + 408);
    v7 = *(v0 + 241);

    v8 = sub_230DB4B4C(v7, v6, v5, 0);
    if (v9)
    {
      v10 = v8;
      v11 = *(v0 + 408);

      v12 = *(*(v3 + 56) + 8 * v10);

      v14 = *(v0 + 456);
      v13 = *(v0 + 464);
      v15 = *(v0 + 432);
      **(v0 + 392) = v12;

      v16 = *(v0 + 8);

      return v16();
    }
  }

  if (*(v0 + 241) > 4u)
  {
    *(v0 + 241);
  }

  else if (*(v0 + 241) <= 1u && !*(v0 + 241))
  {

    goto LABEL_12;
  }

  v18 = sub_230E698C0();

  if ((v18 & 1) == 0)
  {
LABEL_16:
    v22 = *(v0 + 424);
    sub_230D1CDE0(v22, v0 + 56);
    sub_230D1CDE0(v22, v0 + 96);

    v20 = swift_task_alloc();
    *(v0 + 496) = v20;
    *v20 = v0;
    v21 = sub_230D307BC;
    goto LABEL_17;
  }

LABEL_12:
  if ((*(v0 + 400) != 0x6D6574737973 || *(v0 + 408) != 0xE600000000000000) && (sub_230E698C0() & 1) == 0)
  {
    goto LABEL_16;
  }

  v19 = *(v0 + 424);
  sub_230D1CDE0(v19, v0 + 136);
  sub_230D1CDE0(v19, v0 + 176);

  v20 = swift_task_alloc();
  *(v0 + 472) = v20;
  *v20 = v0;
  v21 = sub_230D304B0;
LABEL_17:
  v20[1] = v21;
  v24 = *(v0 + 416);
  v23 = *(v0 + 424);

  return (sub_230D6F7D0)(39, v23);
}

uint64_t sub_230D304B0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 472);
  v6 = *v2;
  v4[60] = v1;

  v7 = v4[53];
  v8 = v4[52];
  if (v1)
  {
    sub_230D1CE3C(v7);
    v9 = sub_230D30728;
  }

  else
  {
    v4[61] = a1;
    sub_230D1CE3C(v7);
    v9 = sub_230D3060C;
  }

  return MEMORY[0x2822009F8](v9, v8, 0);
}

uint64_t sub_230D3060C()
{
  v1 = *(v0 + 488);
  v2 = *(v0 + 416);
  v4 = *(v0 + 400);
  v3 = *(v0 + 408);
  v5 = *(v0 + 241);
  sub_230D1CE3C(*(v0 + 424));
  swift_beginAccess();

  v6 = *(v2 + 112);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v2 + 112);
  *(v2 + 112) = 0x8000000000000000;
  sub_230E1B91C(v1, v5, v4, v3, 0, isUniquelyReferenced_nonNull_native);

  *(v2 + 112) = v13;
  swift_endAccess();
  v9 = *(v0 + 456);
  v8 = *(v0 + 464);
  v10 = *(v0 + 432);
  **(v0 + 392) = *(v0 + 488);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_230D30728()
{
  v1 = v0[51];
  sub_230D1CE3C(v0[53]);

  v2 = v0[60];
  v4 = v0[57];
  v3 = v0[58];
  v5 = v0[54];

  v6 = v0[1];

  return v6();
}

uint64_t sub_230D307BC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 496);
  v6 = *v2;
  *(v4 + 504) = a1;
  *(v4 + 512) = v1;

  v7 = *(v3 + 424);
  v8 = *(v3 + 416);
  sub_230D1CE3C(v7);
  if (v1)
  {
    v9 = sub_230D30AFC;
  }

  else
  {
    v9 = sub_230D3090C;
  }

  return MEMORY[0x2822009F8](v9, v8, 0);
}

uint64_t sub_230D3090C()
{
  sub_230D1CE3C(*(v0 + 424));
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  v1 = swift_task_alloc();
  *(v0 + 520) = v1;
  *v1 = v0;
  v1[1] = sub_230D309D0;
  v2 = *(v0 + 504);
  v3 = *(v0 + 432);
  v4 = *(v0 + 400);
  v5 = *(v0 + 408);
  v6 = *(v0 + 241);

  return sub_230D4F7B8(v3, v6, v4, v5, 0, v2, v0 + 16);
}

uint64_t sub_230D309D0()
{
  v2 = *v1;
  v3 = *(*v1 + 520);
  v4 = *v1;
  *(*v1 + 528) = v0;

  v5 = *(v2 + 416);
  if (v0)
  {
    v6 = sub_230D310BC;
  }

  else
  {
    v6 = sub_230D30CCC;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_230D30AFC()
{
  v1 = *(v0 + 408);
  sub_230D1CE3C(*(v0 + 424));

  v2 = *(v0 + 512);
  *(v0 + 376) = v2;
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D890, &qword_230E6C200);
  if (swift_dynamicCast())
  {
    MEMORY[0x23191E910](v2);
    v4 = *(v0 + 320);
    v5 = *(v0 + 328);
    v6 = *(v0 + 336);
    sub_230D0D224();
    swift_allocError();
    *v7 = v4;
    *(v7 + 8) = v5;
    *(v7 + 16) = v6;
    swift_willThrow();
    v8 = *(v0 + 376);
  }

  else
  {
    MEMORY[0x23191E910](*(v0 + 376));
    sub_230E69540();
    *(v0 + 344) = 0;
    *(v0 + 352) = 0xE000000000000000;
    MEMORY[0x23191DA00](0xD000000000000028, 0x8000000230E81130);
    *(v0 + 384) = v2;
    sub_230E695F0();
    v9 = *(v0 + 344);
    v10 = *(v0 + 352);
    sub_230D0D224();
    swift_allocError();
    *v11 = v9;
    *(v11 + 8) = v10;
    *(v11 + 16) = 2;
    swift_willThrow();
    v8 = v2;
  }

  MEMORY[0x23191E910](v8);
  v13 = *(v0 + 456);
  v12 = *(v0 + 464);
  v14 = *(v0 + 432);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_230D30CCC()
{
  v1 = *(v0 + 432);
  if ((*(*(v0 + 448) + 48))(v1, 1, *(v0 + 440)) == 1)
  {
    v2 = *(v0 + 504);
    v4 = *(v0 + 400);
    v3 = *(v0 + 408);
    v5 = *(v0 + 241);
    sub_230D3C98C(v1);
    sub_230E69540();
    *(v0 + 360) = 0;
    *(v0 + 368) = 0xE000000000000000;
    MEMORY[0x23191DA00](0xD000000000000025, 0x8000000230E81160);
    *(v0 + 216) = v5;
    *(v0 + 224) = v4;
    *(v0 + 232) = v3;
    *(v0 + 240) = 0;
    sub_230E695F0();

    v6 = *(v0 + 360);
    v7 = *(v0 + 368);
    sub_230D0D224();
    v8 = swift_allocError();
    *v9 = v6;
    *(v9 + 8) = v7;
    *(v9 + 16) = 3;
    swift_willThrow();

LABEL_5:
    *(v0 + 376) = v8;
    v19 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D890, &qword_230E6C200);
    if (swift_dynamicCast())
    {
      MEMORY[0x23191E910](v8);
      v20 = *(v0 + 320);
      v21 = *(v0 + 328);
      v22 = *(v0 + 336);
      sub_230D0D224();
      swift_allocError();
      *v23 = v20;
      *(v23 + 8) = v21;
      *(v23 + 16) = v22;
      swift_willThrow();
      v24 = *(v0 + 376);
    }

    else
    {
      MEMORY[0x23191E910](*(v0 + 376));
      sub_230E69540();
      *(v0 + 344) = 0;
      *(v0 + 352) = 0xE000000000000000;
      MEMORY[0x23191DA00](0xD000000000000028, 0x8000000230E81130);
      *(v0 + 384) = v8;
      sub_230E695F0();
      v25 = *(v0 + 344);
      v26 = *(v0 + 352);
      sub_230D0D224();
      swift_allocError();
      *v27 = v25;
      *(v27 + 8) = v26;
      *(v27 + 16) = 2;
      swift_willThrow();
      v24 = v8;
    }

    MEMORY[0x23191E910](v24);
    v29 = *(v0 + 456);
    v28 = *(v0 + 464);
    v30 = *(v0 + 432);

    v31 = *(v0 + 8);
    goto LABEL_9;
  }

  v10 = *(v0 + 528);
  v12 = *(v0 + 456);
  v11 = *(v0 + 464);
  sub_230D3C9F4(v1, v11);
  sub_230D1CF5C(v11, v12);
  v13 = type metadata accessor for SQLDatabaseClient();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v16 = sub_230D3CAF0(v12);
  if (v10)
  {
    v8 = v10;
    v17 = *(v0 + 504);
    v18 = *(v0 + 408);
    sub_230D1CFC0(*(v0 + 464));

    goto LABEL_5;
  }

  v33 = v16;
  v34 = *(v0 + 504);
  v35 = *(v0 + 464);
  v36 = *(v0 + 408);
  v37 = *(v0 + 416);
  v38 = *(v0 + 400);
  v39 = *(v0 + 241);
  swift_beginAccess();

  v40 = *(v37 + 112);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v45 = *(v37 + 112);
  *(v37 + 112) = 0x8000000000000000;
  sub_230E1B91C(v33, v39, v38, v36, 0, isUniquelyReferenced_nonNull_native);

  *(v37 + 112) = v45;
  swift_endAccess();

  sub_230D1CFC0(v35);
  v43 = *(v0 + 456);
  v42 = *(v0 + 464);
  v44 = *(v0 + 432);
  **(v0 + 392) = v33;

  v31 = *(v0 + 8);
LABEL_9:

  return v31();
}

uint64_t sub_230D310BC()
{
  v1 = *(v0 + 504);
  v2 = *(v0 + 408);

  v3 = *(v0 + 528);
  *(v0 + 376) = v3;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D890, &qword_230E6C200);
  if (swift_dynamicCast())
  {
    MEMORY[0x23191E910](v3);
    v5 = *(v0 + 320);
    v6 = *(v0 + 328);
    v7 = *(v0 + 336);
    sub_230D0D224();
    swift_allocError();
    *v8 = v5;
    *(v8 + 8) = v6;
    *(v8 + 16) = v7;
    swift_willThrow();
    v9 = *(v0 + 376);
  }

  else
  {
    MEMORY[0x23191E910](*(v0 + 376));
    sub_230E69540();
    *(v0 + 344) = 0;
    *(v0 + 352) = 0xE000000000000000;
    MEMORY[0x23191DA00](0xD000000000000028, 0x8000000230E81130);
    *(v0 + 384) = v3;
    sub_230E695F0();
    v10 = *(v0 + 344);
    v11 = *(v0 + 352);
    sub_230D0D224();
    swift_allocError();
    *v12 = v10;
    *(v12 + 8) = v11;
    *(v12 + 16) = 2;
    swift_willThrow();
    v9 = v3;
  }

  MEMORY[0x23191E910](v9);
  v14 = *(v0 + 456);
  v13 = *(v0 + 464);
  v15 = *(v0 + 432);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t ServicesIntelligenceProvider.getSQLDatabaseClient(name:requestContext:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 64) = a2;
  *(v4 + 72) = v3;
  *(v4 + 56) = a1;
  v5 = *(a3 + 16);
  *(v4 + 80) = *a3;
  *(v4 + 96) = v5;
  *(v4 + 112) = *(a3 + 32);
  return MEMORY[0x2822009F8](sub_230D312C0, v3, 0);
}

uint64_t sub_230D312C0()
{
  sub_230DCB5D4((v0 + 136));
  v1 = *(v0 + 112);
  *(v0 + 137) = *(v0 + 136);
  v2 = *(v0 + 96);
  *(v0 + 16) = *(v0 + 80);
  *(v0 + 32) = v2;
  *(v0 + 48) = v1;
  v3 = swift_task_alloc();
  *(v0 + 120) = v3;
  *v3 = v0;
  v3[1] = sub_230D313D0;
  v4 = *(v0 + 64);
  v5 = *(v0 + 72);
  v6 = *(v0 + 56);

  return ServicesIntelligenceProvider.getSQLDatabaseClient(domain:name:requestContext:)((v0 + 137), v6, v4, v0 + 16);
}

uint64_t sub_230D313D0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 120);
  v6 = *v2;
  *(*v2 + 128) = v1;

  if (v1)
  {
    v7 = *(v4 + 72);

    return MEMORY[0x2822009F8](sub_230D31520, v7, 0);
  }

  else
  {
    v8 = *(v6 + 8);

    return v8(a1);
  }
}

uint64_t sub_230D31538(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  *(v4 + 120) = *a3;
  *(v4 + 104) = a2;
  *(v4 + 112) = v3;
  *(v4 + 96) = a1;
  *(v4 + 136) = v5;
  *(v4 + 152) = *(a3 + 32);
  return MEMORY[0x2822009F8](sub_230D31570, v3, 0);
}

uint64_t sub_230D31570()
{
  v1 = *(v0 + 136);
  if (v1)
  {
    v3 = *(v0 + 144);
    v2 = *(v0 + 152);
    v4 = *(v0 + 120);
    v5 = *(v0 + 128);
    *(v0 + 168) = v1;
    *(v0 + 176) = v2;
    *(v0 + 16) = v4;
    *(v0 + 24) = v5;
    *(v0 + 32) = v1;
    *(v0 + 40) = v3 & 1;
    *(v0 + 41) = BYTE1(v3);
    *(v0 + 48) = v2;
    v6 = swift_task_alloc();
    *(v0 + 184) = v6;
    *(v6 + 16) = *(v0 + 104);
    *(v6 + 32) = v0 + 16;
    sub_230D0585C(v4, v5, v1);
    v7 = swift_task_alloc();
    *(v0 + 192) = v7;
    *v7 = v0;
    v7[1] = sub_230D319C0;
    v8 = *(v0 + 112);
    v9 = *(v0 + 96);

    return sub_230D123C8(v9, 4, v0 + 16, &unk_230E6E500, v6);
  }

  else
  {
    *(v0 + 200) = 4;
    v11 = swift_task_alloc();
    *(v0 + 160) = v11;
    *v11 = v0;
    v11[1] = sub_230D31758;

    return static RequestContext.from(_:correlationID:)(v0 + 56, (v0 + 200), 0, 0);
  }
}

uint64_t sub_230D31758()
{
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 112);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_230D31868, v2, 0);
}

uint64_t sub_230D31868()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v5 = *(v0 + 81);
  v6 = *(v0 + 88);
  *(v0 + 168) = v3;
  *(v0 + 176) = v6;
  v8 = *(v0 + 144);
  v7 = *(v0 + 152);
  v10 = *(v0 + 128);
  v9 = *(v0 + 136);
  *(v0 + 16) = v1;
  v11 = *(v0 + 120);
  *(v0 + 24) = v2;
  *(v0 + 32) = v3;
  *(v0 + 40) = v4;
  *(v0 + 41) = v5;
  *(v0 + 48) = v6;
  v12 = swift_task_alloc();
  *(v0 + 184) = v12;
  *(v12 + 16) = *(v0 + 104);
  *(v12 + 32) = v0 + 16;
  sub_230D0585C(v11, v10, v9);
  v13 = swift_task_alloc();
  *(v0 + 192) = v13;
  *v13 = v0;
  v13[1] = sub_230D319C0;
  v14 = *(v0 + 112);
  v15 = *(v0 + 96);

  return sub_230D123C8(v15, 4, v0 + 16, &unk_230E6E500, v12);
}

uint64_t sub_230D319C0()
{
  v1 = *(*v0 + 192);
  v2 = *(*v0 + 184);
  v3 = *(*v0 + 176);
  v4 = *(*v0 + 168);
  v7 = *v0;

  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_230D31B10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = *MEMORY[0x277D85DE8];
  v4[45] = a3;
  v4[46] = a4;
  v4[43] = a1;
  v4[44] = a2;
  v6 = sub_230E68D80();
  v4[47] = v6;
  v7 = *(v6 - 8);
  v4[48] = v7;
  v8 = *(v7 + 64) + 15;
  v4[49] = swift_task_alloc();
  v4[50] = swift_task_alloc();
  v9 = sub_230E68860();
  v4[51] = v9;
  v10 = *(v9 - 8);
  v4[52] = v10;
  v11 = *(v10 + 64) + 15;
  v4[53] = swift_task_alloc();
  v12 = *(*(type metadata accessor for SQLDatabaseConfiguration() - 8) + 64) + 15;
  v4[54] = swift_task_alloc();
  v13 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230D31CA0, a3, 0);
}

uint64_t sub_230D31CA0()
{
  v37 = v0;
  v36[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 424);
  sub_230D1CF5C(*(v0 + 352), *(v0 + 432));
  SQLDatabaseConfiguration.path.getter(v1);
  v2 = *(v0 + 432);
  v3 = *(v0 + 400);
  v4 = *(v0 + 360);
  v5 = *(v0 + 368);
  v6 = *(v2 + 16);
  v8 = *v2;
  v7 = *(v2 + 8);
  *(v0 + 440) = v7;
  sub_230D1CDE0(v5, v0 + 16);
  sub_230D1CDE0(v5, v0 + 56);

  sub_230E68D70();
  sub_230D1CDE0(v5, v0 + 96);
  v9 = sub_230E68D60();
  v10 = sub_230E693E0();
  sub_230D1CE3C(v5);
  if (os_log_type_enabled(v9, v10))
  {
    v11 = *(v0 + 368);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v36[0] = v13;
    *v12 = 136315650;
    *(v12 + 4) = sub_230D7E620(0xD000000000000014, 0x8000000230E805F0, v36);
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_230D7E620(*(v11 + 1), *(v11 + 2), v36);
    *(v12 + 22) = 2080;
    v35 = *v11;
    v14 = RequestType.rawValue.getter();
    MEMORY[0x23191DA00](v14);

    v15 = sub_230D7E620(0x6C616E7265746E69, 0xE90000000000002ELL, v36);

    *(v12 + 24) = v15;
    _os_log_impl(&dword_230D02000, v9, v10, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v12, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v13, -1, -1);
    MEMORY[0x23191EAE0](v12, -1, -1);
  }

  v16 = *(v0 + 368);
  *(v0 + 256) = *(v16 + 24);
  *(v0 + 1376) = *v16;
  v17 = *(v0 + 256);
  *(v0 + 1377) = v17;
  v18 = *(v0 + 257);
  *(v0 + 1378) = v18;
  v19 = *(v0 + 264);
  *(v0 + 448) = v19;
  if (v17 & 1) != 0 && ((v20 = RequestType.rawValue.getter(), v22 = v21, sub_230D1CE90(v0 + 256, v0 + 304), LOBYTE(v20) = sub_230D33FDC(v20, v22, v19), , sub_230D1F9CC(v0 + 256), (v20) || v18 >= 2))
  {
    sub_230E68950();
    *(v0 + 456) = CFAbsoluteTimeGetCurrent();
    *(v0 + 988) = 0u;
    *(v0 + 1004) = 0u;
    *(v0 + 1020) = 0u;
    *(v0 + 1036) = 0u;
    *(v0 + 1052) = 0u;
    *(v0 + 1068) = 0u;
    *(v0 + 1084) = 0u;
    *(v0 + 1100) = 0u;
    *(v0 + 1116) = 0u;
    *(v0 + 1132) = 0u;
    *(v0 + 1148) = 0u;
    *(v0 + 1164) = 0u;
    *(v0 + 1180) = 0u;
    *(v0 + 1196) = 0u;
    *(v0 + 1212) = 0u;
    *(v0 + 1228) = 0u;
    *(v0 + 1244) = 0u;
    *(v0 + 1260) = 0u;
    *(v0 + 1276) = 0u;
    *(v0 + 1292) = 0u;
    *(v0 + 1308) = 0u;
    *(v0 + 1324) = 0u;
    *(v0 + 1340) = 0u;
    *(v0 + 1356) = 0;
    *(v0 + 1364) = 93;
    v25 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 988), (v0 + 1364));
    *(v0 + 1368) = v25;
    v26 = 0.0;
    if (!v25)
    {
      v27 = *(v0 + 1036);
      v28 = *(v0 + 1108);
      v29 = __CFADD__(v27, v28);
      v30 = v27 + v28;
      if (v29)
      {
        __break(1u);
      }

      v26 = vcvtd_n_f64_u64(v30, 0x14uLL);
    }

    *(v0 + 480) = v26;
    *(v0 + 336) = 0;
    v23 = swift_task_alloc();
    *(v0 + 488) = v23;
    *v23 = v0;
    v24 = sub_230D322F8;
  }

  else
  {
    v23 = swift_task_alloc();
    *(v0 + 464) = v23;
    *v23 = v0;
    v24 = sub_230D321A0;
  }

  v23[1] = v24;
  v31 = *(v0 + 360);
  v32 = *(v0 + 368);
  v33 = *MEMORY[0x277D85DE8];

  return sub_230D2FFF0(v0 + 320, v6, v8, v7, v31, v32);
}

uint64_t sub_230D321A0()
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 464);
  v4 = *v1;
  *(*v1 + 472) = v0;

  v5 = *(v2 + 360);
  if (v0)
  {
    v6 = sub_230D32CEC;
  }

  else
  {
    v6 = sub_230D32BEC;
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_230D322F8()
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 488);
  v4 = *v1;
  *(*v1 + 496) = v0;

  v5 = *(v2 + 360);
  if (v0)
  {
    v6 = sub_230D32584;
  }

  else
  {
    v6 = sub_230D32450;
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_230D32450()
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 440);
  v2 = *(v0 + 400);
  v3 = *(v0 + 376);
  v4 = *(v0 + 384);
  v5 = *(v0 + 368);
  sub_230D34594(16, *(v0 + 480), *(v0 + 1368) != 0, v5, (v0 + 336), *(v0 + 456));
  v6 = *(v4 + 8);
  v6(v2, v3);

  sub_230D1CE3C(v5);
  v7 = *(v0 + 432);
  v8 = *(v0 + 368);
  v9 = *(v0 + 320);
  *(v0 + 504) = v6;
  *(v0 + 512) = v9;
  sub_230D1CE3C(v8);
  *(v0 + 520) = *(v7 + 24);
  sub_230D1CDE0(v8, v0 + 136);
  v10 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230D32720, v9, 0);
}

uint64_t sub_230D32584()
{
  v22 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 496);
  v2 = *(v0 + 480);
  v3 = *(v0 + 456);
  v21 = *(v0 + 440);
  v4 = *(v0 + 400);
  v6 = *(v0 + 376);
  v5 = *(v0 + 384);
  v8 = *(v0 + 360);
  v7 = *(v0 + 368);
  v9 = *(v0 + 1368) != 0;
  *(v0 + 336) = v1;
  swift_willThrow();
  v10 = v1;
  sub_230D34594(16, v2, v9, v7, (v0 + 336), v3);
  MEMORY[0x23191E910](v1);
  (*(v5 + 8))(v4, v6);

  sub_230D1CE3C(v7);
  v11 = *(v0 + 496);
  v13 = *(v0 + 416);
  v12 = *(v0 + 424);
  v14 = *(v0 + 408);
  sub_230D1CE3C(*(v0 + 368));
  (*(v13 + 8))(v12, v14);
  v15 = *(v0 + 424);
  v17 = *(v0 + 392);
  v16 = *(v0 + 400);
  sub_230D1CFC0(*(v0 + 432));

  v18 = *(v0 + 8);
  v19 = *MEMORY[0x277D85DE8];

  return v18();
}

uint64_t sub_230D32720()
{
  v36 = v0;
  v35[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 520);
  v2 = v1[2];
  *(v0 + 528) = v2;
  if (v2)
  {
    v3 = *(v0 + 368);
    *(v0 + 536) = 0;
    v4 = *(v0 + 512);
    v5 = *(v0 + 392);
    v7 = v1[4];
    v6 = v1[5];
    *(v0 + 544) = v6;
    v8 = v1[6];
    *(v0 + 552) = v8;

    sub_230D1CDE0(v3, v0 + 176);

    sub_230E68D70();
    sub_230D1CDE0(v3, v0 + 216);
    v9 = sub_230E68D60();
    v10 = sub_230E693E0();
    sub_230D1CE3C(v3);
    if (os_log_type_enabled(v9, v10))
    {
      v34 = *(v0 + 1376);
      v11 = *(v0 + 368);
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v35[0] = v13;
      *v12 = 136315650;
      *(v12 + 4) = sub_230D7E620(0x5153657461657263, 0xEE00656C6261544CLL, v35);
      *(v12 + 12) = 2080;
      *(v12 + 14) = sub_230D7E620(*(v11 + 8), *(v11 + 16), v35);
      *(v12 + 22) = 2080;
      *(v0 + 288) = 0x6C616E7265746E69;
      *(v0 + 296) = 0xE90000000000002ELL;
      v14 = RequestType.rawValue.getter();
      MEMORY[0x23191DA00](v14);

      v15 = sub_230D7E620(*(v0 + 288), *(v0 + 296), v35);

      *(v12 + 24) = v15;
      _os_log_impl(&dword_230D02000, v9, v10, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v12, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x23191EAE0](v13, -1, -1);
      MEMORY[0x23191EAE0](v12, -1, -1);
    }

    if ((*(v0 + 1377) & 1) == 0)
    {
      goto LABEL_7;
    }

    v16 = *(v0 + 448);
    v17 = *(v0 + 1378);
    LOBYTE(v35[0]) = *(v0 + 1376);
    v18 = RequestType.rawValue.getter();
    v20 = v19;
    sub_230D1CE90(v0 + 256, v0 + 272);
    LOBYTE(v18) = sub_230D33FDC(v18, v20, v16);

    sub_230D1F9CC(v0 + 256);
    if ((v18 & 1) != 0 || v17 >= 2)
    {
      sub_230E68950();
      *(v0 + 560) = CFAbsoluteTimeGetCurrent();
      *(v0 + 616) = 0u;
      *(v0 + 632) = 0u;
      *(v0 + 648) = 0u;
      *(v0 + 664) = 0u;
      *(v0 + 680) = 0u;
      *(v0 + 696) = 0u;
      *(v0 + 712) = 0u;
      *(v0 + 728) = 0u;
      *(v0 + 744) = 0u;
      *(v0 + 760) = 0u;
      *(v0 + 776) = 0u;
      *(v0 + 792) = 0u;
      *(v0 + 808) = 0u;
      *(v0 + 824) = 0u;
      *(v0 + 840) = 0u;
      *(v0 + 856) = 0u;
      *(v0 + 872) = 0u;
      *(v0 + 888) = 0u;
      *(v0 + 904) = 0u;
      *(v0 + 920) = 0u;
      *(v0 + 936) = 0u;
      *(v0 + 952) = 0u;
      *(v0 + 968) = 0u;
      *(v0 + 984) = 0;
      *(v0 + 1360) = 93;
      v25 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 616), (v0 + 1360));
      *(v0 + 1372) = v25;
      v26 = 0.0;
      if (!v25)
      {
        v27 = *(v0 + 664);
        v28 = *(v0 + 736);
        v29 = __CFADD__(v27, v28);
        v30 = v27 + v28;
        if (v29)
        {
          __break(1u);
        }

        v26 = vcvtd_n_f64_u64(v30, 0x14uLL);
      }

      *(v0 + 584) = v26;
      *(v0 + 328) = 0;
      v21 = swift_task_alloc();
      *(v0 + 592) = v21;
      *v21 = v0;
      v22 = sub_230D33068;
    }

    else
    {
LABEL_7:
      v21 = swift_task_alloc();
      *(v0 + 568) = v21;
      *v21 = v0;
      v22 = sub_230D32F10;
    }

    v21[1] = v22;
    v31 = *(v0 + 512);
    v32 = *MEMORY[0x277D85DE8];

    return sub_230D3D310(v21, v31, v7, v6, v8);
  }

  else
  {
    v23 = *(v0 + 360);
    sub_230D1CE3C(*(v0 + 368));
    v24 = *MEMORY[0x277D85DE8];

    return MEMORY[0x2822009F8](sub_230D32E14, v23, 0);
  }
}

uint64_t sub_230D32BEC()
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = v0[55];
  v3 = v0[45];
  v2 = v0[46];
  v4 = *(v0[48] + 8);
  v4(v0[50], v0[47]);

  sub_230D1CE3C(v2);
  v5 = v0[54];
  v6 = v0[46];
  v7 = v0[40];
  v0[63] = v4;
  v0[64] = v7;
  sub_230D1CE3C(v6);
  v0[65] = *(v5 + 24);
  sub_230D1CDE0(v6, (v0 + 17));
  v8 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230D32720, v7, 0);
}

uint64_t sub_230D32CEC()
{
  v14 = *MEMORY[0x277D85DE8];
  v1 = v0[55];
  v3 = v0[45];
  v2 = v0[46];
  (*(v0[48] + 8))(v0[50], v0[47]);

  sub_230D1CE3C(v2);
  v4 = v0[59];
  v6 = v0[52];
  v5 = v0[53];
  v7 = v0[51];
  sub_230D1CE3C(v0[46]);
  (*(v6 + 8))(v5, v7);
  v8 = v0[53];
  v10 = v0[49];
  v9 = v0[50];
  sub_230D1CFC0(v0[54]);

  v11 = v0[1];
  v12 = *MEMORY[0x277D85DE8];

  return v11();
}

uint64_t sub_230D32E14()
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = v0[64];
  v2 = v0[53];
  v3 = v0[54];
  v4 = v0[51];
  v5 = v0[52];
  v7 = v0[49];
  v6 = v0[50];
  v8 = v0[43];

  (*(v5 + 32))(v8, v2, v4);
  sub_230D1CFC0(v3);

  v9 = v0[1];
  v10 = *MEMORY[0x277D85DE8];

  return v9();
}

uint64_t sub_230D32F10()
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 568);
  v4 = *v1;
  *(*v1 + 576) = v0;

  v5 = *(v2 + 512);
  if (v0)
  {
    v6 = sub_230D33ED4;
  }

  else
  {
    v6 = sub_230D33998;
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_230D33068()
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 592);
  v4 = *v1;
  *(*v1 + 600) = v0;

  v5 = *(v2 + 512);
  if (v0)
  {
    v6 = sub_230D33728;
  }

  else
  {
    v6 = sub_230D331C0;
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_230D331C0()
{
  v50 = v0;
  v49[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 552);
  v2 = *(v0 + 544);
  v4 = *(v0 + 504);
  v3 = *(v0 + 512);
  v5 = *(v0 + 392);
  v7 = *(v0 + 368);
  v6 = *(v0 + 376);
  v8 = *(v0 + 384) + 8;
  sub_230D34A54(5, *(v0 + 584), *(v0 + 1372) != 0, v7, (v0 + 328), *(v0 + 560));
  v4(v5, v6);

  sub_230D1CE3C(v7);
  v9 = *(v0 + 552);
  v10 = *(v0 + 544);
  v11 = *(v0 + 536);
  v12 = *(v0 + 528);

  if (v11 + 1 == v12)
  {
    v13 = *(v0 + 360);
    sub_230D1CE3C(*(v0 + 368));
    v14 = *MEMORY[0x277D85DE8];

    return MEMORY[0x2822009F8](sub_230D32E14, v13, 0);
  }

  else
  {
    v15 = *(v0 + 536);
    *(v0 + 536) = v15 + 1;
    v16 = *(v0 + 512);
    v17 = *(v0 + 392);
    v18 = *(v0 + 368);
    v19 = (*(v0 + 520) + 24 * v15);
    v21 = v19[7];
    v20 = v19[8];
    *(v0 + 544) = v20;
    v22 = v19[9];
    *(v0 + 552) = v22;

    sub_230D1CDE0(v18, v0 + 176);

    sub_230E68D70();
    sub_230D1CDE0(v18, v0 + 216);
    v23 = sub_230E68D60();
    v24 = sub_230E693E0();
    sub_230D1CE3C(v18);
    if (os_log_type_enabled(v23, v24))
    {
      v25 = *(v0 + 1376);
      v26 = *(v0 + 368);
      v27 = swift_slowAlloc();
      v48 = v21;
      v28 = swift_slowAlloc();
      v49[0] = v28;
      *v27 = 136315650;
      *(v27 + 4) = sub_230D7E620(0x5153657461657263, 0xEE00656C6261544CLL, v49);
      *(v27 + 12) = 2080;
      *(v27 + 14) = sub_230D7E620(*(v26 + 8), *(v26 + 16), v49);
      *(v27 + 22) = 2080;
      *(v0 + 288) = 0x6C616E7265746E69;
      *(v0 + 296) = 0xE90000000000002ELL;
      v29 = RequestType.rawValue.getter();
      MEMORY[0x23191DA00](v29);

      v30 = sub_230D7E620(*(v0 + 288), *(v0 + 296), v49);

      *(v27 + 24) = v30;
      _os_log_impl(&dword_230D02000, v23, v24, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v27, 0x20u);
      swift_arrayDestroy();
      v31 = v28;
      v21 = v48;
      MEMORY[0x23191EAE0](v31, -1, -1);
      MEMORY[0x23191EAE0](v27, -1, -1);
    }

    if ((*(v0 + 1377) & 1) == 0)
    {
      goto LABEL_10;
    }

    v32 = *(v0 + 448);
    v33 = *(v0 + 1378);
    LOBYTE(v49[0]) = *(v0 + 1376);
    v34 = RequestType.rawValue.getter();
    v36 = v35;
    sub_230D1CE90(v0 + 256, v0 + 272);
    LOBYTE(v34) = sub_230D33FDC(v34, v36, v32);

    sub_230D1F9CC(v0 + 256);
    if ((v34 & 1) != 0 || v33 >= 2)
    {
      sub_230E68950();
      *(v0 + 560) = CFAbsoluteTimeGetCurrent();
      *(v0 + 616) = 0u;
      *(v0 + 632) = 0u;
      *(v0 + 648) = 0u;
      *(v0 + 664) = 0u;
      *(v0 + 680) = 0u;
      *(v0 + 696) = 0u;
      *(v0 + 712) = 0u;
      *(v0 + 728) = 0u;
      *(v0 + 744) = 0u;
      *(v0 + 760) = 0u;
      *(v0 + 776) = 0u;
      *(v0 + 792) = 0u;
      *(v0 + 808) = 0u;
      *(v0 + 824) = 0u;
      *(v0 + 840) = 0u;
      *(v0 + 856) = 0u;
      *(v0 + 872) = 0u;
      *(v0 + 888) = 0u;
      *(v0 + 904) = 0u;
      *(v0 + 920) = 0u;
      *(v0 + 936) = 0u;
      *(v0 + 952) = 0u;
      *(v0 + 968) = 0u;
      *(v0 + 984) = 0;
      *(v0 + 1360) = 93;
      v39 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 616), (v0 + 1360));
      *(v0 + 1372) = v39;
      v40 = 0.0;
      if (!v39)
      {
        v41 = *(v0 + 664);
        v42 = *(v0 + 736);
        v43 = __CFADD__(v41, v42);
        v44 = v41 + v42;
        if (v43)
        {
          __break(1u);
        }

        v40 = vcvtd_n_f64_u64(v44, 0x14uLL);
      }

      *(v0 + 584) = v40;
      *(v0 + 328) = 0;
      v37 = swift_task_alloc();
      *(v0 + 592) = v37;
      *v37 = v0;
      v38 = sub_230D33068;
    }

    else
    {
LABEL_10:
      v37 = swift_task_alloc();
      *(v0 + 568) = v37;
      *v37 = v0;
      v38 = sub_230D32F10;
    }

    v37[1] = v38;
    v45 = *(v0 + 512);
    v46 = *MEMORY[0x277D85DE8];

    return sub_230D3D310(v37, v45, v21, v20, v22);
  }
}

uint64_t sub_230D33728()
{
  v20 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 600);
  v2 = *(v0 + 584);
  v3 = *(v0 + 560);
  v18 = *(v0 + 544);
  v19 = *(v0 + 552);
  v4 = *(v0 + 504);
  v17 = *(v0 + 512);
  v5 = *(v0 + 392);
  v7 = *(v0 + 368);
  v6 = *(v0 + 376);
  v8 = *(v0 + 1372) != 0;
  v9 = *(v0 + 384) + 8;
  *(v0 + 328) = v1;
  swift_willThrow();
  v10 = v1;
  sub_230D34A54(5, v2, v8, v7, (v0 + 328), v3);
  MEMORY[0x23191E910](v1);
  v4(v5, v6);

  sub_230D1CE3C(v7);
  *(v0 + 608) = *(v0 + 600);
  v11 = *(v0 + 552);
  v12 = *(v0 + 544);
  v13 = *(v0 + 360);
  v14 = *(v0 + 368);

  sub_230D1CE3C(v14);
  v15 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230D338A8, v13, 0);
}

uint64_t sub_230D338A8()
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = v0[64];
  v3 = v0[52];
  v2 = v0[53];
  v4 = v0[51];

  (*(v3 + 8))(v2, v4);
  v5 = v0[76];
  v6 = v0[53];
  v8 = v0[49];
  v7 = v0[50];
  sub_230D1CFC0(v0[54]);

  v9 = v0[1];
  v10 = *MEMORY[0x277D85DE8];

  return v9();
}

uint64_t sub_230D33998()
{
  v47 = v0;
  v46[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 552);
  v2 = *(v0 + 544);
  v3 = *(v0 + 512);
  v4 = *(v0 + 368);
  v5 = *(v0 + 384) + 8;
  (*(v0 + 504))(*(v0 + 392), *(v0 + 376));

  sub_230D1CE3C(v4);
  v6 = *(v0 + 552);
  v7 = *(v0 + 544);
  v8 = *(v0 + 536);
  v9 = *(v0 + 528);

  if (v8 + 1 == v9)
  {
    v10 = *(v0 + 360);
    sub_230D1CE3C(*(v0 + 368));
    v11 = *MEMORY[0x277D85DE8];

    return MEMORY[0x2822009F8](sub_230D32E14, v10, 0);
  }

  else
  {
    v12 = *(v0 + 536);
    *(v0 + 536) = v12 + 1;
    v13 = *(v0 + 512);
    v14 = *(v0 + 392);
    v15 = *(v0 + 368);
    v16 = (*(v0 + 520) + 24 * v12);
    v18 = v16[7];
    v17 = v16[8];
    *(v0 + 544) = v17;
    v19 = v16[9];
    *(v0 + 552) = v19;

    sub_230D1CDE0(v15, v0 + 176);

    sub_230E68D70();
    sub_230D1CDE0(v15, v0 + 216);
    v20 = sub_230E68D60();
    v21 = sub_230E693E0();
    sub_230D1CE3C(v15);
    if (os_log_type_enabled(v20, v21))
    {
      v22 = *(v0 + 1376);
      v23 = *(v0 + 368);
      v24 = swift_slowAlloc();
      v45 = v18;
      v25 = swift_slowAlloc();
      v46[0] = v25;
      *v24 = 136315650;
      *(v24 + 4) = sub_230D7E620(0x5153657461657263, 0xEE00656C6261544CLL, v46);
      *(v24 + 12) = 2080;
      *(v24 + 14) = sub_230D7E620(*(v23 + 8), *(v23 + 16), v46);
      *(v24 + 22) = 2080;
      *(v0 + 288) = 0x6C616E7265746E69;
      *(v0 + 296) = 0xE90000000000002ELL;
      v26 = RequestType.rawValue.getter();
      MEMORY[0x23191DA00](v26);

      v27 = sub_230D7E620(*(v0 + 288), *(v0 + 296), v46);

      *(v24 + 24) = v27;
      _os_log_impl(&dword_230D02000, v20, v21, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v24, 0x20u);
      swift_arrayDestroy();
      v28 = v25;
      v18 = v45;
      MEMORY[0x23191EAE0](v28, -1, -1);
      MEMORY[0x23191EAE0](v24, -1, -1);
    }

    if ((*(v0 + 1377) & 1) == 0)
    {
      goto LABEL_10;
    }

    v29 = *(v0 + 448);
    v30 = *(v0 + 1378);
    LOBYTE(v46[0]) = *(v0 + 1376);
    v31 = RequestType.rawValue.getter();
    v33 = v32;
    sub_230D1CE90(v0 + 256, v0 + 272);
    LOBYTE(v31) = sub_230D33FDC(v31, v33, v29);

    sub_230D1F9CC(v0 + 256);
    if ((v31 & 1) != 0 || v30 >= 2)
    {
      sub_230E68950();
      *(v0 + 560) = CFAbsoluteTimeGetCurrent();
      *(v0 + 616) = 0u;
      *(v0 + 632) = 0u;
      *(v0 + 648) = 0u;
      *(v0 + 664) = 0u;
      *(v0 + 680) = 0u;
      *(v0 + 696) = 0u;
      *(v0 + 712) = 0u;
      *(v0 + 728) = 0u;
      *(v0 + 744) = 0u;
      *(v0 + 760) = 0u;
      *(v0 + 776) = 0u;
      *(v0 + 792) = 0u;
      *(v0 + 808) = 0u;
      *(v0 + 824) = 0u;
      *(v0 + 840) = 0u;
      *(v0 + 856) = 0u;
      *(v0 + 872) = 0u;
      *(v0 + 888) = 0u;
      *(v0 + 904) = 0u;
      *(v0 + 920) = 0u;
      *(v0 + 936) = 0u;
      *(v0 + 952) = 0u;
      *(v0 + 968) = 0u;
      *(v0 + 984) = 0;
      *(v0 + 1360) = 93;
      v36 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 616), (v0 + 1360));
      *(v0 + 1372) = v36;
      v37 = 0.0;
      if (!v36)
      {
        v38 = *(v0 + 664);
        v39 = *(v0 + 736);
        v40 = __CFADD__(v38, v39);
        v41 = v38 + v39;
        if (v40)
        {
          __break(1u);
        }

        v37 = vcvtd_n_f64_u64(v41, 0x14uLL);
      }

      *(v0 + 584) = v37;
      *(v0 + 328) = 0;
      v34 = swift_task_alloc();
      *(v0 + 592) = v34;
      *v34 = v0;
      v35 = sub_230D33068;
    }

    else
    {
LABEL_10:
      v34 = swift_task_alloc();
      *(v0 + 568) = v34;
      *v34 = v0;
      v35 = sub_230D32F10;
    }

    v34[1] = v35;
    v42 = *(v0 + 512);
    v43 = *MEMORY[0x277D85DE8];

    return sub_230D3D310(v34, v42, v18, v17, v19);
  }
}

uint64_t sub_230D33ED4()
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 552);
  v2 = *(v0 + 544);
  v3 = *(v0 + 512);
  v4 = *(v0 + 368);
  v5 = *(v0 + 384) + 8;
  (*(v0 + 504))(*(v0 + 392), *(v0 + 376));

  sub_230D1CE3C(v4);
  *(v0 + 608) = *(v0 + 576);
  v6 = *(v0 + 552);
  v7 = *(v0 + 544);
  v8 = *(v0 + 360);
  v9 = *(v0 + 368);

  sub_230D1CE3C(v9);
  v10 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230D338A8, v8, 0);
}

uint64_t sub_230D33FDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_230E699B0();
  sub_230E69100();
  v7 = sub_230E699D0();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_230E698C0() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_230D340D4(char a1, uint64_t a2, char a3, uint64_t a4, void **a5, double a6)
{
  v46 = a5;
  v71 = *MEMORY[0x277D85DE8];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B010, &unk_230E733F0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v15 = &v43 - v14;
  *&v49[0] = 0;
  *(&v49[0] + 1) = 0xE000000000000000;
  sub_230E69540();
  MEMORY[0x23191DA00](0xD000000000000054, 0x8000000230E81030);
  LOBYTE(v48) = a1;
  v16 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v16);

  sub_230E68950();

  Current = CFAbsoluteTimeGetCurrent();
  v70 = 0;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v55 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v50 = 0u;
  memset(v49, 0, sizeof(v49));
  v48 = 93;
  v18 = task_info(*MEMORY[0x277D85F48], 0x16u, v49, &v48);
  v19 = 0.0;
  if (!v18)
  {
    if (__CFADD__(v50, *(&v54 + 1)))
    {
      __break(1u);
    }

    v19 = vcvtd_n_f64_u64(v50 + *(&v54 + 1), 0x14uLL);
  }

  v45 = v15;
  v20 = Current - a6;
  v21 = (v18 != 0) | a3;
  v22 = v19 - *&a2;
  if ((v18 != 0) | a3 & 1)
  {
    v23 = 0.0;
  }

  else
  {
    v23 = v22;
  }

  sub_230E68950();
  LOBYTE(v49[0]) = *a4;
  v24 = RequestType.rawValue.getter();
  v44 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B018, &unk_230E6E468);
  v26 = swift_allocObject();
  v47 = xmmword_230E6B3B0;
  *(v26 + 16) = xmmword_230E6B3B0;
  *&v49[0] = 0x6C616E7265746E69;
  *(&v49[0] + 1) = 0xE90000000000002ELL;
  LOBYTE(v48) = a1;
  v27 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v27);

  v28 = v49[0];
  v29 = *v46;
  if (*v46)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5BCD0, &qword_230E6E480);
    v30 = swift_allocObject();
    *(v30 + 16) = v47;
    *(v30 + 32) = v29;
  }

  else
  {
    v30 = 0;
  }

  *(v26 + 32) = v28;
  *(v26 + 48) = v20;
  *(v26 + 56) = 0;
  *(v26 + 64) = v23;
  *(v26 + 72) = v21 & 1;
  *(v26 + 80) = v30;
  v32 = *(a4 + 8);
  v31 = *(a4 + 16);
  v33 = v29;

  sub_230E68950();
  if (qword_27DB5A430 != -1)
  {
    swift_once();
  }

  v34 = qword_27DB5A438;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5B020, &unk_230E73400);
  v35 = swift_allocObject();
  *(v35 + 16) = v47;
  v36 = swift_allocObject();
  *(v36 + 16) = v34;
  *(v36 + 24) = v24;
  *(v36 + 32) = v44;
  *(v36 + 40) = 1;
  *(v36 + 48) = v26;
  *(v36 + 56) = v32;
  *(v36 + 64) = v31;
  *(v36 + 72) = 257;
  *(v36 + 80) = 0;
  v37 = swift_allocObject();
  *(v37 + 16) = &unk_230E6E5F8;
  *(v37 + 24) = v36;
  *(v35 + 32) = &unk_230E6E600;
  *(v35 + 40) = v37;
  v38 = sub_230E69310();
  v39 = v45;
  (*(*(v38 - 8) + 56))(v45, 1, 1, v38);
  v40 = swift_allocObject();
  v40[2] = 0;
  v40[3] = 0;
  v40[4] = v35;

  sub_230D8F204(0, 0, v39, &unk_230E6E608, v40);

  v42 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_230D34594(char a1, uint64_t a2, char a3, uint64_t a4, void **a5, double a6)
{
  v46 = a5;
  v71 = *MEMORY[0x277D85DE8];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B010, &unk_230E733F0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v15 = &v43 - v14;
  *&v49[0] = 0;
  *(&v49[0] + 1) = 0xE000000000000000;
  sub_230E69540();
  MEMORY[0x23191DA00](0xD000000000000054, 0x8000000230E81030);
  LOBYTE(v48) = a1;
  v16 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v16);

  sub_230E68950();

  Current = CFAbsoluteTimeGetCurrent();
  v70 = 0;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v55 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v50 = 0u;
  memset(v49, 0, sizeof(v49));
  v48 = 93;
  v18 = task_info(*MEMORY[0x277D85F48], 0x16u, v49, &v48);
  v19 = 0.0;
  if (!v18)
  {
    if (__CFADD__(v50, *(&v54 + 1)))
    {
      __break(1u);
    }

    v19 = vcvtd_n_f64_u64(v50 + *(&v54 + 1), 0x14uLL);
  }

  v45 = v15;
  v20 = Current - a6;
  v21 = (v18 != 0) | a3;
  v22 = v19 - *&a2;
  if ((v18 != 0) | a3 & 1)
  {
    v23 = 0.0;
  }

  else
  {
    v23 = v22;
  }

  sub_230E68950();
  LOBYTE(v49[0]) = *a4;
  v24 = RequestType.rawValue.getter();
  v44 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B018, &unk_230E6E468);
  v26 = swift_allocObject();
  v47 = xmmword_230E6B3B0;
  *(v26 + 16) = xmmword_230E6B3B0;
  *&v49[0] = 0x6C616E7265746E69;
  *(&v49[0] + 1) = 0xE90000000000002ELL;
  LOBYTE(v48) = a1;
  v27 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v27);

  v28 = v49[0];
  v29 = *v46;
  if (*v46)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5BCD0, &qword_230E6E480);
    v30 = swift_allocObject();
    *(v30 + 16) = v47;
    *(v30 + 32) = v29;
  }

  else
  {
    v30 = 0;
  }

  *(v26 + 32) = v28;
  *(v26 + 48) = v20;
  *(v26 + 56) = 0;
  *(v26 + 64) = v23;
  *(v26 + 72) = v21 & 1;
  *(v26 + 80) = v30;
  v32 = *(a4 + 8);
  v31 = *(a4 + 16);
  v33 = v29;

  sub_230E68950();
  if (qword_27DB5A430 != -1)
  {
    swift_once();
  }

  v34 = qword_27DB5A438;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5B020, &unk_230E73400);
  v35 = swift_allocObject();
  *(v35 + 16) = v47;
  v36 = swift_allocObject();
  *(v36 + 16) = v34;
  *(v36 + 24) = v24;
  *(v36 + 32) = v44;
  *(v36 + 40) = 1;
  *(v36 + 48) = v26;
  *(v36 + 56) = v32;
  *(v36 + 64) = v31;
  *(v36 + 72) = 257;
  *(v36 + 80) = 0;
  v37 = swift_allocObject();
  *(v37 + 16) = &unk_230E6E6E8;
  *(v37 + 24) = v36;
  *(v35 + 32) = &unk_230E6E6F0;
  *(v35 + 40) = v37;
  v38 = sub_230E69310();
  v39 = v45;
  (*(*(v38 - 8) + 56))(v45, 1, 1, v38);
  v40 = swift_allocObject();
  v40[2] = 0;
  v40[3] = 0;
  v40[4] = v35;

  sub_230D8F204(0, 0, v39, &unk_230E6E6F8, v40);

  v42 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_230D34A54(char a1, uint64_t a2, char a3, uint64_t a4, void **a5, double a6)
{
  v46 = a5;
  v71 = *MEMORY[0x277D85DE8];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B010, &unk_230E733F0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v15 = &v43 - v14;
  *&v49[0] = 0;
  *(&v49[0] + 1) = 0xE000000000000000;
  sub_230E69540();
  MEMORY[0x23191DA00](0xD000000000000054, 0x8000000230E81030);
  LOBYTE(v48) = a1;
  v16 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v16);

  sub_230E68950();

  Current = CFAbsoluteTimeGetCurrent();
  v70 = 0;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v55 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v50 = 0u;
  memset(v49, 0, sizeof(v49));
  v48 = 93;
  v18 = task_info(*MEMORY[0x277D85F48], 0x16u, v49, &v48);
  v19 = 0.0;
  if (!v18)
  {
    if (__CFADD__(v50, *(&v54 + 1)))
    {
      __break(1u);
    }

    v19 = vcvtd_n_f64_u64(v50 + *(&v54 + 1), 0x14uLL);
  }

  v45 = v15;
  v20 = Current - a6;
  v21 = (v18 != 0) | a3;
  v22 = v19 - *&a2;
  if ((v18 != 0) | a3 & 1)
  {
    v23 = 0.0;
  }

  else
  {
    v23 = v22;
  }

  sub_230E68950();
  LOBYTE(v49[0]) = *a4;
  v24 = RequestType.rawValue.getter();
  v44 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B018, &unk_230E6E468);
  v26 = swift_allocObject();
  v47 = xmmword_230E6B3B0;
  *(v26 + 16) = xmmword_230E6B3B0;
  *&v49[0] = 0x6C616E7265746E69;
  *(&v49[0] + 1) = 0xE90000000000002ELL;
  LOBYTE(v48) = a1;
  v27 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v27);

  v28 = v49[0];
  v29 = *v46;
  if (*v46)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5BCD0, &qword_230E6E480);
    v30 = swift_allocObject();
    *(v30 + 16) = v47;
    *(v30 + 32) = v29;
  }

  else
  {
    v30 = 0;
  }

  *(v26 + 32) = v28;
  *(v26 + 48) = v20;
  *(v26 + 56) = 0;
  *(v26 + 64) = v23;
  *(v26 + 72) = v21 & 1;
  *(v26 + 80) = v30;
  v32 = *(a4 + 8);
  v31 = *(a4 + 16);
  v33 = v29;

  sub_230E68950();
  if (qword_27DB5A430 != -1)
  {
    swift_once();
  }

  v34 = qword_27DB5A438;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5B020, &unk_230E73400);
  v35 = swift_allocObject();
  *(v35 + 16) = v47;
  v36 = swift_allocObject();
  *(v36 + 16) = v34;
  *(v36 + 24) = v24;
  *(v36 + 32) = v44;
  *(v36 + 40) = 1;
  *(v36 + 48) = v26;
  *(v36 + 56) = v32;
  *(v36 + 64) = v31;
  *(v36 + 72) = 257;
  *(v36 + 80) = 0;
  v37 = swift_allocObject();
  *(v37 + 16) = &unk_230E73430;
  *(v37 + 24) = v36;
  *(v35 + 32) = &unk_230E6E4F0;
  *(v35 + 40) = v37;
  v38 = sub_230E69310();
  v39 = v45;
  (*(*(v38 - 8) + 56))(v45, 1, 1, v38);
  v40 = swift_allocObject();
  v40[2] = 0;
  v40[3] = 0;
  v40[4] = v35;

  sub_230D8F204(0, 0, v39, &unk_230E73440, v40);

  v42 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_230D34F14(char a1, uint64_t a2, char a3, uint64_t a4, void **a5, double a6)
{
  v46 = a5;
  v71 = *MEMORY[0x277D85DE8];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B010, &unk_230E733F0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v15 = &v43 - v14;
  *&v49[0] = 0;
  *(&v49[0] + 1) = 0xE000000000000000;
  sub_230E69540();
  MEMORY[0x23191DA00](0xD000000000000054, 0x8000000230E81030);
  LOBYTE(v48) = a1;
  v16 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v16);

  sub_230E68950();

  Current = CFAbsoluteTimeGetCurrent();
  v70 = 0;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v55 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v50 = 0u;
  memset(v49, 0, sizeof(v49));
  v48 = 93;
  v18 = task_info(*MEMORY[0x277D85F48], 0x16u, v49, &v48);
  v19 = 0.0;
  if (!v18)
  {
    if (__CFADD__(v50, *(&v54 + 1)))
    {
      __break(1u);
    }

    v19 = vcvtd_n_f64_u64(v50 + *(&v54 + 1), 0x14uLL);
  }

  v45 = v15;
  v20 = Current - a6;
  v21 = (v18 != 0) | a3;
  v22 = v19 - *&a2;
  if ((v18 != 0) | a3 & 1)
  {
    v23 = 0.0;
  }

  else
  {
    v23 = v22;
  }

  sub_230E68950();
  LOBYTE(v49[0]) = *a4;
  v24 = RequestType.rawValue.getter();
  v44 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B018, &unk_230E6E468);
  v26 = swift_allocObject();
  v47 = xmmword_230E6B3B0;
  *(v26 + 16) = xmmword_230E6B3B0;
  *&v49[0] = 0x6C616E7265746E69;
  *(&v49[0] + 1) = 0xE90000000000002ELL;
  LOBYTE(v48) = a1;
  v27 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v27);

  v28 = v49[0];
  v29 = *v46;
  if (*v46)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5BCD0, &qword_230E6E480);
    v30 = swift_allocObject();
    *(v30 + 16) = v47;
    *(v30 + 32) = v29;
  }

  else
  {
    v30 = 0;
  }

  *(v26 + 32) = v28;
  *(v26 + 48) = v20;
  *(v26 + 56) = 0;
  *(v26 + 64) = v23;
  *(v26 + 72) = v21 & 1;
  *(v26 + 80) = v30;
  v32 = *(a4 + 8);
  v31 = *(a4 + 16);
  v33 = v29;

  sub_230E68950();
  if (qword_27DB5A430 != -1)
  {
    swift_once();
  }

  v34 = qword_27DB5A438;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5B020, &unk_230E73400);
  v35 = swift_allocObject();
  *(v35 + 16) = v47;
  v36 = swift_allocObject();
  *(v36 + 16) = v34;
  *(v36 + 24) = v24;
  *(v36 + 32) = v44;
  *(v36 + 40) = 1;
  *(v36 + 48) = v26;
  *(v36 + 56) = v32;
  *(v36 + 64) = v31;
  *(v36 + 72) = 257;
  *(v36 + 80) = 0;
  v37 = swift_allocObject();
  *(v37 + 16) = &unk_230E73410;
  *(v37 + 24) = v36;
  *(v35 + 32) = &unk_230E6E478;
  *(v35 + 40) = v37;
  v38 = sub_230E69310();
  v39 = v45;
  (*(*(v38 - 8) + 56))(v45, 1, 1, v38);
  v40 = swift_allocObject();
  v40[2] = 0;
  v40[3] = 0;
  v40[4] = v35;

  sub_230D8F204(0, 0, v39, &unk_230E73420, v40);

  v42 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_230D353D4(char a1, uint64_t a2, char a3, uint64_t a4, void **a5, double a6)
{
  v46 = a5;
  v71 = *MEMORY[0x277D85DE8];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B010, &unk_230E733F0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v15 = &v43 - v14;
  *&v49[0] = 0;
  *(&v49[0] + 1) = 0xE000000000000000;
  sub_230E69540();
  MEMORY[0x23191DA00](0xD000000000000054, 0x8000000230E81030);
  LOBYTE(v48) = a1;
  v16 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v16);

  sub_230E68950();

  Current = CFAbsoluteTimeGetCurrent();
  v70 = 0;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v55 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v50 = 0u;
  memset(v49, 0, sizeof(v49));
  v48 = 93;
  v18 = task_info(*MEMORY[0x277D85F48], 0x16u, v49, &v48);
  v19 = 0.0;
  if (!v18)
  {
    if (__CFADD__(v50, *(&v54 + 1)))
    {
      __break(1u);
    }

    v19 = vcvtd_n_f64_u64(v50 + *(&v54 + 1), 0x14uLL);
  }

  v45 = v15;
  v20 = Current - a6;
  v21 = (v18 != 0) | a3;
  v22 = v19 - *&a2;
  if ((v18 != 0) | a3 & 1)
  {
    v23 = 0.0;
  }

  else
  {
    v23 = v22;
  }

  sub_230E68950();
  LOBYTE(v49[0]) = *a4;
  v24 = RequestType.rawValue.getter();
  v44 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B018, &unk_230E6E468);
  v26 = swift_allocObject();
  v47 = xmmword_230E6B3B0;
  *(v26 + 16) = xmmword_230E6B3B0;
  *&v49[0] = 0x6C616E7265746E69;
  *(&v49[0] + 1) = 0xE90000000000002ELL;
  LOBYTE(v48) = a1;
  v27 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v27);

  v28 = v49[0];
  v29 = *v46;
  if (*v46)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5BCD0, &qword_230E6E480);
    v30 = swift_allocObject();
    *(v30 + 16) = v47;
    *(v30 + 32) = v29;
  }

  else
  {
    v30 = 0;
  }

  *(v26 + 32) = v28;
  *(v26 + 48) = v20;
  *(v26 + 56) = 0;
  *(v26 + 64) = v23;
  *(v26 + 72) = v21 & 1;
  *(v26 + 80) = v30;
  v32 = *(a4 + 8);
  v31 = *(a4 + 16);
  v33 = v29;

  sub_230E68950();
  if (qword_27DB5A430 != -1)
  {
    swift_once();
  }

  v34 = qword_27DB5A438;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5B020, &unk_230E73400);
  v35 = swift_allocObject();
  *(v35 + 16) = v47;
  v36 = swift_allocObject();
  *(v36 + 16) = v34;
  *(v36 + 24) = v24;
  *(v36 + 32) = v44;
  *(v36 + 40) = 1;
  *(v36 + 48) = v26;
  *(v36 + 56) = v32;
  *(v36 + 64) = v31;
  *(v36 + 72) = 257;
  *(v36 + 80) = 0;
  v37 = swift_allocObject();
  *(v37 + 16) = &unk_230E6E6A0;
  *(v37 + 24) = v36;
  *(v35 + 32) = &unk_230E6E6A8;
  *(v35 + 40) = v37;
  v38 = sub_230E69310();
  v39 = v45;
  (*(*(v38 - 8) + 56))(v45, 1, 1, v38);
  v40 = swift_allocObject();
  v40[2] = 0;
  v40[3] = 0;
  v40[4] = v35;

  sub_230D8F204(0, 0, v39, &unk_230E6E6B0, v40);

  v42 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_230D35894(char a1, uint64_t a2, char a3, uint64_t a4, void **a5, double a6)
{
  v46 = a5;
  v71 = *MEMORY[0x277D85DE8];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B010, &unk_230E733F0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v15 = &v43 - v14;
  *&v49[0] = 0;
  *(&v49[0] + 1) = 0xE000000000000000;
  sub_230E69540();
  MEMORY[0x23191DA00](0xD000000000000054, 0x8000000230E81030);
  LOBYTE(v48) = a1;
  v16 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v16);

  sub_230E68950();

  Current = CFAbsoluteTimeGetCurrent();
  v70 = 0;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v55 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v50 = 0u;
  memset(v49, 0, sizeof(v49));
  v48 = 93;
  v18 = task_info(*MEMORY[0x277D85F48], 0x16u, v49, &v48);
  v19 = 0.0;
  if (!v18)
  {
    if (__CFADD__(v50, *(&v54 + 1)))
    {
      __break(1u);
    }

    v19 = vcvtd_n_f64_u64(v50 + *(&v54 + 1), 0x14uLL);
  }

  v45 = v15;
  v20 = Current - a6;
  v21 = (v18 != 0) | a3;
  v22 = v19 - *&a2;
  if ((v18 != 0) | a3 & 1)
  {
    v23 = 0.0;
  }

  else
  {
    v23 = v22;
  }

  sub_230E68950();
  LOBYTE(v49[0]) = *a4;
  v24 = RequestType.rawValue.getter();
  v44 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B018, &unk_230E6E468);
  v26 = swift_allocObject();
  v47 = xmmword_230E6B3B0;
  *(v26 + 16) = xmmword_230E6B3B0;
  *&v49[0] = 0x6C616E7265746E69;
  *(&v49[0] + 1) = 0xE90000000000002ELL;
  LOBYTE(v48) = a1;
  v27 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v27);

  v28 = v49[0];
  v29 = *v46;
  if (*v46)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5BCD0, &qword_230E6E480);
    v30 = swift_allocObject();
    *(v30 + 16) = v47;
    *(v30 + 32) = v29;
  }

  else
  {
    v30 = 0;
  }

  *(v26 + 32) = v28;
  *(v26 + 48) = v20;
  *(v26 + 56) = 0;
  *(v26 + 64) = v23;
  *(v26 + 72) = v21 & 1;
  *(v26 + 80) = v30;
  v32 = *(a4 + 8);
  v31 = *(a4 + 16);
  v33 = v29;

  sub_230E68950();
  if (qword_27DB5A430 != -1)
  {
    swift_once();
  }

  v34 = qword_27DB5A438;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5B020, &unk_230E73400);
  v35 = swift_allocObject();
  *(v35 + 16) = v47;
  v36 = swift_allocObject();
  *(v36 + 16) = v34;
  *(v36 + 24) = v24;
  *(v36 + 32) = v44;
  *(v36 + 40) = 1;
  *(v36 + 48) = v26;
  *(v36 + 56) = v32;
  *(v36 + 64) = v31;
  *(v36 + 72) = 257;
  *(v36 + 80) = 0;
  v37 = swift_allocObject();
  *(v37 + 16) = &unk_230E6E6D0;
  *(v37 + 24) = v36;
  *(v35 + 32) = &unk_230E6E6D8;
  *(v35 + 40) = v37;
  v38 = sub_230E69310();
  v39 = v45;
  (*(*(v38 - 8) + 56))(v45, 1, 1, v38);
  v40 = swift_allocObject();
  v40[2] = 0;
  v40[3] = 0;
  v40[4] = v35;

  sub_230D8F204(0, 0, v39, &unk_230E6E6E0, v40);

  v42 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_230D35D54(char a1, uint64_t a2, char a3, uint64_t a4, void **a5, double a6)
{
  v46 = a5;
  v71 = *MEMORY[0x277D85DE8];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B010, &unk_230E733F0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v15 = &v43 - v14;
  *&v49[0] = 0;
  *(&v49[0] + 1) = 0xE000000000000000;
  sub_230E69540();
  MEMORY[0x23191DA00](0xD000000000000054, 0x8000000230E81030);
  LOBYTE(v48) = a1;
  v16 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v16);

  sub_230E68950();

  Current = CFAbsoluteTimeGetCurrent();
  v70 = 0;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v55 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v50 = 0u;
  memset(v49, 0, sizeof(v49));
  v48 = 93;
  v18 = task_info(*MEMORY[0x277D85F48], 0x16u, v49, &v48);
  v19 = 0.0;
  if (!v18)
  {
    if (__CFADD__(v50, *(&v54 + 1)))
    {
      __break(1u);
    }

    v19 = vcvtd_n_f64_u64(v50 + *(&v54 + 1), 0x14uLL);
  }

  v45 = v15;
  v20 = Current - a6;
  v21 = (v18 != 0) | a3;
  v22 = v19 - *&a2;
  if ((v18 != 0) | a3 & 1)
  {
    v23 = 0.0;
  }

  else
  {
    v23 = v22;
  }

  sub_230E68950();
  LOBYTE(v49[0]) = *a4;
  v24 = RequestType.rawValue.getter();
  v44 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B018, &unk_230E6E468);
  v26 = swift_allocObject();
  v47 = xmmword_230E6B3B0;
  *(v26 + 16) = xmmword_230E6B3B0;
  *&v49[0] = 0x6C616E7265746E69;
  *(&v49[0] + 1) = 0xE90000000000002ELL;
  LOBYTE(v48) = a1;
  v27 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v27);

  v28 = v49[0];
  v29 = *v46;
  if (*v46)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5BCD0, &qword_230E6E480);
    v30 = swift_allocObject();
    *(v30 + 16) = v47;
    *(v30 + 32) = v29;
  }

  else
  {
    v30 = 0;
  }

  *(v26 + 32) = v28;
  *(v26 + 48) = v20;
  *(v26 + 56) = 0;
  *(v26 + 64) = v23;
  *(v26 + 72) = v21 & 1;
  *(v26 + 80) = v30;
  v32 = *(a4 + 8);
  v31 = *(a4 + 16);
  v33 = v29;

  sub_230E68950();
  if (qword_27DB5A430 != -1)
  {
    swift_once();
  }

  v34 = qword_27DB5A438;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5B020, &unk_230E73400);
  v35 = swift_allocObject();
  *(v35 + 16) = v47;
  v36 = swift_allocObject();
  *(v36 + 16) = v34;
  *(v36 + 24) = v24;
  *(v36 + 32) = v44;
  *(v36 + 40) = 1;
  *(v36 + 48) = v26;
  *(v36 + 56) = v32;
  *(v36 + 64) = v31;
  *(v36 + 72) = 257;
  *(v36 + 80) = 0;
  v37 = swift_allocObject();
  *(v37 + 16) = &unk_230E6E6B8;
  *(v37 + 24) = v36;
  *(v35 + 32) = &unk_230E6E6C0;
  *(v35 + 40) = v37;
  v38 = sub_230E69310();
  v39 = v45;
  (*(*(v38 - 8) + 56))(v45, 1, 1, v38);
  v40 = swift_allocObject();
  v40[2] = 0;
  v40[3] = 0;
  v40[4] = v35;

  sub_230D8F204(0, 0, v39, &unk_230E6E6C8, v40);

  v42 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_230D36214(char a1, uint64_t a2, char a3, uint64_t a4, void **a5, double a6)
{
  v46 = a5;
  v71 = *MEMORY[0x277D85DE8];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B010, &unk_230E733F0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v15 = &v43 - v14;
  *&v49[0] = 0;
  *(&v49[0] + 1) = 0xE000000000000000;
  sub_230E69540();
  MEMORY[0x23191DA00](0xD000000000000054, 0x8000000230E81030);
  LOBYTE(v48) = a1;
  v16 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v16);

  sub_230E68950();

  Current = CFAbsoluteTimeGetCurrent();
  v70 = 0;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v55 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v50 = 0u;
  memset(v49, 0, sizeof(v49));
  v48 = 93;
  v18 = task_info(*MEMORY[0x277D85F48], 0x16u, v49, &v48);
  v19 = 0.0;
  if (!v18)
  {
    if (__CFADD__(v50, *(&v54 + 1)))
    {
      __break(1u);
    }

    v19 = vcvtd_n_f64_u64(v50 + *(&v54 + 1), 0x14uLL);
  }

  v45 = v15;
  v20 = Current - a6;
  v21 = (v18 != 0) | a3;
  v22 = v19 - *&a2;
  if ((v18 != 0) | a3 & 1)
  {
    v23 = 0.0;
  }

  else
  {
    v23 = v22;
  }

  sub_230E68950();
  LOBYTE(v49[0]) = *a4;
  v24 = RequestType.rawValue.getter();
  v44 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B018, &unk_230E6E468);
  v26 = swift_allocObject();
  v47 = xmmword_230E6B3B0;
  *(v26 + 16) = xmmword_230E6B3B0;
  *&v49[0] = 0x6C616E7265746E69;
  *(&v49[0] + 1) = 0xE90000000000002ELL;
  LOBYTE(v48) = a1;
  v27 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v27);

  v28 = v49[0];
  v29 = *v46;
  if (*v46)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5BCD0, &qword_230E6E480);
    v30 = swift_allocObject();
    *(v30 + 16) = v47;
    *(v30 + 32) = v29;
  }

  else
  {
    v30 = 0;
  }

  *(v26 + 32) = v28;
  *(v26 + 48) = v20;
  *(v26 + 56) = 0;
  *(v26 + 64) = v23;
  *(v26 + 72) = v21 & 1;
  *(v26 + 80) = v30;
  v32 = *(a4 + 8);
  v31 = *(a4 + 16);
  v33 = v29;

  sub_230E68950();
  if (qword_27DB5A430 != -1)
  {
    swift_once();
  }

  v34 = qword_27DB5A438;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5B020, &unk_230E73400);
  v35 = swift_allocObject();
  *(v35 + 16) = v47;
  v36 = swift_allocObject();
  *(v36 + 16) = v34;
  *(v36 + 24) = v24;
  *(v36 + 32) = v44;
  *(v36 + 40) = 1;
  *(v36 + 48) = v26;
  *(v36 + 56) = v32;
  *(v36 + 64) = v31;
  *(v36 + 72) = 257;
  *(v36 + 80) = 0;
  v37 = swift_allocObject();
  *(v37 + 16) = &unk_230E6E708;
  *(v37 + 24) = v36;
  *(v35 + 32) = &unk_230E6E710;
  *(v35 + 40) = v37;
  v38 = sub_230E69310();
  v39 = v45;
  (*(*(v38 - 8) + 56))(v45, 1, 1, v38);
  v40 = swift_allocObject();
  v40[2] = 0;
  v40[3] = 0;
  v40[4] = v35;

  sub_230D8F204(0, 0, v39, &unk_230E6E718, v40);

  v42 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_230D366D4(char a1, uint64_t a2, char a3, uint64_t a4, void **a5, double a6)
{
  v46 = a5;
  v71 = *MEMORY[0x277D85DE8];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B010, &unk_230E733F0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v15 = &v43 - v14;
  *&v49[0] = 0;
  *(&v49[0] + 1) = 0xE000000000000000;
  sub_230E69540();
  MEMORY[0x23191DA00](0xD000000000000054, 0x8000000230E81030);
  LOBYTE(v48) = a1;
  v16 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v16);

  sub_230E68950();

  Current = CFAbsoluteTimeGetCurrent();
  v70 = 0;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v55 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v50 = 0u;
  memset(v49, 0, sizeof(v49));
  v48 = 93;
  v18 = task_info(*MEMORY[0x277D85F48], 0x16u, v49, &v48);
  v19 = 0.0;
  if (!v18)
  {
    if (__CFADD__(v50, *(&v54 + 1)))
    {
      __break(1u);
    }

    v19 = vcvtd_n_f64_u64(v50 + *(&v54 + 1), 0x14uLL);
  }

  v45 = v15;
  v20 = Current - a6;
  v21 = (v18 != 0) | a3;
  v22 = v19 - *&a2;
  if ((v18 != 0) | a3 & 1)
  {
    v23 = 0.0;
  }

  else
  {
    v23 = v22;
  }

  sub_230E68950();
  LOBYTE(v49[0]) = *a4;
  v24 = RequestType.rawValue.getter();
  v44 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B018, &unk_230E6E468);
  v26 = swift_allocObject();
  v47 = xmmword_230E6B3B0;
  *(v26 + 16) = xmmword_230E6B3B0;
  *&v49[0] = 0x6C616E7265746E69;
  *(&v49[0] + 1) = 0xE90000000000002ELL;
  LOBYTE(v48) = a1;
  v27 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v27);

  v28 = v49[0];
  v29 = *v46;
  if (*v46)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5BCD0, &qword_230E6E480);
    v30 = swift_allocObject();
    *(v30 + 16) = v47;
    *(v30 + 32) = v29;
  }

  else
  {
    v30 = 0;
  }

  *(v26 + 32) = v28;
  *(v26 + 48) = v20;
  *(v26 + 56) = 0;
  *(v26 + 64) = v23;
  *(v26 + 72) = v21 & 1;
  *(v26 + 80) = v30;
  v32 = *(a4 + 8);
  v31 = *(a4 + 16);
  v33 = v29;

  sub_230E68950();
  if (qword_27DB5A430 != -1)
  {
    swift_once();
  }

  v34 = qword_27DB5A438;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5B020, &unk_230E73400);
  v35 = swift_allocObject();
  *(v35 + 16) = v47;
  v36 = swift_allocObject();
  *(v36 + 16) = v34;
  *(v36 + 24) = v24;
  *(v36 + 32) = v44;
  *(v36 + 40) = 1;
  *(v36 + 48) = v26;
  *(v36 + 56) = v32;
  *(v36 + 64) = v31;
  *(v36 + 72) = 257;
  *(v36 + 80) = 0;
  v37 = swift_allocObject();
  *(v37 + 16) = &unk_230E6E520;
  *(v37 + 24) = v36;
  *(v35 + 32) = &unk_230E6E528;
  *(v35 + 40) = v37;
  v38 = sub_230E69310();
  v39 = v45;
  (*(*(v38 - 8) + 56))(v45, 1, 1, v38);
  v40 = swift_allocObject();
  v40[2] = 0;
  v40[3] = 0;
  v40[4] = v35;

  sub_230D8F204(0, 0, v39, &unk_230E6E530, v40);

  v42 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_230D36B94(char a1, uint64_t a2, char a3, uint64_t a4, void **a5, double a6)
{
  v46 = a5;
  v71 = *MEMORY[0x277D85DE8];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B010, &unk_230E733F0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v15 = &v43 - v14;
  *&v49[0] = 0;
  *(&v49[0] + 1) = 0xE000000000000000;
  sub_230E69540();
  MEMORY[0x23191DA00](0xD000000000000054, 0x8000000230E81030);
  LOBYTE(v48) = a1;
  v16 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v16);

  sub_230E68950();

  Current = CFAbsoluteTimeGetCurrent();
  v70 = 0;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v55 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v50 = 0u;
  memset(v49, 0, sizeof(v49));
  v48 = 93;
  v18 = task_info(*MEMORY[0x277D85F48], 0x16u, v49, &v48);
  v19 = 0.0;
  if (!v18)
  {
    if (__CFADD__(v50, *(&v54 + 1)))
    {
      __break(1u);
    }

    v19 = vcvtd_n_f64_u64(v50 + *(&v54 + 1), 0x14uLL);
  }

  v45 = v15;
  v20 = Current - a6;
  v21 = (v18 != 0) | a3;
  v22 = v19 - *&a2;
  if ((v18 != 0) | a3 & 1)
  {
    v23 = 0.0;
  }

  else
  {
    v23 = v22;
  }

  sub_230E68950();
  LOBYTE(v49[0]) = *a4;
  v24 = RequestType.rawValue.getter();
  v44 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B018, &unk_230E6E468);
  v26 = swift_allocObject();
  v47 = xmmword_230E6B3B0;
  *(v26 + 16) = xmmword_230E6B3B0;
  *&v49[0] = 0x6C616E7265746E69;
  *(&v49[0] + 1) = 0xE90000000000002ELL;
  LOBYTE(v48) = a1;
  v27 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v27);

  v28 = v49[0];
  v29 = *v46;
  if (*v46)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5BCD0, &qword_230E6E480);
    v30 = swift_allocObject();
    *(v30 + 16) = v47;
    *(v30 + 32) = v29;
  }

  else
  {
    v30 = 0;
  }

  *(v26 + 32) = v28;
  *(v26 + 48) = v20;
  *(v26 + 56) = 0;
  *(v26 + 64) = v23;
  *(v26 + 72) = v21 & 1;
  *(v26 + 80) = v30;
  v32 = *(a4 + 8);
  v31 = *(a4 + 16);
  v33 = v29;

  sub_230E68950();
  if (qword_27DB5A430 != -1)
  {
    swift_once();
  }

  v34 = qword_27DB5A438;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5B020, &unk_230E73400);
  v35 = swift_allocObject();
  *(v35 + 16) = v47;
  v36 = swift_allocObject();
  *(v36 + 16) = v34;
  *(v36 + 24) = v24;
  *(v36 + 32) = v44;
  *(v36 + 40) = 1;
  *(v36 + 48) = v26;
  *(v36 + 56) = v32;
  *(v36 + 64) = v31;
  *(v36 + 72) = 257;
  *(v36 + 80) = 0;
  v37 = swift_allocObject();
  *(v37 + 16) = &unk_230E6E4D0;
  *(v37 + 24) = v36;
  *(v35 + 32) = &unk_230E6E4D8;
  *(v35 + 40) = v37;
  v38 = sub_230E69310();
  v39 = v45;
  (*(*(v38 - 8) + 56))(v45, 1, 1, v38);
  v40 = swift_allocObject();
  v40[2] = 0;
  v40[3] = 0;
  v40[4] = v35;

  sub_230D8F204(0, 0, v39, &unk_230E6E4E0, v40);

  v42 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_230D37054(char a1, uint64_t a2, char a3, uint64_t a4, void **a5, double a6)
{
  v46 = a5;
  v71 = *MEMORY[0x277D85DE8];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B010, &unk_230E733F0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v15 = &v43 - v14;
  *&v49[0] = 0;
  *(&v49[0] + 1) = 0xE000000000000000;
  sub_230E69540();
  MEMORY[0x23191DA00](0xD000000000000054, 0x8000000230E81030);
  LOBYTE(v48) = a1;
  v16 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v16);

  sub_230E68950();

  Current = CFAbsoluteTimeGetCurrent();
  v70 = 0;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v55 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v50 = 0u;
  memset(v49, 0, sizeof(v49));
  v48 = 93;
  v18 = task_info(*MEMORY[0x277D85F48], 0x16u, v49, &v48);
  v19 = 0.0;
  if (!v18)
  {
    if (__CFADD__(v50, *(&v54 + 1)))
    {
      __break(1u);
    }

    v19 = vcvtd_n_f64_u64(v50 + *(&v54 + 1), 0x14uLL);
  }

  v45 = v15;
  v20 = Current - a6;
  v21 = (v18 != 0) | a3;
  v22 = v19 - *&a2;
  if ((v18 != 0) | a3 & 1)
  {
    v23 = 0.0;
  }

  else
  {
    v23 = v22;
  }

  sub_230E68950();
  LOBYTE(v49[0]) = *a4;
  v24 = RequestType.rawValue.getter();
  v44 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B018, &unk_230E6E468);
  v26 = swift_allocObject();
  v47 = xmmword_230E6B3B0;
  *(v26 + 16) = xmmword_230E6B3B0;
  *&v49[0] = 0x6C616E7265746E69;
  *(&v49[0] + 1) = 0xE90000000000002ELL;
  LOBYTE(v48) = a1;
  v27 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v27);

  v28 = v49[0];
  v29 = *v46;
  if (*v46)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5BCD0, &qword_230E6E480);
    v30 = swift_allocObject();
    *(v30 + 16) = v47;
    *(v30 + 32) = v29;
  }

  else
  {
    v30 = 0;
  }

  *(v26 + 32) = v28;
  *(v26 + 48) = v20;
  *(v26 + 56) = 0;
  *(v26 + 64) = v23;
  *(v26 + 72) = v21 & 1;
  *(v26 + 80) = v30;
  v32 = *(a4 + 8);
  v31 = *(a4 + 16);
  v33 = v29;

  sub_230E68950();
  if (qword_27DB5A430 != -1)
  {
    swift_once();
  }

  v34 = qword_27DB5A438;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5B020, &unk_230E73400);
  v35 = swift_allocObject();
  *(v35 + 16) = v47;
  v36 = swift_allocObject();
  *(v36 + 16) = v34;
  *(v36 + 24) = v24;
  *(v36 + 32) = v44;
  *(v36 + 40) = 1;
  *(v36 + 48) = v26;
  *(v36 + 56) = v32;
  *(v36 + 64) = v31;
  *(v36 + 72) = 257;
  *(v36 + 80) = 0;
  v37 = swift_allocObject();
  *(v37 + 16) = &unk_230E6E688;
  *(v37 + 24) = v36;
  *(v35 + 32) = &unk_230E6E690;
  *(v35 + 40) = v37;
  v38 = sub_230E69310();
  v39 = v45;
  (*(*(v38 - 8) + 56))(v45, 1, 1, v38);
  v40 = swift_allocObject();
  v40[2] = 0;
  v40[3] = 0;
  v40[4] = v35;

  sub_230D8F204(0, 0, v39, &unk_230E6E698, v40);

  v42 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_230D37514(char a1, uint64_t a2, char a3, uint64_t a4, void **a5, double a6)
{
  v46 = a5;
  v71 = *MEMORY[0x277D85DE8];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B010, &unk_230E733F0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v15 = &v43 - v14;
  *&v49[0] = 0;
  *(&v49[0] + 1) = 0xE000000000000000;
  sub_230E69540();
  MEMORY[0x23191DA00](0xD000000000000054, 0x8000000230E81030);
  LOBYTE(v48) = a1;
  v16 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v16);

  sub_230E68950();

  Current = CFAbsoluteTimeGetCurrent();
  v70 = 0;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v55 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v50 = 0u;
  memset(v49, 0, sizeof(v49));
  v48 = 93;
  v18 = task_info(*MEMORY[0x277D85F48], 0x16u, v49, &v48);
  v19 = 0.0;
  if (!v18)
  {
    if (__CFADD__(v50, *(&v54 + 1)))
    {
      __break(1u);
    }

    v19 = vcvtd_n_f64_u64(v50 + *(&v54 + 1), 0x14uLL);
  }

  v45 = v15;
  v20 = Current - a6;
  v21 = (v18 != 0) | a3;
  v22 = v19 - *&a2;
  if ((v18 != 0) | a3 & 1)
  {
    v23 = 0.0;
  }

  else
  {
    v23 = v22;
  }

  sub_230E68950();
  LOBYTE(v49[0]) = *a4;
  v24 = RequestType.rawValue.getter();
  v44 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B018, &unk_230E6E468);
  v26 = swift_allocObject();
  v47 = xmmword_230E6B3B0;
  *(v26 + 16) = xmmword_230E6B3B0;
  *&v49[0] = 0x6C616E7265746E69;
  *(&v49[0] + 1) = 0xE90000000000002ELL;
  LOBYTE(v48) = a1;
  v27 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v27);

  v28 = v49[0];
  v29 = *v46;
  if (*v46)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5BCD0, &qword_230E6E480);
    v30 = swift_allocObject();
    *(v30 + 16) = v47;
    *(v30 + 32) = v29;
  }

  else
  {
    v30 = 0;
  }

  *(v26 + 32) = v28;
  *(v26 + 48) = v20;
  *(v26 + 56) = 0;
  *(v26 + 64) = v23;
  *(v26 + 72) = v21 & 1;
  *(v26 + 80) = v30;
  v32 = *(a4 + 8);
  v31 = *(a4 + 16);
  v33 = v29;

  sub_230E68950();
  if (qword_27DB5A430 != -1)
  {
    swift_once();
  }

  v34 = qword_27DB5A438;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5B020, &unk_230E73400);
  v35 = swift_allocObject();
  *(v35 + 16) = v47;
  v36 = swift_allocObject();
  *(v36 + 16) = v34;
  *(v36 + 24) = v24;
  *(v36 + 32) = v44;
  *(v36 + 40) = 1;
  *(v36 + 48) = v26;
  *(v36 + 56) = v32;
  *(v36 + 64) = v31;
  *(v36 + 72) = 257;
  *(v36 + 80) = 0;
  v37 = swift_allocObject();
  *(v37 + 16) = &unk_230E6E508;
  *(v37 + 24) = v36;
  *(v35 + 32) = &unk_230E6E510;
  *(v35 + 40) = v37;
  v38 = sub_230E69310();
  v39 = v45;
  (*(*(v38 - 8) + 56))(v45, 1, 1, v38);
  v40 = swift_allocObject();
  v40[2] = 0;
  v40[3] = 0;
  v40[4] = v35;

  sub_230D8F204(0, 0, v39, &unk_230E6E518, v40);

  v42 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_230D379D4(char a1, uint64_t a2, char a3, uint64_t a4, void **a5, double a6)
{
  v46 = a5;
  v71 = *MEMORY[0x277D85DE8];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B010, &unk_230E733F0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v15 = &v43 - v14;
  *&v49[0] = 0;
  *(&v49[0] + 1) = 0xE000000000000000;
  sub_230E69540();
  MEMORY[0x23191DA00](0xD000000000000054, 0x8000000230E81030);
  LOBYTE(v48) = a1;
  v16 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v16);

  sub_230E68950();

  Current = CFAbsoluteTimeGetCurrent();
  v70 = 0;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v55 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v50 = 0u;
  memset(v49, 0, sizeof(v49));
  v48 = 93;
  v18 = task_info(*MEMORY[0x277D85F48], 0x16u, v49, &v48);
  v19 = 0.0;
  if (!v18)
  {
    if (__CFADD__(v50, *(&v54 + 1)))
    {
      __break(1u);
    }

    v19 = vcvtd_n_f64_u64(v50 + *(&v54 + 1), 0x14uLL);
  }

  v45 = v15;
  v20 = Current - a6;
  v21 = (v18 != 0) | a3;
  v22 = v19 - *&a2;
  if ((v18 != 0) | a3 & 1)
  {
    v23 = 0.0;
  }

  else
  {
    v23 = v22;
  }

  sub_230E68950();
  LOBYTE(v49[0]) = *a4;
  v24 = RequestType.rawValue.getter();
  v44 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B018, &unk_230E6E468);
  v26 = swift_allocObject();
  v47 = xmmword_230E6B3B0;
  *(v26 + 16) = xmmword_230E6B3B0;
  *&v49[0] = 0x6C616E7265746E69;
  *(&v49[0] + 1) = 0xE90000000000002ELL;
  LOBYTE(v48) = a1;
  v27 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v27);

  v28 = v49[0];
  v29 = *v46;
  if (*v46)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5BCD0, &qword_230E6E480);
    v30 = swift_allocObject();
    *(v30 + 16) = v47;
    *(v30 + 32) = v29;
  }

  else
  {
    v30 = 0;
  }

  *(v26 + 32) = v28;
  *(v26 + 48) = v20;
  *(v26 + 56) = 0;
  *(v26 + 64) = v23;
  *(v26 + 72) = v21 & 1;
  *(v26 + 80) = v30;
  v32 = *(a4 + 8);
  v31 = *(a4 + 16);
  v33 = v29;

  sub_230E68950();
  if (qword_27DB5A430 != -1)
  {
    swift_once();
  }

  v34 = qword_27DB5A438;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5B020, &unk_230E73400);
  v35 = swift_allocObject();
  *(v35 + 16) = v47;
  v36 = swift_allocObject();
  *(v36 + 16) = v34;
  *(v36 + 24) = v24;
  *(v36 + 32) = v44;
  *(v36 + 40) = 1;
  *(v36 + 48) = v26;
  *(v36 + 56) = v32;
  *(v36 + 64) = v31;
  *(v36 + 72) = 257;
  *(v36 + 80) = 0;
  v37 = swift_allocObject();
  *(v37 + 16) = &unk_230E6E670;
  *(v37 + 24) = v36;
  *(v35 + 32) = &unk_230E6E678;
  *(v35 + 40) = v37;
  v38 = sub_230E69310();
  v39 = v45;
  (*(*(v38 - 8) + 56))(v45, 1, 1, v38);
  v40 = swift_allocObject();
  v40[2] = 0;
  v40[3] = 0;
  v40[4] = v35;

  sub_230D8F204(0, 0, v39, &unk_230E6E680, v40);

  v42 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_230D37E94(char a1, uint64_t a2, char a3, uint64_t a4, void **a5, double a6)
{
  v46 = a5;
  v71 = *MEMORY[0x277D85DE8];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B010, &unk_230E733F0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v15 = &v43 - v14;
  *&v49[0] = 0;
  *(&v49[0] + 1) = 0xE000000000000000;
  sub_230E69540();
  MEMORY[0x23191DA00](0xD000000000000054, 0x8000000230E81030);
  LOBYTE(v48) = a1;
  v16 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v16);

  sub_230E68950();

  Current = CFAbsoluteTimeGetCurrent();
  v70 = 0;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v55 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v50 = 0u;
  memset(v49, 0, sizeof(v49));
  v48 = 93;
  v18 = task_info(*MEMORY[0x277D85F48], 0x16u, v49, &v48);
  v19 = 0.0;
  if (!v18)
  {
    if (__CFADD__(v50, *(&v54 + 1)))
    {
      __break(1u);
    }

    v19 = vcvtd_n_f64_u64(v50 + *(&v54 + 1), 0x14uLL);
  }

  v45 = v15;
  v20 = Current - a6;
  v21 = (v18 != 0) | a3;
  v22 = v19 - *&a2;
  if ((v18 != 0) | a3 & 1)
  {
    v23 = 0.0;
  }

  else
  {
    v23 = v22;
  }

  sub_230E68950();
  LOBYTE(v49[0]) = *a4;
  v24 = RequestType.rawValue.getter();
  v44 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B018, &unk_230E6E468);
  v26 = swift_allocObject();
  v47 = xmmword_230E6B3B0;
  *(v26 + 16) = xmmword_230E6B3B0;
  *&v49[0] = 0x6C616E7265746E69;
  *(&v49[0] + 1) = 0xE90000000000002ELL;
  LOBYTE(v48) = a1;
  v27 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v27);

  v28 = v49[0];
  v29 = *v46;
  if (*v46)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5BCD0, &qword_230E6E480);
    v30 = swift_allocObject();
    *(v30 + 16) = v47;
    *(v30 + 32) = v29;
  }

  else
  {
    v30 = 0;
  }

  *(v26 + 32) = v28;
  *(v26 + 48) = v20;
  *(v26 + 56) = 0;
  *(v26 + 64) = v23;
  *(v26 + 72) = v21 & 1;
  *(v26 + 80) = v30;
  v32 = *(a4 + 8);
  v31 = *(a4 + 16);
  v33 = v29;

  sub_230E68950();
  if (qword_27DB5A430 != -1)
  {
    swift_once();
  }

  v34 = qword_27DB5A438;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5B020, &unk_230E73400);
  v35 = swift_allocObject();
  *(v35 + 16) = v47;
  v36 = swift_allocObject();
  *(v36 + 16) = v34;
  *(v36 + 24) = v24;
  *(v36 + 32) = v44;
  *(v36 + 40) = 1;
  *(v36 + 48) = v26;
  *(v36 + 56) = v32;
  *(v36 + 64) = v31;
  *(v36 + 72) = 257;
  *(v36 + 80) = 0;
  v37 = swift_allocObject();
  *(v37 + 16) = &unk_230E6E658;
  *(v37 + 24) = v36;
  *(v35 + 32) = &unk_230E6E660;
  *(v35 + 40) = v37;
  v38 = sub_230E69310();
  v39 = v45;
  (*(*(v38 - 8) + 56))(v45, 1, 1, v38);
  v40 = swift_allocObject();
  v40[2] = 0;
  v40[3] = 0;
  v40[4] = v35;

  sub_230D8F204(0, 0, v39, &unk_230E6E668, v40);

  v42 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_230D38354(char a1, uint64_t a2, char a3, uint64_t a4, void **a5, double a6)
{
  v46 = a5;
  v71 = *MEMORY[0x277D85DE8];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B010, &unk_230E733F0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v15 = &v43 - v14;
  *&v49[0] = 0;
  *(&v49[0] + 1) = 0xE000000000000000;
  sub_230E69540();
  MEMORY[0x23191DA00](0xD000000000000054, 0x8000000230E81030);
  LOBYTE(v48) = a1;
  v16 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v16);

  sub_230E68950();

  Current = CFAbsoluteTimeGetCurrent();
  v70 = 0;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v55 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v50 = 0u;
  memset(v49, 0, sizeof(v49));
  v48 = 93;
  v18 = task_info(*MEMORY[0x277D85F48], 0x16u, v49, &v48);
  v19 = 0.0;
  if (!v18)
  {
    if (__CFADD__(v50, *(&v54 + 1)))
    {
      __break(1u);
    }

    v19 = vcvtd_n_f64_u64(v50 + *(&v54 + 1), 0x14uLL);
  }

  v45 = v15;
  v20 = Current - a6;
  v21 = (v18 != 0) | a3;
  v22 = v19 - *&a2;
  if ((v18 != 0) | a3 & 1)
  {
    v23 = 0.0;
  }

  else
  {
    v23 = v22;
  }

  sub_230E68950();
  LOBYTE(v49[0]) = *a4;
  v24 = RequestType.rawValue.getter();
  v44 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B018, &unk_230E6E468);
  v26 = swift_allocObject();
  v47 = xmmword_230E6B3B0;
  *(v26 + 16) = xmmword_230E6B3B0;
  *&v49[0] = 0x6C616E7265746E69;
  *(&v49[0] + 1) = 0xE90000000000002ELL;
  LOBYTE(v48) = a1;
  v27 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v27);

  v28 = v49[0];
  v29 = *v46;
  if (*v46)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5BCD0, &qword_230E6E480);
    v30 = swift_allocObject();
    *(v30 + 16) = v47;
    *(v30 + 32) = v29;
  }

  else
  {
    v30 = 0;
  }

  *(v26 + 32) = v28;
  *(v26 + 48) = v20;
  *(v26 + 56) = 0;
  *(v26 + 64) = v23;
  *(v26 + 72) = v21 & 1;
  *(v26 + 80) = v30;
  v32 = *(a4 + 8);
  v31 = *(a4 + 16);
  v33 = v29;

  sub_230E68950();
  if (qword_27DB5A430 != -1)
  {
    swift_once();
  }

  v34 = qword_27DB5A438;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5B020, &unk_230E73400);
  v35 = swift_allocObject();
  *(v35 + 16) = v47;
  v36 = swift_allocObject();
  *(v36 + 16) = v34;
  *(v36 + 24) = v24;
  *(v36 + 32) = v44;
  *(v36 + 40) = 1;
  *(v36 + 48) = v26;
  *(v36 + 56) = v32;
  *(v36 + 64) = v31;
  *(v36 + 72) = 257;
  *(v36 + 80) = 0;
  v37 = swift_allocObject();
  *(v37 + 16) = &unk_230E6E640;
  *(v37 + 24) = v36;
  *(v35 + 32) = &unk_230E6E648;
  *(v35 + 40) = v37;
  v38 = sub_230E69310();
  v39 = v45;
  (*(*(v38 - 8) + 56))(v45, 1, 1, v38);
  v40 = swift_allocObject();
  v40[2] = 0;
  v40[3] = 0;
  v40[4] = v35;

  sub_230D8F204(0, 0, v39, &unk_230E6E650, v40);

  v42 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_230D38814(char a1, uint64_t a2, char a3, uint64_t a4, void **a5, double a6)
{
  v46 = a5;
  v71 = *MEMORY[0x277D85DE8];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B010, &unk_230E733F0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v15 = &v43 - v14;
  *&v49[0] = 0;
  *(&v49[0] + 1) = 0xE000000000000000;
  sub_230E69540();
  MEMORY[0x23191DA00](0xD000000000000054, 0x8000000230E81030);
  LOBYTE(v48) = a1;
  v16 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v16);

  sub_230E68950();

  Current = CFAbsoluteTimeGetCurrent();
  v70 = 0;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v55 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v50 = 0u;
  memset(v49, 0, sizeof(v49));
  v48 = 93;
  v18 = task_info(*MEMORY[0x277D85F48], 0x16u, v49, &v48);
  v19 = 0.0;
  if (!v18)
  {
    if (__CFADD__(v50, *(&v54 + 1)))
    {
      __break(1u);
    }

    v19 = vcvtd_n_f64_u64(v50 + *(&v54 + 1), 0x14uLL);
  }

  v45 = v15;
  v20 = Current - a6;
  v21 = (v18 != 0) | a3;
  v22 = v19 - *&a2;
  if ((v18 != 0) | a3 & 1)
  {
    v23 = 0.0;
  }

  else
  {
    v23 = v22;
  }

  sub_230E68950();
  LOBYTE(v49[0]) = *a4;
  v24 = RequestType.rawValue.getter();
  v44 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B018, &unk_230E6E468);
  v26 = swift_allocObject();
  v47 = xmmword_230E6B3B0;
  *(v26 + 16) = xmmword_230E6B3B0;
  *&v49[0] = 0x6C616E7265746E69;
  *(&v49[0] + 1) = 0xE90000000000002ELL;
  LOBYTE(v48) = a1;
  v27 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v27);

  v28 = v49[0];
  v29 = *v46;
  if (*v46)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5BCD0, &qword_230E6E480);
    v30 = swift_allocObject();
    *(v30 + 16) = v47;
    *(v30 + 32) = v29;
  }

  else
  {
    v30 = 0;
  }

  *(v26 + 32) = v28;
  *(v26 + 48) = v20;
  *(v26 + 56) = 0;
  *(v26 + 64) = v23;
  *(v26 + 72) = v21 & 1;
  *(v26 + 80) = v30;
  v32 = *(a4 + 8);
  v31 = *(a4 + 16);
  v33 = v29;

  sub_230E68950();
  if (qword_27DB5A430 != -1)
  {
    swift_once();
  }

  v34 = qword_27DB5A438;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5B020, &unk_230E73400);
  v35 = swift_allocObject();
  *(v35 + 16) = v47;
  v36 = swift_allocObject();
  *(v36 + 16) = v34;
  *(v36 + 24) = v24;
  *(v36 + 32) = v44;
  *(v36 + 40) = 1;
  *(v36 + 48) = v26;
  *(v36 + 56) = v32;
  *(v36 + 64) = v31;
  *(v36 + 72) = 257;
  *(v36 + 80) = 0;
  v37 = swift_allocObject();
  *(v37 + 16) = &unk_230E6E628;
  *(v37 + 24) = v36;
  *(v35 + 32) = &unk_230E6E630;
  *(v35 + 40) = v37;
  v38 = sub_230E69310();
  v39 = v45;
  (*(*(v38 - 8) + 56))(v45, 1, 1, v38);
  v40 = swift_allocObject();
  v40[2] = 0;
  v40[3] = 0;
  v40[4] = v35;

  sub_230D8F204(0, 0, v39, &unk_230E6E638, v40);

  v42 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_230D38CD4(char a1, uint64_t a2, char a3, uint64_t a4, void **a5, double a6)
{
  v46 = a5;
  v71 = *MEMORY[0x277D85DE8];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B010, &unk_230E733F0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v15 = &v43 - v14;
  *&v49[0] = 0;
  *(&v49[0] + 1) = 0xE000000000000000;
  sub_230E69540();
  MEMORY[0x23191DA00](0xD000000000000054, 0x8000000230E81030);
  LOBYTE(v48) = a1;
  v16 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v16);

  sub_230E68950();

  Current = CFAbsoluteTimeGetCurrent();
  v70 = 0;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v55 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v50 = 0u;
  memset(v49, 0, sizeof(v49));
  v48 = 93;
  v18 = task_info(*MEMORY[0x277D85F48], 0x16u, v49, &v48);
  v19 = 0.0;
  if (!v18)
  {
    if (__CFADD__(v50, *(&v54 + 1)))
    {
      __break(1u);
    }

    v19 = vcvtd_n_f64_u64(v50 + *(&v54 + 1), 0x14uLL);
  }

  v45 = v15;
  v20 = Current - a6;
  v21 = (v18 != 0) | a3;
  v22 = v19 - *&a2;
  if ((v18 != 0) | a3 & 1)
  {
    v23 = 0.0;
  }

  else
  {
    v23 = v22;
  }

  sub_230E68950();
  LOBYTE(v49[0]) = *a4;
  v24 = RequestType.rawValue.getter();
  v44 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B018, &unk_230E6E468);
  v26 = swift_allocObject();
  v47 = xmmword_230E6B3B0;
  *(v26 + 16) = xmmword_230E6B3B0;
  *&v49[0] = 0x6C616E7265746E69;
  *(&v49[0] + 1) = 0xE90000000000002ELL;
  LOBYTE(v48) = a1;
  v27 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v27);

  v28 = v49[0];
  v29 = *v46;
  if (*v46)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5BCD0, &qword_230E6E480);
    v30 = swift_allocObject();
    *(v30 + 16) = v47;
    *(v30 + 32) = v29;
  }

  else
  {
    v30 = 0;
  }

  *(v26 + 32) = v28;
  *(v26 + 48) = v20;
  *(v26 + 56) = 0;
  *(v26 + 64) = v23;
  *(v26 + 72) = v21 & 1;
  *(v26 + 80) = v30;
  v32 = *(a4 + 8);
  v31 = *(a4 + 16);
  v33 = v29;

  sub_230E68950();
  if (qword_27DB5A430 != -1)
  {
    swift_once();
  }

  v34 = qword_27DB5A438;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5B020, &unk_230E73400);
  v35 = swift_allocObject();
  *(v35 + 16) = v47;
  v36 = swift_allocObject();
  *(v36 + 16) = v34;
  *(v36 + 24) = v24;
  *(v36 + 32) = v44;
  *(v36 + 40) = 1;
  *(v36 + 48) = v26;
  *(v36 + 56) = v32;
  *(v36 + 64) = v31;
  *(v36 + 72) = 257;
  *(v36 + 80) = 0;
  v37 = swift_allocObject();
  *(v37 + 16) = &unk_230E6E580;
  *(v37 + 24) = v36;
  *(v35 + 32) = &unk_230E6E588;
  *(v35 + 40) = v37;
  v38 = sub_230E69310();
  v39 = v45;
  (*(*(v38 - 8) + 56))(v45, 1, 1, v38);
  v40 = swift_allocObject();
  v40[2] = 0;
  v40[3] = 0;
  v40[4] = v35;

  sub_230D8F204(0, 0, v39, &unk_230E6E590, v40);

  v42 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_230D39194(char a1, uint64_t a2, char a3, uint64_t a4, void **a5, double a6)
{
  v46 = a5;
  v71 = *MEMORY[0x277D85DE8];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B010, &unk_230E733F0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v15 = &v43 - v14;
  *&v49[0] = 0;
  *(&v49[0] + 1) = 0xE000000000000000;
  sub_230E69540();
  MEMORY[0x23191DA00](0xD000000000000054, 0x8000000230E81030);
  LOBYTE(v48) = a1;
  v16 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v16);

  sub_230E68950();

  Current = CFAbsoluteTimeGetCurrent();
  v70 = 0;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v55 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v50 = 0u;
  memset(v49, 0, sizeof(v49));
  v48 = 93;
  v18 = task_info(*MEMORY[0x277D85F48], 0x16u, v49, &v48);
  v19 = 0.0;
  if (!v18)
  {
    if (__CFADD__(v50, *(&v54 + 1)))
    {
      __break(1u);
    }

    v19 = vcvtd_n_f64_u64(v50 + *(&v54 + 1), 0x14uLL);
  }

  v45 = v15;
  v20 = Current - a6;
  v21 = (v18 != 0) | a3;
  v22 = v19 - *&a2;
  if ((v18 != 0) | a3 & 1)
  {
    v23 = 0.0;
  }

  else
  {
    v23 = v22;
  }

  sub_230E68950();
  LOBYTE(v49[0]) = *a4;
  v24 = RequestType.rawValue.getter();
  v44 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B018, &unk_230E6E468);
  v26 = swift_allocObject();
  v47 = xmmword_230E6B3B0;
  *(v26 + 16) = xmmword_230E6B3B0;
  *&v49[0] = 0x6C616E7265746E69;
  *(&v49[0] + 1) = 0xE90000000000002ELL;
  LOBYTE(v48) = a1;
  v27 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v27);

  v28 = v49[0];
  v29 = *v46;
  if (*v46)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5BCD0, &qword_230E6E480);
    v30 = swift_allocObject();
    *(v30 + 16) = v47;
    *(v30 + 32) = v29;
  }

  else
  {
    v30 = 0;
  }

  *(v26 + 32) = v28;
  *(v26 + 48) = v20;
  *(v26 + 56) = 0;
  *(v26 + 64) = v23;
  *(v26 + 72) = v21 & 1;
  *(v26 + 80) = v30;
  v32 = *(a4 + 8);
  v31 = *(a4 + 16);
  v33 = v29;

  sub_230E68950();
  if (qword_27DB5A430 != -1)
  {
    swift_once();
  }

  v34 = qword_27DB5A438;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5B020, &unk_230E73400);
  v35 = swift_allocObject();
  *(v35 + 16) = v47;
  v36 = swift_allocObject();
  *(v36 + 16) = v34;
  *(v36 + 24) = v24;
  *(v36 + 32) = v44;
  *(v36 + 40) = 1;
  *(v36 + 48) = v26;
  *(v36 + 56) = v32;
  *(v36 + 64) = v31;
  *(v36 + 72) = 257;
  *(v36 + 80) = 0;
  v37 = swift_allocObject();
  *(v37 + 16) = &unk_230E6E610;
  *(v37 + 24) = v36;
  *(v35 + 32) = &unk_230E6E618;
  *(v35 + 40) = v37;
  v38 = sub_230E69310();
  v39 = v45;
  (*(*(v38 - 8) + 56))(v45, 1, 1, v38);
  v40 = swift_allocObject();
  v40[2] = 0;
  v40[3] = 0;
  v40[4] = v35;

  sub_230D8F204(0, 0, v39, &unk_230E6E620, v40);

  v42 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_230D39654(char a1, uint64_t a2, char a3, uint64_t a4, void **a5, double a6)
{
  v46 = a5;
  v71 = *MEMORY[0x277D85DE8];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B010, &unk_230E733F0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v15 = &v43 - v14;
  *&v49[0] = 0;
  *(&v49[0] + 1) = 0xE000000000000000;
  sub_230E69540();
  MEMORY[0x23191DA00](0xD000000000000054, 0x8000000230E81030);
  LOBYTE(v48) = a1;
  v16 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v16);

  sub_230E68950();

  Current = CFAbsoluteTimeGetCurrent();
  v70 = 0;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v55 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v50 = 0u;
  memset(v49, 0, sizeof(v49));
  v48 = 93;
  v18 = task_info(*MEMORY[0x277D85F48], 0x16u, v49, &v48);
  v19 = 0.0;
  if (!v18)
  {
    if (__CFADD__(v50, *(&v54 + 1)))
    {
      __break(1u);
    }

    v19 = vcvtd_n_f64_u64(v50 + *(&v54 + 1), 0x14uLL);
  }

  v45 = v15;
  v20 = Current - a6;
  v21 = (v18 != 0) | a3;
  v22 = v19 - *&a2;
  if ((v18 != 0) | a3 & 1)
  {
    v23 = 0.0;
  }

  else
  {
    v23 = v22;
  }

  sub_230E68950();
  LOBYTE(v49[0]) = *a4;
  v24 = RequestType.rawValue.getter();
  v44 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B018, &unk_230E6E468);
  v26 = swift_allocObject();
  v47 = xmmword_230E6B3B0;
  *(v26 + 16) = xmmword_230E6B3B0;
  *&v49[0] = 0x6C616E7265746E69;
  *(&v49[0] + 1) = 0xE90000000000002ELL;
  LOBYTE(v48) = a1;
  v27 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v27);

  v28 = v49[0];
  v29 = *v46;
  if (*v46)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5BCD0, &qword_230E6E480);
    v30 = swift_allocObject();
    *(v30 + 16) = v47;
    *(v30 + 32) = v29;
  }

  else
  {
    v30 = 0;
  }

  *(v26 + 32) = v28;
  *(v26 + 48) = v20;
  *(v26 + 56) = 0;
  *(v26 + 64) = v23;
  *(v26 + 72) = v21 & 1;
  *(v26 + 80) = v30;
  v32 = *(a4 + 8);
  v31 = *(a4 + 16);
  v33 = v29;

  sub_230E68950();
  if (qword_27DB5A430 != -1)
  {
    swift_once();
  }

  v34 = qword_27DB5A438;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5B020, &unk_230E73400);
  v35 = swift_allocObject();
  *(v35 + 16) = v47;
  v36 = swift_allocObject();
  *(v36 + 16) = v34;
  *(v36 + 24) = v24;
  *(v36 + 32) = v44;
  *(v36 + 40) = 1;
  *(v36 + 48) = v26;
  *(v36 + 56) = v32;
  *(v36 + 64) = v31;
  *(v36 + 72) = 257;
  *(v36 + 80) = 0;
  v37 = swift_allocObject();
  *(v37 + 16) = &unk_230E6E5E0;
  *(v37 + 24) = v36;
  *(v35 + 32) = &unk_230E6E5E8;
  *(v35 + 40) = v37;
  v38 = sub_230E69310();
  v39 = v45;
  (*(*(v38 - 8) + 56))(v45, 1, 1, v38);
  v40 = swift_allocObject();
  v40[2] = 0;
  v40[3] = 0;
  v40[4] = v35;

  sub_230D8F204(0, 0, v39, &unk_230E6E5F0, v40);

  v42 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_230D39B14(char a1, uint64_t a2, char a3, uint64_t a4, void **a5, double a6)
{
  v46 = a5;
  v71 = *MEMORY[0x277D85DE8];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B010, &unk_230E733F0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v15 = &v43 - v14;
  *&v49[0] = 0;
  *(&v49[0] + 1) = 0xE000000000000000;
  sub_230E69540();
  MEMORY[0x23191DA00](0xD000000000000054, 0x8000000230E81030);
  LOBYTE(v48) = a1;
  v16 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v16);

  sub_230E68950();

  Current = CFAbsoluteTimeGetCurrent();
  v70 = 0;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v55 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v50 = 0u;
  memset(v49, 0, sizeof(v49));
  v48 = 93;
  v18 = task_info(*MEMORY[0x277D85F48], 0x16u, v49, &v48);
  v19 = 0.0;
  if (!v18)
  {
    if (__CFADD__(v50, *(&v54 + 1)))
    {
      __break(1u);
    }

    v19 = vcvtd_n_f64_u64(v50 + *(&v54 + 1), 0x14uLL);
  }

  v45 = v15;
  v20 = Current - a6;
  v21 = (v18 != 0) | a3;
  v22 = v19 - *&a2;
  if ((v18 != 0) | a3 & 1)
  {
    v23 = 0.0;
  }

  else
  {
    v23 = v22;
  }

  sub_230E68950();
  LOBYTE(v49[0]) = *a4;
  v24 = RequestType.rawValue.getter();
  v44 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B018, &unk_230E6E468);
  v26 = swift_allocObject();
  v47 = xmmword_230E6B3B0;
  *(v26 + 16) = xmmword_230E6B3B0;
  *&v49[0] = 0x6C616E7265746E69;
  *(&v49[0] + 1) = 0xE90000000000002ELL;
  LOBYTE(v48) = a1;
  v27 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v27);

  v28 = v49[0];
  v29 = *v46;
  if (*v46)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5BCD0, &qword_230E6E480);
    v30 = swift_allocObject();
    *(v30 + 16) = v47;
    *(v30 + 32) = v29;
  }

  else
  {
    v30 = 0;
  }

  *(v26 + 32) = v28;
  *(v26 + 48) = v20;
  *(v26 + 56) = 0;
  *(v26 + 64) = v23;
  *(v26 + 72) = v21 & 1;
  *(v26 + 80) = v30;
  v32 = *(a4 + 8);
  v31 = *(a4 + 16);
  v33 = v29;

  sub_230E68950();
  if (qword_27DB5A430 != -1)
  {
    swift_once();
  }

  v34 = qword_27DB5A438;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5B020, &unk_230E73400);
  v35 = swift_allocObject();
  *(v35 + 16) = v47;
  v36 = swift_allocObject();
  *(v36 + 16) = v34;
  *(v36 + 24) = v24;
  *(v36 + 32) = v44;
  *(v36 + 40) = 1;
  *(v36 + 48) = v26;
  *(v36 + 56) = v32;
  *(v36 + 64) = v31;
  *(v36 + 72) = 257;
  *(v36 + 80) = 0;
  v37 = swift_allocObject();
  *(v37 + 16) = &unk_230E6E5C8;
  *(v37 + 24) = v36;
  *(v35 + 32) = &unk_230E6E5D0;
  *(v35 + 40) = v37;
  v38 = sub_230E69310();
  v39 = v45;
  (*(*(v38 - 8) + 56))(v45, 1, 1, v38);
  v40 = swift_allocObject();
  v40[2] = 0;
  v40[3] = 0;
  v40[4] = v35;

  sub_230D8F204(0, 0, v39, &unk_230E6E5D8, v40);

  v42 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_230D39FD4(char a1, uint64_t a2, char a3, uint64_t a4, void **a5, double a6)
{
  v46 = a5;
  v71 = *MEMORY[0x277D85DE8];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B010, &unk_230E733F0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v15 = &v43 - v14;
  *&v49[0] = 0;
  *(&v49[0] + 1) = 0xE000000000000000;
  sub_230E69540();
  MEMORY[0x23191DA00](0xD000000000000054, 0x8000000230E81030);
  LOBYTE(v48) = a1;
  v16 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v16);

  sub_230E68950();

  Current = CFAbsoluteTimeGetCurrent();
  v70 = 0;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v55 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v50 = 0u;
  memset(v49, 0, sizeof(v49));
  v48 = 93;
  v18 = task_info(*MEMORY[0x277D85F48], 0x16u, v49, &v48);
  v19 = 0.0;
  if (!v18)
  {
    if (__CFADD__(v50, *(&v54 + 1)))
    {
      __break(1u);
    }

    v19 = vcvtd_n_f64_u64(v50 + *(&v54 + 1), 0x14uLL);
  }

  v45 = v15;
  v20 = Current - a6;
  v21 = (v18 != 0) | a3;
  v22 = v19 - *&a2;
  if ((v18 != 0) | a3 & 1)
  {
    v23 = 0.0;
  }

  else
  {
    v23 = v22;
  }

  sub_230E68950();
  LOBYTE(v49[0]) = *a4;
  v24 = RequestType.rawValue.getter();
  v44 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B018, &unk_230E6E468);
  v26 = swift_allocObject();
  v47 = xmmword_230E6B3B0;
  *(v26 + 16) = xmmword_230E6B3B0;
  *&v49[0] = 0x6C616E7265746E69;
  *(&v49[0] + 1) = 0xE90000000000002ELL;
  LOBYTE(v48) = a1;
  v27 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v27);

  v28 = v49[0];
  v29 = *v46;
  if (*v46)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5BCD0, &qword_230E6E480);
    v30 = swift_allocObject();
    *(v30 + 16) = v47;
    *(v30 + 32) = v29;
  }

  else
  {
    v30 = 0;
  }

  *(v26 + 32) = v28;
  *(v26 + 48) = v20;
  *(v26 + 56) = 0;
  *(v26 + 64) = v23;
  *(v26 + 72) = v21 & 1;
  *(v26 + 80) = v30;
  v32 = *(a4 + 8);
  v31 = *(a4 + 16);
  v33 = v29;

  sub_230E68950();
  if (qword_27DB5A430 != -1)
  {
    swift_once();
  }

  v34 = qword_27DB5A438;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5B020, &unk_230E73400);
  v35 = swift_allocObject();
  *(v35 + 16) = v47;
  v36 = swift_allocObject();
  *(v36 + 16) = v34;
  *(v36 + 24) = v24;
  *(v36 + 32) = v44;
  *(v36 + 40) = 1;
  *(v36 + 48) = v26;
  *(v36 + 56) = v32;
  *(v36 + 64) = v31;
  *(v36 + 72) = 257;
  *(v36 + 80) = 0;
  v37 = swift_allocObject();
  *(v37 + 16) = &unk_230E6E5B0;
  *(v37 + 24) = v36;
  *(v35 + 32) = &unk_230E6E5B8;
  *(v35 + 40) = v37;
  v38 = sub_230E69310();
  v39 = v45;
  (*(*(v38 - 8) + 56))(v45, 1, 1, v38);
  v40 = swift_allocObject();
  v40[2] = 0;
  v40[3] = 0;
  v40[4] = v35;

  sub_230D8F204(0, 0, v39, &unk_230E6E5C0, v40);

  v42 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_230D3A494(char a1, uint64_t a2, char a3, uint64_t a4, void **a5, double a6)
{
  v46 = a5;
  v71 = *MEMORY[0x277D85DE8];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B010, &unk_230E733F0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v15 = &v43 - v14;
  *&v49[0] = 0;
  *(&v49[0] + 1) = 0xE000000000000000;
  sub_230E69540();
  MEMORY[0x23191DA00](0xD000000000000054, 0x8000000230E81030);
  LOBYTE(v48) = a1;
  v16 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v16);

  sub_230E68950();

  Current = CFAbsoluteTimeGetCurrent();
  v70 = 0;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v55 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v50 = 0u;
  memset(v49, 0, sizeof(v49));
  v48 = 93;
  v18 = task_info(*MEMORY[0x277D85F48], 0x16u, v49, &v48);
  v19 = 0.0;
  if (!v18)
  {
    if (__CFADD__(v50, *(&v54 + 1)))
    {
      __break(1u);
    }

    v19 = vcvtd_n_f64_u64(v50 + *(&v54 + 1), 0x14uLL);
  }

  v45 = v15;
  v20 = Current - a6;
  v21 = (v18 != 0) | a3;
  v22 = v19 - *&a2;
  if ((v18 != 0) | a3 & 1)
  {
    v23 = 0.0;
  }

  else
  {
    v23 = v22;
  }

  sub_230E68950();
  LOBYTE(v49[0]) = *a4;
  v24 = RequestType.rawValue.getter();
  v44 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B018, &unk_230E6E468);
  v26 = swift_allocObject();
  v47 = xmmword_230E6B3B0;
  *(v26 + 16) = xmmword_230E6B3B0;
  *&v49[0] = 0x6C616E7265746E69;
  *(&v49[0] + 1) = 0xE90000000000002ELL;
  LOBYTE(v48) = a1;
  v27 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v27);

  v28 = v49[0];
  v29 = *v46;
  if (*v46)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5BCD0, &qword_230E6E480);
    v30 = swift_allocObject();
    *(v30 + 16) = v47;
    *(v30 + 32) = v29;
  }

  else
  {
    v30 = 0;
  }

  *(v26 + 32) = v28;
  *(v26 + 48) = v20;
  *(v26 + 56) = 0;
  *(v26 + 64) = v23;
  *(v26 + 72) = v21 & 1;
  *(v26 + 80) = v30;
  v32 = *(a4 + 8);
  v31 = *(a4 + 16);
  v33 = v29;

  sub_230E68950();
  if (qword_27DB5A430 != -1)
  {
    swift_once();
  }

  v34 = qword_27DB5A438;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5B020, &unk_230E73400);
  v35 = swift_allocObject();
  *(v35 + 16) = v47;
  v36 = swift_allocObject();
  *(v36 + 16) = v34;
  *(v36 + 24) = v24;
  *(v36 + 32) = v44;
  *(v36 + 40) = 1;
  *(v36 + 48) = v26;
  *(v36 + 56) = v32;
  *(v36 + 64) = v31;
  *(v36 + 72) = 257;
  *(v36 + 80) = 0;
  v37 = swift_allocObject();
  *(v37 + 16) = &unk_230E6E598;
  *(v37 + 24) = v36;
  *(v35 + 32) = &unk_230E6E5A0;
  *(v35 + 40) = v37;
  v38 = sub_230E69310();
  v39 = v45;
  (*(*(v38 - 8) + 56))(v45, 1, 1, v38);
  v40 = swift_allocObject();
  v40[2] = 0;
  v40[3] = 0;
  v40[4] = v35;

  sub_230D8F204(0, 0, v39, &unk_230E6E5A8, v40);

  v42 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_230D3A954(char a1, uint64_t a2, char a3, uint64_t a4, void **a5, double a6)
{
  v46 = a5;
  v71 = *MEMORY[0x277D85DE8];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B010, &unk_230E733F0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v15 = &v43 - v14;
  *&v49[0] = 0;
  *(&v49[0] + 1) = 0xE000000000000000;
  sub_230E69540();
  MEMORY[0x23191DA00](0xD000000000000054, 0x8000000230E81030);
  LOBYTE(v48) = a1;
  v16 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v16);

  sub_230E68950();

  Current = CFAbsoluteTimeGetCurrent();
  v70 = 0;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v55 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v50 = 0u;
  memset(v49, 0, sizeof(v49));
  v48 = 93;
  v18 = task_info(*MEMORY[0x277D85F48], 0x16u, v49, &v48);
  v19 = 0.0;
  if (!v18)
  {
    if (__CFADD__(v50, *(&v54 + 1)))
    {
      __break(1u);
    }

    v19 = vcvtd_n_f64_u64(v50 + *(&v54 + 1), 0x14uLL);
  }

  v45 = v15;
  v20 = Current - a6;
  v21 = (v18 != 0) | a3;
  v22 = v19 - *&a2;
  if ((v18 != 0) | a3 & 1)
  {
    v23 = 0.0;
  }

  else
  {
    v23 = v22;
  }

  sub_230E68950();
  LOBYTE(v49[0]) = *a4;
  v24 = RequestType.rawValue.getter();
  v44 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B018, &unk_230E6E468);
  v26 = swift_allocObject();
  v47 = xmmword_230E6B3B0;
  *(v26 + 16) = xmmword_230E6B3B0;
  *&v49[0] = 0x6C616E7265746E69;
  *(&v49[0] + 1) = 0xE90000000000002ELL;
  LOBYTE(v48) = a1;
  v27 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v27);

  v28 = v49[0];
  v29 = *v46;
  if (*v46)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5BCD0, &qword_230E6E480);
    v30 = swift_allocObject();
    *(v30 + 16) = v47;
    *(v30 + 32) = v29;
  }

  else
  {
    v30 = 0;
  }

  *(v26 + 32) = v28;
  *(v26 + 48) = v20;
  *(v26 + 56) = 0;
  *(v26 + 64) = v23;
  *(v26 + 72) = v21 & 1;
  *(v26 + 80) = v30;
  v32 = *(a4 + 8);
  v31 = *(a4 + 16);
  v33 = v29;

  sub_230E68950();
  if (qword_27DB5A430 != -1)
  {
    swift_once();
  }

  v34 = qword_27DB5A438;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5B020, &unk_230E73400);
  v35 = swift_allocObject();
  *(v35 + 16) = v47;
  v36 = swift_allocObject();
  *(v36 + 16) = v34;
  *(v36 + 24) = v24;
  *(v36 + 32) = v44;
  *(v36 + 40) = 1;
  *(v36 + 48) = v26;
  *(v36 + 56) = v32;
  *(v36 + 64) = v31;
  *(v36 + 72) = 257;
  *(v36 + 80) = 0;
  v37 = swift_allocObject();
  *(v37 + 16) = &unk_230E6E538;
  *(v37 + 24) = v36;
  *(v35 + 32) = &unk_230E6E540;
  *(v35 + 40) = v37;
  v38 = sub_230E69310();
  v39 = v45;
  (*(*(v38 - 8) + 56))(v45, 1, 1, v38);
  v40 = swift_allocObject();
  v40[2] = 0;
  v40[3] = 0;
  v40[4] = v35;

  sub_230D8F204(0, 0, v39, &unk_230E6E548, v40);

  v42 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_230D3AE14(char a1, uint64_t a2, char a3, uint64_t a4, void **a5, double a6)
{
  v46 = a5;
  v71 = *MEMORY[0x277D85DE8];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B010, &unk_230E733F0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v15 = &v43 - v14;
  *&v49[0] = 0;
  *(&v49[0] + 1) = 0xE000000000000000;
  sub_230E69540();
  MEMORY[0x23191DA00](0xD000000000000054, 0x8000000230E81030);
  LOBYTE(v48) = a1;
  v16 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v16);

  sub_230E68950();

  Current = CFAbsoluteTimeGetCurrent();
  v70 = 0;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v55 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v50 = 0u;
  memset(v49, 0, sizeof(v49));
  v48 = 93;
  v18 = task_info(*MEMORY[0x277D85F48], 0x16u, v49, &v48);
  v19 = 0.0;
  if (!v18)
  {
    if (__CFADD__(v50, *(&v54 + 1)))
    {
      __break(1u);
    }

    v19 = vcvtd_n_f64_u64(v50 + *(&v54 + 1), 0x14uLL);
  }

  v45 = v15;
  v20 = Current - a6;
  v21 = (v18 != 0) | a3;
  v22 = v19 - *&a2;
  if ((v18 != 0) | a3 & 1)
  {
    v23 = 0.0;
  }

  else
  {
    v23 = v22;
  }

  sub_230E68950();
  LOBYTE(v49[0]) = *a4;
  v24 = RequestType.rawValue.getter();
  v44 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B018, &unk_230E6E468);
  v26 = swift_allocObject();
  v47 = xmmword_230E6B3B0;
  *(v26 + 16) = xmmword_230E6B3B0;
  *&v49[0] = 0x6C616E7265746E69;
  *(&v49[0] + 1) = 0xE90000000000002ELL;
  LOBYTE(v48) = a1;
  v27 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v27);

  v28 = v49[0];
  v29 = *v46;
  if (*v46)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5BCD0, &qword_230E6E480);
    v30 = swift_allocObject();
    *(v30 + 16) = v47;
    *(v30 + 32) = v29;
  }

  else
  {
    v30 = 0;
  }

  *(v26 + 32) = v28;
  *(v26 + 48) = v20;
  *(v26 + 56) = 0;
  *(v26 + 64) = v23;
  *(v26 + 72) = v21 & 1;
  *(v26 + 80) = v30;
  v32 = *(a4 + 8);
  v31 = *(a4 + 16);
  v33 = v29;

  sub_230E68950();
  if (qword_27DB5A430 != -1)
  {
    swift_once();
  }

  v34 = qword_27DB5A438;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5B020, &unk_230E73400);
  v35 = swift_allocObject();
  *(v35 + 16) = v47;
  v36 = swift_allocObject();
  *(v36 + 16) = v34;
  *(v36 + 24) = v24;
  *(v36 + 32) = v44;
  *(v36 + 40) = 1;
  *(v36 + 48) = v26;
  *(v36 + 56) = v32;
  *(v36 + 64) = v31;
  *(v36 + 72) = 257;
  *(v36 + 80) = 0;
  v37 = swift_allocObject();
  *(v37 + 16) = &unk_230E6E568;
  *(v37 + 24) = v36;
  *(v35 + 32) = &unk_230E6E570;
  *(v35 + 40) = v37;
  v38 = sub_230E69310();
  v39 = v45;
  (*(*(v38 - 8) + 56))(v45, 1, 1, v38);
  v40 = swift_allocObject();
  v40[2] = 0;
  v40[3] = 0;
  v40[4] = v35;

  sub_230D8F204(0, 0, v39, &unk_230E6E578, v40);

  v42 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_230D3B2D4(char a1, uint64_t a2, char a3, uint64_t a4, void **a5, double a6)
{
  v46 = a5;
  v71 = *MEMORY[0x277D85DE8];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B010, &unk_230E733F0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v15 = &v43 - v14;
  *&v49[0] = 0;
  *(&v49[0] + 1) = 0xE000000000000000;
  sub_230E69540();
  MEMORY[0x23191DA00](0xD000000000000054, 0x8000000230E81030);
  LOBYTE(v48) = a1;
  v16 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v16);

  sub_230E68950();

  Current = CFAbsoluteTimeGetCurrent();
  v70 = 0;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v55 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v50 = 0u;
  memset(v49, 0, sizeof(v49));
  v48 = 93;
  v18 = task_info(*MEMORY[0x277D85F48], 0x16u, v49, &v48);
  v19 = 0.0;
  if (!v18)
  {
    if (__CFADD__(v50, *(&v54 + 1)))
    {
      __break(1u);
    }

    v19 = vcvtd_n_f64_u64(v50 + *(&v54 + 1), 0x14uLL);
  }

  v45 = v15;
  v20 = Current - a6;
  v21 = (v18 != 0) | a3;
  v22 = v19 - *&a2;
  if ((v18 != 0) | a3 & 1)
  {
    v23 = 0.0;
  }

  else
  {
    v23 = v22;
  }

  sub_230E68950();
  LOBYTE(v49[0]) = *a4;
  v24 = RequestType.rawValue.getter();
  v44 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B018, &unk_230E6E468);
  v26 = swift_allocObject();
  v47 = xmmword_230E6B3B0;
  *(v26 + 16) = xmmword_230E6B3B0;
  *&v49[0] = 0x6C616E7265746E69;
  *(&v49[0] + 1) = 0xE90000000000002ELL;
  LOBYTE(v48) = a1;
  v27 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v27);

  v28 = v49[0];
  v29 = *v46;
  if (*v46)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5BCD0, &qword_230E6E480);
    v30 = swift_allocObject();
    *(v30 + 16) = v47;
    *(v30 + 32) = v29;
  }

  else
  {
    v30 = 0;
  }

  *(v26 + 32) = v28;
  *(v26 + 48) = v20;
  *(v26 + 56) = 0;
  *(v26 + 64) = v23;
  *(v26 + 72) = v21 & 1;
  *(v26 + 80) = v30;
  v32 = *(a4 + 8);
  v31 = *(a4 + 16);
  v33 = v29;

  sub_230E68950();
  if (qword_27DB5A430 != -1)
  {
    swift_once();
  }

  v34 = qword_27DB5A438;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5B020, &unk_230E73400);
  v35 = swift_allocObject();
  *(v35 + 16) = v47;
  v36 = swift_allocObject();
  *(v36 + 16) = v34;
  *(v36 + 24) = v24;
  *(v36 + 32) = v44;
  *(v36 + 40) = 1;
  *(v36 + 48) = v26;
  *(v36 + 56) = v32;
  *(v36 + 64) = v31;
  *(v36 + 72) = 257;
  *(v36 + 80) = 0;
  v37 = swift_allocObject();
  *(v37 + 16) = &unk_230E6E550;
  *(v37 + 24) = v36;
  *(v35 + 32) = &unk_230E6E558;
  *(v35 + 40) = v37;
  v38 = sub_230E69310();
  v39 = v45;
  (*(*(v38 - 8) + 56))(v45, 1, 1, v38);
  v40 = swift_allocObject();
  v40[2] = 0;
  v40[3] = 0;
  v40[4] = v35;

  sub_230D8F204(0, 0, v39, &unk_230E6E560, v40);

  v42 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_230D3B794(char a1, uint64_t a2, char a3, uint64_t a4, void **a5, double a6)
{
  v46 = a5;
  v71 = *MEMORY[0x277D85DE8];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B010, &unk_230E733F0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v15 = &v43 - v14;
  *&v49[0] = 0;
  *(&v49[0] + 1) = 0xE000000000000000;
  sub_230E69540();
  MEMORY[0x23191DA00](0xD000000000000054, 0x8000000230E81030);
  LOBYTE(v48) = a1;
  v16 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v16);

  sub_230E68950();

  Current = CFAbsoluteTimeGetCurrent();
  v70 = 0;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v55 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v50 = 0u;
  memset(v49, 0, sizeof(v49));
  v48 = 93;
  v18 = task_info(*MEMORY[0x277D85F48], 0x16u, v49, &v48);
  v19 = 0.0;
  if (!v18)
  {
    if (__CFADD__(v50, *(&v54 + 1)))
    {
      __break(1u);
    }

    v19 = vcvtd_n_f64_u64(v50 + *(&v54 + 1), 0x14uLL);
  }

  v45 = v15;
  v20 = Current - a6;
  v21 = (v18 != 0) | a3;
  v22 = v19 - *&a2;
  if ((v18 != 0) | a3 & 1)
  {
    v23 = 0.0;
  }

  else
  {
    v23 = v22;
  }

  sub_230E68950();
  LOBYTE(v49[0]) = *a4;
  v24 = RequestType.rawValue.getter();
  v44 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B018, &unk_230E6E468);
  v26 = swift_allocObject();
  v47 = xmmword_230E6B3B0;
  *(v26 + 16) = xmmword_230E6B3B0;
  *&v49[0] = 0x6C616E7265746E69;
  *(&v49[0] + 1) = 0xE90000000000002ELL;
  LOBYTE(v48) = a1;
  v27 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v27);

  v28 = v49[0];
  v29 = *v46;
  if (*v46)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5BCD0, &qword_230E6E480);
    v30 = swift_allocObject();
    *(v30 + 16) = v47;
    *(v30 + 32) = v29;
  }

  else
  {
    v30 = 0;
  }

  *(v26 + 32) = v28;
  *(v26 + 48) = v20;
  *(v26 + 56) = 0;
  *(v26 + 64) = v23;
  *(v26 + 72) = v21 & 1;
  *(v26 + 80) = v30;
  v32 = *(a4 + 8);
  v31 = *(a4 + 16);
  v33 = v29;

  sub_230E68950();
  if (qword_27DB5A430 != -1)
  {
    swift_once();
  }

  v34 = qword_27DB5A438;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5B020, &unk_230E73400);
  v35 = swift_allocObject();
  *(v35 + 16) = v47;
  v36 = swift_allocObject();
  *(v36 + 16) = v34;
  *(v36 + 24) = v24;
  *(v36 + 32) = v44;
  *(v36 + 40) = 1;
  *(v36 + 48) = v26;
  *(v36 + 56) = v32;
  *(v36 + 64) = v31;
  *(v36 + 72) = 257;
  *(v36 + 80) = 0;
  v37 = swift_allocObject();
  *(v37 + 16) = &unk_230E6E4B8;
  *(v37 + 24) = v36;
  *(v35 + 32) = &unk_230E6E4C0;
  *(v35 + 40) = v37;
  v38 = sub_230E69310();
  v39 = v45;
  (*(*(v38 - 8) + 56))(v45, 1, 1, v38);
  v40 = swift_allocObject();
  v40[2] = 0;
  v40[3] = 0;
  v40[4] = v35;

  sub_230D8F204(0, 0, v39, &unk_230E6E4C8, v40);

  v42 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_230D3BC54(char a1, uint64_t a2, char a3, uint64_t a4, void **a5, double a6)
{
  v46 = a5;
  v71 = *MEMORY[0x277D85DE8];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B010, &unk_230E733F0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v15 = &v43 - v14;
  *&v49[0] = 0;
  *(&v49[0] + 1) = 0xE000000000000000;
  sub_230E69540();
  MEMORY[0x23191DA00](0xD000000000000054, 0x8000000230E81030);
  LOBYTE(v48) = a1;
  v16 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v16);

  sub_230E68950();

  Current = CFAbsoluteTimeGetCurrent();
  v70 = 0;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v55 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v50 = 0u;
  memset(v49, 0, sizeof(v49));
  v48 = 93;
  v18 = task_info(*MEMORY[0x277D85F48], 0x16u, v49, &v48);
  v19 = 0.0;
  if (!v18)
  {
    if (__CFADD__(v50, *(&v54 + 1)))
    {
      __break(1u);
    }

    v19 = vcvtd_n_f64_u64(v50 + *(&v54 + 1), 0x14uLL);
  }

  v45 = v15;
  v20 = Current - a6;
  v21 = (v18 != 0) | a3;
  v22 = v19 - *&a2;
  if ((v18 != 0) | a3 & 1)
  {
    v23 = 0.0;
  }

  else
  {
    v23 = v22;
  }

  sub_230E68950();
  LOBYTE(v49[0]) = *a4;
  v24 = RequestType.rawValue.getter();
  v44 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B018, &unk_230E6E468);
  v26 = swift_allocObject();
  v47 = xmmword_230E6B3B0;
  *(v26 + 16) = xmmword_230E6B3B0;
  *&v49[0] = 0x6C616E7265746E69;
  *(&v49[0] + 1) = 0xE90000000000002ELL;
  LOBYTE(v48) = a1;
  v27 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v27);

  v28 = v49[0];
  v29 = *v46;
  if (*v46)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5BCD0, &qword_230E6E480);
    v30 = swift_allocObject();
    *(v30 + 16) = v47;
    *(v30 + 32) = v29;
  }

  else
  {
    v30 = 0;
  }

  *(v26 + 32) = v28;
  *(v26 + 48) = v20;
  *(v26 + 56) = 0;
  *(v26 + 64) = v23;
  *(v26 + 72) = v21 & 1;
  *(v26 + 80) = v30;
  v32 = *(a4 + 8);
  v31 = *(a4 + 16);
  v33 = v29;

  sub_230E68950();
  if (qword_27DB5A430 != -1)
  {
    swift_once();
  }

  v34 = qword_27DB5A438;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5B020, &unk_230E73400);
  v35 = swift_allocObject();
  *(v35 + 16) = v47;
  v36 = swift_allocObject();
  *(v36 + 16) = v34;
  *(v36 + 24) = v24;
  *(v36 + 32) = v44;
  *(v36 + 40) = 1;
  *(v36 + 48) = v26;
  *(v36 + 56) = v32;
  *(v36 + 64) = v31;
  *(v36 + 72) = 257;
  *(v36 + 80) = 0;
  v37 = swift_allocObject();
  *(v37 + 16) = &unk_230E6E4A0;
  *(v37 + 24) = v36;
  *(v35 + 32) = &unk_230E6E4A8;
  *(v35 + 40) = v37;
  v38 = sub_230E69310();
  v39 = v45;
  (*(*(v38 - 8) + 56))(v45, 1, 1, v38);
  v40 = swift_allocObject();
  v40[2] = 0;
  v40[3] = 0;
  v40[4] = v35;

  sub_230D8F204(0, 0, v39, &unk_230E6E4B0, v40);

  v42 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_230D3C114(char a1, uint64_t a2, char a3, uint64_t a4, void **a5, double a6)
{
  v46 = a5;
  v71 = *MEMORY[0x277D85DE8];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B010, &unk_230E733F0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v15 = &v43 - v14;
  *&v49[0] = 0;
  *(&v49[0] + 1) = 0xE000000000000000;
  sub_230E69540();
  MEMORY[0x23191DA00](0xD000000000000054, 0x8000000230E81030);
  LOBYTE(v48) = a1;
  v16 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v16);

  sub_230E68950();

  Current = CFAbsoluteTimeGetCurrent();
  v70 = 0;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v55 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v50 = 0u;
  memset(v49, 0, sizeof(v49));
  v48 = 93;
  v18 = task_info(*MEMORY[0x277D85F48], 0x16u, v49, &v48);
  v19 = 0.0;
  if (!v18)
  {
    if (__CFADD__(v50, *(&v54 + 1)))
    {
      __break(1u);
    }

    v19 = vcvtd_n_f64_u64(v50 + *(&v54 + 1), 0x14uLL);
  }

  v45 = v15;
  v20 = Current - a6;
  v21 = (v18 != 0) | a3;
  v22 = v19 - *&a2;
  if ((v18 != 0) | a3 & 1)
  {
    v23 = 0.0;
  }

  else
  {
    v23 = v22;
  }

  sub_230E68950();
  LOBYTE(v49[0]) = *a4;
  v24 = RequestType.rawValue.getter();
  v44 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B018, &unk_230E6E468);
  v26 = swift_allocObject();
  v47 = xmmword_230E6B3B0;
  *(v26 + 16) = xmmword_230E6B3B0;
  *&v49[0] = 0x6C616E7265746E69;
  *(&v49[0] + 1) = 0xE90000000000002ELL;
  LOBYTE(v48) = a1;
  v27 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v27);

  v28 = v49[0];
  v29 = *v46;
  if (*v46)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5BCD0, &qword_230E6E480);
    v30 = swift_allocObject();
    *(v30 + 16) = v47;
    *(v30 + 32) = v29;
  }

  else
  {
    v30 = 0;
  }

  *(v26 + 32) = v28;
  *(v26 + 48) = v20;
  *(v26 + 56) = 0;
  *(v26 + 64) = v23;
  *(v26 + 72) = v21 & 1;
  *(v26 + 80) = v30;
  v32 = *(a4 + 8);
  v31 = *(a4 + 16);
  v33 = v29;

  sub_230E68950();
  if (qword_27DB5A430 != -1)
  {
    swift_once();
  }

  v34 = qword_27DB5A438;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5B020, &unk_230E73400);
  v35 = swift_allocObject();
  *(v35 + 16) = v47;
  v36 = swift_allocObject();
  *(v36 + 16) = v34;
  *(v36 + 24) = v24;
  *(v36 + 32) = v44;
  *(v36 + 40) = 1;
  *(v36 + 48) = v26;
  *(v36 + 56) = v32;
  *(v36 + 64) = v31;
  *(v36 + 72) = 257;
  *(v36 + 80) = 0;
  v37 = swift_allocObject();
  *(v37 + 16) = &unk_230E6E488;
  *(v37 + 24) = v36;
  *(v35 + 32) = &unk_230E6E490;
  *(v35 + 40) = v37;
  v38 = sub_230E69310();
  v39 = v45;
  (*(*(v38 - 8) + 56))(v45, 1, 1, v38);
  v40 = swift_allocObject();
  v40[2] = 0;
  v40[3] = 0;
  v40[4] = v35;

  sub_230D8F204(0, 0, v39, &unk_230E6E498, v40);

  v42 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_230D3C5D4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_230D1D2F8;

  return sub_230D8EB34(a1, v5);
}

uint64_t sub_230D3C68C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 72);
  v6 = *(v1 + 73);
  v7 = *(v1 + 80);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_230D1D2F8;

  return sub_230D8E4A4(a1, v4, v1 + 24, v5, v6, v7);
}

uint64_t sub_230D3C758(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_230D1D2F8;

  return sub_230DA3554(a1, v4, v5, v6);
}

uint64_t sub_230D3C80C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_230D1BF00;

  return sub_230D31B10(a1, v4, v5, v6);
}

uint64_t sub_230D3C8C0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 72);
  v6 = *(v1 + 73);
  v7 = *(v1 + 80);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_230D1BF00;

  return sub_230D8E4A4(a1, v4, v1 + 24, v5, v6, v7);
}

uint64_t sub_230D3C98C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5B030, &qword_230E6E700);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_230D3C9F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SQLDatabaseConfiguration();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  v5 = v0[10];
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t objectdestroy_13Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

void *sub_230D3CAF0(void *a1)
{
  v3 = v1;
  v42 = *MEMORY[0x277D85DE8];
  v5 = sub_230E690B0();
  v37 = *(v5 - 8);
  v6 = *(v37 + 64);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_230E68860();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  SQLDatabaseConfiguration.path.getter(v15);
  if (v2)
  {
    goto LABEL_11;
  }

  v35 = a1;
  v36 = v1;
  v16 = sub_230E68820();
  v18 = v17;
  (*(v11 + 8))(v15, v10);
  ppStmt = 0;
  v41 = 0xE000000000000000;
  sub_230E69540();
  MEMORY[0x23191DA00](0xD000000000000033, 0x8000000230E818C0);
  MEMORY[0x23191DA00](v16, v18);
  sub_230E68950();

  ppStmt = v16;
  v41 = v18;
  sub_230E690A0();
  sub_230D0D278();
  v19 = sub_230E69480();
  (*(v37 + 8))(v9, v5);

  if (v19)
  {
    v20 = 65537;
    if (sub_230DA3484())
    {
      a1 = v35;
    }

    else
    {
      sub_230DCB5D4(&ppStmt);
      a1 = v35;
      if ((sub_230D0B544(ppStmt, *(v35 + 16)) & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    v20 = 65542;
LABEL_8:
    ppDb = 0;
    v22 = sqlite3_open_v2((v19 + 32), &ppDb, v20, 0);

    if (v22 || (v28 = ppDb) == 0)
    {
      sub_230E68950();
      sub_230D0D224();
      swift_allocError();
      *v23 = 0;
      *(v23 + 8) = 0;
      *(v23 + 16) = 0;
LABEL_10:
      swift_willThrow();
      v3 = v36;
      goto LABEL_11;
    }

    ppStmt = 0;
    v41 = 0xE000000000000000;
    sub_230E69540();

    ppStmt = 0xD000000000000030;
    v41 = 0x8000000230E81970;
    MEMORY[0x23191DA00](*a1, a1[1]);
    sub_230E68950();

    ppStmt = 0;
    if (sqlite3_prepare_v2(v28, "PRAGMA foreign_keys = ON", -1, &ppStmt, 0))
    {
      sub_230D0D224();
      swift_allocError();
      *v29 = 0xD00000000000002ELL;
      *(v29 + 8) = 0x8000000230E819D0;
      *(v29 + 16) = 2;
      goto LABEL_10;
    }

    v30 = sqlite3_step(ppStmt);
    v3 = v36;
    if (v30 == 101)
    {
      sub_230E68950();
      v38 = 0;
      if (!sqlite3_prepare_v2(v28, "PRAGMA journal_mode=WAL", -1, &v38, 0))
      {
        if (sqlite3_step(v38) == 100)
        {
          sub_230E68950();
          v3[14] = v28;
          sub_230D1CF5C(a1, v3 + OBJC_IVAR____TtC20ServicesIntelligence17SQLDatabaseClient_configuration);
          sqlite3_finalize(v38);
          sqlite3_finalize(ppStmt);
          sub_230D1CFC0(a1);
          goto LABEL_12;
        }

        sub_230D0D224();
        swift_allocError();
        *v34 = 0xD000000000000019;
        *(v34 + 8) = 0x8000000230E81AC0;
        *(v34 + 16) = 2;
        swift_willThrow();
        sqlite3_finalize(v38);
        goto LABEL_21;
      }

      v31 = 0x8000000230E81A90;
      sub_230D0D224();
      swift_allocError();
      v33 = 0xD000000000000024;
    }

    else
    {
      v31 = 0x8000000230E81A00;
      sub_230D0D224();
      swift_allocError();
      v33 = 0xD000000000000028;
    }

    *v32 = v33;
    *(v32 + 8) = v31;
    *(v32 + 16) = 2;
    swift_willThrow();
LABEL_21:
    sqlite3_finalize(ppStmt);
    goto LABEL_11;
  }

  sub_230E68950();
  sub_230D0D224();
  swift_allocError();
  *v21 = 0;
  *(v21 + 8) = 0;
  *(v21 + 16) = 0;
  swift_willThrow();
  a1 = v35;
  v3 = v36;
LABEL_11:
  type metadata accessor for SQLDatabaseClient();
  swift_defaultActor_destroy();
  sub_230D1CFC0(a1);
  v24 = *(*v3 + 48);
  v25 = *(*v3 + 52);
  swift_deallocPartialClassInstance();
LABEL_12:
  v26 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t SQLDatabaseClient.deinit()
{
  sqlite3_close(*(v0 + 112));
  sub_230D1CFC0(v0 + OBJC_IVAR____TtC20ServicesIntelligence17SQLDatabaseClient_configuration);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t SQLDatabaseClient.__deallocating_deinit()
{
  sqlite3_close(*(v0 + 112));
  sub_230D1CFC0(v0 + OBJC_IVAR____TtC20ServicesIntelligence17SQLDatabaseClient_configuration);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

sqlite3_stmt *sub_230D3D1E0(uint64_t a1, uint64_t a2)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  ppStmt[0] = 0;
  v5 = *(v2 + 112);
  v6 = sub_230E690F0();
  LODWORD(v5) = sqlite3_prepare_v2(v5, (v6 + 32), -1, ppStmt, 0);

  if (v5)
  {
    sub_230E69540();

    MEMORY[0x23191DA00](a1, a2);
    sub_230D0D224();
    swift_allocError();
    *v7 = 0xD00000000000001DLL;
    *(v7 + 8) = 0x8000000230E81530;
    *(v7 + 16) = 2;
    result = swift_willThrow();
  }

  else
  {
    result = ppStmt[0];
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_230D3D310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[2] = a2;
  v5[3] = a3;
  return MEMORY[0x2822009F8](sub_230D3D330, a2, 0);
}

const char *sub_230D3D330()
{
  v1 = *(v0 + 16);
  v10 = *(v0 + 24);
  v11 = *(v0 + 32);
  v2 = sub_230D3D4B4();
  v4 = sub_230D3D1E0(v2, v3);

  if (sqlite3_step(v4) == 101)
  {
    v6 = *(v0 + 24);
    v5 = *(v0 + 32);
    sub_230E69540();

    MEMORY[0x23191DA00](v6, v5);
    sub_230E68950();

    sqlite3_finalize(v4);
    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    v9 = *(v0 + 16);
    sub_230E68950();
    return sub_230D43970();
  }
}

uint64_t sub_230D3D4B4()
{
  v107 = v0[1];
  v108 = *v0;
  *&v119 = v0[2];
  v114 = v119;

  v1 = 0;
  sub_230D4434C(&v119);
  v2 = v119;
  v3 = *(v119 + 16);
  if (v3)
  {
    v4 = v3 - 1;
    v5 = MEMORY[0x277D84F90];
    for (i = 32; ; i += 88)
    {
      v7 = *(v2 + i + 16);
      v119 = *(v2 + i);
      v120 = v7;
      v8 = *(v2 + i + 32);
      v9 = *(v2 + i + 48);
      v10 = *(v2 + i + 64);
      v124 = *(v2 + i + 80);
      v122 = v9;
      v123 = v10;
      v121 = v8;
      v117[2] = *(v2 + i + 32);
      v117[3] = *(v2 + i + 48);
      v117[4] = *(v2 + i + 64);
      v118 = *(v2 + i + 80);
      v117[0] = *(v2 + i);
      v117[1] = *(v2 + i + 16);
      sub_230D2C310(&v119, &v116);
      v11 = sub_230D3E9A4();
      v13 = v12;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_230E49E88(0, *(v5 + 2) + 1, 1, v5);
      }

      v15 = *(v5 + 2);
      v14 = *(v5 + 3);
      if (v15 >= v14 >> 1)
      {
        v5 = sub_230E49E88((v14 > 1), v15 + 1, 1, v5);
      }

      sub_230D2C348(&v119);
      *(v5 + 2) = v15 + 1;
      v16 = &v5[16 * v15];
      *(v16 + 4) = v11;
      *(v16 + 5) = v13;
      if (!v4)
      {
        break;
      }

      --v4;
    }
  }

  else
  {

    v5 = MEMORY[0x277D84F90];
  }

  *&v119 = v114;

  sub_230D4434C(&v119);
  v111 = v5;
  v17 = v119;
  v18 = *(v119 + 16);
  v19 = MEMORY[0x277D84F90];
  if (v18)
  {
    v20 = 0;
    v21 = v119 + 32;
    v22 = v18 - 1;
    v23 = MEMORY[0x277D84F90];
    do
    {
      v24 = v21 + 88 * v20;
      v25 = v20;
      while (1)
      {
        if (v25 >= *(v17 + 16))
        {
          __break(1u);
          goto LABEL_95;
        }

        v27 = *(v24 + 48);
        v26 = *(v24 + 64);
        v28 = *(v24 + 80);
        v121 = *(v24 + 32);
        v29 = *(v24 + 16);
        v119 = *v24;
        v120 = v29;
        v124 = v28;
        v122 = v27;
        v123 = v26;
        v20 = v25 + 1;
        if (BYTE11(v121))
        {
          break;
        }

        v24 += 88;
        ++v25;
        if (v18 == v20)
        {
          goto LABEL_25;
        }
      }

      sub_230D2C310(&v119, v117);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v116 = v23;
      v112 = v21;
      v109 = v22;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_230D488A0(0, *(v23 + 16) + 1, 1);
        v23 = v116;
      }

      v32 = *(v23 + 16);
      v31 = *(v23 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_230D488A0((v31 > 1), v32 + 1, 1);
        v23 = v116;
      }

      *(v23 + 16) = v32 + 1;
      v33 = v23 + 88 * v32;
      v34 = v120;
      *(v33 + 32) = v119;
      *(v33 + 48) = v34;
      v35 = v121;
      v36 = v122;
      v37 = v123;
      *(v33 + 112) = v124;
      *(v33 + 80) = v36;
      *(v33 + 96) = v37;
      *(v33 + 64) = v35;
      v22 = v109;
    }

    while (v109 != v25);
  }

  else
  {
    v23 = MEMORY[0x277D84F90];
  }

LABEL_25:

  v38 = *(v23 + 16);
  if (!v38)
  {

    v22 = MEMORY[0x277D84F90];
    v25 = v111;
    goto LABEL_33;
  }

  v112 = 0;
  *&v119 = v19;
  sub_230D48880(0, v38, 0);
  v39 = v119;
  v40 = (v23 + 40);
  do
  {
    v41 = *(v40 - 1);
    v42 = *v40;
    *&v119 = v39;
    v44 = *(v39 + 16);
    v43 = *(v39 + 24);

    if (v44 >= v43 >> 1)
    {
      sub_230D48880((v43 > 1), v44 + 1, 1);
      v39 = v119;
    }

    *(v39 + 16) = v44 + 1;
    v45 = v39 + 16 * v44;
    *(v45 + 32) = v41;
    *(v45 + 40) = v42;
    v40 += 11;
    --v38;
  }

  while (v38);

  *&v119 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D8F0, &unk_230E70E80);
  sub_230D443B8();
  v46 = sub_230E68FF0();
  v48 = v47;

  *&v119 = 0;
  *(&v119 + 1) = 0xE000000000000000;
  sub_230E69540();

  strcpy(&v119, "PRIMARY KEY (");
  HIWORD(v119) = -4864;
  MEMORY[0x23191DA00](v46, v48);

  MEMORY[0x23191DA00](41, 0xE100000000000000);
  v1 = *(&v119 + 1);
  v19 = v119;
  v22 = sub_230E49E88(0, 1, 1, MEMORY[0x277D84F90]);
  v17 = *(v22 + 2);
  v24 = *(v22 + 3);
  v23 = v17 + 1;
  v25 = v111;
  if (v17 >= v24 >> 1)
  {
    goto LABEL_96;
  }

  while (1)
  {
    *(v22 + 2) = v23;
    v49 = &v22[16 * v17];
    *(v49 + 4) = v19;
    *(v49 + 5) = v1;
    v1 = v112;
LABEL_33:
    *&v119 = v114;

    sub_230D4434C(&v119);
    if (v1)
    {
      MEMORY[0x23191E910](v1);

      __break(1u);
      return result;
    }

    v50 = v119;
    v51 = *(v119 + 16);
    if (!v51)
    {
      break;
    }

    v52 = 0;
    v19 = v119 + 32;
    v17 = v51 - 1;
    v23 = MEMORY[0x277D84F90];
LABEL_36:
    v24 = v19 + 88 * v52;
    v53 = v52;
    while (v53 < *(v50 + 16))
    {
      v55 = *(v24 + 48);
      v54 = *(v24 + 64);
      v56 = *(v24 + 80);
      v121 = *(v24 + 32);
      v57 = *(v24 + 16);
      v119 = *v24;
      v120 = v57;
      v124 = v56;
      v122 = v55;
      v123 = v54;
      if (BYTE10(v121) == 1 && (BYTE11(v121) & 1) == 0)
      {
        v58 = v50;
        sub_230D2C310(&v119, v117);
        v59 = swift_isUniquelyReferenced_nonNull_native();
        *&v116 = v23;
        v112 = v51 - 1;
        if ((v59 & 1) == 0)
        {
          sub_230D488A0(0, *(v23 + 16) + 1, 1);
          v23 = v116;
        }

        v50 = v58;
        v61 = *(v23 + 16);
        v60 = *(v23 + 24);
        if (v61 >= v60 >> 1)
        {
          sub_230D488A0((v60 > 1), v61 + 1, 1);
          v50 = v58;
          v23 = v116;
        }

        v52 = v53 + 1;
        *(v23 + 16) = v61 + 1;
        v62 = v23 + 88 * v61;
        v63 = v120;
        *(v62 + 32) = v119;
        *(v62 + 48) = v63;
        v64 = v121;
        v65 = v122;
        v66 = v123;
        *(v62 + 112) = v124;
        *(v62 + 80) = v65;
        *(v62 + 96) = v66;
        *(v62 + 64) = v64;
        v25 = v111;
        if (v17 != v53)
        {
          goto LABEL_36;
        }

        goto LABEL_48;
      }

      ++v53;
      v24 += 88;
      if (v51 == v53)
      {
        goto LABEL_48;
      }
    }

LABEL_95:
    __break(1u);
LABEL_96:
    v22 = sub_230E49E88((v24 > 1), v23, 1, v22);
  }

  v23 = MEMORY[0x277D84F90];
LABEL_48:

  v67 = *(v23 + 16);
  if (v67)
  {
    v68 = v67 - 1;
    for (j = 32; ; j += 88)
    {
      v70 = *(v23 + j + 16);
      v119 = *(v23 + j);
      v120 = v70;
      v71 = *(v23 + j + 32);
      v72 = *(v23 + j + 48);
      v73 = *(v23 + j + 64);
      v124 = *(v23 + j + 80);
      v122 = v72;
      v123 = v73;
      v121 = v71;
      v74 = v119;
      *&v116 = 0x2820455551494E55;
      *(&v116 + 1) = 0xE800000000000000;
      sub_230D2C310(&v119, v117);

      MEMORY[0x23191DA00](v74, *(&v74 + 1));

      MEMORY[0x23191DA00](41, 0xE100000000000000);
      v75 = v116;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = sub_230E49E88(0, *(v22 + 2) + 1, 1, v22);
      }

      v77 = *(v22 + 2);
      v76 = *(v22 + 3);
      if (v77 >= v76 >> 1)
      {
        v22 = sub_230E49E88((v76 > 1), v77 + 1, 1, v22);
      }

      sub_230D2C348(&v119);
      *(v22 + 2) = v77 + 1;
      *&v22[16 * v77 + 32] = v75;
      if (!v68)
      {
        break;
      }

      --v68;
    }

    v25 = v111;
  }

  else
  {
  }

  *&v119 = v114;

  sub_230D4434C(&v119);
  v78 = v119;
  v79 = *(v119 + 16);
  if (v79)
  {
    v80 = v79 - 1;
    v81 = 32;
    v110 = v119;
    while (1)
    {
      v82 = *(v78 + v81 + 80);
      v83 = *(v78 + v81 + 64);
      v84 = *(v78 + v81 + 32);
      v122 = *(v78 + v81 + 48);
      v123 = v83;
      v85 = *(v78 + v81 + 16);
      v119 = *(v78 + v81);
      v120 = v85;
      v124 = v82;
      v121 = v84;
      v86 = *(&v122 + 1);
      if (*(&v122 + 1))
      {
        v113 = v81;
        v115 = v80;
        v87 = v122;
        v88 = v123;
        v89 = v119;
        *&v116 = 0;
        *(&v116 + 1) = 0xE000000000000000;
        sub_230D2C310(&v119, v117);
        sub_230D2C224(v87, v86);
        sub_230E69540();
        v117[0] = v116;
        MEMORY[0x23191DA00](0x204E474945524F46, 0xED0000282059454BLL);

        MEMORY[0x23191DA00](v89, *(&v89 + 1));

        MEMORY[0x23191DA00](0x4552454645522029, 0xED0000205345434ELL);

        MEMORY[0x23191DA00](v87, v86);

        MEMORY[0x23191DA00](40, 0xE100000000000000);

        MEMORY[0x23191DA00](v88, *(&v88 + 1));

        MEMORY[0x23191DA00](0x4C4544204E4F2029, 0xEC00000020455445);
        v90 = 0x4C4C554E20544553;
        if (v82 != 3)
        {
          v90 = 0x4146454420544553;
        }

        v91 = 0xEB00000000544C55;
        if (v82 == 3)
        {
          v91 = 0xE800000000000000;
        }

        if (v82 == 2)
        {
          v90 = 0x45444143534143;
          v91 = 0xE700000000000000;
        }

        v92 = 0x5443495254534552;
        if (!v82)
        {
          v92 = 0x4F49544341204F4ELL;
        }

        v93 = 0xE90000000000004ELL;
        if (v82)
        {
          v93 = 0xE800000000000000;
        }

        if (v82 <= 1u)
        {
          v94 = v92;
        }

        else
        {
          v94 = v90;
        }

        if (v82 <= 1u)
        {
          v95 = v93;
        }

        else
        {
          v95 = v91;
        }

        v96 = v82 >> 8;
        MEMORY[0x23191DA00](v94, v95);

        MEMORY[0x23191DA00](0x41445055204E4F20, 0xEB00000000204554);
        if (v82 >> 8 <= 1)
        {
          v98 = 0x4F49544341204F4ELL;
          v97 = 0xE90000000000004ELL;
          if (v96)
          {
            v97 = 0xE800000000000000;
            v98 = 0x5443495254534552;
          }
        }

        else if (v96 == 2)
        {
          v97 = 0xE700000000000000;
          v98 = 0x45444143534143;
        }

        else if (v96 == 3)
        {
          v97 = 0xE800000000000000;
          v98 = 0x4C4C554E20544553;
        }

        else
        {
          v98 = 0x4146454420544553;
          v97 = 0xEB00000000544C55;
        }

        MEMORY[0x23191DA00](v98, v97);
        sub_230D0F4FC(v87, v86);

        v99 = v117[0];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = sub_230E49E88(0, *(v22 + 2) + 1, 1, v22);
        }

        v25 = v111;
        v101 = *(v22 + 2);
        v100 = *(v22 + 3);
        if (v101 >= v100 >> 1)
        {
          v22 = sub_230E49E88((v100 > 1), v101 + 1, 1, v22);
        }

        sub_230D2C348(&v119);
        *(v22 + 2) = v101 + 1;
        *&v22[16 * v101 + 32] = v99;
        v78 = v110;
        v81 = v113;
        v80 = v115;
        if (!v115)
        {
          break;
        }
      }

      else
      {
        v25 = v111;
        if (!v80)
        {
          break;
        }
      }

      --v80;
      v81 += 88;
    }
  }

  *&v119 = v25;
  sub_230E3A1D8(v22);
  v102 = v119;
  *&v119 = 0;
  *(&v119 + 1) = 0xE000000000000000;
  sub_230E69540();

  *&v119 = 0xD00000000000001BLL;
  *(&v119 + 1) = 0x8000000230E815C0;
  MEMORY[0x23191DA00](v108, v107);
  MEMORY[0x23191DA00](10272, 0xE200000000000000);
  *&v117[0] = v102;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D8F0, &unk_230E70E80);
  sub_230D443B8();
  v103 = sub_230E68FF0();
  v105 = v104;

  MEMORY[0x23191DA00](v103, v105);

  MEMORY[0x23191DA00](41, 0xE100000000000000);
  return v119;
}

uint64_t sub_230D3E0C0(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v2[3] = v1;
  v2[4] = v3;
  v2[5] = v4;
  return MEMORY[0x2822009F8](sub_230D3E0E8, v1, 0);
}

const unsigned __int8 *sub_230D3E0E8()
{
  v24 = v0;
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  sub_230E69540();

  v22 = 0xD000000000000012;
  v23 = 0x8000000230E814C0;
  MEMORY[0x23191DA00](v2, v1);
  MEMORY[0x23191DA00](41, 0xE100000000000000);
  v4 = sub_230D3D1E0(0xD000000000000012, 0x8000000230E814C0);

  v5 = sqlite3_step(v4);
  v6 = MEMORY[0x277D84F90];
  if (v5 == 100)
  {
    while (1)
    {
      result = sqlite3_column_text(v4, 1);
      if (!result)
      {
        break;
      }

      v8 = sub_230E69130();
      v10 = v9;
      result = sqlite3_column_text(v4, 2);
      if (!result)
      {
        goto LABEL_13;
      }

      sub_230E69130();
      v11 = sqlite3_column_int(v4, 3) == 0;
      v12 = sqlite3_column_int(v4, 5) == 1;
      sub_230D3E474(&v22);

      v13 = v22;
      sub_230D0F460(0, 0, 255);
      sub_230D0F4FC(0, 0);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_230E49F94(0, *(v6 + 2) + 1, 1, v6);
      }

      v15 = *(v6 + 2);
      v14 = *(v6 + 3);
      if (v15 >= v14 >> 1)
      {
        v6 = sub_230E49F94((v14 > 1), v15 + 1, 1, v6);
      }

      *(v6 + 2) = v15 + 1;
      v16 = &v6[88 * v15];
      *(v16 + 4) = v8;
      *(v16 + 5) = v10;
      v16[48] = v13;
      v17 = *(&v22 + 3);
      *(v16 + 49) = v22;
      *(v16 + 13) = v17;
      *(v16 + 7) = 0;
      *(v16 + 8) = 0;
      v16[72] = -1;
      v16[73] = v11;
      v16[74] = 0;
      v16[75] = v12;
      *(v16 + 5) = 0u;
      *(v16 + 6) = 0u;
      *(v16 + 56) = 0;
      if (sqlite3_step(v4) != 100)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
  }

  else
  {
LABEL_9:
    v19 = v0[4];
    v18 = v0[5];
    v22 = 0;
    v23 = 0xE000000000000000;
    sub_230E69540();
    MEMORY[0x23191DA00](0xD00000000000002FLL, 0x8000000230E814E0);
    v0[2] = *(v6 + 2);
    v20 = sub_230E69890();
    MEMORY[0x23191DA00](v20);

    MEMORY[0x23191DA00](0xD000000000000013, 0x8000000230E81510);
    MEMORY[0x23191DA00](v19, v18);
    sub_230E68950();

    sqlite3_finalize(v4);
    v21 = v0[1];

    return v21(v6);
  }

  return result;
}

uint64_t sub_230D3E474@<X0>(char *a1@<X8>)
{
  v3 = sub_230E690E0();
  v4 = v2;
  if (v3 == 1415071060 && v2 == 0xE400000000000000 || (sub_230E698C0() & 1) != 0)
  {

    v6 = 3;
  }

  else if (v3 == 0x3436544E49 && v4 == 0xE500000000000000 || (sub_230E698C0() & 1) != 0 || v3 == 0x52454745544E49 && v4 == 0xE700000000000000 || (sub_230E698C0() & 1) != 0)
  {

    v6 = 2;
  }

  else if (v3 == 0x454C42554F44 && v4 == 0xE600000000000000 || (sub_230E698C0() & 1) != 0 || v3 == 1279346002 && v4 == 0xE400000000000000 || (sub_230E698C0() & 1) != 0)
  {

    v6 = 1;
  }

  else if (v3 == 1112493122 && v4 == 0xE400000000000000)
  {

    v6 = 0;
  }

  else
  {
    v7 = sub_230E698C0();

    if (v7)
    {
      v6 = 0;
    }

    else
    {
      v6 = 3;
    }
  }

  *a1 = v6;
  return result;
}

uint64_t sub_230D3E660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a2;
  v6[3] = a3;
  return MEMORY[0x2822009F8](sub_230D3E684, a6, 0);
}

const char *sub_230D3E684()
{
  v30 = v0;
  v1 = v0[4];
  v2 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  v25 = v1[2];
  v26 = v1[3];
  v27 = v1[4];
  v28 = *(v1 + 40);
  v23 = *v1;
  v24 = v1[1];
  v5 = sub_230D3E9A4();
  v7 = v6;
  sub_230E69540();

  strcpy(v29, "ALTER TABLE ");
  BYTE5(v29[1]) = 0;
  HIWORD(v29[1]) = -5120;
  MEMORY[0x23191DA00](v4, v3);
  MEMORY[0x23191DA00](0x4C4F432044444120, 0xEC000000204E4D55);
  MEMORY[0x23191DA00](v5, v7);

  v8 = sub_230D3D1E0(v29[0], v29[1]);

  v9 = v0[4];
  if (sqlite3_step(v8) == 101)
  {
    v10 = v0[3];
    v11 = v0[4];
    v12 = v0[2];
    sub_230E69540();
    MEMORY[0x23191DA00](0xD00000000000002CLL, 0x8000000230E81620);
    MEMORY[0x23191DA00](*v11, *(v9 + 8));
    MEMORY[0x23191DA00](0x6C626174206F7420, 0xEA00000000002065);
    MEMORY[0x23191DA00](v12, v10);
    sub_230E68950();

    sqlite3_finalize(v8);
    v13 = v0[1];
  }

  else
  {
    v15 = v0[4];
    v14 = v0[5];
    v17 = v0[2];
    v16 = v0[3];
    sub_230E69540();
    MEMORY[0x23191DA00](0xD000000000000034, 0x8000000230E815E0);
    MEMORY[0x23191DA00](*v15, *(v9 + 8));
    MEMORY[0x23191DA00](0x6C626174206F7420, 0xEA00000000002065);
    MEMORY[0x23191DA00](v17, v16);
    sub_230E68950();

    result = sqlite3_errmsg(*(v14 + 112));
    if (!result)
    {
      __break(1u);
      return result;
    }

    v19 = sub_230E69120();
    v21 = v20;
    sub_230D0D224();
    swift_allocError();
    *v22 = v19;
    *(v22 + 8) = v21;
    *(v22 + 16) = 2;
    swift_willThrow();
    sqlite3_finalize(v8);
    v13 = v0[1];
  }

  return v13();
}

uint64_t sub_230D3E9A4()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(v0 + 16);
  v4 = v0[3];
  v5 = v0[4];
  v6 = *(v0 + 40);
  v7 = *(v0 + 41);
  v8 = *(v0 + 43);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5A6A8, &unk_230E6B3C0);
  v9 = swift_allocObject();
  v10 = v9;
  *(v9 + 16) = xmmword_230E6C070;
  *(v9 + 32) = v2;
  *(v9 + 40) = v1;
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v11 = 0xE500000000000000;
      v12 = 0x3436544E49;
    }

    else
    {
      v11 = 0xE400000000000000;
      v12 = 1415071060;
    }
  }

  else if (v3)
  {
    v11 = 0xE600000000000000;
    v12 = 0x454C42554F44;
  }

  else
  {
    v11 = 0xE400000000000000;
    v12 = 1112493122;
  }

  *(v9 + 48) = v12;
  *(v9 + 56) = v11;

  if (((v7 | v8) & 1) == 0)
  {
    v10 = sub_230E49E88(1, 3, 1, v10);
    *(v10 + 2) = 3;
    *(v10 + 8) = 0x4C4C554E20544F4ELL;
    *(v10 + 9) = 0xE800000000000000;
  }

  if (v6 <= 1)
  {
    if (!v6 || (v5 & 1) != 0)
    {
      goto LABEL_27;
    }

    MEMORY[0x23191DA00](0x20544C5541464544, 0xE800000000000000);
    sub_230E69320();
    v13 = 0;
    v14 = 0xE000000000000000;
    v16 = *(v10 + 2);
    v21 = *(v10 + 3);
    v17 = v16 + 1;
    if (v16 >= v21 >> 1)
    {
      v10 = sub_230E49E88((v21 > 1), v16 + 1, 1, v10);
    }

    v18 = v4;
    v19 = v5;
    v20 = 1;
LABEL_26:
    sub_230D0F460(v18, v19, v20);
    *(v10 + 2) = v17;
    v24 = &v10[16 * v16];
    *(v24 + 4) = v13;
    *(v24 + 5) = v14;
    goto LABEL_27;
  }

  if (v6 == 2)
  {
    if (v5)
    {
      goto LABEL_27;
    }

    v22 = sub_230E69890();
    MEMORY[0x23191DA00](v22);

    v13 = 0x20544C5541464544;
    v14 = 0xE800000000000000;
    v16 = *(v10 + 2);
    v23 = *(v10 + 3);
    v17 = v16 + 1;
    if (v16 >= v23 >> 1)
    {
      v10 = sub_230E49E88((v23 > 1), v16 + 1, 1, v10);
    }

    v18 = v4;
    v19 = v5;
    v20 = 2;
    goto LABEL_26;
  }

  if (v6 == 3)
  {
    if (!v5)
    {
      sub_230D0F460(v4, 0, 3);
      goto LABEL_27;
    }

    sub_230D1D20C(v4, v5, 3);
    MEMORY[0x23191DA00](v4, v5);
    MEMORY[0x23191DA00](39, 0xE100000000000000);
    v13 = 0x20544C5541464544;
    v14 = 0xE900000000000027;
    v16 = *(v10 + 2);
    v15 = *(v10 + 3);
    v17 = v16 + 1;
    if (v16 >= v15 >> 1)
    {
      v10 = sub_230E49E88((v15 > 1), v16 + 1, 1, v10);
    }

    v18 = v4;
    v19 = v5;
    v20 = 3;
    goto LABEL_26;
  }

LABEL_27:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D8F0, &unk_230E70E80);
  sub_230D443B8();
  v25 = sub_230E68FF0();

  return v25;
}

uint64_t sub_230D3ED1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 336) = a1;
  *(v4 + 344) = v3;
  v5 = *(a2 + 80);
  *(v4 + 80) = *(a2 + 64);
  *(v4 + 96) = v5;
  *(v4 + 112) = *(a2 + 96);
  *(v4 + 128) = *(a2 + 112);
  v6 = *(a2 + 16);
  *(v4 + 16) = *a2;
  *(v4 + 32) = v6;
  v7 = *(a2 + 48);
  *(v4 + 48) = *(a2 + 32);
  *(v4 + 64) = v7;
  v8 = *(a3 + 16);
  *(v4 + 352) = *a3;
  *(v4 + 368) = v8;
  *(v4 + 384) = *(a3 + 32);
  return MEMORY[0x2822009F8](sub_230D3ED74, v3, 0);
}

uint64_t sub_230D3ED74()
{
  v1 = *(v0 + 368);
  if (v1)
  {
    v3 = *(v0 + 376);
    v2 = *(v0 + 384);
    v5 = *(v0 + 352);
    v4 = *(v0 + 360);
    *(v0 + 400) = v1;
    *(v0 + 408) = v2;
    v6 = *(v0 + 344);
    *(v0 + 256) = v5;
    *(v0 + 264) = v4;
    *(v0 + 272) = v1;
    *(v0 + 280) = v3 & 1;
    *(v0 + 281) = BYTE1(v3);
    *(v0 + 288) = v2;
    sub_230D1D0EC(v0 + 16, v0 + 136);

    sub_230D0585C(v5, v4, v1);
    v7 = swift_task_alloc();
    *(v0 + 416) = v7;
    *v7 = v0;
    v7[1] = sub_230D3F174;
    v8 = *(v0 + 336);
    v9 = *(v0 + 344);

    return (sub_230D70F74)(v8, 2, v0 + 256);
  }

  else
  {
    *(v0 + 129) = 2;
    v11 = swift_task_alloc();
    *(v0 + 392) = v11;
    *v11 = v0;
    v11[1] = sub_230D3EF34;

    return static RequestContext.from(_:correlationID:)(v0 + 296, (v0 + 129), 0, 0);
  }
}

uint64_t sub_230D3EF34()
{
  v1 = *(*v0 + 392);
  v2 = *(*v0 + 344);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_230D3F044, v2, 0);
}

uint64_t sub_230D3F044()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 304);
  v3 = *(v0 + 312);
  v4 = *(v0 + 320);
  v5 = *(v0 + 321);
  v6 = *(v0 + 328);
  *(v0 + 400) = v3;
  *(v0 + 408) = v6;
  v7 = *(v0 + 376);
  v8 = *(v0 + 384);
  v10 = *(v0 + 360);
  v9 = *(v0 + 368);
  v12 = *(v0 + 344);
  v11 = *(v0 + 352);
  *(v0 + 256) = v1;
  *(v0 + 264) = v2;
  *(v0 + 272) = v3;
  *(v0 + 280) = v4;
  *(v0 + 281) = v5;
  *(v0 + 288) = v6;
  sub_230D1D0EC(v0 + 16, v0 + 136);

  sub_230D0585C(v11, v10, v9);
  v13 = swift_task_alloc();
  *(v0 + 416) = v13;
  *v13 = v0;
  v13[1] = sub_230D3F174;
  v14 = *(v0 + 336);
  v15 = *(v0 + 344);

  return (sub_230D70F74)(v14, 2, v0 + 256);
}

uint64_t sub_230D3F174()
{
  v1 = *(*v0 + 416);
  v2 = *(*v0 + 408);
  v3 = *(*v0 + 400);
  v6 = *v0;

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_230D3F2A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[30] = a2;
  v3[31] = a3;
  v3[29] = a1;
  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230D3F33C, a3, 0);
}

uint64_t sub_230D3F33C()
{
  v243 = v0;
  v242 = *MEMORY[0x277D85DE8];
  v2 = *(v0 + 240);
  v1 = *(v0 + 248);
  v3 = MEMORY[0x277D84F90];
  sub_230E68950();
  v4 = *v2;
  v5 = v2[1];
  v6 = sub_230D40A38();
  if (*(v6 + 16) && (v7 = sub_230DA41A0(v4, v5), (v8 & 1) != 0))
  {
    v9 = *(v0 + 240);
    v10 = (*(v6 + 56) + 24 * v7);
    v12 = *v10;
    v11 = v10[1];
    v13 = v10[2];

    v14 = *(v9 + 16);
    v15 = *(v9 + 48);
    *(v0 + 32) = *(v9 + 32);
    *(v0 + 48) = v15;
    *(v0 + 16) = v14;
    v16 = *(v9 + 64);
    v17 = *(v9 + 80);
    v18 = *(v9 + 96);
    *(v0 + 112) = *(v9 + 112);
    *(v0 + 80) = v17;
    *(v0 + 96) = v18;
    *(v0 + 64) = v16;
    v19 = *(v0 + 16);
    if (v19)
    {
      sub_230D23BC8(v0 + 16, v0 + 120);
      v232 = v19;
    }

    else
    {
      *&__dst = v13;
      sub_230D23BC8(v0 + 16, v0 + 120);

      sub_230D4434C(&__dst);
      v208 = __dst;
      v209 = *(__dst + 16);
      if (v209)
      {
        v234 = v0;
        *&__dst = v3;
        sub_230D488C0(0, v209, 0);
        v210 = __dst;
        v211 = *(__dst + 16);
        v212 = 56 * v211 + 56;
        v213 = (v208 + 48);
        do
        {
          v215 = *(v213 - 2);
          v214 = *(v213 - 1);
          v216 = *v213;
          *&__dst = v210;
          v217 = v211 + 1;
          v218 = *(v210 + 24);
          v219 = v210;

          v210 = v219;
          if (v211 >= v218 >> 1)
          {
            sub_230D488C0((v218 > 1), v217, 1);
            v210 = __dst;
          }

          v213 += 88;
          *(v210 + 16) = v217;
          v220 = (v210 + v212);
          *(v220 - 3) = v215;
          *(v220 - 2) = v214;
          *(v220 - 8) = v216;
          v212 += 56;
          ++v211;
          *v220 = 0u;
          v220[1] = 0u;
          --v209;
        }

        while (v209);
        v232 = v210;

        v0 = v234;
      }

      else
      {

        v232 = MEMORY[0x277D84F90];
      }
    }

    v20 = *(v0 + 248);
    v21 = *(v0 + 96);
    v239 = *(v0 + 80);
    v240 = v21;
    v241 = *(v0 + 112);
    v22 = *(v0 + 32);
    __dst = *(v0 + 16);
    v236 = v22;
    v23 = *(v0 + 64);
    v237 = *(v0 + 48);
    v238 = v23;
    v24 = sub_230D40C2C(&__dst);
    v26 = v25;
    v27 = v237;
    *(v0 + 168) = v238;
    v28 = v240;
    *(v0 + 184) = v239;
    *(v0 + 200) = v28;
    v29 = v236;
    *(v0 + 120) = __dst;
    *(v0 + 136) = v29;
    *(v0 + 216) = v241;
    *(v0 + 152) = v27;
    sub_230D1D098(v0 + 120);
    v30 = sub_230D3D1E0(v24, v26);

    if (sqlite3_step(v30) == 100)
    {
      v231 = *(v232 + 16);
      v35 = MEMORY[0x277D84F90];
      v230 = v30;
      while (1)
      {
        v229 = v35;
        v36 = sub_230D0DBB4(MEMORY[0x277D84F90]);
        if (v231)
        {
          break;
        }

LABEL_143:
        v35 = v229;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v35 = sub_230E4A0B8(0, v229[2] + 1, 1, v229);
        }

        v204 = v35[2];
        v203 = v35[3];
        if (v204 >= v203 >> 1)
        {
          v35 = sub_230E4A0B8((v203 > 1), v204 + 1, 1, v35);
        }

        v35[2] = v204 + 1;
        v35[v204 + 4] = v36;
        if (sqlite3_step(v30) != 100)
        {
          goto LABEL_150;
        }
      }

      v37 = 0;
      v38 = v232 + 40;
      v39 = v232;
      while (1)
      {
        if (v37 >= *(v39 + 16))
        {
          __break(1u);
LABEL_168:
          __break(1u);
LABEL_169:
          __break(1u);
LABEL_170:
          __break(1u);
LABEL_171:
          __break(1u);
LABEL_172:
          __break(1u);
LABEL_173:
          __break(1u);
LABEL_174:
          __break(1u);
LABEL_175:
          __break(1u);
LABEL_176:
          __break(1u);
LABEL_177:
          __break(1u);
LABEL_178:
          __break(1u);
LABEL_179:
          __break(1u);
LABEL_180:
          __break(1u);
LABEL_181:
          __break(1u);
LABEL_182:
          __break(1u);
LABEL_183:
          __break(1u);
LABEL_184:
          __break(1u);
LABEL_185:
          __break(1u);
LABEL_186:
          __break(1u);
        }

        if (v37 == 0x80000000)
        {
          goto LABEL_168;
        }

        v45 = *v38;
        v233 = *(v38 - 8);
        v46 = *(v38 + 40);
        v47 = *(v38 + 24);
        v48 = *(v38 + 8);

        swift_bridgeObjectRetain_n();

        v49 = sqlite3_column_type(v30, v37);
        if (v48 <= 1)
        {
          break;
        }

        if (v48 == 2)
        {
          if (v49 != 1)
          {
            if (v49 != 5)
            {

              *&__dst = 0;
              *(&__dst + 1) = 0xE000000000000000;
              sub_230E69540();

              v222 = 0x8000000230E818A0;
              v223 = 0xD00000000000001ELL;
              goto LABEL_166;
            }

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *&__dst = v36;
            v59 = sub_230DA41A0(v233, v45);
            v61 = v36[2];
            v62 = (v60 & 1) == 0;
            v43 = __OFADD__(v61, v62);
            v63 = v61 + v62;
            if (v43)
            {
              goto LABEL_170;
            }

            v64 = v60;
            if (v36[3] < v63)
            {
              sub_230DB602C(v63, isUniquelyReferenced_nonNull_native);
              v59 = sub_230DA41A0(v233, v45);
              if ((v64 & 1) != (v65 & 1))
              {
                goto LABEL_157;
              }

              goto LABEL_78;
            }

            if (isUniquelyReferenced_nonNull_native)
            {
LABEL_78:
              if (v64)
              {
                goto LABEL_79;
              }
            }

            else
            {
              v179 = v59;
              sub_230DB9990();
              v59 = v179;
              if (v64)
              {
LABEL_79:
                v134 = v59;

                v36 = __dst;
                v135 = *(__dst + 56) + 24 * v134;
                v131 = *v135;
                v132 = *(v135 + 8);
                *v135 = xmmword_230E6E730;
                v133 = *(v135 + 16);
                v136 = 2;
                goto LABEL_86;
              }
            }

            v36 = __dst;
            *(__dst + 8 * (v59 >> 6) + 64) |= 1 << v59;
            v180 = (v36[6] + 16 * v59);
            *v180 = v233;
            v180[1] = v45;
            v181 = v36[7] + 24 * v59;
            *v181 = xmmword_230E6E730;
            *(v181 + 16) = 2;

            v182 = v36[2];
            v43 = __OFADD__(v182, 1);
            v44 = v182 + 1;
            v30 = v230;
            if (v43)
            {
              goto LABEL_180;
            }

            goto LABEL_17;
          }

          v90 = sqlite3_column_int64(v30, v37);
          v91 = swift_isUniquelyReferenced_nonNull_native();
          *&__dst = v36;
          v92 = sub_230DA41A0(v233, v45);
          v94 = v36[2];
          v95 = (v93 & 1) == 0;
          v43 = __OFADD__(v94, v95);
          v96 = v94 + v95;
          if (v43)
          {
            goto LABEL_174;
          }

          v97 = v93;
          if (v36[3] < v96)
          {
            sub_230DB602C(v96, v91);
            v92 = sub_230DA41A0(v233, v45);
            if ((v97 & 1) != (v98 & 1))
            {
              goto LABEL_157;
            }

            goto LABEL_69;
          }

          if (v91)
          {
LABEL_69:
            if (v97)
            {
              goto LABEL_70;
            }
          }

          else
          {
            v170 = v92;
            sub_230DB9990();
            v92 = v170;
            if (v97)
            {
LABEL_70:
              v119 = v92;

              v36 = __dst;
              v120 = *(__dst + 56) + 24 * v119;
              v121 = *v120;
              v122 = *(v120 + 8);
              *v120 = v90;
              *(v120 + 8) = 0;
              v123 = *(v120 + 16);
              *(v120 + 16) = 2;
              sub_230D0F474(v121, v122, v123);

              goto LABEL_89;
            }
          }

          v36 = __dst;
          *(__dst + 8 * (v92 >> 6) + 64) |= 1 << v92;
          v171 = (v36[6] + 16 * v92);
          *v171 = v233;
          v171[1] = v45;
          v172 = v36[7] + 24 * v92;
          *v172 = v90;
          *(v172 + 8) = 0;
          *(v172 + 16) = 2;

          v173 = v36[2];
          v43 = __OFADD__(v173, 1);
          v44 = v173 + 1;
          v30 = v230;
          if (v43)
          {
            goto LABEL_182;
          }

          goto LABEL_17;
        }

        if (v49 != 3)
        {
          if (v49 != 5)
          {

            *&__dst = 0;
            *(&__dst + 1) = 0xE000000000000000;
            sub_230E69540();

            v224 = "Expected text value for column ";
LABEL_165:
            v222 = (v224 - 32) | 0x8000000000000000;
            v223 = 0xD00000000000001FLL;
LABEL_166:
            *&__dst = v223;
            *(&__dst + 1) = v222;
            MEMORY[0x23191DA00](v233, v45);

            v225 = __dst;
            sub_230D0D224();
            swift_allocError();
            *v226 = v225;
            *(v226 + 16) = 4;
            swift_willThrow();

            sqlite3_finalize(v30);
            goto LABEL_7;
          }

          v74 = swift_isUniquelyReferenced_nonNull_native();
          *&__dst = v36;
          v75 = sub_230DA41A0(v233, v45);
          v77 = v36[2];
          v78 = (v76 & 1) == 0;
          v43 = __OFADD__(v77, v78);
          v79 = v77 + v78;
          if (v43)
          {
            goto LABEL_169;
          }

          v80 = v76;
          if (v36[3] < v79)
          {
            sub_230DB602C(v79, v74);
            v75 = sub_230DA41A0(v233, v45);
            if ((v80 & 1) != (v81 & 1))
            {
              goto LABEL_157;
            }

            goto LABEL_84;
          }

          if (v74)
          {
LABEL_84:
            if (v80)
            {
              goto LABEL_85;
            }
          }

          else
          {
            v187 = v75;
            sub_230DB9990();
            v75 = v187;
            if (v80)
            {
LABEL_85:
              v139 = v75;

              v36 = __dst;
              v135 = *(__dst + 56) + 24 * v139;
              v131 = *v135;
              v132 = *(v135 + 8);
              *v135 = 0;
              *(v135 + 8) = 0;
              v133 = *(v135 + 16);
              v136 = 3;
LABEL_86:
              *(v135 + 16) = v136;
LABEL_87:
              sub_230D0F474(v131, v132, v133);

LABEL_88:

LABEL_89:

              v39 = v232;
              v30 = v230;
              goto LABEL_19;
            }
          }

          v36 = __dst;
          *(__dst + 8 * (v75 >> 6) + 64) |= 1 << v75;
          v188 = (v36[6] + 16 * v75);
          *v188 = v233;
          v188[1] = v45;
          v189 = v36[7] + 24 * v75;
          *v189 = 0;
          *(v189 + 8) = 0;
          *(v189 + 16) = 3;

          v190 = v36[2];
          v43 = __OFADD__(v190, 1);
          v44 = v190 + 1;
          v30 = v230;
          if (v43)
          {
            goto LABEL_177;
          }

          goto LABEL_17;
        }

        if (!sqlite3_column_text(v30, v37))
        {
          v140 = swift_isUniquelyReferenced_nonNull_native();
          *&__dst = v36;
          v141 = sub_230DA41A0(v233, v45);
          v143 = v36[2];
          v144 = (v142 & 1) == 0;
          v43 = __OFADD__(v143, v144);
          v145 = v143 + v144;
          if (v43)
          {
            goto LABEL_184;
          }

          v146 = v142;
          if (v36[3] < v145)
          {
            sub_230DB602C(v145, v140);
            v141 = sub_230DA41A0(v233, v45);
            if ((v146 & 1) != (v147 & 1))
            {
              goto LABEL_157;
            }

            goto LABEL_100;
          }

          if (v140)
          {
LABEL_100:
            if (v146)
            {
              goto LABEL_101;
            }
          }

          else
          {
            v199 = v141;
            sub_230DB9990();
            v141 = v199;
            if (v146)
            {
LABEL_101:
              v152 = v141;

              v36 = __dst;
              v153 = *(__dst + 56) + 24 * v152;
              v154 = *v153;
              v155 = *(v153 + 8);
              *v153 = xmmword_230E6E720;
              v156 = *(v153 + 16);
              *(v153 + 16) = 3;
              sub_230D0F474(v154, v155, v156);

              goto LABEL_18;
            }
          }

          v36 = __dst;
          *(__dst + 8 * (v141 >> 6) + 64) |= 1 << v141;
          v200 = (v36[6] + 16 * v141);
          *v200 = v233;
          v200[1] = v45;
          v201 = v36[7] + 24 * v141;
          *v201 = xmmword_230E6E720;
          *(v201 + 16) = 3;

          v202 = v36[2];
          v43 = __OFADD__(v202, 1);
          v44 = v202 + 1;
          if (v43)
          {
            goto LABEL_186;
          }

LABEL_17:
          v36[2] = v44;
          goto LABEL_18;
        }

        v108 = sub_230E69130();
        v228 = v109;
        v110 = swift_isUniquelyReferenced_nonNull_native();
        *&__dst = v36;
        v112 = sub_230DA41A0(v233, v45);
        v113 = v36[2];
        v114 = (v111 & 1) == 0;
        v115 = v113 + v114;
        if (__OFADD__(v113, v114))
        {
          goto LABEL_176;
        }

        v116 = v111;
        if (v36[3] >= v115)
        {
          if (v110)
          {
            if ((v111 & 1) == 0)
            {
              goto LABEL_137;
            }
          }

          else
          {
            sub_230DB9990();
            if ((v116 & 1) == 0)
            {
              goto LABEL_137;
            }
          }
        }

        else
        {
          sub_230DB602C(v115, v110);
          v117 = sub_230DA41A0(v233, v45);
          if ((v116 & 1) != (v118 & 1))
          {
            goto LABEL_157;
          }

          v112 = v117;
          if ((v116 & 1) == 0)
          {
LABEL_137:
            v36 = __dst;
            *(__dst + 8 * (v112 >> 6) + 64) |= 1 << v112;
            v195 = (v36[6] + 16 * v112);
            *v195 = v233;
            v195[1] = v45;
            v196 = v36[7] + 24 * v112;
            *v196 = v108;
            *(v196 + 8) = v228;
            *(v196 + 16) = 3;

            v197 = v36[2];
            v43 = __OFADD__(v197, 1);
            v198 = v197 + 1;
            if (v43)
            {
              goto LABEL_185;
            }

            v36[2] = v198;
            v30 = v230;
            goto LABEL_18;
          }
        }

        v36 = __dst;
        v148 = *(__dst + 56) + 24 * v112;
        v149 = *v148;
        v150 = *(v148 + 8);
        *v148 = v108;
        *(v148 + 8) = v228;
        v151 = *(v148 + 16);
        *(v148 + 16) = 3;
        sub_230D0F474(v149, v150, v151);

        v30 = v230;
LABEL_18:
        v39 = v232;
LABEL_19:
        ++v37;
        v38 += 56;
        if (v231 == v37)
        {
          goto LABEL_143;
        }
      }

      if (!v48)
      {
        if (v49 != 4)
        {
          if (v49 != 5)
          {

            *&__dst = 0;
            *(&__dst + 1) = 0xE000000000000000;
            sub_230E69540();

            v224 = "Expected blob value for column ";
            goto LABEL_165;
          }

          v50 = swift_isUniquelyReferenced_nonNull_native();
          *&__dst = v36;
          v51 = sub_230DA41A0(v233, v45);
          v53 = v36[2];
          v54 = (v52 & 1) == 0;
          v43 = __OFADD__(v53, v54);
          v55 = v53 + v54;
          if (v43)
          {
            goto LABEL_172;
          }

          v56 = v52;
          if (v36[3] >= v55)
          {
            if ((v50 & 1) == 0)
            {
              v175 = v51;
              sub_230DB9990();
              v51 = v175;
              if (v56)
              {
LABEL_76:
                v129 = v51;

                v36 = __dst;
                v130 = *(__dst + 56) + 24 * v129;
                v131 = *v130;
                v132 = *(v130 + 8);
                *v130 = xmmword_230E6E750;
                v133 = *(v130 + 16);
                *(v130 + 16) = 0;
                goto LABEL_87;
              }

              goto LABEL_117;
            }
          }

          else
          {
            sub_230DB602C(v55, v50);
            v51 = sub_230DA41A0(v233, v45);
            if ((v56 & 1) != (v57 & 1))
            {
              goto LABEL_157;
            }
          }

          if (v56)
          {
            goto LABEL_76;
          }

LABEL_117:
          v36 = __dst;
          *(__dst + 8 * (v51 >> 6) + 64) |= 1 << v51;
          v176 = (v36[6] + 16 * v51);
          *v176 = v233;
          v176[1] = v45;
          v177 = v36[7] + 24 * v51;
          *v177 = xmmword_230E6E750;
          *(v177 + 16) = 0;

          v178 = v36[2];
          v43 = __OFADD__(v178, 1);
          v44 = v178 + 1;
          v30 = v230;
          if (v43)
          {
            goto LABEL_181;
          }

          goto LABEL_17;
        }

        v82 = sqlite3_column_blob(v30, v37);
        result = sqlite3_column_bytes(v30, v37);
        if (!v82)
        {
          __break(1u);
          return result;
        }

        v83 = result;
        if (result)
        {
          if (result < 15)
          {
            *(&__dst + 6) = 0;
            *&__dst = 0;
            BYTE14(__dst) = result;
            memcpy(&__dst, v82, result);
            v88 = __dst;
            v89 = v227 & 0xF00000000000000 | DWORD2(__dst) | ((WORD6(__dst) | (BYTE14(__dst) << 16)) << 32);
            v227 = v89;
          }

          else
          {
            v84 = sub_230E68760();
            v85 = *(v84 + 48);
            v86 = *(v84 + 52);
            swift_allocObject();
            if (v83 == 0x7FFFFFFF)
            {
              v87 = sub_230E68720();
              sub_230E68870();
              v88 = swift_allocObject();
              *(v88 + 16) = xmmword_230E6E740;
              v89 = v87 | 0x8000000000000000;
            }

            else
            {
              v88 = v83 << 32;
              v89 = sub_230E68720() | 0x4000000000000000;
            }
          }
        }

        else
        {
          v88 = 0;
          v89 = 0xC000000000000000;
        }

        sub_230D0DD0C(v88, v89);
        v157 = swift_isUniquelyReferenced_nonNull_native();
        *&__dst = v36;
        v158 = sub_230DA41A0(v233, v45);
        v160 = v36[2];
        v161 = (v159 & 1) == 0;
        v43 = __OFADD__(v160, v161);
        v162 = v160 + v161;
        if (v43)
        {
          goto LABEL_175;
        }

        v163 = v159;
        if (v36[3] >= v162)
        {
          if ((v157 & 1) == 0)
          {
            v191 = v158;
            sub_230DB9990();
            v158 = v191;
            v30 = v230;
            if (v163)
            {
LABEL_109:
              v165 = v158;

              v36 = __dst;
              v166 = *(__dst + 56) + 24 * v165;
              v167 = *v166;
              v168 = *(v166 + 8);
              *v166 = v88;
              *(v166 + 8) = v89;
              v169 = *(v166 + 16);
              *(v166 + 16) = 0;
              sub_230D0F474(v167, v168, v169);

              sub_230D0F4A8(v88, v89);
              goto LABEL_18;
            }

            goto LABEL_133;
          }
        }

        else
        {
          sub_230DB602C(v162, v157);
          v158 = sub_230DA41A0(v233, v45);
          if ((v163 & 1) != (v164 & 1))
          {
LABEL_157:
            v221 = *MEMORY[0x277D85DE8];

            return sub_230E69950();
          }
        }

        v30 = v230;
        if (v163)
        {
          goto LABEL_109;
        }

LABEL_133:
        v36 = __dst;
        *(__dst + 8 * (v158 >> 6) + 64) |= 1 << v158;
        v192 = (v36[6] + 16 * v158);
        *v192 = v233;
        v192[1] = v45;
        v193 = v36[7] + 24 * v158;
        *v193 = v88;
        *(v193 + 8) = v89;
        *(v193 + 16) = 0;

        sub_230D0F4A8(v88, v89);
        v194 = v36[2];
        v43 = __OFADD__(v194, 1);
        v44 = v194 + 1;
        if (v43)
        {
          goto LABEL_183;
        }

        goto LABEL_17;
      }

      if (v49 != 2)
      {
        if (v49 != 5)
        {

          *&__dst = 0;
          *(&__dst + 1) = 0xE000000000000000;
          sub_230E69540();

          v222 = 0x8000000230E81700;
          v223 = 0xD000000000000021;
          goto LABEL_166;
        }

        v66 = swift_isUniquelyReferenced_nonNull_native();
        *&__dst = v36;
        v67 = sub_230DA41A0(v233, v45);
        v69 = v36[2];
        v70 = (v68 & 1) == 0;
        v43 = __OFADD__(v69, v70);
        v71 = v69 + v70;
        if (v43)
        {
          goto LABEL_171;
        }

        v72 = v68;
        if (v36[3] >= v71)
        {
          if ((v66 & 1) == 0)
          {
            v183 = v67;
            sub_230DB9990();
            v67 = v183;
            if (v72)
            {
LABEL_82:
              v137 = v67;

              v36 = __dst;
              v138 = *(__dst + 56) + 24 * v137;
              v131 = *v138;
              v132 = *(v138 + 8);
              *v138 = xmmword_230E6E730;
              v133 = *(v138 + 16);
              *(v138 + 16) = 1;
              goto LABEL_87;
            }

            goto LABEL_125;
          }
        }

        else
        {
          sub_230DB602C(v71, v66);
          v67 = sub_230DA41A0(v233, v45);
          if ((v72 & 1) != (v73 & 1))
          {
            goto LABEL_157;
          }
        }

        if (v72)
        {
          goto LABEL_82;
        }

LABEL_125:
        v36 = __dst;
        *(__dst + 8 * (v67 >> 6) + 64) |= 1 << v67;
        v184 = (v36[6] + 16 * v67);
        *v184 = v233;
        v184[1] = v45;
        v185 = v36[7] + 24 * v67;
        *v185 = xmmword_230E6E730;
        *(v185 + 16) = 1;

        v186 = v36[2];
        v43 = __OFADD__(v186, 1);
        v44 = v186 + 1;
        v30 = v230;
        if (v43)
        {
          goto LABEL_178;
        }

        goto LABEL_17;
      }

      v99 = sqlite3_column_double(v30, v37);
      v100 = swift_isUniquelyReferenced_nonNull_native();
      *&__dst = v36;
      v101 = sub_230DA41A0(v233, v45);
      v103 = v36[2];
      v104 = (v102 & 1) == 0;
      v43 = __OFADD__(v103, v104);
      v105 = v103 + v104;
      if (v43)
      {
        goto LABEL_173;
      }

      v106 = v102;
      if (v36[3] >= v105)
      {
        if ((v100 & 1) == 0)
        {
          v174 = v101;
          sub_230DB9990();
          v101 = v174;
          if (v106)
          {
LABEL_73:
            v124 = v101;

            v36 = __dst;
            v125 = *(__dst + 56) + 24 * v124;
            v126 = *v125;
            v127 = *(v125 + 8);
            *v125 = v99;
            *(v125 + 8) = 0;
            v128 = *(v125 + 16);
            *(v125 + 16) = 1;
            sub_230D0F474(v126, v127, v128);

            goto LABEL_88;
          }

          goto LABEL_16;
        }
      }

      else
      {
        sub_230DB602C(v105, v100);
        v101 = sub_230DA41A0(v233, v45);
        if ((v106 & 1) != (v107 & 1))
        {
          goto LABEL_157;
        }
      }

      if (v106)
      {
        goto LABEL_73;
      }

LABEL_16:
      v36 = __dst;
      *(__dst + 8 * (v101 >> 6) + 64) |= 1 << v101;
      v40 = (v36[6] + 16 * v101);
      *v40 = v233;
      v40[1] = v45;
      v41 = v36[7] + 24 * v101;
      *v41 = v99;
      *(v41 + 8) = 0;
      *(v41 + 16) = 1;

      v42 = v36[2];
      v43 = __OFADD__(v42, 1);
      v44 = v42 + 1;
      v30 = v230;
      if (v43)
      {
        goto LABEL_179;
      }

      goto LABEL_17;
    }

    v35 = MEMORY[0x277D84F90];
LABEL_150:
    v205 = *(v0 + 232);

    sqlite3_reset(v30);
    *&__dst = 0;
    *(&__dst + 1) = 0xE000000000000000;
    sub_230E69540();
    MEMORY[0x23191DA00](0xD00000000000002FLL, 0x8000000230E81870);
    *(v0 + 224) = v35[2];
    v206 = sub_230E69890();
    MEMORY[0x23191DA00](v206);

    MEMORY[0x23191DA00](0x7364726F63657220, 0xE800000000000000);
    sub_230E68950();

    *v205 = v35;
    sqlite3_finalize(v30);
    v32 = *(v0 + 8);
    v207 = *MEMORY[0x277D85DE8];
  }

  else
  {

    sub_230D0D224();
    swift_allocError();
    *v31 = 0;
    *(v31 + 8) = 0;
    *(v31 + 16) = 3;
    swift_willThrow();
LABEL_7:
    v32 = *(v0 + 8);
    v33 = *MEMORY[0x277D85DE8];
  }

  return v32();
}

uint64_t sub_230D40A38()
{
  v1 = *(v0 + 24);
  v2 = sub_230D0DD60(MEMORY[0x277D84F90]);
  v3 = *(v1 + 16);
  if (!v3)
  {
    return v2;
  }

  v4 = 0;
  v5 = (v1 + 48);
  while (v4 < *(v1 + 16))
  {
    v10 = *(v5 - 2);
    v9 = *(v5 - 1);
    v11 = *v5;
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = sub_230DA41A0(v10, v9);
    v15 = v2[2];
    v16 = (v14 & 1) == 0;
    v17 = __OFADD__(v15, v16);
    v18 = v15 + v16;
    if (v17)
    {
      goto LABEL_18;
    }

    v19 = v14;
    if (v2[3] < v18)
    {
      sub_230DB5D54(v18, isUniquelyReferenced_nonNull_native);
      v13 = sub_230DA41A0(v10, v9);
      if ((v19 & 1) != (v20 & 1))
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v19)
      {
        goto LABEL_3;
      }

      goto LABEL_12;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_11;
    }

    v25 = v13;
    sub_230DB97F8();
    v13 = v25;
    if (v19)
    {
LABEL_3:
      v6 = (v2[7] + 24 * v13);
      v7 = v6[1];
      v8 = v6[2];
      *v6 = v10;
      v6[1] = v9;
      v6[2] = v11;

      goto LABEL_4;
    }

LABEL_12:
    v2[(v13 >> 6) + 8] |= 1 << v13;
    v21 = (v2[6] + 16 * v13);
    *v21 = v10;
    v21[1] = v9;
    v22 = (v2[7] + 24 * v13);
    *v22 = v10;
    v22[1] = v9;
    v22[2] = v11;

    v23 = v2[2];
    v17 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (v17)
    {
      goto LABEL_19;
    }

    v2[2] = v24;
LABEL_4:
    ++v4;
    v5 += 3;
    if (v3 == v4)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  result = sub_230E69950();
  __break(1u);
  return result;
}

uint64_t sub_230D40C2C(uint64_t a1)
{
  v3 = *a1;
  v73 = *(a1 + 32);
  v74 = *(a1 + 16);
  v64 = *(a1 + 24);
  v65 = *(a1 + 40);
  v70 = *(a1 + 48);
  v62 = *(a1 + 8);
  v63 = *(a1 + 56);
  v66 = *(a1 + 72);
  v67 = *(a1 + 64);
  v71 = *(a1 + 80);
  v61 = *(a1 + 88);
  v72 = *(a1 + 96);
  v68 = v1[1];
  v69 = *v1;
  if (*a1)
  {

    v4 = v3;
    v5 = *(v3 + 16);
    if (!v5)
    {
      goto LABEL_24;
    }

LABEL_10:
    v79 = MEMORY[0x277D84F90];
    v75 = v4;
    sub_230D48880(0, v5, 0);
    v14 = 0;
    v15 = v79;
    v16 = (v4 + 80);
    v76 = v5;
    while (v14 < *(v4 + 16))
    {
      v2 = *(v16 - 6);
      v17 = *(v16 - 5);
      v19 = *(v16 - 3);
      v18 = *(v16 - 2);
      v20 = *v16;
      if (*v16)
      {
        v77 = *(v16 - 1);
        v78 = v20;
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        MEMORY[0x23191DA00](542327072, 0xE400000000000000);
        v21 = v17;
        if (v18)
        {

          v2 = v19;
          v21 = v18;
        }

        MEMORY[0x23191DA00](v2, v21);

        v2 = v77;
        v17 = v78;
        v4 = v75;
      }

      else if (v18)
      {
        v77 = *(v16 - 6);
        v78 = v17;
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        MEMORY[0x23191DA00](542327072, 0xE400000000000000);
        MEMORY[0x23191DA00](v19, v18);
        v4 = v75;

        swift_bridgeObjectRelease_n();
        v2 = v77;
        v17 = v78;
      }

      else
      {
        v22 = *(v16 - 5);
      }

      v79 = v15;
      v24 = *(v15 + 16);
      v23 = *(v15 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_230D48880((v23 > 1), v24 + 1, 1);
        v4 = v75;
        v15 = v79;
      }

      ++v14;
      *(v15 + 16) = v24 + 1;
      v25 = v15 + 16 * v24;
      *(v25 + 32) = v2;
      *(v25 + 40) = v17;
      v16 += 7;
      v5 = v76;
      if (v76 == v14)
      {

        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_51:
    v15 = sub_230E49E88((v2 > 1), v5, 1, v15);
LABEL_27:
    v30 = v67;
    *(v15 + 16) = v5;
    v31 = v15 + 16 * v4;
    v32 = v73;
    *(v31 + 32) = v62;
    *(v31 + 40) = v74;
    if (!v67)
    {
      goto LABEL_33;
    }

    goto LABEL_30;
  }

  v77 = v1[2];

  sub_230D4434C(&v77);
  v6 = v77;
  v2 = *(v77 + 16);
  if (v2)
  {
    v77 = MEMORY[0x277D84F90];
    sub_230D488C0(0, v2, 0);
    v4 = v77;
    v7 = (v6 + 48);
    do
    {
      v9 = *(v7 - 2);
      v8 = *(v7 - 1);
      v10 = *v7;
      v77 = v4;
      v12 = *(v4 + 16);
      v11 = *(v4 + 24);

      if (v12 >= v11 >> 1)
      {
        sub_230D488C0((v11 > 1), v12 + 1, 1);
        v4 = v77;
      }

      v7 += 88;
      *(v4 + 16) = v12 + 1;
      v13 = (v4 + 56 * v12);
      *(v13 + 4) = v9;
      *(v13 + 5) = v8;
      v13[48] = v10;
      *(v13 + 56) = 0u;
      *(v13 + 72) = 0u;
      --v2;
    }

    while (v2);

    v5 = *(v4 + 16);
    if (!v5)
    {
      goto LABEL_24;
    }

    goto LABEL_10;
  }

  v4 = MEMORY[0x277D84F90];
  v5 = *(MEMORY[0x277D84F90] + 16);
  if (v5)
  {
    goto LABEL_10;
  }

LABEL_24:

  v15 = MEMORY[0x277D84F90];
LABEL_25:
  v77 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D8F0, &unk_230E70E80);
  sub_230D443B8();
  v26 = sub_230E68FF0();
  v28 = v27;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5A6A8, &unk_230E6B3C0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_230E6B3B0;
  v77 = 0;
  v78 = 0xE000000000000000;
  sub_230E69540();

  v77 = 0x205443454C4553;
  v78 = 0xE700000000000000;
  MEMORY[0x23191DA00](v26, v28);

  MEMORY[0x23191DA00](0x204D4F524620, 0xE600000000000000);
  MEMORY[0x23191DA00](v69, v68);
  v29 = v78;
  *(v15 + 32) = v77;
  *(v15 + 40) = v29;
  if (v74)
  {
    v4 = *(v15 + 16);
    v2 = *(v15 + 24);
    v5 = v4 + 1;

    if (v4 < v2 >> 1)
    {
      goto LABEL_27;
    }

    goto LABEL_51;
  }

  v32 = v73;
  v30 = v67;
  if (!v67)
  {
    goto LABEL_33;
  }

LABEL_30:
  v77 = 0x204552454857;
  v78 = 0xE600000000000000;
  MEMORY[0x23191DA00](v63, v30);
  v33 = v77;
  v34 = v78;
  v36 = *(v15 + 16);
  v35 = *(v15 + 24);
  if (v36 >= v35 >> 1)
  {
    v15 = sub_230E49E88((v35 > 1), v36 + 1, 1, v15);
  }

  v32 = v73;
  *(v15 + 16) = v36 + 1;
  v37 = v15 + 16 * v36;
  *(v37 + 32) = v33;
  *(v37 + 40) = v34;
LABEL_33:
  if (v32)
  {
    v77 = 0x59422050554F5247;
    v78 = 0xE900000000000020;
    MEMORY[0x23191DA00](v64);
    v38 = v77;
    v39 = v78;
    v41 = *(v15 + 16);
    v40 = *(v15 + 24);
    if (v41 >= v40 >> 1)
    {
      v15 = sub_230E49E88((v40 > 1), v41 + 1, 1, v15);
    }

    *(v15 + 16) = v41 + 1;
    v42 = v15 + 16 * v41;
    *(v42 + 32) = v38;
    *(v42 + 40) = v39;
  }

  if (v70)
  {
    v77 = 0x20474E49564148;
    v78 = 0xE700000000000000;
    MEMORY[0x23191DA00](v65);
    v43 = v77;
    v44 = v78;
    v46 = *(v15 + 16);
    v45 = *(v15 + 24);
    if (v46 >= v45 >> 1)
    {
      v15 = sub_230E49E88((v45 > 1), v46 + 1, 1, v15);
    }

    *(v15 + 16) = v46 + 1;
    v47 = v15 + 16 * v46;
    *(v47 + 32) = v43;
    *(v47 + 40) = v44;
  }

  if (v71)
  {
    v77 = 0x594220524544524FLL;
    v78 = 0xE900000000000020;
    MEMORY[0x23191DA00](v66);
    v48 = v77;
    v49 = v78;
    v51 = *(v15 + 16);
    v50 = *(v15 + 24);
    if (v51 >= v50 >> 1)
    {
      v15 = sub_230E49E88((v50 > 1), v51 + 1, 1, v15);
    }

    *(v15 + 16) = v51 + 1;
    v52 = v15 + 16 * v51;
    *(v52 + 32) = v48;
    *(v52 + 40) = v49;
  }

  if ((v72 & 1) == 0)
  {
    v77 = 0x2054494D494CLL;
    v78 = 0xE600000000000000;
    v79 = v61;
    v53 = sub_230E69890();
    MEMORY[0x23191DA00](v53);

    v54 = v77;
    v55 = v78;
    v57 = *(v15 + 16);
    v56 = *(v15 + 24);
    if (v57 >= v56 >> 1)
    {
      v15 = sub_230E49E88((v56 > 1), v57 + 1, 1, v15);
    }

    *(v15 + 16) = v57 + 1;
    v58 = v15 + 16 * v57;
    *(v58 + 32) = v54;
    *(v58 + 40) = v55;
  }

  v77 = v15;
  v59 = sub_230E68FF0();

  return v59;
}