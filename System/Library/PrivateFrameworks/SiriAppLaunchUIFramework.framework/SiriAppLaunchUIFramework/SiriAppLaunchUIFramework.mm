uint64_t sub_2661BCB98()
{
  v0 = sub_2661C9C50();
  __swift_allocate_value_buffer(v0, qword_2800661A0);
  __swift_project_value_buffer(v0, qword_2800661A0);
  if (qword_280065C68 != -1)
  {
    swift_once();
  }

  v1 = qword_2800661B8;
  return sub_2661C9C60();
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_2661BCCD0(uint64_t a1, id *a2)
{
  result = sub_2661CA070();
  *a2 = 0;
  return result;
}

uint64_t sub_2661BCD4C(uint64_t a1, id *a2)
{
  v3 = sub_2661CA080();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_2661BCDCC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2661BCDF4();
  *a1 = result;
  return result;
}

uint64_t sub_2661BCDF4()
{
  sub_2661CA090();
  v0 = sub_2661CA060();

  return v0;
}

uint64_t sub_2661BCE2C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_2661BD37C();
}

uint64_t sub_2661BCE38@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_2661CA060();

  *a2 = v5;
  return result;
}

uint64_t sub_2661BCE80@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2661BE36C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void type metadata accessor for ASCAppState()
{
  if (!qword_280065C70)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_280065C70);
    }
  }
}

uint64_t sub_2661BCEFC(uint64_t a1)
{
  v2 = sub_2661BD148(&qword_280065C90);
  v3 = sub_2661BD148(&qword_280065C98);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_2661BD038()
{
  v0 = sub_2661CA090();
  v1 = MEMORY[0x26677D3A0](v0);

  return v1;
}

uint64_t sub_2661BD078()
{
  sub_2661CA090();
  sub_2661CA0A0();
}

uint64_t sub_2661BD0D4()
{
  sub_2661CA090();
  sub_2661CA190();
  sub_2661CA0A0();
  v0 = sub_2661CA1A0();

  return v0;
}

uint64_t sub_2661BD148(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ASCAppState();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2661BD18C(uint64_t a1, unint64_t a2)
{
  if (!a1)
  {
    return !a2;
  }

  if (a1 == 1)
  {
    return a2 == 1;
  }

  if (a2 < 2)
  {
    return 0;
  }

  v3 = sub_2661CA090();
  v5 = v4;
  if (v3 != sub_2661CA090() || v5 != v6)
  {
    v8 = sub_2661CA170();

    return v8 & 1;
  }

  return 1;
}

uint64_t sub_2661BD250()
{
  v0 = sub_2661CA160();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_2661BD29C(char a1)
{
  result = 0x536C6C6174736E69;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x656E65704F707061;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_2661BD37C()
{
  v0 = sub_2661CA090();
  v2 = v1;
  if (v0 == sub_2661CA090() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_2661CA170();
  }

  return v5 & 1;
}

uint64_t sub_2661BD400(unsigned __int8 a1, char a2)
{
  v2 = 0xEE00646570706F74;
  v3 = 0x536C6C6174736E69;
  v4 = a1;
  v5 = 0x536C6C6174736E69;
  v6 = 0xEE00646570706F74;
  switch(v4)
  {
    case 1:
      break;
    case 2:
      v7 = "installRequested";
      goto LABEL_5;
    case 3:
      v5 = 0x656E65704F707061;
      v6 = 0xE900000000000064;
      break;
    case 4:
      v6 = 0x80000002661CB4C0;
      v5 = 0xD000000000000013;
      break;
    default:
      v7 = &unk_2661CB480;
LABEL_5:
      v6 = v7 | 0x8000000000000000;
      v5 = 0xD000000000000010;
      break;
  }

  switch(a2)
  {
    case 1:
      break;
    case 2:
      v8 = "installRequested";
      goto LABEL_11;
    case 3:
      v3 = 0x656E65704F707061;
      v2 = 0xE900000000000064;
      break;
    case 4:
      v2 = 0x80000002661CB4C0;
      v3 = 0xD000000000000013;
      break;
    default:
      v8 = &unk_2661CB480;
LABEL_11:
      v2 = v8 | 0x8000000000000000;
      v3 = 0xD000000000000010;
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_2661CA170();
  }

  return v10 & 1;
}

uint64_t sub_2661BD5A8(char a1)
{
  sub_2661CA190();
  sub_2661BD29C(a1);
  sub_2661CA0A0();

  return sub_2661CA1A0();
}

uint64_t sub_2661BD614()
{
  sub_2661CA0A0();
}

uint64_t sub_2661BD718(uint64_t a1, char a2)
{
  sub_2661CA190();
  sub_2661BD29C(a2);
  sub_2661CA0A0();

  return sub_2661CA1A0();
}

uint64_t sub_2661BD778@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2661BD250();
  *a2 = result;
  return result;
}

unint64_t sub_2661BD7A8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_2661BD29C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2661BD7D4(void *a1)
{
  v3 = sub_2661BD9CC(a1);
  swift_beginAccess();
  sub_2661BE390(sub_2661BE528);
  v4 = *(*(v1 + 16) + 16);
  sub_2661BE3EC(v4, sub_2661BE528);
  v5 = *(v1 + 16);
  *(v5 + 16) = v4 + 1;
  *(v5 + 8 * v4 + 32) = a1;
  *(v1 + 16) = v5;
  swift_endAccess();
  if (v3 == 5)
  {
    sub_2661BE380(a1);
    return 5;
  }

  swift_beginAccess();
  v6 = *(v1 + 24);
  v7 = *(v6 + 16);
  if (!v7 || (v8 = *(v6 + v7 + 31), v8 == 5))
  {
    sub_2661BE380(a1);
    goto LABEL_7;
  }

  v12 = sub_2661BD29C(v8);
  v14 = v13;
  if (v12 == sub_2661BD29C(v3) && v14 == v15)
  {
    sub_2661BE380(a1);

    return 5;
  }

  v17 = sub_2661CA170();
  sub_2661BE380(a1);

  if ((v17 & 1) == 0)
  {
LABEL_7:
    swift_beginAccess();
    sub_2661BE390(sub_2661BE434);
    v9 = *(*(v1 + 24) + 16);
    sub_2661BE3EC(v9, sub_2661BE434);
    v10 = *(v1 + 24);
    *(v10 + 16) = v9 + 1;
    *(v10 + v9 + 32) = v3;
    *(v1 + 24) = v10;
    swift_endAccess();
    return v3;
  }

  return 5;
}

uint64_t sub_2661BD9CC(uint64_t a1)
{
  if (!a1)
  {
    sub_2661BDE50();
    if (v3)
    {
      return 3;
    }

    sub_2661BDBF4();
    if (v20)
    {
      return 1;
    }

    return 5;
  }

  if (a1 == 1)
  {
    return 4;
  }

  v4 = *MEMORY[0x277CEC1B8];
  sub_2661CA090();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4();
  v6 = v6 && v1 == v5;
  if (v6)
  {
    goto LABEL_27;
  }

  v7 = OUTLINED_FUNCTION_0();

  if (v7)
  {
    goto LABEL_28;
  }

  v8 = *MEMORY[0x277CEC198];
  sub_2661CA090();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4();
  if (v6 && v1 == v9)
  {
LABEL_27:

LABEL_28:
    if (sub_2661BDB68())
    {
      return 0;
    }

    return 5;
  }

  v11 = OUTLINED_FUNCTION_0();

  if (v11)
  {
    goto LABEL_28;
  }

  v12 = *MEMORY[0x277CEC1A0];
  sub_2661CA090();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4();
  if (!v6 || v1 != v13)
  {
    v15 = OUTLINED_FUNCTION_0();

    if (v15)
    {
      goto LABEL_33;
    }

    v16 = *MEMORY[0x277CEC1B0];
    sub_2661CA090();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    if (!v6 || v1 != v17)
    {
      v19 = OUTLINED_FUNCTION_0();

      if ((v19 & 1) == 0)
      {
        return 5;
      }

      goto LABEL_33;
    }
  }

LABEL_33:
  sub_2661BDBF4();
  if (v21)
  {
    return 2;
  }

  return 5;
}

BOOL sub_2661BDB68()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v5 = 0;
  v4[2] = &v5;

  v2 = sub_2661BDDA0(sub_2661BE720, v4, v1);

  return v2;
}

void sub_2661BDBF4()
{
  sub_2661BDB68();
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  v3 = *MEMORY[0x277CEC1B8];
  v4 = *MEMORY[0x277CEC198];

  for (i = 0; ; ++i)
  {
    if (v2 == i)
    {
      goto LABEL_20;
    }

    if (i >= *(v1 + 16))
    {
      break;
    }

    v6 = v1 + 8 * i;
    v7 = *(v6 + 32);
    if (v7 >= 2)
    {
      v8 = *(v6 + 32);
      v9 = sub_2661CA090();
      v11 = v10;
      if (v9 == sub_2661CA090() && v11 == v12)
      {
        v22 = v7;

LABEL_18:

        sub_2661BE370(v7);
        return;
      }

      v14 = OUTLINED_FUNCTION_3();
      v15 = v7;

      if (v14)
      {
        goto LABEL_18;
      }

      v16 = sub_2661CA090();
      v18 = v17;
      if (v16 == sub_2661CA090() && v18 == v19)
      {

        sub_2661BE370(v7);
LABEL_20:

        return;
      }

      v21 = OUTLINED_FUNCTION_3();

      sub_2661BE370(v7);
      if (v21)
      {
        goto LABEL_20;
      }
    }
  }

  __break(1u);
}

BOOL sub_2661BDDA0(uint64_t (*a1)(void **), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = (a3 + 32);
  do
  {
    v7 = v5;
    if (v5-- == 0)
    {
      break;
    }

    v9 = *v6;
    v13 = v9;
    sub_2661BE380(v9);
    v10 = a1(&v13);
    if (v3)
    {
      sub_2661BE370(v9);
      return v7 != 0;
    }

    v11 = v10;
    sub_2661BE370(v9);
    ++v6;
  }

  while ((v11 & 1) == 0);
  return v7 != 0;
}

void sub_2661BDE50()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  v3 = *MEMORY[0x277CEC1A0];
  v4 = *MEMORY[0x277CEC1B0];

  for (i = 0; ; ++i)
  {
    if (v2 == i)
    {
      goto LABEL_19;
    }

    if (i >= *(v1 + 16))
    {
      break;
    }

    v6 = v1 + 8 * i;
    v7 = *(v6 + 32);
    if (v7 >= 2)
    {
      v8 = *(v6 + 32);
      v9 = sub_2661CA090();
      v11 = v10;
      if (v9 == sub_2661CA090() && v11 == v12)
      {
        v22 = v7;

LABEL_17:

        sub_2661BE370(v7);
        return;
      }

      v14 = OUTLINED_FUNCTION_2();
      v15 = v7;

      if (v14)
      {
        goto LABEL_17;
      }

      v16 = sub_2661CA090();
      v18 = v17;
      if (v16 == sub_2661CA090() && v18 == v19)
      {

        sub_2661BE370(v7);
LABEL_19:

        return;
      }

      v21 = OUTLINED_FUNCTION_2();

      sub_2661BE370(v7);
      if (v21)
      {
        goto LABEL_19;
      }
    }
  }

  __break(1u);
}

uint64_t sub_2661BDFE0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t sub_2661BE008()
{
  sub_2661BDFE0();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t getEnumTagSinglePayload for ASCLockupEventManager.InstrumentationEvent(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
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

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ASCLockupEventManager.InstrumentationEvent(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2661BE1C4);
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

uint64_t get_enum_tag_for_layout_string_24SiriAppLaunchUIFramework21ASCLockupEventManagerC08DetailedF0O(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2661BE234(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_2661BE288(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_2661BE2E4(void *result, int a2)
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

unint64_t sub_2661BE318()
{
  result = qword_280065CA0;
  if (!qword_280065CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280065CA0);
  }

  return result;
}

void sub_2661BE370(id a1)
{
  if (a1 >= 2)
  {
  }
}

id sub_2661BE380(id result)
{
  if (result >= 2)
  {
    return result;
  }

  return result;
}

uint64_t sub_2661BE390(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
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

uint64_t sub_2661BE3EC(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

char *sub_2661BE434(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280065CA8, &qword_2661CACB0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_2661BE528(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280065CB0, &qword_2661CACB8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_2661BE630(uint64_t a1, unint64_t a2)
{
  if (!a1)
  {
    return !a2;
  }

  if (a1 == 1)
  {
    return a2 == 1;
  }

  if (a2 < 2)
  {
    return 0;
  }

  v3 = sub_2661CA090();
  v5 = v4;
  if (v3 != sub_2661CA090() || v5 != v6)
  {
    v8 = sub_2661CA170();

    return v8 & 1;
  }

  return 1;
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

uint64_t OUTLINED_FUNCTION_0()
{

  return sub_2661CA170();
}

uint64_t OUTLINED_FUNCTION_1()
{

  return sub_2661CA090();
}

uint64_t OUTLINED_FUNCTION_2()
{

  return sub_2661CA170();
}

uint64_t OUTLINED_FUNCTION_3()
{

  return sub_2661CA170();
}

uint64_t OUTLINED_FUNCTION_5()
{

  return swift_beginAccess();
}

uint64_t sub_2661BE854(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_3_0();
  v6 = sub_2661C9F20();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = v3;
  }

  else
  {
    v7 = sub_2661C9B90();
    v8 = v3 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_2661BE928(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_3_0();
  v8 = sub_2661C9F20();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = v4;
  }

  else
  {
    v9 = sub_2661C9B90();
    v10 = v4 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t type metadata accessor for AppDisambiguationView()
{
  result = qword_280065CB8;
  if (!qword_280065CB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2661BEA3C()
{
  result = sub_2661C9F20();
  if (v1 <= 0x3F)
  {
    result = sub_2661C9B90();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2661BEADC()
{
  v1 = *(type metadata accessor for AppDisambiguationView() - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20]();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280065CC8, &qword_2661CAD58);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = &v12 - v6;
  sub_2661C0168(v0, &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v9 = swift_allocObject();
  sub_2661C042C(&v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280065CE0, &qword_2661CAD70);
  sub_2661BFF90(&qword_280065CE8, &qword_280065CE0, &qword_2661CAD70);
  sub_2661C9F60();
  OUTLINED_FUNCTION_2_0();
  sub_2661BFF90(v10, &qword_280065CC8, &qword_2661CAD58);
  sub_2661C9E70();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_2661BED2C(uint64_t a1)
{
  v2 = (type metadata accessor for AppDisambiguationView() - 8);
  v3 = *v2;
  v4 = *(*v2 + 64);
  MEMORY[0x28223BE20]();
  v5 = *(*(sub_2661C9FF0() - 8) + 64);
  v6 = MEMORY[0x28223BE20]();
  v7 = v2[7];
  v8 = MEMORY[0x26677CE50](v6);
  v17 = MEMORY[0x277D837D0];
  v18 = MEMORY[0x277D63F80];
  v15 = v8;
  v16 = v9;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_2661C9FE0();
  sub_2661C0168(a1, v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  sub_2661C042C(v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280065CF8, &unk_2661CAD78);
  sub_2661BFCE4();
  return sub_2661C9FB0();
}

uint64_t sub_2661BEF08(uint64_t a1)
{
  v2 = *(type metadata accessor for AppDisambiguationView() - 8);
  v3 = *(v2 + 64);
  v4 = a1 + *(MEMORY[0x28223BE20]() + 28);
  v10[3] = sub_2661C9B80();
  swift_getKeyPath();
  sub_2661C0168(a1, v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v6 = swift_allocObject();
  sub_2661C042C(v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280065D10, &qword_2661CADA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280065D18, &qword_2661CADA8);
  sub_2661BFF90(&qword_280065D20, &qword_280065D10, &qword_2661CADA0);
  sub_2661BFFD8(&qword_280065D28, MEMORY[0x277D552E8]);
  v7 = sub_2661C9FD0();
  v8 = sub_2661BFFD8(&qword_280065D08, MEMORY[0x277D63D08]);
  v10[1] = v7;
  v10[2] = v8;
  swift_getOpaqueTypeConformance2();
  return sub_2661C9EB0();
}

uint64_t sub_2661BF174@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v71 = a2;
  v62 = a1;
  v78 = a3;
  v72 = *(sub_2661C9AC0() - 8);
  v3 = *(v72 + 64);
  MEMORY[0x28223BE20]();
  v73 = v4;
  v75 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = *(type metadata accessor for AppDisambiguationView() - 8);
  v5 = *(v68 + 64);
  MEMORY[0x28223BE20]();
  v69 = v6;
  v70 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2661C9FD0();
  v76 = *(v7 - 8);
  v77 = v7;
  v8 = *(v76 + 64);
  MEMORY[0x28223BE20]();
  v74 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280065D30, &qword_2661CADB0);
  v10 = (*(*(v66 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v65 = &v55 - v11;
  v12 = sub_2661C9A20();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20]();
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(*(sub_2661C9A70() - 8) + 64);
  MEMORY[0x28223BE20]();
  v19 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_2661C9EE0();
  v79 = *(v20 - 8);
  v21 = *(v79 + 64);
  MEMORY[0x28223BE20]();
  v23 = &v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280065D38, &qword_2661CADB8);
  v25 = *(v24 - 8);
  v63 = v24;
  v64 = v25;
  v26 = (*(v25 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v28 = &v55 - v27;
  sub_2661C9AB0();
  v60 = v19;
  sub_2661C9A60();

  sub_2661C9EF0();
  v29 = *MEMORY[0x277D62BE0];
  v30 = v13;
  v61 = *(v13 + 104);
  v61(v16, v29, v12);
  v31 = sub_2661BFFD8(&qword_280065D40, MEMORY[0x277D63B20]);
  sub_2661C9E10();
  v32 = *(v30 + 8);
  v58 = v30 + 8;
  v59 = v32;
  v33 = v12;
  v32(v16, v12);
  v34 = *(v79 + 8);
  v79 += 8;
  v56 = v20;
  v57 = v34;
  v34(v23, v20);
  v104 = v20;
  v105 = v31;
  swift_getOpaqueTypeConformance2();
  v35 = v63;
  v67 = sub_2661C9DF0();
  v36 = v28;
  v37 = v62;
  (*(v64 + 8))(v36, v35);
  sub_2661C9A50();
  sub_2661C9EF0();
  v38 = v33;
  v61(v16, *MEMORY[0x277D62BD8], v33);
  v39 = v65;
  v40 = v56;
  sub_2661C9E10();
  v59(v16, v38);
  v57(v23, v40);
  *(v39 + *(v66 + 36)) = 0x3FD999999999999ALL;
  sub_2661C0020();
  v41 = sub_2661C9DF0();
  v42 = sub_2661C010C(v39);
  v43 = MEMORY[0x26677CD80](v42);
  v106 = MEMORY[0x277D837D0];
  v107 = MEMORY[0x277D63F80];
  v104 = v43;
  v105 = v44;
  v103 = 0;
  v101 = 0u;
  v102 = 0u;
  v100 = 0;
  v98 = 0u;
  v99 = 0u;
  v45 = sub_2661C9A80();
  v79 = v41;
  if (v45)
  {
  }

  else
  {
    v46 = sub_2661C9DF0();
  }

  v96 = MEMORY[0x277CE11C8];
  v97 = MEMORY[0x277D63A60];
  v94 = 0;
  v95 = v46;
  v92 = 0u;
  v93 = 0u;
  v91 = 0;
  v89 = 0u;
  v90 = 0u;
  v88 = 0;
  v86 = 0u;
  v87 = 0u;
  v85 = 0;
  v83 = 0u;
  v84 = 0u;
  v81 = MEMORY[0x277CE11C8];
  v82 = MEMORY[0x277D63A60];
  v80 = v67;

  v47 = v74;
  sub_2661C9FC0();
  v48 = v70;
  sub_2661C0168(v71, v70);
  v49 = v75;
  sub_2661C0168(v37, v75);
  v50 = (*(v68 + 80) + 16) & ~*(v68 + 80);
  v51 = (v69 + *(v72 + 80) + v50) & ~*(v72 + 80);
  v52 = swift_allocObject();
  sub_2661C042C(v48, v52 + v50);
  sub_2661C042C(v49, v52 + v51);
  sub_2661BFFD8(&qword_280065D08, MEMORY[0x277D63D08]);
  v53 = v77;
  sub_2661C9E20();

  return (*(v76 + 8))(v47, v53);
}

uint64_t sub_2661BF9A4()
{
  v0 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280065D60, &unk_2661CADD0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v2 = &v13 - v1;
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280065D68, &unk_2661CB450) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v5 = &v13 - v4;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280065D70, &unk_2661CADE0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v8 = &v13 - v7;
  sub_2661C9F00();
  v9 = sub_2661CA010();
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    return sub_2661C0554(v8, &qword_280065D70, &unk_2661CADE0);
  }

  sub_2661C9A90();
  v11 = sub_2661C9A30();
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v11);
  v12 = sub_2661C9F70();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v12);
  sub_2661CA000();
  sub_2661C0554(v2, &qword_280065D60, &unk_2661CADD0);
  sub_2661C0554(v5, &qword_280065D68, &unk_2661CB450);
  return (*(*(v9 - 8) + 8))(v8, v9);
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

uint64_t sub_2661BFC60(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for AppDisambiguationView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_2661BFCE4()
{
  result = qword_280065D00;
  if (!qword_280065D00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280065CF8, &unk_2661CAD78);
    sub_2661C9FD0();
    sub_2661BFFD8(&qword_280065D08, MEMORY[0x277D63D08]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280065D00);
  }

  return result;
}

uint64_t objectdestroyTm()
{
  v2 = type metadata accessor for AppDisambiguationView();
  OUTLINED_FUNCTION_4_0(v2);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v7 = *(v6 + 64);
  v8 = sub_2661C9F20();
  OUTLINED_FUNCTION_0_0(v8);
  (*(v9 + 8))(v1 + v5);
  v10 = v1 + v5 + *(v0 + 28);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280065CD0, &qword_2661CAD60);
  OUTLINED_FUNCTION_0_0(v11);
  (*(v12 + 8))(v10);
  v13 = *(sub_2661C9B90() + 20);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280065CD8, &qword_2661CAD68);
  OUTLINED_FUNCTION_0_0(v14);
  (*(v15 + 8))(v10 + v13);

  return MEMORY[0x2821FE8E8](v1, v5 + v7, v4 | 7);
}

uint64_t sub_2661BFF10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AppDisambiguationView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_2661BF174(a1, v6, a2);
}

uint64_t sub_2661BFF90(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2661BFFD8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2661C0020()
{
  result = qword_280065D48;
  if (!qword_280065D48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280065D30, &qword_2661CADB0);
    sub_2661C9EE0();
    sub_2661BFFD8(&qword_280065D40, MEMORY[0x277D63B20]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280065D48);
  }

  return result;
}

uint64_t sub_2661C010C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280065D30, &qword_2661CADB0);
  OUTLINED_FUNCTION_0_0(v2);
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_2661C0168(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_3_0();
  v6 = v5(v4);
  OUTLINED_FUNCTION_1_0(v6);
  (*(v7 + 16))(a2, v2);
  return a2;
}

uint64_t sub_2661C01C4()
{
  v2 = (type metadata accessor for AppDisambiguationView() - 8);
  v3 = *(*v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(*v2 + 64);
  v6 = sub_2661C9AC0();
  OUTLINED_FUNCTION_4_0(v6);
  v8 = v7;
  v10 = v9;
  v11 = *(v8 + 80);
  v12 = (v4 + v5 + v11) & ~v11;
  v13 = *(v10 + 64);
  v14 = v3 | v11;
  v15 = sub_2661C9F20();
  OUTLINED_FUNCTION_0_0(v15);
  (*(v16 + 8))(v1 + v4);
  v17 = v1 + v4 + v2[7];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280065CD0, &qword_2661CAD60);
  OUTLINED_FUNCTION_1_0(v18);
  v20 = *(v19 + 8);
  v20(v17, v18);
  v21 = *(sub_2661C9B90() + 20);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280065CD8, &qword_2661CAD68);
  OUTLINED_FUNCTION_0_0(v22);
  (*(v23 + 8))(v17 + v21);
  v20(v1 + v12, v18);
  v20(v1 + v12 + v0[7], v18);
  v24 = v0[8];
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280065D50, &unk_2661CADC0);
  OUTLINED_FUNCTION_0_0(v25);
  (*(v26 + 8))(v1 + v12 + v24);
  v27 = v0[9];
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280065D58, &qword_2661CB200);
  OUTLINED_FUNCTION_0_0(v28);
  (*(v29 + 8))(v1 + v12 + v27);

  return MEMORY[0x2821FE8E8](v1, v12 + v13, v14 | 7);
}

uint64_t sub_2661C042C(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_3_0();
  v6 = v5(v4);
  OUTLINED_FUNCTION_1_0(v6);
  (*(v7 + 32))(a2, v2);
  return a2;
}

uint64_t sub_2661C0488()
{
  v1 = *(type metadata accessor for AppDisambiguationView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_2661C9AC0() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_2661BF9A4();
}

uint64_t sub_2661C0554(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_0_0(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_2661C05A8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280065CC8, &qword_2661CAD58);
  OUTLINED_FUNCTION_2_0();
  sub_2661BFF90(v0, &qword_280065CC8, &qword_2661CAD58);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2661C06A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2661C9AF0();
  v7 = OUTLINED_FUNCTION_2_1(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }

  v11 = sub_2661C9F20();
  v12 = OUTLINED_FUNCTION_2_1(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v10 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v15 = *(a1 + *(a3 + 28));
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  v16 = v15 - 1;
  if (v16 < 0)
  {
    v16 = -1;
  }

  return (v16 + 1);
}

uint64_t sub_2661C07B4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2661C9AF0();
  v9 = OUTLINED_FUNCTION_2_1(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = sub_2661C9F20();
    result = OUTLINED_FUNCTION_2_1(v13);
    if (*(v15 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = a2;
      return result;
    }

    v11 = result;
    v12 = a1 + *(a4 + 24);
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t type metadata accessor for AppOffloadedView()
{
  result = qword_280065D78;
  if (!qword_280065D78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2661C08E8()
{
  sub_2661C9AF0();
  if (v0 <= 0x3F)
  {
    sub_2661C099C();
    if (v1 <= 0x3F)
    {
      sub_2661C9F20();
      if (v2 <= 0x3F)
      {
        sub_2661C0A30();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2661C099C()
{
  if (!qword_280065D88)
  {
    type metadata accessor for ObservableHeight();
    sub_2661C0AC4(&qword_280065D90, type metadata accessor for ObservableHeight);
    v0 = sub_2661C9CD0();
    if (!v1)
    {
      atomic_store(v0, &qword_280065D88);
    }
  }
}

void sub_2661C0A30()
{
  if (!qword_280065D98)
  {
    sub_2661CA050();
    sub_2661C0AC4(&qword_280065DA0, MEMORY[0x277D63F60]);
    v0 = sub_2661C9D10();
    if (!v1)
    {
      atomic_store(v0, &qword_280065D98);
    }
  }
}

uint64_t sub_2661C0AC4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2661C0B28()
{
  v0 = type metadata accessor for ObservableHeight();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_2661C3078();
}

uint64_t sub_2661C0B68@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v3 = type metadata accessor for AppOffloadedView();
  v4 = OUTLINED_FUNCTION_4_0(v3);
  v25 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  *(&__dst[1] + 1) = sub_2661C9AF0();
  *&__dst[2] = MEMORY[0x277D552F8];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(__dst);
  sub_2661C1278(v2, boxed_opaque_existential_1, MEMORY[0x277D55300]);
  v9 = v2 + *(v1 + 28);
  v10 = *v9;
  v11 = *(v9 + 8);
  v12 = *(v9 + 16);
  type metadata accessor for ObservableHeight();
  sub_2661C0AC4(&qword_280065D90, type metadata accessor for ObservableHeight);
  v24 = v10;
  v23 = OUTLINED_FUNCTION_3_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280065DA8, &qword_2661CAE88);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_2661CADF0;
  *(v13 + 32) = sub_2661C9AE0();
  *(v13 + 40) = v14;
  v15 = v2 + *(v1 + 36);
  v16 = *v15;
  if (*v15)
  {
    sub_2661C1278(v2, &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AppOffloadedView);
    v17 = (*(v25 + 80) + 16) & ~*(v25 + 80);
    v18 = swift_allocObject();
    sub_2661C1454(&v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);
    sub_2661C1518(__dst, __src);
    __src[5] = v23;
    __src[6] = v13;
    __src[7] = v16;
    __src[8] = sub_2661C14B8;
    __src[9] = v18;
    v19 = v16;
    OUTLINED_FUNCTION_3_1();
    sub_2661C16A0();

    sub_2661C9EC0();
    sub_2661C9CE0();
    memcpy(__dst, __src, 0x50uLL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280065DC0, &qword_2661CAEA0);
    sub_2661C1530();
    sub_2661C9E70();
    return sub_2661C0554(__dst, &qword_280065DC0, &qword_2661CAEA0);
  }

  else
  {
    v21 = *(v15 + 8);
    sub_2661CA050();
    sub_2661C0AC4(&qword_280065DA0, MEMORY[0x277D63F60]);
    result = sub_2661C9CF0();
    __break(1u);
  }

  return result;
}

uint64_t sub_2661C0EB8(uint64_t a1)
{
  v2 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280065D60, &unk_2661CADD0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v4 = &v26 - v3;
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280065D70, &unk_2661CADE0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v7 = &v26 - v6;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280065D68, &unk_2661CB450) - 8) + 64);
  v9 = (MEMORY[0x28223BE20])();
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v26 - v12;
  v14 = sub_2661C9A30();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2661C9AD0();
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    v19 = &qword_280065D68;
    v20 = &unk_2661CB450;
    v21 = v13;
    return sub_2661C0554(v21, v19, v20);
  }

  (*(v15 + 32))(v18, v13, v14);
  v22 = a1 + *(type metadata accessor for AppOffloadedView() + 24);
  sub_2661C9F00();
  v23 = sub_2661CA010();
  if (__swift_getEnumTagSinglePayload(v7, 1, v23) == 1)
  {
    (*(v15 + 8))(v18, v14);
    v19 = &qword_280065D70;
    v20 = &unk_2661CADE0;
    v21 = v7;
    return sub_2661C0554(v21, v19, v20);
  }

  (*(v15 + 16))(v11, v18, v14);
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v14);
  v25 = sub_2661C9F70();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v25);
  sub_2661CA000();
  sub_2661C0554(v4, &qword_280065D60, &unk_2661CADD0);
  sub_2661C0554(v11, &qword_280065D68, &unk_2661CB450);
  (*(v15 + 8))(v18, v14);
  return (*(*(v23 - 8) + 8))(v7, v23);
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_2661C1278(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2661C12E0()
{
  v2 = type metadata accessor for AppOffloadedView();
  OUTLINED_FUNCTION_4_0(v2);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v7 = *(v6 + 64);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280065DB0, &qword_2661CAE90);
  OUTLINED_FUNCTION_0_0(v8);
  (*(v9 + 8))(v1 + v5);
  v10 = *(sub_2661C9AF0() + 20);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280065DB8, &qword_2661CAE98);
  OUTLINED_FUNCTION_0_0(v11);
  (*(v12 + 8))(v1 + v5 + v10);
  v13 = v1 + v5 + v0[7];
  v14 = *v13;
  v15 = *(v13 + 8);
  v16 = *(v13 + 16);
  sub_2661C144C();
  v17 = v0[8];
  v18 = sub_2661C9F20();
  OUTLINED_FUNCTION_0_0(v18);
  (*(v19 + 8))(v1 + v5 + v17);

  return MEMORY[0x2821FE8E8](v1, v5 + v7, v4 | 7);
}

uint64_t sub_2661C1454(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppOffloadedView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2661C14B8()
{
  v1 = *(type metadata accessor for AppOffloadedView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_2661C0EB8(v2);
}

uint64_t sub_2661C1518(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_2661C1530()
{
  result = qword_280065DC8;
  if (!qword_280065DC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280065DC0, &qword_2661CAEA0);
    sub_2661C15BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280065DC8);
  }

  return result;
}

unint64_t sub_2661C15BC()
{
  result = qword_280065EF0;
  if (!qword_280065EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280065EF0);
  }

  return result;
}

uint64_t sub_2661C1610()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280065DC0, &qword_2661CAEA0);
  sub_2661C1530();
  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_3_1()
{

  return sub_2661C9CC0();
}

double sub_2661C16A0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2661C9C90();

  return v1;
}

void sub_2661C1714()
{
  OUTLINED_FUNCTION_4_1();
  v1 = sub_2661C9C50();
  v2 = OUTLINED_FUNCTION_1_1(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2_2();
  v9 = v8 - v7;
  v10 = v0[3];
  v11 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v10);
  v12 = (*(v11 + 8))(v10, v11);
  v13 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280065F00, &qword_2661CB058);
  sub_2661C9DC0();
  v14 = [v13 cardViewControllerForCard:v12 feedbackDelegate:v24];

  if (!v14)
  {
    goto LABEL_6;
  }

  objc_opt_self();
  v15 = swift_dynamicCastObjCClass();
  if (!v15)
  {

LABEL_6:
    if (qword_280065C60 != -1)
    {
      OUTLINED_FUNCTION_0_1();
    }

    v20 = __swift_project_value_buffer(v1, qword_2800661A0);
    (*(v4 + 16))(v9, v20, v1);
    v21 = sub_2661C9C40();
    v22 = sub_2661CA100();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_2661BB000, v21, v22, "AppSearchResultsBridgingView.makeNSViewController: did not get back a rendered SearchUICardViewController from SearchUI, failing...", v23, 2u);
      OUTLINED_FUNCTION_3_2();
    }

    (*(v4 + 8))(v9, v1);
    [objc_allocWithZone(MEMORY[0x277D75D28]) init];

    goto LABEL_11;
  }

  v16 = v15;
  [v15 setScrollEnabled_];
  v17 = v14;
  v18 = [v16 view];
  if (v18)
  {
    v19 = v18;
    [v18 _setOverrideVibrancyTrait_];

    sub_2661C9DC0();
    [v16 setDelegate_];

    sub_2661C9DC0();
    [v16 setFeedbackListener_];

LABEL_11:
    OUTLINED_FUNCTION_5_0();
    return;
  }

  __break(1u);
}

uint64_t sub_2661C1A14()
{
  v1 = v0[5];
  v2 = v0[6];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[9];
  v6 = objc_allocWithZone(type metadata accessor for Coordinator());

  v7 = v4;
  sub_2661C3384(v3);
  return sub_2661C1BF8(v1, v2, v7, v3, v5);
}

uint64_t sub_2661C1AA4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2661C1A14();
  *a1 = result;
  return result;
}

uint64_t sub_2661C1B08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2661C3A74();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_2661C1B6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2661C3A74();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_2661C1BD0()
{
  sub_2661C3A74();
  sub_2661C9DA0();
  __break(1u);
}

uint64_t sub_2661C1BF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + OBJC_IVAR____TtC24SiriAppLaunchUIFramework11Coordinator_observableHeight) = a1;
  *(v5 + OBJC_IVAR____TtC24SiriAppLaunchUIFramework11Coordinator_adamIds) = a2;
  v33 = *(a2 + 16);

  v7 = 0;
  v8 = MEMORY[0x277D84F98];
  v34 = a2;
  for (i = (a2 + 40); ; i += 2)
  {
    if (v33 == v7)
    {

      *&v32[OBJC_IVAR____TtC24SiriAppLaunchUIFramework11Coordinator_lockupEventManagers] = v8;
      *&v32[OBJC_IVAR____TtC24SiriAppLaunchUIFramework11Coordinator_context] = a3;
      v26 = &v32[OBJC_IVAR____TtC24SiriAppLaunchUIFramework11Coordinator_lockupViewEngagedHandler];
      *v26 = a4;
      *(v26 + 1) = a5;
      v35.receiver = v32;
      v35.super_class = type metadata accessor for Coordinator();
      v27 = objc_msgSendSuper2(&v35, sel_init);

      return v27;
    }

    if (v7 >= *(v34 + 16))
    {
      break;
    }

    v10 = *(i - 1);
    v11 = *i;
    type metadata accessor for ASCLockupEventManager();
    v12 = swift_allocObject();
    v13 = MEMORY[0x277D84F90];
    *(v12 + 16) = MEMORY[0x277D84F90];
    *(v12 + 24) = v13;

    swift_isUniquelyReferenced_nonNull_native();
    v36 = v8;
    v14 = sub_2661C3904(v10, v11);
    if (__OFADD__(v8[2], (v15 & 1) == 0))
    {
      goto LABEL_15;
    }

    v16 = v14;
    v17 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280065EF8, &qword_2661CB050);
    if (sub_2661CA140())
    {
      v18 = sub_2661C3904(v10, v11);
      if ((v17 & 1) != (v19 & 1))
      {
        goto LABEL_17;
      }

      v16 = v18;
    }

    v8 = v36;
    if (v17)
    {
      v20 = v36[7];
      v21 = *(v20 + 8 * v16);
      *(v20 + 8 * v16) = v12;
    }

    else
    {
      v36[(v16 >> 6) + 8] |= 1 << v16;
      v22 = (v8[6] + 16 * v16);
      *v22 = v10;
      v22[1] = v11;
      *(v8[7] + 8 * v16) = v12;
      v23 = v8[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        goto LABEL_16;
      }

      v8[2] = v25;
    }

    ++v7;
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  result = sub_2661CA180();
  __break(1u);
  return result;
}

void *sub_2661C1E54(void *result)
{
  if (result)
  {
    [result preferredContentSize];
    v2 = *(v1 + OBJC_IVAR____TtC24SiriAppLaunchUIFramework11Coordinator_observableHeight);
    return sub_2661C1E98();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2661C1E98()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2661C9CA0();
}

void sub_2661C1F80()
{
  OUTLINED_FUNCTION_4_1();
  v26 = v0;
  v2 = v1;
  v4 = v3;
  v5 = sub_2661C9C50();
  v6 = OUTLINED_FUNCTION_1_1(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_2();
  v13 = v12 - v11;
  if (qword_280065C60 != -1)
  {
    OUTLINED_FUNCTION_0_1();
  }

  v14 = __swift_project_value_buffer(v5, qword_2800661A0);
  (*(v8 + 16))(v13, v14, v5);
  v15 = v2;

  v16 = sub_2661C9C40();
  v17 = sub_2661CA0D0();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v27 = v25;
    *v18 = 138412546;
    v20 = v2;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v18 + 4) = v21;
    *v19 = v21;
    *(v18 + 12) = 2080;
    if (v4)
    {
      v22 = v26;
    }

    else
    {
      v22 = 7104878;
    }

    if (v4)
    {
      v23 = v4;
    }

    else
    {
      v23 = 0xE300000000000000;
    }

    v24 = sub_2661C3394(v22, v23, &v27);

    *(v18 + 14) = v24;
    _os_log_impl(&dword_2661BB000, v16, v17, "AppSearchResultsBridgingView Coordinator.lockupView didFailRequestWithError: %@ forAdamId: %s", v18, 0x16u);
    sub_2661C3B70(v19);
    OUTLINED_FUNCTION_3_2();
    __swift_destroy_boxed_opaque_existential_0(v25);
    OUTLINED_FUNCTION_3_2();
    OUTLINED_FUNCTION_3_2();

    (*(v8 + 8))(v13, v5);
  }

  else
  {

    (*(v8 + 8))(v13, v5);
  }

  if (v4 && sub_2661C2E5C(v26, v4))
  {
    if (sub_2661BD7D4(1) != 5)
    {
      sub_2661C29F4();
    }
  }

  OUTLINED_FUNCTION_5_0();
}

void sub_2661C22A8()
{
  OUTLINED_FUNCTION_4_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_2661C9C50();
  v7 = OUTLINED_FUNCTION_1_1(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_2();
  v14 = v13 - v12;
  if (qword_280065C60 != -1)
  {
    OUTLINED_FUNCTION_0_1();
  }

  v15 = __swift_project_value_buffer(v6, qword_2800661A0);
  (*(v9 + 16))(v14, v15, v6);

  v16 = sub_2661C9C40();
  v17 = sub_2661CA0D0();

  v29 = v3;
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v30 = v19;
    *v18 = 136315138;
    v20 = v3 == 0;
    v21 = v3;
    v22 = v5;
    if (v20)
    {
      v5 = 7104878;
    }

    v28 = v1;
    if (v20)
    {
      v23 = 0xE300000000000000;
    }

    else
    {
      v23 = v21;
    }

    v24 = sub_2661C3394(v5, v23, &v30);
    v1 = v28;

    *(v18 + 4) = v24;
    v5 = v22;
    _os_log_impl(&dword_2661BB000, v16, v17, "AppSearchResultsBridgingView Coordinator.lockupViewEngaged forAdamId: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    OUTLINED_FUNCTION_3_2();
    OUTLINED_FUNCTION_3_2();
  }

  v25 = (*(v9 + 8))(v14, v6);
  v26 = *(v1 + OBJC_IVAR____TtC24SiriAppLaunchUIFramework11Coordinator_lockupViewEngagedHandler);
  if (v26)
  {
    v27 = *(v1 + OBJC_IVAR____TtC24SiriAppLaunchUIFramework11Coordinator_lockupViewEngagedHandler + 8);
    v26(v25);
  }

  if (v29 && sub_2661C2E5C(v5, v29))
  {
    if (sub_2661BD7D4(0) != 5)
    {
      sub_2661C29F4();
    }
  }

  OUTLINED_FUNCTION_5_0();
}

void sub_2661C258C()
{
  OUTLINED_FUNCTION_4_1();
  v41 = v0;
  v2 = v1;
  v44 = v4;
  v45 = v3;
  v6 = v5;
  v7 = sub_2661C9C50();
  v8 = OUTLINED_FUNCTION_1_1(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v8);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v37 - v16;
  if (qword_280065C60 != -1)
  {
    OUTLINED_FUNCTION_0_1();
  }

  v18 = __swift_project_value_buffer(v7, qword_2800661A0);
  v42 = *(v10 + 16);
  v43 = v18;
  v42(v17);

  v19 = sub_2661C9C40();
  v20 = sub_2661CA0D0();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v40 = v7;
    v22 = v21;
    v46 = swift_slowAlloc();
    *v22 = 136315394;
    v38 = v15;
    v39 = v10;
    if (v6)
    {
      v23 = v45;
    }

    else
    {
      v23 = 7104878;
    }

    if (v6)
    {
      v24 = v6;
    }

    else
    {
      v24 = 0xE300000000000000;
    }

    v25 = sub_2661C3394(v23, v24, &v46);

    *(v22 + 4) = v25;
    *(v22 + 12) = 2080;
    if (v2)
    {
      v26 = v44;
    }

    else
    {
      v26 = 7104878;
    }

    if (v2)
    {
      v27 = v2;
    }

    else
    {
      v27 = 0xE300000000000000;
    }

    v28 = sub_2661C3394(v26, v27, &v46);
    v10 = v39;

    *(v22 + 14) = v28;
    v15 = v38;
    _os_log_impl(&dword_2661BB000, v19, v20, "AppSearchResultsBridgingView Coordinator.lockupView forAdamId: %s state: %s", v22, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_3_2();
    v7 = v40;
    OUTLINED_FUNCTION_3_2();
  }

  v29 = *(v10 + 8);
  v29(v17, v7);
  if (v6 && v2 && sub_2661C2E5C(v45, v6))
  {
    v30 = sub_2661CA060();
    v31 = sub_2661BD7D4(v30);

    if (v31 != 5)
    {
      sub_2661C29F4();
    }
  }

  else
  {
    (v42)(v15, v43, v7);
    v32 = sub_2661C9C40();
    v33 = sub_2661CA0F0();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = v15;
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_2661BB000, v32, v33, "AppSearchResultsBridgingView Coordinator.lockupView missing adamId or ascAppState for lockupView update", v35, 2u);
      OUTLINED_FUNCTION_3_2();

      v36 = v34;
    }

    else
    {

      v36 = v15;
    }

    v29(v36, v7);
  }

  OUTLINED_FUNCTION_5_0();
}

void sub_2661C29F4()
{
  OUTLINED_FUNCTION_4_1();
  v1 = v0;
  v3 = v2;
  v64 = v4;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280065F18, &qword_2661CB068);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v54 - v9;
  v11 = sub_2661C9F70();
  v12 = OUTLINED_FUNCTION_1_1(v11);
  v62 = v13;
  v63 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2_2();
  v58 = v17 - v16;
  v18 = sub_2661C9A40();
  v19 = OUTLINED_FUNCTION_1_1(v18);
  v60 = v20;
  v61 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_2_2();
  v25 = v24 - v23;
  v26 = sub_2661C9C50();
  v27 = OUTLINED_FUNCTION_1_1(v26);
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_2_2();
  v34 = v33 - v32;
  if (qword_280065C60 != -1)
  {
    OUTLINED_FUNCTION_0_1();
  }

  v35 = __swift_project_value_buffer(v26, qword_2800661A0);
  (*(v29 + 16))(v34, v35, v26);

  v36 = v34;
  v37 = v29;
  v59 = v36;
  v38 = sub_2661C9C40();
  v39 = sub_2661CA0E0();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v57 = v25;
    v41 = v40;
    v55 = swift_slowAlloc();
    v65 = v55;
    *v41 = 136315394;
    v42 = sub_2661BD29C(v6);
    v44 = sub_2661C3394(v42, v43, &v65);
    v56 = v26;
    v45 = v6;
    v46 = v3;
    v47 = v1;
    v48 = v44;
    v49 = v64;

    *(v41 + 4) = v48;
    v1 = v47;
    v3 = v46;
    v6 = v45;
    *(v41 + 12) = 2080;
    *(v41 + 14) = sub_2661C3394(v49, v3, &v65);
    _os_log_impl(&dword_2661BB000, v38, v39, "AppSearchResultsBridgingView Coordinator.emitInteractionEvent %s forAdamId: %s", v41, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_3_2();
    v25 = v57;
    OUTLINED_FUNCTION_3_2();

    (*(v37 + 8))(v59, v56);
  }

  else
  {

    (*(v29 + 8))(v59, v26);
  }

  sub_2661BD29C(v6);
  (*(v60 + 104))(v25, *MEMORY[0x277D63760], v61);
  (*(v62 + 104))(v58, *MEMORY[0x277D63BE0], v63);
  sub_2661C9F30();
  v50 = sub_2661C9F40();
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v50);
  sub_2661C2EA8(v64, v3);
  v51 = objc_allocWithZone(sub_2661CA030());
  v52 = sub_2661CA020();
  v53 = *(v1 + OBJC_IVAR____TtC24SiriAppLaunchUIFramework11Coordinator_context);
  sub_2661CA040();

  OUTLINED_FUNCTION_5_0();
}

uint64_t sub_2661C2E5C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC24SiriAppLaunchUIFramework11Coordinator_lockupEventManagers);
  if (!*(v3 + 16))
  {
    return 0;
  }

  v4 = sub_2661C3904(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(v3 + 56) + 8 * v4);
}

uint64_t sub_2661C2EA8(uint64_t a1, uint64_t a2)
{
  result = sub_2661C2ED4(a1, a2, *(v2 + OBJC_IVAR____TtC24SiriAppLaunchUIFramework11Coordinator_adamIds));
  if (v4)
  {
    return -1;
  }

  return result;
}

uint64_t sub_2661C2ED4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = *(a3 + 16);
  v7 = (a3 + 40);
  while (v6 != v5)
  {
    v8 = *(v7 - 1) == a1 && *v7 == a2;
    if (v8 || (sub_2661CA170() & 1) != 0)
    {
      return v5;
    }

    ++v5;
    v7 += 2;
  }

  return 0;
}

id sub_2661C2FA0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Coordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2661C3078()
{
  swift_beginAccess();
  sub_2661C9C80();
  swift_endAccess();
  return v0;
}

uint64_t sub_2661C30E8()
{
  v1 = OBJC_IVAR____TtC24SiriAppLaunchUIFramework16ObservableHeight__height;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280065F10, &qword_2661CB060);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t type metadata accessor for ObservableHeight()
{
  result = qword_280065ED0;
  if (!qword_280065ED0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2661C31E4()
{
  sub_2661C3274();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_2661C3274()
{
  if (!qword_280065EE0)
  {
    v0 = sub_2661C9CB0();
    if (!v1)
    {
      atomic_store(v0, &qword_280065EE0);
    }
  }
}

uint64_t sub_2661C32D0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_2661C9C70();
  *a1 = result;
  return result;
}

uint64_t sub_2661C335C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_2661C1E98();
}

uint64_t sub_2661C3384(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2661C3394(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2661C3458(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_2661C3B14(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_2661C3458(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_2661C3558(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_2661CA130();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_2661C3558(uint64_t a1, unint64_t a2)
{
  v4 = sub_2661C35A4(a1, a2);
  sub_2661C36BC(&unk_2877D2FA0);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_2661C35A4(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_2661CA0B0())
  {
    result = sub_2661C37A0(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_2661CA120();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_2661CA130();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_2661C36BC(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_2661C3810(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_2661C37A0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280065F20, &qword_2661CB070);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_2661C3810(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280065F20, &qword_2661CB070);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_2661C3904(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_2661CA190();
  sub_2661CA0A0();
  v6 = sub_2661CA1A0();

  return sub_2661C397C(a1, a2, v6);
}

unint64_t sub_2661C397C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_2661CA170() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_2661C3A74()
{
  result = qword_280065F08;
  if (!qword_280065F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280065F08);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_2661C3B14(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2661C3B70(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280065F28, &qword_2661CB078);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2661C3BD8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_Ieg_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2661C3C08(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_2661C3C48(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t OUTLINED_FUNCTION_0_1()
{

  return swift_once();
}

void OUTLINED_FUNCTION_3_2()
{

  JUMPOUT(0x26677D830);
}

uint64_t sub_2661C3D4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_3_0();
  v6 = sub_2661C9B60();
  v7 = OUTLINED_FUNCTION_2_1(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }

  v11 = sub_2661C9F20();
  v12 = OUTLINED_FUNCTION_2_1(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v10 = v3 + *(a3 + 24);
    goto LABEL_5;
  }

  v15 = *(v3 + *(a3 + 28));
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  v16 = v15 - 1;
  if (v16 < 0)
  {
    v16 = -1;
  }

  return (v16 + 1);
}

uint64_t sub_2661C3E54(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_3_0();
  v8 = sub_2661C9B60();
  v9 = OUTLINED_FUNCTION_2_1(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v4;
  }

  else
  {
    v13 = sub_2661C9F20();
    result = OUTLINED_FUNCTION_2_1(v13);
    if (*(v15 + 84) != a3)
    {
      *(v4 + *(a4 + 28)) = a2;
      return result;
    }

    v11 = result;
    v12 = v4 + *(a4 + 24);
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t type metadata accessor for AppSearchResultsView()
{
  result = qword_280065FF0;
  if (!qword_280065FF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2661C3F84()
{
  sub_2661C9B60();
  if (v0 <= 0x3F)
  {
    sub_2661C099C();
    if (v1 <= 0x3F)
    {
      sub_2661C9F20();
      if (v2 <= 0x3F)
      {
        sub_2661C0A30();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_2661C4054()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280066000, &qword_2661CB198);
  v2 = OUTLINED_FUNCTION_1_0(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v11 - v5;
  *v6 = sub_2661C9D20();
  *(v6 + 1) = 0;
  v6[16] = 0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280066008, &unk_2661CB1A0);
  sub_2661C4148(v0, &v6[*(v7 + 44)]);
  OUTLINED_FUNCTION_1_2();
  sub_2661BFF90(v8, v9, &qword_2661CB198);
  sub_2661C9E70();
  return sub_2661C4F68(v6, &qword_280066000, &qword_2661CB198);
}

uint64_t sub_2661C4148@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v109 = a2;
  v3 = type metadata accessor for AppSearchResultsView();
  v4 = v3 - 8;
  v100 = *(v3 - 8);
  v5 = *(v100 + 64);
  MEMORY[0x28223BE20](v3);
  v101 = v6;
  v102 = &v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2661C9A20();
  v93 = *(v7 - 8);
  v94 = v7;
  v8 = *(v93 + 64);
  MEMORY[0x28223BE20](v7);
  v91 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2661C9A70();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v82 = &v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_2661C9EE0();
  v85 = *(v88 - 8);
  v13 = *(v85 + 64);
  MEMORY[0x28223BE20](v88);
  v83 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280065D38, &qword_2661CADB8);
  v86 = *(v15 - 8);
  v87 = v15;
  v16 = *(v86 + 64);
  MEMORY[0x28223BE20](v15);
  v84 = &v82 - v17;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280066018, &qword_2661CB1B0);
  v18 = *(*(v98 - 8) + 64);
  MEMORY[0x28223BE20](v98);
  v99 = &v82 - v19;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280066020, &qword_2661CB1B8);
  v97 = *(v107 - 8);
  v20 = *(v97 + 64);
  MEMORY[0x28223BE20](v107);
  v96 = &v82 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280066028, &qword_2661CB1C0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v104 = &v82 - v24;
  v103 = sub_2661C9B30();
  v89 = *(v103 - 8);
  v25 = *(v89 + 64);
  v26 = MEMORY[0x28223BE20](v103);
  v92 = &v82 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = v27;
  MEMORY[0x28223BE20](v26);
  v95 = &v82 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280066030, &unk_2661CB1C8);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v29 - 8);
  v106 = &v82 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v105 = &v82 - v33;
  *(&v114[1] + 1) = sub_2661C9B60();
  *&v114[2] = MEMORY[0x277D55310];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v114);
  sub_2661C4FC0(a1, boxed_opaque_existential_1);
  v35 = a1 + *(v4 + 28);
  v36 = *v35;
  v37 = *(v35 + 8);
  v38 = *(v35 + 16);
  type metadata accessor for ObservableHeight();
  sub_2661C5538(&qword_280065D90, type metadata accessor for ObservableHeight);
  v39 = sub_2661C9CC0();
  v40 = sub_2661C9B40();
  v41 = *(v4 + 36);
  v108 = a1;
  v42 = a1 + v41;
  v43 = *v42;
  if (*v42)
  {
    v44 = v40;
    sub_2661C1518(v114, __src);
    __src[5] = v39;
    __src[6] = v44;
    __src[8] = 0;
    __src[9] = 0;
    __src[7] = v43;
    v45 = v43;
    sub_2661C9CC0();
    sub_2661C16A0();

    sub_2661C9EC0();
    sub_2661C9CE0();
    memcpy(v114, __src, 0x50uLL);
    memcpy(__src, v114, 0x80uLL);
    v46 = v104;
    v47 = v108;
    sub_2661C9B50();
    if (__swift_getEnumTagSinglePayload(v46, 1, v103) == 1)
    {
      sub_2661C4F68(v46, &qword_280066028, &qword_2661CB1C0);
      v48 = 1;
      v49 = v107;
      v50 = v105;
    }

    else
    {
      v103 = MEMORY[0x277D55308];
      v51 = v95;
      sub_2661C52A0(v46, v95);
      sub_2661C9B00();
      sub_2661C9A60();

      v52 = v83;
      sub_2661C9EF0();
      v54 = v93;
      v53 = v94;
      v55 = v91;
      (*(v93 + 104))(v91, *MEMORY[0x277D62BD8], v94);
      v56 = sub_2661C5538(&qword_280065D40, MEMORY[0x277D63B20]);
      v57 = v84;
      v58 = v88;
      sub_2661C9E10();
      (*(v54 + 8))(v55, v53);
      (*(v85 + 8))(v52, v58);
      *&v114[0] = v58;
      *(&v114[0] + 1) = v56;
      swift_getOpaqueTypeConformance2();
      v59 = v87;
      v60 = sub_2661C9DF0();
      v61 = (*(v86 + 8))(v57, v59);
      *(&v114[1] + 1) = MEMORY[0x277CE11C8];
      *&v114[2] = MEMORY[0x277D63A60];
      *&v114[0] = v60;
      v62 = MEMORY[0x26677CDF0](v61);
      v112 = MEMORY[0x277D837D0];
      v113 = MEMORY[0x277D63F80];
      v110 = v62;
      v111 = v63;
      v64 = v99;
      sub_2661C9FA0();
      LOBYTE(v60) = sub_2661C9DD0();
      v65 = v64 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280066040, &qword_2661CB1E0) + 36);
      *v65 = v60;
      *(v65 + 8) = 0u;
      *(v65 + 24) = 0u;
      *(v65 + 40) = 1;
      v66 = sub_2661C9EC0();
      v68 = v67;
      sub_2661C9E80();
      v69 = sub_2661C9E90();

      v70 = (v64 + *(v98 + 36));
      *v70 = v69;
      v70[1] = v66;
      v70[2] = v68;
      v71 = v102;
      sub_2661C4FC0(v47, v102);
      v72 = v92;
      sub_2661C4FC0(v51, v92);
      v73 = (*(v100 + 80) + 16) & ~*(v100 + 80);
      v74 = (v101 + *(v89 + 80) + v73) & ~*(v89 + 80);
      v75 = swift_allocObject();
      sub_2661C52A0(v71, v75 + v73);
      sub_2661C52A0(v72, v75 + v74);
      sub_2661C53C4();
      v76 = v96;
      sub_2661C9E20();

      sub_2661C4F68(v64, &qword_280066018, &qword_2661CB1B0);
      sub_2661C5580(v51);
      v50 = v105;
      v49 = v107;
      (*(v97 + 32))(v105, v76, v107);
      v48 = 0;
    }

    __swift_storeEnumTagSinglePayload(v50, v48, 1, v49);
    sub_2661C4E94(__src, v114);
    v77 = v106;
    sub_2661C4F04(v50, v106);
    v78 = v109;
    sub_2661C4E94(v114, v109);
    v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280066038, &qword_2661CB1D8);
    sub_2661C4F04(v77, v78 + *(v79 + 48));
    sub_2661C4F68(v50, &qword_280066030, &unk_2661CB1C8);
    sub_2661C4F68(__src, &qword_280065DC0, &qword_2661CAEA0);
    sub_2661C4F68(v77, &qword_280066030, &unk_2661CB1C8);
    return sub_2661C4F68(v114, &qword_280065DC0, &qword_2661CAEA0);
  }

  else
  {
    v81 = *(v42 + 8);
    sub_2661CA050();
    sub_2661C5538(&qword_280065DA0, MEMORY[0x277D63F60]);
    result = sub_2661C9CF0();
    __break(1u);
  }

  return result;
}

uint64_t sub_2661C4C68(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280065D60, &unk_2661CADD0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v19 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280065D68, &unk_2661CB450);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v19 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280065D70, &unk_2661CADE0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v19 - v12;
  v14 = a1 + *(type metadata accessor for AppSearchResultsView() + 24);
  sub_2661C9F00();
  v15 = sub_2661CA010();
  if (__swift_getEnumTagSinglePayload(v13, 1, v15) == 1)
  {
    return sub_2661C4F68(v13, &qword_280065D70, &unk_2661CADE0);
  }

  sub_2661C9B20();
  v17 = sub_2661C9A30();
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v17);
  v18 = sub_2661C9F70();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v18);
  sub_2661CA000();
  sub_2661C4F68(v5, &qword_280065D60, &unk_2661CADD0);
  sub_2661C4F68(v9, &qword_280065D68, &unk_2661CB450);
  return (*(*(v15 - 8) + 8))(v13, v15);
}

uint64_t sub_2661C4E94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280065DC0, &qword_2661CAEA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2661C4F04(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280066030, &unk_2661CB1C8);
  OUTLINED_FUNCTION_1_0(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_3_3();
  v7(v6);
  return a2;
}

uint64_t sub_2661C4F68(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_1_0(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_2661C4FC0(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_3_0();
  v5 = v4(v3);
  OUTLINED_FUNCTION_1_0(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_3_3();
  v9(v8);
  return a2;
}

uint64_t sub_2661C5018()
{
  v1 = (type metadata accessor for AppSearchResultsView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = (sub_2661C9B30() - 8);
  v6 = *(*v5 + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v8 = *(*v5 + 64);
  v9 = v2 | v6;
  v10 = v0 + v3;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280066048, &qword_2661CB1E8);
  OUTLINED_FUNCTION_1_0(v11);
  (*(v12 + 8))(v0 + v3);
  v13 = *(sub_2661C9B60() + 20);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280066050, &unk_2661CB1F0);
  OUTLINED_FUNCTION_1_0(v14);
  (*(v15 + 8))(v10 + v13);
  v16 = (v10 + v1[7]);
  v17 = *v16;
  v18 = v16[1];
  v19 = *(v16 + 16);
  sub_2661C144C();
  v20 = v1[8];
  v21 = sub_2661C9F20();
  OUTLINED_FUNCTION_1_0(v21);
  (*(v22 + 8))(v10 + v20);

  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280065CD0, &qword_2661CAD60);
  OUTLINED_FUNCTION_1_0(v23);
  v25 = *(v24 + 8);
  v25(v0 + v7, v23);
  v25(v0 + v7 + v5[7], v23);
  v26 = v5[8];
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280065D58, &qword_2661CB200);
  OUTLINED_FUNCTION_1_0(v27);
  (*(v28 + 8))(v0 + v7 + v26);

  return MEMORY[0x2821FE8E8](v0, v7 + v8, v9 | 7);
}

uint64_t sub_2661C52A0(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_3_0();
  v5 = v4(v3);
  OUTLINED_FUNCTION_1_0(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_3_3();
  v9(v8);
  return a2;
}

uint64_t sub_2661C52F8()
{
  v1 = *(type metadata accessor for AppSearchResultsView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_2661C9B30() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_2661C4C68(v0 + v2);
}

unint64_t sub_2661C53C4()
{
  result = qword_280066058;
  if (!qword_280066058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280066018, &qword_2661CB1B0);
    sub_2661C547C();
    sub_2661BFF90(&qword_280066070, &qword_280066078, qword_2661CB208);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280066058);
  }

  return result;
}

unint64_t sub_2661C547C()
{
  result = qword_280066060;
  if (!qword_280066060)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280066040, &qword_2661CB1E0);
    sub_2661C5538(&qword_280066068, MEMORY[0x277D63C98]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280066060);
  }

  return result;
}

uint64_t sub_2661C5538(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2661C5580(uint64_t a1)
{
  v2 = sub_2661C9B30();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2661C55DC()
{
  v0 = OUTLINED_FUNCTION_3_3();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v0, v1);
  OUTLINED_FUNCTION_1_2();
  sub_2661BFF90(v2, v3, &qword_2661CB198);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2661C5698(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2661C9F20();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = sub_2661C9BC0();
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_2661C5748(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2661C9F20();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = sub_2661C9BC0();
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t type metadata accessor for ButtonFallbackView()
{
  result = qword_280066080;
  if (!qword_280066080)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2661C5838()
{
  result = sub_2661C9F20();
  if (v1 <= 0x3F)
  {
    result = sub_2661C9BC0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2661C58D8()
{
  v1 = type metadata accessor for ButtonFallbackView();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  sub_2661C6110(v0, &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  sub_2661C6178(&v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280066090, &qword_2661CB298);
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280066098, &qword_2661CB2A0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800660A0, &unk_2661CB2A8);
  v8 = sub_2661C9F50();
  v9 = sub_2661BFF90(&qword_2800660A8, &qword_2800660A0, &unk_2661CB2A8);
  v10 = sub_2661C624C();
  v13 = v7;
  v14 = v8;
  v15 = v9;
  v16 = v10;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v13 = v6;
  v14 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  return sub_2661C9F60();
}

uint64_t sub_2661C5AC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v25 = sub_2661C9F50();
  v27 = *(v25 - 8);
  v3 = *(v27 + 64);
  MEMORY[0x28223BE20](v25);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ButtonFallbackView();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800660A0, &unk_2661CB2A8);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v25 - v12;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280066098, &qword_2661CB2A0);
  v14 = *(v26 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v26);
  v17 = &v25 - v16;
  sub_2661C6110(a1, &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v19 = swift_allocObject();
  sub_2661C6178(&v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);
  v29 = a1;
  sub_2661C9EA0();
  sub_2661C9D30();
  v20 = sub_2661BFF90(&qword_2800660A8, &qword_2800660A0, &unk_2661CB2A8);
  v21 = sub_2661C624C();
  v22 = v25;
  sub_2661C9E50();
  (*(v27 + 8))(v5, v22);
  (*(v10 + 8))(v13, v9);
  v30 = v9;
  v31 = v22;
  v32 = v20;
  v33 = v21;
  swift_getOpaqueTypeConformance2();
  v23 = v26;
  sub_2661C9E70();
  return (*(v14 + 8))(v17, v23);
}

uint64_t sub_2661C5E78(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280065D60, &unk_2661CADD0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v19 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280065D68, &unk_2661CB450);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v19 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280065D70, &unk_2661CADE0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v19 - v12;
  sub_2661C9F00();
  v14 = sub_2661CA010();
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    return sub_2661C0554(v13, &qword_280065D70, &unk_2661CADE0);
  }

  v16 = a1 + *(type metadata accessor for ButtonFallbackView() + 20);
  sub_2661C9BB0();
  v17 = sub_2661C9A30();
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v17);
  v18 = sub_2661C9F70();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v18);
  sub_2661CA000();
  sub_2661C0554(v5, &qword_280065D60, &unk_2661CADD0);
  sub_2661C0554(v9, &qword_280065D68, &unk_2661CB450);
  return (*(*(v14 - 8) + 8))(v13, v14);
}

uint64_t sub_2661C6098@<X0>(uint64_t a1@<X8>)
{
  v2 = *(type metadata accessor for ButtonFallbackView() + 20);
  MEMORY[0x26677CE80]();
  sub_2661C6460();
  result = sub_2661C9DE0();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_2661C6110(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ButtonFallbackView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2661C6178(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ButtonFallbackView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2661C61DC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ButtonFallbackView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_2661C5AC4(v4, a1);
}

unint64_t sub_2661C624C()
{
  result = qword_2800660B0;
  if (!qword_2800660B0)
  {
    sub_2661C9F50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800660B0);
  }

  return result;
}

uint64_t objectdestroyTm_0()
{
  v1 = (type metadata accessor for ButtonFallbackView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_2661C9F20();
  OUTLINED_FUNCTION_0_0(v5);
  (*(v6 + 8))(v0 + v3);
  v7 = v0 + v3 + v1[7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280065CD0, &qword_2661CAD60);
  OUTLINED_FUNCTION_0_0(v8);
  (*(v9 + 8))(v7);
  v10 = *(sub_2661C9BC0() + 20);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280065D58, &qword_2661CB200);
  OUTLINED_FUNCTION_0_0(v11);
  (*(v12 + 8))(v7 + v10);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2661C63F8()
{
  v1 = *(type metadata accessor for ButtonFallbackView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_2661C5E78(v2);
}

unint64_t sub_2661C6460()
{
  result = qword_2800660B8;
  if (!qword_2800660B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800660B8);
  }

  return result;
}

uint64_t sub_2661C6510(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2661C9F20();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = sub_2661C9BD0();
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_2661C65C0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2661C9F20();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = sub_2661C9BD0();
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t type metadata accessor for ConfirmationView()
{
  result = qword_2800660D0;
  if (!qword_2800660D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2661C66B0()
{
  result = sub_2661C9F20();
  if (v1 <= 0x3F)
  {
    result = sub_2661C9BD0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2661C6750@<X0>(uint64_t a1@<X8>)
{
  v74 = a1;
  v76 = sub_2661C9ED0();
  v2 = OUTLINED_FUNCTION_1_1(v76);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  v8 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ConfirmationView();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v67 = v12;
  v13 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800660A0, &unk_2661CB2A8);
  OUTLINED_FUNCTION_1_1(v69);
  v77 = v14;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_2_3();
  MEMORY[0x28223BE20](v17);
  v19 = &v60 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800660E0, &qword_2661CB350);
  v21 = OUTLINED_FUNCTION_1_1(v20);
  v72 = v22;
  v73 = v21;
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v21);
  v71 = &v60 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v25);
  v70 = &v60 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v75 = &v60 - v29;
  MEMORY[0x28223BE20](v28);
  v68 = &v60 - v30;
  v61 = v1;
  v65 = v13;
  sub_2661C7204(v1, v13);
  v31 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v32 = swift_allocObject();
  sub_2661C726C(v13, v32 + v31);
  v79 = v1;
  sub_2661C9EA0();
  v33 = *MEMORY[0x277D63A90];
  v66 = *(v4 + 104);
  v34 = v8;
  v35 = v8;
  v36 = v76;
  v66(v35, v33, v76);
  v64 = sub_2661BFF90(&qword_2800660A8, &qword_2800660A0, &unk_2661CB2A8);
  v37 = v69;
  sub_2661C9E00();
  v38 = *(v4 + 8);
  v62 = v4 + 8;
  v63 = v38;
  v38(v34, v36);
  v39 = *(v77 + 8);
  v77 += 8;
  v39(v19, v37);
  v40 = v61;
  v41 = v65;
  sub_2661C7204(v61, v65);
  v42 = swift_allocObject();
  sub_2661C726C(v41, v42 + v31);
  v78 = v40;
  sub_2661C9EA0();
  v43 = v76;
  v66(v34, *MEMORY[0x277D63A88], v76);
  v44 = v75;
  sub_2661C9E00();
  v63(v34, v43);
  v39(v19, v37);
  v46 = v72;
  v45 = v73;
  v47 = *(v72 + 16);
  v48 = v70;
  v49 = v68;
  v47(v70, v68, v73);
  v50 = v71;
  v47(v71, v44, v45);
  v51 = *(v46 + 80);
  v52 = (v51 + 16) & ~v51;
  v53 = (v24 + v51 + v52) & ~v51;
  v54 = swift_allocObject();
  v55 = *(v46 + 32);
  v55(v54 + v52, v48, v45);
  v55(v54 + v53, v50, v45);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800660E8, &unk_2661CB358);
  v56 = sub_2661C9F90();
  v57 = sub_2661C76EC();
  v80 = v56;
  v81 = v57;
  swift_getOpaqueTypeConformance2();
  sub_2661C9F60();
  v58 = *(v46 + 8);
  v58(v75, v45);
  return (v58)(v49, v45);
}

uint64_t sub_2661C6DA4(uint64_t a1, void (*a2)(void))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280065D60, &unk_2661CADD0);
  OUTLINED_FUNCTION_3_4(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_2_3();
  MEMORY[0x28223BE20](v7);
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280065D68, &unk_2661CB450);
  OUTLINED_FUNCTION_3_4(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_2_3();
  MEMORY[0x28223BE20](v13);
  v15 = &v27 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280065D70, &unk_2661CADE0);
  OUTLINED_FUNCTION_3_4(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_2_3();
  MEMORY[0x28223BE20](v19);
  v21 = &v27 - v20;
  sub_2661C9F00();
  v22 = sub_2661CA010();
  if (__swift_getEnumTagSinglePayload(v21, 1, v22) == 1)
  {
    return sub_2661C4F68(v21, &qword_280065D70, &unk_2661CADE0);
  }

  v24 = a1 + *(type metadata accessor for ConfirmationView() + 20);
  a2();
  v25 = sub_2661C9A30();
  __swift_storeEnumTagSinglePayload(v15, 0, 1, v25);
  v26 = sub_2661C9F70();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v26);
  sub_2661CA000();
  sub_2661C4F68(v9, &qword_280065D60, &unk_2661CADD0);
  sub_2661C4F68(v15, &qword_280065D68, &unk_2661CB450);
  return (*(*(v22 - 8) + 8))(v21, v22);
}

uint64_t sub_2661C6FB4@<X0>(void (*a1)(void)@<X1>, uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for ConfirmationView() + 20);
  a1();
  sub_2661C6460();
  result = sub_2661C9DE0();
  *a2 = result;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7 & 1;
  *(a2 + 24) = v8;
  return result;
}

uint64_t sub_2661C7030()
{
  v0 = sub_2661C9F90();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800660E0, &qword_2661CB350);
  v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800660A0, &unk_2661CB2A8);
  v6 = sub_2661BFF90(&qword_2800660A8, &qword_2800660A0, &unk_2661CB2A8);
  v13 = v5;
  v14 = v6;
  swift_getOpaqueTypeConformance2();
  v7 = sub_2661C9DF0();
  v8 = MEMORY[0x277CE11C8];
  v9 = MEMORY[0x277D63A60];
  v15 = MEMORY[0x277CE11C8];
  v16 = MEMORY[0x277D63A60];
  v13 = v7;
  v10 = sub_2661C9DF0();
  v12[3] = v8;
  v12[4] = v9;
  v12[0] = v10;
  sub_2661C9F80();
  sub_2661C76EC();
  sub_2661C9E70();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_2661C7204(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConfirmationView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2661C726C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConfirmationView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_1()
{
  v1 = (type metadata accessor for ConfirmationView() - 8);
  v2 = *(*v1 + 80);
  v15 = (v2 + 16) & ~v2;
  v16 = *(*v1 + 64);
  v3 = sub_2661C9F20();
  OUTLINED_FUNCTION_1_0(v3);
  (*(v4 + 8))(v0 + v15);
  v5 = v0 + v15 + v1[7];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280065D58, &qword_2661CB200);
  OUTLINED_FUNCTION_1_0(v6);
  v8 = *(v7 + 8);
  v8(v5, v6);
  v9 = sub_2661C9BD0();
  v10 = v9[5];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280065CD0, &qword_2661CAD60);
  OUTLINED_FUNCTION_1_0(v11);
  v13 = *(v12 + 8);
  v13(v5 + v10, v11);
  v8(v5 + v9[6], v6);
  v13(v5 + v9[7], v11);

  return MEMORY[0x2821FE8E8](v17, v15 + v16, v2 | 7);
}

uint64_t sub_2661C74F4(void (*a1)(void))
{
  v3 = type metadata accessor for ConfirmationView();
  OUTLINED_FUNCTION_3_4(v3);
  return sub_2661C6DA4(v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80)), a1);
}

uint64_t sub_2661C7584()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800660E0, &qword_2661CB350);
  OUTLINED_FUNCTION_1_0(v1);
  v3 = *(v2 + 8);
  v4 = *(v2 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v2 + 64);
  v7 = (v6 + v4 + v5) & ~v4;
  v3(v0 + v5, v1);
  v3(v0 + v7, v1);

  return MEMORY[0x2821FE8E8](v0, v7 + v6, v4 | 7);
}

uint64_t sub_2661C7644()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800660E0, &qword_2661CB350) - 8);
  v2 = v0 + ((*(v1 + 64) + *(v1 + 80) + ((*(v1 + 80) + 16) & ~*(v1 + 80))) & ~*(v1 + 80));

  return sub_2661C7030();
}

unint64_t sub_2661C76EC()
{
  result = qword_2800660F0;
  if (!qword_2800660F0)
  {
    sub_2661C9F90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800660F0);
  }

  return result;
}

uint64_t sub_2661C77B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_3_0();
  v6 = sub_2661C9F20();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = v3;
  }

  else
  {
    v7 = sub_2661C9BF0();
    v8 = v3 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_2661C7864(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_3_0();
  v8 = sub_2661C9F20();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = v4;
  }

  else
  {
    v9 = sub_2661C9BF0();
    v10 = v4 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t type metadata accessor for DeviceDisambiguationView()
{
  result = qword_280066108;
  if (!qword_280066108)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2661C7950()
{
  result = sub_2661C9F20();
  if (v1 <= 0x3F)
  {
    result = sub_2661C9BF0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2661C79F0()
{
  v1 = type metadata accessor for DeviceDisambiguationView();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  sub_2661C8AD4(v0, &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  sub_2661C8D34(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280066118, &qword_2661CB408);
  sub_2661BFF90(&qword_280066120, &qword_280066118, &qword_2661CB408);
  return sub_2661C9F60();
}

uint64_t sub_2661C7B5C(uint64_t a1)
{
  v2 = type metadata accessor for DeviceDisambiguationView();
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = sub_2661C9FF0();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v9 = *(v3 + 28);
  v10 = MEMORY[0x26677CEC0](v8);
  v19 = MEMORY[0x277D837D0];
  v20 = MEMORY[0x277D63F80];
  v17 = v10;
  v18 = v11;
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  sub_2661C9FE0();
  sub_2661C8AD4(a1, v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v13 = swift_allocObject();
  sub_2661C8D34(v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280066128, qword_2661CB410);
  sub_2661C87C4();
  return sub_2661C9FB0();
}

uint64_t sub_2661C7D38(uint64_t a1)
{
  v2 = type metadata accessor for DeviceDisambiguationView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = a1 + *(MEMORY[0x28223BE20](v2 - 8) + 28);
  v16 = *(v5 + *(sub_2661C9BF0() + 20));
  swift_getKeyPath();
  sub_2661C8AD4(a1, &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_2661C8D34(&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280066138, &qword_2661CB440);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280066140, &qword_2661CB448);
  sub_2661BFF90(&qword_280066148, &qword_280066138, &qword_2661CB440);
  sub_2661C8A8C(&qword_280066150, MEMORY[0x277D55360]);
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280065D18, &qword_2661CADA8);
  v9 = sub_2661C9FD0();
  v10 = sub_2661C8A8C(&qword_280065D08, MEMORY[0x277D63D08]);
  v14 = v9;
  v15 = v10;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v14 = v8;
  v15 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  return sub_2661C9EB0();
}

uint64_t sub_2661C7FFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a2;
  v43 = a3;
  v4 = sub_2661C9C20();
  v40 = *(v4 - 8);
  v42 = *(v40 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v35 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DeviceDisambiguationView();
  v34 = *(v6 - 8);
  v7 = *(v34 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2661C9A70();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = sub_2661C9FD0();
  v12 = *(v11 - 8);
  v36 = v11;
  v37 = v12;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280065D18, &qword_2661CADA8);
  v17 = *(v16 - 8);
  v38 = v16;
  v39 = v17;
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v33 - v20;
  v22 = MEMORY[0x26677CEF0](v19);
  v68 = MEMORY[0x277D837D0];
  v69 = MEMORY[0x277D63F80];
  v66 = v22;
  v67 = v23;
  v65 = 0;
  v63 = 0u;
  v64 = 0u;
  v62 = 0;
  v60 = 0u;
  v61 = 0u;
  v59 = 0;
  v57 = 0u;
  v58 = 0u;
  v56 = 0;
  v54 = 0u;
  v55 = 0u;
  v53 = 0;
  v51 = 0u;
  v52 = 0u;
  v50 = 0;
  v48 = 0u;
  v49 = 0u;
  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  sub_2661C9A50();
  v44[3] = sub_2661C9EE0();
  v44[4] = MEMORY[0x277D63B10];
  __swift_allocate_boxed_opaque_existential_1(v44);
  sub_2661C9EF0();
  sub_2661C9FC0();
  sub_2661C8AD4(v41, v8);
  v24 = a1;
  v25 = v35;
  sub_2661C8AD4(v24, v35);
  v26 = (*(v34 + 80) + 16) & ~*(v34 + 80);
  v27 = (v7 + *(v40 + 80) + v26) & ~*(v40 + 80);
  v28 = swift_allocObject();
  sub_2661C8D34(v8, v28 + v26);
  sub_2661C8D34(v25, v28 + v27);
  v29 = sub_2661C8A8C(&qword_280065D08, MEMORY[0x277D63D08]);
  v30 = v36;
  sub_2661C9E20();

  (*(v37 + 8))(v15, v30);
  v66 = v30;
  v67 = v29;
  swift_getOpaqueTypeConformance2();
  v31 = v38;
  sub_2661C9E70();
  return (*(v39 + 8))(v21, v31);
}

uint64_t sub_2661C84F0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280065D60, &unk_2661CADD0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v16 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280065D68, &unk_2661CB450);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280065D70, &unk_2661CADE0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v16 - v10;
  sub_2661C9F00();
  v12 = sub_2661CA010();
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    return sub_2661C4F68(v11, &qword_280065D70, &unk_2661CADE0);
  }

  sub_2661C9C00();
  v14 = sub_2661C9A30();
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v14);
  v15 = sub_2661C9F70();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v15);
  sub_2661CA000();
  sub_2661C4F68(v3, &qword_280065D60, &unk_2661CADD0);
  sub_2661C4F68(v7, &qword_280065D68, &unk_2661CB450);
  return (*(*(v12 - 8) + 8))(v11, v12);
}

uint64_t sub_2661C8740(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for DeviceDisambiguationView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_2661C87C4()
{
  result = qword_280066130;
  if (!qword_280066130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280066128, qword_2661CB410);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280065D18, &qword_2661CADA8);
    sub_2661C9FD0();
    sub_2661C8A8C(&qword_280065D08, MEMORY[0x277D63D08]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280066130);
  }

  return result;
}

uint64_t objectdestroyTm_2()
{
  v2 = type metadata accessor for DeviceDisambiguationView();
  OUTLINED_FUNCTION_4_0(v2);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v7 = *(v6 + 64);
  v8 = sub_2661C9F20();
  OUTLINED_FUNCTION_1_0(v8);
  (*(v9 + 8))(v1 + v5);
  v10 = v1 + v5 + *(v0 + 28);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280065CD0, &qword_2661CAD60);
  OUTLINED_FUNCTION_1_0(v11);
  (*(v12 + 8))(v10);
  v13 = *(v10 + *(sub_2661C9BF0() + 20));

  return MEMORY[0x2821FE8E8](v1, v5 + v7, v4 | 7);
}

uint64_t sub_2661C8A0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for DeviceDisambiguationView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_2661C7FFC(a1, v6, a2);
}

uint64_t sub_2661C8A8C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2661C8AD4(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_3_0();
  v6 = v5(v4);
  OUTLINED_FUNCTION_1_0(v6);
  (*(v7 + 16))(a2, v2);
  return a2;
}

uint64_t sub_2661C8B30()
{
  v2 = (type metadata accessor for DeviceDisambiguationView() - 8);
  v3 = *(*v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(*v2 + 64);
  v6 = sub_2661C9C20();
  OUTLINED_FUNCTION_4_0(v6);
  v8 = v7;
  v10 = v9;
  v11 = *(v8 + 80);
  v12 = (v4 + v5 + v11) & ~v11;
  v13 = *(v10 + 64);
  v14 = v3 | v11;
  v15 = sub_2661C9F20();
  OUTLINED_FUNCTION_1_0(v15);
  (*(v16 + 8))(v1 + v4);
  v17 = v1 + v4 + v2[7];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280065CD0, &qword_2661CAD60);
  OUTLINED_FUNCTION_1_0(v18);
  v20 = *(v19 + 8);
  v20(v17, v18);
  v21 = *(v17 + *(sub_2661C9BF0() + 20));

  v20(v1 + v12, v18);
  v20(v1 + v12 + *(v0 + 28), v18);
  v22 = *(v0 + 32);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280065D58, &qword_2661CB200);
  OUTLINED_FUNCTION_1_0(v23);
  (*(v24 + 8))(v1 + v12 + v22);

  return MEMORY[0x2821FE8E8](v1, v12 + v13, v14 | 7);
}

uint64_t sub_2661C8D34(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_3_0();
  v6 = v5(v4);
  OUTLINED_FUNCTION_1_0(v6);
  (*(v7 + 32))(a2, v2);
  return a2;
}

uint64_t sub_2661C8D90()
{
  v1 = *(type metadata accessor for DeviceDisambiguationView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_2661C9C20() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_2661C84F0();
}

uint64_t sub_2661C8EA8()
{
  sub_2661C8F0C();
  result = sub_2661CA110();
  qword_2800661B8 = result;
  return result;
}

unint64_t sub_2661C8F0C()
{
  result = qword_280066168;
  if (!qword_280066168)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280066168);
  }

  return result;
}

uint64_t static SnippetProvider.snippet(for:mode:idiom:)(uint64_t a1)
{
  v114 = type metadata accessor for AppOffloadedView();
  v1 = OUTLINED_FUNCTION_1_0(v114);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_0_2();
  v113 = v4;
  OUTLINED_FUNCTION_4_2();
  v5 = sub_2661C9AF0();
  v6 = OUTLINED_FUNCTION_3_4(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_0_2();
  v112 = v9;
  OUTLINED_FUNCTION_4_2();
  v111 = type metadata accessor for AppSearchResultsView();
  v10 = OUTLINED_FUNCTION_1_0(v111);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_0_2();
  v110 = v13;
  OUTLINED_FUNCTION_4_2();
  v14 = sub_2661C9B60();
  v15 = OUTLINED_FUNCTION_3_4(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_0_2();
  v109 = v18;
  OUTLINED_FUNCTION_4_2();
  v108 = type metadata accessor for ConfirmationView();
  v19 = OUTLINED_FUNCTION_1_0(v108);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_0_2();
  v107 = v22;
  OUTLINED_FUNCTION_4_2();
  v23 = sub_2661C9BD0();
  v24 = OUTLINED_FUNCTION_3_4(v23);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_0_2();
  v106 = v27;
  OUTLINED_FUNCTION_4_2();
  v105 = type metadata accessor for DeviceDisambiguationView();
  v28 = OUTLINED_FUNCTION_1_0(v105);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_2_2();
  v33 = v32 - v31;
  v34 = sub_2661C9BF0();
  v35 = OUTLINED_FUNCTION_3_4(v34);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_0_2();
  v104 = v38;
  OUTLINED_FUNCTION_4_2();
  v39 = type metadata accessor for ButtonFallbackView();
  v40 = OUTLINED_FUNCTION_1_0(v39);
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_2_2();
  v45 = v44 - v43;
  v46 = sub_2661C9BC0();
  v47 = OUTLINED_FUNCTION_3_4(v46);
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_2_2();
  v52 = v51 - v50;
  v53 = type metadata accessor for AppDisambiguationView();
  v54 = OUTLINED_FUNCTION_1_0(v53);
  v56 = *(v55 + 64);
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_2_2();
  v59 = v58 - v57;
  v60 = sub_2661C9B90();
  v61 = OUTLINED_FUNCTION_3_4(v60);
  v63 = *(v62 + 64);
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_2_2();
  v66 = v65 - v64;
  v67 = sub_2661C9C30();
  v68 = OUTLINED_FUNCTION_1_0(v67);
  v70 = *(v69 + 64);
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_2_2();
  sub_2661C9894(a1, v72 - v71, MEMORY[0x277D55370]);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v91 = OUTLINED_FUNCTION_6();
      sub_2661C9834(v91, v52, v92);
      sub_2661C9894(v52, v45 + *(v39 + 20), MEMORY[0x277D55328]);
      sub_2661C9F10();
      sub_2661C98F4(&qword_280066190, type metadata accessor for ButtonFallbackView);
      v75 = sub_2661C9DF0();
      v93 = OUTLINED_FUNCTION_8();
      sub_2661C993C(v93, v94);
      v86 = MEMORY[0x277D55328];
      goto LABEL_8;
    case 2u:
      v87 = OUTLINED_FUNCTION_6();
      sub_2661C9834(v87, v104, v88);
      sub_2661C9894(v104, v33 + *(v105 + 20), MEMORY[0x277D55358]);
      sub_2661C9F10();
      sub_2661C98F4(&qword_280066188, type metadata accessor for DeviceDisambiguationView);
      OUTLINED_FUNCTION_7();
      v75 = sub_2661C9DF0();
      sub_2661C993C(v33, type metadata accessor for DeviceDisambiguationView);
      v77 = OUTLINED_FUNCTION_8();
      break;
    case 3u:
      v89 = OUTLINED_FUNCTION_6();
      sub_2661C9834(v89, v106, v90);
      sub_2661C9894(v106, v107 + *(v108 + 20), MEMORY[0x277D55350]);
      sub_2661C9F10();
      sub_2661C98F4(&qword_280066180, type metadata accessor for ConfirmationView);
      OUTLINED_FUNCTION_7();
      v75 = sub_2661C9DF0();
      sub_2661C993C(v107, type metadata accessor for ConfirmationView);
      v76 = MEMORY[0x277D55350];
      v77 = v106;
      break;
    case 4u:
      v78 = OUTLINED_FUNCTION_6();
      v52 = v109;
      sub_2661C9834(v78, v109, v79);
      sub_2661C9894(v109, v110, MEMORY[0x277D55318]);
      OUTLINED_FUNCTION_9(v110 + *(v111 + 20));
      v80 = (v110 + *(v111 + 28));
      sub_2661CA050();
      OUTLINED_FUNCTION_3_5();
      sub_2661C98F4(v81, v82);
      OUTLINED_FUNCTION_7();
      *v80 = sub_2661C9D00();
      v80[1] = v83;
      sub_2661C98F4(&qword_280066178, type metadata accessor for AppSearchResultsView);
      v75 = sub_2661C9DF0();
      v84 = OUTLINED_FUNCTION_8();
      sub_2661C993C(v84, v85);
      v86 = MEMORY[0x277D55318];
      goto LABEL_8;
    case 5u:
      v95 = OUTLINED_FUNCTION_6();
      v52 = v112;
      sub_2661C9834(v95, v112, v96);
      sub_2661C9894(v112, v113, MEMORY[0x277D55300]);
      OUTLINED_FUNCTION_9(v113 + *(v114 + 20));
      v97 = (v113 + *(v114 + 28));
      sub_2661CA050();
      OUTLINED_FUNCTION_3_5();
      sub_2661C98F4(v98, v99);
      OUTLINED_FUNCTION_7();
      *v97 = sub_2661C9D00();
      v97[1] = v100;
      sub_2661C98F4(&qword_280066170, type metadata accessor for AppOffloadedView);
      v75 = sub_2661C9DF0();
      v101 = OUTLINED_FUNCTION_8();
      sub_2661C993C(v101, v102);
      v86 = MEMORY[0x277D55300];
LABEL_8:
      v76 = v86;
      v77 = v52;
      break;
    default:
      v73 = OUTLINED_FUNCTION_6();
      sub_2661C9834(v73, v66, v74);
      sub_2661C9894(v66, v59 + *(v53 + 20), MEMORY[0x277D55320]);
      sub_2661C9F10();
      sub_2661C98F4(&qword_280066198, type metadata accessor for AppDisambiguationView);
      v75 = sub_2661C9DF0();
      sub_2661C993C(v59, type metadata accessor for AppDisambiguationView);
      v76 = MEMORY[0x277D55320];
      v77 = v66;
      break;
  }

  sub_2661C993C(v77, v76);
  return v75;
}

uint64_t sub_2661C9834(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_1_0(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_2661C9894(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_1_0(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2661C98F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2661C993C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_1_0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_9@<X0>(uint64_t a1@<X8>)
{
  *a1 = v1;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v5 = v3 + *(v2 + 24);

  return sub_2661C9F10();
}