uint64_t sub_1BCA687F4()
{
  OUTLINED_FUNCTION_13_7();
  if (v0 == v1)
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_1BCE1E090();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_1BCA68868(unsigned __int8 a1, char a2)
{
  v2 = 0x726F6C6F43706F74;
  v3 = 0xE800000000000000;
  v4 = a1;
  v5 = 0x726F6C6F43706F74;
  switch(v4)
  {
    case 1:
      v6 = 0x656C6464696DLL;
      goto LABEL_4;
    case 2:
      v6 = 0x6D6F74746F62;
LABEL_4:
      v5 = v6 & 0xFFFFFFFFFFFFLL | 0x6F43000000000000;
      v3 = 0xEB00000000726F6CLL;
      break;
    case 3:
      v5 = 0x7453656C6464696DLL;
      v3 = 0xEF746E696F50706FLL;
      break;
    default:
      break;
  }

  v7 = 0xE800000000000000;
  switch(a2)
  {
    case 1:
      v8 = 0x656C6464696DLL;
      goto LABEL_9;
    case 2:
      v8 = 0x6D6F74746F62;
LABEL_9:
      v2 = v8 & 0xFFFFFFFFFFFFLL | 0x6F43000000000000;
      v7 = 0xEB00000000726F6CLL;
      break;
    case 3:
      v2 = 0x7453656C6464696DLL;
      v7 = 0xEF746E696F50706FLL;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_4_14();
  }

  return v10 & 1;
}

uint64_t sub_1BCA689D8(char a1)
{
  if (a1)
  {
    v1 = 0xE90000000000006ELL;
  }

  else
  {
    v1 = 0xE700000000000000;
  }

  OUTLINED_FUNCTION_13_7();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_4_14();
  }

  return v8 & 1;
}

uint64_t sub_1BCA68A9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3();
  v6 = v5;
  if (v4 == a3() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_4_14();
  }

  return v9 & 1;
}

uint64_t sub_1BCA68B30(char a1, char a2)
{
  if (*&aNone_6[8 * a1] == *&aNone_6[8 * a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_1BCE1E090();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_1BCA68B98(unsigned __int8 a1, char a2)
{
  v2 = 7627116;
  v3 = 0xE300000000000000;
  v4 = a1;
  v5 = 7627116;
  switch(v4)
  {
    case 1:
      v3 = 0xE400000000000000;
      v5 = 1735290732;
      break;
    case 2:
      v5 = 6778476;
      break;
    case 3:
      v3 = 0xE400000000000000;
      v5 = 2037672291;
      break;
    case 4:
      v3 = 0xE700000000000000;
      v5 = 0x6C61636F4C7369;
      break;
    case 5:
      v5 = 0x724664656E65706FLL;
      v3 = 0xEA00000000006D6FLL;
      break;
    case 6:
      v3 = 0xE600000000000000;
      v5 = 0x646E696B326CLL;
      break;
    case 7:
      v3 = 0xE400000000000000;
      v5 = 1702125924;
      break;
    case 8:
      v3 = 0xE800000000000000;
      v5 = 0x6E6F697469736F70;
      break;
    case 9:
      v5 = 0x74617265706D6574;
      v3 = 0xEB00000000657275;
      break;
    case 10:
      v3 = 0xE700000000000000;
      v5 = 0x6464416D6F7266;
      break;
    default:
      break;
  }

  v6 = 0xE300000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE400000000000000;
      v2 = 1735290732;
      break;
    case 2:
      v2 = 6778476;
      break;
    case 3:
      v6 = 0xE400000000000000;
      v2 = 2037672291;
      break;
    case 4:
      v6 = 0xE700000000000000;
      v2 = 0x6C61636F4C7369;
      break;
    case 5:
      v2 = 0x724664656E65706FLL;
      v6 = 0xEA00000000006D6FLL;
      break;
    case 6:
      v6 = 0xE600000000000000;
      v2 = 0x646E696B326CLL;
      break;
    case 7:
      v6 = 0xE400000000000000;
      v2 = 1702125924;
      break;
    case 8:
      v6 = 0xE800000000000000;
      v2 = 0x6E6F697469736F70;
      break;
    case 9:
      v2 = 0x74617265706D6574;
      v6 = 0xEB00000000657275;
      break;
    case 10:
      v6 = 0xE700000000000000;
      v2 = 0x6464416D6F7266;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_4_14();
  }

  return v8 & 1;
}

uint64_t sub_1BCA68DEC(char a1)
{
  if (a1)
  {
    v1 = 0xE400000000000000;
  }

  else
  {
    v1 = 0xE300000000000000;
  }

  OUTLINED_FUNCTION_13_7();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_4_14();
  }

  return v8 & 1;
}

uint64_t sub_1BCA68E6C(char a1)
{
  if (a1)
  {
    v1 = 0xE600000000000000;
  }

  else
  {
    v1 = 0xEC00000074656764;
  }

  OUTLINED_FUNCTION_13_7();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_4_14();
  }

  return v8 & 1;
}

uint64_t sub_1BCA68F00(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F697469646E6F63 && a2 == 0xED0000646E694B6ELL;
  if (v4 || (sub_1BCE1E090() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6F69746176656C65 && a2 == 0xE90000000000006ELL;
    if (v6 || (sub_1BCE1E090() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x67696C7961447369 && a2 == 0xEA00000000007468;
      if (v7 || (sub_1BCE1E090() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x61746E6573657270 && a2 == 0xEC0000006E6F6974;
        if (v8 || (sub_1BCE1E090() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x766F4364756F6C63 && a2 == 0xEA00000000007265;
          if (v9 || (sub_1BCE1E090() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x6E694B64756F6C63 && a2 == 0xE900000000000064)
          {

            return 5;
          }

          else
          {
            v11 = sub_1BCE1E090();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1BCA69114(char a1)
{
  result = 0x6F697469646E6F63;
  switch(a1)
  {
    case 1:
      result = 0x6F69746176656C65;
      break;
    case 2:
      result = 0x67696C7961447369;
      break;
    case 3:
      result = 0x61746E6573657270;
      break;
    case 4:
      result = 0x766F4364756F6C63;
      break;
    case 5:
      result = 0x6E694B64756F6C63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1BCA69200@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BCA68F00(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BCA69228@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BCA6910C();
  *a1 = result;
  return result;
}

uint64_t sub_1BCA69250(uint64_t a1)
{
  v2 = sub_1BCA69A90();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BCA6928C(uint64_t a1)
{
  v2 = sub_1BCA69A90();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WeatherConditionGradientModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08130);
  OUTLINED_FUNCTION_2();
  v7 = v6;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BCA69A90();
  sub_1BCE1E170();
  LOBYTE(v19) = 0;
  sub_1BCE199D0();
  OUTLINED_FUNCTION_6_12();
  sub_1BC99EFC8(v11, v12);
  sub_1BCE1E020();
  if (!v2)
  {
    v13 = type metadata accessor for WeatherConditionGradientModel();
    v14 = (v3 + v13[5]);
    v15 = *v14;
    LOBYTE(v14) = *(v14 + 8);
    v19 = v15;
    v20 = v14;
    v18 = 1;
    sub_1BCA69AE4();
    OUTLINED_FUNCTION_7_7();
    sub_1BCE1E020();
    LOBYTE(v19) = 2;
    OUTLINED_FUNCTION_7_7();
    sub_1BCE1DFE0();
    LOBYTE(v19) = *(v3 + v13[7]);
    v18 = 3;
    sub_1BCA69B38();
    OUTLINED_FUNCTION_7_7();
    sub_1BCE1E020();
    LOBYTE(v19) = 4;
    sub_1BCE1DFF0();
    LOBYTE(v19) = *(v3 + v13[9]);
    v18 = 5;
    sub_1BCA69B8C();
    OUTLINED_FUNCTION_7_7();
    sub_1BCE1E020();
  }

  return (*(v7 + 8))(v10, v5);
}

void WeatherConditionGradientModel.init(from:)()
{
  OUTLINED_FUNCTION_18_0();
  v2 = v1;
  v25[0] = v3;
  v4 = sub_1BCE199D0();
  OUTLINED_FUNCTION_2();
  v26 = v5;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08160);
  OUTLINED_FUNCTION_2();
  v25[1] = v9;
  v25[2] = v10;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v25 - v12;
  v14 = type metadata accessor for WeatherConditionGradientModel();
  MEMORY[0x1EEE9AC00](v14);
  v16 = v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v2[3];
  v28 = v2;
  __swift_project_boxed_opaque_existential_1(v2, v17);
  sub_1BCA69A90();
  v27 = v13;
  sub_1BCE1E160();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v28);
  }

  else
  {
    LOBYTE(v29) = 0;
    OUTLINED_FUNCTION_6_12();
    sub_1BC99EFC8(v18, v19);
    sub_1BCE1DF70();
    (*(v26 + 32))(v16, v8, v4);
    sub_1BCA69BE0();
    OUTLINED_FUNCTION_5_10();
    v20 = v30;
    v21 = &v16[v14[5]];
    *v21 = v29;
    v21[8] = v20;
    OUTLINED_FUNCTION_14_5(2);
    v16[v14[6]] = sub_1BCE1DF30() & 1;
    sub_1BCA69C34();
    OUTLINED_FUNCTION_5_10();
    v16[v14[7]] = v29;
    OUTLINED_FUNCTION_14_5(4);
    sub_1BCE1DF40();
    *&v16[v14[8]] = v22;
    sub_1BCA69C88();
    OUTLINED_FUNCTION_5_10();
    v23 = OUTLINED_FUNCTION_19_5();
    v24(v23);
    v16[v14[9]] = v29;
    sub_1BCA2F678(v16, v25[0]);
    __swift_destroy_boxed_opaque_existential_1(v28);
    sub_1BCA69CDC(v16);
  }

  OUTLINED_FUNCTION_17_1();
}

unint64_t sub_1BCA69940()
{
  result = qword_1EBD080E0;
  if (!qword_1EBD080E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD080E0);
  }

  return result;
}

unint64_t sub_1BCA69994()
{
  result = qword_1EBD08100;
  if (!qword_1EBD08100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD08100);
  }

  return result;
}

unint64_t sub_1BCA699E8()
{
  result = qword_1EBD08108;
  if (!qword_1EBD08108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD08108);
  }

  return result;
}

unint64_t sub_1BCA69A3C()
{
  result = qword_1EBD08110;
  if (!qword_1EBD08110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD08110);
  }

  return result;
}

unint64_t sub_1BCA69A90()
{
  result = qword_1EBD08138;
  if (!qword_1EBD08138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD08138);
  }

  return result;
}

unint64_t sub_1BCA69AE4()
{
  result = qword_1EBD08148;
  if (!qword_1EBD08148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD08148);
  }

  return result;
}

unint64_t sub_1BCA69B38()
{
  result = qword_1EBD08150;
  if (!qword_1EBD08150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD08150);
  }

  return result;
}

unint64_t sub_1BCA69B8C()
{
  result = qword_1EBD08158;
  if (!qword_1EBD08158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD08158);
  }

  return result;
}

unint64_t sub_1BCA69BE0()
{
  result = qword_1EBD08170;
  if (!qword_1EBD08170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD08170);
  }

  return result;
}

unint64_t sub_1BCA69C34()
{
  result = qword_1EBD08178;
  if (!qword_1EBD08178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD08178);
  }

  return result;
}

unint64_t sub_1BCA69C88()
{
  result = qword_1EBD08180;
  if (!qword_1EBD08180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD08180);
  }

  return result;
}

uint64_t sub_1BCA69CDC(uint64_t a1)
{
  v2 = type metadata accessor for WeatherConditionGradientModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BCA69D3C()
{
  result = qword_1EBD08188;
  if (!qword_1EBD08188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD08188);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WeatherConditionGradientModel.PresentationContext(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return v5 + 1;
  }

  if (a2 >= 0x7E)
  {
    if (a2 + 130 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 130) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 131;
    return v5 + 1;
  }

LABEL_17:
  v5 = ((*a1 >> 6) & 0xFFFFFF83 | (4 * ((*a1 >> 1) & 0x1F))) ^ 0x7F;
  if (v5 >= 0x7D)
  {
    v5 = -1;
  }

  return v5 + 1;
}

_BYTE *storeEnumTagSinglePayload for WeatherConditionGradientModel.PresentationContext(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 130 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 130) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0x7E)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0x7D)
  {
    v6 = ((a2 - 126) >> 8) + 1;
    *result = a2 - 126;
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
          *result = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1BCA69F28(_BYTE *a1)
{
  v1 = *a1;
  if (v1 >= 0)
  {
    return *a1 >> 6;
  }

  else
  {
    return v1 & 1 | 2u;
  }
}

uint64_t getEnumTagSinglePayload for WeatherConditionGradientModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for WeatherConditionGradientModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1BCA6A0C8(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for WeatherConditionGradientModel.PresentationContext.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1BCA6A2B0(unsigned __int8 *a1, int a2)
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

  return OUTLINED_FUNCTION_113(a1);
}

_BYTE *sub_1BCA6A2FC(_BYTE *result, int a2, int a3)
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

unint64_t sub_1BCA6A3BC()
{
  result = qword_1EBD08190;
  if (!qword_1EBD08190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD08190);
  }

  return result;
}

unint64_t sub_1BCA6A414()
{
  result = qword_1EBD08198;
  if (!qword_1EBD08198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD08198);
  }

  return result;
}

unint64_t sub_1BCA6A46C()
{
  result = qword_1EBD081A0;
  if (!qword_1EBD081A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD081A0);
  }

  return result;
}

unint64_t sub_1BCA6A4C4()
{
  result = qword_1EBD081A8;
  if (!qword_1EBD081A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD081A8);
  }

  return result;
}

unint64_t sub_1BCA6A51C()
{
  result = qword_1EBD081B0;
  if (!qword_1EBD081B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD081B0);
  }

  return result;
}

unint64_t sub_1BCA6A574()
{
  result = qword_1EBD081B8;
  if (!qword_1EBD081B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD081B8);
  }

  return result;
}

unint64_t sub_1BCA6A5CC()
{
  result = qword_1EBD081C0;
  if (!qword_1EBD081C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD081C0);
  }

  return result;
}

unint64_t sub_1BCA6A624()
{
  result = qword_1EBD081C8;
  if (!qword_1EBD081C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD081C8);
  }

  return result;
}

unint64_t sub_1BCA6A67C()
{
  result = qword_1EBD081D0;
  if (!qword_1EBD081D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD081D0);
  }

  return result;
}

unint64_t sub_1BCA6A6D4()
{
  result = qword_1EBD081D8;
  if (!qword_1EBD081D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD081D8);
  }

  return result;
}

unint64_t sub_1BCA6A72C()
{
  result = qword_1EBD081E0;
  if (!qword_1EBD081E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD081E0);
  }

  return result;
}

unint64_t sub_1BCA6A784()
{
  result = qword_1EBD081E8;
  if (!qword_1EBD081E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD081E8);
  }

  return result;
}

unint64_t sub_1BCA6A7DC()
{
  result = qword_1EBD081F0;
  if (!qword_1EBD081F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD081F0);
  }

  return result;
}

unint64_t sub_1BCA6A834()
{
  result = qword_1EBD081F8;
  if (!qword_1EBD081F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD081F8);
  }

  return result;
}

unint64_t sub_1BCA6A88C()
{
  result = qword_1EBD08200;
  if (!qword_1EBD08200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD08200);
  }

  return result;
}

unint64_t sub_1BCA6A8E4()
{
  result = qword_1EBD08208;
  if (!qword_1EBD08208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD08208);
  }

  return result;
}

unint64_t sub_1BCA6A93C()
{
  result = qword_1EBD08210;
  if (!qword_1EBD08210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD08210);
  }

  return result;
}

unint64_t sub_1BCA6A994()
{
  result = qword_1EBD08218;
  if (!qword_1EBD08218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD08218);
  }

  return result;
}

unint64_t sub_1BCA6A9EC()
{
  result = qword_1EBD08220;
  if (!qword_1EBD08220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD08220);
  }

  return result;
}

unint64_t sub_1BCA6AA44()
{
  result = qword_1EBD08228;
  if (!qword_1EBD08228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD08228);
  }

  return result;
}

unint64_t sub_1BCA6AA9C()
{
  result = qword_1EBD08230;
  if (!qword_1EBD08230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD08230);
  }

  return result;
}

double sub_1BCA6AB30@<D0>(uint64_t a1@<X8>)
{
  v2 = (a1 + 1436);
  sub_1BCA6B2E0();
  v4 = v3;
  sub_1BCA6D340();
  *a1 = 0x4006666666666666;
  *(a1 + 8) = 3;
  *(a1 + 16) = 0x3FF0000000000000;
  *(a1 + 24) = 30;
  *(a1 + 32) = xmmword_1BCE3BED0;
  *(a1 + 48) = xmmword_1BCE3BED0;
  *(a1 + 64) = 0x42C8000042480000;
  *(a1 + 72) = 0xC3D4800000000000;
  *(a1 + 80) = xmmword_1BCE3C650;
  *(a1 + 96) = xmmword_1BCE3BEF0;
  *(a1 + 112) = 0x3E8000003DF5C28FLL;
  __asm { FMOV            V0.4S, #1.0 }

  *(a1 + 128) = _Q0;
  *(a1 + 144) = _Q0;
  *(a1 + 160) = xmmword_1BCE3BF00;
  *(a1 + 176) = 1153138688;
  *(a1 + 184) = 0x3E4CCCCD3DA3D70ALL;
  *(a1 + 192) = _Q0;
  *(a1 + 208) = _Q0;
  *(a1 + 224) = xmmword_1BCE3C660;
  *(a1 + 240) = 0x4140000040A00000;
  *(a1 + 248) = 1132068864;
  *(a1 + 256) = 0x3E4CCCCD3DE147AELL;
  *(a1 + 264) = 0x40A0000041700000;
  *(a1 + 272) = 1101004800;
  *(a1 + 288) = _Q0;
  *(a1 + 304) = _Q0;
  *(a1 + 320) = 0x4348000040C00000;
  *(a1 + 328) = 0x3E99999A3E19999ALL;
  *(a1 + 336) = 0x3F00000040A00000;
  *(a1 + 352) = _Q0;
  *(a1 + 368) = _Q0;
  *(a1 + 384) = 0;
  *(a1 + 388) = 0x3AC49BA63F333333;
  *(a1 + 400) = xmmword_1BCE3C670;
  *(a1 + 416) = 0x3F0000003F000000;
  *(a1 + 424) = 30;
  *(a1 + 432) = xmmword_1BCE3C680;
  *(a1 + 448) = 0x3E4CCCCD3DCCCCCDLL;
  *(a1 + 464) = _Q0;
  *(a1 + 480) = _Q0;
  *(a1 + 496) = 0x43FA000040400000;
  *(a1 + 504) = 1116471296;
  *(a1 + 512) = 0x3E8000003DF5C28FLL;
  *(a1 + 528) = _Q0;
  *(a1 + 544) = _Q0;
  *(a1 + 560) = 0x4248000044BB8000;
  *(a1 + 568) = 0x3E4CCCCD3DA3D70ALL;
  *(a1 + 576) = _Q0;
  *(a1 + 592) = _Q0;
  *(a1 + 608) = 0x40C0000040800000;
  *(a1 + 624) = xmmword_1BCE45AF0;
  *(a1 + 640) = xmmword_1BCE45B00;
  *(a1 + 656) = 0x419DAE1441200000;
  *(a1 + 664) = 0x402000003E99999ALL;
  *(a1 + 672) = 0x40A000003F800000;
  *(a1 + 688) = xmmword_1BCE3C700;
  *(a1 + 704) = 1056964608;
  *(a1 + 712) = 0x3E4CCCCD3E3851ECLL;
  *(a1 + 720) = 0x41A0000041600000;
  *(a1 + 728) = 1102714503;
  *(a1 + 736) = 1;
  *(a1 + 744) = 4;
  *(a1 + 752) = xmmword_1BCE3C6C0;
  *(a1 + 768) = 0xD000000000000010;
  *(a1 + 776) = 0x80000001BCE79320;
  *(a1 + 784) = 0xD000000000000014;
  *(a1 + 792) = 0x80000001BCE79340;
  *(a1 + 800) = 9;
  *(a1 + 816) = _Q0;
  *(a1 + 832) = 1060320051;
  *(a1 + 840) = 0x3E99999A3E800000;
  *(a1 + 848) = 0x41BFD70A41900000;
  *(a1 + 856) = 0xBFFCEC20408B9AC8;
  *(a1 + 864) = 1;
  *(a1 + 872) = 3;
  *(a1 + 880) = xmmword_1BCE3C6E0;
  *(a1 + 896) = 0x617274736F746C41;
  *(a1 + 904) = 0xEF4C202D20737574;
  *(a1 + 912) = 0xD000000000000013;
  *(a1 + 920) = 0x80000001BCE798E0;
  *(a1 + 928) = 9;
  *(a1 + 944) = _Q0;
  *(a1 + 960) = 1061997773;
  *(a1 + 968) = 0x3ECCCCCD3E99999ALL;
  *(a1 + 976) = 0x41999999417947AELL;
  *(a1 + 984) = 1054754944;
  *(a1 + 992) = 1;
  *(a1 + 1000) = 3;
  *(a1 + 1008) = xmmword_1BCE3C6F0;
  *(a1 + 1024) = 0x617274736F746C41;
  *(a1 + 1032) = 0xEF53202D20737574;
  *(a1 + 1040) = 0xD000000000000013;
  *(a1 + 1048) = 0x80000001BCE792E0;
  *(a1 + 1056) = 9;
  *(a1 + 1072) = xmmword_1BCE45B10;
  *(a1 + 1088) = 1061997773;
  *(a1 + 1096) = 0x3F8000003F000000;
  *(a1 + 1104) = 0x404F5C293FC00000;
  *(a1 + 1112) = 0;
  *(a1 + 1120) = 1;
  *(a1 + 1128) = 4;
  *(a1 + 1136) = xmmword_1BCE3D8A0;
  *(a1 + 1152) = 0x2073756C756D7543;
  *(a1 + 1160) = 0xEB0000000053202DLL;
  *(a1 + 1168) = 0x5F73756C756D7543;
  *(a1 + 1176) = 0xEF53656C676E6953;
  *(a1 + 1184) = 5;
  *(a1 + 1200) = xmmword_1BCE45B20;
  *(a1 + 1216) = xmmword_1BCE3E540;
  *(a1 + 1232) = 0;
  *(a1 + 1236) = 1;
  *(a1 + 1240) = 0x617274736F746C41;
  *(a1 + 1248) = 0xEB00000000737574;
  *(a1 + 1256) = 0xD000000000000013;
  *(a1 + 1264) = 0x80000001BCE79300;
  *(a1 + 1272) = 8;
  *(a1 + 1280) = 0;
  *(a1 + 1288) = 0x400000003F800000;
  *(a1 + 1296) = 0x41C8000042C80000;
  *(a1 + 1304) = 0;
  *(a1 + 1312) = _Q0;
  *(a1 + 1328) = _Q0;
  *(a1 + 1344) = 0;
  *(a1 + 1352) = 0x40000000;
  *(a1 + 1360) = 0;
  *(a1 + 1368) = 1;
  *(a1 + 1376) = xmmword_1BCE45B30;
  *(a1 + 1392) = xmmword_1BCE45B40;
  *(a1 + 1408) = xmmword_1BCE45B50;
  *(a1 + 1424) = 0x3F99999A3ECCCCCDLL;
  *(a1 + 1432) = 1;
  *v2 = xmmword_1BCE3BFC0;
  *(a1 + 1456) = 0x41D3333341BD3333;
  *(a1 + 1472) = _Q0;
  *(a1 + 1488) = _Q0;
  *(a1 + 1504) = 1097859072;
  *(a1 + 1512) = 0x736168506E6F6F6DLL;
  *(a1 + 1520) = 0xEA00000000003065;
  *(a1 + 1528) = 0;
  *(a1 + 1536) = _Q0;
  *(a1 + 1552) = xmmword_1BCE3C770;
  *(a1 + 1568) = 0x4248000042200000;
  *(a1 + 1584) = _Q0;
  *(a1 + 1600) = _Q0;
  __asm { FMOV            V3.2S, #-30.0 }

  *(a1 + 1616) = -_D3;
  *(a1 + 1624) = 0x40000000;
  *(a1 + 1632) = 0;
  *(a1 + 1628) = 0;
  *(v2 + 198) = xmmword_1BCE3E560;
  *(a1 + 1650) = 1;
  *(a1 + 1652) = 0;
  *(a1 + 1656) = 0;
  *(a1 + 1657) = v13;
  *(a1 + 1659) = v14;
  *(a1 + 1660) = 1066611507;
  *(a1 + 1664) = 0x40C0000040A00000;
  *(a1 + 1672) = 3;
  *(a1 + 1680) = xmmword_1BCE3C000;
  *(a1 + 1696) = xmmword_1BCE3C010;
  *(a1 + 1712) = xmmword_1BCE3C020;
  *(a1 + 1728) = 0x3F0000003EB33333;
  *(a1 + 1736) = 0x3E800000453B8000;
  *(a1 + 1744) = 0u;
  *(a1 + 1760) = 1;
  *(a1 + 1776) = xmmword_1BCE3C830;
  *(a1 + 1792) = xmmword_1BCE45B60;
  *(a1 + 1808) = xmmword_1BCE3C7A0;
  *(a1 + 1824) = 1;
  *(a1 + 1828) = xmmword_1BCE3C7B0;
  *(a1 + 1844) = 1036831949;
  *(a1 + 1848) = 0x4100000041200000;
  *(a1 + 1856) = 3;
  *(a1 + 1864) = 1041865114;
  *(a1 + 1872) = 0x400AE1483F970A3DLL;
  *(a1 + 1880) = 1109917696;
  *(a1 + 1888) = xmmword_1BCE3C7C0;
  *(a1 + 1904) = 0x3E4CCCCD40A00000;
  *(a1 + 1912) = 1101004800;
  *(a1 + 1920) = 1;
  *(a1 + 1928) = 1107296256;
  *(a1 + 1936) = _Q0;
  *(a1 + 1952) = 1065353216;
  *(a1 + 1960) = 0x420C000041C80000;
  *(a1 + 1968) = xmmword_1BCE3C7D0;
  *(a1 + 1984) = 0x3F80000000000000;
  *(a1 + 1992) = 1061158912;
  *(a1 + 2000) = 0x3F6666663E4CCCCDLL;
  *(a1 + 2008) = 0x3F6666663F333333;
  *(a1 + 2016) = xmmword_1BCE3C7E0;
  *(a1 + 2096) = 0u;
  *(a1 + 2080) = 0u;
  *(a1 + 2064) = 0u;
  *(a1 + 2048) = 0u;
  *(a1 + 2032) = 0u;
  *(a1 + 2112) = 1056964608;
  *(a1 + 2120) = 0x3E4CCCCD3DCCCCCDLL;
  *(a1 + 2128) = 0x400000003F800000;
  *(a1 + 2136) = 0x4040000040000000;
  *(a1 + 2144) = -1046478848;
  *(a1 + 2160) = _Q0;
  *(a1 + 2176) = _Q0;
  *(a1 + 2192) = 1061997773;
  *(a1 + 2200) = 10;
  *(a1 + 2208) = 0x417D020C3F4CCCCDLL;
  *(a1 + 2224) = xmmword_1BCE3C7F0;
  *(a1 + 2240) = xmmword_1BCE3C800;
  result = 0.0000276453247;
  *(a1 + 2256) = xmmword_1BCE45B70;
  *(a1 + 2304) = 0;
  *(a1 + 2288) = 0u;
  *(a1 + 2272) = 0u;
  *(a1 + 2312) = v4;
  *(a1 + 2320) = v12;
  return result;
}

__n128 sub_1BCA6B2E0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07858);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BCE3C820;
  *(v0 + 32) = 0xC056800000000000;
  *(v0 + 40) = 0;
  *(v0 + 48) = xmmword_1BCE3C830;
  *(v0 + 64) = 0x432A000042480000;
  *(v0 + 72) = 1040242952;
  *(v0 + 80) = xmmword_1BCE45B80;
  *(v0 + 96) = xmmword_1BCE3D340;
  *(v0 + 112) = xmmword_1BCE3C860;
  *(v0 + 128) = xmmword_1BCE3C870;
  *(v0 + 144) = xmmword_1BCE3C880;
  *(v0 + 160) = xmmword_1BCE3C890;
  *(v0 + 176) = xmmword_1BCE3C8A0;
  *(v0 + 192) = xmmword_1BCE3C8B0;
  __asm { FMOV            V19.2D, #0.5 }

  *(v0 + 208) = _Q19;
  *(v0 + 224) = xmmword_1BCE3D910;
  __asm { FMOV            V0.2D, #1.0 }

  *(v0 + 240) = result;
  *(v0 + 256) = result;
  *(v0 + 272) = result;
  *(v0 + 288) = result;
  *(v0 + 304) = result;
  *(v0 + 320) = xmmword_1BCE3C8C0;
  *(v0 + 336) = xmmword_1BCE3C8F0;
  *(v0 + 352) = result;
  *(v0 + 368) = xmmword_1BCE3C900;
  *(v0 + 384) = 0x3F3333333F800000;
  *(v0 + 392) = 0x3FF0000000000000;
  *(v0 + 400) = result;
  *(v0 + 416) = 0;
  *(v0 + 424) = 1065353216;
  *(v0 + 432) = result;
  *(v0 + 448) = result;
  *(v0 + 464) = result;
  *(v0 + 480) = result;
  *(v0 + 496) = result;
  *(v0 + 512) = result;
  *(v0 + 528) = result;
  *(v0 + 544) = result;
  *(v0 + 560) = result;
  *(v0 + 576) = result;
  *(v0 + 592) = result;
  *(v0 + 608) = result;
  *(v0 + 624) = result;
  *(v0 + 640) = result;
  *(v0 + 656) = result;
  *(v0 + 672) = result;
  *(v0 + 688) = result;
  *(v0 + 704) = result;
  *(v0 + 720) = result;
  *(v0 + 736) = result;
  *(v0 + 752) = result;
  *(v0 + 768) = result;
  *(v0 + 784) = result;
  *(v0 + 800) = result;
  *(v0 + 816) = result;
  *(v0 + 832) = result;
  *(v0 + 848) = result;
  *(v0 + 864) = result;
  *(v0 + 880) = result;
  *(v0 + 896) = result;
  *(v0 + 912) = result;
  *(v0 + 928) = result;
  *(v0 + 944) = result;
  *(v0 + 960) = result;
  *(v0 + 976) = result;
  *(v0 + 992) = result;
  *(v0 + 1008) = result;
  *(v0 + 1024) = result;
  *(v0 + 1040) = result;
  *(v0 + 1056) = result;
  *(v0 + 1072) = vdupq_n_s64(0x3FCF82F740000000uLL);
  *(v0 + 1088) = xmmword_1BCE3C910;
  *(v0 + 1104) = xmmword_1BCE3C920;
  *(v0 + 1120) = xmmword_1BCE3C930;
  *(v0 + 1136) = result;
  *(v0 + 1152) = result;
  *(v0 + 1168) = 0x4170000000000000;
  *(v0 + 1176) = 0x3FF0000000000000;
  *(v0 + 1184) = result;
  *(v0 + 1200) = result;
  *(v0 + 1216) = result;
  *(v0 + 1232) = 0x3FF0000000000000;
  *(v0 + 1248) = 0xC04E000000000000;
  *(v0 + 1256) = 0;
  *(v0 + 1257) = *v10;
  *(v0 + 1260) = *&v10[3];
  *(v0 + 1264) = xmmword_1BCE3C830;
  *(v0 + 1280) = 0x432A000042480000;
  *(v0 + 1288) = 1040242952;
  *(v0 + 1296) = xmmword_1BCE3C840;
  *(v0 + 1312) = xmmword_1BCE3C850;
  *(v0 + 1328) = xmmword_1BCE3C860;
  *(v0 + 1344) = xmmword_1BCE3C870;
  *(v0 + 1360) = xmmword_1BCE3C880;
  *(v0 + 1376) = xmmword_1BCE3C890;
  *(v0 + 1392) = xmmword_1BCE3C8A0;
  *(v0 + 1408) = xmmword_1BCE3C8B0;
  *(v0 + 1424) = _Q19;
  *(v0 + 1440) = xmmword_1BCE3D910;
  *(v0 + 1456) = result;
  *(v0 + 1472) = result;
  *(v0 + 1488) = result;
  *(v0 + 1504) = result;
  *(v0 + 1520) = result;
  *(v0 + 1536) = xmmword_1BCE3C8C0;
  *(v0 + 1552) = xmmword_1BCE3C8F0;
  *(v0 + 1568) = result;
  *(v0 + 1584) = xmmword_1BCE3C900;
  *(v0 + 1600) = 0x3F3333333F800000;
  *(v0 + 1608) = 0x3FF0000000000000;
  *(v0 + 1616) = result;
  *(v0 + 1632) = 0;
  *(v0 + 1640) = 1065353216;
  *(v0 + 1648) = result;
  *(v0 + 1664) = result;
  *(v0 + 1680) = result;
  *(v0 + 1696) = result;
  *(v0 + 1712) = result;
  *(v0 + 1728) = result;
  *(v0 + 1744) = result;
  *(v0 + 1760) = result;
  *(v0 + 1776) = result;
  *(v0 + 1792) = result;
  *(v0 + 1808) = result;
  *(v0 + 1824) = result;
  *(v0 + 1840) = result;
  *(v0 + 1856) = result;
  *(v0 + 1872) = result;
  *(v0 + 1888) = result;
  *(v0 + 1904) = result;
  *(v0 + 1920) = result;
  *(v0 + 1936) = result;
  *(v0 + 1952) = result;
  *(v0 + 1968) = result;
  *(v0 + 1984) = result;
  *(v0 + 2000) = result;
  *(v0 + 2016) = result;
  *(v0 + 2032) = result;
  *(v0 + 2048) = result;
  *(v0 + 2064) = result;
  *(v0 + 2080) = result;
  *(v0 + 2096) = result;
  *(v0 + 2112) = result;
  *(v0 + 2128) = result;
  *(v0 + 2144) = result;
  *(v0 + 2160) = result;
  *(v0 + 2176) = result;
  *(v0 + 2192) = result;
  *(v0 + 2208) = result;
  *(v0 + 2224) = result;
  *(v0 + 2240) = result;
  *(v0 + 2256) = result;
  *(v0 + 2272) = result;
  *(v0 + 2288) = vdupq_n_s64(0x3FCF6CD7E0000000uLL);
  *(v0 + 2304) = xmmword_1BCE3C940;
  *(v0 + 2320) = xmmword_1BCE3C950;
  *(v0 + 2336) = xmmword_1BCE3C960;
  *(v0 + 2352) = result;
  *(v0 + 2368) = result;
  *(v0 + 2384) = 0x4170000000000000;
  *(v0 + 2392) = 0x3FF0000000000000;
  *(v0 + 2400) = result;
  *(v0 + 2416) = result;
  *(v0 + 2432) = result;
  *(v0 + 2448) = 0x3FF0000000000000;
  *(v0 + 2464) = 0xC028000000000000;
  *(v0 + 2472) = 0;
  *(v0 + 2473) = *v11;
  *(v0 + 2476) = *&v11[3];
  *(v0 + 2480) = xmmword_1BCE3C780;
  *(v0 + 2496) = 0x4396000042C80000;
  *(v0 + 2504) = 1036831949;
  *(v0 + 2512) = xmmword_1BCE3C970;
  *(v0 + 2528) = result;
  *(v0 + 2544) = xmmword_1BCE3C980;
  *(v0 + 2560) = xmmword_1BCE3C990;
  *(v0 + 2576) = xmmword_1BCE3C9A0;
  *(v0 + 2592) = result;
  *(v0 + 2608) = xmmword_1BCE3C9B0;
  *(v0 + 2624) = xmmword_1BCE3C8C0;
  *(v0 + 2640) = _Q19;
  *(v0 + 2656) = xmmword_1BCE3DCB0;
  *(v0 + 2672) = result;
  *(v0 + 2688) = result;
  *(v0 + 2704) = xmmword_1BCE3D3C0;
  *(v0 + 2720) = xmmword_1BCE3D3D0;
  *(v0 + 2736) = xmmword_1BCE3C9E0;
  *(v0 + 2752) = xmmword_1BCE3C8C0;
  *(v0 + 2768) = xmmword_1BCE3C9F0;
  *(v0 + 2784) = xmmword_1BCE3CA00;
  *(v0 + 2800) = xmmword_1BCE3CA10;
  *(v0 + 2816) = 0x3F3333333F4CCCCDLL;
  *(v0 + 2824) = 0x3FF0000000000000;
  *(v0 + 2832) = result;
  *(v0 + 2848) = 0;
  *(v0 + 2856) = 1065353216;
  *(v0 + 2864) = result;
  *(v0 + 2880) = result;
  *(v0 + 2896) = result;
  *(v0 + 2912) = result;
  *(v0 + 2928) = result;
  *(v0 + 2944) = result;
  *(v0 + 2960) = result;
  *(v0 + 2976) = result;
  *(v0 + 2992) = result;
  *(v0 + 3008) = result;
  *(v0 + 3024) = result;
  *(v0 + 3040) = result;
  *(v0 + 3056) = result;
  *(v0 + 3072) = result;
  *(v0 + 3088) = result;
  *(v0 + 3104) = result;
  *(v0 + 3120) = result;
  *(v0 + 3136) = result;
  *(v0 + 3152) = result;
  *(v0 + 3168) = result;
  *(v0 + 3184) = result;
  *(v0 + 3200) = result;
  *(v0 + 3216) = result;
  *(v0 + 3232) = result;
  *(v0 + 3248) = result;
  *(v0 + 3264) = result;
  *(v0 + 3280) = result;
  *(v0 + 3296) = result;
  *(v0 + 3312) = result;
  *(v0 + 3328) = result;
  *(v0 + 3344) = result;
  *(v0 + 3360) = result;
  *(v0 + 3376) = result;
  *(v0 + 3392) = result;
  *(v0 + 3408) = result;
  *(v0 + 3424) = result;
  *(v0 + 3440) = result;
  *(v0 + 3456) = result;
  *(v0 + 3472) = result;
  *(v0 + 3488) = result;
  *(v0 + 3504) = vdupq_n_s64(0x3FCF992720000000uLL);
  *(v0 + 3520) = xmmword_1BCE3CA20;
  *(v0 + 3536) = xmmword_1BCE3CA30;
  *(v0 + 3552) = xmmword_1BCE3CA40;
  *(v0 + 3568) = result;
  *(v0 + 3584) = result;
  *(v0 + 3600) = 0x4170000000000000;
  *(v0 + 3608) = 0x3FF0000000000000;
  *(v0 + 3616) = result;
  *(v0 + 3632) = result;
  *(v0 + 3648) = result;
  *(v0 + 3664) = 0x3FF0000000000000;
  *(v0 + 3680) = 0xC018000000000000;
  *(v0 + 3688) = 0;
  *(v0 + 3689) = *v12;
  *(v0 + 3692) = *&v12[3];
  *(v0 + 3696) = xmmword_1BCE3CA50;
  *(v0 + 4848) = result;
  *(v0 + 4905) = *v13;
  *(v0 + 4912) = xmmword_1BCE3CB30;
  *(v0 + 4928) = 0x44C8000044160000;
  *(v0 + 4936) = 1061997773;
  *(v0 + 4864) = result;
  *(v0 + 4880) = 0x3FF0000000000000;
  *(v0 + 4896) = 0;
  *(v0 + 4904) = 0;
  *(v0 + 4908) = *&v13[3];
  *(v0 + 4672) = result;
  *(v0 + 4688) = result;
  *(v0 + 4800) = result;
  *(v0 + 4816) = 0x4170000000000000;
  *(v0 + 4824) = 0x3FF0000000000000;
  *(v0 + 4832) = result;
  *(v0 + 4704) = result;
  *(v0 + 4768) = xmmword_1BCE3CB10;
  *(v0 + 4784) = result;
  *(v0 + 4720) = xmmword_1BCE3CB00;
  *(v0 + 4736) = xmmword_1BCE3CB10;
  *(v0 + 4752) = xmmword_1BCE3CB20;
  *(v0 + 4576) = result;
  *(v0 + 4592) = result;
  *(v0 + 4608) = result;
  *(v0 + 4624) = result;
  *(v0 + 4640) = result;
  *(v0 + 4656) = result;
  *(v0 + 4480) = result;
  *(v0 + 4496) = result;
  *(v0 + 4512) = result;
  *(v0 + 4528) = result;
  *(v0 + 4544) = result;
  *(v0 + 4560) = result;
  *(v0 + 4384) = result;
  *(v0 + 4400) = result;
  *(v0 + 4416) = result;
  *(v0 + 4432) = result;
  *(v0 + 4448) = result;
  *(v0 + 4464) = result;
  *(v0 + 4288) = result;
  *(v0 + 4304) = result;
  *(v0 + 4320) = result;
  *(v0 + 4336) = result;
  *(v0 + 4352) = result;
  *(v0 + 4368) = result;
  *(v0 + 4208) = result;
  *(v0 + 4224) = result;
  *(v0 + 4240) = result;
  *(v0 + 4256) = result;
  *(v0 + 4272) = result;
  *(v0 + 4128) = result;
  *(v0 + 4144) = result;
  *(v0 + 4160) = result;
  *(v0 + 4176) = result;
  *(v0 + 4192) = result;
  *(v0 + 3712) = 0x447A000044160000;
  *(v0 + 3936) = result;
  *(v0 + 4080) = result;
  *(v0 + 4096) = result;
  *(v0 + 4112) = result;
  *(v0 + 4016) = xmmword_1BCE3CAE0;
  *(v0 + 4064) = 0;
  *(v0 + 4072) = 0;
  *(v0 + 4032) = 1062836634;
  *(v0 + 4040) = 0x3FEFBFBFC0000000;
  *(v0 + 4048) = xmmword_1BCE3CAF0;
  *(v0 + 3952) = result;
  *(v0 + 3968) = xmmword_1BCE3C8C0;
  *(v0 + 3984) = xmmword_1BCE3CAD0;
  *(v0 + 4000) = xmmword_1BCE3CA00;
  *(v0 + 3720) = 1061997773;
  *(v0 + 3888) = result;
  *(v0 + 3904) = result;
  *(v0 + 3920) = result;
  *(v0 + 3728) = xmmword_1BCE3CA60;
  *(v0 + 3744) = result;
  *(v0 + 3872) = xmmword_1BCE3D960;
  *(v0 + 3840) = xmmword_1BCE3CAC0;
  *(v0 + 3856) = vdupq_n_s64(0x3FE88B6D00000000uLL);
  *(v0 + 3808) = xmmword_1BCE3CAA0;
  *(v0 + 3824) = xmmword_1BCE3CAB0;
  *(v0 + 3776) = xmmword_1BCE3CA80;
  *(v0 + 3792) = xmmword_1BCE3CA90;
  *(v0 + 3760) = xmmword_1BCE3CA70;
  *(v0 + 4944) = xmmword_1BCE3CB40;
  *(v0 + 4960) = xmmword_1BCE3CB50;
  *(v0 + 4976) = xmmword_1BCE3CB60;
  *(v0 + 4992) = xmmword_1BCE3CB70;
  *(v0 + 5008) = xmmword_1BCE45B90;
  *(v0 + 5024) = xmmword_1BCE45BA0;
  *(v0 + 5040) = result;
  *(v0 + 5168) = xmmword_1BCE3CBD0;
  *(v0 + 5184) = xmmword_1BCE3CBE0;
  *(v0 + 5232) = xmmword_1BCE3CC00;
  *(v0 + 5936) = xmmword_1BCE3CC10;
  *(v0 + 5968) = xmmword_1BCE3CC30;
  *(v0 + 5952) = xmmword_1BCE3CC20;
  *(v0 + 5984) = xmmword_1BCE3CC20;
  *(v0 + 6128) = xmmword_1BCE3CC40;
  *(v0 + 6144) = 0x44480000443B8000;
  *(v0 + 6160) = xmmword_1BCE3CC50;
  *(v0 + 6176) = xmmword_1BCE3CC60;
  *(v0 + 6192) = xmmword_1BCE3CC70;
  *(v0 + 6208) = xmmword_1BCE3CC80;
  *(v0 + 6224) = xmmword_1BCE3CC90;
  *(v0 + 6240) = xmmword_1BCE3CCA0;
  *(v0 + 6416) = xmmword_1BCE3CCD0;
  *(v0 + 6432) = xmmword_1BCE3CCE0;
  *(v0 + 6448) = xmmword_1BCE3CCF0;
  *(v0 + 6480) = xmmword_1BCE3CD00;
  *(v0 + 7152) = xmmword_1BCE3CD10;
  *(v0 + 7184) = xmmword_1BCE3CD30;
  *(v0 + 7168) = xmmword_1BCE3CD20;
  *(v0 + 7200) = xmmword_1BCE3CD20;
  *(v0 + 7344) = xmmword_1BCE3CD40;
  *(v0 + 7408) = xmmword_1BCE45BB0;
  *(v0 + 7440) = xmmword_1BCE45BC0;
  *(v0 + 7552) = result;
  *(v0 + 7456) = xmmword_1BCE3DEF0;
  *(v0 + 7632) = xmmword_1BCE3CD90;
  *(v0 + 7648) = xmmword_1BCE3CDA0;
  *(v0 + 7664) = xmmword_1BCE3CDB0;
  *(v0 + 7696) = xmmword_1BCE3CDC0;
  *(v0 + 8368) = xmmword_1BCE3CDD0;
  *(v0 + 8400) = xmmword_1BCE3CDE0;
  *(v0 + 8560) = xmmword_1BCE3CDF0;
  *(v0 + 9776) = xmmword_1BCE3CE40;
  *(v0 + 10992) = xmmword_1BCE3CE40;
  *(v0 + 9792) = 1148846080;
  *(v0 + 11008) = 1148846080;
  *(v0 + 8624) = xmmword_1BCE44780;
  *(v0 + 9840) = xmmword_1BCE44780;
  *(v0 + 11056) = xmmword_1BCE44780;
  *(v0 + 7424) = xmmword_1BCE3C9D0;
  *(v0 + 9856) = xmmword_1BCE3C9D0;
  *(v0 + 11072) = xmmword_1BCE3C9D0;
  *(v0 + 9872) = xmmword_1BCE3CE70;
  *(v0 + 11088) = xmmword_1BCE3CE70;
  *(v0 + 9888) = xmmword_1BCE3CE80;
  *(v0 + 11104) = xmmword_1BCE3CE80;
  v7 = vdupq_n_s32(0x3F666666u);
  *(v0 + 8880) = v7;
  *(v0 + 10096) = v7;
  *(v0 + 11312) = v7;
  *(v0 + 10816) = xmmword_1BCE447D0;
  *(v0 + 12032) = xmmword_1BCE447D0;
  *(v0 + 10800) = xmmword_1BCE447C0;
  *(v0 + 10832) = xmmword_1BCE447C0;
  *(v0 + 12016) = xmmword_1BCE447C0;
  *(v0 + 12048) = xmmword_1BCE447C0;
  *(v0 + 10848) = xmmword_1BCE447E0;
  *(v0 + 12064) = xmmword_1BCE447E0;
  *(v0 + 12208) = xmmword_1BCE3CEC0;
  *(v0 + 8576) = 0x41A00000447A0000;
  *(v0 + 12224) = 0x41A00000447A0000;
  v8 = vdupq_n_s64(0x3FECBCBCC0000000uLL);
  *(v0 + 7376) = v8;
  *(v0 + 8592) = v8;
  *(v0 + 9808) = v8;
  *(v0 + 11024) = v8;
  *(v0 + 12240) = v8;
  *(v0 + 7392) = xmmword_1BCE3CD50;
  *(v0 + 8608) = xmmword_1BCE3CD50;
  *(v0 + 9824) = xmmword_1BCE3CD50;
  *(v0 + 11040) = xmmword_1BCE3CD50;
  *(v0 + 12256) = xmmword_1BCE3CD50;
  *(v0 + 12272) = xmmword_1BCE3CED0;
  *(v0 + 12528) = xmmword_1BCE3CEF0;
  *(v0 + 8912) = xmmword_1BCE3CE10;
  *(v0 + 10128) = xmmword_1BCE3CE10;
  *(v0 + 11344) = xmmword_1BCE3CE10;
  *(v0 + 12560) = xmmword_1BCE3CE10;
  *(v0 + 9600) = xmmword_1BCE447A0;
  *(v0 + 13248) = xmmword_1BCE447A0;
  *(v0 + 9584) = xmmword_1BCE44790;
  *(v0 + 9616) = xmmword_1BCE44790;
  *(v0 + 13232) = xmmword_1BCE44790;
  *(v0 + 13264) = xmmword_1BCE44790;
  *(v0 + 9632) = xmmword_1BCE447B0;
  *(v0 + 13280) = xmmword_1BCE447B0;
  *(v0 + 13424) = xmmword_1BCE3CF00;
  *(v0 + 7360) = 1147207680;
  *(v0 + 13440) = 1147207680;
  *(v0 + 13456) = vdupq_n_s64(0x3FEC9CDC00000000uLL);
  *(v0 + 13472) = xmmword_1BCE3CF10;
  *(v0 + 13488) = xmmword_1BCE3CF20;
  *(v0 + 13504) = xmmword_1BCE3CF30;
  *(v0 + 13520) = xmmword_1BCE3CF40;
  *(v0 + 13536) = xmmword_1BCE3CF50;
  *(v0 + 6400) = xmmword_1BCE3CCC0;
  *(v0 + 7616) = xmmword_1BCE3CCC0;
  *(v0 + 8832) = xmmword_1BCE3CCC0;
  *(v0 + 10048) = xmmword_1BCE3CCC0;
  *(v0 + 12480) = xmmword_1BCE3CCC0;
  *(v0 + 13696) = xmmword_1BCE3CCC0;
  *(v0 + 13712) = xmmword_1BCE3CF60;
  *(v0 + 13744) = xmmword_1BCE3CF70;
  *(v0 + 13776) = xmmword_1BCE3CF80;
  *(v0 + 14448) = xmmword_1BCE3CEB0;
  *(v0 + 8384) = xmmword_1BCE3CBB0;
  *(v0 + 14464) = xmmword_1BCE3CBB0;
  *(v0 + 14480) = xmmword_1BCE3CF90;
  *(v0 + 8416) = xmmword_1BCE3CBC0;
  *(v0 + 14496) = xmmword_1BCE3CBC0;
  *(v0 + 14640) = xmmword_1BCE3CFA0;
  *(v0 + 14656) = 0x441EC000443B8000;
  *(v0 + 14672) = xmmword_1BCE3CFB0;
  *(v0 + 5056) = xmmword_1BCE3CBA0;
  *(v0 + 5072) = result;
  *(v0 + 5088) = xmmword_1BCE3DA70;
  *(v0 + 5104) = result;
  *(v0 + 5120) = result;
  *(v0 + 5136) = result;
  *(v0 + 5152) = result;
  *(v0 + 5200) = xmmword_1BCE3CBF0;
  *(v0 + 5216) = xmmword_1BCE3CA00;
  *(v0 + 5248) = 1063675494;
  *(v0 + 5256) = 0x3FF0000000000000;
  *(v0 + 5264) = result;
  *(v0 + 5280) = 0;
  *(v0 + 5288) = 0;
  *(v0 + 5296) = result;
  *(v0 + 5312) = result;
  *(v0 + 5328) = result;
  *(v0 + 5344) = result;
  *(v0 + 5360) = result;
  *(v0 + 5376) = result;
  *(v0 + 5392) = result;
  *(v0 + 5408) = result;
  *(v0 + 5424) = result;
  *(v0 + 5440) = result;
  *(v0 + 5456) = result;
  *(v0 + 5472) = result;
  *(v0 + 5488) = result;
  *(v0 + 5504) = result;
  *(v0 + 5520) = result;
  *(v0 + 5536) = result;
  *(v0 + 5552) = result;
  *(v0 + 5568) = result;
  *(v0 + 5584) = result;
  *(v0 + 5600) = result;
  *(v0 + 5616) = result;
  *(v0 + 5632) = result;
  *(v0 + 5648) = result;
  *(v0 + 5664) = result;
  *(v0 + 5680) = result;
  *(v0 + 5696) = result;
  *(v0 + 5712) = result;
  *(v0 + 5728) = result;
  *(v0 + 5744) = result;
  *(v0 + 5760) = result;
  *(v0 + 5776) = result;
  *(v0 + 5792) = result;
  *(v0 + 5808) = result;
  *(v0 + 5824) = result;
  *(v0 + 5840) = result;
  *(v0 + 5856) = result;
  *(v0 + 5872) = result;
  *(v0 + 5888) = result;
  *(v0 + 5904) = result;
  *(v0 + 5920) = result;
  *(v0 + 6000) = result;
  *(v0 + 6016) = result;
  *(v0 + 6032) = 0x4170000000000000;
  *(v0 + 6040) = 0x3FF0000000000000;
  *(v0 + 6048) = result;
  *(v0 + 6064) = result;
  *(v0 + 6080) = result;
  *(v0 + 6121) = *v14;
  *(v0 + 6096) = 0x3FF0000000000000;
  *(v0 + 6112) = 0x4017FFFFFFFFFFFALL;
  *(v0 + 6120) = 0;
  *(v0 + 6124) = *&v14[3];
  *(v0 + 6152) = 1060739482;
  *(v0 + 6256) = result;
  *(v0 + 6272) = result;
  *(v0 + 6288) = result;
  *(v0 + 6304) = xmmword_1BCE3DAE0;
  *(v0 + 6320) = result;
  *(v0 + 6336) = result;
  *(v0 + 6352) = result;
  *(v0 + 6368) = result;
  *(v0 + 6384) = xmmword_1BCE3CCB0;
  *(v0 + 6464) = 1063675494;
  *(v0 + 6472) = 0x3FEF857180000000;
  *(v0 + 6496) = 0x3FE0000000000000;
  *(v0 + 6504) = 0;
  *(v0 + 6512) = result;
  *(v0 + 6528) = result;
  *(v0 + 6544) = result;
  *(v0 + 6560) = result;
  *(v0 + 6576) = result;
  *(v0 + 6592) = result;
  *(v0 + 6608) = result;
  *(v0 + 6624) = result;
  *(v0 + 6640) = result;
  *(v0 + 6656) = result;
  *(v0 + 6672) = result;
  *(v0 + 6688) = result;
  *(v0 + 6704) = result;
  *(v0 + 6720) = result;
  *(v0 + 6736) = result;
  *(v0 + 6752) = result;
  *(v0 + 6768) = result;
  *(v0 + 6784) = result;
  *(v0 + 6800) = result;
  *(v0 + 6816) = result;
  *(v0 + 6832) = result;
  *(v0 + 6848) = result;
  *(v0 + 6864) = result;
  *(v0 + 6880) = result;
  *(v0 + 6896) = result;
  *(v0 + 6912) = result;
  *(v0 + 6928) = result;
  *(v0 + 6944) = result;
  *(v0 + 6960) = result;
  *(v0 + 6976) = result;
  *(v0 + 6992) = result;
  *(v0 + 7008) = result;
  *(v0 + 7024) = result;
  *(v0 + 7040) = result;
  *(v0 + 7056) = result;
  *(v0 + 7072) = result;
  *(v0 + 7088) = result;
  *(v0 + 7104) = result;
  *(v0 + 7120) = result;
  *(v0 + 7136) = result;
  *(v0 + 7216) = result;
  *(v0 + 7232) = result;
  *(v0 + 7248) = 0x4170000000000000;
  *(v0 + 7256) = 0x3FF0000000000000;
  *(v0 + 7264) = result;
  *(v0 + 7280) = result;
  *(v0 + 7296) = result;
  *(v0 + 7337) = *v15;
  *(v0 + 7312) = 0x3FF0000000000000;
  *(v0 + 7328) = 0x4027FFFFFFFFFFFALL;
  *(v0 + 7336) = 0;
  *(v0 + 7340) = *&v15[3];
  *(v0 + 7368) = 1059481190;
  *(v0 + 7472) = result;
  *(v0 + 7488) = result;
  *(v0 + 7504) = result;
  *(v0 + 7520) = xmmword_1BCE3DAE0;
  *(v0 + 7536) = result;
  *(v0 + 14688) = xmmword_1BCE3CFC0;
  *(v0 + 14704) = xmmword_1BCE3CFD0;
  *(v0 + 14720) = xmmword_1BCE3CFE0;
  *(v0 + 14736) = xmmword_1BCE3CFF0;
  *(v0 + 14752) = xmmword_1BCE3D000;
  *(v0 + 8736) = xmmword_1BCE3DAE0;
  *(v0 + 12384) = xmmword_1BCE3DAE0;
  *(v0 + 13600) = xmmword_1BCE3DAE0;
  *(v0 + 14816) = xmmword_1BCE3DAE0;
  *(v0 + 14864) = xmmword_1BCE3D010;
  *(v0 + 14896) = xmmword_1BCE3D020;
  *(v0 + 14912) = xmmword_1BCE3D030;
  *(v0 + 14928) = xmmword_1BCE3D040;
  *(v0 + 14960) = xmmword_1BCE3D050;
  *(v0 + 14992) = xmmword_1BCE3D060;
  *(v0 + 15664) = xmmword_1BCE3D070;
  *(v0 + 15680) = xmmword_1BCE3D080;
  *(v0 + 15696) = xmmword_1BCE3D090;
  *(v0 + 15712) = xmmword_1BCE3D0A0;
  *(v0 + 15856) = xmmword_1BCE3D0B0;
  *(v0 + 15872) = 0x449EC00044160000;
  *(v0 + 15888) = xmmword_1BCE3D0C0;
  *(v0 + 15904) = xmmword_1BCE3D0D0;
  *(v0 + 15920) = xmmword_1BCE3D0E0;
  *(v0 + 15936) = xmmword_1BCE3D0F0;
  *(v0 + 15952) = xmmword_1BCE3D100;
  *(v0 + 15968) = xmmword_1BCE3D110;
  *(v0 + 16000) = xmmword_1BCE3CBA0;
  *(v0 + 9952) = xmmword_1BCE3DA70;
  *(v0 + 11168) = xmmword_1BCE3DA70;
  *(v0 + 16032) = xmmword_1BCE3DA70;
  *(v0 + 7600) = xmmword_1BCE3CCB0;
  *(v0 + 8816) = xmmword_1BCE3CCB0;
  *(v0 + 8848) = xmmword_1BCE3CCB0;
  *(v0 + 10032) = xmmword_1BCE3CCB0;
  *(v0 + 10064) = xmmword_1BCE3CCB0;
  *(v0 + 11248) = xmmword_1BCE3CCB0;
  *(v0 + 11280) = xmmword_1BCE3CCB0;
  *(v0 + 12464) = xmmword_1BCE3CCB0;
  *(v0 + 16080) = xmmword_1BCE3CCB0;
  *(v0 + 16112) = xmmword_1BCE3D120;
  *(v0 + 16128) = xmmword_1BCE3D130;
  *(v0 + 16144) = xmmword_1BCE3CBF0;
  *(v0 + 16176) = xmmword_1BCE3D140;
  *(v0 + 7680) = 1063675494;
  *(v0 + 8896) = 1063675494;
  *(v0 + 10112) = 1063675494;
  *(v0 + 11328) = 1063675494;
  *(v0 + 12544) = 1063675494;
  *(v0 + 13760) = 1063675494;
  *(v0 + 14976) = 1063675494;
  *(v0 + 16192) = 1063675494;
  *(v0 + 16208) = xmmword_1BCE3D150;
  *(v0 + 16880) = xmmword_1BCE3D160;
  *(v0 + 16896) = xmmword_1BCE3D170;
  *(v0 + 16912) = xmmword_1BCE3D180;
  *(v0 + 16928) = xmmword_1BCE3D190;
  *(v0 + 17072) = xmmword_1BCE3CB30;
  *(v0 + 17088) = 0x4483CC9D445C8321;
  *(v0 + 17104) = xmmword_1BCE3D1A0;
  *(v0 + 17120) = xmmword_1BCE3D1B0;
  *(v0 + 17136) = xmmword_1BCE3D1C0;
  *(v0 + 17152) = xmmword_1BCE3D1D0;
  *(v0 + 17168) = xmmword_1BCE3D1E0;
  *(v0 + 17184) = xmmword_1BCE3D1F0;
  *(v0 + 17200) = xmmword_1BCE3D200;
  *(v0 + 17216) = xmmword_1BCE3CAC0;
  *(v0 + 17232) = vdupq_n_s64(0x3FE8F90420000000uLL);
  *(v0 + 17248) = xmmword_1BCE3DC60;
  *(v0 + 17360) = xmmword_1BCE3CAD0;
  *(v0 + 17392) = xmmword_1BCE3D210;
  *(v0 + 17408) = 1062836634;
  *(v0 + 17424) = xmmword_1BCE3D220;
  *(v0 + 18096) = xmmword_1BCE3D230;
  *(v0 + 18112) = xmmword_1BCE3D240;
  *(v0 + 18128) = xmmword_1BCE3D250;
  *(v0 + 18144) = xmmword_1BCE3D260;
  *(v0 + 18288) = xmmword_1BCE3C780;
  *(v0 + 18304) = 0x4396000042C80000;
  *(v0 + 18320) = xmmword_1BCE3D270;
  *(v0 + 18352) = xmmword_1BCE3D280;
  *(v0 + 18368) = xmmword_1BCE3D290;
  *(v0 + 18384) = xmmword_1BCE3C9A0;
  *(v0 + 18416) = xmmword_1BCE3D2A0;
  *(v0 + 18464) = xmmword_1BCE3DCB0;
  *(v0 + 18512) = xmmword_1BCE3D2B0;
  *(v0 + 18528) = xmmword_1BCE3D2C0;
  *(v0 + 18544) = xmmword_1BCE3D2D0;
  *(v0 + 18576) = xmmword_1BCE3C9F0;
  *(v0 + 13728) = xmmword_1BCE3CA00;
  *(v0 + 14944) = xmmword_1BCE3CA00;
  *(v0 + 16160) = xmmword_1BCE3CA00;
  *(v0 + 17376) = xmmword_1BCE3CA00;
  *(v0 + 18592) = xmmword_1BCE3CA00;
  *(v0 + 18608) = xmmword_1BCE3CA10;
  *(v0 + 18624) = 0x3F3333333F4CCCCDLL;
  *(v0 + 19312) = xmmword_1BCE3D2E0;
  *(v0 + 19344) = xmmword_1BCE3D2F0;
  *(v0 + 19632) = xmmword_1BCE3E590;
  __asm { FMOV            V1.2D, #0.25 }

  *(v0 + 20528) = _Q1;
  *(v0 + 20560) = xmmword_1BCE3D300;
  *(v0 + 19504) = xmmword_1BCE3C830;
  *(v0 + 20720) = xmmword_1BCE3C830;
  *(v0 + 19520) = 0x432A000042480000;
  *(v0 + 20736) = 0x432A000042480000;
  *(v0 + 19536) = xmmword_1BCE3C840;
  *(v0 + 20752) = xmmword_1BCE3C840;
  *(v0 + 19552) = xmmword_1BCE3C850;
  *(v0 + 20768) = xmmword_1BCE3C850;
  *(v0 + 19568) = xmmword_1BCE3C860;
  *(v0 + 20784) = xmmword_1BCE3C860;
  *(v0 + 19584) = xmmword_1BCE3C870;
  *(v0 + 20800) = xmmword_1BCE3C870;
  *(v0 + 19600) = xmmword_1BCE3C880;
  *(v0 + 20816) = xmmword_1BCE3C880;
  *(v0 + 19616) = xmmword_1BCE3C890;
  *(v0 + 20832) = xmmword_1BCE3C890;
  *(v0 + 20848) = xmmword_1BCE3C8A0;
  *(v0 + 19648) = xmmword_1BCE3C8B0;
  *(v0 + 20864) = xmmword_1BCE3C8B0;
  *(v0 + 18448) = _Q19;
  *(v0 + 19664) = _Q19;
  *(v0 + 20880) = _Q19;
  *(v0 + 19680) = xmmword_1BCE3D910;
  *(v0 + 20896) = xmmword_1BCE3D910;
  *(v0 + 11264) = xmmword_1BCE3C8C0;
  *(v0 + 17344) = xmmword_1BCE3C8C0;
  *(v0 + 18432) = xmmword_1BCE3C8C0;
  *(v0 + 18560) = xmmword_1BCE3C8C0;
  *(v0 + 19776) = xmmword_1BCE3C8C0;
  *(v0 + 20992) = xmmword_1BCE3C8C0;
  *(v0 + 19792) = xmmword_1BCE3C8F0;
  *(v0 + 21008) = xmmword_1BCE3C8F0;
  *(v0 + 19824) = xmmword_1BCE3C900;
  *(v0 + 19840) = 0x3F3333333F800000;
  *(v0 + 21040) = xmmword_1BCE3C900;
  *(v0 + 21056) = 0x3F3333333F800000;
  *(v0 + 21744) = vdupq_n_s64(0x3FCFEB6B80000000uLL);
  *(v0 + 19328) = xmmword_1BCE3C910;
  *(v0 + 19360) = xmmword_1BCE3C910;
  *(v0 + 20544) = xmmword_1BCE3C910;
  *(v0 + 20576) = xmmword_1BCE3C910;
  *(v0 + 21760) = xmmword_1BCE3C910;
  *(v0 + 21776) = xmmword_1BCE3D310;
  *(v0 + 21792) = xmmword_1BCE3D320;
  *(v0 + 8464) = 0x4170000000000000;
  *(v0 + 9680) = 0x4170000000000000;
  *(v0 + 10896) = 0x4170000000000000;
  *(v0 + 12112) = 0x4170000000000000;
  *(v0 + 13328) = 0x4170000000000000;
  *(v0 + 14544) = 0x4170000000000000;
  *(v0 + 15760) = 0x4170000000000000;
  *(v0 + 16976) = 0x4170000000000000;
  *(v0 + 18192) = 0x4170000000000000;
  *(v0 + 19408) = 0x4170000000000000;
  *(v0 + 20624) = 0x4170000000000000;
  *(v0 + 21840) = 0x4170000000000000;
  *(v0 + 7568) = result;
  *(v0 + 7584) = result;
  *(v0 + 7728) = result;
  *(v0 + 7744) = result;
  *(v0 + 7760) = result;
  *(v0 + 7776) = result;
  *(v0 + 7792) = result;
  *(v0 + 7808) = result;
  *(v0 + 7824) = result;
  *(v0 + 7840) = result;
  *(v0 + 7856) = result;
  *(v0 + 7872) = result;
  *(v0 + 18080) = result;
  *(v0 + 17984) = result;
  *(v0 + 18000) = result;
  *(v0 + 18016) = result;
  *(v0 + 18032) = result;
  *(v0 + 18048) = result;
  *(v0 + 18064) = result;
  *(v0 + 17888) = result;
  *(v0 + 17904) = result;
  *(v0 + 17920) = result;
  *(v0 + 17936) = result;
  *(v0 + 17952) = result;
  *(v0 + 17968) = result;
  *(v0 + 17792) = result;
  *(v0 + 17808) = result;
  *(v0 + 17824) = result;
  *(v0 + 17840) = result;
  *(v0 + 17856) = result;
  *(v0 + 17872) = result;
  *(v0 + 17696) = result;
  *(v0 + 17712) = result;
  *(v0 + 17728) = result;
  *(v0 + 17744) = result;
  *(v0 + 17760) = result;
  *(v0 + 17776) = result;
  *(v0 + 17600) = result;
  *(v0 + 17616) = result;
  *(v0 + 17632) = result;
  *(v0 + 17648) = result;
  *(v0 + 17664) = result;
  *(v0 + 17680) = result;
  *(v0 + 17504) = result;
  *(v0 + 17520) = result;
  *(v0 + 17536) = result;
  *(v0 + 17552) = result;
  *(v0 + 17568) = result;
  *(v0 + 17584) = result;
  *(v0 + 7888) = result;
  *(v0 + 7904) = result;
  *(v0 + 17456) = result;
  *(v0 + 17472) = result;
  *(v0 + 17488) = result;
  *(v0 + 7920) = result;
  *(v0 + 7936) = result;
  *(v0 + 17416) = 0x3FEF23CF40000000;
  *(v0 + 17440) = 0;
  *(v0 + 17448) = 665496235;
  *(v0 + 7952) = result;
  *(v0 + 7968) = result;
  *(v0 + 7984) = result;
  *(v0 + 17296) = result;
  *(v0 + 17312) = result;
  *(v0 + 17328) = result;
  *(v0 + 8000) = result;
  *(v0 + 8016) = result;
  *(v0 + 8032) = result;
  *(v0 + 8048) = result;
  *(v0 + 17264) = result;
  *(v0 + 17280) = result;
  *(v0 + 8064) = result;
  *(v0 + 8080) = result;
  *(v0 + 8096) = result;
  *(v0 + 8112) = result;
  *(v0 + 8128) = result;
  *(v0 + 8144) = result;
  *(v0 + 8160) = result;
  *(v0 + 8176) = result;
  *(v0 + 16992) = result;
  *(v0 + 17065) = *v23;
  *(v0 + 17068) = *&v23[3];
  *(v0 + 17096) = 1050388079;
  *(v0 + 17008) = result;
  *(v0 + 17024) = result;
  *(v0 + 17040) = 0x3FF0000000000000;
  *(v0 + 17056) = 0xC017FFFFFFFFFFE8;
  *(v0 + 17064) = 1;
  *(v0 + 0x2000) = result;
  *(v0 + 8208) = result;
  *(v0 + 8224) = result;
  *(v0 + 16944) = result;
  *(v0 + 16960) = result;
  *(v0 + 16984) = 0x3FF0000000000000;
  *(v0 + 8240) = result;
  *(v0 + 8256) = result;
  *(v0 + 16816) = result;
  *(v0 + 16832) = result;
  *(v0 + 16848) = result;
  *(v0 + 16864) = result;
  *(v0 + 16720) = result;
  *(v0 + 16736) = result;
  *(v0 + 16752) = result;
  *(v0 + 16768) = result;
  *(v0 + 16784) = result;
  *(v0 + 16800) = result;
  *(v0 + 16624) = result;
  *(v0 + 16640) = result;
  *(v0 + 16656) = result;
  *(v0 + 16672) = result;
  *(v0 + 16688) = result;
  *(v0 + 16704) = result;
  *(v0 + 16528) = result;
  *(v0 + 16544) = result;
  *(v0 + 16560) = result;
  *(v0 + 16576) = result;
  *(v0 + 16592) = result;
  *(v0 + 16608) = result;
  *(v0 + 16432) = result;
  *(v0 + 16448) = result;
  *(v0 + 16464) = result;
  *(v0 + 16480) = result;
  *(v0 + 16496) = result;
  *(v0 + 16512) = result;
  *(v0 + 16336) = result;
  *(v0 + 16352) = result;
  *(v0 + 16368) = result;
  *(v0 + 0x4000) = result;
  *(v0 + 16400) = result;
  *(v0 + 16416) = result;
  *(v0 + 8272) = result;
  *(v0 + 16256) = result;
  *(v0 + 16272) = result;
  *(v0 + 16288) = result;
  *(v0 + 16304) = result;
  *(v0 + 16320) = result;
  *(v0 + 8288) = result;
  *(v0 + 16200) = 0x3FEE6AC340000000;
  *(v0 + 16224) = 0;
  *(v0 + 16232) = 0;
  *(v0 + 16240) = result;
  *(v0 + 8304) = result;
  *(v0 + 8320) = result;
  *(v0 + 8336) = result;
  *(v0 + 8352) = result;
  *(v0 + 8432) = result;
  *(v0 + 16096) = result;
  *(v0 + 8448) = result;
  *(v0 + 8472) = 0x3FF0000000000000;
  *(v0 + 8480) = result;
  *(v0 + 16016) = result;
  *(v0 + 16048) = result;
  *(v0 + 16064) = result;
  *(v0 + 8496) = result;
  *(v0 + 8512) = result;
  *(v0 + 8528) = 0x3FF0000000000000;
  *(v0 + 8544) = 0x4032000000000001;
  *(v0 + 15984) = result;
  *(v0 + 8552) = 0;
  *(v0 + 8553) = *v16;
  *(v0 + 8556) = *&v16[3];
  *(v0 + 8584) = 1061158912;
  *(v0 + 8640) = result;
  *(v0 + 15848) = 1;
  *(v0 + 15849) = *v22;
  *(v0 + 15852) = *&v22[3];
  *(v0 + 15880) = 1061997773;
  *(v0 + 15768) = 0x3FF0000000000000;
  *(v0 + 15776) = result;
  *(v0 + 15792) = result;
  *(v0 + 15808) = result;
  *(v0 + 15824) = 0x3FF0000000000000;
  *(v0 + 15840) = 0;
  *(v0 + 8656) = result;
  *(v0 + 8672) = result;
  *(v0 + 8688) = result;
  *(v0 + 8704) = result;
  *(v0 + 15728) = result;
  *(v0 + 15744) = result;
  *(v0 + 8720) = result;
  *(v0 + 15584) = result;
  *(v0 + 15600) = result;
  *(v0 + 15616) = result;
  *(v0 + 15632) = result;
  *(v0 + 15648) = result;
  *(v0 + 15488) = result;
  *(v0 + 15504) = result;
  *(v0 + 15520) = result;
  *(v0 + 15536) = result;
  *(v0 + 15552) = result;
  *(v0 + 15568) = result;
  *(v0 + 15392) = result;
  *(v0 + 15408) = result;
  *(v0 + 15424) = result;
  *(v0 + 15440) = result;
  *(v0 + 15456) = result;
  *(v0 + 15472) = result;
  *(v0 + 15296) = result;
  *(v0 + 15312) = result;
  *(v0 + 15328) = result;
  *(v0 + 15344) = result;
  *(v0 + 15360) = result;
  *(v0 + 15376) = result;
  *(v0 + 15200) = result;
  *(v0 + 15216) = result;
  *(v0 + 15232) = result;
  *(v0 + 15248) = result;
  *(v0 + 15264) = result;
  *(v0 + 15280) = result;
  *(v0 + 15104) = result;
  *(v0 + 15120) = result;
  *(v0 + 15136) = result;
  *(v0 + 15152) = result;
  *(v0 + 15168) = result;
  *(v0 + 15184) = result;
  *(v0 + 8752) = result;
  *(v0 + 15024) = result;
  *(v0 + 15040) = result;
  *(v0 + 15056) = result;
  *(v0 + 15072) = result;
  *(v0 + 15088) = result;
  *(v0 + 8768) = result;
  *(v0 + 8784) = result;
  *(v0 + 14984) = 0x3FEDEF5480000000;
  *(v0 + 15008) = 0x3FE0000000000000;
  *(v0 + 15016) = 0;
  *(v0 + 8800) = result;
  *(v0 + 8864) = result;
  *(v0 + 8904) = 0x3FEB9B9BC0000000;
  *(v0 + 8928) = 0x3FF0000000000000;
  *(v0 + 14880) = result;
  *(v0 + 8936) = 0;
  *(v0 + 8944) = result;
  *(v0 + 14784) = result;
  *(v0 + 14800) = result;
  *(v0 + 14832) = result;
  *(v0 + 14848) = result;
  *(v0 + 8960) = result;
  *(v0 + 8976) = result;
  *(v0 + 8992) = result;
  *(v0 + 9008) = result;
  *(v0 + 9024) = result;
  *(v0 + 14768) = result;
  *(v0 + 9040) = result;
  *(v0 + 9056) = result;
  *(v0 + 14624) = 0x4018000000000010;
  *(v0 + 14632) = 1;
  *(v0 + 14633) = *v21;
  *(v0 + 14636) = *&v21[3];
  *(v0 + 14664) = 1061158912;
  *(v0 + 9072) = result;
  *(v0 + 14552) = 0x3FF0000000000000;
  *(v0 + 14560) = result;
  *(v0 + 14576) = result;
  *(v0 + 14592) = result;
  *(v0 + 14608) = 0x3FF0000000000000;
  *(v0 + 9088) = result;
  *(v0 + 9104) = result;
  *(v0 + 9120) = result;
  *(v0 + 9136) = result;
  *(v0 + 14512) = result;
  *(v0 + 14528) = result;
  *(v0 + 14352) = result;
  *(v0 + 14368) = result;
  *(v0 + 14384) = result;
  *(v0 + 14400) = result;
  *(v0 + 14416) = result;
  *(v0 + 14432) = result;
  *(v0 + 14256) = result;
  *(v0 + 14272) = result;
  *(v0 + 14288) = result;
  *(v0 + 14304) = result;
  *(v0 + 14320) = result;
  *(v0 + 14336) = result;
  *(v0 + 14160) = result;
  *(v0 + 14176) = result;
  *(v0 + 14192) = result;
  *(v0 + 14208) = result;
  *(v0 + 14224) = result;
  *(v0 + 14240) = result;
  *(v0 + 14064) = result;
  *(v0 + 14080) = result;
  *(v0 + 14096) = result;
  *(v0 + 14112) = result;
  *(v0 + 14128) = result;
  *(v0 + 14144) = result;
  *(v0 + 13968) = result;
  *(v0 + 13984) = result;
  *(v0 + 14000) = result;
  *(v0 + 14016) = result;
  *(v0 + 14032) = result;
  *(v0 + 14048) = result;
  *(v0 + 13872) = result;
  *(v0 + 13888) = result;
  *(v0 + 13904) = result;
  *(v0 + 13920) = result;
  *(v0 + 13936) = result;
  *(v0 + 13952) = result;
  *(v0 + 9152) = result;
  *(v0 + 13800) = 0;
  *(v0 + 13808) = result;
  *(v0 + 13824) = result;
  *(v0 + 13840) = result;
  *(v0 + 13856) = result;
  *(v0 + 9168) = result;
  *(v0 + 9184) = result;
  *(v0 + 9200) = result;
  *(v0 + 13768) = 0x3FED73E5C0000000;
  *(v0 + 13792) = 0x3FF0000000000000;
  *(v0 + 9216) = result;
  *(v0 + 9232) = result;
  *(v0 + 13632) = result;
  *(v0 + 13648) = result;
  *(v0 + 13664) = result;
  *(v0 + 13680) = result;
  *(v0 + 9248) = result;
  *(v0 + 9264) = result;
  *(v0 + 13552) = result;
  *(v0 + 13568) = result;
  *(v0 + 13584) = result;
  *(v0 + 13616) = result;
  *(v0 + 9280) = result;
  *(v0 + 9296) = result;
  *(v0 + 9312) = result;
  *(v0 + 9328) = result;
  *(v0 + 9344) = result;
  *(v0 + 9360) = result;
  *(v0 + 9376) = result;
  *(v0 + 9392) = result;
  *(v0 + 13336) = 0x3FF0000000000000;
  *(v0 + 13416) = 1;
  *(v0 + 13417) = *v20;
  *(v0 + 13420) = *&v20[3];
  *(v0 + 13448) = 1060320051;
  *(v0 + 13344) = result;
  *(v0 + 13360) = result;
  *(v0 + 13376) = result;
  *(v0 + 13392) = 0x3FF0000000000000;
  *(v0 + 13408) = 0x4028000000000010;
  *(v0 + 9408) = result;
  *(v0 + 9424) = result;
  *(v0 + 9440) = result;
  *(v0 + 9456) = result;
  *(v0 + 13296) = result;
  *(v0 + 13312) = result;
  *(v0 + 9472) = result;
  *(v0 + 13152) = result;
  *(v0 + 13168) = result;
  *(v0 + 13184) = result;
  *(v0 + 13200) = result;
  *(v0 + 13216) = result;
  *(v0 + 13056) = result;
  *(v0 + 13072) = result;
  *(v0 + 13088) = result;
  *(v0 + 13104) = result;
  *(v0 + 13120) = result;
  *(v0 + 13136) = result;
  *(v0 + 12960) = result;
  *(v0 + 12976) = result;
  *(v0 + 12992) = result;
  *(v0 + 13008) = result;
  *(v0 + 13024) = result;
  *(v0 + 13040) = result;
  *(v0 + 12864) = result;
  *(v0 + 12880) = result;
  *(v0 + 12896) = result;
  *(v0 + 12912) = result;
  *(v0 + 12928) = result;
  *(v0 + 12944) = result;
  *(v0 + 12768) = result;
  *(v0 + 12784) = result;
  *(v0 + 12800) = result;
  *(v0 + 12816) = result;
  *(v0 + 12832) = result;
  *(v0 + 12848) = result;
  *(v0 + 12672) = result;
  *(v0 + 12688) = result;
  *(v0 + 12704) = result;
  *(v0 + 12720) = result;
  *(v0 + 12736) = result;
  *(v0 + 12752) = result;
  *(v0 + 12584) = 0;
  *(v0 + 12592) = result;
  *(v0 + 12608) = result;
  *(v0 + 12624) = result;
  *(v0 + 12640) = result;
  *(v0 + 12656) = result;
  *(v0 + 9488) = result;
  *(v0 + 9504) = result;
  *(v0 + 9520) = result;
  *(v0 + 12512) = result;
  *(v0 + 12552) = 0x3FEB9B9BC0000000;
  *(v0 + 12576) = 0x3FF0000000000000;
  *(v0 + 9536) = result;
  *(v0 + 9552) = result;
  *(v0 + 12416) = result;
  *(v0 + 12432) = result;
  *(v0 + 12448) = result;
  *(v0 + 12496) = result;
  *(v0 + 9568) = result;
  *(v0 + 12320) = result;
  *(v0 + 12336) = result;
  *(v0 + 12352) = result;
  *(v0 + 12368) = result;
  *(v0 + 12400) = result;
  *(v0 + 9648) = result;
  *(v0 + 9664) = result;
  *(v0 + 9688) = 0x3FF0000000000000;
  *(v0 + 9696) = result;
  *(v0 + 12288) = result;
  *(v0 + 12304) = result;
  *(v0 + 9712) = result;
  *(v0 + 12201) = *v19;
  *(v0 + 12232) = 1061158912;
  *(v0 + 12176) = 0x3FF0000000000000;
  *(v0 + 12192) = 0x4031FFFFFFFFFFF6;
  *(v0 + 12200) = 1;
  *(v0 + 12204) = *&v19[3];
  *(v0 + 9728) = result;
  *(v0 + 9744) = 0x3FF0000000000000;
  *(v0 + 12120) = 0x3FF0000000000000;
  *(v0 + 12128) = result;
  *(v0 + 12144) = result;
  *(v0 + 12160) = result;
  *(v0 + 9760) = 0x403DFFFFFFFFFFFELL;
  *(v0 + 9768) = 0;
  *(v0 + 12096) = result;
  *(v0 + 9769) = *v17;
  *(v0 + 9772) = *&v17[3];
  *(v0 + 12000) = result;
  *(v0 + 12080) = result;
  *(v0 + 11904) = result;
  *(v0 + 11920) = result;
  *(v0 + 11936) = result;
  *(v0 + 11952) = result;
  *(v0 + 11968) = result;
  *(v0 + 11984) = result;
  *(v0 + 11808) = result;
  *(v0 + 11824) = result;
  *(v0 + 11840) = result;
  *(v0 + 11856) = result;
  *(v0 + 11872) = result;
  *(v0 + 11888) = result;
  *(v0 + 11712) = result;
  *(v0 + 11728) = result;
  *(v0 + 11744) = result;
  *(v0 + 11760) = result;
  *(v0 + 11776) = result;
  *(v0 + 11792) = result;
  *(v0 + 11616) = result;
  *(v0 + 11632) = result;
  *(v0 + 11648) = result;
  *(v0 + 11664) = result;
  *(v0 + 11680) = result;
  *(v0 + 11696) = result;
  *(v0 + 11520) = result;
  *(v0 + 11536) = result;
  *(v0 + 11552) = result;
  *(v0 + 11568) = result;
  *(v0 + 11584) = result;
  *(v0 + 11600) = result;
  *(v0 + 11424) = result;
  *(v0 + 11440) = result;
  *(v0 + 11456) = result;
  *(v0 + 11472) = result;
  *(v0 + 11488) = result;
  *(v0 + 11504) = result;
  *(v0 + 9800) = 1061997773;
  *(v0 + 11360) = 0x3FF0000000000000;
  *(v0 + 11368) = 0;
  *(v0 + 11376) = result;
  *(v0 + 11392) = result;
  *(v0 + 11408) = result;
  *(v0 + 9904) = result;
  *(v0 + 9920) = result;
  *(v0 + 9936) = result;
  *(v0 + 9968) = result;
  *(v0 + 11296) = result;
  *(v0 + 11336) = 0x3FEB9B9BC0000000;
  *(v0 + 9984) = result;
  *(v0 + 10000) = result;
  *(v0 + 11184) = result;
  *(v0 + 11200) = result;
  *(v0 + 11216) = result;
  *(v0 + 11232) = result;
  *(v0 + 10016) = result;
  *(v0 + 10080) = result;
  *(v0 + 10120) = 0x3FEB9B9BC0000000;
  *(v0 + 11120) = result;
  *(v0 + 11136) = result;
  *(v0 + 11152) = result;
  *(v0 + 10144) = 0x3FF0000000000000;
  *(v0 + 10152) = 0;
  *(v0 + 10160) = result;
  *(v0 + 10176) = result;
  *(v0 + 10192) = result;
  *(v0 + 10985) = *v18;
  *(v0 + 10988) = *&v18[3];
  *(v0 + 11016) = 1061997773;
  *(v0 + 10912) = result;
  *(v0 + 10928) = result;
  *(v0 + 10944) = result;
  *(v0 + 10960) = 0x3FF0000000000000;
  *(v0 + 10976) = 0x403DFFFFFFFFFFFELL;
  *(v0 + 10984) = 1;
  *(v0 + 10208) = result;
  *(v0 + 10224) = result;
  *(v0 + 10240) = result;
  *(v0 + 10864) = result;
  *(v0 + 10880) = result;
  *(v0 + 10904) = 0x3FF0000000000000;
  *(v0 + 10256) = result;
  *(v0 + 10272) = result;
  *(v0 + 10736) = result;
  *(v0 + 10752) = result;
  *(v0 + 10768) = result;
  *(v0 + 10784) = result;
  *(v0 + 10640) = result;
  *(v0 + 10656) = result;
  *(v0 + 10672) = result;
  *(v0 + 10688) = result;
  *(v0 + 10704) = result;
  *(v0 + 10720) = result;
  *(v0 + 10544) = result;
  *(v0 + 10560) = result;
  *(v0 + 10576) = result;
  *(v0 + 10592) = result;
  *(v0 + 10608) = result;
  *(v0 + 10624) = result;
  *(v0 + 10448) = result;
  *(v0 + 10464) = result;
  *(v0 + 10480) = result;
  *(v0 + 10496) = result;
  *(v0 + 10512) = result;
  *(v0 + 10528) = result;
  *(v0 + 10352) = result;
  *(v0 + 10368) = result;
  *(v0 + 10384) = result;
  *(v0 + 10400) = result;
  *(v0 + 10416) = result;
  *(v0 + 10432) = result;
  *(v0 + 10288) = result;
  *(v0 + 10304) = result;
  *(v0 + 10320) = result;
  *(v0 + 10336) = result;
  *(v0 + 18160) = result;
  *(v0 + 18176) = result;
  *(v0 + 18208) = result;
  *(v0 + 18224) = result;
  *(v0 + 18240) = result;
  *(v0 + 18336) = result;
  *(v0 + 18400) = result;
  *(v0 + 18480) = result;
  *(v0 + 18496) = result;
  *(v0 + 18640) = result;
  *(v0 + 18672) = result;
  *(v0 + 18688) = result;
  *(v0 + 18704) = result;
  *(v0 + 18720) = result;
  *(v0 + 18736) = result;
  *(v0 + 18752) = result;
  *(v0 + 18768) = result;
  *(v0 + 18784) = result;
  *(v0 + 18800) = result;
  *(v0 + 18816) = result;
  *(v0 + 18832) = result;
  *(v0 + 18848) = result;
  *(v0 + 18864) = result;
  *(v0 + 18880) = result;
  *(v0 + 18896) = result;
  *(v0 + 18912) = result;
  *(v0 + 18928) = result;
  *(v0 + 18944) = result;
  *(v0 + 18960) = result;
  *(v0 + 18976) = result;
  *(v0 + 18992) = result;
  *(v0 + 19008) = result;
  *(v0 + 19024) = result;
  *(v0 + 19040) = result;
  *(v0 + 19056) = result;
  *(v0 + 19072) = result;
  *(v0 + 19088) = result;
  *(v0 + 19104) = result;
  *(v0 + 19120) = result;
  *(v0 + 19136) = result;
  *(v0 + 19152) = result;
  *(v0 + 19168) = result;
  *(v0 + 19184) = result;
  *(v0 + 19200) = result;
  *(v0 + 19216) = result;
  *(v0 + 19232) = result;
  *(v0 + 19248) = result;
  *(v0 + 19264) = result;
  *(v0 + 19280) = result;
  *(v0 + 19296) = result;
  *(v0 + 19376) = result;
  *(v0 + 19392) = result;
  *(v0 + 19424) = result;
  *(v0 + 19440) = result;
  *(v0 + 19456) = result;
  *(v0 + 19696) = result;
  *(v0 + 19712) = result;
  *(v0 + 19728) = result;
  *(v0 + 19744) = result;
  *(v0 + 19760) = result;
  *(v0 + 19808) = result;
  *(v0 + 19856) = result;
  *(v0 + 19888) = result;
  *(v0 + 19904) = result;
  *(v0 + 19920) = result;
  *(v0 + 19936) = result;
  *(v0 + 19952) = result;
  *(v0 + 19968) = result;
  *(v0 + 19984) = result;
  *(v0 + 20000) = result;
  *(v0 + 20016) = result;
  *(v0 + 20032) = result;
  *(v0 + 20048) = result;
  *(v0 + 20064) = result;
  *(v0 + 20080) = result;
  *(v0 + 20096) = result;
  *(v0 + 20112) = result;
  *(v0 + 20128) = result;
  *(v0 + 20144) = result;
  *(v0 + 20160) = result;
  *(v0 + 20176) = result;
  *(v0 + 20192) = result;
  *(v0 + 20208) = result;
  *(v0 + 20224) = result;
  *(v0 + 20240) = result;
  *(v0 + 20256) = result;
  *(v0 + 20272) = result;
  *(v0 + 20288) = result;
  *(v0 + 20304) = result;
  *(v0 + 20320) = result;
  *(v0 + 20336) = result;
  *(v0 + 20352) = result;
  *(v0 + 20368) = result;
  *(v0 + 20384) = result;
  *(v0 + 20400) = result;
  *(v0 + 20416) = result;
  *(v0 + 20432) = result;
  *(v0 + 20448) = result;
  *(v0 + 20464) = result;
  *(v0 + 20480) = result;
  *(v0 + 20496) = result;
  *(v0 + 20512) = result;
  *(v0 + 20592) = result;
  *(v0 + 20608) = result;
  *(v0 + 20640) = result;
  *(v0 + 20656) = result;
  *(v0 + 20672) = result;
  *(v0 + 20912) = result;
  *(v0 + 20928) = result;
  *(v0 + 20944) = result;
  *(v0 + 20960) = result;
  *(v0 + 20976) = result;
  *(v0 + 21024) = result;
  *(v0 + 21072) = result;
  *(v0 + 21104) = result;
  *(v0 + 21120) = result;
  *(v0 + 21136) = result;
  *(v0 + 21152) = result;
  *(v0 + 21168) = result;
  *(v0 + 21184) = result;
  *(v0 + 21200) = result;
  *(v0 + 21216) = result;
  *(v0 + 21232) = result;
  *(v0 + 21248) = result;
  *(v0 + 21264) = result;
  *(v0 + 21280) = result;
  *(v0 + 21296) = result;
  *(v0 + 21312) = result;
  *(v0 + 21328) = result;
  *(v0 + 21344) = result;
  *(v0 + 21360) = result;
  *(v0 + 21376) = result;
  *(v0 + 21392) = result;
  *(v0 + 21408) = result;
  *(v0 + 21424) = result;
  *(v0 + 21440) = result;
  *(v0 + 21456) = result;
  *(v0 + 21472) = result;
  *(v0 + 21488) = result;
  *(v0 + 21504) = result;
  *(v0 + 21520) = result;
  *(v0 + 21536) = result;
  *(v0 + 21552) = result;
  *(v0 + 21568) = result;
  *(v0 + 21584) = result;
  *(v0 + 21600) = result;
  *(v0 + 21616) = result;
  *(v0 + 21632) = result;
  *(v0 + 21648) = result;
  *(v0 + 21664) = result;
  *(v0 + 21680) = result;
  *(v0 + 21696) = result;
  *(v0 + 21712) = result;
  *(v0 + 21728) = result;
  *(v0 + 21808) = result;
  *(v0 + 21824) = result;
  *(v0 + 21856) = result;
  *(v0 + 21872) = result;
  *(v0 + 21888) = result;
  *(v0 + 7688) = 0x3FEF0AE2E0000000;
  *(v0 + 7712) = 0x3FF0000000000000;
  *(v0 + 7720) = 0;
  *(v0 + 18200) = 0x3FF0000000000000;
  *(v0 + 18256) = 0x3FF0000000000000;
  *(v0 + 18272) = 0xC028000000000000;
  *(v0 + 18280) = 1;
  *(v0 + 18281) = *v24;
  *(v0 + 18284) = *&v24[3];
  *(v0 + 18312) = 1036831948;
  *(v0 + 18632) = 0x3FF0000000000000;
  *(v0 + 18656) = 0;
  *(v0 + 18664) = 1065353216;
  *(v0 + 19416) = 0x3FF0000000000000;
  *(v0 + 19472) = 0x3FF0000000000000;
  *(v0 + 19488) = 0xC04E000000000002;
  *(v0 + 19496) = 1;
  *(v0 + 19497) = *v25;
  *(v0 + 19500) = *&v25[3];
  *(v0 + 19528) = 1040242952;
  *(v0 + 19848) = 0x3FF0000000000000;
  *(v0 + 19872) = 0;
  *(v0 + 19880) = 1065353216;
  *(v0 + 20632) = 0x3FF0000000000000;
  *(v0 + 20688) = 0x3FF0000000000000;
  *(v0 + 20704) = 0xC056800000000000;
  *(v0 + 20712) = 1;
  *(v0 + 20713) = *v26;
  *(v0 + 20716) = *&v26[3];
  *(v0 + 20744) = 1040242952;
  *(v0 + 21064) = 0x3FF0000000000000;
  *(v0 + 21088) = 0;
  *(v0 + 21096) = 1065353216;
  *(v0 + 21848) = 0x3FF0000000000000;
  *(v0 + 21904) = 0x3FF0000000000000;
  return result;
}

double sub_1BCA6D340()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07858);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BCE3C820;
  *(v0 + 32) = 0xC056800000000000;
  *(v0 + 40) = 0;
  *(v0 + 48) = xmmword_1BCE45BD0;
  *(v0 + 64) = 0x432A000043160000;
  *(v0 + 72) = 1040242952;
  *(v0 + 80) = xmmword_1BCE3DCE0;
  *(v0 + 96) = xmmword_1BCE3C850;
  *(v0 + 112) = xmmword_1BCE3C860;
  *(v0 + 128) = xmmword_1BCE3C870;
  *(v0 + 144) = xmmword_1BCE3C880;
  *(v0 + 160) = xmmword_1BCE3C890;
  *(v0 + 176) = xmmword_1BCE3C8A0;
  *(v0 + 192) = xmmword_1BCE3C8B0;
  __asm { FMOV            V29.2D, #0.5 }

  *(v0 + 208) = _Q29;
  *(v0 + 224) = xmmword_1BCE3D910;
  __asm { FMOV            V0.2D, #1.0 }

  *(v0 + 240) = _Q0;
  *(v0 + 256) = _Q0;
  *(v0 + 272) = _Q0;
  *(v0 + 288) = _Q0;
  *(v0 + 304) = _Q0;
  *(v0 + 320) = xmmword_1BCE3C8C0;
  *(v0 + 336) = xmmword_1BCE3C8F0;
  *(v0 + 352) = _Q0;
  *(v0 + 368) = xmmword_1BCE3C900;
  *(v0 + 384) = 0x3F3333333F800000;
  *(v0 + 392) = 0x3FF0000000000000;
  *(v0 + 400) = _Q0;
  *(v0 + 416) = 0;
  *(v0 + 424) = 1065353216;
  *(v0 + 432) = _Q0;
  *(v0 + 448) = _Q0;
  *(v0 + 464) = _Q0;
  *(v0 + 480) = _Q0;
  *(v0 + 496) = _Q0;
  *(v0 + 512) = _Q0;
  *(v0 + 528) = _Q0;
  *(v0 + 544) = _Q0;
  *(v0 + 560) = _Q0;
  *(v0 + 576) = _Q0;
  *(v0 + 592) = _Q0;
  *(v0 + 608) = _Q0;
  *(v0 + 624) = _Q0;
  *(v0 + 640) = _Q0;
  *(v0 + 656) = _Q0;
  *(v0 + 672) = _Q0;
  *(v0 + 688) = _Q0;
  *(v0 + 704) = _Q0;
  *(v0 + 720) = _Q0;
  *(v0 + 736) = _Q0;
  *(v0 + 752) = _Q0;
  *(v0 + 768) = _Q0;
  *(v0 + 784) = _Q0;
  *(v0 + 800) = _Q0;
  *(v0 + 816) = _Q0;
  *(v0 + 832) = _Q0;
  *(v0 + 848) = _Q0;
  *(v0 + 864) = _Q0;
  *(v0 + 880) = _Q0;
  *(v0 + 896) = _Q0;
  *(v0 + 912) = _Q0;
  *(v0 + 928) = _Q0;
  *(v0 + 944) = _Q0;
  *(v0 + 960) = _Q0;
  *(v0 + 976) = _Q0;
  *(v0 + 992) = _Q0;
  *(v0 + 1008) = _Q0;
  *(v0 + 1024) = _Q0;
  *(v0 + 1040) = _Q0;
  *(v0 + 1056) = _Q0;
  v7 = vdupq_n_s64(0x3FCF82F740000000uLL);
  *(v0 + 1072) = v7;
  *(v0 + 1088) = xmmword_1BCE3C910;
  *(v0 + 1104) = xmmword_1BCE3C920;
  *(v0 + 1120) = xmmword_1BCE3C930;
  *(v0 + 1136) = xmmword_1BCE3D350;
  *(v0 + 1152) = _Q0;
  *(v0 + 1168) = 0x4100000042FA0000;
  *(v0 + 1176) = 0x3FEB89F080000000;
  *(v0 + 1184) = xmmword_1BCE3D360;
  *(v0 + 1200) = _Q0;
  *(v0 + 1216) = xmmword_1BCE3D370;
  *(v0 + 1232) = 0x3FF0000000000000;
  *(v0 + 1248) = 0xC04E000000000000;
  *(v0 + 1256) = 0;
  *(v0 + 1257) = *v11;
  *(v0 + 1260) = *&v11[3];
  *(v0 + 1264) = xmmword_1BCE45BD0;
  *(v0 + 1280) = 0x432A000043160000;
  *(v0 + 1288) = 1040242952;
  *(v0 + 1296) = xmmword_1BCE3DCE0;
  *(v0 + 1312) = xmmword_1BCE3C850;
  *(v0 + 1328) = xmmword_1BCE3C860;
  *(v0 + 1344) = xmmword_1BCE3C870;
  *(v0 + 1360) = xmmword_1BCE3C880;
  *(v0 + 1376) = xmmword_1BCE3C890;
  *(v0 + 1392) = xmmword_1BCE3C8A0;
  *(v0 + 1408) = xmmword_1BCE3C8B0;
  *(v0 + 1424) = _Q29;
  *(v0 + 1440) = xmmword_1BCE3D910;
  *(v0 + 1456) = _Q0;
  *(v0 + 1472) = _Q0;
  *(v0 + 1488) = _Q0;
  *(v0 + 1504) = _Q0;
  *(v0 + 1520) = _Q0;
  *(v0 + 1536) = xmmword_1BCE3C8C0;
  *(v0 + 1552) = xmmword_1BCE3C8F0;
  *(v0 + 1568) = _Q0;
  *(v0 + 1584) = xmmword_1BCE3C900;
  *(v0 + 1600) = 0x3F3333333F800000;
  *(v0 + 1608) = 0x3FF0000000000000;
  *(v0 + 1616) = _Q0;
  *(v0 + 1632) = 0;
  *(v0 + 1640) = 1065353216;
  *(v0 + 1648) = _Q0;
  *(v0 + 1664) = _Q0;
  *(v0 + 1680) = _Q0;
  *(v0 + 1696) = _Q0;
  *(v0 + 1712) = _Q0;
  *(v0 + 1728) = _Q0;
  *(v0 + 1744) = _Q0;
  *(v0 + 1760) = _Q0;
  *(v0 + 1776) = _Q0;
  *(v0 + 1792) = _Q0;
  *(v0 + 1808) = _Q0;
  *(v0 + 1824) = _Q0;
  *(v0 + 1840) = _Q0;
  *(v0 + 1856) = _Q0;
  *(v0 + 1872) = _Q0;
  *(v0 + 1888) = _Q0;
  *(v0 + 1904) = _Q0;
  *(v0 + 1920) = _Q0;
  *(v0 + 1936) = _Q0;
  *(v0 + 1952) = _Q0;
  *(v0 + 1968) = _Q0;
  *(v0 + 1984) = _Q0;
  *(v0 + 2000) = _Q0;
  *(v0 + 2016) = _Q0;
  *(v0 + 2032) = _Q0;
  *(v0 + 2048) = _Q0;
  *(v0 + 2064) = _Q0;
  *(v0 + 2080) = _Q0;
  *(v0 + 2400) = xmmword_1BCE3D380;
  *(v0 + 2432) = xmmword_1BCE3D390;
  *(v0 + 2496) = 0x4396000042C80000;
  *(v0 + 2608) = xmmword_1BCE3C9B0;
  *(v0 + 2704) = xmmword_1BCE3D3C0;
  *(v0 + 2720) = xmmword_1BCE3D3D0;
  *(v0 + 2736) = xmmword_1BCE3C9E0;
  *(v0 + 3504) = vdupq_n_s64(0x3FCF992720000000uLL);
  *(v0 + 3520) = xmmword_1BCE3CA20;
  *(v0 + 3536) = xmmword_1BCE3CA30;
  *(v0 + 3552) = xmmword_1BCE3CA40;
  *(v0 + 3568) = xmmword_1BCE3D3E0;
  *(v0 + 3584) = _Q0;
  *(v0 + 3600) = 0x4100000042B40000;
  *(v0 + 3608) = 0x3FE9EB8500000000;
  *(v0 + 3632) = xmmword_1BCE3CBC0;
  *(v0 + 3648) = xmmword_1BCE3D400;
  *(v0 + 3664) = 0x3FF0000000000000;
  *(v0 + 3680) = 0xC018000000000000;
  *(v0 + 3688) = 0;
  *(v0 + 3689) = *v13;
  *(v0 + 3692) = *&v13[3];
  *(v0 + 3696) = xmmword_1BCE3CA50;
  *(v0 + 3712) = 0x447A000044480000;
  *(v0 + 3720) = 1061997773;
  *(v0 + 3728) = xmmword_1BCE3CA60;
  *(v0 + 3744) = _Q0;
  *(v0 + 3760) = xmmword_1BCE3CA70;
  *(v0 + 3776) = xmmword_1BCE3CA80;
  *(v0 + 3792) = xmmword_1BCE3CA90;
  *(v0 + 3808) = xmmword_1BCE3CAA0;
  *(v0 + 3824) = xmmword_1BCE3CAB0;
  *(v0 + 3840) = xmmword_1BCE3CAC0;
  *(v0 + 3856) = vdupq_n_s64(0x3FE88B6D00000000uLL);
  *(v0 + 3872) = xmmword_1BCE3D960;
  *(v0 + 3888) = _Q0;
  *(v0 + 3904) = _Q0;
  *(v0 + 3920) = _Q0;
  *(v0 + 3936) = _Q0;
  *(v0 + 3952) = _Q0;
  *(v0 + 3968) = xmmword_1BCE3C8C0;
  *(v0 + 3984) = xmmword_1BCE3CAD0;
  *(v0 + 4000) = xmmword_1BCE3CA00;
  *(v0 + 4016) = xmmword_1BCE3CAE0;
  *(v0 + 4032) = 1062836634;
  *(v0 + 4040) = 0x3FEFBFBFC0000000;
  *(v0 + 4048) = xmmword_1BCE3CAF0;
  *(v0 + 4064) = 0;
  *(v0 + 4072) = 0;
  *(v0 + 4080) = _Q0;
  *(v0 + 4096) = _Q0;
  *(v0 + 4112) = _Q0;
  *(v0 + 4128) = _Q0;
  *(v0 + 4144) = _Q0;
  *(v0 + 4160) = _Q0;
  *(v0 + 4176) = _Q0;
  *(v0 + 4192) = _Q0;
  *(v0 + 4208) = _Q0;
  *(v0 + 4224) = _Q0;
  *(v0 + 4240) = _Q0;
  *(v0 + 4256) = _Q0;
  *(v0 + 4272) = _Q0;
  *(v0 + 4288) = _Q0;
  *(v0 + 4304) = _Q0;
  *(v0 + 4320) = _Q0;
  *(v0 + 4336) = _Q0;
  *(v0 + 4352) = _Q0;
  *(v0 + 4368) = _Q0;
  *(v0 + 4384) = _Q0;
  *(v0 + 4400) = _Q0;
  *(v0 + 4416) = _Q0;
  *(v0 + 4432) = _Q0;
  *(v0 + 4448) = _Q0;
  *(v0 + 4464) = _Q0;
  *(v0 + 4480) = _Q0;
  *(v0 + 4496) = _Q0;
  *(v0 + 4512) = _Q0;
  *(v0 + 4528) = _Q0;
  *(v0 + 4544) = _Q0;
  *(v0 + 4560) = _Q0;
  *(v0 + 4576) = _Q0;
  *(v0 + 4592) = _Q0;
  *(v0 + 4608) = _Q0;
  *(v0 + 4624) = _Q0;
  *(v0 + 4640) = _Q0;
  *(v0 + 4656) = _Q0;
  *(v0 + 4672) = _Q0;
  *(v0 + 4688) = _Q0;
  *(v0 + 4704) = _Q0;
  *(v0 + 4720) = xmmword_1BCE3CB00;
  *(v0 + 4736) = xmmword_1BCE3CB10;
  *(v0 + 4752) = xmmword_1BCE3CB20;
  *(v0 + 4768) = xmmword_1BCE3CB10;
  *(v0 + 4784) = xmmword_1BCE3D410;
  *(v0 + 4800) = _Q0;
  *(v0 + 4816) = 0x4100000041F00000;
  *(v0 + 4824) = 0x3FE8000000000000;
  *(v0 + 4848) = xmmword_1BCE3D430;
  *(v0 + 4864) = xmmword_1BCE3D440;
  *(v0 + 4928) = 0x44C8000044160000;
  *(v0 + 4944) = xmmword_1BCE3CB40;
  *(v0 + 4960) = xmmword_1BCE3CB50;
  *(v0 + 4976) = xmmword_1BCE3CB60;
  *(v0 + 4992) = xmmword_1BCE3CB70;
  *(v0 + 5008) = xmmword_1BCE3CB80;
  *(v0 + 5024) = xmmword_1BCE3CB90;
  *(v0 + 5168) = xmmword_1BCE3CBD0;
  *(v0 + 5184) = xmmword_1BCE3CBE0;
  *(v0 + 5232) = xmmword_1BCE3CC00;
  *(v0 + 5936) = xmmword_1BCE3CC10;
  *(v0 + 5968) = xmmword_1BCE3CC30;
  *(v0 + 5952) = xmmword_1BCE3CC20;
  *(v0 + 5984) = xmmword_1BCE3CC20;
  *(v0 + 5040) = _Q0;
  *(v0 + 4832) = xmmword_1BCE3E5A0;
  *(v0 + 4880) = 0x3FF0000000000000;
  *(v0 + 4896) = 0;
  *(v0 + 4904) = 0;
  *(v0 + 4905) = *v14;
  *(v0 + 4908) = *&v14[3];
  *(v0 + 6000) = xmmword_1BCE3D410;
  *(v0 + 6032) = 0x4170000041A00000;
  *(v0 + 4912) = xmmword_1BCE3CB30;
  *(v0 + 4936) = 1061997773;
  *(v0 + 6048) = xmmword_1BCE3E5A0;
  *(v0 + 6080) = xmmword_1BCE3D460;
  *(v0 + 6128) = xmmword_1BCE3CC40;
  *(v0 + 6144) = 0x44480000443B8000;
  *(v0 + 6160) = xmmword_1BCE3CC50;
  *(v0 + 6176) = xmmword_1BCE3CC60;
  *(v0 + 6192) = xmmword_1BCE3CC70;
  *(v0 + 6208) = xmmword_1BCE3CC80;
  *(v0 + 6224) = xmmword_1BCE3CC90;
  *(v0 + 6240) = xmmword_1BCE3CCA0;
  *(v0 + 6416) = xmmword_1BCE3CCD0;
  *(v0 + 6432) = xmmword_1BCE3CCE0;
  *(v0 + 6448) = xmmword_1BCE3CCF0;
  *(v0 + 6480) = xmmword_1BCE3CD00;
  *(v0 + 7152) = xmmword_1BCE3CD10;
  *(v0 + 7184) = xmmword_1BCE3CD30;
  *(v0 + 7168) = xmmword_1BCE3CD20;
  *(v0 + 7200) = xmmword_1BCE3CD20;
  *(v0 + 7264) = xmmword_1BCE3E5B0;
  *(v0 + 7280) = xmmword_1BCE3D480;
  *(v0 + 7296) = xmmword_1BCE3D490;
  *(v0 + 7344) = xmmword_1BCE3CD40;
  *(v0 + 7408) = xmmword_1BCE3CD60;
  *(v0 + 7424) = xmmword_1BCE3C9D0;
  *(v0 + 7440) = xmmword_1BCE3CD70;
  *(v0 + 7456) = xmmword_1BCE3CD80;
  *(v0 + 7552) = _Q0;
  *(v0 + 7632) = xmmword_1BCE3CD90;
  *(v0 + 7648) = xmmword_1BCE3CDA0;
  *(v0 + 7664) = xmmword_1BCE3CDB0;
  *(v0 + 7696) = xmmword_1BCE3CDC0;
  *(v0 + 8368) = xmmword_1BCE3CDD0;
  *(v0 + 8400) = xmmword_1BCE3CDE0;
  *(v0 + 8480) = xmmword_1BCE3D4A0;
  *(v0 + 8512) = xmmword_1BCE3D4C0;
  *(v0 + 8560) = xmmword_1BCE3CDF0;
  *(v0 + 8624) = xmmword_1BCE3CE00;
  *(v0 + 9696) = xmmword_1BCE3D4D0;
  *(v0 + 9728) = xmmword_1BCE3D4F0;
  *(v0 + 10944) = xmmword_1BCE3D500;
  *(v0 + 9776) = xmmword_1BCE3CE40;
  *(v0 + 10992) = xmmword_1BCE3CE40;
  *(v0 + 9792) = 1148846080;
  *(v0 + 11008) = 1148846080;
  *(v0 + 9840) = xmmword_1BCE3CE50;
  *(v0 + 11056) = xmmword_1BCE3CE50;
  *(v0 + 9856) = xmmword_1BCE3CE60;
  *(v0 + 11072) = xmmword_1BCE3CE60;
  *(v0 + 9872) = xmmword_1BCE3CE70;
  *(v0 + 11088) = xmmword_1BCE3CE70;
  *(v0 + 9888) = xmmword_1BCE3CE80;
  *(v0 + 11104) = xmmword_1BCE3CE80;
  v8 = vdupq_n_s32(0x3F666666u);
  *(v0 + 8880) = v8;
  *(v0 + 10096) = v8;
  *(v0 + 11312) = v8;
  *(v0 + 10816) = xmmword_1BCE447D0;
  *(v0 + 12032) = xmmword_1BCE447D0;
  *(v0 + 10800) = xmmword_1BCE447C0;
  *(v0 + 10832) = xmmword_1BCE447C0;
  *(v0 + 12016) = xmmword_1BCE447C0;
  *(v0 + 12048) = xmmword_1BCE447C0;
  *(v0 + 10848) = xmmword_1BCE447E0;
  *(v0 + 12064) = xmmword_1BCE447E0;
  *(v0 + 12160) = xmmword_1BCE3D510;
  *(v0 + 12208) = xmmword_1BCE3CEC0;
  *(v0 + 8576) = 0x41A00000447A0000;
  *(v0 + 12224) = 0x41A00000447A0000;
  v9 = vdupq_n_s64(0x3FECBCBCC0000000uLL);
  *(v0 + 7376) = v9;
  *(v0 + 8592) = v9;
  *(v0 + 9808) = v9;
  *(v0 + 11024) = v9;
  *(v0 + 12240) = v9;
  *(v0 + 7392) = xmmword_1BCE3CD50;
  *(v0 + 8608) = xmmword_1BCE3CD50;
  *(v0 + 9824) = xmmword_1BCE3CD50;
  *(v0 + 11040) = xmmword_1BCE3CD50;
  *(v0 + 12256) = xmmword_1BCE3CD50;
  *(v0 + 12272) = xmmword_1BCE3CED0;
  *(v0 + 12528) = xmmword_1BCE3CEF0;
  *(v0 + 8912) = xmmword_1BCE3CE10;
  *(v0 + 10128) = xmmword_1BCE3CE10;
  *(v0 + 11344) = xmmword_1BCE3CE10;
  *(v0 + 12560) = xmmword_1BCE3CE10;
  *(v0 + 9600) = xmmword_1BCE447A0;
  *(v0 + 13248) = xmmword_1BCE447A0;
  *(v0 + 9584) = xmmword_1BCE44790;
  *(v0 + 9616) = xmmword_1BCE44790;
  *(v0 + 13232) = xmmword_1BCE44790;
  *(v0 + 13264) = xmmword_1BCE44790;
  *(v0 + 9632) = xmmword_1BCE447B0;
  *(v0 + 13280) = xmmword_1BCE447B0;
  *(v0 + 13376) = xmmword_1BCE3D520;
  *(v0 + 13424) = xmmword_1BCE3CF00;
  *(v0 + 7360) = 1147207680;
  *(v0 + 13440) = 1147207680;
  *(v0 + 13456) = vdupq_n_s64(0x3FEC9CDC00000000uLL);
  *(v0 + 13472) = xmmword_1BCE3CF10;
  *(v0 + 13488) = xmmword_1BCE3CF20;
  *(v0 + 13504) = xmmword_1BCE3CF30;
  *(v0 + 13520) = xmmword_1BCE3CF40;
  *(v0 + 13536) = xmmword_1BCE3CF50;
  *(v0 + 6400) = xmmword_1BCE3CCC0;
  *(v0 + 7616) = xmmword_1BCE3CCC0;
  *(v0 + 8832) = xmmword_1BCE3CCC0;
  *(v0 + 10048) = xmmword_1BCE3CCC0;
  *(v0 + 12480) = xmmword_1BCE3CCC0;
  *(v0 + 13696) = xmmword_1BCE3CCC0;
  *(v0 + 13712) = xmmword_1BCE3CF60;
  *(v0 + 13744) = xmmword_1BCE3CF70;
  *(v0 + 13776) = xmmword_1BCE3CF80;
  *(v0 + 14448) = xmmword_1BCE3CEB0;
  *(v0 + 8384) = xmmword_1BCE3CBB0;
  *(v0 + 14464) = xmmword_1BCE3CBB0;
  *(v0 + 14480) = xmmword_1BCE3CF90;
  *(v0 + 14560) = xmmword_1BCE3E5C0;
  *(v0 + 14592) = xmmword_1BCE3D540;
  *(v0 + 14640) = xmmword_1BCE3CFA0;
  *(v0 + 14656) = 0x441EC000443B8000;
  *(v0 + 14672) = xmmword_1BCE3CFB0;
  *(v0 + 3616) = xmmword_1BCE3D610;
  *(v0 + 2096) = _Q0;
  *(v0 + 2112) = _Q0;
  *(v0 + 2128) = _Q0;
  *(v0 + 3456) = _Q0;
  *(v0 + 3472) = _Q0;
  *(v0 + 3488) = _Q0;
  *(v0 + 3360) = _Q0;
  *(v0 + 3376) = _Q0;
  *(v0 + 3392) = _Q0;
  *(v0 + 3408) = _Q0;
  *(v0 + 3424) = _Q0;
  *(v0 + 3440) = _Q0;
  *(v0 + 3264) = _Q0;
  *(v0 + 3280) = _Q0;
  *(v0 + 3296) = _Q0;
  *(v0 + 3312) = _Q0;
  *(v0 + 3328) = _Q0;
  *(v0 + 3344) = _Q0;
  *(v0 + 3168) = _Q0;
  *(v0 + 3184) = _Q0;
  *(v0 + 3200) = _Q0;
  *(v0 + 3216) = _Q0;
  *(v0 + 3232) = _Q0;
  *(v0 + 3248) = _Q0;
  *(v0 + 3072) = _Q0;
  *(v0 + 3088) = _Q0;
  *(v0 + 3104) = _Q0;
  *(v0 + 3120) = _Q0;
  *(v0 + 3136) = _Q0;
  *(v0 + 3152) = _Q0;
  *(v0 + 2976) = _Q0;
  *(v0 + 2992) = _Q0;
  *(v0 + 3008) = _Q0;
  *(v0 + 3024) = _Q0;
  *(v0 + 3040) = _Q0;
  *(v0 + 3056) = _Q0;
  *(v0 + 2880) = _Q0;
  *(v0 + 2896) = _Q0;
  *(v0 + 2912) = _Q0;
  *(v0 + 2928) = _Q0;
  *(v0 + 2944) = _Q0;
  *(v0 + 2960) = _Q0;
  *(v0 + 2144) = _Q0;
  *(v0 + 2160) = _Q0;
  *(v0 + 2832) = _Q0;
  *(v0 + 2848) = 0;
  *(v0 + 2856) = 1065353216;
  *(v0 + 2864) = _Q0;
  *(v0 + 2752) = xmmword_1BCE3C8C0;
  *(v0 + 2816) = 0x3F3333333F4CCCCDLL;
  *(v0 + 2824) = 0x3FF0000000000000;
  *(v0 + 2768) = xmmword_1BCE3C9F0;
  *(v0 + 2784) = xmmword_1BCE3CA00;
  *(v0 + 2800) = xmmword_1BCE3CA10;
  *(v0 + 2176) = _Q0;
  *(v0 + 2656) = xmmword_1BCE3DCB0;
  *(v0 + 2672) = _Q0;
  *(v0 + 2688) = _Q0;
  *(v0 + 2192) = _Q0;
  *(v0 + 2208) = _Q0;
  *(v0 + 2224) = _Q0;
  *(v0 + 2624) = xmmword_1BCE3C8C0;
  *(v0 + 2640) = _Q29;
  *(v0 + 2464) = 0xC028000000000000;
  *(v0 + 2528) = _Q0;
  *(v0 + 2576) = xmmword_1BCE3C9A0;
  *(v0 + 2592) = _Q0;
  *(v0 + 2544) = xmmword_1BCE3C980;
  *(v0 + 2560) = xmmword_1BCE3C990;
  *(v0 + 2472) = 0;
  *(v0 + 2504) = 1036831949;
  *(v0 + 2512) = xmmword_1BCE3C970;
  *(v0 + 2473) = *v12;
  *(v0 + 2476) = *&v12[3];
  *(v0 + 2480) = xmmword_1BCE45BD0;
  *(v0 + 2240) = _Q0;
  *(v0 + 2384) = 0x4100000042FA0000;
  *(v0 + 2392) = 0x3FEBA9FBE0000000;
  *(v0 + 2416) = _Q0;
  *(v0 + 2448) = 0x3FF0000000000000;
  *(v0 + 2256) = _Q0;
  *(v0 + 2272) = _Q0;
  *(v0 + 2320) = xmmword_1BCE3C920;
  *(v0 + 2336) = xmmword_1BCE3C930;
  *(v0 + 2352) = xmmword_1BCE3D350;
  *(v0 + 2368) = _Q0;
  *(v0 + 2288) = v7;
  *(v0 + 2304) = xmmword_1BCE3C910;
  *(v0 + 5056) = xmmword_1BCE3CBA0;
  *(v0 + 5072) = _Q0;
  *(v0 + 5088) = xmmword_1BCE3DA70;
  *(v0 + 5104) = _Q0;
  *(v0 + 5120) = _Q0;
  *(v0 + 5136) = _Q0;
  *(v0 + 5152) = _Q0;
  *(v0 + 5200) = xmmword_1BCE3CBF0;
  *(v0 + 5216) = xmmword_1BCE3CA00;
  *(v0 + 5248) = 1063675494;
  *(v0 + 5256) = 0x3FF0000000000000;
  *(v0 + 5264) = _Q0;
  *(v0 + 5280) = 0;
  *(v0 + 5288) = 0;
  *(v0 + 5296) = _Q0;
  *(v0 + 5312) = _Q0;
  *(v0 + 5328) = _Q0;
  *(v0 + 5344) = _Q0;
  *(v0 + 5360) = _Q0;
  *(v0 + 5376) = _Q0;
  *(v0 + 5392) = _Q0;
  *(v0 + 5408) = _Q0;
  *(v0 + 5424) = _Q0;
  *(v0 + 5440) = _Q0;
  *(v0 + 5456) = _Q0;
  *(v0 + 5472) = _Q0;
  *(v0 + 5488) = _Q0;
  *(v0 + 5504) = _Q0;
  *(v0 + 5520) = _Q0;
  *(v0 + 5536) = _Q0;
  *(v0 + 5552) = _Q0;
  *(v0 + 5568) = _Q0;
  *(v0 + 5584) = _Q0;
  *(v0 + 5600) = _Q0;
  *(v0 + 5616) = _Q0;
  *(v0 + 5632) = _Q0;
  *(v0 + 5648) = _Q0;
  *(v0 + 5664) = _Q0;
  *(v0 + 5680) = _Q0;
  *(v0 + 5696) = _Q0;
  *(v0 + 5712) = _Q0;
  *(v0 + 5728) = _Q0;
  *(v0 + 5744) = _Q0;
  *(v0 + 5760) = _Q0;
  *(v0 + 5776) = _Q0;
  *(v0 + 5792) = _Q0;
  *(v0 + 5808) = _Q0;
  *(v0 + 5824) = _Q0;
  *(v0 + 5840) = _Q0;
  *(v0 + 5856) = _Q0;
  *(v0 + 5872) = _Q0;
  *(v0 + 5888) = _Q0;
  *(v0 + 5904) = _Q0;
  *(v0 + 5920) = _Q0;
  *(v0 + 6016) = _Q0;
  *(v0 + 6040) = 0x3FE6666680000000;
  *(v0 + 6064) = _Q0;
  *(v0 + 6121) = *v15;
  *(v0 + 6096) = 0x3FF0000000000000;
  *(v0 + 6112) = 0x4017FFFFFFFFFFFALL;
  *(v0 + 6120) = 0;
  *(v0 + 6124) = *&v15[3];
  *(v0 + 6152) = 1060739482;
  *(v0 + 6256) = _Q0;
  *(v0 + 6272) = _Q0;
  *(v0 + 6288) = _Q0;
  *(v0 + 6304) = xmmword_1BCE3DAE0;
  *(v0 + 6320) = _Q0;
  *(v0 + 6336) = _Q0;
  *(v0 + 6352) = _Q0;
  *(v0 + 6368) = _Q0;
  *(v0 + 6384) = xmmword_1BCE3CCB0;
  *(v0 + 6464) = 1063675494;
  *(v0 + 6472) = 0x3FEF857180000000;
  *(v0 + 6496) = 0x3FE0000000000000;
  *(v0 + 6504) = 0;
  *(v0 + 6512) = _Q0;
  *(v0 + 6528) = _Q0;
  *(v0 + 6544) = _Q0;
  *(v0 + 6560) = _Q0;
  *(v0 + 6576) = _Q0;
  *(v0 + 6592) = _Q0;
  *(v0 + 6608) = _Q0;
  *(v0 + 6624) = _Q0;
  *(v0 + 6640) = _Q0;
  *(v0 + 6656) = _Q0;
  *(v0 + 6672) = _Q0;
  *(v0 + 6688) = _Q0;
  *(v0 + 6704) = _Q0;
  *(v0 + 6720) = _Q0;
  *(v0 + 6736) = _Q0;
  *(v0 + 6752) = _Q0;
  *(v0 + 6768) = _Q0;
  *(v0 + 6784) = _Q0;
  *(v0 + 6800) = _Q0;
  *(v0 + 6816) = _Q0;
  *(v0 + 6832) = _Q0;
  *(v0 + 6848) = _Q0;
  *(v0 + 6864) = _Q0;
  *(v0 + 6880) = _Q0;
  *(v0 + 6896) = _Q0;
  *(v0 + 6912) = _Q0;
  *(v0 + 6928) = _Q0;
  *(v0 + 6944) = _Q0;
  *(v0 + 6960) = _Q0;
  *(v0 + 6976) = _Q0;
  *(v0 + 6992) = _Q0;
  *(v0 + 7008) = _Q0;
  *(v0 + 7024) = _Q0;
  *(v0 + 7040) = _Q0;
  *(v0 + 7056) = _Q0;
  *(v0 + 7072) = _Q0;
  *(v0 + 7088) = _Q0;
  *(v0 + 7104) = _Q0;
  *(v0 + 7120) = _Q0;
  *(v0 + 7136) = _Q0;
  *(v0 + 7216) = _Q0;
  *(v0 + 7232) = _Q0;
  *(v0 + 7248) = 0x4170000000000000;
  *(v0 + 7256) = 0x3FE206D360000000;
  *(v0 + 7337) = *v16;
  *(v0 + 7312) = 0x3FF0000000000000;
  *(v0 + 7328) = 0x4027FFFFFFFFFFFALL;
  *(v0 + 7336) = 0;
  *(v0 + 7340) = *&v16[3];
  *(v0 + 7368) = 1059481190;
  *(v0 + 7472) = _Q0;
  *(v0 + 7488) = _Q0;
  *(v0 + 7504) = _Q0;
  *(v0 + 7520) = xmmword_1BCE3DAE0;
  *(v0 + 7536) = _Q0;
  *(v0 + 14688) = xmmword_1BCE3CFC0;
  *(v0 + 14704) = xmmword_1BCE3CFD0;
  *(v0 + 14720) = xmmword_1BCE3CFE0;
  *(v0 + 14736) = xmmword_1BCE3CFF0;
  *(v0 + 14752) = xmmword_1BCE3D000;
  *(v0 + 8736) = xmmword_1BCE3DAE0;
  *(v0 + 12384) = xmmword_1BCE3DAE0;
  *(v0 + 13600) = xmmword_1BCE3DAE0;
  *(v0 + 14816) = xmmword_1BCE3DAE0;
  *(v0 + 14864) = xmmword_1BCE3D010;
  *(v0 + 14896) = xmmword_1BCE3D020;
  *(v0 + 14912) = xmmword_1BCE3D030;
  *(v0 + 14928) = xmmword_1BCE3D040;
  *(v0 + 14960) = xmmword_1BCE3D050;
  *(v0 + 14992) = xmmword_1BCE3D060;
  *(v0 + 15664) = xmmword_1BCE3D070;
  *(v0 + 15680) = xmmword_1BCE3D080;
  *(v0 + 15696) = xmmword_1BCE3D090;
  *(v0 + 15712) = xmmword_1BCE3D0A0;
  *(v0 + 15776) = xmmword_1BCE3E5D0;
  *(v0 + 9712) = xmmword_1BCE3D4E0;
  *(v0 + 10928) = xmmword_1BCE3D4E0;
  *(v0 + 12144) = xmmword_1BCE3D4E0;
  *(v0 + 13360) = xmmword_1BCE3D4E0;
  *(v0 + 15792) = xmmword_1BCE3D4E0;
  *(v0 + 15808) = xmmword_1BCE3D560;
  *(v0 + 15856) = xmmword_1BCE3D0B0;
  *(v0 + 15872) = 0x449EC00044160000;
  *(v0 + 15888) = xmmword_1BCE3D0C0;
  *(v0 + 15904) = xmmword_1BCE3D0D0;
  *(v0 + 15920) = xmmword_1BCE3D0E0;
  *(v0 + 15936) = xmmword_1BCE3D0F0;
  *(v0 + 15952) = xmmword_1BCE3D100;
  *(v0 + 15968) = xmmword_1BCE3D110;
  *(v0 + 16000) = xmmword_1BCE3CBA0;
  *(v0 + 9952) = xmmword_1BCE3DA70;
  *(v0 + 11168) = xmmword_1BCE3DA70;
  *(v0 + 16032) = xmmword_1BCE3DA70;
  *(v0 + 7600) = xmmword_1BCE3CCB0;
  *(v0 + 8816) = xmmword_1BCE3CCB0;
  *(v0 + 8848) = xmmword_1BCE3CCB0;
  *(v0 + 10032) = xmmword_1BCE3CCB0;
  *(v0 + 10064) = xmmword_1BCE3CCB0;
  *(v0 + 11248) = xmmword_1BCE3CCB0;
  *(v0 + 11280) = xmmword_1BCE3CCB0;
  *(v0 + 12464) = xmmword_1BCE3CCB0;
  *(v0 + 16080) = xmmword_1BCE3CCB0;
  *(v0 + 16112) = xmmword_1BCE3D120;
  *(v0 + 16128) = xmmword_1BCE3D130;
  *(v0 + 16144) = xmmword_1BCE3CBF0;
  *(v0 + 16176) = xmmword_1BCE3D140;
  *(v0 + 7680) = 1063675494;
  *(v0 + 8896) = 1063675494;
  *(v0 + 10112) = 1063675494;
  *(v0 + 11328) = 1063675494;
  *(v0 + 12544) = 1063675494;
  *(v0 + 13760) = 1063675494;
  *(v0 + 14976) = 1063675494;
  *(v0 + 16192) = 1063675494;
  *(v0 + 16208) = xmmword_1BCE3D150;
  *(v0 + 16880) = xmmword_1BCE3D160;
  *(v0 + 16896) = xmmword_1BCE3D170;
  *(v0 + 16912) = xmmword_1BCE3D180;
  *(v0 + 16928) = xmmword_1BCE3D190;
  *(v0 + 16944) = xmmword_1BCE3D570;
  *(v0 + 16960) = xmmword_1BCE3D580;
  *(v0 + 8464) = 0x4170000000000000;
  *(v0 + 9680) = 0x4170000000000000;
  *(v0 + 10896) = 0x4170000000000000;
  *(v0 + 12112) = 0x4170000000000000;
  *(v0 + 13328) = 0x4170000000000000;
  *(v0 + 14544) = 0x4170000000000000;
  *(v0 + 15760) = 0x4170000000000000;
  *(v0 + 16976) = 0x4170000000000000;
  *(v0 + 16992) = xmmword_1BCE3E5E0;
  *(v0 + 17024) = xmmword_1BCE3D5A0;
  *(v0 + 17072) = xmmword_1BCE3CB30;
  *(v0 + 17088) = 0x4483CC9D44160000;
  *(v0 + 17104) = xmmword_1BCE3D5B0;
  *(v0 + 17136) = xmmword_1BCE3D1C0;
  *(v0 + 17152) = xmmword_1BCE3D1D0;
  *(v0 + 17168) = xmmword_1BCE3D1E0;
  *(v0 + 17184) = xmmword_1BCE3D1F0;
  *(v0 + 17200) = xmmword_1BCE3D200;
  *(v0 + 17216) = xmmword_1BCE3CAC0;
  *(v0 + 17232) = vdupq_n_s64(0x3FE8F90420000000uLL);
  *(v0 + 17248) = xmmword_1BCE3DC60;
  *(v0 + 17360) = xmmword_1BCE3CAD0;
  *(v0 + 17392) = xmmword_1BCE3D210;
  *(v0 + 17408) = 1062836634;
  *(v0 + 17424) = xmmword_1BCE3D220;
  *(v0 + 18096) = xmmword_1BCE3D230;
  *(v0 + 18112) = xmmword_1BCE3D240;
  *(v0 + 18128) = xmmword_1BCE3D250;
  *(v0 + 18144) = xmmword_1BCE3D260;
  *(v0 + 18160) = xmmword_1BCE3D5C0;
  *(v0 + 18176) = xmmword_1BCE3D5D0;
  *(v0 + 18192) = 0x4100000041A00000;
  *(v0 + 18208) = xmmword_1BCE3E5F0;
  *(v0 + 8496) = xmmword_1BCE3D4B0;
  *(v0 + 14576) = xmmword_1BCE3D4B0;
  *(v0 + 18224) = xmmword_1BCE3D4B0;
  *(v0 + 18240) = xmmword_1BCE3D5F0;
  *(v0 + 18288) = xmmword_1BCE3D330;
  *(v0 + 18304) = vdup_n_s32(0x43960000u);
  *(v0 + 18320) = xmmword_1BCE3C970;
  *(v0 + 18352) = xmmword_1BCE3C980;
  *(v0 + 18368) = xmmword_1BCE3C990;
  *(v0 + 18384) = xmmword_1BCE3C9A0;
  *(v0 + 18416) = xmmword_1BCE3D2A0;
  *(v0 + 18464) = xmmword_1BCE3DCB0;
  *(v0 + 18512) = xmmword_1BCE3D2B0;
  *(v0 + 18528) = xmmword_1BCE3D2C0;
  *(v0 + 18544) = xmmword_1BCE3D2D0;
  *(v0 + 18576) = xmmword_1BCE3C9F0;
  *(v0 + 13728) = xmmword_1BCE3CA00;
  *(v0 + 14944) = xmmword_1BCE3CA00;
  *(v0 + 16160) = xmmword_1BCE3CA00;
  *(v0 + 17376) = xmmword_1BCE3CA00;
  *(v0 + 18592) = xmmword_1BCE3CA00;
  *(v0 + 18608) = xmmword_1BCE3CA10;
  *(v0 + 18624) = 0x3F3333333F4CCCCDLL;
  *(v0 + 19312) = xmmword_1BCE3D2E0;
  *(v0 + 19344) = xmmword_1BCE3D2F0;
  *(v0 + 19376) = xmmword_1BCE3D600;
  *(v0 + 19408) = 0x4120000042B40000;
  *(v0 + 19424) = xmmword_1BCE3D610;
  *(v0 + 8416) = xmmword_1BCE3CBC0;
  *(v0 + 14496) = xmmword_1BCE3CBC0;
  *(v0 + 17008) = xmmword_1BCE3CBC0;
  *(v0 + 19440) = xmmword_1BCE3CBC0;
  *(v0 + 19456) = xmmword_1BCE3D620;
  *(v0 + 20640) = xmmword_1BCE3D630;
  *(v0 + 20672) = xmmword_1BCE3D640;
  *(v0 + 19504) = xmmword_1BCE45BD0;
  *(v0 + 20720) = xmmword_1BCE45BD0;
  *(v0 + 19520) = 0x432A000043160000;
  *(v0 + 20736) = 0x432A000043160000;
  *(v0 + 19536) = xmmword_1BCE3DCE0;
  *(v0 + 20752) = xmmword_1BCE3DCE0;
  *(v0 + 19552) = xmmword_1BCE3C850;
  *(v0 + 20768) = xmmword_1BCE3C850;
  *(v0 + 19568) = xmmword_1BCE3C860;
  *(v0 + 20784) = xmmword_1BCE3C860;
  *(v0 + 19584) = xmmword_1BCE3C870;
  *(v0 + 20800) = xmmword_1BCE3C870;
  *(v0 + 19600) = xmmword_1BCE3C880;
  *(v0 + 20816) = xmmword_1BCE3C880;
  *(v0 + 19616) = xmmword_1BCE3C890;
  *(v0 + 20832) = xmmword_1BCE3C890;
  *(v0 + 19632) = xmmword_1BCE3C8A0;
  *(v0 + 20848) = xmmword_1BCE3C8A0;
  *(v0 + 19648) = xmmword_1BCE3C8B0;
  *(v0 + 20864) = xmmword_1BCE3C8B0;
  *(v0 + 10912) = _Q29;
  *(v0 + 12128) = _Q29;
  *(v0 + 13344) = _Q29;
  *(v0 + 18448) = _Q29;
  *(v0 + 19664) = _Q29;
  *(v0 + 20880) = _Q29;
  *(v0 + 19680) = xmmword_1BCE3D910;
  *(v0 + 20896) = xmmword_1BCE3D910;
  *(v0 + 11264) = xmmword_1BCE3C8C0;
  *(v0 + 18000) = _Q0;
  *(v0 + 18016) = _Q0;
  *(v0 + 18032) = _Q0;
  *(v0 + 18048) = _Q0;
  *(v0 + 18064) = _Q0;
  *(v0 + 18080) = _Q0;
  *(v0 + 17904) = _Q0;
  *(v0 + 17920) = _Q0;
  *(v0 + 17936) = _Q0;
  *(v0 + 17952) = _Q0;
  *(v0 + 17968) = _Q0;
  *(v0 + 17984) = _Q0;
  *(v0 + 17808) = _Q0;
  *(v0 + 17824) = _Q0;
  *(v0 + 17840) = _Q0;
  *(v0 + 17856) = _Q0;
  *(v0 + 17872) = _Q0;
  *(v0 + 17888) = _Q0;
  *(v0 + 17712) = _Q0;
  *(v0 + 17728) = _Q0;
  *(v0 + 17744) = _Q0;
  *(v0 + 17760) = _Q0;
  *(v0 + 17776) = _Q0;
  *(v0 + 17792) = _Q0;
  *(v0 + 17616) = _Q0;
  *(v0 + 17632) = _Q0;
  *(v0 + 17648) = _Q0;
  *(v0 + 17664) = _Q0;
  *(v0 + 17680) = _Q0;
  *(v0 + 17696) = _Q0;
  *(v0 + 17344) = xmmword_1BCE3C8C0;
  *(v0 + 17536) = _Q0;
  *(v0 + 17552) = _Q0;
  *(v0 + 17568) = _Q0;
  *(v0 + 17584) = _Q0;
  *(v0 + 17600) = _Q0;
  *(v0 + 17416) = 0x3FEF23CF40000000;
  *(v0 + 17472) = _Q0;
  *(v0 + 17488) = _Q0;
  *(v0 + 17504) = _Q0;
  *(v0 + 17520) = _Q0;
  *(v0 + 17440) = 0;
  *(v0 + 17448) = 665496235;
  *(v0 + 17456) = _Q0;
  *(v0 + 18432) = xmmword_1BCE3C8C0;
  *(v0 + 18560) = xmmword_1BCE3C8C0;
  *(v0 + 19776) = xmmword_1BCE3C8C0;
  *(v0 + 20992) = xmmword_1BCE3C8C0;
  *(v0 + 19792) = xmmword_1BCE3C8F0;
  *(v0 + 21008) = xmmword_1BCE3C8F0;
  *(v0 + 17312) = _Q0;
  *(v0 + 17328) = _Q0;
  *(v0 + 19824) = xmmword_1BCE3C900;
  *(v0 + 21040) = xmmword_1BCE3C900;
  *(v0 + 17264) = _Q0;
  *(v0 + 17280) = _Q0;
  *(v0 + 17296) = _Q0;
  *(v0 + 19840) = 0x3F3333333F800000;
  *(v0 + 21056) = 0x3F3333333F800000;
  *(v0 + 20528) = v7;
  *(v0 + 21744) = v7;
  *(v0 + 19328) = xmmword_1BCE3C910;
  *(v0 + 19360) = xmmword_1BCE3C910;
  *(v0 + 20544) = xmmword_1BCE3C910;
  *(v0 + 21760) = xmmword_1BCE3C910;
  *(v0 + 20560) = xmmword_1BCE3C920;
  *(v0 + 21776) = xmmword_1BCE3C920;
  *(v0 + 17096) = 1050388079;
  *(v0 + 17120) = _Q0;
  *(v0 + 17040) = 0x3FF0000000000000;
  *(v0 + 17056) = 0xC017FFFFFFFFFFE8;
  *(v0 + 17064) = 1;
  *(v0 + 17065) = *v24;
  *(v0 + 17068) = *&v24[3];
  *(v0 + 20576) = xmmword_1BCE3C930;
  *(v0 + 21792) = xmmword_1BCE3C930;
  *(v0 + 20592) = xmmword_1BCE3D350;
  *(v0 + 21808) = xmmword_1BCE3D350;
  *(v0 + 20624) = 0x4100000042FA0000;
  *(v0 + 21840) = 0x4100000042FA0000;
  *(v0 + 16984) = 0x3FE8000000000000;
  *(v0 + 21856) = xmmword_1BCE3D360;
  *(v0 + 7568) = _Q0;
  *(v0 + 16848) = _Q0;
  *(v0 + 16864) = _Q0;
  *(v0 + 16752) = _Q0;
  *(v0 + 16768) = _Q0;
  *(v0 + 16784) = _Q0;
  *(v0 + 16800) = _Q0;
  *(v0 + 16816) = _Q0;
  *(v0 + 16832) = _Q0;
  *(v0 + 16656) = _Q0;
  *(v0 + 16672) = _Q0;
  *(v0 + 16688) = _Q0;
  *(v0 + 16704) = _Q0;
  *(v0 + 16720) = _Q0;
  *(v0 + 16736) = _Q0;
  *(v0 + 16560) = _Q0;
  *(v0 + 16576) = _Q0;
  *(v0 + 16592) = _Q0;
  *(v0 + 16608) = _Q0;
  *(v0 + 16624) = _Q0;
  *(v0 + 16640) = _Q0;
  *(v0 + 16464) = _Q0;
  *(v0 + 16480) = _Q0;
  *(v0 + 16496) = _Q0;
  *(v0 + 16512) = _Q0;
  *(v0 + 16528) = _Q0;
  *(v0 + 16544) = _Q0;
  *(v0 + 16368) = _Q0;
  *(v0 + 0x4000) = _Q0;
  *(v0 + 16400) = _Q0;
  *(v0 + 16416) = _Q0;
  *(v0 + 16432) = _Q0;
  *(v0 + 16448) = _Q0;
  *(v0 + 16272) = _Q0;
  *(v0 + 16288) = _Q0;
  *(v0 + 16304) = _Q0;
  *(v0 + 16320) = _Q0;
  *(v0 + 16336) = _Q0;
  *(v0 + 16352) = _Q0;
  *(v0 + 7584) = _Q0;
  *(v0 + 7728) = _Q0;
  *(v0 + 16224) = 0;
  *(v0 + 16232) = 0;
  *(v0 + 16240) = _Q0;
  *(v0 + 16256) = _Q0;
  *(v0 + 7744) = _Q0;
  *(v0 + 7760) = _Q0;
  *(v0 + 7776) = _Q0;
  *(v0 + 7792) = _Q0;
  *(v0 + 16200) = 0x3FEE6AC340000000;
  *(v0 + 7808) = _Q0;
  *(v0 + 7824) = _Q0;
  *(v0 + 7840) = _Q0;
  *(v0 + 16048) = _Q0;
  *(v0 + 16064) = _Q0;
  *(v0 + 16096) = _Q0;
  *(v0 + 7856) = _Q0;
  *(v0 + 7872) = _Q0;
  *(v0 + 7888) = _Q0;
  *(v0 + 7904) = _Q0;
  *(v0 + 15984) = _Q0;
  *(v0 + 16016) = _Q0;
  *(v0 + 7920) = _Q0;
  *(v0 + 7936) = _Q0;
  *(v0 + 7952) = _Q0;
  *(v0 + 7968) = _Q0;
  *(v0 + 7984) = _Q0;
  *(v0 + 15849) = *v23;
  *(v0 + 15852) = *&v23[3];
  *(v0 + 15880) = 1061997773;
  *(v0 + 8000) = _Q0;
  *(v0 + 8016) = _Q0;
  *(v0 + 8032) = _Q0;
  *(v0 + 15824) = 0x3FF0000000000000;
  *(v0 + 15840) = 0;
  *(v0 + 15848) = 1;
  *(v0 + 8048) = _Q0;
  *(v0 + 8064) = _Q0;
  *(v0 + 15728) = _Q0;
  *(v0 + 15744) = _Q0;
  *(v0 + 15768) = 0x3FE4CCCCC0000000;
  *(v0 + 8080) = _Q0;
  *(v0 + 8096) = _Q0;
  *(v0 + 8112) = _Q0;
  *(v0 + 15616) = _Q0;
  *(v0 + 15632) = _Q0;
  *(v0 + 15648) = _Q0;
  *(v0 + 15520) = _Q0;
  *(v0 + 15536) = _Q0;
  *(v0 + 15552) = _Q0;
  *(v0 + 15568) = _Q0;
  *(v0 + 15584) = _Q0;
  *(v0 + 15600) = _Q0;
  *(v0 + 15424) = _Q0;
  *(v0 + 15440) = _Q0;
  *(v0 + 15456) = _Q0;
  *(v0 + 15472) = _Q0;
  *(v0 + 15488) = _Q0;
  *(v0 + 15504) = _Q0;
  *(v0 + 15328) = _Q0;
  *(v0 + 15344) = _Q0;
  *(v0 + 15360) = _Q0;
  *(v0 + 15376) = _Q0;
  *(v0 + 15392) = _Q0;
  *(v0 + 15408) = _Q0;
  *(v0 + 15232) = _Q0;
  *(v0 + 15248) = _Q0;
  *(v0 + 15264) = _Q0;
  *(v0 + 15280) = _Q0;
  *(v0 + 15296) = _Q0;
  *(v0 + 15312) = _Q0;
  *(v0 + 15136) = _Q0;
  *(v0 + 15152) = _Q0;
  *(v0 + 15168) = _Q0;
  *(v0 + 15184) = _Q0;
  *(v0 + 15200) = _Q0;
  *(v0 + 15216) = _Q0;
  *(v0 + 8128) = _Q0;
  *(v0 + 15056) = _Q0;
  *(v0 + 15072) = _Q0;
  *(v0 + 15088) = _Q0;
  *(v0 + 15104) = _Q0;
  *(v0 + 15120) = _Q0;
  *(v0 + 14984) = 0x3FEDEF5480000000;
  *(v0 + 15008) = 0x3FE0000000000000;
  *(v0 + 15016) = 0;
  *(v0 + 15024) = _Q0;
  *(v0 + 15040) = _Q0;
  *(v0 + 8144) = _Q0;
  *(v0 + 8160) = _Q0;
  *(v0 + 8176) = _Q0;
  *(v0 + 0x2000) = _Q0;
  *(v0 + 8208) = _Q0;
  *(v0 + 8224) = _Q0;
  *(v0 + 8240) = _Q0;
  *(v0 + 8256) = _Q0;
  *(v0 + 14800) = _Q0;
  *(v0 + 14832) = _Q0;
  *(v0 + 14848) = _Q0;
  *(v0 + 14880) = _Q0;
  *(v0 + 8272) = _Q0;
  *(v0 + 8288) = _Q0;
  *(v0 + 8304) = _Q0;
  *(v0 + 14768) = _Q0;
  *(v0 + 14784) = _Q0;
  *(v0 + 8320) = _Q0;
  *(v0 + 8336) = _Q0;
  *(v0 + 8352) = _Q0;
  *(v0 + 14633) = *v22;
  *(v0 + 8432) = _Q0;
  *(v0 + 8448) = _Q0;
  *(v0 + 14636) = *&v22[3];
  *(v0 + 14664) = 1061158912;
  *(v0 + 8472) = 0x3FE0000000000000;
  *(v0 + 8528) = 0x3FF0000000000000;
  *(v0 + 14624) = 0x4018000000000010;
  *(v0 + 14632) = 1;
  *(v0 + 8544) = 0x4032000000000001;
  *(v0 + 8553) = *v17;
  *(v0 + 14608) = 0x3FF0000000000000;
  *(v0 + 8552) = 0;
  *(v0 + 8556) = *&v17[3];
  *(v0 + 14512) = _Q0;
  *(v0 + 14528) = _Q0;
  *(v0 + 14552) = 0x3FE0000000000000;
  *(v0 + 8584) = 1061158912;
  *(v0 + 8640) = _Q0;
  *(v0 + 14384) = _Q0;
  *(v0 + 14400) = _Q0;
  *(v0 + 14416) = _Q0;
  *(v0 + 14432) = _Q0;
  *(v0 + 14288) = _Q0;
  *(v0 + 14304) = _Q0;
  *(v0 + 14320) = _Q0;
  *(v0 + 14336) = _Q0;
  *(v0 + 14352) = _Q0;
  *(v0 + 14368) = _Q0;
  *(v0 + 14192) = _Q0;
  *(v0 + 14208) = _Q0;
  *(v0 + 14224) = _Q0;
  *(v0 + 14240) = _Q0;
  *(v0 + 14256) = _Q0;
  *(v0 + 14272) = _Q0;
  *(v0 + 14096) = _Q0;
  *(v0 + 14112) = _Q0;
  *(v0 + 14128) = _Q0;
  *(v0 + 14144) = _Q0;
  *(v0 + 14160) = _Q0;
  *(v0 + 14176) = _Q0;
  *(v0 + 14000) = _Q0;
  *(v0 + 14016) = _Q0;
  *(v0 + 14032) = _Q0;
  *(v0 + 14048) = _Q0;
  *(v0 + 14064) = _Q0;
  *(v0 + 14080) = _Q0;
  *(v0 + 13904) = _Q0;
  *(v0 + 13920) = _Q0;
  *(v0 + 13936) = _Q0;
  *(v0 + 13952) = _Q0;
  *(v0 + 13968) = _Q0;
  *(v0 + 13984) = _Q0;
  *(v0 + 8656) = _Q0;
  *(v0 + 13824) = _Q0;
  *(v0 + 13840) = _Q0;
  *(v0 + 13856) = _Q0;
  *(v0 + 13872) = _Q0;
  *(v0 + 13888) = _Q0;
  *(v0 + 8672) = _Q0;
  *(v0 + 13768) = 0x3FED73E5C0000000;
  *(v0 + 13792) = 0x3FF0000000000000;
  *(v0 + 13800) = 0;
  *(v0 + 13808) = _Q0;
  *(v0 + 8688) = _Q0;
  *(v0 + 8704) = _Q0;
  *(v0 + 8720) = _Q0;
  *(v0 + 8752) = _Q0;
  *(v0 + 13664) = _Q0;
  *(v0 + 13680) = _Q0;
  *(v0 + 8768) = _Q0;
  *(v0 + 8784) = _Q0;
  *(v0 + 13584) = _Q0;
  *(v0 + 13616) = _Q0;
  *(v0 + 13632) = _Q0;
  *(v0 + 13648) = _Q0;
  *(v0 + 8800) = _Q0;
  *(v0 + 8864) = _Q0;
  *(v0 + 8904) = 0x3FEB9B9BC0000000;
  *(v0 + 13552) = _Q0;
  *(v0 + 13568) = _Q0;
  *(v0 + 8928) = 0x3FF0000000000000;
  *(v0 + 8936) = 0;
  *(v0 + 8944) = _Q0;
  *(v0 + 8960) = _Q0;
  *(v0 + 8976) = _Q0;
  *(v0 + 8992) = _Q0;
  *(v0 + 13417) = *v21;
  *(v0 + 13448) = 1060320051;
  *(v0 + 13392) = 0x3FF0000000000000;
  *(v0 + 13408) = 0x4028000000000010;
  *(v0 + 13416) = 1;
  *(v0 + 13420) = *&v21[3];
  *(v0 + 9008) = _Q0;
  *(v0 + 9024) = _Q0;
  *(v0 + 9040) = _Q0;
  *(v0 + 13296) = _Q0;
  *(v0 + 13312) = _Q0;
  *(v0 + 13336) = 0x3FE0000000000000;
  *(v0 + 9056) = _Q0;
  *(v0 + 9072) = _Q0;
  *(v0 + 9088) = _Q0;
  *(v0 + 9104) = _Q0;
  *(v0 + 13200) = _Q0;
  *(v0 + 13216) = _Q0;
  *(v0 + 13104) = _Q0;
  *(v0 + 13120) = _Q0;
  *(v0 + 13136) = _Q0;
  *(v0 + 13152) = _Q0;
  *(v0 + 13168) = _Q0;
  *(v0 + 13184) = _Q0;
  *(v0 + 13008) = _Q0;
  *(v0 + 13024) = _Q0;
  *(v0 + 13040) = _Q0;
  *(v0 + 13056) = _Q0;
  *(v0 + 13072) = _Q0;
  *(v0 + 13088) = _Q0;
  *(v0 + 12912) = _Q0;
  *(v0 + 12928) = _Q0;
  *(v0 + 12944) = _Q0;
  *(v0 + 12960) = _Q0;
  *(v0 + 12976) = _Q0;
  *(v0 + 12992) = _Q0;
  *(v0 + 12816) = _Q0;
  *(v0 + 12832) = _Q0;
  *(v0 + 12848) = _Q0;
  *(v0 + 12864) = _Q0;
  *(v0 + 12880) = _Q0;
  *(v0 + 12896) = _Q0;
  *(v0 + 12720) = _Q0;
  *(v0 + 12736) = _Q0;
  *(v0 + 12752) = _Q0;
  *(v0 + 12768) = _Q0;
  *(v0 + 12784) = _Q0;
  *(v0 + 12800) = _Q0;
  *(v0 + 12624) = _Q0;
  *(v0 + 12640) = _Q0;
  *(v0 + 12656) = _Q0;
  *(v0 + 12672) = _Q0;
  *(v0 + 12688) = _Q0;
  *(v0 + 12704) = _Q0;
  *(v0 + 9120) = _Q0;
  *(v0 + 12552) = 0x3FEB9B9BC0000000;
  *(v0 + 12576) = 0x3FF0000000000000;
  *(v0 + 12584) = 0;
  *(v0 + 12592) = _Q0;
  *(v0 + 12608) = _Q0;
  *(v0 + 9136) = _Q0;
  *(v0 + 9152) = _Q0;
  *(v0 + 9168) = _Q0;
  *(v0 + 9184) = _Q0;
  *(v0 + 12496) = _Q0;
  *(v0 + 12512) = _Q0;
  *(v0 + 9200) = _Q0;
  *(v0 + 12368) = _Q0;
  *(v0 + 12400) = _Q0;
  *(v0 + 12416) = _Q0;
  *(v0 + 12432) = _Q0;
  *(v0 + 12448) = _Q0;
  *(v0 + 9216) = _Q0;
  *(v0 + 12288) = _Q0;
  *(v0 + 12304) = _Q0;
  *(v0 + 12320) = _Q0;
  *(v0 + 12336) = _Q0;
  *(v0 + 12352) = _Q0;
  *(v0 + 9232) = _Q0;
  *(v0 + 9248) = _Q0;
  *(v0 + 9264) = _Q0;
  *(v0 + 9280) = _Q0;
  *(v0 + 9296) = _Q0;
  *(v0 + 12201) = *v20;
  *(v0 + 12204) = *&v20[3];
  *(v0 + 12232) = 1061158912;
  *(v0 + 9312) = _Q0;
  *(v0 + 9328) = _Q0;
  *(v0 + 12176) = 0x3FF0000000000000;
  *(v0 + 12192) = 0x4031FFFFFFFFFFF6;
  *(v0 + 12200) = 1;
  *(v0 + 9344) = _Q0;
  *(v0 + 9360) = _Q0;
  *(v0 + 9376) = _Q0;
  *(v0 + 12080) = _Q0;
  *(v0 + 12096) = _Q0;
  *(v0 + 12120) = 0x3FE0000000000000;
  *(v0 + 9392) = _Q0;
  *(v0 + 9408) = _Q0;
  *(v0 + 11952) = _Q0;
  *(v0 + 11968) = _Q0;
  *(v0 + 11984) = _Q0;
  *(v0 + 12000) = _Q0;
  *(v0 + 11856) = _Q0;
  *(v0 + 11872) = _Q0;
  *(v0 + 11888) = _Q0;
  *(v0 + 11904) = _Q0;
  *(v0 + 11920) = _Q0;
  *(v0 + 11936) = _Q0;
  *(v0 + 11760) = _Q0;
  *(v0 + 11776) = _Q0;
  *(v0 + 11792) = _Q0;
  *(v0 + 11808) = _Q0;
  *(v0 + 11824) = _Q0;
  *(v0 + 11840) = _Q0;
  *(v0 + 11664) = _Q0;
  *(v0 + 11680) = _Q0;
  *(v0 + 11696) = _Q0;
  *(v0 + 11712) = _Q0;
  *(v0 + 11728) = _Q0;
  *(v0 + 11744) = _Q0;
  *(v0 + 11568) = _Q0;
  *(v0 + 11584) = _Q0;
  *(v0 + 11600) = _Q0;
  *(v0 + 11616) = _Q0;
  *(v0 + 11632) = _Q0;
  *(v0 + 11648) = _Q0;
  *(v0 + 11472) = _Q0;
  *(v0 + 11488) = _Q0;
  *(v0 + 11504) = _Q0;
  *(v0 + 11520) = _Q0;
  *(v0 + 11536) = _Q0;
  *(v0 + 11552) = _Q0;
  *(v0 + 11376) = _Q0;
  *(v0 + 11392) = _Q0;
  *(v0 + 11408) = _Q0;
  *(v0 + 11424) = _Q0;
  *(v0 + 11440) = _Q0;
  *(v0 + 11456) = _Q0;
  *(v0 + 9424) = _Q0;
  *(v0 + 9440) = _Q0;
  *(v0 + 9456) = _Q0;
  *(v0 + 11336) = 0x3FEB9B9BC0000000;
  *(v0 + 11360) = 0x3FF0000000000000;
  *(v0 + 11368) = 0;
  *(v0 + 9472) = _Q0;
  *(v0 + 9488) = _Q0;
  *(v0 + 9504) = _Q0;
  *(v0 + 11216) = _Q0;
  *(v0 + 11232) = _Q0;
  *(v0 + 11296) = _Q0;
  *(v0 + 9520) = _Q0;
  *(v0 + 11120) = _Q0;
  *(v0 + 11136) = _Q0;
  *(v0 + 11152) = _Q0;
  *(v0 + 11184) = _Q0;
  *(v0 + 11200) = _Q0;
  *(v0 + 9536) = _Q0;
  *(v0 + 9552) = _Q0;
  *(v0 + 9568) = _Q0;
  *(v0 + 9648) = _Q0;
  *(v0 + 9664) = _Q0;
  *(v0 + 9688) = 0x3FD9999980000000;
  *(v0 + 9744) = 0x3FF0000000000000;
  *(v0 + 9760) = 0x403DFFFFFFFFFFFELL;
  *(v0 + 11016) = 1061997773;
  *(v0 + 9768) = 0;
  *(v0 + 10985) = *v19;
  *(v0 + 9769) = *v18;
  *(v0 + 10976) = 0x403DFFFFFFFFFFFELL;
  *(v0 + 10984) = 1;
  *(v0 + 10988) = *&v19[3];
  *(v0 + 9772) = *&v18[3];
  *(v0 + 9800) = 1061997773;
  *(v0 + 9904) = _Q0;
  *(v0 + 10904) = 0x3FE0000000000000;
  *(v0 + 10960) = 0x3FF0000000000000;
  *(v0 + 9920) = _Q0;
  *(v0 + 9936) = _Q0;
  *(v0 + 9968) = _Q0;
  *(v0 + 9984) = _Q0;
  *(v0 + 10864) = _Q0;
  *(v0 + 10880) = _Q0;
  *(v0 + 10704) = _Q0;
  *(v0 + 10720) = _Q0;
  *(v0 + 10736) = _Q0;
  *(v0 + 10752) = _Q0;
  *(v0 + 10768) = _Q0;
  *(v0 + 10784) = _Q0;
  *(v0 + 10608) = _Q0;
  *(v0 + 10624) = _Q0;
  *(v0 + 10640) = _Q0;
  *(v0 + 10656) = _Q0;
  *(v0 + 10672) = _Q0;
  *(v0 + 10688) = _Q0;
  *(v0 + 10512) = _Q0;
  *(v0 + 10528) = _Q0;
  *(v0 + 10544) = _Q0;
  *(v0 + 10560) = _Q0;
  *(v0 + 10576) = _Q0;
  *(v0 + 10592) = _Q0;
  *(v0 + 10416) = _Q0;
  *(v0 + 10432) = _Q0;
  *(v0 + 10448) = _Q0;
  *(v0 + 10464) = _Q0;
  *(v0 + 10480) = _Q0;
  *(v0 + 10496) = _Q0;
  *(v0 + 10320) = _Q0;
  *(v0 + 10336) = _Q0;
  *(v0 + 10352) = _Q0;
  *(v0 + 10368) = _Q0;
  *(v0 + 10384) = _Q0;
  *(v0 + 10400) = _Q0;
  *(v0 + 10224) = _Q0;
  *(v0 + 10240) = _Q0;
  *(v0 + 10256) = _Q0;
  *(v0 + 10272) = _Q0;
  *(v0 + 10288) = _Q0;
  *(v0 + 10304) = _Q0;
  *(v0 + 10144) = 0x3FF0000000000000;
  *(v0 + 10152) = 0;
  *(v0 + 10160) = _Q0;
  *(v0 + 10176) = _Q0;
  *(v0 + 10192) = _Q0;
  *(v0 + 10208) = _Q0;
  *(v0 + 10000) = _Q0;
  *(v0 + 10016) = _Q0;
  *(v0 + 10080) = _Q0;
  *(v0 + 10120) = 0x3FEB9B9BC0000000;
  *(v0 + 18336) = _Q0;
  *(v0 + 18400) = _Q0;
  *(v0 + 18480) = _Q0;
  *(v0 + 18496) = _Q0;
  *(v0 + 18640) = _Q0;
  *(v0 + 18672) = _Q0;
  *(v0 + 18688) = _Q0;
  *(v0 + 18704) = _Q0;
  *(v0 + 18720) = _Q0;
  *(v0 + 18736) = _Q0;
  *(v0 + 18752) = _Q0;
  *(v0 + 18768) = _Q0;
  *(v0 + 18784) = _Q0;
  *(v0 + 18800) = _Q0;
  *(v0 + 18816) = _Q0;
  *(v0 + 18832) = _Q0;
  *(v0 + 18848) = _Q0;
  *(v0 + 18864) = _Q0;
  *(v0 + 18880) = _Q0;
  *(v0 + 18896) = _Q0;
  *(v0 + 18912) = _Q0;
  *(v0 + 18928) = _Q0;
  *(v0 + 18944) = _Q0;
  *(v0 + 18960) = _Q0;
  *(v0 + 18976) = _Q0;
  *(v0 + 18992) = _Q0;
  *(v0 + 19008) = _Q0;
  *(v0 + 19024) = _Q0;
  *(v0 + 19040) = _Q0;
  *(v0 + 19056) = _Q0;
  *(v0 + 19072) = _Q0;
  *(v0 + 19088) = _Q0;
  *(v0 + 19104) = _Q0;
  *(v0 + 19120) = _Q0;
  *(v0 + 19136) = _Q0;
  *(v0 + 19152) = _Q0;
  *(v0 + 19168) = _Q0;
  *(v0 + 19184) = _Q0;
  *(v0 + 19200) = _Q0;
  *(v0 + 19216) = _Q0;
  *(v0 + 19232) = _Q0;
  *(v0 + 19248) = _Q0;
  *(v0 + 19264) = _Q0;
  *(v0 + 19280) = _Q0;
  *(v0 + 19296) = _Q0;
  *(v0 + 19392) = _Q0;
  *(v0 + 19696) = _Q0;
  *(v0 + 19712) = _Q0;
  *(v0 + 19728) = _Q0;
  *(v0 + 19744) = _Q0;
  *(v0 + 19760) = _Q0;
  *(v0 + 19808) = _Q0;
  *(v0 + 19856) = _Q0;
  *(v0 + 19888) = _Q0;
  *(v0 + 19904) = _Q0;
  *(v0 + 19920) = _Q0;
  *(v0 + 19936) = _Q0;
  *(v0 + 19952) = _Q0;
  *(v0 + 19968) = _Q0;
  *(v0 + 19984) = _Q0;
  *(v0 + 20000) = _Q0;
  *(v0 + 20016) = _Q0;
  *(v0 + 20032) = _Q0;
  *(v0 + 20048) = _Q0;
  *(v0 + 20064) = _Q0;
  *(v0 + 20080) = _Q0;
  *(v0 + 20096) = _Q0;
  *(v0 + 20112) = _Q0;
  *(v0 + 20128) = _Q0;
  *(v0 + 20144) = _Q0;
  *(v0 + 20160) = _Q0;
  *(v0 + 20176) = _Q0;
  *(v0 + 20192) = _Q0;
  *(v0 + 20208) = _Q0;
  *(v0 + 20224) = _Q0;
  *(v0 + 20240) = _Q0;
  *(v0 + 20256) = _Q0;
  *(v0 + 20272) = _Q0;
  *(v0 + 20288) = _Q0;
  *(v0 + 20304) = _Q0;
  *(v0 + 20320) = _Q0;
  *(v0 + 20336) = _Q0;
  *(v0 + 20352) = _Q0;
  *(v0 + 20368) = _Q0;
  *(v0 + 20384) = _Q0;
  *(v0 + 20400) = _Q0;
  *(v0 + 20416) = _Q0;
  *(v0 + 20432) = _Q0;
  *(v0 + 20448) = _Q0;
  *(v0 + 20464) = _Q0;
  *(v0 + 20480) = _Q0;
  *(v0 + 20496) = _Q0;
  *(v0 + 20512) = _Q0;
  *(v0 + 20608) = _Q0;
  *(v0 + 20656) = _Q0;
  *(v0 + 20912) = _Q0;
  *(v0 + 20928) = _Q0;
  *(v0 + 20944) = _Q0;
  *(v0 + 20960) = _Q0;
  *(v0 + 20976) = _Q0;
  *(v0 + 21024) = _Q0;
  *(v0 + 21072) = _Q0;
  *(v0 + 21104) = _Q0;
  *(v0 + 21120) = _Q0;
  *(v0 + 21136) = _Q0;
  *(v0 + 21152) = _Q0;
  *(v0 + 21168) = _Q0;
  *(v0 + 21184) = _Q0;
  *(v0 + 21200) = _Q0;
  *(v0 + 21216) = _Q0;
  *(v0 + 21232) = _Q0;
  *(v0 + 21248) = _Q0;
  *(v0 + 21264) = _Q0;
  *(v0 + 21280) = _Q0;
  *(v0 + 21296) = _Q0;
  *(v0 + 21312) = _Q0;
  *(v0 + 21328) = _Q0;
  *(v0 + 21344) = _Q0;
  *(v0 + 21360) = _Q0;
  *(v0 + 21376) = _Q0;
  *(v0 + 21392) = _Q0;
  *(v0 + 21408) = _Q0;
  *(v0 + 21424) = _Q0;
  *(v0 + 21440) = _Q0;
  *(v0 + 21456) = _Q0;
  *(v0 + 21472) = _Q0;
  *(v0 + 21488) = _Q0;
  *(v0 + 21504) = _Q0;
  *(v0 + 21520) = _Q0;
  *(v0 + 21536) = _Q0;
  *(v0 + 21552) = _Q0;
  *(v0 + 21568) = _Q0;
  *(v0 + 21584) = _Q0;
  *(v0 + 21600) = _Q0;
  *(v0 + 21616) = _Q0;
  *(v0 + 21632) = _Q0;
  *(v0 + 21648) = _Q0;
  *(v0 + 21664) = _Q0;
  *(v0 + 21680) = _Q0;
  *(v0 + 21696) = _Q0;
  *(v0 + 21712) = _Q0;
  *(v0 + 21728) = _Q0;
  *(v0 + 21824) = _Q0;
  *(v0 + 21872) = _Q0;
  result = 0.799999952;
  *(v0 + 21888) = xmmword_1BCE3D370;
  *(v0 + 7688) = 0x3FEF0AE2E0000000;
  *(v0 + 7712) = 0x3FF0000000000000;
  *(v0 + 7720) = 0;
  *(v0 + 18200) = 0x3FE99999A0000000;
  *(v0 + 18256) = 0x3FF0000000000000;
  *(v0 + 18272) = 0xC028000000000000;
  *(v0 + 18280) = 1;
  *(v0 + 18281) = *v25;
  *(v0 + 18284) = *&v25[3];
  *(v0 + 18312) = 1036831949;
  *(v0 + 18632) = 0x3FF0000000000000;
  *(v0 + 18656) = 0;
  *(v0 + 18664) = 1065353216;
  *(v0 + 19416) = 0x3FE93332C0000000;
  *(v0 + 19472) = 0x3FF0000000000000;
  *(v0 + 19488) = 0xC04E000000000002;
  *(v0 + 19496) = 1;
  *(v0 + 19497) = *v26;
  *(v0 + 19500) = *&v26[3];
  *(v0 + 19528) = 1040242952;
  *(v0 + 19848) = 0x3FF0000000000000;
  *(v0 + 19872) = 0;
  *(v0 + 19880) = 1065353216;
  *(v0 + 20632) = 0x3FEB89F0C0000000;
  *(v0 + 20688) = 0x3FF0000000000000;
  *(v0 + 20704) = 0xC056800000000000;
  *(v0 + 20712) = 1;
  *(v0 + 20713) = *v27;
  *(v0 + 20716) = *&v27[3];
  *(v0 + 20744) = 1040242952;
  *(v0 + 21064) = 0x3FF0000000000000;
  *(v0 + 21088) = 0;
  *(v0 + 21096) = 1065353216;
  *(v0 + 21848) = 0x3FEB89F080000000;
  *(v0 + 21904) = 0x3FF0000000000000;
  return result;
}

id WeatherVFXView.model.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  return v2;
}

uint64_t WeatherVFXView.init(model:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = *(a1 + 24);
  result = swift_getKeyPath();
  *a2 = result;
  *(a2 + 8) = 0;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;
  *(a2 + 40) = v6;
  *(a2 + 41) = 0;
  return result;
}

uint64_t WeatherVFXView.init(model:foregroundEffectsEnabled:)@<X0>(uint64_t *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v8 = *(a1 + 24);
  result = swift_getKeyPath();
  *a3 = result;
  *(a3 + 8) = 0;
  *(a3 + 16) = v5;
  *(a3 + 24) = v6;
  *(a3 + 32) = v7;
  *(a3 + 40) = v8;
  *(a3 + 41) = a2;
  return result;
}

char *WeatherVFXView.makeUIView(context:)()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  v7 = *(v0 + 41);
  type metadata accessor for WeatherVFXView._VFXView();
  v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v12 = v3;
  v13 = v4;
  v14 = v5;
  LOBYTE(v15) = v6;
  v9 = v3;
  v10 = v8;
  VFXView.setupView(with:)(&v12);

  v12 = v1;
  LOBYTE(v13) = v2;
  v14 = v3;
  v15 = v4;
  v16 = v5;
  v17 = v6;
  v18 = v7;
  sub_1BCA6F760(v10);

  return v10;
}

void sub_1BCA6F760(char *a1)
{
  v3 = sub_1BCE1BC20();
  v4 = *(v3 - 8);
  *&v5 = MEMORY[0x1EEE9AC00](v3).n128_u64[0];
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 41) == 1)
  {
    v8 = *v1;
    v9 = *(v1 + 8);
    [a1 setFramebufferOnly_];

    if ((v9 & 1) == 0)
    {
      sub_1BCE1D8C0();
      v10 = sub_1BCE1C1F0();
      sub_1BCE1AC20();

      sub_1BCE1BC10();
      swift_getAtKeyPath();
      j__swift_release(v8, 0);
      (*(v4 + 8))(v7, v3);
      v8 = aBlock[0];
    }

    v11 = *&a1[OBJC_IVAR____TtCV9WeatherUI14WeatherVFXViewP33_101D7DA744F6F695065549099A4FF6838_VFXView_storage];
    v12 = swift_allocObject();
    *(v12 + 16) = v8;
    *(v12 + 24) = v11;
    aBlock[4] = sub_1BCA704C0;
    aBlock[5] = v12;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BCA6FA40;
    aBlock[3] = &block_descriptor_1;
    v13 = _Block_copy(aBlock);

    [a1 setPostRenderCallback_];
    _Block_release(v13);
  }
}

uint64_t sub_1BCA6F9A8(uint64_t result, void *a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v5 = result;
    v6 = *(a4 + 16);

    os_unfair_lock_lock((v6 + 40));
    v7 = *(v6 + 16);
    v8 = *(v6 + 24);
    v9 = *(v6 + 32);
    os_unfair_lock_unlock((v6 + 40));
    sub_1BCA30A34(v5, a2, v7, v8, v9);
  }

  return result;
}

uint64_t sub_1BCA6FA40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v5(a2, a3);

  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

id WeatherVFXView.updateUIView(_:context:)(void *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  if (v3)
  {
    v6 = sub_1BCE1AEE0();
  }

  else
  {
    v6 = 0;
  }

  v7 = [a1 effect];
  if (!v7)
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v8 = v7;
  v9 = sub_1BCE1AEE0();

  if (!v3 || v6 != v9)
  {
LABEL_9:
    [a1 setEffect_];
  }

LABEL_10:
  [a1 scaleFactor];
  if (v4 != v10)
  {
    [a1 setScaleFactor_];
  }

  result = [a1 preferredFramesPerSecond];
  if (v5 != result)
  {

    return [a1 setPreferredFramesPerSecond_];
  }

  return result;
}

void sub_1BCA6FBE8(double a1, double a2, double a3)
{
  v7 = *(v3 + 16);
  os_unfair_lock_lock((v7 + 40));
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *(v7 + 32) = a3;

  os_unfair_lock_unlock((v7 + 40));
}

uint64_t sub_1BCA6FC48()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

void sub_1BCA6FC80()
{
  v6.receiver = v0;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, sel_layoutSubviews);
  [v0 frame];
  v2 = v1;
  v4 = v3;
  [v0 safeAreaInsets];
  sub_1BCA6FBE8(v2, v4, v5);
}

id sub_1BCA6FD58(uint64_t a1, double a2, double a3, double a4, double a5)
{
  ObjectType = swift_getObjectType();
  v12 = OBJC_IVAR____TtCV9WeatherUI14WeatherVFXViewP33_101D7DA744F6F695065549099A4FF6838_VFXView_storage;
  type metadata accessor for WeatherVFXView._VFXView.Storage();
  v13 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08240);
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  *(v14 + 32) = 0;
  *(v14 + 16) = 0;
  *(v14 + 40) = 0;
  *(v13 + 16) = v14;
  *&v5[v12] = v13;
  if (a1)
  {
    v15 = sub_1BCE1D100();
  }

  else
  {
    v15 = 0;
  }

  v18.receiver = v5;
  v18.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v18, sel_initWithFrame_options_, v15, a2, a3, a4, a5);

  return v16;
}

id sub_1BCA6FF08(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtCV9WeatherUI14WeatherVFXViewP33_101D7DA744F6F695065549099A4FF6838_VFXView_storage;
  type metadata accessor for WeatherVFXView._VFXView.Storage();
  v11 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08240);
  v12 = swift_allocObject();
  *(v12 + 24) = 0;
  *(v12 + 32) = 0;
  *(v12 + 16) = 0;
  *(v12 + 40) = 0;
  *(v11 + 16) = v12;
  *&v4[v10] = v11;
  v14.receiver = v4;
  v14.super_class = ObjectType;
  return objc_msgSendSuper2(&v14, sel_initWithFrame_, a1, a2, a3, a4);
}

id sub_1BCA6FFFC(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtCV9WeatherUI14WeatherVFXViewP33_101D7DA744F6F695065549099A4FF6838_VFXView_storage;
  type metadata accessor for WeatherVFXView._VFXView.Storage();
  v5 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08240);
  v6 = swift_allocObject();
  *(v6 + 24) = 0;
  *(v6 + 32) = 0;
  *(v6 + 16) = 0;
  *(v6 + 40) = 0;
  *(v5 + 16) = v6;
  *&v1[v4] = v5;
  v9.receiver = v1;
  v9.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v9, sel_initWithCoder_, a1);

  if (v7)
  {
  }

  return v7;
}

id sub_1BCA700F0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BCA70194(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BCA702D0();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1BCA701F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BCA702D0();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1BCA7025C()
{
  sub_1BCA702D0();
  sub_1BCE1BF10();
  __break(1u);
}

unint64_t sub_1BCA702A8(uint64_t a1)
{
  result = sub_1BCA702D0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1BCA702D0()
{
  result = qword_1EDA1AE28[0];
  if (!qword_1EDA1AE28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDA1AE28);
  }

  return result;
}

unint64_t sub_1BCA70328()
{
  result = qword_1EDA1AE20;
  if (!qword_1EDA1AE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1AE20);
  }

  return result;
}

__n128 __swift_memcpy42_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1BCA7039C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 42))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
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

uint64_t sub_1BCA703F0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 42) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 42) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RectangularContentView.Layout(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for RectangularContentView.Layout(uint64_t result, int a2, int a3)
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

uint64_t Beaufort.Category.color.getter()
{
  v0 = sub_1BCE1A670();

  return static Beaufort.color(level:)(v0);
}

uint64_t static Beaufort.color(level:)(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      v2 = 0x32643962323223;
      goto LABEL_18;
    case 1:
      v6 = 0x633363373023;
      goto LABEL_17;
    case 2:
      v2 = 0x62386362303023;
      goto LABEL_18;
    case 3:
      v3 = 0x353562303023;
      goto LABEL_8;
    case 4:
      v3 = 0x323462343223;
LABEL_8:
      v2 = v3 & 0xFFFFFFFFFFFFLL | 0x36000000000000;
      goto LABEL_18;
    case 5:
      v4 = 1647327523;
      goto LABEL_12;
    case 6:
      v6 = 0x303362356423;
      goto LABEL_17;
    case 7:
      v5 = 1633969187;
      goto LABEL_16;
    case 8:
      v5 = 963011619;
LABEL_16:
      v6 = v5 & 0xFFFF0000FFFFFFFFLL | 0x303500000000;
      goto LABEL_17;
    case 9:
      v4 = 942826787;
LABEL_12:
      v6 = v4 & 0xFFFF0000FFFFFFFFLL | 0x303400000000;
LABEL_17:
      v2 = v6 & 0xFFFFFFFFFFFFLL | 0x30000000000000;
      goto LABEL_18;
    case 10:
      v2 = 0x35303335366523;
      goto LABEL_18;
    case 11:
      v2 = 0x65326432376523;
      goto LABEL_18;
    default:
      v8 = sub_1BCE1A690();
      result = sub_1BCE1A620();
      if (result < v8)
      {
        __break(1u);
      }

      else if (v8 > a1 || result < a1)
      {

        return sub_1BCE1CAA0();
      }

      else
      {
        v2 = 0x34353831386523;
LABEL_18:

        return Color.init(hex:)(v2, 0xE700000000000000);
      }

      return result;
  }
}

Swift::String __swiftcall Beaufort.Category.Range.formattedRange(forAccessibility:)(Swift::Bool forAccessibility)
{
  v3 = Beaufort.Category.Range.formattedRange(forAccessibility:includeUnit:)(forAccessibility, 0);
  object = v3._object;
  countAndFlagsBits = v3._countAndFlagsBits;
  result._object = object;
  result._countAndFlagsBits = countAndFlagsBits;
  return result;
}

Swift::String __swiftcall Beaufort.Category.Range.formattedRange(forAccessibility:includeUnit:)(Swift::Bool forAccessibility, Swift::Bool includeUnit)
{
  v295 = includeUnit;
  v296 = forAccessibility;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08248);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v2);
  v298 = (v271 - v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08250);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v4);
  v272 = v271 - v5;
  v305 = type metadata accessor for NSUnitSpeed.BaseWeatherFormatStyle(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_6_1();
  v291 = v11;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_6_1();
  v292 = v13;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_6_1();
  v300 = v15;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v16);
  v288 = v271 - v17;
  v18 = sub_1BCE19280();
  OUTLINED_FUNCTION_2();
  v303 = v19;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_6_1();
  v290 = v23;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x1EEE9AC00](v26);
  v28 = v271 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07890);
  MEMORY[0x1EEE9AC00](v29 - 8);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_6_1();
  v289 = v36;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_6_1();
  v293 = v38;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_6_1();
  v294 = v40;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_6_1();
  v299 = v43;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x1EEE9AC00](v45);
  v47 = v271 - v46;
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x1EEE9AC00](v49);
  v51 = v271 - v50;
  MEMORY[0x1EEE9AC00](v52);
  v54 = v271 - v53;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07860);
  OUTLINED_FUNCTION_2();
  v306 = v55;
  v307 = v56;
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_3_0();
  v302 = v57;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_6_1();
  v301 = v60;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_6_1();
  v297 = v64;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v65);
  v67 = v271 - v66;
  v281 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08258);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v68);
  v70 = (v271 - v69);
  v71 = sub_1BCE1A660();
  OUTLINED_FUNCTION_2();
  v73 = v72;
  v75 = MEMORY[0x1EEE9AC00](v74);
  v77 = v271 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v73 + 16))(v77, v304, v71, v75);
  v78 = OUTLINED_FUNCTION_14_6();
  v80 = v79(v78);
  v81 = *MEMORY[0x1E69E17A0];
  v304 = v18;
  if (v80 == v81)
  {
    v82 = OUTLINED_FUNCTION_14_6();
    v83(v82);
    v302 = v70;
    sub_1BC999734(v77, v70, &qword_1EBD08258);
    OUTLINED_FUNCTION_19_0();
    __swift_storeEnumTagSinglePayload(v84, v85, v86, v18);
    v87 = sub_1BCE1A3E0();
    sub_1BCE1A3A0();
    sub_1BC9660CC(v54, v51, &qword_1EBD07890);
    if (__swift_getEnumTagSinglePayload(v51, 1, v18) == 1)
    {
      sub_1BC94C05C(v51, &qword_1EBD07890);
      v88 = sub_1BCE1A490();
    }

    else
    {
      v94 = v303;
      (*(v303 + 32))(v28, v51, v18);
      v88 = sub_1BCE1A480();
      (*(v94 + 8))(v28, v18);
    }

    v95 = v88;
    v96 = v306;
    sub_1BCE18680();

    sub_1BC94C05C(v54, &qword_1EBD07890);
    sub_1BCA7207C();
    v97 = *(v307 + 8);
    v307 += 8;
    v298 = v97;
    v97(v67, v96);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD078A8);
    v98 = OUTLINED_FUNCTION_27();
    v99 = type metadata accessor for NSUnitSpeed.WeatherFormatComponent(v98);
    OUTLINED_FUNCTION_11_2(v99);
    v102 = (*(v101 + 80) + 32) & ~*(v101 + 80);
    v276 = *(v100 + 72);
    v278 = v96;
    v103 = swift_allocObject();
    v275 = xmmword_1BCE3E050;
    *(v103 + 16) = xmmword_1BCE3E050;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD078B0);
    v277 = v102;
    OUTLINED_FUNCTION_19_0();
    v274 = v104;
    __swift_storeEnumTagSinglePayload(v105, v106, v107, v104);
    sub_1BC9795A8();
    v109 = v108;
    v110 = v280;
    OUTLINED_FUNCTION_19_0();
    __swift_storeEnumTagSinglePayload(v111, v112, v113, v18);
    sub_1BC9660CC(v110, v47, &qword_1EBD07890);
    v114 = v300;
    *v300 = v109;
    *(v114 + 8) = 1;
    v115 = v282;
    sub_1BC9660CC(v47, v282, &qword_1EBD07890);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v115, 1, v18);
    v287 = v87;
    if (EnumTagSinglePayload == 1)
    {
      v117 = v286;
      if (qword_1EDA1F658 != -1)
      {
        OUTLINED_FUNCTION_1_0();
      }

      sub_1BCE1A9F0();

      sub_1BC94C05C(v47, &qword_1EBD07890);
      v118 = OUTLINED_FUNCTION_14_6();
      sub_1BC94C05C(v118, v119);
      v18 = v304;
      v120 = __swift_getEnumTagSinglePayload(v115, 1, v304);
      v121 = v303;
      if (v120 != 1)
      {
        sub_1BC94C05C(v115, &qword_1EBD07890);
      }
    }

    else
    {
      sub_1BC94C05C(v47, &qword_1EBD07890);
      v127 = OUTLINED_FUNCTION_14_6();
      sub_1BC94C05C(v127, v128);
      v121 = v303;
      v117 = v286;
      (*(v303 + 32))(v286, v115, v18);
    }

    v129 = v305;
    v130 = *(v121 + 32);
    v131 = v300;
    v130(v300 + *(v305 + 24), v117, v18);
    *(v131 + *(v129 + 28)) = 0;
    *(v131 + *(v129 + 32)) = 0;
    v132 = v288;
    sub_1BC979F00(v131, v288);
    v133 = sub_1BCE1A3A0();
    v134 = v297;
    v303 = sub_1BC979F64(v132, 0, v133, v297);
    v300 = v135;

    OUTLINED_FUNCTION_0_19();
    sub_1BC97E9E0();
    v298(v134, v306);
    v136 = v299;
    OUTLINED_FUNCTION_19_0();
    __swift_storeEnumTagSinglePayload(v137, v138, v139, v18);
    sub_1BCE1A3A0();
    v140 = v284;
    sub_1BC9660CC(v136, v284, &qword_1EBD07890);
    if (__swift_getEnumTagSinglePayload(v140, 1, v18) == 1)
    {
      sub_1BC94C05C(v140, &qword_1EBD07890);
      v141 = sub_1BCE1A490();
    }

    else
    {
      v142 = v279;
      v143 = OUTLINED_FUNCTION_10_1();
      (v130)(v143);
      v141 = sub_1BCE1A480();
      (*(v121 + 8))(v142, v18);
    }

    v144 = v291;
    v145 = v141;
    v146 = v283;
    v147 = v306;
    sub_1BCE18680();

    sub_1BC94C05C(v299, &qword_1EBD07890);
    v148 = v285;
    sub_1BCA72170(v285);
    v149 = v298;
    v298(v146, v147);
    sub_1BCA722C4();
    v149(v148, v147);
    if (v295)
    {
      static Set<>.full.getter();
    }

    else
    {
      *(swift_allocObject() + 16) = v275;
      OUTLINED_FUNCTION_19_0();
      __swift_storeEnumTagSinglePayload(v151, v152, v153, v274);
      sub_1BC9795A8();
    }

    v154 = v150;
    v155 = v304;
    OUTLINED_FUNCTION_19_0();
    __swift_storeEnumTagSinglePayload(v156, v157, v158, v155);
    v159 = v293;
    OUTLINED_FUNCTION_15_5();
    sub_1BC9660CC(v160, v161, v162);
    *v144 = v154;
    *(v144 + 8) = 1;
    v163 = v289;
    sub_1BC9660CC(v159, v289, &qword_1EBD07890);
    v164 = __swift_getEnumTagSinglePayload(v163, 1, v155);
    v165 = v302;
    if (v164 == 1)
    {
      v166 = v290;
      if (qword_1EDA1F658 != -1)
      {
        OUTLINED_FUNCTION_1_0();
      }

      sub_1BCE1A9F0();

      OUTLINED_FUNCTION_15_5();
      sub_1BC94C05C(v167, v168);
      OUTLINED_FUNCTION_15_5();
      sub_1BC94C05C(v169, v170);
      if (__swift_getEnumTagSinglePayload(v163, 1, v155) != 1)
      {
        sub_1BC94C05C(v163, &qword_1EBD07890);
      }
    }

    else
    {
      OUTLINED_FUNCTION_15_5();
      sub_1BC94C05C(v171, v172);
      OUTLINED_FUNCTION_15_5();
      sub_1BC94C05C(v173, v174);
      v166 = v290;
      v130(v290, v163, v155);
    }

    v175 = v305;
    v130((v144 + *(v305 + 24)), v166, v155);
    *(v144 + *(v175 + 28)) = 0;
    *(v144 + *(v175 + 32)) = 0;
    v176 = v292;
    sub_1BC979F00(v144, v292);
    v177 = sub_1BCE1A3A0();
    v178 = v301;
    v179 = sub_1BC979F64(v176, 0, v177, v301);
    v181 = v180;

    OUTLINED_FUNCTION_0_19();
    sub_1BC97E9E0();
    v298(v178, v306);
    if (qword_1EDA1EFB0 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    OUTLINED_FUNCTION_7();
    swift_beginAccess();
    v182 = qword_1EDA1EFB8;
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_13_1();
    sub_1BCE18B60();

    v183 = qword_1EDA1EFB8;
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_13_1();
    sub_1BCE18B60();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07880);
    v184 = swift_allocObject();
    *(v184 + 16) = xmmword_1BCE3E030;
    v185 = MEMORY[0x1E69E6158];
    *(v184 + 56) = MEMORY[0x1E69E6158];
    v186 = sub_1BC9804E0();
    v187 = v300;
    *(v184 + 32) = v303;
    *(v184 + 40) = v187;
    *(v184 + 96) = v185;
    *(v184 + 104) = v186;
    *(v184 + 64) = v186;
    *(v184 + 72) = v179;
    *(v184 + 80) = v181;
    sub_1BCE1D250();
    OUTLINED_FUNCTION_21_0();

    v188 = &qword_1EBD08258;
    v189 = v165;
LABEL_53:
    sub_1BC94C05C(v189, v188);
    goto LABEL_54;
  }

  if (v80 == *MEMORY[0x1E69E1798])
  {
    v89 = OUTLINED_FUNCTION_14_6();
    v90(v89);
    v91 = v298;
    sub_1BC999734(v77, v298, &qword_1EBD08248);
    sub_1BCA7207C();
    v92 = v304;
    if (v295)
    {
      static Set<>.full.getter();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD078A8);
      v190 = OUTLINED_FUNCTION_27();
      v191 = type metadata accessor for NSUnitSpeed.WeatherFormatComponent(v190);
      OUTLINED_FUNCTION_11_2(v191);
      *(OUTLINED_FUNCTION_19_6() + 16) = xmmword_1BCE3E050;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD078B0);
      OUTLINED_FUNCTION_19_0();
      __swift_storeEnumTagSinglePayload(v192, v193, v194, v195);
      sub_1BC9795A8();
    }

    v196 = v93;
    v197 = v278;
    v198 = v275;
    v199 = v274;
    OUTLINED_FUNCTION_19_0();
    __swift_storeEnumTagSinglePayload(v200, v201, v202, v92);
    sub_1BC9660CC(v198, v199, &qword_1EBD07890);
    *v197 = v196;
    *(v197 + 8) = 1;
    OUTLINED_FUNCTION_26_2();
    sub_1BC9660CC(v203, v204, &qword_1EBD07890);
    OUTLINED_FUNCTION_8_9();
    if (v205)
    {
      if (qword_1EDA1F658 != -1)
      {
        OUTLINED_FUNCTION_1_0();
      }

      sub_1BCE1A9F0();

      OUTLINED_FUNCTION_15_1();
      sub_1BC94C05C(v206, v207);
      OUTLINED_FUNCTION_15_1();
      sub_1BC94C05C(v208, v209);
      OUTLINED_FUNCTION_8_9();
      if (!v205)
      {
        sub_1BC94C05C(1, &qword_1EBD07890);
      }
    }

    else
    {
      OUTLINED_FUNCTION_15_1();
      sub_1BC94C05C(v212, v213);
      OUTLINED_FUNCTION_15_1();
      sub_1BC94C05C(v214, v215);
      v216 = OUTLINED_FUNCTION_13_8();
      v217(v216);
    }

    v218 = OUTLINED_FUNCTION_16_9();
    v219(v218);
    OUTLINED_FUNCTION_20_4();
    OUTLINED_FUNCTION_26_2();
    sub_1BC979F00(v220, v221);
    v222 = sub_1BCE1A3E0();
    sub_1BCE1A3A0();
    v223 = OUTLINED_FUNCTION_23_3();
    v224 = v302;
    sub_1BC979F64(v223, v225, v226, v302);
    OUTLINED_FUNCTION_21_0();

    OUTLINED_FUNCTION_0_19();
    sub_1BC97E9E0();
    (*(v307 + 8))(v224, v306);
    if (qword_1EDA1EFB0 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    OUTLINED_FUNCTION_7();
    swift_beginAccess();
    v227 = qword_1EDA1EFB8;
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_13_1();
    sub_1BCE18B60();

    v228 = qword_1EDA1EFB8;
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_13_1();
    sub_1BCE18B60();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07880);
    v229 = swift_allocObject();
    *(v229 + 16) = xmmword_1BCE3E050;
    *(v229 + 56) = MEMORY[0x1E69E6158];
    *(v229 + 64) = sub_1BC9804E0();
    *(v229 + 32) = &qword_1EBD07890;
    *(v229 + 40) = v222;
    OUTLINED_FUNCTION_13_8();
    sub_1BCE1D250();
    OUTLINED_FUNCTION_21_0();

    v188 = &qword_1EBD08248;
    v189 = v91;
    goto LABEL_53;
  }

  v122 = v304;
  if (v80 == *MEMORY[0x1E69E1790])
  {
    v123 = OUTLINED_FUNCTION_14_6();
    v124(v123);
    v125 = v272;
    sub_1BC999734(v77, v272, &qword_1EBD08250);
    sub_1BCA72170(v273);
    if (v295)
    {
      static Set<>.full.getter();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD078A8);
      v230 = OUTLINED_FUNCTION_27();
      v231 = type metadata accessor for NSUnitSpeed.WeatherFormatComponent(v230);
      OUTLINED_FUNCTION_11_2(v231);
      *(OUTLINED_FUNCTION_19_6() + 16) = xmmword_1BCE3E050;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD078B0);
      OUTLINED_FUNCTION_19_0();
      __swift_storeEnumTagSinglePayload(v232, v233, v234, v235);
      sub_1BC9795A8();
    }

    v236 = v126;
    v237 = v271[4];
    OUTLINED_FUNCTION_19_0();
    __swift_storeEnumTagSinglePayload(v238, v239, v240, v122);
    OUTLINED_FUNCTION_15_1();
    sub_1BC9660CC(v241, v242, v243);
    *v237 = v236;
    *(v237 + 8) = 1;
    OUTLINED_FUNCTION_26_2();
    sub_1BC9660CC(v244, v245, &qword_1EBD07890);
    OUTLINED_FUNCTION_8_9();
    if (v205)
    {
      if (qword_1EDA1F658 != -1)
      {
        OUTLINED_FUNCTION_1_0();
      }

      sub_1BCE1A9F0();

      OUTLINED_FUNCTION_15_1();
      sub_1BC94C05C(v246, v247);
      OUTLINED_FUNCTION_15_1();
      sub_1BC94C05C(v248, v249);
      OUTLINED_FUNCTION_8_9();
      if (!v205)
      {
        sub_1BC94C05C(1, &qword_1EBD07890);
      }
    }

    else
    {
      OUTLINED_FUNCTION_15_1();
      sub_1BC94C05C(v250, v251);
      OUTLINED_FUNCTION_15_1();
      sub_1BC94C05C(v252, v253);
      v254 = OUTLINED_FUNCTION_13_8();
      v255(v254);
    }

    v256 = OUTLINED_FUNCTION_16_9();
    v257(v256);
    OUTLINED_FUNCTION_20_4();
    OUTLINED_FUNCTION_26_2();
    sub_1BC979F00(v258, v259);
    v260 = sub_1BCE1A3E0();
    sub_1BCE1A3A0();
    v261 = OUTLINED_FUNCTION_23_3();
    v262 = v273;
    sub_1BC979F64(v261, v263, v264, v273);
    OUTLINED_FUNCTION_21_0();

    OUTLINED_FUNCTION_0_19();
    sub_1BC97E9E0();
    (*(v307 + 8))(v262, v306);
    if (qword_1EDA1EFB0 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    OUTLINED_FUNCTION_7();
    swift_beginAccess();
    v265 = qword_1EDA1EFB8;
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_13_1();
    sub_1BCE18B60();

    v266 = qword_1EDA1EFB8;
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_13_1();
    sub_1BCE18B60();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07880);
    v267 = swift_allocObject();
    *(v267 + 16) = xmmword_1BCE3E050;
    *(v267 + 56) = MEMORY[0x1E69E6158];
    *(v267 + 64) = sub_1BC9804E0();
    *(v267 + 32) = &qword_1EBD07890;
    *(v267 + 40) = v260;
    OUTLINED_FUNCTION_13_8();
    sub_1BCE1D250();
    OUTLINED_FUNCTION_21_0();

    v188 = &qword_1EBD08250;
    v189 = v125;
    goto LABEL_53;
  }

  v210 = OUTLINED_FUNCTION_14_6();
  v211(v210);
LABEL_54:
  v268 = OUTLINED_FUNCTION_10_1();
  result._object = v269;
  result._countAndFlagsBits = v268;
  return result;
}

uint64_t sub_1BCA7207C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07860);
  v0 = sub_1BCE185C0();
  v1 = sub_1BCA723E0();

  sub_1BCE185E0();
  if (v2 >= v1)
  {
    OUTLINED_FUNCTION_15_5();

    return v4();
  }

  else
  {
    sub_1BCE185C0();
    sub_1BC947608(0, &qword_1EDA1F1C8);
    OUTLINED_FUNCTION_24_3();

    return sub_1BCE185D0();
  }
}

uint64_t sub_1BCA72170@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07860);
  v5 = sub_1BCE185C0();
  v6 = [objc_opt_self() metersPerSecond];
  sub_1BC947608(0, &qword_1EDA1F1C8);
  v7 = sub_1BCE1DAC0();

  if (v7)
  {
    v8 = *(*(v4 - 8) + 16);

    return v8(a1, v2, v4);
  }

  else
  {
    sub_1BCE185E0();
    sub_1BCE185C0();

    return sub_1BCE185D0();
  }
}

uint64_t sub_1BCA722C4()
{
  sub_1BC947608(0, &qword_1EDA1C0B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07860);
  v0 = sub_1BCE185C0();
  v1 = [objc_opt_self() metersPerSecond];
  sub_1BCE1DAC0();

  sub_1BCE185E0();
  sub_1BCE185C0();
  sub_1BC947608(0, &qword_1EDA1F1C8);
  OUTLINED_FUNCTION_24_3();

  return sub_1BCE185D0();
}

double sub_1BCA723E0()
{
  sub_1BC947608(0, &qword_1EDA1F1C8);
  v0 = sub_1BCE1D880();
  v1 = sub_1BCE1DAC0();

  if (v1)
  {
    return 1.0;
  }

  v3 = objc_opt_self();
  v4 = [v3 kilometersPerHour];
  v5 = sub_1BCE1DAC0();

  result = 2.0;
  if ((v5 & 1) == 0)
  {
    v6 = [v3 knots];
    v7 = sub_1BCE1DAC0();

    if ((v7 & 1) == 0)
    {
      v8 = [v3 metersPerSecond];
      v9 = sub_1BCE1DAC0();

      result = 0.5;
      if (v9)
      {
        return result;
      }

      v10 = [v3 milesPerHour];
      sub_1BCE1DAC0();
    }

    return 1.0;
  }

  return result;
}

uint64_t sub_1BCA72520(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1BCA72568(uint64_t a1@<X8>)
{
  v2 = a1 + 1436;
  sub_1BCA72D40();
  v4 = v3;
  sub_1BCA72D40();
  *a1 = 0x4006666666666666;
  *(a1 + 8) = 6;
  *(a1 + 16) = 0x3FF0000000000000;
  *(a1 + 24) = 48;
  *(a1 + 32) = xmmword_1BCE3BED0;
  *(a1 + 48) = xmmword_1BCE3BED0;
  *(a1 + 64) = 0x42C8000042480000;
  *(a1 + 72) = 0xC409800000000000;
  *(a1 + 80) = xmmword_1BCE3E630;
  *(a1 + 96) = xmmword_1BCE45E70;
  *(a1 + 112) = 0x3E8A3D713E800000;
  *(a1 + 128) = xmmword_1BCE3E650;
  *(a1 + 144) = xmmword_1BCE3E660;
  *(a1 + 160) = xmmword_1BCE3E670;
  *(a1 + 176) = 1168891904;
  *(a1 + 184) = 0x3E75C28F3DF5C28FLL;
  *(a1 + 192) = xmmword_1BCE3E680;
  *(a1 + 208) = xmmword_1BCE3E690;
  *(a1 + 224) = xmmword_1BCE3E6A0;
  *(a1 + 240) = 0x4140000040A00000;
  *(a1 + 248) = 1132068864;
  *(a1 + 256) = 0x3E4CCCCD3DE147AELL;
  *(a1 + 264) = 0x40A0000041700000;
  *(a1 + 272) = 1101004800;
  __asm { FMOV            V0.4S, #1.0 }

  *(a1 + 288) = xmmword_1BCE3C7C0;
  *(a1 + 304) = _Q0;
  *(a1 + 320) = 0x4348000040C00000;
  *(a1 + 328) = 0x3E99999A3E19999ALL;
  *(a1 + 336) = 0x3F00000040A00000;
  *(a1 + 352) = xmmword_1BCE3C7C0;
  *(a1 + 368) = xmmword_1BCE3C700;
  *(a1 + 384) = 0;
  *(a1 + 388) = 0x3CA3D70A3F800000;
  *(a1 + 400) = xmmword_1BCE3BF20;
  *(a1 + 416) = 0x3F0000003F000000;
  *(a1 + 424) = 10;
  *(a1 + 432) = xmmword_1BCE3BF30;
  *(a1 + 448) = 0x3E4CCCCD3DCCCCCDLL;
  *(a1 + 464) = _Q0;
  *(a1 + 480) = xmmword_1BCE3D870;
  *(a1 + 496) = 0x43FA000040400000;
  *(a1 + 504) = 1116471296;
  *(a1 + 512) = 0x3E8000003DF5C28FLL;
  *(a1 + 528) = _Q0;
  *(a1 + 544) = _Q0;
  *(a1 + 560) = 0x4248000044BB8000;
  *(a1 + 568) = 0x3E4CCCCD3DA3D70ALL;
  *(a1 + 576) = xmmword_1BCE3C700;
  *(a1 + 592) = xmmword_1BCE3D880;
  *(a1 + 608) = 0x4100000040A00000;
  *(a1 + 624) = xmmword_1BCE3C700;
  *(a1 + 640) = xmmword_1BCE3D880;
  *(a1 + 656) = 0x4220000041200000;
  *(a1 + 664) = 0x3FC000003E99999ALL;
  *(a1 + 672) = 0x40A000003F800000;
  *(a1 + 688) = _Q0;
  *(a1 + 704) = 1065353216;
  *(a1 + 712) = 0x402CCCCC40066666;
  *(a1 + 720) = vdup_n_s32(0x41827AE1u);
  *(a1 + 728) = 1090519040;
  *(a1 + 736) = 1;
  *(a1 + 744) = 5;
  *(a1 + 752) = xmmword_1BCE3E6B0;
  *(a1 + 768) = 0xD000000000000010;
  *(a1 + 776) = 0x80000001BCE79860;
  *(a1 + 784) = 0xD000000000000014;
  *(a1 + 792) = 0x80000001BCE79880;
  *(a1 + 800) = 10;
  *(a1 + 816) = _Q0;
  *(a1 + 832) = 1065353216;
  *(a1 + 840) = 0x40400000402CCCCCLL;
  *(a1 + 848) = vdup_n_s32(0x40FA3D70u);
  *(a1 + 856) = 1085333800;
  *(a1 + 864) = 1;
  *(a1 + 872) = 4;
  *(a1 + 880) = xmmword_1BCE3E6C0;
  *(a1 + 896) = 0x2073757461727453;
  *(a1 + 904) = 0xEB000000004C202DLL;
  *(a1 + 912) = 0x5F73757461727453;
  *(a1 + 920) = 0xEF4C656C676E6953;
  *(a1 + 928) = 9;
  *(a1 + 944) = _Q0;
  *(a1 + 960) = 1065353216;
  *(a1 + 968) = 0x404000004019999ALL;
  *(a1 + 976) = 0x4100000040E00000;
  *(a1 + 984) = 1088421888;
  *(a1 + 992) = 1;
  *(a1 + 1000) = 4;
  *(a1 + 1008) = xmmword_1BCE3C6F0;
  *(a1 + 1024) = 0x2073756C756D7543;
  *(a1 + 1032) = 0xEB000000004D202DLL;
  *(a1 + 1040) = 0x5F73756C756D7543;
  *(a1 + 1048) = 0xEF4D656C676E6953;
  *(a1 + 1056) = 10;
  *(a1 + 1072) = _Q0;
  *(a1 + 1088) = 1065353216;
  *(a1 + 1096) = 0;
  __asm { FMOV            V2.2S, #3.25 }

  *(a1 + 1104) = _D2;
  *(a1 + 1112) = 0x42820000C0D00000;
  *(a1 + 1120) = 0;
  *(a1 + 1128) = 2;
  *(a1 + 1136) = xmmword_1BCE3FB50;
  *(a1 + 1152) = 0x7970736957;
  *(a1 + 1160) = 0xE500000000000000;
  strcpy((a1 + 1168), "Wispy_Single");
  *(a1 + 1181) = 0;
  *(a1 + 1182) = -5120;
  *(a1 + 1184) = 6;
  *(a1 + 1200) = _Q0;
  *(a1 + 1216) = xmmword_1BCE45E80;
  *(a1 + 1232) = 0;
  *(a1 + 1236) = 1;
  *(a1 + 1240) = 0xD000000000000010;
  *(a1 + 1248) = 0x80000001BCE798A0;
  *(a1 + 1256) = 0xD000000000000015;
  *(a1 + 1264) = 0x80000001BCE798C0;
  *(a1 + 1272) = 6;
  *(a1 + 1280) = 1;
  *(a1 + 1288) = 0x3FAA3D703F88F5C2;
  *(a1 + 1296) = 0x41A0000042B40000;
  *(a1 + 1304) = 0;
  *(a1 + 1312) = _Q0;
  *(a1 + 1328) = _Q0;
  *(a1 + 1344) = 0;
  *(a1 + 1352) = 0x40000000;
  *(a1 + 1360) = 0;
  *(a1 + 1368) = 2;
  *(a1 + 1408) = 0u;
  *(a1 + 1392) = 0u;
  *(a1 + 1376) = 0u;
  *(a1 + 1424) = 0x3F99999A3ECCCCCDLL;
  *(a1 + 1432) = 1;
  *v2 = xmmword_1BCE3BFC0;
  *(a1 + 1456) = 0x42DC000042B40000;
  *(a1 + 1472) = _Q0;
  *(a1 + 1488) = _Q0;
  *(a1 + 1504) = 1097859072;
  *(a1 + 1512) = 0x736168506E6F6F6DLL;
  *(a1 + 1520) = 0xEA00000000003065;
  *(a1 + 1528) = 1112014848;
  *(a1 + 1536) = _Q0;
  *(a1 + 1552) = xmmword_1BCE3E6E0;
  *(a1 + 1568) = 0x42CFE66642A8E147;
  *(a1 + 1584) = 0u;
  *(a1 + 1600) = xmmword_1BCE3E6F0;
  __asm { FMOV            V2.2S, #-30.0 }

  *(a1 + 1616) = -_D2;
  *(a1 + 1624) = 0x40000000;
  *(a1 + 1628) = 16777472;
  *(a1 + 1638) = 0;
  *(a1 + 1632) = 0;
  *(v2 + 210) = 16843009;
  *(a1 + 1650) = 256;
  *(a1 + 1652) = 1;
  *(a1 + 1656) = 0;
  *(a1 + 1657) = v13;
  *(a1 + 1659) = v14;
  *(a1 + 1660) = 1066611507;
  *(a1 + 1664) = 0x40C0000040A00000;
  *(a1 + 1672) = 3;
  *(a1 + 1680) = xmmword_1BCE3C000;
  *(a1 + 1696) = xmmword_1BCE3C010;
  *(a1 + 1712) = xmmword_1BCE3C020;
  *(a1 + 1728) = 0x3F0000003EB33333;
  *(a1 + 1736) = 0x3E800000453B8000;
  *(a1 + 1744) = 0u;
  *(a1 + 1760) = 10;
  *(a1 + 1776) = xmmword_1BCE3D8B0;
  *(a1 + 1792) = xmmword_1BCE3D8C0;
  *(a1 + 1808) = xmmword_1BCE3C7A0;
  *(a1 + 1824) = 1;
  *(a1 + 1828) = xmmword_1BCE3C060;
  *(a1 + 1844) = 1052770304;
  *(a1 + 1848) = 0x4100000041700000;
  *(a1 + 1856) = 3;
  *(a1 + 1864) = 0x40000000;
  *(a1 + 1872) = 0x40C4CCCD40000000;
  *(a1 + 1880) = 1109393408;
  *(a1 + 1888) = _Q0;
  *(a1 + 1904) = 0x3E99999A00000000;
  *(a1 + 1912) = 1101004800;
  *(a1 + 1920) = 0;
  *(a1 + 1928) = 1106247680;
  *(a1 + 1936) = _Q0;
  *(a1 + 1952) = 1077936128;
  *(a1 + 1960) = 0x420C000041C80000;
  *(a1 + 1968) = xmmword_1BCE3E700;
  *(a1 + 1984) = 0x3F80000000000000;
  *(a1 + 1992) = 1061158912;
  *(a1 + 2000) = 0x3F4CCCCD3E4CCCCDLL;
  *(a1 + 2008) = 0x3F6666663F333333;
  *(a1 + 2016) = xmmword_1BCE3C7E0;
  *(a1 + 2096) = 0u;
  *(a1 + 2080) = 0u;
  *(a1 + 2064) = 0u;
  *(a1 + 2048) = 0u;
  *(a1 + 2032) = 0u;
  *(a1 + 2112) = 1056964608;
  *(a1 + 2120) = 0x3E28F5C33D4CCCCDLL;
  *(a1 + 2128) = 0x400000003F800000;
  *(a1 + 2136) = 0x4090000040800000;
  *(a1 + 2144) = -1046478848;
  *(a1 + 2160) = _Q0;
  *(a1 + 2176) = _Q0;
  *(a1 + 2192) = 1051169383;
  *(a1 + 2200) = 10;
  *(a1 + 2208) = 0x40A000003FC00000;
  *(a1 + 2224) = xmmword_1BCE3C090;
  *(a1 + 2240) = xmmword_1BCE3C0A0;
  *(a1 + 2256) = _Q0;
  *(a1 + 2288) = 0u;
  *(a1 + 2272) = 0u;
  *(a1 + 2304) = 3;
  *(a1 + 2312) = v4;
  *(a1 + 2320) = v12;
}

__n128 sub_1BCA72D40()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07858);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BCE3E120;
  *(v0 + 48) = xmmword_1BCE3E710;
  *(v0 + 528) = xmmword_1BCE3E850;
  *(v0 + 1808) = xmmword_1BCE3E910;
  *(v0 + 1824) = xmmword_1BCE3E920;
  *(v0 + 2960) = xmmword_1BCE3EA40;
  *(v0 + 2480) = xmmword_1BCE3CE40;
  *(v0 + 3696) = xmmword_1BCE3CE40;
  *(v0 + 2496) = 0x437A000044BB8000;
  *(v0 + 3712) = 0x437A000044BB8000;
  *(v0 + 2512) = xmmword_1BCE3E930;
  *(v0 + 3728) = xmmword_1BCE3E930;
  *(v0 + 2544) = xmmword_1BCE3E940;
  *(v0 + 3760) = xmmword_1BCE3E940;
  *(v0 + 2560) = xmmword_1BCE3E950;
  *(v0 + 3776) = xmmword_1BCE3E950;
  *(v0 + 2576) = xmmword_1BCE3E960;
  *(v0 + 3792) = xmmword_1BCE3E960;
  *(v0 + 2704) = xmmword_1BCE3E970;
  *(v0 + 3920) = xmmword_1BCE3E970;
  *(v0 + 2720) = xmmword_1BCE3E980;
  *(v0 + 3936) = xmmword_1BCE3E980;
  *(v0 + 2736) = xmmword_1BCE3E990;
  *(v0 + 3952) = xmmword_1BCE3E990;
  *(v0 + 2752) = xmmword_1BCE3E9A0;
  *(v0 + 3968) = xmmword_1BCE3E9A0;
  *(v0 + 2768) = xmmword_1BCE3E9B0;
  *(v0 + 3984) = xmmword_1BCE3E9B0;
  *(v0 + 2784) = xmmword_1BCE3E9C0;
  *(v0 + 4000) = xmmword_1BCE3E9C0;
  *(v0 + 2800) = xmmword_1BCE3FD30;
  *(v0 + 4016) = xmmword_1BCE3FD30;
  *(v0 + 2816) = 1063675494;
  *(v0 + 4032) = 1063675494;
  *(v0 + 2832) = xmmword_1BCE3E9D0;
  *(v0 + 4048) = xmmword_1BCE3E9D0;
  *(v0 + 2864) = xmmword_1BCE3E9E0;
  *(v0 + 4080) = xmmword_1BCE3E9E0;
  *(v0 + 2880) = xmmword_1BCE3E9F0;
  *(v0 + 4096) = xmmword_1BCE3E9F0;
  *(v0 + 2896) = xmmword_1BCE3EA00;
  *(v0 + 4112) = xmmword_1BCE3EA00;
  *(v0 + 2912) = xmmword_1BCE3EA10;
  *(v0 + 4128) = xmmword_1BCE3EA10;
  *(v0 + 2928) = xmmword_1BCE3EA20;
  *(v0 + 4144) = xmmword_1BCE3EA20;
  *(v0 + 2944) = xmmword_1BCE3EA30;
  *(v0 + 4160) = xmmword_1BCE3EA30;
  *(v0 + 4176) = xmmword_1BCE3EAD0;
  *(v0 + 2976) = xmmword_1BCE3EA50;
  *(v0 + 4192) = xmmword_1BCE3EA50;
  *(v0 + 2992) = xmmword_1BCE3EA60;
  *(v0 + 4208) = xmmword_1BCE3EA60;
  *(v0 + 3008) = xmmword_1BCE3EA70;
  *(v0 + 4224) = xmmword_1BCE3EA70;
  v1 = vdupq_n_s64(0x3FE7F7F800000000uLL);
  *(v0 + 3024) = v1;
  *(v0 + 4240) = v1;
  *(v0 + 3040) = xmmword_1BCE3EA80;
  *(v0 + 4256) = xmmword_1BCE3EA80;
  *(v0 + 3440) = xmmword_1BCE3EA90;
  *(v0 + 4656) = xmmword_1BCE3EA90;
  *(v0 + 3456) = xmmword_1BCE3EAA0;
  *(v0 + 4672) = xmmword_1BCE3EAA0;
  *(v0 + 3472) = xmmword_1BCE3EAB0;
  *(v0 + 4688) = xmmword_1BCE3EAB0;
  *(v0 + 3488) = xmmword_1BCE3EAC0;
  *(v0 + 4704) = xmmword_1BCE3EAC0;
  *(v0 + 1264) = xmmword_1BCE3E8F0;
  *(v0 + 4912) = xmmword_1BCE3E8F0;
  *(v0 + 64) = 0x4296000043FA0000;
  *(v0 + 6128) = xmmword_1BCE3E710;
  *(v0 + 1280) = 0x4296000043FA0000;
  *(v0 + 4928) = 0x4296000043FA0000;
  *(v0 + 6144) = 0x4296000043FA0000;
  *(v0 + 80) = xmmword_1BCE3E720;
  *(v0 + 96) = xmmword_1BCE3E730;
  *(v0 + 1296) = xmmword_1BCE3E720;
  *(v0 + 4944) = xmmword_1BCE3E720;
  *(v0 + 6160) = xmmword_1BCE3E720;
  *(v0 + 1312) = xmmword_1BCE3E730;
  *(v0 + 4960) = xmmword_1BCE3E730;
  *(v0 + 6176) = xmmword_1BCE3E730;
  *(v0 + 112) = xmmword_1BCE3E740;
  *(v0 + 128) = xmmword_1BCE3E750;
  *(v0 + 1328) = xmmword_1BCE3E740;
  *(v0 + 4976) = xmmword_1BCE3E740;
  *(v0 + 6192) = xmmword_1BCE3E740;
  *(v0 + 1344) = xmmword_1BCE3E750;
  *(v0 + 4992) = xmmword_1BCE3E750;
  *(v0 + 6208) = xmmword_1BCE3E750;
  *(v0 + 144) = xmmword_1BCE3E760;
  *(v0 + 160) = xmmword_1BCE3E770;
  *(v0 + 1360) = xmmword_1BCE3E760;
  *(v0 + 5008) = xmmword_1BCE3E760;
  *(v0 + 6224) = xmmword_1BCE3E760;
  *(v0 + 1376) = xmmword_1BCE3E770;
  *(v0 + 5024) = xmmword_1BCE3E770;
  *(v0 + 6240) = xmmword_1BCE3E770;
  *(v0 + 240) = xmmword_1BCE3E780;
  *(v0 + 256) = xmmword_1BCE3E790;
  *(v0 + 1456) = xmmword_1BCE3E780;
  *(v0 + 2672) = xmmword_1BCE3E780;
  *(v0 + 3888) = xmmword_1BCE3E780;
  *(v0 + 5104) = xmmword_1BCE3E780;
  *(v0 + 6320) = xmmword_1BCE3E780;
  *(v0 + 1472) = xmmword_1BCE3E790;
  *(v0 + 2688) = xmmword_1BCE3E790;
  *(v0 + 3904) = xmmword_1BCE3E790;
  *(v0 + 5120) = xmmword_1BCE3E790;
  *(v0 + 6336) = xmmword_1BCE3E790;
  *(v0 + 272) = xmmword_1BCE3E7A0;
  *(v0 + 288) = xmmword_1BCE3E7B0;
  *(v0 + 1488) = xmmword_1BCE3E7A0;
  *(v0 + 5136) = xmmword_1BCE3E7A0;
  *(v0 + 6352) = xmmword_1BCE3E7A0;
  *(v0 + 1504) = xmmword_1BCE3E7B0;
  *(v0 + 5152) = xmmword_1BCE3E7B0;
  *(v0 + 6368) = xmmword_1BCE3E7B0;
  *(v0 + 304) = xmmword_1BCE3E7C0;
  *(v0 + 320) = xmmword_1BCE3E1D0;
  *(v0 + 1520) = xmmword_1BCE3E7C0;
  *(v0 + 5168) = xmmword_1BCE3E7C0;
  *(v0 + 6384) = xmmword_1BCE3E7C0;
  *(v0 + 1536) = xmmword_1BCE3E1D0;
  *(v0 + 5184) = xmmword_1BCE3E1D0;
  *(v0 + 6400) = xmmword_1BCE3E1D0;
  *(v0 + 336) = xmmword_1BCE3E7D0;
  *(v0 + 352) = xmmword_1BCE3E7E0;
  *(v0 + 1552) = xmmword_1BCE3E7D0;
  *(v0 + 5200) = xmmword_1BCE3E7D0;
  *(v0 + 6416) = xmmword_1BCE3E7D0;
  *(v0 + 368) = xmmword_1BCE3FC10;
  *(v0 + 1568) = xmmword_1BCE3E7E0;
  *(v0 + 5216) = xmmword_1BCE3E7E0;
  *(v0 + 6432) = xmmword_1BCE3E7E0;
  *(v0 + 384) = 0x3F8000003F666666;
  *(v0 + 1584) = xmmword_1BCE3FC10;
  *(v0 + 5232) = xmmword_1BCE3FC10;
  *(v0 + 6448) = xmmword_1BCE3FC10;
  *(v0 + 1600) = 0x3F8000003F666666;
  *(v0 + 5248) = 0x3F8000003F666666;
  *(v0 + 6464) = 0x3F8000003F666666;
  *(v0 + 432) = xmmword_1BCE3E7F0;
  *(v0 + 448) = xmmword_1BCE3E800;
  *(v0 + 1648) = xmmword_1BCE3E7F0;
  *(v0 + 5296) = xmmword_1BCE3E7F0;
  *(v0 + 6512) = xmmword_1BCE3E7F0;
  *(v0 + 1664) = xmmword_1BCE3E800;
  *(v0 + 5312) = xmmword_1BCE3E800;
  *(v0 + 6528) = xmmword_1BCE3E800;
  *(v0 + 464) = xmmword_1BCE3E810;
  *(v0 + 480) = xmmword_1BCE3E820;
  *(v0 + 1680) = xmmword_1BCE3E810;
  *(v0 + 5328) = xmmword_1BCE3E810;
  *(v0 + 6544) = xmmword_1BCE3E810;
  *(v0 + 1696) = xmmword_1BCE3E820;
  *(v0 + 5344) = xmmword_1BCE3E820;
  *(v0 + 6560) = xmmword_1BCE3E820;
  *(v0 + 1712) = xmmword_1BCE3E830;
  *(v0 + 5360) = xmmword_1BCE3E830;
  *(v0 + 6576) = xmmword_1BCE3E830;
  *(v0 + 496) = xmmword_1BCE3E830;
  *(v0 + 512) = xmmword_1BCE3E840;
  *(v0 + 544) = xmmword_1BCE3E860;
  *(v0 + 1728) = xmmword_1BCE3E840;
  *(v0 + 5376) = xmmword_1BCE3E840;
  *(v0 + 6592) = xmmword_1BCE3E840;
  *(v0 + 1744) = xmmword_1BCE3E900;
  *(v0 + 5392) = xmmword_1BCE3E900;
  *(v0 + 6608) = xmmword_1BCE3E900;
  *(v0 + 1760) = xmmword_1BCE3E860;
  *(v0 + 5408) = xmmword_1BCE3E860;
  *(v0 + 6624) = xmmword_1BCE3E860;
  *(v0 + 560) = xmmword_1BCE3E870;
  *(v0 + 576) = xmmword_1BCE3E880;
  *(v0 + 1776) = xmmword_1BCE3E870;
  *(v0 + 5424) = xmmword_1BCE3E870;
  *(v0 + 6640) = xmmword_1BCE3E870;
  *(v0 + 1792) = xmmword_1BCE3E880;
  *(v0 + 5440) = xmmword_1BCE3E880;
  *(v0 + 6656) = xmmword_1BCE3E880;
  *(v0 + 592) = xmmword_1BCE3E890;
  *(v0 + 608) = xmmword_1BCE3E8A0;
  *(v0 + 5456) = xmmword_1BCE3E890;
  *(v0 + 6672) = xmmword_1BCE3E890;
  *(v0 + 640) = xmmword_1BCE3A880;
  *(v0 + 704) = xmmword_1BCE3A880;
  *(v0 + 5472) = xmmword_1BCE3E8A0;
  *(v0 + 6688) = xmmword_1BCE3E8A0;
  *(v0 + 800) = xmmword_1BCE3DD90;
  *(v0 + 1856) = xmmword_1BCE3A880;
  *(v0 + 1920) = xmmword_1BCE3A880;
  *(v0 + 3072) = xmmword_1BCE3A880;
  *(v0 + 3136) = xmmword_1BCE3A880;
  *(v0 + 4288) = xmmword_1BCE3A880;
  *(v0 + 4352) = xmmword_1BCE3A880;
  *(v0 + 5504) = xmmword_1BCE3A880;
  *(v0 + 5568) = xmmword_1BCE3A880;
  *(v0 + 6720) = xmmword_1BCE3A880;
  *(v0 + 6784) = xmmword_1BCE3A880;
  *(v0 + 2016) = xmmword_1BCE3DD90;
  *(v0 + 3232) = xmmword_1BCE3DD90;
  *(v0 + 4448) = xmmword_1BCE3DD90;
  *(v0 + 5664) = xmmword_1BCE3DD90;
  *(v0 + 6880) = xmmword_1BCE3DD90;
  *(v0 + 2224) = xmmword_1BCE3E8B0;
  *(v0 + 5872) = xmmword_1BCE3E8B0;
  *(v0 + 7088) = xmmword_1BCE3E8B0;
  *(v0 + 1008) = xmmword_1BCE3E8B0;
  *(v0 + 1024) = xmmword_1BCE3E8C0;
  __asm { FMOV            V0.2D, #1.0 }

  *(v0 + 2240) = xmmword_1BCE3E8C0;
  *(v0 + 5888) = xmmword_1BCE3E8C0;
  *(v0 + 7104) = xmmword_1BCE3E8C0;
  *(v0 + 1040) = xmmword_1BCE3E8D0;
  *(v0 + 2256) = xmmword_1BCE3E8D0;
  *(v0 + 5904) = xmmword_1BCE3E8D0;
  *(v0 + 7120) = xmmword_1BCE3E8D0;
  *(v0 + 1056) = xmmword_1BCE3E8E0;
  *(v0 + 2272) = xmmword_1BCE3E8E0;
  *(v0 + 5920) = xmmword_1BCE3E8E0;
  *(v0 + 7136) = xmmword_1BCE3E8E0;
  *(v0 + 224) = xmmword_1BCE3C8C0;
  *(v0 + 736) = xmmword_1BCE3C8C0;
  *(v0 + 960) = xmmword_1BCE3C8C0;
  *(v0 + 1088) = xmmword_1BCE3C8C0;
  *(v0 + 1440) = xmmword_1BCE3C8C0;
  *(v0 + 1952) = xmmword_1BCE3C8C0;
  *(v0 + 2176) = xmmword_1BCE3C8C0;
  *(v0 + 2304) = xmmword_1BCE3C8C0;
  *(v0 + 2656) = xmmword_1BCE3C8C0;
  *(v0 + 3168) = xmmword_1BCE3C8C0;
  *(v0 + 3392) = xmmword_1BCE3C8C0;
  *(v0 + 3520) = xmmword_1BCE3C8C0;
  *(v0 + 3872) = xmmword_1BCE3C8C0;
  *(v0 + 4384) = xmmword_1BCE3C8C0;
  *(v0 + 4608) = xmmword_1BCE3C8C0;
  *(v0 + 4736) = xmmword_1BCE3C8C0;
  *(v0 + 5088) = xmmword_1BCE3C8C0;
  *(v0 + 5600) = xmmword_1BCE3C8C0;
  *(v0 + 5824) = xmmword_1BCE3C8C0;
  *(v0 + 5952) = xmmword_1BCE3C8C0;
  *(v0 + 6304) = xmmword_1BCE3C8C0;
  *(v0 + 6816) = xmmword_1BCE3C8C0;
  *(v0 + 7040) = xmmword_1BCE3C8C0;
  *(v0 + 7168) = xmmword_1BCE3C8C0;
  *(v0 + 992) = xmmword_1BCE3DAE0;
  *(v0 + 1120) = xmmword_1BCE3DAE0;
  *(v0 + 2208) = xmmword_1BCE3DAE0;
  *(v0 + 2336) = xmmword_1BCE3DAE0;
  *(v0 + 3264) = result;
  *(v0 + 3280) = result;
  *(v0 + 3296) = result;
  *(v0 + 3312) = result;
  *(v0 + 3424) = xmmword_1BCE3DAE0;
  *(v0 + 3504) = result;
  *(v0 + 3328) = result;
  *(v0 + 3344) = result;
  *(v0 + 3360) = result;
  *(v0 + 3376) = result;
  *(v0 + 3408) = result;
  *(v0 + 3552) = xmmword_1BCE3DAE0;
  *(v0 + 4640) = xmmword_1BCE3DAE0;
  *(v0 + 4768) = xmmword_1BCE3DAE0;
  *(v0 + 5856) = xmmword_1BCE3DAE0;
  *(v0 + 5984) = xmmword_1BCE3DAE0;
  *(v0 + 7072) = xmmword_1BCE3DAE0;
  *(v0 + 7200) = xmmword_1BCE3DAE0;
  *(v0 + 1168) = 0x4170000042480000;
  *(v0 + 3184) = result;
  *(v0 + 3200) = result;
  *(v0 + 3216) = result;
  *(v0 + 3248) = result;
  *(v0 + 2384) = 0x4170000042480000;
  *(v0 + 3088) = result;
  *(v0 + 3104) = result;
  *(v0 + 3120) = result;
  *(v0 + 3152) = result;
  *(v0 + 3600) = 0x4170000042480000;
  *(v0 + 4816) = 0x4170000042480000;
  *(v0 + 6032) = 0x4170000042480000;
  *(v0 + 7248) = 0x4170000042480000;
  *(v0 + 192) = result;
  *(v0 + 208) = result;
  *(v0 + 624) = result;
  *(v0 + 3056) = result;
  *(v0 + 672) = result;
  *(v0 + 688) = result;
  *(v0 + 720) = result;
  *(v0 + 768) = result;
  *(v0 + 784) = result;
  *(v0 + 944) = result;
  *(v0 + 976) = result;
  *(v0 + 176) = result;
  *(v0 + 2824) = 0x3FF0000000000000;
  *(v0 + 2848) = 0x3FF0000000000000;
  *(v0 + 2856) = 0;
  *(v0 + 400) = result;
  *(v0 + 416) = 0x3FF0000000000000;
  *(v0 + 424) = 0;
  *(v0 + 656) = result;
  *(v0 + 752) = result;
  *(v0 + 816) = result;
  *(v0 + 832) = result;
  *(v0 + 848) = result;
  *(v0 + 864) = result;
  *(v0 + 2640) = result;
  *(v0 + 880) = result;
  *(v0 + 896) = result;
  *(v0 + 2592) = result;
  *(v0 + 2608) = result;
  *(v0 + 2624) = result;
  *(v0 + 912) = result;
  *(v0 + 928) = result;
  *(v0 + 1072) = result;
  *(v0 + 1104) = result;
  *(v0 + 2400) = result;
  *(v0 + 2528) = result;
  *(v0 + 2473) = *v8;
  *(v0 + 2476) = *&v8[3];
  *(v0 + 2504) = 1062836634;
  *(v0 + 2416) = result;
  *(v0 + 2432) = result;
  *(v0 + 2448) = 0x3FF0000000000000;
  *(v0 + 2464) = 0x404E000000000000;
  *(v0 + 2472) = 0;
  *(v0 + 1136) = result;
  *(v0 + 1152) = result;
  *(v0 + 2320) = result;
  *(v0 + 2352) = result;
  *(v0 + 2368) = result;
  *(v0 + 2392) = 0x3FF0000000000000;
  *(v0 + 1176) = 0x3FF0000000000000;
  *(v0 + 1184) = result;
  *(v0 + 1200) = result;
  *(v0 + 1216) = result;
  *(v0 + 1232) = 0x3FF0000000000000;
  *(v0 + 2288) = result;
  *(v0 + 1248) = 0xC031FFFFFFFFFFFFLL;
  *(v0 + 1256) = 0;
  *(v0 + 2192) = result;
  *(v0 + 1257) = *v7;
  *(v0 + 2112) = result;
  *(v0 + 2128) = result;
  *(v0 + 2144) = result;
  *(v0 + 2160) = result;
  *(v0 + 1260) = *&v7[3];
  *(v0 + 2032) = result;
  *(v0 + 2048) = result;
  *(v0 + 2064) = result;
  *(v0 + 2080) = result;
  *(v0 + 2096) = result;
  *(v0 + 1288) = 1060320051;
  *(v0 + 1392) = result;
  *(v0 + 1936) = result;
  *(v0 + 1968) = result;
  *(v0 + 1984) = result;
  *(v0 + 2000) = result;
  *(v0 + 1408) = result;
  *(v0 + 1424) = result;
  *(v0 + 1840) = result;
  *(v0 + 1872) = result;
  *(v0 + 1888) = result;
  *(v0 + 1904) = result;
  *(v0 + 1608) = 0x3FF0000000000000;
  *(v0 + 1616) = result;
  *(v0 + 1632) = 0x3FF0000000000000;
  *(v0 + 1640) = 0;
  *(v0 + 3536) = result;
  *(v0 + 3568) = result;
  *(v0 + 3584) = result;
  *(v0 + 3616) = result;
  *(v0 + 3632) = result;
  *(v0 + 3648) = result;
  *(v0 + 3744) = result;
  *(v0 + 3808) = result;
  *(v0 + 3824) = result;
  *(v0 + 3840) = result;
  *(v0 + 3856) = result;
  *(v0 + 4272) = result;
  *(v0 + 4304) = result;
  *(v0 + 4320) = result;
  *(v0 + 4336) = result;
  *(v0 + 4368) = result;
  *(v0 + 4400) = result;
  *(v0 + 4416) = result;
  *(v0 + 4432) = result;
  *(v0 + 4464) = result;
  *(v0 + 4480) = result;
  *(v0 + 4496) = result;
  *(v0 + 4512) = result;
  *(v0 + 4528) = result;
  *(v0 + 4544) = result;
  *(v0 + 4560) = result;
  *(v0 + 4576) = result;
  *(v0 + 4592) = result;
  *(v0 + 4624) = result;
  *(v0 + 4720) = result;
  *(v0 + 4752) = result;
  *(v0 + 4784) = result;
  *(v0 + 4800) = result;
  *(v0 + 4832) = result;
  *(v0 + 4848) = result;
  *(v0 + 4864) = result;
  *(v0 + 5040) = result;
  *(v0 + 5056) = result;
  *(v0 + 5072) = result;
  *(v0 + 5264) = result;
  *(v0 + 5488) = result;
  *(v0 + 5520) = result;
  *(v0 + 5536) = result;
  *(v0 + 5552) = result;
  *(v0 + 5584) = result;
  *(v0 + 5616) = result;
  *(v0 + 5632) = result;
  *(v0 + 5648) = result;
  *(v0 + 5680) = result;
  *(v0 + 5696) = result;
  *(v0 + 5712) = result;
  *(v0 + 5728) = result;
  *(v0 + 5744) = result;
  *(v0 + 5760) = result;
  *(v0 + 5776) = result;
  *(v0 + 5792) = result;
  *(v0 + 5808) = result;
  *(v0 + 5840) = result;
  *(v0 + 5936) = result;
  *(v0 + 5968) = result;
  *(v0 + 6000) = result;
  *(v0 + 6016) = result;
  *(v0 + 6048) = result;
  *(v0 + 6064) = result;
  *(v0 + 6080) = result;
  *(v0 + 6256) = result;
  *(v0 + 6272) = result;
  *(v0 + 6288) = result;
  *(v0 + 6480) = result;
  *(v0 + 6704) = result;
  *(v0 + 6736) = result;
  *(v0 + 6752) = result;
  *(v0 + 6768) = result;
  *(v0 + 6800) = result;
  *(v0 + 6832) = result;
  *(v0 + 6848) = result;
  *(v0 + 6864) = result;
  *(v0 + 6896) = result;
  *(v0 + 6912) = result;
  *(v0 + 6928) = result;
  *(v0 + 6944) = result;
  *(v0 + 6960) = result;
  *(v0 + 6976) = result;
  *(v0 + 6992) = result;
  *(v0 + 7008) = result;
  *(v0 + 7024) = result;
  *(v0 + 7056) = result;
  *(v0 + 7152) = result;
  *(v0 + 7184) = result;
  *(v0 + 7216) = result;
  *(v0 + 7232) = result;
  *(v0 + 7264) = result;
  *(v0 + 7280) = result;
  *(v0 + 7296) = result;
  *(v0 + 392) = 0x3FF0000000000000;
  *(v0 + 32) = 0xC056800000000000;
  *(v0 + 40) = 0;
  *(v0 + 72) = 1060320051;
  *(v0 + 3608) = 0x3FF0000000000000;
  *(v0 + 3689) = *v9;
  *(v0 + 3664) = 0x3FF0000000000000;
  *(v0 + 3680) = 0x404E000000000000;
  *(v0 + 3688) = 1;
  *(v0 + 3692) = *&v9[3];
  *(v0 + 3720) = 1062836634;
  *(v0 + 4040) = 0x3FF0000000000000;
  *(v0 + 4064) = 0x3FF0000000000000;
  *(v0 + 4072) = 0;
  *(v0 + 4824) = 0x3FF0000000000000;
  *(v0 + 4880) = 0x3FF0000000000000;
  *(v0 + 4896) = 0xC032000000000004;
  *(v0 + 4905) = *v10;
  *(v0 + 4904) = 1;
  *(v0 + 4908) = *&v10[3];
  *(v0 + 4936) = 1060320051;
  *(v0 + 5256) = 0x3FF0000000000000;
  *(v0 + 5280) = 0x3FF0000000000000;
  *(v0 + 5288) = 0;
  *(v0 + 6040) = 0x3FF0000000000000;
  *(v0 + 6096) = 0x3FF0000000000000;
  *(v0 + 6112) = 0xC056800000000000;
  *(v0 + 6120) = 1;
  *(v0 + 6121) = *v11;
  *(v0 + 6124) = *&v11[3];
  *(v0 + 6152) = 1060320051;
  *(v0 + 6472) = 0x3FF0000000000000;
  *(v0 + 6496) = 0x3FF0000000000000;
  *(v0 + 6504) = 0;
  *(v0 + 7256) = 0x3FF0000000000000;
  *(v0 + 7312) = 0x3FF0000000000000;
  return result;
}

uint64_t WeatherConditionPlaybackCoordinator.ReduceMotionOverrideBehavior.hashValue.getter()
{
  v1 = *v0;
  sub_1BCE1E100();
  MEMORY[0x1BFB30850](v1);
  return sub_1BCE1E150();
}

uint64_t sub_1BCA73890()
{
  sub_1BCE1E100();
  WeatherConditionPlaybackCoordinator.ReduceMotionOverrideBehavior.hash(into:)();
  return sub_1BCE1E150();
}

uint64_t WeatherConditionPlaybackCoordinator.__allocating_init(lazyMedia:)(uint64_t a1)
{
  OUTLINED_FUNCTION_0_20();
  v2 = swift_allocObject();
  WeatherConditionPlaybackCoordinator.init(lazyMedia:)(a1);
  return v2;
}

uint64_t WeatherConditionPlaybackCoordinator.init(lazyMedia:)(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 40) = 0;
  *(v1 + 48) = sub_1BC94E4FC();
  *(v1 + 24) = a1;
  *(v1 + 32) = 1;
  return v1;
}

uint64_t WeatherConditionPlaybackCoordinator.__allocating_init(lazyMedia:reduceMotionOverrideBehavior:)(uint64_t a1, char *a2)
{
  OUTLINED_FUNCTION_0_20();
  v4 = swift_allocObject();
  WeatherConditionPlaybackCoordinator.init(lazyMedia:reduceMotionOverrideBehavior:)(a1, a2);
  return v4;
}

uint64_t WeatherConditionPlaybackCoordinator.init(lazyMedia:reduceMotionOverrideBehavior:)(uint64_t a1, char *a2)
{
  v4 = *a2;
  *(v2 + 16) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = sub_1BC94E4FC();
  *(v2 + 24) = a1;
  *(v2 + 32) = v4;
  return v2;
}

void sub_1BCA739EC(void *a1, float a2, float a3, uint64_t a4, uint64_t *a5, _OWORD *a6, uint64_t a7, void (*a8)(id), uint64_t a9)
{
  v33[1] = a9;
  v14 = *a5;
  v15 = sub_1BCE19060();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BCE19050();
  sub_1BCE18F90();
  v20 = v19;
  (*(v16 + 8))(v18, v15);
  v21 = a6[1];
  v34[0] = *a6;
  v34[1] = v21;
  v34[2] = a6[2];
  v22 = sub_1BCA73CF8(v34, v20);
  v23 = v22;
  v24 = ((a3 - a2) * v23) + a2;
  v25 = *(v14 + 88);
  v26 = *(v14 + 80);
  v27 = (*(v25 + 32))(v26, v25);
  (*(v25 + 16))(v26, v25, v24);
  (*(v25 + 40))(v24 == 0.0, v26, v25);
  if ((v24 == 0.0) != (v27 & 1))
  {
    if (qword_1EDA1EE78 != -1)
    {
      swift_once();
    }

    v28 = sub_1BCE1ACC0();
    __swift_project_value_buffer(v28, qword_1EDA1EE80);
    v29 = sub_1BCE1ACA0();
    v30 = sub_1BCE1D8D0();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 67240704;
      *(v31 + 4) = v27 & 1;
      *(v31 + 8) = 1026;
      *(v31 + 10) = v24 == 0.0;
      *(v31 + 14) = 2050;
      *(v31 + 16) = v24;
      _os_log_impl(&dword_1BC940000, v29, v30, "Playback coordinator updated isFrozen state (animated); from=%{BOOL,public}d, to=%{BOOL,public}d, timeScale=%{public}f", v31, 0x18u);
      MEMORY[0x1BFB31B10](v31, -1, -1);
    }
  }

  if (v22 >= 1.0)
  {
    v32 = [a1 invalidate];
    if (a8)
    {
      a8(v32);
    }
  }
}

double sub_1BCA73CF8(uint64_t a1, double a2)
{
  v2 = 1.0;
  if (*(a1 + 40) > a2)
  {
    v3 = sub_1BCCDC064(a2);
    v2 = 1.0;
    if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
    {
      return v3;
    }
  }

  return v2;
}

uint64_t WeatherConditionPlaybackCoordinator.deinit()
{

  return v0;
}

uint64_t WeatherConditionPlaybackCoordinator.__deallocating_deinit()
{
  WeatherConditionPlaybackCoordinator.deinit();
  v0 = OUTLINED_FUNCTION_0_20();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

_BYTE *sub_1BCA73E7C(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_1BCA73F60(void *a1)
{
  v3 = *(sub_1BCE19060() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 51) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + v5);
  v10 = (v1 + v7);
  v11 = *v10;
  v12 = v10[1];
  v13 = *(v1 + v8);
  v14 = v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8);
  v15 = *v14;
  v16 = *(v14 + 8);

  sub_1BCA739EC(a1, v11, v12, v1 + v4, v9, (v1 + v6), v13, v15, v16);
}

uint64_t sub_1BCA74034(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_1BCA74044(uint64_t a1@<X8>)
{
  v2 = a1 + 1436;
  sub_1BCA74794();
  v4 = v3;
  sub_1BCA74794();
  *a1 = 0x4006666666666666;
  *(a1 + 8) = 2;
  *(a1 + 16) = 0x3FF0000000000000;
  *(a1 + 24) = 30;
  *(a1 + 32) = xmmword_1BCE3BED0;
  *(a1 + 48) = xmmword_1BCE3BED0;
  *(a1 + 64) = 0x42DC000042480000;
  *(a1 + 72) = 0xC348000000000000;
  *(a1 + 80) = xmmword_1BCE3BEE0;
  *(a1 + 96) = xmmword_1BCE3BEF0;
  *(a1 + 112) = 0x3E8000003DF5C28FLL;
  __asm { FMOV            V0.4S, #1.0 }

  *(a1 + 128) = _Q0;
  *(a1 + 144) = _Q0;
  *(a1 + 160) = xmmword_1BCE3BF00;
  *(a1 + 176) = 1153138688;
  *(a1 + 184) = 0x3E4CCCCD3DA3D70ALL;
  *(a1 + 192) = _Q0;
  *(a1 + 208) = _Q0;
  *(a1 + 224) = xmmword_1BCE3C660;
  *(a1 + 240) = 0x4140000040A00000;
  *(a1 + 248) = 1132068864;
  *(a1 + 256) = 0x3E4CCCCD3DE147AELL;
  *(a1 + 264) = 0x40A0000041700000;
  *(a1 + 272) = 1101004800;
  *(a1 + 288) = _Q0;
  *(a1 + 304) = _Q0;
  *(a1 + 320) = 0x4348000040C00000;
  *(a1 + 328) = 0x3E99999A3E19999ALL;
  *(a1 + 336) = 0x3F00000040A00000;
  *(a1 + 352) = _Q0;
  *(a1 + 368) = _Q0;
  *(a1 + 384) = 0;
  *(a1 + 388) = 0x3CA3D70A3EC1C9A8;
  *(a1 + 400) = xmmword_1BCE3BF20;
  *(a1 + 416) = 0x3F0000003F000000;
  *(a1 + 424) = 10;
  *(a1 + 432) = xmmword_1BCE3BF30;
  *(a1 + 448) = 0x3E4CCCCD3DCCCCCDLL;
  *(a1 + 464) = _Q0;
  *(a1 + 480) = _Q0;
  *(a1 + 496) = 0x43FA000040400000;
  *(a1 + 504) = 1116471296;
  *(a1 + 512) = 0x3E8000003DF5C28FLL;
  *(a1 + 528) = _Q0;
  *(a1 + 544) = _Q0;
  *(a1 + 560) = 0x4248000044BB8000;
  *(a1 + 568) = 0x3E4CCCCD3DA3D70ALL;
  *(a1 + 576) = _Q0;
  *(a1 + 592) = _Q0;
  *(a1 + 608) = 0x4100000040A00000;
  *(a1 + 624) = _Q0;
  *(a1 + 640) = _Q0;
  *(a1 + 656) = 0x4220000041200000;
  *(a1 + 664) = 0x3FC000003E99999ALL;
  *(a1 + 672) = 0x40A000003F800000;
  *(a1 + 688) = _Q0;
  *(a1 + 704) = 1065353216;
  *(a1 + 712) = 0x3F8000003F000000;
  *(a1 + 720) = 0x400000003FC00000;
  *(a1 + 728) = 0;
  *(a1 + 736) = 1;
  *(a1 + 744) = 4;
  *(a1 + 752) = xmmword_1BCE3BF40;
  *(a1 + 768) = 0x617274736F746C41;
  *(a1 + 776) = 0xEF53202D20737574;
  *(a1 + 784) = 0xD000000000000013;
  *(a1 + 792) = 0x80000001BCE792E0;
  *(a1 + 800) = 6;
  *(a1 + 816) = xmmword_1BCE3F000;
  *(a1 + 832) = 1080033280;
  *(a1 + 840) = vdup_n_s32(0x3F333333u);
  *(a1 + 848) = 0x41E0000041D00000;
  *(a1 + 856) = 3229614080;
  *(a1 + 864) = 0;
  *(a1 + 872) = 4;
  *(a1 + 880) = xmmword_1BCE3BF60;
  *(a1 + 896) = 0x7970736957;
  *(a1 + 904) = 0xE500000000000000;
  strcpy((a1 + 912), "Wispy_Single");
  *(a1 + 925) = 0;
  *(a1 + 926) = -5120;
  *(a1 + 928) = 6;
  *(a1 + 944) = xmmword_1BCE3F010;
  *(a1 + 960) = 1080662426;
  *(a1 + 968) = vdup_n_s32(0x3F666666u);
  *(a1 + 976) = 0x4170000041500000;
  *(a1 + 984) = 3231711232;
  *(a1 + 992) = 0;
  *(a1 + 1000) = 4;
  *(a1 + 1008) = xmmword_1BCE3F020;
  *(a1 + 1024) = 0x7970736957;
  *(a1 + 1032) = 0xE500000000000000;
  strcpy((a1 + 1040), "Wispy_Single");
  *(a1 + 1053) = 0;
  *(a1 + 1054) = -5120;
  *(a1 + 1056) = 6;
  *(a1 + 1072) = xmmword_1BCE3F030;
  *(a1 + 1088) = 1081081856;
  *(a1 + 1096) = vdup_n_s32(0x3F933333u);
  __asm { FMOV            V2.2S, #6.0 }

  *(a1 + 1104) = _D2;
  *(a1 + 1120) = 0;
  *(a1 + 1112) = 0;
  *(a1 + 1128) = 3;
  *(a1 + 1136) = xmmword_1BCE3F040;
  *(a1 + 1152) = 0x7970736957;
  *(a1 + 1160) = 0xE500000000000000;
  strcpy((a1 + 1168), "Wispy_Single");
  *(a1 + 1181) = 0;
  *(a1 + 1182) = -5120;
  *(a1 + 1184) = 6;
  *(a1 + 1200) = _Q0;
  *(a1 + 1216) = xmmword_1BCE3BFA0;
  *(a1 + 1232) = 0;
  *(a1 + 1236) = 1;
  *(a1 + 1240) = 0x617274736F746C41;
  *(a1 + 1248) = 0xEB00000000737574;
  *(a1 + 1256) = 0xD000000000000013;
  *(a1 + 1264) = 0x80000001BCE79300;
  *(a1 + 1272) = 8;
  *(a1 + 1280) = 0;
  *(a1 + 1288) = 0x400000003F800000;
  *(a1 + 1296) = 0x41C8000042C80000;
  *(a1 + 1304) = 0;
  *(a1 + 1312) = _Q0;
  *(a1 + 1328) = _Q0;
  *(a1 + 1344) = 0;
  *(a1 + 1352) = 0x40000000;
  *(a1 + 1360) = 0;
  *(a1 + 1368) = 1;
  *(a1 + 1376) = _Q0;
  *(a1 + 1392) = xmmword_1BCE3BFB0;
  *(a1 + 1408) = _Q0;
  *(a1 + 1424) = 0x3F99999A3ECCCCCDLL;
  *(a1 + 1432) = 1;
  *v2 = xmmword_1BCE3BFC0;
  *(a1 + 1456) = 0x42DC000042B40000;
  *(a1 + 1472) = _Q0;
  *(a1 + 1488) = _Q0;
  *(a1 + 1504) = 1097859072;
  *(a1 + 1512) = 0x736168506E6F6F6DLL;
  *(a1 + 1520) = 0xEA00000000003065;
  *(a1 + 1528) = 1112014848;
  *(a1 + 1536) = _Q0;
  *(a1 + 1552) = xmmword_1BCE46040;
  *(a1 + 1568) = 0x4238000042340000;
  *(a1 + 1584) = xmmword_1BCE3BFE0;
  *(a1 + 1600) = xmmword_1BCE3BFF0;
  *(a1 + 1616) = 0x4100000040C00000;
  *(a1 + 1624) = 0x40000000;
  *(a1 + 1628) = 0x1000000;
  *(a1 + 1636) = 256;
  *(a1 + 1632) = 0;
  *(v2 + 202) = 0;
  *(v2 + 210) = 16777217;
  *(a1 + 1650) = 257;
  *(a1 + 1652) = 0;
  *(a1 + 1656) = 0;
  *(a1 + 1657) = v12;
  *(a1 + 1659) = v13;
  *(a1 + 1660) = 1066611507;
  *(a1 + 1664) = 0x40C0000040A00000;
  *(a1 + 1672) = 3;
  *(a1 + 1680) = xmmword_1BCE3C000;
  *(a1 + 1696) = xmmword_1BCE3C010;
  *(a1 + 1712) = xmmword_1BCE3C020;
  *(a1 + 1728) = 0x3F0000003EB33333;
  *(a1 + 1736) = 0x3E800000453B8000;
  *(a1 + 1744) = 0u;
  *(a1 + 1760) = 11;
  *(a1 + 1776) = xmmword_1BCE3C030;
  *(a1 + 1792) = xmmword_1BCE3F050;
  *(a1 + 1808) = xmmword_1BCE3F060;
  *(a1 + 1824) = 1;
  *(a1 + 1828) = xmmword_1BCE3F070;
  *(a1 + 1844) = 1040187392;
  *(a1 + 1848) = 0x41C8000041700000;
  *(a1 + 1856) = 3;
  *(a1 + 1864) = 0x40000000;
  *(a1 + 1872) = 0x408000003F400000;
  *(a1 + 1880) = 1104388555;
  *(a1 + 1888) = xmmword_1BCE3F080;
  *(a1 + 1904) = 0x3DCCCCCD00000000;
  *(a1 + 1912) = 1101004800;
  *(a1 + 1920) = 1;
  *(a1 + 1928) = 1106247680;
  *(a1 + 1936) = xmmword_1BCE3F090;
  *(a1 + 1952) = 1077936128;
  *(a1 + 1960) = 0x420C000041C80000;
  *(a1 + 1968) = xmmword_1BCE3E700;
  *(a1 + 1984) = 0x3F80000000000000;
  *(a1 + 1992) = 1061158912;
  *(a1 + 2000) = 0x3F4CCCCD3E4CCCCDLL;
  *(a1 + 2008) = 0x3F6666663F333333;
  *(a1 + 2016) = xmmword_1BCE3C080;
  *(a1 + 2096) = 0u;
  *(a1 + 2080) = 0u;
  *(a1 + 2064) = 0u;
  *(a1 + 2048) = 0u;
  *(a1 + 2032) = 0u;
  *(a1 + 2112) = 1056964608;
  *(a1 + 2120) = 0x3E4CCCCD3DCCCCCDLL;
  *(a1 + 2128) = 0x400000003F800000;
  *(a1 + 2136) = 0x4040000040000000;
  *(a1 + 2144) = -1046478848;
  *(a1 + 2160) = _Q0;
  *(a1 + 2176) = _Q0;
  *(a1 + 2192) = 1061997773;
  *(a1 + 2200) = 10;
  *(a1 + 2208) = 0x40A000003FC00000;
  *(a1 + 2224) = xmmword_1BCE3C090;
  *(a1 + 2240) = xmmword_1BCE3C0A0;
  *(a1 + 2256) = _Q0;
  *(a1 + 2304) = 0;
  *(a1 + 2288) = 0u;
  *(a1 + 2272) = 0u;
  *(a1 + 2312) = v4;
  *(a1 + 2320) = v11;
}

__n128 sub_1BCA74794()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07858);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BCE3EBD0;
  *(v0 + 48) = xmmword_1BCE3C0C0;
  *(v0 + 200) = xmmword_1BCE46050;
  *(v0 + 216) = xmmword_1BCE46060;
  *(v0 + 232) = xmmword_1BCE46070;
  *(v0 + 248) = xmmword_1BCE46080;
  *(v0 + 5072) = xmmword_1BCE46250;
  *(v0 + 6288) = xmmword_1BCE46250;
  *(v0 + 5088) = xmmword_1BCE46260;
  *(v0 + 6304) = xmmword_1BCE46260;
  *(v0 + 5136) = xmmword_1BCE46270;
  *(v0 + 6352) = xmmword_1BCE46270;
  *(v0 + 5152) = xmmword_1BCE46280;
  *(v0 + 6368) = xmmword_1BCE46280;
  *(v0 + 5264) = xmmword_1BCE46290;
  *(v0 + 6480) = xmmword_1BCE46290;
  *(v0 + 3856) = xmmword_1BCE461E0;
  *(v0 + 7504) = xmmword_1BCE461E0;
  *(v0 + 3872) = xmmword_1BCE461F0;
  *(v0 + 7520) = xmmword_1BCE461F0;
  *(v0 + 3888) = xmmword_1BCE46200;
  *(v0 + 5104) = xmmword_1BCE46200;
  *(v0 + 6320) = xmmword_1BCE46200;
  *(v0 + 7536) = xmmword_1BCE46200;
  *(v0 + 3904) = xmmword_1BCE46210;
  *(v0 + 5120) = xmmword_1BCE46210;
  *(v0 + 6336) = xmmword_1BCE46210;
  *(v0 + 7552) = xmmword_1BCE46210;
  *(v0 + 3920) = xmmword_1BCE46220;
  *(v0 + 7568) = xmmword_1BCE46220;
  *(v0 + 3936) = xmmword_1BCE46230;
  *(v0 + 7584) = xmmword_1BCE46230;
  *(v0 + 4048) = xmmword_1BCE46240;
  *(v0 + 7696) = xmmword_1BCE46240;
  *(v0 + 2480) = xmmword_1BCE3C030;
  *(v0 + 3696) = xmmword_1BCE3C030;
  *(v0 + 4912) = xmmword_1BCE3C030;
  *(v0 + 6128) = xmmword_1BCE3C030;
  *(v0 + 7344) = xmmword_1BCE3C030;
  *(v0 + 8560) = xmmword_1BCE3C030;
  *(v0 + 2496) = 0x43FA000043149A74;
  *(v0 + 3712) = 0x43FA000043149A74;
  *(v0 + 4928) = 0x43FA000043149A74;
  *(v0 + 6144) = 0x43FA000043149A74;
  *(v0 + 7360) = 0x43FA000043149A74;
  *(v0 + 8576) = 0x43FA000043149A74;
  v1 = vdupq_n_s64(0x3FCF1B2BA0000000uLL);
  *(v0 + 2512) = v1;
  *(v0 + 3728) = v1;
  *(v0 + 4944) = v1;
  *(v0 + 6160) = v1;
  *(v0 + 7376) = v1;
  *(v0 + 8592) = v1;
  *(v0 + 2528) = xmmword_1BCE3C3A0;
  *(v0 + 3744) = xmmword_1BCE3C3A0;
  *(v0 + 4960) = xmmword_1BCE3C3A0;
  *(v0 + 6176) = xmmword_1BCE3C3A0;
  *(v0 + 7392) = xmmword_1BCE3C3A0;
  *(v0 + 8608) = xmmword_1BCE3C3A0;
  *(v0 + 2640) = xmmword_1BCE46160;
  *(v0 + 8720) = xmmword_1BCE46160;
  *(v0 + 2656) = xmmword_1BCE46170;
  *(v0 + 8736) = xmmword_1BCE46170;
  *(v0 + 2672) = xmmword_1BCE46180;
  *(v0 + 8752) = xmmword_1BCE46180;
  *(v0 + 2688) = xmmword_1BCE46190;
  *(v0 + 8768) = xmmword_1BCE46190;
  *(v0 + 2704) = xmmword_1BCE461A0;
  *(v0 + 8784) = xmmword_1BCE461A0;
  *(v0 + 2720) = xmmword_1BCE461B0;
  *(v0 + 8800) = xmmword_1BCE461B0;
  *(v0 + 2800) = xmmword_1BCE3F1B0;
  *(v0 + 4016) = xmmword_1BCE3F1B0;
  *(v0 + 5232) = xmmword_1BCE3F1B0;
  *(v0 + 6448) = xmmword_1BCE3F1B0;
  *(v0 + 7664) = xmmword_1BCE3F1B0;
  *(v0 + 8880) = xmmword_1BCE3F1B0;
  *(v0 + 2832) = xmmword_1BCE461C0;
  *(v0 + 8912) = xmmword_1BCE461C0;
  v2 = vdupq_n_s64(0x3FB99999C0000000uLL);
  *(v0 + 2864) = v2;
  *(v0 + 4080) = v2;
  *(v0 + 5296) = v2;
  *(v0 + 6512) = v2;
  *(v0 + 7728) = v2;
  *(v0 + 8944) = v2;
  *(v0 + 2896) = xmmword_1BCE461D0;
  *(v0 + 8976) = xmmword_1BCE461D0;
  v3 = vdupq_n_s64(0x3C74BCC7A0000000uLL);
  *(v0 + 1296) = v3;
  *(v0 + 9808) = v3;
  *(v0 + 1312) = xmmword_1BCE3C1B0;
  *(v0 + 9824) = xmmword_1BCE3C1B0;
  *(v0 + 1424) = xmmword_1BCE460F0;
  *(v0 + 9936) = xmmword_1BCE460F0;
  *(v0 + 1440) = xmmword_1BCE46100;
  *(v0 + 9952) = xmmword_1BCE46100;
  *(v0 + 1456) = xmmword_1BCE46110;
  *(v0 + 9968) = xmmword_1BCE46110;
  *(v0 + 1472) = xmmword_1BCE46120;
  *(v0 + 9984) = xmmword_1BCE46120;
  *(v0 + 1488) = xmmword_1BCE46130;
  *(v0 + 10000) = xmmword_1BCE46130;
  *(v0 + 1504) = xmmword_1BCE46140;
  *(v0 + 10016) = xmmword_1BCE46140;
  *(v0 + 1600) = 1065353216;
  *(v0 + 2816) = 1065353216;
  *(v0 + 4032) = 1065353216;
  *(v0 + 5248) = 1065353216;
  *(v0 + 6464) = 1065353216;
  *(v0 + 7680) = 1065353216;
  *(v0 + 8896) = 1065353216;
  *(v0 + 10112) = 1065353216;
  *(v0 + 1664) = xmmword_1BCE46150;
  *(v0 + 10176) = xmmword_1BCE46150;
  *(v0 + 64) = 0x43FA000042C80000;
  *(v0 + 1264) = xmmword_1BCE3C0C0;
  *(v0 + 9776) = xmmword_1BCE3C0C0;
  *(v0 + 10992) = xmmword_1BCE3C0C0;
  *(v0 + 1280) = 0x43FA000042C80000;
  *(v0 + 9792) = 0x43FA000042C80000;
  *(v0 + 11008) = 0x43FA000042C80000;
  *(v0 + 11152) = xmmword_1BCE462A0;
  *(v0 + 11168) = xmmword_1BCE462B0;
  *(v0 + 11184) = xmmword_1BCE462C0;
  *(v0 + 11200) = xmmword_1BCE462D0;
  *(v0 + 11216) = xmmword_1BCE46090;
  *(v0 + 272) = xmmword_1BCE46090;
  *(v0 + 288) = xmmword_1BCE460A0;
  *(v0 + 88) = 0u;
  *(v0 + 11232) = xmmword_1BCE460A0;
  *(v0 + 368) = xmmword_1BCE439A0;
  *(v0 + 388) = 0u;
  *(v0 + 404) = 0u;
  *(v0 + 1584) = xmmword_1BCE439A0;
  *(v0 + 10096) = xmmword_1BCE439A0;
  *(v0 + 11312) = xmmword_1BCE439A0;
  *(v0 + 11024) = 0u;
  *(v0 + 11332) = 0u;
  *(v0 + 11348) = 0u;
  *(v0 + 432) = xmmword_1BCE460B0;
  *(v0 + 448) = xmmword_1BCE460C0;
  *(v0 + 1648) = xmmword_1BCE460B0;
  *(v0 + 10160) = xmmword_1BCE460B0;
  *(v0 + 11376) = xmmword_1BCE460B0;
  *(v0 + 2880) = xmmword_1BCE460C0;
  *(v0 + 4096) = xmmword_1BCE460C0;
  *(v0 + 5312) = xmmword_1BCE460C0;
  *(v0 + 6528) = xmmword_1BCE460C0;
  *(v0 + 7744) = xmmword_1BCE460C0;
  *(v0 + 8960) = xmmword_1BCE460C0;
  *(v0 + 11392) = xmmword_1BCE460C0;
  *(v0 + 1680) = xmmword_1BCE460D0;
  *(v0 + 4112) = xmmword_1BCE460D0;
  *(v0 + 5328) = xmmword_1BCE460D0;
  *(v0 + 6544) = xmmword_1BCE460D0;
  *(v0 + 7760) = xmmword_1BCE460D0;
  *(v0 + 10192) = xmmword_1BCE460D0;
  *(v0 + 11408) = xmmword_1BCE460D0;
  *(v0 + 464) = xmmword_1BCE460D0;
  *(v0 + 480) = xmmword_1BCE460E0;
  *(v0 + 1696) = xmmword_1BCE460E0;
  *(v0 + 2912) = xmmword_1BCE460E0;
  *(v0 + 4128) = xmmword_1BCE460E0;
  *(v0 + 5344) = xmmword_1BCE460E0;
  *(v0 + 6560) = xmmword_1BCE460E0;
  *(v0 + 7776) = xmmword_1BCE460E0;
  *(v0 + 8992) = xmmword_1BCE460E0;
  *(v0 + 10208) = xmmword_1BCE460E0;
  *(v0 + 11424) = xmmword_1BCE460E0;
  *(v0 + 1168) = 0x4170000042480000;
  *(v0 + 2384) = 0x4170000042480000;
  *(v0 + 3600) = 0x4170000042480000;
  *(v0 + 4816) = 0x4170000042480000;
  *(v0 + 6032) = 0x4170000042480000;
  *(v0 + 7248) = 0x4170000042480000;
  *(v0 + 8464) = 0x4170000042480000;
  *(v0 + 9680) = 0x4170000042480000;
  *(v0 + 10896) = 0x4170000042480000;
  *(v0 + 12112) = 0x4170000042480000;
  __asm { FMOV            V0.2D, #1.0 }

  *(v0 + 104) = result;
  *(v0 + 120) = result;
  *(v0 + 136) = result;
  *(v0 + 152) = result;
  *(v0 + 168) = result;
  *(v0 + 184) = result;
  *(v0 + 304) = result;
  *(v0 + 320) = result;
  *(v0 + 336) = result;
  *(v0 + 352) = result;
  *(v0 + 496) = result;
  *(v0 + 512) = result;
  *(v0 + 528) = result;
  *(v0 + 544) = result;
  *(v0 + 560) = result;
  *(v0 + 576) = result;
  *(v0 + 592) = result;
  *(v0 + 608) = result;
  *(v0 + 624) = result;
  *(v0 + 640) = result;
  *(v0 + 656) = result;
  *(v0 + 672) = result;
  *(v0 + 688) = result;
  *(v0 + 704) = result;
  *(v0 + 720) = result;
  *(v0 + 736) = result;
  *(v0 + 752) = result;
  *(v0 + 768) = result;
  *(v0 + 784) = result;
  *(v0 + 800) = result;
  *(v0 + 816) = result;
  *(v0 + 832) = result;
  *(v0 + 848) = result;
  *(v0 + 864) = result;
  *(v0 + 880) = result;
  *(v0 + 896) = result;
  *(v0 + 912) = result;
  *(v0 + 928) = result;
  *(v0 + 944) = result;
  *(v0 + 960) = result;
  *(v0 + 976) = result;
  *(v0 + 992) = result;
  *(v0 + 1008) = result;
  *(v0 + 1024) = result;
  *(v0 + 1040) = result;
  *(v0 + 1056) = result;
  *(v0 + 1072) = result;
  *(v0 + 1088) = result;
  *(v0 + 1104) = result;
  *(v0 + 1120) = result;
  *(v0 + 1136) = result;
  *(v0 + 1152) = result;
  *(v0 + 1176) = 0x3FF0000000000000;
  *(v0 + 1184) = result;
  *(v0 + 1200) = result;
  *(v0 + 1216) = result;
  *(v0 + 1232) = 0x3FF0000000000000;
  *(v0 + 1248) = 0xC031FFFFFFFFFFFFLL;
  *(v0 + 1256) = 0;
  *(v0 + 1257) = *v9;
  *(v0 + 1260) = *&v9[3];
  *(v0 + 1288) = 0;
  *(v0 + 1328) = result;
  *(v0 + 1344) = result;
  *(v0 + 1360) = result;
  *(v0 + 1376) = result;
  *(v0 + 1392) = result;
  *(v0 + 1408) = result;
  *(v0 + 1520) = result;
  *(v0 + 1536) = result;
  *(v0 + 1552) = result;
  *(v0 + 1568) = result;
  *(v0 + 1608) = 0x3FF0000000000000;
  *(v0 + 8336) = result;
  *(v0 + 8352) = result;
  *(v0 + 8368) = result;
  *(v0 + 8240) = result;
  *(v0 + 8256) = result;
  *(v0 + 8272) = result;
  *(v0 + 8288) = result;
  *(v0 + 8304) = result;
  *(v0 + 8320) = result;
  *(v0 + 8144) = result;
  *(v0 + 8160) = result;
  *(v0 + 8176) = result;
  *(v0 + 0x2000) = result;
  *(v0 + 8208) = result;
  *(v0 + 8224) = result;
  *(v0 + 8048) = result;
  *(v0 + 8064) = result;
  *(v0 + 8080) = result;
  *(v0 + 8096) = result;
  *(v0 + 8112) = result;
  *(v0 + 8128) = result;
  *(v0 + 7952) = result;
  *(v0 + 7968) = result;
  *(v0 + 7984) = result;
  *(v0 + 8000) = result;
  *(v0 + 8016) = result;
  *(v0 + 8032) = result;
  *(v0 + 7856) = result;
  *(v0 + 7872) = result;
  *(v0 + 7888) = result;
  *(v0 + 7904) = result;
  *(v0 + 7920) = result;
  *(v0 + 7936) = result;
  *(v0 + 1616) = result;
  *(v0 + 1632) = 0x3FF0000000000000;
  *(v0 + 7792) = result;
  *(v0 + 7808) = result;
  *(v0 + 7824) = result;
  *(v0 + 7840) = result;
  *(v0 + 1640) = 0;
  *(v0 + 1712) = result;
  *(v0 + 1728) = result;
  *(v0 + 1744) = result;
  *(v0 + 7712) = 0x3FF0000000000000;
  *(v0 + 7720) = 0;
  *(v0 + 1760) = result;
  *(v0 + 7616) = result;
  *(v0 + 7632) = result;
  *(v0 + 7648) = result;
  *(v0 + 7688) = 0x3FEDC28F80000000;
  *(v0 + 1776) = result;
  *(v0 + 1792) = result;
  *(v0 + 1808) = result;
  *(v0 + 1824) = result;
  *(v0 + 1840) = result;
  *(v0 + 7600) = result;
  *(v0 + 1856) = result;
  *(v0 + 7424) = result;
  *(v0 + 7440) = result;
  *(v0 + 7456) = result;
  *(v0 + 7472) = result;
  *(v0 + 7488) = result;
  *(v0 + 1872) = result;
  *(v0 + 1888) = result;
  *(v0 + 1904) = result;
  *(v0 + 1920) = result;
  *(v0 + 1936) = result;
  *(v0 + 7408) = result;
  *(v0 + 7337) = *v14;
  *(v0 + 7368) = 0;
  *(v0 + 7312) = 0x3FF0000000000000;
  *(v0 + 7328) = 0x404E000000000000;
  *(v0 + 7336) = 1;
  *(v0 + 7340) = *&v14[3];
  *(v0 + 1952) = result;
  *(v0 + 7232) = result;
  *(v0 + 7256) = 0x3FF0000000000000;
  *(v0 + 7264) = result;
  *(v0 + 7280) = result;
  *(v0 + 7296) = result;
  *(v0 + 7136) = result;
  *(v0 + 7152) = result;
  *(v0 + 7168) = result;
  *(v0 + 7184) = result;
  *(v0 + 7200) = result;
  *(v0 + 7216) = result;
  *(v0 + 7040) = result;
  *(v0 + 7056) = result;
  *(v0 + 7072) = result;
  *(v0 + 7088) = result;
  *(v0 + 7104) = result;
  *(v0 + 7120) = result;
  *(v0 + 6944) = result;
  *(v0 + 6960) = result;
  *(v0 + 6976) = result;
  *(v0 + 6992) = result;
  *(v0 + 7008) = result;
  *(v0 + 7024) = result;
  *(v0 + 6848) = result;
  *(v0 + 6864) = result;
  *(v0 + 6880) = result;
  *(v0 + 6896) = result;
  *(v0 + 6912) = result;
  *(v0 + 6928) = result;
  *(v0 + 6752) = result;
  *(v0 + 6768) = result;
  *(v0 + 6784) = result;
  *(v0 + 6800) = result;
  *(v0 + 6816) = result;
  *(v0 + 6832) = result;
  *(v0 + 6656) = result;
  *(v0 + 6672) = result;
  *(v0 + 6688) = result;
  *(v0 + 6704) = result;
  *(v0 + 6720) = result;
  *(v0 + 6736) = result;
  *(v0 + 1968) = result;
  *(v0 + 6576) = result;
  *(v0 + 6592) = result;
  *(v0 + 6608) = result;
  *(v0 + 6624) = result;
  *(v0 + 6640) = result;
  *(v0 + 1984) = result;
  *(v0 + 2000) = result;
  *(v0 + 2016) = result;
  *(v0 + 2032) = result;
  *(v0 + 6496) = 0x3FF0000000000000;
  *(v0 + 6504) = 0;
  *(v0 + 2048) = result;
  *(v0 + 2064) = result;
  *(v0 + 6400) = result;
  *(v0 + 6416) = result;
  *(v0 + 6432) = result;
  *(v0 + 6472) = 0x3FF0000000000000;
  *(v0 + 2080) = result;
  *(v0 + 2096) = result;
  *(v0 + 2112) = result;
  *(v0 + 2128) = result;
  *(v0 + 2144) = result;
  *(v0 + 6384) = result;
  *(v0 + 2160) = result;
  *(v0 + 6208) = result;
  *(v0 + 6224) = result;
  *(v0 + 6240) = result;
  *(v0 + 6256) = result;
  *(v0 + 6272) = result;
  *(v0 + 2176) = result;
  *(v0 + 2192) = result;
  *(v0 + 2208) = result;
  *(v0 + 2224) = result;
  *(v0 + 6192) = result;
  *(v0 + 6064) = result;
  *(v0 + 6121) = *v13;
  *(v0 + 6152) = 0;
  *(v0 + 6080) = result;
  *(v0 + 6096) = 0x3FF0000000000000;
  *(v0 + 6112) = 0x40567CE800000000;
  *(v0 + 6120) = 1;
  *(v0 + 6124) = *&v13[3];
  *(v0 + 2240) = result;
  *(v0 + 5984) = result;
  *(v0 + 6000) = result;
  *(v0 + 6016) = result;
  *(v0 + 6040) = 0x3FF0000000000000;
  *(v0 + 6048) = result;
  *(v0 + 5888) = result;
  *(v0 + 5904) = result;
  *(v0 + 5920) = result;
  *(v0 + 5936) = result;
  *(v0 + 5952) = result;
  *(v0 + 5968) = result;
  *(v0 + 5792) = result;
  *(v0 + 5808) = result;
  *(v0 + 5824) = result;
  *(v0 + 5840) = result;
  *(v0 + 5856) = result;
  *(v0 + 5872) = result;
  *(v0 + 5696) = result;
  *(v0 + 5712) = result;
  *(v0 + 5728) = result;
  *(v0 + 5744) = result;
  *(v0 + 5760) = result;
  *(v0 + 5776) = result;
  *(v0 + 5600) = result;
  *(v0 + 5616) = result;
  *(v0 + 5632) = result;
  *(v0 + 5648) = result;
  *(v0 + 5664) = result;
  *(v0 + 5680) = result;
  *(v0 + 5504) = result;
  *(v0 + 5520) = result;
  *(v0 + 5536) = result;
  *(v0 + 5552) = result;
  *(v0 + 5568) = result;
  *(v0 + 5584) = result;
  *(v0 + 5408) = result;
  *(v0 + 5424) = result;
  *(v0 + 5440) = result;
  *(v0 + 5456) = result;
  *(v0 + 5472) = result;
  *(v0 + 5488) = result;
  *(v0 + 2256) = result;
  *(v0 + 2272) = result;
  *(v0 + 2288) = result;
  *(v0 + 5360) = result;
  *(v0 + 5376) = result;
  *(v0 + 5392) = result;
  *(v0 + 2304) = result;
  *(v0 + 2320) = result;
  *(v0 + 2336) = result;
  *(v0 + 5256) = 0x3FF0000000000000;
  *(v0 + 5280) = 0x3FF0000000000000;
  *(v0 + 5288) = 0;
  *(v0 + 2352) = result;
  *(v0 + 2368) = result;
  *(v0 + 5168) = result;
  *(v0 + 5184) = result;
  *(v0 + 5200) = result;
  *(v0 + 5216) = result;
  *(v0 + 2392) = 0x3FF0000000000000;
  *(v0 + 2400) = result;
  *(v0 + 2416) = result;
  *(v0 + 2432) = result;
  *(v0 + 2448) = 0x3FF0000000000000;
  *(v0 + 2464) = 0x403DFFFFFFFFFFFELL;
  *(v0 + 2472) = 0;
  *(v0 + 5040) = result;
  *(v0 + 5056) = result;
  *(v0 + 2473) = *v10;
  *(v0 + 2476) = *&v10[3];
  *(v0 + 4992) = result;
  *(v0 + 5008) = result;
  *(v0 + 5024) = result;
  *(v0 + 4905) = *v12;
  *(v0 + 4936) = 0;
  *(v0 + 4976) = result;
  *(v0 + 2504) = 0;
  *(v0 + 4880) = 0x3FF0000000000000;
  *(v0 + 4896) = 0x40567CE800000000;
  *(v0 + 4904) = 0;
  *(v0 + 4908) = *&v12[3];
  *(v0 + 2544) = result;
  *(v0 + 4800) = result;
  *(v0 + 4824) = 0x3FF0000000000000;
  *(v0 + 4832) = result;
  *(v0 + 4848) = result;
  *(v0 + 4864) = result;
  *(v0 + 4704) = result;
  *(v0 + 4720) = result;
  *(v0 + 4736) = result;
  *(v0 + 4752) = result;
  *(v0 + 4768) = result;
  *(v0 + 4784) = result;
  *(v0 + 4608) = result;
  *(v0 + 4624) = result;
  *(v0 + 4640) = result;
  *(v0 + 4656) = result;
  *(v0 + 4672) = result;
  *(v0 + 4688) = result;
  *(v0 + 4512) = result;
  *(v0 + 4528) = result;
  *(v0 + 4544) = result;
  *(v0 + 4560) = result;
  *(v0 + 4576) = result;
  *(v0 + 4592) = result;
  *(v0 + 4416) = result;
  *(v0 + 4432) = result;
  *(v0 + 4448) = result;
  *(v0 + 4464) = result;
  *(v0 + 4480) = result;
  *(v0 + 4496) = result;
  *(v0 + 4320) = result;
  *(v0 + 4336) = result;
  *(v0 + 4352) = result;
  *(v0 + 4368) = result;
  *(v0 + 4384) = result;
  *(v0 + 4400) = result;
  *(v0 + 4224) = result;
  *(v0 + 4240) = result;
  *(v0 + 4256) = result;
  *(v0 + 4272) = result;
  *(v0 + 4288) = result;
  *(v0 + 4304) = result;
  *(v0 + 2560) = result;
  *(v0 + 4144) = result;
  *(v0 + 4160) = result;
  *(v0 + 4176) = result;
  *(v0 + 4192) = result;
  *(v0 + 4208) = result;
  *(v0 + 2576) = result;
  *(v0 + 2592) = result;
  *(v0 + 2608) = result;
  *(v0 + 2624) = result;
  *(v0 + 4064) = 0x3FF0000000000000;
  *(v0 + 4072) = 0;
  *(v0 + 2736) = result;
  *(v0 + 2752) = result;
  *(v0 + 2768) = result;
  *(v0 + 3984) = result;
  *(v0 + 4000) = result;
  *(v0 + 4040) = 0x3FEDC28F80000000;
  *(v0 + 2784) = result;
  *(v0 + 2824) = 0x3FECCCCCC0000000;
  *(v0 + 2848) = 0x3FF0000000000000;
  *(v0 + 3952) = result;
  *(v0 + 3968) = result;
  *(v0 + 2856) = 0;
  *(v0 + 2928) = result;
  *(v0 + 3792) = result;
  *(v0 + 3808) = result;
  *(v0 + 3824) = result;
  *(v0 + 3840) = result;
  *(v0 + 2944) = result;
  *(v0 + 2960) = result;
  *(v0 + 2976) = result;
  *(v0 + 2992) = result;
  *(v0 + 3760) = result;
  *(v0 + 3776) = result;
  *(v0 + 3689) = *v11;
  *(v0 + 3692) = *&v11[3];
  *(v0 + 3720) = 0;
  *(v0 + 3616) = result;
  *(v0 + 3632) = result;
  *(v0 + 3648) = result;
  *(v0 + 3664) = 0x3FF0000000000000;
  *(v0 + 3680) = 0x404E000000000000;
  *(v0 + 3688) = 0;
  *(v0 + 3008) = result;
  *(v0 + 3536) = result;
  *(v0 + 3552) = result;
  *(v0 + 3568) = result;
  *(v0 + 3584) = result;
  *(v0 + 3608) = 0x3FF0000000000000;
  *(v0 + 3440) = result;
  *(v0 + 3456) = result;
  *(v0 + 3472) = result;
  *(v0 + 3488) = result;
  *(v0 + 3504) = result;
  *(v0 + 3520) = result;
  *(v0 + 3344) = result;
  *(v0 + 3360) = result;
  *(v0 + 3376) = result;
  *(v0 + 3392) = result;
  *(v0 + 3408) = result;
  *(v0 + 3424) = result;
  *(v0 + 3248) = result;
  *(v0 + 3264) = result;
  *(v0 + 3280) = result;
  *(v0 + 3296) = result;
  *(v0 + 3312) = result;
  *(v0 + 3328) = result;
  *(v0 + 3152) = result;
  *(v0 + 3168) = result;
  *(v0 + 3184) = result;
  *(v0 + 3200) = result;
  *(v0 + 3216) = result;
  *(v0 + 3232) = result;
  *(v0 + 3056) = result;
  *(v0 + 3072) = result;
  *(v0 + 3088) = result;
  *(v0 + 3104) = result;
  *(v0 + 3120) = result;
  *(v0 + 3136) = result;
  *(v0 + 3024) = result;
  *(v0 + 3040) = result;
  *(v0 + 8384) = result;
  *(v0 + 8400) = result;
  *(v0 + 8416) = result;
  *(v0 + 8432) = result;
  *(v0 + 8448) = result;
  *(v0 + 8480) = result;
  *(v0 + 8496) = result;
  *(v0 + 8512) = result;
  *(v0 + 8624) = result;
  *(v0 + 8640) = result;
  *(v0 + 8656) = result;
  *(v0 + 8672) = result;
  *(v0 + 8688) = result;
  *(v0 + 8704) = result;
  *(v0 + 8816) = result;
  *(v0 + 8832) = result;
  *(v0 + 8848) = result;
  *(v0 + 8864) = result;
  *(v0 + 9008) = result;
  *(v0 + 9024) = result;
  *(v0 + 9040) = result;
  *(v0 + 9056) = result;
  *(v0 + 9072) = result;
  *(v0 + 9088) = result;
  *(v0 + 9104) = result;
  *(v0 + 9120) = result;
  *(v0 + 9136) = result;
  *(v0 + 9152) = result;
  *(v0 + 9168) = result;
  *(v0 + 9184) = result;
  *(v0 + 9200) = result;
  *(v0 + 9216) = result;
  *(v0 + 9232) = result;
  *(v0 + 9248) = result;
  *(v0 + 9264) = result;
  *(v0 + 9280) = result;
  *(v0 + 9296) = result;
  *(v0 + 9312) = result;
  *(v0 + 9328) = result;
  *(v0 + 9344) = result;
  *(v0 + 9360) = result;
  *(v0 + 9376) = result;
  *(v0 + 9392) = result;
  *(v0 + 9408) = result;
  *(v0 + 9424) = result;
  *(v0 + 9440) = result;
  *(v0 + 9456) = result;
  *(v0 + 9472) = result;
  *(v0 + 9488) = result;
  *(v0 + 9504) = result;
  *(v0 + 9520) = result;
  *(v0 + 9536) = result;
  *(v0 + 9552) = result;
  *(v0 + 9568) = result;
  *(v0 + 9584) = result;
  *(v0 + 9600) = result;
  *(v0 + 9616) = result;
  *(v0 + 9632) = result;
  *(v0 + 9648) = result;
  *(v0 + 9664) = result;
  *(v0 + 9696) = result;
  *(v0 + 9712) = result;
  *(v0 + 9728) = result;
  *(v0 + 9840) = result;
  *(v0 + 9856) = result;
  *(v0 + 9872) = result;
  *(v0 + 9888) = result;
  *(v0 + 9904) = result;
  *(v0 + 9920) = result;
  *(v0 + 10032) = result;
  *(v0 + 10048) = result;
  *(v0 + 10064) = result;
  *(v0 + 10080) = result;
  *(v0 + 10128) = result;
  *(v0 + 10224) = result;
  *(v0 + 10240) = result;
  *(v0 + 10256) = result;
  *(v0 + 10272) = result;
  *(v0 + 10288) = result;
  *(v0 + 10304) = result;
  *(v0 + 10320) = result;
  *(v0 + 10336) = result;
  *(v0 + 10352) = result;
  *(v0 + 10368) = result;
  *(v0 + 10384) = result;
  *(v0 + 10400) = result;
  *(v0 + 10416) = result;
  *(v0 + 10432) = result;
  *(v0 + 10448) = result;
  *(v0 + 10464) = result;
  *(v0 + 10480) = result;
  *(v0 + 10496) = result;
  *(v0 + 10512) = result;
  *(v0 + 10528) = result;
  *(v0 + 10544) = result;
  *(v0 + 10560) = result;
  *(v0 + 10576) = result;
  *(v0 + 10592) = result;
  *(v0 + 10608) = result;
  *(v0 + 10624) = result;
  *(v0 + 10640) = result;
  *(v0 + 10656) = result;
  *(v0 + 10672) = result;
  *(v0 + 10688) = result;
  *(v0 + 10704) = result;
  *(v0 + 10720) = result;
  *(v0 + 10736) = result;
  *(v0 + 10752) = result;
  *(v0 + 10768) = result;
  *(v0 + 10784) = result;
  *(v0 + 10800) = result;
  *(v0 + 10816) = result;
  *(v0 + 10832) = result;
  *(v0 + 10848) = result;
  *(v0 + 10864) = result;
  *(v0 + 10880) = result;
  *(v0 + 10912) = result;
  *(v0 + 10928) = result;
  *(v0 + 10944) = result;
  *(v0 + 11056) = result;
  *(v0 + 11072) = result;
  *(v0 + 11088) = result;
  *(v0 + 11104) = result;
  *(v0 + 11120) = result;
  *(v0 + 11136) = result;
  *(v0 + 11248) = result;
  *(v0 + 11264) = result;
  *(v0 + 11280) = result;
  *(v0 + 11296) = result;
  *(v0 + 11440) = result;
  *(v0 + 11456) = result;
  *(v0 + 11472) = result;
  *(v0 + 11488) = result;
  *(v0 + 11504) = result;
  *(v0 + 11520) = result;
  *(v0 + 11536) = result;
  *(v0 + 11552) = result;
  *(v0 + 11568) = result;
  *(v0 + 11584) = result;
  *(v0 + 11600) = result;
  *(v0 + 11616) = result;
  *(v0 + 11632) = result;
  *(v0 + 11648) = result;
  *(v0 + 11664) = result;
  *(v0 + 11680) = result;
  *(v0 + 11696) = result;
  *(v0 + 11712) = result;
  *(v0 + 11728) = result;
  *(v0 + 11744) = result;
  *(v0 + 11760) = result;
  *(v0 + 11776) = result;
  *(v0 + 11792) = result;
  *(v0 + 11808) = result;
  *(v0 + 11824) = result;
  *(v0 + 11840) = result;
  *(v0 + 11856) = result;
  *(v0 + 11872) = result;
  *(v0 + 11888) = result;
  *(v0 + 11904) = result;
  *(v0 + 11920) = result;
  *(v0 + 11936) = result;
  *(v0 + 11952) = result;
  *(v0 + 11968) = result;
  *(v0 + 11984) = result;
  *(v0 + 12000) = result;
  *(v0 + 12016) = result;
  *(v0 + 12032) = result;
  *(v0 + 12048) = result;
  *(v0 + 12064) = result;
  *(v0 + 12080) = result;
  *(v0 + 12096) = result;
  *(v0 + 12128) = result;
  *(v0 + 12144) = result;
  *(v0 + 12160) = result;
  *(v0 + 32) = 0xC056800000000000;
  *(v0 + 40) = 0;
  *(v0 + 72) = 0;
  *(v0 + 80) = 0;
  *(v0 + 420) = 0;
  *(v0 + 264) = 0x3FDFC3C040000000;
  *(v0 + 384) = 1065353216;
  *(v0 + 8553) = *v15;
  *(v0 + 8472) = 0x3FF0000000000000;
  *(v0 + 8528) = 0x3FF0000000000000;
  *(v0 + 8544) = 0x403DFFFFFFFFFFFELL;
  *(v0 + 8552) = 1;
  *(v0 + 8556) = *&v15[3];
  *(v0 + 8584) = 0;
  *(v0 + 8904) = 0x3FECCCCCC0000000;
  *(v0 + 8928) = 0x3FF0000000000000;
  *(v0 + 8936) = 0;
  *(v0 + 9688) = 0x3FF0000000000000;
  *(v0 + 9744) = 0x3FF0000000000000;
  *(v0 + 9760) = 0xC031FFFFFFFFFFFFLL;
  *(v0 + 9768) = 1;
  *(v0 + 9769) = *v16;
  *(v0 + 9772) = *&v16[3];
  *(v0 + 9800) = 0;
  *(v0 + 10120) = 0x3FF0000000000000;
  *(v0 + 10144) = 0x3FF0000000000000;
  *(v0 + 10152) = 0;
  *(v0 + 10904) = 0x3FF0000000000000;
  *(v0 + 10960) = 0x3FF0000000000000;
  *(v0 + 10976) = 0xC056800000000000;
  *(v0 + 10984) = 1;
  *(v0 + 10985) = *v17;
  *(v0 + 10988) = *&v17[3];
  *(v0 + 11016) = 0;
  *(v0 + 11040) = 0;
  *(v0 + 11048) = 0x3FF0000000000000;
  *(v0 + 11328) = 1065353216;
  *(v0 + 11364) = 0;
  *(v0 + 12120) = 0x3FF0000000000000;
  *(v0 + 12176) = 0x3FF0000000000000;
  return result;
}

void sub_1BCA75714(uint64_t a1@<X8>)
{
  v2 = a1 + 1436;
  sub_1BCA75E88();
  v4 = v3;
  sub_1BCA75E88();
  *a1 = 0x4006666666666666;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0x3FF0000000000000;
  *(a1 + 24) = 48;
  *(a1 + 32) = xmmword_1BCE3BED0;
  *(a1 + 48) = xmmword_1BCE3BED0;
  *(a1 + 64) = 0x42C8000042480000;
  *(a1 + 72) = 0xC422800000000000;
  *(a1 + 80) = xmmword_1BCE3E630;
  *(a1 + 96) = xmmword_1BCE3BEF0;
  *(a1 + 112) = 0x3E8000003DF5C28FLL;
  *(a1 + 128) = xmmword_1BCE3C7C0;
  *(a1 + 144) = xmmword_1BCE3D840;
  *(a1 + 160) = xmmword_1BCE3BF00;
  *(a1 + 176) = 1153138688;
  *(a1 + 184) = 0x3E4CCCCD3DA3D70ALL;
  *(a1 + 192) = xmmword_1BCE3C7C0;
  *(a1 + 208) = xmmword_1BCE3C700;
  *(a1 + 224) = xmmword_1BCE3C660;
  *(a1 + 240) = 0x4120000041726E98;
  *(a1 + 248) = 1105199104;
  *(a1 + 256) = 0x3E6147AE3DCCCCCDLL;
  *(a1 + 264) = 0x40A00000410F6D04;
  *(a1 + 272) = 1093310349;
  __asm { FMOV            V0.4S, #1.0 }

  *(a1 + 288) = xmmword_1BCE3C7C0;
  *(a1 + 304) = _Q0;
  *(a1 + 320) = 0x4268000041400000;
  *(a1 + 328) = 0x3E6147AE3DCCCCCDLL;
  *(a1 + 336) = 0x4000000041076DDCLL;
  *(a1 + 352) = xmmword_1BCE3C7C0;
  *(a1 + 368) = xmmword_1BCE3C700;
  *(a1 + 384) = 0;
  *(a1 + 388) = 0x3CA3D70A3F800000;
  *(a1 + 400) = xmmword_1BCE3BF20;
  *(a1 + 416) = 0x3F0000003F000000;
  *(a1 + 424) = 10;
  *(a1 + 432) = xmmword_1BCE3BF30;
  *(a1 + 448) = 0x3E4CCCCD3DCCCCCDLL;
  *(a1 + 464) = _Q0;
  *(a1 + 480) = xmmword_1BCE3D870;
  *(a1 + 496) = 0x43FA000040400000;
  *(a1 + 504) = 1116471296;
  *(a1 + 512) = 0x3E8000003DF5C28FLL;
  *(a1 + 528) = _Q0;
  *(a1 + 544) = _Q0;
  *(a1 + 560) = 0x4248000044BB8000;
  *(a1 + 568) = 0x3E4CCCCD3DA3D70ALL;
  *(a1 + 576) = xmmword_1BCE3C700;
  *(a1 + 592) = xmmword_1BCE3D880;
  *(a1 + 608) = 0x4100000040A00000;
  *(a1 + 624) = xmmword_1BCE3C700;
  *(a1 + 640) = xmmword_1BCE3D880;
  *(a1 + 656) = 0x4220000041200000;
  *(a1 + 664) = 0x3FC000003E99999ALL;
  *(a1 + 672) = 0x40A000003F800000;
  *(a1 + 688) = _Q0;
  *(a1 + 704) = 1065353216;
  *(a1 + 712) = 0x3F99999A3F19999ALL;
  *(a1 + 720) = 0x41B770A441900000;
  *(a1 + 728) = 1102579360;
  *(a1 + 736) = 1;
  *(a1 + 744) = 10;
  *(a1 + 752) = xmmword_1BCE3FB40;
  *(a1 + 768) = 0x617274736F746C41;
  *(a1 + 776) = 0xEF4C202D20737574;
  *(a1 + 784) = 0xD000000000000013;
  *(a1 + 792) = 0x80000001BCE798E0;
  *(a1 + 800) = 9;
  *(a1 + 816) = _Q0;
  *(a1 + 832) = 1065353216;
  *(a1 + 840) = 0x3F4CCCCD3ECCCCCDLL;
  *(a1 + 848) = 0x417C0000413CF5C2;
  *(a1 + 856) = 1094983344;
  *(a1 + 864) = 1;
  *(a1 + 872) = 4;
  *(a1 + 880) = xmmword_1BCE3F4C0;
  *(a1 + 896) = 0xD000000000000010;
  *(a1 + 904) = 0x80000001BCE79860;
  *(a1 + 912) = 0xD000000000000014;
  *(a1 + 920) = 0x80000001BCE79880;
  *(a1 + 928) = 6;
  *(a1 + 944) = _Q0;
  *(a1 + 960) = 1065353216;
  *(a1 + 968) = 0x3F4CCCCD3E4CCCCDLL;
  *(a1 + 976) = 0x415A8F5C40E00000;
  *(a1 + 984) = 1076315424;
  *(a1 + 992) = 1;
  *(a1 + 1000) = 6;
  *(a1 + 1008) = xmmword_1BCE3C6F0;
  *(a1 + 1024) = 0x617274736F746C41;
  *(a1 + 1032) = 0xEF4C202D20737574;
  *(a1 + 1040) = 0xD000000000000013;
  *(a1 + 1048) = 0x80000001BCE798E0;
  *(a1 + 1056) = 6;
  *(a1 + 1072) = _Q0;
  *(a1 + 1088) = 1065353216;
  *(a1 + 1096) = 0x3F8000003F000000;
  *(a1 + 1104) = 0x400000003FC00000;
  *(a1 + 1112) = 1084503840;
  *(a1 + 1120) = 0;
  *(a1 + 1128) = 4;
  *(a1 + 1136) = xmmword_1BCE3D8A0;
  *(a1 + 1152) = 0x7970736957;
  *(a1 + 1160) = 0xE500000000000000;
  strcpy((a1 + 1168), "Wispy_Single");
  *(a1 + 1181) = 0;
  *(a1 + 1182) = -5120;
  *(a1 + 1184) = 6;
  *(a1 + 1200) = _Q0;
  *(a1 + 1216) = xmmword_1BCE46300;
  *(a1 + 1232) = 0;
  *(a1 + 1236) = 1;
  *(a1 + 1240) = 0x617274736F746C41;
  *(a1 + 1248) = 0xEB00000000737574;
  *(a1 + 1256) = 0xD000000000000013;
  *(a1 + 1264) = 0x80000001BCE79300;
  *(a1 + 1272) = 8;
  *(a1 + 1280) = 0;
  *(a1 + 1288) = 0x3E851EB83DF5C28FLL;
  *(a1 + 1296) = 0x41A0000041700000;
  *(a1 + 1304) = 1099951505;
  *(a1 + 1312) = xmmword_1BCE3C7C0;
  *(a1 + 1328) = xmmword_1BCE3FB70;
  *(a1 + 1344) = 0x4170000041200000;
  *(a1 + 1352) = 1092616192;
  *(a1 + 1360) = 0;
  *(a1 + 1368) = 5;
  *(a1 + 1408) = 0u;
  *(a1 + 1392) = 0u;
  *(a1 + 1376) = 0u;
  *(a1 + 1424) = 0x3F99999A3ECCCCCDLL;
  *(a1 + 1432) = 1;
  *v2 = xmmword_1BCE3BFC0;
  *(a1 + 1456) = 0x42DC000042B40000;
  *(a1 + 1472) = _Q0;
  *(a1 + 1488) = _Q0;
  *(a1 + 1504) = 1097859072;
  *(a1 + 1512) = 0x736168506E6F6F6DLL;
  *(a1 + 1520) = 0xEA00000000003065;
  *(a1 + 1528) = 1112014848;
  *(a1 + 1536) = _Q0;
  *(a1 + 1552) = xmmword_1BCE3F4F0;
  *(a1 + 1568) = 0x4248000042200000;
  *(a1 + 1584) = 0u;
  *(a1 + 1600) = xmmword_1BCE3D880;
  __asm { FMOV            V4.2S, #-30.0 }

  *(a1 + 1616) = -_D4;
  *(a1 + 1624) = 0x40000000;
  *(a1 + 1628) = 0;
  *(a1 + 1630) = 1;
  *(a1 + 1637) = 0;
  *(a1 + 1631) = 0;
  *(v2 + 209) = 16843009;
  *(v2 + 213) = 50331648;
  *(a1 + 1656) = 0;
  *(a1 + 1657) = v12;
  *(a1 + 1659) = v13;
  *(a1 + 1660) = 1066611507;
  *(a1 + 1664) = 0x40C0000040A00000;
  *(a1 + 1672) = 3;
  *(a1 + 1680) = xmmword_1BCE3C000;
  *(a1 + 1696) = xmmword_1BCE3C010;
  *(a1 + 1712) = xmmword_1BCE3C020;
  *(a1 + 1728) = 0x3F0000003EB33333;
  *(a1 + 1736) = 0x3E800000453B8000;
  *(a1 + 1744) = 0u;
  *(a1 + 1760) = 12;
  *(a1 + 1776) = xmmword_1BCE3D8B0;
  *(a1 + 1792) = xmmword_1BCE3D8C0;
  *(a1 + 1808) = xmmword_1BCE3C7A0;
  *(a1 + 1824) = 1;
  *(a1 + 1828) = xmmword_1BCE3C060;
  *(a1 + 1844) = 1040187392;
  *(a1 + 1848) = 0x4100000041700000;
  *(a1 + 1856) = 3;
  *(a1 + 1864) = 0x40000000;
  *(a1 + 1872) = 0x408000003F400000;
  *(a1 + 1880) = 1109393408;
  *(a1 + 1888) = _Q0;
  *(a1 + 1904) = 0x3DCCCCCD00000000;
  *(a1 + 1912) = 1101004800;
  *(a1 + 1920) = 0;
  *(a1 + 1928) = 1106247680;
  *(a1 + 1936) = _Q0;
  *(a1 + 1952) = 1077936128;
  *(a1 + 1960) = 0x420C000041C80000;
  *(a1 + 1968) = xmmword_1BCE3C070;
  *(a1 + 1984) = 0x3F800000412D53BALL;
  *(a1 + 1992) = 1061158912;
  *(a1 + 2000) = 0x3F4CCCCD3E4CCCCDLL;
  *(a1 + 2008) = 0x3F6666663F333333;
  *(a1 + 2016) = xmmword_1BCE3C7E0;
  *(a1 + 2096) = 0u;
  *(a1 + 2080) = 0u;
  *(a1 + 2064) = 0u;
  *(a1 + 2048) = 0u;
  *(a1 + 2032) = 0u;
  *(a1 + 2112) = 1056964608;
  *(a1 + 2120) = 0x3E4CCCCD3DCCCCCDLL;
  *(a1 + 2128) = 0x406666663FC00000;
  *(a1 + 2136) = 0x4040000040000000;
  *(a1 + 2144) = -1046478848;
  *(a1 + 2160) = _Q0;
  *(a1 + 2176) = _Q0;
  *(a1 + 2192) = 1053273620;
  *(a1 + 2200) = 10;
  *(a1 + 2208) = 0x40A000003FC00000;
  *(a1 + 2224) = xmmword_1BCE3C090;
  *(a1 + 2240) = xmmword_1BCE3C0A0;
  *(a1 + 2256) = _Q0;
  *(a1 + 2304) = 0;
  *(a1 + 2288) = 0u;
  *(a1 + 2272) = 0u;
  *(a1 + 2312) = v4;
  *(a1 + 2320) = v11;
}

double sub_1BCA75E88()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07858);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BCE3EBD0;
  *(v0 + 48) = xmmword_1BCE3F510;
  *(v0 + 64) = 0x420C000043480000;
  *(v0 + 80) = xmmword_1BCE3E140;
  *(v0 + 96) = xmmword_1BCE3E150;
  *(v0 + 112) = xmmword_1BCE3FB80;
  *(v0 + 128) = xmmword_1BCE3FB90;
  *(v0 + 4912) = xmmword_1BCE3FD40;
  *(v0 + 6128) = xmmword_1BCE3FD40;
  *(v0 + 4928) = 1147207680;
  *(v0 + 6144) = 1147207680;
  *(v0 + 4976) = xmmword_1BCE3FD50;
  *(v0 + 6192) = xmmword_1BCE3FD50;
  *(v0 + 4992) = xmmword_1BCE3FD60;
  *(v0 + 6208) = xmmword_1BCE3FD60;
  *(v0 + 5008) = xmmword_1BCE3EEF0;
  *(v0 + 6224) = xmmword_1BCE3EEF0;
  *(v0 + 5024) = xmmword_1BCE3EF00;
  *(v0 + 6240) = xmmword_1BCE3EF00;
  *(v0 + 5184) = xmmword_1BCE3E2C0;
  *(v0 + 6400) = xmmword_1BCE3E2C0;
  *(v0 + 5200) = xmmword_1BCE3FD70;
  *(v0 + 6416) = xmmword_1BCE3FD70;
  *(v0 + 5264) = xmmword_1BCE3FD80;
  *(v0 + 6480) = xmmword_1BCE3FD80;
  *(v0 + 5568) = xmmword_1BCE3EE20;
  *(v0 + 6784) = xmmword_1BCE3EE20;
  *(v0 + 5600) = xmmword_1BCE3CBB0;
  *(v0 + 6816) = xmmword_1BCE3CBB0;
  *(v0 + 3696) = xmmword_1BCE3EE30;
  *(v0 + 7344) = xmmword_1BCE3EE30;
  *(v0 + 3712) = 1143930880;
  *(v0 + 7360) = 1143930880;
  *(v0 + 3760) = xmmword_1BCE3FD00;
  *(v0 + 7408) = xmmword_1BCE3FD00;
  *(v0 + 3776) = xmmword_1BCE3F930;
  *(v0 + 7424) = xmmword_1BCE3F930;
  *(v0 + 3792) = xmmword_1BCE3E180;
  *(v0 + 7440) = xmmword_1BCE3E180;
  *(v0 + 3808) = xmmword_1BCE3CB90;
  *(v0 + 7456) = xmmword_1BCE3CB90;
  *(v0 + 3984) = xmmword_1BCE3FD10;
  *(v0 + 7632) = xmmword_1BCE3FD10;
  *(v0 + 4000) = xmmword_1BCE3FD20;
  *(v0 + 5216) = xmmword_1BCE3FD20;
  *(v0 + 6432) = xmmword_1BCE3FD20;
  *(v0 + 7648) = xmmword_1BCE3FD20;
  v1 = vdupq_n_s32(0x3F666666u);
  *(v0 + 4016) = v1;
  *(v0 + 5232) = v1;
  *(v0 + 6448) = v1;
  *(v0 + 7664) = v1;
  *(v0 + 4032) = 1063675494;
  *(v0 + 5248) = 1063675494;
  *(v0 + 6464) = 1063675494;
  *(v0 + 7680) = 1063675494;
  *(v0 + 4048) = xmmword_1BCE3CDC0;
  *(v0 + 7696) = xmmword_1BCE3CDC0;
  *(v0 + 4288) = xmmword_1BCE3CEE0;
  *(v0 + 7936) = xmmword_1BCE3CEE0;
  *(v0 + 4384) = xmmword_1BCE3CCC0;
  *(v0 + 8032) = xmmword_1BCE3CCC0;
  *(v0 + 2480) = xmmword_1BCE3F7B0;
  *(v0 + 8560) = xmmword_1BCE3F7B0;
  *(v0 + 2496) = 1128792064;
  *(v0 + 8576) = 1128792064;
  *(v0 + 2544) = xmmword_1BCE3FCA0;
  *(v0 + 8624) = xmmword_1BCE3FCA0;
  *(v0 + 2560) = xmmword_1BCE3FCB0;
  *(v0 + 8640) = xmmword_1BCE3FCB0;
  *(v0 + 2576) = xmmword_1BCE3FCC0;
  *(v0 + 8656) = xmmword_1BCE3FCC0;
  *(v0 + 2592) = xmmword_1BCE3FCD0;
  *(v0 + 8672) = xmmword_1BCE3FCD0;
  v2 = vdupq_n_s64(0x3FE09C5FA0000000uLL);
  *(v0 + 2640) = v2;
  *(v0 + 8720) = v2;
  *(v0 + 2656) = xmmword_1BCE46320;
  *(v0 + 8736) = xmmword_1BCE46320;
  *(v0 + 2752) = xmmword_1BCE3E1D0;
  *(v0 + 8832) = xmmword_1BCE3E1D0;
  *(v0 + 2768) = xmmword_1BCE3FCE0;
  *(v0 + 8848) = xmmword_1BCE3FCE0;
  *(v0 + 2784) = xmmword_1BCE3FCF0;
  *(v0 + 8864) = xmmword_1BCE3FCF0;
  *(v0 + 1360) = xmmword_1BCE3FC30;
  *(v0 + 9872) = xmmword_1BCE3FC30;
  *(v0 + 1376) = xmmword_1BCE3FC40;
  *(v0 + 9888) = xmmword_1BCE3FC40;
  *(v0 + 1456) = xmmword_1BCE3FC50;
  *(v0 + 9968) = xmmword_1BCE3FC50;
  *(v0 + 1488) = xmmword_1BCE3FC60;
  *(v0 + 10000) = xmmword_1BCE3FC60;
  *(v0 + 1504) = xmmword_1BCE3FC70;
  *(v0 + 10016) = xmmword_1BCE3FC70;
  *(v0 + 1520) = xmmword_1BCE3FC80;
  *(v0 + 10032) = xmmword_1BCE3FC80;
  *(v0 + 1552) = xmmword_1BCE3FC90;
  *(v0 + 10064) = xmmword_1BCE3FC90;
  *(v0 + 1264) = xmmword_1BCE3F510;
  *(v0 + 9776) = xmmword_1BCE3F510;
  *(v0 + 10992) = xmmword_1BCE3F510;
  *(v0 + 144) = xmmword_1BCE3F6E0;
  *(v0 + 160) = xmmword_1BCE3ED00;
  *(v0 + 1280) = 0x420C000043480000;
  *(v0 + 9792) = 0x420C000043480000;
  *(v0 + 11008) = 0x420C000043480000;
  __asm { FMOV            V4.2D, #1.0 }

  *(v0 + 1296) = xmmword_1BCE3E140;
  *(v0 + 2512) = xmmword_1BCE3E140;
  *(v0 + 3728) = xmmword_1BCE3E140;
  *(v0 + 4944) = xmmword_1BCE3E140;
  *(v0 + 6160) = xmmword_1BCE3E140;
  *(v0 + 7376) = xmmword_1BCE3E140;
  *(v0 + 8592) = xmmword_1BCE3E140;
  *(v0 + 9808) = xmmword_1BCE3E140;
  *(v0 + 11024) = xmmword_1BCE3E140;
  v8 = vdupq_n_s64(0x3FDF8963C0000000uLL);
  *(v0 + 1312) = xmmword_1BCE3E150;
  *(v0 + 2528) = xmmword_1BCE3E150;
  *(v0 + 3744) = xmmword_1BCE3E150;
  *(v0 + 4960) = xmmword_1BCE3E150;
  *(v0 + 6176) = xmmword_1BCE3E150;
  *(v0 + 7392) = xmmword_1BCE3E150;
  *(v0 + 8608) = xmmword_1BCE3E150;
  *(v0 + 9824) = xmmword_1BCE3E150;
  *(v0 + 11040) = xmmword_1BCE3E150;
  *(v0 + 208) = v8;
  *(v0 + 224) = xmmword_1BCE46310;
  *(v0 + 1328) = xmmword_1BCE3FB80;
  *(v0 + 9840) = xmmword_1BCE3FB80;
  *(v0 + 11056) = xmmword_1BCE3FB80;
  *(v0 + 1344) = xmmword_1BCE3FB90;
  *(v0 + 9856) = xmmword_1BCE3FB90;
  *(v0 + 11072) = xmmword_1BCE3FB90;
  *(v0 + 240) = xmmword_1BCE3FBA0;
  *(v0 + 256) = xmmword_1BCE3FBB0;
  *(v0 + 11088) = xmmword_1BCE3F6E0;
  *(v0 + 11104) = xmmword_1BCE3ED00;
  *(v0 + 272) = xmmword_1BCE3FBC0;
  *(v0 + 288) = xmmword_1BCE3FBD0;
  *(v0 + 1424) = v8;
  *(v0 + 9936) = v8;
  *(v0 + 11152) = v8;
  *(v0 + 1440) = xmmword_1BCE46310;
  *(v0 + 9952) = xmmword_1BCE46310;
  *(v0 + 11168) = xmmword_1BCE46310;
  *(v0 + 304) = xmmword_1BCE3FBE0;
  *(v0 + 320) = xmmword_1BCE3E220;
  *(v0 + 11184) = xmmword_1BCE3FBA0;
  *(v0 + 11200) = xmmword_1BCE3FBB0;
  *(v0 + 11216) = xmmword_1BCE3FBC0;
  v9 = vdupq_n_s32(0x3F4CCCCDu);
  *(v0 + 336) = xmmword_1BCE3FBF0;
  *(v0 + 352) = xmmword_1BCE3FC00;
  *(v0 + 368) = v9;
  *(v0 + 11232) = xmmword_1BCE3FBD0;
  *(v0 + 384) = 0x3F8000003F4CCCCDLL;
  *(v0 + 11248) = xmmword_1BCE3FBE0;
  *(v0 + 432) = 0u;
  *(v0 + 448) = 0u;
  *(v0 + 1536) = xmmword_1BCE3E220;
  *(v0 + 10048) = xmmword_1BCE3E220;
  *(v0 + 11264) = xmmword_1BCE3E220;
  result = 1.0;
  *(v0 + 11280) = xmmword_1BCE3FBF0;
  *(v0 + 512) = xmmword_1BCE3A880;
  *(v0 + 1568) = xmmword_1BCE3FC00;
  *(v0 + 10080) = xmmword_1BCE3FC00;
  *(v0 + 11296) = xmmword_1BCE3FC00;
  *(v0 + 544) = xmmword_1BCE3D430;
  *(v0 + 576) = xmmword_1BCE3A880;
  *(v0 + 1584) = v9;
  *(v0 + 2800) = v9;
  *(v0 + 2816) = v9.i64[0];
  *(v0 + 8880) = v9;
  *(v0 + 8896) = v9.i64[0];
  *(v0 + 10096) = v9;
  *(v0 + 11312) = v9;
  *(v0 + 640) = xmmword_1BCE3A880;
  *(v0 + 1600) = 0x3F8000003F4CCCCDLL;
  *(v0 + 10112) = 0x3F8000003F4CCCCDLL;
  *(v0 + 11328) = 0x3F8000003F4CCCCDLL;
  *(v0 + 1664) = 0u;
  *(v0 + 1648) = 0u;
  *(v0 + 2880) = 0u;
  *(v0 + 2864) = 0u;
  *(v0 + 4096) = 0u;
  *(v0 + 4080) = 0u;
  *(v0 + 5312) = 0u;
  *(v0 + 5296) = 0u;
  *(v0 + 6528) = 0u;
  *(v0 + 6512) = 0u;
  *(v0 + 7744) = 0u;
  *(v0 + 7728) = 0u;
  *(v0 + 8960) = 0u;
  *(v0 + 8944) = 0u;
  *(v0 + 10176) = 0u;
  *(v0 + 10160) = 0u;
  *(v0 + 11392) = 0u;
  *(v0 + 11376) = 0u;
  *(v0 + 688) = xmmword_1BCE3ECA0;
  *(v0 + 704) = xmmword_1BCE3A880;
  *(v0 + 1760) = xmmword_1BCE3D430;
  *(v0 + 2976) = xmmword_1BCE3D430;
  *(v0 + 4192) = xmmword_1BCE3D430;
  *(v0 + 5408) = xmmword_1BCE3D430;
  *(v0 + 6624) = xmmword_1BCE3D430;
  *(v0 + 7840) = xmmword_1BCE3D430;
  *(v0 + 9056) = xmmword_1BCE3D430;
  *(v0 + 10272) = xmmword_1BCE3D430;
  *(v0 + 11488) = xmmword_1BCE3D430;
  *(v0 + 736) = xmmword_1BCE3E350;
  *(v0 + 1952) = xmmword_1BCE3E350;
  *(v0 + 3168) = xmmword_1BCE3E350;
  *(v0 + 3968) = xmmword_1BCE3E350;
  *(v0 + 4672) = xmmword_1BCE3E350;
  *(v0 + 5888) = xmmword_1BCE3E350;
  *(v0 + 7104) = xmmword_1BCE3E350;
  *(v0 + 7616) = xmmword_1BCE3E350;
  *(v0 + 8320) = xmmword_1BCE3E350;
  *(v0 + 9248) = xmmword_1BCE3E350;
  *(v0 + 10464) = xmmword_1BCE3E350;
  *(v0 + 11680) = xmmword_1BCE3E350;
  *(v0 + 800) = xmmword_1BCE3DD90;
  *(v0 + 816) = xmmword_1BCE3ECA0;
  *(v0 + 832) = xmmword_1BCE3A880;
  *(v0 + 2016) = xmmword_1BCE3DD90;
  *(v0 + 3232) = xmmword_1BCE3DD90;
  *(v0 + 4448) = xmmword_1BCE3DD90;
  *(v0 + 5664) = xmmword_1BCE3DD90;
  *(v0 + 6880) = xmmword_1BCE3DD90;
  *(v0 + 8096) = xmmword_1BCE3DD90;
  *(v0 + 9312) = xmmword_1BCE3DD90;
  *(v0 + 10528) = xmmword_1BCE3DD90;
  *(v0 + 11744) = xmmword_1BCE3DD90;
  *(v0 + 1728) = xmmword_1BCE3A880;
  *(v0 + 1792) = xmmword_1BCE3A880;
  *(v0 + 1856) = xmmword_1BCE3A880;
  *(v0 + 1920) = xmmword_1BCE3A880;
  *(v0 + 2048) = xmmword_1BCE3A880;
  *(v0 + 2944) = xmmword_1BCE3A880;
  *(v0 + 3008) = xmmword_1BCE3A880;
  *(v0 + 3072) = xmmword_1BCE3A880;
  *(v0 + 3136) = xmmword_1BCE3A880;
  *(v0 + 3264) = xmmword_1BCE3A880;
  *(v0 + 4160) = xmmword_1BCE3A880;
  *(v0 + 4224) = xmmword_1BCE3A880;
  *(v0 + 4352) = xmmword_1BCE3A880;
  *(v0 + 4480) = xmmword_1BCE3A880;
  *(v0 + 8368) = _Q4;
  *(v0 + 5376) = xmmword_1BCE3A880;
  *(v0 + 5440) = xmmword_1BCE3A880;
  *(v0 + 8288) = xmmword_1BCE3DAE0;
  *(v0 + 8304) = _Q4;
  *(v0 + 8336) = _Q4;
  *(v0 + 8352) = xmmword_1BCE3CBC0;
  *(v0 + 5696) = xmmword_1BCE3A880;
  *(v0 + 8208) = _Q4;
  *(v0 + 8224) = _Q4;
  *(v0 + 8240) = _Q4;
  *(v0 + 8256) = xmmword_1BCE3C8C0;
  *(v0 + 8272) = _Q4;
  *(v0 + 8112) = _Q4;
  *(v0 + 8128) = xmmword_1BCE3A880;
  *(v0 + 8144) = _Q4;
  *(v0 + 8160) = xmmword_1BCE3FC20;
  *(v0 + 8176) = _Q4;
  *(v0 + 0x2000) = _Q4;
  *(v0 + 6592) = xmmword_1BCE3A880;
  *(v0 + 6656) = xmmword_1BCE3A880;
  *(v0 + 8016) = _Q4;
  *(v0 + 8048) = _Q4;
  *(v0 + 8064) = _Q4;
  *(v0 + 8080) = _Q4;
  *(v0 + 6912) = xmmword_1BCE3A880;
  *(v0 + 7920) = _Q4;
  *(v0 + 7952) = _Q4;
  *(v0 + 7968) = _Q4;
  *(v0 + 7984) = _Q4;
  *(v0 + 8000) = xmmword_1BCE3A880;
  *(v0 + 7824) = _Q4;
  *(v0 + 7856) = _Q4;
  *(v0 + 7872) = xmmword_1BCE3A880;
  *(v0 + 7888) = _Q4;
  *(v0 + 7904) = xmmword_1BCE3C8C0;
  *(v0 + 7472) = _Q4;
  *(v0 + 7488) = _Q4;
  *(v0 + 7760) = _Q4;
  *(v0 + 7776) = xmmword_1BCE3DAE0;
  *(v0 + 7792) = _Q4;
  *(v0 + 7808) = xmmword_1BCE3A880;
  *(v0 + 7504) = _Q4;
  *(v0 + 7520) = xmmword_1BCE3DAE0;
  *(v0 + 7536) = _Q4;
  *(v0 + 7688) = 0x3FEF0AE2E0000000;
  *(v0 + 7712) = 0x3FF0000000000000;
  *(v0 + 7720) = 0;
  *(v0 + 7552) = _Q4;
  *(v0 + 7568) = _Q4;
  *(v0 + 7584) = _Q4;
  *(v0 + 7600) = _Q4;
  *(v0 + 9024) = xmmword_1BCE3A880;
  *(v0 + 9088) = xmmword_1BCE3A880;
  *(v0 + 9152) = xmmword_1BCE3A880;
  *(v0 + 9216) = xmmword_1BCE3A880;
  *(v0 + 9344) = xmmword_1BCE3A880;
  *(v0 + 10240) = xmmword_1BCE3A880;
  *(v0 + 10304) = xmmword_1BCE3A880;
  *(v0 + 10368) = xmmword_1BCE3A880;
  *(v0 + 10432) = xmmword_1BCE3A880;
  *(v0 + 10560) = xmmword_1BCE3A880;
  *(v0 + 11456) = xmmword_1BCE3A880;
  *(v0 + 11520) = xmmword_1BCE3A880;
  *(v0 + 11584) = xmmword_1BCE3A880;
  *(v0 + 11648) = xmmword_1BCE3A880;
  *(v0 + 11776) = xmmword_1BCE3A880;
  *(v0 + 1904) = xmmword_1BCE3ECA0;
  *(v0 + 7337) = *v16;
  *(v0 + 2032) = xmmword_1BCE3ECA0;
  *(v0 + 2064) = xmmword_1BCE3ECA0;
  *(v0 + 3120) = xmmword_1BCE3ECA0;
  *(v0 + 3248) = xmmword_1BCE3ECA0;
  *(v0 + 7328) = 0x4018000000000010;
  *(v0 + 7336) = 1;
  *(v0 + 7340) = *&v16[3];
  *(v0 + 7368) = 1058642330;
  *(v0 + 3280) = xmmword_1BCE3ECA0;
  *(v0 + 7256) = 0x3FF0000000000000;
  *(v0 + 7264) = _Q4;
  *(v0 + 7280) = _Q4;
  *(v0 + 7296) = _Q4;
  *(v0 + 7312) = 0x3FF0000000000000;
  *(v0 + 7168) = xmmword_1BCE3C8C0;
  *(v0 + 7184) = _Q4;
  *(v0 + 7200) = xmmword_1BCE3DAE0;
  *(v0 + 7216) = _Q4;
  *(v0 + 7232) = _Q4;
  *(v0 + 7248) = 0x4170000042480000;
  *(v0 + 6608) = _Q4;
  *(v0 + 7072) = xmmword_1BCE3DAE0;
  *(v0 + 7088) = _Q4;
  *(v0 + 7120) = _Q4;
  *(v0 + 7136) = xmmword_1BCE3CBC0;
  *(v0 + 7152) = _Q4;
  *(v0 + 6976) = _Q4;
  *(v0 + 6992) = _Q4;
  *(v0 + 7008) = _Q4;
  *(v0 + 7024) = _Q4;
  *(v0 + 7040) = xmmword_1BCE3C8C0;
  *(v0 + 7056) = _Q4;
  *(v0 + 6640) = _Q4;
  *(v0 + 6672) = _Q4;
  *(v0 + 6896) = _Q4;
  *(v0 + 6928) = _Q4;
  *(v0 + 6944) = xmmword_1BCE3FC20;
  *(v0 + 6960) = _Q4;
  *(v0 + 6688) = xmmword_1BCE3C8C0;
  *(v0 + 6704) = _Q4;
  *(v0 + 6800) = _Q4;
  *(v0 + 6832) = _Q4;
  *(v0 + 6848) = _Q4;
  *(v0 + 6864) = _Q4;
  *(v0 + 6720) = _Q4;
  *(v0 + 6736) = _Q4;
  *(v0 + 6752) = _Q4;
  *(v0 + 6768) = _Q4;
  *(v0 + 9200) = xmmword_1BCE3ECA0;
  *(v0 + 9328) = xmmword_1BCE3ECA0;
  *(v0 + 9360) = xmmword_1BCE3ECA0;
  *(v0 + 10416) = xmmword_1BCE3ECA0;
  *(v0 + 10544) = xmmword_1BCE3ECA0;
  *(v0 + 10576) = xmmword_1BCE3ECA0;
  *(v0 + 11632) = xmmword_1BCE3ECA0;
  *(v0 + 11760) = xmmword_1BCE3ECA0;
  *(v0 + 11792) = xmmword_1BCE3ECA0;
  *(v0 + 848) = xmmword_1BCE3ECA0;
  *(v0 + 864) = xmmword_1BCE3FC20;
  *(v0 + 6504) = 0;
  *(v0 + 6544) = _Q4;
  *(v0 + 6560) = xmmword_1BCE3DAE0;
  *(v0 + 6576) = _Q4;
  *(v0 + 2080) = xmmword_1BCE3FC20;
  *(v0 + 3296) = xmmword_1BCE3FC20;
  *(v0 + 6472) = 0x3FF0000000000000;
  *(v0 + 6496) = 0x3FF0000000000000;
  *(v0 + 4512) = xmmword_1BCE3FC20;
  *(v0 + 5728) = xmmword_1BCE3FC20;
  *(v0 + 6336) = _Q4;
  *(v0 + 6352) = _Q4;
  *(v0 + 6368) = _Q4;
  *(v0 + 6384) = _Q4;
  *(v0 + 6272) = _Q4;
  *(v0 + 6288) = _Q4;
  *(v0 + 6304) = xmmword_1BCE3DAE0;
  *(v0 + 6320) = _Q4;
  *(v0 + 9376) = xmmword_1BCE3FC20;
  *(v0 + 10592) = xmmword_1BCE3FC20;
  *(v0 + 11808) = xmmword_1BCE3FC20;
  *(v0 + 1024) = xmmword_1BCE3E230;
  *(v0 + 2240) = xmmword_1BCE3E230;
  *(v0 + 3456) = xmmword_1BCE3E230;
  *(v0 + 6256) = _Q4;
  *(v0 + 9536) = xmmword_1BCE3E230;
  *(v0 + 10752) = xmmword_1BCE3E230;
  *(v0 + 11968) = xmmword_1BCE3E230;
  *(v0 + 6040) = 0x3FF0000000000000;
  *(v0 + 6120) = 1;
  *(v0 + 6121) = *v15;
  *(v0 + 6124) = *&v15[3];
  *(v0 + 6152) = 1061997773;
  *(v0 + 6048) = _Q4;
  *(v0 + 6064) = _Q4;
  *(v0 + 6080) = _Q4;
  *(v0 + 6096) = 0x3FF0000000000000;
  *(v0 + 6112) = 0x4031FFFFFFFFFFF6;
  *(v0 + 5952) = xmmword_1BCE3C8C0;
  *(v0 + 5968) = _Q4;
  *(v0 + 5984) = xmmword_1BCE3DAE0;
  *(v0 + 6000) = _Q4;
  *(v0 + 6016) = _Q4;
  *(v0 + 6032) = 0x4170000042480000;
  *(v0 + 672) = xmmword_1BCE3CBC0;
  *(v0 + 5856) = xmmword_1BCE3DAE0;
  *(v0 + 5872) = _Q4;
  *(v0 + 5904) = _Q4;
  *(v0 + 5920) = xmmword_1BCE3CBC0;
  *(v0 + 5936) = _Q4;
  *(v0 + 5760) = _Q4;
  *(v0 + 5776) = _Q4;
  *(v0 + 5792) = _Q4;
  *(v0 + 5808) = _Q4;
  *(v0 + 5824) = xmmword_1BCE3C8C0;
  *(v0 + 5840) = _Q4;
  *(v0 + 1056) = xmmword_1BCE3CBC0;
  *(v0 + 1888) = xmmword_1BCE3CBC0;
  *(v0 + 2272) = xmmword_1BCE3CBC0;
  *(v0 + 5680) = _Q4;
  *(v0 + 5712) = _Q4;
  *(v0 + 5744) = _Q4;
  *(v0 + 3104) = xmmword_1BCE3CBC0;
  *(v0 + 3488) = xmmword_1BCE3CBC0;
  *(v0 + 5584) = _Q4;
  *(v0 + 5616) = _Q4;
  *(v0 + 5632) = _Q4;
  *(v0 + 5648) = _Q4;
  *(v0 + 5472) = xmmword_1BCE3C8C0;
  *(v0 + 5488) = _Q4;
  *(v0 + 5504) = _Q4;
  *(v0 + 5520) = _Q4;
  *(v0 + 5536) = _Q4;
  *(v0 + 5552) = _Q4;
  *(v0 + 4704) = xmmword_1BCE3CBC0;
  *(v0 + 5288) = 0;
  *(v0 + 5328) = _Q4;
  *(v0 + 5392) = _Q4;
  *(v0 + 5424) = _Q4;
  *(v0 + 5456) = _Q4;
  *(v0 + 5344) = xmmword_1BCE3DAE0;
  *(v0 + 5360) = _Q4;
  *(v0 + 9184) = xmmword_1BCE3CBC0;
  *(v0 + 9568) = xmmword_1BCE3CBC0;
  *(v0 + 10400) = xmmword_1BCE3CBC0;
  *(v0 + 10784) = xmmword_1BCE3CBC0;
  *(v0 + 11616) = xmmword_1BCE3CBC0;
  *(v0 + 12000) = xmmword_1BCE3CBC0;
  *(v0 + 608) = xmmword_1BCE3C8C0;
  *(v0 + 960) = xmmword_1BCE3C8C0;
  *(v0 + 5256) = 0x3FF0000000000000;
  *(v0 + 5280) = 0x3FF0000000000000;
  *(v0 + 1088) = xmmword_1BCE3C8C0;
  *(v0 + 1824) = xmmword_1BCE3C8C0;
  *(v0 + 5120) = _Q4;
  *(v0 + 5136) = _Q4;
  *(v0 + 5152) = _Q4;
  *(v0 + 5168) = _Q4;
  *(v0 + 2176) = xmmword_1BCE3C8C0;
  *(v0 + 5040) = _Q4;
  *(v0 + 5056) = _Q4;
  *(v0 + 5072) = _Q4;
  *(v0 + 5088) = xmmword_1BCE3DAE0;
  *(v0 + 5104) = _Q4;
  *(v0 + 2304) = xmmword_1BCE3C8C0;
  *(v0 + 3040) = xmmword_1BCE3C8C0;
  *(v0 + 3392) = xmmword_1BCE3C8C0;
  *(v0 + 3520) = xmmword_1BCE3C8C0;
  *(v0 + 4256) = xmmword_1BCE3C8C0;
  *(v0 + 4320) = _Q4;
  *(v0 + 4336) = _Q4;
  *(v0 + 4905) = *v14;
  *(v0 + 4936) = 1061997773;
  *(v0 + 4880) = 0x3FF0000000000000;
  *(v0 + 4896) = 0x4032000000000001;
  *(v0 + 4904) = 0;
  *(v0 + 4908) = *&v14[3];
  *(v0 + 4800) = _Q4;
  *(v0 + 4816) = 0x4170000042480000;
  *(v0 + 4824) = 0x3FF0000000000000;
  *(v0 + 4832) = _Q4;
  *(v0 + 4848) = _Q4;
  *(v0 + 4864) = _Q4;
  *(v0 + 4368) = _Q4;
  *(v0 + 4720) = _Q4;
  *(v0 + 4736) = xmmword_1BCE3C8C0;
  *(v0 + 4752) = _Q4;
  *(v0 + 4768) = xmmword_1BCE3DAE0;
  *(v0 + 4784) = _Q4;
  *(v0 + 4400) = _Q4;
  *(v0 + 4608) = xmmword_1BCE3C8C0;
  *(v0 + 4624) = _Q4;
  *(v0 + 4640) = xmmword_1BCE3DAE0;
  *(v0 + 4656) = _Q4;
  *(v0 + 4688) = _Q4;
  *(v0 + 4416) = _Q4;
  *(v0 + 4528) = _Q4;
  *(v0 + 4544) = _Q4;
  *(v0 + 4560) = _Q4;
  *(v0 + 4576) = _Q4;
  *(v0 + 4592) = _Q4;
  *(v0 + 4432) = _Q4;
  *(v0 + 4464) = _Q4;
  *(v0 + 4496) = _Q4;
  *(v0 + 8384) = xmmword_1BCE3C8C0;
  *(v0 + 9120) = xmmword_1BCE3C8C0;
  *(v0 + 9472) = xmmword_1BCE3C8C0;
  *(v0 + 9600) = xmmword_1BCE3C8C0;
  *(v0 + 10336) = xmmword_1BCE3C8C0;
  *(v0 + 10688) = xmmword_1BCE3C8C0;
  *(v0 + 10816) = xmmword_1BCE3C8C0;
  *(v0 + 11552) = xmmword_1BCE3C8C0;
  *(v0 + 11904) = xmmword_1BCE3C8C0;
  *(v0 + 12032) = xmmword_1BCE3C8C0;
  *(v0 + 480) = xmmword_1BCE3DAE0;
  *(v0 + 992) = xmmword_1BCE3DAE0;
  *(v0 + 4240) = _Q4;
  *(v0 + 4272) = _Q4;
  *(v0 + 4304) = _Q4;
  *(v0 + 1120) = xmmword_1BCE3DAE0;
  *(v0 + 1696) = xmmword_1BCE3DAE0;
  *(v0 + 4128) = xmmword_1BCE3DAE0;
  *(v0 + 4144) = _Q4;
  *(v0 + 4176) = _Q4;
  *(v0 + 4208) = _Q4;
  *(v0 + 2208) = xmmword_1BCE3DAE0;
  *(v0 + 2336) = xmmword_1BCE3DAE0;
  *(v0 + 2912) = xmmword_1BCE3DAE0;
  *(v0 + 4064) = 0x3FF0000000000000;
  *(v0 + 4072) = 0;
  *(v0 + 4112) = _Q4;
  *(v0 + 3424) = xmmword_1BCE3DAE0;
  *(v0 + 3552) = xmmword_1BCE3DAE0;
  *(v0 + 3824) = _Q4;
  *(v0 + 3840) = _Q4;
  *(v0 + 3856) = _Q4;
  *(v0 + 4040) = 0x3FEF0AE2E0000000;
  *(v0 + 3872) = xmmword_1BCE3DAE0;
  *(v0 + 3888) = _Q4;
  *(v0 + 3904) = _Q4;
  *(v0 + 3920) = _Q4;
  *(v0 + 3936) = _Q4;
  *(v0 + 3952) = _Q4;
  *(v0 + 8416) = xmmword_1BCE3DAE0;
  *(v0 + 8992) = xmmword_1BCE3DAE0;
  *(v0 + 9504) = xmmword_1BCE3DAE0;
  *(v0 + 9632) = xmmword_1BCE3DAE0;
  *(v0 + 10208) = xmmword_1BCE3DAE0;
  *(v0 + 10720) = xmmword_1BCE3DAE0;
  *(v0 + 10848) = xmmword_1BCE3DAE0;
  *(v0 + 11424) = xmmword_1BCE3DAE0;
  *(v0 + 11936) = xmmword_1BCE3DAE0;
  *(v0 + 12064) = xmmword_1BCE3DAE0;
  *(v0 + 1168) = 0x4170000042480000;
  *(v0 + 3616) = _Q4;
  *(v0 + 3689) = *v13;
  *(v0 + 3692) = *&v13[3];
  *(v0 + 3720) = 1058642330;
  *(v0 + 3632) = _Q4;
  *(v0 + 3648) = _Q4;
  *(v0 + 3664) = 0x3FF0000000000000;
  *(v0 + 3680) = 0x4017FFFFFFFFFFFALL;
  *(v0 + 3688) = 0;
  *(v0 + 2384) = 0x4170000042480000;
  *(v0 + 3536) = _Q4;
  *(v0 + 3568) = _Q4;
  *(v0 + 3584) = _Q4;
  *(v0 + 3600) = 0x4170000042480000;
  *(v0 + 3608) = 0x3FF0000000000000;
  *(v0 + 3440) = _Q4;
  *(v0 + 3472) = _Q4;
  *(v0 + 3504) = _Q4;
  *(v0 + 8464) = 0x4170000042480000;
  *(v0 + 9680) = 0x4170000042480000;
  *(v0 + 10896) = 0x4170000042480000;
  *(v0 + 12112) = 0x4170000042480000;
  *(v0 + 464) = _Q4;
  *(v0 + 3344) = _Q4;
  *(v0 + 3360) = _Q4;
  *(v0 + 3376) = _Q4;
  *(v0 + 3408) = _Q4;
  *(v0 + 496) = _Q4;
  *(v0 + 528) = _Q4;
  *(v0 + 560) = _Q4;
  *(v0 + 592) = _Q4;
  *(v0 + 3312) = _Q4;
  *(v0 + 3328) = _Q4;
  *(v0 + 624) = _Q4;
  *(v0 + 656) = _Q4;
  *(v0 + 3152) = _Q4;
  *(v0 + 3184) = _Q4;
  *(v0 + 3200) = _Q4;
  *(v0 + 3216) = _Q4;
  *(v0 + 720) = _Q4;
  *(v0 + 768) = _Q4;
  *(v0 + 784) = _Q4;
  *(v0 + 944) = _Q4;
  *(v0 + 976) = _Q4;
  *(v0 + 3056) = _Q4;
  *(v0 + 3088) = _Q4;
  *(v0 + 1008) = _Q4;
  *(v0 + 2960) = _Q4;
  *(v0 + 2992) = _Q4;
  *(v0 + 3024) = _Q4;
  *(v0 + 176) = _Q4;
  *(v0 + 192) = _Q4;
  *(v0 + 400) = _Q4;
  *(v0 + 752) = _Q4;
  *(v0 + 2896) = _Q4;
  *(v0 + 2928) = _Q4;
  *(v0 + 880) = _Q4;
  *(v0 + 896) = _Q4;
  *(v0 + 2824) = 0x3FF0000000000000;
  *(v0 + 2832) = _Q4;
  *(v0 + 2848) = 0x3FF0000000000000;
  *(v0 + 2856) = 0;
  *(v0 + 912) = _Q4;
  *(v0 + 928) = _Q4;
  *(v0 + 1040) = _Q4;
  *(v0 + 2704) = _Q4;
  *(v0 + 2720) = _Q4;
  *(v0 + 2736) = _Q4;
  *(v0 + 1072) = _Q4;
  *(v0 + 1104) = _Q4;
  *(v0 + 2608) = _Q4;
  *(v0 + 2624) = _Q4;
  *(v0 + 2672) = _Q4;
  *(v0 + 2688) = _Q4;
  *(v0 + 1136) = _Q4;
  *(v0 + 1152) = _Q4;
  *(v0 + 1176) = 0x3FF0000000000000;
  *(v0 + 1184) = _Q4;
  *(v0 + 1200) = _Q4;
  *(v0 + 1216) = _Q4;
  *(v0 + 1232) = 0x3FF0000000000000;
  *(v0 + 1248) = 0xC04E000000000000;
  *(v0 + 1256) = 0;
  *(v0 + 1257) = *v11;
  *(v0 + 2473) = *v12;
  *(v0 + 2504) = 1045220557;
  *(v0 + 2448) = 0x3FF0000000000000;
  *(v0 + 2464) = 0xC031FFFFFFFFFFFFLL;
  *(v0 + 2472) = 0;
  *(v0 + 2476) = *&v12[3];
  *(v0 + 1260) = *&v11[3];
  *(v0 + 2392) = 0x3FF0000000000000;
  *(v0 + 2400) = _Q4;
  *(v0 + 2416) = _Q4;
  *(v0 + 2432) = _Q4;
  *(v0 + 1288) = 1036831949;
  *(v0 + 1392) = _Q4;
  *(v0 + 2288) = _Q4;
  *(v0 + 2320) = _Q4;
  *(v0 + 2352) = _Q4;
  *(v0 + 2368) = _Q4;
  *(v0 + 1408) = _Q4;
  *(v0 + 1472) = _Q4;
  *(v0 + 1608) = 0x3FF0000000000000;
  *(v0 + 2192) = _Q4;
  *(v0 + 2224) = _Q4;
  *(v0 + 2256) = _Q4;
  *(v0 + 1616) = _Q4;
  *(v0 + 2096) = _Q4;
  *(v0 + 2112) = _Q4;
  *(v0 + 2128) = _Q4;
  *(v0 + 2144) = _Q4;
  *(v0 + 2160) = _Q4;
  *(v0 + 1632) = 0x3FF0000000000000;
  *(v0 + 1640) = 0;
  *(v0 + 1680) = _Q4;
  *(v0 + 1712) = _Q4;
  *(v0 + 1744) = _Q4;
  *(v0 + 2000) = _Q4;
  *(v0 + 1776) = _Q4;
  *(v0 + 1808) = _Q4;
  *(v0 + 1840) = _Q4;
  *(v0 + 1936) = _Q4;
  *(v0 + 1968) = _Q4;
  *(v0 + 1984) = _Q4;
  *(v0 + 1872) = _Q4;
  *(v0 + 8400) = _Q4;
  *(v0 + 8432) = _Q4;
  *(v0 + 8448) = _Q4;
  *(v0 + 8480) = _Q4;
  *(v0 + 8496) = _Q4;
  *(v0 + 8512) = _Q4;
  *(v0 + 8688) = _Q4;
  *(v0 + 8704) = _Q4;
  *(v0 + 8752) = _Q4;
  *(v0 + 8768) = _Q4;
  *(v0 + 8784) = _Q4;
  *(v0 + 8800) = _Q4;
  *(v0 + 8816) = _Q4;
  *(v0 + 8912) = _Q4;
  *(v0 + 8976) = _Q4;
  *(v0 + 9008) = _Q4;
  *(v0 + 9040) = _Q4;
  *(v0 + 9072) = _Q4;
  *(v0 + 9104) = _Q4;
  *(v0 + 9136) = _Q4;
  *(v0 + 9168) = _Q4;
  *(v0 + 9232) = _Q4;
  *(v0 + 9264) = _Q4;
  *(v0 + 9280) = _Q4;
  *(v0 + 9296) = _Q4;
  *(v0 + 9392) = _Q4;
  *(v0 + 9408) = _Q4;
  *(v0 + 9424) = _Q4;
  *(v0 + 9440) = _Q4;
  *(v0 + 9456) = _Q4;
  *(v0 + 9488) = _Q4;
  *(v0 + 9520) = _Q4;
  *(v0 + 9552) = _Q4;
  *(v0 + 9584) = _Q4;
  *(v0 + 9616) = _Q4;
  *(v0 + 9648) = _Q4;
  *(v0 + 9664) = _Q4;
  *(v0 + 9696) = _Q4;
  *(v0 + 9712) = _Q4;
  *(v0 + 9728) = _Q4;
  *(v0 + 9904) = _Q4;
  *(v0 + 9920) = _Q4;
  *(v0 + 9984) = _Q4;
  *(v0 + 10128) = _Q4;
  *(v0 + 10192) = _Q4;
  *(v0 + 10224) = _Q4;
  *(v0 + 10256) = _Q4;
  *(v0 + 10288) = _Q4;
  *(v0 + 10320) = _Q4;
  *(v0 + 10352) = _Q4;
  *(v0 + 10384) = _Q4;
  *(v0 + 10448) = _Q4;
  *(v0 + 10480) = _Q4;
  *(v0 + 10496) = _Q4;
  *(v0 + 10512) = _Q4;
  *(v0 + 10608) = _Q4;
  *(v0 + 10624) = _Q4;
  *(v0 + 10640) = _Q4;
  *(v0 + 10656) = _Q4;
  *(v0 + 10672) = _Q4;
  *(v0 + 10704) = _Q4;
  *(v0 + 10736) = _Q4;
  *(v0 + 10768) = _Q4;
  *(v0 + 10800) = _Q4;
  *(v0 + 10832) = _Q4;
  *(v0 + 10864) = _Q4;
  *(v0 + 10880) = _Q4;
  *(v0 + 10912) = _Q4;
  *(v0 + 10928) = _Q4;
  *(v0 + 10944) = _Q4;
  *(v0 + 11120) = _Q4;
  *(v0 + 11136) = _Q4;
  *(v0 + 11344) = _Q4;
  *(v0 + 11408) = _Q4;
  *(v0 + 11440) = _Q4;
  *(v0 + 11472) = _Q4;
  *(v0 + 11504) = _Q4;
  *(v0 + 11536) = _Q4;
  *(v0 + 11568) = _Q4;
  *(v0 + 11600) = _Q4;
  *(v0 + 11664) = _Q4;
  *(v0 + 11696) = _Q4;
  *(v0 + 11712) = _Q4;
  *(v0 + 11728) = _Q4;
  *(v0 + 11824) = _Q4;
  *(v0 + 11840) = _Q4;
  *(v0 + 11856) = _Q4;
  *(v0 + 11872) = _Q4;
  *(v0 + 11888) = _Q4;
  *(v0 + 11920) = _Q4;
  *(v0 + 11952) = _Q4;
  *(v0 + 11984) = _Q4;
  *(v0 + 12016) = _Q4;
  *(v0 + 12048) = _Q4;
  *(v0 + 12080) = _Q4;
  *(v0 + 12096) = _Q4;
  *(v0 + 12128) = _Q4;
  *(v0 + 12144) = _Q4;
  *(v0 + 12160) = _Q4;
  *(v0 + 416) = 0x3FF0000000000000;
  *(v0 + 424) = 0;
  *(v0 + 32) = 0xC056800000000000;
  *(v0 + 392) = 0x3FF0000000000000;
  *(v0 + 40) = 0;
  *(v0 + 72) = 1036831949;
  *(v0 + 8472) = 0x3FF0000000000000;
  *(v0 + 8553) = *v17;
  *(v0 + 8528) = 0x3FF0000000000000;
  *(v0 + 8544) = 0xC032000000000004;
  *(v0 + 8552) = 1;
  *(v0 + 8556) = *&v17[3];
  *(v0 + 8584) = 1045220557;
  *(v0 + 8904) = 0x3FF0000000000000;
  *(v0 + 8928) = 0x3FF0000000000000;
  *(v0 + 8936) = 0;
  *(v0 + 9688) = 0x3FF0000000000000;
  *(v0 + 9744) = 0x3FF0000000000000;
  *(v0 + 9760) = 0xC04E000000000002;
  *(v0 + 9769) = *v18;
  *(v0 + 9768) = 1;
  *(v0 + 9772) = *&v18[3];
  *(v0 + 9800) = 1036831949;
  *(v0 + 10120) = 0x3FF0000000000000;
  *(v0 + 10144) = 0x3FF0000000000000;
  *(v0 + 10152) = 0;
  *(v0 + 10904) = 0x3FF0000000000000;
  *(v0 + 10960) = 0x3FF0000000000000;
  *(v0 + 10976) = 0xC056800000000000;
  *(v0 + 10984) = 1;
  *(v0 + 10985) = *v19;
  *(v0 + 10988) = *&v19[3];
  *(v0 + 11016) = 1036831949;
  *(v0 + 11336) = 0x3FF0000000000000;
  *(v0 + 11360) = 0x3FF0000000000000;
  *(v0 + 11368) = 0;
  *(v0 + 12120) = 0x3FF0000000000000;
  *(v0 + 12176) = 0x3FF0000000000000;
  return result;
}

uint64_t *sub_1BCA76EE4()
{
  if (qword_1EDA19860 != -1)
  {
    OUTLINED_FUNCTION_0_21();
  }

  return &qword_1EDA19868;
}

uint64_t static HourlyCellPreferenceKey.defaultValue.getter()
{
  if (qword_1EDA19860 != -1)
  {
    OUTLINED_FUNCTION_0_21();
  }

  swift_beginAccess();
}

uint64_t static HourlyCellPreferenceKey.defaultValue.setter(uint64_t a1)
{
  if (qword_1EDA19860 != -1)
  {
    OUTLINED_FUNCTION_0_21();
  }

  swift_beginAccess();
  qword_1EDA19868 = a1;
}

uint64_t (*static HourlyCellPreferenceKey.defaultValue.modify())()
{
  if (qword_1EDA19860 != -1)
  {
    OUTLINED_FUNCTION_0_21();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1BCA77074@<X0>(void *a1@<X8>)
{
  sub_1BCA76EE4();
  swift_beginAccess();
  *a1 = qword_1EDA19868;
}

uint64_t sub_1BCA770C8(uint64_t *a1)
{
  v1 = *a1;

  sub_1BCA76EE4();
  swift_beginAccess();
  qword_1EDA19868 = v1;
}

uint64_t sub_1BCA7719C@<X0>(uint64_t *a1@<X8>)
{
  result = static HourlyCellPreferenceKey.defaultValue.getter();
  *a1 = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for HourlyCellPreferenceKey(_BYTE *result, int a2, int a3)
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

uint64_t sub_1BCA772D8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BCA772F8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
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

  *(result + 40) = v3;
  return result;
}

uint64_t GEOCelestialEphemeris.moonPhase.getter()
{
  [v0 illuminatedFraction];
  v2 = v1;
  GEOCelestialEphemeris.moonPhaseAngle.getter();

  return MoonPhase.init(illuminatedFraction:phaseAngle:)(v2, v3);
}

uint64_t static CurrentObservationViewAttributes.LocationStyle.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    if (v3 != 2)
    {
      goto LABEL_8;
    }
  }

  else
  {
    if (v2 != 3)
    {
      if ((v3 & 0xFE) != 2)
      {
        v4 = v3 ^ v2 ^ 1;
        return v4 & 1;
      }

      goto LABEL_8;
    }

    if (v3 != 3)
    {
LABEL_8:
      v4 = 0;
      return v4 & 1;
    }
  }

  v4 = 1;
  return v4 & 1;
}

uint64_t type metadata accessor for CurrentObservationViewAttributes()
{
  result = qword_1EDA17B70;
  if (!qword_1EDA17B70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BCA774D0()
{
  v1 = OUTLINED_FUNCTION_12_0();
  v2(v1);
  OUTLINED_FUNCTION_4();
  v3 = OUTLINED_FUNCTION_10_1();
  v4(v3);
  return v0;
}

uint64_t CurrentObservationViewAttributes.location.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CurrentObservationViewAttributes() + 28);
  sub_1BCE1A6F0();
  OUTLINED_FUNCTION_4();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t CurrentObservationViewAttributes.description.getter()
{
  type metadata accessor for CurrentObservationViewAttributes();

  return OUTLINED_FUNCTION_10_1();
}

uint64_t CurrentObservationViewAttributes.locationStyle.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for CurrentObservationViewAttributes();
  *a1 = *(v1 + *(result + 36));
  return result;
}

uint64_t CurrentObservationViewAttributes.conditionGlyphForegroundColor.getter()
{
  type metadata accessor for CurrentObservationViewAttributes();
}

uint64_t CurrentObservationViewAttributes.labelFont.getter()
{
  type metadata accessor for CurrentObservationViewAttributes();
}

uint64_t CurrentObservationViewAttributes.descriptionFont.getter()
{
  type metadata accessor for CurrentObservationViewAttributes();
}

uint64_t CurrentObservationViewAttributes.conditionFont.getter()
{
  type metadata accessor for CurrentObservationViewAttributes();
}

uint64_t CurrentObservationViewAttributes.temperatureFont.getter()
{
  type metadata accessor for CurrentObservationViewAttributes();
}

uint64_t CurrentObservationViewAttributes.highLowTemperatureFont.getter()
{
  type metadata accessor for CurrentObservationViewAttributes();
}

uint64_t CurrentObservationViewAttributes.locationFont.getter()
{
  type metadata accessor for CurrentObservationViewAttributes();
}

uint64_t CurrentObservationViewAttributes.symbolOverride.getter()
{
  type metadata accessor for CurrentObservationViewAttributes();

  return OUTLINED_FUNCTION_10_1();
}

void CurrentObservationViewAttributes.init(currentObservation:todayDailyForecast:rainContent:location:locationStyle:description:isDataDense:conditionGlyphForegroundColor:labelColor:labelFont:descriptionColor:descriptionFont:conditionColor:conditionFont:temperatureColor:temperatureFont:temperatureFontWeight:usesSoftTemperatureFont:highLowTemperatureColor:highLowTemperatureFont:locationColor:locationFont:locationFontWeight:showNumericOnlyHighLow:useVerticalText:showConditionText:showConditionIcon:symbolOverride:showSevereConditionGlyph:locationDegreesSpacerHeight:locationNameTopSpacerHeight:conditionIconTopSpacerHeight:valueFontOpacity:)(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X5>, uint64_t a4@<X6>, int a5@<W7>, uint64_t a6@<X8>, double a7@<D0>, double a8@<D1>, double a9@<D2>, double a10@<D3>, double a11@<D4>, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  HIDWORD(v61) = a5;
  OUTLINED_FUNCTION_4_15();
  v60 = v37;
  OUTLINED_FUNCTION_5_11();
  v39 = *v38;
  OUTLINED_FUNCTION_2_12();
  v40 = type metadata accessor for CurrentObservationViewAttributes();
  OUTLINED_FUNCTION_1_9();
  sub_1BCA77F88(a1, a6 + v40[6]);
  v41 = v40[7];
  sub_1BCE1A6F0();
  OUTLINED_FUNCTION_4();
  (*(v42 + 32))(a6 + v41, a2);
  *(a6 + v40[9]) = v39;
  v43 = (a6 + v40[8]);
  *v43 = a3;
  v43[1] = a4;
  *(a6 + v40[10]) = BYTE4(v61);
  *(a6 + v40[11]) = a12;
  *(a6 + v40[12]) = a13;
  *(a6 + v40[13]) = a14;
  *(a6 + v40[14]) = a15;
  *(a6 + v40[15]) = a16;
  *(a6 + v40[16]) = v44;
  *(a6 + v40[17]) = v46;
  *(a6 + v40[18]) = v48;
  *(a6 + v40[19]) = v50;
  OUTLINED_FUNCTION_11_10(v40[20], v44, v46, v48, v50, a2, v54, v56);
  *(a6 + v40[21]) = BYTE4(v57);
  *(a6 + v40[22]) = a23;
  *(a6 + v40[23]) = v60;
  *(a6 + v40[24]) = v62;
  *(a6 + v40[25]) = v63;
  *(a6 + v40[26]) = a7;
  *(a6 + v40[27]) = v64;
  *(a6 + v40[28]) = BYTE4(v64);
  *(a6 + v40[29]) = v65;
  *(a6 + v40[30]) = BYTE4(v65);
  OUTLINED_FUNCTION_13_9(v40[31], v45, v47, v49, v51, v53, v55, v57, a3, a23, a4, v60, v61, v62, v63, v64, v65, v66, v67);
  *(a6 + v40[32]) = a30;
  *(a6 + v40[33]) = a8;
  *(a6 + v40[34]) = a9;
  *(a6 + v40[35]) = a10;
  *(a6 + v40[36]) = a11;
}

uint64_t sub_1BCA77F88(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08328);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

BOOL static CurrentObservationViewAttributes.== infix(_:_:)()
{
  OUTLINED_FUNCTION_12_0();
  type metadata accessor for RainInlineContentViewModel();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v2);
  v4 = (&v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08328);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = (&v33 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08330);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v33 - v10;
  if (!static CurrentObservationViewModel.== infix(_:_:)(v1, v0))
  {
    return 0;
  }

  v12 = type metadata accessor for CurrentObservationViewAttributes();
  if (!static DailyForecastViewModel.== infix(_:_:)(v1 + v12[5], v0 + v12[5]))
  {
    return 0;
  }

  v13 = v12[6];
  v14 = *(v8 + 48);
  sub_1BCA7854C(v1 + v13, v11);
  sub_1BCA7854C(v0 + v13, v11 + v14);
  OUTLINED_FUNCTION_20(v11);
  if (v15)
  {
    OUTLINED_FUNCTION_20(v11 + v14);
    if (v15)
    {
      sub_1BC94C05C(v11, &qword_1EBD08328);
      goto LABEL_13;
    }

LABEL_11:
    sub_1BC94C05C(v11, &qword_1EBD08330);
    return 0;
  }

  sub_1BCA7854C(v11, v7);
  OUTLINED_FUNCTION_20(v11 + v14);
  if (v15)
  {
    sub_1BCA785BC(v7);
    goto LABEL_11;
  }

  sub_1BCA78618();
  v16 = static RainInlineContentViewModel.== infix(_:_:)(v7, v4);
  sub_1BCA785BC(v4);
  sub_1BCA785BC(v7);
  sub_1BC94C05C(v11, &qword_1EBD08328);
  if ((v16 & 1) == 0)
  {
    return 0;
  }

LABEL_13:
  if ((sub_1BCE1A6B0() & 1) == 0)
  {
    return 0;
  }

  v17 = v12[8];
  v18 = *(v1 + v17);
  v19 = *(v1 + v17 + 8);
  v20 = (v0 + v17);
  v21 = v18 == *v20 && v19 == v20[1];
  if (!v21 && (sub_1BCE1E090() & 1) == 0)
  {
    return 0;
  }

  v22 = v12[9];
  v23 = *(v1 + v22);
  v24 = *(v0 + v22);
  if (v23 == 2)
  {
    if (v24 != 2)
    {
      return 0;
    }
  }

  else if (v23 == 3)
  {
    if (v24 != 3)
    {
      return 0;
    }
  }

  else if (v24 & 0xFE) == 2 || ((v24 ^ v23))
  {
    return 0;
  }

  OUTLINED_FUNCTION_3_16();
  if (!v15)
  {
    return 0;
  }

  OUTLINED_FUNCTION_10_11();
  if (v11)
  {
    if (!v4)
    {
      return 0;
    }

    OUTLINED_FUNCTION_15_6();
    OUTLINED_FUNCTION_14_7();
    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v4)
  {
    return 0;
  }

  OUTLINED_FUNCTION_10_11();
  if (v11)
  {
    if (!v4)
    {
      return 0;
    }

    OUTLINED_FUNCTION_15_6();
    OUTLINED_FUNCTION_14_7();
    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v4)
  {
    return 0;
  }

  if ((OUTLINED_FUNCTION_16_10() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_10_11();
  if (v11)
  {
    if (!v4)
    {
      return 0;
    }

    OUTLINED_FUNCTION_15_6();
    OUTLINED_FUNCTION_14_7();
    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v4)
  {
    return 0;
  }

  if ((OUTLINED_FUNCTION_16_10() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_10_11();
  if (v11)
  {
    if (!v4)
    {
      return 0;
    }

    OUTLINED_FUNCTION_15_6();
    OUTLINED_FUNCTION_14_7();
    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v4)
  {
    return 0;
  }

  if ((OUTLINED_FUNCTION_16_10() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_10_11();
  if (v11)
  {
    if (!v4)
    {
      return 0;
    }

    OUTLINED_FUNCTION_15_6();
    OUTLINED_FUNCTION_14_7();
    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v4)
  {
    return 0;
  }

  if ((OUTLINED_FUNCTION_16_10() & 1) == 0)
  {
    return 0;
  }

  v26 = v12[20];
  if (*(v1 + v26 + 8))
  {
    if ((*(v0 + v26 + 8) & 1) == 0)
    {
      return 0;
    }
  }

  else if ((*(v0 + v26 + 8) & 1) != 0 || (sub_1BCE1C360() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_3_16();
  if (!v15)
  {
    return 0;
  }

  OUTLINED_FUNCTION_10_11();
  if (v11)
  {
    if (!v4)
    {
      return 0;
    }

    OUTLINED_FUNCTION_15_6();
    OUTLINED_FUNCTION_14_7();
    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v4)
  {
    return 0;
  }

  if ((OUTLINED_FUNCTION_16_10() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_10_11();
  if (v11)
  {
    if (!v4)
    {
      return 0;
    }

    OUTLINED_FUNCTION_15_6();
    OUTLINED_FUNCTION_14_7();
    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v4)
  {
    return 0;
  }

  if ((OUTLINED_FUNCTION_16_10() & 1) == 0)
  {
    return 0;
  }

  if ((sub_1BCE1C360() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_3_16();
  if (!v15)
  {
    return 0;
  }

  OUTLINED_FUNCTION_3_16();
  if (!v15)
  {
    return 0;
  }

  OUTLINED_FUNCTION_3_16();
  if (!v15)
  {
    return 0;
  }

  OUTLINED_FUNCTION_3_16();
  if (!v15)
  {
    return 0;
  }

  v27 = v12[31];
  v28 = (v1 + v27);
  v29 = *(v1 + v27 + 8);
  v30 = (v0 + v27);
  v31 = v30[1];
  if (v29)
  {
    if (!v31)
    {
      return 0;
    }

    v32 = *v28 == *v30 && v29 == v31;
    if (!v32 && (sub_1BCE1E090() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v31)
  {
    return 0;
  }

  OUTLINED_FUNCTION_3_16();
  if (!v15)
  {
    return 0;
  }

  OUTLINED_FUNCTION_7_5(v12[33]);
  if (!v15)
  {
    return 0;
  }

  OUTLINED_FUNCTION_7_5(v12[34]);
  if (!v15)
  {
    return 0;
  }

  OUTLINED_FUNCTION_7_5(v12[35]);
  if (!v15)
  {
    return 0;
  }

  OUTLINED_FUNCTION_7_5(v12[36]);
  return v15 != 0;
}