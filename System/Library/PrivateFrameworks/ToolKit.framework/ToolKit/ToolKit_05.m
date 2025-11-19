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

uint64_t sub_1C8D05914(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1C8D05954(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_1C8D059A4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xD && *(a1 + 16))
    {
      v2 = *a1 + 12;
    }

    else
    {
      v2 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
      if (v2 >= 0xC)
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

uint64_t sub_1C8D059F0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_1C8D05A58(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 == 1 || !*(a1 + 32))
    {
      if ((~*(a1 + 8) & 0x3000000000000000) != 0)
      {
        v2 = -1;
      }

      else
      {
        v2 = 0;
      }
    }

    else
    {
      v2 = *a1 + 1;
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C8D05A98(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 2;
    *(result + 8) = 0;
    if (a3 >= 2)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = xmmword_1C9066940;
      *(result + 16) = 0;
      *(result + 24) = 0;
    }
  }

  return result;
}

void sub_1C8D05B50()
{
  sub_1C9061EBC();
  if (v0 <= 0x3F)
  {
    sub_1C8CD2600(319, &unk_1EDA69420, MEMORY[0x1E6969080], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t _s5PagerV15CleanupScheduleOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
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

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_1C8D05D00(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = OUTLINED_FUNCTION_349(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DisplayRepresentation.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for DisplayRepresentation.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1C8D05F3C(unsigned __int8 *a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_8_1();
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

  return OUTLINED_FUNCTION_190(a1);
}

_BYTE *sub_1C8D05F84(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C8D06034()
{
  result = qword_1EC3127D8;
  if (!qword_1EC3127D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3127D8);
  }

  return result;
}

unint64_t sub_1C8D0608C()
{
  result = qword_1EC3127E0;
  if (!qword_1EC3127E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3127E0);
  }

  return result;
}

unint64_t sub_1C8D06138()
{
  result = qword_1EC3127E8;
  if (!qword_1EC3127E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3127E8);
  }

  return result;
}

unint64_t sub_1C8D06190()
{
  result = qword_1EC3127F0;
  if (!qword_1EC3127F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3127F0);
  }

  return result;
}

unint64_t sub_1C8D061E8()
{
  result = qword_1EC3127F8;
  if (!qword_1EC3127F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3127F8);
  }

  return result;
}

unint64_t sub_1C8D06240()
{
  result = qword_1EC312800;
  if (!qword_1EC312800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC312800);
  }

  return result;
}

unint64_t sub_1C8D06298()
{
  result = qword_1EC312808;
  if (!qword_1EC312808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC312808);
  }

  return result;
}

unint64_t sub_1C8D062F0()
{
  result = qword_1EC312810;
  if (!qword_1EC312810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC312810);
  }

  return result;
}

unint64_t sub_1C8D06348()
{
  result = qword_1EC312818;
  if (!qword_1EC312818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC312818);
  }

  return result;
}

unint64_t sub_1C8D063A0()
{
  result = qword_1EC312820;
  if (!qword_1EC312820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC312820);
  }

  return result;
}

unint64_t sub_1C8D063F8()
{
  result = qword_1EC312828;
  if (!qword_1EC312828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC312828);
  }

  return result;
}

unint64_t sub_1C8D06450()
{
  result = qword_1EC312830;
  if (!qword_1EC312830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC312830);
  }

  return result;
}

unint64_t sub_1C8D064A8()
{
  result = qword_1EDA69750;
  if (!qword_1EDA69750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69750);
  }

  return result;
}

unint64_t sub_1C8D06500()
{
  result = qword_1EDA69758;
  if (!qword_1EDA69758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69758);
  }

  return result;
}

unint64_t sub_1C8D06558()
{
  result = qword_1EC312838;
  if (!qword_1EC312838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC312838);
  }

  return result;
}

unint64_t sub_1C8D065B0()
{
  result = qword_1EC312840;
  if (!qword_1EC312840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC312840);
  }

  return result;
}

unint64_t sub_1C8D06608()
{
  result = qword_1EC312848;
  if (!qword_1EC312848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC312848);
  }

  return result;
}

unint64_t sub_1C8D06660()
{
  result = qword_1EC312850;
  if (!qword_1EC312850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC312850);
  }

  return result;
}

unint64_t sub_1C8D066B8()
{
  result = qword_1EC312858;
  if (!qword_1EC312858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC312858);
  }

  return result;
}

unint64_t sub_1C8D06710()
{
  result = qword_1EC312860;
  if (!qword_1EC312860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC312860);
  }

  return result;
}

unint64_t sub_1C8D06768()
{
  result = qword_1EC312868;
  if (!qword_1EC312868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC312868);
  }

  return result;
}

unint64_t sub_1C8D067C0()
{
  result = qword_1EC312870;
  if (!qword_1EC312870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC312870);
  }

  return result;
}

unint64_t sub_1C8D06818()
{
  result = qword_1EC312878;
  if (!qword_1EC312878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC312878);
  }

  return result;
}

unint64_t sub_1C8D06870()
{
  result = qword_1EC312880;
  if (!qword_1EC312880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC312880);
  }

  return result;
}

unint64_t sub_1C8D068C8()
{
  result = qword_1EC312888;
  if (!qword_1EC312888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC312888);
  }

  return result;
}

unint64_t sub_1C8D06920()
{
  result = qword_1EC312890;
  if (!qword_1EC312890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC312890);
  }

  return result;
}

unint64_t sub_1C8D06978()
{
  result = qword_1EC312898;
  if (!qword_1EC312898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC312898);
  }

  return result;
}

unint64_t sub_1C8D069D0()
{
  result = qword_1EC3128A0;
  if (!qword_1EC3128A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3128A0);
  }

  return result;
}

unint64_t sub_1C8D06A28()
{
  result = qword_1EDA6B608;
  if (!qword_1EDA6B608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B608);
  }

  return result;
}

unint64_t sub_1C8D06A80()
{
  result = qword_1EDA6B610;
  if (!qword_1EDA6B610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B610);
  }

  return result;
}

unint64_t sub_1C8D06AD8()
{
  result = qword_1EDA63278;
  if (!qword_1EDA63278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63278);
  }

  return result;
}

unint64_t sub_1C8D06B30()
{
  result = qword_1EDA63280;
  if (!qword_1EDA63280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63280);
  }

  return result;
}

unint64_t sub_1C8D06C30()
{
  result = qword_1EDA6CCA0;
  if (!qword_1EDA6CCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6CCA0);
  }

  return result;
}

unint64_t sub_1C8D06C88()
{
  result = qword_1EDA6CCA8;
  if (!qword_1EDA6CCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6CCA8);
  }

  return result;
}

unint64_t sub_1C8D06CE0()
{
  result = qword_1EC3128A8;
  if (!qword_1EC3128A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3128A8);
  }

  return result;
}

unint64_t sub_1C8D06D38()
{
  result = qword_1EC3128B0;
  if (!qword_1EC3128B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3128B0);
  }

  return result;
}

unint64_t sub_1C8D06D8C()
{
  result = qword_1EDA632D0;
  if (!qword_1EDA632D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA632D0);
  }

  return result;
}

uint64_t sub_1C8D06DE0(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return j__OUTLINED_FUNCTION_264(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1C8D06DF8(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return j__OUTLINED_FUNCTION_265(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1C8D06E10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a8 != 2 && a8 != 1)
  {
    if (a8)
    {
      return result;
    }
  }
}

uint64_t sub_1C8D06E80(uint64_t result, char a2)
{
  switch((result >> 2) & 1 | (2 * (a2 & 7)))
  {
    case 0u:
    case 1u:
    case 2u:
    case 3u:
    case 4u:
    case 5u:
    case 6u:
    case 7u:
    case 8u:
    case 9u:
    case 0xAu:
    case 0xBu:
      goto LABEL_2;
    case 0xCu:

LABEL_2:

      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C8D06F08(uint64_t result, char a2)
{
  switch((result >> 2) & 1 | (2 * (a2 & 7)))
  {
    case 0u:
    case 1u:
    case 2u:
    case 3u:
    case 4u:
    case 5u:
    case 6u:
    case 7u:
    case 8u:
    case 9u:
    case 0xAu:
    case 0xBu:
      goto LABEL_2;
    case 0xCu:

LABEL_2:

      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C8D06F98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  result = a2;
  if (a5 - 1 < 2)
  {
  }

  else if (a5 && a5 != 3)
  {
    return result;
  }
}

uint64_t sub_1C8D06FF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  result = a2;
  if (a5 - 1 < 2)
  {
  }

  else if (a5 && a5 != 3)
  {
    return result;
  }
}

uint64_t sub_1C8D07154(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 0xBFu)
  {
  }

  return result;
}

uint64_t sub_1C8D07168(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 0xBFu)
  {
  }

  return result;
}

uint64_t sub_1C8D07280(uint64_t a1, unint64_t a2)
{
  if (a2 >= 8)
  {
  }

  return result;
}

uint64_t sub_1C8D07450(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    v4 = OUTLINED_FUNCTION_387(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *sub_1C8D07494(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = OUTLINED_FUNCTION_349(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C8D07570()
{
  result = qword_1EC312C00;
  if (!qword_1EC312C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC312C00);
  }

  return result;
}

unint64_t sub_1C8D075C8()
{
  result = qword_1EDA632C0;
  if (!qword_1EDA632C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA632C0);
  }

  return result;
}

unint64_t sub_1C8D07620()
{
  result = qword_1EDA632C8;
  if (!qword_1EDA632C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA632C8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_29_2()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_68()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + 16;
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);

  return sub_1C8D02BA4(v2, v3, v5, v6, sub_1C8CE7B78);
}

uint64_t OUTLINED_FUNCTION_79_0()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_80_1()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_105()
{
  sub_1C8CD1784(v0);
  sub_1C8CD1784(v1);

  return sub_1C8CD1784(v0);
}

id OUTLINED_FUNCTION_113_0(int a1, const char *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{

  return [v13 a2];
}

void OUTLINED_FUNCTION_140_0(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

uint64_t OUTLINED_FUNCTION_154()
{
  v4 = *(*(v2 - 168) + 28);
  v5 = v1 + v4;
  v6 = *(v1 + v4);
  v7 = *(v1 + v4 + 8);
  v8 = *(v1 + v4 + 16);
  v9 = *(v1 + v4 + 24);
  v10 = (v0 + v4);
  v11 = *v10;
  v12 = v10[1];
  v13 = v10[2];
  v14 = v10[3];
  v15 = *(v5 + 32);
  v16 = *(v10 + 32);
  *(v2 - 120) = v6;
  *(v2 - 112) = v7;
  *(v2 - 104) = v8;
  *(v2 - 96) = v9;
  *(v2 - 88) = v15;
  *(v2 - 160) = v11;
  *(v2 - 152) = v12;
  *(v2 - 144) = v13;
  *(v2 - 136) = v14;
  *(v2 - 128) = v16;

  return sub_1C8D06F98(v6, v7, v8, v9, v15);
}

uint64_t OUTLINED_FUNCTION_195(unint64_t *a1)
{

  return sub_1C8D07450(a1, v1);
}

uint64_t OUTLINED_FUNCTION_197_0()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_204()
{

  return sub_1C9063EAC();
}

id OUTLINED_FUNCTION_220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  a15 = a1;
  a12 = v15;

  return sub_1C8D009F4(&a12);
}

uint64_t OUTLINED_FUNCTION_236(uint64_t result)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = 2 * ((result - 32) / v3);
  return result;
}

uint64_t OUTLINED_FUNCTION_238()
{
}

uint64_t OUTLINED_FUNCTION_272()
{
  result = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v4 = v1[3];
  v6 = v1[4];
  v7 = *v0;
  v8 = v0[1];
  v9 = v0[2];
  v10 = v0[3];
  v11 = v0[4];
  return result;
}

uint64_t OUTLINED_FUNCTION_279()
{

  return sub_1C90649EC();
}

uint64_t OUTLINED_FUNCTION_280()
{

  return sub_1C9063EAC();
}

uint64_t OUTLINED_FUNCTION_281()
{

  return sub_1C9063EAC();
}

uint64_t OUTLINED_FUNCTION_285()
{
  v2 = *(*(v1 - 320) + 8);
  result = v0;
  v4 = *(v1 - 312);
  return result;
}

void OUTLINED_FUNCTION_289()
{
  v1 = *(v0 - 176) - 1;
  v2 = *(v0 - 200);
  v3 = *(v0 - 192) + v2;
  v4 = *(v0 - 184) + v2;
}

uint64_t OUTLINED_FUNCTION_299()
{

  return sub_1C9064C2C();
}

uint64_t OUTLINED_FUNCTION_301()
{
  v2 = *(*(v0 - 112) + 20);

  return sub_1C90637EC();
}

size_t OUTLINED_FUNCTION_303(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1C8CACAD8(v5, a2, a3, a4, v4);
}

double OUTLINED_FUNCTION_312()
{
  *(v0 - 96) = 0;
  result = 0.0;
  *(v0 - 128) = 0u;
  *(v0 - 112) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_314()
{
  result = *(v0 - 1);
  v3 = *v0;
  v4 = *(v1 - 1);
  v5 = *v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_318()
{
  v2 = v0[10];
  v3 = v0[6];
  *v3 = v0[9];
  v3[1] = v2;
  v5 = v0[1];
}

uint64_t OUTLINED_FUNCTION_329()
{
  result = v1;
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  return result;
}

double OUTLINED_FUNCTION_331()
{
  v2 = (v0 + *(v1 + 32));
  result = 0.0;
  *v2 = 0u;
  v2[1] = 0u;
  v4 = *(v1 + 36);
  return result;
}

uint64_t OUTLINED_FUNCTION_344_0()
{

  return sub_1C906478C();
}

void OUTLINED_FUNCTION_345()
{

  JUMPOUT(0x1CCA81A90);
}

uint64_t OUTLINED_FUNCTION_346()
{

  return sub_1C906468C();
}

uint64_t OUTLINED_FUNCTION_347_1()
{
  v2 = *(v0 - 96) & 0x1FFFFFFFFFFFFFFFLL;
}

uint64_t OUTLINED_FUNCTION_348()
{
  v2 = *(v0 - 160);
  v3 = *(v0 - 152);
  v4 = *(v0 - 144);
  v5 = *(v0 - 136);
  v6 = *(v0 - 128);

  return sub_1C8D06FF4(v2, v3, v4, v5, v6);
}

id OUTLINED_FUNCTION_350(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_356()
{
  v2 = *(v0 - 72);

  return sub_1C9063ACC();
}

void OUTLINED_FUNCTION_359()
{

  JUMPOUT(0x1CCA82810);
}

uint64_t OUTLINED_FUNCTION_360()
{

  return sub_1C8CC1D3C();
}

uint64_t OUTLINED_FUNCTION_361()
{
  v2 = *(v0 - 88) & 0x1FFFFFFFFFFFFFFFLL;
}

void OUTLINED_FUNCTION_375()
{
  v1[2] = v0;
  v1[4] = 0;
  v1[5] = 0;
}

uint64_t OUTLINED_FUNCTION_401()
{
  *v0 = v1;
  v0[1] = v2;
  v5 = *(v3 - 160);

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_402()
{

  return sub_1C8CC1D3C();
}

void *OUTLINED_FUNCTION_403(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char __src)
{

  return memcpy((v23 - 256), &__src, 0x61uLL);
}

void *OUTLINED_FUNCTION_404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t __src)
{

  return memcpy(&STACK[0x2B0], &__src, 0x88uLL);
}

uint64_t OUTLINED_FUNCTION_405()
{
  v2 = *(*(v0 - 168) + 24);

  return _s7ToolKit0A8DatabaseC7VersionV2eeoiySbAE_AEtFZ_0();
}

uint64_t OUTLINED_FUNCTION_406()
{
  *(v2 - 120) = v1;
  *(v2 - 160) = v0;

  return swift_retain_n();
}

uint64_t OUTLINED_FUNCTION_407()
{

  return sub_1C9063EAC();
}

uint64_t OUTLINED_FUNCTION_408()
{

  return sub_1C90648BC();
}

uint64_t OUTLINED_FUNCTION_409()
{

  return sub_1C906195C();
}

uint64_t OUTLINED_FUNCTION_410()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];

  return sub_1C9063FBC();
}

void OUTLINED_FUNCTION_412()
{

  JUMPOUT(0x1CCA81A90);
}

void OUTLINED_FUNCTION_413()
{

  JUMPOUT(0x1CCA82810);
}

uint64_t OUTLINED_FUNCTION_415()
{

  return sub_1C9063FBC();
}

void *OUTLINED_FUNCTION_416(void *a1)
{

  return memcpy(a1, v1, 0x61uLL);
}

void *OUTLINED_FUNCTION_417(void *a1)
{

  return memcpy(a1, v1, 0x88uLL);
}

void *OUTLINED_FUNCTION_418(void *a1)
{

  return memcpy(a1, v1, 0x61uLL);
}

unint64_t IdSearchPredicate.Template.instantiate(with:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v27 = type metadata accessor for TypedValue.PrimitiveValue(0);
  v5 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27);
  v7 = (&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(a1 + 16);
  if (v8)
  {
    v25 = a2;
    v26 = v2;
    v30 = MEMORY[0x1E69E7CC0];
    sub_1C8CA6480();
    v9 = v30;
    v10 = (a1 + 32);
    while (1)
    {
      v12 = *v10++;
      v11 = v12;
      if (v12 >> 60)
      {

        goto LABEL_13;
      }

      v13 = swift_projectBox();
      sub_1C8D09564(v13, v7);
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        break;
      }

      v14 = *v7;
      v15 = v7[1];
      v30 = v9;
      v16 = v9[2];
      if (v16 >= v9[3] >> 1)
      {
        sub_1C8CA6480();
        v9 = v30;
      }

      v9[2] = v16 + 1;
      v17 = &v9[2 * v16];
      v17[4] = v14;
      v17[5] = v15;
      if (!--v8)
      {
        a2 = v25;
        goto LABEL_14;
      }
    }

    sub_1C8D095C8(v7);
LABEL_13:
    v20 = swift_allocObject();
    *(v20 + 16) = 28;
    v29 = v11;
    TypedValue.typeIdentifier.getter();
    v21 = v28;
    sub_1C8D09510();
    swift_allocError();
    *v22 = v20;
    *(v22 + 8) = v21;
    *(v22 + 16) = 1;
    swift_willThrow();
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
    if (*(MEMORY[0x1E69E7CC0] + 16))
    {
LABEL_14:
      v18 = v9[4];
      v23 = v9[5];
    }

    else
    {
      v18 = 0;
      result = 0xE000000000000000;
    }

    *a2 = v18;
    a2[1] = result;
    a2[2] = v9;
  }

  return result;
}

uint64_t IdSearchPredicate.Template.debugDescription.getter()
{
  MEMORY[0x1CCA81A90](0x4352414553204449, 0xEA00000000002048);
  *(swift_allocObject() + 16) = 28;
  sub_1C90648BC();

  MEMORY[0x1CCA81A90](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_1C8D08770(uint64_t a1)
{
  v2 = sub_1C8D09624();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8D087AC(uint64_t a1)
{
  v2 = sub_1C8D09624();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IdSearchPredicate.Template.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312C10, &qword_1C9069160);
  v3 = OUTLINED_FUNCTION_11(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v9 = &v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C8D09624();
  sub_1C9064E1C();
  return (*(v5 + 8))(v9, v2);
}

uint64_t IdSearchPredicate.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t IdSearchPredicate.debugDescription.getter()
{
  v1 = MEMORY[0x1CCA81C30](*(v0 + 16), MEMORY[0x1E69E6158]);
  MEMORY[0x1CCA81A90](v1);

  MEMORY[0x1CCA81A90](39, 0xE100000000000000);
  return 0x4352414553204449;
}

void static IdSearchPredicate.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    sub_1C8CEB10C(v2, v3);
  }
}

uint64_t sub_1C8D08AF4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v3 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEB00000000737265)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C9064C2C();

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

uint64_t sub_1C8D08C08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8D08AF4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8D08C30(uint64_t a1)
{
  v2 = sub_1C8D09678();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8D08C6C(uint64_t a1)
{
  v2 = sub_1C8D09678();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IdSearchPredicate.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312C18, &unk_1C9069168);
  v5 = OUTLINED_FUNCTION_11(v4);
  v17 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v15 - v9;
  v11 = *v1;
  v12 = v1[1];
  v16 = v1[2];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C8D09678();
  sub_1C9064E1C();
  v20 = 0;
  sub_1C9064B2C();
  if (!v2)
  {
    v18 = v16;
    v19 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312558, &qword_1C9066990);
    sub_1C8CA669C(&qword_1EDA6B530);
    sub_1C9064B8C();
  }

  return (*(v17 + 8))(v10, v4);
}

uint64_t IdSearchPredicate.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  sub_1C9063FBC();

  return sub_1C8CC1590(a1, v5);
}

uint64_t IdSearchPredicate.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1C9064D7C();
  sub_1C9063FBC();
  sub_1C8CC1590(v5, v3);
  return sub_1C9064DBC();
}

uint64_t IdSearchPredicate.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312C28, &qword_1C9069178);
  v6 = OUTLINED_FUNCTION_11(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C8D09678();
  sub_1C9064DEC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = sub_1C9064A0C();
  v12 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312558, &qword_1C9066990);
  sub_1C8CA669C(&unk_1EDA6B520);
  sub_1C9064A6C();
  v13 = OUTLINED_FUNCTION_10_2();
  v14(v13);
  *a2 = v10;
  a2[1] = v12;
  a2[2] = v16;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1C8D09140()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1C9064D7C();
  sub_1C9063FBC();
  sub_1C8CC1590(v5, v3);
  return sub_1C9064DBC();
}

char *sub_1C8D091D4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_8(a3, result);
  }

  return result;
}

char *sub_1C8D091F4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[32 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_8(a3, result);
  }

  return result;
}

uint64_t sub_1C8D09274(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312DD0, &qword_1C9072940), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312DD0, &qword_1C9072940);

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_1C8D09360(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_8(a3, result);
  }

  return result;
}

char *sub_1C8D093B8(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_8(a3, result);
  }

  return result;
}

char *sub_1C8D0940C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[96 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_8(a3, result);
  }

  return result;
}

uint64_t sub_1C8D09448(unint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  if (a3 < a1 || (result = (a4)(0), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    a4(0);
    OUTLINED_FUNCTION_14_4();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {
    OUTLINED_FUNCTION_14_4();

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

unint64_t sub_1C8D09510()
{
  result = qword_1EC312C08;
  if (!qword_1EC312C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC312C08);
  }

  return result;
}

uint64_t sub_1C8D09564(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TypedValue.PrimitiveValue(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C8D095C8(uint64_t a1)
{
  v2 = type metadata accessor for TypedValue.PrimitiveValue(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C8D09624()
{
  result = qword_1EDA636D8;
  if (!qword_1EDA636D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA636D8);
  }

  return result;
}

unint64_t sub_1C8D09678()
{
  result = qword_1EC312C20;
  if (!qword_1EC312C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC312C20);
  }

  return result;
}

void sub_1C8D096CC()
{
  v1 = *v0;
  sub_1C8D0A4EC();
  *v0 = v2;
}

char *sub_1C8D096FC(char *a1, int64_t a2, char a3)
{
  result = sub_1C8D0A1C4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C8D0971C(char *a1, int64_t a2, char a3)
{
  result = sub_1C8D0A2CC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1C8D0973C()
{
  v1 = *v0;
  sub_1C8D0A4EC();
  *v0 = v2;
}

void sub_1C8D0976C()
{
  v1 = *v0;
  sub_1C8D0A4EC();
  *v0 = v2;
}

void sub_1C8D0979C()
{
  v1 = *v0;
  sub_1C8D0A4EC();
  *v0 = v2;
}

void sub_1C8D097CC()
{
  v1 = *v0;
  sub_1C8CAEFD0();
  *v0 = v2;
}

void sub_1C8D09804()
{
  v1 = *v0;
  sub_1C8D0A4EC();
  *v0 = v2;
}

char *sub_1C8D09834(char *a1, int64_t a2, char a3)
{
  result = sub_1C8D0A3E4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1C8D09854()
{
  v1 = *v0;
  sub_1C8D0A4EC();
  *v0 = v2;
}

char *sub_1C8D09884(char *a1, int64_t a2, char a3)
{
  result = sub_1C8D0A5AC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1C8D098A4()
{
  v1 = *v0;
  sub_1C8D0B74C();
  *v0 = v2;
}

void sub_1C8D098DC()
{
  v1 = *v0;
  OUTLINED_FUNCTION_8_4();
  sub_1C8CB23D4(v2, v3, v4, v5, v6, v7, v8, type metadata accessor for ToolDatabase.DatabaseFile);
  *v0 = v9;
}

char *sub_1C8D0997C(char *a1, int64_t a2, char a3)
{
  result = sub_1C8D0A700(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1C8D099F4()
{
  v1 = *v0;
  sub_1C8D0A4EC();
  *v0 = v2;
}

void sub_1C8D09A7C()
{
  v1 = *v0;
  sub_1C8D0A7F4();
  *v0 = v2;
}

size_t sub_1C8D09AF4(size_t a1, int64_t a2, char a3)
{
  result = sub_1C8D0A8E0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1C8D09B14()
{
  v1 = *v0;
  sub_1C8D0AAAC();
  *v0 = v2;
}

void sub_1C8D09B8C()
{
  v1 = *v0;
  sub_1C8D0ACD4();
  *v0 = v2;
}

char *sub_1C8D09BC4(char *a1, int64_t a2, char a3)
{
  result = sub_1C8D0ABCC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1C8D09BE4()
{
  v1 = *v0;
  sub_1C8D0ACD4();
  *v0 = v2;
}

char *sub_1C8D09C74(char *a1, int64_t a2, char a3)
{
  result = sub_1C8D0ADBC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C8D09D9C(char *a1, int64_t a2, char a3)
{
  result = sub_1C8D0AED4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C8D09E94(char *a1, int64_t a2, char a3)
{
  result = sub_1C8D0B0C8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C8D09EB4(char *a1, int64_t a2, char a3)
{
  result = sub_1C8D0B1DC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1C8D09ED4(void *a1, int64_t a2, char a3)
{
  result = sub_1C8D0B2F4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C8D09EF4(char *a1, int64_t a2, char a3)
{
  result = sub_1C8D0B42C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C8D09F14(char *a1, int64_t a2, char a3)
{
  result = sub_1C8D0B528(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C8D09F8C(char *a1, int64_t a2, char a3)
{
  result = sub_1C8D0B634(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1C8D0A05C()
{
  v1 = *v0;
  sub_1C8D0B74C();
  *v0 = v2;
}

char *sub_1C8D0A094(char *a1, int64_t a2, char a3)
{
  result = sub_1C8D0B82C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1C8D0A0B4(void *a1, int64_t a2, char a3)
{
  result = sub_1C8D0B940(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C8D0A0D4(char *a1, int64_t a2, char a3)
{
  result = sub_1C8D0BA70(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1C8D0A0F4(void *a1, int64_t a2, char a3)
{
  result = sub_1C8D0BB88(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C8D0A1C4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312AD0, &qword_1C9068EB0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[32 * v8] <= v12)
    {
      memmove(v12, v13, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C8D0A2CC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312990, &qword_1C9068D70);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 136);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[136 * v8] <= v12)
    {
      memmove(v12, v13, 136 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C8D0A3E4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312DC0, &qword_1C90696D8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1C8D0A4EC()
{
  OUTLINED_FUNCTION_202_0();
  if (v3)
  {
    OUTLINED_FUNCTION_37_2();
    if (v4 != v5)
    {
      OUTLINED_FUNCTION_123_0();
      if (v4)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_36_0();
    }
  }

  OUTLINED_FUNCTION_9_4();
  if (v4 ^ v5 | v13)
  {
    v14 = v2;
  }

  else
  {
    v14 = v12;
  }

  if (v14)
  {
    OUTLINED_FUNCTION_342(v6, v7, v8, v9, v10, v11);
    v15 = OUTLINED_FUNCTION_343();
    _swift_stdlib_malloc_size(v15);
    OUTLINED_FUNCTION_235();
    *(v15 + 2) = v2;
    *(v15 + 3) = v16;
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

  v17 = v15 + 32;
  v18 = v0 + 32;
  if (v1)
  {
    if (v15 != v0 || &v18[8 * v2] <= v17)
    {
      memmove(v17, v18, 8 * v2);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v17, v18, 8 * v2);
  }
}

char *sub_1C8D0A5AC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312988, &qword_1C9068D68);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[40 * v8] <= v12)
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C8D0A700(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312908, &unk_1C9068CF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

void sub_1C8D0A7F4()
{
  OUTLINED_FUNCTION_202_0();
  if (v3)
  {
    OUTLINED_FUNCTION_37_2();
    if (v4 != v5)
    {
      OUTLINED_FUNCTION_123_0();
      if (v4)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_36_0();
    }
  }

  OUTLINED_FUNCTION_9_4();
  if (v4 ^ v5 | v7)
  {
    v8 = v2;
  }

  else
  {
    v8 = v6;
  }

  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312AC8, &qword_1C9069710);
    v9 = swift_allocObject();
    v10 = _swift_stdlib_malloc_size(v9);
    *(v9 + 2) = v2;
    *(v9 + 3) = 2 * ((v10 - 32) / 104);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  v13 = 104 * v2;
  if (v1)
  {
    if (v9 != v0 || &v12[v13] <= v11)
    {
      memmove(v11, v12, v13);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v11, v12, v13);
  }
}

size_t sub_1C8D0A8E0(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312DC8, &unk_1C90696F0);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312DD0, &qword_1C9072940) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312DD0, &qword_1C9072940) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_1C8D09274(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void sub_1C8D0AAAC()
{
  OUTLINED_FUNCTION_202_0();
  if (v3)
  {
    OUTLINED_FUNCTION_37_2();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_123_0();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_36_0();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = v0[2];
  if (v4 <= v7)
  {
    v8 = v0[2];
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312AA8, &unk_1C90696E0);
    v9 = swift_allocObject();
    v10 = _swift_stdlib_malloc_size(v9);
    v9[2] = v7;
    v9[3] = 2 * ((v10 - 32) / 40);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  if (v1)
  {
    if (v9 != v0 || &v0[5 * v7 + 4] <= v9 + 4)
    {
      memmove(v9 + 4, v0 + 4, 40 * v7);
    }

    v0[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312AB0, &qword_1C9068E90);
    swift_arrayInitWithCopy();
  }
}

char *sub_1C8D0ABCC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312D08, &qword_1C9069610);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1C8D0ACD4()
{
  OUTLINED_FUNCTION_7_2();
  if (v4)
  {
    OUTLINED_FUNCTION_37_2();
    if (v9 != v10)
    {
      OUTLINED_FUNCTION_123_0();
      if (v9)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_36_0();
    }
  }

  else
  {
    v8 = v3;
  }

  v11 = *(v0 + 2);
  if (v8 <= v11)
  {
    v12 = *(v0 + 2);
  }

  else
  {
    v12 = v8;
  }

  if (v12)
  {
    OUTLINED_FUNCTION_342(v2, v3, v4, v5, v6, v7);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * ((v14 - 32) / 104);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  v15 = v13 + 32;
  v16 = v0 + 32;
  if (v1)
  {
    if (v13 != v0 || &v16[104 * v11] <= v15)
    {
      memmove(v15, v16, 104 * v11);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

char *sub_1C8D0ADBC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A00, &qword_1C9068DE0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[24 * v8] <= v12)
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C8D0AED4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312CD0, &qword_1C90695C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

void sub_1C8D0AFC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = a1;
  if (a3)
  {
    OUTLINED_FUNCTION_37_2();
    if (v13 != v14)
    {
      OUTLINED_FUNCTION_123_0();
      if (v13)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_36_0();
    }
  }

  else
  {
    v12 = a2;
  }

  v15 = *(a4 + 16);
  if (v12 <= v15)
  {
    v16 = *(a4 + 16);
  }

  else
  {
    v16 = v12;
  }

  if (v16)
  {
    OUTLINED_FUNCTION_342(a1, a2, a3, a4, a5, a6);
    v17 = OUTLINED_FUNCTION_343();
    _swift_stdlib_malloc_size(v17);
    OUTLINED_FUNCTION_235();
    v17[2] = v15;
    v17[3] = v18;
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v17 != a4 || a4 + 32 + 8 * v15 <= (v17 + 4))
    {
      memmove(v17 + 4, (a4 + 32), 8 * v15);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }
}

char *sub_1C8D0B0C8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312CC8, &qword_1C90695C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[24 * v8] <= v12)
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C8D0B1DC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312CB0, &qword_1C90695A8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[24 * v8] <= v12)
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1C8D0B2F4(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312CB8, &qword_1C90695B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[3 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312CC0, &qword_1C90695B8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C8D0B42C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312D88, &qword_1C9069698);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || &v13[v14] <= v12)
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

char *sub_1C8D0B528(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3129D0, &unk_1C9068DB0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[32 * v8] <= v12)
    {
      memmove(v12, v13, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C8D0B634(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312D58, &qword_1C9069668);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[80 * v8] <= v12)
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1C8D0B74C()
{
  OUTLINED_FUNCTION_7_2();
  if (v3)
  {
    OUTLINED_FUNCTION_37_2();
    if (v4 != v5)
    {
      OUTLINED_FUNCTION_123_0();
      if (v4)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_36_0();
    }
  }

  OUTLINED_FUNCTION_9_4();
  if (v4 ^ v5 | v13)
  {
    v14 = v2;
  }

  else
  {
    v14 = v12;
  }

  if (v14)
  {
    OUTLINED_FUNCTION_342(v6, v7, v8, v9, v10, v11);
    v15 = swift_allocObject();
    v16 = _swift_stdlib_malloc_size(v15);
    *(v15 + 2) = v2;
    *(v15 + 3) = 2 * ((v16 - 32) / 64);
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

  v17 = v15 + 32;
  v18 = v0 + 32;
  if (v1)
  {
    if (v15 != v0 || &v18[64 * v2] <= v17)
    {
      memmove(v17, v18, v2 << 6);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

char *sub_1C8D0B82C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312D70, &qword_1C9069680);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 272);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[272 * v8] <= v12)
    {
      memmove(v12, v13, 272 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1C8D0B940(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312D78, &qword_1C9069688);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 64);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[8 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, v8 << 6);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312D80, &qword_1C9069690);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C8D0BA70(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312CF8, &qword_1C90695F8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 112);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[112 * v8] <= v12)
    {
      memmove(v12, v13, 112 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1C8D0BB88(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312CE8, &qword_1C90695E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 112);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[14 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 112 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312CF0, &unk_1C90695E8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_1C8D0BD2C()
{
  result = qword_1EC312C30;
  if (!qword_1EC312C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC312C30);
  }

  return result;
}

unint64_t sub_1C8D0BD80()
{
  result = qword_1EDA636B8;
  if (!qword_1EDA636B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA636B8);
  }

  return result;
}

unint64_t sub_1C8D0BDD4()
{
  result = qword_1EDA636C0;
  if (!qword_1EDA636C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA636C0);
  }

  return result;
}

unint64_t sub_1C8D0BE28()
{
  result = qword_1EC312C38;
  if (!qword_1EC312C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC312C38);
  }

  return result;
}

unint64_t sub_1C8D0BE80()
{
  result = qword_1EC312C40;
  if (!qword_1EC312C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC312C40);
  }

  return result;
}

uint64_t sub_1C8D0BF28(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  a1[1] = a4();
  a1[2] = a5();
  a1[3] = a6();
  result = a7();
  a1[4] = result;
  return result;
}

unint64_t sub_1C8D0BF8C()
{
  result = qword_1EC312C48;
  if (!qword_1EC312C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC312C48);
  }

  return result;
}

unint64_t sub_1C8D0BFE0()
{
  result = qword_1EC312C50;
  if (!qword_1EC312C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC312C50);
  }

  return result;
}

unint64_t sub_1C8D0C034()
{
  result = qword_1EC312C58;
  if (!qword_1EC312C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC312C58);
  }

  return result;
}

unint64_t sub_1C8D0C088()
{
  result = qword_1EC312C60;
  if (!qword_1EC312C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC312C60);
  }

  return result;
}

unint64_t sub_1C8D0C0E0()
{
  result = qword_1EC312C68;
  if (!qword_1EC312C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC312C68);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1C8D0C148(uint64_t a1, int a2)
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

uint64_t getEnumTagSinglePayload for IdSearchPredicate.Template(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for IdSearchPredicate.Template(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C8D0C294()
{
  result = qword_1EC312C70;
  if (!qword_1EC312C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC312C70);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for IdSearchPredicate.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C8D0C3D8()
{
  result = qword_1EC312C78;
  if (!qword_1EC312C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC312C78);
  }

  return result;
}

unint64_t sub_1C8D0C430()
{
  result = qword_1EC312C80;
  if (!qword_1EC312C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC312C80);
  }

  return result;
}

unint64_t sub_1C8D0C488()
{
  result = qword_1EC312C88;
  if (!qword_1EC312C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC312C88);
  }

  return result;
}

unint64_t sub_1C8D0C4E0()
{
  result = qword_1EDA636C8;
  if (!qword_1EDA636C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA636C8);
  }

  return result;
}

unint64_t sub_1C8D0C538()
{
  result = qword_1EDA636D0;
  if (!qword_1EDA636D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA636D0);
  }

  return result;
}

uint64_t sub_1C8D0C59C(uint64_t a1)
{
  v2 = sub_1C8D0C658();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8D0C5D8(uint64_t a1)
{
  v2 = sub_1C8D0C658();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1C8D0C658()
{
  result = qword_1EC312E08;
  if (!qword_1EC312E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC312E08);
  }

  return result;
}

uint64_t ToolDatabase.Version.uuid.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C906204C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_1C8D0C738(uint64_t a1, uint64_t a2)
{
  if (a1 == 1684632949 && a2 == 0xE400000000000000)
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

uint64_t sub_1C8D0C7B0()
{
  sub_1C9064D7C();
  MEMORY[0x1CCA82810](0);
  return sub_1C9064DBC();
}

uint64_t sub_1C8D0C80C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8D0C738(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C8D0C838(uint64_t a1)
{
  v2 = sub_1C8D0CA0C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8D0C874(uint64_t a1)
{
  v2 = sub_1C8D0CA0C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ToolDatabase.Version.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312E10, &qword_1C9069738);
  v3 = OUTLINED_FUNCTION_11(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C8D0CA0C();
  sub_1C9064E1C();
  sub_1C906204C();
  OUTLINED_FUNCTION_0_9();
  sub_1C8CC8020(v11, v12);
  sub_1C9064B8C();
  return (*(v5 + 8))(v9, v2);
}

unint64_t sub_1C8D0CA0C()
{
  result = qword_1EDA623E8;
  if (!qword_1EDA623E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA623E8);
  }

  return result;
}

uint64_t ToolDatabase.Version.hash(into:)()
{
  sub_1C906204C();
  OUTLINED_FUNCTION_0_9();
  sub_1C8CC8020(v0, v1);

  return sub_1C9063E7C();
}

uint64_t ToolDatabase.Version.hashValue.getter()
{
  sub_1C9064D7C();
  sub_1C906204C();
  OUTLINED_FUNCTION_0_9();
  sub_1C8CC8020(v0, v1);
  sub_1C9063E7C();
  return sub_1C9064DBC();
}

uint64_t ToolDatabase.Version.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v4 = sub_1C906204C();
  v5 = OUTLINED_FUNCTION_11(v4);
  v28 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v31 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312E18, &qword_1C9069740);
  v11 = OUTLINED_FUNCTION_11(v10);
  v29 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v16 = &v27 - v15;
  v17 = type metadata accessor for ToolDatabase.Version();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C8D0CA0C();
  sub_1C9064DEC();
  if (!v2)
  {
    v22 = v28;
    v23 = v30;
    OUTLINED_FUNCTION_0_9();
    sub_1C8CC8020(v24, v25);
    sub_1C9064A6C();
    (*(v29 + 8))(v16, v10);
    (*(v22 + 32))(v20, v31, v4);
    sub_1C8D0CEB8(v20, v23);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1C8D0CDE8()
{
  sub_1C9064D7C();
  sub_1C906204C();
  sub_1C8CC8020(&qword_1EDA666F0, MEMORY[0x1E69695A8]);
  sub_1C9063E7C();
  return sub_1C9064DBC();
}

uint64_t type metadata accessor for ToolDatabase.Version()
{
  result = qword_1EDA66168;
  if (!qword_1EDA66168)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C8D0CEB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolDatabase.Version();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C8D0CF7C(uint64_t a1)
{
  v2 = sub_1C8D0D7C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8D0CFB8(uint64_t a1)
{
  v2 = sub_1C8D0D7C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8D0D0B8(uint64_t a1)
{
  v2 = sub_1C8D0D814();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8D0D0F4(uint64_t a1)
{
  v2 = sub_1C8D0D814();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t static ToolDatabase.OSVersion.getCurrent()()
{
  v0 = sub_1C9063EBC();
  result = MGGetStringAnswer();
  if (result)
  {
    v2 = result;
    v3 = sub_1C9063EEC();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C8D0D208(uint64_t a1)
{
  v2 = sub_1C8D0D868();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8D0D244(uint64_t a1)
{
  v2 = sub_1C8D0D868();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8D0D2C4(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v7 = OUTLINED_FUNCTION_11(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v13 = &v16 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_1C9064E1C();
  return (*(v9 + 8))(v13, v6);
}

void sub_1C8D0D434()
{
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_5_6();
  sub_1C8D0F574();
}

uint64_t sub_1C8D0D5B4()
{
  OUTLINED_FUNCTION_3_9();

  OUTLINED_FUNCTION_4_4();
  return v0();
}

void sub_1C8D0D640()
{
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_5_6();
  sub_1C8D106C8();
}

uint64_t sub_1C8D0D6C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9[3] = a3;
  OUTLINED_FUNCTION_3_9();
  v9[2] = v6;

  return v3(v7, v5, v4, v9);
}

uint64_t sub_1C8D0D750()
{
  OUTLINED_FUNCTION_3_9();

  OUTLINED_FUNCTION_4_4();
  return v0();
}

unint64_t sub_1C8D0D7C0()
{
  result = qword_1EC312E28;
  if (!qword_1EC312E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC312E28);
  }

  return result;
}

unint64_t sub_1C8D0D814()
{
  result = qword_1EC312E38;
  if (!qword_1EC312E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC312E38);
  }

  return result;
}

unint64_t sub_1C8D0D868()
{
  result = qword_1EC312E48;
  if (!qword_1EC312E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC312E48);
  }

  return result;
}

unint64_t sub_1C8D0D8FC()
{
  result = qword_1EDA623F0;
  if (!qword_1EDA623F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA623F0);
  }

  return result;
}

unint64_t sub_1C8D0D950()
{
  result = qword_1EDA62408[0];
  if (!qword_1EDA62408[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDA62408);
  }

  return result;
}

unint64_t sub_1C8D0D9A4()
{
  result = qword_1EDA62400;
  if (!qword_1EDA62400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62400);
  }

  return result;
}

unint64_t sub_1C8D0D9FC()
{
  result = qword_1EDA623F8;
  if (!qword_1EDA623F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA623F8);
  }

  return result;
}

uint64_t sub_1C8D0DA50(void *a1)
{
  a1[1] = sub_1C8CC8020(&qword_1EDA623B8, type metadata accessor for ToolDatabase.Version);
  a1[2] = sub_1C8CC8020(&qword_1EDA623D0, type metadata accessor for ToolDatabase.Version);
  result = sub_1C8CC8020(&qword_1EDA623C8, type metadata accessor for ToolDatabase.Version);
  a1[3] = result;
  return result;
}

uint64_t sub_1C8D0DBCC(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = a4();
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t sub_1C8D0DC20()
{
  result = qword_1EDA661A8;
  if (!qword_1EDA661A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA661A8);
  }

  return result;
}

unint64_t sub_1C8D0DC74()
{
  result = qword_1EDA661C0;
  if (!qword_1EDA661C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA661C0);
  }

  return result;
}

unint64_t sub_1C8D0DCC8()
{
  result = qword_1EDA661B8;
  if (!qword_1EDA661B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA661B8);
  }

  return result;
}

unint64_t sub_1C8D0DD20()
{
  result = qword_1EDA661B0;
  if (!qword_1EDA661B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA661B0);
  }

  return result;
}

uint64_t sub_1C8D0DD74(void *a1)
{
  v2 = MEMORY[0x1E69E0850];
  a1[1] = sub_1C8CC8020(&qword_1EDA66698, MEMORY[0x1E69E0850]);
  a1[2] = sub_1C8CC8020(&qword_1EDA666A8, v2);
  result = sub_1C8CC8020(&qword_1EDA666A0, v2);
  a1[3] = result;
  return result;
}

unint64_t sub_1C8D0DE60()
{
  result = qword_1EC312E50;
  if (!qword_1EC312E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC312E50);
  }

  return result;
}

unint64_t sub_1C8D0DEB4()
{
  result = qword_1EC312E58;
  if (!qword_1EC312E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC312E58);
  }

  return result;
}

unint64_t sub_1C8D0DF08()
{
  result = qword_1EC312E60;
  if (!qword_1EC312E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC312E60);
  }

  return result;
}

unint64_t sub_1C8D0DF60()
{
  result = qword_1EC312E68;
  if (!qword_1EC312E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC312E68);
  }

  return result;
}

unint64_t sub_1C8D0E000()
{
  result = qword_1EDA62368;
  if (!qword_1EDA62368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62368);
  }

  return result;
}

unint64_t sub_1C8D0E054()
{
  result = qword_1EDA62380;
  if (!qword_1EDA62380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62380);
  }

  return result;
}

unint64_t sub_1C8D0E0A8()
{
  result = qword_1EDA62378;
  if (!qword_1EDA62378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62378);
  }

  return result;
}

unint64_t sub_1C8D0E100()
{
  result = qword_1EDA62370;
  if (!qword_1EDA62370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62370);
  }

  return result;
}

uint64_t sub_1C8D0E18C()
{
  result = sub_1C906204C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *sub_1C8D0E258(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C8D0E318()
{
  result = qword_1EC312E70;
  if (!qword_1EC312E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC312E70);
  }

  return result;
}

unint64_t sub_1C8D0E370()
{
  result = qword_1EC312E78;
  if (!qword_1EC312E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC312E78);
  }

  return result;
}

unint64_t sub_1C8D0E3C8()
{
  result = qword_1EC312E80;
  if (!qword_1EC312E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC312E80);
  }

  return result;
}

unint64_t sub_1C8D0E420()
{
  result = qword_1EC312E88;
  if (!qword_1EC312E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC312E88);
  }

  return result;
}

unint64_t sub_1C8D0E478()
{
  result = qword_1EC312E90;
  if (!qword_1EC312E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC312E90);
  }

  return result;
}

unint64_t sub_1C8D0E4D0()
{
  result = qword_1EC312E98;
  if (!qword_1EC312E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC312E98);
  }

  return result;
}

unint64_t sub_1C8D0E528()
{
  result = qword_1EC312EA0;
  if (!qword_1EC312EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC312EA0);
  }

  return result;
}

unint64_t sub_1C8D0E580()
{
  result = qword_1EDA623D8;
  if (!qword_1EDA623D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA623D8);
  }

  return result;
}

unint64_t sub_1C8D0E5D8()
{
  result = qword_1EDA623E0;
  if (!qword_1EDA623E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA623E0);
  }

  return result;
}

unint64_t sub_1C8D0E630()
{
  result = qword_1EC312EA8;
  if (!qword_1EC312EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC312EA8);
  }

  return result;
}

unint64_t sub_1C8D0E688()
{
  result = qword_1EC312EB0;
  if (!qword_1EC312EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC312EB0);
  }

  return result;
}

uint64_t sub_1C8D0EA3C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C8D0E9F4();
}

void *sub_1C8D0EA58(uint64_t a1, void *(*a2)(uint64_t *__return_ptr))
{
  result = a2(&v4);
  if (!v2)
  {
    return v4;
  }

  return result;
}

uint64_t sub_1C8D0EA90()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1C8D0EAB8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C8D0E7B4();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1C8D0EAE4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C8D0E7FC();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1C8D0EB10@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C8D0E88C();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1C8D0EB3C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C8D0E91C();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1C8D0EB68@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C8D0E9AC();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1C8D0EB94@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1C8D0EB68(a1);
}

uint64_t sub_1C8D0EBB0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C8D0E964();
}

uint64_t sub_1C8D0EBCC@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1C8D0EB3C(a1);
}

uint64_t sub_1C8D0EBE8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C8D0E8D4();
}

uint64_t sub_1C8D0EC04@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1C8D0EB10(a1);
}

uint64_t sub_1C8D0EC20()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C8D0E844();
}

uint64_t sub_1C8D0EC3C@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1C8D0EAE4(a1);
}

uint64_t sub_1C8D0EC74@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1C8D0EAB8(a1);
}

uint64_t sub_1C8D0EC90()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C8D0E6DC();
}

uint64_t sub_1C8D0ECAC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C8D0E76C();
}

uint64_t sub_1C8D0ECC8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C8D0E724();
}

void sub_1C8D0ED94()
{
  v1 = *MEMORY[0x1E69E9840];
  sub_1C8D0F1F4();
  v0 = *MEMORY[0x1E69E9840];
}

void sub_1C8D0EE18()
{
  OUTLINED_FUNCTION_196();
  v1 = v0;
  v2 = OUTLINED_FUNCTION_38_3(*MEMORY[0x1E69E9840]);
  v3 = OUTLINED_FUNCTION_11(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_15();
  v8 = [objc_opt_self() currentProcess];
  v9 = [v8 isManaged];

  if (v9)
  {
    v32 = v5;
    v10 = [objc_opt_self() currentProcess];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312EB8, &qword_1C906A018);
    OUTLINED_FUNCTION_19_0();
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1C906A000;
    sub_1C8CB78AC(0, &qword_1EC312EC0, 0x1E69C7560);
    OUTLINED_FUNCTION_0_10();
    *(v11 + 32) = sub_1C8D11144();
    v12 = objc_allocWithZone(MEMORY[0x1E69C7548]);
    v13 = OUTLINED_FUNCTION_18_0();
    v15 = sub_1C8D13FA0(v13, v14, v10);
    v33 = 0;
    if ([v15 acquireWithError_])
    {
      v16 = v33;
    }

    else
    {
      v17 = v33;
      v18 = sub_1C9061D7C();

      swift_willThrow();
      v19 = *MEMORY[0x1E69E10F0];
      sub_1C906371C();
      v20 = v18;
      v21 = sub_1C9063D1C();
      v22 = sub_1C906444C();

      if (os_log_type_enabled(v21, v22))
      {
        OUTLINED_FUNCTION_17_0();
        v31 = v1;
        v23 = swift_slowAlloc();
        OUTLINED_FUNCTION_16_4();
        v24 = swift_slowAlloc();
        *v23 = 138412290;
        v25 = v18;
        v26 = _swift_stdlib_bridgeErrorToNSError();
        *(v23 + 4) = v26;
        *v24 = v26;
        _os_log_impl(&dword_1C8C9B000, v21, v22, "Failed to acquire RBS assertion to perform database operation. Still performing the operation: %@", v23, 0xCu);
        sub_1C8D14208(v24, &qword_1EC312EC8, &qword_1C9071EA0);
        OUTLINED_FUNCTION_13_2();
        MEMORY[0x1CCA833A0]();
        v1 = v31;
        OUTLINED_FUNCTION_13_2();
        MEMORY[0x1CCA833A0]();
      }

      else
      {
      }

      v27 = *(v32 + 8);
      v28 = OUTLINED_FUNCTION_125();
      v16 = v29(v28);
    }

    (v1)(v16);
    [v15 invalidate];
  }

  else
  {
    v1();
  }

  v30 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_198();
}

void sub_1C8D0F170()
{
  v1 = *MEMORY[0x1E69E9840];
  sub_1C8D0F1F4();
  v0 = *MEMORY[0x1E69E9840];
}

void sub_1C8D0F1F4()
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_31_2(v1, v2, v3, v4, v5, v6, v7, v8);
  v9 = OUTLINED_FUNCTION_38_3(*MEMORY[0x1E69E9840]);
  v10 = OUTLINED_FUNCTION_11(v9);
  v38 = v11;
  v39 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_50_1();
  v14 = [objc_opt_self() currentProcess];
  v15 = [v14 isManaged];

  if (v15)
  {
    OUTLINED_FUNCTION_49_1();
    v16 = [objc_opt_self() currentProcess];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312EB8, &qword_1C906A018);
    OUTLINED_FUNCTION_19_0();
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1C906A000;
    sub_1C8CB78AC(0, &qword_1EC312EC0, 0x1E69C7560);
    OUTLINED_FUNCTION_0_10();
    *(v17 + 32) = sub_1C8D11144();
    v18 = objc_allocWithZone(MEMORY[0x1E69C7548]);
    v19 = OUTLINED_FUNCTION_18_0();
    v21 = sub_1C8D13FA0(v19, v20, v16);
    v40 = 0;
    if ([v21 acquireWithError_])
    {
      v22 = v40;
      OUTLINED_FUNCTION_36_1();
      OUTLINED_FUNCTION_24_4();
    }

    else
    {
      v25 = v40;
      v26 = sub_1C9061D7C();

      swift_willThrow();
      v27 = *MEMORY[0x1E69E10F0];
      sub_1C906371C();
      v28 = v26;
      v29 = sub_1C9063D1C();
      LOBYTE(v25) = sub_1C906444C();

      if (os_log_type_enabled(v29, v25))
      {
        OUTLINED_FUNCTION_17_0();
        v30 = swift_slowAlloc();
        OUTLINED_FUNCTION_16_4();
        v31 = swift_slowAlloc();
        *v30 = 138412290;
        v32 = v26;
        v33 = _swift_stdlib_bridgeErrorToNSError();
        *(v30 + 4) = v33;
        *v31 = v33;
        OUTLINED_FUNCTION_56_2(&dword_1C8C9B000, v34, v35, "Failed to acquire RBS assertion to perform database operation. Still performing the operation: %@");
        sub_1C8D14208(v31, &qword_1EC312EC8, &qword_1C9071EA0);
        OUTLINED_FUNCTION_13_2();
        MEMORY[0x1CCA833A0]();
        OUTLINED_FUNCTION_13_2();
        MEMORY[0x1CCA833A0]();
      }

      else
      {
      }

      OUTLINED_FUNCTION_36_1();
      (*(v38 + 8))(v0, v39);
      OUTLINED_FUNCTION_24_4();
    }

    OUTLINED_FUNCTION_40_2();
    MEMORY[0x1EEE9AC00](v36);
    OUTLINED_FUNCTION_21_4();
    sub_1C8D136E4();
    [v21 invalidate];
  }

  else
  {
    OUTLINED_FUNCTION_40_2();
    MEMORY[0x1EEE9AC00](v23);
    OUTLINED_FUNCTION_5_7();
    OUTLINED_FUNCTION_30_1(v24);
    sub_1C8D136E4();
  }

  v37 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_198();
}

void sub_1C8D0F574()
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_6_2();
  v3 = OUTLINED_FUNCTION_38_3(*MEMORY[0x1E69E9840]);
  v4 = OUTLINED_FUNCTION_11(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_23_2(v7);
  v8 = objc_opt_self();
  v9 = OUTLINED_FUNCTION_59_0(v8);
  v10 = [v9 isManaged];

  if (v10)
  {
    OUTLINED_FUNCTION_43_2();
    v11 = [objc_opt_self() (v0 + 3448)];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312EB8, &qword_1C906A018);
    OUTLINED_FUNCTION_19_0();
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1C906A000;
    sub_1C8CB78AC(0, &qword_1EC312EC0, 0x1E69C7560);
    OUTLINED_FUNCTION_0_10();
    *(v12 + 32) = sub_1C8D11144();
    v13 = objc_allocWithZone(MEMORY[0x1E69C7548]);
    OUTLINED_FUNCTION_10_3();
    OUTLINED_FUNCTION_51_1();
    if ([v14 acquireWithError_])
    {
      v15 = v36;
      OUTLINED_FUNCTION_29_3();
    }

    else
    {
      v18 = v36;
      v19 = OUTLINED_FUNCTION_60_0();

      swift_willThrow();
      v20 = *MEMORY[0x1E69E10F0];
      OUTLINED_FUNCTION_63_1();
      v21 = v19;
      v22 = sub_1C9063D1C();
      sub_1C906444C();
      OUTLINED_FUNCTION_58_1();
      if (OUTLINED_FUNCTION_62_3())
      {
        OUTLINED_FUNCTION_17_0();
        swift_slowAlloc();
        OUTLINED_FUNCTION_16_4();
        v23 = swift_slowAlloc();
        OUTLINED_FUNCTION_61_2(5.7779e-34);
        v24 = _swift_stdlib_bridgeErrorToNSError();
        OUTLINED_FUNCTION_53_3(v24);
        OUTLINED_FUNCTION_12_1();
        _os_log_impl(v25, v26, v27, v28, v29, 0xCu);
        sub_1C8D14208(v23, &qword_1EC312EC8, &qword_1C9071EA0);
        OUTLINED_FUNCTION_13_2();
        MEMORY[0x1CCA833A0]();
        v30 = OUTLINED_FUNCTION_8();
        MEMORY[0x1CCA833A0](v30);
      }

      else
      {
      }

      v31 = OUTLINED_FUNCTION_9_5();
      v32(v31);
    }

    OUTLINED_FUNCTION_22_3();
    MEMORY[0x1EEE9AC00](v33);
    OUTLINED_FUNCTION_2_5();
    OUTLINED_FUNCTION_52_3(v34);
    OUTLINED_FUNCTION_28_1();
    sub_1C8D137C8();
    OUTLINED_FUNCTION_45_4();
    [v11 invalidate];
  }

  else
  {
    OUTLINED_FUNCTION_22_3();
    MEMORY[0x1EEE9AC00](v16);
    OUTLINED_FUNCTION_2_5();
    *(v17 - 16) = v1;
    *(v17 - 8) = v2;
    OUTLINED_FUNCTION_14_5();
    sub_1C8D137C8();
    OUTLINED_FUNCTION_41_2();
  }

  v35 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_198();
}

void sub_1C8D0F8B8()
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_6_2();
  v3 = OUTLINED_FUNCTION_38_3(*MEMORY[0x1E69E9840]);
  v4 = OUTLINED_FUNCTION_11(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_23_2(v7);
  v8 = objc_opt_self();
  v9 = OUTLINED_FUNCTION_59_0(v8);
  v10 = [v9 isManaged];

  if (v10)
  {
    OUTLINED_FUNCTION_43_2();
    v11 = [objc_opt_self() (v0 + 3448)];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312EB8, &qword_1C906A018);
    OUTLINED_FUNCTION_19_0();
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1C906A000;
    sub_1C8CB78AC(0, &qword_1EC312EC0, 0x1E69C7560);
    OUTLINED_FUNCTION_0_10();
    *(v12 + 32) = sub_1C8D11144();
    v13 = objc_allocWithZone(MEMORY[0x1E69C7548]);
    OUTLINED_FUNCTION_10_3();
    OUTLINED_FUNCTION_51_1();
    if ([v14 acquireWithError_])
    {
      v15 = v36;
      OUTLINED_FUNCTION_29_3();
    }

    else
    {
      v18 = v36;
      v19 = OUTLINED_FUNCTION_60_0();

      swift_willThrow();
      v20 = *MEMORY[0x1E69E10F0];
      OUTLINED_FUNCTION_63_1();
      v21 = v19;
      v22 = sub_1C9063D1C();
      sub_1C906444C();
      OUTLINED_FUNCTION_58_1();
      if (OUTLINED_FUNCTION_62_3())
      {
        OUTLINED_FUNCTION_17_0();
        swift_slowAlloc();
        OUTLINED_FUNCTION_16_4();
        v23 = swift_slowAlloc();
        OUTLINED_FUNCTION_61_2(5.7779e-34);
        v24 = _swift_stdlib_bridgeErrorToNSError();
        OUTLINED_FUNCTION_53_3(v24);
        OUTLINED_FUNCTION_12_1();
        _os_log_impl(v25, v26, v27, v28, v29, 0xCu);
        sub_1C8D14208(v23, &qword_1EC312EC8, &qword_1C9071EA0);
        OUTLINED_FUNCTION_13_2();
        MEMORY[0x1CCA833A0]();
        v30 = OUTLINED_FUNCTION_8();
        MEMORY[0x1CCA833A0](v30);
      }

      else
      {
      }

      v31 = OUTLINED_FUNCTION_9_5();
      v32(v31);
    }

    OUTLINED_FUNCTION_22_3();
    MEMORY[0x1EEE9AC00](v33);
    OUTLINED_FUNCTION_2_5();
    OUTLINED_FUNCTION_52_3(v34);
    OUTLINED_FUNCTION_28_1();
    sub_1C8D13918();
    OUTLINED_FUNCTION_45_4();
    [v11 invalidate];
  }

  else
  {
    OUTLINED_FUNCTION_22_3();
    MEMORY[0x1EEE9AC00](v16);
    OUTLINED_FUNCTION_2_5();
    *(v17 - 16) = v1;
    *(v17 - 8) = v2;
    OUTLINED_FUNCTION_14_5();
    sub_1C8D13918();
    OUTLINED_FUNCTION_41_2();
  }

  v35 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_198();
}

void sub_1C8D0FBFC()
{
  v1 = *MEMORY[0x1E69E9840];
  sub_1C8D10194();
  v0 = *MEMORY[0x1E69E9840];
}

void sub_1C8D0FC80()
{
  OUTLINED_FUNCTION_196();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = OUTLINED_FUNCTION_38_3(*MEMORY[0x1E69E9840]);
  v7 = OUTLINED_FUNCTION_11(v6);
  v40 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_15();
  v41 = v12 - v11;
  v13 = [objc_opt_self() currentProcess];
  v14 = [v13 isManaged];

  if (v14)
  {
    v38 = v6;
    v39 = v1;
    v15 = [objc_opt_self() currentProcess];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312EB8, &qword_1C906A018);
    OUTLINED_FUNCTION_19_0();
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1C906A000;
    sub_1C8CB78AC(0, &qword_1EC312EC0, 0x1E69C7560);
    OUTLINED_FUNCTION_0_10();
    *(v16 + 32) = sub_1C8D11144();
    v17 = objc_allocWithZone(MEMORY[0x1E69C7548]);
    v18 = OUTLINED_FUNCTION_18_0();
    v20 = sub_1C8D13FA0(v18, v19, v15);
    v42 = 0;
    if ([v20 acquireWithError_])
    {
      v21 = v42;
    }

    else
    {
      v24 = v42;
      v25 = sub_1C9061D7C();

      swift_willThrow();
      v26 = *MEMORY[0x1E69E10F0];
      sub_1C906371C();
      v27 = v25;
      v28 = sub_1C9063D1C();
      v29 = sub_1C906444C();

      if (os_log_type_enabled(v28, v29))
      {
        OUTLINED_FUNCTION_17_0();
        v30 = swift_slowAlloc();
        OUTLINED_FUNCTION_16_4();
        v31 = swift_slowAlloc();
        *v30 = 138412290;
        v32 = v25;
        v33 = _swift_stdlib_bridgeErrorToNSError();
        *(v30 + 4) = v33;
        *v31 = v33;
        _os_log_impl(&dword_1C8C9B000, v28, v29, "Failed to acquire RBS assertion to perform database operation. Still performing the operation: %@", v30, 0xCu);
        sub_1C8D14208(v31, &qword_1EC312EC8, &qword_1C9071EA0);
        v34 = OUTLINED_FUNCTION_8();
        MEMORY[0x1CCA833A0](v34);
        OUTLINED_FUNCTION_13_2();
        MEMORY[0x1CCA833A0]();
      }

      else
      {
      }

      (*(v40 + 8))(v41, v38);
    }

    OUTLINED_FUNCTION_22_3();
    MEMORY[0x1EEE9AC00](v35);
    OUTLINED_FUNCTION_3_10();
    *(v36 - 24) = v5;
    *(v36 - 16) = v3;
    *(v36 - 8) = v39;
    sub_1C8D13A64();
    [v20 invalidate];
  }

  else
  {
    OUTLINED_FUNCTION_22_3();
    MEMORY[0x1EEE9AC00](v22);
    OUTLINED_FUNCTION_3_10();
    *(v23 - 24) = v5;
    *(v23 - 16) = v3;
    *(v23 - 8) = v1;
    sub_1C8D13A64();
    OUTLINED_FUNCTION_41_2();
  }

  v37 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_198();
}

void sub_1C8D1008C()
{
  v1 = *MEMORY[0x1E69E9840];
  sub_1C8D0F1F4();
  v0 = *MEMORY[0x1E69E9840];
}

void sub_1C8D10110()
{
  v1 = *MEMORY[0x1E69E9840];
  sub_1C8D10194();
  v0 = *MEMORY[0x1E69E9840];
}

void sub_1C8D10194()
{
  OUTLINED_FUNCTION_196();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = OUTLINED_FUNCTION_38_3(*MEMORY[0x1E69E9840]);
  v9 = OUTLINED_FUNCTION_11(v8);
  v42 = v10;
  v43 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_15();
  v44 = v14 - v13;
  v15 = [objc_opt_self() currentProcess];
  v16 = [v15 isManaged];

  if (v16)
  {
    v41 = v7;
    v17 = [objc_opt_self() currentProcess];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312EB8, &qword_1C906A018);
    OUTLINED_FUNCTION_19_0();
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1C906A000;
    sub_1C8CB78AC(0, &qword_1EC312EC0, 0x1E69C7560);
    OUTLINED_FUNCTION_0_10();
    *(v18 + 32) = sub_1C8D11144();
    v19 = objc_allocWithZone(MEMORY[0x1E69C7548]);
    v20 = OUTLINED_FUNCTION_18_0();
    v22 = sub_1C8D13FA0(v20, v21, v17);
    v45 = 0;
    if ([v22 acquireWithError_])
    {
      v23 = v45;
      OUTLINED_FUNCTION_36_1();
      v25 = v7;
    }

    else
    {
      v28 = v45;
      v29 = sub_1C9061D7C();

      swift_willThrow();
      v30 = *MEMORY[0x1E69E10F0];
      sub_1C906371C();
      v31 = v29;
      v32 = sub_1C9063D1C();
      v33 = sub_1C906444C();

      if (os_log_type_enabled(v32, v33))
      {
        OUTLINED_FUNCTION_17_0();
        v34 = swift_slowAlloc();
        OUTLINED_FUNCTION_16_4();
        v35 = swift_slowAlloc();
        *v34 = 138412290;
        v36 = v29;
        v37 = _swift_stdlib_bridgeErrorToNSError();
        *(v34 + 4) = v37;
        *v35 = v37;
        _os_log_impl(&dword_1C8C9B000, v32, v33, "Failed to acquire RBS assertion to perform database operation. Still performing the operation: %@", v34, 0xCu);
        sub_1C8D14208(v35, &qword_1EC312EC8, &qword_1C9071EA0);
        OUTLINED_FUNCTION_13_2();
        MEMORY[0x1CCA833A0]();
        OUTLINED_FUNCTION_13_2();
        MEMORY[0x1CCA833A0]();
      }

      else
      {
      }

      OUTLINED_FUNCTION_36_1();
      v24 = (*(v42 + 8))(v44, v43);
      v25 = v41;
    }

    MEMORY[0x1EEE9AC00](v24);
    OUTLINED_FUNCTION_5_7();
    *(v38 - 32) = v25;
    *(v38 - 24) = v5;
    *(v38 - 16) = v39;
    *(v38 - 8) = v1;
    sub_1C8D13D10();
    [v22 invalidate];
  }

  else
  {
    OUTLINED_FUNCTION_40_2();
    MEMORY[0x1EEE9AC00](v26);
    OUTLINED_FUNCTION_5_7();
    *(v27 - 32) = v7;
    *(v27 - 24) = v5;
    *(v27 - 16) = v3;
    *(v27 - 8) = v1;
    sub_1C8D13D10();
  }

  v40 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_198();
}

void sub_1C8D105C0()
{
  v1 = *MEMORY[0x1E69E9840];
  sub_1C8D0F1F4();
  v0 = *MEMORY[0x1E69E9840];
}

void sub_1C8D10644()
{
  v1 = *MEMORY[0x1E69E9840];
  sub_1C8D10194();
  v0 = *MEMORY[0x1E69E9840];
}

void sub_1C8D106C8()
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_6_2();
  v3 = OUTLINED_FUNCTION_38_3(*MEMORY[0x1E69E9840]);
  v4 = OUTLINED_FUNCTION_11(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_23_2(v7);
  v8 = objc_opt_self();
  v9 = OUTLINED_FUNCTION_59_0(v8);
  v10 = [v9 isManaged];

  if (v10)
  {
    OUTLINED_FUNCTION_43_2();
    v11 = [objc_opt_self() (v0 + 3448)];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312EB8, &qword_1C906A018);
    OUTLINED_FUNCTION_19_0();
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1C906A000;
    sub_1C8CB78AC(0, &qword_1EC312EC0, 0x1E69C7560);
    OUTLINED_FUNCTION_0_10();
    *(v12 + 32) = sub_1C8D11144();
    v13 = objc_allocWithZone(MEMORY[0x1E69C7548]);
    OUTLINED_FUNCTION_10_3();
    OUTLINED_FUNCTION_51_1();
    if ([v14 acquireWithError_])
    {
      v15 = v36;
      OUTLINED_FUNCTION_29_3();
    }

    else
    {
      v18 = v36;
      v19 = OUTLINED_FUNCTION_60_0();

      swift_willThrow();
      v20 = *MEMORY[0x1E69E10F0];
      OUTLINED_FUNCTION_63_1();
      v21 = v19;
      v22 = sub_1C9063D1C();
      sub_1C906444C();
      OUTLINED_FUNCTION_58_1();
      if (OUTLINED_FUNCTION_62_3())
      {
        OUTLINED_FUNCTION_17_0();
        swift_slowAlloc();
        OUTLINED_FUNCTION_16_4();
        v23 = swift_slowAlloc();
        OUTLINED_FUNCTION_61_2(5.7779e-34);
        v24 = _swift_stdlib_bridgeErrorToNSError();
        OUTLINED_FUNCTION_53_3(v24);
        OUTLINED_FUNCTION_12_1();
        _os_log_impl(v25, v26, v27, v28, v29, 0xCu);
        sub_1C8D14208(v23, &qword_1EC312EC8, &qword_1C9071EA0);
        OUTLINED_FUNCTION_13_2();
        MEMORY[0x1CCA833A0]();
        v30 = OUTLINED_FUNCTION_8();
        MEMORY[0x1CCA833A0](v30);
      }

      else
      {
      }

      v31 = OUTLINED_FUNCTION_9_5();
      v32(v31);
    }

    OUTLINED_FUNCTION_22_3();
    MEMORY[0x1EEE9AC00](v33);
    OUTLINED_FUNCTION_2_5();
    OUTLINED_FUNCTION_52_3(v34);
    OUTLINED_FUNCTION_28_1();
    sub_1C8D13BB4();
    OUTLINED_FUNCTION_45_4();
    [v11 invalidate];
  }

  else
  {
    OUTLINED_FUNCTION_22_3();
    MEMORY[0x1EEE9AC00](v16);
    OUTLINED_FUNCTION_2_5();
    *(v17 - 16) = v1;
    *(v17 - 8) = v2;
    OUTLINED_FUNCTION_14_5();
    sub_1C8D13BB4();
    OUTLINED_FUNCTION_41_2();
  }

  v35 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_198();
}

void sub_1C8D10A0C()
{
  v1 = *MEMORY[0x1E69E9840];
  sub_1C8D10194();
  v0 = *MEMORY[0x1E69E9840];
}

void sub_1C8D10A90()
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_6_2();
  v3 = OUTLINED_FUNCTION_38_3(*MEMORY[0x1E69E9840]);
  v4 = OUTLINED_FUNCTION_11(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_23_2(v7);
  v8 = objc_opt_self();
  v9 = OUTLINED_FUNCTION_59_0(v8);
  v10 = [v9 isManaged];

  if (v10)
  {
    OUTLINED_FUNCTION_43_2();
    v11 = [objc_opt_self() (v0 + 3448)];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312EB8, &qword_1C906A018);
    OUTLINED_FUNCTION_19_0();
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1C906A000;
    sub_1C8CB78AC(0, &qword_1EC312EC0, 0x1E69C7560);
    OUTLINED_FUNCTION_0_10();
    *(v12 + 32) = sub_1C8D11144();
    v13 = objc_allocWithZone(MEMORY[0x1E69C7548]);
    OUTLINED_FUNCTION_10_3();
    OUTLINED_FUNCTION_51_1();
    if ([v14 acquireWithError_])
    {
      v15 = v36;
      OUTLINED_FUNCTION_29_3();
    }

    else
    {
      v18 = v36;
      v19 = OUTLINED_FUNCTION_60_0();

      swift_willThrow();
      v20 = *MEMORY[0x1E69E10F0];
      OUTLINED_FUNCTION_63_1();
      v21 = v19;
      v22 = sub_1C9063D1C();
      sub_1C906444C();
      OUTLINED_FUNCTION_58_1();
      if (OUTLINED_FUNCTION_62_3())
      {
        OUTLINED_FUNCTION_17_0();
        swift_slowAlloc();
        OUTLINED_FUNCTION_16_4();
        v23 = swift_slowAlloc();
        OUTLINED_FUNCTION_61_2(5.7779e-34);
        v24 = _swift_stdlib_bridgeErrorToNSError();
        OUTLINED_FUNCTION_53_3(v24);
        OUTLINED_FUNCTION_12_1();
        _os_log_impl(v25, v26, v27, v28, v29, 0xCu);
        sub_1C8D14208(v23, &qword_1EC312EC8, &qword_1C9071EA0);
        OUTLINED_FUNCTION_13_2();
        MEMORY[0x1CCA833A0]();
        v30 = OUTLINED_FUNCTION_8();
        MEMORY[0x1CCA833A0](v30);
      }

      else
      {
      }

      v31 = OUTLINED_FUNCTION_9_5();
      v32(v31);
    }

    OUTLINED_FUNCTION_22_3();
    MEMORY[0x1EEE9AC00](v33);
    OUTLINED_FUNCTION_2_5();
    OUTLINED_FUNCTION_52_3(v34);
    OUTLINED_FUNCTION_28_1();
    sub_1C8D13E50();
    OUTLINED_FUNCTION_45_4();
    [v11 invalidate];
  }

  else
  {
    OUTLINED_FUNCTION_22_3();
    MEMORY[0x1EEE9AC00](v16);
    OUTLINED_FUNCTION_2_5();
    *(v17 - 16) = v1;
    *(v17 - 8) = v2;
    OUTLINED_FUNCTION_14_5();
    sub_1C8D13E50();
    OUTLINED_FUNCTION_41_2();
  }

  v35 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_198();
}

void sub_1C8D10DD4()
{
  OUTLINED_FUNCTION_196();
  v1 = v0;
  v2 = OUTLINED_FUNCTION_38_3(*MEMORY[0x1E69E9840]);
  v3 = OUTLINED_FUNCTION_11(v2);
  v31 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_15();
  v9 = v8 - v7;
  v10 = [objc_opt_self() currentProcess];
  v11 = [v10 isManaged];

  if (v11)
  {
    v30 = v1;
    v12 = [objc_opt_self() currentProcess];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312EB8, &qword_1C906A018);
    OUTLINED_FUNCTION_19_0();
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1C906A000;
    sub_1C8CB78AC(0, &qword_1EC312EC0, 0x1E69C7560);
    OUTLINED_FUNCTION_0_10();
    *(v13 + 32) = sub_1C8D11144();
    v14 = objc_allocWithZone(MEMORY[0x1E69C7548]);
    v15 = OUTLINED_FUNCTION_18_0();
    v17 = sub_1C8D13FA0(v15, v16, v12);
    v32 = 0;
    if ([v17 acquireWithError_])
    {
      v1(v32);
    }

    else
    {
      v18 = v32;
      v19 = sub_1C9061D7C();

      swift_willThrow();
      v20 = *MEMORY[0x1E69E10F0];
      sub_1C906371C();
      v21 = v19;
      v22 = sub_1C9063D1C();
      v23 = sub_1C906444C();

      if (os_log_type_enabled(v22, v23))
      {
        OUTLINED_FUNCTION_17_0();
        v24 = swift_slowAlloc();
        OUTLINED_FUNCTION_16_4();
        v25 = swift_slowAlloc();
        *v24 = 138412290;
        v26 = v19;
        v27 = _swift_stdlib_bridgeErrorToNSError();
        *(v24 + 4) = v27;
        *v25 = v27;
        _os_log_impl(&dword_1C8C9B000, v22, v23, "Failed to acquire RBS assertion to perform database operation. Still performing the operation: %@", v24, 0xCu);
        sub_1C8D14208(v25, &qword_1EC312EC8, &qword_1C9071EA0);
        OUTLINED_FUNCTION_13_2();
        MEMORY[0x1CCA833A0]();
        OUTLINED_FUNCTION_13_2();
        MEMORY[0x1CCA833A0]();
      }

      else
      {
      }

      v28 = (*(v31 + 8))(v9, v2);
      v30(v28);
    }

    [v17 invalidate];
  }

  else
  {
    (v1)();
  }

  v29 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_198();
}

id sub_1C8D11144()
{
  v0 = sub_1C9063EBC();

  v1 = sub_1C9063EBC();

  v2 = [swift_getObjCClassFromMetadata() attributeWithDomain:v0 name:v1];

  return v2;
}

uint64_t sub_1C8D111D8()
{
  OUTLINED_FUNCTION_7();
  v9 = *MEMORY[0x1E69E9840];
  v0[4] = v1;
  v0[5] = v2;
  v0[3] = v3;
  v4 = sub_1C9063D3C();
  v0[6] = v4;
  v5 = *(v4 - 8);
  v0[7] = v5;
  v6 = *(v5 + 64) + 15;
  v0[8] = swift_task_alloc();
  v7 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1C8D112C4, 0, 0);
}

uint64_t sub_1C8D112C4()
{
  v37 = *MEMORY[0x1E69E9840];
  v1 = [objc_opt_self() currentProcess];
  v2 = [v1 isManaged];

  if (v2)
  {
    v3 = [objc_opt_self() currentProcess];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312EB8, &qword_1C906A018);
    OUTLINED_FUNCTION_19_0();
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1C906A000;
    sub_1C8CB78AC(0, &qword_1EC312EC0, 0x1E69C7560);
    OUTLINED_FUNCTION_0_10();
    *(v4 + 32) = sub_1C8D11144();
    v5 = objc_allocWithZone(MEMORY[0x1E69C7548]);
    v6 = OUTLINED_FUNCTION_18_0();
    v8 = sub_1C8D13FA0(v6, v7, v3);
    v0[2] = 0;
    v0[9] = v8;
    v9 = [v8 acquireWithError_];
    v10 = v0[2];
    if (v9)
    {
      v11 = v10;
    }

    else
    {
      v17 = v0[8];
      v18 = v10;
      v19 = sub_1C9061D7C();

      swift_willThrow();
      v20 = *MEMORY[0x1E69E10F0];
      sub_1C906371C();
      v21 = v19;
      v22 = sub_1C9063D1C();
      v23 = sub_1C906444C();

      if (os_log_type_enabled(v22, v23))
      {
        OUTLINED_FUNCTION_17_0();
        v24 = swift_slowAlloc();
        OUTLINED_FUNCTION_16_4();
        v25 = swift_slowAlloc();
        *v24 = 138412290;
        v26 = v19;
        v27 = _swift_stdlib_bridgeErrorToNSError();
        *(v24 + 4) = v27;
        *v25 = v27;
        _os_log_impl(&dword_1C8C9B000, v22, v23, "Failed to acquire RBS assertion to perform database operation. Still performing the operation: %@", v24, 0xCu);
        sub_1C8D14208(v25, &qword_1EC312EC8, &qword_1C9071EA0);
        v28 = OUTLINED_FUNCTION_8();
        MEMORY[0x1CCA833A0](v28);
        OUTLINED_FUNCTION_13_2();
        MEMORY[0x1CCA833A0]();
      }

      else
      {
      }

      (*(v0[7] + 8))(v0[8], v0[6]);
    }

    OUTLINED_FUNCTION_15_3();
    v36 = v29;
    v31 = *(v30 + 4);
    v15 = swift_task_alloc();
    v0[10] = v15;
    *v15 = v0;
    v16 = sub_1C8D11678;
  }

  else
  {
    OUTLINED_FUNCTION_15_3();
    v36 = v12;
    v14 = *(v13 + 4);
    v15 = swift_task_alloc();
    v0[12] = v15;
    *v15 = v0;
    v16 = sub_1C8D11858;
  }

  v15[1] = v16;
  v32 = v0[5];
  v33 = v0[3];
  v34 = *MEMORY[0x1E69E9840];

  return v36(v33);
}

uint64_t sub_1C8D11678()
{
  OUTLINED_FUNCTION_7();
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(*v1 + 80);
  v7 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_1C8D119C4;
  }

  else
  {
    v3 = sub_1C8D117B4;
  }

  v4 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1C8D117B4()
{
  OUTLINED_FUNCTION_7();
  v6 = *MEMORY[0x1E69E9840];
  v1 = v0[9];
  [v1 invalidate];

  v2 = v0[8];

  v3 = v0[1];
  v4 = *MEMORY[0x1E69E9840];

  return v3();
}

uint64_t sub_1C8D11858()
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = *v0;
  v2 = *(*v0 + 96);
  v8 = *v0;

  v3 = *(v1 + 64);

  v4 = *(v8 + 8);
  v5 = *MEMORY[0x1E69E9840];

  return v4();
}

uint64_t sub_1C8D119C4()
{
  OUTLINED_FUNCTION_7();
  v7 = *MEMORY[0x1E69E9840];
  v1 = v0[9];
  [v1 invalidate];

  v2 = v0[11];
  v3 = v0[8];

  v4 = v0[1];
  v5 = *MEMORY[0x1E69E9840];

  return v4();
}

void sub_1C8D11A68()
{
  OUTLINED_FUNCTION_196();
  v2 = v1;
  v3 = sub_1C9063D3C();
  v4 = OUTLINED_FUNCTION_11(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_50_1();
  v9 = sub_1C906245C();
  v10 = OUTLINED_FUNCTION_11(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_15();
  ToolDatabase.Transaction.rollBack()();
  if ((v2 & 1) != 0 && v15)
  {
    v16 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316420, &qword_1C90729E0);
    if (swift_dynamicCast())
    {

      v17 = v15;
    }

    else
    {

      v18 = v15;
      sub_1C906268C();
      v19 = sub_1C906243C();

      v20 = *(v12 + 8);
      v21 = OUTLINED_FUNCTION_125();
      v22(v21);
      if ((v19 & 1) == 0)
      {
        goto LABEL_10;
      }

      v17 = v15;
    }

    v23 = *MEMORY[0x1E69E10F0];
    sub_1C906371C();
    v24 = sub_1C9063D1C();
    v25 = sub_1C906446C();
    if (os_log_type_enabled(v24, v25))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_12_1();
      _os_log_impl(v26, v27, v28, v29, v30, 2u);
      v31 = OUTLINED_FUNCTION_8();
      MEMORY[0x1CCA833A0](v31);
    }

    (*(v6 + 8))(v0, v3);
  }

LABEL_10:
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_198();
}

void sub_1C8D11CA4()
{
  OUTLINED_FUNCTION_196();
  v2 = v1;
  v3 = sub_1C9063D3C();
  v4 = OUTLINED_FUNCTION_11(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_50_1();
  v9 = sub_1C906245C();
  v10 = OUTLINED_FUNCTION_11(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_15();
  ToolDatabase.Savepoint.rollBack()();
  if ((v2 & 1) != 0 && v15)
  {
    v16 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316420, &qword_1C90729E0);
    if (swift_dynamicCast())
    {

      v17 = v15;
    }

    else
    {

      v18 = v15;
      sub_1C906268C();
      v19 = sub_1C906243C();

      v20 = *(v12 + 8);
      v21 = OUTLINED_FUNCTION_125();
      v22(v21);
      if ((v19 & 1) == 0)
      {
        goto LABEL_10;
      }

      v17 = v15;
    }

    v23 = *MEMORY[0x1E69E10F0];
    sub_1C906371C();
    v24 = sub_1C9063D1C();
    v25 = sub_1C906446C();
    if (os_log_type_enabled(v24, v25))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_12_1();
      _os_log_impl(v26, v27, v28, v29, v30, 2u);
      v31 = OUTLINED_FUNCTION_8();
      MEMORY[0x1CCA833A0](v31);
    }

    (*(v6 + 8))(v0, v3);
  }

LABEL_10:
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_198();
}

void sub_1C8D11EE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, unsigned __int8 a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_196();
  a23 = v25;
  a24 = v26;
  v42 = v27;
  v29 = v28;
  v31 = v30;
  v32 = sub_1C90626DC();
  v33 = OUTLINED_FUNCTION_11(v32);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_33_1();
  v37 = *(v31 + 16);
  a14 = v29;
  ToolDatabase.environment.getter(&a13);
  a12 = a13;
  v38 = sub_1C8E78764(v37, &a14, &a12);
  if (!v24)
  {
    v42(v38, v39, v40, v41);
    sub_1C8E78C94();
  }

  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8D12198(uint64_t a1, unsigned __int8 a2, void (*a3)(void))
{
  v6 = sub_1C90626DC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  MEMORY[0x1EEE9AC00](v8);
  type metadata accessor for ToolDatabase.Transaction();
  v9 = *(a1 + 16);
  v14 = a2;
  ToolDatabase.environment.getter(&v13);
  v12 = v13;
  result = sub_1C8E78764(v9, &v14, &v12);
  if (!v3)
  {
    a3();
    sub_1C8E78C94();
  }

  return result;
}

uint64_t sub_1C8D12474@<X0>(uint64_t a1@<X0>, char a2@<W1>, void (*a3)(uint64_t *__return_ptr)@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v18 = a4;
  v19 = a3;
  v17 = a5;
  v8 = sub_1C90626DC();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  type metadata accessor for ToolDatabase.Transaction();
  v13 = *(a1 + 16);
  LOBYTE(v20) = a2;
  ToolDatabase.environment.getter(&v22);
  v21 = v22;
  result = sub_1C8E78764(v13, &v20, &v21);
  if (!v5)
  {
    v15 = v17;
    v16[1] = v11;
    v19(&v20);
    sub_1C8E78C94();

    *v15 = v20;
  }

  return result;
}

uint64_t sub_1C8D12798(uint64_t a1, char a2, void (*a3)(uint64_t *__return_ptr))
{
  v6 = sub_1C90626DC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  MEMORY[0x1EEE9AC00](v8);
  type metadata accessor for ToolDatabase.Transaction();
  v9 = *(a1 + 16);
  LOBYTE(v12) = a2;
  ToolDatabase.environment.getter(&v14);
  v13 = v14;
  result = sub_1C8E78764(v9, &v12, &v13);
  if (!v3)
  {
    a3(&v12);
    sub_1C8E78C94();

    return v12;
  }

  return result;
}

void sub_1C8D12A88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_196();
  a22 = v24;
  a23 = v25;
  v40 = v26;
  v28 = v27;
  v30 = v29;
  v39 = v31;
  v32 = sub_1C90626DC();
  v33 = OUTLINED_FUNCTION_11(v32);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_33_1();
  v37 = *(v30 + 16);
  v41 = v28;
  v38 = ToolDatabase.environment.getter(&a13);
  OUTLINED_FUNCTION_57_3(v38, &v41);
  if (!v23)
  {
    v40(v42);
    sub_1C8E78C94();

    memcpy(v39, v42, 0x61uLL);
  }

  OUTLINED_FUNCTION_198();
}

void *sub_1C8D12D8C@<X0>(uint64_t a1@<X0>, char a2@<W1>, void (*a3)(void *__return_ptr)@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v20 = a4;
  v21 = a3;
  v19 = a5;
  v8 = sub_1C90626DC();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v18 - v13;
  type metadata accessor for ToolDatabase.Transaction();
  v15 = *(a1 + 16);
  LOBYTE(__dst[0]) = a2;
  ToolDatabase.environment.getter(&v25);
  v24 = v25;
  result = sub_1C8E78764(v15, __dst, &v24);
  if (!v5)
  {
    v18[0] = v14;
    v17 = v19;
    v18[1] = v11;
    v21(__src);
    sub_1C8E78C94();

    return memcpy(v17, __src, 0x50uLL);
  }

  return result;
}

void sub_1C8D13104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_196();
  a22 = v24;
  a23 = v25;
  v38 = v26;
  v28 = v27;
  v30 = v29;
  v31 = sub_1C90626DC();
  v32 = OUTLINED_FUNCTION_11(v31);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_33_1();
  v36 = *(v30 + 16);
  LOBYTE(v39) = v28;
  v37 = ToolDatabase.environment.getter(&a13);
  OUTLINED_FUNCTION_57_3(v37, &v39);
  if (!v23)
  {
    v38(&v39);
    sub_1C8E78C94();
  }

  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8D13388@<X0>(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, void (*a3)(uint64_t, uint64_t, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v19[2] = a4;
  v20 = a3;
  v21 = a5;
  v8 = sub_1C90626DC();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v19 - v13;
  type metadata accessor for ToolDatabase.Transaction();
  v15 = *(a1 + 16);
  v24 = a2;
  ToolDatabase.environment.getter(&v23);
  v22 = v23;
  result = sub_1C8E78764(v15, &v24, &v22);
  if (!v5)
  {
    v19[0] = v14;
    v19[1] = v11;
    v20(result, v17, v18);
    sub_1C8E78C94();
  }

  return result;
}

void sub_1C8D136E4()
{
  OUTLINED_FUNCTION_196();
  v5 = OUTLINED_FUNCTION_35_1(v3, v4);
  v6 = OUTLINED_FUNCTION_11(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_47_1(v9);
  v10 = *MEMORY[0x1E69E8018];
  v11 = OUTLINED_FUNCTION_55_0();
  v12(v11);
  v0;
  sub_1C9063DFC();
  v13 = OUTLINED_FUNCTION_46_1();
  v14(v13);
  if (v0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(v2, v1);
    OUTLINED_FUNCTION_39_2();
    OUTLINED_FUNCTION_198();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1C8D137C8()
{
  v1 = sub_1C9063DEC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = (&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v0 + 24);
  *v6 = v7;
  (*(v2 + 104))(v6, *MEMORY[0x1E69E8018], v1, v4);
  v7;
  LOBYTE(v7) = sub_1C9063DFC();
  result = (*(v2 + 8))(v6, v1);
  if (v7)
  {
    return sub_1C90644BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8D13918()
{
  v1 = sub_1C9063DEC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = (&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v0 + 24);
  *v6 = v7;
  (*(v2 + 104))(v6, *MEMORY[0x1E69E8018], v1, v4);
  v7;
  LOBYTE(v7) = sub_1C9063DFC();
  result = (*(v2 + 8))(v6, v1);
  if (v7)
  {
    return sub_1C90644BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8D13A64()
{
  v2 = sub_1C9063DEC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = (v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v0 + 24);
  *v7 = v8;
  (*(v3 + 104))(v7, *MEMORY[0x1E69E8018], v2, v5);
  v8;
  LOBYTE(v8) = sub_1C9063DFC();
  result = (*(v3 + 8))(v7, v2);
  if (v8)
  {
    result = sub_1C90644BC();
    if (!v1)
    {
      return v10[1];
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C8D13BB4()
{
  v1 = sub_1C9063DEC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = (&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v0 + 24);
  *v6 = v7;
  (*(v2 + 104))(v6, *MEMORY[0x1E69E8018], v1, v4);
  v7;
  LOBYTE(v7) = sub_1C9063DFC();
  result = (*(v2 + 8))(v6, v1);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312EE8, &unk_1C9091C10);
    return sub_1C90644BC();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1C8D13D10()
{
  OUTLINED_FUNCTION_196();
  v1 = sub_1C9063DEC();
  v2 = OUTLINED_FUNCTION_11(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_15();
  v9 = v8 - v7;
  v10 = *(v0 + 24);
  *(v8 - v7) = v10;
  (*(v4 + 104))(v8 - v7, *MEMORY[0x1E69E8018], v1);
  v10;
  LOBYTE(v10) = sub_1C9063DFC();
  (*(v4 + 8))(v9, v1);
  if (v10)
  {
    v11 = OUTLINED_FUNCTION_125();
    __swift_instantiateConcreteTypeFromMangledNameV2(v11, v12);
    sub_1C90644BC();
    OUTLINED_FUNCTION_198();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1C8D13E50()
{
  v1 = sub_1C9063DEC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = (&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v0 + 24);
  *v6 = v7;
  (*(v2 + 104))(v6, *MEMORY[0x1E69E8018], v1, v4);
  v7;
  LOBYTE(v7) = sub_1C9063DFC();
  result = (*(v2 + 8))(v6, v1);
  if (v7)
  {
    sub_1C90620BC();
    return sub_1C90644BC();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1C8D13FA0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1C9063EBC();

  sub_1C8CB78AC(0, &qword_1EC312ED0, 0x1E69C7550);
  v6 = sub_1C906418C();

  v7 = [v3 initWithExplanation:v5 target:a3 attributes:v6];

  return v7;
}

unint64_t sub_1C8D14048()
{
  result = qword_1EC312ED8;
  if (!qword_1EC312ED8)
  {
    sub_1C90626DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC312ED8);
  }

  return result;
}

uint64_t sub_1C8D140A0@<X0>(uint64_t a1@<X0>, char a2@<W1>, void (*a3)(uint64_t *__return_ptr)@<X2>, uint64_t *a4@<X8>)
{
  result = sub_1C8D12798(a1, a2, a3);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_1C8D14208(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t OUTLINED_FUNCTION_35_1(uint64_t a1, uint64_t a2)
{
  *(v3 - 72) = v2;
  *(v3 - 88) = a2;

  return sub_1C9063DEC();
}

uint64_t OUTLINED_FUNCTION_37_3(uint64_t a1, uint64_t a2)
{
  result = a2;
  v4 = *(v2 + 16);
  return result;
}

void OUTLINED_FUNCTION_52_3(uint64_t a1@<X8>)
{
  v3 = *(v2 - 136);
  *(a1 - 16) = v1;
  *(a1 - 8) = v3;
}

uint64_t OUTLINED_FUNCTION_53_3(uint64_t result)
{
  *(v1 + 4) = result;
  *v2 = result;
  return result;
}

void OUTLINED_FUNCTION_56_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_57_3(uint64_t a1, unsigned __int8 *a2)
{

  return sub_1C8E78764(v2, a2, (v3 - 66));
}

id OUTLINED_FUNCTION_61_2(float a1)
{
  *v2 = a1;

  return v1;
}

uint64_t sub_1C8D1443C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x79747265706F7270 && a2 == 0xE800000000000000;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x617A696C61636F6CLL && a2 == 0xEC0000006E6F6974)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C9064C2C();

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

uint64_t sub_1C8D14508(char a1)
{
  if (a1)
  {
    return 0x617A696C61636F6CLL;
  }

  else
  {
    return 0x79747265706F7270;
  }
}

uint64_t sub_1C8D14548@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v41 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313010, &qword_1C906A7E0);
  OUTLINED_FUNCTION_11(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v9);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C8D17424();
  sub_1C9064DEC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = v6;
  v12 = v41;
  LOBYTE(v22[0]) = 0;
  sub_1C8D17478();
  OUTLINED_FUNCTION_4_5();
  sub_1C9064A6C();
  v13 = v26;
  v18 = v23;
  v19 = v25;
  v20 = v24;
  v21 = v27;
  v32 = 1;
  sub_1C8D174CC();
  OUTLINED_FUNCTION_4_5();
  sub_1C9064A6C();
  v14 = *(v11 + 8);
  v15 = OUTLINED_FUNCTION_114();
  v16(v15);
  v37 = v33;
  v38 = v34;
  v39 = v35;
  v40 = v36;
  v22[0] = v18;
  v22[1] = v20;
  v22[2] = v19;
  v22[3] = v13;
  v22[4] = v21;
  *&v22[9] = v35;
  *&v22[11] = v36;
  *&v22[5] = v33;
  *&v22[7] = v34;
  memcpy(v12, v22, 0x68uLL);
  sub_1C8D17520(v22, &v23);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v23 = v18;
  v24 = v20;
  v25 = v19;
  v26 = v13;
  v27 = v21;
  v28 = v37;
  v29 = v38;
  v30 = v39;
  v31 = v40;
  return sub_1C8D17558(&v23);
}

uint64_t sub_1C8D147D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8D1443C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8D14800(uint64_t a1)
{
  v2 = sub_1C8D17424();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8D1483C(uint64_t a1)
{
  v2 = sub_1C8D17424();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8D14890(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C8D168BC();

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

uint64_t sub_1C8D148F4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000015 && 0x80000001C90C9740 == a2;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000010 && 0x80000001C90C9760 == a2;
      if (v7 || (sub_1C9064C2C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000010 && 0x80000001C90C9780 == a2;
        if (v8 || (sub_1C9064C2C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6E6F696372656F63 && a2 == 0xE900000000000073;
          if (v9 || (sub_1C9064C2C() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x72506D6574737973 && a2 == 0xEF736C6F636F746FLL;
            if (v10 || (sub_1C9064C2C() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0xD000000000000012 && 0x80000001C90C97A0 == a2)
            {

              return 6;
            }

            else
            {
              v12 = sub_1C9064C2C();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1C8D14B4C(char a1)
{
  result = 1701869940;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000015;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0x6E6F696372656F63;
      break;
    case 5:
      result = 0x72506D6574737973;
      break;
    case 6:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C8D14C34@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312F28, &qword_1C906A358);
  OUTLINED_FUNCTION_11(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v8);
  v9 = a1[4];
  v30 = a1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C8D1676C();
  sub_1C9064DEC();
  if (v2)
  {
    OUTLINED_FUNCTION_8_5();
    OUTLINED_FUNCTION_15_4();
    *&v49[0] = v37;
    *(&v49[0] + 1) = v41;
    v49[1] = v43;
    *&v49[2] = v45;
    *(&v49[2] + 1) = v39;
    *&v49[3] = v35;
    *(&v49[3] + 1) = v33;
    *&v49[4] = v31;
    sub_1C8D16D78(v49, &qword_1EC312F38, &qword_1C906A360);

    v51 = 0;
    memset(v50, 0, sizeof(v50));
    return sub_1C8D16D78(v50, &qword_1EC312F40, &qword_1C906A368);
  }

  else
  {
    v29 = a2;
    v101 = 0;
    sub_1C8D16814();
    sub_1C9064A6C();
    v95 = v91;
    v96 = v92;
    v97 = v93;
    v98 = v94;
    v100 = 1;
    sub_1C8D16868();
    OUTLINED_FUNCTION_4_5();
    sub_1C90649EC();
    v42 = v84;
    v44 = v85;
    v46 = v86;
    v38 = v83;
    v40 = v87;
    v34 = v89;
    v36 = v88;
    v32 = v90;
    memset(v81, 0, sizeof(v81));
    v82 = 0;
    sub_1C8D16D78(v81, &qword_1EC312F38, &qword_1C906A360);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312F50, &qword_1C906A370);
    sub_1C8D169BC(&qword_1EC312F58, &qword_1EC312F50, &qword_1C906A370, sub_1C8D168BC);
    sub_1C90649EC();
    v28 = v50[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312F68, &qword_1C906A378);
    sub_1C8D169BC(&qword_1EC312F70, &qword_1EC312F68, &qword_1C906A378, sub_1C8D16910);
    OUTLINED_FUNCTION_1_10();
    v27 = v50[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312F80, &qword_1C906A380);
    sub_1C8D169BC(&qword_1EC312F88, &qword_1EC312F80, &qword_1C906A380, sub_1C8D16968);
    OUTLINED_FUNCTION_1_10();
    v10 = v50[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312F98, &qword_1C906A388);
    LOBYTE(v49[0]) = 5;
    sub_1C8D169BC(&qword_1EC312FA0, &qword_1EC312F98, &qword_1C906A388, sub_1C8D16A38);
    OUTLINED_FUNCTION_1_10();
    v11 = v50[0];
    v99 = 6;
    sub_1C8D16A8C();
    OUTLINED_FUNCTION_4_5();
    sub_1C90649EC();
    v12 = OUTLINED_FUNCTION_0_2();
    v13(v12);
    v14 = v72;
    v15 = v73;
    v16 = v75;
    v23 = v75;
    v24 = v72;
    v25 = v77;
    v26 = v74;
    v17 = v78;
    v21 = v76;
    v22 = v78;
    v19 = v80;
    v20 = v79;
    memset(v47, 0, sizeof(v47));
    v48 = 0;
    sub_1C8D16D78(v47, &qword_1EC312F40, &qword_1C906A368);
    v49[0] = v95;
    v49[1] = v96;
    v49[2] = v97;
    v49[3] = v98;
    *&v49[4] = v38;
    *(&v49[4] + 1) = v42;
    v49[5] = v44;
    *&v49[6] = v46;
    *(&v49[6] + 1) = v40;
    *&v49[7] = v36;
    *(&v49[7] + 1) = v34;
    *&v49[8] = v32;
    *(&v49[8] + 1) = v28;
    *&v49[9] = v27;
    *(&v49[9] + 1) = v10;
    *&v49[10] = v11;
    *(&v49[10] + 1) = v14;
    *&v49[11] = v15;
    *(&v49[11] + 1) = v26;
    *&v49[12] = v16;
    *(&v49[12] + 1) = v21;
    *&v49[13] = v25;
    *(&v49[13] + 1) = v17;
    *&v49[14] = v20;
    *(&v49[14] + 1) = v19;
    memcpy(v29, v49, 0xF0uLL);
    sub_1C8D16AE0(v49, v50);
    __swift_destroy_boxed_opaque_existential_1(v30);
    OUTLINED_FUNCTION_10_4();
    v51 = v38;
    v52 = v42;
    v53 = v44;
    v54 = v46;
    v55 = v40;
    v56 = v36;
    v57 = v34;
    v58 = v32;
    v59 = v28;
    v60 = v27;
    v61 = v10;
    v62 = v11;
    v63 = v24;
    v64 = v15;
    v65 = v26;
    v66 = v23;
    v67 = v21;
    v68 = v25;
    v69 = v22;
    v70 = v20;
    v71 = v19;
    return sub_1C8D16B18(v50);
  }
}

uint64_t sub_1C8D15330@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8D148F4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8D15358@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C8D14B44();
  *a1 = result;
  return result;
}

uint64_t sub_1C8D15380(uint64_t a1)
{
  v2 = sub_1C8D1676C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8D153BC(uint64_t a1)
{
  v2 = sub_1C8D1676C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8D15410(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C8D16B48();

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

uint64_t sub_1C8D15484@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312FC0, &unk_1C906A390) - 8) + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v152 - v7;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312528, &unk_1C9066960) - 8) + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v152 - v11;
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312788, &unk_1C906A3A0) - 8) + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v14);
  v166 = (v152 - v15);
  v16 = type metadata accessor for EnumerationCaseRecord();
  v183 = OUTLINED_FUNCTION_11(v16);
  v184 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v183);
  v21 = v152 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = v152 - v23;
  v25 = type metadata accessor for EnumerationCaseDefinition(0);
  v26 = OUTLINED_FUNCTION_11(v25);
  v179 = v27;
  v180 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v167 = v152 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v181 = v152 - v32;
  memcpy(v191, a1, 0xF0uLL);
  v33 = v191[2];
  switch(LOBYTE(v191[3]))
  {
    case 1:
      if (v191[2] >> 61)
      {
        goto LABEL_59;
      }

      sub_1C8D16B18(v191);
      LOBYTE(v33) = *(v33 + 16);

      v96 = 0;
      LOBYTE(v90) = 0;
      v95 = 0;
      v94 = 0;
      goto LABEL_110;
    case 2:
      if (!v191[9])
      {
        goto LABEL_73;
      }

      v97 = v191[17];
      if (!v191[17])
      {
        sub_1C8D16B9C();
        OUTLINED_FUNCTION_6_3();
        v113 = 1;
        goto LABEL_78;
      }

      v98 = v191[19];
      if (!v191[19])
      {
        sub_1C8D16B9C();
        OUTLINED_FUNCTION_6_3();
        v113 = 3;
        goto LABEL_78;
      }

      LODWORD(v178) = LOBYTE(v191[6]);
      v155 = v191[7];
      v156 = v2;
      v179 = v191[5];
      v180 = v191[12];
      v8 = v191[13];
      v154 = v191[14];
      a1 = v191[15];
      v157 = v191[16];
      v158 = v191[15];
      v99 = *(v191[17] + 16);
      v181 = v191[13];
      v160 = a2;
      v161 = v191[2];
      v183 = v191[19];
      if (v99)
      {
        sub_1C8CC0620(&v191[8], &v187, &qword_1EC312F38, &qword_1C906A360);
        *&v187 = MEMORY[0x1E69E7CC0];

        sub_1C8D09884(0, v99, 0);
        v100 = v97;
        v12 = v187;
        v182 = v100;
        v101 = (v100 + 64);
        do
        {
          v102 = *(v101 - 2);
          v103 = *(v101 - 1);
          v104 = *v101;
          v105 = v101[8];
          v184 = v101[7];
          v185 = v102;
          *&v187 = v12;
          v106 = v12;
          v107 = *(v12 + 2);
          v108 = *(v106 + 3);

          if (v107 >= v108 >> 1)
          {
            sub_1C8D09884((v108 > 1), v107 + 1, 1);
            v106 = v187;
          }

          *(v106 + 2) = v107 + 1;
          v109 = &v106[40 * v107];
          v110 = v184;
          *(v109 + 4) = v185;
          *(v109 + 5) = v103;
          *(v109 + 6) = v110;
          *(v109 + 7) = v105;
          *(v109 + 8) = v104;
          v101 += 13;
          --v99;
          v12 = v106;
        }

        while (v99);

        a2 = v160;
        a1 = v158;
        v8 = v181;
        v98 = v183;
      }

      else
      {
        sub_1C8CC0620(&v191[8], &v187, &qword_1EC312F38, &qword_1C906A360);

        v12 = MEMORY[0x1E69E7CC0];
      }

      v130 = *(v98 + 2);
      v182 = v12;
      if (v130)
      {
        *&v187 = MEMORY[0x1E69E7CC0];
        sub_1C8D09834(0, v130, 0);
        v131 = 0;
        v132 = v187;
        v133 = *(v187 + 16);
        v134 = 16 * v133;
        do
        {
          v135 = *&v183[v131 + 12];
          v136 = v183[v131 + 14];
          *&v187 = v132;
          v137 = *(v132 + 24);

          if (v133 >= v137 >> 1)
          {
            sub_1C8D09834((v137 > 1), v133 + 1, 1);
            v132 = v187;
          }

          *(v132 + 16) = v133 + 1;
          v138 = v132 + v134;
          *(v138 + 32) = v135;
          *(v138 + 40) = v136;
          v134 += 16;
          v131 += 8;
          ++v133;
          --v130;
        }

        while (v130);
        v153 = v132;

        a2 = v160;
        a1 = v158;
        v8 = v181;
        v12 = v182;
      }

      else
      {

        v153 = MEMORY[0x1E69E7CC0];
      }

      sub_1C8D16D78(&v191[8], &qword_1EC312F38, &qword_1C906A360);
      v139 = v179;
      if (v178)
      {
        v139 = 0;
      }

      v140 = v191[20];
      v185 = v139;
      if (v191[20])
      {
        v141 = *(v191[20] + 16);
        if (v141)
        {
          v192 = MEMORY[0x1E69E7CC0];

          OUTLINED_FUNCTION_14_6();
          a1 = v158;
          v142 = v192;
          v143 = v140 + 88;
          for (i = v141 - 1; ; --i)
          {
            OUTLINED_FUNCTION_11_2(*v143, *(v143 + 16), *(v143 + 32), *(v143 + 41));
            sub_1C8CC0620(&v187, v186, &qword_1EC312FD8, &qword_1C906B500);
            v145 = v142;
            v192 = v142;
            v146 = *(v142 + 2);
            if (v146 >= *(v142 + 3) >> 1)
            {
              sub_1C8D098A4();
              a1 = v158;
              v145 = v192;
            }

            *(v145 + 2) = v146 + 1;
            v142 = v145;
            v147 = &v145[64 * v146];
            v148 = v187;
            v149 = v188;
            v150 = v189[0];
            *(v147 + 73) = *(v189 + 9);
            *(v147 + 3) = v149;
            *(v147 + 4) = v150;
            *(v147 + 2) = v148;
            if (!i)
            {
              break;
            }

            v143 += 120;
          }

          result = sub_1C8D16B18(v191);
          v151 = v155;
          a2 = v160;
          v21 = v142;
          v8 = v181;
          v12 = v182;
        }

        else
        {
          v151 = v155;

          result = sub_1C8D16B18(v191);
          v21 = MEMORY[0x1E69E7CC0];
          a2 = v160;
        }
      }

      else
      {
        v151 = v155;

        result = sub_1C8D16B18(v191);
        v21 = MEMORY[0x1E69E7CC0];
      }

      LOBYTE(v33) = v161;
      v94 = v161 & 0xFFFFFFFFFFFFFF00;
      if (v151)
      {
        v90 = v151;
      }

      else
      {
        v90 = MEMORY[0x1E69E7CC0];
      }

      v95 = v90 & 0xFFFFFFFFFFFFFF00;
      v96 = 1;
      v88 = v153;
      v93 = v154;
      v92 = v157;
      v91 = v180;
      v89 = v185;
      goto LABEL_110;
    case 3:
    case 4:
    case 5:
    case 8:
      if (!v191[9])
      {
        sub_1C8D16B18(v191);
        sub_1C8D16B9C();
        OUTLINED_FUNCTION_6_3();
        *v81 = 0;
        return swift_willThrow();
      }

      if (!v191[18])
      {
        sub_1C8D16B18(v191);
        sub_1C8D16B9C();
        OUTLINED_FUNCTION_6_3();
        *v114 = 2;
        return swift_willThrow();
      }

      v159 = LOBYTE(v191[3]);
      v165 = v24;
      v155 = v191[7];
      v156 = v2;
      a1 = v191[13];
      v157 = v191[14];
      v152[0] = v191[15];
      v153 = v191[16];
      v154 = v191[12];
      v34 = *(v191[18] + 16);
      if (v34)
      {
        v168 = v12;
        v164 = v8;
        v158 = v191[13];
        v160 = a2;
        v35 = v191[18];
        sub_1C8CC0620(&v191[8], &v187, &qword_1EC312F38, &qword_1C906A360);
        *&v187 = MEMORY[0x1E69E7CC0];
        v161 = v33;

        v185 = v34;
        sub_1C8CB2580(0, v34, 0);
        v36 = *(v184 + 80);
        v152[1] = v35;
        v37 = v35 + ((v36 + 32) & ~v36);
        v12 = v187;
        v169 = *(v184 + 72);
        v38 = v165;
        v39 = v167;
        do
        {
          sub_1C8D16BF0(v37, v38);
          sub_1C8D16BF0(v38, v21);
          v40 = *(v21 + 5);
          *v39 = *(v21 + 4);
          v39[1] = v40;
          if (*(v21 + 7))
          {
            v184 = *(v21 + 7);
            v182 = v12;
            v41 = *(v21 + 6);
            v42 = *(v21 + 8);
            v43 = *(v21 + 9);
            v44 = v21[80];
            v45 = v44 & 1;
            if (v44 == 255)
            {
              v46 = 0;
            }

            else
            {
              v46 = *(v21 + 8);
            }

            v177 = v46;
            v178 = v41;
            if (v44 == 255)
            {
              v47 = 0;
            }

            else
            {
              v47 = v43;
            }

            v176 = v47;
            if (v44 == 255)
            {
              v45 = -1;
            }

            v175 = v45;
            v48 = *(v21 + 11);
            v49 = *(v21 + 12);
            v50 = v21[104];
            v51 = v50 & 1;
            v170 = v49;
            v171 = v48;
            if (v50 == 255)
            {
              v52 = 0;
            }

            else
            {
              v52 = v48;
            }

            if (v50 == 255)
            {
              v53 = 0;
            }

            else
            {
              v53 = v49;
            }

            v173 = v53;
            v174 = v52;
            if (v50 == 255)
            {
              v51 = -1;
            }

            v172 = v51;
            v54 = v164;
            sub_1C8CC0620(&v21[v183[10]], v164, &qword_1EC312FC0, &unk_1C906A390);
            v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312FE0, &unk_1C906A3B0);
            if (__swift_getEnumTagSinglePayload(v54, 1, v55) == 1)
            {

              sub_1C8CD3AA0(v42, v43, v44);
              sub_1C8CD3AA0(v171, v170, v50);
              sub_1C8D16D78(v54, &qword_1EC312FC0, &unk_1C906A390);
              v56 = 1;
            }

            else
            {
              v162 = v43;
              v163 = v42;
              sub_1C8CC0620(v54, v168, &qword_1EC312530, &unk_1C9090E80);

              sub_1C8CD3AA0(v163, v162, v44);
              sub_1C8CD3AA0(v171, v170, v50);
              sub_1C8D16D78(v54, &qword_1EC312FE0, &unk_1C906A3B0);
              v56 = 0;
            }

            v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312530, &unk_1C9090E80);
            v60 = v168;
            __swift_storeEnumTagSinglePayload(v168, v56, 1, v59);
            v61 = v183[12];
            v62 = &v21[v183[11]];
            v63 = *v62;
            v64 = v62[1];
            v65 = v62[2];
            v66 = v62[3];
            if (v66)
            {
              v67 = *v62;
            }

            else
            {
              v67 = 0;
            }

            if (v66)
            {
              v68 = v62[1];
            }

            else
            {
              v68 = 0;
            }

            v170 = v68;
            v171 = v67;
            if (v66)
            {
              v69 = v65;
            }

            else
            {
              v69 = 0;
            }

            v70 = *&v21[v61];
            sub_1C8CE9E30(v63, v64, v65, v66);

            sub_1C8D16C54(v21);
            v71 = v166;
            v72 = v184;
            *v166 = v178;
            *(v71 + 8) = v72;
            v73 = v176;
            *(v71 + 16) = v177;
            *(v71 + 24) = v73;
            *(v71 + 32) = v175;
            v74 = v173;
            *(v71 + 40) = v174;
            *(v71 + 48) = v74;
            *(v71 + 56) = v172;
            v75 = type metadata accessor for DisplayRepresentation(0);
            sub_1C8CB21F4(v60, v71 + v75[7], &qword_1EC312528, &unk_1C9066960);
            v76 = (v71 + v75[8]);
            v77 = v170;
            *v76 = v171;
            v76[1] = v77;
            v76[2] = v69;
            v76[3] = v66;
            *(v71 + v75[9]) = v70;
            __swift_storeEnumTagSinglePayload(v71, 0, 1, v75);
            v39 = v167;
            sub_1C8CB21F4(v71, &v167[*(v180 + 20)], &qword_1EC312788, &unk_1C906A3A0);
            v12 = v182;
            v38 = v165;
          }

          else
          {

            sub_1C8D16C54(v21);
            v57 = *(v180 + 20);
            v58 = type metadata accessor for DisplayRepresentation(0);
            __swift_storeEnumTagSinglePayload(v39 + v57, 1, 1, v58);
          }

          v78 = v181;
          sub_1C8D16CB0(v39, v181);
          sub_1C8D16C54(v38);
          *&v187 = v12;
          v80 = *(v12 + 2);
          v79 = *(v12 + 3);
          if (v80 >= v79 >> 1)
          {
            sub_1C8CB2580(v79 > 1, v80 + 1, 1);
            v78 = v181;
            v12 = v187;
          }

          *(v12 + 2) = v80 + 1;
          sub_1C8D16CB0(v78, &v12[((*(v179 + 80) + 32) & ~*(v179 + 80)) + *(v179 + 72) * v80]);
          v37 += v169;
          --v185;
        }

        while (v185);

        a2 = v160;
        v33 = v161;
        a1 = v158;
      }

      else
      {
        sub_1C8CC0620(&v191[8], &v187, &qword_1EC312F38, &qword_1C906A360);

        v12 = MEMORY[0x1E69E7CC0];
      }

      if (v159 - 3) < 6 && ((0x27u >> (v159 - 3)))
      {
        v161 = v33;
        v115 = v191[20];
        v185 = byte_1C906A8F8[8 * (v159 - 3)];
        if (v191[20])
        {
          v160 = a2;
          v116 = *(v191[20] + 16);
          if (v116)
          {
            v117 = v12;
            v192 = MEMORY[0x1E69E7CC0];
            v158 = a1;
            OUTLINED_FUNCTION_14_6();
            a1 = v158;
            v118 = v115 + 88;
            do
            {
              OUTLINED_FUNCTION_11_2(*v118, *(v118 + 16), *(v118 + 32), *(v118 + 41));
              v120 = v119;
              sub_1C8CC0620(&v187, v186, &qword_1EC312FD8, &qword_1C906B500);
              v121 = v120;
              v192 = v120;
              v122 = *(v120 + 2);
              if (v122 >= *(v120 + 3) >> 1)
              {
                sub_1C8D098A4();
                a1 = v158;
                v121 = v192;
              }

              *(v121 + 16) = v122 + 1;
              v123 = (v121 + (v122 << 6));
              v124 = v187;
              v125 = v188;
              v126 = v189[0];
              *(v123 + 73) = *(v189 + 9);
              v123[3] = v125;
              v123[4] = v126;
              v123[2] = v124;
              v118 += 120;
              --v116;
            }

            while (v116);
            v180 = v121;
            a2 = v160;
            v12 = v117;
          }

          else
          {
            v180 = MEMORY[0x1E69E7CC0];
            a2 = v160;
          }
        }

        else
        {
          v180 = MEMORY[0x1E69E7CC0];
        }

        v33 = v161;
        if (v155)
        {
          v128 = v155;
        }

        else
        {
          v128 = MEMORY[0x1E69E7CC0];
        }

        sub_1C8D16B18(v191);
        v21 = v152[0];

        v129 = v153;

        result = sub_1C8D16D78(&v191[8], &qword_1EC312F38, &qword_1C906A360);
        v88 = v129;
        v95 = 0;
        v94 = v33 & 0xFFFFFFFFFFFFFF00;
        v96 = 2;
        v8 = v128;
        v93 = v154;
        v92 = v157;
        v91 = v180;
        LOBYTE(v90) = v185;
LABEL_110:
        *a2 = v94 | v33;
        *(a2 + 8) = v12;
        *(a2 + 16) = v95 | v90;
        *(a2 + 24) = v91;
        *(a2 + 32) = v8;
        *(a2 + 40) = v93;
        *(a2 + 48) = a1;
        *(a2 + 56) = v92;
        *(a2 + 64) = v21;
        *(a2 + 72) = v88;
        *(a2 + 80) = 0;
        *(a2 + 88) = v89;
        *(a2 + 96) = v96;
      }

      else
      {

        sub_1C8D16D78(&v191[8], &qword_1EC312F38, &qword_1C906A360);
        sub_1C8D16D14();
        OUTLINED_FUNCTION_6_3();
        swift_willThrow();

        return sub_1C8D16B18(v191);
      }

      return result;
    case 6:
      if (v191[22])
      {
        v160 = a2;
        v161 = v191[2];
        v187 = *&v191[21];
        v82 = *(a1 + 200);
        v188 = *(a1 + 184);
        v189[0] = v82;
        v189[1] = *(a1 + 216);
        v190 = *(a1 + 232);
        OUTLINED_FUNCTION_12_3();
        OUTLINED_FUNCTION_12_3();

        sub_1C8D16530(&v187, v186);
        v83 = v186[1];
        v182 = v186[0];
        v85 = v186[2];
        v84 = v186[3];
        v86 = v186[4];
        a1 = v186[5];
        v33 = v186[6];
        sub_1C8D16B18(v191);
        a2 = v160;
        result = sub_1C8D16D78(&v191[21], &qword_1EC312F40, &qword_1C906A368);
        LOBYTE(v90) = v83;
        v91 = v85;
        v92 = v33;
        v93 = v86;
        v8 = v84;
        LOBYTE(v33) = v161;
        v94 = v161 & 0xFFFFFFFFFFFFFF00;
        v95 = v83 & 0xFFFFFFFFFFFFFF00;
        v96 = 3;
        v21 = MEMORY[0x1E69E7CC0];
        v12 = v182;
        goto LABEL_110;
      }

      sub_1C8D16B9C();
      OUTLINED_FUNCTION_6_3();
      v113 = 5;
      goto LABEL_78;
    case 7:
      if (v191[2] >> 61 == 4)
      {
        if (v191[9])
        {
          a1 = v191[16];
          v21 = v191[15];
          v181 = v191[14];
          v111 = v191[13];
          v185 = v191[12];
          v33 = *((v191[2] & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          v12 = *((v191[2] & 0x1FFFFFFFFFFFFFFFLL) + 0x18);

          sub_1C8CC0620(&v191[8], &v187, &qword_1EC312F38, &qword_1C906A360);
          sub_1C8D16B18(v191);

          v8 = v181;
          result = sub_1C8D16D78(&v191[8], &qword_1EC312F38, &qword_1C906A360);
          LOBYTE(v90) = v185;
          v91 = v111;
          v93 = v21;
          v94 = v33 & 0xFFFFFFFFFFFFFF00;
          v95 = v185 & 0xFFFFFFFFFFFFFF00;
          v96 = 4;
          goto LABEL_110;
        }

LABEL_73:
        sub_1C8D16B9C();
        OUTLINED_FUNCTION_6_3();
        *v127 = 0;
      }

      else
      {
LABEL_59:
        sub_1C8D16B9C();
        OUTLINED_FUNCTION_6_3();
        v113 = 7;
LABEL_78:
        *v112 = v113;
      }

      swift_willThrow();
      return sub_1C8D16B18(v191);
    default:
      sub_1C8D16B9C();
      OUTLINED_FUNCTION_6_3();
      v113 = 6;
      goto LABEL_78;
  }
}

ToolKit::EntityDefinition::RuntimeFlags __swiftcall EntityDefinition.RuntimeFlags.init(rawValue:)(Swift::Int_optional rawValue)
{
  if (rawValue.is_nil)
  {
    value = 0;
  }

  else
  {
    value = rawValue.value;
  }

  *v1 = value;
  return rawValue.value;
}

uint64_t sub_1C8D16530@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v20 = *(a1 + 24);
  v19 = *(a1 + 25);
  v18 = *(a1 + 26);
  v17 = *(a1 + 27);
  if ((~v5 & 0xF000000000000007) != 0)
  {
    v8 = *(a1 + 32);
  }

  else
  {
    v8 = 0xF000000000000007;
  }

  v16 = *(a1 + 28);
  if (v7)
  {
    v9 = *(a1 + 40);
  }

  else
  {
    v9 = 0;
  }

  if (v7)
  {
    v10 = *(a1 + 56);
  }

  else
  {
    v10 = 0;
  }

  if (v7)
  {
    v11 = *(a1 + 64);
  }

  else
  {
    v11 = 0;
  }

  v13 = v11;
  v14 = v8;
  v15 = *(a1 + 29);
  sub_1C8D16DD0(v6, v7);

  sub_1C8CD1784(v5);

  sub_1C8CD0FB0(v5);
  result = sub_1C8D16E14(v6, v7);
  *a2 = v3;
  *(a2 + 8) = v20;
  *(a2 + 9) = v19;
  *(a2 + 10) = v18;
  *(a2 + 11) = v17;
  *(a2 + 12) = v16;
  *(a2 + 13) = v15;
  *(a2 + 16) = v9;
  *(a2 + 24) = v7;
  *(a2 + 32) = v10;
  *(a2 + 40) = v13;
  *(a2 + 48) = v14;
  return result;
}

uint64_t get_enum_tag_for_layout_string_7ToolKit0A21DatabaseProtobufValueVyAA0E15SearchPredicateV8TemplateVGSg(void *a1)
{
  v1 = ((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7));
  v2 = v1 ^ 0x7F;
  v3 = 128 - v1;
  if (v2 >= 0x79)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1C8D166A4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 240))
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

uint64_t sub_1C8D166E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 240) = 1;
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

    *(result + 240) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1C8D1676C()
{
  result = qword_1EC312F30;
  if (!qword_1EC312F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC312F30);
  }

  return result;
}

unint64_t sub_1C8D16814()
{
  result = qword_1EDA66AF8;
  if (!qword_1EDA66AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA66AF8);
  }

  return result;
}

unint64_t sub_1C8D16868()
{
  result = qword_1EC312F48;
  if (!qword_1EC312F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC312F48);
  }

  return result;
}

unint64_t sub_1C8D168BC()
{
  result = qword_1EC312F60;
  if (!qword_1EC312F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC312F60);
  }

  return result;
}

unint64_t sub_1C8D16910()
{
  result = qword_1EC312F78;
  if (!qword_1EC312F78)
  {
    type metadata accessor for EnumerationCaseRecord();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC312F78);
  }

  return result;
}

unint64_t sub_1C8D16968()
{
  result = qword_1EC312F90;
  if (!qword_1EC312F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC312F90);
  }

  return result;
}

uint64_t sub_1C8D169BC(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C8D16A38()
{
  result = qword_1EC312FA8;
  if (!qword_1EC312FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC312FA8);
  }

  return result;
}

unint64_t sub_1C8D16A8C()
{
  result = qword_1EC312FB0;
  if (!qword_1EC312FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC312FB0);
  }

  return result;
}

unint64_t sub_1C8D16B48()
{
  result = qword_1EC312FB8;
  if (!qword_1EC312FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC312FB8);
  }

  return result;
}

unint64_t sub_1C8D16B9C()
{
  result = qword_1EC312FC8;
  if (!qword_1EC312FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC312FC8);
  }

  return result;
}

uint64_t sub_1C8D16BF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EnumerationCaseRecord();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C8D16C54(uint64_t a1)
{
  v2 = type metadata accessor for EnumerationCaseRecord();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C8D16CB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EnumerationCaseDefinition(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C8D16D14()
{
  result = qword_1EC312FD0;
  if (!qword_1EC312FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC312FD0);
  }

  return result;
}

uint64_t sub_1C8D16D68(uint64_t a1, unint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    return sub_1C8CE9144(a1, a2);
  }
}

uint64_t sub_1C8D16D78(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_13_1(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_1C8D16DD0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1C8D16E14(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

_BYTE *_s5ErrorOwst(_BYTE *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for EntityDefinition.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *sub_1C8D16F8C(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for FetchedType.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
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

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for FetchedType.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C8D171C8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_1C8D17208(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1C8D17270()
{
  result = qword_1EC312FE8;
  if (!qword_1EC312FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC312FE8);
  }

  return result;
}

unint64_t sub_1C8D172C8()
{
  result = qword_1EC312FF0;
  if (!qword_1EC312FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC312FF0);
  }

  return result;
}

unint64_t sub_1C8D17320()
{
  result = qword_1EC312FF8;
  if (!qword_1EC312FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC312FF8);
  }

  return result;
}

unint64_t sub_1C8D17378()
{
  result = qword_1EC313000;
  if (!qword_1EC313000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313000);
  }

  return result;
}

unint64_t sub_1C8D173D0()
{
  result = qword_1EC313008;
  if (!qword_1EC313008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313008);
  }

  return result;
}

unint64_t sub_1C8D17424()
{
  result = qword_1EC313018;
  if (!qword_1EC313018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313018);
  }

  return result;
}

unint64_t sub_1C8D17478()
{
  result = qword_1EC313020;
  if (!qword_1EC313020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313020);
  }

  return result;
}

unint64_t sub_1C8D174CC()
{
  result = qword_1EC313028;
  if (!qword_1EC313028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313028);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FetchedType.FetchedEntityProperty.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C8D17668()
{
  result = qword_1EC313030;
  if (!qword_1EC313030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313030);
  }

  return result;
}

unint64_t sub_1C8D176C0()
{
  result = qword_1EC313038;
  if (!qword_1EC313038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313038);
  }

  return result;
}

unint64_t sub_1C8D17718()
{
  result = qword_1EC313040;
  if (!qword_1EC313040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313040);
  }

  return result;
}

uint64_t sub_1C8D17790()
{
  if (qword_1EDA6D908 != -1)
  {
    OUTLINED_FUNCTION_6_4();
  }

  v0 = sub_1C9061EBC();

  return __swift_project_value_buffer(v0, qword_1EDA6D910);
}

uint64_t ToolDatabase.Pager.CleanupSchedule.hashValue.getter()
{
  v1 = *v0;
  sub_1C9064D7C();
  MEMORY[0x1CCA82810](v1);
  return sub_1C9064DBC();
}

void *sub_1C8D17878()
{
  v0 = sub_1C9061EBC();
  __swift_allocate_value_buffer(v0, qword_1EDA6D910);
  v1 = OUTLINED_FUNCTION_94();
  v3 = __swift_project_value_buffer(v1, v2);
  return sub_1C8D178C0(v3);
}

void *sub_1C8D178C0@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v1 = sub_1C9061D9C();
  v2 = *(v1 - 8);
  v3 = v2[8];
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312700, &qword_1C9066AC0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v28 - v8;
  v10 = sub_1C9061EBC();
  v36 = *(v10 - 8);
  v11 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v35 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v34 = &v28 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v28 - v16;
  result = CPSharedResourcesDirectory();
  if (result)
  {
    v19 = result;
    sub_1C9063EEC();

    v32 = v10;
    __swift_storeEnumTagSinglePayload(v9, 1, 1, v10);
    v20 = v2[13];
    v21 = v1;
    v20(v5, *MEMORY[0x1E6968F70], v1);
    v33 = v17;
    sub_1C9061E8C();
    v38 = 0x7972617262694CLL;
    v39 = 0xE700000000000000;
    v30 = *MEMORY[0x1E6968F58];
    v22 = v30;
    v20(v5, v30, v1);
    v31 = v20;
    sub_1C8CBAEDC();
    v23 = v35;
    sub_1C9061E9C();
    v24 = v2[1];
    v24(v5, v1);
    v29 = v24;
    v38 = 0x74756374726F6853;
    v39 = 0xE900000000000073;
    v20(v5, v22, v1);
    v25 = v34;
    sub_1C9061E9C();
    v24(v5, v1);
    v26 = v32;
    v27 = *(v36 + 8);
    v27(v23, v32);
    v38 = 0x74694B6C6F6F54;
    v39 = 0xE700000000000000;
    v31(v5, v30, v21);
    sub_1C9061E9C();
    v29(v5, v21);
    v27(v25, v26);
    return (v27)(v33, v26);
  }

  else
  {
    __break(1u);
  }

  return result;
}