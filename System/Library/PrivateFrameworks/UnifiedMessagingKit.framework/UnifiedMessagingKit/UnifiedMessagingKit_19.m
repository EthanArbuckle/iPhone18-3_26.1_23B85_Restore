_BYTE *sub_27054AB64(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x27054AC00);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_27054AC3C()
{
  result = qword_2807D6FC0;
  if (!qword_2807D6FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D6FC0);
  }

  return result;
}

unint64_t sub_27054AC94()
{
  result = qword_2807D6FC8;
  if (!qword_2807D6FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D6FC8);
  }

  return result;
}

unint64_t sub_27054ACEC()
{
  result = qword_2807D6FD0;
  if (!qword_2807D6FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D6FD0);
  }

  return result;
}

unint64_t sub_27054AD44()
{
  result = qword_2807D6FD8;
  if (!qword_2807D6FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D6FD8);
  }

  return result;
}

unint64_t sub_27054AD9C()
{
  result = qword_2807D6FE0;
  if (!qword_2807D6FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D6FE0);
  }

  return result;
}

unint64_t sub_27054ADF4()
{
  result = qword_2807D6FE8;
  if (!qword_2807D6FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D6FE8);
  }

  return result;
}

unint64_t sub_27054AE4C()
{
  result = qword_2807D6FF0;
  if (!qword_2807D6FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D6FF0);
  }

  return result;
}

unint64_t sub_27054AEA4()
{
  result = qword_2807D6FF8;
  if (!qword_2807D6FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D6FF8);
  }

  return result;
}

unint64_t sub_27054AEFC()
{
  result = qword_2807D7000;
  if (!qword_2807D7000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D7000);
  }

  return result;
}

unint64_t sub_27054AF54()
{
  result = qword_2807D7008;
  if (!qword_2807D7008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D7008);
  }

  return result;
}

unint64_t sub_27054AFAC()
{
  result = qword_2807D7010;
  if (!qword_2807D7010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D7010);
  }

  return result;
}

unint64_t sub_27054B004()
{
  result = qword_2807D7018;
  if (!qword_2807D7018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D7018);
  }

  return result;
}

unint64_t sub_27054B05C()
{
  result = qword_2807D7020;
  if (!qword_2807D7020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D7020);
  }

  return result;
}

unint64_t sub_27054B0B4()
{
  result = qword_2807D7028;
  if (!qword_2807D7028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D7028);
  }

  return result;
}

unint64_t sub_27054B10C()
{
  result = qword_2807D7030;
  if (!qword_2807D7030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D7030);
  }

  return result;
}

unint64_t sub_27054B164()
{
  result = qword_2807D7038;
  if (!qword_2807D7038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D7038);
  }

  return result;
}

unint64_t sub_27054B1BC()
{
  result = qword_2807D7040;
  if (!qword_2807D7040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D7040);
  }

  return result;
}

unint64_t sub_27054B214()
{
  result = qword_2807D7048;
  if (!qword_2807D7048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D7048);
  }

  return result;
}

unint64_t sub_27054B26C()
{
  result = qword_2807D7050;
  if (!qword_2807D7050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D7050);
  }

  return result;
}

unint64_t sub_27054B2C4()
{
  result = qword_2807D7058;
  if (!qword_2807D7058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D7058);
  }

  return result;
}

unint64_t sub_27054B31C()
{
  result = qword_2807D7060;
  if (!qword_2807D7060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D7060);
  }

  return result;
}

unint64_t sub_27054B374()
{
  result = qword_2807D7068;
  if (!qword_2807D7068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D7068);
  }

  return result;
}

unint64_t sub_27054B3CC()
{
  result = qword_2807D7070;
  if (!qword_2807D7070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D7070);
  }

  return result;
}

unint64_t sub_27054B424()
{
  result = qword_2807D7078;
  if (!qword_2807D7078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D7078);
  }

  return result;
}

unint64_t sub_27054B47C()
{
  result = qword_2807D7080;
  if (!qword_2807D7080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D7080);
  }

  return result;
}

unint64_t sub_27054B4D4()
{
  result = qword_2807D7088;
  if (!qword_2807D7088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D7088);
  }

  return result;
}

unint64_t sub_27054B52C()
{
  result = qword_2807D7090;
  if (!qword_2807D7090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D7090);
  }

  return result;
}

unint64_t sub_27054B584()
{
  result = qword_2807D7098;
  if (!qword_2807D7098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D7098);
  }

  return result;
}

unint64_t sub_27054B5DC()
{
  result = qword_2807D70A0;
  if (!qword_2807D70A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D70A0);
  }

  return result;
}

unint64_t sub_27054B634()
{
  result = qword_2807D70A8;
  if (!qword_2807D70A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D70A8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_8_50()
{

  return sub_2705D7ED4();
}

uint64_t OUTLINED_FUNCTION_17_26()
{

  return sub_2705D8084();
}

uint64_t MessageItem.enrichedData.getter@<X0>(void *a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  a1[1] = v3;
  return OUTLINED_FUNCTION_0_2(v2, v3, *(v1 + 16), a1);
}

uint64_t MessageItem.enrichedData.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = sub_2703AE980(*v1, *(v1 + 8), *(v1 + 16));
  *v1 = v2;
  *(v1 + 8) = v3;
  *(v1 + 16) = v4;
  return result;
}

uint64_t MessageItem.merchandisingData.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  *a1 = v2;
  a1[1] = v3;
  return OUTLINED_FUNCTION_0_2(v2, v3, *(v1 + 40), a1);
}

uint64_t MessageItem.merchandisingData.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = sub_2703AE980(*(v1 + 24), *(v1 + 32), *(v1 + 40));
  *(v1 + 24) = v2;
  *(v1 + 32) = v3;
  *(v1 + 40) = v4;
  return result;
}

uint64_t type metadata accessor for MessageItem()
{
  result = qword_2807D70D8;
  if (!qword_2807D70D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MessageItem.viewStyle.setter()
{
  OUTLINED_FUNCTION_4_41();
  v2 = v1 + *(type metadata accessor for MessageItem() + 24);

  return sub_2704BD764(v0, v2);
}

uint64_t (*MessageItem.viewStyle.modify())(void, void)
{
  OUTLINED_FUNCTION_4_41();
  type metadata accessor for MessageItem();
  return CGSizeMake;
}

uint64_t sub_27054BA68(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6465686369726E65 && a2 == 0xEC00000061746144;
  if (v4 || (sub_2705D8134() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000011 && 0x8000000270613640 == a2;
    if (v6 || (sub_2705D8134() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6C79745377656976 && a2 == 0xE900000000000065;
      if (v7 || (sub_2705D8134() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x61746144776172 && a2 == 0xE700000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_2705D8134();

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

unint64_t sub_27054BBD4(char a1)
{
  result = 0x6465686369726E65;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0x6C79745377656976;
      break;
    case 3:
      result = 0x61746144776172;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_27054BC80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_27054BA68(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_27054BCA8(uint64_t a1)
{
  v2 = sub_27054BF60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27054BCE4(uint64_t a1)
{
  v2 = sub_27054BF60();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MessageItem.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D70B0);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v17 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27054BF60();
  sub_2705D84C4();
  v11 = *(v3 + 8);
  v12 = *(v3 + 16);
  v18 = *v3;
  v19 = v11;
  v20 = v12;
  HIBYTE(v17) = 0;
  sub_2703AE9E8(v18, v11, v12);
  sub_2703C39C4();
  OUTLINED_FUNCTION_3_68();
  OUTLINED_FUNCTION_3_66();
  sub_2705D8024();
  sub_2703AE980(v18, v19, v20);
  if (!v2)
  {
    v13 = *(v3 + 32);
    v14 = *(v3 + 40);
    v18 = *(v3 + 24);
    v19 = v13;
    v20 = v14;
    HIBYTE(v17) = 1;
    sub_2703AE9E8(v18, v13, v14);
    OUTLINED_FUNCTION_3_68();
    OUTLINED_FUNCTION_3_66();
    sub_2705D8024();
    sub_2703AE980(v18, v19, v20);
    v15 = type metadata accessor for MessageItem();
    LOBYTE(v18) = 2;
    type metadata accessor for MessageViewStyle(0);
    sub_27054C400(&qword_2807D70C0);
    OUTLINED_FUNCTION_3_66();
    sub_2705D8084();
    v18 = *(v3 + *(v15 + 28));
    HIBYTE(v17) = 3;
    sub_27054BFB4();
    OUTLINED_FUNCTION_3_68();
    OUTLINED_FUNCTION_3_66();
    sub_2705D8084();
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_27054BF60()
{
  result = qword_2807D70B8;
  if (!qword_2807D70B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D70B8);
  }

  return result;
}

unint64_t sub_27054BFB4()
{
  result = qword_2807D70C8;
  if (!qword_2807D70C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D70C8);
  }

  return result;
}

uint64_t MessageItem.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  type metadata accessor for MessageViewStyle(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D70D0);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v7);
  v26 = type metadata accessor for MessageItem();
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v10 = 0;
  *(v10 + 1) = 0;
  v10[16] = -1;
  *(v10 + 3) = 0;
  *(v10 + 4) = 0;
  v10[40] = -1;
  v11 = a1[3];
  v25 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_27054BF60();
  sub_2705D8484();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(v25);
    sub_2703AE980(*v10, *(v10 + 1), v10[16]);
    return sub_2703AE980(*(v10 + 3), *(v10 + 4), v10[40]);
  }

  else
  {
    v22 = v6;
    v30 = 0;
    sub_2703C3FAC();
    OUTLINED_FUNCTION_7_51();
    sub_2705D7F44();
    v12 = v27;
    v13 = v28;
    v14 = v29;
    sub_2703AE980(*v10, *(v10 + 1), v10[16]);
    *v10 = v12;
    *(v10 + 1) = v13;
    v10[16] = v14;
    v30 = 1;
    OUTLINED_FUNCTION_7_51();
    sub_2705D7F44();
    v15 = v27;
    v16 = v28;
    LOBYTE(v13) = v29;
    sub_2703AE980(*(v10 + 3), *(v10 + 4), v10[40]);
    *(v10 + 3) = v15;
    *(v10 + 4) = v16;
    v10[40] = v13;
    LOBYTE(v27) = 2;
    sub_27054C400(&qword_2807D3630);
    v17 = v22;
    OUTLINED_FUNCTION_7_51();
    sub_2705D7FA4();
    v19 = v26;
    sub_270514FDC(v17, &v10[*(v26 + 24)]);
    v30 = 3;
    sub_27051AA04();
    OUTLINED_FUNCTION_7_51();
    sub_2705D7FA4();
    v20 = OUTLINED_FUNCTION_2_74();
    v21(v20);
    *&v10[*(v19 + 28)] = v27;
    sub_27054C444(v10, v23, type metadata accessor for MessageItem);
    __swift_destroy_boxed_opaque_existential_1(v25);
    return sub_27054C4A4();
  }
}

uint64_t sub_27054C400(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MessageViewStyle(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_27054C444(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_14();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_27054C4A4()
{
  v1 = OUTLINED_FUNCTION_4_41();
  v2(v1);
  OUTLINED_FUNCTION_14();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_27054C53C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OUTLINED_FUNCTION_4_41();
  v7 = type metadata accessor for MessageViewStyle(v6);
  if (*(*(v7 - 8) + 84) == a2)
  {
    v8 = v7;
    v9 = v3 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  else
  {
    v11 = *(v3 + *(a3 + 28));
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_27054C5FC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for MessageViewStyle(0);
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

void sub_27054C6A8()
{
  sub_2703F0028();
  if (v0 <= 0x3F)
  {
    type metadata accessor for MessageViewStyle(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

_BYTE *storeEnumTagSinglePayload for MessageItem.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x27054C800);
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

unint64_t sub_27054C83C()
{
  result = qword_2807D70E8;
  if (!qword_2807D70E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D70E8);
  }

  return result;
}

unint64_t sub_27054C894()
{
  result = qword_2807D70F0;
  if (!qword_2807D70F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D70F0);
  }

  return result;
}

unint64_t sub_27054C8EC()
{
  result = qword_2807D70F8;
  if (!qword_2807D70F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D70F8);
  }

  return result;
}

uint64_t sub_27054C96C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = 0;
  *(v2 + 24) = 1;
  *(v2 + 25) = 259;
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return v2;
}

void sub_27054C98C(char a1)
{
  v2 = *(v1 + 26);
  if (v2 != (a1 & 1))
  {
    *(v1 + 26) = a1 & 1;
    if (a1)
    {
      if ((v2 & 1) == 0 && *(v1 + 25) != 2)
      {
        sub_27054C9D8(0, 2);
      }
    }

    else if (v2 && !*(v1 + 25))
    {
      sub_27054CAD8(1u);
    }
  }
}

void sub_27054C9D8(uint64_t a1, uint64_t a2)
{
  v6 = sub_2705D4594();
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_75();
  if (*(v2 + 25))
  {
    if (*(v2 + 26) == 1)
    {
      sub_2705D4574();
      sub_2705D4554();
      v8 = OUTLINED_FUNCTION_0_72();
      v9(v8, v6);
      *(v2 + 16) = v3;
      *(v2 + 24) = 0;
      v10 = *(v2 + 32);

      v10(a1, a2);
    }
  }
}

void sub_27054CAD8(unsigned __int8 a1)
{
  v3 = a1;
  v4 = sub_2705D4594();
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_75();
  v6 = *(v1 + 25);
  if (v6 == 3)
  {
    goto LABEL_2;
  }

  if (v6 != v3 && v6 != 2)
  {
    if ((*(v1 + 24) & 1) != 0 || *(v1 + 25))
    {
      goto LABEL_2;
    }

    v8 = *(v1 + 16);
    if (v3 == 1)
    {
      v9 = *(v1 + 32);

      sub_2705D4574();
      sub_2705D4554();
      v14 = OUTLINED_FUNCTION_0_72();
      v15(v14, v4);
      v12 = v2 - v8;
      v13 = 0;
    }

    else
    {
      if (v3 != 2)
      {
LABEL_2:
        *(v1 + 16) = 0;
        *(v1 + 24) = 1;
        *(v1 + 25) = v3;
        return;
      }

      v9 = *(v1 + 32);

      sub_2705D4574();
      sub_2705D4554();
      v10 = OUTLINED_FUNCTION_0_72();
      v11(v10, v4);
      v12 = v2 - v8;
      v13 = 1;
    }

    v9(*&v12, v13);

    goto LABEL_2;
  }
}

uint64_t sub_27054CC54()
{

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t sub_27054CCB0(uint64_t a1)
{
  if (*(a1 + 8) <= 1u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_27054CCC8(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

_BYTE *storeEnumTagSinglePayload for ViewState(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x27054CDBCLL);
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

unint64_t sub_27054CDF8()
{
  result = qword_2807D7100;
  if (!qword_2807D7100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D7100);
  }

  return result;
}

double sub_27054CE74()
{
  v3 = OUTLINED_FUNCTION_42_9();
  v4 = OUTLINED_FUNCTION_23_0(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_4_0();
  if (qword_2807CE838 != -1)
  {
    OUTLINED_FUNCTION_0_64();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0);
  v5 = sub_2705D6574();
  OUTLINED_FUNCTION_1_1(v5);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2705E10F0;
  v7 = type metadata accessor for MediaSizeConfiguration(0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7330);
  v47 = v7;
  v52 = v46;
  v51[0] = v7;
  v8 = AMSLogKey();
  v9 = MEMORY[0x277D837D0];
  if (v8)
  {
    v10 = v8;
    v11 = sub_2705D7564();
    v13 = v12;

    OUTLINED_FUNCTION_35_15();
    OUTLINED_FUNCTION_9_7();
    sub_2705D6504();
    OUTLINED_FUNCTION_4_62();
    MetatypeMetadata = swift_getMetatypeMetadata();
    OUTLINED_FUNCTION_6_61(MetatypeMetadata);
    sub_2704B667C(&v48);
    OUTLINED_FUNCTION_7_24();
    v50 = v9;
    v48 = v11;
    v49 = v13;
    sub_2705D64E4();
  }

  else
  {
    OUTLINED_FUNCTION_34_17();
    OUTLINED_FUNCTION_9_7();
    sub_2705D6504();
    OUTLINED_FUNCTION_4_62();
    v15 = swift_getMetatypeMetadata();
    OUTLINED_FUNCTION_6_61(v15);
  }

  sub_2704B667C(&v48);
  OUTLINED_FUNCTION_65_6();
  sub_2705D6534();
  __swift_destroy_boxed_opaque_existential_1(v51);
  OUTLINED_FUNCTION_32_14();
  type metadata accessor for CGSize(0);
  OUTLINED_FUNCTION_49_5(v16);
  sub_2704B667C(v51);
  sub_27047CE48(v6);

  v17 = MEMORY[0x277D837D0];
  switch(*(v0 + 24) >> 61)
  {
    case 1:
      v28 = OUTLINED_FUNCTION_39_8();
      if (v22)
      {
        OUTLINED_FUNCTION_58_5();
      }

      else
      {
        if (v27 == 1)
        {
          v29 = v28 * v2;
        }

        else
        {
          v29 = v28 * v1;
        }

        OUTLINED_FUNCTION_8_51(v29, 100000000.0);
      }

      OUTLINED_FUNCTION_38_10();
      if (!v22)
      {
        OUTLINED_FUNCTION_25_23();
      }

      goto LABEL_45;
    case 2:
      v21 = OUTLINED_FUNCTION_39_8();
      if (v22)
      {
        OUTLINED_FUNCTION_58_5();
      }

      else
      {
        if (v20 == 1)
        {
          v23 = v21 * v2;
        }

        else
        {
          v23 = v21 * v1;
        }

        OUTLINED_FUNCTION_8_51(v23, 100000000.0);
      }

      OUTLINED_FUNCTION_38_10();
      if (!v22)
      {
        OUTLINED_FUNCTION_25_23();
      }

LABEL_45:
      sub_27054FF24();
      goto LABEL_46;
    case 3:
      v25 = OUTLINED_FUNCTION_39_8();
      if (!v22)
      {
        if (v24 == 1)
        {
          v26 = v25 * v2;
        }

        else
        {
          v26 = v25 * v1;
        }

        OUTLINED_FUNCTION_8_51(v26, 100000000.0);
      }

      OUTLINED_FUNCTION_38_10();
      if (v22)
      {
        OUTLINED_FUNCTION_58_5();
      }

      sub_270550964();
LABEL_46:
      v18 = v36;
      goto LABEL_47;
    case 4:
      v18 = *v0;
      if (*(v0 + 8))
      {
        if (*(v0 + 8) == 1)
        {
          v19 = v18 * v2;
        }

        else
        {
          v19 = v18 * v1;
        }

        v33 = OUTLINED_FUNCTION_17_27(v19, 100000000.0);
        v18 = v33 / v34;
      }

      else
      {
        OUTLINED_FUNCTION_58_5();
      }

      if (v30)
      {
        if (v30 == 1)
        {
          v35 = v31 * v2;
        }

        else
        {
          v35 = v31 * v1;
        }

        OUTLINED_FUNCTION_17_27(v35, *(v32 + 2648));
      }

LABEL_47:
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_2705E6EB0;
      v52 = v46;
      v51[0] = v47;
      v38 = AMSLogKey();
      if (v38)
      {
        v39 = v38;
        v40 = sub_2705D7564();
        v42 = v41;

        OUTLINED_FUNCTION_35_15();
        OUTLINED_FUNCTION_9_7();
        sub_2705D6504();
        OUTLINED_FUNCTION_4_62();
        v43 = swift_getMetatypeMetadata();
        OUTLINED_FUNCTION_6_61(v43);
        sub_2704B667C(&v48);
        OUTLINED_FUNCTION_7_24();
        v50 = v17;
        v48 = v40;
        v49 = v42;
        sub_2705D64E4();
      }

      else
      {
        OUTLINED_FUNCTION_34_17();
        OUTLINED_FUNCTION_9_7();
        sub_2705D6504();
        OUTLINED_FUNCTION_4_62();
        v44 = swift_getMetatypeMetadata();
        OUTLINED_FUNCTION_6_61(v44);
      }

      sub_2704B667C(&v48);
      OUTLINED_FUNCTION_65_6();
      sub_2705D6534();
      __swift_destroy_boxed_opaque_existential_1(v51);
      OUTLINED_FUNCTION_63_6();
      sub_2704B667C(v51);
      sub_27047CE48(v37);

      break;
    default:
      v18 = *v0;
      break;
  }

  return v18;
}

uint64_t sub_27054D424(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x687464695778616DLL && a2 == 0xE800000000000000;
  if (v4 || (sub_2705D8134() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x686769654878616DLL && a2 == 0xE900000000000074;
    if (v6 || (sub_2705D8134() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6165724178616DLL && a2 == 0xE700000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_2705D8134();

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

uint64_t sub_27054D53C(char a1)
{
  if (!a1)
  {
    return 0x687464695778616DLL;
  }

  if (a1 == 1)
  {
    return 0x686769654878616DLL;
  }

  return 0x6165724178616DLL;
}

uint64_t sub_27054D598(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x687464695778616DLL && a2 == 0xE800000000000000;
  if (v4 || (OUTLINED_FUNCTION_5_30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x686769654878616DLL && a2 == 0xE900000000000074)
  {

    return 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_5_30();

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

uint64_t sub_27054D650(char a1)
{
  if (a1)
  {
    return 0x686769654878616DLL;
  }

  else
  {
    return 0x687464695778616DLL;
  }
}

uint64_t sub_27054D68C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6465786966 && a2 == 0xE500000000000000;
  if (v4 || (sub_2705D8134() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6946746365707361 && a2 == 0xE900000000000074;
    if (v6 || (sub_2705D8134() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6946746365707361 && a2 == 0xEA00000000006C6CLL;
      if (v7 || (sub_2705D8134() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 1634038369 && a2 == 0xE400000000000000;
        if (v8 || (sub_2705D8134() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x6D6F74737563 && a2 == 0xE600000000000000)
        {

          return 4;
        }

        else
        {
          v10 = sub_2705D8134();

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

uint64_t sub_27054D834(char a1)
{
  result = 0x6465786966;
  switch(a1)
  {
    case 1:
    case 2:
      result = 0x6946746365707361;
      break;
    case 3:
      result = 1634038369;
      break;
    case 4:
      result = 0x6D6F74737563;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_27054D8CC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6874646977 && a2 == 0xE500000000000000;
  if (v4 || (OUTLINED_FUNCTION_5_30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746867696568 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_5_30();

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

uint64_t sub_27054D974(char a1)
{
  if (a1)
  {
    return 0x746867696568;
  }

  else
  {
    return 0x6874646977;
  }
}

void sub_27054D9A4()
{
  OUTLINED_FUNCTION_14_35();
  v64 = v1;
  v3 = v0;
  v5 = v4;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7240);
  OUTLINED_FUNCTION_0();
  v61 = v6;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_17_0();
  v59 = v8;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7248);
  OUTLINED_FUNCTION_0();
  v60 = v9;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_17_0();
  v58 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7250);
  OUTLINED_FUNCTION_0();
  v56 = v13;
  v57 = v12;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_17_0();
  v55 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7258);
  OUTLINED_FUNCTION_0();
  v53 = v17;
  v54 = v16;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v18);
  v20 = &v52 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7260);
  OUTLINED_FUNCTION_0();
  v52 = v22;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v23);
  v25 = &v52 - v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7268);
  OUTLINED_FUNCTION_0();
  v65 = v26;
  v66 = v27;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_30_1();
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_270552080();
  v29 = v2;
  sub_2705D84C4();
  v30 = *v3;
  v31 = v3[1];
  v32 = v3[3];
  switch(v32 >> 61)
  {
    case 1uLL:
      v57 = v3[2];
      LOBYTE(v68) = 1;
      sub_2705521D0();
      v49 = v65;
      OUTLINED_FUNCTION_7_52();
      sub_2705D7FE4();
      OUTLINED_FUNCTION_45_8();
      OUTLINED_FUNCTION_30_16();
      v50 = v54;
      v51 = v64;
      sub_2705D8084();
      if (!v51)
      {
        v68 = v57;
        v69 = v32;
        v67 = 1;
        OUTLINED_FUNCTION_30_16();
        sub_2705D8084();
      }

      (*(v53 + 8))(v20, v50);
      OUTLINED_FUNCTION_53_5();
      v35 = v29;
      v47 = v49;
      goto LABEL_20;
    case 2uLL:
      v41 = v3[2];
      v54 = v3[3];
      LOBYTE(v68) = 2;
      sub_27055217C();
      v42 = v65;
      sub_2705D7FE4();
      v68 = v30;
      v69 = v31;
      v67 = 0;
      sub_270403A2C();
      OUTLINED_FUNCTION_30_16();
      v43 = v57;
      v44 = v64;
      sub_2705D8084();
      if (!v44)
      {
        v68 = v41;
        OUTLINED_FUNCTION_27_17();
        OUTLINED_FUNCTION_30_16();
        sub_2705D8084();
      }

      v45 = OUTLINED_FUNCTION_20_22();
      v46(v45, v43);
      OUTLINED_FUNCTION_53_5();
      v35 = v29;
      v47 = v42;
      goto LABEL_20;
    case 3uLL:
      v57 = v3[2];
      v54 = v32;
      LOBYTE(v68) = 3;
      sub_270552128();
      v36 = v58;
      OUTLINED_FUNCTION_22_19();
      v37 = v29;
      sub_2705D7FE4();
      OUTLINED_FUNCTION_45_8();
      OUTLINED_FUNCTION_30_16();
      v39 = v62;
      OUTLINED_FUNCTION_28_17();
      v48 = v64;
      sub_2705D8084();
      if (!v48)
      {
        v68 = v57;
        OUTLINED_FUNCTION_27_17();
        OUTLINED_FUNCTION_30_16();
        OUTLINED_FUNCTION_28_17();
        sub_2705D8084();
        LOBYTE(v68) = 2;
        sub_2705D8054();
      }

      v40 = v60;
      goto LABEL_15;
    case 4uLL:
      v57 = v3[2];
      v54 = v32;
      LOBYTE(v68) = 4;
      sub_2705520D4();
      v36 = v59;
      OUTLINED_FUNCTION_22_19();
      v37 = v29;
      sub_2705D7FE4();
      OUTLINED_FUNCTION_45_8();
      OUTLINED_FUNCTION_30_16();
      v39 = v63;
      v38 = v64;
      OUTLINED_FUNCTION_28_17();
      sub_2705D8084();
      if (!v38)
      {
        v68 = v57;
        OUTLINED_FUNCTION_27_17();
        OUTLINED_FUNCTION_30_16();
        OUTLINED_FUNCTION_28_17();
        sub_2705D8084();
      }

      v40 = v61;
LABEL_15:
      (*(v40 + 8))(v36, v39);
      OUTLINED_FUNCTION_53_5();
      v35 = v37;
      goto LABEL_16;
    default:
      LOBYTE(v68) = 0;
      sub_270552224();
      OUTLINED_FUNCTION_22_19();
      sub_2705D7FE4();
      LOBYTE(v68) = 0;
      v33 = v64;
      sub_2705D8054();
      if (!v33)
      {
        LOBYTE(v68) = 1;
        sub_2705D8054();
      }

      (*(v52 + 8))(v25, v21);
      OUTLINED_FUNCTION_53_5();
      v35 = v29;
LABEL_16:
      v47 = v20;
LABEL_20:
      v34(v35, v47);
      OUTLINED_FUNCTION_15_35();
      return;
  }
}

uint64_t sub_27054E0A0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v85 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D71E0);
  OUTLINED_FUNCTION_0();
  v91 = v4;
  v92 = v5;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_17_0();
  v97 = v7;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D71E8);
  OUTLINED_FUNCTION_0();
  v93 = v8;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_17_0();
  v94 = v10;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D71F0);
  OUTLINED_FUNCTION_0();
  v95 = v11;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_17_0();
  v96 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D71F8);
  OUTLINED_FUNCTION_0();
  v87 = v15;
  v88 = v14;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v16);
  v18 = v84 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7200);
  OUTLINED_FUNCTION_0();
  v86 = v20;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v21);
  v23 = v84 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7208);
  OUTLINED_FUNCTION_0();
  v26 = v25;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_31_0();
  v28 = a1[3];
  v98 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v28);
  sub_270552080();
  v29 = v99;
  sub_2705D8484();
  if (v29)
  {
LABEL_11:
    v42 = v98;
    return __swift_destroy_boxed_opaque_existential_1(v42);
  }

  v84[2] = v23;
  v84[1] = v19;
  v84[3] = v18;
  v99 = v26;
  v30 = sub_2705D7FB4();
  sub_27042C9F0(v30, 0);
  v34 = v24;
  if (v32 == v33 >> 1)
  {
    v35 = v2;
LABEL_10:
    sub_2705D7D84();
    swift_allocError();
    v45 = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEA60);
    *v45 = &type metadata for MediaSize.Constraints;
    sub_2705D7EE4();
    OUTLINED_FUNCTION_49();
    OUTLINED_FUNCTION_4_4();
    (*(v46 + 104))(v45);
    swift_willThrow();
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_16_26();
    v47(v35, v34);
    goto LABEL_11;
  }

  v84[0] = 0;
  if (v32 >= (v33 >> 1))
  {
    __break(1u);
    JUMPOUT(0x27054EC0CLL);
  }

  v36 = *(v31 + v32);
  v37 = sub_27042C9E4(v32 + 1);
  v39 = v38;
  v41 = v40;
  swift_unknownObjectRelease();
  v42 = v37;
  if (v39 != v41 >> 1)
  {
    v35 = v2;
    v34 = v24;
    goto LABEL_10;
  }

  v43 = v84[0];
  switch(v36)
  {
    case 1:
      LOBYTE(v102) = 1;
      sub_2705521D0();
      OUTLINED_FUNCTION_7_52();
      sub_2705D7ED4();
      if (v43)
      {
        goto LABEL_20;
      }

      LOBYTE(v100) = 0;
      sub_270403984();
      OUTLINED_FUNCTION_56_4();
      OUTLINED_FUNCTION_57_4();
      sub_2705D7FA4();
      v57 = v102;
      OUTLINED_FUNCTION_10_44();
      OUTLINED_FUNCTION_55_5();
      OUTLINED_FUNCTION_57_4();
      sub_2705D7FA4();
      swift_unknownObjectRelease();
      v74 = OUTLINED_FUNCTION_23_22();
      v75(v74);
      OUTLINED_FUNCTION_16_26();
      v76(v2, v24);
      v64 = v100;
      v65 = v101 | 0x2000000000000000;
      v78 = 0;
      v42 = v98;
      goto LABEL_26;
    case 2:
      LOBYTE(v102) = 2;
      sub_27055217C();
      OUTLINED_FUNCTION_7_52();
      sub_2705D7ED4();
      OUTLINED_FUNCTION_54_6();
      if (v43)
      {
        goto LABEL_18;
      }

      LOBYTE(v100) = 0;
      sub_270403984();
      OUTLINED_FUNCTION_56_4();
      v54 = v90;
      OUTLINED_FUNCTION_26_21();
      sub_2705D7FA4();
      v57 = v102;
      OUTLINED_FUNCTION_10_44();
      OUTLINED_FUNCTION_55_5();
      OUTLINED_FUNCTION_26_21();
      sub_2705D7FA4();
      swift_unknownObjectRelease();
      v66 = OUTLINED_FUNCTION_20_22();
      v67(v66, v54);
      v68 = OUTLINED_FUNCTION_3_69();
      v69(v68);
      v64 = v100;
      v65 = v101 | 0x4000000000000000;
      goto LABEL_25;
    case 3:
      v97 = v42;
      LOBYTE(v102) = 3;
      sub_270552128();
      OUTLINED_FUNCTION_7_52();
      sub_2705D7ED4();
      OUTLINED_FUNCTION_54_6();
      if (v43)
      {
        goto LABEL_18;
      }

      LOBYTE(v100) = 0;
      sub_270403984();
      OUTLINED_FUNCTION_56_4();
      v55 = v89;
      OUTLINED_FUNCTION_57_4();
      sub_2705D7FA4();
      v57 = v102;
      OUTLINED_FUNCTION_10_44();
      OUTLINED_FUNCTION_55_5();
      OUTLINED_FUNCTION_57_4();
      sub_2705D7FA4();
      v64 = v100;
      v58 = v101;
      v103 = 2;
      sub_2705D7F74();
      v78 = v77;
      swift_unknownObjectRelease();
      v79 = OUTLINED_FUNCTION_20_22();
      v80(v79, v55);
      v81 = OUTLINED_FUNCTION_3_69();
      v82(v81);
      v65 = v58 | 0x6000000000000000;
      goto LABEL_26;
    case 4:
      LOBYTE(v102) = 4;
      sub_2705520D4();
      OUTLINED_FUNCTION_7_52();
      sub_2705D7ED4();
      if (!v43)
      {
        LOBYTE(v100) = 0;
        sub_270403984();
        OUTLINED_FUNCTION_56_4();
        v49 = v91;
        OUTLINED_FUNCTION_26_21();
        sub_2705D7FA4();
        OUTLINED_FUNCTION_54_6();
        v57 = v102;
        OUTLINED_FUNCTION_10_44();
        OUTLINED_FUNCTION_55_5();
        OUTLINED_FUNCTION_26_21();
        sub_2705D7FA4();
        swift_unknownObjectRelease();
        v60 = OUTLINED_FUNCTION_20_22();
        v61(v60, v49);
        v62 = OUTLINED_FUNCTION_3_69();
        v63(v62);
        v64 = v100;
        v65 = v101 | 0x8000000000000000;
        goto LABEL_25;
      }

LABEL_20:
      v52 = OUTLINED_FUNCTION_3_69();
      v53(v52);
      swift_unknownObjectRelease();
      goto LABEL_11;
    default:
      LOBYTE(v102) = 0;
      sub_270552224();
      OUTLINED_FUNCTION_7_52();
      sub_2705D7ED4();
      OUTLINED_FUNCTION_54_6();
      if (v43)
      {
LABEL_18:
        v50 = OUTLINED_FUNCTION_3_69();
        v51(v50);
        swift_unknownObjectRelease();
        return __swift_destroy_boxed_opaque_existential_1(v42);
      }

      LOBYTE(v102) = 0;
      sub_2705D7F74();
      v56 = v99;
      v57 = v59;
      LOBYTE(v102) = 1;
      sub_2705D7F74();
      v71 = v70;
      swift_unknownObjectRelease();
      v72 = OUTLINED_FUNCTION_23_22();
      v73(v72);
      (*(v56 + 8))(v2, v24);
      v64 = 0;
      v65 = 0;
      v43 = v71;
LABEL_25:
      v78 = 0;
LABEL_26:
      result = __swift_destroy_boxed_opaque_existential_1(v42);
      v83 = v85;
      *v85 = v57;
      v83[1] = v43;
      v83[2] = v64;
      v83[3] = v65;
      v83[4] = v78;
      break;
  }

  return result;
}

uint64_t sub_27054EC28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_27054D424(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_27054EC50(uint64_t a1)
{
  v2 = sub_270552128();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27054EC8C(uint64_t a1)
{
  v2 = sub_270552128();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_27054ECC8(uint64_t a1)
{
  v2 = sub_27055217C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27054ED04(uint64_t a1)
{
  v2 = sub_27055217C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_27054ED48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_27054D598(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_27054ED70(uint64_t a1)
{
  v2 = sub_2705521D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27054EDAC(uint64_t a1)
{
  v2 = sub_2705521D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_27054EDF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_27054D68C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_27054EE18(uint64_t a1)
{
  v2 = sub_270552080();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27054EE54(uint64_t a1)
{
  v2 = sub_270552080();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_27054EE90(uint64_t a1)
{
  v2 = sub_2705520D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27054EECC(uint64_t a1)
{
  v2 = sub_2705520D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_27054EF10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_27054D8CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_27054EF38(uint64_t a1)
{
  v2 = sub_270552224();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27054EF74(uint64_t a1)
{
  v2 = sub_270552224();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_27054EFB0@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_27054E0A0(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_27054F010(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E6174736E6F63 && a2 == 0xE800000000000000;
  if (v4 || (sub_2705D8134() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C754D6874646977 && a2 == 0xEF7265696C706974;
    if (v6 || (sub_2705D8134() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x754D746867696568 && a2 == 0xEF72656C7069746CLL)
    {

      return 2;
    }

    else
    {
      v8 = sub_2705D8134();

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

uint64_t sub_27054F130(char a1)
{
  if (!a1)
  {
    return 0x746E6174736E6F63;
  }

  if (a1 == 1)
  {
    return 0x6C754D6874646977;
  }

  return 0x754D746867696568;
}

void sub_27054F1A0()
{
  OUTLINED_FUNCTION_14_35();
  v37 = v0;
  v36 = v2;
  v35 = v3;
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7160);
  OUTLINED_FUNCTION_0();
  v33 = v7;
  v34 = v6;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_17_0();
  v32 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7168);
  OUTLINED_FUNCTION_0();
  v30 = v11;
  v31 = v10;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v12);
  v14 = &v29 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7170);
  OUTLINED_FUNCTION_0();
  v29 = v16;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7178);
  OUTLINED_FUNCTION_0();
  v20 = v19;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_30_1();
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_2705516FC();
  sub_2705D84C4();
  v22 = (v20 + 8);
  if (!v36)
  {
    v38 = 0;
    sub_2705519EC();
    OUTLINED_FUNCTION_50_7();
    sub_2705D8054();
    v24 = OUTLINED_FUNCTION_23();
    v26 = v15;
LABEL_6:
    v25(v24, v26);
    goto LABEL_7;
  }

  if (v36 != 1)
  {
    v40 = 2;
    sub_270551944();
    v27 = v32;
    OUTLINED_FUNCTION_50_7();
    v28 = v34;
    sub_2705D8054();
    v25 = *(v33 + 8);
    v24 = v27;
    v26 = v28;
    goto LABEL_6;
  }

  v39 = 1;
  sub_270551998();
  OUTLINED_FUNCTION_50_7();
  v23 = v31;
  sub_2705D8054();
  (*(v30 + 8))(v14, v23);
LABEL_7:
  (*v22)(v1, v18);
  OUTLINED_FUNCTION_15_35();
}

void sub_27054F4FC()
{
  OUTLINED_FUNCTION_14_35();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7120);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_17_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7128);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_31_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7130);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_30_1();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7138);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v7);
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_2705516FC();
  sub_2705D8484();
  if (v0)
  {
    goto LABEL_9;
  }

  v8 = sub_2705D7FB4();
  sub_27042C9F0(v8, 0);
  if (v10 == v11 >> 1)
  {
LABEL_8:
    sub_2705D7D84();
    swift_allocError();
    v18 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEA60);
    *v18 = &type metadata for MediaSize.Dimension;
    sub_2705D7EE4();
    OUTLINED_FUNCTION_49();
    OUTLINED_FUNCTION_4_4();
    (*(v19 + 104))(v18);
    swift_willThrow();
    swift_unknownObjectRelease();
    v20 = OUTLINED_FUNCTION_20_22();
    v21(v20, v6);
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1(v2);
LABEL_10:
    OUTLINED_FUNCTION_15_35();
    return;
  }

  if (v10 < (v11 >> 1))
  {
    v12 = *(v9 + v10);
    sub_27042C9E4(v10 + 1);
    v14 = v13;
    v16 = v15;
    swift_unknownObjectRelease();
    if (v14 == v16 >> 1)
    {
      if (v12)
      {
        if (v12 == 1)
        {
          sub_270551998();
          OUTLINED_FUNCTION_33_15();
          sub_2705D7F74();
          v23 = v6;
          swift_unknownObjectRelease();
          v24 = OUTLINED_FUNCTION_21_26();
          v25(v24);
          v26 = v2;
        }

        else
        {
          sub_270551944();
          OUTLINED_FUNCTION_33_15();
          v22 = v6;
          v26 = v2;
          v23 = v22;
          sub_2705D7F74();
          swift_unknownObjectRelease();
          v29 = OUTLINED_FUNCTION_60_6();
          v30(v29);
        }
      }

      else
      {
        sub_2705519EC();
        OUTLINED_FUNCTION_33_15();
        v23 = v6;
        sub_2705D7F74();
        v26 = v2;
        swift_unknownObjectRelease();
        v27 = OUTLINED_FUNCTION_21_26();
        v28(v27);
      }

      v31 = OUTLINED_FUNCTION_23();
      v32(v31, v23);
      __swift_destroy_boxed_opaque_existential_1(v26);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  __break(1u);
}

uint64_t sub_27054FAF0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7270);
  OUTLINED_FUNCTION_0();
  v4 = v3;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2705522E8();
  sub_2705D84C4();
  return (*(v4 + 8))(v7, v2);
}

uint64_t sub_27054FC24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_27054F010(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_27054FC4C(uint64_t a1)
{
  v2 = sub_2705516FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27054FC88(uint64_t a1)
{
  v2 = sub_2705516FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_27054FCC4(uint64_t a1)
{
  v2 = sub_2705519EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27054FD00(uint64_t a1)
{
  v2 = sub_2705519EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_27054FD3C(uint64_t a1)
{
  v2 = sub_270551944();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27054FD78(uint64_t a1)
{
  v2 = sub_270551944();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_27054FDB4(uint64_t a1)
{
  v2 = sub_270551998();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27054FDF0(uint64_t a1)
{
  v2 = sub_270551998();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_27054FE2C(uint64_t a1@<X8>)
{
  sub_27054F4FC();
  if (!v1)
  {
    *a1 = v3;
    *(a1 + 8) = v4;
  }
}

uint64_t sub_27054FE7C(uint64_t a1)
{
  v2 = sub_2705522E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27054FEB8(uint64_t a1)
{
  v2 = sub_2705522E8();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_27054FF24()
{
  OUTLINED_FUNCTION_42_1();
  v1 = v0;
  v3 = v2;
  v55 = v4;
  v6 = v5;
  v8 = v7;
  v9 = sub_2705D6524();
  v10 = OUTLINED_FUNCTION_23_0(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_4_0();
  if (qword_2807CE838 != -1)
  {
    OUTLINED_FUNCTION_0_64();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0);
  v11 = sub_2705D6574();
  OUTLINED_FUNCTION_1_1(v11);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_2705F38E0;
  type metadata accessor for CGSize(0);
  v54 = v13;
  v61 = v13;
  v59 = v3;
  v60 = v1;
  v14 = AMSLogKey();
  v15 = MEMORY[0x277D837D0];
  if (v14)
  {
    v16 = v14;
    v17 = sub_2705D7564();
    v19 = v18;

    OUTLINED_FUNCTION_19_23();
    OUTLINED_FUNCTION_9_7();
    sub_2705D6504();
    OUTLINED_FUNCTION_2_75();
    MetatypeMetadata = swift_getMetatypeMetadata();
    OUTLINED_FUNCTION_5_65(MetatypeMetadata);
    sub_2704B667C(&v56);
    OUTLINED_FUNCTION_7_24();
    v58 = v15;
    v56 = v17;
    v57 = v19;
    sub_2705D64E4();
  }

  else
  {
    OUTLINED_FUNCTION_18_22();
    OUTLINED_FUNCTION_9_7();
    sub_2705D6504();
    OUTLINED_FUNCTION_2_75();
    v21 = swift_getMetatypeMetadata();
    OUTLINED_FUNCTION_5_65(v21);
  }

  sub_2704B667C(&v56);
  OUTLINED_FUNCTION_44_6();
  sub_2705D6534();
  __swift_destroy_boxed_opaque_existential_1(&v59);
  sub_2705D64C4();
  v22 = MEMORY[0x277D839F8];
  v61 = MEMORY[0x277D839F8];
  v59 = v8;
  sub_2705D6544();
  sub_2704B667C(&v59);
  v61 = v22;
  v59 = v6;
  sub_2705D6544();
  sub_2704B667C(&v59);
  v61 = MEMORY[0x277D839B0];
  LOBYTE(v59) = v55 & 1;
  sub_2705D6544();
  sub_2704B667C(&v59);
  sub_27047CF60(v12);

  if (v1 <= 0.0 || v3 <= 0.0)
  {
    v26 = OUTLINED_FUNCTION_48_3();
    *(v26 + 16) = xmmword_2705E10F0;
    v61 = v54;
    v59 = v3;
    v60 = v1;
    v28 = AMSLogKey();
    if (v28)
    {
      v29 = v28;
      v30 = sub_2705D7564();
      v32 = v31;

      OUTLINED_FUNCTION_19_23();
      OUTLINED_FUNCTION_9_7();
      sub_2705D6504();
      OUTLINED_FUNCTION_2_75();
      v33 = swift_getMetatypeMetadata();
      OUTLINED_FUNCTION_5_65(v33);
      sub_2704B667C(&v56);
      OUTLINED_FUNCTION_7_24();
      v58 = MEMORY[0x277D837D0];
      v56 = v30;
      v57 = v32;
      sub_2705D64E4();
    }

    else
    {
      OUTLINED_FUNCTION_18_22();
      OUTLINED_FUNCTION_9_7();
      sub_2705D6504();
      OUTLINED_FUNCTION_2_75();
      v36 = swift_getMetatypeMetadata();
      OUTLINED_FUNCTION_5_65(v36);
    }

    sub_2704B667C(&v56);
    OUTLINED_FUNCTION_44_6();
    OUTLINED_FUNCTION_51_6();
    __swift_destroy_boxed_opaque_existential_1(&v59);
    sub_2705D64C4();
    v61 = v54;
    v59 = v3;
    v60 = v1;
    sub_2705D6544();
    sub_2704B667C(&v59);
    goto LABEL_22;
  }

  if (v6 <= 0.0 || v8 <= 0.0)
  {
    v34 = swift_allocObject();
    if (OUTLINED_FUNCTION_13_35(v34, xmmword_2705EB880))
    {
      sub_2705D7564();
      OUTLINED_FUNCTION_66_5();
      OUTLINED_FUNCTION_19_23();
      OUTLINED_FUNCTION_9_7();
      sub_2705D6504();
      OUTLINED_FUNCTION_2_75();
      v35 = swift_getMetatypeMetadata();
      OUTLINED_FUNCTION_5_65(v35);
      sub_2704B667C(&v56);
      OUTLINED_FUNCTION_7_24();
      OUTLINED_FUNCTION_37_11(MEMORY[0x277D837D0]);
    }

    else
    {
      OUTLINED_FUNCTION_18_22();
      OUTLINED_FUNCTION_9_7();
      sub_2705D6504();
      OUTLINED_FUNCTION_2_75();
      v37 = swift_getMetatypeMetadata();
      OUTLINED_FUNCTION_5_65(v37);
    }

    sub_2704B667C(&v56);
    OUTLINED_FUNCTION_44_6();
    OUTLINED_FUNCTION_51_6();
    __swift_destroy_boxed_opaque_existential_1(&v59);
    sub_2705D64C4();
    v61 = v22;
    v59 = v8;
    sub_2705D6544();
    sub_2704B667C(&v59);
    v61 = v22;
    v59 = v6;
    sub_2705D6544();
    sub_2704B667C(&v59);
    sub_27047CF90(v34);
  }

  else if (v55)
  {
    v23 = v6;
    v24 = fabs(v8);
    if ((~*&v6 & 0x7FF0000000000000) != 0)
    {
      v25 = v6 / v1;
    }

    else
    {
      v25 = INFINITY;
      if ((*&v23 & 0xFFFFFFFFFFFFFLL) == 0 && v24 == INFINITY)
      {
        v26 = swift_allocObject();
        if (OUTLINED_FUNCTION_13_35(v26, xmmword_2705E6EB0))
        {
LABEL_15:
          sub_2705D7564();
          OUTLINED_FUNCTION_66_5();
          OUTLINED_FUNCTION_19_23();
          OUTLINED_FUNCTION_9_7();
          sub_2705D6504();
          OUTLINED_FUNCTION_2_75();
          v27 = swift_getMetatypeMetadata();
          OUTLINED_FUNCTION_5_65(v27);
          sub_2704B667C(&v56);
          OUTLINED_FUNCTION_7_24();
          OUTLINED_FUNCTION_37_11(MEMORY[0x277D837D0]);
LABEL_46:
          sub_2704B667C(&v56);
          OUTLINED_FUNCTION_44_6();
          OUTLINED_FUNCTION_51_6();
          __swift_destroy_boxed_opaque_existential_1(&v59);
          sub_2705D64C4();
LABEL_22:
          sub_27047CF78(v26);

          goto LABEL_44;
        }

LABEL_45:
        OUTLINED_FUNCTION_18_22();
        OUTLINED_FUNCTION_9_7();
        sub_2705D6504();
        OUTLINED_FUNCTION_2_75();
        v52 = swift_getMetatypeMetadata();
        OUTLINED_FUNCTION_5_65(v52);
        goto LABEL_46;
      }
    }

    if (v24 == INFINITY)
    {
      v38 = INFINITY;
    }

    else
    {
      v38 = v8 / v3;
    }

    v39 = v38;
    if (v25 >= v38)
    {
      v40 = v38;
    }

    else
    {
      v40 = v25;
    }

    v41 = OUTLINED_FUNCTION_48_3();
    *(v41 + 16) = xmmword_2705E10F0;
    v61 = v54;
    v59 = v3;
    v60 = v1;
    v42 = AMSLogKey();
    if (v42)
    {
      v43 = v42;
      v44 = sub_2705D7564();
      v53 = v45;

      OUTLINED_FUNCTION_19_23();
      OUTLINED_FUNCTION_9_7();
      sub_2705D6504();
      OUTLINED_FUNCTION_2_75();
      v46 = swift_getMetatypeMetadata();
      OUTLINED_FUNCTION_5_65(v46);
      sub_2704B667C(&v56);
      OUTLINED_FUNCTION_7_24();
      v58 = MEMORY[0x277D837D0];
      v56 = v44;
      v57 = v53;
      sub_2705D64E4();
    }

    else
    {
      OUTLINED_FUNCTION_18_22();
      OUTLINED_FUNCTION_9_7();
      sub_2705D6504();
      OUTLINED_FUNCTION_2_75();
      v47 = swift_getMetatypeMetadata();
      OUTLINED_FUNCTION_5_65(v47);
    }

    sub_2704B667C(&v56);
    OUTLINED_FUNCTION_44_6();
    sub_2705D6534();
    __swift_destroy_boxed_opaque_existential_1(&v59);
    sub_2705D64C4();
    v61 = v22;
    v59 = v39;
    sub_2705D6544();
    sub_2704B667C(&v59);
    sub_27047CF60(v41);

    v48 = OUTLINED_FUNCTION_48_3();
    if (OUTLINED_FUNCTION_13_35(v48, xmmword_2705E10F0))
    {
      sub_2705D7564();
      OUTLINED_FUNCTION_66_5();
      OUTLINED_FUNCTION_19_23();
      OUTLINED_FUNCTION_9_7();
      sub_2705D6504();
      OUTLINED_FUNCTION_2_75();
      v49 = swift_getMetatypeMetadata();
      OUTLINED_FUNCTION_5_65(v49);
      sub_2704B667C(&v56);
      OUTLINED_FUNCTION_7_24();
      OUTLINED_FUNCTION_37_11(MEMORY[0x277D837D0]);
    }

    else
    {
      OUTLINED_FUNCTION_18_22();
      OUTLINED_FUNCTION_9_7();
      sub_2705D6504();
      OUTLINED_FUNCTION_2_75();
      v50 = swift_getMetatypeMetadata();
      OUTLINED_FUNCTION_5_65(v50);
    }

    sub_2704B667C(&v56);
    OUTLINED_FUNCTION_44_6();
    OUTLINED_FUNCTION_51_6();
    __swift_destroy_boxed_opaque_existential_1(&v59);
    sub_2705D64C4();
    v61 = v22;
    v59 = v25;
    sub_2705D6544();
    sub_2704B667C(&v59);
    sub_27047CF60(v48);

    OUTLINED_FUNCTION_17_27(v40 * v3, 100000.0);
    OUTLINED_FUNCTION_17_27(v40 * v1, v51);
  }

  else if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    v26 = swift_allocObject();
    if (OUTLINED_FUNCTION_13_35(v26, xmmword_2705E6EB0))
    {
      goto LABEL_15;
    }

    goto LABEL_45;
  }

LABEL_44:
  OUTLINED_FUNCTION_41_1();
}

void sub_270550964()
{
  OUTLINED_FUNCTION_42_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_2705D6524();
  v11 = OUTLINED_FUNCTION_23_0(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_4_0();
  if (v1 == 0.0 || v3 == 0.0)
  {
    if (qword_2807CE838 != -1)
    {
      OUTLINED_FUNCTION_0_64();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0);
    v12 = sub_2705D6574();
    OUTLINED_FUNCTION_1_1(v12);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_2705E10F0;
    type metadata accessor for CGSize(0);
    v15 = v14;
    v39 = v14;
    v37 = v3;
    v38 = v1;
    v16 = AMSLogKey();
    if (v16)
    {
      v17 = v16;
      v18 = sub_2705D7564();
      v20 = v19;

      OUTLINED_FUNCTION_35_15();
      OUTLINED_FUNCTION_9_7();
      sub_2705D6504();
      __swift_project_boxed_opaque_existential_1(&v37, v39);
      DynamicType = swift_getDynamicType();
      MetatypeMetadata = swift_getMetatypeMetadata();
      v34 = DynamicType;
      sub_2705D64E4();
      sub_2704B667C(&v34);
      OUTLINED_FUNCTION_7_24();
      MetatypeMetadata = MEMORY[0x277D837D0];
      v34 = v18;
      v35 = v20;
      sub_2705D64E4();
    }

    else
    {
      OUTLINED_FUNCTION_34_17();
      OUTLINED_FUNCTION_9_7();
      sub_2705D6504();
      __swift_project_boxed_opaque_existential_1(&v37, v39);
      v31 = swift_getDynamicType();
      MetatypeMetadata = swift_getMetatypeMetadata();
      v34 = v31;
      sub_2705D64E4();
    }

    sub_2704B667C(&v34);
    sub_2705D6504();
    sub_2705D6534();
    __swift_destroy_boxed_opaque_existential_1(&v37);
    sub_2705D64C4();
    v39 = v15;
    v37 = v3;
    v38 = v1;
    sub_2705D6544();
    sub_2704B667C(&v37);
    sub_27047CF78(v13);
    goto LABEL_19;
  }

  if (v7 <= 0.0 || v9 <= 0.0 || v5 <= 0.0)
  {
    if (qword_2807CE838 != -1)
    {
      OUTLINED_FUNCTION_0_64();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0);
    v22 = sub_2705D6574();
    OUTLINED_FUNCTION_1_1(v22);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_2705F38E0;
    type metadata accessor for CGSize(0);
    v39 = v24;
    v37 = v3;
    v38 = v1;
    v25 = AMSLogKey();
    if (v25)
    {
      v26 = v25;
      v27 = sub_2705D7564();
      v29 = v28;

      OUTLINED_FUNCTION_35_15();
      OUTLINED_FUNCTION_9_7();
      sub_2705D6504();
      __swift_project_boxed_opaque_existential_1(&v37, v39);
      v30 = swift_getDynamicType();
      MetatypeMetadata = swift_getMetatypeMetadata();
      v34 = v30;
      sub_2705D64E4();
      sub_2704B667C(&v34);
      OUTLINED_FUNCTION_7_24();
      MetatypeMetadata = MEMORY[0x277D837D0];
      v34 = v27;
      v35 = v29;
      sub_2705D64E4();
    }

    else
    {
      OUTLINED_FUNCTION_34_17();
      OUTLINED_FUNCTION_9_7();
      sub_2705D6504();
      __swift_project_boxed_opaque_existential_1(&v37, v39);
      v32 = swift_getDynamicType();
      MetatypeMetadata = swift_getMetatypeMetadata();
      v34 = v32;
      sub_2705D64E4();
    }

    sub_2704B667C(&v34);
    sub_2705D6504();
    sub_2705D6534();
    __swift_destroy_boxed_opaque_existential_1(&v37);
    sub_2705D64C4();
    v33 = MEMORY[0x277D839F8];
    v39 = MEMORY[0x277D839F8];
    v37 = v9;
    sub_2705D6544();
    sub_2704B667C(&v37);
    v39 = v33;
    v37 = v7;
    sub_2705D6544();
    sub_2704B667C(&v37);
    v39 = v33;
    v37 = v5;
    sub_2705D6544();
    sub_2704B667C(&v37);
    sub_27047CF90(v23);
LABEL_19:

    goto LABEL_20;
  }

  sqrt(v3 / v1 * v5);
LABEL_20:
  OUTLINED_FUNCTION_41_1();
}

uint64_t sub_270550EEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = OBJC_IVAR____TtCV19UnifiedMessagingKit22VisualAreaMediaArtwork13Configuration_horizontalAlignment;
  *(v3 + v7) = sub_2705D53C4();
  sub_2705D6704();
  *(v3 + 16) = sub_270550FE0();
  *(v3 + 24) = v8;
  v9 = OBJC_IVAR____TtCV19UnifiedMessagingKit22VisualAreaMediaArtwork13Configuration_mediaArtwork;
  sub_2705D6734();
  OUTLINED_FUNCTION_4_4();
  (*(v10 + 32))(v4 + v9, a2);
  *(v4 + v7) = a3;
  return v4;
}

double sub_270550FE0()
{
  v4 = OUTLINED_FUNCTION_42_9();
  v5 = OUTLINED_FUNCTION_23_0(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_0();
  if (qword_2807CE838 != -1)
  {
    OUTLINED_FUNCTION_0_64();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0);
  v6 = sub_2705D6574();
  OUTLINED_FUNCTION_1_1(v6);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_2705E10F0;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7118);
  v47 = v0;
  v52 = v46;
  v51[0] = v0;
  v8 = AMSLogKey();
  v9 = MEMORY[0x277D837D0];
  if (v8)
  {
    v10 = v8;
    v11 = sub_2705D7564();
    v13 = v12;

    OUTLINED_FUNCTION_35_15();
    OUTLINED_FUNCTION_9_7();
    sub_2705D6504();
    OUTLINED_FUNCTION_4_62();
    MetatypeMetadata = swift_getMetatypeMetadata();
    OUTLINED_FUNCTION_6_61(MetatypeMetadata);
    sub_2704B667C(&v48);
    OUTLINED_FUNCTION_7_24();
    v50 = v9;
    v48 = v11;
    v49 = v13;
    sub_2705D64E4();
  }

  else
  {
    OUTLINED_FUNCTION_34_17();
    OUTLINED_FUNCTION_9_7();
    sub_2705D6504();
    OUTLINED_FUNCTION_4_62();
    v15 = swift_getMetatypeMetadata();
    OUTLINED_FUNCTION_6_61(v15);
  }

  sub_2704B667C(&v48);
  OUTLINED_FUNCTION_65_6();
  sub_2705D6534();
  __swift_destroy_boxed_opaque_existential_1(v51);
  OUTLINED_FUNCTION_32_14();
  type metadata accessor for CGSize(0);
  OUTLINED_FUNCTION_49_5(v16);
  sub_2704B667C(v51);
  sub_27047CE48(v7);

  v17 = MEMORY[0x277D837D0];
  switch(*(v1 + 24) >> 61)
  {
    case 1:
      v28 = OUTLINED_FUNCTION_39_8();
      if (v22)
      {
        OUTLINED_FUNCTION_52_4();
      }

      else
      {
        if (v27 == 1)
        {
          v29 = v28 * v3;
        }

        else
        {
          v29 = v28 * v2;
        }

        OUTLINED_FUNCTION_8_51(v29, 100000000.0);
      }

      OUTLINED_FUNCTION_38_10();
      if (!v22)
      {
        OUTLINED_FUNCTION_25_23();
      }

      goto LABEL_45;
    case 2:
      v21 = OUTLINED_FUNCTION_39_8();
      if (v22)
      {
        OUTLINED_FUNCTION_52_4();
      }

      else
      {
        if (v20 == 1)
        {
          v23 = v21 * v3;
        }

        else
        {
          v23 = v21 * v2;
        }

        OUTLINED_FUNCTION_8_51(v23, 100000000.0);
      }

      OUTLINED_FUNCTION_38_10();
      if (!v22)
      {
        OUTLINED_FUNCTION_25_23();
      }

LABEL_45:
      sub_27054FF24();
      goto LABEL_46;
    case 3:
      v25 = OUTLINED_FUNCTION_39_8();
      if (!v22)
      {
        if (v24 == 1)
        {
          v26 = v25 * v3;
        }

        else
        {
          v26 = v25 * v2;
        }

        OUTLINED_FUNCTION_8_51(v26, 100000000.0);
      }

      OUTLINED_FUNCTION_38_10();
      if (v22)
      {
        OUTLINED_FUNCTION_52_4();
      }

      sub_270550964();
LABEL_46:
      v18 = v36;
      goto LABEL_47;
    case 4:
      v18 = *v1;
      if (*(v1 + 8))
      {
        if (*(v1 + 8) == 1)
        {
          v19 = v18 * v3;
        }

        else
        {
          v19 = v18 * v2;
        }

        v33 = OUTLINED_FUNCTION_17_27(v19, 100000000.0);
        v18 = v33 / v34;
      }

      else
      {
        OUTLINED_FUNCTION_52_4();
      }

      if (v30)
      {
        if (v30 == 1)
        {
          v35 = v31 * v3;
        }

        else
        {
          v35 = v31 * v2;
        }

        OUTLINED_FUNCTION_17_27(v35, *(v32 + 2648));
      }

LABEL_47:
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_2705E6EB0;
      v52 = v46;
      v51[0] = v47;
      v38 = AMSLogKey();
      if (v38)
      {
        v39 = v38;
        v40 = sub_2705D7564();
        v42 = v41;

        OUTLINED_FUNCTION_35_15();
        OUTLINED_FUNCTION_9_7();
        sub_2705D6504();
        OUTLINED_FUNCTION_4_62();
        v43 = swift_getMetatypeMetadata();
        OUTLINED_FUNCTION_6_61(v43);
        sub_2704B667C(&v48);
        OUTLINED_FUNCTION_7_24();
        v50 = v17;
        v48 = v40;
        v49 = v42;
        sub_2705D64E4();
      }

      else
      {
        OUTLINED_FUNCTION_34_17();
        OUTLINED_FUNCTION_9_7();
        sub_2705D6504();
        OUTLINED_FUNCTION_4_62();
        v44 = swift_getMetatypeMetadata();
        OUTLINED_FUNCTION_6_61(v44);
      }

      sub_2704B667C(&v48);
      OUTLINED_FUNCTION_65_6();
      sub_2705D6534();
      __swift_destroy_boxed_opaque_existential_1(v51);
      OUTLINED_FUNCTION_63_6();
      sub_2704B667C(v51);
      sub_27047CE48(v37);

      break;
    default:
      v18 = *v1;
      break;
  }

  return v18;
}

uint64_t sub_270551584()
{
  v1 = OBJC_IVAR____TtCV19UnifiedMessagingKit22VisualAreaMediaArtwork13Configuration_mediaArtwork;
  sub_2705D6734();
  OUTLINED_FUNCTION_4_4();
  (*(v2 + 8))(v0 + v1);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_270551644()
{
  result = sub_2705D6734();
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

unint64_t sub_2705516FC()
{
  result = qword_2807D7140;
  if (!qword_2807D7140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D7140);
  }

  return result;
}

void *sub_270551750@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2705D6734();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_4_0();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D23C0);
  OUTLINED_FUNCTION_23_0(v12);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_31_0();
  *v2 = *(a1 + OBJC_IVAR____TtCV19UnifiedMessagingKit22VisualAreaMediaArtwork13Configuration_horizontalAlignment);
  *(v2 + 8) = 0;
  *(v2 + 16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D23C8);
  (*(v7 + 16))(v11, a1 + OBJC_IVAR____TtCV19UnifiedMessagingKit22VisualAreaMediaArtwork13Configuration_mediaArtwork, v5);
  sub_2705D6714();
  (*(v7 + 8))(v11, v5);
  sub_2705D60A4();
  sub_2705D5094();
  sub_270552278(v2, a2);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D23D0);
  return memcpy((a2 + *(v14 + 36)), __src, 0x70uLL);
}

unint64_t sub_270551944()
{
  result = qword_2807D7148;
  if (!qword_2807D7148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D7148);
  }

  return result;
}

unint64_t sub_270551998()
{
  result = qword_2807D7150;
  if (!qword_2807D7150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D7150);
  }

  return result;
}

unint64_t sub_2705519EC()
{
  result = qword_2807D7158;
  if (!qword_2807D7158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D7158);
  }

  return result;
}

_BYTE *sub_270551A74(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x270551B10);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MediaSize.Constraints(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      v3 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24) >> 2;
      if (v2 > 0x80000000)
      {
        v3 = ~v2;
      }

      else
      {
        v3 = -1;
      }
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for MediaSize.Constraints(uint64_t result, int a2, int a3)
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
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = 4 * -a2;
      *(result + 32) = 0;
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

unint64_t sub_270551C64()
{
  result = qword_2807D7180;
  if (!qword_2807D7180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D7180);
  }

  return result;
}

unint64_t sub_270551CBC()
{
  result = qword_2807D7188;
  if (!qword_2807D7188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D7188);
  }

  return result;
}

unint64_t sub_270551D14()
{
  result = qword_2807D7190;
  if (!qword_2807D7190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D7190);
  }

  return result;
}

unint64_t sub_270551D6C()
{
  result = qword_2807D7198;
  if (!qword_2807D7198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D7198);
  }

  return result;
}

unint64_t sub_270551DC4()
{
  result = qword_2807D71A0;
  if (!qword_2807D71A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D71A0);
  }

  return result;
}

unint64_t sub_270551E1C()
{
  result = qword_2807D71A8;
  if (!qword_2807D71A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D71A8);
  }

  return result;
}

unint64_t sub_270551E74()
{
  result = qword_2807D71B0;
  if (!qword_2807D71B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D71B0);
  }

  return result;
}

unint64_t sub_270551ECC()
{
  result = qword_2807D71B8;
  if (!qword_2807D71B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D71B8);
  }

  return result;
}

unint64_t sub_270551F24()
{
  result = qword_2807D71C0;
  if (!qword_2807D71C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D71C0);
  }

  return result;
}

unint64_t sub_270551F7C()
{
  result = qword_2807D71C8;
  if (!qword_2807D71C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D71C8);
  }

  return result;
}

unint64_t sub_270551FD4()
{
  result = qword_2807D71D0;
  if (!qword_2807D71D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D71D0);
  }

  return result;
}

unint64_t sub_27055202C()
{
  result = qword_2807D71D8;
  if (!qword_2807D71D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D71D8);
  }

  return result;
}

unint64_t sub_270552080()
{
  result = qword_2807D7210;
  if (!qword_2807D7210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D7210);
  }

  return result;
}

unint64_t sub_2705520D4()
{
  result = qword_2807D7218;
  if (!qword_2807D7218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D7218);
  }

  return result;
}

unint64_t sub_270552128()
{
  result = qword_2807D7220;
  if (!qword_2807D7220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D7220);
  }

  return result;
}

unint64_t sub_27055217C()
{
  result = qword_2807D7228;
  if (!qword_2807D7228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D7228);
  }

  return result;
}

unint64_t sub_2705521D0()
{
  result = qword_2807D7230;
  if (!qword_2807D7230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D7230);
  }

  return result;
}

unint64_t sub_270552224()
{
  result = qword_2807D7238;
  if (!qword_2807D7238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D7238);
  }

  return result;
}

uint64_t sub_270552278(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D23C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2705522E8()
{
  result = qword_2807D7278;
  if (!qword_2807D7278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D7278);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MediaSize.Constraints.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x270552418);
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

_BYTE *sub_270552488(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x270552550);
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
          result = OUTLINED_FUNCTION_14_8(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_270552588(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x270552650);
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
          result = OUTLINED_FUNCTION_14_8(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_27055268C()
{
  result = qword_2807D7280;
  if (!qword_2807D7280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D23D0);
    sub_270552718();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D7280);
  }

  return result;
}

unint64_t sub_270552718()
{
  result = qword_2807D7288;
  if (!qword_2807D7288)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D23C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D7288);
  }

  return result;
}

unint64_t sub_270552780()
{
  result = qword_2807D7290;
  if (!qword_2807D7290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D7290);
  }

  return result;
}

unint64_t sub_2705527D8()
{
  result = qword_2807D7298;
  if (!qword_2807D7298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D7298);
  }

  return result;
}

unint64_t sub_270552830()
{
  result = qword_2807D72A0;
  if (!qword_2807D72A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D72A0);
  }

  return result;
}

unint64_t sub_270552888()
{
  result = qword_2807D72A8;
  if (!qword_2807D72A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D72A8);
  }

  return result;
}

unint64_t sub_2705528E0()
{
  result = qword_2807D72B0;
  if (!qword_2807D72B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D72B0);
  }

  return result;
}

unint64_t sub_270552938()
{
  result = qword_2807D72B8;
  if (!qword_2807D72B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D72B8);
  }

  return result;
}

unint64_t sub_270552990()
{
  result = qword_2807D72C0;
  if (!qword_2807D72C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D72C0);
  }

  return result;
}

unint64_t sub_2705529E8()
{
  result = qword_2807D72C8;
  if (!qword_2807D72C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D72C8);
  }

  return result;
}

unint64_t sub_270552A40()
{
  result = qword_2807D72D0;
  if (!qword_2807D72D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D72D0);
  }

  return result;
}

unint64_t sub_270552A98()
{
  result = qword_2807D72D8;
  if (!qword_2807D72D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D72D8);
  }

  return result;
}

unint64_t sub_270552AF0()
{
  result = qword_2807D72E0;
  if (!qword_2807D72E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D72E0);
  }

  return result;
}

unint64_t sub_270552B48()
{
  result = qword_2807D72E8;
  if (!qword_2807D72E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D72E8);
  }

  return result;
}

unint64_t sub_270552BA0()
{
  result = qword_2807D72F0;
  if (!qword_2807D72F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D72F0);
  }

  return result;
}

unint64_t sub_270552BF8()
{
  result = qword_2807D72F8;
  if (!qword_2807D72F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D72F8);
  }

  return result;
}

unint64_t sub_270552C50()
{
  result = qword_2807D7300;
  if (!qword_2807D7300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D7300);
  }

  return result;
}

unint64_t sub_270552CA8()
{
  result = qword_2807D7308;
  if (!qword_2807D7308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D7308);
  }

  return result;
}

unint64_t sub_270552D00()
{
  result = qword_2807D7310;
  if (!qword_2807D7310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D7310);
  }

  return result;
}

unint64_t sub_270552D58()
{
  result = qword_2807D7318;
  if (!qword_2807D7318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D7318);
  }

  return result;
}

unint64_t sub_270552DB0()
{
  result = qword_2807D7320;
  if (!qword_2807D7320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D7320);
  }

  return result;
}

unint64_t sub_270552E08()
{
  result = qword_2807D7328;
  if (!qword_2807D7328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D7328);
  }

  return result;
}

uint64_t sub_270552E90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_2705D6734();

  return __swift_getEnumTagSinglePayload(a1 + v5, a2, v6);
}

uint64_t sub_270552EF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_2705D6734();

  return __swift_storeEnumTagSinglePayload(a1 + v6, a2, a2, v7);
}

void sub_270552F50()
{
  type metadata accessor for CGSize(319);
  if (v0 <= 0x3F)
  {
    sub_2705D6734();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t OUTLINED_FUNCTION_2_75()
{
  __swift_project_boxed_opaque_existential_1((v0 - 168), *(v0 - 144));

  return swift_getDynamicType();
}

uint64_t OUTLINED_FUNCTION_4_62()
{
  __swift_project_boxed_opaque_existential_1((v0 - 144), *(v0 - 120));

  return swift_getDynamicType();
}

uint64_t OUTLINED_FUNCTION_5_65(uint64_t a1)
{
  *(v2 - 176) = a1;
  *(v2 - 200) = v1;

  return sub_2705D64E4();
}

uint64_t OUTLINED_FUNCTION_6_61(uint64_t a1)
{
  *(v2 - 152) = a1;
  *(v2 - 176) = v1;

  return sub_2705D64E4();
}

uint64_t OUTLINED_FUNCTION_13_35(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  *(v2 - 144) = *(v2 - 224);
  *(v2 - 168) = v5;
  *(v2 - 160) = v4;

  return AMSLogKey();
}

uint64_t OUTLINED_FUNCTION_18_22()
{

  return sub_2705D6514();
}

uint64_t OUTLINED_FUNCTION_19_23()
{

  return sub_2705D6514();
}

uint64_t OUTLINED_FUNCTION_32_14()
{

  return sub_2705D64C4();
}

uint64_t OUTLINED_FUNCTION_33_15()
{

  return sub_2705D7ED4();
}

uint64_t OUTLINED_FUNCTION_34_17()
{

  return sub_2705D6514();
}

uint64_t OUTLINED_FUNCTION_35_15()
{

  return sub_2705D6514();
}

uint64_t OUTLINED_FUNCTION_37_11@<X0>(uint64_t a1@<X8>)
{
  *(v3 - 176) = a1;
  *(v3 - 200) = v1;
  *(v3 - 192) = v2;

  return sub_2705D64E4();
}

uint64_t OUTLINED_FUNCTION_42_9()
{

  return sub_2705D6524();
}

uint64_t OUTLINED_FUNCTION_44_6()
{

  return sub_2705D6504();
}

unint64_t OUTLINED_FUNCTION_45_8()
{
  *(v2 - 96) = v0;
  *(v2 - 88) = v1;
  *(v2 - 97) = 0;

  return sub_270403A2C();
}

uint64_t OUTLINED_FUNCTION_48_3()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_49_5(uint64_t a1)
{
  *(v1 - 120) = a1;
  *(v1 - 144) = v4;
  *(v1 - 136) = v3;

  return sub_2705D6544();
}

uint64_t OUTLINED_FUNCTION_50_7()
{

  return sub_2705D7FE4();
}

uint64_t OUTLINED_FUNCTION_51_6()
{

  return sub_2705D6534();
}

uint64_t OUTLINED_FUNCTION_63_6()
{
  *(v1 - 120) = v0;
  *(v1 - 144) = v3;
  *(v1 - 136) = v4;

  return sub_2705D6544();
}

uint64_t OUTLINED_FUNCTION_65_6()
{

  return sub_2705D6504();
}

void OUTLINED_FUNCTION_66_5()
{
}

id sub_270553464()
{
  v1 = [objc_opt_self() ams_sharedAccountStore];
  v2 = OUTLINED_FUNCTION_6_62();
  v3 = sub_2705534B8(v2);

  return v3;
}

id sub_2705534B8(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v3 = [v1 ams:v2 iTunesAccountWithDSID:?];

  return v3;
}

id sub_270553524()
{
  v1 = [v0 ams_activeiTunesAccount];

  return v1;
}

id sub_27055355C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a3)
  {
    v8 = sub_2705D7534();
  }

  else
  {
    v8 = 0;
  }

  v9 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  if (a5)
  {
    a5 = sub_2705D7534();
  }

  v10 = [v5 ams:v8 accountWithAltDSID:v9 DSID:a5 username:*MEMORY[0x277CB8D58] accountTypeIdentifier:?];

  return v10;
}

uint64_t sub_270553694(unsigned __int8 a1, char a2)
{
  v2 = 0xE900000000000073;
  v3 = 0x636974796C616E61;
  v4 = a1;
  v5 = 0x636974796C616E61;
  v6 = 0xE900000000000073;
  switch(v4)
  {
    case 1:
      v6 = 0xE800000000000000;
      v5 = 0x6C616E7265746E69;
      break;
    case 2:
      v6 = 0xE800000000000000;
      v5 = 0x7379656E72756F6ALL;
      break;
    case 3:
      v5 = 0x6E656D6D6F636572;
      v6 = 0xEF736E6F69746164;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v2 = 0xE800000000000000;
      v3 = 0x6C616E7265746E69;
      break;
    case 2:
      v2 = 0xE800000000000000;
      v3 = 0x7379656E72756F6ALL;
      break;
    case 3:
      v3 = 0x6E656D6D6F636572;
      v2 = 0xEF736E6F69746164;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_16_12();
  }

  return v8 & 1;
}

uint64_t sub_270553814(unsigned __int8 a1, char a2)
{
  v2 = 0xEA00000000006E6FLL;
  v3 = 0x69746375646F7250;
  v4 = a1;
  v5 = 0x69746375646F7250;
  v6 = 0xEA00000000006E6FLL;
  switch(v4)
  {
    case 1:
      v6 = 0xE500000000000000;
      v5 = 0x7972726143;
      break;
    case 2:
      v5 = 0x65706F6C65766544;
      v6 = 0xE900000000000072;
      break;
    case 3:
      v5 = 0x75646F7270657250;
      v6 = 0xED00006E6F697463;
      break;
    case 4:
      v5 = 0x696D627573657250;
      v6 = 0xED00006E6F697373;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v2 = 0xE500000000000000;
      v3 = 0x7972726143;
      break;
    case 2:
      v3 = 0x65706F6C65766544;
      v2 = 0xE900000000000072;
      break;
    case 3:
      v3 = 0x75646F7270657250;
      v2 = 0xED00006E6F697463;
      break;
    case 4:
      v3 = 0x696D627573657250;
      v2 = 0xED00006E6F697373;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_16_12();
  }

  return v8 & 1;
}

uint64_t sub_2705539DC(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x656D69547473616CLL;
  }

  else
  {
    v3 = 0x53676F6C6B636162;
  }

  if (v2)
  {
    v4 = 0xEB00000000657A69;
  }

  else
  {
    v4 = 0xEC000000656E6F5ALL;
  }

  if (a2)
  {
    v5 = 0x656D69547473616CLL;
  }

  else
  {
    v5 = 0x53676F6C6B636162;
  }

  if (a2)
  {
    v6 = 0xEC000000656E6F5ALL;
  }

  else
  {
    v6 = 0xEB00000000657A69;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_2_28();
  }

  return v8 & 1;
}

uint64_t sub_270553A80(unsigned __int8 a1, char a2)
{
  v2 = 0xEF7365686374616DLL;
  v3 = 0x5F796C7463617865;
  v4 = a1;
  v5 = 0x5F796C7463617865;
  v6 = 0xEF7365686374616DLL;
  switch(v4)
  {
    case 1:
      v5 = 0x617571655F746F6ELL;
      v6 = 0xE90000000000006CLL;
      break;
    case 2:
      v6 = 0xE800000000000000;
      v5 = 0x736E6961746E6F63;
      break;
    case 3:
      v8 = 1701998445;
      goto LABEL_7;
    case 4:
      v7 = 1701998445;
      goto LABEL_9;
    case 5:
      v8 = 1936942444;
LABEL_7:
      v5 = v8 | 0x6168745F00000000;
      v6 = 0xE90000000000006ELL;
      break;
    case 6:
      v7 = 1936942444;
LABEL_9:
      v5 = v7 | 0x6168745F00000000;
      v6 = 0xEF6C617571655F6ELL;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = 0x617571655F746F6ELL;
      v2 = 0xE90000000000006CLL;
      break;
    case 2:
      v2 = 0xE800000000000000;
      v3 = 0x736E6961746E6F63;
      break;
    case 3:
      v10 = 1701998445;
      goto LABEL_16;
    case 4:
      v9 = 1701998445;
      goto LABEL_18;
    case 5:
      v10 = 1936942444;
LABEL_16:
      v3 = v10 | 0x6168745F00000000;
      v2 = 0xE90000000000006ELL;
      break;
    case 6:
      v9 = 1936942444;
LABEL_18:
      v3 = v9 | 0x6168745F00000000;
      v2 = 0xEF6C617571655F6ELL;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v12 = 1;
  }

  else
  {
    v12 = OUTLINED_FUNCTION_16_12();
  }

  return v12 & 1;
}

uint64_t sub_270553C94(unsigned __int8 a1, char a2)
{
  v2 = 0x656E6F687049;
  v3 = 0xE600000000000000;
  v4 = a1;
  v5 = 0x656E6F687049;
  switch(v4)
  {
    case 1:
      v3 = 0xE400000000000000;
      v5 = 1684107337;
      break;
    case 2:
      v3 = 0xE700000000000000;
      v5 = 0x7654656C707041;
      break;
    case 3:
      v3 = 0xE500000000000000;
      v5 = 0x6863746157;
      break;
    case 4:
      v3 = 0xE700000000000000;
      v5 = 0x706F746B736544;
      break;
    case 5:
      v5 = 0x447974696C616552;
      v3 = 0xED00006563697665;
      break;
    case 6:
      v3 = 0xE700000000000000;
      v5 = 0x6E776F6E6B6E55;
      break;
    default:
      break;
  }

  v6 = 0xE600000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE400000000000000;
      v2 = 1684107337;
      break;
    case 2:
      v6 = 0xE700000000000000;
      v2 = 0x7654656C707041;
      break;
    case 3:
      v6 = 0xE500000000000000;
      v2 = 0x6863746157;
      break;
    case 4:
      v6 = 0xE700000000000000;
      v2 = 0x706F746B736544;
      break;
    case 5:
      v2 = 0x447974696C616552;
      v6 = 0xED00006563697665;
      break;
    case 6:
      v6 = 0xE700000000000000;
      v2 = 0x6E776F6E6B6E55;
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
    v8 = OUTLINED_FUNCTION_2_28();
  }

  return v8 & 1;
}

uint64_t sub_270553E98(unsigned __int8 a1, char a2)
{
  v2 = 5459817;
  v3 = 0xE300000000000000;
  v4 = a1;
  v5 = 5459817;
  switch(v4)
  {
    case 1:
      v3 = 0xE500000000000000;
      v5 = 0x534F63616DLL;
      break;
    case 2:
      v5 = 1397716596;
      v3 = 0xE400000000000000;
      break;
    case 3:
      v3 = 0xE400000000000000;
      v5 = 1397715576;
      break;
    case 4:
      v3 = 0xE700000000000000;
      v5 = 0x534F6863746177;
      break;
    case 5:
      v3 = 0xE700000000000000;
      v5 = 0x6E776F6E6B6E75;
      break;
    default:
      break;
  }

  v6 = 0xE300000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE500000000000000;
      v2 = 0x534F63616DLL;
      break;
    case 2:
      v2 = 1397716596;
      v6 = 0xE400000000000000;
      break;
    case 3:
      v6 = 0xE400000000000000;
      v2 = 1397715576;
      break;
    case 4:
      v6 = 0xE700000000000000;
      v2 = 0x534F6863746177;
      break;
    case 5:
      v6 = 0xE700000000000000;
      v2 = 0x6E776F6E6B6E75;
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
    v8 = OUTLINED_FUNCTION_2_28();
  }

  return v8 & 1;
}

uint64_t sub_270554044(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x65756C6176;
  }

  else
  {
    v3 = 1701869940;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (a2)
  {
    v5 = 0x65756C6176;
  }

  else
  {
    v5 = 1701869940;
  }

  if (a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_2_28();
  }

  return v8 & 1;
}

uint64_t sub_2705540CC(unsigned __int8 a1, char a2)
{
  v2 = 0x65756575716E65;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x696577746867696CLL;
    }

    else
    {
      v4 = 1668184435;
    }

    if (v3 == 1)
    {
      v5 = 0xEF636E7953746867;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  else
  {
    v5 = 0xE700000000000000;
    v4 = 0x65756575716E65;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x696577746867696CLL;
    }

    else
    {
      v2 = 1668184435;
    }

    if (a2 == 1)
    {
      v6 = 0xEF636E7953746867;
    }

    else
    {
      v6 = 0xE400000000000000;
    }
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_2_28();
  }

  return v8 & 1;
}

uint64_t sub_270554208()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D73C0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v0);
  v2 = &v8 - v1;
  *(&v8 - v1) = 3;
  v3 = *MEMORY[0x277D85188];
  sub_2705D6154();
  OUTLINED_FUNCTION_0_32();
  (*(v4 + 104))(v2, v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D73C8);
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D73D0);
  swift_allocObject();
  v6 = OUTLINED_FUNCTION_6_62();
  return sub_27055457C(v6);
}

uint64_t sub_270554304@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for FilterConfig();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D73D8);
  sub_270554BD8(&qword_2807D73E0, type metadata accessor for FilterConfig);
  a1[4] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1Tm(a1);
  return sub_2705D72E4();
}

uint64_t sub_2705543E0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2705D4594();

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v2);
}

void sub_270554428(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

uint64_t sub_270554434@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D73E8);
  OUTLINED_FUNCTION_0();
  v4 = v3;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  v7 = &v13 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEDD0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  v11 = sub_2705D78D4();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
  (*(v4 + 104))(v7, *MEMORY[0x277D85778], v2);
  return sub_270560D7C(v10, v7, a1);
}

uint64_t sub_27055457C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7450);
  v3 = sub_2705D7494();
  *(v1 + 16) = 0;
  *(v1 + 24) = v3;
  sub_270554D88(a1, v1 + *(*v1 + 112));
  return v1;
}

uint64_t sub_2705545FC@<X0>(char *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D1C08);
  v2 = sub_2705D8424();
  v3 = sub_2705D7C14();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - v7;
  __swift_storeEnumTagSinglePayload(&v12 - v7, 1, 1, v2);
  *a1 = 0;
  v9 = *(sub_2705D4644() + 28);
  v10 = sub_2705D4654();
  bzero(&a1[v9], *(*(v10 - 8) + 64));
  return (*(v5 + 32))(&a1[v9], v8, v3);
}

uint64_t sub_270554738@<X0>(uint64_t a1@<X8>)
{
  v4 = 0;
  *a1 = 0;
  *(a1 + 8) = 0;
  v1 = a1 + 8;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D1C08);
  sub_2705D7984();
  sub_2705D7C14();
  OUTLINED_FUNCTION_0_32();
  return (*(v2 + 32))(v1, &v4);
}

uint64_t sub_27055481C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_270554EF8();
  *a1 = result;
  return result;
}

uint64_t sub_2705548BC(uint64_t a1)
{
  v2 = sub_270554BD8(&qword_2807D7430, type metadata accessor for FileProtectionType);
  v3 = sub_270554BD8(&qword_2807D7438, type metadata accessor for FileProtectionType);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_27055497C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2705549A8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2705549AC(uint64_t a1)
{
  v2 = sub_270554BD8(&qword_2807D7440, type metadata accessor for FileAttributeKey);
  v3 = sub_270554BD8(&qword_2807D7448, type metadata accessor for FileAttributeKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_270554A68(uint64_t a1)
{
  v2 = sub_270554BD8(&qword_2807D7480, type metadata accessor for AMSAccountFlag);
  v3 = sub_270554BD8(&qword_2807D7488, type metadata accessor for AMSAccountFlag);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_270554BD8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_270554D88(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D73C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_270554EF8()
{
  sub_2705D7564();
  sub_2705D7534();
  OUTLINED_FUNCTION_6_62();

  return v0;
}

uint64_t sub_270554F2C()
{
  v1 = sub_2705D7564();
  MEMORY[0x2743A3B30](v1);
  OUTLINED_FUNCTION_6_62();

  return v0;
}

uint64_t sub_270554F98(void *a1)
{
  v2 = v1;
  v75 = a1;
  v3 = sub_2705D4594();
  v77 = *(v3 - 8);
  v78 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v74 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v76 = &v73 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D42A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_27060DED0;
  *(inited + 32) = 0x657669746361;
  *(inited + 40) = 0xE600000000000000;
  v8 = [v2 active];
  v9 = MEMORY[0x277D839B0];
  *(inited + 48) = v8;
  OUTLINED_FUNCTION_2_76();
  *(inited + 72) = v9;
  *(inited + 80) = v10;
  *(inited + 88) = v11;
  v12 = [v2 backingIdentifier];
  v13 = sub_2705D7564();
  v15 = v14;

  v16 = MEMORY[0x277D837D0];
  *(inited + 96) = v13;
  *(inited + 104) = v15;
  *(inited + 120) = v16;
  *(inited + 128) = 0x47656C6261736964;
  *(inited + 136) = 0xEF676E6970756F72;
  *(inited + 144) = [v2 disableGrouping];
  *(inited + 168) = v9;
  *(inited + 176) = 0xD000000000000014;
  *(inited + 184) = 0x8000000270616F10;
  *(inited + 192) = [v2 isExpirationDateHidden];
  *(inited + 216) = v9;
  strcpy((inited + 224), "displayStyle");
  *(inited + 237) = 0;
  *(inited + 238) = -5120;
  v17 = [v2 displayStyle];
  v18 = MEMORY[0x277D83B88];
  *(inited + 240) = v17;
  *(inited + 264) = v18;
  *(inited + 272) = 0x65644970756F7267;
  *(inited + 280) = 0xEF7265696669746ELL;
  v19 = [v2 groupIdentifier];
  v20 = sub_2705D7564();
  v22 = v21;

  *(inited + 288) = v20;
  *(inited + 296) = v22;
  *(inited + 312) = v16;
  *(inited + 320) = 0x696669746E656469;
  *(inited + 328) = 0xEA00000000007265;
  v23 = [v2 identifier];
  v24 = sub_2705D7564();
  v26 = v25;

  *(inited + 336) = v24;
  *(inited + 344) = v26;
  *(inited + 360) = v16;
  *(inited + 368) = 0x79654B676F6CLL;
  *(inited + 376) = 0xE600000000000000;
  v27 = [v2 logKey];
  v28 = sub_2705D7564();
  v30 = v29;

  *(inited + 384) = v28;
  *(inited + 392) = v30;
  *(inited + 408) = v16;
  *(inited + 416) = 0x797469726F697270;
  *(inited + 424) = 0xE800000000000000;
  *(inited + 432) = [v2 priority];
  OUTLINED_FUNCTION_2_76();
  *(inited + 456) = v18;
  *(inited + 464) = v31 + 5;
  *(inited + 472) = v32;
  *(inited + 480) = [v2 shouldPostNotification];
  *(inited + 504) = v9;
  *(inited + 512) = 0x6F666E4972657375;
  *(inited + 520) = 0xE800000000000000;
  v33 = [v2 userInfo];
  *(inited + 552) = sub_2703CACA0(0, &qword_2807D74F0);
  *(inited + 528) = v33;
  v34 = sub_2705D7494();
  v35 = [v2 account];
  if (v35)
  {
    v36 = v35;
    v37 = [v35 ams_DSID];

    if (v37)
    {
      v82 = sub_2703CACA0(0, &qword_2807D3BA0);
      *&v81 = v37;
      sub_2703E43D4(&v81, v80);
      swift_isUniquelyReferenced_nonNull_native();
      v79 = v34;
      v38 = OUTLINED_FUNCTION_1_76();
      sub_2705664F8(v38, 1684632420, 0xE400000000000000);
      v34 = v79;
    }
  }

  v39 = [v2 isHardwareOffer];
  v82 = v9;
  LOBYTE(v81) = v39;
  sub_2703E43D4(&v81, v80);
  swift_isUniquelyReferenced_nonNull_native();
  v79 = v34;
  v40 = OUTLINED_FUNCTION_1_76();
  sub_2705664F8(v40, v41, v42);
  v43 = v79;
  v44 = [v2 expirationDate];
  if (v44)
  {
    v45 = v44;
    v46 = v74;
    sub_2705D4564();

    v48 = v76;
    v47 = v77;
    v49 = v46;
    v50 = v78;
    (*(v77 + 32))(v76, v49, v78);
    v51 = sub_2705D4534();
    v52 = [v75 stringFromDate_];

    v53 = sub_2705D7564();
    v55 = v54;

    v82 = v16;
    *&v81 = v53;
    *(&v81 + 1) = v55;
    sub_2703E43D4(&v81, v80);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_3_70();
    v56 = OUTLINED_FUNCTION_1_76();
    sub_2705664F8(v56, v57, v58);
    v43 = v79;
    (*(v47 + 8))(v48, v50);
  }

  v59 = sub_270555784(v2, &selRef_footer);
  if (v60)
  {
    OUTLINED_FUNCTION_0_73(v59, v60);
    OUTLINED_FUNCTION_3_70();
    v61 = OUTLINED_FUNCTION_1_76();
    sub_2705664F8(v61, v62, 0xE600000000000000);
    v43 = v79;
  }

  v63 = sub_270555784(v2, &selRef_informativeText);
  if (v64)
  {
    OUTLINED_FUNCTION_0_73(v63, v64);
    OUTLINED_FUNCTION_3_70();
    v65 = OUTLINED_FUNCTION_1_76();
    sub_2705664F8(v65, v66, v67);
    v43 = v79;
  }

  v68 = sub_270555784(v2, &selRef_title);
  if (v69)
  {
    OUTLINED_FUNCTION_0_73(v68, v69);
    OUTLINED_FUNCTION_3_70();
    v70 = OUTLINED_FUNCTION_1_76();
    sub_2705664F8(v70, v71, 0xE500000000000000);
    return v79;
  }

  return v43;
}

void sub_270555650(void *a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v4 = sub_2705D7E64();
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4)
  {
    v10 = MEMORY[0x277D84F90];
    sub_27057173C();
    if (v4 < 0)
    {
      __break(1u);
    }

    else
    {
      for (i = 0; i != v4; ++i)
      {
        if ((a2 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x2743A4130](i, a2);
        }

        else
        {
          v6 = *(a2 + 8 * i + 32);
        }

        v7 = v6;
        v8 = sub_270554F98(a1);

        v9 = *(v10 + 16);
        if (v9 >= *(v10 + 24) >> 1)
        {
          sub_27057173C();
        }

        *(v10 + 16) = v9 + 1;
        *(v10 + 8 * v9 + 32) = v8;
      }
    }
  }
}

uint64_t sub_270555784(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_2705D7564();

  return v4;
}

uint64_t OUTLINED_FUNCTION_0_73(uint64_t a1, uint64_t a2)
{
  *(v2 + 112) = v3;
  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
  sub_2703E43D4((v2 + 88), (v2 + 56));

  return swift_isUniquelyReferenced_nonNull_native();
}

void sub_270555848()
{
  sub_270555980();
  OUTLINED_FUNCTION_1_77(0x45534D41u);
  v0 = sub_270561DF0();
  v1 = objc_allocWithZone(MEMORY[0x277CEE598]);
  OUTLINED_FUNCTION_1_77(0x65736D61u);
  v2 = sub_2705D7534();
  v3 = [v1 initWithContainerID:v2 bag:v0];

  qword_28081C558 = v3;
}

uint64_t *sub_2705558F4()
{
  if (qword_2807D7348 != -1)
  {
    OUTLINED_FUNCTION_0_74();
  }

  return &qword_28081C558;
}

id sub_270555934()
{
  if (qword_2807D7348 != -1)
  {
    OUTLINED_FUNCTION_0_74();
  }

  v1 = qword_28081C558;

  return v1;
}

unint64_t sub_270555980()
{
  result = qword_2807D74F8;
  if (!qword_2807D74F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2807D74F8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_74()
{

  return swift_once();
}

uint64_t sub_2705559F8()
{
  v0 = sub_2705D4484();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2705D0CE0();
  sub_2705D43F4();

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_270555B80(char a1)
{
  result = 0x636974796C616E61;
  switch(a1)
  {
    case 1:
      result = 0x6C616E7265746E69;
      break;
    case 2:
      result = 0x7379656E72756F6ALL;
      break;
    case 3:
      result = 0x6E656D6D6F636572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_270555C24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  (*(*(a2 - 8) + 16))(a3, a1);
  type metadata accessor for AppReference();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_270555CAC()
{
  v0 = sub_2705D7EB4();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_270555D14()
{
  result = qword_2807D7500;
  if (!qword_2807D7500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D7500);
  }

  return result;
}

uint64_t sub_270555D80@<X0>(_BYTE *a1@<X8>)
{
  result = sub_270555CAC();
  *a1 = result;
  return result;
}

uint64_t sub_270555DB0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_270555B80(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_270555DE0()
{
  result = qword_2807D7508;
  if (!qword_2807D7508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D7510);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D7508);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for App(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x270555F20);
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

uint64_t sub_270555F58@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a8@<D0>)
{
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a8;
  *(a7 + 40) = a5;
  *(a7 + 48) = a6;
  return result;
}

uint64_t sub_270555F6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2705D7D04();

  OUTLINED_FUNCTION_0_75();
  v19 = v8;
  v20 = v9;
  MEMORY[0x2743A3A90](a3, a4);
  v10 = OUTLINED_FUNCTION_13_36();
  MEMORY[0x2743A3A90](v10, 0xEA00000000002059);
  OUTLINED_FUNCTION_9_45();
  v11 = v19;
  v12 = v20;
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  v14 = v13 + 16;
  OUTLINED_FUNCTION_8_52();
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = a4;
  v15[5] = v13;
  v15[6] = a1;
  v18[2] = a2;
  v18[3] = v11;
  v18[4] = v12;
  v18[5] = MEMORY[0x277D84F90];
  v18[6] = sub_270557908;
  v18[7] = v15;

  v16 = v21;
  sub_2705C9B9C(sub_270557A04, v18);
  if (v16)
  {
  }

  else
  {

    swift_beginAccess();
    v14 = *(v13 + 16);
  }

  return v14;
}

uint64_t sub_270556108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_2705CE850();
  if (v6)
  {
    return a6 & 1;
  }

  if (v12)
  {
    LOBYTE(a6) = 1;
    return a6 & 1;
  }

  v14 = v11;
  v15 = sub_2705CE850();
  v25 = a6;
  LOBYTE(a6) = 1;
  if (v16)
  {
    return a6 & 1;
  }

  v23 = v15;
  sub_2705D7D04();

  strcpy(v24, "DELETE FROM ");
  BYTE5(v24[1]) = 0;
  HIWORD(v24[1]) = -5120;
  MEMORY[0x2743A3A90](a3, a4);
  MEMORY[0x2743A3A90](0x20455245485720, 0xE700000000000000);
  MEMORY[0x2743A3A90](0x696669746E656469, 0xEA00000000007265);
  MEMORY[0x2743A3A90](1059077408, 0xE400000000000000);
  v17 = v24[0];
  v18 = v24[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7520);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2705DC030;
  *(inited + 32) = v14;
  *(inited + 40) = 0;
  *(inited + 48) = 1;
  sub_2705C7664(v17, v18, inited);

  swift_setDeallocating();
  sub_2705CD7C4();
  result = swift_beginAccess();
  v20 = *(a5 + 16);
  v21 = __OFADD__(v20, v23);
  v22 = v20 + v23;
  if (!v21)
  {
    *(a5 + 16) = v22;
    LOBYTE(a6) = v22 < v25;
    return a6 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_270556328(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2705D7D04();
  MEMORY[0x2743A3A90](0x4920545245534E49, 0xEC000000204F544ELL);
  MEMORY[0x2743A3A90](a3, a4);
  MEMORY[0x2743A3A90](10272, 0xE200000000000000);
  MEMORY[0x2743A3A90](7368801, 0xE300000000000000);
  OUTLINED_FUNCTION_19_24();
  v7 = OUTLINED_FUNCTION_15_37();
  MEMORY[0x2743A3A90](v7, 0xE700000000000000);
  OUTLINED_FUNCTION_19_24();
  MEMORY[0x2743A3A90](1702521203, 0xE400000000000000);
  OUTLINED_FUNCTION_19_24();
  OUTLINED_FUNCTION_9_45();
  OUTLINED_FUNCTION_19_24();
  MEMORY[0x2743A3A90](1701869940, 0xE400000000000000);
  MEMORY[0x2743A3A90](0xD000000000000014, 0x8000000270616F50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7520);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2705F38E0;
  v9 = a1[1];
  *(inited + 32) = *a1;
  *(inited + 40) = v9;
  *(inited + 48) = 3;
  v11 = a1[2];
  v10 = a1[3];
  *(inited + 56) = v11;
  *(inited + 64) = v10;
  *(inited + 72) = 0;

  sub_27055782C(v11, v10);
  *(inited + 80) = sub_270556504();
  *(inited + 88) = 0;
  *(inited + 96) = 1;
  *(inited + 120) = 2;
  v12 = a1[5];
  *(inited + 104) = a1[4];
  *(inited + 112) = 0;
  v13 = a1[6];
  *(inited + 128) = v12;
  *(inited + 136) = v13;
  *(inited + 144) = 3;

  sub_2705C7664(0, 0xE000000000000000, inited);
  swift_setDeallocating();
  sub_2705CD7C4();
}

uint64_t sub_270556504()
{
  v1 = v0[1];
  if ((v1 & 0x1000000000000000) != 0)
  {
    v2 = sub_2705D76A4();
  }

  else if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v1) & 0xF;
  }

  else
  {
    v2 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  v3 = MEMORY[0x2743A0910](v0[2], v0[3]);
  v4 = v2 + v3;
  if (__OFADD__(v2, v3))
  {
    __break(1u);
    goto LABEL_17;
  }

  v5 = __OFADD__(v4, 8);
  v6 = v4 + 8;
  if (v5)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v5 = __OFADD__(v6, 8);
  v7 = v6 + 8;
  if (v5)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v2 = v7 + 8;
  if (__OFADD__(v7, 8))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v8 = v0[6];
  if ((v8 & 0x1000000000000000) == 0)
  {
    if ((v8 & 0x2000000000000000) != 0)
    {
      v9 = HIBYTE(v8) & 0xF;
    }

    else
    {
      v9 = v0[5] & 0xFFFFFFFFFFFFLL;
    }

    goto LABEL_13;
  }

LABEL_20:
  v9 = sub_2705D76A4();
LABEL_13:
  v5 = __OFADD__(v2, v9);
  result = v2 + v9;
  if (v5)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2705565A8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v31 = a4;
  sub_2705D7D04();

  OUTLINED_FUNCTION_0_75();
  *&v37 = v15;
  *(&v37 + 1) = v16;
  MEMORY[0x2743A3A90](a7, a8);
  v36 = v37;
  v17 = *(a1 + 32);
  if (v17 == 255)
  {
    v20 = MEMORY[0x277D84F90];
  }

  else
  {
    v18 = *(a1 + 16);
    v37 = *a1;
    v38 = v18;
    v39 = v17;
    v34 = 0x20455245485720;
    v35 = 0xE700000000000000;
    sub_2703CAAEC(a1, &v32, &qword_2807D7518);
    v19 = sub_270556828();
    MEMORY[0x2743A3A90](v19);

    MEMORY[0x2743A3A90](v34, v35);

    v20 = sub_270556AB4();
    sub_2703B2934(a1, &qword_2807D7518);
  }

  v21 = OUTLINED_FUNCTION_13_36();
  MEMORY[0x2743A3A90](v21, 0xEE00656D69742059);
  if ((a3 & 1) == 0)
  {
    v32 = 0x2054494D494C20;
    v33 = 0xE700000000000000;
    v34 = a2;
    v22 = sub_2705D80A4();
    MEMORY[0x2743A3A90](v22);

    MEMORY[0x2743A3A90](v32, v33);
  }

  v23 = v36;
  v24 = swift_allocObject();
  *(v24 + 16) = v31;
  *(v24 + 24) = a5;
  v26[2] = a6;
  v27 = v23;
  v28 = v20;
  v29 = sub_27055778C;
  v30 = MEMORY[0x28223BE20](v24);

  sub_2705C9B9C(sub_2705577AC, v26);
}

uint64_t sub_270556828()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = 0x3F203D3D20707061;
  switch(*(v0 + 32))
  {
    case 1:
      return v3;
    case 2:
      v31 = *v0;
      sub_2705577C4(v0, &v39);
      v17 = 1059077664;
      goto LABEL_12;
    case 3:
      v31 = *v0;
      sub_2705577C4(v0, &v39);
      v17 = 1059077152;
LABEL_12:
      MEMORY[0x2743A3A90](v17, 0xE400000000000000);
      return v31;
    case 4:
      *&v39 = *v0;
      *(&v39 + 1) = v1;

      MEMORY[0x2743A3A90](0x3F20454B494C20, 0xE700000000000000);
      return v39;
    case 5:
      if (*(*(v2 + 16) + 16))
      {
        OUTLINED_FUNCTION_11_40();
        OUTLINED_FUNCTION_16_27();
        do
        {
          v26 = OUTLINED_FUNCTION_3_71(v18, v19, v20, v21, v22, v23, v24, v25, v30, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41);
          v27 = sub_270556828(v26);
          MEMORY[0x2743A3A90](v27);

          MEMORY[0x2743A3A90](41, 0xE100000000000000);
          sub_2705577FC(&v39);
          OUTLINED_FUNCTION_6_63();
          if (v15)
          {
            OUTLINED_FUNCTION_10_45(v28);
          }

          OUTLINED_FUNCTION_5_66();
        }

        while (!v16);
      }

      goto LABEL_20;
    default:
      if (*(*(v2 + 16) + 16))
      {
        OUTLINED_FUNCTION_11_40();
        OUTLINED_FUNCTION_16_27();
        do
        {
          v12 = OUTLINED_FUNCTION_3_71(v4, v5, v6, v7, v8, v9, v10, v11, v30, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41);
          v13 = sub_270556828(v12);
          MEMORY[0x2743A3A90](v13);

          MEMORY[0x2743A3A90](41, 0xE100000000000000);
          sub_2705577FC(&v39);
          OUTLINED_FUNCTION_6_63();
          if (v15)
          {
            OUTLINED_FUNCTION_10_45(v14);
          }

          OUTLINED_FUNCTION_5_66();
        }

        while (!v16);
      }

LABEL_20:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D42B0);
      sub_2704C99B8();
      v3 = sub_2705D7504();

      return v3;
  }
}

uint64_t sub_270556AB4()
{
  v6 = *v0;
  v7 = v0[2];
  switch(*(v0 + 32))
  {
    case 1:
      v9 = v0[1];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7520);
      OUTLINED_FUNCTION_8_52();
      v10 = swift_allocObject();
      v8 = v10;
      *(v10 + 16) = xmmword_2705DC030;
      *(v10 + 32) = v6;
      goto LABEL_20;
    case 2:
    case 3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7520);
      OUTLINED_FUNCTION_8_52();
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_2705DC030;
      *(v8 + 32) = v7;
      *(v8 + 40) = 0;
      *(v8 + 48) = 2;
      return v8;
    case 4:
      v9 = v0[3];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7520);
      OUTLINED_FUNCTION_8_52();
      v10 = swift_allocObject();
      v8 = v10;
      *(v10 + 16) = xmmword_2705DC030;
      *(v10 + 32) = v7;
LABEL_20:
      *(v10 + 40) = v9;
      *(v10 + 48) = 3;

      return v8;
    case 5:
      OUTLINED_FUNCTION_14_37();
      v8 = MEMORY[0x277D84F90];
      while (2)
      {
        if (v4 == v2)
        {
          return v8;
        }

        if (v2 >= *(v3 + 16))
        {
          goto LABEL_38;
        }

        v38 = OUTLINED_FUNCTION_4_63(v30, v31, v32, v33, v34, v35, v36, v37, v46, v47, v48, v49, v50, v51, v52, v53, v54);
        v39 = sub_270556AB4(v38);
        v40 = *(v39 + 16);
        if (__OFADD__(*(v8 + 16), v40))
        {
          goto LABEL_40;
        }

        v41 = v39;

        if (!swift_isUniquelyReferenced_nonNull_native() || (OUTLINED_FUNCTION_17_28(), v24 ^ v25))
        {
          OUTLINED_FUNCTION_18_23();
          v1 = v43;
          v42 = *(v43 + 24) >> 1;
        }

        if (*(v41 + 16))
        {
          if (v42 - *(v1 + 16) >= v40)
          {
            OUTLINED_FUNCTION_7_53();
            swift_arrayInitWithCopy();

            if (!v40)
            {
LABEL_36:
              sub_2705577FC(&v52);

              v5 += 40;
              ++v2;
              v8 = v1;
              continue;
            }

            v44 = *(v1 + 16);
            v25 = __OFADD__(v44, v40);
            v45 = v44 + v40;
            if (!v25)
            {
              *(v1 + 16) = v45;
              goto LABEL_36;
            }

LABEL_46:
            __break(1u);
            JUMPOUT(0x270556DC4);
          }

          goto LABEL_44;
        }

        break;
      }

      if (!v40)
      {
        goto LABEL_36;
      }

      goto LABEL_42;
    default:
      OUTLINED_FUNCTION_14_37();
      v8 = MEMORY[0x277D84F90];
      while (2)
      {
        if (v4 != v2)
        {
          if (v2 >= *(v3 + 16))
          {
            __break(1u);
LABEL_38:
            __break(1u);
          }

          else
          {
            v19 = OUTLINED_FUNCTION_4_63(v11, v12, v13, v14, v15, v16, v17, v18, v46, v47, v48, v49, v50, v51, v52, v53, v54);
            v20 = sub_270556AB4(v19);
            v21 = *(v20 + 16);
            if (!__OFADD__(*(v8 + 16), v21))
            {
              v22 = v20;

              if (!swift_isUniquelyReferenced_nonNull_native() || (OUTLINED_FUNCTION_17_28(), v24 ^ v25))
              {
                OUTLINED_FUNCTION_18_23();
                v1 = v26;
                v23 = *(v26 + 24) >> 1;
              }

              if (*(v22 + 16))
              {
                if (v23 - *(v1 + 16) >= v21)
                {
                  OUTLINED_FUNCTION_7_53();
                  swift_arrayInitWithCopy();

                  if (v21)
                  {
                    v27 = *(v1 + 16);
                    v25 = __OFADD__(v27, v21);
                    v28 = v27 + v21;
                    if (v25)
                    {
LABEL_45:
                      __break(1u);
                      goto LABEL_46;
                    }

                    *(v1 + 16) = v28;
                  }

LABEL_18:
                  sub_2705577FC(&v52);

                  v5 += 40;
                  ++v2;
                  v8 = v1;
                  continue;
                }

LABEL_43:
                __break(1u);
LABEL_44:
                __break(1u);
                goto LABEL_45;
              }

              if (!v21)
              {
                goto LABEL_18;
              }

LABEL_41:
              __break(1u);
LABEL_42:
              __break(1u);
              goto LABEL_43;
            }
          }

          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        return v8;
      }
  }
}

uint64_t sub_270556DDC(char a1, uint64_t (*a2)(void *))
{
  v5 = sub_2705CE870();
  if (!v2)
  {
    v7 = v6;
    if (v6)
    {
      v8 = v5;
      sub_2705CE96C(&v17);
      v10 = *(&v17 + 1);
      if (*(&v17 + 1) >> 60 != 15)
      {
        v11 = v17;
        v12 = sub_2705CEA50();
        if ((v13 & 1) == 0)
        {
          v14 = v12;
          v15 = sub_2705CE870();
          if (v16)
          {
            v18[0] = v8;
            v18[1] = v7;
            v18[2] = v11;
            v18[3] = v10;
            v18[4] = v14;
            v18[5] = v15;
            v18[6] = v16;
            sub_27055782C(v11, v10);
            a1 = a2(v18);
            sub_270557884(v18);
            sub_270470274(v11, v10);
            return a1 & 1;
          }
        }

        sub_270470274(v11, v10);
      }
    }

    a1 = 1;
  }

  return a1 & 1;
}

uint64_t sub_270556F68@<X0>(uint64_t *a1@<X8>)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = sub_2705D4594();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = 7368801;
  v24 = 0xE300000000000000;
  sub_2705D7CF4();
  OUTLINED_FUNCTION_12_37();
  sub_2703D7E30(v25);
  if (v27)
  {
    if (swift_dynamicCast())
    {
      v6 = v24;
      v22 = v23;
      goto LABEL_6;
    }
  }

  else
  {
    sub_2703B2934(v26, &unk_2807D4890);
  }

  v22 = 0;
  v6 = 0xE000000000000000;
LABEL_6:
  v7 = objc_opt_self();
  v8 = sub_2705D7454();
  v25[0] = 0;
  v9 = [v7 dataWithJSONObject:v8 options:0 error:v25];

  v10 = v25[0];
  if (!v9)
  {
    v14 = v10;

    sub_2705D4364();

    return swift_willThrow();
  }

  v21 = sub_2705D44C4();
  v12 = v11;

  v23 = 0x6D6954746E657665;
  v24 = 0xE900000000000065;
  sub_2705D7CF4();
  OUTLINED_FUNCTION_12_37();
  sub_2703D7E30(v25);
  if (v27)
  {
    if (swift_dynamicCast())
    {
      v13 = v23;
      goto LABEL_13;
    }
  }

  else
  {
    sub_2703B2934(v26, &unk_2807D4890);
  }

  sub_2705D4584();
  sub_2705D4554();
  v13 = v16;
  (*(v3 + 8))(v5, v2);
LABEL_13:
  v23 = 0x707954746E657665;
  v24 = 0xE900000000000065;
  sub_2705D7CF4();
  OUTLINED_FUNCTION_12_37();

  sub_2703D7E30(v25);
  if (!v27)
  {
    result = sub_2703B2934(v26, &unk_2807D4890);
    goto LABEL_17;
  }

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_17:
    v17 = 0;
    v18 = 0xE000000000000000;
    goto LABEL_18;
  }

  v17 = v23;
  v18 = v24;
LABEL_18:
  v19 = v21;
  *a1 = v22;
  a1[1] = v6;
  a1[2] = v19;
  a1[3] = v12;
  a1[4] = v13;
  a1[5] = v17;
  a1[6] = v18;
  return result;
}

double sub_27055731C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_2703D7390(a1), (v6 & 1) != 0))
  {
    sub_2703D7F04(*(a2 + 56) + 32 * v5, a3);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_27055736C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16) && (result = sub_2703D7318(result, a2), (v6 & 1) != 0))
  {
    result = sub_2703CAAEC(*(a3 + 56) + 8 * result, a4, &qword_2807D7528);
    v7 = 0;
  }

  else
  {
    *a4 = 0;
    v7 = 1;
  }

  *(a4 + 8) = v7;
  return result;
}

void *sub_2705573D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_2703D7318(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 16 * v4);
  v7 = v6;
  return v6;
}

double sub_27055742C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_2703D7318(a1, a2), (v7 & 1) != 0))
  {
    sub_2703D7F04(*(a3 + 56) + 32 * v6, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

uint64_t sub_27055747C()
{
  OUTLINED_FUNCTION_2_77();
  sub_2705D7D04();
  MEMORY[0x2743A3A90](0x5420455441455243, 0xED000020454C4241);
  MEMORY[0x2743A3A90](v1, v0);
  MEMORY[0x2743A3A90](10272, 0xE200000000000000);
  MEMORY[0x2743A3A90](7368801, 0xE300000000000000);
  MEMORY[0x2743A3A90](0x2C474E4952545320, 0xE900000000000020);
  v2 = OUTLINED_FUNCTION_15_37();
  MEMORY[0x2743A3A90](v2, 0xE700000000000000);
  MEMORY[0x2743A3A90](0x202C424F4C4220, 0xE700000000000000);
  OUTLINED_FUNCTION_9_45();
  MEMORY[0x2743A3A90](0x202C4C41455220, 0xE700000000000000);
  MEMORY[0x2743A3A90](0x696669746E656469, 0xEA00000000007265);
  MEMORY[0x2743A3A90](0xD000000000000016, 0x8000000270616F70);
  MEMORY[0x2743A3A90](1701869940, 0xE400000000000000);
  MEMORY[0x2743A3A90](0x29474E4952545320, 0xE800000000000000);
  sub_2705C7664(v4, v5, MEMORY[0x277D84F90]);
}

uint64_t sub_270557630()
{
  OUTLINED_FUNCTION_2_77();
  sub_2705D7D04();

  strcpy(v3, "ALTER TABLE ");
  BYTE5(v3[1]) = 0;
  HIWORD(v3[1]) = -5120;
  MEMORY[0x2743A3A90](v1, v0);
  MEMORY[0x2743A3A90](0x4C4F432044444120, 0xEC000000204E4D55);
  MEMORY[0x2743A3A90](1702521203, 0xE400000000000000);
  MEMORY[0x2743A3A90](0x52454745544E4920, 0xE800000000000000);
  sub_2705C7664(v3[0], v3[1], MEMORY[0x277D84F90]);
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

uint64_t sub_270557754()
{

  return swift_deallocObject();
}

uint64_t sub_27055782C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_2705578C4()
{

  OUTLINED_FUNCTION_8_52();

  return swift_deallocObject();
}

uint64_t sub_270557960(uint64_t a1, unsigned int a2)
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

uint64_t sub_2705579A0(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t OUTLINED_FUNCTION_3_71(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17, __int128 a18, char a19)
{
  v23 = *v19;
  v24 = v19[1];
  a19 = *(v19 + 32);
  a17 = v23;
  a18 = v24;
  a14 = v20;
  a15 = v21;

  return sub_2705577C4(&a17, &a9);
}

uint64_t OUTLINED_FUNCTION_4_63(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 a15, __int128 a16, char a17)
{
  v19 = *v17;
  v20 = v17[1];
  a17 = *(v17 + 32);
  a15 = v19;
  a16 = v20;

  return sub_2705577C4(&a15, &a10);
}

void OUTLINED_FUNCTION_5_66()
{
  *(v0 + 16) = v1;
  v5 = v0 + 16 * v4;
  *(v5 + 32) = v2;
  *(v5 + 40) = v3;
}

void OUTLINED_FUNCTION_9_45()
{

  JUMPOUT(0x2743A3A90);
}

uint64_t OUTLINED_FUNCTION_10_45@<X0>(unint64_t a1@<X8>)
{

  return sub_2704ADE34(a1 > 1, v1, 1);
}

uint64_t OUTLINED_FUNCTION_11_40()
{

  return sub_2704ADE34(0, v0, 0);
}

double OUTLINED_FUNCTION_12_37()
{

  return sub_27055731C(v1 - 160, v0, (v1 - 120));
}

void OUTLINED_FUNCTION_18_23()
{

  sub_27057247C();
}

void OUTLINED_FUNCTION_19_24()
{

  JUMPOUT(0x2743A3A90);
}

uint64_t sub_270557D90(uint64_t a1, uint64_t a2)
{
  sub_2705D7D04();
  OUTLINED_FUNCTION_2_78();
  v3 = OUTLINED_FUNCTION_3_72();
  MEMORY[0x2743A3A90](v3, a2);
  MEMORY[0x2743A3A90](10272, 0xE200000000000000);
  OUTLINED_FUNCTION_5_67();
  OUTLINED_FUNCTION_4_64();
  v4 = OUTLINED_FUNCTION_3_72();
  MEMORY[0x2743A3A90](v4, 0xE700000000000000);
  OUTLINED_FUNCTION_4_64();
  OUTLINED_FUNCTION_9_46();
  OUTLINED_FUNCTION_7_54();
  v5 = OUTLINED_FUNCTION_0_76();
  MEMORY[0x2743A3A90](v5);
  OUTLINED_FUNCTION_12_38();
  OUTLINED_FUNCTION_8_53();
  OUTLINED_FUNCTION_12_38();
  v6 = OUTLINED_FUNCTION_1_78();
  MEMORY[0x2743A3A90](v6);
  OUTLINED_FUNCTION_10_46();
  v7 = OUTLINED_FUNCTION_6_64();
  MEMORY[0x2743A3A90](v7, 0xE800000000000000);
  MEMORY[0x2743A3A90](8236, 0xE200000000000000);
  v8 = OUTLINED_FUNCTION_3_72();
  MEMORY[0x2743A3A90](v8, 0xE700000000000000);
  MEMORY[0x2743A3A90](10537, 0xE200000000000000);
  sub_2705C7664(0, 0xE000000000000000, MEMORY[0x277D84F90]);
}

uint64_t sub_270557EEC(uint64_t a1, uint64_t a2)
{
  sub_2705D7D04();

  v4 = OUTLINED_FUNCTION_3_72();
  MEMORY[0x2743A3A90](v4, a2);
  MEMORY[0x2743A3A90](59, 0xE100000000000000);
  sub_2705C7664(0xD000000000000015, 0x8000000270616FB0, MEMORY[0x277D84F90]);

  if (!v2)
  {
    sub_2705D7D04();
    OUTLINED_FUNCTION_2_78();
    v6 = OUTLINED_FUNCTION_3_72();
    MEMORY[0x2743A3A90](v6, a2);
    MEMORY[0x2743A3A90](10272, 0xE200000000000000);
    OUTLINED_FUNCTION_5_67();
    OUTLINED_FUNCTION_4_64();
    v7 = OUTLINED_FUNCTION_3_72();
    MEMORY[0x2743A3A90](v7, 0xE700000000000000);
    OUTLINED_FUNCTION_4_64();
    OUTLINED_FUNCTION_9_46();
    OUTLINED_FUNCTION_7_54();
    v8 = OUTLINED_FUNCTION_0_76();
    MEMORY[0x2743A3A90](v8);
    OUTLINED_FUNCTION_4_64();
    OUTLINED_FUNCTION_8_53();
    MEMORY[0x2743A3A90](0x52454745544E4920, 0xEA0000000000202CLL);
    v9 = OUTLINED_FUNCTION_1_78();
    MEMORY[0x2743A3A90](v9);
    OUTLINED_FUNCTION_10_46();
    v10 = OUTLINED_FUNCTION_6_64();
    MEMORY[0x2743A3A90](v10, 0xE800000000000000);
    MEMORY[0x2743A3A90](8236, 0xE200000000000000);
    v11 = OUTLINED_FUNCTION_3_72();
    MEMORY[0x2743A3A90](v11, 0xE700000000000000);
    MEMORY[0x2743A3A90](10537, 0xE200000000000000);
    sub_2705C7664(0, 0xE000000000000000, MEMORY[0x277D84F90]);
  }

  return result;
}

uint64_t sub_2705580DC(uint64_t a1, uint64_t a2)
{
  sub_2705D7D04();

  strcpy(v15, "ALTER TABLE ");
  BYTE5(v15[1]) = 0;
  HIWORD(v15[1]) = -5120;
  v5 = OUTLINED_FUNCTION_6_64();
  MEMORY[0x2743A3A90](v5, a2);
  MEMORY[0x2743A3A90](0x2044444120, 0xE500000000000000);
  v6 = OUTLINED_FUNCTION_3_72();
  MEMORY[0x2743A3A90](v6, 0xE900000000000073);
  OUTLINED_FUNCTION_11_41();
  sub_2705C7664(v15[0], v15[1], MEMORY[0x277D84F90]);
  v7 = v2;
  if (v2)
  {

    v7 = 0;
  }

  sub_2705D7D04();

  strcpy(v15, "ALTER TABLE ");
  BYTE5(v15[1]) = 0;
  HIWORD(v15[1]) = -5120;
  v8 = OUTLINED_FUNCTION_6_64();
  MEMORY[0x2743A3A90](v8, a2);
  MEMORY[0x2743A3A90](0x2044444120, 0xE500000000000000);
  MEMORY[0x2743A3A90](0x617461646174656DLL, 0xE800000000000000);
  OUTLINED_FUNCTION_11_41();
  sub_2705C7664(v15[0], v15[1], MEMORY[0x277D84F90]);
  v9 = v7;
  if (v7)
  {

    v9 = 0;
  }

  v10 = OUTLINED_FUNCTION_13_37();
  result = sub_27055832C(v10, v11, a1, a2);
  if (!v9)
  {
    v13 = result;
    result = sub_27055832C(0x617461646174656DLL, 0xE800000000000000, a1, a2);
    if ((v13 & result & 1) == 0)
    {
      sub_2705584D4();
      swift_allocError();
      *v14 = 6;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_27055832C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  LOBYTE(v6) = v5;
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  v20 = 0;
  v21 = 0xE000000000000000;
  sub_2705D7D04();
  MEMORY[0x2743A3A90](0xD000000000000032, 0x8000000270616FD0);
  MEMORY[0x2743A3A90](a3, a4);
  MEMORY[0x2743A3A90](0x4552454857202927, 0xEF273D656D616E20);
  MEMORY[0x2743A3A90](a1, a2);
  MEMORY[0x2743A3A90](15143, 0xE200000000000000);
  v14 = v4;
  v15 = 0;
  v16 = 0xE000000000000000;
  v17 = MEMORY[0x277D84F90];
  v18 = sub_2705585A8;
  v19 = v11;
  sub_2705C9B9C(sub_270557930, &v13);
  if (v5)
  {
  }

  else
  {

    swift_beginAccess();
    v6 = *(v11 + 16);
  }

  return v6 & 1;
}

unint64_t sub_2705584D4()
{
  result = qword_2807D7530;
  if (!qword_2807D7530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D7530);
  }

  return result;
}

uint64_t sub_270558538(uint64_t a1, uint64_t a2)
{
  v4 = sub_2705CE328(0);
  if (!v2)
  {
    v6 = (v4 > 0) & ~v5;
    swift_beginAccess();
    *(a2 + 16) = v6;
  }

  return 1;
}

void OUTLINED_FUNCTION_2_78()
{

  JUMPOUT(0x2743A3A90);
}

void OUTLINED_FUNCTION_4_64()
{

  JUMPOUT(0x2743A3A90);
}

void OUTLINED_FUNCTION_5_67()
{

  JUMPOUT(0x2743A3A90);
}

void OUTLINED_FUNCTION_7_54()
{

  JUMPOUT(0x2743A3A90);
}

void OUTLINED_FUNCTION_8_53()
{

  JUMPOUT(0x2743A3A90);
}

void OUTLINED_FUNCTION_9_46()
{

  JUMPOUT(0x2743A3A90);
}

void OUTLINED_FUNCTION_10_46()
{

  JUMPOUT(0x2743A3A90);
}

void OUTLINED_FUNCTION_11_41()
{

  JUMPOUT(0x2743A3A90);
}

void OUTLINED_FUNCTION_12_38()
{

  JUMPOUT(0x2743A3A90);
}

uint64_t sub_27055879C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_2703E43D4(a1, v8);
    swift_isUniquelyReferenced_nonNull_native();
    v7 = *v3;
    sub_2705664F8(v8, a2, a3);

    *v3 = v7;
  }

  else
  {
    sub_2703B2934(a1, &unk_2807D4890);
    sub_270566214(a2, a3, v8);

    return sub_2703B2934(v8, &unk_2807D4890);
  }

  return result;
}

uint64_t sub_270558870(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 8))
  {
    sub_2703B2934(a1, &qword_2807D7548);
    sub_2705662FC(a2, a3, v8);

    return sub_2703B2934(v8, &qword_2807D7548);
  }

  else
  {
    sub_27055CA34(a1, v8);
    swift_isUniquelyReferenced_nonNull_native();
    v7 = *v3;
    sub_2705666A0(v8, a2, a3);

    *v3 = v7;
  }

  return result;
}

BOOL sub_270558960@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_270558950(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_270558994(uint64_t a1, uint64_t a2)
{
  v4 = sub_27055CC7C();
  v5 = sub_27055CCD0();

  return MEMORY[0x28211BAD0](a1, a2, v4, v5);
}

uint64_t sub_270558A00(uint64_t a1)
{
  v2 = sub_27055CC28();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_270558A3C(uint64_t a1)
{
  v2 = sub_27055CC28();
  v3 = sub_27055CC7C();
  v4 = sub_27055CCD0();

  return MEMORY[0x28211F498](a1, v2, v3, v4);
}

uint64_t sub_270558A98()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7528);
  result = sub_2705D7494();
  dword_2807D7538 = 0;
  qword_2807D7540 = result;
  return result;
}

uint64_t sub_270558AF0(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v8 = sub_2705D4484();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v19 - v13;
  sub_270558D5C(a1, a2, a3, v19 - v13);
  (*(v9 + 16))(v12, v14, v8);
  v15 = **(&unk_279E04948 + a2);
  type metadata accessor for SQLDatabase();
  v16 = v19[1];
  v17 = sub_2705C788C(v12, 0, v15, sub_2705591FC, 0, 0, 0);
  if (v16)
  {
    (*(v9 + 8))(v14, v8);
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v4 + 16) = v17;
    swift_retain_n();
    sub_2705C9098();
    sub_2705CCB38();

    (*(v9 + 8))(v14, v8);
  }

  return v4;
}

uint64_t sub_270558D5C@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v27[0] = a1;
  v27[1] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D4280);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v27 - v7;
  v9 = sub_2705D4484();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v27 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = v27 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = v27 - v20;
  switch(a2)
  {
    case 1:
    case 2:
    case 3:
      v22 = sub_2705D8134();

      if (v22)
      {
        goto LABEL_4;
      }

      v28 = 45;
      v29 = 0xE100000000000000;
      MEMORY[0x2743A3A90]((a2 - 1) + 65, 0xE100000000000000);

      v23 = v28;
      v24 = v29;
      if (a3)
      {
        goto LABEL_5;
      }

      goto LABEL_7;
    default:

LABEL_4:
      v23 = 0;
      v24 = 0xE000000000000000;
      if (a3)
      {
LABEL_5:
        v28 = 7566955;
        v29 = 0xE300000000000000;
        MEMORY[0x2743A3A90](v23, v24);

        MEMORY[0x2743A3A90](6448174, 0xE300000000000000);
        sub_2705D0CE0();
        sub_2705D4404();

        return (*(v10 + 8))(v21, v9);
      }

      else
      {
LABEL_7:
        v28 = 7368801;
        v29 = 0xE300000000000000;
        MEMORY[0x2743A3A90](v23, v24);

        MEMORY[0x2743A3A90](6448174, 0xE300000000000000);
        sub_2705D1164();
        if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
        {
          sub_2705D0CE0();
          if (__swift_getEnumTagSinglePayload(v8, 1, v9) != 1)
          {
            sub_2703B2934(v8, &unk_2807D4280);
          }
        }

        else
        {
          (*(v10 + 32))(v19, v8, v9);
        }

        sub_2705D43F4();

        sub_2705D43F4();
        v26 = *(v10 + 8);
        v26(v13, v9);
        sub_2705D4404();

        v26(v16, v9);
        return (v26)(v19, v9);
      }
  }
}

uint64_t sub_270559248(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  v6 = sub_2705D6524();
  MEMORY[0x28223BE20](v6 - 8);
  if (qword_2807D7378 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0);
  v20 = *(*(sub_2705D6574() - 8) + 72);
  *(swift_allocObject() + 16) = xmmword_2705E6EB0;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7550);
  v18[0] = v2;
  v7 = AMSLogKey();
  if (v7)
  {
    v8 = v7;
    v9 = sub_2705D7564();
    v11 = v10;

    sub_2705D6514();
    sub_2705D6504();
    __swift_project_boxed_opaque_existential_1(v18, v19);
    DynamicType = swift_getDynamicType();
    MetatypeMetadata = swift_getMetatypeMetadata();
    v16[0] = DynamicType;
    sub_2705D64E4();
    sub_2703B2934(v16, &unk_2807D4890);
    sub_2705D6504();
    MetatypeMetadata = MEMORY[0x277D837D0];
    v16[0] = v9;
    v16[1] = v11;
    v4 = v3;
    sub_2705D64E4();
  }

  else
  {
    sub_2705D6514();
    sub_2705D6504();
    __swift_project_boxed_opaque_existential_1(v18, v19);
    v13 = swift_getDynamicType();
    MetatypeMetadata = swift_getMetatypeMetadata();
    v16[0] = v13;
    sub_2705D64E4();
  }

  sub_2703B2934(v16, &unk_2807D4890);
  sub_2705D6504();
  sub_2705D6534();
  __swift_destroy_boxed_opaque_existential_1(v18);
  sub_2705D6514();
  sub_2705D6504();
  v19 = MEMORY[0x277D83B88];
  v18[0] = a2;
  sub_2705D64E4();
  sub_2703B2934(v18, &unk_2807D4890);
  sub_2705D6504();
  sub_2705D6534();
  v14 = sub_2705D7A64();
  sub_2705B6DB8(v14);

  result = 5;
  switch(a2)
  {
    case 0:
      result = sub_27055D090(7566955, 0xE300000000000000);
      if (!v4)
      {
        result = 1;
      }

      break;
    case 1:
      result = sub_27055747C();
      if (!v4)
      {
        sub_270557D90(0x746E65746E6F63, 0xE700000000000000);
        sub_270560670(0x656C756465686373, 0xE900000000000073);
        result = 2;
      }

      break;
    case 2:
      result = sub_270557EEC(0x746E65746E6F63, 0xE700000000000000);
      if (!v4)
      {
        result = 3;
      }

      break;
    case 3:
      result = sub_270557630();
      if (!v4)
      {
        result = 4;
      }

      break;
    case 4:
      return result;
    case 5:
      result = sub_2705C76F4(0x676F6C6B636162, 0xE700000000000000);
      if (!v4)
      {
        sub_2705C76F4(0x746E65746E6F63, 0xE700000000000000);
        result = 6;
      }

      break;
    case 6:
      result = sub_2705580DC(0x746E65746E6F63, 0xE700000000000000);
      if (!v4)
      {
        result = 7;
      }

      break;
    case 7:
    case 8:
      result = 8;
      break;
    default:
      sub_27055CAA4();
      swift_allocError();
      result = swift_willThrow();
      break;
  }

  return result;
}

uint64_t sub_270559810()
{
  swift_retain_n();
  sub_2705C90DC();

  return v0;
}

uint64_t sub_270559878()
{
  sub_270559810();

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_270559938(uint64_t a1, char a2)
{
  if (qword_2807D7350 != -1)
  {
    OUTLINED_FUNCTION_3_73();
    swift_once();
  }

  os_unfair_lock_lock(&dword_2807D7538);
  v15 = 0;
  v16 = 0xE000000000000000;
  v6 = 0xE900000000000073;
  v7 = 0x636974796C616E61;
  switch(a1)
  {
    case 1:
      v6 = 0xE800000000000000;
      v7 = 0x6C616E7265746E69;
      break;
    case 2:
      v6 = 0xE800000000000000;
      v7 = 0x7379656E72756F6ALL;
      break;
    case 3:
      v6 = 0xEF736E6F69746164;
      v7 = 0x6E656D6D6F636572;
      break;
    default:
      break;
  }

  MEMORY[0x2743A3A90](v7, v6);

  v8 = 0xE100000000000000;
  MEMORY[0x2743A3A90](45, 0xE100000000000000);
  v9 = 65;
  switch(a2)
  {
    case 1:
      break;
    case 2:
      v9 = 66;
      break;
    case 3:
      v9 = 67;
      break;
    default:
      v8 = 0xE700000000000000;
      v9 = 0x746C7561666564;
      break;
  }

  MEMORY[0x2743A3A90](v9, v8);

  v11 = v15;
  v10 = v16;
  sub_27055736C(v15, v16, qword_2807D7540, &v15);
  if (v16)
  {
    sub_2703B2934(&v15, &qword_2807D7548);
  }

  else
  {
    Strong = swift_weakLoadStrong();
    sub_2703B2934(&v15, &qword_2807D7548);
    if (Strong)
    {

LABEL_18:

      sub_270559C14(v13, 500000000000000000, 0);

      goto LABEL_19;
    }
  }

  swift_allocObject();
  v12 = sub_270558AF0(a1, a2, 0);
  if (!v2)
  {
    Strong = v12;
    swift_weakInit();
    swift_weakAssign();
    LOBYTE(v16) = 0;
    sub_270558870(&v15, v11, v10);
    goto LABEL_18;
  }

LABEL_19:
  os_unfair_lock_unlock(&dword_2807D7538);
  return Strong;
}

uint64_t sub_270559C14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEDD0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v13 - v8;
  v10 = sub_2705D78D4();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = a2;
  v11[5] = a3;
  v11[6] = v3;
  v11[7] = a1;

  sub_27059CBC8();
}

void sub_270559D10(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *(v3 + 16);
  v6[3] = a1;
  v6[4] = a2;
  v7 = a3 & 1;

  sub_2705C8E60(v5, v4, sub_27055C670, v6);
}

uint64_t sub_270559D70(uint64_t a1, uint64_t *a2, uint64_t a3, char a4)
{
  v7 = sub_2705D6524();
  MEMORY[0x28223BE20](v7 - 8);
  if (qword_2807D7378 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0);
  v60 = *(*(sub_2705D6574() - 8) + 72);
  *(swift_allocObject() + 16) = xmmword_2705E6EB0;
  v50 = type metadata accessor for AppDatabase();
  v59 = v50;
  *&v58 = a1;
  v54 = a1;

  v8 = AMSLogKey();
  v9 = MEMORY[0x277D837D0];
  if (v8)
  {
    v10 = v8;
    v11 = sub_2705D7564();
    v13 = v12;

    sub_2705D6514();
    sub_2705D6504();
    __swift_project_boxed_opaque_existential_1(&v58, v59);
    DynamicType = swift_getDynamicType();
    MetatypeMetadata = swift_getMetatypeMetadata();
    v55 = DynamicType;
    sub_2705D64E4();
    sub_2703B2934(&v55, &unk_2807D4890);
    sub_2705D6504();
    MetatypeMetadata = MEMORY[0x277D837D0];
    v55 = v11;
    v56 = v13;
    v9 = MEMORY[0x277D837D0];
  }

  else
  {
    sub_2705D6514();
    sub_2705D6504();
    __swift_project_boxed_opaque_existential_1(&v58, v59);
    v15 = swift_getDynamicType();
    MetatypeMetadata = swift_getMetatypeMetadata();
    v55 = v15;
  }

  sub_2705D64E4();
  sub_2703B2934(&v55, &unk_2807D4890);
  sub_2705D6504();
  sub_2705D6534();
  __swift_destroy_boxed_opaque_existential_1(&v58);
  sub_2705D6514();
  sub_2705D6504();
  v17 = *a2;
  v16 = a2[1];
  v59 = v9;
  *&v58 = v17;
  *(&v58 + 1) = v16;

  sub_2705D64E4();
  sub_2703B2934(&v58, &unk_2807D4890);
  sub_2705D6504();
  v19 = a2[5];
  v18 = a2[6];
  v59 = v9;
  *&v58 = v19;
  *(&v58 + 1) = v18;

  sub_2705D64E4();
  sub_2703B2934(&v58, &unk_2807D4890);
  sub_2705D6504();
  sub_2705D6534();
  v20 = sub_2705D7A54();
  sub_2705B6DB8(v20);

  v21 = sub_270556504();
  v22 = v54;
  v23 = *(v54 + 16);

  v24 = sub_27055F3D0(&unk_28805E7F0, v23, 0x73766BuLL, 0xE300000000000000);
  if (v4)
  {
  }

  sub_2703D5404(0x53676F6C6B636162, 0xEB00000000657A69, v24, &v58);

  if (v59)
  {
    result = swift_dynamicCast();
    if (result)
    {
      v26 = v55;
      goto LABEL_13;
    }
  }

  else
  {
    result = sub_2703B2934(&v58, &unk_2807D4890);
  }

  v26 = 0;
LABEL_13:
  v27 = __OFADD__(v26, v21);
  v28 = v26 + v21;
  if (v27)
  {
    __break(1u);
    goto LABEL_27;
  }

  v29 = MEMORY[0x277D83B88];
  if ((a4 & 1) == 0)
  {
    v30 = a3;
    v31 = v28 - a3;
    if (v28 > a3)
    {
      v52 = v28;
      if (!__OFSUB__(v28, v30))
      {
        *(swift_allocObject() + 16) = xmmword_2705E6EB0;
        v59 = v50;
        *&v58 = v54;

        v32 = AMSLogKey();
        if (v32)
        {
          v33 = v32;
          v49 = sub_2705D7564();
          v34 = v31;
          v36 = v35;

          sub_2705D6514();
          sub_2705D6504();
          __swift_project_boxed_opaque_existential_1(&v58, v59);
          v37 = swift_getDynamicType();
          MetatypeMetadata = swift_getMetatypeMetadata();
          v55 = v37;
          sub_2705D64E4();
          sub_2703B2934(&v55, &unk_2807D4890);
          sub_2705D6504();
          MetatypeMetadata = MEMORY[0x277D837D0];
          v55 = v49;
          v56 = v36;
          v31 = v34;
        }

        else
        {
          sub_2705D6514();
          sub_2705D6504();
          __swift_project_boxed_opaque_existential_1(&v58, v59);
          v38 = swift_getDynamicType();
          MetatypeMetadata = swift_getMetatypeMetadata();
          v55 = v38;
        }

        sub_2705D64E4();
        sub_2703B2934(&v55, &unk_2807D4890);
        sub_2705D6504();
        sub_2705D6534();
        __swift_destroy_boxed_opaque_existential_1(&v58);
        sub_2705D6514();
        sub_2705D6504();
        v59 = MEMORY[0x277D83B88];
        *&v58 = v31;
        sub_2705D64E4();
        sub_2703B2934(&v58, &unk_2807D4890);
        sub_2705D6504();
        sub_2705D6534();
        v39 = sub_2705D7A94();
        sub_2705B6DB8(v39);

        v40 = sub_270555F6C(v31, v23, 0x676F6C6B636162, 0xE700000000000000);

        v27 = __OFSUB__(v52, v40);
        v28 = v52 - v40;
        if (!v27)
        {
          v22 = v54;
          v29 = MEMORY[0x277D83B88];
          goto LABEL_22;
        }

LABEL_28:
        __break(1u);
        return result;
      }

LABEL_27:
      __break(1u);
      goto LABEL_28;
    }
  }

LABEL_22:

  sub_270556328(a2, v23, 0x676F6C6B636162, 0xE700000000000000);

  v59 = v29;
  *&v58 = v28;

  sub_27055D2A8(&v58, 0x53676F6C6B636162, 0xEB00000000657A69, v23, 7566955, 0xE300000000000000);

  sub_2703B2934(&v58, &unk_2807D4890);
  *(swift_allocObject() + 16) = xmmword_2705E6EB0;
  v59 = v50;
  *&v58 = v22;

  v41 = AMSLogKey();
  if (v41)
  {
    v42 = v41;
    v43 = sub_2705D7564();
    v45 = v44;

    sub_2705D6514();
    sub_2705D6504();
    __swift_project_boxed_opaque_existential_1(&v58, v59);
    v46 = swift_getDynamicType();
    MetatypeMetadata = swift_getMetatypeMetadata();
    v55 = v46;
    sub_2705D64E4();
    sub_2703B2934(&v55, &unk_2807D4890);
    sub_2705D6504();
    MetatypeMetadata = MEMORY[0x277D837D0];
    v55 = v43;
    v56 = v45;
  }

  else
  {
    sub_2705D6514();
    sub_2705D6504();
    __swift_project_boxed_opaque_existential_1(&v58, v59);
    v47 = swift_getDynamicType();
    MetatypeMetadata = swift_getMetatypeMetadata();
    v55 = v47;
  }

  sub_2705D64E4();
  sub_2703B2934(&v55, &unk_2807D4890);
  sub_2705D6504();
  sub_2705D6534();
  __swift_destroy_boxed_opaque_existential_1(&v58);
  sub_2705D64C4();
  v48 = sub_2705D7A54();
  sub_2705B6DB8(v48);
}

uint64_t sub_27055A800(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v11 = *(v5 + 16);

  sub_2705565A8(a1, a2, a3 & 1, a4, a5, v11, 0x676F6C6B636162, 0xE700000000000000);
}

uint64_t sub_27055A88C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_2705D7DD4();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_27055A94C, 0, 0);
}

uint64_t sub_27055A94C()
{
  OUTLINED_FUNCTION_2_2();
  sub_2705D8304();
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_27055AA08;
  v3 = v0[2];
  v2 = v0[3];

  return sub_2704E8810(v3, v2, 0, 0, 1);
}

uint64_t sub_27055AA08()
{
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  *(*v1 + 64) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_27055AC18;
  }

  else
  {
    v5 = sub_27055AB78;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_27055AB78()
{
  OUTLINED_FUNCTION_2_2();
  if (qword_2807D7350 != -1)
  {
    OUTLINED_FUNCTION_3_73();
    swift_once();
  }

  os_unfair_lock_lock(&dword_2807D7538);
  os_unfair_lock_unlock(&dword_2807D7538);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_27055AC18()
{
  OUTLINED_FUNCTION_2_2();

  v1 = *(v0 + 8);

  return v1();
}

void sub_27055AC78()
{
  v0 = sub_2705D6524();
  MEMORY[0x28223BE20](v0 - 8);
  OUTLINED_FUNCTION_4_0();
  v3 = v2 - v1;
  v76 = sub_2705D4484();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  v7 = MEMORY[0x28223BE20](v6);
  v74 = (v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v10 = v57 - v9;
  v11 = objc_opt_self();
  v12 = 0;
  v68 = "ragma_table_info('";
  v67 = (v5 + 16);
  v57[3] = *MEMORY[0x277CCA1A0];
  v57[2] = *MEMORY[0x277CCA198];
  v57[1] = *MEMORY[0x277CCA190];
  v59 = 0x8000000270617060;
  v66 = *MEMORY[0x277CCA1B8];
  v70 = xmmword_2705E10F0;
  v78 = v3;
  v73 = v10;
  v69 = v5 + 8;
  v58 = v11;
  while (1)
  {
    v75 = byte_28805E820[v12 + 32];
    sub_270558D5C(1, v75, 1, v10);
    v13 = [v11 defaultManager];
    sub_2705D4434();
    v14 = sub_2705D7534();

    v15 = [v13 fileExistsAtPath_];

    if (v15)
    {
      break;
    }

    v27 = OUTLINED_FUNCTION_11_42();
    v28(v27);
LABEL_16:
    if (++v12 == 4)
    {
      return;
    }
  }

  if (qword_2807D7378 != -1)
  {
    OUTLINED_FUNCTION_2_79();
    swift_once();
  }

  v71 = 0;
  v72 = qword_28081C5F8;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0);
  v17 = *(sub_2705D6574() - 8);
  v18 = *(v17 + 72);
  v19 = *(v17 + 80);
  v20 = (v19 + 32) & ~v19;
  v61 = 3 * v18;
  v62 = v19;
  v64 = v16;
  *(swift_allocObject() + 16) = v70;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7550);
  v86 = v60;
  v85 = v77;
  v21 = AMSLogKey();
  if (v21)
  {
    v22 = v21;
    v23 = sub_2705D7564();
    v25 = v24;

    sub_2705D6514();
    OUTLINED_FUNCTION_9_7();
    sub_2705D6504();
    v26 = OUTLINED_FUNCTION_3_38();
    MetatypeMetadata = swift_getMetatypeMetadata();
    v81 = v26;
    sub_2705D64E4();
    OUTLINED_FUNCTION_16_28();
    sub_2705D6504();
    MetatypeMetadata = MEMORY[0x277D837D0];
    v81 = v23;
    v82 = v25;
  }

  else
  {
    sub_2705D6514();
    OUTLINED_FUNCTION_9_7();
    sub_2705D6504();
    v29 = OUTLINED_FUNCTION_3_38();
    MetatypeMetadata = swift_getMetatypeMetadata();
    v81 = v29;
  }

  sub_2705D64E4();
  OUTLINED_FUNCTION_16_28();
  v63 = v20;
  sub_2705D6504();
  sub_2705D6534();
  __swift_destroy_boxed_opaque_existential_1(&v85);
  sub_2705D64C4();
  v65 = 2 * v18;
  v30 = v76;
  v86 = v76;
  v31 = __swift_allocate_boxed_opaque_existential_1Tm(&v85);
  v32 = *v67;
  v33 = v73;
  (*v67)(v31, v73, v30);
  sub_2705D6544();
  sub_2703B2934(&v85, &unk_2807D4890);
  v34 = sub_2705D7A94();
  sub_2705B6DB8(v34);

  v32(v74, v33, v30);
  v35 = v66;
  v36 = v71;
  switch(v75)
  {
    case 1:
      p_MetatypeMetadata = &v83;
      goto LABEL_13;
    case 2:
      p_MetatypeMetadata = &MetatypeMetadata;
      goto LABEL_13;
    case 3:
      p_MetatypeMetadata = &v85;
LABEL_13:
      v35 = *(p_MetatypeMetadata - 32);
      break;
    default:
      break;
  }

  v38 = v35;
  type metadata accessor for SQLDatabase();
  v39 = sub_2705C788C(v74, 0, v38, 0, 0, 0, 0);
  if (!v36)
  {
    v40 = v39;

    sub_2705C9098();
    v10 = v73;
    sub_2705CCB38();
    MEMORY[0x28223BE20](v41);
    v57[-6] = v40;
    v57[-5] = 0xD00000000000003DLL;
    v57[-4] = v59;
    v57[-3] = MEMORY[0x277D84F90];
    v57[-2] = sub_27055B660;
    v57[-1] = 0;
    sub_2705C9B9C(sub_270557930, &v57[-8]);

    sub_2705C90DC();
    v11 = v58;
    sub_2705D4434();
    sub_2705C7AE8();
    v42 = OUTLINED_FUNCTION_11_42();
    v43(v42);

    goto LABEL_16;
  }

  OUTLINED_FUNCTION_10_47();
  v44(v73, v76);
  v45 = v60;
  *(swift_allocObject() + 16) = v70;
  v86 = v45;
  v85 = v77;
  v46 = AMSLogKey();
  if (v46)
  {
    v47 = v46;
    v48 = sub_2705D7564();
    v50 = v49;

    sub_2705D6514();
    OUTLINED_FUNCTION_9_7();
    sub_2705D6504();
    v51 = OUTLINED_FUNCTION_21_27();
    MetatypeMetadata = swift_getMetatypeMetadata();
    v81 = v51;
    sub_2705D64E4();
    sub_2703B2934(&v81, &unk_2807D4890);
    sub_2705D6504();
    MetatypeMetadata = MEMORY[0x277D837D0];
    v81 = v48;
    v82 = v50;
  }

  else
  {
    sub_2705D6514();
    OUTLINED_FUNCTION_9_7();
    sub_2705D6504();
    v52 = OUTLINED_FUNCTION_21_27();
    MetatypeMetadata = swift_getMetatypeMetadata();
    v81 = v52;
  }

  sub_2705D64E4();
  sub_2703B2934(&v81, &unk_2807D4890);
  sub_2705D6504();
  sub_2705D6534();
  __swift_destroy_boxed_opaque_existential_1(&v85);
  sub_2705D64C4();
  swift_getErrorValue();
  v53 = v79;
  v54 = v80;
  v86 = v80;
  v55 = __swift_allocate_boxed_opaque_existential_1Tm(&v85);
  (*(*(v54 - 8) + 16))(v55, v53, v54);
  sub_2705D6544();
  sub_2703B2934(&v85, &unk_2807D4890);
  v56 = sub_2705D7A74();
  sub_2705B6DB8(v56);
}

uint64_t sub_27055B660()
{
  sub_2705CE870();
  if (!v0)
  {
    v1 = sub_2705CE870();
    v3 = v2;
    sub_2705CE96C(v16);
    v4 = v16[0];
    v5 = sub_2705CE850();
    if (v6)
    {
      v5 = -1;
    }

    v8 = sub_27055B984(v5);
    if (!v3)
    {
      sub_270470274(v4, *(&v4 + 1));
      goto LABEL_3;
    }

    v9 = v8;
    v10 = sub_27055B994();
    if (v10 != 3)
    {
      if (*(&v4 + 1) >> 60 == 15)
      {
        goto LABEL_3;
      }

      if (v9 != 7)
      {
        v11 = v10;
        sub_27055B9E0(v9, &v14);
        if (!v15)
        {
          sub_270470274(v4, *(&v4 + 1));

          sub_2703B2934(&v14, &unk_2807D4890);
          return 1;
        }

        sub_2703E43D4(&v14, v16);
        if (v11)
        {
          if (v11 == 1)
          {
            __swift_destroy_boxed_opaque_existential_1(v16);
            goto LABEL_9;
          }

          type metadata accessor for AppDatabase();
          v12 = 2;
        }

        else
        {
          type metadata accessor for AppDatabase();
          v12 = 1;
        }

        v13 = *(sub_270559938(v12, 0) + 16);
        sub_2703D7F04(v16, &v14);

        sub_27055D2A8(&v14, v1, v3, v13, 7566955, 0xE300000000000000);

        sub_270470274(v4, *(&v4 + 1));

        sub_2703B2934(&v14, &unk_2807D4890);
        __swift_destroy_boxed_opaque_existential_1(v16);
        return 1;
      }
    }

LABEL_9:
    sub_270470274(v4, *(&v4 + 1));
LABEL_3:
  }

  return 1;
}

unint64_t sub_27055B984(unint64_t result)
{
  if (result >= 7)
  {
    return 7;
  }

  return result;
}

uint64_t sub_27055B994()
{
  v0 = sub_2705D7EB4();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_27055B9E0@<X0>(char a1@<W2>, uint64_t a2@<X8>)
{
  v68 = *MEMORY[0x277D85DE8];
  v4 = sub_2705D6524();
  MEMORY[0x28223BE20](v4 - 8);
  OUTLINED_FUNCTION_4_0();
  sub_2705D75C4();
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_0();
  *a2 = 0u;
  *(a2 + 16) = 0u;
  switch(a1)
  {
    case 1:
      sub_2703CACA0(0, &qword_2807D7560);
      v33 = OUTLINED_FUNCTION_4_65();
      sub_27055782C(v33, v34);
      sub_2705D75A4();
      sub_2705D75B4();
      v35 = OUTLINED_FUNCTION_0_77();
      v36(v35);
      v37 = OUTLINED_FUNCTION_4_65();
      v39 = OUTLINED_FUNCTION_19_25(v37, v38);
      if (v39)
      {
        v40 = v39;
        v41 = [v39 BOOLValue];

        sub_2703B2934(a2, &unk_2807D4890);
        v42 = v41;
        v43 = MEMORY[0x277D839B0];
      }

      else
      {
        sub_2703B2934(a2, &unk_2807D4890);
        v42 = 0;
        v43 = 0;
      }

      *a2 = v42;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *(a2 + 24) = v43;
      goto LABEL_35;
    case 2:
      sub_2703CACA0(0, &qword_2807D7560);
      v17 = OUTLINED_FUNCTION_4_65();
      sub_27055782C(v17, v18);
      sub_2705D75A4();
      sub_2705D75B4();
      v19 = OUTLINED_FUNCTION_0_77();
      v20(v19);
      v21 = OUTLINED_FUNCTION_4_65();
      v23 = OUTLINED_FUNCTION_19_25(v21, v22);
      v16 = v23;
      if (v23)
      {
        v15 = [v23 integerValue];

        v16 = MEMORY[0x277D83B88];
      }

      else
      {
        v15 = 0;
      }

      goto LABEL_17;
    case 3:
      sub_2703CACA0(0, &qword_2807D7560);
      v24 = OUTLINED_FUNCTION_4_65();
      sub_27055782C(v24, v25);
      sub_2705D75A4();
      sub_2705D75B4();
      v26 = OUTLINED_FUNCTION_0_77();
      v27(v26);
      v28 = OUTLINED_FUNCTION_4_65();
      v30 = OUTLINED_FUNCTION_19_25(v28, v29);
      v7 = v30;
      if (v30)
      {
        [v30 doubleValue];
        v32 = v31;

        v7 = MEMORY[0x277D839F8];
      }

      else
      {
        v32 = 0;
      }

      sub_2703B2934(a2, &unk_2807D4890);
      *a2 = v32;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      goto LABEL_34;
    case 4:
      v8 = sub_2703CACA0(0, &qword_2807D7560);
      v9 = OUTLINED_FUNCTION_4_65();
      sub_27055782C(v9, v10);
      sub_2705D75A4();
      sub_2705D75B4();
      v11 = OUTLINED_FUNCTION_0_77();
      v12(v11);
      v13 = OUTLINED_FUNCTION_4_65();
      v15 = OUTLINED_FUNCTION_19_25(v13, v14);
      if (v15)
      {
        v16 = v8;
      }

      else
      {
        v16 = 0;
      }

LABEL_17:
      sub_2703B2934(a2, &unk_2807D4890);
      *a2 = v15;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *(a2 + 24) = v16;
      goto LABEL_35;
    case 5:
      objc_opt_self();
      OUTLINED_FUNCTION_4_65();
      v44 = sub_2705D44A4();
      *&v66 = 0;
      v45 = OUTLINED_FUNCTION_15_38(v44, sel_propertyListWithData_options_format_error_);

      v46 = 0;
      if (v45)
      {
        sub_2705D7C84();
        swift_unknownObjectRelease();
      }

      else
      {
        v50 = v46;
        v51 = sub_2705D4364();

        swift_willThrow();
        v66 = 0u;
        v67 = 0u;
      }

      sub_27055C694(&v66, v64);
      if (!v65)
      {
        goto LABEL_30;
      }

      v52 = &qword_2807D34D8;
      goto LABEL_28;
    case 6:
      objc_opt_self();
      OUTLINED_FUNCTION_4_65();
      v47 = sub_2705D44A4();
      *&v66 = 0;
      v48 = OUTLINED_FUNCTION_15_38(v47, sel_propertyListWithData_options_format_error_);

      v49 = 0;
      if (v48)
      {
        sub_2705D7C84();
        swift_unknownObjectRelease();
      }

      else
      {
        v53 = v49;
        v54 = sub_2705D4364();

        swift_willThrow();
        v66 = 0u;
        v67 = 0u;
      }

      sub_27055C694(&v66, v64);
      if (v65)
      {
        v52 = &qword_2807D7558;
LABEL_28:
        v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v52);
        if (swift_dynamicCast())
        {
          v55 = v63;
          sub_2703B2934(&v66, &unk_2807D4890);
          sub_2703B2934(a2, &unk_2807D4890);
          goto LABEL_33;
        }

        OUTLINED_FUNCTION_20_23(&v66);
        v56 = a2;
      }

      else
      {
LABEL_30:
        OUTLINED_FUNCTION_20_23(&v66);
        OUTLINED_FUNCTION_20_23(a2);
        v56 = v64;
      }

      OUTLINED_FUNCTION_20_23(v56);
      v55 = 0;
      v7 = 0;
LABEL_33:
      *a2 = v55;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
LABEL_34:
      *(a2 + 24) = v7;
LABEL_35:
      sub_27055C694(a2, &v66);
      v57 = *(&v67 + 1);
      result = sub_2703B2934(&v66, &unk_2807D4890);
      if (!v57)
      {
        if (qword_2807D7378 != -1)
        {
          OUTLINED_FUNCTION_2_79();
          swift_once();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0);
        sub_2705D6574();
        *(swift_allocObject() + 16) = xmmword_2705DC030;
        sub_2705D6514();
        sub_2705D6504();
        sub_2705D75A4();
        OUTLINED_FUNCTION_4_65();
        v59 = sub_2705D7584();
        if (v60)
        {
          v61 = MEMORY[0x277D837D0];
        }

        else
        {
          v59 = 0;
          v61 = 0;
          *&v67 = 0;
        }

        *&v66 = v59;
        *(&v66 + 1) = v60;
        *(&v67 + 1) = v61;
        sub_2705D64F4();
        sub_2703B2934(&v66, &unk_2807D4890);
        OUTLINED_FUNCTION_9_7();
        sub_2705D6504();
        sub_2705D6534();
        v62 = sub_2705D7A74();
        sub_2705B6DB8(v62);
      }

      return result;
    default:
      v6 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
      v7 = sub_2703CACA0(0, &qword_2807D34E0);
      sub_2703B2934(a2, &unk_2807D4890);
      *a2 = v6;
      goto LABEL_34;
  }
}

id sub_27055C1BC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v7 = sub_2705D44A4();
  v8 = [v6 initWithData:v7 encoding:a3];

  sub_27046DCA4(a1, a2);
  return v8;
}

uint64_t sub_27055C244()
{
  v0 = sub_2705D75C4();
  OUTLINED_FUNCTION_0();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4_0();
  v6 = v5 - v4;
  OUTLINED_FUNCTION_14_38();
  if ((OUTLINED_FUNCTION_1_79() & 1) == 0 || (v7 = v22, sub_2705D75A4(), OUTLINED_FUNCTION_5_68(), OUTLINED_FUNCTION_9_47(), , v8 = OUTLINED_FUNCTION_6_65(), v9(v8), OUTLINED_FUNCTION_17_29(), v10))
  {
    OUTLINED_FUNCTION_14_38();
    if ((OUTLINED_FUNCTION_1_79() & 1) == 0 || (v7 = sub_2705D80A4(), sub_2705D75A4(), OUTLINED_FUNCTION_5_68(), OUTLINED_FUNCTION_9_47(), , v11 = OUTLINED_FUNCTION_6_65(), v12(v11), OUTLINED_FUNCTION_17_29(), v10))
    {
      OUTLINED_FUNCTION_14_38();
      if ((OUTLINED_FUNCTION_1_79() & 1) == 0 || (v7 = sub_2705D79C4(), sub_2705D75A4(), OUTLINED_FUNCTION_5_68(), OUTLINED_FUNCTION_9_47(), , v13 = OUTLINED_FUNCTION_6_65(), v14(v13), OUTLINED_FUNCTION_17_29(), v10))
      {
        OUTLINED_FUNCTION_14_38();
        if ((OUTLINED_FUNCTION_1_79() & 1) == 0 || (!v22 ? (v7 = 0x65736C6166) : (v7 = 1702195828), sub_2705D75A4(), OUTLINED_FUNCTION_5_68(), OUTLINED_FUNCTION_9_47(), , (*(v2 + 8))(v6, v0), OUTLINED_FUNCTION_17_29(), v10))
        {
          OUTLINED_FUNCTION_14_38();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D34D8);
          if (OUTLINED_FUNCTION_1_79())
          {
            v7 = v22;
            objc_opt_self();
            v15 = sub_2705D77A4();

            v17 = OUTLINED_FUNCTION_13_38(v16, sel_dataWithPropertyList_format_options_error_);

            v18 = 0;
            if (v17)
            {
LABEL_18:
              sub_2705D44C4();
              OUTLINED_FUNCTION_9_47();

              return v7;
            }
          }

          else
          {
            OUTLINED_FUNCTION_14_38();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7558);
            if (!OUTLINED_FUNCTION_1_79())
            {
              return 0;
            }

            v7 = v22;
            objc_opt_self();
            v19 = sub_2705D7454();

            v17 = OUTLINED_FUNCTION_13_38(v20, sel_dataWithPropertyList_format_options_error_);

            v18 = 0;
            if (v17)
            {
              goto LABEL_18;
            }
          }

          v7 = v18;
          sub_2705D4364();

          swift_willThrow();
        }
      }
    }
  }

  return v7;
}

unint64_t sub_27055C644@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_27055B984(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_27055C694(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D4890);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_27055C708()
{
  result = qword_2807D7568[0];
  if (!qword_2807D7568[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2807D7568);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DatabaseValueType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
        JUMPOUT(0x27055C84CLL);
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_27055C884()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_27055C8C0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_27055C8E0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t sub_27055C920()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_27055C960(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_27041A73C;

  return sub_27055A88C(a1, v4, v5, v6, v7);
}

uint64_t sub_27055CA34(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7528);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_27055CAA4()
{
  result = qword_2807D75F0;
  if (!qword_2807D75F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D75F0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AppDatabase.DatabaseError(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x27055CB94);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_27055CBD4()
{
  result = qword_2807D75F8;
  if (!qword_2807D75F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D75F8);
  }

  return result;
}

unint64_t sub_27055CC28()
{
  result = qword_2807D7600;
  if (!qword_2807D7600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D7600);
  }

  return result;
}

unint64_t sub_27055CC7C()
{
  result = qword_2807D7608;
  if (!qword_2807D7608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D7608);
  }

  return result;
}

unint64_t sub_27055CCD0()
{
  result = qword_2807D7610;
  if (!qword_2807D7610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D7610);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_79()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_5_68()
{

  return sub_2705D7574();
}

id OUTLINED_FUNCTION_13_38(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_14_38()
{

  return sub_2703D7F04(v0, v1 - 120);
}

id OUTLINED_FUNCTION_15_38(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_16_28()
{

  return sub_2703B2934(v1 - 152, v0);
}

id OUTLINED_FUNCTION_19_25(uint64_t a1, unint64_t a2)
{

  return sub_27055C1BC(a1, a2, v2);
}

uint64_t OUTLINED_FUNCTION_20_23(uint64_t a1)
{

  return sub_2703B2934(a1, v1);
}

uint64_t OUTLINED_FUNCTION_21_27()
{
  __swift_project_boxed_opaque_existential_1((v0 - 120), *(v0 - 96));

  return swift_getDynamicType();
}

uint64_t sub_27055CEE0@<X0>(char a1@<W0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  if (a1)
  {
    v10 = 0x656D69547473616CLL;
  }

  else
  {
    v10 = 0x53676F6C6B636162;
  }

  if (a1)
  {
    v11 = 0xEC000000656E6F5ALL;
  }

  else
  {
    v11 = 0xEB00000000657A69;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3EE8);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_2705DC030;
  *(v12 + 32) = v10;
  *(v12 + 40) = v11;

  v13 = sub_27055F3D0(v12, a2, a3, a4);
  if (!v5)
  {
    v14 = v13;

    sub_2703D5404(v10, v11, v14, a5);
  }
}

uint64_t sub_27055D00C(uint64_t a1, char a2, int64_t a3, uint64_t a4, unint64_t a5)
{
  v5 = (a2 & 1) == 0;
  if (a2)
  {
    v6 = 0x656D69547473616CLL;
  }

  else
  {
    v6 = 0x53676F6C6B636162;
  }

  if (v5)
  {
    v7 = 0xEB00000000657A69;
  }

  else
  {
    v7 = 0xEC000000656E6F5ALL;
  }

  sub_27055D2A8(a1, v6, v7, a3, a4, a5);
}

uint64_t sub_27055D090(uint64_t a1, uint64_t a2)
{
  sub_2705D7D04();
  MEMORY[0x2743A3A90](0x5420455441455243, 0xED000020454C4241);
  MEMORY[0x2743A3A90](a1, a2);
  MEMORY[0x2743A3A90](10272, 0xE200000000000000);
  MEMORY[0x2743A3A90](0x6E69616D6F64, 0xE600000000000000);
  MEMORY[0x2743A3A90](0x202C5458455420, 0xE700000000000000);
  OUTLINED_FUNCTION_4_66();
  MEMORY[0x2743A3A90](0x202C5458455420, 0xE700000000000000);
  MEMORY[0x2743A3A90](0x65756C6176, 0xE500000000000000);
  MEMORY[0x2743A3A90](0x202C424F4C4220, 0xE700000000000000);
  MEMORY[0x2743A3A90](0x70795465756C6176, 0xE900000000000065);
  MEMORY[0x2743A3A90](0x52454745544E4920, 0xEA0000000000202CLL);
  MEMORY[0x2743A3A90](0x69646F4D7473616CLL, 0xEC00000064656966);
  MEMORY[0x2743A3A90](0xD000000000000014, 0x8000000270616F90);
  OUTLINED_FUNCTION_4_66();
  MEMORY[0x2743A3A90](8236, 0xE200000000000000);
  MEMORY[0x2743A3A90](0x6E69616D6F64, 0xE600000000000000);
  MEMORY[0x2743A3A90](10537, 0xE200000000000000);
  sub_2705C7664(0, 0xE000000000000000, MEMORY[0x277D84F90]);
}

uint64_t sub_27055D2A8(uint64_t a1, uint64_t a2, uint64_t a3, int64_t a4, uint64_t a5, unint64_t a6)
{
  sub_2703CAAEC(a1, v15, &unk_2807D4890);
  if (v16)
  {
    sub_27046C2B0();
    if (swift_dynamicCast())
    {

      v17 = 0u;
      v18 = 0u;
      goto LABEL_7;
    }
  }

  else
  {
    sub_2703B2934(v15, &unk_2807D4890);
  }

  sub_2703CAAEC(a1, &v17, &unk_2807D4890);
  if (*(&v18 + 1))
  {
    sub_2703E43D4(&v17, v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D42A8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2705DC030;
    *(inited + 32) = a2;
    *(inited + 40) = a3;
    sub_2703D7F04(v19, inited + 48);

    v13 = sub_2705D7494();
    sub_27055D7E8(v13, a4, a5, a6);
    __swift_destroy_boxed_opaque_existential_1(v19);
  }

LABEL_7:
  sub_2703B2934(&v17, &unk_2807D4890);
  return sub_27055DC70(a2, a3, a4, a5, a6);
}

uint64_t sub_27055D47C()
{
  v0 = sub_2705D7EB4();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_27055D4D0(char a1)
{
  if (a1)
  {
    return 0x656D69547473616CLL;
  }

  else
  {
    return 0x53676F6C6B636162;
  }
}

uint64_t sub_27055D53C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_27055D47C();
  *a1 = result;
  return result;
}

uint64_t sub_27055D56C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_27055D4D0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

_OWORD *sub_27055D598@<X0>(int64_t a1@<X1>, uint64_t a2@<X2>, unint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  result = sub_2705CE870();
  if (!v4)
  {
    v11 = result;
    v12 = v10;
    sub_2705CE96C(v22);
    v23 = a4;
    v13 = v22[0];
    v14 = sub_2705CE850();
    if (v15)
    {
      v14 = -1;
    }

    v16 = sub_27055B984(v14);
    if (v12)
    {
      if (*(&v13 + 1) >> 60 != 15 && v16 != 7)
      {
        sub_27055782C(v13, *(&v13 + 1));
        sub_27055B9E0(v13, &v20);
        sub_270470274(v13, *(&v13 + 1));
        if (v21)
        {
          sub_270470274(v13, *(&v13 + 1));
          sub_2703E43D4(&v20, v22);
          v18 = v23;
          *v23 = v11;
          v18[1] = v12;
          return sub_2703E43D4(v22, v18 + 1);
        }

        sub_2703B2934(&v20, &unk_2807D4890);
      }

      memset(v22, 0, sizeof(v22));
      sub_27055D2A8(v22, v11, v12, a1, a2, a3);
      v19 = v23;
      sub_2703B2934(v22, &unk_2807D4890);
      sub_270470274(v13, *(&v13 + 1));
    }

    else
    {
      result = sub_270470274(v13, *(&v13 + 1));
      v19 = v23;
    }

    *(v19 + 1) = 0u;
    *(v19 + 2) = 0u;
    *v19 = 0u;
  }

  return result;
}

uint64_t sub_27055D7E8(uint64_t a1, int64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v10 = sub_2705D6524();
  MEMORY[0x28223BE20](v10 - 8);
  if (qword_2807D7378 != -1)
  {
    goto LABEL_22;
  }

  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0);
    v11 = sub_2705D6574();
    OUTLINED_FUNCTION_1_1(v11);
    *(swift_allocObject() + 16) = xmmword_2705E6EB0;
    *&v39 = a2;
    *(&v39 + 1) = a3;
    *&v40[0] = a4;
    *(&v40[0] + 1) = &type metadata for AppKeyValueTable;
    v33 = a2;

    v12 = AMSLogKey();
    v41 = a4;
    v34 = a3;
    if (v12)
    {
      v13 = v12;
      v14 = sub_2705D7564();
      v16 = v15;

      OUTLINED_FUNCTION_5_35();
      OUTLINED_FUNCTION_12_20();
      v17 = OUTLINED_FUNCTION_13_39();
      *(&v37 + 1) = swift_getMetatypeMetadata();
      *&v36 = v17;
      sub_2705D64E4();
      sub_2703B2934(&v36, &unk_2807D4890);
      OUTLINED_FUNCTION_7_24();
      *(&v37 + 1) = MEMORY[0x277D837D0];
      *&v36 = v14;
      *(&v36 + 1) = v16;
    }

    else
    {
      OUTLINED_FUNCTION_6_31();
      OUTLINED_FUNCTION_12_20();
      v18 = OUTLINED_FUNCTION_13_39();
      *(&v37 + 1) = swift_getMetatypeMetadata();
      *&v36 = v18;
    }

    sub_2705D64E4();
    sub_2703B2934(&v36, &unk_2807D4890);
    sub_2705D6504();
    sub_2705D6534();
    __swift_destroy_boxed_opaque_existential_1(&v39);
    sub_2705D6514();
    sub_2705D6504();
    *(&v40[0] + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D34D0);
    *&v39 = a1;

    sub_2705D64F4();
    sub_2703B2934(&v39, &unk_2807D4890);
    OUTLINED_FUNCTION_12_20();
    sub_2705D6534();
    v19 = sub_2705D7A54();
    sub_2705B6DB8(v19);

    v20 = 1 << *(a1 + 32);
    v21 = -1;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    a4 = v21 & *(a1 + 64);
    a2 = (v20 + 63) >> 6;

    a3 = 0;
    if (a4)
    {
      break;
    }

LABEL_9:
    while (1)
    {
      v22 = a3 + 1;
      if (__OFADD__(a3, 1))
      {
        break;
      }

      if (v22 >= a2)
      {
        a4 = 0;
        v37 = 0u;
        v38 = 0u;
        v36 = 0u;
        goto LABEL_14;
      }

      a4 = *(a1 + 64 + 8 * v22);
      ++a3;
      if (a4)
      {
        a3 = v22;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_22:
    OUTLINED_FUNCTION_0_78();
  }

  while (1)
  {
    v22 = a3;
LABEL_13:
    v23 = __clz(__rbit64(a4));
    a4 &= a4 - 1;
    v24 = v23 | (v22 << 6);
    v25 = (*(a1 + 48) + 16 * v24);
    v27 = *v25;
    v26 = v25[1];
    sub_2703D7F04(*(a1 + 56) + 32 * v24, v35);
    *&v36 = v27;
    *(&v36 + 1) = v26;
    sub_2703E43D4(v35, &v37);

LABEL_14:
    v39 = v36;
    v40[0] = v37;
    v40[1] = v38;
    v28 = *(&v36 + 1);
    if (!*(&v36 + 1))
    {
    }

    v29 = v39;
    v30 = sub_2703E43D4(v40, &v36);
    v31 = MEMORY[0x2743A4A60](v30);
    sub_27055DDD4(&v36, v33, v34, v41, v29, v28, v35);
    if (v5)
    {
      break;
    }

    v5 = 0;

    objc_autoreleasePoolPop(v31);
    __swift_destroy_boxed_opaque_existential_1(&v36);
    if (!a4)
    {
      goto LABEL_9;
    }
  }

  objc_autoreleasePoolPop(v31);

  return __swift_destroy_boxed_opaque_existential_1(&v36);
}

uint64_t sub_27055DC70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_2705D7D04();

  strcpy(v13, "DELETE FROM ");
  BYTE5(v13[1]) = 0;
  HIWORD(v13[1]) = -5120;
  MEMORY[0x2743A3A90](a4, a5);
  MEMORY[0x2743A3A90](0x20455245485720, 0xE700000000000000);
  MEMORY[0x2743A3A90](7955819, 0xE300000000000000);
  MEMORY[0x2743A3A90](0x3B3F203D20, 0xE500000000000000);
  v9 = v13[0];
  v10 = v13[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7520);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2705DC030;
  *(inited + 32) = a1;
  *(inited + 40) = a2;
  *(inited + 48) = 3;

  sub_2705C7664(v9, v10, inited);
  swift_setDeallocating();
  sub_2705CD7C4();
}

void sub_27055DDD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t *a7)
{
  v75 = a7;
  v73 = a6;
  v72 = a5;
  v12 = sub_2705D4594();
  v74 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2705D6524();
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x2743A4A60](v16);
  sub_27055E97C(a1, a2, a3, a4, &v76, &v79);
  if (v7)
  {
    v20 = v76;
    objc_autoreleasePoolPop(v19);
    *v75 = v20;
  }

  else
  {
    v70 = a3;
    v71 = a4;
    v69 = v18;
    v67 = v14;
    v21 = v74;
    v68 = v12;
    objc_autoreleasePoolPop(v19);
    v22 = v81;
    if (v81 == 7)
    {
      if (qword_2807D7378 != -1)
      {
        swift_once();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0);
      v23 = *(*(sub_2705D6574() - 8) + 72);
      *(swift_allocObject() + 16) = xmmword_2705E6EB0;
      v79 = a2;
      v80 = v70;
      v81 = v71;
      v82 = &type metadata for AppKeyValueTable;

      v24 = AMSLogKey();
      if (v24)
      {
        v25 = v24;
        v26 = sub_2705D7564();
        v75 = v23;
        v28 = v27;

        sub_2705D6514();
        sub_2705D6504();
        __swift_project_boxed_opaque_existential_1(&v79, v82);
        DynamicType = swift_getDynamicType();
        MetatypeMetadata = swift_getMetatypeMetadata();
        v76 = DynamicType;
        sub_2705D64E4();
        sub_2703B2934(&v76, &unk_2807D4890);
        sub_2705D6504();
        MetatypeMetadata = MEMORY[0x277D837D0];
        v76 = v26;
        v77 = v28;
      }

      else
      {
        sub_2705D6514();
        sub_2705D6504();
        __swift_project_boxed_opaque_existential_1(&v79, v82);
        v49 = swift_getDynamicType();
        MetatypeMetadata = swift_getMetatypeMetadata();
        v76 = v49;
      }

      sub_2705D64E4();
      sub_2703B2934(&v76, &unk_2807D4890);
      sub_2705D6504();
      sub_2705D6534();
      __swift_destroy_boxed_opaque_existential_1(&v79);
      sub_2705D64C4();
      v50 = sub_2705D7A74();
      sub_2705B6DB8(v50);
    }

    else
    {
      v30 = v79;
      v31 = v80;
      sub_27055782C(v79, v80);
      has_internal_diagnostics = os_variant_has_internal_diagnostics();
      v66 = a2;
      v33 = v21;
      if (has_internal_diagnostics)
      {
        sub_27055782C(v30, v31);
        v34 = MEMORY[0x2743A0910](v30, v31);
        sub_270560004(v30, v31, v22);
        if (v34 / 1000.0 / 1000.0 > 0.1)
        {
          v35 = [objc_allocWithZone(MEMORY[0x277CCA8E8]) init];
          [v35 setAllowedUnits_];
          v65 = v35;
          v36 = [v35 stringFromByteCount_];
          v63 = sub_2705D7564();
          v62 = v37;

          v38 = v71;
          v39 = v70;
          if (qword_2807D7378 != -1)
          {
            swift_once();
          }

          v64 = qword_28081C5F8;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0);
          v40 = *(sub_2705D6574() - 8);
          v41 = (*(v40 + 80) + 32) & ~*(v40 + 80);
          v61[2] = *(v40 + 72);
          v42 = swift_allocObject();
          *(v42 + 16) = xmmword_2705E6EB0;
          v61[3] = v42;
          v61[1] = v42 + v41;
          v79 = v66;
          v80 = v39;
          v81 = v38;
          v82 = &type metadata for AppKeyValueTable;

          v43 = AMSLogKey();
          v44 = MEMORY[0x277D837D0];
          if (v43)
          {
            v45 = v43;
            v46 = sub_2705D7564();
            v61[0] = v47;

            sub_2705D6514();
            sub_2705D6504();
            __swift_project_boxed_opaque_existential_1(&v79, v82);
            v48 = swift_getDynamicType();
            MetatypeMetadata = swift_getMetatypeMetadata();
            v76 = v48;
            sub_2705D64E4();
            sub_2703B2934(&v76, &unk_2807D4890);
            sub_2705D6504();
            MetatypeMetadata = v44;
            v76 = v46;
            v77 = v61[0];
          }

          else
          {
            sub_2705D6514();
            sub_2705D6504();
            __swift_project_boxed_opaque_existential_1(&v79, v82);
            v51 = swift_getDynamicType();
            MetatypeMetadata = swift_getMetatypeMetadata();
            v76 = v51;
          }

          sub_2705D64E4();
          sub_2703B2934(&v76, &unk_2807D4890);
          sub_2705D6504();
          sub_2705D6534();
          __swift_destroy_boxed_opaque_existential_1(&v79);
          sub_2705D6514();
          sub_2705D6504();
          v82 = v44;
          v79 = v72;
          v80 = v73;

          sub_2705D64E4();
          sub_2703B2934(&v79, &unk_2807D4890);
          sub_2705D6504();
          v82 = v44;
          v79 = v63;
          v80 = v62;
          sub_2705D64E4();
          sub_2703B2934(&v79, &unk_2807D4890);
          sub_2705D6504();
          sub_2705D6534();
          v52 = sub_2705D7A94();
          sub_2705B6DB8(v52);
        }
      }

      v79 = 0;
      v80 = 0xE000000000000000;
      sub_2705D7D04();
      MEMORY[0x2743A3A90](0xD000000000000017, 0x8000000270617140);
      MEMORY[0x2743A3A90](v70, v71);
      MEMORY[0x2743A3A90](10272, 0xE200000000000000);
      MEMORY[0x2743A3A90](7955819, 0xE300000000000000);
      MEMORY[0x2743A3A90](8236, 0xE200000000000000);
      MEMORY[0x2743A3A90](0x6E69616D6F64, 0xE600000000000000);
      MEMORY[0x2743A3A90](8236, 0xE200000000000000);
      MEMORY[0x2743A3A90](0x65756C6176, 0xE500000000000000);
      MEMORY[0x2743A3A90](8236, 0xE200000000000000);
      MEMORY[0x2743A3A90](0x70795465756C6176, 0xE900000000000065);
      MEMORY[0x2743A3A90](8236, 0xE200000000000000);
      MEMORY[0x2743A3A90](0x69646F4D7473616CLL, 0xEC00000064656966);
      MEMORY[0x2743A3A90](0xD000000000000015, 0x8000000270617160);
      v53 = v79;
      v54 = v80;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7520);
      v55 = v31;
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2705F38E0;
      v57 = v73;
      *(inited + 32) = v72;
      *(inited + 40) = v57;
      *(inited + 48) = 3;
      *(inited + 56) = xmmword_27060E5A0;
      *(inited + 72) = 3;
      *(inited + 80) = v30;
      *(inited + 88) = v55;
      *(inited + 96) = 0;
      *(inited + 104) = v22;
      *(inited + 112) = 0;
      *(inited + 120) = 1;
      sub_27055FFF0(v30, v55, v22);

      v58 = v67;
      sub_2705D4584();
      sub_2705D4554();
      v60 = v59;
      (*(v33 + 8))(v58, v68);
      *(inited + 128) = v60;
      *(inited + 136) = 0;
      *(inited + 144) = 2;
      sub_2705C7664(v53, v54, inited);
      swift_setDeallocating();
      sub_2705CD7C4();

      sub_270560004(v30, v55, v22);
      sub_270560004(v30, v55, v22);
    }
  }
}

uint64_t sub_27055E97C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v13 = sub_2705D6524();
  MEMORY[0x28223BE20](v13 - 8);
  sub_2703D7F04(a1, v29);
  sub_27055EDB0(v29, &v30);
  sub_2703B2934(v29, &unk_2807D4890);
  if (MetatypeMetadata)
  {
    sub_2703E43D4(&v30, &v32);
    v14 = sub_27055C244();
    if (v6)
    {
      result = __swift_destroy_boxed_opaque_existential_1(&v32);
      *a5 = v6;
    }

    else
    {
      v23 = v14;
      v24 = v15;
      v25 = v16;
      result = __swift_destroy_boxed_opaque_existential_1(&v32);
      *a6 = v23;
      *(a6 + 8) = v24;
      *(a6 + 16) = v25;
    }
  }

  else
  {
    sub_2703B2934(&v30, &unk_2807D4890);
    if (qword_2807D7378 != -1)
    {
      swift_once();
    }

    v35 = qword_28081C5F8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0);
    sub_2705D6574();
    *(swift_allocObject() + 16) = xmmword_2705E6EB0;
    *&v32 = a2;
    *(&v32 + 1) = a3;
    v33 = a4;
    v34 = &type metadata for AppKeyValueTable;

    v18 = AMSLogKey();
    if (v18)
    {
      v19 = v18;
      v28 = sub_2705D7564();
      v21 = v20;

      sub_2705D6514();
      sub_2705D6504();
      __swift_project_boxed_opaque_existential_1(&v32, v34);
      DynamicType = swift_getDynamicType();
      MetatypeMetadata = swift_getMetatypeMetadata();
      *&v30 = DynamicType;
      sub_2705D64E4();
      sub_2703B2934(&v30, &unk_2807D4890);
      sub_2705D6504();
      MetatypeMetadata = MEMORY[0x277D837D0];
      *&v30 = v28;
      *(&v30 + 1) = v21;
    }

    else
    {
      sub_2705D6514();
      sub_2705D6504();
      __swift_project_boxed_opaque_existential_1(&v32, v34);
      v26 = swift_getDynamicType();
      MetatypeMetadata = swift_getMetatypeMetadata();
      *&v30 = v26;
    }

    sub_2705D64E4();
    sub_2703B2934(&v30, &unk_2807D4890);
    sub_2705D6504();
    sub_2705D6534();
    __swift_destroy_boxed_opaque_existential_1(&v32);
    sub_2705D6514();
    sub_2705D6504();
    sub_2703D7F04(a1, &v32);
    sub_2705D64E4();
    sub_2703B2934(&v32, &unk_2807D4890);
    sub_2705D6504();
    sub_2705D6534();
    v27 = sub_2705D7A74();
    sub_2705B6DB8(v27);

    *a6 = 0;
    *(a6 + 8) = 0;
    *(a6 + 16) = 7;
  }

  return result;
}

void sub_27055EDB0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2703CAAEC(a1, __dst, &unk_2807D4890);
  if (*(&__dst[1] + 1))
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D34D8);
    if (swift_dynamicCast())
    {
      v5 = *(*__src + 16);
      if (v5)
      {
        v6 = a2;
        v7 = *__src + 32;
        v8 = MEMORY[0x277D84F90];
        do
        {
          sub_2703D7F04(v7, __dst);
          sub_27055EDB0(__src, __dst);
          sub_2703B2934(__dst, &unk_2807D4890);
          if (*&__src[24])
          {
            sub_2703E43D4(__src, __dst);
            sub_2703D7F04(__dst, __src);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_27057255C();
              v8 = v10;
            }

            v9 = *(v8 + 16);
            if (v9 >= *(v8 + 24) >> 1)
            {
              sub_27057255C();
              v8 = v11;
            }

            __swift_destroy_boxed_opaque_existential_1(__dst);
            *(v8 + 16) = v9 + 1;
            sub_2703E43D4(__src, (v8 + 32 * v9 + 32));
          }

          else
          {
            sub_2703B2934(__src, &unk_2807D4890);
          }

          v7 += 32;
          --v5;
        }

        while (v5);

        a2 = v6;
      }

      else
      {

        v8 = MEMORY[0x277D84F90];
      }

      *(a2 + 24) = v4;
      *a2 = v8;
      return;
    }
  }

  else
  {
    sub_2703B2934(__dst, &unk_2807D4890);
  }

  sub_2703CAAEC(a1, __dst, &unk_2807D4890);
  if (*(&__dst[1] + 1))
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7558);
    if (swift_dynamicCast())
    {
      v33 = v12;
      v34 = a2;
      v13 = sub_2705D7494();
      v14 = 0;
      v15 = *__src + 64;
      v35 = *__src;
      v16 = 1 << *(*__src + 32);
      v17 = -1;
      if (v16 < 64)
      {
        v17 = ~(-1 << v16);
      }

      v18 = v17 & *(*__src + 64);
      v19 = (v16 + 63) >> 6;
      while (2)
      {
        while (2)
        {
          if (!v18)
          {
            goto LABEL_22;
          }

          while (1)
          {
            v20 = v14;
LABEL_26:
            v21 = __clz(__rbit64(v18));
            v18 &= v18 - 1;
            v22 = v21 | (v20 << 6);
            sub_2703BD1EC(*(v35 + 48) + 40 * v22, &v38);
            sub_2703D7F04(*(v35 + 56) + 32 * v22, v37);
            *__src = v38;
            *&__src[16] = v39;
            *&__src[32] = v40;
            sub_2703E43D4(v37, &__src[40]);
LABEL_27:
            memcpy(__dst, __src, 0x48uLL);
            if (!*(&__dst[1] + 1))
            {

              v34[3] = v33;
              *v34 = v13;
              return;
            }

            *__src = __dst[0];
            *&__src[16] = __dst[1];
            *&__src[32] = *&__dst[2];
            sub_2703E43D4((&__dst[2] + 8), v36);
            sub_27055EDB0(&v38, v36);
            sub_2703B2934(v36, &unk_2807D4890);
            if (*(&v39 + 1))
            {
              break;
            }

            sub_2703D7E30(__src);
            sub_2703B2934(&v38, &unk_2807D4890);
            if (!v18)
            {
LABEL_22:
              while (1)
              {
                v20 = v14 + 1;
                if (__OFADD__(v14, 1))
                {
                  break;
                }

                if (v20 >= v19)
                {
                  v18 = 0;
                  memset(__src, 0, sizeof(__src));
                  goto LABEL_27;
                }

                v18 = *(v15 + 8 * v20);
                ++v14;
                if (v18)
                {
                  v14 = v20;
                  goto LABEL_26;
                }
              }

              __break(1u);
              goto LABEL_50;
            }
          }

          sub_2703E43D4(&v38, v37);
          sub_2703BD1EC(__src, &v38);
          sub_2703D7F04(v37, v36);
          swift_isUniquelyReferenced_nonNull_native();
          v23 = sub_2703D7390(&v38);
          if (__OFADD__(v13[2], (v24 & 1) == 0))
          {
LABEL_50:
            __break(1u);
            goto LABEL_51;
          }

          v25 = v23;
          v26 = v24;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7620);
          if (sub_2705D7E04())
          {
            v27 = sub_2703D7390(&v38);
            if ((v26 & 1) != (v28 & 1))
            {
              goto LABEL_52;
            }

            v25 = v27;
          }

          if (v26)
          {
            v29 = (v13[7] + 32 * v25);
            __swift_destroy_boxed_opaque_existential_1(v29);
            sub_2703E43D4(v36, v29);
            sub_2703D7E30(&v38);
            __swift_destroy_boxed_opaque_existential_1(v37);
            sub_2703D7E30(__src);
            continue;
          }

          break;
        }

        v13[(v25 >> 6) + 8] |= 1 << v25;
        sub_2703BD1EC(&v38, v13[6] + 40 * v25);
        sub_2703E43D4(v36, (v13[7] + 32 * v25));
        sub_2703D7E30(&v38);
        __swift_destroy_boxed_opaque_existential_1(v37);
        sub_2703D7E30(__src);
        v30 = v13[2];
        v31 = __OFADD__(v30, 1);
        v32 = v30 + 1;
        if (!v31)
        {
          v13[2] = v32;
          continue;
        }

        break;
      }

LABEL_51:
      __break(1u);
LABEL_52:
      sub_2705D82D4();
      __break(1u);
      return;
    }
  }

  else
  {
    sub_2703B2934(__dst, &unk_2807D4890);
  }

  sub_2703CAAEC(a1, __dst, &unk_2807D4890);
  if (*(&__dst[1] + 1))
  {
    sub_27046C2B0();
    if (swift_dynamicCast())
    {

      *a2 = 0u;
      *(a2 + 16) = 0u;
      return;
    }
  }

  else
  {
    sub_2703B2934(__dst, &unk_2807D4890);
  }

  sub_2703CAAEC(a1, a2, &unk_2807D4890);
}