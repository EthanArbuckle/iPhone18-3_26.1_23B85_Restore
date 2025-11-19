uint64_t sub_1C9487F8C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C9487FC4(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*a1 == 3)
  {
    v9 = *(a5 + 24);

    return v9(a2, a3, a4, a5);
  }

  else
  {
    sub_1C96A4204();
    swift_allocObject();
    sub_1C96A41F4();
    sub_1C9486B70();
    v11 = sub_1C96A41E4();
    v13 = v12;

    v14[0] = v11;
    v14[1] = v13;
    (*(a5 + 16))(v14, a2, a3, MEMORY[0x1E6969080], a4, a5);
    return sub_1C9482F3C(v11, v13);
  }
}

void NSUserDefaults.set<A>(_:for:)()
{
  v1 = sub_1C96A7DD4();
  v2 = sub_1C96A7004();
  [v0 setObject:v1 forKey:v2];
  swift_unknownObjectRelease();
}

uint64_t sub_1C948822C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v8 = *a2;
  v9 = a2[1];
  v10 = a2[2];
  v11 = a2[3];
  v12 = a2[4];
  v13 = a2[5];
  if (v2 != 2)
  {
    if (v8 == 2 || (sub_1C954DD8C(v2 & 1, v8 & 1) & 1) == 0)
    {
      return 0;
    }

LABEL_6:
    if (v3 == 2)
    {
      if (v9 != 2)
      {
        return 0;
      }
    }

    else if (v9 == 2 || (sub_1C9549788(v3 & 1) & 1) == 0)
    {
      return 0;
    }

    if (v4 == 5)
    {
      if (v10 != 5)
      {
        return 0;
      }
    }

    else if (v10 == 5 || (sub_1C954DD88(v4, v10) & 1) == 0)
    {
      return 0;
    }

    if (v5 == 2)
    {
      if (v11 != 2)
      {
        return 0;
      }
    }

    else if (v11 == 2 || (sub_1C9549808() & 1) == 0)
    {
      return 0;
    }

    if (v6 == 5)
    {
      if (v12 != 5)
      {
        return 0;
      }
    }

    else if (v12 == 5 || (sub_1C954986C(v6, v12) & 1) == 0)
    {
      return 0;
    }

    return v7 ^ v13 ^ 1u;
  }

  if (v8 == 2)
  {
    goto LABEL_6;
  }

  return 0;
}

uint64_t sub_1C94883B0()
{
  type metadata accessor for LocationsOfInterestManager();
  swift_allocObject();
  result = sub_1C94883EC();
  qword_1EDB7B9F8 = result;
  return result;
}

uint64_t sub_1C94883EC()
{
  v1 = v0;
  v2 = sub_1C96A5114();
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1C96A5104();
  sub_1C96A5134();
  swift_allocObject();
  *(v0 + 16) = sub_1C96A5124();
  v13 = 0;
  v11 = 0u;
  v12 = 0u;
  sub_1C9488644(&v11, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5260);
  swift_allocObject();
  v3 = sub_1C96A55B4();
  sub_1C94886B4(&v11);
  *(v1 + 32) = v3;
  if (qword_1EDB80350 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = qword_1EDB80358;
  v5 = type metadata accessor for SyncedLocationsOfInterestProvider();
  v6 = swift_allocObject();
  v7 = sub_1C9488740(v4, v6);
  swift_beginAccess();
  *(&v12 + 1) = v5;
  v13 = &off_1F4900998;
  *&v11 = v7;
  sub_1C9469B6C(&v11, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5268);
  swift_allocObject();
  sub_1C96A3D04();
  v8 = sub_1C96A55B4();
  __swift_destroy_boxed_opaque_existential_1Tm(&v11);
  *(v1 + 24) = v8;
  swift_endAccess();

  return v1;
}

uint64_t static LocationsOfInterestManager.standard.getter()
{
  if (qword_1EDB7B9F0 != -1)
  {
    swift_once();
  }

  return sub_1C96A3D04();
}

uint64_t sub_1C9488644(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5250);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C94886B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5250);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_1C9488740(uint64_t a1, void *a2)
{
  v4 = sub_1C96A5114();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7[3] = sub_1C9488854();
  v7[4] = &protocol witness table for NSUserDefaults;
  v7[0] = a1;
  a2[2] = 0xD000000000000013;
  a2[3] = 0x80000001C96CE110;
  sub_1C96A5104();
  sub_1C96A5134();
  swift_allocObject();
  a2[10] = sub_1C96A5124();
  a2[11] = 0;
  sub_1C9469B6C(v7, (a2 + 4));
  a2[9] = MEMORY[0x1E69E7CC0];
  v5 = sub_1C9488898();
  __swift_destroy_boxed_opaque_existential_1Tm(v7);
  a2[9] = v5;

  return a2;
}

unint64_t sub_1C9488854()
{
  result = qword_1EDB80340;
  if (!qword_1EDB80340)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDB80340);
  }

  return result;
}

uint64_t sub_1C9488898()
{
  v1 = v0;
  sub_1C96A50E4();
  v2 = v0[7];
  v3 = v1[8];
  __swift_project_boxed_opaque_existential_1(v1 + 4, v1[7]);
  v4 = sub_1C9488910(v1[2], v1[3], v2, v3);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  sub_1C96A50F4();
  return v5;
}

uint64_t sub_1C9488910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(a4 + 8))(&v7, a1, a2, MEMORY[0x1E6969080], a3);
  result = 0;
  v5 = v8;
  if (v8 >> 60 != 15)
  {
    v6 = v7;
    sub_1C96A4184();
    swift_allocObject();
    sub_1C96A4174();
    sub_1C9488A04();
    sub_1C96A4154();
    sub_1C9485BFC(v6, v5);

    return v7;
  }

  return result;
}

unint64_t sub_1C9488A04()
{
  result = qword_1EDB7BA00;
  if (!qword_1EDB7BA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7BA00);
  }

  return result;
}

void *sub_1C9488A58(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6F38);
  OUTLINED_FUNCTION_1_2();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v11 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C948D208();
  sub_1C96A7F44();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5248);
    sub_1C9488C9C(&qword_1EDB7AB78, &qword_1EDB7C318);
    sub_1C96A7CB4();
    (*(v5 + 8))(v8, v2);
    v9 = v11[1];
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v9;
}

unint64_t sub_1C9488C04()
{
  result = qword_1EDB7BA10;
  if (!qword_1EDB7BA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7BA10);
  }

  return result;
}

uint64_t sub_1C9488C58(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for LocationOfInterest();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C9488C9C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC3A5248);
    sub_1C9488C58(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StoredLocationsOfInterest.CodingKeys(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x1C9488DE0);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1C9488E34()
{
  result = qword_1EDB7C320;
  if (!qword_1EDB7C320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7C320);
  }

  return result;
}

unint64_t sub_1C9488E8C()
{
  result = qword_1EDB7BDA0;
  if (!qword_1EDB7BDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7BDA0);
  }

  return result;
}

unint64_t sub_1C9488EE0(char a1)
{
  result = 1701869940;
  switch(a1)
  {
    case 1:
      result = 0x6E6F697461636F6CLL;
      break;
    case 2:
      result = 0x654D6D6F72467369;
      break;
    case 3:
      result = 0x726464416C6C7566;
      break;
    case 4:
      result = 0x64644174726F6873;
      break;
    case 5:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1C9488FEC()
{
  result = qword_1EDB7BDA8;
  if (!qword_1EDB7BDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7BDA8);
  }

  return result;
}

unint64_t sub_1C9489040()
{
  result = qword_1EDB7BDB0;
  if (!qword_1EDB7BDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7BDB0);
  }

  return result;
}

unint64_t sub_1C94890A8()
{
  result = qword_1EDB7BDB8;
  if (!qword_1EDB7BDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7BDB8);
  }

  return result;
}

unint64_t sub_1C94890FC()
{
  result = qword_1EDB7BDC0;
  if (!qword_1EDB7BDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7BDC0);
  }

  return result;
}

unint64_t sub_1C9489164()
{
  result = qword_1EDB7BDD0;
  if (!qword_1EDB7BDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7BDD0);
  }

  return result;
}

unint64_t sub_1C94891B8()
{
  result = qword_1EDB7BDD8;
  if (!qword_1EDB7BDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7BDD8);
  }

  return result;
}

unint64_t sub_1C948920C()
{
  result = qword_1EDB7BDE0;
  if (!qword_1EDB7BDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7BDE0);
  }

  return result;
}

uint64_t sub_1C9489260@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C948DCC0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C94892A0(char a1)
{
  if (a1)
  {
    return 1802661751;
  }

  else
  {
    return 1701670760;
  }
}

uint64_t sub_1C94892C0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Location();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C9489304(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C948934C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1C94893C0()
{
  result = qword_1EDB7D0D0;
  if (!qword_1EDB7D0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7D0D0);
  }

  return result;
}

uint64_t sub_1C9489414(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 1701667182;
      break;
    case 2:
      result = 0x616E6964726F6F63;
      break;
    case 3:
      result = 0x656E6F5A656D6974;
      break;
    case 4:
      result = 0x726665527473616CLL;
      break;
    case 5:
      result = 0x6954686372616573;
      break;
    case 6:
      result = 0x7553686372616573;
      break;
    case 7:
      result = 0x4E65736963657270;
      break;
    case 8:
      result = 0x7261646E6F636573;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Location.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1C9489628);
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

void OUTLINED_FUNCTION_34_3()
{
  v2 = *(v0 + 344);
}

uint64_t OUTLINED_FUNCTION_34_5()
{

  return sub_1C96A7CB4();
}

uint64_t OUTLINED_FUNCTION_34_8()
{

  return swift_allocObject();
}

void *OUTLINED_FUNCTION_34_10(uint64_t a1)
{
  *&v2[*(a1 + 44)] = 0;

  return memcpy(v2, v1, 0x48uLL);
}

uint64_t OUTLINED_FUNCTION_34_11(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v2 + v1, 1, a1);
}

uint64_t sub_1C9489760(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Location();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C94897C4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_6();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C948981C()
{
  v1 = OUTLINED_FUNCTION_28_4();
  v2(v1);
  OUTLINED_FUNCTION_0_36();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_1C948986C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_6();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C94898C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Location();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C9489928(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C9489990()
{
  OUTLINED_FUNCTION_40_2();
  v1(0);
  OUTLINED_FUNCTION_6();
  v2 = OUTLINED_FUNCTION_11();
  v3(v2);
  return v0;
}

uint64_t sub_1C94899E8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_6();
  v4 = OUTLINED_FUNCTION_11();
  v5(v4);
  return a2;
}

uint64_t sub_1C9489A44(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_6();
  v4 = OUTLINED_FUNCTION_11();
  v5(v4);
  return a2;
}

uint64_t sub_1C9489AA0()
{
  OUTLINED_FUNCTION_40_2();
  v1(0);
  OUTLINED_FUNCTION_6();
  v2 = OUTLINED_FUNCTION_11();
  v3(v2);
  return v0;
}

uint64_t sub_1C9489AF8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_6();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C9489B58()
{
  OUTLINED_FUNCTION_40_2();
  v1(0);
  OUTLINED_FUNCTION_6();
  v2 = OUTLINED_FUNCTION_11();
  v3(v2);
  return v0;
}

uint64_t sub_1C9489BB0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_6();
  v4 = OUTLINED_FUNCTION_11();
  v5(v4);
  return a2;
}

uint64_t sub_1C9489C0C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_6();
  v4 = OUTLINED_FUNCTION_11();
  v5(v4);
  return a2;
}

uint64_t LocationOfInterest.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A8320);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C948D6F4();
  sub_1C96A7F54();
  v14[15] = *v3;
  v14[14] = 0;
  sub_1C9489ED4();
  OUTLINED_FUNCTION_0_0();
  sub_1C96A7D74();
  if (!v2)
  {
    type metadata accessor for LocationOfInterest();
    v14[13] = 1;
    type metadata accessor for Location();
    OUTLINED_FUNCTION_2_78();
    sub_1C948934C(v11, v12);
    OUTLINED_FUNCTION_0_0();
    sub_1C96A7D74();
    v14[12] = 2;
    OUTLINED_FUNCTION_0_0();
    sub_1C96A7D34();
    v14[11] = 3;
    OUTLINED_FUNCTION_0_0();
    sub_1C96A7CE4();
    v14[10] = 4;
    OUTLINED_FUNCTION_0_0();
    sub_1C96A7CE4();
    v14[9] = 5;
    OUTLINED_FUNCTION_0_0();
    sub_1C96A7D24();
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_1C9489ED4()
{
  result = qword_1EDB796B8;
  if (!qword_1EDB796B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB796B8);
  }

  return result;
}

unint64_t sub_1C9489F58()
{
  result = qword_1EDB7CC48;
  if (!qword_1EDB7CC48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC3A5430);
    sub_1C948E788(&qword_1EDB7FD60, MEMORY[0x1E6969530]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7CC48);
  }

  return result;
}

unint64_t sub_1C948A00C()
{
  result = qword_1EDB7CF00;
  if (!qword_1EDB7CF00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC3A6430);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7CF00);
  }

  return result;
}

uint64_t sub_1C948A088()
{
  swift_beginAccess();
  sub_1C96A3D04();
  sub_1C96A55D4();
}

uint64_t sub_1C948A0E0()
{
  sub_1C96A5134();
  sub_1C96A3D04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5248);
  sub_1C96A5554();

  return v1;
}

uint64_t sub_1C948A180(uint64_t a1)
{
  sub_1C9488644(a1, v3);
  sub_1C96A3D04();
  sub_1C96A55E4();

  return sub_1C94886B4(a1);
}

void sub_1C948A1D4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1C96A6EB4();
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1C96A50E4();
  v5 = v1[7];
  v6 = v2[8];
  __swift_project_boxed_opaque_existential_1(v2 + 4, v2[7]);
  v7 = v2[2];
  v8 = v2[3];
  v9 = sub_1C9488910(v7, v8, v5, v6);
  v10 = v2[7];
  v11 = v2[8];
  __swift_project_boxed_opaque_existential_1(v2 + 4, v10);
  sub_1C9490C5C(a1, v7, v8, v10, v11);
  sub_1C96A50F4();
  if (!v9 || (sub_1C96A53C4(), sub_1C9490DB8(), v13 = v12, swift_bridgeObjectRelease_n(), (v13 & 1) == 0))
  {
    sub_1C954869C();
    sub_1C9669F0C();
    v20[3] = &type metadata for StoredLocationsOfInterest;
    v20[4] = sub_1C94904A0();
    v20[0] = a1;
    sub_1C96A53C4();
    sub_1C9486BC4(v20);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    v14 = sub_1C9487768();
    v16 = v15;
    v17 = sub_1C96A4844();
    v19 = v18;
    sub_1C9482F3C(v14, v16);
    v20[0] = v17;
    v20[1] = v19;
    sub_1C96A3D04();
    sub_1C96A4F04();

    sub_1C95486C0();
  }
}

uint64_t static Location.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_1C96A4A54();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_14();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430);
  OUTLINED_FUNCTION_7(v12);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v69 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A61F8);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_4_42();
  v19 = *(a1 + 32);
  v18 = *(a1 + 40);
  v21 = *(a2 + 32);
  v20 = *(a2 + 40);
  v22 = *(a1 + 56) == *(a2 + 56) && *(a1 + 64) == *(a2 + 64);
  if (v22)
  {
    if (v19 != v21 || v18 != v20)
    {
      return 0;
    }

LABEL_16:
    v27 = type metadata accessor for Location();
    if ((MEMORY[0x1CCA8A750](a1 + *(v27 + 20), a2 + *(v27 + 20)) & 1) == 0)
    {
      return 0;
    }

    v69 = v27;
    v70 = v7;
    v28 = *(v27 + 24);
    v29 = *(v16 + 48);
    sub_1C9470AA0(a1 + v28, v2, &unk_1EC3A5430);
    sub_1C9470AA0(a2 + v28, v2 + v29, &unk_1EC3A5430);
    v30 = OUTLINED_FUNCTION_44_7();
    OUTLINED_FUNCTION_23_1(v30, v31, v5);
    if (v22)
    {
      OUTLINED_FUNCTION_23_1(v2 + v29, 1, v5);
      if (v22)
      {
        sub_1C9470AFC(v2, &unk_1EC3A5430);
LABEL_29:
        v38 = v69;
        OUTLINED_FUNCTION_9_34();
        if (v41)
        {
          if (!v39)
          {
            return 0;
          }

          OUTLINED_FUNCTION_22(v40);
          v44 = v22 && v42 == v43;
          if (!v44 && (sub_1C96A7DE4() & 1) == 0)
          {
            return 0;
          }
        }

        else if (v39)
        {
          return 0;
        }

        OUTLINED_FUNCTION_9_34();
        if (v47)
        {
          if (!v45)
          {
            return 0;
          }

          OUTLINED_FUNCTION_22(v46);
          v50 = v22 && v48 == v49;
          if (!v50 && (sub_1C96A7DE4() & 1) == 0)
          {
            return 0;
          }
        }

        else if (v45)
        {
          return 0;
        }

        OUTLINED_FUNCTION_9_34();
        if (v53)
        {
          if (!v51)
          {
            return 0;
          }

          OUTLINED_FUNCTION_22(v52);
          v56 = v22 && v54 == v55;
          if (!v56 && (sub_1C96A7DE4() & 1) == 0)
          {
            return 0;
          }
        }

        else if (v51)
        {
          return 0;
        }

        OUTLINED_FUNCTION_9_34();
        if (v59)
        {
          if (!v57)
          {
            return 0;
          }

          OUTLINED_FUNCTION_22(v58);
          v62 = v22 && v60 == v61;
          if (!v62 && (sub_1C96A7DE4() & 1) == 0)
          {
            return 0;
          }
        }

        else if (v57)
        {
          return 0;
        }

        v63 = *(v38 + 44);
        v64 = *(a1 + v63);
        v65 = *(a2 + v63);
        if (v64)
        {
          if (v65)
          {
            sub_1C94B7264();
            v66 = v65;
            v67 = v64;
            v68 = sub_1C96A78B4();

            if (v68)
            {
              return 1;
            }
          }
        }

        else if (!v65)
        {
          return 1;
        }

        return 0;
      }
    }

    else
    {
      sub_1C9470AA0(v2, v15, &unk_1EC3A5430);
      OUTLINED_FUNCTION_23_1(v2 + v29, 1, v5);
      if (!v32)
      {
        v33 = v70;
        (*(v70 + 32))(v11, v2 + v29, v5);
        OUTLINED_FUNCTION_17_30();
        sub_1C948E788(v34, v35);
        v36 = sub_1C96A6F94();
        v37 = *(v33 + 8);
        v37(v11, v5);
        v37(v15, v5);
        sub_1C9470AFC(v2, &unk_1EC3A5430);
        if ((v36 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_29;
      }

      (*(v70 + 8))(v15, v5);
    }

    sub_1C9470AFC(v2, &qword_1EC3A61F8);
    return 0;
  }

  v23 = sub_1C96A7DE4();
  result = 0;
  if ((v23 & 1) != 0 && v19 == v21 && v18 == v20)
  {
    goto LABEL_16;
  }

  return result;
}

BOOL static Location.Identifier.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v5 = *(a2 + 32);
  v4 = *(a2 + 40);
  if (*(a1 + 56) == *(a2 + 56) && *(a1 + 64) == *(a2 + 64))
  {
    if (v3 != v5)
    {
      return 0;
    }

    return v2 == v4;
  }

  v7 = sub_1C96A7DE4();
  result = 0;
  if ((v7 & 1) != 0 && v3 == v5)
  {
    return v2 == v4;
  }

  return result;
}

uint64_t sub_1C948A8A8(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5080);
  result = sub_1C96A5274();
  if (v8)
  {
    sub_1C94670AC(&v7, v9);
    v5 = v10;
    v6 = v11;
    __swift_project_boxed_opaque_existential_1(v9, v10);
    (*(v6 + 8))(v2, v3, v5, v6);
    return __swift_destroy_boxed_opaque_existential_1Tm(v9);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C948A974@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5040);
  result = sub_1C96A5274();
  if (v6)
  {
    v4 = type metadata accessor for AccountMonitor();
    swift_allocObject();
    result = sub_1C948AA40(v5);
    a2[3] = v4;
    a2[4] = &protocol witness table for AccountMonitor;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C948AA40(uint64_t a1)
{
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  sub_1C9469B6C(a1, v1 + 24);
  v3 = [objc_opt_self() defaultCenter];
  [v3 addObserver:v1 selector:sel_ubiquityIdentityDidChange name:*MEMORY[0x1E696A9F0] object:0];

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v1;
}

uint64_t AccountMonitor.addObserver(_:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1C948AB70();
  v5 = *(*(v2 + 16) + 16);
  sub_1C948AC08(v5);
  v6 = *(v2 + 16);
  *(v6 + 16) = v5 + 1;
  v7 = v6 + 16 * v5;
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;
  *(v2 + 16) = v6;
  swift_endAccess();
  return swift_unknownObjectRetain();
}

uint64_t sub_1C948ABAC(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

uint64_t sub_1C948AC20(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

uint64_t sub_1C948AC8C@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v5 = a1(0);
  result = swift_allocObject();
  a3[3] = v5;
  a3[4] = a2;
  *a3 = result;
  return result;
}

uint64_t sub_1C948ACDC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1C96A4EE4();
  sub_1C96A4EC4();
  if (qword_1EDB7A980 != -1)
  {
    swift_once();
  }

  sub_1C96A4EB4();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (v7 == 1)
  {
    v4 = type metadata accessor for StubPPTSavedSingleLocationManager();
    result = sub_1C96A5264();
    if (result)
    {
      v6 = &protocol witness table for StubPPTSavedSingleLocationManager;
LABEL_8:
      a2[3] = v4;
      a2[4] = v6;
      *a2 = result;
      return result;
    }

    __break(1u);
  }

  else
  {
    v4 = type metadata accessor for StubPPTSavedLocationsManager();
    result = sub_1C96A5264();
    if (result)
    {
      v6 = &protocol witness table for StubPPTSavedLocationsManager;
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C948ADF8()
{
  v0 = sub_1C96A4F24();
  OUTLINED_FUNCTION_1();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_14();
  v6 = v5 - v4;
  sub_1C96A4F34();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_14();
  (*(v10 + 104))(v9 - v8, *MEMORY[0x1E69D6EA0]);
  (*(v2 + 104))(v6, *MEMORY[0x1E69D6E88], v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4BD0);
  swift_allocObject();
  result = sub_1C96A4F74();
  qword_1EDB7A988 = result;
  return result;
}

uint64_t sub_1C948AF90(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t (*a4)(void))
{
  a2(0);
  swift_allocObject();
  return a4();
}

uint64_t OUTLINED_FUNCTION_22_16()
{

  return sub_1C96A6344();
}

uint64_t OUTLINED_FUNCTION_22_18()
{

  return sub_1C96A7CB4();
}

uint64_t OUTLINED_FUNCTION_22_20()
{

  return sub_1C96A7B94();
}

unint64_t OUTLINED_FUNCTION_22_21()
{

  return sub_1C9484164(v0, v1, (v2 - 120));
}

unint64_t OUTLINED_FUNCTION_22_22(float a1, uint64_t a2, ...)
{
  va_start(va, a2);
  *v4 = a1;

  return sub_1C9484164(v3, v2, va);
}

uint64_t OUTLINED_FUNCTION_22_25()
{

  return sub_1C96A7D74();
}

void static Location.auckland.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F60);
  OUTLINED_FUNCTION_7(v0);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_3_12();
  OUTLINED_FUNCTION_13_8();
  v2 = sub_1C96A4DF4();
  OUTLINED_FUNCTION_0_1(v2);
  if (v3)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_9_13(0x646E616C6B637541, -36.8509, 174.7645);
  }
}

void static Location.santiago.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F60);
  OUTLINED_FUNCTION_7(v0);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_3_12();
  OUTLINED_FUNCTION_13_8();
  v2 = sub_1C96A4DF4();
  OUTLINED_FUNCTION_0_1(v2);
  if (v3)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_9_13(0x6F676169746E6153, -33.4489, -70.6693);
  }
}

void static Location.lagos.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F60);
  OUTLINED_FUNCTION_7(v0);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_10_9();
  OUTLINED_FUNCTION_11_10();
  v2 = sub_1C96A4DF4();
  OUTLINED_FUNCTION_0_1(v2);
  if (v3)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_6_15(0x736F67614CLL, 6.5244, 3.3792);
  }
}

void static Location.mumbai.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F60);
  OUTLINED_FUNCTION_7(v0);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_1_22();
  OUTLINED_FUNCTION_11_10();
  v2 = sub_1C96A4DF4();
  OUTLINED_FUNCTION_0_1(v2);
  if (v3)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_8_12(0x6961626D754DLL, 19.075983, 72.877655);
  }
}

unint64_t sub_1C948B51C()
{
  result = qword_1EDB7D670[0];
  if (!qword_1EDB7D670[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDB7D670);
  }

  return result;
}

unint64_t sub_1C948B570()
{
  result = qword_1EDB7D620;
  if (!qword_1EDB7D620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7D620);
  }

  return result;
}

unint64_t sub_1C948B5E4()
{
  result = qword_1EDB7D610;
  if (!qword_1EDB7D610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7D610);
  }

  return result;
}

unint64_t sub_1C948B638()
{
  result = qword_1EDB7D618;
  if (!qword_1EDB7D618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7D618);
  }

  return result;
}

uint64_t sub_1C948B68C(char a1)
{
  if (a1)
  {
    return 0x6E6F697461636F6CLL;
  }

  else
  {
    return 0x726F6C6F63;
  }
}

unint64_t OUTLINED_FUNCTION_72_1(uint64_t a1, unint64_t a2)
{

  return sub_1C9484164(a1, a2, (v2 - 104));
}

unint64_t sub_1C948B748()
{
  result = qword_1EDB7FF40;
  if (!qword_1EDB7FF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7FF40);
  }

  return result;
}

_BYTE *sub_1C948B79C(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1C948B864);
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
          result = OUTLINED_FUNCTION_42_13(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

uint64_t WeatherDataConfiguration.init(from:)@<X0>(void *a1@<X0>, double *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7CE0);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v20 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C947BD80();
  sub_1C96A7F44();
  if (!v2)
  {
    v22 = 0;
    OUTLINED_FUNCTION_0_105();
    sub_1C96A7C24();
    v11 = v23;
    v21 = v24;
    v22 = 1;
    OUTLINED_FUNCTION_0_105();
    sub_1C96A7C24();
    v12 = v23;
    HIDWORD(v20) = v24;
    v22 = 2;
    OUTLINED_FUNCTION_0_105();
    sub_1C96A7C24();
    v13 = v23;
    v14 = v24;
    v22 = 3;
    OUTLINED_FUNCTION_0_105();
    sub_1C96A7C24();
    (*(v7 + 8))(v10, v5);
    v15 = v23;
    v16 = 600.0;
    if (!v21)
    {
      v16 = v11;
    }

    v17 = 3.0;
    if (!HIDWORD(v20))
    {
      v17 = v12;
    }

    v18 = 64800.0;
    if (!v14)
    {
      v18 = v13;
    }

    if (v24)
    {
      v15 = 5000.0;
    }

    *a2 = v16;
    a2[1] = v17;
    a2[2] = v18;
    a2[3] = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_1C948BAA0()
{
  result = qword_1EDB7FC40;
  if (!qword_1EDB7FC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7FC40);
  }

  return result;
}

unint64_t sub_1C948BAF8()
{
  result = qword_1EDB7FC48;
  if (!qword_1EDB7FC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7FC48);
  }

  return result;
}

unint64_t sub_1C948BB54(char a1)
{
  result = 0xD000000000000016;
  switch(a1)
  {
    case 1:
      result = 0xD00000000000001BLL;
      break;
    case 2:
      result = 0xD00000000000001CLL;
      break;
    case 3:
      result = 0xD00000000000001ELL;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WeatherDataConfiguration.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
        JUMPOUT(0x1C948BCACLL);
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C948BCF4()
{
  result = qword_1EDB7FC08;
  if (!qword_1EDB7FC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7FC08);
  }

  return result;
}

unint64_t sub_1C948BD4C()
{
  result = qword_1EDB7FC20;
  if (!qword_1EDB7FC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7FC20);
  }

  return result;
}

unint64_t sub_1C948BDA0()
{
  result = qword_1EDB7FBB0;
  if (!qword_1EDB7FBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7FBB0);
  }

  return result;
}

unint64_t sub_1C948BDF8()
{
  result = qword_1EDB7FBC0;
  if (!qword_1EDB7FBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7FBC0);
  }

  return result;
}

unint64_t sub_1C948BE54(char a1)
{
  result = 0xD000000000000022;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000014;
      break;
    case 2:
      result = 0xD000000000000018;
      break;
    case 3:
      result = 0xD000000000000019;
      break;
    case 4:
      result = 0xD00000000000001DLL;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WeatherMenuRefreshConfiguration.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1C948BFCCLL);
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

unint64_t sub_1C948BFF4()
{
  result = qword_1EDB7FB78;
  if (!qword_1EDB7FB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7FB78);
  }

  return result;
}

uint64_t WeatherMenuAnalyticsConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A8828);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C9482070();
  sub_1C96A7F44();
  if (!v2)
  {
    v21 = 0;
    OUTLINED_FUNCTION_0_115();
    sub_1C96A7C24();
    v18 = LOBYTE(v19);
    v21 = 1;
    OUTLINED_FUNCTION_0_115();
    sub_1C96A7C24();
    v17 = LOBYTE(v19);
    v21 = 2;
    OUTLINED_FUNCTION_0_115();
    sub_1C96A7C24();
    v11 = v19;
    v12 = v20;
    v21 = 3;
    OUTLINED_FUNCTION_0_115();
    sub_1C96A7C24();
    (*(v7 + 8))(v10, v5);
    v13 = v19;
    v14 = 86400.0;
    if (!v12)
    {
      v14 = v11;
    }

    if (v20)
    {
      v13 = 1200.0;
    }

    *a2 = v18 & 1;
    *(a2 + 1) = v17 & 1;
    *(a2 + 8) = v14;
    *(a2 + 16) = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_1C948C24C()
{
  result = qword_1EDB7FB88;
  if (!qword_1EDB7FB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7FB88);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for WeatherMenuAnalyticsConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t WidgetConfiguration.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v12 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5870);
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C948C52C();
  sub_1C96A7F44();
  if (!v2)
  {
    LOBYTE(__src.refresh.currentLocation.minimum) = 0;
    sub_1C948C580();
    OUTLINED_FUNCTION_0_38();
    sub_1C96A7C24();
    memcpy(&v14, v15, sizeof(v14));
    LOBYTE(__src.refresh.currentLocation.minimum) = 1;
    OUTLINED_FUNCTION_0_38();
    sub_1C96A7C24();
    v10.value = v17;
    LOBYTE(__src.refresh.currentLocation.minimum) = 2;
    OUTLINED_FUNCTION_0_38();
    sub_1C96A7C24();
    v18.value = (*(v6 + 8))(v9, v4);
    v18.is_nil = v13;
    WidgetConfiguration.init(refresh:useBackgroundReverseGeocodingPriority:timelineReloadDebouncingInterval:)(&__src, &v14, v10, v18);
    memcpy(v12, &__src, 0x60uLL);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_1C948C4D4()
{
  result = qword_1EDB7E9A0;
  if (!qword_1EDB7E9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7E9A0);
  }

  return result;
}

unint64_t sub_1C948C52C()
{
  result = qword_1EDB7E9B0;
  if (!qword_1EDB7E9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7E9B0);
  }

  return result;
}

unint64_t sub_1C948C580()
{
  result = qword_1EDB7D928;
  if (!qword_1EDB7D928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7D928);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WidgetConfiguration.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1C948C6A0);
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

unint64_t sub_1C948C6F0()
{
  result = qword_1EDB7D938;
  if (!qword_1EDB7D938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7D938);
  }

  return result;
}

unint64_t sub_1C948C744()
{
  result = qword_1EDB7D940;
  if (!qword_1EDB7D940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7D940);
  }

  return result;
}

unint64_t sub_1C948C798()
{
  result = qword_1EDB7D948;
  if (!qword_1EDB7D948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7D948);
  }

  return result;
}

uint64_t sub_1C948C7EC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 80) = v3;
  return result;
}

void __swiftcall WidgetConfiguration.init(refresh:useBackgroundReverseGeocodingPriority:timelineReloadDebouncingInterval:)(WeatherCore::WidgetConfiguration *__return_ptr retstr, WeatherCore::WidgetRefreshConfiguration_optional *refresh, Swift::Bool_optional useBackgroundReverseGeocodingPriority, Swift::Double_optional timelineReloadDebouncingInterval)
{
  v5 = *&timelineReloadDebouncingInterval.is_nil;
  if (v4)
  {
    v5 = 2.0;
  }

  v6 = vdup_n_s32(refresh->is_nil);
  v7.i64[0] = v6.u32[0];
  v7.i64[1] = v6.u32[1];
  v8 = vcltzq_s64(vshlq_n_s64(v7, 0x3FuLL));
  v9 = vbslq_s8(v8, xmmword_1C96B0700, refresh->value.defaultLocation);
  retstr->refresh.currentLocation = vbslq_s8(v8, xmmword_1C96B0700, refresh->value.currentLocation);
  retstr->refresh.defaultLocation = v9;
  v10 = vbslq_s8(v8, xmmword_1C96B0700, refresh->value.changeInConditions);
  retstr->refresh.severe = vbslq_s8(v8, xmmword_1C96B0700, refresh->value.severe);
  retstr->refresh.changeInConditions = v10;
  retstr->refresh.nextHourPrecipitation = vbslq_s8(v8, xmmword_1C96B0700, refresh->value.nextHourPrecipitation);
  retstr->useBackgroundReverseGeocodingPriority = useBackgroundReverseGeocodingPriority.value;
  retstr->timelineReloadDebouncingInterval = v5;
}

uint64_t sub_1C948C894(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *(result + 80) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1C948C8F0()
{
  OUTLINED_FUNCTION_40_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(v2);
  OUTLINED_FUNCTION_6();
  (*(v3 + 16))(v0, v1);
  return v0;
}

uint64_t OUTLINED_FUNCTION_37_2(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v1, 0, 1, a1);

  return swift_bridgeObjectRetain_n();
}

void OUTLINED_FUNCTION_37_9()
{
  v4 = (v2 + *(v3 + 28));
  *v4 = v1;
  v4[1] = v0;
}

uint64_t OUTLINED_FUNCTION_37_10()
{
}

void OUTLINED_FUNCTION_59()
{
  v2 = v0[1];
  v3 = v0[3];
  *(v1 - 104) = v0[2];
  *(v1 - 96) = v2;
  v4 = v0[5];
  *(v1 - 120) = v0[4];
  *(v1 - 112) = v3;
  v5 = v0[7];
  *(v1 - 136) = v0[6];
  *(v1 - 128) = v4;
  v6 = v0[9];
  *(v1 - 152) = v0[8];
  *(v1 - 144) = v5;
  *(v1 - 168) = v0[10];
  *(v1 - 160) = v6;
}

uint64_t OUTLINED_FUNCTION_59_3()
{

  return sub_1C960A590(v1, v0);
}

uint64_t OUTLINED_FUNCTION_47_2()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_47_3()
{
}

void OUTLINED_FUNCTION_47_4(uint64_t a1)
{
  *(v2 + 160) = a1;
}

uint64_t sub_1C948CB7C(uint64_t a1)
{
  if (*(a1 + 136))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t OUTLINED_FUNCTION_61_0()
{

  return sub_1C96A5514();
}

uint64_t OUTLINED_FUNCTION_61_2()
{

  return sub_1C96A53C4();
}

uint64_t sub_1C948CBE4(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_58();
  v4(v3);
  OUTLINED_FUNCTION_6();
  v5 = OUTLINED_FUNCTION_11();
  v6(v5);
  return a2;
}

uint64_t sub_1C948CC3C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C948CC9C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_6();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C948CCF4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_6();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C948CD4C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_6();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C948CDA4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_6();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1C948CE18(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_58();
  result = sub_1C96A4A54();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = v4;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(v4 + *(a4 + 48)) = (a2 - 1);
      return result;
    }

    v9 = type metadata accessor for LocationsConfiguration();
    v10 = v4 + *(a4 + 64);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_1C948CEF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_58();
  v6 = sub_1C96A4A54();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = v3;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v7 = type metadata accessor for LocationsConfiguration();
    v8 = v3 + *(a3 + 64);
    goto LABEL_8;
  }

  v9 = *(v3 + *(a3 + 48));
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_1C948CFC0()
{
  v1 = sub_1C96A4F24();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_3_16();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_14();
  (*(v8 + 104))(v7 - v6, *MEMORY[0x1E69D6EA0]);
  (*(v3 + 104))(v0, *MEMORY[0x1E69D6E88], v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4BD0);
  swift_allocObject();
  result = OUTLINED_FUNCTION_4_19();
  qword_1EDB7FCC0 = result;
  return result;
}

void *sub_1C948D170@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1C9488A58(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1C948D1B0()
{
  result = qword_1EDB7BA08;
  if (!qword_1EDB7BA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7BA08);
  }

  return result;
}

unint64_t sub_1C948D208()
{
  result = qword_1EDB7BA18;
  if (!qword_1EDB7BA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7BA18);
  }

  return result;
}

uint64_t LocationOfInterest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29[0] = a2;
  type metadata accessor for Location();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v4);
  v6 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A8328);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v7);
  v31 = type metadata accessor for LocationOfInterest();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[3];
  v30 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_1C948D6F4();
  sub_1C96A7F44();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v30);
  }

  v37 = 0;
  sub_1C9488E8C();
  sub_1C96A7CB4();
  v12 = v10;
  *v10 = v38;
  v36 = 1;
  OUTLINED_FUNCTION_2_78();
  sub_1C948934C(v13, v14);
  sub_1C96A7CB4();
  v15 = v31;
  sub_1C94898C4(v6, v12 + *(v31 + 20));
  v35 = 2;
  OUTLINED_FUNCTION_5_54();
  *(v12 + v15[6]) = sub_1C96A7C94() & 1;
  v34 = 3;
  OUTLINED_FUNCTION_5_54();
  v16 = sub_1C96A7C44();
  v17 = (v12 + v15[7]);
  *v17 = v16;
  v17[1] = v18;
  v33 = 4;
  OUTLINED_FUNCTION_5_54();
  v19 = sub_1C96A7C44();
  v20 = (v12 + v15[8]);
  *v20 = v19;
  v20[1] = v21;
  v32 = 5;
  OUTLINED_FUNCTION_5_54();
  v22 = sub_1C96A7C84();
  v24 = v23;
  v25 = OUTLINED_FUNCTION_1_81();
  v26(v25);
  v27 = (v12 + v15[9]);
  *v27 = v22;
  v27[1] = v24;
  sub_1C9489BB0(v12, v29[0], type metadata accessor for LocationOfInterest);
  __swift_destroy_boxed_opaque_existential_1Tm(v30);
  return sub_1C948EB4C(v12, type metadata accessor for LocationOfInterest);
}

unint64_t sub_1C948D6A0()
{
  result = qword_1EDB7C328;
  if (!qword_1EDB7C328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7C328);
  }

  return result;
}

unint64_t sub_1C948D6F4()
{
  result = qword_1EDB7C330;
  if (!qword_1EDB7C330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7C330);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LocationOfInterest.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1C948D81CLL);
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

uint64_t LocationOfInterestType.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v42 = a2;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A8308);
  OUTLINED_FUNCTION_1();
  v41 = v3;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v4);
  v6 = v37 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A8310);
  OUTLINED_FUNCTION_1();
  v40 = v8;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v37 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A8318);
  OUTLINED_FUNCTION_1();
  v43 = v13;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v14);
  v16 = v37 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C948920C();
  v17 = v45;
  sub_1C96A7F44();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v38 = v7;
  v39 = v11;
  v45 = a1;
  v18 = v44;
  v19 = sub_1C96A7CC4();
  result = sub_1C9489288(v19, 0);
  if (v22 == v23 >> 1)
  {
    v44 = result;
LABEL_9:
    v33 = sub_1C96A7AE4();
    swift_allocError();
    v35 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5A78);
    *v35 = &type metadata for LocationOfInterestType;
    sub_1C96A7C14();
    sub_1C96A7AD4();
    (*(*(v33 - 8) + 104))(v35, *MEMORY[0x1E69E6AF8], v33);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v43 + 8))(v16, v12);
    a1 = v45;
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v37[1] = 0;
  if (v22 >= (v23 >> 1))
  {
    __break(1u);
  }

  else
  {
    v24 = *(v21 + v22);
    v25 = sub_1C9489290(v22 + 1);
    v27 = v26;
    v29 = v28;
    swift_unknownObjectRelease();
    if (v27 != v29 >> 1)
    {
      v44 = v25;
      goto LABEL_9;
    }

    v46 = v24;
    if (v24)
    {
      v48 = 1;
      sub_1C9685094();
      v30 = v6;
      OUTLINED_FUNCTION_10_47();
      v31 = v42;
      v32 = v43;
      swift_unknownObjectRelease();
      (*(v41 + 8))(v30, v18);
    }

    else
    {
      v47 = 0;
      sub_1C948DDC8();
      v36 = v39;
      OUTLINED_FUNCTION_10_47();
      v31 = v42;
      v32 = v43;
      swift_unknownObjectRelease();
      (*(v40 + 8))(v36, v38);
    }

    (*(v32 + 8))(v16, v27);
    *v31 = v46;
    return __swift_destroy_boxed_opaque_existential_1Tm(v45);
  }

  return result;
}

uint64_t sub_1C948DCC0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701670760 && a2 == 0xE400000000000000;
  if (v3 || (sub_1C96A7DE4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1802661751 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C96A7DE4();

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

void sub_1C948DD90(uint64_t a1, uint64_t a2)
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
    OUTLINED_FUNCTION_31_3();
    return;
  }

LABEL_9:
  __break(1u);
}

unint64_t sub_1C948DDC8()
{
  result = qword_1EDB7BDC8;
  if (!qword_1EDB7BDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7BDC8);
  }

  return result;
}

_BYTE *sub_1C948DE24(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1C948DEF0);
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

uint64_t Location.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430);
  OUTLINED_FUNCTION_7(v3);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_90();
  v56 = v5;
  v6 = sub_1C96A4DF4();
  OUTLINED_FUNCTION_1();
  v57 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_14();
  v11 = v10 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A71B0);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4_42();
  v13 = type metadata accessor for Location();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_14();
  v17 = v16 - v15;
  *(v16 - v15 + *(v18 + 44)) = 0;
  v19 = a1[3];
  v64 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_1C94893C0();
  sub_1C96A7F44();
  if (v58)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v64);
  }

  v54 = v6;
  v59 = v13;
  v20 = sub_1C96A7C84();
  v22 = v21;
  v23 = v20;
  v53 = sub_1C96A7C84();
  v25 = v24;
  type metadata accessor for CLLocationCoordinate2D(0);
  LOBYTE(__dst) = 2;
  OUTLINED_FUNCTION_13_37();
  sub_1C948E788(v26, v27);
  sub_1C96A7CB4();
  v29 = v62;
  v30 = v63;
  __dst = v23;
  v61 = v22;
  swift_bridgeObjectRetain_n();
  sub_1C96A53C4();
  v31 = OUTLINED_FUNCTION_43_13();
  MEMORY[0x1CCA8CB00](v31);
  MEMORY[0x1CCA8CB00](v53, v25);

  if (v23 == 0x746E6572727563 && v22 == 0xE700000000000000)
  {

    v33 = 1;
  }

  else
  {
    v33 = sub_1C96A7DE4();
  }

  *v17 = v23;
  *(v17 + 8) = v22;
  *(v17 + 16) = v53;
  *(v17 + 24) = v25;
  *(v17 + 32) = v29;
  *(v17 + 40) = v30;
  *(v17 + 48) = v33 & 1;
  *(v17 + 56) = v23;
  *(v17 + 64) = v22;
  LOBYTE(__dst) = 3;
  OUTLINED_FUNCTION_12_31();
  sub_1C948E788(v34, v35);
  sub_1C96A7CB4();
  (*(v57 + 32))(v17 + v59[5], v11, v54);
  sub_1C96A4A54();
  LOBYTE(__dst) = 4;
  OUTLINED_FUNCTION_17_30();
  sub_1C948E788(v36, v37);
  OUTLINED_FUNCTION_45();
  sub_1C96A7C74();
  sub_1C948E818(v56, v17 + v59[6]);
  v38 = OUTLINED_FUNCTION_6_46(5);
  v39 = (v17 + v59[7]);
  *v39 = v38;
  v39[1] = v40;
  v41 = OUTLINED_FUNCTION_6_46(6);
  v42 = (v17 + v59[8]);
  *v42 = v41;
  v42[1] = v43;
  v44 = OUTLINED_FUNCTION_6_46(7);
  v45 = (v17 + v59[9]);
  *v45 = v44;
  v45[1] = v46;
  v47 = OUTLINED_FUNCTION_6_46(8);
  v49 = v48;
  v50 = OUTLINED_FUNCTION_1_61();
  v51(v50);
  v52 = (v17 + v59[10]);
  *v52 = v47;
  v52[1] = v49;
  sub_1C9489760(v17, a2);
  __swift_destroy_boxed_opaque_existential_1Tm(v64);
  return sub_1C948986C(v17, type metadata accessor for Location);
}

unint64_t sub_1C948E660()
{
  result = qword_1EDB7D0C0;
  if (!qword_1EDB7D0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7D0C0);
  }

  return result;
}

unint64_t sub_1C948E6B8()
{
  result = qword_1EDB7D0C8;
  if (!qword_1EDB7D0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7D0C8);
  }

  return result;
}

void sub_1C948E73C(uint64_t a1, unint64_t *a2)
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

uint64_t sub_1C948E788(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C948E7D0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C948E818(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C948E888(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_6();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C948E8E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C948E940(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_6();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C948E998()
{
  v1 = OUTLINED_FUNCTION_28_4();
  v2(v1);
  OUTLINED_FUNCTION_6();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_1C948E9EC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_6();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C948EA44(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_6();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C948EA9C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_6();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C948EAF4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_6();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C948EB4C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_6();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C948EBA4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_6();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t LocationsOfInterestManager.setupLocationsOfInterestPushing(nanoPreferencesSynchronizer:)()
{
  OUTLINED_FUNCTION_0_19();
  if (qword_1EDB77E58 != -1)
  {
    swift_once();
  }

  v1 = sub_1C96A6154();
  __swift_project_value_buffer(v1, qword_1EDB77E60);
  v2 = sub_1C96A6134();
  v3 = sub_1C96A76A4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1C945E000, v2, v3, "Setup locations of interest synchronization", v4, 2u);
    MEMORY[0x1CCA8E3D0](v4, -1, -1);
  }

  sub_1C9469B6C(v0, v16);
  if (qword_1EDB80350 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = qword_1EDB80358;
  v6 = type metadata accessor for LocationsOfInterestSyncManager();
  v7 = swift_allocObject();
  v8 = qword_1EDB78E58;
  v9 = v5;
  if (v8 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5258);
  swift_allocObject();
  sub_1C96A3D04();
  v7[17] = sub_1C96A4F14();
  sub_1C9469B6C(v16, (v7 + 12));
  v10 = sub_1C9488740(v9, v7);
  sub_1C9490208();

  __swift_destroy_boxed_opaque_existential_1Tm(v16);
  sub_1C948A088();
  v11 = v17;
  v12 = v18;
  __swift_project_boxed_opaque_existential_1(v16, v17);
  v13 = (v12[1])(v11, v12);
  __swift_destroy_boxed_opaque_existential_1Tm(v16);
  v17 = v6;
  v18 = &off_1F4900998;
  v16[0] = v10;
  swift_beginAccess();
  sub_1C9469B6C(v16, &v15);
  sub_1C96A3D04();
  sub_1C96A3D04();
  sub_1C96A55E4();

  __swift_destroy_boxed_opaque_existential_1Tm(v16);
  v17 = v6;
  v18 = &off_1F490AB08;
  v16[0] = v10;
  sub_1C96A3D04();
  sub_1C948A180(v16);
  sub_1C948F004(v13);

  sub_1C948F050();
  sub_1C96A50F4();
}

uint64_t sub_1C948EF44()
{
  v0 = sub_1C96A6154();
  __swift_allocate_value_buffer(v0, qword_1EDB77E60);
  OUTLINED_FUNCTION_2_19();
  OUTLINED_FUNCTION_2_61();
  OUTLINED_FUNCTION_4_57();
  return sub_1C96A6144();
}

uint64_t sub_1C948EFC4()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 32);

  return v0;
}

uint64_t sub_1C948F004(uint64_t a1)
{
  sub_1C96A50E4();
  *(v1 + 72) = a1;

  sub_1C96A53C4();
  return sub_1C96A50F4();
}

uint64_t sub_1C948F050()
{
  v0 = sub_1C96A53C4();
  sub_1C948A1D4(v0);
}

uint64_t sub_1C948F090(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_6();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C948F0F0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_6();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C948F150(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_6();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_1C948F1A8()
{
  OUTLINED_FUNCTION_19_3();
  if ((v4 & 1) == 0 || (OUTLINED_FUNCTION_8_7(), v5 == v6))
  {
LABEL_6:
    OUTLINED_FUNCTION_6_5();
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4C60);
      v7 = OUTLINED_FUNCTION_24_1();
      _swift_stdlib_malloc_size(v7);
      OUTLINED_FUNCTION_11_2();
      v7[2] = v2;
      v7[3] = v8;
      if (v1)
      {
LABEL_8:
        v9 = OUTLINED_FUNCTION_9_4();
        sub_1C94B9454(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4C68);
    OUTLINED_FUNCTION_13_2();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_18_5();
  if (!v5)
  {
    OUTLINED_FUNCTION_7_6();
    goto LABEL_6;
  }

  __break(1u);
}

void static Location.london.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F60);
  OUTLINED_FUNCTION_7(v0);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_7_12();
  sub_1C96A4D64();
  v2 = sub_1C96A4DF4();
  OUTLINED_FUNCTION_0_1(v2);
  if (v3)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_8_12(0x6E6F646E6F4CLL, 51.5073219, -0.1276474);
  }
}

void static Location.seoul.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F60);
  OUTLINED_FUNCTION_7(v0);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_1_22();
  sub_1C96A4D64();
  v2 = sub_1C96A4DF4();
  OUTLINED_FUNCTION_0_1(v2);
  if (v3)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_6_15(0x6C756F6553, 35.9078, 127.7669);
  }
}

void static Location.tokyo.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F60);
  OUTLINED_FUNCTION_7(v0);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_1_22();
  OUTLINED_FUNCTION_12_12();
  v2 = sub_1C96A4DF4();
  OUTLINED_FUNCTION_0_1(v2);
  if (v3)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_6_15(0x6F796B6F54, 35.6804, 139.769);
  }
}

void static Location.moscow.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F60);
  OUTLINED_FUNCTION_7(v0);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_7_12();
  sub_1C96A4D64();
  v2 = sub_1C96A4DF4();
  OUTLINED_FUNCTION_0_1(v2);
  if (v3)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_8_12(0x776F63736F4DLL, 55.7558, 37.6173);
  }
}

unint64_t sub_1C948F544()
{
  result = qword_1EDB7FC18;
  if (!qword_1EDB7FC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7FC18);
  }

  return result;
}

uint64_t sub_1C948F598()
{
  v0 = sub_1C96A4F34();
  OUTLINED_FUNCTION_1();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_14();
  v6 = v5 - v4;
  sub_1C96A4F24();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_14();
  (*(v10 + 104))(v9 - v8, *MEMORY[0x1E69D6E88]);
  (*(v2 + 104))(v6, *MEMORY[0x1E69D6EA0], v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5F20);
  swift_allocObject();
  result = sub_1C96A4F74();
  qword_1EDB78E60 = result;
  return result;
}

void static Location.cairo.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F60);
  OUTLINED_FUNCTION_7(v0);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_10_9();
  OUTLINED_FUNCTION_11_10();
  v2 = sub_1C96A4DF4();
  OUTLINED_FUNCTION_0_1(v2);
  if (v3)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_6_15(0x6F72696143, 30.04442, 31.235712);
  }
}

void static Location.bangkok.getter(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F60);
  OUTLINED_FUNCTION_7(v3);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1_22();
  OUTLINED_FUNCTION_11_10();
  v5 = sub_1C96A4DF4();
  OUTLINED_FUNCTION_0_1(v5);
  if (v6)
  {
    __break(1u);
  }

  else
  {
    sub_1C95447DC(0x6B6F6B676E6142, 0xE700000000000000, v1, a1, 13.75, 100.5167);
  }
}

void static Location.istanbul.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F60);
  OUTLINED_FUNCTION_7(v0);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_7_12();
  sub_1C96A4D64();
  v2 = sub_1C96A4DF4();
  OUTLINED_FUNCTION_0_1(v2);
  if (v3)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_9_13(0x6C75626E61747349, 41.01, 28.9603);
  }
}

void static Location.osaka.getter(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F60);
  OUTLINED_FUNCTION_7(v3);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1_22();
  OUTLINED_FUNCTION_12_12();
  v5 = sub_1C96A4DF4();
  OUTLINED_FUNCTION_0_1(v5);
  if (v6)
  {
    __break(1u);
  }

  else
  {
    sub_1C95447DC(0x616B61738CC5, 0xA600000000000000, v1, a1, 34.6936, 135.5019);
  }
}

void static Location.karachi.getter(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F60);
  OUTLINED_FUNCTION_7(v3);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1_22();
  OUTLINED_FUNCTION_11_10();
  v5 = sub_1C96A4DF4();
  OUTLINED_FUNCTION_0_1(v5);
  if (v6)
  {
    __break(1u);
  }

  else
  {
    sub_1C95447DC(0x6968636172614BLL, 0xE700000000000000, v1, a1, 24.86, 67.01);
  }
}

void static Location.paris.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F60);
  OUTLINED_FUNCTION_7(v0);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_2_20();
  sub_1C96A4D64();
  v2 = sub_1C96A4DF4();
  OUTLINED_FUNCTION_0_1(v2);
  if (v3)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_6_15(0x7369726150, -48.8566, 2.3522);
  }
}

unint64_t sub_1C948FB54()
{
  result = qword_1EDB7D4A0;
  if (!qword_1EDB7D4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7D4A0);
  }

  return result;
}

uint64_t ProviderAttributionConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7CF8);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v20 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C94817D4();
  sub_1C96A7F44();
  if (!v2)
  {
    LOBYTE(v22) = 0;
    sub_1C96A7C24();
    v11 = v25;
    v21 = v24;
    v27 = 1;
    sub_1C96A7C24();
    v12 = v23;
    v20 = v22;
    v26 = 2;
    sub_1C96A7C24();
    v13 = v27;
    v14 = 0x80000001C96CC960;
    v15 = v7;
    if (v11)
    {
      v16 = v21;
    }

    else
    {
      v16 = 0xD000000000000022;
    }

    if (v11)
    {
      v14 = v11;
    }

    v21 = v14;
    if (v12)
    {
      v17 = v20;
    }

    else
    {
      v17 = 0xD000000000000035;
    }

    if (!v12)
    {
      v12 = 0x80000001C96D2630;
    }

    (*(v15 + 8))(v10, v5);
    v18 = v21;
    *a2 = v16;
    *(a2 + 8) = v18;
    *(a2 + 16) = v17;
    *(a2 + 24) = v12;
    *(a2 + 32) = (v13 == 2) | v13 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

void TemperatureScaleConfiguration.Gradient.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_119();
  v13 = v12;
  v15 = v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A68B8);
  OUTLINED_FUNCTION_1();
  v18 = v17;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_4_42();
  OUTLINED_FUNCTION_6_38(v13);
  sub_1C9481A9C();
  OUTLINED_FUNCTION_69_0();
  sub_1C96A7F44();
  if (!v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A68B0);
    sub_1C9481AFC(&qword_1EDB7CEA8, sub_1C947B870);
    sub_1C96A7CB4();
    (*(v18 + 8))(v11, v16);
    *v15 = a10;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v13);
  OUTLINED_FUNCTION_118();
}

uint64_t TemperatureScaleConfiguration.ColorStop.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A68A0);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_6_38(a1);
  sub_1C948B638();
  OUTLINED_FUNCTION_69_0();
  sub_1C96A7F44();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v6 = sub_1C96A7C84();
  v8 = v7;
  sub_1C96A7CA4();
  v10 = v9;
  v11 = OUTLINED_FUNCTION_3_30();
  v12(v11);
  *a2 = v6;
  a2[1] = v8;
  a2[2] = v10;
  sub_1C96A53C4();
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_1C9490164()
{
  result = qword_1EDB7FBA0;
  if (!qword_1EDB7FBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7FBA0);
  }

  return result;
}

uint64_t sub_1C94901B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C95AE7D4(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C9490208()
{
  v1 = sub_1C96A6EB4();
  MEMORY[0x1EEE9AC00](v1 - 8);
  OUTLINED_FUNCTION_14();
  v19 = *(v0 + 80);
  sub_1C96A5134();
  sub_1C96A3D04();
  sub_1C96A5554();

  v17 = &type metadata for StoredLocationsOfInterest;
  v18 = sub_1C94904A0();
  sub_1C9486BC4(&v15);
  __swift_destroy_boxed_opaque_existential_1Tm(&v15);
  v2 = sub_1C9487768();
  v4 = v3;
  v5 = sub_1C96A4844();
  v7 = v6;
  sub_1C9482F3C(v2, v4);
  sub_1C96A3D04();
  sub_1C96A4EF4();

  if (v15 == v5 && v16 == v7)
  {
  }

  v9 = sub_1C96A7DE4();

  if (v9)
  {
  }

  if (qword_1EDB77E58 != -1)
  {
    swift_once();
  }

  v11 = sub_1C96A6154();
  __swift_project_value_buffer(v11, qword_1EDB77E60);
  v12 = sub_1C96A6134();
  v13 = sub_1C96A76A4();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1C945E000, v12, v13, "Watch location of interest out of sync - force sync to watch", v14, 2u);
    MEMORY[0x1CCA8E3D0](v14, -1, -1);
  }

  sub_1C9669F0C();
  v15 = v5;
  v16 = v7;
  sub_1C96A3D04();
  sub_1C96A4F04();
}

unint64_t sub_1C94904A0()
{
  result = qword_1EDB79450;
  if (!qword_1EDB79450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB79450);
  }

  return result;
}

uint64_t sub_1C94904F4(void *a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6F40);
  OUTLINED_FUNCTION_1_2();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C948D208();
  sub_1C96A7F54();
  v11[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5248);
  sub_1C9488C9C(&qword_1EDB77D40, &qword_1EDB79958);
  sub_1C96A7D74();
  return (*(v6 + 8))(v9, v2);
}

uint64_t LocationOfInterestType.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A82E8);
  OUTLINED_FUNCTION_1();
  v25 = v4;
  v26 = v3;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v5);
  v24 = &v22 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A82F0);
  OUTLINED_FUNCTION_1();
  v22 = v8;
  v23 = v7;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A82F8);
  OUTLINED_FUNCTION_1();
  v14 = v13;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v22 - v16;
  v18 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C948920C();
  sub_1C96A7F54();
  v19 = (v14 + 8);
  if (v18)
  {
    v28 = 1;
    sub_1C9685094();
    v20 = v24;
    sub_1C96A7CD4();
    (*(v25 + 8))(v20, v26);
  }

  else
  {
    v27 = 0;
    sub_1C948DDC8();
    sub_1C96A7CD4();
    (*(v22 + 8))(v11, v23);
  }

  return (*v19)(v17, v12);
}

uint64_t Location.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A71B8);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C94893C0();
  sub_1C96A7F54();
  LOBYTE(v17) = 0;
  OUTLINED_FUNCTION_0_0();
  sub_1C96A7D24();
  if (!v2)
  {
    LOBYTE(v17) = 1;
    OUTLINED_FUNCTION_0_0();
    sub_1C96A7D24();
    v17 = *(v3 + 32);
    v18 = 2;
    type metadata accessor for CLLocationCoordinate2D(0);
    OUTLINED_FUNCTION_13_37();
    sub_1C948E788(v11, v12);
    OUTLINED_FUNCTION_45();
    OUTLINED_FUNCTION_0_0();
    sub_1C96A7D74();
    v13 = type metadata accessor for Location();
    LOBYTE(v17) = 3;
    sub_1C96A4DF4();
    OUTLINED_FUNCTION_12_31();
    sub_1C948E788(v14, v15);
    OUTLINED_FUNCTION_45();
    OUTLINED_FUNCTION_0_0();
    sub_1C96A7D74();
    LOBYTE(v17) = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430);
    sub_1C9489F58();
    OUTLINED_FUNCTION_45();
    OUTLINED_FUNCTION_0_0();
    sub_1C96A7D74();
    OUTLINED_FUNCTION_42_11(v13[7]);
    v18 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A6430);
    sub_1C948A00C();
    OUTLINED_FUNCTION_4_55();
    OUTLINED_FUNCTION_42_11(v13[8]);
    v18 = 6;
    OUTLINED_FUNCTION_4_55();
    OUTLINED_FUNCTION_42_11(v13[9]);
    v18 = 7;
    OUTLINED_FUNCTION_4_55();
    OUTLINED_FUNCTION_42_11(v13[10]);
    v18 = 8;
    OUTLINED_FUNCTION_4_55();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_1C9490C28()
{
  sub_1C948EFC4();

  return MEMORY[0x1EEE6BDC0](v0, 96, 7);
}

uint64_t sub_1C9490C5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    sub_1C96A4204();
    swift_allocObject();
    sub_1C96A41F4();
    sub_1C94904A0();
    v10 = sub_1C96A41E4();
    v12 = v11;

    v14[0] = v10;
    v14[1] = v12;
    (*(a5 + 16))(v14, a2, a3, MEMORY[0x1E6969080], a4, a5);
    return sub_1C9482F3C(v10, v12);
  }

  else
  {
    v9 = *(a5 + 24);

    return v9(a2, a3, a4, a5);
  }
}

void sub_1C9490DB8()
{
  OUTLINED_FUNCTION_103();
  OUTLINED_FUNCTION_11_14();
  v4 = type metadata accessor for LocationOfInterest();
  OUTLINED_FUNCTION_2_25();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_18();
  OUTLINED_FUNCTION_17_14();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_10_13();
  v7 = *(v2 + 16);
  if (v7 == *(v3 + 16) && v7 && v2 != v3)
  {
    OUTLINED_FUNCTION_3_15();
    v9 = v2 + v8;
    v10 = v3 + v8;
    v12 = *(v11 + 72);
    while (1)
    {
      sub_1C948F090(v9, v1, type metadata accessor for LocationOfInterest);
      sub_1C948F090(v10, v0, type metadata accessor for LocationOfInterest);
      if (*v1 != *v0 || (static Location.== infix(_:_:)(&v1[v4[5]], &v0[v4[5]]) & 1) == 0 || v1[v4[6]] != v0[v4[6]])
      {
        break;
      }

      OUTLINED_FUNCTION_20_2();
      if (v13)
      {
        if (!v14)
        {
          break;
        }

        v17 = *v15 == *v16 && v13 == v14;
        if (!v17 && (sub_1C96A7DE4() & 1) == 0)
        {
          break;
        }
      }

      else if (v14)
      {
        break;
      }

      OUTLINED_FUNCTION_20_2();
      if (v18)
      {
        if (!v19)
        {
          break;
        }

        v22 = *v20 == *v21 && v18 == v19;
        if (!v22 && (sub_1C96A7DE4() & 1) == 0)
        {
          break;
        }
      }

      else if (v19)
      {
        break;
      }

      v23 = v4[9];
      v24 = *&v1[v23];
      v25 = *&v1[v23 + 8];
      v26 = &v0[v23];
      if (v24 == *v26 && v25 == *(v26 + 1))
      {
        sub_1C948F150(v0, type metadata accessor for LocationOfInterest);
        sub_1C948F150(v1, type metadata accessor for LocationOfInterest);
      }

      else
      {
        v28 = sub_1C96A7DE4();
        sub_1C948F150(v0, type metadata accessor for LocationOfInterest);
        sub_1C948F150(v1, type metadata accessor for LocationOfInterest);
        if ((v28 & 1) == 0)
        {
          goto LABEL_37;
        }
      }

      v10 += v12;
      v9 += v12;
      if (!--v7)
      {
        goto LABEL_37;
      }
    }

    sub_1C948F150(v0, type metadata accessor for LocationOfInterest);
    OUTLINED_FUNCTION_14_13();
  }

LABEL_37:
  OUTLINED_FUNCTION_101();
}

uint64_t sub_1C9491050@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5020);
  result = sub_1C96A5274();
  if (v10)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5070);
    result = sub_1C96A5274();
    if (v8)
    {
      v5 = type metadata accessor for IdentityRotationManager();
      v6 = swift_allocObject();
      sub_1C94670AC(&v9, v6 + 56);
      result = sub_1C94670AC(&v7, v6 + 16);
      a2[3] = v5;
      a2[4] = &off_1F4909EE0;
      *a2 = v6;
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

uint64_t StubPPTSavedLocationsManager.init()()
{
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  if (qword_1EC3A4828 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC3A79A8;
  swift_beginAccess();
  *(v0 + 16) = v1;
  sub_1C96A53C4();

  return v0;
}

uint64_t sub_1C9491200()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F60);
  v0 = (MEMORY[0x1EEE9AC00])();
  v71 = &v68 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v69 = &v68 - v3;
  v4 = MEMORY[0x1EEE9AC00](v2);
  v70 = &v68 - v5;
  v6 = MEMORY[0x1EEE9AC00](v4);
  v72 = &v68 - v7;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v82 = &v68 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v73 = &v68 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v74 = &v68 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v83 = &v68 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v75 = &v68 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v80 = &v68 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v76 = &v68 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v77 = &v68 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v79 = &v68 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v78 = &v68 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v81 = &v68 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v32 = &v68 - v31;
  v33 = MEMORY[0x1EEE9AC00](v30);
  v35 = &v68 - v34;
  v36 = MEMORY[0x1EEE9AC00](v33);
  v38 = &v68 - v37;
  v39 = MEMORY[0x1EEE9AC00](v36);
  v41 = &v68 - v40;
  MEMORY[0x1EEE9AC00](v39);
  v43 = &v68 - v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4CC0);
  v44 = *(type metadata accessor for SavedLocation() - 8);
  v45 = *(v44 + 72);
  v46 = (*(v44 + 80) + 32) & ~*(v44 + 80);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_1C96C0F70;
  sub_1C96A4D64();
  v48 = sub_1C96A4DF4();
  result = __swift_getEnumTagSinglePayload(v43, 1, v48);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_23;
  }

  v68 = v47;
  v50 = v47 + v46;
  sub_1C95447DC(0x6E69747265707543, 0xE90000000000006FLL, v43, v50, 37.323, -122.0);
  swift_storeEnumTagMultiPayload();
  sub_1C96A4D64();
  result = __swift_getEnumTagSinglePayload(v41, 1, v48);
  if (result == 1)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  sub_1C95447DC(0x6B726F592077654ELL, 0xE800000000000000, v41, v50 + v45, 40.712982, -74.007205);
  swift_storeEnumTagMultiPayload();
  sub_1C96A4D64();
  result = __swift_getEnumTagSinglePayload(v38, 1, v48);
  v51 = v83;
  if (result == 1)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  sub_1C95447DC(0x6E6F646E6F4CLL, 0xE600000000000000, v38, v50 + 2 * v45, 51.5073219, -0.1276474);
  swift_storeEnumTagMultiPayload();
  sub_1C96A4D64();
  result = __swift_getEnumTagSinglePayload(v35, 1, v48);
  if (result == 1)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  sub_1C95447DC(0x6164726574736D41, 0xE90000000000006DLL, v35, v50 + 3 * v45, 52.3727598, 4.8936041);
  swift_storeEnumTagMultiPayload();
  sub_1C96A4D64();
  result = __swift_getEnumTagSinglePayload(v32, 1, v48);
  v52 = v82;
  if (result == 1)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  sub_1C95447DC(0x6E6177696154, 0xE600000000000000, v32, v50 + 4 * v45, 25.011997, 121.465662);
  swift_storeEnumTagMultiPayload();
  v53 = v81;
  sub_1C96A4D64();
  result = __swift_getEnumTagSinglePayload(v53, 1, v48);
  if (result == 1)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  sub_1C95447DC(0x6C756F6553, 0xE500000000000000, v53, v50 + 5 * v45, 35.9078, 127.7669);
  swift_storeEnumTagMultiPayload();
  v54 = v78;
  sub_1C96A4D64();
  result = __swift_getEnumTagSinglePayload(v54, 1, v48);
  v55 = v79;
  v56 = v80;
  if (result == 1)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  sub_1C95447DC(0x6F796B6F54, 0xE500000000000000, v54, v50 + 6 * v45, 35.6804, 139.769);
  swift_storeEnumTagMultiPayload();
  sub_1C96A4D64();
  result = __swift_getEnumTagSinglePayload(v55, 1, v48);
  if (result == 1)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v57 = v52;
  sub_1C95447DC(0x646E616C6B637541, 0xE800000000000000, v55, v50 - v45 + 8 * v45, -36.8509, 174.7645);
  swift_storeEnumTagMultiPayload();
  v58 = v77;
  sub_1C96A4D64();
  result = __swift_getEnumTagSinglePayload(v58, 1, v48);
  if (result == 1)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  sub_1C95447DC(0x6F676169746E6153, 0xE800000000000000, v58, v50 + 8 * v45, -33.4489, -70.6693);
  swift_storeEnumTagMultiPayload();
  v59 = v76;
  sub_1C96A4D64();
  result = __swift_getEnumTagSinglePayload(v59, 1, v48);
  if (result == 1)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  sub_1C95447DC(0x736F67614CLL, 0xE500000000000000, v59, v50 + 9 * v45, 6.5244, 3.3792);
  swift_storeEnumTagMultiPayload();
  sub_1C96A4D64();
  result = __swift_getEnumTagSinglePayload(v56, 1, v48);
  if (result == 1)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  sub_1C95447DC(0x776F63736F4DLL, 0xE600000000000000, v56, v50 + 10 * v45, 55.7558, 37.6173);
  swift_storeEnumTagMultiPayload();
  v60 = v75;
  sub_1C96A4D64();
  result = __swift_getEnumTagSinglePayload(v60, 1, v48);
  if (result == 1)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  sub_1C95447DC(0x756150206FA3C353, 0xAA00000000006F6CLL, v60, v50 + 11 * v45, -23.5505, -46.6333);
  swift_storeEnumTagMultiPayload();
  sub_1C96A4D64();
  result = __swift_getEnumTagSinglePayload(v51, 1, v48);
  if (result == 1)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  sub_1C95447DC(0x6961626D754DLL, 0xE600000000000000, v51, v50 + 12 * v45, 19.075983, 72.877655);
  swift_storeEnumTagMultiPayload();
  v61 = v74;
  sub_1C96A4D64();
  result = __swift_getEnumTagSinglePayload(v61, 1, v48);
  if (result == 1)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  sub_1C95447DC(0x6F72696143, 0xE500000000000000, v61, v50 + 13 * v45, 30.04442, 31.235712);
  swift_storeEnumTagMultiPayload();
  v62 = v73;
  sub_1C96A4D64();
  result = __swift_getEnumTagSinglePayload(v62, 1, v48);
  if (result == 1)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  sub_1C95447DC(0x6B6F6B676E6142, 0xE700000000000000, v62, v50 + 14 * v45, 13.75, 100.5167);
  swift_storeEnumTagMultiPayload();
  sub_1C96A4D64();
  result = __swift_getEnumTagSinglePayload(v57, 1, v48);
  if (result == 1)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  sub_1C95447DC(0x6C75626E61747349, 0xE800000000000000, v57, v50 - v45 + 16 * v45, 41.01, 28.9603);
  swift_storeEnumTagMultiPayload();
  v63 = v72;
  sub_1C96A4D64();
  result = __swift_getEnumTagSinglePayload(v63, 1, v48);
  if (result == 1)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  sub_1C95447DC(0x616B61738CC5, 0xA600000000000000, v63, v50 + 16 * v45, 34.6936, 135.5019);
  swift_storeEnumTagMultiPayload();
  v64 = v70;
  sub_1C96A4D64();
  result = __swift_getEnumTagSinglePayload(v64, 1, v48);
  v65 = v71;
  if (result == 1)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  sub_1C95447DC(0x6968636172614BLL, 0xE700000000000000, v64, v50 + 17 * v45, 24.86, 67.01);
  swift_storeEnumTagMultiPayload();
  v66 = v69;
  sub_1C96A4D64();
  result = __swift_getEnumTagSinglePayload(v66, 1, v48);
  if (result == 1)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  sub_1C95447DC(0x7369726150, 0xE500000000000000, v66, v50 + 18 * v45, -48.8566, 2.3522);
  swift_storeEnumTagMultiPayload();
  sub_1C96A4D64();
  result = __swift_getEnumTagSinglePayload(v65, 1, v48);
  v67 = v68;
  if (result != 1)
  {
    sub_1C95447DC(1634560332, 0xE400000000000000, v65, v50 + 19 * v45, -12.05, -77.0333);
    result = swift_storeEnumTagMultiPayload();
    qword_1EC3A79A8 = v67;
    return result;
  }

LABEL_41:
  __break(1u);
  return result;
}

void static Location.newYork.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F60);
  OUTLINED_FUNCTION_7(v0);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_3_12();
  OUTLINED_FUNCTION_13_8();
  v2 = sub_1C96A4DF4();
  OUTLINED_FUNCTION_0_1(v2);
  if (v3)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_9_13(0x6B726F592077654ELL, 40.712982, -74.007205);
  }
}

void static Location.amsterdam.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F60);
  OUTLINED_FUNCTION_7(v0);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_3_12();
  OUTLINED_FUNCTION_13_8();
  v2 = sub_1C96A4DF4();
  OUTLINED_FUNCTION_0_1(v2);
  if (v3)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_17_11(0x6164726574736D41, 52.3727598, 4.8936041);
  }
}

void static Location.taiwan.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F60);
  OUTLINED_FUNCTION_7(v0);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_1_22();
  sub_1C96A4D64();
  v2 = sub_1C96A4DF4();
  OUTLINED_FUNCTION_0_1(v2);
  if (v3)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_8_12(0x6E6177696154, 25.011997, 121.465662);
  }
}

void static Location.saoPaulo.getter(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F60);
  OUTLINED_FUNCTION_7(v3);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_3_12();
  sub_1C96A4D64();
  v5 = sub_1C96A4DF4();
  OUTLINED_FUNCTION_0_1(v5);
  if (v6)
  {
    __break(1u);
  }

  else
  {
    sub_1C95447DC(0x756150206FA3C353, 0xAA00000000006F6CLL, v1, a1, -23.5505, -46.6333);
  }
}

void static Location.lima.getter(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F60);
  OUTLINED_FUNCTION_7(v3);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_11_10();
  v5 = sub_1C96A4DF4();
  OUTLINED_FUNCTION_0_1(v5);
  if (v6)
  {
    __break(1u);
  }

  else
  {
    sub_1C95447DC(1634560332, 0xE400000000000000, v1, a1, -12.05, -77.0333);
  }
}

uint64_t sub_1C9492418(char a1, uint64_t a2, uint64_t a3)
{
  v8 = type metadata accessor for AppConfigurationLocationCoalescenceOptionsProvider();
  v9 = &protocol witness table for AppConfigurationLocationCoalescenceOptionsProvider;
  *&v7 = a2;
  sub_1C946B5D0(0, &unk_1EDB7CD20);
  *(a3 + 56) = sub_1C96A7904();
  *(a3 + 64) = a1;
  sub_1C94670AC(&v7, a3 + 16);
  return a3;
}

void sub_1C9492500(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C96A5254();
  if (v8 != 2 && (v8 & 1) != 0)
  {
    v4 = type metadata accessor for StubSyncedDataManager();
    swift_allocObject();
    v5 = sub_1C9573648();
    v6 = &off_1F4902980;
LABEL_7:
    a2[3] = v4;
    a2[4] = v6;
    *a2 = v5;
    return;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7D98);
  sub_1C96A5274();
  if (v9)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7DE0);
    sub_1C96A5274();
    if (v7)
    {
      v4 = type metadata accessor for SyncedDataManager();
      SyncedDataManager.__allocating_init(syncedDataContextProvider:savedLocationsReconciler:)();
      v6 = &protocol witness table for SyncedDataManager;
      goto LABEL_7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1C949268C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1C96A4DF4();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 20);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430);
      v10 = *(a4 + 24);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_1C9492774(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C96A4DF4();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 20);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430);
      v10 = *(a3 + 24);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

uint64_t sub_1C949284C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5088);
  result = sub_1C96A5274();
  if (v5[3])
  {
    v4 = type metadata accessor for SyncedDataContextProvider();
    swift_allocObject();
    result = sub_1C9493B90(v5);
    a2[3] = v4;
    a2[4] = &protocol witness table for SyncedDataContextProvider;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C94928F4@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A70);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v10 - v3;
  sub_1C946B5D0(0, &qword_1EDB7CD40);
  if (sub_1C96A7894())
  {
    v11 = 3;
    v5 = sub_1C96A4764();
    __swift_storeEnumTagSinglePayload(v4, 1, 1, v5);
    v6 = type metadata accessor for CoherenceContextProvider();
    swift_allocObject();
    v7 = &v11;
  }

  else
  {
    v12 = 0;
    v8 = sub_1C96A4764();
    __swift_storeEnumTagSinglePayload(v4, 1, 1, v8);
    v6 = type metadata accessor for CoherenceContextProvider();
    swift_allocObject();
    v7 = &v12;
  }

  result = sub_1C94A8C50(v7, v4, 0);
  a1[3] = v6;
  a1[4] = &off_1F4908FD8;
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for CoherenceContextProvider()
{
  result = qword_1EDB7DDA8;
  if (!qword_1EDB7DDA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C9492A84()
{
  result = sub_1C96A4764();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C9492B20(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A70);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25[-v9];
  v11 = sub_1C96A4764();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_24();
  v28 = v15;
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v25[-v18];
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v25[-v20];
  type metadata accessor for CoherenceFileMigrator();
  inited = swift_initStackObject();
  v29 = a2;
  sub_1C947F224(a2, v10);
  if (OUTLINED_FUNCTION_5_51(v10) == 1)
  {
    v26 = a3;
    if (qword_1EDB7BBB8 != -1)
    {
      OUTLINED_FUNCTION_2_65();
    }

    v22 = __swift_project_value_buffer(v7, qword_1EDB7BBC0);
    sub_1C96A4FD4();
    sub_1C96A4FB4();
    sub_1C96A4F94();

    OUTLINED_FUNCTION_4_61();
    sub_1C9493028(v22, v19, v21);

    (*(v13 + 8))(v19, v11);
    if (OUTLINED_FUNCTION_5_51(v10) != 1)
    {
      sub_1C9470AFC(v10, &qword_1EC3A4A70);
    }

    LOBYTE(a3) = v26;
  }

  else
  {
    (*(v13 + 32))(v21, v10, v11);
    OUTLINED_FUNCTION_4_61();
  }

  (*(v13 + 16))(v4 + OBJC_IVAR____TtC11WeatherCore24CoherenceContextProvider_containerURL, v21, v11);
  v23 = v28;
  sub_1C96A4704();

  sub_1C9470AFC(v29, &qword_1EC3A4A70);
  (*(v13 + 8))(v21, v11);
  (*(v13 + 32))(v4 + OBJC_IVAR____TtC11WeatherCore24CoherenceContextProvider_storageURL, v23, v11);
  *(v4 + OBJC_IVAR____TtC11WeatherCore24CoherenceContextProvider_useTransientContext) = a3 & 1;
  return v4;
}

uint64_t sub_1C9492EAC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A70);
  __swift_allocate_value_buffer(v0, qword_1EDB7BBC0);
  __swift_project_value_buffer(v0, qword_1EDB7BBC0);
  v1 = [objc_opt_self() defaultManager];
  v2 = [v1 URLsForDirectory:9 inDomains:1];

  sub_1C96A4764();
  sub_1C96A72A4();

  sub_1C9492F8C();
}

uint64_t sub_1C9492F8C()
{
  OUTLINED_FUNCTION_27_2();
  v3 = sub_1C96A4764();
  v4 = v3;
  if (v2)
  {
    (*(*(v3 - 8) + 16))(v0, v1 + ((*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80)), v3);
    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v0, v5, 1, v4);
}

uint64_t sub_1C9493028@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v116 = a3;
  v120[1] = *MEMORY[0x1E69E9840];
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A70);
  MEMORY[0x1EEE9AC00](v113);
  OUTLINED_FUNCTION_24();
  v112 = v5;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v6);
  v114 = &v104[-v7];
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v104[-v9];
  v11 = sub_1C96A4764();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_24();
  v111 = v13;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v14);
  v110 = &v104[-v15];
  OUTLINED_FUNCTION_12();
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v104[-v18];
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v104[-v21];
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v104[-v23];
  v25 = [objc_opt_self() defaultManager];
  v117 = v24;
  v118 = v25;
  v115 = a2;
  sub_1C96A4704();
  sub_1C947F224(a1, v10);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    sub_1C947F1BC(v10);
    if (qword_1EDB7D060 != -1)
    {
      OUTLINED_FUNCTION_0_54();
    }

    v26 = sub_1C96A6154();
    __swift_project_value_buffer(v26, qword_1EDB7D068);
    v27 = a1;
    v28 = v114;
    sub_1C947F224(v27, v114);
    v29 = sub_1C96A6134();
    v30 = sub_1C96A7684();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v120[0] = v32;
      *v31 = 141558275;
      *(v31 + 4) = 1752392040;
      *(v31 + 12) = 2081;
      sub_1C947F224(v28, v112);
      v33 = sub_1C96A70A4();
      v35 = v34;
      sub_1C947F1BC(v28);
      v36 = sub_1C9484164(v33, v35, v120);

      *(v31 + 14) = v36;
      _os_log_impl(&dword_1C945E000, v29, v30, "CoherenceContextFileMigrator: legacy folder not exist: %{private,mask.hash}s", v31, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v32);
      OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_26();
    }

    else
    {

      sub_1C947F1BC(v28);
    }

    (*(v12 + 1))(v117, v11);
    v45 = OUTLINED_FUNCTION_4_31();
    return v46(v45);
  }

  v114 = v12;
  v113 = *(v12 + 4);
  v113(v22, v10, v11);
  sub_1C96A4704();
  v37 = sub_1C96A4744();
  v39 = v38;
  if (v37 == sub_1C96A4744() && v39 == v40)
  {

    v44 = v114;
    v43 = v117;
    goto LABEL_15;
  }

  v42 = sub_1C96A7DE4();

  v43 = v117;
  if (v42)
  {

    v44 = v114;
LABEL_15:
    v48 = *(v44 + 1);
    (v48)(v19, v11);
    v49 = OUTLINED_FUNCTION_2_41();
    v48(v49);
    (v48)(v43, v11);
    v50 = OUTLINED_FUNCTION_4_31();
    return v51(v50);
  }

  v112 = v19;
  sub_1C96A4744();
  v52 = sub_1C96A7004();

  v53 = v118;
  v54 = [v118 fileExistsAtPath_];

  v55 = v114;
  if (v54 && (sub_1C96A4744(), v56 = sub_1C96A7004(), , v57 = [v53 fileExistsAtPath_], v56, (v57 & 1) == 0))
  {
    v109 = v22;
    if (qword_1EDB7D060 != -1)
    {
      OUTLINED_FUNCTION_0_54();
    }

    v62 = sub_1C96A6154();
    v63 = __swift_project_value_buffer(v62, qword_1EDB7D068);
    v64 = *(v55 + 2);
    v65 = v110;
    (v64)(v110, v112, v11);
    v66 = v111;
    v108 = v64;
    (v64)(v111, v43, v11);
    v107 = v63;
    v67 = sub_1C96A6134();
    v68 = sub_1C96A76A4();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = v66;
      v70 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      v120[0] = v106;
      *v70 = 141558787;
      *(v70 + 4) = 1752392040;
      *(v70 + 12) = 2081;
      v105 = v68;
      v71 = sub_1C96A4744();
      v73 = v72;
      v74 = v65;
      v75 = *(v114 + 1);
      (v75)(v74, v11);
      v76 = sub_1C9484164(v71, v73, v120);

      *(v70 + 14) = v76;
      *(v70 + 22) = 2160;
      *(v70 + 24) = 1752392040;
      *(v70 + 32) = 2081;
      v77 = sub_1C96A4744();
      v79 = v78;
      v111 = v75;
      (v75)(v69, v11);
      v80 = sub_1C9484164(v77, v79, v120);
      v43 = v117;

      *(v70 + 34) = v80;
      _os_log_impl(&dword_1C945E000, v67, v105, "CoherenceContextFileMigrator: Legacy file found at: %{private,mask.hash}s, migrate to new location: %{private,mask.hash}s", v70, 0x2Au);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_26();
    }

    else
    {

      v81 = *(v55 + 1);
      (v81)(v66, v11);
      v82 = OUTLINED_FUNCTION_2_41();
      v111 = v81;
      v81(v82);
    }

    v83 = sub_1C96A46E4();
    v84 = sub_1C96A46E4();
    v120[0] = 0;
    v85 = v118;
    v86 = [v118 moveItemAtURL:v83 toURL:v84 error:v120];

    if (v86)
    {
      v87 = v120[0];

      v88 = OUTLINED_FUNCTION_2_41();
      v89 = v111;
      v111(v88);
      v89(v109, v11);
      v89(v43, v11);
      v90 = OUTLINED_FUNCTION_4_31();
      return v108(v90);
    }

    else
    {
      v91 = v120[0];
      v92 = sub_1C96A4584();

      swift_willThrow();
      v93 = v92;
      v94 = sub_1C96A6134();
      v95 = sub_1C96A7684();

      if (os_log_type_enabled(v94, v95))
      {
        v96 = swift_slowAlloc();
        v97 = swift_slowAlloc();
        v120[0] = v97;
        *v96 = 136315138;
        v119 = v92;
        v98 = v92;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5380);
        v99 = sub_1C96A70A4();
        v101 = sub_1C9484164(v99, v100, v120);

        *(v96 + 4) = v101;
        _os_log_impl(&dword_1C945E000, v94, v95, "CoherenceContextFileMigrator: Failed to migrate legacy data file to new location: %s", v96, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v97);
        OUTLINED_FUNCTION_26();
        OUTLINED_FUNCTION_26();

        v102 = v111;
        (v111)(v112, v11);
        v103 = v117;
      }

      else
      {

        v102 = v111;
        (v111)(v112, v11);
        v103 = v43;
      }

      v102(v103, v11);
      return v113(v116, v109, v11);
    }
  }

  else
  {

    v58 = *(v55 + 1);
    (v58)(v112, v11);
    v59 = OUTLINED_FUNCTION_2_41();
    v58(v59);
    (v58)(v43, v11);
    v60 = OUTLINED_FUNCTION_4_31();
    return v61(v60);
  }
}

uint64_t type metadata accessor for SyncedDataContextProvider()
{
  result = qword_1EDB7DA60;
  if (!qword_1EDB7DA60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C9493AE8()
{
  result = sub_1C96A4764();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C9493B90(void *a1)
{
  v23 = sub_1C96A4764();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v21 - v10;
  v12 = sub_1C96A5114();
  MEMORY[0x1EEE9AC00](v12);
  v22 = OBJC_IVAR____TtC11WeatherCore25SyncedDataContextProvider_lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A30);
  v13 = OUTLINED_FUNCTION_3_17();
  *(v13 + 16) = xmmword_1C96AA1C0;
  sub_1C96A5104();
  v24 = v13;
  sub_1C946AA30();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A38);
  sub_1C946C9C4();
  sub_1C96A79E4();
  sub_1C96A5134();
  swift_allocObject();
  *(v1 + v22) = sub_1C96A5124();
  sub_1C9469B6C(a1, v1 + OBJC_IVAR____TtC11WeatherCore25SyncedDataContextProvider_contextProvider);
  v14 = a1[3];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v14);
  (*(v15 + 8))(v14, v15);
  sub_1C96A4704();
  v16 = v23;
  (*(v4 + 8))(v8, v23);
  v17 = *(v4 + 32);
  v17(v1 + OBJC_IVAR____TtC11WeatherCore25SyncedDataContextProvider_coherenceDataStorageURL, v11, v16);
  v18 = a1[3];
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v18);
  (*(v19 + 16))(v18, v19);
  v17(v1 + OBJC_IVAR____TtC11WeatherCore25SyncedDataContextProvider_coherenceContextStorageURL, v11, v16);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v1;
}

uint64_t sub_1C9493EB8@<X0>(uint64_t *a1@<X2>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *a1;
  sub_1C96A4764();
  OUTLINED_FUNCTION_6();
  v8 = *(v7 + 16);

  return v8(a2, v4 + v5, v6);
}

uint64_t sub_1C9493F40(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_1C96A7024();

  return v4;
}

uint64_t type metadata accessor for SyncedDataManager()
{
  result = qword_1EDB7ECD0;
  if (!qword_1EDB7ECD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C949401C()
{
  sub_1C94940C4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1C94940C4()
{
  if (!qword_1EDB7FB30)
  {
    type metadata accessor for SyncedData();
    v0 = sub_1C96A7934();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDB7FB30);
    }
  }
}

uint64_t type metadata accessor for SyncedData()
{
  result = qword_1EDB7FB68;
  if (!qword_1EDB7FB68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C9494168()
{
  if (!qword_1EDB7CF20)
  {
    sub_1C94947B4();
    sub_1C94948B8();
    sub_1C9494964();
    sub_1C9494A68();
    v0 = sub_1C96A6CD4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDB7CF20);
    }
  }
}

void sub_1C9494200()
{
  sub_1C9494168();
  if (v0 <= 0x3F)
  {
    sub_1C9494CD4();
    if (v1 <= 0x3F)
    {
      sub_1C9495004();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1C94947B4()
{
  result = qword_1EDB7EC00;
  if (!qword_1EDB7EC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7EC00);
  }

  return result;
}

unint64_t sub_1C949480C()
{
  result = qword_1EDB7EC08[0];
  if (!qword_1EDB7EC08[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDB7EC08);
  }

  return result;
}

unint64_t sub_1C9494864()
{
  result = qword_1EDB7EBF8;
  if (!qword_1EDB7EBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7EBF8);
  }

  return result;
}

unint64_t sub_1C94948B8()
{
  result = qword_1EDB7EBF0;
  if (!qword_1EDB7EBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7EBF0);
  }

  return result;
}

unint64_t sub_1C9494910()
{
  result = qword_1EDB7EBE8;
  if (!qword_1EDB7EBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7EBE8);
  }

  return result;
}

unint64_t sub_1C9494964()
{
  result = qword_1EDB7F650;
  if (!qword_1EDB7F650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7F650);
  }

  return result;
}

unint64_t sub_1C94949BC()
{
  result = qword_1EDB7F658[0];
  if (!qword_1EDB7F658[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDB7F658);
  }

  return result;
}

unint64_t sub_1C9494A14()
{
  result = qword_1EDB7F640;
  if (!qword_1EDB7F640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7F640);
  }

  return result;
}

unint64_t sub_1C9494A68()
{
  result = qword_1EDB7F638;
  if (!qword_1EDB7F638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7F638);
  }

  return result;
}

id WCLogForCategory(unint64_t a1)
{
  if (a1 >= 3)
  {
    WCLogForCategory_cold_2();
  }

  if (WCLogForCategory_onceToken != -1)
  {
    WCLogForCategory_cold_1();
  }

  v2 = WCLogForCategory_logObjects[a1];

  return v2;
}

uint64_t __WCLogForCategory_block_invoke()
{
  v0 = os_log_create("com.apple.weather", "Weather");
  v1 = WCLogForCategory_logObjects[0];
  WCLogForCategory_logObjects[0] = v0;

  v2 = os_log_create("com.apple.weather", "DefaultLocations");
  v3 = qword_1EDB8C710;
  qword_1EDB8C710 = v2;

  qword_1EDB8C718 = os_log_create("com.apple.weather", "KVSMigration");

  return MEMORY[0x1EEE66BB8]();
}

void sub_1C9494CD4()
{
  if (!qword_1EDB7CF28)
  {
    type metadata accessor for SyncedLocationDisplayContext();
    sub_1C94947B4();
    sub_1C94948B8();
    sub_1C94950B4(&qword_1EDB7D730, type metadata accessor for SyncedLocationDisplayContext);
    v0 = sub_1C96A6BF4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDB7CF28);
    }
  }
}

uint64_t type metadata accessor for SyncedLocationDisplayContext()
{
  result = qword_1EDB7D700;
  if (!qword_1EDB7D700)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C9494DE4()
{
  sub_1C9494FB4(319, &qword_1EDB7CF38);
  if (v0 <= 0x3F)
  {
    sub_1C9494FB4(319, &qword_1EDB7CF30);
    if (v1 <= 0x3F)
    {
      sub_1C9495004();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C9494FB4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1C96A6724();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_1C9495004()
{
  if (!qword_1EDB7CF08)
  {
    sub_1C96A6D84();
    v0 = sub_1C96A6F14();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDB7CF08);
    }
  }
}

uint64_t sub_1C949506C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C94950B4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C94950FC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SyncedLocationDisplayContext();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C9495214(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C949525C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1C94952B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A60A8);
  OUTLINED_FUNCTION_16_1();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A60B0);
    OUTLINED_FUNCTION_16_1();
    if (*(v13 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return;
    }

    v10 = v12;
    v11 = a1 + *(a4 + 20);
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t type metadata accessor for WeatherCoalescedLocationResult()
{
  result = qword_1EDB7A6B0;
  if (!qword_1EDB7A6B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C9495554()
{
  sub_1C9495650(319, qword_1EDB79F28, type metadata accessor for CurrentLocation, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1C94956B4();
    if (v1 <= 0x3F)
    {
      sub_1C9495650(319, &qword_1EDB77D58, type metadata accessor for LocationModel, MEMORY[0x1E69E62F8]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C9495650(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1C94956B4()
{
  if (!qword_1EDB77D78)
  {
    type metadata accessor for Location();
    sub_1C9495720();
    v0 = sub_1C96A6F14();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDB77D78);
    }
  }
}

unint64_t sub_1C9495720()
{
  result = qword_1EDB796B0;
  if (!qword_1EDB796B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB796B0);
  }

  return result;
}

unint64_t sub_1C9495778()
{
  result = qword_1EDB796A8;
  if (!qword_1EDB796A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB796A8);
  }

  return result;
}

uint64_t StubLocationManager.currentLocation.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F60);
  OUTLINED_FUNCTION_7(v2);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v15[-v4];
  sub_1C96A4EE4();
  sub_1C96A4EC4();
  if (qword_1EDB7A980 != -1)
  {
    swift_once();
  }

  sub_1C96A4EB4();

  if (v15[15])
  {
    v6 = 1;
LABEL_7:
    v14 = type metadata accessor for Location();
    return __swift_storeEnumTagSinglePayload(a1, v6, 1, v14);
  }

  sub_1C96A4D64();
  v7 = sub_1C96A4DF4();
  result = __swift_getEnumTagSinglePayload(v5, 1, v7);
  if (result != 1)
  {
    v9 = OUTLINED_FUNCTION_0_39();
    sub_1C95447DC(v9, v10, v5, v11, v12, v13);
    v6 = 0;
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t LocationsOfInterestManager.locations.getter()
{
  sub_1C96A5134();
  sub_1C96A3D04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5248);
  sub_1C96A5554();

  return v1;
}

uint64_t sub_1C9495AA0@<X0>(void *a1@<X8>)
{
  sub_1C948A088();
  v2 = v6;
  v3 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  *a1 = (*(v3 + 8))(v2, v3);
  return __swift_destroy_boxed_opaque_existential_1Tm(v5);
}

uint64_t WeatherLocationCoalescenceManager.coalesceLocations(currentLocation:locationList:locationsOfInterest:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = sub_1C96A6F04();
  WeatherLocationCoalescenceManager.coalesceLocations(currentLocation:locationList:locationsOfInterest:displayContextByLocation:)(a1, a2, v6, a3);
}

uint64_t WeatherLocationCoalescenceManager.coalesceLocations(currentLocation:locationList:locationsOfInterest:displayContextByLocation:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v28 = a3;
  v31 = a2;
  v29 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A58E0);
  v7 = OUTLINED_FUNCTION_7(v6);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v27 - v11;
  v30 = v4;
  sub_1C9469B6C(v4 + 16, v35);
  v13 = v36;
  v14 = v37;
  __swift_project_boxed_opaque_existential_1(v35, v36);
  sub_1C955FEC0();
  v15 = type metadata accessor for CurrentLocation();
  if (__swift_getEnumTagSinglePayload(v12, 1, v15) == 1)
  {
    sub_1C9470AFC(v12, &qword_1EC3A58E0);
    v32 = 0u;
    v33 = 0u;
    v34 = 0;
  }

  else
  {
    *(&v33 + 1) = v15;
    v34 = &protocol witness table for CurrentLocation;
    __swift_allocate_boxed_opaque_existential_1(&v32);
    sub_1C9495F48();
  }

  v16 = sub_1C9495FA0(a1);
  v17 = v31;
  (*(v14 + 24))(v38, &v32, v16, v31, v28, v13, v14);

  sub_1C9470AFC(&v32, &qword_1EC3A58E8);
  __swift_destroy_boxed_opaque_existential_1Tm(v35);
  sub_1C955FEC0();
  if (v36)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5400);
    v18 = swift_dynamicCast() ^ 1;
    v19 = v10;
  }

  else
  {
    sub_1C9470AFC(v35, &qword_1EC3A58E8);
    v19 = v10;
    v18 = 1;
  }

  __swift_storeEnumTagSinglePayload(v19, v18, 1, v15);
  v20 = sub_1C949E390(v38[5]);
  v21 = MEMORY[0x1EEE9AC00](v20);
  *(&v27 - 4) = v30;
  *(&v27 - 3) = v21;
  *(&v27 - 2) = v17;
  *(&v27 - 1) = v38;
  v23 = sub_1C949EF70(sub_1C949F748, (&v27 - 6), v22);
  v24 = v29;
  sub_1C955FEC0();
  v25 = type metadata accessor for WeatherCoalescedLocationResult();
  *(v24 + *(v25 + 20)) = v20;
  *(v24 + *(v25 + 24)) = v23;
  sub_1C9470AFC(v10, &qword_1EC3A58E0);
  return sub_1C94A05D0(v38);
}

uint64_t sub_1C9495F48()
{
  OUTLINED_FUNCTION_40_2();
  v1(0);
  OUTLINED_FUNCTION_6();
  v2 = OUTLINED_FUNCTION_11();
  v3(v2);
  return v0;
}

uint64_t sub_1C9495FA0(uint64_t a1)
{
  v2 = type metadata accessor for SavedLocation();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v15 = MEMORY[0x1E69E7CC0];
    sub_1C9496280();
    v7 = v15;
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    do
    {
      sub_1C9489990();
      v15 = v7;
      v10 = *(v7 + 16);
      if (v10 >= *(v7 + 24) >> 1)
      {
        sub_1C9496280();
        v7 = v15;
      }

      v13 = v2;
      v14 = &protocol witness table for SavedLocation;
      __swift_allocate_boxed_opaque_existential_1(&v12);
      sub_1C9489990();
      *(v7 + 16) = v10 + 1;
      sub_1C94670AC(&v12, v7 + 40 * v10 + 32);
      sub_1C948E888(v5, type metadata accessor for SavedLocation);
      v8 += v9;
      --v6;
    }

    while (v6);
  }

  return v7;
}

void sub_1C9496170()
{
  OUTLINED_FUNCTION_109_0();
  if (v5)
  {
    OUTLINED_FUNCTION_8_7();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_18_5();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_7_6();
    }
  }

  else
  {
    v6 = v3;
  }

  v9 = v0[2];
  if (v6 <= v9)
  {
    v10 = v0[2];
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(v4);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    v11[2] = v9;
    v11[3] = 2 * ((v12 - 32) / 40);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  if (v2)
  {
    if (v11 != v0 || &v0[5 * v9 + 4] <= v11 + 4)
    {
      v14 = OUTLINED_FUNCTION_89();
      memmove(v14, v15, v16);
    }

    v0[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(v1);
    OUTLINED_FUNCTION_89();
    swift_arrayInitWithCopy();
  }
}

uint64_t LocationCoalescenceProvider.coalesceLocations(currentLocation:locationList:locationsOfInterest:displayContextByLocation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v189 = a4;
  v190 = a5;
  v192 = a2;
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6E38);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_24();
  v202 = v9;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_18_1();
  v201 = v11;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_18_1();
  v203 = v13;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v14);
  v195 = &v180 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5930);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v187 = &v180 - v17;
  v18 = type metadata accessor for LocationOfInterest();
  OUTLINED_FUNCTION_1();
  v206 = v19;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_24();
  v198 = v21;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_18_1();
  v193 = v23;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_18_1();
  v194 = v25;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_18_1();
  v191 = v27;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_18_1();
  v200 = v29;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v30);
  v205 = &v180 - v31;
  inited = type metadata accessor for LocationCoalescenceProvider.Labeling(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_14();
  v36 = v35 - v34;
  v37 = type metadata accessor for LocationCoalescenceProvider.LocationLabelingResult(0);
  OUTLINED_FUNCTION_1();
  v199 = v38;
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_14();
  i = v41 - v40;
  sub_1C96A60A4();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_14();
  v48 = v47 - v46;
  v49 = MEMORY[0x1E69E7CC0];
  if (*(v5 + 64) != 1)
  {
    v209.n128_u64[0] = MEMORY[0x1E69E7CC0];
    sub_1C964B73C();
    if (*(&v214 + 1))
    {
      v80 = OUTLINED_FUNCTION_30_14();
      sub_1C9469B6C(v80, &v213);
      sub_1C949C668();
      v82 = v81;
      i = *(v81 + 16);
      inited = i + 1;
      if (i >= *(v81 + 24) >> 1)
      {
        goto LABEL_126;
      }

      goto LABEL_24;
    }

    sub_1C9470AFC(&v213, &qword_1EC3A58E8);
    v83 = v190;
LABEL_43:
    v102 = sub_1C96A53C4();
    sub_1C949DA68(v102);
    sub_1C964B73C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5400);
    sub_1C9495720();
    result = sub_1C96A6F04();
    v104 = v209.n128_u64[0];
    *(v83 + 56) = 0u;
    *(v83 + 72) = 0u;
    *(v83 + 88) = 0;
    *(v83 + 40) = result;
    *(v83 + 48) = v104;
    return result;
  }

  v180 = v18;
  v184 = v45;
  v185 = v44;
  v188 = a1;
  v50 = v48;
  v51 = *(v5 + 56);
  sub_1C96A6084();
  sub_1C96A77F4();
  v182 = v51;
  v183 = v50;
  sub_1C96A6074();
  v224 = 0;
  v225 = v49;
  v222 = 0u;
  v223 = 0u;
  v181 = a3;
  v186 = v5;
  v52 = sub_1C94978BC(v192, a3, v189);
  v53 = v52;
  v54 = *(v52 + 16);
  if (v54)
  {
    v55 = 0;
    v56 = *(v37 + 20);
    v57 = v200;
    v207 = v52 + ((*(v199 + 80) + 32) & ~*(v199 + 80));
    v208 = v56;
    v58 = MEMORY[0x1E69E7CC8];
    v196 = v54;
    v197 = inited;
    do
    {
      if (v55 >= *(v53 + 16))
      {
LABEL_112:
        __break(1u);
LABEL_113:
        __break(1u);
        goto LABEL_114;
      }

      sub_1C94996D4();
      sub_1C94996D4();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          OUTLINED_FUNCTION_2_68();
          sub_1C94998A0(i, v60);
          OUTLINED_FUNCTION_1_74();
          v62 = v36;
        }

        else
        {
          OUTLINED_FUNCTION_2_68();
          v62 = i;
        }

        sub_1C94998A0(v62, v61);
      }

      else
      {
        inited = v53;
        OUTLINED_FUNCTION_7_44();
        sub_1C9499788();
        OUTLINED_FUNCTION_0_99();
        sub_1C94996D4();
        sub_1C9469B6C(i, &v218);
        swift_isUniquelyReferenced_nonNull_native();
        v213.n128_u64[0] = v58;
        sub_1C949B27C(v57);
        OUTLINED_FUNCTION_20_28();
        if (__OFADD__(v65, v66))
        {
          goto LABEL_115;
        }

        v67 = v63;
        v68 = v64;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4F60);
        v69 = &v213;
        if (sub_1C96A7B84())
        {
          v69 = v213.n128_u64[0];
          v57 = v200;
          v70 = sub_1C949B27C(v200);
          if ((v68 & 1) != (v71 & 1))
          {
            goto LABEL_129;
          }

          v67 = v70;
        }

        else
        {
          v57 = v200;
        }

        v58 = v213.n128_u64[0];
        if (v68)
        {
          v72 = (*(v213.n128_u64[0] + 56) + 40 * v67);
          __swift_destroy_boxed_opaque_existential_1Tm(v72);
          sub_1C949B26C(&v218, v72);
          OUTLINED_FUNCTION_8_44();
          sub_1C94998A0(v57, v73);
          sub_1C94998A0(v205, v72);
          OUTLINED_FUNCTION_2_68();
          sub_1C94998A0(i, v74);
        }

        else
        {
          OUTLINED_FUNCTION_9_40(v213.n128_u64[0] + 8 * (v67 >> 6));
          OUTLINED_FUNCTION_0_99();
          sub_1C94996D4();
          sub_1C949B26C(&v218, (*(v58 + 56) + 40 * v67));
          OUTLINED_FUNCTION_8_44();
          sub_1C94998A0(v57, v75);
          sub_1C94998A0(v205, v69);
          OUTLINED_FUNCTION_2_68();
          sub_1C94998A0(i, v76);
          v77 = *(v58 + 16);
          v78 = __OFADD__(v77, 1);
          v79 = v77 + 1;
          if (v78)
          {
            goto LABEL_118;
          }

          *(v58 + 16) = v79;
        }

        v53 = inited;
        v54 = v196;
        inited = v197;
      }

      ++v55;
    }

    while (v54 != v55);
  }

  else
  {
    v58 = MEMORY[0x1E69E7CC8];
  }

  sub_1C964B73C();
  if (!v219)
  {

    sub_1C9470AFC(&v218, &qword_1EC3A58E8);
    v105 = sub_1C96A53C4();
    sub_1C949DA68(v105);
    v200 = 0;
LABEL_95:
    inited = v58 + 64;
    OUTLINED_FUNCTION_17_33();
    v152 = v151 & v150;
    i = (v153 + 63) >> 6;
    sub_1C96A53C4();
    v154 = 0;
    v155 = MEMORY[0x1E69E7CC8];
    v207 = v58 + 64;
    v208 = v58;
    v205 = i;
    if (v152)
    {
      goto LABEL_100;
    }

    do
    {
LABEL_96:
      v156 = v154 + 1;
      if (__OFADD__(v154, 1))
      {
        __break(1u);
        goto LABEL_112;
      }

      if (v156 >= i)
      {

        v174 = v190;
        sub_1C964B73C();
        v175 = v225;
        *(v174 + 40) = v155;
        *(v174 + 48) = v175;
        v176 = v223;
        *(v174 + 56) = v222;
        *(v174 + 72) = v176;
        *(v174 + 88) = v224;

        sub_1C96A77E4();
        v177 = v183;
        sub_1C96A6074();
        return (*(v184 + 8))(v177, v185);
      }

      v152 = *(inited + 8 * v156);
      ++v154;
    }

    while (!v152);
    v154 = v156;
LABEL_100:
    while (1)
    {
      OUTLINED_FUNCTION_0_99();
      v157 = v203;
      sub_1C94996D4();
      inited = v204;
      sub_1C9469B6C(*(v58 + 56) + 40 * (__clz(__rbit64(v152)) | (v154 << 6)), v157 + *(v204 + 48));
      v158 = v201;
      i = &unk_1C96C1790;
      sub_1C964B73C();
      v159 = *v158;
      OUTLINED_FUNCTION_1_74();
      sub_1C94998A0(v158, v160);
      v161 = v202;
      sub_1C964B73C();
      sub_1C949B26C(v161 + *(inited + 48), &v218);
      swift_isUniquelyReferenced_nonNull_native();
      v213.n128_u64[0] = v155;
      sub_1C949E2B4(v159);
      OUTLINED_FUNCTION_20_28();
      if (__OFADD__(v164, v165))
      {
        goto LABEL_117;
      }

      inited = v162;
      v166 = v163;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7A58);
      if (sub_1C96A7B84())
      {
        v167 = sub_1C949E2B4(v159);
        if ((v166 & 1) != (v168 & 1))
        {
          goto LABEL_129;
        }

        inited = v167;
      }

      v155 = v213.n128_u64[0];
      if (v166)
      {
        v169 = (*(v213.n128_u64[0] + 56) + 40 * inited);
        __swift_destroy_boxed_opaque_existential_1Tm(v169);
        sub_1C949B26C(&v218, v169);
        sub_1C9470AFC(v203, &qword_1EC3A6E38);
      }

      else
      {
        OUTLINED_FUNCTION_9_40(v213.n128_u64[0] + 8 * (inited >> 6));
        *(v155[6] + inited) = v159;
        sub_1C949B26C(&v218, (v155[7] + 40 * inited));
        sub_1C9470AFC(v203, &qword_1EC3A6E38);
        v170 = v155[2];
        v78 = __OFADD__(v170, 1);
        v171 = v170 + 1;
        if (v78)
        {
          goto LABEL_119;
        }

        v155[2] = v171;
      }

      v152 &= v152 - 1;
      v172 = *(v204 + 48);
      OUTLINED_FUNCTION_1_74();
      sub_1C94998A0(v202, v173);
      __swift_destroy_boxed_opaque_existential_1Tm(&v201[v172]);
      inited = v207;
      v58 = v208;
      i = v205;
      if (!v152)
      {
        goto LABEL_96;
      }
    }
  }

  sub_1C949B26C(&v218, v221);
  sub_1C9469B6C(v221, &v218);
  sub_1C949C668();
  v85 = v84;
  v86 = *(v84 + 16);
  if (v86 >= *(v84 + 24) >> 1)
  {
    OUTLINED_FUNCTION_25_22();
    v85 = v179;
  }

  *(v85 + 16) = v86 + 1;
  v87 = sub_1C949B26C(&v218, (v85 + 40 * v86 + 32));
  v225 = v85;
  MEMORY[0x1EEE9AC00](v87);
  *(&v180 - 2) = v186;
  *(&v180 - 1) = v221;
  inited = 0;
  i = sub_1C949C838(sub_1C949CE68, (&v180 - 4), v53);

  v88 = 0;
  v89 = *(i + 16);
  v90 = i + 32;
  v91 = MEMORY[0x1E69E7CC0];
  v208 = v58;
  while (v89 != v88)
  {
    if (v88 >= *(i + 16))
    {
      goto LABEL_113;
    }

    sub_1C949D47C(v90, &v213);
    sub_1C949D47C(&v213, &v209);
    if (v212)
    {
      __swift_destroy_boxed_opaque_existential_1Tm(&v209);
      v209 = v213;
      v210 = v214;
      v211 = v215;
      v212 = v216;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v217 = v91;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1C949C818(0, *(v91 + 16) + 1, 1);
        v91 = v217;
      }

      v94 = *(v91 + 16);
      v93 = *(v91 + 24);
      if (v94 >= v93 >> 1)
      {
        sub_1C949C818(v93 > 1, v94 + 1, 1);
        v91 = v217;
      }

      *(v91 + 16) = v94 + 1;
      v95 = v91 + 56 * v94;
      v96 = v209;
      v97 = v210;
      v98 = v211;
      *(v95 + 80) = v212;
      *(v95 + 48) = v97;
      *(v95 + 64) = v98;
      *(v95 + 32) = v96;
      v58 = v208;
    }

    else
    {
      sub_1C949D4E4(&v213);
      __swift_destroy_boxed_opaque_existential_1Tm(&v209);
    }

    v90 += 56;
    ++v88;
  }

  v213.n128_u64[0] = v91;
  sub_1C96A3D04();
  sub_1C949ADB0(&v213, sub_1C949D514, &type metadata for LocationCoalescenceProvider.DedupeResult, sub_1C964A10C, sub_1C949D528);

  sub_1C949D688(v213.n128_i64[0], &v218);

  v99 = v189;
  v100 = v181;
  v101 = v191;
  if (v220 == 255)
  {
    sub_1C9470AFC(&v218, &qword_1EC3A7A60);
    v209 = 0u;
    v210 = 0u;
    *&v211 = 0;
  }

  else
  {
    sub_1C949D47C(&v218, &v213);
    sub_1C949B26C(&v213, &v209);
    sub_1C949D4E4(&v218);
  }

  v200 = 0;
  sub_1C964B73C();
  if (*(&v214 + 1))
  {
    sub_1C9470AFC(&v222, &qword_1EC3A58E8);
    v106 = OUTLINED_FUNCTION_30_14();
    v107 = sub_1C9469B6C(v106, &v222);
    MEMORY[0x1EEE9AC00](v107);
    *(&v180 - 2) = &v218;
    sub_1C96A53C4();
    v108 = v200;
    sub_1C949D6B4();
    v200 = v108;
    sub_1C949DA68(v109);
    __swift_destroy_boxed_opaque_existential_1Tm(&v218);
  }

  else
  {
    sub_1C9470AFC(&v213, &qword_1EC3A58E8);
    v110 = sub_1C96A53C4();
    sub_1C949DA68(v110);
  }

  sub_1C964B73C();
  if (*(&v214 + 1))
  {
    v111 = OUTLINED_FUNCTION_30_14();
    v112 = v187;
    sub_1C949DC00(v111, v58, v187);
    __swift_destroy_boxed_opaque_existential_1Tm(&v218);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v112, 1, v180);
    sub_1C9470AFC(v112, &qword_1EC3A5930);
    if (EnumTagSinglePayload != 1)
    {
      sub_1C9470AFC(&v209, &qword_1EC3A58E8);
LABEL_94:
      __swift_destroy_boxed_opaque_existential_1Tm(v221);
      goto LABEL_95;
    }
  }

  else
  {
    sub_1C9470AFC(&v213, &qword_1EC3A58E8);
  }

  v213.n128_u64[0] = v100;
  v114 = *(v100 + 16);
  sub_1C96A53C4();
  for (i = 0; ; ++i)
  {
    if (v114 == i)
    {
      i = *(v100 + 16);
      v118 = i;
      goto LABEL_78;
    }

    if (*(v58 + 16))
    {
      inited = *(v206 + 72);
      v115 = (*(v206 + 80) + 32) & ~*(v206 + 80);
      sub_1C96A53C4();
      sub_1C949B27C((v100 + v115 + inited * i));
      v117 = v116;

      if (v117)
      {
        break;
      }
    }
  }

  v118 = i + 1;
  if (__OFADD__(i, 1))
  {
    goto LABEL_128;
  }

  for (j = v115 + inited * (i + 1); ; j += inited)
  {
    v120 = *(v100 + 16);
    if (v118 == v120)
    {
      break;
    }

    if (v118 >= v120)
    {
      goto LABEL_116;
    }

    OUTLINED_FUNCTION_0_99();
    sub_1C94996D4();
    if (*(v58 + 16))
    {
      sub_1C96A53C4();
      sub_1C949B27C(v101);
      v122 = v121;

      OUTLINED_FUNCTION_1_74();
      sub_1C94998A0(v101, v123);
      if (v122)
      {
        goto LABEL_76;
      }
    }

    else
    {
      OUTLINED_FUNCTION_1_74();
      sub_1C94998A0(v101, v124);
    }

    if (v118 != i)
    {
      if ((i & 0x8000000000000000) != 0)
      {
        goto LABEL_121;
      }

      v125 = *(v100 + 16);
      if (i >= v125)
      {
        goto LABEL_122;
      }

      OUTLINED_FUNCTION_0_99();
      sub_1C94996D4();
      if (v118 >= v125)
      {
        goto LABEL_123;
      }

      OUTLINED_FUNCTION_0_99();
      sub_1C94996D4();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C964B178();
        v100 = v126;
      }

      v101 = v191;
      sub_1C964B3F8(v193, v100 + v115 + i * inited);
      if (v118 >= *(v100 + 16))
      {
        goto LABEL_124;
      }

      sub_1C964B3F8(v194, v100 + j);
      v213.n128_u64[0] = v100;
    }

    ++i;
LABEL_76:
    ++v118;
  }

  v99 = v189;
  if (v118 >= i)
  {
LABEL_78:
    sub_1C953A928(i, v118);
    v127 = v213.n128_u64[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4C98);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C96AA1C0;
    sub_1C9469B6C(v221, inited + 32);
    v199 = v127;
    i = sub_1C9497AC4(v127, inited, v99);
    swift_setDeallocating();
    sub_1C953A130();
    v128 = i + 64;
    OUTLINED_FUNCTION_17_33();
    v131 = v130 & v129;
    v133 = (v132 + 63) >> 6;
    v207 = i;
    sub_1C96A53C4();
    v134 = 0;
    v205 = i + 64;
    if (v131)
    {
      goto LABEL_83;
    }

LABEL_79:
    while (1)
    {
      v135 = v134 + 1;
      if (__OFADD__(v134, 1))
      {
        break;
      }

      if (v135 >= v133)
      {

        sub_1C9470AFC(&v209, &qword_1EC3A58E8);

        v58 = v208;
        goto LABEL_94;
      }

      v131 = *(v128 + 8 * v135);
      ++v134;
      if (v131)
      {
        v134 = v135;
LABEL_83:
        while (1)
        {
          v136 = v207;
          i = v195;
          sub_1C94996D4();
          inited = *(v204 + 48);
          sub_1C9469B6C(*(v136 + 56) + 40 * (__clz(__rbit64(v131)) | (v134 << 6)), i + inited);
          v137 = v198;
          sub_1C94996D4();
          sub_1C9469B6C(i + inited, &v218);
          v138 = v208;
          swift_isUniquelyReferenced_nonNull_native();
          v217 = v138;
          sub_1C949B27C(v137);
          OUTLINED_FUNCTION_20_28();
          if (__OFADD__(v141, v142))
          {
            goto LABEL_120;
          }

          i = v139;
          inited = v140;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4F60);
          if (sub_1C96A7B84())
          {
            v143 = sub_1C949B27C(v198);
            if ((inited & 1) != (v144 & 1))
            {
              goto LABEL_129;
            }

            i = v143;
          }

          v145 = v217;
          v208 = v217;
          if (inited)
          {
            v146 = (*(v217 + 56) + 40 * i);
            __swift_destroy_boxed_opaque_existential_1Tm(v146);
            sub_1C949B26C(&v218, v146);
          }

          else
          {
            OUTLINED_FUNCTION_9_40(v217 + 8 * (i >> 6));
            OUTLINED_FUNCTION_0_99();
            sub_1C94996D4();
            sub_1C949B26C(&v218, (*(v145 + 56) + 40 * i));
            v147 = *(v145 + 16);
            v78 = __OFADD__(v147, 1);
            v148 = v147 + 1;
            if (v78)
            {
              goto LABEL_125;
            }

            *(v145 + 16) = v148;
          }

          v131 &= v131 - 1;
          OUTLINED_FUNCTION_1_74();
          sub_1C94998A0(v198, v149);
          sub_1C9470AFC(v195, &qword_1EC3A6E38);
          v128 = v205;
          if (!v131)
          {
            goto LABEL_79;
          }
        }
      }
    }

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
    OUTLINED_FUNCTION_25_22();
    v82 = v178;
LABEL_24:
    v83 = v190;
    __swift_destroy_boxed_opaque_existential_1Tm(&v218);
    *(v82 + 16) = inited;
    sub_1C949B26C(&v213, (v82 + 40 * i + 32));
    v209.n128_u64[0] = v82;
    goto LABEL_43;
  }

  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  sub_1C96A7E44();
  __break(1u);

  __break(1u);
  return result;
}

void sub_1C94976F0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for LocationOfInterest();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_1C9497738()
{
  sub_1C94976F0(319, &qword_1EDB79978);
  if (v0 <= 0x3F)
  {
    sub_1C94976F0(319, &qword_1EDB79980);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

unint64_t sub_1C94977DC()
{
  result = sub_1C9497860();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for LocationCoalescenceProvider.Labeling(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1C9497860()
{
  result = qword_1EDB79930;
  if (!qword_1EDB79930)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDB79930);
  }

  return result;
}

uint64_t sub_1C94978BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for LocationCoalescenceProvider.LocationLabelingResult(0) - 8;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C9497AC4(a2, a1, a3);
  v10 = MEMORY[0x1E69E7CC0];
  v11 = sub_1C96A6F04();
  v12 = sub_1C9497AC4(a2, a1, v11);

  v13 = *(a1 + 16);
  if (v13)
  {
    v19 = v10;
    sub_1C949B96C();
    v14 = v19;
    v15 = (a1 + 32);
    do
    {
      sub_1C949B9C4(v15, v9, v12, v8);
      v19 = v14;
      v16 = *(v14 + 16);
      if (v16 >= *(v14 + 24) >> 1)
      {
        sub_1C949B96C();
        v14 = v19;
      }

      *(v14 + 16) = v16 + 1;
      sub_1C9499788();
      v15 += 5;
      --v13;
    }

    while (v13);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v14;
}

unint64_t sub_1C9497AC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for LocationOfInterest();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v193 = &v190 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v190 = &v190 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v191 = &v190 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v194 = &v190 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v202 = &v190 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v201 = &v190 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v197 = &v190 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v198 = &v190 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v208 = &v190 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v209 = &v190 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v203 = &v190 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v206 = &v190 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v34 = &v190 - v33;
  MEMORY[0x1EEE9AC00](v32);
  v36 = &v190 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5930);
  v38 = MEMORY[0x1EEE9AC00](v37 - 8);
  v192 = &v190 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x1EEE9AC00](v38);
  v199 = &v190 - v41;
  v42 = MEMORY[0x1EEE9AC00](v40);
  v204 = &v190 - v43;
  v44 = MEMORY[0x1EEE9AC00](v42);
  v200 = &v190 - v45;
  v46 = MEMORY[0x1EEE9AC00](v44);
  v207 = &v190 - v47;
  v48 = MEMORY[0x1EEE9AC00](v46);
  v205 = &v190 - v49;
  v50 = MEMORY[0x1EEE9AC00](v48);
  v212 = &v190 - v51;
  MEMORY[0x1EEE9AC00](v50);
  v214 = &v190 - v52;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5400);
  v54 = sub_1C9499634();
  v213 = v6;
  v195 = v54;
  v196 = v53;
  v210 = sub_1C96A6F04();
  v55 = 0;
  v56 = *(a1 + 16);
  while (1)
  {
    if (v56 == v55)
    {
      v57 = 1;
      v58 = v214;
      goto LABEL_7;
    }

    sub_1C94996D4();
    if ((*v36 & 1) == 0)
    {
      break;
    }

    ++v55;
    sub_1C94998A0(v36, type metadata accessor for LocationOfInterest);
  }

  v58 = v214;
  sub_1C9499788();
  v57 = 0;
LABEL_7:
  __swift_storeEnumTagSinglePayload(v58, v57, 1, v213);
  for (i = 0; ; ++i)
  {
    if (v56 == i)
    {
      v60 = 1;
      v61 = v212;
      goto LABEL_13;
    }

    sub_1C94996D4();
    if (*v34)
    {
      break;
    }

    sub_1C94998A0(v34, type metadata accessor for LocationOfInterest);
  }

  v61 = v212;
  sub_1C9499788();
  v60 = 0;
LABEL_13:
  __swift_storeEnumTagSinglePayload(v61, v60, 1, v213);
  v62 = *(a2 + 16);
  v63 = a2 + 32;
  v64 = MEMORY[0x1E69E7CC0];
  if (v62)
  {
    while (1)
    {
      sub_1C9469B6C(v63, v231);
      v65 = v232;
      v66 = v233;
      __swift_project_boxed_opaque_existential_1(v231, v232);
      v67 = (*(v66 + 40))(v65, v66);
      if (!v68)
      {
        goto LABEL_20;
      }

      if (!*(a3 + 16))
      {
        break;
      }

      v69 = sub_1C9476F90(v67, v68);
      v71 = v70;

      if ((v71 & 1) == 0 || *(*(a3 + 56) + v69) == 1)
      {
        goto LABEL_20;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v231);
LABEL_25:
      v63 += 40;
      if (!--v62)
      {
        goto LABEL_26;
      }
    }

LABEL_20:
    sub_1C949B26C(v231, &v225);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v216.n128_u64[0] = v64;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1C9496280();
      v64 = v216.n128_u64[0];
    }

    v73 = *(v64 + 16);
    if (v73 >= *(v64 + 24) >> 1)
    {
      sub_1C9496280();
    }

    v74 = *(&v226 + 1);
    v75 = v227;
    v76 = __swift_mutable_project_boxed_opaque_existential_1(&v225, *(&v226 + 1));
    MEMORY[0x1EEE9AC00](v76);
    v78 = &v190 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v79 + 16))(v78);
    sub_1C94999F8(v73, v78, &v216, v74, v75);
    __swift_destroy_boxed_opaque_existential_1Tm(&v225);
    v64 = v216.n128_u64[0];
    goto LABEL_25;
  }

LABEL_26:
  v80 = v211[5];
  v81 = v211[6];
  __swift_project_boxed_opaque_existential_1(v211 + 2, v80);
  v82 = (*(v81 + 16))(v80, v81);
  v83 = v212;
  sub_1C9499CB0(v231, &v234, v82, v214, v212, v64);
  sub_1C964B73C();
  v216 = v225;
  v217 = v226;
  v218 = v227;
  v84 = *(&v226 + 1);
  if (*(&v226 + 1))
  {
    v85 = v218;
    __swift_project_boxed_opaque_existential_1(&v216, *(&v217 + 1));
    v86 = (*(v85 + 8))(v84, v85);
    v88 = v87;
    __swift_destroy_boxed_opaque_existential_1Tm(&v216);
    sub_1C9470AFC(&v228, &qword_1EC3A58E8);
  }

  else
  {
    sub_1C9470AFC(&v228, &qword_1EC3A58E8);
    sub_1C9470AFC(&v216, &qword_1EC3A58E8);
    v86 = 0.0;
    v88 = 0.0;
  }

  sub_1C964B73C();
  v216 = v228;
  v217 = v229;
  v218 = v230;
  v89 = *(&v229 + 1);
  if (*(&v229 + 1))
  {
    v90 = v218;
    __swift_project_boxed_opaque_existential_1(&v216, *(&v217 + 1));
    v91 = *(v90 + 8);
    v92 = v90;
    v83 = v212;
    v93 = v91(v89, v92);
    v95 = v94;
    __swift_destroy_boxed_opaque_existential_1Tm(&v216);
    sub_1C9470AFC(&v225, &qword_1EC3A58E8);
    if (!v84)
    {
      goto LABEL_39;
    }

    if (v86 != v93 || v88 != v95)
    {
      goto LABEL_39;
    }

LABEL_36:
    v97 = v211[5];
    v98 = v211[6];
    __swift_project_boxed_opaque_existential_1(v211 + 2, v97);
    v99 = (*(v98 + 8))(v97, v98);
    v100 = v214;
    sub_1C9499CB0(&v225, &v228, v99, v214, v83, v64);

    sub_1C964B73C();
    v222 = v216;
    v223 = v217;
    v224 = v218;
    v101 = *(&v217 + 1);
    if (*(&v217 + 1))
    {
      v102 = v224;
      __swift_project_boxed_opaque_existential_1(&v222, *(&v223 + 1));
      v103 = (*(v102 + 8))(v101, v102);
      v105 = v104;
      __swift_destroy_boxed_opaque_existential_1Tm(&v222);
      sub_1C9470AFC(&v219, &qword_1EC3A58E8);
    }

    else
    {
      sub_1C9470AFC(&v219, &qword_1EC3A58E8);
      sub_1C9470AFC(&v222, &qword_1EC3A58E8);
      v103 = 0.0;
      v105 = 0.0;
    }

    v117 = v213;
    v118 = v204;
    sub_1C964B73C();
    v222 = v219;
    v223 = v220;
    v224 = v221;
    v119 = *(&v220 + 1);
    if (*(&v220 + 1))
    {
      v120 = v224;
      __swift_project_boxed_opaque_existential_1(&v222, *(&v223 + 1));
      v121 = (*(v120 + 8))(v119, v120);
      v123 = v122;
      __swift_destroy_boxed_opaque_existential_1Tm(&v222);
      sub_1C9470AFC(&v216, &qword_1EC3A58E8);
      if (!v101)
      {
LABEL_56:
        v127 = v200;
        sub_1C964B73C();
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v127, 1, v117);
        v108 = v210;
        if (EnumTagSinglePayload == 1)
        {
          sub_1C9470AFC(v127, &qword_1EC3A5930);
          v129 = v202;
        }

        else
        {
          v130 = v198;
          sub_1C9499788();
          v131 = v197;
          sub_1C94996D4();
          sub_1C964B73C();
          v129 = v202;
          if (*(&v217 + 1))
          {
            sub_1C949B26C(&v216, &v222);
            v132 = swift_isUniquelyReferenced_nonNull_native();
            v215 = v108;
            sub_1C949B108(&v222, v131, v132, v133, v134, v135, v136, v137, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201);
            v108 = v215;
            v118 = v204;
            sub_1C94998A0(v131, type metadata accessor for LocationOfInterest);
          }

          else
          {
            sub_1C9470AFC(&v216, &qword_1EC3A58E8);
            v163 = sub_1C949B27C(v131);
            if (v164)
            {
              v165 = v163;
              swift_isUniquelyReferenced_nonNull_native();
              v215 = v108;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4F60);
              v129 = v202;
              sub_1C96A7B84();
              v108 = v215;
              sub_1C94998A0(*(v215 + 48) + *(v7 + 72) * v165, type metadata accessor for LocationOfInterest);
              sub_1C949B26C(*(v108 + 56) + 40 * v165, &v222);
              sub_1C96A7B94();
            }

            else
            {
              v224 = 0;
              v222 = 0u;
              v223 = 0u;
            }

            sub_1C94998A0(v197, type metadata accessor for LocationOfInterest);
            sub_1C9470AFC(&v222, &qword_1EC3A58E8);
            v130 = v198;
          }

          sub_1C94998A0(v130, type metadata accessor for LocationOfInterest);
          sub_1C9470AFC(&v219, &qword_1EC3A58E8);
        }

        sub_1C964B73C();
        if (__swift_getEnumTagSinglePayload(v118, 1, v117) == 1)
        {
          sub_1C9470AFC(&v225, &qword_1EC3A7A80);
          sub_1C9470AFC(v231, &qword_1EC3A7A80);
          sub_1C9470AFC(v83, &qword_1EC3A5930);
          sub_1C9470AFC(v100, &qword_1EC3A5930);
          v152 = v118;
          goto LABEL_90;
        }

        sub_1C9499788();
        sub_1C94996D4();
        sub_1C964B73C();
        if (*(&v220 + 1))
        {
          sub_1C949B26C(&v219, &v222);
          v169 = swift_isUniquelyReferenced_nonNull_native();
          v215 = v108;
          sub_1C949B108(&v222, v129, v169, v170, v171, v172, v173, v174, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201);
          v108 = v215;
          sub_1C94998A0(v129, type metadata accessor for LocationOfInterest);
        }

        else
        {
          sub_1C9470AFC(&v219, &qword_1EC3A58E8);
          v175 = sub_1C949B27C(v129);
          if (v176)
          {
            v177 = v175;
            swift_isUniquelyReferenced_nonNull_native();
            v215 = v108;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4F60);
            v129 = v202;
            sub_1C96A7B84();
            v108 = v215;
            sub_1C94998A0(*(v215 + 48) + *(v7 + 72) * v177, type metadata accessor for LocationOfInterest);
            sub_1C949B26C(*(v108 + 56) + 40 * v177, &v222);
            sub_1C96A7B94();
          }

          else
          {
            v224 = 0;
            v222 = 0u;
            v223 = 0u;
          }

          sub_1C94998A0(v129, type metadata accessor for LocationOfInterest);
          sub_1C9470AFC(&v222, &qword_1EC3A58E8);
        }

        v178 = v201;
LABEL_98:
        sub_1C94998A0(v178, type metadata accessor for LocationOfInterest);
        sub_1C9470AFC(&v225, &qword_1EC3A7A80);
        sub_1C9470AFC(v231, &qword_1EC3A7A80);
        sub_1C9470AFC(v83, &qword_1EC3A5930);
        sub_1C9470AFC(v100, &qword_1EC3A5930);
        v162 = &qword_1EC3A58E8;
        v152 = &v216;
        goto LABEL_102;
      }
    }

    else
    {
      sub_1C9470AFC(&v216, &qword_1EC3A58E8);
      sub_1C9470AFC(&v222, &qword_1EC3A58E8);
      v123 = 0.0;
      v121 = 0.0;
      if (!v101)
      {
        goto LABEL_54;
      }
    }

    if (!v119)
    {
      goto LABEL_56;
    }

    if (v103 != v121 || v105 != v123)
    {
      goto LABEL_56;
    }

LABEL_54:
    v125 = v199;
    sub_1C964B73C();
    v126 = __swift_getEnumTagSinglePayload(v125, 1, v117);
    v108 = v210;
    if (v126 == 1)
    {
      sub_1C9470AFC(&v225, &qword_1EC3A7A80);
LABEL_73:
      sub_1C9470AFC(v231, &qword_1EC3A7A80);
      sub_1C9470AFC(v83, &qword_1EC3A5930);
      sub_1C9470AFC(v100, &qword_1EC3A5930);
      v152 = v125;
LABEL_90:
      v162 = &qword_1EC3A5930;
      goto LABEL_102;
    }

    v138 = v194;
    sub_1C9499788();
    v139 = v192;
    sub_1C964B73C();
    if (__swift_getEnumTagSinglePayload(v139, 1, v117) == 1)
    {
      sub_1C9470AFC(v139, &qword_1EC3A5930);
      v140 = v193;
    }

    else
    {
      v144 = v191;
      sub_1C9499788();
      v145 = *(v117 + 24);
      v140 = v193;
      if (*(v144 + v145) == 1 && (*(v138 + v145) & 1) == 0)
      {
        v180 = v190;
        sub_1C94996D4();
        sub_1C964B73C();
        if (*(&v220 + 1))
        {
          sub_1C949B26C(&v219, &v222);
          v181 = swift_isUniquelyReferenced_nonNull_native();
          v215 = v108;
          sub_1C949B108(&v222, v180, v181, v182, v183, v184, v185, v186, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201);
          v108 = v215;
          sub_1C94998A0(v180, type metadata accessor for LocationOfInterest);
        }

        else
        {
          sub_1C9470AFC(&v219, &qword_1EC3A58E8);
          v187 = sub_1C949B27C(v180);
          if (v188)
          {
            v189 = v187;
            swift_isUniquelyReferenced_nonNull_native();
            v215 = v108;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4F60);
            v180 = v190;
            sub_1C96A7B84();
            v108 = v215;
            sub_1C94998A0(*(v215 + 48) + *(v7 + 72) * v189, type metadata accessor for LocationOfInterest);
            sub_1C949B26C(*(v108 + 56) + 40 * v189, &v222);
            sub_1C96A7B94();
          }

          else
          {
            v224 = 0;
            v222 = 0u;
            v223 = 0u;
          }

          v138 = v194;
          sub_1C94998A0(v180, type metadata accessor for LocationOfInterest);
          sub_1C9470AFC(&v222, &qword_1EC3A58E8);
        }

        sub_1C94998A0(v191, type metadata accessor for LocationOfInterest);
        v178 = v138;
        goto LABEL_98;
      }

      sub_1C94998A0(v144, type metadata accessor for LocationOfInterest);
    }

    sub_1C94996D4();
    sub_1C964B73C();
    if (*(&v217 + 1))
    {
      sub_1C949B26C(&v216, &v222);
      v146 = swift_isUniquelyReferenced_nonNull_native();
      v215 = v108;
      sub_1C949B108(&v222, v140, v146, v147, v148, v149, v150, v151, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201);
      v108 = v215;
      sub_1C94998A0(v140, type metadata accessor for LocationOfInterest);
    }

    else
    {
      sub_1C9470AFC(&v216, &qword_1EC3A58E8);
      v166 = sub_1C949B27C(v140);
      if (v167)
      {
        v168 = v166;
        swift_isUniquelyReferenced_nonNull_native();
        v215 = v108;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4F60);
        v140 = v193;
        sub_1C96A7B84();
        v108 = v215;
        sub_1C94998A0(*(v215 + 48) + *(v7 + 72) * v168, type metadata accessor for LocationOfInterest);
        sub_1C949B26C(*(v108 + 56) + 40 * v168, &v222);
        sub_1C96A7B94();
      }

      else
      {
        v224 = 0;
        v222 = 0u;
        v223 = 0u;
      }

      sub_1C94998A0(v140, type metadata accessor for LocationOfInterest);
      sub_1C9470AFC(&v222, &qword_1EC3A58E8);
      v138 = v194;
    }

    sub_1C94998A0(v138, type metadata accessor for LocationOfInterest);
    sub_1C9470AFC(&v225, &qword_1EC3A7A80);
    sub_1C9470AFC(v231, &qword_1EC3A7A80);
    sub_1C9470AFC(v83, &qword_1EC3A5930);
    sub_1C9470AFC(v100, &qword_1EC3A5930);
    v162 = &qword_1EC3A58E8;
    v152 = &v219;
    goto LABEL_102;
  }

  sub_1C9470AFC(&v225, &qword_1EC3A58E8);
  sub_1C9470AFC(&v216, &qword_1EC3A58E8);
  if (!v84)
  {
    goto LABEL_36;
  }

LABEL_39:

  v100 = v214;
  v106 = v205;
  sub_1C964B73C();
  v107 = v213;
  if (__swift_getEnumTagSinglePayload(v106, 1, v213) == 1)
  {
    sub_1C9470AFC(v106, &qword_1EC3A5930);
    v108 = v210;
    v109 = v208;
  }

  else
  {
    sub_1C9499788();
    v110 = v203;
    sub_1C94996D4();
    sub_1C964B73C();
    v108 = v210;
    v109 = v208;
    if (*(&v226 + 1))
    {
      sub_1C949B26C(&v225, &v216);
      v111 = swift_isUniquelyReferenced_nonNull_native();
      v222.n128_u64[0] = v108;
      sub_1C949B108(&v216, v110, v111, v112, v113, v114, v115, v116, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201);
      v108 = v222.n128_u64[0];
      sub_1C94998A0(v110, type metadata accessor for LocationOfInterest);
    }

    else
    {
      sub_1C9470AFC(&v225, &qword_1EC3A58E8);
      v141 = sub_1C949B27C(v110);
      if (v142)
      {
        v143 = v141;
        swift_isUniquelyReferenced_nonNull_native();
        v222.n128_u64[0] = v108;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4F60);
        sub_1C96A7B84();
        v108 = v222.n128_u64[0];
        sub_1C94998A0(*(v222.n128_u64[0] + 48) + *(v7 + 72) * v143, type metadata accessor for LocationOfInterest);
        sub_1C949B26C(*(v108 + 56) + 40 * v143, &v216);
        sub_1C96A7B94();
      }

      else
      {
        v218 = 0;
        v216 = 0u;
        v217 = 0u;
      }

      sub_1C94998A0(v203, type metadata accessor for LocationOfInterest);
      sub_1C9470AFC(&v216, &qword_1EC3A58E8);
    }

    sub_1C94998A0(v206, type metadata accessor for LocationOfInterest);
    sub_1C9470AFC(&v228, &qword_1EC3A58E8);
  }

  v125 = v207;
  sub_1C964B73C();
  if (__swift_getEnumTagSinglePayload(v125, 1, v107) == 1)
  {
    goto LABEL_73;
  }

  sub_1C9499788();
  sub_1C94996D4();
  sub_1C964B73C();
  if (*(&v229 + 1))
  {
    sub_1C949B26C(&v228, &v216);
    v153 = swift_isUniquelyReferenced_nonNull_native();
    v222.n128_u64[0] = v108;
    sub_1C949B108(&v216, v109, v153, v154, v155, v156, v157, v158, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201);
    v108 = v222.n128_u64[0];
    sub_1C94998A0(v109, type metadata accessor for LocationOfInterest);
  }

  else
  {
    sub_1C9470AFC(&v228, &qword_1EC3A58E8);
    v159 = sub_1C949B27C(v109);
    if (v160)
    {
      v161 = v159;
      swift_isUniquelyReferenced_nonNull_native();
      v222.n128_u64[0] = v108;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4F60);
      sub_1C96A7B84();
      v108 = v222.n128_u64[0];
      sub_1C94998A0(*(v222.n128_u64[0] + 48) + *(v7 + 72) * v161, type metadata accessor for LocationOfInterest);
      sub_1C949B26C(*(v108 + 56) + 40 * v161, &v216);
      sub_1C96A7B94();
    }

    else
    {
      v218 = 0;
      v216 = 0u;
      v217 = 0u;
    }

    sub_1C94998A0(v109, type metadata accessor for LocationOfInterest);
    sub_1C9470AFC(&v216, &qword_1EC3A58E8);
  }

  sub_1C94998A0(v209, type metadata accessor for LocationOfInterest);
  sub_1C9470AFC(v231, &qword_1EC3A7A80);
  sub_1C9470AFC(v83, &qword_1EC3A5930);
  sub_1C9470AFC(v100, &qword_1EC3A5930);
  v162 = &qword_1EC3A58E8;
  v152 = &v225;
LABEL_102:
  sub_1C9470AFC(v152, v162);
  return v108;
}

unint64_t sub_1C9499634()
{
  result = qword_1EDB79950;
  if (!qword_1EDB79950)
  {
    type metadata accessor for LocationOfInterest();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB79950);
  }

  return result;
}

uint64_t sub_1C94996D4()
{
  OUTLINED_FUNCTION_40_2();
  v1(0);
  OUTLINED_FUNCTION_6_3();
  v2 = OUTLINED_FUNCTION_11();
  v3(v2);
  return v0;
}

uint64_t sub_1C9499728(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_6();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1C9499788()
{
  OUTLINED_FUNCTION_40_2();
  v1(0);
  OUTLINED_FUNCTION_6_3();
  v2 = OUTLINED_FUNCTION_11();
  v3(v2);
  return v0;
}

uint64_t sub_1C94997F0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Location();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 36) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1C94998A0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_6();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t SavedLocation.locationID.getter()
{
  OUTLINED_FUNCTION_13_13();
  type metadata accessor for SavedLocation();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_2_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5450);
  OUTLINED_FUNCTION_7(v2);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_3_21();
  if (OUTLINED_FUNCTION_17_16() == 1)
  {
    OUTLINED_FUNCTION_7_16();
  }

  else
  {
    OUTLINED_FUNCTION_0_41();
  }

  v4 = type metadata accessor for Location();
  OUTLINED_FUNCTION_16_15(v4);
  if (v5)
  {
    sub_1C9470AFC(v0, &qword_1EC3A5450);
    OUTLINED_FUNCTION_15_12();
  }

  else
  {
    sub_1C96A53C4();
    OUTLINED_FUNCTION_1_29();
  }

  return OUTLINED_FUNCTION_8_17();
}

uint64_t sub_1C94999F8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v11 = a4;
  v12 = a5;
  __swift_allocate_boxed_opaque_existential_1(&v10);
  OUTLINED_FUNCTION_8_1();
  (*(v7 + 32))();
  v8 = *a3;
  *(v8 + 16) = a1 + 1;
  return sub_1C94670AC(&v10, v8 + 40 * a1 + 32);
}

void AppConfigurationLocationCoalescenceOptionsProvider.lowAccuracyMatchHomeWorkDistanceThreshold.getter()
{
  v0 = type metadata accessor for LocationsConfiguration();
  v1 = OUTLINED_FUNCTION_7(v0);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_1_54(v2, v3);
  OUTLINED_FUNCTION_0_83();
  OUTLINED_FUNCTION_2_55();
}

uint64_t sub_1C9499B10@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for AppConfiguration();
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1[5];
  v8 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v7);
  (*(v8 + 8))(v7, v8);
  sub_1C9499BEC(&v6[*(v4 + 72)], a1);
  return sub_1C9499C50(v6, type metadata accessor for AppConfiguration);
}

uint64_t sub_1C9499BEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationsConfiguration();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C9499C50(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C9499CB0(uint64_t a1, uint64_t a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v25[1] = a5;
  v26 = a1;
  v27 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5930);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v25 - v12;
  v14 = type metadata accessor for LocationOfInterest();
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = v25 - v18;
  sub_1C964B73C();
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    sub_1C9470AFC(v13, &qword_1EC3A5930);
    v20 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    sub_1C9499788();
    v20 = sub_1C949A0BC(v19, a6, a3);
    sub_1C94998A0(v19, type metadata accessor for LocationOfInterest);
  }

  sub_1C964B73C();
  if (__swift_getEnumTagSinglePayload(v11, 1, v14) == 1)
  {
    sub_1C9470AFC(v11, &qword_1EC3A5930);
    v21 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    sub_1C9499788();
    v21 = sub_1C949A0BC(v17, a6, a3);
    sub_1C94998A0(v17, type metadata accessor for LocationOfInterest);
  }

  sub_1C949B058(v20, &v28);

  if (v29)
  {
    sub_1C9469B6C(&v28, v26);
    sub_1C949B0D8(&v28);
  }

  else
  {
    sub_1C9470AFC(&v28, &qword_1EC3A5920);
    v22 = v26;
    *(v26 + 32) = 0;
    *v22 = 0u;
    v22[1] = 0u;
  }

  sub_1C949B058(v21, &v28);

  if (v29)
  {
    sub_1C9469B6C(&v28, v27);
    return sub_1C949B0D8(&v28);
  }

  else
  {
    result = sub_1C9470AFC(&v28, &qword_1EC3A5920);
    v24 = v27;
    *(v27 + 32) = 0;
    *v24 = 0u;
    v24[1] = 0u;
  }

  return result;
}

uint64_t sub_1C949A008(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Location();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1C949A0BC(uint64_t a1, uint64_t a2, double a3)
{
  v4[2] = a1;
  *&v4[3] = a3;
  v5 = sub_1C949A190(sub_1C949A498, v4, a2);
  sub_1C96A53C4();
  sub_1C949ADB0(&v5, sub_1C949AD9C, &type metadata for LocationCoalescenceProvider.LocationsMatchItem, sub_1C9649AD8, sub_1C949AF58);

  return v5;
}

uint64_t sub_1C949A190(void (*a1)(__int128 *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = *(a3 + 16);
  v7 = a3 + 32;
  v8 = MEMORY[0x1E69E7CC0];
  v24 = v6;
  for (i = a3 + 32; ; v7 = i)
  {
    v9 = ~v5;
    v10 = v7 + 40 * v5;
    v11 = v6 - v5;
    if (v6 == v5)
    {
      break;
    }

    while (1)
    {
      a1(&v21, v10);
      if (v3)
      {

        return v8;
      }

      if (*(&v22 + 1))
      {
        break;
      }

      sub_1C9470AFC(&v21, &qword_1EC3A5920);
      --v9;
      v10 += 40;
      if (!--v11)
      {
        return v8;
      }
    }

    v18 = v21;
    v19 = v22;
    v20 = v23;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C949AB94();
      v8 = v14;
    }

    v12 = *(v8 + 16);
    if (v12 >= *(v8 + 24) >> 1)
    {
      sub_1C949AB94();
      v8 = v15;
    }

    v5 = -v9;
    *(v8 + 16) = v12 + 1;
    v13 = (v8 + 48 * v12);
    v13[3] = v19;
    v13[4] = v20;
    v13[2] = v18;
    v6 = v24;
  }

  return v8;
}

void sub_1C949A310(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v7 = a2 + *(type metadata accessor for LocationOfInterest() + 20);
  v8 = Location.clLocation.getter();
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  v11 = (*(v10 + 8))(v9, v10);
  v13 = [objc_allocWithZone(MEMORY[0x1E6985C40]) initWithLatitude:v11 longitude:v12];
  [v8 distanceFromLocation_];
  v15 = v14;

  if (v15 > a4)
  {
    goto LABEL_2;
  }

  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  if ((*(v17 + 16))(v16, v17) == *(v7 + 16) && v18 == *(v7 + 24))
  {
  }

  else
  {
    v20 = sub_1C96A7DE4();

    if ((v20 & 1) == 0)
    {
LABEL_2:
      *(a3 + 16) = 0u;
      *(a3 + 32) = 0u;
      *a3 = 0u;
      return;
    }
  }

  sub_1C9469B6C(a1, a3);
  *(a3 + 40) = v15;
}

double SavedLocation.coordinate.getter()
{
  v2 = type metadata accessor for Location();
  v3 = OUTLINED_FUNCTION_7(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2_1();
  type metadata accessor for SavedLocation();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_25_21(v5);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    memcpy(__dst, v0, sizeof(__dst));
    v6 = *&__dst[4];
    sub_1C96A53C4();
    sub_1C96A53C4();
    sub_1C96A53C4();
    sub_1C955FE40(__dst);
  }

  else
  {
    OUTLINED_FUNCTION_1_73();
    v7 = OUTLINED_FUNCTION_11();
    sub_1C949A7E4(v7, v8, v9);
    v6 = *(v1 + 32);
    sub_1C96A53C4();
    sub_1C96A53C4();
    sub_1C96A53C4();
    OUTLINED_FUNCTION_0_98();
    sub_1C949A9FC(v1, v10);
  }

  return v6;
}

uint64_t sub_1C949A614(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SavedLocation();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C949A678(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_6();
  v4 = OUTLINED_FUNCTION_11();
  v5(v4);
  return a2;
}

uint64_t sub_1C949A6D4()
{
  OUTLINED_FUNCTION_40_2();
  v2(0);
  OUTLINED_FUNCTION_6();
  (*(v3 + 32))(v0, v1);
  return v0;
}

uint64_t sub_1C949A730()
{
  OUTLINED_FUNCTION_40_2();
  v1(0);
  OUTLINED_FUNCTION_6();
  v2 = OUTLINED_FUNCTION_11();
  v3(v2);
  return v0;
}

uint64_t sub_1C949A788(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_6();
  v4 = OUTLINED_FUNCTION_11();
  v5(v4);
  return a2;
}

uint64_t sub_1C949A7E4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_6();
  v4 = OUTLINED_FUNCTION_11();
  v5(v4);
  return a2;
}

uint64_t sub_1C949A840()
{
  OUTLINED_FUNCTION_40_2();
  v1(0);
  OUTLINED_FUNCTION_6();
  v2 = OUTLINED_FUNCTION_11();
  v3(v2);
  return v0;
}

uint64_t sub_1C949A898(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_6();
  v4 = OUTLINED_FUNCTION_11();
  v5(v4);
  return a2;
}

uint64_t sub_1C949A8F4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_6();
  v4 = OUTLINED_FUNCTION_11();
  v5(v4);
  return a2;
}

uint64_t sub_1C949A950(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_6();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C949A9A8()
{
  v1 = OUTLINED_FUNCTION_28_4();
  v2(v1);
  OUTLINED_FUNCTION_6();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_1C949A9FC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_6();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t SavedLocation.locationName.getter()
{
  OUTLINED_FUNCTION_13_13();
  v1 = type metadata accessor for Location();
  v2 = OUTLINED_FUNCTION_7(v1);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &__dst[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SavedLocation();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3_21();
  if (OUTLINED_FUNCTION_17_16() == 1)
  {
    memcpy(__dst, v0, sizeof(__dst));
    v6 = __dst[2];
    sub_1C96A53C4();
    sub_1C96A53C4();
    sub_1C96A53C4();
    sub_1C955FE40(__dst);
  }

  else
  {
    OUTLINED_FUNCTION_0_41();
    v6 = *(v4 + 2);
    sub_1C96A53C4();
    sub_1C96A53C4();
    sub_1C96A53C4();
    OUTLINED_FUNCTION_1_29();
  }

  return v6;
}

void sub_1C949AB94()
{
  OUTLINED_FUNCTION_19_3();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_8_7(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_6_5();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4C88);
      v6 = swift_allocObject();
      OUTLINED_FUNCTION_4_8(v6);
      if (v1)
      {
LABEL_8:
        v7 = OUTLINED_FUNCTION_9_4();
        sub_1C9522A90(v7, v8, v9);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_14_4();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_18_5();
  if (!v4)
  {
    OUTLINED_FUNCTION_7_6();
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_1C949AC64(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

void sub_1C949ACA4(char a1, uint64_t a2, char a3, char *a4)
{
  if (a3)
  {
    OUTLINED_FUNCTION_8_7();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_18_5();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_7_6();
    }
  }

  else
  {
    v6 = a2;
  }

  v9 = *(a4 + 2);
  if (v6 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4C88);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    OUTLINED_FUNCTION_107_0(v12);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || &v14[48 * v9] <= v13)
    {
      memmove(v13, v14, 48 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

uint64_t sub_1C949ADB0(uint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3, void (*a4)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t))
{
  v10 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = a2(v10);
  }

  v11 = *(v10 + 16);
  v13[0] = v10 + 32;
  v13[1] = v11;
  result = sub_1C949AE4C(v13, a3, a4, a5);
  *a1 = v10;
  return result;
}

uint64_t sub_1C949AE4C(uint64_t a1, uint64_t a2, void (*a3)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a4)(void, uint64_t, uint64_t, uint64_t))
{
  v7 = *(a1 + 8);
  result = sub_1C96A7DA4();
  if (result < v7)
  {
    if (v7 >= -1)
    {
      v9 = result;
      v10 = v7 / 2;
      if (v7 <= 1)
      {
        v11 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v11 = sub_1C96A7304();
        *(v11 + 16) = v10;
      }

      v12[0] = v11 + 32;
      v12[1] = v10;
      a3(v12, v13, a1, v9);
      *(v11 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v7 < 0)
  {
    goto LABEL_12;
  }

  if (v7)
  {
    return a4(0, v7, 1, a1);
  }

  return result;
}

uint64_t sub_1C949AF58(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 48 * a3;
    v8 = result - a3;
    while (2)
    {
      v9 = v8;
      v10 = v7;
      do
      {
        sub_1C949B07C(v10, v21);
        v11 = v10 - 3;
        sub_1C949B07C((v10 - 3), v19);
        v12 = v22;
        v13 = v20;
        sub_1C949B0D8(v19);
        result = sub_1C949B0D8(v21);
        if (v12 >= v13)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        v15 = v10[1];
        v14 = v10[2];
        v16 = *v10;
        v17 = *(v10 - 2);
        *v10 = *v11;
        v10[1] = v17;
        v10[2] = *(v10 - 1);
        *v11 = v16;
        *(v10 - 2) = v15;
        v10 -= 3;
        v11[2] = v14;
      }

      while (!__CFADD__(v9++, 1));
      ++v4;
      v7 += 48;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

double sub_1C949B058@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (*(a1 + 16))
  {
    sub_1C949B07C(a1 + 32, a2);
  }

  else
  {
    result = 0.0;
    a2[1] = 0u;
    a2[2] = 0u;
    *a2 = 0u;
  }

  return result;
}

void sub_1C949B108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_103();
  a19 = v23;
  a20 = v24;
  OUTLINED_FUNCTION_13_5();
  v25 = type metadata accessor for LocationOfInterest();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &a9 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C949B27C(v22);
  OUTLINED_FUNCTION_0_10();
  if (v30)
  {
    __break(1u);
    goto LABEL_11;
  }

  v31 = v28;
  v32 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4F60);
  if ((sub_1C96A7B84() & 1) == 0)
  {
    goto LABEL_5;
  }

  v33 = sub_1C949B27C(v22);
  if ((v32 & 1) != (v34 & 1))
  {
LABEL_11:
    sub_1C96A7E44();
    __break(1u);
    return;
  }

  v31 = v33;
LABEL_5:
  v35 = *v21;
  if (v32)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(*(v35 + 56) + 40 * v31);
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_101();

    sub_1C949B26C(v36, v37);
  }

  else
  {
    sub_1C949B6DC(v22, v27);
    sub_1C949B740(v31, v27, v20, v35);
    OUTLINED_FUNCTION_101();
  }
}

__n128 *sub_1C949B26C(uint64_t a1, __n128 *a2)
{
  v2 = *a1;
  v3 = *(a1 + 16);
  a2[2].n128_u64[0] = *(a1 + 32);
  return OUTLINED_FUNCTION_19_5(v2, v3, a1, a2);
}

unint64_t sub_1C949B27C(unsigned __int8 *a1)
{
  OUTLINED_FUNCTION_21_6();
  LocationOfInterest.hash(into:)();
  v2 = sub_1C96A7F24();

  return sub_1C949B4B0(a1, v2);
}

uint64_t LocationOfInterest.hash(into:)()
{
  MEMORY[0x1CCA8D880](*v0);
  v1 = type metadata accessor for LocationOfInterest();
  memcpy(__dst, &v0[v1[5]], sizeof(__dst));
  Location.Identifier.hash(into:)();
  sub_1C96A7F04();
  if (*&v0[v1[7] + 8])
  {
    sub_1C96A7F04();
    sub_1C96A7144();
  }

  else
  {
    sub_1C96A7F04();
  }

  if (*&v0[v1[8] + 8])
  {
    sub_1C96A7F04();
    sub_1C96A7144();
  }

  else
  {
    sub_1C96A7F04();
  }

  return sub_1C96A7144();
}

uint64_t Location.Identifier.hash(into:)()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  sub_1C96A7144();
  sub_1C96A7144();

  if (v1 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v1;
  }

  MEMORY[0x1CCA8D8A0](*&v3);
  if (v2 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v2;
  }

  return MEMORY[0x1CCA8D8A0](*&v4);
}

unint64_t sub_1C949B4B0(unsigned __int8 *a1, uint64_t a2)
{
  v5 = type metadata accessor for LocationOfInterest();
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = *a1;
    v13 = *(v6 + 72);
    do
    {
      sub_1C949B6DC(*(v2 + 48) + v13 * v10, v8);
      if (v12 != *v8 || (static Location.== infix(_:_:)(&v8[v5[5]], &a1[v5[5]]) & 1) == 0 || v8[v5[6]] != a1[v5[6]])
      {
        goto LABEL_6;
      }

      v14 = v5[7];
      v15 = &v8[v14];
      v16 = *&v8[v14 + 8];
      v17 = &a1[v14];
      v18 = *(v17 + 1);
      if (v16)
      {
        if (!v18)
        {
          goto LABEL_6;
        }

        v19 = *v15 == *v17 && v16 == v18;
        if (!v19 && (sub_1C96A7DE4() & 1) == 0)
        {
          goto LABEL_6;
        }
      }

      else if (v18)
      {
        goto LABEL_6;
      }

      v20 = v5[8];
      v21 = &v8[v20];
      v22 = *&v8[v20 + 8];
      v23 = &a1[v20];
      v24 = *(v23 + 1);
      if (v22)
      {
        if (!v24)
        {
          goto LABEL_6;
        }

        v25 = *v21 == *v23 && v22 == v24;
        if (!v25 && (sub_1C96A7DE4() & 1) == 0)
        {
          goto LABEL_6;
        }
      }

      else if (v24)
      {
        goto LABEL_6;
      }

      v26 = v5[9];
      v27 = *&v8[v26];
      v28 = *&v8[v26 + 8];
      v29 = &a1[v26];
      v30 = v27 == *v29 && v28 == *(v29 + 1);
      if (v30 || (sub_1C96A7DE4() & 1) != 0)
      {
        sub_1C94C5A14(v8);
        return v10;
      }

LABEL_6:
      sub_1C94C5A14(v8);
      v10 = (v10 + 1) & v11;
    }

    while (((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

uint64_t sub_1C949B6DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationOfInterest();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1C949B740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_17_5();
  OUTLINED_FUNCTION_3_52(v7, v8, v9, v10);
  type metadata accessor for LocationOfInterest();
  OUTLINED_FUNCTION_7_44();
  sub_1C9499788();
  sub_1C949B26C(a3, (*(a4 + 56) + 40 * v4));
  OUTLINED_FUNCTION_18_31();
  if (v12)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v11;
  }
}

void sub_1C949B7D0()
{
  OUTLINED_FUNCTION_103();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  if (v10)
  {
    OUTLINED_FUNCTION_8_7();
    if (v12 != v13)
    {
      OUTLINED_FUNCTION_18_5();
      if (v12)
      {
LABEL_24:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_7_6();
    }
  }

  else
  {
    v11 = v0;
  }

  v14 = *(v7 + 16);
  if (v11 <= v14)
  {
    v15 = *(v7 + 16);
  }

  else
  {
    v15 = v11;
  }

  if (!v15)
  {
    v21 = MEMORY[0x1E69E7CC0];
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(v1);
  v16 = v5(0);
  OUTLINED_FUNCTION_9(v16);
  v18 = *(v17 + 72);
  v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v21 = swift_allocObject();
  v22 = _swift_stdlib_malloc_size(v21);
  if (!v18)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v22 - v20 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_23;
  }

  v21[2] = v14;
  v21[3] = 2 * ((v22 - v20) / v18);
LABEL_18:
  v24 = *(v5(0) - 8);
  if (v9)
  {
    v25 = (*(v24 + 80) + 32) & ~*(v24 + 80);
    sub_1C94A0500(v7 + v25, v14, v21 + v25, v3);
    *(v7 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  OUTLINED_FUNCTION_101();
}

uint64_t sub_1C949B9C4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v64 = a4;
  v68 = a3;
  v71 = a1;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6E38);
  v5 = MEMORY[0x1EEE9AC00](v70);
  v63 = v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v67 = v59 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v60 = v59 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = v59 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = v59 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v61 = v59 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5930);
  v19 = MEMORY[0x1EEE9AC00](v18 - 8);
  v62 = v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v65 = v59 - v21;
  v66 = type metadata accessor for LocationOfInterest();
  v69 = *(v66 - 8);
  v22 = MEMORY[0x1EEE9AC00](v66);
  v59[0] = v59 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v59[1] = v59 - v24;
  v25 = 1 << *(a2 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & *(a2 + 64);
  v28 = (v25 + 63) >> 6;
  result = sub_1C96A53C4();
  v30 = 0;
  if (v27)
  {
    while (1)
    {
      v31 = v30;
LABEL_8:
      sub_1C94996D4();
      v32 = v70;
      sub_1C9469B6C(*(a2 + 56) + 40 * (__clz(__rbit64(v27)) | (v31 << 6)), &v16[*(v70 + 48)]);
      sub_1C949C100(v16, v13);
      v33 = &v13[*(v32 + 48)];
      v34 = *(v33 + 3);
      v35 = *(v33 + 4);
      __swift_project_boxed_opaque_existential_1(v33, v34);
      if (sub_1C949C170(v71, v34, v35))
      {
        break;
      }

      v27 &= v27 - 1;
      result = sub_1C9470AFC(v13, &qword_1EC3A6E38);
      v30 = v31;
      if (!v27)
      {
        goto LABEL_5;
      }
    }

    v52 = v13;
    v53 = v61;
    sub_1C949C100(v52, v61);
    v54 = *(v70 + 48);
    v36 = v65;
    sub_1C9499788();
    v55 = v66;
    __swift_storeEnumTagSinglePayload(v36, 0, 1, v66);
    __swift_destroy_boxed_opaque_existential_1Tm(v53 + v54);
    if (__swift_getEnumTagSinglePayload(v36, 1, v55) != 1)
    {
      goto LABEL_26;
    }

LABEL_12:
    sub_1C9470AFC(v36, &qword_1EC3A5930);
    v37 = v68 + 64;
    v38 = 1 << *(v68 + 32);
    v39 = -1;
    if (v38 < 64)
    {
      v39 = ~(-1 << v38);
    }

    v40 = v39 & *(v68 + 64);
    v41 = (v38 + 63) >> 6;
    result = sub_1C96A53C4();
    v42 = 0;
    v43 = v63;
    if (v40)
    {
      while (1)
      {
        v44 = v42;
LABEL_19:
        v45 = v68;
        v46 = v67;
        sub_1C94996D4();
        v47 = v70;
        sub_1C9469B6C(*(v45 + 56) + 40 * (__clz(__rbit64(v40)) | (v44 << 6)), v46 + *(v70 + 48));
        sub_1C949C100(v46, v43);
        v48 = (v43 + *(v47 + 48));
        v49 = v48[3];
        v50 = v48[4];
        __swift_project_boxed_opaque_existential_1(v48, v49);
        if (sub_1C949C170(v71, v49, v50))
        {
          break;
        }

        v40 &= v40 - 1;
        result = sub_1C9470AFC(v43, &qword_1EC3A6E38);
        v42 = v44;
        if (!v40)
        {
          goto LABEL_16;
        }
      }

      v56 = v60;
      sub_1C949C100(v43, v60);
      v57 = *(v70 + 48);
      v51 = v62;
      sub_1C9499788();
      v58 = v66;
      __swift_storeEnumTagSinglePayload(v51, 0, 1, v66);
      __swift_destroy_boxed_opaque_existential_1Tm(v56 + v57);
      if (__swift_getEnumTagSinglePayload(v51, 1, v58) == 1)
      {
LABEL_23:
        sub_1C9470AFC(v51, &qword_1EC3A5930);
        sub_1C9469B6C(v71, v64);
        type metadata accessor for LocationCoalescenceProvider.LocationLabelingResult(0);
        type metadata accessor for LocationCoalescenceProvider.Labeling(0);
        return swift_storeEnumTagMultiPayload();
      }

LABEL_26:
      sub_1C9499788();
      sub_1C9469B6C(v71, v64);
      type metadata accessor for LocationCoalescenceProvider.LocationLabelingResult(0);
      sub_1C9499788();
      type metadata accessor for LocationCoalescenceProvider.Labeling(0);
      return swift_storeEnumTagMultiPayload();
    }

LABEL_16:
    while (1)
    {
      v44 = v42 + 1;
      if (__OFADD__(v42, 1))
      {
        break;
      }

      if (v44 >= v41)
      {

        v51 = v62;
        __swift_storeEnumTagSinglePayload(v62, 1, 1, v66);
        goto LABEL_23;
      }

      v40 = *(v37 + 8 * v44);
      ++v42;
      if (v40)
      {
        goto LABEL_19;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v31 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v31 >= v28)
      {

        v36 = v65;
        __swift_storeEnumTagSinglePayload(v65, 1, 1, v66);
        goto LABEL_12;
      }

      v27 = *(a2 + 64 + 8 * v31);
      ++v30;
      if (v27)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C949C100(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6E38);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C949C170(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = (*(a3 + 8))(a2, a3);
  v6 = v5;
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  if (v4 != (*(v8 + 8))(v7, v8) || v6 != v9)
  {
    goto LABEL_5;
  }

  v12 = OUTLINED_FUNCTION_13_9();
  v13(v12);
  OUTLINED_FUNCTION_11_39();
  v14 = OUTLINED_FUNCTION_21_28();
  if (v8 == v15(v14) && v7 == v16)
  {
  }

  else
  {
    v8 = OUTLINED_FUNCTION_16_33();

    if ((v8 & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  v18 = OUTLINED_FUNCTION_13_9();
  v19(v18);
  OUTLINED_FUNCTION_11_39();
  v20 = OUTLINED_FUNCTION_21_28();
  v22 = v21(v20);
  if (v7)
  {
    if (!v23)
    {
      goto LABEL_42;
    }

    if (v8 == v22 && v7 == v23)
    {
    }

    else
    {
      v8 = OUTLINED_FUNCTION_16_33();

      if ((v8 & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else if (v23)
  {
    goto LABEL_44;
  }

  v25 = OUTLINED_FUNCTION_13_9();
  v26(v25);
  OUTLINED_FUNCTION_11_39();
  v27 = OUTLINED_FUNCTION_21_28();
  v29 = v28(v27);
  if (!v7)
  {
    if (v30)
    {
      goto LABEL_44;
    }

    goto LABEL_35;
  }

  if (!v30)
  {
LABEL_42:
    v11 = 0;
LABEL_45:

    return v11 & 1;
  }

  if (v8 == v29 && v7 == v30)
  {

LABEL_35:
    v33 = OUTLINED_FUNCTION_13_9();
    v35 = v34(v33);
    v37 = v36;
    v38 = a1[3];
    v39 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v38);
    v40 = (*(v39 + 40))(v38, v39);
    if (v37)
    {
      if (v41)
      {
        if (v35 == v40 && v37 == v41)
        {

          v11 = 1;
        }

        else
        {
          v11 = sub_1C96A7DE4();
        }

        goto LABEL_45;
      }

      goto LABEL_42;
    }

    if (!v41)
    {
      v11 = 1;
      return v11 & 1;
    }

LABEL_44:
    v11 = 0;
    goto LABEL_45;
  }

  v32 = OUTLINED_FUNCTION_16_33();

  if (v32)
  {
    goto LABEL_35;
  }

LABEL_5:
  v11 = 0;
  return v11 & 1;
}

uint64_t SavedLocation.locationPreciseName.getter()
{
  OUTLINED_FUNCTION_13_13();
  type metadata accessor for SavedLocation();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_2_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5450);
  OUTLINED_FUNCTION_7(v2);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_3_21();
  if (OUTLINED_FUNCTION_17_16() == 1)
  {
    OUTLINED_FUNCTION_7_16();
  }

  else
  {
    OUTLINED_FUNCTION_0_41();
  }

  v4 = type metadata accessor for Location();
  OUTLINED_FUNCTION_5_20(v4);
  if (v5)
  {
    sub_1C9470AFC(v0, &qword_1EC3A5450);
    OUTLINED_FUNCTION_15_12();
  }

  else
  {
    OUTLINED_FUNCTION_14_15();
    OUTLINED_FUNCTION_1_29();
  }

  return OUTLINED_FUNCTION_8_17();
}

uint64_t SavedLocation.locationSecondaryName.getter()
{
  OUTLINED_FUNCTION_13_13();
  type metadata accessor for SavedLocation();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_2_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5450);
  OUTLINED_FUNCTION_7(v2);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_3_21();
  if (OUTLINED_FUNCTION_17_16() == 1)
  {
    OUTLINED_FUNCTION_7_16();
  }

  else
  {
    OUTLINED_FUNCTION_0_41();
  }

  v4 = type metadata accessor for Location();
  OUTLINED_FUNCTION_5_20(v4);
  if (v5)
  {
    sub_1C9470AFC(v0, &qword_1EC3A5450);
    OUTLINED_FUNCTION_15_12();
  }

  else
  {
    OUTLINED_FUNCTION_14_15();
    OUTLINED_FUNCTION_1_29();
  }

  return OUTLINED_FUNCTION_8_17();
}

void sub_1C949C668()
{
  OUTLINED_FUNCTION_19_3();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_8_7(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_6_5();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4C98);
      v6 = OUTLINED_FUNCTION_20_3();
      OUTLINED_FUNCTION_4_8(v6);
      if (v1)
      {
LABEL_8:
        v7 = OUTLINED_FUNCTION_9_4();
        sub_1C949DBFC(v7);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5400);
    OUTLINED_FUNCTION_13_2();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_18_5();
  if (!v4)
  {
    OUTLINED_FUNCTION_7_6();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1C949C724(char a1, uint64_t a2, char a3, char *a4)
{
  if (a3)
  {
    OUTLINED_FUNCTION_8_7();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_18_5();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_7_6();
    }
  }

  else
  {
    v6 = a2;
  }

  v9 = *(a4 + 2);
  if (v6 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A51C0);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    OUTLINED_FUNCTION_107_0(v12);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || &v14[56 * v9] <= v13)
    {
      memmove(v13, v14, 56 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

uint64_t sub_1C949C838(void (*a1)(_OWORD *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (!v5)
  {
    return v6;
  }

  v21 = MEMORY[0x1E69E7CC0];
  sub_1C949C818(0, v5, 0);
  v6 = v21;
  v9 = *(type metadata accessor for LocationCoalescenceProvider.LocationLabelingResult(0) - 8);
  v10 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v11 = *(v9 + 72);
  while (1)
  {
    a1(v19, v10);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v21 = v6;
    v13 = *(v6 + 16);
    v12 = *(v6 + 24);
    if (v13 >= v12 >> 1)
    {
      sub_1C949C818(v12 > 1, v13 + 1, 1);
      v6 = v21;
    }

    *(v6 + 16) = v13 + 1;
    v14 = v6 + 56 * v13;
    v15 = v19[0];
    v16 = v19[1];
    v17 = v19[2];
    *(v14 + 80) = v20;
    *(v14 + 48) = v16;
    *(v14 + 64) = v17;
    *(v14 + 32) = v15;
    v10 += v11;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C949C9C0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for LocationOfInterest();
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v50[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v50[-1] - v11;
  v13 = type metadata accessor for LocationCoalescenceProvider.Labeling(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v50[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LocationCoalescenceProvider.LocationLabelingResult(0);
  sub_1C94996D4();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_1C9499788();
    sub_1C94996D4();
    v51 = type metadata accessor for LocationCoalescenceProvider.LocationWrapper(0);
    v52 = &off_1F4909DA0;
    __swift_allocate_boxed_opaque_existential_1(v50);
    sub_1C94996D4();
    sub_1C94998A0(v10, type metadata accessor for LocationOfInterest);
    v21 = v3[5];
    v22 = v3[6];
    __swift_project_boxed_opaque_existential_1(v3 + 2, v21);
    v19 = (*(v22 + 32))(v21, v22);
    v20 = v12;
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_1C9469B6C(a1, v50);
    v17 = v3[5];
    v18 = v3[6];
    __swift_project_boxed_opaque_existential_1(v3 + 2, v17);
    v19 = (*(v18 + 32))(v17, v18);
    v20 = v15;
LABEL_5:
    sub_1C94998A0(v20, type metadata accessor for LocationOfInterest);
    goto LABEL_7;
  }

  sub_1C9469B6C(a1, v50);
  v23 = v3[5];
  v24 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v23);
  v19 = (*(v24 + 24))(v23, v24);
LABEL_7:
  v25 = v51;
  v26 = v52;
  __swift_project_boxed_opaque_existential_1(v50, v51);
  v27 = (v26[2])(v25, v26);
  v29 = v28;
  v30 = a2[3];
  v31 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v30);
  if (v27 == (*(v31 + 16))(v30, v31) && v29 == v32)
  {
  }

  else
  {
    v34 = sub_1C96A7DE4();

    if ((v34 & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v50);
      goto LABEL_15;
    }
  }

  v35 = v51;
  v36 = v52;
  __swift_project_boxed_opaque_existential_1(v50, v51);
  v37 = (v36[1])(v35, v36);
  v39 = [objc_allocWithZone(MEMORY[0x1E6985C40]) initWithLatitude:v37 longitude:v38];
  v40 = a2[3];
  v41 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v40);
  v42 = (*(v41 + 8))(v40, v41);
  v44 = [objc_allocWithZone(MEMORY[0x1E6985C40]) initWithLatitude:v42 longitude:v43];
  [v39 distanceFromLocation_];
  v46 = v45;

  __swift_destroy_boxed_opaque_existential_1Tm(v50);
  if (v46 <= v19)
  {
    result = sub_1C9469B6C(a1, a3);
    *(a3 + 40) = v46;
    v48 = 1;
    goto LABEL_17;
  }

LABEL_15:
  result = sub_1C9469B6C(a1, a3);
  v48 = 0;
LABEL_17:
  *(a3 + 48) = v48;
  return result;
}

uint64_t sub_1C949CEB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void AppConfigurationLocationCoalescenceOptionsProvider.locationOfInterestDedupingDistanceThreshold.getter()
{
  v0 = type metadata accessor for LocationsConfiguration();
  v1 = OUTLINED_FUNCTION_7(v0);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_1_54(v2, v3);
  OUTLINED_FUNCTION_0_83();
  OUTLINED_FUNCTION_2_55();
}

void *CurrentLocation.identifier.getter@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for Location();
  v4 = OUTLINED_FUNCTION_7(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_35_4();
  type metadata accessor for CurrentLocation();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_14();
  v8 = v7 - v6;
  sub_1C949D15C(v1, v7 - v6);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    if (qword_1EDB79F80 != -1)
    {
      OUTLINED_FUNCTION_4_35();
    }

    memcpy(__dst, &qword_1EDB79F88, sizeof(__dst));
    v13 = OUTLINED_FUNCTION_11();
    memcpy(v13, v14, 0x48uLL);
    return sub_1C95087DC(__dst, v15);
  }

  else
  {
    OUTLINED_FUNCTION_11_23();
    sub_1C949A788(v8, v1, v9);
    memcpy(__dst, v1, sizeof(__dst));
    sub_1C95087DC(__dst, v15);
    v10 = OUTLINED_FUNCTION_21_17();
    sub_1C948E940(v10, v11);
    return memcpy(a1, __dst, 0x48uLL);
  }
}

uint64_t sub_1C949D15C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CurrentLocation();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t CurrentLocation.locationName.getter()
{
  CurrentLocation.identifier.getter(v1);
  sub_1C96A53C4();
  sub_1C953AEDC(v1);
  return OUTLINED_FUNCTION_11();
}

uint64_t sub_1C949D204()
{
  v1 = *(v0 + 16);
  sub_1C96A53C4();
  return v1;
}