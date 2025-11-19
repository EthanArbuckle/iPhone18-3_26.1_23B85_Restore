unint64_t sub_1C8E97E2C()
{
  result = qword_1EC318380;
  if (!qword_1EC318380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318380);
  }

  return result;
}

unint64_t sub_1C8E97E84()
{
  result = qword_1EC318388;
  if (!qword_1EC318388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318388);
  }

  return result;
}

unint64_t sub_1C8E97EDC()
{
  result = qword_1EDA6B7A0;
  if (!qword_1EDA6B7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B7A0);
  }

  return result;
}

unint64_t sub_1C8E97F34()
{
  result = qword_1EDA60990;
  if (!qword_1EDA60990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60990);
  }

  return result;
}

unint64_t sub_1C8E97F88()
{
  result = qword_1EDA63320;
  if (!qword_1EDA63320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63320);
  }

  return result;
}

unint64_t sub_1C8E97FE0()
{
  result = qword_1EDA63318;
  if (!qword_1EDA63318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63318);
  }

  return result;
}

unint64_t sub_1C8E98038()
{
  result = qword_1EC318390;
  if (!qword_1EC318390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318390);
  }

  return result;
}

unint64_t sub_1C8E98090()
{
  result = qword_1EC318398;
  if (!qword_1EC318398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318398);
  }

  return result;
}

unint64_t sub_1C8E980E8()
{
  result = qword_1EC3183A0;
  if (!qword_1EC3183A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3183A0);
  }

  return result;
}

unint64_t sub_1C8E98140()
{
  result = qword_1EC3183A8;
  if (!qword_1EC3183A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3183A8);
  }

  return result;
}

unint64_t sub_1C8E98198()
{
  result = qword_1EC3183B0;
  if (!qword_1EC3183B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3183B0);
  }

  return result;
}

unint64_t sub_1C8E981F0()
{
  result = qword_1EC3183B8;
  if (!qword_1EC3183B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3183B8);
  }

  return result;
}

unint64_t sub_1C8E98248()
{
  result = qword_1EC3183C0;
  if (!qword_1EC3183C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3183C0);
  }

  return result;
}

unint64_t sub_1C8E982A0()
{
  result = qword_1EC3183C8;
  if (!qword_1EC3183C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3183C8);
  }

  return result;
}

unint64_t sub_1C8E982F8()
{
  result = qword_1EC3183D0;
  if (!qword_1EC3183D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3183D0);
  }

  return result;
}

unint64_t sub_1C8E98350()
{
  result = qword_1EDA609A8;
  if (!qword_1EDA609A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA609A8);
  }

  return result;
}

unint64_t sub_1C8E983A8()
{
  result = qword_1EC3183D8;
  if (!qword_1EC3183D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3183D8);
  }

  return result;
}

unint64_t sub_1C8E98400()
{
  result = qword_1EC3183E0;
  if (!qword_1EC3183E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3183E0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ToolAuthenticationPolicy(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1C8E98560(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 80))
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

uint64_t sub_1C8E985B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ToolSymbolIconStyle(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return v5 + 1;
  }

  if (a2 >= 0x3F)
  {
    if (a2 + 65473 <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if (a2 + 65473 < 0xFF0000)
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
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (!*(a1 + 2))
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 16)) - 65474;
    return v5 + 1;
  }

LABEL_17:
  v5 = ((*a1 >> 15) | (2 * ((*a1 >> 10) & 0x18 | (*a1 >> 5)))) ^ 0x3F;
  if (v5 >= 0x3E)
  {
    v5 = -1;
  }

  return v5 + 1;
}

uint64_t storeEnumTagSinglePayload for ToolSymbolIconStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65473 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65473 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0x3F)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0x3E)
  {
    v6 = ((a2 - 63) >> 16) + 1;
    *result = a2 - 63;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 2) = v6;
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
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
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
          *result = (((-a2 & 0x30) << 9) - (a2 << 15)) & 0xFF1F | (32 * ((-a2 >> 1) & 7));
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ToolSymbolIconColor(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEE)
  {
    v6 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
          *result = a2 + 17;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C8E988F8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 136))
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

uint64_t sub_1C8E98938(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C8E989B8(uint64_t result, int a2, int a3)
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

      return OUTLINED_FUNCTION_242_2(result, (a2 - 1));
    }

    *(result + 32) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_242_2(result, (a2 - 1));
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_7ToolKit31ParameterRelationshipDefinitionV8RelationO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 <= 0xBF)
  {
    return v1 >> 5;
  }

  else
  {
    return (*a1 + 6);
  }
}

uint64_t sub_1C8E98A30(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7A && *(a1 + 9))
    {
      v2 = *a1 + 121;
    }

    else
    {
      v2 = ((*(a1 + 8) >> 5) & 0xFFFFFF87 | (8 * ((*(a1 + 8) >> 1) & 0xF))) ^ 0x7F;
      if (v2 >= 0x79)
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

uint64_t sub_1C8E98A7C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x79)
  {
    *(result + 8) = 0;
    *result = a2 - 122;
    if (a3 >= 0x7A)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7A)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 2 * (((-a2 >> 3) & 0xF) - 16 * a2);
    }
  }

  return result;
}

uint64_t sub_1C8E98AE0(uint64_t result, unsigned int a2)
{
  if (a2 < 6)
  {
    v2 = *(result + 8) & 1 | (32 * a2);
  }

  else
  {
    *result = a2 - 6;
    v2 = -64;
  }

  *(result + 8) = v2;
  return result;
}

uint64_t sub_1C8E98B68(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_242_2(result, a2);
    }
  }

  return result;
}

_BYTE *sub_1C8E98D58(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_96_0(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_94_2(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_95(result, v6);
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
          result = OUTLINED_FUNCTION_349(result, a2 + 7);
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ParameterDefinition.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1C8E98FD0(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_96_0(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_94_2(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_95(result, v6);
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
          result = OUTLINED_FUNCTION_349(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1C8E990CC(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_96_0(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_94_2(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_95(result, v6);
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
          result = OUTLINED_FUNCTION_349(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1C8E99198(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for ToolDefinition.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 23 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 23) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE8)
  {
    v6 = ((a2 - 233) >> 8) + 1;
    *result = a2 + 23;
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
          *result = a2 + 23;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1C8E99320(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_96_0(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_94_2(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_95(result, v6);
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
          result = OUTLINED_FUNCTION_349(result, a2 + 4);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C8E993F0()
{
  result = qword_1EC3183E8;
  if (!qword_1EC3183E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3183E8);
  }

  return result;
}

unint64_t sub_1C8E99448()
{
  result = qword_1EC3183F0;
  if (!qword_1EC3183F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3183F0);
  }

  return result;
}

unint64_t sub_1C8E994A0()
{
  result = qword_1EC3183F8;
  if (!qword_1EC3183F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3183F8);
  }

  return result;
}

unint64_t sub_1C8E994F8()
{
  result = qword_1EC318400;
  if (!qword_1EC318400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318400);
  }

  return result;
}

unint64_t sub_1C8E99550()
{
  result = qword_1EC318408;
  if (!qword_1EC318408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318408);
  }

  return result;
}

unint64_t sub_1C8E995A8()
{
  result = qword_1EC318410;
  if (!qword_1EC318410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318410);
  }

  return result;
}

unint64_t sub_1C8E99600()
{
  result = qword_1EC318418;
  if (!qword_1EC318418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318418);
  }

  return result;
}

unint64_t sub_1C8E99658()
{
  result = qword_1EC318420;
  if (!qword_1EC318420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318420);
  }

  return result;
}

unint64_t sub_1C8E996B0()
{
  result = qword_1EC318428;
  if (!qword_1EC318428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318428);
  }

  return result;
}

unint64_t sub_1C8E99708()
{
  result = qword_1EC318430;
  if (!qword_1EC318430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318430);
  }

  return result;
}

unint64_t sub_1C8E99760()
{
  result = qword_1EC318438;
  if (!qword_1EC318438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318438);
  }

  return result;
}

unint64_t sub_1C8E997B8()
{
  result = qword_1EC318440;
  if (!qword_1EC318440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318440);
  }

  return result;
}

unint64_t sub_1C8E99810()
{
  result = qword_1EC318448;
  if (!qword_1EC318448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318448);
  }

  return result;
}

unint64_t sub_1C8E99868()
{
  result = qword_1EC318450;
  if (!qword_1EC318450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318450);
  }

  return result;
}

unint64_t sub_1C8E998C0()
{
  result = qword_1EC318458;
  if (!qword_1EC318458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318458);
  }

  return result;
}

unint64_t sub_1C8E99918()
{
  result = qword_1EC318460;
  if (!qword_1EC318460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318460);
  }

  return result;
}

unint64_t sub_1C8E99970()
{
  result = qword_1EC318468;
  if (!qword_1EC318468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318468);
  }

  return result;
}

unint64_t sub_1C8E999C8()
{
  result = qword_1EC318470;
  if (!qword_1EC318470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318470);
  }

  return result;
}

unint64_t sub_1C8E99A20()
{
  result = qword_1EC318478;
  if (!qword_1EC318478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318478);
  }

  return result;
}

unint64_t sub_1C8E99A78()
{
  result = qword_1EC318480;
  if (!qword_1EC318480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318480);
  }

  return result;
}

unint64_t sub_1C8E99AD0()
{
  result = qword_1EC318488;
  if (!qword_1EC318488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318488);
  }

  return result;
}

unint64_t sub_1C8E99B28()
{
  result = qword_1EC318490;
  if (!qword_1EC318490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318490);
  }

  return result;
}

unint64_t sub_1C8E99B80()
{
  result = qword_1EC318498;
  if (!qword_1EC318498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318498);
  }

  return result;
}

unint64_t sub_1C8E99BD8()
{
  result = qword_1EC3184A0;
  if (!qword_1EC3184A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3184A0);
  }

  return result;
}

unint64_t sub_1C8E99C30()
{
  result = qword_1EC3184A8;
  if (!qword_1EC3184A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3184A8);
  }

  return result;
}

unint64_t sub_1C8E99C88()
{
  result = qword_1EC3184B0;
  if (!qword_1EC3184B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3184B0);
  }

  return result;
}

unint64_t sub_1C8E99CE0()
{
  result = qword_1EC3184B8;
  if (!qword_1EC3184B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3184B8);
  }

  return result;
}

unint64_t sub_1C8E99D38()
{
  result = qword_1EC3184C0;
  if (!qword_1EC3184C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3184C0);
  }

  return result;
}

unint64_t sub_1C8E99D90()
{
  result = qword_1EC3184C8;
  if (!qword_1EC3184C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3184C8);
  }

  return result;
}

unint64_t sub_1C8E99DE8()
{
  result = qword_1EC3184D0;
  if (!qword_1EC3184D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3184D0);
  }

  return result;
}

unint64_t sub_1C8E99E40()
{
  result = qword_1EC3184D8;
  if (!qword_1EC3184D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3184D8);
  }

  return result;
}

unint64_t sub_1C8E99E98()
{
  result = qword_1EC3184E0;
  if (!qword_1EC3184E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3184E0);
  }

  return result;
}

unint64_t sub_1C8E99EF0()
{
  result = qword_1EDA69848;
  if (!qword_1EDA69848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69848);
  }

  return result;
}

unint64_t sub_1C8E99F48()
{
  result = qword_1EDA69850;
  if (!qword_1EDA69850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69850);
  }

  return result;
}

unint64_t sub_1C8E99FA0()
{
  result = qword_1EDA69880;
  if (!qword_1EDA69880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69880);
  }

  return result;
}

unint64_t sub_1C8E99FF8()
{
  result = qword_1EDA69888;
  if (!qword_1EDA69888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69888);
  }

  return result;
}

unint64_t sub_1C8E9A050()
{
  result = qword_1EDA698A0;
  if (!qword_1EDA698A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA698A0);
  }

  return result;
}

unint64_t sub_1C8E9A0A8()
{
  result = qword_1EDA698A8;
  if (!qword_1EDA698A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA698A8);
  }

  return result;
}

unint64_t sub_1C8E9A100()
{
  result = qword_1EDA69890;
  if (!qword_1EDA69890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69890);
  }

  return result;
}

unint64_t sub_1C8E9A158()
{
  result = qword_1EDA69898;
  if (!qword_1EDA69898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69898);
  }

  return result;
}

unint64_t sub_1C8E9A1B0()
{
  result = qword_1EDA69870;
  if (!qword_1EDA69870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69870);
  }

  return result;
}

unint64_t sub_1C8E9A208()
{
  result = qword_1EDA69878;
  if (!qword_1EDA69878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69878);
  }

  return result;
}

unint64_t sub_1C8E9A260()
{
  result = qword_1EDA69860;
  if (!qword_1EDA69860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69860);
  }

  return result;
}

unint64_t sub_1C8E9A2B8()
{
  result = qword_1EDA69868;
  if (!qword_1EDA69868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69868);
  }

  return result;
}

unint64_t sub_1C8E9A310()
{
  result = qword_1EDA698B0;
  if (!qword_1EDA698B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA698B0);
  }

  return result;
}

unint64_t sub_1C8E9A368()
{
  result = qword_1EDA698B8;
  if (!qword_1EDA698B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA698B8);
  }

  return result;
}

unint64_t sub_1C8E9A3C0()
{
  result = qword_1EDA69818;
  if (!qword_1EDA69818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69818);
  }

  return result;
}

unint64_t sub_1C8E9A418()
{
  result = qword_1EDA69820;
  if (!qword_1EDA69820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69820);
  }

  return result;
}

unint64_t sub_1C8E9A470()
{
  result = qword_1EDA69808;
  if (!qword_1EDA69808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69808);
  }

  return result;
}

unint64_t sub_1C8E9A4C8()
{
  result = qword_1EDA69810;
  if (!qword_1EDA69810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69810);
  }

  return result;
}

unint64_t sub_1C8E9A520()
{
  result = qword_1EDA69830;
  if (!qword_1EDA69830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69830);
  }

  return result;
}

unint64_t sub_1C8E9A578()
{
  result = qword_1EDA69838;
  if (!qword_1EDA69838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69838);
  }

  return result;
}

unint64_t sub_1C8E9A5D0()
{
  result = qword_1EDA697D8;
  if (!qword_1EDA697D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA697D8);
  }

  return result;
}

unint64_t sub_1C8E9A628()
{
  result = qword_1EDA697E0;
  if (!qword_1EDA697E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA697E0);
  }

  return result;
}

unint64_t sub_1C8E9A680()
{
  result = qword_1EDA697C8;
  if (!qword_1EDA697C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA697C8);
  }

  return result;
}

unint64_t sub_1C8E9A6D8()
{
  result = qword_1EDA697D0;
  if (!qword_1EDA697D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA697D0);
  }

  return result;
}

unint64_t sub_1C8E9A730()
{
  result = qword_1EDA697B8;
  if (!qword_1EDA697B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA697B8);
  }

  return result;
}

unint64_t sub_1C8E9A788()
{
  result = qword_1EDA697C0;
  if (!qword_1EDA697C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA697C0);
  }

  return result;
}

unint64_t sub_1C8E9A7E0()
{
  result = qword_1EDA697F0;
  if (!qword_1EDA697F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA697F0);
  }

  return result;
}

unint64_t sub_1C8E9A838()
{
  result = qword_1EDA697F8;
  if (!qword_1EDA697F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA697F8);
  }

  return result;
}

unint64_t sub_1C8E9A890()
{
  result = qword_1EDA6A000;
  if (!qword_1EDA6A000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6A000);
  }

  return result;
}

unint64_t sub_1C8E9A8E8()
{
  result = qword_1EDA6A008;
  if (!qword_1EDA6A008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6A008);
  }

  return result;
}

unint64_t sub_1C8E9A940()
{
  result = qword_1EDA69FD0;
  if (!qword_1EDA69FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69FD0);
  }

  return result;
}

unint64_t sub_1C8E9A998()
{
  result = qword_1EDA69FD8;
  if (!qword_1EDA69FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69FD8);
  }

  return result;
}

unint64_t sub_1C8E9A9F0()
{
  result = qword_1EDA69FC0;
  if (!qword_1EDA69FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69FC0);
  }

  return result;
}

unint64_t sub_1C8E9AA48()
{
  result = qword_1EDA69FC8;
  if (!qword_1EDA69FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69FC8);
  }

  return result;
}

unint64_t sub_1C8E9AAA0()
{
  result = qword_1EDA69FE8;
  if (!qword_1EDA69FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69FE8);
  }

  return result;
}

unint64_t sub_1C8E9AAF8()
{
  result = qword_1EDA69FF0;
  if (!qword_1EDA69FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69FF0);
  }

  return result;
}

unint64_t sub_1C8E9AB50()
{
  result = qword_1EDA69F90;
  if (!qword_1EDA69F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69F90);
  }

  return result;
}

unint64_t sub_1C8E9ABA8()
{
  result = qword_1EDA69F98;
  if (!qword_1EDA69F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69F98);
  }

  return result;
}

unint64_t sub_1C8E9AC00()
{
  result = qword_1EDA69F80;
  if (!qword_1EDA69F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69F80);
  }

  return result;
}

unint64_t sub_1C8E9AC58()
{
  result = qword_1EDA69F88;
  if (!qword_1EDA69F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69F88);
  }

  return result;
}

unint64_t sub_1C8E9ACB0()
{
  result = qword_1EDA69F70;
  if (!qword_1EDA69F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69F70);
  }

  return result;
}

unint64_t sub_1C8E9AD08()
{
  result = qword_1EDA69F78;
  if (!qword_1EDA69F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69F78);
  }

  return result;
}

unint64_t sub_1C8E9AD60()
{
  result = qword_1EDA69FA8;
  if (!qword_1EDA69FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69FA8);
  }

  return result;
}

unint64_t sub_1C8E9ADB8()
{
  result = qword_1EDA69FB0;
  if (!qword_1EDA69FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69FB0);
  }

  return result;
}

unint64_t sub_1C8E9AE10()
{
  result = qword_1EDA6B5D8;
  if (!qword_1EDA6B5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B5D8);
  }

  return result;
}

unint64_t sub_1C8E9AE68()
{
  result = qword_1EDA6B5E0;
  if (!qword_1EDA6B5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B5E0);
  }

  return result;
}

unint64_t sub_1C8E9AEC0()
{
  result = qword_1EDA6B588;
  if (!qword_1EDA6B588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B588);
  }

  return result;
}

unint64_t sub_1C8E9AF18()
{
  result = qword_1EDA6B590;
  if (!qword_1EDA6B590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B590);
  }

  return result;
}

unint64_t sub_1C8E9AF70()
{
  result = qword_1EDA6B598;
  if (!qword_1EDA6B598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B598);
  }

  return result;
}

unint64_t sub_1C8E9AFC8()
{
  result = qword_1EDA6B5A0;
  if (!qword_1EDA6B5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B5A0);
  }

  return result;
}

unint64_t sub_1C8E9B020()
{
  result = qword_1EDA6B5A8;
  if (!qword_1EDA6B5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B5A8);
  }

  return result;
}

unint64_t sub_1C8E9B078()
{
  result = qword_1EDA6B5B0;
  if (!qword_1EDA6B5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B5B0);
  }

  return result;
}

unint64_t sub_1C8E9B0D0()
{
  result = qword_1EDA6B558;
  if (!qword_1EDA6B558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B558);
  }

  return result;
}

unint64_t sub_1C8E9B128()
{
  result = qword_1EDA6B560;
  if (!qword_1EDA6B560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B560);
  }

  return result;
}

unint64_t sub_1C8E9B180()
{
  result = qword_1EDA6B548;
  if (!qword_1EDA6B548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B548);
  }

  return result;
}

unint64_t sub_1C8E9B1D8()
{
  result = qword_1EDA6B550;
  if (!qword_1EDA6B550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B550);
  }

  return result;
}

unint64_t sub_1C8E9B230()
{
  result = qword_1EDA6B568;
  if (!qword_1EDA6B568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B568);
  }

  return result;
}

unint64_t sub_1C8E9B288()
{
  result = qword_1EDA6B570;
  if (!qword_1EDA6B570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B570);
  }

  return result;
}

unint64_t sub_1C8E9B2E0()
{
  result = qword_1EDA6B578;
  if (!qword_1EDA6B578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B578);
  }

  return result;
}

unint64_t sub_1C8E9B338()
{
  result = qword_1EDA6B580;
  if (!qword_1EDA6B580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B580);
  }

  return result;
}

unint64_t sub_1C8E9B390()
{
  result = qword_1EDA6B538;
  if (!qword_1EDA6B538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B538);
  }

  return result;
}

unint64_t sub_1C8E9B3E8()
{
  result = qword_1EDA6B540;
  if (!qword_1EDA6B540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B540);
  }

  return result;
}

unint64_t sub_1C8E9B440()
{
  result = qword_1EDA6B5C0;
  if (!qword_1EDA6B5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B5C0);
  }

  return result;
}

unint64_t sub_1C8E9B498()
{
  result = qword_1EDA6B5C8;
  if (!qword_1EDA6B5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B5C8);
  }

  return result;
}

unint64_t sub_1C8E9B4F0()
{
  result = qword_1EDA69788;
  if (!qword_1EDA69788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69788);
  }

  return result;
}

unint64_t sub_1C8E9B548()
{
  result = qword_1EDA69790;
  if (!qword_1EDA69790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69790);
  }

  return result;
}

unint64_t sub_1C8E9B5A0()
{
  result = qword_1EC3184E8;
  if (!qword_1EC3184E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3184E8);
  }

  return result;
}

unint64_t sub_1C8E9B5F8()
{
  result = qword_1EC3184F0;
  if (!qword_1EC3184F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3184F0);
  }

  return result;
}

unint64_t sub_1C8E9B650()
{
  result = qword_1EDA697A0;
  if (!qword_1EDA697A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA697A0);
  }

  return result;
}

unint64_t sub_1C8E9B6A8()
{
  result = qword_1EDA697A8;
  if (!qword_1EDA697A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA697A8);
  }

  return result;
}

unint64_t sub_1C8E9B700()
{
  result = qword_1EDA66300;
  if (!qword_1EDA66300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA66300);
  }

  return result;
}

unint64_t sub_1C8E9B758()
{
  result = qword_1EDA66308;
  if (!qword_1EDA66308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA66308);
  }

  return result;
}

unint64_t sub_1C8E9B7B0()
{
  result = qword_1EDA66318;
  if (!qword_1EDA66318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA66318);
  }

  return result;
}

unint64_t sub_1C8E9B808()
{
  result = qword_1EDA66320;
  if (!qword_1EDA66320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA66320);
  }

  return result;
}

unint64_t sub_1C8E9B860()
{
  result = qword_1EDA66330;
  if (!qword_1EDA66330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA66330);
  }

  return result;
}

unint64_t sub_1C8E9B8B8()
{
  result = qword_1EDA66338;
  if (!qword_1EDA66338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA66338);
  }

  return result;
}

unint64_t sub_1C8E9B910()
{
  result = qword_1EDA661F0;
  if (!qword_1EDA661F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA661F0);
  }

  return result;
}

unint64_t sub_1C8E9B968()
{
  result = qword_1EDA661F8;
  if (!qword_1EDA661F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA661F8);
  }

  return result;
}

unint64_t sub_1C8E9B9C0()
{
  result = qword_1EDA66208;
  if (!qword_1EDA66208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA66208);
  }

  return result;
}

unint64_t sub_1C8E9BA18()
{
  result = qword_1EDA66210;
  if (!qword_1EDA66210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA66210);
  }

  return result;
}

unint64_t sub_1C8E9BA70()
{
  result = qword_1EC3184F8;
  if (!qword_1EC3184F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3184F8);
  }

  return result;
}

unint64_t sub_1C8E9BAC8()
{
  result = qword_1EC318500;
  if (!qword_1EC318500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318500);
  }

  return result;
}

unint64_t sub_1C8E9BB20()
{
  result = qword_1EDA66220;
  if (!qword_1EDA66220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA66220);
  }

  return result;
}

unint64_t sub_1C8E9BB78()
{
  result = qword_1EDA66228;
  if (!qword_1EDA66228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA66228);
  }

  return result;
}

unint64_t sub_1C8E9BBD0()
{
  result = qword_1EC318508;
  if (!qword_1EC318508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318508);
  }

  return result;
}

unint64_t sub_1C8E9BC28()
{
  result = qword_1EC318510;
  if (!qword_1EC318510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318510);
  }

  return result;
}

unint64_t sub_1C8E9BC80()
{
  result = qword_1EDA68D50;
  if (!qword_1EDA68D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA68D50);
  }

  return result;
}

unint64_t sub_1C8E9BCD8()
{
  result = qword_1EDA68D58;
  if (!qword_1EDA68D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA68D58);
  }

  return result;
}

unint64_t sub_1C8E9BD30()
{
  result = qword_1EDA6B368;
  if (!qword_1EDA6B368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B368);
  }

  return result;
}

unint64_t sub_1C8E9BD88()
{
  result = qword_1EDA6B370;
  if (!qword_1EDA6B370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B370);
  }

  return result;
}

unint64_t sub_1C8E9BDE0()
{
  result = qword_1EDA6B350;
  if (!qword_1EDA6B350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B350);
  }

  return result;
}

unint64_t sub_1C8E9BE38()
{
  result = qword_1EDA6B358;
  if (!qword_1EDA6B358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B358);
  }

  return result;
}

unint64_t sub_1C8E9BE8C()
{
  result = qword_1EDA66348[0];
  if (!qword_1EDA66348[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDA66348);
  }

  return result;
}

unint64_t sub_1C8E9BEE0()
{
  result = qword_1EDA6C778;
  if (!qword_1EDA6C778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6C778);
  }

  return result;
}

unint64_t sub_1C8E9BF34()
{
  result = qword_1EDA6D030;
  if (!qword_1EDA6D030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6D030);
  }

  return result;
}

void OUTLINED_FUNCTION_23_20(uint64_t a1@<X8>)
{
  *(v3 + a1) = v2;
  *(v3 + *(v4 + 72)) = v1;
  v5 = v3 + *(v4 + 76);
}

double OUTLINED_FUNCTION_29_17()
{
  result = 0.0;
  *(v0 + 296) = 0u;
  *(v0 + 312) = 0u;
  *(v0 + 328) = 0u;
  *(v0 + 344) = 0u;
  *(v0 + 360) = 0u;
  *(v0 + 376) = 0u;
  *(v0 + 392) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_61_9()
{
  result = v1;
  v3 = *(v0 + 24);
  return result;
}

uint64_t OUTLINED_FUNCTION_94_5()
{
  v3 = *(v1 + 8);
  result = v2;
  v5 = *(v0 + 136);
  return result;
}

uint64_t OUTLINED_FUNCTION_103_3()
{
  v2 = *(v1 + 8);
  result = *(v0 + 48);
  v4 = *(v0 + 56);
  return result;
}

uint64_t OUTLINED_FUNCTION_128_3()
{
  sub_1C8D07154(v1, v0);
  sub_1C8D07154(v3, v2);
  return v3;
}

uint64_t OUTLINED_FUNCTION_135_3@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 88);
  *a1 = *(v1 + 80);
  a1[1] = v2;
}

void OUTLINED_FUNCTION_152_4()
{

  JUMPOUT(0x1CCA81A90);
}

uint64_t OUTLINED_FUNCTION_158_5()
{

  return sub_1C9063FBC();
}

uint64_t OUTLINED_FUNCTION_169_4()
{
  v2 = *(v0 - 104);

  return sub_1C9064B8C();
}

void *OUTLINED_FUNCTION_170_6()
{
  *(v0 + 88) = v1;

  return memcpy((v0 + 96), (v2 - 184), 0x60uLL);
}

void *OUTLINED_FUNCTION_185_5@<X0>(uint64_t a1@<X8>)
{
  v1[161] = v2;
  v1[162] = a1;
  v1[2] = a1;
  return v1 + 163;
}

uint64_t OUTLINED_FUNCTION_194_4()
{
  *(v0 - 72) = 1;

  return sub_1C9064B3C();
}

uint64_t OUTLINED_FUNCTION_196_5()
{

  return sub_1C8D63FCC();
}

void OUTLINED_FUNCTION_204_2(uint64_t a1@<X8>)
{
  *(v3 + 16) = v1;
  *(v3 + 24) = a1;
  *(v3 + 32) = *(v2 + 4);
}

uint64_t OUTLINED_FUNCTION_205_3(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = result;
  return result;
}

void OUTLINED_FUNCTION_211_2(__n128 a1)
{
  v1[16] = a1;
  v1[17].n128_u64[0] = 0;
  v1[17].n128_u64[1] = 0;
  v1[18].n128_u8[0] = v2;
}

uint64_t OUTLINED_FUNCTION_216_2()
{
  *(v3 - 152) = v0;
  *(v3 - 144) = v2;
  *(v3 - 88) = v1;
  v5 = *(v3 - 96);

  return sub_1C9064A9C();
}

void *OUTLINED_FUNCTION_235_2()
{
  *(v2 + *(v3 + 108)) = v0;

  return memcpy((v1 + 152), (v1 + 256), 0x61uLL);
}

uint64_t OUTLINED_FUNCTION_236_2()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
}

uint64_t OUTLINED_FUNCTION_248_2()
{

  return sub_1C9063FBC();
}

void *OUTLINED_FUNCTION_255_1@<X0>(uint64_t a1@<X8>)
{
  v2[5] = v1;
  v2[6] = a1;
  v2[8] = 0;
  v2[9] = 0;
  v2[7] = v3;
  return v2 + 24;
}

uint64_t OUTLINED_FUNCTION_258_2()
{
  *(v0 + 1288) = v1;
  *(v0 + 1296) = 0;
  return v0 + 1304;
}

uint64_t OUTLINED_FUNCTION_259_1()
{
  *(v0 + 1288) = v2;
  *(v0 + 1296) = v1;
  return v0 + 1304;
}

uint64_t OUTLINED_FUNCTION_260_0(uint64_t result)
{
  v1 = *(result + 24);
  v2 = *(result + 16) + 1;
  return result;
}

void OUTLINED_FUNCTION_264_2()
{
  v2 = v1[8];
  *(v0 + 16) = v1[2];
  v3 = v1[3];
}

uint64_t OUTLINED_FUNCTION_278_2()
{

  return sub_1C9064A6C();
}

uint64_t OUTLINED_FUNCTION_279_1()
{

  return sub_1C8DFBDB0(v0, 0);
}

uint64_t OUTLINED_FUNCTION_280_1()
{
  v2 = *(v0 - 104);

  return sub_1C9064B8C();
}

uint64_t OUTLINED_FUNCTION_281_1()
{

  return sub_1C9064C2C();
}

uint64_t OUTLINED_FUNCTION_285_2()
{
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
}

uint64_t OUTLINED_FUNCTION_288_2()
{

  return sub_1C9064A6C();
}

uint64_t OUTLINED_FUNCTION_289_1()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
}

void SystemToolProtocol.identifier.getter(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 5);
  v4 = v1[6];
  switch(*(v1 + 56))
  {
    case 1:
      *a1 = 2;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
      *(a1 + 32) = 2;
      return;
    case 2:
      v5 = 3;
      goto LABEL_17;
    case 3:
      v5 = 5;
      goto LABEL_17;
    case 4:
      v5 = 9;
      goto LABEL_17;
    case 5:
      v5 = 34;
      goto LABEL_17;
    case 6:
      v5 = 51;
      goto LABEL_17;
    case 7:
      v5 = 58;
      goto LABEL_17;
    case 8:
      v5 = 60;
      goto LABEL_17;
    case 9:
      v5 = 14;
      goto LABEL_17;
    case 0xA:
      v7 = v1[3];
      v6 = v1[4];
      v8 = v1[2];
      v9 = vorrq_s8(v3, vdupq_laneq_s64(v2, 1)).u64[0];
      v10 = *v1;
      if (v9 | v2.i64[0] | v4 | v6 | v7 | v8)
      {
        v2.i64[1] = v9 | v4 | v6 | v7 | v8;
        v11 = vmovn_s64(vceqq_s64(v2, xmmword_1C9088D50));
        if (v11.i32[0] & v11.i32[1])
        {
          v5 = 1;
        }

        else
        {
          OUTLINED_FUNCTION_29_1();
          if (v12)
          {
            v5 = 4;
          }

          else
          {
            OUTLINED_FUNCTION_29_1();
            if (v13)
            {
              v5 = 6;
            }

            else
            {
              OUTLINED_FUNCTION_29_1();
              if (v14)
              {
                v5 = 7;
              }

              else
              {
                OUTLINED_FUNCTION_29_1();
                if (v15)
                {
                  v5 = 8;
                }

                else
                {
                  OUTLINED_FUNCTION_29_1();
                  if (v16)
                  {
                    v5 = 10;
                  }

                  else
                  {
                    OUTLINED_FUNCTION_29_1();
                    if (v17)
                    {
                      v5 = 11;
                    }

                    else
                    {
                      OUTLINED_FUNCTION_29_1();
                      if (v18)
                      {
                        v5 = 12;
                      }

                      else
                      {
                        OUTLINED_FUNCTION_29_1();
                        if (v19)
                        {
                          v5 = 13;
                        }

                        else
                        {
                          OUTLINED_FUNCTION_29_1();
                          if (v20)
                          {
                            v5 = 15;
                          }

                          else
                          {
                            OUTLINED_FUNCTION_29_1();
                            if (v21)
                            {
                              v5 = 16;
                            }

                            else
                            {
                              OUTLINED_FUNCTION_29_1();
                              if (v22)
                              {
                                v5 = 17;
                              }

                              else
                              {
                                OUTLINED_FUNCTION_29_1();
                                if (v23)
                                {
                                  v5 = 18;
                                }

                                else
                                {
                                  OUTLINED_FUNCTION_29_1();
                                  if (v24)
                                  {
                                    v5 = 19;
                                  }

                                  else
                                  {
                                    OUTLINED_FUNCTION_29_1();
                                    if (v25)
                                    {
                                      v5 = 20;
                                    }

                                    else
                                    {
                                      OUTLINED_FUNCTION_29_1();
                                      if (v26)
                                      {
                                        v5 = 21;
                                      }

                                      else
                                      {
                                        OUTLINED_FUNCTION_29_1();
                                        if (v27)
                                        {
                                          v5 = 22;
                                        }

                                        else
                                        {
                                          OUTLINED_FUNCTION_29_1();
                                          if (v28)
                                          {
                                            v5 = 23;
                                          }

                                          else
                                          {
                                            OUTLINED_FUNCTION_29_1();
                                            if (v29)
                                            {
                                              v5 = 24;
                                            }

                                            else
                                            {
                                              OUTLINED_FUNCTION_29_1();
                                              if (v30)
                                              {
                                                v5 = 25;
                                              }

                                              else
                                              {
                                                OUTLINED_FUNCTION_29_1();
                                                if (v31)
                                                {
                                                  v5 = 26;
                                                }

                                                else
                                                {
                                                  OUTLINED_FUNCTION_29_1();
                                                  if (v32)
                                                  {
                                                    v5 = 27;
                                                  }

                                                  else
                                                  {
                                                    OUTLINED_FUNCTION_29_1();
                                                    if (v33)
                                                    {
                                                      v5 = 28;
                                                    }

                                                    else
                                                    {
                                                      OUTLINED_FUNCTION_29_1();
                                                      if (v34)
                                                      {
                                                        v5 = 29;
                                                      }

                                                      else
                                                      {
                                                        OUTLINED_FUNCTION_29_1();
                                                        if (v35)
                                                        {
                                                          v5 = 30;
                                                        }

                                                        else
                                                        {
                                                          OUTLINED_FUNCTION_29_1();
                                                          if (v36)
                                                          {
                                                            v5 = 31;
                                                          }

                                                          else
                                                          {
                                                            OUTLINED_FUNCTION_29_1();
                                                            if (v37)
                                                            {
                                                              v5 = 32;
                                                            }

                                                            else
                                                            {
                                                              OUTLINED_FUNCTION_29_1();
                                                              if (v38)
                                                              {
                                                                v5 = 33;
                                                              }

                                                              else
                                                              {
                                                                OUTLINED_FUNCTION_29_1();
                                                                if (v39)
                                                                {
                                                                  v5 = 35;
                                                                }

                                                                else
                                                                {
                                                                  OUTLINED_FUNCTION_29_1();
                                                                  if (v40)
                                                                  {
                                                                    v5 = 36;
                                                                  }

                                                                  else
                                                                  {
                                                                    OUTLINED_FUNCTION_29_1();
                                                                    if (v41)
                                                                    {
                                                                      v5 = 37;
                                                                    }

                                                                    else
                                                                    {
                                                                      OUTLINED_FUNCTION_29_1();
                                                                      if (v42)
                                                                      {
                                                                        v5 = 38;
                                                                      }

                                                                      else
                                                                      {
                                                                        OUTLINED_FUNCTION_29_1();
                                                                        if (v43)
                                                                        {
                                                                          v5 = 39;
                                                                        }

                                                                        else
                                                                        {
                                                                          OUTLINED_FUNCTION_29_1();
                                                                          if (v44)
                                                                          {
                                                                            v5 = 40;
                                                                          }

                                                                          else
                                                                          {
                                                                            OUTLINED_FUNCTION_29_1();
                                                                            if (v45)
                                                                            {
                                                                              v5 = 41;
                                                                            }

                                                                            else
                                                                            {
                                                                              OUTLINED_FUNCTION_29_1();
                                                                              if (v46)
                                                                              {
                                                                                v5 = 42;
                                                                              }

                                                                              else
                                                                              {
                                                                                OUTLINED_FUNCTION_29_1();
                                                                                if (v47)
                                                                                {
                                                                                  v5 = 43;
                                                                                }

                                                                                else
                                                                                {
                                                                                  OUTLINED_FUNCTION_29_1();
                                                                                  if (v48)
                                                                                  {
                                                                                    v5 = 44;
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    OUTLINED_FUNCTION_29_1();
                                                                                    if (v49)
                                                                                    {
                                                                                      v5 = 45;
                                                                                    }

                                                                                    else
                                                                                    {
                                                                                      OUTLINED_FUNCTION_29_1();
                                                                                      if (v50)
                                                                                      {
                                                                                        v5 = 46;
                                                                                      }

                                                                                      else
                                                                                      {
                                                                                        OUTLINED_FUNCTION_29_1();
                                                                                        if (v51)
                                                                                        {
                                                                                          v5 = 47;
                                                                                        }

                                                                                        else
                                                                                        {
                                                                                          OUTLINED_FUNCTION_29_1();
                                                                                          if (v52)
                                                                                          {
                                                                                            v5 = 48;
                                                                                          }

                                                                                          else
                                                                                          {
                                                                                            OUTLINED_FUNCTION_29_1();
                                                                                            if (v53)
                                                                                            {
                                                                                              v5 = 49;
                                                                                            }

                                                                                            else
                                                                                            {
                                                                                              OUTLINED_FUNCTION_29_1();
                                                                                              if (v54)
                                                                                              {
                                                                                                v5 = 50;
                                                                                              }

                                                                                              else
                                                                                              {
                                                                                                OUTLINED_FUNCTION_29_1();
                                                                                                if (v55)
                                                                                                {
                                                                                                  v5 = 52;
                                                                                                }

                                                                                                else
                                                                                                {
                                                                                                  OUTLINED_FUNCTION_29_1();
                                                                                                  if (v56)
                                                                                                  {
                                                                                                    v5 = 53;
                                                                                                  }

                                                                                                  else
                                                                                                  {
                                                                                                    OUTLINED_FUNCTION_29_1();
                                                                                                    if (v57)
                                                                                                    {
                                                                                                      v5 = 54;
                                                                                                    }

                                                                                                    else
                                                                                                    {
                                                                                                      OUTLINED_FUNCTION_29_1();
                                                                                                      if (v58)
                                                                                                      {
                                                                                                        v5 = 55;
                                                                                                      }

                                                                                                      else
                                                                                                      {
                                                                                                        OUTLINED_FUNCTION_29_1();
                                                                                                        if (v59)
                                                                                                        {
                                                                                                          v5 = 56;
                                                                                                        }

                                                                                                        else
                                                                                                        {
                                                                                                          OUTLINED_FUNCTION_29_1();
                                                                                                          if (v60)
                                                                                                          {
                                                                                                            v5 = 57;
                                                                                                          }

                                                                                                          else
                                                                                                          {
                                                                                                            OUTLINED_FUNCTION_29_1();
                                                                                                            if (v63)
                                                                                                            {
                                                                                                              v5 = 59;
                                                                                                            }

                                                                                                            else if (((v61 == 52) & v62) != 0)
                                                                                                            {
                                                                                                              v5 = 61;
                                                                                                            }

                                                                                                            else
                                                                                                            {
                                                                                                              v5 = 62;
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
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }

LABEL_17:
        *a1 = v5;
        *(a1 + 8) = 0;
        *(a1 + 16) = 0;
        *(a1 + 24) = 0;
      }

      else
      {
        *a1 = 0u;
        *(a1 + 16) = 0u;
      }

      *(a1 + 32) = 2;
      return;
    default:
      *a1 = v2;
      *(a1 + 16) = v3;
      *(a1 + 32) = 1;

      return;
  }
}

void SystemToolProtocol.Identifier.init(rawValue:)(uint64_t a1, unint64_t a2)
{
  v3 = a1 == 0x6E65746E49707061 && a2 == 0xE900000000000074;
  if (!v3 && (OUTLINED_FUNCTION_14_3() & 1) == 0)
  {
    OUTLINED_FUNCTION_1_3();
    v7 = a1 == 0xD000000000000012 && v6 == a2;
    if (v7 || (OUTLINED_FUNCTION_14_3() & 1) != 0)
    {

      v5 = 1;
      goto LABEL_7;
    }

    v9 = a1 == OUTLINED_FUNCTION_43_14() && a2 == v8;
    if (v9 || (OUTLINED_FUNCTION_14_3() & 1) != 0)
    {

      v5 = 3;
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_1_3();
    v11 = a1 == 0xD000000000000015 && v10 == a2;
    if (v11 || (OUTLINED_FUNCTION_14_3() & 1) != 0)
    {

      v5 = 4;
      goto LABEL_7;
    }

    v13 = a1 == OUTLINED_FUNCTION_52_11() && a2 == v12;
    if (v13 || (OUTLINED_FUNCTION_14_3() & 1) != 0)
    {

      v5 = 5;
      goto LABEL_7;
    }

    v14 = a1 == OUTLINED_FUNCTION_106_4() && a2 == 0xE800000000000000;
    if (v14 || (OUTLINED_FUNCTION_14_3() & 1) != 0)
    {

      v5 = 6;
      goto LABEL_7;
    }

    v16 = a1 == OUTLINED_FUNCTION_50_12() && a2 == v15;
    if (v16 || (OUTLINED_FUNCTION_14_3() & 1) != 0)
    {

      v5 = 7;
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_1_3();
    v18 = a1 == 0xD000000000000010 && v17 == a2;
    if (v18 || (OUTLINED_FUNCTION_14_3() & 1) != 0)
    {

      v5 = 8;
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_54_7();
    v20 = v3 && v19 == a2;
    if (v20 || (OUTLINED_FUNCTION_131_3(), (OUTLINED_FUNCTION_14_3() & 1) != 0))
    {

      v5 = 9;
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_77_4();
    v22 = v3 && v21 == a2;
    if (v22 || (OUTLINED_FUNCTION_14_3() & 1) != 0)
    {

      v5 = 10;
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_1_3();
    v24 = a1 == 0xD000000000000013 && v23 == a2;
    if (v24 || (OUTLINED_FUNCTION_14_3() & 1) != 0)
    {

      v5 = 11;
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_1_3();
    v26 = a1 == 0xD000000000000011 && v25 == a2;
    if (v26 || (OUTLINED_FUNCTION_14_3() & 1) != 0)
    {

      v5 = 12;
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_77_4();
    v28 = v3 && v27 == a2;
    if (v28 || (OUTLINED_FUNCTION_14_3() & 1) != 0)
    {

      v5 = 13;
      goto LABEL_7;
    }

    v29 = a1 == 7632227 && a2 == 0xE300000000000000;
    if (v29 || (OUTLINED_FUNCTION_14_3() & 1) != 0)
    {

      v5 = 16;
      goto LABEL_7;
    }

    v30 = a1 == 2037411683 && a2 == 0xE400000000000000;
    if (v30 || (OUTLINED_FUNCTION_14_3() & 1) != 0)
    {

      v5 = 17;
      goto LABEL_7;
    }

    v31 = a1 == 0x6574736170 && a2 == 0xE500000000000000;
    if (v31 || (OUTLINED_FUNCTION_14_3() & 1) != 0)
    {

      v5 = 18;
      goto LABEL_7;
    }

    v32 = a1 == 0x6C65636E6163 && a2 == 0xE600000000000000;
    if (v32 || (OUTLINED_FUNCTION_14_3() & 1) != 0)
    {

      v5 = 19;
      goto LABEL_7;
    }

    v33 = a1 == 0x657A69736572 && a2 == 0xE600000000000000;
    if (v33 || (OUTLINED_FUNCTION_14_3() & 1) != 0)
    {

      v5 = 20;
      goto LABEL_7;
    }

    v34 = a1 == 0x6C6C6F726373 && a2 == 0xE600000000000000;
    if (v34 || (OUTLINED_FUNCTION_14_3() & 1) != 0)
    {

      v5 = 21;
      goto LABEL_7;
    }

    v35 = a1 == 1868852853 && a2 == 0xE400000000000000;
    if (v35 || (OUTLINED_FUNCTION_14_3() & 1) != 0)
    {

      v5 = 22;
      goto LABEL_7;
    }

    v36 = a1 == 1836019578 && a2 == 0xE400000000000000;
    if (v36 || (OUTLINED_FUNCTION_14_3() & 1) != 0)
    {

      v5 = 23;
      goto LABEL_7;
    }

    v38 = a1 == OUTLINED_FUNCTION_57_9() && a2 == v37;
    if (v38 || (OUTLINED_FUNCTION_14_3() & 1) != 0)
    {

      v5 = 24;
      goto LABEL_7;
    }

    v39 = a1 == 0x6E45657461657263 && a2 == 0xEC00000079746974;
    if (v39 || (OUTLINED_FUNCTION_14_3() & 1) != 0)
    {

      v5 = 25;
      goto LABEL_7;
    }

    v40 = a1 == OUTLINED_FUNCTION_100_7() && a2 == 0xE900000000000079;
    if (v40 || (OUTLINED_FUNCTION_14_3() & 1) != 0)
    {

      v5 = 26;
      goto LABEL_7;
    }

    v41 = a1 == 0x6E456574656C6564 && a2 == 0xEC00000079746974;
    if (v41 || (OUTLINED_FUNCTION_14_3() & 1) != 0)
    {

      v5 = 27;
      goto LABEL_7;
    }

    v43 = a1 == (OUTLINED_FUNCTION_56_8() & 0xFFFFFFFFFFFFLL | 0x7461000000000000) && a2 == v42;
    if (v43 || (OUTLINED_FUNCTION_14_3() & 1) != 0)
    {

      v5 = 28;
      goto LABEL_7;
    }

    v45 = a1 == OUTLINED_FUNCTION_47_12() && a2 == v44;
    if (v45 || (OUTLINED_FUNCTION_14_3() & 1) != 0)
    {

      v5 = 29;
      goto LABEL_7;
    }

    v46 = a1 == 0x69746E456E65706FLL && a2 == 0xEA00000000007974;
    if (v46 || (OUTLINED_FUNCTION_14_3() & 1) != 0)
    {

      v5 = 30;
      goto LABEL_7;
    }

    v48 = a1 == OUTLINED_FUNCTION_42_11() && a2 == v47;
    if (v48 || (OUTLINED_FUNCTION_14_3() & 1) != 0)
    {

      v5 = 31;
      goto LABEL_7;
    }

    v49 = a1 == 0x69746E4565766173 && a2 == 0xEA00000000007974;
    if (v49 || (OUTLINED_FUNCTION_14_3() & 1) != 0)
    {

      v5 = 32;
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_54_7();
    v51 = v3 && v50 == a2;
    if (v51 || (OUTLINED_FUNCTION_131_3(), (OUTLINED_FUNCTION_14_3() & 1) != 0))
    {

      v5 = 33;
      goto LABEL_7;
    }

    v52 = a1 == OUTLINED_FUNCTION_99_6() && a2 == 0xE90000000000006FLL;
    if (v52 || (OUTLINED_FUNCTION_14_3() & 1) != 0)
    {

      v5 = 34;
      goto LABEL_7;
    }

    v54 = a1 == OUTLINED_FUNCTION_46_10() && a2 == v53;
    if (v54 || (OUTLINED_FUNCTION_14_3() & 1) != 0)
    {

      v5 = 35;
      goto LABEL_7;
    }

    v56 = a1 == OUTLINED_FUNCTION_45_16() && a2 == v55;
    if (v56 || (OUTLINED_FUNCTION_14_3() & 1) != 0)
    {

      v5 = 36;
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_1_3();
    v58 = a1 == 0xD000000000000016 && v57 == a2;
    if (v58 || (OUTLINED_FUNCTION_14_3() & 1) != 0)
    {

      v5 = 37;
      goto LABEL_7;
    }

    v59 = a1 == OUTLINED_FUNCTION_98_5() && a2 == 0xE900000000000065;
    if (v59 || (OUTLINED_FUNCTION_14_3() & 1) != 0)
    {

      v5 = 38;
      goto LABEL_7;
    }

    v60 = a1 == 0x726F577472617473 && a2 == 0xEC00000074756F6BLL;
    if (v60 || (OUTLINED_FUNCTION_14_3() & 1) != 0)
    {

      v5 = 39;
      goto LABEL_7;
    }

    v61 = a1 == 0x726F576573756170 && a2 == 0xEC00000074756F6BLL;
    if (v61 || (OUTLINED_FUNCTION_14_3() & 1) != 0)
    {

      v5 = 40;
      goto LABEL_7;
    }

    v63 = a1 == OUTLINED_FUNCTION_44_17() && a2 == v62;
    if (v63 || (OUTLINED_FUNCTION_14_3() & 1) != 0)
    {

      v5 = 41;
      goto LABEL_7;
    }

    v65 = a1 == OUTLINED_FUNCTION_55_8() && a2 == v64;
    if (v65 || (OUTLINED_FUNCTION_14_3() & 1) != 0)
    {

      v5 = 42;
      goto LABEL_7;
    }

    v66 = a1 == OUTLINED_FUNCTION_97_6() && a2 == 0xEA00000000007075;
    if (v66 || (OUTLINED_FUNCTION_14_3() & 1) != 0)
    {

      v5 = 43;
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_1_3();
    v68 = a1 == 0xD000000000000012 && v67 == a2;
    if (v68 || (OUTLINED_FUNCTION_14_3() & 1) != 0)
    {

      v5 = 44;
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_1_3();
    v70 = a1 == 0xD000000000000013 && v69 == a2;
    if (v70 || (OUTLINED_FUNCTION_14_3() & 1) != 0)
    {

      v5 = 45;
      goto LABEL_7;
    }

    v71 = a1 == OUTLINED_FUNCTION_105_3() && a2 == 0xE600000000000000;
    if (v71 || (OUTLINED_FUNCTION_14_3() & 1) != 0)
    {

      v5 = 47;
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_1_3();
    v73 = a1 == 0xD000000000000016 && v72 == a2;
    if (v73 || (OUTLINED_FUNCTION_14_3() & 1) != 0)
    {

      v5 = 48;
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_1_3();
    v75 = a1 == 0xD00000000000001CLL && v74 == a2;
    if (v75 || (OUTLINED_FUNCTION_14_3() & 1) != 0)
    {

      v5 = 49;
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_1_3();
    v77 = a1 == 0xD000000000000016 && v76 == a2;
    if (v77 || (OUTLINED_FUNCTION_14_3() & 1) != 0)
    {

      v5 = 50;
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_1_3();
    v79 = a1 == 0xD00000000000001CLL && v78 == a2;
    if (v79 || (OUTLINED_FUNCTION_14_3() & 1) != 0)
    {

      v5 = 51;
      goto LABEL_7;
    }

    v81 = a1 == (OUTLINED_FUNCTION_66_9() & 0xFFFFFFFFFFFFLL | 0x7461000000000000) && a2 == v80;
    if (v81 || (OUTLINED_FUNCTION_14_3() & 1) != 0)
    {

      v5 = 52;
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_54_7();
    v83 = v3 && v82 == a2;
    if (v83 || (OUTLINED_FUNCTION_131_3(), (OUTLINED_FUNCTION_14_3() & 1) != 0))
    {

      v5 = 53;
      goto LABEL_7;
    }

    v84 = a1 == 0x676E697473 && a2 == 0xE500000000000000;
    if (v84 || (OUTLINED_FUNCTION_14_3() & 1) != 0)
    {

      v5 = 54;
      goto LABEL_7;
    }

    v85 = a1 == 0x656C67676F74 && a2 == 0xE600000000000000;
    if (v85 || (OUTLINED_FUNCTION_14_3() & 1) != 0)
    {

      v5 = 55;
      goto LABEL_7;
    }

    v87 = a1 == OUTLINED_FUNCTION_51_10() && a2 == v86;
    if (v87 || (OUTLINED_FUNCTION_14_3() & 1) != 0)
    {

      v5 = 56;
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_77_4();
    v89 = v3 && v88 == a2;
    if (v89 || (OUTLINED_FUNCTION_14_3() & 1) != 0)
    {

      v5 = 57;
      goto LABEL_7;
    }

    v91 = a1 == OUTLINED_FUNCTION_49_11() && a2 == v90;
    if (v91 || (OUTLINED_FUNCTION_14_3() & 1) != 0)
    {

      v5 = 58;
      goto LABEL_7;
    }

    v93 = a1 == OUTLINED_FUNCTION_48_12() && a2 == v92;
    if (v93 || (OUTLINED_FUNCTION_14_3() & 1) != 0)
    {

      v5 = 60;
      goto LABEL_7;
    }

    v94 = a1 == OUTLINED_FUNCTION_104_5() && a2 == 0xE800000000000000;
    if (v94 || (OUTLINED_FUNCTION_14_3() & 1) != 0)
    {

      v5 = 61;
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_54_7();
    v96 = v3 && v95 == a2;
    if (v96 || (OUTLINED_FUNCTION_131_3(), (OUTLINED_FUNCTION_14_3() & 1) != 0))
    {

      v5 = 62;
      goto LABEL_7;
    }

    v97 = a1 == OUTLINED_FUNCTION_96_5() && a2 == 0xEA00000000007463;
    if (v97 || (OUTLINED_FUNCTION_14_3() & 1) != 0)
    {

      v5 = 14;
      goto LABEL_7;
    }

    v99 = a1 == OUTLINED_FUNCTION_59_11() && a2 == v98;
    if (v99 || (OUTLINED_FUNCTION_14_3() & 1) != 0)
    {

      v5 = 15;
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_54_7();
    v101 = v3 && v100 == a2;
    if (v101 || (OUTLINED_FUNCTION_131_3(), (OUTLINED_FUNCTION_14_3() & 1) != 0))
    {

      v5 = 46;
      goto LABEL_7;
    }

    v103 = a1 == OUTLINED_FUNCTION_58_8() && a2 == v102;
    if (v103 || (OUTLINED_FUNCTION_14_3() & 1) != 0)
    {

      v5 = 59;
      goto LABEL_7;
    }

    sub_1C8E35EFC();
    sub_1C8D1EA80();
    v135 = sub_1C9063E8C();
    if (v135)
    {
      sub_1C8CBAEDC();
      v104 = sub_1C906466C();
      sub_1C8E9E6CC(v104);
      v106 = v105;

      if (v106)
      {
        v107 = OUTLINED_FUNCTION_127();
        v108 = MEMORY[0x1CCA81A20](v107);
        v139 = v109;
        v140 = v108;
        v110 = sub_1C906316C();
        v111 = OUTLINED_FUNCTION_127();
        MEMORY[0x1CCA81A20](v111);

        v112 = OUTLINED_FUNCTION_127();
        v114 = sub_1C8E9E2B0(v112, v113, v110);
        v116 = v115;

        if (v116)
        {
          v117 = v114;
        }

        else
        {
          v117 = 0x446E776F6E6B6E55;
        }

        v118 = 0xED00006E69616D6FLL;
        if (v116)
        {
          v118 = v116;
        }

        v137 = v118;
        v138 = v117;
        v119 = 1;
      }

      else
      {
        v139 = 0;
        v140 = 0;
        v137 = 0;
        v138 = 0;
        v119 = 2;
      }

      v136 = v119;
    }

    if (sub_1C9063E8C())
    {
      v120 = sub_1C9063FCC();
      v121 = __OFADD__(v120, 1);
      v122 = v120 + 1;
      if (v121)
      {
        __break(1u);
      }

      else
      {
        sub_1C8E9E5F8(v122, a1, a2);
        sub_1C8E35F50();
        v123 = sub_1C906466C();

        if (v123[2])
        {
          v124 = v123[4];
          v125 = v123[5];
          v127 = v123[6];
          v126 = v123[7];
          v128 = sub_1C8E9E6CC(v123);
          v130 = v129;
          v132 = v131;
          v134 = v133;

          if (v134)
          {
            MEMORY[0x1CCA81A20](v128, v130, v132, v134);

            MEMORY[0x1CCA81A20](v124, v125, v127, v126);

            if (v135)
            {
              sub_1C8D3ED20(v140, v139, v138, v137, v136);
            }

LABEL_396:
            v5 = 0;
            goto LABEL_7;
          }
        }
      }
    }

    if (v135)
    {
      sub_1C8D3ED20(v140, v139, v138, v137, v136);
    }

    goto LABEL_396;
  }

  v5 = 2;
LABEL_7:
  OUTLINED_FUNCTION_111_3(v5);
}

void SystemToolProtocol.Identifier.rawValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  if (!*(v0 + 32))
  {
    OUTLINED_FUNCTION_72_4();
    goto LABEL_5;
  }

  v3 = v0[2];
  v4 = v0[3];
  if (*(v0 + 32) == 1)
  {
    OUTLINED_FUNCTION_72_4();
    MEMORY[0x1CCA81A90]();
    MEMORY[0x1CCA81A90](46, 0xE100000000000000);
LABEL_5:
    MEMORY[0x1CCA81A90](v1, v2);
    return;
  }

  if (v3 | v2 | v1 | v4)
  {
    v5 = v3 | v2 | v4;
    if (v1 == 1 && v5 == 0)
    {
      goto LABEL_136;
    }

    if (v1 == 2 && !v5)
    {
      return;
    }

    if (v1 == 3 && !v5)
    {
      OUTLINED_FUNCTION_43_14();
      return;
    }

    if (v1 == 4 && !v5)
    {
      goto LABEL_136;
    }

    if (v1 == 5 && !v5)
    {
      OUTLINED_FUNCTION_52_11();
      return;
    }

    if (v1 == 6 && !v5)
    {
      OUTLINED_FUNCTION_106_4();
      return;
    }

    if (v1 == 7 && !v5)
    {
      OUTLINED_FUNCTION_50_12();
      return;
    }

    if (v1 == 8 && !v5)
    {
      goto LABEL_136;
    }

    if (v1 == 9 && !v5)
    {
      goto LABEL_35;
    }

    if (v1 == 10 && !v5 || v1 == 11 && !v5 || v1 == 12 && !v5 || v1 == 13 && !v5)
    {
LABEL_136:
      OUTLINED_FUNCTION_0_42();
      return;
    }

    if (v1 == 14 && !v5)
    {
      OUTLINED_FUNCTION_96_5();
      return;
    }

    if (v1 == 15 && !v5)
    {
      OUTLINED_FUNCTION_59_11();
      return;
    }

    if ((v1 != 16 || v5) && (v1 != 17 || v5) && (v1 != 18 || v5) && (v1 != 19 || v5) && (v1 != 20 || v5) && (v1 != 21 || v5) && (v1 != 22 || v5) && (v1 != 23 || v5))
    {
      if (v1 == 24 && !v5)
      {
        OUTLINED_FUNCTION_57_9();
        return;
      }

      if (v1 != 25 || v5)
      {
        if (v1 == 26 && !v5)
        {
          OUTLINED_FUNCTION_100_7();
          return;
        }

        if (v1 != 27 || v5)
        {
          if (v1 == 28 && !v5)
          {
            OUTLINED_FUNCTION_56_8();
            return;
          }

          if (v1 == 29 && !v5)
          {
            OUTLINED_FUNCTION_47_12();
            return;
          }

          if (v1 != 30 || v5)
          {
            if (v1 == 31 && !v5)
            {
              OUTLINED_FUNCTION_42_11();
              return;
            }

            if (v1 != 32 || v5)
            {
              if (v1 == 33 && !v5)
              {
                goto LABEL_35;
              }

              if (v1 == 34 && !v5)
              {
                OUTLINED_FUNCTION_99_6();
                return;
              }

              if (v1 == 35 && !v5)
              {
                OUTLINED_FUNCTION_46_10();
                return;
              }

              if (v1 == 36 && !v5)
              {
                OUTLINED_FUNCTION_45_16();
                return;
              }

              if (v1 == 37 && !v5)
              {
                goto LABEL_136;
              }

              if (v1 == 38 && !v5)
              {
                OUTLINED_FUNCTION_98_5();
                return;
              }

              if ((v1 != 39 || v5) && (v1 != 40 || v5))
              {
                if (v1 == 41 && !v5)
                {
                  OUTLINED_FUNCTION_44_17();
                  return;
                }

                if (v1 == 42 && !v5)
                {
                  OUTLINED_FUNCTION_55_8();
                  return;
                }

                if (v1 == 43 && !v5)
                {
                  OUTLINED_FUNCTION_97_6();
                  return;
                }

                if (v1 == 44 && !v5 || v1 == 45 && !v5)
                {
                  goto LABEL_136;
                }

                if (v1 == 46 && !v5)
                {
LABEL_35:
                  OUTLINED_FUNCTION_131_3();
                  goto LABEL_155;
                }

                if (v1 == 47 && !v5)
                {
                  OUTLINED_FUNCTION_105_3();
                  return;
                }

                if (v1 == 48 && !v5 || v1 == 49 && !v5 || v1 == 50 && !v5 || v1 == 51 && !v5)
                {
                  goto LABEL_136;
                }

                if (v1 == 52 && !v5)
                {
                  OUTLINED_FUNCTION_66_9();
                  return;
                }

                OUTLINED_FUNCTION_131_3();
                if (v1 == 53 && !v7)
                {
                  goto LABEL_155;
                }

                if ((v1 != 54 || v7) && (v1 != 55 || v7))
                {
                  if (v1 == 56 && !v7)
                  {
                    OUTLINED_FUNCTION_51_10();
                    return;
                  }

                  if (v1 != 57 || v7)
                  {
                    if (v1 == 58 && !v7)
                    {
                      OUTLINED_FUNCTION_49_11();
                      return;
                    }

                    if (v1 == 59 && !v7)
                    {
                      OUTLINED_FUNCTION_58_8();
                      return;
                    }

                    if (v1 == 60 && !v7)
                    {
                      OUTLINED_FUNCTION_48_12();
                      return;
                    }

                    if (v1 == 61 && !v7)
                    {
                      OUTLINED_FUNCTION_104_5();
                      return;
                    }
                  }

LABEL_155:
                  OUTLINED_FUNCTION_1_3();
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1C8E9E2B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_1C8CAE064();
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = (*(a3 + 56) + 16 * v4);
  v7 = *v6;
  v8 = v6[1];

  return v7;
}

void *sub_1C8E9E308(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_1C8D59AE4(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 8 * v3);
  v6 = v5;
  return v5;
}

uint64_t sub_1C8E9E37C@<X0>(uint64_t a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t (*a3)(void)@<X4>, uint64_t a4@<X8>)
{
  if (*(a1 + 16) && (v8 = sub_1C8CAE064(), (v9 & 1) != 0))
  {
    v10 = v8;
    v11 = *(a1 + 56);
    v12 = a2(0);
    OUTLINED_FUNCTION_10_0(v12);
    sub_1C8EB58B0(v11 + *(v13 + 72) * v10, a4, a3);
    v14 = a4;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v16 = a2(0);
    v14 = a4;
    v15 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v14, v15, 1, v16);
}

double sub_1C8E9E49C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (*(a2 + 16) && (v4 = sub_1C8D59B28(a1), (v5 & 1) != 0))
  {
    v6 = OUTLINED_FUNCTION_85_3(v4);

    sub_1C8CB795C(v6, v7);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

void *sub_1C8E9E4F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_1C8CAE064();
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
  v7 = v6;
  return v6;
}

double sub_1C8E9E540@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (*(a2 + 16) && (v4 = sub_1C8D59BF0(a1), (v5 & 1) != 0))
  {
    v6 = OUTLINED_FUNCTION_85_3(v4);

    sub_1C8CB795C(v6, v7);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

double sub_1C8E9E59C@<D0>(uint64_t a1@<X2>, _OWORD *a2@<X8>)
{
  if (*(a1 + 16) && (v3 = sub_1C8CAE064(), (v4 & 1) != 0))
  {
    v5 = OUTLINED_FUNCTION_85_3(v3);

    sub_1C8CB795C(v5, v6);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

unint64_t sub_1C8E9E5F8(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if ((a3 & 0x2000000000000000) != 0)
    {
      v3 = HIBYTE(a3) & 0xF;
    }

    else
    {
      v3 = a2 & 0xFFFFFFFFFFFFLL;
    }

    v4 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v4 = 11;
    }

    v5 = v4 | (v3 << 16);
    result = sub_1C9063FDC();
    if (v6)
    {
      result = v5;
    }

    if (4 * v3 >= result >> 14)
    {
      v7 = sub_1C90640BC();

      return v7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8E9E6CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = (a1 + 32 * v1);
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];

  return v3;
}

uint64_t static SystemToolProtocol.== infix(_:_:)(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v34[0] = *a1;
  v34[1] = v2;
  *v35 = a1[2];
  v3 = *v35;
  v4 = a2[1];
  v36 = *a2;
  v37 = v4;
  v6 = *a2;
  v5 = a2[1];
  *v38 = a2[2];
  *&v38[9] = *(a2 + 41);
  v7 = *(a1 + 41);
  *&v35[9] = v7;
  v39[0] = v34[0];
  v39[1] = v2;
  v40[0] = v3;
  *(v40 + 9) = v7;
  v40[2] = v6;
  v40[3] = v5;
  v41[0] = a2[2];
  *(v41 + 9) = *(a2 + 41);
  v8 = *(v34 + 1) | ((*(v34 + 5) | (BYTE7(v34[0]) << 16)) << 32);
  v9 = v2;
  v10 = LOBYTE(v34[0]) | (v8 << 8);
  v11 = v7 >> 56;
  v12 = (*(v34 + 9) << 8) | ((*(v34 + 13) | (HIBYTE(v34[0]) << 16)) << 40) | BYTE8(v34[0]);
  switch(HIBYTE(v7))
  {
    case 1:
      if (v38[24] == 1)
      {
        goto LABEL_13;
      }

      goto LABEL_51;
    case 2:
      if (v38[24] == 2)
      {
        goto LABEL_13;
      }

      goto LABEL_51;
    case 3:
      if (v38[24] == 3)
      {
        goto LABEL_19;
      }

      goto LABEL_51;
    case 4:
      if (v38[24] != 4)
      {
        goto LABEL_52;
      }

      sub_1C8EAF644(v39);
      v13 = LOBYTE(v34[0]) ^ v36 ^ 1;
      return v13 & 1;
    case 5:
      if (v38[24] != 5)
      {
        goto LABEL_51;
      }

      goto LABEL_19;
    case 6:
      if (v38[24] != 6)
      {
        goto LABEL_51;
      }

LABEL_19:
      sub_1C8CEB10C(LOBYTE(v34[0]) | (v8 << 8), v36);
      goto LABEL_20;
    case 7:
      if (v38[24] != 7)
      {
        goto LABEL_51;
      }

LABEL_13:
      v14 = v10 == v36 && v12 == *(&v36 + 1);
      if (!v14)
      {
        goto LABEL_17;
      }

      goto LABEL_47;
    case 8:
      if (v38[24] != 8)
      {
        goto LABEL_50;
      }

      v18 = v10 == v36 && v12 == *(&v36 + 1);
      if (!v18 && (sub_1C9064C2C() & 1) == 0)
      {
        sub_1C8D0717C(&v36, v33);
        v20 = v34;
        goto LABEL_53;
      }

      if (v9 != v37 || *(&v9 + 1) != *(&v37 + 1))
      {
LABEL_17:
        v15 = sub_1C9064C2C();
        goto LABEL_20;
      }

LABEL_47:
      sub_1C8D0717C(&v36, v33);
      sub_1C8D0717C(v34, v33);
      goto LABEL_48;
    case 9:
      if (v38[24] != 9)
      {
        goto LABEL_52;
      }

      sub_1C8EAF644(v39);
      if (BYTE8(v34[0]))
      {
        if (v10)
        {
          if ((BYTE8(v36) & 1) != 0 && v36)
          {
            goto LABEL_49;
          }
        }

        else if ((BYTE8(v36) & 1) != 0 && !v36)
        {
          goto LABEL_49;
        }
      }

      else if ((BYTE8(v36) & 1) == 0 && v10 == v36)
      {
        goto LABEL_49;
      }

      goto LABEL_54;
    case 0xA:
      if (v12 | v2 | v10 | *(&v2 + 1) | *v35 | *&v35[8] | v11)
      {
        v16 = v12 | v2 | *(&v2 + 1) | *v35 | *&v35[8] | v11;
        if (v10 != 1 || v16)
        {
          if (v10 != 2 || v16)
          {
            if (v10 != 3 || v16)
            {
              if (v10 != 4 || v16)
              {
                if (v10 != 5 || v16)
                {
                  if (v10 != 6 || v16)
                  {
                    if (v10 != 7 || v16)
                    {
                      if (v10 != 8 || v16)
                      {
                        if (v10 != 9 || v16)
                        {
                          if (v10 != 10 || v16)
                          {
                            if (v10 != 11 || v16)
                            {
                              if (v10 != 12 || v16)
                              {
                                if (v10 != 13 || v16)
                                {
                                  if (v10 != 14 || v16)
                                  {
                                    if (v10 != 15 || v16)
                                    {
                                      if (v10 != 16 || v16)
                                      {
                                        if (v10 != 17 || v16)
                                        {
                                          if (v10 != 18 || v16)
                                          {
                                            if (v10 != 19 || v16)
                                            {
                                              if (v10 != 20 || v16)
                                              {
                                                if (v10 != 21 || v16)
                                                {
                                                  if (v10 != 22 || v16)
                                                  {
                                                    if (v10 != 23 || v16)
                                                    {
                                                      if (v10 != 24 || v16)
                                                      {
                                                        if (v10 != 25 || v16)
                                                        {
                                                          if (v10 != 26 || v16)
                                                          {
                                                            if (v10 != 27 || v16)
                                                            {
                                                              if (v10 != 28 || v16)
                                                              {
                                                                if (v10 != 29 || v16)
                                                                {
                                                                  if (v10 != 30 || v16)
                                                                  {
                                                                    if (v10 != 31 || v16)
                                                                    {
                                                                      if (v10 != 32 || v16)
                                                                      {
                                                                        if (v10 != 33 || v16)
                                                                        {
                                                                          if (v10 != 34 || v16)
                                                                          {
                                                                            if (v10 != 35 || v16)
                                                                            {
                                                                              if (v10 != 36 || v16)
                                                                              {
                                                                                if (v10 != 37 || v16)
                                                                                {
                                                                                  if (v10 != 38 || v16)
                                                                                  {
                                                                                    if (v10 != 39 || v16)
                                                                                    {
                                                                                      if (v10 != 40 || v16)
                                                                                      {
                                                                                        if (v10 != 41 || v16)
                                                                                        {
                                                                                          if (v10 != 42 || v16)
                                                                                          {
                                                                                            if (v10 != 43 || v16)
                                                                                            {
                                                                                              if (v10 != 44 || v16)
                                                                                              {
                                                                                                if (v10 != 45 || v16)
                                                                                                {
                                                                                                  if (v10 != 46 || v16)
                                                                                                  {
                                                                                                    if (v10 != 47 || v16)
                                                                                                    {
                                                                                                      if (v10 != 48 || v16)
                                                                                                      {
                                                                                                        if (v10 != 49 || v16)
                                                                                                        {
                                                                                                          if (v10 != 50 || v16)
                                                                                                          {
                                                                                                            if (v10 != 51 || v16)
                                                                                                            {
                                                                                                              if (v10 != 52 || v16)
                                                                                                              {
                                                                                                                OUTLINED_FUNCTION_37_16();
                                                                                                                if (!v14 || v36 != 53)
                                                                                                                {
                                                                                                                  goto LABEL_52;
                                                                                                                }
                                                                                                              }

                                                                                                              else
                                                                                                              {
                                                                                                                OUTLINED_FUNCTION_37_16();
                                                                                                                if (!v14 || v36 != 52)
                                                                                                                {
                                                                                                                  goto LABEL_52;
                                                                                                                }
                                                                                                              }
                                                                                                            }

                                                                                                            else
                                                                                                            {
                                                                                                              OUTLINED_FUNCTION_37_16();
                                                                                                              if (!v14 || v36 != 51)
                                                                                                              {
                                                                                                                goto LABEL_52;
                                                                                                              }
                                                                                                            }
                                                                                                          }

                                                                                                          else
                                                                                                          {
                                                                                                            OUTLINED_FUNCTION_37_16();
                                                                                                            if (!v14 || v36 != 50)
                                                                                                            {
                                                                                                              goto LABEL_52;
                                                                                                            }
                                                                                                          }
                                                                                                        }

                                                                                                        else
                                                                                                        {
                                                                                                          OUTLINED_FUNCTION_37_16();
                                                                                                          if (!v14 || v36 != 49)
                                                                                                          {
                                                                                                            goto LABEL_52;
                                                                                                          }
                                                                                                        }
                                                                                                      }

                                                                                                      else
                                                                                                      {
                                                                                                        OUTLINED_FUNCTION_37_16();
                                                                                                        if (!v14 || v36 != 48)
                                                                                                        {
                                                                                                          goto LABEL_52;
                                                                                                        }
                                                                                                      }
                                                                                                    }

                                                                                                    else
                                                                                                    {
                                                                                                      OUTLINED_FUNCTION_37_16();
                                                                                                      if (!v14 || v36 != 47)
                                                                                                      {
                                                                                                        goto LABEL_52;
                                                                                                      }
                                                                                                    }
                                                                                                  }

                                                                                                  else
                                                                                                  {
                                                                                                    OUTLINED_FUNCTION_37_16();
                                                                                                    if (!v14 || v36 != 46)
                                                                                                    {
                                                                                                      goto LABEL_52;
                                                                                                    }
                                                                                                  }
                                                                                                }

                                                                                                else
                                                                                                {
                                                                                                  OUTLINED_FUNCTION_37_16();
                                                                                                  if (!v14 || v36 != 45)
                                                                                                  {
                                                                                                    goto LABEL_52;
                                                                                                  }
                                                                                                }
                                                                                              }

                                                                                              else
                                                                                              {
                                                                                                OUTLINED_FUNCTION_37_16();
                                                                                                if (!v14 || v36 != 44)
                                                                                                {
                                                                                                  goto LABEL_52;
                                                                                                }
                                                                                              }
                                                                                            }

                                                                                            else
                                                                                            {
                                                                                              OUTLINED_FUNCTION_37_16();
                                                                                              if (!v14 || v36 != 43)
                                                                                              {
                                                                                                goto LABEL_52;
                                                                                              }
                                                                                            }
                                                                                          }

                                                                                          else
                                                                                          {
                                                                                            OUTLINED_FUNCTION_37_16();
                                                                                            if (!v14 || v36 != 42)
                                                                                            {
                                                                                              goto LABEL_52;
                                                                                            }
                                                                                          }
                                                                                        }

                                                                                        else
                                                                                        {
                                                                                          OUTLINED_FUNCTION_37_16();
                                                                                          if (!v14 || v36 != 41)
                                                                                          {
                                                                                            goto LABEL_52;
                                                                                          }
                                                                                        }
                                                                                      }

                                                                                      else
                                                                                      {
                                                                                        OUTLINED_FUNCTION_37_16();
                                                                                        if (!v14 || v36 != 40)
                                                                                        {
                                                                                          goto LABEL_52;
                                                                                        }
                                                                                      }
                                                                                    }

                                                                                    else
                                                                                    {
                                                                                      OUTLINED_FUNCTION_37_16();
                                                                                      if (!v14 || v36 != 39)
                                                                                      {
                                                                                        goto LABEL_52;
                                                                                      }
                                                                                    }
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    OUTLINED_FUNCTION_37_16();
                                                                                    if (!v14 || v36 != 38)
                                                                                    {
                                                                                      goto LABEL_52;
                                                                                    }
                                                                                  }
                                                                                }

                                                                                else
                                                                                {
                                                                                  OUTLINED_FUNCTION_37_16();
                                                                                  if (!v14 || v36 != 37)
                                                                                  {
                                                                                    goto LABEL_52;
                                                                                  }
                                                                                }
                                                                              }

                                                                              else
                                                                              {
                                                                                OUTLINED_FUNCTION_37_16();
                                                                                if (!v14 || v36 != 36)
                                                                                {
                                                                                  goto LABEL_52;
                                                                                }
                                                                              }
                                                                            }

                                                                            else
                                                                            {
                                                                              OUTLINED_FUNCTION_37_16();
                                                                              if (!v14 || v36 != 35)
                                                                              {
                                                                                goto LABEL_52;
                                                                              }
                                                                            }
                                                                          }

                                                                          else
                                                                          {
                                                                            OUTLINED_FUNCTION_37_16();
                                                                            if (!v14 || v36 != 34)
                                                                            {
                                                                              goto LABEL_52;
                                                                            }
                                                                          }
                                                                        }

                                                                        else
                                                                        {
                                                                          OUTLINED_FUNCTION_37_16();
                                                                          if (!v14 || v36 != 33)
                                                                          {
                                                                            goto LABEL_52;
                                                                          }
                                                                        }
                                                                      }

                                                                      else
                                                                      {
                                                                        OUTLINED_FUNCTION_37_16();
                                                                        if (!v14 || v36 != 32)
                                                                        {
                                                                          goto LABEL_52;
                                                                        }
                                                                      }
                                                                    }

                                                                    else
                                                                    {
                                                                      OUTLINED_FUNCTION_37_16();
                                                                      if (!v14 || v36 != 31)
                                                                      {
                                                                        goto LABEL_52;
                                                                      }
                                                                    }
                                                                  }

                                                                  else
                                                                  {
                                                                    OUTLINED_FUNCTION_37_16();
                                                                    if (!v14 || v36 != 30)
                                                                    {
                                                                      goto LABEL_52;
                                                                    }
                                                                  }
                                                                }

                                                                else
                                                                {
                                                                  OUTLINED_FUNCTION_37_16();
                                                                  if (!v14 || v36 != 29)
                                                                  {
                                                                    goto LABEL_52;
                                                                  }
                                                                }
                                                              }

                                                              else
                                                              {
                                                                OUTLINED_FUNCTION_37_16();
                                                                if (!v14 || v36 != 28)
                                                                {
                                                                  goto LABEL_52;
                                                                }
                                                              }
                                                            }

                                                            else
                                                            {
                                                              OUTLINED_FUNCTION_37_16();
                                                              if (!v14 || v36 != 27)
                                                              {
                                                                goto LABEL_52;
                                                              }
                                                            }
                                                          }

                                                          else
                                                          {
                                                            OUTLINED_FUNCTION_37_16();
                                                            if (!v14 || v36 != 26)
                                                            {
                                                              goto LABEL_52;
                                                            }
                                                          }
                                                        }

                                                        else
                                                        {
                                                          OUTLINED_FUNCTION_37_16();
                                                          if (!v14 || v36 != 25)
                                                          {
                                                            goto LABEL_52;
                                                          }
                                                        }
                                                      }

                                                      else
                                                      {
                                                        OUTLINED_FUNCTION_37_16();
                                                        if (!v14 || v36 != 24)
                                                        {
                                                          goto LABEL_52;
                                                        }
                                                      }
                                                    }

                                                    else
                                                    {
                                                      OUTLINED_FUNCTION_37_16();
                                                      if (!v14 || v36 != 23)
                                                      {
                                                        goto LABEL_52;
                                                      }
                                                    }
                                                  }

                                                  else
                                                  {
                                                    OUTLINED_FUNCTION_37_16();
                                                    if (!v14 || v36 != 22)
                                                    {
                                                      goto LABEL_52;
                                                    }
                                                  }
                                                }

                                                else
                                                {
                                                  OUTLINED_FUNCTION_37_16();
                                                  if (!v14 || v36 != 21)
                                                  {
                                                    goto LABEL_52;
                                                  }
                                                }
                                              }

                                              else
                                              {
                                                OUTLINED_FUNCTION_37_16();
                                                if (!v14 || v36 != 20)
                                                {
                                                  goto LABEL_52;
                                                }
                                              }
                                            }

                                            else
                                            {
                                              OUTLINED_FUNCTION_37_16();
                                              if (!v14 || v36 != 19)
                                              {
                                                goto LABEL_52;
                                              }
                                            }
                                          }

                                          else
                                          {
                                            OUTLINED_FUNCTION_37_16();
                                            if (!v14 || v36 != 18)
                                            {
                                              goto LABEL_52;
                                            }
                                          }
                                        }

                                        else
                                        {
                                          OUTLINED_FUNCTION_37_16();
                                          if (!v14 || v36 != 17)
                                          {
                                            goto LABEL_52;
                                          }
                                        }
                                      }

                                      else
                                      {
                                        OUTLINED_FUNCTION_37_16();
                                        if (!v14 || v36 != 16)
                                        {
                                          goto LABEL_52;
                                        }
                                      }
                                    }

                                    else
                                    {
                                      OUTLINED_FUNCTION_37_16();
                                      if (!v14 || v36 != 15)
                                      {
                                        goto LABEL_52;
                                      }
                                    }
                                  }

                                  else
                                  {
                                    OUTLINED_FUNCTION_37_16();
                                    if (!v14 || v36 != 14)
                                    {
                                      goto LABEL_52;
                                    }
                                  }
                                }

                                else
                                {
                                  OUTLINED_FUNCTION_37_16();
                                  if (!v14 || v36 != 13)
                                  {
                                    goto LABEL_52;
                                  }
                                }
                              }

                              else
                              {
                                OUTLINED_FUNCTION_37_16();
                                if (!v14 || v36 != 12)
                                {
                                  goto LABEL_52;
                                }
                              }
                            }

                            else
                            {
                              OUTLINED_FUNCTION_37_16();
                              if (!v14 || v36 != 11)
                              {
                                goto LABEL_52;
                              }
                            }
                          }

                          else
                          {
                            OUTLINED_FUNCTION_37_16();
                            if (!v14 || v36 != 10)
                            {
                              goto LABEL_52;
                            }
                          }
                        }

                        else
                        {
                          OUTLINED_FUNCTION_37_16();
                          if (!v14 || v36 != 9)
                          {
                            goto LABEL_52;
                          }
                        }
                      }

                      else
                      {
                        OUTLINED_FUNCTION_37_16();
                        if (!v14 || v36 != 8)
                        {
                          goto LABEL_52;
                        }
                      }
                    }

                    else
                    {
                      OUTLINED_FUNCTION_37_16();
                      if (!v14 || v36 != 7)
                      {
                        goto LABEL_52;
                      }
                    }
                  }

                  else
                  {
                    OUTLINED_FUNCTION_37_16();
                    if (!v14 || v36 != 6)
                    {
                      goto LABEL_52;
                    }
                  }
                }

                else
                {
                  OUTLINED_FUNCTION_37_16();
                  if (!v14 || v36 != 5)
                  {
                    goto LABEL_52;
                  }
                }
              }

              else
              {
                OUTLINED_FUNCTION_37_16();
                if (!v14 || v36 != 4)
                {
                  goto LABEL_52;
                }
              }
            }

            else
            {
              OUTLINED_FUNCTION_37_16();
              if (!v14 || v36 != 3)
              {
                goto LABEL_52;
              }
            }
          }

          else
          {
            OUTLINED_FUNCTION_37_16();
            if (!v14 || v36 != 2)
            {
              goto LABEL_52;
            }
          }
        }

        else
        {
          OUTLINED_FUNCTION_37_16();
          if (!v14 || v36 != 1)
          {
            goto LABEL_52;
          }
        }

        v25 = *(&v36 + 1);
        v26 = vorrq_s8(*(v17 + 88), *(v17 + 104));
        v24 = *&vorr_s8(*v26.i8, *&vextq_s8(v26, v26, 8uLL)) | v37;
      }

      else
      {
        OUTLINED_FUNCTION_37_16();
        if (!v14)
        {
          goto LABEL_52;
        }

        v23 = vorrq_s8(*(v22 + 88), *(v22 + 104));
        v24 = *&vorr_s8(*v23.i8, *&vextq_s8(v23, v23, 8uLL)) | v37;
        v25 = *(&v36 + 1) | v36;
      }

      if (v24 | v25)
      {
        goto LABEL_52;
      }

LABEL_48:
      sub_1C8EAF644(v39);
LABEL_49:
      v13 = 1;
      break;
    default:
      if (v38[24])
      {
LABEL_50:

LABEL_51:

LABEL_52:
        v20 = &v36;
LABEL_53:
        sub_1C8D0717C(v20, v33);
        sub_1C8EAF644(v39);
LABEL_54:
        v13 = 0;
      }

      else
      {
        LOBYTE(v29[0]) = v34[0];
        *(v29 + 1) = *(v34 + 1);
        HIBYTE(v29[0]) = (*(v34 + 1) | ((*(v34 + 5) | (BYTE7(v34[0]) << 16)) << 32)) >> 48;
        *(v29 + 5) = *(v34 + 5);
        v29[1] = (*(v34 + 9) << 8) | ((*(v34 + 13) | (HIBYTE(v34[0]) << 16)) << 40) | BYTE8(v34[0]);
        v30 = v2;
        v31 = *v35;
        v32 = v7 >> 56;
        v27[0] = v36;
        v27[1] = v37;
        v27[2] = *v38;
        v28 = *&v38[16];
        v15 = static AssistantSchemaIdentifier.== infix(_:_:)(v29, v27);
LABEL_20:
        v13 = v15;
        sub_1C8D0717C(&v36, v33);
        sub_1C8D0717C(v34, v33);
        sub_1C8EAF644(v39);
      }

      break;
  }

  return v13 & 1;
}

uint64_t sub_1C8E9F260(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7954746E65746E69 && a2 == 0xEE00656D614E6570)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C9064C2C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C8E9F304(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000012 && 0x80000001C90CC0C0 == a2;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6E61747369737361 && a2 == 0xEF616D6568635374;
      if (v7 || (sub_1C9064C2C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6E65746E49707061 && a2 == 0xE900000000000074;
        if (v8 || (sub_1C9064C2C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x4974694B69726973 && a2 == 0xED0000746E65746ELL;
          if (v9 || (sub_1C9064C2C() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000015 && 0x80000001C90CC0E0 == a2;
            if (v10 || (sub_1C9064C2C() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x69736568746E7973 && a2 == 0xEF6C6F6F5464657ALL;
              if (v11 || (sub_1C9064C2C() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x656C62616F646E75 && a2 == 0xE800000000000000;
                if (v12 || (sub_1C9064C2C() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x536E6F6973736573 && a2 == 0xEF676E6974726174;
                  if (v13 || (sub_1C9064C2C() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000010 && 0x80000001C90CA300 == a2;
                    if (v14 || (sub_1C9064C2C() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000014 && 0x80000001C90CC100 == a2;
                      if (v15 || (sub_1C9064C2C() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD000000000000015 && 0x80000001C90CC120 == a2;
                        if (v16 || (sub_1C9064C2C() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0xD000000000000013 && 0x80000001C90CC140 == a2;
                          if (v17 || (sub_1C9064C2C() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0xD000000000000011 && 0x80000001C90CC160 == a2;
                            if (v18 || (sub_1C9064C2C() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0xD000000000000011 && 0x80000001C90CC180 == a2;
                              if (v19 || (sub_1C9064C2C() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0x74655365756C6176 && a2 == 0xEC000000676E6974;
                                if (v20 || (sub_1C9064C2C() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 7632227 && a2 == 0xE300000000000000;
                                  if (v21 || (sub_1C9064C2C() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 2037411683 && a2 == 0xE400000000000000;
                                    if (v22 || (sub_1C9064C2C() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v23 = a1 == 0x6574736170 && a2 == 0xE500000000000000;
                                      if (v23 || (sub_1C9064C2C() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        v24 = a1 == 0x6C65636E6163 && a2 == 0xE600000000000000;
                                        if (v24 || (sub_1C9064C2C() & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else
                                        {
                                          v25 = a1 == 0x657A69736572 && a2 == 0xE600000000000000;
                                          if (v25 || (sub_1C9064C2C() & 1) != 0)
                                          {

                                            return 20;
                                          }

                                          else
                                          {
                                            v26 = a1 == 0x6C6C6F726373 && a2 == 0xE600000000000000;
                                            if (v26 || (sub_1C9064C2C() & 1) != 0)
                                            {

                                              return 21;
                                            }

                                            else
                                            {
                                              v27 = a1 == 1868852853 && a2 == 0xE400000000000000;
                                              if (v27 || (sub_1C9064C2C() & 1) != 0)
                                              {

                                                return 22;
                                              }

                                              else
                                              {
                                                v28 = a1 == 1836019578 && a2 == 0xE400000000000000;
                                                if (v28 || (sub_1C9064C2C() & 1) != 0)
                                                {

                                                  return 23;
                                                }

                                                else
                                                {
                                                  v29 = a1 == 0x746E4565736F6C63 && a2 == 0xEB00000000797469;
                                                  if (v29 || (sub_1C9064C2C() & 1) != 0)
                                                  {

                                                    return 24;
                                                  }

                                                  else
                                                  {
                                                    v30 = a1 == 0x6E45657461657263 && a2 == 0xEC00000079746974;
                                                    if (v30 || (sub_1C9064C2C() & 1) != 0)
                                                    {

                                                      return 25;
                                                    }

                                                    else
                                                    {
                                                      v31 = a1 == 0x7469746E45747563 && a2 == 0xE900000000000079;
                                                      if (v31 || (sub_1C9064C2C() & 1) != 0)
                                                      {

                                                        return 26;
                                                      }

                                                      else
                                                      {
                                                        v32 = a1 == 0x6E456574656C6564 && a2 == 0xEC00000079746974;
                                                        if (v32 || (sub_1C9064C2C() & 1) != 0)
                                                        {

                                                          return 27;
                                                        }

                                                        else
                                                        {
                                                          v33 = a1 == 0x746163696C707564 && a2 == 0xEF797469746E4565;
                                                          if (v33 || (sub_1C9064C2C() & 1) != 0)
                                                          {

                                                            return 28;
                                                          }

                                                          else
                                                          {
                                                            v34 = a1 == 0x657469726F766166 && a2 == 0xEE00797469746E45;
                                                            if (v34 || (sub_1C9064C2C() & 1) != 0)
                                                            {

                                                              return 29;
                                                            }

                                                            else
                                                            {
                                                              v35 = a1 == 0x69746E456E65706FLL && a2 == 0xEA00000000007974;
                                                              if (v35 || (sub_1C9064C2C() & 1) != 0)
                                                              {

                                                                return 30;
                                                              }

                                                              else
                                                              {
                                                                v36 = a1 == 0x4577656976657270 && a2 == 0xED0000797469746ELL;
                                                                if (v36 || (sub_1C9064C2C() & 1) != 0)
                                                                {

                                                                  return 31;
                                                                }

                                                                else
                                                                {
                                                                  v37 = a1 == 0x69746E4565766173 && a2 == 0xEA00000000007974;
                                                                  if (v37 || (sub_1C9064C2C() & 1) != 0)
                                                                  {

                                                                    return 32;
                                                                  }

                                                                  else
                                                                  {
                                                                    v38 = a1 == 0xD000000000000014 && 0x80000001C90CC1A0 == a2;
                                                                    if (v38 || (sub_1C9064C2C() & 1) != 0)
                                                                    {

                                                                      return 33;
                                                                    }

                                                                    else
                                                                    {
                                                                      v39 = a1 == 0x6564695679616C70 && a2 == 0xE90000000000006FLL;
                                                                      if (v39 || (sub_1C9064C2C() & 1) != 0)
                                                                      {

                                                                        return 34;
                                                                      }

                                                                      else
                                                                      {
                                                                        v40 = a1 == 0x6174536F69647561 && a2 == 0xED0000676E697472;
                                                                        if (v40 || (sub_1C9064C2C() & 1) != 0)
                                                                        {

                                                                          return 35;
                                                                        }

                                                                        else
                                                                        {
                                                                          v41 = a1 == 0x6365526F69647561 && a2 == 0xEE00676E6964726FLL;
                                                                          if (v41 || (sub_1C9064C2C() & 1) != 0)
                                                                          {

                                                                            return 36;
                                                                          }

                                                                          else
                                                                          {
                                                                            v42 = a1 == 0xD000000000000016 && 0x80000001C90CC1C0 == a2;
                                                                            if (v42 || (sub_1C9064C2C() & 1) != 0)
                                                                            {

                                                                              return 37;
                                                                            }

                                                                            else
                                                                            {
                                                                              v43 = a1 == 0x7669447472617473 && a2 == 0xE900000000000065;
                                                                              if (v43 || (sub_1C9064C2C() & 1) != 0)
                                                                              {

                                                                                return 38;
                                                                              }

                                                                              else
                                                                              {
                                                                                v44 = a1 == 0x726F577472617473 && a2 == 0xEC00000074756F6BLL;
                                                                                if (v44 || (sub_1C9064C2C() & 1) != 0)
                                                                                {

                                                                                  return 39;
                                                                                }

                                                                                else
                                                                                {
                                                                                  v45 = a1 == 0x726F576573756170 && a2 == 0xEC00000074756F6BLL;
                                                                                  if (v45 || (sub_1C9064C2C() & 1) != 0)
                                                                                  {

                                                                                    return 40;
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    v46 = a1 == 0x6F57656D75736572 && a2 == 0xED000074756F6B72;
                                                                                    if (v46 || (sub_1C9064C2C() & 1) != 0)
                                                                                    {

                                                                                      return 41;
                                                                                    }

                                                                                    else
                                                                                    {
                                                                                      v47 = a1 == 0x72614D7265746E65 && a2 == 0xEB0000000070756BLL;
                                                                                      if (v47 || (sub_1C9064C2C() & 1) != 0)
                                                                                      {

                                                                                        return 42;
                                                                                      }

                                                                                      else
                                                                                      {
                                                                                        v48 = a1 == 0x6B72614D74697865 && a2 == 0xEA00000000007075;
                                                                                        if (v48 || (sub_1C9064C2C() & 1) != 0)
                                                                                        {

                                                                                          return 43;
                                                                                        }

                                                                                        else
                                                                                        {
                                                                                          v49 = a1 == 0xD000000000000012 && 0x80000001C90CC1E0 == a2;
                                                                                          if (v49 || (sub_1C9064C2C() & 1) != 0)
                                                                                          {

                                                                                            return 44;
                                                                                          }

                                                                                          else
                                                                                          {
                                                                                            v50 = a1 == 0xD000000000000013 && 0x80000001C90CC200 == a2;
                                                                                            if (v50 || (sub_1C9064C2C() & 1) != 0)
                                                                                            {

                                                                                              return 45;
                                                                                            }

                                                                                            else
                                                                                            {
                                                                                              v51 = a1 == 0xD000000000000014 && 0x80000001C90CC300 == a2;
                                                                                              if (v51 || (sub_1C9064C2C() & 1) != 0)
                                                                                              {

                                                                                                return 46;
                                                                                              }

                                                                                              else
                                                                                              {
                                                                                                v52 = a1 == 0x686372616573 && a2 == 0xE600000000000000;
                                                                                                if (v52 || (sub_1C9064C2C() & 1) != 0)
                                                                                                {

                                                                                                  return 47;
                                                                                                }

                                                                                                else
                                                                                                {
                                                                                                  v53 = a1 == 0xD000000000000016 && 0x80000001C90CC220 == a2;
                                                                                                  if (v53 || (sub_1C9064C2C() & 1) != 0)
                                                                                                  {

                                                                                                    return 48;
                                                                                                  }

                                                                                                  else
                                                                                                  {
                                                                                                    v54 = a1 == 0xD00000000000001CLL && 0x80000001C90CC240 == a2;
                                                                                                    if (v54 || (sub_1C9064C2C() & 1) != 0)
                                                                                                    {

                                                                                                      return 49;
                                                                                                    }

                                                                                                    else
                                                                                                    {
                                                                                                      v55 = a1 == 0xD000000000000016 && 0x80000001C90CC260 == a2;
                                                                                                      if (v55 || (sub_1C9064C2C() & 1) != 0)
                                                                                                      {

                                                                                                        return 50;
                                                                                                      }

                                                                                                      else
                                                                                                      {
                                                                                                        v56 = a1 == 0xD00000000000001CLL && 0x80000001C90CC280 == a2;
                                                                                                        if (v56 || (sub_1C9064C2C() & 1) != 0)
                                                                                                        {

                                                                                                          return 51;
                                                                                                        }

                                                                                                        else
                                                                                                        {
                                                                                                          v57 = a1 == 0x7461705365766F6DLL && a2 == 0xEB000000006C6169;
                                                                                                          if (v57 || (sub_1C9064C2C() & 1) != 0)
                                                                                                          {

                                                                                                            return 52;
                                                                                                          }

                                                                                                          else
                                                                                                          {
                                                                                                            v58 = a1 == 0xD000000000000014 && 0x80000001C90CC2A0 == a2;
                                                                                                            if (v58 || (sub_1C9064C2C() & 1) != 0)
                                                                                                            {

                                                                                                              return 53;
                                                                                                            }

                                                                                                            else
                                                                                                            {
                                                                                                              v59 = a1 == 0x676E697473 && a2 == 0xE500000000000000;
                                                                                                              if (v59 || (sub_1C9064C2C() & 1) != 0)
                                                                                                              {

                                                                                                                return 54;
                                                                                                              }

                                                                                                              else
                                                                                                              {
                                                                                                                v60 = a1 == 0x656C67676F74 && a2 == 0xE600000000000000;
                                                                                                                if (v60 || (sub_1C9064C2C() & 1) != 0)
                                                                                                                {

                                                                                                                  return 55;
                                                                                                                }

                                                                                                                else
                                                                                                                {
                                                                                                                  v61 = a1 == 0x61436172656D6163 && a2 == 0xED00006572757470;
                                                                                                                  if (v61 || (sub_1C9064C2C() & 1) != 0)
                                                                                                                  {

                                                                                                                    return 56;
                                                                                                                  }

                                                                                                                  else
                                                                                                                  {
                                                                                                                    v62 = a1 == 0xD000000000000011 && 0x80000001C90CC2C0 == a2;
                                                                                                                    if (v62 || (sub_1C9064C2C() & 1) != 0)
                                                                                                                    {

                                                                                                                      return 57;
                                                                                                                    }

                                                                                                                    else
                                                                                                                    {
                                                                                                                      v63 = a1 == 0x7055797469746E65 && a2 == 0xEE00676E69746164;
                                                                                                                      if (v63 || (sub_1C9064C2C() & 1) != 0)
                                                                                                                      {

                                                                                                                        return 58;
                                                                                                                      }

                                                                                                                      else
                                                                                                                      {
                                                                                                                        v64 = a1 == 0x6547797469746E65 && a2 == 0xEC00000072657474;
                                                                                                                        if (v64 || (sub_1C9064C2C() & 1) != 0)
                                                                                                                        {

                                                                                                                          return 59;
                                                                                                                        }

                                                                                                                        else
                                                                                                                        {
                                                                                                                          v65 = a1 == 0x79747265706F7270 && a2 == 0xEF72657461647055;
                                                                                                                          if (v65 || (sub_1C9064C2C() & 1) != 0)
                                                                                                                          {

                                                                                                                            return 60;
                                                                                                                          }

                                                                                                                          else
                                                                                                                          {
                                                                                                                            v66 = a1 == 0x6C69614D646E6573 && a2 == 0xE800000000000000;
                                                                                                                            if (v66 || (sub_1C9064C2C() & 1) != 0)
                                                                                                                            {

                                                                                                                              return 61;
                                                                                                                            }

                                                                                                                            else
                                                                                                                            {
                                                                                                                              v67 = a1 == 0xD000000000000014 && 0x80000001C90CC2E0 == a2;
                                                                                                                              if (v67 || (sub_1C9064C2C() & 1) != 0)
                                                                                                                              {

                                                                                                                                return 62;
                                                                                                                              }

                                                                                                                              else if (a1 == 0x6566664565646973 && a2 == 0xEA00000000007463)
                                                                                                                              {

                                                                                                                                return 63;
                                                                                                                              }

                                                                                                                              else
                                                                                                                              {
                                                                                                                                v69 = sub_1C9064C2C();

                                                                                                                                if (v69)
                                                                                                                                {
                                                                                                                                  return 63;
                                                                                                                                }

                                                                                                                                else
                                                                                                                                {
                                                                                                                                  return 64;
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
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1C8EA05B0(char a1)
{
  result = 0x6E776F6E6B6E75;
  switch(a1)
  {
    case 1:
    case 44:
      return 0xD000000000000012;
    case 2:
      return 0x6E61747369737361;
    case 3:
      return 0x6E65746E49707061;
    case 4:
      return 0x4974694B69726973;
    case 5:
    case 11:
      return 0xD000000000000015;
    case 6:
      return 0x69736568746E7973;
    case 7:
      return 0x656C62616F646E75;
    case 8:
      return 0x536E6F6973736573;
    case 9:
      return 0xD000000000000010;
    case 10:
      return 0xD000000000000014;
    case 12:
    case 45:
      return 0xD000000000000013;
    case 13:
    case 14:
    case 57:
      return 0xD000000000000011;
    case 15:
      return 0x74655365756C6176;
    case 16:
      return 7632227;
    case 17:
      return 2037411683;
    case 18:
      return 0x6574736170;
    case 19:
      return 0x6C65636E6163;
    case 20:
      return 0x657A69736572;
    case 21:
      return 0x6C6C6F726373;
    case 22:
      return 1868852853;
    case 23:
      return 1836019578;
    case 24:
      return 0x746E4565736F6C63;
    case 25:
      v3 = 1634038371;
      return v3 | 0x6E45657400000000;
    case 26:
      return 0x7469746E45747563;
    case 27:
      v3 = 1701602660;
      return v3 | 0x6E45657400000000;
    case 28:
      v6 = 0x63696C707564;
      goto LABEL_58;
    case 29:
      return 0x657469726F766166;
    case 30:
      v5 = 1852141679;
      return v5 | 0x69746E4500000000;
    case 31:
      return 0x4577656976657270;
    case 32:
      v5 = 1702257011;
      return v5 | 0x69746E4500000000;
    case 33:
      return 0xD000000000000014;
    case 34:
      return 0x6564695679616C70;
    case 35:
      return 0x6174536F69647561;
    case 36:
      return 0x6365526F69647561;
    case 37:
    case 48:
    case 50:
      return 0xD000000000000016;
    case 38:
      return 0x7669447472617473;
    case 39:
      v4 = 0x577472617473;
      goto LABEL_45;
    case 40:
      v4 = 0x576573756170;
LABEL_45:
      result = v4 & 0xFFFFFFFFFFFFLL | 0x726F000000000000;
      break;
    case 41:
      result = 0x6F57656D75736572;
      break;
    case 42:
      result = 0x72614D7265746E65;
      break;
    case 43:
      result = 0x6B72614D74697865;
      break;
    case 46:
      result = 0xD000000000000014;
      break;
    case 47:
      result = 0x686372616573;
      break;
    case 49:
    case 51:
      result = 0xD00000000000001CLL;
      break;
    case 52:
      v6 = 0x705365766F6DLL;
LABEL_58:
      result = v6 & 0xFFFFFFFFFFFFLL | 0x7461000000000000;
      break;
    case 53:
      result = 0xD000000000000014;
      break;
    case 54:
      result = 0x676E697473;
      break;
    case 55:
      result = 0x656C67676F74;
      break;
    case 56:
      result = 0x61436172656D6163;
      break;
    case 58:
      result = 0x7055797469746E65;
      break;
    case 59:
      result = 0x6547797469746E65;
      break;
    case 60:
      result = 0x79747265706F7270;
      break;
    case 61:
      result = 0x6C69614D646E6573;
      break;
    case 62:
      result = 0xD000000000000014;
      break;
    case 63:
      result = 0x6566664565646973;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C8EA0CA8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000001C90CC340 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C9064C2C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C8EA0D48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8E9F260(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C8EA0D74(uint64_t a1)
{
  v2 = sub_1C8EB0B04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8EA0DB0(uint64_t a1)
{
  v2 = sub_1C8EB0B04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8EA0DEC(uint64_t a1)
{
  v2 = sub_1C8EB0BAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8EA0E28(uint64_t a1)
{
  v2 = sub_1C8EB0BAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8EA0E64(uint64_t a1)
{
  v2 = sub_1C8EB0B58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8EA0EA0(uint64_t a1)
{
  v2 = sub_1C8EB0B58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8EA0EDC(uint64_t a1)
{
  v2 = sub_1C8EB0030();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8EA0F18(uint64_t a1)
{
  v2 = sub_1C8EB0030();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8EA0F54(uint64_t a1)
{
  v2 = sub_1C8EB0084();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8EA0F90(uint64_t a1)
{
  v2 = sub_1C8EB0084();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8EA0FCC(uint64_t a1)
{
  v2 = sub_1C8EAF9A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8EA1008(uint64_t a1)
{
  v2 = sub_1C8EAF9A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8EA1044(uint64_t a1)
{
  v2 = sub_1C8EB05C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8EA1080(uint64_t a1)
{
  v2 = sub_1C8EB05C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8EA10BC(uint64_t a1)
{
  v2 = sub_1C8EB0810();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8EA10F8(uint64_t a1)
{
  v2 = sub_1C8EB0810();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8EA1134(uint64_t a1)
{
  v2 = sub_1C8EB0420();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8EA1170(uint64_t a1)
{
  v2 = sub_1C8EB0420();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8EA11B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8E9F304(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8EA11DC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C8EA05A8();
  *a1 = result;
  return result;
}

uint64_t sub_1C8EA1204(uint64_t a1)
{
  v2 = sub_1C8EAF6AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8EA1240(uint64_t a1)
{
  v2 = sub_1C8EAF6AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8EA1280(uint64_t a1)
{
  v2 = sub_1C8EB08B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8EA12BC(uint64_t a1)
{
  v2 = sub_1C8EB08B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8EA12F8(uint64_t a1)
{
  v2 = sub_1C8EAFCE8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8EA1334(uint64_t a1)
{
  v2 = sub_1C8EAFCE8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8EA1370(uint64_t a1)
{
  v2 = sub_1C8EB066C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8EA13AC(uint64_t a1)
{
  v2 = sub_1C8EB066C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8EA13E8(uint64_t a1)
{
  v2 = sub_1C8EB03CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8EA1424(uint64_t a1)
{
  v2 = sub_1C8EB03CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8EA1460(uint64_t a1)
{
  v2 = sub_1C8EB06C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8EA149C(uint64_t a1)
{
  v2 = sub_1C8EB06C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8EA14D8(uint64_t a1)
{
  v2 = sub_1C8EB0378();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8EA1514(uint64_t a1)
{
  v2 = sub_1C8EB0378();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8EA1550(uint64_t a1)
{
  v2 = sub_1C8EB0324();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8EA158C(uint64_t a1)
{
  v2 = sub_1C8EB0324();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8EA15C8(uint64_t a1)
{
  v2 = sub_1C8EB02D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8EA1604(uint64_t a1)
{
  v2 = sub_1C8EB02D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8EA1640(uint64_t a1)
{
  v2 = sub_1C8EAFE38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8EA167C(uint64_t a1)
{
  v2 = sub_1C8EAFE38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8EA16B8(uint64_t a1)
{
  v2 = sub_1C8EAF8A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8EA16F4(uint64_t a1)
{
  v2 = sub_1C8EAF8A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8EA1730(uint64_t a1)
{
  v2 = sub_1C8EAF8F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8EA176C(uint64_t a1)
{
  v2 = sub_1C8EAF8F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8EA17A8(uint64_t a1)
{
  v2 = sub_1C8EAFDE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8EA17E4(uint64_t a1)
{
  v2 = sub_1C8EAFDE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8EA1820(uint64_t a1)
{
  v2 = sub_1C8EB027C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8EA185C(uint64_t a1)
{
  v2 = sub_1C8EB027C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8EA1898(uint64_t a1)
{
  v2 = sub_1C8EAFD90();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8EA18D4(uint64_t a1)
{
  v2 = sub_1C8EAFD90();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8EA1910(uint64_t a1)
{
  v2 = sub_1C8EB0864();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8EA194C(uint64_t a1)
{
  v2 = sub_1C8EB0864();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8EA1988(uint64_t a1)
{
  v2 = sub_1C8EAFAF0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8EA19C4(uint64_t a1)
{
  v2 = sub_1C8EAFAF0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8EA1A00(uint64_t a1)
{
  v2 = sub_1C8EAFA9C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8EA1A3C(uint64_t a1)
{
  v2 = sub_1C8EAFA9C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8EA1A78(uint64_t a1)
{
  v2 = sub_1C8EB0228();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8EA1AB4(uint64_t a1)
{
  v2 = sub_1C8EB0228();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8EA1AF0(uint64_t a1)
{
  v2 = sub_1C8EB0618();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8EA1B2C(uint64_t a1)
{
  v2 = sub_1C8EB0618();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8EA1B68(uint64_t a1)
{
  v2 = sub_1C8EAFEE0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8EA1BA4(uint64_t a1)
{
  v2 = sub_1C8EAFEE0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8EA1BE0(uint64_t a1)
{
  v2 = sub_1C8EB00D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8EA1C1C(uint64_t a1)
{
  v2 = sub_1C8EB00D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8EA1C58(uint64_t a1)
{
  v2 = sub_1C8EB01D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8EA1C94(uint64_t a1)
{
  v2 = sub_1C8EB01D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8EA1CD0(uint64_t a1)
{
  v2 = sub_1C8EB0768();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8EA1D0C(uint64_t a1)
{
  v2 = sub_1C8EB0768();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8EA1D48(uint64_t a1)
{
  v2 = sub_1C8EAF850();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8EA1D84(uint64_t a1)
{
  v2 = sub_1C8EAF850();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8EA1DC0(uint64_t a1)
{
  v2 = sub_1C8EAFFDC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8EA1DFC(uint64_t a1)
{
  v2 = sub_1C8EAFFDC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8EA1E38(uint64_t a1)
{
  v2 = sub_1C8EB012C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8EA1E74(uint64_t a1)
{
  v2 = sub_1C8EB012C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8EA1EB0(uint64_t a1)
{
  v2 = sub_1C8EB07BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8EA1EEC(uint64_t a1)
{
  v2 = sub_1C8EB07BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8EA1F28(uint64_t a1)
{
  v2 = sub_1C8EB0570();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8EA1F64(uint64_t a1)
{
  v2 = sub_1C8EB0570();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8EA1FA0(uint64_t a1)
{
  v2 = sub_1C8EAFE8C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8EA1FDC(uint64_t a1)
{
  v2 = sub_1C8EAFE8C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8EA2018(uint64_t a1)
{
  v2 = sub_1C8EB0180();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8EA2054(uint64_t a1)
{
  v2 = sub_1C8EB0180();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8EA2090(uint64_t a1)
{
  v2 = sub_1C8EB051C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8EA20CC(uint64_t a1)
{
  v2 = sub_1C8EB051C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8EA2108(uint64_t a1)
{
  v2 = sub_1C8EAFC94();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8EA2144(uint64_t a1)
{
  v2 = sub_1C8EAFC94();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8EA2180(uint64_t a1)
{
  v2 = sub_1C8EAF7FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8EA21BC(uint64_t a1)
{
  v2 = sub_1C8EAF7FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8EA21F8(uint64_t a1)
{
  v2 = sub_1C8EB0960();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8EA2234(uint64_t a1)
{
  v2 = sub_1C8EB0960();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8EA2270(uint64_t a1)
{
  v2 = sub_1C8EAF7A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8EA22AC(uint64_t a1)
{
  v2 = sub_1C8EAF7A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8EA22E8(uint64_t a1)
{
  v2 = sub_1C8EAFB98();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8EA2324(uint64_t a1)
{
  v2 = sub_1C8EAFB98();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8EA2364(uint64_t a1)
{
  v2 = sub_1C8EAFB44();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8EA23A0(uint64_t a1)
{
  v2 = sub_1C8EAFB44();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8EA23DC(uint64_t a1)
{
  v2 = sub_1C8EAFC40();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8EA2418(uint64_t a1)
{
  v2 = sub_1C8EAFC40();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8EA2454(uint64_t a1)
{
  v2 = sub_1C8EAFBEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8EA2490(uint64_t a1)
{
  v2 = sub_1C8EAFBEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8EA24CC(uint64_t a1)
{
  v2 = sub_1C8EAF700();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8EA2508(uint64_t a1)
{
  v2 = sub_1C8EAF700();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8EA2548(uint64_t a1)
{
  v2 = sub_1C8EB0AB0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8EA2584(uint64_t a1)
{
  v2 = sub_1C8EB0AB0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8EA25C0(uint64_t a1)
{
  v2 = sub_1C8EAF94C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8EA25FC(uint64_t a1)
{
  v2 = sub_1C8EAF94C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8EA2638(uint64_t a1)
{
  v2 = sub_1C8EAFF88();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8EA2674(uint64_t a1)
{
  v2 = sub_1C8EAFF88();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8EA26B0(uint64_t a1)
{
  v2 = sub_1C8EAFF34();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8EA26EC(uint64_t a1)
{
  v2 = sub_1C8EAFF34();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8EA2728(uint64_t a1)
{
  v2 = sub_1C8EAFA48();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8EA2764(uint64_t a1)
{
  v2 = sub_1C8EAFA48();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8EA27A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8EA0CA8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C8EA27D0(uint64_t a1)
{
  v2 = sub_1C8EB0A08();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8EA280C(uint64_t a1)
{
  v2 = sub_1C8EB0A08();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8EA2848(uint64_t a1)
{
  v2 = sub_1C8EB0A5C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8EA2884(uint64_t a1)
{
  v2 = sub_1C8EB0A5C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8EA28C0(uint64_t a1)
{
  v2 = sub_1C8EAF9F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8EA28FC(uint64_t a1)
{
  v2 = sub_1C8EAF9F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8EA2938(uint64_t a1)
{
  v2 = sub_1C8EB04C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8EA2974(uint64_t a1)
{
  v2 = sub_1C8EB04C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8EA29B0(uint64_t a1)
{
  v2 = sub_1C8EB09B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8EA29EC(uint64_t a1)
{
  v2 = sub_1C8EB09B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8EA2A28(uint64_t a1)
{
  v2 = sub_1C8EB0C00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8EA2A64(uint64_t a1)
{
  v2 = sub_1C8EB0C00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8EA2AA0(uint64_t a1)
{
  v2 = sub_1C8EB090C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8EA2ADC(uint64_t a1)
{
  v2 = sub_1C8EB090C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8EA2B18(uint64_t a1)
{
  v2 = sub_1C8EB0714();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8EA2B54(uint64_t a1)
{
  v2 = sub_1C8EB0714();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8EA2B90(uint64_t a1)
{
  v2 = sub_1C8EAFD3C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8EA2BCC(uint64_t a1)
{
  v2 = sub_1C8EAFD3C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8EA2C08(uint64_t a1)
{
  v2 = sub_1C8EB0474();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8EA2C44(uint64_t a1)
{
  v2 = sub_1C8EB0474();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SystemToolProtocol.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_196();
  a19 = v22;
  a20 = v23;
  v610 = v21;
  v25 = v24;
  v602 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318520, &qword_1C9097208);
  OUTLINED_FUNCTION_11(v602);
  v580 = v26;
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_97();
  v601 = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318528, &qword_1C9097210);
  OUTLINED_FUNCTION_4_22(v31, &v546);
  v513 = v32;
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v36);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318530, &qword_1C9097218);
  OUTLINED_FUNCTION_4_22(v37, &v543);
  v510 = v38;
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v42);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318538, &qword_1C9097220);
  v44 = OUTLINED_FUNCTION_11(v43);
  v599 = v45;
  v600 = v44;
  v47 = *(v46 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_97();
  v598 = v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318540, &qword_1C9097228);
  OUTLINED_FUNCTION_4_22(v50, &v540);
  v507 = v51;
  v53 = *(v52 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v55);
  v597 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318548, &qword_1C9097230);
  OUTLINED_FUNCTION_11(v597);
  v579 = v56;
  v58 = *(v57 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v60);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318550, &qword_1C9097238);
  OUTLINED_FUNCTION_4_22(v61, &v537);
  v504 = v62;
  v64 = *(v63 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v66);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318558, &qword_1C9097240);
  OUTLINED_FUNCTION_4_22(v67, &v534);
  v501 = v68;
  v70 = *(v69 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v72);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318560, &qword_1C9097248);
  OUTLINED_FUNCTION_4_22(v73, &v531);
  v498 = v74;
  v76 = *(v75 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v77);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v78);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318568, &qword_1C9097250);
  OUTLINED_FUNCTION_4_22(v79, &v528);
  v495 = v80;
  v82 = *(v81 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v83);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v84);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318570, &qword_1C9097258);
  OUTLINED_FUNCTION_4_22(v85, &v525);
  v492 = v86;
  v88 = *(v87 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v89);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v90);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318578, &qword_1C9097260);
  OUTLINED_FUNCTION_4_22(v91, &v522);
  v489 = v92;
  v94 = *(v93 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v95);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v96);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318580, &qword_1C9097268);
  OUTLINED_FUNCTION_4_22(v97, &a17);
  v578 = v98;
  v100 = *(v99 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v101);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v102);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318588, &qword_1C9097270);
  OUTLINED_FUNCTION_4_22(v103, &v519);
  v486 = v104;
  v106 = *(v105 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v107);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v108);
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318590, &qword_1C9097278);
  OUTLINED_FUNCTION_4_22(v109, &v516);
  v483 = v110;
  v112 = *(v111 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v113);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v114);
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318598, &qword_1C9097280);
  OUTLINED_FUNCTION_4_22(v115, &v513);
  v480 = v116;
  v118 = *(v117 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v119);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v120);
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3185A0, &qword_1C9097288);
  OUTLINED_FUNCTION_4_22(v121, &v510);
  v477 = v122;
  v124 = *(v123 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v125);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v126);
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3185A8, &qword_1C9097290);
  OUTLINED_FUNCTION_4_22(v127, &v507);
  v474 = v128;
  v130 = *(v129 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v131);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v132);
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3185B0, &qword_1C9097298);
  OUTLINED_FUNCTION_4_22(v133, &v504);
  v471 = v134;
  v136 = *(v135 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v137);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v138);
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3185B8, &qword_1C90972A0);
  OUTLINED_FUNCTION_4_22(v139, &v501);
  v468 = v140;
  v142 = *(v141 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v143);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v144);
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3185C0, &qword_1C90972A8);
  OUTLINED_FUNCTION_4_22(v145, &v498);
  v465 = v146;
  v148 = *(v147 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v149);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v150);
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3185C8, &qword_1C90972B0);
  OUTLINED_FUNCTION_4_22(v151, &v495);
  v462 = v152;
  v154 = *(v153 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v155);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v156);
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3185D0, &qword_1C90972B8);
  OUTLINED_FUNCTION_4_22(v157, &v492);
  v459 = v158;
  v160 = *(v159 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v161);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v162);
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3185D8, &qword_1C90972C0);
  OUTLINED_FUNCTION_4_22(v163, &v489);
  v456 = v164;
  v166 = *(v165 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v167);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v168);
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3185E0, &qword_1C90972C8);
  OUTLINED_FUNCTION_4_22(v169, &v486);
  v453 = v170;
  v172 = *(v171 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v173);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v174);
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3185E8, &qword_1C90972D0);
  OUTLINED_FUNCTION_4_22(v175, &v483);
  v450 = v176;
  v178 = *(v177 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v179);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v180);
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3185F0, &qword_1C90972D8);
  OUTLINED_FUNCTION_4_22(v181, &v480);
  v447 = v182;
  v184 = *(v183 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v185);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v186);
  v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3185F8, &qword_1C90972E0);
  OUTLINED_FUNCTION_4_22(v187, &v477);
  v444[31] = v188;
  v190 = *(v189 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v191);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v192);
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318600, &qword_1C90972E8);
  OUTLINED_FUNCTION_4_22(v193, &v474);
  v444[28] = v194;
  v196 = *(v195 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v197);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v198);
  v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318608, &qword_1C90972F0);
  OUTLINED_FUNCTION_4_22(v199, &a15);
  v577 = v200;
  v202 = *(v201 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v203);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v204);
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318610, &qword_1C90972F8);
  OUTLINED_FUNCTION_4_22(v205, &v471);
  v444[25] = v206;
  v208 = *(v207 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v209);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v210);
  v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318618, &qword_1C9097300);
  OUTLINED_FUNCTION_4_22(v211, &v468);
  v444[22] = v212;
  v214 = *(v213 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v215);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v216);
  v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318620, &qword_1C9097308);
  OUTLINED_FUNCTION_4_22(v217, &v465);
  v444[19] = v218;
  v220 = *(v219 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v221);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v222);
  v223 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318628, &qword_1C9097310);
  OUTLINED_FUNCTION_4_22(v223, &v462);
  v444[16] = v224;
  v226 = *(v225 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v227);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v228);
  v229 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318630, &qword_1C9097318);
  OUTLINED_FUNCTION_4_22(v229, &v459);
  v444[13] = v230;
  v232 = *(v231 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v233);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v234);
  v235 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318638, &qword_1C9097320);
  OUTLINED_FUNCTION_4_22(v235, &v456);
  v444[10] = v236;
  v238 = *(v237 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v239);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v240);
  v241 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318640, &qword_1C9097328);
  OUTLINED_FUNCTION_4_22(v241, &v453);
  v444[7] = v242;
  v244 = *(v243 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v245);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v246);
  v247 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318648, &qword_1C9097330);
  OUTLINED_FUNCTION_4_22(v247, &v450);
  v444[4] = v248;
  v250 = *(v249 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v251);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v252);
  v253 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318650, &qword_1C9097338);
  OUTLINED_FUNCTION_4_22(v253, &v447);
  v444[1] = v254;
  v256 = *(v255 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v257);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v258);
  v259 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318658, &qword_1C9097340);
  OUTLINED_FUNCTION_4_22(v259, &v549);
  v516 = v260;
  v262 = *(v261 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v263);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v264);
  v265 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318660, &qword_1C9097348);
  OUTLINED_FUNCTION_4_22(v265, &v552);
  v519 = v266;
  v268 = *(v267 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v269);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v270);
  v271 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318668, &qword_1C9097350);
  OUTLINED_FUNCTION_4_22(v271, &v555);
  v522 = v272;
  v274 = *(v273 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v275);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v276);
  v277 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318670, &qword_1C9097358);
  OUTLINED_FUNCTION_4_22(v277, &v558);
  v525 = v278;
  v280 = *(v279 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v281);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v282);
  v283 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318678, &qword_1C9097360);
  OUTLINED_FUNCTION_4_22(v283, &v561);
  v528 = v284;
  v286 = *(v285 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v287);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v288);
  v289 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318680, &qword_1C9097368);
  OUTLINED_FUNCTION_4_22(v289, &v564);
  v531 = v290;
  v292 = *(v291 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v293);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v294);
  v295 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318688, &qword_1C9097370);
  OUTLINED_FUNCTION_4_22(v295, &v567);
  v534 = v296;
  v298 = *(v297 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v299);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v300);
  v301 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318690, &qword_1C9097378);
  OUTLINED_FUNCTION_4_22(v301, &v570);
  v537 = v302;
  v304 = *(v303 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v305);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v306);
  v307 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318698, &qword_1C9097380);
  OUTLINED_FUNCTION_4_22(v307, &v573);
  v540 = v308;
  v310 = *(v309 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v311);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v312);
  v313 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3186A0, &qword_1C9097388);
  OUTLINED_FUNCTION_4_22(v313, &v576);
  v543 = v314;
  v316 = *(v315 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v317);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v318);
  v319 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3186A8, &qword_1C9097390);
  OUTLINED_FUNCTION_4_22(v319, &v579);
  v546 = v320;
  v322 = *(v321 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v323);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v324);
  v325 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3186B0, &qword_1C9097398);
  OUTLINED_FUNCTION_4_22(v325, &v582);
  v549 = v326;
  v328 = *(v327 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v329);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v330);
  v331 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3186B8, &qword_1C90973A0);
  OUTLINED_FUNCTION_4_22(v331, &v585);
  v552 = v332;
  v334 = *(v333 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v335);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v336);
  v337 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3186C0, &qword_1C90973A8);
  OUTLINED_FUNCTION_4_22(v337, &v588);
  v555 = v338;
  v340 = *(v339 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v341);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v342);
  v343 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3186C8, &qword_1C90973B0);
  OUTLINED_FUNCTION_4_22(v343, &a13);
  v576 = v344;
  v346 = *(v345 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v347);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v348);
  v349 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3186D0, &qword_1C90973B8);
  OUTLINED_FUNCTION_4_22(v349, &v591);
  v558 = v350;
  v352 = *(v351 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v353);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v354);
  v355 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3186D8, &qword_1C90973C0);
  OUTLINED_FUNCTION_4_22(v355, &v594);
  v561 = v356;
  v358 = *(v357 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v359);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v360);
  v361 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3186E0, &qword_1C90973C8);
  OUTLINED_FUNCTION_4_22(v361, &v597);
  v564 = v362;
  v364 = *(v363 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v365);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v366);
  v367 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3186E8, &qword_1C90973D0);
  OUTLINED_FUNCTION_4_22(v367, &a11);
  v575 = v368;
  v370 = *(v369 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v371);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v372);
  v373 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3186F0, &qword_1C90973D8);
  OUTLINED_FUNCTION_4_22(v373, &v600);
  v567 = v374;
  v376 = *(v375 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v377);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v378);
  v379 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3186F8, &qword_1C90973E0);
  OUTLINED_FUNCTION_4_22(v379, &a9);
  v574 = v380;
  v382 = *(v381 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v383);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v384);
  v385 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318700, &qword_1C90973E8);
  OUTLINED_FUNCTION_4_22(v385, &v616);
  v573 = v386;
  v388 = *(v387 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v389);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v390);
  v391 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318708, &qword_1C90973F0);
  OUTLINED_FUNCTION_4_22(v391, &v614);
  v582 = v392;
  v394 = *(v393 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v395);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v396);
  v397 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318710, &qword_1C90973F8);
  OUTLINED_FUNCTION_4_22(v397, &v603);
  v570 = v398;
  v400 = *(v399 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v401);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v402);
  v403 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318718, &qword_1C9097400);
  OUTLINED_FUNCTION_11(v403);
  v572 = v404;
  v406 = *(v405 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v407);
  OUTLINED_FUNCTION_233();
  v609 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318720, &unk_1C9097408);
  OUTLINED_FUNCTION_11(v609);
  v607 = v408;
  v410 = *(v409 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v411);
  v413 = v444 - v412;
  v414 = v20[1];
  a10 = *v20;
  v415 = v20[2];
  v605 = v20[3];
  v606 = v414;
  v416 = v20[5];
  v603 = v20[4];
  v604 = v415;
  v417 = v20[6];
  v418 = *(v20 + 56);
  v419 = v25;
  v421 = v25[3];
  v420 = v25[4];
  v422 = __swift_project_boxed_opaque_existential_1(v419, v421);
  sub_1C8EAF6AC();
  v608 = v413;
  sub_1C9064E1C();
  switch(v418)
  {
    case 1:
      OUTLINED_FUNCTION_118_3();
      sub_1C8EB0B04();
      OUTLINED_FUNCTION_16_22(&v615);
      OUTLINED_FUNCTION_120_5();
      OUTLINED_FUNCTION_41_13(&v616);
      sub_1C9064B2C();
      v431 = &v605;
      goto LABEL_11;
    case 2:
      OUTLINED_FUNCTION_122_6();
      sub_1C8EB0AB0();
      OUTLINED_FUNCTION_16_22(&v617);
      OUTLINED_FUNCTION_120_5();
      OUTLINED_FUNCTION_41_13(&a9);
      sub_1C9064B2C();
      v431 = &v606;
      goto LABEL_11;
    case 3:
      OUTLINED_FUNCTION_119_7();
      sub_1C8EB0A08();
      OUTLINED_FUNCTION_16_22(&a10);
      OUTLINED_FUNCTION_123_5();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312558, &qword_1C9066990);
      OUTLINED_FUNCTION_21_2(&qword_1EDA6B530);
      OUTLINED_FUNCTION_74_3();
      OUTLINED_FUNCTION_24_22(&a11);
      sub_1C9064B8C();
      v431 = &v607;
      goto LABEL_11;
    case 4:
      OUTLINED_FUNCTION_124_5();
      sub_1C8EB08B8();
      OUTLINED_FUNCTION_16_22(&a12);
      v416 = v591;
      sub_1C9064B3C();
      v431 = &v608;
      goto LABEL_11;
    case 5:
      LOBYTE(v611) = 34;
      sub_1C8EB00D8();
      OUTLINED_FUNCTION_16_22(&a14);
      OUTLINED_FUNCTION_123_5();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312558, &qword_1C9066990);
      OUTLINED_FUNCTION_21_2(&qword_1EDA6B530);
      OUTLINED_FUNCTION_74_3();
      OUTLINED_FUNCTION_24_22(&a15);
      sub_1C9064B8C();
      v431 = &v609;
      goto LABEL_11;
    case 6:
      LOBYTE(v611) = 51;
      sub_1C8EAFB44();
      OUTLINED_FUNCTION_16_22(&a16);
      OUTLINED_FUNCTION_123_5();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312558, &qword_1C9066990);
      OUTLINED_FUNCTION_21_2(&qword_1EDA6B530);
      OUTLINED_FUNCTION_74_3();
      OUTLINED_FUNCTION_24_22(&a17);
      sub_1C9064B8C();
      v431 = &v610;
      goto LABEL_11;
    case 7:
      LOBYTE(v611) = 58;
      sub_1C8EAF8F8();
      OUTLINED_FUNCTION_16_22(&a18);
      OUTLINED_FUNCTION_120_5();
      v416 = v597;
      OUTLINED_FUNCTION_69_0();
      sub_1C9064B2C();
      v431 = &v611;
      goto LABEL_11;
    case 8:
      LOBYTE(v611) = 60;
      sub_1C8EAF850();
      v413 = v598;
      OUTLINED_FUNCTION_18_22();
      LOBYTE(v611) = 0;
      OUTLINED_FUNCTION_120_5();
      v416 = v600;
      OUTLINED_FUNCTION_69_0();
      v439 = v610;
      sub_1C9064B2C();
      if (!v439)
      {
        OUTLINED_FUNCTION_68_5();
        OUTLINED_FUNCTION_69_0();
        sub_1C9064B2C();
      }

      v432 = v599;
      goto LABEL_12;
    case 9:
      LOBYTE(v611) = 63;
      sub_1C8EAF700();
      v413 = v601;
      OUTLINED_FUNCTION_18_22();
      OUTLINED_FUNCTION_123_5();
      LOBYTE(v612[0]) = v606 & 1;
      sub_1C8EAF754();
      v416 = v602;
      sub_1C9064B8C();
      v431 = v612;
LABEL_11:
      v432 = *(v431 - 32);
LABEL_12:
      (*(v432 + 8))(v413, v416);
      OUTLINED_FUNCTION_125_6();
      v429 = v421;
      goto LABEL_13;
    case 10:
      v433 = v603 | v416 | v417;
      if (!(v604 | v606 | a10 | v605 | v433))
      {
        LOBYTE(v611) = 0;
        sub_1C8EB0C00();
        v422 = v608;
        v420 = v609;
        sub_1C9064ACC();
        v435 = OUTLINED_FUNCTION_13_22(&v604);
        v438 = v403;
        goto LABEL_25;
      }

      v434 = v604 | v606 | v605 | v433;
      if (a10 == 1 && !v434)
      {
        OUTLINED_FUNCTION_68_5();
        sub_1C8EB0BAC();
        OUTLINED_FUNCTION_12_27(&v601);
        v435 = OUTLINED_FUNCTION_6_26(&v602);
        v437 = &v603;
LABEL_20:
        v438 = *(v437 - 32);
LABEL_25:
        v436(v435, v438);
        OUTLINED_FUNCTION_125_6();
        v440(v422, v420);
        goto LABEL_15;
      }

      v417 = v609;
      v420 = v610;
      v422 = v608;
      if (a10 != 2 || v434)
      {
        if (a10 != 3 || v434)
        {
          if (a10 != 4 || v434)
          {
            if (a10 != 5 || v434)
            {
              if (a10 != 6 || v434)
              {
                if (a10 != 7 || v434)
                {
                  if (a10 != 8 || v434)
                  {
                    if (a10 != 9 || v434)
                    {
                      if (a10 != 10 || v434)
                      {
                        if (a10 != 11 || v434)
                        {
                          if (a10 != 12 || v434)
                          {
                            if (a10 != 13 || v434)
                            {
                              if (a10 != 14 || v434)
                              {
                                if (a10 != 15 || v434)
                                {
                                  if (a10 != 16 || v434)
                                  {
                                    if (a10 != 17 || v434)
                                    {
                                      if (a10 != 18 || v434)
                                      {
                                        if (a10 != 19 || v434)
                                        {
                                          if (a10 != 20 || v434)
                                          {
                                            if (a10 != 21 || v434)
                                            {
                                              if (a10 != 22 || v434)
                                              {
                                                if (a10 != 23 || v434)
                                                {
                                                  if (a10 != 24 || v434)
                                                  {
                                                    if (a10 != 25 || v434)
                                                    {
                                                      if (a10 != 26 || v434)
                                                      {
                                                        if (a10 != 27 || v434)
                                                        {
                                                          if (a10 != 28 || v434)
                                                          {
                                                            if (a10 != 29 || v434)
                                                            {
                                                              if (a10 != 30 || v434)
                                                              {
                                                                if (a10 != 31 || v434)
                                                                {
                                                                  if (a10 != 32 || v434)
                                                                  {
                                                                    if (a10 != 33 || v434)
                                                                    {
                                                                      if (a10 != 34 || v434)
                                                                      {
                                                                        if (a10 != 35 || v434)
                                                                        {
                                                                          if (a10 != 36 || v434)
                                                                          {
                                                                            if (a10 != 37 || v434)
                                                                            {
                                                                              if (a10 != 38 || v434)
                                                                              {
                                                                                if (a10 != 39 || v434)
                                                                                {
                                                                                  if (a10 != 40 || v434)
                                                                                  {
                                                                                    if (a10 != 41 || v434)
                                                                                    {
                                                                                      if (a10 != 42 || v434)
                                                                                      {
                                                                                        if (a10 != 43 || v434)
                                                                                        {
                                                                                          if (a10 != 44 || v434)
                                                                                          {
                                                                                            if (a10 != 45 || v434)
                                                                                            {
                                                                                              if (a10 != 46 || v434)
                                                                                              {
                                                                                                if (a10 != 47 || v434)
                                                                                                {
                                                                                                  if (a10 != 48 || v434)
                                                                                                  {
                                                                                                    if (a10 != 49 || v434)
                                                                                                    {
                                                                                                      if (a10 != 50 || v434)
                                                                                                      {
                                                                                                        if (a10 != 51 || v434)
                                                                                                        {
                                                                                                          if (a10 != 52 || v434)
                                                                                                          {
                                                                                                            LOBYTE(v611) = 62;
                                                                                                            sub_1C8EAF7A8();
                                                                                                            OUTLINED_FUNCTION_12_27(&v544);
                                                                                                            v435 = OUTLINED_FUNCTION_6_26(&v545);
                                                                                                            v437 = &v546;
                                                                                                          }

                                                                                                          else
                                                                                                          {
                                                                                                            LOBYTE(v611) = 61;
                                                                                                            sub_1C8EAF7FC();
                                                                                                            OUTLINED_FUNCTION_12_27(&v541);
                                                                                                            v435 = OUTLINED_FUNCTION_6_26(&v542);
                                                                                                            v437 = &v543;
                                                                                                          }
                                                                                                        }

                                                                                                        else
                                                                                                        {
                                                                                                          LOBYTE(v611) = 59;
                                                                                                          sub_1C8EAF8A4();
                                                                                                          OUTLINED_FUNCTION_12_27(&v538);
                                                                                                          v435 = OUTLINED_FUNCTION_6_26(&v539);
                                                                                                          v437 = &v540;
                                                                                                        }
                                                                                                      }

                                                                                                      else
                                                                                                      {
                                                                                                        LOBYTE(v611) = 57;
                                                                                                        sub_1C8EAF94C();
                                                                                                        OUTLINED_FUNCTION_12_27(&v535);
                                                                                                        v435 = OUTLINED_FUNCTION_6_26(&v536);
                                                                                                        v437 = &v537;
                                                                                                      }
                                                                                                    }

                                                                                                    else
                                                                                                    {
                                                                                                      LOBYTE(v611) = 56;
                                                                                                      sub_1C8EAF9A0();
                                                                                                      OUTLINED_FUNCTION_12_27(&v532);
                                                                                                      v435 = OUTLINED_FUNCTION_6_26(&v533);
                                                                                                      v437 = &v534;
                                                                                                    }
                                                                                                  }

                                                                                                  else
                                                                                                  {
                                                                                                    LOBYTE(v611) = 55;
                                                                                                    sub_1C8EAF9F4();
                                                                                                    OUTLINED_FUNCTION_12_27(&v529);
                                                                                                    v435 = OUTLINED_FUNCTION_6_26(&v530);
                                                                                                    v437 = &v531;
                                                                                                  }
                                                                                                }

                                                                                                else
                                                                                                {
                                                                                                  LOBYTE(v611) = 54;
                                                                                                  sub_1C8EAFA48();
                                                                                                  OUTLINED_FUNCTION_12_27(&v526);
                                                                                                  v435 = OUTLINED_FUNCTION_6_26(&v527);
                                                                                                  v437 = &v528;
                                                                                                }
                                                                                              }

                                                                                              else
                                                                                              {
                                                                                                LOBYTE(v611) = 53;
                                                                                                sub_1C8EAFA9C();
                                                                                                OUTLINED_FUNCTION_12_27(&v523);
                                                                                                v435 = OUTLINED_FUNCTION_6_26(&v524);
                                                                                                v437 = &v525;
                                                                                              }
                                                                                            }

                                                                                            else
                                                                                            {
                                                                                              LOBYTE(v611) = 52;
                                                                                              sub_1C8EAFAF0();
                                                                                              OUTLINED_FUNCTION_12_27(&v520);
                                                                                              v435 = OUTLINED_FUNCTION_6_26(&v521);
                                                                                              v437 = &v522;
                                                                                            }
                                                                                          }

                                                                                          else
                                                                                          {
                                                                                            LOBYTE(v611) = 50;
                                                                                            sub_1C8EAFB98();
                                                                                            OUTLINED_FUNCTION_12_27(&v517);
                                                                                            v435 = OUTLINED_FUNCTION_6_26(&v518);
                                                                                            v437 = &v519;
                                                                                          }
                                                                                        }

                                                                                        else
                                                                                        {
                                                                                          LOBYTE(v611) = 49;
                                                                                          sub_1C8EAFBEC();
                                                                                          OUTLINED_FUNCTION_12_27(&v514);
                                                                                          v435 = OUTLINED_FUNCTION_6_26(&v515);
                                                                                          v437 = &v516;
                                                                                        }
                                                                                      }

                                                                                      else
                                                                                      {
                                                                                        LOBYTE(v611) = 48;
                                                                                        sub_1C8EAFC40();
                                                                                        OUTLINED_FUNCTION_12_27(&v511);
                                                                                        v435 = OUTLINED_FUNCTION_6_26(&v512);
                                                                                        v437 = &v513;
                                                                                      }
                                                                                    }

                                                                                    else
                                                                                    {
                                                                                      LOBYTE(v611) = 47;
                                                                                      sub_1C8EAFC94();
                                                                                      OUTLINED_FUNCTION_12_27(&v508);
                                                                                      v435 = OUTLINED_FUNCTION_6_26(&v509);
                                                                                      v437 = &v510;
                                                                                    }
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    LOBYTE(v611) = 46;
                                                                                    sub_1C8EAFCE8();
                                                                                    OUTLINED_FUNCTION_12_27(&v505);
                                                                                    v435 = OUTLINED_FUNCTION_6_26(&v506);
                                                                                    v437 = &v507;
                                                                                  }
                                                                                }

                                                                                else
                                                                                {
                                                                                  LOBYTE(v611) = 45;
                                                                                  sub_1C8EAFD3C();
                                                                                  OUTLINED_FUNCTION_12_27(&v502);
                                                                                  v435 = OUTLINED_FUNCTION_6_26(&v503);
                                                                                  v437 = &v504;
                                                                                }
                                                                              }

                                                                              else
                                                                              {
                                                                                LOBYTE(v611) = 44;
                                                                                sub_1C8EAFD90();
                                                                                OUTLINED_FUNCTION_12_27(&v499);
                                                                                v435 = OUTLINED_FUNCTION_6_26(&v500);
                                                                                v437 = &v501;
                                                                              }
                                                                            }

                                                                            else
                                                                            {
                                                                              LOBYTE(v611) = 43;
                                                                              sub_1C8EAFDE4();
                                                                              OUTLINED_FUNCTION_12_27(&v496);
                                                                              v435 = OUTLINED_FUNCTION_6_26(&v497);
                                                                              v437 = &v498;
                                                                            }
                                                                          }

                                                                          else
                                                                          {
                                                                            LOBYTE(v611) = 42;
                                                                            sub_1C8EAFE38();
                                                                            OUTLINED_FUNCTION_12_27(&v493);
                                                                            v435 = OUTLINED_FUNCTION_6_26(&v494);
                                                                            v437 = &v495;
                                                                          }
                                                                        }

                                                                        else
                                                                        {
                                                                          LOBYTE(v611) = 41;
                                                                          sub_1C8EAFE8C();
                                                                          OUTLINED_FUNCTION_12_27(&v490);
                                                                          v435 = OUTLINED_FUNCTION_6_26(&v491);
                                                                          v437 = &v492;
                                                                        }
                                                                      }

                                                                      else
                                                                      {
                                                                        LOBYTE(v611) = 40;
                                                                        sub_1C8EAFEE0();
                                                                        OUTLINED_FUNCTION_12_27(&v487);
                                                                        v435 = OUTLINED_FUNCTION_6_26(&v488);
                                                                        v437 = &v489;
                                                                      }
                                                                    }

                                                                    else
                                                                    {
                                                                      LOBYTE(v611) = 39;
                                                                      sub_1C8EAFF34();
                                                                      OUTLINED_FUNCTION_12_27(&v484);
                                                                      v435 = OUTLINED_FUNCTION_6_26(&v485);
                                                                      v437 = &v486;
                                                                    }
                                                                  }

                                                                  else
                                                                  {
                                                                    LOBYTE(v611) = 38;
                                                                    sub_1C8EAFF88();
                                                                    OUTLINED_FUNCTION_12_27(&v481);
                                                                    v435 = OUTLINED_FUNCTION_6_26(&v482);
                                                                    v437 = &v483;
                                                                  }
                                                                }

                                                                else
                                                                {
                                                                  LOBYTE(v611) = 37;
                                                                  sub_1C8EAFFDC();
                                                                  OUTLINED_FUNCTION_12_27(&v478);
                                                                  v435 = OUTLINED_FUNCTION_6_26(&v479);
                                                                  v437 = &v480;
                                                                }
                                                              }

                                                              else
                                                              {
                                                                LOBYTE(v611) = 36;
                                                                sub_1C8EB0030();
                                                                OUTLINED_FUNCTION_12_27(&v475);
                                                                v435 = OUTLINED_FUNCTION_6_26(&v476);
                                                                v437 = &v477;
                                                              }
                                                            }

                                                            else
                                                            {
                                                              LOBYTE(v611) = 35;
                                                              sub_1C8EB0084();
                                                              OUTLINED_FUNCTION_12_27(&v472);
                                                              v435 = OUTLINED_FUNCTION_6_26(&v473);
                                                              v437 = &v474;
                                                            }
                                                          }

                                                          else
                                                          {
                                                            LOBYTE(v611) = 33;
                                                            sub_1C8EB012C();
                                                            OUTLINED_FUNCTION_12_27(&v469);
                                                            v435 = OUTLINED_FUNCTION_6_26(&v470);
                                                            v437 = &v471;
                                                          }
                                                        }

                                                        else
                                                        {
                                                          LOBYTE(v611) = 32;
                                                          sub_1C8EB0180();
                                                          OUTLINED_FUNCTION_12_27(&v466);
                                                          v435 = OUTLINED_FUNCTION_6_26(&v467);
                                                          v437 = &v468;
                                                        }
                                                      }

                                                      else
                                                      {
                                                        LOBYTE(v611) = 31;
                                                        sub_1C8EB01D4();
                                                        OUTLINED_FUNCTION_12_27(&v463);
                                                        v435 = OUTLINED_FUNCTION_6_26(&v464);
                                                        v437 = &v465;
                                                      }
                                                    }

                                                    else
                                                    {
                                                      LOBYTE(v611) = 30;
                                                      sub_1C8EB0228();
                                                      OUTLINED_FUNCTION_12_27(&v460);
                                                      v435 = OUTLINED_FUNCTION_6_26(&v461);
                                                      v437 = &v462;
                                                    }
                                                  }

                                                  else
                                                  {
                                                    LOBYTE(v611) = 29;
                                                    sub_1C8EB027C();
                                                    OUTLINED_FUNCTION_12_27(&v457);
                                                    v435 = OUTLINED_FUNCTION_6_26(&v458);
                                                    v437 = &v459;
                                                  }
                                                }

                                                else
                                                {
                                                  LOBYTE(v611) = 28;
                                                  sub_1C8EB02D0();
                                                  OUTLINED_FUNCTION_12_27(&v454);
                                                  v435 = OUTLINED_FUNCTION_6_26(&v455);
                                                  v437 = &v456;
                                                }
                                              }

                                              else
                                              {
                                                LOBYTE(v611) = 27;
                                                sub_1C8EB0324();
                                                OUTLINED_FUNCTION_12_27(&v451);
                                                v435 = OUTLINED_FUNCTION_6_26(&v452);
                                                v437 = &v453;
                                              }
                                            }

                                            else
                                            {
                                              LOBYTE(v611) = 26;
                                              sub_1C8EB0378();
                                              OUTLINED_FUNCTION_12_27(&v448);
                                              v435 = OUTLINED_FUNCTION_6_26(&v449);
                                              v437 = &v450;
                                            }
                                          }

                                          else
                                          {
                                            LOBYTE(v611) = 25;
                                            sub_1C8EB03CC();
                                            OUTLINED_FUNCTION_12_27(&v445);
                                            v435 = OUTLINED_FUNCTION_6_26(&v446);
                                            v437 = &v447;
                                          }
                                        }

                                        else
                                        {
                                          LOBYTE(v611) = 24;
                                          sub_1C8EB0420();
                                          OUTLINED_FUNCTION_12_27(&v547);
                                          v435 = OUTLINED_FUNCTION_6_26(&v548);
                                          v437 = &v549;
                                        }
                                      }

                                      else
                                      {
                                        LOBYTE(v611) = 23;
                                        sub_1C8EB0474();
                                        OUTLINED_FUNCTION_12_27(&v550);
                                        v435 = OUTLINED_FUNCTION_6_26(&v551);
                                        v437 = &v552;
                                      }
                                    }

                                    else
                                    {
                                      LOBYTE(v611) = 22;
                                      sub_1C8EB04C8();
                                      OUTLINED_FUNCTION_12_27(&v553);
                                      v435 = OUTLINED_FUNCTION_6_26(&v554);
                                      v437 = &v555;
                                    }
                                  }

                                  else
                                  {
                                    LOBYTE(v611) = 21;
                                    sub_1C8EB051C();
                                    OUTLINED_FUNCTION_12_27(&v556);
                                    v435 = OUTLINED_FUNCTION_6_26(&v557);
                                    v437 = &v558;
                                  }
                                }

                                else
                                {
                                  LOBYTE(v611) = 20;
                                  sub_1C8EB0570();
                                  OUTLINED_FUNCTION_12_27(&v559);
                                  v435 = OUTLINED_FUNCTION_6_26(&v560);
                                  v437 = &v561;
                                }
                              }

                              else
                              {
                                LOBYTE(v611) = 19;
                                sub_1C8EB05C4();
                                OUTLINED_FUNCTION_12_27(&v562);
                                v435 = OUTLINED_FUNCTION_6_26(&v563);
                                v437 = &v564;
                              }
                            }

                            else
                            {
                              LOBYTE(v611) = 18;
                              sub_1C8EB0618();
                              OUTLINED_FUNCTION_12_27(&v565);
                              v435 = OUTLINED_FUNCTION_6_26(&v566);
                              v437 = &v567;
                            }
                          }

                          else
                          {
                            LOBYTE(v611) = 17;
                            sub_1C8EB066C();
                            OUTLINED_FUNCTION_12_27(&v568);
                            v435 = OUTLINED_FUNCTION_6_26(&v569);
                            v437 = &v570;
                          }
                        }

                        else
                        {
                          LOBYTE(v611) = 16;
                          sub_1C8EB06C0();
                          OUTLINED_FUNCTION_12_27(&v571);
                          v435 = OUTLINED_FUNCTION_6_26(&v572);
                          v437 = &v573;
                        }

                        goto LABEL_20;
                      }

                      LOBYTE(v611) = 15;
                      sub_1C8EB0714();
                      OUTLINED_FUNCTION_28_17(&v574);
                      v441 = OUTLINED_FUNCTION_62_0(&v575);
                      v443 = &v576;
                    }

                    else
                    {
                      LOBYTE(v611) = 14;
                      sub_1C8EB0768();
                      OUTLINED_FUNCTION_28_17(&v577);
                      v441 = OUTLINED_FUNCTION_62_0(&v578);
                      v443 = &v579;
                    }
                  }

                  else
                  {
                    LOBYTE(v611) = 13;
                    sub_1C8EB07BC();
                    OUTLINED_FUNCTION_28_17(&v580);
                    v441 = OUTLINED_FUNCTION_62_0(&v581);
                    v443 = &v582;
                  }
                }

                else
                {
                  LOBYTE(v611) = 12;
                  sub_1C8EB0810();
                  OUTLINED_FUNCTION_28_17(&v583);
                  v441 = OUTLINED_FUNCTION_62_0(&v584);
                  v443 = &v585;
                }
              }

              else
              {
                LOBYTE(v611) = 11;
                sub_1C8EB0864();
                OUTLINED_FUNCTION_28_17(&v586);
                v441 = OUTLINED_FUNCTION_62_0(&v587);
                v443 = &v588;
              }
            }

            else
            {
              OUTLINED_FUNCTION_112_4();
              sub_1C8EB090C();
              OUTLINED_FUNCTION_28_17(&v589);
              v441 = OUTLINED_FUNCTION_62_0(&v590);
              v443 = &v591;
            }
          }

          else
          {
            OUTLINED_FUNCTION_113_4();
            sub_1C8EB0960();
            OUTLINED_FUNCTION_28_17(&v592);
            v441 = OUTLINED_FUNCTION_62_0(&v593);
            v443 = &v594;
          }
        }

        else
        {
          OUTLINED_FUNCTION_114_3();
          sub_1C8EB09B4();
          OUTLINED_FUNCTION_28_17(&v595);
          v441 = OUTLINED_FUNCTION_62_0(&v596);
          v443 = &v597;
        }
      }

      else
      {
        OUTLINED_FUNCTION_115_3();
        sub_1C8EB0A5C();
        OUTLINED_FUNCTION_28_17(&v598);
        v441 = OUTLINED_FUNCTION_62_0(&v599);
        v443 = &v600;
      }

      v442(v441, *(v443 - 32));
      OUTLINED_FUNCTION_125_6();
      v429 = v422;
LABEL_13:
      v430 = v417;
LABEL_14:
      v428(v429, v430);
LABEL_15:
      OUTLINED_FUNCTION_198();
      return;
    default:
      OUTLINED_FUNCTION_110_5();
      sub_1C8EB0B58();
      v424 = v608;
      v423 = v609;
      sub_1C9064ACC();
      v611 = a10;
      v612[0] = v606;
      v612[1] = v604;
      v613 = v605;
      v614 = v603;
      v615 = v416;
      v616 = v417;
      sub_1C8E28354();
      v425 = v583;
      sub_1C9064B8C();
      v426 = OUTLINED_FUNCTION_13_22(&v613);
      v427(v426, v425);
      OUTLINED_FUNCTION_125_6();
      v429 = v424;
      v430 = v423;
      goto LABEL_14;
  }
}

void SystemToolProtocol.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  switch(*(v0 + 56))
  {
    case 1:
      v6 = 3;
      goto LABEL_11;
    case 2:
      v6 = 4;
      goto LABEL_11;
    case 3:
      v7 = 6;
      goto LABEL_14;
    case 4:
      MEMORY[0x1CCA82810](10);
      sub_1C9064D9C();
      goto LABEL_33;
    case 5:
      v7 = 34;
      goto LABEL_14;
    case 6:
      v7 = 51;
LABEL_14:
      MEMORY[0x1CCA82810](v7);
      OUTLINED_FUNCTION_163();

      sub_1C8CC1590(v8, v9);
      return;
    case 7:
      v6 = 58;
LABEL_11:
      MEMORY[0x1CCA82810](v6);
      OUTLINED_FUNCTION_83_4();
      goto LABEL_26;
    case 8:
      MEMORY[0x1CCA82810](60);
      OUTLINED_FUNCTION_83_4();
      sub_1C9063FBC();
      goto LABEL_26;
    case 9:
      MEMORY[0x1CCA82810](63);
      if (v2)
      {
        if (v1)
        {
LABEL_29:
          v14 = 1;
        }

        else
        {
LABEL_30:
          v14 = 0;
        }
      }

      else
      {
        MEMORY[0x1CCA82810](2);
        v14 = v1;
      }

      break;
    case 0xA:
      v11 = v5 | *(v0 + 40) | *(v0 + 48);
      if (!(v4 | v2 | v1 | v3 | v11))
      {
        goto LABEL_30;
      }

      v12 = v4 | v2 | v3 | v11;
      if (v1 == 1 && v12 == 0)
      {
        goto LABEL_29;
      }

      if (v1 != 2 || v12)
      {
        if (v1 != 3 || v12)
        {
          if (v1 != 4 || v12)
          {
            if (v1 != 5 || v12)
            {
              if (v1 != 6 || v12)
              {
                if (v1 != 7 || v12)
                {
                  if (v1 != 8 || v12)
                  {
                    if (v1 != 9 || v12)
                    {
                      if (v1 != 10 || v12)
                      {
                        if (v1 != 11 || v12)
                        {
                          if (v1 != 12 || v12)
                          {
                            if (v1 != 13 || v12)
                            {
                              if (v1 != 14 || v12)
                              {
                                if (v1 != 15 || v12)
                                {
                                  if (v1 != 16 || v12)
                                  {
                                    if (v1 != 17 || v12)
                                    {
                                      if (v1 != 18 || v12)
                                      {
                                        if (v1 != 19 || v12)
                                        {
                                          if (v1 != 20 || v12)
                                          {
                                            if (v1 != 21 || v12)
                                            {
                                              if (v1 != 22 || v12)
                                              {
                                                if (v1 != 23 || v12)
                                                {
                                                  if (v1 != 24 || v12)
                                                  {
                                                    if (v1 != 25 || v12)
                                                    {
                                                      if (v1 != 26 || v12)
                                                      {
                                                        if (v1 != 27 || v12)
                                                        {
                                                          if (v1 != 28 || v12)
                                                          {
                                                            if (v1 != 29 || v12)
                                                            {
                                                              if (v1 != 30 || v12)
                                                              {
                                                                if (v1 != 31 || v12)
                                                                {
                                                                  if (v1 != 32 || v12)
                                                                  {
                                                                    if (v1 != 33 || v12)
                                                                    {
                                                                      if (v1 != 34 || v12)
                                                                      {
                                                                        if (v1 != 35 || v12)
                                                                        {
                                                                          if (v1 != 36 || v12)
                                                                          {
                                                                            if (v1 != 37 || v12)
                                                                            {
                                                                              if (v1 != 38 || v12)
                                                                              {
                                                                                if (v1 != 39 || v12)
                                                                                {
                                                                                  if (v1 != 40 || v12)
                                                                                  {
                                                                                    if (v1 != 41 || v12)
                                                                                    {
                                                                                      if (v1 != 42 || v12)
                                                                                      {
                                                                                        if (v1 != 43 || v12)
                                                                                        {
                                                                                          if (v1 != 44 || v12)
                                                                                          {
                                                                                            if (v1 != 45 || v12)
                                                                                            {
                                                                                              if (v1 != 46 || v12)
                                                                                              {
                                                                                                if (v1 != 47 || v12)
                                                                                                {
                                                                                                  if (v1 != 48 || v12)
                                                                                                  {
                                                                                                    if (v1 != 49 || v12)
                                                                                                    {
                                                                                                      if (v1 != 50 || v12)
                                                                                                      {
                                                                                                        if (v1 != 51 || v12)
                                                                                                        {
                                                                                                          if (v1 != 52 || v12)
                                                                                                          {
                                                                                                            v14 = 62;
                                                                                                          }

                                                                                                          else
                                                                                                          {
                                                                                                            v14 = 61;
                                                                                                          }
                                                                                                        }

                                                                                                        else
                                                                                                        {
                                                                                                          v14 = 59;
                                                                                                        }
                                                                                                      }

                                                                                                      else
                                                                                                      {
                                                                                                        v14 = 57;
                                                                                                      }
                                                                                                    }

                                                                                                    else
                                                                                                    {
                                                                                                      v14 = 56;
                                                                                                    }
                                                                                                  }

                                                                                                  else
                                                                                                  {
                                                                                                    v14 = 55;
                                                                                                  }
                                                                                                }

                                                                                                else
                                                                                                {
                                                                                                  v14 = 54;
                                                                                                }
                                                                                              }

                                                                                              else
                                                                                              {
                                                                                                v14 = 53;
                                                                                              }
                                                                                            }

                                                                                            else
                                                                                            {
                                                                                              v14 = 52;
                                                                                            }
                                                                                          }

                                                                                          else
                                                                                          {
                                                                                            v14 = 50;
                                                                                          }
                                                                                        }

                                                                                        else
                                                                                        {
                                                                                          v14 = 49;
                                                                                        }
                                                                                      }

                                                                                      else
                                                                                      {
                                                                                        v14 = 48;
                                                                                      }
                                                                                    }

                                                                                    else
                                                                                    {
                                                                                      v14 = 47;
                                                                                    }
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    v14 = 46;
                                                                                  }
                                                                                }

                                                                                else
                                                                                {
                                                                                  v14 = 45;
                                                                                }
                                                                              }

                                                                              else
                                                                              {
                                                                                v14 = 44;
                                                                              }
                                                                            }

                                                                            else
                                                                            {
                                                                              v14 = 43;
                                                                            }
                                                                          }

                                                                          else
                                                                          {
                                                                            v14 = 42;
                                                                          }
                                                                        }

                                                                        else
                                                                        {
                                                                          v14 = 41;
                                                                        }
                                                                      }

                                                                      else
                                                                      {
                                                                        v14 = 40;
                                                                      }
                                                                    }

                                                                    else
                                                                    {
                                                                      v14 = 39;
                                                                    }
                                                                  }

                                                                  else
                                                                  {
                                                                    v14 = 38;
                                                                  }
                                                                }

                                                                else
                                                                {
                                                                  v14 = 37;
                                                                }
                                                              }

                                                              else
                                                              {
                                                                v14 = 36;
                                                              }
                                                            }

                                                            else
                                                            {
                                                              v14 = 35;
                                                            }
                                                          }

                                                          else
                                                          {
                                                            v14 = 33;
                                                          }
                                                        }

                                                        else
                                                        {
                                                          v14 = 32;
                                                        }
                                                      }

                                                      else
                                                      {
                                                        v14 = 31;
                                                      }
                                                    }

                                                    else
                                                    {
                                                      v14 = 30;
                                                    }
                                                  }

                                                  else
                                                  {
                                                    v14 = 29;
                                                  }
                                                }

                                                else
                                                {
                                                  v14 = 28;
                                                }
                                              }

                                              else
                                              {
                                                v14 = 27;
                                              }
                                            }

                                            else
                                            {
                                              v14 = 26;
                                            }
                                          }

                                          else
                                          {
                                            v14 = 25;
                                          }
                                        }

                                        else
                                        {
                                          v14 = 24;
                                        }
                                      }

                                      else
                                      {
                                        v14 = 23;
                                      }
                                    }

                                    else
                                    {
                                      v14 = 22;
                                    }
                                  }

                                  else
                                  {
                                    v14 = 21;
                                  }
                                }

                                else
                                {
                                  v14 = 20;
                                }
                              }

                              else
                              {
                                v14 = 19;
                              }
                            }

                            else
                            {
                              v14 = 18;
                            }
                          }

                          else
                          {
                            v14 = 17;
                          }
                        }

                        else
                        {
                          v14 = 16;
                        }
                      }

                      else
                      {
                        v14 = 15;
                      }
                    }

                    else
                    {
                      v14 = 14;
                    }
                  }

                  else
                  {
                    v14 = 13;
                  }
                }

                else
                {
                  v14 = 12;
                }
              }

              else
              {
                v14 = 11;
              }
            }

            else
            {
              v14 = 9;
            }
          }

          else
          {
            v14 = 8;
          }
        }

        else
        {
          v14 = 7;
        }
      }

      else
      {
        v14 = 5;
      }

      break;
    default:
      MEMORY[0x1CCA82810](2);
      OUTLINED_FUNCTION_83_4();
      sub_1C9063FBC();
      MEMORY[0x1CCA82830](v4);
      MEMORY[0x1CCA82830](v3);
      MEMORY[0x1CCA82830](v5);
LABEL_26:
      OUTLINED_FUNCTION_163();

      sub_1C9063FBC();
      return;
  }

  MEMORY[0x1CCA82810](v14);
LABEL_33:
  OUTLINED_FUNCTION_163();
}

uint64_t SystemToolProtocol.hashValue.getter()
{
  OUTLINED_FUNCTION_298();
  SystemToolProtocol.hash(into:)();
  return sub_1C9064DBC();
}

void SystemToolProtocol.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_196();
  a19 = v22;
  a20 = v23;
  v903 = v20;
  v25 = v24;
  v898 = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318838, &qword_1C9097418);
  OUTLINED_FUNCTION_4_22(v27, &v872);
  v841 = v28;
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_97();
  v897 = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318840, &qword_1C9097420);
  OUTLINED_FUNCTION_4_22(v33, &v870);
  v838 = v34;
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_97();
  v895 = v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318848, &qword_1C9097428);
  OUTLINED_FUNCTION_4_22(v39, &v868);
  v835 = v40;
  v42 = *(v41 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_97();
  v894 = v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318850, &qword_1C9097430);
  OUTLINED_FUNCTION_4_22(v45, &v871);
  v837 = v46;
  v48 = *(v47 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_97();
  v896 = v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318858, &qword_1C9097438);
  OUTLINED_FUNCTION_4_22(v51, &v865);
  v831 = v52;
  v54 = *(v53 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_97();
  v892 = v56;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318860, &qword_1C9097440);
  OUTLINED_FUNCTION_4_22(v57, &v866);
  v832 = v58;
  v60 = *(v59 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_97();
  v893 = v62;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318868, &qword_1C9097448);
  OUTLINED_FUNCTION_4_22(v63, &v862);
  v829 = v64;
  v66 = *(v65 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_97();
  v891 = v68;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318870, &qword_1C9097450);
  OUTLINED_FUNCTION_4_22(v69, &v860);
  v827 = v70;
  v72 = *(v71 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v73);
  OUTLINED_FUNCTION_97();
  v890 = v74;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318878, &qword_1C9097458);
  OUTLINED_FUNCTION_4_22(v75, &v858);
  v825 = v76;
  v78 = *(v77 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v79);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v80);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318880, &qword_1C9097460);
  OUTLINED_FUNCTION_4_22(v81, &v856);
  v823 = v82;
  v84 = *(v83 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v85);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v86);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318888, &qword_1C9097468);
  OUTLINED_FUNCTION_4_22(v87, &v854);
  v820 = v88;
  v90 = *(v89 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v91);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v92);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318890, &qword_1C9097470);
  OUTLINED_FUNCTION_4_22(v93, &v850);
  v817 = v94;
  v96 = *(v95 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v97);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v98);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318898, &qword_1C9097478);
  OUTLINED_FUNCTION_4_22(v99, &v853);
  v819 = v100;
  v102 = *(v101 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v103);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v104);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3188A0, &qword_1C9097480);
  OUTLINED_FUNCTION_4_22(v105, &v848);
  v815 = v106;
  v108 = *(v107 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v109);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v110);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3188A8, &qword_1C9097488);
  OUTLINED_FUNCTION_4_22(v111, &v846);
  v813 = v112;
  v114 = *(v113 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v115);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v116);
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3188B0, &qword_1C9097490);
  OUTLINED_FUNCTION_4_22(v117, &v844);
  v811 = v118;
  v120 = *(v119 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v121);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v122);
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3188B8, &qword_1C9097498);
  OUTLINED_FUNCTION_4_22(v123, &v842);
  v809 = v124;
  v126 = *(v125 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v127);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v128);
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3188C0, &qword_1C90974A0);
  OUTLINED_FUNCTION_4_22(v129, &v840);
  v807 = v130;
  v132 = *(v131 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v133);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v134);
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3188C8, &qword_1C90974A8);
  OUTLINED_FUNCTION_4_22(v135, &v838);
  v805 = v136;
  v138 = *(v137 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v139);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v140);
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3188D0, &qword_1C90974B0);
  OUTLINED_FUNCTION_4_22(v141, &v836);
  v803 = v142;
  v144 = *(v143 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v145);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v146);
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3188D8, &qword_1C90974B8);
  OUTLINED_FUNCTION_4_22(v147, &v834);
  v801 = v148;
  v150 = *(v149 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v151);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v152);
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3188E0, &qword_1C90974C0);
  OUTLINED_FUNCTION_4_22(v153, &v832);
  v799 = v154;
  v156 = *(v155 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v157);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v158);
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3188E8, &qword_1C90974C8);
  OUTLINED_FUNCTION_4_22(v159, &v830);
  v797 = v160;
  v162 = *(v161 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v163);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v164);
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3188F0, &qword_1C90974D0);
  OUTLINED_FUNCTION_4_22(v165, &v828);
  v795 = v166;
  v168 = *(v167 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v169);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v170);
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3188F8, &qword_1C90974D8);
  OUTLINED_FUNCTION_4_22(v171, &v826);
  v793 = v172;
  v174 = *(v173 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v175);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v176);
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318900, &qword_1C90974E0);
  OUTLINED_FUNCTION_4_22(v177, &v824);
  v791 = v178;
  v180 = *(v179 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v181);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v182);
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318908, &qword_1C90974E8);
  OUTLINED_FUNCTION_4_22(v183, &v822);
  v789 = v184;
  v186 = *(v185 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v187);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v188);
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318910, &qword_1C90974F0);
  OUTLINED_FUNCTION_4_22(v189, &v820);
  v786 = v190;
  v192 = *(v191 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v193);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v194);
  v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318918, &qword_1C90974F8);
  OUTLINED_FUNCTION_4_22(v195, &v816);
  v783 = v196;
  v198 = *(v197 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v199);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v200);
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318920, &qword_1C9097500);
  OUTLINED_FUNCTION_4_22(v201, &v819);
  v785 = v202;
  v204 = *(v203 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v205);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v206);
  v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318928, &qword_1C9097508);
  OUTLINED_FUNCTION_4_22(v207, &v814);
  v781 = v208;
  v210 = *(v209 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v211);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v212);
  v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318930, &qword_1C9097510);
  OUTLINED_FUNCTION_4_22(v213, &v812);
  v779 = v214;
  v216 = *(v215 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v217);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v218);
  v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318938, &qword_1C9097518);
  OUTLINED_FUNCTION_4_22(v219, &v810);
  v777 = v220;
  v222 = *(v221 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v223);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v224);
  v225 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318940, &qword_1C9097520);
  OUTLINED_FUNCTION_4_22(v225, &v808);
  v775 = v226;
  v228 = *(v227 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v229);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v230);
  v231 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318948, &qword_1C9097528);
  OUTLINED_FUNCTION_4_22(v231, &v806);
  v773 = v232;
  v234 = *(v233 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v235);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v236);
  v237 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318950, &qword_1C9097530);
  OUTLINED_FUNCTION_4_22(v237, &v804);
  v771 = v238;
  v240 = *(v239 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v241);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v242);
  v243 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318958, &qword_1C9097538);
  OUTLINED_FUNCTION_4_22(v243, &v802);
  v769 = v244;
  v246 = *(v245 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v247);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v248);
  v249 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318960, &qword_1C9097540);
  OUTLINED_FUNCTION_4_22(v249, &v800);
  v767 = v250;
  v252 = *(v251 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v253);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v254);
  v255 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318968, &qword_1C9097548);
  OUTLINED_FUNCTION_4_22(v255, &v798);
  v765 = v256;
  v258 = *(v257 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v259);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v260);
  v261 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318970, &qword_1C9097550);
  OUTLINED_FUNCTION_4_22(v261, &v796);
  v763 = v262;
  v264 = *(v263 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v265);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v266);
  v267 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318978, &qword_1C9097558);
  OUTLINED_FUNCTION_4_22(v267, &v794);
  v761 = v268;
  v270 = *(v269 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v271);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v272);
  v273 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318980, &qword_1C9097560);
  OUTLINED_FUNCTION_4_22(v273, &v792);
  v759 = v274;
  v276 = *(v275 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v277);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v278);
  v279 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318988, &qword_1C9097568);
  OUTLINED_FUNCTION_4_22(v279, &v790);
  v757 = v280;
  v282 = *(v281 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v283);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v284);
  v285 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318990, &qword_1C9097570);
  OUTLINED_FUNCTION_4_22(v285, &v788);
  v755 = v286;
  v288 = *(v287 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v289);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v290);
  v291 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318998, &qword_1C9097578);
  OUTLINED_FUNCTION_4_22(v291, &v786);
  v753 = v292;
  v294 = *(v293 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v295);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v296);
  v297 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3189A0, &qword_1C9097580);
  OUTLINED_FUNCTION_4_22(v297, &v784);
  v751 = v298;
  v300 = *(v299 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v301);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v302);
  v303 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3189A8, &qword_1C9097588);
  OUTLINED_FUNCTION_4_22(v303, &v782);
  v749 = v304;
  v306 = *(v305 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v307);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v308);
  v309 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3189B0, &qword_1C9097590);
  OUTLINED_FUNCTION_4_22(v309, &v780);
  v747 = v310;
  v312 = *(v311 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v313);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v314);
  v315 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3189B8, &qword_1C9097598);
  OUTLINED_FUNCTION_4_22(v315, &v778);
  v745 = v316;
  v318 = *(v317 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v319);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v320);
  v321 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3189C0, &qword_1C90975A0);
  OUTLINED_FUNCTION_4_22(v321, &v775);
  v744 = v322;
  v324 = *(v323 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v325);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v326);
  v327 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3189C8, &qword_1C90975A8);
  OUTLINED_FUNCTION_4_22(v327, &v773);
  v742 = v328;
  v330 = *(v329 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v331);
  OUTLINED_FUNCTION_97();
  v901 = v332;
  v333 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3189D0, &qword_1C90975B0);
  OUTLINED_FUNCTION_4_22(v333, &v772);
  v739 = v334;
  v336 = *(v335 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v337);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v338);
  v339 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3189D8, &qword_1C90975B8);
  OUTLINED_FUNCTION_4_22(v339, &v770);
  v736 = v340;
  v342 = *(v341 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v343);
  OUTLINED_FUNCTION_97();
  v900 = v344;
  v345 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3189E0, &qword_1C90975C0);
  OUTLINED_FUNCTION_4_22(v345, &v769);
  v735 = v346;
  v348 = *(v347 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v349);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v350);
  v351 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3189E8, &qword_1C90975C8);
  OUTLINED_FUNCTION_4_22(v351, &v766);
  v733 = v352;
  v354 = *(v353 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v355);
  OUTLINED_FUNCTION_97();
  v899 = v356;
  v357 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3189F0, &qword_1C90975D0);
  OUTLINED_FUNCTION_4_22(v357, &v764);
  v731 = v358;
  v360 = *(v359 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v361);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v362);
  v363 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3189F8, &qword_1C90975D8);
  OUTLINED_FUNCTION_4_22(v363, &v760);
  v728 = v364;
  v366 = *(v365 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v367);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v368);
  v369 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318A00, &qword_1C90975E0);
  OUTLINED_FUNCTION_4_22(v369, &v763);
  v730 = v370;
  v372 = *(v371 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v373);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v374);
  v375 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318A08, &qword_1C90975E8);
  OUTLINED_FUNCTION_4_22(v375, &v757);
  v725 = v376;
  v378 = *(v377 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v379);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v380);
  v381 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318A10, &qword_1C90975F0);
  OUTLINED_FUNCTION_4_22(v381, &v758);
  v726 = v382;
  v384 = *(v383 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v385);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v386);
  v387 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318A18, &qword_1C90975F8);
  OUTLINED_FUNCTION_4_22(v387, &v754);
  v724 = v388;
  v390 = *(v389 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v391);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v392);
  v393 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318A20, &qword_1C9097600);
  OUTLINED_FUNCTION_4_22(v393, &v752);
  v723 = v394;
  v396 = *(v395 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v397);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v398);
  v399 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318A28, &qword_1C9097608);
  OUTLINED_FUNCTION_4_22(v399, &v750);
  v721 = v400;
  v402 = *(v401 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v403);
  v405 = &v714 - v404;
  v406 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318A30, &qword_1C9097610);
  OUTLINED_FUNCTION_11(v406);
  v720 = v407;
  v409 = *(v408 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v410);
  OUTLINED_FUNCTION_233();
  v411 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318A38, &unk_1C9097618);
  OUTLINED_FUNCTION_11(v411);
  v413 = v412;
  v415 = *(v414 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v416);
  v418 = &v714 - v417;
  v419 = v25[3];
  v420 = v25[4];
  v902 = v25;
  __swift_project_boxed_opaque_existential_1(v25, v419);
  sub_1C8EAF6AC();
  v421 = v903;
  sub_1C9064DEC();
  if (!v421)
  {
    v718 = v21;
    v717 = v406;
    v719 = v405;
    v423 = v899;
    v422 = v900;
    v424 = v901;
    v903 = v413;
    v425 = v418;
    v426 = sub_1C9064A9C();
    v427 = sub_1C8CB8914(v426, 0);
    v431 = v427;
    if (v429 != v430 >> 1)
    {
      v432 = v428;
      v716 = 0;
      v433 = v430 >> 1;
      if (v429 >= (v430 >> 1))
      {
        __break(1u);
LABEL_76:
        v439 = v427;
        v903 = v433;
        swift_unknownObjectRelease();
        (*v411)(v425, v423);
        (*v431)(v424, v901);
        v447 = v418 & 0xFFFFFFFFFFFFFF00;
        v446 = v420 & 0xFFFFFFFFFFFFFF00;
        *&v448 = v903;
        v449 = 8;
        LOBYTE(v425) = v420;
        v438 = v898;
LABEL_73:
        *v438 = v447 | v418;
        *(v438 + 8) = v446 | v425;
        *(v438 + 16) = v439;
        *(v438 + 24) = v448;
        *(v438 + 40) = v444;
        *(v438 + 48) = v445;
        *(v438 + 56) = v449;
        __swift_destroy_boxed_opaque_existential_1(v422);
        goto LABEL_9;
      }

      v715 = *(v432 + v429);
      v434 = sub_1C8CB891C(v429 + 1);
      v436 = v435;
      v425 = v437;
      swift_unknownObjectRelease();
      if (v436 == v425 >> 1)
      {
        v438 = v898;
        switch(v715)
        {
          case 1:
            OUTLINED_FUNCTION_68_5();
            sub_1C8EB0BAC();
            OUTLINED_FUNCTION_6_32(&v747);
            v439 = 0;
            OUTLINED_FUNCTION_32_15();
            v551 = OUTLINED_FUNCTION_13_22(&v749);
            v552(v551, v722);
            v553 = OUTLINED_FUNCTION_5_36();
            v554(v553);
            *&v448 = OUTLINED_FUNCTION_2_52();
            LOBYTE(v418) = 1;
            goto LABEL_72;
          case 2:
            OUTLINED_FUNCTION_110_5();
            sub_1C8EB0B58();
            OUTLINED_FUNCTION_15_24();
            sub_1C8E28C20();
            OUTLINED_FUNCTION_107_6();
            OUTLINED_FUNCTION_94_6();
            OUTLINED_FUNCTION_32_15();
            v689 = OUTLINED_FUNCTION_8_0(&v751);
            v690(v689, v423);
            v691 = OUTLINED_FUNCTION_5_36();
            v692(v691);
            LOBYTE(v418) = v904;
            LOBYTE(v425) = v905;
            v439 = v906;
            OUTLINED_FUNCTION_117_4();
            goto LABEL_73;
          case 3:
            OUTLINED_FUNCTION_118_3();
            sub_1C8EB0B04();
            OUTLINED_FUNCTION_6_32(&v873);
            v439 = 0;
            v901 = v418;
            OUTLINED_FUNCTION_71_6(&v754);
            OUTLINED_FUNCTION_86_5();
            LOBYTE(v418) = v696;
            LOBYTE(v425) = v697;
            OUTLINED_FUNCTION_34_12();
            swift_unknownObjectRelease();
            v698 = OUTLINED_FUNCTION_54(&v753);
            v699(v698, v424);
            OUTLINED_FUNCTION_33_14();
            v700(v901, v411);
            OUTLINED_FUNCTION_117_4();
            v449 = 1;
            goto LABEL_73;
          case 4:
            OUTLINED_FUNCTION_122_6();
            sub_1C8EB0AB0();
            OUTLINED_FUNCTION_6_32(&v875);
            v439 = 0;
            v901 = v418;
            OUTLINED_FUNCTION_71_6(&v758);
            OUTLINED_FUNCTION_86_5();
            LOBYTE(v418) = v682;
            LOBYTE(v425) = v683;
            OUTLINED_FUNCTION_34_12();
            swift_unknownObjectRelease();
            v684 = OUTLINED_FUNCTION_54(&v756);
            v685(v684, v424);
            OUTLINED_FUNCTION_33_14();
            v686(v901, v411);
            OUTLINED_FUNCTION_117_4();
            v449 = 2;
            goto LABEL_73;
          case 5:
            OUTLINED_FUNCTION_115_3();
            sub_1C8EB0A5C();
            OUTLINED_FUNCTION_6_32(&v874);
            v439 = 0;
            OUTLINED_FUNCTION_32_15();
            v575 = OUTLINED_FUNCTION_13_22(&v755);
            v576(v575, v727);
            v577 = OUTLINED_FUNCTION_5_36();
            v578(v577);
            *&v448 = OUTLINED_FUNCTION_2_52();
            LOBYTE(v418) = 2;
            goto LABEL_72;
          case 6:
            OUTLINED_FUNCTION_119_7();
            sub_1C8EB0A08();
            OUTLINED_FUNCTION_6_32(&v877);
            LOBYTE(v418) = 0;
            v439 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312558, &qword_1C9066990);
            OUTLINED_FUNCTION_22_1(&unk_1EDA6B520);
            OUTLINED_FUNCTION_40_15();
            OUTLINED_FUNCTION_63_9();
            OUTLINED_FUNCTION_94_6();
            OUTLINED_FUNCTION_34_12();
            swift_unknownObjectRelease();
            OUTLINED_FUNCTION_296(&v761);
            v701 = OUTLINED_FUNCTION_332();
            v702(v701);
            OUTLINED_FUNCTION_33_14();
            v703 = OUTLINED_FUNCTION_127();
            v704(v703);
            OUTLINED_FUNCTION_81_5();
            v449 = 3;
            goto LABEL_73;
          case 7:
            OUTLINED_FUNCTION_114_3();
            sub_1C8EB09B4();
            OUTLINED_FUNCTION_6_32(&v876);
            v439 = 0;
            OUTLINED_FUNCTION_32_15();
            v547 = OUTLINED_FUNCTION_13_22(&v759);
            v548(v547, v729);
            v549 = OUTLINED_FUNCTION_5_36();
            v550(v549);
            *&v448 = OUTLINED_FUNCTION_2_52();
            LOBYTE(v418) = 3;
            goto LABEL_72;
          case 8:
            OUTLINED_FUNCTION_113_4();
            sub_1C8EB0960();
            OUTLINED_FUNCTION_6_32(&v878);
            v439 = 0;
            OUTLINED_FUNCTION_32_15();
            v597 = OUTLINED_FUNCTION_13_22(&v762);
            v598(v597, v732);
            v599 = OUTLINED_FUNCTION_5_36();
            v600(v599);
            *&v448 = OUTLINED_FUNCTION_2_52();
            LOBYTE(v418) = 4;
            goto LABEL_72;
          case 9:
            OUTLINED_FUNCTION_112_4();
            sub_1C8EB090C();
            OUTLINED_FUNCTION_15_24();
            v439 = 0;
            OUTLINED_FUNCTION_32_15();
            OUTLINED_FUNCTION_296(&v765);
            v531(v423, v734);
            v532 = OUTLINED_FUNCTION_5_36();
            v533(v532);
            *&v448 = OUTLINED_FUNCTION_2_52();
            LOBYTE(v418) = 5;
            goto LABEL_72;
          case 10:
            OUTLINED_FUNCTION_124_5();
            sub_1C8EB08B8();
            OUTLINED_FUNCTION_15_24();
            v595 = v737;
            v596 = sub_1C9064A1C();
            v422 = v902;
            v716 = 0;
            v425 = v903;
            v439 = v596;
            swift_unknownObjectRelease();
            v705 = OUTLINED_FUNCTION_8_0(&v767);
            v706(v705, v595);
            v707 = *(v425 + 8);
            LOBYTE(v425) = v425 + 8;
            v708 = OUTLINED_FUNCTION_177_5();
            v709(v708);
            v446 = 0;
            v447 = 0;
            LOBYTE(v418) = v439 & 1;
            v449 = 4;
            goto LABEL_73;
          case 11:
            LOBYTE(v904) = 11;
            sub_1C8EB0864();
            OUTLINED_FUNCTION_9_26();
            v439 = 0;
            OUTLINED_FUNCTION_32_15();
            v514 = OUTLINED_FUNCTION_13_22(&v768);
            v515(v514, v738);
            v516 = OUTLINED_FUNCTION_5_36();
            v517(v516);
            *&v448 = OUTLINED_FUNCTION_2_52();
            LOBYTE(v418) = 6;
            goto LABEL_72;
          case 12:
            LOBYTE(v904) = 12;
            sub_1C8EB0810();
            OUTLINED_FUNCTION_6_32(&v879);
            v439 = 0;
            OUTLINED_FUNCTION_32_15();
            v527 = OUTLINED_FUNCTION_13_22(&v771);
            v528(v527, v740);
            v529 = OUTLINED_FUNCTION_5_36();
            v530(v529);
            *&v448 = OUTLINED_FUNCTION_2_52();
            LOBYTE(v418) = 7;
            goto LABEL_72;
          case 13:
            LOBYTE(v904) = 13;
            sub_1C8EB07BC();
            OUTLINED_FUNCTION_15_24();
            v439 = 0;
            OUTLINED_FUNCTION_32_15();
            v587 = OUTLINED_FUNCTION_8_0(&v774);
            v588(v587, v741);
            v589 = OUTLINED_FUNCTION_5_36();
            v590(v589);
            *&v448 = OUTLINED_FUNCTION_2_52();
            LOBYTE(v418) = 8;
            goto LABEL_72;
          case 14:
            LOBYTE(v904) = 14;
            sub_1C8EB0768();
            OUTLINED_FUNCTION_6_32(&v880);
            v439 = 0;
            OUTLINED_FUNCTION_32_15();
            v502 = OUTLINED_FUNCTION_13_22(&v776);
            v503(v502, v743);
            v504 = OUTLINED_FUNCTION_5_36();
            v505(v504);
            *&v448 = OUTLINED_FUNCTION_2_52();
            LOBYTE(v418) = 9;
            goto LABEL_72;
          case 15:
            LOBYTE(v904) = 15;
            sub_1C8EB0714();
            OUTLINED_FUNCTION_6_32(&v881);
            v439 = 0;
            OUTLINED_FUNCTION_32_15();
            v542 = OUTLINED_FUNCTION_13_22(&v777);
            v543(v542, v746);
            v544 = OUTLINED_FUNCTION_5_36();
            v545(v544);
            *&v448 = OUTLINED_FUNCTION_2_52();
            LOBYTE(v418) = 10;
            goto LABEL_72;
          case 16:
            LOBYTE(v904) = 16;
            sub_1C8EB06C0();
            OUTLINED_FUNCTION_6_32(&v882);
            v439 = 0;
            OUTLINED_FUNCTION_32_15();
            v494 = OUTLINED_FUNCTION_13_22(&v779);
            v495(v494, v748);
            v496 = OUTLINED_FUNCTION_5_36();
            v497(v496);
            *&v448 = OUTLINED_FUNCTION_2_52();
            LOBYTE(v418) = 11;
            goto LABEL_72;
          case 17:
            LOBYTE(v904) = 17;
            sub_1C8EB066C();
            OUTLINED_FUNCTION_6_32(&v883);
            v439 = 0;
            OUTLINED_FUNCTION_32_15();
            v559 = OUTLINED_FUNCTION_13_22(&v781);
            v560(v559, v750);
            v561 = OUTLINED_FUNCTION_5_36();
            v562(v561);
            *&v448 = OUTLINED_FUNCTION_2_52();
            LOBYTE(v418) = 12;
            goto LABEL_72;
          case 18:
            LOBYTE(v904) = 18;
            sub_1C8EB0618();
            OUTLINED_FUNCTION_6_32(&v884);
            v439 = 0;
            OUTLINED_FUNCTION_32_15();
            v591 = OUTLINED_FUNCTION_13_22(&v783);
            v592(v591, v752);
            v593 = OUTLINED_FUNCTION_5_36();
            v594(v593);
            *&v448 = OUTLINED_FUNCTION_2_52();
            LOBYTE(v418) = 13;
            goto LABEL_72;
          case 19:
            LOBYTE(v904) = 19;
            sub_1C8EB05C4();
            OUTLINED_FUNCTION_6_32(&v885);
            v439 = 0;
            OUTLINED_FUNCTION_32_15();
            v621 = OUTLINED_FUNCTION_13_22(&v785);
            v622(v621, v754);
            v623 = OUTLINED_FUNCTION_5_36();
            v624(v623);
            *&v448 = OUTLINED_FUNCTION_2_52();
            LOBYTE(v418) = 14;
            goto LABEL_72;
          case 20:
            LOBYTE(v904) = 20;
            sub_1C8EB0570();
            OUTLINED_FUNCTION_6_32(&v886);
            v439 = 0;
            OUTLINED_FUNCTION_32_15();
            v567 = OUTLINED_FUNCTION_13_22(&v787);
            v568(v567, v756);
            v569 = OUTLINED_FUNCTION_5_36();
            v570(v569);
            *&v448 = OUTLINED_FUNCTION_2_52();
            LOBYTE(v418) = 15;
            goto LABEL_72;
          case 21:
            LOBYTE(v904) = 21;
            sub_1C8EB051C();
            OUTLINED_FUNCTION_6_32(&v887);
            v439 = 0;
            OUTLINED_FUNCTION_32_15();
            v583 = OUTLINED_FUNCTION_13_22(&v789);
            v584(v583, v758);
            v585 = OUTLINED_FUNCTION_5_36();
            v586(v585);
            *&v448 = OUTLINED_FUNCTION_2_52();
            LOBYTE(v418) = 16;
            goto LABEL_72;
          case 22:
            LOBYTE(v904) = 22;
            sub_1C8EB04C8();
            OUTLINED_FUNCTION_6_32(&v888);
            v439 = 0;
            OUTLINED_FUNCTION_32_15();
            v613 = OUTLINED_FUNCTION_13_22(&v791);
            v614(v613, v760);
            v615 = OUTLINED_FUNCTION_5_36();
            v616(v615);
            *&v448 = OUTLINED_FUNCTION_2_52();
            LOBYTE(v418) = 17;
            goto LABEL_72;
          case 23:
            LOBYTE(v904) = 23;
            sub_1C8EB0474();
            OUTLINED_FUNCTION_6_32(&v889);
            v439 = 0;
            OUTLINED_FUNCTION_32_15();
            v637 = OUTLINED_FUNCTION_13_22(&v793);
            v638(v637, v762);
            v639 = OUTLINED_FUNCTION_5_36();
            v640(v639);
            *&v448 = OUTLINED_FUNCTION_2_52();
            LOBYTE(v418) = 18;
            goto LABEL_72;
          case 24:
            LOBYTE(v904) = 24;
            sub_1C8EB0420();
            OUTLINED_FUNCTION_6_32(&v890);
            v439 = 0;
            OUTLINED_FUNCTION_32_15();
            v538 = OUTLINED_FUNCTION_13_22(&v795);
            v539(v538, v764);
            v540 = OUTLINED_FUNCTION_5_36();
            v541(v540);
            *&v448 = OUTLINED_FUNCTION_2_52();
            LOBYTE(v418) = 19;
            goto LABEL_72;
          case 25:
            LOBYTE(v904) = 25;
            sub_1C8EB03CC();
            OUTLINED_FUNCTION_6_32(&v891);
            v439 = 0;
            OUTLINED_FUNCTION_32_15();
            v534 = OUTLINED_FUNCTION_13_22(&v797);
            v535(v534, v766);
            v536 = OUTLINED_FUNCTION_5_36();
            v537(v536);
            *&v448 = OUTLINED_FUNCTION_2_52();
            LOBYTE(v418) = 20;
            goto LABEL_72;
          case 26:
            LOBYTE(v904) = 26;
            sub_1C8EB0378();
            OUTLINED_FUNCTION_6_32(&v892);
            v439 = 0;
            OUTLINED_FUNCTION_32_15();
            v653 = OUTLINED_FUNCTION_13_22(&v799);
            v654(v653, v768);
            v655 = OUTLINED_FUNCTION_5_36();
            v656(v655);
            *&v448 = OUTLINED_FUNCTION_2_52();
            LOBYTE(v418) = 21;
            goto LABEL_72;
          case 27:
            LOBYTE(v904) = 27;
            sub_1C8EB0324();
            OUTLINED_FUNCTION_6_32(&v893);
            v439 = 0;
            OUTLINED_FUNCTION_32_15();
            v490 = OUTLINED_FUNCTION_13_22(&v801);
            v491(v490, v770);
            v492 = OUTLINED_FUNCTION_5_36();
            v493(v492);
            *&v448 = OUTLINED_FUNCTION_2_52();
            LOBYTE(v418) = 22;
            goto LABEL_72;
          case 28:
            LOBYTE(v904) = 28;
            sub_1C8EB02D0();
            OUTLINED_FUNCTION_6_32(&v894);
            v439 = 0;
            OUTLINED_FUNCTION_32_15();
            v641 = OUTLINED_FUNCTION_13_22(&v803);
            v642(v641, v772);
            v643 = OUTLINED_FUNCTION_5_36();
            v644(v643);
            *&v448 = OUTLINED_FUNCTION_2_52();
            LOBYTE(v418) = 23;
            goto LABEL_72;
          case 29:
            LOBYTE(v904) = 29;
            sub_1C8EB027C();
            OUTLINED_FUNCTION_6_32(&v895);
            v439 = 0;
            OUTLINED_FUNCTION_32_15();
            v645 = OUTLINED_FUNCTION_13_22(&v805);
            v646(v645, v774);
            v647 = OUTLINED_FUNCTION_5_36();
            v648(v647);
            *&v448 = OUTLINED_FUNCTION_2_52();
            LOBYTE(v418) = 24;
            goto LABEL_72;
          case 30:
            LOBYTE(v904) = 30;
            sub_1C8EB0228();
            OUTLINED_FUNCTION_6_32(&v896);
            v439 = 0;
            OUTLINED_FUNCTION_32_15();
            v601 = OUTLINED_FUNCTION_13_22(&v807);
            v602(v601, v776);
            v603 = OUTLINED_FUNCTION_5_36();
            v604(v603);
            *&v448 = OUTLINED_FUNCTION_2_52();
            LOBYTE(v418) = 25;
            goto LABEL_72;
          case 31:
            LOBYTE(v904) = 31;
            sub_1C8EB01D4();
            OUTLINED_FUNCTION_6_32(&v897);
            v439 = 0;
            OUTLINED_FUNCTION_32_15();
            v555 = OUTLINED_FUNCTION_13_22(&v809);
            v556(v555, v778);
            v557 = OUTLINED_FUNCTION_5_36();
            v558(v557);
            *&v448 = OUTLINED_FUNCTION_2_52();
            LOBYTE(v418) = 26;
            goto LABEL_72;
          case 32:
            LOBYTE(v904) = 32;
            sub_1C8EB0180();
            OUTLINED_FUNCTION_6_32(&v898);
            v439 = 0;
            OUTLINED_FUNCTION_32_15();
            v605 = OUTLINED_FUNCTION_13_22(&v811);
            v606(v605, v780);
            v607 = OUTLINED_FUNCTION_5_36();
            v608(v607);
            *&v448 = OUTLINED_FUNCTION_2_52();
            LOBYTE(v418) = 27;
            goto LABEL_72;
          case 33:
            LOBYTE(v904) = 33;
            sub_1C8EB012C();
            OUTLINED_FUNCTION_6_32(&v899);
            v439 = 0;
            OUTLINED_FUNCTION_32_15();
            v506 = OUTLINED_FUNCTION_13_22(&v813);
            v507(v506, v782);
            v508 = OUTLINED_FUNCTION_5_36();
            v509(v508);
            *&v448 = OUTLINED_FUNCTION_2_52();
            LOBYTE(v418) = 28;
            goto LABEL_72;
          case 34:
            LOBYTE(v904) = 34;
            sub_1C8EB00D8();
            OUTLINED_FUNCTION_6_32(&v901);
            LOBYTE(v418) = 0;
            v439 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312558, &qword_1C9066990);
            OUTLINED_FUNCTION_22_1(&unk_1EDA6B520);
            OUTLINED_FUNCTION_40_15();
            OUTLINED_FUNCTION_63_9();
            OUTLINED_FUNCTION_94_6();
            OUTLINED_FUNCTION_34_12();
            swift_unknownObjectRelease();
            OUTLINED_FUNCTION_296(&v817);
            v673 = OUTLINED_FUNCTION_332();
            v674(v673);
            OUTLINED_FUNCTION_33_14();
            v675 = OUTLINED_FUNCTION_127();
            v676(v675);
            OUTLINED_FUNCTION_81_5();
            v449 = 5;
            goto LABEL_73;
          case 35:
            LOBYTE(v904) = 35;
            sub_1C8EB0084();
            OUTLINED_FUNCTION_6_32(&v900);
            v439 = 0;
            OUTLINED_FUNCTION_32_15();
            v482 = OUTLINED_FUNCTION_13_22(&v815);
            v483(v482, v784);
            v484 = OUTLINED_FUNCTION_5_36();
            v485(v484);
            *&v448 = OUTLINED_FUNCTION_2_52();
            LOBYTE(v418) = 29;
            goto LABEL_72;
          case 36:
            LOBYTE(v904) = 36;
            sub_1C8EB0030();
            OUTLINED_FUNCTION_6_32(&v902);
            v439 = 0;
            OUTLINED_FUNCTION_32_15();
            v486 = OUTLINED_FUNCTION_13_22(&v818);
            v487(v486, v788);
            v488 = OUTLINED_FUNCTION_5_36();
            v489(v488);
            *&v448 = OUTLINED_FUNCTION_2_52();
            LOBYTE(v418) = 30;
            goto LABEL_72;
          case 37:
            LOBYTE(v904) = 37;
            sub_1C8EAFFDC();
            OUTLINED_FUNCTION_6_32(&v903);
            v439 = 0;
            OUTLINED_FUNCTION_32_15();
            v466 = OUTLINED_FUNCTION_13_22(&v821);
            v467(v466, v790);
            v468 = OUTLINED_FUNCTION_5_36();
            v469(v468);
            *&v448 = OUTLINED_FUNCTION_2_52();
            LOBYTE(v418) = 31;
            goto LABEL_72;
          case 38:
            LOBYTE(v904) = 38;
            sub_1C8EAFF88();
            OUTLINED_FUNCTION_6_32(&v904);
            v439 = 0;
            OUTLINED_FUNCTION_32_15();
            v649 = OUTLINED_FUNCTION_13_22(&v823);
            v650(v649, v792);
            v651 = OUTLINED_FUNCTION_5_36();
            v652(v651);
            *&v448 = OUTLINED_FUNCTION_2_52();
            LOBYTE(v418) = 32;
            goto LABEL_72;
          case 39:
            LOBYTE(v904) = 39;
            sub_1C8EAFF34();
            OUTLINED_FUNCTION_6_32(&v905);
            v439 = 0;
            OUTLINED_FUNCTION_32_15();
            v617 = OUTLINED_FUNCTION_13_22(&v825);
            v618(v617, v794);
            v619 = OUTLINED_FUNCTION_5_36();
            v620(v619);
            *&v448 = OUTLINED_FUNCTION_2_52();
            LOBYTE(v418) = 33;
            goto LABEL_72;
          case 40:
            LOBYTE(v904) = 40;
            sub_1C8EAFEE0();
            OUTLINED_FUNCTION_6_32(&v906);
            v439 = 0;
            OUTLINED_FUNCTION_32_15();
            v522 = OUTLINED_FUNCTION_13_22(&v827);
            v523(v522, v796);
            v524 = OUTLINED_FUNCTION_5_36();
            v525(v524);
            *&v448 = OUTLINED_FUNCTION_2_52();
            LOBYTE(v418) = 34;
            goto LABEL_72;
          case 41:
            LOBYTE(v904) = 41;
            sub_1C8EAFE8C();
            OUTLINED_FUNCTION_6_32(&v907);
            v439 = 0;
            OUTLINED_FUNCTION_32_15();
            v563 = OUTLINED_FUNCTION_13_22(&v829);
            v564(v563, v798);
            v565 = OUTLINED_FUNCTION_5_36();
            v566(v565);
            *&v448 = OUTLINED_FUNCTION_2_52();
            LOBYTE(v418) = 35;
            goto LABEL_72;
          case 42:
            LOBYTE(v904) = 42;
            sub_1C8EAFE38();
            OUTLINED_FUNCTION_6_32(&v908);
            v439 = 0;
            OUTLINED_FUNCTION_32_15();
            v629 = OUTLINED_FUNCTION_13_22(&v831);
            v630(v629, v800);
            v631 = OUTLINED_FUNCTION_5_36();
            v632(v631);
            *&v448 = OUTLINED_FUNCTION_2_52();
            LOBYTE(v418) = 36;
            goto LABEL_72;
          case 43:
            LOBYTE(v904) = 43;
            sub_1C8EAFDE4();
            OUTLINED_FUNCTION_6_32(&v909);
            v439 = 0;
            OUTLINED_FUNCTION_32_15();
            v462 = OUTLINED_FUNCTION_13_22(&v833);
            v463(v462, v802);
            v464 = OUTLINED_FUNCTION_5_36();
            v465(v464);
            *&v448 = OUTLINED_FUNCTION_2_52();
            LOBYTE(v418) = 37;
            goto LABEL_72;
          case 44:
            LOBYTE(v904) = 44;
            sub_1C8EAFD90();
            OUTLINED_FUNCTION_6_32(&v910);
            v439 = 0;
            OUTLINED_FUNCTION_32_15();
            v498 = OUTLINED_FUNCTION_13_22(&v835);
            v499(v498, v804);
            v500 = OUTLINED_FUNCTION_5_36();
            v501(v500);
            *&v448 = OUTLINED_FUNCTION_2_52();
            LOBYTE(v418) = 38;
            goto LABEL_72;
          case 45:
            LOBYTE(v904) = 45;
            sub_1C8EAFD3C();
            OUTLINED_FUNCTION_6_32(&v911);
            v439 = 0;
            OUTLINED_FUNCTION_32_15();
            v609 = OUTLINED_FUNCTION_13_22(&v837);
            v610(v609, v806);
            v611 = OUTLINED_FUNCTION_5_36();
            v612(v611);
            *&v448 = OUTLINED_FUNCTION_2_52();
            LOBYTE(v418) = 39;
            goto LABEL_72;
          case 46:
            LOBYTE(v904) = 46;
            sub_1C8EAFCE8();
            OUTLINED_FUNCTION_6_32(&a9);
            v439 = 0;
            OUTLINED_FUNCTION_32_15();
            v669 = OUTLINED_FUNCTION_13_22(&v839);
            v670(v669, v808);
            v671 = OUTLINED_FUNCTION_5_36();
            v672(v671);
            *&v448 = OUTLINED_FUNCTION_2_52();
            LOBYTE(v418) = 40;
            goto LABEL_72;
          case 47:
            LOBYTE(v904) = 47;
            sub_1C8EAFC94();
            OUTLINED_FUNCTION_6_32(&a10);
            v439 = 0;
            OUTLINED_FUNCTION_32_15();
            v474 = OUTLINED_FUNCTION_13_22(&v841);
            v475(v474, v810);
            v476 = OUTLINED_FUNCTION_5_36();
            v477(v476);
            *&v448 = OUTLINED_FUNCTION_2_52();
            LOBYTE(v418) = 41;
            goto LABEL_72;
          case 48:
            LOBYTE(v904) = 48;
            sub_1C8EAFC40();
            OUTLINED_FUNCTION_6_32(&a11);
            v439 = 0;
            OUTLINED_FUNCTION_32_15();
            v510 = OUTLINED_FUNCTION_13_22(&v843);
            v511(v510, v812);
            v512 = OUTLINED_FUNCTION_5_36();
            v513(v512);
            *&v448 = OUTLINED_FUNCTION_2_52();
            LOBYTE(v418) = 42;
            goto LABEL_72;
          case 49:
            LOBYTE(v904) = 49;
            sub_1C8EAFBEC();
            OUTLINED_FUNCTION_6_32(&a12);
            v439 = 0;
            OUTLINED_FUNCTION_32_15();
            v518 = OUTLINED_FUNCTION_13_22(&v845);
            v519(v518, v814);
            v520 = OUTLINED_FUNCTION_5_36();
            v521(v520);
            *&v448 = OUTLINED_FUNCTION_2_52();
            LOBYTE(v418) = 43;
            goto LABEL_72;
          case 50:
            LOBYTE(v904) = 50;
            sub_1C8EAFB98();
            OUTLINED_FUNCTION_6_32(&a13);
            v439 = 0;
            OUTLINED_FUNCTION_32_15();
            v458 = OUTLINED_FUNCTION_13_22(&v847);
            v459(v458, v816);
            v460 = OUTLINED_FUNCTION_5_36();
            v461(v460);
            *&v448 = OUTLINED_FUNCTION_2_52();
            LOBYTE(v418) = 44;
            goto LABEL_72;
          case 51:
            LOBYTE(v904) = 51;
            sub_1C8EAFB44();
            OUTLINED_FUNCTION_6_32(&a15);
            LOBYTE(v418) = 0;
            v439 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312558, &qword_1C9066990);
            OUTLINED_FUNCTION_22_1(&unk_1EDA6B520);
            OUTLINED_FUNCTION_40_15();
            OUTLINED_FUNCTION_63_9();
            OUTLINED_FUNCTION_94_6();
            OUTLINED_FUNCTION_34_12();
            swift_unknownObjectRelease();
            OUTLINED_FUNCTION_296(&v851);
            v710 = OUTLINED_FUNCTION_332();
            v711(v710);
            OUTLINED_FUNCTION_33_14();
            v712 = OUTLINED_FUNCTION_127();
            v713(v712);
            OUTLINED_FUNCTION_81_5();
            v449 = 6;
            goto LABEL_73;
          case 52:
            LOBYTE(v904) = 52;
            sub_1C8EAFAF0();
            OUTLINED_FUNCTION_6_32(&a14);
            v439 = 0;
            OUTLINED_FUNCTION_32_15();
            v665 = OUTLINED_FUNCTION_13_22(&v849);
            v666(v665, v818);
            v667 = OUTLINED_FUNCTION_5_36();
            v668(v667);
            *&v448 = OUTLINED_FUNCTION_2_52();
            LOBYTE(v418) = 45;
            goto LABEL_72;
          case 53:
            LOBYTE(v904) = 53;
            sub_1C8EAFA9C();
            OUTLINED_FUNCTION_6_32(&a16);
            v439 = 0;
            OUTLINED_FUNCTION_32_15();
            v470 = OUTLINED_FUNCTION_13_22(&v852);
            v471(v470, v822);
            v472 = OUTLINED_FUNCTION_5_36();
            v473(v472);
            *&v448 = OUTLINED_FUNCTION_2_52();
            LOBYTE(v418) = 46;
            goto LABEL_72;
          case 54:
            LOBYTE(v904) = 54;
            sub_1C8EAFA48();
            OUTLINED_FUNCTION_6_32(&a17);
            v439 = 0;
            OUTLINED_FUNCTION_32_15();
            v657 = OUTLINED_FUNCTION_13_22(&v855);
            v658(v657, v824);
            v659 = OUTLINED_FUNCTION_5_36();
            v660(v659);
            *&v448 = OUTLINED_FUNCTION_2_52();
            LOBYTE(v418) = 47;
            goto LABEL_72;
          case 55:
            LOBYTE(v904) = 55;
            sub_1C8EAF9F4();
            OUTLINED_FUNCTION_6_32(&a18);
            v439 = 0;
            OUTLINED_FUNCTION_32_15();
            v661 = OUTLINED_FUNCTION_13_22(&v857);
            v662(v661, v826);
            v663 = OUTLINED_FUNCTION_5_36();
            v664(v663);
            *&v448 = OUTLINED_FUNCTION_2_52();
            LOBYTE(v418) = 48;
            goto LABEL_72;
          case 56:
            LOBYTE(v904) = 56;
            sub_1C8EAF9A0();
            OUTLINED_FUNCTION_9_26();
            v439 = 0;
            OUTLINED_FUNCTION_32_15();
            v478 = OUTLINED_FUNCTION_13_22(&v859);
            v479(v478, v828);
            v480 = OUTLINED_FUNCTION_5_36();
            v481(v480);
            *&v448 = OUTLINED_FUNCTION_2_52();
            LOBYTE(v418) = 49;
            goto LABEL_72;
          case 57:
            LOBYTE(v904) = 57;
            sub_1C8EAF94C();
            OUTLINED_FUNCTION_9_26();
            v439 = 0;
            OUTLINED_FUNCTION_32_15();
            v625 = OUTLINED_FUNCTION_13_22(&v861);
            v626(v625, v830);
            v627 = OUTLINED_FUNCTION_5_36();
            v628(v627);
            *&v448 = OUTLINED_FUNCTION_2_52();
            LOBYTE(v418) = 50;
            goto LABEL_72;
          case 58:
            LOBYTE(v904) = 58;
            sub_1C8EAF8F8();
            v422 = v893;
            OUTLINED_FUNCTION_9_26();
            v439 = 0;
            v901 = v418;
            OUTLINED_FUNCTION_71_6(&v866);
            OUTLINED_FUNCTION_86_5();
            LOBYTE(v418) = v677;
            LOBYTE(v425) = v678;
            OUTLINED_FUNCTION_34_12();
            swift_unknownObjectRelease();
            v679 = OUTLINED_FUNCTION_54(&v864);
            v680(v679, v424);
            OUTLINED_FUNCTION_33_14();
            v681(v901, v411);
            OUTLINED_FUNCTION_117_4();
            v449 = 7;
            goto LABEL_73;
          case 59:
            LOBYTE(v904) = 59;
            sub_1C8EAF8A4();
            OUTLINED_FUNCTION_9_26();
            v439 = 0;
            OUTLINED_FUNCTION_32_15();
            v633 = OUTLINED_FUNCTION_13_22(&v863);
            v634(v633, v833);
            v635 = OUTLINED_FUNCTION_5_36();
            v636(v635);
            *&v448 = OUTLINED_FUNCTION_2_52();
            LOBYTE(v418) = 51;
            goto LABEL_72;
          case 60:
            LOBYTE(v904) = 60;
            sub_1C8EAF850();
            v526 = v896;
            OUTLINED_FUNCTION_15_24();
            v424 = v418;
            LOBYTE(v904) = 0;
            v423 = v840;
            v425 = v526;
            sub_1C9064A0C();
            OUTLINED_FUNCTION_94_6();
            v418 = v687;
            v420 = v688;
            v900 = v434;
            v901 = v411;
            OUTLINED_FUNCTION_68_5();
            v427 = sub_1C9064A0C();
            v411 = (v837 + 8);
            v431 = (v903 + 8);
            v716 = 0;
            goto LABEL_76;
          case 61:
            LOBYTE(v904) = 61;
            sub_1C8EAF7FC();
            OUTLINED_FUNCTION_9_26();
            v439 = 0;
            OUTLINED_FUNCTION_32_15();
            v571 = OUTLINED_FUNCTION_13_22(&v867);
            v572(v571, v836);
            v573 = OUTLINED_FUNCTION_5_36();
            v574(v573);
            *&v448 = OUTLINED_FUNCTION_2_52();
            LOBYTE(v418) = 52;
            goto LABEL_72;
          case 62:
            LOBYTE(v904) = 62;
            sub_1C8EAF7A8();
            OUTLINED_FUNCTION_9_26();
            v439 = 0;
            OUTLINED_FUNCTION_32_15();
            v579 = OUTLINED_FUNCTION_13_22(&v869);
            v580(v579, v839);
            v581 = OUTLINED_FUNCTION_5_36();
            v582(v581);
            *&v448 = OUTLINED_FUNCTION_2_52();
            LOBYTE(v418) = 53;
            goto LABEL_72;
          case 63:
            LOBYTE(v904) = 63;
            sub_1C8EAF700();
            v546 = v897;
            OUTLINED_FUNCTION_15_24();
            sub_1C8EB0CD8();
            OUTLINED_FUNCTION_107_6();
            v425 = v841 + 8;
            v422 = v902;
            v439 = v903 + 8;
            v716 = 0;
            swift_unknownObjectRelease();
            (*v425)(v546, v423);
            v693 = *v439;
            v694 = OUTLINED_FUNCTION_177_5();
            v695(v694);
            v446 = 0;
            LOBYTE(v418) = v904;
            LOBYTE(v425) = v905;
            a10 = v905;
            v447 = v904 & 0xFFFFFFFFFFFFFF00;
            v449 = 9;
            goto LABEL_73;
          default:
            LOBYTE(v904) = 0;
            sub_1C8EB0C00();
            OUTLINED_FUNCTION_6_32(&v746);
            v439 = 0;
            OUTLINED_FUNCTION_32_15();
            v440 = OUTLINED_FUNCTION_13_22(&v748);
            v441(v440, v717);
            v442 = OUTLINED_FUNCTION_5_36();
            v443(v442);
            v444 = 0;
            v445 = 0;
            LOBYTE(v425) = 0;
            v446 = 0;
            LOBYTE(v418) = 0;
            v447 = 0;
            v448 = 0uLL;
            v449 = 10;
LABEL_72:
            v422 = v902;
            break;
        }

        goto LABEL_73;
      }
    }

    v450 = v418;
    v451 = sub_1C90647DC();
    swift_allocError();
    v453 = v452;
    v454 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312570, &unk_1C90669A0) + 48);
    *v453 = &type metadata for SystemToolProtocol;
    sub_1C906499C();
    OUTLINED_FUNCTION_43_4();
    v455 = *MEMORY[0x1E69E6AF8];
    OUTLINED_FUNCTION_10_0(v451);
    (*(v456 + 104))(v453);
    swift_willThrow();
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_33_14();
    v457(v450, v411);
  }

  __swift_destroy_boxed_opaque_existential_1(v902);
LABEL_9:
  OUTLINED_FUNCTION_198();
}