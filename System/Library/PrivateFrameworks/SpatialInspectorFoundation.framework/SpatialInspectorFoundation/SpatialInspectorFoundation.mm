__int128 *sub_26B28E5DC()
{
  if (qword_2803F4730 != -1)
  {
    swift_once();
  }

  return &xmmword_2803FC260;
}

double sub_26B28E62C@<D0>(_OWORD *a1@<X8>)
{
  if (qword_2803F4730 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  result = *&xmmword_2803FC260;
  *a1 = xmmword_2803FC260;
  return result;
}

uint64_t sub_26B28E6A8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (qword_2803F4730 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  *&xmmword_2803FC260 = v1;
  *(&xmmword_2803FC260 + 1) = v2;
  return result;
}

uint64_t (*sub_26B28E728())()
{
  if (qword_2803F4730 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_26B28E7B4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26B2BB768();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_26B28E81C()
{
  v1 = v0 + *(type metadata accessor for SpatialInspectorDataV1() + 20);
  v2 = *v1;
  sub_26B28E8AC(*v1, *(v1 + 8));
  return v2;
}

uint64_t type metadata accessor for SpatialInspectorDataV1()
{
  result = qword_2803F48C0;
  if (!qword_2803F48C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26B28E8AC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_26B28E900()
{
  v1 = v0 + *(type metadata accessor for SpatialInspectorDataV1() + 24);
  v2 = *v1;
  sub_26B28E8AC(*v1, *(v1 + 8));
  return v2;
}

uint64_t sub_26B28E944()
{
  v1 = v0 + *(type metadata accessor for SpatialInspectorDataV1() + 28);
  v2 = *v1;
  sub_26B28E988(*v1, *(v1 + 8));
  return v2;
}

uint64_t sub_26B28E988(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_26B28E8AC(a1, a2);
  }

  return a1;
}

uint64_t sub_26B28E99C()
{
  v1 = (v0 + *(type metadata accessor for SpatialInspectorDataV1() + 32));
  result = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);
  return result;
}

uint64_t sub_26B28E9C8()
{
  v1 = (v0 + *(type metadata accessor for SpatialInspectorDataV1() + 36));
  result = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);
  return result;
}

int *sub_26B28E9F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char a11, uint64_t a12, uint64_t a13, char a14)
{
  v21 = sub_26B2BB768();
  (*(*(v21 - 8) + 32))(a9, a1, v21);
  result = type metadata accessor for SpatialInspectorDataV1();
  v23 = (a9 + result[5]);
  *v23 = a2;
  v23[1] = a3;
  v24 = (a9 + result[6]);
  *v24 = a4;
  v24[1] = a5;
  v25 = (a9 + result[7]);
  *v25 = a6;
  v25[1] = a7;
  v26 = a9 + result[8];
  *v26 = a8;
  *(v26 + 8) = a10;
  *(v26 + 16) = a11 & 1;
  v27 = a9 + result[9];
  *v27 = a12;
  *(v27 + 8) = a13;
  *(v27 + 16) = a14 & 1;
  return result;
}

uint64_t sub_26B28EB2C()
{
  v1 = *v0;
  sub_26B2BC1E8();
  MEMORY[0x26D6742C0](v1);
  return sub_26B2BC238();
}

uint64_t sub_26B28EBA0()
{
  v1 = *v0;
  sub_26B2BC1E8();
  MEMORY[0x26D6742C0](v1);
  return sub_26B2BC238();
}

unint64_t sub_26B28EBE4()
{
  v1 = *v0;
  v2 = 0x536465646F636E65;
  v3 = 0xD00000000000001DLL;
  v4 = 0x7A6953656E656373;
  if (v1 != 4)
  {
    v4 = 0x6E6543656E656373;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 0xD000000000000018;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000010;
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

uint64_t sub_26B28ECC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26B29007C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26B28ED04(uint64_t a1)
{
  v2 = sub_26B28F170();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B28ED40(uint64_t a1)
{
  v2 = sub_26B28F170();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26B28ED7C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F3D70, &unk_26B2BC8F0);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v23 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B28F170();
  sub_26B2BC258();
  LOBYTE(v23) = 0;
  sub_26B2BB768();
  sub_26B28FA68(&qword_2803F3D78, MEMORY[0x277CC95F0]);
  sub_26B2BC0B8();
  if (!v2)
  {
    v11 = type metadata accessor for SpatialInspectorDataV1();
    v12 = (v3 + v11[5]);
    v13 = v12[1];
    *&v23 = *v12;
    *(&v23 + 1) = v13;
    v25 = 1;
    sub_26B28E8AC(v23, v13);
    sub_26B28F1C4();
    sub_26B2BC0B8();
    sub_26B28F218(v23, *(&v23 + 1));
    v14 = (v3 + v11[6]);
    v15 = v14[1];
    *&v23 = *v14;
    *(&v23 + 1) = v15;
    v25 = 2;
    sub_26B28E8AC(v23, v15);
    sub_26B2BC0B8();
    sub_26B28F218(v23, *(&v23 + 1));
    v17 = (v3 + v11[7]);
    v18 = v17[1];
    *&v23 = *v17;
    *(&v23 + 1) = v18;
    v25 = 3;
    sub_26B28E988(v23, v18);
    sub_26B2BC048();
    sub_26B28F26C(v23, *(&v23 + 1));
    v19 = (v3 + v11[8]);
    v20 = *(v19 + 16);
    v23 = *v19;
    v24 = v20;
    v25 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F3D88, &qword_26B2BDEC0);
    sub_26B28F8D4(&qword_2803F3D90);
    sub_26B2BC048();
    v21 = (v3 + v11[9]);
    v22 = *(v21 + 16);
    v23 = *v21;
    v24 = v22;
    v25 = 5;
    sub_26B2BC048();
  }

  return (*(v6 + 8))(v9, v5);
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

unint64_t sub_26B28F170()
{
  result = qword_2803F4738[0];
  if (!qword_2803F4738[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2803F4738);
  }

  return result;
}

unint64_t sub_26B28F1C4()
{
  result = qword_2803F3D80;
  if (!qword_2803F3D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F3D80);
  }

  return result;
}

uint64_t sub_26B28F218(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_26B28F26C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_26B28F218(a1, a2);
  }

  return a1;
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

uint64_t sub_26B28F2C8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = sub_26B2BB768();
  v24 = *(v4 - 8);
  v5 = *(v24 + 64);
  MEMORY[0x28223BE20]();
  v25 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F3D98, &qword_26B2BC900);
  v26 = *(v28 - 8);
  v7 = (*(v26 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = v22 - v8;
  v10 = type metadata accessor for SpatialInspectorDataV1();
  v11 = *(*(v10 - 1) + 64);
  MEMORY[0x28223BE20]();
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B28F170();
  v27 = v9;
  sub_26B2BC248();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v15 = v24;
  LOBYTE(v29) = 0;
  sub_26B28FA68(&qword_2803F3DA0, MEMORY[0x277CC95F0]);
  v16 = v25;
  sub_26B2BBFC8();
  (*(v15 + 32))(v13, v16, v4);
  v31 = 1;
  sub_26B28F880();
  sub_26B2BBFC8();
  *&v13[v10[5]] = v29;
  v31 = 2;
  v25 = 0;
  sub_26B2BBFC8();
  *&v13[v10[6]] = v29;
  v31 = 3;
  sub_26B2BBF58();
  *&v13[v10[7]] = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F3D88, &qword_26B2BDEC0);
  v31 = 4;
  v22[1] = sub_26B28F8D4(&qword_2803F3DB0);
  sub_26B2BBF58();
  v17 = v30;
  v18 = &v13[v10[8]];
  *v18 = v29;
  v18[16] = v17;
  v31 = 5;
  sub_26B2BBF58();
  (*(v26 + 8))(v27, v28);
  v19 = v30;
  v20 = &v13[v10[9]];
  *v20 = v29;
  v20[16] = v19;
  sub_26B28F924(v13, v23);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_26B28F988(v13);
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

unint64_t sub_26B28F880()
{
  result = qword_2803F3DA8;
  if (!qword_2803F3DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F3DA8);
  }

  return result;
}

uint64_t sub_26B28F8D4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803F3D88, &qword_26B2BDEC0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26B28F924(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SpatialInspectorDataV1();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26B28F988(uint64_t a1)
{
  v2 = type metadata accessor for SpatialInspectorDataV1();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26B28F9E4(uint64_t a1)
{
  *(a1 + 8) = sub_26B28FA68(&qword_2803F3DB8, type metadata accessor for SpatialInspectorDataV1);
  result = sub_26B28FA68(&qword_2803F3DC0, type metadata accessor for SpatialInspectorDataV1);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_26B28FA68(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26B28FAF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26B2BB768();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8) >> 60;
    if (((4 * v10) & 0xC) != 0)
    {
      return 16 - ((4 * v10) & 0xC | (v10 >> 2));
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_26B28FBD8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_26B2BB768();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    v11 = (a1 + *(a4 + 20));
    *v11 = 0;
    v11[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  return result;
}

void sub_26B28FCA0()
{
  sub_26B2BB768();
  if (v0 <= 0x3F)
  {
    sub_26B28FD4C();
    if (v1 <= 0x3F)
    {
      sub_26B28FD9C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_26B28FD4C()
{
  if (!qword_2803F3DC8)
  {
    v0 = sub_26B2BBD28();
    if (!v1)
    {
      atomic_store(v0, &qword_2803F3DC8);
    }
  }
}

void sub_26B28FD9C()
{
  if (!qword_2803F3DD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803F3D88, &qword_26B2BDEC0);
    v0 = sub_26B2BBD28();
    if (!v1)
    {
      atomic_store(v0, &qword_2803F3DD0);
    }
  }
}

uint64_t getEnumTagSinglePayload for SpatialInspectorDataV1.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SpatialInspectorDataV1.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_26B28FF78()
{
  result = qword_2803F49D0[0];
  if (!qword_2803F49D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2803F49D0);
  }

  return result;
}

unint64_t sub_26B28FFD0()
{
  result = qword_2803F4AE0;
  if (!qword_2803F4AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F4AE0);
  }

  return result;
}

unint64_t sub_26B290028()
{
  result = qword_2803F4AE8[0];
  if (!qword_2803F4AE8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2803F4AE8);
  }

  return result;
}

uint64_t sub_26B29007C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x800000026B2C3E20 == a2 || (sub_26B2BC138() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x536465646F636E65 && a2 == 0xEC000000656E6563 || (sub_26B2BC138() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000018 && 0x800000026B2C3E40 == a2 || (sub_26B2BC138() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001DLL && 0x800000026B2C3E60 == a2 || (sub_26B2BC138() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7A6953656E656373 && a2 == 0xE900000000000065 || (sub_26B2BC138() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E6543656E656373 && a2 == 0xEB00000000726574)
  {

    return 5;
  }

  else
  {
    v5 = sub_26B2BC138();

    if (v5)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_26B290294(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6C616E7265746E69;
  }

  else
  {
    v4 = 0x7372655661746164;
  }

  if (v3)
  {
    v5 = 0xEB000000006E6F69;
  }

  else
  {
    v5 = 0xE900000000000073;
  }

  if (*a2)
  {
    v6 = 0x6C616E7265746E69;
  }

  else
  {
    v6 = 0x7372655661746164;
  }

  if (*a2)
  {
    v7 = 0xE900000000000073;
  }

  else
  {
    v7 = 0xEB000000006E6F69;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_26B2BC138();
  }

  return v9 & 1;
}

uint64_t sub_26B290348()
{
  v1 = *v0;
  sub_26B2BC1E8();
  sub_26B2BB9E8();

  return sub_26B2BC238();
}

uint64_t sub_26B2903D8()
{
  *v0;
  sub_26B2BB9E8();
}

uint64_t sub_26B290454()
{
  v1 = *v0;
  sub_26B2BC1E8();
  sub_26B2BB9E8();

  return sub_26B2BC238();
}

uint64_t sub_26B2904E0@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_26B2BBF18();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_26B290540(uint64_t *a1@<X8>)
{
  v2 = 0x7372655661746164;
  if (*v1)
  {
    v2 = 0x6C616E7265746E69;
  }

  v3 = 0xEB000000006E6F69;
  if (*v1)
  {
    v3 = 0xE900000000000073;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_26B29058C()
{
  if (*v0)
  {
    result = 0x6C616E7265746E69;
  }

  else
  {
    result = 0x7372655661746164;
  }

  *v0;
  return result;
}

uint64_t sub_26B2905D4@<X0>(char *a1@<X8>)
{
  v2 = sub_26B2BBF18();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_26B290644(uint64_t a1)
{
  v2 = sub_26B291068();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B290680(uint64_t a1)
{
  v2 = sub_26B291068();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26B2906C0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC26SpatialInspectorFoundation31SpatialSceneDebugRepresentation_internals;
  swift_beginAccess();
  return sub_26B290718(v1 + v3, a1);
}

uint64_t sub_26B290718(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_26B29077C(__int128 *a1)
{
  v3 = OBJC_IVAR____TtC26SpatialInspectorFoundation31SpatialSceneDebugRepresentation_internals;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v1 + v3));
  sub_26B2907E4(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_26B2907E4(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

id SpatialSceneDebugRepresentation.__allocating_init(encodedSceneUUID:encodedScene:sceneDebugRepresentation:sceneStatisticsRepresentation:sceneConfiguration:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, unint64_t a9)
{
  v10 = v9;
  v39 = a8;
  v38 = a7;
  v36 = a2;
  v42 = a1;
  v16 = sub_26B2BB768();
  v41 = v16;
  v43 = *(v16 - 8);
  v17 = v43;
  v18 = *(v43 + 64);
  MEMORY[0x28223BE20]();
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = objc_allocWithZone(v10);
  (*(v17 + 16))(v20, a1, v16);
  v46 = type metadata accessor for SpatialInspectorDataV2();
  v47 = sub_26B2915E4(&qword_2803F3DE0, type metadata accessor for SpatialInspectorDataV2);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v45);
  v22 = v36;
  v23 = a3;
  sub_26B28E8AC(v36, a3);
  v24 = a4;
  v25 = a4;
  v26 = a5;
  sub_26B28E8AC(v25, a5);
  v27 = a6;
  v28 = a6;
  v29 = v38;
  sub_26B28E988(v28, v38);
  v30 = v39;
  v35 = a9;
  sub_26B28E988(v39, a9);
  sub_26B2A6338(v20, v22, v23, v24, v26, v27, v29, v30, boxed_opaque_existential_1, a9);
  v31 = v37;
  sub_26B2907E4(&v45, &v37[OBJC_IVAR____TtC26SpatialInspectorFoundation31SpatialSceneDebugRepresentation_internals]);
  v32 = sub_26B2A6008();
  swift_beginAccess();
  *&v31[OBJC_IVAR____TtC26SpatialInspectorFoundation31SpatialSceneDebugRepresentation_dataVersion] = *v32;
  v44.receiver = v31;
  v44.super_class = v40;
  v33 = objc_msgSendSuper2(&v44, sel_init);
  sub_26B28F26C(v30, v35);
  sub_26B28F26C(v27, v29);
  sub_26B28F218(v24, v26);
  sub_26B28F218(v22, v23);
  (*(v43 + 8))(v42, v41);
  return v33;
}

id SpatialSceneDebugRepresentation.init(encodedSceneUUID:encodedScene:sceneDebugRepresentation:sceneStatisticsRepresentation:sceneConfiguration:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, unint64_t a9)
{
  v33 = a7;
  v37 = a1;
  ObjectType = swift_getObjectType();
  v36 = sub_26B2BB768();
  v38 = *(v36 - 8);
  v16 = *(v38 + 64);
  MEMORY[0x28223BE20]();
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18, a1);
  v41 = type metadata accessor for SpatialInspectorDataV2();
  v42 = sub_26B2915E4(&qword_2803F3DE0, type metadata accessor for SpatialInspectorDataV2);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v40);
  v21 = a3;
  sub_26B28E8AC(a2, a3);
  v22 = a4;
  v23 = a4;
  v24 = a5;
  sub_26B28E8AC(v23, a5);
  v25 = a6;
  v26 = a6;
  v27 = v33;
  sub_26B28E988(v26, v33);
  sub_26B28E988(a8, a9);
  sub_26B2A6338(v18, a2, v21, v22, v24, v25, v27, a8, boxed_opaque_existential_1, a9);
  v28 = v34;
  sub_26B2907E4(&v40, &v34[OBJC_IVAR____TtC26SpatialInspectorFoundation31SpatialSceneDebugRepresentation_internals]);
  v29 = sub_26B2A6008();
  swift_beginAccess();
  *&v28[OBJC_IVAR____TtC26SpatialInspectorFoundation31SpatialSceneDebugRepresentation_dataVersion] = *v29;
  v39.receiver = v28;
  v39.super_class = ObjectType;
  v30 = objc_msgSendSuper2(&v39, sel_init);
  sub_26B28F26C(a8, a9);
  sub_26B28F26C(v25, v27);
  sub_26B28F218(v22, v24);
  sub_26B28F218(a2, v21);
  (*(v38 + 8))(v37, v36);
  return v30;
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

uint64_t SpatialSceneDebugRepresentation.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F3DF0, &qword_26B2BCAD0);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v9 = v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B291068();
  sub_26B2BC258();
  v22 = *(v3 + OBJC_IVAR____TtC26SpatialInspectorFoundation31SpatialSceneDebugRepresentation_dataVersion);
  v23 = 0;
  sub_26B2910BC();
  sub_26B2BC0B8();
  if (!v2)
  {
    v12 = (v3 + OBJC_IVAR____TtC26SpatialInspectorFoundation31SpatialSceneDebugRepresentation_internals);
    swift_beginAccess();
    v13 = v12[3];
    v14 = v12[4];
    v15 = __swift_project_boxed_opaque_existential_1(v12, v13);
    v21[1] = v21;
    v16 = *(v13 - 8);
    v17 = (*(v16 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x28223BE20](v15, v15);
    v19 = v21 - v18;
    (*(v16 + 16))(v21 - v18);
    v23 = 1;
    v20 = *(v14 + 16);
    sub_26B2BC0B8();
    (*(v16 + 8))(v19, v13);
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_26B291068()
{
  result = qword_2803F4B70[0];
  if (!qword_2803F4B70[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2803F4B70);
  }

  return result;
}

unint64_t sub_26B2910BC()
{
  result = qword_2803F3DF8;
  if (!qword_2803F3DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F3DF8);
  }

  return result;
}

void *SpatialSceneDebugRepresentation.init(from:)(uint64_t *a1)
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F3E00, &qword_26B2BCAD8);
  v23 = *(v6 - 8);
  v7 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v22 - v8;
  v10 = a1[4];
  v11 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B291068();
  sub_26B2BC248();
  if (!v2)
  {
    v22 = a1;
    v12 = v23;
    v28 = 0;
    sub_26B2914EC();
    sub_26B2BBFC8();
    v14 = v25;
    *&v3[OBJC_IVAR____TtC26SpatialInspectorFoundation31SpatialSceneDebugRepresentation_dataVersion] = v25;
    v15 = v14;
    if (v14 == 2)
    {
      v19 = type metadata accessor for SpatialInspectorDataV2();
      v28 = 1;
      v26 = v19;
      v17 = type metadata accessor for SpatialInspectorDataV2;
      v27 = sub_26B2915E4(&qword_2803F3DE0, type metadata accessor for SpatialInspectorDataV2);
      __swift_allocate_boxed_opaque_existential_1(&v25);
      v18 = &unk_2803F3E18;
      goto LABEL_9;
    }

    if (v14 == 1)
    {
      v16 = type metadata accessor for SpatialInspectorDataV1();
      v28 = 1;
      v26 = v16;
      v17 = type metadata accessor for SpatialInspectorDataV1;
      v27 = sub_26B2915E4(&qword_2803F3E20, type metadata accessor for SpatialInspectorDataV1);
      __swift_allocate_boxed_opaque_existential_1(&v25);
      v18 = &qword_2803F3DB8;
LABEL_9:
      sub_26B2915E4(v18, v17);
      sub_26B2BBFC8();
      (*(v12 + 8))(v9, v6);
      sub_26B2907E4(&v25, &v3[OBJC_IVAR____TtC26SpatialInspectorFoundation31SpatialSceneDebugRepresentation_internals]);
      v24.receiver = v3;
      v24.super_class = ObjectType;
      v11 = objc_msgSendSuper2(&v24, sel_init);
      __swift_destroy_boxed_opaque_existential_1(v22);
      return v11;
    }

    v20 = sub_26B2A6008();
    swift_beginAccess();
    v11 = *v20;
    sub_26B291540();
    swift_allocError();
    *v21 = v15;
    v21[1] = v11;
    swift_willThrow();
    (*(v12 + 8))(v9, v6);
    a1 = v22;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  swift_deallocPartialClassInstance();
  return v11;
}

unint64_t sub_26B2914EC()
{
  result = qword_2803F3E08;
  if (!qword_2803F3E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F3E08);
  }

  return result;
}

unint64_t sub_26B291540()
{
  result = qword_2803F3E10;
  if (!qword_2803F3E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F3E10);
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
    JUMPOUT(0x26D6748E0);
  }

  return result;
}

uint64_t sub_26B2915E4(unint64_t *a1, void (*a2)(uint64_t))
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

id SpatialSceneDebugRepresentation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SpatialSceneDebugRepresentation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_26B291708@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v6 = objc_allocWithZone(v2);
  result = SpatialSceneDebugRepresentation.init(from:)(a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

__n128 sub_26B29177C@<Q0>(__int128 *a1@<X8>)
{
  v2 = sub_26B2A6008();
  swift_beginAccess();
  result = *v2;
  *a1 = *v2;
  return result;
}

uint64_t SpatialSceneDebugRepresentation.encodedSceneUUID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for SpatialInspectorDataV2();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v11[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = OBJC_IVAR____TtC26SpatialInspectorFoundation31SpatialSceneDebugRepresentation_internals;
  swift_beginAccess();
  sub_26B290718(v1 + v8, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F3E28, &qword_26B2BCAE0);
  swift_dynamicCast();
  v9 = sub_26B2BB768();
  (*(*(v9 - 8) + 16))(a1, v7, v9);
  return sub_26B2918E0(v7);
}

uint64_t sub_26B2918E0(uint64_t a1)
{
  v2 = type metadata accessor for SpatialInspectorDataV2();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SpatialSceneDebugRepresentation.encodedScene.getter()
{
  v1 = type metadata accessor for SpatialInspectorDataV2();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = OBJC_IVAR____TtC26SpatialInspectorFoundation31SpatialSceneDebugRepresentation_internals;
  swift_beginAccess();
  sub_26B290718(v0 + v6, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F3E28, &qword_26B2BCAE0);
  swift_dynamicCast();
  v7 = &v5[*(v1 + 20)];
  v8 = *v7;
  sub_26B28E8AC(*v7, *(v7 + 1));
  sub_26B2918E0(v5);
  return v8;
}

uint64_t SpatialSceneDebugRepresentation.sceneDebugRepresentation.getter()
{
  v1 = type metadata accessor for SpatialInspectorDataV2();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = OBJC_IVAR____TtC26SpatialInspectorFoundation31SpatialSceneDebugRepresentation_internals;
  swift_beginAccess();
  sub_26B290718(v0 + v6, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F3E28, &qword_26B2BCAE0);
  swift_dynamicCast();
  v7 = &v5[*(v1 + 24)];
  v8 = *v7;
  sub_26B28E8AC(*v7, *(v7 + 1));
  sub_26B2918E0(v5);
  return v8;
}

uint64_t SpatialSceneDebugRepresentation.sceneStatisticsRepresentation.getter()
{
  v1 = type metadata accessor for SpatialInspectorDataV2();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = OBJC_IVAR____TtC26SpatialInspectorFoundation31SpatialSceneDebugRepresentation_internals;
  swift_beginAccess();
  sub_26B290718(v0 + v6, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F3E28, &qword_26B2BCAE0);
  swift_dynamicCast();
  v7 = &v5[*(v1 + 28)];
  v8 = *v7;
  sub_26B28E988(*v7, *(v7 + 1));
  sub_26B2918E0(v5);
  return v8;
}

uint64_t SpatialSceneDebugRepresentation.sceneConfiguration.getter()
{
  v1 = type metadata accessor for SpatialInspectorDataV2();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = OBJC_IVAR____TtC26SpatialInspectorFoundation31SpatialSceneDebugRepresentation_internals;
  swift_beginAccess();
  sub_26B290718(v0 + v6, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F3E28, &qword_26B2BCAE0);
  swift_dynamicCast();
  v7 = &v5[*(v1 + 32)];
  v8 = *v7;
  sub_26B28E988(*v7, *(v7 + 1));
  sub_26B2918E0(v5);
  return v8;
}

__n128 sub_26B291D0C(__n128 *a1)
{
  result = *a1;
  *(v1 + OBJC_IVAR____TtC26SpatialInspectorFoundation31SpatialSceneDebugRepresentation_dataVersion) = *a1;
  return result;
}

uint64_t getEnumTagSinglePayload for SpatialSceneDebugRepresentation.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SpatialSceneDebugRepresentation.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_26B291F14()
{
  result = qword_2803F4E00[0];
  if (!qword_2803F4E00[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2803F4E00);
  }

  return result;
}

unint64_t sub_26B291F6C()
{
  result = qword_2803F4F10;
  if (!qword_2803F4F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F4F10);
  }

  return result;
}

unint64_t sub_26B291FC4()
{
  result = qword_2803F4F18[0];
  if (!qword_2803F4F18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2803F4F18);
  }

  return result;
}

uint64_t SceneConfiguration.sceneSize.getter()
{
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

uint64_t SceneConfiguration.contentOrigin.getter()
{
  result = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  return result;
}

uint64_t SceneConfiguration.bundleID.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

__n128 SceneConfiguration.cameraTransform.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 128);
  v3 = *(v1 + 96);
  *a1 = *(v1 + 80);
  *(a1 + 16) = v3;
  result = *(v1 + 112);
  *(a1 + 32) = result;
  *(a1 + 48) = v2;
  return result;
}

__n128 SceneConfiguration.init(sceneSize:contentOrigin:bundleID:cameraTransform:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3 & 1;
  *(a9 + 32) = a4;
  *(a9 + 40) = a5;
  *(a9 + 48) = a6 & 1;
  v10 = *(a10 + 16);
  *(a9 + 80) = *a10;
  *(a9 + 96) = v10;
  result = *(a10 + 32);
  *(a9 + 112) = result;
  *(a9 + 128) = *(a10 + 48);
  *(a9 + 56) = a7;
  *(a9 + 64) = a8;
  return result;
}

uint64_t sub_26B2920BC()
{
  v1 = 0x7A6953656E656373;
  v2 = 0x4449656C646E7562;
  if (*v0 != 2)
  {
    v2 = 0x72546172656D6163;
  }

  if (*v0)
  {
    v1 = 0x4F746E65746E6F63;
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

uint64_t sub_26B292154@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26B292D9C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26B292188(uint64_t a1)
{
  v2 = sub_26B2924EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B2921C4(uint64_t a1)
{
  v2 = sub_26B2924EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SceneConfiguration.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F3E30, &unk_26B2BCD10);
  v29 = *(v3 - 8);
  v4 = *(v29 + 64);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v20 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = *(v1 + 16);
  v11 = v1[4];
  v27 = v1[5];
  v28 = v11;
  v36 = *(v1 + 48);
  v12 = v1[7];
  v25 = v1[8];
  v26 = v12;
  v13 = *(v1 + 5);
  v22 = *(v1 + 6);
  v23 = v13;
  v14 = v1[15];
  v24 = v1[14];
  v20 = v14;
  v21 = *(v1 + 128);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B2924EC();
  sub_26B2BC258();
  *&v31 = v8;
  *(&v31 + 1) = v9;
  LOBYTE(v32) = v10;
  v37 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F3D88, &qword_26B2BDEC0);
  sub_26B28F8D4(&qword_2803F3D90);
  v16 = v30;
  sub_26B2BC048();
  if (v16)
  {
    return (*(v29 + 8))(v7, v3);
  }

  v18 = v24;
  v19 = v29;
  *&v31 = v28;
  *(&v31 + 1) = v27;
  LOBYTE(v32) = v36;
  v37 = 1;
  sub_26B2BC048();
  LOBYTE(v31) = 2;
  sub_26B2BC038();
  v31 = v23;
  v32 = v22;
  v33 = v18;
  v34 = v20;
  v35 = v21;
  v37 = 3;
  sub_26B292540();
  sub_26B2BC048();
  return (*(v19 + 8))(v7, v3);
}

unint64_t sub_26B2924EC()
{
  result = qword_2803F4FA0[0];
  if (!qword_2803F4FA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2803F4FA0);
  }

  return result;
}

unint64_t sub_26B292540()
{
  result = qword_2803F3E38;
  if (!qword_2803F3E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F3E38);
  }

  return result;
}

uint64_t SceneConfiguration.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F3E40, &qword_26B2BCD20);
  v5 = *(v43 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v43, v7);
  v9 = &v30 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B2924EC();
  sub_26B2BC248();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v41 = a2;
  v42 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F3D88, &qword_26B2BDEC0);
  LOBYTE(v44) = 0;
  sub_26B28F8D4(&qword_2803F3DB0);
  v11 = v43;
  sub_26B2BBF58();
  v12 = v54;
  v40 = v53;
  v74 = v55;
  LOBYTE(v44) = 1;
  sub_26B2BBF58();
  v39 = v12;
  v13 = v53;
  v14 = v54;
  v73 = v55;
  LOBYTE(v53) = 2;
  v15 = sub_26B2BBF48();
  v17 = v16;
  v36 = v14;
  v37 = v13;
  v38 = v15;
  v75 = 3;
  sub_26B292940();
  sub_26B2BBF58();
  (*(v42 + 8))(v9, v11);
  v42 = v68;
  v34 = v69;
  v35 = *(&v68 + 1);
  v32 = v70;
  v33 = *(&v69 + 1);
  v31 = *(&v70 + 1);
  v18 = v71;
  v72 = v71;
  *&v44 = v40;
  *(&v44 + 1) = v39;
  LODWORD(v43) = v74;
  LOBYTE(v45) = v74;
  v20 = v36;
  v19 = v37;
  *&v46 = v37;
  *(&v46 + 1) = v36;
  LOBYTE(v11) = v73;
  LOBYTE(v47) = v73;
  v21 = v38;
  *(&v47 + 1) = v38;
  *&v48 = v17;
  v49 = v68;
  v50 = v69;
  v51 = v70;
  v52 = v71;
  v22 = v69;
  v23 = v70;
  v30 = v17;
  v24 = v41;
  *(v41 + 128) = v71;
  v24[6] = v22;
  v24[7] = v23;
  v25 = v44;
  v26 = v45;
  v27 = v49;
  v24[4] = v48;
  v24[5] = v27;
  v28 = v47;
  v24[2] = v46;
  v24[3] = v28;
  *v24 = v25;
  v24[1] = v26;
  sub_26B292994(&v44, &v53);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v53 = v40;
  v54 = v39;
  v55 = v43;
  v56 = v19;
  v57 = v20;
  v58 = v11;
  v59 = v21;
  v60 = v30;
  v61 = v42;
  v62 = v35;
  v63 = v34;
  v64 = v33;
  v65 = v32;
  v66 = v31;
  v67 = v18;
  return sub_26B2929CC(&v53);
}

unint64_t sub_26B292940()
{
  result = qword_2803F3E48;
  if (!qword_2803F3E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F3E48);
  }

  return result;
}

__n128 __swift_memcpy129_16(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_26B292A60(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 129))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 64);
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

uint64_t sub_26B292ABC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 128) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 129) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 129) = 0;
    }

    if (a2)
    {
      *(result + 64) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SceneConfiguration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SceneConfiguration.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_26B292C98()
{
  result = qword_2803F51B0[0];
  if (!qword_2803F51B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2803F51B0);
  }

  return result;
}

unint64_t sub_26B292CF0()
{
  result = qword_2803F52C0;
  if (!qword_2803F52C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F52C0);
  }

  return result;
}

unint64_t sub_26B292D48()
{
  result = qword_2803F52C8[0];
  if (!qword_2803F52C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2803F52C8);
  }

  return result;
}

uint64_t sub_26B292D9C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7A6953656E656373 && a2 == 0xE900000000000065;
  if (v4 || (sub_26B2BC138() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4F746E65746E6F63 && a2 == 0xED00006E69676972 || (sub_26B2BC138() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000 || (sub_26B2BC138() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x72546172656D6163 && a2 == 0xEF6D726F66736E61)
  {

    return 3;
  }

  else
  {
    v6 = sub_26B2BC138();

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

uint64_t InspectorStatisticsBase.Geometry.meshMemory.getter()
{
  result = *(v0 + 24);
  v2 = *(v0 + 32);
  return result;
}

uint64_t InspectorStatisticsBase.Geometry.init(meshTriangleCount:meshVertexCount:meshCount:meshMemory:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 4) = BYTE4(result) & 1;
  *(a6 + 8) = a2;
  *(a6 + 12) = BYTE4(a2) & 1;
  *(a6 + 16) = a3;
  *(a6 + 20) = BYTE4(a3) & 1;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5 & 1;
  return result;
}

unint64_t sub_26B292FDC()
{
  v1 = 0x747265566873656DLL;
  v2 = 0x6E756F436873656DLL;
  if (*v0 != 2)
  {
    v2 = 0x6F6D654D6873656DLL;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000011;
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

uint64_t sub_26B293070@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26B2993C4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26B293098(uint64_t a1)
{
  v2 = sub_26B293340();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B2930D4(uint64_t a1)
{
  v2 = sub_26B293340();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t InspectorStatisticsBase.Geometry.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F3E50, &qword_26B2BCF00);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = v15 - v7;
  v9 = *v1;
  v10 = *(v1 + 4);
  v20 = v1[2];
  v19 = *(v1 + 12);
  v18 = v1[4];
  v17 = *(v1 + 20);
  v16 = *(v1 + 3);
  v15[1] = *(v1 + 32);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B293340();
  sub_26B2BC258();
  v28 = 0;
  v25 = v10;
  v12 = v21;
  sub_26B2BC058();
  if (v12)
  {
    return (*(v4 + 8))(v8, v3);
  }

  v13 = v17;
  v27 = 1;
  v23 = v19;
  sub_26B2BC058();
  v26 = 2;
  v22 = v13;
  sub_26B2BC058();
  v24 = 3;
  sub_26B2BC068();
  return (*(v4 + 8))(v8, v3);
}

unint64_t sub_26B293340()
{
  result = qword_2803F5350;
  if (!qword_2803F5350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F5350);
  }

  return result;
}

uint64_t InspectorStatisticsBase.Geometry.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F3E58, &qword_26B2BCF08);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v25 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B293340();
  sub_26B2BC248();
  if (!v2)
  {
    v35 = 0;
    v12 = sub_26B2BBF68();
    v13 = v12;
    v32 = BYTE4(v12) & 1;
    v34 = 1;
    v14 = sub_26B2BBF68();
    v15 = v14;
    v30 = BYTE4(v14) & 1;
    v33 = 2;
    v27 = sub_26B2BBF68();
    v29 = BYTE4(v27) & 1;
    v31 = 3;
    v16 = sub_26B2BBF78();
    v19 = v18;
    v20 = *(v6 + 8);
    v26 = v16;
    v20(v10, v5);
    v28 = v19 & 1;
    v21 = v32;
    v22 = v30;
    v23 = v29;
    *a2 = v13;
    *(a2 + 4) = v21;
    *(a2 + 8) = v15;
    *(a2 + 12) = v22;
    v24 = v26;
    *(a2 + 16) = v27;
    *(a2 + 20) = v23;
    *(a2 + 24) = v24;
    *(a2 + 32) = v19 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

__n128 InspectorStatisticsBase.geometry.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 16);
  v3 = *(v1 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  *(a1 + 32) = *(v1 + 48);
  return result;
}

uint64_t InspectorStatisticsBase.Lighting.init(ambientLightCount:directionalLightCount:pointLightCount:spotLightCount:rectangularLightCount:shadowClusterIDs:shadowCasterCount:shadowReceiverCount:castingGroundshadowCount:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, int a10, char a11)
{
  *a9 = result;
  *(a9 + 4) = BYTE4(result) & 1;
  *(a9 + 8) = a2;
  *(a9 + 12) = BYTE4(a2) & 1;
  *(a9 + 16) = a3;
  *(a9 + 20) = BYTE4(a3) & 1;
  *(a9 + 24) = a4;
  *(a9 + 28) = BYTE4(a4) & 1;
  *(a9 + 32) = a5;
  *(a9 + 36) = BYTE4(a5) & 1;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 52) = BYTE4(a7) & 1;
  *(a9 + 56) = a8;
  *(a9 + 60) = BYTE4(a8) & 1;
  *(a9 + 64) = a10;
  *(a9 + 68) = a11 & 1;
  return result;
}

uint64_t sub_26B293790(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v4 = 0x67694C746E696F70;
    if (a1 != 2)
    {
      v4 = 0x6867694C746F7073;
    }

    v5 = 0xD000000000000011;
    if (a1)
    {
      v5 = 0xD000000000000015;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    v1 = 0xD000000000000013;
    if (a1 != 7)
    {
      v1 = 0xD000000000000018;
    }

    if (a1 == 6)
    {
      v1 = 0xD000000000000011;
    }

    v2 = 0xD000000000000010;
    if (a1 == 4)
    {
      v2 = 0xD000000000000015;
    }

    if (a1 <= 5u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_26B2938D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26B29954C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26B293908(uint64_t a1)
{
  v2 = sub_26B293D2C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B293944(uint64_t a1)
{
  v2 = sub_26B293D2C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t InspectorStatisticsBase.Lighting.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F3E60, &qword_26B2BCF10);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v18 - v7;
  v9 = *v1;
  v10 = *(v1 + 4);
  v31 = v1[2];
  v34 = *(v1 + 12);
  v30 = v1[4];
  v29 = *(v1 + 20);
  v28 = v1[6];
  v27 = *(v1 + 28);
  v26 = v1[8];
  v25 = *(v1 + 36);
  v11 = *(v1 + 5);
  v23 = v1[12];
  v24 = v11;
  v22 = *(v1 + 52);
  v21 = v1[14];
  v20 = *(v1 + 60);
  v19 = v1[16];
  HIDWORD(v18) = *(v1 + 68);
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B293D2C();
  sub_26B2BC258();
  LOBYTE(v33) = 0;
  v35 = v10;
  v13 = v32;
  sub_26B2BC058();
  if (!v13)
  {
    v14 = v29;
    v15 = v27;
    v16 = v25;
    LOBYTE(v33) = 1;
    v35 = v34;
    sub_26B2BC058();
    LOBYTE(v33) = 2;
    v35 = v14;
    sub_26B2BC058();
    LOBYTE(v33) = 3;
    v35 = v15;
    sub_26B2BC058();
    LOBYTE(v33) = 4;
    v35 = v16;
    sub_26B2BC058();
    v33 = v24;
    v35 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F3E68, &qword_26B2BCF18);
    sub_26B293D80();
    sub_26B2BC048();
    LOBYTE(v33) = 6;
    v35 = v22;
    sub_26B2BC058();
    LOBYTE(v33) = 7;
    v35 = v20;
    sub_26B2BC058();
    LOBYTE(v33) = 8;
    v35 = BYTE4(v18);
    sub_26B2BC058();
  }

  return (*(v4 + 8))(v8, v3);
}

unint64_t sub_26B293D2C()
{
  result = qword_2803F5358;
  if (!qword_2803F5358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F5358);
  }

  return result;
}

unint64_t sub_26B293D80()
{
  result = qword_2803F3E70;
  if (!qword_2803F3E70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803F3E68, &qword_26B2BCF18);
    sub_26B294430(&qword_2803F3E78, sub_26B293E3C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F3E70);
  }

  return result;
}

unint64_t sub_26B293E3C()
{
  result = qword_2803F3E88;
  if (!qword_2803F3E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F3E88);
  }

  return result;
}

uint64_t InspectorStatisticsBase.Lighting.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F3E90, &qword_26B2BCF28);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v23 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B293D2C();
  sub_26B2BC248();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v41) = 0;
  v12 = sub_26B2BBF68();
  v64 = BYTE4(v12) & 1;
  LOBYTE(v41) = 1;
  v13 = sub_26B2BBF68();
  v63 = BYTE4(v13) & 1;
  LOBYTE(v41) = 2;
  v36 = sub_26B2BBF68();
  v62 = BYTE4(v36) & 1;
  LOBYTE(v41) = 3;
  v35 = sub_26B2BBF68();
  v61 = BYTE4(v35) & 1;
  LOBYTE(v41) = 4;
  v34 = sub_26B2BBF68();
  v60 = BYTE4(v34) & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F3E68, &qword_26B2BCF18);
  LOBYTE(v37) = 5;
  sub_26B294374();
  sub_26B2BBF58();
  v33 = v41;
  LOBYTE(v41) = 6;
  v32 = sub_26B2BBF68();
  v59 = BYTE4(v32) & 1;
  LOBYTE(v41) = 7;
  v31 = sub_26B2BBF68();
  v58 = BYTE4(v31) & 1;
  v65 = 8;
  v14 = sub_26B2BBF68();
  (*(v6 + 8))(v10, v5);
  v57 = BYTE4(v14) & 1;
  v30 = v12;
  LODWORD(v37) = v12;
  v29 = v64;
  BYTE4(v37) = v64;
  v28 = v13;
  DWORD2(v37) = v13;
  v27 = v63;
  BYTE12(v37) = v63;
  LODWORD(v38) = v36;
  v26 = v62;
  BYTE4(v38) = v62;
  DWORD2(v38) = v35;
  v25 = v61;
  BYTE12(v38) = v61;
  LODWORD(v39) = v34;
  v24 = v60;
  BYTE4(v39) = v60;
  v15 = v33;
  *(&v39 + 1) = v33;
  v16 = v32;
  *v40 = v32;
  HIDWORD(v23) = v59;
  v40[4] = v59;
  v17 = v31;
  *&v40[8] = v31;
  LOBYTE(v13) = v58;
  v40[12] = v58;
  *&v40[16] = v14;
  v40[20] = BYTE4(v14) & 1;
  v18 = v37;
  v19 = v38;
  v20 = v39;
  v21 = *v40;
  *(a2 + 61) = *&v40[13];
  *(a2 + 32) = v20;
  *(a2 + 48) = v21;
  *a2 = v18;
  *(a2 + 16) = v19;
  sub_26B2944FC(&v37, &v41);
  __swift_destroy_boxed_opaque_existential_1(a1);
  LODWORD(v41) = v30;
  BYTE4(v41) = v29;
  v42 = v28;
  v43 = v27;
  v44 = v36;
  v45 = v26;
  v46 = v35;
  v47 = v25;
  v48 = v34;
  v49 = v24;
  v50 = v15;
  v51 = v16;
  v52 = BYTE4(v23);
  v53 = v17;
  v54 = v13;
  v55 = v14;
  v56 = BYTE4(v14) & 1;
  return sub_26B294534(&v41);
}

unint64_t sub_26B294374()
{
  result = qword_2803F3E98;
  if (!qword_2803F3E98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803F3E68, &qword_26B2BCF18);
    sub_26B294430(&qword_2803F3EA0, sub_26B2944A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F3E98);
  }

  return result;
}

uint64_t sub_26B294430(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803F3E80, &qword_26B2BCF20);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26B2944A8()
{
  result = qword_2803F3EA8;
  if (!qword_2803F3EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F3EA8);
  }

  return result;
}

uint64_t InspectorStatisticsBase.lighting.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  v3 = *(v1 + 104);
  v9 = *(v1 + 88);
  v10[0] = v3;
  *(v10 + 13) = *(v1 + 117);
  v4 = *(v10 + 13);
  v8[0] = *(v1 + 56);
  v5 = v8[0];
  v8[1] = v2;
  *(a1 + 32) = v9;
  *(a1 + 48) = v3;
  *(a1 + 61) = v4;
  *a1 = v5;
  *(a1 + 16) = v2;
  return sub_26B2944FC(v8, v7);
}

unint64_t sub_26B294610()
{
  v1 = *(v0 + 8);
  if (!v1)
  {
    goto LABEL_4;
  }

  v2 = *(v1 + 16);
  if (v2 >> 31)
  {
    __break(1u);
LABEL_4:
    v2 = 0;
  }

  return v2 | ((v1 == 0) << 32);
}

uint64_t InspectorStatisticsBase.Material.init(materialAssignmentCount:materialUseCounts:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 4) = BYTE4(result) & 1;
  *(a3 + 8) = a2;
  return result;
}

unint64_t sub_26B294680()
{
  if (*v0)
  {
    result = 0xD000000000000011;
  }

  else
  {
    result = 0xD000000000000017;
  }

  *v0;
  return result;
}

uint64_t sub_26B2946BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 0xD000000000000017 && 0x800000026B2C41F0 == a2;
  if (v5 || (sub_26B2BC138() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000026B2C4210 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_26B2BC138();

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

uint64_t sub_26B2947A0(uint64_t a1)
{
  v2 = sub_26B2949F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B2947DC(uint64_t a1)
{
  v2 = sub_26B2949F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t InspectorStatisticsBase.Material.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F3EB0, &qword_26B2BCF30);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v14 - v7;
  v9 = *v1;
  v10 = *(v1 + 4);
  v15 = *(v1 + 1);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B2949F0();
  sub_26B2BC258();
  v20 = 0;
  v18 = v10;
  v12 = v16;
  sub_26B2BC058();
  if (!v12)
  {
    v17 = v15;
    v19 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F3EB8, &qword_26B2BCF38);
    sub_26B294C4C(&qword_2803F3EC0);
    sub_26B2BC048();
  }

  return (*(v4 + 8))(v8, v3);
}

unint64_t sub_26B2949F0()
{
  result = qword_2803F5360;
  if (!qword_2803F5360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F5360);
  }

  return result;
}

uint64_t InspectorStatisticsBase.Material.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F3EC8, &qword_26B2BCF40);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = v15 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B2949F0();
  sub_26B2BC248();
  if (!v2)
  {
    v17 = 0;
    v12 = sub_26B2BBF68();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F3EB8, &qword_26B2BCF38);
    v16 = 1;
    sub_26B294C4C(&qword_2803F3ED0);
    sub_26B2BBF58();
    (*(v6 + 8))(v10, v5);
    v13 = v15[1];
    *a2 = v12;
    *(a2 + 4) = BYTE4(v12) & 1;
    *(a2 + 8) = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26B294C4C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803F3EB8, &qword_26B2BCF38);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t InspectorStatisticsBase.material.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 132);
  v3 = *(v1 + 136);
  *a1 = *(v1 + 128);
  *(a1 + 4) = v2;
  *(a1 + 8) = v3;
}

uint64_t InspectorStatisticsBase.Texture.TextureData.assetID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t InspectorStatisticsBase.Texture.TextureData.init(assetID:memorySize:width:height:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, int a5@<W4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 28) = a5;
  return result;
}

uint64_t sub_26B294D60()
{
  v1 = 0x44497465737361;
  v2 = 0x6874646977;
  if (*v0 != 2)
  {
    v2 = 0x746867696568;
  }

  if (*v0)
  {
    v1 = 0x695379726F6D656DLL;
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

uint64_t sub_26B294DD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26B299840(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26B294E00(uint64_t a1)
{
  v2 = sub_26B295060();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B294E3C(uint64_t a1)
{
  v2 = sub_26B295060();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t InspectorStatisticsBase.Texture.TextureData.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F3ED8, &qword_26B2BCF48);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = v14 - v7;
  v10 = *v1;
  v9 = v1[1];
  v15 = v1[2];
  LODWORD(v7) = *(v1 + 7);
  v17 = *(v1 + 6);
  v14[3] = v7;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B295060();
  sub_26B2BC258();
  v21 = 0;
  v12 = v16;
  sub_26B2BC078();
  if (v12)
  {
    return (*(v4 + 8))(v8, v3);
  }

  v20 = 1;
  sub_26B2BC0E8();
  v19 = 2;
  sub_26B2BC0C8();
  v18 = 3;
  sub_26B2BC0C8();
  return (*(v4 + 8))(v8, v3);
}

unint64_t sub_26B295060()
{
  result = qword_2803F5368;
  if (!qword_2803F5368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F5368);
  }

  return result;
}

uint64_t InspectorStatisticsBase.Texture.TextureData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F3EE0, &qword_26B2BCF50);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v18 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B295060();
  sub_26B2BC248();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v24 = 0;
  v12 = sub_26B2BBF88();
  v14 = v13;
  v15 = v12;
  v23 = 1;
  v19 = sub_26B2BBFF8();
  v22 = 2;
  v20 = sub_26B2BBFD8();
  v21 = 3;
  v17 = sub_26B2BBFD8();
  (*(v6 + 8))(v10, v5);
  *a2 = v15;
  *(a2 + 8) = v14;
  *(a2 + 16) = v19;
  *(a2 + 24) = v20;
  *(a2 + 28) = v17;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t InspectorStatisticsBase.Texture.memory.getter()
{
  result = *(v0 + 8);
  v2 = *(v0 + 16);
  return result;
}

uint64_t InspectorStatisticsBase.Texture.init(count:memory:textures:entityTextures:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 4) = BYTE4(result) & 1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3 & 1;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

uint64_t sub_26B29537C()
{
  v1 = 0x746E756F63;
  v2 = 0x7365727574786574;
  if (*v0 != 2)
  {
    v2 = 0x6554797469746E65;
  }

  if (*v0)
  {
    v1 = 0x79726F6D656DLL;
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

uint64_t sub_26B2953FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26B2999A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26B295424(uint64_t a1)
{
  v2 = sub_26B29574C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B295460(uint64_t a1)
{
  v2 = sub_26B29574C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t InspectorStatisticsBase.Texture.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F3EE8, &qword_26B2BCF58);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v18 - v7;
  v9 = *v1;
  v10 = *(v1 + 4);
  v11 = *(v1 + 1);
  v24 = *(v1 + 16);
  v12 = *(v1 + 4);
  v20 = *(v1 + 3);
  v21 = v11;
  v19 = v12;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B29574C();
  sub_26B2BC258();
  LOBYTE(v23) = 0;
  v25 = v10;
  v14 = v22;
  sub_26B2BC058();
  if (!v14)
  {
    v16 = v19;
    v17 = v20;
    LOBYTE(v23) = 1;
    sub_26B2BC068();
    v23 = v17;
    v25 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F3EF0, &qword_26B2BCF60);
    sub_26B2957A0(&qword_2803F3EF8, sub_26B295824);
    sub_26B2BC048();
    v23 = v16;
    v25 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F3F08, &qword_26B2BCF68);
    sub_26B295878();
    sub_26B2BC048();
  }

  return (*(v4 + 8))(v8, v3);
}

unint64_t sub_26B29574C()
{
  result = qword_2803F5370;
  if (!qword_2803F5370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F5370);
  }

  return result;
}

uint64_t sub_26B2957A0(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803F3EF0, &qword_26B2BCF60);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26B295824()
{
  result = qword_2803F3F00;
  if (!qword_2803F3F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F3F00);
  }

  return result;
}

unint64_t sub_26B295878()
{
  result = qword_2803F3F10;
  if (!qword_2803F3F10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803F3F08, &qword_26B2BCF68);
    sub_26B293E3C();
    sub_26B295D0C(&qword_2803F3F18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F3F10);
  }

  return result;
}

uint64_t InspectorStatisticsBase.Texture.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F3F28, &qword_26B2BCF78);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v18 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B29574C();
  sub_26B2BC248();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v21) = 0;
  v12 = sub_26B2BBF68();
  LOBYTE(v21) = 1;
  v13 = sub_26B2BBF78();
  v19 = v14;
  v18 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F3EF0, &qword_26B2BCF60);
  v20 = 2;
  sub_26B2957A0(&qword_2803F3F30, sub_26B295C08);
  sub_26B2BBF58();
  v15 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F3F08, &qword_26B2BCF68);
  v20 = 3;
  sub_26B295C5C();
  sub_26B2BBF58();
  (*(v6 + 8))(v10, v5);
  v16 = v21;
  *a2 = v12;
  *(a2 + 4) = BYTE4(v12) & 1;
  *(a2 + 8) = v18;
  *(a2 + 16) = v19 & 1;
  *(a2 + 24) = v15;
  *(a2 + 32) = v16;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_26B295C08()
{
  result = qword_2803F3F38;
  if (!qword_2803F3F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F3F38);
  }

  return result;
}

unint64_t sub_26B295C5C()
{
  result = qword_2803F3F40;
  if (!qword_2803F3F40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803F3F08, &qword_26B2BCF68);
    sub_26B2944A8();
    sub_26B295D0C(&qword_2803F3F48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F3F40);
  }

  return result;
}

uint64_t sub_26B295D0C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803F3F20, &qword_26B2BCF70);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t InspectorStatisticsBase.texture.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 148);
  v3 = *(v1 + 152);
  v4 = *(v1 + 160);
  v6 = *(v1 + 168);
  v5 = *(v1 + 176);
  *a1 = *(v1 + 144);
  *(a1 + 4) = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v6;
  *(a1 + 32) = v5;
}

__n128 InspectorStatisticsBase.__allocating_init(geometry:lighting:material:texture:)(uint64_t a1, uint64_t a2, int *a3, int *a4)
{
  v8 = swift_allocObject();
  v9 = *a3;
  v10 = *(a3 + 4);
  v11 = *(a3 + 1);
  v12 = *a4;
  v13 = *(a4 + 4);
  v14 = *(a4 + 1);
  v15 = *(a4 + 16);
  v16 = *(a1 + 16);
  *(v8 + 16) = *a1;
  *(v8 + 32) = v16;
  *(v8 + 48) = *(a1 + 32);
  v17 = *(a2 + 16);
  *(v8 + 56) = *a2;
  v18 = *(a2 + 32);
  v19 = *(a2 + 48);
  *(v8 + 117) = *(a2 + 61);
  *(v8 + 104) = v19;
  *(v8 + 88) = v18;
  *(v8 + 72) = v17;
  *(v8 + 128) = v9;
  *(v8 + 132) = v10;
  *(v8 + 136) = v11;
  *(v8 + 144) = v12;
  *(v8 + 148) = v13;
  *(v8 + 152) = v14;
  *(v8 + 160) = v15;
  result = *(a4 + 6);
  *(v8 + 168) = result;
  return result;
}

uint64_t InspectorStatisticsBase.init(geometry:lighting:material:texture:)(uint64_t a1, uint64_t a2, int *a3, int *a4)
{
  v5 = *a3;
  v6 = *(a3 + 4);
  v7 = *(a3 + 1);
  v8 = *a4;
  v9 = *(a4 + 4);
  v10 = *(a4 + 1);
  v11 = *(a4 + 16);
  v12 = *(a1 + 16);
  *(v4 + 16) = *a1;
  *(v4 + 32) = v12;
  *(v4 + 48) = *(a1 + 32);
  v13 = *(a2 + 16);
  *(v4 + 56) = *a2;
  v14 = *(a2 + 32);
  v15 = *(a2 + 48);
  *(v4 + 117) = *(a2 + 61);
  *(v4 + 104) = v15;
  *(v4 + 88) = v14;
  *(v4 + 72) = v13;
  *(v4 + 128) = v5;
  *(v4 + 132) = v6;
  *(v4 + 136) = v7;
  *(v4 + 144) = v8;
  *(v4 + 148) = v9;
  *(v4 + 152) = v10;
  *(v4 + 160) = v11;
  *(v4 + 168) = *(a4 + 6);
  return v4;
}

uint64_t sub_26B295F38()
{
  v1 = 0x797274656D6F6567;
  v2 = 0x6C6169726574616DLL;
  if (*v0 != 2)
  {
    v2 = 0x65727574786574;
  }

  if (*v0)
  {
    v1 = 0x676E69746867696CLL;
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

uint64_t sub_26B295FB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26B299B08(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26B295FDC(uint64_t a1)
{
  v2 = sub_26B296384();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B296018(uint64_t a1)
{
  v2 = sub_26B296384();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26B296060(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F3F50, &qword_26B2BCF80);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v26 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B296384();
  sub_26B2BC258();
  v12 = *(v3 + 32);
  v43 = *(v3 + 16);
  v44 = v12;
  v45 = *(v3 + 48);
  v42 = 0;
  sub_26B2963D8();
  sub_26B2BC0B8();
  if (!v2)
  {
    v13 = *(v3 + 72);
    v14 = *(v3 + 104);
    v40[2] = *(v3 + 88);
    *v41 = v14;
    *&v41[13] = *(v3 + 117);
    v40[0] = *(v3 + 56);
    v40[1] = v13;
    v15 = *(v3 + 72);
    v16 = *(v3 + 104);
    v38 = *(v3 + 88);
    v39[0] = v16;
    *(v39 + 13) = *(v3 + 117);
    v36 = *(v3 + 56);
    v37 = v15;
    v35 = 1;
    sub_26B2944FC(v40, v33);
    sub_26B29642C();
    sub_26B2BC0B8();
    v33[2] = v38;
    *v34 = v39[0];
    *&v34[13] = *(v39 + 13);
    v33[0] = v36;
    v33[1] = v37;
    sub_26B294534(v33);
    v17 = *(v3 + 132);
    v18 = *(v3 + 136);
    v26 = *(v3 + 128);
    v27 = v17;
    v28 = v18;
    v32 = 2;
    sub_26B296480();

    sub_26B2BC0B8();

    v19 = *(v3 + 144);
    v20 = *(v3 + 148);
    v21 = *(v3 + 152);
    v22 = *(v3 + 160);
    v23 = *(v3 + 168);
    v24 = *(v3 + 176);
    v26 = v19;
    v27 = v20;
    v28 = v21;
    v29 = v22;
    v30 = v23;
    v31 = v24;
    v32 = 3;
    sub_26B2964D4();

    sub_26B2BC0B8();
  }

  return (*(v6 + 8))(v10, v5);
}

unint64_t sub_26B296384()
{
  result = qword_2803F5378[0];
  if (!qword_2803F5378[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2803F5378);
  }

  return result;
}

unint64_t sub_26B2963D8()
{
  result = qword_2803F3F58;
  if (!qword_2803F3F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F3F58);
  }

  return result;
}

unint64_t sub_26B29642C()
{
  result = qword_2803F3F60;
  if (!qword_2803F3F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F3F60);
  }

  return result;
}

unint64_t sub_26B296480()
{
  result = qword_2803F3F68;
  if (!qword_2803F3F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F3F68);
  }

  return result;
}

unint64_t sub_26B2964D4()
{
  result = qword_2803F3F70;
  if (!qword_2803F3F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F3F70);
  }

  return result;
}

uint64_t InspectorStatisticsBase.__allocating_init(from:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  InspectorStatisticsBase.init(from:)(a1);
  return v2;
}

uint64_t InspectorStatisticsBase.init(from:)(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F3F78, &qword_26B2BCF88);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v20 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B296384();
  sub_26B2BC248();
  if (v2)
  {
    type metadata accessor for InspectorStatisticsBase();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v33 = 0;
    sub_26B2968FC();
    sub_26B2BBFC8();
    v11 = *&v29[5];
    *(v1 + 16) = *&v29[3];
    *(v1 + 32) = v11;
    *(v1 + 48) = v30;
    v32 = 1;
    sub_26B296950();
    sub_26B2BBFC8();
    v13 = v26;
    *(v1 + 72) = v27;
    v14 = *v29;
    *(v1 + 88) = v28;
    *(v1 + 104) = v14;
    *(v1 + 117) = *(&v29[1] + 5);
    *(v1 + 56) = v13;
    v31 = 2;
    sub_26B2969A4();
    sub_26B2BBFC8();
    v15 = v22;
    v16 = v23;
    *(v1 + 128) = v21;
    *(v1 + 132) = v15;
    *(v1 + 136) = v16;
    v31 = 3;
    sub_26B2969F8();
    sub_26B2BBFC8();
    (*(v5 + 8))(v9, v4);
    v17 = v22;
    v18 = v23;
    v19 = v24;
    *(v1 + 144) = v21;
    *(v1 + 148) = v17;
    *(v1 + 152) = v18;
    *(v1 + 160) = v19;
    *(v1 + 168) = v25;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

unint64_t sub_26B2968FC()
{
  result = qword_2803F3F80;
  if (!qword_2803F3F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F3F80);
  }

  return result;
}

unint64_t sub_26B296950()
{
  result = qword_2803F3F88;
  if (!qword_2803F3F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F3F88);
  }

  return result;
}

unint64_t sub_26B2969A4()
{
  result = qword_2803F3F90;
  if (!qword_2803F3F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F3F90);
  }

  return result;
}

unint64_t sub_26B2969F8()
{
  result = qword_2803F3F98;
  if (!qword_2803F3F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F3F98);
  }

  return result;
}

uint64_t sub_26B296A4C@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 128))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_26B296AE0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449797469746E65 && a2 == 0xE800000000000000;
  if (v4 || (sub_26B2BC138() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x61646E6563736564 && a2 == 0xEF746E756F43746ELL)
  {

    return 1;
  }

  else
  {
    v6 = sub_26B2BC138();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_26B296BBC(char a1)
{
  if (a1)
  {
    return 0x61646E6563736564;
  }

  else
  {
    return 0x4449797469746E65;
  }
}

uint64_t sub_26B296C00()
{
  if (*v0)
  {
    result = 0x61646E6563736564;
  }

  else
  {
    result = 0x4449797469746E65;
  }

  *v0;
  return result;
}

uint64_t sub_26B296C48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4449797469746E65 && a2 == 0xE800000000000000;
  if (v6 || (sub_26B2BC138() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x61646E6563736564 && a2 == 0xEF746E756F43746ELL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_26B2BC138();

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

uint64_t sub_26B296D2C(uint64_t a1)
{
  v2 = sub_26B298180();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B296D68(uint64_t a1)
{
  v2 = sub_26B298180();

  return MEMORY[0x2821FE720](a1, v2);
}

__n128 InspectorEntityStatistics.__allocating_init(entityID:descendantCount:geometry:lighting:material:texture:)(void *a1, int a2, uint64_t a3, __int128 *a4, int *a5, int *a6)
{
  v12 = swift_allocObject();
  v13 = *(a3 + 16);
  *(v12 + 16) = *a3;
  *(v12 + 32) = v13;
  v14 = *a4;
  *(v12 + 72) = a4[1];
  v15 = a4[3];
  *(v12 + 88) = a4[2];
  *(v12 + 104) = v15;
  v16 = *a5;
  v17 = *(a5 + 4);
  v18 = *(a5 + 1);
  v19 = *a6;
  v20 = *(a6 + 4);
  v21 = *(a6 + 1);
  v22 = *(a6 + 16);
  *(v12 + 184) = *a1;
  *(v12 + 192) = a2;
  *(v12 + 48) = *(a3 + 32);
  *(v12 + 117) = *(a4 + 61);
  *(v12 + 56) = v14;
  *(v12 + 128) = v16;
  *(v12 + 132) = v17;
  *(v12 + 136) = v18;
  *(v12 + 144) = v19;
  *(v12 + 148) = v20;
  *(v12 + 152) = v21;
  *(v12 + 160) = v22;
  result = *(a6 + 6);
  *(v12 + 168) = result;
  return result;
}

uint64_t InspectorEntityStatistics.init(entityID:descendantCount:geometry:lighting:material:texture:)(void *a1, int a2, uint64_t a3, uint64_t a4, int *a5, int *a6)
{
  v7 = *a5;
  v8 = *(a5 + 4);
  v9 = *(a5 + 1);
  v10 = *a6;
  v11 = *(a6 + 4);
  v12 = *(a6 + 1);
  v13 = *(a6 + 16);
  *(v6 + 184) = *a1;
  *(v6 + 192) = a2;
  v14 = *(a3 + 16);
  *(v6 + 16) = *a3;
  *(v6 + 32) = v14;
  *(v6 + 48) = *(a3 + 32);
  v15 = *(a4 + 16);
  *(v6 + 56) = *a4;
  v16 = *(a4 + 32);
  v17 = *(a4 + 48);
  *(v6 + 117) = *(a4 + 61);
  *(v6 + 104) = v17;
  *(v6 + 88) = v16;
  *(v6 + 72) = v15;
  *(v6 + 128) = v7;
  *(v6 + 132) = v8;
  *(v6 + 136) = v9;
  *(v6 + 144) = v10;
  *(v6 + 148) = v11;
  *(v6 + 152) = v12;
  *(v6 + 160) = v13;
  *(v6 + 168) = *(a6 + 6);
  return v6;
}

uint64_t InspectorEntityStatistics.__allocating_init(from:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  InspectorEntityStatistics.init(from:)(a1);
  return v2;
}

uint64_t InspectorEntityStatistics.init(from:)(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F3FA0, &qword_26B2BCF90);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v13[-1] - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B298180();
  sub_26B2BC248();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for InspectorEntityStatistics();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v14 = 0;
    sub_26B2944A8();
    sub_26B2BBFC8();
    *(v1 + 184) = v13[0];
    LOBYTE(v13[0]) = 1;
    *(v1 + 192) = sub_26B2BBFD8();
    sub_26B290718(a1, v13);
    InspectorStatisticsBase.init(from:)(v13);
    (*(v5 + 8))(v9, v4);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v1;
}

uint64_t sub_26B297150(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F3FB0, &qword_26B2BCF98);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v13[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B298180();
  sub_26B2BC258();
  v14 = *(v1 + 184);
  v13[15] = 0;
  sub_26B293E3C();
  sub_26B2BC0B8();
  if (v2)
  {
    return (*(v5 + 8))(v9, v4);
  }

  v11 = *(v1 + 192);
  v13[14] = 1;
  sub_26B2BC0C8();
  sub_26B296060(a1);
  return (*(v5 + 8))(v9, v4);
}

uint64_t _s26SpatialInspectorFoundation0B14StatisticsBaseCfd_0()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 104);
  v7[2] = *(v0 + 88);
  v8[0] = v2;
  *(v8 + 13) = *(v0 + 117);
  v7[0] = *(v0 + 56);
  v7[1] = v1;
  sub_26B294534(v7);
  v3 = *(v0 + 136);

  v4 = *(v0 + 168);
  v5 = *(v0 + 176);

  return v0;
}

uint64_t sub_26B2973A0()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 104);
  v7[2] = *(v0 + 88);
  v8[0] = v2;
  *(v8 + 13) = *(v0 + 117);
  v7[0] = *(v0 + 56);
  v7[1] = v1;
  sub_26B294534(v7);
  v3 = *(v0 + 136);

  v4 = *(v0 + 168);
  v5 = *(v0 + 176);

  return swift_deallocClassInstance();
}

uint64_t sub_26B297430(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F43797469746E65 && a2 == 0xEB00000000746E75;
  if (v4 || (sub_26B2BC138() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000026B2C3FC0 == a2)
  {

    return 1;
  }

  else
  {
    v6 = sub_26B2BC138();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_26B297544(char a1)
{
  sub_26B2BC1E8();
  MEMORY[0x26D6742C0](a1 & 1);
  return sub_26B2BC238();
}

uint64_t sub_26B29758C(char a1)
{
  if (a1)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x6F43797469746E65;
  }
}

unint64_t sub_26B2975D0()
{
  if (*v0)
  {
    result = 0xD000000000000010;
  }

  else
  {
    result = 0x6F43797469746E65;
  }

  *v0;
  return result;
}

uint64_t sub_26B297618@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6F43797469746E65 && a2 == 0xEB00000000746E75;
  if (v6 || (sub_26B2BC138() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000026B2C3FC0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_26B2BC138();

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

uint64_t sub_26B297700(uint64_t a1)
{
  v2 = sub_26B298284();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B29773C(uint64_t a1)
{
  v2 = sub_26B298284();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t InspectorSceneStatistics.__allocating_init(entityCount:entityStatistics:)(int a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t InspectorSceneStatistics.init(entityCount:entityStatistics:)(int a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t static InspectorSceneStatistics.from(json:)()
{
  v0 = sub_26B2BB7C8();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0, v2);
  v3 = sub_26B2BB6C8();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_26B2BB6B8();
  sub_26B298450(&qword_2803F3FB8, type metadata accessor for InspectorSceneStatistics);
  sub_26B2BB6A8();

  return v7;
}

uint64_t sub_26B297A50()
{
  v0 = sub_26B2BB7C8();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0, v2);
  v3 = sub_26B2BB6F8();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_26B2BB6E8();
  type metadata accessor for InspectorSceneStatistics();
  sub_26B298450(&qword_2803F3FC8, type metadata accessor for InspectorSceneStatistics);
  v6 = sub_26B2BB6D8();

  return v6;
}

uint64_t InspectorSceneStatistics.__allocating_init(from:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  InspectorSceneStatistics.init(from:)(a1);
  return v2;
}

uint64_t InspectorSceneStatistics.init(from:)(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F3FD0, &qword_26B2BCFA8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B298284();
  sub_26B2BC248();
  if (v2)
  {
    type metadata accessor for InspectorSceneStatistics();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v14 = 0;
    *(v1 + 16) = sub_26B2BBFD8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F3FE0, &qword_26B2BCFB0);
    v13 = 1;
    sub_26B2982D8();
    sub_26B2BBFC8();
    (*(v5 + 8))(v9, v4);
    *(v1 + 24) = v12[1];
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

uint64_t sub_26B297F18(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F3FF8, &qword_26B2BCFB8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v14[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B298284();
  sub_26B2BC258();
  v12 = *(v3 + 16);
  v16 = 0;
  sub_26B2BC0C8();
  if (!v2)
  {
    v15 = *(v3 + 24);
    v14[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F3FE0, &qword_26B2BCFB0);
    sub_26B298394();
    sub_26B2BC0B8();
  }

  return (*(v6 + 8))(v10, v5);
}

uint64_t InspectorSceneStatistics.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t InspectorSceneStatistics.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_26B298100@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 112))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_26B298180()
{
  result = qword_2803F3FA8;
  if (!qword_2803F3FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F3FA8);
  }

  return result;
}

uint64_t sub_26B29821C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F3FC0, &qword_26B2BCFA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26B298284()
{
  result = qword_2803F3FD8;
  if (!qword_2803F3FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F3FD8);
  }

  return result;
}

unint64_t sub_26B2982D8()
{
  result = qword_2803F3FE8;
  if (!qword_2803F3FE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803F3FE0, &qword_26B2BCFB0);
    sub_26B2944A8();
    sub_26B298450(&qword_2803F3FF0, type metadata accessor for InspectorEntityStatistics);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F3FE8);
  }

  return result;
}

unint64_t sub_26B298394()
{
  result = qword_2803F4000;
  if (!qword_2803F4000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803F3FE0, &qword_26B2BCFB0);
    sub_26B293E3C();
    sub_26B298450(&qword_2803F4008, type metadata accessor for InspectorEntityStatistics);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F4000);
  }

  return result;
}

uint64_t sub_26B298450(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26B298498()
{
  result = qword_2803F4010;
  if (!qword_2803F4010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F4010);
  }

  return result;
}

unint64_t sub_26B2984F0()
{
  result = qword_2803F4018;
  if (!qword_2803F4018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F4018);
  }

  return result;
}

unint64_t sub_26B298548()
{
  result = qword_2803F4020;
  if (!qword_2803F4020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F4020);
  }

  return result;
}

unint64_t sub_26B2985A0()
{
  result = qword_2803F4028;
  if (!qword_2803F4028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F4028);
  }

  return result;
}

unint64_t sub_26B2985F8()
{
  result = qword_2803F4030;
  if (!qword_2803F4030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F4030);
  }

  return result;
}

unint64_t sub_26B298650()
{
  result = qword_2803F4038;
  if (!qword_2803F4038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F4038);
  }

  return result;
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

uint64_t sub_26B298744(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 33))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26B298764(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
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

  *(result + 33) = v3;
  return result;
}

__n128 __swift_memcpy69_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 61) = *(a2 + 61);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_26B2987C8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 69))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 40);
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

uint64_t sub_26B298824(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 68) = 0;
    *(result + 64) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 69) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 69) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
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

uint64_t sub_26B2988AC(uint64_t a1, unsigned int a2)
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

uint64_t sub_26B298908(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_26B29897C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_26B2989D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_26B298A50(uint64_t a1, int a2)
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

uint64_t sub_26B298A98(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for InspectorStatisticsBase.Lighting.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for InspectorStatisticsBase.Lighting.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_26B298D98()
{
  result = qword_2803F6080[0];
  if (!qword_2803F6080[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2803F6080);
  }

  return result;
}

unint64_t sub_26B298DF0()
{
  result = qword_2803F6290[0];
  if (!qword_2803F6290[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2803F6290);
  }

  return result;
}

unint64_t sub_26B298E48()
{
  result = qword_2803F64A0[0];
  if (!qword_2803F64A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2803F64A0);
  }

  return result;
}

unint64_t sub_26B298EA0()
{
  result = qword_2803F66B0[0];
  if (!qword_2803F66B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2803F66B0);
  }

  return result;
}

unint64_t sub_26B298EF8()
{
  result = qword_2803F68C0[0];
  if (!qword_2803F68C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2803F68C0);
  }

  return result;
}

unint64_t sub_26B298F50()
{
  result = qword_2803F6AD0[0];
  if (!qword_2803F6AD0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2803F6AD0);
  }

  return result;
}

unint64_t sub_26B298FA8()
{
  result = qword_2803F6BE0;
  if (!qword_2803F6BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F6BE0);
  }

  return result;
}

unint64_t sub_26B299000()
{
  result = qword_2803F6BE8[0];
  if (!qword_2803F6BE8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2803F6BE8);
  }

  return result;
}

unint64_t sub_26B299058()
{
  result = qword_2803F6C70;
  if (!qword_2803F6C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F6C70);
  }

  return result;
}

unint64_t sub_26B2990B0()
{
  result = qword_2803F6C78;
  if (!qword_2803F6C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F6C78);
  }

  return result;
}

unint64_t sub_26B299108()
{
  result = qword_2803F6D00;
  if (!qword_2803F6D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F6D00);
  }

  return result;
}

unint64_t sub_26B299160()
{
  result = qword_2803F6D08[0];
  if (!qword_2803F6D08[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2803F6D08);
  }

  return result;
}

unint64_t sub_26B2991B8()
{
  result = qword_2803F6D90;
  if (!qword_2803F6D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F6D90);
  }

  return result;
}

unint64_t sub_26B299210()
{
  result = qword_2803F6D98[0];
  if (!qword_2803F6D98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2803F6D98);
  }

  return result;
}

unint64_t sub_26B299268()
{
  result = qword_2803F6E20;
  if (!qword_2803F6E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F6E20);
  }

  return result;
}

unint64_t sub_26B2992C0()
{
  result = qword_2803F6E28[0];
  if (!qword_2803F6E28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2803F6E28);
  }

  return result;
}

unint64_t sub_26B299318()
{
  result = qword_2803F6EB0;
  if (!qword_2803F6EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F6EB0);
  }

  return result;
}

unint64_t sub_26B299370()
{
  result = qword_2803F6EB8[0];
  if (!qword_2803F6EB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2803F6EB8);
  }

  return result;
}

uint64_t sub_26B2993C4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x800000026B2C40F0 == a2 || (sub_26B2BC138() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x747265566873656DLL && a2 == 0xEF746E756F437865 || (sub_26B2BC138() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E756F436873656DLL && a2 == 0xE900000000000074 || (sub_26B2BC138() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F6D654D6873656DLL && a2 == 0xEA00000000007972)
  {

    return 3;
  }

  else
  {
    v5 = sub_26B2BC138();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_26B29954C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x800000026B2C4110 == a2 || (sub_26B2BC138() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x800000026B2C4130 == a2 || (sub_26B2BC138() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x67694C746E696F70 && a2 == 0xEF746E756F437468 || (sub_26B2BC138() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6867694C746F7073 && a2 == 0xEE00746E756F4374 || (sub_26B2BC138() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000015 && 0x800000026B2C4150 == a2 || (sub_26B2BC138() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x800000026B2C4170 == a2 || (sub_26B2BC138() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x800000026B2C4190 == a2 || (sub_26B2BC138() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000013 && 0x800000026B2C41B0 == a2 || (sub_26B2BC138() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000018 && 0x800000026B2C41D0 == a2)
  {

    return 8;
  }

  else
  {
    v5 = sub_26B2BC138();

    if (v5)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_26B299840(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x44497465737361 && a2 == 0xE700000000000000;
  if (v4 || (sub_26B2BC138() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x695379726F6D656DLL && a2 == 0xEA0000000000657ALL || (sub_26B2BC138() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6874646977 && a2 == 0xE500000000000000 || (sub_26B2BC138() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x746867696568 && a2 == 0xE600000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_26B2BC138();

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

uint64_t sub_26B2999A4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E756F63 && a2 == 0xE500000000000000;
  if (v4 || (sub_26B2BC138() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x79726F6D656DLL && a2 == 0xE600000000000000 || (sub_26B2BC138() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7365727574786574 && a2 == 0xE800000000000000 || (sub_26B2BC138() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6554797469746E65 && a2 == 0xEE00736572757478)
  {

    return 3;
  }

  else
  {
    v6 = sub_26B2BC138();

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

uint64_t sub_26B299B08(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x797274656D6F6567 && a2 == 0xE800000000000000;
  if (v4 || (sub_26B2BC138() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E69746867696CLL && a2 == 0xE800000000000000 || (sub_26B2BC138() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C6169726574616DLL && a2 == 0xE800000000000000 || (sub_26B2BC138() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65727574786574 && a2 == 0xE700000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_26B2BC138();

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

uint64_t static OS_os_log.spatialInspectorSubsystem.getter()
{
  swift_beginAccess();
  v0 = qword_2803F4040;

  return v0;
}

uint64_t static OS_os_log.spatialInspectorSubsystem.setter(uint64_t a1, char *a2)
{
  swift_beginAccess();
  qword_2803F4040 = a1;
  off_2803F4048 = a2;
}

uint64_t *sub_26B299DF8()
{
  if (qword_2803F6F40 != -1)
  {
    swift_once();
  }

  return &qword_2803FC270;
}

uint64_t *sub_26B299E88()
{
  if (qword_2803F6F48 != -1)
  {
    swift_once();
  }

  return &qword_2803FC278;
}

uint64_t *sub_26B299F24()
{
  if (qword_2803F6F50 != -1)
  {
    swift_once();
  }

  return &qword_2803FC280;
}

uint64_t *sub_26B299FB4()
{
  if (qword_2803F6F58 != -1)
  {
    swift_once();
  }

  return &qword_2803FC288;
}

uint64_t *sub_26B29A04C()
{
  if (qword_2803F6F60 != -1)
  {
    swift_once();
  }

  return &qword_2803FC290;
}

uint64_t *sub_26B29A0E0()
{
  if (qword_2803F6F68 != -1)
  {
    swift_once();
  }

  return &qword_2803FC298;
}

uint64_t *sub_26B29A17C()
{
  if (qword_2803F6F70 != -1)
  {
    swift_once();
  }

  return &qword_2803FC2A0;
}

uint64_t sub_26B29A208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_26B29AA08();
  swift_beginAccess();

  result = sub_26B2BBD18();
  *a4 = result;
  return result;
}

uint64_t *sub_26B29A298()
{
  if (qword_2803F6F78 != -1)
  {
    swift_once();
  }

  return &qword_2803FC2A8;
}

id sub_26B29A30C(void *a1, void **a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v3 = *a2;
  }

  return v3;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_26B29A6FC(uint64_t a1, uint64_t *a2, void *a3, id *a4)
{
  v7 = sub_26B2BB7C8();
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v8 = *a4;
  return sub_26B2BB7D8();
}

uint64_t sub_26B29A7AC(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = sub_26B2BB7C8();

  return __swift_project_value_buffer(v3, a2);
}

uint64_t sub_26B29A824@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_26B2BB7C8();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t getEnumTagSinglePayload for Log(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for Log(_WORD *result, int a2, int a3)
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

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

unint64_t sub_26B29AA08()
{
  result = qword_2803F4050;
  if (!qword_2803F4050)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2803F4050);
  }

  return result;
}

float sub_26B29AA54(double a1)
{
  v18 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F42D0, &qword_26B2BE900);
  v1 = MEMORY[0x277D839F8];
  if (swift_dynamicCast())
  {
    sub_26B2907E4(&v15, v13);
    v2 = v14;
    v3 = __swift_project_boxed_opaque_existential_1(v13, v14);
    v4 = *(v2 - 8);
    v5 = *(v4 + 64);
    MEMORY[0x28223BE20](v3, v3);
    v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v4 + 16))(v7);
    if (sub_26B2BBD98() < 65)
    {
      v9 = sub_26B2BBDA8();
      v10 = sub_26B2BBD88();
      (*(v4 + 8))(v7, v2);
      if (v9)
      {
        v8 = v10;
      }

      else
      {
        v8 = v10;
      }
    }

    else
    {
      sub_26B2A3B44();
      sub_26B2A3B98();
      sub_26B2BB818();
      (*(v4 + 8))(v7, v2);
      v8 = *&v12[1];
    }
  }

  else
  {
    v16 = v1;
    v17 = sub_26B2A1E74();
    *&v15 = v18;
    sub_26B2907E4(&v15, v13);
    v8 = *__swift_project_boxed_opaque_existential_1(v13, v14);
  }

  __swift_destroy_boxed_opaque_existential_1(v13);
  return v8;
}

float sub_26B29AC84(int a1)
{
  v13 = MEMORY[0x277D84CC0];
  v14 = sub_26B2A3E38();
  LODWORD(v12) = a1;
  sub_26B2907E4(&v12, v10);
  v2 = v11;
  v3 = __swift_project_boxed_opaque_existential_1(v10, v11);
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v3);
  v7 = (v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v4 + 16))(v7);
  if (sub_26B2BBDA8())
  {
    v8 = sub_26B2BBD88();
  }

  else
  {
    v8 = *v7;
  }

  (*(v4 + 8))(v7, v2);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v8;
}

float sub_26B29ADDC(__int16 a1)
{
  v14 = MEMORY[0x277D84C58];
  v15 = sub_26B2A3DE4();
  LOWORD(v13) = a1;
  sub_26B2907E4(&v13, v11);
  v2 = v12;
  v3 = __swift_project_boxed_opaque_existential_1(v11, v12);
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v3);
  v7 = (v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v4 + 16))(v7);
  if (sub_26B2BBDA8())
  {
    v9 = sub_26B2BBD88();
  }

  else
  {
    LOWORD(v8) = *v7;
    v9 = v8;
  }

  (*(v4 + 8))(v7, v2);
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v9;
}

float sub_26B29AF34(char a1)
{
  v14 = MEMORY[0x277D84B78];
  v15 = sub_26B2A3D90();
  LOBYTE(v13) = a1;
  sub_26B2907E4(&v13, v11);
  v2 = v12;
  v3 = __swift_project_boxed_opaque_existential_1(v11, v12);
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v3);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7);
  if (sub_26B2BBDA8())
  {
    v9 = sub_26B2BBD88();
  }

  else
  {
    LOBYTE(v8) = *v7;
    v9 = v8;
  }

  (*(v4 + 8))(v7, v2);
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v9;
}

float sub_26B29B08C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v15 = a2;
  v16 = a3();
  *&v14 = a1;
  sub_26B2907E4(&v14, v12);
  v4 = v13;
  v5 = __swift_project_boxed_opaque_existential_1(v12, v13);
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v5);
  v9 = (v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v6 + 16))(v9);
  if (sub_26B2BBDA8())
  {
    v10 = sub_26B2BBD88();
  }

  else
  {
    v10 = *v9;
  }

  (*(v6 + 8))(v9, v4);
  __swift_destroy_boxed_opaque_existential_1(v12);
  return v10;
}

float sub_26B29B1E0(int a1)
{
  v13 = MEMORY[0x277D849A8];
  v14 = sub_26B2A3CE8();
  LODWORD(v12) = a1;
  sub_26B2907E4(&v12, v10);
  v2 = v11;
  v3 = __swift_project_boxed_opaque_existential_1(v10, v11);
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v3);
  v7 = (v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v4 + 16))(v7);
  if (sub_26B2BBDA8())
  {
    v8 = sub_26B2BBD88();
  }

  else
  {
    v8 = *v7;
  }

  (*(v4 + 8))(v7, v2);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v8;
}

float sub_26B29B338(__int16 a1)
{
  v13 = MEMORY[0x277D84958];
  v14 = sub_26B2A3C94();
  LOWORD(v12) = a1;
  sub_26B2907E4(&v12, v10);
  v2 = v11;
  v3 = __swift_project_boxed_opaque_existential_1(v10, v11);
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v3);
  v7 = (v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v4 + 16))(v7);
  if (sub_26B2BBDA8())
  {
    v8 = sub_26B2BBD88();
  }

  else
  {
    v8 = *v7;
  }

  (*(v4 + 8))(v7, v2);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v8;
}

float sub_26B29B490(char a1)
{
  v13 = MEMORY[0x277D84900];
  v14 = sub_26B2A3C40();
  LOBYTE(v12) = a1;
  sub_26B2907E4(&v12, v10);
  v2 = v11;
  v3 = __swift_project_boxed_opaque_existential_1(v10, v11);
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v3);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7);
  if (sub_26B2BBDA8())
  {
    v8 = sub_26B2BBD88();
  }

  else
  {
    v8 = *v7;
  }

  (*(v4 + 8))(v7, v2);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v8;
}

float sub_26B29B5E8(__n128 a1)
{
  v23 = a1.n128_u16[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F42D0, &qword_26B2BE900);
  v1 = MEMORY[0x277D84DC8];
  if (swift_dynamicCast())
  {
    sub_26B2907E4(&v20, v18);
    v2 = v19;
    v3 = __swift_project_boxed_opaque_existential_1(v18, v19);
    v4 = *(v2 - 8);
    v5 = *(v4 + 64);
    MEMORY[0x28223BE20](v3, v3);
    v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v4 + 16))(v7);
    if (sub_26B2BBD98() < 65)
    {
      v14 = sub_26B2BBDA8();
      v15 = sub_26B2BBD88();
      (*(v4 + 8))(v7, v2);
      if (v14)
      {
        _S8 = v15;
      }

      else
      {
        _S8 = v15;
      }
    }

    else
    {
      sub_26B2A3B44();
      sub_26B2A3B98();
      sub_26B2BB818();
      (*(v4 + 8))(v7, v2);
      _S8 = *&v17[1];
    }
  }

  else
  {
    v21 = v1;
    v22 = sub_26B2A3AF0();
    LOWORD(v20) = v23;
    sub_26B2907E4(&v20, v18);
    _H0 = *__swift_project_boxed_opaque_existential_1(v18, v19);
    __asm { FCVT            S8, H0 }
  }

  __swift_destroy_boxed_opaque_existential_1(v18);
  return _S8;
}

id InspectorPropertyValue.id.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = *(v1 + 32);
  *(a1 + 32) = v6;
  return sub_26B29B834(v2, v3, v4, v5, v6);
}

id sub_26B29B834(id result, unint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  switch(a5)
  {
    case 4:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 16:
    case 17:
    case 18:
    case 21:
    case 25:
    case 26:
    case 27:
      goto LABEL_3;
    case 14:

      result = result;
      break;
    case 15:

      result = sub_26B28E8AC(result, a2);
      break;
    case 22:
    case 23:
    case 24:

LABEL_3:

      break;
    default:
      return result;
  }

  return result;
}

uint64_t InspectorPropertyValue.init(anyValue:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v220 = a2;
  v219.i64[0] = sub_26B2BB768();
  *&v218 = *(v219.i64[0] - 8);
  v3 = *(v218 + 64);
  v5 = MEMORY[0x28223BE20](v219.i64[0], v4);
  v217.n128_u64[0] = v210.n128_u64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v210 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F4058, &qword_26B2BDE40);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v14 = &v210 - v13;
  v15 = sub_26B2BB688();
  *&v216 = *(v15 - 1);
  v16 = *(v216 + 64);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v210 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_26B2BB708();
  *&v215 = *(v20 - 8);
  v21 = *(v215 + 64);
  v23 = MEMORY[0x28223BE20](v20, v22);
  v25 = (&v210 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = MEMORY[0x28223BE20](v23, v26);
  v29 = &v210 - v28;
  MEMORY[0x28223BE20](v27, v30);
  v32 = &v210 - v31;
  sub_26B29EFCC(a1, &v232);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F4060, &qword_26B2BDE48);
  if (swift_dynamicCast())
  {
    sub_26B2907E4(&v225, v222);
    v33 = v223;
    v34 = v224;
    v35 = __swift_project_boxed_opaque_existential_1(v222, v223);
    v36 = *(*(v33 - 8) + 64);
    MEMORY[0x28223BE20](v35, v35);
    (*(v38 + 16))(&v210 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
    sub_26B2A1F1C();
    v39 = *(v34 + 8);
    sub_26B2BBEB8();
    __swift_destroy_boxed_opaque_existential_1(a1);
    v40 = v221;
    __swift_destroy_boxed_opaque_existential_1(v222);
    v41 = 0;
    v42 = 0;
LABEL_22:
    result = __swift_destroy_boxed_opaque_existential_1(&v232);
    v72 = v220;
    *v220 = v40;
    v72[1] = v41;
    v72[2] = 0;
    v72[3] = 0;
    *(v72 + 32) = v42;
    return result;
  }

  v214 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F4068, &qword_26B2BDE50);
  if (!swift_dynamicCast())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F4070, &qword_26B2BDE58);
    if (swift_dynamicCast())
    {
      sub_26B2907E4(&v225, v222);
      v64 = v223;
      v65 = __swift_project_boxed_opaque_existential_1(v222, v223);
      v66 = *(*(v64 - 8) + 64);
      MEMORY[0x28223BE20](v65, v65);
      (*(v68 + 16))(&v210 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0));
      sub_26B2A1E74();
      sub_26B2BB808();
      __swift_destroy_boxed_opaque_existential_1(v214);
      v40 = v221;
      __swift_destroy_boxed_opaque_existential_1(v222);
      v41 = 0;
      v42 = 2;
      goto LABEL_22;
    }

    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1(v214);
      v41 = 0;
      v40 = v225.n128_u8[0];
      v42 = 3;
      goto LABEL_22;
    }

    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1(v214);
      v41 = v225.n128_u64[1];
      v40 = v225.n128_u64[0];
      v42 = 4;
      goto LABEL_22;
    }

    if (!swift_dynamicCast())
    {
      if (!swift_dynamicCast())
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F4078, &qword_26B2BDE60);
        if (swift_dynamicCast())
        {
          __swift_destroy_boxed_opaque_existential_1(v214);
          v41 = 0;
          v40 = v225.n128_u64[0];
          v42 = 5;
          goto LABEL_22;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F4080, &qword_26B2BDE68);
        if (swift_dynamicCast())
        {
          v79.n128_u32[0] = v225.n128_u32[0];
          v219 = v79;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F41A0, &qword_26B2BDF90);
          v80 = swift_allocObject();
          *(v80 + 16) = xmmword_26B2BDCE0;
          *(v80 + 32) = sub_26B29B5E8(v219);
          v81 = v219;
          v81.n128_u16[0] = v219.u16[1];
          v82 = sub_26B29B5E8(v81);
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F4088, &qword_26B2BDE70);
          if (!swift_dynamicCast())
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F4090, &qword_26B2BDE78);
            if (swift_dynamicCast())
            {
              v219 = v225;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F41A0, &qword_26B2BDF90);
              v80 = swift_allocObject();
              *(v80 + 16) = xmmword_26B2BDCE0;
              v83 = v219.i64[0];
              v84 = MEMORY[0x277D83B88];
              v85 = sub_26B2A3BEC;
LABEL_45:
              v86 = v85;
              *(v80 + 32) = sub_26B29B08C(v83, v84, v85);
              v82 = sub_26B29B08C(v219.i64[1], v84, v86);
              goto LABEL_52;
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F4098, &qword_26B2BDE80);
            if (swift_dynamicCast())
            {
              v87.n128_u8[4] = v225.n128_u8[1];
              v87.n128_u8[0] = v225.n128_u8[0];
              v219 = v87;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F41A0, &qword_26B2BDF90);
              v80 = swift_allocObject();
              *(v80 + 16) = xmmword_26B2BDCE0;
              *(v80 + 32) = sub_26B29B490(v219.i8[0]);
              v82 = sub_26B29B490(v219.i8[4]);
              goto LABEL_52;
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F40A0, &qword_26B2BDE88);
            if (swift_dynamicCast())
            {
              v88.n128_u16[2] = v225.n128_u16[1];
              v88.n128_u16[0] = v225.n128_u16[0];
              v219 = v88;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F41A0, &qword_26B2BDF90);
              v80 = swift_allocObject();
              *(v80 + 16) = xmmword_26B2BDCE0;
              *(v80 + 32) = sub_26B29B338(v219.i16[0]);
              v82 = sub_26B29B338(v219.i16[2]);
              goto LABEL_52;
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F40A8, &qword_26B2BDE90);
            if (swift_dynamicCast())
            {
              v89.n128_u64[0] = v225.n128_u64[0];
              v219 = v89;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F41A0, &qword_26B2BDF90);
              v80 = swift_allocObject();
              *(v80 + 16) = xmmword_26B2BDCE0;
              *(v80 + 32) = sub_26B29B1E0(v219.i32[0]);
              v82 = sub_26B29B1E0(v219.i32[1]);
              goto LABEL_52;
            }

            goto LABEL_54;
          }

          v219 = v225;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F41A0, &qword_26B2BDF90);
          v80 = swift_allocObject();
          *(v80 + 16) = xmmword_26B2BDCE0;
          *(v80 + 32) = sub_26B29AA54(*v219.i64);
          v82 = sub_26B29AA54(*&v219.i64[1]);
        }

LABEL_52:
        *(v80 + 36) = v82;
        sub_26B2A1D94(v80);
        v91 = v90;
        swift_setDeallocating();
        swift_deallocClassInstance();
        v40 = v91;
        __swift_destroy_boxed_opaque_existential_1(v214);
        v41 = 0;
        v42 = 5;
        goto LABEL_22;
      }

      v40 = MEMORY[0x26D673A60](v225.n128_u64[0], v225.n128_u64[1], v226.n128_u64[0], v226.n128_u64[1]);
      v41 = v75;

      v76 = v214;
LABEL_36:
      __swift_destroy_boxed_opaque_existential_1(v76);
      v42 = 4;
      goto LABEL_22;
    }

    v73 = v225.n128_u64[0];
    if (v226.n128_u8[0])
    {
      v74 = HIDWORD(v225.n128_u64[0]);
      v25 = v214;
      if (!HIDWORD(v225.n128_u64[0]))
      {
        if ((v225.n128_u32[0] & 0xFFFFF800) == 0xD800)
        {
          __break(1u);
          goto LABEL_72;
        }

        v74 = (v225.n128_u64[0] >> 16);
        if (v225.n128_u64[0] >> 16 <= 0x10)
        {
          if (v225.n128_u64[0] <= 0x7F)
          {
            v77 = v225.n128_u32[0] + 1;
LABEL_34:
            v222[0] = (v77 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v77) >> 3))));
LABEL_35:
            v40 = sub_26B2BB9C8();
            v41 = v78;
            v76 = v25;
            goto LABEL_36;
          }

LABEL_65:
          v95 = (v73 & 0x3F) << 8;
          if (v73 >= 0x800)
          {
            v116 = (v95 | (v73 >> 6) & 0x3F) << 8;
            if (!v74)
            {
              v77 = (v73 >> 12) + v116 + 8487393;
              goto LABEL_68;
            }

            v96 = (v73 >> 18) + ((v116 | (v73 >> 12) & 0x3F) << 8);
            v97 = -2122219023;
          }

          else
          {
            v96 = (v73 >> 6) + v95;
            v97 = 33217;
          }

          v77 = v96 + v97;
LABEL_68:
          v25 = v214;
          goto LABEL_34;
        }

LABEL_64:
        __break(1u);
        goto LABEL_65;
      }
    }

    else
    {
      v74 = v231 + 8;
      v25 = v214;
      if (v225.n128_u64[0])
      {
        goto LABEL_35;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_64;
  }

  sub_26B2907E4(&v225, v222);
  v25 = v223;
  v43 = v224;
  v44 = __swift_project_boxed_opaque_existential_1(v222, v223);
  v19 = *(v25 - 1);
  v45 = *(v19 + 8);
  MEMORY[0x28223BE20](v44, v44);
  v20 = (v45 + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = &v210 - v20;
  (*(v19 + 2))(&v210 - v20);
  v32 = *(v43 + 8);
  if ((sub_26B2BBDA8() & 1) == 0)
  {
    goto LABEL_6;
  }

  v46 = *(*(v32 + 3) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v217.n128_u64[0] = &v210;
  v48 = (*(*(AssociatedTypeWitness - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](AssociatedTypeWitness, v49);
  v219.i64[0] = v19;
  swift_getAssociatedConformanceWitness();
  v50 = sub_26B2BC178();
  *&v218 = &v210;
  MEMORY[0x28223BE20](v50, v51);
  v15 = &v210 - v20;
  v19 = v219.i64[0];
  sub_26B2BC118();
  v52 = *(*(v32 + 4) + 8);
  v9 = sub_26B2BB918();
  (*(v19 + 1))(&v210 - v20, v25);
  v29 = v218;
  if (v9)
  {
LABEL_6:
    if (sub_26B2BBD98() > 63)
    {
      v221 = -1;
      v53 = sub_26B2BBDA8();
      v54 = sub_26B2BBD98();
      if (v53)
      {
        if (v54 <= 64)
        {
          v56 = *(*(v32 + 3) + 16);
          v57 = swift_getAssociatedTypeWitness();
          v219.i64[0] = &v210;
          v58 = (*(*(v57 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
          MEMORY[0x28223BE20](v57, v59);
          swift_getAssociatedConformanceWitness();
          v60 = sub_26B2BC178();
          MEMORY[0x28223BE20](v60, v61);
          sub_26B2BC118();
          v62 = *(*(v32 + 4) + 8);
          v63 = sub_26B2BB8F8();
          (*(v19 + 1))(&v210 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0), v25);
          if ((v63 & 1) == 0)
          {
            goto LABEL_21;
          }

          goto LABEL_20;
        }
      }

      else if (v54 < 65)
      {
LABEL_20:
        sub_26B2BBD88();
        goto LABEL_21;
      }

      MEMORY[0x28223BE20](v54, v55);
      sub_26B2A1EC8();
      sub_26B2BBD78();
      v69 = *(*(v32 + 4) + 8);
      v70 = sub_26B2BB908();
      (*(v19 + 1))(&v210 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0), v25);
      if (v70)
      {
        __break(1u);
        goto LABEL_20;
      }
    }

LABEL_21:
    v40 = sub_26B2BBD88();
    (*(v19 + 1))(v14, v25);
    __swift_destroy_boxed_opaque_existential_1(v214);
    __swift_destroy_boxed_opaque_existential_1(v222);
    v41 = 0;
    v42 = 1;
    goto LABEL_22;
  }

  __break(1u);
LABEL_54:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F40B0, &qword_26B2BDE98);
  if (swift_dynamicCast())
  {
    v219 = v225;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F41A0, &qword_26B2BDF90);
    v80 = swift_allocObject();
    *(v80 + 16) = xmmword_26B2BDCE0;
    v83 = v219.i64[0];
    v84 = MEMORY[0x277D84A28];
    v85 = sub_26B2A3D3C;
    goto LABEL_45;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F40B8, &qword_26B2BDEA0);
  if (swift_dynamicCast())
  {
    v92.n128_u8[4] = v225.n128_u8[1];
    v92.n128_u8[0] = v225.n128_u8[0];
    v219 = v92;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F41A0, &qword_26B2BDF90);
    v80 = swift_allocObject();
    *(v80 + 16) = xmmword_26B2BDCE0;
    *(v80 + 32) = sub_26B29AF34(v219.i8[0]);
    v82 = sub_26B29AF34(v219.i8[4]);
    goto LABEL_52;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F40C0, &qword_26B2BDEA8);
  if (swift_dynamicCast())
  {
    v93.n128_u16[2] = v225.n128_u16[1];
    v93.n128_u16[0] = v225.n128_u16[0];
    v219 = v93;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F41A0, &qword_26B2BDF90);
    v80 = swift_allocObject();
    *(v80 + 16) = xmmword_26B2BDCE0;
    *(v80 + 32) = sub_26B29ADDC(v219.i16[0]);
    v82 = sub_26B29ADDC(v219.i16[2]);
    goto LABEL_52;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F40C8, &qword_26B2BDEB0);
  if (swift_dynamicCast())
  {
    v94.n128_u64[0] = v225.n128_u64[0];
    v219 = v94;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F41A0, &qword_26B2BDF90);
    v80 = swift_allocObject();
    *(v80 + 16) = xmmword_26B2BDCE0;
    *(v80 + 32) = sub_26B29AC84(v219.i32[0]);
    v82 = sub_26B29AC84(v219.i32[1]);
    goto LABEL_52;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F40D0, &qword_26B2BDEB8);
  if (swift_dynamicCast())
  {
    v219 = v225;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F41A0, &qword_26B2BDF90);
    v80 = swift_allocObject();
    *(v80 + 16) = xmmword_26B2BDCE0;
    v83 = v219.i64[0];
    v84 = MEMORY[0x277D84D38];
    v85 = sub_26B2A1EC8;
    goto LABEL_45;
  }

LABEL_72:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F3D88, &qword_26B2BDEC0);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(v214);
    v41 = v225.n128_u64[1];
    v40 = v225.n128_u64[0];
    v42 = 6;
    goto LABEL_22;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F40D8, &qword_26B2BDEC8);
  if (swift_dynamicCast())
  {
    v98.n128_u64[0] = v225.n128_u64[0];
    v219 = v98;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F41A0, &qword_26B2BDF90);
    v99 = swift_allocObject();
    *(v99 + 16) = xmmword_26B2BDCD0;
    *(v99 + 32) = sub_26B29B5E8(v219);
    v100 = v219;
    v100.n128_u16[0] = v219.u16[1];
    *(v99 + 36) = sub_26B29B5E8(v100);
    v101 = v219;
    v101.n128_u16[0] = v219.u16[2];
    v102 = sub_26B29B5E8(v101);
LABEL_78:
    *(v99 + 40) = v102;
    sub_26B2A1DCC(v99);
    v219 = v104;
    swift_setDeallocating();
LABEL_79:
    swift_deallocClassInstance();
    v41 = v219.u64[1];
    v40 = v219.i64[0];
    __swift_destroy_boxed_opaque_existential_1(v214);
    v42 = 6;
    goto LABEL_22;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F40E0, &qword_26B2BDED0);
  if (swift_dynamicCast())
  {
    v219 = v225;
    v103 = v226.n128_f64[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F41A0, &qword_26B2BDF90);
    v99 = swift_allocObject();
    *(v99 + 16) = xmmword_26B2BDCD0;
    *(v99 + 32) = sub_26B29AA54(*v219.i64);
    *(v99 + 36) = sub_26B29AA54(*&v219.i64[1]);
    v102 = sub_26B29AA54(v103);
    goto LABEL_78;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F40E8, &qword_26B2BDED8);
  if (swift_dynamicCast())
  {
    v219 = v225;
    v105 = v226.n128_u64[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F41A0, &qword_26B2BDF90);
    v106 = swift_allocObject();
    *(v106 + 16) = xmmword_26B2BDCD0;
    v107 = v219.i64[0];
    v108 = MEMORY[0x277D83B88];
    v109 = sub_26B2A3BEC;
LABEL_82:
    v110 = v109;
    *(v106 + 32) = sub_26B29B08C(v107, v108, v109);
    *(v106 + 36) = sub_26B29B08C(v219.i64[1], v108, v110);
    *(v106 + 40) = sub_26B29B08C(v105, v108, v110);
    sub_26B2A1DCC(v106);
    v219 = v111;
    swift_setDeallocating();
    goto LABEL_79;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F40F0, &qword_26B2BDEE0);
  if (swift_dynamicCast())
  {
    v112.i32[0] = v225.n128_u32[0];
    v219 = vmovl_u8(v112);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F41A0, &qword_26B2BDF90);
    v99 = swift_allocObject();
    *(v99 + 16) = xmmword_26B2BDCD0;
    *(v99 + 32) = sub_26B29B490(v219.i8[0]);
    *(v99 + 36) = sub_26B29B490(v219.i8[2]);
    v102 = sub_26B29B490(v219.i8[4]);
    goto LABEL_78;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F40F8, &qword_26B2BDEE8);
  if (swift_dynamicCast())
  {
    v113.n128_u64[0] = v225.n128_u64[0];
    v219 = v113;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F41A0, &qword_26B2BDF90);
    v99 = swift_allocObject();
    *(v99 + 16) = xmmword_26B2BDCD0;
    *(v99 + 32) = sub_26B29B338(v219.i16[0]);
    *(v99 + 36) = sub_26B29B338(v219.i16[1]);
    v102 = sub_26B29B338(v219.i16[2]);
    goto LABEL_78;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F4100, &qword_26B2BDEF0);
  if (swift_dynamicCast())
  {
    v219 = v225;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F41A0, &qword_26B2BDF90);
    v99 = swift_allocObject();
    *(v99 + 16) = xmmword_26B2BDCD0;
    *(v99 + 32) = sub_26B29B1E0(v219.i32[0]);
    *(v99 + 36) = sub_26B29B1E0(v219.i32[1]);
    v102 = sub_26B29B1E0(v219.i32[2]);
    goto LABEL_78;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F4108, &qword_26B2BDEF8);
  if (swift_dynamicCast())
  {
    v219 = v225;
    v105 = v226.n128_u64[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F41A0, &qword_26B2BDF90);
    v106 = swift_allocObject();
    *(v106 + 16) = xmmword_26B2BDCD0;
    v107 = v219.i64[0];
    v108 = MEMORY[0x277D84A28];
    v109 = sub_26B2A3D3C;
    goto LABEL_82;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F4110, &qword_26B2BDF00);
  if (swift_dynamicCast())
  {
    v114.i32[0] = v225.n128_u32[0];
    v219 = vmovl_u8(v114);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F41A0, &qword_26B2BDF90);
    v99 = swift_allocObject();
    *(v99 + 16) = xmmword_26B2BDCD0;
    *(v99 + 32) = sub_26B29AF34(v219.i8[0]);
    *(v99 + 36) = sub_26B29AF34(v219.i8[2]);
    v102 = sub_26B29AF34(v219.i8[4]);
    goto LABEL_78;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F4118, &qword_26B2BDF08);
  if (swift_dynamicCast())
  {
    v115.n128_u64[0] = v225.n128_u64[0];
    v219 = v115;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F41A0, &qword_26B2BDF90);
    v99 = swift_allocObject();
    *(v99 + 16) = xmmword_26B2BDCD0;
    *(v99 + 32) = sub_26B29ADDC(v219.i16[0]);
    *(v99 + 36) = sub_26B29ADDC(v219.i16[1]);
    v102 = sub_26B29ADDC(v219.i16[2]);
    goto LABEL_78;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F4120, &qword_26B2BDF10);
  if (swift_dynamicCast())
  {
    v219 = v225;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F41A0, &qword_26B2BDF90);
    v99 = swift_allocObject();
    *(v99 + 16) = xmmword_26B2BDCD0;
    *(v99 + 32) = sub_26B29AC84(v219.i32[0]);
    *(v99 + 36) = sub_26B29AC84(v219.i32[1]);
    v102 = sub_26B29AC84(v219.i32[2]);
    goto LABEL_78;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F4128, &qword_26B2BDF18);
  if (swift_dynamicCast())
  {
    v219 = v225;
    v105 = v226.n128_u64[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F41A0, &qword_26B2BDF90);
    v106 = swift_allocObject();
    *(v106 + 16) = xmmword_26B2BDCD0;
    v107 = v219.i64[0];
    v108 = MEMORY[0x277D84D38];
    v109 = sub_26B2A1EC8;
    goto LABEL_82;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F4130, &qword_26B2BDF20);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(v214);
    v41 = v225.n128_u64[1];
    v40 = v225.n128_u64[0];
    v42 = 7;
    goto LABEL_22;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F4138, &qword_26B2BDF28);
  if (swift_dynamicCast())
  {
    v117.n128_u64[0] = v225.n128_u64[0];
    v219 = v117;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F41A0, &qword_26B2BDF90);
    v42 = 7;
    v118 = swift_allocObject();
    *(v118 + 16) = xmmword_26B2BDCC0;
    *(v118 + 32) = sub_26B29B5E8(v219);
    v119 = v219;
    v119.n128_u16[0] = v219.u16[1];
    *(v118 + 36) = sub_26B29B5E8(v119);
    v120 = v219;
    v120.n128_u16[0] = v219.u16[2];
    *(v118 + 40) = sub_26B29B5E8(v120);
    v121 = v219;
    v121.n128_u16[0] = v219.u16[3];
    *(v118 + 44) = sub_26B29B5E8(v121);
    sub_26B2A1E18(v118);
    v219 = v122;
    swift_setDeallocating();
    swift_deallocClassInstance();
    v41 = v219.u64[1];
    v40 = v219.i64[0];
    __swift_destroy_boxed_opaque_existential_1(v214);
    goto LABEL_22;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F4140, &qword_26B2BDF30);
  if (swift_dynamicCast())
  {
    v219 = v226;
    v218 = v225;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F41A0, &qword_26B2BDF90);
    v42 = 7;
    v123 = swift_allocObject();
    *(v123 + 16) = xmmword_26B2BDCC0;
    *(v123 + 32) = sub_26B29AA54(*&v218);
    *(v123 + 36) = sub_26B29AA54(*(&v218 + 1));
    *(v123 + 40) = sub_26B29AA54(*v219.i64);
    v124 = sub_26B29AA54(*&v219.i64[1]);
LABEL_125:
    *(v123 + 44) = v124;
    sub_26B2A1E18(v123);
    v219 = v135;
    swift_setDeallocating();
    swift_deallocClassInstance();
    v41 = v219.u64[1];
    v40 = v219.i64[0];
    __swift_destroy_boxed_opaque_existential_1(v214);
    goto LABEL_22;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F4148, &qword_26B2BDF38);
  if (swift_dynamicCast())
  {
    v219 = v226;
    v218 = v225;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F41A0, &qword_26B2BDF90);
    v125 = swift_allocObject();
    *(v125 + 16) = xmmword_26B2BDCC0;
    v126 = v218;
    v127 = MEMORY[0x277D83B88];
    v128 = sub_26B2A3BEC;
LABEL_109:
    v129 = v128;
    *(v125 + 32) = sub_26B29B08C(v126, v127, v128);
    *(v125 + 36) = sub_26B29B08C(*(&v218 + 1), v127, v129);
    *(v125 + 40) = sub_26B29B08C(v219.i64[0], v127, v129);
    *(v125 + 44) = sub_26B29B08C(v219.i64[1], v127, v129);
    sub_26B2A1E18(v125);
    v219 = v130;
    swift_setDeallocating();
    swift_deallocClassInstance();
    v41 = v219.u64[1];
    v40 = v219.i64[0];
    __swift_destroy_boxed_opaque_existential_1(v214);
    v42 = 7;
    goto LABEL_22;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F4150, &qword_26B2BDF40);
  if (swift_dynamicCast())
  {
    v131.i32[0] = v225.n128_u32[0];
    v219 = vmovl_u8(v131);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F41A0, &qword_26B2BDF90);
    v42 = 7;
    v123 = swift_allocObject();
    *(v123 + 16) = xmmword_26B2BDCC0;
    *(v123 + 32) = sub_26B29B490(v219.i8[0]);
    *(v123 + 36) = sub_26B29B490(v219.i8[2]);
    *(v123 + 40) = sub_26B29B490(v219.i8[4]);
    v124 = sub_26B29B490(v219.i8[6]);
    goto LABEL_125;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F4158, &qword_26B2BDF48);
  if (swift_dynamicCast())
  {
    v132.n128_u64[0] = v225.n128_u64[0];
    v219 = v132;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F41A0, &qword_26B2BDF90);
    v42 = 7;
    v123 = swift_allocObject();
    *(v123 + 16) = xmmword_26B2BDCC0;
    *(v123 + 32) = sub_26B29B338(v219.i16[0]);
    *(v123 + 36) = sub_26B29B338(v219.i16[1]);
    *(v123 + 40) = sub_26B29B338(v219.i16[2]);
    v124 = sub_26B29B338(v219.i16[3]);
    goto LABEL_125;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F4160, &qword_26B2BDF50);
  if (swift_dynamicCast())
  {
    v219 = v225;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F41A0, &qword_26B2BDF90);
    v42 = 7;
    v123 = swift_allocObject();
    *(v123 + 16) = xmmword_26B2BDCC0;
    *(v123 + 32) = sub_26B29B1E0(v219.i32[0]);
    *(v123 + 36) = sub_26B29B1E0(v219.i32[1]);
    *(v123 + 40) = sub_26B29B1E0(v219.i32[2]);
    v124 = sub_26B29B1E0(v219.i32[3]);
    goto LABEL_125;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F4168, &qword_26B2BDF58);
  if (swift_dynamicCast())
  {
    v219 = v226;
    v218 = v225;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F41A0, &qword_26B2BDF90);
    v125 = swift_allocObject();
    *(v125 + 16) = xmmword_26B2BDCC0;
    v126 = v218;
    v127 = MEMORY[0x277D84A28];
    v128 = sub_26B2A3D3C;
    goto LABEL_109;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F4170, &qword_26B2BDF60);
  if (swift_dynamicCast())
  {
    v133.i32[0] = v225.n128_u32[0];
    v219 = vmovl_u8(v133);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F41A0, &qword_26B2BDF90);
    v42 = 7;
    v123 = swift_allocObject();
    *(v123 + 16) = xmmword_26B2BDCC0;
    *(v123 + 32) = sub_26B29AF34(v219.i8[0]);
    *(v123 + 36) = sub_26B29AF34(v219.i8[2]);
    *(v123 + 40) = sub_26B29AF34(v219.i8[4]);
    v124 = sub_26B29AF34(v219.i8[6]);
    goto LABEL_125;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F4178, &qword_26B2BDF68);
  if (swift_dynamicCast())
  {
    v134.n128_u64[0] = v225.n128_u64[0];
    v219 = v134;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F41A0, &qword_26B2BDF90);
    v42 = 7;
    v123 = swift_allocObject();
    *(v123 + 16) = xmmword_26B2BDCC0;
    *(v123 + 32) = sub_26B29ADDC(v219.i16[0]);
    *(v123 + 36) = sub_26B29ADDC(v219.i16[1]);
    *(v123 + 40) = sub_26B29ADDC(v219.i16[2]);
    v124 = sub_26B29ADDC(v219.i16[3]);
    goto LABEL_125;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F4180, &qword_26B2BDF70);
  if (swift_dynamicCast())
  {
    v219 = v225;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F41A0, &qword_26B2BDF90);
    v42 = 7;
    v123 = swift_allocObject();
    *(v123 + 16) = xmmword_26B2BDCC0;
    *(v123 + 32) = sub_26B29AC84(v219.i32[0]);
    *(v123 + 36) = sub_26B29AC84(v219.i32[1]);
    *(v123 + 40) = sub_26B29AC84(v219.i32[2]);
    v124 = sub_26B29AC84(v219.i32[3]);
    goto LABEL_125;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F4188, &qword_26B2BDF78);
  if (swift_dynamicCast())
  {
    v219 = v226;
    v218 = v225;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F41A0, &qword_26B2BDF90);
    v125 = swift_allocObject();
    *(v125 + 16) = xmmword_26B2BDCC0;
    v126 = v218;
    v127 = MEMORY[0x277D84D38];
    v128 = sub_26B2A1EC8;
    goto LABEL_109;
  }

  type metadata accessor for simd_quatf(0);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(v214);
    v41 = v225.n128_u64[1];
    v40 = v225.n128_u64[0];
    v42 = 8;
    goto LABEL_22;
  }

  type metadata accessor for simd_float2x2(0);
  if (swift_dynamicCast())
  {
    v136 = v225;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F41B0, &unk_26B2BDFA0);
    v137 = swift_allocObject();
    *(v137 + 16) = xmmword_26B2BDCE0;
    *(v137 + 32) = v136;
LABEL_134:
    __swift_destroy_boxed_opaque_existential_1(v214);
    result = __swift_destroy_boxed_opaque_existential_1(&v232);
    v144 = v220;
    *v220 = v137;
    v144[1] = 0;
    v144[2] = 0;
    v144[3] = 0;
    v145 = 9;
    goto LABEL_150;
  }

  type metadata accessor for simd_double2x2(0);
  if (swift_dynamicCast())
  {
    v217 = v225;
    v219 = v226;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F41B0, &unk_26B2BDFA0);
    v137 = swift_allocObject();
    v218 = xmmword_26B2BDCE0;
    *(v137 + 16) = xmmword_26B2BDCE0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F41A0, &qword_26B2BDF90);
    v138 = swift_allocObject();
    *(v138 + 16) = v218;
    *(v138 + 32) = sub_26B29AA54(v217.n128_f64[0]);
    *(v138 + 36) = sub_26B29AA54(v217.n128_f64[1]);
    sub_26B2A1D94(v138);
    v140 = v139;
    swift_setDeallocating();
    swift_deallocClassInstance();
    *(v137 + 32) = v140;
    v141 = swift_allocObject();
    *(v141 + 16) = v218;
    *(v141 + 32) = sub_26B29AA54(*v219.i64);
    *(v141 + 36) = sub_26B29AA54(*&v219.i64[1]);
    sub_26B2A1D94(v141);
    v143 = v142;
    swift_setDeallocating();
    swift_deallocClassInstance();
    *(v137 + 40) = v143;
    goto LABEL_134;
  }

  type metadata accessor for simd_float3x3(0);
  if (swift_dynamicCast())
  {
    v219 = v225;
    v218 = v226;
    v217 = v227;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F41A8, &qword_26B2BDF98);
    v146 = swift_allocObject();
    v147 = v219;
    v146[1] = xmmword_26B2BDCD0;
    v146[2] = v147;
    v148 = v217;
    v146[3] = v218;
    v146[4] = v148;
LABEL_139:
    __swift_destroy_boxed_opaque_existential_1(v214);
    result = __swift_destroy_boxed_opaque_existential_1(&v232);
    v144 = v220;
    *v220 = v146;
    v144[1] = 0;
    v144[2] = 0;
    v144[3] = 0;
    v145 = 10;
    goto LABEL_150;
  }

  type metadata accessor for simd_double3x3(0);
  if (swift_dynamicCast())
  {
    v216 = v225;
    v217 = v227;
    v218 = v229;
    v149 = v226.n128_f64[0];
    v150 = *&v228;
    v151 = *&v230;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F41A8, &qword_26B2BDF98);
    v146 = swift_allocObject();
    v219 = xmmword_26B2BDCD0;
    v146[1] = xmmword_26B2BDCD0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F41A0, &qword_26B2BDF90);
    v152 = swift_allocObject();
    v152[1] = v219;
    v152[2].n128_f32[0] = sub_26B29AA54(*&v216);
    v152[2].n128_f32[1] = sub_26B29AA54(*(&v216 + 1));
    v152[2].n128_f32[2] = sub_26B29AA54(v149);
    sub_26B2A1DCC(v152);
    v216 = v153;
    swift_setDeallocating();
    swift_deallocClassInstance();
    v146[2] = v216;
    v154 = swift_allocObject();
    v154[1] = v219;
    v154[2].n128_f32[0] = sub_26B29AA54(v217.n128_f64[0]);
    v154[2].n128_f32[1] = sub_26B29AA54(v217.n128_f64[1]);
    v154[2].n128_f32[2] = sub_26B29AA54(v150);
    sub_26B2A1DCC(v154);
    v217 = v155;
    swift_setDeallocating();
    swift_deallocClassInstance();
    v146[3] = v217;
    v156 = swift_allocObject();
    v156[1] = v219;
    v156[2].n128_f32[0] = sub_26B29AA54(*&v218);
    v156[2].n128_f32[1] = sub_26B29AA54(*(&v218 + 1));
    v156[2].n128_f32[2] = sub_26B29AA54(v151);
    sub_26B2A1DCC(v156);
    v219 = v157;
    swift_setDeallocating();
    swift_deallocClassInstance();
    v146[4] = v219;
    goto LABEL_139;
  }

  type metadata accessor for simd_float4x4(0);
  if (swift_dynamicCast())
  {
    v219 = v225;
    v218 = v226;
    v217 = v227;
    v216 = v228;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F4198, &qword_26B2BDF88);
    v158 = swift_allocObject();
    v159 = v219;
    v158[1] = xmmword_26B2BDCC0;
    v158[2] = v159;
    v160 = v217;
    v158[3] = v218;
    v158[4] = v160;
    v158[5] = v216;
LABEL_144:
    __swift_destroy_boxed_opaque_existential_1(v214);
    result = __swift_destroy_boxed_opaque_existential_1(&v232);
    v144 = v220;
    *v220 = v158;
    v144[1] = 0;
    v144[2] = 0;
    v144[3] = 0;
    v145 = 11;
    goto LABEL_150;
  }

  type metadata accessor for simd_double4x4(0);
  if (swift_dynamicCast())
  {
    v211 = v226;
    v210 = v225;
    v213 = v228;
    v212 = v227;
    v216 = v230;
    v215 = v229;
    v218 = v231[1];
    v217 = v231[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F4198, &qword_26B2BDF88);
    v158 = swift_allocObject();
    v219 = xmmword_26B2BDCC0;
    v158[1] = xmmword_26B2BDCC0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F41A0, &qword_26B2BDF90);
    v161 = swift_allocObject();
    v161[1] = v219;
    v161[2].n128_f32[0] = sub_26B29AA54(v210.n128_f64[0]);
    v161[2].n128_f32[1] = sub_26B29AA54(v210.n128_f64[1]);
    v161[2].n128_f32[2] = sub_26B29AA54(v211.n128_f64[0]);
    v161[2].n128_f32[3] = sub_26B29AA54(v211.n128_f64[1]);
    sub_26B2A1E18(v161);
    v211 = v162;
    swift_setDeallocating();
    swift_deallocClassInstance();
    v158[2] = v211;
    v163 = swift_allocObject();
    v163[1] = v219;
    v163[2].n128_f32[0] = sub_26B29AA54(v212.n128_f64[0]);
    v163[2].n128_f32[1] = sub_26B29AA54(v212.n128_f64[1]);
    v163[2].n128_f32[2] = sub_26B29AA54(*&v213);
    v163[2].n128_f32[3] = sub_26B29AA54(*(&v213 + 1));
    sub_26B2A1E18(v163);
    v213 = v164;
    swift_setDeallocating();
    swift_deallocClassInstance();
    v158[3] = v213;
    v165 = swift_allocObject();
    v165[1] = v219;
    v165[2].n128_f32[0] = sub_26B29AA54(*&v215);
    v165[2].n128_f32[1] = sub_26B29AA54(*(&v215 + 1));
    v165[2].n128_f32[2] = sub_26B29AA54(*&v216);
    v165[2].n128_f32[3] = sub_26B29AA54(*(&v216 + 1));
    sub_26B2A1E18(v165);
    v216 = v166;
    swift_setDeallocating();
    swift_deallocClassInstance();
    v158[4] = v216;
    v167 = swift_allocObject();
    v167[1] = v219;
    v167[2].n128_f32[0] = sub_26B29AA54(v217.n128_f64[0]);
    v167[2].n128_f32[1] = sub_26B29AA54(v217.n128_f64[1]);
    v167[2].n128_f32[2] = sub_26B29AA54(*&v218);
    v167[2].n128_f32[3] = sub_26B29AA54(*(&v218 + 1));
    sub_26B2A1E18(v167);
    v219 = v168;
    swift_setDeallocating();
    swift_deallocClassInstance();
    v158[5] = v219;
    goto LABEL_144;
  }

  if (swift_dynamicCast())
  {
    v169 = v215;
    (*(v215 + 32))(v29, v32, v20);
    (*(v169 + 16))(v25, v29, v20);
    v170 = sub_26B2BB968();
    v172 = v171;
    (*(v169 + 8))(v29, v20);
    v173 = v214;
LABEL_149:
    __swift_destroy_boxed_opaque_existential_1(v173);
    result = __swift_destroy_boxed_opaque_existential_1(&v232);
    v144 = v220;
    *v220 = v170;
    v144[1] = v172;
    v144[2] = 0;
    v144[3] = 0;
    v145 = 4;
    goto LABEL_150;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F4190, &qword_26B2BDF80);
  if (swift_dynamicCast())
  {
    sub_26B2907E4(&v225, v222);
    __swift_project_boxed_opaque_existential_1(v222, v223);
    sub_26B2BB718();
    sub_26B29F0E0(v14);
    (*(v216 + 8))(v19, v15);
    v170 = sub_26B2BB978();
    v172 = v174;
    __swift_destroy_boxed_opaque_existential_1(v214);
    v173 = v222;
    goto LABEL_149;
  }

  if (!swift_dynamicCast())
  {
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1(v214);
      v182 = v225.n128_u64[1];
      v181 = v225.n128_u64[0];
    }

    else
    {
      if (swift_dynamicCast())
      {
        v183 = v214;
        sub_26B29EFCC(v214, &v225);
        v184 = sub_26B2BB988();
        v186 = v185;
        __swift_destroy_boxed_opaque_existential_1(v183);
        result = __swift_destroy_boxed_opaque_existential_1(&v232);
        v144 = v220;
        *v220 = v184;
        v144[1] = v186;
        v144[2] = 0;
        v144[3] = 0;
        v145 = 18;
        goto LABEL_150;
      }

      __swift_project_boxed_opaque_existential_1(v214, v214[3]);
      DynamicType = swift_getDynamicType();
      isClassType = swift_isClassType();
      if (DynamicType)
      {
        v189 = isClassType;
      }

      else
      {
        v189 = 0;
      }

      if (v189)
      {
        v190 = v214[3];
        v191 = __swift_project_boxed_opaque_existential_1(v214, v190);
        v192 = *(v190 - 8);
        v193 = *(v192 + 64);
        MEMORY[0x28223BE20](v191, v191);
        v195 = &v210 - ((v194 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v192 + 16))(v195);
        v196 = sub_26B2BC128();
        (*(v192 + 8))(v195, v190);
        v197 = CFGetTypeID(v196);
        swift_unknownObjectRelease();
        if (v197 == CGColorGetTypeID())
        {
          sub_26B29F4C8(v214, &v225);
          type metadata accessor for CGColor(0);
          swift_dynamicCast();
          v198 = v222[0];
          result = __swift_destroy_boxed_opaque_existential_1(&v232);
          v144 = v220;
          *v220 = v198;
          v144[1] = 0;
          v144[2] = 0;
          v144[3] = 0;
          v145 = 14;
          goto LABEL_150;
        }
      }

      else
      {
        CGColorGetTypeID();
        v197 = 0;
      }

      type metadata accessor for CMClock(0);
      if (v197 == MEMORY[0x26D673D90]())
      {
        v199 = v189;
      }

      else
      {
        v199 = 0;
      }

      if ((v199 & 1) == 0)
      {
        type metadata accessor for CMTimebase(0);
        v200 = v197 == MEMORY[0x26D673DB0]() ? v189 : 0;
        if (v200 != 1)
        {
          __swift_destroy_boxed_opaque_existential_1(v214);
          result = __swift_destroy_boxed_opaque_existential_1(&v232);
          v144 = v220;
          *v220 = 0u;
          *(v144 + 1) = 0u;
          v145 = -1;
          goto LABEL_150;
        }
      }

      v201 = v214;
      v202 = v214[3];
      v203 = __swift_project_boxed_opaque_existential_1(v214, v202);
      v204 = *(v202 - 8);
      v205 = *(v204 + 64);
      MEMORY[0x28223BE20](v203, v203);
      v207 = &v210 - ((v206 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v204 + 16))(v207);
      v208 = sub_26B2BC128();
      (*(v204 + 8))(v207, v202);
      swift_unknownObjectRelease();
      v225.n128_u64[0] = v208;
      v181 = sub_26B2BC2B8();
      v182 = v209;
      __swift_destroy_boxed_opaque_existential_1(v201);
    }

    result = __swift_destroy_boxed_opaque_existential_1(&v232);
    v144 = v220;
    *v220 = v181;
    v144[1] = v182;
    v144[2] = 0;
    v144[3] = 0;
    v145 = 13;
    goto LABEL_150;
  }

  v175 = v218;
  v176 = v217.n128_u64[0];
  v177 = v219.i64[0];
  (*(v218 + 32))(v217.n128_u64[0], v9, v219.i64[0]);
  v178 = sub_26B2BB758();
  v180 = v179;
  (*(v175 + 8))(v176, v177);
  __swift_destroy_boxed_opaque_existential_1(v214);
  result = __swift_destroy_boxed_opaque_existential_1(&v232);
  v144 = v220;
  *v220 = v178;
  v144[1] = v180;
  v144[2] = 0;
  v144[3] = 0;
  v145 = 12;
LABEL_150:
  *(v144 + 32) = v145;
  return result;
}

uint64_t sub_26B29EFCC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_26B29F0E0@<X0>(uint64_t a1@<X8>)
{
  v33[2] = a1;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F4330, &qword_26B2BE908);
  v2 = *(*(v35 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v35, v3);
  v6 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v7);
  v9 = v33 - v8;
  v10 = sub_26B2BB698();
  v11 = *(v10 - 8);
  v12 = v11[8];
  MEMORY[0x28223BE20](v10, v13);
  v15 = v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F4338, &qword_26B2BE910);
  v16 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34, v17);
  v19 = v33 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F4340, &qword_26B2BE918);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8, v22);
  v24 = v33 - v23;
  v25 = sub_26B2BB688();
  v26 = sub_26B2A3274(&qword_2803F4348, MEMORY[0x277CC8B30]);
  v36 = v25;
  v27 = v26;
  sub_26B2BBC68();
  sub_26B2A3274(&qword_2803F4350, MEMORY[0x277CC8C20]);
  result = sub_26B2BB938();
  if (result)
  {
    sub_26B2BBC78();
    sub_26B2A3274(&qword_2803F4358, MEMORY[0x277CC8C20]);
    result = sub_26B2BB928();
    if (result)
    {
      v33[1] = v1;
      v29 = v11[4];
      v29(v9, v24, v10);
      v33[0] = v27;
      v30 = v35;
      v29(&v9[*(v35 + 48)], v15, v10);
      sub_26B2A3E8C(v9, v6);
      v31 = *(v30 + 48);
      v29(v19, v6, v10);
      v32 = v11[1];
      v32(&v6[v31], v10);
      sub_26B2A3EFC(v9, v6);
      v29(&v19[*(v34 + 36)], &v6[*(v30 + 48)], v10);
      v32(v6, v10);
      sub_26B2BBCA8();
      return sub_26B2A3F6C(v19, &qword_2803F4338, &qword_26B2BE910);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

_OWORD *sub_26B29F4C8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_26B29F4EC(uint64_t a1, unint64_t *a2)
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

uint64_t sub_26B29F53C(float32x2_t *a1, float32x2_t *a2)
{
  v2 = a1[2];
  if (*&v2 != *&a2[2])
  {
    return 0;
  }

  if (!*&v2 || a1 == a2)
  {
    return 1;
  }

  v3 = a1 + 4;
  v4 = a2 + 4;
  do
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    v8 = vceq_f32(v6, v7);
    if ((v8.i8[0] & v8.i8[4] & 1) == 0)
    {
      break;
    }

    --*&v2;
  }

  while (v2);
  return v8.i8[0] & v8.i8[4] & 1;
}

uint64_t sub_26B29F5B0(float32x4_t *a1, float32x4_t *a2)
{
  v2 = a1[1].i64[0];
  if (v2 != a2[1].i64[0])
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = a1 + 2;
  v4 = a2 + 2;
  do
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    v8 = vmovn_s32(vceqq_f32(v6, v7));
    if (((v8.i8[0] & v8.i8[2]) & v8.i8[4] & 1) == 0)
    {
      break;
    }

    --v2;
  }

  while (v2);
  return (v8.i8[0] & v8.i8[2]) & v8.i8[4] & 1;
}

uint64_t sub_26B29F630(float32x4_t *a1, float32x4_t *a2)
{
  v2 = a1[1].i64[0];
  if (v2 != a2[1].i64[0])
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = a1 + 2;
  v4 = a2 + 2;
  do
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    v8 = vminv_u16(vmovn_s32(vceqq_f32(v6, v7)));
    if ((v8 & 1) == 0)
    {
      break;
    }

    --v2;
  }

  while (v2);
  return v8 & 1;
}

uint64_t sub_26B29F6A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v14 = 1;
    }

    else
    {
      v3 = (a2 + 64);
      v4 = (a1 + 64);
      do
      {
        v5 = *(v4 - 3);
        v6 = *(v4 - 2);
        v7 = *(v4 - 1);
        v8 = *v4;
        v21 = *(v4 - 4);
        v22 = v5;
        v23 = v6;
        v24 = v7;
        v25 = v8;
        v10 = *(v3 - 3);
        v11 = *(v3 - 2);
        v12 = *(v3 - 1);
        v16 = *(v3 - 4);
        v9 = v16;
        v17 = v10;
        v18 = v11;
        v19 = v12;
        v20 = *v3;
        v13 = v20;
        sub_26B29B834(v21, v5, v6, v7, v8);
        sub_26B29B834(v9, v10, v11, v12, v13);
        v14 = _s26SpatialInspectorFoundation0B13PropertyValueO2eeoiySbAC_ACtFZ_0(&v21, &v16);
        sub_26B2A2FB0(v16, v17, v18, v19, v20);
        sub_26B2A2FB0(v21, v22, v23, v24, v25);
        if ((v14 & 1) == 0)
        {
          break;
        }

        v4 += 48;
        v3 += 48;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t sub_26B29F7B8(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v30 = result + 64;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 64);
  v7 = (v4 + 63) >> 6;
  v31 = v7;
  v32 = result;
  if (v6)
  {
    do
    {
      v8 = __clz(__rbit64(v6));
      v33 = (v6 - 1) & v6;
LABEL_12:
      v11 = v8 | (v3 << 6);
      v12 = (*(result + 48) + 24 * v11);
      v14 = *v12;
      v13 = v12[1];
      v15 = v12[2];
      v16 = *(result + 56) + 48 * v11;
      v17 = *v16;
      v18 = *(v16 + 8);
      v19 = *(v16 + 16);
      v20 = *(v16 + 24);
      v21 = *(v16 + 32);

      sub_26B29B834(v17, v18, v19, v20, v21);
      if (!v13)
      {
        return 1;
      }

      v39 = v17;
      v40 = v18;
      v41 = v19;
      v42 = v20;
      v43 = v21;
      v22 = sub_26B2A1750(v14, v13, v15);
      v24 = v23;

      if ((v24 & 1) == 0)
      {
        sub_26B2A2FB0(v17, v18, v19, v20, v21);
        return 0;
      }

      v25 = *(a2 + 56) + 48 * v22;
      v26 = *(v25 + 8);
      v27 = *(v25 + 16);
      v28 = *(v25 + 24);
      v34 = *v25;
      v35 = v26;
      v36 = v27;
      v37 = v28;
      v38 = *(v25 + 32);
      sub_26B29B834(v34, v26, v27, v28, v38);
      v29 = _s26SpatialInspectorFoundation0B13PropertyValueO2eeoiySbAC_ACtFZ_0(&v34, &v39);
      sub_26B2A2FB0(v34, v35, v36, v37, v38);
      sub_26B2A2FB0(v39, v40, v41, v42, v43);
      if ((v29 & 1) == 0)
      {
        return 0;
      }

      v7 = v31;
      result = v32;
      v6 = v33;
    }

    while (v33);
  }

  v9 = v3;
  while (1)
  {
    v3 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v3 >= v7)
    {
      return 1;
    }

    v10 = *(v30 + 8 * v3);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v33 = (v10 - 1) & v10;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

void InspectorPropertyValue.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  switch(*(v1 + 32))
  {
    case 1:
      v7 = 1;
      goto LABEL_52;
    case 2:
      MEMORY[0x26D6742C0](2);
      if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v13 = v2;
      }

      else
      {
        v13 = 0;
      }

      MEMORY[0x26D6742F0](v13);
      return;
    case 3:
      MEMORY[0x26D6742C0](3);
      sub_26B2BC208();
      return;
    case 4:
      v8 = 4;
      goto LABEL_39;
    case 5:
      MEMORY[0x26D6742C0](5);
      sub_26B2BC218();
      sub_26B2BC218();
      return;
    case 6:
      v17 = *v1;
      v18 = *(v1 + 8);
      MEMORY[0x26D6742C0](6);

      sub_26B2A1D1C();
      return;
    case 7:
      v14 = *v1;
      v15 = *(v1 + 8);
      v16 = 7;
      goto LABEL_47;
    case 8:
      v19 = *v1;
      v20 = *(v1 + 8);
      v16 = 8;
LABEL_47:
      MEMORY[0x26D6742C0](v16);

      sub_26B2A1C8C();
      return;
    case 9:
      MEMORY[0x26D6742C0](9);

      sub_26B2A1C00(a1, v2);
      return;
    case 0xA:
      MEMORY[0x26D6742C0](10);

      sub_26B2A1B5C(a1, v2);
      return;
    case 0xB:
      MEMORY[0x26D6742C0](11);

      sub_26B2A1AA0(a1, v2);
      return;
    case 0xC:
      v8 = 12;
      goto LABEL_39;
    case 0xD:
      v8 = 13;
      goto LABEL_39;
    case 0xE:
      MEMORY[0x26D6742C0](14);
      type metadata accessor for CGColor(0);
      sub_26B2A3274(&qword_2803F41E0, type metadata accessor for CGColor);
      sub_26B2BB798();
      return;
    case 0xF:
      MEMORY[0x26D6742C0](15);

      MEMORY[0x28211D370](a1, v2, v3);
      return;
    case 0x10:
      v8 = 16;
      goto LABEL_39;
    case 0x11:
      v8 = 17;
      goto LABEL_39;
    case 0x12:
      v8 = 18;
      goto LABEL_39;
    case 0x13:
      v7 = 19;
      goto LABEL_52;
    case 0x14:
      v7 = 20;
      goto LABEL_52;
    case 0x15:
      v8 = 21;
LABEL_39:
      MEMORY[0x26D6742C0](v8);
      goto LABEL_40;
    case 0x16:
      v12 = 22;
      goto LABEL_54;
    case 0x17:
      v12 = 23;
      goto LABEL_54;
    case 0x18:
      v12 = 24;
LABEL_54:
      MEMORY[0x26D6742C0](v12);
      sub_26B2BB9E8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F41D0, &unk_26B2BFF80);
      sub_26B2A3128(&qword_2803F41D8, &qword_2803F41D0, &unk_26B2BFF80);
      sub_26B2BB8A8();
      break;
    case 0x19:
      MEMORY[0x26D6742C0](25);
      MEMORY[0x26D6742C0](*(v2 + 16));
      v9 = *(v2 + 16);
      if (v9)
      {
        v10 = (v2 + 64);
        do
        {
          v21 = *(v10 - 4);
          v22 = *(v10 - 3);
          v23 = *(v10 - 2);
          v24 = *(v10 - 1);
          v11 = *v10;
          v10 += 48;
          sub_26B29B834(v21, v22, v23, v24, v11);
          InspectorPropertyValue.hash(into:)(a1);
          sub_26B2A2FB0(v21, v22, v23, v24, v11);
          --v9;
        }

        while (v9);
      }

      break;
    case 0x1A:
      MEMORY[0x26D6742C0](26);

      sub_26B2A18C8(a1, v2);
      break;
    case 0x1B:
      MEMORY[0x26D6742C0](27);
      if (v3)
      {
        sub_26B2BC208();
LABEL_40:

        sub_26B2BB9E8();
      }

      else
      {
        sub_26B2BC208();
      }

      break;
    default:
      v7 = 0;
LABEL_52:
      MEMORY[0x26D6742C0](v7);
      MEMORY[0x26D6742F0](v2);
      break;
  }
}

uint64_t InspectorPropertyValue.hashValue.getter()
{
  v1 = *(v0 + 32);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = v1;
  sub_26B2BC1E8();
  InspectorPropertyValue.hash(into:)(v4);
  return sub_26B2BC238();
}

uint64_t sub_26B29FFE8()
{
  v1 = *(v0 + 32);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = v1;
  sub_26B2BC1E8();
  InspectorPropertyValue.hash(into:)(v4);
  return sub_26B2BC238();
}

uint64_t sub_26B2A0040()
{
  v1 = *(v0 + 32);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = v1;
  sub_26B2BC1E8();
  InspectorPropertyValue.hash(into:)(v4);
  return sub_26B2BC238();
}

id sub_26B2A0090@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = *(v1 + 32);
  *(a1 + 32) = v6;
  return sub_26B29B834(v2, v3, v4, v5, v6);
}

uint64_t InspectorPropertyValue.description.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  switch(*(v0 + 32))
  {
    case 1:
    case 0x13:
    case 0x14:
      v15 = *v0;
      goto LABEL_11;
    case 2:
      return sub_26B2AD2D0(*v0);
    case 3:
      if (LOBYTE(v2))
      {
        v12 = 1702195828;
      }

      else
      {
        v12 = 0x65736C6166;
      }

      if (LOBYTE(v2))
      {
        v13 = 0xE400000000000000;
      }

      else
      {
        v13 = 0xE500000000000000;
      }

      MEMORY[0x26D673B30](v12, v13);

      return 0;
    case 4:
    case 0xC:
    case 0xD:
    case 0x10:
    case 0x11:
    case 0x12:
    case 0x15:
    case 0x16:
    case 0x17:
    case 0x18:
      v3 = *(v0 + 8);

      return *&v2;
    case 5:
      v18 = *v0;
      v5 = &qword_2803F4078;
      v6 = &qword_26B2BDE60;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F4078, &qword_26B2BDE60);
      v7 = &unk_2803F4208;
      goto LABEL_15;
    case 6:
      v20 = *v0;
      v23 = *(v0 + 8);
      v5 = &qword_2803F3D88;
      v6 = &qword_26B2BDEC0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F3D88, &qword_26B2BDEC0);
      v7 = &unk_2803F4200;
      goto LABEL_15;
    case 7:
    case 8:
      v16 = *v0;
      v21 = *(v0 + 8);
      v5 = &qword_2803F4130;
      v6 = &qword_26B2BDF20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F4130, &qword_26B2BDF20);
      v7 = &unk_2803F41F8;
LABEL_15:
      sub_26B2A3128(v7, v5, v6);
      return sub_26B2BC188();
    case 9:
      v10 = &qword_2803F4078;
      v11 = &qword_26B2BDE60;
      goto LABEL_24;
    case 0xA:
      v10 = &qword_2803F3D88;
      v11 = &qword_26B2BDEC0;
      goto LABEL_24;
    case 0xB:
      v10 = &qword_2803F4130;
      v11 = &qword_26B2BDF20;
LABEL_24:
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
      goto LABEL_25;
    case 0xE:
      v14 = *v0;
      type metadata accessor for CGColor(0);
      sub_26B2BBEA8();
      return 0;
    case 0xF:
      v9 = *v0;
      return sub_26B2BB738();
    case 0x19:
      v8 = &type metadata for InspectorPropertyValue;
LABEL_25:
      result = MEMORY[0x26D673C60](*&v2, v8);
      break;
    case 0x1A:
      sub_26B2A30D4();
      result = sub_26B2BB828();
      break;
    case 0x1B:
      v17 = *v0;
      v22 = *(v0 + 8);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F41E8, &qword_26B2BDFB0);
      result = sub_26B2BB988();
      break;
    default:
      v19 = *v0;
LABEL_11:
      result = sub_26B2BC108();
      break;
  }

  return result;
}

uint64_t sub_26B2A03E8()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t InspectorPropertyValue.WrappedDictionaryKey.init(any:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_26B2A3170(a1, v9);
  v4 = sub_26B2BBDC8();
  v6 = v5;
  sub_26B2A31CC(v9);
  *a2 = v4;
  a2[1] = v6;
  v7 = sub_26B2BBDD8();
  result = sub_26B2A31CC(a1);
  a2[2] = v7;
  return result;
}

BOOL static InspectorPropertyValue.WrappedDictionaryKey.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return v2 == v3;
  }

  v5 = sub_26B2BC138();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

uint64_t sub_26B2A04EC()
{
  if (*v0)
  {
    return 1752392040;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_26B2A0510@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v5 || (sub_26B2BC138() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1752392040 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_26B2BC138();

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

uint64_t sub_26B2A05EC(uint64_t a1)
{
  v2 = sub_26B2A3220();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B2A0628(uint64_t a1)
{
  v2 = sub_26B2A3220();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t InspectorPropertyValue.WrappedDictionaryKey.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F4210, &qword_26B2BDFB8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = v14 - v7;
  v9 = *v1;
  v10 = v1[1];
  v14[0] = v1[2];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B2A3220();
  sub_26B2BC258();
  v16 = 0;
  v12 = v14[1];
  sub_26B2BC078();
  if (!v12)
  {
    v15 = 1;
    sub_26B2BC0A8();
  }

  return (*(v4 + 8))(v8, v3);
}

uint64_t InspectorPropertyValue.WrappedDictionaryKey.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_26B2BB9E8();
  return MEMORY[0x26D6742C0](v3);
}

uint64_t InspectorPropertyValue.WrappedDictionaryKey.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_26B2BC1E8();
  sub_26B2BB9E8();
  MEMORY[0x26D6742C0](v3);
  return sub_26B2BC238();
}

uint64_t InspectorPropertyValue.WrappedDictionaryKey.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F4218, &qword_26B2BDFC0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v18 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B2A3220();
  sub_26B2BC248();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = 0;
  v12 = sub_26B2BBF88();
  v14 = v13;
  v15 = v12;
  v19 = 1;
  v16 = sub_26B2BBFB8();
  (*(v6 + 8))(v10, v5);
  *a2 = v15;
  a2[1] = v14;
  a2[2] = v16;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26B2A0A70()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_26B2BC1E8();
  sub_26B2BB9E8();
  MEMORY[0x26D6742C0](v3);
  return sub_26B2BC238();
}

uint64_t sub_26B2A0AD4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_26B2BB9E8();
  return MEMORY[0x26D6742C0](v3);
}

uint64_t sub_26B2A0B0C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_26B2BC1E8();
  sub_26B2BB9E8();
  MEMORY[0x26D6742C0](v3);
  return sub_26B2BC238();
}

BOOL sub_26B2A0B9C(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return v2 == v3;
  }

  v5 = sub_26B2BC138();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

uint64_t sub_26B2A0BF8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F4220, &qword_26B2BDFC8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_26B2BDCF0;
  v1 = type metadata accessor for InspectorProperty();
  v2._countAndFlagsBits = 0x6D6574496C6F6F42;
  v2._object = 0xE800000000000000;
  InspectorPropertyID.init(id:)(v2);
  v22 = v24;
  v23 = v25;
  v18 = 1;
  v19 = 0;
  v20 = 0u;
  v21 = 3;
  InspectorProperty.__allocating_init(id:name:value:isInternal:)(&v22, 0x6D6574496C6F6F42, 0xE800000000000000, &v18, 1);
  *(v0 + 32) = v3;
  v4._countAndFlagsBits = 0x7449656C62756F44;
  v4._object = 0xEA00000000006D65;
  InspectorPropertyID.init(id:)(v4);
  v22 = v24;
  v23 = v25;
  v18 = 0x3FF199999999999ALL;
  v19 = 0;
  v20 = 0u;
  v21 = 2;
  InspectorProperty.__allocating_init(id:name:value:isInternal:)(&v22, 0x7449656C62756F44, 0xEA00000000006D65, &v18, 0);
  *(v0 + 40) = v5;
  v6 = sub_26B2A3274(&qword_2803F4228, type metadata accessor for InspectorProperty);
  InspectorCollection.init(from:)(v0, v1, v6, &v18);
  v8 = v18;
  v7 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F4230, &qword_26B2BDFD0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_26B2BDD00;
  *(v9 + 32) = 1;
  *(v9 + 40) = 0;
  *(v9 + 48) = 0u;
  *(v9 + 64) = 3;
  *(v9 + 80) = &unk_287BCE7B0;
  *(v9 + 88) = 0;
  *(v9 + 96) = 0u;
  *(v9 + 112) = 25;
  *(v9 + 128) = 128;
  *(v9 + 136) = 0;
  *(v9 + 144) = 0u;
  *(v9 + 160) = 20;
  *(v9 + 176) = CGColorCreateGenericRGB(0.0, 0.0, 0.0, 1.0);
  *(v9 + 184) = 0;
  *(v9 + 192) = 0u;
  *(v9 + 208) = 14;
  *(v9 + 224) = 0xD000000000000011;
  *(v9 + 232) = 0x800000026B2C4250;
  *(v9 + 240) = 0u;
  *(v9 + 256) = 16;
  *(v9 + 272) = xmmword_26B2BDD10;
  *(v9 + 288) = 0u;
  *(v9 + 304) = 17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F4238, &qword_26B2BDFD8);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_26B2BDD20;
  v24 = 7955819;
  v25 = 0xE300000000000000;
  sub_26B2BBDE8();
  *(v10 + 32) = sub_26B2BBDC8();
  *(v10 + 40) = v11;
  v12 = sub_26B2BBDD8();
  sub_26B2A31CC(&v18);
  *(v10 + 48) = v12;
  *(v10 + 64) = 1;
  *(v10 + 72) = 0;
  *(v10 + 80) = 0u;
  *(v10 + 96) = 0;
  v13 = sub_26B2A32BC(v10);
  swift_setDeallocating();
  sub_26B2A3F6C(v10 + 32, &qword_2803F4240, &qword_26B2BDFE0);
  swift_deallocClassInstance();
  *(v9 + 320) = v13;
  *(v9 + 328) = 0;
  *(v9 + 336) = 0u;
  *(v9 + 352) = 26;
  *(v9 + 368) = xmmword_26B2BDD30;
  *(v9 + 384) = 0u;
  *(v9 + 400) = 18;
  *(v9 + 416) = 0x3FF199999999999ALL;
  *(v9 + 424) = 0;
  *(v9 + 432) = 0u;
  *(v9 + 448) = 2;
  *(v9 + 464) = 123;
  *(v9 + 472) = 0;
  *(v9 + 480) = 0u;
  *(v9 + 496) = 19;
  *(v9 + 512) = xmmword_26B2BDD40;
  *(v9 + 528) = 0u;
  *(v9 + 544) = 21;
  *(v9 + 560) = 0xD000000000000012;
  *(v9 + 568) = 0x800000026B2C4270;
  *(v9 + 576) = v8;
  *(v9 + 584) = v7;
  *(v9 + 592) = 22;
  *(v9 + 608) = xmmword_26B2BDD50;
  *(v9 + 624) = v8;
  *(v9 + 632) = v7;
  *(v9 + 640) = 23;
  *(v9 + 656) = 123;
  *(v9 + 688) = 0;
  *(v9 + 680) = 0;
  *(v9 + 664) = 0u;
  *(v9 + 704) = xmmword_26B2BDD60;
  *(v9 + 720) = v8;
  *(v9 + 728) = v7;
  *(v9 + 736) = 24;
  *(v9 + 752) = xmmword_26B2BDD70;
  *(v9 + 768) = 0u;
  *(v9 + 784) = 13;
  *(v9 + 800) = 0x3E4CCCCD3DCCCCCDLL;
  *(v9 + 824) = 0;
  *(v9 + 808) = 0u;
  *(v9 + 832) = 5;
  *(v9 + 848) = xmmword_26B2BDD80;
  *(v9 + 864) = 0u;
  *(v9 + 880) = 6;
  *(v9 + 896) = xmmword_26B2BDD90;
  *(v9 + 912) = 0u;
  *(v9 + 928) = 7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F41B0, &unk_26B2BDFA0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_26B2BDCE0;
  *(v14 + 32) = 0x3E4CCCCD3DCCCCCDLL;
  *(v14 + 40) = 0x3ECCCCCD3E99999ALL;
  *(v9 + 944) = v14;
  *(v9 + 952) = 0;
  *(v9 + 960) = 0u;
  *(v9 + 976) = 9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F41A8, &qword_26B2BDF98);
  v15 = swift_allocObject();
  v15[1] = xmmword_26B2BDCD0;
  v15[2] = xmmword_26B2BDD80;
  v15[3] = xmmword_26B2BDDA0;
  v15[4] = xmmword_26B2BDDB0;
  *(v9 + 992) = v15;
  *(v9 + 1000) = 0;
  *(v9 + 1008) = 0u;
  *(v9 + 1024) = 10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F4198, &qword_26B2BDF88);
  v16 = swift_allocObject();
  v16[1] = xmmword_26B2BDCC0;
  v16[2] = xmmword_26B2BDD90;
  v16[3] = xmmword_26B2BDDC0;
  v16[4] = xmmword_26B2BDDD0;
  v16[5] = xmmword_26B2BDDE0;
  *(v9 + 1040) = v16;
  *(v9 + 1048) = 0;
  *(v9 + 1056) = 0u;
  *(v9 + 1072) = 11;
  *(v9 + 1088) = xmmword_26B2BDD90;
  *(v9 + 1104) = 0u;
  *(v9 + 1120) = 8;
  *(v9 + 1136) = xmmword_26B2BDDF0;
  *(v9 + 1152) = 0u;
  *(v9 + 1168) = 4;
  *(v9 + 1184) = 123;
  *(v9 + 1208) = 0;
  *(v9 + 1192) = 0u;
  *(v9 + 1216) = 1;
  *(v9 + 1232) = xmmword_26B2BDE00;
  *(v9 + 1248) = 0u;
  *(v9 + 1264) = 27;
  *(v9 + 1280) = xmmword_26B2BDE10;
  *(v9 + 1296) = 0u;
  *(v9 + 1312) = 12;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  return v9;
}

uint64_t sub_26B2A1218()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_26B2BB7A8();
}

uint64_t sub_26B2A1264()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_26B2BB798();
}

uint64_t sub_26B2A12BC()
{
  sub_26B2BC1E8();
  v1 = *v0;
  swift_getWitnessTable();
  sub_26B2BB798();
  return sub_26B2BC238();
}

uint64_t sub_26B2A1324(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getWitnessTable();

  return sub_26B2BB788();
}

uint64_t sub_26B2A1390@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_26B2BB658();
    if (v10)
    {
      v11 = sub_26B2BB678();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_26B2BB668();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v21 = a3;
    v22 = BYTE2(a3);
    v23 = BYTE3(a3);
    v24 = BYTE4(a3);
    v25 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      v19 = *MEMORY[0x277D85DE8];
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_26B2BB658();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_26B2BB678();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_26B2BB668();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_26B2A15C0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v14[0] = a1;
      LOWORD(v14[1]) = a2;
      BYTE2(v14[1]) = BYTE2(a2);
      BYTE3(v14[1]) = BYTE3(a2);
      BYTE4(v14[1]) = BYTE4(a2);
      BYTE5(v14[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_26B2A1F70(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_26B28F218(a3, a4);
    goto LABEL_11;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v14, 0, 14);
LABEL_9:
  sub_26B2A1390(v14, a3, a4, &v13);
  v10 = v4;
  sub_26B28F218(a3, a4);
  if (!v4)
  {
    v10 = v13;
  }

LABEL_11:
  v11 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

unint64_t sub_26B2A1750(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 40);
  sub_26B2BC1E8();
  sub_26B2BB9E8();
  MEMORY[0x26D6742C0](a3);
  v8 = sub_26B2BC238();

  return sub_26B2A17E4(a1, a2, a3, v8);
}

unint64_t sub_26B2A17E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4 + 64;
  v6 = -1 << *(v4 + 32);
  v7 = a4 & ~v6;
  if ((*(v4 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v11 = ~v6;
    v12 = *(v4 + 48);
    do
    {
      v13 = (v12 + 24 * v7);
      v14 = v13[2];
      v15 = *v13 == a1 && v13[1] == a2;
      if (v15 || (sub_26B2BC138()) && v14 == a3)
      {
        break;
      }

      v7 = (v7 + 1) & v11;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

uint64_t sub_26B2A18C8(uint64_t a1, uint64_t a2)
{
  v22 = a2 + 64;
  v2 = 1 << *(a2 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a2 + 64);
  v21 = (v2 + 63) >> 6;

  v25 = 0;
  v6 = 0;
  if (v4)
  {
    while (1)
    {
      v7 = v6;
LABEL_8:
      v8 = __clz(__rbit64(v4)) | (v7 << 6);
      v9 = (*(a2 + 48) + 24 * v8);
      v10 = *v9;
      v11 = v9[1];
      v12 = v9[2];
      v13 = *(a2 + 56) + 48 * v8;
      v14 = *v13;
      v15 = *(v13 + 8);
      v16 = *(v13 + 16);
      v17 = *(v13 + 24);
      v18 = *(v13 + 32);

      sub_26B29B834(v14, v15, v16, v17, v18);
      if (!v11)
      {
        break;
      }

      v4 &= v4 - 1;
      v28 = v14;
      v29 = v15;
      v30 = v16;
      v31 = v17;
      v32 = v18;
      v19 = *(a1 + 48);
      v26[2] = *(a1 + 32);
      v26[3] = v19;
      v27 = *(a1 + 64);
      v20 = *(a1 + 16);
      v26[0] = *a1;
      v26[1] = v20;

      sub_26B2BB9E8();

      MEMORY[0x26D6742C0](v12);

      InspectorPropertyValue.hash(into:)(v26);
      sub_26B2A2FB0(v14, v15, v16, v17, v18);
      result = sub_26B2BC238();
      v25 ^= result;
      v6 = v7;
      if (!v4)
      {
        goto LABEL_5;
      }
    }

LABEL_11:

    return MEMORY[0x26D6742C0](v25);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v7 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v7 >= v21)
      {
        goto LABEL_11;
      }

      v4 = *(v22 + 8 * v7);
      ++v6;
      if (v4)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_26B2A1AA0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x26D6742C0](v3);
  if (v3)
  {
    v5 = (a2 + 32);
    do
    {
      v6 = *v5++;
      sub_26B2BC218();
      sub_26B2BC218();
      sub_26B2BC218();
      result = sub_26B2BC218();
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_26B2A1B5C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x26D6742C0](v3);
  if (v3)
  {
    v5 = (a2 + 32);
    do
    {
      v6 = *v5++;
      sub_26B2BC218();
      sub_26B2BC218();
      result = sub_26B2BC218();
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_26B2A1C00(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x26D6742C0](v3);
  if (v3)
  {
    v5 = (a2 + 32);
    do
    {
      v6 = *v5++;
      sub_26B2BC218();
      result = sub_26B2BC218();
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_26B2A1C8C()
{
  sub_26B2BC218();
  sub_26B2BC218();
  sub_26B2BC218();
  return sub_26B2BC218();
}

uint64_t sub_26B2A1D1C()
{
  sub_26B2BC218();
  sub_26B2BC218();
  return sub_26B2BC218();
}

uint64_t sub_26B2A1D94(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if ((v1 - 1) > 1)
    {
      __break(1u);
    }

    else
    {
      v2 = *(result + 32);
      if (v1 != 1)
      {
        v3 = *(result + 36);
        return result;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26B2A1DCC(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    goto LABEL_9;
  }

  if ((v1 - 1) > 2)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  v2 = *(result + 32);
  if (v1 != 1)
  {
    v3 = *(result + 36);
    if (v1 != 2)
    {
      v4 = *(result + 40);
    }
  }

  if (v1 != 3)
  {
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_26B2A1E18(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    goto LABEL_10;
  }

  if ((v1 - 1) > 3)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  v2 = *(result + 32);
  if (v1 != 1)
  {
    v3 = *(result + 36);
    if (v1 != 2)
    {
      v4 = *(result + 40);
      if (v1 != 3)
      {
        v5 = *(result + 44);
      }
    }
  }

  if (v1 != 4)
  {
    goto LABEL_10;
  }

  return result;
}

unint64_t sub_26B2A1E74()
{
  result = qword_2803F41B8;
  if (!qword_2803F41B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F41B8);
  }

  return result;
}

unint64_t sub_26B2A1EC8()
{
  result = qword_2803F41C0;
  if (!qword_2803F41C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F41C0);
  }

  return result;
}

unint64_t sub_26B2A1F1C()
{
  result = qword_2803F41C8;
  if (!qword_2803F41C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F41C8);
  }

  return result;
}

uint64_t sub_26B2A1F70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_26B2BB658();
  v11 = result;
  if (result)
  {
    result = sub_26B2BB678();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_26B2BB668();
  sub_26B2A1390(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_26B2A2028(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_26B28E8AC(a3, a4);
          return sub_26B2A15C0(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t _s26SpatialInspectorFoundation0B13PropertyValueO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *a2;
  v8 = *(a2 + 8);
  v10 = *(a2 + 16);
  v9 = *(a2 + 24);
  v11 = *(a2 + 32);
  v51[0] = *a1;
  v51[1] = v3;
  v51[2] = v5;
  v51[3] = v4;
  v52 = v6;
  v53 = v7;
  v54 = v8;
  v55 = v10;
  v56 = v9;
  v57 = v11;
  switch(v6)
  {
    case 1:
      if (v11 == 1)
      {
        goto LABEL_86;
      }

      goto LABEL_98;
    case 2:
      if (v11 != 2)
      {
        goto LABEL_98;
      }

      sub_26B2A3F6C(v51, &qword_2803F42C8, &qword_26B2BE8F8);
      if (*&v2 == *&v7)
      {
        goto LABEL_37;
      }

      goto LABEL_100;
    case 3:
      if (v11 != 3)
      {
        goto LABEL_98;
      }

      sub_26B2A3F6C(v51, &qword_2803F42C8, &qword_26B2BE8F8);
      v18 = v7 ^ v2 ^ 1;
      return v18 & 1;
    case 4:
      if (v11 != 4)
      {
        goto LABEL_97;
      }

      if (v2 == v7 && v3 == v8)
      {
        sub_26B29B834(v2, v3, v10, v9, 4);
        v12 = v2;
        v13 = v3;
        v14 = v5;
        v15 = v4;
        v16 = 4;
        goto LABEL_71;
      }

      v18 = sub_26B2BC138();
      sub_26B29B834(v7, v8, v10, v9, 4);
      v19 = v2;
      v20 = v3;
      v21 = v5;
      v22 = v4;
      v23 = 4;
      goto LABEL_111;
    case 5:
      if (v11 != 5)
      {
        goto LABEL_98;
      }

      sub_26B2A3F6C(v51, &qword_2803F42C8, &qword_26B2BE8F8);
      v18 = *&v2 == *&v7 && *(&v2 + 1) == *(&v7 + 1);
      return v18 & 1;
    case 6:
      if (v11 != 6)
      {
        goto LABEL_98;
      }

      v29.i64[0] = v2;
      v29.i64[1] = v3;
      v46 = v29;
      sub_26B2A3F6C(v51, &qword_2803F42C8, &qword_26B2BE8F8);
      v30 = vceq_f32(__PAIR64__(v46.u32[1], v2), v7);
      if ((v30.i32[0] & v30.i32[1] & 1) == 0)
      {
        goto LABEL_100;
      }

      v31.i64[0] = v7;
      v31.i64[1] = v8;
      v18 = vmovn_s32(vceqq_f32(v46, v31)).i8[4];
      return v18 & 1;
    case 7:
      if (v11 == 7)
      {
        goto LABEL_76;
      }

      goto LABEL_98;
    case 8:
      if (v11 != 8)
      {
        goto LABEL_98;
      }

LABEL_76:
      sub_26B2A3F6C(v51, &qword_2803F42C8, &qword_26B2BE8F8);
      v18 = 0;
      if (*&v2 == *&v7)
      {
        v32.i64[0] = v2;
        v32.i64[1] = v3;
        v33.i64[0] = v7;
        v33.i64[1] = v8;
        v34 = vmovn_s32(vceqq_f32(v32, v33));
        if (v34.i8[2] & 1) != 0 && (v34.i8[4])
        {
          v18 = v34.i8[6];
        }
      }

      return v18 & 1;
    case 9:
      if (v11 != 9)
      {
        goto LABEL_97;
      }

      v18 = sub_26B29F53C(v2, v7);
      sub_26B29B834(v7, v8, v10, v9, 9);
      v19 = v2;
      v20 = v3;
      v21 = v5;
      v22 = v4;
      v23 = 9;
      goto LABEL_111;
    case 10:
      if (v11 != 10)
      {
        goto LABEL_97;
      }

      v18 = sub_26B29F5B0(v2, v7);
      sub_26B29B834(v7, v8, v10, v9, 10);
      v19 = v2;
      v20 = v3;
      v21 = v5;
      v22 = v4;
      v23 = 10;
      goto LABEL_111;
    case 11:
      if (v11 != 11)
      {
        goto LABEL_97;
      }

      v18 = sub_26B29F630(v2, v7);
      sub_26B29B834(v7, v8, v10, v9, 11);
      v19 = v2;
      v20 = v3;
      v21 = v5;
      v22 = v4;
      v23 = 11;
      goto LABEL_111;
    case 12:
      if (v11 != 12)
      {
        goto LABEL_97;
      }

      if (v2 == v7 && v3 == v8)
      {
        sub_26B29B834(v2, v3, v10, v9, 12);
        v12 = v2;
        v13 = v3;
        v14 = v5;
        v15 = v4;
        v16 = 12;
        goto LABEL_71;
      }

      v18 = sub_26B2BC138();
      sub_26B29B834(v7, v8, v10, v9, 12);
      v19 = v2;
      v20 = v3;
      v21 = v5;
      v22 = v4;
      v23 = 12;
      goto LABEL_111;
    case 13:
      if (v11 != 13)
      {
        goto LABEL_97;
      }

      if (v2 == v7 && v3 == v8)
      {
        sub_26B29B834(v2, v3, v10, v9, 13);
        v12 = v2;
        v13 = v3;
        v14 = v5;
        v15 = v4;
        v16 = 13;
        goto LABEL_71;
      }

      v18 = sub_26B2BC138();
      sub_26B29B834(v7, v8, v10, v9, 13);
      v19 = v2;
      v20 = v3;
      v21 = v5;
      v22 = v4;
      v23 = 13;
      goto LABEL_111;
    case 14:
      if (v11 == 14)
      {
        type metadata accessor for CGColor(0);
        sub_26B29B834(v7, v8, v10, v9, 14);
        sub_26B29B834(v2, v3, v5, v4, 14);
        sub_26B2A3274(&qword_2803F41E0, type metadata accessor for CGColor);
        v17 = sub_26B2BB788();
        goto LABEL_96;
      }

      v44 = v2;
      goto LABEL_98;
    case 15:
      if (v11 != 15)
      {
        sub_26B28E8AC(v2, v3);
        goto LABEL_98;
      }

      sub_26B29B834(v7, v8, v10, v9, 15);
      sub_26B29B834(v2, v3, v5, v4, 15);
      v17 = sub_26B2A2028(v2, v3, v7, v8);
LABEL_96:
      v37 = v17;
      sub_26B2A3F6C(v51, &qword_2803F42C8, &qword_26B2BE8F8);
      return v37 & 1;
    case 16:
      if (v11 != 16)
      {
        goto LABEL_97;
      }

      if (v2 == v7 && v3 == v8)
      {
        sub_26B29B834(v2, v3, v10, v9, 16);
        v12 = v2;
        v13 = v3;
        v14 = v5;
        v15 = v4;
        v16 = 16;
        goto LABEL_71;
      }

      v18 = sub_26B2BC138();
      sub_26B29B834(v7, v8, v10, v9, 16);
      v19 = v2;
      v20 = v3;
      v21 = v5;
      v22 = v4;
      v23 = 16;
      goto LABEL_111;
    case 17:
      if (v11 != 17)
      {
        goto LABEL_97;
      }

      if (v2 == v7 && v3 == v8)
      {
        sub_26B29B834(v2, v3, v10, v9, 17);
        v12 = v2;
        v13 = v3;
        v14 = v5;
        v15 = v4;
        v16 = 17;
        goto LABEL_71;
      }

      v18 = sub_26B2BC138();
      sub_26B29B834(v7, v8, v10, v9, 17);
      v19 = v2;
      v20 = v3;
      v21 = v5;
      v22 = v4;
      v23 = 17;
      goto LABEL_111;
    case 18:
      if (v11 != 18)
      {
        goto LABEL_97;
      }

      if (v2 == v7 && v3 == v8)
      {
        sub_26B29B834(v2, v3, v10, v9, 18);
        v12 = v2;
        v13 = v3;
        v14 = v5;
        v15 = v4;
        v16 = 18;
        goto LABEL_71;
      }

      v18 = sub_26B2BC138();
      sub_26B29B834(v7, v8, v10, v9, 18);
      v19 = v2;
      v20 = v3;
      v21 = v5;
      v22 = v4;
      v23 = 18;
      goto LABEL_111;
    case 19:
      if (v11 == 19)
      {
        goto LABEL_86;
      }

      goto LABEL_98;
    case 20:
      if (v11 != 20)
      {
        goto LABEL_98;
      }

      goto LABEL_86;
    case 21:
      if (v11 != 21)
      {
        goto LABEL_97;
      }

      if (v2 == v7 && v3 == v8)
      {
        sub_26B29B834(v2, v3, v10, v9, 21);
        v12 = v2;
        v13 = v3;
        v14 = v5;
        v15 = v4;
        v16 = 21;
        goto LABEL_71;
      }

      v18 = sub_26B2BC138();
      sub_26B29B834(v7, v8, v10, v9, 21);
      v19 = v2;
      v20 = v3;
      v21 = v5;
      v22 = v4;
      v23 = 21;
LABEL_111:
      sub_26B29B834(v19, v20, v21, v22, v23);
      sub_26B2A3F6C(v51, &qword_2803F42C8, &qword_26B2BE8F8);
      return v18 & 1;
    case 22:
      if (v11 != 22)
      {
        goto LABEL_93;
      }

      if (v2 == v7 && v3 == v8 || (sub_26B2BC138() & 1) != 0)
      {
        v49 = v5;
        v50 = v4;
        v47 = v10;
        v48 = v9;
        sub_26B29B834(v7, v8, v10, v9, 22);
        v24 = v2;
        v25 = v3;
        v26 = v5;
        v27 = v4;
        v28 = 22;
        goto LABEL_92;
      }

      sub_26B29B834(v7, v8, v10, v9, 22);
      v39 = v2;
      v40 = v3;
      v41 = v5;
      v42 = v4;
      v43 = 22;
      goto LABEL_99;
    case 23:
      if (v11 != 23)
      {
        goto LABEL_93;
      }

      if (v2 == v7 && v3 == v8 || (sub_26B2BC138() & 1) != 0)
      {
        v49 = v5;
        v50 = v4;
        v47 = v10;
        v48 = v9;
        sub_26B29B834(v7, v8, v10, v9, 23);
        v24 = v2;
        v25 = v3;
        v26 = v5;
        v27 = v4;
        v28 = 23;
        goto LABEL_92;
      }

      sub_26B29B834(v7, v8, v10, v9, 23);
      v39 = v2;
      v40 = v3;
      v41 = v5;
      v42 = v4;
      v43 = 23;
      goto LABEL_99;
    case 24:
      if (v11 != 24)
      {
LABEL_93:

LABEL_97:

LABEL_98:
        v39 = v7;
        v40 = v8;
        v41 = v10;
        v42 = v9;
        v43 = v11;
        goto LABEL_99;
      }

      if ((v2 != v7 || v3 != v8) && (sub_26B2BC138() & 1) == 0)
      {
        sub_26B29B834(v7, v8, v10, v9, 24);
        v39 = v2;
        v40 = v3;
        v41 = v5;
        v42 = v4;
        v43 = 24;
        goto LABEL_99;
      }

      v49 = v5;
      v50 = v4;
      v47 = v10;
      v48 = v9;
      sub_26B29B834(v7, v8, v10, v9, 24);
      v24 = v2;
      v25 = v3;
      v26 = v5;
      v27 = v4;
      v28 = 24;
LABEL_92:
      sub_26B29B834(v24, v25, v26, v27, v28);
      v35 = type metadata accessor for InspectorProperty();
      v36 = sub_26B2A3274(&qword_2803F4228, type metadata accessor for InspectorProperty);

      v18 = static InspectorCollection.== infix(_:_:)(&v49, &v47, v35, v36);
      sub_26B2A3F6C(v51, &qword_2803F42C8, &qword_26B2BE8F8);

      return v18 & 1;
    case 25:
      if (v11 != 25)
      {
        goto LABEL_97;
      }

      sub_26B29B834(v7, v8, v10, v9, 25);
      sub_26B29B834(v2, v3, v5, v4, 25);
      v17 = sub_26B29F6A4(v2, v7);
      goto LABEL_96;
    case 26:
      if (v11 != 26)
      {
        goto LABEL_97;
      }

      sub_26B29B834(v7, v8, v10, v9, 26);
      sub_26B29B834(v2, v3, v5, v4, 26);
      v17 = sub_26B29F7B8(v2, v7);
      goto LABEL_96;
    case 27:
      if (v11 != 27)
      {
        goto LABEL_97;
      }

      if (!v3)
      {

        sub_26B29B834(v7, v8, v10, v9, 27);
        sub_26B29B834(v2, 0, v5, v4, 27);
        sub_26B2A3F6C(v51, &qword_2803F42C8, &qword_26B2BE8F8);
        if (v8)
        {
          sub_26B2A2FB0(v7, v8, v10, v9, 27);
LABEL_100:
          v18 = 0;
          return v18 & 1;
        }

LABEL_37:
        v18 = 1;
        return v18 & 1;
      }

      if (!v8)
      {
        sub_26B29B834(v7, 0, v10, v9, 27);
        sub_26B29B834(v7, 0, v10, v9, 27);
        v39 = v2;
        v40 = v3;
        v41 = v5;
        v42 = v4;
        v43 = 27;
LABEL_99:
        sub_26B29B834(v39, v40, v41, v42, v43);
        sub_26B2A3F6C(v51, &qword_2803F42C8, &qword_26B2BE8F8);
        goto LABEL_100;
      }

      if (v2 != v7 || v3 != v8)
      {
        v45 = sub_26B2BC138();
        sub_26B29B834(v7, v8, v10, v9, 27);
        sub_26B29B834(v2, v3, v5, v4, 27);
        sub_26B2A3F6C(v51, &qword_2803F42C8, &qword_26B2BE8F8);
        if ((v45 & 1) == 0)
        {
          goto LABEL_100;
        }

        goto LABEL_37;
      }

      sub_26B29B834(v2, v3, v10, v9, 27);
      v12 = v2;
      v13 = v3;
      v14 = v5;
      v15 = v4;
      v16 = 27;
LABEL_71:
      sub_26B29B834(v12, v13, v14, v15, v16);
      sub_26B2A3F6C(v51, &qword_2803F42C8, &qword_26B2BE8F8);
      v18 = 1;
      return v18 & 1;
    default:
      if (v11)
      {
        goto LABEL_98;
      }

LABEL_86:
      sub_26B2A3F6C(v51, &qword_2803F42C8, &qword_26B2BE8F8);
      v18 = v2 == v7;
      return v18 & 1;
  }
}

void sub_26B2A2FB0(void *a1, unint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  switch(a5)
  {
    case 4:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 16:
    case 17:
    case 18:
    case 21:
    case 25:
    case 26:
    case 27:
      goto LABEL_3;
    case 14:

      break;
    case 15:

      sub_26B28F218(a1, a2);
      break;
    case 22:
    case 23:
    case 24:

LABEL_3:

      break;
    default:
      return;
  }
}

unint64_t sub_26B2A30D4()
{
  result = qword_2803F41F0;
  if (!qword_2803F41F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F41F0);
  }

  return result;
}