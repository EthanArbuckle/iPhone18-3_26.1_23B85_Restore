uint64_t sub_1DD549AC0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x6C506E6F73726570 && a2 == 0xEF656D614E656361;
  if (v3 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000014 && 0x80000001DD672960 == a2;
    if (v6 || (sub_1DD640CD8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6C506E6F73726570 && a2 == 0xED00006449656361;
      if (v7 || (sub_1DD640CD8() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x746E61707563636FLL && a2 == 0xE800000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_1DD640CD8();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_1DD549C30(char a1)
{
  result = 0x6C506E6F73726570;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000014;
      break;
    case 3:
      result = 0x746E61707563636FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD549CC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD549AC0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD549CF0(uint64_t a1)
{
  v2 = sub_1DD54A3CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD549D2C(uint64_t a1)
{
  v2 = sub_1DD54A3CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PersonPlace.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE910, &qword_1DD659DF0);
  v4 = OUTLINED_FUNCTION_0(v3);
  v21 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v9 = v17 - v8;
  v10 = v1[1];
  v19 = *v1;
  v25 = *(v1 + 8);
  v11 = *(v1 + 18);
  v18 = *(v1 + 19);
  v12 = v1[3];
  v17[0] = v1[4];
  v17[1] = v12;
  memcpy(__dst, v1 + 5, 0xA6uLL);
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD54A3CC();

  sub_1DD640EF8();
  v23[0] = v19;
  v23[1] = v10;
  BYTE2(v23[2]) = v11;
  LOWORD(v23[2]) = v25;
  v22[0] = 0;
  sub_1DD54A420();
  v14 = v20;
  sub_1DD640C08();
  if (v14)
  {

    return (*(v21 + 8))(v9, v3);
  }

  else
  {
    v16 = v21;

    LOBYTE(v23[0]) = v18;
    v22[0] = 1;
    sub_1DD54A474();
    sub_1DD640C08();
    LOBYTE(v23[0]) = 2;
    sub_1DD640BC8();
    memcpy(v23, __dst, 0xA6uLL);
    v26 = 3;
    sub_1DD54A35C(__dst, v22);
    sub_1DD54A4C8();
    sub_1DD640C08();
    memcpy(v22, v23, 0xA6uLL);
    sub_1DD3ADFD0(v22, &qword_1ECCDE900, &qword_1DD659DE0);
    return (*(v16 + 8))(v9, v3);
  }
}

uint64_t PersonPlace.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE938, &qword_1DD659DF8);
  v5 = OUTLINED_FUNCTION_0(v21);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD54A3CC();
  sub_1DD640ED8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = a2;
  sub_1DD54A51C();
  OUTLINED_FUNCTION_1_94();
  v18 = v23;
  v19 = v24;
  LOBYTE(v22[0]) = 1;
  sub_1DD54A570();
  OUTLINED_FUNCTION_1_94();
  v16 = v25;
  v33 = v26;
  v9 = v23;
  LOBYTE(v23) = 2;
  v15 = sub_1DD640AD8();
  v17 = v10;
  v34 = 3;
  sub_1DD54A5C4();
  OUTLINED_FUNCTION_1_94();
  v11 = v16 | (v33 << 16);
  v12 = OUTLINED_FUNCTION_7_2();
  v13(v12);
  memcpy(__dst, v31, sizeof(__dst));
  v22[0] = v18;
  v22[1] = v19;
  BYTE2(v22[2]) = BYTE2(v11);
  LOWORD(v22[2]) = v11;
  BYTE3(v22[2]) = v9;
  v22[3] = v15;
  v22[4] = v17;
  memcpy(&v22[5], v31, 0xA6uLL);
  memcpy(v20, v22, 0xCEuLL);
  sub_1DD54A618(v22, &v23);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v23 = v18;
  v24 = v19;
  v26 = BYTE2(v11);
  v25 = v11;
  v27 = v9;
  v28 = v15;
  v29 = v17;
  memcpy(v30, __dst, sizeof(v30));
  return sub_1DD54A650(&v23);
}

uint64_t sub_1DD54A35C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE900, &qword_1DD659DE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DD54A3CC()
{
  result = qword_1ECCDE918;
  if (!qword_1ECCDE918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE918);
  }

  return result;
}

unint64_t sub_1DD54A420()
{
  result = qword_1ECCDE920;
  if (!qword_1ECCDE920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE920);
  }

  return result;
}

unint64_t sub_1DD54A474()
{
  result = qword_1ECCDE928;
  if (!qword_1ECCDE928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE928);
  }

  return result;
}

unint64_t sub_1DD54A4C8()
{
  result = qword_1ECCDE930;
  if (!qword_1ECCDE930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE930);
  }

  return result;
}

unint64_t sub_1DD54A51C()
{
  result = qword_1ECCDE940;
  if (!qword_1ECCDE940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE940);
  }

  return result;
}

unint64_t sub_1DD54A570()
{
  result = qword_1ECCDE948;
  if (!qword_1ECCDE948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE948);
  }

  return result;
}

unint64_t sub_1DD54A5C4()
{
  result = qword_1ECCDE950;
  if (!qword_1ECCDE950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE950);
  }

  return result;
}

unint64_t sub_1DD54A684()
{
  result = qword_1ECCDE958;
  if (!qword_1ECCDE958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE958);
  }

  return result;
}

uint64_t sub_1DD54A6E0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 206))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DD54A734(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
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
    *(result + 204) = 0;
    *(result + 200) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 206) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 206) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PersonPlace.Value(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PersonPlace.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD54A98C()
{
  result = qword_1ECCDE960;
  if (!qword_1ECCDE960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE960);
  }

  return result;
}

unint64_t sub_1DD54A9E4()
{
  result = qword_1ECCDE968;
  if (!qword_1ECCDE968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE968);
  }

  return result;
}

unint64_t sub_1DD54AA3C()
{
  result = qword_1ECCDE970;
  if (!qword_1ECCDE970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE970);
  }

  return result;
}

unint64_t sub_1DD54AA90()
{
  result = qword_1ECCDE978;
  if (!qword_1ECCDE978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE978);
  }

  return result;
}

uint64_t PersonPlaceName.BoundedValue.rawValue.getter()
{
  result = 0x64646120656D6F68;
  switch(*v0)
  {
    case 1:
      result = 0x646461206B726F77;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x79627261656ELL;
      break;
    case 4:
      result = 0x61206C6F6F686373;
      break;
    case 5:
      v2 = 544045415;
      goto LABEL_8;
    case 6:
      result = 0x646120726568746FLL;
      break;
    case 7:
      v2 = 544829025;
LABEL_8:
      result = v2 | 0x7264646100000000;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

SiriInference::PersonPlaceName::Prefix_optional __swiftcall PersonPlaceName.Prefix.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_32_1();
  v2 = sub_1DD640AA8();

  v4 = 3;
  if (v2 < 3)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

uint64_t PersonPlaceName.Prefix.rawValue.getter()
{
  v1 = 0x6973736573736F70;
  if (*v0 != 1)
  {
    v1 = 1918985582;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 28265;
  }
}

SiriInference::PersonPlaceName::Suffix_optional __swiftcall PersonPlaceName.Suffix.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_32_1();
  v2 = sub_1DD640AA8();

  v4 = 3;
  if (v2 < 3)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1DD54AEEC()
{
  v1 = 1701670728;
  switch(*v0)
  {
    case 1:
      v1 = 1802661719;
      break;
    case 2:
    case 3:
    case 6:
    case 7:
    case 8:
      sub_1DD3B7F10();
      v1 = sub_1DD640658();

      break;
    case 4:
      v1 = 0x6C6F6F686353;
      break;
    case 5:
      v1 = 7174471;
      break;
    default:
      return v1;
  }

  return v1;
}

SiriInference::PersonPlaceName::BoundedValue_optional __swiftcall PersonPlaceName.BoundedValue.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_32_1();
  v2 = sub_1DD640AA8();

  v4 = 9;
  if (v2 < 9)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1DD54B0A8@<X0>(uint64_t *a1@<X8>)
{
  result = PersonPlaceName.BoundedValue.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t PersonPlaceName.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t static PersonPlaceName.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 17);
  v3 = *(a1 + 18);
  v4 = *(a2 + 17);
  v5 = *(a2 + 18);
  v6 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v6 && (sub_1DD640CD8() & 1) == 0)
  {
    return 0;
  }

  if (v3 == 3)
  {
    if (v5 != 3)
    {
      return 0;
    }
  }

  else if (v5 == 3 || (sub_1DD3B2D9C(v3, v5) & 1) == 0)
  {
    return 0;
  }

  result = v4 == 3 && v2 == 3;
  if (v2 != 3 && v4 != 3)
  {

    return sub_1DD3B2D9C(v2, v4);
  }

  return result;
}

uint64_t sub_1DD54B2A0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x566465646E756F62 && a2 == 0xEC00000065756C61;
    if (v6 || (sub_1DD640CD8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x786966667573 && a2 == 0xE600000000000000;
      if (v7 || (sub_1DD640CD8() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x786966657270 && a2 == 0xE600000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_1DD640CD8();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_1DD54B3FC(char a1)
{
  result = 1701667182;
  switch(a1)
  {
    case 1:
      result = 0x566465646E756F62;
      break;
    case 2:
      result = 0x786966667573;
      break;
    case 3:
      result = 0x786966657270;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD54B480@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD54B2A0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD54B4A8(uint64_t a1)
{
  v2 = sub_1DD54B978();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD54B4E4(uint64_t a1)
{
  v2 = sub_1DD54B978();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PersonPlaceName.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE980, &qword_1DD65A138);
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v11 = &v23 - v10;
  v12 = *v1;
  v13 = v1[1];
  v14 = *(v1 + 16);
  v24 = *(v1 + 17);
  v25 = v14;
  HIDWORD(v23) = *(v1 + 18);
  v15 = a1[3];
  v16 = a1[4];
  v17 = a1;
  v19 = v18;
  __swift_project_boxed_opaque_existential_1(v17, v15);
  sub_1DD54B978();
  sub_1DD640EF8();
  v32 = 0;
  sub_1DD640C18();
  if (!v2)
  {
    v20 = BYTE4(v23);
    v21 = v24;
    v31 = v25;
    v30 = 1;
    sub_1DD54B9CC();
    OUTLINED_FUNCTION_4_68();
    v29 = v21;
    v28 = 2;
    sub_1DD54BA20();
    OUTLINED_FUNCTION_4_68();
    v27 = v20;
    v26 = 3;
    sub_1DD54BA74();
    OUTLINED_FUNCTION_4_68();
  }

  return (*(v7 + 8))(v11, v19);
}

uint64_t PersonPlaceName.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE9A8, &qword_1DD65A140);
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD54B978();
  sub_1DD640ED8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = sub_1DD640B28();
  v12 = v11;
  sub_1DD54BAC8();
  OUTLINED_FUNCTION_3_4();
  sub_1DD54BB1C();
  OUTLINED_FUNCTION_3_4();
  sub_1DD54BB70();
  OUTLINED_FUNCTION_3_4();
  v14 = OUTLINED_FUNCTION_0_0();
  v15(v14);
  *a2 = v10;
  *(a2 + 8) = v12;
  *(a2 + 16) = v18;
  *(a2 + 17) = v17;
  *(a2 + 18) = v16;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1DD54B978()
{
  result = qword_1ECCDE988;
  if (!qword_1ECCDE988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE988);
  }

  return result;
}

unint64_t sub_1DD54B9CC()
{
  result = qword_1ECCDE990;
  if (!qword_1ECCDE990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE990);
  }

  return result;
}

unint64_t sub_1DD54BA20()
{
  result = qword_1ECCDE998;
  if (!qword_1ECCDE998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE998);
  }

  return result;
}

unint64_t sub_1DD54BA74()
{
  result = qword_1ECCDE9A0;
  if (!qword_1ECCDE9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE9A0);
  }

  return result;
}

unint64_t sub_1DD54BAC8()
{
  result = qword_1ECCDE9B0;
  if (!qword_1ECCDE9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE9B0);
  }

  return result;
}

unint64_t sub_1DD54BB1C()
{
  result = qword_1ECCDE9B8;
  if (!qword_1ECCDE9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE9B8);
  }

  return result;
}

unint64_t sub_1DD54BB70()
{
  result = qword_1ECCDE9C0;
  if (!qword_1ECCDE9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE9C0);
  }

  return result;
}

unint64_t sub_1DD54BBC8()
{
  result = qword_1ECCDE9C8;
  if (!qword_1ECCDE9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE9C8);
  }

  return result;
}

unint64_t sub_1DD54BC20()
{
  result = qword_1ECCDE9D0;
  if (!qword_1ECCDE9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE9D0);
  }

  return result;
}

unint64_t sub_1DD54BC78()
{
  result = qword_1ECCDE9D8;
  if (!qword_1ECCDE9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE9D8);
  }

  return result;
}

_BYTE *sub_1DD54BCE4(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for PersonPlaceName.BoundedValue(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for PersonPlaceName.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD54BF74()
{
  result = qword_1ECCDE9E0;
  if (!qword_1ECCDE9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE9E0);
  }

  return result;
}

unint64_t sub_1DD54BFCC()
{
  result = qword_1ECCDE9E8;
  if (!qword_1ECCDE9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE9E8);
  }

  return result;
}

unint64_t sub_1DD54C024()
{
  result = qword_1ECCDE9F0;
  if (!qword_1ECCDE9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE9F0);
  }

  return result;
}

unint64_t sub_1DD54C078()
{
  result = qword_1ECCDE9F8;
  if (!qword_1ECCDE9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE9F8);
  }

  return result;
}

unint64_t sub_1DD54C0CC()
{
  result = qword_1ECCDEA00;
  if (!qword_1ECCDEA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDEA00);
  }

  return result;
}

unint64_t sub_1DD54C120()
{
  result = qword_1ECCDEA08;
  if (!qword_1ECCDEA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDEA08);
  }

  return result;
}

uint64_t type metadata accessor for PervasiveConfiguration()
{
  result = qword_1ECCDEA10;
  if (!qword_1ECCDEA10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DD54C1F4()
{
  sub_1DD5041F0();
  if (v0 <= 0x3F)
  {
    sub_1DD54C2A0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1DD54C2A0()
{
  if (!qword_1EE166640)
  {
    sub_1DD63CE68();
    v0 = sub_1DD6405F8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE166640);
    }
  }
}

uint64_t getEnumTagSinglePayload for SelectedByRate(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 9))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for SelectedByRate(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void sub_1DD54C398(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1DD63CE68();
  v6 = OUTLINED_FUNCTION_6_28(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBF78, &unk_1DD644440);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v37 - v15;
  if (*(a1 + 32))
  {
    v17 = sub_1DD54E118();
    if (v17)
    {
      v18 = 1.0;
    }

    else
    {
      v18 = 0.0;
    }

    if (*(a1 + 8))
    {
      v19 = *a1;
      v20 = *(a1 + 8);
    }

    else
    {
      v20 = 0x80000001DD672A40;
      v19 = 0xD00000000000001BLL;
    }

    if (sub_1DD54E15C())
    {
      v33 = qword_1ECCDB0F8;

      if (v33 != -1)
      {
        swift_once();
      }

      v34 = __swift_project_value_buffer(v2, qword_1ECD0DE10);
      (*(v8 + 16))(v16, v34, v2);
      __swift_storeEnumTagSinglePayload(v16, 0, 1, v2);
    }

    else
    {
      __swift_storeEnumTagSinglePayload(v16, 1, 1, v2);
    }

    v35 = type metadata accessor for PervasiveConfiguration();
    OUTLINED_FUNCTION_1_95(*(v35 + 36));
    *a2 = 0x3FF0000000000000;
    *(a2 + 8) = 1;
    *(a2 + 16) = v18;
    *(a2 + 24) = v17 & 1;
    *(a2 + 32) = v19;
    *(a2 + 40) = v20;
    *(a2 + 48) = 0x403E000000000000;
    *(a2 + 56) = 0;
    sub_1DD4D5B84(v16, a2 + *(v36 + 32));
  }

  else
  {
    v21 = [objc_opt_self() clientWithIdentifier_];
    v22 = sub_1DD54CF8C(0xD000000000000031, 0x80000001DD6729E0, v21, 0.01);
    sub_1DD4C193C(v23, 0.0, 1.0);
    v39 = v24 < v22;
    v25 = sub_1DD54CF8C(0xD00000000000001ELL, 0x80000001DD672A20, v21, 0.05);
    sub_1DD4C193C(v26, 0.0, 1.0);
    v38 = v27 < v25;
    v37 = sub_1DD54D180(0x7365736163657375, 0xE800000000000000, 0xD00000000000001BLL, 0x80000001DD672A40, v21);
    v29 = v28;
    v30 = type metadata accessor for PervasiveConfiguration();
    v31 = *(v30 + 32);
    type metadata accessor for PervasiveEntityResolution();
    sub_1DD63B7B8();
    sub_1DD54D570(0x64656C69706D6F63, 0xED00006C65646F4DLL, v12, v21, a2 + v31);

    (*(v8 + 8))(v12, v2);
    __swift_storeEnumTagSinglePayload(a2 + v31, 0, 1, v2);
    OUTLINED_FUNCTION_1_95(*(v30 + 36));
    *a2 = v22;
    v32 = v38;
    *(a2 + 8) = v39;
    *(a2 + 16) = v25;
    *(a2 + 24) = v32;
    *(a2 + 32) = v37;
    *(a2 + 40) = v29;
    *(a2 + 48) = 0x403E000000000000;
    *(a2 + 56) = 0;
  }
}

uint64_t sub_1DD54C784@<X0>(uint64_t *a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBF78, &unk_1DD644440);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v31 - v6;
  v8 = sub_1DD63CE68();
  v9 = OUTLINED_FUNCTION_6_28(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v31 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v31 - v18;
  v20 = type metadata accessor for PervasiveConfiguration();
  sub_1DD54DC4C(v1 + *(v20 + 32), v7);
  if (__swift_getEnumTagSinglePayload(v7, 1, v2) == 1)
  {
    sub_1DD3ADFD0(v7, &qword_1ECCDBF78, &unk_1DD644440);
    v21 = v1 + *(v20 + 36);
    v22 = *(v21 + 16);
    v23 = *(v21 + 24);

    sub_1DD4F1444();
    v25 = v24;
    LOBYTE(v23) = v26;
    a1[3] = &type metadata for LearnedChoiceExtractor;
    a1[4] = sub_1DD54DCBC();
    result = swift_allocObject();
    *a1 = result;
    *(result + 16) = v25;
    *(result + 24) = v23;
    *(result + 32) = sub_1DD4802B8;
    *(result + 40) = 0;
  }

  else
  {
    v32 = a1;
    (*(v11 + 32))(v19, v7, v2);
    (*(v11 + 16))(v16, v19, v2);
    v28 = type metadata accessor for ModelBasedLearning();
    swift_allocObject();
    v29 = sub_1DD52DE94(v16);
    v30 = v32;
    v32[3] = v28;
    v30[4] = sub_1DD54DD10(&qword_1ECCDEA30, type metadata accessor for ModelBasedLearning);
    *v30 = v29;
    return (*(v11 + 8))(v19, v2);
  }

  return result;
}

void sub_1DD54CC08()
{
  v0 = sub_1DD63CE68();
  __swift_allocate_value_buffer(v0, qword_1ECD0DE10);
  __swift_project_value_buffer(v0, qword_1ECD0DE10);
  type metadata accessor for PervasiveEntityResolution();
  sub_1DD63B7B8();
}

uint64_t sub_1DD54CC64()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBF78, &unk_1DD644440);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v23 - v3;
  *&v24 = 0;
  *(&v24 + 1) = 0xE000000000000000;
  sub_1DD6408D8();
  v23 = v24;
  MEMORY[0x1E12B2260](0x3D656372756F735BLL, 0xE800000000000000);
  v5 = type metadata accessor for PervasiveConfiguration();
  v6 = (v0 + *(v5 + 36));
  v7 = *(v6 + 32);
  if (v7)
  {
    v8 = 0x656469727265764FLL;
  }

  else
  {
    v8 = 0x6C61697254;
  }

  if (*(v6 + 32))
  {
    v9 = 0xE900000000000073;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  MEMORY[0x1E12B2260](v8, v9);

  MEMORY[0x1E12B2260](0xD000000000000016, 0x80000001DD672980);
  v10 = *v0;
  v11 = sub_1DD54DBA8(*(v0 + 8));
  MEMORY[0x1E12B2260](v11);

  MEMORY[0x1E12B2260](0xD000000000000016, 0x80000001DD6729A0);
  v12 = v0[2];
  v13 = sub_1DD54DBA8(*(v0 + 24));
  MEMORY[0x1E12B2260](v13);

  MEMORY[0x1E12B2260](0x736143657375202CLL, 0xEA00000000003D65);
  MEMORY[0x1E12B2260](v0[4], v0[5]);
  MEMORY[0x1E12B2260](0xD000000000000014, 0x80000001DD6729C0);
  v14 = *(v0 + 56);
  *&v24 = v0[6];
  BYTE8(v24) = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEA20, &unk_1DD65A720);
  v15 = sub_1DD63FE38();
  MEMORY[0x1E12B2260](v15);

  MEMORY[0x1E12B2260](0x556C65646F6D202CLL, 0xEB000000003D4C52);
  sub_1DD54DC4C(v0 + *(v5 + 32), v4);
  v16 = sub_1DD63CE68();
  if (__swift_getEnumTagSinglePayload(v4, 1, v16) == 1)
  {
    sub_1DD3ADFD0(v4, &qword_1ECCDBF78, &unk_1DD644440);
    v17 = 0xE300000000000000;
    v18 = 7104878;
  }

  else
  {
    v18 = sub_1DD63CDC8();
    v17 = v19;
    (*(*(v16 - 8) + 8))(v4, v16);
  }

  MEMORY[0x1E12B2260](v18, v17);

  MEMORY[0x1E12B2260](2108509, 0xE300000000000000);
  v20 = v6[1];
  v24 = *v6;
  v25 = v20;
  v26 = v7;
  v21 = sub_1DD54E214();
  MEMORY[0x1E12B2260](v21);

  return v23;
}

double sub_1DD54CF8C(uint64_t a1, unint64_t a2, void *a3, double a4)
{
  v8 = sub_1DD63FDA8();
  v9 = sub_1DD63FDA8();
  v10 = [a3 levelForFactor:v8 withNamespaceName:v9];

  if (v10)
  {
    [v10 doubleValue];
    a4 = v11;
  }

  else
  {
    if (qword_1ECCDB0E0 != -1)
    {
      OUTLINED_FUNCTION_0_7();
    }

    v12 = sub_1DD63F9F8();
    __swift_project_value_buffer(v12, qword_1ECD0DDF0);

    v10 = sub_1DD63F9D8();
    v13 = sub_1DD640378();

    if (os_log_type_enabled(v10, v13))
    {
      v14 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v14 = 136315394;
      *(v14 + 4) = sub_1DD39565C(a1, a2, &v19);
      *(v14 + 12) = 2080;
      v15 = sub_1DD63FE38();
      v17 = sub_1DD39565C(v15, v16, &v19);

      *(v14 + 14) = v17;
      _os_log_impl(&dword_1DD38D000, v10, v13, "No value for %s, defaulting to: %s", v14, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_0_1();
      OUTLINED_FUNCTION_0_1();
    }
  }

  return a4;
}

uint64_t sub_1DD54D180(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = sub_1DD63FDA8();
  v10 = sub_1DD63FDA8();
  v11 = [a5 levelForFactor:v9 withNamespaceName:v10];

  if (!v11)
  {
    if (qword_1ECCDB0E0 != -1)
    {
      swift_once();
    }

    v15 = sub_1DD63F9F8();
    __swift_project_value_buffer(v15, qword_1ECD0DDF0);

    v16 = sub_1DD63F9D8();
    v17 = sub_1DD640378();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v35 = v19;
      *v18 = 136315394;
      *(v18 + 4) = sub_1DD39565C(a1, a2, &v35);
      *(v18 + 12) = 2080;

      v20 = sub_1DD63FE38();
      v22 = sub_1DD39565C(v20, v21, &v35);

      *(v18 + 14) = v22;
      _os_log_impl(&dword_1DD38D000, v16, v17, "No value for %s, defaulting to: %s", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12B3DA0](v19, -1, -1);
      MEMORY[0x1E12B3DA0](v18, -1, -1);
    }

    goto LABEL_14;
  }

  v12 = sub_1DD54DD58(v11);
  if (!v13)
  {
    if (qword_1ECCDB0E0 != -1)
    {
      swift_once();
    }

    v23 = sub_1DD63F9F8();
    __swift_project_value_buffer(v23, qword_1ECD0DDF0);

    v24 = v11;
    v25 = sub_1DD63F9D8();
    v26 = sub_1DD640378();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v35 = v29;
      *v27 = 138412546;
      *(v27 + 4) = v24;
      *v28 = v11;
      *(v27 + 12) = 2080;

      v30 = v24;
      v31 = sub_1DD63FE38();
      v33 = sub_1DD39565C(v31, v32, &v35);

      *(v27 + 14) = v33;
      _os_log_impl(&dword_1DD38D000, v25, v26, "Cannot extract value from %@, defaulting to: %s", v27, 0x16u);
      sub_1DD3ADFD0(v28, &qword_1ECCDBF90, &qword_1DD6445B0);
      MEMORY[0x1E12B3DA0](v28, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x1E12B3DA0](v29, -1, -1);
      MEMORY[0x1E12B3DA0](v27, -1, -1);
    }

    else
    {
    }

LABEL_14:

    return a3;
  }

  v14 = v12;

  return v14;
}

uint64_t sub_1DD54D570@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v61 = a5;
  v62 = a3;
  v8 = sub_1DD63CE68();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v60 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v59 = (&v56 - v13);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v56 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBF78, &unk_1DD644440);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v56 - v19;
  v21 = sub_1DD63FDA8();
  v22 = sub_1DD63FDA8();
  v23 = [a4 levelForFactor:v21 withNamespaceName:v22];

  if (v23)
  {
    sub_1DD5FF528(v20);
    if (__swift_getEnumTagSinglePayload(v20, 1, v8) != 1)
    {

      return (*(v9 + 32))(v61, v20, v8);
    }

    sub_1DD3ADFD0(v20, &qword_1ECCDBF78, &unk_1DD644440);
    if (qword_1ECCDB0E0 != -1)
    {
      swift_once();
    }

    v24 = sub_1DD63F9F8();
    __swift_project_value_buffer(v24, qword_1ECD0DDF0);
    v25 = *(v9 + 16);
    v26 = v59;
    v25(v59, v62, v8);
    v27 = v23;
    v28 = sub_1DD63F9D8();
    v29 = sub_1DD640378();

    v58 = v28;
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v63 = v56;
      *v30 = 138412546;
      *(v30 + 4) = v27;
      *v31 = v23;
      *(v30 + 12) = 2080;
      v32 = v25;
      v25(v60, v26, v8);
      v57 = v27;
      v33 = sub_1DD63FE38();
      v35 = v34;
      (*(v9 + 8))(v26, v8);
      v36 = sub_1DD39565C(v33, v35, &v63);
      v25 = v32;

      *(v30 + 14) = v36;
      v37 = v58;
      _os_log_impl(&dword_1DD38D000, v58, v29, "Cannot extract value from %@, defaulting to: %s", v30, 0x16u);
      sub_1DD3ADFD0(v31, &qword_1ECCDBF90, &qword_1DD6445B0);
      MEMORY[0x1E12B3DA0](v31, -1, -1);
      v38 = v56;
      __swift_destroy_boxed_opaque_existential_1(v56);
      MEMORY[0x1E12B3DA0](v38, -1, -1);
      MEMORY[0x1E12B3DA0](v30, -1, -1);
    }

    else
    {

      (*(v9 + 8))(v26, v8);
    }

    v53 = v61;
    v54 = v62;
    v55 = v8;
  }

  else
  {
    v39 = v8;
    v40 = a1;
    if (qword_1ECCDB0E0 != -1)
    {
      swift_once();
    }

    v41 = sub_1DD63F9F8();
    __swift_project_value_buffer(v41, qword_1ECD0DDF0);
    v25 = *(v9 + 16);
    v25(v16, v62, v39);

    v42 = sub_1DD63F9D8();
    v43 = sub_1DD640378();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v63 = v59;
      *v44 = 136315394;
      *(v44 + 4) = sub_1DD39565C(v40, a2, &v63);
      *(v44 + 12) = 2080;
      v45 = v43;
      v25(v60, v16, v39);
      v46 = sub_1DD63FE38();
      v47 = v25;
      v49 = v48;
      (*(v9 + 8))(v16, v39);
      v50 = sub_1DD39565C(v46, v49, &v63);
      v25 = v47;

      *(v44 + 14) = v50;
      _os_log_impl(&dword_1DD38D000, v42, v45, "No value for %s, defaulting to: %s", v44, 0x16u);
      v51 = v59;
      swift_arrayDestroy();
      MEMORY[0x1E12B3DA0](v51, -1, -1);
      MEMORY[0x1E12B3DA0](v44, -1, -1);
    }

    else
    {

      (*(v9 + 8))(v16, v39);
    }

    v53 = v61;
    v54 = v62;
    v55 = v39;
  }

  return (v25)(v53, v54, v55);
}

uint64_t sub_1DD54DBA8(char a1)
{
  sub_1DD640228();
  MEMORY[0x1E12B2260](15917, 0xE200000000000000);
  if (a1)
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (a1)
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  MEMORY[0x1E12B2260](v2, v3);

  return 0;
}

uint64_t sub_1DD54DC4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBF78, &unk_1DD644440);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DD54DCBC()
{
  result = qword_1ECCDEA28;
  if (!qword_1ECCDEA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDEA28);
  }

  return result;
}

uint64_t sub_1DD54DD10(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DD54DD58(void *a1)
{
  v1 = [a1 stringValue];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1DD63FDD8();

  return v3;
}

uint64_t sub_1DD54DDBC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 33))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DD54DE10(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void sub_1DD54DE78(uint64_t a1@<X8>)
{
  v2 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v3 = sub_1DD3B7FC0(0xD000000000000022, 0x80000001DD672A80);
  if (v3)
  {
    v4 = v3;
    v5 = sub_1DD63FDA8();
    v6 = [v4 stringForKey_];

    if (v6)
    {
      v7 = sub_1DD63FDD8();
      v9 = v8;
    }

    else
    {
      v7 = 0;
      v9 = 0;
    }

    v18 = sub_1DD63FDA8();
    v19 = [v4 stringForKey_];

    if (v19)
    {
      v15 = sub_1DD63FDD8();
      v16 = v20;
    }

    else
    {
      v15 = 0;
      v16 = 0;
    }

    v21 = sub_1DD63FDA8();
    v17 = [v4 BOOLForKey_];
  }

  else
  {
    if (qword_1ECCDB0E0 != -1)
    {
      swift_once();
    }

    v10 = sub_1DD63F9F8();
    __swift_project_value_buffer(v10, qword_1ECD0DDF0);
    v11 = sub_1DD63F9D8();
    v12 = sub_1DD640378();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v22 = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_1DD39565C(0xD000000000000022, 0x80000001DD672A80, &v22);
      _os_log_impl(&dword_1DD38D000, v11, v12, "Could not find UserDefaults with suiteName [%s]", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x1E12B3DA0](v14, -1, -1);
      MEMORY[0x1E12B3DA0](v13, -1, -1);
    }

    v7 = 0;
    v9 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
  }

  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v15;
  *(a1 + 24) = v16;
  *(a1 + 32) = v17;
}

uint64_t sub_1DD54E118()
{
  v1 = *(v0 + 24);
  if (!v1)
  {
    return 0;
  }

  if (*(v0 + 16) == 0x6563726F66 && v1 == 0xE500000000000000)
  {
    return 1;
  }

  else
  {
    return sub_1DD640CD8();
  }
}

uint64_t sub_1DD54E15C()
{
  v1 = *(v0 + 24);
  if (!v1)
  {
    return 1;
  }

  v2 = *(v0 + 16);
  if (v2 == 0x6C65646F6DLL && v1 == 0xE500000000000000)
  {
    return 1;
  }

  v4 = sub_1DD640CD8();
  v5 = v2 == 0x6563726F66 && v1 == 0xE500000000000000;
  v6 = v5;
  if ((v4 & 1) != 0 || v6)
  {
    return 1;
  }

  return sub_1DD640CD8();
}

uint64_t sub_1DD54E214()
{
  if (*(v0 + 8))
  {
    MEMORY[0x1E12B2260](*v0);
    sub_1DD3BE2A4();
    v2 = v1;
    v3 = *(v1 + 16);
    if (v3 >= *(v1 + 24) >> 1)
    {
      OUTLINED_FUNCTION_3_2();
      v2 = v13;
    }

    *(v2 + 16) = v3 + 1;
    v4 = v2 + 16 * v3;
    *(v4 + 32) = 0x7365736143657375;
    *(v4 + 40) = 0xE90000000000003DLL;
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC0];
  }

  if (*(v0 + 24))
  {
    MEMORY[0x1E12B2260](*(v0 + 16));
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_23();
      v2 = v14;
    }

    v5 = *(v2 + 16);
    if (v5 >= *(v2 + 24) >> 1)
    {
      OUTLINED_FUNCTION_3_2();
      v2 = v15;
    }

    *(v2 + 16) = v5 + 1;
    v6 = v2 + 16 * v5;
    *(v6 + 32) = 0x7967657461727473;
    *(v6 + 40) = 0xE90000000000003DLL;
  }

  if (*(v0 + 32))
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_23();
      v2 = v16;
    }

    v7 = *(v2 + 16);
    if (v7 >= *(v2 + 24) >> 1)
    {
      OUTLINED_FUNCTION_3_2();
      v2 = v17;
    }

    *(v2 + 16) = v7 + 1;
    v8 = v2 + 16 * v7;
    *(v8 + 32) = 0xD000000000000017;
    *(v8 + 40) = 0x80000001DD672A60;
  }

  else if (!*(v2 + 16))
  {

    v11 = 0xE400000000000000;
    v9 = 1701736302;
    goto LABEL_20;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFD20, &qword_1DD648290);
  sub_1DD4477A4();
  v9 = sub_1DD63FD58();
  v11 = v10;

LABEL_20:
  MEMORY[0x1E12B2260](v9, v11);

  MEMORY[0x1E12B2260](93, 0xE100000000000000);
  return 0x656469727265764FLL;
}

void sub_1DD54E460(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *(v1 + 80);
  v5 = sub_1DD5FFDD8();
  v7 = sub_1DD59B690(*(v2 + 64), *(v2 + 72), v5);

  if (v7)
  {
    sub_1DD5FF528(a1);
  }

  else
  {
    v6 = sub_1DD63CE68();

    __swift_storeEnumTagSinglePayload(a1, 1, 1, v6);
  }
}

void sub_1DD54E548()
{
  OUTLINED_FUNCTION_18_4();
  v63 = v0;
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBF78, &unk_1DD644440);
  v6 = OUTLINED_FUNCTION_3(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v58[-v9];
  v11 = sub_1DD63CE68();
  v12 = OUTLINED_FUNCTION_0(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v12);
  v19 = &v58[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v58[-v21];
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v58[-v23];
  sub_1DD54E460(v10);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    sub_1DD390754(v10, &qword_1ECCDBF78, &unk_1DD644440);
    if (qword_1EE162D98 != -1)
    {
      OUTLINED_FUNCTION_0_4();
    }

    v25 = sub_1DD63F9F8();
    OUTLINED_FUNCTION_130(v25, qword_1EE16EFB8);
    v26 = sub_1DD63F9D8();
    v27 = sub_1DD640368();
    if (OUTLINED_FUNCTION_5_6(v27))
    {
      v28 = OUTLINED_FUNCTION_9();
      OUTLINED_FUNCTION_11_3(v28);
      OUTLINED_FUNCTION_18(&dword_1DD38D000, v29, v30, "AppSelectionModelManaging#model: No Trial override, using default model");
      OUTLINED_FUNCTION_0_1();
    }

    v63();
  }

  else
  {
    (*(v14 + 32))(v24, v10, v11);
    v31 = [objc_allocWithZone(MEMORY[0x1E695FEB0]) init];
    [v31 setComputeUnits_];
    v2(&v64, v24, v31);

    if (v65)
    {
      v62 = v4;
      sub_1DD3AA4A8(&v64, v66);
      if (qword_1EE162D98 != -1)
      {
        OUTLINED_FUNCTION_0_4();
      }

      v32 = sub_1DD63F9F8();
      OUTLINED_FUNCTION_130(v32, qword_1EE16EFB8);
      (*(v14 + 16))(v22, v24, v11);
      v33 = sub_1DD63F9D8();
      v34 = sub_1DD640368();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        *&v64 = v63;
        *v35 = 136446210;
        OUTLINED_FUNCTION_6_61();
        sub_1DD5508E4(v36, v37);
        v38 = sub_1DD640CB8();
        v40 = v39;
        v41 = *(v14 + 8);
        v41(v22, v11);
        v42 = sub_1DD39565C(v38, v40, &v64);

        *(v35 + 4) = v42;
        _os_log_impl(&dword_1DD38D000, v33, v34, "AppSelectionModelManaging#model: Loaded model from Trial-override; %{public}s", v35, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v63);
        OUTLINED_FUNCTION_0_1();
        OUTLINED_FUNCTION_0_1();
      }

      else
      {

        v41 = *(v14 + 8);
        v41(v22, v11);
      }

      v41(v24, v11);
      sub_1DD3AA4A8(v66, v62);
    }

    else
    {
      sub_1DD390754(&v64, &qword_1ECCDBF80, &unk_1DD657A00);
      if (qword_1EE162D98 != -1)
      {
        OUTLINED_FUNCTION_0_4();
      }

      v43 = sub_1DD63F9F8();
      OUTLINED_FUNCTION_130(v43, qword_1EE16EFB8);
      (*(v14 + 16))(v19, v24, v11);
      v44 = sub_1DD63F9D8();
      v45 = sub_1DD640378();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v60 = v46;
        v61 = swift_slowAlloc();
        *&v66[0] = v61;
        *v46 = 136446210;
        OUTLINED_FUNCTION_6_61();
        sub_1DD5508E4(v47, v48);
        v49 = sub_1DD640CB8();
        v62 = v4;
        v51 = v50;
        v52 = *(v14 + 8);
        v59 = v45;
        v53 = OUTLINED_FUNCTION_23_28();
        v52(v53);
        v54 = sub_1DD39565C(v49, v51, v66);

        v55 = v60;
        *(v60 + 1) = v54;
        _os_log_impl(&dword_1DD38D000, v44, v59, "AppSelectionModelManaging#model: Failed to load Trial-overridden model from %{public}s, reverting to default model", v55, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v61);
        OUTLINED_FUNCTION_0_1();
        OUTLINED_FUNCTION_0_1();
      }

      else
      {

        v52 = *(v14 + 8);
        v57 = OUTLINED_FUNCTION_23_28();
        v56 = (v52)(v57);
      }

      (v63)(v56);
      (v52)(v24, v11);
    }
  }

  OUTLINED_FUNCTION_17();
}

uint64_t sub_1DD54EB24(uint64_t a1)
{
  v3 = sub_1DD640478();
  v15 = *(v3 - 8);
  v16 = v3;
  v4 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DD640438();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v9 = sub_1DD63FBD8();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = sub_1DD39638C(0, &qword_1EE166480, 0x1E69E9610);
  v14[1] = "ectionModelCache";
  v14[2] = v11;
  sub_1DD63FBA8();
  v17 = MEMORY[0x1E69E7CC0];
  sub_1DD5508E4(&qword_1EE166488, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDF220, &unk_1DD656EC0);
  sub_1DD3CBFCC(&qword_1EE166490, &unk_1ECCDF220, &unk_1DD656EC0);
  sub_1DD640718();
  (*(v15 + 104))(v6, *MEMORY[0x1E69E8090], v16);
  *(v1 + 16) = sub_1DD6404A8();
  v12 = *(a1 + 16);
  *(v1 + 24) = *a1;
  *(v1 + 40) = v12;
  *(v1 + 56) = *(a1 + 32);
  *(v1 + 72) = *(a1 + 48);
  return v1;
}

void sub_1DD54EDA4()
{
  OUTLINED_FUNCTION_18_4();
  v20 = OUTLINED_FUNCTION_19_28(v2);
  v3 = OUTLINED_FUNCTION_0(v20);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2();
  v8 = OUTLINED_FUNCTION_18_31();
  v9 = OUTLINED_FUNCTION_7(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2();
  v12 = OUTLINED_FUNCTION_17_32();
  v13 = OUTLINED_FUNCTION_3(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_2();
  v16 = sub_1DD39638C(0, &qword_1EE166480, 0x1E69E9610);
  OUTLINED_FUNCTION_16_39(v16, "siriinference-atomic");
  OUTLINED_FUNCTION_1_96();
  sub_1DD5508E4(v17, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDF220, &unk_1DD656EC0);
  sub_1DD3CBFCC(&qword_1EE166490, &unk_1ECCDF220, &unk_1DD656EC0);
  OUTLINED_FUNCTION_14_36();
  sub_1DD640718();
  (*(v5 + 104))(v1, *MEMORY[0x1E69E8090], v20);
  *(v0 + 16) = OUTLINED_FUNCTION_5_68();
  v19 = *(v21 + 16);
  *(v0 + 24) = *v21;
  *(v0 + 40) = v19;
  *(v0 + 56) = *(v21 + 32);
  OUTLINED_FUNCTION_17();
}

void sub_1DD54EF7C()
{
  OUTLINED_FUNCTION_18_4();
  v19 = OUTLINED_FUNCTION_19_28(v2);
  v3 = OUTLINED_FUNCTION_0(v19);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2();
  v8 = OUTLINED_FUNCTION_18_31();
  v9 = OUTLINED_FUNCTION_7(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2();
  v12 = OUTLINED_FUNCTION_17_32();
  v13 = OUTLINED_FUNCTION_3(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_2();
  v16 = sub_1DD39638C(0, &qword_1EE166480, 0x1E69E9610);
  OUTLINED_FUNCTION_16_39(v16, "siriinference-atomic");
  OUTLINED_FUNCTION_1_96();
  sub_1DD5508E4(v17, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDF220, &unk_1DD656EC0);
  sub_1DD3CBFCC(&qword_1EE166490, &unk_1ECCDF220, &unk_1DD656EC0);
  OUTLINED_FUNCTION_14_36();
  sub_1DD640718();
  (*(v5 + 104))(v1, *MEMORY[0x1E69E8090], v19);
  v0[2] = OUTLINED_FUNCTION_5_68();
  sub_1DD55097C(v20, v0 + *(*v0 + 96));
  OUTLINED_FUNCTION_17();
}

void sub_1DD54F15C()
{
  OUTLINED_FUNCTION_18_4();
  v19 = OUTLINED_FUNCTION_19_28(v2);
  v3 = OUTLINED_FUNCTION_0(v19);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2();
  v8 = OUTLINED_FUNCTION_18_31();
  v9 = OUTLINED_FUNCTION_7(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2();
  v12 = OUTLINED_FUNCTION_17_32();
  v13 = OUTLINED_FUNCTION_3(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_2();
  v16 = sub_1DD39638C(0, &qword_1EE166480, 0x1E69E9610);
  OUTLINED_FUNCTION_16_39(v16, "siriinference-atomic");
  OUTLINED_FUNCTION_1_96();
  sub_1DD5508E4(v17, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDF220, &unk_1DD656EC0);
  sub_1DD3CBFCC(&qword_1EE166490, &unk_1ECCDF220, &unk_1DD656EC0);
  OUTLINED_FUNCTION_14_36();
  sub_1DD640718();
  (*(v5 + 104))(v1, *MEMORY[0x1E69E8090], v19);
  *(v0 + 16) = OUTLINED_FUNCTION_5_68();
  *(v0 + 24) = v20;
  OUTLINED_FUNCTION_17();
}

uint64_t sub_1DD54F324(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

void sub_1DD54F384()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE4D8, &unk_1DD657A10);
  swift_allocObject();
  sub_1DD54EDA4();
  off_1EE1611B8 = v0;
}

void sub_1DD54F3E8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE4D0, &unk_1DD65A7D0);
  swift_allocObject();
  sub_1DD54F15C();
  qword_1EE1611D0 = v0;
}

uint64_t sub_1DD54F438()
{
  v10 = sub_1DD640478();
  v0 = *(v10 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1DD640438();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v6 = sub_1DD63FBD8();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9[1] = sub_1DD39638C(0, &qword_1EE166480, 0x1E69E9610);
  sub_1DD63FBC8();
  v11 = MEMORY[0x1E69E7CC0];
  sub_1DD5508E4(&qword_1EE166488, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDF220, &unk_1DD656EC0);
  sub_1DD3CBFCC(&qword_1EE166490, &unk_1ECCDF220, &unk_1DD656EC0);
  sub_1DD640718();
  (*(v0 + 104))(v3, *MEMORY[0x1E69E8090], v10);
  result = sub_1DD6404A8();
  qword_1EE1611A8 = result;
  return result;
}

uint64_t sub_1DD54F698()
{
  if (qword_1EE162D98 != -1)
  {
    OUTLINED_FUNCTION_0_4();
  }

  v0 = sub_1DD63F9F8();
  OUTLINED_FUNCTION_130(v0, qword_1EE16EFB8);
  v1 = sub_1DD63F9D8();
  v2 = sub_1DD640368();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = OUTLINED_FUNCTION_9();
    *v3 = 0;
    _os_log_impl(&dword_1DD38D000, v1, v2, "AppSelectionModelCache#getPhoneAppSelectionSplashModel", v3, 2u);
    OUTLINED_FUNCTION_0_1();
  }

  sub_1DD54F974();
  v4 = sub_1DD63F9D8();
  v5 = sub_1DD640368();
  if (OUTLINED_FUNCTION_9_0(v5))
  {
    v6 = OUTLINED_FUNCTION_9();
    *v6 = 0;
    _os_log_impl(&dword_1DD38D000, v4, v5, "AppSelectionModelCache#getPhoneAppSelectionSplashModel: Returning model", v6, 2u);
    OUTLINED_FUNCTION_0_1();
  }

  if (qword_1EE1611B0 != -1)
  {
    OUTLINED_FUNCTION_10_42();
  }

  v7 = *(off_1EE1611B8 + 2);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBF80, &unk_1DD657A00);
  sub_1DD640488();
}

uint64_t sub_1DD54F83C()
{
  if (qword_1EE162D98 != -1)
  {
    OUTLINED_FUNCTION_0_4();
  }

  v0 = sub_1DD63F9F8();
  OUTLINED_FUNCTION_130(v0, qword_1EE16EFB8);
  v1 = sub_1DD63F9D8();
  v2 = sub_1DD640368();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = OUTLINED_FUNCTION_9();
    *v3 = 0;
    _os_log_impl(&dword_1DD38D000, v1, v2, "AppSelectionModelCache#getPhoneAppSelectionTrialManager", v3, 2u);
    OUTLINED_FUNCTION_0_1();
  }

  sub_1DD54F974();
  v4 = sub_1DD63F9D8();
  v5 = sub_1DD640368();
  if (OUTLINED_FUNCTION_5_6(v5))
  {
    v6 = OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_11_3(v6);
    OUTLINED_FUNCTION_18(&dword_1DD38D000, v7, v8, "AppSelectionModelCache#getPhoneAppSelectionTrialManager: Returning TrialManager");
    OUTLINED_FUNCTION_0_1();
  }

  if (qword_1EE1611C8 != -1)
  {
    OUTLINED_FUNCTION_9_46();
  }

  v9 = sub_1DD508C14();

  return v9;
}

uint64_t sub_1DD54F974()
{
  if (qword_1EE162D98 != -1)
  {
    OUTLINED_FUNCTION_0_4();
  }

  v0 = sub_1DD63F9F8();
  OUTLINED_FUNCTION_130(v0, qword_1EE16EFB8);
  v1 = sub_1DD63F9D8();
  v2 = sub_1DD640368();
  if (OUTLINED_FUNCTION_5_6(v2))
  {
    v3 = OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_11_3(v3);
    OUTLINED_FUNCTION_18(&dword_1DD38D000, v4, v5, "AppSelectionModelCache#initializeAssets");
    OUTLINED_FUNCTION_0_1();
  }

  if (qword_1EE1611A0 != -1)
  {
    OUTLINED_FUNCTION_4_69();
  }

  v6 = qword_1EE1611A8;
  v10[4] = sub_1DD54F320;
  v10[5] = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1DD5FFDB0;
  v10[3] = &block_descriptor_5_0;
  v7 = _Block_copy(v10);
  v8 = v6;

  dispatch_sync(v8, v7);

  _Block_release(v7);
  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DD54FAF0()
{
  if (qword_1EE1611B0 != -1)
  {
    OUTLINED_FUNCTION_10_42();
  }

  v0 = *(off_1EE1611B8 + 2);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBF80, &unk_1DD657A00);
  sub_1DD640488();

  v1 = v25;
  result = sub_1DD390754(aBlock, &qword_1ECCDBF80, &unk_1DD657A00);
  if (!v1)
  {
    if (qword_1EE162D98 != -1)
    {
      OUTLINED_FUNCTION_0_4();
    }

    v3 = sub_1DD63F9F8();
    OUTLINED_FUNCTION_130(v3, qword_1EE16EFB8);
    v4 = sub_1DD63F9D8();
    v5 = sub_1DD640368();
    if (OUTLINED_FUNCTION_5_6(v5))
    {
      v6 = OUTLINED_FUNCTION_9();
      OUTLINED_FUNCTION_11_3(v6);
      OUTLINED_FUNCTION_18(&dword_1DD38D000, v7, v8, "AppSelectionModelCache#loadAssets phoneAppSelectionSplashModel is nil");
      OUTLINED_FUNCTION_0_1();
    }

    v9 = [objc_opt_self() clientWithIdentifier_];
    v10 = qword_1ECCDEA38;
    v11 = off_1ECCDEA40;
    type metadata accessor for TrialManager();
    v12 = swift_allocObject();
    v13 = v9;

    v14 = sub_1DD5506B4(v13, v10, v11, v12);
    v15 = qword_1ECCDEA48;
    v16 = off_1ECCDEA50;
    type metadata accessor for PhoneAppSelectionModelManager();
    swift_allocObject();
    v17 = sub_1DD550A50(v14, v15, v16);

    v18 = sub_1DD63FDA8();

    if (qword_1EE1611A0 != -1)
    {
      OUTLINED_FUNCTION_4_69();
    }

    v19 = qword_1EE1611A8;
    v20 = swift_allocObject();
    *(v20 + 16) = v14;
    *(v20 + 24) = v17;
    v26 = sub_1DD550894;
    v27 = v20;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DD54F324;
    v25 = &block_descriptor_8_0;
    v21 = _Block_copy(aBlock);

    v22 = v19;

    v23 = [v13 addUpdateHandlerForNamespaceName:v18 queue:v22 usingBlock:v21];
    _Block_release(v21);
    swift_unknownObjectRelease();

    if (qword_1EE1611C8 != -1)
    {
      OUTLINED_FUNCTION_9_46();
    }

    sub_1DD5FFB04();

    sub_1DD5FFBF0();
  }

  return result;
}

void static PhoneAppSelectionModelCache.prewarm()()
{
  OUTLINED_FUNCTION_18_4();
  v0 = sub_1DD63FB78();
  v1 = OUTLINED_FUNCTION_0(v0);
  v24 = v2;
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_2();
  v7 = v6 - v5;
  v23 = sub_1DD63FBD8();
  v8 = OUTLINED_FUNCTION_0(v23);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2();
  v15 = v14 - v13;
  if (qword_1EE162D98 != -1)
  {
    OUTLINED_FUNCTION_0_4();
  }

  v16 = sub_1DD63F9F8();
  OUTLINED_FUNCTION_130(v16, qword_1EE16EFB8);
  v17 = sub_1DD63F9D8();
  v18 = sub_1DD640368();
  if (OUTLINED_FUNCTION_9_0(v18))
  {
    v19 = OUTLINED_FUNCTION_9();
    *v19 = 0;
    _os_log_impl(&dword_1DD38D000, v17, v18, "AppSelectionModelCache#prewarm", v19, 2u);
    OUTLINED_FUNCTION_0_1();
  }

  if (qword_1EE1611A0 != -1)
  {
    OUTLINED_FUNCTION_4_69();
  }

  v20 = qword_1EE1611A8;
  v25[4] = sub_1DD54F320;
  v25[5] = 0;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 1107296256;
  v25[2] = sub_1DD3CBCD0;
  v25[3] = &block_descriptor_14;
  v21 = _Block_copy(v25);
  v22 = v20;
  sub_1DD63FBA8();
  sub_1DD5508E4(&qword_1EE163978, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBFE8, &qword_1DD64F0F0);
  sub_1DD3CBFCC(&qword_1EE1638E0, &qword_1ECCDBFE8, &qword_1DD64F0F0);
  sub_1DD640718();
  MEMORY[0x1E12B27A0](0, v15, v7, v21);
  _Block_release(v21);

  (*(v24 + 8))(v7, v0);
  (*(v10 + 8))(v15, v23);
  OUTLINED_FUNCTION_17();
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1DD5501FC()
{
  if (qword_1EE162D98 != -1)
  {
    swift_once();
  }

  v0 = sub_1DD63F9F8();
  __swift_project_value_buffer(v0, qword_1EE16EFB8);
  v1 = sub_1DD63F9D8();
  v2 = sub_1DD640368();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1DD38D000, v1, v2, "AppSelectionModelCache#loadAssets Trial update handler invoked", v3, 2u);
    MEMORY[0x1E12B3DA0](v3, -1, -1);
  }

  sub_1DD600008();
  if (qword_1EE1611C8 != -1)
  {
    swift_once();
  }

  sub_1DD5FFB04();

  if (qword_1EE1611B0 != -1)
  {
    swift_once();
  }

  sub_1DD5FFBF0();
}

uint64_t sub_1DD5503C0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;

  if (qword_1EE162D98 != -1)
  {
    OUTLINED_FUNCTION_0_4();
  }

  v5 = sub_1DD63F9F8();
  OUTLINED_FUNCTION_130(v5, qword_1EE16EFB8);
  v6 = sub_1DD63F9D8();
  v7 = sub_1DD640368();
  if (OUTLINED_FUNCTION_9_0(v7))
  {
    *OUTLINED_FUNCTION_9() = 0;
    OUTLINED_FUNCTION_8_48(&dword_1DD38D000);
    OUTLINED_FUNCTION_0_1();
  }

  *a1 = a2;
}

void sub_1DD550488(uint64_t a1)
{
  sub_1DD390754(a1, &qword_1ECCDBF80, &unk_1DD657A00);
  if (qword_1EE162D98 != -1)
  {
    OUTLINED_FUNCTION_0_4();
  }

  v1 = sub_1DD63F9F8();
  OUTLINED_FUNCTION_130(v1, qword_1EE16EFB8);
  v2 = sub_1DD63F9D8();
  v3 = sub_1DD640368();
  if (OUTLINED_FUNCTION_9_0(v3))
  {
    *OUTLINED_FUNCTION_9() = 0;
    OUTLINED_FUNCTION_8_48(&dword_1DD38D000);
    OUTLINED_FUNCTION_0_1();
  }

  sub_1DD54E548();
}

id sub_1DD550590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1DD63FDA8();
  v13[4] = a4;
  v13[5] = a5;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1DD54F324;
  v13[3] = &block_descriptor_14;
  v10 = _Block_copy(v13);

  v11 = [v5 addUpdateHandlerForNamespaceName:v9 queue:a3 usingBlock:v10];

  _Block_release(v10);

  return v11;
}

void *sub_1DD5506B4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v17[3] = sub_1DD39638C(0, &qword_1EE160130, 0x1E69DB518);
  v17[4] = &off_1F58C3998;
  v17[0] = a1;
  a4[9] = 0;
  a4[2] = a2;
  a4[3] = a3;
  sub_1DD3C2388(v17, (a4 + 4));
  sub_1DD39638C(0, &qword_1EE160140, 0x1E69DB540);
  v18 = sub_1DD63FC88();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEA58, &unk_1DD65A7E0);
  swift_allocObject();
  a4[10] = sub_1DD54EB24(&v18);
  sub_1DD600008();
  v8 = a4[2];
  v9 = a4[3];
  v10 = qword_1EE165278;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = qword_1EE16F008;
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = v11;

  v14 = sub_1DD550590(v8, v9, v11, sub_1DD550974, v12);

  v15 = a4[9];
  a4[9] = v14;
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v17);
  return a4;
}

uint64_t sub_1DD550894()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1DD5501FC();
}

uint64_t sub_1DD5508E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DD55097C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC700, &qword_1DD64AE00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_10_42()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_19_28(uint64_t a1)
{
  *(v1 - 96) = a1;

  return sub_1DD640478();
}

uint64_t sub_1DD550A50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = "PhoneAppSelectionDefaultModelLoad";
  *(v3 + 24) = 33;
  *(v3 + 32) = 2;
  *(v3 + 40) = "PhoneAppSelectionTrialModelLoad";
  *(v3 + 48) = 31;
  *(v3 + 56) = 2;
  *(v3 + 72) = a3;
  *(v3 + 80) = a1;
  *(v3 + 64) = a2;
  return v3;
}

double sub_1DD550A8C@<D0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v39 = *v1;
  v40 = a1;
  v3 = type metadata accessor for Signpost();
  v4 = OUTLINED_FUNCTION_7(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v2[2];
  v9 = v2[3];
  v11 = *(v2 + 32);
  if (qword_1EE166460 != -1)
  {
    OUTLINED_FUNCTION_4_2();
  }

  v12 = qword_1EE16F0C0;
  v13 = &v8[*(v3 + 20)];
  *v13 = v10;
  *(v13 + 1) = v9;
  v13[16] = v11;
  v14 = v12;
  sub_1DD63F9B8();
  *&v8[*(v3 + 24)] = v14;
  v15 = v14;
  sub_1DD6404D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCE0, &unk_1DD645500);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1DD643F90;
  v17 = sub_1DD6408F8();
  v19 = v18;
  *(v16 + 56) = MEMORY[0x1E69E6158];
  *(v16 + 64) = sub_1DD392BD8();
  *(v16 + 32) = v17;
  *(v16 + 40) = v19;
  OUTLINED_FUNCTION_3_61();
  v41 = v15;
  OUTLINED_FUNCTION_4_70();
  sub_1DD63F998();

  if (qword_1EE162D98 != -1)
  {
    OUTLINED_FUNCTION_0_4();
  }

  v20 = sub_1DD63F9F8();
  __swift_project_value_buffer(v20, qword_1EE16EFB8);
  v21 = sub_1DD63F9D8();
  v22 = sub_1DD640398();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_11_3(v23);
    OUTLINED_FUNCTION_8_53(&dword_1DD38D000, v21, v22, "PhoneAppSelectionModelManager#defaultModel Loading default Phone CoreML model");
    OUTLINED_FUNCTION_23_0();
  }

  v24 = v2[8] == 0xD00000000000001ALL && 0x80000001DD672AD0 == v2[9];
  if (v24 || (sub_1DD640CD8() & 1) != 0)
  {
    v25 = sub_1DD63F9D8();
    v26 = sub_1DD640398();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = OUTLINED_FUNCTION_9();
      OUTLINED_FUNCTION_11_3(v27);
      OUTLINED_FUNCTION_8_53(&dword_1DD38D000, v25, v26, "PhoneAppSelectionModelManager#defaultModel Loading default people centric app predictor model");
      OUTLINED_FUNCTION_23_0();
    }

    v28 = type metadata accessor for PhoneAppPredictorPeopleCentric();
    v29 = sub_1DD3C5588();
    v30 = sub_1DD63C0E4(v29);
    sub_1DD6404C8();
    OUTLINED_FUNCTION_4_70();
    sub_1DD63F9A8();
    if (v30)
    {
      v31 = &off_1F58BB6A8;
LABEL_20:
      v36 = v40;
      v40[3] = v28;
      v36[4] = v31;
      *v36 = v30;
      sub_1DD41BFFC(v8);
      return result;
    }
  }

  else
  {
    v32 = sub_1DD63F9D8();
    v33 = sub_1DD640398();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = OUTLINED_FUNCTION_9();
      OUTLINED_FUNCTION_11_3(v34);
      OUTLINED_FUNCTION_8_53(&dword_1DD38D000, v32, v33, "PhoneAppSelectionModelManager#defaultModel Loading default app predictor model");
      OUTLINED_FUNCTION_23_0();
    }

    v28 = type metadata accessor for PhoneAppPredictor();
    v35 = sub_1DD3C5588();
    v30 = sub_1DD63B9DC(v35);
    sub_1DD6404C8();
    OUTLINED_FUNCTION_4_70();
    sub_1DD63F9A8();
    if (v30)
    {
      v31 = &off_1F58BB6C0;
      goto LABEL_20;
    }
  }

  sub_1DD41BFFC(v8);
  result = 0.0;
  v38 = v40;
  *v40 = 0u;
  *(v38 + 1) = 0u;
  v38[4] = 0;
  return result;
}

double sub_1DD550EA0@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v89 = a1;
  v85 = a2;
  v83 = *v2;
  v4 = sub_1DD63CE68();
  v90 = *(v4 - 8);
  v91 = v4;
  v5 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v77 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v7);
  v78 = &v77 - v8;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v9);
  v79 = &v77 - v10;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v11);
  v82 = &v77 - v12;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v13);
  v81 = &v77 - v14;
  v15 = type metadata accessor for Signpost();
  v16 = OUTLINED_FUNCTION_7(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v92 = &v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v3[5];
  v20 = v3[6];
  v22 = *(v3 + 56);
  if (qword_1EE166460 != -1)
  {
    OUTLINED_FUNCTION_4_2();
  }

  v23 = qword_1EE16F0C0;
  v24 = v92;
  v25 = v92 + *(v15 + 20);
  *v25 = v21;
  *(v25 + 8) = v20;
  *(v25 + 16) = v22;
  v26 = v23;
  sub_1DD63F9B8();
  *(v24 + *(v15 + 24)) = v26;
  v27 = v26;
  sub_1DD6404D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCE0, &unk_1DD645500);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1DD643F90;
  v29 = sub_1DD6408F8();
  v31 = v30;
  *(v28 + 56) = MEMORY[0x1E69E6158];
  *(v28 + 64) = sub_1DD392BD8();
  *(v28 + 32) = v29;
  *(v28 + 40) = v31;
  OUTLINED_FUNCTION_3_61();
  v84 = v27;
  v86 = v21;
  v87 = v20;
  v88 = v22;
  sub_1DD63F998();

  if (qword_1EE162D98 != -1)
  {
    OUTLINED_FUNCTION_0_4();
  }

  v32 = sub_1DD63F9F8();
  v33 = __swift_project_value_buffer(v32, qword_1EE16EFB8);
  v35 = v89;
  v34 = v90;
  v36 = *(v90 + 16);
  v37 = v81;
  v38 = v91;
  v36(v81, v89, v91);
  v80 = v33;
  v39 = sub_1DD63F9D8();
  v40 = sub_1DD640398();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v93 = v42;
    *v41 = 136315138;
    v43 = sub_1DD63CDC8();
    v44 = v37;
    v45 = v36;
    v47 = v46;
    v48 = *(v34 + 8);
    v48(v44, v91);
    v49 = sub_1DD39565C(v43, v47, &v93);
    v36 = v45;
    v50 = v48;

    *(v41 + 4) = v49;
    _os_log_impl(&dword_1DD38D000, v39, v40, "PhoneAppSelectionModelManager#compiledModel Loading compiled Phone CoreML model from url: %s", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v42);
    v51 = v42;
    v35 = v89;
    MEMORY[0x1E12B3DA0](v51, -1, -1);
    v52 = v41;
    v38 = v91;
    MEMORY[0x1E12B3DA0](v52, -1, -1);
  }

  else
  {

    v53 = v37;
    v50 = *(v34 + 8);
    v50(v53, v38);
  }

  v54 = v82;
  v55 = v3[8] == 0xD00000000000001ALL && 0x80000001DD672AD0 == v3[9];
  if (v55 || (sub_1DD640CD8() & 1) != 0)
  {
    v56 = sub_1DD63F9D8();
    v57 = sub_1DD640398();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = OUTLINED_FUNCTION_9();
      OUTLINED_FUNCTION_11_3(v58);
      OUTLINED_FUNCTION_8_53(&dword_1DD38D000, v56, v57, "PhoneAppSelectionModelManager#compiledModel Loading compiled people centric app predictor model");
      OUTLINED_FUNCTION_23_0();
    }

    v36(v54, v35, v38);
    v59 = sub_1DD3C5588();
    sub_1DD51FA60();
    v60 = v79;
    v36(v79, v54, v38);
    v61 = sub_1DD551650(v60, v59);
    v62 = OUTLINED_FUNCTION_0_112();
    (v50)(v62);
    type metadata accessor for PhoneAppPredictorPeopleCentric();
    v63 = swift_allocObject();
    *(v63 + 16) = v61;
    sub_1DD6404C8();
    OUTLINED_FUNCTION_7_50();
    if (v63)
    {
      v64 = type metadata accessor for PhoneAppPredictorPeopleCentric();
      v65 = &off_1F58BB6A8;
LABEL_21:
      v74 = v85;
      v85[3] = v64;
      v74[4] = v65;
      *v74 = v63;
      sub_1DD41BFFC(v92);
      return result;
    }
  }

  else
  {
    v66 = sub_1DD63F9D8();
    v67 = sub_1DD640398();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = OUTLINED_FUNCTION_9();
      OUTLINED_FUNCTION_11_3(v68);
      OUTLINED_FUNCTION_8_53(&dword_1DD38D000, v66, v67, "PhoneAppSelectionModelManager#compiledModel Loading compiled app predictor model");
      OUTLINED_FUNCTION_23_0();
    }

    v69 = v78;
    v36(v78, v35, v38);
    v70 = sub_1DD3C5588();
    sub_1DD51FA60();
    v71 = v77;
    v36(v77, v69, v38);
    v72 = sub_1DD551650(v71, v70);
    v73 = OUTLINED_FUNCTION_0_112();
    (v50)(v73);
    type metadata accessor for PhoneAppPredictor();
    v63 = swift_allocObject();
    *(v63 + 16) = v72;
    sub_1DD6404C8();
    OUTLINED_FUNCTION_7_50();
    if (v63)
    {
      v64 = type metadata accessor for PhoneAppPredictor();
      v65 = &off_1F58BB6C0;
      goto LABEL_21;
    }
  }

  sub_1DD41BFFC(v92);
  result = 0.0;
  v76 = v85;
  *v85 = 0u;
  *(v76 + 1) = 0u;
  v76[4] = 0;
  return result;
}

id sub_1DD551650(uint64_t a1, void *a2)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1DD63CE08();
  v16[0] = 0;
  v5 = [swift_getObjCClassFromMetadata() modelWithContentsOfURL:v4 configuration:a2 error:v16];

  v6 = v16[0];
  if (v5)
  {
    v7 = sub_1DD63CE68();
    OUTLINED_FUNCTION_7(v7);
    v9 = *(v8 + 8);
    v10 = v6;
    v9(a1, v7);
  }

  else
  {
    v11 = v16[0];
    sub_1DD63CD98();

    swift_willThrow();
    v12 = sub_1DD63CE68();
    OUTLINED_FUNCTION_7(v12);
    (*(v13 + 8))(a1);
  }

  v14 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t sub_1DD5517A8(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v3 = *(a1 + 16);
  if (*(a2 + 1) != 1)
  {
    if (v3)
    {
      v5 = (a1 + 80 * v3 - 48);
      memcpy(__dst, v5, 0x49uLL);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBCE8, &qword_1DD6440A8);
      v2 = swift_allocObject();
      *(v2 + 16) = xmmword_1DD643F90;
      memcpy((v2 + 32), v5, 0x49uLL);
      sub_1DD474708(__dst, v7);
      return v2;
    }

LABEL_6:

    return v2;
  }

  if (!v3)
  {
    goto LABEL_6;
  }

  memcpy(__dst, (a1 + 32), 0x49uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBCE8, &qword_1DD6440A8);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1DD643F90;
  memcpy((v4 + 32), (v2 + 32), 0x49uLL);
  sub_1DD474708(__dst, v7);
  return v4;
}

void sub_1DD551900(uint64_t a1)
{
  matched = type metadata accessor for ContactMatchRuntimeData(0);
  v3 = *(matched - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](matched);
  v6 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v32 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v32 - v11;
  v13 = 0;
  v33 = a1;
  v14 = *(a1 + 296);
  v15 = *(v14 + 16);
  while (1)
  {
    if (v15 == v13)
    {
      OUTLINED_FUNCTION_1_97();
      return;
    }

    if (v13 >= *(v14 + 16))
    {
      __break(1u);
      return;
    }

    sub_1DD3CD140(v14 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v13, v6);
    v16 = &v6[*(matched + 20)];
    v17 = type metadata accessor for ContactResolver.SignalSet(0);
    if (v16[*(v17 + 204)])
    {
      break;
    }

    ++v13;
    OUTLINED_FUNCTION_0_113();
    sub_1DD551BFC(v6, v18);
  }

  v19 = v17;
  sub_1DD3CD200(v6, v9);
  sub_1DD3CD200(v9, v12);
  v20 = type metadata accessor for ContactResolverRunTimeData(0);
  v21 = (v33 + *(v20 + 64));
  v22 = v21[4];
  v32[3] = v21[2];
  v23 = *v21;
  v24 = v33 + *(v20 + 40);
  v25 = sub_1DD556FCC();
  MEMORY[0x1EEE9AC00](v25);
  *&v32[-4] = v12;
  sub_1DD450608(sub_1DD551BDC, &v32[-8], v25);

  v26 = &v12[*(matched + 20)];
  if ((v26[338] & 1) != 0 || v26[*(v19 + 216)] == 1)
  {
    v27 = v12[*(matched + 36)];
  }

  v28 = v26[*(v19 + 220)];
  v29 = *&aPhonecalmessag[8 * v22];
  v30 = *&aPhonecalmessag[8 * v22 + 24];
  OUTLINED_FUNCTION_1_97();
  OUTLINED_FUNCTION_0_113();
  sub_1DD551BFC(v12, v31);
}

uint64_t sub_1DD551BFC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

__n128 __swift_memcpy27_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 11) = *(a2 + 11);
  *a1 = result;
  return result;
}

uint64_t sub_1DD551C70(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 27))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_1DD551CB0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 26) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 27) = 1;
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

    *(result + 27) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void Place.init(worldPlaceName:domainObjectPlaceName:neighborhoodPlaceName:personPlace:)()
{
  OUTLINED_FUNCTION_18_4();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = *v12;
  v14 = v12[1];
  v15 = *(v12 + 8);
  sub_1DD3ADFA8(v16);
  memcpy((v11 + 56), v16, 0xCEuLL);
  *v11 = v9;
  *(v11 + 8) = v7;
  *(v11 + 16) = v5;
  *(v11 + 24) = v3;

  *(v11 + 32) = v13;
  *(v11 + 40) = v14;
  *(v11 + 48) = v15;
  memcpy(__dst, (v11 + 56), 0xCEuLL);
  sub_1DD3ADFD0(__dst, &qword_1ECCDB858, &qword_1DD642FE0);
  memcpy((v11 + 56), v1, 0xCEuLL);
  OUTLINED_FUNCTION_17();
}

void sub_1DD551DC4()
{
  OUTLINED_FUNCTION_18_4();
  v1 = v0;
  v3 = v2;
  v4 = 0xEC00000073736572;
  v6 = *v5;
  sub_1DD3ADFA8(__src);
  memcpy(&v34[6], __src, 0xCEuLL);

  v7 = 0x64646120656D6F68;
  switch(v6)
  {
    case 1:
      v7 = 0x646461206B726F77;
      break;
    case 2:
      v8 = "current location";
      goto LABEL_11;
    case 3:
      v4 = 0xE600000000000000;
      v7 = 0x79627261656ELL;
      break;
    case 4:
      v4 = 0xEE00737365726464;
      v7 = 0x61206C6F6F686373;
      break;
    case 5:
      v9 = 544045415;
      goto LABEL_8;
    case 6:
      v4 = 0xED00007373657264;
      v7 = 0x646120726568746FLL;
      break;
    case 7:
      v9 = 544829025;
LABEL_8:
      v7 = v9 | 0x7264646100000000;
      v4 = 0xEB00000000737365;
      break;
    case 8:
      v8 = "parking location";
LABEL_11:
      v4 = (v8 - 32) | 0x8000000000000000;
      v7 = 0xD000000000000010;
      break;
    default:
      break;
  }

  v29 = v7;
  v30 = v4;
  v10 = [v1 givenName];
  v11 = sub_1DD63FDD8();
  v27 = v12;
  v28 = v11;

  v13 = [v1 familyName];
  v14 = sub_1DD63FDD8();
  v16 = v15;

  v17 = [objc_opt_self() stringFromContact:v1 style:0];
  if (v17)
  {
    v18 = v17;
    v19 = sub_1DD63FDD8();
    v21 = v20;
  }

  else
  {
    v19 = 0;
    v21 = 0xE000000000000000;
  }

  v22 = v6 | 0x300;
  v23 = [v1 givenName];
  v24 = sub_1DD63FDD8();
  v26 = v25;

  v31[0] = v28;
  v31[1] = v27;
  LOWORD(v31[2]) = 514;
  v31[3] = v14;
  v31[4] = v16;
  LOWORD(v31[5]) = 514;
  v31[6] = v19;
  v31[7] = v21;
  LOWORD(v31[8]) = 514;
  v31[9] = v24;
  v31[10] = v26;
  LOWORD(v31[11]) = 514;
  memset(&v31[12], 0, 17);
  memset(&v31[15], 0, 18);
  memset(&v31[18], 0, 18);
  *(&v31[20] + 2) = 50332416;
  nullsub_1(v31);
  memcpy(&v32[5], v31, 0xA6uLL);
  v32[0] = v29;
  v32[1] = v30;
  LOWORD(v32[2]) = v22;
  WORD1(v32[2]) = 515;
  v32[3] = 0;
  v32[4] = 0;
  nullsub_1(v32);
  memcpy(__dst, &v34[6], 0xCEuLL);
  sub_1DD3ADFD0(__dst, &qword_1ECCDB858, &qword_1DD642FE0);
  memcpy(&v34[6], v32, 0xCEuLL);
  *v3 = 0u;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0;
  memcpy((v3 + 50), v34, 0xD4uLL);
  OUTLINED_FUNCTION_17();
}

void sub_1DD5520DC()
{
  OUTLINED_FUNCTION_18_4();
  memcpy(__dst, (v0 + 56), 0xCEuLL);
  if (j__OUTLINED_FUNCTION_0_99(__dst) == 1 || !*(&__dst[0] + 1))
  {
    goto LABEL_14;
  }

  v1 = __dst[1];
  memcpy(v59, &__dst[2] + 8, 0xA6uLL);
  if (j__OUTLINED_FUNCTION_0_99(v59) == 1)
  {

    v2 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v3 = v59[7];
    if (v59[7])
    {
      v4 = v59[6];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v5 = swift_allocObject();
      v2 = v5;
      *(v5 + 16) = xmmword_1DD643F90;
      *(v5 + 32) = v4;
    }

    else
    {
      v3 = *(&__dst[7] + 1);
      v6 = *&__dst[7];
      if (!*(&__dst[7] + 1))
      {
        v13 = *(&__dst[2] + 1);
        v14 = *&__dst[3];
        v15 = *(&__dst[4] + 1);
        v16 = *&__dst[4];
        v17 = __dst[5];
        v31 = *(&__dst[5] + 8);
        v29 = WORD4(__dst[6]);
        v30 = WORD4(__dst[3]);
        v18 = __dst[8];
        v38 = __dst[10];
        v39 = *(&__dst[8] + 8);
        v35 = __dst[11];
        v36 = BYTE8(__dst[9]);
        v37 = *(&__dst[11] + 8);
        v33 = WORD5(__dst[12]);
        v34 = WORD4(__dst[12]);
        v32 = WORD6(__dst[12]);
        if (*&__dst[3])
        {
          v28 = *&__dst[4];

          sub_1DD3CDD14(&__dst[2] + 8, &v40, &qword_1ECCDE900, &qword_1DD659DE0);

          sub_1DD3BE2A4();
          v2 = v19;
          v20 = *(v19 + 16);
          if (v20 >= *(v19 + 24) >> 1)
          {
            sub_1DD3BE2A4();
            v2 = v24;
          }

          *(v2 + 16) = v20 + 1;
          v21 = v2 + 16 * v20;
          *(v21 + 32) = v13;
          *(v21 + 40) = v14;
          v16 = v28;
        }

        else
        {

          sub_1DD3CDD14(&__dst[2] + 8, &v40, &qword_1ECCDE900, &qword_1DD659DE0);
          v2 = MEMORY[0x1E69E7CC0];
        }

        v40 = v13;
        v41 = v14;
        v42 = v30;
        v43 = v16;
        v44 = v15;
        v45 = v17;
        v46 = v31;
        v47 = v29;
        v48 = v6;
        v49 = 0;
        v50 = v18;
        v51 = v39;
        v52 = v36;
        v53 = v38;
        v54 = v35;
        v55 = v37;
        v56 = v34;
        v57 = v33;
        v58 = v32;

        sub_1DD54091C(&v40);
        if (v15)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v25 = *(v2 + 16);
            sub_1DD3BE2A4();
            v2 = v26;
          }

          v22 = *(v2 + 16);
          if (v22 >= *(v2 + 24) >> 1)
          {
            sub_1DD3BE2A4();
            v2 = v27;
          }

          *(v2 + 16) = v22 + 1;
          v23 = v2 + 16 * v22;
          *(v23 + 32) = v16;
          *(v23 + 40) = v15;
        }

        goto LABEL_10;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v5 = swift_allocObject();
      v2 = v5;
      *(v5 + 16) = xmmword_1DD643F90;
      *(v5 + 32) = v6;
    }

    *(v5 + 40) = v3;
  }

LABEL_10:
  if (v1 == 9 || (LOBYTE(v40) = v1, v7 = sub_1DD54AEEC(), v9 = v8, , !*(v2 + 16)))
  {
  }

  else
  {
    v40 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFD20, &qword_1DD648290);
    sub_1DD4477A4();
    v10 = sub_1DD63FD58();
    v12 = v11;

    v40 = v10;
    v41 = v12;
    MEMORY[0x1E12B2260](2126631, 0xE300000000000000);
    MEMORY[0x1E12B2260](v7, v9);
  }

LABEL_14:
  OUTLINED_FUNCTION_17();
}

uint64_t Place.worldPlaceName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Place.domainObjectPlaceName.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t Place.neighborhoodPlaceName.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  *a1 = *(v1 + 32);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
}

uint64_t Place.personPlace.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 56), 0xCEuLL);
  memcpy(a1, (v1 + 56), 0xCEuLL);
  return sub_1DD3CDD14(__dst, v4, &qword_1ECCDB858, &qword_1DD642FE0);
}

void static Place.== infix(_:_:)()
{
  OUTLINED_FUNCTION_18_4();
  v1 = v0;
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  v72 = v2[4];
  v77 = v2[5];
  HIDWORD(v67) = *(v2 + 24);
  memcpy(__dst, v2 + 7, 0xCEuLL);
  v8 = *v1;
  v7 = v1[1];
  v10 = v1[2];
  v9 = v1[3];
  v11 = v1[5];
  v62 = v1[4];
  HIDWORD(v57) = *(v1 + 24);
  memcpy(__src, v1 + 7, 0xCEuLL);
  if (!v4)
  {
    if (v7)
    {
      goto LABEL_33;
    }

LABEL_10:
    if (v6)
    {
      if (!v9)
      {
        goto LABEL_33;
      }

      v13 = v5 == v10 && v6 == v9;
      if (!v13 && (sub_1DD640CD8() & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    else if (v9)
    {
      goto LABEL_33;
    }

    if (v77)
    {
      v88[0] = v72;
      v88[1] = v77;
      LOWORD(v88[2]) = WORD2(v67);
      if (v11)
      {
        v86[0] = v62;
        v86[1] = v11;
        LOWORD(v86[2]) = WORD2(v57);
        swift_bridgeObjectRetain_n();

        v14 = static NeighborhoodPlaceName.== infix(_:_:)(v88, v86);

        if ((v14 & 1) == 0)
        {
          goto LABEL_33;
        }

LABEL_26:
        memcpy(v88, __dst, 0xCEuLL);
        memcpy(&v88[26], __src, 0xCEuLL);
        memcpy(v89, __dst, 0xCEuLL);
        if (j__OUTLINED_FUNCTION_0_99(v89) == 1)
        {
          memcpy(v86, &v88[26], 0xCEuLL);
          if (j__OUTLINED_FUNCTION_0_99(v86) == 1)
          {
            OUTLINED_FUNCTION_5_69(v87);
            OUTLINED_FUNCTION_3_68(__dst, v85);
            OUTLINED_FUNCTION_3_68(__src, v85);
            sub_1DD3ADFD0(v87, &qword_1ECCDB858, &qword_1DD642FE0);
            goto LABEL_33;
          }

          OUTLINED_FUNCTION_3_68(__dst, v87);
          OUTLINED_FUNCTION_3_68(__src, v87);
        }

        else
        {
          OUTLINED_FUNCTION_5_69(v87);
          OUTLINED_FUNCTION_5_69(v85);
          memcpy(v86, &v88[26], 0xCEuLL);
          if (j__OUTLINED_FUNCTION_0_99(v86) != 1)
          {
            memcpy(v84, &v88[26], 0xCEuLL);
            OUTLINED_FUNCTION_2_84(__dst, v36, v37, v38, v39, v40, v41, v42, v57, v62, v67, v72, v77, v82[0], v82[1], v82[2], v82[3], v82[4], v82[5], v82[6], v82[7], v82[8], v82[9], v82[10], v82[11], v82[12], v82[13], v82[14], v82[15], v82[16], v82[17], v82[18], v82[19], v82[20], v82[21], v82[22], v82[23], v82[24], v82[25], v83[0]);
            OUTLINED_FUNCTION_2_84(__src, v43, v44, v45, v46, v47, v48, v49, v60, v65, v70, v75, v80, v82[0], v82[1], v82[2], v82[3], v82[4], v82[5], v82[6], v82[7], v82[8], v82[9], v82[10], v82[11], v82[12], v82[13], v82[14], v82[15], v82[16], v82[17], v82[18], v82[19], v82[20], v82[21], v82[22], v82[23], v82[24], v82[25], v83[0]);
            OUTLINED_FUNCTION_2_84(v87, v50, v51, v52, v53, v54, v55, v56, v61, v66, v71, v76, v81, v82[0], v82[1], v82[2], v82[3], v82[4], v82[5], v82[6], v82[7], v82[8], v82[9], v82[10], v82[11], v82[12], v82[13], v82[14], v82[15], v82[16], v82[17], v82[18], v82[19], v82[20], v82[21], v82[22], v82[23], v82[24], v82[25], v83[0]);
            static PersonPlace.== infix(_:_:)(v85, v84);
            memcpy(v82, v84, 0xCEuLL);
            sub_1DD54A650(v82);
            memcpy(v83, v85, 0xCEuLL);
            sub_1DD54A650(v83);
            OUTLINED_FUNCTION_5_69(v84);
            sub_1DD3ADFD0(v84, &qword_1ECCDB858, &qword_1DD642FE0);
            goto LABEL_33;
          }

          OUTLINED_FUNCTION_5_69(v84);
          OUTLINED_FUNCTION_2_84(__dst, v15, v16, v17, v18, v19, v20, v21, v57, v62, v67, v72, v77, v82[0], v82[1], v82[2], v82[3], v82[4], v82[5], v82[6], v82[7], v82[8], v82[9], v82[10], v82[11], v82[12], v82[13], v82[14], v82[15], v82[16], v82[17], v82[18], v82[19], v82[20], v82[21], v82[22], v82[23], v82[24], v82[25], v83[0]);
          OUTLINED_FUNCTION_2_84(__src, v22, v23, v24, v25, v26, v27, v28, v58, v63, v68, v73, v78, v82[0], v82[1], v82[2], v82[3], v82[4], v82[5], v82[6], v82[7], v82[8], v82[9], v82[10], v82[11], v82[12], v82[13], v82[14], v82[15], v82[16], v82[17], v82[18], v82[19], v82[20], v82[21], v82[22], v82[23], v82[24], v82[25], v83[0]);
          OUTLINED_FUNCTION_2_84(v87, v29, v30, v31, v32, v33, v34, v35, v59, v64, v69, v74, v79, v82[0], v82[1], v82[2], v82[3], v82[4], v82[5], v82[6], v82[7], v82[8], v82[9], v82[10], v82[11], v82[12], v82[13], v82[14], v82[15], v82[16], v82[17], v82[18], v82[19], v82[20], v82[21], v82[22], v82[23], v82[24], v82[25], v83[0]);
          sub_1DD54A650(v84);
        }

        memcpy(v86, v88, 0x19EuLL);
        sub_1DD3ADFD0(v86, &qword_1ECCDEA60, &qword_1DD65A8E8);
        goto LABEL_33;
      }
    }

    else if (!v11)
    {

      goto LABEL_26;
    }

    goto LABEL_33;
  }

  if (v7)
  {
    v12 = v3 == v8 && v4 == v7;
    if (v12 || (sub_1DD640CD8() & 1) != 0)
    {
      goto LABEL_10;
    }
  }

LABEL_33:
  OUTLINED_FUNCTION_17();
}

uint64_t sub_1DD552994(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x616C50646C726F77 && a2 == 0xEE00656D614E6563;
  if (v4 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000015 && 0x80000001DD672C10 == a2;
    if (v6 || (sub_1DD640CD8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000015 && 0x80000001DD672C30 == a2;
      if (v7 || (sub_1DD640CD8() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6C506E6F73726570 && a2 == 0xEB00000000656361)
      {

        return 3;
      }

      else
      {
        v9 = sub_1DD640CD8();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_1DD552B08(char a1)
{
  result = 0x616C50646C726F77;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000015;
      break;
    case 2:
      result = 0xD000000000000015;
      break;
    case 3:
      result = 0x6C506E6F73726570;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD552BA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD552994(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD552BD0(uint64_t a1)
{
  v2 = sub_1DD552EB8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD552C0C(uint64_t a1)
{
  v2 = sub_1DD552EB8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Place.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEA68, &qword_1DD65A8F0);
  v4 = OUTLINED_FUNCTION_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v10 = &v22 - v9;
  v11 = *v1;
  v12 = v1[1];
  v13 = v1[3];
  v26 = v1[2];
  v27 = v11;
  v14 = v1[5];
  v24 = v1[4];
  v25 = v13;
  v23 = v14;
  v32 = *(v1 + 24);
  memcpy(v31, v1 + 7, 0xCEuLL);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD552EB8();
  sub_1DD640EF8();
  LOBYTE(v30[0]) = 0;
  v16 = v28;
  v17 = v10;
  sub_1DD640BC8();
  if (!v16)
  {
    v18 = v32;
    v19 = v23;
    v20 = v24;
    LOBYTE(v30[0]) = 1;
    sub_1DD640BC8();
    v30[0] = v20;
    v30[1] = v19;
    LOWORD(v30[2]) = v18;
    v29[0] = 2;
    sub_1DD552F0C();

    sub_1DD640C08();

    memcpy(v30, v31, 0xCEuLL);
    v33 = 3;
    sub_1DD3CDD14(v31, v29, &qword_1ECCDB858, &qword_1DD642FE0);
    sub_1DD552F60();
    sub_1DD640C08();
    memcpy(v29, v30, 0xCEuLL);
    sub_1DD3ADFD0(v29, &qword_1ECCDB858, &qword_1DD642FE0);
  }

  return (*(v6 + 8))(v17, v3);
}

unint64_t sub_1DD552EB8()
{
  result = qword_1ECCDEA70;
  if (!qword_1ECCDEA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDEA70);
  }

  return result;
}

unint64_t sub_1DD552F0C()
{
  result = qword_1ECCDEA78;
  if (!qword_1ECCDEA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDEA78);
  }

  return result;
}

unint64_t sub_1DD552F60()
{
  result = qword_1ECCDEA80;
  if (!qword_1ECCDEA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDEA80);
  }

  return result;
}

uint64_t Place.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEA88, &qword_1DD65A8F8);
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1DD3ADFA8(v37);
  memcpy(&v36[6], v37, 0xCEuLL);
  v11 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_1DD552EB8();
  sub_1DD640ED8();
  if (v2)
  {
    OUTLINED_FUNCTION_4_71();
    __swift_destroy_boxed_opaque_existential_1(a1);
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
  }

  else
  {
    v23 = a2;
    OUTLINED_FUNCTION_47();
    v21 = sub_1DD640AD8();
    v22 = v14;
    LOBYTE(v28) = 1;
    OUTLINED_FUNCTION_47();
    v15 = sub_1DD640AD8();
    v17 = v16;
    v20 = v15;
    LOBYTE(v26[0]) = 2;
    sub_1DD553354();
    OUTLINED_FUNCTION_47();
    sub_1DD640B18();
    v12 = v28;
    v11 = v29;
    v8 = v30;

    v38 = 3;
    sub_1DD5533A8();
    OUTLINED_FUNCTION_47();
    sub_1DD640B18();
    v18 = OUTLINED_FUNCTION_1_98();
    v19(v18);
    memcpy(v24, v27, sizeof(v24));
    memcpy(v25, &v36[6], 0xCEuLL);
    sub_1DD3ADFD0(v25, &qword_1ECCDB858, &qword_1DD642FE0);
    memcpy(&v36[6], v24, 0xCEuLL);
    v26[0] = v21;
    v26[1] = v22;
    v26[2] = v20;
    v26[3] = v17;
    v26[4] = v12;
    v26[5] = v11;
    LOWORD(v26[6]) = v8;
    memcpy(&v26[6] + 2, v36, 0xD4uLL);
    memcpy(v23, v26, 0x106uLL);
    sub_1DD5533FC(v26, &v28);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v28 = v21;
    v29 = v22;
    v30 = v20;
    v31 = v17;
  }

  v32 = v12;
  v33 = v11;
  v34 = v8;
  memcpy(v35, v36, sizeof(v35));
  return sub_1DD501494(&v28);
}

unint64_t sub_1DD553354()
{
  result = qword_1ECCDEA90;
  if (!qword_1ECCDEA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDEA90);
  }

  return result;
}

unint64_t sub_1DD5533A8()
{
  result = qword_1ECCDEA98;
  if (!qword_1ECCDEA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDEA98);
  }

  return result;
}

uint64_t sub_1DD553470(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 262))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DD5534C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 248) = 0;
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
    *(result + 260) = 0;
    *(result + 256) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 262) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 262) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Place.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD553650()
{
  result = qword_1ECCDEAA0;
  if (!qword_1ECCDEAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDEAA0);
  }

  return result;
}

unint64_t sub_1DD5536A8()
{
  result = qword_1ECCDEAA8;
  if (!qword_1ECCDEAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDEAA8);
  }

  return result;
}

unint64_t sub_1DD553700()
{
  result = qword_1ECCDEAB0;
  if (!qword_1ECCDEAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDEAB0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_68(uint64_t a1, uint64_t a2)
{

  return sub_1DD3CDD14(a1, a2, v2, v3);
}

_BYTE *storeEnumTagSinglePayload for PLUSFeature(_BYTE *result, int a2, int a3)
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

uint64_t sub_1DD553818(uint64_t a1)
{
  v3 = type metadata accessor for ContactResolverConfig(0);
  v4 = OUTLINED_FUNCTION_7(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE165FB0 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  v9 = sub_1DD63F9F8();
  OUTLINED_FUNCTION_130(v9, qword_1EE16F068);
  sub_1DD554754(a1, v8, type metadata accessor for ContactResolverConfig);
  v10 = sub_1DD63F9D8();
  v11 = sub_1DD640368();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v52 = v13;
    *v12 = 136315138;
    v14 = MEMORY[0x1E12B2430](*&v8[*(v3 + 44)], MEMORY[0x1E69E6158]);
    v16 = v15;
    OUTLINED_FUNCTION_5_70();
    v17 = sub_1DD39565C(v14, v16, &v52);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_1DD38D000, v10, v11, "PLUS: Here are the bundle ids: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_0_1();
  }

  else
  {

    OUTLINED_FUNCTION_5_70();
  }

  sub_1DD558DD8(*(a1 + *(v3 + 44)), sub_1DD5543C8);
  if (!v18)
  {
    v23 = *(a1 + 40);
    v24 = *(a1 + 48);
    v25 = v23 == 0xD000000000000011 && 0x80000001DD66A780 == v24;
    if (v25 || (v26 = *(a1 + 40), v27 = *(a1 + 48), (sub_1DD640CD8() & 1) != 0))
    {
      v19 = sub_1DD63F9D8();
      v28 = sub_1DD640368();
      if (OUTLINED_FUNCTION_29_15(v28))
      {
        v29 = OUTLINED_FUNCTION_9();
        OUTLINED_FUNCTION_20_0(v29);
        v32 = "PLUS: isSupportedRequest - Request has matching intent";
LABEL_16:
        OUTLINED_FUNCTION_2_85(&dword_1DD38D000, v30, v31, v32);
        v21 = 0;
        goto LABEL_25;
      }

      goto LABEL_32;
    }

    v33 = v23 == 0xD000000000000013 && 0x80000001DD66CB70 == v24;
    if (v33 || (sub_1DD640CD8() & 1) != 0)
    {
      v19 = sub_1DD63F9D8();
      v34 = sub_1DD640368();
      if (OUTLINED_FUNCTION_29_15(v34))
      {
        v35 = OUTLINED_FUNCTION_9();
        OUTLINED_FUNCTION_20_0(v35);
        v38 = "PLUS: isSupportedRequest - Request has matching intent";
LABEL_24:
        OUTLINED_FUNCTION_2_85(&dword_1DD38D000, v36, v37, v38);
        v21 = 1;
        goto LABEL_25;
      }
    }

    else
    {
      v39 = sub_1DD63F9D8();
      v40 = sub_1DD640368();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = OUTLINED_FUNCTION_9();
        *v41 = 0;
        _os_log_impl(&dword_1DD38D000, v39, v40, "PLUS: isSupportedRequest - Request does not have matching intent, falling back to search domains", v41, 2u);
        OUTLINED_FUNCTION_0_1();
      }

      v42 = *(a1 + *(v3 + 52));
      v19 = sub_1DD63F9D8();
      v43 = sub_1DD640368();
      v44 = OUTLINED_FUNCTION_29_15(v43);
      if (v42 != 4)
      {
        if (v42 != 1)
        {
          if (v44)
          {
            v47 = OUTLINED_FUNCTION_9();
            OUTLINED_FUNCTION_20_0(v47);
            OUTLINED_FUNCTION_2_85(&dword_1DD38D000, v48, v49, "PLUS: isSupportedRequest - Either unable to determine request type or request is not supported.");
            v21 = 2;
            goto LABEL_25;
          }

LABEL_38:
          v21 = 2;
          goto LABEL_39;
        }

        if (v44)
        {
          v45 = OUTLINED_FUNCTION_9();
          OUTLINED_FUNCTION_20_0(v45);
          v32 = "PLUS: isSupportedRequest - Request has matching domain: Phone";
          goto LABEL_16;
        }

LABEL_32:
        v21 = 0;
        goto LABEL_39;
      }

      if (v44)
      {
        v46 = OUTLINED_FUNCTION_9();
        OUTLINED_FUNCTION_20_0(v46);
        v38 = "PLUS: isSupportedRequest - Request has matching domain: Messages";
        goto LABEL_24;
      }
    }

    v21 = 1;
    goto LABEL_39;
  }

  v19 = sub_1DD63F9D8();
  v20 = sub_1DD640368();
  if (!os_log_type_enabled(v19, v20))
  {
    goto LABEL_38;
  }

  v21 = 2;
  v22 = OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_20_0(v22);
  _os_log_impl(&dword_1DD38D000, v19, v20, "PLUS: determineIfPhoneCallRequestWithFallback - BundleIds contains 3rd party Bundle Id. Not Running PICS", v1, 2u);
LABEL_25:
  OUTLINED_FUNCTION_0_1();
LABEL_39:

  return v21;
}

uint64_t sub_1DD553C54(uint64_t a1, unsigned __int8 a2)
{
  if ((sub_1DD554444() & 1) != 0 && a2 != 2)
  {
    if (a2 <= 1u)
    {
      if (qword_1EE165FB0 != -1)
      {
        OUTLINED_FUNCTION_0_5();
      }

      v3 = sub_1DD63F9F8();
      OUTLINED_FUNCTION_130(v3, qword_1EE16F068);
      v4 = sub_1DD63F9D8();
      v5 = sub_1DD640368();
      if (!OUTLINED_FUNCTION_29_15(v5))
      {
        v9 = 1;
        goto LABEL_20;
      }

      v6 = OUTLINED_FUNCTION_9();
      OUTLINED_FUNCTION_20_0(v6);
      OUTLINED_FUNCTION_2_85(&dword_1DD38D000, v7, v8, "PLUS: suggestion surfacing (phoneCall & messages) enabled by default ");
      v9 = 1;
      goto LABEL_17;
    }

    if (qword_1EE165FB0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v16 = sub_1DD63F9F8();
    OUTLINED_FUNCTION_130(v16, qword_1EE16F068);
    v4 = sub_1DD63F9D8();
    v17 = sub_1DD640368();
    if (OUTLINED_FUNCTION_29_15(v17))
    {
      v18 = OUTLINED_FUNCTION_9();
      OUTLINED_FUNCTION_20_0(v18);
      v15 = "PLUS: suggestion surfacing (phoneCall): false - request unsupported";
      goto LABEL_16;
    }

LABEL_18:
    v9 = 0;
    goto LABEL_20;
  }

  if (qword_1EE165FB0 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  v10 = sub_1DD63F9F8();
  OUTLINED_FUNCTION_130(v10, qword_1EE16F068);
  v4 = sub_1DD63F9D8();
  v11 = sub_1DD640368();
  if (!OUTLINED_FUNCTION_29_15(v11))
  {
    goto LABEL_18;
  }

  v12 = OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_20_0(v12);
  v15 = "PLUS: suggestion querying (all domains): false - Unsupported device or request type";
LABEL_16:
  OUTLINED_FUNCTION_2_85(&dword_1DD38D000, v13, v14, v15);
  v9 = 0;
LABEL_17:
  OUTLINED_FUNCTION_0_1();
LABEL_20:

  return v9;
}

uint64_t sub_1DD553DE8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCE88, &unk_1DD64C280);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v67 - v7;
  matched = type metadata accessor for ContactMatchRuntimeData(0);
  v10 = *(matched - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](matched);
  v14 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v71 = &v67 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v67 - v17;
  if ((sub_1DD553C54(0, a3) & 1) == 0)
  {
    if (qword_1EE165FB0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v31 = sub_1DD63F9F8();
    OUTLINED_FUNCTION_130(v31, qword_1EE16F068);
    v32 = sub_1DD63F9D8();
    v33 = sub_1DD640368();
    if (!os_log_type_enabled(v32, v33))
    {
      goto LABEL_21;
    }

    v34 = OUTLINED_FUNCTION_9();
    *v34 = 0;
    v35 = "PLUS: suggestion force prompting: false - suggestion surfacing disabled";
    v36 = v33;
    v37 = v32;
    v38 = v34;
    v39 = 2;
LABEL_20:
    _os_log_impl(&dword_1DD38D000, v37, v36, v35, v38, v39);
    OUTLINED_FUNCTION_0_1();
LABEL_21:

    return 0;
  }

  v69 = v14;
  v70 = v8;
  v19 = 0;
  v20 = *(a1 + 16);
  v21 = MEMORY[0x1E69E7CC0];
  while (v20 != v19)
  {
    v22 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v23 = *(v10 + 72);
    sub_1DD554754(a1 + v22 + v23 * v19, v18, type metadata accessor for ContactMatchRuntimeData);
    v24 = &v18[*(matched + 20)];
    if (v24[*(type metadata accessor for ContactResolver.SignalSet(0) + 204)] == 1)
    {
      sub_1DD3CD200(v18, v71);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v72 = v21;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v27 = *(v21 + 16);
        sub_1DD42B564();
        v21 = v72;
      }

      v28 = v21;
      v29 = *(v21 + 16);
      v30 = v29 + 1;
      if (v29 >= *(v28 + 24) >> 1)
      {
        v68 = v29 + 1;
        sub_1DD42B564();
        v30 = v68;
        v28 = v72;
      }

      ++v19;
      *(v28 + 16) = v30;
      sub_1DD3CD200(v71, v28 + v22 + v29 * v23);
      v21 = v28;
    }

    else
    {
      OUTLINED_FUNCTION_1_99();
      sub_1DD5547B4(v18, v25);
      ++v19;
    }
  }

  if (*(v21 + 16) > 1uLL)
  {
    if (qword_1EE165FB0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v40 = sub_1DD63F9F8();
    OUTLINED_FUNCTION_130(v40, qword_1EE16F068);

    v32 = sub_1DD63F9D8();
    v41 = sub_1DD640378();
    if (!os_log_type_enabled(v32, v41))
    {

      return 0;
    }

    v42 = swift_slowAlloc();
    *v42 = 134217984;
    v43 = *(v21 + 16);

    *(v42 + 4) = v43;

    v35 = "PLUS: suggestion force prompting: false - expected at most 1 PLUS result. Found %ld.";
    v36 = v41;
    v37 = v32;
    v38 = v42;
    v39 = 12;
    goto LABEL_20;
  }

  v45 = v70;
  sub_1DD558EE8(v21, v70);

  if (__swift_getEnumTagSinglePayload(v45, 1, matched) == 1)
  {
    sub_1DD55480C(v45);
    return 0;
  }

  v46 = v45;
  v47 = v69;
  sub_1DD3CD200(v46, v69);
  if ((*(v47 + *(matched + 36)) & 1) == 0)
  {
    if (qword_1EE165FB0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v57 = sub_1DD63F9F8();
    OUTLINED_FUNCTION_130(v57, qword_1EE16F068);
    v58 = sub_1DD63F9D8();
    v59 = sub_1DD640368();
    if (!OUTLINED_FUNCTION_4_0(v59))
    {
      goto LABEL_39;
    }

    *OUTLINED_FUNCTION_9() = 0;
    v62 = "PLUS: suggestion force prompting: true - suggestion will not be surfaced otherwise.";
    goto LABEL_38;
  }

  v48 = v47 + *(matched + 20);
  if (*(v48 + *(type metadata accessor for ContactResolver.SignalSet(0) + 212)) & 1) != 0 || (*(v48 + 338))
  {
    if (qword_1EE165FB0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v49 = sub_1DD63F9F8();
    OUTLINED_FUNCTION_130(v49, qword_1EE16F068);
    v50 = sub_1DD63F9D8();
    v51 = sub_1DD640368();
    v52 = OUTLINED_FUNCTION_4_0(v51);
    v53 = v69;
    if (v52)
    {
      *OUTLINED_FUNCTION_9() = 0;
      OUTLINED_FUNCTION_11_4(&dword_1DD38D000, v54, v55, "PLUS: suggestion force prompting: false - PLUS suggestion does not meet criteria.");
      OUTLINED_FUNCTION_0_1();
    }

    OUTLINED_FUNCTION_1_99();
    sub_1DD5547B4(v53, v56);
    return 0;
  }

  if (qword_1EE165FB0 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  v64 = sub_1DD63F9F8();
  OUTLINED_FUNCTION_130(v64, qword_1EE16F068);
  v58 = sub_1DD63F9D8();
  v65 = sub_1DD640368();
  v66 = OUTLINED_FUNCTION_4_0(v65);
  v47 = v69;
  if (v66)
  {
    *OUTLINED_FUNCTION_9() = 0;
    v62 = "PLUS: suggestion force prompting: true - PLUS suggestion is not confirmed and a new candidate.";
LABEL_38:
    OUTLINED_FUNCTION_11_4(&dword_1DD38D000, v60, v61, v62);
    OUTLINED_FUNCTION_0_1();
  }

LABEL_39:

  OUTLINED_FUNCTION_1_99();
  sub_1DD5547B4(v47, v63);
  return 1;
}

BOOL sub_1DD5543C8(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  sub_1DD3B52B8();
  sub_1DD3B530C();
  return (sub_1DD63FD48() & 1) == 0;
}

uint64_t sub_1DD554444()
{
  v0 = AFDeviceSupportsSiriUOD();
  if (v0)
  {
    if (qword_1EE165FB0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v1 = sub_1DD63F9F8();
    OUTLINED_FUNCTION_130(v1, qword_1EE16F068);
    v2 = sub_1DD63F9D8();
    v3 = sub_1DD640368();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = OUTLINED_FUNCTION_9();
      *v4 = 0;
      v5 = "PLUS: Device and OS is supported";
LABEL_10:
      _os_log_impl(&dword_1DD38D000, v2, v3, v5, v4, 2u);
      OUTLINED_FUNCTION_0_1();
    }
  }

  else
  {
    if (qword_1EE165FB0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v6 = sub_1DD63F9F8();
    OUTLINED_FUNCTION_130(v6, qword_1EE16F068);
    v2 = sub_1DD63F9D8();
    v3 = sub_1DD640368();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = OUTLINED_FUNCTION_9();
      *v4 = 0;
      v5 = "PLUS: Device is not supported";
      goto LABEL_10;
    }
  }

  return v0;
}

uint64_t sub_1DD554570(char a1, char a2)
{
  if (a2 != 2)
  {
    if (sub_1DD554444())
    {
      if (a1)
      {
        if (qword_1EE165FB0 != -1)
        {
          OUTLINED_FUNCTION_0_5();
        }

        v10 = sub_1DD63F9F8();
        OUTLINED_FUNCTION_130(v10, qword_1EE16F068);
        v3 = sub_1DD63F9D8();
        v11 = sub_1DD640368();
        if (!OUTLINED_FUNCTION_29_15(v11))
        {
          v15 = 1;
          goto LABEL_23;
        }

        v12 = OUTLINED_FUNCTION_9();
        OUTLINED_FUNCTION_20_0(v12);
        OUTLINED_FUNCTION_2_85(&dword_1DD38D000, v13, v14, "PLUS:  SiriVocab suggestion querying (all domains): true - Trial factor isPICSEnabledAtRuntimeInSiriVocab");
        v15 = 1;
        goto LABEL_21;
      }

      if (qword_1EE165FB0 != -1)
      {
        OUTLINED_FUNCTION_0_5();
      }

      v19 = sub_1DD63F9F8();
      OUTLINED_FUNCTION_130(v19, qword_1EE16F068);
      v3 = sub_1DD63F9D8();
      v20 = sub_1DD640368();
      if (OUTLINED_FUNCTION_29_15(v20))
      {
        v21 = OUTLINED_FUNCTION_9();
        OUTLINED_FUNCTION_20_0(v21);
        v8 = "PLUS:  SiriVocab suggestion querying (all domains): false - Trial factor isPICSEnabledAtRuntimeInSiriVocab";
        goto LABEL_20;
      }
    }

    else
    {
      if (qword_1EE165FB0 != -1)
      {
        OUTLINED_FUNCTION_0_5();
      }

      v16 = sub_1DD63F9F8();
      OUTLINED_FUNCTION_130(v16, qword_1EE16F068);
      v3 = sub_1DD63F9D8();
      v17 = sub_1DD640368();
      if (OUTLINED_FUNCTION_29_15(v17))
      {
        v18 = OUTLINED_FUNCTION_9();
        OUTLINED_FUNCTION_20_0(v18);
        v8 = "PLUS:  SiriVocab suggestion querying (all domains): false - Unsupported device";
        goto LABEL_20;
      }
    }

LABEL_22:
    v15 = 0;
    goto LABEL_23;
  }

  if (qword_1EE165FB0 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  v2 = sub_1DD63F9F8();
  OUTLINED_FUNCTION_130(v2, qword_1EE16F068);
  v3 = sub_1DD63F9D8();
  v4 = sub_1DD640368();
  if (!OUTLINED_FUNCTION_29_15(v4))
  {
    goto LABEL_22;
  }

  v5 = OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_20_0(v5);
  v8 = "PLUS: SiriVocab suggestion querying (all domains): false - Unsupported request type";
LABEL_20:
  OUTLINED_FUNCTION_2_85(&dword_1DD38D000, v6, v7, v8);
  v15 = 0;
LABEL_21:
  OUTLINED_FUNCTION_0_1();
LABEL_23:

  return v15;
}

uint64_t sub_1DD554754(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_7(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1DD5547B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_7(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1DD55480C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCE88, &unk_1DD64C280);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DD554874@<X0>(const void *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v117 = a3;
  v118 = a4;
  LODWORD(v115) = a2;
  v6 = sub_1DD63F8B8();
  v7 = OUTLINED_FUNCTION_0(v6);
  v113 = v8;
  v114 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2();
  v112 = v12 - v11;
  v106 = sub_1DD63D0F8();
  v13 = OUTLINED_FUNCTION_0(v106);
  v111 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_2();
  v105 = v18 - v17;
  v109 = sub_1DD63F8A8();
  v19 = OUTLINED_FUNCTION_0(v109);
  *&v108 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_2();
  v25 = v24 - v23;
  v26 = sub_1DD63E428();
  v27 = OUTLINED_FUNCTION_0(v26);
  v107 = v28;
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_2();
  v33 = v32 - v31;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC18, &unk_1DD6459A0);
  v34 = *(*(v119 - 8) + 64);
  MEMORY[0x1EEE9AC00](v119);
  v116 = &v102 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEAB8, &qword_1DD65B2B0);
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x1EEE9AC00](v36 - 8);
  v39 = &v102 - v38;
  v40 = sub_1DD63F8F8();
  v41 = OUTLINED_FUNCTION_0(v40);
  v43 = v42;
  v45 = *(v44 + 64);
  v46 = MEMORY[0x1EEE9AC00](v41);
  v110 = &v102 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v49 = &v102 - v48;
  v50 = a1;
  v51 = a1;
  v52 = v117;
  sub_1DD559484(v51, v117, *(v4 + 40), v39);
  v53 = v40;
  if (__swift_getEnumTagSinglePayload(v39, 1, v40) == 1)
  {
    sub_1DD3ADFD0(v39, &qword_1ECCDEAB8, &qword_1DD65B2B0);
    return __swift_storeEnumTagSinglePayload(v118, 1, 1, v119);
  }

  (*(v43 + 32))(v49, v39, v40);
  v54 = sub_1DD553818(v52);
  v55 = v43;
  if ((sub_1DD553C54(v115 & 1, v54) & 1) == 0)
  {
    (*(v43 + 8))(v49, v53);
    return __swift_storeEnumTagSinglePayload(v118, 1, 1, v119);
  }

  v104 = v53;
  v56 = v116;
  sub_1DD4BF298(v50, v116);
  v57 = v107;
  (v107[13])(v33, *MEMORY[0x1E69D1AE8], v26);
  v58 = v49;
  v59 = sub_1DD63E418();
  v117 = v60;
  v61 = (v57[1])(v33, v26);
  MEMORY[0x1E12B1BD0](v61);
  v62 = sub_1DD63F898();
  v64 = v63;
  (*(v108 + 8))(v25, v109);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBDD8, &unk_1DD65AB80);
  v65 = swift_allocObject();
  v108 = xmmword_1DD643F90;
  *(v65 + 16) = xmmword_1DD643F90;
  *(v65 + 32) = 1;
  v66 = v117;
  *(v65 + 40) = v59;
  *(v65 + 48) = v66;
  *(v65 + 56) = v62;
  *(v65 + 64) = v64;
  *(v65 + 72) = 0x3FF0000000000000;
  v67 = *(v56 + 240);

  *(v56 + 240) = v65;
  v68 = v56 + *(v119 + 36);
  v109 = type metadata accessor for ContactResolver.SignalSet(0);
  v69 = *(v109 + 204);
  v115 = v68;
  *(v68 + v69) = 1;
  if (qword_1EE165FB0 != -1)
  {
    swift_once();
  }

  v70 = sub_1DD63F9F8();
  __swift_project_value_buffer(v70, qword_1EE16F068);
  v71 = *(v55 + 16);
  v117 = v58;
  v72 = v104;
  v71(v110, v58, v104);
  v73 = sub_1DD63F9D8();
  v74 = sub_1DD640368();
  if (os_log_type_enabled(v73, v74))
  {
    v75 = swift_slowAlloc();
    v107 = swift_slowAlloc();
    v120 = v107;
    *v75 = 136315138;
    v76 = v105;
    sub_1DD63F8D8();
    sub_1DD3BB588();
    v77 = v106;
    v103 = sub_1DD640CB8();
    v79 = v78;
    v80 = v111;
    (*(v111 + 8))(v76, v77);
    v81 = OUTLINED_FUNCTION_2_86();
    v82(v81);
    v83 = sub_1DD39565C(v103, v79, &v120);

    *(v75 + 4) = v83;
    _os_log_impl(&dword_1DD38D000, v73, v74, "Setting plusSuggestionId %s", v75, 0xCu);
    v84 = v107;
    __swift_destroy_boxed_opaque_existential_1(v107);
    MEMORY[0x1E12B3DA0](v84, -1, -1);
    MEMORY[0x1E12B3DA0](v75, -1, -1);
  }

  else
  {

    v86 = OUTLINED_FUNCTION_2_86();
    v87(v86);
    v80 = v111;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC60, &qword_1DD664BC0);
  v88 = *(v80 + 72);
  v89 = (*(v80 + 80) + 32) & ~*(v80 + 80);
  v90 = swift_allocObject();
  *(v90 + 16) = v108;
  v91 = v117;
  sub_1DD63F8D8();
  v92 = v109;
  v93 = *(v109 + 208);
  v94 = v115;
  v95 = *(v115 + v93);

  *(v94 + v93) = v90;
  sub_1DD63F8E8();
  v97 = v112;
  v96 = v113;
  v98 = v114;
  (*(v113 + 104))(v112, *MEMORY[0x1E69D27A8], v114);
  v99 = sub_1DD47ED70();

  (*(v96 + 8))(v97, v98);
  (v110)(v91, v72);
  *(v94 + *(v92 + 212)) = v99 & 1;
  v100 = v116;
  v101 = v118;
  sub_1DD4BF298(v116, v118);
  __swift_storeEnumTagSinglePayload(v101, 0, 1, v119);
  return sub_1DD3ADFD0(v100, &qword_1ECCDBC18, &unk_1DD6459A0);
}

uint64_t get_enum_tag_for_layout_string_28SiriPrivateLearningInference41PlusContactSuggestionStoreRuntimeQuerying_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_1DD555084()
{
  result = qword_1ECCDEAC0;
  if (!qword_1ECCDEAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDEAC0);
  }

  return result;
}

uint64_t sub_1DD5550D8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000012 && 0x80000001DD672C50 == a2;
  if (v4 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000011 && 0x80000001DD672C70 == a2;
    if (v6 || (sub_1DD640CD8() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x726F707075736E75 && a2 == 0xEB00000000646574)
    {

      return 2;
    }

    else
    {
      v8 = sub_1DD640CD8();

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

uint64_t sub_1DD5551F8(char a1)
{
  if (!a1)
  {
    return 0xD000000000000012;
  }

  if (a1 == 1)
  {
    return 0xD000000000000011;
  }

  return 0x726F707075736E75;
}

uint64_t sub_1DD555264(void *a1, int a2)
{
  v44 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEAF8, &qword_1DD65AD00);
  v4 = OUTLINED_FUNCTION_0(v3);
  v42 = v5;
  v43 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v8);
  v41 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEB00, &qword_1DD65AD08);
  v11 = OUTLINED_FUNCTION_0(v10);
  v39 = v12;
  v40 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v37 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEB08, &qword_1DD65AD10);
  OUTLINED_FUNCTION_0(v18);
  v38 = v19;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v37 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEB10, &qword_1DD65AD18);
  OUTLINED_FUNCTION_0(v25);
  v27 = v26;
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v37 - v31;
  v33 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD555D6C();
  sub_1DD640EF8();
  v34 = (v27 + 8);
  if (v44)
  {
    if (v44 == 1)
    {
      v46 = 1;
      sub_1DD555E14();
      OUTLINED_FUNCTION_5_71();
      (*(v39 + 8))(v17, v40);
    }

    else
    {
      v47 = 2;
      sub_1DD555DC0();
      v35 = v41;
      OUTLINED_FUNCTION_5_71();
      (*(v42 + 8))(v35, v43);
    }
  }

  else
  {
    v45 = 0;
    sub_1DD555E68();
    OUTLINED_FUNCTION_5_71();
    (*(v38 + 8))(v24, v18);
  }

  return (*v34)(v32, v25);
}

uint64_t sub_1DD555580(uint64_t *a1)
{
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEAC8, &qword_1DD65ACD8);
  OUTLINED_FUNCTION_0(v72);
  v70 = v2;
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v5);
  v68 = &v62 - v6;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEAD0, &qword_1DD65ACE0);
  OUTLINED_FUNCTION_0(v69);
  v67 = v7;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v62 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEAD8, &qword_1DD65ACE8);
  OUTLINED_FUNCTION_0(v13);
  v66 = v14;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v62 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEAE0, &unk_1DD65ACF0);
  OUTLINED_FUNCTION_0(v20);
  v71 = v21;
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v24);
  v25 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v25);
  sub_1DD555D6C();
  v26 = v73;
  sub_1DD640ED8();
  if (v26)
  {
    goto LABEL_12;
  }

  v62 = v13;
  v63 = v19;
  v64 = v12;
  v65 = 0;
  v27 = v72;
  v73 = a1;
  v28 = sub_1DD640B98();
  result = sub_1DD418088(v28, 0);
  v25 = v20;
  if (v31 == v32 >> 1)
  {
    goto LABEL_10;
  }

  if (v31 < (v32 >> 1))
  {
    v33 = v20;
    v34 = *(v30 + v31);
    v35 = sub_1DD41805C(v31 + 1);
    v37 = v36;
    v39 = v38;
    swift_unknownObjectRelease();
    v40 = v69;
    v41 = v70;
    if (v37 == v39 >> 1)
    {
      v25 = v34;
      if (v34)
      {
        v66 = v35;
        v42 = v65;
        if (v34 == 1)
        {
          v75 = 1;
          sub_1DD555E14();
          v43 = v64;
          OUTLINED_FUNCTION_2_87();
          sub_1DD640AB8();
          if (!v42)
          {
            swift_unknownObjectRelease();
            (*(v67 + 8))(v43, v40);
            v44 = OUTLINED_FUNCTION_4_72();
            v45(v44);
LABEL_21:
            __swift_destroy_boxed_opaque_existential_1(v73);
            return v25;
          }
        }

        else
        {
          LODWORD(v69) = v34;
          v76 = 2;
          sub_1DD555DC0();
          v25 = v68;
          OUTLINED_FUNCTION_2_87();
          sub_1DD640AB8();
          if (!v42)
          {
            swift_unknownObjectRelease();
            (*(v41 + 8))(v25, v27);
            v60 = OUTLINED_FUNCTION_4_72();
            v61(v60);
            v25 = v69;
            goto LABEL_21;
          }
        }

        v56 = OUTLINED_FUNCTION_4_72();
        v57(v56);
      }

      else
      {
        v74 = 0;
        sub_1DD555E68();
        v52 = v63;
        OUTLINED_FUNCTION_2_87();
        v53 = v65;
        sub_1DD640AB8();
        if (!v53)
        {
          swift_unknownObjectRelease();
          (*(v66 + 8))(v52, v62);
          v58 = OUTLINED_FUNCTION_3_69();
          v59(v58, v33);
          goto LABEL_21;
        }

        v54 = OUTLINED_FUNCTION_3_69();
        v55(v54, v33);
      }

      swift_unknownObjectRelease();
      goto LABEL_11;
    }

    v25 = v33;
LABEL_10:
    v46 = sub_1DD640938();
    swift_allocError();
    v48 = v47;
    v49 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC5C8, &qword_1DD6559A0) + 48);
    *v48 = &type metadata for PLUSRequestSupportStatus;
    sub_1DD640AC8();
    sub_1DD640928();
    (*(*(v46 - 8) + 104))(v48, *MEMORY[0x1E69E6AF8], v46);
    swift_willThrow();
    swift_unknownObjectRelease();
    v50 = OUTLINED_FUNCTION_3_69();
    v51(v50, v25);
LABEL_11:
    a1 = v73;
LABEL_12:
    __swift_destroy_boxed_opaque_existential_1(a1);
    return v25;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD555B1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD5550D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD555B44(uint64_t a1)
{
  v2 = sub_1DD555D6C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD555B80(uint64_t a1)
{
  v2 = sub_1DD555D6C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD555BBC(uint64_t a1)
{
  v2 = sub_1DD555E14();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD555BF8(uint64_t a1)
{
  v2 = sub_1DD555E14();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD555C34(uint64_t a1)
{
  v2 = sub_1DD555E68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD555C70(uint64_t a1)
{
  v2 = sub_1DD555E68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD555CAC(uint64_t a1)
{
  v2 = sub_1DD555DC0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD555CE8(uint64_t a1)
{
  v2 = sub_1DD555DC0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD555D24@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DD555580(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1DD555D6C()
{
  result = qword_1EE164008[0];
  if (!qword_1EE164008[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE164008);
  }

  return result;
}

unint64_t sub_1DD555DC0()
{
  result = qword_1ECCDEAE8;
  if (!qword_1ECCDEAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDEAE8);
  }

  return result;
}

unint64_t sub_1DD555E14()
{
  result = qword_1ECCDEAF0;
  if (!qword_1ECCDEAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDEAF0);
  }

  return result;
}

unint64_t sub_1DD555E68()
{
  result = qword_1EE163FD0;
  if (!qword_1EE163FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE163FD0);
  }

  return result;
}

_BYTE *sub_1DD555EBC(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DD555FCC()
{
  result = qword_1ECCDEB18;
  if (!qword_1ECCDEB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDEB18);
  }

  return result;
}

unint64_t sub_1DD556024()
{
  result = qword_1EE163FC0;
  if (!qword_1EE163FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE163FC0);
  }

  return result;
}

unint64_t sub_1DD55607C()
{
  result = qword_1EE163FC8;
  if (!qword_1EE163FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE163FC8);
  }

  return result;
}

unint64_t sub_1DD5560D4()
{
  result = qword_1EE163FD8;
  if (!qword_1EE163FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE163FD8);
  }

  return result;
}

unint64_t sub_1DD55612C()
{
  result = qword_1EE163FE0;
  if (!qword_1EE163FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE163FE0);
  }

  return result;
}

unint64_t sub_1DD556184()
{
  result = qword_1EE163FE8;
  if (!qword_1EE163FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE163FE8);
  }

  return result;
}

unint64_t sub_1DD5561DC()
{
  result = qword_1EE163FF0;
  if (!qword_1EE163FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE163FF0);
  }

  return result;
}

unint64_t sub_1DD556234()
{
  result = qword_1EE163FF8;
  if (!qword_1EE163FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE163FF8);
  }

  return result;
}

unint64_t sub_1DD55628C()
{
  result = qword_1EE164000;
  if (!qword_1EE164000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE164000);
  }

  return result;
}

uint64_t __swift_memcpy5_1(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for PLUSRunTimeData(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[5])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for PLUSRunTimeData(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

BOOL sub_1DD5563A8(unint64_t a1, unint64_t a2)
{
  v2 = ((a1 >> 24) & 1) == ((a2 >> 24) & 1) && ((a1 ^ a2) & 0xFF00000000) == 0;
  v3 = ((a1 >> 16) & 1) == ((a2 >> 16) & 1) && v2;
  if ((a1 ^ a2))
  {
    v3 = 0;
  }

  return ((a1 >> 8) & 1) == ((a2 >> 8) & 1) && v3;
}

uint64_t sub_1DD5563F8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000016 && 0x80000001DD672C90 == a2;
  if (v3 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000010 && 0x80000001DD672CB0 == a2;
    if (v6 || (sub_1DD640CD8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000011 && 0x80000001DD672CD0 == a2;
      if (v7 || (sub_1DD640CD8() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000016 && 0x80000001DD672CF0 == a2;
        if (v8 || (sub_1DD640CD8() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0xD000000000000018 && 0x80000001DD672D10 == a2)
        {

          return 4;
        }

        else
        {
          v10 = sub_1DD640CD8();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_1DD55659C(char a1)
{
  result = 0xD000000000000016;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0xD000000000000018;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD556628(void *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEB28, &qword_1DD65B120);
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v15[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD556C44();
  sub_1DD640EF8();
  v15[15] = 0;
  OUTLINED_FUNCTION_10();
  sub_1DD640C28();
  if (!v2)
  {
    v15[14] = BYTE1(a2) & 1;
    v15[13] = 1;
    sub_1DD556D40();
    OUTLINED_FUNCTION_10();
    sub_1DD640C68();
    v15[12] = 2;
    OUTLINED_FUNCTION_10();
    sub_1DD640C28();
    v15[11] = 3;
    OUTLINED_FUNCTION_10();
    sub_1DD640C28();
    v15[10] = BYTE4(a2);
    v15[9] = 4;
    sub_1DD556D94();
    OUTLINED_FUNCTION_10();
    sub_1DD640C68();
  }

  return (*(v8 + 8))(v12, v5);
}

unint64_t sub_1DD556800(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEB20, &qword_1DD65B118);
  v4 = OUTLINED_FUNCTION_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v10 = &v21 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD556C44();
  sub_1DD640ED8();
  if (v1)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v29 = 0;
  OUTLINED_FUNCTION_13();
  v12 = sub_1DD640B38();
  v27 = 1;
  sub_1DD556C98();
  OUTLINED_FUNCTION_13();
  sub_1DD640B78();
  v13 = v28;
  v26 = 2;
  OUTLINED_FUNCTION_13();
  v14 = sub_1DD640B38();
  v25 = 3;
  OUTLINED_FUNCTION_13();
  v22 = sub_1DD640B38();
  v23 = 4;
  sub_1DD556CEC();
  OUTLINED_FUNCTION_13();
  sub_1DD640B78();
  (*(v6 + 8))(v10, v3);
  v16 = v24;
  __swift_destroy_boxed_opaque_existential_1(a1);
  v17 = 0x1000000;
  if ((v22 & 1) == 0)
  {
    v17 = 0;
  }

  v18 = v17 | (v16 << 32);
  v19 = 0x10000;
  if ((v14 & 1) == 0)
  {
    v19 = 0;
  }

  v20 = 256;
  if (!v13)
  {
    v20 = 0;
  }

  return (v18 | v19 | v20) & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
}

uint64_t sub_1DD556A6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD5563F8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD556A94(uint64_t a1)
{
  v2 = sub_1DD556C44();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD556AD0(uint64_t a1)
{
  v2 = sub_1DD556C44();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1DD556B0C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DD556800(a1);
  if (!v2)
  {
    *a2 = result & 1;
    a2[1] = BYTE1(result) & 1;
    a2[2] = BYTE2(result) & 1;
    a2[3] = BYTE3(result) & 1;
    a2[4] = BYTE4(result);
  }

  return result;
}

uint64_t sub_1DD556B5C(void *a1)
{
  v2 = 0x1000000;
  if (!v1[3])
  {
    v2 = 0;
  }

  v3 = v2 | (v1[4] << 32);
  v4 = 0x10000;
  if (!v1[2])
  {
    v4 = 0;
  }

  v5 = 256;
  if (!v1[1])
  {
    v5 = 0;
  }

  return sub_1DD556628(a1, v3 | v4 | v5 | *v1);
}

BOOL sub_1DD556BBC(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[4];
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2];
  v9 = a2[3];
  v10 = a2[4];
  v11 = 0x1000000;
  if (a1[3])
  {
    v12 = 0x1000000;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12 | (v5 << 32);
  v14 = v4 == 0;
  v15 = 0x10000;
  if (v14)
  {
    v16 = 0;
  }

  else
  {
    v16 = 0x10000;
  }

  v14 = v3 == 0;
  v17 = 256;
  if (v14)
  {
    v18 = 0;
  }

  else
  {
    v18 = 256;
  }

  v19 = v16 | v18 | v2;
  if (!v9)
  {
    v11 = 0;
  }

  v20 = v11 | (v10 << 32);
  if (!v8)
  {
    v15 = 0;
  }

  if (!v7)
  {
    v17 = 0;
  }

  return sub_1DD5563A8(v13 | v19, v20 | v15 | v17 | v6);
}

unint64_t sub_1DD556C44()
{
  result = qword_1EE165660;
  if (!qword_1EE165660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE165660);
  }

  return result;
}

unint64_t sub_1DD556C98()
{
  result = qword_1EE1627D8[0];
  if (!qword_1EE1627D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE1627D8);
  }

  return result;
}

unint64_t sub_1DD556CEC()
{
  result = qword_1EE161638[0];
  if (!qword_1EE161638[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE161638);
  }

  return result;
}

unint64_t sub_1DD556D40()
{
  result = qword_1EE165570;
  if (!qword_1EE165570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE165570);
  }

  return result;
}

unint64_t sub_1DD556D94()
{
  result = qword_1EE163FB8;
  if (!qword_1EE163FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE163FB8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PLUSRunTimeData.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD556EC8()
{
  result = qword_1ECCDEB30;
  if (!qword_1ECCDEB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDEB30);
  }

  return result;
}

unint64_t sub_1DD556F20()
{
  result = qword_1EE165650;
  if (!qword_1EE165650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE165650);
  }

  return result;
}

unint64_t sub_1DD556F78()
{
  result = qword_1EE165658;
  if (!qword_1EE165658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE165658);
  }

  return result;
}

uint64_t sub_1DD556FCC()
{
  v1 = v0;
  v2 = type metadata accessor for Contact();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  OUTLINED_FUNCTION_2();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBEE0, &unk_1DD645510);
  v9 = OUTLINED_FUNCTION_7(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = (&v19 - v12);
  sub_1DD4279B8(v1, &v19 - v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v15 = MEMORY[0x1E69E7CC0];
  switch(EnumCaseMultiPayload)
  {
    case 2:
      v15 = *v13;
      break;
    case 3:
      return v15;
    default:
      sub_1DD558ABC(v13, v7, type metadata accessor for Contact);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBD58, &unk_1DD649DD0);
      v16 = *(v3 + 72);
      v17 = (*(v3 + 80) + 32) & ~*(v3 + 80);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_1DD643F90;
      sub_1DD558ABC(v7, v15 + v17, type metadata accessor for Contact);
      break;
  }

  return v15;
}

void sub_1DD557178(uint64_t a1)
{
  matched = type metadata accessor for ContactMatchRuntimeData(0);
  v2 = OUTLINED_FUNCTION_0(matched);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_2_1();
  v209 = v7;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v183 - v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_18_0();
  v206 = v12;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v13);
  v212 = &v183 - v14;
  v15 = type metadata accessor for ContactResolverRunTimeData(0);
  v16 = OUTLINED_FUNCTION_0(v15);
  v208 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_2_1();
  v207 = v20;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_18_0();
  v204 = v22;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_18_0();
  v203 = v24;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_18_0();
  v211 = v26;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v183 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBAC8, &qword_1DD643E60);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30 - 8);
  OUTLINED_FUNCTION_2_1();
  v205 = v32;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v183 - v34;
  v214 = sub_1DD63D0F8();
  v36 = OUTLINED_FUNCTION_0(v214);
  v38 = v37;
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_2_1();
  v210 = v41;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v42);
  v213 = &v183 - v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEB38, &unk_1DD65B240);
  v45 = *(*(v44 - 8) + 64);
  MEMORY[0x1EEE9AC00](v44 - 8);
  v47 = &v183 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v183 - v49;
  sub_1DD558F14(a1, &v183 - v49);
  if (__swift_getEnumTagSinglePayload(v50, 1, v15) == 1)
  {
    sub_1DD390754(v50, &qword_1ECCDEB38, &unk_1DD65B240);
    goto LABEL_4;
  }

  v202 = v29;
  v51 = v50[*(v15 + 64) + 4];
  OUTLINED_FUNCTION_0_114();
  sub_1DD558A64(v50, v52);
  if (v51 == 2)
  {
LABEL_4:
    if (qword_1EE165FB0 == -1)
    {
LABEL_5:
      v53 = sub_1DD63F9F8();
      __swift_project_value_buffer(v53, qword_1EE16F068);
      v54 = sub_1DD63F9D8();
      v55 = sub_1DD640368();
      if (!OUTLINED_FUNCTION_9_0(v55))
      {
LABEL_8:

        return;
      }

      *OUTLINED_FUNCTION_9() = 0;
      v58 = "PLUS: PLUS was disabled for this request. No PLUS SELF messages will be emitted.";
LABEL_7:
      OUTLINED_FUNCTION_11_4(&dword_1DD38D000, v56, v57, v58);
      OUTLINED_FUNCTION_0_1();
      goto LABEL_8;
    }

LABEL_61:
    OUTLINED_FUNCTION_0_2();
    swift_once();
    goto LABEL_5;
  }

  sub_1DD558F14(a1, v47);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v47, 1, v15);
  v200 = v15;
  if (EnumTagSinglePayload == 1)
  {
    sub_1DD390754(v47, &qword_1ECCDEB38, &unk_1DD65B240);
    v60 = 0;
    v61 = 0;
  }

  else
  {
    v62 = &v47[*(v15 + 68)];
    v60 = *v62;
    v61 = v62[1];

    OUTLINED_FUNCTION_0_114();
    sub_1DD558A64(v47, v63);
  }

  sub_1DD5581A8(v60, v61, v35);

  v64 = v214;
  if (__swift_getEnumTagSinglePayload(v35, 1, v214) == 1)
  {
    sub_1DD390754(v35, &qword_1ECCDBAC8, &qword_1DD643E60);
    if (qword_1EE165FB0 != -1)
    {
      OUTLINED_FUNCTION_0_2();
      swift_once();
    }

    v65 = sub_1DD63F9F8();
    __swift_project_value_buffer(v65, qword_1EE16F068);
    v54 = sub_1DD63F9D8();
    v66 = sub_1DD640378();
    if (!OUTLINED_FUNCTION_9_0(v66))
    {
      goto LABEL_8;
    }

    *OUTLINED_FUNCTION_9() = 0;
    v58 = "PLUS: Unable to extract plusId - not logging to SELF";
    goto LABEL_7;
  }

  v196 = *(v38 + 32);
  v197 = v38 + 32;
  v196(v213, v35, v64);
  sub_1DD63F888();
  v67 = sub_1DD63F958();
  v68 = *(v67 + 48);
  v69 = *(v67 + 52);
  swift_allocObject();
  v70 = sub_1DD63F948();
  v195 = *(a1 + 16);
  if (v195)
  {
    v72 = a1 + ((*(v208 + 80) + 32) & ~*(v208 + 80));
    v73 = 0;
    v198 = (v38 + 8);
    v199 = v70;
    v74 = *(v208 + 72);
    *&v71 = 136315138;
    v194 = v71;
    *&v71 = 67109376;
    v189 = v71;
    *&v71 = 136315394;
    v188 = v71;
    v75 = v202;
    v76 = v200;
    v191 = v74;
    v192 = v72;
LABEL_19:
    v201 = v73;
    OUTLINED_FUNCTION_3_70();
    sub_1DD558A04(v77, v75, v78);
    if (qword_1EE165FB0 != -1)
    {
      OUTLINED_FUNCTION_0_2();
      swift_once();
    }

    v79 = sub_1DD63F9F8();
    v208 = __swift_project_value_buffer(v79, qword_1EE16F068);
    v80 = sub_1DD63F9D8();
    v81 = sub_1DD640368();
    if (OUTLINED_FUNCTION_2_4(v81))
    {
      v82 = OUTLINED_FUNCTION_9();
      OUTLINED_FUNCTION_10_43(v82);
      OUTLINED_FUNCTION_20_29(&dword_1DD38D000, v80, v83, "PLUS: Logging PlusContactSuggesterRequestMetadata to SELF");
      OUTLINED_FUNCTION_0_1();
    }

    v84 = (v75 + *(v76 + 64));
    v85 = v84[2];
    v86 = *v84;
    sub_1DD63F908();
    OUTLINED_FUNCTION_3_70();
    v87 = v211;
    sub_1DD558A04(v75, v211, v88);
    v89 = sub_1DD63F9D8();
    v90 = sub_1DD640368();
    if (os_log_type_enabled(v89, v90))
    {
      v193 = v90;
      v91 = swift_slowAlloc();
      v190 = swift_slowAlloc();
      v217 = v190;
      v92 = v91;
      *v91 = v194;
      memcpy(v218, v87, sizeof(v218));
      memcpy(v216, v87, sizeof(v216));
      sub_1DD3C9478(v218, v219);
      LOBYTE(v91) = ContactQuery.toUsoPerson()();
      memcpy(v219, v216, 0x108uLL);
      sub_1DD3C9580(v219);
      v94 = sub_1DD632A44(v91);
      v96 = v95;

      OUTLINED_FUNCTION_0_114();
      sub_1DD558A64(v211, v97);
      v98 = sub_1DD39565C(v94, v96, &v217);

      *(v92 + 1) = v98;
      _os_log_impl(&dword_1DD38D000, v89, v193, "PLUS: USO used was: %s", v92, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v190);
      OUTLINED_FUNCTION_0_1();
      OUTLINED_FUNCTION_0_1();

      v76 = v200;
    }

    else
    {

      OUTLINED_FUNCTION_0_114();
      sub_1DD558A64(v87, v93);
    }

    v99 = 0;
    ++v201;
    v100 = *(v75 + 296);
    v101 = *(v100 + 16);
    while (1)
    {
      if (v101 == v99)
      {
        OUTLINED_FUNCTION_3_70();
        v159 = v202;
        v160 = v207;
        sub_1DD558A04(v202, v207, v161);
        v162 = v208;
        v163 = sub_1DD63F9D8();
        v164 = sub_1DD640368();
        if (os_log_type_enabled(v163, v164))
        {
          v165 = swift_slowAlloc();
          v166 = swift_slowAlloc();
          v218[0] = v166;
          *v165 = v194;
          memcpy(v219, v160, 0x108uLL);
          sub_1DD41E024();
          v162 = v167;
          v168 = MEMORY[0x1E12B2430]();
          v170 = v169;

          OUTLINED_FUNCTION_8_54();
          sub_1DD558A64(v160, v171);
          v172 = sub_1DD39565C(v168, v170, v218);

          *(v165 + 4) = v172;
          _os_log_impl(&dword_1DD38D000, v163, v164, "PLUS: No match. Fields were %s", v165, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v166);
          OUTLINED_FUNCTION_0_1();
          OUTLINED_FUNCTION_0_1();

          (*v198)(v213, v214);
        }

        else
        {

          (*v198)(v213, v214);
          OUTLINED_FUNCTION_8_54();
          sub_1DD558A64(v160, v173);
        }

        v174 = v159;
        v175 = v162;
LABEL_56:
        sub_1DD558A64(v174, v175);
        return;
      }

      if (v99 >= *(v100 + 16))
      {
        break;
      }

      v102 = v100 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
      v103 = *(v4 + 72);
      OUTLINED_FUNCTION_7_51();
      sub_1DD558A04(v104, v10, v105);
      v106 = &v10[*(matched + 20)];
      v107 = type metadata accessor for ContactResolver.SignalSet(0);
      if (v106[*(v107 + 204)])
      {
        v109 = v107;
        v110 = v206;
        sub_1DD558ABC(v10, v206, type metadata accessor for ContactMatchRuntimeData);
        v111 = v212;
        sub_1DD558ABC(v110, v212, type metadata accessor for ContactMatchRuntimeData);
        v112 = v111 + *(matched + 20);
        v113 = v205;
        sub_1DD558F40(*(v112 + *(v109 + 208)), v205);
        v114 = v214;
        if (__swift_getEnumTagSinglePayload(v113, 1, v214) == 1)
        {
          sub_1DD390754(v113, &qword_1ECCDBAC8, &qword_1DD643E60);
          v176 = sub_1DD63F9D8();
          v177 = sub_1DD640378();
          v178 = OUTLINED_FUNCTION_9_0(v177);
          v179 = v202;
          if (v178)
          {
            *OUTLINED_FUNCTION_9() = 0;
            OUTLINED_FUNCTION_11_4(&dword_1DD38D000, v180, v181, "PLUS: Unable to extract suggestionId - not logging to SELF");
            OUTLINED_FUNCTION_0_1();
          }

          (*v198)(v213, v114);
          OUTLINED_FUNCTION_0_114();
          sub_1DD558A64(v179, v182);
          OUTLINED_FUNCTION_1_100();
          v174 = v212;
          goto LABEL_56;
        }

        v196(v210, v113, v114);
        v115 = &v202[*(v76 + 40)];
        v116 = sub_1DD556FCC();
        MEMORY[0x1EEE9AC00](v116);
        *(&v183 - 2) = v111;
        v117 = sub_1DD450608(sub_1DD551BDC, (&v183 - 4), v116);

        if ((*(v112 + 338) & 1) != 0 || *(v112 + *(v109 + 216)) == 1)
        {
          v193 = *(v212 + *(matched + 36));
        }

        else
        {
          v193 = 0;
        }

        v118 = sub_1DD63F9D8();
        v119 = sub_1DD640368();
        v120 = OUTLINED_FUNCTION_2_4(v119);
        v75 = v202;
        if (v120)
        {
          v121 = swift_slowAlloc();
          *v121 = v189;
          *(v121 + 4) = v117;
          *(v121 + 8) = 1024;
          *(v121 + 10) = v193;
          _os_log_impl(&dword_1DD38D000, v118, v109, "PLUS suggestion In Model Output: %{BOOL}d\n\nPLUS suggestion already exists: %{BOOL}d", v121, 0xEu);
          OUTLINED_FUNCTION_0_1();
        }

        OUTLINED_FUNCTION_3_70();
        v122 = v203;
        sub_1DD558A04(v75, v203, v123);
        OUTLINED_FUNCTION_7_51();
        v124 = v209;
        sub_1DD558A04(v212, v209, v125);
        v126 = sub_1DD63F9D8();
        LODWORD(v190) = sub_1DD640368();
        if (OUTLINED_FUNCTION_9_0(v190))
        {
          v184 = v126;
          v185 = v117;
          v127 = swift_slowAlloc();
          v183 = swift_slowAlloc();
          v218[0] = v183;
          *v127 = v188;
          memcpy(v219, v122, 0x108uLL);
          sub_1DD41E024();
          v128 = MEMORY[0x1E12B2430]();
          v130 = v129;

          OUTLINED_FUNCTION_0_114();
          sub_1DD558A64(v122, v131);
          v132 = sub_1DD39565C(v128, v130, v218);

          *(v127 + 4) = v132;
          *(v127 + 12) = 2080;
          v135 = sub_1DD632B84();
          v137 = v136;
          v73 = v201;
          OUTLINED_FUNCTION_1_100();
          sub_1DD558A64(v209, v138);
          v139 = sub_1DD39565C(v135, v137, v218);

          *(v127 + 14) = v139;
          v140 = v184;
          _os_log_impl(&dword_1DD38D000, v184, v190, "PLUS: match - Fields used were %s\nPLUS: match - Suggestion was: %s", v127, 0x16u);
          v124 = v183;
          swift_arrayDestroy();
          OUTLINED_FUNCTION_0_1();
          OUTLINED_FUNCTION_0_1();

          v75 = v202;
          v76 = v200;
        }

        else
        {

          OUTLINED_FUNCTION_1_100();
          sub_1DD558A64(v124, v133);
          OUTLINED_FUNCTION_0_114();
          sub_1DD558A64(v122, v134);
          v73 = v201;
        }

        v141 = sub_1DD63F9D8();
        v142 = sub_1DD640368();
        if (OUTLINED_FUNCTION_2_4(v142))
        {
          v143 = OUTLINED_FUNCTION_9();
          OUTLINED_FUNCTION_10_43(v143);
          OUTLINED_FUNCTION_20_29(&dword_1DD38D000, v141, v144, "PLUS: Logging ContactSuggesterSuggestionMetadata to SELF");
          OUTLINED_FUNCTION_13_39();
        }

        sub_1DD63F918();
        v145 = sub_1DD63F9D8();
        v146 = sub_1DD640368();
        if (OUTLINED_FUNCTION_2_4(v146))
        {
          v147 = OUTLINED_FUNCTION_9();
          OUTLINED_FUNCTION_10_43(v147);
          OUTLINED_FUNCTION_20_29(&dword_1DD38D000, v145, v148, "PLUS: Logging PICSRuntimeMetrics to CoreAnalytics");
          OUTLINED_FUNCTION_13_39();
        }

        OUTLINED_FUNCTION_3_70();
        v149 = v204;
        sub_1DD558A04(v75, v204, v150);
        sub_1DD551900(v149);
        if (v153)
        {
          v186 = v154 & 0x10101 | v186 & 0xFF000000;
          v187 = v151 & 0x10101 | v187 & 0xFF000000;
          sub_1DD5CDEE0(v187, v152, v153, v186);
          v156 = OUTLINED_FUNCTION_9_47();
          v124(v156);
        }

        else
        {
          v155 = OUTLINED_FUNCTION_9_47();
          v124(v155);
        }

        OUTLINED_FUNCTION_0_114();
        sub_1DD558A64(v75, v157);
        OUTLINED_FUNCTION_1_100();
        sub_1DD558A64(v212, v158);
        if (v73 == v195)
        {

          v64 = v214;
          goto LABEL_53;
        }

        goto LABEL_19;
      }

      ++v99;
      OUTLINED_FUNCTION_1_100();
      sub_1DD558A64(v10, v108);
    }

    __break(1u);
    goto LABEL_61;
  }

  v124 = *(v38 + 8);
LABEL_53:
  (v124)(v213, v64);
}

uint64_t sub_1DD5581A8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBAC8, &qword_1DD643E60);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v30 - v8;
  v10 = sub_1DD63D0F8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    sub_1DD63D088();
    if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
    {
      sub_1DD390754(v9, &qword_1ECCDBAC8, &qword_1DD643E60);
      if (qword_1EE165FB0 != -1)
      {
        swift_once();
      }

      v15 = sub_1DD63F9F8();
      __swift_project_value_buffer(v15, qword_1EE16F068);

      v16 = sub_1DD63F9D8();
      v17 = sub_1DD640378();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v31 = v19;
        *v18 = 136315138;
        *(v18 + 4) = sub_1DD39565C(a1, a2, &v31);
        _os_log_impl(&dword_1DD38D000, v16, v17, "PLUS: Unable to convert requestId %s to UUID. Not logging to SELF", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v19);
        MEMORY[0x1E12B3DA0](v19, -1, -1);
        MEMORY[0x1E12B3DA0](v18, -1, -1);
      }

      v20 = a3;
      v21 = 1;
    }

    else
    {
      (*(v11 + 32))(v14, v9, v10);
      sub_1DD63F888();
      v27 = sub_1DD63F958();
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      swift_allocObject();
      sub_1DD63F948();
      sub_1DD63F928();

      (*(v11 + 8))(v14, v10);
      v20 = a3;
      v21 = 0;
    }

    return __swift_storeEnumTagSinglePayload(v20, v21, 1, v10);
  }

  else
  {
    if (qword_1EE165FB0 != -1)
    {
      swift_once();
    }

    v22 = sub_1DD63F9F8();
    __swift_project_value_buffer(v22, qword_1EE16F068);
    v23 = sub_1DD63F9D8();
    v24 = sub_1DD640378();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_1DD38D000, v23, v24, "PLUS: RequestId was nil. Not logging to SELF", v25, 2u);
      MEMORY[0x1E12B3DA0](v25, -1, -1);
    }

    return __swift_storeEnumTagSinglePayload(a3, 1, 1, v10);
  }
}

uint64_t sub_1DD55858C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBAC8, &qword_1DD643E60);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v42 - v5;
  v7 = sub_1DD63D0F8();
  v8 = OUTLINED_FUNCTION_0(v7);
  v43 = v9;
  v44 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2();
  v42 = v13 - v12;
  v14 = type metadata accessor for Signpost();
  v15 = OUTLINED_FUNCTION_7(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_2();
  v20 = v19 - v18;
  if (qword_1EE166460 != -1)
  {
    swift_once();
  }

  v21 = qword_1EE16F0C0;
  v22 = v20 + *(v14 + 20);
  *v22 = "ContactResolver.PLUS.plusId";
  *(v22 + 8) = 27;
  *(v22 + 16) = 2;
  v23 = v21;
  sub_1DD63F9B8();
  *(v20 + *(v14 + 24)) = v23;
  v23;
  sub_1DD6404D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCE0, &unk_1DD645500);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1DD643F90;
  v25 = sub_1DD6408F8();
  v27 = v26;
  *(v24 + 56) = MEMORY[0x1E69E6158];
  *(v24 + 64) = sub_1DD392BD8();
  *(v24 + 32) = v25;
  *(v24 + 40) = v27;
  sub_1DD63F998();

  if (!*(a1 + 16))
  {
    v29 = v44;
    if (qword_1EE165FB0 != -1)
    {
      OUTLINED_FUNCTION_0_2();
      swift_once();
    }

    v36 = sub_1DD63F9F8();
    __swift_project_value_buffer(v36, qword_1EE16F068);
    v32 = sub_1DD63F9D8();
    v33 = sub_1DD640378();
    v37 = OUTLINED_FUNCTION_9_0(v33);
    v30 = v45;
    if (!v37)
    {
      goto LABEL_14;
    }

    v34 = OUTLINED_FUNCTION_9();
    *v34 = 0;
    v35 = "PLUS: Unable to extract requestId - not logging to SELF";
    goto LABEL_13;
  }

  v28 = *(a1 + 8);
  sub_1DD63D088();
  v29 = v44;
  if (__swift_getEnumTagSinglePayload(v6, 1, v44) != 1)
  {
    v40 = v42;
    v39 = v43;
    (*(v43 + 32))(v42, v6, v29);
    sub_1DD63F958();
    v30 = v45;
    sub_1DD63F938();
    (*(v39 + 8))(v40, v29);
    v38 = 0;
    goto LABEL_16;
  }

  sub_1DD390754(v6, &qword_1ECCDBAC8, &qword_1DD643E60);
  v30 = v45;
  if (qword_1EE165FB0 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v31 = sub_1DD63F9F8();
  __swift_project_value_buffer(v31, qword_1EE16F068);
  v32 = sub_1DD63F9D8();
  v33 = sub_1DD640378();
  if (OUTLINED_FUNCTION_9_0(v33))
  {
    v34 = OUTLINED_FUNCTION_9();
    *v34 = 0;
    v35 = "PLUS: Unable to generate requestId UUID - not logging to SELF";
LABEL_13:
    _os_log_impl(&dword_1DD38D000, v32, v33, v35, v34, 2u);
    OUTLINED_FUNCTION_0_1();
  }

LABEL_14:

  v38 = 1;
LABEL_16:
  __swift_storeEnumTagSinglePayload(v30, v38, 1, v29);
  sub_1DD6404C8();
  sub_1DD63F9A8();
  return sub_1DD558A64(v20, type metadata accessor for Signpost);
}

uint64_t sub_1DD558A04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_7(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1DD558A64(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_7(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1DD558ABC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_7(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

void OUTLINED_FUNCTION_13_39()
{
  v2 = *(v0 + 168);

  JUMPOUT(0x1E12B3DA0);
}

uint64_t sub_1DD558B64(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 40))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DD558BB8(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1DD558C68(uint64_t a1)
{
  result = sub_1DD55ADA0(a1);
  if (v4)
  {
    goto LABEL_7;
  }

  if (*(a1 + 36) != v3)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  if (result == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_1DD55ADFC(result, v3, 0, a1);
  }
}

uint64_t sub_1DD558CFC@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a1 + 16);
  v8 = a2(0);
  if (v7)
  {
    sub_1DD55B13C(a1 + ((*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80)), a4, a3);
  }

  v9 = OUTLINED_FUNCTION_13_40();

  return __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
}

unint64_t sub_1DD558DD8(uint64_t a1, uint64_t (*a2)(void *))
{
  result = sub_1DD55B0A4(a1, a2);
  v4 = *(a1 + 16);
  if (result == v4)
  {
    return OUTLINED_FUNCTION_15_0();
  }

  if (result < v4)
  {
    v5 = a1 + 16 * result;
    v6 = *(v5 + 32);
    v7 = *(v5 + 40);

    return OUTLINED_FUNCTION_15_0();
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD558E30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
  if (v4)
  {
    sub_1DD4B69D8(a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), a2, &qword_1ECCDBBE8, &qword_1DD644470);
  }

  v6 = OUTLINED_FUNCTION_13_40();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t sub_1DD558F58@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  v6 = a2(0);
  if (v5)
  {
    (*(*(v6 - 8) + 16))(a3, a1 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)), v6);
  }

  v7 = OUTLINED_FUNCTION_13_40();

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

uint64_t sub_1DD559054(void *a1)
{
  if (a1[2])
  {
    v1 = a1[4];
    v2 = a1[5];
    v3 = a1[6];
  }

  return OUTLINED_FUNCTION_15_0();
}

uint64_t sub_1DD5590A8()
{
  v1 = type metadata accessor for ContactResolver.SignalSet(0);
  v2 = OUTLINED_FUNCTION_7(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_2();
  v7 = v6 - v5;
  v8 = type metadata accessor for Contact();
  v9 = OUTLINED_FUNCTION_7(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2();
  v14 = v13 - v12;
  sub_1DD6408D8();

  OUTLINED_FUNCTION_15_38();
  v20 = v15;
  sub_1DD55B13C(v0, v14, type metadata accessor for Contact);
  v16 = sub_1DD63FE38();
  MEMORY[0x1E12B2260](v16);

  OUTLINED_FUNCTION_14_37();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
  sub_1DD55B13C(v0 + *(v17 + 36), v7, type metadata accessor for ContactResolver.SignalSet);
  v18 = sub_1DD63FE38();
  MEMORY[0x1E12B2260](v18);

  return v20;
}

uint64_t sub_1DD559214()
{
  v1 = type metadata accessor for ContactResolver.SignalSet(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[0] = 0;
  v14[1] = 0xE000000000000000;
  sub_1DD6408D8();

  v12 = 0x203A65756C6176;
  v13 = 0xE700000000000000;
  memcpy(v14, v0, sizeof(v14));
  memcpy(v11, v0, sizeof(v11));
  sub_1DD3C9478(v14, &v10);
  v5 = sub_1DD63FE38();
  MEMORY[0x1E12B2260](v5);

  MEMORY[0x1E12B2260](0x736C616E6769730ALL, 0xEA0000000000203ALL);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC18, &unk_1DD6459A0);
  sub_1DD55B13C(v0 + *(v6 + 36), v4, type metadata accessor for ContactResolver.SignalSet);
  v7 = sub_1DD63FE38();
  MEMORY[0x1E12B2260](v7);

  return v12;
}

uint64_t sub_1DD5593B0()
{
  *&v6 = 0;
  *(&v6 + 1) = 0xE000000000000000;
  sub_1DD6408D8();

  OUTLINED_FUNCTION_15_38();
  v8 = v1;
  v9 = v2;
  memcpy(__dst, v0, sizeof(__dst));
  sub_1DD4B69D8(v0, &v6, &qword_1ECCDEB48, &unk_1DD65B2C0);
  v3 = sub_1DD63FE38();
  MEMORY[0x1E12B2260](v3);

  OUTLINED_FUNCTION_14_37();
  v6 = v0[8];
  v4 = sub_1DD63FE38();
  MEMORY[0x1E12B2260](v4);

  return v8;
}

uint64_t sub_1DD559484@<X0>(const void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v170 = a2;
  v171 = a3;
  v179 = a1;
  v181 = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC18, &unk_1DD6459A0);
  OUTLINED_FUNCTION_3(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_7_3();
  v169 = v8;
  OUTLINED_FUNCTION_6_2();
  v9 = sub_1DD63F8A8();
  v10 = OUTLINED_FUNCTION_0(v9);
  v165 = v11;
  v166 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2();
  v164 = v15 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEAB8, &qword_1DD65B2B0);
  OUTLINED_FUNCTION_3(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_7_3();
  v168 = v20;
  OUTLINED_FUNCTION_6_2();
  v183 = sub_1DD63F8F8();
  v21 = OUTLINED_FUNCTION_0(v183);
  v177 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_2();
  v167 = v26 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBAC8, &qword_1DD643E60);
  OUTLINED_FUNCTION_3(v27);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_7_3();
  v175 = v31;
  OUTLINED_FUNCTION_6_2();
  v182 = sub_1DD63D0F8();
  v32 = OUTLINED_FUNCTION_0(v182);
  v172 = v33;
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_2();
  v178 = v37 - v36;
  OUTLINED_FUNCTION_6_2();
  v38 = type metadata accessor for Signpost();
  v39 = OUTLINED_FUNCTION_7(v38);
  v41 = *(v40 + 64);
  v42 = MEMORY[0x1EEE9AC00](v39);
  v185 = &v164 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x1EEE9AC00](v42);
  v186 = &v164 - v45;
  MEMORY[0x1EEE9AC00](v44);
  v47 = &v164 - v46;
  if (qword_1EE166460 != -1)
  {
    OUTLINED_FUNCTION_4_2();
  }

  v48 = qword_1EE16F0C0;
  v49 = &v47[*(v38 + 20)];
  *v49 = "ContactResolver.PLUS.QueryExpander.Handle";
  *(v49 + 1) = 41;
  v49[16] = 2;
  v50 = v48;
  sub_1DD63F9B8();
  *&v47[*(v38 + 24)] = v50;
  v51 = v50;
  sub_1DD6404D8();
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCE0, &unk_1DD645500);
  v53 = OUTLINED_FUNCTION_12_6();
  v184 = xmmword_1DD643F90;
  *(v53 + 16) = xmmword_1DD643F90;
  v54 = sub_1DD6408F8();
  v56 = v55;
  *(v53 + 56) = MEMORY[0x1E69E6158];
  v57 = sub_1DD392BD8();
  *(v53 + 64) = v57;
  *(v53 + 32) = v54;
  *(v53 + 40) = v56;
  OUTLINED_FUNCTION_22_27();
  v180 = v47;
  sub_1DD63F998();

  v58 = v186;
  v59 = v186 + *(v38 + 20);
  *v59 = "ContactResolver.PLUS.QueryExpander.USOMap";
  *(v59 + 8) = 41;
  *(v59 + 16) = 2;
  v60 = v51;
  sub_1DD63F9B8();
  v174 = v38;
  *(v58 + *(v38 + 24)) = v60;
  v61 = v60;
  sub_1DD6404D8();
  v173 = v52;
  v62 = OUTLINED_FUNCTION_12_6();
  *(v62 + 16) = v184;
  v63 = sub_1DD6408F8();
  *(v62 + 56) = MEMORY[0x1E69E6158];
  *(v62 + 64) = v57;
  v64 = v57;
  *(v62 + 32) = v63;
  *(v62 + 40) = v65;
  OUTLINED_FUNCTION_3_61();
  OUTLINED_FUNCTION_22_27();
  sub_1DD63F998();

  v66 = v179;
  memcpy(v190, v179, sizeof(v190));
  memcpy(v189, v179, sizeof(v189));
  sub_1DD3C9478(v190, v191);
  v67 = ContactQuery.toUsoPerson()();
  memcpy(v191, v189, 0x108uLL);
  sub_1DD3C9580(v191);
  if (v67)
  {
    sub_1DD6404C8();
    OUTLINED_FUNCTION_22_27();
    sub_1DD63F9A8();
    v68 = v174;
    v69 = v185;
    v70 = v185 + *(v174 + 20);
    *v70 = "ContactResolver.PLUS.QueryExpander.Query";
    *(v70 + 8) = 40;
    *(v70 + 16) = 2;
    v179 = v61;
    v71 = v61;
    sub_1DD63F9B8();
    *(v69 + *(v68 + 24)) = v71;
    v72 = v71;
    sub_1DD6404D8();
    v73 = OUTLINED_FUNCTION_12_6();
    *(v73 + 16) = v184;
    v74 = sub_1DD6408F8();
    *(v73 + 56) = MEMORY[0x1E69E6158];
    *(v73 + 64) = v64;
    *(v73 + 32) = v74;
    *(v73 + 40) = v75;
    *&v184 = v72;
    sub_1DD63F998();

    if (qword_1EE165FB0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v76 = sub_1DD63F9F8();
    __swift_project_value_buffer(v76, qword_1EE16F068);

    v77 = sub_1DD63F9D8();
    v78 = sub_1DD640368();

    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      v80 = OUTLINED_FUNCTION_62();
      v189[0] = v80;
      *v79 = 136315138;
      v81 = sub_1DD63270C();
      v98 = sub_1DD39565C(v81, v97, v189);

      *(v79 + 4) = v98;
      _os_log_impl(&dword_1DD38D000, v77, v78, "PLUS: [queryPlusSuggestion] Runtime: USO used was: %s", v79, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v80);
      OUTLINED_FUNCTION_0_1();
      OUTLINED_FUNCTION_0_1();
    }

    v99 = v183;
    v100 = v178;
    v101 = v175;
    sub_1DD4B69D8(v176, &v187, &qword_1ECCDCCE0, &unk_1DD64AF80);
    v102 = v186;
    v103 = v182;
    v104 = v177;
    if (!v188)
    {
      sub_1DD390754(&v187, &qword_1ECCDCCE0, &unk_1DD64AF80);
      v105 = sub_1DD63F9D8();
      v106 = sub_1DD640378();
      if (OUTLINED_FUNCTION_4_0(v106))
      {
        v107 = OUTLINED_FUNCTION_9();
        OUTLINED_FUNCTION_16_38(v107);
        OUTLINED_FUNCTION_11_4(&dword_1DD38D000, v108, v109, "PLUS [queryPlusSuggestion]: Store Id lookup before the store was initialized");
        OUTLINED_FUNCTION_0_1();
      }

      sub_1DD41BFFC(v185);
      sub_1DD41BFFC(v102);
      OUTLINED_FUNCTION_6_62();
      __swift_storeEnumTagSinglePayload(v110, v111, v112, v113);
      goto LABEL_44;
    }

    sub_1DD3AA4A8(&v187, v189);
    sub_1DD55858C(v170, v101);
    if (__swift_getEnumTagSinglePayload(v101, 1, v103) == 1)
    {
      sub_1DD63D0E8();
      if (__swift_getEnumTagSinglePayload(v101, 1, v103) != 1)
      {
        sub_1DD390754(v101, &qword_1ECCDBAC8, &qword_1DD643E60);
      }
    }

    else
    {
      (*(v172 + 32))(v100, v101, v103);
    }

    __swift_project_boxed_opaque_existential_1(v189, v189[3]);
    v114 = sub_1DD63F968();
    sub_1DD6404C8();
    sub_1DD63F9A8();
    v115 = sub_1DD63F9D8();
    v116 = sub_1DD640378();
    if (os_log_type_enabled(v115, v116))
    {
      v117 = OUTLINED_FUNCTION_9();
      *v117 = 0;
      _os_log_impl(&dword_1DD38D000, v115, v116, "PLUS [queryPlusSuggestion]: Found matching suggestions in PICS Store", v117, 2u);
      v100 = v178;
      OUTLINED_FUNCTION_0_1();
    }

    if (*(v114 + 16) >= 2uLL)
    {

      v118 = sub_1DD63F9D8();
      v119 = sub_1DD640378();

      if (os_log_type_enabled(v118, v119))
      {
        v120 = v100;
        v121 = swift_slowAlloc();
        v122 = OUTLINED_FUNCTION_62();
        *&v187 = v122;
        *v121 = 136446210;
        v123 = MEMORY[0x1E12B2430](v114, v99);
        v125 = v124;

        v126 = sub_1DD39565C(v123, v125, &v187);

        *(v121 + 4) = v126;
        _os_log_impl(&dword_1DD38D000, v118, v119, "PLUS: [queryPlusSuggestion]: Not matching PLUSSuggestion as multiple matches were found. Count was %{public}s, max is 1.", v121, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v122);
        OUTLINED_FUNCTION_0_1();
        OUTLINED_FUNCTION_0_1();

        OUTLINED_FUNCTION_10_44();
        v128 = v120;
      }

      else
      {

        OUTLINED_FUNCTION_10_44();
        v128 = v100;
      }

      v127(v128, v182);
      sub_1DD41BFFC(v185);
      sub_1DD41BFFC(v186);
      OUTLINED_FUNCTION_6_62();
LABEL_43:
      __swift_storeEnumTagSinglePayload(v136, v137, v138, v139);
      __swift_destroy_boxed_opaque_existential_1(v189);
LABEL_44:
      v92 = v180;
      goto LABEL_45;
    }

    OUTLINED_FUNCTION_4_73();
    v129 = v168;
    sub_1DD558F58(v114, v130, v168);

    if (__swift_getEnumTagSinglePayload(v129, 1, v99) != 1)
    {
      v140 = *(v104 + 32);
      v141 = v167;
      *&v184 = v140;
      v142 = v140(v167, v129, v99);
      v143 = v99;
      v144 = v164;
      MEMORY[0x1E12B1BD0](v142);
      v145 = sub_1DD63F898();
      v147 = v146;
      (*(v165 + 8))(v144, v166);

      v148 = HIBYTE(v147) & 0xF;
      if ((v147 & 0x2000000000000000) == 0)
      {
        v148 = v145 & 0xFFFFFFFFFFFFLL;
      }

      if (v148)
      {
        OUTLINED_FUNCTION_10_44();
        v149(v178, v182);

        sub_1DD41BFFC(v185);
        sub_1DD41BFFC(v186);
        v150 = v181;
        (v184)(v181, v141, v143);
        v136 = v150;
        v137 = 0;
      }

      else
      {
        v157 = sub_1DD63F9D8();
        v158 = sub_1DD640378();
        if (OUTLINED_FUNCTION_4_0(v158))
        {
          v159 = OUTLINED_FUNCTION_9();
          OUTLINED_FUNCTION_16_38(v159);
          OUTLINED_FUNCTION_11_4(&dword_1DD38D000, v160, v161, "PLUS [queryPlusSuggestion]: Match has no contactId. Suggestion will not be submitted.");
          OUTLINED_FUNCTION_0_1();
        }

        (*(v177 + 8))(v167, v143);
        OUTLINED_FUNCTION_10_44();
        v162(v178, v182);
        sub_1DD41BFFC(v185);
        sub_1DD41BFFC(v186);
        v136 = v181;
        v137 = 1;
      }

      v138 = 1;
      v139 = v143;
      goto LABEL_43;
    }

    sub_1DD390754(v129, &qword_1ECCDEAB8, &qword_1DD65B2B0);
    v131 = sub_1DD63F9D8();
    v132 = sub_1DD640368();
    if (OUTLINED_FUNCTION_4_0(v132))
    {
      v133 = OUTLINED_FUNCTION_9();
      OUTLINED_FUNCTION_16_38(v133);
      OUTLINED_FUNCTION_11_4(&dword_1DD38D000, v134, v135, "PLUS [queryPlusSuggestion]: Match NOT found in store");
      OUTLINED_FUNCTION_0_1();
    }

    else
    {
    }

    v92 = v180;
    v151 = v186;
    OUTLINED_FUNCTION_10_44();
    v152(v100, v182);
    sub_1DD41BFFC(v185);
    sub_1DD41BFFC(v151);
    OUTLINED_FUNCTION_6_62();
    __swift_storeEnumTagSinglePayload(v153, v154, v155, v156);
    __swift_destroy_boxed_opaque_existential_1(v189);
  }

  else
  {
    if (qword_1EE165FB0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v82 = sub_1DD63F9F8();
    __swift_project_value_buffer(v82, qword_1EE16F068);
    v83 = v169;
    sub_1DD4B69D8(v66, v169, &qword_1ECCDBC18, &unk_1DD6459A0);
    v84 = sub_1DD63F9D8();
    v85 = sub_1DD640378();
    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      v87 = OUTLINED_FUNCTION_62();
      v189[0] = v87;
      *v86 = 136315138;
      v88 = sub_1DD559214();
      v90 = v89;
      sub_1DD390754(v83, &qword_1ECCDBC18, &unk_1DD6459A0);
      v91 = sub_1DD39565C(v88, v90, v189);

      *(v86 + 4) = v91;
      _os_log_impl(&dword_1DD38D000, v84, v85, "PLUS [queryPlusSuggestion]: Converting query %s failed. Not running PLUS", v86, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v87);
      OUTLINED_FUNCTION_0_1();
      OUTLINED_FUNCTION_0_1();
    }

    else
    {

      sub_1DD390754(v83, &qword_1ECCDBC18, &unk_1DD6459A0);
    }

    sub_1DD41BFFC(v58);
    v92 = v180;
    OUTLINED_FUNCTION_6_62();
    __swift_storeEnumTagSinglePayload(v93, v94, v95, v96);
  }

LABEL_45:
  sub_1DD6404C8();
  OUTLINED_FUNCTION_22_27();
  sub_1DD63F9A8();
  return sub_1DD41BFFC(v92);
}

uint64_t sub_1DD55A32C@<X0>(const void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t *a5@<X8>)
{
  LODWORD(v113) = a4;
  v110 = a2;
  v111 = a3;
  v8 = sub_1DD63F8A8();
  v9 = OUTLINED_FUNCTION_0(v8);
  v107 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2();
  v106 = v14 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEAB8, &qword_1DD65B2B0);
  OUTLINED_FUNCTION_3(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_7_3();
  v109 = v19;
  OUTLINED_FUNCTION_6_2();
  v20 = sub_1DD63F8F8();
  v21 = OUTLINED_FUNCTION_0(v20);
  v108 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_2();
  v105 = v26 - v25;
  OUTLINED_FUNCTION_6_2();
  v112 = sub_1DD63F8B8();
  v27 = OUTLINED_FUNCTION_0(v112);
  v114 = v28;
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v32 = &v99 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v99 - v34;
  v36 = type metadata accessor for Signpost();
  v37 = OUTLINED_FUNCTION_7(v36);
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_2();
  v42 = v41 - v40;
  memcpy(v119, a1, 0x108uLL);
  sub_1DD4B69D8(v5, v117, &qword_1ECCDCCE0, &unk_1DD64AF80);
  if (*&v117[24])
  {
    sub_1DD3AA4A8(v117, v118);
    memcpy(v117, v119, sizeof(v117));
    v43 = ContactQuery.toUsoPerson()();
    if (!v43)
    {
      if (qword_1EE165FB0 != -1)
      {
        OUTLINED_FUNCTION_0_5();
      }

      v61 = sub_1DD63F9F8();
      __swift_project_value_buffer(v61, qword_1EE16F068);
      sub_1DD3C9478(v119, v117);
      v62 = sub_1DD63F9D8();
      v63 = sub_1DD640378();
      sub_1DD3C9580(v119);
      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        v116 = swift_slowAlloc();
        *v64 = 136315394;
        *(v64 + 4) = sub_1DD39565C(0xD000000000000047, 0x80000001DD672DE0, &v116);
        *(v64 + 12) = 2080;
        memcpy(v115, v119, sizeof(v115));
        sub_1DD3C9478(v119, v117);
        v65 = ContactQuery.description.getter();
        v67 = v66;
        memcpy(v117, v115, sizeof(v117));
        sub_1DD3C9580(v117);
        v68 = sub_1DD39565C(v65, v67, &v116);

        *(v64 + 14) = v68;
        _os_log_impl(&dword_1DD38D000, v62, v63, "PLUS [%s]: Converting query failed, not running PLUS. Query: %s", v64, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_0_1();
        OUTLINED_FUNCTION_0_1();
      }

      v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEB40, &qword_1DD65B2B8);
      OUTLINED_FUNCTION_25_17(v69);
      return __swift_destroy_boxed_opaque_existential_1(v118);
    }

    v100 = v8;
    v101 = v20;
    v103 = a5;
    v104 = v43;
    if (qword_1EE166460 != -1)
    {
      OUTLINED_FUNCTION_4_2();
    }

    v44 = qword_1EE16F0C0;
    v45 = v42 + *(v36 + 20);
    *v45 = "UnifiedContactGenerator.PLUS.queryPlusSuggestionMatches";
    *(v45 + 8) = 55;
    *(v45 + 16) = 2;
    v46 = v44;
    sub_1DD63F9B8();
    *(v42 + *(v36 + 24)) = v46;
    v47 = v46;
    sub_1DD6404D8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCE0, &unk_1DD645500);
    v48 = OUTLINED_FUNCTION_12_6();
    *(v48 + 16) = xmmword_1DD643F90;
    v49 = sub_1DD6408F8();
    v51 = v50;
    *(v48 + 56) = MEMORY[0x1E69E6158];
    *(v48 + 64) = sub_1DD392BD8();
    *(v48 + 32) = v49;
    *(v48 + 40) = v51;
    OUTLINED_FUNCTION_3_61();
    v102 = v47;
    OUTLINED_FUNCTION_12_34();
    sub_1DD63F998();

    *v117 = MEMORY[0x1E69E7CD0];
    if (v113)
    {
      if (v113 != 1)
      {
        v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEB40, &qword_1DD65B2B8);
        v88 = v103;
        goto LABEL_29;
      }

      v52 = MEMORY[0x1E69D2798];
    }

    else
    {
      v52 = MEMORY[0x1E69D27A0];
    }

    v70 = *v52;
    v71 = v114;
    v72 = v112;
    v113 = *(v114 + 104);
    v113(v32, v70, v112);
    sub_1DD56EB4C();
    v73 = *(v71 + 8);
    v114 = v71 + 8;
    v73(v35, v72);
    __swift_project_boxed_opaque_existential_1(v118, v118[3]);
    v74 = sub_1DD63F978();

    v75 = sub_1DD3C6868(v74);

    if (*(v75 + 16) == 1)
    {
      OUTLINED_FUNCTION_4_73();
      v76 = v109;
      sub_1DD558F58(v75, v77, v109);
      v78 = v101;
      if (__swift_getEnumTagSinglePayload(v76, 1, v101) != 1)
      {

        v89 = v105;
        (*(v108 + 32))(v105, v76, v78);
        v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEB40, &qword_1DD65B2B8);
        v109 = *(v90 + 48);
        v110 = *(v90 + 64);
        v111 = v90;
        v91 = v106;
        MEMORY[0x1E12B1BD0]();
        v92 = sub_1DD63F898();
        v94 = v93;
        OUTLINED_FUNCTION_10_44();
        v95(v91, v100);
        v96 = v103;
        *v103 = v92;
        *(v96 + 8) = v94;
        sub_1DD63F8D8();
        sub_1DD63F8E8();
        v97 = v112;
        v113(v35, *MEMORY[0x1E69D27A8], v112);
        OUTLINED_FUNCTION_29();
        LOBYTE(v94) = sub_1DD47ED70();

        v73(v35, v97);
        (*(v108 + 8))(v89, v101);
        v98 = v111;
        *(v96 + v110) = v94 & 1;
        __swift_storeEnumTagSinglePayload(v96, 0, 1, v98);
        sub_1DD6404C8();
        OUTLINED_FUNCTION_12_34();
        sub_1DD63F9A8();
        goto LABEL_30;
      }

      sub_1DD390754(v76, &qword_1ECCDEAB8, &qword_1DD65B2B0);
    }

    if (qword_1EE165FB0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v79 = sub_1DD63F9F8();
    __swift_project_value_buffer(v79, qword_1EE16F068);

    v80 = sub_1DD63F9D8();
    v81 = sub_1DD640378();
    v82 = os_log_type_enabled(v80, v81);
    v83 = v103;
    if (v82)
    {
      v84 = swift_slowAlloc();
      v85 = OUTLINED_FUNCTION_62();
      v115[0] = v85;
      *v84 = 136315394;
      *(v84 + 4) = sub_1DD39565C(0xD000000000000047, 0x80000001DD672DE0, v115);
      *(v84 + 12) = 2050;
      v86 = *(v75 + 16);

      *(v84 + 14) = v86;

      _os_log_impl(&dword_1DD38D000, v80, v81, "PLUS [%s]: Matching suggestions count is not exactly 1. Ignoring... (was %{public}ld)", v84, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v85);
      OUTLINED_FUNCTION_0_1();
      OUTLINED_FUNCTION_0_1();
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEB40, &qword_1DD65B2B8);
    v88 = v83;
LABEL_29:
    __swift_storeEnumTagSinglePayload(v88, 1, 1, v87);
    sub_1DD6404C8();
    OUTLINED_FUNCTION_12_34();
    sub_1DD63F9A8();
LABEL_30:

    sub_1DD41BFFC(v42);
    return __swift_destroy_boxed_opaque_existential_1(v118);
  }

  sub_1DD390754(v117, &qword_1ECCDCCE0, &unk_1DD64AF80);
  if (qword_1EE165FB0 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  v53 = sub_1DD63F9F8();
  __swift_project_value_buffer(v53, qword_1EE16F068);
  v54 = sub_1DD63F9D8();
  v55 = sub_1DD640378();
  if (OUTLINED_FUNCTION_4_0(v55))
  {
    v56 = OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_16_38(v56);
    OUTLINED_FUNCTION_11_4(&dword_1DD38D000, v57, v58, "PLUS [hydrateCandidatesWithPlusSignal]: PICS Store queried before store was initalised.");
    OUTLINED_FUNCTION_0_1();
  }

  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEB40, &qword_1DD65B2B8);
  return OUTLINED_FUNCTION_25_17(v59);
}

uint64_t sub_1DD55AD40(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return sub_1DD640768();
  }

  v3 = -1 << *(a1 + 32);
  result = sub_1DD640728();
  v4 = *(a1 + 36);
  return result;
}

uint64_t sub_1DD55ADA0(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = sub_1DD640728();
  v4 = *(a1 + 36);
  return result;
}

uint64_t sub_1DD55ADFC(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    v4 = (*(a4 + 48) + 16 * result);
    v5 = *v4;
    v6 = v4[1];

    return OUTLINED_FUNCTION_15_0();
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1DD55AE74(uint64_t result, int a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      v6 = OUTLINED_FUNCTION_29();
      v16 = MEMORY[0x1E12B2AE0](v6);
      type metadata accessor for DateTimeConstraint();
      swift_dynamicCast();
      return v15[0];
    }

    goto LABEL_22;
  }

  if (a3)
  {
    type metadata accessor for DateTimeConstraint();
    OUTLINED_FUNCTION_29();
    if (sub_1DD640798() == *(a4 + 36))
    {
      OUTLINED_FUNCTION_29();
      v16 = sub_1DD6407A8();
      swift_dynamicCast();
      v7 = v15[0];
      v8 = *(a4 + 40);
      sub_1DD640E28();
      sub_1DD48E664(v15);
      v9 = sub_1DD640E78();
      v10 = ~(-1 << *(a4 + 32));
      while (1)
      {
        v5 = v9 & v10;
        if (((*(a4 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v9 & v10)) & 1) == 0)
        {
          goto LABEL_21;
        }

        v11 = *(*(a4 + 48) + 8 * v5);

        v13 = sub_1DD48E554(v12, v7);

        if (v13)
        {
          goto LABEL_15;
        }

        v9 = v5 + 1;
      }
    }

    __break(1u);
    goto LABEL_19;
  }

  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_20:
    __break(1u);
LABEL_21:

    __break(1u);
LABEL_22:
    __break(1u);
    return result;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_15:
  }

  v14 = *(*(a4 + 48) + 8 * v5);
}

uint64_t sub_1DD55B050@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, _BYTE *a4@<X8>)
{
  if (result < 0 || 1 << *(a3 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a3 + 36) == a2)
  {
    *a4 = *(*(a3 + 48) + result);
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1DD55B0A4(uint64_t a1, uint64_t (*a2)(void *))
{
  v3 = 0;
  v4 = *(a1 + 16);
  v5 = (a1 + 40);
  while (v4 != v3)
  {
    v6 = *v5;
    v9[0] = *(v5 - 1);
    v9[1] = v6;

    v7 = a2(v9);

    if (v7)
    {
      return v3;
    }

    ++v3;
    v5 += 2;
  }

  return v4;
}

uint64_t sub_1DD55B13C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_7(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_15_0();
  v8(v7);
  return a2;
}

void OUTLINED_FUNCTION_14_37()
{

  JUMPOUT(0x1E12B2260);
}

_BYTE *storeEnumTagSinglePayload for PLUSTrialFactors(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1DD55B2E8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000021 && 0x80000001DD66C4E0 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1DD640CD8();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1DD55B384(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEB58, &qword_1DD65B388);
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v9 = &v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD55B6F0();
  sub_1DD640EF8();
  sub_1DD640C28();
  return (*(v5 + 8))(v9, v2);
}

uint64_t sub_1DD55B4A8(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEB50, &qword_1DD65B380);
  v4 = OUTLINED_FUNCTION_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v10 = &v14 - v9;
  v11 = a1[4];
  v12 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD55B6F0();
  sub_1DD640ED8();
  if (!v1)
  {
    v12 = sub_1DD640B38();
    (*(v6 + 8))(v10, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v12 & 1;
}

uint64_t sub_1DD55B5F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD55B2E8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1DD55B620(uint64_t a1)
{
  v2 = sub_1DD55B6F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD55B65C(uint64_t a1)
{
  v2 = sub_1DD55B6F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD55B698@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DD55B4A8(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

unint64_t sub_1DD55B6F0()
{
  result = qword_1EE165588;
  if (!qword_1EE165588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE165588);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PLUSTrialFactors.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_1DD55B7F4()
{
  result = qword_1ECCDEB60;
  if (!qword_1ECCDEB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDEB60);
  }

  return result;
}

unint64_t sub_1DD55B84C()
{
  result = qword_1EE165578;
  if (!qword_1EE165578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE165578);
  }

  return result;
}

unint64_t sub_1DD55B8A4()
{
  result = qword_1EE165580;
  if (!qword_1EE165580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE165580);
  }

  return result;
}

SiriInference::POILandmark::Prefix_optional __swiftcall POILandmark.Prefix.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DD640AA8();

  v5 = 12;
  if (v3 < 0xC)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t POILandmark.Prefix.rawValue.getter()
{
  result = 0x656874206F74;
  switch(*v0)
  {
    case 1:
      result = 29793;
      break;
    case 2:
      result = 0x7373656E69737562;
      break;
    case 3:
      result = 28265;
      break;
    case 4:
      result = 0x65687420726F66;
      break;
    case 5:
      result = 31074;
      break;
    case 6:
      result = 26223;
      break;
    case 7:
      result = 7499622;
      break;
    case 8:
      result = 1918985582;
      break;
    case 9:
      result = 28532;
      break;
    case 0xA:
      result = 0x656874207461;
      break;
    case 0xB:
      result = 0x656874206E69;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD55BA60@<X0>(uint64_t *a1@<X8>)
{
  result = POILandmark.Prefix.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t POILandmark.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t static POILandmark.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v4 || (v5 = sub_1DD640CD8(), result = 0, (v5 & 1) != 0))
  {
    result = v3 == 12 && (v2 == 12);
    if (v2 != 12 && v3 != 12)
    {

      return sub_1DD3B1724(v2, v3);
    }
  }

  return result;
}

uint64_t sub_1DD55BC10(uint64_t a1)
{
  v2 = sub_1DD55C014();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD55BC4C(uint64_t a1)
{
  v2 = sub_1DD55C014();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t POILandmark.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEB68, &qword_1DD65B4A8);
  v5 = OUTLINED_FUNCTION_0(v4);
  v16 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v15 - v9;
  v11 = *v1;
  v12 = v1[1];
  v17 = *(v1 + 16);
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD55C014();
  sub_1DD640EF8();
  v20 = 0;
  sub_1DD640C18();
  if (!v2)
  {
    v19 = v17;
    v18 = 1;
    sub_1DD55C068();
    sub_1DD640C08();
  }

  return (*(v16 + 8))(v10, v4);
}

uint64_t POILandmark.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEB80, &qword_1DD65B4B0);
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD55C014();
  sub_1DD640ED8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = sub_1DD640B28();
  v12 = v11;
  sub_1DD55C0BC();
  sub_1DD640B18();
  v13 = OUTLINED_FUNCTION_41();
  v14(v13);
  *a2 = v10;
  *(a2 + 8) = v12;
  *(a2 + 16) = v16;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1DD55C014()
{
  result = qword_1ECCDEB70;
  if (!qword_1ECCDEB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDEB70);
  }

  return result;
}

unint64_t sub_1DD55C068()
{
  result = qword_1ECCDEB78;
  if (!qword_1ECCDEB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDEB78);
  }

  return result;
}

unint64_t sub_1DD55C0BC()
{
  result = qword_1ECCDEB88;
  if (!qword_1ECCDEB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDEB88);
  }

  return result;
}

unint64_t sub_1DD55C114()
{
  result = qword_1ECCDEB90;
  if (!qword_1ECCDEB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDEB90);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for POILandmark.Prefix(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
          *result = a2 + 11;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for POILandmark.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD55C334()
{
  result = qword_1ECCDEB98;
  if (!qword_1ECCDEB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDEB98);
  }

  return result;
}

unint64_t sub_1DD55C38C()
{
  result = qword_1ECCDEBA0;
  if (!qword_1ECCDEBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDEBA0);
  }

  return result;
}

unint64_t sub_1DD55C3E4()
{
  result = qword_1ECCDEBA8;
  if (!qword_1ECCDEBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDEBA8);
  }

  return result;
}

unint64_t sub_1DD55C438()
{
  result = qword_1ECCDEBB0;
  if (!qword_1ECCDEBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDEBB0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PortraitFetcher(_BYTE *result, int a2, int a3)
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

uint64_t sub_1DD55C538(uint64_t a1)
{
  v67[1] = *MEMORY[0x1E69E9840];
  if (*(a1 + 16))
  {
    v1 = a1;
    if (qword_1ECCDB0D0 != -1)
    {
      goto LABEL_46;
    }

    while (1)
    {
      v2 = sub_1DD63F9F8();
      __swift_project_value_buffer(v2, qword_1ECD0DDD8);

      v3 = sub_1DD63F9D8();
      v4 = sub_1DD640368();

      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        v6 = swift_slowAlloc();
        v67[0] = v6;
        *v5 = 136315138;
        v7 = sub_1DD640278();
        v9 = sub_1DD39565C(v7, v8, v67);

        *(v5 + 4) = v9;
        _os_log_impl(&dword_1DD38D000, v3, v4, "getTeamQIdsScores(). qIds set = %s", v5, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v6);
        OUTLINED_FUNCTION_0_1();
        OUTLINED_FUNCTION_0_1();
      }

      v10 = [objc_allocWithZone(MEMORY[0x1E69BDCC8]) init];
      v11 = [objc_allocWithZone(MEMORY[0x1E69BDCC0]) init];
      sub_1DD56C2F4();
      sub_1DD55CC1C(v12, v11);
      sub_1DD55CC90(v1, v11);
      v13 = sub_1DD63FDA8();
      v67[0] = 0;
      v60 = v10;
      v14 = [v10 scoresForTopicMapping:v13 query:v11 error:v67];

      v15 = v67[0];
      if (!v14)
      {
        v44 = v67[0];
        v45 = sub_1DD63CD98();

        swift_willThrow();
        v46 = sub_1DD63F9D8();
        v47 = sub_1DD640378();
        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          *v48 = 0;
          _os_log_impl(&dword_1DD38D000, v46, v47, "getTeamQIdsScores(). Error in fetching Portrait QId and Item Scores.", v48, 2u);
          OUTLINED_FUNCTION_0_1();
        }

        goto LABEL_34;
      }

      sub_1DD5210EC();
      v1 = sub_1DD63FC58();
      v16 = v15;

      v17 = *(v1 + 16);
      if (!v17)
      {
        break;
      }

      v59 = v11;
      v67[0] = MEMORY[0x1E69E7CC0];
      sub_1DD42BE8C(0, v17, 0);
      v18 = v67[0];
      v21 = sub_1DD5FAA4C(v1);
      v22 = 0;
      v66 = v1 + 64;
      v61 = v19;
      v62 = v17;
      while ((v21 & 0x8000000000000000) == 0 && v21 < 1 << *(v1 + 32))
      {
        v23 = v21 >> 6;
        if ((*(v66 + 8 * (v21 >> 6)) & (1 << v21)) == 0)
        {
          goto LABEL_41;
        }

        if (*(v1 + 36) != v19)
        {
          goto LABEL_42;
        }

        v63 = v20;
        v24 = (*(v1 + 48) + 16 * v21);
        v25 = v24[1];
        v64 = v19;
        v65 = *v24;
        v26 = *(*(v1 + 56) + 8 * v21);

        [v26 doubleValue];
        v28 = v27;
        v67[0] = v18;
        v30 = v18[2];
        v29 = v18[3];
        if (v30 >= v29 >> 1)
        {
          sub_1DD42BE8C((v29 > 1), v30 + 1, 1);
          v18 = v67[0];
        }

        v18[2] = v30 + 1;
        v31 = &v18[3 * v30];
        v31[4] = v65;
        v31[5] = v25;
        v31[6] = v28;
        v32 = 1 << *(v1 + 32);
        if (v21 >= v32)
        {
          goto LABEL_43;
        }

        v33 = *(v66 + 8 * v23);
        if ((v33 & (1 << v21)) == 0)
        {
          goto LABEL_44;
        }

        if (*(v1 + 36) != v64)
        {
          goto LABEL_45;
        }

        v34 = v33 & (-2 << (v21 & 0x3F));
        if (v34)
        {
          v32 = __clz(__rbit64(v34)) | v21 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v35 = v23 << 6;
          v36 = v23 + 1;
          v37 = (v1 + 72 + 8 * v23);
          while (v36 < (v32 + 63) >> 6)
          {
            v39 = *v37++;
            v38 = v39;
            v35 += 64;
            ++v36;
            if (v39)
            {
              sub_1DD3AA558(v21, v64, v63 & 1);
              v32 = __clz(__rbit64(v38)) + v35;
              goto LABEL_24;
            }
          }

          sub_1DD3AA558(v21, v64, v63 & 1);
        }

LABEL_24:
        v20 = 0;
        ++v22;
        v21 = v32;
        v19 = v61;
        if (v22 == v62)
        {

          v11 = v59;
          goto LABEL_36;
        }
      }

      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      OUTLINED_FUNCTION_0_115();
    }

    v18 = MEMORY[0x1E69E7CC0];
LABEL_36:
    v49 = sub_1DD3B82D0(v18);

    v50 = sub_1DD63F9D8();
    v51 = sub_1DD640368();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v67[0] = v53;
      *v52 = 136315138;
      v54 = sub_1DD63FC68();
      v56 = sub_1DD39565C(v54, v55, v67);

      *(v52 + 4) = v56;
      _os_log_impl(&dword_1DD38D000, v50, v51, "getTeamQIdsScores(). QId(s) with their Score(s) = %s", v52, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v53);
      OUTLINED_FUNCTION_0_1();
      OUTLINED_FUNCTION_0_1();
    }
  }

  else
  {
    if (qword_1ECCDB0D0 != -1)
    {
      OUTLINED_FUNCTION_0_115();
    }

    v40 = sub_1DD63F9F8();
    __swift_project_value_buffer(v40, qword_1ECD0DDD8);
    v41 = sub_1DD63F9D8();
    v42 = sub_1DD640368();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_1DD38D000, v41, v42, "getTeamQIdsScores(). qIds set is Empty!", v43, 2u);
      OUTLINED_FUNCTION_0_1();
    }

LABEL_34:
    v49 = MEMORY[0x1E69E7CC8];
  }

  v57 = *MEMORY[0x1E69E9840];
  return v49;
}