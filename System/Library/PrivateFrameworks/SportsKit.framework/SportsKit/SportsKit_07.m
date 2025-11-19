_BYTE *sub_26B6B57A4(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_116(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_114_0(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_115_0(result, v6);
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
          result = OUTLINED_FUNCTION_114(result, a2 + 3);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_26B6B58F8(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_117_0(-1);
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
      return OUTLINED_FUNCTION_117_0((*a1 | (v4 << 8)) - 9);
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

      return OUTLINED_FUNCTION_117_0((*a1 | (v4 << 8)) - 9);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_117_0((*a1 | (v4 << 8)) - 9);
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

  return OUTLINED_FUNCTION_117_0(v8);
}

_BYTE *sub_26B6B597C(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_116(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_114_0(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_115_0(result, v6);
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
          result = OUTLINED_FUNCTION_114(result, a2 + 8);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_26B6B5A64(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_117_0(-1);
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return OUTLINED_FUNCTION_117_0((*a1 | (v4 << 8)) - 8);
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

      return OUTLINED_FUNCTION_117_0((*a1 | (v4 << 8)) - 8);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_117_0((*a1 | (v4 << 8)) - 8);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_117_0(v8);
}

_BYTE *sub_26B6B5AE8(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_116(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_114_0(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_115_0(result, v6);
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
          result = OUTLINED_FUNCTION_114(result, a2 + 7);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_26B6B5BB4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_117_0(-1);
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return OUTLINED_FUNCTION_117_0((*a1 | (v4 << 8)) - 5);
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

      return OUTLINED_FUNCTION_117_0((*a1 | (v4 << 8)) - 5);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_117_0((*a1 | (v4 << 8)) - 5);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_117_0(v8);
}

_BYTE *sub_26B6B5C38(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_116(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_114_0(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_115_0(result, v6);
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
          result = OUTLINED_FUNCTION_114(result, a2 + 4);
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SportingEvent.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_26B6B5E4C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_117_0(-1);
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
      return OUTLINED_FUNCTION_117_0((*a1 | (v4 << 8)) - 2);
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

      return OUTLINED_FUNCTION_117_0((*a1 | (v4 << 8)) - 2);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_117_0((*a1 | (v4 << 8)) - 2);
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

  return OUTLINED_FUNCTION_117_0(v8);
}

_BYTE *sub_26B6B5ED0(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_116(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_114_0(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_115_0(result, v6);
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
          result = OUTLINED_FUNCTION_114(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_26B6B5F98(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_117_0(-1);
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
      return OUTLINED_FUNCTION_117_0((*a1 | (v4 << 8)) - 3);
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

      return OUTLINED_FUNCTION_117_0((*a1 | (v4 << 8)) - 3);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_117_0((*a1 | (v4 << 8)) - 3);
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

  return OUTLINED_FUNCTION_117_0(v8);
}

_BYTE *sub_26B6B601C(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_116(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_114_0(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_115_0(result, v6);
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
          result = OUTLINED_FUNCTION_114(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_26B6B6118(_BYTE *result, int a2, int a3)
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

unint64_t sub_26B6B61C8()
{
  result = qword_28040AF40;
  if (!qword_28040AF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040AF40);
  }

  return result;
}

unint64_t sub_26B6B6220()
{
  result = qword_28040AF48;
  if (!qword_28040AF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040AF48);
  }

  return result;
}

unint64_t sub_26B6B6278()
{
  result = qword_28040AF50;
  if (!qword_28040AF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040AF50);
  }

  return result;
}

unint64_t sub_26B6B62D0()
{
  result = qword_28040AF58;
  if (!qword_28040AF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040AF58);
  }

  return result;
}

unint64_t sub_26B6B6328()
{
  result = qword_28040AF60;
  if (!qword_28040AF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040AF60);
  }

  return result;
}

unint64_t sub_26B6B6380()
{
  result = qword_28040AF68;
  if (!qword_28040AF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040AF68);
  }

  return result;
}

unint64_t sub_26B6B63D8()
{
  result = qword_28040AF70;
  if (!qword_28040AF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040AF70);
  }

  return result;
}

unint64_t sub_26B6B6430()
{
  result = qword_28040AF78;
  if (!qword_28040AF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040AF78);
  }

  return result;
}

unint64_t sub_26B6B6488()
{
  result = qword_28040AF80;
  if (!qword_28040AF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040AF80);
  }

  return result;
}

unint64_t sub_26B6B64E0()
{
  result = qword_28040AF88;
  if (!qword_28040AF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040AF88);
  }

  return result;
}

unint64_t sub_26B6B6538()
{
  result = qword_28040AF90;
  if (!qword_28040AF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040AF90);
  }

  return result;
}

unint64_t sub_26B6B6590()
{
  result = qword_28040AF98;
  if (!qword_28040AF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040AF98);
  }

  return result;
}

unint64_t sub_26B6B65E8()
{
  result = qword_28040AFA0;
  if (!qword_28040AFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040AFA0);
  }

  return result;
}

unint64_t sub_26B6B6640()
{
  result = qword_28040AFA8;
  if (!qword_28040AFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040AFA8);
  }

  return result;
}

unint64_t sub_26B6B6698()
{
  result = qword_28040AFB0;
  if (!qword_28040AFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040AFB0);
  }

  return result;
}

unint64_t sub_26B6B66F0()
{
  result = qword_28040AFB8;
  if (!qword_28040AFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040AFB8);
  }

  return result;
}

unint64_t sub_26B6B6748()
{
  result = qword_28040AFC0;
  if (!qword_28040AFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040AFC0);
  }

  return result;
}

unint64_t sub_26B6B67A0()
{
  result = qword_28040AFC8;
  if (!qword_28040AFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040AFC8);
  }

  return result;
}

unint64_t sub_26B6B67F8()
{
  result = qword_28040AFD0;
  if (!qword_28040AFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040AFD0);
  }

  return result;
}

unint64_t sub_26B6B6850()
{
  result = qword_28040AFD8;
  if (!qword_28040AFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040AFD8);
  }

  return result;
}

unint64_t sub_26B6B68A8()
{
  result = qword_28040AFE0;
  if (!qword_28040AFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040AFE0);
  }

  return result;
}

unint64_t sub_26B6B6900()
{
  result = qword_28040AFE8;
  if (!qword_28040AFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040AFE8);
  }

  return result;
}

unint64_t sub_26B6B6958()
{
  result = qword_28040AFF0;
  if (!qword_28040AFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040AFF0);
  }

  return result;
}

unint64_t sub_26B6B69B0()
{
  result = qword_28040AFF8;
  if (!qword_28040AFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040AFF8);
  }

  return result;
}

unint64_t sub_26B6B6A08()
{
  result = qword_28040B000;
  if (!qword_28040B000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B000);
  }

  return result;
}

unint64_t sub_26B6B6A60()
{
  result = qword_28040B008;
  if (!qword_28040B008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B008);
  }

  return result;
}

unint64_t sub_26B6B6AB8()
{
  result = qword_28040B010;
  if (!qword_28040B010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B010);
  }

  return result;
}

unint64_t sub_26B6B6B10()
{
  result = qword_28040B018;
  if (!qword_28040B018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B018);
  }

  return result;
}

unint64_t sub_26B6B6B68()
{
  result = qword_28040B020;
  if (!qword_28040B020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B020);
  }

  return result;
}

unint64_t sub_26B6B6BC0()
{
  result = qword_28040B028;
  if (!qword_28040B028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B028);
  }

  return result;
}

unint64_t sub_26B6B6C18()
{
  result = qword_28040B030;
  if (!qword_28040B030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B030);
  }

  return result;
}

unint64_t sub_26B6B6C70()
{
  result = qword_28040B038;
  if (!qword_28040B038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B038);
  }

  return result;
}

unint64_t sub_26B6B6CC8()
{
  result = qword_28040B040;
  if (!qword_28040B040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B040);
  }

  return result;
}

unint64_t sub_26B6B6D20()
{
  result = qword_28040B048;
  if (!qword_28040B048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B048);
  }

  return result;
}

unint64_t sub_26B6B6D78()
{
  result = qword_28040B050;
  if (!qword_28040B050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B050);
  }

  return result;
}

unint64_t sub_26B6B6DD0()
{
  result = qword_28040B058;
  if (!qword_28040B058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B058);
  }

  return result;
}

unint64_t sub_26B6B6E28()
{
  result = qword_28040B060;
  if (!qword_28040B060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B060);
  }

  return result;
}

unint64_t sub_26B6B6E80()
{
  result = qword_28040B068;
  if (!qword_28040B068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B068);
  }

  return result;
}

unint64_t sub_26B6B6ED8()
{
  result = qword_28040B070;
  if (!qword_28040B070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B070);
  }

  return result;
}

unint64_t sub_26B6B6F30()
{
  result = qword_28040B078;
  if (!qword_28040B078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B078);
  }

  return result;
}

unint64_t sub_26B6B6F88()
{
  result = qword_28040B080;
  if (!qword_28040B080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B080);
  }

  return result;
}

unint64_t sub_26B6B6FE0()
{
  result = qword_28040B088;
  if (!qword_28040B088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B088);
  }

  return result;
}

unint64_t sub_26B6B7038()
{
  result = qword_2810CE3F8;
  if (!qword_2810CE3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CE3F8);
  }

  return result;
}

unint64_t sub_26B6B7090()
{
  result = qword_2810CE400;
  if (!qword_2810CE400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CE400);
  }

  return result;
}

unint64_t sub_26B6B70E8()
{
  result = qword_28040B090;
  if (!qword_28040B090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B090);
  }

  return result;
}

unint64_t sub_26B6B7140()
{
  result = qword_28040B098;
  if (!qword_28040B098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B098);
  }

  return result;
}

unint64_t sub_26B6B7198()
{
  result = qword_28040B0A0;
  if (!qword_28040B0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B0A0);
  }

  return result;
}

unint64_t sub_26B6B71F0()
{
  result = qword_28040B0A8;
  if (!qword_28040B0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B0A8);
  }

  return result;
}

unint64_t sub_26B6B7248()
{
  result = qword_28040B0B0;
  if (!qword_28040B0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B0B0);
  }

  return result;
}

unint64_t sub_26B6B72A0()
{
  result = qword_28040B0B8;
  if (!qword_28040B0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B0B8);
  }

  return result;
}

unint64_t sub_26B6B72F8()
{
  result = qword_2810CE158;
  if (!qword_2810CE158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CE158);
  }

  return result;
}

unint64_t sub_26B6B7350()
{
  result = qword_2810CE160;
  if (!qword_2810CE160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CE160);
  }

  return result;
}

unint64_t sub_26B6B73A8()
{
  result = qword_2810CDE38;
  if (!qword_2810CDE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CDE38);
  }

  return result;
}

unint64_t sub_26B6B7400()
{
  result = qword_2810CDE40;
  if (!qword_2810CDE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CDE40);
  }

  return result;
}

unint64_t sub_26B6B7458()
{
  result = qword_2810CE430;
  if (!qword_2810CE430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CE430);
  }

  return result;
}

unint64_t sub_26B6B74B0()
{
  result = qword_2810CE438;
  if (!qword_2810CE438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CE438);
  }

  return result;
}

unint64_t sub_26B6B7508()
{
  result = qword_2810CE1A0;
  if (!qword_2810CE1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CE1A0);
  }

  return result;
}

unint64_t sub_26B6B7560()
{
  result = qword_2810CE1A8;
  if (!qword_2810CE1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CE1A8);
  }

  return result;
}

unint64_t sub_26B6B75B8()
{
  result = qword_2810CDE88;
  if (!qword_2810CDE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CDE88);
  }

  return result;
}

unint64_t sub_26B6B7610()
{
  result = qword_2810CDE90;
  if (!qword_2810CDE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CDE90);
  }

  return result;
}

unint64_t sub_26B6B7668()
{
  result = qword_2810CE118;
  if (!qword_2810CE118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CE118);
  }

  return result;
}

unint64_t sub_26B6B76C0()
{
  result = qword_2810CE120;
  if (!qword_2810CE120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CE120);
  }

  return result;
}

unint64_t sub_26B6B7718()
{
  result = qword_2810CDDC0;
  if (!qword_2810CDDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CDDC0);
  }

  return result;
}

unint64_t sub_26B6B7770()
{
  result = qword_2810CDDC8;
  if (!qword_2810CDDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CDDC8);
  }

  return result;
}

unint64_t sub_26B6B77C8()
{
  result = qword_2810CDFE0;
  if (!qword_2810CDFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CDFE0);
  }

  return result;
}

unint64_t sub_26B6B7820()
{
  result = qword_2810CDFE8;
  if (!qword_2810CDFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CDFE8);
  }

  return result;
}

unint64_t sub_26B6B7878()
{
  result = qword_28040B0C0;
  if (!qword_28040B0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B0C0);
  }

  return result;
}

unint64_t sub_26B6B78D0()
{
  result = qword_28040B0C8;
  if (!qword_28040B0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B0C8);
  }

  return result;
}

unint64_t sub_26B6B7928()
{
  result = qword_28040B0D0;
  if (!qword_28040B0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B0D0);
  }

  return result;
}

unint64_t sub_26B6B7980()
{
  result = qword_28040B0D8;
  if (!qword_28040B0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B0D8);
  }

  return result;
}

unint64_t sub_26B6B79D8()
{
  result = qword_28040B0E0;
  if (!qword_28040B0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B0E0);
  }

  return result;
}

unint64_t sub_26B6B7A30()
{
  result = qword_28040B0E8;
  if (!qword_28040B0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B0E8);
  }

  return result;
}

unint64_t sub_26B6B7A88()
{
  result = qword_28040B0F0;
  if (!qword_28040B0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B0F0);
  }

  return result;
}

unint64_t sub_26B6B7AE0()
{
  result = qword_28040B0F8;
  if (!qword_28040B0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B0F8);
  }

  return result;
}

unint64_t sub_26B6B7B38()
{
  result = qword_28040B100;
  if (!qword_28040B100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B100);
  }

  return result;
}

unint64_t sub_26B6B7B90()
{
  result = qword_28040B108;
  if (!qword_28040B108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B108);
  }

  return result;
}

unint64_t sub_26B6B7BE8()
{
  result = qword_2810CE180;
  if (!qword_2810CE180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CE180);
  }

  return result;
}

unint64_t sub_26B6B7C40()
{
  result = qword_2810CE188;
  if (!qword_2810CE188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CE188);
  }

  return result;
}

unint64_t sub_26B6B7C98()
{
  result = qword_2810CDE08;
  if (!qword_2810CDE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CDE08);
  }

  return result;
}

unint64_t sub_26B6B7CF0()
{
  result = qword_2810CDE10;
  if (!qword_2810CDE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CDE10);
  }

  return result;
}

unint64_t sub_26B6B7D48()
{
  result = qword_28040B110;
  if (!qword_28040B110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B110);
  }

  return result;
}

unint64_t sub_26B6B7DA0()
{
  result = qword_28040B118;
  if (!qword_28040B118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B118);
  }

  return result;
}

unint64_t sub_26B6B7DF8()
{
  result = qword_2810CDEB8;
  if (!qword_2810CDEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CDEB8);
  }

  return result;
}

unint64_t sub_26B6B7E50()
{
  result = qword_2810CDEC0;
  if (!qword_2810CDEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CDEC0);
  }

  return result;
}

unint64_t sub_26B6B7EA8()
{
  result = qword_2810CE2E0;
  if (!qword_2810CE2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CE2E0);
  }

  return result;
}

unint64_t sub_26B6B7F00()
{
  result = qword_2810CE2E8;
  if (!qword_2810CE2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CE2E8);
  }

  return result;
}

unint64_t sub_26B6B7F58()
{
  result = qword_2810CDE60;
  if (!qword_2810CDE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CDE60);
  }

  return result;
}

unint64_t sub_26B6B7FB0()
{
  result = qword_2810CDE68;
  if (!qword_2810CDE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CDE68);
  }

  return result;
}

unint64_t sub_26B6B8008()
{
  result = qword_28040B120;
  if (!qword_28040B120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B120);
  }

  return result;
}

unint64_t sub_26B6B8060()
{
  result = qword_28040B128;
  if (!qword_28040B128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B128);
  }

  return result;
}

unint64_t sub_26B6B80B8()
{
  result = qword_2810CE668;
  if (!qword_2810CE668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CE668);
  }

  return result;
}

unint64_t sub_26B6B8110()
{
  result = qword_2810CE670;
  if (!qword_2810CE670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CE670);
  }

  return result;
}

unint64_t sub_26B6B8168()
{
  result = qword_28040B130;
  if (!qword_28040B130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B130);
  }

  return result;
}

unint64_t sub_26B6B81C0()
{
  result = qword_28040B138;
  if (!qword_28040B138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B138);
  }

  return result;
}

unint64_t sub_26B6B8218()
{
  result = qword_28040B140;
  if (!qword_28040B140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B140);
  }

  return result;
}

unint64_t sub_26B6B8270()
{
  result = qword_28040B148;
  if (!qword_28040B148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B148);
  }

  return result;
}

unint64_t sub_26B6B82C8()
{
  result = qword_28040B150;
  if (!qword_28040B150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B150);
  }

  return result;
}

unint64_t sub_26B6B8320()
{
  result = qword_28040B158;
  if (!qword_28040B158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B158);
  }

  return result;
}

unint64_t sub_26B6B8378()
{
  result = qword_2810CE3C8;
  if (!qword_2810CE3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CE3C8);
  }

  return result;
}

unint64_t sub_26B6B83D0()
{
  result = qword_2810CE3D0;
  if (!qword_2810CE3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CE3D0);
  }

  return result;
}

unint64_t sub_26B6B8428()
{
  result = qword_28040B160;
  if (!qword_28040B160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B160);
  }

  return result;
}

unint64_t sub_26B6B8480()
{
  result = qword_28040B168;
  if (!qword_28040B168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B168);
  }

  return result;
}

unint64_t sub_26B6B84D8()
{
  result = qword_2810CE2A0;
  if (!qword_2810CE2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CE2A0);
  }

  return result;
}

unint64_t sub_26B6B8530()
{
  result = qword_2810CE2A8;
  if (!qword_2810CE2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CE2A8);
  }

  return result;
}

unint64_t sub_26B6B8588()
{
  result = qword_28040B170;
  if (!qword_28040B170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B170);
  }

  return result;
}

unint64_t sub_26B6B85E0()
{
  result = qword_28040B178;
  if (!qword_28040B178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B178);
  }

  return result;
}

unint64_t sub_26B6B8638()
{
  result = qword_28040B180;
  if (!qword_28040B180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B180);
  }

  return result;
}

unint64_t sub_26B6B8690()
{
  result = qword_28040B188;
  if (!qword_28040B188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B188);
  }

  return result;
}

unint64_t sub_26B6B86E4()
{
  result = qword_28040B190;
  if (!qword_28040B190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B190);
  }

  return result;
}

unint64_t sub_26B6B8738()
{
  result = qword_28040B198;
  if (!qword_28040B198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B198);
  }

  return result;
}

unint64_t sub_26B6B878C()
{
  result = qword_28040B1A0;
  if (!qword_28040B1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B1A0);
  }

  return result;
}

unint64_t sub_26B6B87E0()
{
  result = qword_2810CDD78;
  if (!qword_2810CDD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CDD78);
  }

  return result;
}

unint64_t sub_26B6B8834()
{
  result = qword_2810CE008;
  if (!qword_2810CE008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CE008);
  }

  return result;
}

unint64_t sub_26B6B8888()
{
  result = qword_2810CE038;
  if (!qword_2810CE038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CE038);
  }

  return result;
}

unint64_t sub_26B6B88DC()
{
  result = qword_2810CC600;
  if (!qword_2810CC600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CC600);
  }

  return result;
}

unint64_t sub_26B6B8930()
{
  result = qword_28040B1A8;
  if (!qword_28040B1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B1A8);
  }

  return result;
}

unint64_t sub_26B6B8984()
{
  result = qword_28040B1B0;
  if (!qword_28040B1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B1B0);
  }

  return result;
}

unint64_t sub_26B6B89D8()
{
  result = qword_2810CE020;
  if (!qword_2810CE020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CE020);
  }

  return result;
}

unint64_t sub_26B6B8A2C()
{
  result = qword_28040B1B8;
  if (!qword_28040B1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B1B8);
  }

  return result;
}

unint64_t sub_26B6B8A80()
{
  result = qword_2810CDD48;
  if (!qword_2810CDD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CDD48);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_12(uint64_t a1)
{
  v3 = *(v2 + v1);
  *(v2 + v1) = a1;
}

uint64_t OUTLINED_FUNCTION_1_14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = (v3 + a3);
  v5 = *(v3 + a3 + 8);
  *v4 = a1;
  v4[1] = a2;
}

uint64_t OUTLINED_FUNCTION_7_11@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + a2);
  *(v2 + a2) = a1;
  return MEMORY[0x2821F96F8]();
}

uint64_t OUTLINED_FUNCTION_9_8@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3 + a3;
  *v4 = result;
  *(v4 + 8) = a2 & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_16_8@<X0>(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

void OUTLINED_FUNCTION_25_5(uint64_t *a1@<X8>)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  *(v1 - 80) = v2;
  *(v1 - 72) = v3;
}

uint64_t OUTLINED_FUNCTION_33_6(uint64_t *a1)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
  *v2 = v3;
  return __swift_destroy_boxed_opaque_existential_1(v1);
}

uint64_t OUTLINED_FUNCTION_39_3()
{

  return sub_26B6EA7C4();
}

void OUTLINED_FUNCTION_40_3(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  v4 = *v3;
  LOBYTE(v3) = *(v3 + 8);
  *(v2 - 96) = v4;
  *(v2 - 88) = v3;
}

uint64_t OUTLINED_FUNCTION_43_2()
{
}

uint64_t OUTLINED_FUNCTION_44_2@<X0>(uint64_t *a1@<X8>)
{
  result = *a1;
  v3 = *v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_48_1()
{

  return sub_26B6EA784();
}

uint64_t OUTLINED_FUNCTION_55_1()
{

  return sub_26B6EA784();
}

uint64_t OUTLINED_FUNCTION_93_1()
{

  return sub_26B6E9FA4();
}

uint64_t OUTLINED_FUNCTION_94_1(uint64_t a1)
{
  v4 = *(v2 + v1);
  *(v2 + v1) = a1;
}

uint64_t OUTLINED_FUNCTION_98_0()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_102_0()
{

  return swift_deallocPartialClassInstance();
}

void OUTLINED_FUNCTION_145(uint64_t a1@<X8>)
{
  v2 = v1 + a1;
  *v2 = 0;
  *(v2 + 8) = 1;
}

uint64_t OUTLINED_FUNCTION_151(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

void OUTLINED_FUNCTION_152(uint64_t a1@<X8>)
{
  v2 = v1 + a1;
  *v2 = 0;
  *(v2 + 8) = 1;
}

void OUTLINED_FUNCTION_157(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0;
  v2[1] = 0;
}

__n128 OUTLINED_FUNCTION_164@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + a1);
  *(v2 - 80) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_167()
{

  return sub_26B6EA404();
}

uint64_t OUTLINED_FUNCTION_178(uint64_t a1, uint64_t a2)
{
  v4 = v2[1];
  *v2 = a1;
  v2[1] = a2;
}

uint64_t OUTLINED_FUNCTION_180(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_187(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_189()
{
}

uint64_t OUTLINED_FUNCTION_192@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + a2 + 8);
}

uint64_t OUTLINED_FUNCTION_194@<X0>(uint64_t a1@<X8>)
{
  result = *(v1 + a1);
  v4 = *(v1 + a1 + 8);
  v5 = (v2 + a1);
  v6 = *v5;
  v7 = v5[1];
  return result;
}

uint64_t OUTLINED_FUNCTION_199()
{
  result = __swift_destroy_boxed_opaque_existential_1((v0 - 136));
  v2 = *(v0 - 65);
  return result;
}

uint64_t OUTLINED_FUNCTION_215()
{

  return swift_deallocPartialClassInstance();
}

uint64_t OUTLINED_FUNCTION_216()
{
}

uint64_t OUTLINED_FUNCTION_220()
{

  return sub_26B6E9AE4();
}

uint64_t OUTLINED_FUNCTION_221()
{

  return sub_26B6E9AE4();
}

uint64_t OUTLINED_FUNCTION_222()
{

  return sub_26B642140(v0 - 136, v0 - 176);
}

uint64_t OUTLINED_FUNCTION_223()
{

  return sub_26B6EA5D4();
}

void OUTLINED_FUNCTION_224(uint64_t a1@<X8>)
{
  v4 = *(v2 + v1);
  *(v2 + v1) = a1;
}

uint64_t OUTLINED_FUNCTION_225()
{

  return swift_deallocPartialClassInstance();
}

uint64_t OUTLINED_FUNCTION_226()
{

  return sub_26B6EA714();
}

uint64_t OUTLINED_FUNCTION_228@<X0>(uint64_t a1@<X8>)
{
  result = *v1;
  v4 = v1[1];
  v5 = (v2 + a1);
  v6 = *v5;
  v7 = v5[1];
  return result;
}

uint64_t OUTLINED_FUNCTION_237@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = (v3 + a3);
  *v4 = result;
  v4[1] = a2;
  return result;
}

id OUTLINED_FUNCTION_248()
{

  return objc_allocWithZone(v0);
}

uint64_t OUTLINED_FUNCTION_249()
{

  return sub_26B6E9AE4();
}

uint64_t OUTLINED_FUNCTION_250()
{
}

void OUTLINED_FUNCTION_252()
{

  JUMPOUT(0x26D67E0E0);
}

uint64_t OUTLINED_FUNCTION_253()
{

  return sub_26B6E9AE4();
}

uint64_t static SportsActivityCreationPolicy.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_26B6E9564();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SportsActivityCreationPolicy();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B1C8, &qword_26B6F82D0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v23 - v16;
  v18 = *(v15 + 56);
  sub_26B677554(a1, &v23 - v16);
  sub_26B677554(a2, &v17[v18]);
  OUTLINED_FUNCTION_16_1(v17);
  if (!v20)
  {
    sub_26B677554(v17, v12);
    OUTLINED_FUNCTION_16_1(&v17[v18]);
    if (!v20)
    {
      (*(v5 + 32))(v8, &v17[v18], v4);
      v19 = sub_26B6E9524();
      v21 = *(v5 + 8);
      v21(v8, v4);
      v21(v12, v4);
      sub_26B6B9CF4(v17);
      return v19 & 1;
    }

    (*(v5 + 8))(v12, v4);
LABEL_9:
    sub_26B6B9C8C(v17);
    v19 = 0;
    return v19 & 1;
  }

  OUTLINED_FUNCTION_16_1(&v17[v18]);
  if (!v20)
  {
    goto LABEL_9;
  }

  sub_26B6B9CF4(v17);
  v19 = 1;
  return v19 & 1;
}

uint64_t type metadata accessor for SportsActivityCreationPolicy()
{
  result = qword_28040B1E0;
  if (!qword_28040B1E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26B6B9C8C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B1C8, &qword_26B6F82D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26B6B9CF4(uint64_t a1)
{
  v2 = type metadata accessor for SportsActivityCreationPolicy();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26B6B9D54()
{
  result = qword_28040B1D0;
  if (!qword_28040B1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B1D0);
  }

  return result;
}

unint64_t sub_26B6B9DAC()
{
  result = qword_28040B1D8;
  if (!qword_28040B1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B1D8);
  }

  return result;
}

_BYTE *sub_26B6B9E14(_BYTE *result, int a2, int a3)
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

uint64_t sub_26B6B9EE8()
{
  v0 = sub_26B6E9564();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t sub_26B6B9F74(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_26B6B9FF8(v2, v3);
}

uint64_t sub_26B6B9FB4()
{
  OUTLINED_FUNCTION_29_2();
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return v1;
}

uint64_t sub_26B6B9FF8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 88);
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
}

uint64_t sub_26B6BA094()
{
  v1 = type metadata accessor for RunningClockComponentsFormatter.DataSource(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 32);
  v5 = *(v0 + 40);
  SportingEventSubscription.createRunningClockDataSource(preferStaticClock:)();
  RunningClockComponentsFormatter.formattedComponents(dataSource:)();
  return sub_26B6BB820(v4, type metadata accessor for RunningClockComponentsFormatter.DataSource);
}

uint64_t sub_26B6BA140(uint64_t a1, uint64_t *a2)
{
  sub_26B642140(a1, v5);
  v3 = *a2;
  return sub_26B6BA240(v5);
}

uint64_t sub_26B6BA17C()
{
  v1 = *(v0 + 32);
  swift_beginAccess();
  sub_26B642140(v0 + 104, v4);
  v2 = OBJC_IVAR____TtC9SportsKit31RunningClockComponentsFormatter_localizationProvider;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v1 + v2));
  sub_26B6367F0(v4, v1 + v2);
  return swift_endAccess();
}

uint64_t sub_26B6BA240(uint64_t *a1)
{
  OUTLINED_FUNCTION_40_2();
  __swift_assign_boxed_opaque_existential_1((v1 + 104), a1);
  swift_endAccess();
  sub_26B6BA17C();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t (*sub_26B6BA294(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_40_2();
  return sub_26B6BA2E0;
}

uint64_t sub_26B6BA2E0(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    return sub_26B6BA17C();
  }

  return result;
}

uint64_t sub_26B6BA314()
{
  if ((*(v0 + 56) & 1) == 0)
  {
    v1 = (*(*v0 + 400))();
    v2 = *(v0 + 72);
    *(v0 + 64) = v1;
    *(v0 + 72) = v3;
  }

  v4 = *(v0 + 64);
  v5 = *(v0 + 72);

  return v4;
}

unsigned __int8 *sub_26B6BA388()
{
  v1 = v0;
  v2 = *(v0 + 40);
  v3 = OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_sportingEventDetails;
  OUTLINED_FUNCTION_29_2();
  v4 = *(*(*(v2 + v3) + OBJC_IVAR____TtC9SportsKit13SportingEvent_clock) + OBJC_IVAR____TtC9SportsKit25SportingEventCurrentClock_current);
  SportingEventClock.totalSeconds.getter();
  v5 = 0;
  if (v6)
  {
    return v5;
  }

  v7 = *(v1 + 32);
  v8 = *(v2 + OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_runningClock);
  sub_26B6BCA60();
  v10 = v9;

  v11 = [v7 stringFromTimeInterval_];
  if (v11)
  {
    v12 = v11;
    v13 = sub_26B6E9A24();
    v15 = v14;
  }

  else
  {
    v15 = 0xE400000000000000;
    v13 = 808466992;
  }

  v47 = v13;
  v48 = v15;
  sub_26B641414();
  v16 = sub_26B6EA024();

  v18 = v16[2];
  if (!v18)
  {
    __break(1u);
LABEL_82:
    v5 = 0;
    goto LABEL_78;
  }

  v5 = v16[4];
  v2 = v16[5];
  v19 = HIBYTE(v2) & 0xF;
  v20 = v5 & 0xFFFFFFFFFFFFLL;
  if ((v2 & 0x2000000000000000) != 0)
  {
    v21 = HIBYTE(v2) & 0xF;
  }

  else
  {
    v21 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (!v21)
  {
    goto LABEL_82;
  }

  if ((v2 & 0x1000000000000000) != 0)
  {
    goto LABEL_84;
  }

  if ((v2 & 0x2000000000000000) == 0)
  {
    if ((v5 & 0x1000000000000000) != 0)
    {
      result = ((v2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v45 = v16[4];
      v46 = v16[5];
      result = sub_26B6EA1E4();
    }

    v22 = *result;
    if (v22 == 43)
    {
      if (v20 >= 1)
      {
        if (v20 != 1)
        {
          v5 = 0;
          if (result)
          {
            while (1)
            {
              OUTLINED_FUNCTION_49_1();
              if (!v24 & v23)
              {
                goto LABEL_73;
              }

              OUTLINED_FUNCTION_0_13();
              if (!v24)
              {
                goto LABEL_73;
              }

              v5 = v31 + v30;
              if (__OFADD__(v31, v30))
              {
                goto LABEL_73;
              }

              OUTLINED_FUNCTION_138_0();
              if (v24)
              {
                goto LABEL_74;
              }
            }
          }

          goto LABEL_72;
        }

        goto LABEL_73;
      }

      goto LABEL_88;
    }

    if (v22 != 45)
    {
      if (v20)
      {
        v5 = 0;
        if (result)
        {
          while (1)
          {
            v34 = *result - 48;
            if (v34 > 9)
            {
              goto LABEL_73;
            }

            v35 = 10 * v5;
            if ((v5 * 10) >> 64 != (10 * v5) >> 63)
            {
              goto LABEL_73;
            }

            v5 = v35 + v34;
            if (__OFADD__(v35, v34))
            {
              goto LABEL_73;
            }

            ++result;
            if (!--v20)
            {
              goto LABEL_72;
            }
          }
        }

        goto LABEL_72;
      }

LABEL_73:
      v5 = 0;
      v27 = 1;
LABEL_74:
      v41 = v27;
      while (1)
      {
        if (v41)
        {
          v5 = 0;
        }

        v18 = v16[2];
LABEL_78:
        if (v18 >= 2)
        {
          break;
        }

        __break(1u);
LABEL_84:

        v5 = sub_26B6AD130(v5, v2, 10);
        v41 = v44;
      }

      v42 = v16[6];
      v43 = v16[7];

      sub_26B6986BC(v42, v43);
      return v5;
    }

    if (v20 >= 1)
    {
      if (v20 != 1)
      {
        v5 = 0;
        if (result)
        {
          while (1)
          {
            OUTLINED_FUNCTION_49_1();
            if (!v24 & v23)
            {
              goto LABEL_73;
            }

            OUTLINED_FUNCTION_0_13();
            if (!v24)
            {
              goto LABEL_73;
            }

            v5 = v26 - v25;
            if (__OFSUB__(v26, v25))
            {
              goto LABEL_73;
            }

            OUTLINED_FUNCTION_138_0();
            if (v24)
            {
              goto LABEL_74;
            }
          }
        }

LABEL_72:
        v27 = 0;
        goto LABEL_74;
      }

      goto LABEL_73;
    }

    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

  v47 = v16[4];
  v48 = v2 & 0xFFFFFFFFFFFFFFLL;
  if (v5 != 43)
  {
    if (v5 != 45)
    {
      if (v19)
      {
        v36 = &v47;
        while (*v36 - 48 <= 9)
        {
          OUTLINED_FUNCTION_0_13();
          if (!v24)
          {
            break;
          }

          v5 = v40 + v39;
          if (__OFADD__(v40, v39))
          {
            break;
          }

          v36 = (v37 + 1);
          if (v38 == 1)
          {
            goto LABEL_72;
          }
        }
      }

      goto LABEL_73;
    }

    if (v19)
    {
      if (v19 != 1)
      {
        OUTLINED_FUNCTION_5_11();
        while (1)
        {
          OUTLINED_FUNCTION_49_1();
          if (!v24 & v23)
          {
            break;
          }

          OUTLINED_FUNCTION_0_13();
          if (!v24)
          {
            break;
          }

          v5 = v29 - v28;
          if (__OFSUB__(v29, v28))
          {
            break;
          }

          OUTLINED_FUNCTION_138_0();
          if (v24)
          {
            goto LABEL_74;
          }
        }
      }

      goto LABEL_73;
    }

    goto LABEL_87;
  }

  if (v19)
  {
    if (v19 != 1)
    {
      OUTLINED_FUNCTION_5_11();
      while (1)
      {
        OUTLINED_FUNCTION_49_1();
        if (!v24 & v23)
        {
          break;
        }

        OUTLINED_FUNCTION_0_13();
        if (!v24)
        {
          break;
        }

        v5 = v33 + v32;
        if (__OFADD__(v33, v32))
        {
          break;
        }

        OUTLINED_FUNCTION_138_0();
        if (v24)
        {
          goto LABEL_74;
        }
      }
    }

    goto LABEL_73;
  }

LABEL_89:
  __break(1u);
  return result;
}

uint64_t sub_26B6BA754(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_26B6BA95C(v4);
}

uint64_t sub_26B6BA780()
{
  if (*(v0 + 144))
  {
    v1 = *(v0 + 144);
  }

  else
  {
    v1 = sub_26B6BA7E0(v0);
    v2 = *(v0 + 144);
    *(v0 + 144) = v1;
  }

  return v1;
}

uint64_t sub_26B6BA7E0(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_sportingEventDetails;
  swift_beginAccess();
  v3 = *(*(v1 + v2) + OBJC_IVAR____TtC9SportsKit13SportingEvent__competitors);
  v4 = sub_26B6B8B04(v3);
  v5 = MEMORY[0x277D84F90];
  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = v4;
  v19 = MEMORY[0x277D84F90];
  v7 = v4 & ~(v4 >> 63);

  result = sub_26B63BA0C(0, v7, 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v9 = 0;
    v10 = v19;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x26D67DB30](v9, v3);
      }

      else
      {
        v11 = *(v3 + 8 * v9 + 32);
      }

      v12 = v11;
      v13 = *&v11[OBJC_IVAR____TtC9SportsKit32SportingEventCompetitorContainer_competitor];
      v14 = SportingEventCompetitor.contextualShootouts()();

      v15 = v5;
      if (v14)
      {
        v16 = v14;
      }

      else
      {
        v16 = v5;
      }

      v18 = *(v19 + 16);
      v17 = *(v19 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_26B63BA0C(v17 > 1, v18 + 1, 1);
      }

      ++v9;
      *(v19 + 16) = v18 + 1;
      *(v19 + 8 * v18 + 32) = v16;
      v5 = v15;
    }

    while (v6 != v9);

    return v10;
  }

  __break(1u);
  return result;
}

uint64_t sub_26B6BA95C(uint64_t a1)
{
  v2 = *(v1 + 144);
  *(v1 + 144) = a1;
}

uint64_t (*sub_26B6BA96C(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_26B6BA780();
  return sub_26B6BA9B4;
}

uint64_t sub_26B6BA9B4(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + 144);
  *(v1 + 144) = v2;
}

uint64_t sub_26B6BA9C4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_26B6BAA3C(&v5);
  *a2 = v5;
  return result;
}

uint64_t sub_26B6BAA00(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;

  return sub_26B6BAC68(&v4);
}

uint64_t sub_26B6BAA3C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 152);
  v4 = v3;
  if (v3 == 1)
  {
    sub_26B6BAAC4(v1, &v7);
    v4 = v7;
    v5 = *(v1 + 152);
    *(v1 + 152) = v7;

    sub_26B648448(v5);
  }

  *a1 = v4;

  return sub_26B64832C(v3);
}

uint64_t sub_26B6BAAC4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  switch(*(a1 + 17))
  {
    case 1:

      goto LABEL_4;
    default:
      v4 = sub_26B6EA5D4();

      if ((v4 & 1) == 0)
      {
        goto LABEL_7;
      }

LABEL_4:
      result = *(*(*(a1 + 24) + OBJC_IVAR____TtC9SportsKit18SportingEventClock_period) + OBJC_IVAR____TtC9SportsKit24SportingEventClockPeriod__type);
      if (result == 10 || (result = sub_26B6475E8(), (result & 1) == 0))
      {
LABEL_7:
        *a2 = 0;
      }

      else
      {
        v6 = sub_26B6BA780();
        result = PenaltyShootoutsViewModel.init(contextualShootouts:)(v6).competitorShootoutsViewModels._rawValue;
        *a2 = v7;
      }

      return result;
  }
}

uint64_t sub_26B6BAC68(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 152);
  *(v1 + 152) = v2;
  return sub_26B648448(v3);
}

uint64_t (*sub_26B6BAC78(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  sub_26B6BAA3C(a1);
  return sub_26B6BACC0;
}

uint64_t sub_26B6BACC0(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (a2)
  {
    v5 = *a1;

    sub_26B6BAC68(&v5);
  }

  else
  {
    v5 = *a1;
    return sub_26B6BAC68(&v5);
  }
}

uint64_t RunningClockViewModel.__allocating_init(subscription:)(char *a1)
{
  v2 = swift_allocObject();
  RunningClockViewModel.init(subscription:)(a1);
  return v2;
}

uint64_t RunningClockViewModel.init(subscription:)(char *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409EF8, &qword_26B6F17D0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v21[-v7];
  v9 = objc_allocWithZone(type metadata accessor for RunningClockComponentsFormatter());
  *(v2 + 32) = sub_26B6BB6C4(v9);
  v10 = [objc_allocWithZone(type metadata accessor for AppState()) init];
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  *(v2 + 72) = 0xE000000000000000;
  *(v2 + 96) = MEMORY[0x277D84FA0];
  *(v2 + 80) = 0;
  *(v2 + 88) = 0;
  *(v2 + 128) = &type metadata for RunningClockDefaultLocalization;
  *(v2 + 136) = &protocol witness table for RunningClockDefaultLocalization;
  *(v2 + 144) = xmmword_26B6ED030;
  *(v2 + 40) = a1;
  *(v2 + 48) = v10;
  v11 = *&a1[OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_sport];
  v12 = *&a1[OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_sport + 8];
  v13 = a1;

  v14._countAndFlagsBits = v11;
  v14._object = v12;
  Sport.init(rawValue:)(v14);
  *(v2 + 16) = v21[24];
  v15 = OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_sportingEventDetails;
  OUTLINED_FUNCTION_29_2();
  v16 = *&v13[v15];
  *(v2 + 17) = *(v16 + OBJC_IVAR____TtC9SportsKit13SportingEvent_progressStatus);
  v17 = *(*(v16 + OBJC_IVAR____TtC9SportsKit13SportingEvent_clock) + OBJC_IVAR____TtC9SportsKit25SportingEventCurrentClock_current);
  *(v2 + 24) = v17;
  v18 = *(v2 + 48);
  OUTLINED_FUNCTION_40_2();
  v19 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409F00, &qword_26B6F17D8);
  sub_26B6E9634();
  swift_endAccess();
  swift_allocObject();
  swift_weakInit();
  sub_26B6BB7BC();
  sub_26B6E96E4();

  (*(v5 + 8))(v8, v4);
  OUTLINED_FUNCTION_40_2();
  sub_26B6E95D4();
  swift_endAccess();

  return v2;
}

_BYTE *sub_26B6BB020(_BYTE *result)
{
  if (*result == 1)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      result[56] = 1;
    }
  }

  return result;
}

uint64_t sub_26B6BB084(__int128 *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 32);
  return sub_26B656098();
}

uint64_t sub_26B6BB0C0()
{
  v1 = type metadata accessor for RunningClockComponentsFormatter.FormattedComponents(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v17[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_26B6BA094();
  v22 = 0;
  v23 = 0xE000000000000000;
  v5 = v4[1];
  if (v5)
  {
    v6 = *v4;
    v7 = v4[1];

    MEMORY[0x26D67D4D0](v6, v5);

    OUTLINED_FUNCTION_29_2();
    sub_26B642140(v0 + 104, &v18);
    v8 = v20;
    v9 = v21;
    __swift_project_boxed_opaque_existential_1(&v18, v20);
    v10 = (*(v9 + 16))(v8, v9);
    __swift_destroy_boxed_opaque_existential_1(&v18);
    if (v10)
    {
      v11 = 47042;
      v12 = 0xA200000000000000;
    }

    else
    {
      v11 = 32;
      v12 = 0xE100000000000000;
    }

    MEMORY[0x26D67D4D0](v11, v12);
  }

  v13 = v4[4];
  v14 = v4[5];

  MEMORY[0x26D67D4D0](v13, v14);

  if (v4[3])
  {
    v15 = v4[2];
    v18 = 32;
    v19 = 0xE100000000000000;
    MEMORY[0x26D67D4D0](v15);
    MEMORY[0x26D67D4D0](v18, v19);
  }

  sub_26B6BB820(v4, type metadata accessor for RunningClockComponentsFormatter.FormattedComponents);
  return v22;
}

uint64_t RunningClockViewModel.deinit()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 88);

  v3 = *(v0 + 96);

  __swift_destroy_boxed_opaque_existential_1((v0 + 104));
  v4 = *(v0 + 144);

  sub_26B648448(*(v0 + 152));
  return v0;
}

uint64_t RunningClockViewModel.__deallocating_deinit()
{
  RunningClockViewModel.deinit();

  return MEMORY[0x2821FE8D8](v0, 160, 7);
}

uint64_t RunningClockViewModel.isEqual(to:)(void *a1)
{
  if (*v1 != *a1)
  {
    return 0;
  }

  v3 = (*(*v1 + 400))();
  v5 = v4;
  if (v3 == (*(*a1 + 400))() && v5 == v6)
  {
  }

  else
  {
    v8 = sub_26B6EA5D4();

    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  sub_26B68A378();
  v10 = v1[5];
  v11 = a1[5];
  return sub_26B6E9FA4() & 1;
}

uint64_t *__swift_assign_boxed_opaque_existential_1(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v3 = result;
    v4 = result[3];
    v5 = a2[3];
    if (v4 == v5)
    {
      v10 = *(v4 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v14 = *result;
        v15 = *a2;

        *v3 = v15;
      }

      else
      {
        v11 = *(v10 + 24);
        v12 = result[3];

        return v11();
      }
    }

    else
    {
      result[3] = v5;
      result[4] = a2[4];
      v6 = *(v4 - 8);
      v7 = *(v5 - 8);
      v8 = v7;
      v9 = *(v7 + 80);
      if ((*(v6 + 82) & 2) != 0)
      {
        v13 = *result;
        if ((v9 & 0x20000) != 0)
        {
          *result = *a2;
        }

        else
        {
          (*(v7 + 16))(result, a2, v5);
        }
      }

      else
      {
        (*(v6 + 32))(v16, result, v4);
        if ((v9 & 0x20000) != 0)
        {
          *v3 = *a2;
        }

        else
        {
          (*(v8 + 16))(v3, a2, v5);
        }

        return (*(v6 + 8))(v16, v4);
      }
    }
  }

  return result;
}

id sub_26B6BB6C4(char *a1)
{
  ObjectType = swift_getObjectType();
  v9[3] = &type metadata for RunningClockDefaultLocalization;
  v9[4] = &protocol witness table for RunningClockDefaultLocalization;
  v3 = OBJC_IVAR____TtC9SportsKit31RunningClockComponentsFormatter_styleOptions;
  if (qword_280408D78 != -1)
  {
    swift_once();
  }

  v4 = &a1[v3];
  v5 = HIBYTE(word_28040B400);
  *v4 = word_28040B400;
  v4[1] = v5;
  sub_26B642140(v9, &a1[OBJC_IVAR____TtC9SportsKit31RunningClockComponentsFormatter_localizationProvider]);
  v8.receiver = a1;
  v8.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v8, sel_init);
  sub_26B6D8460();

  __swift_destroy_boxed_opaque_existential_1(v9);
  return v6;
}

unint64_t sub_26B6BB7BC()
{
  result = qword_2810CD760;
  if (!qword_2810CD760)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280409EF8, &qword_26B6F17D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CD760);
  }

  return result;
}

uint64_t sub_26B6BB820(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_26B6BBC18(char *a1, unsigned __int8 *a2, double a3)
{
  v4 = v3;
  v8 = sub_26B6E9564();
  v9 = OUTLINED_FUNCTION_4(v8);
  v139 = v10;
  v140 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_5_0();
  v15 = v14 - v13;
  v16 = *a2;
  sub_26B698450();
  v17 = OBJC_IVAR____TtC9SportsKit25SportingEventRunningClock_version;
  v142 = v3;
  if (*&v3[OBJC_IVAR____TtC9SportsKit25SportingEventRunningClock_version] >= v18)
  {
    if (qword_2810CE9F0 == -1)
    {
LABEL_11:
      v26 = sub_26B6E95C4();
      OUTLINED_FUNCTION_19_5(v26, qword_2810D4308);
      v27 = v142;
      v141 = a1;
      v144 = sub_26B6E95A4();
      v28 = sub_26B6E9E64();
      if (os_log_type_enabled(v144, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 134218240;
        *(v29 + 4) = *(v142 + v17);

        *(v29 + 12) = 2048;
        sub_26B698450();
        *(v29 + 14) = v30;

        _os_log_impl(&dword_26B630000, v144, v28, "SportingEventRunningClockV2: out of order version, current=%ld, received=%ld. Ignore.", v29, 0x16u);
        OUTLINED_FUNCTION_3_4();
      }

      else
      {
      }

      OUTLINED_FUNCTION_20_7();

      return;
    }

LABEL_150:
    OUTLINED_FUNCTION_3_6();
    goto LABEL_11;
  }

  v137 = a1;
  v138 = OBJC_IVAR____TtC9SportsKit25SportingEventRunningClock_version;
  v19 = *&v3[OBJC_IVAR____TtC9SportsKit25SportingEventRunningClock_features];
  v20 = *(v19 + 16);
  v143 = *&v4[OBJC_IVAR____TtC9SportsKit25SportingEventRunningClock_features];
  if (!v20)
  {
    goto LABEL_19;
  }

  a1 = 0;
  v21 = (v19 + 48);
  v17 = "CLOCK_SAFETY_START";
  while (1)
  {
    if (a1 >= *(v19 + 16))
    {
      __break(1u);
LABEL_147:
      __break(1u);
LABEL_148:
      __break(1u);
LABEL_149:
      __break(1u);
      goto LABEL_150;
    }

    v22 = *(v21 - 1);
    v23 = *v21;
    v24 = *(v21 - 16);
    if (v24 != 1 && v24 != 2)
    {
      break;
    }

    v25 = sub_26B6EA5D4();

    if (v25)
    {
      goto LABEL_18;
    }

    ++a1;
    v21 += 3;
    v19 = v143;
    if (v20 == a1)
    {
      goto LABEL_19;
    }
  }

LABEL_18:
  if (v23)
  {
LABEL_19:
    v33 = 90.0;
    if (v16 != 5)
    {
      v33 = 0.0;
    }

    if (v16 == 1)
    {
      v22 = 60.0;
    }

    else
    {
      v22 = v33;
    }
  }

  v34 = v137;
  v35 = OBJC_IVAR____TtC9SportsKit25SportingEventRunningClock_isCountingDown;
  v36 = v142;
  *(v142 + OBJC_IVAR____TtC9SportsKit25SportingEventRunningClock_isCountingDown) = *(*(*&v137[OBJC_IVAR____TtC9SportsKit13SportingEvent_clock] + OBJC_IVAR____TtC9SportsKit25SportingEventCurrentClock_current) + OBJC_IVAR____TtC9SportsKit18SportingEventClock__isCountingDown) & 1;
  v37 = SportingEventClock.totalSeconds.getter();
  if (v38)
  {
    v39 = 0;
  }

  else
  {
    v39 = v37;
  }

  v40 = *&v137[OBJC_IVAR____TtC9SportsKit13SportingEvent__coverage];
  v42 = v139;
  v41 = v140;
  if (!v40)
  {
    goto LABEL_45;
  }

  v43 = *(v40 + OBJC_IVAR____TtC9SportsKit21SportingEventCoverage__ingestion);
  if (!v43)
  {
    goto LABEL_45;
  }

  v44 = *(v43 + OBJC_IVAR____TtC9SportsKit30SportingEventCoverageIngestion__lastUpdates);
  if (!v44)
  {
    goto LABEL_45;
  }

  v45 = sub_26B6542CC(v44);

  v17 = 0;
  a1 = &unk_28040A000;
  while (1)
  {
    if (v45 == v17)
    {

      v41 = v140;
      v36 = v142;
      v42 = v139;
      goto LABEL_45;
    }

    if ((v44 & 0xC000000000000001) != 0)
    {
      v46 = MEMORY[0x26D67DB30](v17, v44);
    }

    else
    {
      if (v17 >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_149;
      }

      v46 = *(v44 + 8 * v17 + 32);
    }

    v47 = v46;
    if (__OFADD__(v17, 1))
    {
      goto LABEL_148;
    }

    v48 = v46[OBJC_IVAR____TtC9SportsKit31SportingEventCoverageLastUpdate__scope];
    if (v48 != 2)
    {
      break;
    }

LABEL_39:

    ++v17;
  }

  if (v48)
  {
    v49 = sub_26B6EA5D4();
    swift_bridgeObjectRelease_n();
    if (v49)
    {
      goto LABEL_43;
    }

    goto LABEL_39;
  }

LABEL_43:

  v50 = *&v47[OBJC_IVAR____TtC9SportsKit31SportingEventCoverageLastUpdate__timestamp];
  v51 = v47[OBJC_IVAR____TtC9SportsKit31SportingEventCoverageLastUpdate__timestamp + 8];

  v52 = v51 == 1;
  v41 = v140;
  v36 = v142;
  v42 = v139;
  if (v52)
  {
LABEL_45:
    sub_26B6E9554();
    sub_26B6E9514();
    v50 = v53;
    (*(v42 + 8))(v15, v41);
  }

  sub_26B6E9554();
  sub_26B6E9514();
  v55 = v54;
  v56 = *(v42 + 8);
  a1 = (v42 + 8);
  v56(v15, v41);
  v57 = v55 - v50;
  OUTLINED_FUNCTION_3_13();
  if (!(v58 ^ v59 | v52))
  {
    __break(1u);
    goto LABEL_151;
  }

  if (v57 <= -9.22337204e18)
  {
LABEL_151:
    __break(1u);
    goto LABEL_152;
  }

  if (v57 >= OUTLINED_FUNCTION_12_10())
  {
LABEL_152:
    __break(1u);
    goto LABEL_153;
  }

  v60 = v143;
  a1 = *(v143 + 16);
  if (a1)
  {
    v61 = v39;
    v62 = 0;
    v63 = (v143 + 48);
    v64 = &qword_2810CE000;
    while (1)
    {
      if (v62 >= *(v60 + 16))
      {
        goto LABEL_147;
      }

      v65 = *(v63 - 1);
      v17 = *v63;
      OUTLINED_FUNCTION_6_11();
      if (*(v63 - 16))
      {
        if (*(v63 - 16) != 1)
        {
          break;
        }
      }

      v66 = sub_26B6EA5D4();

      if (v66)
      {
        goto LABEL_60;
      }

      ++v62;
      v63 += 3;
      v60 = v143;
      if (a1 == v62)
      {
        v65 = 120.0;
        goto LABEL_62;
      }
    }

LABEL_60:
    if (v17)
    {
      v65 = 120.0;
    }

LABEL_62:
    v36 = v142;
    v39 = v61;
    v34 = v137;
  }

  else
  {
    v65 = 120.0;
    v64 = &qword_2810CE000;
  }

  OUTLINED_FUNCTION_3_13();
  if (!(v58 ^ v59 | v52))
  {
LABEL_153:
    __break(1u);
LABEL_154:
    __break(1u);
    goto LABEL_155;
  }

  if (v65 <= -9.22337204e18)
  {
    goto LABEL_154;
  }

  if (v65 >= OUTLINED_FUNCTION_12_10())
  {
LABEL_155:
    __break(1u);
LABEL_156:
    __break(1u);
LABEL_157:
    OUTLINED_FUNCTION_3_6();
LABEL_116:
    v107 = sub_26B6E95C4();
    OUTLINED_FUNCTION_19_5(v107, qword_2810D4308);
    v108 = v36;
    v109 = sub_26B6E95A4();
    v110 = sub_26B6E9E64();
    if (os_log_type_enabled(v109, v110))
    {
      v111 = swift_slowAlloc();
      v112 = swift_slowAlloc();
      v145 = v112;
      *v111 = 67109634;
      *(v111 + 4) = a1[v36];

      *(v111 + 8) = 2080;
      v113 = MEMORY[0x26D67D610](v143, &type metadata for SportingEventRunningClockFeature);
      v115 = sub_26B6D22D8(v113, v114, &v145);

      *(v111 + 10) = v115;
      *(v111 + 18) = 2048;
      *(v111 + 20) = a3;
      _os_log_impl(&dword_26B630000, v109, v110, "SportingEventRunningClockV2: initialize clock.isSupported=%{BOOL}d, features: %s, ttl=%f", v111, 0x1Cu);
      __swift_destroy_boxed_opaque_existential_1(v112);
      OUTLINED_FUNCTION_3_4();
      OUTLINED_FUNCTION_3_4();
    }

    else
    {
    }

    SportingEvent.isEventClockRunning.getter();
    v118 = OUTLINED_FUNCTION_7_12();
    goto LABEL_125;
  }

  if (*(v36 + v35))
  {
    goto LABEL_83;
  }

  v67 = v57;
  v68 = SportingEvent.isEventClockRunning.getter();
  v69 = v64[318];
  if ((v68 & 1) == 0 || v67 < 0 || v65 < v67)
  {
LABEL_78:
    if (v69 != -1)
    {
      OUTLINED_FUNCTION_3_6();
    }

    v78 = sub_26B6E95C4();
    OUTLINED_FUNCTION_19_5(v78, qword_2810D4308);
    v79 = sub_26B6E95A4();
    v80 = sub_26B6E9E64();
    if (OUTLINED_FUNCTION_5_12(v80))
    {
      OUTLINED_FUNCTION_41_0();
      OUTLINED_FUNCTION_15_7();
      *v81 = 134217984;
      *(v81 + 4) = v67;
      OUTLINED_FUNCTION_14_10();
      _os_log_impl(v82, v83, v84, v85, v39, 0xCu);
      OUTLINED_FUNCTION_10_10();
    }

    goto LABEL_83;
  }

  if (v69 != -1)
  {
    OUTLINED_FUNCTION_3_6();
  }

  v70 = sub_26B6E95C4();
  OUTLINED_FUNCTION_19_5(v70, qword_2810D4308);
  v71 = sub_26B6E95A4();
  v72 = sub_26B6E9E64();
  if (OUTLINED_FUNCTION_5_12(v72))
  {
    OUTLINED_FUNCTION_41_0();
    OUTLINED_FUNCTION_15_7();
    *v73 = 134217984;
    *(v73 + 4) = v67;
    OUTLINED_FUNCTION_14_10();
    _os_log_impl(v74, v75, v76, v77, v39, 0xCu);
    OUTLINED_FUNCTION_10_10();
  }

  v59 = __OFADD__(v39, v67);
  v39 += v67;
  if (v59)
  {
    __break(1u);
    goto LABEL_78;
  }

LABEL_83:
  if (*(v36 + v138) != -1 || (*(v36 + v35) & 1) != 0 || (SportingEvent.isEventClockRunning.getter() & 1) == 0)
  {
    goto LABEL_110;
  }

  v86 = v143;
  a1 = *(v143 + 16);
  v87 = 0.0;
  if (a1)
  {
    v88 = v34;
    v89 = v39;
    v90 = 0;
    v36 = 0x800000026B6FAAE0;
    v91 = (v143 + 48);
    while (1)
    {
      if (v90 >= *(v86 + 16))
      {
        goto LABEL_156;
      }

      v92 = *(v91 - 1);
      v93 = *v91;
      OUTLINED_FUNCTION_6_11();
      if (*(v91 - 16))
      {
        if (*(v91 - 16) != 2)
        {
          break;
        }
      }

      v94 = sub_26B6EA5D4();

      if (v94)
      {
        goto LABEL_95;
      }

      ++v90;
      v91 += 3;
      v86 = v143;
      if (a1 == v90)
      {
        v36 = v142;
        goto LABEL_99;
      }
    }

LABEL_95:
    if (v93)
    {
      v87 = 0.0;
    }

    else
    {
      v87 = v92;
    }

    v36 = v142;
LABEL_99:
    v39 = v89;
    v34 = v88;
  }

  OUTLINED_FUNCTION_3_13();
  if (v58 ^ v59 | v52)
  {
    if (v87 > -9.22337204e18)
    {
      if (v87 < OUTLINED_FUNCTION_12_10())
      {
        a1 = v87;
        v59 = __OFADD__(v39, v87);
        v39 += v87;
        if (!v59)
        {
          OUTLINED_FUNCTION_16_9();
          if (v52)
          {
            goto LABEL_107;
          }

          goto LABEL_166;
        }

        goto LABEL_165;
      }

      goto LABEL_164;
    }

    goto LABEL_163;
  }

  while (2)
  {
    __break(1u);
LABEL_163:
    __break(1u);
LABEL_164:
    __break(1u);
LABEL_165:
    __break(1u);
LABEL_166:
    OUTLINED_FUNCTION_3_6();
LABEL_107:
    v95 = sub_26B6E95C4();
    OUTLINED_FUNCTION_19_5(v95, qword_2810D4308);
    v96 = sub_26B6E95A4();
    v97 = sub_26B6E9E64();
    if (OUTLINED_FUNCTION_5_12(v97))
    {
      v98 = OUTLINED_FUNCTION_41_0();
      *v98 = 134217984;
      *(v98 + 4) = a1;
      OUTLINED_FUNCTION_14_10();
      _os_log_impl(v99, v100, v101, v102, v98, 0xCu);
      OUTLINED_FUNCTION_3_4();
    }

LABEL_110:
    v103 = OBJC_IVAR____TtC9SportsKit25SportingEventRunningClock_isEventClockRunning;
    if (*(v36 + OBJC_IVAR____TtC9SportsKit25SportingEventRunningClock_isEventClockRunning))
    {
      v104 = 0;
    }

    else
    {
      v104 = SportingEvent.isEventClockRunning.getter();
    }

    sub_26B698450();
    *(v36 + v138) = v105;
    *(v36 + OBJC_IVAR____TtC9SportsKit25SportingEventRunningClock_staticClockValue) = v39;
    *(v36 + v103) = SportingEvent.isEventClockRunning.getter() & 1;
    a1 = OBJC_IVAR____TtC9SportsKit25SportingEventRunningClock_isSupported;
    v106 = *(v36 + OBJC_IVAR____TtC9SportsKit25SportingEventRunningClock_isSupported);
    if (v106 != (SportingEvent.isRunningClockSupported.getter() & 1))
    {
      a1[v36] = SportingEvent.isRunningClockSupported.getter() & 1;
      OUTLINED_FUNCTION_16_9();
      if (!v52)
      {
        goto LABEL_157;
      }

      goto LABEL_116;
    }

    if (!v106)
    {
LABEL_124:
      SportingEvent.isEventClockRunning.getter();
      v118 = OUTLINED_FUNCTION_7_12();
      goto LABEL_125;
    }

    switch(v34[OBJC_IVAR____TtC9SportsKit13SportingEvent_progressStatus])
    {
      case 3:

        goto LABEL_124;
      default:
        v119 = sub_26B6EA5D4();

        if (v119)
        {
          goto LABEL_124;
        }

        sub_26B6BCA60();
        v36 = &v39[-v120];
        if (__OFSUB__(v39, v120))
        {
          __break(1u);
LABEL_159:
          __break(1u);
          goto LABEL_160;
        }

        if (v36 < 0)
        {
          v59 = __OFSUB__(0, v36);
          v36 = v120 - v39;
          if (v59)
          {
            __break(1u);
            goto LABEL_168;
          }
        }

        OUTLINED_FUNCTION_3_13();
        if (!(v58 ^ v59 | v52))
        {
          goto LABEL_159;
        }

        if (v22 <= -9.22337204e18)
        {
LABEL_160:
          __break(1u);
          goto LABEL_161;
        }

        if (v22 >= OUTLINED_FUNCTION_12_10())
        {
LABEL_161:
          __break(1u);
          continue;
        }

        if (v36 > v22 || (sub_26B6BCA60(), v121 < 0))
        {
          OUTLINED_FUNCTION_16_9();
          if (!v52)
          {
            OUTLINED_FUNCTION_3_6();
          }

          v129 = sub_26B6E95C4();
          OUTLINED_FUNCTION_19_5(v129, qword_2810D4308);
          v130 = sub_26B6E95A4();
          v131 = sub_26B6E9E64();
          if (OUTLINED_FUNCTION_5_12(v131))
          {
            v132 = OUTLINED_FUNCTION_41_0();
            *v132 = 134217984;
            *(v132 + 4) = v36;
            OUTLINED_FUNCTION_14_10();
            _os_log_impl(v133, v134, v135, v136, v132, 0xCu);
            OUTLINED_FUNCTION_3_4();
          }

          SportingEvent.isEventClockRunning.getter();
          v118 = OUTLINED_FUNCTION_7_12();
        }

        else
        {
          OUTLINED_FUNCTION_16_9();
          if (!v52)
          {
LABEL_168:
            OUTLINED_FUNCTION_3_6();
          }

          v122 = sub_26B6E95C4();
          OUTLINED_FUNCTION_19_5(v122, qword_2810D4308);
          v123 = v142;
          v124 = sub_26B6E95A4();
          v125 = sub_26B6E9E64();
          if (os_log_type_enabled(v124, v125))
          {
            v126 = v39;
            v127 = swift_slowAlloc();
            *v127 = 134218752;
            sub_26B6BCA60();
            *(v127 + 4) = v128;

            *(v127 + 12) = 2048;
            *(v127 + 14) = v126;
            *(v127 + 22) = 1024;
            *(v127 + 24) = v104 & 1;
            *(v127 + 28) = 2048;
            *(v127 + 30) = v36;
            _os_log_impl(&dword_26B630000, v124, v125, "SportingEventRunningClockV2: sync, currentClock=%ld, nextClock=%ld, resuming=%{BOOL}d, drift=%ldsec", v127, 0x26u);
            OUTLINED_FUNCTION_3_4();
          }

          else
          {

            v124 = v123;
          }

          v116 = SportingEvent.isEventClockRunning.getter() & 1;
          v117 = v104 & 1;
          v118 = a3;
        }

LABEL_125:
        sub_26B6BCD40(v116, v117, v118);
        OUTLINED_FUNCTION_20_7();
        return;
    }
  }
}

void sub_26B6BCA60()
{
  v1 = v0;
  v2 = sub_26B6E9564();
  v3 = OUTLINED_FUNCTION_4(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v3);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v25 - v11;
  if (*(v1 + OBJC_IVAR____TtC9SportsKit25SportingEventRunningClock_isSupported) != 1)
  {
    v24 = *(v1 + OBJC_IVAR____TtC9SportsKit25SportingEventRunningClock_staticClockValue);
    return;
  }

  sub_26B6E9554();
  sub_26B6E9514();
  v14 = v13;
  v15 = *(v5 + 8);
  v15(v12, v2);
  OUTLINED_FUNCTION_17_6();
  sub_26B6E9134();
  swift_endAccess();
  sub_26B6E9514();
  v17 = v16;
  v15(v10, v2);
  v18 = v14 - v17;
  v19 = *(v1 + OBJC_IVAR____TtC9SportsKit25SportingEventRunningClock_currentStopValue);
  if (*(v1 + OBJC_IVAR____TtC9SportsKit25SportingEventRunningClock_isCountingDown) == 1)
  {
    OUTLINED_FUNCTION_17_6();
    sub_26B6E9144();
    swift_endAccess();
    OUTLINED_FUNCTION_3_13();
    if (!(v22 ^ v23 | v21))
    {
      __break(1u);
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    if (v20 <= -9.22337204e18)
    {
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    if (v20 >= 9.22337204e18)
    {
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_13();
    if (!(v22 ^ v23 | v21))
    {
      goto LABEL_14;
    }

    if (v18 <= -9.22337204e18)
    {
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    if (v18 >= OUTLINED_FUNCTION_12_10())
    {
LABEL_18:
      __break(1u);
    }
  }
}

id sub_26B6BCC88(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  sub_26B6E9154();
  *&v1[OBJC_IVAR____TtC9SportsKit25SportingEventRunningClock_version] = -1;
  v1[OBJC_IVAR____TtC9SportsKit25SportingEventRunningClock_isSupported] = 0;
  v1[OBJC_IVAR____TtC9SportsKit25SportingEventRunningClock_isCountingDown] = 0;
  v1[OBJC_IVAR____TtC9SportsKit25SportingEventRunningClock_isEventClockRunning] = 0;
  *&v1[OBJC_IVAR____TtC9SportsKit25SportingEventRunningClock_staticClockValue] = 0;
  *&v1[OBJC_IVAR____TtC9SportsKit25SportingEventRunningClock_currentStopValue] = 0;
  *&v1[OBJC_IVAR____TtC9SportsKit25SportingEventRunningClock_features] = a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_26B6BCD40(uint64_t result, char a2, double a3)
{
  if ((*(v3 + OBJC_IVAR____TtC9SportsKit25SportingEventRunningClock_staticClockValue) & 0x8000000000000000) == 0)
  {
    v4 = result & 1;
    v5 = a2 & 1;
    if (*(v3 + OBJC_IVAR____TtC9SportsKit25SportingEventRunningClock_isCountingDown) == 1)
    {
      return sub_26B6BCD78(v4, v5, a3);
    }

    else
    {
      return sub_26B6BCF58(v4, v5, a3);
    }
  }

  return result;
}

uint64_t sub_26B6BCD78(char a1, char a2, double a3)
{
  v7 = sub_26B6E9564();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_26B6E9164();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  result = MEMORY[0x28223BE20](v9);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    sub_26B6E9554();
    v15 = *(v3 + OBJC_IVAR____TtC9SportsKit25SportingEventRunningClock_staticClockValue);
    sub_26B6E9124();
    v16 = OBJC_IVAR____TtC9SportsKit25SportingEventRunningClock_runningClockInterval;
    swift_beginAccess();
    (*(v10 + 40))(v3 + v16, v14, v9);
    result = swift_endAccess();
  }

  v17 = *(v3 + OBJC_IVAR____TtC9SportsKit25SportingEventRunningClock_staticClockValue);
  if ((a1 & 1) == 0)
  {
    goto LABEL_9;
  }

  if ((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (a3 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (a3 >= 9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v18 = __OFSUB__(v17, a3);
  v19 = v17 - a3;
  if (!v18)
  {
    v17 = v19 & ~(v19 >> 63);
LABEL_9:
    *(v3 + OBJC_IVAR____TtC9SportsKit25SportingEventRunningClock_currentStopValue) = v17;
    return result;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_26B6BCF58(int a1, char a2, double a3)
{
  v4 = v3;
  v26 = a1;
  v7 = sub_26B6E9564();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v25[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v13 = sub_26B6E9164();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v25[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((a2 & 1) == 0)
  {
    swift_beginAccess();
    sub_26B6E9134();
    swift_endAccess();
LABEL_5:
    v19 = -0.0;
    if (v26)
    {
      v19 = a3;
    }

    v20 = v19 + *(v4 + OBJC_IVAR____TtC9SportsKit25SportingEventRunningClock_staticClockValue);
    sub_26B6E9124();
    v21 = OBJC_IVAR____TtC9SportsKit25SportingEventRunningClock_runningClockInterval;
    swift_beginAccess();
    (*(v14 + 40))(v4 + v21, v17, v13);
    swift_endAccess();
    swift_beginAccess();
    sub_26B6E9144();
    v23 = v22;
    v24 = v22;
    result = swift_endAccess();
    if ((*&v24 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v23 > -9.22337204e18)
    {
      if (v23 < 9.22337204e18)
      {
        *(v4 + OBJC_IVAR____TtC9SportsKit25SportingEventRunningClock_currentStopValue) = v23;
        return result;
      }

      goto LABEL_13;
    }

    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  result = sub_26B6E9554();
  if (*(v4 + OBJC_IVAR____TtC9SportsKit25SportingEventRunningClock_staticClockValue) != 0x8000000000000000)
  {
    sub_26B6E94B4();
    (*(v8 + 8))(v12, v7);
    goto LABEL_5;
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_26B6BD278(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v4 || (sub_26B6EA5D4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x726F707075537369 && a2 == 0xEB00000000646574;
    if (v6 || (sub_26B6EA5D4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x69746E756F437369 && a2 == 0xEE006E776F44676ELL;
      if (v7 || (sub_26B6EA5D4() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000013 && 0x800000026B6FD5C0 == a2;
        if (v8 || (sub_26B6EA5D4() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000010 && 0x800000026B6FD5E0 == a2;
          if (v9 || (sub_26B6EA5D4() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000010 && 0x800000026B6FD600 == a2;
            if (v10 || (sub_26B6EA5D4() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000014 && 0x800000026B6FD620 == a2;
              if (v11 || (sub_26B6EA5D4() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0x7365727574616566 && a2 == 0xE800000000000000)
              {

                return 7;
              }

              else
              {
                v13 = sub_26B6EA5D4();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_26B6BD508(char a1)
{
  result = 0x6E6F6973726576;
  switch(a1)
  {
    case 1:
      result = 0x726F707075537369;
      break;
    case 2:
      result = 0x69746E756F437369;
      break;
    case 3:
      result = 0xD000000000000013;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
      result = 0xD000000000000014;
      break;
    case 7:
      result = 0x7365727574616566;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26B6BD618@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26B6BD278(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26B6BD640(uint64_t a1)
{
  v2 = sub_26B6BE320();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B6BD67C(uint64_t a1)
{
  v2 = sub_26B6BE320();

  return MEMORY[0x2821FE720](a1, v2);
}

id sub_26B6BD6B8()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for SportingEventRunningClock()
{
  result = qword_28040B228;
  if (!qword_28040B228)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26B6BD7C0()
{
  result = sub_26B6E9164();
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

uint64_t sub_26B6BD87C(void *a1)
{
  v2 = v1;
  v4 = sub_26B6E9164();
  v5 = OUTLINED_FUNCTION_4(v4);
  v34 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5_0();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B238, &qword_26B6F8658);
  v13 = OUTLINED_FUNCTION_4(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  v19 = &v34 - v18;
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B6BE320();
  sub_26B6EA7C4();
  v21 = *(v2 + OBJC_IVAR____TtC9SportsKit25SportingEventRunningClock_version);
  v37 = 0;
  v22 = v35;
  sub_26B6EA524();
  if (!v22)
  {
    v35 = v11;
    v23 = v34;
    v24 = *(v2 + OBJC_IVAR____TtC9SportsKit25SportingEventRunningClock_isSupported);
    v37 = 1;
    sub_26B6EA504();
    v25 = *(v2 + OBJC_IVAR____TtC9SportsKit25SportingEventRunningClock_isCountingDown);
    OUTLINED_FUNCTION_2_12(2);
    sub_26B6EA504();
    v26 = *(v2 + OBJC_IVAR____TtC9SportsKit25SportingEventRunningClock_isEventClockRunning);
    OUTLINED_FUNCTION_2_12(3);
    sub_26B6EA504();
    v27 = *(v2 + OBJC_IVAR____TtC9SportsKit25SportingEventRunningClock_staticClockValue);
    OUTLINED_FUNCTION_2_12(4);
    sub_26B6EA524();
    v28 = *(v2 + OBJC_IVAR____TtC9SportsKit25SportingEventRunningClock_currentStopValue);
    OUTLINED_FUNCTION_2_12(5);
    sub_26B6EA524();
    v29 = OBJC_IVAR____TtC9SportsKit25SportingEventRunningClock_runningClockInterval;
    swift_beginAccess();
    v30 = v23;
    v31 = *(v23 + 16);
    v32 = v35;
    v31(v35, v2 + v29, v4);
    LOBYTE(v38) = 6;
    sub_26B6BE3C8(&qword_28040B248);
    sub_26B6EA534();
    (*(v30 + 8))(v32, v4);
    v38 = *(v2 + OBJC_IVAR____TtC9SportsKit25SportingEventRunningClock_features);
    v36 = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B250, &unk_26B6F8660);
    sub_26B6BE40C(&qword_28040B258, sub_26B6BE374);
    sub_26B6EA534();
  }

  return (*(v15 + 8))(v19, v12);
}

id sub_26B6BDC88(uint64_t *a1)
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_26B6E9164();
  v38 = OUTLINED_FUNCTION_4(v5);
  v39 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_5_0();
  v11 = v10 - v9;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B268, &qword_26B6F8670);
  v12 = OUTLINED_FUNCTION_4(v36);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v35 - v15;
  v17 = OBJC_IVAR____TtC9SportsKit25SportingEventRunningClock_runningClockInterval;
  v18 = v3;
  sub_26B6E9154();
  v19 = a1[3];
  v20 = a1[4];
  v40 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_26B6BE320();
  v37 = v16;
  sub_26B6EA784();
  if (v2)
  {
    v21 = v38;
    v22 = v17;
    v26 = v39;
    v27 = v18;
    __swift_destroy_boxed_opaque_existential_1(v40);
    (*(v26 + 8))(v18 + v22, v21);
    v28 = *((*MEMORY[0x277D85000] & *v18) + 0x30);
    v29 = *((*MEMORY[0x277D85000] & *v18) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v35 = v11;
    LOBYTE(v43) = 0;
    v23 = sub_26B6EA454();
    v24 = v38;
    v25 = v17;
    *(v18 + OBJC_IVAR____TtC9SportsKit25SportingEventRunningClock_version) = v23;
    OUTLINED_FUNCTION_4_13(1);
    v31 = sub_26B6EA434();
    v32 = v39;
    *(v18 + OBJC_IVAR____TtC9SportsKit25SportingEventRunningClock_isSupported) = v31 & 1;
    OUTLINED_FUNCTION_4_13(2);
    *(v18 + OBJC_IVAR____TtC9SportsKit25SportingEventRunningClock_isCountingDown) = sub_26B6EA434() & 1;
    OUTLINED_FUNCTION_4_13(3);
    OUTLINED_FUNCTION_13_9();
    *(v18 + OBJC_IVAR____TtC9SportsKit25SportingEventRunningClock_isEventClockRunning) = sub_26B6EA434() & 1;
    OUTLINED_FUNCTION_4_13(4);
    OUTLINED_FUNCTION_13_9();
    *(v18 + OBJC_IVAR____TtC9SportsKit25SportingEventRunningClock_staticClockValue) = sub_26B6EA454();
    OUTLINED_FUNCTION_4_13(5);
    OUTLINED_FUNCTION_13_9();
    *(v18 + OBJC_IVAR____TtC9SportsKit25SportingEventRunningClock_currentStopValue) = sub_26B6EA454();
    LOBYTE(v43) = 6;
    sub_26B6BE3C8(&qword_28040B270);
    OUTLINED_FUNCTION_13_9();
    sub_26B6EA464();
    swift_beginAccess();
    (*(v32 + 40))(v18 + v25, v35, v24);
    swift_endAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B250, &unk_26B6F8660);
    v44 = 7;
    sub_26B6BE40C(&qword_28040B278, sub_26B6BE484);
    OUTLINED_FUNCTION_13_9();
    sub_26B6EA464();
    *(v18 + OBJC_IVAR____TtC9SportsKit25SportingEventRunningClock_features) = v43;
    v42.receiver = v18;
    v42.super_class = ObjectType;
    v27 = objc_msgSendSuper2(&v42, sel_init);
    v33 = OUTLINED_FUNCTION_9_9();
    v34(v33);
    __swift_destroy_boxed_opaque_existential_1(v40);
  }

  return v27;
}

id sub_26B6BE164@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_26B6BDC44(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

BOOL sub_26B6BE1B4(uint64_t a1)
{
  swift_getObjectType();
  sub_26B68A2A0(a1, v7);
  if (v8)
  {
    if (swift_dynamicCast())
    {
      if (*(v1 + OBJC_IVAR____TtC9SportsKit25SportingEventRunningClock_isSupported) == v6[OBJC_IVAR____TtC9SportsKit25SportingEventRunningClock_isSupported] && *(v1 + OBJC_IVAR____TtC9SportsKit25SportingEventRunningClock_isCountingDown) == v6[OBJC_IVAR____TtC9SportsKit25SportingEventRunningClock_isCountingDown] && *(v1 + OBJC_IVAR____TtC9SportsKit25SportingEventRunningClock_staticClockValue) == *&v6[OBJC_IVAR____TtC9SportsKit25SportingEventRunningClock_staticClockValue])
      {
        v3 = *(v1 + OBJC_IVAR____TtC9SportsKit25SportingEventRunningClock_version);
        v4 = *&v6[OBJC_IVAR____TtC9SportsKit25SportingEventRunningClock_version];

        return v3 == v4;
      }
    }
  }

  else
  {
    sub_26B68A310(v7);
  }

  return 0;
}

unint64_t sub_26B6BE320()
{
  result = qword_28040B240;
  if (!qword_28040B240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B240);
  }

  return result;
}

unint64_t sub_26B6BE374()
{
  result = qword_28040B260;
  if (!qword_28040B260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B260);
  }

  return result;
}

uint64_t sub_26B6BE3C8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_26B6E9164();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26B6BE40C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040B250, &unk_26B6F8660);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26B6BE484()
{
  result = qword_28040B280;
  if (!qword_28040B280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B280);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SportingEventRunningClock.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_26B6BE5B8()
{
  result = qword_28040B288;
  if (!qword_28040B288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B288);
  }

  return result;
}

unint64_t sub_26B6BE610()
{
  result = qword_28040B290;
  if (!qword_28040B290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B290);
  }

  return result;
}

unint64_t sub_26B6BE668()
{
  result = qword_28040B298;
  if (!qword_28040B298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B298);
  }

  return result;
}

BOOL OUTLINED_FUNCTION_5_12(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_10_10()
{

  JUMPOUT(0x26D67E950);
}

uint64_t OUTLINED_FUNCTION_17_6()
{

  return swift_beginAccess();
}

Swift::OpaquePointer_optional __swiftcall SportingEventCompetitor.contextualShootouts()()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SportsKit23SportingEventCompetitor__metadata);
  if (v1)
  {
    v2 = sub_26B6542CC(*(v0 + OBJC_IVAR____TtC9SportsKit23SportingEventCompetitor__metadata));

    for (i = 0; ; ++i)
    {
      if (v2 == i)
      {

        goto LABEL_14;
      }

      if ((v1 & 0xC000000000000001) != 0)
      {
        v3 = MEMORY[0x26D67DB30](i, v1);
      }

      else
      {
        if (i >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v3 = *(v1 + 8 * i + 32);
      }

      v6 = v3;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v3[OBJC_IVAR____TtC9SportsKit21SportingEventMetadata_metadataType] && v3[OBJC_IVAR____TtC9SportsKit21SportingEventMetadata_metadataType] != 2)
      {

LABEL_17:

        v8 = *&v6[OBJC_IVAR____TtC9SportsKit21SportingEventMetadata_value];
        v9 = *&v6[OBJC_IVAR____TtC9SportsKit21SportingEventMetadata_value + 8];

        static SportingEventCompetitor.ShootoutResult.shootouts(from:)();
        v11 = v10;

        v3 = v11;
        goto LABEL_20;
      }

      v7 = sub_26B6EA5D4();

      if (v7)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_14:
    v3 = 0;
  }

LABEL_20:
  result.value._rawValue = v3;
  result.is_nil = v4;
  return result;
}

id sub_26B6BE9DC(uint64_t a1)
{
  v2 = sub_26B6542CC(a1);
  v3 = 0;
  v4 = a1 & 0xC000000000000001;
  v5 = MEMORY[0x277D84F90];
  while (v2 != v3)
  {
    sub_26B693DF0(v3, v4 == 0, a1);
    if (v4)
    {
      result = MEMORY[0x26D67DB30](v3, a1);
    }

    else
    {
      result = *(a1 + 8 * v3 + 32);
    }

    v7 = result;
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
      return result;
    }

    LOBYTE(v30) = 7;
    sub_26B69D478(&v30);
    v10 = v9;

    ++v3;
    if (v10)
    {
      v11 = *&v10[OBJC_IVAR____TtC9SportsKit33SportingEventCompetitorScoreEntry_value];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = *(v5 + 16);
        OUTLINED_FUNCTION_2_13();
        sub_26B63A8C8();
        v5 = v14;
      }

      v12 = *(v5 + 16);
      if (v12 >= *(v5 + 24) >> 1)
      {
        sub_26B63A8C8();
        v5 = v15;
      }

      *(v5 + 16) = v12 + 1;
      *(v5 + 8 * v12 + 32) = v11;
      v3 = v8;
    }
  }

  if (*(v5 + 16) == 2)
  {
    v16 = 0;
    v17 = 0;
    v18 = MEMORY[0x277D84F90];
    do
    {
      v19 = v16;
      v30 = *(v5 + 32 + 8 * v17);
      v20 = sub_26B6EA564();
      v22 = v21;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = *(v18 + 16);
        OUTLINED_FUNCTION_2_13();
        sub_26B63A80C();
        v18 = v27;
      }

      v24 = *(v18 + 16);
      v23 = *(v18 + 24);
      if (v24 >= v23 >> 1)
      {
        OUTLINED_FUNCTION_4_14(v23);
        sub_26B63A80C();
        v18 = v28;
      }

      *(v18 + 16) = v24 + 1;
      v25 = v18 + 16 * v24;
      *(v25 + 32) = v20;
      *(v25 + 40) = v22;
      v16 = 1;
      v17 = 1;
    }

    while ((v19 & 1) == 0);

    v30 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409BE8, &qword_26B6F00D0);
    sub_26B6BF3F8();
    v29 = sub_26B6E9994();
  }

  else
  {

    return 0;
  }

  return v29;
}

uint64_t SportingEventCompetitor.ShootoutResult.ShootoutResultType.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_26B6EA394();

  v4 = 3;
  if (v2 < 3)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_26B6BECF4@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return SportingEventCompetitor.ShootoutResult.ShootoutResultType.init(rawValue:)(a1);
}

uint64_t sub_26B6BED00@<X0>(uint64_t *a1@<X8>)
{
  result = SportingEventCompetitor.ShootoutResult.ShootoutResultType.rawValue.getter();
  *a1 = result;
  a1[1] = 0xE100000000000000;
  return result;
}

void static SportingEventCompetitor.ShootoutResult.shootouts(from:)()
{
  sub_26B641414();
  v0 = sub_26B6EA024();
  v1 = 0;
  v2 = *(v0 + 16);
  v59 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v1 == v2)
    {

      return;
    }

    if (v1 >= *(v0 + 16))
    {
      break;
    }

    v3 = (v0 + 32 + 16 * v1);
    v4 = *v3;
    v5 = v3[1];
    swift_bridgeObjectRetain_n();
    v6 = sub_26B6E9AF4();
    if (v6)
    {
      v7 = v6;
      if (v6 < 1)
      {
        v8 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B2A0, &qword_26B6F8790);
        v8 = swift_allocObject();
        v9 = _swift_stdlib_malloc_size(v8);
        v8[2] = v7;
        v8[3] = 2 * ((v9 - 32) / 16);
      }

      v10 = 0;
      v11 = 4;
      while (1)
      {
        if ((v7 & ~(v7 >> 63)) == v10)
        {
          __break(1u);
          goto LABEL_96;
        }

        v12 = sub_26B6E9B24();
        if (!v13)
        {
          break;
        }

        v14 = &v8[v11];
        ++v10;
        *v14 = v12;
        v14[1] = v13;
        v11 += 2;
        if (v7 == v10)
        {
          v10 = v7;
          break;
        }
      }

      if (v10 != v7)
      {
        goto LABEL_97;
      }
    }

    else
    {

      v8 = MEMORY[0x277D84F90];
    }

    ++v1;
    if (v8[2] == 2)
    {
      v15 = v8[4];
      v16 = v8[5];
      v17 = HIBYTE(v16) & 0xF;
      v18 = v15 & 0xFFFFFFFFFFFFLL;
      if ((v16 & 0x2000000000000000) != 0)
      {
        v19 = HIBYTE(v16) & 0xF;
      }

      else
      {
        v19 = v15 & 0xFFFFFFFFFFFFLL;
      }

      if (!v19)
      {
        goto LABEL_84;
      }

      if ((v16 & 0x1000000000000000) != 0)
      {
        v38 = v8[5];

        v22 = sub_26B6AD130(v15, v16, 10);
        v40 = v39;

        if ((v40 & 1) == 0)
        {
          goto LABEL_86;
        }

LABEL_84:
      }

      else
      {
        if ((v16 & 0x2000000000000000) != 0)
        {
          if (v8[4] == 43)
          {
            if (!v17)
            {
              goto LABEL_100;
            }

            if (v17 != 1)
            {
              while (1)
              {
                OUTLINED_FUNCTION_1_15();
                if (!v24 & v23)
                {
                  break;
                }

                OUTLINED_FUNCTION_0_14();
                if (!v24)
                {
                  break;
                }

                v22 = v33 + v32;
                if (__OFADD__(v33, v32))
                {
                  break;
                }

                OUTLINED_FUNCTION_138_0();
                if (v24)
                {
                  goto LABEL_83;
                }
              }
            }
          }

          else if (v8[4] == 45)
          {
            if (!v17)
            {
              goto LABEL_99;
            }

            if (v17 != 1)
            {
              while (1)
              {
                OUTLINED_FUNCTION_1_15();
                if (!v24 & v23)
                {
                  break;
                }

                OUTLINED_FUNCTION_0_14();
                if (!v24)
                {
                  break;
                }

                v22 = v29 - v28;
                if (__OFSUB__(v29, v28))
                {
                  break;
                }

                OUTLINED_FUNCTION_138_0();
                if (v24)
                {
                  goto LABEL_83;
                }
              }
            }
          }

          else if (v17)
          {
            while (1)
            {
              OUTLINED_FUNCTION_1_15();
              if (!v24 & v23)
              {
                break;
              }

              OUTLINED_FUNCTION_0_14();
              if (!v24)
              {
                break;
              }

              v22 = v37 + v36;
              if (__OFADD__(v37, v36))
              {
                break;
              }

              OUTLINED_FUNCTION_138_0();
              if (v24)
              {
                goto LABEL_83;
              }
            }
          }
        }

        else
        {
          if ((v15 & 0x1000000000000000) != 0)
          {
            v20 = ((v16 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v47 = v8[4];
            v48 = v8[5];
            v20 = sub_26B6EA1E4();
          }

          v21 = *v20;
          if (v21 == 43)
          {
            if (v18 < 1)
            {
              goto LABEL_101;
            }

            if (v18 != 1)
            {
              v22 = 0;
              if (!v20)
              {
                goto LABEL_73;
              }

              while (1)
              {
                OUTLINED_FUNCTION_1_15();
                if (!v24 & v23)
                {
                  break;
                }

                OUTLINED_FUNCTION_0_14();
                if (!v24)
                {
                  break;
                }

                v22 = v31 + v30;
                if (__OFADD__(v31, v30))
                {
                  break;
                }

                OUTLINED_FUNCTION_138_0();
                if (v24)
                {
                  goto LABEL_83;
                }
              }
            }
          }

          else if (v21 == 45)
          {
            if (v18 < 1)
            {
              goto LABEL_102;
            }

            if (v18 != 1)
            {
              v22 = 0;
              if (!v20)
              {
                goto LABEL_73;
              }

              while (1)
              {
                OUTLINED_FUNCTION_1_15();
                if (!v24 & v23)
                {
                  break;
                }

                OUTLINED_FUNCTION_0_14();
                if (!v24)
                {
                  break;
                }

                v22 = v26 - v25;
                if (__OFSUB__(v26, v25))
                {
                  break;
                }

                OUTLINED_FUNCTION_138_0();
                if (v24)
                {
                  goto LABEL_83;
                }
              }
            }
          }

          else if (v18)
          {
            v22 = 0;
            if (!v20)
            {
LABEL_73:
              v27 = 0;
              goto LABEL_83;
            }

            while (1)
            {
              v34 = *v20 - 48;
              if (v34 > 9)
              {
                break;
              }

              v35 = 10 * v22;
              if ((v22 * 10) >> 64 != (10 * v22) >> 63)
              {
                break;
              }

              v22 = v35 + v34;
              if (__OFADD__(v35, v34))
              {
                break;
              }

              ++v20;
              if (!--v18)
              {
                goto LABEL_73;
              }
            }
          }
        }

        v22 = 0;
        v27 = 1;
LABEL_83:
        if (v27)
        {
          goto LABEL_84;
        }

LABEL_86:
        if (v8[2] < 2uLL)
        {
          goto LABEL_98;
        }

        v41 = v8[6];
        v42 = v8[7];

        v43 = sub_26B6EA394();

        if (v43 < 3)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v49 = *(v59 + 16);
            v50 = OUTLINED_FUNCTION_2_13();
            sub_26B63AAD4(v50, v51, v52, v53);
            v59 = v54;
          }

          v45 = *(v59 + 16);
          v44 = *(v59 + 24);
          if (v45 >= v44 >> 1)
          {
            v55 = OUTLINED_FUNCTION_4_14(v44);
            sub_26B63AAD4(v55, v56, v57, v59);
            v59 = v58;
          }

          *(v59 + 16) = v45 + 1;
          v46 = v59 + 16 * v45;
          *(v46 + 32) = v22;
          *(v46 + 40) = v43;
        }
      }
    }

    else
    {
    }
  }

LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);
LABEL_100:
  __break(1u);
LABEL_101:
  __break(1u);
LABEL_102:
  __break(1u);
}

uint64_t static SportingEventCompetitor.ShootoutResult.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    return sub_26B647388(*(a1 + 8), *(a2 + 8));
  }

  else
  {
    return 0;
  }
}

unint64_t sub_26B6BF238()
{
  result = qword_28040B2A8;
  if (!qword_28040B2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B2A8);
  }

  return result;
}

uint64_t _s14ShootoutResultVwet(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 9))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 8);
      v4 = v3 >= 3;
      v2 = v3 - 3;
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

uint64_t _s14ShootoutResultVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

_BYTE *_s14ShootoutResultV18ShootoutResultTypeOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_26B6BF3F8()
{
  result = qword_2810CC2A8;
  if (!qword_2810CC2A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280409BE8, &qword_26B6F00D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CC2A8);
  }

  return result;
}

uint64_t SportingEventCompetitorContainer.BaseballScores.strikes.getter()
{
  result = *(v0 + 48);
  v2 = *(v0 + 56);
  return result;
}

uint64_t SportingEventCompetitorContainer.BaseballScores.outs.getter()
{
  result = *(v0 + 64);
  v2 = *(v0 + 72);
  return result;
}

uint64_t SportingEventCompetitorContainer.BaseballScores.hits.getter()
{
  result = *(v0 + 80);
  v2 = *(v0 + 88);
  return result;
}

uint64_t SportingEventCompetitorContainer.BaseballScores.errors.getter()
{
  result = *(v0 + 96);
  v2 = *(v0 + 104);
  return result;
}

uint64_t SportingEventCompetitorContainer.BaseballScores.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = v0[2];
  v4 = *(v0 + 24);
  v5 = v0[4];
  v6 = *(v0 + 40);
  v7 = v0[6];
  v8 = *(v0 + 56);
  v12 = v0[8];
  v11 = *(v0 + 72);
  v14 = v0[10];
  v13 = *(v0 + 88);
  sub_26B6EA134();
  MEMORY[0x26D67D4D0](0x3D65726F6353, 0xE600000000000000);
  sub_26B6EA564();
  OUTLINED_FUNCTION_21_4();

  OUTLINED_FUNCTION_17_7();
  OUTLINED_FUNCTION_4_15();
  OUTLINED_FUNCTION_21_4();

  MEMORY[0x26D67D4D0](0x3D736C6C6142202CLL, 0xE800000000000000);
  OUTLINED_FUNCTION_4_15();
  OUTLINED_FUNCTION_21_4();

  MEMORY[0x26D67D4D0](0x656B69727453202CLL, 0xEA00000000003D73);
  OUTLINED_FUNCTION_4_15();
  OUTLINED_FUNCTION_21_4();

  OUTLINED_FUNCTION_17_7();
  OUTLINED_FUNCTION_4_15();
  OUTLINED_FUNCTION_21_4();

  OUTLINED_FUNCTION_17_7();
  v9 = OUTLINED_FUNCTION_4_15();
  MEMORY[0x26D67D4D0](v9);

  return 0;
}

void SportingEventCompetitorContainer.baseballScores.getter(uint64_t a1@<X8>)
{
  v124 = OBJC_IVAR____TtC9SportsKit28SportingEventCompetitorScore_scoreEntries;
  v129 = *(v1 + OBJC_IVAR____TtC9SportsKit32SportingEventCompetitorContainer_score);
  v3 = *(v129 + OBJC_IVAR____TtC9SportsKit28SportingEventCompetitorScore_scoreEntries);
  v4 = sub_26B6542CC(v3);
  v5 = v3 & 0xFFFFFFFFFFFFFF8;

  for (i = 0; v4 != i; ++i)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x26D67DB30](i, v3);
    }

    else
    {
      if (i >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_108;
      }

      v7 = *(v3 + 8 * i + 32);
    }

    v8 = v7;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_108:
      __break(1u);
LABEL_109:
      __break(1u);
LABEL_110:
      __break(1u);
LABEL_111:
      __break(1u);
LABEL_112:
      __break(1u);
LABEL_113:
      __break(1u);
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
      return;
    }

    v10 = OUTLINED_FUNCTION_8_8(*&v7[OBJC_IVAR____TtC9SportsKit33SportingEventCompetitorScoreEntry_statisticType]) == 0x65726F6353 && v9 == 0xE500000000000000;
    if (v10 || (sub_26B6EA5D4() & 1) != 0)
    {

      v115 = *&v8[OBJC_IVAR____TtC9SportsKit33SportingEventCompetitorScoreEntry_value];

      goto LABEL_16;
    }
  }

  v115 = 0;
LABEL_16:
  v138 = OUTLINED_FUNCTION_10_11(v11, v12, v13, v14, v15, v16, v17, v18, v78, v82, v87, v92, v97, v102, v107, v111, v115, a1, v124, v129);
  OUTLINED_FUNCTION_9_10();
  for (j = 0; ; ++j)
  {
    v139 = j;
    if (v138 == j)
    {
      break;
    }

    if (v5)
    {
      v20 = MEMORY[0x26D67DB30](j, 0x65726F6353);
    }

    else
    {
      if (j >= MEMORY[0xE500000000000010])
      {
        goto LABEL_110;
      }

      v20 = *(8 * j + 0x65726F6373);
    }

    v21 = v20;
    if (__OFADD__(j, 1))
    {
      goto LABEL_109;
    }

    v23 = OUTLINED_FUNCTION_8_8(*&v20[OBJC_IVAR____TtC9SportsKit33SportingEventCompetitorScoreEntry_statisticType]) == 1936618834 && v22 == 0xE400000000000000;
    if (v23 || (sub_26B6EA5D4() & 1) != 0)
    {

      v24 = *&v21[OBJC_IVAR____TtC9SportsKit33SportingEventCompetitorScoreEntry_value];

      goto LABEL_31;
    }
  }

  v24 = 0;
LABEL_31:
  v137 = OUTLINED_FUNCTION_10_11(v25, v26, v27, v28, v29, v30, v31, v32, v79, v83, v88, v93, v98, v103, v108, v112, v116, v120, v125, v130);
  OUTLINED_FUNCTION_9_10();
  for (k = 0; v137 != k; ++k)
  {
    if (v5)
    {
      v34 = MEMORY[0x26D67DB30](k, 0x65726F6353);
    }

    else
    {
      if (k >= MEMORY[0xE500000000000010])
      {
        goto LABEL_112;
      }

      v34 = *(8 * k + 0x65726F6373);
    }

    v35 = v34;
    if (__OFADD__(k, 1))
    {
      goto LABEL_111;
    }

    v37 = OUTLINED_FUNCTION_8_8(*&v34[OBJC_IVAR____TtC9SportsKit33SportingEventCompetitorScoreEntry_statisticType]) == 0x736C6C6142 && v36 == 0xE500000000000000;
    if (v37 || (sub_26B6EA5D4() & 1) != 0)
    {

      v104 = *&v35[OBJC_IVAR____TtC9SportsKit33SportingEventCompetitorScoreEntry_value];

      goto LABEL_46;
    }
  }

  v104 = 0;
LABEL_46:
  v136 = OUTLINED_FUNCTION_10_11(v38, v39, v40, v41, v42, v43, v44, v45, v80, v84, v89, v94, v99, v104, v109, i, v117, v121, v126, v131);
  OUTLINED_FUNCTION_9_10();
  for (m = 0; v136 != m; ++m)
  {
    if (v5)
    {
      v47 = MEMORY[0x26D67DB30](m, 0x65726F6353);
    }

    else
    {
      if (m >= MEMORY[0xE500000000000010])
      {
        goto LABEL_114;
      }

      v47 = *(8 * m + 0x65726F6373);
    }

    v48 = v47;
    if (__OFADD__(m, 1))
    {
      goto LABEL_113;
    }

    v50 = OUTLINED_FUNCTION_8_8(*&v47[OBJC_IVAR____TtC9SportsKit33SportingEventCompetitorScoreEntry_statisticType]) == 0x73656B69727453 && v49 == 0xE700000000000000;
    if (v50 || (sub_26B6EA5D4() & 1) != 0)
    {

      v95 = *&v48[OBJC_IVAR____TtC9SportsKit33SportingEventCompetitorScoreEntry_value];

      goto LABEL_61;
    }
  }

  v95 = 0;
LABEL_61:
  v135 = OUTLINED_FUNCTION_10_11(v51, v52, v53, v54, v55, v56, v57, v58, v81, v85, v90, v95, v100, v105, v4, v113, v118, v122, v127, v132);
  OUTLINED_FUNCTION_9_10();
  v59 = 0;
  v101 = v24;
  while (v135 != v59)
  {
    if (v5)
    {
      v60 = MEMORY[0x26D67DB30](v59, 0x65726F6353);
    }

    else
    {
      if (v59 >= MEMORY[0xE500000000000010])
      {
        goto LABEL_116;
      }

      v60 = *(8 * v59 + 0x65726F6373);
    }

    v61 = v60;
    if (__OFADD__(v59, 1))
    {
      goto LABEL_115;
    }

    v63 = OUTLINED_FUNCTION_8_8(*&v60[OBJC_IVAR____TtC9SportsKit33SportingEventCompetitorScoreEntry_statisticType]) == 1937012047 && v62 == 0xE400000000000000;
    if (v63 || (sub_26B6EA5D4() & 1) != 0)
    {

      v91 = *&v61[OBJC_IVAR____TtC9SportsKit33SportingEventCompetitorScoreEntry_value];

      goto LABEL_76;
    }

    ++v59;
  }

  v91 = 0;
LABEL_76:
  v64 = *(v133 + v128);
  v134 = sub_26B6542CC(v64);

  for (n = 0; v134 != n; ++n)
  {
    if ((v64 & 0xC000000000000001) != 0)
    {
      v66 = MEMORY[0x26D67DB30](n, v64);
    }

    else
    {
      if (n >= *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_118;
      }

      v66 = *(v64 + 8 * n + 32);
    }

    v67 = v66;
    if (__OFADD__(n, 1))
    {
      goto LABEL_117;
    }

    v69 = OUTLINED_FUNCTION_8_8(*&v66[OBJC_IVAR____TtC9SportsKit33SportingEventCompetitorScoreEntry_statisticType]) == 1937008968 && v68 == 0xE400000000000000;
    if (v69 || (sub_26B6EA5D4() & 1) != 0)
    {

      v86 = *&v67[OBJC_IVAR____TtC9SportsKit33SportingEventCompetitorScoreEntry_value];

      goto LABEL_91;
    }
  }

  v86 = 0;
LABEL_91:
  v70 = *(v133 + v128);
  v71 = sub_26B6542CC(v70);

  for (ii = 0; v71 != ii; ++ii)
  {
    if ((v70 & 0xC000000000000001) != 0)
    {
      v73 = MEMORY[0x26D67DB30](ii, v70);
    }

    else
    {
      if (ii >= *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_120;
      }

      v73 = *(v70 + 8 * ii + 32);
    }

    v74 = v73;
    if (__OFADD__(ii, 1))
    {
      goto LABEL_119;
    }

    v76 = OUTLINED_FUNCTION_8_8(*&v73[OBJC_IVAR____TtC9SportsKit33SportingEventCompetitorScoreEntry_statisticType]) == 0x73726F727245 && v75 == 0xE600000000000000;
    if (v76 || (sub_26B6EA5D4() & 1) != 0)
    {

      v77 = *&v74[OBJC_IVAR____TtC9SportsKit33SportingEventCompetitorScoreEntry_value];

      goto LABEL_106;
    }
  }

  v77 = 0;
LABEL_106:
  *v123 = v119;
  *(v123 + 8) = v110 == v114;
  *(v123 + 16) = v101;
  *(v123 + 24) = v138 == v139;
  *(v123 + 32) = v106;
  *(v123 + 40) = v137 == k;
  *(v123 + 48) = v96;
  *(v123 + 56) = v136 == m;
  *(v123 + 64) = v91;
  *(v123 + 72) = v135 == v59;
  *(v123 + 80) = v86;
  *(v123 + 88) = v134 == n;
  *(v123 + 96) = v77;
  *(v123 + 104) = v71 == ii;
}

void SportingEventCompetitorContainer.BaseballScoreEntries.totalScore.getter(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 4);
  OUTLINED_FUNCTION_0_15(a1);
}

void SportingEventCompetitorContainer.BaseballScoreEntries.runs.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  OUTLINED_FUNCTION_0_15(a1);
}

void SportingEventCompetitorContainer.BaseballScoreEntries.balls.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  OUTLINED_FUNCTION_0_15(a1);
}

void SportingEventCompetitorContainer.BaseballScoreEntries.strikes.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  OUTLINED_FUNCTION_0_15(a1);
}

void SportingEventCompetitorContainer.BaseballScoreEntries.outs.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  v3 = *(v1 + 72);
  OUTLINED_FUNCTION_0_15(a1);
}

void SportingEventCompetitorContainer.BaseballScoreEntries.hits.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  v3 = *(v1 + 88);
  OUTLINED_FUNCTION_0_15(a1);
}

void SportingEventCompetitorContainer.BaseballScoreEntries.errors.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 96);
  v3 = *(v1 + 104);
  OUTLINED_FUNCTION_0_15(a1);
}

void SportingEventCompetitorContainer.baseballScoreEntries.getter(uint64_t a1@<X8>)
{
  LOBYTE(v27) = 0;
  sub_26B6C002C(&v27, &v29);
  v15 = v29;
  v14 = v30;
  LOBYTE(v25) = 1;
  sub_26B6C002C(&v25, &v27);
  v13 = v27;
  v12 = v28;
  LOBYTE(v23) = 5;
  sub_26B6C002C(&v23, &v25);
  v2 = v25;
  v3 = v26;
  LOBYTE(v21) = 4;
  sub_26B6C002C(&v21, &v23);
  v4 = v23;
  v5 = v24;
  LOBYTE(v19) = 6;
  sub_26B6C002C(&v19, &v21);
  v6 = v21;
  v7 = v22;
  LOBYTE(v17) = 2;
  sub_26B6C002C(&v17, &v19);
  v8 = v19;
  v9 = v20;
  v16 = 3;
  sub_26B6C002C(&v16, &v17);
  v10 = v17;
  v11 = v18;
  *a1 = v15;
  *(a1 + 8) = v14;
  *(a1 + 16) = v13;
  *(a1 + 24) = v12;
  *(a1 + 32) = v2;
  *(a1 + 40) = v3;
  *(a1 + 48) = v4;
  *(a1 + 56) = v5;
  *(a1 + 64) = v6;
  *(a1 + 72) = v7;
  *(a1 + 80) = v8;
  *(a1 + 88) = v9;
  *(a1 + 96) = v10;
  *(a1 + 104) = v11;
}

void sub_26B6C002C(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(*(v2 + OBJC_IVAR____TtC9SportsKit32SportingEventCompetitorContainer_score) + OBJC_IVAR____TtC9SportsKit28SportingEventCompetitorScore_scoreEntries);
  v5 = sub_26B6542CC(v4);

  for (i = 0; ; ++i)
  {
    if (v5 == i)
    {

      v16 = 0;
      v17 = 768;
      goto LABEL_27;
    }

    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x26D67DB30](i, v4);
    }

    else
    {
      if (i >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_29;
      }

      v7 = *(v4 + 8 * i + 32);
    }

    v8 = v7;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v9 = OBJC_IVAR____TtC9SportsKit33SportingEventCompetitorScoreEntry_statisticType;
    v10 = (*&v7[OBJC_IVAR____TtC9SportsKit33SportingEventCompetitorScoreEntry_statisticType] + OBJC_IVAR____TtC9SportsKit41SportingEventCompetitorScoreStatisticType_name);
    v11 = 0xE500000000000000;
    v12 = 0x65726F6353;
    switch(v3)
    {
      case 1:
        v11 = 0xE400000000000000;
        v12 = 1936618834;
        break;
      case 2:
        v11 = 0xE400000000000000;
        v12 = 1937008968;
        break;
      case 3:
        v11 = 0xE600000000000000;
        v12 = 0x73726F727245;
        break;
      case 4:
        v11 = 0xE700000000000000;
        v12 = 0x73656B69727453;
        break;
      case 5:
        v13 = 1819042114;
        goto LABEL_16;
      case 6:
        v12 = 1937012047;
        v11 = 0xE400000000000000;
        break;
      case 7:
        v11 = 0xE800000000000000;
        v12 = 0x74756F746F6F6853;
        break;
      case 8:
        v13 = 1818324807;
LABEL_16:
        v12 = v13 & 0xFFFF0000FFFFFFFFLL | 0x7300000000;
        break;
      default:
        break;
    }

    if (*v10 == v12 && v10[1] == v11)
    {

LABEL_26:

      v16 = *&v8[OBJC_IVAR____TtC9SportsKit33SportingEventCompetitorScoreEntry_value];
      v18 = *&v8[v9];

      v19 = v18[OBJC_IVAR____TtC9SportsKit41SportingEventCompetitorScoreStatisticType__isUpdated];
      v17 = v19 << 8;
LABEL_27:
      *a2 = v16;
      *(a2 + 8) = v17;
      return;
    }

    v15 = sub_26B6EA5D4();

    if (v15)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
}

uint64_t SportingEventPlay.BaseballPlay.Runner.displayName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_22_0();
}

uint64_t SportingEventPlay.BaseballPlay.Runner.description.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  OUTLINED_FUNCTION_13_10();
  sub_26B6EA134();

  MEMORY[0x26D67D4D0](0x697472617453202CLL, 0xEF3D65736142676ELL);
  v5 = OUTLINED_FUNCTION_11_10();
  MEMORY[0x26D67D4D0](v5);

  MEMORY[0x26D67D4D0](0x676E69646E45202CLL, 0xED00003D65736142);
  v6 = OUTLINED_FUNCTION_11_10();
  MEMORY[0x26D67D4D0](v6);

  return v2;
}

uint64_t SportingEventPlay.BaseballPlay.Hitter.displayName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_22_0();
}

uint64_t SportingEventPlay.BaseballPlay.Hitter.description.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 24);
  v5 = v0[4];
  v6 = *(v0 + 40);
  OUTLINED_FUNCTION_13_10();
  sub_26B6EA134();

  MEMORY[0x26D67D4D0](0x3D73746948202CLL, 0xE700000000000000);
  v7 = OUTLINED_FUNCTION_11_10();
  MEMORY[0x26D67D4D0](v7);

  MEMORY[0x26D67D4D0](0x737461427441202CLL, 0xE90000000000003DLL);
  v8 = OUTLINED_FUNCTION_11_10();
  MEMORY[0x26D67D4D0](v8);

  return v2;
}

uint64_t SportingEventPlay.BaseballPlay.Pitcher.displayName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_22_0();
}

uint64_t SportingEventPlay.BaseballPlay.Pitcher.description.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 24);
  OUTLINED_FUNCTION_13_10();
  sub_26B6EA134();

  MEMORY[0x26D67D4D0](0x3A6863746950202CLL, 0xEE003D6C61746F54);
  v5 = sub_26B6EA564();
  MEMORY[0x26D67D4D0](v5);

  return v2;
}

uint64_t SportingEventPlay.BaseballPlay.PitchIndexIndicatorType.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_26B6EA394();

  v4 = 3;
  if (v2 < 3)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

uint64_t SportingEventPlay.BaseballPlay.PitchIndexIndicatorType.rawValue.getter()
{
  v1 = 0x65757161704FLL;
  if (*v0 != 1)
  {
    v1 = 0x656E696C74754FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6574696857;
  }
}

uint64_t sub_26B6C06D8@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return SportingEventPlay.BaseballPlay.PitchIndexIndicatorType.init(rawValue:)(a1);
}

uint64_t sub_26B6C06E4@<X0>(uint64_t *a1@<X8>)
{
  result = SportingEventPlay.BaseballPlay.PitchIndexIndicatorType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t SportingEventPlay.BaseballPlay.pitcher.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 8);
  *(a1 + 8) = *(v1 + 16);
  *(a1 + 24) = v2;
  return OUTLINED_FUNCTION_7_13();
}

uint64_t SportingEventPlay.BaseballPlay.hitter.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  *a1 = *(v1 + 40);
  v3 = *(v1 + 64);
  *(a1 + 8) = *(v1 + 48);
  *(a1 + 24) = v3;
  *(a1 + 40) = v2;
  return OUTLINED_FUNCTION_7_13();
}

uint64_t SportingEventPlay.BaseballPlay.title.getter()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);

  return OUTLINED_FUNCTION_22_0();
}

uint64_t SportingEventPlay.BaseballPlay.subtitle.getter()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);

  return OUTLINED_FUNCTION_22_0();
}

uint64_t SportingEventPlay.BaseballPlay.pitchIndex.getter()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);

  return OUTLINED_FUNCTION_22_0();
}

uint64_t SportingEventPlay.BaseballPlay.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v5 = v0[5];
  v4 = v0[6];

  sub_26B6EA134();

  if (v3)
  {
    v6 = v2;
  }

  else
  {
    v6 = 0;
  }

  if (!v3)
  {
    v3 = 0xE000000000000000;
  }

  MEMORY[0x26D67D4D0](v6, v3);

  MEMORY[0x26D67D4D0](0x726574746948202CLL, 0xE90000000000003DLL);
  if (v4)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  if (v4)
  {
    v8 = v4;
  }

  else
  {
    v8 = 0xE000000000000000;
  }

  MEMORY[0x26D67D4D0](v7, v8);

  MEMORY[0x26D67D4D0](0x72656E6E7552202CLL, 0xEA00000000003D73);
  v9 = MEMORY[0x26D67D610](v1, &type metadata for SportingEventPlay.BaseballPlay.Runner);
  MEMORY[0x26D67D4D0](v9);

  return 0x3D72656863746950;
}

void SportingEventPlay.baseballPlay.getter(uint64_t a1@<X8>)
{
  v4 = *(v2 + OBJC_IVAR____TtC9SportsKit17SportingEventPlay__participants);
  if (!v4)
  {
    OUTLINED_FUNCTION_22_8();
    v87 = 0;
LABEL_75:
    OUTLINED_FUNCTION_15_8();
    v52 = 0;
    goto LABEL_79;
  }

  v83 = OBJC_IVAR____TtC9SportsKit17SportingEventPlay__participants;
  v88 = MEMORY[0x277D84F90];
  v5 = sub_26B6542CC(v4);
  v3 = v4 & 0xC000000000000001;

  v6 = 0;
  LOBYTE(v1) = 0;
  while (v5 != v6)
  {
    if (v3)
    {
      v7 = MEMORY[0x26D67DB30](v6, v4);
    }

    else
    {
      if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_161;
      }

      v7 = *(v4 + 8 * v6 + 32);
    }

    v8 = v7;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_161:
      __break(1u);
LABEL_162:
      __break(1u);
LABEL_163:
      __break(1u);
LABEL_164:
      __break(1u);
LABEL_165:
      __break(1u);
      goto LABEL_166;
    }

    v9 = &v7[OBJC_IVAR____TtC9SportsKit24SportingEventParticipant__position];
    v2 = *&v7[OBJC_IVAR____TtC9SportsKit24SportingEventParticipant__position + 8];
    if (v2 && ((v10 = *v9, *v9 == 0x72656E6E7552) ? (v11 = v2 == 0xE600000000000000) : (v11 = 0), v11 || ((v12 = *v9, v13 = *&v8[OBJC_IVAR____TtC9SportsKit24SportingEventParticipant__position + 8], v14 = sub_26B6EA5D4(), v10 == 0x726574746948) ? (v15 = v2 == 0xE600000000000000) : (v15 = 0), !v15 ? (v16 = 0) : (v16 = 1), (v14 & 1) != 0 || (v16 & 1) != 0 || (OUTLINED_FUNCTION_18_9() & 1) != 0)))
    {
      v2 = &v88;
      sub_26B6EA1F4();
      v17 = v88[2];
      sub_26B6EA224();
      sub_26B6EA234();
      sub_26B6EA204();
    }

    else
    {
    }

    ++v6;
  }

  v18 = v88;
  v19 = sub_26B6542CC(v88);
  v20 = 0;
  v87 = MEMORY[0x277D84F90];
  while (v19 != v20)
  {
    if ((v18 & 0xC000000000000001) != 0)
    {
      v21 = MEMORY[0x26D67DB30](v20, v18);
    }

    else
    {
      if (v20 >= v18[2])
      {
        goto LABEL_163;
      }

      v21 = v18[v20 + 4];
    }

    v22 = v21;
    if (__OFADD__(v20, 1))
    {
      goto LABEL_162;
    }

    v94[0] = v21;
    sub_26B6C145C(v94, &v88);

    v1 = v89;
    if (v89)
    {
      v2 = v88;
      v23 = v90;
      v3 = v91;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = *(v87 + 16);
        sub_26B63ABE0();
        v87 = v27;
      }

      v24 = *(v87 + 16);
      if (v24 >= *(v87 + 24) >> 1)
      {
        sub_26B63ABE0();
        v87 = v28;
      }

      *(v87 + 16) = v24 + 1;
      v25 = (v87 + 32 * v24);
      v25[4] = v2;
      v25[5] = v1;
      v25[6] = v23;
      v25[7] = v3;
    }

    else
    {
    }

    ++v20;
  }

  v29 = *(v85 + v83);
  if (!v29)
  {
    OUTLINED_FUNCTION_22_8();
    goto LABEL_75;
  }

  v30 = sub_26B6542CC(*(v85 + v83));
  v1 = v29 & 0xC000000000000001;

  for (i = 0; v30 != i; ++i)
  {
    if (v1)
    {
      v32 = MEMORY[0x26D67DB30](i, v29);
    }

    else
    {
      if (i >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_169;
      }

      v32 = *(v29 + 8 * i + 32);
    }

    v33 = v32;
    if (__OFADD__(i, 1))
    {
      goto LABEL_168;
    }

    v34 = *&v32[OBJC_IVAR____TtC9SportsKit24SportingEventParticipant__position + 8];
    if (v34)
    {
      v35 = *&v32[OBJC_IVAR____TtC9SportsKit24SportingEventParticipant__position] == 0x72656863746950 && v34 == 0xE700000000000000;
      if (v35 || (sub_26B6EA5D4() & 1) != 0)
      {

        v94[0] = v33;
        sub_26B6C1A24(v94, &v88);

        v36 = v88;
        v2 = v89;
        v3 = v90;
        v37 = v91;
        goto LABEL_60;
      }
    }
  }

  v36 = 0;
  v2 = 0;
  v3 = 0;
  v37 = 0;
LABEL_60:
  v38 = *(v85 + v83);
  if (!v38)
  {
    goto LABEL_75;
  }

  v80 = v36;
  v81 = v37;
  v39 = sub_26B6542CC(v38);
  v1 = v38 & 0xC000000000000001;

  for (j = 0; v39 != j; ++j)
  {
    if (v1)
    {
      v41 = MEMORY[0x26D67DB30](j, v38);
    }

    else
    {
      if (j >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_173;
      }

      v41 = *(v38 + 8 * j + 32);
    }

    v42 = v41;
    if (__OFADD__(j, 1))
    {
      goto LABEL_172;
    }

    v43 = *&v41[OBJC_IVAR____TtC9SportsKit24SportingEventParticipant__position + 8];
    if (v43)
    {
      v44 = *&v41[OBJC_IVAR____TtC9SportsKit24SportingEventParticipant__position] == 0x726574746948 && v43 == 0xE600000000000000;
      if (v44 || (OUTLINED_FUNCTION_18_9() & 1) != 0)
      {

        v94[0] = v42;
        sub_26B6C1C34(v94, &v88);

        v47 = v88;
        v48 = v89;
        v49 = v90;
        v50 = v91;
        v51 = v92;
        v52 = v93;
        goto LABEL_78;
      }
    }
  }

  OUTLINED_FUNCTION_15_8();
  v52 = 0;
LABEL_78:
  v45 = v81;
  v46 = v80;
LABEL_79:
  v84 = OBJC_IVAR____TtC9SportsKit17SportingEventPlay__playDescriptors;
  v53 = *(v85 + OBJC_IVAR____TtC9SportsKit17SportingEventPlay__playDescriptors);
  if (!v53)
  {
    v59 = 0;
    v60 = 0;
    v61 = 0;
    v62 = 0;
    v63 = 0;
    v64 = 3;
    goto LABEL_157;
  }

  v79 = v52;
  v3 = sub_26B6542CC(v53);
  v54 = v53 & 0xC000000000000001;
  v55 = v53 & 0xFFFFFFFFFFFFFF8;

  v56 = 0;
  while (2)
  {
    v2 = &qword_28040A000;
    if (v3 == v56)
    {

LABEL_100:
      v67 = 3;
      goto LABEL_101;
    }

    if (v54)
    {
      v57 = MEMORY[0x26D67DB30](v56, v53);
    }

    else
    {
      if (v56 >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_165;
      }

      v57 = *(v53 + 8 * v56 + 32);
    }

    v58 = v57;
    if (__OFADD__(v56, 1))
    {
      goto LABEL_164;
    }

    switch(v57[OBJC_IVAR____TtC9SportsKit27SportingEventPlayDescriptor__type])
    {
      case 1:
        OUTLINED_FUNCTION_16_10();
        goto LABEL_90;
      case 2:
        OUTLINED_FUNCTION_3_14();
        goto LABEL_90;
      case 3:

        goto LABEL_96;
      case 4:
        OUTLINED_FUNCTION_1_16();
        goto LABEL_90;
      case 5:
        goto LABEL_91;
      default:
LABEL_90:
        sub_26B6EA5D4();
        OUTLINED_FUNCTION_24_4();

        if ((v1 & 1) == 0)
        {
LABEL_91:

          ++v56;
          continue;
        }

LABEL_96:

        v2 = &qword_28040A000;
        v66 = *&v58[OBJC_IVAR____TtC9SportsKit27SportingEventPlayDescriptor__value];
        v65 = *&v58[OBJC_IVAR____TtC9SportsKit27SportingEventPlayDescriptor__value + 8];

        if (!v65)
        {
          goto LABEL_100;
        }

        v1 = sub_26B6EA394();

        if (v1 >= 3)
        {
          v67 = 3;
        }

        else
        {
          v67 = v1;
        }

LABEL_101:
        v53 = *(v85 + v84);
        if (!v53)
        {
          v59 = 0;
          v60 = 0;
          v61 = 0;
          v62 = 0;
          v63 = 0;
          OUTLINED_FUNCTION_2_14();
          v52 = v79;
          goto LABEL_157;
        }

        v78 = v67;
        sub_26B6542CC(v53);
        OUTLINED_FUNCTION_23_7();
        v3 = 0;
        while (2)
        {
          if (v56 != v3)
          {
            if (v54)
            {
              v68 = MEMORY[0x26D67DB30](v3, v53);
              goto LABEL_107;
            }

            if (v3 < *(v55 + 16))
            {
              v68 = *(v53 + 8 * v3 + 32);
LABEL_107:
              v69 = v68;
              if (!__OFADD__(v3, 1))
              {
                switch(v68[OBJC_IVAR____TtC9SportsKit27SportingEventPlayDescriptor__type])
                {
                  case 1:
                    goto LABEL_112;
                  case 2:
                    OUTLINED_FUNCTION_3_14();
                    goto LABEL_112;
                  case 3:
                    OUTLINED_FUNCTION_14_11();
                    goto LABEL_112;
                  case 4:
                    OUTLINED_FUNCTION_1_16();
LABEL_112:
                    sub_26B6EA5D4();
                    OUTLINED_FUNCTION_24_4();

                    if ((v1 & 1) == 0)
                    {
                      goto LABEL_113;
                    }

                    goto LABEL_118;
                  case 5:
LABEL_113:

                    ++v3;
                    continue;
                  default:

LABEL_118:

                    v60 = *&v69[OBJC_IVAR____TtC9SportsKit27SportingEventPlayDescriptor__value];
                    v61 = *&v69[OBJC_IVAR____TtC9SportsKit27SportingEventPlayDescriptor__value + 8];

                    goto LABEL_119;
                }
              }

LABEL_166:
              __break(1u);
            }

            __break(1u);
LABEL_168:
            __break(1u);
LABEL_169:
            __break(1u);
LABEL_170:
            __break(1u);
LABEL_171:
            __break(1u);
LABEL_172:
            __break(1u);
LABEL_173:
            __break(1u);
LABEL_174:
            __break(1u);
LABEL_175:
            __break(1u);
            return;
          }

          break;
        }

        v60 = 0;
        v61 = 0;
LABEL_119:
        v53 = *(v85 + v84);
        if (!v53)
        {
          v59 = 0;
          goto LABEL_151;
        }

        v77 = v61;
        sub_26B6542CC(v53);
        OUTLINED_FUNCTION_23_7();
        v3 = 0;
        while (2)
        {
          if (v61 == v3)
          {

            v59 = 0;
            v53 = 0;
            goto LABEL_137;
          }

          if (v54)
          {
            v70 = MEMORY[0x26D67DB30](v3, v53);
          }

          else
          {
            if (v3 >= *(v55 + 16))
            {
              goto LABEL_171;
            }

            v70 = *(v53 + 8 * v3 + 32);
          }

          v71 = v70;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_170;
          }

          switch(v70[OBJC_IVAR____TtC9SportsKit27SportingEventPlayDescriptor__type])
          {
            case 1:

              goto LABEL_136;
            case 2:
              OUTLINED_FUNCTION_3_14();
              goto LABEL_130;
            case 3:
              OUTLINED_FUNCTION_14_11();
              goto LABEL_130;
            case 4:
              OUTLINED_FUNCTION_1_16();
              goto LABEL_130;
            case 5:
              goto LABEL_131;
            default:
LABEL_130:
              sub_26B6EA5D4();
              OUTLINED_FUNCTION_24_4();

              if ((v1 & 1) == 0)
              {
LABEL_131:

                ++v3;
                continue;
              }

LABEL_136:

              v59 = *&v71[OBJC_IVAR____TtC9SportsKit27SportingEventPlayDescriptor__value];
              v53 = *&v71[OBJC_IVAR____TtC9SportsKit27SportingEventPlayDescriptor__value + 8];

LABEL_137:
              v72 = *(v85 + v84);
              if (!v72)
              {
LABEL_151:
                v62 = 0;
                v63 = 0;
                OUTLINED_FUNCTION_2_14();
                v52 = v79;
                v64 = v78;
                goto LABEL_157;
              }

              v86 = v53;
              v73 = sub_26B6542CC(v72);

              v3 = 0;
              while (2)
              {
                if (v73 == v3)
                {

                  v62 = 0;
                  v63 = 0;
                  goto LABEL_156;
                }

                if ((v72 & 0xC000000000000001) != 0)
                {
                  v74 = MEMORY[0x26D67DB30](v3, v72);
                }

                else
                {
                  if (v3 >= *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_175;
                  }

                  v74 = *(v72 + 8 * v3 + 32);
                }

                v75 = v74;
                if (__OFADD__(v3, 1))
                {
                  goto LABEL_174;
                }

                switch(v74[OBJC_IVAR____TtC9SportsKit27SportingEventPlayDescriptor__type])
                {
                  case 1:
                    OUTLINED_FUNCTION_16_10();
                    goto LABEL_148;
                  case 2:

                    goto LABEL_155;
                  case 3:
                    OUTLINED_FUNCTION_14_11();
                    goto LABEL_148;
                  case 4:
                    OUTLINED_FUNCTION_1_16();
                    goto LABEL_148;
                  case 5:
                    goto LABEL_149;
                  default:
LABEL_148:
                    sub_26B6EA5D4();
                    OUTLINED_FUNCTION_24_4();

                    if ((v1 & 1) == 0)
                    {
LABEL_149:

                      ++v3;
                      continue;
                    }

LABEL_155:

                    v62 = *&v75[OBJC_IVAR____TtC9SportsKit27SportingEventPlayDescriptor__value];
                    v63 = *&v75[OBJC_IVAR____TtC9SportsKit27SportingEventPlayDescriptor__value + 8];

LABEL_156:
                    OUTLINED_FUNCTION_2_14();
                    v52 = v79;
                    v64 = v78;
                    v61 = v77;
                    v53 = v86;
LABEL_157:
                    v76 = MEMORY[0x277D84F90];
                    if (v87)
                    {
                      v76 = v87;
                    }

                    *a1 = v76;
                    *(a1 + 8) = v46;
                    *(a1 + 16) = v2;
                    *(a1 + 24) = v3;
                    *(a1 + 32) = v45;
                    *(a1 + 40) = v47;
                    *(a1 + 48) = v48;
                    *(a1 + 56) = v49;
                    *(a1 + 64) = v50;
                    *(a1 + 72) = v51;
                    *(a1 + 80) = v52;
                    *(a1 + 88) = v60;
                    *(a1 + 96) = v61;
                    *(a1 + 104) = v59;
                    *(a1 + 112) = v53;
                    *(a1 + 120) = v62;
                    *(a1 + 128) = v63;
                    *(a1 + 136) = v64;
                    return;
                }
              }
          }
        }
    }
  }
}

void sub_26B6C145C(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = (*a1 + OBJC_IVAR____TtC9SportsKit24SportingEventParticipant__displayName);
  v4 = v3[1];
  if (v4)
  {
    v56 = v3[1];
    v57 = *v3;
  }

  else
  {
    v56 = 0xE000000000000000;
    v57 = 0;
  }

  v5 = OBJC_IVAR____TtC9SportsKit24SportingEventParticipant__metadata;
  v6 = *(v2 + OBJC_IVAR____TtC9SportsKit24SportingEventParticipant__metadata);
  if (!v6)
  {

LABEL_83:
    v19 = -1;
    goto LABEL_84;
  }

  v54 = *a1;
  v55 = OBJC_IVAR____TtC9SportsKit24SportingEventParticipant__metadata;
  v7 = sub_26B6542CC(v6);

  for (i = 0; ; ++i)
  {
    if (v7 == i)
    {

      goto LABEL_39;
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x26D67DB30](i, v6);
    }

    else
    {
      if (i >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_104;
      }

      v9 = *(v6 + 8 * i + 32);
    }

    v4 = v9;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_104:
      __break(1u);
LABEL_105:
      __break(1u);
LABEL_106:
      __break(1u);
LABEL_107:

LABEL_39:
      v2 = v54;
      v5 = v55;
      goto LABEL_83;
    }

    v10 = (*&v9[OBJC_IVAR____TtC9SportsKit32SportingEventParticipantMetadata_metadataType] + OBJC_IVAR____TtC9SportsKit36SportingEventParticipantMetadataType_name);
    v11 = *v10 == 0x676E697472617453 && v10[1] == 0xEC00000065736142;
    if (v11 || (sub_26B6EA5D4() & 1) != 0)
    {
      break;
    }
  }

  v12 = *(v4 + OBJC_IVAR____TtC9SportsKit32SportingEventParticipantMetadata_value);
  v13 = *(v4 + OBJC_IVAR____TtC9SportsKit32SportingEventParticipantMetadata_value + 8);
  v14 = HIBYTE(v13) & 0xF;
  v15 = v12 & 0xFFFFFFFFFFFFLL;
  if ((v13 & 0x2000000000000000) != 0)
  {
    v16 = HIBYTE(v13) & 0xF;
  }

  else
  {
    v16 = v12 & 0xFFFFFFFFFFFFLL;
  }

  if (!v16)
  {
    goto LABEL_107;
  }

  if ((v13 & 0x1000000000000000) != 0)
  {
    v49 = *(v4 + OBJC_IVAR____TtC9SportsKit32SportingEventParticipantMetadata_value + 8);

    v19 = sub_26B6AD130(v12, v13, 10);
    v51 = v50;

    v2 = v54;
    v5 = v55;
    if ((v51 & 1) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_83;
  }

  if ((v13 & 0x2000000000000000) != 0)
  {
    v59[0] = *(v4 + OBJC_IVAR____TtC9SportsKit32SportingEventParticipantMetadata_value);
    v59[1] = v13 & 0xFFFFFFFFFFFFFFLL;
    if (v12 == 43)
    {
      v5 = v55;
      if (v14)
      {
        if (--v14)
        {
          v19 = 0;
          v29 = v59 + 1;
          while (1)
          {
            v30 = *v29 - 48;
            if (v30 > 9)
            {
              break;
            }

            v31 = 10 * v19;
            if ((v19 * 10) >> 64 != (10 * v19) >> 63)
            {
              break;
            }

            v19 = v31 + v30;
            if (__OFADD__(v31, v30))
            {
              break;
            }

            ++v29;
            if (!--v14)
            {
              goto LABEL_82;
            }
          }
        }

        goto LABEL_81;
      }

LABEL_114:
      __break(1u);
      return;
    }

    v5 = v55;
    if (v12 != 45)
    {
      if (v14)
      {
        v19 = 0;
        v34 = v59;
        while (1)
        {
          v35 = *v34 - 48;
          if (v35 > 9)
          {
            break;
          }

          v36 = 10 * v19;
          if ((v19 * 10) >> 64 != (10 * v19) >> 63)
          {
            break;
          }

          v19 = v36 + v35;
          if (__OFADD__(v36, v35))
          {
            break;
          }

          ++v34;
          if (!--v14)
          {
            goto LABEL_82;
          }
        }
      }

      goto LABEL_81;
    }

    if (v14)
    {
      if (--v14)
      {
        v19 = 0;
        v23 = v59 + 1;
        while (1)
        {
          v24 = *v23 - 48;
          if (v24 > 9)
          {
            break;
          }

          v25 = 10 * v19;
          if ((v19 * 10) >> 64 != (10 * v19) >> 63)
          {
            break;
          }

          v19 = v25 - v24;
          if (__OFSUB__(v25, v24))
          {
            break;
          }

          ++v23;
          if (!--v14)
          {
            goto LABEL_82;
          }
        }
      }

      goto LABEL_81;
    }

    goto LABEL_112;
  }

  if ((v12 & 0x1000000000000000) != 0)
  {
    v17 = ((v13 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v52 = *(v4 + OBJC_IVAR____TtC9SportsKit32SportingEventParticipantMetadata_value);
    v53 = *(v4 + OBJC_IVAR____TtC9SportsKit32SportingEventParticipantMetadata_value + 8);
    v17 = sub_26B6EA1E4();
  }

  v18 = *v17;
  v5 = v55;
  if (v18 == 43)
  {
    if (v15 >= 1)
    {
      v14 = v15 - 1;
      if (v15 != 1)
      {
        v19 = 0;
        if (v17)
        {
          v26 = v17 + 1;
          while (1)
          {
            v27 = *v26 - 48;
            if (v27 > 9)
            {
              goto LABEL_81;
            }

            v28 = 10 * v19;
            if ((v19 * 10) >> 64 != (10 * v19) >> 63)
            {
              goto LABEL_81;
            }

            v19 = v28 + v27;
            if (__OFADD__(v28, v27))
            {
              goto LABEL_81;
            }

            ++v26;
            if (!--v14)
            {
              goto LABEL_82;
            }
          }
        }

        goto LABEL_73;
      }

      goto LABEL_81;
    }

    goto LABEL_113;
  }

  if (v18 == 45)
  {
    if (v15 >= 1)
    {
      v14 = v15 - 1;
      if (v15 != 1)
      {
        v19 = 0;
        if (v17)
        {
          v20 = v17 + 1;
          while (1)
          {
            v21 = *v20 - 48;
            if (v21 > 9)
            {
              goto LABEL_81;
            }

            v22 = 10 * v19;
            if ((v19 * 10) >> 64 != (10 * v19) >> 63)
            {
              goto LABEL_81;
            }

            v19 = v22 - v21;
            if (__OFSUB__(v22, v21))
            {
              goto LABEL_81;
            }

            ++v20;
            if (!--v14)
            {
              goto LABEL_82;
            }
          }
        }

LABEL_73:
        LOBYTE(v14) = 0;
        goto LABEL_82;
      }

      goto LABEL_81;
    }

    __break(1u);
LABEL_112:
    __break(1u);
LABEL_113:
    __break(1u);
    goto LABEL_114;
  }

  if (v15)
  {
    v19 = 0;
    if (v17)
    {
      while (1)
      {
        v32 = *v17 - 48;
        if (v32 > 9)
        {
          goto LABEL_81;
        }

        v33 = 10 * v19;
        if ((v19 * 10) >> 64 != (10 * v19) >> 63)
        {
          goto LABEL_81;
        }

        v19 = v33 + v32;
        if (__OFADD__(v33, v32))
        {
          goto LABEL_81;
        }

        ++v17;
        if (!--v15)
        {
          goto LABEL_73;
        }
      }
    }

    goto LABEL_73;
  }

LABEL_81:
  v19 = 0;
  LOBYTE(v14) = 1;
LABEL_82:
  v60 = v14;
  v37 = v14;

  v2 = v54;
  if (v37)
  {
    goto LABEL_83;
  }

LABEL_84:
  v4 = *(v2 + v5);
  if (v4)
  {
    v55 = v19;
    v38 = sub_26B6542CC(v4);

    for (j = 0; ; ++j)
    {
      if (v38 == j)
      {

        goto LABEL_101;
      }

      if ((v4 & 0xC000000000000001) != 0)
      {
        v40 = MEMORY[0x26D67DB30](j, v4);
      }

      else
      {
        if (j >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_106;
        }

        v40 = *(v4 + 8 * j + 32);
      }

      v41 = v40;
      if (__OFADD__(j, 1))
      {
        goto LABEL_105;
      }

      v42 = (*&v40[OBJC_IVAR____TtC9SportsKit32SportingEventParticipantMetadata_metadataType] + OBJC_IVAR____TtC9SportsKit36SportingEventParticipantMetadataType_name);
      v43 = *v42 == 0x6142676E69646E45 && v42[1] == 0xEA00000000006573;
      if (v43 || (sub_26B6EA5D4() & 1) != 0)
      {
        break;
      }
    }

    v44 = *&v41[OBJC_IVAR____TtC9SportsKit32SportingEventParticipantMetadata_value];
    v45 = *&v41[OBJC_IVAR____TtC9SportsKit32SportingEventParticipantMetadata_value + 8];

    v46 = sub_26B6986BC(v44, v45);
    v48 = v47;

    if (v48)
    {
      goto LABEL_101;
    }
  }

  else
  {
LABEL_101:
    v46 = -1;
  }

  *a2 = v57;
  a2[1] = v56;
  a2[2] = v19;
  a2[3] = v46;
}

void sub_26B6C1A24(void *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a2;
  v3 = (*a1 + OBJC_IVAR____TtC9SportsKit24SportingEventParticipant__displayName);
  if (v3[1])
  {
    v4 = *v3;
    v5 = v3[1];
  }

  else
  {
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  v6 = *(*a1 + OBJC_IVAR____TtC9SportsKit24SportingEventParticipant__statistics);
  if (!v6)
  {

    v15 = 0;
    v14 = 1;
LABEL_25:
    *v2 = v4;
    *(v2 + 8) = v5;
    *(v2 + 16) = v15;
    *(v2 + 24) = v14;
    return;
  }

  v16 = v5;
  v7 = sub_26B6542CC(v6);

  for (i = 0; ; ++i)
  {
    if (v7 == i)
    {

      v15 = 0;
      v14 = 1;
      goto LABEL_24;
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x26D67DB30](i, v6);
    }

    else
    {
      if (i >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_27;
      }

      v9 = *(v6 + 8 * i + 32);
    }

    v10 = v9;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v11 = (*&v9[OBJC_IVAR____TtC9SportsKit33SportingEventParticipantStatistic_statisticType] + OBJC_IVAR____TtC9SportsKit37SportingEventParticipantStatisticType_name);
    v12 = *v11 == 0xD000000000000014 && 0x800000026B6FAC00 == v11[1];
    if (v12 || (sub_26B6EA5D4() & 1) != 0)
    {

      v13 = *&v10[OBJC_IVAR____TtC9SportsKit33SportingEventParticipantStatistic_value];

      if ((*&v13 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_28;
      }

      if (v13 <= -9.22337204e18)
      {
        goto LABEL_29;
      }

      if (v13 >= 9.22337204e18)
      {
        goto LABEL_30;
      }

      v14 = 0;
      v15 = v13;
LABEL_24:
      v2 = a2;
      v5 = v16;
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
}

void sub_26B6C1C34(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC9SportsKit24SportingEventParticipant__displayName);
  if (v3[1])
  {
    v4 = *v3;
    v5 = v3[1];
  }

  else
  {
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  v6 = *(*a1 + OBJC_IVAR____TtC9SportsKit24SportingEventParticipant__statistics);
  if (v6)
  {
    v26 = OBJC_IVAR____TtC9SportsKit24SportingEventParticipant__statistics;
    v27 = *a1;
    v7 = sub_26B6542CC(v6);

    for (i = 0; ; ++i)
    {
      v9 = v7 == i;
      if (v7 == i)
      {

        v15 = 0;
        goto LABEL_24;
      }

      if ((v6 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x26D67DB30](i, v6);
      }

      else
      {
        if (i >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_47;
        }

        v10 = *(v6 + 8 * i + 32);
      }

      v11 = v10;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
        goto LABEL_54;
      }

      v12 = (*&v10[OBJC_IVAR____TtC9SportsKit33SportingEventParticipantStatistic_statisticType] + OBJC_IVAR____TtC9SportsKit37SportingEventParticipantStatisticType_name);
      v13 = *v12 == 0x423A737461427441 && v12[1] == 0xEE00676E69747461;
      if (v13 || (sub_26B6EA5D4() & 1) != 0)
      {
        break;
      }
    }

    v14 = *&v11[OBJC_IVAR____TtC9SportsKit33SportingEventParticipantStatistic_value];

    if ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_50;
    }

    if (v14 <= -9.22337204e18)
    {
      goto LABEL_51;
    }

    if (v14 >= 9.22337204e18)
    {
      goto LABEL_52;
    }

    v15 = v14;
LABEL_24:
    v18 = *(v27 + v26);
    if (!v18)
    {
      v16 = 0;
      v17 = 1;
      goto LABEL_45;
    }

    v28 = v15;
    v19 = sub_26B6542CC(v18);

    for (j = 0; ; ++j)
    {
      if (v19 == j)
      {

        v16 = 0;
        v17 = 1;
LABEL_44:
        v15 = v28;
        goto LABEL_45;
      }

      if ((v18 & 0xC000000000000001) != 0)
      {
        v21 = MEMORY[0x26D67DB30](j, v18);
      }

      else
      {
        if (j >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_49;
        }

        v21 = *(v18 + 8 * j + 32);
      }

      v22 = v21;
      if (__OFADD__(j, 1))
      {
        goto LABEL_48;
      }

      v23 = (*&v21[OBJC_IVAR____TtC9SportsKit33SportingEventParticipantStatistic_statisticType] + OBJC_IVAR____TtC9SportsKit37SportingEventParticipantStatisticType_name);
      v24 = *v23 == 0x7461423A73746948 && v23[1] == 0xEC000000676E6974;
      if (v24 || (sub_26B6EA5D4() & 1) != 0)
      {
        break;
      }
    }

    v25 = *&v22[OBJC_IVAR____TtC9SportsKit33SportingEventParticipantStatistic_value];

    if ((*&v25 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_53;
    }

    if (v25 > -9.22337204e18)
    {
      if (v25 >= 9.22337204e18)
      {
        goto LABEL_55;
      }

      v17 = 0;
      v16 = v25;
      goto LABEL_44;
    }

LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
  }

  else
  {

    v15 = 0;
    v16 = 0;
    v9 = 1;
    v17 = 1;
LABEL_45:
    *a2 = v4;
    *(a2 + 8) = v5;
    *(a2 + 16) = v15;
    *(a2 + 24) = v9;
    *(a2 + 32) = v16;
    *(a2 + 40) = v17;
  }
}

unint64_t sub_26B6C1FD0()
{
  result = qword_28040B2B0;
  if (!qword_28040B2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B2B0);
  }

  return result;
}

uint64_t sub_26B6C202C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 105))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26B6C204C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
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

  *(result + 105) = v3;
  return result;
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t _s18BaseballScoreEntryVwet(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 10))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 9);
      if (v3 >= 2)
      {
        v2 = ((v3 + 2147483646) & 0x7FFFFFFF) - 1;
      }

      else
      {
        v2 = -2;
      }

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

uint64_t _s18BaseballScoreEntryVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *(result + 9) = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_26B6C2164(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 106))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 9);
      if (v3 >= 2)
      {
        v4 = ((v3 + 2147483646) & 0x7FFFFFFF) - 1;
      }

      else
      {
        v4 = -2;
      }

      if (v4 < 0)
      {
        v5 = -1;
      }

      else
      {
        v5 = v4;
      }

      v6 = v5 - 1;
      if (v4 < 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v6;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26B6C21C8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 106) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 106) = 0;
    }

    if (a2)
    {
      *(result + 9) = a2 + 3;
    }
  }

  return result;
}

uint64_t sub_26B6C223C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 137))
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

uint64_t sub_26B6C227C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 136) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 137) = 1;
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

    *(result + 137) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_26B6C230C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_26B6C234C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26B6C23A4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_26B6C23E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *_s12BaseballPlayV23PitchIndexIndicatorTypeOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t OUTLINED_FUNCTION_4_15()
{

  return sub_26B6EA564();
}

uint64_t OUTLINED_FUNCTION_6_12()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t OUTLINED_FUNCTION_8_8@<X0>(uint64_t a1@<X8>)
{
  v2 = (a1 + v1);
  result = *v2;
  v4 = v2[1];
  return result;
}

uint64_t OUTLINED_FUNCTION_9_10()
{
}

uint64_t OUTLINED_FUNCTION_10_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v21 = *(a20 + a19);

  return sub_26B6542CC(v21);
}

uint64_t OUTLINED_FUNCTION_11_10()
{

  return sub_26B6EA564();
}

void OUTLINED_FUNCTION_17_7()
{

  JUMPOUT(0x26D67D4D0);
}

uint64_t OUTLINED_FUNCTION_18_9()
{

  return sub_26B6EA5D4();
}

uint64_t OUTLINED_FUNCTION_19_6()
{
  result = *(v0 + 32);
  v2 = *(v0 + 40);
  return result;
}

uint64_t OUTLINED_FUNCTION_20_8()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

void OUTLINED_FUNCTION_21_4()
{

  JUMPOUT(0x26D67D4D0);
}

uint64_t OUTLINED_FUNCTION_23_7()
{
}

uint64_t OUTLINED_FUNCTION_24_4()
{
}

void *sub_26B6C2708()
{
  type metadata accessor for ScoreboardSubscriptionManager();
  swift_allocObject();
  result = sub_26B6C27A0();
  qword_2810CC5E8 = result;
  return result;
}

uint64_t static ScoreboardSubscriptionManager.shared.getter()
{
  if (qword_2810CC5E0 != -1)
  {
    swift_once();
  }
}

void *sub_26B6C27A0()
{
  v1 = v0;
  swift_defaultActor_initialize();
  v2 = type metadata accessor for PersistentStore(0);
  v3 = PersistentStore.__allocating_init()();
  v1[17] = v2;
  v1[18] = &protocol witness table for PersistentStore;
  v1[14] = v3;
  return v1;
}

uint64_t sub_26B6C27EC(uint64_t a1)
{
  v3 = v1;
  v5 = v1[17];
  v6 = v1[18];
  __swift_project_boxed_opaque_existential_1(v1 + 14, v5);
  result = (*(v6 + 152))(v5, v6);
  if (!v2)
  {
    v8 = result;
    v39 = a1;
    if (qword_2810CE9F8 != -1)
    {
      swift_once();
    }

    v9 = sub_26B6E95C4();
    __swift_project_value_buffer(v9, qword_2810D4320);

    v10 = a1;
    v11 = sub_26B6E95A4();
    v12 = sub_26B6E9E64();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v40 = v37;
      buf = v13;
      *v13 = 136315138;
      v14 = sub_26B6B8B04(v39);
      v15 = MEMORY[0x277D84F90];
      if (v14)
      {
        v16 = v14;
        v33 = v12;
        v34 = v11;
        v35 = v8;
        v36 = v3;
        v41 = MEMORY[0x277D84F90];
        result = sub_26B63B9EC(0, v14 & ~(v14 >> 63), 0);
        if (v16 < 0)
        {
          __break(1u);
          return result;
        }

        v17 = 0;
        v15 = v41;
        v18 = v39;
        do
        {
          if ((v39 & 0xC000000000000001) != 0)
          {
            v19 = MEMORY[0x26D67DB30](v17, v18);
          }

          else
          {
            v19 = *(v18 + 8 * v17 + 32);
          }

          v20 = v19;
          v21 = *&v19[OBJC_IVAR____TtC9SportsKit13SportingEvent_canonicalId];
          v22 = *&v19[OBJC_IVAR____TtC9SportsKit13SportingEvent_canonicalId + 8];

          v41 = v15;
          v24 = *(v15 + 16);
          v23 = *(v15 + 24);
          if (v24 >= v23 >> 1)
          {
            sub_26B63B9EC(v23 > 1, v24 + 1, 1);
            v18 = v39;
            v15 = v41;
          }

          ++v17;
          *(v15 + 16) = v24 + 1;
          v25 = v15 + 16 * v24;
          *(v25 + 32) = v21;
          *(v25 + 40) = v22;
        }

        while (v16 != v17);
        v3 = v36;
        v11 = v34;
        v8 = v35;
        v12 = v33;
      }

      v41 = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409BE8, &qword_26B6F00D0);
      sub_26B6BF3F8();
      v26 = sub_26B6E9994();
      v28 = v27;

      v29 = sub_26B6D22D8(v26, v28, &v40);

      *(buf + 4) = v29;
      _os_log_impl(&dword_26B630000, v11, v12, "writing updates for events %s", buf, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v37);
      MEMORY[0x26D67E950](v37, -1, -1);
      MEMORY[0x26D67E950](buf, -1, -1);

      v10 = v39;
    }

    else
    {
    }

    swift_beginAccess();
    v30 = *(v8 + 16);
    *(v8 + 16) = v10;

    v31 = v3[17];
    v32 = v3[18];
    __swift_project_boxed_opaque_existential_1(v3 + 14, v31);
    (*(v32 + 160))(v8, v31, v32);
  }

  return result;
}

uint64_t ScoreboardSubscriptionManager.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 112));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t ScoreboardSubscriptionManager.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 112));
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

BOOL (*static PlayFilterUtils.playsForfilters(_:)(uint64_t a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;

  return sub_26B6C2F0C;
}

BOOL sub_26B6C2CD0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC9SportsKit17SportingEventPlay_playDescription + 8);
  if ((v2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(v2) & 0xF;
  }

  else
  {
    v3 = *(a1 + OBJC_IVAR____TtC9SportsKit17SportingEventPlay_playDescription) & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {
    return 0;
  }

  v4 = *(a1 + OBJC_IVAR____TtC9SportsKit17SportingEventPlay__levels);
  v5 = *(a2 + 16);
  v19 = (v4 + 32);
  v20 = a2 + 32;
  v21 = v4;

  v6 = 0;
LABEL_6:
  v7 = v5;
  v16 = v6 == v5;
  v8 = v6 == v5;
  if (!v16)
  {
    v9 = *(v20 + v6++);
    v10 = *(v21 + 16);
    v11 = v19;
    while (v10)
    {
      v12 = 0xE600000000000000;
      v13 = 0x737472656C41;
      switch(*v11)
      {
        case 1:
          v12 = 0xE300000000000000;
          v13 = 7105601;
          break;
        case 2:
          v13 = 0x6867696C68676948;
          v12 = 0xE900000000000074;
          break;
        case 3:
          v12 = 0xE700000000000000;
          v13 = 0x79616C5079654BLL;
          break;
        case 4:
          v12 = 0xE700000000000000;
          v13 = 0x6E6F6973736553;
          break;
        default:
          break;
      }

      v14 = 0xE600000000000000;
      v15 = 0x737472656C41;
      switch(v9)
      {
        case 1:
          v14 = 0xE300000000000000;
          v15 = 7105601;
          break;
        case 2:
          v15 = 0x6867696C68676948;
          v14 = 0xE900000000000074;
          break;
        case 3:
          v14 = 0xE700000000000000;
          v15 = 0x79616C5079654BLL;
          break;
        case 4:
          v14 = 0xE700000000000000;
          v15 = 0x6E6F6973736553;
          break;
        default:
          break;
      }

      v16 = v13 == v15 && v12 == v14;
      if (v16)
      {

LABEL_26:
        v5 = v7;
        goto LABEL_6;
      }

      v17 = sub_26B6EA5D4();

      ++v11;
      --v10;
      if (v17)
      {
        goto LABEL_26;
      }
    }
  }

  return v8;
}

uint64_t sub_26B6C2F68(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) <= *(a2 + 16) >> 3)
  {
    sub_26B6CB39C(a1);
    return a2;
  }

  else
  {

    return sub_26B6CB4C8(a1, a2);
  }
}

uint64_t PersistentStore.__allocating_init()()
{
  v0 = sub_26B6E93B4();
  v1 = OUTLINED_FUNCTION_4(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_5_0();
  v8 = v7 - v6;
  v9 = [objc_opt_self() defaultManager];
  if (qword_2810CE4D8 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v0, qword_2810CE4E0);
  (*(v3 + 16))(v8, v10, v0);
  type metadata accessor for PersistentStoreWriter();
  swift_allocObject();
  v11 = OUTLINED_FUNCTION_67();
  v12 = type metadata accessor for PersistentStore(v11);
  OUTLINED_FUNCTION_11_9(v12);
  swift_allocObject();
  v13 = OUTLINED_FUNCTION_51_1();
  return sub_26B6CE814(v13, v14, v0, v15);
}

uint64_t sub_26B6C30FC(uint64_t a1, void *a2)
{
  v4 = sub_26B6E9564();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v46 = v39 - v10;
  v47 = a1;
  v11 = a1 + 56;
  v12 = 1 << *(a1 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a1 + 56);
  v15 = (v12 + 63) >> 6;
  v49 = (v9 + 32);
  v44 = v9;
  v39[1] = v9 + 40;

  v16 = 0;
  v40 = v15;
  v41 = a1 + 56;
  v42 = a2;
  v43 = v8;
  v45 = v4;
  if (v14)
  {
LABEL_8:
    while (1)
    {
      v18 = (*(v47 + 48) + ((v16 << 10) | (16 * __clz(__rbit64(v14)))));
      v19 = *v18;
      v20 = v18[1];

      v21 = v46;
      sub_26B6E9554();
      v48 = *v49;
      v48(v8, v21, v4);
      v22 = *a2;
      swift_isUniquelyReferenced_nonNull_native();
      v23 = *a2;
      v50 = v23;
      v24 = sub_26B675324();
      if (__OFADD__(v23[2], (v25 & 1) == 0))
      {
        break;
      }

      v26 = v24;
      v27 = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409F18, &qword_26B6F17F0);
      if (sub_26B6EA2E4())
      {
        v28 = sub_26B675324();
        if ((v27 & 1) != (v29 & 1))
        {
          goto LABEL_22;
        }

        v26 = v28;
      }

      v30 = v50;
      if (v27)
      {
        v8 = v43;
        v31 = v50[7] + *(v44 + 72) * v26;
        v4 = v45;
        (*(v44 + 40))(v31, v43, v45);
      }

      else
      {
        v50[(v26 >> 6) + 8] |= 1 << v26;
        v32 = (v30[6] + 16 * v26);
        *v32 = v19;
        v32[1] = v20;
        v8 = v43;
        v33 = v30[7] + *(v44 + 72) * v26;
        v4 = v45;
        v48(v33, v43, v45);
        v34 = v30[2];
        v35 = __OFADD__(v34, 1);
        v36 = v34 + 1;
        if (v35)
        {
          goto LABEL_21;
        }

        v30[2] = v36;
      }

      v14 &= v14 - 1;
      v37 = v42;
      *v42 = v30;
      a2 = v37;

      v15 = v40;
      v11 = v41;
      if (!v14)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
LABEL_4:
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v17 >= v15)
      {
      }

      v14 = *(v11 + 8 * v17);
      ++v16;
      if (v14)
      {
        v16 = v17;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = sub_26B6EA674();
  __break(1u);
  return result;
}