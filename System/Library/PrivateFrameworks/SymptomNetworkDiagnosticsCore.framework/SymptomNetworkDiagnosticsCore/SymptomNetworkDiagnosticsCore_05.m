uint64_t storeEnumTagSinglePayload for NDFEvent.NDFEventContext(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_23253CF9C()
{
  result = sub_232545688();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_23253D030()
{
  sub_23253D114(319, &qword_27DD93828, type metadata accessor for NDFDevice, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_23253D114(319, &qword_27DD93830, type metadata accessor for NDFEvent, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23253D114(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t getEnumTagSinglePayload for NDFDeviceEventInfo.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for NDFDeviceEventInfo.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_23253D2F8(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_23253D38C(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for NDFActorRequestType.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NDFActorRequestType.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_23253D6A0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
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

  return (v8 + 1);
}

uint64_t sub_23253D734(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_23253D7F8()
{
  result = qword_27DD959F0[0];
  if (!qword_27DD959F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD959F0);
  }

  return result;
}

unint64_t sub_23253D850()
{
  result = qword_27DD95F00[0];
  if (!qword_27DD95F00[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD95F00);
  }

  return result;
}

unint64_t sub_23253D8A8()
{
  result = qword_27DD96110[0];
  if (!qword_27DD96110[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD96110);
  }

  return result;
}

unint64_t sub_23253D900()
{
  result = qword_27DD96320[0];
  if (!qword_27DD96320[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD96320);
  }

  return result;
}

unint64_t sub_23253D958()
{
  result = qword_27DD96630[0];
  if (!qword_27DD96630[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD96630);
  }

  return result;
}

unint64_t sub_23253D9CC()
{
  result = qword_27DD96A40[0];
  if (!qword_27DD96A40[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD96A40);
  }

  return result;
}

unint64_t sub_23253DA24()
{
  result = qword_27DD96C50[0];
  if (!qword_27DD96C50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD96C50);
  }

  return result;
}

unint64_t sub_23253DA7C()
{
  result = qword_27DD97160[0];
  if (!qword_27DD97160[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD97160);
  }

  return result;
}

unint64_t sub_23253DAD4()
{
  result = qword_27DD97370[0];
  if (!qword_27DD97370[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD97370);
  }

  return result;
}

unint64_t sub_23253DB2C()
{
  result = qword_27DD97680[0];
  if (!qword_27DD97680[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD97680);
  }

  return result;
}

unint64_t sub_23253DB84()
{
  result = qword_27DD97890[0];
  if (!qword_27DD97890[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD97890);
  }

  return result;
}

unint64_t sub_23253DBDC()
{
  result = qword_27DD97AA0[0];
  if (!qword_27DD97AA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD97AA0);
  }

  return result;
}

unint64_t sub_23253DC34()
{
  result = qword_27DD97CB0[0];
  if (!qword_27DD97CB0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD97CB0);
  }

  return result;
}

unint64_t sub_23253DC8C()
{
  result = qword_27DD97DC0;
  if (!qword_27DD97DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD97DC0);
  }

  return result;
}

unint64_t sub_23253DCE4()
{
  result = qword_27DD97DC8[0];
  if (!qword_27DD97DC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD97DC8);
  }

  return result;
}

unint64_t sub_23253DD3C()
{
  result = qword_27DD97E50;
  if (!qword_27DD97E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD97E50);
  }

  return result;
}

unint64_t sub_23253DD94()
{
  result = qword_27DD97E58[0];
  if (!qword_27DD97E58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD97E58);
  }

  return result;
}

unint64_t sub_23253DDEC()
{
  result = qword_27DD97EE0;
  if (!qword_27DD97EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD97EE0);
  }

  return result;
}

unint64_t sub_23253DE44()
{
  result = qword_27DD97EE8[0];
  if (!qword_27DD97EE8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD97EE8);
  }

  return result;
}

unint64_t sub_23253DE9C()
{
  result = qword_27DD97F70;
  if (!qword_27DD97F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD97F70);
  }

  return result;
}

unint64_t sub_23253DEF4()
{
  result = qword_27DD97F78;
  if (!qword_27DD97F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD97F78);
  }

  return result;
}

unint64_t sub_23253DF4C()
{
  result = qword_27DD98000;
  if (!qword_27DD98000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD98000);
  }

  return result;
}

unint64_t sub_23253DFA4()
{
  result = qword_27DD98008[0];
  if (!qword_27DD98008[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD98008);
  }

  return result;
}

unint64_t sub_23253DFFC()
{
  result = qword_27DD98090;
  if (!qword_27DD98090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD98090);
  }

  return result;
}

unint64_t sub_23253E054()
{
  result = qword_27DD98098[0];
  if (!qword_27DD98098[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD98098);
  }

  return result;
}

unint64_t sub_23253E0AC()
{
  result = qword_27DD98120;
  if (!qword_27DD98120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD98120);
  }

  return result;
}

unint64_t sub_23253E104()
{
  result = qword_27DD98128[0];
  if (!qword_27DD98128[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD98128);
  }

  return result;
}

unint64_t sub_23253E15C()
{
  result = qword_27DD981B0;
  if (!qword_27DD981B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD981B0);
  }

  return result;
}

unint64_t sub_23253E1B4()
{
  result = qword_27DD981B8[0];
  if (!qword_27DD981B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD981B8);
  }

  return result;
}

unint64_t sub_23253E20C()
{
  result = qword_27DD98240;
  if (!qword_27DD98240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD98240);
  }

  return result;
}

unint64_t sub_23253E264()
{
  result = qword_27DD98248[0];
  if (!qword_27DD98248[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD98248);
  }

  return result;
}

unint64_t sub_23253E2BC()
{
  result = qword_27DD982D0;
  if (!qword_27DD982D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD982D0);
  }

  return result;
}

unint64_t sub_23253E314()
{
  result = qword_27DD982D8[0];
  if (!qword_27DD982D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD982D8);
  }

  return result;
}

unint64_t sub_23253E36C()
{
  result = qword_27DD98360;
  if (!qword_27DD98360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD98360);
  }

  return result;
}

unint64_t sub_23253E3C4()
{
  result = qword_27DD98368[0];
  if (!qword_27DD98368[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD98368);
  }

  return result;
}

unint64_t sub_23253E41C()
{
  result = qword_27DD983F0;
  if (!qword_27DD983F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD983F0);
  }

  return result;
}

unint64_t sub_23253E474()
{
  result = qword_27DD983F8[0];
  if (!qword_27DD983F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD983F8);
  }

  return result;
}

unint64_t sub_23253E504()
{
  result = qword_27DD98500;
  if (!qword_27DD98500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD98500);
  }

  return result;
}

unint64_t sub_23253E55C()
{
  result = qword_27DD98508[0];
  if (!qword_27DD98508[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD98508);
  }

  return result;
}

unint64_t sub_23253E5B4()
{
  result = qword_27DD98590;
  if (!qword_27DD98590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD98590);
  }

  return result;
}

unint64_t sub_23253E60C()
{
  result = qword_27DD98598[0];
  if (!qword_27DD98598[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD98598);
  }

  return result;
}

unint64_t sub_23253E664()
{
  result = qword_27DD98620;
  if (!qword_27DD98620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD98620);
  }

  return result;
}

unint64_t sub_23253E6BC()
{
  result = qword_27DD98628[0];
  if (!qword_27DD98628[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD98628);
  }

  return result;
}

unint64_t sub_23253E714()
{
  result = qword_27DD986B0;
  if (!qword_27DD986B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD986B0);
  }

  return result;
}

unint64_t sub_23253E76C()
{
  result = qword_27DD986B8[0];
  if (!qword_27DD986B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD986B8);
  }

  return result;
}

unint64_t sub_23253E7C4()
{
  result = qword_27DD98740;
  if (!qword_27DD98740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD98740);
  }

  return result;
}

unint64_t sub_23253E81C()
{
  result = qword_27DD98748[0];
  if (!qword_27DD98748[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD98748);
  }

  return result;
}

unint64_t sub_23253E874()
{
  result = qword_27DD987D0;
  if (!qword_27DD987D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD987D0);
  }

  return result;
}

unint64_t sub_23253E8CC()
{
  result = qword_27DD987D8[0];
  if (!qword_27DD987D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD987D8);
  }

  return result;
}

unint64_t sub_23253E924()
{
  result = qword_27DD98860;
  if (!qword_27DD98860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD98860);
  }

  return result;
}

unint64_t sub_23253E97C()
{
  result = qword_27DD98868[0];
  if (!qword_27DD98868[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD98868);
  }

  return result;
}

unint64_t sub_23253E9D4()
{
  result = qword_27DD988F0;
  if (!qword_27DD988F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD988F0);
  }

  return result;
}

unint64_t sub_23253EA2C()
{
  result = qword_27DD988F8[0];
  if (!qword_27DD988F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD988F8);
  }

  return result;
}

unint64_t sub_23253EA84()
{
  result = qword_27DD98980;
  if (!qword_27DD98980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD98980);
  }

  return result;
}

unint64_t sub_23253EADC()
{
  result = qword_27DD98988[0];
  if (!qword_27DD98988[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD98988);
  }

  return result;
}

uint64_t sub_23253EB30(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x707954746E657665 && a2 == 0xE900000000000065 || (sub_232546628() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F43746E657665 && a2 == 0xEC00000074786574 || (sub_232546628() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070 || (sub_232546628() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4449656369766564 && a2 == 0xE800000000000000 || (sub_232546628() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x49555570756F7267 && a2 == 0xE900000000000044 || (sub_232546628() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x495555746E657665 && a2 == 0xE900000000000044)
  {

    return 5;
  }

  else
  {
    v5 = sub_232546628();

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

uint64_t sub_23253EDC4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2324F4680();
  v3 = sub_2325458A8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v2, v3);
}

uint64_t sub_23253EE34@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore25NDFDeviceDiscoveryManager_logger;
  v4 = sub_2325458A8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_23253EEAC()
{
  v1 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore25NDFDeviceDiscoveryManager_discoveredEndpoints;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_23253EEF4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore25NDFDeviceDiscoveryManager_discoveredEndpoints;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_23253EFAC()
{
  v0 = objc_opt_self();
  v1 = &unk_284793910;
  v2 = [v0 interfaceWithProtocol_];

  result = [v2 setXPCType:sub_232545B78() forSelector:sel_startDelegatedDiscoveryFor_cancelAfter_deviceType_completionHandler_ argumentIndex:0 ofReply:1];
  qword_2814D7068 = v2;
  return result;
}

uint64_t *sub_23253F03C()
{
  if (qword_2814D6C70 != -1)
  {
    swift_once();
  }

  return &qword_2814D7068;
}

id sub_23253F08C()
{
  if (qword_2814D6C70 != -1)
  {
    swift_once();
  }

  v1 = qword_2814D7068;

  return v1;
}

uint64_t sub_23253F0E8()
{
  v1 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore25NDFDeviceDiscoveryManager_logger;
  v2 = sub_2325458A8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore25NDFDeviceDiscoveryManager_discoveredEndpoints);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_23253F160()
{
  v1 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore25NDFDeviceDiscoveryManager_logger;
  v2 = sub_2325458A8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore25NDFDeviceDiscoveryManager_discoveredEndpoints);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_23253F1E8()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  swift_defaultActor_initialize();
  v4 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore25NDFDeviceDiscoveryManager_logger;
  v5 = sub_2324F4680();
  v6 = sub_2325458A8();
  (*(*(v6 - 8) + 16))(v3 + v4, v5, v6);
  *(v3 + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore25NDFDeviceDiscoveryManager_discoveredEndpoints) = MEMORY[0x277D84F90];
  return v3;
}

uint64_t sub_23253F288()
{
  swift_defaultActor_initialize();
  v1 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore25NDFDeviceDiscoveryManager_logger;
  v2 = sub_2324F4680();
  v3 = sub_2325458A8();
  (*(*(v3 - 8) + 16))(v0 + v1, v2, v3);
  *(v0 + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore25NDFDeviceDiscoveryManager_discoveredEndpoints) = MEMORY[0x277D84F90];
  return v0;
}

double sub_23253F318()
{
  v0 = *(**sub_2324C4D38() + 272);

  v2 = v0(v1);

  return v2;
}

uint64_t sub_23253F390(double a1)
{
  *(v2 + 184) = v1;
  *(v2 + 176) = a1;
  return MEMORY[0x2822009F8](sub_23253F3B4, v1, 0);
}

uint64_t sub_23253F3B4()
{
  v1 = sub_2324C4D38();
  v2 = *(**v1 + 248);

  LOBYTE(v2) = v2(v3);

  if (v2)
  {
    sub_232545FB8();
    v4 = objc_allocWithZone(MEMORY[0x277CCAE80]);
    v5 = sub_232545F58();

    v6 = [v4 initWithMachServiceName:v5 options:4096];
    *(v0 + 24) = v6;

    if (qword_2814D6C70 != -1)
    {
      swift_once();
    }

    [v6 setRemoteObjectInterface:qword_2814D7068];
    [v6 activate];
    v7 = [v6 remoteObjectProxy];
    sub_232546338();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93880, &qword_232547840);
    if (swift_dynamicCast())
    {
      v8 = v0[22];
      v9 = *(v0 + 18);
      *(v0 + 25) = v9;
      v10 = sub_232527CE8();
      v11 = *v10;
      v12 = v10[1];

      v13 = sub_232545F58();
      *(v0 + 26) = v13;

      v14 = *(**v1 + 512);

      v14(v15);

      v16 = sub_2325458D8();
      if ((v16 & 0x100) != 0)
      {
        v17 = 6;
      }

      else
      {
        v17 = v16;
      }

      *(v0 + 2) = v0;
      *(v0 + 7) = v0 + 18;
      *(v0 + 3) = sub_23253F83C;
      v18 = swift_continuation_init();
      *(v0 + 17) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD938E8, &qword_23254A900);
      *(v0 + 10) = MEMORY[0x277D85DD0];
      *(v0 + 11) = 1107296256;
      *(v0 + 12) = sub_23253FE14;
      *(v0 + 13) = &block_descriptor_5;
      *(v0 + 14) = v18;
      [v9 startDelegatedDiscoveryFor:v13 cancelAfter:v17 deviceType:v0 + 10 completionHandler:v8];

      return MEMORY[0x282200938](v0 + 2);
    }

    v22 = *(v0 + 23) + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore25NDFDeviceDiscoveryManager_logger;
    v23 = sub_232545888();
    v24 = sub_2325461F8();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_2324C0000, v23, v24, "Failed to obtain remoteObjectProxy while contacting symptomsd-distributed", v25, 2u);
      MEMORY[0x238386450](v25, -1, -1);
    }

    [v6 invalidate];
  }

  else
  {
    v19 = *(v0 + 23) + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore25NDFDeviceDiscoveryManager_logger;
    v6 = sub_232545888();
    v20 = sub_232546208();
    if (os_log_type_enabled(v6, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_2324C0000, v6, v20, "Device discovery is not allowed, returning", v21, 2u);
      MEMORY[0x238386450](v21, -1, -1);
    }
  }

  v26 = *(v0 + 1);
  v27 = MEMORY[0x277D84F90];

  return v26(v27);
}

uint64_t sub_23253F83C()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 216) = v3;
  v4 = *(v1 + 184);
  if (v3)
  {
    v5 = sub_23253FD7C;
  }

  else
  {
    v5 = sub_23253F95C;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_23253F95C()
{
  v36 = v0;
  v1 = v0[18];

  v2 = MEMORY[0x238386580](v1);
  v3 = sub_232545B78();
  v4 = v0[23];
  if (v2 == v3)
  {
    v11 = v0 + 21;
    v0[21] = MEMORY[0x277D84F90];
    v12 = swift_allocObject();
    *(v12 + 16) = v0 + 21;
    *(v12 + 24) = v4;
    v13 = swift_allocObject();
    *(v13 + 16) = sub_232540310;
    *(v13 + 24) = v12;
    v0[14] = sub_23254031C;
    v0[15] = v13;
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_2325402A0;
    v0[13] = &block_descriptor_7;
    v14 = _Block_copy(v0 + 10);
    v15 = v0[15];

    xpc_array_apply(v1, v14);
    _Block_release(v14);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
      return result;
    }

    v18 = v0[23] + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore25NDFDeviceDiscoveryManager_logger;
    v19 = sub_232545888();
    v20 = sub_232546208();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v35 = v22;
      *v21 = 134218242;
      swift_beginAccess();
      v23 = *v11;
      *(v21 + 4) = *(*v11 + 16);
      *(v21 + 12) = 2080;
      v0[10] = v23;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD938F0, qword_23254A908);
      v24 = sub_232545F98();
      v26 = sub_2324C2220(v24, v25, &v35);

      *(v21 + 14) = v26;
      _os_log_impl(&dword_2324C0000, v19, v20, "Discovered %ld endpoints: %s", v21, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x238386450](v22, -1, -1);
      MEMORY[0x238386450](v21, -1, -1);
    }

    else
    {
    }

    v28 = v0[24];
    v27 = v0[25];
    v29 = v0[23];
    swift_beginAccess();
    v30 = v0[21];
    v31 = *(*v29 + 112);

    v31(v32);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v33 = v0[21];
    [v28 invalidate];

    v10 = v33;
  }

  else
  {
    v5 = sub_232545888();
    v6 = sub_2325461F8();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_2324C0000, v5, v6, "Endpoints array is not a valid XPC array", v7, 2u);
      MEMORY[0x238386450](v7, -1, -1);
    }

    v9 = v0[24];
    v8 = v0[25];

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    [v9 invalidate];

    v10 = MEMORY[0x277D84F90];
  }

  v34 = v0[1];

  return v34(v10);
}

uint64_t sub_23253FD7C()
{
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[24];
  v4 = v0[25];
  swift_willThrow();
  swift_unknownObjectRelease();

  [v3 invalidate];
  v5 = v0[1];
  v6 = v0[27];

  return v5();
}

uint64_t sub_23253FE14(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93690, &unk_232548400);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return MEMORY[0x282200958](v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      swift_unknownObjectRetain();
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200950](v5);
  }
}

BOOL sub_23253FEF0(uint64_t a1, size_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93658, &unk_232548950);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v31 - v5;
  v7 = sub_232545BA8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v31 - v13;
  v15 = nw_endpoint_create_from_dictionary();
  swift_unknownObjectRetain();
  sub_232545BB8();
  v16 = (*(v8 + 48))(v6, 1, v7);
  v17 = v16;
  if (v16 == 1)
  {
    sub_232540634(v6);
    swift_unknownObjectRetain();
    v23 = sub_232545888();
    v24 = sub_2325461F8();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v33 = v15;
      v34 = v26;
      *v25 = 136315138;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93970, &qword_232548960);
      v27 = sub_232545F98();
      v29 = sub_2324C2220(v27, v28, &v34);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_2324C0000, v23, v24, "Failed to obtain NWEndpoint from endpoint %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x238386450](v26, -1, -1);
      MEMORY[0x238386450](v25, -1, -1);

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v32 = v16;
    v31 = *(v8 + 32);
    v31(v14, v6, v7);
    (*(v8 + 16))(v12, v14, v7);
    v18 = *a2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v18;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v18 = sub_232540360(0, v18[2] + 1, 1, v18);
      *a2 = v18;
    }

    v21 = v18[2];
    v20 = v18[3];
    if (v21 >= v20 >> 1)
    {
      *a2 = sub_232540360(v20 > 1, v21 + 1, 1, v18);
    }

    swift_unknownObjectRelease();
    (*(v8 + 8))(v14, v7);
    v22 = *a2;
    *(v22 + 2) = v21 + 1;
    v31(&v22[((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v21], v12, v7);
    v17 = v32;
  }

  return v17 != 1;
}

uint64_t sub_2325402A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  swift_unknownObjectRetain();
  LOBYTE(v5) = v6(a2, a3);
  swift_unknownObjectRelease();
  return v5 & 1;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  return sub_2324C26D8(a2 + 32, a1 + 32);
}

{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23254031C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1() & 1;
}

uint64_t block_destroy_helper_6(uint64_t a1)
{
  v1 = *(a1 + 40);
}

{
  v1 = *(a1 + 40);
}

size_t sub_232540360(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93978, qword_23254A998);
  v10 = *(sub_232545BA8() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_232545BA8() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t type metadata accessor for NDFDeviceDiscoveryManager()
{
  result = qword_2814D6C60;
  if (!qword_2814D6C60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23254058C()
{
  result = sub_2325458A8();
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

uint64_t sub_232540634(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93658, &unk_232548950);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23254069C()
{
  v0 = sub_2325458A8();
  __swift_allocate_value_buffer(v0, qword_27DD98C40);
  v1 = __swift_project_value_buffer(v0, qword_27DD98C40);
  v2 = sub_2324F4680();
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_232540728()
{
  if (qword_27DD98A90 != -1)
  {
    swift_once();
  }

  v0 = sub_2325458A8();

  return __swift_project_value_buffer(v0, qword_27DD98C40);
}

uint64_t sub_23254078C@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DD98A90 != -1)
  {
    swift_once();
  }

  v2 = sub_2325458A8();
  v3 = __swift_project_value_buffer(v2, qword_27DD98C40);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_232540850()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return v1;
}

uint64_t sub_232540894()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);

  return v1;
}

uint64_t sub_2325408C4()
{
  swift_beginAccess();
  v1 = *(v0 + 144);
}

uint64_t sub_2325408FC(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 144);
  *(v1 + 144) = a1;
}

uint64_t sub_232540994()
{
  v10 = sub_232546238();
  v0 = *(v10 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_232546218();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v6 = sub_232545EA8();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9[1] = sub_2324CF4E4();
  sub_232545E88();
  v11 = MEMORY[0x277D84F90];
  sub_232544ED8(&qword_2814D4ED0, 255, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932B0, &unk_232547800);
  sub_2324E2640(&qword_2814D4F00, &unk_27DD932B0, &unk_232547800);
  sub_232546378();
  (*(v0 + 104))(v3, *MEMORY[0x277D85260], v10);
  return sub_232546258();
}

void sub_232540BE8()
{
  v1 = v0;
  if ((*(*v0 + 120))())
  {
    sub_232545E38();
  }

  (*(*v0 + 128))(0);
  if (qword_27DD98A90 != -1)
  {
    swift_once();
  }

  v2 = sub_2325458A8();
  __swift_project_value_buffer(v2, qword_27DD98C40);

  oslog = sub_232545888();
  v3 = sub_232546208();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v7 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_2324C2220(*(v1 + 112), *(v1 + 120), &v7);
    _os_log_impl(&dword_2324C0000, oslog, v3, "Stopped browsing for %s service", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x238386450](v5, -1, -1);
    MEMORY[0x238386450](v4, -1, -1);
  }
}

uint64_t sub_232540D94()
{
  v1 = sub_232545DB8();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = (&v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = v0[14];
  v6 = v0[15];
  v7 = v0[16];
  v8 = v0[17];
  *v4 = v5;
  v4[1] = v6;
  v4[2] = v7;
  v4[3] = v8;
  (*(v9 + 104))(v4, *MEMORY[0x277CD90D8]);
  sub_232545C78();

  sub_2324F526C();
  v10 = sub_232545E48();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  return sub_232545DE8();
}

uint64_t sub_232540EB4(double a1)
{
  *(v2 + 24) = v1;
  *(v2 + 16) = a1;
  *(v2 + 32) = *v1;
  return MEMORY[0x2822009F8](sub_232540F00, v1, 0);
}

uint64_t sub_232540F00(uint64_t a1, uint64_t a2)
{
  v3 = v2[3];
  v4 = v2[4];
  v5 = v2[2];
  v6 = sub_232544ED8(&qword_27DD93980, a2, type metadata accessor for NDFBonjourProbe);
  v7 = swift_task_alloc();
  v2[5] = v7;
  v7[2] = v3;
  v7[3] = v5;
  v7[4] = v4;
  v8 = *(MEMORY[0x277D85A40] + 4);
  v9 = swift_task_alloc();
  v2[6] = v9;
  *v9 = v2;
  v9[1] = sub_232541044;
  v10 = MEMORY[0x277D839B0];

  return MEMORY[0x2822008A0](v2 + 8, v3, v6, 0xD00000000000002ELL, 0x800000023254D220, sub_232543480, v7, v10);
}

uint64_t sub_232541044()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v9 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = *(v2 + 24);
    v5 = sub_232541188;
  }

  else
  {
    v6 = *(v2 + 40);
    v7 = *(v2 + 24);

    v5 = sub_23254116C;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_232541188()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[7];

  return v2(0);
}

uint64_t sub_2325411F0(uint64_t a1, void *a2, uint64_t a3, double a4)
{
  v73 = a1;
  v74 = a3;
  v6 = sub_232545E68();
  v67 = *(v6 - 8);
  v68 = v6;
  v7 = *(v67 + 64);
  MEMORY[0x28223BE20](v6);
  v65 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_232545EA8();
  v64 = *(v66 - 8);
  v9 = *(v64 + 64);
  MEMORY[0x28223BE20](v66);
  v63 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_232545EC8();
  v62 = *(v70 - 8);
  v11 = *(v62 + 64);
  v12 = MEMORY[0x28223BE20](v70);
  v61 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v69 = &v60 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93988, &qword_23254AA30);
  v71 = *(v15 - 8);
  v72 = *(v71 + 64);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v60 - v17;
  v19 = *(*a2 + 120);
  v20 = *a2 + 120;
  v21 = (v19)(v16);
  if (v21)
  {

    v21 = (*(*a2 + 144))(v22);
  }

  v23 = (*(*a2 + 152))(v21);
  (*(*a2 + 128))(v23);
  v75 = swift_allocObject();
  *(v75 + 16) = 0;
  v24 = v19();
  if (v24)
  {
    v25 = swift_allocObject();
    swift_weakInit();
    v26 = v71;
    (*(v71 + 16))(v18, v73, v15);
    v27 = (*(v26 + 80) + 32) & ~*(v26 + 80);
    v60 = v20;
    v28 = v19;
    v29 = (v72 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
    v30 = swift_allocObject();
    v31 = v75;
    *(v30 + 16) = v25;
    *(v30 + 24) = v31;
    (*(v26 + 32))(v30 + v27, v18, v15);
    *(v30 + v29) = v74;
    v19 = v28;

    sub_232545DC8();
  }

  if ((v19)(v24))
  {
    v32 = swift_allocObject();
    swift_weakInit();
    v33 = v71;
    (*(v71 + 16))(v18, v73, v15);
    v34 = *(v33 + 80);
    v60 = v18;
    v35 = v19;
    v36 = (v34 + 32) & ~v34;
    v37 = (v72 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
    v38 = swift_allocObject();
    v39 = v75;
    *(v38 + 16) = v32;
    *(v38 + 24) = v39;
    v40 = v38 + v36;
    v19 = v35;
    v18 = v60;
    (*(v33 + 32))(v40, v60, v15);
    *(v38 + v37) = v74;

    sub_232545DD8();
  }

  if (qword_27DD98A90 != -1)
  {
    swift_once();
  }

  v41 = sub_2325458A8();
  __swift_project_value_buffer(v41, qword_27DD98C40);

  v42 = sub_232545888();
  v43 = sub_232546208();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    aBlock[0] = v45;
    *v44 = 136315394;
    *(v44 + 4) = sub_2324C2220(a2[14], a2[15], aBlock);
    *(v44 + 12) = 2048;
    *(v44 + 14) = a4;
    _os_log_impl(&dword_2324C0000, v42, v43, "Starting Bonjour browser for service %s with %fs timeout", v44, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v45);
    MEMORY[0x238386450](v45, -1, -1);
    MEMORY[0x238386450](v44, -1, -1);
  }

  if (v19())
  {
    v46 = a2[19];
    sub_232545E08();
  }

  v60 = a2[19];
  v47 = v61;
  sub_232545EB8();
  sub_232545ED8();
  v62 = *(v62 + 8);
  (v62)(v47, v70);
  v48 = swift_allocObject();
  swift_weakInit();
  v49 = v71;
  (*(v71 + 16))(v18, v73, v15);
  v50 = (*(v49 + 80) + 40) & ~*(v49 + 80);
  v51 = (v72 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
  v52 = swift_allocObject();
  v53 = v75;
  *(v52 + 16) = v48;
  *(v52 + 24) = v53;
  *(v52 + 32) = a4;
  (*(v49 + 32))(v52 + v50, v18, v15);
  *(v52 + v51) = v74;
  aBlock[4] = sub_232543674;
  aBlock[5] = v52;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2324D0160;
  aBlock[3] = &block_descriptor_6;
  v54 = _Block_copy(aBlock);

  v55 = v63;
  sub_232545E78();
  v76 = MEMORY[0x277D84F90];
  sub_232544ED8(&qword_2814D4F30, 255, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93328, &qword_232547960);
  sub_2324E2640(&qword_2814D4F10, &qword_27DD93328, &qword_232547960);
  v56 = v65;
  v57 = v68;
  sub_232546378();
  v58 = v69;
  MEMORY[0x238385810](v69, v55, v56, v54);
  _Block_release(v54);
  (*(v67 + 8))(v56, v57);
  (*(v64 + 8))(v55, v66);
  (v62)(v58, v70);
}

uint64_t sub_232541B58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v88 = a4;
  v91 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93630, &qword_232547550);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v90 = &v86 - v7;
  v93 = sub_232545D98();
  v8 = *(v93 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v93);
  v12 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v94 = (&v86 - v14);
  v15 = MEMORY[0x28223BE20](v13);
  v87 = &v86 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = (&v86 - v17);
  v19 = sub_232545DF8();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v86 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v86 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = &v86 - v28;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v92 = v8;
  v89 = result;
  v31 = *(v20 + 16);
  v86 = a1;
  v31(v29, a1, v19);
  v32 = (*(v20 + 88))(v29, v19);
  if (v32 == *MEMORY[0x277CD9108])
  {
    (*(v20 + 96))(v29, v19);
    v33 = v92;
    v34 = v94;
    v35 = v29;
    v36 = v93;
    (*(v92 + 32))(v94, v35, v93);
    if (qword_27DD98A90 != -1)
    {
      swift_once();
    }

    v37 = sub_2325458A8();
    __swift_project_value_buffer(v37, qword_27DD98C40);
    v38 = *(v33 + 16);
    v38(v12, v34, v36);
    v39 = sub_232545888();
    v40 = sub_2325461F8();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *v41 = 138412290;
      sub_232544ED8(&qword_27DD939A8, 255, MEMORY[0x277CD8FC0]);
      swift_allocError();
      v38(v43, v12, v36);
      v44 = _swift_stdlib_bridgeErrorToNSError();
      v45 = *(v33 + 8);
      v45(v12, v36);
      *(v41 + 4) = v44;
      *v42 = v44;
      _os_log_impl(&dword_2324C0000, v39, v40, "Browser failed to browse for service due to %@", v41, 0xCu);
      sub_2324C28AC(v42, &qword_27DD93218, &qword_232547360);
      v46 = v42;
      v34 = v94;
      MEMORY[0x238386450](v46, -1, -1);
      MEMORY[0x238386450](v41, -1, -1);
    }

    else
    {

      v45 = *(v33 + 8);
      v45(v12, v36);
    }

    v62 = sub_2325460F8();
    v63 = v90;
    (*(*(v62 - 8) + 56))(v90, 1, 1, v62);
    v64 = swift_allocObject();
    v64[2] = 0;
    v64[3] = 0;
    v64[4] = v89;

    sub_2324C8F70(0, 0, v63, &unk_23254AA80, v64);

    v65 = v91;
    swift_beginAccess();
    if ((*(v65 + 16) & 1) == 0)
    {
      swift_beginAccess();
      *(v65 + 16) = 1;
      sub_232544ED8(&qword_27DD939A8, 255, MEMORY[0x277CD8FC0]);
      v71 = swift_allocError();
      v38(v72, v34, v36);
      v95 = v71;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93988, &qword_23254AA30);
      sub_2325460A8();

      return (v45)(v34, v36);
    }

    v45(v34, v36);
  }

  if (v32 == *MEMORY[0x277CD9110])
  {
    (*(v20 + 96))(v29, v19);
    v47 = v92;
    v48 = v93;
    v49 = v18;
    (*(v92 + 32))(v18, v29, v93);
    if (qword_27DD98A90 != -1)
    {
      swift_once();
    }

    v50 = sub_2325458A8();
    __swift_project_value_buffer(v50, qword_27DD98C40);
    v51 = *(v47 + 16);
    v52 = v87;
    v51(v87, v18, v48);
    v53 = sub_232545888();
    v54 = sub_2325461E8();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v94 = v49;
      v56 = v55;
      v57 = v47;
      v58 = swift_slowAlloc();
      *v56 = 138412290;
      sub_232544ED8(&qword_27DD939A8, 255, MEMORY[0x277CD8FC0]);
      swift_allocError();
      v51(v59, v52, v48);
      v60 = _swift_stdlib_bridgeErrorToNSError();
      v61 = *(v57 + 8);
      v61(v52, v48);
      *(v56 + 4) = v60;
      *v58 = v60;
      _os_log_impl(&dword_2324C0000, v53, v54, "Browser waiting for connectivity due to %@", v56, 0xCu);
      sub_2324C28AC(v58, &qword_27DD93218, &qword_232547360);
      MEMORY[0x238386450](v58, -1, -1);
      MEMORY[0x238386450](v56, -1, -1);

      return (v61)(v94, v48);
    }

    else
    {

      v73 = *(v47 + 8);
      v73(v52, v48);
      return (v73)(v49, v48);
    }
  }

  if (v32 == *MEMORY[0x277CD9100])
  {
    if (qword_27DD98A90 != -1)
    {
      swift_once();
    }

    v66 = sub_2325458A8();
    __swift_project_value_buffer(v66, qword_27DD98C40);
    v67 = sub_232545888();
    v68 = sub_2325461E8();
    if (!os_log_type_enabled(v67, v68))
    {
      goto LABEL_33;
    }

    v69 = swift_slowAlloc();
    *v69 = 0;
    v70 = "Browser in setup mode";
LABEL_32:
    _os_log_impl(&dword_2324C0000, v67, v68, v70, v69, 2u);
    MEMORY[0x238386450](v69, -1, -1);
LABEL_33:
  }

  if (v32 == *MEMORY[0x277CD90F8])
  {
    if (qword_27DD98A90 != -1)
    {
      swift_once();
    }

    v74 = sub_2325458A8();
    __swift_project_value_buffer(v74, qword_27DD98C40);
    v67 = sub_232545888();
    v68 = sub_2325461E8();
    if (!os_log_type_enabled(v67, v68))
    {
      goto LABEL_33;
    }

    v69 = swift_slowAlloc();
    *v69 = 0;
    v70 = "Browser is ready";
    goto LABEL_32;
  }

  if (v32 == *MEMORY[0x277CD9118])
  {
    if (qword_27DD98A90 != -1)
    {
      swift_once();
    }

    v75 = sub_2325458A8();
    __swift_project_value_buffer(v75, qword_27DD98C40);
    v67 = sub_232545888();
    v68 = sub_2325461E8();
    if (!os_log_type_enabled(v67, v68))
    {
      goto LABEL_33;
    }

    v69 = swift_slowAlloc();
    *v69 = 0;
    v70 = "Browser was cancelled";
    goto LABEL_32;
  }

  if (qword_27DD98A90 != -1)
  {
    swift_once();
  }

  v76 = sub_2325458A8();
  __swift_project_value_buffer(v76, qword_27DD98C40);
  v31(v27, v86, v19);
  v77 = sub_232545888();
  v78 = sub_2325461F8();
  if (os_log_type_enabled(v77, v78))
  {
    v79 = swift_slowAlloc();
    v94 = swift_slowAlloc();
    v96 = v94;
    *v79 = 136315138;
    v31(v24, v27, v19);
    v80 = sub_232545F88();
    v82 = v81;
    v83 = *(v20 + 8);
    LODWORD(v93) = v78;
    v83(v27, v19);
    v84 = sub_2324C2220(v80, v82, &v96);

    *(v79 + 4) = v84;
    _os_log_impl(&dword_2324C0000, v77, v93, "Browser entered unknown state %s", v79, 0xCu);
    v85 = v94;
    __swift_destroy_boxed_opaque_existential_0(v94);
    MEMORY[0x238386450](v85, -1, -1);
    MEMORY[0x238386450](v79, -1, -1);
  }

  else
  {

    v83 = *(v20 + 8);
    v83(v27, v19);
  }

  return (v83)(v29, v19);
}

uint64_t sub_232542818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = (*a4 + 144) & 0xFFFFFFFFFFFFLL | 0x6131000000000000;
  v4[3] = *(*a4 + 144);
  v4[4] = v5;
  return MEMORY[0x2822009F8](sub_232542854, a4, 0);
}

uint64_t sub_232542854()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  (*(v0 + 24))();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2325428B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93630, &qword_232547550);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v43 - v9;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = result;
    v44 = v10;
    v49 = MEMORY[0x277D84FA0];
    sub_232544BDC(a1, &v49);
    if (qword_27DD98A90 != -1)
    {
      swift_once();
    }

    v13 = sub_2325458A8();
    __swift_project_value_buffer(v13, qword_27DD98C40);

    v14 = sub_232545888();
    v15 = sub_2325461E8();

    v16 = os_log_type_enabled(v14, v15);
    v45 = a3;
    if (v16)
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v43 = a4;
      v19 = v18;
      v48[0] = v18;
      *v17 = 136315394;
      sub_232545E28();
      sub_232544ED8(&qword_27DD93990, 255, MEMORY[0x277CD9168]);
      v20 = sub_2325461A8();
      v22 = sub_2324C2220(v20, v21, v48);

      *(v17 + 4) = v22;
      *(v17 + 12) = 2080;
      swift_beginAccess();

      v23 = sub_2325461A8();
      v25 = v24;

      v26 = sub_2324C2220(v23, v25, v48);

      *(v17 + 14) = v26;
      _os_log_impl(&dword_2324C0000, v14, v15, "[Bonjour Browse] Results = %s, Filtered Results = %s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x238386450](v19, -1, -1);
      MEMORY[0x238386450](v17, -1, -1);
    }

    swift_beginAccess();
    v27 = v49;
    if (*(v49 + 16))
    {

      v28 = sub_232545888();
      v29 = sub_232546208();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v47[0] = v31;
        *v30 = 134218498;
        *(v30 + 4) = *(v27 + 16);
        *(v30 + 12) = 2080;
        v32 = *(v12 + 112);
        v33 = *(v12 + 120);

        v34 = sub_2324C2220(v32, v33, v47);

        *(v30 + 14) = v34;
        *(v30 + 22) = 2080;
        sub_232545E28();
        sub_232544ED8(&qword_27DD93990, 255, MEMORY[0x277CD9168]);

        v35 = sub_2325461A8();
        v37 = v36;

        v38 = sub_2324C2220(v35, v37, v47);

        *(v30 + 24) = v38;
        _os_log_impl(&dword_2324C0000, v28, v29, "Found %ld Bonjour services for %s: %s", v30, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x238386450](v31, -1, -1);
        MEMORY[0x238386450](v30, -1, -1);
      }

      v39 = v45;
      v40 = sub_2325460F8();
      v41 = v44;
      (*(*(v40 - 8) + 56))(v44, 1, 1, v40);
      v42 = swift_allocObject();
      v42[2] = 0;
      v42[3] = 0;
      v42[4] = v12;

      sub_2324C8F70(0, 0, v41, &unk_23254AA68, v42);

      swift_beginAccess();
      if ((*(v39 + 16) & 1) == 0)
      {
        swift_beginAccess();
        *(v39 + 16) = 1;
        v46 = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93988, &qword_23254AA30);
        sub_2325460B8();
      }
    }
  }

  return result;
}

uint64_t sub_232542E40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = (*a4 + 144) & 0xFFFFFFFFFFFFLL | 0x6131000000000000;
  v4[3] = *(*a4 + 144);
  v4[4] = v5;
  return MEMORY[0x2822009F8](sub_232544F20, a4, 0);
}

uint64_t sub_232542E7C(double a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93630, &qword_232547550);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v17[-v7];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    swift_beginAccess();
    if ((*(a3 + 16) & 1) == 0)
    {
      if (qword_27DD98A90 != -1)
      {
        swift_once();
      }

      v11 = sub_2325458A8();
      __swift_project_value_buffer(v11, qword_27DD98C40);
      v12 = sub_232545888();
      v13 = sub_232546208();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 134217984;
        *(v14 + 4) = a1;
        _os_log_impl(&dword_2324C0000, v12, v13, "About to stop Bonjour browser due to timeout (%f seconds)", v14, 0xCu);
        MEMORY[0x238386450](v14, -1, -1);
      }

      v15 = sub_2325460F8();
      (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
      v16 = swift_allocObject();
      v16[2] = 0;
      v16[3] = 0;
      v16[4] = v10;

      sub_2324C8F70(0, 0, v8, &unk_23254AA40, v16);

      swift_beginAccess();
      *(a3 + 16) = 1;
      v17[7] = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93988, &qword_23254AA30);
      sub_2325460B8();
    }
  }

  return result;
}

uint64_t sub_2325430FC()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 136);

  v3 = *(v0 + 144);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_23254313C()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 136);

  v3 = *(v0 + 144);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_23254318C()
{
  v0 = swift_allocObject();
  sub_2325431C4();
  return v0;
}

void *sub_2325431C4()
{
  v12 = sub_232546238();
  v1 = *(v12 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v12);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_232546218();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v7 = sub_232545EA8();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  swift_defaultActor_initialize();
  v0[14] = 0xD000000000000014;
  v0[15] = 0x800000023254D1D0;
  v0[16] = 0x2E6C61636F6CLL;
  v0[17] = 0xE600000000000000;
  v0[18] = 0;
  v9 = sub_2324CF4E4();
  v11[0] = "_companion-link._tcp";
  v11[1] = v9;
  sub_232545E88();
  v13 = MEMORY[0x277D84F90];
  sub_232544ED8(&qword_2814D4ED0, 255, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932B0, &unk_232547800);
  sub_2324E2640(&qword_2814D4F00, &unk_27DD932B0, &unk_232547800);
  sub_232546378();
  (*(v1 + 104))(v4, *MEMORY[0x277D85260], v12);
  v0[19] = sub_232546258();
  return v0;
}

uint64_t sub_232543490(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93988, &qword_23254AA30) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_232541B58(a1, v4, v5, v6);
}

uint64_t objectdestroy_8Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93988, &qword_23254AA30);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  v7 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_2325435F4(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93988, &qword_23254AA30) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_2325428B8(a1, v4, v5, v6);
}

uint64_t sub_232543674()
{
  v1 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93988, &qword_23254AA30) - 8) + 80);
  v2 = *(v0 + 2);
  v3 = *(v0 + 3);
  v4 = v0[4];

  return sub_232542E7C(v4, v2, v3);
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_232543700()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2324C290C;

  return sub_232542E40(v3, v4, v5, v2);
}

uint64_t sub_232543794(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93630, &qword_232547550);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_232543804(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_232545E28();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_232544ED8(&qword_27DD93990, 255, MEMORY[0x277CD9168]);
  v36 = a2;
  v13 = sub_232545F08();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_232544ED8(&qword_27DD93998, 255, MEMORY[0x277CD9168]);
      v23 = sub_232545F48();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_232543E4C(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_232543AEC(uint64_t a1)
{
  v2 = v1;
  v41 = sub_232545E28();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD939A0, &qword_23254AA70);
  result = sub_2325463B8();
  v10 = result;
  if (*(v7 + 16))
  {
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
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_232544ED8(&qword_27DD93990, 255, MEMORY[0x277CD9168]);
      result = sub_232545F08();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_232543E4C(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_232545E28();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_232543AEC(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_2325440F8();
      goto LABEL_12;
    }

    sub_232544330(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_232544ED8(&qword_27DD93990, 255, MEMORY[0x277CD9168]);
  v15 = sub_232545F08();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_232544ED8(&qword_27DD93998, 255, MEMORY[0x277CD9168]);
      v23 = sub_232545F48();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_232546658();
  __break(1u);
  return result;
}

void *sub_2325440F8()
{
  v1 = v0;
  v2 = sub_232545E28();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD939A0, &qword_23254AA70);
  v7 = *v0;
  v8 = sub_2325463A8();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    for (i = v3 + 16; v16; result = (*(v3 + 32))(*(v9 + 48) + v21, v6, v2))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_14:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v20 = *(v11 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

uint64_t sub_232544330(uint64_t a1)
{
  v2 = v1;
  v37 = sub_232545E28();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD939A0, &qword_23254AA70);
  v10 = sub_2325463B8();
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
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_232544ED8(&qword_27DD93990, 255, MEMORY[0x277CD9168]);
      result = sub_232545F08();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_232544650(uint64_t a1, uint64_t a2)
{
  v54 = a2;
  v57 = sub_232545E28();
  v4 = *(v57 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v57);
  v53 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v55 = &v52 - v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v52 - v10;
  v12 = sub_232545C08();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v52 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v52 - v17;
  v56 = a1;
  v19 = sub_232545E18();
  v58 = *(v19 + 16);
  if (v58)
  {
    v20 = v12;
    v21 = 0;
    v59 = (v13 + 8);
    v60 = v13 + 16;
    while (1)
    {
      if (v21 >= *(v19 + 16))
      {
        __break(1u);
        goto LABEL_13;
      }

      v2 = *(v13 + 16);
      v12 = v20;
      v2(v18, v19 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v21, v20);
      sub_232545BF8();
      v22 = sub_232545FF8();

      if (v22)
      {
        break;
      }

      sub_232545BF8();
      v23 = sub_232545FF8();

      if (v23)
      {
        break;
      }

      ++v21;
      (*v59)(v18, v20);
      if (v58 == v21)
      {
        goto LABEL_7;
      }
    }

    if (qword_27DD98A90 == -1)
    {
      goto LABEL_9;
    }

LABEL_13:
    swift_once();
LABEL_9:
    v28 = sub_2325458A8();
    __swift_project_value_buffer(v28, qword_27DD98C40);
    v29 = *(v4 + 16);
    v30 = v11;
    v31 = v57;
    v29(v11, v56, v57);
    v32 = v52;
    v2(v52, v18, v12);
    v33 = sub_232545888();
    v34 = sub_232546208();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v56 = v12;
      v36 = v29;
      v37 = v31;
      v38 = v35;
      v60 = swift_slowAlloc();
      v61 = v60;
      *v38 = 136315394;
      LODWORD(v58) = v34;
      v36(v55, v30, v37);
      v39 = sub_232545F88();
      v40 = v32;
      v42 = v41;
      (*(v4 + 8))(v30, v37);
      v43 = sub_2324C2220(v39, v42, &v61);

      *(v38 + 4) = v43;
      *(v38 + 12) = 2080;
      v44 = sub_232545BF8();
      v46 = v45;
      v47 = *v59;
      v48 = v56;
      (*v59)(v40, v56);
      v49 = sub_2324C2220(v44, v46, &v61);

      *(v38 + 14) = v49;
      _os_log_impl(&dword_2324C0000, v33, v58, "Ignoring Bonjour browse result %s, ifname is %s", v38, 0x16u);
      v50 = v60;
      swift_arrayDestroy();
      MEMORY[0x238386450](v50, -1, -1);
      MEMORY[0x238386450](v38, -1, -1);

      return (v47)(v18, v48);
    }

    else
    {

      v51 = *v59;
      (*v59)(v32, v12);
      (*(v4 + 8))(v30, v31);
      return (v51)(v18, v12);
    }
  }

  else
  {
LABEL_7:

    v24 = v53;
    v25 = v57;
    (*(v4 + 16))(v53, v56, v57);
    v26 = v55;
    sub_232543804(v55, v24);
    return (*(v4 + 8))(v26, v25);
  }
}

uint64_t sub_232544BDC(uint64_t a1, uint64_t a2)
{
  v17 = a2;
  v3 = sub_232545E28();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 56);
  v11 = (v8 + 63) >> 6;
  v16 = v4 + 16;
  v12 = (v4 + 8);

  v14 = 0;
  if (v10)
  {
    while (1)
    {
      v15 = v14;
LABEL_8:
      (*(v4 + 16))(v7, *(a1 + 48) + *(v4 + 72) * (__clz(__rbit64(v10)) | (v15 << 6)), v3);
      sub_232544650(v7, v17);
      if (v18)
      {
        break;
      }

      v10 &= v10 - 1;
      result = (*v12)(v7, v3);
      v14 = v15;
      if (!v10)
      {
        goto LABEL_5;
      }
    }

    (*v12)(v7, v3);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v11)
      {
      }

      v10 = *(a1 + 56 + 8 * v15);
      ++v14;
      if (v10)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_232544DB0()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2324C290C;

  return sub_232542E40(v3, v4, v5, v2);
}

uint64_t sub_232544E44()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2324C2910;

  return sub_232542818(v3, v4, v5, v2);
}

uint64_t sub_232544ED8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_232544F24()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932E0, qword_2325472E0);
  __swift_allocate_value_buffer(v0, qword_2814D6E50);
  v1 = __swift_project_value_buffer(v0, qword_2814D6E50);
  v2 = IDSCopyLocalDeviceUniqueID();
  if (v2)
  {
    v3 = v2;
    sub_232545F68();

    sub_232545698();
  }

  else
  {
    v5 = sub_2325456F8();
    v6 = *(*(v5 - 8) + 56);

    return v6(v1, 1, 1, v5);
  }
}

uint64_t sub_232545018()
{
  if (qword_2814D6E48 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932E0, qword_2325472E0);

  return __swift_project_value_buffer(v0, qword_2814D6E50);
}

uint64_t static NDFConstants.idsDeviceID.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_2814D6E48 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932E0, qword_2325472E0);
  v3 = __swift_project_value_buffer(v2, qword_2814D6E50);

  return sub_2324C1D3C(v3, a1);
}

uint64_t sub_23254546C()
{
  v2[3] = &type metadata for SymptomsFeatures;
  v2[4] = sub_2325454BC();
  v0 = sub_2325457E8();
  __swift_destroy_boxed_opaque_existential_0(v2);
  return v0 & 1;
}

unint64_t sub_2325454BC()
{
  result = qword_2814D5A10;
  if (!qword_2814D5A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814D5A10);
  }

  return result;
}

unint64_t sub_232545514()
{
  result = qword_27DD939B0;
  if (!qword_27DD939B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD939B0);
  }

  return result;
}