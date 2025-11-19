uint64_t sub_25F80AB60(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FDB0790);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25F80ABD8(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FDB1128);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25F80AC50()
{
  result = qword_27FDB1160;
  if (!qword_27FDB1160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB1160);
  }

  return result;
}

uint64_t sub_25F80ACA4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FDB1140);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25F80AD10()
{
  result = qword_27FDB1178;
  if (!qword_27FDB1178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB1178);
  }

  return result;
}

uint64_t sub_25F80AD64(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25F80AEA0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF1)
  {
    goto LABEL_17;
  }

  if (a2 + 15 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 15) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 15;
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

      return (*a1 | (v4 << 8)) - 15;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 15;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v8 = v6 - 16;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_25F80AF34(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF1)
  {
    v4 = 0;
  }

  if (a2 > 0xF0)
  {
    v5 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
    *result = a2 + 15;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_25F80B008()
{
  result = qword_27FDB1188;
  if (!qword_27FDB1188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB1188);
  }

  return result;
}

unint64_t sub_25F80B060()
{
  result = qword_27FDB1190;
  if (!qword_27FDB1190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB1190);
  }

  return result;
}

unint64_t sub_25F80B0B8()
{
  result = qword_27FDB1198;
  if (!qword_27FDB1198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB1198);
  }

  return result;
}

unint64_t sub_25F80B110()
{
  result = qword_27FDB11A0;
  if (!qword_27FDB11A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB11A0);
  }

  return result;
}

unint64_t sub_25F80B168()
{
  result = qword_27FDB11A8;
  if (!qword_27FDB11A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB11A8);
  }

  return result;
}

unint64_t sub_25F80B1C0()
{
  result = qword_27FDB11B0;
  if (!qword_27FDB11B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB11B0);
  }

  return result;
}

unint64_t sub_25F80B218()
{
  result = qword_27FDB11B8;
  if (!qword_27FDB11B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB11B8);
  }

  return result;
}

unint64_t sub_25F80B270()
{
  result = qword_27FDB11C0;
  if (!qword_27FDB11C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB11C0);
  }

  return result;
}

unint64_t sub_25F80B2C8()
{
  result = qword_27FDB11C8;
  if (!qword_27FDB11C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB11C8);
  }

  return result;
}

unint64_t sub_25F80B320()
{
  result = qword_27FDB11D0;
  if (!qword_27FDB11D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB11D0);
  }

  return result;
}

unint64_t sub_25F80B378()
{
  result = qword_27FDB11D8;
  if (!qword_27FDB11D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB11D8);
  }

  return result;
}

unint64_t sub_25F80B3D0()
{
  result = qword_27FDB11E0;
  if (!qword_27FDB11E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB11E0);
  }

  return result;
}

uint64_t UserAdjustmentV1.creationDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UserAdjustmentV1() + 20);
  v4 = sub_25F82210C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for UserAdjustmentV1()
{
  result = qword_27FDB1200;
  if (!qword_27FDB1200)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t UserAdjustmentV1.description.getter()
{
  v1 = *(v0 + *(type metadata accessor for UserAdjustmentV1() + 24));

  return v1;
}

uint64_t UserAdjustmentV1.description.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for UserAdjustmentV1() + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

__n128 UserAdjustmentV1.colorShift.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *(v1 + *(type metadata accessor for UserAdjustmentV1() + 28));
  *a1 = result;
  return result;
}

uint64_t UserAdjustmentV1.colorShift.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = type metadata accessor for UserAdjustmentV1();
  v5 = (v1 + *(result + 28));
  *v5 = v2;
  v5[1] = v3;
  return result;
}

uint64_t UserAdjustmentV1.luminanceMultiplicationFactor.setter(float a1)
{
  result = type metadata accessor for UserAdjustmentV1();
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t sub_25F80B728()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x7470697263736564;
  v4 = 0x696853726F6C6F63;
  if (v1 != 3)
  {
    v4 = 0xD00000000000001DLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6E6F697461657263;
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

uint64_t sub_25F80B7D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25F80C6A0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25F80B804(uint64_t a1)
{
  v2 = sub_25F80C0CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25F80B840(uint64_t a1)
{
  v2 = sub_25F80C0CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UserAdjustmentV1.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB11E8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25F80C0CC();
  sub_25F822E5C();
  LOBYTE(v12) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC18);
  sub_25F7D7AA8(&qword_27FDAFE58);
  sub_25F822C4C();
  if (!v2)
  {
    v9 = type metadata accessor for UserAdjustmentV1();
    LOBYTE(v12) = 1;
    sub_25F82210C();
    sub_25F7D5554(&qword_27FDB0720);
    sub_25F822C4C();
    LOBYTE(v12) = 2;
    sub_25F822BEC();
    v12 = *(v3 + *(v9 + 28));
    v11[15] = 3;
    sub_25F7D79EC();
    sub_25F822C4C();
    LOBYTE(v12) = 4;
    sub_25F822C1C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t UserAdjustmentV1.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC18);
  MEMORY[0x28223BE20](v4);
  v32 = &v28 - v5;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB11F8);
  v31 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v7 = &v28 - v6;
  v8 = type metadata accessor for UserAdjustmentV1();
  MEMORY[0x28223BE20](v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25F80C0CC();
  v34 = v7;
  sub_25F822E3C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v11 = v31;
  v12 = v10;
  LOBYTE(v36) = 0;
  sub_25F7D7AA8(&qword_27FDAFE08);
  v14 = v32;
  v13 = v33;
  sub_25F822B6C();
  v32 = v12;
  sub_25F7D7AF8(v14, v12);
  v15 = sub_25F82210C();
  v29 = &v28;
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v36) = 1;
  sub_25F7D5554(&qword_27FDB0738);
  sub_25F822B6C();
  v28 = v16;
  v19 = *(v16 + 32);
  v20 = v32;
  v19(&v32[v8[5]], v18, v15);
  LOBYTE(v36) = 2;
  v21 = v34;
  v29 = 0;
  v22 = sub_25F822B0C();
  v23 = (v20 + v8[6]);
  *v23 = v22;
  v23[1] = v24;
  v35 = 3;
  sub_25F7D7B68();
  sub_25F822B6C();
  *(v20 + v8[7]) = v36;
  LOBYTE(v36) = 4;
  sub_25F822B3C();
  v26 = v25;
  (*(v11 + 8))(v21, v13);
  *(v20 + v8[8]) = v26;
  sub_25F80C120(v20, v30);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return sub_25F80C184(v20);
}

BOOL _s17ProDisplayLibrary16UserAdjustmentV1V2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (sub_25F82213C() & 1) != 0 && (v4 = type metadata accessor for UserAdjustmentV1(), (sub_25F8220EC()) && ((v5 = v4[6], v6 = *(a1 + v5), v7 = *(a1 + v5 + 8), v8 = (a2 + v5), v6 == *v8) ? (v9 = v7 == v8[1]) : (v9 = 0), (v9 || (sub_25F822CBC()) && ((v10 = v4[7], v11 = *(a1 + v10), v12 = *(a1 + v10 + 8), v13 = (a2 + v10), v11 == *v13) ? (v14 = v12 == v13[1]) : (v14 = 0), v14)))
  {
    return *(a1 + v4[8]) == *(a2 + v4[8]);
  }

  else
  {
    return 0;
  }
}

unint64_t sub_25F80C0CC()
{
  result = qword_27FDB11F0;
  if (!qword_27FDB11F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB11F0);
  }

  return result;
}

uint64_t sub_25F80C120(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UserAdjustmentV1();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F80C184(uint64_t a1)
{
  v2 = type metadata accessor for UserAdjustmentV1();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25F80C1E0(uint64_t a1)
{
  *(a1 + 8) = sub_25F80C248(&qword_27FDB04F8);
  result = sub_25F80C248(&qword_27FDB0FA0);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_25F80C248(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UserAdjustmentV1();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25F80C2A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC18);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_25F82210C();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_25F80C3D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC18);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_25F82210C();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_25F80C4E8()
{
  sub_25F7D8038();
  if (v0 <= 0x3F)
  {
    sub_25F82210C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_25F80C59C()
{
  result = qword_27FDB1210;
  if (!qword_27FDB1210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB1210);
  }

  return result;
}

unint64_t sub_25F80C5F4()
{
  result = qword_27FDB1218;
  if (!qword_27FDB1218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB1218);
  }

  return result;
}

unint64_t sub_25F80C64C()
{
  result = qword_27FDB1220;
  if (!qword_27FDB1220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB1220);
  }

  return result;
}

uint64_t sub_25F80C6A0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_25F822CBC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F697461657263 && a2 == 0xEC00000065746144 || (sub_25F822CBC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69 || (sub_25F822CBC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x696853726F6C6F63 && a2 == 0xEA00000000007466 || (sub_25F822CBC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001DLL && 0x800000025F830C90 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_25F822CBC();

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

uint64_t sub_25F80C860(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB1290);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25F80DCA8();
  sub_25F822E5C();
  v8[15] = 0;
  sub_25F822C0C();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_25F822C0C();
  v8[13] = 2;
  sub_25F822C0C();
  v8[12] = 3;
  sub_25F822C0C();
  v8[11] = 4;
  sub_25F822C0C();
  v8[10] = 5;
  sub_25F822C0C();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_25F80CA60()
{
  v1 = *v0;
  v2 = 25462;
  v3 = 98;
  v4 = 0x616D6D6167;
  if (v1 != 4)
  {
    v4 = 0x6E6F6C69737065;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 107;
  if (v1 != 1)
  {
    v5 = 97;
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

uint64_t sub_25F80CAE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25F80D740(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25F80CB10(uint64_t a1)
{
  v2 = sub_25F80DCA8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25F80CB4C(uint64_t a1)
{
  v2 = sub_25F80DCA8();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_25F80CB88@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_25F80D90C(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

BOOL sub_25F80CBE4(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return sub_25F80D28C(v7, v8);
}

uint64_t sub_25F80CC2C(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB1250);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - v6;
  v8 = *v1;
  v9 = *(v1 + 1);
  v17 = *(v1 + 4);
  v18 = v9;
  v16 = v1[20];
  v15 = *(v1 + 6);
  v14 = v1[28];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25F80D4A4();
  sub_25F822E5C();
  v26 = v8;
  v25 = 0;
  sub_25F7D2330();
  sub_25F822C4C();
  if (!v2)
  {
    v10 = v16;
    v11 = v14;
    v20 = v18;
    v24 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB1238);
    sub_25F80D54C(&qword_27FDB1258, sub_25F80D5C4);
    sub_25F822BDC();
    v23 = 2;
    v21 = v10;
    sub_25F822BBC();
    v22 = 3;
    v19 = v11;
    sub_25F822BBC();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_25F80CE98@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB1228);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25F80D4A4();
  sub_25F822E3C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v18 = 0;
  sub_25F7D2684();
  sub_25F822B6C();
  v9 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB1238);
  v17 = 1;
  sub_25F80D54C(&qword_27FDB1240, sub_25F80D4F8);
  sub_25F822AFC();
  v10 = v14[1];
  v16 = 2;
  v14[0] = sub_25F822ADC();
  v15 = 3;
  v12 = sub_25F822ADC();
  (*(v6 + 8))(v8, v5);
  *a2 = v9;
  *(a2 + 8) = v10;
  v13 = BYTE4(v14[0]);
  *(a2 + 16) = v14[0];
  *(a2 + 20) = v13 & 1;
  *(a2 + 24) = v12;
  *(a2 + 28) = BYTE4(v12) & 1;

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t sub_25F80D154()
{
  v1 = 0x647261646E617473;
  v2 = 30540;
  if (*v0 != 2)
  {
    v2 = 25164;
  }

  if (*v0)
  {
    v1 = 0x73746E656D676573;
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

uint64_t sub_25F80D1B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25F80DB54(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25F80D1E0(uint64_t a1)
{
  v2 = sub_25F80D4A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25F80D21C(uint64_t a1)
{
  v2 = sub_25F80D4A4();

  return MEMORY[0x2821FE720](a1, v2);
}

BOOL sub_25F80D2F8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(a1 + 1);
  v4 = *(a1 + 4);
  v5 = a1[20];
  v6 = *(a1 + 6);
  v7 = a1[28];
  v8 = *(a2 + 1);
  v9 = *(a2 + 4);
  v10 = a2[20];
  v11 = *(a2 + 6);
  v12 = a2[28];
  if (v3)
  {
    if (!v8 || (sub_25F805CB4(v3, *(a2 + 1)) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  if (v5)
  {
    if (!v10)
    {
      return 0;
    }
  }

  else
  {
    if (v4 == v9)
    {
      v14 = v10;
    }

    else
    {
      v14 = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  if ((v7 & 1) == 0)
  {
    if (v6 == v11)
    {
      v15 = v12;
    }

    else
    {
      v15 = 1;
    }

    return (v15 & 1) == 0;
  }

  return (v12 & 1) != 0;
}

__n128 __swift_memcpy29_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 13) = *(a2 + 13);
  *a1 = result;
  return result;
}

uint64_t sub_25F80D3DC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 29))
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

uint64_t sub_25F80D438(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 28) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 29) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 29) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_25F80D4A4()
{
  result = qword_27FDB1230;
  if (!qword_27FDB1230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB1230);
  }

  return result;
}

unint64_t sub_25F80D4F8()
{
  result = qword_27FDB1248;
  if (!qword_27FDB1248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB1248);
  }

  return result;
}

uint64_t sub_25F80D54C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FDB1238);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25F80D5C4()
{
  result = qword_27FDB1260;
  if (!qword_27FDB1260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB1260);
  }

  return result;
}

unint64_t sub_25F80D63C()
{
  result = qword_27FDB1268;
  if (!qword_27FDB1268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB1268);
  }

  return result;
}

unint64_t sub_25F80D694()
{
  result = qword_27FDB1270;
  if (!qword_27FDB1270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB1270);
  }

  return result;
}

unint64_t sub_25F80D6EC()
{
  result = qword_27FDB1278;
  if (!qword_27FDB1278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB1278);
  }

  return result;
}

uint64_t sub_25F80D740(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25462 && a2 == 0xE200000000000000;
  if (v3 || (sub_25F822CBC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 107 && a2 == 0xE100000000000000 || (sub_25F822CBC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 97 && a2 == 0xE100000000000000 || (sub_25F822CBC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 98 && a2 == 0xE100000000000000 || (sub_25F822CBC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x616D6D6167 && a2 == 0xE500000000000000 || (sub_25F822CBC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E6F6C69737065 && a2 == 0xE700000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_25F822CBC();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_25F80D90C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB1280);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25F80DCA8();
  sub_25F822E3C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v28 = 0;
  sub_25F822B2C();
  v10 = v9;
  v27 = 1;
  sub_25F822B2C();
  v12 = v11;
  v26 = 2;
  sub_25F822B2C();
  v14 = v13;
  v25 = 3;
  sub_25F822B2C();
  v16 = v15;
  v24 = 4;
  sub_25F822B2C();
  v18 = v17;
  v23 = 5;
  sub_25F822B2C();
  v20 = v19;
  (*(v6 + 8))(v8, v5);
  result = __swift_destroy_boxed_opaque_existential_0Tm(a1);
  *a2 = v10;
  a2[1] = v12;
  a2[2] = v14;
  a2[3] = v16;
  a2[4] = v18;
  a2[5] = v20;
  return result;
}

uint64_t sub_25F80DB54(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x647261646E617473 && a2 == 0xE800000000000000;
  if (v4 || (sub_25F822CBC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73746E656D676573 && a2 == 0xE800000000000000 || (sub_25F822CBC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 30540 && a2 == 0xE200000000000000 || (sub_25F822CBC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 25164 && a2 == 0xE200000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_25F822CBC();

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

unint64_t sub_25F80DCA8()
{
  result = qword_27FDB1288;
  if (!qword_27FDB1288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB1288);
  }

  return result;
}

unint64_t sub_25F80DD10()
{
  result = qword_27FDB1298;
  if (!qword_27FDB1298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB1298);
  }

  return result;
}

unint64_t sub_25F80DD68()
{
  result = qword_27FDB12A0;
  if (!qword_27FDB12A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB12A0);
  }

  return result;
}

unint64_t sub_25F80DDC0()
{
  result = qword_27FDB12A8;
  if (!qword_27FDB12A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB12A8);
  }

  return result;
}

uint64_t sub_25F80DE14@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_25F80DE6C@<X0>(uint64_t a1@<X0>, _WORD *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    LOWORD(v4) = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t CTA861.ColorimetryDataBlock.addStandardSupport(_:)()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 16);
  v3 = *(v1 + 24);
  sub_25F76E658(v2, v3);
  v4 = sub_25F82205C();
  v6 = v5;
  sub_25F76D178(v2, v3);
  v7 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v7 != 2)
    {
      goto LABEL_9;
    }

    v8 = *(v4 + 16);
    v9 = *(v4 + 24);
    if (sub_25F821E4C() && __OFSUB__(v8, sub_25F821E7C()))
    {
      goto LABEL_25;
    }

    if (!__OFSUB__(v9, v8))
    {
      sub_25F821E6C();
LABEL_9:
      sub_25F76D178(v4, v6);
      goto LABEL_22;
    }

LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (!v7)
  {
    goto LABEL_9;
  }

  if (v4 >> 32 < v4)
  {
    __break(1u);
    goto LABEL_24;
  }

  v10 = sub_25F821E4C();
  if (v10)
  {
    v11 = sub_25F821E7C();
    if (!__OFSUB__(v4, v11))
    {
      v10 += v4 - v11;
      goto LABEL_15;
    }

LABEL_26:
    __break(1u);
  }

LABEL_15:
  v12 = sub_25F821E6C();
  if (v12 >= (v4 >> 32) - v4)
  {
    v13 = (v4 >> 32) - v4;
  }

  else
  {
    v13 = v12;
  }

  v14 = v13 + v10;
  if (v10)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  sub_25F7E2CF4(sub_25F7E2E20, 0, v10, v15);
  sub_25F76D178(v4, v6);
LABEL_22:
  swift_beginAccess();
  sub_25F821FAC();
  return swift_endAccess();
}

uint64_t CTA861.ColorimetryDataBlock.removeStandardSupport(_:)()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 16);
  v3 = *(v1 + 24);
  sub_25F76E658(v2, v3);
  v4 = sub_25F82205C();
  v6 = v5;
  sub_25F76D178(v2, v3);
  v7 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v7 != 2)
    {
      goto LABEL_9;
    }

    v8 = *(v4 + 16);
    v9 = *(v4 + 24);
    if (sub_25F821E4C() && __OFSUB__(v8, sub_25F821E7C()))
    {
      goto LABEL_25;
    }

    if (!__OFSUB__(v9, v8))
    {
      sub_25F821E6C();
LABEL_9:
      sub_25F76D178(v4, v6);
      goto LABEL_22;
    }

LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (!v7)
  {
    goto LABEL_9;
  }

  if (v4 >> 32 < v4)
  {
    __break(1u);
    goto LABEL_24;
  }

  v10 = sub_25F821E4C();
  if (v10)
  {
    v11 = sub_25F821E7C();
    if (!__OFSUB__(v4, v11))
    {
      v10 += v4 - v11;
      goto LABEL_15;
    }

LABEL_26:
    __break(1u);
  }

LABEL_15:
  v12 = sub_25F821E6C();
  if (v12 >= (v4 >> 32) - v4)
  {
    v13 = (v4 >> 32) - v4;
  }

  else
  {
    v13 = v12;
  }

  v14 = v13 + v10;
  if (v10)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  sub_25F7E2CF4(sub_25F7E2E20, 0, v10, v15);
  sub_25F76D178(v4, v6);
LABEL_22:
  swift_beginAccess();
  sub_25F821FAC();
  return swift_endAccess();
}

uint64_t CTA861.ColorimetryDataBlock.data.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  sub_25F76E658(v1, *(v0 + 24));
  return v1;
}

void CTA861.ColorimetryDataBlock.ColorimetryStandards.description.getter()
{
  v1 = 0;
  v2 = MEMORY[0x277D84F90];
  v3 = *v0;
LABEL_2:
  if (v1 <= 0xC)
  {
    v4 = 12;
  }

  else
  {
    v4 = v1;
  }

  v5 = v4 + 1;
  v6 = (&unk_2871C41C8 + 24 * v1 + 32);
  while (v1 != 12)
  {
    if (v5 == ++v1)
    {
      __break(1u);
      return;
    }

    v7 = v6 + 12;
    v8 = *v6;
    v6 += 12;
    if ((v8 & ~v3) == 0)
    {
      v10 = *(v7 - 2);
      v9 = *(v7 - 1);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_25F817BE8(0, v2[2] + 1, 1);
      }

      v12 = v2[2];
      v11 = v2[3];
      if (v12 >= v11 >> 1)
      {
        sub_25F817BE8((v11 > 1), v12 + 1, 1);
      }

      v2[2] = v12 + 1;
      v13 = &v2[3 * v12];
      *(v13 + 16) = v8;
      v13[5] = v10;
      v13[6] = v9;
      goto LABEL_2;
    }
  }

  v14 = v2[2];
  if (v14)
  {
    v24 = MEMORY[0x277D84F90];
    sub_25F817BC8(0, v14, 0);
    v15 = v2 + 6;
    do
    {
      v17 = *(v15 - 1);
      v16 = *v15;
      v19 = *(v24 + 16);
      v18 = *(v24 + 24);

      if (v19 >= v18 >> 1)
      {
        sub_25F817BC8((v18 > 1), v19 + 1, 1);
      }

      *(v24 + 16) = v19 + 1;
      v20 = v24 + 16 * v19;
      *(v20 + 32) = v17;
      *(v20 + 40) = v16;
      v15 += 3;
      --v14;
    }

    while (v14);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBE8);
  sub_25F7A4594();
  v21 = sub_25F8222EC();
  v23 = v22;

  MEMORY[0x25F8E7510](v21, v23);

  MEMORY[0x25F8E7510](93, 0xE100000000000000);
}

BOOL sub_25F80E6A0(_WORD *a1, unsigned __int16 *a2)
{
  v3 = *a2;
  v4 = *v2;
  if ((v4 & v3) != v3)
  {
    *v2 = v4 | v3;
  }

  *a1 = v3;
  return (v4 & v3) != v3;
}

unsigned __int16 *sub_25F80E6D0@<X0>(unsigned __int16 *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  v5 = v4 & v3;
  if ((v4 & v3) != 0)
  {
    *v2 = v4 & ~v3;
  }

  *a2 = v5;
  *(a2 + 2) = v5 == 0;
  return result;
}

unsigned __int16 *sub_25F80E6FC@<X0>(unsigned __int16 *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 = v4 | v3;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 2) = v5 == 0;
  return result;
}

_WORD *sub_25F80E7D0@<X0>(_WORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 2) = 0;
  return result;
}

uint64_t CTA861.ColorimetryDataBlock.__allocating_init(_:)(uint64_t a1, unint64_t a2)
{
  v5 = swift_allocObject();
  result = sub_25F779394(a1, a2);
  if (v2)
  {
    goto LABEL_10;
  }

  v7 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v7 != 2)
    {
      goto LABEL_9;
    }

    v9 = *(a1 + 16);
    v8 = *(a1 + 24);
    v10 = __OFSUB__(v8, v9);
    v11 = v8 - v9;
    if (!v10)
    {
      if (v11 >= 2)
      {
LABEL_14:
        *(v5 + 16) = a1;
        *(v5 + 24) = a2;
        return v5;
      }

LABEL_9:
      sub_25F779604();
      swift_allocError();
      *v12 = 0xD00000000000003FLL;
      *(v12 + 8) = 0x800000025F82D860;
      *(v12 + 16) = 0;
      swift_willThrow();
LABEL_10:
      sub_25F76D178(a1, a2);
      swift_deallocPartialClassInstance();
      return v5;
    }

    __break(1u);
  }

  else
  {
    if (!v7)
    {
      if (BYTE6(a2) >= 2uLL)
      {
        goto LABEL_14;
      }

      goto LABEL_9;
    }

    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 >= 2)
      {
        goto LABEL_14;
      }

      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t CTA861.ColorimetryDataBlock.init(_:)(uint64_t a1, unint64_t a2)
{
  result = sub_25F779394(a1, a2);
  if (v3)
  {
    goto LABEL_10;
  }

  v7 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v7 != 2)
    {
      goto LABEL_9;
    }

    v9 = *(a1 + 16);
    v8 = *(a1 + 24);
    v10 = __OFSUB__(v8, v9);
    v11 = v8 - v9;
    if (!v10)
    {
      if (v11 >= 2)
      {
LABEL_14:
        *(v2 + 16) = a1;
        *(v2 + 24) = a2;
        return v2;
      }

LABEL_9:
      sub_25F779604();
      swift_allocError();
      *v12 = 0xD00000000000003FLL;
      *(v12 + 8) = 0x800000025F82D860;
      *(v12 + 16) = 0;
      swift_willThrow();
LABEL_10:
      sub_25F76D178(a1, a2);
      swift_deallocPartialClassInstance();
      return v2;
    }

    __break(1u);
  }

  else
  {
    if (!v7)
    {
      if (BYTE6(a2) >= 2uLL)
      {
        goto LABEL_14;
      }

      goto LABEL_9;
    }

    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 >= 2)
      {
        goto LABEL_14;
      }

      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

__n128 CTA861.ColorimetryDataBlock.hierarchicalDescription.getter@<Q0>(void *a1@<X8>)
{
  v2 = v1;
  v35 = *MEMORY[0x277D85DE8];
  v4 = sub_25F7A4A38();
  sub_25F802E24(v4, v5, MEMORY[0x277D84F90], a1);
  v33 = 0;
  v34 = 0xE000000000000000;
  sub_25F82292C();

  v29 = 0xD000000000000015;
  *&v30 = 0x800000025F830CB0;
  swift_beginAccess();
  v6 = *(v1 + 16);
  v7 = *(v2 + 24);
  sub_25F76E658(v6, v7);
  v8 = sub_25F82205C();
  v10 = v9;
  sub_25F76D178(v6, v7);
  v11 = v10 >> 62;
  if ((v10 >> 62) > 1)
  {
    if (v11 != 2)
    {
      v32 = 0;
      sub_25F76D178(v8, v10);
      LOWORD(v8) = 0;
      goto LABEL_24;
    }

    v12 = *(v8 + 16);
    v13 = *(v8 + 24);
    v14 = sub_25F821E4C();
    if (v14)
    {
      v15 = sub_25F821E7C();
      if (__OFSUB__(v12, v15))
      {
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      v14 = (v14 + v12 - v15);
    }

    if (!__OFSUB__(v13, v12))
    {
      sub_25F821E6C();
      if (v14)
      {
        v32 = *v14;
        sub_25F76D178(v8, v10);
        LOWORD(v8) = v32;
      }

      else
      {
        sub_25F76D178(v8, v10);
      }

      goto LABEL_24;
    }

LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (!v11)
  {
    v32 = v8;
    sub_25F76D178(v8, v10);
    goto LABEL_24;
  }

  if (v8 >> 32 < v8)
  {
    __break(1u);
    goto LABEL_30;
  }

  v16 = sub_25F821E4C();
  if (v16)
  {
    v17 = sub_25F821E7C();
    if (!__OFSUB__(v8, v17))
    {
      v16 += v8 - v17;
      goto LABEL_15;
    }

LABEL_32:
    __break(1u);
  }

LABEL_15:
  v18 = sub_25F821E6C();
  if (v18 >= (v8 >> 32) - v8)
  {
    v19 = (v8 >> 32) - v8;
  }

  else
  {
    v19 = v18;
  }

  v20 = v19 + v16;
  if (v16)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  sub_25F7E2CF4(sub_25F7E2E20, 0, v16, v21);
  sub_25F76D178(v8, v10);
  LOWORD(v8) = v32;
LABEL_24:
  v31 = v8;
  CTA861.ColorimetryDataBlock.ColorimetryStandards.description.getter();
  MEMORY[0x25F8E7510]();

  sub_25F802E24(v29, v30, MEMORY[0x277D84F90], &v29);
  v22 = v29;
  v28 = v30;
  v23 = a1[2];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v23 = sub_25F75C38C(0, *(v23 + 2) + 1, 1, v23);
  }

  v25 = *(v23 + 2);
  v24 = *(v23 + 3);
  if (v25 >= v24 >> 1)
  {
    v23 = sub_25F75C38C((v24 > 1), v25 + 1, 1, v23);
  }

  *(v23 + 2) = v25 + 1;
  v26 = &v23[24 * v25];
  *(v26 + 4) = v22;
  result = v28;
  *(v26 + 40) = v28;
  a1[2] = v23;
  return result;
}

uint64_t CTA861.ColorimetryDataBlock.supportedStandards()@<X0>(_WORD *a1@<X8>)
{
  swift_beginAccess();
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_25F76E658(v4, v3);
  v5 = sub_25F82205C();
  v7 = v6;
  sub_25F76D178(v4, v3);
  v8 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    if (v8 != 2)
    {
      *a1 = 0;
      return sub_25F76D178(v5, v7);
    }

    v9 = *(v5 + 16);
    v10 = *(v5 + 24);
    v11 = sub_25F821E4C();
    if (v11)
    {
      v12 = sub_25F821E7C();
      if (__OFSUB__(v9, v12))
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v11 += v9 - v12;
    }

    v13 = __OFSUB__(v10, v9);
    v14 = v10 - v9;
    if (!v13)
    {
      goto LABEL_15;
    }

    __break(1u);
  }

  else if (!v8)
  {
    *a1 = v5;
    return sub_25F76D178(v5, v7);
  }

  v14 = (v5 >> 32) - v5;
  if (v5 >> 32 < v5)
  {
    __break(1u);
    goto LABEL_25;
  }

  v11 = sub_25F821E4C();
  if (v11)
  {
    v15 = sub_25F821E7C();
    if (!__OFSUB__(v5, v15))
    {
      v11 += v5 - v15;
      goto LABEL_15;
    }

LABEL_26:
    __break(1u);
  }

LABEL_15:
  v16 = sub_25F821E6C();
  if (v16 >= v14)
  {
    v17 = v14;
  }

  else
  {
    v17 = v16;
  }

  v18 = v17 + v11;
  if (v11)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  sub_25F7FEE98(v11, v19, 0, a1);
  return sub_25F76D178(v5, v7);
}

uint64_t CTA861.ColorimetryDataBlock.__deallocating_deinit()
{
  sub_25F76D178(*(v0 + 16), *(v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_25F80EF68@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = swift_allocObject();
  result = CTA861.ColorimetryDataBlock.init(_:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

unint64_t sub_25F80EFF8()
{
  result = qword_27FDB12B0;
  if (!qword_27FDB12B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB12B0);
  }

  return result;
}

unint64_t sub_25F80F050()
{
  result = qword_27FDB12B8;
  if (!qword_27FDB12B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB12B8);
  }

  return result;
}

unint64_t sub_25F80F0A8()
{
  result = qword_27FDB12C0;
  if (!qword_27FDB12C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB12C0);
  }

  return result;
}

unint64_t sub_25F80F100()
{
  result = qword_27FDB12C8;
  if (!qword_27FDB12C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB12C8);
  }

  return result;
}

uint64_t sub_25F80F154(uint64_t a1)
{
  result = sub_25F80F200(&qword_27FDB12D0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25F80F1BC(uint64_t a1)
{
  result = sub_25F80F200(&qword_27FDB12D8);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_25F80F200(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CTA861.ColorimetryDataBlock();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double ColorSpace.primaries.getter@<D0>(void *a1@<X8>, double result@<D0>)
{
  v3 = *v2;
  v4 = v2[1];
  v6 = v2[2];
  v5 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  if (*(v2 + 48) != 1)
  {
    *a1 = v3;
    a1[1] = v4;
    a1[2] = v6;
    a1[3] = v5;
    a1[4] = v7;
    a1[5] = v8;
    return result;
  }

  v9 = v6 | v4;
  v10 = v7 | v8;
  if (!(v9 | v3 | v5 | v10))
  {
    v13 = xmmword_25F823D10;
    v14 = xmmword_25F823D20;
    goto LABEL_12;
  }

  v11 = v9 | v5 | v10;
  v12 = v3 == 1 && v11 == 0;
  if (v12 || v3 == 2 && !v11)
  {
    v13 = xmmword_25F82B270;
    v14 = xmmword_25F82B2C0;
LABEL_12:
    *a1 = v13;
    *(a1 + 1) = v14;
    result = 0.15;
    *(a1 + 2) = xmmword_25F823D30;
    return result;
  }

  if (v3 != 3 || v11)
  {
    if (v3 == 4 && !v11)
    {
      v13 = xmmword_25F82B270;
      v14 = xmmword_25F82B280;
      goto LABEL_12;
    }

    *a1 = xmmword_25F82B240;
    *(a1 + 1) = xmmword_25F82B250;
    result = 0.131;
    *(a1 + 2) = xmmword_25F82B260;
  }

  else
  {
    *a1 = xmmword_25F82B290;
    *(a1 + 1) = xmmword_25F82B2A0;
    result = 0.155;
    *(a1 + 2) = xmmword_25F82B2B0;
  }

  return result;
}

uint64_t ColorSpace.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  if (*(v0 + 48) == 1)
  {
    if (v4 | v2 | v1 | v3 | v5 | v6)
    {
      v7 = v4 | v2 | v3 | v5 | v6;
      if (v1 == 1 && v7 == 0)
      {
        v9 = 1;
      }

      else if (v1 != 2 || v7)
      {
        if (v1 != 3 || v7)
        {
          if (v1 != 4 || v7)
          {
            v9 = 5;
          }

          else
          {
            v9 = 4;
          }
        }

        else
        {
          v9 = 3;
        }
      }

      else
      {
        v9 = 2;
      }
    }

    else
    {
      v9 = 0;
    }

    return MEMORY[0x25F8E7E80](v9);
  }

  else
  {
    MEMORY[0x25F8E7E80](6);
    return Primaries.hash(into:)();
  }
}

uint64_t ColorSpace.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = *(v0 + 48);
  sub_25F822DCC();
  if (v7 == 1)
  {
    if (v4 | v2 | v1 | v3 | v5 | v6)
    {
      v8 = v4 | v2 | v3 | v5 | v6;
      if (v1 == 1 && v8 == 0)
      {
        v10 = 1;
      }

      else if (v1 != 2 || v8)
      {
        if (v1 != 3 || v8)
        {
          if (v1 != 4 || v8)
          {
            v10 = 5;
          }

          else
          {
            v10 = 4;
          }
        }

        else
        {
          v10 = 3;
        }
      }

      else
      {
        v10 = 2;
      }
    }

    else
    {
      v10 = 0;
    }

    MEMORY[0x25F8E7E80](v10);
  }

  else
  {
    MEMORY[0x25F8E7E80](6);
    Primaries.hash(into:)();
  }

  return sub_25F822E0C();
}

uint64_t sub_25F80F69C()
{
  sub_25F822DCC();
  ColorSpace.hash(into:)();
  return sub_25F822E0C();
}

uint64_t ColorSpace.description.getter(double a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v7 = *(v1 + 32);
  v6 = *(v1 + 40);
  if (*(v1 + 48) != 1)
  {
    sub_25F82292C();

    strcpy(v14, "CustomSpace( ");
    v15 = -4864;
    v16 = v2;
    v17 = v3;
    v18 = v5;
    v19 = v4;
    v20 = v7;
    v21 = v6;
    v11 = Primaries.description.getter();
    MEMORY[0x25F8E7510](v11);

    MEMORY[0x25F8E7510](10528, 0xE200000000000000);
    return *v14;
  }

  if (!(v5 | v3 | v2 | v4 | v7 | v6))
  {
    v23[0] = 539505488;
    v23[1] = 0xE400000000000000;
    v16 = 0;
    v17 = 0;
LABEL_21:
    v18 = 0;
    v19 = v4;
    v20 = v7;
    v21 = v6;
    v22 = 1;
    goto LABEL_22;
  }

  v8 = v5 | v3 | v4 | v7 | v6;
  if (v2 != 1 || v8 != 0)
  {
    if (v2 != 2 || v8)
    {
      if (v2 != 3 || v8)
      {
        if (v2 != 4 || v8)
        {
          strcpy(v23, "BT2020( ");
          BYTE1(v23[1]) = 0;
          WORD1(v23[1]) = 0;
          HIDWORD(v23[1]) = -402653184;
          v10 = 5;
        }

        else
        {
          strcpy(v23, "EBU_PAL( ");
          WORD1(v23[1]) = 0;
          HIDWORD(v23[1]) = -385875968;
          v10 = 4;
        }
      }

      else
      {
        v16 = 0;
        v17 = 0xE000000000000000;
        sub_25F82292C();

        strcpy(v23, "SMPTE_C_NTSC( ");
        HIBYTE(v23[1]) = -18;
        v10 = 3;
      }
    }

    else
    {
      v16 = 0;
      v17 = 0xE000000000000000;
      sub_25F82292C();

      strcpy(v23, "Rec709_sRGB( ");
      HIWORD(v23[1]) = -4864;
      v10 = 2;
    }

    v16 = v10;
    v17 = 0;
    goto LABEL_21;
  }

  sub_25F82292C();

  strcpy(v23, "Rec709_sRGB( ");
  HIWORD(v23[1]) = -4864;
  v16 = 1;
  v17 = 0;
  v18 = 0;
  v19 = v4;
  v20 = v7;
  v21 = v6;
  v22 = 1;
LABEL_22:
  ColorSpace.primaries.getter(v14, a1);
  v13 = Primaries.description.getter();
  MEMORY[0x25F8E7510](v13);

  MEMORY[0x25F8E7510](10528, 0xE200000000000000);
  return v23[0];
}

ProDisplayLibrary::ColorSpace::CodingKeys_optional __swiftcall ColorSpace.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v3 = v1;
  v4 = stringValue._countAndFlagsBits == 13136 && stringValue._object == 0xE200000000000000;
  if (v4 || (countAndFlagsBits = stringValue._countAndFlagsBits, (sub_25F822CBC() & 1) != 0))
  {

    v7 = 0;
  }

  else if (countAndFlagsBits == 0x393037636552 && object == 0xE600000000000000 || (sub_25F822CBC() & 1) != 0)
  {

    v7 = 1;
  }

  else if (countAndFlagsBits == 1111970419 && object == 0xE400000000000000 || (sub_25F822CBC() & 1) != 0)
  {

    v7 = 2;
  }

  else if (countAndFlagsBits == 0x5F435F4554504D53 && object == 0xEC0000004353544ELL || (sub_25F822CBC() & 1) != 0)
  {

    v7 = 3;
  }

  else if (countAndFlagsBits == 0x4C41505F554245 && object == 0xE700000000000000 || (sub_25F822CBC() & 1) != 0)
  {

    v7 = 4;
  }

  else if (countAndFlagsBits == 0x303230325442 && object == 0xE600000000000000 || (sub_25F822CBC() & 1) != 0)
  {

    v7 = 5;
  }

  else if (countAndFlagsBits == 0x6D6F74737543 && object == 0xE600000000000000)
  {

    v7 = 6;
  }

  else
  {
    v8 = sub_25F822CBC();

    if (v8)
    {
      v7 = 6;
    }

    else
    {
      v7 = 7;
    }
  }

  *v3 = v7;
  return result;
}

uint64_t ColorSpace.CodingKeys.hashValue.getter()
{
  v1 = *v0;
  sub_25F822DCC();
  MEMORY[0x25F8E7E80](v1);
  return sub_25F822E0C();
}

uint64_t ColorSpace.CodingKeys.stringValue.getter()
{
  v1 = *v0;
  v2 = 13136;
  v3 = 0x303230325442;
  if (v1 != 5)
  {
    v3 = 0x6D6F74737543;
  }

  v4 = 0x5F435F4554504D53;
  if (v1 != 3)
  {
    v4 = 0x4C41505F554245;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x393037636552;
  if (v1 != 1)
  {
    v5 = 1111970419;
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

uint64_t sub_25F80FD80()
{
  v1 = *v0;
  v2 = 13136;
  v3 = 0x303230325442;
  if (v1 != 5)
  {
    v3 = 0x6D6F74737543;
  }

  v4 = 0x5F435F4554504D53;
  if (v1 != 3)
  {
    v4 = 0x4C41505F554245;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x393037636552;
  if (v1 != 1)
  {
    v5 = 1111970419;
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

uint64_t sub_25F80FE48(uint64_t a1)
{
  v2 = sub_25F8108DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25F80FE84(uint64_t a1)
{
  v2 = sub_25F8108DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ColorSpace.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB12E0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25F8108DC();
  sub_25F822E3C();
  if (!v2)
  {
    v9 = sub_25F822B8C();
    v10 = (2 * *(v9 + 16)) | 1;
    v20 = v9;
    v21 = v9 + 32;
    v22 = 0;
    v23 = v10;
    sub_25F7DAE5C(v19);
    if (LOBYTE(v19[0]) != 7 && v22 == v23 >> 1)
    {
      if (LOBYTE(v19[0]) <= 2u)
      {
        if (!LOBYTE(v19[0]))
        {
          (*(v6 + 8))(v8, v5);
          swift_unknownObjectRelease();
          v11 = 0uLL;
          v15 = 1;
          v16 = 0uLL;
LABEL_18:
          v17 = 0uLL;
LABEL_19:
          *a2 = v11;
          *(a2 + 16) = v16;
          *(a2 + 32) = v17;
          *(a2 + 48) = v15;
          return __swift_destroy_boxed_opaque_existential_0Tm(a1);
        }

        if (LOBYTE(v19[0]) == 1)
        {
          (*(v6 + 8))(v8, v5);
          swift_unknownObjectRelease();
          v11 = xmmword_25F829FE0;
        }

        else
        {
          (*(v6 + 8))(v8, v5);
          swift_unknownObjectRelease();
          v11 = xmmword_25F824920;
        }
      }

      else if (LOBYTE(v19[0]) > 4u)
      {
        if (LOBYTE(v19[0]) != 5)
        {
          v24 = 6;
          sub_25F810930();
          sub_25F822B6C();
          (*(v6 + 8))(v8, v5);
          swift_unknownObjectRelease();
          v15 = 0;
          v11 = v19[0];
          v16 = v19[1];
          v17 = v19[2];
          goto LABEL_19;
        }

        (*(v6 + 8))(v8, v5);
        swift_unknownObjectRelease();
        v11 = xmmword_25F829FD0;
      }

      else if (LOBYTE(v19[0]) == 3)
      {
        (*(v6 + 8))(v8, v5);
        swift_unknownObjectRelease();
        v11 = xmmword_25F824930;
      }

      else
      {
        (*(v6 + 8))(v8, v5);
        swift_unknownObjectRelease();
        v11 = xmmword_25F828500;
      }

      v16 = 0uLL;
      v15 = 1;
      goto LABEL_18;
    }

    v12 = sub_25F82298C();
    swift_allocError();
    v14 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB0A98);
    *v14 = &type metadata for ColorSpace;
    sub_25F822ABC();
    sub_25F82296C();
    (*(*(v12 - 8) + 104))(v14, *MEMORY[0x277D84160], v12);
    swift_willThrow();
    (*(v6 + 8))(v8, v5);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t ColorSpace.encode(to:)(void *a1)
{
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB12F8);
  v37 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v3 = *v1;
  v21 = *(v1 + 8);
  v4 = *(v1 + 24);
  v20 = *(v1 + 16);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = a1[3];
  v9 = a1;
  v11 = &v19 - v10;
  __swift_project_boxed_opaque_existential_1(v9, v8);
  sub_25F8108DC();
  sub_25F822E5C();
  if (v7 == 1)
  {
    v13 = v22;
    v14 = v5;
    if (!(v20 | v21 | v3 | v4 | v5 | v6))
    {
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v33 = v4;
      v34 = v5;
      v35 = v6;
      v36 = 1;
      ColorSpace.primaries.getter(&v27, v12);
      v24 = v27;
      v25 = v28;
      v26 = v29;
      v23 = 0;
      goto LABEL_8;
    }

    v15 = v20 | v21 | v4 | v5 | v6;
    if (v3 == 1 && !v15)
    {
      v31 = 0;
      v32 = 0;
      v30 = 1;
      v33 = v4;
      v34 = v5;
      v35 = v6;
      v36 = 1;
      ColorSpace.primaries.getter(&v27, v12);
      v24 = v27;
      v25 = v28;
      v26 = v29;
      v23 = 1;
LABEL_8:
      sub_25F810984();
      sub_25F822C4C();
      return (*(v37 + 8))(v11, v13);
    }

    if (v3 != 2 || v15)
    {
      if (v3 != 3 || v15)
      {
        if (v3 != 4 || v15)
        {
          v18 = 5;
        }

        else
        {
          v18 = 4;
        }
      }

      else
      {
        v18 = 3;
      }
    }

    else
    {
      v18 = 2;
    }

    v31 = 0;
    v32 = 0;
    v30 = v18;
    v33 = v4;
    v34 = v14;
    v35 = v6;
    v36 = 1;
    ColorSpace.primaries.getter(&v27, v12);
    v24 = v27;
    v25 = v28;
    v26 = v29;
    v23 = v18;
    sub_25F810984();
    v16 = v13;
  }

  else
  {
    v30 = v3;
    v31 = v21;
    v32 = v20;
    v33 = v4;
    v34 = v5;
    v35 = v6;
    LOBYTE(v27) = 6;
    sub_25F810984();
    v16 = v22;
  }

  sub_25F822C4C();
  return (*(v37 + 8))(v11, v16);
}

BOOL _s17ProDisplayLibrary10ColorSpaceO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  v10 = *a2;
  v11 = *(a2 + 8);
  v13 = *(a2 + 16);
  v12 = *(a2 + 24);
  v14 = *(a2 + 32);
  v15 = *(a2 + 40);
  if (*(a1 + 48) == 1)
  {
    v16 = v9 | v8;
    if (v6 | *&v4 | *&v5 | v7 | v16)
    {
      v17 = v6 | *&v4 | v7 | v16;
      if (*&v5 == 1 && !v17)
      {
        if (!*(a2 + 48))
        {
          return 0;
        }

        v18 = v13 | *&v11;
        v19 = v14 | v15;
        return v18 | *&v10 | v12 | v19 && *&v10 == 1 && !(v18 | v12 | v19);
      }

      if (*&v5 == 2 && !v17)
      {
        if (!*(a2 + 48))
        {
          return 0;
        }

        v23 = v13 | *&v11;
        v24 = v14 | v15;
        if (!(v23 | *&v10 | v12 | v24))
        {
          return 0;
        }

        v25 = v23 | v12 | v24;
        if (*&v10 == 1 && !v25)
        {
          return 0;
        }

        if (*&v10 != 2)
        {
          return 0;
        }

        return !v25;
      }

      if (*&v5 == 3 && !v17)
      {
        if (!*(a2 + 48))
        {
          return 0;
        }

        v26 = v13 | *&v11;
        v27 = v14 | v15;
        if (!(v26 | *&v10 | v12 | v27))
        {
          return 0;
        }

        v25 = v26 | v12 | v27;
        if ((*&v10 - 1) <= 1 && !v25)
        {
          return 0;
        }

        if (*&v10 != 3)
        {
          return 0;
        }

        return !v25;
      }

      if (*&v5 != 4 || v17)
      {
        if ((*(a2 + 48) & 1) == 0)
        {
          return 0;
        }

        v33 = v13 | *&v11;
        v34 = v14 | v15;
        if (!(v33 | *&v10 | v12 | v34))
        {
          return 0;
        }

        v35 = v33 | v12 | v34;
        if ((*&v10 - 1) <= 2 && !v35)
        {
          return 0;
        }

        return *&v10 != 4 || v35 != 0;
      }

      else
      {
        if (!*(a2 + 48))
        {
          return 0;
        }

        v28 = v13 | *&v11;
        v29 = v14 | v15;
        if (!(v28 | *&v10 | v12 | v29))
        {
          return 0;
        }

        v30 = v28 | v12 | v29;
        if ((*&v10 - 1) <= 2 && !v30)
        {
          return 0;
        }

        return *&v10 == 4 && v30 == 0;
      }
    }

    else
    {
      v21 = (v13 | *&v11 | *&v10 | v12 | v14 | v15) == 0;
      return *(a2 + 48) && v21;
    }
  }

  else if (*(a2 + 48))
  {
    return 0;
  }

  else
  {
    v48 = v2;
    v49 = v3;
    v43.f64[0] = v5;
    v43.f64[1] = v4;
    v44 = v6;
    v45 = v7;
    v46 = v9;
    v47 = v8;
    v38.f64[0] = v10;
    v38.f64[1] = v11;
    v39 = v13;
    v40 = v12;
    v41 = v14;
    v42 = v15;
    return _s17ProDisplayLibrary9PrimariesV2eeoiySbAC_ACtFZ_0(&v43, &v38);
  }
}

unint64_t sub_25F8108DC()
{
  result = qword_27FDB12E8;
  if (!qword_27FDB12E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB12E8);
  }

  return result;
}

unint64_t sub_25F810930()
{
  result = qword_27FDB12F0;
  if (!qword_27FDB12F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB12F0);
  }

  return result;
}

unint64_t sub_25F810984()
{
  result = qword_27FDB1300;
  if (!qword_27FDB1300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB1300);
  }

  return result;
}

unint64_t sub_25F8109DC()
{
  result = qword_27FDB1308;
  if (!qword_27FDB1308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB1308);
  }

  return result;
}

unint64_t sub_25F810A34()
{
  result = qword_27FDB1310;
  if (!qword_27FDB1310)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FDB1318);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB1310);
  }

  return result;
}

unint64_t sub_25F810A9C()
{
  result = qword_27FDB1320;
  if (!qword_27FDB1320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB1320);
  }

  return result;
}

unint64_t sub_25F810AF4()
{
  result = qword_27FDB1328;
  if (!qword_27FDB1328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB1328);
  }

  return result;
}

unint64_t sub_25F810B4C()
{
  result = qword_27FDB1330;
  if (!qword_27FDB1330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB1330);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ColorSpace(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 49))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ColorSpace(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 1;
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

  *(result + 49) = v3;
  return result;
}

uint64_t sub_25F810BF8(uint64_t a1)
{
  if (*(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25F810C14(uint64_t result, int a2)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    *(result + 48) = 1;
  }

  else
  {
    *(result + 48) = 0;
  }

  return result;
}

uint64_t DisplayID.CTA861EncapsulationDataBlock.__allocating_init(_:)(uint64_t a1, unint64_t a2)
{
  v4 = swift_allocObject();
  DisplayID.CTA861EncapsulationDataBlock.init(_:)(a1, a2);
  return v4;
}

uint64_t DisplayID.CTA861EncapsulationDataBlock.init(_:)(uint64_t a1, unint64_t a2)
{
  v103 = *MEMORY[0x277D85DE8];
  *(v3 + 16) = MEMORY[0x277D84F90];
  v6 = (v3 + 16);
  v7 = a2 >> 62;
  v88 = HIDWORD(a1);
  v8 = __OFSUB__(HIDWORD(a1), a1);
  v92 = v8;
  v9 = BYTE6(a2);
  v90 = a1;
  v91 = HIDWORD(a1) - a1;
  v89 = a1 >> 32;
  v10 = 3;
  v93 = BYTE6(a2);
  v94 = v6;
  if (v7 > 1)
  {
    goto LABEL_8;
  }

LABEL_5:
  v11 = v9;
  if (v7)
  {
    v11 = v91;
    if (v92)
    {
      goto LABEL_148;
    }
  }

  while (1)
  {
    if (v10 >= v11)
    {
      v69 = v9;
      if (v7)
      {
        if (v7 == 2)
        {
          v71 = *(a1 + 16);
          v70 = *(a1 + 24);
          v14 = __OFSUB__(v70, v71);
          v69 = v70 - v71;
          if (v14)
          {
            __break(1u);
LABEL_116:
            v99 = 0;
            v100 = 0xE000000000000000;
            sub_25F82292C();
            MEMORY[0x25F8E7510](0xD00000000000001CLL, 0x800000025F830DA0);
            *&v96 = v2;
            v72 = sub_25F822C7C();
            v2 = v73;
            MEMORY[0x25F8E7510](v72);

            MEMORY[0x25F8E7510](0xD000000000000010, 0x800000025F830380);
            if (!v7)
            {
              goto LABEL_139;
            }

            if (v7 == 2)
            {
              v75 = *(a1 + 16);
              v74 = *(a1 + 24);
              v9 = v74 - v75;
              if (__OFSUB__(v74, v75))
              {
                __break(1u);
LABEL_121:
                sub_25F76D178(v2, v9);
                sub_25F76D178(a1, a2);
                v76 = v87;

                sub_25F76D178(v2, v9);
                swift_deallocPartialClassInstance();
                return v76;
              }

              goto LABEL_139;
            }

            goto LABEL_138;
          }
        }

        else
        {
          v69 = v91;
          if (v92)
          {
LABEL_173:
            __break(1u);
            goto LABEL_174;
          }
        }
      }

      if (v10 == v69)
      {
        sub_25F76D178(a1, a2);
        return v87;
      }

LABEL_130:
      v99 = 0;
      v100 = 0xE000000000000000;
      sub_25F82292C();
      MEMORY[0x25F8E7510](0xD000000000000033, 0x800000025F830D10);
      *&v96 = v10;
      v79 = sub_25F822C7C();
      MEMORY[0x25F8E7510](v79);

      MEMORY[0x25F8E7510](0xD000000000000010, 0x800000025F830380);
      if (v7 <= 1)
      {
        if (!v7)
        {
          goto LABEL_139;
        }

        v9 = v91;
        if (!v92)
        {
          goto LABEL_139;
        }

        __break(1u);
      }

      v9 = 0;
      if (v7 != 2 || (v81 = *(a1 + 16), v80 = *(a1 + 24), v9 = v80 - v81, !__OFSUB__(v80, v81)))
      {
LABEL_139:
        *&v96 = v9;
        v82 = sub_25F822C7C();
        MEMORY[0x25F8E7510](v82);

        MEMORY[0x25F8E7510](0x6176612065726120, 0xEE00656C62616C69);
        v83 = v99;
        v84 = v100;
        sub_25F773C1C();
        swift_allocError();
        *v85 = v83;
        *(v85 + 8) = v84;
        *(v85 + 16) = 0;
        swift_willThrow();
        goto LABEL_140;
      }

      __break(1u);
LABEL_138:
      v9 = v91;
      if (v92)
      {
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
      }

      goto LABEL_139;
    }

    if (v7 == 2)
    {
      if (v10 < *(a1 + 16))
      {
        goto LABEL_149;
      }

      if (v10 >= *(a1 + 24))
      {
        goto LABEL_152;
      }

      v23 = sub_25F821E4C();
      if (!v23)
      {
        goto LABEL_176;
      }

      v24 = v23;
      v25 = sub_25F821E7C();
      if (__OFSUB__(v10, v25))
      {
        goto LABEL_154;
      }

      if (v10 < *(a1 + 16))
      {
        goto LABEL_156;
      }

      if (v10 >= *(a1 + 24))
      {
        goto LABEL_157;
      }

      v18 = *(v24 + v10 - v25);
      v26 = sub_25F821E4C();
      if (!v26)
      {
        goto LABEL_178;
      }

      v20 = v26;
      v27 = sub_25F821E7C();
      v22 = v10 - v27;
      if (__OFSUB__(v10, v27))
      {
        goto LABEL_158;
      }

      goto LABEL_29;
    }

    if (v7 == 1)
    {
      if (v10 < v90 || v10 >= v89)
      {
        goto LABEL_151;
      }

      v15 = sub_25F821E4C();
      if (!v15)
      {
        goto LABEL_175;
      }

      v16 = v15;
      v17 = sub_25F821E7C();
      if (__OFSUB__(v10, v17))
      {
        goto LABEL_153;
      }

      v18 = *(v16 + v10 - v17);
      v19 = sub_25F821E4C();
      if (!v19)
      {
        goto LABEL_177;
      }

      v20 = v19;
      v21 = sub_25F821E7C();
      v22 = v10 - v21;
      if (__OFSUB__(v10, v21))
      {
        goto LABEL_155;
      }

LABEL_29:
      v28 = *(v20 + v22);
      goto LABEL_32;
    }

    if (v10 >= v9)
    {
      goto LABEL_150;
    }

    LOWORD(v99) = a1;
    BYTE2(v99) = BYTE2(a1);
    BYTE3(v99) = BYTE3(a1);
    BYTE4(v99) = v88;
    BYTE5(v99) = BYTE5(a1);
    BYTE6(v99) = BYTE6(a1);
    HIBYTE(v99) = HIBYTE(a1);
    LOWORD(v100) = a2;
    BYTE2(v100) = BYTE2(a2);
    BYTE3(v100) = BYTE3(a2);
    BYTE4(v100) = BYTE4(a2);
    BYTE5(v100) = BYTE5(a2);
    v18 = *(&v99 + v10);
    v99 = a1;
    WORD2(v100) = WORD2(a2);
    LODWORD(v100) = a2;
    v28 = *(&v99 + v10);
LABEL_32:
    v29 = v18 & 0x1F;
    v30 = v10 + v29;
    if (__OFADD__(v10, v29))
    {
      __break(1u);
LABEL_143:
      __break(1u);
LABEL_144:
      __break(1u);
LABEL_145:
      __break(1u);
LABEL_146:
      __break(1u);
LABEL_147:
      __break(1u);
LABEL_148:
      __break(1u);
LABEL_149:
      __break(1u);
LABEL_150:
      __break(1u);
LABEL_151:
      __break(1u);
LABEL_152:
      __break(1u);
LABEL_153:
      __break(1u);
LABEL_154:
      __break(1u);
LABEL_155:
      __break(1u);
LABEL_156:
      __break(1u);
LABEL_157:
      __break(1u);
LABEL_158:
      __break(1u);
LABEL_159:
      __break(1u);
LABEL_160:
      __break(1u);
LABEL_161:
      __break(1u);
LABEL_162:
      __break(1u);
LABEL_163:
      __break(1u);
LABEL_164:
      __break(1u);
LABEL_165:
      __break(1u);
LABEL_166:
      __break(1u);
LABEL_167:
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
      goto LABEL_173;
    }

    v2 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      goto LABEL_143;
    }

    v31 = v9;
    if (v7)
    {
      if (v7 == 2)
      {
        v33 = *(a1 + 16);
        v32 = *(a1 + 24);
        v14 = __OFSUB__(v32, v33);
        v31 = v32 - v33;
        if (v14)
        {
          goto LABEL_159;
        }
      }

      else
      {
        v31 = v91;
        if (v92)
        {
          goto LABEL_160;
        }
      }
    }

    if (v31 < v2)
    {
      goto LABEL_116;
    }

    if (__OFADD__(v10, v29 + 1))
    {
      goto LABEL_144;
    }

    if (v10 + v29 + 1 < v10)
    {
      goto LABEL_145;
    }

    v34 = sub_25F82205C();
    v2 = v34;
    v9 = v35;
    if (v28 < 0xE0)
    {
      v38 = type metadata accessor for CTA861.UnknownDataBlock();
      v39 = swift_allocObject();
      sub_25F76E658(v2, v9);
      sub_25F779394(v2, v9);
      if (v95)
      {
        goto LABEL_121;
      }

      *(v39 + 16) = v2;
      *(v39 + 24) = v9;
      v97 = v38;
      v40 = type metadata accessor for CTA861.UnknownDataBlock;
      v41 = &unk_27FDB1338;
      goto LABEL_104;
    }

    if (v29 <= 1)
    {
      sub_25F7E3098();
      swift_allocError();
      *v77 = 0xD000000000000040;
      *(v77 + 8) = 0x800000025F830D50;
      *(v77 + 16) = 0;
      swift_willThrow();
      sub_25F76D178(v2, v9);
LABEL_140:
      sub_25F76D178(a1, a2);
      v76 = v87;

      return v76;
    }

    v36 = v35 >> 62;
    if ((v35 >> 62) > 1)
    {
      if (v36 != 2)
      {
        goto LABEL_179;
      }

      if (*(v34 + 16) > 1)
      {
        goto LABEL_161;
      }

      if (*(v34 + 24) < 2)
      {
        goto LABEL_165;
      }

      v42 = sub_25F821E4C();
      if (!v42)
      {
        goto LABEL_180;
      }

      v43 = v42;
      v44 = sub_25F821E7C();
      v45 = 1 - v44;
      if (__OFSUB__(1, v44))
      {
        goto LABEL_166;
      }

      goto LABEL_62;
    }

    if (v36)
    {
      if (v34 < 0x200000000 || v34 > 1)
      {
        goto LABEL_163;
      }

      v46 = sub_25F821E4C();
      if (!v46)
      {
        goto LABEL_181;
      }

      v43 = v46;
      v47 = sub_25F821E7C();
      v45 = 1 - v47;
      if (__OFSUB__(1, v47))
      {
        goto LABEL_164;
      }

LABEL_62:
      v37 = *(v43 + v45);
      goto LABEL_63;
    }

    if ((v35 & 0xFE000000000000) == 0)
    {
      goto LABEL_162;
    }

    v37 = BYTE1(v34);
LABEL_63:
    if (v37 == 6)
    {
      v48 = 1;
    }

    else
    {
      v48 = 2;
    }

    if (v37 == 5)
    {
      v49 = 0;
    }

    else
    {
      v49 = v48;
    }

    if (v49 == 2)
    {
      v50 = type metadata accessor for CTA861.UnknownExtendedDataBlock();
      v39 = swift_allocObject();
      sub_25F76E658(v2, v9);
      sub_25F779394(v2, v9);
      if (v95)
      {
        goto LABEL_123;
      }

      if (v36 == 2)
      {
        v57 = *(v2 + 16);
        v56 = *(v2 + 24);
        v14 = __OFSUB__(v56, v57);
        v51 = v56 - v57;
        if (v14)
        {
          goto LABEL_167;
        }
      }

      else if (v36 == 1)
      {
        LODWORD(v51) = HIDWORD(v2) - v2;
        if (__OFSUB__(HIDWORD(v2), v2))
        {
          goto LABEL_168;
        }

        v51 = v51;
      }

      else
      {
        v51 = BYTE6(v9);
      }

      if (v51 <= 1)
      {
        goto LABEL_124;
      }

      *(v39 + 16) = v2;
      *(v39 + 24) = v9;
      v97 = v50;
      v40 = type metadata accessor for CTA861.UnknownExtendedDataBlock;
      v41 = &qword_27FDB00F8;
      goto LABEL_104;
    }

    if ((v49 & 1) == 0)
    {
      break;
    }

    v52 = type metadata accessor for CTA861.HDRStaticMetadataDataBlock();
    v39 = swift_allocObject();
    sub_25F76E658(v2, v9);
    sub_25F779394(v2, v9);
    if (v95)
    {
      goto LABEL_123;
    }

    if (v36 == 2)
    {
      v59 = *(v2 + 16);
      v58 = *(v2 + 24);
      v14 = __OFSUB__(v58, v59);
      v53 = v58 - v59;
      if (v14)
      {
        goto LABEL_169;
      }
    }

    else if (v36 == 1)
    {
      LODWORD(v53) = HIDWORD(v2) - v2;
      if (__OFSUB__(HIDWORD(v2), v2))
      {
        goto LABEL_170;
      }

      v53 = v53;
    }

    else
    {
      v53 = BYTE6(v9);
    }

    if (v53 <= 1)
    {
      goto LABEL_124;
    }

    *(v39 + 16) = v2;
    *(v39 + 24) = v9;
    v97 = v52;
    v40 = type metadata accessor for CTA861.HDRStaticMetadataDataBlock;
    v41 = &qword_27FDB0440;
LABEL_104:
    v98 = sub_25F811F28(v41, 255, v40);
    *&v96 = v39;
    sub_25F7E56A4(&v96, &v99);
    sub_25F760954(&v99, &v96);
    swift_beginAccess();
    v62 = *v94;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v94 = v62;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v62 = sub_25F75C6B8(0, v62[2] + 1, 1, v62);
      *v94 = v62;
    }

    v65 = v62[2];
    v64 = v62[3];
    if (v65 >= v64 >> 1)
    {
      v62 = sub_25F75C6B8((v64 > 1), v65 + 1, 1, v62);
    }

    v62[2] = v65 + 1;
    sub_25F7E56A4(&v96, &v62[5 * v65 + 4]);
    *v94 = v62;
    swift_endAccess();
    v67 = v101;
    v66 = v102;
    __swift_project_boxed_opaque_existential_1(&v99, v101);
    v68 = (*(v66 + 56))(v67, v66);
    sub_25F76D178(v2, v9);
    v14 = __OFADD__(v10, v68);
    v10 += v68;
    if (v14)
    {
      goto LABEL_146;
    }

    __swift_destroy_boxed_opaque_existential_0Tm(&v99);
    v9 = v93;
    if (v7 <= 1)
    {
      goto LABEL_5;
    }

LABEL_8:
    if (v7 != 2)
    {
      v10 = 3;
      goto LABEL_130;
    }

    v13 = *(a1 + 16);
    v12 = *(a1 + 24);
    v14 = __OFSUB__(v12, v13);
    v11 = v12 - v13;
    if (v14)
    {
      goto LABEL_147;
    }
  }

  v54 = type metadata accessor for CTA861.ColorimetryDataBlock();
  v39 = swift_allocObject();
  sub_25F76E658(v2, v9);
  sub_25F779394(v2, v9);
  if (v95)
  {
LABEL_123:
    sub_25F76D178(v2, v9);
    goto LABEL_125;
  }

  if (v36 == 2)
  {
    v61 = *(v2 + 16);
    v60 = *(v2 + 24);
    v14 = __OFSUB__(v60, v61);
    v55 = v60 - v61;
    if (v14)
    {
      goto LABEL_172;
    }
  }

  else if (v36 == 1)
  {
    LODWORD(v55) = HIDWORD(v2) - v2;
    if (__OFSUB__(HIDWORD(v2), v2))
    {
      goto LABEL_171;
    }

    v55 = v55;
  }

  else
  {
    v55 = BYTE6(v9);
  }

  if (v55 > 1)
  {
    *(v39 + 16) = v2;
    *(v39 + 24) = v9;
    v97 = v54;
    v40 = type metadata accessor for CTA861.ColorimetryDataBlock;
    v41 = &unk_27FDB12D0;
    goto LABEL_104;
  }

LABEL_124:
  sub_25F76D178(v2, v9);
  sub_25F779604();
  swift_allocError();
  *v78 = 0xD00000000000003FLL;
  *(v78 + 8) = 0x800000025F82D860;
  *(v78 + 16) = 0;
  swift_willThrow();
LABEL_125:
  sub_25F76D178(a1, a2);
  v76 = v87;

  sub_25F76D178(v2, v9);
  swift_deallocPartialClassInstance();
  return v76;
}

uint64_t DisplayID.CTA861EncapsulationDataBlock.hierarchicalDescription.getter@<X0>(void *a1@<X8>)
{
  v2 = sub_25F773A5C();
  v4 = v3;
  swift_beginAccess();

  v6 = sub_25F7DF594(v5);

  return sub_25F802E24(v2, v4, v6, a1);
}

uint64_t DisplayID.CTA861EncapsulationDataBlock.data.getter()
{
  v1 = v0;
  result = swift_beginAccess();
  v3 = *(v0 + 16);
  v4 = *(v3 + 16);
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v26 = MEMORY[0x277D84F90];

    sub_25F817BA8(0, v4, 0);
    v5 = v26;
    v6 = v3 + 32;
    do
    {
      sub_25F760954(v6, v28);
      v7 = v29;
      v8 = v30;
      __swift_project_boxed_opaque_existential_1(v28, v29);
      v9 = (*(v8 + 56))(v7, v8);
      __swift_destroy_boxed_opaque_existential_0Tm(v28);
      v11 = *(v26 + 16);
      v10 = *(v26 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_25F817BA8((v10 > 1), v11 + 1, 1);
      }

      *(v26 + 16) = v11 + 1;
      *(v26 + 8 * v11 + 32) = v9;
      v6 += 40;
      --v4;
    }

    while (v4);
  }

  v12 = *(v5 + 16);
  if (v12)
  {
    v13 = 0;
    v14 = (v5 + 32);
    while (1)
    {
      v15 = *v14++;
      v16 = __OFADD__(v13, v15);
      v13 += v15;
      if (v16)
      {
        break;
      }

      if (!--v12)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v13 = 0;
LABEL_13:

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC08);
  result = swift_allocObject();
  *(result + 16) = xmmword_25F824220;
  *(result + 32) = 129;
  if ((v13 & 0x8000000000000000) != 0)
  {
    goto LABEL_21;
  }

  if (v13 > 0xFF)
  {
LABEL_22:
    __break(1u);
    return result;
  }

  *(result + 34) = v13;
  v17 = sub_25F7BEE3C(result);

  v27 = v17;
  v18 = *(v1 + 16);
  v19 = *(v18 + 16);
  if (v19)
  {
    v20 = v18 + 32;

    do
    {
      sub_25F760954(v20, v28);
      v21 = v29;
      v22 = v30;
      __swift_project_boxed_opaque_existential_1(v28, v29);
      v23 = (*(v22 + 48))(v21, v22);
      v25 = v24;
      __swift_destroy_boxed_opaque_existential_0Tm(v28);
      sub_25F82204C();
      sub_25F76D178(v23, v25);
      v20 += 40;
      --v19;
    }

    while (v19);

    return v27;
  }

  return v17;
}

uint64_t DisplayID.CTA861EncapsulationDataBlock.size.getter()
{
  result = swift_beginAccess();
  v2 = *(v0 + 16);
  v3 = *(v2 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v19 = MEMORY[0x277D84F90];

    sub_25F817BA8(0, v3, 0);
    v4 = v19;
    v5 = v2 + 32;
    do
    {
      sub_25F760954(v5, v16);
      v6 = v17;
      v7 = v18;
      __swift_project_boxed_opaque_existential_1(v16, v17);
      v8 = (*(v7 + 56))(v6, v7);
      __swift_destroy_boxed_opaque_existential_0Tm(v16);
      v19 = v4;
      v10 = v4[2];
      v9 = v4[3];
      if (v10 >= v9 >> 1)
      {
        sub_25F817BA8((v9 > 1), v10 + 1, 1);
        v4 = v19;
      }

      v4[2] = v10 + 1;
      v4[v10 + 4] = v8;
      v5 += 40;
      --v3;
    }

    while (v3);
  }

  v11 = v4[2];
  if (v11)
  {
    v12 = 0;
    v13 = v4 + 4;
    while (1)
    {
      v14 = *v13++;
      v15 = __OFADD__(v12, v14);
      v12 += v14;
      if (v15)
      {
        break;
      }

      if (!--v11)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
    return result;
  }

  v12 = 0;
LABEL_13:

  result = v12 + 3;
  if (__OFADD__(v12, 3))
  {
    goto LABEL_16;
  }

  return result;
}

uint64_t DisplayID.CTA861EncapsulationDataBlock.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_25F811D88@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = swift_allocObject();
  result = DisplayID.CTA861EncapsulationDataBlock.init(_:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_25F811E44@<X0>(void *a1@<X8>)
{
  v2 = sub_25F773A5C();
  v4 = v3;
  swift_beginAccess();

  v6 = sub_25F7DF594(v5);

  return sub_25F802E24(v2, v4, v6, a1);
}

uint64_t sub_25F811ED0(uint64_t a1, uint64_t a2)
{
  result = sub_25F811F28(&qword_27FDB1340, a2, type metadata accessor for DisplayID.CTA861EncapsulationDataBlock);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_25F811F28(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25F811FD4()
{
  v0 = sub_25F82217C();
  __swift_allocate_value_buffer(v0, qword_27FDC1440);
  v1 = __swift_project_value_buffer(v0, qword_27FDC1440);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFFF8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v7 - v3;
  sub_25F82211C();
  v5 = *(v0 - 8);
  result = (*(v5 + 48))(v4, 1, v0);
  if (result != 1)
  {
    return (*(v5 + 32))(v1, v4, v0);
  }

  __break(1u);
  return result;
}

uint64_t sub_25F812104()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC10);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v21 - v1;
  v3 = type metadata accessor for Preset.Info(0);
  __swift_allocate_value_buffer(v3, qword_27FDC1458);
  v4 = __swift_project_value_buffer(v3, qword_27FDC1458);
  if (qword_27FDAFAD8 != -1)
  {
    swift_once();
  }

  v22 = 0x800000025F830E10;
  v23 = 0x800000025F830E30;
  v5 = sub_25F82217C();
  v6 = __swift_project_value_buffer(v5, qword_27FDC1440);
  (*(*(v5 - 8) + 16))(v4, v6, v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC20);
  v21[1] = v21;
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v21 - v8;
  v10 = sub_25F82210C();
  v11 = *(*(v10 - 8) + 56);
  v11(v9, 1, 1, v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC18);
  v13 = *(*(v12 - 8) + 56);
  v13(v2, 1, 1, v12);
  v21[0] = v2;
  v14 = v3[8];
  v11((v4 + v14), 1, 1, v10);
  v15 = v3[9];
  v13((v4 + v15), 1, 1, v12);
  v16 = (v4 + v3[5]);
  v17 = v22;
  *v16 = 0xD000000000000017;
  v16[1] = v17;
  v18 = (v4 + v3[6]);
  v19 = v23;
  *v18 = 0xD0000000000000E4;
  v18[1] = v19;
  *(v4 + v3[7]) = 0;
  sub_25F760E58(v9, v4 + v14, &qword_27FDAFC20);
  return sub_25F760E58(v21[0], v4 + v15, &qword_27FDAFC10);
}

__n128 sub_25F812400()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFD50);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_25F8249B0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 48) = 1;
  *(v0 + 56) = 0;
  *(v0 + 64) = 1;
  *(v0 + 72) = 0;
  *(v0 + 80) = 1;
  *(v0 + 88) = 0x4004CCCCCCCCCCCDLL;
  *(v0 + 96) = 0;
  *(v0 + 104) = 0;
  v1 = sub_25F792BC4(&unk_2871C3E20);
  xmmword_27FDC1470 = 0u;
  unk_27FDC1480 = 0u;
  xmmword_27FDC1490 = 0u;
  byte_27FDC14A0 = 1;
  *&algn_27FDC14A1[7] = 0u;
  *(&xmmword_27FDC14B0 + 8) = 0u;
  unk_27FDC14C8 = 0u;
  WORD4(xmmword_27FDC14D0) = 256;
  xmmword_27FDC14E0 = xmmword_25F824920;
  LOBYTE(xmmword_27FDC14F0) = 1;
  *(&xmmword_27FDC14F0 + 1) = 0;
  unk_27FDC1500 = 0;
  word_27FDC1508 = 256;
  xmmword_27FDC1510 = vdupq_n_s64(0x4048000000000000uLL);
  qword_27FDC1520 = 0;
  unk_27FDC1528 = v0;
  LOBYTE(xmmword_27FDC1530) = 0;
  *(&xmmword_27FDC1530 + 1) = 0x4004CCCCCCCCCCCDLL;
  word_27FDC1540 = 1;
  __asm { FMOV            V0.2D, #1.0 }

  *&algn_27FDC1542[6] = result;
  *(&xmmword_27FDC1550 + 1) = v1;
  dword_27FDC1560 = 16843009;
  return result;
}

double sub_25F81253C()
{
  LODWORD(xmmword_27FDC1568) = 16843009;
  *(&xmmword_27FDC1568 + 1) = 0;
  LOWORD(xmmword_27FDC1578) = 257;
  *(&xmmword_27FDC1578 + 1) = 0x3FF0000000000000;
  LOWORD(xmmword_27FDC1588) = 0;
  *(&xmmword_27FDC1588 + 1) = 0;
  *&xmmword_27FDC1598 = 0;
  BYTE8(xmmword_27FDC1598) = 1;
  *&xmmword_27FDC15A8 = 0x3F9EB851EB851EB8;
  BYTE8(xmmword_27FDC15A8) = 0;
  *&xmmword_27FDC15B8 = 0;
  BYTE8(xmmword_27FDC15B8) = 1;
  xmmword_27FDC15C8 = vdupq_n_s64(0x4048000000000000uLL);
  qword_27FDC15D8 = 0x4048000000000000;
  *&result = 16843008;
  dword_27FDC15E0 = 16843008;
  return result;
}

uint64_t sub_25F8125C8()
{
  v0 = sub_25F82217C();
  __swift_allocate_value_buffer(v0, qword_27FDC15E8);
  v1 = __swift_project_value_buffer(v0, qword_27FDC15E8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFFF8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v7 - v3;
  sub_25F82211C();
  v5 = *(v0 - 8);
  result = (*(v5 + 48))(v4, 1, v0);
  if (result != 1)
  {
    return (*(v5 + 32))(v1, v4, v0);
  }

  __break(1u);
  return result;
}

uint64_t sub_25F8126F8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC10);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v21 - v1;
  v3 = type metadata accessor for Preset.Info(0);
  __swift_allocate_value_buffer(v3, qword_27FDC1600);
  v4 = __swift_project_value_buffer(v3, qword_27FDC1600);
  if (qword_27FDAFAF8 != -1)
  {
    swift_once();
  }

  v22 = 0x800000025F830F50;
  v23 = 0x800000025F830F70;
  v5 = sub_25F82217C();
  v6 = __swift_project_value_buffer(v5, qword_27FDC15E8);
  (*(*(v5 - 8) + 16))(v4, v6, v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC20);
  v21[1] = v21;
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v21 - v8;
  v10 = sub_25F82210C();
  v11 = *(*(v10 - 8) + 56);
  v11(v9, 1, 1, v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC18);
  v13 = *(*(v12 - 8) + 56);
  v13(v2, 1, 1, v12);
  v21[0] = v2;
  v14 = v3[8];
  v11((v4 + v14), 1, 1, v10);
  v15 = v3[9];
  v13((v4 + v15), 1, 1, v12);
  v16 = (v4 + v3[5]);
  v17 = v22;
  *v16 = 0xD00000000000001ELL;
  v16[1] = v17;
  v18 = (v4 + v3[6]);
  v19 = v23;
  *v18 = 0xD0000000000000FCLL;
  v18[1] = v19;
  *(v4 + v3[7]) = 0;
  sub_25F760E58(v9, v4 + v14, &qword_27FDAFC20);
  return sub_25F760E58(v21[0], v4 + v15, &qword_27FDAFC10);
}

__n128 sub_25F8129F4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFD50);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_25F8249B0;
  *(v0 + 32) = 1;
  *(v0 + 40) = 0x4059000000000000;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;
  *(v0 + 80) = 1;
  *(v0 + 88) = 0;
  *(v0 + 96) = 1;
  *(v0 + 104) = 0;
  v1 = sub_25F792BC4(&unk_2871C3DD0);
  *&xmmword_27FDC1618 = 4;
  *(&xmmword_27FDC1618 + 8) = 0u;
  unk_27FDC1630 = 0u;
  *(&xmmword_27FDC1638 + 1) = 0;
  byte_27FDC1648 = 1;
  unk_27FDC1650 = 0u;
  *(&xmmword_27FDC1658 + 8) = 0u;
  unk_27FDC1670 = 0u;
  WORD4(xmmword_27FDC1678) = 256;
  xmmword_27FDC1688 = xmmword_25F824920;
  LOBYTE(xmmword_27FDC1698) = 1;
  *(&xmmword_27FDC1698 + 1) = 0;
  unk_27FDC16A8 = 0;
  word_27FDC16B0 = 256;
  xmmword_27FDC16B8 = vdupq_n_s64(0x4059000000000000uLL);
  qword_27FDC16C8 = 0;
  unk_27FDC16D0 = v0;
  LOBYTE(xmmword_27FDC16D8) = 1;
  *(&xmmword_27FDC16D8 + 1) = 0x4003333333333333;
  word_27FDC16E8 = 0;
  __asm { FMOV            V0.2D, #1.0 }

  unk_27FDC16F0 = result;
  *(&xmmword_27FDC16F8 + 1) = v1;
  dword_27FDC1708 = 16843009;
  return result;
}

double sub_25F812B38()
{
  LODWORD(xmmword_27FDC1710) = 16843009;
  *(&xmmword_27FDC1710 + 1) = 0;
  LOWORD(xmmword_27FDC1720) = 257;
  *(&xmmword_27FDC1720 + 1) = 0x3FF0000000000000;
  LOWORD(xmmword_27FDC1730) = 0;
  *(&xmmword_27FDC1730 + 8) = xmmword_25F827A20;
  BYTE8(xmmword_27FDC1740) = 0;
  *&xmmword_27FDC1750 = 0x4024000000000000;
  BYTE8(xmmword_27FDC1750) = 0;
  *&xmmword_27FDC1760 = 0;
  BYTE8(xmmword_27FDC1760) = 1;
  xmmword_27FDC1770 = vdupq_n_s64(0x4059000000000000uLL);
  qword_27FDC1780 = 0x4059000000000000;
  *&result = 16843008;
  dword_27FDC1788 = 16843008;
  return result;
}

uint64_t GeneralizedTransferFunction.modifierTypes.getter()
{
  v0 = GeneralizedTransferFunction.modifiers.getter();
  v1 = *(v0 + 16);
  if (v1)
  {
    v11 = MEMORY[0x277D84F90];
    sub_25F817B88(0, v1, 0);
    v2 = v11;
    v3 = v0 + 32;
    do
    {
      sub_25F760954(v3, v9);
      __swift_project_boxed_opaque_existential_1(v9, v9[3]);
      swift_getDynamicType();
      (*(v9[4] + 24))(&v10);
      __swift_destroy_boxed_opaque_existential_0Tm(v9);
      v4 = v10;
      v11 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_25F817B88((v5 > 1), v6 + 1, 1);
        v2 = v11;
      }

      *(v2 + 16) = v6 + 1;
      *(v2 + v6 + 32) = v4;
      v3 += 40;
      --v1;
    }

    while (v1);
  }

  else
  {

    v2 = MEMORY[0x277D84F90];
  }

  v7 = sub_25F817FB4(v2, sub_25F818BD4, &type metadata for GeneralizedTransferFunction.ModifierType, sub_25F7BA434);

  return v7;
}

uint64_t sub_25F812D3C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_25F818A5C();
  result = MEMORY[0x25F8E76E0](v2, &type metadata for EOTFStandard, v3);
  v5 = 0;
  v13 = result;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  for (i = (v6 + 63) >> 6; v8; result = sub_25F7BA998(&v12, *(*(a1 + 48) + (v11 | (v10 << 6)))))
  {
    v10 = v5;
LABEL_9:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
  }

  while (1)
  {
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v10 >= i)
    {

      return v13;
    }

    v8 = *(a1 + 64 + 8 * v10);
    ++v5;
    if (v8)
    {
      v5 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t GeneralizedTransferFunction.modifiers<A>(ofType:)()
{
  GeneralizedTransferFunction.modifiers.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB1438);
  sub_25F76100C(&qword_27FDB1440, &qword_27FDB1438);
  v0 = sub_25F8224FC();

  return v0;
}

uint64_t sub_25F812F08(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE800000000000000;
  v4 = 0xE200000000000000;
  v5 = 24908;
  v6 = 0xE500000000000000;
  v7 = 0x616D6D6167;
  if (a1 != 4)
  {
    v7 = 0x7265696669646F6DLL;
    v6 = 0xE900000000000073;
  }

  if (a1 != 3)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 30540;
  if (a1 != 1)
  {
    v8 = 25164;
  }

  if (a1)
  {
    v3 = 0xE200000000000000;
  }

  else
  {
    v8 = 0x647261646E617473;
  }

  if (a1 <= 2u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v5;
  }

  if (v2 <= 2)
  {
    v10 = v3;
  }

  else
  {
    v10 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v11 = 0xE200000000000000;
      if (v9 != 24908)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v11 = 0xE500000000000000;
      if (v9 != 0x616D6D6167)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v11 = 0xE900000000000073;
      if (v9 != 0x7265696669646F6DLL)
      {
LABEL_34:
        v12 = sub_25F822CBC();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    v11 = 0xE200000000000000;
    if (a2 == 1)
    {
      if (v9 != 30540)
      {
        goto LABEL_34;
      }
    }

    else if (v9 != 25164)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v11 = 0xE800000000000000;
    if (v9 != 0x647261646E617473)
    {
      goto LABEL_34;
    }
  }

  if (v10 != v11)
  {
    goto LABEL_34;
  }

  v12 = 1;
LABEL_35:

  return v12 & 1;
}

uint64_t sub_25F8130A4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 3159364;
  v3 = a1;
  v4 = 0xE400000000000000;
  v5 = 1899312708;
  if (a1 != 5)
  {
    v5 = 0x6D6F74737543;
    v4 = 0xE600000000000000;
  }

  v6 = 0xE300000000000000;
  v7 = 4801348;
  if (a1 != 3)
  {
    v7 = 1630877252;
    v6 = 0xE400000000000000;
  }

  if (a1 <= 4u)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 3487044;
  if (a1 != 1)
  {
    v8 = 3487300;
  }

  if (!a1)
  {
    v8 = 3159364;
  }

  if (a1 <= 2u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v5;
  }

  if (v3 <= 2)
  {
    v10 = 0xE300000000000000;
  }

  else
  {
    v10 = v4;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        v11 = 0xE300000000000000;
        if (v9 != 3487300)
        {
          goto LABEL_37;
        }

        goto LABEL_35;
      }

      v2 = 3487044;
    }

    v11 = 0xE300000000000000;
    if (v9 != v2)
    {
      goto LABEL_37;
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v11 = 0xE400000000000000;
      if (v9 != 1899312708)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v11 = 0xE600000000000000;
      if (v9 != 0x6D6F74737543)
      {
LABEL_37:
        v12 = sub_25F822CBC();
        goto LABEL_38;
      }
    }
  }

  else if (a2 == 3)
  {
    v11 = 0xE300000000000000;
    if (v9 != 4801348)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v11 = 0xE400000000000000;
    if (v9 != 1630877252)
    {
      goto LABEL_37;
    }
  }

LABEL_35:
  if (v10 != v11)
  {
    goto LABEL_37;
  }

  v12 = 1;
LABEL_38:

  return v12 & 1;
}

uint64_t sub_25F81325C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEF44497465736572;
  v3 = 0x50746C7561666564;
  v4 = a1;
  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      v8 = 0xE700000000000000;
      v7 = 0x73746573657270;
    }

    else
    {
      if (a1 == 4)
      {
        v7 = 0xD000000000000012;
      }

      else
      {
        v7 = 0xD000000000000013;
      }

      if (v4 == 4)
      {
        v8 = 0x800000025F82C460;
      }

      else
      {
        v8 = 0x800000025F82C480;
      }
    }
  }

  else
  {
    v5 = 0x7250657669746361;
    v6 = 0xEE00444974657365;
    if (a1 != 1)
    {
      v5 = 0x756A644172657375;
      v6 = 0xEF73746E656D7473;
    }

    if (a1)
    {
      v7 = v5;
    }

    else
    {
      v7 = 0x50746C7561666564;
    }

    if (v4)
    {
      v8 = v6;
    }

    else
    {
      v8 = 0xEF44497465736572;
    }
  }

  if (a2 > 2u)
  {
    if (a2 != 3)
    {
      if (a2 == 4)
      {
        v9 = 0xD000000000000012;
      }

      else
      {
        v9 = 0xD000000000000013;
      }

      if (a2 == 4)
      {
        v2 = 0x800000025F82C460;
      }

      else
      {
        v2 = 0x800000025F82C480;
      }

      if (v7 != v9)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }

    v2 = 0xE700000000000000;
    v3 = 0x73746573657270;
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0xEE00444974657365;
      if (v7 != 0x7250657669746361)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v2 = 0xEF73746E656D7473;
      if (v7 != 0x756A644172657375)
      {
        goto LABEL_37;
      }
    }

    goto LABEL_34;
  }

  if (v7 != v3)
  {
LABEL_37:
    v10 = sub_25F822CBC();
    goto LABEL_38;
  }

LABEL_34:
  if (v8 != v2)
  {
    goto LABEL_37;
  }

  v10 = 1;
LABEL_38:

  return v10 & 1;
}

uint64_t sub_25F81346C()
{
  sub_25F822DCC();
  sub_25F8222DC();

  return sub_25F822E0C();
}

uint64_t sub_25F81359C()
{
  sub_25F822DCC();
  sub_25F8222DC();

  return sub_25F822E0C();
}

uint64_t sub_25F813680()
{
  sub_25F822DCC();
  sub_25F8222DC();

  return sub_25F822E0C();
}

uint64_t sub_25F8137AC()
{
  sub_25F822DCC();
  sub_25F8222DC();

  return sub_25F822E0C();
}

uint64_t sub_25F813898()
{
  sub_25F822DCC();
  sub_25F8222DC();

  return sub_25F822E0C();
}

void static GeneralizedTransferFunction.PurePower(gamma:)(uint64_t a1@<X8>, double a2@<D0>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
  *(a1 + 56) = a2;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
}

void static GeneralizedTransferFunction.PQ(peakLuminance:)(uint64_t a1@<X8>, double a2@<D0>)
{
  *a1 = 2;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
  *(a1 + 56) = 0;
  *(a1 + 64) = 1;
  *(a1 + 72) = 0;
}

uint64_t sub_25F813A14@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25F822E2C();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v24, v24[3]);
    v5 = sub_25F822CCC();
    v7 = 0x697542656C707041;
    v8 = byte_2871C4F00;
    v9 = 0x7473754372657355;
    v10 = 0xEA00000000006D6FLL;
    if (byte_2871C4F00 != 1)
    {
      v9 = 0xD000000000000011;
      v10 = 0x800000025F82DA10;
    }

    if (byte_2871C4F00)
    {
      v11 = v9;
    }

    else
    {
      v11 = 0x697542656C707041;
    }

    if (byte_2871C4F00)
    {
      v12 = v10;
    }

    else
    {
      v12 = 0xEC0000006E49746CLL;
    }

    if (v5 == v11 && v6 == v12)
    {
      goto LABEL_24;
    }

    v23 = v5;
    v25 = v6;
    v14 = sub_25F822CBC();

    if (v14)
    {
      goto LABEL_25;
    }

    v8 = byte_2871C4F01;
    if (byte_2871C4F01)
    {
      v15 = v23;
      if (byte_2871C4F01 == 1)
      {
        v16 = 0x7473754372657355;
        v17 = 0xEA00000000006D6FLL;
      }

      else
      {
        v16 = 0xD000000000000011;
        v17 = 0x800000025F82DA10;
      }
    }

    else
    {
      v16 = 0x697542656C707041;
      v17 = 0xEC0000006E49746CLL;
      v15 = v23;
    }

    if (v15 == v16 && v25 == v17)
    {
      goto LABEL_24;
    }

    v19 = sub_25F822CBC();

    if (v19)
    {
      goto LABEL_25;
    }

    v8 = byte_2871C4F02;
    if (byte_2871C4F02)
    {
      v20 = v23;
      if (byte_2871C4F02 == 1)
      {
        v7 = 0x7473754372657355;
        v21 = 0xEA00000000006D6FLL;
      }

      else
      {
        v7 = 0xD000000000000011;
        v21 = 0x800000025F82DA10;
      }
    }

    else
    {
      v21 = 0xEC0000006E49746CLL;
      v20 = v23;
    }

    if (v20 == v7 && v25 == v21)
    {
LABEL_24:
    }

    else
    {
      v22 = sub_25F822CBC();

      if ((v22 & 1) == 0)
      {
        sub_25F82292C();

        MEMORY[0x25F8E7510](v23, v25);

        MEMORY[0x25F8E7510](39, 0xE100000000000000);
        sub_25F82298C();
        swift_allocError();
        sub_25F82295C();

        swift_willThrow();
        goto LABEL_26;
      }
    }

LABEL_25:

    *a2 = v8;
LABEL_26:
    __swift_destroy_boxed_opaque_existential_0Tm(v24);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t sub_25F813D40@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25F822E2C();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v17, v17[3]);
    v5 = sub_25F822CCC();
    v7 = byte_2871C4F28;
    if (byte_2871C4F28)
    {
      v8 = 0x7563634168676948;
    }

    else
    {
      v8 = 0x6E6574614C776F4CLL;
    }

    if (byte_2871C4F28)
    {
      v9 = 0xEC00000079636172;
    }

    else
    {
      v9 = 0xEA00000000007963;
    }

    if (v5 == v8 && v6 == v9)
    {
      goto LABEL_23;
    }

    v16 = v5;
    v18 = v6;
    v11 = sub_25F822CBC();

    if (v11)
    {
      goto LABEL_24;
    }

    v7 = byte_2871C4F29;
    v12 = byte_2871C4F29 ? 0x7563634168676948 : 0x6E6574614C776F4CLL;
    v13 = byte_2871C4F29 ? 0xEC00000079636172 : 0xEA00000000007963;
    if (v16 == v12 && v18 == v13)
    {
LABEL_23:
    }

    else
    {
      v15 = sub_25F822CBC();

      if ((v15 & 1) == 0)
      {
        sub_25F82292C();

        MEMORY[0x25F8E7510](v16, v18);

        MEMORY[0x25F8E7510](39, 0xE100000000000000);
        sub_25F82298C();
        swift_allocError();
        sub_25F82295C();

        swift_willThrow();
        goto LABEL_25;
      }
    }

LABEL_24:

    *a2 = v7;
LABEL_25:
    __swift_destroy_boxed_opaque_existential_0Tm(v17);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t sub_25F813F9C@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25F822E2C();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v17, v17[3]);
    v5 = sub_25F822CCC();
    v7 = byte_2871C4F50;
    if (byte_2871C4F50)
    {
      v8 = 0x31333931454943;
    }

    else
    {
      v8 = 0x65766974614ELL;
    }

    if (byte_2871C4F50)
    {
      v9 = 0xE700000000000000;
    }

    else
    {
      v9 = 0xE600000000000000;
    }

    if (v5 == v8 && v6 == v9)
    {
      goto LABEL_23;
    }

    v18 = v5;
    v11 = v6;
    v12 = sub_25F822CBC();

    if (v12)
    {
      goto LABEL_24;
    }

    v7 = byte_2871C4F51;
    v13 = byte_2871C4F51 ? 0x31333931454943 : 0x65766974614ELL;
    v14 = byte_2871C4F51 ? 0xE700000000000000 : 0xE600000000000000;
    if (v18 == v13 && v11 == v14)
    {
LABEL_23:
    }

    else
    {
      v16 = sub_25F822CBC();

      if ((v16 & 1) == 0)
      {
        sub_25F82292C();

        MEMORY[0x25F8E7510](v18, v11);

        MEMORY[0x25F8E7510](39, 0xE100000000000000);
        sub_25F82298C();
        swift_allocError();
        sub_25F82295C();

        swift_willThrow();
        goto LABEL_25;
      }
    }

LABEL_24:

    *a2 = v7;
LABEL_25:
    __swift_destroy_boxed_opaque_existential_0Tm(v17);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t sub_25F8141E0@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25F822E2C();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v17, v17[3]);
    v5 = sub_25F822CCC();
    v7 = byte_2871C4F78;
    if (byte_2871C4F78)
    {
      v8 = 0x74736172746E6F43;
    }

    else
    {
      v8 = 0x726F6C6F43;
    }

    if (byte_2871C4F78)
    {
      v9 = 0xE800000000000000;
    }

    else
    {
      v9 = 0xE500000000000000;
    }

    if (v5 == v8 && v6 == v9)
    {
      goto LABEL_23;
    }

    v18 = v5;
    v11 = v6;
    v12 = sub_25F822CBC();

    if (v12)
    {
      goto LABEL_24;
    }

    v7 = byte_2871C4F79;
    v13 = byte_2871C4F79 ? 0x74736172746E6F43 : 0x726F6C6F43;
    v14 = byte_2871C4F79 ? 0xE800000000000000 : 0xE500000000000000;
    if (v18 == v13 && v11 == v14)
    {
LABEL_23:
    }

    else
    {
      v16 = sub_25F822CBC();

      if ((v16 & 1) == 0)
      {
        sub_25F82292C();

        MEMORY[0x25F8E7510](v18, v11);

        MEMORY[0x25F8E7510](39, 0xE100000000000000);
        sub_25F82298C();
        swift_allocError();
        sub_25F82295C();

        swift_willThrow();
        goto LABEL_25;
      }
    }

LABEL_24:

    *a2 = v7;
LABEL_25:
    __swift_destroy_boxed_opaque_existential_0Tm(v17);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t sub_25F814424@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25F822E2C();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v16, v16[3]);
    v5 = sub_25F822CCC();
    v7 = byte_2871C4FA0;
    if (byte_2871C4FA0)
    {
      v8 = 0x6C6175736956;
    }

    else
    {
      v8 = 0x6C61756E614DLL;
    }

    if (v5 == v8 && v6 == 0xE600000000000000)
    {
      goto LABEL_16;
    }

    v10 = v5;
    v11 = v6;
    v12 = sub_25F822CBC();

    if (v12)
    {
      goto LABEL_17;
    }

    v7 = byte_2871C4FA1;
    v13 = byte_2871C4FA1 ? 0x6C6175736956 : 0x6C61756E614DLL;
    if (v10 == v13 && v11 == 0xE600000000000000)
    {
LABEL_16:
    }

    else
    {
      v15 = sub_25F822CBC();

      if ((v15 & 1) == 0)
      {
        sub_25F82292C();

        MEMORY[0x25F8E7510](v10, v11);

        MEMORY[0x25F8E7510](39, 0xE100000000000000);
        sub_25F82298C();
        swift_allocError();
        sub_25F82295C();

        swift_willThrow();
        goto LABEL_18;
      }
    }

LABEL_17:

    *a2 = v7;
LABEL_18:
    __swift_destroy_boxed_opaque_existential_0Tm(v16);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t sub_25F814654@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25F822E2C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  __swift_project_boxed_opaque_existential_1(v18, v18[3]);
  v5 = sub_25F822CCC();
  v7 = v6;
  v19 = a2;
  v8 = 0;
  while (1)
  {
    v9 = byte_2871C4FA8[v8 + 32];
    if (v9 <= 2)
    {
      break;
    }

    if (byte_2871C4FA8[v8 + 32] > 4u)
    {
      v12 = v9 == 5;
      if (v9 == 5)
      {
        v13 = 5391432;
      }

      else
      {
        v13 = 1111970419;
      }

      v14 = 0xE300000000000000;
      v15 = 0xE400000000000000;
      goto LABEL_20;
    }

    if (v9 == 3)
    {
      v10 = 5328961;
    }

    else
    {
      v10 = 4672584;
    }

    v11 = 0xE300000000000000;
    if (v5 == v10)
    {
      goto LABEL_24;
    }

LABEL_25:
    v16 = sub_25F822CBC();

    if (v16)
    {
      goto LABEL_31;
    }

    if (++v8 == 7)
    {
      sub_25F82292C();

      MEMORY[0x25F8E7510](v5, v7);

      MEMORY[0x25F8E7510](39, 0xE100000000000000);
      sub_25F82298C();
      swift_allocError();
      sub_25F82295C();

      swift_willThrow();
      goto LABEL_32;
    }
  }

  if (!byte_2871C4FA8[v8 + 32])
  {
    v11 = 0xE900000000000072;
    if (v5 == 0x65776F5065727550)
    {
      goto LABEL_24;
    }

    goto LABEL_25;
  }

  v12 = v9 == 1;
  if (v9 == 1)
  {
    v13 = 0x363838312E5442;
  }

  else
  {
    v13 = 20816;
  }

  v14 = 0xE700000000000000;
  v15 = 0xE200000000000000;
LABEL_20:
  if (v12)
  {
    v11 = v14;
  }

  else
  {
    v11 = v15;
  }

  if (v5 != v13)
  {
    goto LABEL_25;
  }

LABEL_24:
  if (v7 != v11)
  {
    goto LABEL_25;
  }

LABEL_31:

  *v19 = v9;
LABEL_32:
  __swift_destroy_boxed_opaque_existential_0Tm(v18);
  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t sub_25F8148F8@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25F822E2C();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v27, v27[3]);
    v5 = sub_25F822CCC();
    v7 = 0x72656C616353;
    v8 = byte_2871C4FF0;
    v9 = 0x6961526B63616C42;
    v10 = 0xEA00000000006573;
    if (byte_2871C4FF0 != 1)
    {
      v9 = 0x70696C436F72655ALL;
      v10 = 0xE800000000000000;
    }

    if (byte_2871C4FF0)
    {
      v11 = v9;
    }

    else
    {
      v11 = 0x72656C616353;
    }

    if (byte_2871C4FF0)
    {
      v12 = v10;
    }

    else
    {
      v12 = 0xE600000000000000;
    }

    if (v5 == v11 && v6 == v12)
    {
      goto LABEL_24;
    }

    v14 = v5;
    v15 = v6;
    v16 = sub_25F822CBC();

    if (v16)
    {
      goto LABEL_25;
    }

    v8 = byte_2871C4FF1;
    if (byte_2871C4FF1)
    {
      v17 = v15;
      v18 = v14;
      if (byte_2871C4FF1 == 1)
      {
        v19 = 0x6961526B63616C42;
        v20 = 0xEA00000000006573;
      }

      else
      {
        v20 = 0xE800000000000000;
        v19 = 0x70696C436F72655ALL;
      }
    }

    else
    {
      v20 = 0xE600000000000000;
      v19 = 0x72656C616353;
      v17 = v15;
      v18 = v14;
    }

    if (v18 == v19 && v17 == v20)
    {
      goto LABEL_24;
    }

    v22 = sub_25F822CBC();

    if (v22)
    {
      goto LABEL_25;
    }

    v8 = byte_2871C4FF2;
    if (byte_2871C4FF2)
    {
      v23 = v15;
      v24 = v14;
      if (byte_2871C4FF2 == 1)
      {
        v7 = 0x6961526B63616C42;
        v25 = 0xEA00000000006573;
      }

      else
      {
        v25 = 0xE800000000000000;
        v7 = 0x70696C436F72655ALL;
      }
    }

    else
    {
      v25 = 0xE600000000000000;
      v23 = v15;
      v24 = v14;
    }

    if (v24 == v7 && v23 == v25)
    {
LABEL_24:
    }

    else
    {
      v26 = sub_25F822CBC();

      if ((v26 & 1) == 0)
      {
        sub_25F82292C();

        MEMORY[0x25F8E7510](v14, v15);

        MEMORY[0x25F8E7510](39, 0xE100000000000000);
        sub_25F82298C();
        swift_allocError();
        sub_25F82295C();

        swift_willThrow();
        goto LABEL_26;
      }
    }

LABEL_25:

    *a2 = v8;
LABEL_26:
    __swift_destroy_boxed_opaque_existential_0Tm(v27);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t sub_25F814C28(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25F822E4C();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v3);
  sub_25F822CEC();

  return __swift_destroy_boxed_opaque_existential_0Tm(v2);
}

uint64_t sub_25F814D30(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25F822E4C();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v3);
  sub_25F822CEC();

  return __swift_destroy_boxed_opaque_existential_0Tm(v2);
}

uint64_t sub_25F814E84(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25F822E4C();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v3);
  sub_25F822CEC();

  return __swift_destroy_boxed_opaque_existential_0Tm(v2);
}

uint64_t sub_25F814F7C@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v5 = *a1;
  v6 = *(a1 + 1);
  v7 = a1[28];
  if (v6 && (v8 = *(v6 + 16)) != 0)
  {
    v9 = 0;
    v10 = *(v6 + 48 * v8 + 16);
  }

  else
  {
    v10 = 0;
    v9 = 1;
  }

  v11 = *(a1 + 4);
  v12 = a1[20];
  v13 = *(a1 + 6);

  if (v5 == 2)
  {
    v15 = 0;
  }

  else
  {
    if (v12)
    {
      a3 = 0.0;
    }

    else
    {
      a3 = v11;
    }

    v15 = (v12 & 1) != 0;
  }

  v16 = v13;
  if (v7)
  {
    v16 = 0.0;
  }

  *a2 = v5;
  *(a2 + 8) = a3;
  *(a2 + 16) = v15;
  *(a2 + 24) = v16;
  *(a2 + 32) = v7;
  *(a2 + 40) = 0;
  *(a2 + 48) = 1;
  *(a2 + 56) = v10;
  *(a2 + 64) = v9;
  *(a2 + 72) = 0;
  return result;
}

uint64_t GeneralizedTransferFunction.modifiers.getter()
{
  v1 = *(v0 + 72);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v10 = MEMORY[0x277D84F90];
    sub_25F817B68(0, v2, 0);
    v3 = v10;
    v4 = v1 + 32;
    do
    {
      sub_25F80ADCC(v4, v8);
      sub_25F75CF9C(v8, v9);
      v10 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_25F817B68((v5 > 1), v6 + 1, 1);
        v3 = v10;
      }

      *(v3 + 16) = v6 + 1;
      sub_25F75CF9C(v9, v3 + 40 * v6 + 32);
      v4 += 40;
      --v2;
    }

    while (v2);
  }

  return v3;
}

uint64_t sub_25F8151C0()
{
  sub_25F8222DC();
}

uint64_t sub_25F815294@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25F81886C();
  *a1 = result;
  return result;
}

void sub_25F8152C4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x647261646E617473;
  v5 = 0xE200000000000000;
  v6 = 24908;
  v7 = 0xE500000000000000;
  v8 = 0x616D6D6167;
  if (v2 != 4)
  {
    v8 = 0x7265696669646F6DLL;
    v7 = 0xE900000000000073;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 30540;
  if (v2 != 1)
  {
    v9 = 25164;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = 0xE200000000000000;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

uint64_t sub_25F815360()
{
  v1 = *v0;
  v2 = 0x647261646E617473;
  v3 = 24908;
  v4 = 0x616D6D6167;
  if (v1 != 4)
  {
    v4 = 0x7265696669646F6DLL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 30540;
  if (v1 != 1)
  {
    v5 = 25164;
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

uint64_t sub_25F8153F8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25F81886C();
  *a1 = result;
  return result;
}

uint64_t sub_25F815420(uint64_t a1)
{
  v2 = sub_25F8181EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25F81545C(uint64_t a1)
{
  v2 = sub_25F8181EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GeneralizedTransferFunction.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB1448);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v12 - v5;
  v7 = *v1;
  v19 = *(v1 + 1);
  v18 = v1[16];
  v17 = *(v1 + 3);
  v16 = v1[32];
  v15 = *(v1 + 5);
  v8 = v1[48];
  v12[1] = *(v1 + 7);
  v13 = v1[64];
  v14 = v8;
  v9 = *(v1 + 9);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25F8181EC();
  sub_25F822E5C();
  v28 = v7;
  v27 = 0;
  sub_25F7D2330();
  v10 = v20;
  sub_25F822C4C();
  if (!v10)
  {
    v26 = 1;
    sub_25F822BAC();
    v25 = 2;
    sub_25F822BAC();
    v24 = 3;
    sub_25F822BAC();
    v23 = 4;
    sub_25F822BAC();
    v21 = v9;
    v22 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB1458);
    sub_25F818294(&qword_27FDB1460, sub_25F818240);
    sub_25F822BDC();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t GeneralizedTransferFunction.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB1470);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25F8181EC();
  sub_25F822E3C();
  if (!v2)
  {
    v31 = 0;
    sub_25F7D2684();
    sub_25F822B6C();
    v9 = v26;
    LOBYTE(v26) = 1;
    v10 = sub_25F822ACC();
    v30 = v11 & 1;
    LOBYTE(v26) = 2;
    v25 = sub_25F822ACC();
    v29 = v12 & 1;
    LOBYTE(v26) = 3;
    v24 = sub_25F822ACC();
    v28 = v13 & 1;
    LOBYTE(v26) = 4;
    v23 = sub_25F822ACC();
    v27 = v15 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB1458);
    v31 = 5;
    sub_25F818294(&qword_27FDB1478, sub_25F81830C);
    sub_25F822AFC();
    (*(v6 + 8))(v8, v5);
    v16 = v30;
    v17 = v29;
    v18 = v28;
    v19 = v27;
    *a2 = v9;
    *(a2 + 8) = v10;
    *(a2 + 16) = v16;
    v20 = v26;
    *(a2 + 24) = v25;
    *(a2 + 32) = v17;
    v21 = v23;
    *(a2 + 40) = v24;
    *(a2 + 48) = v18;
    *(a2 + 56) = v21;
    *(a2 + 64) = v19;
    *(a2 + 72) = v20;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

void sub_25F815AE0()
{
  LOBYTE(xmmword_27FDB1348) = 0;
  *(&xmmword_27FDB1348 + 1) = 0;
  byte_27FDB1358 = 1;
  qword_27FDB1360 = 0;
  LOBYTE(xmmword_27FDB1368) = 1;
  *(&xmmword_27FDB1368 + 1) = 0;
  byte_27FDB1378 = 1;
  qword_27FDB1380 = 0x400199999999999ALL;
  LOBYTE(xmmword_27FDB1388) = 0;
  *(&xmmword_27FDB1388 + 1) = 0;
}

uint64_t static GeneralizedTransferFunction.PurePower2p2.getter@<X0>(__int128 *a1@<X8>)
{
  if (qword_27FDAFB18 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = *&byte_27FDB1378;
  v8[2] = xmmword_27FDB1368;
  v8[3] = *&byte_27FDB1378;
  v2 = xmmword_27FDB1388;
  v8[4] = xmmword_27FDB1388;
  v4 = xmmword_27FDB1348;
  v3 = *&byte_27FDB1358;
  v8[0] = xmmword_27FDB1348;
  v8[1] = *&byte_27FDB1358;
  a1[2] = xmmword_27FDB1368;
  a1[3] = v1;
  a1[4] = v2;
  *a1 = v4;
  a1[1] = v3;
  return sub_25F777DAC(v8, &v7);
}

void sub_25F815BD0()
{
  LOBYTE(xmmword_27FDB1398) = 0;
  *(&xmmword_27FDB1398 + 1) = 0;
  byte_27FDB13A8 = 1;
  qword_27FDB13B0 = 0;
  LOBYTE(xmmword_27FDB13B8) = 1;
  *(&xmmword_27FDB13B8 + 1) = 0;
  byte_27FDB13C8 = 1;
  qword_27FDB13D0 = 0x4004CCCCCCCCCCCDLL;
  LOBYTE(xmmword_27FDB13D8) = 0;
  *(&xmmword_27FDB13D8 + 1) = 0;
}

uint64_t static GeneralizedTransferFunction.PurePower2p6.getter@<X0>(__int128 *a1@<X8>)
{
  if (qword_27FDAFB20 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = *&byte_27FDB13C8;
  v8[2] = xmmword_27FDB13B8;
  v8[3] = *&byte_27FDB13C8;
  v2 = xmmword_27FDB13D8;
  v8[4] = xmmword_27FDB13D8;
  v4 = xmmword_27FDB1398;
  v3 = *&byte_27FDB13A8;
  v8[0] = xmmword_27FDB1398;
  v8[1] = *&byte_27FDB13A8;
  a1[2] = xmmword_27FDB13B8;
  a1[3] = v1;
  a1[4] = v2;
  *a1 = v4;
  a1[1] = v3;
  return sub_25F777DAC(v8, &v7);
}

void sub_25F815CC0()
{
  LOBYTE(xmmword_27FDB13E8) = 6;
  *(&xmmword_27FDB13E8 + 1) = 0;
  byte_27FDB13F8 = 1;
  qword_27FDB1400 = 0;
  LOBYTE(xmmword_27FDB1408) = 1;
  *(&xmmword_27FDB1408 + 1) = 0;
  byte_27FDB1418 = 1;
  qword_27FDB1420 = 0;
  LOBYTE(xmmword_27FDB1428) = 1;
  *(&xmmword_27FDB1428 + 1) = 0;
}

uint64_t static GeneralizedTransferFunction.sRGBICCv2.getter@<X0>(__int128 *a1@<X8>)
{
  if (qword_27FDAFB28 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = *&byte_27FDB1418;
  v8[2] = xmmword_27FDB1408;
  v8[3] = *&byte_27FDB1418;
  v2 = xmmword_27FDB1428;
  v8[4] = xmmword_27FDB1428;
  v4 = xmmword_27FDB13E8;
  v3 = *&byte_27FDB13F8;
  v8[0] = xmmword_27FDB13E8;
  v8[1] = *&byte_27FDB13F8;
  a1[2] = xmmword_27FDB1408;
  a1[3] = v1;
  a1[4] = v2;
  *a1 = v4;
  a1[1] = v3;
  return sub_25F777DAC(v8, &v7);
}

uint64_t sub_25F815DB0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  *a2 = result;
  *(a2 + 8) = a3;
  *(a2 + 16) = 0;
  *(a2 + 24) = a4;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 1;
  *(a2 + 56) = 0;
  *(a2 + 64) = 1;
  *(a2 + 72) = 0;
  return result;
}

void static GeneralizedTransferFunction.HDR(peakLuminance:gamma:)(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  *a1 = 5;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
  *(a1 + 56) = a3;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
}

uint64_t GeneralizedTransferFunction.ModifierType.description.getter()
{
  v1 = 0x6961526B63616C42;
  if (*v0 != 1)
  {
    v1 = 0x70696C436F72655ALL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x72656C616353;
  }
}

uint64_t GeneralizedTransferFunction.ModifierType.hashValue.getter()
{
  v1 = *v0;
  sub_25F822DCC();
  MEMORY[0x25F8E7E80](v1);
  return sub_25F822E0C();
}

uint64_t sub_25F815F44()
{
  v1 = 0x6961526B63616C42;
  if (*v0 != 1)
  {
    v1 = 0x70696C436F72655ALL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x72656C616353;
  }
}

uint64_t sub_25F815FF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x696C7069746C756DLL && a2 == 0xEA00000000007265)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_25F822CBC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_25F816088(uint64_t a1)
{
  v2 = sub_25F8190C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25F8160C4(uint64_t a1)
{
  v2 = sub_25F8190C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25F816104(uint64_t a1, char a2, double a3, double a4)
{
  sub_25F760954(a1, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFD00);
  if (swift_dynamicCast() && (v10 == a3 ? (v7 = v11 == a4) : (v7 = 0), v7))
  {
    v8 = v12 ^ a2 ^ 1;
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t GeneralizedTransferFunction.Modifier<>.isEqualTo(_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F82279C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v17[-v7 - 8];
  v9 = *(a2 - 8);
  MEMORY[0x28223BE20](v6);
  v11 = &v17[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_25F760954(a1, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFD00);
  v12 = swift_dynamicCast();
  v13 = *(v9 + 56);
  if (v12)
  {
    v13(v8, 0, 1, a2);
    (*(v9 + 32))(v11, v8, a2);
    v14 = sub_25F82231C();
    (*(v9 + 8))(v11, a2);
  }

  else
  {
    v13(v8, 1, 1, a2);
    (*(v5 + 8))(v8, v4);
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t sub_25F816460(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB15A8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25F81940C();
  sub_25F822E5C();
  v8[15] = 0;
  sub_25F822C0C();
  if (!v1)
  {
    v8[14] = 1;
    sub_25F822C0C();
    v8[13] = 2;
    sub_25F822BFC();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_25F816610()
{
  v1 = 0x696152664F646E65;
  if (*v0 != 1)
  {
    v1 = 0x655A6E6961746572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6573696172;
  }
}

uint64_t sub_25F81666C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25F81911C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25F816694(uint64_t a1)
{
  v2 = sub_25F81940C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25F8166D0(uint64_t a1)
{
  v2 = sub_25F81940C();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_25F816718(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_25F81923C(a1);
  if (!v2)
  {
    *a2 = v5;
    *(a2 + 8) = v6;
    *(a2 + 16) = v4 & 1;
  }
}

uint64_t sub_25F81676C(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return (*(a2 + 16) ^ *(a1 + 16) ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25F8167BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6C6F687365726874 && a2 == 0xE900000000000064)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_25F822CBC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_25F81684C(uint64_t a1)
{
  v2 = sub_25F819460();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25F816888(uint64_t a1)
{
  v2 = sub_25F819460();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25F8168C4(uint64_t a1)
{
  v2 = *v1;
  sub_25F760954(a1, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFD00);
  result = swift_dynamicCast();
  if (result)
  {
    return v2 == v4;
  }

  return result;
}

uint64_t sub_25F816980@<X0>(void *a1@<X0>, uint64_t *a2@<X3>, void (*a3)(void)@<X5>, void *a4@<X8>)
{
  v14 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  v15 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a3();
  sub_25F822E3C();
  if (v4)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v10 = v14;
  sub_25F822B2C();
  v12 = v11;
  (*(v15 + 8))(v9, v7);
  result = __swift_destroy_boxed_opaque_existential_0Tm(a1);
  *v10 = v12;
  return result;
}

uint64_t sub_25F816B38(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, void (*a6)(void))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a4);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a6();
  sub_25F822E5C();
  sub_25F822C0C();
  return (*(v9 + 8))(v11, v8);
}

uint64_t GeneralizedTransferFunction.modified(by:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  *(&v33 + 1) = *(v2 + 1);
  DWORD1(v33) = *(v2 + 1);
  v6 = *(v2 + 1);
  v7 = v2[16];
  *(&v34 + 1) = *(v2 + 17);
  DWORD1(v34) = *(v2 + 5);
  v8 = *(v2 + 3);
  v9 = v2[32];
  HIDWORD(v35) = *(v2 + 9);
  *(&v35 + 1) = *(v2 + 33);
  v10 = *(v2 + 5);
  v11 = v2[48];
  *&v38[3] = *(v2 + 13);
  *v38 = *(v2 + 49);
  v12 = *(v2 + 7);
  v13 = v2[64];
  v31 = v5;
  LOBYTE(v33) = v5;
  v30 = v6;
  *(&v33 + 1) = v6;
  v29 = v7;
  LOBYTE(v34) = v7;
  v28 = v8;
  *(&v34 + 1) = v8;
  v27 = v9;
  LOBYTE(v35) = v9;
  v26 = v10;
  v36 = v10;
  v25 = v11;
  v37 = v11;
  v39 = v12;
  v40 = v13;
  *v41 = *(v2 + 65);
  *&v41[7] = *(v2 + 9);
  v14 = GeneralizedTransferFunction.modifiers.getter();
  sub_25F760954(a1, &v33);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v14 = sub_25F75C700(0, v14[2] + 1, 1, v14);
  }

  v16 = v14[2];
  v15 = v14[3];
  v17 = v16 + 1;
  if (v16 >= v15 >> 1)
  {
    v14 = sub_25F75C700((v15 > 1), v16 + 1, 1, v14);
  }

  v14[2] = v17;
  v18 = (v14 + 4);
  sub_25F75CF9C(&v33, &v14[5 * v16 + 4]);
  v32 = MEMORY[0x277D84F90];
  sub_25F817C28(0, v17, 0);
  do
  {
    sub_25F760954(v18, &v33);
    v20 = *(v32 + 16);
    v19 = *(v32 + 24);
    if (v20 >= v19 >> 1)
    {
      sub_25F817C28((v19 > 1), v20 + 1, 1);
    }

    *(v32 + 16) = v20 + 1;
    v21 = v32 + 40 * v20;
    v22 = v33;
    v23 = v34;
    *(v21 + 64) = v35;
    *(v21 + 32) = v22;
    *(v21 + 48) = v23;
    v18 += 40;
    --v17;
  }

  while (v17);

  *a2 = v31;
  *(a2 + 8) = v30;
  *(a2 + 16) = v29;
  *(a2 + 24) = v28;
  *(a2 + 32) = v27;
  *(a2 + 40) = v26;
  *(a2 + 48) = v25;
  *(a2 + 56) = v12;
  *(a2 + 64) = v13;
  *(a2 + 72) = v32;
  return result;
}

uint64_t GeneralizedTransferFunction.modified<A>(by:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v36[1] = a3;
  v8 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v4;
  *(&v47 + 1) = *(v4 + 1);
  DWORD1(v47) = *(v4 + 1);
  v12 = *(v4 + 1);
  v13 = v4[16];
  *(&v48 + 1) = *(v4 + 17);
  DWORD1(v48) = *(v4 + 5);
  v14 = *(v4 + 3);
  v15 = v4[32];
  HIDWORD(v49) = *(v4 + 9);
  *(&v49 + 1) = *(v4 + 33);
  v16 = *(v4 + 5);
  v17 = v4[48];
  *&v52[3] = *(v4 + 13);
  *v52 = *(v4 + 49);
  v18 = *(v4 + 7);
  v19 = v4[64];
  v41 = v11;
  LOBYTE(v47) = v11;
  v39 = v14;
  v40 = v12;
  *(&v47 + 1) = v12;
  LOBYTE(v48) = v13;
  *(&v48 + 1) = v14;
  LOBYTE(v49) = v15;
  v37 = v18;
  v38 = v16;
  v50 = v16;
  v51 = v17;
  v53 = v18;
  v54 = v19;
  v20 = *(v4 + 65);
  *&v55[7] = *(v4 + 9);
  *v55 = v20;
  v56 = GeneralizedTransferFunction.modifiers.getter();
  (*(v8 + 16))(v10, a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB1438);
  sub_25F82255C();
  v21 = v56;
  v46 = v13 & 1;
  v45 = v15 & 1;
  v44 = v17 & 1;
  v43 = v19 & 1;
  v22 = *(v56 + 16);
  if (v22)
  {
    v42 = MEMORY[0x277D84F90];
    sub_25F817C28(0, v22, 0);
    v23 = v42;
    v24 = v21 + 32;
    do
    {
      sub_25F760954(v24, &v47);
      v42 = v23;
      v26 = *(v23 + 16);
      v25 = *(v23 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_25F817C28((v25 > 1), v26 + 1, 1);
        v23 = v42;
      }

      *(v23 + 16) = v26 + 1;
      v27 = v23 + 40 * v26;
      v28 = v47;
      v29 = v48;
      *(v27 + 64) = v49;
      *(v27 + 32) = v28;
      *(v27 + 48) = v29;
      v24 += 40;
      --v22;
    }

    while (v22);
  }

  else
  {

    v23 = MEMORY[0x277D84F90];
  }

  v31 = v46;
  v32 = v45;
  v33 = v44;
  v34 = v43;
  *a4 = v41;
  *(a4 + 8) = v40;
  *(a4 + 16) = v31;
  *(a4 + 24) = v39;
  *(a4 + 32) = v32;
  v35 = v37;
  *(a4 + 40) = v38;
  *(a4 + 48) = v33;
  *(a4 + 56) = v35;
  *(a4 + 64) = v34;
  *(a4 + 72) = v23;
  return result;
}

void __swiftcall GeneralizedTransferFunction.withoutModifiers(of:)(ProDisplayLibrary::GeneralizedTransferFunction *__return_ptr retstr, ProDisplayLibrary::GeneralizedTransferFunction::ModifierType of)
{
  v3 = *of;
  v4 = *v2;
  *(&v46 + 1) = *(v2 + 1);
  DWORD1(v46) = *(v2 + 4);
  v5 = *(v2 + 8);
  v6 = *(v2 + 16);
  v58 = v6;
  *(&v47 + 1) = *(v2 + 17);
  DWORD1(v47) = *(v2 + 20);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v57 = v8;
  v9 = *(v2 + 33);
  HIDWORD(v48) = *(v2 + 36);
  *(&v48 + 1) = v9;
  v10 = *(v2 + 40);
  v11 = *(v2 + 48);
  v56 = v11;
  v12 = *(v2 + 49);
  *&v51[3] = *(v2 + 52);
  *v51 = v12;
  v13 = *(v2 + 56);
  v14 = *(v2 + 64);
  v55 = v14;
  v39 = v4;
  LOBYTE(v46) = v4;
  v37 = v7;
  v38 = v5;
  *(&v46 + 1) = v5;
  LOBYTE(v47) = v6;
  *(&v47 + 1) = v7;
  LOBYTE(v48) = v8;
  v35 = v13;
  v36 = v10;
  v49 = v10;
  v50 = v11;
  v52 = v13;
  v53 = v14;
  v15 = *(v2 + 65);
  *&v54[7] = *(v2 + 72);
  *v54 = v15;
  v16 = GeneralizedTransferFunction.modifiers.getter();
  v17 = v16;
  v18 = *(v16 + 16);
  v19 = MEMORY[0x277D84F90];
  if (v18)
  {
    v20 = 0;
    v21 = v16 + 32;
    while (v20 < *(v17 + 16))
    {
      sub_25F760954(v21, &v42);
      __swift_project_boxed_opaque_existential_1(&v42, v43);
      swift_getDynamicType();
      (*(v44 + 24))(v41);
      if (LOBYTE(v41[0]) == v3)
      {
        __swift_destroy_boxed_opaque_existential_0Tm(&v42);
      }

      else
      {
        sub_25F75CF9C(&v42, v41);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v45 = v19;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_25F817B68(0, *(v19 + 16) + 1, 1);
          v19 = v45;
        }

        v24 = *(v19 + 16);
        v23 = *(v19 + 24);
        if (v24 >= v23 >> 1)
        {
          sub_25F817B68((v23 > 1), v24 + 1, 1);
          v19 = v45;
        }

        *(v19 + 16) = v24 + 1;
        sub_25F75CF9C(v41, v19 + 40 * v24 + 32);
      }

      ++v20;
      v21 += 40;
      if (v18 == v20)
      {
        v6 = v58;
        v8 = v57;
        v11 = v56;
        v14 = v55;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:

    LOBYTE(v41[0]) = v6 & 1;
    LOBYTE(v45) = v8 & 1;
    v25 = *(v19 + 16);
    if (v25)
    {
      *&v42 = MEMORY[0x277D84F90];
      sub_25F817C28(0, v25, 0);
      v26 = v42;
      v27 = v19 + 32;
      do
      {
        sub_25F760954(v27, &v46);
        *&v42 = v26;
        v29 = *(v26 + 16);
        v28 = *(v26 + 24);
        if (v29 >= v28 >> 1)
        {
          sub_25F817C28((v28 > 1), v29 + 1, 1);
          v26 = v42;
        }

        *(v26 + 16) = v29 + 1;
        v30 = v26 + 40 * v29;
        v31 = v46;
        v32 = v47;
        *(v30 + 64) = v48;
        *(v30 + 32) = v31;
        *(v30 + 48) = v32;
        v27 += 40;
        --v25;
      }

      while (v25);
    }

    else
    {

      v26 = MEMORY[0x277D84F90];
    }

    v33 = v41[0];
    v34 = v45;
    retstr->standard = v39;
    *(&retstr->Lw.value + 7) = v38;
    BYTE6(retstr->Lb.value) = v33;
    *(&retstr->La.value + 5) = v37;
    BYTE4(retstr->gamma.value) = v34;
    *(&retstr->boxedModifiers.value._rawValue + 3) = v36;
    BYTE1(retstr[1].Lw.value) = v11 & 1;
    retstr[1].Lb.value = v35;
    retstr[1].Lb.is_nil = v14 & 1;
    *(&retstr[1].La.value + 7) = v26;
  }
}

uint64_t sub_25F81752C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_25F760954(a1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFD00);
  v5 = swift_dynamicCast();
  return (*(*(a2 - 8) + 56))(a3, v5 ^ 1u, 1, a2);
}

uint64_t sub_25F8175E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_25F822CBC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_25F81766C(uint64_t a1)
{
  v2 = sub_25F8188B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25F8176A8(uint64_t a1)
{
  v2 = sub_25F8188B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25F8176E4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB14E8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15[-v7 - 8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25F8188B8();
  sub_25F822E3C();
  if (!v2)
  {
    sub_25F8184A0();
    sub_25F822B6C();
    if (v16)
    {
      if (v16 == 1)
      {
        v9 = &type metadata for GeneralizedTransferFunction.Modifiers.BlackRaise;
        v10 = sub_25F818960();
      }

      else
      {
        v9 = &type metadata for GeneralizedTransferFunction.Modifiers.ZeroClip;
        v10 = sub_25F81890C();
      }
    }

    else
    {
      v9 = &type metadata for GeneralizedTransferFunction.Modifiers.Scaler;
      v10 = sub_25F8189B4();
    }

    v11 = v10;
    sub_25F760954(a1, v15);
    v17 = v9;
    v18 = v11;
    __swift_allocate_boxed_opaque_existential_1(&v16);
    sub_25F82261C();
    (*(v6 + 8))(v8, v5);
    sub_25F75CF9C(&v16, v19);
    v12 = v19[1];
    *a2 = v19[0];
    *(a2 + 16) = v12;
    *(a2 + 32) = v20;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t sub_25F817908(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB14D8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13[-1] - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25F8188B8();
  sub_25F822E5C();
  sub_25F760954(v1, v13);
  __swift_project_boxed_opaque_existential_1(v13, v13[3]);
  DynamicType = swift_getDynamicType();
  v10 = v13[4];
  __swift_destroy_boxed_opaque_existential_0Tm(v13);
  (*(v10 + 24))(&v14, DynamicType, v10);
  sub_25F8184F4();
  sub_25F822C4C();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v3, v3[3]);
    sub_25F8222BC();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_25F817B0C(void *a1, uint64_t a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  return (*(v4 + 32))(a2, v3, v4) & 1;
}

void *sub_25F817B68(void *a1, int64_t a2, char a3)
{
  result = sub_25F769EC0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25F817B88(char *a1, int64_t a2, char a3)
{
  result = sub_25F769EE4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25F817BA8(char *a1, int64_t a2, char a3)
{
  result = sub_25F769EF8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25F817BC8(char *a1, int64_t a2, char a3)
{
  result = sub_25F769FFC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_25F817BE8(void *a1, int64_t a2, char a3)
{
  result = sub_25F76A108(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_25F817C08(void *a1, int64_t a2, char a3)
{
  result = sub_25F76A250(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25F817C28(char *a1, int64_t a2, char a3)
{
  result = sub_25F76A398(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_25F817C48(size_t a1, int64_t a2, char a3)
{
  result = sub_25F76A4B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_25F817C68(size_t a1, int64_t a2, char a3)
{
  result = sub_25F76A4DC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25F817C88(char *a1, int64_t a2, char a3)
{
  result = sub_25F76A500(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25F817CA8(char *a1, int64_t a2, char a3)
{
  result = sub_25F76A514(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25F817CC8(char *a1, int64_t a2, char a3)
{
  result = sub_25F76A528(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25F817CE8(char *a1, int64_t a2, char a3)
{
  result = sub_25F76A648(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_25F817D08(size_t a1, int64_t a2, char a3)
{
  result = sub_25F76A768(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25F817D28(char *a1, int64_t a2, char a3)
{
  result = sub_25F76AB28(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_25F817D48(void *a1, int64_t a2, char a3)
{
  result = sub_25F76AC28(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25F817D68(char *a1, int64_t a2, char a3)
{
  result = sub_25F76AD5C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_25F817D88(void *a1, int64_t a2, char a3)
{
  result = sub_25F76AE7C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25F817DA8(char *a1, int64_t a2, char a3)
{
  result = sub_25F76AFE8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_25F817DC8(void *a1, int64_t a2, char a3)
{
  result = sub_25F76AFFC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25F817DE8(char *a1, int64_t a2, char a3)
{
  result = sub_25F76B140(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25F817E08(char *a1, int64_t a2, char a3)
{
  result = sub_25F76B244(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25F817E28(char *a1, int64_t a2, char a3)
{
  result = sub_25F76B258(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_25F817E64(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_25F818A08();
  result = MEMORY[0x25F8E76E0](v2, &type metadata for Preset.LatencyMode, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      sub_25F7BA538(&v7, v6);
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_25F817ED8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_25F818B04();
  result = MEMORY[0x25F8E76E0](v2, &type metadata for HIDReportID, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      sub_25F7BA654(&v7, v6);
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_25F817FB4(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, void (*a4)(char *, void))
{
  v7 = *(a1 + 16);
  v8 = a2();
  result = MEMORY[0x25F8E76E0](v7, a3, v8);
  v13 = result;
  if (v7)
  {
    v10 = (a1 + 32);
    do
    {
      v11 = *v10++;
      a4(&v12, v11);
      --v7;
    }

    while (v7);
    return v13;
  }

  return result;
}

uint64_t sub_25F818034(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFFE8);
  v4 = sub_25F818B58();
  result = MEMORY[0x25F8E76E0](v2, v3, v4);
  v9 = result;
  if (v2)
  {
    v6 = (a1 + 32);
    do
    {
      v7 = *v6++;

      sub_25F7BAAD4(&v8, v7);

      --v2;
    }

    while (v2);
    return v9;
  }

  return result;
}

BOOL _s17ProDisplayLibrary27GeneralizedTransferFunctionV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 9);
  v3 = a2[16];
  v4 = *(a2 + 9);
  if (a1[16])
  {
    if (!a2[16])
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 1) != *(a2 + 1))
    {
      v3 = 1;
    }

    if (v3)
    {
      return 0;
    }
  }

  if (a1[32])
  {
    if (!a2[32])
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 3) == *(a2 + 3))
    {
      v6 = a2[32];
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      return 0;
    }
  }

  if (a1[48])
  {
    if (!a2[48])
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 5) == *(a2 + 5))
    {
      v7 = a2[48];
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      return 0;
    }
  }

  if (a1[64])
  {
    if (!a2[64])
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 7) == *(a2 + 7))
    {
      v8 = a2[64];
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      return 0;
    }
  }

  if (v2)
  {
    if (!v4)
    {
      return 0;
    }

    v9 = sub_25F805D50(v2, v4);

    return (v9 & 1) != 0;
  }

  return !v4;
}

unint64_t sub_25F8181EC()
{
  result = qword_27FDB1450;
  if (!qword_27FDB1450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB1450);
  }

  return result;
}

unint64_t sub_25F818240()
{
  result = qword_27FDB1468;
  if (!qword_27FDB1468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB1468);
  }

  return result;
}

uint64_t sub_25F818294(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FDB1458);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25F81830C()
{
  result = qword_27FDB1480;
  if (!qword_27FDB1480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB1480);
  }

  return result;
}

unint64_t sub_25F818364()
{
  result = qword_27FDB1488;
  if (!qword_27FDB1488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB1488);
  }

  return result;
}

unint64_t sub_25F8183B8(void *a1)
{
  a1[1] = sub_25F8183F8();
  a1[2] = sub_25F81844C();
  a1[3] = sub_25F8184A0();
  result = sub_25F8184F4();
  a1[4] = result;
  return result;
}

unint64_t sub_25F8183F8()
{
  result = qword_27FDB1490;
  if (!qword_27FDB1490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB1490);
  }

  return result;
}

unint64_t sub_25F81844C()
{
  result = qword_27FDB1498;
  if (!qword_27FDB1498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB1498);
  }

  return result;
}

unint64_t sub_25F8184A0()
{
  result = qword_27FDB14A0;
  if (!qword_27FDB14A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB14A0);
  }

  return result;
}

unint64_t sub_25F8184F4()
{
  result = qword_27FDB14A8;
  if (!qword_27FDB14A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB14A8);
  }

  return result;
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

uint64_t sub_25F8185A8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 80))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 72);
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

uint64_t sub_25F818604(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 72) = a2;
    }
  }

  return result;
}

uint64_t sub_25F8186C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25F81870C(uint64_t result, int a2, int a3)
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

unint64_t sub_25F818768()
{
  result = qword_27FDB14C0;
  if (!qword_27FDB14C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB14C0);
  }

  return result;
}

unint64_t sub_25F8187C0()
{
  result = qword_27FDB14C8;
  if (!qword_27FDB14C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB14C8);
  }

  return result;
}

unint64_t sub_25F818818()
{
  result = qword_27FDB14D0;
  if (!qword_27FDB14D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB14D0);
  }

  return result;
}

uint64_t sub_25F81886C()
{
  v0 = sub_25F822A9C();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_25F8188B8()
{
  result = qword_27FDB14E0;
  if (!qword_27FDB14E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB14E0);
  }

  return result;
}

unint64_t sub_25F81890C()
{
  result = qword_27FDB14F0;
  if (!qword_27FDB14F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB14F0);
  }

  return result;
}

unint64_t sub_25F818960()
{
  result = qword_27FDB14F8;
  if (!qword_27FDB14F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB14F8);
  }

  return result;
}

unint64_t sub_25F8189B4()
{
  result = qword_27FDB1500;
  if (!qword_27FDB1500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB1500);
  }

  return result;
}

unint64_t sub_25F818A08()
{
  result = qword_27FDB1508;
  if (!qword_27FDB1508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB1508);
  }

  return result;
}

unint64_t sub_25F818A5C()
{
  result = qword_27FDB1510;
  if (!qword_27FDB1510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB1510);
  }

  return result;
}

unint64_t sub_25F818AB0()
{
  result = qword_27FDB1518;
  if (!qword_27FDB1518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB1518);
  }

  return result;
}

unint64_t sub_25F818B04()
{
  result = qword_27FDB1520;
  if (!qword_27FDB1520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB1520);
  }

  return result;
}

unint64_t sub_25F818B58()
{
  result = qword_27FDB1528;
  if (!qword_27FDB1528)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FDAFFE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB1528);
  }

  return result;
}

unint64_t sub_25F818BD4()
{
  result = qword_27FDB1530;
  if (!qword_27FDB1530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB1530);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GeneralizedTransferFunction.Modifiers.BlackRaise(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for GeneralizedTransferFunction.Modifiers.BlackRaise(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_25F818D0C()
{
  result = qword_27FDB1538;
  if (!qword_27FDB1538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB1538);
  }

  return result;
}

unint64_t sub_25F818D8C()
{
  result = qword_27FDB1540;
  if (!qword_27FDB1540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB1540);
  }

  return result;
}

unint64_t sub_25F818DE0()
{
  result = qword_27FDB1548;
  if (!qword_27FDB1548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB1548);
  }

  return result;
}

unint64_t sub_25F818E60()
{
  result = qword_27FDB1550;
  if (!qword_27FDB1550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB1550);
  }

  return result;
}

unint64_t sub_25F818EB4()
{
  result = qword_27FDB1558;
  if (!qword_27FDB1558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB1558);
  }

  return result;
}

uint64_t sub_25F818F34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_25F818F70()
{
  result = qword_27FDB1560;
  if (!qword_27FDB1560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB1560);
  }

  return result;
}

unint64_t sub_25F818FC4()
{
  result = qword_27FDB1568;
  if (!qword_27FDB1568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB1568);
  }

  return result;
}

unint64_t sub_25F81901C()
{
  result = qword_27FDB1570;
  if (!qword_27FDB1570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB1570);
  }

  return result;
}

unint64_t sub_25F819074()
{
  result = qword_27FDB1578;
  if (!qword_27FDB1578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB1578);
  }

  return result;
}

unint64_t sub_25F8190C8()
{
  result = qword_27FDB1588;
  if (!qword_27FDB1588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB1588);
  }

  return result;
}

uint64_t sub_25F81911C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6573696172 && a2 == 0xE500000000000000;
  if (v4 || (sub_25F822CBC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696152664F646E65 && a2 == 0xEA00000000006573 || (sub_25F822CBC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x655A6E6961746572 && a2 == 0xEA00000000006F72)
  {

    return 2;
  }

  else
  {
    v6 = sub_25F822CBC();

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

double sub_25F81923C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB1598);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9[-v4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25F81940C();
  sub_25F822E3C();
  v9[15] = 0;
  sub_25F822B2C();
  v7 = v6;
  v9[14] = 1;
  sub_25F822B2C();
  v9[13] = 2;
  sub_25F822B1C();
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v7;
}

unint64_t sub_25F81940C()
{
  result = qword_27FDB15A0;
  if (!qword_27FDB15A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB15A0);
  }

  return result;
}

unint64_t sub_25F819460()
{
  result = qword_27FDB15B8;
  if (!qword_27FDB15B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB15B8);
  }

  return result;
}

unint64_t sub_25F8194F8()
{
  result = qword_27FDB15C8;
  if (!qword_27FDB15C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB15C8);
  }

  return result;
}

unint64_t sub_25F819550()
{
  result = qword_27FDB15D0;
  if (!qword_27FDB15D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB15D0);
  }

  return result;
}

unint64_t sub_25F8195A8()
{
  result = qword_27FDB15D8;
  if (!qword_27FDB15D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB15D8);
  }

  return result;
}

unint64_t sub_25F819600()
{
  result = qword_27FDB15E0;
  if (!qword_27FDB15E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB15E0);
  }

  return result;
}

unint64_t sub_25F819658()
{
  result = qword_27FDB15E8;
  if (!qword_27FDB15E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB15E8);
  }

  return result;
}

unint64_t sub_25F8196B0()
{
  result = qword_27FDB15F0;
  if (!qword_27FDB15F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB15F0);
  }

  return result;
}

unint64_t sub_25F819708()
{
  result = qword_27FDB15F8;
  if (!qword_27FDB15F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB15F8);
  }

  return result;
}

unint64_t sub_25F819760()
{
  result = qword_27FDB1600;
  if (!qword_27FDB1600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB1600);
  }

  return result;
}

unint64_t sub_25F8197B8()
{
  result = qword_27FDB1608;
  if (!qword_27FDB1608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB1608);
  }

  return result;
}

uint64_t sub_25F819828@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FDAFA48 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Preset.Info(0);
  v3 = __swift_project_value_buffer(v2, qword_27FDC0F20);

  return sub_25F777C88(v3, a1);
}

void __swiftcall CCM.init(srcPrimaries:srcWhitePoint:dstPrimaries:dstWhitePoint:dstNormalized:)(ProDisplayLibrary::CCM *__return_ptr retstr, ProDisplayLibrary::Primaries *srcPrimaries, ProDisplayLibrary::Chromaticity srcWhitePoint, ProDisplayLibrary::Primaries *dstPrimaries, ProDisplayLibrary::Chromaticity dstWhitePoint, Swift::Bool dstNormalized)
{
  v8 = v7;
  x = srcPrimaries->red.x;
  y = srcPrimaries->red.y;
  v12 = srcPrimaries->green.x;
  v13 = srcPrimaries->green.y;
  v14 = srcPrimaries->blue.x;
  v15 = srcPrimaries->blue.y;
  v17 = dstPrimaries->red.x;
  v16 = dstPrimaries->red.y;
  v18 = *(dstNormalized + 8);
  v19 = *(dstNormalized + 16);
  v20 = *(dstNormalized + 24);
  v21 = *(dstNormalized + 32);
  v22 = *(dstNormalized + 40);
  v78 = *v6;
  v76 = *dstNormalized;
  v77 = v6[1];
  v88 = 0;
  v87 = 0;
  v86 = 0;
  v85 = 0;
  v23 = x;
  v96.f64[0] = x;
  v96.f64[1] = y;
  v24 = y;
  v25 = v12;
  *&v97 = v12;
  *(&v97 + 1) = v13;
  v26 = v13;
  v27 = v14;
  *&v98 = v14;
  *(&v98 + 1) = v15;
  v28 = v15;
  v90.f64[0] = v76;
  v90.f64[1] = v18;
  v74 = v19;
  v75 = v18;
  *&v91 = v19;
  *(&v91 + 1) = v20;
  *(&v72 + 1) = v22;
  v73 = v20;
  *&v72 = v21;
  *&v92 = v21;
  *(&v92 + 1) = v22;
  v29 = _s17ProDisplayLibrary9PrimariesV2eeoiySbAC_ACtFZ_0(&v96, &v90);
  v30 = v16;
  v31 = v17;
  if (v29 && v17 == v78 && v16 == v77)
  {
    v33 = *MEMORY[0x277D86098];
    v32 = *(MEMORY[0x277D86098] + 16);
    v35 = *(MEMORY[0x277D86098] + 32);
    v34 = *(MEMORY[0x277D86098] + 48);
    v37 = *(MEMORY[0x277D86098] + 64);
    v36 = *(MEMORY[0x277D86098] + 80);
    v38 = *(&v72 + 1);
    v39 = v72;
    v40 = v23;
    v41 = v24;
    v42 = v25;
    v43 = v26;
    v44 = v27;
  }

  else
  {
    v69 = v23;
    v70 = v16;
    v96.f64[0] = v23;
    v96.f64[1] = v24;
    v41 = v24;
    v42 = v25;
    *&v97 = v25;
    *(&v97 + 1) = v26;
    v43 = v26;
    v44 = v27;
    *&v98 = v27;
    *(&v98 + 1) = v28;
    v71 = v17;
    v90.f64[0] = v17;
    v90.f64[1] = v16;
    sub_25F81B470(v96.f64, v90.f64, v89);
    v57 = v89[0];
    v59 = v89[1];
    v61 = v89[2];
    v63 = v89[3];
    v65 = v89[4];
    v67 = v89[5];
    v96.f64[0] = v76;
    v96.f64[1] = v75;
    *&v97 = v74;
    *(&v97 + 1) = v73;
    v38 = *(&v72 + 1);
    v39 = v72;
    v98 = v72;
    v79.f64[0] = v78;
    v79.f64[1] = v77;
    sub_25F81B470(v96.f64, v79.f64, &v90);
    v96 = v90;
    v97 = v91;
    v98 = v92;
    v99 = v93;
    v100 = v94;
    v101 = v95;
    __invert_d3();
    v32 = vmlaq_f64(vmlaq_laneq_f64(vmulq_f64(v80, v57), v82, v57, 1), v59, v84);
    v33 = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v79, v57.f64[0]), v81, v57, 1), v83, v59.f64[0]);
    v34 = vmlaq_f64(vmlaq_laneq_f64(vmulq_f64(v80, v61), v82, v61, 1), v63, v84);
    v35 = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v79, v61.f64[0]), v81, v61, 1), v83, v63.f64[0]);
    v36 = vmlaq_f64(vmlaq_laneq_f64(vmulq_f64(v80, v65), v82, v65, 1), v67, v84);
    v37 = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v79, v65.f64[0]), v81, v65, 1), v83, v67.f64[0]);
    if (v8)
    {
      v54 = vextq_s8(v33, v33, 8uLL).u64[0];
      v55 = vextq_s8(v35, v35, 8uLL).u64[0];
      v56 = vextq_s8(v37, v37, 8uLL).u64[0];
      v58 = v37.f64[0];
      v66 = v33.f64[0];
      v68 = v32;
      v62 = v35.f64[0];
      v64 = v34;
      v60 = v36;
      v45 = sub_25F75BBAC(vaddq_f64(v37, vaddq_f64(v33, v35)), vaddq_f64(v36, vaddq_f64(v32, v34)).f64[0]);
      v46.f64[0] = v58;
      v47.f64[0] = v62;
      v48.f64[0] = v66;
      v49.f64[0] = 1.0 / v45;
      *&v48.f64[1] = v54;
      v33 = vmulq_n_f64(v48, v49.f64[0]);
      v32 = vmulq_f64(v68, v49);
      *&v47.f64[1] = v55;
      v35 = vmulq_n_f64(v47, v49.f64[0]);
      v34 = vmulq_f64(v64, v49);
      *&v46.f64[1] = v56;
      v37 = vmulq_n_f64(v46, v49.f64[0]);
      v36 = vmulq_f64(v60, v49);
    }

    v30 = v70;
    v31 = v71;
    v40 = v69;
  }

  v50 = v88;
  v51 = v87;
  v52 = v86;
  v53 = v85;
  *retstr->affineTransformMatrix.columns[0].f64 = v33;
  *&retstr->affineTransformMatrix.columns[0].f64[2] = v32;
  *retstr->affineTransformMatrix.columns[1].f64 = v35;
  *&retstr->affineTransformMatrix.columns[1].f64[2] = v34;
  *retstr->affineTransformMatrix.columns[2].f64 = v37;
  *&retstr->affineTransformMatrix.columns[2].f64[2] = v36;
  retstr->srcPrim.value.red.x = v40;
  retstr->srcPrim.value.red.y = v41;
  retstr->srcPrim.value.green.x = v42;
  retstr->srcPrim.value.green.y = v43;
  retstr->srcPrim.value.blue.x = v44;
  retstr->srcPrim.value.blue.y = v28;
  retstr->srcPrim.is_nil = v50;
  *(&retstr->srcWP.value.x + 7) = v31;
  *(&retstr->srcWP.value.y + 7) = v30;
  BYTE6(retstr->dstPrim.value.red.x) = v51;
  *(&retstr->dstPrim.value.red.y + 6) = v76;
  *(&retstr->dstPrim.value.green.x + 6) = v75;
  *(&retstr->dstPrim.value.green.y + 6) = v74;
  *(&retstr->dstPrim.value.blue.x + 6) = v73;
  *(&retstr->dstPrim.value.blue.y + 6) = v39;
  *(&retstr->dstWP.value.x + 5) = v38;
  BYTE5(retstr->dstWP.value.y) = v52;
  *(&retstr->dstWP + 21) = v78;
  retstr[1].affineTransformMatrix.columns[0].f64[0] = v77;
  LOBYTE(retstr[1].affineTransformMatrix.columns[0].f64[1]) = v53;
}

Swift::Double_optional __swiftcall CCM.correctionFactor()()
{
  if (*(v0 + 224) & 1) != 0 || (*(v0 + 248))
  {
    LOBYTE(v1) = 0;
  }

  else
  {
    v2 = *(v0 + 232);
    v5 = vaddq_f64(*(v0 + 64), vaddq_f64(*v0, *(v0 + 32)));
    *&v6 = *&vaddq_f64(*(v0 + 80), vaddq_f64(*(v0 + 16), *(v0 + 48)));
    v3 = *(v0 + 192);
    v8[0] = *(v0 + 176);
    v8[1] = v3;
    v8[2] = *(v0 + 208);
    v7 = v2;
    sub_25F81B470(v8, &v7, v9);
    v4 = 1.0 / COERCE_DOUBLE(*&vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(*v9, *&v5), *(v9 + 32), v5, 1), *(v9 + 64), v6).f64[1]);
    *&v1 = v4;
  }

  result.value = v4;
  result.is_nil = v1;
  return result;
}

__n128 CCM.normalized.getter@<Q0>(uint64_t a1@<X8>)
{
  v11 = *v1;
  v12 = *(v1 + 16);
  v13 = *(v1 + 32);
  v14 = *(v1 + 48);
  v15 = *(v1 + 64);
  v16 = *(v1 + 80);
  v3 = *(v1 + 128);
  v4 = *(v1 + 136);
  v5 = *(v1 + 152);
  v6 = *(v1 + 160);
  v19 = *(v1 + 216);
  v20 = *(v1 + 208);
  v17 = *(v1 + 240);
  v18 = *(v1 + 232);
  v23 = *(v1 + 168);
  v24 = *(v1 + 144);
  v21 = *(v1 + 248);
  v22 = *(v1 + 224);
  v7 = 1.0 / sub_25F75BBAC(vaddq_f64(v15, vaddq_f64(*v1, v13)), vaddq_f64(v16, vaddq_f64(v12, v14)).f64[0]);
  *a1 = vmulq_n_f64(v11, v7);
  *(a1 + 16) = vmulq_n_f64(v12, v7);
  *(a1 + 32) = vmulq_n_f64(v13, v7);
  *(a1 + 48) = vmulq_n_f64(v14, v7);
  *(a1 + 64) = vmulq_n_f64(v15, v7);
  *(a1 + 80) = vmulq_n_f64(v16, v7);
  v8 = *(v1 + 112);
  *(a1 + 96) = *(v1 + 96);
  *(a1 + 112) = v8;
  *(a1 + 128) = v3;
  *(a1 + 136) = v4;
  *(a1 + 144) = v24;
  *(a1 + 152) = v5;
  *(a1 + 160) = v6;
  *(a1 + 168) = v23;
  result = *(v1 + 176);
  v10 = *(v1 + 192);
  *(a1 + 176) = result;
  *(a1 + 192) = v10;
  *(a1 + 208) = v20;
  *(a1 + 216) = v19;
  *(a1 + 224) = v22;
  *(a1 + 232) = v18;
  *(a1 + 240) = v17;
  *(a1 + 248) = v21;
  return result;
}

Swift::Void __swiftcall CCM.setSource(_:_:)(ProDisplayLibrary::Primaries *a1, ProDisplayLibrary::Chromaticity a2)
{
  x = a1->red.x;
  y = a1->red.y;
  v6 = a1->green.x;
  v7 = a1->green.y;
  v8 = a1->blue.x;
  v9 = a1->blue.y;
  v10 = *v2;
  v11 = v2[1];
  *(v3 + 96) = a1->red.x;
  *(v3 + 104) = y;
  *(v3 + 112) = v6;
  *(v3 + 120) = v7;
  *(v3 + 128) = v8;
  *(v3 + 136) = v9;
  *(v3 + 144) = 0;
  *(v3 + 152) = v10;
  *(v3 + 160) = v11;
  *(v3 + 168) = 0;
  v38.f64[0] = x;
  v38.f64[1] = y;
  v39.f64[0] = v6;
  v39.f64[1] = v7;
  v40.f64[0] = v8;
  v40.f64[1] = v9;
  v31.f64[0] = v10;
  v31.f64[1] = v11;
  sub_25F81B470(v38.f64, v31.f64, v37);
  v23 = v37[0];
  v24 = v37[3];
  v25 = v37[1];
  v27 = v37[2];
  v29 = v37[5];
  v26 = v37[4];
  v12 = *(v3 + 16);
  v13 = *(v3 + 32);
  v14 = *(v3 + 48);
  v15 = *(v3 + 64);
  v16 = *(v3 + 80);
  v38 = *v3;
  v39 = v12;
  v40 = v13;
  v41 = v14;
  v42 = v15;
  v43 = v16;
  __invert_d3();
  v21 = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v23, v31.f64[0]), v27, v31, 1), v26, *&v32);
  v22 = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v25, v31.f64[0]), v24, v31, 1), v29, *&v32);
  v19 = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v23, v33.f64[0]), v27, v33, 1), v26, *&v34);
  v20 = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v25, v33.f64[0]), v24, v33, 1), v29, *&v34);
  v38 = v21;
  v39 = v22;
  v40 = v19;
  v41 = v20;
  v28 = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v23, v35.f64[0]), v27, v35, 1), v26, *&v36);
  v30 = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v25, v35.f64[0]), v24, v35, 1), v29, *&v36);
  v42 = v28;
  v43 = v30;
  static XYZ.extractPrimaries(from:)(&v38, &v31);
  v17 = v32;
  *(v3 + 176) = v31;
  *(v3 + 192) = v17;
  *(v3 + 208) = v33;
  *(v3 + 224) = 0;
  v18 = vaddq_f64(v28, vaddq_f64(v21, v19));
  *(v3 + 232) = vdivq_f64(v18, vdupq_lane_s64(COERCE__INT64(vaddq_f64(v30, vaddq_f64(v22, v20)).f64[0] + vaddvq_f64(v18)), 0));
  *(v3 + 248) = 0;
}

void __swiftcall CCM.getDestinationSpace()(Swift::tuple_primaries_ProDisplayLibrary_Primaries_whitepoint_ProDisplayLibrary_Chromaticity_optional *__return_ptr retstr)
{
  if (*(v1 + 224) & 1) != 0 || (*(v1 + 248))
  {
    retstr->value.primaries.red = 0u;
    retstr->value.primaries.green = 0u;
    retstr->value.primaries.blue = 0u;
    retstr->value.whitepoint = 0u;
    retstr->is_nil = 1;
  }

  else
  {
    v2 = *(v1 + 232);
    v3 = *(v1 + 192);
    retstr->value.primaries.red = *(v1 + 176);
    retstr->value.primaries.green = v3;
    retstr->value.primaries.blue = *(v1 + 208);
    retstr->value.whitepoint = v2;
    retstr->is_nil = 0;
  }
}

Swift::Double __swiftcall CCM.correctionFactor(forPrim:andWP:)(ProDisplayLibrary::Primaries *forPrim, ProDisplayLibrary::Chromaticity andWP)
{
  v6 = vaddq_f64(v3[4], vaddq_f64(*v3, v3[2]));
  *&v7 = *&vaddq_f64(v3[5], vaddq_f64(v3[1], v3[3]));
  green = forPrim->green;
  v9[0] = forPrim->red;
  v9[1] = green;
  v9[2] = forPrim->blue;
  v8 = *v2;
  sub_25F81B470(v9, &v8, v10);
  return 1.0 / COERCE_DOUBLE(*&vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(*v10, *&v6), *(v10 + 32), v6, 1), *(v10 + 64), v7).f64[1]);
}

double sub_25F819FF0()
{
  v0 = *(MEMORY[0x277D86098] + 16);
  v1 = *(MEMORY[0x277D86098] + 32);
  v2 = *(MEMORY[0x277D86098] + 48);
  v3 = *(MEMORY[0x277D86098] + 64);
  v4 = *(MEMORY[0x277D86098] + 80);
  xmmword_27FDB1610 = *MEMORY[0x277D86098];
  unk_27FDB1620 = v0;
  xmmword_27FDB1630 = v1;
  unk_27FDB1640 = v2;
  xmmword_27FDB1650 = v3;
  unk_27FDB1660 = v4;
  result = 0.0;
  xmmword_27FDB1670 = 0u;
  unk_27FDB1680 = 0u;
  xmmword_27FDB1690 = 0u;
  byte_27FDB16A0 = 1;
  qword_27FDB16A8 = 0;
  unk_27FDB16B0 = 0;
  byte_27FDB16B8 = 1;
  xmmword_27FDB16D0 = 0u;
  unk_27FDB16E0 = 0u;
  xmmword_27FDB16C0 = 0u;
  LOBYTE(xmmword_27FDB16F0) = 1;
  *(&xmmword_27FDB16F0 + 1) = 0;
  unk_27FDB1700 = 0;
  byte_27FDB1708 = 1;
  return result;
}

void __swiftcall CCM.init(_:)(ProDisplayLibrary::CCM *__return_ptr retstr, simd_double3x3 *a2)
{
  v2 = *&a2->columns[1].f64[2];
  *retstr->affineTransformMatrix.columns[1].f64 = *a2->columns[1].f64;
  *&retstr->affineTransformMatrix.columns[1].f64[2] = v2;
  v3 = *&a2->columns[2].f64[2];
  *retstr->affineTransformMatrix.columns[2].f64 = *a2->columns[2].f64;
  *&retstr->affineTransformMatrix.columns[2].f64[2] = v3;
  v4 = *&a2->columns[0].f64[2];
  *retstr->affineTransformMatrix.columns[0].f64 = *a2->columns[0].f64;
  *&retstr->affineTransformMatrix.columns[0].f64[2] = v4;
  retstr->srcPrim.value.green = 0u;
  retstr->srcPrim.value.blue = 0u;
  retstr->srcPrim.value.red = 0u;
  retstr->srcPrim.is_nil = 1;
  *(&retstr->srcWP.value.x + 7) = 0.0;
  *(&retstr->srcWP.value.y + 7) = 0.0;
  BYTE6(retstr->dstPrim.value.red.x) = 1;
  *(&retstr->dstPrim.value.green.y + 6) = 0u;
  *(&retstr->dstPrim.value.blue.y + 6) = 0u;
  *(&retstr->dstPrim.value.red.y + 6) = 0u;
  BYTE5(retstr->dstWP.value.y) = 1;
  *(&retstr->dstWP + 21) = 0;
  retstr[1].affineTransformMatrix.columns[0].f64[0] = 0.0;
  LOBYTE(retstr[1].affineTransformMatrix.columns[0].f64[1]) = 1;
}

double static CCM.Unity.getter@<D0>(_OWORD *a1@<X8>)
{
  if (qword_27FDAFB30 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v1 = unk_27FDB16E0;
  a1[12] = xmmword_27FDB16D0;
  a1[13] = v1;
  a1[14] = xmmword_27FDB16F0;
  *(a1 + 233) = *(&xmmword_27FDB16F0 + 9);
  v2 = *&byte_27FDB16A0;
  a1[8] = xmmword_27FDB1690;
  a1[9] = v2;
  v3 = xmmword_27FDB16C0;
  a1[10] = unk_27FDB16B0;
  a1[11] = v3;
  v4 = unk_27FDB1660;
  a1[4] = xmmword_27FDB1650;
  a1[5] = v4;
  v5 = unk_27FDB1680;
  a1[6] = xmmword_27FDB1670;
  a1[7] = v5;
  v6 = unk_27FDB1620;
  *a1 = xmmword_27FDB1610;
  a1[1] = v6;
  result = *&xmmword_27FDB1630;
  v8 = unk_27FDB1640;
  a1[2] = xmmword_27FDB1630;
  a1[3] = v8;
  return result;
}

void __swiftcall CCM.init(_:)(ProDisplayLibrary::CCM_optional *__return_ptr retstr, Swift::OpaquePointer a2)
{
  if (*(a2._rawValue + 2) == 9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB1710);
    v4 = swift_allocObject();
    v5 = *(a2._rawValue + 2);
    v6.i64[0] = *(a2._rawValue + 6);
    v20 = v5;
    v21 = v6;
    v4[2] = v5;
    v4[3] = v6;
    v5.i64[0] = *(a2._rawValue + 9);
    *&v7 = *(a2._rawValue + 10);
    v18 = *(a2._rawValue + 56);
    v19 = v5;
    v4[4] = v18;
    v4[5] = v5;
    v22 = *(a2._rawValue + 11);
    v23 = v7;
    v6.i64[0] = *(a2._rawValue + 12);
    v24 = v6;

    *&v8 = v23;
    *(&v8 + 1) = v22;
    v4[6] = v8;
    v4[7] = v24;
    swift_setDeallocating();
    swift_deallocClassInstance();
    v25 = vzip1q_s64(v20, v18);
    v26 = v23;
    v27 = vzip2q_s64(v20, v18);
    v28 = vdupq_lane_s64(v22, 0);
    v29 = vzip1q_s64(v21, v19);
    v30 = v24;
    v32 = 0;
    v33 = 0;
    v31 = 0;
    LOBYTE(v34) = 1;
    *(&v34 + 1) = 0;
    *&v35 = 0;
    BYTE8(v35) = 1;
    v37 = 0u;
    v38 = 0u;
    v36 = 0u;
    v39[0] = 1;
    *&v39[8] = 0;
    *&v39[16] = 0;
    v39[24] = 1;
    sub_25F81ACBC(&v25);
  }

  else
  {

    sub_25F81AC88(&v25);
  }

  v9 = v38;
  v10 = *v39;
  v11 = v36;
  *(&retstr->value.dstPrim.value.green.y + 6) = v37;
  *(&retstr->value.dstPrim.value.blue.y + 6) = v9;
  *(&retstr->value.dstWP.value.y + 5) = v10;
  *(&retstr->value.dstWP + 23) = *&v39[10];
  v12 = v34;
  v13 = v35;
  v14 = v32;
  retstr->value.srcPrim.value.blue = v33;
  *&retstr->value.srcPrim.is_nil = v12;
  *(&retstr->value.srcWP.value.y + 7) = v13;
  *(&retstr->value.dstPrim.value.red.y + 6) = v11;
  v15 = v30;
  *retstr->value.affineTransformMatrix.columns[2].f64 = v29;
  *&retstr->value.affineTransformMatrix.columns[2].f64[2] = v15;
  retstr->value.srcPrim.value.red = v31;
  retstr->value.srcPrim.value.green = v14;
  v16 = v26;
  *retstr->value.affineTransformMatrix.columns[0].f64 = v25;
  *&retstr->value.affineTransformMatrix.columns[0].f64[2] = v16;
  v17 = v28;
  *retstr->value.affineTransformMatrix.columns[1].f64 = v27;
  *&retstr->value.affineTransformMatrix.columns[1].f64[2] = v17;
}

void __swiftcall CCM.getSourceSpace()(Swift::tuple_primaries_ProDisplayLibrary_Primaries_whitepoint_ProDisplayLibrary_Chromaticity_optional *__return_ptr retstr)
{
  if (*(v1 + 144) & 1) != 0 || (*(v1 + 168))
  {
    retstr->value.primaries.red = 0u;
    retstr->value.primaries.green = 0u;
    retstr->value.primaries.blue = 0u;
    retstr->value.whitepoint = 0u;
    retstr->is_nil = 1;
  }

  else
  {
    v2 = *(v1 + 152);
    v3 = *(v1 + 112);
    retstr->value.primaries.red = *(v1 + 96);
    retstr->value.primaries.green = v3;
    retstr->value.primaries.blue = *(v1 + 128);
    retstr->value.whitepoint = v2;
    retstr->is_nil = 0;
  }
}

Swift::Void __swiftcall CCM.setDestination(_:_:)(ProDisplayLibrary::Primaries *a1, ProDisplayLibrary::Chromaticity a2)
{
  x = a1->red.x;
  y = a1->red.y;
  v6 = a1->green.x;
  v7 = a1->green.y;
  v8 = a1->blue.x;
  v9 = a1->blue.y;
  v10 = *v2;
  v11 = v2[1];
  *(v3 + 176) = a1->red.x;
  *(v3 + 184) = y;
  *(v3 + 192) = v6;
  *(v3 + 200) = v7;
  *(v3 + 208) = v8;
  *(v3 + 216) = v9;
  *(v3 + 224) = 0;
  *(v3 + 232) = v10;
  *(v3 + 240) = v11;
  *(v3 + 248) = 0;
  v32.f64[0] = x;
  v32.f64[1] = y;
  v33.f64[0] = v6;
  v33.f64[1] = v7;
  v34.f64[0] = v8;
  v34.f64[1] = v9;
  v25[0].f64[0] = v10;
  v25[0].f64[1] = v11;
  sub_25F81B470(v32.f64, v25[0].f64, &v26);
  v12 = *(v3 + 16);
  v14 = *(v3 + 32);
  v13 = *(v3 + 48);
  v16 = *(v3 + 64);
  v15 = *(v3 + 80);
  v23 = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v26, *v3), v28, *v3, 1), v30, *&v12);
  v24 = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v27, *v3), v29, *v3, 1), v31, *&v12);
  v22 = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v27, v14.f64[0]), v29, v14, 1), v31, *&v13);
  v20 = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v26, v14.f64[0]), v28, v14, 1), v30, *&v13);
  v21 = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v26, v16.f64[0]), v28, v16, 1), v30, *&v15);
  v32 = v23;
  v33 = v24;
  v34 = v20;
  v35 = v22;
  v19 = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v27, v16.f64[0]), v29, v16, 1), v31, *&v15);
  v36 = v21;
  v37 = v19;
  static XYZ.extractPrimaries(from:)(&v32, v25);
  v17 = v25[1];
  *(v3 + 96) = v25[0];
  *(v3 + 112) = v17;
  *(v3 + 128) = v25[2];
  *(v3 + 144) = 0;
  v18 = vaddq_f64(v21, vaddq_f64(v23, v20));
  *(v3 + 152) = vdivq_f64(v18, vdupq_lane_s64(COERCE__INT64(vaddq_f64(v19, vaddq_f64(v24, v22)).f64[0] + vaddvq_f64(v18)), 0));
  *(v3 + 168) = 0;
}

__n128 CCM.matrix.getter@<Q0>(_OWORD *a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 16);
  v4 = *(v1 + 32);
  v5 = *(v1 + 48);
  v6 = *(v1 + 64);
  v7 = *(v1 + 80);
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return result;
}

double CCM.capped.getter@<D0>(uint64_t a1@<X8>, float64x2_t a2@<Q2>)
{
  v3 = *(v2 + 48);
  a2.f64[0] = 0.0;
  v4.i64[1] = *(v2 + 40);
  v4.i64[0] = 0;
  v5 = *(v2 + 16);
  v6 = vbslq_s8(vdupq_lane_s64(vmvnq_s8(vcgeq_f64(a2, *(v2 + 32))).i64[0], 0), *(v2 + 32), v4);
  v7 = vdupq_lane_s64(vmvnq_s8(vcgeq_f64(a2, vdupq_laneq_s64(v6, 1))).i64[0], 0);
  v9 = *(v2 + 64);
  v8 = *(v2 + 80);
  v10 = vdupq_lane_s64(vmvnq_s8(vcgeq_f64(a2, v3)).i64[0], 0);
  if (*&v9 <= 0.0)
  {
    *&v11 = 0.0;
  }

  else
  {
    *&v11 = *(v2 + 64);
  }

  *&v9 = *(v2 + 72);
  if (*(&v9 + 1) <= 0.0)
  {
    *&v9 = 0.0;
  }

  *(&v11 + 1) = v9;
  if (*&v8 <= 0.0)
  {
    v12 = 0.0;
  }

  else
  {
    v12 = *(v2 + 80);
  }

  if (*&v5 > 0.0)
  {
    a2.f64[0] = *(v2 + 16);
  }

  *&v5 = a2.f64[0];
  *&v8 = v12;
  v13.i64[1] = *(v2 + 56);
  v13.i64[0] = 0;
  *a1 = vbicq_s8(*v2, vclezq_f64(*v2));
  *(a1 + 16) = v5;
  *(a1 + 32) = vbslq_s8(v7, v6, v6.u64[0]);
  *(a1 + 48) = vbslq_s8(v10, v3, v13);
  *(a1 + 64) = v11;
  *(a1 + 80) = v8;
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 1;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 1;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 1;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 248) = 1;
  return result;
}

BOOL CCM.isInvertible.getter()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = vextq_s8(v2, v1, 8uLL);
  v1.f64[1] = v0[2].f64[0];
  v6 = vextq_s8(v3, v4, 8uLL);
  v4.f64[1] = v0[4].f64[0];
  return vmulq_f64(v0[1], vmlaq_laneq_f64(vmulq_f64(v3, vnegq_f64(vdupq_laneq_s64(v2, 1))), v2, v3, 1)).f64[0] + vaddvq_f64(vmulq_f64(*v0, vmlaq_f64(vmulq_f64(v6, vnegq_f64(v1)), v4, v5))) != 0.0;
}

uint64_t CCM.raster.getter()
{
  v1 = 0;
  v30 = *v0;
  v31 = v0[1];
  v28 = v0[2];
  v29 = v0[3];
  v2 = MEMORY[0x277D84F90];
  v26 = v0[4];
  v27 = v0[5];
  v3 = MEMORY[0x277D84F90];
  while (1)
  {
    v35 = v3;
    sub_25F817DE8(0, 3, 0);
    v4 = v35;
    v6 = *(v35 + 16);
    v5 = *(v35 + 24);
    v7 = v5 >> 1;
    v8 = v6 + 1;
    if (v5 >> 1 <= v6)
    {
      sub_25F817DE8((v5 > 1), v6 + 1, 1);
      v4 = v35;
      v5 = *(v35 + 24);
      v7 = v5 >> 1;
    }

    v34[0] = v30;
    v34[1] = v31;
    v9 = *(v34 + (v1 & 3));
    *(v4 + 16) = v8;
    *(v4 + 8 * v6 + 32) = v9;
    v10 = v6 + 2;
    if (v7 < v10)
    {
      sub_25F817DE8((v5 > 1), v10, 1);
      v4 = v35;
    }

    v33[0] = v28;
    v33[1] = v29;
    v11 = *(v33 + (v1 & 3));
    *(v4 + 16) = v10;
    *(v4 + 8 * v8 + 32) = v11;
    v13 = *(v4 + 16);
    v12 = *(v4 + 24);
    v14 = v13 + 1;
    if (v13 >= v12 >> 1)
    {
      sub_25F817DE8((v12 > 1), v13 + 1, 1);
    }

    v32[0] = v26;
    v32[1] = v27;
    v15 = *(v32 + (v1 & 3));
    v16 = v35;
    *(v35 + 16) = v14;
    *(v16 + 32 + 8 * v13) = v15;
    v17 = *(v2 + 2);
    v18 = v17 + v14;
    if (__OFADD__(v17, v14))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v18 > *(v2 + 3) >> 1)
    {
      if (v17 <= v18)
      {
        v20 = v17 + v14;
      }

      else
      {
        v20 = v17;
      }

      v2 = sub_25F75C86C(isUniquelyReferenced_nonNull_native, v20, 1, v2);
    }

    if (!*(v16 + 16))
    {
      goto LABEL_23;
    }

    v21 = *(v2 + 2);
    if ((*(v2 + 3) >> 1) - v21 <= v13)
    {
      goto LABEL_21;
    }

    memcpy(&v2[8 * v21 + 32], (v16 + 32), 8 * v14);

    v22 = *(v2 + 2);
    v23 = __OFADD__(v22, v14);
    v24 = v22 + v14;
    if (v23)
    {
      goto LABEL_22;
    }

    *(v2 + 2) = v24;
    if (++v1 == 3)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:

  __break(1u);
  return result;
}

uint64_t CCM.description.getter()
{
  v29 = v0[2];
  v30 = v0[3];
  v31 = v0[4];
  v32 = v0[5];
  v27 = *v0;
  v28 = v0[1];
  v2 = *(v0 + 19);
  v1 = *(v0 + 20);
  v3 = *(v0 + 168);
  v4 = *(v0 + 224);
  v6 = *(v0 + 29);
  v5 = *(v0 + 30);
  v7 = *(v0 + 248);
  if (v0[9])
  {
    v8 = 0xE300000000000000;
    v24 = 7104878;
  }

  else
  {
    v24 = Primaries.description.getter();
    v8 = v9;
  }

  v10 = MEMORY[0x277D839F8];
  v11 = MEMORY[0x277D83A80];
  if (v3)
  {
    v12 = 0xE300000000000000;
    v13 = 7104878;
    if ((v4 & 1) == 0)
    {
      goto LABEL_6;
    }

LABEL_9:
    v15 = 0xE300000000000000;
    v25 = 7104878;
    if ((v7 & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_10:
    v19 = 0xE300000000000000;
    v17 = 7104878;
    goto LABEL_11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB0058);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_25F824480;
  *(v20 + 56) = v10;
  *(v20 + 64) = v11;
  *(v20 + 32) = v2;
  *(v20 + 96) = v10;
  *(v20 + 104) = v11;
  *(v20 + 72) = v1;
  v13 = sub_25F8223AC();
  v12 = v21;
  if (v4)
  {
    goto LABEL_9;
  }

LABEL_6:
  v25 = Primaries.description.getter();
  v15 = v14;
  if (v7)
  {
    goto LABEL_10;
  }

LABEL_7:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB0058);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_25F824480;
  *(v16 + 56) = v10;
  *(v16 + 64) = v11;
  *(v16 + 32) = v6;
  *(v16 + 96) = v10;
  *(v16 + 104) = v11;
  *(v16 + 72) = v5;
  v17 = sub_25F8223AC();
  v19 = v18;
LABEL_11:
  v26[0] = simd_double3x3.prettyStr.getter();
  v26[1] = v22;

  MEMORY[0x25F8E7510](10, 0xE100000000000000);

  MEMORY[0x25F8E7510](v26[0], v26[1]);

  sub_25F82292C();

  strcpy(v26, "src primaries ");
  HIBYTE(v26[1]) = -18;
  MEMORY[0x25F8E7510](v24, v8);

  MEMORY[0x25F8E7510](10, 0xE100000000000000);
  MEMORY[0x25F8E7510](v26[0], v26[1]);

  sub_25F82292C();

  MEMORY[0x25F8E7510](v13, v12);

  MEMORY[0x25F8E7510](10, 0xE100000000000000);
  MEMORY[0x25F8E7510](0x7469687720637273, 0xEF20746E696F7065);

  sub_25F82292C();

  strcpy(v26, "dst primaries ");
  HIBYTE(v26[1]) = -18;
  MEMORY[0x25F8E7510](v25, v15);

  MEMORY[0x25F8E7510](10, 0xE100000000000000);
  MEMORY[0x25F8E7510](v26[0], v26[1]);

  sub_25F82292C();

  MEMORY[0x25F8E7510](v17, v19);

  MEMORY[0x25F8E7510](10, 0xE100000000000000);
  MEMORY[0x25F8E7510](0x7469687720747364, 0xEF20746E696F7065);

  return 0;
}

double sub_25F81AC88(uint64_t a1)
{
  result = 0.0;
  *(a1 + 233) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 249) = 1;
  return result;
}

__n128 __swift_memcpy249_16(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  v8 = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  result = a2[12];
  v12 = a2[13];
  v13 = a2[14];
  *(a1 + 233) = *(a2 + 233);
  *(a1 + 208) = v12;
  *(a1 + 224) = v13;
  *(a1 + 192) = result;
  return result;
}

uint64_t sub_25F81AD10(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 249))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25F81AD30(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 232) = 0u;
    *(result + 216) = 0u;
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
    *(result + 248) = 0;
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

  *(result + 249) = v3;
  return result;
}

float64_t static XYZ.normalisedPrimaryMatrix(primaries:whitepoint:)@<D0>(double *a1@<X0>, double *a2@<X1>, float64x2_t *a3@<X8>)
{
  sub_25F81B470(a1, a2, v8);
  v4 = v8[3];
  a3[2] = v8[2];
  a3[3] = v4;
  v5 = v8[5];
  a3[4] = v8[4];
  a3[5] = v5;
  result = v8[0].f64[0];
  v7 = v8[1];
  *a3 = v8[0];
  a3[1] = v7;
  return result;
}

float64x2_t static XYZ.extractPrimaries(from:)@<Q0>(float64x2_t *a1@<X0>, float64x2_t *a2@<X8>)
{
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  v7 = vmulq_f64(*a1, 0);
  v8 = vmulq_f64(v2, 0);
  v9 = vmlaq_f64(vmlaq_f64(*a1, 0, v4), 0, v5);
  v10 = vmlaq_f64(vaddq_f64(v4, v7), 0, v5);
  v11 = vaddq_f64(v5, vmlaq_f64(v7, 0, v4));
  *a2 = vdivq_f64(v9, vdupq_lane_s64(COERCE__INT64(vmlaq_f64(vmlaq_f64(v2, 0, v3), 0, v6).f64[0] + vaddvq_f64(v9)), 0));
  a2[1] = vdivq_f64(v10, vdupq_lane_s64(COERCE__INT64(vmlaq_f64(vaddq_f64(v3, v8), 0, v6).f64[0] + vaddvq_f64(v10)), 0));
  result = vdivq_f64(v11, vdupq_lane_s64(COERCE__INT64(vaddq_f64(v6, vmlaq_f64(v8, 0, v3)).f64[0] + vaddvq_f64(v11)), 0));
  a2[2] = result;
  return result;
}

float64x2_t static XYZ.extractWhitePoint(from:)@<Q0>(float64x2_t *a1@<X0>, float64x2_t *a2@<X8>)
{
  v2 = vaddq_f64(a1[4], vaddq_f64(*a1, a1[2]));
  result = vdivq_f64(v2, vdupq_lane_s64(COERCE__INT64(vaddq_f64(a1[5], vaddq_f64(a1[1], a1[3])).f64[0] + vaddvq_f64(v2)), 0));
  *a2 = result;
  return result;
}

uint64_t simd_double3x3.prettyStr.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB0058);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_25F824220;
  v14 = *v0;
  v2 = *v0;
  v15 = v0[2];
  v16 = v0[4];
  v3 = MEMORY[0x277D839F8];
  v4 = MEMORY[0x277D83A80];
  *(v1 + 56) = MEMORY[0x277D839F8];
  *(v1 + 64) = v4;
  *(v1 + 32) = v2;
  *(v1 + 96) = v3;
  *(v1 + 104) = v4;
  *(v1 + 72) = v15;
  *(v1 + 136) = v3;
  *(v1 + 144) = v4;
  *(v1 + 112) = v16;
  v5 = *(v0 + 2);
  v6 = *(v0 + 6);
  v7 = *(v0 + 10);
  v8 = sub_25F8223AC();
  MEMORY[0x25F8E7510](v8);

  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_25F824220;
  *(v9 + 56) = v3;
  *(v9 + 64) = v4;
  *(v9 + 32) = *(&v14 + 1);
  *(v9 + 72) = *(&v15 + 1);
  *(v9 + 96) = v3;
  *(v9 + 104) = v4;
  *(v9 + 136) = v3;
  *(v9 + 144) = v4;
  *(v9 + 112) = *(&v16 + 1);
  v10 = sub_25F8223AC();
  MEMORY[0x25F8E7510](v10);

  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_25F824220;
  *(v11 + 56) = v3;
  *(v11 + 64) = v4;
  *(v11 + 32) = v5;
  *(v11 + 96) = v3;
  *(v11 + 104) = v4;
  *(v11 + 72) = v6;
  *(v11 + 136) = v3;
  *(v11 + 144) = v4;
  *(v11 + 112) = v7;
  v12 = sub_25F8223AC();
  MEMORY[0x25F8E7510](v12);

  return sub_25F8224CC();
}

__n128 static XYZ.TargetToXYZ(primaries:whitePoint:)@<Q0>(double *a1@<X0>, double *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v7 = a1[2];
  v6 = a1[3];
  v9 = a1[4];
  v8 = a1[5];
  v10 = *a2;
  v11 = *a1 - v4 * (v9 / v8);
  v12 = v7 - v6 * (v9 / v8);
  v37 = 1.0 - (*a1 + v4);
  v39 = 1.0 - (v9 + v8);
  v13 = v37 - v4 * (v39 / v8);
  v14 = 1.0 - (v7 + v6);
  v15 = v14 - v6 * (v39 / v8);
  v16 = v10 * v11 + v10 * v13 - v11;
  v17 = v10 * v12 + v10 * v15 - v12;
  v18 = v11 + v13;
  v19 = v12 + v15;
  v20 = 1.0 / a2[1] + -1.0 - v9 / v8 - v39 / v8;
  v21 = 1.0 / v18;
  v22 = (v9 / v8 - v10 - v10 * (v39 / v8) - v10 * (v9 / v8)) * v18;
  v23 = v19 * v22;
  v24 = v19 * v16;
  v25 = v18 * v17 - v24;
  v26 = v21 * (v20 - (v23 - v20 * v24) / v25);
  v27 = (v22 - v20 * v16) / v25;
  v45 = v4 * v26;
  v40 = v6 * v27;
  v28 = (1.0 - v4 * v26 - v6 * v27) / v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB1710);
  v29 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFCF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25F824220;
  *v31.i64 = v5 * v26;
  *(inited + 32) = v5 * v26;
  *(inited + 40) = v7 * v27;
  *(inited + 48) = v9 * v28;
  *&v31.i64[1] = v7 * v27;
  v43 = COERCE_UNSIGNED_INT64(v9 * v28);
  v44 = v31;
  swift_setDeallocating();
  v29[2] = v44;
  v29[3] = v43;
  v32 = swift_initStackObject();
  *(v32 + 16) = xmmword_25F824220;
  *v33.i64 = v45;
  *(v32 + 32) = v45;
  *(v32 + 40) = v40;
  *(v32 + 48) = v8 * v28;
  *&v33.i64[1] = v40;
  v46 = v33;
  v41 = COERCE_UNSIGNED_INT64(v8 * v28);
  swift_setDeallocating();
  v29[4] = v46;
  v29[5] = v41;
  v34 = swift_initStackObject();
  *(v34 + 16) = xmmword_25F824220;
  *v35.i64 = v37 * v26;
  v38 = v35;
  *(v34 + 32) = v35.i64[0];
  *(v34 + 40) = v14 * v27;
  *(v34 + 48) = v39 * v28;
  *&v35.i64[1] = v14 * v27;
  v42 = v35;
  v47 = COERCE_UNSIGNED_INT64(v39 * v28);
  swift_setDeallocating();
  v29[6] = v42;
  v29[7] = v47;
  swift_setDeallocating();
  swift_deallocClassInstance();
  *a3 = vzip1q_s64(v44, v46);
  *(a3 + 16) = v38;
  *(a3 + 32) = vzip2q_s64(v44, v46);
  *(a3 + 48) = vdupq_laneq_s64(v42, 1);
  result = v47;
  *(a3 + 64) = vzip1q_s64(v43, v41);
  *(a3 + 80) = v47;
  return result;
}

float64x2_t static XYZ.xy(from:)@<Q0>(float64x2_t *a1@<X8>, float64x2_t a2@<Q0>, float64x2_t a3@<Q1>)
{
  result = vdivq_f64(a2, vdupq_lane_s64(*&vaddq_f64(vaddq_f64(vdupq_laneq_s64(a2, 1), a2), a3), 0));
  *a1 = result;
  return result;
}

uint64_t SIMD3<>.prettyStr.getter(__n128 a1, double a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB0058);
  v2 = swift_allocObject();
  v3 = MEMORY[0x277D839F8];
  v4 = MEMORY[0x277D83A80];
  *(v2 + 16) = xmmword_25F824220;
  *(v2 + 56) = v3;
  *(v2 + 64) = v4;
  *(v2 + 32) = a1.n128_u64[0];
  *(v2 + 96) = v3;
  *(v2 + 104) = v4;
  *(v2 + 72) = a1.n128_u64[1];
  *(v2 + 136) = v3;
  *(v2 + 144) = v4;
  *(v2 + 112) = a2;
  v5 = sub_25F8223AC();
  MEMORY[0x25F8E7510](v5);

  return sub_25F8224CC();
}

float64x2_t sub_25F81B470@<Q0>(double *a1@<X0>, double *a2@<X1>, float64x2_t *a3@<X8>)
{
  v39 = a1[1];
  v42 = *a1;
  v28 = a1[3];
  v31 = a1[2];
  v34 = a1[4];
  v36 = a1[5];
  v5 = *a2;
  v4 = a2[1];
  v6 = *a1 + v39;
  v7 = v31 + v28;
  v8 = v34 + v36;
  v9 = *a2 + v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB1710);
  v10 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFCF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25F824220;
  *v12.i64 = v42;
  *(inited + 32) = v42;
  *(inited + 40) = v31;
  *(inited + 48) = v34;
  *&v12.i64[1] = v31;
  v43 = v12;
  v32 = *&v34;
  v35 = COERCE_UNSIGNED_INT64(1.0 - v6);
  swift_setDeallocating();
  v10[2] = v43;
  v10[3] = v32;
  v13 = swift_initStackObject();
  *v14.i64 = v39;
  *(v13 + 16) = xmmword_25F824220;
  *(v13 + 32) = v39;
  *(v13 + 40) = v28;
  *(v13 + 48) = v36;
  *&v14.i64[1] = v28;
  v40 = v14;
  v29 = *&v36;
  swift_setDeallocating();
  v10[4] = v40;
  v10[5] = *&v36;
  v15 = swift_initStackObject();
  *(v15 + 16) = xmmword_25F824220;
  *(v15 + 32) = v35.f64[0];
  *(v15 + 40) = 1.0 - v7;
  *(v15 + 48) = 1.0 - v8;
  v16.f64[0] = 1.0 - v6;
  v16.f64[1] = 1.0 - v7;
  v37 = v16;
  v38 = COERCE_UNSIGNED_INT64(1.0 - v8);
  swift_setDeallocating();
  v10[6] = v37;
  v10[7] = v38;
  swift_setDeallocating();
  swift_deallocClassInstance();
  v17 = vzip1q_s64(v43, v40);
  *&v18.f64[1] = v29.i64[1];
  v41 = vzip2q_s64(v43, v40);
  v44 = vzip1q_s64(v32, v29);
  v18.f64[0] = v5 / v4;
  v33 = v18;
  v27 = v17;
  v30 = COERCE_UNSIGNED_INT64((1.0 - v9) / v4);
  __invert_d3();
  v19 = vmlaq_f64(vaddq_f64(v48, vmulq_f64(v33, v46)), v30, v50);
  v20 = vmlaq_n_f64(vaddq_f64(v47, vmulq_n_f64(v45, v33.f64[0])), v49, v30.f64[0]);
  v21 = vmlaq_f64(vmlaq_f64(vmulq_n_f64(v27, v20.f64[0]), 0, v41), 0, v44);
  v22 = vmlaq_f64(vmlaq_laneq_f64(vmulq_f64(v35, v20), 0, v37, 1), 0, v38);
  v23 = vmulq_f64(v27, 0);
  v24 = vmulq_f64(v35, 0);
  v25 = vmlaq_laneq_f64(v23, v41, v20, 1);
  result = vmlaq_f64(vmlaq_laneq_f64(v24, vdupq_laneq_s64(v20, 1), v37, 1), 0, v38);
  *a3 = v21;
  a3[1] = v22;
  a3[2] = vmlaq_f64(v25, 0, v44);
  a3[3] = result;
  a3[4] = vmlaq_n_f64(vmlaq_f64(v23, 0, v41), v44, v19.f64[0]);
  a3[5] = vmlaq_f64(vmlaq_laneq_f64(v24, 0, v37, 1), v19, v38);
  return result;
}

uint64_t sub_25F81B734()
{
  if (qword_27FDAFAA0 != -1)
  {
    swift_once();
  }

  qword_27FDC1790 = qword_27FDC1340;
}

uint64_t sub_25F81B7A8()
{
  result = sub_25F792BB0(&unk_2871C3BF0);
  qword_27FDC1798 = result;
  return result;
}

double sub_25F81B7D0()
{
  v0 = sub_25F792BD8(&unk_2871C4550);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB0098);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25F823D00;
  *(inited + 32) = 0;
  *(inited + 40) = 0;
  *(inited + 48) = 1;
  *(inited + 56) = xmmword_25F824920;
  *(inited + 72) = 1;
  *(inited + 80) = xmmword_25F824930;
  *(inited + 96) = 1;
  *(inited + 104) = 0;
  *(inited + 112) = 0;
  *(inited + 120) = 0;
  v2 = sub_25F792FCC(inited);
  swift_setDeallocating();
  v3 = sub_25F7932C0(&unk_2871C4650);
  xmmword_27FDC17A0 = xmmword_25F824940;
  qword_27FDC17B0 = v0;
  unk_27FDC17B8 = v2;
  xmmword_27FDC17C0 = xmmword_25F824950;
  xmmword_27FDC17D0 = xmmword_25F824960;
  *&xmmword_27FDC17E0 = v3;
  *(&xmmword_27FDC17E0 + 8) = xmmword_25F824970;
  *&qword_27FDC17F8 = xmmword_25F824980;
  qword_27FDC1808 = 0;
  LOBYTE(xmmword_27FDC1810) = 0;
  *(&xmmword_27FDC1810 + 8) = xmmword_25F82C180;
  result = 0.0;
  *(&xmmword_27FDC1820 + 8) = xmmword_25F82C190;
  byte_27FDC1838 = 0;
  *&xmmword_27FDC1840 = 1000;
  WORD4(xmmword_27FDC1840) = 0;
  qword_27FDC1850 = 0;
  return result;
}

int64x2_t sub_25F81B904()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC10);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v38 - v1;
  v40 = &v38 - v1;
  v3 = type metadata accessor for Preset.Info(0);
  v4 = (v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Preset(0);
  v42 = v7;
  __swift_allocate_value_buffer(v7, qword_27FDC1858);
  v41 = __swift_project_value_buffer(v7, qword_27FDC1858);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC18);
  v39 = *(*(v8 - 8) + 56);
  v39(v2, 1, 1, v8);
  sub_25F82216C();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC20);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v38 - v10;
  sub_25F8220FC();
  v12 = sub_25F82210C();
  v13 = *(*(v12 - 8) + 56);
  v13(v11, 0, 1, v12);
  v14 = v4[10];
  v13(&v6[v14], 1, 1, v12);
  v15 = v4[11];
  v39(&v6[v15], 1, 1, v8);
  v16 = &v6[v4[7]];
  *v16 = 0;
  *(v16 + 1) = 0xE000000000000000;
  v17 = &v6[v4[8]];
  *v17 = 0;
  *(v17 + 1) = 0xE000000000000000;
  v6[v4[9]] = 1;
  sub_25F760E58(v11, &v6[v14], &qword_27FDAFC20);
  sub_25F760E58(v40, &v6[v15], &qword_27FDAFC10);
  v46 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFD50);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_25F8249B0;
  LOBYTE(v59[0]) = 1;
  LOBYTE(v58[0]) = 1;
  LOBYTE(v57[0]) = 1;
  LOBYTE(v56[0]) = 0;
  *(v18 + 32) = 0;
  *(v18 + 33) = *v51;
  *(v18 + 36) = *&v51[3];
  *(v18 + 40) = 0;
  *(v18 + 48) = 1;
  v19 = *v50;
  *(v18 + 52) = *&v50[3];
  *(v18 + 49) = v19;
  *(v18 + 56) = 0;
  *(v18 + 64) = 1;
  v20 = *v49;
  *(v18 + 68) = *&v49[3];
  *(v18 + 65) = v20;
  *(v18 + 72) = 0;
  *(v18 + 80) = 1;
  v21 = *v48;
  *(v18 + 84) = *&v48[3];
  *(v18 + 81) = v21;
  *(v18 + 88) = 0x400199999999999ALL;
  *(v18 + 96) = 0;
  v22 = *v47;
  *(v18 + 100) = *&v47[3];
  *(v18 + 97) = v22;
  *(v18 + 104) = 0;
  v23 = sub_25F792BC4(&unk_2871C4678);
  v45 = 1;
  LOBYTE(v15) = v46;
  v44 = 1;
  v43 = 1;
  LOBYTE(v59[0]) = 1;
  LOBYTE(v58[0]) = 1;
  LOBYTE(v57[0]) = 1;
  LOBYTE(v56[0]) = 1;
  LOBYTE(v55[0]) = 1;
  v24 = v6;
  v25 = v41;
  sub_25F7750B8(v24, v41);
  v26 = v42;
  v27 = v25 + *(v42 + 20);
  *(v27 + 16) = 0u;
  *(v27 + 32) = 0u;
  *v27 = 0u;
  *(v27 + 48) = 1;
  *(v27 + 49) = v56[0];
  *(v27 + 52) = *(v56 + 3);
  *(v27 + 56) = 0u;
  *(v27 + 72) = 0u;
  *(v27 + 88) = 0u;
  *(v27 + 104) = 0;
  *(v27 + 105) = v15;
  *(v27 + 106) = *&v55[5];
  *(v27 + 110) = v55[7];
  *(v27 + 112) = xmmword_25F824920;
  *(v27 + 128) = 1;
  *(v27 + 132) = *(&v55[1] + 1);
  *(v27 + 129) = *v55;
  *(v27 + 136) = 0;
  *(v27 + 144) = 0;
  *(v27 + 152) = 256;
  *(v27 + 154) = *&v53[7];
  *(v27 + 158) = v54;
  result = vdupq_n_s64(0x4059000000000000uLL);
  *(v27 + 160) = result;
  *(v27 + 176) = 0x3F40624DD2F1A9FCLL;
  *(v27 + 184) = v18;
  *(v27 + 192) = 0;
  *(v27 + 193) = *v53;
  *(v27 + 196) = *&v53[3];
  *(v27 + 200) = 0x400199999999999ALL;
  *(v27 + 208) = 1;
  *(v27 + 210) = *&v51[7];
  *(v27 + 214) = v52;
  __asm { FMOV            V1.2D, #1.0 }

  *(v27 + 216) = _Q1;
  *(v27 + 232) = v23;
  *(v27 + 240) = 16843008;
  v34 = v25 + *(v26 + 24);
  *v34 = 16843009;
  *(v34 + 8) = 0;
  *(v34 + 16) = 257;
  *(v34 + 22) = v62;
  *(v34 + 18) = v61;
  *(v34 + 24) = 0;
  *(v34 + 32) = 1;
  *(v34 + 33) = 0;
  *(v34 + 38) = v60;
  *(v34 + 34) = v59[3];
  *(v34 + 40) = 0;
  *(v34 + 48) = 0;
  *(v34 + 56) = 1;
  v35 = v59[0];
  *(v34 + 60) = *(v59 + 3);
  *(v34 + 57) = v35;
  *(v34 + 64) = 0;
  *(v34 + 72) = 1;
  v36 = v58[0];
  *(v34 + 76) = *(v58 + 3);
  *(v34 + 73) = v36;
  *(v34 + 80) = 0;
  *(v34 + 88) = 1;
  v37 = v57[0];
  *(v34 + 92) = *(v57 + 3);
  *(v34 + 89) = v37;
  *(v34 + 96) = result;
  *(v34 + 112) = 0x4059000000000000;
  *(v34 + 120) = 16843008;
  return result;
}

uint64_t sub_25F81BEB0@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FDAFB48 != -1)
  {
    v11 = a1;
    swift_once();
    a1 = v11;
  }

  v1 = xmmword_27FDC1810;
  v13[8] = xmmword_27FDC1820;
  v13[9] = unk_27FDC1830;
  v2 = unk_27FDC1830;
  v13[10] = xmmword_27FDC1840;
  v3 = xmmword_27FDC17E0;
  v4 = xmmword_27FDC17D0;
  v13[4] = xmmword_27FDC17E0;
  v13[5] = *&dbl_27FDC17F0;
  v5 = *&dbl_27FDC17F0;
  v6 = *(&xmmword_27FDC17F8 + 8);
  v13[6] = *(&xmmword_27FDC17F8 + 8);
  v13[7] = xmmword_27FDC1810;
  v13[0] = xmmword_27FDC17A0;
  v13[1] = *&qword_27FDC17B0;
  v8 = xmmword_27FDC17A0;
  v7 = *&qword_27FDC17B0;
  v9 = xmmword_27FDC17C0;
  v13[2] = xmmword_27FDC17C0;
  v13[3] = xmmword_27FDC17D0;
  *(a1 + 128) = xmmword_27FDC1820;
  *(a1 + 144) = v2;
  *(a1 + 160) = xmmword_27FDC1840;
  *(a1 + 64) = v3;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  *(a1 + 112) = v1;
  *a1 = v8;
  *(a1 + 16) = v7;
  v14 = qword_27FDC1850;
  *(a1 + 176) = qword_27FDC1850;
  *(a1 + 32) = v9;
  *(a1 + 48) = v4;
  return sub_25F775180(v13, v12);
}

uint64_t sub_25F81BF9C@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FDAFB50 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Preset(0);
  v3 = __swift_project_value_buffer(v2, qword_27FDC1858);

  return sub_25F77511C(v3, a1);
}

uint64_t sub_25F81C014(uint64_t a1, const Bytef *a2)
{
  if (sub_25F82243C() != 10)
  {
    sub_25F7EFCA8();
    swift_allocError();
    *v30 = 0;
    v30[1] = 0;
    swift_willThrow();
    return a2;
  }

  v56 = v2;

  v4 = sub_25F7F0328(1);
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = MEMORY[0x25F8E74C0](v4, v6, v8, v10);
  v55 = v12;

  v13 = sub_25F82243C();
  v14 = MEMORY[0x277D84F90];
  if (v13)
  {
    v15 = v13;
    v16 = sub_25F7F01F0(v13, 0);
    v17 = sub_25F7F0128(v57, v16 + 4, v15, 0xD00000000000001BLL, 0x800000025F8307D0);

    if (v17 != v15)
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v18 = v16;
    v19 = v16[2];
    if (v19)
    {
LABEL_5:
      v53 = v11;
      v54 = v18;
      v57[0] = v14;
      sub_25F817DC8(0, v19, 0);
      v20 = v54;
      v21 = 0;
      v22 = v57[0];
      v58 = v54[2];
      v23 = v54 + 5;
      while (v58 != v21)
      {
        if (v21 >= v20[2])
        {
          goto LABEL_36;
        }

        if (v21 == 256)
        {
          goto LABEL_37;
        }

        v24 = v19;
        v25 = *(v23 - 1);
        v26 = *v23;
        v57[0] = v22;
        v28 = *(v22 + 16);
        v27 = *(v22 + 24);

        if (v28 >= v27 >> 1)
        {
          sub_25F817DC8((v27 > 1), v28 + 1, 1);
          v20 = v54;
          v22 = v57[0];
        }

        *(v22 + 16) = v28 + 1;
        v29 = v22 + 24 * v28;
        *(v29 + 48) = v21;
        *(v29 + 32) = v25;
        *(v29 + 40) = v26;
        v23 += 2;
        ++v21;
        v19 = v24;
        if (v24 == v21)
        {

          v11 = v53;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }
  }

  else
  {
    v18 = MEMORY[0x277D84F90];
    v19 = *(MEMORY[0x277D84F90] + 16);
    if (v19)
    {
      goto LABEL_5;
    }
  }

  v22 = MEMORY[0x277D84F90];
LABEL_16:
  if (*(v22 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFD18);
    v31 = sub_25F822A8C();
  }

  else
  {
    v31 = MEMORY[0x277D84F98];
  }

  v57[0] = v31;

  sub_25F7EFD90(v32, 1, v57);
  if (v56)
  {
    goto LABEL_40;
  }

  v33 = v57[0];
  v34 = HIBYTE(v55) & 0xF;
  if ((v55 & 0x2000000000000000) == 0)
  {
    v34 = v11 & 0xFFFFFFFFFFFFLL;
  }

  v57[0] = v11;
  v57[1] = v55;
  v57[2] = 0;
  v57[3] = v34;
  a2 = v57;
  v35 = sub_25F82247C();
  if (v36)
  {
    v37 = v35;
    v38 = v36;
    v39 = MEMORY[0x277D84F90];
    while (*(v33 + 16))
    {
      a2 = v33;
      v40 = sub_25F75DBC8(v37, v38);
      if ((v41 & 1) == 0)
      {
        break;
      }

      v42 = v40;

      v43 = *(*(v33 + 56) + v42);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v39 = sub_25F75BD48(0, *(v39 + 2) + 1, 1, v39);
      }

      v45 = *(v39 + 2);
      v44 = *(v39 + 3);
      if (v45 >= v44 >> 1)
      {
        v39 = sub_25F75BD48((v44 > 1), v45 + 1, 1, v39);
      }

      *(v39 + 2) = v45 + 1;
      v39[v45 + 32] = v43;
      a2 = v57;
      v37 = sub_25F82247C();
      v38 = v46;
      if (!v46)
      {
        goto LABEL_33;
      }
    }

    sub_25F7EFCA8();
    swift_allocError();
    *v47 = v37;
    v47[1] = v38;
    swift_willThrow();

    return a2;
  }

LABEL_33:

  v49 = sub_25F7BEE3C(v48);
  v51 = v50;

  sub_25F76E658(v49, v51);
  a2 = sub_25F7EF670(v49, v51, v49, v51);
  sub_25F76D178(v49, v51);

  if (!(a2 >> 32))
  {
    return a2;
  }

LABEL_39:
  __break(1u);
LABEL_40:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_25F81C4F0()
{
  sub_25F822DCC();
  sub_25F822DEC();
  return sub_25F822E0C();
}

uint64_t sub_25F81C580()
{
  sub_25F822DCC();
  sub_25F822DEC();
  return sub_25F822E0C();
}

char *sub_25F81C5D0@<X0>(char *result@<X0>, char *a2@<X8>)
{
  v2 = *result;
  if (*result)
  {
    v3 = 3;
  }

  else
  {
    v3 = *result;
  }

  if (v2 == 2)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (v2 == 112)
  {
    v5 = 2;
  }

  else
  {
    v5 = v4;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_25F81C654()
{
  sub_25F822DCC();
  sub_25F822DEC();
  return sub_25F822E0C();
}

uint64_t sub_25F81C6EC()
{
  sub_25F822DCC();
  sub_25F822DEC();
  return sub_25F822E0C();
}

uint64_t sub_25F81C740@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25F820C88(*a1);
  *a2 = result;
  return result;
}

uint64_t EDID.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v88 = *MEMORY[0x277D85DE8];
  v5 = sub_25F821F6C();
  if (v2)
  {
    v7 = sub_25F821F4C();
    return (*(*(v7 - 8) + 8))(a1, v7);
  }

  v9 = v5;
  v10 = v6;
  v75 = a1;
  v11 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v11 == 2)
    {
      v13 = *(v5 + 16);
      v12 = *(v5 + 24);
      v14 = __OFSUB__(v12, v13);
      v15 = v12 - v13;
      if (v14)
      {
LABEL_164:
        __break(1u);
        goto LABEL_165;
      }

      if (!v15)
      {
        goto LABEL_20;
      }

      goto LABEL_13;
    }

LABEL_20:
    v19 = 2;
    LOBYTE(v20) = 1;
LABEL_21:
    sub_25F8204F8();
    swift_allocError();
    *v21 = v20;
    v21[1] = v19;
    swift_willThrow();
    v22 = sub_25F821F4C();
    (*(*(v22 - 8) + 8))(v75, v22);
    return sub_25F76D178(v9, v10);
  }

  if (!v11)
  {
    if (!BYTE6(v6))
    {
      goto LABEL_20;
    }

    goto LABEL_13;
  }

  if (__OFSUB__(HIDWORD(v5), v5))
  {
LABEL_165:
    __break(1u);
LABEL_166:
    __break(1u);
    goto LABEL_167;
  }

  if (HIDWORD(v5) == v5)
  {
    goto LABEL_20;
  }

LABEL_13:
  v77 = HIDWORD(v5);
  if (v11 == 2)
  {
    goto LABEL_18;
  }

  if (v11 != 1)
  {
    if ((v6 & 0x7F000000000000) != 0)
    {
      goto LABEL_20;
    }

    goto LABEL_23;
  }

  v16 = BYTE4(v5) - v5;
  if (__OFSUB__(HIDWORD(v5), v5))
  {
    __break(1u);
LABEL_18:
    v18 = *(v5 + 16);
    v17 = *(v5 + 24);
    v14 = __OFSUB__(v17, v18);
    v16 = v17 - v18;
    if (v14)
    {
LABEL_167:
      __break(1u);
      goto LABEL_168;
    }
  }

  if ((v16 & 0x7F) != 0)
  {
    goto LABEL_20;
  }

LABEL_23:
  if (v11 == 2)
  {
    v25 = *(v5 + 16);
    v24 = *(v5 + 24);
    v14 = __OFSUB__(v24, v25);
    v23 = v24 - v25;
    if (v14)
    {
LABEL_169:
      __break(1u);
LABEL_170:
      __break(1u);
LABEL_171:
      __break(1u);
LABEL_172:
      __break(1u);
    }
  }

  else
  {
    if (v11 != 1)
    {
      v23 = BYTE6(v6);
      v27 = BYTE6(v6) > 0x7FuLL;
      goto LABEL_33;
    }

    LODWORD(v23) = HIDWORD(v5) - v5;
    if (__OFSUB__(HIDWORD(v5), v5))
    {
LABEL_168:
      __break(1u);
      goto LABEL_169;
    }

    v23 = v23;
  }

  v26 = v23 + 127;
  if (v23 >= 0)
  {
    v26 = v23;
  }

  if (v23 < -127)
  {
    goto LABEL_166;
  }

  v27 = v26 >> 7;
LABEL_33:
  v73 = a2;
  v78 = v5 >> 32;
  v79 = v5;
  if ((v23 + 127) >= 0xFF)
  {
    v60 = 0;
    v76 = MEMORY[0x277D84F90];
    while (1)
    {
      if (!v27)
      {
        goto LABEL_149;
      }

      if (v11 == 2)
      {
        break;
      }

      if (v11 == 1)
      {
        if (v60 < v79 || v60 >= v78)
        {
          goto LABEL_160;
        }

        result = sub_25F821E4C();
        if (!result)
        {
          goto LABEL_175;
        }

        v61 = result;
        v62 = sub_25F821E7C();
        v63 = v60 - v62;
        if (__OFSUB__(v60, v62))
        {
          goto LABEL_162;
        }

LABEL_121:
        v20 = *(v61 + v63);
        if (!*(v61 + v63))
        {
          goto LABEL_129;
        }

        goto LABEL_125;
      }

      if (v60 >= BYTE6(v10))
      {
        goto LABEL_159;
      }

      LOBYTE(v82) = v9;
      v20 = *(&v82 + v60);
      if (!*(&v82 + v60))
      {
        goto LABEL_129;
      }

LABEL_125:
      if (v20 == 2)
      {
        LOBYTE(v20) = 1;
      }

      else
      {
        if (v20 != 112)
        {

          v19 = 0;
          goto LABEL_21;
        }

        LOBYTE(v20) = 2;
      }

LABEL_129:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v76 = sub_25F75C984(0, *(v76 + 2) + 1, 1, v76);
      }

      v66 = *(v76 + 2);
      v65 = *(v76 + 3);
      v29 = v66 + 1;
      if (v66 >= v65 >> 1)
      {
        v76 = sub_25F75C984((v65 > 1), v66 + 1, 1, v76);
      }

      *(v76 + 2) = v29;
      v67 = &v76[16 * v66];
      v67[32] = v20;
      *(v67 + 5) = v60;
      v60 += 128;
      if (!--v27)
      {
        goto LABEL_35;
      }
    }

    if (v60 < *(v9 + 16))
    {
      goto LABEL_158;
    }

    if (v60 >= *(v9 + 24))
    {
      goto LABEL_161;
    }

    result = sub_25F821E4C();
    if (!result)
    {
      goto LABEL_176;
    }

    v61 = result;
    v64 = sub_25F821E7C();
    v63 = v60 - v64;
    if (__OFSUB__(v60, v64))
    {
      goto LABEL_163;
    }

    goto LABEL_121;
  }

  v28 = MEMORY[0x277D84F90];
  v29 = *(MEMORY[0x277D84F90] + 16);
  v76 = MEMORY[0x277D84F90];
  if (v29)
  {
LABEL_35:
    v30 = ( + 40);
    v28 = MEMORY[0x277D84F90];
    do
    {
      v35 = *(v30 - 8);
      if (v35 >= 2)
      {
        v36 = *v30;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v82 = v28;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_25F817E08(0, *(v28 + 16) + 1, 1);
          v28 = v82;
        }

        v31 = v28;
        v32 = *(v28 + 16);
        v33 = *(v31 + 24);
        if (v32 >= v33 >> 1)
        {
          sub_25F817E08((v33 > 1), v32 + 1, 1);
          v31 = v82;
        }

        *(v31 + 16) = v32 + 1;
        v34 = v31 + 16 * v32;
        *(v34 + 32) = v35;
        *(v34 + 40) = v36;
        v28 = v31;
      }

      v30 += 2;
      --v29;
    }

    while (v29);
  }

  v71 = *(v28 + 16);
  if (!v71)
  {

    v68 = MEMORY[0x277D84F90];
    v39 = v73;
LABEL_137:
    v69 = sub_25F821F4C();
    result = (*(*(v69 - 8) + 8))(v75, v69);
    *v39 = v9;
    v39[1] = v10;
    v39[2] = v76;
    v39[3] = v68;
    return result;
  }

  v38 = 0;
  v72 = v28 + 32;
  v80 = MEMORY[0x277D84F90];
  v70 = v28;
LABEL_47:
  if (v38 >= *(v28 + 16))
  {
    goto LABEL_156;
  }

  v81 = *(v72 + 16 * v38 + 8);
  if (__OFADD__(v81, 2))
  {
    goto LABEL_157;
  }

  v74 = v38 + 1;
  v40 = sub_25F821FDC();
  v41 = 5;
  while (1)
  {
    while (1)
    {
      if (v40 < 1)
      {
        v28 = v70;
        v38 = v74;
        v39 = v73;
        if (v74 == v71)
        {

          v68 = v80;
          goto LABEL_137;
        }

        goto LABEL_47;
      }

      v42 = v81 + v41;
      if (__OFADD__(v81, v41))
      {
        __break(1u);
LABEL_140:
        __break(1u);
LABEL_141:
        __break(1u);
LABEL_142:
        __break(1u);
LABEL_143:
        __break(1u);
LABEL_144:
        __break(1u);
LABEL_145:
        __break(1u);
LABEL_146:
        __break(1u);
LABEL_147:
        __break(1u);
LABEL_148:
        __break(1u);
LABEL_149:
        __break(1u);
LABEL_150:
        __break(1u);
LABEL_151:
        __break(1u);
LABEL_152:
        __break(1u);
LABEL_153:
        __break(1u);
LABEL_154:
        __break(1u);
LABEL_155:
        __break(1u);
LABEL_156:
        __break(1u);
LABEL_157:
        __break(1u);
LABEL_158:
        __break(1u);
LABEL_159:
        __break(1u);
LABEL_160:
        __break(1u);
LABEL_161:
        __break(1u);
LABEL_162:
        __break(1u);
LABEL_163:
        __break(1u);
        goto LABEL_164;
      }

      if (v11 <= 1)
      {
        break;
      }

      if (v11 != 2)
      {
        goto LABEL_170;
      }

      if (v42 < *(v9 + 16))
      {
        goto LABEL_141;
      }

      if (v42 >= *(v9 + 24))
      {
        goto LABEL_144;
      }

      v44 = sub_25F821E4C();
      if (!v44)
      {
        goto LABEL_172;
      }

      v45 = v44;
      v46 = sub_25F821E7C();
      v47 = v42 - v46;
      if (__OFSUB__(v42, v46))
      {
        goto LABEL_146;
      }

LABEL_69:
      v43 = *(v45 + v47);
      if (v43)
      {
        goto LABEL_70;
      }

LABEL_50:
      --v40;
      v14 = __OFADD__(v41++, 1);
      if (v14)
      {
        goto LABEL_140;
      }
    }

    if (v11)
    {
      if (v42 < v79 || v42 >= v78)
      {
        goto LABEL_143;
      }

      v48 = sub_25F821E4C();
      if (!v48)
      {
        goto LABEL_171;
      }

      v45 = v48;
      v49 = sub_25F821E7C();
      v47 = v42 - v49;
      if (__OFSUB__(v42, v49))
      {
        goto LABEL_145;
      }

      goto LABEL_69;
    }

    if (v42 >= BYTE6(v10))
    {
      goto LABEL_142;
    }

    LOWORD(v82) = v9;
    BYTE2(v82) = BYTE2(v9);
    BYTE3(v82) = BYTE3(v9);
    BYTE4(v82) = v77;
    BYTE5(v82) = BYTE5(v9);
    BYTE6(v82) = BYTE6(v9);
    HIBYTE(v82) = HIBYTE(v9);
    v83 = v10;
    v84 = BYTE2(v10);
    v85 = BYTE3(v10);
    v86 = BYTE4(v10);
    v87 = BYTE5(v10);
    v43 = *(&v82 + v42);
    if (!*(&v82 + v42))
    {
      goto LABEL_50;
    }

LABEL_70:
    if (v43 > 40)
    {
      switch(v43)
      {
        case ')':
          v50 = 3;
          break;
        case '~':
          v50 = 4;
          break;
        case '\x7F':
          v50 = 5;
          break;
        default:
          goto LABEL_88;
      }
    }

    else
    {
      switch(v43)
      {
        case 1:
          v50 = 0;
          break;
        case 3:
          v50 = 1;
          break;
        case 18:
          v50 = 2;
          break;
        default:
          goto LABEL_88;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v80 = sub_25F75C970(0, *(v80 + 2) + 1, 1, v80);
    }

    v52 = *(v80 + 2);
    v51 = *(v80 + 3);
    if (v52 >= v51 >> 1)
    {
      v80 = sub_25F75C970((v51 > 1), v52 + 1, 1, v80);
    }

    *(v80 + 2) = v52 + 1;
    v53 = &v80[16 * v52];
    v53[32] = v50;
    *(v53 + 5) = v42;
LABEL_88:
    v54 = v42 + 2;
    if (__OFADD__(v42, 2))
    {
      goto LABEL_147;
    }

    if (v11 == 2)
    {
      if (v54 < *(v9 + 16))
      {
        goto LABEL_150;
      }

      if (v54 >= *(v9 + 24))
      {
        goto LABEL_153;
      }

      result = sub_25F821E4C();
      if (!result)
      {
        goto LABEL_174;
      }

      v55 = result;
      v58 = sub_25F821E7C();
      v57 = v54 - v58;
      if (__OFSUB__(v54, v58))
      {
        goto LABEL_155;
      }

      goto LABEL_101;
    }

    if (v11 != 1)
    {
      if (v54 >= BYTE6(v10))
      {
        goto LABEL_151;
      }

      LOWORD(v82) = v9;
      BYTE2(v82) = BYTE2(v9);
      BYTE3(v82) = BYTE3(v9);
      BYTE4(v82) = v77;
      BYTE5(v82) = BYTE5(v9);
      BYTE6(v82) = BYTE6(v9);
      HIBYTE(v82) = HIBYTE(v9);
      v83 = v10;
      v84 = BYTE2(v10);
      v85 = BYTE3(v10);
      v86 = BYTE4(v10);
      v87 = BYTE5(v10);
      v59 = *(&v82 + v54);
      goto LABEL_104;
    }

    if (v54 < v79 || v54 >= v78)
    {
      goto LABEL_152;
    }

    result = sub_25F821E4C();
    if (!result)
    {
      break;
    }

    v55 = result;
    v56 = sub_25F821E7C();
    v57 = v54 - v56;
    if (__OFSUB__(v54, v56))
    {
      goto LABEL_154;
    }

LABEL_101:
    v59 = *(v55 + v57);
LABEL_104:
    v40 = v40 - v59 - 3;
    v14 = __OFADD__(v41, v59 + 3);
    v41 += v59 + 3;
    if (v14)
    {
      goto LABEL_148;
    }
  }

  __break(1u);
LABEL_174:
  __break(1u);
LABEL_175:
  __break(1u);
LABEL_176:
  __break(1u);
  return result;
}

Swift::Void __swiftcall EDID.manufacturerName(_:)(Swift::Int16 a1)
{

  sub_25F81D1BC(a1);
}

Swift::Void __swiftcall EDID.productCode(_:)(Swift::Int16 a1)
{

  sub_25F81D1BC(a1);
}

uint64_t sub_25F81D1BC(__int16 a1)
{
  v3[5] = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3[3] = MEMORY[0x277D838B0];
  v3[4] = MEMORY[0x277CC9C10];
  v3[0] = &v2;
  v3[1] = v3;
  __swift_project_boxed_opaque_existential_1(v3, MEMORY[0x277D838B0]);
  sub_25F821FAC();
  return __swift_destroy_boxed_opaque_existential_0Tm(v3);
}

Swift::Void __swiftcall EDID.serialNumber(_:)(Swift::UInt32 a1)
{
  v3 = *MEMORY[0x277D85DE8];
  v2 = a1;
  sub_25F81D2E0(&v2, &v3, v1);
}

uint64_t sub_25F81D2E0(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v6 = MEMORY[0x277D838B0];
  v23 = MEMORY[0x277D838B0];
  v24 = MEMORY[0x277CC9C10];
  v21 = a1;
  v22 = a2;
  __swift_project_boxed_opaque_existential_1(&v21, MEMORY[0x277D838B0]);
  sub_25F821FAC();
  __swift_destroy_boxed_opaque_existential_0Tm(&v21);
  result = *(a3 + 24);
  v8 = *(result + 16);
  if (v8)
  {
    v9 = ( + 40);
    v10 = MEMORY[0x277D84F90];
    v25 = v4;
    do
    {
      if (*(v9 - 8) == 2)
      {
        v14 = v6;
        v15 = *v9;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v21 = v10;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_25F817E28(0, v10[2] + 1, 1);
          v10 = v21;
        }

        v12 = v10[2];
        v11 = v10[3];
        if (v12 >= v11 >> 1)
        {
          sub_25F817E28((v11 > 1), v12 + 1, 1);
          v10 = v21;
        }

        v10[2] = v12 + 1;
        v13 = &v10[2 * v12];
        *(v13 + 32) = 2;
        v13[5] = v15;
        v4 = v25;
        v6 = v14;
      }

      v9 += 2;
      --v8;
    }

    while (v8);

    v17 = v10[2];
    if (!v17)
    {
    }
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
    v17 = *(MEMORY[0x277D84F90] + 16);
    if (!v17)
    {
    }
  }

  v18 = v10 + 5;
  while (1)
  {
    v19 = *v18;
    v18 += 2;
    v20 = v19 + 21;
    if (__OFADD__(v19, 21))
    {
      break;
    }

    if (__OFADD__(v20, 4))
    {
      goto LABEL_21;
    }

    if (v20 + 4 < v20)
    {
      goto LABEL_22;
    }

    v23 = v6;
    v24 = MEMORY[0x277CC9C10];
    v21 = a1;
    v22 = v4;
    __swift_project_boxed_opaque_existential_1(&v21, v6);
    sub_25F821FAC();
    result = __swift_destroy_boxed_opaque_existential_0Tm(&v21);
    if (!--v17)
    {
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> EDID.serialNumber(syscfgSrNM:)(Swift::String syscfgSrNM)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = sub_25F81C014(syscfgSrNM._countAndFlagsBits, syscfgSrNM._object);
  if (!v2)
  {
    v4 = v3;
    sub_25F81D2E0(&v4, &v5, v1);
  }
}

Swift::Void __swiftcall EDID.vendorIEEEId(_:)(Swift::Int32 a1)
{
  v24[5] = *MEMORY[0x277D85DE8];
  v2 = *(v1 + 24);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = (v2 + 40);
    v5 = MEMORY[0x277D84F90];
    do
    {
      v9 = *(v4 - 8);
      if (v9 >= 5)
      {
        v10 = *v4;
        v24[0] = v5;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_25F817E28(0, v5[2] + 1, 1);
          v5 = v24[0];
        }

        v7 = v5[2];
        v6 = v5[3];
        if (v7 >= v6 >> 1)
        {
          sub_25F817E28((v6 > 1), v7 + 1, 1);
          v5 = v24[0];
        }

        v5[2] = v7 + 1;
        v8 = &v5[2 * v7];
        *(v8 + 32) = v9;
        v8[5] = v10;
      }

      v4 += 2;
      --v3;
    }

    while (v3);
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  v11 = v5[2];
  if (v11)
  {
    v12 = 0;
    v13 = v5 + 5;
    do
    {
      if (v12 >= v5[2])
      {
        __break(1u);
LABEL_20:
        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
      }

      v14 = *v13;
      v22 = a1;
      v15 = v14 + 3;
      if (__OFADD__(v14, 3))
      {
        goto LABEL_20;
      }

      if (__OFADD__(v15, 3))
      {
        goto LABEL_21;
      }

      if (v14 + 6 < v15)
      {
        goto LABEL_22;
      }

      ++v12;
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB1720);
      v24[3] = v16;
      v24[4] = sub_25F82054C();
      v17 = swift_allocObject();
      v24[0] = v17;
      *(v17 + 16) = xmmword_25F825A80;
      *(v17 + 32) = &v22;
      *(v17 + 40) = v23;
      v18 = __swift_project_boxed_opaque_existential_1(v24, v16);
      v19 = MEMORY[0x28223BE20](v18);
      v20 = v19[1];
      v23[0] = *v19;
      v23[1] = v20;
      sub_25F822DAC();
      __swift_destroy_boxed_opaque_existential_0Tm(v24);
      v13 += 2;
    }

    while (v11 != v12);
  }
}

Swift::Void __swiftcall EDID.chromaticity(primaries:whitePoint:)(ProDisplayLibrary::Primaries *primaries, ProDisplayLibrary::Chromaticity whitePoint)
{
  v23 = *MEMORY[0x277D85DE8];
  x = primaries->red.x;
  y = primaries->red.y;
  v6 = primaries->green.x;
  v5 = primaries->green.y;
  v8 = primaries->blue.x;
  v7 = primaries->blue.y;
  v10 = *v2;
  v9 = v2[1];
  v22 = xmmword_25F82C1C0;
  sub_25F773208(0, 10, v20, x);
  if (v21)
  {
    goto LABEL_28;
  }

  v11 = v20[0];
  sub_25F773208(0, 10, v20, y);
  if (v21)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v12 = v20[0];
  sub_25F773208(0, 10, v20, v6);
  if (v21)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v13 = v20[0];
  sub_25F773208(0, 10, v20, v5);
  if (v21)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v14 = v20[0];
  sub_25F773208(0, 10, v20, v8);
  if (v21)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v15 = v20[0];
  sub_25F773208(0, 10, v20, v7);
  if (v21)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v16 = v20[0];
  sub_25F773208(0, 10, v20, v10);
  if (v21)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
  }

  v17 = v20[0];
  sub_25F773208(0, 10, v20, v9);
  if (v21)
  {
    goto LABEL_35;
  }

  v18 = v20[0];
  sub_25F821FEC();
  sub_25F821FEC();
  if ((v11 & 0xFC00) != 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  sub_25F821FEC();
  if ((v12 & 0xFC00) != 0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  sub_25F821FEC();
  if ((v13 & 0xFC00) != 0)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  sub_25F821FEC();
  if ((v14 & 0xFC00) != 0)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  sub_25F821FEC();
  if ((v15 & 0xFC00) != 0)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  sub_25F821FEC();
  if ((v16 & 0xFC00) != 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  sub_25F821FEC();
  if ((v17 & 0xFC00) != 0)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  sub_25F821FEC();
  if ((v18 & 0xFC00) != 0)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  sub_25F821FEC();
  v19 = v22;
  sub_25F8205EC(v22, *(&v22 + 1));

  sub_25F76D178(v19, *(&v19 + 1));
}

void EDID.chromaticity(primaries:whitePoint:)(__int128 *a1, uint64_t *a2)
{
  v2 = *(a1 + 48);
  v3 = *a2;
  v4 = a2[1];
  v5 = *(a2 + 16);
  v6 = a1[1];
  v14 = *a1;
  v15 = v6;
  v16 = a1[2];
  v17 = v2;
  ColorSpace.primaries.getter(&v13, *&v16);
  primaries = v13;
  v9 = v3;
  v10 = v4;
  v11 = v5;
  WhitePoint.chroma.getter(&whitePoint);
  EDID.chromaticity(primaries:whitePoint:)(&primaries, __PAIR128__(v7, *&whitePoint.x));
}

Swift::Void __swiftcall EDID.gamma(_:)(Swift::Double a1)
{
  v2 = v1;
  v82 = *MEMORY[0x277D85DE8];
  v4 = v1[2];
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = (v4 + 40);
    v7 = MEMORY[0x277D84F90];
    do
    {
      if (!*(v6 - 8))
      {
        v11 = *v6;
        v78 = v7;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_25F817E08(0, *(v7 + 16) + 1, 1);
          v7 = v78;
        }

        v9 = *(v7 + 16);
        v8 = *(v7 + 24);
        if (v9 >= v8 >> 1)
        {
          sub_25F817E08((v8 > 1), v9 + 1, 1);
          v7 = v78;
        }

        *(v7 + 16) = v9 + 1;
        v10 = v7 + 16 * v9;
        *(v10 + 32) = 0;
        *(v10 + 40) = v11;
      }

      v6 += 2;
      --v5;
    }

    while (v5);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v76 = *(v7 + 16);
  if (v76)
  {
    v12 = 0;
    v13 = a1 * 100.0 + -100.0;
    v14 = round(v13);
    v72 = llround(v13);
    v70 = v7 + 40;
    v74 = v7;
    do
    {
      v15 = (v70 + 16 * v12);
      v16 = v12;
      while (1)
      {
        if (v16 >= *(v7 + 16))
        {
          __break(1u);
LABEL_107:
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
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
        }

        if ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_107;
        }

        if (v14 <= -1.0)
        {
          goto LABEL_108;
        }

        if (v14 >= 256.0)
        {
          goto LABEL_109;
        }

        v17 = *v15 + 23;
        if (__OFADD__(*v15, 23))
        {
          goto LABEL_110;
        }

        v19 = *v2;
        v18 = v2[1];
        if ((v18 >> 62) > 1)
        {
          if (v18 >> 62 != 2)
          {
            goto LABEL_134;
          }

          v20 = v18 & 0x3FFFFFFFFFFFFFFFLL;

          sub_25F76D178(v19, v18);
          *v2 = xmmword_25F824200;
          sub_25F76D178(0, 0xC000000000000000);
          if (v17 < *(v19 + 16))
          {
            goto LABEL_116;
          }

          if (v17 >= *(v19 + 24))
          {
            goto LABEL_118;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v22 = *(v19 + 16);
            v21 = *(v19 + 24);
            if (sub_25F821E4C())
            {
              if (__OFSUB__(v22, sub_25F821E7C()))
              {
                goto LABEL_129;
              }

              if (__OFSUB__(v21, v22))
              {
                goto LABEL_126;
              }
            }

            else if (__OFSUB__(v21, v22))
            {
              goto LABEL_126;
            }

            sub_25F821E8C();
            swift_allocObject();
            v29 = sub_25F821E2C();

            v20 = v29;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v30 = *(v19 + 16);
            v31 = *(v19 + 24);
            sub_25F821F9C();
            v32 = swift_allocObject();
            *(v32 + 16) = v30;
            *(v32 + 24) = v31;

            v19 = v32;
          }

          sub_25F821E1C();
          v33 = sub_25F821E4C();
          if (!v33)
          {
            goto LABEL_136;
          }

          v25 = v33;
          v34 = sub_25F821E7C();
          v27 = v17 - v34;
          if (__OFSUB__(v17, v34))
          {
            goto LABEL_120;
          }

          v28 = 0x8000000000000000;
          goto LABEL_14;
        }

        if (v18 >> 62 != 1)
        {
          break;
        }

        v20 = v18 & 0x3FFFFFFFFFFFFFFFLL;

        sub_25F76D178(v19, v18);
        *v2 = xmmword_25F824200;
        sub_25F76D178(0, 0xC000000000000000);
        if (v17 >= v19 >> 32 || v17 < v19)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {

          if (sub_25F821E4C() && __OFSUB__(v19, sub_25F821E7C()))
          {
            goto LABEL_128;
          }

          sub_25F821E8C();
          swift_allocObject();
          v23 = sub_25F821E2C();

          v20 = v23;
        }

        sub_25F821E1C();
        v24 = sub_25F821E4C();
        if (!v24)
        {
          goto LABEL_135;
        }

        v25 = v24;
        v26 = sub_25F821E7C();
        v27 = v17 - v26;
        if (__OFSUB__(v17, v26))
        {
          goto LABEL_119;
        }

        v28 = 0x4000000000000000;
LABEL_14:
        *(v25 + v27) = v72;
        ++v16;
        *v2 = v19;
        v2[1] = v28 | v20;
        v15 += 2;
        v7 = v74;
        if (v76 == v16)
        {
          goto LABEL_52;
        }
      }

      sub_25F76D178(v19, v18);
      v78 = v19;
      LOWORD(v79) = v18;
      BYTE2(v79) = BYTE2(v18);
      HIBYTE(v79) = BYTE3(v18);
      LOBYTE(v80) = BYTE4(v18);
      HIBYTE(v80) = BYTE5(v18);
      v81 = BYTE6(v18);
      if (v17 >= BYTE6(v18))
      {
        goto LABEL_132;
      }

      *(&v78 + v17) = v72;
      v12 = v16 + 1;
      v35 = v69 & 0xF00000000000000 | v79 | ((v80 | (v81 << 16)) << 32);
      *v2 = v78;
      v2[1] = v35;
      v69 = v35;
      v7 = v74;
    }

    while (v76 - 1 != v16);
  }

LABEL_52:

  v36 = v2[3];
  v37 = *(v36 + 16);
  if (v37)
  {
    v38 = (v36 + 40);
    v39 = MEMORY[0x277D84F90];
    do
    {
      if (!*(v38 - 8))
      {
        v43 = *v38;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v78 = v39;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_25F817E28(0, *(v39 + 16) + 1, 1);
          v39 = v78;
        }

        v41 = *(v39 + 16);
        v40 = *(v39 + 24);
        if (v41 >= v40 >> 1)
        {
          sub_25F817E28((v40 > 1), v41 + 1, 1);
          v39 = v78;
        }

        *(v39 + 16) = v41 + 1;
        v42 = v39 + 16 * v41;
        *(v42 + 32) = 0;
        *(v42 + 40) = v43;
      }

      v38 += 2;
      --v37;
    }

    while (v37);
  }

  else
  {
    v39 = MEMORY[0x277D84F90];
  }

  v77 = *(v39 + 16);
  if (v77)
  {
    v45 = 0;
    v46 = (a1 + -1.0) * 100.0;
    v47 = round(v46);
    v73 = llround(v46);
    v71 = v39 + 40;
    v75 = v39;
    do
    {
      v48 = (v71 + 16 * v45);
      v49 = v45;
      while (1)
      {
        if (v49 >= *(v39 + 16))
        {
          goto LABEL_111;
        }

        if ((*&v47 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_112;
        }

        if (v47 <= -1.0)
        {
          goto LABEL_113;
        }

        if (v47 >= 256.0)
        {
          goto LABEL_114;
        }

        v51 = *v48 + 12;
        if (__OFADD__(*v48, 12))
        {
          goto LABEL_115;
        }

        v53 = *v2;
        v52 = v2[1];
        if ((v52 >> 62) > 1)
        {
          if (v52 >> 62 != 2)
          {
            goto LABEL_137;
          }

          v54 = v52 & 0x3FFFFFFFFFFFFFFFLL;

          sub_25F76D178(v53, v52);
          *v2 = xmmword_25F824200;
          sub_25F76D178(0, 0xC000000000000000);
          if (v51 < *(v53 + 16))
          {
            goto LABEL_121;
          }

          if (v51 >= *(v53 + 24))
          {
            goto LABEL_123;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v56 = *(v53 + 16);
            v55 = *(v53 + 24);
            if (sub_25F821E4C())
            {
              if (__OFSUB__(v56, sub_25F821E7C()))
              {
                goto LABEL_131;
              }

              if (__OFSUB__(v55, v56))
              {
                goto LABEL_127;
              }
            }

            else if (__OFSUB__(v55, v56))
            {
              goto LABEL_127;
            }

            sub_25F821E8C();
            swift_allocObject();
            v62 = sub_25F821E2C();

            v54 = v62;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v63 = *(v53 + 16);
            v64 = *(v53 + 24);
            sub_25F821F9C();
            v65 = swift_allocObject();
            *(v65 + 16) = v63;
            *(v65 + 24) = v64;

            v53 = v65;
          }

          sub_25F821E1C();
          v66 = sub_25F821E4C();
          if (!v66)
          {
            goto LABEL_139;
          }

          v59 = v66;
          v67 = sub_25F821E7C();
          v61 = v51 - v67;
          if (__OFSUB__(v51, v67))
          {
            goto LABEL_125;
          }

          v50 = 0x8000000000000000;
          goto LABEL_65;
        }

        if (v52 >> 62 != 1)
        {
          break;
        }

        v54 = v52 & 0x3FFFFFFFFFFFFFFFLL;

        sub_25F76D178(v53, v52);
        *v2 = xmmword_25F824200;
        sub_25F76D178(0, 0xC000000000000000);
        if (v51 >= v53 >> 32 || v51 < v53)
        {
          goto LABEL_122;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {

          if (sub_25F821E4C() && __OFSUB__(v53, sub_25F821E7C()))
          {
            goto LABEL_130;
          }

          sub_25F821E8C();
          swift_allocObject();
          v57 = sub_25F821E2C();

          v54 = v57;
        }

        sub_25F821E1C();
        v58 = sub_25F821E4C();
        if (!v58)
        {
          goto LABEL_138;
        }

        v59 = v58;
        v60 = sub_25F821E7C();
        v61 = v51 - v60;
        if (__OFSUB__(v51, v60))
        {
          goto LABEL_124;
        }

        v50 = 0x4000000000000000;
LABEL_65:
        *(v59 + v61) = v73;
        ++v49;
        *v2 = v53;
        v2[1] = v50 | v54;
        v48 += 2;
        v39 = v75;
        if (v77 == v49)
        {
          goto LABEL_103;
        }
      }

      sub_25F76D178(v53, v52);
      v78 = v53;
      LOWORD(v79) = v52;
      BYTE2(v79) = BYTE2(v52);
      HIBYTE(v79) = BYTE3(v52);
      LOBYTE(v80) = BYTE4(v52);
      HIBYTE(v80) = BYTE5(v52);
      v81 = BYTE6(v52);
      if (v51 >= BYTE6(v52))
      {
        goto LABEL_133;
      }

      *(&v78 + v51) = v73;
      v45 = v49 + 1;
      v68 = v69 & 0xF00000000000000 | v79 | ((v80 | (v81 << 16)) << 32);
      *v2 = v78;
      v2[1] = v68;
      v69 = v68;
      v39 = v75;
    }

    while (v77 - 1 != v49);
  }

LABEL_103:
}

uint64_t EDID.eotfSupport(_:)(uint64_t a1)
{
  v103 = *MEMORY[0x277D85DE8];

  v3 = *(sub_25F8207C4(&unk_2871C5670, a1) + 16);

  v4 = sub_25F761900(5, a1);
  v5 = sub_25F761900(2, a1);
  v98 = a1;
  if (sub_25F761900(4, a1))
  {
    v6 = 8;
  }

  else
  {
    v6 = 0;
  }

  v92 = v6;
  if (v4)
  {
    v7 = 2;
  }

  else
  {
    v7 = 0;
  }

  if (v3)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = v7;
  }

  if (v5)
  {
    v9 = 4;
  }

  else
  {
    v9 = 0;
  }

  v97 = v1;
  v10 = v1[2];
  v11 = *(v10 + 16);
  v90 = v10;
  if (v11)
  {
    v12 = (v10 + 40);
    v13 = MEMORY[0x277D84F90];
    do
    {
      if (*(v12 - 8) == 1)
      {
        v17 = *v12;
        v99 = v13;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_25F817E08(0, *(v13 + 16) + 1, 1);
          v13 = v99;
        }

        v15 = *(v13 + 16);
        v14 = *(v13 + 24);
        if (v15 >= v14 >> 1)
        {
          sub_25F817E08((v14 > 1), v15 + 1, 1);
          v13 = v99;
        }

        *(v13 + 16) = v15 + 1;
        v16 = v13 + 16 * v15;
        *(v16 + 32) = 1;
        *(v16 + 40) = v17;
      }

      v12 += 2;
      --v11;
    }

    while (v11);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v18 = v1;
  v95 = *(v13 + 16);
  if (v95)
  {
    v19 = 0;
    v93 = v8 | v9 | v92;
    do
    {
      v20 = (v13 + 40 + 16 * v19);
      v21 = v19;
      while (1)
      {
        if (v21 >= *(v13 + 16))
        {
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
LABEL_164:
          __break(1u);
LABEL_165:
          __break(1u);
LABEL_166:
          __break(1u);
LABEL_167:
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
        }

        v23 = *v20 + 10;
        if (__OFADD__(*v20, 10))
        {
          goto LABEL_138;
        }

        v25 = *v18;
        v24 = v18[1];
        if ((v24 >> 62) > 1)
        {
          if (v24 >> 62 != 2)
          {
            goto LABEL_165;
          }

          v26 = v24 & 0x3FFFFFFFFFFFFFFFLL;

          sub_25F76D178(v25, v24);
          *v18 = xmmword_25F824200;
          sub_25F76D178(0, 0xC000000000000000);
          if (v23 < *(v25 + 16))
          {
            goto LABEL_141;
          }

          if (v23 >= *(v25 + 24))
          {
            goto LABEL_143;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v28 = *(v25 + 16);
            v27 = *(v25 + 24);
            if (sub_25F821E4C())
            {
              if (__OFSUB__(v28, sub_25F821E7C()))
              {
                goto LABEL_160;
              }

              if (__OFSUB__(v27, v28))
              {
                goto LABEL_157;
              }
            }

            else if (__OFSUB__(v27, v28))
            {
              goto LABEL_157;
            }

            sub_25F821E8C();
            swift_allocObject();
            v34 = sub_25F821E2C();

            v26 = v34;
            v18 = v97;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v35 = *(v25 + 16);
            v36 = *(v25 + 24);
            sub_25F821F9C();
            v37 = swift_allocObject();
            *(v37 + 16) = v35;
            *(v37 + 24) = v36;

            v25 = v37;
          }

          sub_25F821E1C();
          v38 = sub_25F821E4C();
          if (!v38)
          {
            goto LABEL_167;
          }

          v31 = v38;
          v39 = sub_25F821E7C();
          v33 = v23 - v39;
          if (__OFSUB__(v23, v39))
          {
            goto LABEL_145;
          }

          v22 = 0x8000000000000000;
          goto LABEL_26;
        }

        if (v24 >> 62 != 1)
        {
          break;
        }

        v26 = v24 & 0x3FFFFFFFFFFFFFFFLL;

        sub_25F76D178(v25, v24);
        *v18 = xmmword_25F824200;
        sub_25F76D178(0, 0xC000000000000000);
        if (v23 >= v25 >> 32 || v23 < v25)
        {
          goto LABEL_142;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {

          if (sub_25F821E4C() && __OFSUB__(v25, sub_25F821E7C()))
          {
            goto LABEL_159;
          }

          sub_25F821E8C();
          swift_allocObject();
          v29 = sub_25F821E2C();

          v26 = v29;
          v18 = v97;
        }

        sub_25F821E1C();
        v30 = sub_25F821E4C();
        if (!v30)
        {
          goto LABEL_166;
        }

        v31 = v30;
        v32 = sub_25F821E7C();
        v33 = v23 - v32;
        if (__OFSUB__(v23, v32))
        {
          goto LABEL_144;
        }

        v22 = 0x4000000000000000;
LABEL_26:
        *(v31 + v33) = v93;
        ++v21;
        *v18 = v25;
        v18[1] = v22 | v26;
        v20 += 2;
        if (v95 == v21)
        {
          goto LABEL_61;
        }
      }

      v89 = v25 >> 40;
      sub_25F76D178(v25, v24);
      v99 = v25;
      LOWORD(v100) = v24;
      BYTE2(v100) = BYTE2(v24);
      HIBYTE(v100) = BYTE3(v24);
      LOBYTE(v101) = BYTE4(v24);
      HIBYTE(v101) = BYTE5(v24);
      v102 = BYTE6(v24);
      if (v23 >= BYTE6(v24))
      {
        goto LABEL_163;
      }

      *(&v99 + v23) = v93;
      v19 = v21 + 1;
      v40 = v88 & 0xF00000000000000 | v100 | ((v101 | (v102 << 16)) << 32);
      v18 = v97;
      *v97 = v99;
      v97[1] = v40;
      v88 = v40;
    }

    while (v95 - 1 != v21);
  }

LABEL_61:

  v41 = *(v90 + 16);
  if (v41)
  {
    v42 = (v90 + 40);
    v43 = MEMORY[0x277D84F90];
    do
    {
      if (!*(v42 - 8))
      {
        v47 = *v42;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v99 = v43;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_25F817E08(0, *(v43 + 16) + 1, 1);
          v43 = v99;
        }

        v45 = *(v43 + 16);
        v44 = *(v43 + 24);
        if (v45 >= v44 >> 1)
        {
          sub_25F817E08((v44 > 1), v45 + 1, 1);
          v43 = v99;
        }

        *(v43 + 16) = v45 + 1;
        v46 = v43 + 16 * v45;
        *(v46 + 32) = 0;
        *(v46 + 40) = v47;
      }

      v42 += 2;
      --v41;
    }

    while (v41);
  }

  else
  {
    v43 = MEMORY[0x277D84F90];
  }

  v96 = *(v43 + 16);
  if (v96)
  {
    v49 = 0;
    v94 = v43 + 32;
    v50 = v98 + 56;
    v91 = v43;
    while (1)
    {
      if (v49 >= *(v43 + 16))
      {
        goto LABEL_139;
      }

      v51 = *(v94 + 16 * v49 + 8);
      v52 = v51 + 24;
      if (__OFADD__(v51, 24))
      {
        goto LABEL_140;
      }

      v53 = *v18;
      v54 = v18[1];
      v55 = v54 >> 62;
      if ((v54 >> 62) > 1)
      {
        break;
      }

      if (v55)
      {
        if (v52 >= v53 >> 32 || v52 < v53)
        {
          goto LABEL_153;
        }

        v62 = sub_25F821E4C();
        if (!v62)
        {
          goto LABEL_172;
        }

        v58 = v62;
        v63 = sub_25F821E7C();
        v60 = v52 - v63;
        if (__OFSUB__(v52, v63))
        {
          goto LABEL_155;
        }

LABEL_92:
        v56 = *(v58 + v60);
        goto LABEL_93;
      }

      if (v52 >= BYTE6(v54))
      {
        goto LABEL_151;
      }

      LOWORD(v99) = *v18;
      BYTE2(v99) = BYTE2(v53);
      BYTE3(v99) = BYTE3(v53);
      BYTE4(v99) = BYTE4(v53);
      BYTE5(v99) = BYTE5(v53);
      BYTE6(v99) = BYTE6(v53);
      HIBYTE(v99) = HIBYTE(v53);
      LOWORD(v100) = v54;
      BYTE2(v100) = BYTE2(v54);
      HIBYTE(v100) = BYTE3(v54);
      LOBYTE(v101) = BYTE4(v54);
      HIBYTE(v101) = BYTE5(v54);
      v56 = *(&v99 + v52);
LABEL_93:
      if (*(v98 + 16) && (sub_25F822DCC(), MEMORY[0x25F8E7E80](6), v64 = sub_25F822E0C(), v65 = -1 << *(v98 + 32), v66 = v64 & ~v65, ((*(v50 + ((v66 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v66) & 1) != 0))
      {
        v67 = ~v65;
        while (*(*(v98 + 48) + v66) != 6)
        {
          v66 = (v66 + 1) & v67;
          if (((*(v50 + ((v66 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v66) & 1) == 0)
          {
            goto LABEL_98;
          }
        }

        v68 = v56 | 4;
      }

      else
      {
LABEL_98:
        v68 = v56 & 0xFB;
      }

      ++v49;
      v70 = *v18;
      v69 = v18[1];
      if ((v69 >> 62) > 1)
      {
        if (v69 >> 62 != 2)
        {
          goto LABEL_168;
        }

        v71 = v69 & 0x3FFFFFFFFFFFFFFFLL;

        sub_25F76D178(v70, v69);
        *v18 = xmmword_25F824200;
        sub_25F76D178(0, 0xC000000000000000);
        if (v52 < *(v70 + 16))
        {
          goto LABEL_146;
        }

        if (v52 >= *(v70 + 24))
        {
          goto LABEL_148;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v73 = *(v70 + 16);
          v72 = *(v70 + 24);
          if (sub_25F821E4C())
          {
            if (__OFSUB__(v73, sub_25F821E7C()))
            {
              goto LABEL_162;
            }

            if (__OFSUB__(v72, v73))
            {
              goto LABEL_158;
            }
          }

          else if (__OFSUB__(v72, v73))
          {
            goto LABEL_158;
          }

          sub_25F821E8C();
          swift_allocObject();
          v80 = sub_25F821E2C();

          v71 = v80;
          v18 = v97;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v81 = *(v70 + 16);
          v82 = *(v70 + 24);
          sub_25F821F9C();
          v83 = swift_allocObject();
          *(v83 + 16) = v81;
          *(v83 + 24) = v82;

          v70 = v83;
        }

        sub_25F821E1C();
        v84 = sub_25F821E4C();
        if (!v84)
        {
          goto LABEL_170;
        }

        v76 = v84;
        v85 = sub_25F821E7C();
        v78 = v52 - v85;
        if (__OFSUB__(v52, v85))
        {
          goto LABEL_150;
        }

        v79 = 0x8000000000000000;
LABEL_129:
        *(v76 + v78) = v68;
        *v18 = v70;
        v18[1] = v79 | v71;
        goto LABEL_130;
      }

      if (v69 >> 62 == 1)
      {
        v71 = v69 & 0x3FFFFFFFFFFFFFFFLL;

        sub_25F76D178(v70, v69);
        *v18 = xmmword_25F824200;
        sub_25F76D178(0, 0xC000000000000000);
        if (v52 >= v70 >> 32 || v52 < v70)
        {
          goto LABEL_147;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {

          if (sub_25F821E4C() && __OFSUB__(v70, sub_25F821E7C()))
          {
            goto LABEL_161;
          }

          sub_25F821E8C();
          swift_allocObject();
          v74 = sub_25F821E2C();

          v71 = v74;
          v18 = v97;
        }

        sub_25F821E1C();
        v75 = sub_25F821E4C();
        if (!v75)
        {
          goto LABEL_169;
        }

        v76 = v75;
        v77 = sub_25F821E7C();
        v78 = v52 - v77;
        if (__OFSUB__(v52, v77))
        {
          goto LABEL_149;
        }

        v79 = 0x4000000000000000;
        goto LABEL_129;
      }

      sub_25F76D178(v70, v69);
      v99 = v70;
      LOWORD(v100) = v69;
      BYTE2(v100) = BYTE2(v69);
      HIBYTE(v100) = BYTE3(v69);
      LOBYTE(v101) = BYTE4(v69);
      HIBYTE(v101) = BYTE5(v69);
      v102 = BYTE6(v69);
      if (v52 >= BYTE6(v69))
      {
        goto LABEL_164;
      }

      *(&v99 + v52) = v68;
      v86 = v89 & 0xF00000000000000 | v100 | ((v101 | (v102 << 16)) << 32);
      v18 = v97;
      *v97 = v99;
      v97[1] = v86;
      v89 = v86;
LABEL_130:
      v43 = v91;
      if (v49 == v96)
      {
        goto LABEL_134;
      }
    }

    if (v55 != 2)
    {
      goto LABEL_171;
    }

    if (v52 < *(v53 + 16))
    {
      goto LABEL_152;
    }

    if (v52 >= *(v53 + 24))
    {
      goto LABEL_154;
    }

    v57 = sub_25F821E4C();
    if (!v57)
    {
      goto LABEL_173;
    }

    v58 = v57;
    v59 = sub_25F821E7C();
    v60 = v52 - v59;
    if (__OFSUB__(v52, v59))
    {
      goto LABEL_156;
    }

    goto LABEL_92;
  }

LABEL_134:
}

Swift::Void __swiftcall EDID.bt2020Support(_:)(Swift::Bool a1)
{
  v42 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v2 = 0x80;
  }

  else
  {
    v2 = 0;
  }

  v36 = v2;
  v3 = *(v1 + 16);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = (v3 + 40);
    v6 = MEMORY[0x277D84F90];
    do
    {
      if (*(v5 - 8) == 1)
      {
        v10 = *v5;
        v38 = v6;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_25F817E08(0, *(v6 + 16) + 1, 1);
          v6 = v38;
        }

        v8 = *(v6 + 16);
        v7 = *(v6 + 24);
        if (v8 >= v7 >> 1)
        {
          sub_25F817E08((v7 > 1), v8 + 1, 1);
          v6 = v38;
        }

        *(v6 + 16) = v8 + 1;
        v9 = v6 + 16 * v8;
        *(v9 + 32) = 1;
        *(v9 + 40) = v10;
      }

      v5 += 2;
      --v4;
    }

    while (v4);
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

  v11 = v35;
  v37 = *(v6 + 16);
  if (v37)
  {
    v12 = 0;
    do
    {
      v13 = (v6 + 40 + 16 * v12);
      v14 = v12;
      while (1)
      {
        if (v14 >= *(v6 + 16))
        {
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
          __break(1u);
LABEL_60:
          __break(1u);
LABEL_61:
          __break(1u);
LABEL_62:
          __break(1u);
LABEL_63:
          __break(1u);
LABEL_64:
          __break(1u);
LABEL_65:
          __break(1u);
LABEL_66:
          __break(1u);
LABEL_67:
          __break(1u);
        }

        v15 = *v13 + 6;
        if (__OFADD__(*v13, 6))
        {
          goto LABEL_55;
        }

        v17 = *v11;
        v16 = v11[1];
        if ((v16 >> 62) > 1)
        {
          if (v16 >> 62 != 2)
          {
            goto LABEL_65;
          }

          v18 = v16 & 0x3FFFFFFFFFFFFFFFLL;

          sub_25F76D178(v17, v16);
          *v11 = xmmword_25F824200;
          sub_25F76D178(0, 0xC000000000000000);
          if (v15 < *(v17 + 16))
          {
            goto LABEL_56;
          }

          if (v15 >= *(v17 + 24))
          {
            goto LABEL_58;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v20 = *(v17 + 16);
            v19 = *(v17 + 24);
            if (sub_25F821E4C())
            {
              if (__OFSUB__(v20, sub_25F821E7C()))
              {
                goto LABEL_63;
              }

              if (__OFSUB__(v19, v20))
              {
                goto LABEL_61;
              }
            }

            else if (__OFSUB__(v19, v20))
            {
              goto LABEL_61;
            }

            sub_25F821E8C();
            swift_allocObject();
            v27 = sub_25F821E2C();

            v18 = v27;
            v11 = v35;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v28 = *(v17 + 16);
            v29 = *(v17 + 24);
            sub_25F821F9C();
            v30 = swift_allocObject();
            *(v30 + 16) = v28;
            *(v30 + 24) = v29;

            v17 = v30;
          }

          sub_25F821E1C();
          v31 = sub_25F821E4C();
          if (!v31)
          {
            goto LABEL_67;
          }

          v23 = v31;
          v32 = sub_25F821E7C();
          v25 = v15 - v32;
          if (__OFSUB__(v15, v32))
          {
            goto LABEL_60;
          }

          v26 = 0x8000000000000000;
          goto LABEL_17;
        }

        if (v16 >> 62 != 1)
        {
          break;
        }

        v18 = v16 & 0x3FFFFFFFFFFFFFFFLL;

        sub_25F76D178(v17, v16);
        *v11 = xmmword_25F824200;
        sub_25F76D178(0, 0xC000000000000000);
        if (v15 >= v17 >> 32 || v15 < v17)
        {
          goto LABEL_57;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {

          if (sub_25F821E4C() && __OFSUB__(v17, sub_25F821E7C()))
          {
            goto LABEL_62;
          }

          sub_25F821E8C();
          swift_allocObject();
          v21 = sub_25F821E2C();

          v18 = v21;
          v11 = v35;
        }

        sub_25F821E1C();
        v22 = sub_25F821E4C();
        if (!v22)
        {
          goto LABEL_66;
        }

        v23 = v22;
        v24 = sub_25F821E7C();
        v25 = v15 - v24;
        if (__OFSUB__(v15, v24))
        {
          goto LABEL_59;
        }

        v26 = 0x4000000000000000;
LABEL_17:
        *(v23 + v25) = v36;
        ++v14;
        *v11 = v17;
        v11[1] = v26 | v18;
        v13 += 2;
        if (v37 == v14)
        {
          goto LABEL_51;
        }
      }

      sub_25F76D178(v17, v16);
      v38 = v17;
      LOWORD(v39) = v16;
      BYTE2(v39) = BYTE2(v16);
      HIBYTE(v39) = BYTE3(v16);
      LOBYTE(v40) = BYTE4(v16);
      HIBYTE(v40) = BYTE5(v16);
      v41 = BYTE6(v16);
      if (v15 >= BYTE6(v16))
      {
        goto LABEL_64;
      }

      *(&v38 + v15) = v36;
      v12 = v14 + 1;
      v33 = v34 & 0xF00000000000000 | v39 | ((v40 | (v41 << 16)) << 32);
      v11 = v35;
      *v35 = v38;
      v35[1] = v33;
      v34 = v33;
    }

    while (v37 - 1 != v14);
  }

LABEL_51:
}

uint64_t EDID.containerID(_:)()
{
  v19[5] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 24);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 40);
    v4 = MEMORY[0x277D84F90];
    do
    {
      if (*(v3 - 8) == 3)
      {
        v8 = *v3;
        v19[0] = v4;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_25F817E28(0, *(v4 + 16) + 1, 1);
          v4 = v19[0];
        }

        v6 = *(v4 + 16);
        v5 = *(v4 + 24);
        if (v6 >= v5 >> 1)
        {
          sub_25F817E28((v5 > 1), v6 + 1, 1);
          v4 = v19[0];
        }

        *(v4 + 16) = v6 + 1;
        v7 = v4 + 16 * v6;
        *(v7 + 32) = 3;
        *(v7 + 40) = v8;
      }

      v3 += 2;
      --v2;
    }

    while (v2);
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  v9 = *(v4 + 16);
  if (v9)
  {
    v10 = 40;
    v11 = MEMORY[0x277D838B0];
    v12 = MEMORY[0x277CC9C10];
    do
    {
      v13 = *(v4 + v10);
      v18[0] = sub_25F82215C();
      v18[1] = v14;
      v15 = v13 + 3;
      if (__OFADD__(v13, 3))
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
      }

      v16 = v13 + 19;
      if (__OFADD__(v15, 16))
      {
        goto LABEL_23;
      }

      if (v16 < v15)
      {
        goto LABEL_24;
      }

      v19[3] = v11;
      v19[4] = v12;
      v19[0] = v18;
      v19[1] = v19;
      __swift_project_boxed_opaque_existential_1(v19, v11);
      sub_25F821FAC();
      __swift_destroy_boxed_opaque_existential_0Tm(v19);
      v10 += 16;
      --v9;
    }

    while (v9);
  }

  else
  {
  }
}

Swift::Void __swiftcall EDID.updateChecksum()()
{
  v82 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 40);
    v4 = MEMORY[0x277CC9310];
    v5 = MEMORY[0x277CC9308];
    do
    {
      if (__OFADD__(*v3, 128))
      {
        __break(1u);
LABEL_83:
        __break(1u);
LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
LABEL_87:
        __break(1u);
LABEL_88:
        __break(1u);
LABEL_89:
        __break(1u);
LABEL_90:
        __break(1u);
LABEL_91:
        __break(1u);
      }

      if (*v3 + 128 < *v3)
      {
        goto LABEL_83;
      }

      v8 = *(v3 - 8);
      v9 = sub_25F821FCC();
      if (v8 >= 2)
      {
        v80 = v4;
        v81 = v5;
        v78 = v9;
        v79 = v10;
        v15 = __swift_project_boxed_opaque_existential_1(&v78, v4);
        v16 = *v15;
        v17 = v15[1];
        v18 = v17 >> 62;
        if ((v17 >> 62) > 1)
        {
          if (v18 != 2)
          {
            goto LABEL_31;
          }

          v30 = *(v16 + 16);
          v29 = *(v16 + 24);
          v31 = sub_25F821E4C();
          if (v31)
          {
            v32 = v31;
            v33 = sub_25F821E7C();
            if (__OFSUB__(v30, v33))
            {
              goto LABEL_88;
            }

            v34 = (v30 - v33 + v32);
            v27 = __OFSUB__(v29, v30);
            v35 = v29 - v30;
            if (v27)
            {
              goto LABEL_87;
            }
          }

          else
          {
            v34 = 0;
            v27 = __OFSUB__(v29, v30);
            v35 = v29 - v30;
            if (v27)
            {
              goto LABEL_87;
            }
          }

          v51 = sub_25F821E6C();
          v19 = 0;
          if (v51 >= v35)
          {
            v52 = v35;
          }

          else
          {
            v52 = v51;
          }

          v20 = 0xC000000000000000;
          v4 = MEMORY[0x277CC9310];
          v5 = MEMORY[0x277CC9308];
          if (!v34 || !v52)
          {
            goto LABEL_32;
          }

          if (v52 < 15)
          {
            v19 = sub_25F820AD0(v34, &v34[v52]);
            v20 = v68 & 0xF00000000000000 | v53 & 0xFFFFFFFFFFFFFFLL;
            v68 = v20;
            goto LABEL_32;
          }
        }

        else
        {
          if (!v18)
          {
            __src = *v15;
            v73 = v17;
            v74 = BYTE2(v17);
            v75 = BYTE3(v17);
            v76 = BYTE4(v17);
            v77 = BYTE5(v17);
            if (BYTE6(v17))
            {
              if (BYTE6(v17) <= 0xEuLL)
              {
                v19 = sub_25F820AD0(&__src, &__src + BYTE6(v17));
                v20 = v71 & 0xF00000000000000 | v61 & 0xFFFFFFFFFFFFFFLL;
                v71 = v20;
              }

              else
              {
                sub_25F821E8C();
                swift_allocObject();
                v19 = BYTE6(v17) << 32;
                v20 = sub_25F821E3C() | 0x4000000000000000;
              }

              goto LABEL_32;
            }

LABEL_31:
            v19 = 0;
            v20 = 0xC000000000000000;
LABEL_32:
            __swift_destroy_boxed_opaque_existential_0Tm(&v78);
            sub_25F7E30EC(v19, v20, 1, 126);
            sub_25F76D178(v19, v20);
            sub_25F821FEC();
            goto LABEL_5;
          }

          v42 = v16;
          v43 = v16 >> 32;
          v44 = v43 - v42;
          if (v43 < v42)
          {
            goto LABEL_85;
          }

          v45 = sub_25F821E4C();
          if (v45)
          {
            v46 = v45;
            v47 = sub_25F821E7C();
            if (__OFSUB__(v42, v47))
            {
              goto LABEL_91;
            }

            v34 = (v42 - v47 + v46);
          }

          else
          {
            v34 = 0;
          }

          v57 = sub_25F821E6C();
          v19 = 0;
          if (v57 >= v44)
          {
            v52 = v44;
          }

          else
          {
            v52 = v57;
          }

          v20 = 0xC000000000000000;
          v4 = MEMORY[0x277CC9310];
          v5 = MEMORY[0x277CC9308];
          if (!v34 || !v52)
          {
            goto LABEL_32;
          }

          if (v52 < 15)
          {
            v19 = sub_25F820AD0(v34, &v34[v52]);
            v20 = v69 & 0xF00000000000000 | v64 & 0xFFFFFFFFFFFFFFLL;
            v69 = v20;
            goto LABEL_32;
          }
        }

        v58 = &v34[v52];
        if (v52 >= 0x7FFFFFFF)
        {
          v19 = sub_25F820B88(v34, v58);
          v20 = v65 | 0x8000000000000000;
        }

        else
        {
          v19 = sub_25F820C04(v34, v58);
          v20 = v59 | 0x4000000000000000;
        }

        goto LABEL_32;
      }

      v80 = v4;
      v81 = v5;
      v78 = v9;
      v79 = v10;
      v11 = __swift_project_boxed_opaque_existential_1(&v78, v4);
      v12 = *v11;
      v13 = v11[1];
      v14 = v13 >> 62;
      if ((v13 >> 62) > 1)
      {
        if (v14 != 2)
        {
          goto LABEL_3;
        }

        v22 = *(v12 + 16);
        v21 = *(v12 + 24);
        v23 = sub_25F821E4C();
        if (v23)
        {
          v24 = v23;
          v25 = sub_25F821E7C();
          if (__OFSUB__(v22, v25))
          {
            goto LABEL_89;
          }

          v26 = (v22 - v25 + v24);
          v27 = __OFSUB__(v21, v22);
          v28 = v21 - v22;
          if (v27)
          {
            goto LABEL_86;
          }
        }

        else
        {
          v26 = 0;
          v27 = __OFSUB__(v21, v22);
          v28 = v21 - v22;
          if (v27)
          {
            goto LABEL_86;
          }
        }

        v48 = sub_25F821E6C();
        v6 = 0;
        if (v48 >= v28)
        {
          v49 = v28;
        }

        else
        {
          v49 = v48;
        }

        v7 = 0xC000000000000000;
        v4 = MEMORY[0x277CC9310];
        v5 = MEMORY[0x277CC9308];
        if (!v26 || !v49)
        {
          goto LABEL_4;
        }

        if (v49 >= 15)
        {
          goto LABEL_64;
        }

        v6 = sub_25F820AD0(v26, &v26[v49]);
        v7 = v66 & 0xF00000000000000 | v50 & 0xFFFFFFFFFFFFFFLL;
        v66 = v7;
      }

      else
      {
        if (!v14)
        {
          __src = *v11;
          v73 = v13;
          v74 = BYTE2(v13);
          v75 = BYTE3(v13);
          v76 = BYTE4(v13);
          v77 = BYTE5(v13);
          if (BYTE6(v13))
          {
            if (BYTE6(v13) <= 0xEuLL)
            {
              v6 = sub_25F820AD0(&__src, &__src + BYTE6(v13));
              v7 = v70 & 0xF00000000000000 | v60 & 0xFFFFFFFFFFFFFFLL;
              v70 = v7;
            }

            else
            {
              sub_25F821E8C();
              swift_allocObject();
              v6 = BYTE6(v13) << 32;
              v7 = sub_25F821E3C() | 0x4000000000000000;
            }

            goto LABEL_4;
          }

LABEL_3:
          v6 = 0;
          v7 = 0xC000000000000000;
          goto LABEL_4;
        }

        v36 = v12;
        v37 = v12 >> 32;
        v38 = v37 - v36;
        if (v37 < v36)
        {
          goto LABEL_84;
        }

        v39 = sub_25F821E4C();
        if (v39)
        {
          v40 = v39;
          v41 = sub_25F821E7C();
          if (__OFSUB__(v36, v41))
          {
            goto LABEL_90;
          }

          v26 = (v36 - v41 + v40);
        }

        else
        {
          v26 = 0;
        }

        v54 = sub_25F821E6C();
        v6 = 0;
        if (v54 >= v38)
        {
          v49 = v38;
        }

        else
        {
          v49 = v54;
        }

        v7 = 0xC000000000000000;
        v4 = MEMORY[0x277CC9310];
        v5 = MEMORY[0x277CC9308];
        if (!v26 || !v49)
        {
          goto LABEL_4;
        }

        if (v49 >= 15)
        {
LABEL_64:
          v55 = &v26[v49];
          if (v49 >= 0x7FFFFFFF)
          {
            v6 = sub_25F820B88(v26, v55);
            v7 = v63 | 0x8000000000000000;
          }

          else
          {
            v6 = sub_25F820C04(v26, v55);
            v7 = v56 | 0x4000000000000000;
          }

          goto LABEL_4;
        }

        v6 = sub_25F820AD0(v26, &v26[v49]);
        v7 = v67 & 0xF00000000000000 | v62 & 0xFFFFFFFFFFFFFFLL;
        v67 = v7;
      }

LABEL_4:
      __swift_destroy_boxed_opaque_existential_0Tm(&v78);
      sub_25F7E30EC(v6, v7, 0, 127);
      sub_25F76D178(v6, v7);
LABEL_5:
      v3 += 2;
      sub_25F821FEC();
      --v2;
    }

    while (v2);
  }
}

uint64_t sub_25F82010C(int a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = a1;
  return sub_25F81D2E0(&v3, &v4, v1);
}

uint64_t sub_25F82025C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB03E0);
  result = sub_25F82290C();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + (v13 | (v11 << 6)));
    sub_25F822DCC();
    MEMORY[0x25F8E7E80](v16);
    result = sub_25F822E0C();
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 48) + v20) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

_BYTE *sub_25F820464@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
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
    result = sub_25F820AD0(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_25F820B88(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_25F820C04(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

unint64_t sub_25F8204F8()
{
  result = qword_27FDB1718;
  if (!qword_27FDB1718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB1718);
  }

  return result;
}

unint64_t sub_25F82054C()
{
  result = qword_27FDB1728;
  if (!qword_27FDB1728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FDB1720);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB1728);
  }

  return result;
}

uint64_t sub_25F8205EC(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      return sub_25F821FAC();
    }

    goto LABEL_10;
  }

  if (v2 == 2)
  {
    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
    a1 = sub_25F821E4C();
    if (a1)
    {
      a1 = sub_25F821E7C();
      if (__OFSUB__(v3, a1))
      {
        goto LABEL_16;
      }
    }

    if (!__OFSUB__(v4, v3))
    {
LABEL_13:
      sub_25F821E6C();
      return sub_25F821FAC();
    }

    __break(1u);
LABEL_10:
    v5 = a1;
    if (a1 >> 32 >= a1)
    {
      if (!sub_25F821E4C() || !__OFSUB__(v5, sub_25F821E7C()))
      {
        goto LABEL_13;
      }

LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  return sub_25F821FAC();
}

uint64_t sub_25F8207C4(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v17[6] = *MEMORY[0x277D85DE8];
  v16 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v17[3] = &v16;
  v17[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  if (v5 <= 0xD || (v12 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v9 = &v15 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    v10 = sub_25F820964(v9, v7, v3, a2);
  }

  else
  {
    v13 = v12;
    v14 = swift_slowAlloc();
    bzero(v14, v13);
    sub_25F821DE8(v14, v7, v17);
    v10 = v17[0];

    MEMORY[0x25F8E88D0](v14, -1, -1);
  }

  return v10;
}

uint64_t sub_25F820964(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + 16);
  if (!v5)
  {
    goto LABEL_14;
  }

  v6 = 0;
  v7 = 0;
  v8 = a4 + 56;
  v9 = a3 + 32;
  while (1)
  {
    v11 = *(v9 + v7);
    sub_25F822DCC();
    MEMORY[0x25F8E7E80](v11);
    v12 = sub_25F822E0C();
    v13 = -1 << *(a4 + 32);
    v14 = v12 & ~v13;
    v15 = v14 >> 6;
    v16 = 1 << v14;
    if (((1 << v14) & *(v8 + 8 * (v14 >> 6))) != 0)
    {
      v17 = *(a4 + 48);
      if (*(v17 + v14) != v11)
      {
        v18 = ~v13;
        do
        {
          v14 = (v14 + 1) & v18;
          v15 = v14 >> 6;
          v16 = 1 << v14;
          if (((1 << v14) & *(v8 + 8 * (v14 >> 6))) == 0)
          {
            goto LABEL_4;
          }
        }

        while (*(v17 + v14) != v11);
      }

      v10 = a1[v15];
      a1[v15] = v10 | v16;
      if ((v10 & v16) == 0 && __OFADD__(v6++, 1))
      {
        break;
      }
    }

LABEL_4:
    if (++v7 == v5)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_14:
  v6 = 0;
LABEL_15:

  return sub_25F82025C(a1, a2, v6, a4);
}

unint64_t sub_25F820AB0(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result <= 0xFF)
  {
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_25F820AD0(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x277D85DE8];
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
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_25F820B88(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_25F821E8C();
  swift_allocObject();
  result = sub_25F821E3C();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_25F821F9C();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_25F820C04(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_25F821E8C();
  swift_allocObject();
  result = sub_25F821E3C();
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

uint64_t sub_25F820C88(unsigned __int8 a1)
{
  if (a1 > 0x28u)
  {
    if (a1 == 41)
    {
      return 3;
    }

    if (a1 != 126)
    {
      if (a1 == 127)
      {
        return 5;
      }

      return 6;
    }

    return 4;
  }

  else
  {
    if (a1 == 1)
    {
      return 0;
    }

    if (a1 != 3)
    {
      if (a1 == 18)
      {
        return 2;
      }

      return 6;
    }

    return 1;
  }
}

uint64_t _s17ProDisplayLibrary4EDIDV9luminance3sdr3hdr3minySd_S2dtF_0(double a1, double a2)
{
  v3 = v2;
  v91 = *MEMORY[0x277D85DE8];
  if (a1 <= 51.0948574)
  {
    LOBYTE(v83) = 1;
    LOBYTE(v85) = 1;
    if (a1 >= a2)
    {
      goto LABEL_15;
    }

LABEL_8:
    if (a2 <= 51.0948574)
    {
      LOBYTE(v8) = 1;
      goto LABEL_14;
    }

    v7 = ceil(log2(a2 / 50.0) * 32.0);
    if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v7 > -1.0)
      {
        if (v7 < 256.0)
        {
          v8 = v7;
LABEL_14:
          LOBYTE(v85) = v8;
          goto LABEL_15;
        }

LABEL_164:
        __break(1u);
LABEL_165:
        __break(1u);
LABEL_166:
        __break(1u);
LABEL_167:
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
      }

LABEL_163:
      __break(1u);
      goto LABEL_164;
    }

LABEL_162:
    __break(1u);
    goto LABEL_163;
  }

  v6 = ceil(log2(a1 / 50.0) * 32.0);
  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_158;
  }

  if (v6 <= -1.0)
  {
LABEL_159:
    __break(1u);
LABEL_160:
    __break(1u);
LABEL_161:
    __break(1u);
    goto LABEL_162;
  }

  if (v6 >= 256.0)
  {
    goto LABEL_160;
  }

  v83 = v6;
  v85 = v6;
  if (a1 < a2)
  {
    goto LABEL_8;
  }

LABEL_15:
  v9 = v2[2];
  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = (v9 + 40);
    v12 = MEMORY[0x277D84F90];
    do
    {
      if (*(v11 - 8) == 1)
      {
        v16 = *v11;
        v87 = v12;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_25F817E08(0, *(v12 + 16) + 1, 1);
          v12 = v87;
        }

        v14 = *(v12 + 16);
        v13 = *(v12 + 24);
        if (v14 >= v13 >> 1)
        {
          sub_25F817E08((v13 > 1), v14 + 1, 1);
          v12 = v87;
        }

        *(v12 + 16) = v14 + 1;
        v15 = v12 + 16 * v14;
        *(v15 + 32) = 1;
        *(v15 + 40) = v16;
      }

      v11 += 2;
      --v10;
    }

    while (v10);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v84 = *(v12 + 16);
  if (v84)
  {
    v17 = 0;
    v78 = v12 + 40;
    v81 = v2;
    v82 = v12;
    do
    {
      v18 = (v78 + 16 * v17);
      v19 = v17;
      while (1)
      {
        if (v19 >= *(v12 + 16))
        {
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
          goto LABEL_159;
        }

        v20 = *v18;
        v21 = *v18 + 12;
        if (__OFADD__(*v18, 12))
        {
          goto LABEL_129;
        }

        v23 = *v3;
        v22 = v3[1];
        v24 = v22 >> 62;
        v86 = v19;
        if ((v22 >> 62) > 1)
        {
          if (v24 != 2)
          {
            goto LABEL_168;
          }

          v26 = v22 & 0x3FFFFFFFFFFFFFFFLL;

          sub_25F76D178(v23, v22);
          *v3 = xmmword_25F824200;
          sub_25F76D178(0, 0xC000000000000000);
          if (v21 < *(v23 + 16))
          {
            goto LABEL_137;
          }

          if (v21 >= *(v23 + 24))
          {
            goto LABEL_140;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v27 = *(v23 + 16);
            v28 = *(v23 + 24);
            if (sub_25F821E4C())
            {
              if (__OFSUB__(v27, sub_25F821E7C()))
              {
                goto LABEL_155;
              }

              if (__OFSUB__(v28, v27))
              {
                goto LABEL_150;
              }
            }

            else if (__OFSUB__(v28, v27))
            {
              goto LABEL_150;
            }

            sub_25F821E8C();
            swift_allocObject();
            v34 = sub_25F821E2C();

            v26 = v34;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v35 = *(v23 + 16);
            v36 = *(v23 + 24);
            sub_25F821F9C();
            v37 = swift_allocObject();
            *(v37 + 16) = v35;
            *(v37 + 24) = v36;

            v23 = v37;
          }

          sub_25F821E1C();
          v38 = sub_25F821E4C();
          if (!v38)
          {
            goto LABEL_171;
          }

          v39 = v38;
          v40 = sub_25F821E7C();
          if (__OFSUB__(v21, v40))
          {
            goto LABEL_142;
          }

          *(v39 + v21 - v40) = v85;
          v25 = v26 | 0x8000000000000000;
LABEL_60:
          *v3 = v23;
          v3[1] = v25;
          goto LABEL_61;
        }

        if (v24)
        {
          v29 = v22 & 0x3FFFFFFFFFFFFFFFLL;

          sub_25F76D178(v23, v22);
          *v3 = xmmword_25F824200;
          sub_25F76D178(0, 0xC000000000000000);
          if (v21 >= v23 >> 32 || v21 < v23)
          {
            goto LABEL_139;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {

            if (sub_25F821E4C() && __OFSUB__(v23, sub_25F821E7C()))
            {
              goto LABEL_154;
            }

            sub_25F821E8C();
            swift_allocObject();
            v30 = sub_25F821E2C();

            v29 = v30;
          }

          sub_25F821E1C();
          v31 = sub_25F821E4C();
          if (!v31)
          {
            goto LABEL_169;
          }

          v32 = v31;
          v33 = sub_25F821E7C();
          if (__OFSUB__(v21, v33))
          {
            goto LABEL_141;
          }

          *(v32 + v21 - v33) = v85;
          v25 = v29 | 0x4000000000000000;
          goto LABEL_60;
        }

        sub_25F76D178(v23, v22);
        v87 = v23;
        LOWORD(v88) = v22;
        BYTE2(v88) = BYTE2(v22);
        HIBYTE(v88) = BYTE3(v22);
        LOBYTE(v89) = BYTE4(v22);
        HIBYTE(v89) = BYTE5(v22);
        v90 = BYTE6(v22);
        if (v21 >= BYTE6(v22))
        {
          goto LABEL_138;
        }

        *(&v87 + v21) = v85;
        v23 = v87;
        v25 = v80 & 0xF00000000000000 | v88 | ((v89 | (v90 << 16)) << 32);
        v3 = v81;
        *v81 = v87;
        v81[1] = v25;
        v80 = v25;
LABEL_61:
        v41 = v20 + 13;
        if (__OFADD__(v20, 13))
        {
          goto LABEL_130;
        }

        v42 = v25 >> 62;
        if ((v25 >> 62) > 1)
        {
          if (v42 != 2)
          {
            goto LABEL_170;
          }

          v44 = v25 & 0x3FFFFFFFFFFFFFFFLL;

          sub_25F76D178(v23, v25);
          *v3 = xmmword_25F824200;
          sub_25F76D178(0, 0xC000000000000000);
          if (v41 < *(v23 + 16))
          {
            goto LABEL_144;
          }

          if (v41 >= *(v23 + 24))
          {
            goto LABEL_146;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v45 = *(v23 + 16);
            v46 = *(v23 + 24);
            if (sub_25F821E4C())
            {
              if (__OFSUB__(v45, sub_25F821E7C()))
              {
                goto LABEL_157;
              }

              if (__OFSUB__(v46, v45))
              {
                goto LABEL_151;
              }
            }

            else if (__OFSUB__(v46, v45))
            {
              goto LABEL_151;
            }

            sub_25F821E8C();
            swift_allocObject();
            v52 = sub_25F821E2C();

            v44 = v52;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v53 = *(v23 + 16);
            v54 = *(v23 + 24);
            sub_25F821F9C();
            v55 = swift_allocObject();
            *(v55 + 16) = v53;
            *(v55 + 24) = v54;

            v23 = v55;
          }

          sub_25F821E1C();
          v56 = sub_25F821E4C();
          if (!v56)
          {
            goto LABEL_173;
          }

          v57 = v56;
          v58 = sub_25F821E7C();
          if (__OFSUB__(v41, v58))
          {
            goto LABEL_148;
          }

          *(v57 + v41 - v58) = v83;
          v43 = v44 | 0x8000000000000000;
LABEL_91:
          *v3 = v23;
          v3[1] = v43;
          goto LABEL_92;
        }

        if (v42)
        {
          v47 = v25 & 0x3FFFFFFFFFFFFFFFLL;

          sub_25F76D178(v23, v25);
          *v3 = xmmword_25F824200;
          sub_25F76D178(0, 0xC000000000000000);
          if (v41 >= v23 >> 32 || v41 < v23)
          {
            goto LABEL_145;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {

            if (sub_25F821E4C() && __OFSUB__(v23, sub_25F821E7C()))
            {
              goto LABEL_156;
            }

            sub_25F821E8C();
            swift_allocObject();
            v48 = sub_25F821E2C();

            v47 = v48;
          }

          sub_25F821E1C();
          v49 = sub_25F821E4C();
          if (!v49)
          {
            goto LABEL_172;
          }

          v50 = v49;
          v51 = sub_25F821E7C();
          if (__OFSUB__(v41, v51))
          {
            goto LABEL_147;
          }

          *(v50 + v41 - v51) = v83;
          v43 = v47 | 0x4000000000000000;
          goto LABEL_91;
        }

        sub_25F76D178(v23, v25);
        v87 = v23;
        LOWORD(v88) = v25;
        BYTE2(v88) = BYTE2(v25);
        HIBYTE(v88) = BYTE3(v25);
        LOBYTE(v89) = BYTE4(v25);
        HIBYTE(v89) = BYTE5(v25);
        v90 = BYTE6(v25);
        if (v41 >= BYTE6(v25))
        {
          goto LABEL_143;
        }

        *(&v87 + v41) = v83;
        v23 = v87;
        v43 = v79 & 0xF00000000000000 | v88 | ((v89 | (v90 << 16)) << 32);
        v3 = v81;
        *v81 = v87;
        v81[1] = v43;
        v79 = v43;
LABEL_92:
        v59 = v20 + 14;
        if (__OFADD__(v20, 14))
        {
          goto LABEL_131;
        }

        if ((v43 >> 62) > 1)
        {
          if (v43 >> 62 != 2)
          {
            goto LABEL_165;
          }

          v60 = v43 & 0x3FFFFFFFFFFFFFFFLL;

          sub_25F76D178(v23, v43);
          *v3 = xmmword_25F824200;
          sub_25F76D178(0, 0xC000000000000000);
          if (v59 < *(v23 + 16))
          {
            goto LABEL_132;
          }

          if (v59 >= *(v23 + 24))
          {
            goto LABEL_134;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v61 = *(v23 + 16);
            v62 = *(v23 + 24);
            if (sub_25F821E4C())
            {
              if (__OFSUB__(v61, sub_25F821E7C()))
              {
                goto LABEL_153;
              }

              if (__OFSUB__(v62, v61))
              {
                goto LABEL_149;
              }
            }

            else if (__OFSUB__(v62, v61))
            {
              goto LABEL_149;
            }

            sub_25F821E8C();
            swift_allocObject();
            v69 = sub_25F821E2C();

            v60 = v69;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v70 = *(v23 + 16);
            v71 = *(v23 + 24);
            sub_25F821F9C();
            v72 = swift_allocObject();
            *(v72 + 16) = v70;
            *(v72 + 24) = v71;

            v23 = v72;
          }

          sub_25F821E1C();
          v73 = sub_25F821E4C();
          if (!v73)
          {
            goto LABEL_167;
          }

          v65 = v73;
          v74 = sub_25F821E7C();
          v67 = v59 - v74;
          if (__OFSUB__(v59, v74))
          {
            goto LABEL_136;
          }

          v68 = 0x8000000000000000;
          goto LABEL_28;
        }

        if (v43 >> 62 != 1)
        {
          break;
        }

        v60 = v43 & 0x3FFFFFFFFFFFFFFFLL;

        sub_25F76D178(v23, v43);
        *v3 = xmmword_25F824200;
        sub_25F76D178(0, 0xC000000000000000);
        if (v59 >= v23 >> 32 || v59 < v23)
        {
          goto LABEL_133;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {

          if (sub_25F821E4C() && __OFSUB__(v23, sub_25F821E7C()))
          {
            goto LABEL_152;
          }

          sub_25F821E8C();
          swift_allocObject();
          v63 = sub_25F821E2C();

          v60 = v63;
        }

        sub_25F821E1C();
        v64 = sub_25F821E4C();
        if (!v64)
        {
          goto LABEL_166;
        }

        v65 = v64;
        v66 = sub_25F821E7C();
        v67 = v59 - v66;
        if (__OFSUB__(v59, v66))
        {
          goto LABEL_135;
        }

        v68 = 0x4000000000000000;
LABEL_28:
        *(v65 + v67) = 0;
        v19 = v86 + 1;
        *v3 = v23;
        v3[1] = v68 | v60;
        v18 += 2;
        v12 = v82;
        if (v84 == v86 + 1)
        {
          goto LABEL_125;
        }
      }

      sub_25F76D178(v23, v43);
      v87 = v23;
      LOWORD(v88) = v43;
      BYTE2(v88) = BYTE2(v43);
      HIBYTE(v88) = BYTE3(v43);
      LOBYTE(v89) = BYTE4(v43);
      HIBYTE(v89) = BYTE5(v43);
      v90 = BYTE6(v43);
      if (v59 >= BYTE6(v43))
      {
        goto LABEL_161;
      }

      *(&v87 + v59) = 0;
      v17 = v86 + 1;
      v75 = v77 & 0xF00000000000000 | v88 | ((v89 | (v90 << 16)) << 32);
      v3 = v81;
      v12 = v82;
      *v81 = v87;
      v81[1] = v75;
      v77 = v75;
    }

    while (v84 - 1 != v86);
  }

LABEL_125:
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

uint64_t sub_25F821AEC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25F821B34(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for EDID.EDIDError(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 65282 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65282 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65282;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65282;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65282;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  if (v6 <= 2)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6 ^ 0xFF;
  }

  return (v7 + 1);
}

uint64_t storeEnumTagSinglePayload for EDID.EDIDError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65282 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65282 < 0xFF0000)
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
    v5 = ((a2 - 254) >> 16) + 1;
    *result = a2 - 254;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = -a2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_25F821CF8(unsigned __int8 *a1)
{
  if (a1[1] <= 1u)
  {
    return a1[1];
  }

  else
  {
    return *a1 + 2;
  }
}

_BYTE *sub_25F821D10(_BYTE *result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  result[1] = a2;
  return result;
}

unint64_t sub_25F821D3C()
{
  result = qword_27FDB1730;
  if (!qword_27FDB1730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB1730);
  }

  return result;
}

unint64_t sub_25F821D94()
{
  result = qword_27FDB1738;
  if (!qword_27FDB1738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB1738);
  }

  return result;
}

uint64_t sub_25F821DE8@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_25F820964(a1, a2, **(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}