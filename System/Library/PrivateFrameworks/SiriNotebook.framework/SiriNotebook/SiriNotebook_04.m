_BYTE *_s14descr2878F8F29V8ReminderV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF2)
  {
    v6 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
          *result = a2 + 13;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_268150C10(unsigned __int8 *a1, int a2)
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

  return OUTLINED_FUNCTION_945(a1);
}

_BYTE *sub_268150C5C(_BYTE *result, int a2, int a3)
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

_BYTE *sub_268150D18(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *_s14descr2878F8F29V8ReminderV15LocationTriggerV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_268150EF4()
{
  result = qword_28024D9E8;
  if (!qword_28024D9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024D9E8);
  }

  return result;
}

unint64_t sub_268150F4C()
{
  result = qword_28024D9F0;
  if (!qword_28024D9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024D9F0);
  }

  return result;
}

unint64_t sub_268150FA4()
{
  result = qword_28024D9F8;
  if (!qword_28024D9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024D9F8);
  }

  return result;
}

unint64_t sub_268150FFC()
{
  result = qword_28024DA00;
  if (!qword_28024DA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DA00);
  }

  return result;
}

unint64_t sub_268151054()
{
  result = qword_28024DA08;
  if (!qword_28024DA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DA08);
  }

  return result;
}

unint64_t sub_2681510AC()
{
  result = qword_28024DA10;
  if (!qword_28024DA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DA10);
  }

  return result;
}

unint64_t sub_268151104()
{
  result = qword_28024DA18;
  if (!qword_28024DA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DA18);
  }

  return result;
}

unint64_t sub_26815115C()
{
  result = qword_28024DA20;
  if (!qword_28024DA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DA20);
  }

  return result;
}

unint64_t sub_2681511B4()
{
  result = qword_28024DA28;
  if (!qword_28024DA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DA28);
  }

  return result;
}

unint64_t sub_26815120C()
{
  result = qword_28024DA30;
  if (!qword_28024DA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DA30);
  }

  return result;
}

unint64_t sub_268151264()
{
  result = qword_28024DA38;
  if (!qword_28024DA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DA38);
  }

  return result;
}

unint64_t sub_2681512BC()
{
  result = qword_28024DA40;
  if (!qword_28024DA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DA40);
  }

  return result;
}

unint64_t sub_268151314()
{
  result = qword_28024DA48;
  if (!qword_28024DA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DA48);
  }

  return result;
}

unint64_t sub_26815136C()
{
  result = qword_28024DA50;
  if (!qword_28024DA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DA50);
  }

  return result;
}

unint64_t sub_2681513C4()
{
  result = qword_28024DA58;
  if (!qword_28024DA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DA58);
  }

  return result;
}

unint64_t sub_26815141C()
{
  result = qword_28024DA60;
  if (!qword_28024DA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DA60);
  }

  return result;
}

unint64_t sub_268151474()
{
  result = qword_28024DA68;
  if (!qword_28024DA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DA68);
  }

  return result;
}

unint64_t sub_2681514CC()
{
  result = qword_28024DA70;
  if (!qword_28024DA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DA70);
  }

  return result;
}

unint64_t sub_268151524()
{
  result = qword_28024DA78;
  if (!qword_28024DA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DA78);
  }

  return result;
}

unint64_t sub_26815157C()
{
  result = qword_28024DA80;
  if (!qword_28024DA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DA80);
  }

  return result;
}

unint64_t sub_2681515D4()
{
  result = qword_28024DA88;
  if (!qword_28024DA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DA88);
  }

  return result;
}

unint64_t sub_26815162C()
{
  result = qword_28024DA90;
  if (!qword_28024DA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DA90);
  }

  return result;
}

unint64_t sub_268151684()
{
  result = qword_28024DA98;
  if (!qword_28024DA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DA98);
  }

  return result;
}

unint64_t sub_2681516DC()
{
  result = qword_28024DAA0;
  if (!qword_28024DAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DAA0);
  }

  return result;
}

unint64_t sub_268151734()
{
  result = qword_28024DAA8;
  if (!qword_28024DAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DAA8);
  }

  return result;
}

unint64_t sub_26815178C()
{
  result = qword_28024DAB0;
  if (!qword_28024DAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DAB0);
  }

  return result;
}

unint64_t sub_2681517E4()
{
  result = qword_28024DAB8;
  if (!qword_28024DAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DAB8);
  }

  return result;
}

unint64_t sub_26815183C()
{
  result = qword_28024DAC0;
  if (!qword_28024DAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DAC0);
  }

  return result;
}

unint64_t sub_268151894()
{
  result = qword_28024DAC8;
  if (!qword_28024DAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DAC8);
  }

  return result;
}

unint64_t sub_2681518EC()
{
  result = qword_28024DAD0;
  if (!qword_28024DAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DAD0);
  }

  return result;
}

unint64_t sub_268151944()
{
  result = qword_28024DAD8;
  if (!qword_28024DAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DAD8);
  }

  return result;
}

unint64_t sub_26815199C()
{
  result = qword_28024DAE0;
  if (!qword_28024DAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DAE0);
  }

  return result;
}

unint64_t sub_2681519F4()
{
  result = qword_28024DAE8;
  if (!qword_28024DAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DAE8);
  }

  return result;
}

unint64_t sub_268151A4C()
{
  result = qword_28024DAF0;
  if (!qword_28024DAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DAF0);
  }

  return result;
}

uint64_t sub_268151AA0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_268151B1C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_268151B34();
  }

  return result;
}

uint64_t sub_268151B3C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_26814304C();
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_20_4()
{
  v1 = v0[15];
  v2 = *(v0[14] + 8);
  return v0[29];
}

uint64_t OUTLINED_FUNCTION_32_2()
{
  sub_26814F5B8(v1, v0);
  sub_26814F5B8(v3, v2);
  return v1;
}

uint64_t OUTLINED_FUNCTION_43_1()
{

  return sub_2683CB848();
}

uint64_t OUTLINED_FUNCTION_50_0()
{

  return sub_2683CB868();
}

uint64_t OUTLINED_FUNCTION_51_1()
{
  v2 = *(*(v1 - 120) + 8);
  result = v0;
  v4 = *(v1 - 104);
  return result;
}

uint64_t OUTLINED_FUNCTION_56_0()
{
  result = type metadata accessor for Snippet.Reminder.URLAttachment(0);
  v1 = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_64_0()
{
  *(v0 + 64) = v1;

  return sub_2683D0598();
}

uint64_t OUTLINED_FUNCTION_71()
{
  v2 = v0[15];
  v3 = v0[29];
  v4 = v0[24];

  return sub_2683D04A8();
}

uint64_t OUTLINED_FUNCTION_73()
{
  v2 = v0[15];
  v3 = v0[24];
  v4 = v0[29];

  return sub_2683D04A8();
}

uint64_t OUTLINED_FUNCTION_75()
{

  return sub_2683CFA08();
}

uint64_t OUTLINED_FUNCTION_79()
{

  return sub_2683D0698();
}

uint64_t OUTLINED_FUNCTION_95()
{

  return sub_2683D06B8();
}

uint64_t OUTLINED_FUNCTION_96()
{

  return sub_2683D06B8();
}

uint64_t OUTLINED_FUNCTION_97()
{
  v2 = *(v0 - 152);

  return sub_2683D0418();
}

uint64_t OUTLINED_FUNCTION_98(uint64_t a1)
{

  return sub_26812DA38(a1, v1 + 200, v2, v3);
}

uint64_t OUTLINED_FUNCTION_99(uint64_t a1)
{

  return sub_26812DA38(a1, v1 + 200, v2, v3);
}

uint64_t OUTLINED_FUNCTION_100()
{

  return sub_2683D06B8();
}

void OUTLINED_FUNCTION_102(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);

  JUMPOUT(0x26D617190);
}

uint64_t OUTLINED_FUNCTION_103@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  v4 = *v3;
  v5 = v3[1];
}

uint64_t OUTLINED_FUNCTION_104()
{

  return sub_2683D06B8();
}

uint64_t OUTLINED_FUNCTION_105()
{

  return sub_2683CB858();
}

uint64_t OUTLINED_FUNCTION_107@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  return (a1 + 1);
}

__n128 OUTLINED_FUNCTION_109()
{
  result = *v1;
  v0[32] = *v1;
  v0[33].n128_u64[0] = v1[1].n128_u64[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_115()
{
  v2 = *(v0 + 8);
  result = *(v1 - 104);
  v4 = *(v1 - 96);
  return result;
}

uint64_t OUTLINED_FUNCTION_120@<X0>(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  result = *v2;
  v4 = v2[1];
  return result;
}

uint64_t OUTLINED_FUNCTION_122()
{

  return sub_2683D01C8();
}

void *OUTLINED_FUNCTION_123()
{

  return memcpy((v0 + 544), (v1 + 32), 0x41uLL);
}

uint64_t OUTLINED_FUNCTION_124()
{

  return sub_2681441DC(v0, 0);
}

uint64_t OUTLINED_FUNCTION_125()
{

  return sub_268151B1C(v1, v2, v0);
}

void OUTLINED_FUNCTION_126(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);

  JUMPOUT(0x26D617190);
}

uint64_t OUTLINED_FUNCTION_128(uint64_t a1, uint64_t a2)
{

  return sub_26812DA38(a1, a2, v2, v3);
}

uint64_t OUTLINED_FUNCTION_129(uint64_t a1, uint64_t a2)
{

  return sub_2681441DC(a1, a2);
}

uint64_t sub_268152518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_2683CF278();
  if ((sub_2683CF268() & 1) == 0)
  {
    return 0;
  }

  v14 = a2 == a6 && a3 == a7;
  if (!v14 && (sub_2683D0598() & 1) == 0)
  {
    return 0;
  }

  return sub_268152604(a4, a8);
}

uint64_t sub_268152604(uint64_t result, uint64_t a2)
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
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v22 = result;
  if (v7)
  {
    while (2)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_13:
      v12 = (*(result + 48) + 16 * (v9 | (v3 << 6)));
      v14 = *v12;
      v13 = v12[1];
      v15 = *(a2 + 40);
      sub_2683D0698();

      sub_2683CFB48();
      v16 = sub_2683D06D8();
      v17 = ~(-1 << *(a2 + 32));
      do
      {
        v18 = v16 & v17;
        if (((*(a2 + 56 + (((v16 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v16 & v17)) & 1) == 0)
        {

          return 0;
        }

        v19 = (*(a2 + 48) + 16 * v18);
        if (*v19 == v14 && v19[1] == v13)
        {
          break;
        }

        v21 = sub_2683D0598();
        v16 = v18 + 1;
      }

      while ((v21 & 1) == 0);

      result = v22;
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2681527AC(void (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v26 = sub_2683CC288();
  v6 = OUTLINED_FUNCTION_0_3(v26);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_14_3();
  v13 = v12 - v11;
  v14 = *(a3 + 16);
  v15 = MEMORY[0x277D84F90];
  if (!v14)
  {
    return v15;
  }

  v16 = OUTLINED_FUNCTION_28_3();
  sub_268390620(v16, v17, v18);
  v15 = v29;
  for (i = (a3 + 40); ; i += 2)
  {
    v20 = *i;
    v28[0] = *(i - 1);
    v28[1] = v20;

    a1(v28);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v29 = v15;
    v22 = *(v15 + 16);
    v21 = *(v15 + 24);
    if (v22 >= v21 >> 1)
    {
      sub_268390620(v21 > 1, v22 + 1, 1);
      v15 = v29;
    }

    *(v15 + 16) = v22 + 1;
    v23 = *(v8 + 80);
    OUTLINED_FUNCTION_11_7();
    (*(v8 + 32))(v15 + v24 + *(v8 + 72) * v22, v13, v26);
    if (!--v14)
    {
      return v15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_268152950(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v29 = sub_2683CC168();
  v6 = OUTLINED_FUNCTION_0_3(v29);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_14_3();
  v13 = v12 - v11;
  v14 = *(a3 + 16);
  v15 = MEMORY[0x277D84F90];
  if (!v14)
  {
    return v15;
  }

  v16 = OUTLINED_FUNCTION_28_3();
  sub_268390678(v16, v17, v18);
  v15 = v31;
  v19 = sub_2683CC288();
  OUTLINED_FUNCTION_3_1(v19);
  v21 = a3 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
  v28 = *(v22 + 72);
  while (1)
  {
    a1(v21);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v24 = *(v31 + 16);
    v23 = *(v31 + 24);
    if (v24 >= v23 >> 1)
    {
      sub_268390678(v23 > 1, v24 + 1, 1);
    }

    *(v31 + 16) = v24 + 1;
    v25 = *(v8 + 80);
    OUTLINED_FUNCTION_11_7();
    (*(v8 + 32))(v31 + v26 + *(v8 + 72) * v24, v13, v29);
    v21 += v28;
    if (!--v14)
    {
      return v15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_268152B24(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DB58, &qword_2683D4258);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = *(a3 + 16);
  v10 = MEMORY[0x277D84F90];
  if (!v9)
  {
    return v10;
  }

  v19 = MEMORY[0x277D84F90];
  sub_2683907C8();
  v10 = v19;
  v11 = *(type metadata accessor for Snippet.Reminder(0) - 8);
  v12 = a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v17 = *(v11 + 72);
  while (1)
  {
    a1(v12);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v13 = *(v19 + 16);
    if (v13 >= *(v19 + 24) >> 1)
    {
      sub_2683907C8();
    }

    *(v19 + 16) = v13 + 1;
    v14 = v19 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v15 = *(v7 + 72);
    sub_26815ECA4();
    v12 += v17;
    if (!--v9)
    {
      return v10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_268152D24(void (*a1)(void *__return_ptr, _BYTE *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v18 = MEMORY[0x277D84F90];
  sub_268390828(0, v5, 0);
  v6 = v18;
  for (i = (a3 + 32); ; i += 104)
  {
    memcpy(__dst, i, 0x61uLL);
    memcpy(__src, i, 0x61uLL);
    sub_26814FB60(__dst, v14);
    a1(v16, __src);
    if (v4)
    {
      break;
    }

    v4 = 0;
    memcpy(v13, __src, 0x61uLL);
    sub_26814F740(v13);
    memcpy(v14, v16, sizeof(v14));
    v18 = v6;
    v11 = *(v6 + 16);
    v10 = *(v6 + 24);
    if (v11 >= v10 >> 1)
    {
      sub_268390828((v10 > 1), v11 + 1, 1);
      v6 = v18;
    }

    *(v6 + 16) = v11 + 1;
    memcpy((v6 + 112 * v11 + 32), v14, 0x70uLL);
    if (!--v5)
    {
      return v6;
    }
  }

  memcpy(v14, __src, 0x61uLL);
  sub_26814F740(v14);

  __break(1u);
  return result;
}

uint64_t sub_268152EA8(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(a3 + 16);
  result = MEMORY[0x277D84F90];
  if (v6)
  {
    v14 = MEMORY[0x277D84F90];
    sub_2683D0228();
    for (i = (a3 + 40); ; i += 2)
    {
      v10 = *i;
      v12[0] = *(i - 1);
      v12[1] = v10;

      a1(&v13, v12);
      if (v4)
      {
        break;
      }

      v4 = 0;

      sub_2683D01F8();
      v11 = *(v14 + 16);
      sub_2683D0238();
      sub_2683D0248();
      sub_2683D0208();
      if (!--v6)
      {
        return v14;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_268152FB0(void (*a1)(void **__return_ptr, id *), uint64_t a2, unint64_t a3)
{
  v5 = v3;
  if (a3 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2683D00A8())
  {
    result = MEMORY[0x277D84F90];
    if (!i)
    {
      break;
    }

    v16 = MEMORY[0x277D84F90];
    sub_2683D0228();
    if (i < 0)
    {
      __break(1u);
LABEL_19:

      __break(1u);
      return result;
    }

    for (j = 0; ; ++j)
    {
      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      if ((a3 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x26D616C90](j, a3);
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v11 = *(a3 + 8 * j + 32);
      }

      v4 = v11;
      v14 = v11;
      a1(&v15, &v14);
      if (v5)
      {
        goto LABEL_19;
      }

      v5 = 0;

      v4 = v15;
      sub_2683D01F8();
      v12 = *(v16 + 16);
      sub_2683D0238();
      sub_2683D0248();
      sub_2683D0208();
      if (v10 == i)
      {
        return v16;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  return result;
}

uint64_t sub_268153124(uint64_t a1)
{
  v2 = MEMORY[0x277D84F98];
  v21 = MEMORY[0x277D84F98];
  v3 = sub_2683ABE58(a1);
  for (i = 0; ; ++i)
  {
    if (v3 == i)
    {

      return v2;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x26D616C90](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      v5 = *(a1 + 8 * i + 32);
    }

    v6 = v5;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v7 = [v5 parentReminderID];
    v9 = sub_2682E186C();
    v10 = v2[2];
    v11 = (v8 & 1) == 0;
    if (__OFADD__(v10, v11))
    {
      goto LABEL_22;
    }

    v12 = v8;
    if (v2[3] < v10 + v11)
    {
      sub_2682C0F5C();
      v2 = v21;
      v13 = sub_2682E186C();
      if ((v12 & 1) != (v14 & 1))
      {
        goto LABEL_24;
      }

      v9 = v13;
    }

    if (v12)
    {

      v15 = (v2[7] + 8 * v9);
      MEMORY[0x26D616770]();
      if (*((*v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2683CFCD8();
      }

      sub_2683CFD08();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAB0, &unk_2683D2C10);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_2683D2250;
      *(v16 + 32) = v6;
      v2[(v9 >> 6) + 8] |= 1 << v9;
      *(v2[6] + 8 * v9) = v7;
      *(v2[7] + 8 * v9) = v16;
      v17 = v2[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_23;
      }

      v2[2] = v19;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  sub_268129504(0, &qword_28024DB40, 0x277D44700);
  result = sub_2683D0608();
  __break(1u);
  return result;
}

void sub_268153360()
{
  OUTLINED_FUNCTION_30_0();
  v1 = v0;
  v2 = type metadata accessor for Snippet.Reminder(0);
  v3 = OUTLINED_FUNCTION_3_1(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_14_3();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAA0, &qword_2683D4370);
  v12 = sub_2683CC818();
  sub_268185828();
  v14 = v13;

  v15 = sub_268229348(v14);
  if (!v15)
  {

    (*(*(v11 - 8) + 8))(v1, v11);
LABEL_12:
    OUTLINED_FUNCTION_29_0();
    return;
  }

  v16 = v15;
  v24 = MEMORY[0x277D84F90];
  sub_268390728();
  if ((v16 & 0x8000000000000000) == 0)
  {
    v23 = v1;
    v17 = 0;
    do
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x26D616C90](v17, v14);
      }

      else
      {
        v18 = *(v14 + 8 * v17 + 32);
      }

      sub_26834A288(v18, v10);
      v20 = *(v24 + 16);
      v19 = *(v24 + 24);
      if (v20 >= v19 >> 1)
      {
        OUTLINED_FUNCTION_22_2(v19);
        sub_268390728();
      }

      ++v17;
      *(v24 + 16) = v20 + 1;
      v21 = *(v5 + 80);
      OUTLINED_FUNCTION_11_7();
      v22 = *(v5 + 72);
      OUTLINED_FUNCTION_2_5();
      sub_26815E568();
    }

    while (v16 != v17);
    (*(*(v11 - 8) + 8))(v23, v11);

    goto LABEL_12;
  }

  __break(1u);
}

id sub_26815357C(void *a1, void *a2)
{
  v3 = v2;
  v40[1] = *MEMORY[0x277D85DE8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DB50, &qword_2683D4250);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v38[-v8];
  v10 = sub_2683CB598();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v38[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (!a2)
  {
    goto LABEL_12;
  }

  sub_2683CB538();
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    sub_26812D9E0(v9, &qword_28024DB50, &qword_2683D4250);
LABEL_12:
    v19 = 0;
    goto LABEL_13;
  }

  (*(v11 + 32))(v14, v9, v10);
  v15 = objc_opt_self();
  v16 = sub_2683CB558();
  v17 = [v15 objectIDWithUUID_];

  (*(v11 + 8))(v14, v10);
  if (!v17)
  {
    goto LABEL_12;
  }

  v18 = *v3;
  v39[0] = 0;
  v19 = [v18 fetchReminderWithObjectID:v17 error:v39];
  v20 = v39[0];
  if (!v19)
  {
    v21 = v20;
    v22 = sub_2683CB388();

    swift_willThrow();
    if (qword_28024C8F0 != -1)
    {
      swift_once();
    }

    v23 = sub_2683CF7E8();
    __swift_project_value_buffer(v23, qword_28027C988);
    v24 = v22;

    v25 = sub_2683CF7C8();
    v26 = sub_2683CFE78();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v40[0] = v28;
      *v27 = 136315394;
      v39[0] = v22;
      v29 = v22;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D3E0, &qword_2683D2360);
      v30 = sub_2683CFAD8();
      v32 = sub_2681610A0(v30, v31, v40);

      *(v27 + 4) = v32;
      *(v27 + 12) = 2080;
      v39[0] = a1;
      v39[1] = a2;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DB98, &unk_2683D5280);
      v33 = sub_2683CFAD8();
      v35 = sub_2681610A0(v33, v34, v40);

      *(v27 + 14) = v35;
      _os_log_impl(&dword_2680EB000, v25, v26, "Failed fetching reminder with error: %s. Id: %s", v27, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D617A40](v28, -1, -1);
      MEMORY[0x26D617A40](v27, -1, -1);
    }

    else
    {
    }

    goto LABEL_12;
  }

LABEL_13:
  v36 = *MEMORY[0x277D85DE8];
  return v19;
}

void sub_2681539A8(unint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v93 = a3;
  v5 = type metadata accessor for Snippet.Reminder.URLAttachment(0);
  v95 = *(v5 - 8);
  v6 = *(v95 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v97 = sub_2683CB438();
  v90 = *(v97 - 8);
  v9 = *(v90 + 64);
  v10 = MEMORY[0x28223BE20](v97);
  v96 = &v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v87 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5D8, &qword_2683D4260);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v87 - v16;
  v18 = type metadata accessor for Snippet.Reminder(0);
  v19 = *(*(v18 - 1) + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v87 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v87 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v87 - v26;
  if (!a2)
  {
    if (qword_28024C8F0 != -1)
    {
      goto LABEL_39;
    }

    goto LABEL_29;
  }

  sub_26815E3F0(a1, &v87 - v26);
  v91 = a2;
  v28 = [v91 contactHandles];
  v94 = v8;
  v92 = v27;
  v88 = v5;
  if (!v28)
  {
    goto LABEL_5;
  }

  v29 = *__swift_project_boxed_opaque_existential_1(v89 + 1, *(v89 + 4));
  v30 = [v28 phones];
  v31 = sub_2683CFCA8();

  v32 = [v28 emails];
  v33 = sub_2683CFCA8();

  sub_2683AF4A8(v31, v33, v29, &v98);

  v28 = v99;
  if (v99)
  {
    v35 = v100;
    v34 = v101;
    v36 = v98;
  }

  else
  {
LABEL_5:
    v36 = 0;
    v35 = 0;
    v34 = 0;
  }

  v37 = v92;
  v38 = &v92[v18[14]];
  v39 = v38[2];
  v40 = v38[3];
  sub_268144260(*v38, v38[1]);
  *v38 = v36;
  v38[1] = v28;
  v38[2] = v35;
  v38[3] = v34;
  v41 = v91;
  v42 = sub_26815E30C(v91, &selRef_notesAsString);
  v44 = v43;
  v45 = &v37[v18[7]];
  v46 = v45[1];

  *v45 = v42;
  v45[1] = v44;
  v47 = [v41 userActivity];
  sub_268154BFC();
  sub_26815E4B0(v17, &v37[v18[16]]);
  v48 = [v41 attachmentContext];
  if (v48)
  {
    v49 = v48;
    v89 = v18;
    v50 = [v48 urlAttachments];

    sub_268129504(0, &qword_28024DB68, 0x277D448E8);
    v22 = sub_2683CFCA8();

    v98 = MEMORY[0x277D84FA0];
    v102 = MEMORY[0x277D84F90];
    v25 = sub_2683ABE58(v22);
    v51 = 0;
    a1 = v22 & 0xC000000000000001;
    v52 = (v90 + 8);
    while (1)
    {
      if (v25 == v51)
      {

        v58 = v102;

        v59 = sub_268229348(v58);
        if (v59)
        {
          v60 = v59;
          v98 = MEMORY[0x277D84F90];
          sub_268390770(0, v59 & ~(v59 >> 63), 0);
          if (v60 < 0)
          {
            __break(1u);
            return;
          }

          v61 = 0;
          v62 = v98;
          v97 = xmmword_2683D2C70;
          v63 = v88;
          v64 = v94;
          do
          {
            if ((v58 & 0xC000000000000001) != 0)
            {
              v65 = MEMORY[0x26D616C90](v61, v58);
            }

            else
            {
              v65 = *(v58 + 8 * v61 + 32);
            }

            v66 = v65;
            v67 = [v65 url];
            sub_2683CB3E8();

            v68 = sub_26815E2B0(v66, &selRef_metadata);
            v70 = v69;

            v71 = &v64[*(v63 + 20)];
            *v71 = v97;
            sub_26814F5CC(0, 0xF000000000000000);
            *v71 = v68;
            *(v71 + 1) = v70;
            v98 = v62;
            v73 = *(v62 + 16);
            v72 = *(v62 + 24);
            if (v73 >= v72 >> 1)
            {
              sub_268390770(v72 > 1, v73 + 1, 1);
              v62 = v98;
            }

            ++v61;
            *(v62 + 16) = v73 + 1;
            v74 = v62 + ((*(v95 + 80) + 32) & ~*(v95 + 80)) + *(v95 + 72) * v73;
            sub_26815E568();
          }

          while (v60 != v61);
        }

        else
        {

          v62 = MEMORY[0x277D84F90];
        }

        v84 = v89[15];
        v85 = v92;
        v86 = *&v92[v84];

        *&v85[v84] = v62;
        goto LABEL_36;
      }

      if (a1)
      {
        v53 = MEMORY[0x26D616C90](v51, v22);
      }

      else
      {
        if (v51 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_38;
        }

        v53 = *(v22 + 8 * v51 + 32);
      }

      v54 = v53;
      if (__OFADD__(v51, 1))
      {
        break;
      }

      v55 = [v53 url];
      v56 = v96;
      sub_2683CB3E8();

      LOBYTE(v55) = sub_268158E54(v13, v56);
      (*v52)(v13, v97);
      if (v55)
      {
        sub_2683D01F8();
        v57 = *(v102 + 16);
        sub_2683D0238();
        sub_2683D0248();
        sub_2683D0208();
      }

      else
      {
      }

      ++v51;
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    swift_once();
LABEL_29:
    v75 = sub_2683CF7E8();
    __swift_project_value_buffer(v75, qword_28027C988);
    sub_26815E3F0(a1, v25);
    v76 = sub_2683CF7C8();
    v77 = sub_2683CFE78();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v98 = v79;
      *v78 = 136315138;
      sub_26815E3F0(v25, v22);
      v80 = sub_2683CFAD8();
      v82 = v81;
      sub_26815E454(v25);
      v83 = sub_2681610A0(v80, v82, &v98);

      *(v78 + 4) = v83;
      _os_log_impl(&dword_2680EB000, v76, v77, "[ReminderKitExtensionProvider] Could not load REMReminder for %s", v78, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v79);
      MEMORY[0x26D617A40](v79, -1, -1);
      MEMORY[0x26D617A40](v78, -1, -1);
    }

    else
    {

      sub_26815E454(v25);
    }

    sub_26815E3F0(a1, v93);
  }

  else
  {

LABEL_36:
    sub_26815E568();
  }
}

void sub_268154220()
{
  OUTLINED_FUNCTION_30_0();
  v3 = v2;
  v4 = type metadata accessor for Snippet.Reminder(0);
  v5 = OUTLINED_FUNCTION_3_1(v4);
  v67 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_14_3();
  v69 = v10 - v9;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DB58, &qword_2683D4258);
  v11 = OUTLINED_FUNCTION_0_3(v70);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_19_3();
  v68 = v16 - v17;
  OUTLINED_FUNCTION_8_0();
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v61 - v20;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_23_5();
  MEMORY[0x28223BE20](v22);
  v24 = &v61 - v23;
  v64 = v0;
  v72 = v0;
  v25 = sub_268152B24(sub_26815E3D0, &v71, v3);
  v75 = MEMORY[0x277D84F90];
  v26 = *(v25 + 16);
  v62 = v13;
  v63 = v25;
  if (v26)
  {
    v27 = *(v13 + 80);
    OUTLINED_FUNCTION_11_7();
    v30 = v28 + v29;
    v66 = *(v13 + 72);
    v65 = MEMORY[0x277D84F90];
    do
    {
      sub_26815ED48();
      sub_26815ED48();
      v31 = *(v70 + 48);
      v32 = *(v1 + v31);
      OUTLINED_FUNCTION_2_5();
      sub_26815E568();
      *&v21[v31] = v32;
      v33 = v32;
      sub_26812D9E0(v21, &qword_28024DB58, &qword_2683D4258);
      v34 = sub_26812D9E0(v24, &qword_28024DB58, &qword_2683D4258);
      if (v32)
      {
        MEMORY[0x26D616770](v34);
        v35 = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x18);
        if (*((v75 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v35 >> 1)
        {
          OUTLINED_FUNCTION_22_2(v35);
          sub_2683CFCD8();
        }

        sub_2683CFD08();
        v65 = v75;
      }

      v30 += v66;
      --v26;
    }

    while (v26);
  }

  else
  {
    v65 = MEMORY[0x277D84F90];
  }

  v36 = sub_2681548E8(v65);

  v37 = v63;
  v38 = *(v63 + 16);
  if (!v38)
  {
LABEL_28:

    OUTLINED_FUNCTION_29_0();
    return;
  }

  v75 = MEMORY[0x277D84F90];
  sub_268390728();
  v39 = 0;
  v40 = v75;
  v41 = v62;
  v42 = *(v62 + 80);
  OUTLINED_FUNCTION_11_7();
  v43 = v36 & 0xFFFFFFFFFFFFFF8;
  v61 = v36;
  if (v36 < 0)
  {
    v43 = v36;
  }

  v65 = v43;
  v66 = v36 & 0xC000000000000001;
  while (v39 < *(v37 + 16))
  {
    v44 = *(v41 + 72);
    v45 = v68;
    sub_26815ED48();
    v46 = *(v45 + *(v70 + 48));
    if (v46)
    {
      if (v66)
      {
        v47 = v46;
        v48 = sub_2683D0358();
        if (v48)
        {
          v73 = v48;
          sub_268129504(0, &qword_28024DB60, 0x277D44750);
          OUTLINED_FUNCTION_33_3();
          v49 = v74;
LABEL_24:
          v45 = v68;
          sub_2681539A8(v68, v49, v69);

          v41 = v62;
          v37 = v63;
          goto LABEL_25;
        }
      }

      else
      {
        v50 = v61;
        v51 = *(v61 + 16);
        v52 = v46;
        if (v51)
        {
          v53 = sub_2682E186C();
          if (v54)
          {
            v49 = *(*(v50 + 56) + 8 * v53);
            v55 = v49;
            goto LABEL_24;
          }
        }
      }

      v49 = 0;
      goto LABEL_24;
    }

    sub_26815E3F0(v45, v69);
LABEL_25:
    sub_26812D9E0(v45, &qword_28024DB58, &qword_2683D4258);
    v75 = v40;
    v57 = *(v40 + 16);
    v56 = *(v40 + 24);
    if (v57 >= v56 >> 1)
    {
      OUTLINED_FUNCTION_22_2(v56);
      sub_268390728();
      v41 = v62;
      v40 = v75;
    }

    ++v39;
    *(v40 + 16) = v57 + 1;
    v58 = *(v67 + 80);
    OUTLINED_FUNCTION_11_7();
    v60 = *(v59 + 72);
    OUTLINED_FUNCTION_2_5();
    sub_26815E568();
    if (v38 == v39)
    {
      goto LABEL_28;
    }
  }

  __break(1u);
}

uint64_t sub_2681546E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DB50, &qword_2683D4250);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v19 - v6;
  v8 = sub_2683CB598();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26815E3F0(a1, a2);
  v13 = (a1 + *(type metadata accessor for Snippet.Reminder(0) + 20));
  if (v13[1])
  {
    v14 = *v13;
    sub_2683CB538();
    if (__swift_getEnumTagSinglePayload(v7, 1, v8) != 1)
    {
      (*(v9 + 32))(v12, v7, v8);
      v16 = objc_opt_self();
      v17 = sub_2683CB558();
      v15 = [v16 objectIDWithUUID_];

      (*(v9 + 8))(v12, v8);
      goto LABEL_6;
    }

    sub_26812D9E0(v7, &qword_28024DB50, &qword_2683D4250);
  }

  v15 = 0;
LABEL_6:
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DB58, &qword_2683D4258);
  *(a2 + *(result + 48)) = v15;
  return result;
}

uint64_t sub_2681548E8(uint64_t a1)
{
  v27[1] = *MEMORY[0x277D85DE8];
  v3 = *v1;
  v4 = sub_268129504(0, &qword_28024DB40, 0x277D44700);
  v5 = sub_2683CFC98();
  v27[0] = 0;
  v6 = [v3 fetchRemindersWithObjectIDs:v5 error:v27];

  v7 = v27[0];
  if (v6)
  {
    sub_268129504(0, &qword_28024DB60, 0x277D44750);
    sub_26815E368();
    v8 = sub_2683CF9C8();
    v9 = v7;
  }

  else
  {
    v10 = v27[0];
    v11 = sub_2683CB388();

    swift_willThrow();
    if (qword_28024C8F0 != -1)
    {
      swift_once();
    }

    v12 = sub_2683CF7E8();
    __swift_project_value_buffer(v12, qword_28027C988);
    v13 = v11;

    v14 = sub_2683CF7C8();
    v15 = sub_2683CFE78();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v27[0] = v17;
      *v16 = 136315394;
      v18 = v11;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D3E0, &qword_2683D2360);
      v19 = sub_2683CFAD8();
      v21 = sub_2681610A0(v19, v20, v27);

      *(v16 + 4) = v21;
      *(v16 + 12) = 2080;
      v22 = MEMORY[0x26D6167A0](a1, v4);
      v24 = sub_2681610A0(v22, v23, v27);

      *(v16 + 14) = v24;
      _os_log_impl(&dword_2680EB000, v14, v15, "Failed batch fetching reminders with error: %s. Ids: %s", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D617A40](v17, -1, -1);
      MEMORY[0x26D617A40](v16, -1, -1);
    }

    sub_268129504(0, &qword_28024DB60, 0x277D44750);
    sub_26815E368();
    v8 = sub_2683CF9D8();
  }

  v25 = *MEMORY[0x277D85DE8];
  return v8;
}

void sub_268154BFC()
{
  OUTLINED_FUNCTION_30_0();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D258, &unk_2683D1F60);
  OUTLINED_FUNCTION_23(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v8);
  v10 = &v42 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5D8, &qword_2683D4260);
  v12 = OUTLINED_FUNCTION_23(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_19_3();
  OUTLINED_FUNCTION_23_5();
  MEMORY[0x28223BE20](v15);
  v17 = &v42 - v16;
  v18 = type metadata accessor for Snippet.Reminder.AppLink(0);
  v19 = OUTLINED_FUNCTION_1(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_45_1();
  if (!v2)
  {
    goto LABEL_17;
  }

  v22 = v2;
  v23 = [v22 type];
  if (v23 != 2)
  {
    if (v23 != 1)
    {
      if (qword_28024C8F0 != -1)
      {
        OUTLINED_FUNCTION_0_11();
      }

      v32 = sub_2683CF7E8();
      __swift_project_value_buffer(v32, qword_28027C988);
      v33 = v22;
      v34 = sub_2683CF7C8();
      v35 = sub_2683CFE78();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = OUTLINED_FUNCTION_49();
        v37 = OUTLINED_FUNCTION_53();
        v43 = v37;
        *v36 = 136315138;
        v42 = [v33 type];
        type metadata accessor for REMUserActivityType(0);
        v38 = sub_2683CFAD8();
        v40 = sub_2681610A0(v38, v39, &v43);

        *(v36 + 4) = v40;
        _os_log_impl(&dword_2680EB000, v34, v35, "Unsupported REMUserActivity type: %s", v36, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v37);
        OUTLINED_FUNCTION_38();
        OUTLINED_FUNCTION_38();
      }

      goto LABEL_17;
    }

    v24 = [v22 universalLink];
    if (v24)
    {
      v25 = v24;
      sub_2683CB3E8();

      v26 = sub_2683CB438();
      v27 = 0;
    }

    else
    {
      v26 = sub_2683CB438();
      v27 = 1;
    }

    __swift_storeEnumTagSinglePayload(v10, v27, 1, v26);
    sub_2681589F4(v10);

    if (__swift_getEnumTagSinglePayload(v17, 1, v18))
    {
      v31 = v17;
      goto LABEL_16;
    }

LABEL_19:
    sub_26815E568();
    sub_26815E568();
    v41 = 0;
    goto LABEL_18;
  }

  v28 = sub_26815E2B0(v22, &selRef_userActivityData);
  v30 = v29;

  sub_268158B9C(v28, v30);
  if (!__swift_getEnumTagSinglePayload(v0, 1, v18))
  {
    goto LABEL_19;
  }

  v31 = v0;
LABEL_16:
  sub_26812D9E0(v31, &qword_28024D5D8, &qword_2683D4260);
LABEL_17:
  v41 = 1;
LABEL_18:
  __swift_storeEnumTagSinglePayload(v4, v41, 1, v18);
  OUTLINED_FUNCTION_29_0();
}

void sub_268154F90()
{
  OUTLINED_FUNCTION_30_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for Snippet.Reminder(0);
  v7 = OUTLINED_FUNCTION_1(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_19_3();
  OUTLINED_FUNCTION_23_5();
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v30[-1] - v12;
  v14 = sub_26815357C(*(v1 + *(v11 + 20)), *(v1 + *(v11 + 20) + 8));
  if (v14)
  {
    v15 = v14;
    sub_2681551C8([v14 list], v30);
    v16 = v15;
    sub_2681539A8(v1, v15, v5);

    memcpy(v3, v30, 0x61uLL);
  }

  else
  {
    if (qword_28024C8F0 != -1)
    {
      OUTLINED_FUNCTION_0_11();
    }

    v17 = sub_2683CF7E8();
    __swift_project_value_buffer(v17, qword_28027C988);
    v18 = OUTLINED_FUNCTION_38_2();
    sub_26815E3F0(v18, v13);
    v19 = sub_2683CF7C8();
    v20 = sub_2683CFE78();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = OUTLINED_FUNCTION_49();
      v22 = OUTLINED_FUNCTION_53();
      v30[0] = v22;
      *v21 = 136315138;
      v23 = OUTLINED_FUNCTION_32_3();
      sub_26815E3F0(v23, v24);
      v25 = sub_2683CFAD8();
      v27 = v26;
      sub_26815E454(v13);
      v28 = sub_2681610A0(v25, v27, v30);

      *(v21 + 4) = v28;
      _os_log_impl(&dword_2680EB000, v19, v20, "[ReminderKitExtensionProvider] Could not load REMReminder for %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_38();
    }

    else
    {

      sub_26815E454(v13);
    }

    sub_26815E3F0(v1, v5);
    *v3 = 0;
    v3[1] = 0;
    v3[2] = 0;
    v3[3] = 0xE000000000000000;
    OUTLINED_FUNCTION_30_1();
    OUTLINED_FUNCTION_50_1();
    v3[10] = 0;
    v3[11] = 0;
    *(v3 + 96) = v19;
  }

  OUTLINED_FUNCTION_29_0();
}

void sub_2681551C8(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2683CB598();
  v6 = OUTLINED_FUNCTION_0_3(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_45_1();
  v11 = [a1 objectID];
  v12 = [v11 uuid];

  sub_2683CB578();
  v13 = sub_2683CB548();
  v15 = v14;
  (*(v8 + 8))(v2, v5);
  v16 = [a1 displayName];
  v17 = sub_2683CFA78();
  v19 = v18;

  OUTLINED_FUNCTION_50_1();
  *a2 = v13;
  *(a2 + 8) = v15;
  *(a2 + 16) = v17;
  *(a2 + 24) = v19;
  OUTLINED_FUNCTION_30_1();
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 96) = v16;
  v20 = a1;
  sub_268158448(a1);
}

void sub_268155334()
{
  OUTLINED_FUNCTION_30_0();
  v2 = v1;
  v4 = v3;
  v43[3] = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DB50, &qword_2683D4250);
  OUTLINED_FUNCTION_23(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v8);
  v10 = v43 - v9 + 32;
  v11 = sub_2683CB598();
  v12 = OUTLINED_FUNCTION_0_3(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_45_1();
  if (v2)
  {
    sub_2683CB538();
    if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
    {
      sub_26812D9E0(v10, &qword_28024DB50, &qword_2683D4250);
    }

    else
    {
      (*(v14 + 32))(v0, v10, v11);
      v17 = objc_opt_self();
      v18 = sub_2683CB558();
      v19 = [v17 objectIDWithUUID_];

      (*(v14 + 8))(v0, v11);
      if (v19)
      {
        v20 = *v0;
        v43[0] = 0;
        v21 = [v20 fetchListWithObjectID:v19 error:v43];
        v22 = v43[0];
        if (v21)
        {
        }

        else
        {
          v23 = v22;
          v24 = sub_2683CB388();

          swift_willThrow();
          if (qword_28024C8F0 != -1)
          {
            OUTLINED_FUNCTION_0_11();
          }

          v25 = sub_2683CF7E8();
          __swift_project_value_buffer(v25, qword_28027C988);
          v26 = OUTLINED_FUNCTION_39_2();

          v27 = sub_2683CF7C8();
          v28 = sub_2683CFE78();

          if (os_log_type_enabled(v27, v28))
          {
            v29 = OUTLINED_FUNCTION_53();
            v30 = swift_slowAlloc();
            v43[1] = v2;
            v43[2] = v30;
            *v29 = 136315650;
            v43[0] = v4;

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DB98, &unk_2683D5280);
            v31 = sub_2683CFAD8();
            v33 = OUTLINED_FUNCTION_34_3(v31, v32);

            *(v29 + 4) = v33;
            *(v29 + 12) = 2080;
            v43[0] = v24;
            v34 = v24;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D3E0, &qword_2683D2360);
            v35 = sub_2683CFAD8();
            v37 = OUTLINED_FUNCTION_34_3(v35, v36);

            *(v29 + 14) = v37;
            *(v29 + 22) = 2080;
            swift_getErrorValue();
            v38 = sub_2683D0638();
            v40 = OUTLINED_FUNCTION_34_3(v38, v39);

            *(v29 + 24) = v40;
            _os_log_impl(&dword_2680EB000, v27, v28, "[ReminderKitExtensionProvider] Could not load REMList for id %s with error: %s - %s", v29, 0x20u);
            swift_arrayDestroy();
            OUTLINED_FUNCTION_38();
            OUTLINED_FUNCTION_38();
          }

          else
          {
          }
        }
      }
    }
  }

  v41 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_29_0();
}

uint64_t sub_268155728(uint64_t a1)
{
  result = sub_268152D24(sub_2681589D4, v75, a1);
  v5 = result;
  v66 = 0;
  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  *&__dst[0] = MEMORY[0x277D84F90];
  v8 = *(result + 16);
  v9 = MEMORY[0x277D84F90];
LABEL_2:
  v10 = 112 * v6 + 136;
  while (1)
  {
    if (v8 == v6)
    {
      v13 = sub_268155F88(v9);

      v14 = *(v5 + 16);
      if (!v14)
      {

        return MEMORY[0x277D84F90];
      }

      v85 = v7;
      result = sub_268390808(0, v14, 0);
      v15 = 0;
      v16 = v85;
      v68 = v13;
      v69 = v13 & 0xC000000000000001;
      v67 = *MEMORY[0x277D44960];
      v72 = v14 - 1;
      v73 = v5;
      v17 = (v5 + 105);
      while (1)
      {
        if (v15 >= *(v5 + 16))
        {
          goto LABEL_48;
        }

        memcpy(__dst, v17 - 73, sizeof(__dst));
        v18 = *(&__dst[6] + 1);
        v74 = v17;
        if (!*(&__dst[6] + 1))
        {
          v22 = *(v17 - 57);
          v81 = *(v17 - 73);
          v82 = v22;
          v23 = *(v17 - 41);
          OUTLINED_FUNCTION_42_2();
          v80[0] = *v17;
          *(v80 + 3) = *(v17 + 3);
          v24 = *(&__dst[5] + 1);
          v25 = *&__dst[5];
          v26 = __dst[6];
          v27 = OUTLINED_FUNCTION_20_5();
          result = sub_26814FB60(v27, v28);
          goto LABEL_40;
        }

        if (v69)
        {
          break;
        }

        v21 = *(v68 + 16);
        v29 = *(&__dst[6] + 1);
        if (v21)
        {
          OUTLINED_FUNCTION_20_5();
          sub_26815ED48();
          v30 = sub_2682E186C();
          if (v31)
          {
            v21 = *(*(v68 + 56) + 8 * v30);
            v32 = v21;
            goto LABEL_22;
          }

          goto LABEL_20;
        }

        OUTLINED_FUNCTION_20_5();
        sub_26815ED48();
LABEL_22:
        v81 = __dst[0];
        v82 = __dst[1];
        OUTLINED_FUNCTION_42_2();
        v80[0] = *(&__dst[4] + 9);
        *(v80 + 3) = HIDWORD(__dst[4]);
        v33 = *(&__dst[5] + 1);
        v25 = *&__dst[5];
        v34 = __dst[6];
        if (!v21)
        {
          v44 = OUTLINED_FUNCTION_20_5();
          sub_26814FB60(v44, v45);

          result = sub_26812D9E0(__dst, &qword_28024DB30, &unk_2683D4240);
          v24 = v33;
          v26 = v34;
          goto LABEL_40;
        }

        v70 = __dst[6];
        v71 = *(&__dst[5] + 1);
        v35 = v21;
        v36 = OUTLINED_FUNCTION_20_5();
        sub_26814FB60(v36, v37);
        v38 = [v35 appearanceContext];
        v39 = [v38 badge];

        if (v39)
        {
          v40 = v25;
          v41 = sub_26815E30C(v39, &selRef_emoji);
          v43 = v42;
          if (v42)
          {
            v25 = v41;

            v24 = v43;
LABEL_29:
            v49 = v43 == 0;
            goto LABEL_35;
          }

          v46 = [v39 emblem];
          if (v46)
          {
            v47 = v46;
            v25 = sub_2683CFA78();
            v24 = v48;

            goto LABEL_29;
          }
        }

        v40 = v25;
        v50 = [v35 badgeEmblem];
        if (v50)
        {
          v51 = v50;
          v25 = sub_2683CFA78();
          v24 = v52;
        }

        else
        {
          v25 = sub_2683CFA78();
          v24 = v53;
        }

        v49 = 1;
LABEL_35:
        LOBYTE(v77) = v49;
        v26 = v49;
        sub_268151B3C(v40, v71, v70);
        v54 = [v35 color];
        if (v54)
        {
          v55 = v54;
          [v54 red];
          v1 = v56;
          [v55 green];
          v2 = v57;
          [v55 blue];
          v3 = v58;
          sub_268158738([v55 colorRGBSpace], &v77);

          result = sub_26812D9E0(__dst, &qword_28024DB30, &unk_2683D4240);
          LOBYTE(v8) = v77;
        }

        else
        {
          if (qword_28024C880 != -1)
          {
            OUTLINED_FUNCTION_4_5();
            swift_once();
          }

          v2 = *(&xmmword_28024DB10 + 1);
          v1 = xmmword_28024DB10;
          v3 = qword_28024DB20;
          LOBYTE(v8) = byte_28024DB28;

          result = sub_26812D9E0(__dst, &qword_28024DB30, &unk_2683D4240);
        }

LABEL_40:
        v78 = v82;
        v79 = v83;
        v77 = v81;
        LODWORD(v76) = v80[0];
        *(&v76 + 3) = *(v80 + 3);
        v85 = v16;
        v60 = *(v16 + 16);
        v59 = *(v16 + 24);
        if (v60 >= v59 >> 1)
        {
          v65 = OUTLINED_FUNCTION_22_2(v59);
          result = sub_268390808(v65, v60 + 1, 1);
          v16 = v85;
        }

        *(v16 + 16) = v60 + 1;
        v61 = v16 + 104 * v60;
        v62 = v77;
        v63 = v79;
        *(v61 + 48) = v78;
        *(v61 + 64) = v63;
        *(v61 + 32) = v62;
        *(v61 + 80) = v1;
        *(v61 + 88) = v2;
        *(v61 + 96) = v3;
        *(v61 + 104) = v8;
        v64 = *(&v76 + 3);
        *(v61 + 105) = v76;
        *(v61 + 108) = v64;
        *(v61 + 112) = v25;
        *(v61 + 120) = v24;
        *(v61 + 128) = v26;
        if (v72 == v15)
        {

          return v16;
        }

        v5 = v73;
        v17 = v74 + 28;
        ++v15;
      }

      v19 = *(&__dst[6] + 1);
      OUTLINED_FUNCTION_20_5();
      sub_26815ED48();
      v20 = sub_2683D0358();
      if (v20)
      {
        v76 = v20;
        sub_268129504(0, &qword_28024DB38, 0x277D44660);
        OUTLINED_FUNCTION_33_3();
        v21 = v77;
        goto LABEL_22;
      }

LABEL_20:
      v21 = 0;
      goto LABEL_22;
    }

    if (v6 >= *(v5 + 16))
    {
      break;
    }

    v11 = *(v5 + v10);
    v10 += 112;
    ++v6;
    if (v11)
    {
      MEMORY[0x26D616770](v11);
      v12 = *((*&__dst[0] & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((*&__dst[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= v12 >> 1)
      {
        OUTLINED_FUNCTION_22_2(v12);
        sub_2683CFCD8();
      }

      result = sub_2683CFD08();
      v9 = *&__dst[0];
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_48:
  __break(1u);
  return result;
}

uint64_t sub_268155D68@<X0>(const void *a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DB50, &qword_2683D4250);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v17[-v6];
  v8 = sub_2683CB598();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v17[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  memcpy(__dst, a1, 0x61uLL);
  memcpy(a2, a1, 0x61uLL);
  if (__dst[1])
  {
    sub_26814FB60(__dst, v17);
    sub_2683CB538();
    if (__swift_getEnumTagSinglePayload(v7, 1, v8) != 1)
    {
      (*(v9 + 32))(v12, v7, v8);
      v15 = objc_opt_self();
      v16 = sub_2683CB558();
      v14 = [v15 objectIDWithUUID_];

      result = (*(v9 + 8))(v12, v8);
      goto LABEL_7;
    }

    result = sub_26812D9E0(v7, &qword_28024DB50, &qword_2683D4250);
  }

  else
  {
    result = sub_26814FB60(__dst, v17);
  }

  v14 = 0;
LABEL_7:
  a2[13] = v14;
  return result;
}

uint64_t sub_268155F88(uint64_t a1)
{
  v30[1] = *MEMORY[0x277D85DE8];
  v3 = *v1;
  v4 = sub_268129504(0, &qword_28024DB40, 0x277D44700);
  v5 = sub_2683CFC98();
  v30[0] = 0;
  v6 = [v3 fetchListsWithObjectIDs:v5 error:v30];

  v7 = v30[0];
  if (v6)
  {
    sub_268129504(0, &qword_28024DB38, 0x277D44660);
    sub_26815E368();
    v8 = sub_2683CF9C8();
    v9 = v7;
  }

  else
  {
    v10 = v30[0];
    v11 = sub_2683CB388();

    swift_willThrow();
    if (qword_28024C8F0 != -1)
    {
      swift_once();
    }

    v12 = sub_2683CF7E8();
    __swift_project_value_buffer(v12, qword_28027C988);
    v13 = v11;

    v14 = sub_2683CF7C8();
    v15 = sub_2683CFE78();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v30[0] = v17;
      *v16 = 136315650;
      v18 = MEMORY[0x26D6167A0](a1, v4);
      v20 = sub_2681610A0(v18, v19, v30);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2080;
      v21 = v11;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D3E0, &qword_2683D2360);
      v22 = sub_2683CFAD8();
      v24 = sub_2681610A0(v22, v23, v30);

      *(v16 + 14) = v24;
      *(v16 + 22) = 2080;
      swift_getErrorValue();
      v25 = sub_2683D0638();
      v27 = sub_2681610A0(v25, v26, v30);

      *(v16 + 24) = v27;
      _os_log_impl(&dword_2680EB000, v14, v15, "[ReminderKitExtensionProvider] Could not load REMList for ids %s with error: %s - %s", v16, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x26D617A40](v17, -1, -1);
      MEMORY[0x26D617A40](v16, -1, -1);
    }

    sub_268129504(0, &qword_28024DB38, 0x277D44660);
    sub_26815E368();
    v8 = sub_2683CF9D8();
  }

  v28 = *MEMORY[0x277D85DE8];
  return v8;
}

id sub_2681562D8(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DB50, &qword_2683D4250);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v16 - v5;
  v7 = sub_2683CB598();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    sub_2683CB538();
    if (__swift_getEnumTagSinglePayload(v6, 1, v7) != 1)
    {
      (*(v8 + 32))(v11, v6, v7);
      v13 = objc_opt_self();
      v14 = sub_2683CB558();
      v12 = [v13 objectIDWithUUID_];

      (*(v8 + 8))(v11, v7);
      return v12;
    }

    sub_26812D9E0(v6, &qword_28024DB50, &qword_2683D4250);
  }

  return 0;
}

void sub_268156498()
{
  OUTLINED_FUNCTION_30_0();
  v2 = v1;
  v4 = v3;
  v164 = type metadata accessor for Snippet.Reminder(0);
  v5 = OUTLINED_FUNCTION_3_1(v164);
  v165 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_19_3();
  v151[2] = v9 - v10;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v11);
  v154 = v151 - v12;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v13);
  v151[1] = v151 - v14;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DBC0, &unk_2683D4320);
  OUTLINED_FUNCTION_23(v155);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v17);
  v166 = (v151 - v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DBC8, &qword_2683E3D30);
  v20 = OUTLINED_FUNCTION_23(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_19_3();
  v159 = v23 - v24;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v25);
  v163 = v151 - v26;
  v168 = v0;
  v27 = sub_26836F9E0(sub_26815E65C, &v167, v4);
  v28 = sub_2682E35A0(v27);

  v29 = sub_268157538(v28);

  v31 = sub_268157068(v30);
  v156 = v0;
  sub_2681548E8(v31);
  OUTLINED_FUNCTION_39_2();

  v171[0] = MEMORY[0x277D84F90];
  v158 = v2;
  v162 = 0;
  if ((v0 & 0xC000000000000001) != 0)
  {
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = sub_2683D02D8() | 0x8000000000000000;
  }

  else
  {
    v36 = *(v0 + 32);
    OUTLINED_FUNCTION_14_6();
    v33 = ~v38;
    v32 = v0 + 64;
    v39 = -v38;
    if (v39 < 64)
    {
      v40 = ~(v37 << v39);
    }

    else
    {
      v40 = v37;
    }

    v34 = v40 & *(v0 + 64);
    v35 = v0;
  }

  v157 = v0;

  v41 = 0;
  v160 = v33;
  v161 = v29;
  v42 = (v33 + 64) >> 6;
  if ((v35 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v43 = v41;
    v44 = v41;
    if (!v34)
    {
      break;
    }

LABEL_12:
    OUTLINED_FUNCTION_6_5();
    v47 = v46 & v45;
    v49 = *(*(v35 + 56) + ((v44 << 9) | (8 * v48)));
    if (!v49)
    {
      goto LABEL_21;
    }

    while (1)
    {
      v52 = [v49 parentReminder];
      if (v52)
      {

        sub_2683D01F8();
        v53 = *(v171[0] + 16);
        sub_2683D0238();
        sub_2683D0248();
        sub_2683D0208();
      }

      else
      {
      }

      v41 = v44;
      v34 = v47;
      if ((v35 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_2683D0368())
      {
        v51 = v50;
        swift_unknownObjectRelease();
        v169 = v51;
        sub_268129504(0, &qword_28024DB60, 0x277D44750);
        OUTLINED_FUNCTION_33_3();
        v49 = v170[0];
        v44 = v41;
        v47 = v34;
        if (v170[0])
        {
          continue;
        }
      }

      goto LABEL_21;
    }
  }

  while (1)
  {
    v44 = v43 + 1;
    if (__OFADD__(v43, 1))
    {
      goto LABEL_82;
    }

    if (v44 >= v42)
    {
      break;
    }

    ++v43;
    if (*(v32 + 8 * v44))
    {
      goto LABEL_12;
    }
  }

LABEL_21:
  OUTLINED_FUNCTION_49_2();
  sub_2681281A4();
  v54 = v162;
  v55 = sub_268153124(v171[0]);
  MEMORY[0x28223BE20](v55);
  v56 = v161;
  v57 = v156;
  v151[-2] = v161;
  v151[-1] = v57;
  v58 = sub_26815CCC8(sub_26815E678, &v151[-4], v55);
  v160 = v54;

  v171[0] = MEMORY[0x277D84F90];
  v59 = *(v58 + 64);
  v60 = *(v58 + 32);
  OUTLINED_FUNCTION_16_6();
  v62 = v61 >> 6;

  v44 = 0;
  v63 = v164;
  while (v32)
  {
LABEL_27:
    v65 = __clz(__rbit64(v32));
    v32 &= v32 - 1;
    v66 = *(v56 + 16);
    v67 = *(*(v58 + 48) + ((v44 << 9) | (8 * v65)));
    if (v66 && (v68 = sub_2682E186C(), (v69 & 1) != 0))
    {
      v70 = v163;
      sub_26815E3F0(*(v56 + 56) + *(v165 + 72) * v68, v163);

      v71 = OUTLINED_FUNCTION_25_4();
      __swift_storeEnumTagSinglePayload(v71, v72, v73, v63);
      sub_26812D9E0(v70, &qword_28024DBC8, &qword_2683E3D30);
    }

    else
    {
      v74 = v163;
      OUTLINED_FUNCTION_4_0();
      __swift_storeEnumTagSinglePayload(v75, v76, v77, v63);
      sub_26812D9E0(v74, &qword_28024DBC8, &qword_2683E3D30);
      sub_2683D01F8();
      v78 = *(v171[0] + 16);
      sub_2683D0238();
      v56 = v161;
      sub_2683D0248();
      sub_2683D0208();
    }
  }

  while (1)
  {
    v64 = v44 + 1;
    if (__OFADD__(v44, 1))
    {
      __break(1u);
      goto LABEL_81;
    }

    if (v64 >= v62)
    {
      break;
    }

    v32 = *(v58 + 64 + 8 * v64);
    ++v44;
    if (v32)
    {
      v44 = v64;
      goto LABEL_27;
    }
  }

  sub_2682B4404(v171[0]);
  v80 = v79;
  v81 = v151;
  MEMORY[0x28223BE20](v158);
  v82 = v156;
  v151[-2] = v156;

  OUTLINED_FUNCTION_37_1();
  v44 = v160;
  v86 = sub_26836F9E0(v83, v84, v85);

  v87 = sub_2682E35A0(v86);

  v88 = sub_268157538(v87);

  v89 = sub_26815CE7C(v88, v80);

  v91 = sub_268157068(v90);
  sub_2681548E8(v91);
  OUTLINED_FUNCTION_39_2();

  v171[0] = v157;
  sub_26815D124(v82, sub_26815EC04, 0, v171);
  if (v44)
  {
    goto LABEL_83;
  }

  v92 = v171[0];
  v93 = sub_268157270(v89, v56);
  v95 = v93 + 64;
  v94 = *(v93 + 64);
  v96 = *(v93 + 32);
  OUTLINED_FUNCTION_16_6();
  v99 = v98 >> 6;
  v160 = v92;
  v161 = v92 & 0xC000000000000001;
  v100 = v92 & 0xFFFFFFFFFFFFFF8;
  if (v92 < 0)
  {
    v100 = v92;
  }

  v157 = v100;
  v163 = v97;

  v101 = 0;
  v152 = MEMORY[0x277D84F90];
  v102 = v155;
  v162 = v58;
  while (v81)
  {
    v44 = v101;
LABEL_40:
    v103 = __clz(__rbit64(v81)) | (v44 << 6);
    v104 = *(v163 + 56);
    v105 = *(*(v163 + 48) + 8 * v103);
    v106 = v166;
    v158 = *(v165 + 72);
    v107 = *(v102 + 48);
    sub_26815E3F0(v104 + v158 * v103, v166 + v107);
    *v106 = v105;
    if (v161)
    {
      v108 = v105;
      v109 = sub_2683D0358();

      if (v109)
      {
        v170[0] = v109;
        sub_268129504(0, &qword_28024DB60, 0x277D44750);
        OUTLINED_FUNCTION_33_3();
        v110 = v171[0];
        if (v171[0])
        {
          goto LABEL_47;
        }
      }
    }

    else
    {
      v111 = *(v160 + 16);
      v112 = v105;
      if (v111)
      {
        v113 = sub_2682E186C();
        if (v114)
        {
          v110 = *(*(v160 + 56) + 8 * v113);
          if (v110)
          {
LABEL_47:
            v115 = [v110 parentReminder];
            if (v115)
            {
              v153 = v115;
              v116 = [v153 objectID];
              v117 = v116;
              if (v161)
              {
                v118 = v116;
                v119 = sub_2683D0358();

                if (v119)
                {
                  v170[0] = v119;
                  sub_268129504(0, &qword_28024DB60, 0x277D44750);
                  OUTLINED_FUNCTION_33_3();
                  v120 = v171[0];
                  goto LABEL_56;
                }

LABEL_58:
                v126 = 0;
                v120 = v153;
LABEL_59:
              }

              else
              {
                v127 = v160;
                if (!*(v160 + 16))
                {
                  goto LABEL_58;
                }

                v128 = sub_2682E186C();
                if ((v129 & 1) == 0)
                {
                  goto LABEL_58;
                }

                v120 = *(*(v127 + 56) + 8 * v128);
LABEL_56:

                if (v120)
                {
                  v126 = 1;
                  v117 = v153;
                  goto LABEL_59;
                }

                v126 = 0;
                v120 = v153;
              }
            }

            else
            {
              v126 = 0;
            }

            v130 = [v110 parentReminder];
            if (v130 && (v130, v126))
            {
              v121 = v159;
              OUTLINED_FUNCTION_4_0();
              v131 = v164;
              __swift_storeEnumTagSinglePayload(v132, v133, v134, v164);

              v122 = v131;
            }

            else
            {
              v135 = v110;
              sub_2681539A8(v166 + v107, v110, v154);

              v136 = [v135 objectID];
              v137 = v162;
              if (*(v162 + 16))
              {
                v138 = sub_2682E186C();
                v122 = v164;
                if (v139)
                {
                  v140 = *(*(v137 + 56) + 8 * v138);
                }

                else
                {
                  v140 = MEMORY[0x277D84F90];
                }
              }

              else
              {
                v140 = MEMORY[0x277D84F90];
                v122 = v164;
              }

              v141 = *(v122 + 68);
              v142 = v154;
              v143 = *(v154 + v141);

              *(v142 + v141) = v140;
              sub_2681551C8([v135 list], v170);

              v144 = *(v122 + 32);
              memcpy(v171, (v142 + v144), 0x61uLL);
              sub_26812D9E0(v171, &qword_28024D5C0, &unk_2683D2C80);
              memcpy((v142 + v144), v170, 0x61uLL);
              v121 = v159;
              sub_26815E3F0(v142, v159);
              __swift_storeEnumTagSinglePayload(v121, 0, 1, v122);
              sub_26815E454(v142);
            }

            v102 = v155;
            goto LABEL_71;
          }
        }
      }
    }

    v121 = v159;
    OUTLINED_FUNCTION_4_0();
    v122 = v164;
    __swift_storeEnumTagSinglePayload(v123, v124, v125, v164);
LABEL_71:
    v81 &= v81 - 1;
    sub_26812D9E0(v166, &qword_28024DBC0, &unk_2683D4320);
    if (__swift_getEnumTagSinglePayload(v121, 1, v122) == 1)
    {
      sub_26812D9E0(v121, &qword_28024DBC8, &qword_2683E3D30);
      v101 = v44;
    }

    else
    {
      sub_26815E568();
      sub_26815E568();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v148 = *(v152 + 16);
        sub_2682E4B38();
        v152 = v149;
      }

      v146 = *(v152 + 16);
      v145 = *(v152 + 24);
      if (v146 >= v145 >> 1)
      {
        OUTLINED_FUNCTION_22_2(v145);
        sub_2682E4B38();
        v152 = v150;
      }

      *(v152 + 16) = v146 + 1;
      v147 = *(v165 + 80);
      OUTLINED_FUNCTION_11_7();
      OUTLINED_FUNCTION_2_5();
      sub_26815E568();
      v101 = v44;
    }
  }

  while (1)
  {
    v44 = v101 + 1;
    if (__OFADD__(v101, 1))
    {
      break;
    }

    if (v44 >= v99)
    {

      OUTLINED_FUNCTION_29_0();
      return;
    }

    v81 = *(v95 + 8 * v44);
    ++v101;
    if (v81)
    {
      goto LABEL_40;
    }
  }

LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:

  __break(1u);
}

void *sub_268157068(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    goto LABEL_4;
  }

  v2 = sub_2682E5984(*(a1 + 16), 0);
  sub_2682CAEE4();
  v4 = v3;
  sub_2681281A4();
  if (v4 != v1)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v2;
}

id sub_2681570F8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7[3] = a3;
  v5 = *a1;
  v7[2] = a2;
  result = sub_26836FCA8(sub_26815ECFC, v7, v5);
  *a4 = result;
  return result;
}

uint64_t sub_26815714C@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DBC8, &qword_2683E3D30);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v15[-v10];
  v12 = *a1;
  v13 = [v12 objectID];
  sub_2682DFAC4(a2, v11);

  v16 = a3;
  v17 = v12;
  sub_2683B0060(sub_26815ED18, a4);
  return sub_26812D9E0(v11, &qword_28024DBC8, &qword_2683E3D30);
}

uint64_t sub_268157270(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = a2;
  sub_26815D5B8(a1, sub_26815D0B4, 0, isUniquelyReferenced_nonNull_native, &v8);
  v6 = v8;
  if (v2)
  {
  }

  return v6;
}

uint64_t sub_2681572F4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DB50, &qword_2683D4250);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v24 - v6;
  v8 = sub_2683CB598();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = (a1 + *(type metadata accessor for Snippet.Reminder(0) + 20));
  if (!v13[1])
  {
    goto LABEL_6;
  }

  v14 = *v13;
  sub_2683CB538();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    sub_26812D9E0(v7, &qword_28024DB50, &qword_2683D4250);
LABEL_6:
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DC18, &unk_2683F5380);
    v20 = a2;
    v21 = 1;
    return __swift_storeEnumTagSinglePayload(v20, v21, 1, v22);
  }

  (*(v9 + 32))(v12, v7, v8);
  v15 = objc_opt_self();
  v16 = sub_2683CB558();
  v17 = [v15 objectIDWithUUID_];

  (*(v9 + 8))(v12, v8);
  if (!v17)
  {
    goto LABEL_6;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DC18, &unk_2683F5380);
  v19 = *(v18 + 48);
  *a2 = v17;
  sub_26815E3F0(a1, a2 + v19);
  v20 = a2;
  v21 = 0;
  v22 = v18;
  return __swift_storeEnumTagSinglePayload(v20, v21, 1, v22);
}

uint64_t sub_268157538(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DC00, &unk_2683E3D90);
    v3 = sub_2683D03F8();
  }

  else
  {
    v3 = MEMORY[0x277D84F98];
  }

  v6 = v3;
  sub_26815D21C(a1, 1, &v6);
  v4 = v6;
  if (v1)
  {
  }

  return v4;
}

void sub_2681575D0()
{
  OUTLINED_FUNCTION_30_0();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DBB8, &unk_2683D4310);
  OUTLINED_FUNCTION_23(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v7);
  v108 = v101 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DB08, qword_2683D5760);
  OUTLINED_FUNCTION_23(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_18_4();
  v14 = *v3;
  v13 = *(v3 + 8);
  v15 = *(v3 + 24);
  v16 = *(v3 + 40);
  v17 = *(v3 + 80);
  v18 = *(v3 + 88);
  v19 = *(v3 + 96);

  v20 = sub_2681562D8(v14, v13);
  if (v20)
  {
    v21 = v20;

    v22 = sub_2683CF5B8();
    v23 = OUTLINED_FUNCTION_0_3(v22);
    v109 = v24;
    v26 = *(v25 + 64);
    MEMORY[0x28223BE20](v23);
    OUTLINED_FUNCTION_14_3();
    v29 = v28 - v27;
    v30 = *v0;
    v31 = sub_2683CF678();
    v107 = v101;
    v32 = OUTLINED_FUNCTION_0_3(v31);
    v34 = v33;
    v36 = *(v35 + 64);
    MEMORY[0x28223BE20](v32);
    OUTLINED_FUNCTION_14_3();
    OUTLINED_FUNCTION_45_1();
    *v0 = v21;
    (*(v34 + 104))(v0, *MEMORY[0x277D45BC8], v31);
    sub_2683CB528();
    OUTLINED_FUNCTION_4_0();
    __swift_storeEnumTagSinglePayload(v37, v38, v39, v40);
    sub_2683CB7A8();
    v41 = v108;
    OUTLINED_FUNCTION_4_0();
    __swift_storeEnumTagSinglePayload(v42, v43, v44, v45);
    v46 = v21;
    sub_2683CF638();
    sub_26812D9E0(v41, &qword_28024DBB8, &unk_2683D4310);
    sub_26812D9E0(v1, &qword_28024DB08, qword_2683D5760);
    (*(v34 + 8))(v0, v31);
    v73 = sub_2683CF5A8();
    v108 = sub_2683CF688();
    v74 = OUTLINED_FUNCTION_0_3(v108);
    v76 = *(v75 + 64);
    MEMORY[0x28223BE20](v74);
    OUTLINED_FUNCTION_14_3();
    v107 = (v78 - v77);
    v80 = *(v73 + 16);
    v81 = v29;
    if (v80)
    {
      v101[1] = v101;
      v102 = v46;
      v82 = *(v79 + 16);
      v83 = *(v79 + 80);
      OUTLINED_FUNCTION_11_7();
      v101[0] = v73;
      v85 = (v73 + v84);
      v103 = *(v86 + 56);
      v105 = (v86 - 8);
      v106 = v87;
      v88 = MEMORY[0x277D84F90];
      v104 = v29;
      while (1)
      {
        v81 = v22;
        v90 = v107;
        v89 = v108;
        v106(v107, v85, v108);
        v22 = sub_2683BE52C();
        (*v105)(v90, v89);
        v91 = *(v22 + 16);
        v92 = *(v88 + 16);
        if (__OFADD__(v92, v91))
        {
          break;
        }

        if (!swift_isUniquelyReferenced_nonNull_native() || v92 + v91 > *(v88 + 24) >> 1)
        {
          sub_2682E4C00();
          v88 = v93;
        }

        if (*(v22 + 16))
        {
          v92 = *(v88 + 16);
          v94 = (*(v88 + 24) >> 1) - v92;
          v95 = *(_s14descr2878F8F29V11ListContentOMa() - 8);
          if (v94 < v91)
          {
            goto LABEL_30;
          }

          v96 = (*(v95 + 80) + 32) & ~*(v95 + 80);
          v97 = *(v95 + 72);
          swift_arrayInitWithCopy();

          OUTLINED_FUNCTION_29_3();
          if (v91)
          {
            v98 = *(v88 + 16);
            v99 = __OFADD__(v98, v91);
            v100 = v98 + v91;
            if (v99)
            {
              goto LABEL_31;
            }

            *(v88 + 16) = v100;
          }
        }

        else
        {

          OUTLINED_FUNCTION_29_3();
          if (v91)
          {
            goto LABEL_29;
          }
        }

        v85 += v103;
        if (!--v80)
        {

          goto LABEL_26;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
      OUTLINED_FUNCTION_0_11();
      v47 = sub_2683CF7E8();
      __swift_project_value_buffer(v47, qword_28027C988);
      v48 = OUTLINED_FUNCTION_38_2();
      v49 = sub_2683CF7C8();
      v50 = sub_2683CFE78();

      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v110[0] = swift_slowAlloc();
        *v51 = 136315394;
        v111 = v80;
        v52 = v80;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D3E0, &qword_2683D2360);
        v53 = sub_2683CFAD8();
        v55 = v85;
        v56 = sub_2681610A0(v53, v54, v110);

        *(v51 + 4) = v56;
        *(v51 + 12) = 2080;
        swift_getErrorValue();
        v57 = sub_2683D0638();
        v59 = sub_2681610A0(v57, v58, v110);

        *(v51 + 14) = v59;
        _os_log_impl(&dword_2680EB000, v49, v50, "[ReminderKitExtensionProvider] Unable to load list contents with error: %s - %s", v51, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_38();
        OUTLINED_FUNCTION_38();
      }

      else
      {
      }
    }

    else
    {

      v92 = v109;
LABEL_26:
      (*(v92 + 8))(v81, v22);
    }
  }

  else
  {
    if (qword_28024C8F0 != -1)
    {
      OUTLINED_FUNCTION_0_11();
    }

    v60 = sub_2683CF7E8();
    __swift_project_value_buffer(v60, qword_28027C988);
    OUTLINED_FUNCTION_38_2();

    v61 = OUTLINED_FUNCTION_32_3();
    sub_268151B1C(v61, v62, v19);
    v63 = sub_2683CF7C8();
    v64 = sub_2683CFE78();

    v65 = OUTLINED_FUNCTION_32_3();
    sub_268151B3C(v65, v66, v19);
    if (os_log_type_enabled(v63, v64))
    {
      v67 = v14;
      v68 = OUTLINED_FUNCTION_49();
      v69 = OUTLINED_FUNCTION_53();
      v110[1] = v13;
      v111 = v69;
      *v68 = 136315138;
      v110[0] = v67;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DB98, &unk_2683D5280);
      v70 = sub_2683CFAD8();
      v72 = sub_2681610A0(v70, v71, &v111);

      *(v68 + 4) = v72;
      _os_log_impl(&dword_2680EB000, v63, v64, "[ReminderKitExtensionProvider] Could not make list id from %s. Not able to fetch list contents for sections and ordering.", v68, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v69);
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_38();
    }

    else
    {
    }
  }

  OUTLINED_FUNCTION_29_0();
}

void sub_268157E08()
{
  OUTLINED_FUNCTION_30_0();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DBB8, &unk_2683D4310);
  OUTLINED_FUNCTION_23(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v7);
  v9 = v88 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DB08, qword_2683D5760);
  OUTLINED_FUNCTION_23(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_18_4();
  v14 = sub_2683CF5B8();
  v15 = OUTLINED_FUNCTION_0_3(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_14_3();
  v22 = v21 - v20;
  v23 = *v0;
  v24 = sub_2683CF678();
  v25 = OUTLINED_FUNCTION_0_3(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_14_3();
  v32 = v31 - v30;
  sub_2683BF510(v3, v31 - v30);
  (*(v27 + 104))(v32, *MEMORY[0x277D45BC0], v24);
  sub_2683CB528();
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v36);
  sub_2683CB7A8();
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v37, v38, v39, v40);
  sub_2683CF638();
  sub_26812D9E0(v9, &qword_28024DBB8, &unk_2683D4310);
  sub_26812D9E0(v1, &qword_28024DB08, qword_2683D5760);
  v54 = *(v27 + 8);
  v55 = OUTLINED_FUNCTION_49_2();
  v56(v55);
  v57 = sub_2683CF5A8();
  v94 = sub_2683CF688();
  v58 = OUTLINED_FUNCTION_0_3(v94);
  v60 = *(v59 + 64);
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_14_3();
  v64 = v62 - v61;
  v65 = *(v57 + 16);
  if (v65)
  {
    v88[2] = v88;
    v89 = v22;
    v66 = *(v63 + 16);
    v67 = *(v63 + 80);
    OUTLINED_FUNCTION_11_7();
    v88[1] = v57;
    v69 = v57 + v68;
    v71 = *(v70 + 56);
    v90 = v14;
    v91 = v71;
    v92 = (v70 - 8);
    v93 = v72;
    v73 = MEMORY[0x277D84F90];
    while (1)
    {
      v74 = v17;
      v75 = OUTLINED_FUNCTION_32_3();
      v76 = v94;
      v93(v75);
      v77 = sub_2683BE52C();
      (*v92)(v64, v76);
      v78 = *(v77 + 16);
      v79 = *(v73 + 16);
      if (__OFADD__(v79, v78))
      {
        break;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v79 + v78 > *(v73 + 24) >> 1)
      {
        sub_2682E4C00();
        v73 = v80;
      }

      if (*(v77 + 16))
      {
        v81 = (*(v73 + 24) >> 1) - *(v73 + 16);
        v82 = *(_s14descr2878F8F29V11ListContentOMa() - 8);
        if (v81 < v78)
        {
          goto LABEL_24;
        }

        v83 = (*(v82 + 80) + 32) & ~*(v82 + 80);
        v84 = *(v82 + 72);
        swift_arrayInitWithCopy();

        v17 = v74;
        if (v78)
        {
          v85 = *(v73 + 16);
          v86 = __OFADD__(v85, v78);
          v87 = v85 + v78;
          if (v86)
          {
            goto LABEL_25;
          }

          *(v73 + 16) = v87;
        }
      }

      else
      {

        v17 = v74;
        if (v78)
        {
          goto LABEL_23;
        }
      }

      v69 += v91;
      if (!--v65)
      {

        v22 = v89;
        v14 = v90;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    OUTLINED_FUNCTION_0_11();
    v41 = sub_2683CF7E8();
    __swift_project_value_buffer(v41, qword_28027C988);
    v42 = OUTLINED_FUNCTION_38_2();
    v43 = sub_2683CF7C8();
    v44 = sub_2683CFE78();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v95 = v65;
      v96 = v46;
      *v45 = 136315394;
      v47 = v65;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D3E0, &qword_2683D2360);
      v48 = sub_2683CFAD8();
      v50 = OUTLINED_FUNCTION_34_3(v48, v49);

      *(v45 + 4) = v50;
      *(v45 + 12) = 2080;
      swift_getErrorValue();
      v51 = sub_2683D0638();
      v53 = OUTLINED_FUNCTION_34_3(v51, v52);

      *(v45 + 14) = v53;
      _os_log_impl(&dword_2680EB000, v43, v44, "[ReminderKitExtensionProvider] Unable to load list contents with error: %s - %s", v45, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_38();
    }

    else
    {
    }
  }

  else
  {

LABEL_20:
    (*(v17 + 8))(v22, v14);
  }

  OUTLINED_FUNCTION_29_0();
}

void sub_268158448(void *a1)
{
  if (!a1)
  {
    return;
  }

  v2 = a1;
  v3 = [v2 appearanceContext];
  v4 = [v3 badge];

  if (v4)
  {
    v5 = sub_26815E30C(v4, &selRef_emoji);
    v7 = v6;
    if (v6)
    {
      v8 = v5;

      v9 = v7;
LABEL_7:
      v13 = v7 == 0;
      goto LABEL_13;
    }

    v10 = [v4 emblem];
    if (v10)
    {
      v11 = v10;
      v8 = sub_2683CFA78();
      v9 = v12;

      goto LABEL_7;
    }
  }

  v14 = [v2 badgeEmblem];
  if (v14)
  {
    v15 = v14;
    v8 = sub_2683CFA78();
    v9 = v16;
  }

  else
  {
    v17 = *MEMORY[0x277D44960];
    v8 = sub_2683CFA78();
    v9 = v18;
  }

  v13 = 1;
LABEL_13:
  v31[1] = v13;
  v19 = v13;
  sub_268151B3C(*(v1 + 80), *(v1 + 88), *(v1 + 96));
  *(v1 + 80) = v8;
  *(v1 + 88) = v9;
  *(v1 + 96) = v19;
  v20 = [v2 color];
  if (v20)
  {
    v21 = v20;
    [v20 red];
    v29 = v22;
    [v21 green];
    v28 = v23;
    [v21 blue];
    v25 = v24;
    sub_268158738([v21 colorRGBSpace], v31);

    *&v27 = v29;
    v26 = v31[0];
    *(&v27 + 1) = v28;
  }

  else
  {
    if (qword_28024C880 != -1)
    {
      OUTLINED_FUNCTION_4_5();
      swift_once();
    }

    v30 = xmmword_28024DB10;
    v25 = qword_28024DB20;
    v26 = byte_28024DB28;

    v27 = v30;
  }

  *(v1 + 48) = v27;
  *(v1 + 64) = v25;
  *(v1 + 72) = v26;
}

void sub_268158680(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    [a1 red];
    v5 = v4;
    [a1 green];
    v7 = v6;
    [a1 blue];
    v9 = v8;
    sub_268158738([a1 colorRGBSpace], &v11);

    v10 = v11;
  }

  else
  {
    v10 = 3;
    v5 = 0;
    v7 = 0;
    v9 = 0;
  }

  *a2 = v5;
  *(a2 + 8) = v7;
  *(a2 + 16) = v9;
  *(a2 + 24) = v10;
}

void sub_268158738(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  if (a1 >= 3)
  {
    if (qword_28024C8E0 != -1)
    {
      swift_once();
    }

    v4 = sub_2683CF7E8();
    __swift_project_value_buffer(v4, qword_28027C958);
    v5 = sub_2683CF7C8();
    v6 = sub_2683CFE88();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = OUTLINED_FUNCTION_49();
      v8 = OUTLINED_FUNCTION_53();
      v12 = v8;
      *v7 = 136315138;
      type metadata accessor for REMColorRGBSpace(0);
      v9 = sub_2683CFAD8();
      v11 = sub_2681610A0(v9, v10, &v12);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_2680EB000, v5, v6, "Got unknown value when converting REMColorRGBSpace to Snippet color space: %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_38();
    }

    LOBYTE(v3) = 2;
  }

  else
  {
    v3 = 0x20001u >> (8 * a1);
  }

  *a2 = v3;
}

void sub_268158898()
{
  sub_268129504(0, &qword_28024DB90, 0x277D445D0);
  v0 = *MEMORY[0x277D44B60];
  sub_2683CFA78();
  v1 = sub_2681588FC();

  sub_268158680(v1, &xmmword_28024DB10);
}

id sub_2681588FC()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_2683CFA68();

  v2 = [v0 initWithHexString_];

  return v2;
}

double static Snippet.Color.default.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_28024C880 != -1)
  {
    OUTLINED_FUNCTION_4_5();
    swift_once();
  }

  v2 = qword_28024DB20;
  v3 = byte_28024DB28;
  result = *&xmmword_28024DB10;
  *a1 = xmmword_28024DB10;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  return result;
}

uint64_t sub_2681589F4(uint64_t a1)
{
  v2 = type metadata accessor for Snippet.Reminder.AppLink(0);
  v3 = OUTLINED_FUNCTION_1(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_14_3();
  v8 = v7 - v6;
  v9 = sub_2683CB438();
  v10 = OUTLINED_FUNCTION_0_3(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_14_3();
  v17 = v16 - v15;
  if (__swift_getEnumTagSinglePayload(a1, 1, v9) == 1)
  {
    sub_26812D9E0(a1, &qword_28024D258, &unk_2683D1F60);
    OUTLINED_FUNCTION_4_0();

    return __swift_storeEnumTagSinglePayload(v18, v19, v20, v2);
  }

  else
  {
    v22 = *(v12 + 32);
    v22(v17, a1, v9);
    v22(v8, v17, v9);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_8_6();
    sub_26815E568();
    v23 = OUTLINED_FUNCTION_25_4();
    return __swift_storeEnumTagSinglePayload(v23, v24, v25, v2);
  }
}

uint64_t sub_268158B9C(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Snippet.Reminder.AppLink(0);
  v5 = OUTLINED_FUNCTION_1(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_14_3();
  v10 = (v9 - v8);
  if (a2 >> 60 == 15)
  {
    OUTLINED_FUNCTION_4_0();

    return __swift_storeEnumTagSinglePayload(v11, v12, v13, v4);
  }

  else
  {
    *v10 = a1;
    v10[1] = a2;
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_8_6();
    sub_26815E568();
    v15 = OUTLINED_FUNCTION_25_4();
    return __swift_storeEnumTagSinglePayload(v15, v16, v17, v4);
  }
}

uint64_t sub_268158C84(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_2683D4200;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

BOOL sub_268158CE8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_2683D0698();
  sub_2683CFB48();
  sub_2683D06D8();
  v9 = *(v7 + 32);
  OUTLINED_FUNCTION_14_6();
  v12 = ~v11;
  while (1)
  {
    v13 = v10 & v12;
    v14 = (1 << (v10 & v12)) & *(v7 + 56 + (((v10 & v12) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v14)
    {
      break;
    }

    v15 = (*(v7 + 48) + 16 * v13);
    v16 = *v15 == a2 && v15[1] == a3;
    if (v16 || (sub_2683D0598() & 1) != 0)
    {

      v17 = (*(v7 + 48) + 16 * v13);
      v18 = v17[1];
      *a1 = *v17;
      a1[1] = v18;

      return v14 == 0;
    }

    v10 = v13 + 1;
  }

  v19 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v3;

  sub_26815AA48(a2, a3, v13, isUniquelyReferenced_nonNull_native);
  *v3 = v22;
  *a1 = a2;
  a1[1] = a3;
  return v14 == 0;
}

BOOL sub_268158E54(char *a1, char *a2)
{
  v25 = a1;
  v4 = sub_2683CB438();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v2;
  v9 = *v2;
  v10 = *(*v2 + 40);
  sub_26815E520(&qword_28024D760, MEMORY[0x277CC9260]);
  v30 = a2;
  v11 = sub_2683CF9F8();
  v27 = v9;
  v28 = v9 + 56;
  v12 = ~(-1 << *(v9 + 32));
  v29 = v5 + 16;
  v26 = v5 + 8;
  while (1)
  {
    v13 = v11 & v12;
    v14 = (1 << (v11 & v12)) & *(v28 + (((v11 & v12) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v14)
    {
      v19 = v24;
      v20 = *v24;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = v30;
      (*(v5 + 16))(v8, v30, v4);
      v31 = *v19;
      sub_26815ABB0(v8, v13, isUniquelyReferenced_nonNull_native);
      *v19 = v31;
      (*(v5 + 32))(v25, v22, v4);
      return v14 == 0;
    }

    v15 = *(v5 + 72) * v13;
    v16 = *(v5 + 16);
    v16(v8, *(v27 + 48) + v15, v4);
    sub_26815E520(&qword_28024DB70, MEMORY[0x277CC9260]);
    v17 = sub_2683CFA58();
    v18 = *(v5 + 8);
    v18(v8, v4);
    if (v17)
    {
      break;
    }

    v11 = v13 + 1;
  }

  v18(v30, v4);
  v16(v25, *(v27 + 48) + v15, v4);
  return v14 == 0;
}

uint64_t sub_268159140(void *a1, void *a2, unint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v11 = v6;
  v14 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v14 < 0)
    {
      v15 = *v6;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = a2;

    v17 = sub_2683D00B8();

    if (v17)
    {

      sub_268129504(0, a3, a4);
      OUTLINED_FUNCTION_33_3();
      result = 0;
      *a1 = v37;
    }

    else
    {
      result = sub_2683D00A8();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v27 = sub_2681598A8(v15, result + 1, a5, a6, a3, a4);
        if (*(v27 + 24) <= *(v27 + 16))
        {
          sub_26815A038();
        }

        v28 = v16;
        sub_26815A9CC();

        *v11 = v27;
        *a1 = v28;
        return 1;
      }
    }
  }

  else
  {
    sub_268129504(0, a3, a4);
    v19 = *(v14 + 40);
    sub_2683CFF58();
    v20 = *(v14 + 32);
    OUTLINED_FUNCTION_14_6();
    v23 = ~v22;
    while (1)
    {
      v24 = v21 & v23;
      if (((*(v14 + 56 + (((v21 & v23) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v21 & v23)) & 1) == 0)
      {
        v29 = *v11;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v38 = *v11;
        v31 = a2;
        sub_26815AE60(v31, v24, isUniquelyReferenced_nonNull_native, a5, a6);
        *v11 = v38;
        *a1 = v31;
        return 1;
      }

      v25 = *(*(v14 + 48) + 8 * v24);
      v26 = sub_2683CFF68();

      if (v26)
      {
        break;
      }

      v21 = v24 + 1;
    }

    v32 = *(*(v14 + 48) + 8 * v24);
    *a1 = v32;
    v33 = v32;
    return 0;
  }

  return result;
}

uint64_t sub_268159390(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *v5;
  v11 = *(*v5 + 40);
  sub_2683D0698();
  sub_2683CFB48();
  OUTLINED_FUNCTION_37_1();
  sub_2683CFB48();
  sub_2683D06D8();
  v12 = v10 + 56;
  v13 = *(v10 + 32);
  OUTLINED_FUNCTION_14_6();
  v16 = v15 & ~v14;
  if ((*(v10 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v17 = ~v14;
    v31 = v10;
    v18 = *(v10 + 48);
    while (1)
    {
      v19 = (v18 + 32 * v16);
      v20 = v19[2];
      v21 = v19[3];
      v22 = *v19 == a2 && v19[1] == a3;
      if (v22 || (sub_2683D0598() & 1) != 0)
      {
        v23 = v20 == a4 && v21 == a5;
        if (v23 || (sub_2683D0598() & 1) != 0)
        {
          break;
        }
      }

      v16 = (v16 + 1) & v17;
      if (((*(v12 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    v27 = (*(v31 + 48) + 32 * v16);
    v28 = v27[1];
    v29 = v27[2];
    v30 = v27[3];
    *a1 = *v27;
    a1[1] = v28;
    a1[2] = v29;
    a1[3] = v30;

    return 0;
  }

  else
  {
LABEL_14:
    v24 = *v32;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = *v32;

    sub_26815AFCC(a2, a3, a4, a5, v16, isUniquelyReferenced_nonNull_native);
    *v32 = v34;
    *a1 = a2;
    a1[1] = a3;
    a1[2] = a4;
    a1[3] = a5;
    return 1;
  }
}

void sub_26815955C()
{
  OUTLINED_FUNCTION_30_0();
  v2 = v1;
  v32 = v3;
  v4 = sub_2683CB598();
  v5 = OUTLINED_FUNCTION_0_3(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_14_3();
  v12 = v11 - v10;
  v31 = v0;
  v13 = *v0;
  v14 = *(*v0 + 40);
  OUTLINED_FUNCTION_9_5();
  sub_26815E520(v15, v16);
  sub_2683CF9F8();
  v33 = v13;
  v34 = v13 + 56;
  v17 = *(v13 + 32);
  OUTLINED_FUNCTION_14_6();
  v20 = ~v19;
  while (1)
  {
    v21 = v18 & v20;
    if (((1 << (v18 & v20)) & *(v34 + (((v18 & v20) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
    {
      v27 = *v31;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      (*(v7 + 16))(v12, v2, v4);
      v35 = *v31;
      v29 = OUTLINED_FUNCTION_32_3();
      sub_26815B194(v29, v30, isUniquelyReferenced_nonNull_native);
      *v31 = v35;
      (*(v7 + 32))(v32, v2, v4);
      goto LABEL_7;
    }

    v22 = *(v7 + 72) * v21;
    v23 = *(v7 + 16);
    v23(v12, *(v33 + 48) + v22, v4);
    OUTLINED_FUNCTION_9_5();
    sub_26815E520(&qword_28024DBA8, v24);
    v25 = sub_2683CFA58();
    v26 = *(v7 + 8);
    v26(v12, v4);
    if (v25)
    {
      break;
    }

    v18 = v21 + 1;
  }

  v26(v2, v4);
  v23(v32, *(v33 + 48) + v22, v4);
LABEL_7:
  OUTLINED_FUNCTION_29_0();
}

BOOL sub_2681597D8(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = *(v6 + 40);
  v8 = sub_2683D0688();
  v9 = ~(-1 << *(v6 + 32));
  while (1)
  {
    v10 = v8 & v9;
    v11 = (1 << (v8 & v9)) & *(v6 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v11)
    {
      break;
    }

    if (*(*(v6 + 48) + 8 * v10) == a2)
    {
      goto LABEL_6;
    }

    v8 = v10 + 1;
  }

  v12 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v3;
  sub_26815B444(a2, v10, isUniquelyReferenced_nonNull_native);
  *v3 = v15;
LABEL_6:
  result = v11 == 0;
  *a1 = a2;
  return result;
}

uint64_t sub_2681598A8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5, uint64_t *a6)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v8 = sub_2683D0138();
    v21 = v8;
    sub_2683D0098();
    while (1)
    {
      if (!sub_2683D00C8())
      {

        return v8;
      }

      sub_268129504(0, a5, a6);
      swift_dynamicCast();
      if (*(v8 + 24) <= *(v8 + 16))
      {
        OUTLINED_FUNCTION_37_1();
        sub_26815A038();
      }

      v8 = v21;
      v9 = *(v21 + 40);
      result = sub_2683CFF58();
      v11 = v21 + 56;
      v12 = -1 << *(v21 + 32);
      v13 = result & ~v12;
      v14 = v13 >> 6;
      if (((-1 << v13) & ~*(v21 + 56 + 8 * (v13 >> 6))) == 0)
      {
        break;
      }

      v15 = __clz(__rbit64((-1 << v13) & ~*(v21 + 56 + 8 * (v13 >> 6)))) | v13 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v11 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v21 + 48) + 8 * v15) = v20;
      ++*(v21 + 16);
    }

    v16 = 0;
    v17 = (63 - v12) >> 6;
    while (++v14 != v17 || (v16 & 1) == 0)
    {
      v18 = v14 == v17;
      if (v14 == v17)
      {
        v14 = 0;
      }

      v16 |= v18;
      v19 = *(v11 + 8 * v14);
      if (v19 != -1)
      {
        v15 = __clz(__rbit64(~v19)) + (v14 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_268159A84(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DC20, qword_2683D4378);
  result = sub_2683D0128();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v31 = v2;
  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      sub_268158C84(0, (v30 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = (*(v3 + 48) + 16 * (v14 | (v7 << 6)));
    v18 = *v17;
    v19 = v17[1];
    v20 = *(v6 + 40);
    sub_2683D0698();
    sub_2683CFB48();
    result = sub_2683D06D8();
    v21 = -1 << *(v6 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v6 + 48) + 16 * v24);
    *v29 = v18;
    v29[1] = v19;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v25 = 0;
  v26 = (63 - v21) >> 6;
  while (++v23 != v26 || (v25 & 1) == 0)
  {
    v27 = v23 == v26;
    if (v23 == v26)
    {
      v23 = 0;
    }

    v25 |= v27;
    v28 = *(v13 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_268159CE0(uint64_t a1)
{
  v2 = v1;
  v41 = sub_2683CB438();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DB78, &unk_2683D4268);
  result = sub_2683D0128();
  v10 = result;
  if (!*(v7 + 16))
  {
LABEL_29:

    *v2 = v10;
    return result;
  }

  v35 = v2;
  v36 = v7;
  v11 = 0;
  v12 = (v7 + 56);
  v13 = 1 << *(v7 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(v7 + 56);
  v16 = (v13 + 63) >> 6;
  v39 = v4 + 4;
  v17 = result + 56;
  if (!v15)
  {
LABEL_9:
    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v11 >= v16)
      {
        break;
      }

      v20 = v12[v11];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v15 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      sub_268158C84(0, (v33 + 63) >> 6, v12);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v18 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_14:
    v21 = *(v7 + 48) + v4[9] * (v18 | (v11 << 6));
    v22 = v4[4];
    v37 = v4[9];
    v38 = v22;
    v22(v40, v21, v41);
    v23 = v10;
    v24 = *(v10 + 40);
    sub_26815E520(&qword_28024D760, MEMORY[0x277CC9260]);
    result = sub_2683CF9F8();
    v10 = v23;
    v25 = -1 << *(v23 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v17 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v17 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v17 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    result = v38(*(v23 + 48) + v28 * v37, v40, v41);
    ++*(v23 + 16);
    v7 = v36;
    if (!v15)
    {
      goto LABEL_9;
    }
  }

  v29 = 0;
  v30 = (63 - v25) >> 6;
  while (++v27 != v30 || (v29 & 1) == 0)
  {
    v31 = v27 == v30;
    if (v27 == v30)
    {
      v27 = 0;
    }

    v29 |= v31;
    v32 = *(v17 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

void sub_26815A038()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_21_3(v2, v3, v4);
  v5 = sub_2683D0128();
  v6 = v5;
  if (!*(v1 + 16))
  {
LABEL_27:

    *v0 = v6;
    OUTLINED_FUNCTION_29_0();
    return;
  }

  v7 = 0;
  v8 = (v1 + 56);
  v9 = 1 << *(v1 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v1 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = v5 + 56;
  if (!v11)
  {
LABEL_7:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v7 >= v12)
      {
        break;
      }

      ++v15;
      if (v8[v7])
      {
        OUTLINED_FUNCTION_6_5();
        v11 = v17 & v16;
        goto LABEL_12;
      }
    }

    v28 = *(v1 + 32);
    OUTLINED_FUNCTION_27_1();
    if (v29 >= 64)
    {
      sub_268158C84(0, (v29 + 63) >> 6, v1 + 56);
    }

    else
    {
      OUTLINED_FUNCTION_14_6();
      *v8 = v30;
    }

    *(v1 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    OUTLINED_FUNCTION_46_2();
LABEL_12:
    v18 = *(*(v1 + 48) + 8 * (v14 | (v7 << 6)));
    v19 = *(v6 + 40);
    v20 = sub_2683CFF58() & ~(-1 << *(v6 + 32));
    if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    OUTLINED_FUNCTION_44_2();
LABEL_21:
    OUTLINED_FUNCTION_40_2();
    *(v13 + v25) |= v26;
    OUTLINED_FUNCTION_26_3(v27);
    if (!v11)
    {
      goto LABEL_7;
    }
  }

  OUTLINED_FUNCTION_43_2();
  while (++v21 != v23 || (v22 & 1) == 0)
  {
    v24 = v21 == v23;
    if (v21 == v23)
    {
      v21 = 0;
    }

    v22 |= v24;
    if (*(v13 + 8 * v21) != -1)
    {
      OUTLINED_FUNCTION_41_1();
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
}

uint64_t sub_26815A1CC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DB80, &qword_2683D4278);
  result = sub_2683D0128();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v33 = v2;
  v34 = v3;
  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v32 = 1 << *(v3 + 32);
    if (v32 >= 64)
    {
      sub_268158C84(0, (v32 + 63) >> 6, v8);
    }

    else
    {
      *v8 = -1 << v32;
    }

    v2 = v33;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = (*(v3 + 48) + 32 * (v14 | (v7 << 6)));
    v18 = *v17;
    v19 = v17[1];
    v20 = v17[2];
    v21 = v17[3];
    v22 = *(v6 + 40);
    sub_2683D0698();
    v35 = v18;
    sub_2683CFB48();
    sub_2683CFB48();
    result = sub_2683D06D8();
    v23 = -1 << *(v6 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
    {
      break;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = (*(v6 + 48) + 32 * v26);
    v3 = v34;
    *v31 = v35;
    v31[1] = v19;
    v31[2] = v20;
    v31[3] = v21;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v27 = 0;
  v28 = (63 - v23) >> 6;
  while (++v25 != v28 || (v27 & 1) == 0)
  {
    v29 = v25 == v28;
    if (v25 == v28)
    {
      v25 = 0;
    }

    v27 |= v29;
    v30 = *(v13 + 8 * v25);
    if (v30 != -1)
    {
      v26 = __clz(__rbit64(~v30)) + (v25 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_26815A450(uint64_t a1)
{
  v2 = v1;
  v41 = sub_2683CB598();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DBB0, &qword_2683D4308);
  result = sub_2683D0128();
  v10 = result;
  if (!*(v7 + 16))
  {
LABEL_29:

    *v2 = v10;
    return result;
  }

  v35 = v2;
  v36 = v7;
  v11 = 0;
  v12 = (v7 + 56);
  v13 = 1 << *(v7 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(v7 + 56);
  v16 = (v13 + 63) >> 6;
  v39 = v4 + 4;
  v17 = result + 56;
  if (!v15)
  {
LABEL_9:
    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v11 >= v16)
      {
        break;
      }

      v20 = v12[v11];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v15 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      sub_268158C84(0, (v33 + 63) >> 6, v12);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v18 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_14:
    v21 = *(v7 + 48) + v4[9] * (v18 | (v11 << 6));
    v22 = v4[4];
    v37 = v4[9];
    v38 = v22;
    v22(v40, v21, v41);
    v23 = v10;
    v24 = *(v10 + 40);
    sub_26815E520(&qword_28024D890, MEMORY[0x277CC95F0]);
    result = sub_2683CF9F8();
    v10 = v23;
    v25 = -1 << *(v23 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v17 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v17 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v17 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    result = v38(*(v23 + 48) + v28 * v37, v40, v41);
    ++*(v23 + 16);
    v7 = v36;
    if (!v15)
    {
      goto LABEL_9;
    }
  }

  v29 = 0;
  v30 = (63 - v25) >> 6;
  while (++v27 != v30 || (v29 & 1) == 0)
  {
    v31 = v27 == v30;
    if (v27 == v30)
    {
      v27 = 0;
    }

    v29 |= v31;
    v32 = *(v17 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_26815A7A8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DBA0, &qword_2683D4300);
  result = sub_2683D0128();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v7 = 0;
  v9 = (v3 + 56);
  v8 = *(v3 + 56);
  v10 = 1 << *(v3 + 32);
  v27 = v2;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & v8;
  v13 = result + 56;
  if ((v11 & v8) == 0)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= ((v10 + 63) >> 6))
      {
        break;
      }

      v16 = v9[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    if (v10 >= 64)
    {
      sub_268158C84(0, (v10 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v9 = -1 << v10;
    }

    v2 = v27;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_14:
    v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
    v18 = *(v6 + 40);
    result = sub_2683D0688();
    v19 = -1 << *(v6 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v6 + 48) + 8 * v22) = v17;
    ++*(v6 + 16);
    if (!v12)
    {
      goto LABEL_9;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v13 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

unint64_t sub_26815A9CC()
{
  OUTLINED_FUNCTION_36_2();
  v3 = *(v2 + 40);
  sub_2683CFF58();
  v4 = *(v0 + 32);
  OUTLINED_FUNCTION_14_6();
  result = sub_2683D0088();
  *(v0 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(v0 + 48) + 8 * result) = v1;
  ++*(v0 + 16);
  return result;
}

uint64_t sub_26815AA48(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_268159A84(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_26815BC50(v8 + 1);
LABEL_10:
      v15 = *v4;
      v16 = *(*v4 + 40);
      sub_2683D0698();
      sub_2683CFB48();
      result = sub_2683D06D8();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v17;
        if (((*(v15 + 56 + (((result & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v15 + 48) + 16 * a3);
        v19 = *v18 == v7 && v18[1] == a2;
        if (v19 || (sub_2683D0598() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_26815B548();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = sub_2683D05F8();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

uint64_t sub_26815ABB0(uint64_t a1, unint64_t a2, char a3)
{
  v24 = a1;
  v6 = sub_2683CB438();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_268159CE0(v11 + 1);
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      sub_26815BE84(v11 + 1);
LABEL_8:
      v23 = v3;
      v13 = *v3;
      v14 = *(*v3 + 40);
      sub_26815E520(&qword_28024D760, MEMORY[0x277CC9260]);
      v15 = sub_2683CF9F8();
      v16 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v15 & v16;
        if (((*(v13 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        sub_26815E520(&qword_28024DB70, MEMORY[0x277CC9260]);
        v17 = sub_2683CFA58();
        (*(v7 + 8))(v10, v6);
        if (v17)
        {
          goto LABEL_16;
        }

        v15 = a2 + 1;
      }

      v3 = v23;
      goto LABEL_13;
    }

    sub_26815B920();
  }

LABEL_13:
  v18 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v18 + 48) + *(v7 + 72) * a2, v24, v6);
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
LABEL_16:
    result = sub_2683D05F8();
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v22;
  }

  return result;
}

void sub_26815AE60(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5)
{
  v8 = *(*v5 + 16);
  v9 = *(*v5 + 24);
  if (v9 <= v8 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_26815A038();
      goto LABEL_8;
    }

    if (v9 <= v8)
    {
      sub_26815C19C(v8 + 1, a4, a5);
LABEL_8:
      v10 = *v5;
      v11 = *(*v5 + 40);
      sub_2683CFF58();
      v12 = *(v10 + 32);
      OUTLINED_FUNCTION_14_6();
      v15 = ~v14;
      while (1)
      {
        a2 = v13 & v15;
        if (((*(v10 + 56 + (((v13 & v15) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v15)) & 1) == 0)
        {
          goto LABEL_12;
        }

        OUTLINED_FUNCTION_37_1();
        sub_268129504(v16, v17, v18);
        v19 = *(*(v10 + 48) + 8 * a2);
        v20 = sub_2683CFF68();

        if (v20)
        {
          goto LABEL_15;
        }

        v13 = a2 + 1;
      }
    }

    sub_26815B6A0(a4, a5);
  }

LABEL_12:
  v21 = *v5;
  *(*v5 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v21 + 48) + 8 * a2) = a1;
  v22 = *(v21 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (v23)
  {
    __break(1u);
LABEL_15:
    sub_2683D05F8();
    __break(1u);
  }

  else
  {
    *(v21 + 16) = v24;
  }
}

uint64_t sub_26815AFCC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, char a6)
{
  v11 = result;
  v12 = *(*v6 + 16);
  v13 = *(*v6 + 24);
  if (v13 > v12 && (a6 & 1) != 0)
  {
    goto LABEL_21;
  }

  if (a6)
  {
    sub_26815A1CC(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      result = sub_26815B7B8();
      goto LABEL_21;
    }

    sub_26815C33C(v12 + 1);
  }

  v14 = *v6;
  v15 = *(*v6 + 40);
  sub_2683D0698();
  sub_2683CFB48();
  sub_2683CFB48();
  result = sub_2683D06D8();
  v16 = v14 + 56;
  v17 = -1 << *(v14 + 32);
  a5 = result & ~v17;
  if ((*(v14 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5))
  {
    v18 = ~v17;
    v19 = *(v14 + 48);
    do
    {
      v20 = (v19 + 32 * a5);
      v21 = v20[2];
      v22 = v20[3];
      v23 = *v20 == v11 && v20[1] == a2;
      if (v23 || (result = sub_2683D0598(), (result & 1) != 0))
      {
        if (v21 == a3 && v22 == a4)
        {
          goto LABEL_24;
        }

        result = sub_2683D0598();
        if (result)
        {
          goto LABEL_24;
        }
      }

      a5 = (a5 + 1) & v18;
    }

    while (((*(v16 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5) & 1) != 0);
  }

LABEL_21:
  v25 = *v30;
  *(*v30 + 8 * (a5 >> 6) + 56) |= 1 << a5;
  v26 = (*(v25 + 48) + 32 * a5);
  *v26 = v11;
  v26[1] = a2;
  v26[2] = a3;
  v26[3] = a4;
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_24:
  result = sub_2683D05F8();
  __break(1u);
  return result;
}

uint64_t sub_26815B194(uint64_t a1, unint64_t a2, char a3)
{
  v24 = a1;
  v6 = sub_2683CB598();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_26815A450(v11 + 1);
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      sub_26815C59C(v11 + 1);
LABEL_8:
      v23 = v3;
      v13 = *v3;
      v14 = *(*v3 + 40);
      sub_26815E520(&qword_28024D890, MEMORY[0x277CC95F0]);
      v15 = sub_2683CF9F8();
      v16 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v15 & v16;
        if (((*(v13 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        sub_26815E520(&qword_28024DBA8, MEMORY[0x277CC95F0]);
        v17 = sub_2683CFA58();
        (*(v7 + 8))(v10, v6);
        if (v17)
        {
          goto LABEL_16;
        }

        v15 = a2 + 1;
      }

      v3 = v23;
      goto LABEL_13;
    }

    sub_26815B920();
  }

LABEL_13:
  v18 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v18 + 48) + *(v7 + 72) * a2, v24, v6);
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
LABEL_16:
    result = sub_2683D05F8();
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v22;
  }

  return result;
}

uint64_t sub_26815B444(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_26815A7A8(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_26815C8B4(v6 + 1);
LABEL_10:
      v12 = *v3;
      v13 = *(*v3 + 40);
      result = sub_2683D0688();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = result & v14;
        if (((*(v12 + 56 + (((result & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v14)) & 1) == 0)
        {
          goto LABEL_7;
        }

        if (*(*(v12 + 48) + 8 * a2) == v5)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_26815BB10();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 8 * a2) = v5;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    result = sub_2683D05F8();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

void *sub_26815B548()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DC20, qword_2683D4378);
  v2 = *v0;
  v3 = sub_2683D0118();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void sub_26815B6A0(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_2683D0118();
  if (*(v4 + 16))
  {
    v6 = *(v5 + 32);
    OUTLINED_FUNCTION_27_1();
    v9 = (v8 + 63) >> 6;
    if (v5 != v4 || v7 >= v4 + 56 + 8 * v9)
    {
      memmove(v7, (v4 + 56), 8 * v9);
    }

    v11 = 0;
    *(v5 + 16) = *(v4 + 16);
    v12 = *(v4 + 32);
    OUTLINED_FUNCTION_27_1();
    v13 = *(v4 + 56);
    OUTLINED_FUNCTION_48_2();
    v16 = v15 & v14;
    v18 = (v17 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        OUTLINED_FUNCTION_46_2();
LABEL_15:
        v23 = v19 | (v11 << 6);
        v24 = *(*(v4 + 48) + 8 * v23);
        *(*(v5 + 48) + 8 * v23) = v24;
        v25 = v24;
      }

      while (v16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v11 >= v18)
      {
        goto LABEL_17;
      }

      ++v20;
      if (*(v4 + 56 + 8 * v11))
      {
        OUTLINED_FUNCTION_6_5();
        v16 = v22 & v21;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v3 = v5;
  }
}

void *sub_26815B7B8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DB80, &qword_2683D4278);
  v2 = *v0;
  v3 = sub_2683D0118();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 32 * v17);
        v19 = v18[1];
        v20 = v18[2];
        v21 = v18[3];
        v22 = (*(v4 + 48) + 32 * v17);
        *v22 = *v18;
        v22[1] = v19;
        v22[2] = v20;
        v22[3] = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void sub_26815B920()
{
  OUTLINED_FUNCTION_30_0();
  v2 = v0;
  v4 = v3(0);
  OUTLINED_FUNCTION_0_3(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_18_4();
  v10 = OUTLINED_FUNCTION_49_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
  v12 = *v0;
  v13 = sub_2683D0118();
  if (*(v12 + 16))
  {
    v32 = v2;
    v14 = *(v13 + 32);
    OUTLINED_FUNCTION_27_1();
    v17 = (v16 + 63) >> 6;
    if (v13 != v12 || v15 >= v12 + 56 + 8 * v17)
    {
      memmove(v15, (v12 + 56), 8 * v17);
    }

    v19 = 0;
    *(v13 + 16) = *(v12 + 16);
    v20 = *(v12 + 32);
    OUTLINED_FUNCTION_27_1();
    v21 = *(v12 + 56);
    OUTLINED_FUNCTION_48_2();
    v24 = v23 & v22;
    v26 = (v25 + 63) >> 6;
    if ((v23 & v22) != 0)
    {
      do
      {
        v27 = __clz(__rbit64(v24));
        v24 &= v24 - 1;
LABEL_15:
        v31 = *(v6 + 72) * (v27 | (v19 << 6));
        (*(v6 + 16))(v1, *(v12 + 48) + v31, v4);
        (*(v6 + 32))(*(v13 + 48) + v31, v1, v4);
      }

      while (v24);
    }

    v28 = v19;
    while (1)
    {
      v19 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v19 >= v26)
      {

        v2 = v32;
        goto LABEL_19;
      }

      ++v28;
      if (*(v12 + 56 + 8 * v19))
      {
        OUTLINED_FUNCTION_6_5();
        v24 = v30 & v29;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_19:
    *v2 = v13;
    OUTLINED_FUNCTION_29_0();
  }
}

void *sub_26815BB10()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DBA0, &qword_2683D4300);
  v2 = *v0;
  v3 = sub_2683D0118();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_26815BC50(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DC20, qword_2683D4378);
  result = sub_2683D0128();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = (*(v3 + 48) + 16 * (v13 | (v7 << 6)));
        v17 = *v16;
        v18 = v16[1];
        v19 = *(v6 + 40);
        sub_2683D0698();

        sub_2683CFB48();
        result = sub_2683D06D8();
        v20 = -1 << *(v6 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        v28 = (*(v6 + 48) + 16 * v23);
        *v28 = v17;
        v28[1] = v18;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v29;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_26815BE84(uint64_t a1)
{
  v2 = v1;
  v37 = sub_2683CB438();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DB78, &unk_2683D4268);
  v10 = sub_2683D0128();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    if (v16)
    {
      while (1)
      {
        v19 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v22 = *(v36 + 72);
        (*(v36 + 16))(v7, *(result + 48) + v22 * (v19 | (v12 << 6)), v37);
        v23 = *(v10 + 40);
        sub_26815E520(&qword_28024D760, MEMORY[0x277CC9260]);
        result = sub_2683CF9F8();
        v24 = -1 << *(v10 + 32);
        v25 = result & ~v24;
        v26 = v25 >> 6;
        if (((-1 << v25) & ~*(v18 + 8 * (v25 >> 6))) == 0)
        {
          break;
        }

        v27 = __clz(__rbit64((-1 << v25) & ~*(v18 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v18 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
        (*v33)(*(v10 + 48) + v27 * v22, v7, v37);
        ++*(v10 + 16);
        result = v34;
        if (!v16)
        {
          goto LABEL_9;
        }
      }

      v28 = 0;
      v29 = (63 - v24) >> 6;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v18 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v20 = v12;
      while (1)
      {
        v12 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v12 >= v17)
        {

          v2 = v32;
          goto LABEL_27;
        }

        v21 = *(v13 + 8 * v12);
        ++v20;
        if (v21)
        {
          v19 = __clz(__rbit64(v21));
          v16 = (v21 - 1) & v21;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v10;
  }

  return result;
}

void sub_26815C19C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_21_3(a1, a2, a3);
  v5 = sub_2683D0128();
  v6 = v5;
  if (*(v4 + 16))
  {
    v27 = v3;
    v7 = 0;
    v8 = 1 << *(v4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v5 + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_12:
        v17 = *(v6 + 40);
        v18 = *(*(v4 + 48) + 8 * (v13 | (v7 << 6)));
        OUTLINED_FUNCTION_39_2();
        v19 = sub_2683CFF58() & ~(-1 << *(v6 + 32));
        if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        OUTLINED_FUNCTION_44_2();
LABEL_21:
        OUTLINED_FUNCTION_40_2();
        *(v12 + v24) |= v25;
        OUTLINED_FUNCTION_26_3(v26);
        if (!v10)
        {
          goto LABEL_7;
        }
      }

      OUTLINED_FUNCTION_43_2();
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        if (*(v12 + 8 * v20) != -1)
        {
          OUTLINED_FUNCTION_41_1();
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v3 = v27;
          goto LABEL_25;
        }

        ++v14;
        if (*(v4 + 56 + 8 * v7))
        {
          OUTLINED_FUNCTION_6_5();
          v10 = v16 & v15;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v3 = v6;
  }
}

uint64_t sub_26815C33C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DB80, &qword_2683D4278);
  result = sub_2683D0128();
  v6 = result;
  if (*(v3 + 16))
  {
    v32 = v2;
    v33 = v3;
    v7 = 0;
    v8 = v3 + 56;
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    if (v11)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
LABEL_14:
        v17 = (*(v3 + 48) + 32 * (v14 | (v7 << 6)));
        v18 = *v17;
        v19 = v17[1];
        v20 = v17[2];
        v21 = v17[3];
        v22 = *(v6 + 40);
        sub_2683D0698();

        sub_2683CFB48();
        sub_2683CFB48();
        result = sub_2683D06D8();
        v23 = -1 << *(v6 + 32);
        v24 = result & ~v23;
        v25 = v24 >> 6;
        if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
        {
          break;
        }

        v26 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v13 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
        v31 = (*(v6 + 48) + 32 * v26);
        *v31 = v18;
        v31[1] = v19;
        v31[2] = v20;
        v31[3] = v21;
        ++*(v6 + 16);
        v3 = v33;
        if (!v11)
        {
          goto LABEL_9;
        }
      }

      v27 = 0;
      v28 = (63 - v23) >> 6;
      while (++v25 != v28 || (v27 & 1) == 0)
      {
        v29 = v25 == v28;
        if (v25 == v28)
        {
          v25 = 0;
        }

        v27 |= v29;
        v30 = *(v13 + 8 * v25);
        if (v30 != -1)
        {
          v26 = __clz(__rbit64(~v30)) + (v25 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v15 = v7;
      while (1)
      {
        v7 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v7 >= v12)
        {

          v2 = v32;
          goto LABEL_27;
        }

        v16 = *(v8 + 8 * v7);
        ++v15;
        if (v16)
        {
          v14 = __clz(__rbit64(v16));
          v11 = (v16 - 1) & v16;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_26815C59C(uint64_t a1)
{
  v2 = v1;
  v37 = sub_2683CB598();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DBB0, &qword_2683D4308);
  v10 = sub_2683D0128();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    if (v16)
    {
      while (1)
      {
        v19 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v22 = *(v36 + 72);
        (*(v36 + 16))(v7, *(result + 48) + v22 * (v19 | (v12 << 6)), v37);
        v23 = *(v10 + 40);
        sub_26815E520(&qword_28024D890, MEMORY[0x277CC95F0]);
        result = sub_2683CF9F8();
        v24 = -1 << *(v10 + 32);
        v25 = result & ~v24;
        v26 = v25 >> 6;
        if (((-1 << v25) & ~*(v18 + 8 * (v25 >> 6))) == 0)
        {
          break;
        }

        v27 = __clz(__rbit64((-1 << v25) & ~*(v18 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v18 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
        (*v33)(*(v10 + 48) + v27 * v22, v7, v37);
        ++*(v10 + 16);
        result = v34;
        if (!v16)
        {
          goto LABEL_9;
        }
      }

      v28 = 0;
      v29 = (63 - v24) >> 6;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v18 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v20 = v12;
      while (1)
      {
        v12 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v12 >= v17)
        {

          v2 = v32;
          goto LABEL_27;
        }

        v21 = *(v13 + 8 * v12);
        ++v20;
        if (v21)
        {
          v19 = __clz(__rbit64(v21));
          v16 = (v21 - 1) & v21;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_26815C8B4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DBA0, &qword_2683D4300);
  result = sub_2683D0128();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = *(*(v3 + 48) + 8 * (v13 | (v7 << 6)));
        v17 = *(v6 + 40);
        result = sub_2683D0688();
        v18 = -1 << *(v6 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        *(*(v6 + 48) + 8 * v21) = v16;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {
          goto LABEL_25;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_25:

    *v2 = v6;
  }

  return result;
}

uint64_t sub_26815CAA0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DBF0, &qword_2683D4348);
    v2 = sub_2683D03E8();
    v17 = v2;
    sub_2683D02D8();
    while (1)
    {
      v3 = sub_2683D0368();
      if (!v3)
      {

        return v2;
      }

      v15 = v3;
      sub_268129504(0, &qword_28024DB40, 0x277D44700);
      swift_dynamicCast();
      sub_268129504(0, &qword_28024DB60, 0x277D44750);
      swift_dynamicCast();
      if (*(v2 + 24) <= *(v2 + 16))
      {
        sub_2682C0DB4();
      }

      v2 = v17;
      v4 = *(v17 + 40);
      result = sub_2683CFF58();
      v6 = v17 + 64;
      v7 = -1 << *(v17 + 32);
      v8 = result & ~v7;
      v9 = v8 >> 6;
      if (((-1 << v8) & ~*(v17 + 64 + 8 * (v8 >> 6))) == 0)
      {
        break;
      }

      v10 = __clz(__rbit64((-1 << v8) & ~*(v17 + 64 + 8 * (v8 >> 6)))) | v8 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v6 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
      *(*(v17 + 48) + 8 * v10) = v16;
      *(*(v17 + 56) + 8 * v10) = v15;
      ++*(v17 + 16);
    }

    v11 = 0;
    v12 = (63 - v7) >> 6;
    while (++v9 != v12 || (v11 & 1) == 0)
    {
      v13 = v9 == v12;
      if (v9 == v12)
      {
        v9 = 0;
      }

      v11 |= v13;
      v14 = *(v6 + 8 * v9);
      if (v14 != -1)
      {
        v10 = __clz(__rbit64(~v14)) + (v9 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_26815CCC8(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DC10, &qword_2683D4368);
  result = sub_2683D03C8();
  v6 = result;
  v7 = 0;
  v27 = a3;
  v28 = result;
  v10 = *(a3 + 64);
  v9 = a3 + 64;
  v8 = v10;
  v11 = 1 << *(v9 - 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v8;
  v14 = (v11 + 63) >> 6;
  v25 = result + 64;
  if ((v12 & v8) != 0)
  {
    while (1)
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_10:
      v18 = v15 | (v7 << 6);
      v19 = *(*(v27 + 48) + 8 * v18);
      v30 = *(*(v27 + 56) + 8 * v18);
      v20 = v19;

      a1(&v29, &v30);

      if (v3)
      {
        break;
      }

      *(v25 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v6 = v28;
      v21 = v29;
      *(v28[6] + 8 * v18) = v20;
      *(v28[7] + 8 * v18) = v21;
      v22 = v28[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        goto LABEL_17;
      }

      v28[2] = v24;
      if (!v13)
      {
        goto LABEL_5;
      }
    }

    v6 = v28;

    return v6;
  }

  else
  {
LABEL_5:
    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v14)
      {
        return v6;
      }

      v17 = *(v9 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  return result;
}

unint64_t *sub_26815CE7C(uint64_t a1, uint64_t a2)
{
  v4 = a1;
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v13 = swift_slowAlloc();

      v4 = sub_26815DF0C(v13, v7, v4, a2);
      MEMORY[0x26D617A40](v13, -1, -1);
      swift_bridgeObjectRelease_n();
      goto LABEL_6;
    }
  }

  MEMORY[0x28223BE20](v8);
  v9 = (v14 - ((8 * v7 + 15) & 0x3FFFFFFFFFFFFFF0));
  sub_268158C84(0, v7, v9);

  sub_26815DB0C(v9, v7, v4, a2);
  if (v2)
  {
    swift_willThrow();
  }

  else
  {
    v4 = v10;
  }

  swift_bridgeObjectRelease_n();
LABEL_6:

  v11 = *MEMORY[0x277D85DE8];
  return v4;
}

id sub_26815D040(uint64_t a1, void *a2, uint64_t a3)
{
  sub_26815E3F0(a3, a1);

  return a2;
}

id sub_26815D080(void *a1, void *a2, void *a3)
{
  *a1 = a3;
  v4 = a2;
  v5 = a3;
  return v4;
}

id sub_26815D0B4@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DBC0, &unk_2683D4320) + 48);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DBD0, &qword_2683E6590);
  result = sub_26815D040(a2 + *(v5 + 48), *a1, a1 + v4);
  *a2 = result;
  return result;
}

uint64_t sub_26815D124(unint64_t a1, unint64_t a2, unint64_t a3, uint64_t *a4)
{
  v9 = *a4;
  if ((*a4 & 0xC000000000000001) != 0)
  {
    if (v9 < 0)
    {
      v10 = *a4;
    }

    else
    {
      v10 = v9 & 0xFFFFFFFFFFFFFF8;
    }

    v11 = *a4;

    v12 = sub_2683D00A8();
    v16 = sub_26815CAA0(v10, v12);
    sub_26815D924(a1, a2, a3, 1, &v16);
    if (v4)
    {
    }
  }

  else
  {
    v14 = *a4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *a4;
    result = sub_26815D924(a1, a2, a3, isUniquelyReferenced_nonNull_native, &v16);
  }

  *a4 = v16;
  return result;
}

uint64_t sub_26815D21C(uint64_t a1, char a2, uint64_t *a3)
{
  v49 = a3;
  v5 = type metadata accessor for Snippet.Reminder(0);
  v47 = *(v5 - 8);
  v6 = *(v47 + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v43 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v42 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DBD0, &qword_2683E6590);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v48 = (&v42 - v15);
  v46 = *(a1 + 16);
  if (!v46)
  {
  }

  v16 = 0;
  v17 = *(v13 + 48);
  v44 = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
  v45 = v17;
  while (v16 < *(a1 + 16))
  {
    v18 = v14;
    v19 = *(v14 + 72);
    v20 = v48;
    sub_26815ED48();
    v21 = *v20;
    v22 = v10;
    sub_26815E568();
    v23 = *v49;
    v25 = sub_2682E186C();
    v26 = *(v23 + 16);
    v27 = (v24 & 1) == 0;
    if (__OFADD__(v26, v27))
    {
      goto LABEL_18;
    }

    v28 = v24;
    if (*(v23 + 24) >= v26 + v27)
    {
      if ((a2 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DBE0, &qword_2683D4338);
        sub_2683D02A8();
      }
    }

    else
    {
      v29 = v49;
      sub_2682C0B00();
      v30 = *v29;
      v31 = sub_2682E186C();
      if ((v28 & 1) != (v32 & 1))
      {
        goto LABEL_20;
      }

      v25 = v31;
    }

    v33 = *v49;
    if (v28)
    {
      v34 = *(v47 + 72) * v25;
      v35 = v43;
      sub_26815E3F0(v33[7] + v34, v43);
      v10 = v22;
      sub_26815E454(v22);

      sub_26815EC40(v35, v33[7] + v34);
    }

    else
    {
      v33[(v25 >> 6) + 8] |= 1 << v25;
      *(v33[6] + 8 * v25) = v21;
      v36 = v33[7];
      v37 = *(v47 + 72);
      v10 = v22;
      sub_26815E568();
      v38 = v33[2];
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (v39)
      {
        goto LABEL_19;
      }

      v33[2] = v40;
    }

    ++v16;
    a2 = 1;
    v14 = v18;
    if (v46 == v16)
    {
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  sub_268129504(0, &qword_28024DB40, 0x277D44700);
  result = sub_2683D0608();
  __break(1u);
  return result;
}

uint64_t sub_26815D5B8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = type metadata accessor for Snippet.Reminder(0);
  v47 = *(v10 - 8);
  v11 = *(v47 + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v40 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DBD8, &qword_2683D4330);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = (v40 - v19);
  sub_26815E694(a1, a2, a3, v45);
  v41 = v45[0];
  v42 = v45[1];
  v43 = v45[2];
  v44 = v46;
  v40[2] = a1;

  v40[1] = a3;

  while (1)
  {
    sub_26815E768(v20);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DBD0, &qword_2683E6590);
    if (__swift_getEnumTagSinglePayload(v20, 1, v21) == 1)
    {
      sub_2681281A4();
    }

    v22 = *(v21 + 48);
    v23 = *v20;
    sub_26815E568();
    v24 = *a5;
    v26 = sub_2682E186C();
    v27 = v24[2];
    v28 = (v25 & 1) == 0;
    if (__OFADD__(v27, v28))
    {
      break;
    }

    v29 = v25;
    if (v24[3] >= v27 + v28)
    {
      if ((a4 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DBE0, &qword_2683D4338);
        sub_2683D02A8();
      }
    }

    else
    {
      sub_2682C0B00();
      v30 = *a5;
      v31 = sub_2682E186C();
      if ((v29 & 1) != (v32 & 1))
      {
        goto LABEL_16;
      }

      v26 = v31;
    }

    v33 = *a5;
    if (v29)
    {
      sub_26815E3F0(v16, v14);
      sub_26815E454(v16);

      sub_26815EC40(v14, v33[7] + *(v47 + 72) * v26);
      a4 = 1;
    }

    else
    {
      v33[(v26 >> 6) + 8] |= 1 << v26;
      *(v33[6] + 8 * v26) = v23;
      v34 = v33[7];
      v35 = *(v47 + 72);
      sub_26815E568();
      v36 = v33[2];
      v37 = __OFADD__(v36, 1);
      v38 = v36 + 1;
      if (v37)
      {
        goto LABEL_15;
      }

      v33[2] = v38;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  sub_268129504(0, &qword_28024DB40, 0x277D44700);
  result = sub_2683D0608();
  __break(1u);
  return result;
}

uint64_t sub_26815D924(unint64_t a1, unint64_t a2, unint64_t a3, char a4, void *a5)
{
  sub_26815E6D0(a1, a2, a3, &v27);

  while (1)
  {
    sub_26815EA80();
    if (!v7)
    {
      sub_2681281A4();
    }

    v9 = v7;
    v10 = v8;
    v11 = *a5;
    v13 = sub_2682E186C();
    v14 = v11[2];
    v15 = (v12 & 1) == 0;
    if (__OFADD__(v14, v15))
    {
      break;
    }

    v16 = v12;
    if (v11[3] >= v14 + v15)
    {
      if ((a4 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DBF8, &unk_2683D4350);
        sub_2683D02A8();
      }
    }

    else
    {
      sub_2682C0DB4();
      v17 = *a5;
      v18 = sub_2682E186C();
      if ((v16 & 1) != (v19 & 1))
      {
        goto LABEL_16;
      }

      v13 = v18;
    }

    v20 = *a5;
    if (v16)
    {

      v21 = v20[7];
      v22 = *(v21 + 8 * v13);
      *(v21 + 8 * v13) = v10;

      a4 = 1;
    }

    else
    {
      v20[(v13 >> 6) + 8] |= 1 << v13;
      *(v20[6] + 8 * v13) = v9;
      *(v20[7] + 8 * v13) = v10;
      v23 = v20[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        goto LABEL_15;
      }

      v20[2] = v25;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  sub_268129504(0, &qword_28024DB40, 0x277D44700);
  result = sub_2683D0608();
  __break(1u);
  return result;
}

void sub_26815DB0C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a2;
  v40 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DBC0, &unk_2683D4320);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (&v38 - v8);
  v10 = type metadata accessor for Snippet.Reminder(0);
  v48 = *(v10 - 8);
  v11 = *(v48 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v50 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = 0;
  v14 = *(a3 + 64);
  v43 = a3 + 64;
  v44 = 0;
  v15 = 1 << *(a3 + 32);
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & v14;
  v18 = (v15 + 63) >> 6;
  v47 = a4 & 0xC000000000000001;
  v19 = a4 & 0xFFFFFFFFFFFFFF8;
  if (a4 < 0)
  {
    v19 = a4;
  }

  v45 = v19;
  v53 = a4 + 56;
  v51 = v9;
  v49 = (v15 + 63) >> 6;
  v41 = v6;
  v42 = a3;
  while (v17)
  {
    v52 = (v17 - 1) & v17;
    v20 = __clz(__rbit64(v17)) | (v13 << 6);
    v21 = v50;
LABEL_14:
    v24 = *(*(a3 + 48) + 8 * v20);
    sub_26815E3F0(*(a3 + 56) + *(v48 + 72) * v20, v21);
    *v9 = v24;
    sub_26815E3F0(v21, v9 + *(v6 + 48));
    if (v47)
    {
      v46 = v20;
      v25 = v24;
      v26 = sub_2683D00D8();
      sub_26812D9E0(v51, &qword_28024DBC0, &unk_2683D4320);
      sub_26815E454(v21);

      v9 = v51;
      v17 = v52;
      v18 = v49;
      if (v26)
      {
LABEL_22:
        *(v40 + ((v46 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v46;
        if (__OFADD__(v44++, 1))
        {
          goto LABEL_29;
        }
      }
    }

    else
    {
      if (*(a4 + 16))
      {
        v46 = v20;
        sub_268129504(0, &qword_28024DB40, 0x277D44700);
        v27 = *(a4 + 40);
        v28 = v24;
        v29 = v24;
        v30 = sub_2683CFF58();
        v31 = ~(-1 << *(a4 + 32));
        while (1)
        {
          v32 = v30 & v31;
          if (((*(v53 + (((v30 & v31) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v30 & v31)) & 1) == 0)
          {
            break;
          }

          v33 = a4;
          v34 = *(*(a4 + 48) + 8 * v32);
          v35 = sub_2683CFF68();

          a4 = v33;
          v28 = v24;
          v30 = v32 + 1;
          if (v35)
          {
            v9 = v51;
            sub_26812D9E0(v51, &qword_28024DBC0, &unk_2683D4320);
            sub_26815E454(v50);

            v6 = v41;
            a3 = v42;
            v18 = v49;
            v17 = v52;
            goto LABEL_22;
          }
        }
      }

      else
      {
        v28 = v24;
        v37 = v24;
      }

      v9 = v51;
      sub_26812D9E0(v51, &qword_28024DBC0, &unk_2683D4320);
      sub_26815E454(v50);

      v6 = v41;
      a3 = v42;
      v18 = v49;
      v17 = v52;
    }
  }

  v22 = v13;
  v21 = v50;
  while (1)
  {
    v13 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v13 >= v18)
    {
      sub_26815DFAC(v40, v39, v44, a3);

      return;
    }

    v23 = *(v43 + 8 * v13);
    ++v22;
    if (v23)
    {
      v52 = (v23 - 1) & v23;
      v20 = __clz(__rbit64(v23)) | (v13 << 6);
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
}

unint64_t *sub_26815DF0C(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    swift_bridgeObjectRetain_n();
    sub_26815DB0C(v7, a2, a3, a4);
    v9 = v8;
    swift_bridgeObjectRelease_n();

    return v9;
  }

  return result;
}

uint64_t sub_26815DFAC(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for Snippet.Reminder(0);
  v39 = *(v8 - 8);
  v9 = *(v39 + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v38 = &v37 - v13;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DC00, &unk_2683E3D90);
  result = sub_2683D03F8();
  v15 = result;
  if (a2 < 1)
  {
    v16 = 0;
  }

  else
  {
    v16 = *a1;
  }

  v17 = 0;
  v18 = result + 64;
  v37 = a4;
  while (v16)
  {
    v19 = __clz(__rbit64(v16));
    v40 = (v16 - 1) & v16;
LABEL_16:
    v22 = v19 | (v17 << 6);
    v23 = *(a4[6] + 8 * v22);
    sub_26815E3F0(a4[7] + *(v39 + 72) * v22, v38);
    v24 = v12;
    sub_26815E568();
    v25 = *(v15 + 40);
    v26 = v23;
    result = sub_2683CFF58();
    v27 = -1 << *(v15 + 32);
    v28 = result & ~v27;
    v29 = v28 >> 6;
    if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
    {
      v31 = 0;
      v32 = (63 - v27) >> 6;
      v12 = v24;
      while (++v29 != v32 || (v31 & 1) == 0)
      {
        v33 = v29 == v32;
        if (v29 == v32)
        {
          v29 = 0;
        }

        v31 |= v33;
        v34 = *(v18 + 8 * v29);
        if (v34 != -1)
        {
          v30 = __clz(__rbit64(~v34)) + (v29 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v30 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
    v12 = v24;
LABEL_25:
    *(v18 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
    *(*(v15 + 48) + 8 * v30) = v26;
    v35 = *(v15 + 56);
    result = sub_26815E568();
    ++*(v15 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_31;
    }

    a4 = v37;
    v16 = v40;
    if (!a3)
    {
      return v15;
    }
  }

  v20 = v17;
  while (1)
  {
    v17 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v17 >= a2)
    {
      return v15;
    }

    v21 = a1[v17];
    ++v20;
    if (v21)
    {
      v19 = __clz(__rbit64(v21));
      v40 = (v21 - 1) & v21;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_26815E2B0(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    sub_2683CB468();
  }

  return OUTLINED_FUNCTION_9_0();
}

uint64_t sub_26815E30C(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    sub_2683CFA78();
  }

  return OUTLINED_FUNCTION_9_0();
}

unint64_t sub_26815E368()
{
  result = qword_28024DB48;
  if (!qword_28024DB48)
  {
    sub_268129504(255, &qword_28024DB40, 0x277D44700);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DB48);
  }

  return result;
}

uint64_t sub_26815E3F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Snippet.Reminder(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26815E454(uint64_t a1)
{
  v2 = type metadata accessor for Snippet.Reminder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26815E4B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5D8, &qword_2683D4260);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_26815E520(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26815E568()
{
  OUTLINED_FUNCTION_36_2();
  v2 = v1(0);
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_9_0();
  v6(v5);
  return v0;
}

uint64_t sub_26815E5C0(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_26815E600(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26815E694@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = -1 << *(a1 + 32);
  *a4 = a1;
  v7 = *(a1 + 64);
  result = a1 + 64;
  v6 = v7;
  v8 = ~v4;
  v9 = -v4;
  a4[1] = result;
  a4[2] = v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  a4[3] = 0;
  a4[4] = v10 & v6;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

unint64_t sub_26815E6D0@<X0>(unint64_t result@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  if ((result & 0xC000000000000001) != 0)
  {
    v7 = sub_2683D02D8();
    v8 = 0;
    v9 = 0;
    v10 = 0;
    result = v7 | 0x8000000000000000;
  }

  else
  {
    v11 = -1;
    v12 = -1 << *(result + 32);
    v8 = result + 64;
    v9 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v11 = ~(-1 << v13);
    }

    v10 = v11 & *(result + 64);
  }

  *a4 = result;
  a4[1] = v8;
  a4[2] = v9;
  a4[3] = 0;
  a4[4] = v10;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

uint64_t sub_26815E768@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DBC0, &unk_2683D4320);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v37 - v5;
  v7 = type metadata accessor for Snippet.Reminder(0);
  v38 = *(v7 - 8);
  v8 = *(v38 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DBE8, &qword_2683D4340);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v13);
  v18 = (&v37 - v17);
  v19 = *v1;
  v20 = v1[1];
  v21 = v1[2];
  v22 = v1[3];
  v23 = v1[4];
  v39 = v21;
  v40 = a1;
  v37 = v6;
  if (v23)
  {
    v24 = v22;
LABEL_7:
    v25 = (v23 - 1) & v23;
    v26 = __clz(__rbit64(v23)) | (v24 << 6);
    v27 = *(*(v19 + 48) + 8 * v26);
    sub_26815E3F0(*(v19 + 56) + *(v38 + 72) * v26, v10);
    v28 = *(v3 + 48);
    *v18 = v27;
    sub_26815E568();
    __swift_storeEnumTagSinglePayload(v18, 0, 1, v3);
    v29 = v27;
LABEL_8:
    *v1 = v19;
    v1[1] = v20;
    v1[2] = v39;
    v1[3] = v22;
    v1[4] = v25;
    v30 = v1[5];
    v31 = v1[6];
    sub_26815ECA4();
    v32 = 1;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v3);
    v34 = v40;
    if (EnumTagSinglePayload != 1)
    {
      v35 = v37;
      sub_26815ECA4();
      v30(v35);
      sub_26812D9E0(v35, &qword_28024DBC0, &unk_2683D4320);
      v32 = 0;
    }

    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DBD0, &qword_2683E6590);
    return __swift_storeEnumTagSinglePayload(v34, v32, 1, v36);
  }

  else
  {
    while (1)
    {
      v24 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v24 >= ((v21 + 64) >> 6))
      {
        __swift_storeEnumTagSinglePayload(&v37 - v17, 1, 1, v3);
        v25 = 0;
        goto LABEL_8;
      }

      v23 = *(v20 + 8 * v24);
      ++v22;
      if (v23)
      {
        v22 = v24;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_26815EA80()
{
  v1 = v0;
  v2 = *v0;
  if ((*v0 & 0x8000000000000000) != 0)
  {
    if (sub_2683D0368())
    {
      v7 = v6;
      sub_268129504(0, &qword_28024DB40, 0x277D44700);
      swift_dynamicCast();
      v8 = v17[0];
      v16 = v7;
      sub_268129504(0, &qword_28024DB60, 0x277D44750);
      swift_dynamicCast();
      v9 = v17[0];
      if (v17[0])
      {
LABEL_13:
        v14 = v1[5];
        v15 = v1[6];
        v17[0] = v8;
        v17[1] = v9;
        v14(&v16, v17);
      }
    }
  }

  else
  {
    v4 = v0[3];
    v3 = v1[4];
    if (v3)
    {
      v5 = v1[3];
LABEL_11:
      v10 = (v3 - 1) & v3;
      v11 = (v5 << 9) | (8 * __clz(__rbit64(v3)));
      v8 = *(*(v2 + 48) + v11);
      v12 = *(*(v2 + 56) + v11);
      v13 = v8;
      v9 = v12;
LABEL_12:
      v1[3] = v4;
      v1[4] = v10;
      if (v8)
      {
        goto LABEL_13;
      }
    }

    else
    {
      while (1)
      {
        v5 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          break;
        }

        if (v5 >= ((v1[2] + 64) >> 6))
        {
          v9 = 0;
          v8 = 0;
          v10 = 0;
          goto LABEL_12;
        }

        v3 = *(v1[1] + 8 * v5);
        ++v4;
        if (v3)
        {
          v4 = v5;
          goto LABEL_11;
        }
      }

      __break(1u);
    }
  }
}

id sub_26815EC04@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  result = sub_26815D080(&v5, *a1, a1[1]);
  v4 = v5;
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_26815EC40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Snippet.Reminder(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_26815ECA4()
{
  OUTLINED_FUNCTION_36_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_1(v3);
  v5 = *(v4 + 32);
  v6 = OUTLINED_FUNCTION_9_0();
  v7(v6);
  return v0;
}

void sub_26815ED18(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 16);
  sub_2681539A8(a1, v3, a2);
}

uint64_t sub_26815ED48()
{
  OUTLINED_FUNCTION_36_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_1(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_9_0();
  v7(v6);
  return v0;
}

uint64_t OUTLINED_FUNCTION_0_11()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_21_3(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  if (*(*v3 + 24) > a1)
  {
    v5 = *(*v3 + 24);
  }

  return __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
}

double OUTLINED_FUNCTION_30_1()
{
  result = 0.0;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0;
  *(v0 + 72) = 3;
  return result;
}

uint64_t OUTLINED_FUNCTION_33_3()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_34_3(uint64_t a1, unint64_t a2)
{

  return sub_2681610A0(a1, a2, (v2 - 96));
}

void OUTLINED_FUNCTION_42_2()
{
  v1 = *(v0 - 208);
  v2 = *(v0 - 200);
  v3 = *(v0 - 192);
  v4 = *(v0 - 184);
}

uint64_t OUTLINED_FUNCTION_50_1()
{

  return sub_268151B3C(0, 0, 255);
}

uint64_t type metadata accessor for NotebookBaseCATs()
{
  result = qword_28024DC28;
  if (!qword_28024DC28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26815F10C()
{
  OUTLINED_FUNCTION_14();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7C0, &unk_2683D6CA0) - 8) + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26815F1A8, 0, 0);
}

uint64_t sub_26815F1A8()
{
  v1 = v0[5];
  v2 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v3 = swift_allocObject();
  v0[6] = v3;
  *(v3 + 16) = xmmword_2683D1EC0;
  *(v3 + 32) = 0x4E746361746E6F63;
  *(v3 + 40) = 0xEB00000000656D61;
  sub_26812C2A8(v2, v1, &unk_28024E7C0, &unk_2683D6CA0);
  v4 = sub_2683CF168();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v4);
  v6 = v0[5];
  if (EnumTagSinglePayload == 1)
  {
    sub_26812C310(v0[5], &unk_28024E7C0, &unk_2683D6CA0);
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
  }

  else
  {
    *(v3 + 72) = v4;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v3 + 48));
    (*(*(v4 - 8) + 32))(boxed_opaque_existential_0, v6, v4);
  }

  v8 = *(MEMORY[0x277D55BF0] + 4);
  v12 = (*MEMORY[0x277D55BF0] + MEMORY[0x277D55BF0]);
  v9 = swift_task_alloc();
  v0[7] = v9;
  *v9 = v0;
  v10 = OUTLINED_FUNCTION_3_3(v9);

  return v12(v10, 0xD000000000000021, 0x80000002683FD3F0, v3);
}

uint64_t sub_26815F374()
{
  OUTLINED_FUNCTION_14();
  v2 = *v1;
  OUTLINED_FUNCTION_26();
  *v3 = v2;
  v5 = *(v4 + 56);
  v6 = *v1;
  OUTLINED_FUNCTION_26();
  *v7 = v6;
  v2[8] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26815F4AC, 0, 0);
  }

  else
  {
    v9 = v2[5];
    v8 = v2[6];

    OUTLINED_FUNCTION_40();

    return v10();
  }
}

uint64_t sub_26815F4AC()
{
  OUTLINED_FUNCTION_14();
  v2 = v0[5];
  v1 = v0[6];

  OUTLINED_FUNCTION_40();
  v4 = v0[8];

  return v3();
}

uint64_t sub_26815F510(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_26815F528()
{
  v1 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v2 = swift_allocObject();
  v0[5] = v2;
  *(v2 + 16) = xmmword_2683D1EC0;
  *(v2 + 32) = 0x72656767697274;
  *(v2 + 40) = 0xE700000000000000;
  v3 = 0;
  if (v1)
  {
    v3 = type metadata accessor for NotebookSpatialEventTriggerConcept(0);
  }

  else
  {
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  *(v2 + 48) = v1;
  *(v2 + 72) = v3;
  OUTLINED_FUNCTION_5_5(MEMORY[0x277D55BF0]);
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v5 = OUTLINED_FUNCTION_3_3(v4);

  return v7(v5, 0xD000000000000037, 0x80000002683FD3B0, v2);
}

uint64_t sub_26815F65C()
{
  OUTLINED_FUNCTION_14();
  v2 = *v1;
  OUTLINED_FUNCTION_26();
  *v3 = v2;
  v5 = *(v4 + 48);
  v6 = *v1;
  OUTLINED_FUNCTION_26();
  *v7 = v6;
  *(v2 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26815FC74, 0, 0);
  }

  else
  {
    v8 = *(v2 + 40);

    OUTLINED_FUNCTION_40();

    return v9();
  }
}

uint64_t sub_26815F788(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_26815F7A0()
{
  v1 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v2 = swift_allocObject();
  v0[5] = v2;
  *(v2 + 16) = xmmword_2683D1EC0;
  *(v2 + 32) = 0x747065636E6F63;
  *(v2 + 40) = 0xE700000000000000;
  v3 = 0;
  if (v1)
  {
    v3 = type metadata accessor for NotebookSpatialEventTriggerConcept(0);
  }

  else
  {
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  *(v2 + 48) = v1;
  *(v2 + 72) = v3;
  OUTLINED_FUNCTION_5_5(MEMORY[0x277D55BF0]);
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v5 = OUTLINED_FUNCTION_3_3(v4);

  return v7(v5, 0xD000000000000030, 0x80000002683FD370, v2);
}

uint64_t sub_26815F8D4()
{
  OUTLINED_FUNCTION_14();
  v2 = *v1;
  OUTLINED_FUNCTION_26();
  *v3 = v2;
  v5 = *(v4 + 48);
  v6 = *v1;
  OUTLINED_FUNCTION_26();
  *v7 = v6;
  *(v2 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26815FA00, 0, 0);
  }

  else
  {
    v8 = *(v2 + 40);

    OUTLINED_FUNCTION_40();

    return v9();
  }
}

uint64_t sub_26815FA00()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 40);

  OUTLINED_FUNCTION_40();
  v3 = *(v0 + 56);

  return v2();
}

uint64_t sub_26815FA5C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_26815FAB0(a1, a2);
}

uint64_t sub_26815FAB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2683CF238();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D258, &unk_2683D1F60);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  sub_26812C2A8(a1, &v14 - v11, &qword_28024D258, &unk_2683D1F60);
  (*(v5 + 16))(v8, a2, v4);
  v12 = sub_2683CF0A8();
  (*(v5 + 8))(a2, v4);
  sub_26812C310(a1, &qword_28024D258, &unk_2683D1F60);
  return v12;
}

uint64_t sub_26815FC3C()
{
  v0 = sub_2683CF0C8();

  return MEMORY[0x2821FE8D8](v0, 16, 7);
}

uint64_t OUTLINED_FUNCTION_3_3(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 32);
  return *(v2 + 16);
}

uint64_t OUTLINED_FUNCTION_5_5@<X0>(int *a1@<X8>)
{
  v2 = a1[1];
  v4 = a1 + *a1;
}

uint64_t DIIdentifier.namespace.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t DIIdentifier.namespace.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t DIIdentifier.id.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t DIIdentifier.id.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

SiriNotebook::DIIdentifier __swiftcall DIIdentifier.init(namespace:id:)(Swift::String a1, Swift::String id)
{
  *v2 = a1;
  v2[1] = id;
  result.id = id;
  result.namespace = a1;
  return result;
}

uint64_t DIIdentifier.payloadId.getter()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = *v0;
  v5 = v0[1];

  OUTLINED_FUNCTION_3_4();
  MEMORY[0x26D616690](v1, v2);
  return v4;
}

uint64_t DirectInvocationCodable.init(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v82 = a4;
  v87[4] = *MEMORY[0x277D85DE8];
  v7 = sub_2683CCBD8();
  OUTLINED_FUNCTION_1_7();
  v81 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2_1();
  v80 = v12;
  MEMORY[0x28223BE20](v13);
  v79 = &v78 - v14;
  OUTLINED_FUNCTION_1_7();
  v78 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v18);
  v20 = &v78 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = a1;
  v21 = sub_2683CCBB8();
  v23 = v22;
  v24 = a2;
  (*(a3 + 32))(v87, a2, a3);
  v25 = v87[2];
  v26 = v87[3];
  v85 = v87[0];
  v86 = v87[1];

  OUTLINED_FUNCTION_3_4();
  MEMORY[0x26D616690](v25, v26);

  v27 = v21 == v85 && v23 == v86;
  v83 = v24;
  if (v27)
  {
  }

  else
  {
    v28 = sub_2683D0598();

    if ((v28 & 1) == 0)
    {
      (v81)[1](v84, v7);
LABEL_17:
      v77 = 1;
      v76 = v82;
      goto LABEL_18;
    }
  }

  v29 = v84;
  v30 = v7;
  if (!sub_2683CCBC8())
  {
    sub_2683CF9D8();
  }

  v31 = v81;
  v32 = v20;
  v33 = objc_opt_self();
  v34 = sub_2683CF9B8();

  v87[0] = 0;
  v35 = [v33 dataWithPropertyList:v34 format:200 options:0 error:v87];

  v36 = v87[0];
  v37 = v79;
  if (!v35)
  {
    v45 = v36;
    v46 = sub_2683CB388();

    swift_willThrow();
    v47 = v80;
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v48 = sub_2683CF7E8();
    __swift_project_value_buffer(v48, qword_28027C958);
    v49 = v31[2];
    v49(v37, v29, v30);
    v49(v47, v29, v30);
    v50 = v46;
    v51 = sub_2683CF7C8();
    v52 = sub_2683CFE78();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      LODWORD(v80) = v52;
      v54 = v37;
      v55 = v53;
      v81 = swift_slowAlloc();
      v87[0] = v81;
      *v55 = 136315906;
      v56 = sub_2683CCBB8();
      v57 = v47;
      v59 = v58;
      v60 = v31[1];
      v60(v54, v30);
      v61 = sub_2681610A0(v56, v59, v87);

      *(v55 + 4) = v61;
      *(v55 + 12) = 2080;
      v85 = v46;
      v62 = v46;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D3E0, &qword_2683D2360);
      v63 = sub_2683CFAD8();
      v65 = sub_2681610A0(v63, v64, v87);

      *(v55 + 14) = v65;
      *(v55 + 22) = 2080;
      swift_getErrorValue();
      v66 = sub_2683D0638();
      v68 = sub_2681610A0(v66, v67, v87);

      *(v55 + 24) = v68;
      *(v55 + 32) = 2080;
      v85 = sub_2683CCBC8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DC38, &qword_2683D4408);
      v69 = sub_2683CFAD8();
      v71 = v70;
      v60(v57, v30);
      v72 = sub_2681610A0(v69, v71, v87);

      *(v55 + 34) = v72;
      _os_log_impl(&dword_2680EB000, v51, v80, "Decode failed for DI %s with error: %s [%s]\n User data: %s", v55, 0x2Au);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_38();

      v60(v84, v30);
    }

    else
    {

      v73 = v31[1];
      v73(v29, v30);
      v73(v47, v30);
      v73(v37, v30);
    }

    goto LABEL_17;
  }

  v38 = sub_2683CB468();
  v40 = v39;

  v41 = sub_2683CB348();
  v42 = *(v41 + 48);
  v43 = *(v41 + 52);
  swift_allocObject();
  sub_2683CB338();
  v44 = *(a3 + 8);
  sub_2683CB328();
  (v31)[1](v84, v30);

  sub_268143054(v38, v40);
  v76 = v82;
  (*(v78 + 32))(v82, v32, v83);
  v77 = 0;
LABEL_18:
  result = __swift_storeEnumTagSinglePayload(v76, v77, 1, v83);
  v75 = *MEMORY[0x277D85DE8];
  return result;
}

id DirectInvocationCodable.asPayload.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_7();
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v9);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_268161610();
  (*(v6 + 16))(v11, v2, a1);
  return SKIDirectInvocationPayload.init<A>(_:)(v11, a1, a2);
}

id SKIDirectInvocationPayload.init<A>(_:)(char *a1, uint64_t a2, uint64_t a3)
{
  v66[4] = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_7();
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2_1();
  v61 = v11;
  MEMORY[0x28223BE20](v12);
  v63 = &v58 - v13;
  v14 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  (*(a3 + 32))(v66, a2, a3);
  v15 = v66[2];
  v16 = v66[3];
  v64 = v66[0];
  v65 = v66[1];

  OUTLINED_FUNCTION_3_4();
  MEMORY[0x26D616690](v15, v16);
  v17 = sub_2683CFA68();

  v18 = a1;

  v19 = [v14 initWithIdentifier_];

  v20 = sub_2683CB378();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  sub_2683CB368();
  v23 = *(a3 + 16);
  v46 = sub_2683CB358();
  v48 = v47;

  v49 = objc_opt_self();
  v50 = sub_2683CB448();
  v66[0] = 0;
  v51 = [v49 propertyListWithData:v50 options:0 format:0 error:v66];

  if (v51)
  {
    v52 = v66[0];
    sub_2683D0038();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DC48, &qword_2683D4410);
    if (swift_dynamicCast())
    {
      sub_268160CEC(v64);

      v53 = sub_2683CF9B8();
    }

    else
    {
      v53 = 0;
    }

    [v19 setUserData_];
    sub_268143054(v46, v48);

    (*(v7 + 8))(a1, a2);
  }

  else
  {
    v54 = v66[0];
    v55 = sub_2683CB388();

    swift_willThrow();
    sub_268143054(v46, v48);
    v62 = v19;
    v24 = v63;
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v25 = sub_2683CF7E8();
    __swift_project_value_buffer(v25, qword_28027C958);
    v26 = *(v7 + 16);
    v26(v24, v18, a2);
    v27 = v55;
    v28 = sub_2683CF7C8();
    v29 = sub_2683CFE78();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v66[0] = v60;
      *v30 = 136315650;
      v64 = v55;
      v31 = v55;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D3E0, &qword_2683D2360);
      v32 = sub_2683CFAD8();
      HIDWORD(v58) = v29;
      v34 = sub_2681610A0(v32, v33, v66);
      v59 = v18;
      v35 = v7;
      v36 = v34;

      *(v30 + 4) = v36;
      *(v30 + 12) = 2080;
      swift_getErrorValue();
      v37 = sub_2683D0638();
      v39 = sub_2681610A0(v37, v38, v66);

      *(v30 + 14) = v39;
      *(v30 + 22) = 2080;
      v26(v61, v24, a2);
      v40 = sub_2683CFAD8();
      v42 = v41;
      v43 = *(v35 + 8);
      v43(v24, a2);
      v44 = sub_2681610A0(v40, v42, v66);

      *(v30 + 24) = v44;
      _os_log_impl(&dword_2680EB000, v28, BYTE4(v58), "Failed to serialize DirectInvocation with error: %s - %s. Object: %s", v30, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_38();

      v43(v59, a2);
    }

    else
    {

      v45 = *(v7 + 8);
      v45(v18, a2);
      v45(v24, a2);
    }

    v19 = v62;
  }

  v56 = *MEMORY[0x277D85DE8];
  return v19;
}

id DirectInvocationCodable.serializeToAceCommand(context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_opt_self();
  v7 = DirectInvocationCodable.asPayload.getter(a2, a3);
  v8 = [v6 runSiriKitExecutorCommandWithContext:a1 payload:v7];

  return v8;
}

id DirectInvocationCodable.serializeToStartLocalRequest(context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = DirectInvocationCodable.serializeToAceCommand(context:)(a1, a2, a3);
  v4 = [objc_opt_self() wrapCommandInStartLocalRequest_];

  return v4;
}

uint64_t DirectInvocationCodable.serializeToBase64(context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = DirectInvocationCodable.serializeToAceCommand(context:)(a1, a2, a3);
  v4 = sub_2683CFF78();

  return v4;
}

uint64_t sub_268160CEC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DC50, &qword_2683D4488);
    v2 = sub_2683D03F8();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = __clz(__rbit64(v5)) | (v9 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    sub_26813CC6C(*(a1 + 56) + 32 * v11, v36);
    *&v35 = v14;
    *(&v35 + 1) = v13;
    v33[2] = v35;
    v34[0] = v36[0];
    v34[1] = v36[1];
    v33[0] = v35;

    swift_dynamicCast();
    sub_268161678(v34, v28);
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_268161678(v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_268161678(v32, v33);
    v15 = *(v2 + 40);
    result = sub_2683D00E8();
    v16 = -1 << *(v2 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v7 + 8 * (v17 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v19 = __clz(__rbit64((-1 << v17) & ~*(v7 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *(v7 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    v24 = *(v2 + 48) + 40 * v19;
    *v24 = v25;
    *(v24 + 16) = v26;
    *(v24 + 32) = v27;
    result = sub_268161678(v33, (*(v2 + 56) + 32 * v19));
    ++*(v2 + 16);
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t Parse.DirectInvocation.is<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2683CCBB8();
  v7 = v6;
  (*(a3 + 32))(v15, a2, a3);
  v8 = v15[2];
  v9 = v15[3];
  v13 = v15[0];
  v14 = v15[1];

  OUTLINED_FUNCTION_3_4();
  MEMORY[0x26D616690](v8, v9);

  if (v5 == v13 && v7 == v14)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2683D0598();
  }

  return v11 & 1;
}

uint64_t sub_2681610A0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_268161164(v11, 0, 0, 1, a1, a2);
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
    sub_26813CC6C(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_268161164(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_268161264(a5, a6);
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
    result = sub_2683D01E8();
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