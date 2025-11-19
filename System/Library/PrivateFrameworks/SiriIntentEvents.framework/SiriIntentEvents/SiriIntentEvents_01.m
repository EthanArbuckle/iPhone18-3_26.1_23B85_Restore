uint64_t sub_222D8140C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7954746E65746E69 && a2 == 0xEA00000000006570;
  if (v4 || (sub_222D8378C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701869940 && a2 == 0xE400000000000000;
    if (v6 || (sub_222D8378C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6144746E65746E69 && a2 == 0xEA00000000006174;
      if (v7 || (sub_222D8378C() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070)
      {

        return 3;
      }

      else
      {
        v9 = sub_222D8378C();

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

uint64_t sub_222D81580(char a1)
{
  result = 0x7954746E65746E69;
  switch(a1)
  {
    case 1:
      result = 1701869940;
      break;
    case 2:
      result = 0x6144746E65746E69;
      break;
    case 3:
      result = 0x6D617473656D6974;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_222D81614@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_222D8140C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_222D8163C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_222D81578();
  *a1 = result;
  return result;
}

uint64_t sub_222D81664(uint64_t a1)
{
  v2 = sub_222D81994();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222D816A0(uint64_t a1)
{
  v2 = sub_222D81994();

  return MEMORY[0x2821FE720](a1, v2);
}

char *IntentResult.deinit()
{
  v1 = *(v0 + 3);

  sub_222D73124(*(v0 + 5), *(v0 + 6));
  v2 = OBJC_IVAR____TtC16SiriIntentEvents12IntentResult_timestamp;
  v3 = sub_222D834DC();
  OUTLINED_FUNCTION_1(v3);
  (*(v4 + 8))(&v0[v2]);
  return v0;
}

uint64_t IntentResult.__deallocating_deinit()
{
  IntentResult.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_222D8179C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D044C60, &qword_222D857A0);
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v18 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
  sub_222D81994();
  sub_222D8382C();
  v14 = *(v3 + 16);
  v15 = *(v3 + 24);
  LOBYTE(v19) = 0;
  sub_222D8374C();
  if (!v2)
  {
    LOBYTE(v19) = *(v3 + 32);
    v21 = 1;
    sub_222D819E8();
    OUTLINED_FUNCTION_4_4();
    v16 = *(v3 + 48);
    v19 = *(v3 + 40);
    v20 = v16;
    v21 = 2;
    sub_222D72600(v19, v16);
    sub_222D7347C();
    OUTLINED_FUNCTION_4_4();
    sub_222D73124(v19, v20);
    LOBYTE(v19) = 3;
    sub_222D834DC();
    sub_222D73904(&qword_280FEADB0);
    sub_222D8375C();
  }

  return (*(v8 + 8))(v12, v5);
}

unint64_t sub_222D81994()
{
  result = qword_280FEAAC0;
  if (!qword_280FEAAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FEAAC0);
  }

  return result;
}

unint64_t sub_222D819E8()
{
  result = qword_280FEADA8;
  if (!qword_280FEADA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FEADA8);
  }

  return result;
}

uint64_t IntentResult.__allocating_init(from:)(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_5_0();
  IntentResult.init(from:)(a1);
  return v2;
}

uint64_t IntentResult.init(from:)(uint64_t *a1)
{
  v3 = sub_222D834DC();
  v4 = OUTLINED_FUNCTION_0(v3);
  v26 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D044C68, &qword_222D857A8);
  v11 = OUTLINED_FUNCTION_0(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = a1[3];
  v14 = a1[4];
  v28 = a1;
  __swift_project_boxed_opaque_existential_0Tm(a1, v15);
  sub_222D81994();
  sub_222D8381C();
  if (v1)
  {
    v21 = v27;
    type metadata accessor for IntentResult();
    v18 = *(*v21 + 48);
    v19 = *(*v21 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v16 = v9;
    LOBYTE(v29) = 0;
    v17 = sub_222D836FC();
    v21 = v27;
    *(v27 + 16) = v17;
    *(v21 + 24) = v22;
    v30 = 1;
    sub_222D81DB4();
    OUTLINED_FUNCTION_3_4();
    *(v21 + 32) = v29;
    v30 = 2;
    sub_222D738B0();
    OUTLINED_FUNCTION_3_4();
    *(v21 + 40) = v29;
    LOBYTE(v29) = 3;
    sub_222D73904(&qword_280FEA4A0);
    sub_222D8370C();
    v23 = OUTLINED_FUNCTION_2_0();
    v24(v23);
    (*(v26 + 32))(v21 + OBJC_IVAR____TtC16SiriIntentEvents12IntentResult_timestamp, v16, v3);
  }

  __swift_destroy_boxed_opaque_existential_0(v28);
  return v21;
}

unint64_t sub_222D81DB4()
{
  result = qword_280FEA490;
  if (!qword_280FEA490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FEA490);
  }

  return result;
}

unint64_t sub_222D81E0C()
{
  result = qword_27D044C70;
  if (!qword_27D044C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D044C70);
  }

  return result;
}

uint64_t sub_222D81E60@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = IntentResult.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for IntentResultType(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_222D81F94()
{
  result = sub_222D834DC();
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

uint64_t getEnumTagSinglePayload for IntentResult.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
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

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for IntentResult.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_222D82298()
{
  result = qword_27D044C78;
  if (!qword_27D044C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D044C78);
  }

  return result;
}

unint64_t sub_222D822F0()
{
  result = qword_280FEAAB0;
  if (!qword_280FEAAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FEAAB0);
  }

  return result;
}

unint64_t sub_222D82348()
{
  result = qword_280FEAAB8;
  if (!qword_280FEAAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FEAAB8);
  }

  return result;
}

unint64_t sub_222D8239C()
{
  result = qword_280FEADA0;
  if (!qword_280FEADA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FEADA0);
  }

  return result;
}

uint64_t IntentStart.intentType.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t IntentStart.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16SiriIntentEvents11IntentStart_timestamp;
  v4 = sub_222D834DC();
  v5 = OUTLINED_FUNCTION_1(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t IntentStart.__allocating_init(intentType:timestamp:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_2_1();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = OBJC_IVAR____TtC16SiriIntentEvents11IntentStart_timestamp;
  v8 = sub_222D834DC();
  OUTLINED_FUNCTION_1(v8);
  (*(v9 + 32))(v6 + v7, a3);
  return v6;
}

uint64_t IntentStart.init(intentType:timestamp:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  v5 = OBJC_IVAR____TtC16SiriIntentEvents11IntentStart_timestamp;
  v6 = sub_222D834DC();
  OUTLINED_FUNCTION_1(v6);
  (*(v7 + 32))(v3 + v5, a3);
  return v3;
}

uint64_t IntentStart.__allocating_init(intent:timestamp:)(void *a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_1();
  v4 = swift_allocObject();
  IntentStart.init(intent:timestamp:)(a1, a2);
  return v4;
}

unint64_t sub_222D825D4()
{
  sub_222D8365C();

  MEMORY[0x223DCC4E0](*(v0 + 16), *(v0 + 24));
  MEMORY[0x223DCC4E0](0x7473656D6974202CLL, 0xED0000203A706D61);
  sub_222D834DC();
  sub_222D73904(&qword_280FEA498);
  v1 = sub_222D8376C();
  MEMORY[0x223DCC4E0](v1);

  MEMORY[0x223DCC4E0](41, 0xE100000000000000);
  return 0xD000000000000018;
}

uint64_t sub_222D826DC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7954746E65746E69 && a2 == 0xEA00000000006570;
  if (v4 || (sub_222D8378C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070)
  {

    return 1;
  }

  else
  {
    v7 = sub_222D8378C();

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

uint64_t sub_222D827F4(char a1)
{
  sub_222D837EC();
  MEMORY[0x223DCC740](a1 & 1);
  return sub_222D8380C();
}

uint64_t sub_222D8283C(char a1)
{
  if (a1)
  {
    return 0x6D617473656D6974;
  }

  else
  {
    return 0x7954746E65746E69;
  }
}

uint64_t sub_222D828A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_222D826DC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_222D828C8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_222D827B4();
  *a1 = result;
  return result;
}

uint64_t sub_222D828F0(uint64_t a1)
{
  v2 = sub_222D82BF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222D8292C(uint64_t a1)
{
  v2 = sub_222D82BF8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IntentStart.deinit()
{
  v1 = *(v0 + 24);

  v2 = OBJC_IVAR____TtC16SiriIntentEvents11IntentStart_timestamp;
  v3 = sub_222D834DC();
  OUTLINED_FUNCTION_1(v3);
  (*(v4 + 8))(v0 + v2);
  return v0;
}

uint64_t IntentStart.__deallocating_deinit()
{
  v1 = *(v0 + 3);

  v2 = OBJC_IVAR____TtC16SiriIntentEvents11IntentStart_timestamp;
  v3 = sub_222D834DC();
  OUTLINED_FUNCTION_1(v3);
  (*(v4 + 8))(&v0[v2]);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v5, v6);
}

uint64_t sub_222D82A64(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D044C80, &qword_222D85AC0);
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v17[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
  sub_222D82BF8();
  sub_222D8382C();
  v14 = *(v3 + 16);
  v15 = *(v3 + 24);
  v17[15] = 0;
  sub_222D8374C();
  if (!v2)
  {
    v17[14] = 1;
    sub_222D834DC();
    sub_222D73904(&qword_280FEADB0);
    sub_222D8375C();
  }

  return (*(v8 + 8))(v12, v5);
}

unint64_t sub_222D82BF8()
{
  result = qword_280FEABB0;
  if (!qword_280FEABB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FEABB0);
  }

  return result;
}

uint64_t IntentStart.__allocating_init(from:)(uint64_t *a1)
{
  OUTLINED_FUNCTION_2_1();
  v2 = swift_allocObject();
  IntentStart.init(from:)(a1);
  return v2;
}

void *IntentStart.init(from:)(uint64_t *a1)
{
  v3 = sub_222D834DC();
  v4 = OUTLINED_FUNCTION_0(v3);
  v23 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D044C88, &qword_222D85AC8);
  v10 = OUTLINED_FUNCTION_0(v24);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
  sub_222D82BF8();
  sub_222D8381C();
  if (v1)
  {
    v18 = v25;
    type metadata accessor for IntentStart();
    v15 = *(*v18 + 48);
    v16 = *(*v18 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v27 = 0;
    v14 = sub_222D836FC();
    v18 = v25;
    v25[2] = v14;
    v18[3] = v19;
    v26 = 1;
    sub_222D73904(&qword_280FEA4A0);
    sub_222D8370C();
    v20 = OUTLINED_FUNCTION_2_5();
    v21(v20);
    (*(v23 + 32))(v18 + OBJC_IVAR____TtC16SiriIntentEvents11IntentStart_timestamp, v9, v3);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v18;
}

uint64_t sub_222D82F44@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = IntentStart.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_222D82FC0()
{
  result = sub_222D834DC();
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

_BYTE *storeEnumTagSinglePayload for IntentStart.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_222D83214()
{
  result = qword_27D044C90;
  if (!qword_27D044C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D044C90);
  }

  return result;
}

unint64_t sub_222D8326C()
{
  result = qword_280FEABA0;
  if (!qword_280FEABA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FEABA0);
  }

  return result;
}

unint64_t sub_222D832C4()
{
  result = qword_280FEABA8;
  if (!qword_280FEABA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FEABA8);
  }

  return result;
}

uint64_t sub_222D83318()
{
  v0 = sub_222D8353C();
  __swift_allocate_value_buffer(v0, qword_280FEADC0);
  __swift_project_value_buffer(v0, qword_280FEADC0);
  return sub_222D8352C();
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