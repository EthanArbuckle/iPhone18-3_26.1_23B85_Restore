__n128 sub_1B5E07180(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1B5E0718C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1B5E071CC(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

__n128 sub_1B5E0721C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1B5E07230(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1B5E07270(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for MailMessage.VisualPromptOptions(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for MailMessage.VisualPromptOptions(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v3 = -1;
    return (v3 + 1);
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = a1[3];
      if (a1[3])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
LABEL_5:
        v3 = (*a1 | (a1[2] << 16) | (v2 << 24)) - 16776962;
        return (v3 + 1);
      }
    }
  }

  v4 = a1[1];
  v5 = v4 >= 2;
  v3 = (v4 + 2147483646) & 0x7FFFFFFF;
  if (!v5)
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for MailMessage.VisualPromptOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *(result + 1) = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MailMessage.ThreadVisualPromptOptions(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for MailMessage.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
    if (a2 + 7 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 7) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for MailMessage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MailMessage.ThreadVisualPromptOptions.CodingKeys(unsigned int *a1, int a2)
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

  return *a1;
}

_BYTE *storeEnumTagSinglePayload for MailMessage.ThreadVisualPromptOptions.CodingKeys(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for MailMessage.ThreadClassificationOptions.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1B5E0781C(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for SummarizationXPCRequest.Request.Category(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *sub_1B5E07990(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1B5E07A70()
{
  result = qword_1EB90DCB0;
  if (!qword_1EB90DCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90DCB0);
  }

  return result;
}

unint64_t sub_1B5E07AC8()
{
  result = qword_1EB90DCB8;
  if (!qword_1EB90DCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90DCB8);
  }

  return result;
}

unint64_t sub_1B5E07B20()
{
  result = qword_1EB90DCC0;
  if (!qword_1EB90DCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90DCC0);
  }

  return result;
}

unint64_t sub_1B5E07B78()
{
  result = qword_1EB90DCC8;
  if (!qword_1EB90DCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90DCC8);
  }

  return result;
}

unint64_t sub_1B5E07BD0()
{
  result = qword_1EB90DCD0;
  if (!qword_1EB90DCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90DCD0);
  }

  return result;
}

unint64_t sub_1B5E07C28()
{
  result = qword_1EB90DCD8;
  if (!qword_1EB90DCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90DCD8);
  }

  return result;
}

unint64_t sub_1B5E07C80()
{
  result = qword_1EB90DCE0;
  if (!qword_1EB90DCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90DCE0);
  }

  return result;
}

unint64_t sub_1B5E07CD8()
{
  result = qword_1EB90D8B8;
  if (!qword_1EB90D8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D8B8);
  }

  return result;
}

unint64_t sub_1B5E07D30()
{
  result = qword_1EB90D8C0;
  if (!qword_1EB90D8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D8C0);
  }

  return result;
}

unint64_t sub_1B5E07D88()
{
  result = qword_1EB90DCE8;
  if (!qword_1EB90DCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90DCE8);
  }

  return result;
}

unint64_t sub_1B5E07DE0()
{
  result = qword_1EB90DCF0;
  if (!qword_1EB90DCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90DCF0);
  }

  return result;
}

unint64_t sub_1B5E07E38()
{
  result = qword_1EB90DCF8;
  if (!qword_1EB90DCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90DCF8);
  }

  return result;
}

unint64_t sub_1B5E07E90()
{
  result = qword_1EB90DD00;
  if (!qword_1EB90DD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90DD00);
  }

  return result;
}

unint64_t sub_1B5E07EE8()
{
  result = qword_1EB90DD08;
  if (!qword_1EB90DD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90DD08);
  }

  return result;
}

unint64_t sub_1B5E07F40()
{
  result = qword_1EB90DD10;
  if (!qword_1EB90DD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90DD10);
  }

  return result;
}

unint64_t sub_1B5E07F98()
{
  result = qword_1EB90D888;
  if (!qword_1EB90D888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D888);
  }

  return result;
}

unint64_t sub_1B5E07FF0()
{
  result = qword_1EB90D890;
  if (!qword_1EB90D890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D890);
  }

  return result;
}

unint64_t sub_1B5E08048()
{
  result = qword_1EB90DD18;
  if (!qword_1EB90DD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90DD18);
  }

  return result;
}

unint64_t sub_1B5E080A0()
{
  result = qword_1EB90DD20;
  if (!qword_1EB90DD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90DD20);
  }

  return result;
}

unint64_t sub_1B5E080F8()
{
  result = qword_1EB90D8A0;
  if (!qword_1EB90D8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D8A0);
  }

  return result;
}

unint64_t sub_1B5E08150()
{
  result = qword_1EB90D8A8;
  if (!qword_1EB90D8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D8A8);
  }

  return result;
}

void sub_1B5E081A4(uint64_t a1)
{
  v5 = sub_1B5EA4BA0();
  v6 = sub_1B5DF5DA8(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1B5DF5E8C();
  v10 = MEMORY[0x1EEE9AC00](v9);
  sub_1B5E08A28(v10, v11, v12, v13, v14, v15, v16, v17, v32);
  if (v1 && (sub_1B5DF33E0(&qword_1EB90DD40, &qword_1B5EB0908), v18 = sub_1B5E08A90(), *(a1 + 16)))
  {
    sub_1B5E08728();
    while (v19 < *(a1 + 16))
    {
      v20 = sub_1B5E087D4(v19);
      (a1)(v20);
      v21 = *(v18 + 40);
      sub_1B5E087BC();
      sub_1B5E08594(&unk_1EB90DD48);
      sub_1B5E08B94();
      sub_1B5E08B5C();
      while (1)
      {
        sub_1B5E088FC(v22);
        if (v24)
        {
          break;
        }

        v25 = sub_1B5E08994();
        (a1)(v25);
        sub_1B5E087BC();
        sub_1B5E08594(&unk_1EB90DD50);
        sub_1B5E08AF4();
        v26 = sub_1B5E08B48();
        (v18)(v26);
        if (v21)
        {
          (v18)(v33, v5);
          v18 = v3;
          goto LABEL_12;
        }

        v22 = v2 + 1;
        v18 = v3;
      }

      v27 = sub_1B5E088C4(v23);
      v28(v27);
      v29 = *(v18 + 16);
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        goto LABEL_16;
      }

      *(v18 + 16) = v31;
LABEL_12:
      sub_1B5E08A04();
      if (v24)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  else
  {
LABEL_14:
  }
}

void sub_1B5E0839C(uint64_t a1)
{
  v5 = sub_1B5EA4BC0();
  v6 = sub_1B5DF5DA8(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1B5DF5E8C();
  v10 = MEMORY[0x1EEE9AC00](v9);
  sub_1B5E08A28(v10, v11, v12, v13, v14, v15, v16, v17, v32);
  if (v1 && (sub_1B5DF33E0(&qword_1EB90DD28, &qword_1B5EB0900), v18 = sub_1B5E08A90(), *(a1 + 16)))
  {
    sub_1B5E08728();
    while (v19 < *(a1 + 16))
    {
      v20 = sub_1B5E087D4(v19);
      (a1)(v20);
      v21 = *(v18 + 40);
      sub_1B5E087A4();
      sub_1B5E08594(&unk_1EB90DD30);
      sub_1B5E08B94();
      sub_1B5E08B5C();
      while (1)
      {
        sub_1B5E088FC(v22);
        if (v24)
        {
          break;
        }

        v25 = sub_1B5E08994();
        (a1)(v25);
        sub_1B5E087A4();
        sub_1B5E08594(&unk_1EB90DD38);
        sub_1B5E08AF4();
        v26 = sub_1B5E08B48();
        (v18)(v26);
        if (v21)
        {
          (v18)(v33, v5);
          v18 = v3;
          goto LABEL_12;
        }

        v22 = v2 + 1;
        v18 = v3;
      }

      v27 = sub_1B5E088C4(v23);
      v28(v27);
      v29 = *(v18 + 16);
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        goto LABEL_16;
      }

      *(v18 + 16) = v31;
LABEL_12:
      sub_1B5E08A04();
      if (v24)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  else
  {
LABEL_14:
  }
}

unint64_t sub_1B5E08594(uint64_t a1)
{
  result = sub_1B5E08A1C(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1B5E086A8()
{
  v5 = *(v4 - 72);
  *(v4 - 248) = v5;
  *(v4 - 224) = *(v4 - 256);
  *(v4 - 216) = v1;
  *(v4 - 208) = *(v4 - 232);
  *(v4 - 200) = v0;
  *(v4 - 199) = *(v4 - 236);
  *(v4 - 192) = *(v4 - 264);
  *(v4 - 184) = v2;
  *(v4 - 176) = *(v4 - 268);
  *(v4 - 168) = v5;
  v6 = *(v4 - 208);
  *v3 = *(v4 - 224);
  v3[1] = v6;
  v7 = *(v4 - 176);
  v3[2] = *(v4 - 192);
  v3[3] = v7;
  return v4 - 224;
}

uint64_t sub_1B5E08704()
{

  return sub_1B5EA5DC0();
}

void sub_1B5E08728()
{
  *(v2 - 96) = v1 + 56;
  v3 = *(v2 - 120);
  v4 = *(v3 + 80);
  *(v2 - 144) = v0;
  *(v2 - 136) = v0 + ((v4 + 32) & ~v4);
  *(v2 - 104) = v3 + 16;
  *(v2 - 152) = v3 + 32;
}

uint64_t sub_1B5E08764()
{
  *(v6 - 160) = v5;
  *(v6 - 152) = v1;
  *(v6 - 144) = v4;
  *(v6 - 136) = *(v6 - 272);
  *(v6 - 135) = *(v6 - 236);
  *(v6 - 128) = v0;
  *(v6 - 120) = v3;
  *(v6 - 112) = v2;
  *(v6 - 104) = *(v6 - 248);
  return v6 - 160;
}

uint64_t sub_1B5E087D4@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 - 120);
  v3 = *(v2 + 72);
  *(v1 - 112) = a1 + 1;
  v4 = *(v1 - 136) + v3 * a1;
  v5 = *(v2 + 16);
  result = *(v1 - 88);
  v7 = *(v1 - 104);
  return result;
}

uint64_t sub_1B5E0888C()
{

  return sub_1B5EA5F00();
}

uint64_t sub_1B5E088C4@<X0>(uint64_t a1@<X8>)
{
  v7 = *(v6 - 88);
  *(*(v6 - 96) + 8 * a1) = v2 | v1;
  result = *(v4 + 48) + v3 * v5;
  v9 = **(v6 - 152);
  return result;
}

uint64_t sub_1B5E0891C()
{
  v2 = *(v0 - 192);
  *(v0 - 272) = *(v0 - 208);
  v3 = *(v0 - 176);
  *(v0 - 256) = v2;
  *(v0 - 240) = v3;
  *(v0 - 231) = *(v0 - 167);

  return sub_1B5E06738(v0 - 272);
}

uint64_t sub_1B5E0894C()
{
  *(v1 - 256) = v0;
  v3 = *(v1 - 152);
  *(v1 - 264) = *(v1 - 160);
  *(v1 - 268) = *(v1 - 144);
}

uint64_t sub_1B5E08994()
{
  v5 = *(v2 + 48) + v1 * v3;
  result = v0;
  v7 = *(v4 - 104);
  return result;
}

uint64_t sub_1B5E089D0()
{

  return sub_1B5EA5D60();
}

void sub_1B5E08A04()
{
  v1 = *(v0 - 112);
  v2 = *(v0 - 128);
  v3 = *(v0 - 144);
}

uint64_t sub_1B5E08A40()
{

  return type metadata accessor for MailMessage();
}

uint64_t sub_1B5E08A90()
{

  return sub_1B5EA5B90();
}

uint64_t sub_1B5E08AAC()
{

  return sub_1B5EA6030();
}

uint64_t sub_1B5E08AD0()
{

  return sub_1B5EA6030();
}

uint64_t sub_1B5E08AF4()
{
  v2 = *(v0 - 88);

  return sub_1B5EA5660();
}

uint64_t sub_1B5E08B94()
{

  return sub_1B5EA55F0();
}

uint64_t sub_1B5E08BD0()
{
  v2 = *v0;
  v3 = v0[1];
}

uint64_t sub_1B5E08C88(uint64_t a1)
{
  v2 = sub_1B5E08E84();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B5E08CC4(uint64_t a1)
{
  v2 = sub_1B5E08E84();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void NoteMessage.VisualPromptOptions.encode(to:)()
{
  sub_1B5DF7168();
  v3 = v2;
  v4 = sub_1B5DF33E0(&qword_1EB90DD60, &qword_1B5EB0920);
  sub_1B5DF5DA8(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v14 - v10;
  v12 = *v0;
  v15 = v0[1];
  v14[3] = v0[2];
  v13 = v3[4];
  sub_1B5DF3BFC(v3, v3[3]);
  sub_1B5E08E84();
  sub_1B5EA6040();
  sub_1B5E065E0();
  sub_1B5E089B0();
  sub_1B5EA5EA0();
  if (!v1)
  {
    sub_1B5E089B0();
    sub_1B5EA5E60();
    sub_1B5E089B0();
    sub_1B5EA5E60();
  }

  (*(v6 + 8))(v11, v4);
  sub_1B5DF7180();
}

unint64_t sub_1B5E08E84()
{
  result = qword_1EB90DD68;
  if (!qword_1EB90DD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90DD68);
  }

  return result;
}

void NoteMessage.VisualPromptOptions.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  sub_1B5DF7168();
  v15 = v14;
  v17 = v16;
  v18 = sub_1B5DF33E0(&qword_1EB90DD70, &qword_1B5EB0928);
  sub_1B5DF5DA8(v18);
  v20 = *(v19 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v21);
  sub_1B5E08834();
  sub_1B5E08E84();
  sub_1B5EA6030();
  if (!v13)
  {
    sub_1B5E06634();
    sub_1B5EA5DC0();
    v22 = sub_1B5EA5D80();
    v23 = sub_1B5EA5D80();
    v24 = sub_1B5E088E8();
    v25(v24, v18);
    *v17 = a13;
    v17[1] = v22 & 1;
    v17[2] = v23 & 1;
  }

  sub_1B5DF3FB8(v15);
  sub_1B5DF7180();
}

uint64_t sub_1B5E090F4(uint64_t a1)
{
  v2 = sub_1B5E09298();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B5E09130(uint64_t a1)
{
  v2 = sub_1B5E09298();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void NoteMessage.ThreadVisualPromptOptions.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1B5DF7168();
  a22 = v24;
  a23 = v25;
  v27 = v26;
  v28 = sub_1B5DF33E0(&qword_1EB90DD78, &qword_1B5EB0930);
  sub_1B5DF5DA8(v28);
  v30 = v29;
  v32 = *(v31 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &a9 - v34;
  v36 = *v23;
  v37 = v27[4];
  sub_1B5DF3BFC(v27, v27[3]);
  sub_1B5E09298();
  sub_1B5EA6040();
  a13 = v36;
  sub_1B5E065E0();
  sub_1B5EA5EA0();
  (*(v30 + 8))(v35, v28);
  sub_1B5DF7180();
}

unint64_t sub_1B5E09298()
{
  result = qword_1EB90DD80;
  if (!qword_1EB90DD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90DD80);
  }

  return result;
}

void NoteMessage.ThreadVisualPromptOptions.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1B5DF7168();
  a22 = v24;
  a23 = v25;
  v27 = v26;
  v29 = v28;
  v30 = sub_1B5DF33E0(&qword_1EB90DD88, &qword_1B5EB0938);
  sub_1B5DF5DA8(v30);
  v32 = v31;
  v34 = *(v33 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v35);
  v37 = &a9 - v36;
  sub_1B5E08834();
  sub_1B5E09298();
  sub_1B5EA6030();
  if (!v23)
  {
    sub_1B5E06634();
    sub_1B5EA5DC0();
    (*(v32 + 8))(v37, v30);
    *v29 = a13;
  }

  sub_1B5DF3FB8(v27);
  sub_1B5DF7180();
}

uint64_t NoteMessage.title.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t NoteMessage.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t NoteMessage.textualContext.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t NoteMessage.textualContext.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

Sage::NoteMessage __swiftcall NoteMessage.init(title:textualContext:)(Swift::String_optional title, Swift::String_optional textualContext)
{
  *v2 = title;
  v2[1] = textualContext;
  result.textualContext = textualContext;
  result.title = title;
  return result;
}

uint64_t sub_1B5E09574(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_1B5EA5F00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x436C617574786574 && a2 == 0xEE00747865746E6FLL)
  {

    return 1;
  }

  else
  {
    v7 = sub_1B5EA5F00();

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

uint64_t sub_1B5E09640(char a1)
{
  if (a1)
  {
    return 0x436C617574786574;
  }

  else
  {
    return 0x656C746974;
  }
}

uint64_t sub_1B5E09688@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B5E09574(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B5E096B0(uint64_t a1)
{
  v2 = sub_1B5E09884();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B5E096EC(uint64_t a1)
{
  v2 = sub_1B5E09884();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void NoteMessage.encode(to:)()
{
  sub_1B5DF7168();
  v3 = v2;
  v4 = sub_1B5DF33E0(&qword_1EB90DD90, &qword_1B5EB0940);
  sub_1B5DF5DA8(v4);
  v16 = v5;
  v7 = *(v6 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v15 - v9;
  v11 = *v0;
  v12 = v0[1];
  v13 = v0[2];
  v15[1] = v0[3];
  v15[2] = v13;
  v14 = v3[4];
  sub_1B5DF3BFC(v3, v3[3]);
  sub_1B5E09884();
  sub_1B5EA6040();
  sub_1B5EA5E10();
  if (!v1)
  {
    sub_1B5EA5E10();
  }

  (*(v16 + 8))(v10, v4);
  sub_1B5DF7180();
}

unint64_t sub_1B5E09884()
{
  result = qword_1EB90DD98;
  if (!qword_1EB90DD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90DD98);
  }

  return result;
}

void NoteMessage.init(from:)()
{
  sub_1B5DF7168();
  v2 = v1;
  v4 = v3;
  v5 = sub_1B5DF33E0(&qword_1EB90DDA0, &qword_1B5EB0948);
  sub_1B5DF5DA8(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20 - v11;
  sub_1B5E08834();
  sub_1B5E09884();
  sub_1B5EA6030();
  if (!v0)
  {
    v13 = sub_1B5EA5D30();
    v15 = v14;
    v16 = sub_1B5EA5D30();
    v18 = v17;
    v19 = *(v7 + 8);
    v21 = v16;
    v19(v12, v5);
    *v4 = v13;
    v4[1] = v15;
    v4[2] = v21;
    v4[3] = v18;
  }

  sub_1B5DF3FB8(v2);

  sub_1B5DF7180();
}

Sage::NoteMessage::VisualPromptOptions __swiftcall NoteMessage.VisualPromptOptions.init()()
{
  *v0 = 258;
  *(v0 + 2) = 0;
  return result;
}

Sage::NoteMessage::VisualPromptOptions __swiftcall NoteMessage.VisualPromptOptions.init(extractVisualConcepts:extractVisualTopLine:)(Swift::Bool extractVisualConcepts, Swift::Bool extractVisualTopLine)
{
  *v2 = 2;
  v2[1] = extractVisualConcepts;
  v2[2] = extractVisualTopLine;
  result.useCase = extractVisualConcepts;
  return result;
}

unint64_t sub_1B5E09AF8()
{
  result = qword_1EB90DDA8;
  if (!qword_1EB90DDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90DDA8);
  }

  return result;
}

unint64_t sub_1B5E09B50()
{
  result = qword_1EB90DDB0;
  if (!qword_1EB90DDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90DDB0);
  }

  return result;
}

unint64_t sub_1B5E09BA8()
{
  result = qword_1EB90DDB8;
  if (!qword_1EB90DDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90DDB8);
  }

  return result;
}

unint64_t sub_1B5E09C00()
{
  result = qword_1EB90DDC0;
  if (!qword_1EB90DDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90DDC0);
  }

  return result;
}

unint64_t sub_1B5E09C54(uint64_t a1)
{
  *(a1 + 8) = sub_1B5E09C84();
  result = sub_1B5E09CD8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1B5E09C84()
{
  result = qword_1EB90DDC8;
  if (!qword_1EB90DDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90DDC8);
  }

  return result;
}

unint64_t sub_1B5E09CD8()
{
  result = qword_1EB90DDD0;
  if (!qword_1EB90DDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90DDD0);
  }

  return result;
}

uint64_t sub_1B5E09D2C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 32))
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

uint64_t sub_1B5E09D80(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for NoteMessage.ThreadVisualPromptOptions(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for NoteMessage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for NoteMessage.ThreadVisualPromptOptions.CodingKeys(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for NoteMessage.VisualPromptOptions.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1B5E0A12C()
{
  result = qword_1EB90DDD8;
  if (!qword_1EB90DDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90DDD8);
  }

  return result;
}

unint64_t sub_1B5E0A184()
{
  result = qword_1EB90DDE0;
  if (!qword_1EB90DDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90DDE0);
  }

  return result;
}

unint64_t sub_1B5E0A1DC()
{
  result = qword_1EB90DDE8;
  if (!qword_1EB90DDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90DDE8);
  }

  return result;
}

unint64_t sub_1B5E0A234()
{
  result = qword_1EB90DDF0;
  if (!qword_1EB90DDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90DDF0);
  }

  return result;
}

unint64_t sub_1B5E0A28C()
{
  result = qword_1EB90DDF8;
  if (!qword_1EB90DDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90DDF8);
  }

  return result;
}

unint64_t sub_1B5E0A2E4()
{
  result = qword_1EB90DE00;
  if (!qword_1EB90DE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90DE00);
  }

  return result;
}

unint64_t sub_1B5E0A33C()
{
  result = qword_1EB90DE08;
  if (!qword_1EB90DE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90DE08);
  }

  return result;
}

unint64_t sub_1B5E0A394()
{
  result = qword_1EB90DE10;
  if (!qword_1EB90DE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90DE10);
  }

  return result;
}

unint64_t sub_1B5E0A3EC()
{
  result = qword_1EB90DE18[0];
  if (!qword_1EB90DE18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB90DE18);
  }

  return result;
}

uint64_t sub_1B5E0A480(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = *(a3 + 24);
  return sub_1B5DF7328();
}

uint64_t sub_1B5E0A4A0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  return sub_1B5E0A468();
}

uint64_t sub_1B5E0A4C4@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  result = sub_1B5DF7328();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1B5E0A4F8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1B5E0A54C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t ClassifiableThread.elements.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t sub_1B5E0A6CC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1B5E0A720(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1B5E0A864(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x73746E656D656C65 && a2 == 0xE800000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1B5EA5F00();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1B5E0A8DC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, void, void))
{
  sub_1B5EA5FD0();
  a4(v7, *(a2 + 16), *(a2 + 24));
  return sub_1B5EA6020();
}

uint64_t sub_1B5E0A950(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1B5E0A9A4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1B5E0AA38(void *a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  v6 = *(a2 + 24);
  v18 = *(a2 + 16);
  v19 = v6;
  a3(255, v18);
  swift_getWitnessTable();
  v7 = sub_1B5EA5EC0();
  v8 = sub_1B5DF5DA8(v7);
  v20 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v13 = &v17 - v12;
  v14 = *v3;
  v15 = a1[4];
  sub_1B5DF3BFC(a1, a1[3]);

  sub_1B5EA6040();
  v22 = v14;
  sub_1B5EA58A0();
  v21 = *(v19 + 16);
  swift_getWitnessTable();
  sub_1B5EA5EA0();

  return (*(v20 + 8))(v13, v7);
}

uint64_t sub_1B5E0AC44@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, void (*a3)(uint64_t)@<X3>, void *a4@<X8>)
{
  v18 = a4;
  v19 = a2;
  a3(255);
  swift_getWitnessTable();
  v6 = sub_1B5EA5DF0();
  v7 = sub_1B5DF5DA8(v6);
  v17 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v12 = &v17 - v11;
  v13 = a1[4];
  sub_1B5DF3BFC(a1, a1[3]);
  sub_1B5EA6030();
  if (!v4)
  {
    v15 = v17;
    v14 = v18;
    sub_1B5EA58A0();
    v20 = *(v19 + 8);
    swift_getWitnessTable();
    sub_1B5EA5DC0();
    (*(v15 + 8))(v12, v6);
    *v14 = v21;
  }

  return sub_1B5DF3FB8(a1);
}

uint64_t sub_1B5E0AE9C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_1B5E0AEDC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *sub_1B5E0AF30(_BYTE *result, int a2, int a3)
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

uint64_t TextMessage.SummarizationOptions.requestIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return sub_1B5DFA488();
}

uint64_t TextMessage.SummarizationOptions.requestIdentifier.setter()
{
  sub_1B5DFA47C();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t TextMessage.SummarizationOptions.requestedSummarizationStyles.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t TextMessage.SummarizationOptions.previousMessages.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t TextMessage.SummarizationOptions.init(requestIdentifier:requestedSummarizationStyles:previousMessages:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t TextMessage.SummarizationOptions.init(requestIdentifier:requestedSummarizationStyles:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  v4 = MEMORY[0x1E69E7CC0];
  a4[2] = a3;
  a4[3] = v4;
  return result;
}

uint64_t sub_1B5E0B28C(uint64_t a1)
{
  v2 = sub_1B5E10FE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B5E0B2C8(uint64_t a1)
{
  v2 = sub_1B5E10FE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

Sage::TextMessage::ClassificationOptions __swiftcall TextMessage.ClassificationOptions.init(requestIdentifier:isSenderImportant:previousMessages:)(Sage::TextMessage::ClassificationOptions requestIdentifier, Swift::Bool_optional isSenderImportant, Swift::OpaquePointer previousMessages)
{
  *v3 = requestIdentifier.requestIdentifier;
  *(v3 + 16) = isSenderImportant;
  *(v3 + 24) = previousMessages;
  requestIdentifier.previousMessages = previousMessages;
  requestIdentifier.isSenderImportant = isSenderImportant;
  return requestIdentifier;
}

uint64_t sub_1B5E0B40C(uint64_t a1)
{
  v2 = sub_1B5E11218();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B5E0B448(uint64_t a1)
{
  v2 = sub_1B5E11218();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void TextMessage.ClassificationOptions.encode(to:)()
{
  sub_1B5DF7168();
  v4 = v3;
  v5 = sub_1B5DF33E0(&qword_1EB90DEB8, &qword_1B5EB13B0);
  sub_1B5DF5DA8(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v10);
  sub_1B5E08868();
  v11 = *v0;
  v12 = v0[1];
  v17 = *(v0 + 16);
  v16 = v0[3];
  v13 = v4[4];
  sub_1B5E0897C(v4, v4[3]);
  sub_1B5E11218();
  sub_1B5E08B7C();
  sub_1B5EA6040();
  sub_1B5EA5E50();
  if (!v1)
  {
    sub_1B5E08B70();
    sub_1B5E08798();
    sub_1B5EA5E20();
    sub_1B5DF33E0(&qword_1EB90DEA8, &qword_1B5EB13A0);
    sub_1B5E13C50();
    sub_1B5E1118C(v14, v15);
    sub_1B5E08798();
    sub_1B5EA5EA0();
  }

  (*(v7 + 8))(v2, v5);
  sub_1B5E08B88();
  sub_1B5DF7180();
}

void TextMessage.ClassificationOptions.init(from:)()
{
  sub_1B5DF7168();
  v2 = v1;
  v4 = v3;
  v5 = sub_1B5DF33E0(&qword_1EB90DEC0, &qword_1B5EB13B8);
  sub_1B5DF5DA8(v5);
  v7 = *(v6 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v8);
  sub_1B5E08858();
  sub_1B5E08834();
  sub_1B5E11218();
  sub_1B5E08AD0();
  if (v0)
  {
    sub_1B5DF3FB8(v2);
  }

  else
  {
    sub_1B5E089F8();
    v9 = sub_1B5EA5D70();
    v11 = v10;
    sub_1B5E08B70();
    sub_1B5E089F8();
    v17 = sub_1B5EA5D40();
    sub_1B5DF33E0(&qword_1EB90DEA8, &qword_1B5EB13A0);
    sub_1B5E13C68();
    sub_1B5E1118C(v12, v13);
    sub_1B5E089F8();
    sub_1B5EA5DC0();
    v14 = sub_1B5E088E8();
    v15(v14, v5);
    *v4 = v9;
    *(v4 + 8) = v11;
    *(v4 + 16) = v17;
    *(v4 + 24) = v16;

    sub_1B5DF3FB8(v2);
  }

  sub_1B5DF7180();
}

uint64_t TextMessage.ThreadClassificationOptions.requestIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return sub_1B5DFA488();
}

uint64_t TextMessage.ThreadClassificationOptions.requestIdentifier.setter()
{
  sub_1B5DFA47C();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t TextMessage.ThreadClassificationOptions.previousMessages.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

Sage::TextMessage::ThreadClassificationOptions __swiftcall TextMessage.ThreadClassificationOptions.init(requestIdentifier:previousMessages:)(Swift::String requestIdentifier, Swift::OpaquePointer previousMessages)
{
  *v2 = requestIdentifier;
  *(v2 + 16) = previousMessages;
  result.requestIdentifier = requestIdentifier;
  result.previousMessages = previousMessages;
  return result;
}

uint64_t sub_1B5E0B95C(uint64_t a1)
{
  v2 = sub_1B5E1126C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B5E0B998(uint64_t a1)
{
  v2 = sub_1B5E1126C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void TextMessage.ThreadClassificationOptions.encode(to:)()
{
  sub_1B5DF7168();
  v4 = v3;
  v5 = sub_1B5DF33E0(&qword_1EB90DEC8, &qword_1B5EB13C0);
  sub_1B5DF5DA8(v5);
  v16 = v6;
  v8 = *(v7 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v9);
  sub_1B5E08868();
  v10 = *v0;
  v11 = v0[1];
  v15 = v0[2];
  v12 = v4[4];
  sub_1B5E0897C(v4, v4[3]);
  sub_1B5E1126C();
  sub_1B5E08B7C();
  sub_1B5E13F48();
  sub_1B5EA6040();
  sub_1B5E08798();
  sub_1B5EA5E50();
  if (!v1)
  {
    sub_1B5E08B70();
    sub_1B5DF33E0(&qword_1EB90DEA8, &qword_1B5EB13A0);
    sub_1B5E13C50();
    sub_1B5E1118C(v13, v14);
    sub_1B5E08798();
    sub_1B5EA5EA0();
  }

  (*(v16 + 8))(v2, v5);
  sub_1B5E08B88();
  sub_1B5DF7180();
}

void TextMessage.ThreadClassificationOptions.init(from:)()
{
  sub_1B5DF7168();
  v2 = v1;
  v4 = v3;
  v5 = sub_1B5DF33E0(&qword_1EB90DED0, &qword_1B5EB13C8);
  sub_1B5DF5DA8(v5);
  v7 = *(v6 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v8);
  sub_1B5E08858();
  sub_1B5E08834();
  sub_1B5E1126C();
  sub_1B5E08AD0();
  if (v0)
  {
    sub_1B5DF3FB8(v2);
  }

  else
  {
    sub_1B5E089F8();
    v9 = sub_1B5EA5D70();
    v11 = v10;
    sub_1B5DF33E0(&qword_1EB90DEA8, &qword_1B5EB13A0);
    sub_1B5E08B70();
    sub_1B5E13C68();
    sub_1B5E1118C(v12, v13);
    sub_1B5E089F8();
    sub_1B5EA5DC0();
    v14 = sub_1B5E088E8();
    v15(v14, v5);
    *v4 = v9;
    v4[1] = v11;
    v4[2] = v16;

    sub_1B5DF3FB8(v2);
  }

  sub_1B5DF7180();
}

uint64_t sub_1B5E0BDD4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1B5EA4340();
  v5 = sub_1B5DF5DA8(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1B5DFD7E8();
  v12 = v11 - v10;
  v13 = sub_1B5E05F94(a1);
  sub_1B5EA4330();
  v14 = sub_1B5EA4300();
  v16 = v15;
  result = (*(v7 + 8))(v12, v4);
  *a2 = v14;
  a2[1] = v16;
  v18 = MEMORY[0x1E69E7CC0];
  a2[2] = v13;
  a2[3] = v18;
  return result;
}

uint64_t sub_1B5E0BEC0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x80000001B5EA8AB0 == a2;
  if (v3 || (sub_1B5E0888C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD00000000000001CLL && 0x80000001B5EA8AD0 == a2;
    if (v6 || (sub_1B5E0888C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000010 && 0x80000001B5EA8B30 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_1B5E0888C();

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

uint64_t sub_1B5E0BFB8(uint64_t a1)
{
  v2 = sub_1B5E112C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B5E0BFF4(uint64_t a1)
{
  v2 = sub_1B5E112C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1B5E0C064()
{
  sub_1B5DF7168();
  v25 = v2;
  v4 = v3;
  v7 = sub_1B5DF33E0(v5, v6);
  sub_1B5DF5DA8(v7);
  v9 = v8;
  v11 = *(v10 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v12);
  sub_1B5DFA50C();
  v13 = *v0;
  v14 = v0[1];
  v23 = v0[3];
  v24 = v0[2];
  v16 = v4[3];
  v15 = v4[4];
  v17 = v4;
  v19 = v18;
  v20 = sub_1B5E0897C(v17, v16);
  v25(v20);
  sub_1B5EA6040();
  sub_1B5EA5E50();
  if (!v1)
  {
    sub_1B5DF33E0(&qword_1EB90DBB8, &qword_1B5EAFCB8);
    sub_1B5E11038();
    sub_1B5E13E78();
    sub_1B5DF33E0(&qword_1EB90DEA8, &qword_1B5EB13A0);
    sub_1B5E13C50();
    sub_1B5E1118C(v21, v22);
    sub_1B5E13E78();
  }

  (*(v9 + 8))(v19, v7);
  sub_1B5E08B88();
  sub_1B5DF7180();
}

void sub_1B5E0C254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1B5DF7168();
  v12 = v11;
  v14 = v13;
  v30 = v15;
  v31 = sub_1B5DF33E0(v16, v17);
  sub_1B5DF5DA8(v31);
  v19 = *(v18 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v20);
  sub_1B5E13EC0();
  v21 = v14[4];
  v22 = sub_1B5E0897C(v14, v14[3]);
  v12(v22);
  sub_1B5E13F48();
  sub_1B5EA6030();
  if (v10)
  {
    sub_1B5DF3FB8(v14);
  }

  else
  {
    LOBYTE(a10) = 0;
    v23 = sub_1B5EA5D70();
    v25 = v24;
    sub_1B5DF33E0(&qword_1EB90DBB8, &qword_1B5EAFCB8);
    sub_1B5E11108();
    sub_1B5E13E10();
    sub_1B5EA5DC0();
    sub_1B5DF33E0(&qword_1EB90DEA8, &qword_1B5EB13A0);
    sub_1B5E13C68();
    sub_1B5E1118C(v26, v27);
    sub_1B5E13E10();
    sub_1B5EA5DC0();
    v28 = sub_1B5E13D84();
    v29(v28);
    *v30 = v23;
    v30[1] = v25;
    v30[2] = a10;
    v30[3] = a10;

    sub_1B5DF3FB8(v14);
  }

  sub_1B5E13F60();
  sub_1B5DF7180();
}

uint64_t sub_1B5E0C590(uint64_t a1)
{
  v2 = sub_1B5E11314();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B5E0C5CC(uint64_t a1)
{
  v2 = sub_1B5E11314();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void TextMessage.VisualPromptOptions.encode(to:)()
{
  sub_1B5DF7168();
  v4 = v3;
  v5 = sub_1B5DF33E0(&qword_1EB90DEE8, &qword_1B5EB13E0);
  sub_1B5DF5DA8(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v10);
  sub_1B5E08868();
  v11 = *v0;
  v14 = v0[1];
  v13 = v0[2];
  v12 = v4[4];
  sub_1B5E0897C(v4, v4[3]);
  sub_1B5E11314();
  sub_1B5E08B7C();
  sub_1B5E13F48();
  sub_1B5EA6040();
  sub_1B5E065E0();
  sub_1B5E089B0();
  sub_1B5EA5EA0();
  if (!v1)
  {
    sub_1B5E089B0();
    sub_1B5EA5E60();
    sub_1B5E089B0();
    sub_1B5EA5E60();
  }

  (*(v7 + 8))(v2, v5);
  sub_1B5E13F60();
  sub_1B5DF7180();
}

void TextMessage.VisualPromptOptions.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  sub_1B5DF7168();
  v15 = v14;
  v17 = v16;
  v18 = sub_1B5DF33E0(&qword_1EB90DEF8, &qword_1B5EB13E8);
  sub_1B5DF5DA8(v18);
  v20 = *(v19 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v21);
  sub_1B5E08858();
  sub_1B5E08834();
  sub_1B5E11314();
  sub_1B5EA6030();
  if (!v13)
  {
    sub_1B5E06634();
    sub_1B5EA5DC0();
    v22 = sub_1B5EA5D80();
    v23 = sub_1B5EA5D80();
    v24 = sub_1B5E088E8();
    v25(v24, v18);
    *v17 = a13;
    v17[1] = v22 & 1;
    v17[2] = v23 & 1;
  }

  sub_1B5DF3FB8(v15);
  sub_1B5E13F60();
  sub_1B5DF7180();
}

uint64_t sub_1B5E0C984(uint64_t a1)
{
  v2 = sub_1B5E11368();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B5E0C9C0(uint64_t a1)
{
  v2 = sub_1B5E11368();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void TextMessage.ThreadVisualPromptOptions.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1B5DF7168();
  a22 = v24;
  a23 = v25;
  v27 = v26;
  v28 = sub_1B5DF33E0(&qword_1EB90DF00, &qword_1B5EB13F0);
  sub_1B5DF5DA8(v28);
  v30 = v29;
  v32 = *(v31 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &a9 - v34;
  v36 = *v23;
  v37 = v27[4];
  sub_1B5E0897C(v27, v27[3]);
  sub_1B5E11368();
  sub_1B5EA6040();
  a13 = v36;
  sub_1B5E065E0();
  sub_1B5EA5EA0();
  (*(v30 + 8))(v35, v28);
  sub_1B5DF7180();
}

void TextMessage.ThreadVisualPromptOptions.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1B5DF7168();
  a22 = v24;
  a23 = v25;
  v27 = v26;
  v29 = v28;
  v30 = sub_1B5DF33E0(&qword_1EB90DF10, &qword_1B5EB13F8);
  sub_1B5DF5DA8(v30);
  v32 = v31;
  v34 = *(v33 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v35);
  v37 = &a9 - v36;
  sub_1B5E08834();
  sub_1B5E11368();
  sub_1B5EA6030();
  if (!v23)
  {
    sub_1B5E06634();
    sub_1B5EA5DC0();
    (*(v32 + 8))(v37, v30);
    *v29 = a13;
  }

  sub_1B5DF3FB8(v27);
  sub_1B5DF7180();
}

uint64_t TextMessage.messageID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return sub_1B5DFA488();
}

uint64_t TextMessage.messageID.setter()
{
  sub_1B5DFA47C();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t TextMessage.sender.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v5[0] = *(v1 + 16);
  v5[1] = v2;
  v6 = *(v1 + 48);
  sub_1B5E13F6C(a1, v5[0], v2, v6, *(v1 + 57));
  return sub_1B5E066DC(v5, &v4);
}

__n128 TextMessage.sender.setter(uint64_t a1)
{
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v7[0] = v1[3];
  *(v7 + 9) = *(v1 + 57);
  sub_1B5E06738(v6);
  v4 = *(a1 + 16);
  v1[1] = *a1;
  v1[2] = v4;
  v1[3] = *(a1 + 32);
  result = *(a1 + 41);
  *(v1 + 57) = result;
  return result;
}

uint64_t TextMessage.recipients.setter(uint64_t a1)
{
  v3 = *(v1 + 80);

  *(v1 + 80) = a1;
  return result;
}

uint64_t TextMessage.dateReceived.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TextMessage() + 28);
  v4 = sub_1B5EA42F0();
  v5 = sub_1B5DF5EB8(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t TextMessage.dateReceived.setter()
{
  v2 = *(sub_1B5E13EF0() + 28);
  v3 = sub_1B5EA42F0();
  sub_1B5DF5EB8(v3);
  v5 = *(v4 + 40);

  return v5(v1 + v2, v0);
}

uint64_t TextMessage.isUnread.setter(char a1)
{
  result = type metadata accessor for TextMessage();
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t TextMessage.threadID.getter()
{
  v1 = (v0 + *(type metadata accessor for TextMessage() + 36));
  v2 = *v1;
  v3 = v1[1];

  return sub_1B5DFA488();
}

uint64_t TextMessage.threadID.setter()
{
  sub_1B5DFA47C();
  v3 = (v1 + *(type metadata accessor for TextMessage() + 36));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t TextMessage.body.getter()
{
  v1 = (v0 + *(type metadata accessor for TextMessage() + 40));
  v2 = *v1;
  v3 = v1[1];

  return sub_1B5DFA488();
}

uint64_t TextMessage.body.setter()
{
  sub_1B5DFA47C();
  v3 = (v1 + *(type metadata accessor for TextMessage() + 40));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t TextMessage.tapbacks.getter()
{
  v1 = *(v0 + *(type metadata accessor for TextMessage() + 44));
}

uint64_t TextMessage.tapbacks.setter()
{
  v2 = *(sub_1B5E13EF0() + 44);
  v3 = *(v1 + v2);

  *(v1 + v2) = v0;
  return result;
}

uint64_t TextMessage.attachments.getter()
{
  v1 = *(v0 + *(type metadata accessor for TextMessage() + 48));
}

uint64_t TextMessage.attachments.setter()
{
  v2 = *(sub_1B5E13EF0() + 48);
  v3 = *(v1 + v2);

  *(v1 + v2) = v0;
  return result;
}

uint64_t TextMessage.init(messageID:sender:recipients:dateReceived:isUnread:threadID:body:tapbacks:attachments:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1B5E13EA4();
  v14 = type metadata accessor for TextMessage();
  v15 = (v13 + v14[9]);
  v16 = (v13 + v14[10]);
  sub_1B5E13DEC();
  v18 = *(v17 + 28);
  v19 = sub_1B5EA42F0();
  sub_1B5DF5EB8(v19);
  result = (*(v20 + 32))(v13 + v18, v12);
  *(v13 + v14[8]) = a6;
  *v15 = a7;
  v15[1] = a8;
  *v16 = a9;
  v16[1] = a10;
  *(v13 + v14[11]) = a11;
  *(v13 + v14[12]) = a12;
  return result;
}

uint64_t sub_1B5E0D380(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x496567617373656DLL && a2 == 0xE900000000000044;
  if (v4 || (sub_1B5EA5F00() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7265646E6573 && a2 == 0xE600000000000000;
    if (v6 || (sub_1B5EA5F00() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6E65697069636572 && a2 == 0xEA00000000007374;
      if (v7 || (sub_1B5EA5F00() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6563655265746164 && a2 == 0xEC00000064657669;
        if (v8 || (sub_1B5EA5F00() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x646165726E557369 && a2 == 0xE800000000000000;
          if (v9 || (sub_1B5EA5F00() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x4449646165726874 && a2 == 0xE800000000000000;
            if (v10 || (sub_1B5EA5F00() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 2036625250 && a2 == 0xE400000000000000;
              if (v11 || (sub_1B5EA5F00() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x736B636162706174 && a2 == 0xE800000000000000;
                if (v12 || (sub_1B5EA5F00() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0x656D686361747461 && a2 == 0xEB0000000073746ELL)
                {

                  return 8;
                }

                else
                {
                  v14 = sub_1B5EA5F00();

                  if (v14)
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1B5E0D664(char a1)
{
  result = 0x496567617373656DLL;
  switch(a1)
  {
    case 1:
      result = 0x7265646E6573;
      break;
    case 2:
      result = 0x6E65697069636572;
      break;
    case 3:
      result = 0x6563655265746164;
      break;
    case 4:
      result = 0x646165726E557369;
      break;
    case 5:
      result = 0x4449646165726874;
      break;
    case 6:
      result = 2036625250;
      break;
    case 7:
      result = 0x736B636162706174;
      break;
    case 8:
      result = 0x656D686361747461;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B5E0D774@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B5E0D380(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B5E0D79C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B5E0D65C();
  *a1 = result;
  return result;
}

uint64_t sub_1B5E0D7C4(uint64_t a1)
{
  v2 = sub_1B5E113BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B5E0D800(uint64_t a1)
{
  v2 = sub_1B5E113BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void TextMessage.encode(to:)()
{
  sub_1B5DF7168();
  v3 = v0;
  v5 = v4;
  v6 = sub_1B5DF33E0(&qword_1EB90DF18, &unk_1B5EB1400);
  sub_1B5DF5DA8(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v11);
  sub_1B5E08868();
  v12 = v5[4];
  sub_1B5E0897C(v5, v5[3]);
  sub_1B5E113BC();
  sub_1B5E08B7C();
  sub_1B5EA6040();
  v13 = *v3;
  v14 = v3[1];
  v35 = 0;
  sub_1B5E08798();
  sub_1B5EA5E50();
  if (!v1)
  {
    v15 = *(v3 + 2);
    v33[0] = *(v3 + 1);
    v33[1] = v15;
    v17 = *(v3 + 1);
    v16 = *(v3 + 2);
    *v34 = *(v3 + 3);
    *&v34[9] = *(v3 + 57);
    v30 = v17;
    v31 = v16;
    v32[0] = *(v3 + 3);
    *(v32 + 9) = *(v3 + 57);
    v29[63] = 1;
    sub_1B5E066DC(v33, v29);
    sub_1B5E067E0();
    sub_1B5E08798();
    sub_1B5EA5EA0();
    sub_1B5E0891C();
    sub_1B5E13F54(v3[10]);
    sub_1B5DF33E0(&qword_1EB90DC58, &unk_1B5EB2BC0);
    sub_1B5E11410();
    sub_1B5E13CF8();
    v18 = type metadata accessor for TextMessage();
    v19 = v18[7];
    sub_1B5E08B3C(3);
    sub_1B5EA42F0();
    sub_1B5E13D24();
    sub_1B5E11754(v20, v21);
    sub_1B5E08798();
    sub_1B5EA5EA0();
    v22 = *(v3 + v18[8]);
    sub_1B5E08B3C(4);
    sub_1B5E08798();
    sub_1B5EA5E60();
    v23 = (v3 + v18[9]);
    v24 = *v23;
    v25 = v23[1];
    sub_1B5E08B3C(5);
    sub_1B5E08798();
    sub_1B5EA5E10();
    v26 = (v3 + v18[10]);
    v27 = *v26;
    v28 = v26[1];
    sub_1B5E08B3C(6);
    sub_1B5E08798();
    sub_1B5EA5E10();
    sub_1B5E13F54(*(v3 + v18[11]));
    sub_1B5DF33E0(&qword_1EB90DF20, &unk_1B5EB1410);
    sub_1B5E11494();
    sub_1B5E13CF8();
    sub_1B5E13F54(*(v3 + v18[12]));
    sub_1B5DF33E0(&qword_1EB90DC60, &qword_1B5EAFD30);
    sub_1B5E1156C(&qword_1EB90CE10, &qword_1EB90D170);
    sub_1B5E13CF8();
  }

  (*(v8 + 8))(v2, v6);
  sub_1B5E08B88();
  sub_1B5DF7180();
}

void TextMessage.init(from:)()
{
  sub_1B5DF7168();
  v2 = v1;
  v34 = v3;
  v4 = sub_1B5EA42F0();
  v5 = sub_1B5DF5DA8(v4);
  v36 = v6;
  v37 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1B5DFD7E8();
  v11 = v10 - v9;
  v35 = sub_1B5DF33E0(&qword_1EB90DF28, &qword_1B5EB1420);
  sub_1B5DF5DA8(v35);
  v13 = *(v12 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v14);
  v38 = type metadata accessor for TextMessage();
  v15 = sub_1B5DF5EB8(v38);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  sub_1B5DFD7E8();
  v20 = v19 - v18;
  v21 = v2[4];
  sub_1B5E0897C(v2, v2[3]);
  sub_1B5E113BC();
  sub_1B5EA6030();
  if (v0)
  {
    sub_1B5DF3FB8(v2);
  }

  else
  {
    LOBYTE(v40) = 0;
    *v20 = sub_1B5EA5D70();
    *(v20 + 8) = v22;
    sub_1B5E068C4();
    sub_1B5EA5DC0();
    v23 = v41;
    *(v20 + 16) = v40;
    *(v20 + 32) = v23;
    *(v20 + 48) = v42[0];
    *(v20 + 57) = *(v42 + 9);
    sub_1B5DF33E0(&qword_1EB90DC58, &unk_1B5EB2BC0);
    sub_1B5E115F8();
    sub_1B5EA5DC0();
    *(v20 + 80) = v39;
    LOBYTE(v39) = 3;
    sub_1B5E13D24();
    sub_1B5E11754(v24, v25);
    sub_1B5EA5DC0();
    (*(v36 + 32))(v20 + v38[7], v11, v37);
    sub_1B5E08878(4);
    *(v20 + v38[8]) = sub_1B5EA5D80() & 1;
    sub_1B5E08878(5);
    v26 = sub_1B5EA5D30();
    v27 = (v20 + v38[9]);
    *v27 = v26;
    v27[1] = v28;
    sub_1B5E08878(6);
    v29 = sub_1B5EA5D30();
    v30 = (v20 + v38[10]);
    *v30 = v29;
    v30[1] = v31;
    sub_1B5DF33E0(&qword_1EB90DF20, &unk_1B5EB1410);
    sub_1B5E1167C();
    sub_1B5E13E4C();
    *(v20 + v38[11]) = v39;
    sub_1B5DF33E0(&qword_1EB90DC60, &qword_1B5EAFD30);
    sub_1B5E1156C(&qword_1EB90CE08, &qword_1EB90D168);
    sub_1B5E13E4C();
    v32 = sub_1B5E13CC8();
    v33(v32);
    *(v20 + v38[12]) = v39;
    sub_1B5E1179C(v20, v34);
    sub_1B5DF3FB8(v2);
    sub_1B5E11800(v20);
  }

  sub_1B5E13F60();
  sub_1B5DF7180();
}

uint64_t sub_1B5E0E23C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7472616568 && a2 == 0xE500000000000000;
  if (v4 || (sub_1B5EA5F00() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701538156 && a2 == 0xE400000000000000;
    if (v6 || (sub_1B5EA5F00() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656B696C736964 && a2 == 0xE700000000000000;
      if (v7 || (sub_1B5EA5F00() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7369736168706D65 && a2 == 0xE800000000000000;
        if (v8 || (sub_1B5EA5F00() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x686775616CLL && a2 == 0xE500000000000000;
          if (v9 || (sub_1B5EA5F00() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6E6F697473657571 && a2 == 0xE800000000000000;
            if (v10 || (sub_1B5EA5F00() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x696A6F6D65 && a2 == 0xE500000000000000;
              if (v11 || (sub_1B5EA5F00() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x69746172656E6567 && a2 == 0xEF696A6F6D456576;
                if (v12 || (sub_1B5EA5F00() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0x72656B63697473 && a2 == 0xE700000000000000)
                {

                  return 8;
                }

                else
                {
                  v14 = sub_1B5EA5F00();

                  if (v14)
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1B5E0E4F8(char a1)
{
  result = 0x7472616568;
  switch(a1)
  {
    case 1:
      result = 1701538156;
      break;
    case 2:
      result = 0x656B696C736964;
      break;
    case 3:
      result = 0x7369736168706D65;
      break;
    case 4:
      result = 0x686775616CLL;
      break;
    case 5:
      result = 0x6E6F697473657571;
      break;
    case 6:
      result = 0x696A6F6D65;
      break;
    case 7:
      result = 0x69746172656E6567;
      break;
    case 8:
      result = 0x72656B63697473;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B5E0E5EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B5E0E23C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B5E0E614(uint64_t a1)
{
  v2 = sub_1B5E1185C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B5E0E650(uint64_t a1)
{
  v2 = sub_1B5E1185C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B5E0E68C(uint64_t a1)
{
  v2 = sub_1B5E11AA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B5E0E6C8(uint64_t a1)
{
  v2 = sub_1B5E11AA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B5E0E704(uint64_t a1)
{
  v2 = sub_1B5E11958();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B5E0E740(uint64_t a1)
{
  v2 = sub_1B5E11958();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B5E0E77C(uint64_t a1)
{
  v2 = sub_1B5E11A54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B5E0E7B8(uint64_t a1)
{
  v2 = sub_1B5E11A54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B5E0E7F4(uint64_t a1)
{
  v2 = sub_1B5E11904();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B5E0E830(uint64_t a1)
{
  v2 = sub_1B5E11904();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B5E0E86C(uint64_t a1)
{
  v2 = sub_1B5E11B50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B5E0E8A8(uint64_t a1)
{
  v2 = sub_1B5E11B50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B5E0E8E4(uint64_t a1)
{
  v2 = sub_1B5E11A00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B5E0E920(uint64_t a1)
{
  v2 = sub_1B5E11A00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B5E0E95C(uint64_t a1)
{
  v2 = sub_1B5E11AFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B5E0E998(uint64_t a1)
{
  v2 = sub_1B5E11AFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B5E0E9D4(uint64_t a1)
{
  v2 = sub_1B5E119AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B5E0EA10(uint64_t a1)
{
  v2 = sub_1B5E119AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B5E0EA4C(uint64_t a1)
{
  v2 = sub_1B5E118B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B5E0EA88(uint64_t a1)
{
  v2 = sub_1B5E118B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void TextMessage.Tapback.TapbackType.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1B5DF7168();
  a19 = v22;
  a20 = v23;
  v24 = v20;
  v26 = v25;
  v27 = sub_1B5DF33E0(&qword_1EB90DF30, &qword_1B5EB1428);
  v28 = sub_1B5DF5DA8(v27);
  v125 = v29;
  v126 = v28;
  v31 = *(v30 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v32);
  sub_1B5DFA50C();
  v124 = v33;
  v34 = sub_1B5DF33E0(&qword_1EB90DF38, &qword_1B5EB1430);
  v35 = sub_1B5DF5DA8(v34);
  v122 = v36;
  v123 = v35;
  v38 = *(v37 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v39);
  sub_1B5DFA50C();
  v121 = v40;
  v41 = sub_1B5DF33E0(&qword_1EB90DF40, &qword_1B5EB1438);
  v42 = sub_1B5DF5DA8(v41);
  v119 = v43;
  v120 = v42;
  v45 = *(v44 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v46);
  sub_1B5DFA50C();
  v118 = v47;
  v48 = sub_1B5DF33E0(&qword_1EB90DF48, &qword_1B5EB1440);
  v49 = sub_1B5DF5DA8(v48);
  v116 = v50;
  v117 = v49;
  v52 = *(v51 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v53);
  sub_1B5DFA50C();
  v115 = v54;
  v55 = sub_1B5DF33E0(&qword_1EB90DF50, &qword_1B5EB1448);
  v56 = sub_1B5DF5DA8(v55);
  v113 = v57;
  v114 = v56;
  v59 = *(v58 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v60);
  sub_1B5DFA50C();
  v112 = v61;
  v62 = sub_1B5DF33E0(&qword_1EB90DF58, &qword_1B5EB1450);
  v63 = sub_1B5DF5DA8(v62);
  v110 = v64;
  v111 = v63;
  v66 = *(v65 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v67);
  sub_1B5DFA50C();
  v109 = v68;
  v108 = sub_1B5DF33E0(&qword_1EB90DF60, &qword_1B5EB1458);
  sub_1B5DF5DA8(v108);
  v107 = v69;
  v71 = *(v70 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v72);
  sub_1B5DFA50C();
  sub_1B5E13F54(v73);
  v105 = sub_1B5DF33E0(&qword_1EB90DF68, &qword_1B5EB1460);
  sub_1B5DF5DA8(v105);
  v104 = v74;
  v76 = *(v75 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v77);
  v79 = &v103 - v78;
  v80 = sub_1B5DF33E0(&qword_1EB90DF70, &qword_1B5EB1468);
  sub_1B5DF5DA8(v80);
  v103 = v81;
  v83 = *(v82 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v84);
  v86 = &v103 - v85;
  v127 = sub_1B5DF33E0(&qword_1EB90DF78, &qword_1B5EB1470);
  sub_1B5DF5DA8(v127);
  v88 = v87;
  v90 = *(v89 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v91);
  sub_1B5E13EC0();
  v92 = *v24;
  v93 = v26[4];
  sub_1B5E0897C(v26, v26[3]);
  sub_1B5E1185C();
  sub_1B5EA6040();
  v94 = (v88 + 8);
  switch(v92)
  {
    case 1:
      sub_1B5E11AFC();
      v86 = v127;
      sub_1B5E13D6C();
      sub_1B5EA5E00();
      v100 = *(v104 + 8);
      v101 = v79;
      v102 = &a15;
      goto LABEL_8;
    case 2:
      sub_1B5E11AA8();
      v99 = v106;
      sub_1B5E13CA4();
      v100 = *(v107 + 8);
      v101 = v99;
      v102 = &a18;
LABEL_8:
      v97 = *(v102 - 32);
      goto LABEL_13;
    case 3:
      sub_1B5E11A54();
      v96 = v109;
      sub_1B5E13CA4();
      v98 = v110;
      v97 = v111;
      goto LABEL_12;
    case 4:
      sub_1B5E11A00();
      v96 = v112;
      sub_1B5E13CA4();
      v98 = v113;
      v97 = v114;
      goto LABEL_12;
    case 5:
      sub_1B5E119AC();
      v96 = v115;
      sub_1B5E13CA4();
      v98 = v116;
      v97 = v117;
      goto LABEL_12;
    case 6:
      sub_1B5E11958();
      v96 = v118;
      sub_1B5E13CA4();
      v98 = v119;
      v97 = v120;
      goto LABEL_12;
    case 7:
      sub_1B5E11904();
      v96 = v121;
      sub_1B5E13CA4();
      v98 = v122;
      v97 = v123;
      goto LABEL_12;
    case 8:
      sub_1B5E118B0();
      v96 = v124;
      sub_1B5E13CA4();
      v98 = v125;
      v97 = v126;
LABEL_12:
      v100 = *(v98 + 8);
      v101 = v96;
LABEL_13:
      v100(v101, v97);
      (*v94)(v21, v86);
      break;
    default:
      v128 = 0;
      sub_1B5E11B50();
      v95 = v127;
      sub_1B5E13D6C();
      sub_1B5EA5E00();
      (*(v103 + 8))(v86, v80);
      (*v94)(v21, v95);
      break;
  }

  sub_1B5DF7180();
}

uint64_t TextMessage.Tapback.TapbackType.hashValue.getter()
{
  v1 = *v0;
  sub_1B5EA5FD0();
  MEMORY[0x1B8C8AC00](v1);
  return sub_1B5EA6020();
}

void TextMessage.Tapback.TapbackType.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  sub_1B5DF7168();
  a26 = v29;
  a27 = v30;
  v158 = v27;
  v32 = v31;
  v153 = v33;
  v34 = sub_1B5DF33E0(&qword_1EB90DFD0, &qword_1B5EB1478);
  v35 = sub_1B5DF5DA8(v34);
  v147 = v36;
  v148 = v35;
  v38 = *(v37 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v39);
  sub_1B5DFA50C();
  v152 = v40;
  v41 = sub_1B5DF33E0(&qword_1EB90DFD8, &qword_1B5EB1480);
  v42 = sub_1B5DF5DA8(v41);
  v145 = v43;
  v146 = v42;
  v45 = *(v44 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v46);
  sub_1B5DFA50C();
  v149 = v47;
  v48 = sub_1B5DF33E0(&qword_1EB90DFE0, &qword_1B5EB1488);
  v49 = sub_1B5DF5DA8(v48);
  v143 = v50;
  v144 = v49;
  v52 = *(v51 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v53);
  sub_1B5DFA50C();
  v156 = v54;
  v55 = sub_1B5DF33E0(&qword_1EB90DFE8, &qword_1B5EB1490);
  v56 = sub_1B5DF5DA8(v55);
  v141 = v57;
  v142 = v56;
  v59 = *(v58 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v60);
  sub_1B5DFA50C();
  v155 = v61;
  v62 = sub_1B5DF33E0(&qword_1EB90DFF0, &qword_1B5EB1498);
  v63 = sub_1B5DF5DA8(v62);
  v139 = v64;
  v140 = v63;
  v66 = *(v65 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v67);
  sub_1B5DFA50C();
  v151 = v68;
  v138 = sub_1B5DF33E0(&qword_1EB90DFF8, &qword_1B5EB14A0);
  sub_1B5DF5DA8(v138);
  v137 = v69;
  v71 = *(v70 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v72);
  sub_1B5DFA50C();
  v150 = v73;
  v136 = sub_1B5DF33E0(&qword_1EB90E000, &qword_1B5EB14A8);
  sub_1B5DF5DA8(v136);
  v135 = v74;
  v76 = *(v75 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v77);
  sub_1B5DFA50C();
  v154 = v78;
  v134 = sub_1B5DF33E0(&qword_1EB90E008, &qword_1B5EB14B0);
  sub_1B5DF5DA8(v134);
  v133 = v79;
  v81 = *(v80 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v82);
  sub_1B5E08858();
  v83 = sub_1B5DF33E0(&qword_1EB90E010, &qword_1B5EB14B8);
  sub_1B5DF5DA8(v83);
  v132 = v84;
  v86 = *(v85 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v87);
  v89 = &v127 - v88;
  v90 = sub_1B5DF33E0(&qword_1EB90E018, &unk_1B5EB14C0);
  sub_1B5DF5DA8(v90);
  v92 = v91;
  v94 = *(v93 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v95);
  v97 = &v127 - v96;
  v98 = v32[3];
  v99 = v32[4];
  v157 = v32;
  sub_1B5E0897C(v32, v98);
  sub_1B5E1185C();
  v100 = v158;
  sub_1B5EA6030();
  if (v100)
  {
    goto LABEL_8;
  }

  v130 = v89;
  v129 = v83;
  v131 = v28;
  v101 = v155;
  v102 = v156;
  v158 = v92;
  v103 = sub_1B5EA5DE0();
  sub_1B5DFA434(v103, 0);
  if (v105 == v106 >> 1)
  {
LABEL_7:
    v115 = v90;
    v116 = v158;
    v117 = sub_1B5EA5BF0();
    swift_allocError();
    v119 = v118;
    v120 = *(sub_1B5DF33E0(&qword_1EB90DB08, &qword_1B5EAF520) + 48);
    *v119 = &type metadata for TextMessage.Tapback.TapbackType;
    sub_1B5EA5D20();
    sub_1B5EA5BE0();
    (*(*(v117 - 8) + 104))(v119, *MEMORY[0x1E69E6AF8], v117);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v116 + 8))(v97, v115);
LABEL_8:
    v121 = v157;
LABEL_9:
    sub_1B5DF3FB8(v121);
    sub_1B5DF7180();
    return;
  }

  v127 = 0;
  if (v105 < (v106 >> 1))
  {
    v128 = *(v104 + v105);
    sub_1B5DFA42C(v105 + 1);
    v108 = v107;
    v110 = v109;
    swift_unknownObjectRelease();
    if (v108 == v110 >> 1)
    {
      v111 = v153;
      switch(v128)
      {
        case 1:
          a10 = 1;
          sub_1B5E11AFC();
          sub_1B5E13C80();
          swift_unknownObjectRelease();
          v112 = sub_1B5E13D94(&a20);
          v114 = &a21;
          goto LABEL_15;
        case 2:
          a11 = 2;
          sub_1B5E11AA8();
          sub_1B5E13C80();
          swift_unknownObjectRelease();
          v112 = sub_1B5E13D94(&a22);
          v114 = &a23;
          goto LABEL_15;
        case 3:
          a12 = 3;
          sub_1B5E11A54();
          sub_1B5E13C80();
          swift_unknownObjectRelease();
          v112 = sub_1B5E13D94(&a24);
          v114 = &a25;
          goto LABEL_15;
        case 4:
          a13 = 4;
          sub_1B5E11A00();
          v122 = v151;
          sub_1B5E13C80();
          swift_unknownObjectRelease();
          v124 = v139;
          v123 = v140;
          goto LABEL_19;
        case 5:
          a14 = 5;
          sub_1B5E119AC();
          v122 = v101;
          sub_1B5E13CD8();
          swift_unknownObjectRelease();
          v124 = v141;
          v123 = v142;
          goto LABEL_19;
        case 6:
          a15 = 6;
          sub_1B5E11958();
          v122 = v102;
          sub_1B5E13CD8();
          swift_unknownObjectRelease();
          v124 = v143;
          v123 = v144;
          goto LABEL_19;
        case 7:
          a16 = 7;
          sub_1B5E11904();
          v122 = v149;
          sub_1B5E13C80();
          swift_unknownObjectRelease();
          v124 = v145;
          v123 = v146;
          goto LABEL_19;
        case 8:
          a17 = 8;
          sub_1B5E118B0();
          v122 = v152;
          sub_1B5E13C80();
          swift_unknownObjectRelease();
          v124 = v147;
          v123 = v148;
LABEL_19:
          v113 = *(v124 + 8);
          v112 = v122;
          break;
        default:
          v159 = 0;
          sub_1B5E11B50();
          sub_1B5E13C80();
          swift_unknownObjectRelease();
          v112 = sub_1B5E13D94(&a19);
          v114 = &a9;
LABEL_15:
          v123 = *(v114 - 32);
          break;
      }

      v113(v112, v123);
      v125 = sub_1B5E13F80();
      v126(v125);
      v121 = v157;
      *v111 = v128;
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_1B5E0FBA0()
{
  v2 = *v0;
  sub_1B5EA5FD0();
  TextMessage.Tapback.TapbackType.hash(into:)();
  return sub_1B5EA6020();
}

uint64_t TextMessage.Tapback.sender.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v5[0] = *(v1 + 8);
  v5[1] = v2;
  v6 = *(v1 + 40);
  sub_1B5E13F6C(a1, v5[0], v2, v6, *(v1 + 49));
  return sub_1B5E11D08(v5, &v4, &qword_1EB90E020, &qword_1B5EB14D0);
}

uint64_t TextMessage.Tapback.emoji.getter()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return sub_1B5DFA488();
}

uint64_t TextMessage.Tapback.imageDescription.getter()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);

  return sub_1B5DFA488();
}

uint64_t TextMessage.Tapback.init(type:sender:emoji:imageDescription:)@<X0>(_BYTE *a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v7 = a2[1];
  *(a7 + 8) = *a2;
  *a7 = *a1;
  *(a7 + 24) = v7;
  *(a7 + 40) = a2[2];
  *(a7 + 49) = *(a2 + 41);
  *(a7 + 72) = a3;
  *(a7 + 80) = a4;
  *(a7 + 88) = a5;
  *(a7 + 96) = a6;
  v8 = sub_1B5E13F08(v19);
  sub_1B5E13E30(v8, v9, v10, v11, v12, v13, v14, v15, v17, __src[0]);
  sub_1B5E11BA4(v19, __dst);
  sub_1B5E0FD5C();
  memcpy(__dst, __src, sizeof(__dst));
  return sub_1B5E11BDC(__dst);
}

void sub_1B5E0FD5C()
{
  if (*v0 == 6)
  {
    v1 = *(v0 + 80);
    if (!v1 || ((v1 & 0x2000000000000000) != 0 ? (v2 = HIBYTE(v1) & 0xF) : (v2 = *(v0 + 72) & 0xFFFFFFFFFFFFLL), !v2))
    {
      if (qword_1ED7D2988 != -1)
      {
        swift_once();
      }

      v3 = sub_1B5EA53B0();
      sub_1B5DFD794(v3, qword_1ED7D2990);
      oslog = sub_1B5EA5380();
      v4 = sub_1B5EA5A40();
      if (os_log_type_enabled(oslog, v4))
      {
        v5 = swift_slowAlloc();
        *v5 = 0;
        _os_log_impl(&dword_1B5DED000, oslog, v4, ".emoji Tapback created without associated emoji character", v5, 2u);
        MEMORY[0x1B8C8B330](v5, -1, -1);
      }
    }
  }
}

uint64_t TextMessage.Tapback.init(type:emoji:imageDescription:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = *a1;
  *(a6 + 8) = xmmword_1B5EB1380;
  *(a6 + 24) = 0u;
  *(a6 + 40) = 0u;
  *(a6 + 49) = 0u;
  *(a6 + 72) = a2;
  *(a6 + 80) = a3;
  *(a6 + 88) = a4;
  *(a6 + 96) = a5;
  v6 = sub_1B5E13F08(v17);
  sub_1B5E13E30(v6, v7, v8, v9, v10, v11, v12, v13, v15, __src[0]);
  sub_1B5E11BA4(v17, __dst);
  sub_1B5E0FD5C();
  memcpy(__dst, __src, sizeof(__dst));
  return sub_1B5E11BDC(__dst);
}

uint64_t sub_1B5E0FF14(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_1B5EA5F00() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7265646E6573 && a2 == 0xE600000000000000;
    if (v6 || (sub_1B5EA5F00() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x696A6F6D65 && a2 == 0xE500000000000000;
      if (v7 || (sub_1B5EA5F00() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000010 && 0x80000001B5EA8BB0 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_1B5EA5F00();

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

unint64_t sub_1B5E1006C(char a1)
{
  result = 1701869940;
  switch(a1)
  {
    case 1:
      result = 0x7265646E6573;
      break;
    case 2:
      result = 0x696A6F6D65;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B5E100E4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1B5EA5FD0();
  a4(v8, v6);
  return sub_1B5EA6020();
}

uint64_t sub_1B5E10138@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B5E0FF14(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B5E10160(uint64_t a1)
{
  v2 = sub_1B5E11C0C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B5E1019C(uint64_t a1)
{
  v2 = sub_1B5E11C0C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void TextMessage.Tapback.encode(to:)()
{
  sub_1B5DF7168();
  v4 = v3;
  v5 = sub_1B5DF33E0(&qword_1EB90E028, &qword_1B5EB14D8);
  sub_1B5DF5DA8(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v10);
  sub_1B5E08868();
  v11 = *v0;
  v12 = *(v0 + 24);
  v22 = *(v0 + 8);
  v23 = v12;
  v24[0] = *(v0 + 40);
  *(v24 + 9) = *(v0 + 49);
  v17 = *(v0 + 9);
  v16 = *(v0 + 10);
  v14 = *(v0 + 11);
  v15 = *(v0 + 12);
  v13 = v4[4];
  sub_1B5E0897C(v4, v4[3]);
  sub_1B5E11C0C();
  sub_1B5E08B7C();
  sub_1B5EA6040();
  LOBYTE(v19) = v11;
  v18[0] = 0;
  sub_1B5E11C60();
  sub_1B5EA5EA0();
  if (!v1)
  {
    v19 = v22;
    v20 = v23;
    v21[0] = v24[0];
    *(v21 + 9) = *(v24 + 9);
    v18[63] = 1;
    sub_1B5E11D08(&v22, v18, &qword_1EB90E020, &qword_1B5EB14D0);
    sub_1B5E067E0();
    sub_1B5E08798();
    sub_1B5EA5E40();
    sub_1B5E13DA4();
    sub_1B5DF4428(v18, &qword_1EB90E020, &qword_1B5EB14D0);
    sub_1B5E08798();
    sub_1B5EA5E10();
    sub_1B5E08798();
    sub_1B5EA5E10();
  }

  (*(v7 + 8))(v2, v5);
  sub_1B5E08B88();
  sub_1B5DF7180();
}

void TextMessage.Tapback.init(from:)()
{
  sub_1B5DF7168();
  v3 = v2;
  v5 = v4;
  v38 = sub_1B5DF33E0(&qword_1EB90E040, &qword_1B5EB14E0);
  sub_1B5DF5DA8(v38);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v10);
  sub_1B5E13EC0();
  v11 = v3[4];
  sub_1B5E0897C(v3, v3[3]);
  sub_1B5E11C0C();
  sub_1B5E13F48();
  sub_1B5EA6030();
  if (v0)
  {
    sub_1B5DF3FB8(v3);
  }

  else
  {
    v12 = v5;
    LOBYTE(v22[0]) = 0;
    sub_1B5E11CB4();
    sub_1B5E13D6C();
    sub_1B5EA5DC0();
    v33 = 1;
    sub_1B5E068C4();
    sub_1B5E13D6C();
    sub_1B5EA5D60();
    v21 = v23;
    *&v37[7] = v34;
    *&v37[23] = v35;
    *&v37[39] = *v36;
    *&v37[48] = *&v36[9];
    v23 = 2;
    v13 = sub_1B5EA5D30();
    v15 = v14;
    v20 = v13;
    v32 = 3;
    v16 = sub_1B5EA5D30();
    v17 = v1;
    v19 = v18;
    (*(v7 + 8))(v17, v38);
    LOBYTE(v22[0]) = v21;
    *(v22 + 1) = *v37;
    *(&v22[2] + 1) = *&v37[16];
    *(&v22[4] + 1) = *&v37[32];
    *(&v22[6] + 1) = *&v37[48];
    v22[9] = v20;
    v22[10] = v15;
    v22[11] = v16;
    v22[12] = v19;
    memcpy(v12, v22, 0x68uLL);
    sub_1B5E11BA4(v22, &v23);
    sub_1B5DF3FB8(v3);
    v23 = v21;
    v24 = *v37;
    v25 = *&v37[16];
    v26 = *&v37[32];
    v27 = *&v37[48];
    v28 = v20;
    v29 = v15;
    v30 = v16;
    v31 = v19;
    sub_1B5E11BDC(&v23);
  }

  sub_1B5DF7180();
}

double TextMessage.tapback.getter@<D0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  if (qword_1ED7D2988 != -1)
  {
    sub_1B5E13DCC();
  }

  v4 = sub_1B5EA53B0();
  sub_1B5DFD794(v4, qword_1ED7D2990);
  v5 = sub_1B5EA5380();
  v6 = sub_1B5EA5A40();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    sub_1B5E13F94(&dword_1B5DED000, v8, v9, "TextMesssage.tapback is deprecated; use the array version.");
    MEMORY[0x1B8C8B330](v7, -1, -1);
  }

  v10 = *(v2 + *(type metadata accessor for TextMessage() + 44));

  return sub_1B5E10A7C(v10, a1);
}

uint64_t sub_1B5E108C0(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_1B5E11D08(__dst, &v3, &qword_1EB90E058, &qword_1B5EB14F0);
  return TextMessage.tapback.setter(__src);
}

uint64_t TextMessage.tapback.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 80);
  if (qword_1ED7D2988 != -1)
  {
    sub_1B5E13DCC();
  }

  v5 = sub_1B5EA53B0();
  sub_1B5DFD794(v5, qword_1ED7D2990);
  v6 = sub_1B5EA5380();
  v7 = sub_1B5EA5A40();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    sub_1B5E13F94(&dword_1B5DED000, v9, v10, "TextMesssage.tapback is deprecated; use the array version.");
    MEMORY[0x1B8C8B330](v8, -1, -1);
  }

  if (v4 == 1)
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    sub_1B5DF33E0(&qword_1EB90E050, &qword_1B5EB14E8);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1B5EAFC20;
    memcpy((v11 + 32), a1, 0x50uLL);
    *(v11 + 112) = v4;
    *(v11 + 120) = *(a1 + 88);
  }

  v12 = *(type metadata accessor for TextMessage() + 44);
  v13 = *(v2 + v12);

  *(v2 + v12) = v11;
  return result;
}

double sub_1B5E10A7C@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (*(a1 + 16))
  {
    memcpy(__dst, (a1 + 32), sizeof(__dst));
    memcpy(a2, (a1 + 32), 0x68uLL);
    sub_1B5E11BA4(__dst, &v5);
  }

  else
  {
    result = 0.0;
    a2[3] = 0u;
    a2[4] = 0u;
    a2[1] = 0u;
    a2[2] = 0u;
    *a2 = 0u;
    *(a2 + 11) = 0;
    *(a2 + 12) = 0;
    *(a2 + 10) = 1;
  }

  return result;
}

uint64_t sub_1B5E10B2C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  v6 = a2(0);
  v7 = v6;
  if (v5)
  {
    (*(*(v6 - 8) + 16))(a3, a1 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)), v6);
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  return sub_1B5DF3658(a3, v8, 1, v7);
}

uint64_t sub_1B5E10BD8(uint64_t a1)
{
  result = sub_1B5E13B64(a1);
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
    return sub_1B5E13BA4(result, v3, 0, a1);
  }
}

void (*TextMessage.tapback.modify(void *a1))(uint64_t *a1, char a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v3 = sub_1B5E016E4(0x1A8uLL);
  *a1 = v3;
  v3[52] = v1;
  TextMessage.tapback.getter(v3);
  return sub_1B5E10CA0;
}

void sub_1B5E10CA0(uint64_t *a1, char a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v8 = *a1;
  v9 = *(*a1 + 416);
  if (a2)
  {
    v10 = sub_1B5E13F08((v8 + 208));
    sub_1B5E13E30(v10, v11, v12, v13, v14, v15, v16, v17, v18, v19[0]);
    sub_1B5E11D08(v8 + 208, v8 + 312, &qword_1EB90E058, &qword_1B5EB14F0);
    TextMessage.tapback.setter(v19);
    sub_1B5E13F08((v8 + 104));
    sub_1B5DF4428(v8 + 104, &qword_1EB90E058, &qword_1B5EB14F0);
  }

  else
  {
    sub_1B5E13E30(a1, a2, a3, a4, a5, a6, a7, a8, v18, v19[0]);
    TextMessage.tapback.setter(v19);
  }

  free(v8);
}

uint64_t TextMessage.init(messageID:sender:recipients:dateReceived:isUnread:threadID:body:tapback:attachments:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v19 = *(a12 + 80);
  if (v19 == 1)
  {
    v20 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    sub_1B5DF33E0(&qword_1EB90E050, &qword_1B5EB14E8);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1B5EAFC20;
    memcpy((v20 + 32), a12, 0x50uLL);
    *(v20 + 112) = v19;
    *(v20 + 120) = *(a12 + 88);
  }

  v21 = type metadata accessor for TextMessage();
  v22 = (a9 + v21[9]);
  v23 = (a9 + v21[10]);
  *a9 = a1;
  *(a9 + 8) = a2;
  v24 = a3[1];
  *(a9 + 16) = *a3;
  *(a9 + 32) = v24;
  *(a9 + 48) = a3[2];
  *(a9 + 57) = *(a3 + 41);
  *(a9 + 80) = a4;
  v25 = v21[7];
  v26 = sub_1B5EA42F0();
  sub_1B5DF5EB8(v26);
  result = (*(v27 + 32))(a9 + v25, a5);
  *(a9 + v21[8]) = a6 & 1;
  *v22 = a7;
  v22[1] = a8;
  *v23 = a10;
  v23[1] = a11;
  *(a9 + v21[11]) = v20;
  *(a9 + v21[12]) = a13;
  return result;
}

void TextMessage.init(messageID:sender:recipients:dateReceived:isUnread:threadID:body:attachments:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  sub_1B5E13EA4();
  v13 = type metadata accessor for TextMessage();
  v14 = v13[7];
  v15 = sub_1B5EA42F0();
  sub_1B5DF5EB8(v15);
  (*(v16 + 32))(v12 + v14, v11);
  v17 = v12 + v13[9];
  v18 = v12 + v13[10];
  sub_1B5E13DEC();
  *(v12 + v13[8]) = a6;
  *v19 = a7;
  v19[1] = a8;
  *v20 = a9;
  v20[1] = a10;
  *(v12 + v13[11]) = MEMORY[0x1E69E7CC0];
  *(v12 + v13[12]) = a11;
}

Sage::TextMessage::VisualPromptOptions __swiftcall TextMessage.VisualPromptOptions.init()()
{
  *v0 = 258;
  *(v0 + 2) = 0;
  return result;
}

Sage::TextMessage::VisualPromptOptions __swiftcall TextMessage.VisualPromptOptions.init(extractVisualConcepts:extractVisualTopLine:)(Swift::Bool extractVisualConcepts, Swift::Bool extractVisualTopLine)
{
  *v2 = 2;
  v2[1] = extractVisualConcepts;
  v2[2] = extractVisualTopLine;
  result.useCase = extractVisualConcepts;
  return result;
}

unint64_t sub_1B5E10FE4()
{
  result = qword_1EB90D860;
  if (!qword_1EB90D860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D860);
  }

  return result;
}

unint64_t sub_1B5E11038()
{
  result = qword_1EB90CDA0;
  if (!qword_1EB90CDA0)
  {
    sub_1B5DFD694(&qword_1EB90DBB8, &qword_1B5EAFCB8);
    sub_1B5E06128();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90CDA0);
  }

  return result;
}

uint64_t type metadata accessor for TextMessage()
{
  result = qword_1ED7D2800;
  if (!qword_1ED7D2800)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1B5E11108()
{
  result = qword_1EB90CD98;
  if (!qword_1EB90CD98)
  {
    sub_1B5DFD694(&qword_1EB90DBB8, &qword_1B5EAFCB8);
    sub_1B5E06288();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90CD98);
  }

  return result;
}

uint64_t sub_1B5E1118C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1B5DFD694(&qword_1EB90DEA8, &qword_1B5EB13A0);
    sub_1B5E11754(a2, type metadata accessor for TextMessage);
    result = sub_1B5E13FB4();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B5E11218()
{
  result = qword_1EB90D848;
  if (!qword_1EB90D848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D848);
  }

  return result;
}

unint64_t sub_1B5E1126C()
{
  result = qword_1EB90D818;
  if (!qword_1EB90D818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D818);
  }

  return result;
}

unint64_t sub_1B5E112C0()
{
  result = qword_1EB90D830;
  if (!qword_1EB90D830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D830);
  }

  return result;
}

unint64_t sub_1B5E11314()
{
  result = qword_1EB90DEF0;
  if (!qword_1EB90DEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90DEF0);
  }

  return result;
}

unint64_t sub_1B5E11368()
{
  result = qword_1EB90DF08;
  if (!qword_1EB90DF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90DF08);
  }

  return result;
}

unint64_t sub_1B5E113BC()
{
  result = qword_1EB90D878;
  if (!qword_1EB90D878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D878);
  }

  return result;
}

unint64_t sub_1B5E11410()
{
  result = qword_1EB90CDB0;
  if (!qword_1EB90CDB0)
  {
    sub_1B5DFD694(&qword_1EB90DC58, &unk_1B5EB2BC0);
    sub_1B5E067E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90CDB0);
  }

  return result;
}

unint64_t sub_1B5E11494()
{
  result = qword_1EB90CDF0;
  if (!qword_1EB90CDF0)
  {
    sub_1B5DFD694(&qword_1EB90DF20, &unk_1B5EB1410);
    sub_1B5E11518();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90CDF0);
  }

  return result;
}

unint64_t sub_1B5E11518()
{
  result = qword_1EB90D100;
  if (!qword_1EB90D100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D100);
  }

  return result;
}

uint64_t sub_1B5E1156C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1B5DFD694(&qword_1EB90DC60, &qword_1B5EAFD30);
    sub_1B5E11754(a2, type metadata accessor for Attachment);
    result = sub_1B5E13FB4();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B5E115F8()
{
  result = qword_1EB90CDA8;
  if (!qword_1EB90CDA8)
  {
    sub_1B5DFD694(&qword_1EB90DC58, &unk_1B5EB2BC0);
    sub_1B5E068C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90CDA8);
  }

  return result;
}

unint64_t sub_1B5E1167C()
{
  result = qword_1EB90CDE8;
  if (!qword_1EB90CDE8)
  {
    sub_1B5DFD694(&qword_1EB90DF20, &unk_1B5EB1410);
    sub_1B5E11700();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90CDE8);
  }

  return result;
}

unint64_t sub_1B5E11700()
{
  result = qword_1EB90D0F8;
  if (!qword_1EB90D0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D0F8);
  }

  return result;
}

uint64_t sub_1B5E11754(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B5E1179C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextMessage();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B5E11800(uint64_t a1)
{
  v2 = type metadata accessor for TextMessage();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B5E1185C()
{
  result = qword_1EB90DF80;
  if (!qword_1EB90DF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90DF80);
  }

  return result;
}

unint64_t sub_1B5E118B0()
{
  result = qword_1EB90DF88;
  if (!qword_1EB90DF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90DF88);
  }

  return result;
}

unint64_t sub_1B5E11904()
{
  result = qword_1EB90DF90;
  if (!qword_1EB90DF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90DF90);
  }

  return result;
}

unint64_t sub_1B5E11958()
{
  result = qword_1EB90DF98;
  if (!qword_1EB90DF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90DF98);
  }

  return result;
}

unint64_t sub_1B5E119AC()
{
  result = qword_1EB90DFA0;
  if (!qword_1EB90DFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90DFA0);
  }

  return result;
}

unint64_t sub_1B5E11A00()
{
  result = qword_1EB90DFA8;
  if (!qword_1EB90DFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90DFA8);
  }

  return result;
}

unint64_t sub_1B5E11A54()
{
  result = qword_1EB90DFB0;
  if (!qword_1EB90DFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90DFB0);
  }

  return result;
}

unint64_t sub_1B5E11AA8()
{
  result = qword_1EB90DFB8;
  if (!qword_1EB90DFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90DFB8);
  }

  return result;
}

unint64_t sub_1B5E11AFC()
{
  result = qword_1EB90DFC0;
  if (!qword_1EB90DFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90DFC0);
  }

  return result;
}

unint64_t sub_1B5E11B50()
{
  result = qword_1EB90DFC8;
  if (!qword_1EB90DFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90DFC8);
  }

  return result;
}

unint64_t sub_1B5E11C0C()
{
  result = qword_1EB90E030;
  if (!qword_1EB90E030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E030);
  }

  return result;
}

unint64_t sub_1B5E11C60()
{
  result = qword_1EB90E038;
  if (!qword_1EB90E038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E038);
  }

  return result;
}

unint64_t sub_1B5E11CB4()
{
  result = qword_1EB90E048;
  if (!qword_1EB90E048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E048);
  }

  return result;
}

uint64_t sub_1B5E11D08(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_1B5DF33E0(a3, a4);
  sub_1B5DF5EB8(v5);
  v7 = *(v6 + 16);
  v8 = sub_1B5DFA488();
  v9(v8);
  return a2;
}

unint64_t sub_1B5E11D68()
{
  result = qword_1EB90D128;
  if (!qword_1EB90D128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D128);
  }

  return result;
}

unint64_t sub_1B5E11DC0()
{
  result = qword_1EB90D130;
  if (!qword_1EB90D130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D130);
  }

  return result;
}

unint64_t sub_1B5E11E18()
{
  result = qword_1EB90D138;
  if (!qword_1EB90D138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D138);
  }

  return result;
}

unint64_t sub_1B5E11E70()
{
  result = qword_1EB90D140;
  if (!qword_1EB90D140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D140);
  }

  return result;
}

unint64_t sub_1B5E11EC8()
{
  result = qword_1EB90D108;
  if (!qword_1EB90D108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D108);
  }

  return result;
}

unint64_t sub_1B5E11F20()
{
  result = qword_1EB90D110;
  if (!qword_1EB90D110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D110);
  }

  return result;
}

unint64_t sub_1B5E11F78()
{
  result = qword_1EB90D118;
  if (!qword_1EB90D118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D118);
  }

  return result;
}

unint64_t sub_1B5E11FD0()
{
  result = qword_1EB90D120;
  if (!qword_1EB90D120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D120);
  }

  return result;
}

unint64_t sub_1B5E12028()
{
  result = qword_1EB90E060;
  if (!qword_1EB90E060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E060);
  }

  return result;
}

unint64_t sub_1B5E12080()
{
  result = qword_1EB90E068;
  if (!qword_1EB90E068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E068);
  }

  return result;
}

unint64_t sub_1B5E120D8()
{
  result = qword_1EB90E070;
  if (!qword_1EB90E070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E070);
  }

  return result;
}

unint64_t sub_1B5E12130()
{
  result = qword_1EB90E078;
  if (!qword_1EB90E078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E078);
  }

  return result;
}

uint64_t sub_1B5E12184(uint64_t a1)
{
  *(a1 + 8) = sub_1B5E11754(&qword_1ED7D2810, type metadata accessor for TextMessage);
  sub_1B5E13C50();
  result = sub_1B5E11754(v2, type metadata accessor for TextMessage);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1B5E121FC()
{
  result = qword_1EB90E080;
  if (!qword_1EB90E080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E080);
  }

  return result;
}

void sub_1B5E12278()
{
  sub_1B5E123C8(319, &qword_1ED7D2010, &type metadata for Handle, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B5EA42F0();
    if (v1 <= 0x3F)
    {
      sub_1B5E123C8(319, &qword_1ED7D2D00, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1B5E123C8(319, &qword_1ED7D2028, &type metadata for TextMessage.Tapback, MEMORY[0x1E69E62F8]);
        if (v3 <= 0x3F)
        {
          sub_1B5E07064();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1B5E123C8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1B5E12484(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 2)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B5E12498(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B5E124C4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 104))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 80);
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

uint64_t sub_1B5E12518(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 104) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 104) = 0;
    }

    if (a2)
    {
      *(result + 80) = a2;
    }
  }

  return result;
}

uint64_t sub_1B5E125A4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_1B5E13F40(-1);
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return sub_1B5E13F40((*a1 | (v4 << 8)) - 4);
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

      return sub_1B5E13F40((*a1 | (v4 << 8)) - 4);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_1B5E13F40((*a1 | (v4 << 8)) - 4);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return sub_1B5E13F40(v8);
}

_BYTE *sub_1B5E12628(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = sub_1B5E13F38(result, v6);
        break;
      case 2:
        result = sub_1B5E13F20(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = sub_1B5E13F28(result, v6);
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
          result = sub_1B5E13F30(result, a2 + 3);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1B5E12794(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_1B5E13F40(-1);
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return sub_1B5E13F40((*a1 | (v4 << 8)) - 9);
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

      return sub_1B5E13F40((*a1 | (v4 << 8)) - 9);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_1B5E13F40((*a1 | (v4 << 8)) - 9);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return sub_1B5E13F40(v8);
}

_BYTE *sub_1B5E12818(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = sub_1B5E13F38(result, v6);
        break;
      case 2:
        result = sub_1B5E13F20(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = sub_1B5E13F28(result, v6);
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
          result = sub_1B5E13F30(result, a2 + 8);
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TextMessage.ThreadVisualPromptOptions.CodingKeys(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for TextMessage.ThreadClassificationOptions.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1B5E12A9C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_1B5E13F40(-1);
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
      return sub_1B5E13F40((*a1 | (v4 << 8)) - 3);
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

      return sub_1B5E13F40((*a1 | (v4 << 8)) - 3);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_1B5E13F40((*a1 | (v4 << 8)) - 3);
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

  return sub_1B5E13F40(v8);
}

_BYTE *sub_1B5E12B20(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = sub_1B5E13F38(result, v6);
        break;
      case 2:
        result = sub_1B5E13F20(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = sub_1B5E13F28(result, v6);
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
          result = sub_1B5E13F30(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1B5E12BF0()
{
  result = qword_1EB90E088;
  if (!qword_1EB90E088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E088);
  }

  return result;
}

unint64_t sub_1B5E12C48()
{
  result = qword_1EB90E090;
  if (!qword_1EB90E090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E090);
  }

  return result;
}

unint64_t sub_1B5E12CA0()
{
  result = qword_1EB90E098;
  if (!qword_1EB90E098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E098);
  }

  return result;
}

unint64_t sub_1B5E12CF8()
{
  result = qword_1EB90E0A0;
  if (!qword_1EB90E0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E0A0);
  }

  return result;
}

unint64_t sub_1B5E12D50()
{
  result = qword_1EB90E0A8;
  if (!qword_1EB90E0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E0A8);
  }

  return result;
}

unint64_t sub_1B5E12DA8()
{
  result = qword_1EB90E0B0;
  if (!qword_1EB90E0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E0B0);
  }

  return result;
}

unint64_t sub_1B5E12E00()
{
  result = qword_1EB90E0B8;
  if (!qword_1EB90E0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E0B8);
  }

  return result;
}

unint64_t sub_1B5E12E58()
{
  result = qword_1EB90E0C0;
  if (!qword_1EB90E0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E0C0);
  }

  return result;
}

unint64_t sub_1B5E12EB0()
{
  result = qword_1EB90E0C8;
  if (!qword_1EB90E0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E0C8);
  }

  return result;
}

unint64_t sub_1B5E12F08()
{
  result = qword_1EB90E0D0;
  if (!qword_1EB90E0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E0D0);
  }

  return result;
}

unint64_t sub_1B5E12F60()
{
  result = qword_1EB90E0D8;
  if (!qword_1EB90E0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E0D8);
  }

  return result;
}

unint64_t sub_1B5E12FB8()
{
  result = qword_1EB90E0E0;
  if (!qword_1EB90E0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E0E0);
  }

  return result;
}

unint64_t sub_1B5E13010()
{
  result = qword_1EB90E0E8;
  if (!qword_1EB90E0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E0E8);
  }

  return result;
}

unint64_t sub_1B5E13068()
{
  result = qword_1EB90E0F0;
  if (!qword_1EB90E0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E0F0);
  }

  return result;
}

unint64_t sub_1B5E130C0()
{
  result = qword_1EB90E0F8;
  if (!qword_1EB90E0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E0F8);
  }

  return result;
}

unint64_t sub_1B5E13118()
{
  result = qword_1EB90E100;
  if (!qword_1EB90E100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E100);
  }

  return result;
}

unint64_t sub_1B5E13170()
{
  result = qword_1EB90E108;
  if (!qword_1EB90E108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E108);
  }

  return result;
}

unint64_t sub_1B5E131C8()
{
  result = qword_1EB90E110;
  if (!qword_1EB90E110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E110);
  }

  return result;
}

unint64_t sub_1B5E13220()
{
  result = qword_1EB90E118;
  if (!qword_1EB90E118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E118);
  }

  return result;
}

unint64_t sub_1B5E13278()
{
  result = qword_1EB90E120;
  if (!qword_1EB90E120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E120);
  }

  return result;
}

unint64_t sub_1B5E132D0()
{
  result = qword_1EB90E128;
  if (!qword_1EB90E128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E128);
  }

  return result;
}

unint64_t sub_1B5E13328()
{
  result = qword_1EB90E130;
  if (!qword_1EB90E130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E130);
  }

  return result;
}

unint64_t sub_1B5E13380()
{
  result = qword_1EB90E138;
  if (!qword_1EB90E138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E138);
  }

  return result;
}

unint64_t sub_1B5E133D8()
{
  result = qword_1EB90E140;
  if (!qword_1EB90E140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E140);
  }

  return result;
}

unint64_t sub_1B5E13430()
{
  result = qword_1EB90E148;
  if (!qword_1EB90E148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E148);
  }

  return result;
}

unint64_t sub_1B5E13488()
{
  result = qword_1EB90E150;
  if (!qword_1EB90E150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E150);
  }

  return result;
}

unint64_t sub_1B5E134E0()
{
  result = qword_1EB90E158;
  if (!qword_1EB90E158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E158);
  }

  return result;
}

unint64_t sub_1B5E13538()
{
  result = qword_1EB90E160;
  if (!qword_1EB90E160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E160);
  }

  return result;
}

unint64_t sub_1B5E13590()
{
  result = qword_1EB90E168;
  if (!qword_1EB90E168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E168);
  }

  return result;
}

unint64_t sub_1B5E135E8()
{
  result = qword_1EB90E170;
  if (!qword_1EB90E170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E170);
  }

  return result;
}

unint64_t sub_1B5E13640()
{
  result = qword_1EB90E178;
  if (!qword_1EB90E178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E178);
  }

  return result;
}

unint64_t sub_1B5E13698()
{
  result = qword_1EB90D868;
  if (!qword_1EB90D868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D868);
  }

  return result;
}

unint64_t sub_1B5E136F0()
{
  result = qword_1EB90D870;
  if (!qword_1EB90D870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D870);
  }

  return result;
}

unint64_t sub_1B5E13748()
{
  result = qword_1EB90E180;
  if (!qword_1EB90E180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E180);
  }

  return result;
}

unint64_t sub_1B5E137A0()
{
  result = qword_1EB90E188;
  if (!qword_1EB90E188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E188);
  }

  return result;
}

unint64_t sub_1B5E137F8()
{
  result = qword_1EB90E190;
  if (!qword_1EB90E190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E190);
  }

  return result;
}

unint64_t sub_1B5E13850()
{
  result = qword_1EB90E198;
  if (!qword_1EB90E198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E198);
  }

  return result;
}

unint64_t sub_1B5E138A8()
{
  result = qword_1EB90D820;
  if (!qword_1EB90D820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D820);
  }

  return result;
}

unint64_t sub_1B5E13900()
{
  result = qword_1EB90D828;
  if (!qword_1EB90D828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D828);
  }

  return result;
}

unint64_t sub_1B5E13958()
{
  result = qword_1EB90D808;
  if (!qword_1EB90D808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D808);
  }

  return result;
}

unint64_t sub_1B5E139B0()
{
  result = qword_1EB90D810;
  if (!qword_1EB90D810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D810);
  }

  return result;
}

unint64_t sub_1B5E13A08()
{
  result = qword_1EB90D838;
  if (!qword_1EB90D838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D838);
  }

  return result;
}

unint64_t sub_1B5E13A60()
{
  result = qword_1EB90D840;
  if (!qword_1EB90D840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D840);
  }

  return result;
}

unint64_t sub_1B5E13AB8()
{
  result = qword_1EB90D850;
  if (!qword_1EB90D850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D850);
  }

  return result;
}

unint64_t sub_1B5E13B10()
{
  result = qword_1EB90D858;
  if (!qword_1EB90D858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D858);
  }

  return result;
}

uint64_t sub_1B5E13B64(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = sub_1B5EA5B10();
  v4 = *(a1 + 36);
  return result;
}

uint64_t sub_1B5E13BA4(uint64_t result, int a2, uint64_t a3, uint64_t a4)
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
    return *(*(a4 + 48) + 8 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1B5E13C80()
{

  return sub_1B5EA5D10();
}

uint64_t sub_1B5E13CA4()
{
  v2 = *(v0 - 112);

  return sub_1B5EA5E00();
}

uint64_t sub_1B5E13CD8()
{

  return sub_1B5EA5D10();
}

uint64_t sub_1B5E13CF8()
{

  return sub_1B5EA5EA0();
}

__n128 sub_1B5E13DA4()
{
  v1 = *(v0 - 208);
  *(v0 - 288) = *(v0 - 224);
  *(v0 - 272) = v1;
  *(v0 - 256) = *(v0 - 192);
  result = *(v0 - 183);
  *(v0 - 247) = result;
  return result;
}

uint64_t sub_1B5E13DCC()
{

  return swift_once();
}

__n128 sub_1B5E13DEC()
{
  *v4 = v3;
  *(v4 + 8) = v2;
  v5 = *(v1 + 16);
  *(v4 + 16) = *v1;
  *(v4 + 32) = v5;
  *(v4 + 48) = *(v1 + 32);
  result = *(v1 + 41);
  *(v4 + 57) = result;
  *(v4 + 80) = v0;
  return result;
}

void *sub_1B5E13E30(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char __dst)
{

  return memcpy(&__dst, v10, 0x68uLL);
}

uint64_t sub_1B5E13E4C()
{

  return sub_1B5EA5DC0();
}

uint64_t sub_1B5E13E78()
{

  return sub_1B5EA5EA0();
}

uint64_t sub_1B5E13EF0()
{

  return type metadata accessor for TextMessage();
}

void *sub_1B5E13F08(void *a1)
{

  return memcpy(a1, v1, 0x68uLL);
}

void sub_1B5E13F6C(uint64_t a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q1>, __n128 a4@<Q2>, __n128 a5@<Q3>)
{
  *a1 = a2;
  *(a1 + 16) = a3;
  *(a1 + 32) = a4;
  *(a1 + 41) = a5;
}

void sub_1B5E13F94(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_1B5E13FB4()
{

  return swift_getWitnessTable();
}

uint64_t UserNotification.SummarizationOptions.requestIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return sub_1B5DFA488();
}

uint64_t UserNotification.SummarizationOptions.requestIdentifier.setter()
{
  sub_1B5DFA47C();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t UserNotification.SummarizationOptions.requestedSummarizationStyles.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t UserNotification.SummarizationOptions.previousNotifications.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t UserNotification.SummarizationOptions.init(requestIdentifier:requestedSummarizationStyles:previousNotifications:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t UserNotification.SummarizationOptions.init(requestIdentifier:requestedSummarizationStyles:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  v4 = MEMORY[0x1E69E7CC0];
  a4[2] = a3;
  a4[3] = v4;
  return result;
}

uint64_t sub_1B5E14128(uint64_t a1)
{
  v2 = sub_1B5E179BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B5E14164(uint64_t a1)
{
  v2 = sub_1B5E179BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B5E14294@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1B5EA4340();
  v5 = sub_1B5DF5DA8(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1B5DFD7E8();
  v12 = v11 - v10;
  v13 = sub_1B5E05F94(a1);
  sub_1B5EA4330();
  v14 = sub_1B5EA4300();
  v16 = v15;
  result = (*(v7 + 8))(v12, v4);
  *a2 = v14;
  a2[1] = v16;
  v18 = MEMORY[0x1E69E7CC0];
  a2[2] = v13;
  a2[3] = v18;
  return result;
}

uint64_t sub_1B5E14380(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x80000001B5EA8AB0 == a2;
  if (v3 || (sub_1B5E0888C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD00000000000001CLL && 0x80000001B5EA8AD0 == a2;
    if (v6 || (sub_1B5E0888C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000015 && 0x80000001B5EA8BD0 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_1B5E0888C();

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

uint64_t sub_1B5E14474(uint64_t a1)
{
  v2 = sub_1B5E17AEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B5E144B0(uint64_t a1)
{
  v2 = sub_1B5E17AEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1B5E14520()
{
  sub_1B5DF7168();
  v25 = v2;
  v26 = v1;
  v4 = v3;
  v7 = sub_1B5DF33E0(v5, v6);
  sub_1B5DF5DA8(v7);
  v9 = v8;
  v11 = *(v10 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v12);
  v13 = *v0;
  v14 = v0[1];
  v15 = v0[2];
  v24[1] = v0[3];
  v24[2] = v15;
  v17 = v4[3];
  v16 = v4[4];
  v18 = v4;
  v20 = v24 - v19;
  v21 = sub_1B5E0897C(v18, v17);
  v25(v21);
  sub_1B5EA6040();
  v22 = v26;
  sub_1B5EA5E50();
  if (!v22)
  {
    v27 = 1;
    sub_1B5DF33E0(&qword_1EB90DBB8, &qword_1B5EAFCB8);
    sub_1B5E0621C(&qword_1EB90CDA0);
    sub_1B5E13E78();
    v27 = 2;
    sub_1B5DF33E0(&qword_1EB90E1B0, &qword_1B5EB2B70);
    sub_1B5E18F4C();
    sub_1B5E17A5C(v23);
    sub_1B5E13E78();
  }

  (*(v9 + 8))(v20, v7);
  sub_1B5DF7180();
}

void sub_1B5E14748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1B5DF7168();
  v12 = v11;
  v14 = v13;
  v29 = v15;
  v30 = sub_1B5DF33E0(v16, v17);
  sub_1B5DF5DA8(v30);
  v19 = *(v18 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v20);
  v21 = v14[4];
  v22 = sub_1B5E0897C(v14, v14[3]);
  v12(v22);
  sub_1B5EA6030();
  if (v10)
  {
    sub_1B5DF3FB8(v14);
  }

  else
  {
    LOBYTE(a10) = 0;
    v23 = sub_1B5EA5D70();
    v25 = v24;
    sub_1B5DF33E0(&qword_1EB90DBB8, &qword_1B5EAFCB8);
    sub_1B5E0621C(&qword_1EB90CD98);
    sub_1B5E13E10();
    sub_1B5EA5DC0();
    sub_1B5DF33E0(&qword_1EB90E1B0, &qword_1B5EB2B70);
    sub_1B5E18F64();
    sub_1B5E17A5C(v26);
    sub_1B5E13E10();
    sub_1B5EA5DC0();
    v27 = sub_1B5E13D84();
    v28(v27);
    *v29 = v23;
    v29[1] = v25;
    v29[2] = a10;
    v29[3] = a10;

    sub_1B5DF3FB8(v14);
  }

  sub_1B5DF7180();
}

Sage::UserNotification::ClassificationOptions __swiftcall UserNotification.ClassificationOptions.init(requestIdentifier:isSenderImportant:previousNotifications:)(Sage::UserNotification::ClassificationOptions requestIdentifier, Swift::Bool_optional isSenderImportant, Swift::OpaquePointer previousNotifications)
{
  *v3 = requestIdentifier.requestIdentifier;
  *(v3 + 16) = isSenderImportant;
  *(v3 + 24) = previousNotifications;
  requestIdentifier.previousNotifications = previousNotifications;
  requestIdentifier.isSenderImportant = isSenderImportant;
  return requestIdentifier;
}

Sage::UserNotification::ClassificationOptions __swiftcall UserNotification.ClassificationOptions.init()()
{
  v1 = v0;
  v2 = sub_1B5EA4340();
  v3 = sub_1B5DF5DA8(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1B5DFD7E8();
  v10 = v9 - v8;
  sub_1B5EA4330();
  v11 = sub_1B5EA4300();
  v13 = v12;
  v14 = (*(v5 + 8))(v10, v2);
  *v1 = v11;
  *(v1 + 8) = v13;
  *(v1 + 16) = 2;
  *(v1 + 24) = MEMORY[0x1E69E7CC0];
  result.previousNotifications._rawValue = v17;
  result.requestIdentifier._object = v15;
  result.requestIdentifier._countAndFlagsBits = v14;
  result.isSenderImportant.value = v16;
  return result;
}

uint64_t sub_1B5E14B74(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x80000001B5EA8AB0 == a2;
  if (v3 || (sub_1B5EA5F00() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000011 && 0x80000001B5EA8B50 == a2;
    if (v6 || (sub_1B5EA5F00() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000015 && 0x80000001B5EA8BD0 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_1B5EA5F00();

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

unint64_t sub_1B5E14C90(unsigned __int8 a1)
{
  result = 0xD000000000000011;
  if (a1 >= 2u)
  {
    return 0xD000000000000015;
  }

  return result;
}

uint64_t sub_1B5E14CEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B5E14B74(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B5E14D14(uint64_t a1)
{
  v2 = sub_1B5E17B40();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B5E14D50(uint64_t a1)
{
  v2 = sub_1B5E17B40();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void UserNotification.ClassificationOptions.encode(to:)()
{
  sub_1B5DF7168();
  v20 = v1;
  v3 = v2;
  v4 = sub_1B5DF33E0(&qword_1EB90E1D0, &qword_1B5EB2B90);
  sub_1B5DF5DA8(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v18 - v10;
  v12 = *v0;
  v13 = v0[1];
  v22 = *(v0 + 16);
  v19 = v0[3];
  v14 = v3[4];
  sub_1B5E0897C(v3, v3[3]);
  sub_1B5E17B40();
  sub_1B5EA6040();
  v15 = v20;
  sub_1B5EA5E50();
  if (!v15)
  {
    v16 = v19;
    sub_1B5E08B70();
    sub_1B5E08798();
    sub_1B5EA5E20();
    v21 = v16;
    sub_1B5DF33E0(&qword_1EB90E1B0, &qword_1B5EB2B70);
    sub_1B5E18F4C();
    sub_1B5E17A5C(v17);
    sub_1B5E08798();
    sub_1B5EA5EA0();
  }

  (*(v6 + 8))(v11, v4);
  sub_1B5DF7180();
}

void UserNotification.ClassificationOptions.init(from:)()
{
  sub_1B5DF7168();
  v2 = v1;
  v4 = v3;
  v5 = sub_1B5DF33E0(&qword_1EB90E1D8, &qword_1B5EB2B98);
  sub_1B5DF5DA8(v5);
  v7 = *(v6 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v8);
  v9 = v2[4];
  sub_1B5E0897C(v2, v2[3]);
  sub_1B5E17B40();
  sub_1B5E08AD0();
  if (v0)
  {
    sub_1B5DF3FB8(v2);
  }

  else
  {
    sub_1B5E089F8();
    v10 = sub_1B5EA5D70();
    v12 = v11;
    sub_1B5E08B70();
    sub_1B5E089F8();
    v17 = sub_1B5EA5D40();
    sub_1B5DF33E0(&qword_1EB90E1B0, &qword_1B5EB2B70);
    sub_1B5E18F64();
    sub_1B5E17A5C(v13);
    sub_1B5E089F8();
    sub_1B5EA5DC0();
    v14 = sub_1B5E088E8();
    v15(v14, v5);
    *v4 = v10;
    *(v4 + 8) = v12;
    *(v4 + 16) = v17;
    *(v4 + 24) = v16;

    sub_1B5DF3FB8(v2);
  }

  sub_1B5DF7180();
}

uint64_t UserNotification.ThreadClassificationOptions.requestIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return sub_1B5DFA488();
}

uint64_t UserNotification.ThreadClassificationOptions.requestIdentifier.setter()
{
  sub_1B5DFA47C();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t UserNotification.ThreadClassificationOptions.previousNotifications.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

Sage::UserNotification::ThreadClassificationOptions __swiftcall UserNotification.ThreadClassificationOptions.init(requestIdentifier:previousNotifications:)(Swift::String requestIdentifier, Swift::OpaquePointer previousNotifications)
{
  *v2 = requestIdentifier;
  *(v2 + 16) = previousNotifications;
  result.requestIdentifier = requestIdentifier;
  result.previousNotifications = previousNotifications;
  return result;
}

uint64_t sub_1B5E15288(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x80000001B5EA8AB0 == a2;
  if (v3 || (sub_1B5EA5F00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001B5EA8BD0 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_1B5EA5F00();

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

unint64_t sub_1B5E1535C(char a1)
{
  if (a1)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_1B5E1539C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B5E15288(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B5E153C4(uint64_t a1)
{
  v2 = sub_1B5E17B94();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B5E15400(uint64_t a1)
{
  v2 = sub_1B5E17B94();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void UserNotification.ThreadClassificationOptions.encode(to:)()
{
  sub_1B5DF7168();
  v3 = v2;
  v4 = sub_1B5DF33E0(&qword_1EB90E1E0, &qword_1B5EB2BA0);
  sub_1B5DF5DA8(v4);
  v17 = v5;
  v7 = *(v6 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v15 - v9;
  v11 = *v0;
  v12 = v0[1];
  v16 = v0[2];
  v13 = v3[4];
  sub_1B5E0897C(v3, v3[3]);
  sub_1B5E17B94();
  sub_1B5EA6040();
  sub_1B5E08798();
  sub_1B5EA5E50();
  if (!v1)
  {
    v18 = v16;
    sub_1B5E08B70();
    sub_1B5DF33E0(&qword_1EB90E1B0, &qword_1B5EB2B70);
    sub_1B5E18F4C();
    sub_1B5E17A5C(v14);
    sub_1B5E08798();
    sub_1B5EA5EA0();
  }

  (*(v17 + 8))(v10, v4);
  sub_1B5DF7180();
}

void UserNotification.ThreadClassificationOptions.init(from:)()
{
  sub_1B5DF7168();
  v2 = v1;
  v4 = v3;
  v5 = sub_1B5DF33E0(&qword_1EB90E1F0, &unk_1B5EB2BA8);
  sub_1B5DF5DA8(v5);
  v7 = *(v6 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v8);
  v9 = v2[4];
  sub_1B5E0897C(v2, v2[3]);
  sub_1B5E17B94();
  sub_1B5E08AD0();
  if (v0)
  {
    sub_1B5DF3FB8(v2);
  }

  else
  {
    sub_1B5E089F8();
    v10 = sub_1B5EA5D70();
    v12 = v11;
    sub_1B5DF33E0(&qword_1EB90E1B0, &qword_1B5EB2B70);
    sub_1B5E08B70();
    sub_1B5E18F64();
    sub_1B5E17A5C(v13);
    sub_1B5E089F8();
    sub_1B5EA5DC0();
    v14 = sub_1B5E088E8();
    v15(v14, v5);
    *v4 = v10;
    v4[1] = v12;
    v4[2] = v16;

    sub_1B5DF3FB8(v2);
  }

  sub_1B5DF7180();
}

BOOL sub_1B5E15944(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

uint64_t sub_1B5E15978@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & result;
  if (v3)
  {
    *v2 &= ~result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t sub_1B5E159A8@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2;
  *v2 |= result;
  v4 = v3 & result;
  *a2 = v4;
  *(a2 + 8) = v4 == 0;
  return result;
}

Sage::UserNotification::NotificationType sub_1B5E15A9C@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = UserNotification.NotificationType.init(rawValue:)(*a1).rawValue;
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1B5E15ADC@<X0>(uint64_t *a1@<X8>)
{
  result = UserNotification.NotificationType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B5E15B08@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
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
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t UserNotification.notificationID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return sub_1B5DFA488();
}

uint64_t UserNotification.notificationID.setter()
{
  sub_1B5DFA47C();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t UserNotification.contacts.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t UserNotification.sender.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[3];
  v7[0] = v1[2];
  v7[1] = v2;
  v8[0] = v1[4];
  v3 = v8[0];
  *(v8 + 9) = *(v1 + 73);
  v4 = *(v8 + 9);
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  *(a1 + 41) = v4;
  return sub_1B5E17BE8(v7, &v6);
}

__n128 UserNotification.sender.setter(uint64_t a1)
{
  v3 = v1[3];
  v6[0] = v1[2];
  v6[1] = v3;
  v7[0] = v1[4];
  *(v7 + 9) = *(v1 + 73);
  sub_1B5E17C58(v6);
  v4 = *(a1 + 16);
  v1[2] = *a1;
  v1[3] = v4;
  v1[4] = *(a1 + 32);
  result = *(a1 + 41);
  *(v1 + 73) = result;
  return result;
}

uint64_t UserNotification.recipients.setter(uint64_t a1)
{
  v3 = *(v1 + 96);

  *(v1 + 96) = a1;
  return result;
}

uint64_t UserNotification.attachments.setter(uint64_t a1)
{
  v3 = *(v1 + 104);

  *(v1 + 104) = a1;
  return result;
}

uint64_t UserNotification.dateReceived.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UserNotification() + 40);
  v4 = sub_1B5EA42F0();
  v5 = sub_1B5DF5EB8(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t UserNotification.dateReceived.setter()
{
  v2 = *(sub_1B5E19124() + 40);
  v3 = sub_1B5EA42F0();
  sub_1B5DF5EB8(v3);
  v5 = *(v4 + 40);

  return v5(v1 + v2, v0);
}

uint64_t UserNotification.isGroupMessage.setter(char a1)
{
  result = type metadata accessor for UserNotification();
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t UserNotification.appBundleID.getter()
{
  v0 = type metadata accessor for UserNotification();
  sub_1B5E190D0(*(v0 + 48));
  return sub_1B5DFA488();
}

uint64_t UserNotification.appBundleID.setter()
{
  sub_1B5DFA47C();
  v3 = type metadata accessor for UserNotification();
  result = sub_1B5E19184(*(v3 + 48));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t UserNotification.threadID.getter()
{
  v0 = type metadata accessor for UserNotification();
  sub_1B5E190D0(*(v0 + 52));
  return sub_1B5DFA488();
}

uint64_t UserNotification.threadID.setter()
{
  sub_1B5DFA47C();
  v3 = type metadata accessor for UserNotification();
  result = sub_1B5E19184(*(v3 + 52));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t UserNotification.title.getter()
{
  v0 = type metadata accessor for UserNotification();
  sub_1B5E190D0(*(v0 + 56));
  return sub_1B5DFA488();
}

uint64_t UserNotification.title.setter()
{
  sub_1B5DFA47C();
  v3 = type metadata accessor for UserNotification();
  result = sub_1B5E19184(*(v3 + 56));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t UserNotification.subtitle.getter()
{
  v0 = type metadata accessor for UserNotification();
  sub_1B5E190D0(*(v0 + 60));
  return sub_1B5DFA488();
}

uint64_t UserNotification.subtitle.setter()
{
  sub_1B5DFA47C();
  v3 = type metadata accessor for UserNotification();
  result = sub_1B5E19184(*(v3 + 60));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t UserNotification.body.getter()
{
  v0 = type metadata accessor for UserNotification();
  sub_1B5E190D0(*(v0 + 64));
  return sub_1B5DFA488();
}

uint64_t UserNotification.body.setter()
{
  sub_1B5DFA47C();
  v3 = type metadata accessor for UserNotification();
  result = sub_1B5E19184(*(v3 + 64));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t UserNotification.init(notificationID:notificationType:sender:recipients:attachments:dateReceived:isGroupMessage:appBundleID:threadID:title:subtitle:body:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, char a7@<W7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_1B5E1913C();
  v45 = v21;
  sub_1B5E1903C();
  v23 = *v22;
  *(a8 + 24) = MEMORY[0x1E69E7CC0];
  *(a8 + 32) = xmmword_1B5EB1380;
  v24 = type metadata accessor for UserNotification();
  *(a8 + 73) = 0u;
  *(a8 + 48) = 0u;
  *(a8 + 64) = 0u;
  v25 = (a8 + v24[12]);
  v26 = (a8 + v24[13]);
  v27 = (a8 + v24[14]);
  v28 = (a8 + v24[15]);
  v29 = (a8 + v24[16]);
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = v23;
  *&v51[9] = *(a8 + 73);
  v30 = *(a8 + 32);
  v31 = *(a8 + 64);
  v50[1] = *(a8 + 48);
  *v51 = v31;
  v50[0] = v30;
  sub_1B5E17C58(v50);
  v32 = a3[1];
  *(a8 + 32) = *a3;
  *(a8 + 48) = v32;
  *(a8 + 64) = a3[2];
  *(a8 + 73) = *(a3 + 41);
  *(a8 + 96) = a4;
  *(a8 + 104) = a5;
  v33 = v24[10];
  v34 = sub_1B5EA42F0();
  sub_1B5DF5EB8(v34);
  result = (*(v35 + 32))(a8 + v33, a6);
  *(a8 + v24[11]) = a7;
  *v25 = v40;
  v25[1] = v41;
  *v26 = v42;
  v26[1] = v43;
  *v27 = v44;
  v27[1] = v45;
  *v28 = v47;
  v28[1] = v48;
  *v29 = a17;
  v29[1] = a18;
  return result;
}

uint64_t sub_1B5E16448(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6163696669746F6ELL && a2 == 0xEE0044496E6F6974;
  if (v4 || (sub_1B5EA5F00() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000010 && 0x80000001B5EA8BF0 == a2;
    if (v6 || (sub_1B5EA5F00() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x73746361746E6F63 && a2 == 0xE800000000000000;
      if (v7 || (sub_1B5EA5F00() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7265646E6573 && a2 == 0xE600000000000000;
        if (v8 || (sub_1B5EA5F00() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6E65697069636572 && a2 == 0xEA00000000007374;
          if (v9 || (sub_1B5EA5F00() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x656D686361747461 && a2 == 0xEB0000000073746ELL;
            if (v10 || (sub_1B5EA5F00() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6563655265746164 && a2 == 0xEC00000064657669;
              if (v11 || (sub_1B5EA5F00() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x4D70756F72477369 && a2 == 0xEE00656761737365;
                if (v12 || (sub_1B5EA5F00() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6C646E7542707061 && a2 == 0xEB00000000444965;
                  if (v13 || (sub_1B5EA5F00() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x4449646165726874 && a2 == 0xE800000000000000;
                    if (v14 || (sub_1B5EA5F00() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
                      if (v15 || (sub_1B5EA5F00() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x656C746974627573 && a2 == 0xE800000000000000;
                        if (v16 || (sub_1B5EA5F00() & 1) != 0)
                        {

                          return 11;
                        }

                        else if (a1 == 2036625250 && a2 == 0xE400000000000000)
                        {

                          return 12;
                        }

                        else
                        {
                          v18 = sub_1B5EA5F00();

                          if (v18)
                          {
                            return 12;
                          }

                          else
                          {
                            return 13;
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1B5E16854(char a1)
{
  result = 0x6163696669746F6ELL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0x73746361746E6F63;
      break;
    case 3:
      result = 0x7265646E6573;
      break;
    case 4:
      result = 0x6E65697069636572;
      break;
    case 5:
      result = 0x656D686361747461;
      break;
    case 6:
      result = 0x6563655265746164;
      break;
    case 7:
      result = 0x4D70756F72477369;
      break;
    case 8:
      result = 0x6C646E7542707061;
      break;
    case 9:
      result = 0x4449646165726874;
      break;
    case 10:
      result = 0x656C746974;
      break;
    case 11:
      result = 0x656C746974627573;
      break;
    case 12:
      result = 2036625250;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B5E169D8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1B5EA5FD0();
  a4(v8, v6);
  return sub_1B5EA6020();
}

uint64_t sub_1B5E16A2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B5E16448(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B5E16A54@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B5E1684C();
  *a1 = result;
  return result;
}

uint64_t sub_1B5E16A7C(uint64_t a1)
{
  v2 = sub_1B5E17CC0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B5E16AB8(uint64_t a1)
{
  v2 = sub_1B5E17CC0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void UserNotification.encode(to:)()
{
  sub_1B5DF7168();
  v2 = v0;
  v4 = v3;
  v5 = sub_1B5DF33E0(&qword_1EB90E1F8, &qword_1B5EB2BB8);
  sub_1B5DF5DA8(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v23 - v11;
  v13 = v4[4];
  sub_1B5E0897C(v4, v4[3]);
  sub_1B5E17CC0();
  sub_1B5EA6040();
  v14 = *v2;
  v15 = v2[1];
  LOBYTE(v29[0]) = 0;
  sub_1B5E18FE8();
  sub_1B5EA5E50();
  if (!v1)
  {
    *&v29[0] = v2[2];
    LOBYTE(v26) = 1;
    sub_1B5E17D14();
    sub_1B5E18FE8();
    sub_1B5EA5EA0();
    v32 = v2[3];
    v31 = 2;
    sub_1B5DF33E0(&qword_1EB90DC58, &unk_1B5EB2BC0);
    sub_1B5E06918(&qword_1EB90CDB0);
    sub_1B5E18FE8();
    sub_1B5EA5EA0();
    v16 = *(v2 + 3);
    v29[0] = *(v2 + 2);
    v29[1] = v16;
    v18 = *(v2 + 2);
    v17 = *(v2 + 3);
    *v30 = *(v2 + 4);
    *&v30[9] = *(v2 + 73);
    v26 = v18;
    v27 = v17;
    *v28 = *(v2 + 4);
    *&v28[9] = *(v2 + 73);
    v25[63] = 3;
    sub_1B5E17BE8(v29, v25);
    sub_1B5E067E0();
    sub_1B5E18FE8();
    sub_1B5EA5E40();
    sub_1B5E19068();
    v24 = v2[12];
    HIBYTE(v23) = 4;
    sub_1B5E18FE8();
    sub_1B5EA5EA0();
    v24 = v2[13];
    HIBYTE(v23) = 5;
    sub_1B5DF33E0(&qword_1EB90DC60, &qword_1B5EAFD30);
    sub_1B5E17D68(&qword_1EB90CE10);
    sub_1B5E18FE8();
    sub_1B5EA5EA0();
    v19 = type metadata accessor for UserNotification();
    v20 = v19[10];
    LOBYTE(v24) = 6;
    sub_1B5EA42F0();
    sub_1B5E1900C();
    sub_1B5E17E4C(v21);
    sub_1B5E18FE8();
    sub_1B5EA5EA0();
    v22 = *(v2 + v19[11]);
    LOBYTE(v24) = 7;
    sub_1B5E18FE8();
    sub_1B5EA5E60();
    sub_1B5E19160(v19[12]);
    sub_1B5E18F7C(8);
    sub_1B5E19160(v19[13]);
    sub_1B5E18F7C(9);
    sub_1B5E19160(v19[14]);
    sub_1B5E18F7C(10);
    sub_1B5E19160(v19[15]);
    sub_1B5E18F7C(11);
    sub_1B5E19160(v19[16]);
    sub_1B5E18F7C(12);
  }

  (*(v7 + 8))(v12, v5);
  sub_1B5DF7180();
}

void UserNotification.init(from:)()
{
  sub_1B5DF7168();
  v2 = v1;
  v4 = v3;
  v75 = sub_1B5EA42F0();
  v5 = sub_1B5DF5DA8(v75);
  v73 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1B5DFD7E8();
  v11 = v10 - v9;
  v72 = sub_1B5DF33E0(&qword_1EB90E200, &qword_1B5EB2BD0);
  sub_1B5DF5DA8(v72);
  v13 = v12;
  v15 = *(v14 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v66 - v17;
  v74 = type metadata accessor for UserNotification();
  v19 = sub_1B5DF5EB8(v74);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  sub_1B5DFD7E8();
  v24 = v23 - v22;
  *(v24 + 32) = xmmword_1B5EB1380;
  v89 = (v23 - v22 + 32);
  *(v24 + 48) = 0u;
  *(v24 + 64) = 0u;
  *(v24 + 73) = 0u;
  v25 = v2[3];
  v26 = v2[4];
  v76 = v2;
  sub_1B5E0897C(v2, v25);
  sub_1B5E17CC0();
  v71 = v18;
  sub_1B5EA6030();
  if (v0)
  {
    sub_1B5E190F4();
    sub_1B5E1919C();
    v27 = v89;
    sub_1B5E1916C();

    v30 = 0;
    sub_1B5E190B4();
  }

  else
  {
    v67 = v4;
    v68 = v13;
    LOBYTE(v86) = 0;
    *v24 = sub_1B5EA5D70();
    *(v24 + 8) = v28;
    LOBYTE(v83[0]) = 1;
    sub_1B5E17DF8();
    sub_1B5EA5DC0();
    sub_1B5E190A8();
    *(v24 + 16) = v86;
    sub_1B5DF33E0(&qword_1EB90DC58, &unk_1B5EB2BC0);
    LOBYTE(v83[0]) = 2;
    sub_1B5E06918(&qword_1EB90CDA8);
    sub_1B5E19114();
    sub_1B5EA5DC0();
    v70 = v86;
    *(v24 + 24) = v86;
    v85 = 3;
    sub_1B5E068C4();
    sub_1B5EA5D60();
    v80 = v86;
    v81 = v87;
    *v82 = *v88;
    *&v82[9] = *&v88[9];
    v35 = v89[1];
    v83[0] = *v89;
    v83[1] = v35;
    *v84 = v89[2];
    *&v84[9] = *(v89 + 41);
    sub_1B5E17C58(v83);
    v36 = v81;
    *v89 = v80;
    v89[1] = v36;
    v89[2] = *v82;
    *(v89 + 41) = *&v82[9];
    v78 = 4;
    sub_1B5E19114();
    sub_1B5EA5DC0();
    *(v24 + 96) = v79;
    sub_1B5DF33E0(&qword_1EB90DC60, &qword_1B5EAFD30);
    v78 = 5;
    sub_1B5E17D68(&qword_1EB90CE08);
    sub_1B5EA5DC0();
    *(v24 + 104) = v79;
    LOBYTE(v79) = 6;
    sub_1B5E1900C();
    sub_1B5E17E4C(v37);
    v38 = v75;
    sub_1B5E19114();
    sub_1B5EA5DC0();
    sub_1B5E190C4();
    (*(v73 + 32))(v24 + *(v39 + 40), v11, v38);
    sub_1B5E18FD8(7);
    sub_1B5EA5D80();
    sub_1B5E190C4();
    *(v24 + *(v40 + 44)) = v41 & 1;
    sub_1B5E18FD8(8);
    sub_1B5EA5D30();
    sub_1B5E190F4();
    sub_1B5E190C4();
    sub_1B5E191A8(v43, v44, *(v42 + 48));
    v69 = v45;
    sub_1B5E18FD8(9);
    v46 = v77;
    sub_1B5EA5D30();
    sub_1B5E190F4();
    if (!v46)
    {
      sub_1B5E190C4();
      sub_1B5E191A8(v50, v51, *(v49 + 52));
      sub_1B5E18FA4(10);
      sub_1B5E190F4();
      sub_1B5E190C4();
      sub_1B5E191A8(v53, v54, *(v52 + 56));
      sub_1B5E18FA4(11);
      sub_1B5E190F4();
      sub_1B5E190C4();
      sub_1B5E191A8(v56, v57, *(v55 + 60));
      sub_1B5E18FA4(12);
      sub_1B5E190F4();
      v59 = v58;
      v61 = v60;
      sub_1B5E190C4();
      v63 = (v24 + *(v62 + 64));
      v64 = sub_1B5E18F2C();
      v65(v64);
      *v63 = v59;
      v63[1] = v61;
      sub_1B5E17E90(v24, v67);
      sub_1B5E1916C();
      sub_1B5E17EF4(v24);
      goto LABEL_9;
    }

    v47 = sub_1B5E18F2C();
    v48(v47);
    sub_1B5E1916C();
    sub_1B5E190B4();
    LODWORD(v11) = 1;
    LODWORD(v25) = 1;
    v30 = 1;
    v27 = v89;
    v29 = *(v24 + 8);
  }

  v31 = v27[1];
  v86 = *v27;
  v87 = v31;
  *v88 = v27[2];
  *&v88[9] = *(v27 + 41);
  sub_1B5E17C58(&v86);
  if (!v11)
  {
    if (!v25)
    {
      goto LABEL_6;
    }

LABEL_11:
    v34 = *(v24 + 104);

    if (!v30)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v33 = *(v24 + 96);

  if (v25)
  {
    goto LABEL_11;
  }

LABEL_6:
  if (v30)
  {
LABEL_7:
    sub_1B5E190C4();
    (*(v73 + 8))(v24 + *(v32 + 40), v75);
  }

LABEL_8:

LABEL_9:
  sub_1B5DF7180();
}

uint64_t UserNotification.init(notificationID:notificationType:contacts:attachments:dateReceived:isGroupMessage:appBundleID:threadID:title:subtitle:body:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, char a6@<W6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  sub_1B5E1913C();
  v42 = v21;
  sub_1B5E1903C();

  v22 = *a3;
  *(a8 + 24) = MEMORY[0x1E69E7CC0];
  *(a8 + 32) = xmmword_1B5EB1380;
  v23 = type metadata accessor for UserNotification();
  *(a8 + 73) = 0u;
  *(a8 + 48) = 0u;
  *(a8 + 64) = 0u;
  v24 = (a8 + v23[12]);
  v25 = (a8 + v23[13]);
  v26 = (a8 + v23[14]);
  v27 = (a8 + v23[15]);
  v28 = (a8 + v23[16]);
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = v22;
  *&v48[9] = *(a8 + 73);
  v29 = *(a8 + 32);
  v30 = *(a8 + 64);
  v47[1] = *(a8 + 48);
  *v48 = v30;
  v47[0] = v29;
  sub_1B5E17C58(v47);
  *(a8 + 32) = xmmword_1B5EB1380;
  *(a8 + 48) = 0u;
  *(a8 + 64) = 0u;
  *(a8 + 73) = 0u;
  *(a8 + 96) = MEMORY[0x1E69E7CC0];
  *(a8 + 104) = a4;
  v31 = v23[10];
  v32 = sub_1B5EA42F0();
  sub_1B5DF5EB8(v32);
  result = (*(v33 + 32))(a8 + v31, a5);
  *(a8 + v23[11]) = a6;
  *v24 = a7;
  v24[1] = v36;
  *v25 = v37;
  v25[1] = v38;
  *v26 = v39;
  v26[1] = v40;
  *v27 = v42;
  v27[1] = v43;
  *v28 = v44;
  v28[1] = a17;
  return result;
}

unint64_t sub_1B5E179BC()
{
  result = qword_1EB90E1A8;
  if (!qword_1EB90E1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E1A8);
  }

  return result;
}

uint64_t type metadata accessor for UserNotification()
{
  result = qword_1ED7D2730;
  if (!qword_1ED7D2730)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1B5E17A5C(uint64_t a1)
{
  result = sub_1B5E08A1C(a1);
  if (!result)
  {
    v4 = v3;
    sub_1B5DFD694(&qword_1EB90E1B0, &qword_1B5EB2B70);
    sub_1B5E17E4C(v4);
    sub_1B5E088A8();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1B5E17AEC()
{
  result = qword_1EB90D788;
  if (!qword_1EB90D788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D788);
  }

  return result;
}

unint64_t sub_1B5E17B40()
{
  result = qword_1EB90D7A0;
  if (!qword_1EB90D7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D7A0);
  }

  return result;
}

unint64_t sub_1B5E17B94()
{
  result = qword_1EB90E1E8;
  if (!qword_1EB90E1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E1E8);
  }

  return result;
}

uint64_t sub_1B5E17BE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B5DF33E0(&qword_1EB90E020, &qword_1B5EB14D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B5E17C58(uint64_t a1)
{
  v2 = sub_1B5DF33E0(&qword_1EB90E020, &qword_1B5EB14D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B5E17CC0()
{
  result = qword_1EB90D7B8;
  if (!qword_1EB90D7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D7B8);
  }

  return result;
}

unint64_t sub_1B5E17D14()
{
  result = qword_1EB90D0D0;
  if (!qword_1EB90D0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D0D0);
  }

  return result;
}

unint64_t sub_1B5E17D68(uint64_t a1)
{
  result = sub_1B5E08A1C(a1);
  if (!result)
  {
    v4 = v3;
    sub_1B5DFD694(&qword_1EB90DC60, &qword_1B5EAFD30);
    sub_1B5E17E4C(v4);
    sub_1B5E088A8();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1B5E17DF8()
{
  result = qword_1EB90D0C8;
  if (!qword_1EB90D0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D0C8);
  }

  return result;
}

unint64_t sub_1B5E17E4C(uint64_t a1)
{
  result = sub_1B5E08A1C(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1B5E17E90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UserNotification();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B5E17EF4(uint64_t a1)
{
  v2 = type metadata accessor for UserNotification();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B5E17F54()
{
  result = qword_1EB90D7C8;
  if (!qword_1EB90D7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D7C8);
  }

  return result;
}

unint64_t sub_1B5E17FAC()
{
  result = qword_1EB90D0C0;
  if (!qword_1EB90D0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D0C0);
  }

  return result;
}

unint64_t sub_1B5E18004()
{
  result = qword_1EB90D7D0;
  if (!qword_1EB90D7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D7D0);
  }

  return result;
}

unint64_t sub_1B5E1805C()
{
  result = qword_1EB90D7C0;
  if (!qword_1EB90D7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D7C0);
  }

  return result;
}

unint64_t sub_1B5E180B4()
{
  result = qword_1EB90D0B0;
  if (!qword_1EB90D0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D0B0);
  }

  return result;
}

unint64_t sub_1B5E1810C()
{
  result = qword_1EB90D0B8;
  if (!qword_1EB90D0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D0B8);
  }

  return result;
}

unint64_t sub_1B5E18164()
{
  result = qword_1EB90E208;
  if (!qword_1EB90E208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E208);
  }

  return result;
}

unint64_t sub_1B5E181BC()
{
  result = qword_1EB90E210;
  if (!qword_1EB90E210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E210);
  }

  return result;
}

unint64_t sub_1B5E18214()
{
  result = qword_1EB90E218;
  if (!qword_1EB90E218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E218);
  }

  return result;
}

unint64_t sub_1B5E1826C()
{
  result = qword_1EB90E220;
  if (!qword_1EB90E220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E220);
  }

  return result;
}

unint64_t sub_1B5E182C4()
{
  result = qword_1EB90D0A0;
  if (!qword_1EB90D0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D0A0);
  }

  return result;
}

unint64_t sub_1B5E1831C()
{
  result = qword_1EB90D0A8;
  if (!qword_1EB90D0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D0A8);
  }

  return result;
}

unint64_t sub_1B5E18370(uint64_t a1)
{
  *(a1 + 8) = sub_1B5E17E4C(&unk_1ED7D2740);
  result = sub_1B5E17E4C(&unk_1ED7D2748);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1B5E1841C()
{
  sub_1B5E185A0(319, &qword_1ED7D2010, &type metadata for Handle, MEMORY[0x1E69E62F8]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_1B5E185A0(319, &qword_1ED7D2128, &type metadata for Handle, MEMORY[0x1E69E6720]);
    if (v4 > 0x3F)
    {
      return v3;
    }

    else
    {
      sub_1B5E07064();
      v1 = v5;
      if (v6 <= 0x3F)
      {
        v1 = sub_1B5EA42F0();
        if (v7 <= 0x3F)
        {
          sub_1B5E185A0(319, &qword_1ED7D2D00, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
          v1 = v8;
          if (v9 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v1;
}

void sub_1B5E185A0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for UserNotification.NotificationType(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for UserNotification.NotificationType(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for UserNotification.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF4)
  {
    if (a2 + 12 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 12) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 13;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v5 = v6 - 13;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for UserNotification.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF3)
  {
    v6 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
          *result = a2 + 12;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for UserNotification.ThreadClassificationOptions.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1B5E188E8(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1B5E189C8()
{
  result = qword_1EB90E228;
  if (!qword_1EB90E228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E228);
  }

  return result;
}

unint64_t sub_1B5E18A20()
{
  result = qword_1EB90E230;
  if (!qword_1EB90E230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E230);
  }

  return result;
}

unint64_t sub_1B5E18A78()
{
  result = qword_1EB90E238;
  if (!qword_1EB90E238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E238);
  }

  return result;
}

unint64_t sub_1B5E18AD0()
{
  result = qword_1EB90E240;
  if (!qword_1EB90E240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E240);
  }

  return result;
}

unint64_t sub_1B5E18B28()
{
  result = qword_1EB90E248;
  if (!qword_1EB90E248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E248);
  }

  return result;
}

unint64_t sub_1B5E18B80()
{
  result = qword_1EB90D7A8;
  if (!qword_1EB90D7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D7A8);
  }

  return result;
}

unint64_t sub_1B5E18BD8()
{
  result = qword_1EB90D7B0;
  if (!qword_1EB90D7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D7B0);
  }

  return result;
}

unint64_t sub_1B5E18C30()
{
  result = qword_1EB90E250;
  if (!qword_1EB90E250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E250);
  }

  return result;
}

unint64_t sub_1B5E18C88()
{
  result = qword_1EB90E258;
  if (!qword_1EB90E258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E258);
  }

  return result;
}

unint64_t sub_1B5E18CE0()
{
  result = qword_1EB90D790;
  if (!qword_1EB90D790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D790);
  }

  return result;
}

unint64_t sub_1B5E18D38()
{
  result = qword_1EB90D798;
  if (!qword_1EB90D798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D798);
  }

  return result;
}

unint64_t sub_1B5E18D90()
{
  result = qword_1EB90D778;
  if (!qword_1EB90D778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D778);
  }

  return result;
}

unint64_t sub_1B5E18DE8()
{
  result = qword_1EB90D780;
  if (!qword_1EB90D780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D780);
  }

  return result;
}

unint64_t sub_1B5E18E40()
{
  result = qword_1EB90E260;
  if (!qword_1EB90E260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E260);
  }

  return result;
}

unint64_t sub_1B5E18E98()
{
  result = qword_1EB90E268;
  if (!qword_1EB90E268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E268);
  }

  return result;
}

uint64_t sub_1B5E18F2C()
{
  v1 = *(*(v0 - 384) + 8);
  result = *(v0 - 360);
  v3 = *(v0 - 352);
  return result;
}

uint64_t sub_1B5E18F7C@<X0>(char a1@<W8>)
{
  *(v1 - 312) = a1;

  return sub_1B5EA5E10();
}

uint64_t sub_1B5E18FA4@<X0>(char a1@<W8>)
{
  *(v1 - 296) = a1;
  v3 = *(v1 - 352);
  v4 = *(v1 - 360);
  v5 = *(v1 - 312);

  return sub_1B5EA5D30();
}