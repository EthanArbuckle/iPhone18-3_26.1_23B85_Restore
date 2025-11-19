uint64_t sub_2179C3274(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_2179E9750();
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
    v5 = MEMORY[0x21CEA9650](15, a1 >> 16);
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

unint64_t sub_2179C32F0(unint64_t result, unint64_t a2, unint64_t a3)
{
  v5 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v5)
  {
    goto LABEL_9;
  }

  v6 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v6 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v6 < result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_2179C3390(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_2179C3168(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_2179C3390(unint64_t result, unint64_t a2, unint64_t a3)
{
  v5 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  if ((result & 0xC) == 4 << v5)
  {
    result = sub_2179C3274(result, a2, a3);
  }

  v6 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v6 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v6 < result >> 16)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2179C3400()
{
  v0 = sub_2179E9C70();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2179C346C(char a1)
{
  sub_2179E9E20();
  sub_2179B9674(a1);
  sub_2179E96C0();

  return sub_2179E9E40();
}

uint64_t sub_2179C3584(uint64_t a1, void (*a2)(_BYTE *, uint64_t))
{
  sub_2179E9E20();
  a2(v5, a1);
  return sub_2179E9E40();
}

uint64_t sub_2179C35DC()
{
  sub_2179E96C0();
}

uint64_t sub_2179C3694(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_4_4(a2);
}

uint64_t sub_2179C36CC(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_4_4(a2);
}

uint64_t sub_2179C3704(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_4_4(a2);
}

uint64_t sub_2179C373C(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_4_4(a2);
}

uint64_t sub_2179C3774(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_4_4(a2);
}

uint64_t sub_2179C37AC(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_4_4(a2);
}

uint64_t sub_2179C37E4(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_4_4(a2);
}

uint64_t sub_2179C381C(uint64_t a1, char a2)
{
  if (!a2)
  {
    OUTLINED_FUNCTION_3_3();
  }

  sub_2179E96C0();
}

uint64_t sub_2179C38A8(uint64_t a1, char a2)
{
  sub_2179E9E20();
  if (!a2)
  {
    OUTLINED_FUNCTION_3_3();
  }

  sub_2179E96C0();

  return sub_2179E9E40();
}

uint64_t sub_2179C39E8(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t))
{
  sub_2179E9E20();
  a3(v6, a2);
  return sub_2179E9E40();
}

uint64_t sub_2179C3A34(uint64_t a1, char a2)
{
  sub_2179E9E20();
  sub_2179B9674(a2);
  sub_2179E96C0();

  return sub_2179E9E40();
}

uint64_t sub_2179C3A94@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2179C3400();
  *a2 = result;
  return result;
}

uint64_t sub_2179C3AC4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2179B9674(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2179C3AF8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2179C344C();
  *a1 = result;
  return result;
}

uint64_t sub_2179C3B40@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2179C3450();
  *a1 = result;
  return result;
}

uint64_t sub_2179C3B68(uint64_t a1)
{
  v2 = sub_2179C3E98();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2179C3BA4(uint64_t a1)
{
  v2 = sub_2179C3E98();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ValueType.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2179C410C(0, &qword_27CB97F60, MEMORY[0x277D844C8]);
  v6 = OUTLINED_FUNCTION_0_0(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2179C3E98();
  sub_2179E9E90();
  if (!v2)
  {
    v10 = sub_2179E9C80();
    v12 = v11;
    v13 = OUTLINED_FUNCTION_0_5();
    v14(v13);
    *a2 = v10;
    *(a2 + 8) = v12;
    *(a2 + 16) = 0;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_2179C3E98()
{
  result = qword_27CB97F68;
  if (!qword_27CB97F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB97F68);
  }

  return result;
}

uint64_t ValueType.encode(to:)(void *a1)
{
  sub_2179C410C(0, &qword_27CB97F70, MEMORY[0x277D84538]);
  v16 = v3;
  v4 = OUTLINED_FUNCTION_0_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v10 = &v16 - v9;
  v11 = *v1;
  v12 = *(v1 + 8);
  v13 = *(v1 + 16);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2179C3E98();
  sub_2179E9EB0();
  switch(v13)
  {
    case 1:
      LOBYTE(v17) = 1;
      OUTLINED_FUNCTION_2_3();
      sub_2179E9D10();
      return (*(v6 + 8))(v10, v11);
    case 2:
      LOBYTE(v17) = 2;
      OUTLINED_FUNCTION_2_3();
      sub_2179E9CF0();
      return (*(v6 + 8))(v10, v11);
    case 3:
      LOBYTE(v17) = 3;
      v11 = v16;
      sub_2179E9D00();
      return (*(v6 + 8))(v10, v11);
    case 4:
      v17 = v11;
      v18 = v12;
      v19 = 4;
      sub_2179A2DF0();
      OUTLINED_FUNCTION_2_3();
      sub_2179E9D20();
      return (*(v6 + 8))(v10, v11);
    case 5:
      return (*(v6 + 8))(v10, v16);
    default:
      LOBYTE(v17) = 0;
      v11 = v16;
      sub_2179E9CE0();
      return (*(v6 + 8))(v10, v11);
  }
}

void sub_2179C410C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2179C3E98();
    v7 = a3(a1, &type metadata for ValueType.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t ValueType.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  result = 1819047278;
  switch(*(v0 + 16))
  {
    case 1:
      v10 = *v0;
      result = sub_2179E9D40();
      break;
    case 2:
      if (v1)
      {
        v6 = 1702195828;
      }

      else
      {
        v6 = 0x65736C6166;
      }

      if (v1)
      {
        v7 = 0xE400000000000000;
      }

      else
      {
        v7 = 0xE500000000000000;
      }

      MEMORY[0x21CEA9600](v6, v7);

      goto LABEL_12;
    case 3:
      v5 = *v0;
      sub_2179E9860();
LABEL_12:
      result = 0;
      break;
    case 4:
      v8 = *v0;
      v9 = *(v0 + 8);
      result = sub_2179E91C0();
      break;
    case 5:
      return result;
    default:
      v4 = *(v0 + 8);

      result = v1;
      break;
  }

  return result;
}

uint64_t static ValueType.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  switch(*(a1 + 16))
  {
    case 1:
      if (v6 != 1)
      {
        goto LABEL_23;
      }

      v10 = *&v3 == *&v4;
      goto LABEL_16;
    case 2:
      if (v6 != 2)
      {
        goto LABEL_23;
      }

      v9 = LOBYTE(v4) ^ LOBYTE(v3) ^ 1;
      return v9 & 1;
    case 3:
      if (v6 != 3)
      {
        goto LABEL_23;
      }

      v10 = v3 == v4;
LABEL_16:
      v9 = v10;
      return v9 & 1;
    case 4:
      if (v6 == 4)
      {
        JUMPOUT(0x21CEA90E0);
      }

      goto LABEL_23;
    case 5:
      if (v6 != 5 || (v5 | *&v4) != 0)
      {
        goto LABEL_23;
      }

      goto LABEL_25;
    default:
      if (*(a2 + 16))
      {
LABEL_23:
        v9 = 0;
      }

      else
      {
        if (*&v3 != *&v4 || *(a1 + 8) != v5)
        {
          return sub_2179E9D70();
        }

LABEL_25:
        v9 = 1;
      }

      return v9 & 1;
  }
}

uint64_t ValueType.queryValue.getter()
{
  result = 1280070990;
  switch(*(v0 + 16))
  {
    case 1:
      v7 = *v0;
      result = sub_2179E9D40();
      break;
    case 2:
      if (*v0)
      {
        result = 49;
      }

      else
      {
        result = 48;
      }

      break;
    case 3:
      v3 = *v0;
      v6 = 0;
      sub_2179E9860();
      goto LABEL_4;
    case 4:
      result = Data.queryValue.getter(*v0, *(v0 + 8));
      break;
    case 5:
      return result;
    default:
      v6 = 39;
      v4 = *v0;
      v5 = *(v0 + 8);
      sub_2179A4934();
      v2 = sub_2179E9A80();
      MEMORY[0x21CEA9600](v2);

      MEMORY[0x21CEA9600](39, 0xE100000000000000);
LABEL_4:
      result = v6;
      break;
  }

  return result;
}

uint64_t sub_2179C44C4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFB && *(a1 + 17))
    {
      v2 = *a1 + 250;
    }

    else
    {
      v3 = *(a1 + 16);
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

uint64_t sub_2179C4504(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
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

uint64_t sub_2179C4548(uint64_t result, unsigned int a2)
{
  if (a2 >= 5)
  {
    *result = a2 - 5;
    *(result + 8) = 0;
    LOBYTE(a2) = 5;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for ValueType.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for ValueType.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2179C46D8()
{
  result = qword_27CB97F78;
  if (!qword_27CB97F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB97F78);
  }

  return result;
}

unint64_t sub_2179C4730()
{
  result = qword_27CB97F80;
  if (!qword_27CB97F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB97F80);
  }

  return result;
}

unint64_t sub_2179C4788()
{
  result = qword_27CB97F88;
  if (!qword_27CB97F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB97F88);
  }

  return result;
}

uint64_t sub_2179C47DC(unsigned __int8 a1, char a2)
{
  v2 = 1954047348;
  v3 = 0xE400000000000000;
  v4 = a1;
  v5 = 1954047348;
  switch(v4)
  {
    case 1:
      v3 = 0xE700000000000000;
      v5 = 0x72656765746E69;
      break;
    case 2:
      v5 = 1819242338;
      break;
    case 3:
      v3 = 0xE600000000000000;
      v5 = 0x656C62756F64;
      break;
    case 4:
      v5 = 1651469410;
      break;
    case 5:
      v5 = 1819047278;
      break;
    default:
      break;
  }

  v6 = 0xE400000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE700000000000000;
      v2 = 0x72656765746E69;
      break;
    case 2:
      v2 = 1819242338;
      break;
    case 3:
      v6 = 0xE600000000000000;
      v2 = 0x656C62756F64;
      break;
    case 4:
      v2 = 1651469410;
      break;
    case 5:
      v2 = 1819047278;
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
    v8 = sub_2179E9D70();
  }

  return v8 & 1;
}

uint64_t sub_2179C4934(char a1, char a2)
{
  OUTLINED_FUNCTION_1_8(a2, a1);
  if (v2)
  {
    v3 = 1;
  }

  else
  {
    v3 = OUTLINED_FUNCTION_10_4();
  }

  OUTLINED_FUNCTION_29();
  return v3 & 1;
}

uint64_t sub_2179C497C(char a1, char a2)
{
  OUTLINED_FUNCTION_1_8(a2, a1);
  if (v2)
  {
    v3 = 1;
  }

  else
  {
    v3 = OUTLINED_FUNCTION_10_4();
  }

  OUTLINED_FUNCTION_29();
  return v3 & 1;
}

uint64_t sub_2179C49C4(char a1, char a2)
{
  OUTLINED_FUNCTION_1_8(a2, a1);
  if (v2)
  {
    v3 = 1;
  }

  else
  {
    v3 = OUTLINED_FUNCTION_10_4();
  }

  OUTLINED_FUNCTION_29();
  return v3 & 1;
}

uint64_t sub_2179C4A0C(char a1, char a2)
{
  OUTLINED_FUNCTION_1_8(a2, a1);
  if (v2)
  {
    v3 = 1;
  }

  else
  {
    v3 = OUTLINED_FUNCTION_10_4();
  }

  OUTLINED_FUNCTION_29();
  return v3 & 1;
}

uint64_t sub_2179C4A54(char a1, char a2)
{
  OUTLINED_FUNCTION_1_8(a2, a1);
  if (v2)
  {
    v3 = 1;
  }

  else
  {
    v3 = OUTLINED_FUNCTION_10_4();
  }

  OUTLINED_FUNCTION_29();
  return v3 & 1;
}

uint64_t sub_2179C4A9C(char a1, char a2)
{
  OUTLINED_FUNCTION_1_8(a2, a1);
  if (v2)
  {
    v3 = 1;
  }

  else
  {
    v3 = OUTLINED_FUNCTION_10_4();
  }

  OUTLINED_FUNCTION_29();
  return v3 & 1;
}

uint64_t sub_2179C4AE4(char a1, char a2)
{
  OUTLINED_FUNCTION_1_8(a2, a1);
  if (v2)
  {
    v3 = 1;
  }

  else
  {
    v3 = OUTLINED_FUNCTION_10_4();
  }

  OUTLINED_FUNCTION_29();
  return v3 & 1;
}

uint64_t sub_2179C4B38(char a1, char a2)
{
  v2 = 0xE900000000000045;
  v3 = 0x4445525245464544;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x54414944454D4D49;
    }

    else
    {
      v4 = 0x564953554C435845;
    }

    v5 = 0xE900000000000045;
  }

  else
  {
    v5 = 0xE800000000000000;
    v4 = 0x4445525245464544;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0x54414944454D4D49;
    }

    else
    {
      v3 = 0x564953554C435845;
    }
  }

  else
  {
    v2 = 0xE800000000000000;
  }

  if (v4 == v3 && v5 == v2)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_2179E9D70();
  }

  return v7 & 1;
}

uint64_t Database.RecoveryMode.hashValue.getter()
{
  v1 = *v0;
  sub_2179E9E20();
  MEMORY[0x21CEA9D40](v1);
  return sub_2179E9E40();
}

uint64_t sub_2179C4D08()
{
  v1 = *v0;
  sub_2179E9E20();
  MEMORY[0x21CEA9D40](v1);
  return sub_2179E9E40();
}

uint64_t Database.__allocating_init(location:journalingMode:recoveryMode:cacheSize:vacuumMode:shouldTakeRBAssertion:busyTimeout:)(__int128 *a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4, unsigned __int8 *a5, char a6)
{
  v6 = *(a1 + 16);
  v7 = *a2;
  v8 = *a3;
  v9 = *a4;
  v10 = *(a4 + 8);
  v11 = *a5;
  v20 = *a1;
  v21 = v6;
  v12 = 28;
  if (a6)
  {
    v12 = 30;
  }

  v22 = v12;
  v19 = v7;
  v18 = v8;
  v16 = v9;
  v17 = v10;
  v15 = v11;
  OUTLINED_FUNCTION_4();
  v13 = swift_allocObject();
  Database.init(location:assertions:journalingMode:recoveryMode:cacheSize:vacuumMode:busyTimeout:)(&v20, &v22, &v19, &v18, &v16, &v15);
  return v13;
}

uint64_t sub_2179C4E1C(sqlite3 *a1)
{
  v3 = *(v1 + 16);
  if (v3 && (*(v3 + 16) & 0x10) != 0)
  {
    sub_21799C868();
  }

  v4 = tdb_truncate_db(a1);
  sub_21799FD18(v4, a1);
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if (sub_2179A03E4(v5, v7, v9, 0, 0, 29))
  {
    sub_21799C320(v6, v8, v10);
  }

  else
  {
    if (v10 != 29 || __PAIR128__(v8, v6) >= 3)
    {
      if (qword_280B1DB60 != -1)
      {
        swift_once();
      }

      sub_2179E9920();
      sub_21799ABE4();
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_2179EA820;
      sub_2179E9C10();
      v12 = MEMORY[0x277D837D0];
      *(v11 + 56) = MEMORY[0x277D837D0];
      v13 = sub_21799C634();
      *(v11 + 32) = 0;
      *(v11 + 40) = 0xE000000000000000;
      *(v11 + 96) = v12;
      *(v11 + 104) = v13;
      *(v11 + 64) = v13;
      *(v11 + 72) = 0x657461636E757274;
      *(v11 + 80) = 0xE800000000000000;
      sub_2179E93F0();
    }

    sub_2179A2D18();
    swift_allocError();
    *v14 = v6;
    *(v14 + 8) = v8;
    *(v14 + 16) = v10;
    swift_willThrow();
  }
}

uint64_t Database.__allocating_init(configuration:)(void *a1)
{
  OUTLINED_FUNCTION_4();
  v2 = swift_allocObject();
  Database.init(configuration:)(a1);
  return v2;
}

void *Database.init(configuration:)(void *__src)
{
  v2 = v1;
  memcpy(__dst, __src, sizeof(__dst));
  v1[2] = 0;
  v1[3] = 0;
  v3 = (v1 + 3);
  v4 = __dst[8];
  v5 = __dst[3];
  v1[4] = __dst[8];
  if ((v5 & 2) != 0)
  {
    v31 = v5;
    v7 = v4;
    v35 = sub_21799C868();
  }

  else
  {
    v6 = v4;
    v35 = 0;
  }

  v9 = __dst[0];
  v8 = __dst[1];
  v10 = __dst[2];
  sub_21799A5F4();
  v11 = sub_2179E9670();

  OUTLINED_FUNCTION_33();
  v12 = OUTLINED_FUNCTION_19_0((v11 + 32));
  swift_endAccess();

  v13 = *v3;
  if (v12)
  {
    if (sqlite3_errmsg(*v3))
    {
      v14 = sub_2179E9700();
      v16 = v15;
      sub_2179ABC30();
      OUTLINED_FUNCTION_20_0();
      *v17 = v14;
      *(v17 + 8) = v16;
    }

    else
    {
      sub_2179ABC30();
      v23 = OUTLINED_FUNCTION_20_0();
      OUTLINED_FUNCTION_13_2(v23, v24);
    }

    *(v17 + 16) = v9;
    *(v17 + 24) = v8;
    *(v17 + 32) = v10;
    swift_willThrow();
    sub_2179A5DEC(v9, v8, v10);
    sub_2179C7C50(__dst);
    if (*v3)
    {
      sqlite3_close(*v3);
    }

    v18 = v2;

    goto LABEL_21;
  }

  v18 = v2;
  if (!v13)
  {

    sub_2179C7C50(__dst);
    return v18;
  }

  type metadata accessor for Connection();
  OUTLINED_FUNCTION_12();
  v19 = swift_allocObject();
  *(v19 + 16) = v5;
  *(v19 + 24) = v13;
  OUTLINED_FUNCTION_30_0(v19);
  *v3 = v13;
  if ((__dst[7] & 1) == 0)
  {
    sqlite3_busy_timeout(v13, SHIDWORD(__dst[6]));
  }

  OUTLINED_FUNCTION_35();
  sub_21799F990(v20, v21);
  if (!v30)
  {
LABEL_24:
    if ((__dst[6] & 1) == 0)
    {
      sub_2179E9B10();

      v26 = sub_2179E9D40();
      MEMORY[0x21CEA9600](v26);

      MEMORY[0x21CEA9600](59, 0xE100000000000000);
      sub_21799C154(v13);
    }

    sub_2179E9B10();
    v27 = OUTLINED_FUNCTION_24();
    MEMORY[0x21CEA9600](v27);
    sub_2179E9C10();
    sub_2179C7C50(__dst);
    MEMORY[0x21CEA9600](59, 0xE100000000000000);
    sub_21799C154(v13);

    goto LABEL_21;
  }

  if ((__dst[4] & 0x100) != 0)
  {
    v22 = v30;
    sub_21799AC4C(0, &qword_280B1DBF8);
    if (swift_dynamicCast())
    {
      if (v33 == 10)
      {
        sub_21799C320(v31, v32, v33);
        if (qword_280B1DB60 != -1)
        {
          OUTLINED_FUNCTION_0_6();
          swift_once();
        }

        sub_2179E9930();
        OUTLINED_FUNCTION_32();
        sub_2179C4E1C(v13);
        OUTLINED_FUNCTION_35();
        sub_21799F990(v28, v29);

        goto LABEL_24;
      }

      sub_21799C320(v31, v32, v33);
    }
  }

  sub_2179C7C50(__dst);
  swift_willThrow();

LABEL_21:

  return v18;
}

void Database.__allocating_init(location:assertions:journalingMode:recoveryMode:cacheSize:vacuumMode:busyTimeout:connectionMode:)()
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_4();
  swift_allocObject();
  v0 = OUTLINED_FUNCTION_9_1();
  Database.init(location:assertions:journalingMode:recoveryMode:cacheSize:vacuumMode:busyTimeout:connectionMode:)(v0, v1, v2, v3, v4, v5);
  OUTLINED_FUNCTION_37();
}

uint64_t Database.init(location:assertions:journalingMode:recoveryMode:cacheSize:vacuumMode:busyTimeout:connectionMode:)(uint64_t *a1, uint64_t *a2, unsigned __int8 *a3, unsigned __int8 *a4, uint64_t *a5, unsigned __int8 *a6)
{
  OUTLINED_FUNCTION_6_2(a1, a2, a3, a4, a5, a6);
  if (qword_280B1DB20 != -1)
  {
    OUTLINED_FUNCTION_2_4();
    swift_once();
  }

  v12 = qword_280B1DB28;
  *(v11 + 32) = qword_280B1DB28;
  if ((v6 & 2) != 0)
  {
    v37 = v6;
    v14 = v12;
    sub_21799C868();
  }

  else
  {
    v13 = v12;
  }

  sub_21799A5F4();
  v15 = sub_2179E9670();

  OUTLINED_FUNCTION_33();
  v16 = OUTLINED_FUNCTION_19_0((v15 + 32));
  swift_endAccess();

  if (v16)
  {
    if (sqlite3_errmsg(*v8))
    {
      v17 = sub_2179E9700();
      v19 = v18;
      sub_2179ABC30();
      OUTLINED_FUNCTION_20_0();
      *v20 = v17;
      *(v20 + 8) = v19;
    }

    else
    {
      sub_2179ABC30();
      v26 = OUTLINED_FUNCTION_20_0();
      OUTLINED_FUNCTION_13_2(v26, v27);
    }

    *(v20 + 16) = v10;
    *(v20 + 24) = v9;
    *(v20 + 32) = v7;
    swift_willThrow();
    if (*v8)
    {
      sqlite3_close(*v8);
    }

    goto LABEL_29;
  }

  sub_2179A1578(v10, v9, v7);
  v21 = *v8;
  if (!*v8)
  {
    goto LABEL_29;
  }

  type metadata accessor for Connection();
  OUTLINED_FUNCTION_12();
  v22 = swift_allocObject();
  *(v22 + 16) = v6;
  *(v22 + 24) = v21;
  OUTLINED_FUNCTION_30_0(v22);
  *v8 = v21;
  if ((*ms & 0x100000000) == 0)
  {
    sqlite3_busy_timeout(v21, *ms);
  }

  OUTLINED_FUNCTION_5_2();
  sub_21799F990(v23, v24);
  if (v36)
  {
    if (v34)
    {
      v25 = v36;
      sub_21799AC4C(0, &qword_280B1DBF8);
      if (swift_dynamicCast())
      {
        if (v39 == 10)
        {
          sub_21799C320(v37, v38, v39);
          if (qword_280B1DB60 != -1)
          {
            OUTLINED_FUNCTION_0_6();
            swift_once();
          }

          sub_2179E9930();
          OUTLINED_FUNCTION_32();
          sub_2179C4E1C(v21);
          OUTLINED_FUNCTION_5_2();
          sub_21799F990(v28, v29);

          goto LABEL_26;
        }

        sub_21799C320(v37, v38, v39);
      }
    }

    swift_willThrow();

    goto LABEL_29;
  }

LABEL_26:
  if ((v33 & 1) == 0)
  {
    OUTLINED_FUNCTION_14_0();
    sub_2179E9B10();

    OUTLINED_FUNCTION_28();
    v30 = sub_2179E9D40();
    MEMORY[0x21CEA9600](v30);

    OUTLINED_FUNCTION_21_0();
    OUTLINED_FUNCTION_11_0();
  }

  OUTLINED_FUNCTION_14_0();
  sub_2179E9B10();
  v31 = OUTLINED_FUNCTION_24();
  MEMORY[0x21CEA9600](v31);
  sub_2179E9C10();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_11_0();

LABEL_29:

  return v11;
}

void *sub_2179C59E0()
{
  v0[2] = 0;
  v0[3] = 0;
  if (qword_280B1DB20 != -1)
  {
    swift_once();
  }

  v1 = qword_280B1DB28;
  v0[4] = qword_280B1DB28;
  v2 = v1;
  return v0;
}

void *static Database.noop()()
{
  OUTLINED_FUNCTION_4();
  swift_allocObject();
  return sub_2179C59E0();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Database.close()()
{
  OUTLINED_FUNCTION_38();
  v1 = swift_beginAccess();
  v2 = v0[3];
  if (v2)
  {
    v3 = v0[2];
    if (v3 && (*(v3 + 16) & 4) != 0)
    {
      v1 = sub_21799C868();
      v4 = v1;
    }

    else
    {
      v4 = 0;
    }

    v5 = v0[4];
    MEMORY[0x28223BE20](v1);
    OUTLINED_FUNCTION_23_0();
    *(v7 - 16) = v2;
    *(v7 - 8) = v4;
    if (v6)
    {
      v8 = v6;
      OUTLINED_FUNCTION_12_1();
      sub_2179E9980();
    }

    else
    {
      v9 = sqlite3_close(v2);
      sub_21799FD18(v9, v2);
      v11 = v10;
      v13 = v12;
      v15 = v14;
      if (sub_2179A03E4(v10, v12, v14, 0, 0, 29))
      {
        sub_21799C320(v11, v13, v15);
      }

      else
      {
        if (v15 != 29 || __PAIR128__(v13, v11) >= 3)
        {
          if (qword_280B1DB60 != -1)
          {
            OUTLINED_FUNCTION_0_6();
            swift_once();
          }

          sub_2179E9920();
          sub_21799ABE4();
          OUTLINED_FUNCTION_26();
          v16 = swift_allocObject();
          *(v16 + 16) = xmmword_2179EA820;
          sub_2179E9C10();
          v17 = MEMORY[0x277D837D0];
          *(v16 + 56) = MEMORY[0x277D837D0];
          v18 = sub_21799C634();
          *(v16 + 32) = 0;
          *(v16 + 40) = 0xE000000000000000;
          *(v16 + 96) = v17;
          *(v16 + 104) = v18;
          *(v16 + 64) = v18;
          *(v16 + 72) = 0x65736F6C63;
          *(v16 + 80) = 0xE500000000000000;
          sub_2179E93F0();
        }

        sub_2179A2D18();
        OUTLINED_FUNCTION_20_0();
        *v19 = v11;
        *(v19 + 8) = v13;
        *(v19 + 16) = v15;
        swift_willThrow();
      }
    }
  }

  OUTLINED_FUNCTION_37();
}

uint64_t sub_2179C5CCC(sqlite3 *a1)
{
  v2 = sqlite3_close(a1);
  sub_21799FD18(v2, a1);
  v4 = v3;
  v6 = v5;
  v8 = v7;
  if (sub_2179A03E4(v3, v5, v7, 0, 0, 29))
  {
    return sub_21799C320(v4, v6, v8);
  }

  if (v8 != 29 || __PAIR128__(v6, v4) >= 3)
  {
    if (qword_280B1DB60 != -1)
    {
      swift_once();
    }

    sub_2179E9920();
    sub_21799ABE4();
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_2179EA820;
    sub_2179E9C10();
    v11 = MEMORY[0x277D837D0];
    *(v10 + 56) = MEMORY[0x277D837D0];
    v12 = sub_21799C634();
    *(v10 + 32) = 0;
    *(v10 + 40) = 0xE000000000000000;
    *(v10 + 96) = v11;
    *(v10 + 104) = v12;
    *(v10 + 64) = v12;
    *(v10 + 72) = 0x65736F6C63;
    *(v10 + 80) = 0xE500000000000000;
    sub_2179E93F0();
  }

  sub_2179A2D18();
  swift_allocError();
  *v13 = v4;
  *(v13 + 8) = v6;
  *(v13 + 16) = v8;
  return swift_willThrow();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Database.setUserVersion(_:)(Swift::Int a1)
{
  v2 = *(v1 + 16);
  if (v2)
  {
    if ((*(v2 + 16) & 0x10) != 0)
    {
      v7 = *(v2 + 16);

      sub_21799C868();
    }

    else
    {
      v3 = *(v1 + 16);
    }

    sub_2179E9B10();

    v6 = sub_2179E9D40();
    MEMORY[0x21CEA9600](v6);

    MEMORY[0x21CEA9600](59, 0xE100000000000000);
    sub_21799C154(*(v2 + 24));
  }

  else
  {
    sub_2179ABC30();
    v4 = OUTLINED_FUNCTION_20_0();
    OUTLINED_FUNCTION_7_4(v4, v5);
  }
}

uint64_t Database.table<A>(_:)@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  if (v2)
  {
    v8 = type metadata accessor for Connection();
    v9 = &off_2829965F0;
    *&v7 = v2;
    sub_2179C8EAC(&v7, a1);
  }

  else
  {
    sub_2179ABC30();
    v5 = OUTLINED_FUNCTION_20_0();
    return OUTLINED_FUNCTION_7_4(v5, v6);
  }
}

uint64_t Database.asyncRead<A>(block:)()
{
  sub_2179E93C0();
  swift_allocObject();
  swift_weakInit();
  OUTLINED_FUNCTION_14();
  v0 = sub_2179E93A0();

  return v0;
}

void sub_2179C612C(void (*a1)(char *), uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v39 = a3;
  v40 = a4;
  v13 = sub_2179E9460();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2179E9480();
  v37 = *(v18 - 8);
  v38 = v18;
  v19 = *(v37 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v35 = v14;
    v36 = v13;
    v23 = *(Strong + 32);
    v24 = swift_allocObject();
    v24[2] = a8;
    v24[3] = a6;
    v24[4] = a7;
    v24[5] = a1;
    v26 = v39;
    v25 = v40;
    v24[6] = a2;
    v24[7] = v26;
    v24[8] = v25;
    if (v23)
    {
      aBlock[4] = sub_2179C84EC;
      aBlock[5] = v24;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2179A230C;
      aBlock[3] = &block_descriptor_63;
      v27 = _Block_copy(aBlock);

      v28 = v23;

      sub_2179E9470();
      v41 = MEMORY[0x277D84F90];
      sub_21799A4E4(&qword_280B1DD50, MEMORY[0x277D85198]);
      v29 = MEMORY[0x277D85198];
      sub_21799A52C(0, &qword_280B1DD18, MEMORY[0x277D85198], MEMORY[0x277D83940]);
      sub_21799A590(&qword_280B1DD10, &qword_280B1DD18, v29);
      v30 = v36;
      sub_2179E9AA0();
      MEMORY[0x21CEA98A0](0, v21, v17, v27);
      _Block_release(v27);

      (*(v35 + 8))(v17, v30);
      (*(v37 + 8))(v21, v38);
    }

    else
    {
      v34 = v40;

      sub_2179C6590(a6, a7, a1, a2, v39, v34, a8);
    }
  }

  else
  {
    v31 = sub_2179E9340();
    sub_21799A4E4(qword_27CB97FA8, MEMORY[0x277D6CAF0]);
    v32 = swift_allocError();
    (*(*(v31 - 8) + 104))(v33, *MEMORY[0x277D6CAE0], v31);
    v39(v32);
  }
}

uint64_t sub_2179C6590(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = *(a7 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](a1);
  v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11();
  a3(v13);
  return (*(v9 + 8))(v13, a7);
}

uint64_t sub_2179C66B0(unsigned __int8 *a1, void (*a2)(uint64_t))
{
  v4 = *(v2 + 16);
  if (v4)
  {
    v5 = v2;
    v6 = *a1;
    if ((*(v4 + 16) & 0x10) != 0)
    {

      sub_21799C868();
    }

    else
    {
    }

    sub_2179E9B10();

    v9 = 0x54414944454D4D49;
    if (v6 != 1)
    {
      v9 = 0x564953554C435845;
    }

    if (v6)
    {
      v10 = v9;
    }

    else
    {
      v10 = 0x4445525245464544;
    }

    if (v6)
    {
      v11 = 0xE900000000000045;
    }

    else
    {
      v11 = 0xE800000000000000;
    }

    MEMORY[0x21CEA9600](v10, v11);

    MEMORY[0x21CEA9600](0x4341534E41525420, 0xED00003B4E4F4954);
    sub_21799F244();
    inited = swift_initStackObject();
    v13 = type metadata accessor for Connection();
    inited[8] = v13;
    inited[9] = &off_2829965F0;
    inited[10] = MEMORY[0x277D84F90];
    inited[4] = 4;
    inited[5] = v4;
    inited[2] = 0x204E49474542;
    inited[3] = 0xE600000000000000;

    sub_2179A6520();
    if (v3)
    {
    }

    else
    {

      swift_setDeallocating();
      sub_2179A6B8C();
      swift_deallocClassInstance();
      a2(v5);
      v14 = swift_initStackObject();
      v14[8] = v13;
      v14[9] = &off_2829965F0;
      v14[10] = MEMORY[0x277D84F90];
      v14[4] = 4;
      v14[5] = v4;
      v14[2] = 0xD000000000000013;
      v14[3] = 0x80000002179EFE70;

      sub_2179A6520();
    }

    swift_setDeallocating();
    sub_2179A6B8C();
    return swift_deallocClassInstance();
  }

  else
  {
    sub_2179ABC30();
    swift_allocError();
    *v7 = 0u;
    *(v7 + 16) = 0u;
    *(v7 + 32) = 0;
    return swift_willThrow();
  }
}

uint64_t Database.asyncWrite(_:qos:block:)(char *a1)
{
  v5 = *a1;
  sub_21799EC44();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_14();
  return sub_2179E93B0();
}

uint64_t Database.asyncWriteWithDatabase<A>(_:block:)(char *a1)
{
  v1 = *a1;
  sub_2179E93C0();
  OUTLINED_FUNCTION_14();
  return sub_2179E93A0();
}

uint64_t sub_2179C6B64(uint64_t a1, uint64_t a2, void (*a3)(void *), uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v45 = a2;
  v16 = sub_2179E9480();
  v43 = *(v16 - 8);
  v44 = v16;
  v17 = *(v43 + 64);
  MEMORY[0x28223BE20](v16);
  v41 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_2179E9460();
  v40 = *(v42 - 8);
  v19 = *(v40 + 64);
  MEMORY[0x28223BE20](v42);
  v39 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(a5 + 32);
  v22 = swift_allocObject();
  swift_weakInit();
  v23 = swift_allocObject();
  v37 = a9;
  v38 = v21;
  *(v23 + 16) = a9;
  *(v23 + 24) = v22;
  v46 = v22;
  *(v23 + 32) = a3;
  *(v23 + 40) = a4;
  *(v23 + 48) = a6;
  *(v23 + 56) = a7;
  *(v23 + 64) = a8;
  v24 = v45;
  *(v23 + 72) = a1;
  *(v23 + 80) = v24;
  if (v21)
  {
    v25 = MEMORY[0x277D85198];
    sub_21799A52C(0, &qword_280B1D6C0, MEMORY[0x277D85198], MEMORY[0x277D84560]);
    v26 = v40;
    v27 = *(v40 + 72);
    v28 = (*(v40 + 80) + 32) & ~*(v40 + 80);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_2179EA830;

    v30 = v38;
    sub_2179E9450();
    aBlock[0] = v29;
    sub_21799A4E4(&qword_280B1DD50, MEMORY[0x277D85198]);
    sub_21799A52C(0, &qword_280B1DD18, v25, MEMORY[0x277D83940]);
    sub_21799A590(&qword_280B1DD10, &qword_280B1DD18, v25);
    v31 = v39;
    v32 = v42;
    sub_2179E9AA0();
    aBlock[4] = sub_2179C8490;
    aBlock[5] = v23;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2179A230C;
    aBlock[3] = &block_descriptor_0;
    v33 = _Block_copy(aBlock);

    v34 = v41;
    sub_2179E9470();
    MEMORY[0x21CEA98A0](0, v34, v31, v33);
    _Block_release(v33);

    (*(v43 + 8))(v34, v44);
    (*(v26 + 8))(v31, v32);
  }

  else
  {

    sub_2179C6FF8(v36, a3, a4, a6);
  }
}

void sub_2179C6FF8(uint64_t a1, void (*a2)(void *), uint64_t a3, char a4)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    LOBYTE(v10) = a4;
    MEMORY[0x28223BE20](Strong);
    sub_2179C66B0(&v10, sub_2179C84C8);
  }

  else
  {
    v7 = sub_2179E9340();
    sub_21799A4E4(qword_27CB97FA8, MEMORY[0x277D6CAF0]);
    v8 = swift_allocError();
    (*(*(v7 - 8) + 104))(v9, *MEMORY[0x277D6CAE0], v7);
    a2(v8);
  }
}

uint64_t sub_2179C72AC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *), uint64_t a5, uint64_t a6)
{
  v9 = *(a6 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20]();
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v14(v11);
  if (!v6)
  {
    a4(v13);
    return (*(v9 + 8))(v13, a6);
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Database.checkpoint()()
{
  v2 = OUTLINED_FUNCTION_25();
  v3 = *(v0 + 24);
  if (v3)
  {
    v4 = *(v1 + 16);
    if (v4 && (*(v4 + 16) & 0x10) != 0)
    {
      v2 = sub_21799C868();
      v5 = v2;
    }

    else
    {
      v5 = 0;
    }

    v8 = *(v1 + 32);
    MEMORY[0x28223BE20](v2);
    OUTLINED_FUNCTION_23_0();
    *(v10 - 16) = v5;
    *(v10 - 8) = v3;
    if (v9)
    {
      v11 = v9;
      OUTLINED_FUNCTION_12_1();
      sub_2179E9980();
    }

    else
    {
      sub_2179C74B4(v5, v3);
    }
  }

  else
  {
    sub_2179ABC30();
    v6 = OUTLINED_FUNCTION_20_0();
    OUTLINED_FUNCTION_39(xmmword_2179EB920, v6, v7);
  }
}

uint64_t sub_2179C74B4(int a1, sqlite3 *db)
{
  v3 = sqlite3_wal_checkpoint_v2(db, 0, 3, 0, 0);
  sub_21799FD18(v3, db);
  v5 = v4;
  v7 = v6;
  v9 = v8;
  if (sub_2179A03E4(v4, v6, v8, 0, 0, 29))
  {
    return sub_21799C320(v5, v7, v9);
  }

  if (v9 != 29 || __PAIR128__(v7, v5) >= 3)
  {
    if (qword_280B1DB60 != -1)
    {
      swift_once();
    }

    sub_2179E9920();
    sub_21799ABE4();
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_2179EA820;
    sub_2179E9C10();
    v12 = MEMORY[0x277D837D0];
    *(v11 + 56) = MEMORY[0x277D837D0];
    v13 = sub_21799C634();
    *(v11 + 32) = 0;
    *(v11 + 40) = 0xE000000000000000;
    *(v11 + 96) = v12;
    *(v11 + 104) = v13;
    *(v11 + 64) = v13;
    *(v11 + 72) = 0x696F706B63656863;
    *(v11 + 80) = 0xEA0000000000746ELL;
    sub_2179E93F0();
  }

  sub_2179A2D18();
  swift_allocError();
  *v14 = v5;
  *(v14 + 8) = v7;
  *(v14 + 16) = v9;
  return swift_willThrow();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Database.incrementalVacuum()()
{
  v2 = OUTLINED_FUNCTION_25();
  v3 = *(v0 + 24);
  if (v3)
  {
    v4 = *(v1 + 16);
    if (v4 && (*(v4 + 16) & 0x10) != 0)
    {
      v2 = sub_21799C868();
      v5 = v2;
    }

    else
    {
      v5 = 0;
    }

    v8 = *(v1 + 32);
    MEMORY[0x28223BE20](v2);
    OUTLINED_FUNCTION_23_0();
    *(v10 - 16) = v5;
    *(v10 - 8) = v3;
    if (v9)
    {
      v11 = v9;
      OUTLINED_FUNCTION_12_1();
      sub_2179E9980();
    }

    else
    {
      sub_21799C154(v3);
    }
  }

  else
  {
    sub_2179ABC30();
    v6 = OUTLINED_FUNCTION_20_0();
    OUTLINED_FUNCTION_39(xmmword_2179EB920, v6, v7);
  }
}

uint64_t Database.raw<A>(_:query:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(v5 + 16);
  if (v7)
  {
    v10 = *(a5 + 8);
    type metadata accessor for Statement();
    v18 = 3;
    v16 = type metadata accessor for Connection();
    v17 = &off_2829965F0;
    *&v15 = v7;
    sub_2179AC76C(&v18, a2, a3, &v15);
    swift_retain_n();

    v6 = sub_2179AC7D4(v11);
  }

  else
  {
    sub_2179ABC30();
    v12 = OUTLINED_FUNCTION_20_0();
    OUTLINED_FUNCTION_7_4(v12, v13);
  }

  return v6;
}

id static Database.SchedulingConfiguration.default.getter@<X0>(void *a1@<X8>)
{
  if (qword_280B1DB20 != -1)
  {
    OUTLINED_FUNCTION_2_4();
    swift_once();
  }

  v2 = qword_280B1DB28;
  *a1 = qword_280B1DB28;

  return v2;
}

id Database.SchedulingConfiguration.taskQueue.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t Database.Configuration.location.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + 16);
  *(a1 + 16) = v4;
  return sub_2179A5DEC(v2, v3, v4);
}

uint64_t Database.Configuration.location.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = sub_2179A1578(*v1, *(v1 + 8), *(v1 + 16));
  *v1 = v2;
  *(v1 + 8) = v3;
  *(v1 + 16) = v4;
  return result;
}

void Database.Configuration.cacheSize.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  *a1 = *(v1 + 40);
  *(a1 + 8) = v2;
}

uint64_t Database.Configuration.cacheSize.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 40) = *result;
  *(v1 + 48) = v2;
  return result;
}

uint64_t Database.Configuration.busyTimeout.setter(uint64_t result)
{
  *(v1 + 52) = result;
  *(v1 + 56) = BYTE4(result) & 1;
  return result;
}

id Database.Configuration.schedulingConfiguration.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 64);
  *a1 = v2;
  return v2;
}

void Database.Configuration.schedulingConfiguration.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 64) = v2;
}

__n128 Database.Configuration.init(location:assertions:journalingMode:recoveryMode:cacheSize:vacuumMode:busyTimeout:schedulingConfiguration:)@<Q0>(__n128 *a1@<X0>, unint64_t *a2@<X1>, unsigned __int8 *a3@<X2>, unsigned __int8 *a4@<X3>, uint64_t a5@<X4>, unsigned __int8 *a6@<X5>, uint64_t a7@<X6>, unint64_t *a8@<X7>, __n128 *a9@<X8>)
{
  v9 = a1[1].n128_u8[0];
  v10 = *a2;
  v11 = *a3;
  v12 = *a4;
  v13 = *a5;
  v14 = *(a5 + 8);
  v15 = *a6;
  v16 = *a8;
  result = *a1;
  *a9 = *a1;
  a9[1].n128_u8[0] = v9;
  a9[1].n128_u64[1] = v10;
  a9[2].n128_u8[0] = v11;
  a9[2].n128_u8[1] = v12;
  a9[2].n128_u64[1] = v13;
  a9[3].n128_u8[0] = v14;
  a9[3].n128_u8[1] = v15;
  a9[3].n128_u32[1] = a7;
  a9[3].n128_u8[8] = BYTE4(a7) & 1;
  a9[4].n128_u64[0] = v16;
  return result;
}

unint64_t sub_2179C7D14()
{
  result = qword_27CB97F90;
  if (!qword_27CB97F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB97F90);
  }

  return result;
}

unint64_t sub_2179C7D6C()
{
  result = qword_27CB97F98;
  if (!qword_27CB97F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB97F98);
  }

  return result;
}

unint64_t sub_2179C7DC4()
{
  result = qword_27CB97FA0;
  if (!qword_27CB97FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB97FA0);
  }

  return result;
}

uint64_t sub_2179C7E94(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 2)
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

uint64_t sub_2179C7ED4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2179C7F2C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 33))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2179C7F80(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_2179C7FE4(uint64_t result, int a2)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
  }

  else if (a2)
  {
    *(result + 8) = (a2 - 1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Database.RecoveryMode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for Database.RecoveryMode(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_2179C8190(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_22_0(-1);
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
      return OUTLINED_FUNCTION_22_0((*a1 | (v4 << 8)) - 3);
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

      return OUTLINED_FUNCTION_22_0((*a1 | (v4 << 8)) - 3);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_22_0((*a1 | (v4 << 8)) - 3);
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

  return OUTLINED_FUNCTION_22_0(v8);
}

_BYTE *sub_2179C8214(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_2179C8318(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 72))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 64);
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

uint64_t sub_2179C836C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 64) = a2;
    }
  }

  return result;
}

uint64_t sub_2179C83E0(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 8))
    {
      return OUTLINED_FUNCTION_22_0(*a1 + 2147483646);
    }

    v3 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v3) = -1;
    }

    v4 = v3 - 1;
    if (v4 < 0)
    {
      return OUTLINED_FUNCTION_22_0(-1);
    }
  }

  else
  {
    v4 = -1;
  }

  return OUTLINED_FUNCTION_22_0(v4);
}

uint64_t sub_2179C8430(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void sub_2179C8490()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v5 = *(v0 + 16);
  sub_2179C6FF8(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));
}

uint64_t OUTLINED_FUNCTION_29()
{

  return swift_bridgeObjectRelease_n();
}

uint64_t OUTLINED_FUNCTION_32()
{

  return sub_2179E93F0();
}

uint64_t OUTLINED_FUNCTION_39(__n128 a1, uint64_t a2, __n128 *a3)
{
  *a3 = a1;
  a3[1].n128_u64[0] = 0;
  a3[1].n128_u64[1] = 0;
  a3[2].n128_u8[0] = 0;

  return swift_willThrow();
}

uint64_t != infix(_:_:)()
{
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_3_5();
  v1 = swift_allocObject();
  OUTLINED_FUNCTION_1_9(v1);
  OUTLINED_FUNCTION_4_5(v0 | 0x1000000000000000);
}

{
  OUTLINED_FUNCTION_6_1();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  *(v3 + 32) = v0;
  OUTLINED_FUNCTION_4_5(v3 | 0x9000000000000000);
}

uint64_t > infix(_:_:)()
{
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_3_5();
  v1 = swift_allocObject();
  OUTLINED_FUNCTION_1_9(v1);
  OUTLINED_FUNCTION_4_5(v0 | 0x2000000000000000);
}

uint64_t <= infix(_:_:)()
{
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_3_5();
  v1 = swift_allocObject();
  OUTLINED_FUNCTION_1_9(v1);
  OUTLINED_FUNCTION_4_5(v0 | 0x5000000000000000);
}

uint64_t || infix(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v6 + 24) = v5;
  *a3 = v6 | 0x7000000000000000;
}

uint64_t sub_2179C87A0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x77 && *(a1 + 8))
    {
      v2 = *a1 + 118;
    }

    else
    {
      v2 = ((*a1 >> 60) & 0x8F | (16 * (*a1 & 7))) ^ 0x7F;
      if (v2 >= 0x76)
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

uint64_t sub_2179C87E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x76)
  {
    *result = a2 - 119;
    if (a3 >= 0x77)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x77)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 4) & 7 | (8 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_5TeaDB18StatementOperationO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2179C8860(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFA && *(a1 + 8))
  {
    return (*a1 + 2147483643);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 4;
  if (v4 >= 6)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2179C88B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFB)
  {
    *result = 0;
    *result = a2 - 2147483643;
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 4;
    }
  }

  return result;
}

void *sub_2179C8908(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

void sub_2179C8938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, char a12, uint64_t a13, uint64_t a14, unint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  OUTLINED_FUNCTION_9_3();
  a26 = v28;
  a27 = v29;
  OUTLINED_FUNCTION_14_1();
  v31 = *v30;
  v32 = v30[1];
  v33 = *(v30 + 16);
  OUTLINED_FUNCTION_0_7();
  v35 = *(v34 + 80);
  OUTLINED_FUNCTION_0_7();
  v37 = *(v36 + 88);
  OUTLINED_FUNCTION_5_4();
  type metadata accessor for Statement();
  OUTLINED_FUNCTION_13();
  a15 = 0xF000000000000007;
  *&a11 = v31;
  *(&a11 + 1) = v32;
  a12 = v33;
  sub_2179AEC5C();
  OUTLINED_FUNCTION_6_4();
  sub_2179D1704(v38, v39, v40, v41, v42, v43, v35, v37);
  sub_2179AEC68(a11, *(&a11 + 1), a12);
  v44 = sub_2179ABC9C();
  v46 = v45;

  sub_2179A70AC(v27, &a11);
  v47 = sub_2179AC76C(&a17, v44, v46, &a11);
  sub_2179AC7D4(v47);
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_10_0();
}

uint64_t sub_2179C8A58(uint64_t *a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  v10 = (v5 + 2);
  v9 = *v5;
  v11 = *a1;
  v12 = a1[1];
  v13 = *(a1 + 16);
  OUTLINED_FUNCTION_0_7();
  v15 = *(v14 + 80);
  OUTLINED_FUNCTION_0_7();
  v17 = *(v16 + 88);
  OUTLINED_FUNCTION_5_4();
  type metadata accessor for Statement();
  v27 = 3;
  v26 = 0xF000000000000007;
  *&v24 = v11;
  *(&v24 + 1) = v12;
  v25 = v13;
  sub_2179AEC5C();
  sub_2179D1704(&v26, &v24, a2, a3 & 1, a4, a5 & 1, v15, v17);
  sub_2179AEC68(v24, *(&v24 + 1), v25);
  v18 = sub_2179ABC9C();
  v20 = v19;

  sub_2179A70AC(v10, &v24);
  v21 = sub_2179AC76C(&v27, v18, v20, &v24);
  sub_2179AC7D4(v21);
  OUTLINED_FUNCTION_2_6();
  return OUTLINED_FUNCTION_7();
}

uint64_t sub_2179C8BA4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6)
{
  OUTLINED_FUNCTION_14_1();
  v10 = *v9;
  v12 = *v11;
  v13 = v11[1];
  v14 = *(v11 + 16);
  OUTLINED_FUNCTION_0_7();
  v16 = *(v15 + 80);
  OUTLINED_FUNCTION_0_7();
  v18 = *(v17 + 88);
  OUTLINED_FUNCTION_5_4();
  type metadata accessor for Statement();
  v26 = 3;
  v25 = v10;
  *&v23 = v12;
  *(&v23 + 1) = v13;
  v24 = v14;

  sub_2179D1704(&v25, &v23, a3, a4 & 1, a5, a6 & 1, v16, v18);
  sub_2179B0CEC(v25);
  sub_2179ABC9C();
  OUTLINED_FUNCTION_11_2();
  sub_2179A70AC(v6, &v23);
  v19 = sub_2179AC76C(&v26, v18, v13, &v23);
  sub_2179AC7D4(v19);
  OUTLINED_FUNCTION_2_6();
  return OUTLINED_FUNCTION_7();
}

uint64_t sub_2179C8DDC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_2179C8E1C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2179C8E70()
{
  sub_2179E9E20();
  sub_2179BC06C();
  return sub_2179E9E40();
}

uint64_t SearchTable.Delete.entity(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  (*(v4 + 16))(&v15, *(a2 + 16), v4);

  swift_getAtKeyPath();

  v5 = *(v16 + 16);
  os_unfair_lock_lock((v5 + 28));
  v6 = *(v5 + 16);
  v7 = *(v5 + 24);
  os_unfair_lock_unlock((v5 + 28));

  if (v7)
  {
    OUTLINED_FUNCTION_3_6();
    _s6DeleteV5ErrorOMa();
    swift_getWitnessTable();
    swift_allocError();
    return swift_willThrow();
  }

  else
  {
    v9 = *(*(v4 + 8) + 24);
    type metadata accessor for Statement();
    v16 = 2;
    OUTLINED_FUNCTION_3_6();
    sub_2179E76B4();
    OUTLINED_FUNCTION_3_6();
    sub_2179E7750();

    sub_2179A70AC(v2, &v15);
    OUTLINED_FUNCTION_3_6();
    v14 = sub_2179AC76C(v10, v11, v12, v13);
    OUTLINED_FUNCTION_1_2(v14);
    result = OUTLINED_FUNCTION_0_8();
    if (!v3)
    {
    }
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SearchTable.Delete.all()()
{
  v4 = *(v0 + 16);
  OUTLINED_FUNCTION_4_7(*(v0 + 24));
  v10[5] = 2;
  sub_2179E7798(v4, v3);
  OUTLINED_FUNCTION_2_7();
  sub_2179E7750();

  sub_2179A70AC(v1, v10);
  OUTLINED_FUNCTION_2_7();
  v9 = sub_2179AC76C(v5, v6, v7, v8);
  OUTLINED_FUNCTION_1_2(v9);
  OUTLINED_FUNCTION_0_8();
  if (!v2)
  {
  }
}

uint64_t SearchTable.Delete.where(_:)(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a2 + 16);
  v6 = *(*(*(a2 + 24) + 8) + 24);
  type metadata accessor for Statement();
  v14 = 2;
  *&v13[0] = v4;
  OUTLINED_FUNCTION_2_7();
  sub_2179E77AC(v7);
  v8 = sub_2179E7750();
  v10 = v9;

  sub_2179A70AC(v2, v13);
  v11 = sub_2179AC76C(&v14, v8, v10, v13);
  OUTLINED_FUNCTION_1_2(v11);
  result = OUTLINED_FUNCTION_0_8();
  if (!v3)
  {
  }

  return result;
}

{
  v4 = *a1;
  v5 = *(a2 + 16);
  OUTLINED_FUNCTION_4_7(*(a2 + 24));
  v13[5] = 2;
  v13[0] = v4;
  OUTLINED_FUNCTION_2_7();
  sub_2179E7824(v6);
  OUTLINED_FUNCTION_2_7();
  sub_2179E7750();

  sub_2179A70AC(v2, v13);
  OUTLINED_FUNCTION_2_7();
  v11 = sub_2179AC76C(v7, v8, v9, v10);
  OUTLINED_FUNCTION_1_2(v11);
  result = OUTLINED_FUNCTION_0_8();
  if (!v3)
  {
  }

  return result;
}

uint64_t sub_2179C9288()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
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

uint64_t sub_2179C92D8(uint64_t a1, int a2)
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

uint64_t sub_2179C9318(uint64_t result, int a2, int a3)
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

_BYTE *sub_2179C9378(_BYTE *result, int a2, int a3)
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

uint64_t sub_2179C9430(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = a3;
  v13 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  v14 = *(v13 + 16);
  v15 = OUTLINED_FUNCTION_6_5();
  v16(v15);
  v17 = v129;
  switch(v130)
  {
    case 1:
      v127 = v129;
      sub_2179E9D40();
      OUTLINED_FUNCTION_11_3();
      v50 = *(v11 + 24);
      v51 = *(v11 + 32);
      v52 = OUTLINED_FUNCTION_8_6();
      __swift_project_boxed_opaque_existential_1(v52, v53);
      OUTLINED_FUNCTION_4_8();
      v54 = OUTLINED_FUNCTION_5_5();
      v55(v54);
      if (v128 != 255)
      {
        v17 = v129;
        switch(v128)
        {
          case 1u:
            goto LABEL_57;
          case 2u:
            v117 = OUTLINED_FUNCTION_7_6();
            sub_2179AA22C(v117, v118, 2);

            goto LABEL_7;
          case 3u:
            goto LABEL_54;
          case 4u:
            v107 = OUTLINED_FUNCTION_7_6();
            Data.queryValue.getter(v107, v108);
            OUTLINED_FUNCTION_14_2();
            v72 = OUTLINED_FUNCTION_7_6();
            goto LABEL_42;
          case 5u:
            OUTLINED_FUNCTION_12_4();
            v74 = OUTLINED_FUNCTION_7_6();
            goto LABEL_59;
          default:
            OUTLINED_FUNCTION_3_7();
            OUTLINED_FUNCTION_2_8();
            sub_2179A4934();
            OUTLINED_FUNCTION_0_9();
            v56 = sub_2179E9A80();
            MEMORY[0x21CEA9600](v56);

            OUTLINED_FUNCTION_9_4();
            v48 = OUTLINED_FUNCTION_7_6();
            goto LABEL_14;
        }
      }

      break;
    case 2:
      v38 = *(v11 + 24);
      v39 = *(v11 + 32);
      __swift_project_boxed_opaque_existential_1(v11, v38);
      OUTLINED_FUNCTION_4_8();
      v40(v38, v39);
      if (v128 == 255)
      {
LABEL_7:
        v41 = (v17 & 1) == 0;
LABEL_27:
        if (v41)
        {
          a7 = 48;
        }

        else
        {
          a7 = 49;
        }
      }

      else
      {
        switch(v128)
        {
          case 1u:
            sub_2179E9D40();
            OUTLINED_FUNCTION_11_3();
            goto LABEL_53;
          case 2u:
            v111 = OUTLINED_FUNCTION_7_6();
            sub_2179AA22C(v111, v112, 2);

            if (v127)
            {
              a7 = 49;
            }

            else
            {
              a7 = 48;
            }

            break;
          case 3u:
            OUTLINED_FUNCTION_13_3();
            sub_2179E9860();
            goto LABEL_55;
          case 4u:
            v101 = OUTLINED_FUNCTION_7_6();
            Data.queryValue.getter(v101, v102);
            OUTLINED_FUNCTION_11_3();
            v103 = OUTLINED_FUNCTION_7_6();
            sub_2179AA22C(v103, v104, 4);
            goto LABEL_53;
          case 5u:
            OUTLINED_FUNCTION_12_4();
            v119 = OUTLINED_FUNCTION_7_6();
            sub_2179AA22C(v119, v120, 5);
            goto LABEL_60;
          default:
            OUTLINED_FUNCTION_3_7();
            OUTLINED_FUNCTION_2_8();
            sub_2179A4934();
            OUTLINED_FUNCTION_0_9();
            v67 = sub_2179E9A80();
            MEMORY[0x21CEA9600](v67);

            OUTLINED_FUNCTION_9_4();
            v68 = OUTLINED_FUNCTION_7_6();
            sub_2179AA22C(v68, v69, 0);
            goto LABEL_55;
        }
      }

      break;
    case 3:
      OUTLINED_FUNCTION_13_3();
      sub_2179E9860();
      a7 = v127;
      v28 = *(v11 + 24);
      v42 = *(v11 + 32);
      v43 = OUTLINED_FUNCTION_8_6();
      __swift_project_boxed_opaque_existential_1(v43, v44);
      OUTLINED_FUNCTION_4_8();
      v45 = OUTLINED_FUNCTION_5_5();
      v46(v45);
      LOBYTE(v28) = v127;
      switch(v128)
      {
        case 0u:
          OUTLINED_FUNCTION_3_7();
          OUTLINED_FUNCTION_2_8();
          sub_2179A4934();
          OUTLINED_FUNCTION_0_9();
          goto LABEL_10;
        case 1u:
          goto LABEL_57;
        case 2u:
          goto LABEL_23;
        case 3u:
          goto LABEL_54;
        case 4u:
          goto LABEL_21;
        case 5u:
          goto LABEL_22;
        default:
          return a7;
      }

    case 4:
      v29 = OUTLINED_FUNCTION_6_5();
      Data.queryValue.getter(v29, v30);
      OUTLINED_FUNCTION_11_3();
      v31 = *(v11 + 24);
      v32 = *(v11 + 32);
      v33 = OUTLINED_FUNCTION_8_6();
      __swift_project_boxed_opaque_existential_1(v33, v34);
      OUTLINED_FUNCTION_4_8();
      v35(v31, v32);
      if (v128 != 255)
      {
        switch(v128)
        {
          case 1u:
            sub_2179E9D40();
            OUTLINED_FUNCTION_14_2();
            goto LABEL_44;
          case 2u:
            v97 = OUTLINED_FUNCTION_8_6();
            sub_2179AA22C(v97, v98, 2);

            v99 = OUTLINED_FUNCTION_6_5();
            sub_2179AC53C(v99, v100, 4);
            v41 = (v127 & 1) == 0;
            goto LABEL_27;
          case 3u:
            OUTLINED_FUNCTION_13_3();
            sub_2179E9860();
            goto LABEL_40;
          case 4u:
            v93 = OUTLINED_FUNCTION_8_6();
            Data.queryValue.getter(v93, v94);
            OUTLINED_FUNCTION_14_2();
            v95 = OUTLINED_FUNCTION_8_6();
            sub_2179AA22C(v95, v96, 4);
LABEL_44:

            v109 = OUTLINED_FUNCTION_6_5();
            sub_2179AC53C(v109, v110, 4);
            return a7;
          case 5u:
            OUTLINED_FUNCTION_12_4();
            v113 = OUTLINED_FUNCTION_8_6();
            sub_2179AA22C(v113, v114, 5);

            v115 = OUTLINED_FUNCTION_6_5();
            sub_2179AC53C(v115, v116, 4);
            return a7;
          default:
            OUTLINED_FUNCTION_3_7();
            OUTLINED_FUNCTION_2_8();
            sub_2179A4934();
            OUTLINED_FUNCTION_0_9();
            v64 = sub_2179E9A80();
            MEMORY[0x21CEA9600](v64);

            OUTLINED_FUNCTION_9_4();
            v65 = OUTLINED_FUNCTION_8_6();
            sub_2179AA22C(v65, v66, 0);
LABEL_40:

            v105 = OUTLINED_FUNCTION_6_5();
            sub_2179AC53C(v105, v106, 4);
            goto LABEL_74;
        }
      }

      v36 = OUTLINED_FUNCTION_6_5();
      sub_2179AC53C(v36, v37, 4);
      break;
    case 5:
      v57 = *(v11 + 32);
      __swift_project_boxed_opaque_existential_1(v11, *(v11 + 24));
      OUTLINED_FUNCTION_4_8();
      v58 = OUTLINED_FUNCTION_6_5();
      v59(v58);
      v28 = v127;
      switch(v128)
      {
        case 0u:
          OUTLINED_FUNCTION_3_7();
          OUTLINED_FUNCTION_2_8();
          sub_2179A4934();
          OUTLINED_FUNCTION_0_9();
          v60 = sub_2179E9A80();
          MEMORY[0x21CEA9600](v60);

          OUTLINED_FUNCTION_9_4();
          v61 = OUTLINED_FUNCTION_5_5();
          v63 = 0;
          goto LABEL_73;
        case 1u:
          sub_2179E9D40();
          OUTLINED_FUNCTION_11_3();
          return a7;
        case 2u:
          v82 = OUTLINED_FUNCTION_5_5();
          sub_2179AA22C(v82, v83, 2);
          goto LABEL_26;
        case 3u:
          OUTLINED_FUNCTION_13_3();
          sub_2179E9860();
          break;
        case 4u:
          v78 = OUTLINED_FUNCTION_5_5();
          Data.queryValue.getter(v78, v79);
          OUTLINED_FUNCTION_11_3();
          v80 = OUTLINED_FUNCTION_5_5();
          sub_2179AA22C(v80, v81, 4);
          return a7;
        case 5u:
          OUTLINED_FUNCTION_12_4();
          v84 = OUTLINED_FUNCTION_5_5();
          sub_2179AA22C(v84, v85, 5);
          return a7;
        default:
          while (2)
          {
            v86 = *(v11 + 32);
            __swift_project_boxed_opaque_existential_1(v11, *(v11 + 24));
            v87 = *(v86 + 24);
            v88 = OUTLINED_FUNCTION_6_5();
            v89(v88);
            v11 = v128;
            if (v128 == 255)
            {
              OUTLINED_FUNCTION_12_4();
              return a7;
            }

            v90 = v127;
            OUTLINED_FUNCTION_13_3();
            sub_2179E9B10();

            v127 = 0xD000000000000011;
            MEMORY[0x21CEA9600](v28, a2);
            MEMORY[0x21CEA9600](0x204D4F524620, 0xE600000000000000);
            MEMORY[0x21CEA9600](a6, a7);
            MEMORY[0x21CEA9600](0x6920455245485720, 0xED000027203D2064);
            MEMORY[0x21CEA9600](a4, a5);
            a2 = 0xE400000000000000;
            MEMORY[0x21CEA9600](539765031, 0xE400000000000000);
            v91 = 1280070990;
            switch(v128)
            {
              case 0u:
                v125 = 39;
                v126 = 0xE100000000000000;
                sub_2179A4934();
                OUTLINED_FUNCTION_1_3();
                v92 = sub_2179E9A80();
                MEMORY[0x21CEA9600](v92);

                MEMORY[0x21CEA9600](39, 0xE100000000000000);
                goto LABEL_64;
              case 1u:
                v91 = sub_2179E9D40();
                goto LABEL_71;
              case 2u:
                if (v90)
                {
                  v91 = 49;
                }

                else
                {
                  v91 = 48;
                }

                a2 = 0xE100000000000000;
                break;
              case 3u:
                v125 = 0;
                v126 = 0xE000000000000000;
                sub_2179E9860();
LABEL_64:
                v91 = v125;
                a2 = v126;
                break;
              case 4u:
                v122 = OUTLINED_FUNCTION_6_5();
                v91 = Data.queryValue.getter(v122, v123);
LABEL_71:
                a2 = v121;
                break;
              case 5u:
                break;
              default:
                continue;
            }

            break;
          }

          MEMORY[0x21CEA9600](v91, a2);

          MEMORY[0x21CEA9600](41, 0xE100000000000000);
          v61 = OUTLINED_FUNCTION_6_5();
          v63 = v128;
LABEL_73:
          sub_2179AA22C(v61, v62, v63);
          break;
      }

LABEL_74:
      a7 = v127;
      break;
    default:
      OUTLINED_FUNCTION_3_7();
      OUTLINED_FUNCTION_2_8();
      sub_2179A4934();
      OUTLINED_FUNCTION_1_3();
      v18 = sub_2179E9A80();
      v20 = v19;
      v21 = OUTLINED_FUNCTION_6_5();
      sub_2179AC53C(v21, v22, 0);
      MEMORY[0x21CEA9600](v18, v20);

      OUTLINED_FUNCTION_9_4();
      a7 = v127;
      v28 = *(v11 + 24);
      v23 = *(v11 + 32);
      v24 = OUTLINED_FUNCTION_8_6();
      __swift_project_boxed_opaque_existential_1(v24, v25);
      OUTLINED_FUNCTION_4_8();
      v26 = OUTLINED_FUNCTION_5_5();
      v27(v26);
      LOBYTE(v28) = v127;
      switch(v128)
      {
        case 0u:
          OUTLINED_FUNCTION_3_7();
          OUTLINED_FUNCTION_2_8();
          OUTLINED_FUNCTION_1_3();
LABEL_10:
          v47 = sub_2179E9A80();
          MEMORY[0x21CEA9600](v47);

          OUTLINED_FUNCTION_9_4();
          v48 = OUTLINED_FUNCTION_5_5();
LABEL_14:
          sub_2179AA22C(v48, v49, 0);
          goto LABEL_55;
        case 1u:
LABEL_57:
          sub_2179E9D40();
          OUTLINED_FUNCTION_14_2();
          goto LABEL_53;
        case 2u:
LABEL_23:
          v76 = OUTLINED_FUNCTION_5_5();
          sub_2179AA22C(v76, v77, 2);

LABEL_26:
          v41 = (v28 & 1) == 0;
          goto LABEL_27;
        case 3u:
LABEL_54:
          OUTLINED_FUNCTION_13_3();
          sub_2179E9860();
LABEL_55:

          goto LABEL_74;
        case 4u:
LABEL_21:
          v70 = OUTLINED_FUNCTION_5_5();
          Data.queryValue.getter(v70, v71);
          OUTLINED_FUNCTION_14_2();
          v72 = OUTLINED_FUNCTION_5_5();
LABEL_42:
          sub_2179AA22C(v72, v73, 4);
LABEL_53:

          return a7;
        case 5u:
LABEL_22:
          OUTLINED_FUNCTION_12_4();
          v74 = OUTLINED_FUNCTION_5_5();
LABEL_59:
          sub_2179AA22C(v74, v75, 5);
LABEL_60:

          return a7;
        default:
          return a7;
      }
  }

  return a7;
}

uint64_t sub_2179C9EC4(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v7 = (*(*(a4 + 8) + 32))(a3);
  v22 = v8;
  v23 = v7;
  v9 = *(a4 + 16);
  v10 = OUTLINED_FUNCTION_19_1();
  v9(v10);

  v33 = v34;
  v30 = a3;
  v31 = a4;
  v32 = a1;
  type metadata accessor for SearchColumn();
  sub_2179E9EC0();
  v11 = sub_2179E9840();
  WitnessTable = swift_getWitnessTable();
  v14 = sub_2179A2E44(sub_2179CA278, v29, v11, MEMORY[0x277D837D0], MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v13);

  v15 = OUTLINED_FUNCTION_19_1();
  v9(v15);
  v16 = v34;

  v33 = v16;
  v26 = a3;
  v27 = a4;
  v28 = a1;
  v18 = sub_2179A2E44(sub_2179CA29C, v25, v11, MEMORY[0x277D837D0], MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v17);

  v19 = sub_2179B1764(v23, v22, v14, v18, a2);

  (*(*(a3 - 8) + 8))(a1, a3);
  return v19;
}

uint64_t sub_2179CA0E0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getAtKeyPath();
  v4 = *(v8 + 16);
  os_unfair_lock_lock((v4 + 64));
  v6 = *(v4 + 16);
  v5 = *(v4 + 24);

  os_unfair_lock_unlock((v4 + 64));

  *a2 = v6;
  a2[1] = v5;
  return result;
}

uint64_t sub_2179CA164@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getAtKeyPath();
  v4 = *(v11 + 16);
  os_unfair_lock_lock((v4 + 64));
  v6 = *(v4 + 48);
  v5 = *(v4 + 56);

  os_unfair_lock_unlock((v4 + 64));

  sub_2179A4934();
  v7 = sub_2179E9A80();
  v9 = v8;

  MEMORY[0x21CEA9600](v7, v9);

  result = MEMORY[0x21CEA9600](39, 0xE100000000000000);
  *a2 = 39;
  a2[1] = 0xE100000000000000;
  return result;
}

uint64_t sub_2179CA278@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  return sub_2179CA0E0(a1, a2);
}

uint64_t sub_2179CA29C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  return sub_2179CA164(a1, a2);
}

uint64_t sub_2179CA2C0(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_2179CA2D8(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_2179CA2D8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_2179CA2E8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t LazyJSON.__allocating_init(value:)(uint64_t a1)
{
  OUTLINED_FUNCTION_1_4();
  v2 = swift_allocObject();
  LazyJSON.init(value:)(a1);
  return v2;
}

uint64_t LazyJSON.init(value:)(uint64_t a1)
{
  v2 = v1;
  OUTLINED_FUNCTION_3_8();
  v5 = *(v4 + 80);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v8);
  v10 = &v16 - v9;
  v12 = *(v11 + 88);
  v13 = *(v11 + 96);
  type metadata accessor for LazyLoader();
  (*(v6 + 16))(v10, a1, v5);
  v14 = LazyLoader.__allocating_init(object:)(v10);
  (*(v6 + 8))(a1, v5);
  *(v2 + 16) = v14;
  return v2;
}

uint64_t LazyJSON.valueType.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_3_8();
  v4 = v3;
  v6 = *(v5 + 80);
  OUTLINED_FUNCTION_2();
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v9);
  v10 = *(v1 + 16);
  LazyLoader.load()(&v22 - v11);
  v12 = sub_2179E90E0();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  sub_2179E90D0();
  v15 = *(v4 + 96);
  v16 = sub_2179E90C0();
  v18 = v17;
  v19 = OUTLINED_FUNCTION_4_9();
  v20(v19, v6);

  *a1 = v16;
  *(a1 + 8) = v18;
  *(a1 + 16) = 4;
  return result;
}

uint64_t sub_2179CA600(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x726564616F6CLL && a2 == 0xE600000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2179E9D70();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_2179CA688(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3[2];
  v4 = a3[3];
  v5 = a3[4];
  return sub_2179ABDB4();
}

uint64_t sub_2179CA694(void *a1)
{
  v2 = a1[2];
  v1 = a1[3];
  v3 = a1[4];
  return sub_2179BC094();
}

uint64_t sub_2179CA6A4(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v2 = a2[3];
  v4 = a2[4];
  return sub_2179BC06C();
}

uint64_t sub_2179CA6B4(uint64_t a1, void *a2)
{
  sub_2179E9E20();
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  sub_2179BC06C();
  return sub_2179E9E40();
}

uint64_t sub_2179CA6FC(void *a1)
{
  v2 = a1[2];
  v1 = a1[3];
  v3 = a1[4];
  return sub_2179CA674();
}

uint64_t sub_2179CA70C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  result = sub_2179CA600(a1, a2);
  *a4 = result & 1;
  return result;
}

uint64_t sub_2179CA744(void *a1)
{
  v2 = a1[2];
  v1 = a1[3];
  v3 = a1[4];
  return sub_2179BC638();
}

uint64_t sub_2179CA76C@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  result = sub_2179ABDB4();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2179CA7A4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_2179CA7F8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t LazyJSON.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v2;
  v15[2] = *(*v2 + 80);
  v15[1] = *(v4 + 88);
  v15[0] = *(v4 + 96);
  type metadata accessor for LazyJSON.CodingKeys();
  OUTLINED_FUNCTION_0_10();
  swift_getWitnessTable();
  v5 = sub_2179E9D30();
  OUTLINED_FUNCTION_2();
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v10);
  v12 = v15 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2179E9EB0();
  v15[5] = v2[2];
  type metadata accessor for LazyLoader();
  swift_getWitnessTable();
  sub_2179E9D20();
  return (*(v7 + 8))(v12, v5);
}

uint64_t LazyJSON.__allocating_init(from:)(uint64_t *a1)
{
  OUTLINED_FUNCTION_1_4();
  v2 = swift_allocObject();
  LazyJSON.init(from:)(a1);
  return v2;
}

uint64_t LazyJSON.init(from:)(uint64_t *a1)
{
  OUTLINED_FUNCTION_3_8();
  v13 = v3[11];
  v14 = v3[10];
  v12 = v3[12];
  type metadata accessor for LazyJSON.CodingKeys();
  OUTLINED_FUNCTION_0_10();
  swift_getWitnessTable();
  v4 = sub_2179E9CD0();
  OUTLINED_FUNCTION_2();
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v7);
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2179E9E90();
  if (v15)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    type metadata accessor for LazyLoader();
    swift_getWitnessTable();
    sub_2179E9CC0();
    v10 = OUTLINED_FUNCTION_4_9();
    v11(v10, v4);
    *(v1 + 16) = v16;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

uint64_t sub_2179CACD8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = LazyJSON.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

_BYTE *sub_2179CAD90(_BYTE *result, int a2, int a3)
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

uint64_t sub_2179CAE80(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 + a4 - 8);
  v7 = *(a3 + a4 - 24);
  v11[0] = *(a3 + a4 - 40);
  v11[1] = v7;
  v12 = v6;
  type metadata accessor for Store.Promises();
  v8 = sub_2179E9A60();
  (*(*(v8 - 8) + 16))(v11, a1, v8);
  v9 = *a2;
  return sub_2179CB008(v11);
}

uint64_t sub_2179CAF1C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  OUTLINED_FUNCTION_22();
  v5 = v4;
  swift_beginAccess();
  OUTLINED_FUNCTION_22();
  v10 = *(v5 + 80);
  v11 = *(v5 + 96);
  v12 = *(v6 + 112);
  type metadata accessor for Store.Promises();
  OUTLINED_FUNCTION_9();
  v7 = sub_2179E9A60();
  OUTLINED_FUNCTION_1(v7);
  return (*(v8 + 16))(a1, v1 + 4);
}

uint64_t sub_2179CB008(uint64_t a1)
{
  v3 = *v1;
  OUTLINED_FUNCTION_22();
  v5 = v4;
  swift_beginAccess();
  OUTLINED_FUNCTION_22();
  v10 = *(v5 + 80);
  v11 = *(v5 + 96);
  v12 = *(v6 + 112);
  type metadata accessor for Store.Promises();
  OUTLINED_FUNCTION_9();
  v7 = sub_2179E9A60();
  OUTLINED_FUNCTION_1(v7);
  (*(v8 + 40))(v1 + 4, a1);
  return swift_endAccess();
}

uint64_t Store.__allocating_init(database:)(uint64_t a1)
{
  v2 = swift_allocObject();
  Store.init(database:)(a1);
  return v2;
}

uint64_t Store.init(database:)(uint64_t a1)
{
  v3 = v1;
  v4 = *v1;
  v5 = *v1;
  *(v1 + 32) = 0;
  v6 = v1 + 32;
  *(v1 + 40) = 1;
  *(v1 + 16) = a1;
  v7 = v4[11];
  v8 = v4[14];
  v9 = Database.table<A>(_:)();
  if (v2)
  {
    v10 = *(v1 + 16);

    v11 = v5[10];
    v12 = v5[12];
    v13 = v5[13];
    OUTLINED_FUNCTION_8_7();
    type metadata accessor for Store.Promises();
    OUTLINED_FUNCTION_9();
    v14 = sub_2179E9A60();
    OUTLINED_FUNCTION_1(v14);
    (*(v15 + 8))(v6);
    OUTLINED_FUNCTION_8_7();
    type metadata accessor for Store();
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v1 + 24) = v9;

    sub_2179AA534();
    v25[8] = 0;
    swift_beginAccess();
    v16 = v5[10];
    v17 = v5[12];
    v18 = v5[13];
    v31 = v17;
    v26 = v16;
    v27 = v7;
    v28 = v17;
    v29 = v18;
    v30 = v8;
    type metadata accessor for Store.Promises();
    OUTLINED_FUNCTION_9();
    v19 = sub_2179E9A60();
    OUTLINED_FUNCTION_1(v19);
    (*(v20 + 40))(v6, v25);
    v21 = swift_endAccess();
    MEMORY[0x28223BE20](v21);
    sub_2179E93D0();
    v22 = swift_allocObject();
    v22[2] = v16;
    v22[3] = v7;
    v22[4] = v31;
    v22[5] = v18;
    v22[6] = v8;
    v23 = sub_2179E9380();
    sub_2179E9390();
  }

  return v3;
}

uint64_t sub_2179CB3F0(uint64_t a1, uint64_t a2)
{
  v5 = 0;

  v3 = Database.asyncWrite(_:block:)(&v5, sub_2179CD8EC, a2);

  return v3;
}

uint64_t sub_2179CB47C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[3];
  sub_2179A6BC4();
  v3 = *(v1 + 88);
  v4 = *(*(v1 + 112) + 8);
  v5 = sub_2179ABDB4();
  sub_2179A750C(v5 & 1);
}

uint64_t sub_2179CB504()
{
  if (qword_280B1DB60 != -1)
  {
    swift_once();
  }

  sub_2179E9920();
  sub_21799ABE4();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2179EA820;
  v1 = sub_2179E9EF0();
  v3 = v2;
  v4 = MEMORY[0x277D837D0];
  *(v0 + 56) = MEMORY[0x277D837D0];
  v5 = sub_21799C634();
  *(v0 + 64) = v5;
  *(v0 + 32) = v1;
  *(v0 + 40) = v3;
  sub_21799AC4C(0, &qword_280B1DBF8);
  sub_2179E9C10();
  *(v0 + 96) = v4;
  *(v0 + 104) = v5;
  *(v0 + 72) = 0;
  *(v0 + 80) = 0xE000000000000000;
  sub_2179E93F0();
}

uint64_t sub_2179CB65C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  return sub_2179CB504();
}

void sub_2179CB66C()
{
  v1 = *v0;
  v2 = v0[2];
  v3 = *(v1 + 80);
  sub_2179E9840();
  Database.read<A>(block:)(&v4);
}

uint64_t sub_2179CB6EC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[3];
  sub_2179AB328();
  v6 = sub_2179AB354();

  if (!v2)
  {
    v22[2] = v6;
    v8 = sub_2179CB8CC();
    v21 = &v21;
    v9 = MEMORY[0x28223BE20](v8);
    v16 = *(v4 + 80);
    v17 = *(v4 + 88);
    v18 = *(v4 + 104);
    v19 = v9;
    v20 = v10;
    v11 = sub_2179E9840();
    v12 = sub_21799AC4C(0, &qword_280B1DBF8);
    WitnessTable = swift_getWitnessTable();
    v14 = sub_2179A2E44(sub_2179CD920, &v15, v11, v16, v12, WitnessTable, MEMORY[0x277D84950], v22);

    *a2 = v14;
  }

  return result;
}

uint64_t sub_2179CB90C()
{
  v2 = *v0;
  v3 = *v0;
  v4 = sub_2179E90E0();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_2179E90D0();
  v7 = *(v2 + 88);
  v8 = *(*(*(v2 + 112) + 8) + 16);
  v9 = sub_2179E90C0();
  v11 = v10;

  if (!v1)
  {
    v13 = sub_2179E92D0();
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    sub_2179E92C0();
    v16 = *(v3 + 80);
    v17 = *(v3 + 96);
    sub_2179E92B0();

    return sub_2179B314C(v9, v11);
  }

  return result;
}

void sub_2179CBA4C(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  v31 = a2;
  v28 = *v4;
  v6 = *(v28 + 88);
  v7 = sub_2179E9A60();
  OUTLINED_FUNCTION_2();
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v12);
  v14 = (&v27 - v13);
  OUTLINED_FUNCTION_2();
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v19);
  v21 = &v27 - v20;
  v22 = *a1;
  v23 = v4[2];
  v29 = v4;
  v30 = v22;
  Database.read<A>(block:)(v14);
  if (!v3)
  {
    v24 = v31;
    if (__swift_getEnumTagSinglePayload(v14, 1, v6) == 1)
    {
      (*(v9 + 8))(v14, v7);
      v25 = 1;
      v26 = v24;
    }

    else
    {
      (*(v16 + 32))(v21, v14, v6);
      v26 = v24;
      sub_2179CB90C();
      (*(v16 + 8))(v21, v6);
      v25 = 0;
    }

    __swift_storeEnumTagSinglePayload(v26, v25, 1, *(v28 + 80));
  }
}

uint64_t sub_2179CBCA0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  sub_2179AB328();
  v7 = a2;
  v5[0] = 0;
  v5[1] = 0;
  v6 = -1;
  sub_2179B0748(&v7, v5);
}

void sub_2179CBD34(uint64_t *a1)
{
  v2 = v1[2];
  v4 = *a1;
  v3 = *(*v1 + 80);
  sub_2179E9840();
  Database.read<A>(block:)(&v5);
}

uint64_t sub_2179CBDC4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *a1;
  v7 = a1[3];
  sub_2179AB328();
  v26 = a2;
  v24[0] = 0;
  v24[1] = 0;
  v25 = -1;
  v8 = sub_2179B4BC8(&v26, v24, 0, 1);

  if (!v3)
  {
    v24[0] = v8;
    v10 = sub_2179CBFCC();
    v23 = &v23;
    v11 = MEMORY[0x28223BE20](v10);
    v18 = *(v6 + 80);
    v19 = *(v6 + 88);
    v20 = *(v6 + 104);
    v21 = v11;
    v22 = v12;
    v13 = sub_2179E9840();
    v14 = sub_21799AC4C(0, &qword_280B1DBF8);
    WitnessTable = swift_getWitnessTable();
    v16 = sub_2179A2E44(sub_2179CD884, &v17, v13, v18, v14, WitnessTable, MEMORY[0x277D84950], &v26);

    *a3 = v16;
  }

  return result;
}

void sub_2179CC00C(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  v9 = v7;
  v12 = *v7;
  v13 = v7[2];
  HIBYTE(_28[0]) = 0;
  v14 = v12;
  Database.write(_:block:)(_28 + 7, sub_2179CC0D8, v15, a2, a3, a4, a5, a6, v15[0], v15[1], v9, a1, v15[4], _28[0], _28[1], _28[2], _28[3], _28[4], _28[5], _28[6]);
  if (!v8)
  {
    (*(*(*(v14 + 80) - 8) + 16))(a7, a1);
  }
}

uint64_t sub_2179CC11C()
{
  v2 = *v0;
  v3 = *v0;
  v4 = sub_2179E90E0();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_2179E90D0();
  v7 = *(v2 + 80);
  v8 = *(v2 + 104);
  v9 = sub_2179E90C0();
  v11 = v10;

  if (!v1)
  {
    v13 = sub_2179E92D0();
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    sub_2179E92C0();
    v16 = *(v3 + 88);
    v17 = *(*(*(v3 + 112) + 8) + 8);
    sub_2179E92B0();

    return sub_2179B314C(v9, v11);
  }

  return result;
}

uint64_t sub_2179CC2C4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v23 = *(*a2 + 88);
  v5 = *(v23 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v20 - v8;
  v26 = v10;
  v12 = *(v11 + 80);
  v13 = *(v12 - 8);
  v21 = *(v13 + 64);
  MEMORY[0x28223BE20](v7);
  v15 = &v20 - v14;
  v16 = sub_2179E97C0();
  v28 = v16;
  v24 = (v13 + 8);
  v25 = (v13 + 16);
  v22 = (v5 + 8);
  while (1)
  {
    result = sub_2179E9820();
    if (v16 == result)
    {
      break;
    }

    v18 = sub_2179E9800();
    sub_2179E97E0();
    if (v18)
    {
      (*(v13 + 16))(v15, a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v16, v12);
    }

    else
    {
      result = sub_2179E9B20();
      if (v21 != 8)
      {
        __break(1u);
        return result;
      }

      v27 = result;
      (*v25)(v15, &v27, v12);
      swift_unknownObjectRelease();
    }

    sub_2179E9830();
    v19 = *(v26 + 24);
    sub_2179B69CC();
    sub_2179CC11C();
    (*v24)(v15, v12);
    if (v3)
    {
    }

    sub_2179B69F8(v9);
    v3 = 0;

    (*v22)(v9, v23);
    v16 = v28;
  }

  return result;
}

uint64_t sub_2179CC600(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v6 = *(*a1 + 88);
  OUTLINED_FUNCTION_2();
  v8 = v7;
  v10 = *(v9 + 64);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v18 - v13;
  v15 = *(v12 + 24);
  v16();
  sub_2179CC11C();
  if (!v4)
  {
    a4(v14);
    (*(v8 + 8))(v14, v6);
  }
}

uint64_t sub_2179CC7B8(uint64_t a1)
{
  v1 = *(a1 + 24);
  sub_2179E4CE8();
  sub_2179CEADC();
}

uint64_t sub_2179CC814()
{
  v1 = v0[3];
  v2 = v0[4];
  return sub_2179CC7B8(v0[2]);
}

uint64_t sub_2179CC878(uint64_t a1)
{
  v1 = *(a1 + 24);
  sub_2179E4CE8();
  sub_2179CEBD4();
}

uint64_t Store.Promises.all()(uint64_t a1)
{
  v1 = *(a1 + 16);
  sub_2179E9840();
  OUTLINED_FUNCTION_9();
  sub_2179E93C0();
  OUTLINED_FUNCTION_1_10();
  OUTLINED_FUNCTION_14();
  return sub_2179E93A0();
}

uint64_t sub_2179CC94C(void (*a1)(uint64_t *))
{
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2179CB66C();
    v4 = v3;

    v5 = v4;
    a1(&v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2179CCA70(void (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = sub_2179E9A60();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v14 - v11;
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = a6;
    sub_2179CBA4C(&v15, v12);

    a1(v12);
    return (*(v9 + 8))(v12, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2179CCC04(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t, void))
{
  v4 = *a1;
  a3(255, *(a2 + 16));
  OUTLINED_FUNCTION_9();
  sub_2179E93C0();
  v6 = *(a2 + 24);
  v7 = *(a2 + 40);
  return sub_2179E93A0();
}

uint64_t sub_2179CCC8C(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = a6;
    sub_2179CBD34(&v11);
    v10 = v9;

    v11 = v10;
    a1(&v11);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t Store.Promises.save(_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  sub_2179E93C0();
  OUTLINED_FUNCTION_1_10();
  OUTLINED_FUNCTION_14();
  return sub_2179E93A0();
}

{
  v2 = *(a2 + 16);
  sub_2179E9840();
  OUTLINED_FUNCTION_9();
  sub_2179E93C0();
  OUTLINED_FUNCTION_1_10();
  OUTLINED_FUNCTION_14();
  return sub_2179E93A0();
}

uint64_t sub_2179CCE00(void (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *(a7 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](a1);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2179CC00C(a6, v15, v16, v17, v18, v19, v13);

    a1(v13);
    return (*(v10 + 8))(v13, a7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2179CCFD0(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2179CC25C(a6);

    v9 = a6;
    a1(&v9);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t Store.Promises.delete(_:)(uint64_t a1, uint64_t a2)
{
  v6 = *(a2 + 16);
  v7 = *(a2 + 32);
  v8 = *(a2 + 48);
  sub_21799EC44();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_14();
  return sub_2179E93B0();
}

uint64_t sub_2179CD15C(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2179CC5BC(a6);

    return a1(v9);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t Store.Promises.delete(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  v8 = *(a3 + 32);
  v9 = *(a3 + 48);
  sub_21799EC44();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_14();
  return sub_2179E93B0();
}

uint64_t sub_2179CD2D0(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2179CC770(a6, a7);

    return a1(v11);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2179CD3A4(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v8 = *(v4 + 40);
  v9 = *(v4 + 48);
  v7 = *(v4 + 24);
  return sub_2179CD2D0(a1, a2, a3, a4, *(v4 + 56), *(v4 + 64), *(v4 + 72));
}

uint64_t Store.Promises.deleteAll()(uint64_t a1)
{
  v5 = *(a1 + 16);
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  sub_21799EC44();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_14();
  return sub_2179E93B0();
}

uint64_t sub_2179CD444(uint64_t (*a1)(uint64_t))
{
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2179CC834();

    return a1(v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t *Store.deinit()
{
  v1 = *v0;
  v2 = *v0;
  v3 = v0[2];

  v4 = v0[3];

  v8 = *(v2 + 80);
  v9 = *(v2 + 96);
  v10 = *(v1 + 112);
  type metadata accessor for Store.Promises();
  OUTLINED_FUNCTION_9();
  v5 = sub_2179E9A60();
  OUTLINED_FUNCTION_1(v5);
  (*(v6 + 8))(v0 + 4);
  return v0;
}

uint64_t Store.__deallocating_deinit()
{
  Store.deinit();

  return swift_deallocClassInstance();
}

uint64_t dispatch thunk of Store.save(_:)()
{
  OUTLINED_FUNCTION_21();
  return (*(v0 + 200))();
}

{
  OUTLINED_FUNCTION_21();
  return (*(v0 + 208))();
}

uint64_t dispatch thunk of Store.delete(_:)()
{
  OUTLINED_FUNCTION_21();
  return (*(v0 + 216))();
}

{
  OUTLINED_FUNCTION_21();
  return (*(v0 + 224))();
}

uint64_t sub_2179CD848()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2179CD89C(uint64_t a1, void *a2)
{
  v5 = *(v2 + 56);
  v6 = *(v2 + 64);
  result = v5();
  if (v3)
  {
    *a2 = v3;
  }

  return result;
}

uint64_t Column.__allocating_init(primaryKey:index:unique:default:onUpdate:)(char a1, char a2, char a3, uint64_t a4, uint64_t a5)
{
  v11 = *(v5 + 48);
  v12 = *(v5 + 52);
  v13 = swift_allocObject();
  Column.init(primaryKey:index:unique:default:onUpdate:)(a1, a2, a3, a4, a5);
  return v13;
}

uint64_t sub_2179CD9A8()
{
  OUTLINED_FUNCTION_2_9();
  swift_getWitnessTable();
  return OUTLINED_FUNCTION_0();
}

uint64_t sub_2179CD9CC()
{
  OUTLINED_FUNCTION_2_9();
  swift_getWitnessTable();
  v0 = OUTLINED_FUNCTION_9_0();

  return static ColumnType.createTableChain(for:ifNotExists:)(v0, v1, v2, v3);
}

uint64_t sub_2179CDA40()
{
  OUTLINED_FUNCTION_2_9();
  swift_getWitnessTable();
  return OUTLINED_FUNCTION_0();
}

uint64_t sub_2179CDA64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = OUTLINED_FUNCTION_0_0(a1);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return (*(*(*(a1 + 16) - 8) + 32))(a2, v8);
  }

  v10 = *(v8 + 1);
  (*v8)();
}

uint64_t sub_2179CDB74()
{
  OUTLINED_FUNCTION_1_11();
  swift_getWitnessTable();
  return OUTLINED_FUNCTION_0();
}

uint64_t sub_2179CDB94(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_11();
  WitnessTable = swift_getWitnessTable();

  return static ColumnType.createTableChain(for:ifNotExists:)(a1, a2, v2, WitnessTable);
}

uint64_t sub_2179CDBEC()
{
  OUTLINED_FUNCTION_1_11();
  swift_getWitnessTable();
  return OUTLINED_FUNCTION_0();
}

uint64_t (*autoUpdate<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v8 = swift_allocObject();
  v8[2] = a3;
  v8[3] = a4;
  v8[4] = a1;
  v8[5] = a2;

  return sub_2179CDDC8;
}

uint64_t sub_2179CDC90(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 + a4 - 16);
  v7 = sub_2179E9A60();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - v9;
  (*(v11 + 16))(&v14 - v9, a1);
  v12 = *a2;
  return sub_2179AC6CC(v10);
}

uint64_t (*sub_2179CDD60())()
{
  OUTLINED_FUNCTION_21();
  v1 = *(v0 + 104);
  OUTLINED_FUNCTION_14_3();
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_2179CDDC8()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return v1();
}

uint64_t Column.__allocating_init(from:)(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  Column.init(from:)(a1);
  return v5;
}

void *Column.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = *v1;
  v6 = *(v5 + 80);
  v7 = sub_2179E9A60();
  v35 = OUTLINED_FUNCTION_0_0(v7);
  v36 = v8;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_19();
  MEMORY[0x28223BE20](v11);
  v38 = &v35 - v12;
  v13 = *(v5 + 88);
  (*(v13 + 32))(v6, v13);
  OUTLINED_FUNCTION_8_8();
  v15 = *(v14 + 104);
  __swift_storeEnumTagSinglePayload(v3 + v15, 1, 1, v6);
  OUTLINED_FUNCTION_8_8();
  *(v3 + *(v16 + 112)) = 0;
  OUTLINED_FUNCTION_8_8();
  *(v3 + *(v17 + 120)) = 0;
  OUTLINED_FUNCTION_8_8();
  *(v3 + *(v18 + 128)) = 0;
  OUTLINED_FUNCTION_8_8();
  v20 = *(v19 + 136);
  type metadata accessor for Column.Func();
  OUTLINED_FUNCTION_6_6();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
  OUTLINED_FUNCTION_8_8();
  v26 = *(v25 + 144);
  OUTLINED_FUNCTION_6_6();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
  v31 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2179E9E80();
  if (v2)
  {
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v37, v37[3]);
    v32 = *(v13 + 8);
    v33 = v38;
    sub_2179E9D80();
    __swift_storeEnumTagSinglePayload(v33, 0, 1, v6);
    OUTLINED_FUNCTION_14_3();
    swift_beginAccess();
    (*(v36 + 40))(v3 + v15, v33, v35);
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_1(v37);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

uint64_t sub_2179CE0DC(void *a1)
{
  v3 = v1;
  v5 = *v3;
  v6 = *(*v3 + 80);
  v7 = sub_2179E9A60();
  OUTLINED_FUNCTION_0_0(v7);
  v9 = v8;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_19();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_13_4();
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2179E9EA0();
  sub_2179B03D8(v2);
  __swift_mutable_project_boxed_opaque_existential_1(v15, v15[3]);
  v15[6] = *(*(v5 + 88) + 16);
  swift_getWitnessTable();
  sub_2179E9DA0();
  (*(v9 + 8))(v2, v7);
  return __swift_destroy_boxed_opaque_existential_1(v15);
}

uint64_t sub_2179CE298@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = Column.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t Column.description.getter()
{
  OUTLINED_FUNCTION_21();
  v1 = *(v0 + 80);
  v2 = sub_2179E9A60();
  v3 = OUTLINED_FUNCTION_0_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v3);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v22 - v11;
  OUTLINED_FUNCTION_2();
  v14 = v13;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_19();
  MEMORY[0x28223BE20](v17);
  v19 = v22 - v18;
  sub_2179B03D8(v12);
  if (__swift_getEnumTagSinglePayload(v12, 1, v1) == 1)
  {
    (*(v5 + 8))(v12, v2);
    sub_2179B03D8(v10);
    return sub_2179E9660();
  }

  else
  {
    (*(v14 + 32))(v19, v12, v1);
    v22[0] = 0;
    v22[1] = 0xE000000000000000;
    sub_2179E9D60();
    v20 = v22[0];
    (*(v14 + 8))(v19, v1);
  }

  return v20;
}

uint64_t sub_2179CE640(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 16;
  if (*(v3 + 64) > 0x10uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_22;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_22:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_22;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    switch(v5)
    {
      case 2:
        LODWORD(v5) = *a1;
        break;
      case 3:
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v5) = *a1;
        break;
      default:
        LODWORD(v5) = *a1;
        break;
    }
  }

  return (v5 | v10) + 255;
}

void sub_2179CE764(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 0x10)
  {
    v5 = 16;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if (a3 < 0xFF)
  {
    v8 = 0;
  }

  else if (v6 <= 3)
  {
    v11 = ((a3 + ~(-1 << v7) - 254) >> v7) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFE)
  {
    v9 = a2 - 255;
    if (v6 < 4)
    {
      v10 = (v9 >> v7) + 1;
      if (v5 != -1)
      {
        v13 = v9 & ~(-1 << v7);
        bzero(a1, v6);
        if (v6 == 3)
        {
          *a1 = v13;
          a1[2] = BYTE2(v13);
        }

        else if (v6 == 2)
        {
          *a1 = v13;
        }

        else
        {
          *a1 = v9;
        }
      }
    }

    else
    {
      bzero(a1, v5 + 1);
      *a1 = v9;
      v10 = 1;
    }

    switch(v8)
    {
      case 1:
        a1[v6] = v10;
        break;
      case 2:
        *&a1[v6] = v10;
        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v6] = v10;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v8)
    {
      case 1:
        a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      case 2:
        *&a1[v6] = 0;
        goto LABEL_25;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      default:
LABEL_25:
        if (a2)
        {
LABEL_26:
          a1[v5] = -a2;
        }

        break;
    }
  }
}

uint64_t sub_2179CE928()
{
  OUTLINED_FUNCTION_3_9();
  swift_getWitnessTable();
  return OUTLINED_FUNCTION_0();
}

uint64_t sub_2179CE948()
{
  OUTLINED_FUNCTION_3_9();
  swift_getWitnessTable();
  v0 = OUTLINED_FUNCTION_9_0();

  return static ColumnType.createTableChain(for:ifNotExists:)(v0, v1, v2, v3);
}

uint64_t sub_2179CE998()
{
  v2 = v0;
  v3 = *v0;
  v19[9] = 2;
  OUTLINED_FUNCTION_0_7();
  v5 = *(v4 + 88);
  v6 = *(v5 + 24);
  OUTLINED_FUNCTION_0_7();
  v9 = v8(*(v7 + 80), v5);
  swift_beginAccess();
  v11 = *(v9 + 24);
  v10 = *(v9 + 32);

  if (v10)
  {
    v13 = *(*(v5 + 8) + 24);
    type metadata accessor for Statement();
    sub_2179E7880();

    sub_2179E7750();
    OUTLINED_FUNCTION_5_6();
    sub_2179A70AC((v2 + 2), v19);
    OUTLINED_FUNCTION_4_11();
    v18 = sub_2179AC76C(v14, v15, v16, v17);
    OUTLINED_FUNCTION_1_2(v18);
    result = OUTLINED_FUNCTION_0_8();
    if (!v1)
    {
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2179CEADC()
{
  v3 = (v0 + 2);
  v2 = *v0;
  OUTLINED_FUNCTION_0_7();
  v5 = *(v4 + 80);
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_3_10(*(v6 + 88));
  type metadata accessor for Statement();
  v13 = 2;
  sub_2179E7880();
  v7 = sub_2179E7750();
  v9 = v8;

  sub_2179A70AC(v3, v12);
  v10 = sub_2179AC76C(&v13, v7, v9, v12);
  OUTLINED_FUNCTION_1_2(v10);
  result = OUTLINED_FUNCTION_0_8();
  if (!v1)
  {
  }

  return result;
}

uint64_t sub_2179CEBD4()
{
  v2 = *v0;
  OUTLINED_FUNCTION_0_7();
  v4 = *(v3 + 80);
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_3_10(*(v5 + 88));
  type metadata accessor for Statement();
  v12[5] = 2;
  sub_2179E7798(v4, v0);
  sub_2179E7750();
  OUTLINED_FUNCTION_5_6();
  sub_2179A70AC((v0 + 2), v12);
  OUTLINED_FUNCTION_4_11();
  v10 = sub_2179AC76C(v6, v7, v8, v9);
  OUTLINED_FUNCTION_1_2(v10);
  result = OUTLINED_FUNCTION_0_8();
  if (!v1)
  {
  }

  return result;
}

uint64_t sub_2179CECA0(uint64_t *a1)
{
  v3 = *v1;
  v4 = *a1;
  OUTLINED_FUNCTION_0_7();
  v6 = *(v5 + 80);
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_3_10(*(v7 + 88));
  type metadata accessor for Statement();
  v14[5] = 2;
  v14[0] = v4;
  sub_2179E7824(v14);
  sub_2179E7750();
  OUTLINED_FUNCTION_5_6();
  sub_2179A70AC((v1 + 2), v14);
  OUTLINED_FUNCTION_4_11();
  v12 = sub_2179AC76C(v8, v9, v10, v11);
  OUTLINED_FUNCTION_1_2(v12);
  result = OUTLINED_FUNCTION_0_8();
  if (!v2)
  {
  }

  return result;
}

uint64_t Delete.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

void sub_2179CEF5C()
{
  OUTLINED_FUNCTION_8_9();
  if (v5)
  {
    OUTLINED_FUNCTION_3_11();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_7_7();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_10();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_4_12(v6);
  if (v3)
  {
    OUTLINED_FUNCTION_1_12(v9, &qword_27CB980C0, MEMORY[0x277D83E40]);
    v10 = OUTLINED_FUNCTION_11_5();
    OUTLINED_FUNCTION_6_7(v10);
    OUTLINED_FUNCTION_5_7(v11);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  v12 = OUTLINED_FUNCTION_9_6();
  if (v1)
  {
    if (v3 != v0 || &v13[32 * v2] <= v12)
    {
      memmove(v12, v13, 32 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_2179CF028()
{
  OUTLINED_FUNCTION_8_9();
  if (v5)
  {
    OUTLINED_FUNCTION_3_11();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_7_7();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_10();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_4_12(v6);
  if (v3)
  {
    sub_2179AB038(0, &qword_27CB980B0, sub_2179CF3EC);
    v9 = OUTLINED_FUNCTION_11_5();
    OUTLINED_FUNCTION_6_7(v9);
    OUTLINED_FUNCTION_5_7(v10);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  if (v1)
  {
    if (v3 != v0 || v0 + 32 + 8 * v2 <= (v3 + 32))
    {
      v12 = OUTLINED_FUNCTION_12_6();
      memmove(v12, v13, v14);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    sub_2179CF3EC();
    OUTLINED_FUNCTION_12_6();
    swift_arrayInitWithCopy();
  }
}

void sub_2179CF11C()
{
  OUTLINED_FUNCTION_8_9();
  if (v5)
  {
    OUTLINED_FUNCTION_3_11();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_7_7();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_10();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_4_12(v6);
  if (v3)
  {
    OUTLINED_FUNCTION_1_12(v9, &qword_27CB97E38, &type metadata for SearchMatchPhrase);
    v10 = OUTLINED_FUNCTION_11_5();
    OUTLINED_FUNCTION_6_7(v10);
    OUTLINED_FUNCTION_5_7(v11);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  v12 = OUTLINED_FUNCTION_9_6();
  if (v1)
  {
    if (v3 != v0 || &v13[8 * v2] <= v12)
    {
      memmove(v12, v13, 8 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_2179CF1E8()
{
  OUTLINED_FUNCTION_8_9();
  if (v5)
  {
    OUTLINED_FUNCTION_3_11();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_7_7();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_10();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_4_12(v6);
  if (v3)
  {
    OUTLINED_FUNCTION_1_12(v9, qword_27CB980C8, &type metadata for RawEntity);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v2;
    v10[3] = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = OUTLINED_FUNCTION_9_6();
  if (v1)
  {
    if (v10 != v0 || &v13[v2] <= v12)
    {
      memmove(v12, v13, v2);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v12, v13, v2);
  }
}

char *sub_2179CF2EC(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[4 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_11(a3, result);
  }

  return result;
}

char *sub_2179CF30C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_11(a3, result);
  }

  return result;
}

char *sub_2179CF32C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_11(a3, result);
  }

  return result;
}

char *sub_2179CF354(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_11(a3, result);
  }

  return result;
}

uint64_t sub_2179CF374()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

void sub_2179CF3EC()
{
  if (!qword_27CB980B8)
  {
    sub_2179A0730();
    IndexCommand = type metadata accessor for CreateIndexCommand();
    if (!v1)
    {
      atomic_store(IndexCommand, &qword_27CB980B8);
    }
  }
}

uint64_t SearchTable.create.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_2179A70AC(v2, v12);
  sub_2179A70AC(v2, v11);
  v5 = sub_2179A0BF8(v11);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  return sub_2179CF644(v12, v5, v8, v9, a2);
}

uint64_t SearchTable.drop.getter(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(*(a1 + 24) + 8);
  type metadata accessor for Drop();
  sub_2179A70AC(v1, v5);
  return sub_2179A8074(v5);
}

uint64_t sub_2179CF5EC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2179CF644@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  result = sub_2179A80B8(a1, a5);
  a5[5] = a2;
  a5[6] = a3;
  a5[7] = a4;
  return result;
}

uint64_t sub_2179CF824(uint64_t a1, uint64_t a2, int a3)
{
  v6 = type metadata accessor for SearchTable.Create();
  sub_2179CF8AC(a2, a3, v6);
  sub_2179AC7D4(v7);

  if (!v3)
  {
  }

  return result;
}

void sub_2179CF8AC(uint64_t a1, int a2, uint64_t a3)
{
  v43 = a2;
  v5 = *(a3 + 16);
  v40 = *(v5 - 8);
  v6 = *(v40 + 64);
  MEMORY[0x28223BE20](a1);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 24);
  (*(*(*(v10 + 8) + 24) + 8))(v5, *(*(v10 + 8) + 24));
  type metadata accessor for Statement();
  v47 = 0;
  v42 = a1;
  sub_2179BEB54(a1, v5, v10);
  v11 = sub_2179BF4CC();
  v13 = v12;

  v41 = v3;
  sub_2179A70AC(v3, &v45);
  v38 = sub_2179AC76C(&v47, v11, v13, &v45);
  v39 = v8;
  v44 = v5;
  v14 = sub_2179DC294(v5, v10);
  v15 = *(v14 + 16);
  if (v15)
  {
    v47 = MEMORY[0x277D84F90];
    sub_2179A9394(0, v15, 0);
    v16 = 0;
    v17 = v47;
    v18 = v14 + 32;
    while (v16 < *(v14 + 16))
    {
      sub_2179A9940(v18, &v45);
      v20 = sub_2179CFFE8(v45, *(&v45 + 1), v46, v41, v42 & 1, v43 & 1);
      if (v20)
      {
        v21 = v19;
        v22 = swift_allocObject();
        *(v22 + 16) = v20;
        *(v22 + 24) = v21;
        v20 = sub_2179D006C;
      }

      else
      {
        v22 = 0;
      }

      sub_2179AE2FC(&v45);
      v47 = v17;
      v24 = *(v17 + 16);
      v23 = *(v17 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_2179A9394(v23 > 1, v24 + 1, 1);
        v17 = v47;
      }

      ++v16;
      *(v17 + 16) = v24 + 1;
      v25 = v17 + 16 * v24;
      *(v25 + 32) = v20;
      *(v25 + 40) = v22;
      v18 += 56;
      if (v15 == v16)
      {

        goto LABEL_12;
      }
    }
  }

  else
  {

    v17 = MEMORY[0x277D84F90];
LABEL_12:
    v26 = 0;
    v27 = *(v17 + 16);
    v28 = MEMORY[0x277D84F90];
LABEL_13:
    v29 = (v17 + 32 + 16 * v26);
    while (1)
    {
      if (v27 == v26)
      {

        sub_2179A9E30();

        (*(v40 + 8))(v39, v44);
        return;
      }

      if (v26 >= *(v17 + 16))
      {
        break;
      }

      ++v26;
      v30 = v29 + 2;
      v31 = *v29;
      v29 += 2;
      if (v31)
      {
        v32 = *(v30 - 1);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v35 = *(v28 + 16);
          sub_2179A94A4();
          v28 = v36;
        }

        v33 = *(v28 + 16);
        if (v33 >= *(v28 + 24) >> 1)
        {
          sub_2179A94A4();
          v28 = v37;
        }

        *(v28 + 16) = v33 + 1;
        v34 = v28 + 16 * v33;
        *(v34 + 32) = v31;
        *(v34 + 40) = v32;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_2179CFC60(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  *&v27 = 0x2835326D62;
  *(&v27 + 1) = 0xE500000000000000;
  v5 = *(a1 + 16);
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    v31 = MEMORY[0x277D84F90];
    sub_2179A920C(0, v5, 0);
    v8 = v31;
    v9 = (a1 + 32);
    do
    {
      v10 = *v9;
      v30[0] = 0;
      v30[1] = 0xE000000000000000;
      sub_2179E9860();
      v31 = v8;
      v12 = *(v8 + 16);
      v11 = *(v8 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_2179A920C(v11 > 1, v12 + 1, 1);
        v8 = v31;
      }

      *(v8 + 16) = v12 + 1;
      v13 = v8 + 16 * v12;
      *(v13 + 32) = 0;
      *(v13 + 40) = 0xE000000000000000;
      ++v9;
      --v5;
    }

    while (v5);
    v4 = a2;
    v3 = v2;
    v6 = MEMORY[0x277D84F90];
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  v30[0] = v8;
  sub_2179A5088();
  sub_2179A4B34();
  v14 = sub_2179E95F0();
  v16 = v15;

  MEMORY[0x21CEA9600](v14, v16);

  MEMORY[0x21CEA9600](41, 0xE100000000000000);
  v17 = *(v4 + 16);
  v18 = *(v4 + 24);
  v19 = *(*(v18 + 8) + 24);
  type metadata accessor for Statement();
  v30[0] = v6;
  v28 = MEMORY[0x277D837D0];
  v29 = &protocol witness table for String;
  v20 = sub_2179DA7F4(1802396018, 0xE400000000000000, &v27, v17, v18);
  v22 = v21;
  __swift_destroy_boxed_opaque_existential_1(&v27);
  sub_2179A70AC(v3, &v27);
  v23 = sub_2179AC76C(v30, v20, v22, &v27);
  sub_2179AC7D4(v23);

  if (!v26)
  {
  }

  return result;
}

uint64_t sub_2179CFEB0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_2179CF824(*(v0 + 32), *(v0 + 40), *(v0 + 41));
}

uint64_t sub_2179CFED8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_5TeaDB8VersionsVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2179CFF40(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_2179CFF80(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2179CFFE8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  swift_getDynamicType();
  return (*(a3[4] + 104))(a4, a5, a6);
}

uint64_t sub_2179D00C8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x797469746E65 && a2 == 0xE600000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2179E9D70();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_2179D0150(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = *(a3 + 24);
  return sub_2179ABDB4();
}

uint64_t sub_2179D0158(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  return sub_2179BC094();
}

uint64_t sub_2179D0164(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v2 = *(a2 + 24);
  return sub_2179BC06C();
}

uint64_t sub_2179D0170(uint64_t a1, uint64_t a2)
{
  sub_2179E9E20();
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  sub_2179BC06C();
  return sub_2179E9E40();
}

uint64_t sub_2179D01B4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  return sub_2179D013C();
}

uint64_t sub_2179D01C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = sub_2179D00C8(a1, a2);
  *a4 = result & 1;
  return result;
}

uint64_t sub_2179D01F4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  return sub_2179BC638();
}

uint64_t sub_2179D0218@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  result = sub_2179ABDB4();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2179D024C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_2179D02A0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_2179D02F4(uint64_t a1, uint64_t a2)
{
  v3 = (*(*(a2 + 8) + 32))();
  MEMORY[0x21CEA9600](1886221407, 0xE400000000000000);
  return v3;
}

uint64_t sub_2179D03DC(void *a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  v15 = *(a2 + 16);
  type metadata accessor for MigratableEntity.CodingKeys();
  OUTLINED_FUNCTION_0_12();
  swift_getWitnessTable();
  v4 = sub_2179E9D30();
  OUTLINED_FUNCTION_2();
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2179E9EB0();
  v13 = *(*(v3 + 8) + 16);
  sub_2179E9D20();
  return (*(v6 + 8))(v11, v4);
}

uint64_t sub_2179D0538@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v34 = a4;
  OUTLINED_FUNCTION_2();
  v37 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v10);
  v38 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MigratableEntity.CodingKeys();
  OUTLINED_FUNCTION_0_12();
  swift_getWitnessTable();
  v39 = sub_2179E9CD0();
  OUTLINED_FUNCTION_2();
  v35 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v15);
  v17 = &v32 - v16;
  v36 = a3;
  v18 = type metadata accessor for MigratableEntity();
  OUTLINED_FUNCTION_2();
  v33 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v22);
  v24 = &v32 - v23;
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v26 = v40;
  sub_2179E9E90();
  if (!v26)
  {
    v40 = v18;
    v27 = v35;
    v29 = v37;
    v28 = v38;
    v30 = *(*(v36 + 8) + 8);
    sub_2179E9CC0();
    (*(v27 + 8))(v17, v39);
    (*(v29 + 32))(v24, v28, a2);
    (*(v33 + 32))(v34, v24, v40);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2179D0868(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

_BYTE *sub_2179D0900(_BYTE *result, int a2, int a3)
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

uint64_t sub_2179D099C(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2179D0A0C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return __swift_getEnumTagSinglePayload(a1, v5, v4);
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_19:
      if (v5)
      {
        return __swift_getEnumTagSinglePayload(a1, v5, v4);
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_19;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void sub_2179D0B48(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = *(*(v6 - 8) + 64);
  v9 = 8 * v8;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v8 <= 3)
    {
      v15 = ((v11 + ~(-1 << v9)) >> v9) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 >= a2)
  {
    switch(v12)
    {
      case 1:
        a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 2:
        *&a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = 0;
        goto LABEL_23;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:

          __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
        }

        break;
    }
  }

  else
  {
    v13 = ~v7 + a2;
    if (v8 < 4)
    {
      v14 = (v13 >> v9) + 1;
      if (v8)
      {
        v17 = v13 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v17;
          a1[2] = BYTE2(v17);
        }

        else if (v8 == 2)
        {
          *a1 = v17;
        }

        else
        {
          *a1 = v13;
        }
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v13;
      v14 = 1;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v14;
        break;
      case 2:
        *&a1[v8] = v14;
        break;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = v14;
        break;
      default:
        return;
    }
  }
}

uint64_t CGRect.init(valueType:connection:)(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 16))
  {
    goto LABEL_45;
  }

  v4 = *a1;
  v3 = *(a1 + 8);
  v46 = 0;
  v47 = 0xE000000000000000;
  v5 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v5 = v4 & 0xFFFFFFFFFFFFLL;
  }

  v42 = v4;
  v43 = v3;
  v44 = 0;
  v45 = v5;

  while (1)
  {
    v6 = sub_2179E9720();
    if (!v7)
    {
      break;
    }

    v8 = v6;
    v9 = v7;
    if (v6 != 91 || v7 != 0xE100000000000000)
    {
      v11 = sub_2179E9D70();
      v13 = v8 == 93 && v9 == 0xE100000000000000;
      if ((v11 & 1) == 0 && !v13 && (sub_2179E9D70() & 1) == 0)
      {
        MEMORY[0x21CEA95F0](v8, v9);
      }
    }
  }

  v15 = v46;
  v16 = v47;
  v42 = 44;
  v43 = 0xE100000000000000;
  MEMORY[0x28223BE20](v14);
  v38 = &v42;

  v17 = sub_2179D12B0(0x7FFFFFFFFFFFFFFFLL, 1, sub_2179D1638, &v37, v15, v16);
  v18 = *(v17 + 16);
  if (v18)
  {
    v40 = v4;
    v41 = a2;
    v42 = MEMORY[0x277D84F90];
    sub_2179C2118(0, v18, 0);
    v19 = v42;
    v20 = (v17 + 56);
    do
    {
      v21 = *(v20 - 3);
      v22 = *(v20 - 2);
      v24 = *(v20 - 1);
      v23 = *v20;

      v25 = sub_2179E9870();
      v27 = v26;
      v42 = v19;
      v29 = *(v19 + 16);
      v28 = *(v19 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_2179C2118(v28 > 1, v29 + 1, 1);
        v19 = v42;
      }

      *(v19 + 16) = v29 + 1;
      v30 = v19 + 16 * v29;
      *(v30 + 32) = v25;
      *(v30 + 40) = v27 & 1;
      v20 += 4;
      --v18;
    }

    while (v18);

    v4 = v40;
    a2 = v41;
  }

  else
  {

    v19 = MEMORY[0x277D84F90];
  }

  v31 = *(v19 + 16);
  if (!v31)
  {
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (*(v19 + 40))
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (v31 == 1)
  {
    goto LABEL_38;
  }

  if (*(v19 + 56))
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (v31 < 3)
  {
    goto LABEL_39;
  }

  if ((*(v19 + 72) & 1) == 0)
  {
    if (v31 != 3)
    {
      if ((*(v19 + 88) & 1) == 0)
      {
        v32 = *(v19 + 32);
        v33 = *(v19 + 48);
        v34 = *(v19 + 64);
        v35 = *(v19 + 80);

        sub_2179AC53C(v4, v3, 0);
        return __swift_destroy_boxed_opaque_existential_1(a2);
      }

      goto LABEL_44;
    }

    goto LABEL_40;
  }

LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  v39 = 0;
  v38 = 31;
  result = sub_2179E9C40();
  __break(1u);
  return result;
}

uint64_t CGRect.valueType.getter@<X0>(uint64_t a1@<X8>)
{
  sub_2179E9B10();

  sub_2179E9850();
  OUTLINED_FUNCTION_2_11();

  MEMORY[0x21CEA9600](44, 0xE100000000000000);
  sub_2179E9850();
  OUTLINED_FUNCTION_2_11();

  MEMORY[0x21CEA9600](5975133, 0xE300000000000000);
  sub_2179E9850();
  OUTLINED_FUNCTION_2_11();

  MEMORY[0x21CEA9600](44, 0xE100000000000000);
  sub_2179E9850();
  OUTLINED_FUNCTION_2_11();

  result = MEMORY[0x21CEA9600](23901, 0xE200000000000000);
  *a1 = 23387;
  *(a1 + 8) = 0xE200000000000000;
  *(a1 + 16) = 0;
  return result;
}

uint64_t sub_2179D1234@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  return CGRect.valueType.getter(a1);
}

uint64_t sub_2179D1240@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  result = CGRect.init(valueType:connection:)(a1, a2);
  *a3 = v5;
  a3[1] = v6;
  a3[2] = v7;
  a3[3] = v8;
  return result;
}

uint64_t sub_2179D126C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_2179E9D70() & 1;
  }
}

uint64_t sub_2179D12B0(uint64_t a1, char a2, uint64_t (*a3)(void *), uint64_t a4, uint64_t a5, unint64_t a6)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_41;
  }

  v10 = a5;
  v13 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v14 = HIBYTE(a6) & 0xF) : (v14 = a5 & 0xFFFFFFFFFFFFLL), !v14))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v13 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v13 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    sub_2179E9780();
    OUTLINED_FUNCTION_1_14();
    sub_2179CEF5C();
    v15 = v30;
    v8 = *(v30 + 16);
    v31 = *(v30 + 24);
LABEL_37:
    v9 = v8 + 1;
    if (v8 < v31 >> 1)
    {
LABEL_38:
      *(v15 + 16) = v9;
      v32 = (v15 + 32 * v8);
      v32[4] = v6;
      v32[5] = v10;
      v32[6] = v11;
      v32[7] = v12;
      return v15;
    }

LABEL_41:
    sub_2179CEF5C();
    v15 = v33;
    goto LABEL_38;
  }

  v6 = a4;
  v15 = 4 * v14;
  v43 = MEMORY[0x277D84F90];
  v16 = 15;
  while (1)
  {
    v41 = v16;
    while (1)
    {
      v12 = v16 >> 14;
      if (v16 >> 14 == v15)
      {
        v16 = v41;
        goto LABEL_30;
      }

      OUTLINED_FUNCTION_0_13();
      v17 = sub_2179E9760();
      v11 = v18;
      v44[0] = v17;
      v44[1] = v18;
      v19 = v45(v44);
      if (v7)
      {

        return v15;
      }

      v20 = v19;

      if (v20)
      {
        break;
      }

      OUTLINED_FUNCTION_0_13();
      v16 = sub_2179E96D0();
    }

    v22 = (v41 >> 14 == v12) & a2;
    if (v22)
    {
      goto LABEL_20;
    }

    if (v12 < v41 >> 14)
    {
      break;
    }

    v42 = sub_2179E9780();
    v37 = v24;
    v38 = v23;
    v36 = v25;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v27 = *(v43 + 16);
      sub_2179CEF5C();
      v43 = v28;
    }

    v12 = *(v43 + 16);
    v11 = v12 + 1;
    if (v12 >= *(v43 + 24) >> 1)
    {
      sub_2179CEF5C();
      v43 = v29;
    }

    *(v43 + 16) = v11;
    v26 = (v43 + 32 * v12);
    v26[4] = v42;
    v26[5] = v38;
    v26[6] = v37;
    v26[7] = v36;
LABEL_20:
    OUTLINED_FUNCTION_0_13();
    v16 = sub_2179E96D0();
    if ((v22 & 1) == 0 && *(v43 + 16) == a1)
    {
LABEL_30:
      if (v16 >> 14 == v15 && (a2 & 1) != 0)
      {

        return v43;
      }

      if (v15 < v16 >> 14)
      {
        __break(1u);
      }

      else
      {
        sub_2179E9780();
        OUTLINED_FUNCTION_1_14();
        v15 = v43;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_36:
          v8 = *(v15 + 16);
          v31 = *(v15 + 24);
          goto LABEL_37;
        }
      }

      v34 = *(v15 + 16);
      sub_2179CEF5C();
      v15 = v35;
      goto LABEL_36;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2179D1658(uint64_t a1)
{
  *(a1 + 8) = sub_2179D16C0(&qword_27CB981D0);
  result = sub_2179D16C0(&qword_27CB981D8);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2179D16C0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CGRect();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2179D1704(uint64_t *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  v14 = *a2;
  v15 = *(a2 + 8);
  v16 = *(a2 + 16);
  v20 = *a1;
  v18[0] = v14;
  v18[1] = v15;
  v19 = v16;
  sub_2179A22DC(v20);
  sub_2179A80BC(v14, v15, v16);
  return sub_2179D17CC(42, 0xE100000000000000, &v20, v18, a3, a4 & 1, a5, a6 & 1, a7, a8);
}

uint64_t OrderBy.reversed.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3 ^ 1;
  return sub_2179AEC5C();
}

uint64_t sub_2179D17CC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, uint64_t a10)
{
  v23 = a6;
  v11 = *a3;
  v13 = *a4;
  v12 = *(a4 + 8);
  v14 = *(a4 + 16);
  if ((~*a3 & 0xF000000000000007) != 0)
  {
    v27 = *a3;
    v15 = sub_2179A9A0C(a1, a2, a3, a4, a5, a6, a7);
    v16 = v17;
    sub_2179B0CEC(v11);
  }

  else
  {
    v15 = 0;
    v16 = 0;
  }

  if (v14 == 255)
  {
    v18 = 0;
    v20 = 0;
  }

  else
  {
    v18 = sub_2179AF97C();
    v20 = v19;
    sub_2179AEC68(v13, v12, v14);
  }

  return sub_2179D19C0(a1, a2, v15, v16, v18, v20, a5, v23 & 1, a7, a8 & 1, a9, a10);
}

uint64_t sub_2179D18E0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9)
{
  v12 = *a2;
  v13 = *a3;
  v14 = *(a3 + 8);
  v15 = *(a3 + 16);
  sub_2179A5088();
  sub_2179A4B34();
  v16 = sub_2179E95F0();
  v18 = v17;
  v24 = v12;
  v22[0] = v13;
  v22[1] = v14;
  v23 = v15;
  sub_2179A22DC(v12);
  sub_2179A80BC(v13, v14, v15);
  return sub_2179D17CC(v16, v18, &v24, v22, a4, a5 & 1, a6, a7 & 1, a8, a9);
}

uint64_t sub_2179D19C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12)
{
  sub_2179A7E4C();
  v17 = v16;
  v18 = *(v16 + 16);
  v19 = *(v16 + 24) >> 1;
  v20 = v18 + 1;
  if (v19 <= v18)
  {
    sub_2179A7E4C();
    v17 = v58;
    v19 = *(v58 + 24) >> 1;
  }

  *(v17 + 16) = v20;
  v21 = v17 + 16 * v18;
  *(v21 + 32) = 0x5443454C4553;
  *(v21 + 40) = 0xE600000000000000;
  v22 = v18 + 2;
  if (v19 < (v18 + 2))
  {
    sub_2179A7E4C();
    v17 = v59;
  }

  *(v17 + 16) = v22;
  v23 = v17 + 16 * v20;
  *(v23 + 32) = a1;
  *(v23 + 40) = a2;
  if ((v18 + 3) > *(v17 + 24) >> 1)
  {
    sub_2179A7E4C();
    v17 = v60;
  }

  *(v17 + 16) = v18 + 3;
  v24 = v17 + 16 * v22;
  *(v24 + 32) = 1297044038;
  *(v24 + 40) = 0xE400000000000000;
  v25 = (*(a12 + 32))(a11, a12);
  v27 = v26;
  v28 = *(v17 + 16);
  v29 = v28 + 1;
  if (v28 >= *(v17 + 24) >> 1)
  {
    sub_2179A7E4C();
    v17 = v61;
  }

  *(v17 + 16) = v29;
  v30 = v17 + 16 * v28;
  *(v30 + 32) = v25;
  *(v30 + 40) = v27;
  if (a4)
  {
    v31 = v28 + 2;
    if ((v28 + 2) > *(v17 + 24) >> 1)
    {
      sub_2179A7E4C();
      v17 = v62;
    }

    *(v17 + 16) = v31;
    v32 = v17 + 16 * v29;
    *(v32 + 32) = 0x4552454857;
    *(v32 + 40) = 0xE500000000000000;
    if ((v28 + 3) > *(v17 + 24) >> 1)
    {
      sub_2179A7E4C();
      v17 = v63;
    }

    *(v17 + 16) = v28 + 3;
    v33 = v17 + 16 * v31;
    *(v33 + 32) = a3;
    *(v33 + 40) = a4;
  }

  if (a6)
  {
    v34 = *(v17 + 16);
    if (v34 >= *(v17 + 24) >> 1)
    {
      sub_2179A7E4C();
      v17 = v64;
    }

    *(v17 + 16) = v34 + 1;
    v35 = v17 + 16 * v34;
    *(v35 + 32) = a5;
    *(v35 + 40) = a6;
  }

  if (a8)
  {
    if (a10)
    {
      return v17;
    }

    v36 = *(v17 + 16);
    if (v36 >= *(v17 + 24) >> 1)
    {
      sub_2179A7E4C();
      v17 = v69;
    }

    *(v17 + 16) = v36 + 1;
    v37 = v17 + 16 * v36;
    *(v37 + 32) = 0x54494D494CLL;
    *(v37 + 40) = 0xE500000000000000;
    v38 = sub_2179E9D40();
    v40 = v39;
    v41 = *(v17 + 16);
    v42 = v41 + 1;
    if (v41 >= *(v17 + 24) >> 1)
    {
      sub_2179A7E4C();
      v17 = v70;
    }

    *(v17 + 16) = v42;
    v43 = v17 + 16 * v41;
    *(v43 + 32) = v38;
    *(v43 + 40) = v40;
    goto LABEL_31;
  }

  v44 = *(v17 + 16);
  if (v44 >= *(v17 + 24) >> 1)
  {
    sub_2179A7E4C();
    v17 = v65;
  }

  *(v17 + 16) = v44 + 1;
  v45 = v17 + 16 * v44;
  *(v45 + 32) = 0x54494D494CLL;
  *(v45 + 40) = 0xE500000000000000;
  v46 = sub_2179E9D40();
  v48 = v47;
  v49 = *(v17 + 16);
  v42 = v49 + 1;
  if (v49 >= *(v17 + 24) >> 1)
  {
    sub_2179A7E4C();
    v17 = v66;
  }

  *(v17 + 16) = v42;
  v50 = v17 + 16 * v49;
  *(v50 + 32) = v46;
  *(v50 + 40) = v48;
  if ((a10 & 1) == 0)
  {
LABEL_31:
    if (v42 >= *(v17 + 24) >> 1)
    {
      sub_2179A7E4C();
      v17 = v67;
    }

    *(v17 + 16) = v42 + 1;
    v51 = v17 + 16 * v42;
    *(v51 + 32) = 0x54455346464FLL;
    *(v51 + 40) = 0xE600000000000000;
    v52 = sub_2179E9D40();
    v54 = v53;
    v55 = *(v17 + 16);
    if (v55 >= *(v17 + 24) >> 1)
    {
      sub_2179A7E4C();
      v17 = v68;
    }

    *(v17 + 16) = v55 + 1;
    v56 = v17 + 16 * v55;
    *(v56 + 32) = v52;
    *(v56 + 40) = v54;
  }

  return v17;
}

uint64_t sub_2179D1E78(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9)
{
  v11 = *a2;
  v12 = *a3;
  v13 = *(a3 + 8);
  v24 = 0x202C6469776F72;
  v25 = 0xE700000000000000;
  if (a1)
  {
    v23 = a1;
    sub_2179A5088();
    sub_2179A4B34();

    v14 = sub_2179E95F0();
    v16 = v15;
  }

  else
  {
    v16 = 0xE100000000000000;
    v14 = 42;
  }

  MEMORY[0x21CEA9600](v14, v16);

  v17 = v24;
  v18 = v25;
  v23 = v11;
  v24 = v12;
  LOWORD(v25) = v13;
  sub_2179D20F0(v11);
  sub_2179D2108(v12, v13);
  return sub_2179D1FB0(v17, v18, &v23, &v24, a4, a5 & 1, a6, a7 & 1, a8, a9);
}

uint64_t sub_2179D1FB0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, char a8, uint64_t a9, uint64_t a10)
{
  v12 = *a3;
  v13 = *a4;
  v14 = *(a4 + 8);
  if ((~*a3 & 0xF000000000000007) != 0)
  {
    v34 = *a3;
    v17 = type metadata accessor for SearchExpression();
    v15 = sub_2179C10B8(v17, v18, v19, v20, v21, v22, v23);
    v16 = v24;
    sub_2179D2150(v12);
  }

  else
  {
    v15 = 0;
    v16 = 0;
  }

  if (v14 == 0xFF)
  {
    v25 = 0;
    v26 = 0;
  }

  else
  {
    v27 = type metadata accessor for SearchOrder();
    v25 = sub_2179E7BE8(v27);
    v26 = v28;
    sub_2179D212C(v13, v14);
  }

  return sub_2179D19C0(a1, a2, v15, v16, v25, v26, a5, a6 & 1, a7, a8 & 1, a9, *(a10 + 8));
}

uint64_t sub_2179D20F0(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
  }

  return result;
}

uint64_t sub_2179D2108(uint64_t result, char a2)
{
  if (a2 != -1)
  {
    return sub_2179D2120(result, a2 & 1);
  }

  return result;
}

uint64_t sub_2179D2120(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_2179D212C(uint64_t result, char a2)
{
  if (a2 != -1)
  {
    return sub_2179D2144(result, a2 & 1);
  }

  return result;
}

uint64_t sub_2179D2144(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_2179D2150(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
  }

  return result;
}

uint64_t RowID.wrappedValue.getter()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 28));
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  os_unfair_lock_unlock((v1 + 28));
  return v2;
}

uint64_t RowID.__allocating_init()()
{
  OUTLINED_FUNCTION_1_4();
  v0 = swift_allocObject();
  RowID.init()();
  return v0;
}

uint64_t RowID.init()()
{
  sub_2179D2228();
  v1 = swift_allocObject();
  *(v1 + 28) = 0;
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  *(v0 + 16) = v1;
  return v0;
}

void sub_2179D2228()
{
  if (!qword_280B1C968)
  {
    sub_2179D2290();
    type metadata accessor for os_unfair_lock_s();
    v0 = sub_2179E9B40();
    if (!v1)
    {
      atomic_store(v0, &qword_280B1C968);
    }
  }
}

void sub_2179D2290()
{
  if (!qword_280B1C990)
  {
    v0 = sub_2179E9A60();
    if (!v1)
    {
      atomic_store(v0, &qword_280B1C990);
    }
  }
}

uint64_t RowID.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t RowID.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_1_4();

  return swift_deallocClassInstance();
}

uint64_t sub_2179D2330(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2179E9D70();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_2179D23A4()
{
  sub_2179E9E20();
  MEMORY[0x21CEA9D40](0);
  return sub_2179E9E40();
}

uint64_t sub_2179D23F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2179D2330(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2179D2430(uint64_t a1)
{
  v2 = sub_2179D2780();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2179D246C(uint64_t a1)
{
  v2 = sub_2179D2780();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RowID.__allocating_init(from:)(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_1_1();
  sub_2179D2A3C(v2, v3, v4);
  v28 = v5;
  v26 = *(v5 - 8);
  v6 = *(v26 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v24 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v23 - v8;
  OUTLINED_FUNCTION_1_4();
  v10 = swift_allocObject();
  sub_2179D2228();
  v11 = swift_allocObject();
  *(v11 + 28) = 0;
  v25 = (v11 + 28);
  *(v11 + 16) = 0;
  *(v11 + 24) = 1;
  *(v10 + 16) = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2179D2780();
  v27 = v9;
  v13 = v29;
  sub_2179E9E90();
  if (v13)
  {

    v22 = a1;
  }

  else
  {
    v29 = a1;
    v14 = v26;
    v15 = v24;
    v16 = v28;
    (*(v26 + 16))(v24, v27, v28);
    v17 = (*(v14 + 80) + 16) & ~*(v14 + 80);
    v18 = swift_allocObject();
    v19 = (*(v14 + 32))(v18 + v17, v15, v16);
    MEMORY[0x28223BE20](v19);
    *(&v23 - 2) = sub_2179D2890;
    *(&v23 - 1) = v18;
    v20 = v25;
    os_unfair_lock_lock(v25);
    sub_2179D28FC(v11 + 16);
    os_unfair_lock_unlock(v20);

    (*(v14 + 8))(v27, v28);

    v22 = v29;
  }

  __swift_destroy_boxed_opaque_existential_1(v22);
  return v10;
}

unint64_t sub_2179D2780()
{
  result = qword_27CB981E8;
  if (!qword_27CB981E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB981E8);
  }

  return result;
}

uint64_t sub_2179D27D4()
{
  sub_2179D2290();
  sub_2179D2A3C(0, &qword_27CB981E0, MEMORY[0x277D844C8]);
  sub_2179D325C(&qword_27CB98218);
  result = sub_2179E9CC0();
  if (!v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_2179D2890()
{
  v0 = OUTLINED_FUNCTION_1_1();
  sub_2179D2A3C(v0, v1, v2);
  v4 = *(*(v3 - 8) + 80);
  return sub_2179D27D4();
}

uint64_t sub_2179D28FC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4();
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v7 & 1;
  }

  return result;
}

uint64_t RowID.encode(to:)(void *a1)
{
  v2 = v1;
  sub_2179D2A3C(0, &qword_27CB981F0, MEMORY[0x277D84538]);
  swift_allocBox();
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2179D2780();
  sub_2179E9EB0();
  v5 = *(v2 + 16);
  os_unfair_lock_lock(v5 + 7);

  sub_2179D2BB0(&v5[4]);
  os_unfair_lock_unlock(v5 + 7);
}

void sub_2179D2A3C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2179D2780();
    v7 = a3(a1, &type metadata for RowID.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2179D2AA0()
{
  sub_2179D2A3C(0, &qword_27CB981F0, MEMORY[0x277D84538]);
  swift_projectBox();
  swift_beginAccess();
  sub_2179D2290();
  sub_2179D325C(&qword_27CB98210);
  sub_2179E9D20();
  return swift_endAccess();
}

uint64_t sub_2179D2BB0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, *(a1 + 8));
}

uint64_t sub_2179D2BE4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = RowID.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t RowID.description.getter()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 28));
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  os_unfair_lock_unlock((v1 + 28));
  sub_2179D2290();
  return sub_2179E9660();
}

BOOL static RowID.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  os_unfair_lock_lock((v3 + 28));
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  os_unfair_lock_unlock((v3 + 28));
  if (v5)
  {
    return 1;
  }

  v6 = *(a2 + 16);
  os_unfair_lock_lock((v6 + 28));
  v7 = *(v6 + 16);
  v8 = *(v6 + 24);
  os_unfair_lock_unlock((v6 + 28));
  return (v8 & 1) != 0 || v4 == v7;
}

void sub_2179D2D58(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock((v3 + 28));
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  os_unfair_lock_unlock((v3 + 28));
  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = v4;
  }

  if (v5)
  {
    v7 = 5;
  }

  else
  {
    v7 = 1;
  }

  *a1 = v6;
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
}

void sub_2179D2DB4(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = -1;
}

void sub_2179D2DC4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2 == 255)
  {
    v7 = *(v1 + 16);
  }

  else
  {
    v3 = *a1;
    v4 = *(a1 + 8);
    if (v2 != 5 || *a1 != 0)
    {
      v6 = *(v1 + 16);
      MEMORY[0x28223BE20](a1);
      sub_2179AC430(v3, v4, v2);
      os_unfair_lock_lock(v6 + 7);
      sub_2179D3238(&v6[4]);
      os_unfair_lock_unlock(v6 + 7);
      sub_2179AA22C(v3, v4, v2);
      return;
    }

    v7 = *(v1 + 16);
    sub_2179AC430(0, 0, 5);
  }

  os_unfair_lock_lock((v7 + 28));
  *(v7 + 16) = 0;
  *(v7 + 24) = 1;

  os_unfair_lock_unlock((v7 + 28));
}

uint64_t sub_2179D2EF4(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 1)
  {
    *result = a2;
    *(result + 8) = 0;
  }

  else
  {
    result = sub_2179E9C40();
    __break(1u);
  }

  return result;
}

uint64_t sub_2179D2FC8()
{
  v1 = *v0;
  RowID.saveChain(for:)();
  return 0;
}

uint64_t RowID.saveChain(for:)()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 7);
  os_unfair_lock_unlock(v1 + 7);
  return 0;
}

_BYTE *storeEnumTagSinglePayload for RowID.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_2179D3134()
{
  result = qword_27CB981F8;
  if (!qword_27CB981F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB981F8);
  }

  return result;
}

unint64_t sub_2179D318C()
{
  result = qword_27CB98200;
  if (!qword_27CB98200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB98200);
  }

  return result;
}

unint64_t sub_2179D31E4()
{
  result = qword_27CB98208;
  if (!qword_27CB98208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB98208);
  }

  return result;
}

uint64_t sub_2179D325C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_2179D2290();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t FastEntity.__allocating_init<A>(_:)()
{
  OUTLINED_FUNCTION_1_4();
  v0 = swift_allocObject();
  FastEntity.init<A>(_:)();
  return v0;
}

uint64_t FastEntity.init<A>(_:)()
{
  sub_2179A2C2C();
  v1 = swift_allocObject();
  v2 = OUTLINED_FUNCTION_3_12(v1, xmmword_2179EA830);
  v1[2].n128_u64[0] = sub_2179AE120(v2);
  v1[2].n128_u64[1] = v3;

  *(v0 + 16) = v1;
  return v0;
}

uint64_t FastEntity.__allocating_init<A, B>(_:_:)()
{
  OUTLINED_FUNCTION_1_4();
  v0 = swift_allocObject();
  FastEntity.init<A, B>(_:_:)();
  return v0;
}

uint64_t FastEntity.init<A, B>(_:_:)()
{
  sub_2179A2C2C();
  v1 = swift_allocObject();
  v2 = OUTLINED_FUNCTION_3_12(v1, xmmword_2179EA820);
  v1[2].n128_u64[0] = sub_2179AE120(v2);
  v1[2].n128_u64[1] = v3;
  v1[5].n128_u64[1] = sub_2179AE120(&v1[6].n128_u64[1]);
  v1[6].n128_u64[0] = v4;

  *(v0 + 16) = v1;
  return v0;
}

uint64_t FastEntity.__allocating_init<A, B, C>(_:_:_:)()
{
  OUTLINED_FUNCTION_1_4();
  v0 = swift_allocObject();
  FastEntity.init<A, B, C>(_:_:_:)();
  return v0;
}

uint64_t FastEntity.__allocating_init<A, B, C, D>(_:_:_:_:)()
{
  OUTLINED_FUNCTION_1_4();
  v0 = swift_allocObject();
  FastEntity.init<A, B, C, D>(_:_:_:_:)();
  return v0;
}

uint64_t FastEntity.__allocating_init<A, B, C, D, E>(_:_:_:_:_:)()
{
  OUTLINED_FUNCTION_7_8();
  OUTLINED_FUNCTION_1_4();
  v0 = swift_allocObject();
  FastEntity.init<A, B, C, D, E>(_:_:_:_:_:)();
  return v0;
}

uint64_t FastEntity.__allocating_init<A, B, C, D, E, F>(_:_:_:_:_:_:)()
{
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_1_4();
  v0 = swift_allocObject();
  FastEntity.init<A, B, C, D, E, F>(_:_:_:_:_:_:)();
  return v0;
}

uint64_t FastEntity.__allocating_init<A, B, C, D, E, F, G>(_:_:_:_:_:_:_:)()
{
  OUTLINED_FUNCTION_4_13();
  OUTLINED_FUNCTION_1_4();
  v0 = swift_allocObject();
  FastEntity.init<A, B, C, D, E, F, G>(_:_:_:_:_:_:_:)();
  return v0;
}

uint64_t FastEntity.init<A, B, C, D, E, F, G>(_:_:_:_:_:_:_:)()
{
  sub_2179A2C2C();
  v1 = swift_allocObject();
  v2 = OUTLINED_FUNCTION_3_12(v1, xmmword_2179ECE70);
  v3 = sub_2179AE120(v2);
  v5 = OUTLINED_FUNCTION_24_0(v3, v4);
  v6 = sub_2179AE120(v5);
  v8 = OUTLINED_FUNCTION_23_2(v6, v7);
  v9 = sub_2179AE120(v8);
  v11 = OUTLINED_FUNCTION_22_2(v9, v10);
  v12 = sub_2179AE120(v11);
  v14 = OUTLINED_FUNCTION_21_2(v12, v13);
  v15 = sub_2179AE120(v14);
  v17 = OUTLINED_FUNCTION_20_1(v15, v16);
  v18 = sub_2179AE120(v17);
  v20 = OUTLINED_FUNCTION_19_3(v18, v19);
  v1[23].n128_u64[0] = sub_2179AE120(v20);
  v1[23].n128_u64[1] = v21;

  *(v0 + 16) = v1;
  return v0;
}

uint64_t FastEntity.__allocating_init<A, B, C, D, E, F, G, H>(_:_:_:_:_:_:_:_:)()
{
  OUTLINED_FUNCTION_0_15();
  OUTLINED_FUNCTION_1_4();
  v0 = swift_allocObject();
  OUTLINED_FUNCTION_1_16();
  FastEntity.init<A, B, C, D, E, F, G, H>(_:_:_:_:_:_:_:_:)();
  return v0;
}

void FastEntity.init<A, B, C, D, E, F, G, H>(_:_:_:_:_:_:_:_:)()
{
  OUTLINED_FUNCTION_28_0();
  sub_2179A2C2C();
  v1 = swift_allocObject();
  v2 = OUTLINED_FUNCTION_3_12(v1, xmmword_2179ECE80);
  v3 = sub_2179AE120(v2);
  v5 = OUTLINED_FUNCTION_24_0(v3, v4);
  v6 = sub_2179AE120(v5);
  v8 = OUTLINED_FUNCTION_23_2(v6, v7);
  v9 = sub_2179AE120(v8);
  v11 = OUTLINED_FUNCTION_22_2(v9, v10);
  v12 = sub_2179AE120(v11);
  v14 = OUTLINED_FUNCTION_21_2(v12, v13);
  v15 = sub_2179AE120(v14);
  v17 = OUTLINED_FUNCTION_20_1(v15, v16);
  v18 = sub_2179AE120(v17);
  v20 = OUTLINED_FUNCTION_19_3(v18, v19);
  v1[23].n128_u64[0] = sub_2179AE120(v20);
  v1[23].n128_u64[1] = v21;
  v1[26].n128_u64[1] = sub_2179AE120(&v1[27].n128_u64[1]);
  v1[27].n128_u64[0] = v22;

  *(v0 + 16) = v1;
  OUTLINED_FUNCTION_26_0();
}

void FastEntity.__allocating_init<A, B, C, D, E, F, G, H, I>(_:_:_:_:_:_:_:_:_:)()
{
  OUTLINED_FUNCTION_28_0();
  OUTLINED_FUNCTION_0_15();
  OUTLINED_FUNCTION_1_4();
  swift_allocObject();
  OUTLINED_FUNCTION_1_16();
  FastEntity.init<A, B, C, D, E, F, G, H, I>(_:_:_:_:_:_:_:_:_:)();
  OUTLINED_FUNCTION_26_0();
}

void FastEntity.init<A, B, C, D, E, F, G, H, I>(_:_:_:_:_:_:_:_:_:)()
{
  OUTLINED_FUNCTION_28_0();
  sub_2179A2C2C();
  v1 = swift_allocObject();
  v2 = OUTLINED_FUNCTION_3_12(v1, xmmword_2179ECE90);
  v3 = sub_2179AE120(v2);
  v5 = OUTLINED_FUNCTION_24_0(v3, v4);
  v6 = sub_2179AE120(v5);
  v8 = OUTLINED_FUNCTION_23_2(v6, v7);
  v9 = sub_2179AE120(v8);
  v11 = OUTLINED_FUNCTION_22_2(v9, v10);
  v12 = sub_2179AE120(v11);
  v14 = OUTLINED_FUNCTION_21_2(v12, v13);
  v15 = sub_2179AE120(v14);
  v17 = OUTLINED_FUNCTION_20_1(v15, v16);
  v18 = sub_2179AE120(v17);
  v20 = OUTLINED_FUNCTION_19_3(v18, v19);
  v1[23].n128_u64[0] = sub_2179AE120(v20);
  v1[23].n128_u64[1] = v21;
  v1[26].n128_u64[1] = sub_2179AE120(&v1[27].n128_u64[1]);
  v1[27].n128_u64[0] = v22;
  v1[30].n128_u64[0] = sub_2179AE120(v1[31].n128_u64);
  v1[30].n128_u64[1] = v23;

  *(v0 + 16) = v1;
  OUTLINED_FUNCTION_26_0();
}

uint64_t FastEntity.__allocating_init<A, B, C, D, E, F, G, H, I, J>(_:_:_:_:_:_:_:_:_:_:)()
{
  OUTLINED_FUNCTION_0_15();
  OUTLINED_FUNCTION_1_4();
  v0 = swift_allocObject();
  OUTLINED_FUNCTION_1_16();
  FastEntity.init<A, B, C, D, E, F, G, H, I, J>(_:_:_:_:_:_:_:_:_:_:)();
  return v0;
}

uint64_t FastEntity.init<A, B, C, D, E, F, G, H, I, J>(_:_:_:_:_:_:_:_:_:_:)()
{
  sub_2179A2C2C();
  v0 = swift_allocObject();
  v1 = OUTLINED_FUNCTION_3_12(v0, xmmword_2179ECEA0);
  v2 = sub_2179AE120(v1);
  v4 = OUTLINED_FUNCTION_14_4(v2, v3);
  v5 = sub_2179AE120(v4);
  v7 = OUTLINED_FUNCTION_13_5(v5, v6);
  v8 = sub_2179AE120(v7);
  v10 = OUTLINED_FUNCTION_12_7(v8, v9);
  v11 = sub_2179AE120(v10);
  v13 = OUTLINED_FUNCTION_11_6(v11, v12);
  v14 = sub_2179AE120(v13);
  v16 = OUTLINED_FUNCTION_10_8(v14, v15);
  v17 = sub_2179AE120(v16);
  v19 = OUTLINED_FUNCTION_8_10(v17, v18);
  v20 = sub_2179AE120(v19);
  v22 = OUTLINED_FUNCTION_17_3(v20, v21);
  v23 = sub_2179AE120(v22);
  v25 = OUTLINED_FUNCTION_16_2(v23, v24);
  v26 = sub_2179AE120(v25);
  v28 = OUTLINED_FUNCTION_15_4(v26, v27);
  v0[33].n128_u64[1] = sub_2179AE120(v28);
  v0[34].n128_u64[0] = v29;

  result = v31;
  *(v31 + 16) = v0;
  return result;
}

void FastEntity.__allocating_init<A, B, C, D, E, F, G, H, I, J, K>(_:_:_:_:_:_:_:_:_:_:_:)()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_0_15();
  OUTLINED_FUNCTION_1_4();
  swift_allocObject();
  OUTLINED_FUNCTION_1_16();
  FastEntity.init<A, B, C, D, E, F, G, H, I, J, K>(_:_:_:_:_:_:_:_:_:_:_:)();
  OUTLINED_FUNCTION_30();
}

void FastEntity.init<A, B, C, D, E, F, G, H, I, J, K>(_:_:_:_:_:_:_:_:_:_:_:)()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_4_13();
  sub_2179A2C2C();
  v1 = swift_allocObject();
  v2 = OUTLINED_FUNCTION_3_12(v1, xmmword_2179ECEB0);
  v3 = sub_2179AE120(v2);
  v5 = OUTLINED_FUNCTION_14_4(v3, v4);
  v6 = sub_2179AE120(v5);
  v8 = OUTLINED_FUNCTION_13_5(v6, v7);
  v9 = sub_2179AE120(v8);
  v11 = OUTLINED_FUNCTION_12_7(v9, v10);
  v12 = sub_2179AE120(v11);
  v14 = OUTLINED_FUNCTION_11_6(v12, v13);
  v15 = sub_2179AE120(v14);
  v17 = OUTLINED_FUNCTION_10_8(v15, v16);
  v18 = sub_2179AE120(v17);
  v20 = OUTLINED_FUNCTION_8_10(v18, v19);
  v21 = sub_2179AE120(v20);
  v23 = OUTLINED_FUNCTION_17_3(v21, v22);
  v24 = sub_2179AE120(v23);
  v26 = OUTLINED_FUNCTION_16_2(v24, v25);
  v27 = sub_2179AE120(v26);
  v29 = OUTLINED_FUNCTION_15_4(v27, v28);
  v30 = sub_2179AE120(v29);
  v32 = OUTLINED_FUNCTION_5_8(v30, v31);
  v1[37].n128_u64[0] = sub_2179AE120(v32);
  v1[37].n128_u64[1] = v33;

  *(v0 + 16) = v1;
  OUTLINED_FUNCTION_30();
}

uint64_t FastEntity.__allocating_init<A, B, C, D, E, F, G, H, I, J, K, L>(_:_:_:_:_:_:_:_:_:_:_:_:)()
{
  OUTLINED_FUNCTION_0_15();
  OUTLINED_FUNCTION_1_4();
  v0 = swift_allocObject();
  OUTLINED_FUNCTION_1_16();
  FastEntity.init<A, B, C, D, E, F, G, H, I, J, K, L>(_:_:_:_:_:_:_:_:_:_:_:_:)();
  return v0;
}

void FastEntity.__allocating_init<A, B, C, D, E, F, G, H, I, J, K, L, M>(_:_:_:_:_:_:_:_:_:_:_:_:_:)()
{
  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_0_15();
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_1_4();
  swift_allocObject();
  OUTLINED_FUNCTION_1_16();
  FastEntity.init<A, B, C, D, E, F, G, H, I, J, K, L, M>(_:_:_:_:_:_:_:_:_:_:_:_:_:)();
  OUTLINED_FUNCTION_27_0();
}

uint64_t FastEntity.init<A, B, C, D, E, F, G, H, I, J, K, L, M>(_:_:_:_:_:_:_:_:_:_:_:_:_:)()
{
  OUTLINED_FUNCTION_9_7();
  sub_2179A2C2C();
  v0 = swift_allocObject();
  v1 = OUTLINED_FUNCTION_3_12(v0, xmmword_2179ECED0);
  v2 = sub_2179AE120(v1);
  v4 = OUTLINED_FUNCTION_14_4(v2, v3);
  v5 = sub_2179AE120(v4);
  v7 = OUTLINED_FUNCTION_13_5(v5, v6);
  v8 = sub_2179AE120(v7);
  v10 = OUTLINED_FUNCTION_12_7(v8, v9);
  v11 = sub_2179AE120(v10);
  v13 = OUTLINED_FUNCTION_11_6(v11, v12);
  v14 = sub_2179AE120(v13);
  v16 = OUTLINED_FUNCTION_10_8(v14, v15);
  v17 = sub_2179AE120(v16);
  v19 = OUTLINED_FUNCTION_8_10(v17, v18);
  v20 = sub_2179AE120(v19);
  v22 = OUTLINED_FUNCTION_17_3(v20, v21);
  v23 = sub_2179AE120(v22);
  v25 = OUTLINED_FUNCTION_16_2(v23, v24);
  v26 = sub_2179AE120(v25);
  v28 = OUTLINED_FUNCTION_15_4(v26, v27);
  v29 = sub_2179AE120(v28);
  v31 = OUTLINED_FUNCTION_5_8(v29, v30);
  v32 = sub_2179AE120(v31);
  v34 = OUTLINED_FUNCTION_6_8(v32, v33);
  v35 = sub_2179AE120(v34);
  v0[44].n128_u64[0] = OUTLINED_FUNCTION_32_0(v35, v36);
  v0[44].n128_u64[1] = v37;

  result = v39;
  *(v39 + 16) = v0;
  return result;
}

uint64_t FastEntity.__allocating_init<A, B, C, D, E, F, G, H, I, J, K, L, M, N>(_:_:_:_:_:_:_:_:_:_:_:_:_:_:)()
{
  OUTLINED_FUNCTION_0_15();
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_1_4();
  v0 = swift_allocObject();
  OUTLINED_FUNCTION_1_16();
  FastEntity.init<A, B, C, D, E, F, G, H, I, J, K, L, M, N>(_:_:_:_:_:_:_:_:_:_:_:_:_:_:)();
  return v0;
}

void FastEntity.init<A, B, C, D, E, F, G, H, I, J, K, L, M, N>(_:_:_:_:_:_:_:_:_:_:_:_:_:_:)()
{
  OUTLINED_FUNCTION_29_0();
  sub_2179A2C2C();
  v1 = swift_allocObject();
  v2 = OUTLINED_FUNCTION_3_12(v1, xmmword_2179ECEE0);
  v3 = sub_2179AE120(v2);
  v5 = OUTLINED_FUNCTION_24_0(v3, v4);
  v6 = sub_2179AE120(v5);
  v8 = OUTLINED_FUNCTION_23_2(v6, v7);
  v9 = sub_2179AE120(v8);
  v11 = OUTLINED_FUNCTION_22_2(v9, v10);
  v12 = sub_2179AE120(v11);
  v14 = OUTLINED_FUNCTION_21_2(v12, v13);
  v15 = sub_2179AE120(v14);
  v17 = OUTLINED_FUNCTION_20_1(v15, v16);
  v18 = sub_2179AE120(v17);
  v20 = OUTLINED_FUNCTION_19_3(v18, v19);
  v1[23].n128_u64[0] = sub_2179AE120(v20);
  v1[23].n128_u64[1] = v21;
  v1[26].n128_u64[1] = sub_2179AE120(&v1[27].n128_u64[1]);
  v1[27].n128_u64[0] = v22;
  v1[30].n128_u64[0] = sub_2179AE120(v1[31].n128_u64);
  v1[30].n128_u64[1] = v23;
  v1[33].n128_u64[1] = sub_2179AE120(&v1[34].n128_u64[1]);
  v1[34].n128_u64[0] = v24;
  v1[37].n128_u64[0] = sub_2179AE120(v1[38].n128_u64);
  v1[37].n128_u64[1] = v25;
  v1[40].n128_u64[1] = sub_2179AE120(&v1[41].n128_u64[1]);
  v1[41].n128_u64[0] = v26;
  v1[44].n128_u64[0] = sub_2179AE120(v1[45].n128_u64);
  v1[44].n128_u64[1] = v27;
  v1[47].n128_u64[1] = sub_2179AE120(&v1[48].n128_u64[1]);
  v1[48].n128_u64[0] = v28;

  *(v0 + 16) = v1;
  OUTLINED_FUNCTION_27_0();
}

uint64_t FastEntity.__allocating_init<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O>(_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:)()
{
  OUTLINED_FUNCTION_0_15();
  OUTLINED_FUNCTION_1_4();
  v0 = swift_allocObject();
  OUTLINED_FUNCTION_1_16();
  FastEntity.init<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O>(_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:)();
  return v0;
}

void FastEntity.init<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O>(_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:)()
{
  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_7_8();
  OUTLINED_FUNCTION_9_7();
  sub_2179A2C2C();
  v1 = swift_allocObject();
  v2 = OUTLINED_FUNCTION_3_12(v1, xmmword_2179ECEF0);
  v3 = sub_2179AE120(v2);
  v5 = OUTLINED_FUNCTION_14_4(v3, v4);
  v6 = sub_2179AE120(v5);
  v8 = OUTLINED_FUNCTION_13_5(v6, v7);
  v9 = sub_2179AE120(v8);
  v11 = OUTLINED_FUNCTION_12_7(v9, v10);
  v12 = sub_2179AE120(v11);
  v14 = OUTLINED_FUNCTION_11_6(v12, v13);
  v15 = sub_2179AE120(v14);
  v17 = OUTLINED_FUNCTION_10_8(v15, v16);
  v18 = sub_2179AE120(v17);
  v20 = OUTLINED_FUNCTION_8_10(v18, v19);
  v21 = sub_2179AE120(v20);
  v23 = OUTLINED_FUNCTION_17_3(v21, v22);
  v24 = sub_2179AE120(v23);
  v26 = OUTLINED_FUNCTION_16_2(v24, v25);
  v27 = sub_2179AE120(v26);
  v29 = OUTLINED_FUNCTION_15_4(v27, v28);
  v30 = sub_2179AE120(v29);
  v32 = OUTLINED_FUNCTION_5_8(v30, v31);
  v33 = sub_2179AE120(v32);
  v35 = OUTLINED_FUNCTION_6_8(v33, v34);
  v36 = sub_2179AE120(v35);
  v1[44].n128_u64[0] = OUTLINED_FUNCTION_32_0(v36, v37);
  v1[44].n128_u64[1] = v38;
  v1[47].n128_u64[1] = sub_2179AE120(&v1[48].n128_u64[1]);
  v1[48].n128_u64[0] = v39;
  v1[51].n128_u64[0] = sub_2179AE120(v1[52].n128_u64);
  v1[51].n128_u64[1] = v40;

  *(v0 + 16) = v1;
  OUTLINED_FUNCTION_27_0();
}

uint64_t FastEntity.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t OUTLINED_FUNCTION_32_0(uint64_t a1, uint64_t a2)
{
  v2[81] = a1;
  v2[82] = a2;

  return sub_2179AE120(v2 + 90);
}

uint64_t sub_2179D4894(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 32);
}

uint64_t sub_2179D48D8()
{
  type metadata accessor for FastEntity();
  swift_allocObject();

  return sub_2179A2C84();
}

uint64_t sub_2179D493C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_2179E9D70() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_2179E9D70();

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

uint64_t sub_2179D4A3C(char a1)
{
  sub_2179E9E20();
  MEMORY[0x21CEA9D40](a1 & 1);
  return sub_2179E9E40();
}

uint64_t sub_2179D4A84(char a1)
{
  if (a1)
  {
    return 0x6E6F6973726576;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_2179D4AB0(void *a1, uint64_t a2, uint64_t a3)
{
  v21 = a3;
  OUTLINED_FUNCTION_4_14();
  sub_2179A06C8(0, v6, v7, &type metadata for Versions.Entity.CodingKeys, MEMORY[0x277D84538]);
  v9 = v8;
  v10 = OUTLINED_FUNCTION_0_0(v8);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  v16 = &v21 - v15;
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2179D5164();
  sub_2179E9EB0();
  v23 = a2;
  v22 = 0;
  OUTLINED_FUNCTION_0_16();
  sub_2179A105C(0, v18, v19);
  sub_2179D51B8(&qword_27CB98240);
  OUTLINED_FUNCTION_6_9();
  if (!v3)
  {
    v23 = v21;
    v22 = 1;
    OUTLINED_FUNCTION_6_9();
  }

  return (*(v12 + 8))(v16, v9);
}

uint64_t sub_2179D4C50(uint64_t *a1)
{
  OUTLINED_FUNCTION_4_14();
  sub_2179A06C8(0, v2, v3, v4, MEMORY[0x277D844C8]);
  v6 = OUTLINED_FUNCTION_0_0(v5);
  v31 = v7;
  v32 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  v11 = &v30 - v10;
  v12 = OUTLINED_FUNCTION_2_13();
  sub_2179A105C(v12, v13, v14);
  swift_initStackObject();
  OUTLINED_FUNCTION_1_17();
  sub_2179A7DE0();
  v16 = v15;
  OUTLINED_FUNCTION_0_16();
  sub_2179A105C(0, v17, v18);
  inited = swift_initStackObject();
  v20 = OUTLINED_FUNCTION_7_9(inited);
  *(v20 + 24) = v21;
  *(v20 + 32) = v16;
  swift_initStackObject();
  OUTLINED_FUNCTION_1_17();
  sub_2179A7DE0();
  v23 = v22;
  v24 = swift_initStackObject();
  v25 = OUTLINED_FUNCTION_3_13(v24);
  *(v25 + 24) = v26;
  *(v25 + 32) = v23;
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2179D5164();
  v28 = v33;
  sub_2179E9E90();
  if (v28)
  {
  }

  else
  {
    v34 = 0;
    sub_2179D51B8(&qword_27CB98230);
    OUTLINED_FUNCTION_5_9();

    inited = v35;
    v34 = 1;
    OUTLINED_FUNCTION_5_9();
    (*(v31 + 8))(v11, v32);
    swift_setDeallocating();
    sub_2179D5088();
    OUTLINED_FUNCTION_8_3();
    swift_deallocClassInstance();
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return inited;
}

uint64_t sub_2179D4F1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2179D493C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2179D4F44@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2179D49FC();
  *a1 = result;
  return result;
}

uint64_t sub_2179D4F6C(uint64_t a1)
{
  v2 = sub_2179D5164();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2179D4FA8(uint64_t a1)
{
  v2 = sub_2179D5164();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2179D4FEC()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_2179D48D8();
}

uint64_t sub_2179D5018@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2179A0F8C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2179D5040@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2179D4C50(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_2179D5088()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return v0;
}

uint64_t sub_2179D50B0(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_2179D50F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2179D513C(uint64_t a1)
{
  result = sub_2179A0E88();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2179D5164()
{
  result = qword_27CB98228;
  if (!qword_27CB98228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB98228);
  }

  return result;
}

uint64_t sub_2179D51B8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    OUTLINED_FUNCTION_0_16();
    sub_2179A105C(255, v3, v4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Versions.Entity.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2179D52E8()
{
  result = qword_27CB98248;
  if (!qword_27CB98248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB98248);
  }

  return result;
}

unint64_t sub_2179D5340()
{
  result = qword_27CB98250;
  if (!qword_27CB98250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB98250);
  }

  return result;
}

unint64_t sub_2179D5398()
{
  result = qword_27CB98258[0];
  if (!qword_27CB98258[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CB98258);
  }

  return result;
}

uint64_t MixedKeyValueStore.promises.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 80);
  v5 = *(v3 + 88);
  type metadata accessor for MixedKeyValueStore.Promises();
  OUTLINED_FUNCTION_9();
  v6 = sub_2179E9A60();
  OUTLINED_FUNCTION_1(v6);
  return (*(v7 + 16))(a1, v1 + 6);
}

uint64_t MixedKeyValueStore.__allocating_init(database:)(uint64_t a1)
{
  v2 = swift_allocObject();
  MixedKeyValueStore.init(database:)(a1);
  return v2;
}

uint64_t *MixedKeyValueStore.init(database:)(uint64_t a1)
{
  v3 = *v1;
  v1[6] = 0;
  v4 = v1 + 6;
  v1[4] = sub_2179AEC64;
  v1[5] = 0;
  *(v1 + 56) = 1;
  v1[2] = a1;
  OUTLINED_FUNCTION_0_7();
  v6 = *(v5 + 80);
  OUTLINED_FUNCTION_0_7();
  v8 = *(v7 + 88);
  type metadata accessor for MKVSEntity();
  swift_getWitnessTable();
  v9 = Database.table<A>(_:)();
  if (v2)
  {
    v10 = v1[2];

    v11 = v1[5];

    type metadata accessor for MixedKeyValueStore.Promises();
    OUTLINED_FUNCTION_9();
    v12 = sub_2179E9A60();
    OUTLINED_FUNCTION_1(v12);
    (*(v13 + 8))(v4);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v1[3] = v9;

    sub_2179AA534();
    v20[8] = 0;
    swift_beginAccess();
    type metadata accessor for MixedKeyValueStore.Promises();
    OUTLINED_FUNCTION_9();
    v14 = sub_2179E9A60();
    OUTLINED_FUNCTION_1(v14);
    (*(v15 + 40))(v4, v20);
    v16 = swift_endAccess();
    MEMORY[0x28223BE20](v16);
    sub_2179E93D0();
    v17 = swift_allocObject();
    *(v17 + 16) = v6;
    *(v17 + 24) = v8;
    v18 = sub_2179E9380();
    sub_2179E9390();
  }

  return v1;
}

uint64_t sub_2179D57D4(uint64_t a1, uint64_t a2)
{
  v5 = 0;

  v3 = Database.asyncWrite(_:block:)(&v5, sub_2179DA530, a2);

  return v3;
}

uint64_t sub_2179D5860(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[3];
  sub_2179A6BC4();
  v3 = *(v1 + 80);
  v4 = *(v1 + 88);
  type metadata accessor for MKVSEntity();
  swift_getWitnessTable();
  sub_2179A750C(1);
}

uint64_t sub_2179D5904(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_280B1DB60 != -1)
  {
    swift_once();
  }

  sub_2179E9920();
  sub_21799ABE4();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_2179EA820;
  v6 = (*(a3 + 8))(a2, a3);
  v8 = v7;
  v9 = MEMORY[0x277D837D0];
  *(v5 + 56) = MEMORY[0x277D837D0];
  v10 = sub_21799C634();
  *(v5 + 64) = v10;
  *(v5 + 32) = v6;
  *(v5 + 40) = v8;
  sub_21799AC4C(0, &qword_280B1DBF8);
  sub_2179E9C10();
  *(v5 + 96) = v9;
  *(v5 + 104) = v10;
  *(v5 + 72) = 0;
  *(v5 + 80) = 0xE000000000000000;
  sub_2179E93F0();
}

uint64_t MixedKeyValueStore.allKeys()()
{
  v5 = MEMORY[0x277D84F90];
  v2 = *(v0 + 16);
  v3 = OUTLINED_FUNCTION_14();
  sub_2179A21AC(v3);
  if (v1)
  {
  }

  return v5;
}

uint64_t sub_2179D5AEC(uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[3];
  sub_2179AB328();
  v6 = sub_2179AB354();

  if (!v2)
  {
    v14[5] = v6;
    MEMORY[0x28223BE20](result);
    v8 = *(v4 + 88);
    v14[2] = *(v4 + 80);
    v14[3] = v8;
    type metadata accessor for MKVSEntity();
    v9 = sub_2179E9840();
    WitnessTable = swift_getWitnessTable();
    v12 = sub_2179A2E44(sub_2179DA510, v14, v9, MEMORY[0x277D837D0], MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v11);

    v13 = *a1;
    *a1 = v12;
  }

  return result;
}

uint64_t MixedKeyValueStore.read<A>(_:maxAge:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v4;
  v11 = sub_2179E9270();
  OUTLINED_FUNCTION_2();
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1_18();
  v84 = v17;
  OUTLINED_FUNCTION_19_4();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_20_2();
  v85 = v19;
  OUTLINED_FUNCTION_18_4();
  v21 = *(v20 + 80);
  OUTLINED_FUNCTION_18_4();
  v98 = *(v22 + 88);
  v99 = v23;
  v107 = v23;
  v108 = a2;
  v109 = v98;
  v110 = a3;
  v111 = a4;
  v24 = type metadata accessor for MKVSEntry();
  v25 = *(*(sub_2179E9A60() - 8) + 64);
  OUTLINED_FUNCTION_19();
  MEMORY[0x28223BE20](v26);
  v95 = &v82 - v27;
  OUTLINED_FUNCTION_2();
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_19();
  MEMORY[0x28223BE20](v30);
  v97 = &v82 - v31;
  OUTLINED_FUNCTION_2();
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_1_18();
  v96 = v35;
  OUTLINED_FUNCTION_19_4();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_20_2();
  v100 = v39;
  if (!*(a1 + 16))
  {
    swift_getTupleTypeMetadata2();
    OUTLINED_FUNCTION_9();
    sub_2179E97F0();
    return sub_2179E9540();
  }

  v86 = v38;
  v87 = v37;
  v83 = v13;
  v40 = v24;
  v41 = sub_2179E9500();
  v106 = v41;
  v42 = sub_2179D6460(v4);
  if (v5)
  {

    return v41;
  }

  v43 = v42;
  v101 = v4;
  v93 = v40;
  v94 = a4;
  v82 = v11;
  v102 = 0;
  v44 = type metadata accessor for MKVSEntity();

  v45 = sub_2179E97C0();

  v105 = v45;
  v92 = v43 + 32;
  v90 = v86 + 16;
  v88 = v87 + 16;
  v87 += 8;
  v86 += 8;
  v46 = v100;
  v91 = v43;
  v89 = v44;
  while (1)
  {
    v47 = sub_2179E9820();
    v48 = v105;
    v49 = v101;
    if (v105 == v47)
    {

      v70 = v49[4];
      v69 = v49[5];

      v72 = v84;
      v70(v71);

      v73 = v85;
      sub_2179E9230();
      v74 = a2;
      v101 = *(v83 + 8);
      v75 = (v101)(v72, v82);
      v100 = &v82;
      MEMORY[0x28223BE20](v75);
      v76 = v99;
      *(&v82 - 6) = v99;
      *(&v82 - 5) = a2;
      v77 = v98;
      *(&v82 - 4) = v98;
      *(&v82 - 3) = a3;
      v78 = v94;
      v81 = v73;
      v79 = sub_2179E9570();
      v102 = &v82;
      MEMORY[0x28223BE20](v79);
      *(&v82 - 6) = v76;
      *(&v82 - 5) = v74;
      *(&v82 - 4) = v77;
      *(&v82 - 3) = a3;
      v80 = v78;
      v41 = sub_2179E9590();

      (v101)(v73, v82);
      return v41;
    }

    v50 = sub_2179E9800();
    sub_2179E97E0();
    if ((v50 & 1) == 0)
    {
      break;
    }

    v51 = (v92 + 24 * v48);
    v53 = *v51;
    v52 = v51[1];
    v54 = v51[2];

    v100 = v52;

    sub_2179E9830();
    result = swift_beginAccess();
    v41 = *(v54 + 32);
    if (v41 >> 60 == 15)
    {
      goto LABEL_16;
    }

    v56 = *(v54 + 24);
    sub_2179B2DDC(v56, *(v54 + 32));
    v57 = v94;
    v58 = v102;
    sub_2179D673C(a2, a3, v46);
    sub_2179B78D4(v56, v41);
    v102 = v58;
    if (v58)
    {

      return v41;
    }

    OUTLINED_FUNCTION_7_10(&v115);
    v59 = v96;
    v60(v96, v46, a2);
    v80 = v57;
    v61 = v97;
    sub_2179D6810(v53, v100, v54, v59, a2, v97);
    result = swift_beginAccess();
    v62 = *(v53 + 32);
    if (!v62)
    {
      goto LABEL_17;
    }

    v63 = *(v53 + 24);
    OUTLINED_FUNCTION_7_10(&v114);
    v64 = v95;
    v65 = v93;
    v66(v95, v61, v93);
    __swift_storeEnumTagSinglePayload(v64, 0, 1, v65);
    v103 = v63;
    v104 = v62;
    sub_2179E95B0();

    sub_2179E95D0();
    OUTLINED_FUNCTION_7_10(&v113);
    v67(v61, v65);
    OUTLINED_FUNCTION_7_10(&v112);
    v68(v46, a2);
  }

  result = sub_2179E9B20();
  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_2179D6460(void *a1)
{
  v2 = a1[2];
  v3 = *(*a1 + 80);
  v4 = *(*a1 + 88);
  type metadata accessor for MKVSEntity();
  sub_2179E9840();
  Database.read<A>(block:)(&v14);
  if (!v1)
  {
    return v14;
  }

  if (qword_280B1DB60 != -1)
  {
    swift_once();
  }

  sub_2179E9920();
  sub_21799ABE4();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_2179EA820;
  v6 = (*(v4 + 8))(v3, v4);
  v8 = v7;
  v9 = MEMORY[0x277D837D0];
  *(v5 + 56) = MEMORY[0x277D837D0];
  v10 = sub_21799C634();
  *(v5 + 64) = v10;
  *(v5 + 32) = v6;
  *(v5 + 40) = v8;
  v14 = 0;
  v15 = 0xE000000000000000;
  sub_21799AC4C(0, &qword_280B1DBF8);
  sub_2179E9C10();
  v11 = v14;
  v12 = v15;
  *(v5 + 96) = v9;
  *(v5 + 104) = v10;
  *(v5 + 72) = v11;
  *(v5 + 80) = v12;
  sub_2179E93F0();

  return swift_willThrow();
}

void sub_2179D673C(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v7 = *v3;
  v8 = MEMORY[0x21CEA9E60]();
  sub_2179D8F88(*(v7 + 80), a1, *(v7 + 88), a2, &v9, a3);
  objc_autoreleasePoolPop(v8);
}

uint64_t sub_2179D6810@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, char *a6@<X8>)
{
  *a6 = a1;
  *(a6 + 1) = a2;
  *(a6 + 2) = a3;
  v9 = type metadata accessor for MKVSEntry();
  return (*(*(a5 - 8) + 32))(&a6[*(v9 + 60)], a4, a5);
}

uint64_t sub_2179D68A4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v40[0] = a3;
  sub_2179AD4F8(0, &unk_280B1D898, MEMORY[0x277CC9578]);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = v40 - v17;
  v40[1] = a4;
  v40[2] = a5;
  v40[3] = a6;
  v40[4] = a7;
  v40[5] = a8;
  v19 = type metadata accessor for MKVSEntry();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v21 = *(TupleTypeMetadata2 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v25 = v40 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v23);
  v28 = (v40 - v27);
  v29 = *a1;
  v30 = a1[1];
  *v28 = v29;
  v28[1] = v30;
  v31 = *(v19 - 8);
  (*(v31 + 16))(v40 + *(v26 + 48) - v27, a2, v19);
  (*(v21 + 16))(v25, v28, TupleTypeMetadata2);
  v32 = *(v25 + 1);

  v33 = &v25[*(TupleTypeMetadata2 + 48)];
  v34 = *(v33 + 1);
  v35 = *(v31 + 8);

  v35(v33, v19);
  v36 = *(*v34 + 104);
  swift_beginAccess();
  sub_2179B819C(v34 + v36, v18);

  v37 = sub_2179E9270();
  result = __swift_getEnumTagSinglePayload(v18, 1, v37);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_2179DA48C(&qword_280B1D8A8, MEMORY[0x277CC9578]);
    v39 = sub_2179E9600();
    (*(v21 + 8))(v28, TupleTypeMetadata2);
    (*(*(v37 - 8) + 8))(v18, v37);
    return (v39 & 1) == 0;
  }

  return result;
}