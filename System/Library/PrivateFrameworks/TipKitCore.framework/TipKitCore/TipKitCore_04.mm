_BYTE *storeEnumTagSinglePayload for ConstellationDeliveryInfo.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1975B18F8(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 8))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1975B194C(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t _s8CategoryOwet(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *sub_1975B1A30(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_1975B1B28(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_35_1(-1);
  }

  if (a2 < 0 && *(a1 + 9))
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

  return OUTLINED_FUNCTION_35_1(v2);
}

void *sub_1975B1B64(void *result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

      return OUTLINED_FUNCTION_34_0(result, a2);
    }

    *(result + 9) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_34_0(result, a2);
    }
  }

  return result;
}

uint64_t sub_1975B1BBC(uint64_t a1, int a2)
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

uint64_t sub_1975B1BFC(uint64_t result, int a2, int a3)
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

unint64_t sub_1975B1C4C()
{
  result = qword_1EAF347E8;
  if (!qword_1EAF347E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF347E8);
  }

  return result;
}

unint64_t sub_1975B1CA4()
{
  result = qword_1EAF347F0;
  if (!qword_1EAF347F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF347F0);
  }

  return result;
}

unint64_t sub_1975B1CFC()
{
  result = qword_1EAF347F8;
  if (!qword_1EAF347F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF347F8);
  }

  return result;
}

unint64_t sub_1975B1D54()
{
  result = qword_1EAF34800;
  if (!qword_1EAF34800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF34800);
  }

  return result;
}

unint64_t sub_1975B1DAC()
{
  result = qword_1EAF34808;
  if (!qword_1EAF34808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF34808);
  }

  return result;
}

unint64_t sub_1975B1E04()
{
  result = qword_1EAF34810;
  if (!qword_1EAF34810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF34810);
  }

  return result;
}

unint64_t sub_1975B1E5C()
{
  result = qword_1EAF34818;
  if (!qword_1EAF34818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF34818);
  }

  return result;
}

unint64_t sub_1975B1EB4()
{
  result = qword_1EAF340D0;
  if (!qword_1EAF340D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF340D0);
  }

  return result;
}

unint64_t sub_1975B1F0C()
{
  result = qword_1EAF340D8;
  if (!qword_1EAF340D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF340D8);
  }

  return result;
}

unint64_t sub_1975B1F64()
{
  result = qword_1EAF33F38;
  if (!qword_1EAF33F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF33F38);
  }

  return result;
}

unint64_t sub_1975B1FBC()
{
  result = qword_1EAF33F40;
  if (!qword_1EAF33F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF33F40);
  }

  return result;
}

unint64_t sub_1975B2014()
{
  result = qword_1EAF34088;
  if (!qword_1EAF34088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF34088);
  }

  return result;
}

unint64_t sub_1975B206C()
{
  result = qword_1EAF34090;
  if (!qword_1EAF34090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF34090);
  }

  return result;
}

unint64_t sub_1975B20C4()
{
  result = qword_1EAF33FE8;
  if (!qword_1EAF33FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF33FE8);
  }

  return result;
}

unint64_t sub_1975B211C()
{
  result = qword_1EAF33FF0;
  if (!qword_1EAF33FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF33FF0);
  }

  return result;
}

unint64_t sub_1975B2174()
{
  result = qword_1EAF34170;
  if (!qword_1EAF34170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF34170);
  }

  return result;
}

unint64_t sub_1975B21CC()
{
  result = qword_1EAF34178;
  if (!qword_1EAF34178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF34178);
  }

  return result;
}

unint64_t sub_1975B2224()
{
  result = qword_1EAF33FC8;
  if (!qword_1EAF33FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF33FC8);
  }

  return result;
}

unint64_t sub_1975B227C()
{
  result = qword_1EAF33FD0;
  if (!qword_1EAF33FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF33FD0);
  }

  return result;
}

unint64_t sub_1975B22D0()
{
  result = qword_1EAF340B8;
  if (!qword_1EAF340B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF340B8);
  }

  return result;
}

unint64_t sub_1975B2324()
{
  result = qword_1EAF33F80;
  if (!qword_1EAF33F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF33F80);
  }

  return result;
}

unint64_t sub_1975B2378()
{
  result = qword_1EAF33F78;
  if (!qword_1EAF33F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF33F78);
  }

  return result;
}

unint64_t sub_1975B23CC()
{
  result = qword_1EAF33F30;
  if (!qword_1EAF33F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF33F30);
  }

  return result;
}

unint64_t sub_1975B2420()
{
  result = qword_1EAF34148;
  if (!qword_1EAF34148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF34148);
  }

  return result;
}

unint64_t sub_1975B2474()
{
  result = qword_1EAF34128;
  if (!qword_1EAF34128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF34128);
  }

  return result;
}

unint64_t sub_1975B24C8()
{
  result = qword_1EAF34188;
  if (!qword_1EAF34188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF34188);
  }

  return result;
}

unint64_t sub_1975B251C()
{
  result = qword_1EAF33FB8;
  if (!qword_1EAF33FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF33FB8);
  }

  return result;
}

unint64_t sub_1975B2570()
{
  result = qword_1ED816728;
  if (!qword_1ED816728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF34398, &qword_197618398);
    sub_19756BBB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816728);
  }

  return result;
}

unint64_t sub_1975B25FC()
{
  result = qword_1EAF33F58;
  if (!qword_1EAF33F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF33F58);
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

uint64_t sub_1975B26B4(uint64_t a1, int a2)
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

uint64_t sub_1975B26F4(uint64_t result, int a2, int a3)
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

uint64_t sub_1975B2740(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_35_1(-1);
  }

  if (a2 < 0 && *(a1 + 152))
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

  return OUTLINED_FUNCTION_35_1(v2);
}

void *sub_1975B277C(void *result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 17) = 0u;
    *(result + 15) = 0u;
    *(result + 13) = 0u;
    *(result + 11) = 0u;
    *(result + 9) = 0u;
    *(result + 7) = 0u;
    *(result + 5) = 0u;
    *(result + 3) = 0u;
    *(result + 1) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 152) = 1;
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

      return OUTLINED_FUNCTION_34_0(result, a2);
    }

    *(result + 152) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_34_0(result, a2);
    }
  }

  return result;
}

unint64_t sub_1975B27E8()
{
  result = qword_1EAF34858;
  if (!qword_1EAF34858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF34858);
  }

  return result;
}

unint64_t sub_1975B2840()
{
  result = qword_1EAF34860;
  if (!qword_1EAF34860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF34860);
  }

  return result;
}

unint64_t sub_1975B2898()
{
  result = qword_1EAF34868;
  if (!qword_1EAF34868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF34868);
  }

  return result;
}

unint64_t sub_1975B28F0()
{
  result = qword_1EAF34870;
  if (!qword_1EAF34870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF34870);
  }

  return result;
}

unint64_t sub_1975B2948()
{
  result = qword_1EAF34878;
  if (!qword_1EAF34878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF34878);
  }

  return result;
}

unint64_t sub_1975B29A0()
{
  result = qword_1EAF33FA8;
  if (!qword_1EAF33FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF33FA8);
  }

  return result;
}

unint64_t sub_1975B29F8()
{
  result = qword_1EAF33FB0;
  if (!qword_1EAF33FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF33FB0);
  }

  return result;
}

unint64_t sub_1975B2A50()
{
  result = qword_1EAF34118;
  if (!qword_1EAF34118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF34118);
  }

  return result;
}

unint64_t sub_1975B2AA8()
{
  result = qword_1EAF34120;
  if (!qword_1EAF34120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF34120);
  }

  return result;
}

unint64_t sub_1975B2B00()
{
  result = qword_1EAF34138;
  if (!qword_1EAF34138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF34138);
  }

  return result;
}

unint64_t sub_1975B2B58()
{
  result = qword_1EAF34140;
  if (!qword_1EAF34140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF34140);
  }

  return result;
}

unint64_t sub_1975B2BB0()
{
  result = qword_1EAF33F68;
  if (!qword_1EAF33F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF33F68);
  }

  return result;
}

unint64_t sub_1975B2C08()
{
  result = qword_1EAF33F70;
  if (!qword_1EAF33F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF33F70);
  }

  return result;
}

unint64_t sub_1975B2C60()
{
  result = qword_1EAF340A8;
  if (!qword_1EAF340A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF340A8);
  }

  return result;
}

unint64_t sub_1975B2CB8()
{
  result = qword_1EAF340B0;
  if (!qword_1EAF340B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF340B0);
  }

  return result;
}

unint64_t sub_1975B2D0C()
{
  result = qword_1EAF33F98;
  if (!qword_1EAF33F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF33F98);
  }

  return result;
}

unint64_t sub_1975B2D60()
{
  result = qword_1EAF34080;
  if (!qword_1EAF34080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF34080);
  }

  return result;
}

unint64_t sub_1975B2DB4()
{
  result = qword_1EAF341A0;
  if (!qword_1EAF341A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF341A0);
  }

  return result;
}

unint64_t sub_1975B2E08()
{
  result = qword_1ED816450;
  if (!qword_1ED816450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816450);
  }

  return result;
}

unint64_t sub_1975B2E5C()
{
  result = qword_1EAF340F0;
  if (!qword_1EAF340F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF340F0);
  }

  return result;
}

unint64_t sub_1975B2EB0()
{
  result = qword_1EAF340C8;
  if (!qword_1EAF340C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF340C8);
  }

  return result;
}

unint64_t sub_1975B2F04()
{
  result = qword_1EAF340E8;
  if (!qword_1EAF340E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF340E8);
  }

  return result;
}

uint64_t _s12RecordStatusOwet(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *sub_1975B3048(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = OUTLINED_FUNCTION_32(result, a2 + 3);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1975B3138(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 128))
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

uint64_t sub_1975B3178(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
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
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1975B31F4()
{
  result = qword_1EAF348B0;
  if (!qword_1EAF348B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF348B0);
  }

  return result;
}

unint64_t sub_1975B324C()
{
  result = qword_1EAF348B8;
  if (!qword_1EAF348B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF348B8);
  }

  return result;
}

unint64_t sub_1975B32A4()
{
  result = qword_1EAF34190;
  if (!qword_1EAF34190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF34190);
  }

  return result;
}

unint64_t sub_1975B32FC()
{
  result = qword_1EAF34198;
  if (!qword_1EAF34198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF34198);
  }

  return result;
}

unint64_t sub_1975B3354()
{
  result = qword_1EAF33F88;
  if (!qword_1EAF33F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF33F88);
  }

  return result;
}

unint64_t sub_1975B33AC()
{
  result = qword_1EAF33F90;
  if (!qword_1EAF33F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF33F90);
  }

  return result;
}

unint64_t sub_1975B3400()
{
  result = qword_1EAF34108;
  if (!qword_1EAF34108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF34108);
  }

  return result;
}

uint64_t sub_1975B3454(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_1975B34D0()
{
  result = qword_1EAF34150;
  if (!qword_1EAF34150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF34150);
  }

  return result;
}

unint64_t sub_1975B3524()
{
  result = qword_1EAF348D8;
  if (!qword_1EAF348D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF348D8);
  }

  return result;
}

uint64_t sub_1975B35F0(unsigned __int8 *a1, int a2)
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

  return OUTLINED_FUNCTION_33(a1);
}

_BYTE *sub_1975B363C(_BYTE *result, int a2, int a3)
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

uint64_t sub_1975B36E8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_35_1(-1);
  }

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

  return OUTLINED_FUNCTION_35_1(v2);
}

uint64_t sub_1975B3724(uint64_t result, int a2, int a3)
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

unint64_t sub_1975B3770()
{
  result = qword_1EAF348E0;
  if (!qword_1EAF348E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF348E0);
  }

  return result;
}

unint64_t sub_1975B37C8()
{
  result = qword_1EAF348E8;
  if (!qword_1EAF348E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF348E8);
  }

  return result;
}

unint64_t sub_1975B3820()
{
  result = qword_1EAF348F0;
  if (!qword_1EAF348F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF348F0);
  }

  return result;
}

unint64_t sub_1975B3878()
{
  result = qword_1EAF348F8;
  if (!qword_1EAF348F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF348F8);
  }

  return result;
}

unint64_t sub_1975B38D0()
{
  result = qword_1EAF340F8;
  if (!qword_1EAF340F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF340F8);
  }

  return result;
}

unint64_t sub_1975B3928()
{
  result = qword_1EAF34100;
  if (!qword_1EAF34100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF34100);
  }

  return result;
}

unint64_t sub_1975B397C()
{
  result = qword_1EAF34168;
  if (!qword_1EAF34168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF34168);
  }

  return result;
}

unint64_t sub_1975B39D0()
{
  result = qword_1ED816460;
  if (!qword_1ED816460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816460);
  }

  return result;
}

uint64_t _s7OptionsV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *sub_1975B3AAC(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = OUTLINED_FUNCTION_32(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1975B3B88()
{
  result = qword_1EAF34908;
  if (!qword_1EAF34908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF34908);
  }

  return result;
}

unint64_t sub_1975B3BE0()
{
  result = qword_1EAF34158;
  if (!qword_1EAF34158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF34158);
  }

  return result;
}

unint64_t sub_1975B3C38()
{
  result = qword_1EAF34160;
  if (!qword_1EAF34160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF34160);
  }

  return result;
}

uint64_t sub_1975B3CF8(uint64_t a1)
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

uint64_t sub_1975B3D80(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_23;
  }

  v10 = *(*(v4 - 8) + 64) + ((v7 + 32) & ~v7) + 1;
  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v14 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_23:
      if ((v6 & 0x80000000) != 0)
      {
        return __swift_getEnumTagSinglePayload((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v7 + 16) & ~v7, v6, v4);
      }

      v16 = *(a1 + 1);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_23;
  }

LABEL_15:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    switch(v10)
    {
      case 2:
        LODWORD(v10) = *a1;
        break;
      case 3:
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v10) = *a1;
        break;
      default:
        LODWORD(v10) = *a1;
        break;
    }
  }

  return v8 + (v10 | v15) + 1;
}

void sub_1975B3F0C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = *(*(v6 - 8) + 64) + ((v10 + 32) & ~v10) + 1;
  v12 = 8 * v11;
  v13 = a3 >= v9;
  v14 = a3 - v9;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v18 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v18))
      {
        v15 = 4;
      }

      else
      {
        if (v18 < 0x100)
        {
          v19 = 1;
        }

        else
        {
          v19 = 2;
        }

        if (v18 >= 2)
        {
          v15 = v19;
        }

        else
        {
          v15 = 0;
        }
      }
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  if (v9 >= a2)
  {
    switch(v15)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if ((v8 & 0x80000000) != 0)
          {
            v21 = (((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v10 + 16) & ~v10;

            __swift_storeEnumTagSinglePayload(v21, a2, v8, v6);
          }

          else if ((a2 & 0x80000000) != 0)
          {
            *a1 = a2 & 0x7FFFFFFF;
            *(a1 + 1) = 0;
          }

          else
          {
            *(a1 + 1) = (a2 - 1);
          }
        }

        break;
    }
  }

  else
  {
    v16 = ~v9 + a2;
    if (v11 < 4)
    {
      v17 = (v16 >> v12) + 1;
      if (*(*(v6 - 8) + 64) + ((v10 + 32) & ~v10) != -1)
      {
        v20 = v16 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v20;
          a1[2] = BYTE2(v20);
        }

        else if (v11 == 2)
        {
          *a1 = v20;
        }

        else
        {
          *a1 = v16;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v16;
      v17 = 1;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v17;
        break;
      case 2:
        *&a1[v11] = v17;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v11] = v17;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1975B41C0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CoreParameterProtocol.description.getter(a1, WitnessTable);
}

uint64_t sub_1975B4224(uint64_t a1)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1975B4284(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1975B42C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, _OWORD *a5@<X8>)
{
  v8 = *a4;
  v27 = 1;
  if (*(a3 + 16))
  {
    v9 = (v8 - 7) > 1u;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {

    *(a5 + 57) = 0u;
    a5[2] = 0u;
    a5[3] = 0u;
    *a5 = 0u;
    a5[1] = 0u;
  }

  else
  {
    v11 = sub_1975B7F24(a3);
    sub_1975B587C(a1, a2, v8, v11);
    v13 = v12;

    v19[0] = a1;
    v19[1] = v13;
    v18 = v8;
    v14 = objc_allocWithZone(type metadata accessor for CoreRule.Predicate());

    v26 = CoreRule.Predicate.init(compoundOperation:)(&v18);
    v20 = 1;
    v15 = sub_1975B7F24(a3);

    v24 = &type metadata for CoreRule.Subrules;
    v16 = sub_1975B45BC();
    v21 = a1;
    v22 = v13;
    v25 = v16;
    v23 = v15;
    sub_1975B4610(v19, a5);
    return sub_1975B4648(v19);
  }

  return result;
}

uint64_t sub_1975B4430(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_197616EF0();
  }
}

uint64_t sub_1975B4460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = *(a4 + 56);
  *(v5 + 32) = a5;
  *(v5 + 40) = v6;
  *(v5 + 56) = *(a4 + 64);
  *(v5 + 48) = *(a4 + 72);
  *(v5 + 57) = *(a4 + 80);
  return MEMORY[0x1EEE6DFA0](sub_1975B44A0, 0, 0);
}

uint64_t sub_1975B44A0()
{
  v2 = *(v1 + 48);
  if (v2)
  {
    v3 = MEMORY[0x1E69E7CC0];
    if (*(v2 + 16))
    {
      v4 = *(v1 + 57);
      v5 = OUTLINED_FUNCTION_0_9();
      v10 = sub_1975B5A78(v5, v6, v7, v8, v9);
      if (v0)
      {
LABEL_10:
        v18 = *(v1 + 8);

        return v18();
      }

      sub_1975BA24C(v10);
    }
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  v11 = *(v1 + 40);
  if (v11 && *(v11 + 16))
  {
    v12 = *(v1 + 56);
    v13 = OUTLINED_FUNCTION_0_9();
    v17 = sub_1975B47FC(v13, v14, v15, v16);
    if (v0)
    {

      goto LABEL_10;
    }

    sub_1975BA24C(v17);
  }

  v20 = *(v1 + 8);

  return v20(v3);
}

unint64_t sub_1975B45BC()
{
  result = qword_1EAF34910;
  if (!qword_1EAF34910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF34910);
  }

  return result;
}

uint64_t sub_1975B4680(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 73))
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

uint64_t sub_1975B46C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1975B4724(uint64_t a1)
{
  *(a1 + 8) = sub_1975B4754();
  result = sub_1975B47A8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1975B4754()
{
  result = qword_1EAF341C8;
  if (!qword_1EAF341C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF341C8);
  }

  return result;
}

unint64_t sub_1975B47A8()
{
  result = qword_1EAF341C0;
  if (!qword_1EAF341C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF341C0);
  }

  return result;
}

uint64_t sub_1975B47FC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v4 = 0;
  v5 = *a4;
  v52 = a3 + 32;
  v6 = MEMORY[0x1E69E7CC0];
  v53 = *(a3 + 16);
  v51 = *a4;
  while (v4 != v53)
  {
    v7 = v52 + 24 * v4;
    v8 = *(v7 + 16);
    v55 = v4 + 1;
    v56 = v6;
    v9 = *(v8 + 16);
    v54 = *(v7 + 8);

    v10 = 0;
    v11 = (v8 + 64);
    v12 = MEMORY[0x1E69E7CC0];
    v68 = v8;
    v59 = v9;
    while (v9 != v10)
    {
      if (v10 >= *(v8 + 16))
      {
        __break(1u);
LABEL_43:

        return MEMORY[0x1E69E7CC0];
      }

      memcpy(__dst, v11 - 2, sizeof(__dst));
      v67 = *v11;
      v13 = *(&v67 + 1);
      if (*(&v67 + 1))
      {
        v14 = v67;
        sub_1975B11C4(__dst, v63);
        sub_19755FA5C(&v67, v63, &qword_1EAF34918, &qword_19761B110);
        if (qword_1ED8174E0 != -1)
        {
          swift_once();
        }

        if (__dst[3])
        {
          sub_1975B11FC(__dst);
        }

        else
        {
          v15 = __dst[2];
          v16 = byte_1ED8174EA;
          if (byte_1ED8174EA)
          {
            v17 = 0x418E133800000000;
          }

          else
          {
            v17 = 0;
          }

          if (byte_1ED8174EA)
          {
            v18 = 200;
          }

          else
          {
            v18 = 1000;
          }

          __src[6] = &type metadata for ConstellationEvent;
          __src[7] = sub_1975A6B60();
          v19 = swift_allocObject();
          __src[3] = v19;
          *(v19 + 16) = v14;
          *(v19 + 24) = v13;
          *(v19 + 32) = v18;
          *(v19 + 40) = v17;
          *(v19 + 48) = v16 ^ 1;
          sub_1975B4DE4(__dst);
          v21 = v20;
          v22 = sub_1975B52F8(__dst);
          v61 = xmmword_19761B100;
          v62 = 0;
          v60 = 5;
          v63[3] = MEMORY[0x1E69E6530];
          v63[0] = v15;
          v23 = objc_allocWithZone(type metadata accessor for CoreRule.Predicate());
          v24 = CoreRule.Predicate.init(argument:operation:value:queries:subpredicates:)(&v61, &v60, v63, v21, v22);
          LOBYTE(__src[9]) = 1;
          v25 = __src[6];
          v26 = __src[7];
          v27 = __swift_project_boxed_opaque_existential_1Tm(&__src[3], __src[6]);
          v28 = sub_1975D29DC(a1, a2, v24, v27, v25, v26);
          v30 = v29;
          sub_1975B11FC(__dst);
          __src[0] = v28;
          __src[1] = v30;
          LOBYTE(__src[2]) = 2;
          __src[8] = v24;
          memcpy(v63, __src, 0x49uLL);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v33 = *(v12 + 16);
            sub_1975BB9D8();
            v12 = v34;
          }

          v32 = *(v12 + 16);
          v31 = *(v12 + 24);
          v8 = v68;
          v9 = v59;
          if (v32 >= v31 >> 1)
          {
            OUTLINED_FUNCTION_0_10(v31);
            sub_1975BB9D8();
            v12 = v35;
          }

          *(v12 + 16) = v32 + 1;
          memcpy((v12 + 80 * v32 + 32), v63, 0x49uLL);
        }
      }

      v11 = (v11 + 104);
      ++v10;
    }

    v36 = *(v12 + 16);
    if (!v36)
    {

      memset(v65, 0, 73);
      v5 = v51;
      v4 = v55;
      v6 = v56;
LABEL_35:
      sub_19755C404(v65, &qword_1EAF34920, &qword_19761B118);
      continue;
    }

    v5 = v51;
    v4 = v55;
    v6 = v56;
    if (v36 == 1)
    {
      sub_1975B4610(v12 + 32, v65);
    }

    else
    {
      LOBYTE(v63[9]) = 1;

      v37 = sub_1975B7F24(v12);
      sub_1975B587C(a1, a2, 7, v37);
      v39 = v38;

      v63[0] = a1;
      v63[1] = v39;
      LOBYTE(__src[0]) = 7;
      v40 = objc_allocWithZone(type metadata accessor for CoreRule.Predicate());

      v63[8] = CoreRule.Predicate.init(compoundOperation:)(__src);
      LOBYTE(v63[2]) = 1;
      v41 = sub_1975B7F24(v12);

      v63[6] = &type metadata for CoreRule.Subrules;
      v42 = sub_1975B45BC();
      v63[3] = a1;
      v63[4] = v39;
      v63[7] = v42;
      v63[5] = v41;
      sub_1975B4610(v63, v65);
      sub_1975B4648(v63);
    }

    if (!v65[1])
    {
      goto LABEL_35;
    }

    memcpy(v63, v65, 0x49uLL);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v45 = *(v56 + 16);
      sub_1975BB9D8();
      v6 = v46;
    }

    v44 = *(v6 + 16);
    v43 = *(v6 + 24);
    if (v44 >= v43 >> 1)
    {
      OUTLINED_FUNCTION_0_10(v43);
      sub_1975BB9D8();
      v6 = v47;
    }

    *(v6 + 16) = v44 + 1;
    memcpy((v6 + 80 * v44 + 32), v63, 0x49uLL);
  }

  v48 = *(v6 + 16);
  if (!v48)
  {
    goto LABEL_43;
  }

  if (v48 != 1 && (sub_1975CBEAC(v5, 7) & 1) == 0)
  {
    if ((sub_1975CBEAC(v5, 8) & 1) == 0)
    {
      goto LABEL_43;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34928, &qword_19761B120);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_197618C10;
    LOBYTE(v63[0]) = v5;

    sub_1975B42C0(a1, a2, v6, v63, (inited + 32));
    v6 = sub_1975BD02C(inited);
    swift_setDeallocating();
    sub_1975BE914();
  }

  return v6;
}

void sub_1975B4DE4(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 96);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2 >= 2)
  {
    v4 = sub_1975B543C(*(a1 + 96));
    v5 = v4[2];
    if (v5)
    {
      v49 = v1;
      v50 = v2;
      v59 = v3;
      sub_1975D2024(0, v5, 0);
      v6 = v4 + 5;
      do
      {
        v7 = *(v6 - 1);
        v8 = *v6;
        v9 = *(v2 + 16);

        if (v9 && (v10 = sub_19755C610(), v2 = v50, (v11 & 1) != 0))
        {
          sub_19759F898(*(v50 + 56) + 32 * v10, v56);
          *(&v58 + 1) = &type metadata for AnyCodable;
          v12 = swift_allocObject();
          *&v57 = v12;
          v13 = v56[1];
          *(v12 + 16) = v56[0];
          *(v12 + 32) = v13;
          sub_19755FA5C(&v57, v56, &qword_1EAF34340, &unk_19761C8E0);
          sub_19755FA5C(v56, &v52, &qword_1EAF34340, &unk_19761C8E0);
          if (v53)
          {
            v14 = swift_allocObject();
            sub_19756A94C(&v52, (v14 + 16));
            v15 = MEMORY[0x1E69E7CA0] + 8;
          }

          else
          {
            v15 = MEMORY[0x1E69E6158];
            v14 = 0x3E6C6C756E3CLL;
          }

          sub_19755C404(v56, &qword_1EAF34340, &unk_19761C8E0);
          sub_19755C404(&v57, &qword_1EAF34340, &unk_19761C8E0);
          v16 = 0xE600000000000000;
        }

        else
        {
          v57 = 0u;
          v58 = 0u;
          sub_19755C404(&v57, &qword_1EAF34340, &unk_19761C8E0);
          v16 = 0;
          v14 = 0;
          v15 = 0;
        }

        LODWORD(v56[0]) = *v55;
        *(v56 + 3) = *&v55[3];
        LODWORD(v52) = *v54;
        *(&v52 + 3) = *&v54[3];
        v17 = v3;
        v19 = *(v3 + 16);
        v18 = *(v3 + 24);
        v59 = v3;
        if (v19 >= v18 >> 1)
        {
          sub_1975D2024(v18 > 1, v19 + 1, 1);
          v2 = v50;
          v17 = v59;
        }

        *(v17 + 16) = v19 + 1;
        v3 = v17;
        v20 = v17 + (v19 << 6);
        *(v20 + 32) = 0;
        v21 = *(v56 + 3);
        *(v20 + 33) = v56[0];
        *(v20 + 36) = v21;
        *(v20 + 40) = v7;
        *(v20 + 48) = v8;
        *(v20 + 56) = 0;
        v22 = v52;
        *(v20 + 60) = *(&v52 + 3);
        *(v20 + 57) = v22;
        *(v20 + 64) = v14;
        *(v20 + 72) = v16;
        *(v20 + 80) = 0;
        *(v20 + 88) = v15;
        v6 += 2;
        --v5;
      }

      while (v5);

      v1 = v49;
    }

    else
    {
    }
  }

  v23 = *(v1 + 88);
  if (v23)
  {
    v51 = v3;
    v24 = 0;
    v25 = *(v23 + 16);
    v26 = v23 + 40;
    v27 = MEMORY[0x1E69E7CC0];
LABEL_18:
    v28 = (v26 + 16 * v24);
    while (v25 != v24)
    {
      if (v24 >= v25)
      {
        __break(1u);
LABEL_42:
        __break(1u);
        return;
      }

      if (__OFADD__(v24, 1))
      {
        goto LABEL_42;
      }

      v30 = *(v28 - 1);
      v29 = *v28;

      if (sub_1976162E0())
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v57 = v27;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v32 = v27[2];
          sub_197553D0C();
          v27 = v57;
        }

        v33 = v27[2];
        if (v33 >= v27[3] >> 1)
        {
          sub_197553D0C();
          v27 = v57;
        }

        v27[2] = v33 + 1;
        v34 = &v27[2 * v33];
        v34[4] = v30;
        v34[5] = v29;
        ++v24;
        goto LABEL_18;
      }

      ++v24;
      v28 += 2;
    }

    v35 = v27[2];
    if (v35)
    {
      *&v57 = MEMORY[0x1E69E7CC0];
      sub_1975D2024(0, v35, 0);
      v36 = v57;
      v37 = v27 + 5;
      do
      {
        v39 = *(v37 - 1);
        v38 = *v37;

        if (sub_1976162E0())
        {

          v40 = sub_197616270();
          v41 = sub_197611CE8(v40, v39, v38);
          v39 = MEMORY[0x19A8E29E0](v41);
          v43 = v42;

          v38 = v43;
        }

        *&v57 = v36;
        v45 = *(v36 + 16);
        v44 = *(v36 + 24);
        if (v45 >= v44 >> 1)
        {
          sub_1975D2024(v44 > 1, v45 + 1, 1);
          v36 = v57;
        }

        *(v36 + 16) = v45 + 1;
        v46 = v36 + (v45 << 6);
        *(v46 + 32) = 9;
        v47 = *(v56 + 3);
        *(v46 + 33) = v56[0];
        *(v46 + 36) = v47;
        *(v46 + 40) = v39;
        *(v46 + 48) = v38;
        *(v46 + 56) = 1;
        v48 = v52;
        *(v46 + 60) = *(&v52 + 3);
        *(v46 + 57) = v48;
        *(v46 + 64) = 0u;
        *(v46 + 80) = 0u;
        v37 += 2;
        --v35;
      }

      while (v35);
    }

    else
    {

      v36 = MEMORY[0x1E69E7CC0];
    }

    v3 = v51;
  }

  else
  {
    v36 = MEMORY[0x1E69E7CC0];
  }

  *&v57 = v3;
  sub_1975BA308(v36);
}

uint64_t sub_1975B52F8(uint64_t a1)
{
  if (*(a1 + 64))
  {
    v2 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v3 = sub_1975A67FC(*(a1 + 56));
    v5 = v4;
    sub_1975BBCB4();
    v2 = v6;
    v7 = *(v6 + 16);
    if (v7 >= *(v6 + 24) >> 1)
    {
      sub_1975BBCB4();
      v2 = v15;
    }

    *(v2 + 16) = v7 + 1;
    v8 = v2 + 24 * v7;
    *(v8 + 32) = v3;
    *(v8 + 40) = v5;
    *(v8 + 48) = 0;
  }

  if ((*(a1 + 80) & 1) == 0)
  {
    v9 = sub_1975A67FC(*(a1 + 72));
    v11 = v10;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = *(v2 + 16);
      sub_1975BBCB4();
      v2 = v17;
    }

    v12 = *(v2 + 16);
    if (v12 >= *(v2 + 24) >> 1)
    {
      sub_1975BBCB4();
      v2 = v18;
    }

    *(v2 + 16) = v12 + 1;
    v13 = v2 + 24 * v12;
    *(v13 + 32) = v9;
    *(v13 + 40) = v11;
    *(v13 + 48) = 1;
  }

  return v2;
}

void *sub_1975B543C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = sub_1975BC0A4(*(a1 + 16), 0);
  sub_1975EA098();
  v4 = v3;

  sub_1975A4D3C();
  if (v4 != v1)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v2;
}

uint64_t sub_1975B54F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v14 = 0;
  v15 = 0xE000000000000000;
  v9 = *(a4 + 16);
  v10 = *(a4 + 24);

  MEMORY[0x19A8E2A50](v9, v10);

  MEMORY[0x19A8E2A50](46, 0xE100000000000000);
  v13[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34958, &qword_19761B158);
  v13[0] = MEMORY[0x1E69E6370];
  sub_197616BC0();
  __swift_destroy_boxed_opaque_existential_0Tm(v13);
  MEMORY[0x19A8E2A50](46, 0xE100000000000000);
  MEMORY[0x19A8E2A50](a1, a2);

  v12 = v15;
  *a5 = v14;
  *(a5 + 8) = v12;
  *(a5 + 16) = a1;
  *(a5 + 24) = a2;
  *(a5 + 32) = a3;
  *(a5 + 33) = 1;
  return result;
}

uint64_t sub_1975B5618@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v14 = 0;
  v15 = 0xE000000000000000;
  v9 = *(a4 + 16);
  v10 = *(a4 + 24);

  MEMORY[0x19A8E2A50](v9, v10);

  MEMORY[0x19A8E2A50](46, 0xE100000000000000);
  v13[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34960, &qword_19761B160);
  v13[0] = MEMORY[0x1E69E6530];
  sub_197616BC0();
  __swift_destroy_boxed_opaque_existential_0Tm(v13);
  MEMORY[0x19A8E2A50](46, 0xE100000000000000);
  MEMORY[0x19A8E2A50](a1, a2);

  v12 = v15;
  *a5 = v14;
  *(a5 + 8) = v12;
  *(a5 + 16) = a1;
  *(a5 + 24) = a2;
  *(a5 + 32) = a3;
  *(a5 + 40) = 1;
  return result;
}

uint64_t sub_1975B5738@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v17 = 0;
  v18 = 0xE000000000000000;
  v11 = *(a5 + 16);
  v12 = *(a5 + 24);

  MEMORY[0x19A8E2A50](v11, v12);

  MEMORY[0x19A8E2A50](46, 0xE100000000000000);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34418, &qword_1976185D8);
  v16[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34978, &qword_19761B190);
  v16[0] = v13;
  sub_197616BC0();
  __swift_destroy_boxed_opaque_existential_0Tm(v16);
  MEMORY[0x19A8E2A50](46, 0xE100000000000000);
  MEMORY[0x19A8E2A50](a1, a2);

  v15 = v18;
  *a6 = v17;
  *(a6 + 8) = v15;
  *(a6 + 16) = a1;
  *(a6 + 24) = a2;
  *(a6 + 32) = a3;
  *(a6 + 40) = a4 & 1;
  *(a6 + 41) = 1;
  return result;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_1975B587C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v24 = a2;

  MEMORY[0x19A8E2A50](46, 0xE100000000000000);
  LOBYTE(v20[0]) = a3;
  v6 = CoreRule.Predicate.Operator.rawValue.getter();
  MEMORY[0x19A8E2A50](v6);

  MEMORY[0x19A8E2A50](23336, 0xE200000000000000);
  v7 = *(a4 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v23 = MEMORY[0x1E69E7CC0];
    sub_197553D0C();
    v8 = v23;
    v9 = a4 + 32;
    do
    {
      sub_19755A560(v9, v20);
      v10 = v21;
      v11 = v22;
      __swift_project_boxed_opaque_existential_1Tm(v20, v21);
      v12 = (*(v11 + 24))(v10, v11);
      v14 = v13;
      __swift_destroy_boxed_opaque_existential_0Tm(v20);
      v23 = v8;
      v15 = *(v8 + 16);
      if (v15 >= *(v8 + 24) >> 1)
      {
        sub_197553D0C();
        v8 = v23;
      }

      *(v8 + 16) = v15 + 1;
      v16 = v8 + 16 * v15;
      *(v16 + 32) = v12;
      *(v16 + 40) = v14;
      v9 += 40;
      --v7;
    }

    while (v7);
  }

  v20[0] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF347B8, &qword_197619800);
  sub_197559AAC(&qword_1EAF33ED8, &qword_1EAF347B8, &qword_197619800);
  v17 = sub_197616170();
  v19 = v18;

  MEMORY[0x19A8E2A50](v17, v19);

  MEMORY[0x19A8E2A50](10589, 0xE200000000000000);
}

uint64_t sub_1975B5A78(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, uint64_t a5)
{
  v54 = a1;
  if (!a3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v42 = *a4;
  v6 = MEMORY[0x1E69E7CC0];
  v45 = *(a3 + 16);
  if (!v45)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_37:
    v40 = *(v9 + 16);
    if (v40)
    {
      if (v40 == 1 || (sub_1975CBEAC(v42, 7) & 1) != 0)
      {
        return v9;
      }

      if (sub_1975CBEAC(v42, 8))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34928, &qword_19761B120);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_197618C10;
        LOBYTE(v50[0]) = v42;

        sub_1975B42C0(v54, a2, v9, v50, (inited + 32));
        v9 = sub_1975BD02C(inited);
        swift_setDeallocating();
        sub_1975BE914();
        return v9;
      }
    }

    return MEMORY[0x1E69E7CC0];
  }

  v8 = 0;
  v44 = a3 + 32;
  v9 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    sub_1975B12D4(v44 + 56 * v8++, v51);
    if (((1 << v52) & 0x1B) != 0)
    {
      goto LABEL_5;
    }

    if (v52 == 2)
    {
      break;
    }

    sub_19759F898(v53, __src);
    sub_19756A94C(__src, __dst);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34390, &qword_197618390);
    if (!swift_dynamicCast())
    {
      goto LABEL_5;
    }

    v32 = v48[0];
    *&__src[0] = v6;
    v33 = v54;
    v34 = sub_1975B6CC0(v48[0], v54, a2, 0, a5);
    sub_1975BA24C(v34);
    v35 = sub_1975B6CC0(v32, v33, a2, 1, a5);

    v36 = v35;
    v6 = MEMORY[0x1E69E7CC0];
    sub_1975BA24C(v36);
    v10 = *&__src[0];
LABEL_6:
    v11 = *(v10 + 16);
    if (v11)
    {
      if (v11 == 1)
      {
        sub_1975B4610(v10 + 32, v50);

        sub_1975B130C(v51);
LABEL_25:
        memcpy(__src, v50, 0x49uLL);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v37 = *(v9 + 16);
          sub_1975BB9D8();
          v9 = v38;
        }

        v31 = *(v9 + 16);
        if (v31 >= *(v9 + 24) >> 1)
        {
          sub_1975BB9D8();
          v9 = v39;
        }

        *(v9 + 16) = v31 + 1;
        memcpy((v9 + 80 * v31 + 32), __src, 0x49uLL);
        goto LABEL_31;
      }

      BYTE8(__src[4]) = 1;
      v22 = sub_1975B7F24(v10);
      v23 = v54;
      sub_1975B587C(v54, a2, 7, v22);
      v24 = v23;
      v25 = v9;
      v27 = v26;

      *&__src[0] = v24;
      *(&__src[0] + 1) = v27;
      LOBYTE(__dst[0]) = 7;
      v28 = objc_allocWithZone(type metadata accessor for CoreRule.Predicate());

      *&__src[4] = CoreRule.Predicate.init(compoundOperation:)(__dst);
      LOBYTE(__src[1]) = 1;
      v29 = sub_1975B7F24(v10);

      *&__src[3] = &type metadata for CoreRule.Subrules;
      v30 = sub_1975B45BC();
      *(&__src[1] + 1) = v24;
      v6 = MEMORY[0x1E69E7CC0];
      *&__src[2] = v27;
      *(&__src[2] + 1) = v29;
      v9 = v25;
      *(&__src[3] + 1) = v30;
      sub_1975B130C(v51);
      sub_1975B4610(__src, v50);
      sub_1975B4648(__src);
      if (*(&v50[0] + 1))
      {
        goto LABEL_25;
      }
    }

    else
    {
      sub_1975B130C(v51);

      memset(v50, 0, 73);
    }

    sub_19755C404(v50, &qword_1EAF34920, &qword_19761B118);
LABEL_31:
    if (v8 == v45)
    {
      goto LABEL_37;
    }
  }

  sub_19759F898(v53, __src);
  sub_19756A94C(__src, __dst);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34380, &qword_197618380);
  result = swift_dynamicCast();
  if (!result)
  {
LABEL_5:
    v10 = v6;
    goto LABEL_6;
  }

  v43 = v9;
  v9 = 0;
  v13 = v48[0];
  v14 = *(v48[0] + 16);
  v15 = v48[0] + 32;
  v10 = v6;
LABEL_12:
  for (i = v15 + 32 * v9; ; i += 32)
  {
    if (v14 == v9)
    {

      v9 = v43;
      v6 = MEMORY[0x1E69E7CC0];
      goto LABEL_6;
    }

    if (v9 >= *(v13 + 16))
    {
      break;
    }

    sub_1975586C0(i, v48);
    sub_1975586C0(v48, __dst);

    sub_1975B607C(v54, a2, __dst, a5, __src);
    if (v5)
    {

      __swift_destroy_boxed_opaque_existential_0Tm(v48);
      sub_1975B130C(v51);

      return v9;
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v48);
    if (*(&__src[0] + 1))
    {
      memcpy(__dst, __src, 0x49uLL);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = *(v10 + 16);
        sub_1975BB9D8();
        v10 = v20;
      }

      v17 = *(v10 + 16);
      v18 = v17 + 1;
      if (v17 >= *(v10 + 24) >> 1)
      {
        sub_1975BB9D8();
        v18 = v17 + 1;
        v10 = v21;
      }

      ++v9;
      *(v10 + 16) = v18;
      result = memcpy((v10 + 80 * v17 + 32), __dst, 0x49uLL);
      goto LABEL_12;
    }

    result = sub_19755C404(__src, &qword_1EAF34920, &qword_19761B118);
    ++v9;
  }

  __break(1u);
  return result;
}

uint64_t sub_1975B607C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  sub_1975586C0(a3, &v58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34390, &qword_197618390);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_24;
  }

  v66 = v5;
  sub_197579604(7955819, 0xE300000000000000);
  if (!v59)
  {

    sub_19755C404(&v58, &qword_1EAF34340, &unk_19761C8E0);
LABEL_25:
    *&v58 = 0;
    *(&v58 + 1) = 0xE000000000000000;
    sub_197616A20();
    MEMORY[0x19A8E2A50](0xD00000000000001DLL, 0x8000000197623F10);
    __swift_project_boxed_opaque_existential_1Tm(a3, a3[3]);
    sub_197616EB0();
    v28 = v58;
    sub_19759228C();
    swift_allocError();
    *v29 = v28;
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_0Tm(a3);
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

LABEL_24:

    goto LABEL_25;
  }

  v11 = v56;
  sub_197579604(0x65756C6176, 0xE500000000000000);

  if (!v57)
  {

    sub_19755C404(&v56, &qword_1EAF34340, &unk_19761C8E0);
    goto LABEL_25;
  }

  v46 = a1;
  v47 = *(&v56 + 1);
  v45 = a5;
  sub_19756A94C(&v56, &v58);
  if (qword_1ED816C98 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for logger();
  __swift_project_value_buffer(v12, qword_1ED816CA0);
  *&v56 = 0;
  *(&v56 + 1) = 0xE000000000000000;
  sub_197616A20();

  *&v56 = 0xD00000000000001CLL;
  *(&v56 + 1) = 0x8000000197623F30;
  MEMORY[0x19A8E2A50](v11, *(&v11 + 1));
  MEMORY[0x19A8E2A50](0x695420726F662022, 0xEE00203A64692870);
  MEMORY[0x19A8E2A50](a1, a2);
  MEMORY[0x19A8E2A50](41, 0xE100000000000000);
  sub_197558864();

  if (qword_1ED816850 != -1)
  {
    swift_once();
  }

  if (!qword_1ED81D1D0)
  {

    if (qword_1ED815ED8 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v12, qword_1ED815EE0);
    sub_197558864();

    goto LABEL_42;
  }

  swift_getKeyPath();
  v13 = sub_1975DB484();

  sub_1975586C0(&v58, &v56);
  if (swift_dynamicCast())
  {
    v14 = v55;
    sub_1975A7634(v11, v47, v13);

    if (v51)
    {
      sub_1975586C0(&v49, &v52);
      sub_19759425C(&v49);
      if (swift_dynamicCast())
      {
        v15 = v49;
        v43 = v49;

        sub_1975B54F8(v11, v47, v15, a4, &v61);
        v16 = v62;
        __src[6] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34948, &qword_19761B150);
        __src[7] = sub_197559AAC(&qword_1EAF34950, &qword_1EAF34948, &qword_19761B150);
        v17 = swift_allocObject();
        __src[3] = v17;
        v18 = v62;
        *(v17 + 16) = v61;
        *(v17 + 32) = v18;
        *(v17 + 48) = v63;
        v49 = v16;
        v50 = 1;
        v48 = 0;
        v54 = MEMORY[0x1E69E6370];
        LOBYTE(v52) = v14;
        v19 = objc_allocWithZone(type metadata accessor for CoreRule.Predicate());

        v20 = CoreRule.Predicate.init(argument:operation:value:queries:subpredicates:)(&v49, &v48, &v52, 0, 0);
        LOBYTE(__src[9]) = 1;
        v21 = __src[6];
        v22 = __src[7];
        v23 = __swift_project_boxed_opaque_existential_1Tm(&__src[3], __src[6]);
        __src[0] = sub_1975D29DC(v46, a2, v20, v23, v21, v22);
        __src[1] = v24;
        LOBYTE(__src[2]) = 4;
        __src[8] = v20;
        if (v14 != v43)
        {
          v52 = 0;
          v53 = 0xE000000000000000;
          sub_197616A20();
          MEMORY[0x19A8E2A50](0xD000000000000013, 0x8000000197623FD0);
          MEMORY[0x19A8E2A50](v11, v47);

          MEMORY[0x19A8E2A50](0x695420726F662022, 0xEE00203A64692870);
          MEMORY[0x19A8E2A50](v46, a2);

          MEMORY[0x19A8E2A50](0xD000000000000021, 0x8000000197624040);
          if (v14)
          {
            v25 = 1702195828;
          }

          else
          {
            v25 = 0x65736C6166;
          }

          if (v14)
          {
            v26 = 0xE400000000000000;
          }

          else
          {
            v26 = 0xE500000000000000;
          }

          v27 = v26;
          goto LABEL_44;
        }

        goto LABEL_35;
      }
    }

    else
    {
      sub_19755C404(&v49, &qword_1EAF34930, &unk_19761DB90);
    }

LABEL_40:
    v52 = 0;
    v53 = 0xE000000000000000;
    sub_197616A20();
    MEMORY[0x19A8E2A50](0xD000000000000013, 0x8000000197623FD0);
    MEMORY[0x19A8E2A50](v11, v47);

    MEMORY[0x19A8E2A50](0xD000000000000047, 0x8000000197623FF0);
    MEMORY[0x19A8E2A50](v46, a2);

    MEMORY[0x19A8E2A50](11817, 0xE200000000000000);
    goto LABEL_41;
  }

  if (swift_dynamicCast())
  {
    v44 = v55;
    sub_1975A7634(v11, v47, v13);

    if (v51)
    {
      sub_1975586C0(&v49, &v52);
      sub_19759425C(&v49);
      if (swift_dynamicCast())
      {
        v31 = v49;
        v42 = v49;

        sub_1975B5618(v11, v47, v31, a4, &v64);
        v32 = v65[0];
        __src[6] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34938, &qword_19761B148);
        __src[7] = sub_197559AAC(&qword_1EAF34940, &qword_1EAF34938, &qword_19761B148);
        v33 = swift_allocObject();
        __src[3] = v33;
        v34 = v65[0];
        v33[1] = v64;
        v33[2] = v34;
        *(v33 + 41) = *(v65 + 9);
        v49 = v32;
        v50 = 1;
        v48 = 0;
        v54 = MEMORY[0x1E69E6530];
        v52 = v44;
        v35 = objc_allocWithZone(type metadata accessor for CoreRule.Predicate());

        v36 = CoreRule.Predicate.init(argument:operation:value:queries:subpredicates:)(&v49, &v48, &v52, 0, 0);
        LOBYTE(__src[9]) = 1;
        v37 = __src[6];
        v38 = __src[7];
        v39 = __swift_project_boxed_opaque_existential_1Tm(&__src[3], __src[6]);
        __src[0] = sub_1975D29DC(a1, a2, v36, v39, v37, v38);
        __src[1] = v40;
        LOBYTE(__src[2]) = 4;
        __src[8] = v36;
        if (v42 != v44)
        {
          v52 = 0;
          v53 = 0xE000000000000000;
          sub_197616A20();
          MEMORY[0x19A8E2A50](0xD000000000000013, 0x8000000197623FD0);
          MEMORY[0x19A8E2A50](v11, v47);

          MEMORY[0x19A8E2A50](0x695420726F662022, 0xEE00203A64692870);
          MEMORY[0x19A8E2A50](a1, a2);

          MEMORY[0x19A8E2A50](0xD000000000000021, 0x8000000197624040);
          *&v49 = v44;
          v25 = sub_197616E80();
LABEL_44:
          MEMORY[0x19A8E2A50](v25, v27);

          MEMORY[0x19A8E2A50](46, 0xE100000000000000);
          sub_197558864();
          v41 = v45;
          goto LABEL_45;
        }

LABEL_35:

        v41 = v45;
LABEL_45:

        __swift_destroy_boxed_opaque_existential_0Tm(&v56);
        __swift_destroy_boxed_opaque_existential_0Tm(&v58);
        memcpy(v41, __src, 0x49uLL);
        return __swift_destroy_boxed_opaque_existential_0Tm(a3);
      }
    }

    else
    {
      sub_19755C404(&v49, &qword_1EAF34930, &unk_19761DB90);
    }

    goto LABEL_40;
  }

  v52 = 0;
  v53 = 0xE000000000000000;
  sub_197616A20();
  MEMORY[0x19A8E2A50](0xD000000000000049, 0x8000000197623F80);
  __swift_project_boxed_opaque_existential_1Tm(&v58, v59);
  sub_197616EB0();
LABEL_41:
  sub_197558864();

  __swift_destroy_boxed_opaque_existential_0Tm(&v56);
LABEL_42:
  __swift_destroy_boxed_opaque_existential_0Tm(&v58);
  result = __swift_destroy_boxed_opaque_existential_0Tm(a3);
  *(v45 + 57) = 0u;
  v45[2] = 0u;
  v45[3] = 0u;
  *v45 = 0u;
  v45[1] = 0u;
  return result;
}

uint64_t sub_1975B6CC0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  if (a4)
  {
    v5 = 0x6564756C637865;
  }

  else
  {
    v5 = 0x6564756C636E69;
  }

  if (!*(a1 + 16) || (v10 = sub_19755C610(), (v11 & 1) == 0))
  {
    v49 = 0u;
    v50 = 0u;

    goto LABEL_14;
  }

  sub_1975586C0(*(a1 + 56) + 32 * v10, &v49);

  if (!*(&v50 + 1))
  {
LABEL_14:
    sub_19755C404(&v49, &qword_1EAF34340, &unk_19761C8E0);
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF347B8, &qword_197619800);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  if (qword_1ED816850 != -1)
  {
    swift_once();
  }

  if (!qword_1ED81D1D0 || (swift_getKeyPath(), v42 = sub_1975DB3F8(), , v42 == 3) || (v14 = *(*__src + 16)) == 0)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v43 = a3;
  v40 = a4 & 1;
  v15 = (*__src + 40);
  v12 = MEMORY[0x1E69E7CC0];
  v41 = a5;
  do
  {
    v17 = *(v15 - 1);
    v16 = *v15;
    *(&v50 + 1) = MEMORY[0x1E69E6158];
    *&v49 = v17;
    *(&v49 + 1) = v16;
    swift_bridgeObjectRetain_n();
    v18 = sub_1975F0D7C(&v49);
    if (v18 == 3)
    {
      if (qword_1ED816C98 != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for logger();
      __swift_project_value_buffer(v19, qword_1ED816CA0);
      *&v49 = 0;
      *(&v49 + 1) = 0xE000000000000000;
      sub_197616A20();
      MEMORY[0x19A8E2A50](0xD000000000000012, 0x8000000197624070);
      MEMORY[0x19A8E2A50](v17, v16);

      MEMORY[0x19A8E2A50](0xD000000000000030, 0x8000000197624090);
      MEMORY[0x19A8E2A50](a2, v43);
      MEMORY[0x19A8E2A50](41, 0xE100000000000000);
      sub_1975FA258();
    }

    else
    {
      v20 = v18;

      sub_1975B5738(0x6570795472657355, 0xE800000000000000, v20, 0, a5, &v55);
      swift_getKeyPath();
      v21 = sub_1975DB3F8();

      v22 = v21 == 3;
      if (v21 == 3)
      {
        v23 = 0;
      }

      else
      {
        v23 = v21;
      }

      v24 = v23;
      v26 = *v56;
      v25 = *&v56[8];
      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34968, &qword_19761B188);
      v52 = sub_197559AAC(&qword_1EAF34970, &qword_1EAF34968, &qword_19761B188);
      v27 = swift_allocObject();
      *(&v50 + 1) = v27;
      v28 = *v56;
      v27[1] = v55;
      v27[2] = v28;
      *(v27 + 42) = *&v56[10];
      v47[0] = v26;
      v47[1] = v25;
      v48 = 1;
      v46 = v40;
      *&__src[24] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34418, &qword_1976185D8);
      *__src = v24;
      __src[8] = v22;
      v29 = objc_allocWithZone(type metadata accessor for CoreRule.Predicate());

      v30 = CoreRule.Predicate.init(argument:operation:value:queries:subpredicates:)(v47, &v46, __src, 0, 0);
      v54 = 1;
      v31 = v51;
      v32 = v52;
      v33 = __swift_project_boxed_opaque_existential_1Tm(&v50 + 1, v51);
      *&v49 = sub_1975D29DC(a2, v43, v30, v33, v31, v32);
      *(&v49 + 1) = v34;
      LOBYTE(v50) = 4;
      v53 = v30;
      if (qword_1ED816C98 != -1)
      {
        swift_once();
      }

      v35 = type metadata accessor for logger();
      __swift_project_value_buffer(v35, qword_1ED816CA0);
      *__src = 0;
      *&__src[8] = 0xE000000000000000;
      sub_197616A20();
      MEMORY[0x19A8E2A50](0xD000000000000011, 0x80000001976240D0);
      MEMORY[0x19A8E2A50](v5, 0xE700000000000000);

      MEMORY[0x19A8E2A50](32, 0xE100000000000000);
      LOBYTE(v47[0]) = v20;
      sub_197616BC0();
      MEMORY[0x19A8E2A50](0xD000000000000013, 0x80000001976240F0);
      MEMORY[0x19A8E2A50](a2, v43);
      MEMORY[0x19A8E2A50](0xD00000000000001CLL, 0x8000000197624110);
      LOBYTE(v47[0]) = v42;
      sub_197616BC0();
      sub_197558864();

      sub_1975B4610(&v49, __src);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v37 = *(v12 + 16);
        sub_1975BB9D8();
        v12 = v38;
      }

      a5 = v41;
      v36 = *(v12 + 16);
      if (v36 >= *(v12 + 24) >> 1)
      {
        sub_1975BB9D8();
        v12 = v39;
      }

      *(v12 + 16) = v36 + 1;
      memcpy((v12 + 80 * v36 + 32), __src, 0x49uLL);
      sub_1975B4648(&v49);
    }

    v15 += 2;
    --v14;
  }

  while (v14);

  return v12;
}

uint64_t sub_1975B7390()
{
  OUTLINED_FUNCTION_1();
  v2 = v1;
  v0[211] = v3;
  v0[210] = v4;
  memcpy(v0 + 2, v5, 0xE8uLL);
  memcpy(v0 + 182, v2, 0x51uLL);

  return MEMORY[0x1EEE6DFA0](sub_1975B7414, 0, 0);
}

uint64_t sub_1975B7414()
{
  v24 = v0;
  if (qword_1ED816C98 != -1)
  {
    OUTLINED_FUNCTION_5_0();
  }

  v1 = *(v0 + 1688);
  v2 = type metadata accessor for logger();
  __swift_project_value_buffer(v2, qword_1ED816CA0);
  v3 = 0xE000000000000000;
  v23[0] = 0;
  v23[1] = 0xE000000000000000;
  sub_197616A20();
  MEMORY[0x19A8E2A50](0xD000000000000015, 0x8000000197623E00);
  v4 = *(v0 + 64);
  v5 = *(v0 + 72);
  *(v0 + 1696) = v4;
  *(v0 + 1704) = v5;
  MEMORY[0x19A8E2A50](v4, v5);
  MEMORY[0x19A8E2A50](0xD00000000000002CLL, 0x8000000197624130);
  MEMORY[0x19A8E2A50](*(v1 + 32), *(v1 + 40));
  MEMORY[0x19A8E2A50](41, 0xE100000000000000);
  sub_197558864();

  v6 = *(v0 + 1488);
  if (v6[2])
  {
    v7 = v6[4];
    v3 = v6[5];
  }

  else
  {
    v7 = 0;
  }

  *(v0 + 1720) = v3;
  *(v0 + 1712) = v7;
  v8 = *(v0 + 1688);
  *(v0 + 1542) = *(v0 + 1496);
  *(v0 + 1728) = *(v0 + 1504);
  *(v0 + 1784) = 1;
  *(v0 + 1543) = 1;
  v9 = *(v0 + 96);
  v10 = *(v0 + 112);
  memcpy(__dst, (v0 + 120), sizeof(__dst));
  memcpy(v23, (v0 + 16), 0xE8uLL);

  swift_unownedRetain();

  v11 = sub_1975B8048(v23);
  if (v10)
  {
    sub_1975AB21C(v0 + 16, v0 + 480);
    v10 = sub_197610058(v10, (v0 + 16));
  }

  memcpy((v0 + 712), __dst, 0x80uLL);
  if (sub_1975B8D54(v0 + 712) == 1)
  {
    v12 = 0;
    v13 = 0;
    goto LABEL_21;
  }

  v14 = *(v0 + 736);
  v15 = *(v0 + 760);
  v16 = *(v0 + 768);
  if (*(v0 + 712) == 0x6C6F626D7973 && *(v0 + 720) == 0xE600000000000000)
  {
    v12 = 0;
  }

  else
  {
    v18 = sub_197616EF0();
    v12 = 0;
    if ((v18 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  if (v14 == 1)
  {
LABEL_20:
    v13 = 0;
    goto LABEL_21;
  }

  v13 = 0;
  if (v16)
  {

    v12 = v15;
    v13 = v16;
  }

LABEL_21:
  v23[0] = 0;
  v23[1] = v12;
  v23[2] = v13;
  objc_allocWithZone(type metadata accessor for CoreTip.ConstellationContent());
  *(v0 + 1736) = sub_1975D7628(v9, v11, v10, v23);
  memcpy((v0 + 248), (v0 + 16), 0xE8uLL);
  memcpy((v0 + 1544), (v0 + 1456), 0x51uLL);
  v19 = swift_task_alloc();
  *(v0 + 1744) = v19;
  *v19 = v0;
  v19[1] = sub_1975B7770;
  v20 = *(v0 + 1688);

  return sub_1975B4460(v4, v5, v0 + 248, v0 + 1544, v20);
}

uint64_t sub_1975B7770(uint64_t a1)
{
  OUTLINED_FUNCTION_16();
  v5 = v4;
  v6 = *(v4 + 1744);
  v7 = *v2;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  *(v5 + 1752) = v1;

  if (v1)
  {
    v9 = sub_1975B7CC8;
  }

  else
  {
    *(v5 + 1760) = a1;
    sub_1975AB66C(v5 + 1456);
    sub_1975AB278(v5 + 16);
    v9 = sub_1975B789C;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1975B789C()
{
  v6 = *(v0 + 1760);
  OUTLINED_FUNCTION_2_7();
  v13 = *(v0 + 1696);
  v14 = *(v0 + 1688);
  v15 = v8;
  if (v7 == -1)
  {
    v9 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = v7;
  }

  v10 = sub_1975B7F24(v6);
  *(v0 + 1768) = v10;

  *(v0 + 1104) = v13;
  *(v0 + 1120) = v1;
  *(v0 + 1128) = v5;
  *(v0 + 1136) = v4;
  *(v0 + 1144) = 1;
  *(v0 + 1146) = v3;
  *(v0 + 1147) = *(v0 + 1537);
  *(v0 + 1151) = *(v0 + 1541);
  *(v0 + 1152) = v9;
  *(v0 + 1160) = 0;
  *(v0 + 1168) = v2;
  *v15 = 16777476;
  OUTLINED_FUNCTION_5_6((v0 + 1173));
  *(v0 + 1176) = v10;
  *(v0 + 1184) = v14;
  memcpy((v0 + 1192), (v0 + 1104), 0x58uLL);
  sub_1975B8D6C(v0 + 1104, v0 + 1280);
  v11 = swift_task_alloc();
  *(v0 + 1776) = v11;
  *v11 = v0;
  v11[1] = sub_1975B7A10;

  return sub_1975B8338();
}

uint64_t sub_1975B7A10()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_16();
  v2 = v1;
  v3 = *(v1 + 1776);
  v4 = *v0;
  OUTLINED_FUNCTION_2();
  *v5 = v4;

  memcpy((v2 + 1016), (v2 + 1192), 0x58uLL);
  sub_1975B8DA4(v2 + 1016);

  return MEMORY[0x1EEE6DFA0](sub_1975B7B14, 0, 0);
}

uint64_t sub_1975B7B14()
{
  v14 = *(v0 + 1768);
  v1 = (v0 + 1537);
  v2 = *(v0 + 1736);
  v3 = *(v0 + 1543);
  v15 = v3;
  v4 = *(v0 + 1542);
  v5 = *(v0 + 1720);
  v6 = *(v0 + 1712);
  v7 = *(v0 + 1704);
  v8 = *(v0 + 1696);
  v9 = *(v0 + 1688);
  __dst = *(v0 + 1680);
  if (*(v0 + 1728) == -1)
  {
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v10 = *(v0 + 1728);
  }

  *(v0 + 928) = v8;
  *(v0 + 936) = v7;
  *(v0 + 944) = v2;
  *(v0 + 952) = v6;
  *(v0 + 960) = v5;
  *(v0 + 968) = 1;
  *(v0 + 970) = v4;
  *(v0 + 975) = *(v0 + 1541);
  *(v0 + 971) = *v1;
  *(v0 + 976) = v10;
  *(v0 + 984) = 0;
  *(v0 + 992) = v3;
  *(v0 + 993) = 16777476;
  OUTLINED_FUNCTION_5_6((v0 + 997));
  *(v0 + 1000) = v11;
  *(v0 + 1008) = v9;
  sub_1975B8D6C(v0 + 928, v0 + 1368);

  memcpy(__dst, (v0 + 928), 0x58uLL);
  *(v0 + 840) = v8;
  *(v0 + 848) = v7;
  *(v0 + 856) = v2;
  *(v0 + 864) = v6;
  *(v0 + 872) = v5;
  *(v0 + 880) = 1;
  *(v0 + 882) = v4;
  *(v0 + 883) = *v1;
  *(v0 + 887) = *(v0 + 1541);
  *(v0 + 888) = v10;
  *(v0 + 896) = 0;
  *(v0 + 904) = v15;
  *(v0 + 905) = 16777476;
  OUTLINED_FUNCTION_5_6((v0 + 909));
  *(v0 + 912) = v14;
  *(v0 + 920) = v9;
  sub_1975B8DA4(v0 + 840);
  OUTLINED_FUNCTION_3();

  return v12();
}

uint64_t sub_1975B7CC8()
{
  OUTLINED_FUNCTION_2_7();
  v7 = *(v0 + 1704);
  v8 = *(v0 + 1688);
  if (v6 == -1)
  {
    v9 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = v6;
  }

  sub_1975AB66C(v0 + 1456);
  sub_1975AB278(v0 + 16);

  *(v0 + 1632) = v5;
  *(v0 + 1640) = v4;
  *(v0 + 1648) = 1;
  *(v0 + 1650) = v3;
  *(v0 + 1651) = *(v0 + 1537);
  *(v0 + 1655) = *(v0 + 1541);
  *(v0 + 1656) = v9;
  *(v0 + 1664) = 0;
  *(v0 + 1672) = v2;
  *(v0 + 1673) = 16777476;
  OUTLINED_FUNCTION_5_6((v0 + 1677));
  sub_19756D1E8(v0 + 1632);
  swift_unownedRelease();
  OUTLINED_FUNCTION_3();
  v11 = *(v0 + 1752);

  return v10();
}

uint64_t sub_1975B7DE4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v15 = MEMORY[0x1E69E7CC0];
    sub_1975D1FC4(0, v1, 0);
    v2 = v15;
    v4 = a1 + 32;
    do
    {
      sub_1975B934C(v4, v11);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF349A8, &qword_19761B1F8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF349B0, &qword_19761B200);
      swift_dynamicCast();
      v15 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1975D1FC4(v5 > 1, v6 + 1, 1);
        v2 = v15;
      }

      *(v2 + 16) = v6 + 1;
      v7 = (v2 + 48 * v6);
      v8 = v12;
      v9 = v14;
      v7[3] = v13;
      v7[4] = v9;
      v7[2] = v8;
      v4 += 48;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1975B7F24(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v12 = MEMORY[0x1E69E7CC0];
    sub_1975D2004(0, v1, 0);
    v2 = v12;
    v4 = a1 + 32;
    do
    {
      sub_1975B4610(v4, v11);
      v12 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1975D2004(v5 > 1, v6 + 1, 1);
        v2 = v12;
      }

      v9 = &type metadata for ConstellationRule;
      v10 = sub_1975B9248();
      *&v8 = swift_allocObject();
      sub_1975B4610(v11, v8 + 16);
      *(v2 + 16) = v6 + 1;
      sub_1975558C4(&v8, v2 + 40 * v6 + 32);
      sub_1975B4648(v11);
      v4 += 80;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1975B8048(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1)
  {

    v3 = 0;
    v4 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v5 = *(v1 + 16);
      if (v3 == v5)
      {

        return v4;
      }

      if (v3 >= v5)
      {
        break;
      }

      v6 = v1 + 32 + 16 * v3;
      v7 = *(v6 + 8);
      if (v3)
      {
        switch(*v6)
        {
          case 1:
          case 2:
          case 3:
            v10 = sub_197616EF0();

            if (v10)
            {
              goto LABEL_10;
            }

            break;
          default:
            v8 = *(v6 + 8);

LABEL_10:
            LOBYTE(__src[0]) = 3;
            *&__src[1] = xmmword_19761B1A0;
            *&__src[3] = xmmword_197619440;
            memset(&__src[5], 0, 104);
            sub_1975B929C(__src, v22);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v19 = *(v4 + 16);
              sub_1975BB904();
              v4 = v20;
            }

            v11 = *(v4 + 16);
            if (v11 >= *(v4 + 24) >> 1)
            {
              sub_1975BB904();
              v4 = v21;
            }

            *(v4 + 16) = v11 + 1;
            memcpy((v4 + 144 * v11 + 32), __src, 0x90uLL);
            sub_1975B92F8(__src);
            break;
        }
      }

      else
      {
        v9 = *(v6 + 8);
      }

      ++v3;
      v12 = *(v7 + 16);
      if (v12)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = *(v4 + 16);
          sub_1975BB904();
          v4 = v18;
        }

        v13 = v12 - 1;
        for (i = 32; ; i += 144)
        {
          memcpy(__src, (v7 + i), 0x90uLL);
          sub_1975B929C(__src, v22);
          v15 = *(v4 + 16);
          if (v15 >= *(v4 + 24) >> 1)
          {
            sub_1975BB904();
            v4 = v16;
          }

          *(v4 + 16) = v15 + 1;
          memcpy((v4 + 144 * v15 + 32), __src, 0x90uLL);
          if (!v13)
          {
            break;
          }

          --v13;
        }
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_1975B8338()
{
  memcpy((v1 + 16), v0, 0x58uLL);

  return MEMORY[0x1EEE6DFA0](sub_1975B83A8, 0, 0);
}

uint64_t sub_1975B83A8()
{
  v1 = type metadata accessor for CoreTip();
  v2 = v0[2];
  v3 = v0[3];
  v4 = static CoreTip.tips.getter();
  if (!*(v4 + 16) || (sub_19755C610(), (v5 & 1) == 0))
  {
    v6 = *(v1 + 48);
    v7 = *(v1 + 52);
    v8 = swift_allocObject();
    sub_1975B8D6C((v0 + 2), (v0 + 13));
    sub_1975B8E3C(v0 + 2, v8);

    swift_isUniquelyReferenced_nonNull_native();
    sub_1975FCAB4();
  }

  static CoreTip.tips.setter(v4);
  v9 = v0[12];
  swift_unownedRetainStrong();
  v0[24] = *(v9 + 64);

  v10 = swift_task_alloc();
  v0[25] = v10;
  *v10 = v0;
  v10[1] = sub_1975B851C;

  return sub_19757139C();
}

uint64_t sub_1975B851C()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_16();
  v2 = *(v1 + 200);
  v3 = *(v1 + 192);
  v4 = *v0;
  OUTLINED_FUNCTION_2();
  *v5 = v4;

  OUTLINED_FUNCTION_3();

  return v6();
}

void *sub_1975B862C()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t sub_1975B865C@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 40);
  v6 = *(v1 + 24);
  v7[0] = v2;
  *(v7 + 15) = *(v1 + 55);
  v3 = *(v7 + 15);
  *a1 = v6;
  a1[1] = v2;
  *(a1 + 31) = v3;
  return sub_1975B959C(&v6, &v5);
}

uint64_t sub_1975B86A0(void *__src, const void *a2)
{
  memcpy(v4, __src, sizeof(v4));
  memcpy(__dst, a2, sizeof(__dst));
  return sub_1975B4430(v4, __dst) & 1;
}

uint64_t sub_1975B8734()
{
  MEMORY[0x19A8E2A50](*v0, v0[1]);
  MEMORY[0x19A8E2A50](41, 0xE100000000000000);
  return 0x203A646928706954;
}

uint64_t sub_1975B8790@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34980, &unk_19761B1C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v24 - v6;
  v8 = sub_1976155F0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[15];
  if (a1[5] == 1 || v13 == 0)
  {
    goto LABEL_16;
  }

  v15 = a1[14];
  v16 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v16 = v15 & 0xFFFFFFFFFFFFLL;
  }

  if (!v16)
  {
    goto LABEL_16;
  }

  v17 = a1[2];
  v18 = a1[3];
  v19 = v15 == 0xD000000000000015 && v13 == 0x8000000197624160;
  if (v19 || (sub_197616EF0() & 1) != 0)
  {
    if (qword_1ED816C98 != -1)
    {
      OUTLINED_FUNCTION_5_0();
    }

    v20 = type metadata accessor for logger();
    __swift_project_value_buffer(v20, qword_1ED816CA0);
    v24[0] = 0;
    v24[1] = 0xE000000000000000;
    sub_197616A20();
    MEMORY[0x19A8E2A50](0x62206E6F69746341, 0xEF22206E6F747475);
    MEMORY[0x19A8E2A50](v17, v18);
    MEMORY[0x19A8E2A50](0xD000000000000033, 0x8000000197624180);
    sub_197558864();

LABEL_16:
    v21 = sub_197615970();

    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v21);
  }

  sub_1976155E0();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    sub_1975B8DD4(v7);
  }

  else
  {
    (*(v9 + 32))(v12, v7, v8);
    sub_1976150DC(7107189, 0xE300000000000000);
    if (v23)
    {
      sub_197615930();

      return (*(v9 + 8))(v12, v8);
    }

    (*(v9 + 8))(v12, v8);
  }

  return sub_197615930();
}

uint64_t sub_1975B8ACC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34688, &qword_197619420);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v13[-v3];
  v19 = 46;
  v20 = 0xE100000000000000;
  v14 = &v19;
  v5 = sub_19755967C(0x7FFFFFFFFFFFFFFFLL, 1, sub_197556D58, v13, 0xD00000000000001BLL, 0x80000001976241C0);
  v19 = sub_1976124C4(1, v5);
  v20 = v6;
  v21 = v7;
  v22 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF349A0, &qword_19761B1F0);
  sub_197559AAC(&qword_1ED816D98, &qword_1EAF349A0, &qword_19761B1F0);
  sub_197559C9C();
  v9 = sub_1976163D0();
  v11 = v10;
  swift_unknownObjectRelease();
  v17 = v9;
  v18 = v11;
  sub_197615B60();
  v15 = 0;
  v16 = 0xE000000000000000;
  sub_197559BA8();
  sub_197559C48();
  sub_197559AAC(&qword_1ED816DB8, &qword_1EAF34688, &qword_197619420);
  sub_1976167A0();
  (*(v1 + 8))(v4, v0);

  return v19;
}

uint64_t sub_1975B8D54(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1975B8DD4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34980, &unk_19761B1C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1975B8E3C(uint64_t *a1, uint64_t a2)
{
  v4 = *a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34988, &qword_197620CA0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v22 - v7;
  v22[3] = &type metadata for ConstellationTip;
  v22[4] = sub_1975B90A4();
  v9 = swift_allocObject();
  v22[0] = v9;
  v11 = *a1;
  v10 = a1[1];
  v12 = a1[10];
  memcpy((v9 + 16), a1, 0x58uLL);
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  *(a2 + 136) = 1;
  v13 = (a2 + OBJC_IVAR____TtC10TipKitCore7CoreTip__firstEligible);
  v14 = sub_197615A60();

  __swift_storeEnumTagSinglePayload(v8, 1, 1, v14);
  *v13 = 0;
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34990, &qword_19761B1D0) + 28);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34998, &qword_19761B1D8);
  bzero(v13 + v15, *(*(v16 - 8) + 64));
  sub_19756E854(v8, v13 + v15);
  v17 = a2 + OBJC_IVAR____TtC10TipKitCore7CoreTip__constellationContent;
  *v17 = 0;
  *(v17 + 8) = 0;
  sub_197615B30();
  *(a2 + 16) = v11;
  *(a2 + 24) = v10;
  v18 = a2 + OBJC_IVAR____TtC10TipKitCore7CoreTip__activeViews;
  *v18 = 0;
  *(v18 + 8) = 0;
  swift_unownedRetainStrong();
  *(a2 + 88) = v12;
  swift_unownedRetain();

  v19 = a2 + OBJC_IVAR____TtC10TipKitCore7CoreTip__displayDuration;
  *v19 = 0;
  *(v19 + 8) = 0;
  *(a2 + 100) = 0;
  *(a2 + 104) = 0;
  *(a2 + 108) = 0;
  *(a2 + 112) = 0;
  sub_19756E8C4(v22, __dst);
  *(a2 + 96) = *__dst;
  sub_19755A560(v22, a2 + 32);
  *(a2 + 72) = sub_1975B8ACC();
  *(a2 + 80) = v20;
  memcpy(__dst, (v9 + 16), sizeof(__dst));
  sub_1975B90F8(__dst, a2);
  __swift_destroy_boxed_opaque_existential_0Tm(v22);
  return a2;
}

unint64_t sub_1975B90A4()
{
  result = qword_1EAF341F8;
  if (!qword_1EAF341F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF341F8);
  }

  return result;
}

uint64_t sub_1975B90F8(_BYTE *a1, uint64_t a2)
{
  v11[3] = &type metadata for ConstellationTip;
  v11[4] = sub_1975B90A4();
  v11[0] = swift_allocObject();
  v4 = a1[70];
  memcpy((v11[0] + 16), a1, 0x58uLL);
  if (v4)
  {
    v5 = *(a2 + 88);
    swift_unownedRetainStrong();
    v6 = *(v5 + 64);
    sub_1975B8D6C(a1, v10);

    v7 = swift_allocObject();
    swift_weakInit();
    sub_19755A560(v11, v10);
    v8 = swift_allocObject();
    sub_1975558C4(v10, v8 + 16);
    *(v8 + 56) = v7;

    sub_19755A5C4(&unk_19761B1E0, v8);
  }

  else
  {
    sub_1975B8D6C(a1, v10);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v11);
}

unint64_t sub_1975B9248()
{
  result = qword_1EAF341B8;
  if (!qword_1EAF341B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF341B8);
  }

  return result;
}

uint64_t sub_1975B934C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF349A8, &qword_19761B1F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1975B93C4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_1975B9404(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1975B9468(void *a1)
{
  a1[1] = sub_1975B94A0();
  a1[2] = sub_1975B94F4();
  result = sub_1975B9548();
  a1[3] = result;
  return result;
}

unint64_t sub_1975B94A0()
{
  result = qword_1EAF34200;
  if (!qword_1EAF34200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF34200);
  }

  return result;
}

unint64_t sub_1975B94F4()
{
  result = qword_1EAF34210;
  if (!qword_1EAF34210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF34210);
  }

  return result;
}

unint64_t sub_1975B9548()
{
  result = qword_1EAF34208;
  if (!qword_1EAF34208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF34208);
  }

  return result;
}

uint64_t measure(_:)()
{
  v1 = sub_197616B80();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_197616B70();
  OUTLINED_FUNCTION_0_11();
  sub_1975B9FFC(v6, v7);
  sub_197617120();
  if (v0)
  {
    return (*(v2 + 8))(v5, v1);
  }

  (*(v2 + 8))(v5, v1);
  return v9;
}

uint64_t measure(isolation:_:)()
{
  OUTLINED_FUNCTION_1();
  v2 = v1;
  v0[4] = v3;
  v0[5] = v4;
  v0[2] = v1;
  v0[3] = v5;
  v6 = sub_197616B80();
  v0[6] = v6;
  v7 = *(v6 - 8);
  v0[7] = v7;
  v8 = *(v7 + 64) + 15;
  v0[8] = swift_task_alloc();
  if (v2)
  {
    swift_getObjectType();
    v9 = sub_197616560();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v0[9] = v9;
  v0[10] = v11;

  return MEMORY[0x1EEE6DFA0](sub_1975B982C, v9, v11);
}

uint64_t sub_1975B982C()
{
  OUTLINED_FUNCTION_1();
  v1 = v0[8];
  sub_197616B70();
  v2 = swift_task_alloc();
  v0[11] = v2;
  *v2 = v0;
  v2[1] = sub_1975B98E0;
  v3 = v0[8];
  v4 = v0[4];
  v5 = v0[5];
  v7 = v0[2];
  v6 = v0[3];

  return sub_1975B9B00(v7, v6, v4, v5);
}

uint64_t sub_1975B98E0(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 88);
  v8 = *v3;
  v6[12] = v2;

  (*(v6[7] + 8))(v6[8], v6[6]);
  if (v2)
  {
    v9 = v6[9];
    v10 = v6[10];

    return MEMORY[0x1EEE6DFA0](sub_1975B9AA0, v9, v10);
  }

  else
  {

    v11 = *(v8 + 8);

    return v11(a1, a2);
  }
}

uint64_t sub_1975B9AA0()
{
  OUTLINED_FUNCTION_1();
  v1 = v0[8];

  v2 = v0[1];
  v3 = v0[12];

  return v2();
}

uint64_t sub_1975B9B00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[4] = a3;
  v7 = sub_197616B60();
  v5[7] = v7;
  v8 = *(v7 - 8);
  v5[8] = v8;
  v9 = *(v8 + 64) + 15;
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v10 = sub_197616560();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  v5[11] = v10;
  v5[12] = v12;

  return MEMORY[0x1EEE6DFA0](sub_1975B9C0C, v10, v12);
}

uint64_t sub_1975B9C0C()
{
  v1 = v0[10];
  v2 = v0[6];
  v3 = v0[4];
  v0[13] = sub_197616B80();
  OUTLINED_FUNCTION_0_11();
  v0[14] = sub_1975B9FFC(v4, v5);
  sub_197617100();
  v10 = (v3 + *v3);
  v6 = v3[1];
  v7 = swift_task_alloc();
  v0[15] = v7;
  *v7 = v0;
  v7[1] = sub_1975B9D54;
  v8 = v0[5];

  return v10();
}

uint64_t sub_1975B9D54()
{
  OUTLINED_FUNCTION_1();
  v2 = *v1;
  v3 = *(*v1 + 120);
  v8 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    (*(v2[8] + 8))(v2[10], v2[7]);
    v4 = v2[11];
    v5 = v2[12];
    v6 = sub_1975B9F94;
  }

  else
  {
    v4 = v2[11];
    v5 = v2[12];
    v6 = sub_1975B9E7C;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1975B9E7C()
{
  v1 = v0[13];
  v2 = v0[14];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[7];
  v6 = v0[8];
  v7 = v0[6];
  sub_197617100();
  sub_1975B9FFC(&qword_1ED815FD0, MEMORY[0x1E69E87E8]);
  sub_197616BA0();
  v8 = *(v6 + 8);
  v8(v4, v5);
  v8(v3, v5);
  v9 = v0[2];
  v10 = v0[3];

  v11 = v0[1];

  return v11(v9, v10);
}

uint64_t sub_1975B9F94()
{
  OUTLINED_FUNCTION_1();
  v2 = v0[9];
  v1 = v0[10];

  v3 = v0[1];
  v4 = v0[16];

  return v3();
}

uint64_t sub_1975B9FFC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t CoreDonation.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_197615A60();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t CoreDonation.donationInfo.getter()
{
  v1 = *(v0 + *(type metadata accessor for CoreDonation() + 20));
}

uint64_t type metadata accessor for CoreDonation()
{
  result = qword_1EAF349B8;
  if (!qword_1EAF349B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1975BA154()
{
  sub_197615A60();
  if (v0 <= 0x3F)
  {
    sub_1975BA1D8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1975BA1D8()
{
  if (!qword_1EAF349C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF345E8, &qword_197619050);
    v0 = sub_197616110();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAF349C8);
    }
  }
}

void sub_1975BA24C(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_13_2(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1975BC460(v4, 1, sub_1975BB9D8);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_39_0();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v8 = *(v6 + 16);
  v5 = __OFADD__(v8, v1);
  v9 = v8 + v1;
  if (!v5)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1975BA308(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_13_2(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1975BC460(v4, 1, sub_1975BBBAC);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_39_0();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v8 = *(v6 + 16);
  v5 = __OFADD__(v8, v1);
  v9 = v8 + v1;
  if (!v5)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t CoreDonationRecord.date.getter()
{
  swift_getKeyPath();
  v1 = sub_197561290(&qword_1ED8171B8, type metadata accessor for CoreDonationRecord);
  OUTLINED_FUNCTION_29(v1, v2, v3, v4, v5, v6, v7, v8, v13, v0);
  sub_197615B20();

  swift_getKeyPath();
  OUTLINED_FUNCTION_6_2();
  sub_197561290(v9, type metadata accessor for CoreDonationRecord);
  OUTLINED_FUNCTION_2_8();
  sub_197561290(v10, v11);
  sub_197615E50();
}

uint64_t sub_1975BA4F4(uint64_t a1, uint64_t *a2)
{
  v3 = sub_197615A60();
  v4 = OUTLINED_FUNCTION_0(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_6_0();
  v9 = v8 - v7;
  v11 = *(v10 + 16);
  v12 = OUTLINED_FUNCTION_21_3();
  v13(v12);
  v14 = *a2;
  return CoreDonationRecord.date.setter(v9);
}

void (*CoreDonationRecord.date.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = sub_197615A60();
  v3[1] = v4;
  OUTLINED_FUNCTION_20_0(v4);
  v3[2] = v5;
  v7 = *(v6 + 64);
  v3[3] = __swift_coroFrameAllocStub(v7);
  v3[4] = __swift_coroFrameAllocStub(v7);
  CoreDonationRecord.date.getter();
  return sub_1975BA674;
}

void sub_1975BA674(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[3];
  v4 = (*a1)[4];
  if (a2)
  {
    v5 = v2[1];
    v6 = v2[2];
    v7 = *v2;
    (*(v6 + 16))((*a1)[3], v4, v5);
    CoreDonationRecord.date.setter(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    v8 = *v2;
    CoreDonationRecord.date.setter((*a1)[4]);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t CoreDonationRecord.donationInfo.getter()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_18_4();
  v3 = sub_197561290(v2, v1);
  OUTLINED_FUNCTION_29(v3, v4, v5, v6, v7, v8, v9, v10, v13, v0);
  sub_197615B20();

  swift_getKeyPath();
  OUTLINED_FUNCTION_6_2();
  sub_197561290(v11, v1);
  sub_197615DE0();

  return v14;
}

uint64_t sub_1975BA7FC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = CoreDonationRecord.donationInfo.getter();
  *a2 = result;
  return result;
}

uint64_t sub_1975BA828(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return CoreDonationRecord.donationInfo.setter(v4);
}

uint64_t (*CoreDonationRecord.donationInfo.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = CoreDonationRecord.donationInfo.getter();
  return sub_1975BA89C;
}

uint64_t sub_1975BA89C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if ((a2 & 1) == 0)
  {
    return CoreDonationRecord.donationInfo.setter(*a1);
  }

  v4 = *a1;

  CoreDonationRecord.donationInfo.setter(v5);
}

uint64_t CoreDonationRecord.event.getter()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_18_4();
  v3 = sub_197561290(v2, v1);
  OUTLINED_FUNCTION_29(v3, v4, v5, v6, v7, v8, v9, v10, v16, v0);
  sub_197615B20();

  swift_getKeyPath();
  OUTLINED_FUNCTION_6_2();
  sub_197561290(v11, v1);
  OUTLINED_FUNCTION_5_7();
  sub_197561290(v12, v13);
  OUTLINED_FUNCTION_21_3();
  v14 = sub_197615E30();

  return v14;
}

uint64_t sub_1975BA9F0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = CoreDonationRecord.event.getter();
  *a2 = result;
  return result;
}

uint64_t sub_1975BAA1C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return CoreDonationRecord.event.setter(v4);
}

uint64_t (*CoreDonationRecord.event.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = CoreDonationRecord.event.getter();
  return sub_1975BAA90;
}

uint64_t sub_1975BAA90(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if ((a2 & 1) == 0)
  {
    return CoreDonationRecord.event.setter(*a1);
  }

  v4 = *a1;

  CoreDonationRecord.event.setter(v5);
}

unint64_t CoreDonationRecord.description.getter()
{
  v0 = sub_197615A60();
  v1 = OUTLINED_FUNCTION_0(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_6_0();
  v8 = v7 - v6;
  v9 = 0xE000000000000000;
  sub_197616A20();

  if (CoreDonationRecord.event.getter())
  {
    v10 = CoreEventRecord.id.getter();
    v9 = v11;
  }

  else
  {
    v10 = 0;
  }

  MEMORY[0x19A8E2A50](v10, v9);

  MEMORY[0x19A8E2A50](0x203A65746164202CLL, 0xE800000000000000);
  CoreDonationRecord.date.getter();
  OUTLINED_FUNCTION_2_8();
  sub_197561290(v12, v13);
  v14 = sub_197616E80();
  MEMORY[0x19A8E2A50](v14);

  (*(v3 + 8))(v8, v0);
  MEMORY[0x19A8E2A50](41, 0xE100000000000000);
  return 0xD00000000000001ALL;
}

uint64_t CoreDonationRecord.__allocating_init(date:event:donationInfo:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  CoreDonationRecord.init(date:event:donationInfo:)(a1, a2, a3);
  return v9;
}

uint64_t sub_1975BACF4(uint64_t a1, uint64_t *a2)
{
  sub_19755A560(a1, v5);
  v3 = *a2;
  return CoreDonationRecord.persistentBackingData.setter(v5);
}

uint64_t CoreDonationRecord.persistentBackingData.setter(__int128 *a1)
{
  OUTLINED_FUNCTION_43_0();
  __swift_destroy_boxed_opaque_existential_0Tm((v1 + 24));
  sub_1975558C4(a1, v1 + 24);
  return swift_endAccess();
}

uint64_t (*CoreDonationRecord.persistentBackingData.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x88uLL);
  *a1 = v3;
  v3[16] = v1;
  OUTLINED_FUNCTION_35();
  swift_beginAccess();
  sub_19755A560(v1 + 24, v3);
  return sub_1975BADF8;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1Tm(uint64_t *a1)
{
  v1 = a1;
  OUTLINED_FUNCTION_31_2(a1[3]);
  if ((*(v2 + 82) & 2) != 0)
  {
    *v1 = swift_allocBox();
    return v3;
  }

  return v1;
}

uint64_t CoreDonationRecord.deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 24));
  v1 = OBJC_IVAR____TtC10TipKitCore18CoreDonationRecord___observationRegistrar;
  v2 = sub_197615B40();
  OUTLINED_FUNCTION_13(v2);
  (*(v3 + 8))(v0 + v1);
  return v0;
}

uint64_t CoreDonationRecord.hashValue.getter()
{
  v1 = *v0;
  sub_197617190();
  OUTLINED_FUNCTION_1_8();
  sub_197561290(v2, v3);
  sub_197616150();
  return sub_1976171F0();
}

uint64_t (*sub_1975BAFA0(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x88uLL);
  *a1 = v3;
  v3[16] = v1;
  swift_beginAccess();
  sub_19755A560(v1 + 24, v3);
  return sub_1975BC4D8;
}

void sub_1975BB01C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    sub_19755A560(*a1, v2 + 40);
    OUTLINED_FUNCTION_43_0();
    __swift_destroy_boxed_opaque_existential_0Tm((v3 + 24));
    sub_1975558C4((v2 + 40), v3 + 24);
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_0Tm(v2);
  }

  else
  {
    OUTLINED_FUNCTION_43_0();
    __swift_destroy_boxed_opaque_existential_0Tm((v3 + 24));
    sub_1975558C4(v2, v3 + 24);
    swift_endAccess();
  }

  free(v2);
}

uint64_t sub_1975BB0E8()
{
  v1 = *v0;
  sub_197561290(&qword_1ED8171B0, type metadata accessor for CoreDonationRecord);
  return sub_197615E20();
}

uint64_t sub_1975BB15C()
{
  v2 = *v0;
  sub_197617190();
  sub_197616150();
  return sub_1976171F0();
}

uint64_t sub_1975BB1BC()
{
  v1 = *v0;
  sub_197561290(&qword_1ED8171B0, type metadata accessor for CoreDonationRecord);
  return sub_197615DB0();
}

uint64_t sub_1975BB230(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = sub_197561290(&qword_1ED8171B0, type metadata accessor for CoreDonationRecord);

  return MEMORY[0x1EEDD9288](v3, v4, v2, v5);
}

void sub_1975BB2B0()
{
  OUTLINED_FUNCTION_17_2();
  if (v7)
  {
    OUTLINED_FUNCTION_4_6();
    if (v9 != v10)
    {
      OUTLINED_FUNCTION_16_4();
      if (v9)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_8();
    }
  }

  else
  {
    v8 = v6;
  }

  OUTLINED_FUNCTION_8_5(v8);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34A10, &qword_19761B638);
    v4 = 48;
    v11 = OUTLINED_FUNCTION_22_2();
    OUTLINED_FUNCTION_9_3(v11);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  OUTLINED_FUNCTION_42_1();
  if (v1)
  {
    if (v3 != v0 || v5 + 48 * v2 <= v4)
    {
      v13 = OUTLINED_FUNCTION_19_2();
      memmove(v13, v14, v15);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34A18, &qword_19761B640);
    OUTLINED_FUNCTION_12_3();
    swift_arrayInitWithCopy();
  }
}

void sub_1975BB398()
{
  OUTLINED_FUNCTION_17_2();
  if (v5)
  {
    OUTLINED_FUNCTION_4_6();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_16_4();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_8();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_8_5(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34A38, &qword_19761B660);
    v9 = OUTLINED_FUNCTION_34_1();
    OUTLINED_FUNCTION_23_2(v9);
    OUTLINED_FUNCTION_25_1();
    v9[2] = v2;
    v9[3] = v10;
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v11 = OUTLINED_FUNCTION_38_0();
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v2] <= v11)
    {
      memmove(v11, v12, 16 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1975BB46C()
{
  OUTLINED_FUNCTION_17_2();
  if (v7)
  {
    OUTLINED_FUNCTION_4_6();
    if (v9 != v10)
    {
      OUTLINED_FUNCTION_16_4();
      if (v9)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_8();
    }
  }

  else
  {
    v8 = v6;
  }

  OUTLINED_FUNCTION_8_5(v8);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AA8, &unk_19761B6D8);
    v11 = OUTLINED_FUNCTION_34_1();
    OUTLINED_FUNCTION_23_2(v11);
    OUTLINED_FUNCTION_25_1();
    v11[2] = v2;
    v11[3] = v12;
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  OUTLINED_FUNCTION_42_1();
  if (v1)
  {
    if (v11 != v0 || v5 + 8 * v2 <= v4)
    {
      v14 = OUTLINED_FUNCTION_19_2();
      memmove(v14, v15, v16);
    }

    v0[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34390, &qword_197618390);
    OUTLINED_FUNCTION_12_3();
    swift_arrayInitWithCopy();
  }
}

void sub_1975BB55C()
{
  OUTLINED_FUNCTION_17_2();
  if (v7)
  {
    OUTLINED_FUNCTION_4_6();
    if (v9 != v10)
    {
      OUTLINED_FUNCTION_16_4();
      if (v9)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_8();
    }
  }

  else
  {
    v8 = v6;
  }

  OUTLINED_FUNCTION_8_5(v8);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AA0, &qword_19761E6B0);
    v4 = 48;
    v11 = OUTLINED_FUNCTION_22_2();
    OUTLINED_FUNCTION_9_3(v11);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  OUTLINED_FUNCTION_42_1();
  if (v1)
  {
    if (v3 != v0 || v5 + 48 * v2 <= v4)
    {
      v13 = OUTLINED_FUNCTION_19_2();
      memmove(v13, v14, v15);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF349B0, &qword_19761B200);
    OUTLINED_FUNCTION_12_3();
    swift_arrayInitWithCopy();
  }
}

void sub_1975BB644()
{
  OUTLINED_FUNCTION_17_2();
  if (v7)
  {
    OUTLINED_FUNCTION_4_6();
    if (v9 != v10)
    {
      OUTLINED_FUNCTION_16_4();
      if (v9)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_8();
    }
  }

  else
  {
    v8 = v6;
  }

  OUTLINED_FUNCTION_8_5(v8);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34A28, &qword_19761B650);
    v4 = 24;
    v11 = OUTLINED_FUNCTION_22_2();
    OUTLINED_FUNCTION_9_3(v11);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  OUTLINED_FUNCTION_42_1();
  if (v1)
  {
    if (v3 != v0 || v5 + 24 * v2 <= v4)
    {
      v13 = OUTLINED_FUNCTION_19_2();
      memmove(v13, v14, v15);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34A30, &qword_19761B658);
    OUTLINED_FUNCTION_12_3();
    swift_arrayInitWithCopy();
  }
}

void sub_1975BB72C()
{
  OUTLINED_FUNCTION_17_2();
  if (v5)
  {
    OUTLINED_FUNCTION_4_6();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_16_4();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_8();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_8_5(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34A80, &qword_19761B6B0);
    v9 = OUTLINED_FUNCTION_22_2();
    OUTLINED_FUNCTION_9_3(v9);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  v10 = OUTLINED_FUNCTION_38_0();
  if (v1)
  {
    if (v3 != v0 || &v11[88 * v2] <= v10)
    {
      memmove(v10, v11, 88 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1975BB800()
{
  OUTLINED_FUNCTION_17_2();
  if (v5)
  {
    OUTLINED_FUNCTION_4_6();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_16_4();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_8();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_27_1(v6);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34A70, &qword_19761B698);
    v9 = swift_allocObject();
    OUTLINED_FUNCTION_23_2(v9);
    OUTLINED_FUNCTION_25_1();
    v9[2] = v3;
    v9[3] = v10;
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  if (v1)
  {
    if (v9 != v0 || &v0[40 * v3 + 4] <= v9 + 4)
    {
      v12 = OUTLINED_FUNCTION_19_2();
      memmove(v12, v13, v14);
    }

    v0[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF346C8, &qword_19761B6A0);
    OUTLINED_FUNCTION_12_3();
    swift_arrayInitWithCopy();
  }
}

void sub_1975BB904()
{
  OUTLINED_FUNCTION_17_2();
  if (v5)
  {
    OUTLINED_FUNCTION_4_6();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_16_4();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_8();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_8_5(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF348A8, &qword_19761A890);
    v9 = OUTLINED_FUNCTION_22_2();
    OUTLINED_FUNCTION_9_3(v9);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  v10 = OUTLINED_FUNCTION_38_0();
  if (v1)
  {
    if (v3 != v0 || &v11[144 * v2] <= v10)
    {
      memmove(v10, v11, 144 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1975BB9D8()
{
  OUTLINED_FUNCTION_17_2();
  if (v5)
  {
    OUTLINED_FUNCTION_4_6();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_16_4();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_8();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_27_1(v6);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34A88, &qword_19761B6B8);
    v9 = swift_allocObject();
    OUTLINED_FUNCTION_23_2(v9);
    *(v9 + 2) = v3;
    *(v9 + 3) = 2 * (v10 / 80);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[80 * v3] <= v11)
    {
      memmove(v11, v12, 80 * v3);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1975BBAC8()
{
  OUTLINED_FUNCTION_28_1();
  if (v3)
  {
    OUTLINED_FUNCTION_26_2();
    if (v5 != v6)
    {
      if (v4 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_30_3();
    }
  }

  else
  {
    v4 = v2;
  }

  sub_1975620C4(*(v0 + 16), v4, &qword_1EAF34A78, &qword_19761B6A8, MEMORY[0x1E697BC90]);
  OUTLINED_FUNCTION_40_0();
  v7 = sub_197615F50();
  OUTLINED_FUNCTION_31_2(v7);
  v9 = *(v8 + 80);
  OUTLINED_FUNCTION_41_0();
  if (v1)
  {
    OUTLINED_FUNCTION_33_1(MEMORY[0x1E697BC90], v10);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_24_1();
  }
}

char *sub_1975BBBAC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34A98, &unk_19761B6C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 64);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[64 * v8] <= v12)
    {
      memmove(v12, v13, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1975BBCB4()
{
  OUTLINED_FUNCTION_17_2();
  if (v5)
  {
    OUTLINED_FUNCTION_4_6();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_16_4();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_8();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_27_1(v6);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34A90, &qword_19761B6C0);
    v9 = swift_allocObject();
    OUTLINED_FUNCTION_23_2(v9);
    *(v9 + 2) = v3;
    *(v9 + 3) = 2 * (v10 / 24);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  v13 = 24 * v3;
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

void sub_1975BBEA4()
{
  OUTLINED_FUNCTION_28_1();
  if (v3)
  {
    OUTLINED_FUNCTION_26_2();
    if (v5 != v6)
    {
      if (v4 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_30_3();
    }
  }

  else
  {
    v4 = v2;
  }

  sub_1975620C4(*(v0 + 16), v4, &qword_1EAF34A20, &qword_19761B648, MEMORY[0x1E6969530]);
  OUTLINED_FUNCTION_40_0();
  v7 = sub_197615A60();
  OUTLINED_FUNCTION_31_2(v7);
  v9 = *(v8 + 80);
  OUTLINED_FUNCTION_41_0();
  if (v1)
  {
    OUTLINED_FUNCTION_33_1(MEMORY[0x1E6969530], v10);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_24_1();
  }
}

void sub_1975BBFAC(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  if (a3)
  {
    OUTLINED_FUNCTION_4_6();
    if (v13 != v14)
    {
      OUTLINED_FUNCTION_16_4();
      if (v13)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_8();
    }
  }

  else
  {
    v12 = a2;
  }

  v15 = *(a4 + 16);
  v16 = sub_1975BC17C(v15, v12, a5, a6);
  v17 = OUTLINED_FUNCTION_21_3();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(v17, v18);
  OUTLINED_FUNCTION_31_2(v19);
  v21 = *(v20 + 80);
  OUTLINED_FUNCTION_41_0();
  if (a1)
  {
    sub_1975BC378(a4 + v22, v15, v16 + v22, a7, a8);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void *sub_1975BC0A4(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34A38, &qword_19761B660);
  v4 = OUTLINED_FUNCTION_34_1();
  OUTLINED_FUNCTION_23_2(v4);
  OUTLINED_FUNCTION_25_1();
  v4[2] = a1;
  v4[3] = v5;
  return v4;
}

void *sub_1975BC110(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34A40, &qword_19761B668);
  v4 = OUTLINED_FUNCTION_34_1();
  OUTLINED_FUNCTION_23_2(v4);
  OUTLINED_FUNCTION_25_1();
  v4[2] = a1;
  v4[3] = v5;
  return v4;
}

size_t sub_1975BC17C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = OUTLINED_FUNCTION_21_3();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_20_0(v8);
  v10 = *(v9 + 72);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (v10)
  {
    if (result - v12 != 0x8000000000000000 || v10 != -1)
    {
      v13[2] = a1;
      v13[3] = 2 * ((result - v12) / v10);
      return v13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_1975BC270(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[32 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_12(a3, result);
  }

  return result;
}

char *sub_1975BC290(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_12(a3, result);
  }

  return result;
}

char *sub_1975BC2B0(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[48 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_12(a3, result);
  }

  return result;
}

char *sub_1975BC2F0(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_12(a3, result);
  }

  return result;
}

char *sub_1975BC318(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[64 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_12(a3, result);
  }

  return result;
}

char *sub_1975BC338(char *__src, size_t __len, char *__dst)
{
  if (__dst != __src || &__src[__len] <= __dst)
  {
    return memmove(__dst, __src, __len);
  }

  return __src;
}

uint64_t sub_1975BC378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  OUTLINED_FUNCTION_36_1();
  if (v10 && (v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5), result = OUTLINED_FUNCTION_13(v11), v6 + *(v13 + 72) * v5 > v7))
  {
    if (v7 != v6)
    {
      v14 = OUTLINED_FUNCTION_11_3();

      return MEMORY[0x1EEE6BCF8](v14);
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    v15 = OUTLINED_FUNCTION_11_3();

    return MEMORY[0x1EEE6BD00](v15);
  }

  return result;
}

char *sub_1975BC440(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_12(a3, result);
  }

  return result;
}

uint64_t sub_1975BC460(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    if (*(v6 + 16) > a1)
    {
      v8 = *(v6 + 16);
    }

    result = a3();
    *v3 = result;
  }

  return result;
}

uint64_t *sub_1975BC4DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v81 = a4;
  v69 = a3;
  v82 = a2;
  v83 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AB8, &qword_197622080);
  OUTLINED_FUNCTION_5_2(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  v68 = &v67 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AC0, &qword_19761B6F0);
  OUTLINED_FUNCTION_5_2(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  v71 = &v67 - v13;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AC8, &unk_197622310);
  v79 = *(v73 - 8);
  v14 = *(v79 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  v70 = &v67 - v16;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AD0, &qword_19761B6F8);
  v17 = *(v80 - 8);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v67 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AD8, &unk_1976222C0);
  v23 = *(v22 - 8);
  v24 = v23;
  v25 = *(v23 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v67 - v27;
  swift_getKeyPath();
  sub_197567E50(&qword_1ED816CD8, MEMORY[0x1E6969530]);
  sub_197615640();
  v92 = v83;
  v93 = v82;
  v29 = type metadata accessor for CoreEventRecord();
  v96 = v29;
  sub_197615AE0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AE0, &unk_197622300);
  v30 = *(v23 + 72);
  v31 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_197618C10;
  v77 = v24;
  v33 = *(v24 + 16);
  v76 = v28;
  v75 = v22;
  v33(v32 + v31, v28, v22);
  v72 = v17;
  v34 = v17;
  v35 = v70;
  v36 = *(v34 + 16);
  v37 = v71;
  v78 = v21;
  v38 = v21;
  v39 = v80;
  v36(v71, v38, v80);
  __swift_storeEnumTagSinglePayload(v37, 0, 1, v39);
  v40 = sub_197567E50(&qword_1ED817218, type metadata accessor for CoreEventRecord);
  v41 = MEMORY[0x1E69E7CC0];
  sub_197615D90();
  v90 = v29;
  v91 = v40;
  swift_getKeyPath();
  v94 = 1;
  LOBYTE(v95) = 0;
  OUTLINED_FUNCTION_4_7();
  swift_setAtWritableKeyPath();

  v88 = v29;
  v89 = v40;
  swift_getKeyPath();
  LOBYTE(v94) = 0;
  OUTLINED_FUNCTION_4_7();
  swift_setAtWritableKeyPath();

  v86 = v29;
  v87 = v40;
  swift_getKeyPath();
  v94 = v41;
  OUTLINED_FUNCTION_4_7();
  swift_setAtWritableKeyPath();

  v84 = v29;
  v85 = v40;
  swift_getKeyPath();
  v94 = v32;
  OUTLINED_FUNCTION_4_7();
  swift_setAtWritableKeyPath();

  v42 = v74;
  v43 = sub_197615C80();
  if (v42)
  {

    (*(v79 + 8))(v35, v73);
    v44 = OUTLINED_FUNCTION_3_9();
    v45(v44, v39);
    v46 = OUTLINED_FUNCTION_1_9();
    v47(v46);
    v94 = 0;
    v95 = 0xE000000000000000;
    sub_197616A20();

    v94 = 0xD000000000000026;
    v95 = 0x80000001976242A0;
    MEMORY[0x19A8E2A50](v83, v82);
    MEMORY[0x19A8E2A50](41, 0xE100000000000000);
    v48 = v94;
    v49 = v95;
    sub_19759228C();
    swift_allocError();
    *v50 = v48;
    v50[1] = v49;
    swift_willThrow();
  }

  else
  {
    v51 = v43;
    v52 = sub_197567E4C(v43);
    v53 = v73;
    if (v52)
    {
      sub_1975692BC(0, (v51 & 0xC000000000000001) == 0, v51);
      if ((v51 & 0xC000000000000001) != 0)
      {
        MEMORY[0x19A8E31E0](0, v51);
      }

      else
      {
        v54 = *(v51 + 32);
      }
    }

    else
    {

      v55 = *(v29 + 48);
      v56 = *(v29 + 52);
      swift_allocObject();

      CoreEventRecord.init(id:)();
      sub_197615CD0();
    }

    (*(v79 + 8))(v35, v53);
    v57 = OUTLINED_FUNCTION_3_9();
    v58(v57, v80);
    v59 = OUTLINED_FUNCTION_1_9();
    v60(v59);
    if (v52)
    {
      v61 = v81;
      sub_1975901DC(v81);
      v62 = v83;
    }

    else
    {
      v62 = v83;
      v61 = v81;
    }

    v63 = v69;
    if (sub_197615C20())
    {
      sub_197615C70();
    }

    v64 = v68;
    sub_197615DB0();
    v65 = sub_197615F50();
    __swift_storeEnumTagSinglePayload(v64, 0, 1, v65);
    v48 = sub_197594C4C(v62, v82, v64, v63, v61);
    sub_19756E748(v64);
  }

  return v48;
}

uint64_t sub_1975BCCB8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v24 = a2;
  v25 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AE8, &qword_19761B848);
  v7 = *(v6 - 8);
  v26 = v6;
  v27 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AF0, &unk_197622320);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v24 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AF8, &qword_19761B850);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v24 - v19;
  v21 = *a1;
  sub_197559AAC(&qword_1ED8164C0, &qword_1EAF34AF0, &unk_197622320);
  sub_197615820();
  swift_getKeyPath();
  sub_197615700();

  (*(v12 + 8))(v15, v11);
  v28 = v24;
  v29 = v25;
  sub_197615810();
  a4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34B00, &qword_19761B880);
  a4[4] = sub_19758F80C();
  __swift_allocate_boxed_opaque_existential_0(a4);
  sub_197559AAC(&qword_1ED8164D0, &qword_1EAF34AF8, &qword_19761B850);
  sub_197559AAC(&qword_1ED816D00, &qword_1EAF34AE8, &qword_19761B848);
  v22 = v26;
  sub_1976156F0();
  (*(v27 + 8))(v10, v22);
  return (*(v17 + 8))(v20, v16);
}

uint64_t sub_1975BD02C(uint64_t a1)
{
  v1 = 0;
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  v4 = a1 + 32;
  while (1)
  {
    v5 = ~v1;
    v6 = v4 + 80 * v1;
    v7 = v2 - v1;
    if (!v7)
    {
      break;
    }

    while (1)
    {
      sub_19755FA5C(v6, __src, &qword_1EAF34920, &qword_19761B118);
      memcpy(__dst, __src, 0x49uLL);
      if (__dst[1])
      {
        break;
      }

      sub_19755C404(__dst, &qword_1EAF34920, &qword_19761B118);
      --v5;
      v6 += 80;
      if (!--v7)
      {
        return v3;
      }
    }

    memcpy(v13, __src, sizeof(v13));
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = *(v3 + 16);
      sub_1975BB9D8();
      v3 = v10;
    }

    v8 = *(v3 + 16);
    if (v8 >= *(v3 + 24) >> 1)
    {
      sub_1975BB9D8();
      v3 = v11;
    }

    v1 = -v5;
    *(v3 + 16) = v8 + 1;
    memcpy((v3 + 80 * v8 + 32), v13, 0x49uLL);
  }

  return v3;
}

uint64_t sub_1975BD188(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34A48, &qword_19761B670);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v31 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v26 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34B08, &qword_19761B888);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8 - 8);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v26 - v14;
  v16 = 0;
  v17 = *(a1 + 16);
  v29 = v3;
  v32 = (v3 + 32);
  v33 = MEMORY[0x1E69E7CC0];
  while (v17 != v16)
  {
    sub_19755FA5C(a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v16, v15, &qword_1EAF34B08, &qword_19761B888);
    sub_1975BEA00(v15, v13);
    if (__swift_getEnumTagSinglePayload(v13, 1, v2) == 1)
    {
      sub_19755C404(v13, &qword_1EAF34B08, &qword_19761B888);
      ++v16;
    }

    else
    {
      v18 = *v32;
      (*v32)(v30, v13, v2);
      v28 = v18;
      v18(v31, v30, v2);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1975BBE80(0, *(v33 + 16) + 1, 1, v33);
        v33 = v23;
      }

      v20 = *(v33 + 16);
      v19 = *(v33 + 24);
      v21 = v20 + 1;
      if (v20 >= v19 >> 1)
      {
        v27 = v20 + 1;
        sub_1975BBE80(v19 > 1, v20 + 1, 1, v33);
        v21 = v27;
        v33 = v24;
      }

      ++v16;
      v22 = v33;
      *(v33 + 16) = v21;
      v28((v22 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v20), v31, v2);
    }
  }

  return v33;
}

void sub_1975BD49C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34A48, &qword_19761B670);
  v10 = OUTLINED_FUNCTION_0(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v16 = &v31 - v15;
  type metadata accessor for CoreEventRecord();
  sub_1975C6778();
  if (!v4)
  {
    v18 = v17;
    if (v17)
    {
      v32 = &v31;
      MEMORY[0x1EEE9AC00](v17);
      OUTLINED_FUNCTION_2_0();
      *(v19 - 16) = a1;
      *(v19 - 8) = a2;
      v35 = v5;
      OUTLINED_FUNCTION_5_8();
      sub_197615AE0();
      OUTLINED_FUNCTION_4_8();
      sub_1975FD7C0(v20, v21, v22, v23, v24, v25, v26, v16, v31, v32);
      (*(v12 + 8))(v16, v9);
      type metadata accessor for CoreRuleRecord();
      sub_197597C40(v18, a3);
      if (qword_1ED816C98 != -1)
      {
        OUTLINED_FUNCTION_5_0();
      }

      v30 = type metadata accessor for logger();
      __swift_project_value_buffer(v30, qword_1ED816CA0);
      OUTLINED_FUNCTION_1_10();
      sub_197616A20();

      v33 = 0x646928746E657645;
      v34 = 0xEA0000000000203ALL;
      MEMORY[0x19A8E2A50](a1, a2);
      MEMORY[0x19A8E2A50](0xD000000000000018, 0x80000001976243D0);
      sub_197558864();
    }

    else
    {
      OUTLINED_FUNCTION_1_10();
      sub_197616A20();

      v33 = 0xD000000000000024;
      v34 = 0x80000001976243A0;
      MEMORY[0x19A8E2A50](a1, a2);
      v27 = v33;
      v28 = v34;
      sub_19759228C();
      swift_allocError();
      *v29 = v27;
      v29[1] = v28;
      swift_willThrow();
    }
  }
}

uint64_t sub_1975BD798(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v59 = a2;
  v49 = sub_1976157A0();
  v54 = *(v49 - 8);
  v10 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v48 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34A48, &qword_19761B670);
  v52 = *(v12 - 8);
  v53 = v12;
  v13 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v51 = &v47 - v14;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34B10, &qword_19761B8B8);
  v15 = *(v58 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v58);
  v18 = &v47 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34988, &qword_197620CA0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v47 - v21;
  v23 = sub_197615A60();
  v56 = *(v23 - 8);
  v57 = v23;
  v24 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v47 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_197567E98(&qword_1ED816CD8);

  v55 = a4;
  sub_197615640();
  v50 = a1;
  v27 = v60;
  sub_1975BE090(a3, v22);
  result = (*(v15 + 8))(v18, v58);
  if (!v27)
  {
    v29 = a5;
    v59 = v5;
    v60 = a3;
    v30 = v56;
    v31 = v54;
    if (__swift_getEnumTagSinglePayload(v22, 1, v57) == 1)
    {
      return sub_19755C404(v22, &qword_1EAF34988, &qword_197620CA0);
    }

    else
    {
      (*(v30 + 32))(v26, v22, v57);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34B18, &qword_19761B8C0);
      v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34B08, &qword_19761B888) - 8);
      v58 = 0;
      v33 = *(v32 + 72);
      v34 = (*(v32 + 80) + 32) & ~*(v32 + 80);
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_197618C00;
      v36 = v35 + v34;
      sub_19755FA5C(v29, v36, &qword_1EAF34B08, &qword_19761B888);
      v37 = sub_197615AF0();
      v38 = v31;
      v39 = MEMORY[0x1E6968C38];
      if ((v37 & 1) == 0)
      {
        v39 = MEMORY[0x1E6968C30];
      }

      v40 = v48;
      v41 = v49;
      v42 = (*(v31 + 104))(v48, *v39, v49);
      MEMORY[0x1EEE9AC00](v42);
      v43 = v59;
      *(&v47 - 4) = v60;
      *(&v47 - 3) = v26;
      *(&v47 - 2) = v40;
      v61 = v43;
      sub_197615AE0();
      (*(v38 + 8))(v40, v41);
      v44 = v36 + v33;
      v45 = v53;
      __swift_storeEnumTagSinglePayload(v44, 0, 1, v53);
      v46 = v51;
      sub_1975BE1CC(v35, v51);
      swift_setDeallocating();
      sub_1975BE974();
      sub_1975FD26C();
      (*(v52 + 8))(v46, v45);
      return (*(v56 + 8))(v26, v57);
    }
  }

  return result;
}

uint64_t sub_1975BDD44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34B08, &qword_19761B888);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v32 - v14;
  v36 = a1;
  v37 = a2;
  v39 = v4;
  sub_197615AE0();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34A48, &qword_19761B670);
  OUTLINED_FUNCTION_3_10();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v16);
  sub_1975913B8();
  v21 = v20;
  result = sub_19755C404(v15, &qword_1EAF34B08, &qword_19761B888);
  if (!v5)
  {
    v34 = a1;
    v23 = v35;
    if (v21 >= v35)
    {
      v33 = v21;
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      OUTLINED_FUNCTION_2_0();
      *(v25 - 16) = v34;
      *(v25 - 8) = a2;
      OUTLINED_FUNCTION_5_8();
      sub_197615AE0();
      OUTLINED_FUNCTION_3_10();
      __swift_storeEnumTagSinglePayload(v26, v27, v28, v16);
      sub_1975BD798(a4, v23, KeyPath, 1, v13);
      sub_19755C404(v13, &qword_1EAF34B08, &qword_19761B888);

      v32[1] = 0;
      v32[2] = v32;
      if (qword_1ED816C98 != -1)
      {
        OUTLINED_FUNCTION_5_0();
      }

      v29 = type metadata accessor for logger();
      __swift_project_value_buffer(v29, qword_1ED816CA0);
      OUTLINED_FUNCTION_1_10();
      sub_197616A20();
      OUTLINED_FUNCTION_7_3();
      MEMORY[0x19A8E2A50](v34, a2);
      MEMORY[0x19A8E2A50](0xD000000000000029, 0x8000000197624340);
      v38 = v33;
      v30 = sub_197616E80();
      MEMORY[0x19A8E2A50](v30);

      OUTLINED_FUNCTION_9_4();
      v38 = v23;
      v31 = sub_197616E80();
      MEMORY[0x19A8E2A50](v31);

      sub_197558864();
    }
  }

  return result;
}

uint64_t sub_1975BE090@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF345D0, &qword_19761B410);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_197619030;
  *(v3 + 32) = a1;

  sub_1975E6A30();
  v5 = v4;

  if (!v11)
  {
    if (v5)
    {
      swift_getAtKeyPath();

      v7 = sub_197615A60();
      v8 = a2;
      v9 = 0;
    }

    else
    {
      v7 = sub_197615A60();
      v8 = a2;
      v9 = 1;
    }

    return __swift_storeEnumTagSinglePayload(v8, v9, 1, v7);
  }

  return result;
}

uint64_t sub_1975BE1CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34B08, &qword_19761B888);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v36 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34A48, &qword_19761B670);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v36 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v36 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v36 - v20;
  v22 = sub_1975BD188(a1);
  sub_1976075F4(v22, v7);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {

    sub_19755C404(v7, &qword_1EAF34B08, &qword_19761B888);
    v45 = type metadata accessor for CoreDonationRecord();
    return sub_197615AB0();
  }

  v40 = a2;
  v43 = *(v9 + 32);
  v44 = v9 + 32;
  v43(v21, v7, v8);
  v24 = sub_197611D9C(1, v22);
  v39 = v25;
  v27 = v26;
  v29 = v28;
  v42 = *(v9 + 16);
  result = v42(v19, v21, v8);
  if (v27 == v29 >> 1)
  {
    swift_unknownObjectRelease();
    v30 = v40;
    (*(v9 + 8))(v21, v8);
  }

  else
  {
    v38 = v24;
    if (v27 >= (v29 >> 1))
    {
      __break(1u);
      return result;
    }

    v37 = v21;
    v31 = (v9 + 8);
    v32 = ~v27 + (v29 >> 1);
    v41 = *(v9 + 72);
    v33 = v39 + v27 * v41;
    v39 = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    while (1)
    {
      v34 = v42(v16, v33, v8);
      MEMORY[0x1EEE9AC00](v34);
      *(&v36 - 2) = v19;
      *(&v36 - 1) = v16;
      v45 = type metadata accessor for CoreDonationRecord();
      sub_197615AE0();
      v35 = *v31;
      (*v31)(v16, v8);
      v35(v19, v8);
      v43(v19, v13, v8);
      if (!v32)
      {
        break;
      }

      --v32;
      v33 += v41;
    }

    swift_unknownObjectRelease();
    v30 = v40;
    v35(v37, v8);
  }

  return (v43)(v30, v19, v8);
}

uint64_t sub_1975BE590@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v28 = a4;
  v25[1] = a2;
  v25[2] = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34B20, &unk_19761E5E0);
  v8 = *(v7 - 8);
  v26 = v7;
  v27 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v25 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34B28, &qword_19761B8C8);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v25 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34B30, &qword_19761E5F0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = v25 - v20;
  v22 = *a1;
  sub_197559AAC(&qword_1ED8164B0, &qword_1EAF34B28, &qword_19761B8C8);
  sub_197615820();
  sub_197615700();
  (*(v13 + 8))(v16, v12);
  sub_197615A60();
  sub_197615810();
  a5[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34B38, &qword_19761E620);
  a5[4] = sub_1975920D8();
  __swift_allocate_boxed_opaque_existential_0(a5);
  sub_197559AAC(&qword_1ED8161F8, &qword_1EAF34B30, &qword_19761E5F0);
  sub_197559AAC(&qword_1ED8164E0, &qword_1EAF34B20, &unk_19761E5E0);
  sub_197567E98(&qword_1ED816CD8);
  v23 = v26;
  sub_197615760();
  (*(v27 + 8))(v11, v23);
  return (*(v18 + 8))(v21, v17);
}

uint64_t sub_1975BE914()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34920, &qword_19761B118);
  swift_arrayDestroy();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1975BE974()
{
  v1 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34B08, &qword_19761B888) - 8) + 80);
  v2 = *(v0 + 16);
  swift_arrayDestroy();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1975BEA00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34B08, &qword_19761B888);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1975BEA74()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_4_9();
  v0 = OUTLINED_FUNCTION_17_3();
  OUTLINED_FUNCTION_5_2(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_12_4();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AC8, &unk_197622310);
  OUTLINED_FUNCTION_0(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_3_11();
  type metadata accessor for CoreEventRecord();
  sub_19759152C(&qword_1ED817218, type metadata accessor for CoreEventRecord);
  OUTLINED_FUNCTION_8_6();
  swift_getKeyPath();
  OUTLINED_FUNCTION_5_9();

  OUTLINED_FUNCTION_9_5();
  v8 = OUTLINED_FUNCTION_2_9();
  v9(v8);
  OUTLINED_FUNCTION_11_4();
  OUTLINED_FUNCTION_19_0();
}

void sub_1975BEBD4()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_4_9();
  v0 = OUTLINED_FUNCTION_17_3();
  OUTLINED_FUNCTION_5_2(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_12_4();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF346D0, &unk_197622090);
  OUTLINED_FUNCTION_0(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_3_11();
  type metadata accessor for CoreTipRecord();
  sub_19759152C(&qword_1ED8170E0, type metadata accessor for CoreTipRecord);
  OUTLINED_FUNCTION_8_6();
  swift_getKeyPath();
  OUTLINED_FUNCTION_5_9();

  OUTLINED_FUNCTION_9_5();
  v8 = OUTLINED_FUNCTION_2_9();
  v9(v8);
  OUTLINED_FUNCTION_11_4();
  OUTLINED_FUNCTION_19_0();
}

void sub_1975BED34()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_4_9();
  v0 = OUTLINED_FUNCTION_17_3();
  OUTLINED_FUNCTION_5_2(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_12_4();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34BA8, &qword_19761BAC8);
  OUTLINED_FUNCTION_0(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_3_11();
  type metadata accessor for CoreParameterRecord();
  sub_19759152C(&qword_1ED817148, type metadata accessor for CoreParameterRecord);
  OUTLINED_FUNCTION_8_6();
  swift_getKeyPath();
  OUTLINED_FUNCTION_5_9();

  OUTLINED_FUNCTION_9_5();
  v8 = OUTLINED_FUNCTION_2_9();
  v9(v8);
  OUTLINED_FUNCTION_11_4();
  OUTLINED_FUNCTION_19_0();
}

uint64_t sub_1975BEE94(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v35[3] = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34B40, &unk_197622360);
  v9 = OUTLINED_FUNCTION_0(v8);
  v36 = v10;
  v37 = v9;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  v15 = v35 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34B08, &qword_19761B888);
  v17 = OUTLINED_FUNCTION_5_2(v16);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = v35 - v23;
  v26 = *a3;
  v25 = a3[1];
  v27 = *(a3 + 16);
  v35[1] = a1;
  v35[2] = a2;
  sub_197593D50(a1, a2, v25, v27);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34A48, &qword_19761B670);
  __swift_storeEnumTagSinglePayload(v24, 0, 1, v28);
  sub_19755FA5C(v24, v22, &qword_1EAF34B08, &qword_19761B888);
  OUTLINED_FUNCTION_6_4();
  v31 = sub_19759152C(v29, v30);
  v32 = MEMORY[0x1E69E7CC0];
  sub_197615D90();
  v48 = v4;
  v49 = v31;
  swift_getKeyPath();
  v50 = v26;
  LOBYTE(v51) = 0;
  OUTLINED_FUNCTION_10_3();

  v46 = v4;
  v47 = v31;
  swift_getKeyPath();
  v50 = 0;
  LOBYTE(v51) = 1;
  OUTLINED_FUNCTION_10_3();

  v44 = v4;
  v45 = v31;
  swift_getKeyPath();
  LOBYTE(v50) = 0;
  OUTLINED_FUNCTION_10_3();

  v42 = v4;
  v43 = v31;
  swift_getKeyPath();
  v50 = v32;
  OUTLINED_FUNCTION_10_3();

  v40 = v4;
  v41 = v31;
  swift_getKeyPath();
  v50 = v32;
  OUTLINED_FUNCTION_10_3();

  v38 = v4;
  v39 = v31;
  swift_getKeyPath();
  v50 = v32;
  OUTLINED_FUNCTION_10_3();

  v33 = sub_197615C80();
  (*(v36 + 8))(v15, v37);
  sub_197593F1C(v24);
  return v33;
}

uint64_t sub_1975BF338@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v40 = a2;
  v43 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34B28, &qword_19761B8C8);
  OUTLINED_FUNCTION_0(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v37 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34B50, &qword_19761BAA8);
  OUTLINED_FUNCTION_0(v12);
  v14 = v13;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v17);
  v19 = v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34B58, &qword_19761BAB0);
  v41 = OUTLINED_FUNCTION_0(v20);
  v42 = v21;
  v23 = *(v22 + 64);
  v24 = MEMORY[0x1EEE9AC00](v41);
  v39 = v37 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v38 = v37 - v26;
  v37[0] = *a1;
  v37[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34A48, &qword_19761B670);
  sub_197615810();
  v27 = sub_197559AAC(&qword_1ED8164B0, &qword_1EAF34B28, &qword_19761B8C8);
  sub_197615820();
  v46 = v4;
  v47 = v11;
  sub_197559AAC(&qword_1EAF34B60, &qword_1EAF34B50, &qword_19761BAA8);
  v45 = v27;
  OUTLINED_FUNCTION_15_4();
  v28 = *(v14 + 8);
  v28(v19, v12);
  v29 = *(v6 + 8);
  v29(v11, v4);
  sub_197615810();
  sub_197615820();
  v44 = v11;
  v30 = v39;
  OUTLINED_FUNCTION_15_4();
  v28(v19, v12);
  v29(v11, v4);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34B68, &qword_19761BAB8);
  v32 = v43;
  v43[3] = v31;
  v32[4] = sub_1975BF738();
  __swift_allocate_boxed_opaque_existential_0(v32);
  sub_197559AAC(&qword_1EAF34B98, &qword_1EAF34B58, &qword_19761BAB0);
  v33 = v38;
  v34 = v41;
  sub_197615780();
  v35 = *(v42 + 8);
  v35(v30, v34);
  return (v35)(v33, v34);
}

unint64_t sub_1975BF738()
{
  result = qword_1EAF34B70;
  if (!qword_1EAF34B70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF34B68, &qword_19761BAB8);
    sub_1975BF7BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF34B70);
  }

  return result;
}

unint64_t sub_1975BF7BC()
{
  result = qword_1EAF34B78;
  if (!qword_1EAF34B78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF34B58, &qword_19761BAB0);
    sub_1975BF87C();
    sub_197559AAC(&qword_1ED8164B8, &qword_1EAF34B28, &qword_19761B8C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF34B78);
  }

  return result;
}

unint64_t sub_1975BF87C()
{
  result = qword_1EAF34B80;
  if (!qword_1EAF34B80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF34B50, &qword_19761BAA8);
    sub_197559AAC(&qword_1EAF34B88, &qword_1EAF34A48, &qword_19761B670);
    sub_197559AAC(&qword_1EAF34B90, &qword_1EAF34A48, &qword_19761B670);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF34B80);
  }

  return result;
}

uint64_t sub_1975BF990(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v21 = MEMORY[0x1E69E7CC0];
  result = sub_197567E4C(a3);
  v8 = result;
  v9 = 0;
  v10 = v4 & 0xC000000000000001;
  v18 = v4;
  v19 = v4 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v8 == v9)
    {

      return v21;
    }

    if (v10)
    {
      result = MEMORY[0x19A8E31E0](v9, v4);
      v11 = result;
    }

    else
    {
      if (v9 >= *(v19 + 16))
      {
        goto LABEL_16;
      }

      v11 = *(v4 + 8 * v9 + 32);
    }

    if (__OFADD__(v9, 1))
    {
      break;
    }

    v20 = v11;
    v12 = a1(&v20);
    if (v3)
    {
    }

    if (v12)
    {
      sub_197616AD0();
      v13 = v8;
      v14 = v10;
      v15 = a1;
      v16 = a2;
      v17 = *(v21 + 16);
      sub_197616B10();
      a2 = v16;
      a1 = v15;
      v10 = v14;
      v8 = v13;
      v4 = v18;
      sub_197616B20();
      result = sub_197616AE0();
    }

    else
    {
    }

    ++v9;
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1975BFB18(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = a1 + 32;
    v21 = "h donation records: ";

    while (1)
    {
      v5 = sub_1975C0C8C(v4, v24);
      if (v27)
      {
        switch(v24[0])
        {
          case 9:

            goto LABEL_10;
          case 0xB:
            OUTLINED_FUNCTION_0_13();
            break;
          case 0xC:
            OUTLINED_FUNCTION_1_12();
            break;
          default:
            break;
        }

        v8 = sub_197616EF0();

        if ((v8 & 1) == 0)
        {
          switch(v24[0])
          {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
              goto LABEL_15;
            case 0xA:

              goto LABEL_16;
            case 0xB:
              OUTLINED_FUNCTION_0_13();
              goto LABEL_15;
            case 0xC:
              OUTLINED_FUNCTION_1_12();
LABEL_15:
              v12 = sub_197616EF0();

              if (v12)
              {
LABEL_16:
                MEMORY[0x1EEE9AC00](v11);
                OUTLINED_FUNCTION_2_10();
                v10 = sub_1975C0B28(sub_1975C1108, v13, a2);
                goto LABEL_17;
              }

              v22 = 0;
              v23 = 0xE000000000000000;
              sub_197616A20();
              MEMORY[0x19A8E2A50](0xD00000000000002ELL, v21 | 0x8000000000000000);
              sub_197616BC0();
              v14 = v22;
              v15 = v23;
              sub_19759228C();
              v16 = swift_allocError();
              *v17 = v14;
              v17[1] = v15;
              swift_willThrow();
              if (qword_1ED815ED8 != -1)
              {
                swift_once();
              }

              v18 = type metadata accessor for logger();
              __swift_project_value_buffer(v18, qword_1ED815EE0);
              v22 = 0;
              v23 = 0xE000000000000000;
              sub_197616A20();
              MEMORY[0x19A8E2A50](0xD00000000000001ALL, 0x8000000197624470);
              MEMORY[0x19A8E2A50](v25, v26);
              MEMORY[0x19A8E2A50](0x64656C696166202CLL, 0xEA0000000000203ALL);
              swift_getErrorValue();
              sub_197616EB0();
              sub_197558864();

              sub_1975C0DA4(v24);
              break;
            default:
              JUMPOUT(0);
          }

          goto LABEL_24;
        }

LABEL_10:
        MEMORY[0x1EEE9AC00](v7);
        OUTLINED_FUNCTION_2_10();
        v10 = sub_1975C08F4(sub_1975C0DF8, v9, a2);
LABEL_17:
        if (v10)
        {
          v6 = v10;
        }

        else
        {
          v6 = MEMORY[0x1E69E7CC0];
        }
      }

      else
      {
        MEMORY[0x1EEE9AC00](v5);
        v20[2] = v24;

        v6 = sub_1975BF990(sub_1975C0E14, v20, a2);
      }

      sub_1975C0DA4(v24);

      a2 = v6;
LABEL_24:
      v4 += 64;
      if (!--v3)
      {
        return a2;
      }
    }
  }

  return a2;
}

uint64_t sub_1975BFFE0(uint64_t *a1, unsigned __int8 *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = CoreDonationRecord.donationInfo.getter();
  if (v5)
  {
    sub_197579604(*(a2 + 1), *(a2 + 2), v5);
  }

  else
  {
    memset(v10, 0, sizeof(v10));
  }

  sub_19755FA5C((a2 + 32), v8, &qword_1EAF34930, &unk_19761DB90);
  if (v8[3])
  {
    sub_1975586C0(v8, v9);
    sub_19759425C(v8);
  }

  else
  {
    sub_19755C404(v8, &qword_1EAF34930, &unk_19761DB90);
    memset(v9, 0, sizeof(v9));
  }

  v6 = sub_1975C00FC(v10, v9, v4);
  sub_19755C404(v9, &qword_1EAF34340, &unk_19761C8E0);
  sub_19755C404(v10, &qword_1EAF34698, &qword_197619048);
  return v6 & 1;
}

uint64_t sub_1975C00FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_1975CBEAC(a3, 0) & 1) == 0)
  {
LABEL_5:
    if (sub_1975CBEAC(a3, 1))
    {
      sub_19755FA5C(a1, v33, &qword_1EAF34698, &qword_197619048);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34698, &qword_197619048);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34BD8, &qword_19761C8F0);
      if (swift_dynamicCast())
      {
        sub_1975558C4(&v30, v34);
        v10 = v35;
        __swift_project_boxed_opaque_existential_1Tm(v34, v35);
        v11 = default argument 1 of Equatable.isNotEqual(_:checkReverse:)(v10);
        v9 = Equatable.isNotEqual(_:checkReverse:)(a2, v11 & 1, v10);
        goto LABEL_31;
      }

      v32 = 0;
      v30 = 0u;
      v31 = 0u;
      sub_19755C404(&v30, &qword_1EAF34BE0, &qword_19761BB70);
    }

    if (sub_1975CBEAC(a3, 6))
    {
      sub_19755FA5C(a1, v33, &qword_1EAF34698, &qword_197619048);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34698, &qword_197619048);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34BD8, &qword_19761C8F0);
      if (swift_dynamicCast())
      {
        sub_1975558C4(&v30, v34);
        v12 = v35;
        __swift_project_boxed_opaque_existential_1Tm(v34, v35);
        sub_19755FA5C(a2, &v30, &qword_1EAF34340, &unk_19761C8E0);
        if (*(&v31 + 1))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34380, &qword_197618380);
          if (swift_dynamicCast())
          {
            v13 = v33[0];
          }

          else
          {
            v13 = 0;
          }
        }

        else
        {
          sub_19755C404(&v30, &qword_1EAF34340, &unk_19761C8E0);
          v13 = 0;
        }

        v37.value._rawValue = v13;
        v37.is_nil = v12;
        v26 = Equatable.exists(in:)(v37);

        goto LABEL_32;
      }

      v32 = 0;
      v30 = 0u;
      v31 = 0u;
      sub_19755C404(&v30, &qword_1EAF34BE0, &qword_19761BB70);
    }

    if (sub_1975CBEAC(a3, 2))
    {
      sub_19755FA5C(a1, v33, &qword_1EAF34698, &qword_197619048);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34698, &qword_197619048);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34680, &qword_197618EB8);
      if (swift_dynamicCast())
      {
        sub_1975558C4(&v30, v34);
        v14 = v35;
        v15 = v36;
        __swift_project_boxed_opaque_existential_1Tm(v34, v35);
        v16 = default argument 1 of Comparable.isLessThan(_:checkReverse:)(v14);
        v9 = Comparable.isLessThan(_:checkReverse:)(a2, v16 & 1, v14, v15);
        goto LABEL_31;
      }

      v32 = 0;
      v30 = 0u;
      v31 = 0u;
      sub_19755C404(&v30, &qword_1EAF34678, &qword_197618EB0);
    }

    if (sub_1975CBEAC(a3, 3))
    {
      sub_19755FA5C(a1, v33, &qword_1EAF34698, &qword_197619048);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34698, &qword_197619048);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34680, &qword_197618EB8);
      if (swift_dynamicCast())
      {
        sub_1975558C4(&v30, v34);
        v17 = v35;
        v18 = v36;
        __swift_project_boxed_opaque_existential_1Tm(v34, v35);
        v19 = default argument 1 of Comparable.isLessThanOrEqual(_:checkReverse:)(v17);
        v9 = Comparable.isLessThanOrEqual(_:checkReverse:)(a2, v19 & 1, v17, v18);
        goto LABEL_31;
      }

      v32 = 0;
      v30 = 0u;
      v31 = 0u;
      sub_19755C404(&v30, &qword_1EAF34678, &qword_197618EB0);
    }

    if (sub_1975CBEAC(a3, 4))
    {
      sub_19755FA5C(a1, v33, &qword_1EAF34698, &qword_197619048);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34698, &qword_197619048);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34680, &qword_197618EB8);
      if (swift_dynamicCast())
      {
        sub_1975558C4(&v30, v34);
        v20 = v35;
        v21 = v36;
        __swift_project_boxed_opaque_existential_1Tm(v34, v35);
        v22 = default argument 1 of Comparable.isGreaterThan(_:checkReverse:)(v20);
        v9 = Comparable.isGreaterThan(_:checkReverse:)(a2, v22 & 1, v20, v21);
        goto LABEL_31;
      }

      v32 = 0;
      v30 = 0u;
      v31 = 0u;
      sub_19755C404(&v30, &qword_1EAF34678, &qword_197618EB0);
    }

    if (sub_1975CBEAC(a3, 5))
    {
      sub_19755FA5C(a1, v33, &qword_1EAF34698, &qword_197619048);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34698, &qword_197619048);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34680, &qword_197618EB8);
      if (swift_dynamicCast())
      {
        sub_1975558C4(&v30, v34);
        v23 = v35;
        v24 = v36;
        __swift_project_boxed_opaque_existential_1Tm(v34, v35);
        v25 = default argument 1 of Comparable.isGreaterThanOrEqual(_:checkReverse:)(v23);
        v9 = Comparable.isGreaterThanOrEqual(_:checkReverse:)(a2, v25 & 1, v23, v24);
        goto LABEL_31;
      }

      v32 = 0;
      v30 = 0u;
      v31 = 0u;
      sub_19755C404(&v30, &qword_1EAF34678, &qword_197618EB0);
    }

    sub_19755FA5C(a1, v34, &qword_1EAF34698, &qword_197619048);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34698, &qword_197619048);
    sub_1975C10C4();
    if (swift_dynamicCast())
    {
      v28 = v30;
      sub_19755FA5C(a2, v34, &qword_1EAF34340, &unk_19761C8E0);
      if (v35)
      {
        if (swift_dynamicCast())
        {
          v29 = v30;
          LOBYTE(v34[0]) = a3;
          v26 = sub_1975CC628();

          return v26 & 1;
        }
      }

      else
      {

        sub_19755C404(v34, &qword_1EAF34340, &unk_19761C8E0);
      }
    }

    v26 = 0;
    return v26 & 1;
  }

  sub_19755FA5C(a1, v33, &qword_1EAF34698, &qword_197619048);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34698, &qword_197619048);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34BD8, &qword_19761C8F0);
  if (!swift_dynamicCast())
  {
    v32 = 0;
    v30 = 0u;
    v31 = 0u;
    sub_19755C404(&v30, &qword_1EAF34BE0, &qword_19761BB70);
    goto LABEL_5;
  }

  sub_1975558C4(&v30, v34);
  v6 = v35;
  v7 = v36;
  __swift_project_boxed_opaque_existential_1Tm(v34, v35);
  v8 = default argument 1 of Equatable.isEqual(_:checkReverse:)(v6, v7);
  v9 = Equatable.isEqual(_:checkReverse:)(a2, v8 & 1, v6);
LABEL_31:
  v26 = v9;
LABEL_32:
  __swift_destroy_boxed_opaque_existential_0Tm(v34);
  return v26 & 1;
}

uint64_t sub_1975C08F4(uint64_t a1, uint64_t a2, uint64_t a3)
{

  v6 = sub_1975C0E34(a3, a1);
  if (!v3)
  {
    v7 = sub_1975C0CE8(v6);

    v8 = v7[2];
    if (v8)
    {
      a1 = v7[4];

      v10 = 1;
LABEL_4:
      if (a1 < 0)
      {
        v11 = a1;
      }

      else
      {
        v11 = a1 & 0xFFFFFFFFFFFFFF8;
      }

      while (v8 != v10)
      {
        if (v10 >= v7[2])
        {
          __break(1u);
          return result;
        }

        v12 = v7[v10 + 4];
        if (a1 >> 62)
        {
          v14 = v11;
          v15 = sub_197616C60();
          v11 = v14;
          v13 = v15;
        }

        else
        {
          v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v12 >> 62)
        {
          v16 = v11;
          result = sub_197616C60();
          v11 = v16;
        }

        else
        {
          result = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        ++v10;
        if (v13 < result)
        {

          a1 = v12;
          goto LABEL_4;
        }
      }
    }

    else
    {
      a1 = 0;
    }
  }

  return a1;
}

double sub_1975C0A58@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = CoreDonationRecord.donationInfo.getter();
  if (!v6)
  {
    v8 = 0u;
    v9 = 0u;
    goto LABEL_6;
  }

  sub_197579604(*(a2 + 8), *(a2 + 16), v6);

  if (!*(&v9 + 1))
  {
LABEL_6:
    sub_19755C404(&v8, &qword_1EAF34698, &qword_197619048);
    goto LABEL_7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF345E8, &qword_197619050);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1975C0B28(uint64_t a1, uint64_t a2, uint64_t a3)
{

  v6 = sub_1975C0E34(a3, a1);
  if (!v3)
  {
    v7 = sub_1975C0CE8(v6);

    v8 = v7[2];
    if (v8)
    {
      a1 = v7[4];

      v10 = 1;
LABEL_4:
      if (a1 < 0)
      {
        v11 = a1;
      }

      else
      {
        v11 = a1 & 0xFFFFFFFFFFFFFF8;
      }

      v12 = a1 >> 62;
      while (1)
      {
        if (v8 == v10)
        {
          goto LABEL_21;
        }

        if (v10 >= v7[2])
        {
          __break(1u);
          return result;
        }

        v13 = v7[v10 + 4];
        if (v13 >> 62)
        {
          if (v13 < 0)
          {
            v15 = v7[v10 + 4];
          }

          v16 = v11;
          v17 = sub_197616C60();
          v11 = v16;
          v14 = v17;
          if (v12)
          {
LABEL_18:
            v18 = v11;
            result = sub_197616C60();
            v11 = v18;
            goto LABEL_13;
          }
        }

        else
        {
          v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v12)
          {
            goto LABEL_18;
          }
        }

        result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_13:
        ++v10;
        if (v14 < result)
        {

          a1 = v13;
          goto LABEL_4;
        }
      }
    }

    a1 = 0;
LABEL_21:
  }

  return a1;
}

void *sub_1975C0CE8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = sub_1975BC110(*(a1 + 16), 0);
  sub_1975EA184();
  v4 = v3;

  sub_1975A4D3C();
  if (v4 != v1)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v2;
}

uint64_t sub_1975C0E34(uint64_t a1, void (*a2)(_OWORD *__return_ptr, uint64_t *))
{
  v4 = MEMORY[0x1E69E7CC8];
  v30 = MEMORY[0x1E69E7CC8];
  v5 = sub_197567E4C(a1);
  for (i = 0; ; ++i)
  {
    if (v5 == i)
    {

      return v4;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x19A8E31E0](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_24;
      }

      v7 = *(a1 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    v29 = v7;
    a2(v27, &v29);
    if (v2)
    {

      return v4;
    }

    v9 = sub_1975FC0A4(v27);
    v10 = v4[2];
    v11 = (v8 & 1) == 0;
    v12 = v10 + v11;
    if (__OFADD__(v10, v11))
    {
      goto LABEL_25;
    }

    v13 = v8;
    if (v4[3] < v12)
    {
      sub_1975F5B98(v12, 1);
      v4 = v30;
      v14 = sub_1975FC0A4(v27);
      if ((v13 & 1) != (v15 & 1))
      {
        goto LABEL_27;
      }

      v9 = v14;
    }

    if (v13)
    {
      v16 = sub_19755C404(v27, &qword_1EAF34BE8, &qword_19761BB78);
      v17 = (v4[7] + 8 * v9);
      MEMORY[0x19A8E2BE0](v16);
      if (*((*v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1976164A0();
      }

      sub_1976164D0();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF345D0, &qword_19761B410);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_197619030;
      *(v18 + 32) = v7;
      v4[(v9 >> 6) + 8] |= 1 << v9;
      v19 = v4[6] + 40 * v9;
      v21 = v27[0];
      v20 = v27[1];
      *(v19 + 32) = v28;
      *v19 = v21;
      *(v19 + 16) = v20;
      *(v4[7] + 8 * v9) = v18;
      v22 = v4[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        goto LABEL_26;
      }

      v4[2] = v24;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34BE8, &qword_19761BB78);
  result = sub_1976170F0();
  __break(1u);
  return result;
}

unint64_t sub_1975C10C4()
{
  result = qword_1ED816018;
  if (!qword_1ED816018)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED816018);
  }

  return result;
}

uint64_t sub_1975C1120(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34B40, &unk_197622360);
  v7 = OUTLINED_FUNCTION_0(v6);
  v136 = v8;
  v137 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  v134 = &v126 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34B08, &qword_19761B888);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v133 = &v126 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v139 = &v126 - v17;
  v145 = sub_197615F50();
  v18 = OUTLINED_FUNCTION_0(v145);
  v132 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v138 = &v126 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AC8, &unk_197622310);
  v24 = OUTLINED_FUNCTION_0(v23);
  v141 = v25;
  v142 = v24;
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v28);
  v143 = &v126 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AD8, &unk_1976222C0);
  OUTLINED_FUNCTION_0(v30);
  v140 = v31;
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v126 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AC0, &qword_19761B6F0);
  v38 = *(*(v37 - 8) + 64);
  v39 = MEMORY[0x1EEE9AC00](v37 - 8);
  v41 = &v126 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x1EEE9AC00](v39);
  v44 = &v126 - v43;
  MEMORY[0x1EEE9AC00](v42);
  v46 = &v126 - v45;
  v144 = a1;
  v148 = a1;
  v149 = a2;
  v146 = a2;
  v47 = type metadata accessor for CoreEventRecord();
  v153 = v47;
  sub_197615AE0();
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AD0, &qword_19761B6F8);
  __swift_storeEnumTagSinglePayload(v46, 0, 1, v48);
  v49 = a3;
  v50 = v147;
  sub_1975BEA74();
  v52 = v51;
  result = sub_19755C404(v46, &qword_1EAF34AC0, &qword_19761B6F0);
  if (!v50)
  {
    v129 = v41;
    v147 = v47;
    v130 = v44;
    v54 = v146;
    v131 = v49;
    if (v52 >= 2)
    {
      swift_getKeyPath();
      v128 = 0;
      sub_197567F1C(&qword_1ED816CD8);
      v55 = v36;
      v56 = sub_197615640();
      v126 = &v126;
      MEMORY[0x1EEE9AC00](v56);
      *(&v126 - 2) = v144;
      *(&v126 - 1) = v54;
      v57 = v130;
      sub_197615AE0();
      __swift_storeEnumTagSinglePayload(v57, 0, 1, v48);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AE0, &unk_197622300);
      v58 = v140;
      v59 = *(v140 + 9);
      v60 = (v140[80] + 32) & ~v140[80];
      v61 = swift_allocObject();
      v127 = v61;
      *(v61 + 16) = xmmword_197618C10;
      v62 = *(v58 + 2);
      v140 = v55;
      v62(v61 + v60, v55, v30);
      sub_19755FA5C(v57, v129, &qword_1EAF34AC0, &qword_19761B6F0);
      OUTLINED_FUNCTION_6_5();
      v64 = sub_197567F1C(v63);
      v65 = v147;
      sub_197615D90();
      OUTLINED_FUNCTION_9_6();
      MEMORY[0x1EEE9AC00](v66);
      OUTLINED_FUNCTION_1_1();
      *(v67 - 16) = v65;
      *(v67 - 8) = v64;
      swift_getKeyPath();
      OUTLINED_FUNCTION_8_7();
      v151 = 1;
      LOBYTE(v152) = 0;
      OUTLINED_FUNCTION_4_11();
      swift_setAtWritableKeyPath();

      OUTLINED_FUNCTION_9_6();
      MEMORY[0x1EEE9AC00](v68);
      OUTLINED_FUNCTION_1_1();
      *(v69 - 16) = v65;
      *(v69 - 8) = v64;
      swift_getKeyPath();
      OUTLINED_FUNCTION_8_7();
      v151 = 0;
      LOBYTE(v152) = 1;
      OUTLINED_FUNCTION_4_11();
      swift_setAtWritableKeyPath();

      OUTLINED_FUNCTION_9_6();
      MEMORY[0x1EEE9AC00](v70);
      OUTLINED_FUNCTION_1_1();
      *(v71 - 16) = v65;
      *(v71 - 8) = v64;
      swift_getKeyPath();
      OUTLINED_FUNCTION_8_7();
      LOBYTE(v151) = 0;
      OUTLINED_FUNCTION_4_11();
      swift_setAtWritableKeyPath();

      OUTLINED_FUNCTION_9_6();
      MEMORY[0x1EEE9AC00](v72);
      OUTLINED_FUNCTION_1_1();
      *(v73 - 16) = v65;
      *(v73 - 8) = v64;
      swift_getKeyPath();
      OUTLINED_FUNCTION_8_7();
      v74 = MEMORY[0x1E69E7CC0];
      v151 = MEMORY[0x1E69E7CC0];
      OUTLINED_FUNCTION_4_11();
      swift_setAtWritableKeyPath();

      OUTLINED_FUNCTION_9_6();
      MEMORY[0x1EEE9AC00](v75);
      OUTLINED_FUNCTION_1_1();
      *(v76 - 16) = v65;
      *(v76 - 8) = v64;
      swift_getKeyPath();
      OUTLINED_FUNCTION_8_7();
      v151 = v74;
      OUTLINED_FUNCTION_4_11();
      swift_setAtWritableKeyPath();

      OUTLINED_FUNCTION_9_6();
      MEMORY[0x1EEE9AC00](v77);
      OUTLINED_FUNCTION_1_1();
      *(v78 - 16) = v65;
      *(v78 - 8) = v64;
      swift_getKeyPath();
      OUTLINED_FUNCTION_8_7();
      v151 = v127;
      OUTLINED_FUNCTION_4_11();
      swift_setAtWritableKeyPath();

      v79 = v128;
      v80 = sub_197615C80();
      v81 = (v58 + 8);
      if (v79)
      {

        v82 = OUTLINED_FUNCTION_13_3();
        v83(v82);
        sub_19755C404(v57, &qword_1EAF34AC0, &qword_19761B6F0);
        (*v81)(v140, v30);
LABEL_5:
        v151 = 0;
        v152 = 0xE000000000000000;
        sub_197616A20();
        MEMORY[0x19A8E2A50](0xD000000000000030, 0x8000000197624490);
        MEMORY[0x19A8E2A50](v144, v146);
        MEMORY[0x19A8E2A50](41, 0xE100000000000000);
        v84 = v151;
        v85 = v152;
        sub_19759228C();
        swift_allocError();
        *v86 = v84;
        v86[1] = v85;
        return swift_willThrow();
      }

      v87 = v80;
      v129 = 0;
      v88 = OUTLINED_FUNCTION_13_3();
      v89(v88);
      v90 = sub_197595B38(v87);

      sub_19755C404(v57, &qword_1EAF34AC0, &qword_19761B6F0);
      (*v81)(v140, v30);
      if (!v90)
      {
        goto LABEL_5;
      }

      v91 = v138;
      v92 = sub_197615DB0();
      MEMORY[0x1EEE9AC00](v92);
      v93 = v146;
      *(&v126 - 4) = v144;
      *(&v126 - 3) = v93;
      *(&v126 - 2) = v91;
      v94 = v135;
      v150 = v135;
      v95 = v139;
      sub_197615AE0();
      v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34A48, &qword_19761B670);
      __swift_storeEnumTagSinglePayload(v95, 0, 1, v96);
      sub_19755FA5C(v95, v133, &qword_1EAF34B08, &qword_19761B888);
      v97 = sub_197567F1C(&qword_1ED8171B0);
      v98 = sub_197615D90();
      MEMORY[0x1EEE9AC00](v98);
      OUTLINED_FUNCTION_1_1();
      *(v99 - 16) = v94;
      *(v99 - 8) = v97;
      swift_getKeyPath();
      v151 = 0;
      LOBYTE(v152) = 1;
      OUTLINED_FUNCTION_4_11();
      swift_setAtWritableKeyPath();

      MEMORY[0x1EEE9AC00](v100);
      OUTLINED_FUNCTION_1_1();
      *(v101 - 16) = v94;
      *(v101 - 8) = v97;
      swift_getKeyPath();
      v151 = 0;
      LOBYTE(v152) = 1;
      OUTLINED_FUNCTION_4_11();
      swift_setAtWritableKeyPath();

      OUTLINED_FUNCTION_12_5();
      MEMORY[0x1EEE9AC00](v102);
      OUTLINED_FUNCTION_1_1();
      *(v103 - 16) = v94;
      *(v103 - 8) = v97;
      swift_getKeyPath();
      LOBYTE(v151) = 0;
      OUTLINED_FUNCTION_4_11();
      swift_setAtWritableKeyPath();

      OUTLINED_FUNCTION_12_5();
      MEMORY[0x1EEE9AC00](v104);
      OUTLINED_FUNCTION_1_1();
      *(v105 - 16) = v94;
      *(v105 - 8) = v97;
      swift_getKeyPath();
      OUTLINED_FUNCTION_3_12();

      OUTLINED_FUNCTION_12_5();
      MEMORY[0x1EEE9AC00](v106);
      OUTLINED_FUNCTION_1_1();
      *(v107 - 16) = v94;
      *(v107 - 8) = v97;
      swift_getKeyPath();
      OUTLINED_FUNCTION_3_12();

      OUTLINED_FUNCTION_12_5();
      MEMORY[0x1EEE9AC00](v108);
      OUTLINED_FUNCTION_1_1();
      *(v109 - 16) = v94;
      *(v109 - 8) = v97;
      swift_getKeyPath();
      OUTLINED_FUNCTION_3_12();

      v110 = v129;
      v111 = sub_197615C80();
      if (v110)
      {

        v112 = OUTLINED_FUNCTION_13_3();
        v113(v112);
        sub_19755C404(v139, &qword_1EAF34B08, &qword_19761B888);
        v114 = OUTLINED_FUNCTION_11_5();
        return v115(v114, v145);
      }

      else
      {
        v116 = v111;
        v117 = OUTLINED_FUNCTION_13_3();
        v118(v117);
        sub_19755C404(v139, &qword_1EAF34B08, &qword_19761B888);
        result = sub_197567E4C(v116);
        v119 = result;
        for (i = 0; ; ++i)
        {
          v121 = v145;
          if (v119 == i)
          {

            v124 = OUTLINED_FUNCTION_11_5();
            return v125(v124, v121);
          }

          if ((v116 & 0xC000000000000001) != 0)
          {
            result = MEMORY[0x19A8E31E0](i, v116);
          }

          else
          {
            if (i >= *((v116 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_20;
            }

            v122 = *(v116 + 8 * i + 32);
          }

          if (__OFADD__(i, 1))
          {
            break;
          }

          CoreDonationRecord.event.setter(v123);
        }

        __break(1u);
LABEL_20:
        __break(1u);
      }
    }
  }

  return result;
}

uint64_t sub_1975C1E04@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v33 = a2;
  v34 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AE8, &qword_19761B848);
  v35 = OUTLINED_FUNCTION_0(v6);
  v36 = v7;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v33 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AF0, &unk_197622320);
  OUTLINED_FUNCTION_0(v13);
  v15 = v14;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v33 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AF8, &qword_19761B850);
  OUTLINED_FUNCTION_0(v21);
  v23 = v22;
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v33 - v27;
  v29 = *a1;
  OUTLINED_FUNCTION_1_11();
  sub_197569AA4(v30);
  sub_197615820();
  swift_getKeyPath();
  sub_197615700();

  (*(v15 + 8))(v20, v13);
  v37 = v33;
  v38 = v34;
  sub_197615810();
  a4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34B00, &qword_19761B880);
  a4[4] = sub_19758F80C();
  __swift_allocate_boxed_opaque_existential_0(a4);
  sub_197569AA4(&qword_1ED8164D0);
  sub_197569AA4(&qword_1ED816D00);
  v31 = v35;
  sub_1976156F0();
  (*(v36 + 8))(v12, v31);
  return (*(v23 + 8))(v28, v21);
}

uint64_t sub_1975C2130@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v81 = a4;
  v73 = a3;
  v72 = a2;
  v88 = a5;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AB8, &qword_197622080);
  v6 = *(*(v82 - 8) + 64);
  MEMORY[0x1EEE9AC00](v82);
  v79 = &v58 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34BF0, &qword_19761BD58);
  v9 = *(v8 - 8);
  v84 = v8;
  v85 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v78 = &v58 - v11;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34BF8, &qword_19761BD60);
  v83 = *(v80 - 8);
  v12 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v80);
  v74 = &v58 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34C00, &qword_19761BD68);
  v15 = *(v14 - 8);
  v86 = v14;
  v87 = v15;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v77 = &v58 - v17;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34BB0, &qword_19761BAD0);
  v71 = *(v70 - 8);
  v18 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v70);
  v69 = &v58 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34B28, &qword_19761B8C8);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v58 - v23;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34BB8, &qword_19761BAD8);
  v92 = *(v89 - 8);
  v25 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v89);
  v27 = &v58 - v26;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34BC0, &qword_19761BAE0);
  v68 = *(v67 - 8);
  v28 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v67);
  v90 = &v58 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34BC8, &qword_19761BAE8);
  v31 = *(v30 - 8);
  v75 = v30;
  v76 = v31;
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v91 = &v58 - v33;
  v66 = *a1;
  sub_197569AA4(&qword_1ED8164B0);
  sub_197615820();
  swift_getKeyPath();
  sub_197615700();

  v34 = *(v21 + 8);
  v64 = v21 + 8;
  v65 = v34;
  v34(v24, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AF8, &qword_19761B850);
  v61 = type metadata accessor for CoreEventRecord();
  v62 = MEMORY[0x1E6968D58];
  v60 = sub_197569AA4(&unk_1ED816278);
  sub_197569AA4(&qword_1ED8164D0);
  v35 = v89;
  sub_197615710();
  v36 = *(v92 + 8);
  v92 += 8;
  v59 = v36;
  v36(v27, v35);
  v93 = v72;
  v94 = v73;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34400, &qword_1976185C0);
  v37 = v69;
  sub_197615810();
  v73 = MEMORY[0x1E6968BC8];
  sub_197569AA4(&unk_1ED8162A0);
  v63 = MEMORY[0x1E6968D20];
  sub_197569AA4(&qword_1ED816CF0);
  v72 = MEMORY[0x1E69E7C80];
  sub_19757B688(&qword_1ED816C68);
  v38 = v90;
  v39 = v67;
  v40 = v70;
  sub_1976156F0();
  (*(v71 + 8))(v37, v40);
  (*(v68 + 8))(v38, v39);
  sub_197615820();
  swift_getKeyPath();
  sub_197615700();

  v65(v24, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34C08, &qword_19761BD98);
  v41 = sub_197615F50();
  sub_197569AA4(&qword_1ED816000);
  v42 = v74;
  v43 = v89;
  sub_197615710();
  v59(v27, v43);
  v44 = v79;
  (*(*(v41 - 8) + 16))(v79, v81, v41);
  __swift_storeEnumTagSinglePayload(v44, 0, 1, v41);
  v45 = v78;
  sub_197615810();
  sub_19755C404(v44, &qword_1EAF34AB8, &qword_197622080);
  sub_197569AA4(&unk_1EAF34C10);
  sub_197569AA4(&unk_1EAF34C18);
  sub_1975C3280(&unk_1EAF34C20);
  v46 = v77;
  v47 = v42;
  v48 = v45;
  v49 = v80;
  v50 = v84;
  sub_197615730();
  (*(v85 + 8))(v48, v50);
  (*(v83 + 8))(v47, v49);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34C28, &qword_19761BDA0);
  v52 = v88;
  v88[3] = v51;
  v52[4] = sub_1975C2E84();
  __swift_allocate_boxed_opaque_existential_0(v52);
  sub_197569AA4(&unk_1ED816178);
  sub_197569AA4(&unk_1EAF34C60);
  v53 = v91;
  v54 = v46;
  v55 = v75;
  v56 = v86;
  sub_197615780();
  (*(v87 + 8))(v54, v56);
  return (*(v76 + 8))(v53, v55);
}

uint64_t sub_1975C2CB0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AF0, &unk_197622320);
  OUTLINED_FUNCTION_0(v0);
  v2 = v1;
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v10 - v6;
  OUTLINED_FUNCTION_1_11();
  sub_197569AA4(v8);
  sub_197615820();
  swift_getKeyPath();
  sub_197615700();

  return (*(v2 + 8))(v7, v0);
}

uint64_t sub_1975C2DE0(uint64_t *a1)
{
  v1 = *a1;
  type metadata accessor for CoreEventRecord();
  sub_197567F1C(&qword_1ED817218);
  return sub_197615DB0();
}

unint64_t sub_1975C2E84()
{
  result = qword_1EAF34C30;
  if (!qword_1EAF34C30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF34C28, &qword_19761BDA0);
    sub_197591288();
    sub_1975C3054();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF34C30);
  }

  return result;
}

unint64_t sub_1975C2F10()
{
  result = qword_1ED816280;
  if (!qword_1ED816280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF34BB8, &qword_19761BAD8);
    sub_197569AA4(&qword_1ED8164B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816280);
  }

  return result;
}

unint64_t sub_1975C2FC0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_26(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v3, v4);
    sub_197569AA4(&qword_1ED8164C8);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1975C3054()
{
  result = qword_1EAF34C38;
  if (!qword_1EAF34C38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF34C00, &qword_19761BD68);
    sub_1975C30E0();
    sub_1975C3184();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF34C38);
  }

  return result;
}

unint64_t sub_1975C30E0()
{
  result = qword_1EAF34C40;
  if (!qword_1EAF34C40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF34BF8, &qword_19761BD60);
    sub_1975C2F10();
    sub_1975C2FC0(&qword_1ED816008);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF34C40);
  }

  return result;
}

unint64_t sub_1975C3184()
{
  result = qword_1EAF34C48;
  if (!qword_1EAF34C48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF34BF0, &qword_19761BD58);
    sub_1975C3280(&unk_1EAF34C50);
    sub_1975C3280(&unk_1EAF34C58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF34C48);
  }

  return result;
}

unint64_t sub_1975C3280(uint64_t a1)
{
  result = OUTLINED_FUNCTION_26(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF34AB8, &qword_197622080);
    sub_197567F1C(v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t CoreEvent.id.getter()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = __swift_project_boxed_opaque_existential_1Tm(v0 + 2, v1);
  OUTLINED_FUNCTION_0_14(v3, *(v2 + 8));
  return v4(v1);
}

uint64_t CoreEvent.mapDonations<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = v3[7];
  swift_unownedRetainStrong();
  v11 = v3[5];
  v10 = v3[6];
  v12 = __swift_project_boxed_opaque_existential_1Tm(v5 + 2, v11);
  OUTLINED_FUNCTION_0_14(v12, *(v10 + 8));
  v17[2] = a3;
  v17[3] = v13(v11);
  v17[4] = v14;
  v17[5] = v5;
  v17[6] = a1;
  v17[7] = a2;
  v15 = sub_197616530();
  MiniTipsDatastore.performAndWait<A>(_:)(sub_1975C3650, v17, v15, &v18);

  if (v4)
  {
  }

  return v18;
}

uint64_t sub_1975C3470@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  type metadata accessor for CoreDonationRecord();
  v9 = a4[5];
  v10 = a4[6];
  __swift_project_boxed_opaque_existential_1Tm(a4 + 2, v9);
  (*(v10 + 16))(&v17, v9, v10);
  v15 = v17;
  v16 = v18;
  *&v17 = sub_1975BEE94(a2, a3, &v15, a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34C68, &qword_19761BE88);
  sub_1975C36CC();
  v11 = v19;
  v12 = sub_197616370();

  if (!v11)
  {
    *a5 = v12;
  }

  return result;
}

uint64_t CoreEvent.deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  v1 = *(v0 + 56);
  swift_unownedRelease();
  return v0;
}

uint64_t CoreEvent.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  v1 = *(v0 + 56);
  swift_unownedRelease();

  return MEMORY[0x1EEE6BDC0](v0, 64, 7);
}

uint64_t sub_1975C3624@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = CoreEvent.id.getter();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_1975C3650@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 48);
  v5 = *(v2 + 56);
  return sub_1975C3470(a1, *(v2 + 24), *(v2 + 32), *(v2 + 40), a2);
}

uint64_t sub_1975C36A0(void *a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  return v2(*a1);
}

unint64_t sub_1975C36CC()
{
  result = qword_1ED8162D0;
  if (!qword_1ED8162D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF34C68, &qword_19761BE88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8162D0);
  }

  return result;
}

uint64_t CoreEvent.donate<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[4] = a4;
  v5[5] = v4;
  v5[2] = a1;
  v5[3] = a2;
  return OUTLINED_FUNCTION_0_3();
}

uint64_t sub_1975C3748()
{
  OUTLINED_FUNCTION_25();
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v4 = static DictionaryCoder.encode<A>(_:)();
  v0[6] = v4;
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_1975C380C;
  v6 = v0[5];

  return CoreEvent.donate(donationInfo:)(v4);
}

uint64_t sub_1975C380C()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_16();
  v2 = *(v1 + 56);
  v3 = *(v1 + 48);
  v4 = *v0;
  OUTLINED_FUNCTION_2();
  *v5 = v4;

  OUTLINED_FUNCTION_3();

  return v6();
}

uint64_t static CoreEvent.donate(eventID:donationInfo:datastore:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_0_3();
}

uint64_t sub_1975C3920()
{
  OUTLINED_FUNCTION_8_0();
  v1 = v0[4];
  v3 = v0[2];
  v2 = v0[3];
  v4 = *(v0[5] + 64);
  OUTLINED_FUNCTION_11_6();
  v5 = swift_allocObject();
  v0[6] = v5;
  v5[2] = v3;
  v5[3] = v2;
  v5[4] = v1;

  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_1975C3A24;

  return sub_1975C4064();
}

uint64_t sub_1975C3A24()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_16();
  v3 = v2;
  OUTLINED_FUNCTION_7();
  *v4 = v3;
  v6 = *(v5 + 56);
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  *(v3 + 64) = v0;

  if (v0)
  {
    v9 = sub_1975C3B2C;
  }

  else
  {
    v10 = *(v3 + 48);

    v9 = sub_1975C47A4;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1975C3B2C()
{
  OUTLINED_FUNCTION_1();
  v1 = *(v0 + 48);

  OUTLINED_FUNCTION_3();
  v3 = *(v0 + 64);

  return v2();
}

uint64_t sub_1975C3B88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[2] = a2;
  v5[3] = a3;
  return MEMORY[0x1EEE6DFA0](sub_1975C3BAC, 0, 0);
}

uint64_t sub_1975C3BAC()
{
  OUTLINED_FUNCTION_8_0();
  v1 = v0[4];
  v2 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  type metadata accessor for CoreDonationRecord();
  sub_1975BC4DC(v3, v1, v2, v4);

  OUTLINED_FUNCTION_3();

  return v5();
}

uint64_t sub_1975C3C68()
{
  OUTLINED_FUNCTION_8_0();
  v1 = v0[2];
  v2 = v1[7];
  swift_unownedRetainStrong();
  v0[3] = *(v2 + 64);

  v3 = v1[5];
  __swift_project_boxed_opaque_existential_1Tm(v1 + 2, v3);
  OUTLINED_FUNCTION_12_6();
  v5 = v4(v3);
  v7 = v6;
  v8 = swift_allocObject();
  v0[4] = v8;
  *(v8 + 16) = v5;
  *(v8 + 24) = v7;
  v9 = swift_task_alloc();
  v0[5] = v9;
  *v9 = v0;
  v9[1] = sub_1975C3DA0;

  return sub_1975C4064();
}

uint64_t sub_1975C3DA0()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_16();
  v3 = v2;
  OUTLINED_FUNCTION_7();
  *v4 = v3;
  v6 = *(v5 + 40);
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  v3[6] = v0;

  if (v0)
  {
    v9 = sub_1975C3EB0;
  }

  else
  {
    v11 = v3[3];
    v10 = v3[4];

    v9 = sub_1975A9254;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1975C3EB0()
{
  OUTLINED_FUNCTION_1();
  v2 = v0[3];
  v1 = v0[4];

  OUTLINED_FUNCTION_3();
  v4 = v0[6];

  return v3();
}

uint64_t sub_1975C3F14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1975C3F38, 0, 0);
}

uint64_t sub_1975C3F38()
{
  OUTLINED_FUNCTION_25();
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  type metadata accessor for CoreDonationRecord();
  sub_1975BD49C(v1, v2, v3);
  OUTLINED_FUNCTION_3();

  return v4();
}

uint64_t sub_1975C3FCC()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_3_13();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_5_1(v0);
  *v1 = v2;
  v1[1] = sub_19755CDC8;
  v3 = OUTLINED_FUNCTION_1_13();

  return sub_1975C3B88(v3, v4, v5, v6, v7);
}

uint64_t sub_1975C4064()
{
  OUTLINED_FUNCTION_1();
  v1[11] = v2;
  v1[12] = v0;
  v1[10] = v3;
  sub_197572838();
  if (v0)
  {
    swift_getObjectType();
    v4 = sub_197616560();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  return MEMORY[0x1EEE6DFA0](sub_1975C40F4, v4, v6);
}

uint64_t sub_1975C40F4()
{
  OUTLINED_FUNCTION_25();
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v0[2] = v0;
  v0[3] = sub_1975C41B0;
  swift_continuation_init();
  OUTLINED_FUNCTION_13_4();
  sub_197572A14(v4, v5, v6, v7, 89, v8, v9);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1975C41B0()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_16();
  v1 = *v0;
  OUTLINED_FUNCTION_7();
  *v3 = v1;
  if (*(v2 + 48))
  {
    v4 = *(v2 + 48);
    swift_willThrow();
  }

  v5 = *(v1 + 8);

  return v5();
}

uint64_t sub_1975C42AC()
{
  OUTLINED_FUNCTION_25();
  v2 = v1;
  v4 = v3;
  v6 = *(v0 + 16);
  v5 = *(v0 + 24);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_5_1(v7);
  *v8 = v9;
  v8[1] = sub_19755CCE8;

  return sub_1975C3F14(v4, v2, v6, v5);
}

uint64_t sub_1975C4354(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  *(v4 + 16) = a3;
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 24) = v6;
  *v6 = v4;
  v6[1] = sub_1975C444C;

  return v8();
}

uint64_t sub_1975C444C()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v5 = *(v4 + 24);
  v6 = *v1;
  OUTLINED_FUNCTION_2();
  *v7 = v6;
  *(v8 + 32) = v0;

  if (v0)
  {
    v9 = sub_1975C45A4;
  }

  else
  {
    v9 = sub_1975C454C;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1975C454C()
{
  OUTLINED_FUNCTION_1();
  v1 = *(v0 + 16);
  swift_continuation_throwingResume();
  OUTLINED_FUNCTION_3();

  return v2();
}

uint64_t sub_1975C45A4()
{
  OUTLINED_FUNCTION_1();
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34C80, &qword_19761BF20);
  swift_allocError();
  *v3 = v1;
  swift_continuation_throwingResumeWithError();
  OUTLINED_FUNCTION_3();

  return v4();
}

uint64_t sub_1975C4638(uint64_t a1, uint64_t *a2, uint64_t a3, int *a4)
{
  v8 = *a2;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_19755CDC8;

  return sub_1975C4354(a1, v8, a3, a4);
}

uint64_t sub_1975C4700()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_3_13();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_5_1(v0);
  *v1 = v2;
  v1[1] = sub_19755CDC8;
  v3 = OUTLINED_FUNCTION_1_13();

  return v4(v3);
}

void sub_1975C47A8(uint64_t *a1)
{
  v1 = *a1;

  static CoreEvent.events.setter(v2);
}

void sub_1975C47C8(uint64_t *a1)
{
  v1 = *a1;

  static CoreEvent.modelIdentifiers.setter(v2);
}

uint64_t (*static CoreEvent.modelIdentifiers.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = static CoreEvent.modelIdentifiers.getter();
  return sub_1975C4830;
}

void sub_1975C4848()
{
  v0 = static CoreEvent.events.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34C88, &qword_19761BF40);
  sub_1976160F0();
  static CoreEvent.events.setter(v0);
  v1 = static CoreEvent.modelIdentifiers.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34C90, &qword_19761BF48);
  sub_1976160F0();
  static CoreEvent.modelIdentifiers.setter(v1);
}

uint64_t CoreEvent.Options.maxDonationAge.getter()
{
  result = *(v0 + 8);
  v2 = *(v0 + 16);
  return result;
}

BOOL CoreEvent.Options.isDefault.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 16);
  if (qword_1ED8174E0 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  if (byte_1ED8174EA == 1)
  {
    if (*&v1 == 200)
    {
      v4 = v2 == 63072000.0 ? v3 : 1;
      if ((v4 & 1) == 0)
      {
        return 1;
      }
    }
  }

  else
  {
    result = *&v1 == 1000;
    if ((*&v1 != 1000) | v3 & 1)
    {
      return result;
    }
  }

  return 0;
}

uint64_t CoreEvent.Options.init(maxDonationCount:maxDonationAge:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3 & 1;
  return result;
}

uint64_t static CoreEvent.Options.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a2 + 16);
  if (*(a1 + 16))
  {
    if ((*(a2 + 16) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 8) != *(a2 + 8))
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1975C49E0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x8000000197624570 == a2;
  if (v3 || (sub_197616EF0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74616E6F4478616DLL && a2 == 0xEE006567416E6F69)
  {

    return 1;
  }

  else
  {
    v7 = sub_197616EF0();

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