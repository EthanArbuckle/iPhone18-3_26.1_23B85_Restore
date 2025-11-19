void sub_21B0F55EC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_31_7(a1, a2);
  if (v2)
  {
    v5 = (v4 + 48);
    do
    {
      v6 = *(v5 - 2);
      v7 = *(v5 - 1);
      v8 = *v5;
      v5 += 3;

      OUTLINED_FUNCTION_105();
      _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();

      _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v3);
      OUTLINED_FUNCTION_62_0();

      --v2;
    }

    while (v2);
  }
}

unint64_t sub_21B0F5670()
{
  result = qword_27CD47918;
  if (!qword_27CD47918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47918);
  }

  return result;
}

unint64_t sub_21B0F56C4()
{
  result = qword_27CD47928;
  if (!qword_27CD47928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47928);
  }

  return result;
}

uint64_t sub_21B0F5718(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD478D0, &qword_21B12C2E8);
    a2();
    OUTLINED_FUNCTION_35_2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21B0F578C()
{
  result = qword_27CD47940;
  if (!qword_27CD47940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47940);
  }

  return result;
}

unint64_t sub_21B0F57E0()
{
  result = qword_27CD47960;
  if (!qword_27CD47960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47960);
  }

  return result;
}

unint64_t sub_21B0F5834()
{
  result = qword_27CD47970;
  if (!qword_27CD47970)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD47968, &qword_21B12C328);
    sub_21B0F56C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47970);
  }

  return result;
}

unint64_t sub_21B0F58BC()
{
  result = qword_27CD47978;
  if (!qword_27CD47978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47978);
  }

  return result;
}

unint64_t sub_21B0F5914()
{
  result = qword_27CD47980;
  if (!qword_27CD47980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47980);
  }

  return result;
}

unint64_t sub_21B0F596C()
{
  result = qword_27CD47988;
  if (!qword_27CD47988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47988);
  }

  return result;
}

unint64_t sub_21B0F59C4()
{
  result = qword_27CD47990;
  if (!qword_27CD47990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47990);
  }

  return result;
}

unint64_t sub_21B0F5A1C()
{
  result = qword_27CD47998;
  if (!qword_27CD47998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47998);
  }

  return result;
}

unint64_t sub_21B0F5A74()
{
  result = qword_27CD479A0;
  if (!qword_27CD479A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD479A0);
  }

  return result;
}

unint64_t sub_21B0F5ACC()
{
  result = qword_27CD479A8;
  if (!qword_27CD479A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD479A8);
  }

  return result;
}

uint64_t sub_21B0F5B44(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_21B0F5B84(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
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

uint64_t sub_21B0F5C08(uint64_t a1, int a2)
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

uint64_t sub_21B0F5C48(uint64_t result, int a2, int a3)
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

uint64_t sub_21B0F5CAC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7C && *(a1 + 8))
    {
      return OUTLINED_FUNCTION_76_1(*a1 + 123);
    }

    v3 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
    if (v3 >= 0x7B)
    {
      return OUTLINED_FUNCTION_76_1(-1);
    }
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_76_1(v3);
}

uint64_t sub_21B0F5CFC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7B)
  {
    *result = a2 - 124;
    if (a3 >= 0x7C)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7C)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_21B0F5D8C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_76_1(-1);
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
      return OUTLINED_FUNCTION_76_1((*a1 | (v4 << 8)) - 8);
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

      return OUTLINED_FUNCTION_76_1((*a1 | (v4 << 8)) - 8);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_76_1((*a1 | (v4 << 8)) - 8);
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

  return OUTLINED_FUNCTION_76_1(v8);
}

_BYTE *sub_21B0F5E10(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = OUTLINED_FUNCTION_39(result, a2 + 7);
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AvroRecordSchema.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_21B0F5FD0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_76_1(-1);
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
      return OUTLINED_FUNCTION_76_1((*a1 | (v4 << 8)) - 2);
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

      return OUTLINED_FUNCTION_76_1((*a1 | (v4 << 8)) - 2);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_76_1((*a1 | (v4 << 8)) - 2);
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

  return OUTLINED_FUNCTION_76_1(v8);
}

_BYTE *sub_21B0F6054(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = OUTLINED_FUNCTION_39(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_21B0F612C(_BYTE *result, int a2, int a3)
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

unint64_t sub_21B0F61D8()
{
  result = qword_27CD479B0;
  if (!qword_27CD479B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD479B0);
  }

  return result;
}

unint64_t sub_21B0F6230()
{
  result = qword_27CD479B8;
  if (!qword_27CD479B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD479B8);
  }

  return result;
}

unint64_t sub_21B0F6288()
{
  result = qword_27CD479C0;
  if (!qword_27CD479C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD479C0);
  }

  return result;
}

unint64_t sub_21B0F62E0()
{
  result = qword_27CD479C8;
  if (!qword_27CD479C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD479C8);
  }

  return result;
}

unint64_t sub_21B0F6338()
{
  result = qword_27CD479D0;
  if (!qword_27CD479D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD479D0);
  }

  return result;
}

unint64_t sub_21B0F6390()
{
  result = qword_27CD479D8;
  if (!qword_27CD479D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD479D8);
  }

  return result;
}

unint64_t sub_21B0F63E8()
{
  result = qword_27CD479E0;
  if (!qword_27CD479E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD479E0);
  }

  return result;
}

unint64_t sub_21B0F6440()
{
  result = qword_27CD479E8;
  if (!qword_27CD479E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD479E8);
  }

  return result;
}

unint64_t sub_21B0F6498()
{
  result = qword_27CD479F0;
  if (!qword_27CD479F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD479F0);
  }

  return result;
}

unint64_t sub_21B0F64F0()
{
  result = qword_27CD479F8;
  if (!qword_27CD479F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD479F8);
  }

  return result;
}

unint64_t sub_21B0F6548()
{
  result = qword_27CD47A00;
  if (!qword_27CD47A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47A00);
  }

  return result;
}

unint64_t sub_21B0F65A0()
{
  result = qword_27CD47A08;
  if (!qword_27CD47A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47A08);
  }

  return result;
}

unint64_t sub_21B0F65F8()
{
  result = qword_27CD47A10;
  if (!qword_27CD47A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47A10);
  }

  return result;
}

unint64_t sub_21B0F6650()
{
  result = qword_27CD47A18;
  if (!qword_27CD47A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47A18);
  }

  return result;
}

unint64_t sub_21B0F66A8()
{
  result = qword_27CD47A20;
  if (!qword_27CD47A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47A20);
  }

  return result;
}

unint64_t sub_21B0F6700()
{
  result = qword_27CD47A28;
  if (!qword_27CD47A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47A28);
  }

  return result;
}

unint64_t sub_21B0F6758()
{
  result = qword_27CD47A30;
  if (!qword_27CD47A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47A30);
  }

  return result;
}

unint64_t sub_21B0F67AC()
{
  result = qword_27CD47A38;
  if (!qword_27CD47A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47A38);
  }

  return result;
}

unint64_t sub_21B0F690C()
{
  result = qword_27CD47A48;
  if (!qword_27CD47A48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD47A40, &qword_21B12D320);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47A48);
  }

  return result;
}

uint64_t sub_21B0F69CC(uint64_t result, unint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 6)
  {
    return sub_21B0F69F0(result, a2);
  }

  if (a4 == 5)
  {
  }

  return result;
}

uint64_t sub_21B0F69F0(uint64_t result, unint64_t a2)
{
  switch((a2 >> 60) & 3)
  {
    case 1uLL:
    case 2uLL:
      result = sub_21AF99818(result, a2 & 0xCFFFFFFFFFFFFFFFLL);
      break;
    case 3uLL:
      return result;
    default:

      break;
  }

  return result;
}

uint64_t sub_21B0F6A44(uint64_t result, unint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  switch(a9)
  {
    case 0:

      result = sub_21B0F6B5C(result, a2, a3, a4);
      break;
    case 1:
    case 2:

      goto LABEL_3;
    case 3:

      break;
    case 4:
LABEL_3:

      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_21B0F6B5C(uint64_t result, unint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 6)
  {
    return sub_21B0F6B80(result, a2);
  }

  if (a4 == 5)
  {
  }

  return result;
}

uint64_t sub_21B0F6B80(uint64_t result, unint64_t a2)
{
  switch((a2 >> 60) & 3)
  {
    case 1uLL:
    case 2uLL:
      result = sub_21AF99728(result, a2 & 0xCFFFFFFFFFFFFFFFLL);
      break;
    case 3uLL:
      return result;
    default:

      break;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_30()
{

  return sub_21B112D14();
}

void OUTLINED_FUNCTION_13_9()
{
  v2 = *(v0 + 16);

  JUMPOUT(0x21CEEA150);
}

uint64_t OUTLINED_FUNCTION_16_11()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_18_7()
{
  v2 = *(v0 - 2);
  v3 = *(v0 - 1);
  v4 = *v0;
}

uint64_t OUTLINED_FUNCTION_20_8()
{

  return _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
}

__n128 OUTLINED_FUNCTION_25_5@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 32);
  result = *(a1 + 48);
  v4 = *(a1 + 64);
  return result;
}

uint64_t OUTLINED_FUNCTION_27_7()
{
  result = *((v0 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v3 = *((v0 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
  v4 = *((v0 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
  v5 = *((v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v6 = *((v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
  v7 = *((v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
  return result;
}

void OUTLINED_FUNCTION_31_7(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);

  JUMPOUT(0x21CEEA150);
}

uint64_t OUTLINED_FUNCTION_34_6()
{

  return sub_21B0F6800(&STACK[0x2A0], &STACK[0x240]);
}

void *OUTLINED_FUNCTION_37_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  *(&__dst + 6) = 0;
  *&__dst = 0;
  BYTE14(__dst) = v64;

  return memcpy(&__dst, (v65 + 32), v64);
}

void OUTLINED_FUNCTION_38_5()
{

  JUMPOUT(0x21CEEA150);
}

void OUTLINED_FUNCTION_39_3()
{

  JUMPOUT(0x21CEEA150);
}

void OUTLINED_FUNCTION_40_4()
{

  JUMPOUT(0x21CEEA150);
}

void OUTLINED_FUNCTION_41_4()
{

  JUMPOUT(0x21CEEA150);
}

void OUTLINED_FUNCTION_48_3()
{

  JUMPOUT(0x21CEEA150);
}

uint64_t OUTLINED_FUNCTION_51_0()
{

  return sub_21B112D04();
}

void OUTLINED_FUNCTION_53_1()
{
  v0 = STACK[0x258];
  v1 = STACK[0x260];
  v2 = STACK[0x268];
  v3 = STACK[0x270];
}

uint64_t OUTLINED_FUNCTION_62_0()
{
}

uint64_t OUTLINED_FUNCTION_63_1()
{

  return sub_21B112EE4();
}

uint64_t OUTLINED_FUNCTION_64_1()
{

  return sub_21B112EE4();
}

void OUTLINED_FUNCTION_65_0()
{
  v2 = *(v0 + 16);

  JUMPOUT(0x21CEEA150);
}

uint64_t OUTLINED_FUNCTION_66_1()
{

  return sub_21B112D04();
}

uint64_t OUTLINED_FUNCTION_70_1()
{
  v2 = *v0;
}

void OUTLINED_FUNCTION_74_0()
{

  JUMPOUT(0x21CEE9770);
}

uint64_t OUTLINED_FUNCTION_86_1(uint64_t a1, uint64_t a2)
{
  v4 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v3 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
  v5 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
}

uint64_t OUTLINED_FUNCTION_87_1(void *a1)
{
  a1[2] = v3;
  a1[3] = v2;
  a1[4] = v1;
}

uint64_t OUTLINED_FUNCTION_88_1()
{

  return sub_21B112F24();
}

uint64_t OUTLINED_FUNCTION_91_1()
{

  return sub_21B110BF4();
}

uint64_t OUTLINED_FUNCTION_92_1()
{

  return sub_21B110BF4();
}

uint64_t OUTLINED_FUNCTION_93_1(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 52);

  return swift_allocObject();
}

void OUTLINED_FUNCTION_94_1()
{

  JUMPOUT(0x21CEE9770);
}

void *OUTLINED_FUNCTION_95_1(void *a1)
{

  return memcpy(a1, (v1 + 16), 0x58uLL);
}

uint64_t OUTLINED_FUNCTION_96_1()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_97_1()
{

  return sub_21B0F6800(v0 - 240, &STACK[0x240]);
}

uint64_t OUTLINED_FUNCTION_98_1()
{

  return _s9SwiftAvro0B9PrimitiveV4hash4intoys6HasherVz_tF_0();
}

uint64_t AvroRecord.encodeAsSingleObject(withFingerprint:)(Swift::OpaquePointer a1)
{
  v3 = v1[1];
  v16[0] = *v1;
  v16[1] = v3;
  v4 = v1[3];
  v16[2] = v1[2];
  v16[3] = v4;
  v14 = xmmword_21B117F10;
  v15 = 0;
  ByteBuffer.writeBytes(_:)(&unk_282C971D0);
  ByteBuffer.writeBytes(_:)(a1);
  v17 = 3;
  sub_21B0F6970(v1, &v13);
  ByteBuffer.writeAvroValue(_:)(v16, v5, v6, v7, v8, v9, v10, v11);
  sub_21AFC5398(v1);
  return v14;
}

uint64_t sub_21B0F7374(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_21B0F73B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t static AvroValue.optionalString(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a2)
  {
    v3 = a1;
  }

  else
  {
    v3 = 0;
  }

  *a3 = v3;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
  if (a2)
  {
    v4 = 5;
  }

  else
  {
    v4 = 7;
  }

  *(a3 + 24) = v4;
  *(a3 + 64) = 0;
}

uint64_t AvroValue.getPrimitive<A>()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(v2 + 64))
  {
    return __swift_storeEnumTagSinglePayload(a2, 1, 1, a1);
  }

  else
  {
    return AvroPrimitive.get<A>()(*v2, *(v2 + 8), *(v2 + 16), *(v2 + 24), a1, a2);
  }
}

Swift::Int __swiftcall ByteBuffer.writeBytes(_:)(Swift::OpaquePointer a1)
{
  if (!*(a1._rawValue + 2))
  {
    return 0;
  }

  sub_21B110E14();
  return *(a1._rawValue + 2);
}

char *Endianness.host.unsafeMutableAddressor()
{
  if (qword_27CD47880 != -1)
  {
    OUTLINED_FUNCTION_4_31();
  }

  return &static Endianness.host;
}

uint64_t static Endianness.host.getter()
{
  if (qword_27CD47880 != -1)
  {
    OUTLINED_FUNCTION_4_31();
  }

  return static Endianness.host;
}

uint64_t Endianness.hashValue.getter(char a1)
{
  sub_21B112EC4();
  MEMORY[0x21CEEA150](a1 & 1);
  return sub_21B112F14();
}

uint64_t sub_21B0F760C()
{
  v1 = *v0;
  sub_21B112EC4();
  Endianness.hash(into:)(v3, v1);
  return sub_21B112F14();
}

double ByteBuffer.readableBytesView.getter@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  ByteBufferView.init(_:)(a1, a2, a3, v9);
  v5 = OUTLINED_FUNCTION_7();
  sub_21AF99818(v5, v6);
  result = *v9;
  v8 = v9[1];
  *a4 = v9[0];
  *(a4 + 16) = v8;
  *(a4 + 32) = v10;
  return result;
}

uint64_t ByteBufferView.init(_:)@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = 0;
  switch(a2 >> 62)
  {
    case 1uLL:
      LODWORD(v4) = HIDWORD(result) - result;
      if (__OFSUB__(HIDWORD(result), result))
      {
        goto LABEL_18;
      }

      v4 = v4;
      goto LABEL_6;
    case 2uLL:
      v6 = *(result + 16);
      v5 = *(result + 24);
      v7 = __OFSUB__(v5, v6);
      v4 = v5 - v6;
      if (!v7)
      {
        goto LABEL_6;
      }

      goto LABEL_19;
    case 3uLL:
      goto LABEL_6;
    default:
      v4 = BYTE6(a2);
LABEL_6:
      if (v4 < a3)
      {
        __break(1u);
        goto LABEL_16;
      }

      if (a3 < 0)
      {
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v8 = 0;
      switch(a2 >> 62)
      {
        case 1uLL:
          if (__OFSUB__(HIDWORD(result), result))
          {
            goto LABEL_20;
          }

          v8 = HIDWORD(result) - result;
          break;
        case 2uLL:
          v10 = *(result + 16);
          v9 = *(result + 24);
          v8 = v9 - v10;
          if (__OFSUB__(v9, v10))
          {
            goto LABEL_21;
          }

          break;
        case 3uLL:
          break;
        default:
          v8 = BYTE6(a2);
          break;
      }

      if (v8 >= v4)
      {
        *a4 = result;
        a4[1] = a2;
        a4[2] = a3;
        a4[3] = a3;
        a4[4] = v4;
        return result;
      }

LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
      return result;
  }
}

uint64_t ByteBuffer.count.getter(uint64_t a1, unint64_t a2)
{
  result = 0;
  switch(a2 >> 62)
  {
    case 1uLL:
      v4 = __OFSUB__(HIDWORD(a1), a1);
      v5 = HIDWORD(a1) - a1;
      if (v4)
      {
        __break(1u);
        goto LABEL_8;
      }

      result = v5;
      break;
    case 2uLL:
      v8 = a1 + 16;
      v6 = *(a1 + 16);
      v7 = *(v8 + 8);
      result = v7 - v6;
      if (__OFSUB__(v7, v6))
      {
LABEL_8:
        __break(1u);
      }

      break;
    case 3uLL:
      return result;
    default:
      result = BYTE6(a2);
      break;
  }

  return result;
}

uint64_t ByteBuffer._toEndianness<A>(value:endianness:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return sub_21B112974();
  }

  else
  {
    return sub_21B112984();
  }
}

uint64_t sub_21B0F7860(uint64_t result, unint64_t a2, uint64_t a3)
{
  v3 = 0;
  switch(a2 >> 62)
  {
    case 1uLL:
      LODWORD(v3) = HIDWORD(result) - result;
      if (__OFSUB__(HIDWORD(result), result))
      {
        goto LABEL_9;
      }

      v3 = v3;
      goto LABEL_6;
    case 2uLL:
      v5 = *(result + 16);
      v4 = *(result + 24);
      v6 = __OFSUB__(v4, v5);
      v3 = v4 - v5;
      if (!v6)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    case 3uLL:
      goto LABEL_6;
    default:
      v3 = BYTE6(a2);
LABEL_6:
      result = v3 - a3;
      if (__OFSUB__(v3, a3))
      {
        __break(1u);
LABEL_9:
        __break(1u);
LABEL_10:
        __break(1u);
      }

      return result;
  }
}

uint64_t ByteBuffer.init(bytes:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_21B110E14();
  }

  return 0;
}

uint64_t ByteBuffer.init(data:)()
{
  sub_21AF99728(0, 0xC000000000000000);
  v0 = OUTLINED_FUNCTION_7();
  sub_21AF99818(v0, v1);
  v2 = OUTLINED_FUNCTION_7();
  sub_21AF99728(v2, v3);
  return OUTLINED_FUNCTION_7();
}

uint64_t ByteBuffer.readInteger<A>(endianness:as:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v5 = sub_21B112774();
  OUTLINED_FUNCTION_6_25();
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v10);
  v12 = &v23 - v11;
  v13 = *v2;
  v14 = v2[1];
  v15 = v2[2];
  ByteBuffer.getInteger<A>(at:endianness:as:)(v15, v15, a1, &v23 - v11);
  if (__swift_getEnumTagSinglePayload(v12, 1, a1) == 1)
  {
    (*(v7 + 8))(v12, v5);
    v16 = a2;
    v17 = 1;
    return __swift_storeEnumTagSinglePayload(v16, v17, 1, a1);
  }

  v18 = *(a1 - 8) + 32;
  result = (*v18)(a2, v12, a1);
  v20 = *(v18 + 32);
  v21 = __OFADD__(v15, v20);
  v22 = v15 + v20;
  if (!v21)
  {
    v2[2] = v22;
    v16 = a2;
    v17 = 0;
    return __swift_storeEnumTagSinglePayload(v16, v17, 1, a1);
  }

  __break(1u);
  return result;
}

uint64_t ByteBuffer.getInteger<A>(at:endianness:as:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X5>, uint64_t a3@<X6>, uint64_t a4@<X8>)
{
  v5 = *(*(a3 - 8) + 64);
  if (result < a2 || v5 < 0)
  {

    return __swift_storeEnumTagSinglePayload(a4, 1, 1, a3);
  }

  else if (__OFADD__(result, v5))
  {
    __break(1u);
  }

  else
  {
    v6 = MEMORY[0x277D84B78];
    if (a3 == MEMORY[0x277D84B78])
    {
      MEMORY[0x28223BE20](result);
      ByteBuffer.withUnsafeBytes<A>(_:)();
      return __swift_storeEnumTagSinglePayload(a4, 0, 1, v6);
    }

    else
    {
      MEMORY[0x28223BE20](result);
      sub_21B112774();
      return ByteBuffer.withUnsafeBytes<A>(_:)();
    }
  }

  return result;
}

Swift::Void __swiftcall ByteBuffer.moveReaderIndex(forwardBy:)(Swift::Int forwardBy)
{
  v2 = *(v1 + 16);
  v3 = __OFADD__(v2, forwardBy);
  v4 = v2 + forwardBy;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 16) = v4;
  }
}

Swift::String_optional __swiftcall ByteBuffer.readString(length:)(Swift::Int length)
{
  if (length < 0)
  {
    length = 0;
    v9 = 0;
  }

  else
  {
    v2 = *(v1 + 16);
    v3 = v2 + length;
    if (__OFADD__(v2, length))
    {
      __break(1u);
    }

    else
    {
      v4 = OUTLINED_FUNCTION_11_11();
      length = sub_21B0F7E2C(v4, v5, v6, v7, v8);
      if (v9)
      {
        *(v1 + 16) = v3;
      }
    }
  }

  result.value._object = v9;
  result.value._countAndFlagsBits = length;
  return result;
}

Swift::String_optional __swiftcall ByteBuffer.getString(at:length:)(Swift::Int at, Swift::Int length)
{
  v5 = 0;
  if (at < v3)
  {
    v7 = 0;
  }

  else
  {
    v7 = 0;
    if ((length & 0x8000000000000000) == 0)
    {
      if (__OFADD__(at, length))
      {
        __break(1u);
      }

      else
      {
        v8 = OUTLINED_FUNCTION_5_34(0, 0, v2);
        v5 = sub_21B0F7E2C(v8, v9, v10, v11, v12);
      }
    }
  }

  result.value._object = v7;
  result.value._countAndFlagsBits = v5;
  return result;
}

Swift::OpaquePointer_optional __swiftcall ByteBuffer.readBytes(length:)(Swift::Int length)
{
  if (length < 0)
  {
    length = 0;
  }

  else
  {
    v2 = *(v1 + 16);
    v3 = v2 + length;
    if (__OFADD__(v2, length))
    {
      __break(1u);
    }

    else
    {
      v4 = OUTLINED_FUNCTION_11_11();
      length = sub_21B0F7FAC(v4, v5, v6, v7, v8);
      *(v1 + 16) = v3;
    }
  }

  result.value._rawValue = length;
  result.is_nil = v9;
  return result;
}

Swift::OpaquePointer_optional __swiftcall ByteBuffer.getBytes(at:length:)(Swift::Int at, Swift::Int length)
{
  v5 = 0;
  if (at >= v3 && (length & 0x8000000000000000) == 0)
  {
    if (__OFADD__(at, length))
    {
      __break(1u);
    }

    else
    {
      v6 = OUTLINED_FUNCTION_5_34(0, length, v2);
      v5 = sub_21B0F7FAC(v6, v7, v8, v9, v10);
    }
  }

  result.is_nil = length;
  result.value._rawValue = v5;
  return result;
}

uint64_t sub_21B0F7E2C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5)
{
  v12 = *MEMORY[0x277D85DE8];
  switch(a2 >> 62)
  {
    case 1uLL:
      v10 = a1 >> 32;
      if (a1 >> 32 < a1)
      {
        goto LABEL_17;
      }

      a1 = a1;
      v7 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      v8 = v10;
LABEL_14:
      result = sub_21B0FA124(a1, v8, v7, a4, a5);
      goto LABEL_15;
    case 2uLL:
      v6 = *(a1 + 24);
      v7 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      a1 = *(a1 + 16);
      v8 = v6;
      goto LABEL_14;
    case 3uLL:
      if (!(a5 | a4))
      {
        goto LABEL_11;
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    default:
      if (BYTE6(a2) < a4 || BYTE6(a2) < a5)
      {
        goto LABEL_18;
      }

      if (a5 < a4)
      {
LABEL_19:
        __break(1u);
      }

LABEL_11:
      result = sub_21B1124B4();
LABEL_15:
      v11 = *MEMORY[0x277D85DE8];
      return result;
  }
}

uint64_t sub_21B0F7FAC(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v9 = result >> 32;
      if (result >> 32 >= result)
      {
        result = result;
        v7 = a2 & 0x3FFFFFFFFFFFFFFFLL;
        v8 = v9;
        goto LABEL_9;
      }

      __break(1u);
      break;
    case 2uLL:
      v6 = *(result + 24);
      v7 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      result = *(result + 16);
      v8 = v6;
LABEL_9:
      result = sub_21B0FA22C(result, v8, v7, a4, a5);
      break;
    case 3uLL:
      result = 0;
      v5 = 0;
      goto LABEL_5;
    default:
      v5 = a2 & 0xFFFFFFFFFFFFFFLL;
LABEL_5:
      result = sub_21B0F9EE8(result, v5, a4, a5);
      break;
  }

  return result;
}

uint64_t sub_21B0F8040(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[2] = *MEMORY[0x277D85DE8];
  switch(a2 >> 62)
  {
    case 1uLL:
      v8 = a1 >> 32;
      if (a1 >> 32 < a1)
      {
        __break(1u);
      }

      a1 = a1;
      v6 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      v7 = v8;
      goto LABEL_7;
    case 2uLL:
      v5 = *(a1 + 24);
      v6 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      a1 = *(a1 + 16);
      v7 = v5;
LABEL_7:
      result = sub_21B0FA2D0(a1, v7, v6, a4);
      break;
    case 3uLL:
      memset(v10, 0, 14);
      result = *(v10 + a4);
      break;
    default:
      v10[0] = a1;
      LOWORD(v10[1]) = a2;
      BYTE2(v10[1]) = BYTE2(a2);
      BYTE3(v10[1]) = BYTE3(a2);
      BYTE4(v10[1]) = BYTE4(a2);
      BYTE5(v10[1]) = BYTE5(a2);
      result = *(v10 + a4);
      break;
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_21B0F816C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  OUTLINED_FUNCTION_3_28(a1, a2, a3, a4, a5, a6, a7);
  v15 = OUTLINED_FUNCTION_60();
  result = sub_21AF99818(v15, v16);
  switch(v13 >> 62)
  {
    case 1uLL:
      v92 = v11;
      if (v8 >> 32 < v8)
      {
        __break(1u);
        goto LABEL_21;
      }

      v90 = v14;
      v91 = v12;
      v89 = &v89;
      v56 = OUTLINED_FUNCTION_60();
      sub_21AF99818(v56, v57);
      v58 = OUTLINED_FUNCTION_60();
      sub_21AF99818(v58, v59);
      v60 = OUTLINED_FUNCTION_60();
      sub_21AF99818(v60, v61);
      if (sub_21B110C04())
      {
        result = sub_21B110C24();
        if (__OFSUB__(v8, result))
        {
          goto LABEL_22;
        }
      }

      goto LABEL_15;
    case 2uLL:
      v91 = v12;
      v92 = v11;
      v89 = &v89;
      v90 = v14;
      v33 = *(v8 + 16);
      v34 = *(v8 + 24);
      v35 = OUTLINED_FUNCTION_60();
      sub_21AF99818(v35, v36);
      v37 = OUTLINED_FUNCTION_60();
      sub_21AF99818(v37, v38);
      v39 = OUTLINED_FUNCTION_60();
      sub_21AF99818(v39, v40);
      if (sub_21B110C04() && (result = sub_21B110C24(), __OFSUB__(v33, result)))
      {
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
      }

      else
      {
        if (__OFSUB__(v34, v33))
        {
          __break(1u);
LABEL_9:
          v41 = OUTLINED_FUNCTION_60();
          sub_21AF99818(v41, v42);
          v43 = OUTLINED_FUNCTION_60();
          sub_21AF99818(v43, v44);
          OUTLINED_FUNCTION_2_29();
          v53 = sub_21B0F9FA0(v45, v46, v47, v48, v49, v50, v51, v52);
          if (v9)
          {
            v54 = OUTLINED_FUNCTION_60();
            sub_21AF99728(v54, v55);
            goto LABEL_16;
          }

          v30 = v53;
          v81 = OUTLINED_FUNCTION_60();
          sub_21AF99728(v81, v82);
        }

        else
        {
LABEL_15:
          sub_21B110C14();
          v62 = OUTLINED_FUNCTION_60();
          sub_21AF99818(v62, v63);
          v64 = OUTLINED_FUNCTION_9_21();
          v65 = v91;
          v30 = sub_21B0F8E50(v64, v66, v67, v92, v10, v7, v90, v68);
          v69 = OUTLINED_FUNCTION_60();
          sub_21AF99728(v69, v70);
          v71 = OUTLINED_FUNCTION_60();
          sub_21AF99728(v71, v72);
          v73 = OUTLINED_FUNCTION_60();
          sub_21AF99728(v73, v74);
          if (v65)
          {
LABEL_16:
            v75 = OUTLINED_FUNCTION_60();
            sub_21AF99728(v75, v76);
            v77 = OUTLINED_FUNCTION_60();
            sub_21AF99728(v77, v78);
            v79 = OUTLINED_FUNCTION_60();
            return sub_21AF99728(v79, v80);
          }
        }

LABEL_19:
        v83 = OUTLINED_FUNCTION_60();
        sub_21AF99728(v83, v84);
        v85 = OUTLINED_FUNCTION_60();
        sub_21AF99728(v85, v86);
        v87 = OUTLINED_FUNCTION_60();
        sub_21AF99728(v87, v88);
        return v30 | ((HIDWORD(v30) & 1) << 32);
      }

      return result;
    case 3uLL:
      goto LABEL_9;
    default:
      v18 = OUTLINED_FUNCTION_60();
      sub_21AF99818(v18, v19);
      v20 = OUTLINED_FUNCTION_60();
      sub_21AF99818(v20, v21);
      OUTLINED_FUNCTION_2_29();
      v30 = sub_21B0F9FA0(v22, v23, v24, v25, v26, v27, v28, v29);
      v31 = OUTLINED_FUNCTION_60();
      sub_21AF99728(v31, v32);
      if (!v9)
      {
        goto LABEL_19;
      }

      goto LABEL_16;
  }
}

uint64_t sub_21B0F83E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  OUTLINED_FUNCTION_3_28(a1, a2, a3, a4, a5, a6, a7);
  v16 = OUTLINED_FUNCTION_60();
  result = sub_21AF99818(v16, v17);
  switch(v14 >> 62)
  {
    case 1uLL:
      v92 = v12;
      if (v8 >> 32 < v8)
      {
        __break(1u);
        goto LABEL_22;
      }

      v90 = v15;
      v91 = v13;
      v89 = &v88;
      v48 = OUTLINED_FUNCTION_60();
      sub_21AF99818(v48, v49);
      v50 = OUTLINED_FUNCTION_60();
      sub_21AF99818(v50, v51);
      v52 = OUTLINED_FUNCTION_60();
      sub_21AF99818(v52, v53);
      if (sub_21B110C04())
      {
        result = sub_21B110C24();
        if (__OFSUB__(v8, result))
        {
          goto LABEL_23;
        }
      }

      goto LABEL_14;
    case 2uLL:
      v92 = v12;
      v90 = v15;
      v91 = v13;
      v89 = &v88;
      v23 = *(v8 + 16);
      v24 = *(v8 + 24);
      v25 = OUTLINED_FUNCTION_60();
      sub_21AF99818(v25, v26);
      v27 = OUTLINED_FUNCTION_60();
      sub_21AF99818(v27, v28);
      v29 = OUTLINED_FUNCTION_60();
      sub_21AF99818(v29, v30);
      if (!sub_21B110C04() || (result = sub_21B110C24(), !__OFSUB__(v23, result)))
      {
        if (__OFSUB__(v24, v23))
        {
          __break(1u);
LABEL_8:
          v31 = OUTLINED_FUNCTION_60();
          sub_21AF99818(v31, v32);
          v33 = OUTLINED_FUNCTION_60();
          sub_21AF99818(v33, v34);
LABEL_9:
          OUTLINED_FUNCTION_2_29();
          v43 = sub_21B0FA068(v35, v36, v37, v38, v39, v40, v41, v42);
          if (v9)
          {
            v44 = OUTLINED_FUNCTION_60();
            sub_21AF99728(v44, v45);
            v46 = OUTLINED_FUNCTION_60();
            sub_21AF99728(v46, v47);
LABEL_16:
            v70 = OUTLINED_FUNCTION_60();
            sub_21AF99728(v70, v71);
            v72 = OUTLINED_FUNCTION_60();
            sub_21AF99728(v72, v73);
            return v11;
          }

          v11 = v43;
          v74 = OUTLINED_FUNCTION_60();
          sub_21AF99728(v74, v75);
        }

        else
        {
LABEL_14:
          sub_21B110C14();
          v54 = OUTLINED_FUNCTION_60();
          sub_21AF99818(v54, v55);
          v56 = OUTLINED_FUNCTION_9_21();
          v57 = v91;
          v61 = sub_21B0F8F14(v56, v58, v59, v92, v10, v7, v90, v60);
          if (v57)
          {
            v62 = OUTLINED_FUNCTION_60();
            sub_21AF99728(v62, v63);
            v64 = OUTLINED_FUNCTION_60();
            sub_21AF99728(v64, v65);
            v66 = OUTLINED_FUNCTION_60();
            sub_21AF99728(v66, v67);
            v68 = OUTLINED_FUNCTION_60();
            sub_21AF99728(v68, v69);
            goto LABEL_16;
          }

          v11 = v61;
          v76 = OUTLINED_FUNCTION_60();
          sub_21AF99728(v76, v77);
          v78 = OUTLINED_FUNCTION_60();
          sub_21AF99728(v78, v79);
          v80 = OUTLINED_FUNCTION_60();
          sub_21AF99728(v80, v81);
        }

        v82 = OUTLINED_FUNCTION_60();
        sub_21AF99728(v82, v83);
        v84 = OUTLINED_FUNCTION_60();
        sub_21AF99728(v84, v85);
        v86 = OUTLINED_FUNCTION_60();
        sub_21AF99728(v86, v87);
        return v11;
      }

LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return result;
    case 3uLL:
      goto LABEL_8;
    default:
      v19 = OUTLINED_FUNCTION_60();
      sub_21AF99818(v19, v20);
      v21 = OUTLINED_FUNCTION_60();
      sub_21AF99818(v21, v22);
      goto LABEL_9;
  }
}

uint64_t sub_21B0F86A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W7>, uint64_t a6@<X8>, uint64_t a7, uint64_t a8)
{
  v23 = a4;
  v24 = a5;
  v21 = a2;
  v22 = a3;
  v20 = a1;
  v30 = *MEMORY[0x277D85DE8];
  v9 = *(*(*(a8 + 8) + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(*(AssociatedTypeWitness - 8) + 64);
  v12 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v13 = *(a7 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedConformanceWitness();
  sub_21B112E34();
  sub_21B112CD4();
  v26 = v20;
  v27 = v21;
  v28 = v22;
  v29 = v23;
  sub_21B0F8CD8(v16, sub_21B0FABF8, v25, a7, MEMORY[0x277D84A98], MEMORY[0x277D84F78] + 8, MEMORY[0x277D84AC0], v17);
  ByteBuffer._toEndianness<A>(value:endianness:)(v16, v24 & 1);
  (*(v13 + 8))(v16, a7);
  result = __swift_storeEnumTagSinglePayload(a6, 0, 1, a7);
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ByteBuffer.writeImmutableBuffer(_:)(uint64_t a1, unint64_t a2)
{
  sub_21B110E94();
  result = 0;
  switch(a2 >> 62)
  {
    case 1uLL:
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        __break(1u);
        goto LABEL_8;
      }

      result = HIDWORD(a1) - a1;
      break;
    case 2uLL:
      v6 = *(a1 + 16);
      v5 = *(a1 + 24);
      result = v5 - v6;
      if (__OFSUB__(v5, v6))
      {
LABEL_8:
        __break(1u);
      }

      break;
    case 3uLL:
      return result;
    default:
      result = BYTE6(a2);
      break;
  }

  return result;
}

uint64_t ByteBuffer.writeData(_:)(uint64_t a1, unint64_t a2)
{
  sub_21B110E94();
  result = 0;
  switch(a2 >> 62)
  {
    case 1uLL:
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        __break(1u);
        goto LABEL_8;
      }

      result = HIDWORD(a1) - a1;
      break;
    case 2uLL:
      v6 = *(a1 + 16);
      v5 = *(a1 + 24);
      result = v5 - v6;
      if (__OFSUB__(v5, v6))
      {
LABEL_8:
        __break(1u);
      }

      break;
    case 3uLL:
      return result;
    default:
      result = BYTE6(a2);
      break;
  }

  return result;
}

Swift::Int __swiftcall ByteBuffer.writeString(_:)(Swift::String a1)
{
  v1 = sub_21B112444();
  OUTLINED_FUNCTION_6_25();
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21B112434();
  sub_21B112414();
  (*(v3 + 8))(v8, v1);
  v9 = OUTLINED_FUNCTION_109();
  v11 = ByteBuffer.writeData(_:)(v9, v10);
  v12 = OUTLINED_FUNCTION_109();
  sub_21AF99728(v12, v13);
  return v11;
}

uint64_t ByteBuffer.writeInteger<A>(_:endianness:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6_25();
  v6 = v5;
  v8 = *(v7 + 64);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  ByteBuffer._toEndianness<A>(value:endianness:)(v10, v13 & 1);
  v22 = v3;
  sub_21B0F8CD8(v12, sub_21B0F9D68, v21, a3, MEMORY[0x277D84A98], MEMORY[0x277D83B88], MEMORY[0x277D84AC0], v14);
  v15 = *(v6 + 8);
  v16 = OUTLINED_FUNCTION_60();
  v17(v16);
  result = v20[1];
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_21B0F8C70@<X0>(_BYTE *a1@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  v4 = sub_21B1061F0(a1, a2);
  if (v4[2])
  {
    sub_21B110E14();
    v5 = v4[2];
  }

  else
  {
    v5 = 0;
  }

  *a3 = v5;
  return result;
}

uint64_t sub_21B0F8CD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20]();
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v17(v13, v13 + *(*(v16 - 8) + 64), v15);
  if (v8)
  {
    return (*(v11 + 32))(a8, v15, a5);
  }

  return result;
}

char *sub_21B0F8DCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = MEMORY[0x277D84F90];
  if (!a1)
  {
    return v4;
  }

  v6 = a4 - a3;
  if (a4 == a3)
  {
    return v4;
  }

  v4 = sub_21B106330(a4 - a3, 0);
  result = sub_21B0FAB8C((v4 + 32), v6, (a3 + a1), v6);
  if (v9 == v6)
  {
    return v4;
  }

  __break(1u);
  return result;
}

uint64_t sub_21B0F8E50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, char a8)
{
  v16 = *MEMORY[0x277D85DE8];
  __dst = 0;
  if (a1)
  {
    memcpy(&__dst, (a1 + a3), a4 - a3);
    v11 = __dst;
  }

  else
  {
    v11 = 0;
  }

  sub_21AF99728(a5, a6);
  LODWORD(v12) = bswap32(v11);
  if (a8)
  {
    v12 = v11;
  }

  else
  {
    v12 = v12;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

unint64_t sub_21B0F8F14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, char a8)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v15[0] = 0;
  if (a1)
  {
    memcpy(v15, (a1 + a3), a4 - a3);
    v11 = v15[0];
  }

  else
  {
    v11 = 0;
  }

  sub_21AF99728(a5, a6);
  v12 = bswap64(v11);
  if (a8)
  {
    result = v11;
  }

  else
  {
    result = v12;
  }

  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ByteBuffer.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_21B112EC4();
  sub_21B110E64();
  MEMORY[0x21CEEA150](a3);
  return sub_21B112F14();
}

uint64_t sub_21B0F90C4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_21B112EC4();
  ByteBuffer.hash(into:)(v5, v1, v2, v3);
  return sub_21B112F14();
}

uint64_t ByteBufferView._buffer.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = OUTLINED_FUNCTION_109();
  sub_21AF99818(v4, v5);
  return OUTLINED_FUNCTION_109();
}

uint64_t ByteBufferView._buffer.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_21AF99728(*v3, v3[1]);
  *v3 = a1;
  v3[1] = a2;
  v3[2] = a3;
  return result;
}

uint64_t ByteBufferView._range.getter()
{
  result = *(v0 + 24);
  v2 = *(v0 + 32);
  return result;
}

uint64_t ByteBufferView._range.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 24) = result;
  *(v2 + 32) = a2;
  return result;
}

uint64_t ByteBufferView.init(buffer:range:)@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  if (a4 < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = 0;
    switch(a2 >> 62)
    {
      case 1uLL:
        LODWORD(v6) = HIDWORD(result) - result;
        if (__OFSUB__(HIDWORD(result), result))
        {
          goto LABEL_11;
        }

        v6 = v6;
        break;
      case 2uLL:
        v8 = *(result + 16);
        v7 = *(result + 24);
        v9 = __OFSUB__(v7, v8);
        v6 = v7 - v8;
        if (v9)
        {
          goto LABEL_12;
        }

        break;
      case 3uLL:
        break;
      default:
        v6 = BYTE6(a2);
        break;
    }

    if (v6 >= a5)
    {
      *a6 = result;
      a6[1] = a2;
      a6[2] = a3;
      a6[3] = a4;
      a6[4] = a5;
      return result;
    }
  }

  __break(1u);
LABEL_11:
  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t ByteBufferView.withUnsafeBytes<A>(_:)()
{
  v1 = *v0;
  v2 = v0[1];
  return ByteBuffer.withUnsafeBytes<A>(_:)();
}

char *sub_21B0F92C8(char *result, uint64_t a2, void *(*a3)(void *__return_ptr, char *, char *), uint64_t a4, uint64_t a5)
{
  if (!result)
  {
    goto LABEL_7;
  }

  v8 = *(a5 + 24);
  v9 = *(a5 + 32);
  v10 = __OFSUB__(v9, v8);
  v11 = v9 - v8;
  if (v10)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  v12[4] = v6;
  v12[5] = v7;
  result = a3(v12, &result[v8], &result[v8 + v11]);
  if (!v5)
  {
    return v12[0];
  }

  return result;
}

uint64_t sub_21B0F932C(uint64_t result, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t a5)
{
  if (result)
  {
    v6 = *(a5 + 24);
    v5 = *(a5 + 32);
    v7 = __OFSUB__(v5, v6);
    v8 = v5 - v6;
    if (!v7)
    {
      return a3(result + v6, result + v6 + v8);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

Swift::Int __swiftcall ByteBufferView.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t ByteBufferView.subscript.getter(uint64_t result)
{
  if (v1[3] > result || v1[4] <= result)
  {
    __break(1u);
  }

  else
  {
    v3 = v1[2];
    if (v3 <= result)
    {
      return sub_21B0F8040(*v1, v1[1], v3, result);
    }
  }

  __break(1u);
  return result;
}

uint64_t ByteBufferView.subscript.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = *v3;
    v6 = *(v3 + 8);
    v7 = *(v3 + 8);
    v9 = result;
    v10 = 0;
    switch(v7 >> 62)
    {
      case 1uLL:
        if (__OFSUB__(HIDWORD(v5), v5))
        {
          goto LABEL_12;
        }

        v10 = HIDWORD(v5) - v5;
        goto LABEL_7;
      case 2uLL:
        v12 = *(v5 + 16);
        v11 = *(v5 + 24);
        v10 = v11 - v12;
        if (__OFSUB__(v11, v12))
        {
          goto LABEL_13;
        }

LABEL_7:
        v13 = *(v3 + 8);
        result = sub_21B0F9DA8(v3, v14);
        v6 = v13;
        break;
      case 3uLL:
        break;
      default:
        v10 = BYTE6(v7);
        break;
    }

    if (v10 >= a2)
    {
      *a3 = v5;
      *(a3 + 8) = v6;
      *(a3 + 24) = v9;
      *(a3 + 32) = a2;
      return result;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t ByteBufferView.withContiguousStorageIfAvailable<A>(_:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  result = ByteBufferView.withUnsafeBytes<A>(_:)();
  if (!v2)
  {
    return __swift_storeEnumTagSinglePayload(a2, 0, 1, a1);
  }

  return result;
}

uint64_t sub_21B0F95E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(uint64_t, uint64_t, uint64_t)@<X4>, uint64_t a6@<X8>)
{
  result = a5(a3, a1, a2);
  if ((v9 & 1) == 0 && (v10 = *(a4 + 24), v11 = __OFADD__(result, v10), result += v10, v11))
  {
    __break(1u);
  }

  else
  {
    *a6 = result;
    *(a6 + 8) = v9 & 1;
  }

  return result;
}

uint64_t sub_21B0F9654(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  if (!a2 || a3 == a2)
  {
    return 0;
  }

  v3 = a1;
  result = a3 - a2;
  while (!__OFSUB__(result--, 1))
  {
    if (result < 0 || result >= a3 - a2)
    {
      goto LABEL_12;
    }

    if (*(a2 + result) == v3 || !result)
    {
      return result;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_21B0F96AC(uint64_t a1, uint64_t a2)
{
  v3 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v3)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  if (result < *(v2 + 24) || *(v2 + 32) < result)
  {
    goto LABEL_8;
  }

  return result;
}

uint64_t sub_21B0F96D0(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  if (v5 < a3 || v4 > a3 || v4 > result || v5 < result)
  {
    __break(1u);
    goto LABEL_28;
  }

  v9 = a3 - result;
  if (__OFSUB__(a3, result))
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v9 <= 0 && v9 > a2)
    {
      return 0;
    }
  }

  else if ((v9 & 0x8000000000000000) == 0 && v9 < a2)
  {
    return 0;
  }

  v11 = __OFADD__(result, a2);
  result += a2;
  if (v11)
  {
    goto LABEL_29;
  }

  if (result < v4 || v5 < result)
  {
    goto LABEL_30;
  }

  return result;
}

uint64_t sub_21B0F9748@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *v2;
  v6 = v2[1];
  v7 = *(v2 + 4);
  result = sub_21B0F9790(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_21B0F9790(uint64_t a1)
{
  v2 = __OFSUB__(a1, 1);
  result = a1 - 1;
  if (v2)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  if (result < *(v1 + 24) || result >= *(v1 + 32))
  {
    goto LABEL_9;
  }

  return result;
}

uint64_t *sub_21B0F97B4(uint64_t *result)
{
  v2 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else if (v2 < *(v1 + 32) && v2 >= *(v1 + 24))
  {
    *result = v2;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_21B0F97E0@<X0>(uint64_t *a1@<X8>)
{
  result = ByteBufferView.startIndex.getter();
  *a1 = result;
  return result;
}

uint64_t sub_21B0F9808@<X0>(uint64_t *a1@<X8>)
{
  result = ByteBufferView.endIndex.getter();
  *a1 = result;
  return result;
}

double sub_21B0F9878@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = v2[1];
  v11 = *v2;
  v12 = v6;
  v13 = *(v2 + 4);
  ByteBufferView.subscript.getter(v5, v4, v9);
  result = *v9;
  v8 = v9[1];
  *a2 = v9[0];
  *(a2 + 16) = v8;
  *(a2 + 32) = v10;
  return result;
}

uint64_t sub_21B0F98D8@<X0>(uint64_t *a1@<X8>)
{
  v5 = *v1;
  v6 = v1[1];
  v7 = *(v1 + 4);
  result = sub_21B0F991C();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_21B0F991C()
{
  result = *(v0 + 24);
  if (*(v0 + 32) < result)
  {
    __break(1u);
  }

  return result;
}

BOOL sub_21B0F9930()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 4);
  return sub_21B0F7480();
}

uint64_t sub_21B0F99CC@<X0>(unsigned __int8 *a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  v8 = *v3;
  v9 = v3[1];
  v10 = *(v3 + 4);
  result = a2(*a1);
  *a3 = result;
  *(a3 + 8) = v6;
  *(a3 + 9) = v7 & 1;
  return result;
}

uint64_t sub_21B0F9A24@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  OUTLINED_FUNCTION_0_30();
  result = sub_21B0F96D0(v6, v7, v8);
  *a3 = result;
  *(a3 + 8) = v10 & 1;
  return result;
}

uint64_t sub_21B0F9A68(uint64_t *a1, uint64_t *a2)
{
  v4 = *v2;
  v5 = v2[1];
  v6 = *(v2 + 4);
  return sub_21B0F9AB0(*a1, *a2, a2[1]);
}

uint64_t sub_21B0F9AB0(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result >= a2)
  {
    v4 = __OFSUB__(result, a3);
    v3 = result - a3 < 0;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  if (v3 == v4)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21B0F9AC4(uint64_t *a1, uint64_t *a2)
{
  v4 = *v2;
  v5 = v2[1];
  v6 = *(v2 + 4);
  return sub_21B0FC57C(*a1, *a2, a2[1]);
}

uint64_t sub_21B0F9B0C(uint64_t *a1, uint64_t *a2)
{
  v4 = *v2;
  v5 = v2[1];
  v6 = *(v2 + 4);
  return sub_21B0F9B58(*a1, a1[1], *a2, a2[1]);
}

uint64_t sub_21B0F9B58(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result < a3 || a4 < a2)
  {
    __break(1u);
  }

  return result;
}

Swift::Int sub_21B0F9B6C@<X0>(Swift::Int *a1@<X0>, Swift::Int *a2@<X8>)
{
  result = ByteBufferView.index(after:)(*a1);
  *a2 = result;
  return result;
}

void *sub_21B0F9B98(void *result)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    ++*result;
  }

  return result;
}

__n128 sub_21B0F9BB0@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v2;
  result = *(v1 + 24);
  *(a1 + 24) = result;
  *(a1 + 40) = result.n128_u64[0];
  return result;
}

uint64_t sub_21B0F9BD0()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 4);
  return sub_21B0F9C0C();
}

uint64_t sub_21B0F9C0C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  result = v2 - v1;
  if (v2 < v1)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (__OFSUB__(v2, v1))
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_21B0F9C80@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = v2[1];
  v6 = *(v2 + 4);
  return ByteBufferView.withContiguousStorageIfAvailable<A>(_:)(a1, a2);
}

uint64_t sub_21B0F9CBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(v3 + 48);
  v5 = *(v3 + 56);
  v6 = *(v3 + 64);
  return sub_21B0F86A4(a1, a2, *(v3 + 32), *(v3 + 40), *(v3 + 72), a3, *(v3 + 16), *(v3 + 24));
}

uint64_t sub_21B0F9CF4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = *(a1 + *(v1 + 32));
  return swift_dynamicCast();
}

uint64_t sub_21B0F9D40()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return v1();
}

uint64_t sub_21B0F9DE0(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  if (a1)
  {
    v5 = a2 - a1;
  }

  else
  {
    v5 = 0;
  }

  return v3(a1, v5);
}

uint64_t sub_21B0F9E48(uint64_t result, unint64_t a2, void *(*a3)(uint64_t *__return_ptr, void *, char *))
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v9 = result >> 32;
      if (result >> 32 >= result)
      {
        result = result;
        v7 = a2 & 0x3FFFFFFFFFFFFFFFLL;
        v8 = v9;
        goto LABEL_8;
      }

      __break(1u);
      break;
    case 2uLL:
      v6 = *(result + 24);
      v7 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      result = *(result + 16);
      v8 = v6;
LABEL_8:
      result = sub_21B0FA340(result, v8, v7, a3);
      break;
    case 3uLL:
      result = 0;
      v5 = 0;
      v4 = 0;
      goto LABEL_5;
    default:
      v4 = BYTE6(a2);
      v5 = a2 & 0xFFFFFFFFFFFFLL;
LABEL_5:
      result = sub_21B0FA400(result, v5, v4, a3);
      break;
  }

  return result;
}

uint64_t sub_21B0F9EE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = *MEMORY[0x277D85DE8];
  v9 = a1;
  v11 = WORD2(a2);
  v10 = a2;
  v4 = a4 - a3;
  if (a4 == a3)
  {
    v5 = MEMORY[0x277D84F90];
  }

  else
  {
    v5 = sub_21B106330(a4 - a3, 0);
    memcpy((v5 + 32), &v9 + a3, v4);
  }

  v7 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t sub_21B0F9FA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, char a8)
{
  v19 = *MEMORY[0x277D85DE8];
  v16 = a1;
  v18 = WORD2(a2);
  v17 = a2;
  __dst = 0;
  memcpy(&__dst, &v16 + a3, a4 - a3);
  v11 = __dst;
  sub_21AF99728(a5, a6);
  LODWORD(v12) = bswap32(v11);
  if (a8)
  {
    v12 = v11;
  }

  else
  {
    v12 = v12;
  }

  LOBYTE(v16) = 0;
  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

unint64_t sub_21B0FA068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, char a8)
{
  v19 = *MEMORY[0x277D85DE8];
  v15 = 0;
  v16 = a1;
  v18 = WORD2(a2);
  v17 = a2;
  memcpy(&v15, &v16 + a3, a4 - a3);
  v11 = v15;
  sub_21AF99728(a5, a6);
  v12 = bswap64(v11);
  if (a8)
  {
    result = v11;
  }

  else
  {
    result = v12;
  }

  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_21B0FA124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_21B110C04();
  v10 = result;
  if (result)
  {
    result = sub_21B110C24();
    if (__OFSUB__(a1, result))
    {
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    v10 += a1 - result;
  }

  v11 = __OFSUB__(a2, a1);
  v12 = a2 - a1;
  if (v11)
  {
    __break(1u);
    goto LABEL_15;
  }

  result = sub_21B110C14();
  if (v10)
  {
    if (result < v12)
    {
      v12 = result;
    }

    v13 = sub_21B0FAB58(0, a4, v10, v10 + v12);
    result = sub_21B0FAB58(a4, a5, v10, v10 + v12);
    if (!__OFADD__(v13, result))
    {
      if (v13 + result >= v13)
      {
        return sub_21B1124B4();
      }

      goto LABEL_17;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (a4)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  result = sub_21B0FAB58(0, a5, 0, 0);
  if ((result & 0x8000000000000000) == 0)
  {
    return sub_21B1124B4();
  }

LABEL_19:
  __break(1u);
  return result;
}

char *sub_21B0FA22C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_21B110C04();
  v10 = result;
  if (result)
  {
    result = sub_21B110C24();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v10 += a1 - result;
  }

  v11 = __OFSUB__(a2, a1);
  v12 = a2 - a1;
  if (v11)
  {
    __break(1u);
    goto LABEL_13;
  }

  v13 = sub_21B110C14();
  if (v13 >= v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = v13;
  }

  v15 = v14 + v10;
  if (v10)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  return sub_21B0F8DCC(v10, v16, a4, a5);
}

uint64_t sub_21B0FA2D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_21B110C04();
  if (!v6)
  {
    v9 = 0;
    goto LABEL_5;
  }

  v7 = v6;
  result = sub_21B110C24();
  if (!__OFSUB__(a1, result))
  {
    v9 = a1 - result + v7;
LABEL_5:
    sub_21B110C14();
    return *(v9 + a4);
  }

  __break(1u);
  return result;
}

void *sub_21B0FA340(uint64_t a1, uint64_t a2, uint64_t a3, void *(*a4)(uint64_t *__return_ptr, void *, char *))
{
  result = sub_21B110C04();
  v9 = result;
  if (result)
  {
    result = sub_21B110C24();
    if (__OFSUB__(a1, result))
    {
LABEL_15:
      __break(1u);
      return result;
    }

    v9 = (v9 + a1 - result);
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = sub_21B110C14();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  v14 = v9 + v13;
  if (v9)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  result = a4(&v16, v9, v15);
  if (!v4)
  {
    return v16;
  }

  return result;
}

void *sub_21B0FA400(uint64_t a1, uint64_t a2, uint64_t a3, void *(*a4)(void *__return_ptr, uint64_t *, char *))
{
  v10[2] = *MEMORY[0x277D85DE8];
  v7 = a1;
  v9 = WORD2(a2);
  v8 = a2;
  result = a4(v10, &v7, &v7 + a3);
  if (!v4)
  {
    result = v10[0];
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

char *sub_21B0FA48C@<X0>(char *a1@<X0>, uint64_t a2@<X1>, void *(*a3)(void *__return_ptr, char *, char *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  result = sub_21B0F92C8(a1, a2, a3, a4, a5);
  if (!v6)
  {
    *a6 = result;
    *(a6 + 8) = v9 & 1;
  }

  return result;
}

unint64_t sub_21B0FA518()
{
  result = qword_27CD47A50;
  if (!qword_27CD47A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47A50);
  }

  return result;
}

unint64_t sub_21B0FA570()
{
  result = qword_27CD47A58;
  if (!qword_27CD47A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47A58);
  }

  return result;
}

unint64_t sub_21B0FA5C4()
{
  result = qword_27CD47A60;
  if (!qword_27CD47A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47A60);
  }

  return result;
}

unint64_t sub_21B0FA64C()
{
  result = qword_27CD47A78;
  if (!qword_27CD47A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47A78);
  }

  return result;
}

unint64_t sub_21B0FA6A4()
{
  result = qword_27CD47A80;
  if (!qword_27CD47A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47A80);
  }

  return result;
}

unint64_t sub_21B0FA6F8()
{
  result = qword_27CD47A88;
  if (!qword_27CD47A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47A88);
  }

  return result;
}

unint64_t sub_21B0FA784()
{
  result = qword_27CD47A98;
  if (!qword_27CD47A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47A98);
  }

  return result;
}

uint64_t sub_21B0FA818(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD47A70, &qword_21B12D578);
    sub_21B0FA64C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21B0FA894()
{
  result = qword_27CD47AA8;
  if (!qword_27CD47AA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD47AB0, &qword_21B12D710);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47AA8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Endianness(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_21B0FA9EC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xD && *(a1 + 24))
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

uint64_t sub_21B0FAA38(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_21B0FAAA8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xD && *(a1 + 40))
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

uint64_t sub_21B0FAAF4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_21B0FAB58(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - a3;
  if (!a3)
  {
    v4 = 0;
  }

  if (result < 0 || v4 < result)
  {
    __break(1u);
  }

  else if ((a2 & 0x8000000000000000) == 0 && v4 >= a2)
  {
    return a2 - result;
  }

  __break(1u);
  return result;
}

char *sub_21B0FAB8C(void *a1, int64_t a2, char *__src, int64_t a4)
{
  v4 = __src;
  if (a4 && a2)
  {
    if (a4 >= a2)
    {
      v5 = a2;
    }

    else
    {
      v5 = a4;
    }

    memcpy(a1, __src, v5);
    v4 += v5;
  }

  return v4;
}

void *sub_21B0FABF8(void *result)
{
  v2 = v1[2];
  if (v2)
  {
    v3 = (v2 + v1[4]);
  }

  else
  {
    v3 = 0;
  }

  if (result && v3)
  {
    if (v2)
    {
      v4 = v2 + v1[5];
    }

    else
    {
      v4 = 0;
    }

    return memmove(result, v3, v4 - v3);
  }

  return result;
}

__n128 OUTLINED_FUNCTION_0_30()
{
  result = *v0;
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_3_28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v9 = *(v7 + 16);

  return sub_21AF99818(a6, a7);
}

uint64_t OUTLINED_FUNCTION_4_31()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_11_11()
{
  result = *v0;
  v2 = v0[1];
  return result;
}

uint64_t sub_21B0FAD44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1 + 56;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 56);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  while (v8)
  {
LABEL_9:
    v13 = (*(a1 + 48) + 24 * (__clz(__rbit64(v8)) | (v11 << 6)));
    v14 = *v13;
    v15 = v13[2];
    if (*v13 == a2 && v13[1] == a3)
    {
      v14 = a2;
LABEL_17:

LABEL_18:

      return v14;
    }

    v8 &= v8 - 1;
    result = sub_21B112D04();
    if (result)
    {
      goto LABEL_17;
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v9)
    {
      v14 = 0;
      goto LABEL_18;
    }

    v8 = *(v5 + 8 * v12);
    ++v11;
    if (v8)
    {
      v11 = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void *sub_21B0FAE8C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_21B105A7C(*(a1 + 16), 0);
  v4 = sub_21B105DF4(&v6, v3 + 4, v2, a1);
  sub_21AF9C4BC();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v3;
}

void *sub_21B0FAF1C(void *result)
{
  v1 = result[3];
  v2 = result[4];
  v3 = v2 - v1;
  if (v2 < v1)
  {
    __break(1u);
  }

  else if (!__OFSUB__(v2, v1))
  {
    v4 = result;
    if (v3)
    {
      v5 = sub_21AF98C84(v2 - v1, 0);
      v4 = sub_21B105B30(v6, (v5 + 4), v3);
      sub_21AF99728(v6[0], v6[1]);
      if (v4 == v3)
      {
        return v5;
      }

      __break(1u);
    }

    sub_21B0FC108(v4);
    return MEMORY[0x277D84F90];
  }

  __break(1u);
  return result;
}

uint64_t AvroRecordSchema.makeTemplate(withPresetValues:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v3;
  v5 = v2;
  sub_21AFC5454(v5, &v35);
  AvroRecord.init(schema:)(&v37, v5);
  rawValue = v5->fields._rawValue;

  v36 = sub_21B0FB250(v8);
  if (a1)
  {
    v9 = a1;
  }

  else
  {
    v9 = sub_21B112334();
  }

  v10 = v9 + 64;
  v11 = 1 << *(v9 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v9 + 64);
  v14 = (v11 + 63) >> 6;

  v16 = 0;
  for (i = v9; v13; result = sub_21AFC54B0(__dst))
  {
LABEL_11:
    v18 = __clz(__rbit64(v13)) | (v16 << 6);
    v19 = (*(v9 + 48) + 16 * v18);
    v20 = *v19;
    v21 = v19[1];
    memcpy(__dst, (*(v9 + 56) + 72 * v18), 0x41uLL);
    v22 = v36;
    swift_bridgeObjectRetain_n();
    sub_21B0F6800(__dst, &v35);
    v23 = sub_21B0FAD44(v22, v20, v21);
    if (v24)
    {
      v26 = v24;
      v27 = v23;
      v28 = sub_21B0FBD2C(v23, v24, v25);
      v34 = v4;
      v30 = v29;

      sub_21B0FBED8(v28, v30);
      AvroRecord.set(_:forField:)(__dst, v27, v26);
      v4 = v34;
      if (v34)
      {
        sub_21AFC54B0(__dst);

        v35 = v37;
        sub_21AFC5398(&v35);
      }
    }

    else
    {
    }

    v9 = i;
    v13 &= v13 - 1;
  }

  while (1)
  {
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v17 >= v14)
    {

      result = sub_21B0FAE8C(v36);
      name = v37.schema.name;
      *a2 = v37.schema.type;
      *(a2 + 16) = name;
      v32 = *&v37.schema.fields._rawValue;
      *(a2 + 32) = v37.schema.namespace;
      *(a2 + 48) = v32;
      *(a2 + 64) = result;
      return result;
    }

    v13 = *(v10 + 8 * v17);
    ++v16;
    if (v13)
    {
      v16 = v17;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21B0FB250(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_21B0FC15C();
  result = MEMORY[0x21CEE9920](v2, &type metadata for AvroRecordSchema.Field, v3);
  v5 = 0;
  v12 = result;
  v6 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v6 == v5)
    {

      return v12;
    }

    if (v5 >= *(a1 + 16))
    {
      break;
    }

    ++v5;
    v9 = *(i - 1);
    v8 = *i;
    v10 = *(i - 2);

    sub_21B0FB330(&v11, v10, v9, v8);
  }

  __break(1u);
  return result;
}

uint64_t sub_21B0FB330(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = *v4;
  v9 = *(*v4 + 40);
  sub_21B112EC4();
  _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
  _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v28, a4);
  v10 = sub_21B112F14();
  v11 = -1 << *(v8 + 32);
  v12 = v10 & ~v11;
  if ((*(v8 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    while (1)
    {
      v14 = (*(v8 + 48) + 24 * v12);
      v15 = v14[2];
      v16 = *v14 == a2 && v14[1] == a3;
      if (v16 || (v17 = v14[1], (sub_21B112D04() & 1) != 0))
      {

        v18 = _s9SwiftAvro0B6SchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v15, a4);

        if (v18)
        {
          break;
        }
      }

      v12 = (v12 + 1) & v13;
      if (((*(v8 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    v22 = (*(v8 + 48) + 24 * v12);
    v23 = *v22;
    v24 = v22[1];
    v25 = v22[2];
    *a1 = v23;
    a1[1] = v24;
    a1[2] = v25;

    return 0;
  }

  else
  {
LABEL_10:
    v19 = *v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28[0] = *v26;

    sub_21B0FB788(a2, a3, a4, v12, isUniquelyReferenced_nonNull_native);
    *v26 = v28[0];
    *a1 = a2;
    a1[1] = a3;
    a1[2] = a4;
    return 1;
  }
}

uint64_t sub_21B0FB50C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47AB8, &qword_21B12D8C8);
  result = sub_21B1128C4();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v32 = v2;
  v33 = v3;
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

    v31 = 1 << *(v3 + 32);
    if (v31 >= 64)
    {
      sub_21B0CFEC4(0, (v31 + 63) >> 6, v8);
    }

    else
    {
      *v8 = -1 << v31;
    }

    v2 = v32;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = (*(v3 + 48) + 24 * (v14 | (v7 << 6)));
    v18 = *v17;
    v19 = v17[1];
    v20 = v17[2];
    v21 = *(v6 + 40);
    sub_21B112EC4();
    _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
    _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v34, v20);
    result = sub_21B112F14();
    v22 = -1 << *(v6 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v13 + 8 * (v23 >> 6))) == 0)
    {
      break;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v13 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = (*(v6 + 48) + 24 * v25);
    *v30 = v18;
    v30[1] = v19;
    v30[2] = v20;
    ++*(v6 + 16);
    v3 = v33;
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v26 = 0;
  v27 = (63 - v22) >> 6;
  while (++v24 != v27 || (v26 & 1) == 0)
  {
    v28 = v24 == v27;
    if (v24 == v27)
    {
      v24 = 0;
    }

    v26 |= v28;
    v29 = *(v13 + 8 * v24);
    if (v29 != -1)
    {
      v25 = __clz(__rbit64(~v29)) + (v24 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_21B0FB788(uint64_t result, uint64_t a2, unint64_t a3, unint64_t a4, char a5)
{
  v8 = result;
  v9 = *(*v5 + 16);
  v10 = *(*v5 + 24);
  if (v10 > v9 && (a5 & 1) != 0)
  {
    goto LABEL_17;
  }

  if (a5)
  {
    sub_21B0FB50C(v9 + 1);
  }

  else
  {
    if (v10 > v9)
    {
      result = sub_21B0FB960();
      goto LABEL_17;
    }

    sub_21B0FBAD0(v9 + 1);
  }

  v11 = *v5;
  v12 = *(*v5 + 40);
  sub_21B112EC4();
  _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
  _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v27, a3);
  result = sub_21B112F14();
  v13 = -1 << *(v11 + 32);
  a4 = result & ~v13;
  if ((*(v11 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
  {
    v14 = ~v13;
    do
    {
      v15 = (*(v11 + 48) + 24 * a4);
      v16 = v15[2];
      v17 = *v15 == v8 && v15[1] == a2;
      if (v17 || (v18 = v15[1], result = sub_21B112D04(), (result & 1) != 0))
      {

        v19 = _s9SwiftAvro0B6SchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v16, a3);

        if (v19)
        {
          goto LABEL_20;
        }
      }

      a4 = (a4 + 1) & v14;
    }

    while (((*(v11 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) != 0);
  }

LABEL_17:
  v20 = *v25;
  *(*v25 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v21 = (*(v20 + 48) + 24 * a4);
  *v21 = v8;
  v21[1] = a2;
  v21[2] = a3;
  v22 = *(v20 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (!v23)
  {
    *(v20 + 16) = v24;
    return result;
  }

  __break(1u);
LABEL_20:
  result = sub_21B112E44();
  __break(1u);
  return result;
}

void *sub_21B0FB960()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47AB8, &qword_21B12D8C8);
  v2 = *v0;
  v3 = sub_21B1128B4();
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
        v17 = 3 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + 8 * v17);
        v19 = *v18;
        v20 = v18[1];
        v21 = v18[2];
        v22 = (*(v4 + 48) + 8 * v17);
        *v22 = v19;
        v22[1] = v20;
        v22[2] = v21;
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

uint64_t sub_21B0FBAD0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47AB8, &qword_21B12D8C8);
  result = sub_21B1128C4();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v32 = v3;
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
        v17 = (*(v3 + 48) + 24 * (v14 | (v7 << 6)));
        v18 = *v17;
        v19 = v17[1];
        v20 = v17[2];
        v21 = *(v6 + 40);
        sub_21B112EC4();

        _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
        _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v33, v20);
        result = sub_21B112F14();
        v22 = -1 << *(v6 + 32);
        v23 = result & ~v22;
        v24 = v23 >> 6;
        if (((-1 << v23) & ~*(v13 + 8 * (v23 >> 6))) == 0)
        {
          break;
        }

        v25 = __clz(__rbit64((-1 << v23) & ~*(v13 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v13 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
        v30 = (*(v6 + 48) + 24 * v25);
        *v30 = v18;
        v30[1] = v19;
        v30[2] = v20;
        ++*(v6 + 16);
        v3 = v32;
        if (!v11)
        {
          goto LABEL_9;
        }
      }

      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v13 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
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

          v2 = v31;
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

uint64_t sub_21B0FBD2C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_21B112EC4();
  _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
  _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v26, a3);
  v9 = sub_21B112F14();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
    return 0;
  }

  v12 = ~v10;
  while (1)
  {
    v13 = (*(v7 + 48) + 24 * v11);
    v14 = v13[2];
    v15 = *v13 == a1 && v13[1] == a2;
    if (v15 || (v16 = v13[1], (sub_21B112D04() & 1) != 0))
    {

      v17 = _s9SwiftAvro0B6SchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v14, a3);

      if (v17)
      {
        break;
      }
    }

    v11 = (v11 + 1) & v12;
    if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      return 0;
    }
  }

  v19 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v3;
  v26[0] = *v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_21B0FB960();
    v21 = v26[0];
  }

  v22 = (*(v21 + 48) + 24 * v11);
  v18 = *v22;
  v23 = v22[1];
  v24 = v22[2];
  sub_21B0FBF1C(v11);
  *v3 = v26[0];
  return v18;
}

uint64_t sub_21B0FBED8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_21B0FBF1C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_21B112874();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 24 * v6);
        v13 = *v12;
        v14 = v12[1];
        v15 = v12[2];
        sub_21B112EC4();

        _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
        _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v28, v15);
        v16 = sub_21B112F14();

        v17 = v16 & v7;
        if (v2 >= v10)
        {
          if (v17 >= v10 && v2 >= v17)
          {
LABEL_15:
            v20 = *(v3 + 48);
            v21 = v20 + 24 * v2;
            v22 = (v20 + 24 * v6);
            if (v2 != v6 || v21 >= v22 + 24)
            {
              v24 = *v22;
              *(v21 + 16) = *(v22 + 2);
              *v21 = v24;
              v2 = v6;
            }
          }
        }

        else if (v17 >= v10 || v2 >= v17)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v25 = *(v3 + 16);
  v26 = __OFSUB__(v25, 1);
  v27 = v25 - 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v27;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_21B0FC15C()
{
  result = qword_27CD47AC0;
  if (!qword_27CD47AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47AC0);
  }

  return result;
}

Swift::Int ByteBuffer.writeAvroValue(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  __dst[11] = *MEMORY[0x277D85DE8];
  v10 = *a1;
  v9 = *(a1 + 8);
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  v13 = a1;
  switch(*(a1 + 64))
  {
    case 1:
      OUTLINED_FUNCTION_116_1(a1, a2, a3, a4, a5, a6, a7, a8, v28, *v29, *&v29[8], *&v29[16]);
      ByteBuffer.writeAvroArray(_:)();
      goto LABEL_12;
    case 2:
      goto LABEL_7;
    case 3:
      v20 = *(a1 + 48);
      *&v29[32] = *(a1 + 32);
      *&v29[48] = v20;
      *&v29[24] = v12;
      OUTLINED_FUNCTION_116_1(a1, a2, a3, a4, a5, a6, a7, a8, v28, v10, v9, v11);
      v15 = ByteBuffer.writeAvroRecord(_:)(v29);
LABEL_9:
      v8 = v15;
LABEL_10:
      sub_21AFC54B0(v13);
      goto LABEL_13;
    case 4:
      memcpy(__dst, (v10 + 16), 0x58uLL);
      v16 = (2 * __dst[10]) ^ (__dst[10] >> 63);
      sub_21B0F6800(v13, v29);
      sub_21B0F685C(__dst, v29);
      v17 = sub_21B103CA8(v16);
      ByteBuffer.writeBytes(_:)(v17);
      OUTLINED_FUNCTION_84_2();
      memcpy(v29, &__dst[1], 0x41uLL);
      v18 = ByteBuffer.writeAvroValue(_:)(v29);
      sub_21B0F68B8(__dst);
      a1 = sub_21AFC54B0(v13);
      v19 = __OFADD__(v11, v18);
      v8 = v11 + v18;
      if (!v19)
      {
        goto LABEL_13;
      }

      __break(1u);
LABEL_7:
      OUTLINED_FUNCTION_116_1(a1, a2, a3, a4, a5, a6, a7, a8, v28, *v29, *&v29[8], *&v29[16]);
      ByteBuffer.writeAvroMap(_:)();
LABEL_12:
      OUTLINED_FUNCTION_118_0();

LABEL_13:
      v21 = *MEMORY[0x277D85DE8];
      return v8;
    default:
      switch(*(a1 + 24))
      {
        case 1u:
          v24 = sub_21B103B80((2 * v10) ^ (v10 >> 31));
          goto LABEL_19;
        case 2u:
          v24 = sub_21B103CA8((2 * v10) ^ (v10 >> 63));
LABEL_19:
          ByteBuffer.writeBytes(_:)(v24);
          OUTLINED_FUNCTION_19_0();

          goto LABEL_10;
        case 3u:
          v25 = OUTLINED_FUNCTION_91_2(a1, a2, a3, a4, a5, a6, a7, a8, v28, *v29, *&v29[8], *&v29[16], *&v29[24], *&v29[32], *&v29[40], *&v29[48], *&v29[56], *&v29[64], v30, v31, v10);
          v15 = sub_21B0FC468(v25);
          goto LABEL_9;
        case 4u:
          v23 = OUTLINED_FUNCTION_91_2(a1, a2, a3, a4, a5, a6, a7, a8, v28, *v29, *&v29[8], *&v29[16], *&v29[24], *&v29[32], *&v29[40], *&v29[48], *&v29[56], *&v29[64], v30, v31, *a1);
          v15 = sub_21B0FC4DC(v23);
          goto LABEL_9;
        case 5u:
          OUTLINED_FUNCTION_116_1(a1, a2, a3, a4, a5, a6, a7, a8, v28, *v29, *&v29[8], *&v29[16]);
          v26._countAndFlagsBits = v10;
          v26._object = v9;
          v15 = ByteBuffer.writeAvroString(_:)(v26);
          goto LABEL_9;
        case 6u:
          OUTLINED_FUNCTION_116_1(a1, a2, a3, a4, a5, a6, a7, a8, v28, *v29, *&v29[8], *&v29[16]);
          v27._rawValue = v10;
          v15 = sub_21B103AA8(v27, v9, v11);
          goto LABEL_9;
        case 7u:
          sub_21AFC54B0(a1);
          v8 = 0;
          goto LABEL_13;
        default:
          v14 = OUTLINED_FUNCTION_91_2(a1, a2, a3, a4, a5, a6, a7, a8, v28, *v29, *&v29[8], *&v29[16], *&v29[24], *&v29[32], *&v29[40], *&v29[48], *&v29[56], *&v29[64], v30, v31, v10 & 1);
          v15 = sub_21B0FC3F4(v14);
          goto LABEL_9;
      }
  }
}

uint64_t sub_21B0FC3F4(_BYTE *a1)
{
  v2 = sub_21B10626C(1, 0);
  *(v2 + 32) = *a1;
  if (v2[2])
  {
    sub_21B110E14();
    v3 = v2[2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_21B0FC468(_DWORD *a1)
{
  v2 = sub_21B10626C(4, 0);
  *(v2 + 8) = *a1;
  if (v2[2])
  {
    sub_21B110E14();
    v3 = v2[2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_21B0FC4DC(void *a1)
{
  v2 = sub_21B10626C(8, 0);
  v2[4] = *a1;
  if (v2[2])
  {
    sub_21B110E14();
    v3 = v2[2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_21B0FC550(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  if (v4 < a2 || v3 > a2 || v3 > result || v4 < result)
  {
    __break(1u);
    goto LABEL_14;
  }

  v8 = __OFSUB__(a2, result);
  result = a2 - result;
  if (v8)
  {
LABEL_14:
    __break(1u);
  }

  return result;
}

uint64_t sub_21B0FC57C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result < a2 || a3 < result)
  {
    __break(1u);
  }

  return result;
}

void sub_21B0FC590()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = v2 - v1;
  if (v2 < v1)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (__OFSUB__(v2, v1))
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (!v3)
  {
    sub_21B0FC108(v0);
    return;
  }

  v4 = sub_21B10626C(v2 - v1, 0);
  sub_21B0F9DA8(v0, v6);
  v5 = sub_21B105B30(v6, (v4 + 4), v3);
  sub_21AF99728(v6[0], v6[1]);
  if (v5 == v3)
  {
    sub_21B0FC108(v0);
    return;
  }

LABEL_9:
  __break(1u);
}

Swift::Int ByteBuffer.writeAvroPrimitive(_:)(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v29[1] = *MEMORY[0x277D85DE8];
  v6 = 0;
  switch(a4)
  {
    case 1:
      v8 = sub_21B103B80((2 * a1) ^ (a1 >> 31));
      goto LABEL_6;
    case 2:
      v8 = sub_21B103CA8((2 * a1) ^ (a1 >> 63));
LABEL_6:
      v9 = ByteBuffer.writeBytes(_:)(v8);

      v10 = *MEMORY[0x277D85DE8];
      return v9;
    case 3:
      LODWORD(v29[0]) = a1;
      v7 = sub_21B0FC468(v29);
      goto LABEL_9;
    case 4:
      v29[0] = a1;
      v7 = sub_21B0FC4DC(v29);
      goto LABEL_9;
    case 5:
      v24 = OUTLINED_FUNCTION_238();
      sub_21B0F69CC(v24, v25, v26, 5);
      v27._countAndFlagsBits = a1;
      v27._object = a2;
      v18 = ByteBuffer.writeAvroString(_:)(v27);
      v19 = OUTLINED_FUNCTION_238();
      v22 = 5;
      goto LABEL_12;
    case 6:
      v12 = OUTLINED_FUNCTION_238();
      sub_21B0F69CC(v12, v13, v14, 6);
      v15._rawValue = OUTLINED_FUNCTION_238();
      v18 = sub_21B103AA8(v15, v16, v17);
      v19 = OUTLINED_FUNCTION_238();
      v22 = 6;
LABEL_12:
      sub_21B0F6B5C(v19, v20, v21, v22);
      v28 = *MEMORY[0x277D85DE8];
      return v18;
    case 7:
      goto LABEL_10;
    default:
      LOBYTE(v29[0]) = a1 & 1;
      v7 = sub_21B0FC3F4(v29);
LABEL_9:
      v6 = v7;
LABEL_10:
      v23 = *MEMORY[0x277D85DE8];
      return v6;
  }
}

void ByteBuffer.writeAvroArray(_:)()
{
  OUTLINED_FUNCTION_76();
  v2 = v1;
  v290[9] = *MEMORY[0x277D85DE8];
  v272 = sub_21B112444();
  v3 = OUTLINED_FUNCTION_1(v272);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_67_1();
  v271 = v8;
  v9 = *(v2 + 16);
  if (!v9)
  {
    OUTLINED_FUNCTION_4_32();
    sub_21B1059A8();
    OUTLINED_FUNCTION_135_0(v263);
    if (!v73)
    {
LABEL_329:
      OUTLINED_FUNCTION_142_0();
      OUTLINED_FUNCTION_19_0();

      v264 = *MEMORY[0x277D85DE8];
      goto LABEL_330;
    }

LABEL_337:
    OUTLINED_FUNCTION_13_10(v29);
    sub_21B1059A8();
    goto LABEL_329;
  }

  v10 = sub_21B103CA8(2 * v9);
  v11 = ByteBuffer.writeBytes(_:)(v10);

  v12 = 0;
  v274 = v2 + 32;
  v270 = v5 + 8;
  while (1)
  {
    v13 = v274 + 72 * v12;
    memcpy(v286, v13, sizeof(v286));
    ++v12;
    v14 = *v286;
    v16 = *&v286[16];
    v15 = *&v286[24];
    switch(v286[64])
    {
      case 1:
        OUTLINED_FUNCTION_66_2();
        v30 = OUTLINED_FUNCTION_66_2();
        v26 = ByteBuffer.writeAvroArray(_:)(v30);
        goto LABEL_18;
      case 2:
        OUTLINED_FUNCTION_66_2();
        OUTLINED_FUNCTION_66_2();
        ByteBuffer.writeAvroMap(_:)();
LABEL_18:
        v28 = v26;
        sub_21AFC54B0(v286);

LABEL_19:

        goto LABEL_211;
      case 3:
        v287.schema.type._countAndFlagsBits = *v286;
        v287.schema.type._object = *&v286[8];
        v287.schema.name = *&v286[16];
        v27 = *(v13 + 48);
        v287.schema.namespace = *(v13 + 32);
        *&v287.schema.fields._rawValue = v27;
        OUTLINED_FUNCTION_66_2();
        v28 = ByteBuffer.writeAvroRecord(_:)(&v287);
        sub_21AFC54B0(v286);
        goto LABEL_211;
      case 4:
        OUTLINED_FUNCTION_95_1(&v282);
        if (((2 * v285) ^ (v285 >> 63)) >= 0x80)
        {
          sub_21B0F6800(v286, &v278);
          sub_21B0F6800(v286, &v278);
          sub_21B0F685C(&v282, &v278);
          OUTLINED_FUNCTION_4_32();
          sub_21B1059A8();
          v18 = v31;
          v32 = *(v31 + 16);
          do
          {
            v33 = *(v18 + 24);
            if (v32 >= v33 >> 1)
            {
              OUTLINED_FUNCTION_13_10(v33);
              OUTLINED_FUNCTION_71_2();
              v18 = v35;
            }

            OUTLINED_FUNCTION_55_0();
          }

          while (v34);
        }

        else
        {
          sub_21B0F6800(v286, &v278);
          sub_21B0F6800(v286, &v278);
          sub_21B0F685C(&v282, &v278);
          v18 = MEMORY[0x277D84F90];
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v234 = *(v18 + 16);
          OUTLINED_FUNCTION_3_27();
          sub_21B1059A8();
          v18 = v235;
        }

        v19 = *(v18 + 24);
        if (*(v18 + 16) >= v19 >> 1)
        {
          OUTLINED_FUNCTION_13_10(v19);
          OUTLINED_FUNCTION_71_2();
          v18 = v236;
        }

        break;
      default:
        switch(v286[24])
        {
          case 1:
            v49 = OUTLINED_FUNCTION_149_0();
            OUTLINED_FUNCTION_20_9(v49);
            if (!v50)
            {
              goto LABEL_45;
            }

            OUTLINED_FUNCTION_19_8();
LABEL_44:
            sub_21B110E14();
LABEL_45:
            sub_21AFC54B0(v286);
            sub_21AFC54B0(v286);
            v28 = *(v15 + 16);

            goto LABEL_211;
          case 2:
            if (((2 * *v286) ^ (*v286 >> 63)) >= 0x80)
            {
              OUTLINED_FUNCTION_4_32();
              sub_21B1059A8();
              v15 = v67;
              v68 = *(v67 + 16);
              do
              {
                v69 = *(v15 + 24);
                if (v68 >= v69 >> 1)
                {
                  OUTLINED_FUNCTION_13_10(v69);
                  OUTLINED_FUNCTION_71_2();
                  v15 = v71;
                }

                OUTLINED_FUNCTION_55_0();
              }

              while (v70);
            }

            else
            {
              v15 = MEMORY[0x277D84F90];
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v257 = *(v15 + 16);
              OUTLINED_FUNCTION_3_27();
              sub_21B1059A8();
              v15 = v258;
            }

            v47 = *(v15 + 24);
            if (*(v15 + 16) >= v47 >> 1)
            {
              OUTLINED_FUNCTION_13_10(v47);
              OUTLINED_FUNCTION_71_2();
              v15 = v259;
            }

            OUTLINED_FUNCTION_120_0();
            goto LABEL_44;
          case 3:
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43780, &qword_21B114238);
            v15 = OUTLINED_FUNCTION_117_0();
            OUTLINED_FUNCTION_9_22(v15);
            *(OUTLINED_FUNCTION_69_2(v48) + 32) = v14;
            goto LABEL_40;
          case 4:
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43780, &qword_21B114238);
            v15 = OUTLINED_FUNCTION_119_0();
            OUTLINED_FUNCTION_9_22(v15);
            *(OUTLINED_FUNCTION_69_2(v46) + 32) = v14;
            goto LABEL_40;
          case 5:
            if ((*&v286[8] & 0x1000000000000000) != 0)
            {
              v53 = OUTLINED_FUNCTION_146_0();
            }

            else
            {
              OUTLINED_FUNCTION_52_2();
              if (v74)
              {
                v53 = v51;
              }

              else
              {
                v53 = v52;
              }
            }

            v54 = (2 * v53) ^ (v53 >> 63);
            OUTLINED_FUNCTION_66_2();
            OUTLINED_FUNCTION_66_2();
            OUTLINED_FUNCTION_66_2();
            v55 = sub_21B103CA8(v54);
            OUTLINED_FUNCTION_20_9(v55);
            if (v56)
            {
              OUTLINED_FUNCTION_19_8();
              sub_21B110E14();
              v57 = *(v54 + 16);
            }

            else
            {
              v57 = 0;
            }

            sub_21B112434();
            OUTLINED_FUNCTION_74_1();
            OUTLINED_FUNCTION_45_3();
            v72(v271, v272);
            OUTLINED_FUNCTION_131();
            if (!v74 & v73)
            {
              v75 = 0;
            }

            else
            {
              v75 = v54;
            }

            if (!v74 & v73)
            {
              v15 = 0xC000000000000000;
            }

            else
            {
              v15 = v14;
            }

            OUTLINED_FUNCTION_34_7();
            sub_21B110E94();
            sub_21AFC54B0(v286);
            sub_21AFC54B0(v286);
            sub_21AFC54B0(v286);
            switch(v15 >> 62)
            {
              case 1uLL:
                v101 = OUTLINED_FUNCTION_34_7();
                sub_21AF99728(v101, v102);
                LODWORD(v29) = HIDWORD(v75) - v75;
                if (__OFSUB__(HIDWORD(v75), v75))
                {
                  goto LABEL_342;
                }

                v29 = v29;
LABEL_90:
                v28 = v57 + v29;
                if (!__OFADD__(v57, v29))
                {
                  goto LABEL_211;
                }

                goto LABEL_336;
              case 2uLL:
                v96 = *(v75 + 16);
                v95 = *(v75 + 24);
                v97 = OUTLINED_FUNCTION_34_7();
                sub_21AF99728(v97, v98);
                v29 = v95 - v96;
                if (!__OFSUB__(v95, v96))
                {
                  goto LABEL_90;
                }

                goto LABEL_343;
              case 3uLL:
                v99 = OUTLINED_FUNCTION_34_7();
                sub_21AF99728(v99, v100);
                v29 = 0;
                goto LABEL_90;
              default:
                v76 = OUTLINED_FUNCTION_34_7();
                sub_21AF99728(v76, v77);
                v29 = BYTE6(v15);
                goto LABEL_90;
            }

          case 6:
            v58 = (*&v286[8] >> 60) & 3;
            if (v58)
            {
              v15 = *&v286[8] >> 62;
              v269 = HIDWORD(*v286);
              v273 = v286[14];
              if (v58 != 1)
              {
                v82 = 0;
                switch(v15)
                {
                  case 1uLL:
                    if (__OFSUB__(v269, *v286))
                    {
                      goto LABEL_348;
                    }

                    v82 = v269 - *v286;
LABEL_138:
                    OUTLINED_FUNCTION_66_2();
                    OUTLINED_FUNCTION_66_2();
                    OUTLINED_FUNCTION_66_2();
LABEL_139:
                    v128 = sub_21B103CA8((2 * v82) ^ (v82 >> 63));
                    OUTLINED_FUNCTION_98_2(v128);
                    if (v129)
                    {
                      OUTLINED_FUNCTION_115_1();
                      v130 = *(v13 + 16);
                    }

                    else
                    {
                      v130 = 0;
                    }

                    OUTLINED_FUNCTION_92_2();
                    sub_21AFC54B0(v286);
                    sub_21AFC54B0(v286);
                    switch(v15)
                    {
                      case 0:
                        sub_21AFC54B0(v286);
                        v29 = v273;
                        goto LABEL_150;
                      case 1:
                        sub_21AFC54B0(v286);
                        LODWORD(v29) = v269 - v14;
                        if (__OFSUB__(v269, v14))
                        {
                          goto LABEL_350;
                        }

                        v29 = v29;
LABEL_150:
                        v28 = v130 + v29;
                        if (!__OFADD__(v130, v29))
                        {
                          goto LABEL_211;
                        }

                        goto LABEL_339;
                      case 2:
                        v131 = *(v14 + 16);
                        v15 = *(v14 + 24);
                        sub_21AFC54B0(v286);
                        v29 = v15 - v131;
                        if (!__OFSUB__(v15, v131))
                        {
                          goto LABEL_150;
                        }

                        goto LABEL_349;
                      case 3:
                        sub_21AFC54B0(v286);
                        v29 = 0;
                        goto LABEL_150;
                      default:
LABEL_382:
                        JUMPOUT(0);
                    }

                  case 2uLL:
                    v127 = *(*v286 + 16);
                    v126 = *(*v286 + 24);
                    v82 = v126 - v127;
                    if (!__OFSUB__(v126, v127))
                    {
                      goto LABEL_138;
                    }

                    goto LABEL_347;
                  case 3uLL:
                    goto LABEL_139;
                  default:
                    v82 = v273;
                    goto LABEL_139;
                }
              }

              v59 = 0;
              switch(v15)
              {
                case 1uLL:
                  if (__OFSUB__(v269, *v286))
                  {
                    goto LABEL_346;
                  }

                  v59 = v269 - *v286;
LABEL_128:
                  OUTLINED_FUNCTION_66_2();
                  OUTLINED_FUNCTION_66_2();
                  OUTLINED_FUNCTION_66_2();
LABEL_129:
                  if (!__OFSUB__(v59, v16))
                  {
                    v123 = OUTLINED_FUNCTION_105_1(v59 - v16);
                    OUTLINED_FUNCTION_98_2(v123);
                    if (v124)
                    {
                      OUTLINED_FUNCTION_115_1();
                      v125 = *(v59 + 16);
                    }

                    else
                    {
                      v125 = 0;
                    }

                    OUTLINED_FUNCTION_92_2();
                    sub_21AFC54B0(v286);
                    sub_21AFC54B0(v286);
                    switch(v15)
                    {
                      case 1:
                        sub_21AFC54B0(v286);
                        LODWORD(v29) = v269 - v14;
                        if (__OFSUB__(v269, v14))
                        {
                          goto LABEL_352;
                        }

                        v29 = v29;
LABEL_159:
                        v28 = v125 + v29;
                        if (!__OFADD__(v125, v29))
                        {
                          goto LABEL_211;
                        }

                        goto LABEL_340;
                      case 2:
                        v132 = *(v14 + 16);
                        v15 = *(v14 + 24);
                        sub_21AFC54B0(v286);
                        v29 = v15 - v132;
                        if (!__OFSUB__(v15, v132))
                        {
                          goto LABEL_159;
                        }

                        goto LABEL_351;
                      case 3:
                        sub_21AFC54B0(v286);
                        v29 = 0;
                        goto LABEL_159;
                      default:
                        sub_21AFC54B0(v286);
                        v29 = v273;
                        goto LABEL_159;
                    }
                  }

                  break;
                case 2uLL:
                  v122 = *(*v286 + 16);
                  v121 = *(*v286 + 24);
                  v59 = v121 - v122;
                  if (!__OFSUB__(v121, v122))
                  {
                    goto LABEL_128;
                  }

                  goto LABEL_345;
                case 3uLL:
                  goto LABEL_129;
                default:
                  v59 = v273;
                  goto LABEL_129;
              }

              goto LABEL_338;
            }

            v78 = *(*v286 + 16);
            v15 = 2 * v78;
            OUTLINED_FUNCTION_66_2();
            OUTLINED_FUNCTION_66_2();
            OUTLINED_FUNCTION_66_2();
            v79 = sub_21B103CA8(2 * v78);
            OUTLINED_FUNCTION_20_9(v79);
            if (v80)
            {
              OUTLINED_FUNCTION_19_8();
              sub_21B110E14();
              v81 = *(2 * v78 + 0x10);
            }

            else
            {
              v81 = 0;
            }

            if (*(v14 + 16))
            {
              OUTLINED_FUNCTION_147_0();
            }

            sub_21AFC54B0(v286);
            sub_21AFC54B0(v286);
            sub_21AFC54B0(v286);
            v28 = v81 + v78;
            if (!__OFADD__(v81, v78))
            {
              goto LABEL_211;
            }

            __break(1u);
LABEL_338:
            __break(1u);
LABEL_339:
            __break(1u);
LABEL_340:
            __break(1u);
LABEL_341:
            __break(1u);
LABEL_342:
            __break(1u);
LABEL_343:
            __break(1u);
LABEL_344:
            __break(1u);
LABEL_345:
            __break(1u);
LABEL_346:
            __break(1u);
LABEL_347:
            __break(1u);
LABEL_348:
            __break(1u);
LABEL_349:
            __break(1u);
LABEL_350:
            __break(1u);
LABEL_351:
            __break(1u);
LABEL_352:
            __break(1u);
LABEL_353:
            __break(1u);
            break;
          case 7:
            sub_21AFC54B0(v286);
            sub_21AFC54B0(v286);
            v28 = 0;
            goto LABEL_211;
          default:
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43780, &qword_21B114238);
            v15 = OUTLINED_FUNCTION_114_1();
            OUTLINED_FUNCTION_9_22(v15);
            *(OUTLINED_FUNCTION_69_2(v17) + 32) = v14 & 1;
LABEL_40:
            sub_21B110E14();
            sub_21AFC54B0(v286);
            sub_21AFC54B0(v286);
            v28 = *(v15 + 16);
            goto LABEL_19;
        }

        goto LABEL_354;
    }

    OUTLINED_FUNCTION_120_0();
    sub_21B110E14();
    v273 = *(v18 + 16);

    countAndFlagsBits = v283.schema.type._countAndFlagsBits;
    v21 = v283.schema.name._countAndFlagsBits;
    object = v283.schema.name._object;
    switch(v284)
    {
      case 1:
        v44 = OUTLINED_FUNCTION_15_12();
        v45 = sub_21B0F6800(v44, &v278);
        v42 = ByteBuffer.writeAvroArray(_:)(v45);
        goto LABEL_30;
      case 2:
        v41 = OUTLINED_FUNCTION_15_12();
        sub_21B0F6800(v41, &v278);
        ByteBuffer.writeAvroMap(_:)();
LABEL_30:
        v15 = v42;
        sub_21B0F68B8(&v282);
        sub_21AFC54B0(v286);

        goto LABEL_115;
      case 3:
        v288 = v283;
        sub_21B0F6800(&v283, &v278);
        v15 = ByteBuffer.writeAvroRecord(_:)(&v288);
        sub_21B0F68B8(&v282);
        sub_21AFC54B0(v286);
        v43 = &v283;
LABEL_114:
        sub_21AFC54B0(v43);
LABEL_115:
        sub_21AFC54B0(v286);
        break;
      case 4:
        OUTLINED_FUNCTION_95_1(&v278);
        v36 = (2 * v281) ^ (v281 >> 63);
        v37 = OUTLINED_FUNCTION_15_12();
        sub_21B0F6800(v37, v276);
        sub_21B0F685C(&v278, v276);
        v38 = sub_21B103CA8(v36);
        OUTLINED_FUNCTION_20_9(v38);
        if (v39)
        {
          OUTLINED_FUNCTION_19_8();
          sub_21B110E14();
          v40 = *(v36 + 16);
        }

        else
        {
          v40 = 0;
        }

        v60 = v279.schema.type._countAndFlagsBits;
        v62 = v279.schema.name._countAndFlagsBits;
        v61 = v279.schema.name._object;
        switch(v280)
        {
          case 1:
            v93 = OUTLINED_FUNCTION_28_4();
            v94 = sub_21B0F6800(v93, v276);
            v90 = ByteBuffer.writeAvroArray(_:)(v94);
            goto LABEL_83;
          case 2:
            v89 = OUTLINED_FUNCTION_28_4();
            sub_21B0F6800(v89, v276);
            ByteBuffer.writeAvroMap(_:)();
LABEL_83:
            v91 = v90;
            sub_21B0F68B8(&v278);
            sub_21B0F68B8(&v282);
            sub_21AFC54B0(v286);

            goto LABEL_207;
          case 3:
            v289 = v279;
            sub_21B0F6800(&v279, v276);
            v91 = ByteBuffer.writeAvroRecord(_:)(&v289);
            sub_21B0F68B8(&v278);
            sub_21B0F68B8(&v282);
            sub_21AFC54B0(v286);
            v92 = &v279;
            goto LABEL_206;
          case 4:
            v83 = v40;
            OUTLINED_FUNCTION_95_1(v276);
            v84 = (2 * v277) ^ (v277 >> 63);
            v85 = OUTLINED_FUNCTION_28_4();
            sub_21B0F6800(v85, v275);
            sub_21B0F685C(v276, v275);
            v86 = sub_21B103CA8(v84);
            OUTLINED_FUNCTION_20_9(v86);
            if (v87)
            {
              OUTLINED_FUNCTION_19_8();
              sub_21B110E14();
              v88 = *(v84 + 16);
            }

            else
            {
              v88 = 0;
            }

            OUTLINED_FUNCTION_83_1(v290, v276);
            v118 = ByteBuffer.writeAvroValue(_:)(v290);
            sub_21B0F68B8(v276);
            sub_21B0F68B8(&v278);
            sub_21B0F68B8(&v282);
            sub_21AFC54B0(v286);
            v119 = OUTLINED_FUNCTION_28_4();
            sub_21AFC54B0(v119);
            v120 = OUTLINED_FUNCTION_15_12();
            sub_21AFC54B0(v120);
            sub_21AFC54B0(v286);
            v91 = v88 + v118;
            if (__OFADD__(v88, v118))
            {
              goto LABEL_341;
            }

            v40 = v83;
            goto LABEL_209;
          default:
            switch(LOBYTE(v279.schema.name._object))
            {
              case 1:
                v160 = OUTLINED_FUNCTION_149_0();
                goto LABEL_190;
              case 2:
                v160 = sub_21B103CA8((2 * v279.schema.type._countAndFlagsBits) ^ (v279.schema.type._countAndFlagsBits >> 63));
LABEL_190:
                OUTLINED_FUNCTION_20_9(v160);
                if (v162)
                {
                  OUTLINED_FUNCTION_19_8();
                  sub_21B110E14();
                  v91 = v61[2];
                }

                else
                {
                  v91 = 0;
                }

                goto LABEL_204;
              case 3:
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43780, &qword_21B114238);
                v65 = OUTLINED_FUNCTION_117_0();
                OUTLINED_FUNCTION_9_22(v65);
                *(OUTLINED_FUNCTION_69_2(v161) + 32) = v60;
                goto LABEL_187;
              case 4:
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43780, &qword_21B114238);
                v65 = OUTLINED_FUNCTION_119_0();
                OUTLINED_FUNCTION_9_22(v65);
                *(OUTLINED_FUNCTION_69_2(v159) + 32) = v60;
                goto LABEL_187;
              case 5:
                if ((v279.schema.type._object & 0x1000000000000000) != 0)
                {
                  v165 = OUTLINED_FUNCTION_146_0();
                }

                else
                {
                  OUTLINED_FUNCTION_52_2();
                  if (v74)
                  {
                    v165 = v163;
                  }

                  else
                  {
                    v165 = v164;
                  }
                }

                v166 = (2 * v165) ^ (v165 >> 63);
                v167 = OUTLINED_FUNCTION_28_4();
                sub_21B0F6800(v167, v276);
                v168 = sub_21B103CA8(v166);
                OUTLINED_FUNCTION_20_9(v168);
                v269 = v40;
                if (v169)
                {
                  OUTLINED_FUNCTION_19_8();
                  sub_21B110E14();
                  v170 = *(v166 + 16);
                }

                else
                {
                  v170 = 0;
                }

                sub_21B112434();
                OUTLINED_FUNCTION_74_1();
                OUTLINED_FUNCTION_45_3();
                v204(v271, v272);
                OUTLINED_FUNCTION_131();
                if (!v206 & v205)
                {
                  v207 = 0;
                }

                else
                {
                  v207 = v166;
                }

                if (!v206 & v205)
                {
                  v208 = 0xC000000000000000;
                }

                else
                {
                  v208 = v60;
                }

                OUTLINED_FUNCTION_103_1();
                sub_21B110E94();
                switch(v208 >> 62)
                {
                  case 1uLL:
                    v229 = OUTLINED_FUNCTION_103_1();
                    sub_21AF99728(v229, v230);
                    sub_21B0F68B8(&v278);
                    sub_21B0F68B8(&v282);
                    sub_21AFC54B0(v286);
                    v231 = OUTLINED_FUNCTION_28_4();
                    sub_21AFC54B0(v231);
                    if (__OFSUB__(HIDWORD(v207), v207))
                    {
                      goto LABEL_373;
                    }

                    v212 = HIDWORD(v207) - v207;
LABEL_276:
                    v40 = v269;
                    break;
                  case 2uLL:
                    v220 = v170;
                    v222 = *(v207 + 16);
                    v221 = *(v207 + 24);
                    v223 = OUTLINED_FUNCTION_103_1();
                    sub_21AF99728(v223, v224);
                    sub_21B0F68B8(&v278);
                    sub_21B0F68B8(&v282);
                    sub_21AFC54B0(v286);
                    v225 = OUTLINED_FUNCTION_28_4();
                    sub_21AFC54B0(v225);
                    v212 = v221 - v222;
                    if (__OFSUB__(v221, v222))
                    {
                      goto LABEL_372;
                    }

                    v40 = v269;
                    v170 = v220;
                    break;
                  case 3uLL:
                    v226 = OUTLINED_FUNCTION_103_1();
                    sub_21AF99728(v226, v227);
                    sub_21B0F68B8(&v278);
                    sub_21B0F68B8(&v282);
                    sub_21AFC54B0(v286);
                    v228 = OUTLINED_FUNCTION_28_4();
                    sub_21AFC54B0(v228);
                    v212 = 0;
                    goto LABEL_276;
                  default:
                    v209 = OUTLINED_FUNCTION_103_1();
                    sub_21AF99728(v209, v210);
                    sub_21B0F68B8(&v278);
                    sub_21B0F68B8(&v282);
                    sub_21AFC54B0(v286);
                    v211 = OUTLINED_FUNCTION_28_4();
                    sub_21AFC54B0(v211);
                    v212 = BYTE6(v208);
                    goto LABEL_276;
                }

                v232 = OUTLINED_FUNCTION_15_12();
                sub_21AFC54B0(v232);
                v91 = v170 + v212;
                if (!__OFADD__(v170, v212))
                {
                  goto LABEL_208;
                }

                goto LABEL_359;
              case 6:
                v171 = (v279.schema.type._object >> 60) & 3;
                if (v171)
                {
                  v172 = v279.schema.type._object >> 62;
                  countAndFlagsBits_high = HIDWORD(v279.schema.type._countAndFlagsBits);
                  v268 = BYTE6(v279.schema.type._object);
                  v269 = v40;
                  v173 = 0;
                  if (v171 != 1)
                  {
                    v219 = v279.schema.type._object >> 62;
                    switch(v172)
                    {
                      case 1uLL:
                        OUTLINED_FUNCTION_121_0();
                        if (v175)
                        {
                          goto LABEL_375;
                        }

                        v173 = v245;
LABEL_299:
                        v248 = OUTLINED_FUNCTION_28_4();
                        sub_21B0F6800(v248, v276);
LABEL_300:
                        v249 = sub_21B103CA8((2 * v173) ^ (v173 >> 63));
                        OUTLINED_FUNCTION_20_9(v249);
                        if (v250)
                        {
                          OUTLINED_FUNCTION_19_8();
                          sub_21B110E14();
                          v251 = *(v173 + 16);
                        }

                        else
                        {
                          v251 = 0;
                        }

                        OUTLINED_FUNCTION_92_2();
                        switch(v219)
                        {
                          case 0:
                            sub_21B0F68B8(&v278);
                            sub_21B0F68B8(&v282);
                            sub_21AFC54B0(v286);
                            v252 = v268;
                            goto LABEL_311;
                          case 1:
                            sub_21B0F68B8(&v278);
                            sub_21B0F68B8(&v282);
                            sub_21AFC54B0(v286);
                            OUTLINED_FUNCTION_121_0();
                            if (v175)
                            {
                              goto LABEL_377;
                            }

                            v252 = v252;
LABEL_311:
                            v91 = v251 + v252;
                            if (__OFADD__(v251, v252))
                            {
                              goto LABEL_370;
                            }

LABEL_321:
                            v40 = v269;
                            break;
                          case 2:
                            v254 = *(v60 + 16);
                            v253 = *(v60 + 24);
                            sub_21B0F68B8(&v278);
                            sub_21B0F68B8(&v282);
                            sub_21AFC54B0(v286);
                            v252 = v253 - v254;
                            if (!__OFSUB__(v253, v254))
                            {
                              goto LABEL_311;
                            }

                            goto LABEL_376;
                          case 3:
                            sub_21B0F68B8(&v278);
                            sub_21B0F68B8(&v282);
                            sub_21AFC54B0(v286);
                            v252 = 0;
                            goto LABEL_311;
                          default:
                            goto LABEL_382;
                        }

                        goto LABEL_205;
                      case 2uLL:
                        v247 = *(v279.schema.type._countAndFlagsBits + 16);
                        v246 = *(v279.schema.type._countAndFlagsBits + 24);
                        v173 = v246 - v247;
                        if (!__OFSUB__(v246, v247))
                        {
                          goto LABEL_299;
                        }

                        __break(1u);
LABEL_375:
                        __break(1u);
LABEL_376:
                        __break(1u);
LABEL_377:
                        __break(1u);
LABEL_378:
                        __break(1u);
LABEL_379:
                        __break(1u);
LABEL_380:
                        __break(1u);
LABEL_381:
                        __break(1u);
                        goto LABEL_382;
                      case 3uLL:
                        goto LABEL_300;
                      default:
                        v173 = v268;
                        goto LABEL_300;
                    }
                  }

                  v266 = v279.schema.type._object >> 62;
                  switch(v172)
                  {
                    case 1uLL:
                      OUTLINED_FUNCTION_121_0();
                      if (v175)
                      {
                        goto LABEL_379;
                      }

                      v173 = v237;
LABEL_289:
                      v240 = OUTLINED_FUNCTION_28_4();
                      sub_21B0F6800(v240, v276);
LABEL_290:
                      if (!__OFSUB__(v173, v62))
                      {
                        v241 = OUTLINED_FUNCTION_105_1(v173 - v62);
                        OUTLINED_FUNCTION_20_9(v241);
                        if (v242)
                        {
                          OUTLINED_FUNCTION_19_8();
                          sub_21B110E14();
                          v243 = *(v173 + 16);
                        }

                        else
                        {
                          v243 = 0;
                        }

                        OUTLINED_FUNCTION_92_2();
                        switch(v266)
                        {
                          case 1:
                            sub_21B0F68B8(&v278);
                            sub_21B0F68B8(&v282);
                            sub_21AFC54B0(v286);
                            OUTLINED_FUNCTION_121_0();
                            if (v175)
                            {
                              goto LABEL_381;
                            }

                            v244 = v244;
LABEL_320:
                            v91 = v243 + v244;
                            if (!__OFADD__(v243, v244))
                            {
                              goto LABEL_321;
                            }

                            goto LABEL_371;
                          case 2:
                            v256 = *(v60 + 16);
                            v255 = *(v60 + 24);
                            sub_21B0F68B8(&v278);
                            sub_21B0F68B8(&v282);
                            sub_21AFC54B0(v286);
                            v244 = v255 - v256;
                            if (!__OFSUB__(v255, v256))
                            {
                              goto LABEL_320;
                            }

                            goto LABEL_380;
                          case 3:
                            sub_21B0F68B8(&v278);
                            sub_21B0F68B8(&v282);
                            sub_21AFC54B0(v286);
                            v244 = 0;
                            goto LABEL_320;
                          default:
                            sub_21B0F68B8(&v278);
                            sub_21B0F68B8(&v282);
                            sub_21AFC54B0(v286);
                            v244 = v268;
                            goto LABEL_320;
                        }
                      }

                      break;
                    case 2uLL:
                      v239 = *(v279.schema.type._countAndFlagsBits + 16);
                      v238 = *(v279.schema.type._countAndFlagsBits + 24);
                      v173 = v238 - v239;
                      if (!__OFSUB__(v238, v239))
                      {
                        goto LABEL_289;
                      }

                      goto LABEL_378;
                    case 3uLL:
                      goto LABEL_290;
                    default:
                      v173 = v268;
                      goto LABEL_290;
                  }

                  goto LABEL_369;
                }

                v213 = v40;
                v214 = 2 * *(v279.schema.type._countAndFlagsBits + 16);
                v215 = OUTLINED_FUNCTION_28_4();
                sub_21B0F6800(v215, v276);
                v216 = sub_21B103CA8(v214);
                OUTLINED_FUNCTION_20_9(v216);
                if (v217)
                {
                  OUTLINED_FUNCTION_19_8();
                  sub_21B110E14();
                  v218 = *(v214 + 16);
                }

                else
                {
                  v218 = 0;
                }

                if (*(v60 + 16))
                {
                  OUTLINED_FUNCTION_147_0();
                  v233 = *(v60 + 16);
                }

                else
                {
                  v233 = 0;
                }

                sub_21B0F68B8(&v278);
                sub_21B0F68B8(&v282);
                sub_21AFC54B0(v286);
                v91 = v218 + v233;
                if (__OFADD__(v218, v233))
                {
                  goto LABEL_368;
                }

                v40 = v213;
LABEL_205:
                v92 = OUTLINED_FUNCTION_28_4();
LABEL_206:
                sub_21AFC54B0(v92);
LABEL_207:
                v174 = OUTLINED_FUNCTION_15_12();
                sub_21AFC54B0(v174);
LABEL_208:
                sub_21AFC54B0(v286);
LABEL_209:
                v15 = v40 + v91;
                if (__OFADD__(v40, v91))
                {
                  goto LABEL_333;
                }

                break;
              case 7:
                sub_21B0F68B8(&v278);
                sub_21B0F68B8(&v282);
                sub_21AFC54B0(v286);
                v91 = 0;
                goto LABEL_205;
              default:
                v63 = v40;
                v64 = v279.schema.type._countAndFlagsBits & 1;
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43780, &qword_21B114238);
                v65 = OUTLINED_FUNCTION_114_1();
                OUTLINED_FUNCTION_9_22(v65);
                *(OUTLINED_FUNCTION_69_2(v66) + 32) = v64;
                v40 = v63;
LABEL_187:
                sub_21B110E14();
                v91 = v65[2];

LABEL_204:
                sub_21B0F68B8(&v278);
                sub_21B0F68B8(&v282);
                sub_21AFC54B0(v286);
                goto LABEL_205;
            }

            break;
        }

        break;
      default:
        switch(LOBYTE(v283.schema.name._object))
        {
          case 1:
            v104 = OUTLINED_FUNCTION_149_0();
            goto LABEL_99;
          case 2:
            v104 = sub_21B103CA8((2 * v283.schema.type._countAndFlagsBits) ^ (v283.schema.type._countAndFlagsBits >> 63));
LABEL_99:
            OUTLINED_FUNCTION_98_2(v104);
            if (v107)
            {
              OUTLINED_FUNCTION_115_1();
              v15 = object[2];
            }

            else
            {
              v15 = 0;
            }

            goto LABEL_113;
          case 3:
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43780, &qword_21B114238);
            v24 = OUTLINED_FUNCTION_117_0();
            OUTLINED_FUNCTION_9_22(v24);
            *(v24 + 16) = 4;
            *(v24 + 24) = v105;
            *(v24 + 32) = countAndFlagsBits;
            goto LABEL_96;
          case 4:
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43780, &qword_21B114238);
            v24 = OUTLINED_FUNCTION_119_0();
            OUTLINED_FUNCTION_9_22(v24);
            *(v24 + 16) = 8;
            *(v24 + 24) = v103;
            *(v24 + 32) = countAndFlagsBits;
            goto LABEL_96;
          case 5:
            if ((v283.schema.type._object & 0x1000000000000000) != 0)
            {
              v110 = OUTLINED_FUNCTION_146_0();
            }

            else
            {
              OUTLINED_FUNCTION_52_2();
              if (v74)
              {
                v110 = v108;
              }

              else
              {
                v110 = v109;
              }
            }

            v111 = (2 * v110) ^ (v110 >> 63);
            v112 = OUTLINED_FUNCTION_15_12();
            sub_21B0F6800(v112, &v278);
            v113 = sub_21B103CA8(v111);
            OUTLINED_FUNCTION_20_9(v113);
            if (v114)
            {
              OUTLINED_FUNCTION_19_8();
              sub_21B110E14();
              v269 = *(v111 + 16);
            }

            else
            {
              v269 = 0;
            }

            sub_21B112434();
            OUTLINED_FUNCTION_74_1();
            OUTLINED_FUNCTION_45_3();
            v133(v271, v272);
            OUTLINED_FUNCTION_131();
            if (!v135 & v134)
            {
              v136 = 0;
            }

            else
            {
              v136 = v111;
            }

            if (!v135 & v134)
            {
              v137 = 0xC000000000000000;
            }

            else
            {
              v137 = countAndFlagsBits;
            }

            OUTLINED_FUNCTION_34_7();
            sub_21B110E94();
            switch(v137 >> 62)
            {
              case 1uLL:
                v156 = OUTLINED_FUNCTION_34_7();
                sub_21AF99728(v156, v157);
                sub_21B0F68B8(&v282);
                sub_21AFC54B0(v286);
                v158 = OUTLINED_FUNCTION_15_12();
                sub_21AFC54B0(v158);
                sub_21AFC54B0(v286);
                LODWORD(v141) = HIDWORD(v136) - v136;
                if (__OFSUB__(HIDWORD(v136), v136))
                {
                  goto LABEL_357;
                }

                v141 = v141;
LABEL_181:
                v15 = v269 + v141;
                if (!__OFADD__(v269, v141))
                {
                  goto LABEL_210;
                }

                goto LABEL_344;
              case 2uLL:
                v149 = *(v136 + 16);
                v148 = *(v136 + 24);
                v150 = OUTLINED_FUNCTION_34_7();
                sub_21AF99728(v150, v151);
                sub_21B0F68B8(&v282);
                sub_21AFC54B0(v286);
                v152 = OUTLINED_FUNCTION_15_12();
                sub_21AFC54B0(v152);
                sub_21AFC54B0(v286);
                v141 = v148 - v149;
                if (!__OFSUB__(v148, v149))
                {
                  goto LABEL_181;
                }

                goto LABEL_358;
              case 3uLL:
                v153 = OUTLINED_FUNCTION_34_7();
                sub_21AF99728(v153, v154);
                sub_21B0F68B8(&v282);
                sub_21AFC54B0(v286);
                v155 = OUTLINED_FUNCTION_15_12();
                sub_21AFC54B0(v155);
                sub_21AFC54B0(v286);
                v141 = 0;
                goto LABEL_181;
              default:
                v138 = OUTLINED_FUNCTION_34_7();
                sub_21AF99728(v138, v139);
                sub_21B0F68B8(&v282);
                sub_21AFC54B0(v286);
                v140 = OUTLINED_FUNCTION_15_12();
                sub_21AFC54B0(v140);
                sub_21AFC54B0(v286);
                v141 = BYTE6(v137);
                goto LABEL_181;
            }

          case 6:
            v115 = (v283.schema.type._object >> 60) & 3;
            if (v115)
            {
              v116 = v283.schema.type._object >> 62;
              v268 = HIDWORD(v283.schema.type._countAndFlagsBits);
              v269 = BYTE6(v283.schema.type._object);
              if (v115 != 1)
              {
                v147 = 0;
                switch(v116)
                {
                  case 1uLL:
                    if (__OFSUB__(v268, v283.schema.type._countAndFlagsBits))
                    {
                      goto LABEL_363;
                    }

                    v147 = v268 - LODWORD(v283.schema.type._countAndFlagsBits);
LABEL_234:
                    v188 = OUTLINED_FUNCTION_15_12();
                    sub_21B0F6800(v188, &v278);
LABEL_235:
                    v189 = sub_21B103CA8((2 * v147) ^ (v147 >> 63));
                    OUTLINED_FUNCTION_98_2(v189);
                    if (v190)
                    {
                      OUTLINED_FUNCTION_115_1();
                      v191 = object[2];
                    }

                    else
                    {
                      v191 = 0;
                    }

                    OUTLINED_FUNCTION_92_2();
                    switch(v116)
                    {
                      case 0:
                        sub_21B0F68B8(&v282);
                        sub_21AFC54B0(v286);
                        v192 = OUTLINED_FUNCTION_15_12();
                        sub_21AFC54B0(v192);
                        sub_21AFC54B0(v286);
                        v193 = v269;
                        goto LABEL_246;
                      case 1:
                        sub_21B0F68B8(&v282);
                        sub_21AFC54B0(v286);
                        v198 = OUTLINED_FUNCTION_15_12();
                        sub_21AFC54B0(v198);
                        sub_21AFC54B0(v286);
                        LODWORD(v193) = v268 - countAndFlagsBits;
                        if (__OFSUB__(v268, countAndFlagsBits))
                        {
                          goto LABEL_365;
                        }

                        v193 = v193;
LABEL_246:
                        v15 = v191 + v193;
                        if (!__OFADD__(v191, v193))
                        {
                          goto LABEL_210;
                        }

                        goto LABEL_355;
                      case 2:
                        v195 = *(countAndFlagsBits + 16);
                        v194 = *(countAndFlagsBits + 24);
                        sub_21B0F68B8(&v282);
                        sub_21AFC54B0(v286);
                        v196 = OUTLINED_FUNCTION_15_12();
                        sub_21AFC54B0(v196);
                        sub_21AFC54B0(v286);
                        v193 = v194 - v195;
                        if (!__OFSUB__(v194, v195))
                        {
                          goto LABEL_246;
                        }

                        goto LABEL_364;
                      case 3:
                        sub_21B0F68B8(&v282);
                        sub_21AFC54B0(v286);
                        v197 = OUTLINED_FUNCTION_15_12();
                        sub_21AFC54B0(v197);
                        sub_21AFC54B0(v286);
                        v193 = 0;
                        goto LABEL_246;
                      default:
                        goto LABEL_382;
                    }

                  case 2uLL:
                    v187 = *(v283.schema.type._countAndFlagsBits + 16);
                    v186 = *(v283.schema.type._countAndFlagsBits + 24);
                    v147 = v186 - v187;
                    if (!__OFSUB__(v186, v187))
                    {
                      goto LABEL_234;
                    }

                    goto LABEL_362;
                  case 3uLL:
                    goto LABEL_235;
                  default:
                    v147 = v269;
                    goto LABEL_235;
                }
              }

              v117 = 0;
              switch(v116)
              {
                case 1uLL:
                  if (__OFSUB__(v268, v283.schema.type._countAndFlagsBits))
                  {
                    goto LABEL_361;
                  }

                  v117 = v268 - LODWORD(v283.schema.type._countAndFlagsBits);
LABEL_224:
                  v180 = OUTLINED_FUNCTION_15_12();
                  sub_21B0F6800(v180, &v278);
LABEL_225:
                  if (!__OFSUB__(v117, v21))
                  {
                    v181 = OUTLINED_FUNCTION_105_1(v117 - v21);
                    OUTLINED_FUNCTION_98_2(v181);
                    if (v182)
                    {
                      OUTLINED_FUNCTION_115_1();
                      v183 = *(v117 + 16);
                    }

                    else
                    {
                      v183 = 0;
                    }

                    OUTLINED_FUNCTION_92_2();
                    switch(v116)
                    {
                      case 1:
                        sub_21B0F68B8(&v282);
                        sub_21AFC54B0(v286);
                        v203 = OUTLINED_FUNCTION_15_12();
                        sub_21AFC54B0(v203);
                        sub_21AFC54B0(v286);
                        LODWORD(v185) = v268 - countAndFlagsBits;
                        if (__OFSUB__(v268, countAndFlagsBits))
                        {
                          goto LABEL_367;
                        }

                        v185 = v185;
LABEL_255:
                        v15 = v183 + v185;
                        if (!__OFADD__(v183, v185))
                        {
                          goto LABEL_210;
                        }

                        goto LABEL_356;
                      case 2:
                        v200 = *(countAndFlagsBits + 16);
                        v199 = *(countAndFlagsBits + 24);
                        sub_21B0F68B8(&v282);
                        sub_21AFC54B0(v286);
                        v201 = OUTLINED_FUNCTION_15_12();
                        sub_21AFC54B0(v201);
                        sub_21AFC54B0(v286);
                        v185 = v199 - v200;
                        if (!__OFSUB__(v199, v200))
                        {
                          goto LABEL_255;
                        }

                        goto LABEL_366;
                      case 3:
                        sub_21B0F68B8(&v282);
                        sub_21AFC54B0(v286);
                        v202 = OUTLINED_FUNCTION_15_12();
                        sub_21AFC54B0(v202);
                        sub_21AFC54B0(v286);
                        v185 = 0;
                        goto LABEL_255;
                      default:
                        sub_21B0F68B8(&v282);
                        sub_21AFC54B0(v286);
                        v184 = OUTLINED_FUNCTION_15_12();
                        sub_21AFC54B0(v184);
                        sub_21AFC54B0(v286);
                        v185 = v269;
                        goto LABEL_255;
                    }
                  }

                  break;
                case 2uLL:
                  v179 = *(v283.schema.type._countAndFlagsBits + 16);
                  v178 = *(v283.schema.type._countAndFlagsBits + 24);
                  v117 = v178 - v179;
                  if (!__OFSUB__(v178, v179))
                  {
                    goto LABEL_224;
                  }

                  goto LABEL_360;
                case 3uLL:
                  goto LABEL_225;
                default:
                  v117 = v269;
                  goto LABEL_225;
              }

LABEL_354:
              __break(1u);
LABEL_355:
              __break(1u);
LABEL_356:
              __break(1u);
LABEL_357:
              __break(1u);
LABEL_358:
              __break(1u);
LABEL_359:
              __break(1u);
LABEL_360:
              __break(1u);
LABEL_361:
              __break(1u);
LABEL_362:
              __break(1u);
LABEL_363:
              __break(1u);
LABEL_364:
              __break(1u);
LABEL_365:
              __break(1u);
LABEL_366:
              __break(1u);
LABEL_367:
              __break(1u);
LABEL_368:
              __break(1u);
LABEL_369:
              __break(1u);
LABEL_370:
              __break(1u);
LABEL_371:
              __break(1u);
LABEL_372:
              __break(1u);
LABEL_373:
              __break(1u);
            }

            v142 = 2 * *(v283.schema.type._countAndFlagsBits + 16);
            v143 = OUTLINED_FUNCTION_15_12();
            sub_21B0F6800(v143, &v278);
            v144 = sub_21B103CA8(v142);
            OUTLINED_FUNCTION_20_9(v144);
            if (v145)
            {
              OUTLINED_FUNCTION_19_8();
              sub_21B110E14();
              v146 = *(v142 + 16);
            }

            else
            {
              v146 = 0;
            }

            if (*(countAndFlagsBits + 16))
            {
              OUTLINED_FUNCTION_147_0();
              v176 = *(countAndFlagsBits + 16);
            }

            else
            {
              v176 = 0;
            }

            sub_21B0F68B8(&v282);
            sub_21AFC54B0(v286);
            v177 = OUTLINED_FUNCTION_15_12();
            sub_21AFC54B0(v177);
            sub_21AFC54B0(v286);
            v175 = __OFADD__(v146, v176);
            v15 = v146 + v176;
            if (v175)
            {
              goto LABEL_353;
            }

            break;
          case 7:
            sub_21B0F68B8(&v282);
            sub_21AFC54B0(v286);
            v106 = OUTLINED_FUNCTION_15_12();
            sub_21AFC54B0(v106);
            sub_21AFC54B0(v286);
            v15 = 0;
            goto LABEL_210;
          default:
            v23 = v283.schema.type._countAndFlagsBits & 1;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43780, &qword_21B114238);
            v24 = OUTLINED_FUNCTION_114_1();
            OUTLINED_FUNCTION_9_22(v24);
            *(v24 + 16) = 1;
            *(v24 + 24) = v25;
            *(v24 + 32) = v23;
LABEL_96:
            sub_21B110E14();
            v15 = *(v24 + 16);

LABEL_113:
            sub_21B0F68B8(&v282);
            sub_21AFC54B0(v286);
            v43 = OUTLINED_FUNCTION_15_12();
            goto LABEL_114;
        }

        break;
    }

LABEL_210:
    v29 = v273;
    v28 = v273 + v15;
    if (__OFADD__(v273, v15))
    {
      goto LABEL_332;
    }

LABEL_211:
    v175 = __OFADD__(v11, v28);
    v11 += v28;
    if (v175)
    {
      break;
    }

    if (v12 == v9)
    {
      OUTLINED_FUNCTION_4_32();
      sub_21B1059A8();
      v261._rawValue = v260;
      v15 = v260[2];
      v29 = v260[3];
      v12 = v15 + 1;
      if (v15 >= v29 >> 1)
      {
        goto LABEL_334;
      }

      goto LABEL_326;
    }
  }

  __break(1u);
LABEL_332:
  __break(1u);
LABEL_333:
  __break(1u);
LABEL_334:
  OUTLINED_FUNCTION_13_10(v29);
  sub_21B1059A8();
  v261._rawValue = v265;
LABEL_326:
  *(v261._rawValue + 2) = v12;
  *(v261._rawValue + v15 + 32) = 0;
  ByteBuffer.writeBytes(_:)(v261);
  OUTLINED_FUNCTION_64_2();

  if (__OFADD__(v11, v0))
  {
    __break(1u);
LABEL_336:
    __break(1u);
    goto LABEL_337;
  }

  v262 = *MEMORY[0x277D85DE8];
LABEL_330:
  OUTLINED_FUNCTION_77();
}

void ByteBuffer.writeAvroMap(_:)()
{
  OUTLINED_FUNCTION_76();
  v2 = v1;
  v181[9] = *MEMORY[0x277D85DE8];
  v169 = sub_21B112444();
  v3 = OUTLINED_FUNCTION_1(v169);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_67_1();
  v168 = v8;
  v9 = *(v2 + 16);
  if (!v9)
  {
    OUTLINED_FUNCTION_4_32();
    sub_21B1059A8();
    OUTLINED_FUNCTION_135_0(v159);
    if (!v32)
    {
LABEL_196:
      OUTLINED_FUNCTION_142_0();
      OUTLINED_FUNCTION_19_0();

      v160 = *MEMORY[0x277D85DE8];
      goto LABEL_197;
    }

LABEL_207:
    OUTLINED_FUNCTION_13_10(v108);
    sub_21B1059A8();
    goto LABEL_196;
  }

  v10 = 2 * v9;

  v11 = sub_21B103CA8(v10);
  v12 = ByteBuffer.writeBytes(_:)(v11);

  v13 = 0;
  v14 = v2 + 64;
  v15 = 1 << *(v2 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v2 + 64);
  v18 = (v15 + 63) >> 6;
  v166 = v2 + 64;
  v167 = (v5 + 8);
  v164 = v2;
  v165 = v18;
  if (v17)
  {
    while (1)
    {
      v19 = v13;
LABEL_9:
      v20 = *(v2 + 56);
      v21 = (*(v2 + 48) + 16 * (__clz(__rbit64(v17)) | (v19 << 6)));
      v23 = *v21;
      v22 = v21[1];
      OUTLINED_FUNCTION_60_1();
      memcpy(v178, v24, sizeof(v178));
      if ((v22 & 0x1000000000000000) != 0)
      {
        v25 = sub_21B112514();
      }

      else if ((v22 & 0x2000000000000000) != 0)
      {
        v25 = HIBYTE(v22) & 0xF;
      }

      else
      {
        v25 = v23 & 0xFFFFFFFFFFFFLL;
      }

      v26 = (2 * v25) ^ (v25 >> 63);

      OUTLINED_FUNCTION_94_2();
      v27 = sub_21B103CA8(v26);
      OUTLINED_FUNCTION_29_7(v27);
      v171 = v12;
      if (v28)
      {
        OUTLINED_FUNCTION_26_6();
        sub_21B110E14();
        v29 = *(v26 + 16);
      }

      else
      {
        v29 = 0;
      }

      v17 &= v17 - 1;

      sub_21B112434();
      OUTLINED_FUNCTION_95_2();
      v30 = sub_21B112414();
      v12 = v31;
      (*v167)(v168, v169);
      OUTLINED_FUNCTION_131();
      if (!v33 & v32)
      {
        v34 = 0;
      }

      else
      {
        v34 = v30;
      }

      if (!v33 & v32)
      {
        v11 = 0xC000000000000000;
      }

      else
      {
        v11 = v12;
      }

      OUTLINED_FUNCTION_3_23();
      sub_21B110E94();

      switch(v11 >> 62)
      {
        case 1uLL:
          v42 = OUTLINED_FUNCTION_3_23();
          sub_21AF99728(v42, v43);
          v13 = (HIDWORD(v34) - v34);
          if (__OFSUB__(HIDWORD(v34), v34))
          {
            goto LABEL_202;
          }

          v13 = v13;
LABEL_30:
          if (__OFADD__(v29, v13))
          {
            goto LABEL_199;
          }

          break;
        case 2uLL:
          v12 = *(v34 + 16);
          v37 = *(v34 + 24);
          v38 = OUTLINED_FUNCTION_3_23();
          sub_21AF99728(v38, v39);
          v13 = v37 - v12;
          if (!__OFSUB__(v37, v12))
          {
            goto LABEL_30;
          }

          goto LABEL_203;
        case 3uLL:
          v40 = OUTLINED_FUNCTION_3_23();
          sub_21AF99728(v40, v41);
          v13 = 0;
          goto LABEL_30;
        default:
          v35 = OUTLINED_FUNCTION_3_23();
          sub_21AF99728(v35, v36);
          v13 = BYTE6(v11);
          goto LABEL_30;
      }

      v44 = *v178;
      v45 = *&v178[16];
      v11 = *&v178[24];
      v170 = v29 + v13;
      switch(v178[64])
      {
        case 1:
          v54 = OUTLINED_FUNCTION_94_2();
          v52 = ByteBuffer.writeAvroArray(_:)(v54);
          goto LABEL_39;
        case 2:
          v51 = OUTLINED_FUNCTION_94_2();
          v52 = ByteBuffer.writeAvroMap(_:)(v51);
LABEL_39:
          v53 = v52;
          sub_21AFC54B0(v178);

          goto LABEL_56;
        case 3:
          v179 = *v178;
          OUTLINED_FUNCTION_94_2();
          v53 = ByteBuffer.writeAvroRecord(_:)(&v179);
LABEL_55:
          sub_21AFC54B0(v178);
          sub_21AFC54B0(v178);
LABEL_56:
          v12 = v171;
          goto LABEL_57;
        case 4:
          OUTLINED_FUNCTION_95_1(&v174);
          v48 = (2 * v177) ^ (v177 >> 63);
          sub_21B0F6800(v178, v173);
          sub_21B0F685C(&v174, v173);
          v49 = sub_21B103CA8(v48);
          OUTLINED_FUNCTION_29_7(v49);
          if (v50)
          {
            OUTLINED_FUNCTION_26_6();
            sub_21B110E14();
            v162 = *(v48 + 16);
          }

          else
          {
            v162 = 0;
          }

          countAndFlagsBits = v175.schema.type._countAndFlagsBits;
          object = v175.schema.type._object;
          v57 = v175.schema.name._countAndFlagsBits;
          v11 = v175.schema.name._object;
          switch(v176)
          {
            case 1:
              v71 = OUTLINED_FUNCTION_32_5();
              v72 = sub_21B0F6800(v71, v173);
              v67 = ByteBuffer.writeAvroArray(_:)(v72);
              goto LABEL_50;
            case 2:
              v65 = OUTLINED_FUNCTION_32_5();
              v66 = sub_21B0F6800(v65, v173);
              v67 = ByteBuffer.writeAvroMap(_:)(v66);
LABEL_50:
              v69 = v67;
              sub_21B0F68B8(&v174);
              sub_21AFC54B0(v178);

              goto LABEL_106;
            case 3:
              v180 = v175;
              sub_21B0F6800(&v175, v173);
              v68 = ByteBuffer.writeAvroRecord(_:)(&v180);
LABEL_48:
              v69 = v68;
              sub_21B0F68B8(&v174);
              sub_21AFC54B0(v178);
              v70 = &v175;
              goto LABEL_105;
            case 4:
              memcpy(v173, (v175.schema.type._countAndFlagsBits + 16), sizeof(v173));
              v60 = (2 * v173[10]) ^ (v173[10] >> 63);
              v61 = OUTLINED_FUNCTION_32_5();
              sub_21B0F6800(v61, v172);
              sub_21B0F685C(v173, v172);
              v62 = sub_21B103CA8(v60);
              OUTLINED_FUNCTION_29_7(v62);
              if (v63)
              {
                OUTLINED_FUNCTION_26_6();
                sub_21B110E14();
                v64 = *(v60 + 16);
              }

              else
              {
                v64 = 0;
              }

              OUTLINED_FUNCTION_83_1(v181, v173);
              v11 = ByteBuffer.writeAvroValue(_:)(v181);
              sub_21B0F68B8(v173);
              sub_21B0F68B8(&v174);
              sub_21AFC54B0(v178);
              v86 = OUTLINED_FUNCTION_32_5();
              sub_21AFC54B0(v86);
              sub_21AFC54B0(v178);
              v69 = v64 + v11;
              if (!__OFADD__(v64, v11))
              {
                goto LABEL_107;
              }

              __break(1u);
              goto LABEL_208;
            default:
              switch(LOBYTE(v175.schema.name._object))
              {
                case 1:
                  v106 = sub_21B103B80((2 * LODWORD(v175.schema.type._countAndFlagsBits)) ^ (SLODWORD(v175.schema.type._countAndFlagsBits) >> 31));
                  goto LABEL_117;
                case 2:
                  v106 = sub_21B103CA8((2 * v175.schema.type._countAndFlagsBits) ^ (v175.schema.type._countAndFlagsBits >> 63));
LABEL_117:
                  OUTLINED_FUNCTION_29_7(v106);
                  if (v111)
                  {
                    OUTLINED_FUNCTION_26_6();
                    sub_21B110E14();
                    v69 = *(v11 + 16);
                  }

                  else
                  {
                    v69 = 0;
                  }

                  v2 = v164;

                  sub_21B0F68B8(&v174);
                  sub_21AFC54B0(v178);
                  v119 = OUTLINED_FUNCTION_32_5();
                  sub_21AFC54B0(v119);
                  sub_21AFC54B0(v178);
                  goto LABEL_108;
                case 3:
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43780, &qword_21B114238);
                  v11 = OUTLINED_FUNCTION_117_0();
                  OUTLINED_FUNCTION_9_22(v11);
                  *(OUTLINED_FUNCTION_77_2(v107) + 32) = countAndFlagsBits;
                  goto LABEL_104;
                case 4:
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43780, &qword_21B114238);
                  v11 = OUTLINED_FUNCTION_119_0();
                  OUTLINED_FUNCTION_9_22(v11);
                  *(OUTLINED_FUNCTION_77_2(v105) + 32) = countAndFlagsBits;
                  goto LABEL_104;
                case 5:
                  if ((v175.schema.type._object & 0x1000000000000000) != 0)
                  {
                    v112 = sub_21B112514();
                  }

                  else if ((v175.schema.type._object & 0x2000000000000000) != 0)
                  {
                    v112 = (v175.schema.type._object >> 56) & 0xF;
                  }

                  else
                  {
                    v112 = v175.schema.type._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
                  }

                  v113 = (2 * v112) ^ (v112 >> 63);
                  v114 = OUTLINED_FUNCTION_32_5();
                  sub_21B0F6800(v114, v173);
                  v115 = sub_21B103CA8(v113);
                  OUTLINED_FUNCTION_29_7(v115);
                  if (v116)
                  {
                    OUTLINED_FUNCTION_26_6();
                    sub_21B110E14();
                    v117 = *(v113 + 16);
                  }

                  else
                  {
                    v117 = 0;
                  }

                  sub_21B112434();
                  OUTLINED_FUNCTION_95_2();
                  sub_21B112414();
                  v136 = OUTLINED_FUNCTION_81_2();
                  v137(v136);
                  if (v57 >> 60 == 15)
                  {
                    v138 = 0;
                  }

                  else
                  {
                    v138 = v113;
                  }

                  if (v57 >> 60 == 15)
                  {
                    v11 = 0xC000000000000000;
                  }

                  else
                  {
                    v11 = v57;
                  }

                  OUTLINED_FUNCTION_39_4();
                  sub_21B110E94();
                  switch(v11 >> 62)
                  {
                    case 1uLL:
                      v151 = OUTLINED_FUNCTION_39_4();
                      sub_21AF99728(v151, v152);
                      sub_21B0F68B8(&v174);
                      sub_21AFC54B0(v178);
                      v153 = OUTLINED_FUNCTION_32_5();
                      sub_21AFC54B0(v153);
                      sub_21AFC54B0(v178);
                      LODWORD(v142) = HIDWORD(v138) - v138;
                      if (__OFSUB__(HIDWORD(v138), v138))
                      {
                        goto LABEL_225;
                      }

                      v142 = v142;
LABEL_186:
                      v2 = v164;
                      v18 = v165;
                      v14 = v166;
                      v109 = __OFADD__(v117, v142);
                      v69 = v117 + v142;
                      if (!v109)
                      {
                        goto LABEL_109;
                      }

                      goto LABEL_215;
                    case 2uLL:
                      v144 = *(v138 + 16);
                      v143 = *(v138 + 24);
                      v145 = OUTLINED_FUNCTION_39_4();
                      sub_21AF99728(v145, v146);
                      sub_21B0F68B8(&v174);
                      sub_21AFC54B0(v178);
                      v147 = OUTLINED_FUNCTION_32_5();
                      sub_21AFC54B0(v147);
                      sub_21AFC54B0(v178);
                      v142 = v143 - v144;
                      if (!__OFSUB__(v143, v144))
                      {
                        goto LABEL_186;
                      }

                      goto LABEL_224;
                    case 3uLL:
                      v148 = OUTLINED_FUNCTION_39_4();
                      sub_21AF99728(v148, v149);
                      sub_21B0F68B8(&v174);
                      sub_21AFC54B0(v178);
                      v150 = OUTLINED_FUNCTION_32_5();
                      sub_21AFC54B0(v150);
                      sub_21AFC54B0(v178);
                      v142 = 0;
                      goto LABEL_186;
                    default:
                      v139 = OUTLINED_FUNCTION_39_4();
                      sub_21AF99728(v139, v140);
                      sub_21B0F68B8(&v174);
                      sub_21AFC54B0(v178);
                      v141 = OUTLINED_FUNCTION_32_5();
                      sub_21AFC54B0(v141);
                      sub_21AFC54B0(v178);
                      v142 = BYTE6(v11);
                      goto LABEL_186;
                  }

                case 6:
                  sub_21B0F6800(&v175, v173);
                  v118._rawValue = countAndFlagsBits;
                  v68 = sub_21B103AA8(v118, object, v57);
                  goto LABEL_48;
                case 7:
                  sub_21B0F68B8(&v174);
                  sub_21AFC54B0(v178);
                  v110 = OUTLINED_FUNCTION_32_5();
                  sub_21AFC54B0(v110);
                  sub_21AFC54B0(v178);
                  v69 = 0;
                  goto LABEL_107;
                default:
                  v58 = v175.schema.type._countAndFlagsBits & 1;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43780, &qword_21B114238);
                  v11 = OUTLINED_FUNCTION_114_1();
                  OUTLINED_FUNCTION_9_22(v11);
                  *(OUTLINED_FUNCTION_77_2(v59) + 32) = v58;
LABEL_104:
                  sub_21B110E14();
                  v69 = *(v11 + 16);

                  sub_21B0F68B8(&v174);
                  sub_21AFC54B0(v178);
                  v70 = OUTLINED_FUNCTION_32_5();
                  break;
              }

LABEL_105:
              sub_21AFC54B0(v70);
LABEL_106:
              sub_21AFC54B0(v178);
LABEL_107:
              v2 = v164;
LABEL_108:
              v18 = v165;
              v14 = v166;
LABEL_109:
              v108 = v162;
              v53 = v162 + v69;
              if (__OFADD__(v162, v69))
              {
                goto LABEL_206;
              }

              v12 = v171;
              break;
          }

          goto LABEL_111;
        default:
          switch(v178[24])
          {
            case 1:
              v74 = OUTLINED_FUNCTION_149_0();
              goto LABEL_61;
            case 2:
              v74 = sub_21B103CA8((2 * *v178) ^ (*v178 >> 63));
LABEL_61:
              OUTLINED_FUNCTION_29_7(v74);
              if (v76)
              {
                OUTLINED_FUNCTION_26_6();
                sub_21B110E14();
                v53 = *(v11 + 16);
              }

              else
              {
                v53 = 0;
              }

              v12 = v171;
              v2 = v164;

              sub_21AFC54B0(v178);
              sub_21AFC54B0(v178);
              goto LABEL_58;
            case 3:
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43780, &qword_21B114238);
              v11 = OUTLINED_FUNCTION_117_0();
              OUTLINED_FUNCTION_9_22(v11);
              *(OUTLINED_FUNCTION_77_2(v75) + 32) = v44;
              goto LABEL_54;
            case 4:
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43780, &qword_21B114238);
              v11 = OUTLINED_FUNCTION_119_0();
              OUTLINED_FUNCTION_9_22(v11);
              *(OUTLINED_FUNCTION_77_2(v73) + 32) = v44;
              goto LABEL_54;
            case 5:
              if ((*&v178[8] & 0x1000000000000000) != 0)
              {
                v79 = OUTLINED_FUNCTION_146_0();
              }

              else
              {
                OUTLINED_FUNCTION_52_2();
                if (v33)
                {
                  v79 = v77;
                }

                else
                {
                  v79 = v78;
                }
              }

              v80 = (2 * v79) ^ (v79 >> 63);
              OUTLINED_FUNCTION_94_2();
              v81 = sub_21B103CA8(v80);
              OUTLINED_FUNCTION_29_7(v81);
              if (v82)
              {
                OUTLINED_FUNCTION_26_6();
                sub_21B110E14();
                v163 = *(v80 + 16);
              }

              else
              {
                v163 = 0;
              }

              sub_21B112434();
              OUTLINED_FUNCTION_74_1();
              v87 = OUTLINED_FUNCTION_81_2();
              v88(v87);
              if (v45 >> 60 == 15)
              {
                v89 = 0;
              }

              else
              {
                v89 = v80;
              }

              if (v45 >> 60 == 15)
              {
                v11 = 0xC000000000000000;
              }

              else
              {
                v11 = v45;
              }

              OUTLINED_FUNCTION_39_4();
              sub_21B110E94();
              v12 = v171;
              switch(v11 >> 62)
              {
                case 1uLL:
                  v103 = OUTLINED_FUNCTION_39_4();
                  sub_21AF99728(v103, v104);
                  sub_21AFC54B0(v178);
                  sub_21AFC54B0(v178);
                  LODWORD(v92) = HIDWORD(v89) - v89;
                  if (__OFSUB__(HIDWORD(v89), v89))
                  {
                    goto LABEL_214;
                  }

                  v92 = v92;
LABEL_98:
                  v2 = v164;
                  v18 = v165;
                  v14 = v166;
                  v53 = v163 + v92;
                  if (!__OFADD__(v163, v92))
                  {
                    goto LABEL_111;
                  }

LABEL_208:
                  __break(1u);
                  break;
                case 2uLL:
                  v98 = *(v89 + 16);
                  v97 = *(v89 + 24);
                  v99 = OUTLINED_FUNCTION_39_4();
                  sub_21AF99728(v99, v100);
                  sub_21AFC54B0(v178);
                  sub_21AFC54B0(v178);
                  v92 = v97 - v98;
                  if (!__OFSUB__(v97, v98))
                  {
                    goto LABEL_98;
                  }

                  goto LABEL_213;
                case 3uLL:
                  v101 = OUTLINED_FUNCTION_39_4();
                  sub_21AF99728(v101, v102);
                  sub_21AFC54B0(v178);
                  sub_21AFC54B0(v178);
                  v92 = 0;
                  goto LABEL_98;
                default:
                  v90 = OUTLINED_FUNCTION_39_4();
                  sub_21AF99728(v90, v91);
                  sub_21AFC54B0(v178);
                  sub_21AFC54B0(v178);
                  v92 = BYTE6(v11);
                  goto LABEL_98;
              }

              goto LABEL_209;
            case 6:
              v83 = (*&v178[8] >> 60) & 3;
              if (v83)
              {
                v84 = *&v178[8] >> 62;
                v85 = v178[14];
                if (v83 == 1)
                {
                  v11 = 0;
                  switch(v84)
                  {
                    case 1:
                      OUTLINED_FUNCTION_121_0();
                      if (v109)
                      {
                        goto LABEL_219;
                      }

                      v11 = v120;
LABEL_138:
                      OUTLINED_FUNCTION_94_2();
LABEL_139:
                      if (!__OFSUB__(v11, v45))
                      {
                        v123 = OUTLINED_FUNCTION_105_1(v11 - v45);
                        OUTLINED_FUNCTION_29_7(v123);
                        if (v124)
                        {
                          OUTLINED_FUNCTION_26_6();
                          sub_21B110E14();
                          v125 = *(v11 + 16);
                        }

                        else
                        {
                          v125 = 0;
                        }

                        OUTLINED_FUNCTION_92_2();
                        switch(v84)
                        {
                          case 1:
                            sub_21AFC54B0(v178);
                            sub_21AFC54B0(v178);
                            OUTLINED_FUNCTION_121_0();
                            if (v109)
                            {
                              goto LABEL_223;
                            }

                            v85 = v135;
LABEL_169:
                            v12 = v171;
                            v18 = v165;
                            v14 = v166;
                            v53 = v125 + v85;
                            if (!__OFADD__(v125, v85))
                            {
                              goto LABEL_170;
                            }

                            goto LABEL_212;
                          case 2:
                            v11 = *(v44 + 16);
                            v134 = *(v44 + 24);
                            sub_21AFC54B0(v178);
                            sub_21AFC54B0(v178);
                            v109 = __OFSUB__(v134, v11);
                            v85 = v134 - v11;
                            if (!v109)
                            {
                              goto LABEL_169;
                            }

                            goto LABEL_222;
                          case 3:
                            sub_21AFC54B0(v178);
                            sub_21AFC54B0(v178);
                            v85 = 0;
                            goto LABEL_169;
                          default:
                            sub_21AFC54B0(v178);
                            sub_21AFC54B0(v178);
                            goto LABEL_169;
                        }
                      }

                      break;
                    case 2:
                      v122 = *(*v178 + 16);
                      v121 = *(*v178 + 24);
                      v11 = v121 - v122;
                      if (!__OFSUB__(v121, v122))
                      {
                        goto LABEL_138;
                      }

                      goto LABEL_217;
                    case 3:
                      goto LABEL_139;
                    default:
                      v11 = v178[14];
                      goto LABEL_139;
                  }

LABEL_210:
                  __break(1u);
LABEL_211:
                  __break(1u);
LABEL_212:
                  __break(1u);
LABEL_213:
                  __break(1u);
LABEL_214:
                  __break(1u);
LABEL_215:
                  __break(1u);
LABEL_216:
                  __break(1u);
LABEL_217:
                  __break(1u);
LABEL_218:
                  __break(1u);
LABEL_219:
                  __break(1u);
LABEL_220:
                  __break(1u);
LABEL_221:
                  __break(1u);
LABEL_222:
                  __break(1u);
LABEL_223:
                  __break(1u);
LABEL_224:
                  __break(1u);
LABEL_225:
                  __break(1u);
                }

                v11 = 0;
                switch(v84)
                {
                  case 1:
                    OUTLINED_FUNCTION_121_0();
                    if (v109)
                    {
                      goto LABEL_218;
                    }

                    v11 = v126;
LABEL_148:
                    OUTLINED_FUNCTION_94_2();
LABEL_149:
                    v129 = sub_21B103CA8((2 * v11) ^ (v11 >> 63));
                    OUTLINED_FUNCTION_29_7(v129);
                    if (v130)
                    {
                      OUTLINED_FUNCTION_26_6();
                      sub_21B110E14();
                      v131 = *(v11 + 16);
                    }

                    else
                    {
                      v131 = 0;
                    }

                    OUTLINED_FUNCTION_92_2();
                    switch(v84)
                    {
                      case 0:
                        sub_21AFC54B0(v178);
                        sub_21AFC54B0(v178);
                        goto LABEL_160;
                      case 1:
                        sub_21AFC54B0(v178);
                        sub_21AFC54B0(v178);
                        OUTLINED_FUNCTION_121_0();
                        if (v109)
                        {
                          goto LABEL_221;
                        }

                        v85 = v133;
LABEL_160:
                        v12 = v171;
                        v18 = v165;
                        v14 = v166;
                        v53 = v131 + v85;
                        if (__OFADD__(v131, v85))
                        {
                          goto LABEL_211;
                        }

LABEL_170:
                        v2 = v164;
                        break;
                      case 2:
                        v11 = *(v44 + 16);
                        v132 = *(v44 + 24);
                        sub_21AFC54B0(v178);
                        sub_21AFC54B0(v178);
                        v109 = __OFSUB__(v132, v11);
                        v85 = v132 - v11;
                        if (!v109)
                        {
                          goto LABEL_160;
                        }

                        goto LABEL_220;
                      case 3:
                        sub_21AFC54B0(v178);
                        sub_21AFC54B0(v178);
                        v85 = 0;
                        goto LABEL_160;
                      default:
                        JUMPOUT(0);
                    }

                    return;
                  case 2:
                    v128 = *(*v178 + 16);
                    v127 = *(*v178 + 24);
                    v11 = v127 - v128;
                    if (!__OFSUB__(v127, v128))
                    {
                      goto LABEL_148;
                    }

                    goto LABEL_216;
                  case 3:
                    goto LABEL_149;
                  default:
                    v11 = v178[14];
                    goto LABEL_149;
                }
              }

              else
              {
                v93 = 2 * *(*v178 + 16);
                OUTLINED_FUNCTION_94_2();
                v94 = sub_21B103CA8(v93);
                OUTLINED_FUNCTION_29_7(v94);
                if (v95)
                {
                  OUTLINED_FUNCTION_26_6();
                  sub_21B110E14();
                  v96 = *(v93 + 16);
                }

                else
                {
                  v96 = 0;
                }

                if (*(v44 + 16))
                {
                  OUTLINED_FUNCTION_147_0();
                  v11 = *(v44 + 16);
                }

                else
                {
                  v11 = 0;
                }

                v12 = v171;
                sub_21AFC54B0(v178);
                sub_21AFC54B0(v178);
                v53 = v96 + v11;
                if (__OFADD__(v96, v11))
                {
LABEL_209:
                  __break(1u);
                  goto LABEL_210;
                }

LABEL_57:
                v2 = v164;
LABEL_58:
                v18 = v165;
                v14 = v166;
              }

LABEL_111:
              v13 = v170 + v53;
              if (__OFADD__(v170, v53))
              {
                goto LABEL_200;
              }

              v109 = __OFADD__(v12, v13);
              v12 += v13;
              if (v109)
              {
                goto LABEL_201;
              }

              v13 = v19;
              if (!v17)
              {
                goto LABEL_6;
              }

              break;
            case 7:
              sub_21AFC54B0(v178);
              sub_21AFC54B0(v178);
              v53 = 0;
              goto LABEL_56;
            default:
              v46 = v178[0] & 1;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43780, &qword_21B114238);
              v11 = OUTLINED_FUNCTION_114_1();
              OUTLINED_FUNCTION_9_22(v11);
              *(OUTLINED_FUNCTION_77_2(v47) + 32) = v46;
LABEL_54:
              sub_21B110E14();
              v53 = *(v11 + 16);

              goto LABEL_55;
          }

          break;
      }
    }
  }

  while (1)
  {
LABEL_6:
    v19 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
LABEL_199:
      __break(1u);
LABEL_200:
      __break(1u);
LABEL_201:
      __break(1u);
LABEL_202:
      __break(1u);
LABEL_203:
      __break(1u);
      goto LABEL_204;
    }

    if (v19 >= v18)
    {
      break;
    }

    v17 = *(v14 + 8 * v19);
    ++v13;
    if (v17)
    {
      goto LABEL_9;
    }
  }

  OUTLINED_FUNCTION_4_32();
  sub_21B1059A8();
  v155 = v154;
  v156 = *(v154 + 16);
  v13 = *(v154 + 24);
  v11 = v156 + 1;
  if (v156 < v13 >> 1)
  {
    goto LABEL_193;
  }

LABEL_204:
  OUTLINED_FUNCTION_13_10(v13);
  sub_21B1059A8();
  v155 = v161;
LABEL_193:
  *(v155 + 16) = v11;
  v157 = OUTLINED_FUNCTION_87_2();
  ByteBuffer.writeBytes(_:)(v157);
  OUTLINED_FUNCTION_64_2();

  if (__OFADD__(v12, v0))
  {
    __break(1u);
LABEL_206:
    __break(1u);
    goto LABEL_207;
  }

  v158 = *MEMORY[0x277D85DE8];
LABEL_197:
  OUTLINED_FUNCTION_77();
}

Swift::Int __swiftcall ByteBuffer.writeAvroRecord(_:)(SwiftAvro::AvroRecord *a1)
{
  OUTLINED_FUNCTION_76();
  v5 = v1;
  v7 = v6;
  v928[9] = *MEMORY[0x277D85DE8];
  v864 = sub_21B112444();
  v8 = *(*(v864 - 8) + 64);
  MEMORY[0x28223BE20](v864);
  v863 = &v852 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v7 + 56);
  v856 = *(v11 + 16);
  v12 = 0;
  if (!v856)
  {
    goto LABEL_751;
  }

  v13 = 0;
  v854 = v11;
  v855 = v11 + 32;
  v861 = (v9 + 8);
  v878 = v5;
LABEL_3:
  if (v13 >= *(v11 + 16))
  {
    goto LABEL_770;
  }

  v865 = v12;
  v14 = (v855 + 72 * v13);
  memcpy(v888, v14, sizeof(v888));
  v866 = v13 + 1;
  v15 = *v888;
  v16 = *&v888[16];
  v17 = *&v888[24];
  v871 = *&v888[24];
  switch(v888[64])
  {
    case 1:
      v852 = *&v888[16];
      v853 = *&v888[8];
      v318 = *(*&v888[24] + 16);
      if (!v318)
      {
        goto LABEL_608;
      }

      v319 = 2 * v318;
      OUTLINED_FUNCTION_65_1();
      OUTLINED_FUNCTION_65_1();
      v320._rawValue = sub_21B103CA8(v319);
      v321 = v5;
      v322 = ByteBuffer.writeBytes(_:)(v320);

      v323 = *(v17 + 16);
      if (!v323)
      {
        goto LABEL_621;
      }

      v324 = 0;
      v859 = *(v17 + 16);
      v860 = v17 + 32;
      v325 = v323;
      while (2)
      {
        if (v324 >= v325)
        {
          goto LABEL_766;
        }

        v870 = v322;
        v326 = v324;
        v321 = (v860 + 72 * v324);
        memcpy(v883, v321, sizeof(v883));
        v869 = v326 + 1;
        v2 = *v883;
        v327 = *&v883[8];
        v328 = *&v883[16];
        v3 = *&v883[24];
        v876 = *&v883[24];
        switch(v883[64])
        {
          case 1:
            v857 = *&v883[16];
            v858 = *&v883[8];
            v478 = *(*&v883[24] + 16);
            if (!v478)
            {
              OUTLINED_FUNCTION_57_1();
              OUTLINED_FUNCTION_57_1();
              OUTLINED_FUNCTION_4_32();
              sub_21B1059A8();
              OUTLINED_FUNCTION_3_29(v631);
              if (v59)
              {
                OUTLINED_FUNCTION_0_31(v632);
                sub_21B1059A8();
                v320._rawValue = v738;
              }

              v341 = v870;
              goto LABEL_452;
            }

            v479 = 2 * v478;
            OUTLINED_FUNCTION_57_1();
            OUTLINED_FUNCTION_57_1();
            v320._rawValue = sub_21B103CA8(v479);
            v480 = v5;
            v481 = ByteBuffer.writeBytes(_:)(v320);

            v482 = *(v3 + 16);
            if (v482)
            {
              v483 = 0;
              v872 = *(v3 + 16);
              v873 = v3 + 32;
              v484 = v482;
              while (2)
              {
                if (v483 >= v484)
                {
                  goto LABEL_757;
                }

                v4 = v5;
                OUTLINED_FUNCTION_143_0(72);
                v877 = v483 + 1;
                v320._rawValue = v879;
                countAndFlagsBits = v881._countAndFlagsBits;
                object = v881._object;
                switch(v882)
                {
                  case 1:
                    v867 = v880;
                    v868 = v881._countAndFlagsBits;
                    v515 = *(v881._object + 2);
                    if (!v515)
                    {
                      v536 = OUTLINED_FUNCTION_17_12();
                      sub_21B0F6800(v536, v537);
                      v538 = OUTLINED_FUNCTION_17_12();
                      sub_21B0F6800(v538, v539);
                      OUTLINED_FUNCTION_4_32();
                      sub_21B1059A8();
                      OUTLINED_FUNCTION_3_29(v540);
                      if (v59)
                      {
                        OUTLINED_FUNCTION_0_31(v541);
                        sub_21B1059A8();
                        v320._rawValue = v611;
                      }

                      OUTLINED_FUNCTION_6_26();
                      v480 = v4;
                      sub_21B110E14();

                      OUTLINED_FUNCTION_58_2();
                      v5 = v4;
LABEL_358:

                      sub_21AFC54B0(&v879);
                      OUTLINED_FUNCTION_30_6();

                      goto LABEL_385;
                    }

                    v516 = 2 * v515;
                    v517 = OUTLINED_FUNCTION_17_12();
                    sub_21B0F6800(v517, v518);
                    v519 = OUTLINED_FUNCTION_17_12();
                    sub_21B0F6800(v519, v520);
                    v521 = sub_21B103CA8(v516);
                    OUTLINED_FUNCTION_22_7(v521);
                    v862 = v481;
                    if (v522)
                    {
                      OUTLINED_FUNCTION_16_12();
                      sub_21B110E14();
                      v523 = *(v320._rawValue + 2);
                    }

                    else
                    {
                      v523 = 0;
                    }

                    v2 = object[2];
                    if (v2)
                    {
                      v572 = (object + 8);
                      while (2)
                      {
                        OUTLINED_FUNCTION_106_1();
                        v573 = *v886;
                        v574 = *&v886[8];
                        v320._rawValue = *&v886[16];
                        v575 = v886[24];
                        switch(v886[64])
                        {
                          case 1:
                            OUTLINED_FUNCTION_56_1();
                            v580 = OUTLINED_FUNCTION_56_1();
                            v577 = v4;
                            ByteBuffer.writeAvroArray(_:)(v580);
                            goto LABEL_397;
                          case 2:
                            OUTLINED_FUNCTION_56_1();
                            v578 = OUTLINED_FUNCTION_56_1();
                            v577 = v4;
                            ByteBuffer.writeAvroMap(_:)(v578);
LABEL_397:
                            v581 = OUTLINED_FUNCTION_21_7();
                            sub_21AFC54B0(v581);

                            goto LABEL_398;
                          case 3:
                            v889.schema.type._countAndFlagsBits = *v886;
                            v889.schema.type._object = *&v886[8];
                            v889.schema.name = *&v886[16];
                            v579 = *(v572 + 1);
                            v889.schema.namespace = *v572;
                            *&v889.schema.fields._rawValue = v579;
                            OUTLINED_FUNCTION_56_1();
                            v576 = ByteBuffer.writeAvroRecord(_:)(&v889);
                            goto LABEL_394;
                          case 4:
                            OUTLINED_FUNCTION_67_2(v890);
                            OUTLINED_FUNCTION_56_1();
                            sub_21B0F685C(v890, v887);
                            v577 = ByteBuffer.writeAvroUnion(_:)(v890);
                            sub_21B0F68B8(v890);
                            goto LABEL_395;
                          default:
                            OUTLINED_FUNCTION_56_1();
                            v576 = ByteBuffer.writeAvroPrimitive(_:)(v573, v574, v320._rawValue, v575);
LABEL_394:
                            v577 = v576;
LABEL_395:
                            sub_21AFC54B0(v886);
LABEL_398:
                            v74 = __OFADD__(v523, v577);
                            v523 += v577;
                            if (v74)
                            {
                              goto LABEL_753;
                            }

                            v572 += 72;
                            if (!--v2)
                            {
                              break;
                            }

                            continue;
                        }

                        break;
                      }
                    }

                    OUTLINED_FUNCTION_4_32();
                    sub_21B1059A8();
                    OUTLINED_FUNCTION_134(v582);
                    if (v59)
                    {
                      OUTLINED_FUNCTION_0_31(v583);
                      sub_21B1059A8();
                      v320._rawValue = v608;
                    }

                    v3 = v876;
                    *(OUTLINED_FUNCTION_23_7() + v2) = 0;
                    sub_21B110E14();

                    OUTLINED_FUNCTION_58_2();

                    sub_21AFC54B0(&v879);
                    OUTLINED_FUNCTION_30_6();

                    v480 = v523 + v4;
                    if (__OFADD__(v523, v4))
                    {
                      goto LABEL_784;
                    }

                    v481 = v862;
                    v483 = v877;
                    v5 = v4;
LABEL_413:
                    v74 = __OFADD__(v481, v480);
                    v481 += v480;
                    if (v74)
                    {
                      goto LABEL_758;
                    }

                    if (v483 == v872)
                    {
                      break;
                    }

                    v484 = *(v3 + 16);
                    continue;
                  case 2:
                    v867 = v880;
                    v868 = v881._countAndFlagsBits;
                    v875 = v881._object;
                    v503 = *(v881._object + 2);
                    if (!v503)
                    {
                      v530 = OUTLINED_FUNCTION_17_12();
                      sub_21B0F6800(v530, v531);
                      v532 = OUTLINED_FUNCTION_17_12();
                      sub_21B0F6800(v532, v533);
                      OUTLINED_FUNCTION_4_32();
                      sub_21B1059A8();
                      OUTLINED_FUNCTION_3_29(v534);
                      v5 = v4;
                      if (v59)
                      {
                        OUTLINED_FUNCTION_0_31(v535);
                        sub_21B1059A8();
                        v320._rawValue = v610;
                      }

                      OUTLINED_FUNCTION_6_26();
                      v480 = v4;
                      sub_21B110E14();

                      OUTLINED_FUNCTION_58_2();
                      goto LABEL_358;
                    }

                    v504 = 2 * v503;
                    v505 = OUTLINED_FUNCTION_17_12();
                    sub_21B0F6800(v505, v506);
                    v507 = OUTLINED_FUNCTION_17_12();
                    sub_21B0F6800(v507, v508);
                    v509 = sub_21B103CA8(v504);
                    OUTLINED_FUNCTION_22_7(v509);
                    v862 = v481;
                    if (v510)
                    {
                      OUTLINED_FUNCTION_16_12();
                      v504 = v4;
                      sub_21B110E14();
                      v511 = *(v320._rawValue + 2);
                    }

                    else
                    {
                      v511 = 0;
                    }

                    v543 = v875 + 64;
                    v542 = *(v875 + 8);
                    v544 = *(v875 + 32);
                    OUTLINED_FUNCTION_1_20();
                    v2 = v546 & v545;
                    v4 = (v547 + 63) >> 6;

                    v548 = 0;
                    if (v2)
                    {
LABEL_361:
                      v874 = v511;
                      v549 = v548;
                      goto LABEL_366;
                    }

                    while (1)
                    {
                      v549 = v548 + 1;
                      if (__OFADD__(v548, 1))
                      {
                        break;
                      }

                      if (v549 >= v4)
                      {

                        OUTLINED_FUNCTION_4_32();
                        sub_21B1059A8();
                        OUTLINED_FUNCTION_3_29(v570);
                        if (v59)
                        {
                          OUTLINED_FUNCTION_0_31(v571);
                          sub_21B1059A8();
                          v320._rawValue = v609;
                        }

                        v5 = v878;
                        v3 = v876;
                        v481 = v862;
                        OUTLINED_FUNCTION_6_26();
                        sub_21B110E14();

                        OUTLINED_FUNCTION_58_2();

                        sub_21AFC54B0(&v879);
                        OUTLINED_FUNCTION_30_6();

                        v480 = v511 + v5;
                        if (!__OFADD__(v511, v5))
                        {
LABEL_385:
                          v483 = v877;
                          goto LABEL_413;
                        }

LABEL_785:
                        __break(1u);
LABEL_786:
                        __break(1u);
LABEL_787:
                        __break(1u);
LABEL_788:
                        __break(1u);
                        goto LABEL_789;
                      }

                      v2 = *&v543[8 * v549];
                      ++v548;
                      if (v2)
                      {
                        v874 = v511;
LABEL_366:
                        v550 = *(v875 + 7);
                        v551 = (*(v875 + 6) + 16 * (__clz(__rbit64(v2)) | (v549 << 6)));
                        v553 = *v551;
                        v552 = v551[1];
                        OUTLINED_FUNCTION_60_1();
                        memcpy(v886, v554, 0x41uLL);
                        if ((v552 & 0x1000000000000000) != 0)
                        {
                          sub_21B112514();
                        }

                        OUTLINED_FUNCTION_44_4();

                        OUTLINED_FUNCTION_56_1();
                        v555 = sub_21B103CA8(v504);
                        v556 = v878;
                        v557 = ByteBuffer.writeBytes(_:)(v555);

                        v558._countAndFlagsBits = v553;
                        v558._object = v552;
                        ByteBuffer.writeString(_:)(v558);
                        OUTLINED_FUNCTION_64_2();

                        v74 = __OFADD__(v557, v556);
                        v559 = v557 + v556;
                        if (!v74)
                        {
                          v2 &= v2 - 1;
                          v560 = *v886;
                          v561 = *&v886[8];
                          v320._rawValue = *&v886[16];
                          v562 = v886[24];
                          switch(v886[64])
                          {
                            case 1:
                              v567 = OUTLINED_FUNCTION_56_1();
                              v504 = v878;
                              ByteBuffer.writeAvroArray(_:)(v567);
                              goto LABEL_377;
                            case 2:
                              v565 = OUTLINED_FUNCTION_56_1();
                              v504 = v878;
                              ByteBuffer.writeAvroMap(_:)(v565);
LABEL_377:
                              v568 = OUTLINED_FUNCTION_21_7();
                              sub_21AFC54B0(v568);

                              goto LABEL_378;
                            case 3:
                              v891 = *v886;
                              OUTLINED_FUNCTION_56_1();
                              v504 = v878;
                              ByteBuffer.writeAvroRecord(_:)(&v891);
                              goto LABEL_374;
                            case 4:
                              OUTLINED_FUNCTION_67_2(v892);
                              OUTLINED_FUNCTION_56_1();
                              sub_21B0F685C(v892, v887);
                              v504 = v878;
                              ByteBuffer.writeAvroUnion(_:)(v892);
                              v564 = OUTLINED_FUNCTION_21_7();
                              sub_21AFC54B0(v564);
                              sub_21B0F68B8(v892);
                              goto LABEL_375;
                            default:
                              OUTLINED_FUNCTION_56_1();
                              v563 = v560;
                              v504 = v878;
                              ByteBuffer.writeAvroPrimitive(_:)(v563, v561, v320._rawValue, v562);
LABEL_374:
                              v566 = OUTLINED_FUNCTION_21_7();
                              sub_21AFC54B0(v566);
LABEL_375:
                              sub_21AFC54B0(v886);
LABEL_378:
                              v569 = v559 + v504;
                              if (__OFADD__(v559, v504))
                              {
                                goto LABEL_764;
                              }

                              v511 = v874 + v569;
                              if (__OFADD__(v874, v569))
                              {
                                goto LABEL_765;
                              }

                              v548 = v549;
                              if (!v2)
                              {
                                continue;
                              }

                              goto LABEL_361;
                          }
                        }

LABEL_763:
                        __break(1u);
LABEL_764:
                        __break(1u);
LABEL_765:
                        __break(1u);
LABEL_766:
                        __break(1u);
LABEL_767:
                        __break(1u);
LABEL_768:
                        __break(1u);
LABEL_769:
                        __break(1u);
LABEL_770:
                        __break(1u);
LABEL_771:
                        __break(1u);
LABEL_772:
                        __break(1u);
LABEL_773:
                        __break(1u);
                        goto LABEL_774;
                      }
                    }

                    __break(1u);
LABEL_753:
                    __break(1u);
                    goto LABEL_754;
                  case 3:
                    v893.schema.type._countAndFlagsBits = v879;
                    v893.schema.type._object = v880;
                    v893.schema.name = v881;
                    v512 = *(v480 + 48);
                    v893.schema.namespace = *(v480 + 32);
                    *&v893.schema.fields._rawValue = v512;
                    v513 = OUTLINED_FUNCTION_17_12();
                    sub_21B0F6800(v513, v514);
                    v5 = v4;
                    v492 = ByteBuffer.writeAvroRecord(_:)(&v893);
                    goto LABEL_343;
                  case 4:
                    OUTLINED_FUNCTION_108_1();
                    OUTLINED_FUNCTION_59_1();
                    v2 = v494 ^ (v493 >> 63);
                    v495 = (v2 & 0x7F);
                    v496 = OUTLINED_FUNCTION_72_1();
                    if (v2 >= 0x80)
                    {
                      sub_21B0F6800(v496, v497);
                      v524 = OUTLINED_FUNCTION_72_1();
                      sub_21B0F6800(v524, v525);
                      OUTLINED_FUNCTION_82_1();
                      OUTLINED_FUNCTION_4_32();
                      sub_21B1059A8();
                      v320._rawValue = v526;
                      v3 = v526[2];
                      v5 = v4;
                      do
                      {
                        v527 = *(v320._rawValue + 3);
                        v480 = v3 + 1;
                        if (v3 >= v527 >> 1)
                        {
                          OUTLINED_FUNCTION_0_31(v527);
                          sub_21B1059A8();
                          v320._rawValue = v529;
                        }

                        OUTLINED_FUNCTION_11_12();
                        ++v3;
                      }

                      while (v528);
                    }

                    else
                    {
                      sub_21B0F6800(v496, v497);
                      v498 = OUTLINED_FUNCTION_72_1();
                      sub_21B0F6800(v498, v499);
                      OUTLINED_FUNCTION_82_1();
                      v320._rawValue = MEMORY[0x277D84F90];
                      v5 = v4;
                    }

                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v605 = *(v320._rawValue + 2);
                      OUTLINED_FUNCTION_3_27();
                      sub_21B1059A8();
                      v320._rawValue = v606;
                    }

                    OUTLINED_FUNCTION_42_5();
                    if (v59)
                    {
                      OUTLINED_FUNCTION_0_31(v500);
                      sub_21B1059A8();
                      v320._rawValue = v607;
                    }

                    *(OUTLINED_FUNCTION_23_7() + v2) = v495;
                    OUTLINED_FUNCTION_86_2();
                    v501 = *(v320._rawValue + 2);

                    OUTLINED_FUNCTION_96_2();
                    switch(v502)
                    {
                      case 1:
                        v592 = OUTLINED_FUNCTION_14_13();
                        sub_21B0F6800(v592, v886);
                        OUTLINED_FUNCTION_41_5();
                        ByteBuffer.writeAvroArray(_:)(v593);
                        goto LABEL_410;
                      case 2:
                        v587 = OUTLINED_FUNCTION_14_13();
                        sub_21B0F6800(v587, v886);
                        OUTLINED_FUNCTION_41_5();
                        ByteBuffer.writeAvroMap(_:)(v588);
LABEL_410:
                        OUTLINED_FUNCTION_68_2();
                        sub_21AFC54B0(&v879);

                        goto LABEL_411;
                      case 3:
                        v894.schema.type._countAndFlagsBits = v480;
                        v894.schema.type._object = v2;
                        v894.schema.name._countAndFlagsBits = v320._rawValue;
                        v894.schema.name._object = v3;
                        v589 = OUTLINED_FUNCTION_10_17();
                        v591 = OUTLINED_FUNCTION_38_6(&v894, v589, v590);
                        sub_21B0F6800(v591, v886);
                        v480 = v5;
                        ByteBuffer.writeAvroRecord(_:)(&v894);
                        goto LABEL_408;
                      case 4:
                        OUTLINED_FUNCTION_50_4();
                        OUTLINED_FUNCTION_12_15();
                        v584 = OUTLINED_FUNCTION_14_13();
                        sub_21B0F6800(v584, v885);
                        OUTLINED_FUNCTION_104_1();
                        v585 = sub_21B103CA8(v480);
                        OUTLINED_FUNCTION_22_7(v585);
                        if (v586)
                        {
                          OUTLINED_FUNCTION_16_12();
                          v480 = v5;
                          sub_21B110E14();
                          v4 = *(v320._rawValue + 2);
                        }

                        else
                        {
                          v4 = 0;
                        }

                        OUTLINED_FUNCTION_101_1();
                        switch(v594)
                        {
                          case 1:
                            OUTLINED_FUNCTION_31_8();
                            OUTLINED_FUNCTION_41_5();
                            ByteBuffer.writeAvroArray(_:)(v602);
                            goto LABEL_426;
                          case 2:
                            OUTLINED_FUNCTION_31_8();
                            OUTLINED_FUNCTION_41_5();
                            ByteBuffer.writeAvroMap(_:)(v597);
LABEL_426:
                            v603 = OUTLINED_FUNCTION_21_7();
                            sub_21B0F68B8(v603);
                            sub_21B0F68B8(v887);
                            sub_21AFC54B0(&v879);

                            goto LABEL_427;
                          case 3:
                            v895.schema.type._countAndFlagsBits = v480;
                            v895.schema.type._object = v2;
                            v895.schema.name._countAndFlagsBits = v320._rawValue;
                            v895.schema.name._object = v3;
                            v495 = v886;
                            v598 = OUTLINED_FUNCTION_36_6();
                            v600 = OUTLINED_FUNCTION_38_6(&v895, v598, v599);
                            sub_21B0F6800(v600, v885);
                            v480 = v5;
                            ByteBuffer.writeAvroRecord(_:)(&v895);
                            goto LABEL_424;
                          case 4:
                            OUTLINED_FUNCTION_67_2(v885);
                            OUTLINED_FUNCTION_27_8();
                            OUTLINED_FUNCTION_110_1();
                            OUTLINED_FUNCTION_151_0();
                            v595._rawValue = sub_21B103CA8(v480);
                            OUTLINED_FUNCTION_85_2(v595);
                            OUTLINED_FUNCTION_84_2();
                            OUTLINED_FUNCTION_78_2(v896);
                            ByteBuffer.writeAvroValue(_:)(v896);
                            OUTLINED_FUNCTION_150_0();
                            sub_21B0F68B8(v886);
                            sub_21B0F68B8(v887);
                            sub_21AFC54B0(&v879);
                            sub_21AFC54B0(v2 + 8);
                            v596 = OUTLINED_FUNCTION_14_13();
                            sub_21AFC54B0(v596);
                            sub_21AFC54B0(&v879);
                            v74 = __OFADD__(v320._rawValue, v480);
                            v480 += v320._rawValue;
                            if (!v74)
                            {
                              goto LABEL_428;
                            }

                            goto LABEL_818;
                          default:
                            OUTLINED_FUNCTION_80_1();
                            OUTLINED_FUNCTION_18_8();
LABEL_424:
                            v601 = OUTLINED_FUNCTION_21_7();
                            sub_21B0F68B8(v601);
                            sub_21B0F68B8(v887);
                            sub_21AFC54B0(&v879);
                            sub_21AFC54B0((v495 + 8));
LABEL_427:
                            v604 = OUTLINED_FUNCTION_14_13();
                            sub_21AFC54B0(v604);
                            sub_21AFC54B0(&v879);
LABEL_428:
                            v74 = __OFADD__(v4, v480);
                            v480 += v4;
                            v3 = v876;
                            v483 = v877;
                            if (!v74)
                            {
                              goto LABEL_412;
                            }

                            goto LABEL_797;
                        }

                      default:
                        OUTLINED_FUNCTION_43_5();
                        OUTLINED_FUNCTION_18_8();
LABEL_408:
                        OUTLINED_FUNCTION_68_2();
                        sub_21AFC54B0(&v879);
                        sub_21AFC54B0((v495 + 8));
LABEL_411:
                        sub_21AFC54B0(&v879);
                        v3 = v876;
                        v483 = v877;
LABEL_412:
                        v74 = __OFADD__(v501, v480);
                        v480 += v501;
                        if (!v74)
                        {
                          goto LABEL_413;
                        }

                        goto LABEL_775;
                    }

                  default:
                    v487 = OUTLINED_FUNCTION_17_12();
                    sub_21B0F6800(v487, v488);
                    v489 = OUTLINED_FUNCTION_84();
                    v490 = countAndFlagsBits;
                    v5 = v4;
                    v492 = ByteBuffer.writeAvroPrimitive(_:)(v489, v491, v490, object);
LABEL_343:
                    v480 = v492;
                    sub_21AFC54B0(&v879);
                    goto LABEL_385;
                }

                break;
              }
            }

            OUTLINED_FUNCTION_4_32();
            sub_21B1059A8();
            OUTLINED_FUNCTION_3_29(v615);
            if (v59)
            {
              OUTLINED_FUNCTION_0_31(v616);
              sub_21B1059A8();
              v320._rawValue = v737;
            }

            *(v320._rawValue + 2) = v480;
            v617 = OUTLINED_FUNCTION_87_2();
            ByteBuffer.writeBytes(_:)(v617);
            OUTLINED_FUNCTION_118_0();

            sub_21AFC54B0(v883);
            v321 = (v481 + v5);
            if (__OFADD__(v481, v5))
            {
              goto LABEL_795;
            }

            goto LABEL_484;
          case 2:
            v857 = *&v883[16];
            v858 = *&v883[8];
            v345 = *(*&v883[24] + 16);
            if (!v345)
            {
              OUTLINED_FUNCTION_57_1();
              OUTLINED_FUNCTION_57_1();
              OUTLINED_FUNCTION_4_32();
              sub_21B1059A8();
              OUTLINED_FUNCTION_3_29(v628);
              v341 = v870;
              if (v59)
              {
                OUTLINED_FUNCTION_0_31(v629);
                sub_21B1059A8();
                v320._rawValue = v630;
              }

LABEL_452:
              OUTLINED_FUNCTION_6_26();
              v321 = v5;
              sub_21B110E14();

              sub_21AFC54B0(v883);
              OUTLINED_FUNCTION_30_6();

LABEL_453:
              v633 = v871;
LABEL_485:
              v74 = __OFADD__(v341, v321);
              v322 = v321 + v341;
              if (v74)
              {
                goto LABEL_767;
              }

              v324 = v869;
              if (v869 != v859)
              {
                v325 = *(v633 + 16);
                continue;
              }

LABEL_621:
              OUTLINED_FUNCTION_4_32();
              sub_21B1059A8();
              OUTLINED_FUNCTION_3_29(v760);
              if (v59)
              {
                OUTLINED_FUNCTION_0_31(v761);
                sub_21B1059A8();
                v320._rawValue = v848;
              }

              *(v320._rawValue + 2) = v321;
              v762 = OUTLINED_FUNCTION_87_2();
              v763 = ByteBuffer.writeBytes(_:)(v762);

              sub_21AFC54B0(v888);
              v74 = __OFADD__(v322, v763);
              v14 = (v322 + v763);
              if (v74)
              {
                goto LABEL_806;
              }

              goto LABEL_656;
            }

            v346 = 2 * v345;
            OUTLINED_FUNCTION_57_1();
            OUTLINED_FUNCTION_57_1();
            v347._rawValue = sub_21B103CA8(v346);
            OUTLINED_FUNCTION_85_2(v347);
            OUTLINED_FUNCTION_19_0();

            v349 = (v3 + 64);
            v348 = *(v3 + 64);
            v350 = *(v3 + 32);
            OUTLINED_FUNCTION_1_20();
            v4 = v352 & v351;
            v354 = (v353 + 63) >> 6;

            v355 = v354;
            v356 = 0;
            v873 = v354;
            v874 = v3 + 64;
            if (!v4)
            {
              goto LABEL_237;
            }

            while (1)
            {
              v5 = v356;
LABEL_240:
              OUTLINED_FUNCTION_138(__rbit64(v4));
              v358 = *v357;
              v359 = v357[1];
              OUTLINED_FUNCTION_60_1();
              memcpy(v884, v360, sizeof(v884));
              v877 = v358;
              if ((v359 & 0x1000000000000000) != 0)
              {
                v361 = sub_21B112514();
              }

              else if ((v359 & 0x2000000000000000) != 0)
              {
                v361 = HIBYTE(v359) & 0xF;
              }

              else
              {
                v361 = v358 & 0xFFFFFFFFFFFFLL;
              }

              v875 = v346;
              v362 = (2 * v361) ^ (v361 >> 63);
              LOBYTE(v363) = v362 & 0x7F;

              v364 = OUTLINED_FUNCTION_33_7();
              if (v362 >= 0x80)
              {
                sub_21B0F6800(v364, v365);
                OUTLINED_FUNCTION_4_32();
                sub_21B1059A8();
                v366 = v367;
                v368 = *(v367 + 16);
                do
                {
                  v887[0] = v366;
                  OUTLINED_FUNCTION_7_18();
                  sub_21B10606C(v368, v369);
                  v366 = v887[0];
                  v370 = v887[0] + v368++;
                  *(v887[0] + 16) = v368;
                  *(v370 + 32) = v363 | 0x80;
                  v363 = (v362 >> 7) & 0x7F;
                  v371 = v362 >> 14;
                  v362 >>= 7;
                }

                while (v371);
              }

              else
              {
                sub_21B0F6800(v364, v365);
                v366 = MEMORY[0x277D84F90];
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v474 = *(v366 + 16);
                OUTLINED_FUNCTION_3_27();
                sub_21B1059A8();
                v366 = v475;
              }

              v373 = *(v366 + 16);
              v372 = *(v366 + 24);
              if (v373 >= v372 >> 1)
              {
                OUTLINED_FUNCTION_0_31(v372);
                sub_21B1059A8();
                v366 = v476;
              }

              v4 &= v4 - 1;
              *(v366 + 16) = v373 + 1;
              *(v366 + 32 + v373) = v363;
              sub_21B110E14();
              v374 = *(v366 + 16);

              v375 = v863;
              sub_21B112434();
              v376 = sub_21B112414();
              v378 = v377;
              OUTLINED_FUNCTION_129_0();
              v379(v375, v864);
              OUTLINED_FUNCTION_137_0();
              v382 = !v381 & v380 ? 0 : v376;
              v383 = !v381 & v380 ? 0xC000000000000000 : v378;
              OUTLINED_FUNCTION_30_2();
              sub_21B110E94();

              switch(v383 >> 62)
              {
                case 1uLL:
                  v393 = OUTLINED_FUNCTION_30_2();
                  sub_21AF99728(v393, v394);
                  LODWORD(v386) = HIDWORD(v382) - v382;
                  if (__OFSUB__(HIDWORD(v382), v382))
                  {
                    goto LABEL_791;
                  }

                  v386 = v386;
LABEL_266:
                  v395 = v374 + v386;
                  v3 = v876;
                  if (__OFADD__(v374, v386))
                  {
                    goto LABEL_772;
                  }

                  break;
                case 2uLL:
                  v388 = *(v382 + 16);
                  v387 = *(v382 + 24);
                  v389 = OUTLINED_FUNCTION_30_2();
                  sub_21AF99728(v389, v390);
                  v386 = v387 - v388;
                  if (!__OFSUB__(v387, v388))
                  {
                    goto LABEL_266;
                  }

                  goto LABEL_792;
                case 3uLL:
                  v391 = OUTLINED_FUNCTION_30_2();
                  sub_21AF99728(v391, v392);
                  v386 = 0;
                  goto LABEL_266;
                default:
                  v384 = OUTLINED_FUNCTION_30_2();
                  sub_21AF99728(v384, v385);
                  v386 = BYTE6(v383);
                  goto LABEL_266;
              }

              v397 = *&v884[8];
              v396 = *v884;
              v399 = *&v884[24];
              v398 = *&v884[16];
              switch(v884[64])
              {
                case 1:
                  v867 = *&v884[8];
                  v868 = *&v884[16];
                  v862 = v374 + v386;
                  if (!*(*&v884[24] + 16))
                  {
                    goto LABEL_305;
                  }

                  v877 = *&v884[24];
                  sub_21B0FAC54(*&v884[24]);
                  OUTLINED_FUNCTION_44_4();
                  v440 = OUTLINED_FUNCTION_33_7();
                  sub_21B0F6800(v440, v441);
                  v442._rawValue = sub_21B103CA8(v396);
                  OUTLINED_FUNCTION_93_2(v442);
                  OUTLINED_FUNCTION_84_2();
                  v443 = *(v877 + 16);
                  if (v443)
                  {
                    v444 = v877 + 64;
                    while (2)
                    {
                      OUTLINED_FUNCTION_106_1();
                      v445 = *v886;
                      v446 = *&v886[8];
                      v447 = *&v886[16];
                      v448 = v886[24];
                      switch(v886[64])
                      {
                        case 1:
                          OUTLINED_FUNCTION_56_1();
                          OUTLINED_FUNCTION_56_1();
                          OUTLINED_FUNCTION_136_0();
                          ByteBuffer.writeAvroArray(_:)(v452);
                          goto LABEL_299;
                        case 2:
                          OUTLINED_FUNCTION_56_1();
                          OUTLINED_FUNCTION_56_1();
                          OUTLINED_FUNCTION_136_0();
                          ByteBuffer.writeAvroMap(_:)(v450);
LABEL_299:
                          v453 = OUTLINED_FUNCTION_21_7();
                          sub_21AFC54B0(v453);

                          goto LABEL_300;
                        case 3:
                          v897.schema.type._countAndFlagsBits = *v886;
                          v897.schema.type._object = *&v886[8];
                          v897.schema.name = *&v886[16];
                          v451 = *(v444 + 16);
                          v897.schema.namespace = *v444;
                          *&v897.schema.fields._rawValue = v451;
                          OUTLINED_FUNCTION_56_1();
                          v449 = ByteBuffer.writeAvroRecord(_:)(&v897);
                          goto LABEL_296;
                        case 4:
                          OUTLINED_FUNCTION_67_2(v898);
                          OUTLINED_FUNCTION_56_1();
                          sub_21B0F685C(v898, v887);
                          v445 = ByteBuffer.writeAvroUnion(_:)(v898);
                          sub_21B0F68B8(v898);
                          goto LABEL_297;
                        default:
                          OUTLINED_FUNCTION_56_1();
                          v449 = ByteBuffer.writeAvroPrimitive(_:)(v445, v446, v447, v448);
LABEL_296:
                          v445 = v449;
LABEL_297:
                          sub_21AFC54B0(v886);
LABEL_300:
                          v74 = __OFADD__(v397, v445);
                          v397 += v445;
                          if (v74)
                          {
                            goto LABEL_761;
                          }

                          v444 += 72;
                          if (!--v443)
                          {
                            break;
                          }

                          continue;
                      }

                      break;
                    }
                  }

                  v454._rawValue = sub_21B103CA8(0);
                  v455 = OUTLINED_FUNCTION_93_2(v454);

                  OUTLINED_FUNCTION_58_2();

                  sub_21AFC54B0(v884);
                  v74 = __OFADD__(v397, v455);
                  v396 = v397 + v455;
                  if (!v74)
                  {
                    goto LABEL_307;
                  }

                  goto LABEL_803;
                case 2:
                  v867 = *&v884[8];
                  v868 = *&v884[16];
                  v862 = v374 + v386;
                  v414 = *(*&v884[24] + 16);
                  if (!v414)
                  {
LABEL_305:
                    v456 = OUTLINED_FUNCTION_33_7();
                    sub_21B0F6800(v456, v457);
                    OUTLINED_FUNCTION_4_32();
                    sub_21B1059A8();
                    v887[0] = v458;
                    v459 = *(v458 + 16);
                    OUTLINED_FUNCTION_7_18();
                    sub_21B10606C(v459, v460);
                    OUTLINED_FUNCTION_73_2();

                    OUTLINED_FUNCTION_58_2();

                    sub_21AFC54B0(v884);
                    sub_21B0FAC54(v397);
                    OUTLINED_FUNCTION_64_2();

                    goto LABEL_308;
                  }

                  v415 = 2 * v414;
                  v416 = OUTLINED_FUNCTION_33_7();
                  sub_21B0F6800(v416, v417);
                  v418._rawValue = sub_21B103CA8(v415);
                  OUTLINED_FUNCTION_93_2(v418);
                  OUTLINED_FUNCTION_19_0();

                  v419 = *(v399 + 64);
                  v420 = *(v399 + 32);
                  OUTLINED_FUNCTION_1_20();
                  v423 = v422 & v421;
                  v425 = (v424 + 63) >> 6;
                  v877 = v399;

                  v426 = 0;
                  break;
                case 3:
                  v900 = *v884;
                  v438 = OUTLINED_FUNCTION_33_7();
                  sub_21B0F6800(v438, v439);
                  v404 = ByteBuffer.writeAvroRecord(_:)(&v900);
                  goto LABEL_287;
                case 4:
                  OUTLINED_FUNCTION_67_2(v887);
                  OUTLINED_FUNCTION_27_8();
                  sub_21B0F6800(v884, v886);
                  OUTLINED_FUNCTION_82_1();
                  v405 = sub_21B103CA8(v396);
                  OUTLINED_FUNCTION_29_7(v405);
                  if (v406)
                  {
                    OUTLINED_FUNCTION_26_6();
                    sub_21B110E14();
                  }

                  v407 = sub_21B0FAC54(v399);

                  v408 = v887[1];
                  v409 = v887[3];
                  v410 = v887[4];
                  switch(LOBYTE(v887[9]))
                  {
                    case 1:
                      v471 = OUTLINED_FUNCTION_14_13();
                      sub_21B0F6800(v471, v886);
                      OUTLINED_FUNCTION_136_0();
                      ByteBuffer.writeAvroArray(_:)(v472);
                      goto LABEL_316;
                    case 2:
                      v466 = OUTLINED_FUNCTION_14_13();
                      sub_21B0F6800(v466, v886);
                      OUTLINED_FUNCTION_136_0();
                      ByteBuffer.writeAvroMap(_:)(v467);
LABEL_316:
                      OUTLINED_FUNCTION_68_2();
                      sub_21AFC54B0(v884);

                      goto LABEL_317;
                    case 3:
                      v901.schema.type._countAndFlagsBits = v887[1];
                      v901.schema.type._object = v887[2];
                      v901.schema.name = *&v887[3];
                      v468 = OUTLINED_FUNCTION_10_17();
                      v470 = OUTLINED_FUNCTION_38_6(&v901, v468, v469);
                      sub_21B0F6800(v470, v886);
                      v408 = v878;
                      ByteBuffer.writeAvroRecord(_:)(&v901);
                      goto LABEL_314;
                    case 4:
                      OUTLINED_FUNCTION_50_4();
                      OUTLINED_FUNCTION_12_15();
                      sub_21B0F6800(&v887[1], v885);
                      OUTLINED_FUNCTION_104_1();
                      v464._rawValue = sub_21B103CA8(v408);
                      OUTLINED_FUNCTION_93_2(v464);
                      OUTLINED_FUNCTION_152_0();
                      OUTLINED_FUNCTION_83_1(v902, v886);
                      ByteBuffer.writeAvroValue(_:)(v902);
                      v465 = OUTLINED_FUNCTION_21_7();
                      sub_21B0F68B8(v465);
                      sub_21B0F68B8(v887);
                      sub_21AFC54B0(v884);
                      sub_21AFC54B0(&v887[1]);
                      sub_21AFC54B0(v884);
                      v74 = __OFADD__(v409, v408);
                      v408 += v409;
                      if (!v74)
                      {
                        goto LABEL_318;
                      }

                      goto LABEL_816;
                    default:
                      OUTLINED_FUNCTION_43_5();
                      v411 = OUTLINED_FUNCTION_90_1();
                      v408 = v878;
                      ByteBuffer.writeAvroPrimitive(_:)(v411, v412, v413, v410);
LABEL_314:
                      OUTLINED_FUNCTION_68_2();
                      sub_21AFC54B0(v884);
                      sub_21AFC54B0(v398 + 8);
LABEL_317:
                      sub_21AFC54B0(v884);
LABEL_318:
                      v74 = __OFADD__(v407, v408);
                      v396 = v407 + v408;
                      v3 = v876;
                      v355 = v873;
                      v349 = v874;
                      if (!v74)
                      {
                        goto LABEL_319;
                      }

                      goto LABEL_796;
                  }

                default:
                  v400 = OUTLINED_FUNCTION_33_7();
                  sub_21B0F6800(v400, v401);
                  v402 = OUTLINED_FUNCTION_35_2();
                  v404 = ByteBuffer.writeAvroPrimitive(_:)(v402, v403, v398, v399);
LABEL_287:
                  v396 = v404;
                  sub_21AFC54B0(v884);
                  sub_21AFC54B0(v884);
                  v355 = v873;
                  v349 = v874;
                  goto LABEL_319;
              }

LABEL_275:
              if (v423)
              {
                v872 = v415;
                v427 = v877;
                goto LABEL_282;
              }

              v427 = v877;
              while (1)
              {
                v428 = v426 + 1;
                if (__OFADD__(v426, 1))
                {
                  goto LABEL_759;
                }

                if (v428 >= v425)
                {
                  break;
                }

                v423 = *(v399 + 64 + 8 * v428);
                ++v426;
                if (v423)
                {
                  v872 = v415;
                  v426 = v428;
LABEL_282:
                  v429 = *(v427 + 48);
                  v430 = *(v427 + 56);
                  v431 = (v429 + 16 * (__clz(__rbit64(v423)) | (v426 << 6)));
                  v432 = *v431;
                  v433 = v431[1];
                  OUTLINED_FUNCTION_60_1();
                  memcpy(v899, v434, 0x41uLL);

                  sub_21B0F6800(v899, v887);
                  v435._countAndFlagsBits = v432;
                  v435._object = v433;
                  ByteBuffer.writeAvroString(_:)(v435);
                  OUTLINED_FUNCTION_152_0();
                  v436 = ByteBuffer.writeAvroValue(_:)(v899);
                  sub_21AFC54B0(v899);
                  v437 = v399 + v436;
                  if (__OFADD__(v399, v436))
                  {
                    goto LABEL_782;
                  }

                  v423 &= v423 - 1;
                  v415 = v872 + v437;
                  if (__OFADD__(v872, v437))
                  {
                    goto LABEL_783;
                  }

                  goto LABEL_275;
                }
              }

              v461 = sub_21B103CA8(0);
              v462 = v415;
              v463 = v878;
              ByteBuffer.writeBytes(_:)(v461);
              OUTLINED_FUNCTION_64_2();

              OUTLINED_FUNCTION_58_2();

              sub_21AFC54B0(v884);
              v74 = __OFADD__(v462, v463);
              v396 = v462 + v463;
              if (v74)
              {
                goto LABEL_804;
              }

LABEL_307:
              v3 = v876;
LABEL_308:
              v355 = v873;
              v349 = v874;
              v395 = v862;
LABEL_319:
              v473 = v395 + v396;
              if (__OFADD__(v395, v396))
              {
                goto LABEL_773;
              }

              v346 = v875 + v473;
              if (__OFADD__(v875, v473))
              {
                break;
              }

              v356 = v5;
              if (!v4)
              {
LABEL_237:
                while (1)
                {
                  v5 = v356 + 1;
                  if (__OFADD__(v356, 1))
                  {
                    break;
                  }

                  if (v5 >= v355)
                  {

                    v887[0] = MEMORY[0x277D84F90];
                    OUTLINED_FUNCTION_1_29();
                    v2 = v346;
                    sub_21B105FC8(v612);
                    v320._rawValue = *(v887[0] + 16);
                    v613 = OUTLINED_FUNCTION_51_1();
                    sub_21B10606C(v613, v349);
                    OUTLINED_FUNCTION_76_2();
                    OUTLINED_FUNCTION_125_0();
                    ByteBuffer.writeBytes(_:)(v614);
                    OUTLINED_FUNCTION_118_0();

                    sub_21AFC54B0(v883);
                    v321 = (v887 + v346);
                    if (!__OFADD__(v2, v887))
                    {
                      goto LABEL_484;
                    }

LABEL_794:
                    __break(1u);
LABEL_795:
                    __break(1u);
LABEL_796:
                    __break(1u);
LABEL_797:
                    __break(1u);
LABEL_798:
                    __break(1u);
LABEL_799:
                    __break(1u);
LABEL_800:
                    __break(1u);
LABEL_801:
                    __break(1u);
LABEL_802:
                    __break(1u);
LABEL_803:
                    __break(1u);
LABEL_804:
                    __break(1u);
LABEL_805:
                    __break(1u);
LABEL_806:
                    __break(1u);
LABEL_807:
                    __break(1u);
LABEL_808:
                    __break(1u);
LABEL_809:
                    __break(1u);
LABEL_810:
                    __break(1u);
LABEL_811:
                    __break(1u);
LABEL_812:
                    __break(1u);
LABEL_813:
                    __break(1u);
LABEL_814:
                    __break(1u);
LABEL_815:
                    __break(1u);
LABEL_816:
                    __break(1u);
LABEL_817:
                    __break(1u);
LABEL_818:
                    __break(1u);
LABEL_819:
                    __break(1u);
LABEL_820:
                    __break(1u);
LABEL_821:
                    __break(1u);
LABEL_822:
                    __break(1u);
LABEL_823:
                    __break(1u);
LABEL_824:
                    __break(1u);
LABEL_825:
                    __break(1u);
LABEL_826:
                    __break(1u);
LABEL_827:
                    __break(1u);
LABEL_828:
                    __break(1u);
LABEL_829:
                    __break(1u);
LABEL_830:
                    __break(1u);
LABEL_831:
                    __break(1u);
LABEL_832:
                    __break(1u);
LABEL_833:
                    __break(1u);
LABEL_834:
                    __break(1u);
LABEL_835:
                    __break(1u);
LABEL_836:
                    __break(1u);
LABEL_837:
                    __break(1u);
LABEL_838:
                    __break(1u);
LABEL_839:
                    __break(1u);
LABEL_840:
                    __break(1u);
LABEL_841:
                    __break(1u);
LABEL_842:
                    __break(1u);
LABEL_843:
                    __break(1u);
LABEL_844:
                    __break(1u);
LABEL_845:
                    __break(1u);
LABEL_846:
                    __break(1u);
LABEL_847:
                    __break(1u);
LABEL_848:
                    __break(1u);
LABEL_849:
                    __break(1u);
LABEL_850:
                    __break(1u);
LABEL_851:
                    __break(1u);
LABEL_852:
                    __break(1u);
LABEL_853:
                    __break(1u);
                  }

                  v4 = *(v349 + v5);
                  ++v356;
                  if (v4)
                  {
                    goto LABEL_240;
                  }
                }

LABEL_754:
                __break(1u);
LABEL_755:
                __break(1u);
LABEL_756:
                __break(1u);
LABEL_757:
                __break(1u);
LABEL_758:
                __break(1u);
LABEL_759:
                __break(1u);
LABEL_760:
                __break(1u);
LABEL_761:
                __break(1u);
LABEL_762:
                __break(1u);
                goto LABEL_763;
              }
            }

LABEL_774:
            __break(1u);
LABEL_775:
            __break(1u);
            break;
          case 3:
            v903.schema.type._countAndFlagsBits = *v883;
            v903.schema.type._object = *&v883[8];
            v903.schema.name = *&v883[16];
            v477 = *(v321 + 3);
            v903.schema.namespace = *(v321 + 2);
            *&v903.schema.fields._rawValue = v477;
            OUTLINED_FUNCTION_57_1();
            v321 = ByteBuffer.writeAvroRecord(_:)(&v903);
            sub_21AFC54B0(v883);
            goto LABEL_484;
          case 4:
            memcpy(v887, (*v883 + 16), sizeof(v887));
            OUTLINED_FUNCTION_59_1();
            v3 = v333 ^ (v332 >> 63);
            v320._rawValue = MEMORY[0x277D84F90];
            v885[0] = MEMORY[0x277D84F90];
            v334 = OUTLINED_FUNCTION_139();
            if (v3 >= 0x80)
            {
              sub_21B0F6800(v334, v335);
              v618 = OUTLINED_FUNCTION_139();
              sub_21B0F6800(v618, v619);
              OUTLINED_FUNCTION_82_1();
              OUTLINED_FUNCTION_1_29();
              v321 = v885;
              sub_21B105FC8(v620);
              OUTLINED_FUNCTION_148_0();
              OUTLINED_FUNCTION_148_0();
              v320._rawValue = v885[0];
              do
              {
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v625 = *(v320._rawValue + 2);
                  OUTLINED_FUNCTION_3_27();
                  sub_21B1059A8();
                  v320._rawValue = v626;
                }

                v622 = *(v320._rawValue + 2);
                v621 = *(v320._rawValue + 3);
                OUTLINED_FUNCTION_25_6();
                if (v59)
                {
                  OUTLINED_FUNCTION_0_31(v623);
                  sub_21B1059A8();
                  v320._rawValue = v627;
                }

                OUTLINED_FUNCTION_62_1();
              }

              while (v624);
            }

            else
            {
              sub_21B0F6800(v334, v335);
              v336 = OUTLINED_FUNCTION_139();
              sub_21B0F6800(v336, v337);
              OUTLINED_FUNCTION_82_1();
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v734 = *(v320._rawValue + 2);
              OUTLINED_FUNCTION_3_27();
              sub_21B1059A8();
              v320._rawValue = v735;
            }

            v339 = *(v320._rawValue + 2);
            v338 = *(v320._rawValue + 3);
            OUTLINED_FUNCTION_25_6();
            v341 = v870;
            if (v59)
            {
              OUTLINED_FUNCTION_0_31(v340);
              sub_21B1059A8();
              v320._rawValue = v736;
            }

            v339[OUTLINED_FUNCTION_23_7()] = v3 & 0x7F;
            OUTLINED_FUNCTION_86_2();
            v342 = *(v320._rawValue + 2);

            v2 = v887[1];
            OUTLINED_FUNCTION_133_0();
            switch(v343)
            {
              case 1:
                v642 = OUTLINED_FUNCTION_14_13();
                sub_21B0F6800(v642, v886);
                OUTLINED_FUNCTION_79_2();
                ByteBuffer.writeAvroArray(_:)(v643);
                goto LABEL_460;
              case 2:
                v637 = OUTLINED_FUNCTION_14_13();
                sub_21B0F6800(v637, v886);
                OUTLINED_FUNCTION_79_2();
                ByteBuffer.writeAvroMap(_:)(v638);
LABEL_460:
                OUTLINED_FUNCTION_68_2();
                sub_21AFC54B0(v883);

                break;
              case 3:
                v904.schema.type._countAndFlagsBits = v2;
                v904.schema.type._object = v320._rawValue;
                v904.schema.name._countAndFlagsBits = v3;
                v904.schema.name._object = v4;
                v639 = OUTLINED_FUNCTION_10_17();
                v641 = OUTLINED_FUNCTION_38_6(&v904, v639, v640);
                sub_21B0F6800(v641, v886);
                v321 = v5;
                ByteBuffer.writeAvroRecord(_:)(&v904);
LABEL_458:
                OUTLINED_FUNCTION_68_2();
                sub_21AFC54B0(v883);
                sub_21AFC54B0((v339 + 8));
                break;
              case 4:
                memcpy(v886, (v2 + 16), sizeof(v886));
                OUTLINED_FUNCTION_12_15();
                v634 = OUTLINED_FUNCTION_14_13();
                sub_21B0F6800(v634, v885);
                OUTLINED_FUNCTION_104_1();
                v635 = sub_21B103CA8(v321);
                OUTLINED_FUNCTION_22_7(v635);
                if (v636)
                {
                  OUTLINED_FUNCTION_16_12();
                  v321 = v5;
                  sub_21B110E14();
                  v4 = *(v320._rawValue + 2);
                }

                else
                {
                  v4 = 0;
                }

                OUTLINED_FUNCTION_101_1();
                switch(v658)
                {
                  case 1:
                    OUTLINED_FUNCTION_31_8();
                    OUTLINED_FUNCTION_41_5();
                    ByteBuffer.writeAvroArray(_:)(v693);
                    goto LABEL_532;
                  case 2:
                    OUTLINED_FUNCTION_31_8();
                    OUTLINED_FUNCTION_41_5();
                    ByteBuffer.writeAvroMap(_:)(v688);
LABEL_532:
                    v694 = OUTLINED_FUNCTION_21_7();
                    sub_21B0F68B8(v694);
                    sub_21B0F68B8(v887);
                    sub_21AFC54B0(v883);

                    goto LABEL_533;
                  case 3:
                    v905.schema.type._countAndFlagsBits = v321;
                    v905.schema.type._object = v2;
                    v905.schema.name._countAndFlagsBits = v320._rawValue;
                    v905.schema.name._object = v3;
                    v339 = v886;
                    v689 = OUTLINED_FUNCTION_36_6();
                    v691 = OUTLINED_FUNCTION_38_6(&v905, v689, v690);
                    sub_21B0F6800(v691, v885);
                    v321 = v5;
                    ByteBuffer.writeAvroRecord(_:)(&v905);
                    goto LABEL_530;
                  case 4:
                    OUTLINED_FUNCTION_67_2(v885);
                    OUTLINED_FUNCTION_27_8();
                    OUTLINED_FUNCTION_110_1();
                    OUTLINED_FUNCTION_151_0();
                    v686._rawValue = sub_21B103CA8(v321);
                    OUTLINED_FUNCTION_85_2(v686);
                    OUTLINED_FUNCTION_84_2();
                    OUTLINED_FUNCTION_78_2(v906);
                    ByteBuffer.writeAvroValue(_:)(v906);
                    OUTLINED_FUNCTION_150_0();
                    sub_21B0F68B8(v886);
                    sub_21B0F68B8(v887);
                    sub_21AFC54B0(v883);
                    sub_21AFC54B0(v2 + 8);
                    v687 = OUTLINED_FUNCTION_14_13();
                    sub_21AFC54B0(v687);
                    sub_21AFC54B0(v883);
                    v74 = __OFADD__(v320._rawValue, v321);
                    v321 = (v321 + v320._rawValue);
                    if (!v74)
                    {
                      goto LABEL_534;
                    }

                    goto LABEL_825;
                  default:
                    OUTLINED_FUNCTION_80_1();
                    OUTLINED_FUNCTION_18_8();
LABEL_530:
                    v692 = OUTLINED_FUNCTION_21_7();
                    sub_21B0F68B8(v692);
                    sub_21B0F68B8(v887);
                    sub_21AFC54B0(v883);
                    sub_21AFC54B0((v339 + 8));
LABEL_533:
                    v695 = OUTLINED_FUNCTION_14_13();
                    sub_21AFC54B0(v695);
                    sub_21AFC54B0(v883);
LABEL_534:
                    v633 = v871;
                    v74 = __OFADD__(v4, v321);
                    v321 = (v321 + v4);
                    if (!v74)
                    {
                      goto LABEL_463;
                    }

                    goto LABEL_807;
                }

              default:
                switch(v4)
                {
                  case 1:
                    v703 = sub_21B103B80((2 * v2) ^ (v2 >> 31));
                    goto LABEL_552;
                  case 2:
                    v703 = sub_21B103CA8((2 * v2) ^ (v2 >> 63));
LABEL_552:
                    OUTLINED_FUNCTION_22_7(v703);
                    if (v707)
                    {
                      OUTLINED_FUNCTION_16_12();
                      v321 = v5;
                      sub_21B110E14();
                    }

                    v708 = OUTLINED_FUNCTION_14_13();
                    sub_21AFC54B0(v708);
                    sub_21B0F68B8(v887);
                    sub_21AFC54B0(v883);
                    OUTLINED_FUNCTION_30_6();

                    goto LABEL_461;
                  case 3:
                    *v886 = v2;
                    v344 = &v886[4];
                    goto LABEL_549;
                  case 4:
                    *v886 = v2;
                    v344 = &v886[8];
                    goto LABEL_549;
                  case 5:
                    if ((v320._rawValue & 0x1000000000000000) != 0)
                    {
                      OUTLINED_FUNCTION_48_1();
                      sub_21B112514();
                    }

                    OUTLINED_FUNCTION_44_4();
                    v3 = v887;
                    sub_21B0F6800(&v887[1], v886);
                    sub_21B0F6800(&v887[1], v886);
                    v709._rawValue = sub_21B103CA8(v321);
                    v877 = OUTLINED_FUNCTION_85_2(v709);

                    v4 = v863;
                    sub_21B112434();
                    v710 = sub_21B112414();
                    OUTLINED_FUNCTION_129_0();
                    v711(v4, v864);
                    OUTLINED_FUNCTION_137_0();
                    if (!v60 & v59)
                    {
                      v320._rawValue = 0;
                    }

                    else
                    {
                      v320._rawValue = v710;
                    }

                    v712 = OUTLINED_FUNCTION_84();
                    v714 = ByteBuffer.writeData(_:)(v712, v713);
                    v715 = OUTLINED_FUNCTION_84();
                    sub_21AF99728(v715, v716);
                    sub_21AFC54B0(&v887[1]);
                    sub_21AFC54B0(&v887[1]);
                    sub_21B0F68B8(v887);
                    sub_21AFC54B0(v883);
                    sub_21AFC54B0(v883);
                    v74 = __OFADD__(v877, v714);
                    v321 = (v877 + v714);
                    if (!v74)
                    {
                      goto LABEL_462;
                    }

                    goto LABEL_834;
                  case 6:
                    OUTLINED_FUNCTION_43_5();
                    v717._rawValue = OUTLINED_FUNCTION_48_1();
                    v321 = v5;
                    sub_21B103AA8(v717, v718, v3);
                    goto LABEL_458;
                  case 7:
                    v706 = OUTLINED_FUNCTION_14_13();
                    sub_21AFC54B0(v706);
                    sub_21B0F68B8(v887);
                    sub_21AFC54B0(v883);
                    sub_21AFC54B0(v883);
                    v321 = 0;
                    goto LABEL_462;
                  default:
                    v886[0] = v2 & 1;
                    v344 = &v886[1];
LABEL_549:
                    v704._rawValue = sub_21B1061F0(v886, v344);
                    OUTLINED_FUNCTION_85_2(v704);
                    OUTLINED_FUNCTION_19_0();

                    v705 = OUTLINED_FUNCTION_14_13();
                    sub_21AFC54B0(v705);
                    sub_21AFC54B0(v883);
                    sub_21B0F68B8(v887);
                    break;
                }

                break;
            }

LABEL_461:
            sub_21AFC54B0(v883);
LABEL_462:
            v633 = v871;
LABEL_463:
            v74 = __OFADD__(v342, v321);
            v321 = (v321 + v342);
            if (!v74)
            {
              goto LABEL_485;
            }

            goto LABEL_786;
          default:
            switch(v883[24])
            {
              case 1:
                v2 = (2 * *v883) ^ (*v883 >> 31);
                v320._rawValue = MEMORY[0x277D84F90];
                v887[0] = MEMORY[0x277D84F90];
                LOBYTE(v645) = ((2 * v883[0]) ^ (*v883 >> 31)) & 0x7F;
                if (v2 >= 0x80)
                {
                  OUTLINED_FUNCTION_8_22();
                  v321 = v887;
                  sub_21B105FC8(v667);
                  v668 = OUTLINED_FUNCTION_51_1();
                  sub_21B105FC8(v668);
                  v669 = OUTLINED_FUNCTION_51_1();
                  sub_21B105FC8(v669);
                  v320._rawValue = v887[0];
                  do
                  {
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v673 = *(v320._rawValue + 2);
                      OUTLINED_FUNCTION_3_27();
                      sub_21B1059A8();
                      v320._rawValue = v674;
                    }

                    OUTLINED_FUNCTION_89_1();
                    if (v59)
                    {
                      OUTLINED_FUNCTION_0_31(v670);
                      sub_21B1059A8();
                      v320._rawValue = v675;
                    }

                    v671 = v645 | 0x80;
                    v645 = (v2 >> 7) & 0x7F;
                    v672 = v2 >> 14;
                    v2 = v2 >> 7;
                    *(v320._rawValue + 2) = v887;
                    *(v320._rawValue + v3 + 32) = v671;
                  }

                  while (v672);
                }

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v742 = *(v320._rawValue + 2);
                  OUTLINED_FUNCTION_3_27();
                  sub_21B1059A8();
                  v320._rawValue = v743;
                }

                OUTLINED_FUNCTION_42_5();
                if (v59)
                {
                  OUTLINED_FUNCTION_0_31(v650);
                  sub_21B1059A8();
                  v320._rawValue = v744;
                }

                goto LABEL_483;
              case 2:
                v2 = (2 * *v883) ^ (*v883 >> 63);
                v320._rawValue = MEMORY[0x277D84F90];
                v887[0] = MEMORY[0x277D84F90];
                LOBYTE(v645) = v2 & 0x7F;
                if (v2 >= 0x80)
                {
                  OUTLINED_FUNCTION_8_22();
                  v321 = v887;
                  sub_21B105FC8(v659);
                  v660 = OUTLINED_FUNCTION_51_1();
                  sub_21B105FC8(v660);
                  v661 = OUTLINED_FUNCTION_51_1();
                  sub_21B105FC8(v661);
                  v320._rawValue = v887[0];
                  do
                  {
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v664 = *(v320._rawValue + 2);
                      OUTLINED_FUNCTION_3_27();
                      sub_21B1059A8();
                      v320._rawValue = v665;
                    }

                    OUTLINED_FUNCTION_89_1();
                    if (v59)
                    {
                      OUTLINED_FUNCTION_0_31(v662);
                      sub_21B1059A8();
                      v320._rawValue = v666;
                    }

                    OUTLINED_FUNCTION_11_12();
                  }

                  while (v663);
                }

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v739 = *(v320._rawValue + 2);
                  OUTLINED_FUNCTION_3_27();
                  sub_21B1059A8();
                  v320._rawValue = v740;
                }

                OUTLINED_FUNCTION_42_5();
                if (v59)
                {
                  OUTLINED_FUNCTION_0_31(v646);
                  sub_21B1059A8();
                  v320._rawValue = v741;
                }

LABEL_483:
                *(OUTLINED_FUNCTION_23_7() + v2) = v645;
                OUTLINED_FUNCTION_86_2();
                sub_21AFC54B0(v883);
                sub_21AFC54B0(v883);
                OUTLINED_FUNCTION_30_6();

                goto LABEL_484;
              case 3:
                LODWORD(v887[0]) = *v883;
                v329 = OUTLINED_FUNCTION_70_2();
                v331 = (v647 + 4);
                goto LABEL_474;
              case 4:
                v887[0] = *v883;
                v329 = OUTLINED_FUNCTION_70_2();
                v331 = (v644 + 8);
                goto LABEL_474;
              case 5:
                if ((*&v883[8] & 0x1000000000000000) != 0)
                {
                  sub_21B112514();
                }

                OUTLINED_FUNCTION_44_4();
                OUTLINED_FUNCTION_57_1();
                OUTLINED_FUNCTION_57_1();
                OUTLINED_FUNCTION_57_1();
                v651 = sub_21B103CA8(v321);
                OUTLINED_FUNCTION_22_7(v651);
                if (v652)
                {
                  OUTLINED_FUNCTION_16_12();
                  sub_21B110E14();
                  v653 = *(v320._rawValue + 2);
                }

                else
                {
                  v653 = 0;
                }

                v3 = v863;
                sub_21B112434();
                v676 = sub_21B112414();
                v320._rawValue = v677;
                OUTLINED_FUNCTION_129_0();
                v678(v3, v864);
                if (v320._rawValue >> 60 == 15)
                {
                  v2 = 0;
                }

                else
                {
                  v2 = v676;
                }

                if (v320._rawValue >> 60 == 15)
                {
                  v320._rawValue = 0xC000000000000000;
                }

                OUTLINED_FUNCTION_48_1();
                sub_21B110E94();
                sub_21AFC54B0(v883);
                sub_21AFC54B0(v883);
                sub_21AFC54B0(v883);
                switch(v320._rawValue >> 62)
                {
                  case 1uLL:
                    v701 = OUTLINED_FUNCTION_48_1();
                    sub_21AF99728(v701, v702);
                    LODWORD(v681) = HIDWORD(v2) - v2;
                    if (__OFSUB__(HIDWORD(v2), v2))
                    {
                      goto LABEL_827;
                    }

                    v681 = v681;
LABEL_543:
                    v341 = v870;
                    v321 = (v653 + v681);
                    if (!__OFADD__(v653, v681))
                    {
                      goto LABEL_453;
                    }

                    goto LABEL_814;
                  case 2uLL:
                    v3 = *(v2 + 16);
                    v696 = *(v2 + 24);
                    v697 = OUTLINED_FUNCTION_48_1();
                    sub_21AF99728(v697, v698);
                    v681 = v696 - v3;
                    if (!__OFSUB__(v696, v3))
                    {
                      goto LABEL_543;
                    }

                    goto LABEL_828;
                  case 3uLL:
                    v699 = OUTLINED_FUNCTION_48_1();
                    sub_21AF99728(v699, v700);
                    v681 = 0;
                    goto LABEL_543;
                  default:
                    v679 = OUTLINED_FUNCTION_48_1();
                    sub_21AF99728(v679, v680);
                    v681 = BYTE6(v320._rawValue);
                    goto LABEL_543;
                }

              case 6:
                v654 = (*&v883[8] >> 60) & 3;
                if (v654)
                {
                  v320._rawValue = (*&v883[8] >> 62);
                  v655 = HIDWORD(*v883);
                  v656 = v883[14];
                  if (v654 != 1)
                  {
                    v4 = *&v883[8];
                    v685 = 0;
                    switch(v320._rawValue)
                    {
                      case 1uLL:
                        if (__OFSUB__(*&v883[4], *v883))
                        {
                          goto LABEL_840;
                        }

                        v685 = *&v883[4] - *v883;
LABEL_584:
                        OUTLINED_FUNCTION_57_1();
                        OUTLINED_FUNCTION_57_1();
                        OUTLINED_FUNCTION_57_1();
LABEL_585:
                        v727 = sub_21B103CA8((2 * v685) ^ (v685 >> 63));
                        OUTLINED_FUNCTION_20_9(v727);
                        if (v728)
                        {
                          OUTLINED_FUNCTION_19_8();
                          sub_21B110E14();
                          v729 = *(v3 + 16);
                        }

                        else
                        {
                          v729 = 0;
                        }

                        sub_21B110E94();
                        sub_21AFC54B0(v883);
                        sub_21AFC54B0(v883);
                        switch(LODWORD(v320._rawValue))
                        {
                          case 0:
                            sub_21AFC54B0(v883);
                            goto LABEL_596;
                          case 1:
                            sub_21AFC54B0(v883);
                            if (__OFSUB__(v655, v2))
                            {
                              goto LABEL_843;
                            }

                            v656 = v655 - v2;
LABEL_596:
                            v341 = v870;
                            v633 = v871;
                            v321 = (v729 + v656);
                            if (!__OFADD__(v729, v656))
                            {
                              goto LABEL_485;
                            }

                            goto LABEL_823;
                          case 2:
                            v731 = *(v2 + 16);
                            v730 = *(v2 + 24);
                            sub_21AFC54B0(v883);
                            v74 = __OFSUB__(v730, v731);
                            v656 = v730 - v731;
                            if (!v74)
                            {
                              goto LABEL_596;
                            }

                            goto LABEL_842;
                          case 3:
                            sub_21AFC54B0(v883);
                            v656 = 0;
                            goto LABEL_596;
                          default:
                            goto LABEL_854;
                        }

                      case 2uLL:
                        v726 = *(*v883 + 16);
                        v725 = *(*v883 + 24);
                        v685 = v725 - v726;
                        if (!__OFSUB__(v725, v726))
                        {
                          goto LABEL_584;
                        }

                        goto LABEL_839;
                      case 3uLL:
                        goto LABEL_585;
                      default:
                        v685 = v883[14];
                        goto LABEL_585;
                    }
                  }

                  v657 = 0;
                  switch(v320._rawValue)
                  {
                    case 1uLL:
                      if (__OFSUB__(*&v883[4], *v883))
                      {
                        goto LABEL_838;
                      }

                      v719 = *&v883[16];
                      v3 = *&v883[8];
                      v657 = *&v883[4] - *v883;
                      break;
                    case 2uLL:
                      v719 = *&v883[16];
                      v721 = *(*v883 + 16);
                      v720 = *(*v883 + 24);
                      v657 = v720 - v721;
                      if (__OFSUB__(v720, v721))
                      {
                        goto LABEL_841;
                      }

                      v3 = *&v883[8];
                      break;
                    case 3uLL:
                      goto LABEL_575;
                    default:
                      v657 = v883[14];
                      goto LABEL_575;
                  }

                  OUTLINED_FUNCTION_57_1();
                  OUTLINED_FUNCTION_57_1();
                  OUTLINED_FUNCTION_57_1();
                  v327 = v3;
                  v328 = v719;
LABEL_575:
                  if (!__OFSUB__(v657, v328))
                  {
                    v4 = v327;
                    v722 = OUTLINED_FUNCTION_105_1(v657 - v328);
                    OUTLINED_FUNCTION_20_9(v722);
                    if (v723)
                    {
                      OUTLINED_FUNCTION_19_8();
                      sub_21B110E14();
                      v724 = *(v3 + 16);
                    }

                    else
                    {
                      v724 = 0;
                    }

                    sub_21B110E94();
                    sub_21AFC54B0(v883);
                    sub_21AFC54B0(v883);
                    switch(LODWORD(v320._rawValue))
                    {
                      case 1:
                        sub_21AFC54B0(v883);
                        if (__OFSUB__(v655, v2))
                        {
                          goto LABEL_845;
                        }

                        v656 = v655 - v2;
LABEL_605:
                        v341 = v870;
                        v633 = v871;
                        v321 = (v724 + v656);
                        if (!__OFADD__(v724, v656))
                        {
                          goto LABEL_485;
                        }

                        goto LABEL_824;
                      case 2:
                        v733 = *(v2 + 16);
                        v732 = *(v2 + 24);
                        sub_21AFC54B0(v883);
                        v74 = __OFSUB__(v732, v733);
                        v656 = v732 - v733;
                        if (!v74)
                        {
                          goto LABEL_605;
                        }

                        goto LABEL_844;
                      case 3:
                        sub_21AFC54B0(v883);
                        v656 = 0;
                        goto LABEL_605;
                      default:
                        sub_21AFC54B0(v883);
                        goto LABEL_605;
                    }
                  }

                  goto LABEL_822;
                }

                v682 = *(*v883 + 16);
                OUTLINED_FUNCTION_57_1();
                OUTLINED_FUNCTION_57_1();
                OUTLINED_FUNCTION_57_1();
                v683 = sub_21B103CA8(2 * v682);
                OUTLINED_FUNCTION_22_7(v683);
                if (v684)
                {
                  OUTLINED_FUNCTION_16_12();
                  sub_21B110E14();
                  v3 = *(v320._rawValue + 2);
                }

                else
                {
                  v3 = 0;
                }

                if (*(v2 + 16))
                {
                  OUTLINED_FUNCTION_26_6();
                  sub_21B110E14();
                }

                sub_21AFC54B0(v883);
                sub_21AFC54B0(v883);
                sub_21AFC54B0(v883);
                v321 = (v3 + v682);
                if (__OFADD__(v3, v682))
                {
                  goto LABEL_821;
                }

LABEL_484:
                v341 = v870;
                v633 = v871;
                break;
              case 7:
                sub_21AFC54B0(v883);
                sub_21AFC54B0(v883);
                v321 = 0;
                goto LABEL_484;
              default:
                LOBYTE(v887[0]) = v883[0] & 1;
                v329 = OUTLINED_FUNCTION_70_2();
                v331 = (v330 + 1);
LABEL_474:
                v648 = sub_21B1061F0(v329, v331);
                OUTLINED_FUNCTION_22_7(v648);
                if (v649)
                {
                  OUTLINED_FUNCTION_16_12();
                  v321 = v5;
                  sub_21B110E14();
                }

                sub_21AFC54B0(v883);
                sub_21AFC54B0(v883);
                OUTLINED_FUNCTION_30_6();

                goto LABEL_484;
            }

            goto LABEL_485;
        }

        goto LABEL_776;
      }

    case 2:
      v852 = *&v888[16];
      v853 = *&v888[8];
      v29 = *(*&v888[24] + 16);
      if (!v29)
      {
LABEL_608:
        OUTLINED_FUNCTION_65_1();
        OUTLINED_FUNCTION_65_1();
        OUTLINED_FUNCTION_4_32();
        sub_21B1059A8();
        OUTLINED_FUNCTION_3_29(v745);
        if (v59)
        {
          OUTLINED_FUNCTION_0_31(v746);
          sub_21B1059A8();
        }

        OUTLINED_FUNCTION_6_26();
        v14 = v5;
        sub_21B110E14();

LABEL_655:
        sub_21AFC54B0(v888);
        OUTLINED_FUNCTION_30_6();

        goto LABEL_656;
      }

      v30 = *&v888[24];
      v31 = 2 * v29;
      OUTLINED_FUNCTION_65_1();
      OUTLINED_FUNCTION_65_1();
      v32._rawValue = sub_21B103CA8(v31);
      v33 = OUTLINED_FUNCTION_85_2(v32);

      v35 = v17 + 64;
      v34 = *(v17 + 64);
      v36 = *(v17 + 32);
      OUTLINED_FUNCTION_1_20();
      v39 = v38 & v37;
      v41 = ((v40 + 63) >> 6);

      v42 = v39;
      v43 = v41;
      v44 = 0;
      v862 = v41;
      v860 = v30 + 64;
      if (!v39)
      {
        goto LABEL_18;
      }

      break;
    case 3:
      v925.schema.type._countAndFlagsBits = *v888;
      v925.schema.type._object = *&v888[8];
      v925.schema.name = *&v888[16];
      v317 = *(v14 + 3);
      v925.schema.namespace = *(v14 + 2);
      *&v925.schema.fields._rawValue = v317;
      OUTLINED_FUNCTION_65_1();
      v14 = ByteBuffer.writeAvroRecord(_:)(&v925);
      sub_21AFC54B0(v888);
      goto LABEL_656;
    case 4:
      OUTLINED_FUNCTION_108_1();
      OUTLINED_FUNCTION_59_1();
      v3 = v22 ^ (v21 >> 63);
      v23 = MEMORY[0x277D84F90];
      v885[0] = MEMORY[0x277D84F90];
      v2 = v3 & 0x7F;
      if (v3 >= 0x80)
      {
        sub_21B0F6800(v888, v886);
        sub_21B0F6800(v888, v886);
        OUTLINED_FUNCTION_82_1();
        OUTLINED_FUNCTION_1_29();
        v14 = v885;
        sub_21B105FC8(v752);
        OUTLINED_FUNCTION_148_0();
        OUTLINED_FUNCTION_148_0();
        v23 = v885[0];
        do
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v757 = *(v23 + 16);
            OUTLINED_FUNCTION_3_27();
            sub_21B1059A8();
            v23 = v758;
          }

          v754 = *(v23 + 16);
          v753 = *(v23 + 24);
          OUTLINED_FUNCTION_25_6();
          if (v59)
          {
            OUTLINED_FUNCTION_0_31(v755);
            sub_21B1059A8();
            v23 = v759;
          }

          OUTLINED_FUNCTION_62_1();
        }

        while (v756);
      }

      else
      {
        sub_21B0F6800(v888, v886);
        sub_21B0F6800(v888, v886);
        OUTLINED_FUNCTION_82_1();
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v845 = *(v23 + 16);
        OUTLINED_FUNCTION_3_27();
        sub_21B1059A8();
        v23 = v846;
      }

      v25 = *(v23 + 16);
      v24 = *(v23 + 24);
      OUTLINED_FUNCTION_25_6();
      if (v59)
      {
        OUTLINED_FUNCTION_0_31(v26);
        sub_21B1059A8();
        v23 = v847;
      }

      v25[OUTLINED_FUNCTION_23_7()] = v2;
      OUTLINED_FUNCTION_86_2();
      v27 = *(v23 + 16);

      OUTLINED_FUNCTION_96_2();
      switch(v28)
      {
        case 1:
          v777 = OUTLINED_FUNCTION_14_13();
          sub_21B0F6800(v777, v886);
          OUTLINED_FUNCTION_41_5();
          ByteBuffer.writeAvroArray(_:)(v778);
          goto LABEL_634;
        case 2:
          v772 = OUTLINED_FUNCTION_14_13();
          sub_21B0F6800(v772, v886);
          OUTLINED_FUNCTION_41_5();
          ByteBuffer.writeAvroMap(_:)(v773);
LABEL_634:
          OUTLINED_FUNCTION_68_2();
          sub_21AFC54B0(v888);

          goto LABEL_635;
        case 3:
          v926.schema.type._countAndFlagsBits = v14;
          v926.schema.type._object = (v3 & 0x7F);
          v926.schema.name._countAndFlagsBits = v23;
          v926.schema.name._object = v3;
          v774 = OUTLINED_FUNCTION_10_17();
          v776 = OUTLINED_FUNCTION_38_6(&v926, v774, v775);
          sub_21B0F6800(v776, v886);
          v14 = v5;
          ByteBuffer.writeAvroRecord(_:)(&v926);
          goto LABEL_632;
        case 4:
          OUTLINED_FUNCTION_50_4();
          OUTLINED_FUNCTION_12_15();
          v764 = OUTLINED_FUNCTION_14_13();
          sub_21B0F6800(v764, v885);
          OUTLINED_FUNCTION_104_1();
          v765 = sub_21B103CA8(v14);
          OUTLINED_FUNCTION_29_7(v765);
          if (v766)
          {
            OUTLINED_FUNCTION_26_6();
            sub_21B110E14();
          }

          v767 = sub_21B0FAC54(v3 & 0x7F);

          v768 = *&v886[8];
          v3 = *&v886[16];
          v2 = *&v886[24];
          v4 = *&v886[32];
          switch(v886[72])
          {
            case 1:
              OUTLINED_FUNCTION_31_8();
              OUTLINED_FUNCTION_79_2();
              ByteBuffer.writeAvroArray(_:)(v819);
              goto LABEL_693;
            case 2:
              OUTLINED_FUNCTION_31_8();
              OUTLINED_FUNCTION_79_2();
              ByteBuffer.writeAvroMap(_:)(v814);
LABEL_693:
              v820 = OUTLINED_FUNCTION_21_7();
              sub_21B0F68B8(v820);
              sub_21B0F68B8(v887);
              sub_21AFC54B0(v888);

              goto LABEL_694;
            case 3:
              v927.schema.type._countAndFlagsBits = *&v886[8];
              v927.schema.type._object = *&v886[16];
              v927.schema.name = *&v886[24];
              v25 = v886;
              v815 = OUTLINED_FUNCTION_36_6();
              v817 = OUTLINED_FUNCTION_38_6(&v927, v815, v816);
              sub_21B0F6800(v817, v885);
              v768 = v5;
              ByteBuffer.writeAvroRecord(_:)(&v927);
              goto LABEL_691;
            case 4:
              OUTLINED_FUNCTION_67_2(v885);
              OUTLINED_FUNCTION_27_8();
              v3 = v886;
              sub_21B0F6800(&v886[8], v884);
              OUTLINED_FUNCTION_151_0();
              v812._rawValue = sub_21B103CA8(v768);
              OUTLINED_FUNCTION_85_2(v812);
              OUTLINED_FUNCTION_152_0();
              OUTLINED_FUNCTION_78_2(v928);
              ByteBuffer.writeAvroValue(_:)(v928);
              OUTLINED_FUNCTION_150_0();
              sub_21B0F68B8(v886);
              sub_21B0F68B8(v887);
              sub_21AFC54B0(v888);
              sub_21AFC54B0(&v886[8]);
              v813 = OUTLINED_FUNCTION_14_13();
              sub_21AFC54B0(v813);
              sub_21AFC54B0(v888);
              v74 = __OFADD__(v2, v768);
              v768 += v2;
              if (!v74)
              {
                goto LABEL_695;
              }

              goto LABEL_835;
            default:
              OUTLINED_FUNCTION_80_1();
              v769 = OUTLINED_FUNCTION_90_1();
              v768 = v5;
              ByteBuffer.writeAvroPrimitive(_:)(v769, v770, v771, v4);
LABEL_691:
              v818 = OUTLINED_FUNCTION_21_7();
              sub_21B0F68B8(v818);
              sub_21B0F68B8(v887);
              sub_21AFC54B0(v888);
              sub_21AFC54B0((v25 + 8));
LABEL_694:
              v821 = OUTLINED_FUNCTION_14_13();
              sub_21AFC54B0(v821);
              sub_21AFC54B0(v888);
LABEL_695:
              v74 = __OFADD__(v767, v768);
              v14 = (v767 + v768);
              if (!v74)
              {
                goto LABEL_636;
              }

              goto LABEL_815;
          }

        default:
          OUTLINED_FUNCTION_43_5();
          OUTLINED_FUNCTION_18_8();
LABEL_632:
          OUTLINED_FUNCTION_68_2();
          sub_21AFC54B0(v888);
          sub_21AFC54B0((v25 + 8));
LABEL_635:
          sub_21AFC54B0(v888);
LABEL_636:
          v74 = __OFADD__(v27, v14);
          v14 = (v14 + v27);
          v13 = v866;
          if (!v74)
          {
            goto LABEL_657;
          }

          goto LABEL_793;
      }

    default:
      switch(v888[24])
      {
        case 1:
          v785 = sub_21B103B80((2 * *v888) ^ (*v888 >> 31));
          OUTLINED_FUNCTION_22_7(v785);
          if (!v786)
          {
            goto LABEL_654;
          }

          OUTLINED_FUNCTION_16_12();
LABEL_653:
          v14 = v5;
          sub_21B110E14();
LABEL_654:
          sub_21AFC54B0(v888);
          goto LABEL_655;
        case 2:
          v2 = (2 * *v888) ^ (*v888 >> 63);
          v780 = MEMORY[0x277D84F90];
          v887[0] = MEMORY[0x277D84F90];
          if (v2 >= 0x80)
          {
            OUTLINED_FUNCTION_8_22();
            sub_21B105FC8(v800);
            v801 = OUTLINED_FUNCTION_51_1();
            sub_21B105FC8(v801);
            v802 = OUTLINED_FUNCTION_51_1();
            sub_21B105FC8(v802);
            v780 = v887[0];
            do
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v805 = *(v780 + 16);
                OUTLINED_FUNCTION_3_27();
                sub_21B1059A8();
                v780 = v806;
              }

              OUTLINED_FUNCTION_89_1();
              if (v59)
              {
                OUTLINED_FUNCTION_0_31(v803);
                sub_21B1059A8();
                v780 = v807;
              }

              OUTLINED_FUNCTION_11_12();
            }

            while (v804);
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v849 = *(v780 + 16);
            OUTLINED_FUNCTION_3_27();
            sub_21B1059A8();
          }

          OUTLINED_FUNCTION_42_5();
          if (v59)
          {
            OUTLINED_FUNCTION_0_31(v781);
            sub_21B1059A8();
          }

          *(OUTLINED_FUNCTION_23_7() + v2) = v2 & 0x7F;
          goto LABEL_653;
        case 3:
          LODWORD(v887[0]) = *v888;
          v18 = OUTLINED_FUNCTION_70_2();
          v20 = (v782 + 4);
          goto LABEL_647;
        case 4:
          v887[0] = *v888;
          v18 = OUTLINED_FUNCTION_70_2();
          v20 = (v779 + 8);
          goto LABEL_647;
        case 5:
          v4 = *&v888[8];
          if ((*&v888[8] & 0x1000000000000000) != 0)
          {
            sub_21B112514();
          }

          OUTLINED_FUNCTION_44_4();
          OUTLINED_FUNCTION_65_1();
          OUTLINED_FUNCTION_65_1();
          OUTLINED_FUNCTION_65_1();
          v787 = sub_21B103CA8(v14);
          OUTLINED_FUNCTION_20_9(v787);
          if (v788)
          {
            OUTLINED_FUNCTION_19_8();
            sub_21B110E14();
          }

          v2 = sub_21B0FAC54(v3);

          v789 = v863;
          sub_21B112434();
          v790 = sub_21B112414();
          v792 = v791;
          OUTLINED_FUNCTION_129_0();
          v793(v789, v864);
          if (v792 >> 60 == 15)
          {
            v3 = 0;
          }

          else
          {
            v3 = v790;
          }

          if (v792 >> 60 == 15)
          {
            v792 = 0xC000000000000000;
          }

          OUTLINED_FUNCTION_541();
          sub_21B110E94();
          sub_21AFC54B0(v888);
          sub_21AFC54B0(v888);
          sub_21AFC54B0(v888);
          switch(v792 >> 62)
          {
            case 1uLL:
              v828 = OUTLINED_FUNCTION_541();
              sub_21AF99728(v828, v829);
              LODWORD(v796) = HIDWORD(v3) - v3;
              if (__OFSUB__(HIDWORD(v3), v3))
              {
                goto LABEL_836;
              }

              v796 = v796;
LABEL_704:
              v13 = v866;
              v14 = (v2 + v796);
              if (!__OFADD__(v2, v796))
              {
                goto LABEL_657;
              }

              goto LABEL_819;
            case 2uLL:
              v823 = *(v3 + 16);
              v822 = *(v3 + 24);
              v824 = OUTLINED_FUNCTION_541();
              sub_21AF99728(v824, v825);
              v796 = v822 - v823;
              if (!__OFSUB__(v822, v823))
              {
                goto LABEL_704;
              }

              goto LABEL_837;
            case 3uLL:
              v826 = OUTLINED_FUNCTION_541();
              sub_21AF99728(v826, v827);
              v796 = 0;
              goto LABEL_704;
            default:
              v794 = OUTLINED_FUNCTION_541();
              sub_21AF99728(v794, v795);
              v796 = BYTE6(v792);
              goto LABEL_704;
          }

        case 6:
          v797 = (*&v888[8] >> 60) & 3;
          if (v797)
          {
            v2 = *&v888[8] >> 62;
            v4 = HIDWORD(*v888);
            v798 = v888[14];
            if (v797 != 1)
            {
              v811 = 0;
              switch(v2)
              {
                case 1uLL:
                  if (__OFSUB__(*&v888[4], *v888))
                  {
                    goto LABEL_847;
                  }

                  v811 = *&v888[4] - *v888;
LABEL_727:
                  OUTLINED_FUNCTION_65_1();
                  OUTLINED_FUNCTION_65_1();
                  OUTLINED_FUNCTION_65_1();
LABEL_728:
                  v838 = sub_21B103CA8((2 * v811) ^ (v811 >> 63));
                  OUTLINED_FUNCTION_20_9(v838);
                  if (v839)
                  {
                    OUTLINED_FUNCTION_19_8();
                    sub_21B110E14();
                    v840 = *(v3 + 16);
                  }

                  else
                  {
                    v840 = 0;
                  }

                  sub_21B110E94();
                  sub_21AFC54B0(v888);
                  sub_21AFC54B0(v888);
                  switch(v2)
                  {
                    case 0:
                      sub_21AFC54B0(v888);
                      goto LABEL_739;
                    case 1:
                      sub_21AFC54B0(v888);
                      if (__OFSUB__(v4, v15))
                      {
                        goto LABEL_851;
                      }

                      v798 = v4 - v15;
LABEL_739:
                      v13 = v866;
                      v14 = (v840 + v798);
                      if (!__OFADD__(v840, v798))
                      {
                        goto LABEL_657;
                      }

                      goto LABEL_832;
                    case 2:
                      v842 = *(v15 + 16);
                      v841 = *(v15 + 24);
                      sub_21AFC54B0(v888);
                      v74 = __OFSUB__(v841, v842);
                      v798 = v841 - v842;
                      if (!v74)
                      {
                        goto LABEL_739;
                      }

                      goto LABEL_850;
                    case 3:
                      sub_21AFC54B0(v888);
                      v798 = 0;
                      goto LABEL_739;
                    default:
LABEL_854:
                      JUMPOUT(0);
                  }

                case 2uLL:
                  v837 = *(*v888 + 16);
                  v836 = *(*v888 + 24);
                  v811 = v836 - v837;
                  if (!__OFSUB__(v836, v837))
                  {
                    goto LABEL_727;
                  }

                  goto LABEL_849;
                case 3uLL:
                  goto LABEL_728;
                default:
                  v811 = v888[14];
                  goto LABEL_728;
              }
            }

            v799 = 0;
            switch(v2)
            {
              case 1uLL:
                if (__OFSUB__(*&v888[4], *v888))
                {
                  goto LABEL_846;
                }

                v830 = *&v888[16];
                v3 = *&v888[8];
                v799 = *&v888[4] - *v888;
                break;
              case 2uLL:
                v830 = *&v888[16];
                v832 = *(*v888 + 16);
                v831 = *(*v888 + 24);
                v799 = v831 - v832;
                if (__OFSUB__(v831, v832))
                {
                  goto LABEL_848;
                }

                v3 = *&v888[8];
                break;
              case 3uLL:
                goto LABEL_718;
              default:
                v799 = v888[14];
                goto LABEL_718;
            }

            OUTLINED_FUNCTION_65_1();
            OUTLINED_FUNCTION_65_1();
            OUTLINED_FUNCTION_65_1();
            v16 = v830;
LABEL_718:
            if (!__OFSUB__(v799, v16))
            {
              v833 = OUTLINED_FUNCTION_105_1(v799 - v16);
              OUTLINED_FUNCTION_20_9(v833);
              if (v834)
              {
                OUTLINED_FUNCTION_19_8();
                sub_21B110E14();
                v835 = *(v3 + 16);
              }

              else
              {
                v835 = 0;
              }

              sub_21B110E94();
              sub_21AFC54B0(v888);
              sub_21AFC54B0(v888);
              switch(v2)
              {
                case 1:
                  sub_21AFC54B0(v888);
                  if (__OFSUB__(v4, v15))
                  {
                    goto LABEL_853;
                  }

                  v798 = v4 - v15;
LABEL_748:
                  v13 = v866;
                  v14 = (v835 + v798);
                  if (!__OFADD__(v835, v798))
                  {
                    goto LABEL_657;
                  }

                  goto LABEL_833;
                case 2:
                  v844 = *(v15 + 16);
                  v843 = *(v15 + 24);
                  sub_21AFC54B0(v888);
                  v74 = __OFSUB__(v843, v844);
                  v798 = v843 - v844;
                  if (!v74)
                  {
                    goto LABEL_748;
                  }

                  goto LABEL_852;
                case 3:
                  sub_21AFC54B0(v888);
                  v798 = 0;
                  goto LABEL_748;
                default:
                  sub_21AFC54B0(v888);
                  goto LABEL_748;
              }
            }

            goto LABEL_831;
          }

          v808 = *(*v888 + 16);
          OUTLINED_FUNCTION_65_1();
          OUTLINED_FUNCTION_65_1();
          OUTLINED_FUNCTION_65_1();
          v809 = sub_21B103CA8(2 * v808);
          OUTLINED_FUNCTION_29_7(v809);
          if (v810)
          {
            OUTLINED_FUNCTION_26_6();
            sub_21B110E14();
            v3 = *(v2 + 16);
          }

          else
          {
            v3 = 0;
          }

          if (*(v15 + 16))
          {
            OUTLINED_FUNCTION_16_12();
            sub_21B110E14();
          }

          sub_21AFC54B0(v888);
          sub_21AFC54B0(v888);
          sub_21AFC54B0(v888);
          v14 = (v3 + v808);
          if (__OFADD__(v3, v808))
          {
            goto LABEL_830;
          }

          break;
        case 7:
          sub_21AFC54B0(v888);
          sub_21AFC54B0(v888);
          v14 = 0;
          goto LABEL_656;
        default:
          LOBYTE(v887[0]) = v888[0] & 1;
          v18 = OUTLINED_FUNCTION_70_2();
          v20 = (v19 + 1);
LABEL_647:
          v783 = sub_21B1061F0(v18, v20);
          OUTLINED_FUNCTION_22_7(v783);
          if (v784)
          {
            OUTLINED_FUNCTION_16_12();
            v14 = v5;
            sub_21B110E14();
          }

          sub_21AFC54B0(v888);
          sub_21AFC54B0(v888);
          OUTLINED_FUNCTION_30_6();

          goto LABEL_656;
      }

      goto LABEL_656;
  }

LABEL_17:
  v45 = v44;
LABEL_21:
  v46 = v42;
  v873 = v45;
  v47 = __clz(__rbit64(v42)) | (v45 << 6);
  v48 = *(v871 + 56);
  v49 = (*(v871 + 48) + 16 * v47);
  v51 = *v49;
  v50 = v49[1];
  OUTLINED_FUNCTION_60_1();
  memcpy(v883, v52, sizeof(v883));
  if ((v50 & 0x1000000000000000) != 0)
  {
    OUTLINED_FUNCTION_30_2();
    sub_21B112514();
  }

  OUTLINED_FUNCTION_44_4();

  OUTLINED_FUNCTION_57_1();
  v53 = sub_21B103CA8(v35);
  OUTLINED_FUNCTION_22_7(v53);
  if (v54)
  {
    OUTLINED_FUNCTION_16_12();
    sub_21B110E14();
    v4 = *(v30 + 16);
  }

  else
  {
    v4 = 0;
  }

  v874 = (v46 - 1) & v46;

  v55 = v863;
  sub_21B112434();
  OUTLINED_FUNCTION_95_2();
  v56 = sub_21B112414();
  v58 = v57;
  v877 = *v861;
  (v877)(v55, v864);
  OUTLINED_FUNCTION_137_0();
  if (!v60 & v59)
  {
    v61 = 0;
  }

  else
  {
    v61 = v56;
  }

  if (!v60 & v59)
  {
    v62 = 0xC000000000000000;
  }

  else
  {
    v62 = v58;
  }

  OUTLINED_FUNCTION_541();
  sub_21B110E94();

  switch(v62 >> 62)
  {
    case 1uLL:
      v72 = OUTLINED_FUNCTION_541();
      sub_21AF99728(v72, v73);
      LODWORD(v65) = HIDWORD(v61) - v61;
      if (__OFSUB__(HIDWORD(v61), v61))
      {
        goto LABEL_801;
      }

      v65 = v65;
LABEL_40:
      v74 = __OFADD__(v4, v65);
      v75 = v4 + v65;
      if (v74)
      {
        goto LABEL_779;
      }

      break;
    case 2uLL:
      v67 = *(v61 + 16);
      v66 = *(v61 + 24);
      v68 = OUTLINED_FUNCTION_541();
      sub_21AF99728(v68, v69);
      v65 = v66 - v67;
      if (!__OFSUB__(v66, v67))
      {
        goto LABEL_40;
      }

      goto LABEL_800;
    case 3uLL:
      v70 = OUTLINED_FUNCTION_541();
      sub_21AF99728(v70, v71);
      v65 = 0;
      goto LABEL_40;
    default:
      v63 = OUTLINED_FUNCTION_541();
      sub_21AF99728(v63, v64);
      v65 = BYTE6(v62);
      goto LABEL_40;
  }

  v76 = *v883;
  v30 = *&v883[8];
  v41 = *&v883[16];
  v3 = *&v883[24];
  v872 = v75;
  switch(v883[64])
  {
    case 1:
      v857 = *&v883[8];
      v858 = *&v883[16];
      if (!*(*&v883[24] + 16))
      {
        goto LABEL_197;
      }

      sub_21B0FAC54(*&v883[24]);
      OUTLINED_FUNCTION_44_4();
      OUTLINED_FUNCTION_57_1();
      v174._rawValue = sub_21B103CA8(v76);
      OUTLINED_FUNCTION_85_2(v174);
      OUTLINED_FUNCTION_152_0();
      v175 = *(v3 + 16);
      if (!v175)
      {
        goto LABEL_201;
      }

      v41 = 0;
      v875 = *(v3 + 16);
      v876 = (v3 + 32);
      v176 = v175;
      v859 = v33;
      v867 = v3;
      while (2)
      {
        if (v41 >= v176)
        {
          goto LABEL_768;
        }

        OUTLINED_FUNCTION_143_0(72);
        v877 = v41 + 1;
        v30 = v879;
        v5 = v881._object;
        switch(v882)
        {
          case 1:
            v868 = v880;
            v869 = v881._countAndFlagsBits;
            v214 = *(v881._object + 2);
            if (!v214)
            {
              goto LABEL_128;
            }

            v215 = 2 * v214;
            v216 = OUTLINED_FUNCTION_17_12();
            sub_21B0F6800(v216, v217);
            v218 = OUTLINED_FUNCTION_17_12();
            sub_21B0F6800(v218, v219);
            v220 = sub_21B103CA8(v215);
            OUTLINED_FUNCTION_22_7(v220);
            v870 = v50;
            if (v221)
            {
              OUTLINED_FUNCTION_16_12();
              sub_21B110E14();
              v222 = *(v30 + 16);
            }

            else
            {
              v222 = 0;
            }

            v256 = *(v5 + 16);
            if (v256)
            {
              v257 = v5 + 64;
              while (2)
              {
                OUTLINED_FUNCTION_106_1();
                v258 = *v886;
                v30 = *&v886[8];
                v259 = *&v886[16];
                v4 = *&v886[24];
                switch(v886[64])
                {
                  case 1:
                    OUTLINED_FUNCTION_56_1();
                    OUTLINED_FUNCTION_56_1();
                    OUTLINED_FUNCTION_100_1();
                    ByteBuffer.writeAvroArray(_:)(v265);
                    goto LABEL_164;
                  case 2:
                    OUTLINED_FUNCTION_56_1();
                    OUTLINED_FUNCTION_56_1();
                    OUTLINED_FUNCTION_100_1();
                    ByteBuffer.writeAvroMap(_:)(v263);
LABEL_164:
                    v266 = OUTLINED_FUNCTION_21_7();
                    sub_21AFC54B0(v266);

                    goto LABEL_165;
                  case 3:
                    v907.schema.type._countAndFlagsBits = *v886;
                    v907.schema.type._object = *&v886[8];
                    v907.schema.name = *&v886[16];
                    v264 = *(v257 + 16);
                    v907.schema.namespace = *v257;
                    *&v907.schema.fields._rawValue = v264;
                    OUTLINED_FUNCTION_56_1();
                    v262 = ByteBuffer.writeAvroRecord(_:)(&v907);
                    goto LABEL_161;
                  case 4:
                    OUTLINED_FUNCTION_67_2(v908);
                    OUTLINED_FUNCTION_56_1();
                    sub_21B0F685C(v908, v887);
                    v258 = ByteBuffer.writeAvroUnion(_:)(v908);
                    sub_21B0F68B8(v908);
                    goto LABEL_162;
                  default:
                    OUTLINED_FUNCTION_56_1();
                    v260 = OUTLINED_FUNCTION_35_2();
                    v262 = ByteBuffer.writeAvroPrimitive(_:)(v260, v261, v259, v4);
LABEL_161:
                    v258 = v262;
LABEL_162:
                    sub_21AFC54B0(v886);
LABEL_165:
                    v74 = __OFADD__(v222, v258);
                    v222 += v258;
                    if (v74)
                    {
                      goto LABEL_760;
                    }

                    v257 += 72;
                    if (!--v256)
                    {
                      break;
                    }

                    continue;
                }

                break;
              }
            }

            OUTLINED_FUNCTION_4_32();
            sub_21B1059A8();
            OUTLINED_FUNCTION_134(v267);
            if (v59)
            {
              OUTLINED_FUNCTION_0_31(v268);
              sub_21B1059A8();
              v30 = v301;
            }

            v3 = v867;
            *(OUTLINED_FUNCTION_23_7() + v256) = 0;
            v269 = v878;
            sub_21B110E14();

            sub_21AFC54B0(&v879);
            OUTLINED_FUNCTION_30_6();

            v74 = __OFADD__(v222, v269);
            v76 = v222 + v269;
            if (!v74)
            {
              goto LABEL_170;
            }

            goto LABEL_798;
          case 2:
            v868 = v880;
            v869 = v881._countAndFlagsBits;
            v201 = *(v881._object + 2);
            if (!v201)
            {
LABEL_128:
              v223 = OUTLINED_FUNCTION_17_12();
              sub_21B0F6800(v223, v224);
              v225 = OUTLINED_FUNCTION_17_12();
              sub_21B0F6800(v225, v226);
              OUTLINED_FUNCTION_4_32();
              sub_21B1059A8();
              OUTLINED_FUNCTION_3_29(v227);
              if (v59)
              {
                OUTLINED_FUNCTION_0_31(v228);
                sub_21B1059A8();
                v30 = v300;
              }

              OUTLINED_FUNCTION_6_26();
              v76 = v878;
              sub_21B110E14();
              v5 = v76;

              sub_21AFC54B0(&v879);
              OUTLINED_FUNCTION_30_6();

LABEL_131:
              v41 = v877;
              goto LABEL_180;
            }

            v870 = v50;
            v202 = 2 * v201;
            v203 = OUTLINED_FUNCTION_17_12();
            sub_21B0F6800(v203, v204);
            v205 = OUTLINED_FUNCTION_17_12();
            sub_21B0F6800(v205, v206);
            v207 = sub_21B103CA8(v202);
            OUTLINED_FUNCTION_22_7(v207);
            if (v208)
            {
              OUTLINED_FUNCTION_16_12();
              sub_21B110E14();
              v209 = *(v30 + 16);
            }

            else
            {
              v209 = 0;
            }

            v237 = *(v5 + 64);
            v238 = *(v5 + 32);
            OUTLINED_FUNCTION_1_20();
            v241 = v240 & v239;
            v4 = (v242 + 63) >> 6;

            v243 = 0;
            break;
          case 3:
            v910 = v879;
            v911 = v880;
            v912 = v881;
            v210 = *(v76 + 48);
            v913 = *(v76 + 32);
            v914 = v210;
            v211 = OUTLINED_FUNCTION_17_12();
            sub_21B0F6800(v211, v212);
            OUTLINED_FUNCTION_125_0();
            v183 = ByteBuffer.writeAvroRecord(_:)(v213);
            goto LABEL_124;
          case 4:
            v870 = v50;
            v184 = v3;
            OUTLINED_FUNCTION_108_1();
            OUTLINED_FUNCTION_59_1();
            v187 = v186 ^ (v185 >> 63);
            v188 = v187 & 0x7F;
            v189 = OUTLINED_FUNCTION_72_1();
            if (v187 >= 0x80)
            {
              sub_21B0F6800(v189, v190);
              v229 = OUTLINED_FUNCTION_72_1();
              sub_21B0F6800(v229, v230);
              OUTLINED_FUNCTION_82_1();
              OUTLINED_FUNCTION_4_32();
              sub_21B1059A8();
              v193 = v231;
              v232 = *(v231 + 16);
              v5 = v878;
              do
              {
                v233 = *(v193 + 24);
                if (v232 >= v233 >> 1)
                {
                  OUTLINED_FUNCTION_0_31(v233);
                  sub_21B1059A8();
                  v193 = v236;
                }

                v234 = v188 | 0x80;
                v188 = (v187 >> 7) & 0x7F;
                v235 = v187 >> 14;
                v187 >>= 7;
                *(v193 + 16) = v232 + 1;
                *(v193 + v232++ + 32) = v234;
              }

              while (v235);
            }

            else
            {
              sub_21B0F6800(v189, v190);
              v191 = OUTLINED_FUNCTION_72_1();
              sub_21B0F6800(v191, v192);
              OUTLINED_FUNCTION_82_1();
              v193 = MEMORY[0x277D84F90];
              v5 = v878;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v297 = *(v193 + 16);
              OUTLINED_FUNCTION_3_27();
              sub_21B1059A8();
              v193 = v298;
            }

            v195 = *(v193 + 16);
            v194 = *(v193 + 24);
            if (v195 >= v194 >> 1)
            {
              OUTLINED_FUNCTION_0_31(v194);
              sub_21B1059A8();
              v193 = v299;
            }

            *(v193 + 16) = v195 + 1;
            *(v193 + 32 + v195) = v188;
            OUTLINED_FUNCTION_86_2();
            v4 = *(v193 + 16);

            v196 = v887[1];
            v30 = v887[2];
            v197 = v887[3];
            v198 = v887[4];
            switch(LOBYTE(v887[9]))
            {
              case 1:
                v279 = OUTLINED_FUNCTION_14_13();
                sub_21B0F6800(v279, v886);
                OUTLINED_FUNCTION_41_5();
                ByteBuffer.writeAvroArray(_:)(v280);
                goto LABEL_177;
              case 2:
                v274 = OUTLINED_FUNCTION_14_13();
                sub_21B0F6800(v274, v886);
                OUTLINED_FUNCTION_41_5();
                ByteBuffer.writeAvroMap(_:)(v275);
LABEL_177:
                OUTLINED_FUNCTION_68_2();
                sub_21AFC54B0(&v879);

                goto LABEL_178;
              case 3:
                v915.schema.type._countAndFlagsBits = v887[1];
                v915.schema.type._object = v887[2];
                v915.schema.name = *&v887[3];
                v276 = OUTLINED_FUNCTION_10_17();
                v278 = OUTLINED_FUNCTION_38_6(&v915, v276, v277);
                sub_21B0F6800(v278, v886);
                v196 = v5;
                ByteBuffer.writeAvroRecord(_:)(&v915);
                goto LABEL_175;
              case 4:
                OUTLINED_FUNCTION_50_4();
                OUTLINED_FUNCTION_12_15();
                v270 = OUTLINED_FUNCTION_14_13();
                sub_21B0F6800(v270, v885);
                OUTLINED_FUNCTION_104_1();
                v271 = sub_21B103CA8(v196);
                OUTLINED_FUNCTION_22_7(v271);
                if (v272)
                {
                  OUTLINED_FUNCTION_16_12();
                  sub_21B110E14();
                  v273 = *(v30 + 16);
                }

                else
                {
                  v273 = 0;
                }

                v281 = *&v886[8];
                v282 = *&v886[24];
                v30 = *&v886[32];
                switch(v886[72])
                {
                  case 1:
                    v294 = OUTLINED_FUNCTION_31_8();
                    v284 = v878;
                    ByteBuffer.writeAvroArray(_:)(v294);
                    goto LABEL_193;
                  case 2:
                    v289 = OUTLINED_FUNCTION_31_8();
                    v284 = v878;
                    ByteBuffer.writeAvroMap(_:)(v289);
LABEL_193:
                    v295 = OUTLINED_FUNCTION_21_7();
                    sub_21B0F68B8(v295);
                    sub_21B0F68B8(v887);
                    sub_21AFC54B0(&v879);

                    goto LABEL_194;
                  case 3:
                    v916.schema.type._countAndFlagsBits = *&v886[8];
                    v916.schema.type._object = *&v886[16];
                    v916.schema.name = *&v886[24];
                    v188 = v886;
                    v290 = OUTLINED_FUNCTION_36_6();
                    v292 = OUTLINED_FUNCTION_38_6(&v916, v290, v291);
                    sub_21B0F6800(v292, v885);
                    v284 = v878;
                    ByteBuffer.writeAvroRecord(_:)(&v916);
                    goto LABEL_191;
                  case 4:
                    OUTLINED_FUNCTION_67_2(v885);
                    OUTLINED_FUNCTION_27_8();
                    OUTLINED_FUNCTION_110_1();
                    OUTLINED_FUNCTION_151_0();
                    v287._rawValue = sub_21B103CA8(v281);
                    OUTLINED_FUNCTION_93_2(v287);
                    OUTLINED_FUNCTION_84_2();
                    OUTLINED_FUNCTION_78_2(v917);
                    ByteBuffer.writeAvroValue(_:)(v917);
                    OUTLINED_FUNCTION_150_0();
                    sub_21B0F68B8(v886);
                    sub_21B0F68B8(v887);
                    sub_21AFC54B0(&v879);
                    sub_21AFC54B0(v282 + 8);
                    v288 = OUTLINED_FUNCTION_14_13();
                    sub_21AFC54B0(v288);
                    sub_21AFC54B0(&v879);
                    v74 = __OFADD__(v30, v281);
                    v284 = v30 + v281;
                    if (!v74)
                    {
                      goto LABEL_195;
                    }

                    goto LABEL_829;
                  default:
                    OUTLINED_FUNCTION_80_1();
                    v283 = OUTLINED_FUNCTION_90_1();
                    v284 = v878;
                    ByteBuffer.writeAvroPrimitive(_:)(v283, v285, v286, v30);
LABEL_191:
                    v293 = OUTLINED_FUNCTION_21_7();
                    sub_21B0F68B8(v293);
                    sub_21B0F68B8(v887);
                    sub_21AFC54B0(&v879);
                    sub_21AFC54B0(v188 + 8);
LABEL_194:
                    v296 = OUTLINED_FUNCTION_14_13();
                    sub_21AFC54B0(v296);
                    sub_21AFC54B0(&v879);
LABEL_195:
                    v3 = v184;
                    v50 = v870;
                    v41 = v877;
                    v74 = __OFADD__(v273, v284);
                    v196 = v273 + v284;
                    if (v74)
                    {
                      goto LABEL_813;
                    }

                    v5 = v878;
                    break;
                }

                goto LABEL_179;
              default:
                OUTLINED_FUNCTION_43_5();
                v199 = OUTLINED_FUNCTION_35_2();
                v196 = v5;
                ByteBuffer.writeAvroPrimitive(_:)(v199, v200, v197, v198);
LABEL_175:
                OUTLINED_FUNCTION_68_2();
                sub_21AFC54B0(&v879);
                sub_21AFC54B0(v188 + 8);
LABEL_178:
                sub_21AFC54B0(&v879);
                v3 = v184;
                v50 = v870;
                v41 = v877;
LABEL_179:
                v74 = __OFADD__(v4, v196);
                v76 = v4 + v196;
                if (!v74)
                {
                  goto LABEL_180;
                }

                goto LABEL_790;
            }

          default:
            v177 = OUTLINED_FUNCTION_17_12();
            sub_21B0F6800(v177, v178);
            OUTLINED_FUNCTION_84();
            OUTLINED_FUNCTION_125_0();
            v183 = ByteBuffer.writeAvroPrimitive(_:)(v179, v180, v181, v182);
LABEL_124:
            v76 = v183;
            sub_21AFC54B0(&v879);
            goto LABEL_131;
        }

LABEL_139:
        if (v241)
        {
          goto LABEL_144;
        }

        while (1)
        {
          v244 = v243 + 1;
          if (__OFADD__(v243, 1))
          {
            goto LABEL_755;
          }

          if (v244 >= v4)
          {
            break;
          }

          v241 = *(v5 + 64 + 8 * v244);
          ++v243;
          if (v241)
          {
            v243 = v244;
LABEL_144:
            v245 = *(v5 + 56);
            v246 = (*(v5 + 48) + 16 * (__clz(__rbit64(v241)) | (v243 << 6)));
            v247 = *v246;
            v248 = v246[1];
            OUTLINED_FUNCTION_60_1();
            memcpy(v909, v249, 0x41uLL);

            sub_21B0F6800(v909, v887);
            v250._countAndFlagsBits = v247;
            v250._object = v248;
            ByteBuffer.writeAvroString(_:)(v250);
            OUTLINED_FUNCTION_84_2();
            v251 = ByteBuffer.writeAvroValue(_:)(v909);
            sub_21AFC54B0(v909);
            v252 = v30 + v251;
            if (__OFADD__(v30, v251))
            {
              goto LABEL_777;
            }

            v241 &= v241 - 1;
            v74 = __OFADD__(v209, v252);
            v209 += v252;
            if (v74)
            {
              goto LABEL_778;
            }

            goto LABEL_139;
          }
        }

        OUTLINED_FUNCTION_4_32();
        sub_21B1059A8();
        OUTLINED_FUNCTION_3_29(v253);
        if (v59)
        {
          OUTLINED_FUNCTION_0_31(v254);
          sub_21B1059A8();
          v30 = v302;
        }

        v33 = v859;
        v3 = v867;
        OUTLINED_FUNCTION_6_26();
        v255 = v878;
        sub_21B110E14();

        sub_21AFC54B0(&v879);
        OUTLINED_FUNCTION_30_6();

        v74 = __OFADD__(v209, v255);
        v76 = v209 + v255;
        if (v74)
        {
          goto LABEL_799;
        }

LABEL_170:
        v41 = v877;
        v5 = v878;
        v50 = v870;
LABEL_180:
        v74 = __OFADD__(v50, v76);
        v50 += v76;
        if (v74)
        {
          goto LABEL_769;
        }

        if (v41 != v875)
        {
          v176 = *(v3 + 16);
          continue;
        }

        break;
      }

LABEL_201:
      sub_21B103904(0);
      OUTLINED_FUNCTION_118_0();

      sub_21AFC54B0(v883);
      v173 = v50 + v5;
      if (__OFADD__(v50, v5))
      {
        goto LABEL_811;
      }

      goto LABEL_202;
    case 2:
      v857 = *&v883[8];
      v858 = *&v883[16];
      v88 = *(*&v883[24] + 16);
      if (!v88)
      {
LABEL_197:
        OUTLINED_FUNCTION_57_1();
        v887[0] = MEMORY[0x277D84F90];
        OUTLINED_FUNCTION_1_29();
        sub_21B105FC8(v303);
        v30 = *(v887[0] + 16);
        v304 = OUTLINED_FUNCTION_51_1();
        sub_21B10606C(v304, v41);
        v41 = v887[0];
        *(v887[0] + 16) = v30 + 1;
        *(v41 + v30 + 32) = 0;
        v173 = v5;
        sub_21B110E14();

        sub_21AFC54B0(v883);
        sub_21B0FAC54(v41);
        OUTLINED_FUNCTION_19_0();

        goto LABEL_202;
      }

      v89 = 2 * v88;
      OUTLINED_FUNCTION_57_1();
      v90._rawValue = sub_21B103CA8(v89);
      v4 = OUTLINED_FUNCTION_85_2(v90);

      v92 = v3 + 64;
      v91 = *(v3 + 64);
      v93 = *(v3 + 32);
      OUTLINED_FUNCTION_1_20();
      v96 = v95 & v94;
      v98 = (v97 + 63) >> 6;

      v99 = 0;
      v859 = v33;
      v867 = v3;
      v869 = v3 + 64;
      v870 = v98;
      if (!v96)
      {
        goto LABEL_50;
      }

      break;
    case 3:
      v922 = *v883;
      OUTLINED_FUNCTION_57_1();
      v79 = ByteBuffer.writeAvroRecord(_:)(&v922);
      goto LABEL_105;
    case 4:
      OUTLINED_FUNCTION_67_2(v887);
      OUTLINED_FUNCTION_27_8();
      v80 = OUTLINED_FUNCTION_139();
      sub_21B0F6800(v80, v81);
      OUTLINED_FUNCTION_82_1();
      v82 = sub_21B103CA8(v76);
      OUTLINED_FUNCTION_22_7(v82);
      if (v83)
      {
        OUTLINED_FUNCTION_16_12();
        sub_21B110E14();
      }

      sub_21B0FAC54(v30);
      OUTLINED_FUNCTION_153_0();
      v84 = v887[1];
      OUTLINED_FUNCTION_133_0();
      switch(v85)
      {
        case 1:
          v314 = OUTLINED_FUNCTION_14_13();
          sub_21B0F6800(v314, v886);
          OUTLINED_FUNCTION_79_2();
          ByteBuffer.writeAvroArray(_:)(v315);
          goto LABEL_210;
        case 2:
          v309 = OUTLINED_FUNCTION_14_13();
          sub_21B0F6800(v309, v886);
          OUTLINED_FUNCTION_79_2();
          ByteBuffer.writeAvroMap(_:)(v310);
LABEL_210:
          OUTLINED_FUNCTION_68_2();
          sub_21AFC54B0(v883);

          goto LABEL_211;
        case 3:
          v923.schema.type._countAndFlagsBits = v84;
          v923.schema.type._object = v30;
          v923.schema.name._countAndFlagsBits = v3;
          v923.schema.name._object = v4;
          v311 = OUTLINED_FUNCTION_10_17();
          v313 = OUTLINED_FUNCTION_38_6(&v923, v311, v312);
          sub_21B0F6800(v313, v886);
          v84 = v5;
          ByteBuffer.writeAvroRecord(_:)(&v923);
          goto LABEL_208;
        case 4:
          OUTLINED_FUNCTION_50_4();
          OUTLINED_FUNCTION_12_15();
          v3 = v887;
          sub_21B0F6800(&v887[1], v885);
          OUTLINED_FUNCTION_104_1();
          v307._rawValue = sub_21B103CA8(v84);
          OUTLINED_FUNCTION_85_2(v307);
          OUTLINED_FUNCTION_84_2();
          OUTLINED_FUNCTION_83_1(v924, v886);
          ByteBuffer.writeAvroValue(_:)(v924);
          v308 = OUTLINED_FUNCTION_21_7();
          sub_21B0F68B8(v308);
          sub_21B0F68B8(v887);
          sub_21AFC54B0(v883);
          sub_21AFC54B0(&v887[1]);
          sub_21AFC54B0(v883);
          v74 = __OFADD__(v30, v84);
          v84 += v30;
          if (!v74)
          {
            goto LABEL_212;
          }

          goto LABEL_820;
        default:
          OUTLINED_FUNCTION_43_5();
          v86 = OUTLINED_FUNCTION_35_2();
          v84 = v5;
          ByteBuffer.writeAvroPrimitive(_:)(v86, v87, v3, v4);
LABEL_208:
          OUTLINED_FUNCTION_68_2();
          sub_21AFC54B0(v883);
          sub_21AFC54B0(v41 + 8);
LABEL_211:
          sub_21AFC54B0(v883);
LABEL_212:
          v43 = v862;
          v306 = v873;
          v42 = v874;
          v74 = __OFADD__(v50, v84);
          v173 = v50 + v84;
          if (!v74)
          {
            goto LABEL_213;
          }

          goto LABEL_805;
      }

    default:
      OUTLINED_FUNCTION_57_1();
      v77 = OUTLINED_FUNCTION_35_2();
      v79 = ByteBuffer.writeAvroPrimitive(_:)(v77, v78, v41, v3);
LABEL_105:
      v173 = v79;
      sub_21AFC54B0(v883);
      sub_21AFC54B0(v883);
      goto LABEL_202;
  }

  while (2)
  {
    v5 = v99;
LABEL_53:
    OUTLINED_FUNCTION_138(__rbit64(v96));
    v102 = *v100;
    v101 = v100[1];
    OUTLINED_FUNCTION_60_1();
    memcpy(v884, v103, sizeof(v884));
    if ((v101 & 0x1000000000000000) != 0)
    {
      OUTLINED_FUNCTION_34_7();
      sub_21B112514();
    }

    OUTLINED_FUNCTION_44_4();

    v104 = OUTLINED_FUNCTION_33_7();
    sub_21B0F6800(v104, v105);
    v106 = sub_21B103CA8(v92);
    OUTLINED_FUNCTION_22_7(v106);
    v875 = v4;
    if (v107)
    {
      OUTLINED_FUNCTION_16_12();
      sub_21B110E14();
      v876 = *(v30 + 16);
    }

    else
    {
      v876 = 0;
    }

    v96 &= v96 - 1;

    v108 = v863;
    sub_21B112434();
    OUTLINED_FUNCTION_95_2();
    v109 = sub_21B112414();
    v111 = v110;
    (v877)(v108, v864);
    OUTLINED_FUNCTION_137_0();
    if (!v113 & v112)
    {
      v114 = 0;
    }

    else
    {
      v114 = v109;
    }

    if (!v113 & v112)
    {
      v30 = 0xC000000000000000;
    }

    else
    {
      v30 = v111;
    }

    OUTLINED_FUNCTION_107();
    sub_21B110E94();

    v98 = v870;
    switch(v30 >> 62)
    {
      case 1uLL:
        v124 = OUTLINED_FUNCTION_107();
        sub_21AF99728(v124, v125);
        LODWORD(v117) = HIDWORD(v114) - v114;
        if (__OFSUB__(HIDWORD(v114), v114))
        {
          goto LABEL_809;
        }

        v117 = v117;
LABEL_72:
        v41 = (v876 + v117);
        if (__OFADD__(v876, v117))
        {
          goto LABEL_787;
        }

        break;
      case 2uLL:
        v119 = *(v114 + 16);
        v118 = *(v114 + 24);
        v120 = OUTLINED_FUNCTION_107();
        sub_21AF99728(v120, v121);
        v117 = v118 - v119;
        if (!__OFSUB__(v118, v119))
        {
          goto LABEL_72;
        }

        goto LABEL_808;
      case 3uLL:
        v122 = OUTLINED_FUNCTION_107();
        sub_21AF99728(v122, v123);
        v117 = 0;
        goto LABEL_72;
      default:
        v115 = OUTLINED_FUNCTION_107();
        sub_21AF99728(v115, v116);
        v117 = BYTE6(v30);
        goto LABEL_72;
    }

    v127 = *&v884[8];
    v126 = *v884;
    v129 = *&v884[24];
    v128 = *&v884[16];
    switch(v884[64])
    {
      case 1:
        v876 = (v876 + v117);
        if (*(*&v884[24] + 16))
        {
          sub_21B0FAC54(*&v884[24]);
          OUTLINED_FUNCTION_44_4();
          v149 = OUTLINED_FUNCTION_33_7();
          sub_21B0F6800(v149, v150);
          v151._rawValue = sub_21B103CA8(v126);
          v152 = OUTLINED_FUNCTION_93_2(v151);

          v153 = *(v129 + 16);
          if (v153)
          {
            v30 = v129 + 32;
            while (1)
            {
              memcpy(v918, v30, 0x41uLL);
              sub_21B0F6800(v918, v887);
              v154 = ByteBuffer.writeAvroValue(_:)(v918);
              sub_21AFC54B0(v918);
              v74 = __OFADD__(v152, v154);
              v152 += v154;
              if (v74)
              {
                break;
              }

              v30 += 72;
              if (!--v153)
              {
                goto LABEL_88;
              }
            }

LABEL_776:
            __break(1u);
LABEL_777:
            __break(1u);
LABEL_778:
            __break(1u);
LABEL_779:
            __break(1u);
LABEL_780:
            __break(1u);
LABEL_781:
            __break(1u);
LABEL_782:
            __break(1u);
LABEL_783:
            __break(1u);
LABEL_784:
            __break(1u);
            goto LABEL_785;
          }

LABEL_88:
          v155._rawValue = sub_21B103CA8(0);
          v156 = OUTLINED_FUNCTION_93_2(v155);

          sub_21AFC54B0(v884);
          v74 = __OFADD__(v152, v156);
          v126 = v152 + v156;
          if (v74)
          {
            goto LABEL_817;
          }

          v33 = v859;
          v148 = v875;
          v41 = v876;
          v98 = v870;
        }

        else
        {
          v157 = OUTLINED_FUNCTION_33_7();
          sub_21B0F6800(v157, v158);
          OUTLINED_FUNCTION_4_32();
          sub_21B1059A8();
          v887[0] = v159;
          v160 = *(v159 + 16);
          OUTLINED_FUNCTION_7_18();
          sub_21B10606C(v160, v161);
          OUTLINED_FUNCTION_73_2();

          sub_21AFC54B0(v884);
          sub_21B0FAC54(v30);
          OUTLINED_FUNCTION_64_2();

          v33 = v859;
          v148 = v875;
          v41 = v876;
        }

LABEL_100:
        v172 = v41 + v126;
        v3 = v867;
        if (__OFADD__(v41, v126))
        {
          goto LABEL_788;
        }

        v74 = __OFADD__(v148, v172);
        v4 = &v172[v148];
        if (v74)
        {
LABEL_789:
          __break(1u);
LABEL_790:
          __break(1u);
LABEL_791:
          __break(1u);
LABEL_792:
          __break(1u);
LABEL_793:
          __break(1u);
          goto LABEL_794;
        }

        v99 = v5;
        v92 = v869;
        if (v96)
        {
          continue;
        }

        while (1)
        {
LABEL_50:
          v5 = v99 + 1;
          if (__OFADD__(v99, 1))
          {
            goto LABEL_762;
          }

          if (v5 >= v98)
          {
            break;
          }

          v96 = *(v92 + 8 * v5);
          ++v99;
          if (v96)
          {
            goto LABEL_53;
          }
        }

        OUTLINED_FUNCTION_125_0();
        sub_21B103904(v305);
        OUTLINED_FUNCTION_118_0();

        sub_21AFC54B0(v883);
        v74 = __OFADD__(v4, v92);
        v173 = v4 + v92;
        if (v74)
        {
          goto LABEL_810;
        }

LABEL_202:
        v43 = v862;
        v306 = v873;
        v42 = v874;
LABEL_213:
        v316 = v872 + v173;
        if (__OFADD__(v872, v173))
        {
          goto LABEL_780;
        }

        v74 = __OFADD__(v33, v316);
        v33 += v316;
        if (v74)
        {
          goto LABEL_781;
        }

        v44 = v306;
        v35 = v860;
        if (v42)
        {
          goto LABEL_17;
        }

        while (1)
        {
LABEL_18:
          v45 = v44 + 1;
          if (__OFADD__(v44, 1))
          {
            goto LABEL_756;
          }

          if (v45 >= v43)
          {
            break;
          }

          v42 = *(v35 + 8 * v45);
          ++v44;
          if (v42)
          {
            goto LABEL_21;
          }
        }

        v2 = v871;

        v887[0] = MEMORY[0x277D84F90];
        OUTLINED_FUNCTION_1_29();
        sub_21B105FC8(v747);
        v748 = *(v887[0] + 16);
        v749 = OUTLINED_FUNCTION_51_1();
        sub_21B10606C(v749, v41);
        v750 = OUTLINED_FUNCTION_76_2();
        v751 = ByteBuffer.writeBytes(_:)(v750);

        sub_21AFC54B0(v888);
        v74 = __OFADD__(v33, v751);
        v14 = (v33 + v751);
        if (v74)
        {
          goto LABEL_802;
        }

LABEL_656:
        v13 = v866;
LABEL_657:
        v12 = v14 + v865;
        if (__OFADD__(v865, v14))
        {
          goto LABEL_771;
        }

        v11 = v854;
        if (v13 != v856)
        {
          goto LABEL_3;
        }

LABEL_751:
        v850 = *MEMORY[0x277D85DE8];
        OUTLINED_FUNCTION_77();
        return result;
      case 2:
        v143 = OUTLINED_FUNCTION_33_7();
        sub_21B0F6800(v143, v144);
        OUTLINED_FUNCTION_100_1();
        v126 = ByteBuffer.writeAvroMap(_:)(v145);
        sub_21AFC54B0(v884);

        goto LABEL_82;
      case 3:
        v919 = *v884;
        v146 = OUTLINED_FUNCTION_33_7();
        sub_21B0F6800(v146, v147);
        v132 = ByteBuffer.writeAvroRecord(_:)(&v919);
        goto LABEL_81;
      case 4:
        OUTLINED_FUNCTION_67_2(v887);
        OUTLINED_FUNCTION_27_8();
        sub_21B0F6800(v884, v886);
        OUTLINED_FUNCTION_82_1();
        v133 = sub_21B103CA8(v126);
        OUTLINED_FUNCTION_22_7(v133);
        if (v134)
        {
          OUTLINED_FUNCTION_16_12();
          sub_21B110E14();
        }

        v135 = sub_21B0FAC54(v30);

        v136 = v887[1];
        v30 = v887[2];
        v137 = v887[3];
        v138 = v887[4];
        switch(LOBYTE(v887[9]))
        {
          case 1:
            v170 = OUTLINED_FUNCTION_14_13();
            sub_21B0F6800(v170, v886);
            OUTLINED_FUNCTION_100_1();
            ByteBuffer.writeAvroArray(_:)(v171);
            goto LABEL_97;
          case 2:
            v165 = OUTLINED_FUNCTION_14_13();
            sub_21B0F6800(v165, v886);
            OUTLINED_FUNCTION_100_1();
            ByteBuffer.writeAvroMap(_:)(v166);
LABEL_97:
            OUTLINED_FUNCTION_68_2();
            sub_21AFC54B0(v884);

            goto LABEL_98;
          case 3:
            v920.schema.type._countAndFlagsBits = v887[1];
            v920.schema.type._object = v887[2];
            v920.schema.name = *&v887[3];
            v30 = v41;
            v167 = OUTLINED_FUNCTION_10_17();
            v169 = OUTLINED_FUNCTION_38_6(&v920, v167, v168);
            sub_21B0F6800(v169, v886);
            v136 = v878;
            ByteBuffer.writeAvroRecord(_:)(&v920);
            OUTLINED_FUNCTION_68_2();
            sub_21AFC54B0(v884);
            v142 = v41 + 8;
            goto LABEL_95;
          case 4:
            v30 = v41;
            OUTLINED_FUNCTION_50_4();
            OUTLINED_FUNCTION_12_15();
            sub_21B0F6800(&v887[1], v885);
            OUTLINED_FUNCTION_104_1();
            v162._rawValue = sub_21B103CA8(v136);
            v163 = OUTLINED_FUNCTION_93_2(v162);

            OUTLINED_FUNCTION_83_1(v921, v886);
            ByteBuffer.writeAvroValue(_:)(v921);
            v164 = OUTLINED_FUNCTION_21_7();
            sub_21B0F68B8(v164);
            sub_21B0F68B8(v887);
            sub_21AFC54B0(v884);
            sub_21AFC54B0(&v887[1]);
            sub_21AFC54B0(v884);
            v74 = __OFADD__(v163, v136);
            v136 += v163;
            if (v74)
            {
              goto LABEL_826;
            }

            v33 = v859;
            v148 = v875;
            break;
          default:
            v139 = OUTLINED_FUNCTION_14_13();
            sub_21B0F6800(v139, v886);
            v140 = OUTLINED_FUNCTION_35_2();
            v136 = v878;
            ByteBuffer.writeAvroPrimitive(_:)(v140, v141, v137, v138);
            OUTLINED_FUNCTION_68_2();
            sub_21AFC54B0(v884);
            v142 = OUTLINED_FUNCTION_14_13();
LABEL_95:
            sub_21AFC54B0(v142);
LABEL_98:
            sub_21AFC54B0(v884);
            v33 = v859;
            v148 = v875;
            break;
        }

        v74 = __OFADD__(v135, v136);
        v126 = v135 + v136;
        if (!v74)
        {
          goto LABEL_100;
        }

        goto LABEL_812;
      default:
        v130 = OUTLINED_FUNCTION_33_7();
        sub_21B0F6800(v130, v131);
        v132 = ByteBuffer.writeAvroPrimitive(_:)(v126, v127, v128, v129);
LABEL_81:
        v126 = v132;
        sub_21AFC54B0(v884);
        sub_21AFC54B0(v884);
LABEL_82:
        v33 = v859;
        v148 = v875;
        goto LABEL_100;
    }
  }
}

uint64_t ByteBuffer.writeAvroUnion(_:)(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_105_1(*(a1 + 80));
  ByteBuffer.writeBytes(_:)(v3);
  OUTLINED_FUNCTION_84_2();
  memcpy(__dst, (a1 + 8), 0x41uLL);
  v4 = ByteBuffer.writeAvroValue(_:)(__dst);
  v5 = __OFADD__(v1, v4);
  result = v1 + v4;
  if (v5)
  {
    __break(1u);
  }

  return result;
}

Swift::Int __swiftcall ByteBuffer.writeAvroString(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  if ((a1._object & 0x1000000000000000) != 0)
  {
    v4 = sub_21B112514();
  }

  else if ((a1._object & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a1._object) & 0xF;
  }

  else
  {
    v4 = a1._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  v5 = OUTLINED_FUNCTION_107_1(v4);
  ByteBuffer.writeBytes(_:)(v5);
  OUTLINED_FUNCTION_153_0();
  v6._countAndFlagsBits = countAndFlagsBits;
  v6._object = object;
  v7 = ByteBuffer.writeString(_:)(v6);
  v8 = __OFADD__(v1, v7);
  result = v1 + v7;
  if (v8)
  {
    __break(1u);
  }

  return result;
}

Swift::Int sub_21B103904(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_107_1(a1);
  v2 = ByteBuffer.writeBytes(_:)(v1);

  return v2;
}

Swift::Int __swiftcall ByteBuffer.writeAvroBool(_:)(Swift::Bool a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = a1;
  result = sub_21B0FC3F4(&v3);
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

Swift::Int __swiftcall ByteBuffer.writeAvroInt(_:)(Swift::Int32 a1)
{
  v1 = sub_21B103B80((2 * a1) ^ (a1 >> 31));
  v2 = ByteBuffer.writeBytes(_:)(v1);

  return v2;
}

Swift::Int __swiftcall ByteBuffer.writeAvroFloat(_:)(Swift::Float a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = a1;
  result = sub_21B0FC468(&v3);
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

Swift::Int __swiftcall ByteBuffer.writeAvroDouble(_:)(Swift::Double a1)
{
  v3[1] = *MEMORY[0x277D85DE8];
  *v3 = a1;
  result = sub_21B0FC4DC(v3);
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_21B103AA8(Swift::OpaquePointer a1, unint64_t a2, uint64_t a3)
{
  v6 = (a2 >> 60) & 3;
  if (v6)
  {
    if (v6 != 1)
    {
      goto LABEL_9;
    }

    v3 = a3;
    v7 = OUTLINED_FUNCTION_140_0();
    v10 = sub_21B0F7860(v7, v8, v9);
    v4 = OUTLINED_FUNCTION_107_1(v10);
    v11 = ByteBuffer.writeBytes(_:)(v4);

    v12 = OUTLINED_FUNCTION_140_0();
    v14 = ByteBuffer.writeImmutableBuffer(_:)(v12, v13);
    v15 = __OFADD__(v11, v14);
    result = v11 + v14;
    if (!v15)
    {
      return result;
    }

    __break(1u);
  }

  v17 = sub_21B103CA8(2 * *(a1._rawValue + 2));
  ByteBuffer.writeBytes(_:)(v17);
  OUTLINED_FUNCTION_84_2();
  v18 = ByteBuffer.writeBytes(_:)(a1);
  v15 = __OFADD__(v3, v18);
  result = v3 + v18;
  if (!v15)
  {
    return result;
  }

  __break(1u);
LABEL_9:
  v19 = OUTLINED_FUNCTION_140_0();
  v20 = MEMORY[0x21CEE80F0](v19);
  v21 = OUTLINED_FUNCTION_107_1(v20);
  ByteBuffer.writeBytes(_:)(v21);
  OUTLINED_FUNCTION_153_0();
  v22 = OUTLINED_FUNCTION_140_0();
  v24 = ByteBuffer.writeData(_:)(v22, v23);
  v15 = __OFADD__(v4, v24);
  result = v4 + v24;
  if (v15)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21B103B80(unsigned int a1)
{
  LOBYTE(v1) = a1 & 0x7F;
  if (a1 >= 0x80)
  {
    v5 = a1;
    sub_21B1059A8();
    v2 = v6;
    v7 = *(v6 + 16);
    do
    {
      if (v7 >= *(v2 + 24) >> 1)
      {
        sub_21B1059A8();
        v2 = v10;
      }

      v8 = v1 | 0x80;
      v1 = (v5 >> 7) & 0x7F;
      v9 = v5 >> 14;
      v5 >>= 7;
      *(v2 + 16) = v7 + 1;
      *(v2 + v7++ + 32) = v8;
    }

    while (v9);
  }

  else
  {
    v2 = MEMORY[0x277D84F90];
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v11 = *(v2 + 16);
    sub_21B1059A8();
    v2 = v12;
  }

  v3 = *(v2 + 16);
  if (v3 >= *(v2 + 24) >> 1)
  {
    sub_21B1059A8();
    v2 = v13;
  }

  *(v2 + 16) = v3 + 1;
  *(v2 + v3 + 32) = v1;
  return v2;
}

uint64_t sub_21B103CA8(unint64_t a1)
{
  LOBYTE(v1) = a1 & 0x7F;
  if (a1 >= 0x80)
  {
    v5 = a1;
    sub_21B1059A8();
    v2 = v6;
    v7 = *(v6 + 16);
    do
    {
      if (v7 >= *(v2 + 24) >> 1)
      {
        sub_21B1059A8();
        v2 = v10;
      }

      v8 = v1 | 0x80;
      v1 = (v5 >> 7) & 0x7F;
      v9 = v5 >> 14;
      v5 >>= 7;
      *(v2 + 16) = v7 + 1;
      *(v2 + v7++ + 32) = v8;
    }

    while (v9);
  }

  else
  {
    v2 = MEMORY[0x277D84F90];
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v11 = *(v2 + 16);
    sub_21B1059A8();
    v2 = v12;
  }

  v3 = *(v2 + 16);
  if (v3 >= *(v2 + 24) >> 1)
  {
    sub_21B1059A8();
    v2 = v13;
  }

  *(v2 + 16) = v3 + 1;
  *(v2 + v3 + 32) = v1;
  return v2;
}

Swift::Int __swiftcall ByteBuffer.writeAvroBytes(_:)(Swift::OpaquePointer a1)
{
  v3 = sub_21B103CA8(2 * *(a1._rawValue + 2));
  ByteBuffer.writeBytes(_:)(v3);
  OUTLINED_FUNCTION_84_2();
  v4 = ByteBuffer.writeBytes(_:)(a1);
  v5 = __OFADD__(v1, v4);
  result = v1 + v4;
  if (v5)
  {
    __break(1u);
  }

  return result;
}

Swift::Int ByteBuffer.writeAvroBytes(_:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = sub_21B0F7860(a1, a2, a3);
  v4 = OUTLINED_FUNCTION_107_1(v3);
  v5 = ByteBuffer.writeBytes(_:)(v4);

  v6 = OUTLINED_FUNCTION_84();
  v8 = ByteBuffer.writeImmutableBuffer(_:)(v6, v7);
  v9 = __OFADD__(v5, v8);
  result = v5 + v8;
  if (v9)
  {
    __break(1u);
  }

  return result;
}

uint64_t ByteBuffer.writeAvroBytes(_:)(uint64_t a1, unint64_t a2)
{
  v5 = MEMORY[0x21CEE80F0]();
  v6 = OUTLINED_FUNCTION_107_1(v5);
  ByteBuffer.writeBytes(_:)(v6);
  OUTLINED_FUNCTION_153_0();
  v7 = ByteBuffer.writeData(_:)(a1, a2);
  v8 = __OFADD__(v2, v7);
  result = v2 + v7;
  if (v8)
  {
    __break(1u);
  }

  return result;
}

void *sub_21B103EF0()
{
  v30 = *MEMORY[0x277D85DE8];
  v1 = *v0;
  v2 = v0[1];
  ByteBufferView.init(_:)(*v0, v2, v0[2], v26);
  v3 = v27;
  v4 = v28;
  v24 = v27 - v28;
  if (v27 != v28)
  {
    v23 = v0;
    v5 = v26[0];
    v6 = v26[1];
    v7 = v26[2];
    sub_21AF99818(v1, v2);
    v8 = 0;
    v25 = v7;
    v9 = v29;
    v10 = v29;
    v11 = v6 >> 62;
    v12 = v24;
    while (1)
    {
      if (v3 + v8 >= v4)
      {
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
      }

      if (v3 < v7)
      {
        goto LABEL_25;
      }

      switch(v11)
      {
        case 1uLL:
          if (v5 >> 32 < v5)
          {
            goto LABEL_26;
          }

          v18 = sub_21B110C04();
          if (!v18)
          {
            goto LABEL_17;
          }

          v19 = sub_21B110C24();
          if (__OFSUB__(v5, v19))
          {
            goto LABEL_28;
          }

          v18 += v5 - v19;
LABEL_17:
          sub_21B110C14();
          v13 = *(v18 + v3 + v8);
LABEL_18:
          v11 = v6 >> 62;
          v7 = v25;
LABEL_19:
          if ((v13 & 0x80) == 0)
          {
            ByteBufferView.subscript.getter(v3, v3 + v8 + 1, v29);
            v20 = sub_21B0FAF1C(v29);
            sub_21B0FC108(v26);
            v23[2] = v3 + v8 + 1;
            goto LABEL_23;
          }

          ++v8;
          ++v9;
          ++v10;
          if (!(v12 + v8))
          {
            goto LABEL_21;
          }

          break;
        case 2uLL:
          v14 = v4;
          v15 = *(v5 + 16);
          v16 = sub_21B110C04();
          if (!v16)
          {
            goto LABEL_11;
          }

          v17 = sub_21B110C24();
          if (__OFSUB__(v15, v17))
          {
            goto LABEL_27;
          }

          v16 += v15 - v17;
LABEL_11:
          sub_21B110C14();
          v13 = *(v16 + v3 + v8);
          v4 = v14;
          v12 = v24;
          goto LABEL_18;
        case 3uLL:
          *&v29[6] = 0;
          *v29 = 0;
          v13 = v10[v3];
          goto LABEL_19;
        default:
          *v29 = v5;
          *&v29[8] = v6;
          *&v29[12] = WORD2(v6);
          v13 = v9[v3];
          goto LABEL_19;
      }
    }
  }

  sub_21AF99818(v1, v2);
LABEL_21:
  sub_21B0FC108(v26);
  v20 = 0;
LABEL_23:
  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

uint64_t sub_21B10415C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = a1 + 31;
    do
    {
      v4 = *(v3 + v1) & 0x7F | (v2 << 7);
      v2 = *(v3 + v1--) & 0x7F | (v2 << 7);
    }

    while (v1);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

unint64_t sub_21B1041AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    do
    {
      v3 = *(a1 + 31 + v1) & 0x7F | (v2 << 7);
      v2 = v3;
      --v1;
    }

    while (v1);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void *ByteBuffer.readAvroValue(_:)@<X0>(unint64_t a1@<X0>, void *a2@<X8>)
{
  switch(a1 >> 61)
  {
    case 1uLL:
      OUTLINED_FUNCTION_144_0(a1);

      OUTLINED_FUNCTION_130_0();
      ByteBuffer.readAvroArray(_:)();
      goto LABEL_7;
    case 2uLL:
      OUTLINED_FUNCTION_144_0(a1);

      v5 = OUTLINED_FUNCTION_130_0();
      ByteBuffer.readAvroMap(_:)(v5, v6, v7, v8);
LABEL_7:

      goto LABEL_8;
    case 3uLL:
      v9 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      v11[0] = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v11[1] = v9;
      v11[2] = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
      v12 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
      sub_21AFC5454(v11, __src);
      ByteBuffer.readAvroRecord(_:)();
      sub_21B0CAA60(v11);
      return memcpy(a2, __src, 0x41uLL);
    case 4uLL:
      v3 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

      ByteBuffer.readAvroUnion(_:)(v4, __src);
LABEL_8:

      break;
    default:
      ByteBuffer.readAvroPrimitive(_:)(*(a1 + 16), __src);
      break;
  }

  return memcpy(a2, __src, 0x41uLL);
}

uint64_t ByteBuffer.readAvroPrimitive(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  countAndFlagsBits = result;
  v5 = 7;
  object = result;
  switch(result)
  {
    case 1:
      v7 = *(v2 + 16);
      v8 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_39;
      }

      v9 = sub_21B0F8040(*v2, *(v2 + 8), v7, *(v2 + 16));
      object = 0;
      result = 0;
      v5 = 0;
      *(v2 + 16) = v8;
      countAndFlagsBits = v9 != 0;
      goto LABEL_25;
    case 2:
      v22 = sub_21B103EF0();
      if (!v22)
      {
        goto LABEL_24;
      }

      if (v22[2] >= 6uLL)
      {
        goto LABEL_23;
      }

      v23 = sub_21B10415C(v22);
      object = 0;
      result = 0;
      countAndFlagsBits = -(v23 & 1) ^ (v23 >> 1);
      v5 = 1;
      goto LABEL_25;
    case 3:
      v24 = sub_21B103EF0();
      if (!v24)
      {
        goto LABEL_24;
      }

      v25 = OUTLINED_FUNCTION_54_1(v24);
      if (v26)
      {
        goto LABEL_23;
      }

      sub_21B1041AC(v25);
      result = OUTLINED_FUNCTION_49_4();
      countAndFlagsBits = -(v27 & 1) ^ (v27 >> 1);
      v5 = 2;
      goto LABEL_25;
    case 4:
      v10 = *(v2 + 16);
      if (__OFADD__(v10, 4))
      {
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
        return result;
      }

      v12 = *v2;
      v11 = *(v2 + 8);
      v13 = OUTLINED_FUNCTION_30_2();
      sub_21AF99818(v13, v14);
      v15 = OUTLINED_FUNCTION_35_7();
      if ((sub_21B0F816C(v15, v16, v17, v18, v19, v20, v21) & 0x100000000) != 0)
      {
        goto LABEL_24;
      }

      result = OUTLINED_FUNCTION_49_4();
      *(v2 + 16) = v10 + 4;
      countAndFlagsBits = countAndFlagsBits;
      v5 = 3;
      goto LABEL_25;
    case 5:
      v32 = *(v2 + 16);
      if (__OFADD__(v32, 8))
      {
        goto LABEL_40;
      }

      v34 = *v2;
      v33 = *(v2 + 8);
      v35 = OUTLINED_FUNCTION_30_2();
      sub_21AF99818(v35, v36);
      v37 = OUTLINED_FUNCTION_35_7();
      sub_21B0F83E4(v37, v38, v39, v40, v41, v42, v43);
      if (v44)
      {
        goto LABEL_24;
      }

      result = OUTLINED_FUNCTION_49_4();
      *(v2 + 16) = v32 + 8;
      v5 = 4;
      goto LABEL_25;
    case 6:
      v45 = sub_21B103EF0();
      if (!v45)
      {
        goto LABEL_24;
      }

      v46 = OUTLINED_FUNCTION_54_1(v45);
      if (v26)
      {
        goto LABEL_23;
      }

      v47 = sub_21B1041AC(v46);
      v48 = OUTLINED_FUNCTION_47_4(v47);
      v49 = ByteBuffer.readString(length:)(v48);
      if (v49.value._object)
      {
        countAndFlagsBits = v49.value._countAndFlagsBits;
      }

      else
      {
        countAndFlagsBits = 0;
      }

      if (v49.value._object)
      {
        object = v49.value._object;
      }

      else
      {
        object = 0;
      }

      if (v49.value._object)
      {
        result = 0;
      }

      else
      {
        result = 255;
      }

      if (v49.value._object)
      {
        v5 = 5;
      }

      else
      {
        v5 = 0;
      }

      goto LABEL_25;
    case 7:
      v28 = sub_21B103EF0();
      if (!v28)
      {
        goto LABEL_24;
      }

      v29 = OUTLINED_FUNCTION_54_1(v28);
      if (v26)
      {
LABEL_23:
      }

      else
      {
        v30 = sub_21B1041AC(v29);
        v31 = OUTLINED_FUNCTION_47_4(v30);
        if (ByteBuffer.readBytes(length:)(v31))
        {
          result = OUTLINED_FUNCTION_49_4();
          v5 = 6;
          goto LABEL_25;
        }
      }

LABEL_24:
      countAndFlagsBits = 0;
      object = 0;
      v5 = 0;
      result = 255;
LABEL_25:
      *a2 = countAndFlagsBits;
      *(a2 + 8) = object;
      *(a2 + 16) = 0;
      *(a2 + 24) = v5;
      *(a2 + 32) = 0u;
      *(a2 + 48) = 0u;
      *(a2 + 64) = result;
      return result;
    default:
      goto LABEL_25;
  }
}

void ByteBuffer.readAvroArray(_:)()
{
  OUTLINED_FUNCTION_76();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v136 = *MEMORY[0x277D85DE8];
  v9 = sub_21B103EF0();
  if (!v9)
  {
    goto LABEL_69;
  }

  v10 = OUTLINED_FUNCTION_54_1(v9);
  if (v11)
  {
LABEL_68:

LABEL_69:
    v6 = 0;
    v4 = 0;
    v2 = 0;
    v15 = 0;
    v17 = 0uLL;
    v18 = 0uLL;
    v20 = -1;
    goto LABEL_70;
  }

  v12 = sub_21B1041AC(v10);
  if (v12)
  {
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
  }

  v13 = -(v12 & 1);
  v14 = v2 & 0x1FFFFFFFFFFFFFFFLL;
  if (v12 >> 1 == v13)
  {

    v15 = MEMORY[0x277D84F90];
    goto LABEL_6;
  }

  v21 = v13 ^ (v12 >> 1);

  v30 = 0;
  v85 = 0;
  v15 = MEMORY[0x277D84F90];
  v92 = v2 >> 61;
  v93 = v0;
  v94 = v2 & 0x1FFFFFFFFFFFFFFFLL;
  v91 = v21;
  v86 = v4;
  v87 = v8;
  v83 = v2;
  v84 = v6;
LABEL_10:
  if (v30 >= v21)
  {
    goto LABEL_83;
  }

  v31 = __OFADD__(v30, 1);
  v32 = v30 + 1;
  if (v31)
  {
    goto LABEL_84;
  }

  v95 = v32;
  switch(v92)
  {
    case 1:
      OUTLINED_FUNCTION_141_0(isUniquelyReferenced_nonNull_native, v23, v24, v25, v26, v27, v28, v29, v83, v84, v85, v86, v87, v88, v89, *(&v89 + 1), v90, v91, v92, v93, v94);

      v44 = OUTLINED_FUNCTION_132_0();
      ByteBuffer.readAvroArray(_:)(v44);
      v96 = v108;
      v98 = v109;
      v99 = v111;
      v101 = v110;
      v33 = v112;
      goto LABEL_19;
    case 2:
      OUTLINED_FUNCTION_141_0(isUniquelyReferenced_nonNull_native, v23, v24, v25, v26, v27, v28, v29, v83, v84, v85, v86, v87, v88, v89, *(&v89 + 1), v90, v91, v92, v93, v94);

      v39 = OUTLINED_FUNCTION_132_0();
      ByteBuffer.readAvroMap(_:)(v39, v40, v41, v42);
      v96 = v113;
      v98 = v114;
      v99 = v116;
      v101 = v115;
      v33 = v117;
LABEL_19:
      v14 = v94;

      v0 = v93;

      goto LABEL_20;
    case 3:
      v43 = *(v14 + 32);
      v131[0] = *(v14 + 16);
      v131[1] = v43;
      v131[2] = *(v14 + 48);
      v132 = *(v14 + 64);
      sub_21AFC5454(v131, v104);
      ByteBuffer.readAvroRecord(_:)();
      v96 = v118;
      v98 = v119;
      v99 = v121;
      v101 = v120;
      v33 = v122;
      sub_21B0CAA60(v131);
      goto LABEL_20;
    case 4:
      v90 = *(v14 + 16);
      v34 = *v0;
      v35 = *(v0 + 16);
      v36 = *(v0 + 8);
      v37 = v36 >> 62;
      v38 = 0;
      v89 = v34;
      switch(v36 >> 62)
      {
        case 1uLL:
          if (__OFSUB__(DWORD1(v34), v34))
          {
            goto LABEL_94;
          }

          v52 = DWORD1(v34) - v34;
          sub_21AF99818(v34, v36);
          v38 = v52;
          *&v34 = v89;
          break;
        case 2uLL:
          v54 = *(v34 + 16);
          v53 = *(v34 + 24);
          v55 = v53 - v54;
          if (__OFSUB__(v53, v54))
          {
            goto LABEL_95;
          }

          sub_21AF99818(v34, v36);
          *&v34 = v89;
          v38 = v55;
          break;
        case 3uLL:
          break;
        default:
          v38 = BYTE6(v36);
          break;
      }

      if (v38 < v35)
      {
        goto LABEL_89;
      }

      if (v35 < 0)
      {
        goto LABEL_90;
      }

      break;
    default:
      ByteBuffer.readAvroPrimitive(_:)(*(v2 + 16), v106);
      v96 = v106[0];
      v98 = v106[1];
      v99 = v106[3];
      v101 = v106[2];
      v33 = v107;
LABEL_20:
      if (v33 != 255)
      {
        goto LABEL_21;
      }

      goto LABEL_73;
  }

  v56 = 0;
  switch(v37)
  {
    case 1:
      LODWORD(v56) = DWORD1(v34) - v34;
      if (__OFSUB__(DWORD1(v34), v34))
      {
        goto LABEL_96;
      }

      v56 = v56;
LABEL_38:
      v88 = v15;
      if (v56 < v38)
      {
        goto LABEL_91;
      }

      v59 = v35 - v38;
      if (v35 == v38)
      {
        sub_21AF99728(v34, v36);

        goto LABEL_71;
      }

      v60 = v34;
      v102 = v34;
      v97 = v34 >> 32;
      v100 = v38;

      v61 = v100;
      v62 = 0;
      break;
    case 2:
      v57 = *(v34 + 16);
      v58 = *(v34 + 24);
      v31 = __OFSUB__(v58, v57);
      v56 = v58 - v57;
      if (!v31)
      {
        goto LABEL_38;
      }

      goto LABEL_97;
    case 3:
      goto LABEL_38;
    default:
      v56 = BYTE6(v36);
      goto LABEL_38;
  }

  while (2)
  {
    if (v35 + v62 >= v61)
    {
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
      goto LABEL_88;
    }

    switch(v37)
    {
      case 1:
        if (v97 < v102)
        {
          goto LABEL_85;
        }

        v69 = sub_21B110C04();
        if (v69)
        {
          v65 = v69;
          v70 = sub_21B110C24();
          v67 = v102 - v70;
          if (__OFSUB__(v102, v70))
          {
            goto LABEL_87;
          }

LABEL_53:
          v71 = v67 + v65;
        }

        else
        {
LABEL_54:
          v71 = 0;
        }

        sub_21B110C14();
        v68 = *(v71 + v35 + v62);
        v61 = v100;
LABEL_56:
        if (v68 < 0)
        {
          ++v62;
          if (!(v59 + v62))
          {
            sub_21AF99728(v60, v36);

LABEL_71:

            v99 = 0u;
            v101 = 0u;
            v96 = 0u;
            v98 = 0u;
            v8 = v87;
            goto LABEL_81;
          }

          continue;
        }

        v72 = ByteBuffer.count.getter(v60, v36);
        v73 = v35 + v62;
        if (v72 <= v35 + v62)
        {
          goto LABEL_92;
        }

        v74 = v73 + 1;
        v133 = v89;
        v134 = vdupq_n_s64(v35);
        v135 = v73 + 1;
        v75 = sub_21B10626C(v62 + 1, 0);
        v76 = sub_21B105B30(v104, (v75 + 4), v62 + 1) - 1;
        sub_21AF99728(*&v104[0], *(&v104[0] + 1));
        v8 = v87;
        v15 = v88;
        v4 = v86;
        v6 = v84;
        if (v76 != v62)
        {
          goto LABEL_93;
        }

        *(v93 + 16) = v74;
        v2 = v83;
        if (v75[2] >= 0xBuLL)
        {

          goto LABEL_80;
        }

        v77 = sub_21B1041AC(v75);
        if ((v77 & 1) != 0 || (v78 = -(v77 & 1) ^ (v77 >> 1), v78 >= *(v90 + 16)))
        {

          goto LABEL_80;
        }

        v79 = *(v90 + 8 * v78 + 32);

        ByteBuffer.readAvroValue(_:)(&v123, v79);
        if (v127 == 255)
        {
          v99 = v126;
          v101 = v125;
          v96 = v123;
          v98 = v124;

LABEL_73:

          goto LABEL_81;
        }

        __src[0] = v123;
        __src[1] = v124;
        __src[2] = v125;
        __src[3] = v126;
        v130 = v127;

        sub_21B10765C(__src, v80, v78, v128);
        if (v85)
        {

LABEL_80:

          v99 = 0u;
          v101 = 0u;
          v96 = 0u;
          v98 = 0u;
LABEL_81:

          v4 = *(&v96 + 1);
          v6 = v96;
          v18 = v99;
          v15 = *(&v98 + 1);
          v2 = v98;
          v20 = -1;
          v17 = v101;
          goto LABEL_70;
        }

        v85 = 0;

        OUTLINED_FUNCTION_83_1(v104, v128);
        sub_21B0F6800(v104, v103);
        sub_21B0F68B8(v128);
        v96 = v104[0];
        v98 = v104[1];
        v99 = v104[3];
        v101 = v104[2];
        LOBYTE(v33) = v105;
        v0 = v93;
        v14 = v94;
LABEL_21:
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v81 = *(v15 + 16);
          OUTLINED_FUNCTION_3_27();
          sub_21B1058B8();
          v15 = isUniquelyReferenced_nonNull_native;
        }

        v46 = *(v15 + 16);
        v45 = *(v15 + 24);
        v48 = v99;
        v47 = v101;
        v50 = v96;
        v49 = v98;
        if (v46 >= v45 >> 1)
        {
          OUTLINED_FUNCTION_13_10(v45);
          sub_21B1058B8();
          v50 = v96;
          v49 = v98;
          v48 = v99;
          v47 = v101;
          v15 = isUniquelyReferenced_nonNull_native;
        }

        *(v15 + 16) = v46 + 1;
        v51 = v15 + 72 * v46;
        *(v51 + 32) = v50;
        *(v51 + 48) = v49;
        *(v51 + 64) = v47;
        *(v51 + 80) = v48;
        *(v51 + 96) = v33;
        v21 = v91;
        v30 = v95;
        if (v95 != v91)
        {
          goto LABEL_10;
        }

LABEL_6:
        v16 = sub_21B105564();
        if ((v19 & 1) != 0 || v16)
        {

          goto LABEL_68;
        }

        v20 = 1;
LABEL_70:
        *v8 = v6;
        *(v8 + 8) = v4;
        *(v8 + 16) = v2;
        *(v8 + 24) = v15;
        *(v8 + 32) = v17;
        *(v8 + 48) = v18;
        *(v8 + 64) = v20;
        v82 = *MEMORY[0x277D85DE8];
        OUTLINED_FUNCTION_77();
        return;
      case 2:
        v63 = *(v60 + 16);
        v64 = sub_21B110C04();
        if (!v64)
        {
          goto LABEL_54;
        }

        v65 = v64;
        v66 = sub_21B110C24();
        v67 = v63 - v66;
        if (!__OFSUB__(v63, v66))
        {
          goto LABEL_53;
        }

        goto LABEL_86;
      case 3:
        *(v104 + 6) = 0;
        *&v104[0] = 0;
        goto LABEL_49;
      default:
        LOBYTE(v104[0]) = v102;
        BYTE1(v104[0]) = BYTE1(v60);
        BYTE2(v104[0]) = BYTE2(v60);
        BYTE3(v104[0]) = BYTE3(v60);
        BYTE4(v104[0]) = BYTE4(v60);
        BYTE5(v104[0]) = BYTE5(v60);
        BYTE6(v104[0]) = BYTE6(v60);
        BYTE7(v104[0]) = HIBYTE(v60);
        WORD4(v104[0]) = v36;
        BYTE10(v104[0]) = BYTE2(v36);
        BYTE11(v104[0]) = BYTE3(v36);
        BYTE12(v104[0]) = BYTE4(v36);
        BYTE13(v104[0]) = BYTE5(v36);
LABEL_49:
        v68 = *(v104 + v35 + v62);
        goto LABEL_56;
    }
  }
}

uint64_t ByteBuffer.readAvroMap(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_21B103EF0();
  if (!result)
  {
    goto LABEL_30;
  }

  v9 = OUTLINED_FUNCTION_54_1(result);
  if (v10)
  {
    goto LABEL_29;
  }

  v11 = sub_21B1041AC(v9);
  result = sub_21B112334();
  if (v11)
  {
    goto LABEL_34;
  }

  v12 = result;
  v33 = a2;
  v36 = -(v11 & 1) ^ (v11 >> 1);
  v13 = a3 & 0x1FFFFFFFFFFFFFFFLL;

  v14 = 0;
  v34 = a3;
  v35 = a3 >> 61;
  while (1)
  {
    if (v36 == v14)
    {
      result = sub_21B105564();
      if ((v29 & 1) == 0 && !result)
      {
        v30 = 2;
        v32 = a1;
        v31 = v33;
        goto LABEL_31;
      }

LABEL_25:

LABEL_27:

      goto LABEL_29;
    }

    if (__OFADD__(v14, 1))
    {
      __break(1u);
LABEL_34:
      __break(1u);
      return result;
    }

    v15 = sub_21B103EF0();
    if (!v15)
    {
      goto LABEL_25;
    }

    v16 = v15;
    OUTLINED_FUNCTION_54_1(v15);
    if (v10)
    {

      goto LABEL_27;
    }

    v17 = sub_21B1041AC(v16);
    v18 = OUTLINED_FUNCTION_47_4(v17);
    v19 = ByteBuffer.readString(length:)(v18);
    if (!v19.value._object)
    {
      goto LABEL_25;
    }

    switch(v35)
    {
      case 1uLL:
        v26 = *(v13 + 16);
        v27 = *(v13 + 24);
        v28 = *(v13 + 32);

        ByteBuffer.readAvroArray(_:)(v26);

        a3 = v34;
        goto LABEL_17;
      case 2uLL:
        v22 = *(v13 + 16);
        v23 = *(v13 + 24);
        v24 = *(v13 + 32);

        ByteBuffer.readAvroMap(_:)(v22);
        a3 = v34;

        goto LABEL_17;
      case 3uLL:
        v25 = *(v13 + 32);
        v41[0] = *(v13 + 16);
        v41[1] = v25;
        v41[2] = *(v13 + 48);
        v42 = *(v13 + 64);
        sub_21AFC5454(v41, __src);
        ByteBuffer.readAvroRecord(_:)();
        sub_21B0CAA60(v41);
        goto LABEL_18;
      case 4uLL:
        v20 = *(v13 + 16);

        ByteBuffer.readAvroUnion(_:)(v21, __src);
LABEL_17:

LABEL_18:
        memcpy(__dst, __src, sizeof(__dst));
        break;
      default:
        ByteBuffer.readAvroPrimitive(_:)(*(a3 + 16), __dst);
        break;
    }

    if (__dst[64] == 255)
    {
      break;
    }

    v39[0] = *__dst;
    v39[1] = *&__dst[16];
    v39[2] = *&__dst[32];
    v39[3] = *&__dst[48];
    v40 = __dst[64];
    if ((sub_21B0EDF24(v39, a3) & 1) == 0)
    {

      AvroValue.schema.getter();
      sub_21B0CACC8(__dst);

      goto LABEL_30;
    }

    swift_isUniquelyReferenced_nonNull_native();
    __src[0] = v12;
    sub_21B1060B4(v39, v19.value._countAndFlagsBits, v19.value._object);

    v12 = __src[0];
    ++v14;
  }

LABEL_29:

LABEL_30:
  v32 = 0;
  v31 = 0;
  a3 = 0;
  v12 = 0;
  v30 = -1;
LABEL_31:
  *a4 = v32;
  *(a4 + 8) = v31;
  *(a4 + 16) = a3;
  *(a4 + 24) = v12;
  *(a4 + 32) = 0u;
  *(a4 + 48) = 0u;
  *(a4 + 64) = v30;
  return result;
}

void ByteBuffer.readAvroRecord(_:)()
{
  OUTLINED_FUNCTION_76();
  v32 = v0;
  v2 = v1;
  v30 = v3;
  sub_21AFC5454(v1, v37);
  AvroRecord.init(schema:)(&v36, v2);
  rawValue = v2->fields._rawValue;
  v5 = rawValue[2];
  if (v5)
  {
    v6 = rawValue + 6;
    while (1)
    {
      v8 = *(v6 - 2);
      v7 = *(v6 - 1);
      v10 = *v6;
      v6 += 3;
      v9 = v10;
      switch(v10 >> 61)
      {
        case 1uLL:
          OUTLINED_FUNCTION_111_1();

          v16 = OUTLINED_FUNCTION_102_1();
          ByteBuffer.readAvroArray(_:)(v16);
          goto LABEL_9;
        case 2uLL:
          OUTLINED_FUNCTION_111_1();

          v14 = OUTLINED_FUNCTION_102_1();
          ByteBuffer.readAvroMap(_:)(v14);
LABEL_9:

          v8 = v31;
          goto LABEL_10;
        case 3uLL:
          v15 = *((v9 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
          v39[0] = *((v9 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          v39[1] = v15;
          v39[2] = *((v9 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
          v40 = *((v9 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);

          sub_21AFC5454(v39, __src);
          ByteBuffer.readAvroRecord(_:)(__src, v39);
          sub_21B0CAA60(v39);
          break;
        case 4uLL:
          v12 = *((v9 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

          ByteBuffer.readAvroUnion(_:)(v13, __src);
LABEL_10:

          break;
        default:
          v11 = *(v9 + 16);

          ByteBuffer.readAvroPrimitive(_:)(v11, __src);
          break;
      }

      v17 = memcpy(__dst, __src, 0x41uLL);
      if (LOBYTE(__dst[4]) == 255)
      {
        break;
      }

      v37[0] = __dst[0];
      v37[1] = __dst[1];
      v37[2] = __dst[2];
      v37[3] = __dst[3];
      v38 = __dst[4];
      AvroRecord.set(_:forField:)(v37, v8, v7);
      sub_21B0CACC8(__dst);

      if (!--v5)
      {
        goto LABEL_13;
      }
    }

    OUTLINED_FUNCTION_109_1(v17, v18, v19, v20, v21, v22, v23, v24, v30, v31, v32, v33, __src[0], __src[1], __src[2], __src[3]);

    type = __dst[0];
    name = __dst[1];
    v28 = __dst[2];
    v29 = __dst[3];
    v27 = __dst[4];
  }

  else
  {
LABEL_13:
    type = v36.schema.type;
    name = v36.schema.name;
    v27 = 3;
    v28 = v36.schema.namespace;
    v29 = *&v36.schema.fields._rawValue;
  }

  *v30 = type;
  *(v30 + 16) = name;
  *(v30 + 32) = v28;
  *(v30 + 48) = v29;
  *(v30 + 64) = v27;
  OUTLINED_FUNCTION_77();
}

void ByteBuffer.readAvroUnion(_:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21B103EF0();
  if (!v4)
  {
    OUTLINED_FUNCTION_88_2();
    goto LABEL_7;
  }

  v5 = OUTLINED_FUNCTION_54_1(v4);
  if (v6)
  {

LABEL_5:
    OUTLINED_FUNCTION_88_2();
    v11 = 0uLL;
    goto LABEL_7;
  }

  v12 = sub_21B1041AC(v5);
  if (v12)
  {
    goto LABEL_5;
  }

  v13 = -(v12 & 1) ^ (v12 >> 1);
  if (v13 >= *(a1 + 16))
  {
    goto LABEL_5;
  }

  v14 = *(a1 + 8 * v13 + 32);

  ByteBuffer.readAvroValue(_:)(&v22, v14);
  if (v26 == 255)
  {
    v18 = v24;
    v19 = v25;
    v16 = v22;
    v17 = v23;

    v9 = v18;
    v10 = v19;
    v11 = v16;
    v8 = v17;
    v7 = -1;
  }

  else
  {
    __src[0] = v22;
    __src[1] = v23;
    __src[2] = v24;
    __src[3] = v25;
    v30 = v26;

    sub_21B10765C(__src, v15, v13, &v27);

    memcpy(__dst, v28, 0x41uLL);
    sub_21B0F6800(__dst, v20);
    sub_21B0F68B8(&v27);
    v11 = __dst[0];
    v8 = __dst[1];
    v9 = __dst[2];
    v10 = __dst[3];
    v7 = __dst[4];
  }

LABEL_7:
  *a2 = v11;
  *(a2 + 16) = v8;
  *(a2 + 32) = v9;
  *(a2 + 48) = v10;
  *(a2 + 64) = v7;
}

void *sub_21B105564()
{
  result = sub_21B103EF0();
  if (result)
  {
    v1 = OUTLINED_FUNCTION_54_1(result);
    if (v2)
    {

      return 0;
    }

    else
    {
      v3 = sub_21B1041AC(v1);
      return OUTLINED_FUNCTION_47_4(v3);
    }
  }

  return result;
}

uint64_t sub_21B1055A4(unint64_t a1, uint64_t a2)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (*(a2 + 16) <= a1)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v2 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
  swift_unknownObjectRetain_n();
  if (swift_dynamicCast())
  {

    return v2;
  }

LABEL_7:
  sub_21B112904();
  MEMORY[0x21CEE9770](0xD000000000000043, 0x800000021B142CF0);
  MEMORY[0x21CEE9770](0x646C656946, 0xE500000000000000);
  MEMORY[0x21CEE9770](0x756F662074756220, 0xEB0000000020646ELL);
  swift_getObjectType();
  v4 = sub_21B112F84();
  MEMORY[0x21CEE9770](v4);

  result = sub_21B1129D4();
  __break(1u);
  return result;
}

void sub_21B1056F4()
{
  OUTLINED_FUNCTION_16_7();
  if (v3)
  {
    OUTLINED_FUNCTION_6_7();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_11_4();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_10();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 2);
  if (v4 <= v7)
  {
    v8 = *(v0 + 2);
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47AC8, &qword_21B12D8D0);
    v9 = swift_allocObject();
    OUTLINED_FUNCTION_9_22(v9);
    *(v9 + 2) = v7;
    *(v9 + 3) = v10;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[v7] <= v11)
    {
      memmove(v11, v12, v7);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v11, v12, v7);
  }
}

void sub_21B1057C8()
{
  OUTLINED_FUNCTION_16_7();
  if (v3)
  {
    OUTLINED_FUNCTION_6_7();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_11_4();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_10();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 2);
  if (v4 <= v7)
  {
    v8 = *(v0 + 2);
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47AD0, &qword_21B12D8D8);
    v9 = swift_allocObject();
    v10 = _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_123_0(v10);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[24 * v7] <= v11)
    {
      memmove(v11, v12, 24 * v7);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_21B1058B8()
{
  OUTLINED_FUNCTION_16_7();
  if (v3)
  {
    OUTLINED_FUNCTION_6_7();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_11_4();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_10();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 2);
  if (v4 <= v7)
  {
    v8 = *(v0 + 2);
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47AE0, &qword_21B12D8E8);
    v9 = swift_allocObject();
    v10 = _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_123_0(v10);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[72 * v7] <= v11)
    {
      memmove(v11, v12, 72 * v7);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_21B1059A8()
{
  OUTLINED_FUNCTION_16_7();
  if (v3)
  {
    OUTLINED_FUNCTION_6_7();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_11_4();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_10();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 2);
  if (v4 <= v7)
  {
    v8 = *(v0 + 2);
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43780, &qword_21B114238);
    v9 = swift_allocObject();
    OUTLINED_FUNCTION_9_22(v9);
    *(v9 + 2) = v7;
    *(v9 + 3) = v10;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[v7] <= v11)
    {
      memmove(v11, v12, v7);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v11, v12, v7);
  }
}

void *sub_21B105A7C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47AE8, &unk_21B12D8F0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 24);
  return v4;
}

char *sub_21B105B00(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[72 * a2] <= __dst)
  {
    return memmove(__dst, __src, 72 * a2);
  }

  return __src;
}

uint64_t sub_21B105B30(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v27[2] = *MEMORY[0x277D85DE8];
  v5 = v3[3];
  v4 = v3[4];
  v6 = v3[1];
  v26 = *v3;
  v7 = v3[2];
  if (!a2)
  {
    a3 = 0;
    goto LABEL_26;
  }

  if (!a3)
  {
LABEL_26:
    v9 = v3[3];
    goto LABEL_28;
  }

  if (a3 < 0)
  {
    goto LABEL_35;
  }

  v22 = a1;
  v8 = 0;
  v21 = v4 - v5;
  v9 = v3[3];
  v10 = v6 >> 62;
  v24 = a2;
  v25 = a3;
  v23 = v3[2];
  while (2)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
    }

    if (v4 == v9)
    {
      v9 = v4;
      a3 = v21;
      a1 = v22;
      break;
    }

    if (v9 >= v4)
    {
      goto LABEL_30;
    }

    if (v5 < v7)
    {
      goto LABEL_31;
    }

    switch(v10)
    {
      case 1uLL:
        if (v26 >> 32 < v26)
        {
          goto LABEL_32;
        }

        v17 = sub_21B110C04();
        if (!v17)
        {
          goto LABEL_21;
        }

        v18 = sub_21B110C24();
        if (__OFSUB__(v26, v18))
        {
          goto LABEL_34;
        }

        v17 += v26 - v18;
LABEL_21:
        sub_21B110C14();
        v16 = *(v17 + v9);
LABEL_22:
        a2 = v24;
        a3 = v25;
        v10 = v6 >> 62;
LABEL_23:
        *(a2 + v8++) = v16;
        ++v9;
        if (v11 != a3)
        {
          continue;
        }

        a1 = v22;
        break;
      case 2uLL:
        v12 = v5;
        v13 = *(v26 + 16);
        v14 = sub_21B110C04();
        if (!v14)
        {
          goto LABEL_14;
        }

        v15 = sub_21B110C24();
        if (__OFSUB__(v13, v15))
        {
          goto LABEL_33;
        }

        v14 += v13 - v15;
LABEL_14:
        sub_21B110C14();
        v16 = *(v14 + v9);
        v5 = v12;
        v7 = v23;
        goto LABEL_22;
      case 3uLL:
        memset(v27, 0, 14);
        goto LABEL_16;
      default:
        v27[0] = v26;
        LOWORD(v27[1]) = v6;
        BYTE2(v27[1]) = BYTE2(v6);
        BYTE3(v27[1]) = BYTE3(v6);
        BYTE4(v27[1]) = BYTE4(v6);
        BYTE5(v27[1]) = BYTE5(v6);
LABEL_16:
        v16 = *(v27 + v9);
        goto LABEL_23;
    }

    break;
  }

LABEL_28:
  *a1 = v26;
  a1[1] = v6;
  a1[2] = v7;
  a1[3] = v5;
  a1[4] = v4;
  a1[5] = v9;
  v19 = *MEMORY[0x277D85DE8];
  return a3;
}

uint64_t sub_21B105DF4(uint64_t result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_21:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_21;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    v22 = -1 << *(a4 + 32);
    v14 = (63 - v7) >> 6;
    while (1)
    {
      if (v12 >= v10)
      {
        goto LABEL_24;
      }

      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_25;
      }

      if (!v9)
      {
        while (1)
        {
          v16 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v16 >= v14)
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_19;
          }

          v9 = *(v6 + 8 * v16);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v16 = v13;
LABEL_15:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (*(a4 + 48) + 24 * (v17 | (v16 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = v18[2];
      *v11 = v19;
      v11[1] = v20;
      v11[2] = v21;
      if (v15 == v10)
      {
        break;
      }

      v11 += 3;

      v12 = v15;
      v13 = v16;
    }

    v13 = v16;
LABEL_19:
    v7 = v22;
    goto LABEL_21;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_21B105FC8(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
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

uint64_t sub_21B10606C(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

uint64_t sub_21B1060B4(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_21AF98B58(a2, a3);
  if (__OFADD__(*(v8 + 16), (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v9;
  v12 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47AD8, &qword_21B12D8E0);
  if ((sub_21B112994() & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = *v4;
  v14 = sub_21AF98B58(a2, a3);
  if ((v12 & 1) != (v15 & 1))
  {
LABEL_13:
    result = sub_21B112E54();
    __break(1u);
    return result;
  }

  v11 = v14;
LABEL_5:
  if (v12)
  {
    v16 = *(*v4 + 56) + 72 * v11;

    return sub_21B1062D4(a1, v16);
  }

  else
  {
    v18 = OUTLINED_FUNCTION_541();
    sub_21B1105B8(v18, v19, a3, a1, v20);
  }
}

void *sub_21B1061F0(_BYTE *a1, _BYTE *a2)
{
  if (!a1)
  {
    return MEMORY[0x277D84F90];
  }

  v4 = a2 - a1;
  if (a2 == a1)
  {
    return MEMORY[0x277D84F90];
  }

  result = sub_21B10626C(a2 - a1, 0);
  if (a2 > a1)
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      v5 = result;
      memmove(result + 4, a1, v4);
      return v5;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_21B10626C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43780, &qword_21B114238);
  v4 = swift_allocObject();
  OUTLINED_FUNCTION_9_22(v4);
  v4[2] = a1;
  v4[3] = v5;
  return v4;
}

uint64_t OUTLINED_FUNCTION_3_29(uint64_t result)
{
  v1 = *(result + 24);
  v2 = *(result + 16) + 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_6_26()
{
  *(v2 + 16) = v0;
  result = v2 + 32;
  *(v2 + 32 + v1) = 0;
  return result;
}

__n128 OUTLINED_FUNCTION_10_17()
{
  result = *(v0 + 664);
  v2 = *(v0 + 680);
  return result;
}

Swift::Int OUTLINED_FUNCTION_18_8()
{

  return ByteBuffer.writeAvroPrimitive(_:)(v0, v2, v1, v3);
}

uint64_t OUTLINED_FUNCTION_31_8()
{

  return sub_21B0F6800(v0 + 544, v0 + 448);
}

__n128 OUTLINED_FUNCTION_36_6()
{
  result = *(v0 + 40);
  v2 = *(v0 + 56);
  return result;
}

uint64_t OUTLINED_FUNCTION_38_6@<X0>(__n128 *a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q1>)
{
  a1[2] = a2;
  a1[3] = a3;
  return v3 + 8;
}

uint64_t OUTLINED_FUNCTION_43_5()
{

  return sub_21B0F6800(v0 + 632, v0 + 536);
}

void *OUTLINED_FUNCTION_50_4()
{

  return memcpy((v0 + 536), (v1 + 16), 0x58uLL);
}

uint64_t OUTLINED_FUNCTION_56_1()
{

  return sub_21B0F6800(v0 + 536, v0 + 624);
}

uint64_t OUTLINED_FUNCTION_57_1()
{

  return sub_21B0F6800(v0 + 288, v0 + 624);
}

uint64_t OUTLINED_FUNCTION_65_1()
{

  return sub_21B0F6800(v0 + 712, v0 + 624);
}

uint64_t OUTLINED_FUNCTION_66_2()
{

  return sub_21B0F6800(v0 + 432, v0 + 344);
}

void *OUTLINED_FUNCTION_67_2(void *a1)
{

  return memcpy(a1, (v1 + 16), 0x58uLL);
}

uint64_t OUTLINED_FUNCTION_68_2()
{

  return sub_21B0F68B8(v0 + 624);
}

uint64_t OUTLINED_FUNCTION_69_2@<X0>(uint64_t a1@<X8>)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = a1;
  return v2;
}

void OUTLINED_FUNCTION_71_2()
{

  sub_21B1059A8();
}

uint64_t OUTLINED_FUNCTION_73_2()
{
  v3 = *(v0 + 624);
  *(v3 + 16) = v1 + 1;
  *(v3 + 32 + v1) = 0;
  v4 = *(v0 + 208);

  return sub_21B110E14();
}

uint64_t OUTLINED_FUNCTION_74_1()
{

  return sub_21B112414();
}

uint64_t OUTLINED_FUNCTION_76_2()
{
  v2 = *(v0 + 624);
  *(v2 + 16) = v1 + 1;
  *(v2 + v1 + 32) = 0;
  return v2;
}

uint64_t OUTLINED_FUNCTION_77_2@<X0>(uint64_t a1@<X8>)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = a1;
  return v2;
}

void *OUTLINED_FUNCTION_78_2(void *a1)
{

  return memcpy(a1, (v1 + 456), 0x41uLL);
}

uint64_t OUTLINED_FUNCTION_80_1()
{

  return sub_21B0F6800(v0 + 544, v0 + 448);
}

uint64_t OUTLINED_FUNCTION_81_2()
{
  result = v1;
  v3 = v0[8];
  v4 = v0[6];
  v5 = v0[2];
  return result;
}

uint64_t OUTLINED_FUNCTION_82_1()
{

  return sub_21B0F685C(v0 + 624, v0 + 536);
}

void *OUTLINED_FUNCTION_83_1@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{

  return memcpy(a1, (a2 + 8), 0x41uLL);
}

uint64_t OUTLINED_FUNCTION_84_2()
{
}

Swift::Int OUTLINED_FUNCTION_85_2(Swift::OpaquePointer a1)
{

  return ByteBuffer.writeBytes(_:)(a1);
}

uint64_t OUTLINED_FUNCTION_86_2()
{

  return sub_21B110E14();
}

uint64_t OUTLINED_FUNCTION_92_2()
{

  return sub_21B110E94();
}

Swift::Int OUTLINED_FUNCTION_93_2(Swift::OpaquePointer a1)
{
  v3 = *(v1 + 208);

  return ByteBuffer.writeBytes(_:)(a1);
}

uint64_t OUTLINED_FUNCTION_94_2()
{

  return sub_21B0F6800(v0 + 352, v0 + 264);
}

void OUTLINED_FUNCTION_96_2()
{
  v1 = *(v0 + 632);
  v2 = *(v0 + 640);
  v3 = *(v0 + 648);
  v4 = *(v0 + 656);
  v5 = *(v0 + 696);
}

void OUTLINED_FUNCTION_101_1()
{
  v1 = *(v0 + 544);
  v2 = *(v0 + 552);
  v3 = *(v0 + 560);
  v4 = *(v0 + 568);
  v5 = *(v0 + 608);
}

uint64_t OUTLINED_FUNCTION_104_1()
{

  return sub_21B0F685C(v0 + 536, v0 + 448);
}

uint64_t OUTLINED_FUNCTION_105_1@<X0>(uint64_t a1@<X8>)
{

  return sub_21B103CA8((2 * a1) ^ (a1 >> 63));
}

void *OUTLINED_FUNCTION_106_1()
{

  return memcpy((v0 + 536), (v1 - 32), 0x41uLL);
}

uint64_t OUTLINED_FUNCTION_107_1(uint64_t a1)
{
  v2 = (2 * a1) ^ (a1 >> 63);

  return sub_21B103CA8(v2);
}

void *OUTLINED_FUNCTION_108_1()
{

  return memcpy((v0 + 624), (v1 + 16), 0x58uLL);
}

uint64_t OUTLINED_FUNCTION_109_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13, __int128 a14, __int128 a15, __int128 a16)
{
  v18 = v16[6];
  a13 = v16[5];
  a14 = v18;
  v19 = v16[8];
  a15 = v16[7];
  a16 = v19;

  return sub_21AFC5398(&a13);
}

uint64_t OUTLINED_FUNCTION_110_1()
{

  return sub_21B0F6800(v0 + 544, v0 + 360);
}

uint64_t OUTLINED_FUNCTION_111_1()
{
  v2 = *((v0 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v3 = *((v0 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
  v4 = *((v0 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
}

uint64_t OUTLINED_FUNCTION_114_1()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_115_1()
{

  return sub_21B110E14();
}

uint64_t OUTLINED_FUNCTION_116_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  return sub_21B0F6800(v12, va);
}

uint64_t OUTLINED_FUNCTION_117_0()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_118_0()
{
}

uint64_t OUTLINED_FUNCTION_119_0()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_120_0()
{
  *(v0 + 16) = v2;
  result = v0 + 32;
  *(v0 + 32 + v3) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_123_0(uint64_t result)
{
  *(v1 + 16) = v2;
  *(v1 + 24) = 2 * ((result - 32) / v3);
  return result;
}

void OUTLINED_FUNCTION_133_0()
{
  v1 = *(v0 + 640);
  v2 = *(v0 + 648);
  v3 = *(v0 + 656);
  v4 = *(v0 + 696);
}

uint64_t OUTLINED_FUNCTION_134(uint64_t result)
{
  v1 = *(result + 24);
  v2 = *(result + 16) + 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_135_0(uint64_t result)
{
  v1 = *(result + 24);
  v2 = *(result + 16) + 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_141_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v23 = *(v21 + 16);
  v24 = *(v21 + 24);
  v25 = *(a21 + 32);
}

Swift::Int OUTLINED_FUNCTION_142_0()
{
  *(v0._rawValue + 2) = v1;
  *(v0._rawValue + v2 + 32) = 0;

  return ByteBuffer.writeBytes(_:)(v0);
}

void *OUTLINED_FUNCTION_143_0@<X0>(uint64_t a1@<X8>)
{

  return memcpy((v2 + 216), (v1 + v3 * a1), 0x41uLL);
}

uint64_t OUTLINED_FUNCTION_144_0(uint64_t a1)
{
  v2 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v3 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
  v4 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
}

uint64_t OUTLINED_FUNCTION_146_0()
{

  return sub_21B112514();
}

uint64_t OUTLINED_FUNCTION_147_0()
{

  return sub_21B110E14();
}

uint64_t OUTLINED_FUNCTION_148_0()
{

  return sub_21B105FC8(v0);
}

uint64_t OUTLINED_FUNCTION_149_0()
{

  return sub_21B103B80((2 * v0) ^ (v0 >> 31));
}

uint64_t OUTLINED_FUNCTION_150_0()
{

  return sub_21B0F68B8(v0 + 448);
}

uint64_t OUTLINED_FUNCTION_151_0()
{

  return sub_21B0F685C(v0 + 448, v0 + 360);
}

uint64_t OUTLINED_FUNCTION_152_0()
{
}

uint64_t OUTLINED_FUNCTION_153_0()
{
}

unint64_t AvroValue.schema.getter()
{
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  switch(*(v0 + 64))
  {
    case 1:
      OUTLINED_FUNCTION_37_5();
      v19 = swift_allocObject();
      OUTLINED_FUNCTION_20_10(v19, v20, v21, v22, v23, v24, v25, v26, v28, *(&v28 + 1), *v29, *&v29[8], *&v29[16], *&v29[24], *&v29[32], v30, v31, v32[0]);
      sub_21AFA8918(v32, &qword_27CD47AF8, &qword_21B12D980);
      v8 = v1 | 0x2000000000000000;
      break;
    case 2:
      OUTLINED_FUNCTION_37_5();
      v9 = swift_allocObject();
      OUTLINED_FUNCTION_20_10(v9, v10, v11, v12, v13, v14, v15, v16, v28, *(&v28 + 1), *v29, *&v29[8], *&v29[16], *&v29[24], *&v29[32], v30, v31, v32[0]);
      sub_21AFA8918(v32, &qword_27CD47AF0, &qword_21B12D978);
      v8 = v1 | 0x4000000000000000;
      break;
    case 3:
      *&v28 = *v0;
      *(&v28 + 1) = v2;
      *v29 = v3;
      v29[8] = v4;
      *&v29[9] = *(v0 + 25);
      *&v29[24] = *(v0 + 40);
      v17 = swift_allocObject();
      v18 = *v29;
      *(v17 + 16) = v28;
      *(v17 + 32) = v18;
      *(v17 + 48) = *&v29[16];
      *(v17 + 64) = *&v29[32];
      v8 = v17 | 0x6000000000000000;
      sub_21AFC5454(&v28, v32);
      break;
    case 4:
      v6 = *(*v0 + 16);
      OUTLINED_FUNCTION_61();
      v7 = swift_allocObject();
      *(v7 + 16) = v6;
      v8 = v7 | 0x8000000000000000;

      break;
    default:
      v5 = 6;
      switch(*(v0 + 24))
      {
        case 1:
          sub_21AFC54B0(v0);
          v5 = 2;
          break;
        case 2:
          sub_21AFC54B0(v0);
          v5 = 3;
          break;
        case 3:
          sub_21AFC54B0(v0);
          v5 = 4;
          break;
        case 4:
          sub_21AFC54B0(v0);
          v5 = 5;
          break;
        case 5:
          break;
        case 6:
          v5 = 7;
          break;
        case 7:
          sub_21AFC54B0(v0);
          v5 = 0;
          break;
        default:
          sub_21AFC54B0(v0);
          v5 = 1;
          break;
      }

      v8 = swift_allocObject();
      *(v8 + 16) = v5;
      break;
  }

  return v8;
}

void AvroValue.init(_:)(void *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  a1[3] = a5;
  OUTLINED_FUNCTION_31_9(a1);
}

{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  a1[3] = a5;
  OUTLINED_FUNCTION_31_9(a1);
}

uint64_t AvroMap.init(schema:)()
{
  OUTLINED_FUNCTION_15_11();
  sub_21B112334();
  return v0;
}

void __swiftcall AvroRecord.init(schema:)(SwiftAvro::AvroRecord *__return_ptr retstr, SwiftAvro::AvroRecordSchema *schema)
{
  type = schema->type;
  name = schema->name;
  v14 = schema->namespace;
  rawValue = schema->fields._rawValue;
  v15 = rawValue;
  v4 = *(rawValue + 2);
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    sub_21AFC5454(schema, __src);
    sub_21B10BC38(0, v4, 0);
    v7 = (rawValue + 48);
    do
    {
      v8 = *(v7 - 1);
      v9 = *v7;

      sub_21B0EE03C(v9, __src);

      v11 = v5[2];
      v10 = v5[3];
      if (v11 >= v10 >> 1)
      {
        sub_21B10BC38(v10 > 1, v11 + 1, 1);
      }

      v7 += 3;
      v5[2] = v11 + 1;
      memcpy(&v5[9 * v11 + 4], __src, 0x41uLL);
      --v4;
    }

    while (v4);
    sub_21B0CAA60(schema);
  }

  retstr->schema.type = type;
  retstr->schema.name = name;
  retstr->schema.namespace = v14;
  retstr->schema.fields._rawValue = v15;
  retstr->fields._rawValue = v5;
}

void AvroValue.init(_:)(_OWORD *a1@<X8>, _OWORD *a2@<X0>)
{
  v2 = a2[1];
  *a1 = *a2;
  a1[1] = v2;
  v3 = a2[3];
  a1[2] = a2[2];
  a1[3] = v3;
  OUTLINED_FUNCTION_31_9(a1);
}

void *AvroValue.init(_:)@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_35_8();
  v3 = swift_allocObject();
  result = OUTLINED_FUNCTION_41_6(v3);
  *a1 = v1;
  *(a1 + 64) = 4;
  return result;
}

uint64_t objectdestroy_5Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

void static AvroValue.int(_:)(void *a1@<X8>, unsigned int a2@<W0>)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = a2;
  OUTLINED_FUNCTION_0_32(a1);
}

void static AvroValue.float(_:)(void *a1@<X8>, unsigned int a2@<S0>)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = a2;
  OUTLINED_FUNCTION_0_32(a1);
}

uint64_t static AvroValue.string(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
  *(a3 + 24) = 5;
  *(a3 + 64) = 0;
}

uint64_t static AvroValue.bytes(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = a1;
  *(a2 + 24) = 6;
  *(a2 + 64) = 0;
}

void AvroRecord.set(_:forField:)(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = 0;
  v9 = *(v4 + 48);
  v10 = *(v9 + 16);
  v11 = (v9 + 40);
  for (i = -32; ; i -= 72)
  {
    if (v10 == v8)
    {
      sub_21B10BC58();
      OUTLINED_FUNCTION_4_0();
      *v15 = a2;
      v15[1] = a3;
      swift_willThrow();

      return;
    }

    if (*(v11 - 1) == a2 && *v11 == a3)
    {
      break;
    }

    OUTLINED_FUNCTION_26_7();
    if (sub_21B112D04())
    {
      break;
    }

    ++v8;
    v11 += 3;
  }

  v14 = *(v4 + 56);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_21B10BC10(v14);
    v14 = v16;
  }

  if (v8 >= *(v14 + 16))
  {
    __break(1u);
  }

  else
  {
    AvroValue.update(_:)(a1);
    *(v4 + 56) = v14;
  }
}

double static AvroValue.record(_:)@<D0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[1];
  v9 = *a1;
  v10 = v3;
  v4 = a1[3];
  v11 = a1[2];
  v12 = v4;
  sub_21B0F6970(a1, &v8);
  v5 = v10;
  *a2 = v9;
  *(a2 + 16) = v5;
  result = *&v11;
  v7 = v12;
  *(a2 + 32) = v11;
  *(a2 + 48) = v7;
  *(a2 + 64) = 3;
  return result;
}

uint64_t sub_21B10740C(unint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = *(a2 + 16);
  v5 = a2 + 32;
  while (1)
  {
    if (v4 == v3)
    {
      return 0;
    }

    v6 = *(v5 + 8 * v3);

    v7 = _s9SwiftAvro0B6SchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v6, a1);

    if (v7)
    {
      break;
    }

    ++v3;
  }

  return v3;
}

uint64_t sub_21B107494(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  result = 0;
  v5 = a3 - a2;
  if (a2)
  {
    while (1)
    {
      if (v5 == result)
      {
        return 0;
      }

      if (*(a2 + result) == a1)
      {
        return result;
      }

      if (v5 <= result)
      {
        break;
      }

      ++result;
    }

    __break(1u);
  }

  return result;
}

uint64_t AvroMap.set(_:forKey:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 16);
  if (sub_21B0EDF24(a1, v7))
  {

    sub_21B0F6800(a1, v12);
    v8 = *(v3 + 24);
    swift_isUniquelyReferenced_nonNull_native();
    v12[0] = *(v3 + 24);
    sub_21B1060B4(a1, a2, a3);

    *(v3 + 24) = v12[0];
  }

  else
  {

    v10 = AvroValue.schema.getter();
    sub_21B10BCAC();
    OUTLINED_FUNCTION_4_0();
    *v11 = v7;
    v11[1] = v10;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_21B107608@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 64) = a5;
}

void *sub_21B10765C@<X0>(void *__src@<X1>, uint64_t a2@<X0>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (a3 < 0 || *(a2 + 16) <= a3)
  {
    OUTLINED_FUNCTION_47_3();
    sub_21B112904();
    MEMORY[0x21CEE9770](0xD00000000000003CLL, 0x800000021B142E00);
    v9 = *(a2 + 16);

    OUTLINED_FUNCTION_12_7();
    v10 = sub_21B112B84();
    MEMORY[0x21CEE9770](v10);

    MEMORY[0x21CEE9770](0xD000000000000020, 0x800000021B142E40);
    OUTLINED_FUNCTION_12_7();
    v11 = sub_21B112B84();
    MEMORY[0x21CEE9770](v11);

    MEMORY[0x21CEE9770](0xD000000000000026, 0x800000021B142E70);
    sub_21B10CB5C();
    OUTLINED_FUNCTION_4_0();
    *v12 = v13;
    v12[1] = v14;
    swift_willThrow();
    return sub_21AFC54B0(__src);
  }

  else
  {
    *a4 = a2;
    result = memcpy(a4 + 1, __src, 0x41uLL);
    a4[10] = a3;
  }

  return result;
}

uint64_t SchemaMismatchError.expected.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t SchemaMismatchError.actual.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t SchemaMismatchError.description.getter(unint64_t a1, unint64_t a2)
{
  OUTLINED_FUNCTION_47_3();
  sub_21B112904();

  OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_23_8();
  v4 = AvroSchema.description.getter(a1);
  MEMORY[0x21CEE9770](v4);

  MEMORY[0x21CEE9770](0x6F67207475622027, 0xEB00000000272074);
  AvroSchema.description.getter(a2);
  OUTLINED_FUNCTION_94_1();

  MEMORY[0x21CEE9770](39, 0xE100000000000000);
  return v6;
}

uint64_t static SchemaMismatchError.__derived_struct_equals(_:_:)(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if ((_s9SwiftAvro0B6SchemaV23__derived_struct_equalsySbAC_ACtFZ_0(a1, a3) & 1) == 0)
  {
    return 0;
  }

  v3 = OUTLINED_FUNCTION_7();

  return _s9SwiftAvro0B6SchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v3, v4);
}

uint64_t SchemaMismatchError.hash(into:)(uint64_t a1, unint64_t a2)
{
  _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(a1, a2);
  v2 = OUTLINED_FUNCTION_7();

  return _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v2, v3);
}

uint64_t SchemaMismatchError.hashValue.getter()
{
  OUTLINED_FUNCTION_81();
  v1 = OUTLINED_FUNCTION_4_24();
  v9 = OUTLINED_FUNCTION_34_8(v1, v2, v3, v4, v5, v6, v7, v8, v12, v13[0]);
  _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v9, v10);
  _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v13, v0);
  return sub_21B112F14();
}

uint64_t sub_21B107A78()
{
  v1 = *v0;
  v2 = v0[1];
  return SchemaMismatchError.hashValue.getter();
}

uint64_t InvalidFieldError.description.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_47_3();
  sub_21B112904();

  OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_23_8();
  MEMORY[0x21CEE9770](a1, a2);
  MEMORY[0x21CEE9770](39, 0xE100000000000000);
  return v5;
}

uint64_t InternalError.description.getter()
{
  OUTLINED_FUNCTION_81();

  return OUTLINED_FUNCTION_7();
}

uint64_t InternalError.description.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t static InternalError.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return OUTLINED_FUNCTION_11_13();
  }
}

uint64_t sub_21B107C24()
{
  OUTLINED_FUNCTION_81();
  v0 = OUTLINED_FUNCTION_4_24();
  OUTLINED_FUNCTION_34_8(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
  return sub_21B112F14();
}

uint64_t _s9SwiftAvro0B5ValueV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 25) | ((*(a1 + 29) | (*(a1 + 31) << 16)) << 32);
  v8 = *(a1 + 56);
  switch(*(a1 + 64))
  {
    case 1:
      if (*(a2 + 64) != 1)
      {
        return 0;
      }

      v36 = *a2;
      v37 = *(a2 + 8);
      v39 = *(a2 + 16);
      v38 = *(a2 + 24);
      if (v36 != v4 || v3 != v37)
      {
        v41 = *a1;
        if ((sub_21B112D04() & 1) == 0)
        {
          return 0;
        }
      }

      v42 = OUTLINED_FUNCTION_10_18();
      if ((_s9SwiftAvro0B6SchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v42, v43) & 1) == 0)
      {
        return 0;
      }

      v34 = v6 | (v7 << 8);
      v35 = v38;
      goto LABEL_31;
    case 2:
      if (*(a2 + 64) != 2)
      {
        return 0;
      }

      v24 = *a2;
      v25 = *(a2 + 8);
      v27 = *(a2 + 16);
      v26 = *(a2 + 24);
      if (v24 != v4 || v3 != v25)
      {
        v29 = *a1;
        if ((sub_21B112D04() & 1) == 0)
        {
          return 0;
        }
      }

      v30 = OUTLINED_FUNCTION_10_18();
      return (_s9SwiftAvro0B6SchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v30, v31) & 1) != 0 && (sub_21B109594(v6 | (v7 << 8), v26) & 1) != 0;
    case 3:
      if (*(a2 + 64) == 3)
      {
        v32 = *(a2 + 16);
        v45[0] = *a2;
        v45[1] = v32;
        v45[2] = *(a2 + 32);
        v33 = *(a2 + 56);
        *&v45[3] = *(a2 + 48);
        *&v44[0] = v4;
        *(&v44[0] + 1) = v3;
        *&v44[1] = v5;
        BYTE8(v44[1]) = v6;
        *(&v44[1] + 9) = v7;
        HIBYTE(v44[1]) = BYTE6(v7);
        *(&v44[1] + 13) = WORD2(v7);
        v44[2] = *(a1 + 32);
        *&v44[3] = *(a1 + 48);
        if (static AvroRecordSchema.__derived_struct_equals(_:_:)())
        {
          v34 = OUTLINED_FUNCTION_12_7();
LABEL_31:
          if (sub_21B0F02E0(v34, v35))
          {
            return 1;
          }
        }
      }

      return 0;
    case 4:
      v15 = v4[2];
      memcpy(__dst, v4 + 3, 0x41uLL);
      if (*(a2 + 64) != 4)
      {
        return 0;
      }

      v16 = v4[12];
      v17 = *a2;
      OUTLINED_FUNCTION_25_7();
      memcpy(v18, v19, v20);
      sub_21B0F685C(v45, v44);
      v21 = OUTLINED_FUNCTION_52();
      if (_s9SwiftAvro0B11UnionSchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v21, v22))
      {
        memcpy(v44, v45 + 8, 0x41uLL);
        v23 = _s9SwiftAvro0B5ValueV23__derived_struct_equalsySbAC_ACtFZ_0(__dst, v44);
        sub_21B0F68B8(v45);
        if ((v23 & 1) != 0 && v16 == v46)
        {
          return 1;
        }
      }

      else
      {
        sub_21B0F68B8(v45);
      }

      return 0;
    default:
      if (*(a2 + 64))
      {
        return 0;
      }

      v9 = *(a2 + 8);
      v10 = *(a2 + 16);
      v11 = *a2;
      v12 = *(a2 + 24);
      v13 = *a1;

      return _s9SwiftAvro0B9PrimitiveV23__derived_struct_equalsySbAC_ACtFZ_0(v13, v3, v5, v6, v11, v9, v10, v12);
  }
}

void _s9SwiftAvro0B5ValueV4hash4intoys6HasherVz_tF_0(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 25) | ((*(v1 + 29) | (*(v1 + 31) << 16)) << 32);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v9 = *(v1 + 48);
  v8 = *(v1 + 56);
  switch(*(v1 + 64))
  {
    case 1:
      MEMORY[0x21CEEA150](1);
      OUTLINED_FUNCTION_8_23();
      _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
      v19 = OUTLINED_FUNCTION_109();
      _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v19, v20);
      goto LABEL_13;
    case 2:
      MEMORY[0x21CEEA150](2);
      OUTLINED_FUNCTION_8_23();
      _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
      v14 = OUTLINED_FUNCTION_109();
      _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v14, v15);
      OUTLINED_FUNCTION_21_8();

      sub_21B10BF04(v16, v17);
      break;
    case 3:
      v24 = *(v1 + 56);
      MEMORY[0x21CEEA150](3);
      OUTLINED_FUNCTION_8_23();
      _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
      OUTLINED_FUNCTION_109();
      _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
      sub_21B112EE4();
      if (v7)
      {
        _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
      }

      sub_21B0F55EC(a1, v9);
LABEL_13:
      OUTLINED_FUNCTION_21_8();

      sub_21B0F45E4(v21, v22);
      break;
    case 4:
      memcpy(__dst, (*v1 + 16), 0x58uLL);
      MEMORY[0x21CEEA150](4);
      sub_21B0F685C(__dst, v25);
      v12 = OUTLINED_FUNCTION_52();
      sub_21B0F4590(v12, v13);
      memcpy(v25, &__dst[1], 0x41uLL);
      _s9SwiftAvro0B5ValueV4hash4intoys6HasherVz_tF_0(a1);
      MEMORY[0x21CEEA150](__dst[10]);
      sub_21B0F68B8(__dst);
      OUTLINED_FUNCTION_21_8();
      break;
    default:
      MEMORY[0x21CEEA150](0);
      OUTLINED_FUNCTION_8_23();
      OUTLINED_FUNCTION_21_8();

      _s9SwiftAvro0B9PrimitiveV4hash4intoys6HasherVz_tF_0();
      break;
  }
}

uint64_t sub_21B108130(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v7 = *v4;
  v6 = v4[1];
  v8 = sub_21B112EC4();
  v16 = OUTLINED_FUNCTION_22_8(v8, v9, v10, v11, v12, v13, v14, v15, v18, v19);
  a4(v16);
  return sub_21B112F14();
}

uint64_t sub_21B1081C8()
{
  OUTLINED_FUNCTION_4_24();
  _s9SwiftAvro0B5ValueV4hash4intoys6HasherVz_tF_0(v1);
  return sub_21B112F14();
}

uint64_t sub_21B108220(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_21B112EC4();
  a4(v6);
  return sub_21B112F14();
}

uint64_t static AvroPrimitive.string(_:)()
{
  OUTLINED_FUNCTION_81();

  return OUTLINED_FUNCTION_7();
}

uint64_t static AvroPrimitive.bytes(_:)()
{
}

{
  OUTLINED_FUNCTION_15_11();
  sub_21AF99818(v1, v2);
  return v0;
}

{
  OUTLINED_FUNCTION_81();
  sub_21AF99818(v1, v2);
  return v0;
}

void AvroValue.init(_:)(void *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  *a1 = a2;
  a1[1] = a3 | 0x1000000000000000;
  a1[2] = a4;
  OUTLINED_FUNCTION_0_32(a1);
}

void AvroValue.init(_:)(void *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  *a1 = a2;
  a1[1] = a3 | 0x2000000000000000;
  a1[2] = 0;
  OUTLINED_FUNCTION_0_32(a1);
}

uint64_t static AvroValue.bytes(_:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = a2 | 0x1000000000000000;
  result = sub_21AF99818(a1, a2);
  *a4 = a1;
  *(a4 + 8) = v7;
  *(a4 + 16) = a3;
  *(a4 + 24) = 6;
  *(a4 + 64) = 0;
  return result;
}

uint64_t static AvroValue.bytes(_:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a2 | 0x2000000000000000;
  result = sub_21AF99818(a1, a2);
  *a3 = a1;
  *(a3 + 8) = v5;
  *(a3 + 16) = 0;
  *(a3 + 24) = 6;
  *(a3 + 64) = 0;
  return result;
}

void static AvroValue.null.getter(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  OUTLINED_FUNCTION_0_32(a1);
}

uint64_t static AvroValue.union(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_35_8();
  v5 = swift_allocObject();
  OUTLINED_FUNCTION_41_6(v5);
  result = sub_21B0F685C(a1, v7);
  *a2 = v2;
  *(a2 + 64) = 4;
  return result;
}

uint64_t AvroValue.init(BOOLeanLiteral:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = result & 1;
  *(a2 + 24) = 0;
  *(a2 + 64) = 0;
  return result;
}

void AvroValue.init(integerLiteral:)(void *a1@<X8>, uint64_t a2@<X0>)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = a2;
  OUTLINED_FUNCTION_0_32(a1);
}

void AvroValue.init(floatLiteral:)(uint64_t a1@<X8>, double a2@<D0>)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  OUTLINED_FUNCTION_0_32(a1);
}

void AvroValue.init(stringLiteral:)(void *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = 0;
  OUTLINED_FUNCTION_0_32(a1);
}

void AvroValue.init(arrayLiteral:)(void *a1@<X8>, uint64_t a2@<X0>)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = a2;
  OUTLINED_FUNCTION_0_32(a1);
}

uint64_t AvroValue.update(_:)(_BYTE *a1)
{
  v3 = v1;
  memcpy(__dst, v1, sizeof(__dst));
  v5 = AvroValue.schema.getter();
  v6 = sub_21B0EDF24(a1, v5);

  if (v6)
  {
    OUTLINED_FUNCTION_46_4(v87);
    if (v88 >= 4u)
    {
      memcpy(v86, (v87[0] + 16), sizeof(v86));
      memcpy(v85, (v87[0] + 16), sizeof(v85));
      sub_21B10BD00(v87, &v74);
      sub_21B0F685C(v86, &v74);
      AvroUnion.update(_:)(a1);
      if (v2)
      {
        OUTLINED_FUNCTION_44_5(&v74, v11, v12, v13, v14, v15, v16, v17, v40, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85[0]);
        sub_21B0F68B8(&v74);
        return sub_21B10BD38(v87);
      }

      else
      {
        OUTLINED_FUNCTION_46_4(&v54);
        sub_21AFC54B0(&v54);
        OUTLINED_FUNCTION_44_5(&v63, v18, v19, v20, v21, v22, v23, v24, v40, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85[0]);
        OUTLINED_FUNCTION_35_8();
        v25 = swift_allocObject();
        OUTLINED_FUNCTION_44_5((v25 + 16), v26, v27, v28, v29, v30, v31, v32, v41, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85[0]);
        OUTLINED_FUNCTION_44_5(&v74, v33, v34, v35, v36, v37, v38, v39, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85[0]);
        sub_21B0F685C(&v63, &v43);
        sub_21B0F68B8(&v74);
        result = sub_21B10BD38(v87);
        *v3 = v25;
        v3[64] = 4;
      }
    }

    else
    {
      sub_21B1062D4(a1, v1);
      return sub_21B0F6800(a1, v86);
    }
  }

  else
  {
    OUTLINED_FUNCTION_46_4(v89);
    v8 = AvroValue.schema.getter();
    v9 = AvroValue.schema.getter();
    sub_21B10BCAC();
    OUTLINED_FUNCTION_4_0();
    *v10 = v8;
    v10[1] = v9;
    return swift_willThrow();
  }

  return result;
}

void *AvroUnion.update(_:)(_BYTE *a1)
{
  v2 = v1;
  if (a1[64] == 4)
  {
    v4 = *a1;
    OUTLINED_FUNCTION_25_7();
    memcpy(v5, v6, v7);
    v8 = *v2;
    sub_21B0F685C(__src, v23);
    v9 = OUTLINED_FUNCTION_12_7();
    if (_s9SwiftAvro0B11UnionSchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v9, v10))
    {
      memcpy(v23, v2, sizeof(v23));
      sub_21B0F68B8(v23);
      return memcpy(v2, __src, 0x58uLL);
    }

    sub_21B0F68B8(__src);
  }

  v12 = *v2;
  v13 = AvroValue.schema.getter();
  v14 = sub_21B10740C(v13, v12);
  v16 = v15;

  if (v16)
  {
LABEL_10:
    OUTLINED_FUNCTION_61();
    v19 = swift_allocObject();
    *(v19 + 16) = v12;
    v20 = v19 | 0x8000000000000000;

    v21 = AvroValue.schema.getter();
    sub_21B10BCAC();
    OUTLINED_FUNCTION_4_0();
    *v22 = v20;
    v22[1] = v21;
    return swift_willThrow();
  }

  if ((v14 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v14 < *(v12 + 16))
  {
    v17 = *(v12 + 8 * v14 + 32);

    v18 = sub_21B0EDF24(a1, v17);

    if (v18)
    {
      memcpy(__src, v2 + 1, 0x41uLL);
      sub_21B0F6800(a1, v23);
      sub_21AFC54B0(__src);
      result = memcpy(v2 + 1, a1, 0x41uLL);
      v2[10] = v14;
      return result;
    }

    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t AvroValue.description.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v11 = *v8;
  v10 = v8[1];
  v12 = v8[2];
  v13 = *(v9 + 24);
  switch(*(v9 + 64))
  {
    case 1:
      OUTLINED_FUNCTION_43_6(a1, a2, a3, a4, a5, a6, a7, a8, v24, v25, v26);

      v20 = OUTLINED_FUNCTION_19_9();
      AvroArray.description.getter(v20, v21, v22, v13);
      goto LABEL_8;
    case 2:
      OUTLINED_FUNCTION_43_6(a1, a2, a3, a4, a5, a6, a7, a8, v24, v25, v26);

      v17 = OUTLINED_FUNCTION_19_9();
      AvroMap.description.getter(v17, v18, v19);
LABEL_8:
      swift_bridgeObjectRelease_n();

      swift_bridgeObjectRelease_n();
      return OUTLINED_FUNCTION_12_7();
    case 3:
      OUTLINED_FUNCTION_43_6(a1, a2, a3, a4, a5, a6, a7, a8, v11, v10, v12, v13, *(v9 + 32), *(v9 + 40), *(v9 + 48), *(v9 + 56));
      AvroRecord.description.getter();
      goto LABEL_6;
    case 4:
      memcpy(__dst, (v11 + 16), sizeof(__dst));
      sub_21B0F6800(v9, &v24);
      sub_21B0F685C(__dst, &v24);
      AvroUnion.description.getter();
      sub_21B0F68B8(__dst);
      goto LABEL_6;
    default:
      OUTLINED_FUNCTION_43_6(a1, a2, a3, a4, a5, a6, a7, a8, v24, v25, v26);
      v14 = OUTLINED_FUNCTION_19_9();
      AvroPrimitive.description.getter(v14, v15, v16, v13);
LABEL_6:
      sub_21AFC54B0(v9);
      return OUTLINED_FUNCTION_12_7();
  }
}

void AvroRecord.subscript.getter()
{
  OUTLINED_FUNCTION_36_7();
  v3 = 0;
  v4 = *(v0 + 48);
  v5 = *(v4 + 16);
  v6 = (v4 + 40);
  for (i = 32; ; i += 72)
  {
    if (v5 == v3)
    {
      OUTLINED_FUNCTION_18_9();
LABEL_15:
      OUTLINED_FUNCTION_14_14(v20, v21, v22);
      return;
    }

    v8 = *(v6 - 1) == v2 && *v6 == v1;
    if (v8 || (sub_21B112D04() & 1) != 0)
    {
      break;
    }

    ++v3;
    v6 += 3;
  }

  v9 = *(v0 + 56);
  if (v3 < *(v9 + 16))
  {
    memcpy(__dst, (v9 + i), 0x41uLL);
    if (LOBYTE(__dst[8]) == 4)
    {
      memcpy(v42, (__dst[0] + 24), 0x41uLL);
      OUTLINED_FUNCTION_6_27(v10, v11, v12, v13, v14, v15, v16, v17, v23, v25, v26, v28, v29, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42[0], v42[1], v42[2], v42[3], v42[4], v42[5]);
    }

    else
    {
      v27 = *&__dst[3];
      v30 = *&__dst[1];
      v24 = *&__dst[5];
      v18 = __dst;
      v19 = v42;
    }

    sub_21B0F6800(v18, v19);
    v22 = v24;
    v21 = v27;
    v20 = v30;
    goto LABEL_15;
  }

  __break(1u);
}

void static AvroRecord.__derived_struct_equals(_:_:)()
{
  OUTLINED_FUNCTION_81();
  v10 = *v2;
  v11 = v2[1];
  v12 = v2[2];
  v13 = *(v2 + 6);
  v6 = *v3;
  v7 = v3[1];
  v8 = v3[2];
  v9 = *(v3 + 6);
  if (static AvroRecordSchema.__derived_struct_equals(_:_:)())
  {
    v4 = *(v1 + 56);
    v5 = *(v0 + 56);

    sub_21B0F02E0(v4, v5);
  }
}

uint64_t AvroRecord.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = v2[1];
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
  _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
  sub_21B112EE4();
  if (v9)
  {
    OUTLINED_FUNCTION_35_2();
    _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
  }

  sub_21B0F55EC(a1, v10);
  v11 = v2[7];

  return sub_21B0F45E4(a1, v11);
}

uint64_t AvroRecord.hashValue.getter()
{
  v1 = v0;
  OUTLINED_FUNCTION_4_24();
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v6 = v1[3];
  v5 = v1[4];
  v8 = v1[5];
  v7 = v1[6];
  v9 = _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
  OUTLINED_FUNCTION_34_8(v9, v10, v11, v12, v13, v14, v15, v16, v28, v30[0]);
  _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
  if (v8)
  {
    sub_21B112EE4();
    v17 = _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    v17 = sub_21B112EE4();
  }

  v25 = OUTLINED_FUNCTION_22_8(v17, v18, v19, v20, v21, v22, v23, v24, v29, v30[0]);
  sub_21B0F55EC(v25, v26);
  sub_21B0F45E4(v30, v1[7]);
  return sub_21B112F14();
}

uint64_t sub_21B108E90()
{
  sub_21B112EC4();
  AvroRecord.hash(into:)(v1);
  return sub_21B112F14();
}

uint64_t AvroRecord.description.getter()
{
  sub_21B112904();

  OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_23_8();
  v1 = MEMORY[0x21CEE9880](*(v0 + 7), &type metadata for AvroValue);
  MEMORY[0x21CEE9770](v1);

  OUTLINED_FUNCTION_2_30();
  OUTLINED_FUNCTION_29_8();
  v4 = *v0;
  v5 = v0[1];
  v6 = v0[2];
  v7 = *(v0 + 6);
  AvroRecordSchema.description.getter();
  OUTLINED_FUNCTION_94_1();

  OUTLINED_FUNCTION_74_0();
  return v3;
}

uint64_t AvroArray.append(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  if (sub_21B0EDF24(a1, v4))
  {
    sub_21B105FB0();
    v5 = *(*(v1 + 24) + 16);
    sub_21B106054(v5);
    v6 = *(v1 + 24);
    *(v6 + 16) = v5 + 1;
    OUTLINED_FUNCTION_46_4((v6 + 72 * v5 + 32));
    *(v2 + 24) = v6;
    return sub_21B0F6800(a1, v10);
  }

  else
  {

    v8 = AvroValue.schema.getter();
    sub_21B10BCAC();
    OUTLINED_FUNCTION_4_0();
    *v9 = v4;
    v9[1] = v8;
    return swift_willThrow();
  }
}

uint64_t AvroArray.append<A>(contentsOf:)()
{
  v2 = *(v0 + 24);

  sub_21B1125A4();
  if (!v1)
  {
  }

  v3 = *(v0 + 24);

  *(v0 + 24) = v2;
  return swift_willThrow();
}

unint64_t AvroArray.subscript.getter@<X0>(unint64_t result@<X0>, uint64_t a2@<X4>, void *a3@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (*(a2 + 16) <= result)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v4 = a2 + 72 * result;
  v7 = *(v4 + 32);
  v5 = v4 + 32;
  v6 = v7;
  v8 = *(v5 + 64);
  if (v8 == 4)
  {
    memmove(__dst, (v6 + 24), 0x41uLL);
  }

  else
  {
    __dst[0] = v6;
    v9 = *(v5 + 24);
    *&__dst[1] = *(v5 + 8);
    *&__dst[3] = v9;
    *&__dst[5] = *(v5 + 40);
    __dst[7] = *(v5 + 56);
    LOBYTE(__dst[8]) = v8;
  }

  sub_21B0F6800(__dst, &v10);
  return memcpy(a3, __dst, 0x41uLL);
}

uint64_t AvroArray.description.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_47_3();
  sub_21B112904();

  OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_23_8();
  v8 = MEMORY[0x21CEE9880](a4, &type metadata for AvroValue);
  MEMORY[0x21CEE9770](v8);

  OUTLINED_FUNCTION_2_30();
  OUTLINED_FUNCTION_29_8();
  AvroArraySchema.description.getter(a1, a2, a3);
  OUTLINED_FUNCTION_94_1();

  OUTLINED_FUNCTION_74_0();
  return v10;
}

uint64_t sub_21B109388()
{
  OUTLINED_FUNCTION_15_11();

  return v0;
}

void AvroMap.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (*(a6 + 16))
  {
    v7 = sub_21AF98B58(a1, a2);
    if (v8)
    {
      memcpy(__dst, (*(a6 + 56) + 72 * v7), 0x41uLL);
      if (LOBYTE(__dst[8]) == 4)
      {
        memcpy(v41, (__dst[0] + 24), 0x41uLL);
        OUTLINED_FUNCTION_6_27(v9, v10, v11, v12, v13, v14, v15, v16, v22, v24, v25, v27, v28, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41[0], v41[1], v41[2], v41[3], v41[4], v41[5]);
      }

      else
      {
        v26 = *&__dst[3];
        v29 = *&__dst[1];
        v23 = *&__dst[5];
        v17 = __dst;
        v18 = v41;
      }

      sub_21B0F6800(v17, v18);
      v21 = v23;
      v20 = v26;
      v19 = v29;
    }

    else
    {
      OUTLINED_FUNCTION_18_9();
      v19 = 0uLL;
    }
  }

  else
  {
    OUTLINED_FUNCTION_18_9();
  }

  OUTLINED_FUNCTION_14_14(v19, v20, v21);
}

uint64_t sub_21B1094EC(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t (*a9)(uint64_t))
{
  v11 = a1 == a5 && a2 == a6;
  if (!v11 && (sub_21B112D04() & 1) == 0 || (_s9SwiftAvro0B6SchemaV23__derived_struct_equalsySbAC_ACtFZ_0(a3, a7) & 1) == 0)
  {
    return 0;
  }

  v12 = OUTLINED_FUNCTION_7();

  return a9(v12);
}

uint64_t sub_21B109594(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v2 = a2;
  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = *(a1 + 64);
  v406 = a1 + 64;
  v5 = *(a1 + 32);
  OUTLINED_FUNCTION_2_6();
  v9 = v8 & v7;
  v11 = (v10 + 63) >> 6;
  v411 = v11;
  v416 = v6;
  v421 = v2;
  if (v9)
  {
LABEL_4:
    v12 = __clz(__rbit64(v9));
    v426 = (v9 - 1) & v9;
    goto LABEL_10;
  }

  while (2)
  {
    v13 = v3;
    do
    {
      v3 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
LABEL_334:

        goto LABEL_341;
      }

      if (v3 >= v11)
      {
        return 1;
      }

      v14 = *(v406 + 8 * v3);
      ++v13;
    }

    while (!v14);
    v12 = __clz(__rbit64(v14));
    v426 = (v14 - 1) & v14;
LABEL_10:
    v15 = v12 | (v3 << 6);
    v16 = (*(v6 + 48) + 16 * v15);
    v17 = *v16;
    v18 = v16[1];
    memcpy(__dst, (*(v6 + 56) + 72 * v15), 0x41uLL);
    v454 = *&__dst[48];
    v467 = *&__dst[16];
    v431 = *&__dst[32];
    v441 = *__dst;
    v19 = __dst[64];

    sub_21B0F6800(__dst, &v493);
    if (!v18)
    {
      return 1;
    }

    v506 = v441;
    v507 = v467;
    v508 = v431;
    v509 = v454;
    v510 = v19;
    v20 = sub_21AF98B58(v17, v18);
    v22 = v21;

    if ((v22 & 1) == 0)
    {
      goto LABEL_331;
    }

    v23 = memcpy(v505, (*(v2 + 56) + 72 * v20), 0x41uLL);
    v31 = *v505;
    v30 = v505[1];
    v32 = v505[2];
    v33 = v505[4];
    v34 = v505[5];
    v35 = v505[2] >> 61;
    switch(LOBYTE(v505[8]))
    {
      case 1:
        if (v510 != 1)
        {
          goto LABEL_331;
        }

        *&v467 = v505[3];
        v71 = *(&v506 + 1);
        v70 = v506;
        v73 = *(&v507 + 1);
        v72 = v507;
        if (v505[0] != v506 || v505[1] != *(&v506 + 1))
        {
          v23 = sub_21B112D04();
          if ((v23 & 1) == 0)
          {
            goto LABEL_331;
          }
        }

        v75 = v72 >> 61;
        switch(v35)
        {
          case 1:
            v153 = v75 == 1;
            goto LABEL_157;
          case 2:
            v153 = v75 == 2;
LABEL_157:
            v2 = v421;
            if (!v153)
            {
              goto LABEL_331;
            }

            v170 = OUTLINED_FUNCTION_12_16();
            if (!v56 || v171 != v22)
            {
              v170 = OUTLINED_FUNCTION_45_4();
              if ((v170 & 1) == 0)
              {
                goto LABEL_331;
              }
            }

            v179 = OUTLINED_FUNCTION_1_30(v170, v171, v172, v173, v174, v175, v176, v177, v376, v381, v389, v395, v401, v406, v411, v416, v421, v426, v431, *(&v431 + 1), v441, *(&v441 + 1), v454, *(&v454 + 1), v467, *(&v467 + 1), v479, v480, v481, v482, v483, v484, v485, v486, v487, v488, v489, v490, v491[0], v491[1], v491[2], v491[3], v491[4], v491[5], v491[6], v491[7], v491[8], v492, v493, v494, *(&v494 + 1), v495, v496, v497, *(&v497 + 1), v498, v499, v500, v501, *__dst, *&__dst[8], *&__dst[16], *&__dst[24]);
            sub_21B0F6800(v179, v180);

            LOBYTE(v20) = _s9SwiftAvro0B6SchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v33, v32);

            goto LABEL_165;
          case 3:
            if (v75 != 3)
            {
              goto LABEL_331;
            }

            *&v454 = v73;
            v154 = *((v32 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
            v155 = *((v32 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
            v156 = *((v32 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
            v157 = *((v32 & 0x1FFFFFFFFFFFFFFFLL) + 0x28);
            v158 = *((v32 & 0x1FFFFFFFFFFFFFFFLL) + 0x38);
            *&v431 = *((v32 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
            *&v441 = *((v32 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
            v159 = v72 & 0x1FFFFFFFFFFFFFFFLL;
            v160 = *((v72 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
            v161 = *((v72 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
            v163 = *((v72 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
            v162 = *((v72 & 0x1FFFFFFFFFFFFFFFLL) + 0x28);
            v164 = *((v72 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
            v165 = *((v72 & 0x1FFFFFFFFFFFFFFFLL) + 0x38);
            v166 = *(v159 + 64);
            if (v154 != v160 || v155 != v161)
            {
              v154 = sub_21B112D04();
              if ((v154 & 1) == 0)
              {
                goto LABEL_331;
              }
            }

            if (v156 != v163 || v157 != v162)
            {
              OUTLINED_FUNCTION_26_7();
              v154 = sub_21B112D04();
              if ((v154 & 1) == 0)
              {
                goto LABEL_331;
              }
            }

            if (v158)
            {
              if (!v165)
              {
                goto LABEL_331;
              }

              v154 = v431;
              if (v431 != v164 || v158 != v165)
              {
                v154 = sub_21B112D04();
                if ((v154 & 1) == 0)
                {
                  goto LABEL_331;
                }
              }
            }

            else if (v165)
            {
              goto LABEL_331;
            }

            v221 = OUTLINED_FUNCTION_1_30(v154, v155, v160, v71, v26, v27, v28, v29, v376, v381, v389, v395, v401, v406, v411, v416, v421, v426, v431, *(&v431 + 1), v441, *(&v441 + 1), v454, *(&v454 + 1), v467, *(&v467 + 1), v479, v480, v481, v482, v483, v484, v485, v486, v487, v488, v489, v490, v491[0], v491[1], v491[2], v491[3], v491[4], v491[5], v491[6], v491[7], v491[8], v492, v493, v494, *(&v494 + 1), v495, v496, v497, *(&v497 + 1), v498, v499, v500, v501, *__dst, *&__dst[8], *&__dst[16], *&__dst[24]);
            sub_21B0F6800(v221, v222);

            LOBYTE(v20) = sub_21B0F1B10(v446, v166);

            v2 = v421;
            v73 = v459;
            if ((v20 & 1) == 0)
            {
              goto LABEL_341;
            }

LABEL_283:
            sub_21B0F02E0(v470, v73);
            OUTLINED_FUNCTION_40_5();
            sub_21AFC54B0(v309);
            sub_21AFC54B0(v505);
            if ((v20 & 1) == 0)
            {
              return 0;
            }

            break;
          case 4:
            v2 = v421;
            if (v75 != 4)
            {
              goto LABEL_331;
            }

            v20 = *((v32 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
            v131 = *((v72 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
            v132 = OUTLINED_FUNCTION_1_30(v23, v30, v70, v71, v26, v27, v28, v29, v376, v381, v389, v395, v401, v406, v411, v416, v421, v426, v431, *(&v431 + 1), v441, *(&v441 + 1), v454, *(&v454 + 1), v467, *(&v467 + 1), v479, v480, v481, v482, v483, v484, v485, v486, v487, v488, v489, v490, v491[0], v491[1], v491[2], v491[3], v491[4], v491[5], v491[6], v491[7], v491[8], v492, v493, v494, *(&v494 + 1), v495, v496, v497, *(&v497 + 1), v498, v499, v500, v501, *__dst, *&__dst[8], *&__dst[16], *&__dst[24]);
            sub_21B0F6800(v132, v133);

            v134 = OUTLINED_FUNCTION_52();
            LOBYTE(v20) = _s9SwiftAvro0B11UnionSchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v134, v135);
            goto LABEL_165;
          default:
            v2 = v421;
            if (v75)
            {
              goto LABEL_331;
            }

            v76 = 1819047278;
            v77 = *(v32 + 16);
            v78 = 0xE400000000000000;
            v79 = 1819047278;
            switch(v77)
            {
              case 1:
                v78 = 0xE700000000000000;
                v79 = 0x6E61656C6F6F62;
                break;
              case 2:
                v78 = 0xE300000000000000;
                v79 = 7630441;
                break;
              case 3:
                v79 = 1735290732;
                break;
              case 4:
                v78 = 0xE500000000000000;
                v79 = 0x74616F6C66;
                break;
              case 5:
                v78 = 0xE600000000000000;
                v79 = 0x656C62756F64;
                break;
              case 6:
                v78 = 0xE600000000000000;
                v79 = 0x676E69727473;
                break;
              case 7:
                v78 = 0xE500000000000000;
                v79 = 0x7365747962;
                break;
              default:
                break;
            }

            v295 = 0xE400000000000000;
            switch(*(v72 + 16))
            {
              case 1:
                v295 = 0xE700000000000000;
                v76 = 0x6E61656C6F6F62;
                break;
              case 2:
                v295 = 0xE300000000000000;
                v76 = 7630441;
                break;
              case 3:
                v76 = 1735290732;
                break;
              case 4:
                v295 = 0xE500000000000000;
                v76 = 0x74616F6C66;
                break;
              case 5:
                v295 = 0xE600000000000000;
                v76 = 0x656C62756F64;
                break;
              case 6:
                v295 = 0xE600000000000000;
                v76 = 0x676E69727473;
                break;
              case 7:
                v295 = 0xE500000000000000;
                v76 = 0x7365747962;
                break;
              default:
                break;
            }

            if (v79 == v76 && v78 == v295)
            {
              v307 = OUTLINED_FUNCTION_1_30(v79, v30, v76, v71, v26, v27, v28, v29, v376, v381, v389, v395, v401, v406, v411, v416, v421, v426, v431, *(&v431 + 1), v441, *(&v441 + 1), v454, *(&v454 + 1), v467, *(&v467 + 1), v479, v480, v481, v482, v483, v484, v485, v486, v487, v488, v489, v490, v491[0], v491[1], v491[2], v491[3], v491[4], v491[5], v491[6], v491[7], v491[8], v492, v493, v494, *(&v494 + 1), v495, v496, v497, *(&v497 + 1), v498, v499, v500, v501, *__dst, *&__dst[8], *&__dst[16], *&__dst[24]);
              sub_21B0F6800(v307, v308);
            }

            else
            {
              OUTLINED_FUNCTION_26_7();
              v297 = sub_21B112D04();
              LOBYTE(v20) = v297;
              v305 = OUTLINED_FUNCTION_1_30(v297, v298, v299, v300, v301, v302, v303, v304, v376, v381, v389, v395, v401, v406, v411, v416, v421, v426, v431, *(&v431 + 1), v441, *(&v441 + 1), v454, *(&v454 + 1), v467, *(&v467 + 1), v479, v480, v481, v482, v483, v484, v485, v486, v487, v488, v489, v490, v491[0], v491[1], v491[2], v491[3], v491[4], v491[5], v491[6], v491[7], v491[8], v492, v493, v494, *(&v494 + 1), v495, v496, v497, *(&v497 + 1), v498, v499, v500, v501, *__dst, *&__dst[8], *&__dst[16], *&__dst[24]);
              sub_21B0F6800(v305, v306);

LABEL_165:

              if ((v20 & 1) == 0)
              {
                goto LABEL_341;
              }
            }

            goto LABEL_283;
        }

        goto LABEL_327;
      case 2:
        if (v510 != 2)
        {
          goto LABEL_331;
        }

        v52 = v505[3];
        v54 = *(&v506 + 1);
        v53 = v506;
        v55 = v507;
        v56 = v505[0] == v506 && v505[1] == *(&v506 + 1);
        if (!v56)
        {
          v23 = sub_21B112D04();
          if ((v23 & 1) == 0)
          {
            goto LABEL_331;
          }
        }

        v57 = v55 >> 61;
        switch(v35)
        {
          case 1:
            v130 = v57 == 1;
            goto LABEL_124;
          case 2:
            v130 = v57 == 2;
LABEL_124:
            v2 = v421;
            if (!v130)
            {
              goto LABEL_331;
            }

            v140 = OUTLINED_FUNCTION_12_16();
            if (!v56 || v141 != v22)
            {
              v140 = OUTLINED_FUNCTION_45_4();
              if ((v140 & 1) == 0)
              {
                goto LABEL_331;
              }
            }

            v149 = OUTLINED_FUNCTION_1_30(v140, v141, v142, v143, v144, v145, v146, v147, v376, v381, v389, v395, v401, v406, v411, v416, v421, v426, v431, *(&v431 + 1), v441, *(&v441 + 1), v454, *(&v454 + 1), v467, *(&v467 + 1), v479, v480, v481, v482, v483, v484, v485, v486, v487, v488, v489, v490, v491[0], v491[1], v491[2], v491[3], v491[4], v491[5], v491[6], v491[7], v491[8], v492, v493, v494, *(&v494 + 1), v495, v496, v497, *(&v497 + 1), v498, v499, v500, v501, *__dst, *&__dst[8], *&__dst[16], *&__dst[24]);
            sub_21B0F6800(v149, v150);

            LOBYTE(v20) = _s9SwiftAvro0B6SchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v33, v32);

            goto LABEL_132;
          case 3:
            v136 = *((v32 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
            v511 = *((v32 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
            v512 = v136;
            v513 = *((v32 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
            v514 = *((v32 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
            v2 = v421;
            if (v57 != 3)
            {
              goto LABEL_331;
            }

            v137 = *((v55 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
            v515[0] = *((v55 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
            v515[1] = v137;
            v515[2] = *((v55 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
            v516 = *((v55 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
            v138 = OUTLINED_FUNCTION_1_30(v23, v30, v53, v54, v26, v27, v28, v29, v376, v381, v389, v395, v401, v406, v411, v416, v421, v426, v431, *(&v431 + 1), v441, *(&v441 + 1), v454, *(&v454 + 1), v467, *(&v467 + 1), v479, v480, v481, v482, v483, v484, v485, v486, v487, v488, v489, v490, v491[0], v491[1], v491[2], v491[3], v491[4], v491[5], v491[6], v491[7], v491[8], v492, v493, v494, *(&v494 + 1), v495, v496, v497, *(&v497 + 1), v498, v499, v500, v501, *__dst, *&__dst[8], *&__dst[16], *&__dst[24]);
            sub_21B0F6800(v138, v139);
            sub_21AFC5454(v515, __dst);
            LOBYTE(v20) = static AvroRecordSchema.__derived_struct_equals(_:_:)();
            sub_21B0CAA60(v515);
            if ((v20 & 1) == 0)
            {
              goto LABEL_341;
            }

            goto LABEL_133;
          case 4:
            v2 = v421;
            if (v57 != 4)
            {
              goto LABEL_331;
            }

            v20 = *((v32 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
            v125 = *((v55 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
            v126 = OUTLINED_FUNCTION_1_30(v23, v30, v53, v54, v26, v27, v28, v29, v376, v381, v389, v395, v401, v406, v411, v416, v421, v426, v431, *(&v431 + 1), v441, *(&v441 + 1), v454, *(&v454 + 1), v467, *(&v467 + 1), v479, v480, v481, v482, v483, v484, v485, v486, v487, v488, v489, v490, v491[0], v491[1], v491[2], v491[3], v491[4], v491[5], v491[6], v491[7], v491[8], v492, v493, v494, *(&v494 + 1), v495, v496, v497, *(&v497 + 1), v498, v499, v500, v501, *__dst, *&__dst[8], *&__dst[16], *&__dst[24]);
            sub_21B0F6800(v126, v127);

            v128 = OUTLINED_FUNCTION_52();
            LOBYTE(v20) = _s9SwiftAvro0B11UnionSchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v128, v129);
            goto LABEL_132;
          default:
            v2 = v421;
            if (v57)
            {
              goto LABEL_331;
            }

            v58 = 1819047278;
            v59 = *(v32 + 16);
            v60 = 0xE400000000000000;
            switch(v59)
            {
              case 1:
                v60 = 0xE700000000000000;
                v58 = 0x6E61656C6F6F62;
                break;
              case 2:
                v60 = 0xE300000000000000;
                v58 = 7630441;
                break;
              case 3:
                v58 = 1735290732;
                break;
              case 4:
                v60 = 0xE500000000000000;
                v58 = 0x74616F6C66;
                break;
              case 5:
                v60 = 0xE600000000000000;
                v58 = 0x656C62756F64;
                break;
              case 6:
                v60 = 0xE600000000000000;
                v58 = 0x676E69727473;
                break;
              case 7:
                v60 = 0xE500000000000000;
                v58 = 0x7365747962;
                break;
              default:
                break;
            }

            v274 = sub_21B0F3574(*(v55 + 16));
            if (v58 == v274 && v60 == v275)
            {
              v293 = OUTLINED_FUNCTION_1_30(v274, v275, v276, v277, v278, v279, v280, v281, v376, v381, v389, v395, v401, v406, v411, v416, v421, v426, v431, *(&v431 + 1), v441, *(&v441 + 1), v454, *(&v454 + 1), v467, *(&v467 + 1), v479, v480, v481, v482, v483, v484, v485, v486, v487, v488, v489, v490, v491[0], v491[1], v491[2], v491[3], v491[4], v491[5], v491[6], v491[7], v491[8], v492, v493, v494, *(&v494 + 1), v495, v496, v497, *(&v497 + 1), v498, v499, v500, v501, *__dst, *&__dst[8], *&__dst[16], *&__dst[24]);
              sub_21B0F6800(v293, v294);
            }

            else
            {
              OUTLINED_FUNCTION_35_2();
              OUTLINED_FUNCTION_26_7();
              v283 = sub_21B112D04();
              LOBYTE(v20) = v283;
              v291 = OUTLINED_FUNCTION_1_30(v283, v284, v285, v286, v287, v288, v289, v290, v376, v381, v389, v395, v401, v406, v411, v416, v421, v426, v431, *(&v431 + 1), v441, *(&v441 + 1), v454, *(&v454 + 1), v467, *(&v467 + 1), v479, v480, v481, v482, v483, v484, v485, v486, v487, v488, v489, v490, v491[0], v491[1], v491[2], v491[3], v491[4], v491[5], v491[6], v491[7], v491[8], v492, v493, v494, *(&v494 + 1), v495, v496, v497, *(&v497 + 1), v498, v499, v500, v501, *__dst, *&__dst[8], *&__dst[16], *&__dst[24]);
              sub_21B0F6800(v291, v292);

LABEL_132:

              if ((v20 & 1) == 0)
              {
                goto LABEL_341;
              }
            }

LABEL_133:
            sub_21B109594(v52, *(&v55 + 1));
            OUTLINED_FUNCTION_40_5();
            sub_21AFC54B0(v151);
            v152 = v505;
            break;
        }

        goto LABEL_134;
      case 3:
        v396 = v505[7];
        if (v510 != 3)
        {
          goto LABEL_331;
        }

        *&v441 = v505[6];
        v61 = v505[3];
        v63 = *(&v506 + 1);
        v62 = v506;
        v65 = *(&v507 + 1);
        v64 = v507;
        v66 = v508;
        v390 = *(&v509 + 1);
        *&v431 = v509;
        if (v505[0] != v506 || v505[1] != *(&v506 + 1))
        {
          v23 = sub_21B112D04();
          if ((v23 & 1) == 0)
          {
            goto LABEL_331;
          }
        }

        if (v32 != v64 || v61 != v65)
        {
          v23 = sub_21B112D04();
          if ((v23 & 1) == 0)
          {
            goto LABEL_331;
          }
        }

        if (v34)
        {
          if (!*(&v66 + 1))
          {
            goto LABEL_331;
          }

          if (v33 != v66 || v34 != *(&v66 + 1))
          {
            v23 = sub_21B112D04();
            if ((v23 & 1) == 0)
            {
              goto LABEL_331;
            }
          }
        }

        else if (*(&v66 + 1))
        {
          goto LABEL_331;
        }

        v80 = v441;
        v81 = *(v441 + 16);
        v82 = v431;
        if (v81 != *(v431 + 16))
        {
          goto LABEL_331;
        }

        if (!v81 || v441 == v431)
        {
          v122 = OUTLINED_FUNCTION_1_30(v23, v30, v62, v63, v26, v27, v28, v29, v376, v381, v390, v396, v401, v406, v411, v416, v421, v426, v431, *(&v431 + 1), v441, *(&v441 + 1), v454, *(&v454 + 1), v467, *(&v467 + 1), v479, v480, v481, v482, v483, v484, v485, v486, v487, v488, v489, v490, v491[0], v491[1], v491[2], v491[3], v491[4], v491[5], v491[6], v491[7], v491[8], v492, v493, v494, *(&v494 + 1), v495, v496, v497, *(&v497 + 1), v498, v499, v500, v501, *__dst, *&__dst[8], *&__dst[16], *&__dst[24]);
          sub_21B0F6800(v122, v123);
LABEL_113:
          sub_21B0F02E0(v395, v389);
          OUTLINED_FUNCTION_40_5();
          sub_21AFC54B0(v124);
          sub_21AFC54B0(v505);
          v2 = v421;
          if ((v64 & 1) == 0)
          {
            return 0;
          }

LABEL_327:
          v6 = v416;
LABEL_328:
          v11 = v411;
          v9 = v426;
          if (v426)
          {
            goto LABEL_4;
          }

          continue;
        }

        result = OUTLINED_FUNCTION_67();
        if ((result & 1) == 0)
        {
          v372 = OUTLINED_FUNCTION_1_30(result, v84, v85, v86, v87, v88, v89, v90, v376, v381, v390, v396, v401, v406, v411, v416, v421, v426, v431, *(&v431 + 1), v441, *(&v441 + 1), v454, *(&v454 + 1), v467, *(&v467 + 1), v479, v480, v481, v482, v483, v484, v485, v486, v487, v488, v489, v490, v491[0], v491[1], v491[2], v491[3], v491[4], v491[5], v491[6], v491[7], v491[8], v492, v493, v494, *(&v494 + 1), v495, v496, v497, *(&v497 + 1), v498, v499, v500, v501, *__dst, *&__dst[8], *&__dst[16], *&__dst[24]);
          sub_21B0F6800(v372, v373);
          result = sub_21B1055A4(0, v80);
          __break(1u);
          goto LABEL_345;
        }

        if (!*(v441 + 16))
        {
LABEL_345:
          __break(1u);
          goto LABEL_346;
        }

        v91 = *(v441 + 32);
        v92 = *(v441 + 40);
        v93 = *(v441 + 48);
        result = OUTLINED_FUNCTION_67();
        if ((result & 1) == 0)
        {
LABEL_346:
          v374 = OUTLINED_FUNCTION_1_30(result, v84, v85, v86, v87, v88, v89, v90, v376, v381, v390, v396, v401, v406, v411, v416, v421, v426, v431, *(&v431 + 1), v441, *(&v441 + 1), v454, *(&v454 + 1), v467, *(&v467 + 1), v479, v480, v481, v482, v483, v484, v485, v486, v487, v488, v489, v490, v491[0], v491[1], v491[2], v491[3], v491[4], v491[5], v491[6], v491[7], v491[8], v492, v493, v494, *(&v494 + 1), v495, v496, v497, *(&v497 + 1), v498, v499, v500, v501, *__dst, *&__dst[8], *&__dst[16], *&__dst[24]);
          sub_21B0F6800(v374, v375);

          result = sub_21B1055A4(0, v82);
          __break(1u);
          goto LABEL_347;
        }

        if (!*(v431 + 16))
        {
LABEL_347:
          __break(1u);
          return result;
        }

        v94 = *(v431 + 32);
        v95 = *(v431 + 48);
        if (v91 != v94 || v92 != *(v431 + 40))
        {
          result = OUTLINED_FUNCTION_45_4();
          if ((result & 1) == 0)
          {
LABEL_331:
            v371 = &v506;
            goto LABEL_342;
          }
        }

        v97 = OUTLINED_FUNCTION_1_30(result, v84, v94, v86, v87, v88, v89, v90, v376, v381, v390, v396, v401, v406, v411, v416, v421, v426, v431, *(&v431 + 1), v441, *(&v441 + 1), v454, *(&v454 + 1), v467, *(&v467 + 1), v479, v480, v481, v482, v483, v484, v485, v486, v487, v488, v489, v490, v491[0], v491[1], v491[2], v491[3], v491[4], v491[5], v491[6], v491[7], v491[8], v492, v493, v494, *(&v494 + 1), v495, v496, v497, *(&v497 + 1), v498, v499, v500, v501, *__dst, *&__dst[8], *&__dst[16], *&__dst[24]);
        sub_21B0F6800(v97, v98);
        v401 = v81;
        v99 = (v443 + 72);
        v100 = (v82 + 72);
        v101 = 1;
        while (2)
        {
          v102 = v95 & 0x1FFFFFFFFFFFFFFFLL;

          v103 = v95 >> 61;
          v469 = v99;
          v456 = v100;
          switch(v93 >> 61)
          {
            case 1uLL:
              if (v103 == 1)
              {
                goto LABEL_94;
              }

              goto LABEL_332;
            case 2uLL:
              if (v103 != 2)
              {
                goto LABEL_332;
              }

LABEL_94:
              v64 = *((v93 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
              v115 = *((v95 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
              v116 = *((v95 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
              v117 = *((v95 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
              if (*((v93 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) != v115 || *((v93 & 0x1FFFFFFFFFFFFFFFLL) + 0x18) != v116)
              {
                v119 = *(v102 + 24);
                if ((sub_21B112D04() & 1) == 0)
                {
                  goto LABEL_334;
                }
              }

              LOBYTE(v64) = _s9SwiftAvro0B6SchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v64, v117);

              goto LABEL_100;
            case 3uLL:
              v113 = *((v93 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
              v517 = *((v93 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
              v518 = v113;
              v519 = *((v93 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
              v520 = *((v93 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
              if (v103 != 3)
              {
                goto LABEL_332;
              }

              v114 = *((v95 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
              v521[0] = *((v95 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
              v521[1] = v114;
              v521[2] = *((v95 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
              v522 = *((v95 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
              sub_21AFC5454(v521, __dst);
              LOBYTE(v64) = static AvroRecordSchema.__derived_struct_equals(_:_:)();
              sub_21B0CAA60(v521);

              goto LABEL_100;
            case 4uLL:
              if (v103 != 4)
              {
                goto LABEL_332;
              }

              v64 = *((v93 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
              v110 = *((v95 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

              v111 = OUTLINED_FUNCTION_109();
              LOBYTE(v64) = _s9SwiftAvro0B11UnionSchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v111, v112);

LABEL_100:

              if (v64)
              {
                goto LABEL_101;
              }

              goto LABEL_341;
            default:
              if (v103)
              {
LABEL_332:

                goto LABEL_341;
              }

              v104 = *(v93 + 16);
              v105 = *(v95 + 16);
              v64 = sub_21B0F3574(v104);
              v107 = v106;
              if (v64 == sub_21B0F3574(v105) && v107 == v108)
              {
              }

              else
              {
                OUTLINED_FUNCTION_26_7();
                LOBYTE(v64) = sub_21B112D04();

                if ((v64 & 1) == 0)
                {
                  goto LABEL_341;
                }
              }

LABEL_101:
              if (v401 == v101)
              {
                goto LABEL_113;
              }

              if (v101 < v401)
              {
                if (v101 >= *(v443 + 16))
                {
                  goto LABEL_336;
                }

                if (v101 >= *(v432 + 16))
                {
                  goto LABEL_337;
                }

                v93 = *v469;
                v95 = *v456;
                if (*(v469 - 2) != *(v456 - 2) || *(v469 - 1) != *(v456 - 1))
                {
                  v121 = *(v469 - 1);
                  if ((OUTLINED_FUNCTION_45_4() & 1) == 0)
                  {
                    goto LABEL_341;
                  }
                }

                v99 = v469 + 3;
                v100 = v456 + 3;
                ++v101;
                continue;
              }

              __break(1u);
LABEL_336:
              __break(1u);
LABEL_337:
              __break(1u);
LABEL_338:
              sub_21B0F68B8(&v490);
LABEL_339:
              sub_21B0F68B8(&v493);
LABEL_340:
              sub_21B0F68B8(__dst);
LABEL_341:
              sub_21AFC54B0(&v506);
              v371 = v505;
LABEL_342:
              sub_21AFC54B0(v371);
              return 0;
          }
        }

      case 4:
        if (v510 != 4)
        {
          goto LABEL_331;
        }

        v38 = *(v505[0] + 32);
        v39 = *(v505[0] + 40);
        v455 = *(v505[0] + 48);
        v442 = *(v505[0] + 56);
        v40 = *(v505[0] + 72);
        v41 = *(v505[0] + 80);
        v42 = *(v505[0] + 88);
        v468 = *(v505[0] + 96);
        v43 = *(v505[0] + 16);
        v44 = *(v505[0] + 24);
        OUTLINED_FUNCTION_25_7();
        memcpy(v45, v46, v47);
        sub_21B0F6800(v505, &v493);
        sub_21B0F685C(__dst, &v493);
        v48 = OUTLINED_FUNCTION_109();
        if ((_s9SwiftAvro0B11UnionSchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v48, v49) & 1) == 0)
        {
          goto LABEL_340;
        }

        switch(v42)
        {
          case 1:
            v2 = v421;
            if (v503 != 1)
            {
              goto LABEL_340;
            }

            v202 = *&__dst[24];
            v201 = *&__dst[32];
            if (*&v44 != *&__dst[8] || v38 != *&__dst[16])
            {
              OUTLINED_FUNCTION_10_18();
              if ((sub_21B112D04() & 1) == 0)
              {
                goto LABEL_340;
              }
            }

            if ((_s9SwiftAvro0B6SchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v39, v202) & 1) == 0)
            {
              goto LABEL_340;
            }

            v198 = sub_21B0F02E0(v455, v201);
            goto LABEL_192;
          case 2:
            v2 = v421;
            if (v503 != 2)
            {
              goto LABEL_340;
            }

            v196 = *&__dst[24];
            v195 = *&__dst[32];
            if (*&v44 != *&__dst[8] || v38 != *&__dst[16])
            {
              OUTLINED_FUNCTION_10_18();
              if ((sub_21B112D04() & 1) == 0)
              {
                goto LABEL_340;
              }
            }

            if ((_s9SwiftAvro0B6SchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v39, v196) & 1) == 0)
            {
              goto LABEL_340;
            }

            v198 = sub_21B109594(v455, v195);
            goto LABEL_192;
          case 3:
            v2 = v421;
            if (v503 != 3)
            {
              goto LABEL_340;
            }

            v199 = *&__dst[64];
            v523 = v44;
            v524 = v38;
            v525 = v39;
            v526 = v455;
            v527 = v442;
            v528 = v40;
            v529 = *&__dst[8];
            v530 = *&__dst[24];
            v531 = *&__dst[32];
            v532 = *&__dst[40];
            v533 = *&__dst[56];
            if ((static AvroRecordSchema.__derived_struct_equals(_:_:)() & 1) == 0)
            {
              goto LABEL_340;
            }

            v200 = sub_21B0F02E0(v41, v199);
            sub_21B0F68B8(__dst);
            sub_21AFC54B0(&v506);
            sub_21AFC54B0(v505);
            if ((v200 & 1) == 0)
            {
              return 0;
            }

            goto LABEL_305;
          case 4:
            if (v503 != 4)
            {
              goto LABEL_340;
            }

            v182 = *(*&v44 + 32);
            v181 = *(*&v44 + 40);
            v183 = *(*&v44 + 48);
            v444 = *(*&v44 + 56);
            v185 = *(*&v44 + 72);
            v184 = *(*&v44 + 80);
            v186 = *(*&v44 + 88);
            v457 = *(*&v44 + 96);
            v189 = *&v44 + 16;
            v187 = *(*&v44 + 16);
            v188 = *(v189 + 8);
            OUTLINED_FUNCTION_25_7();
            memcpy(v190, v191, v192);
            v193 = v493;
            sub_21B0F685C(&v493, &v490);
            if (_s9SwiftAvro0B11UnionSchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v187, v193))
            {
              switch(v186)
              {
                case 1:
                  if (v500 != 1)
                  {
                    goto LABEL_339;
                  }

                  v272 = v495;
                  v271 = v496;
                  v273 = v188 == v494 && v182 == *(&v494 + 1);
                  if (!v273 && (sub_21B112D04() & 1) == 0)
                  {
                    goto LABEL_339;
                  }

                  v2 = v421;
                  if ((_s9SwiftAvro0B6SchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v181, v272) & 1) == 0)
                  {
                    goto LABEL_339;
                  }

                  v268 = sub_21B0F02E0(v183, v271);
                  goto LABEL_247;
                case 2:
                  if (v500 != 2)
                  {
                    goto LABEL_339;
                  }

                  v266 = v495;
                  v265 = v496;
                  v267 = v188 == v494 && v182 == *(&v494 + 1);
                  if (!v267 && (sub_21B112D04() & 1) == 0)
                  {
                    goto LABEL_339;
                  }

                  v2 = v421;
                  if ((_s9SwiftAvro0B6SchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v181, v266) & 1) == 0)
                  {
                    goto LABEL_339;
                  }

                  v268 = sub_21B109594(v183, v265);
LABEL_247:
                  v194 = v268;
                  sub_21B0F68B8(&v493);
                  sub_21B0F68B8(__dst);
                  sub_21AFC54B0(&v506);
                  sub_21AFC54B0(v505);
                  goto LABEL_248;
                case 3:
                  if (v500 != 3)
                  {
                    goto LABEL_339;
                  }

                  v269 = v499;
                  v534 = v188;
                  v535 = v182;
                  v536 = v181;
                  v537 = v183;
                  v538 = v444;
                  v539 = v185;
                  v540 = v494;
                  v541 = v495;
                  v542 = v496;
                  v543 = v497;
                  v544 = v498;
                  if ((static AvroRecordSchema.__derived_struct_equals(_:_:)() & 1) == 0)
                  {
                    goto LABEL_339;
                  }

                  v270 = sub_21B0F02E0(v184, v269);
                  sub_21B0F68B8(&v493);
                  sub_21B0F68B8(__dst);
                  sub_21AFC54B0(&v506);
                  sub_21AFC54B0(v505);
                  v2 = v421;
                  if ((v270 & 1) == 0)
                  {
                    return 0;
                  }

                  goto LABEL_249;
                case 4:
                  v257 = v188[2];
                  memcpy(v545, v188 + 3, 0x41uLL);
                  if (v500 != 4)
                  {
                    goto LABEL_339;
                  }

                  v258 = v188[12];
                  OUTLINED_FUNCTION_25_7();
                  memcpy(v259, v260, v261);
                  sub_21B0F685C(&v490, &v479);
                  v262 = OUTLINED_FUNCTION_52();
                  if ((_s9SwiftAvro0B11UnionSchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v262, v263) & 1) == 0)
                  {
                    goto LABEL_338;
                  }

                  memcpy(v546, v491, 0x41uLL);
                  v264 = _s9SwiftAvro0B5ValueV23__derived_struct_equalsySbAC_ACtFZ_0(v545, v546);
                  sub_21B0F68B8(&v490);
                  sub_21B0F68B8(&v493);
                  sub_21B0F68B8(__dst);
                  sub_21AFC54B0(&v506);
                  sub_21AFC54B0(v505);
                  v2 = v421;
                  if ((v264 & 1) == 0 || v258 != v492)
                  {
                    return 0;
                  }

                  goto LABEL_249;
                default:
                  if (v500)
                  {
                    goto LABEL_339;
                  }

                  v194 = _s9SwiftAvro0B9PrimitiveV23__derived_struct_equalsySbAC_ACtFZ_0(v188, v182, v181, v183, v494, *(&v494 + 1), v495, v496);
                  sub_21B0F68B8(&v493);
                  sub_21B0F68B8(__dst);
                  sub_21AFC54B0(&v506);
                  sub_21AFC54B0(v505);
                  v2 = v421;
LABEL_248:
                  if ((v194 & 1) == 0)
                  {
                    return 0;
                  }

LABEL_249:
                  if (v457 != v501)
                  {
                    return 0;
                  }

                  goto LABEL_305;
              }
            }

            goto LABEL_339;
          default:
            v2 = v421;
            if (v503)
            {
              goto LABEL_340;
            }

            break;
        }

        v50 = *&__dst[8];
        v51 = __dst[32];
        switch(v455)
        {
          case 1:
            if (__dst[32] == 1)
            {
              goto LABEL_295;
            }

            goto LABEL_340;
          case 2:
            sub_21B0F68B8(__dst);
            sub_21AFC54B0(&v506);
            sub_21AFC54B0(v505);
            if (v51 != 2)
            {
              return 0;
            }

            v310 = *&v44 == v50;
            goto LABEL_296;
          case 3:
            if (__dst[32] != 3)
            {
              goto LABEL_340;
            }

LABEL_295:
            sub_21B0F68B8(__dst);
            sub_21AFC54B0(&v506);
            sub_21AFC54B0(v505);
            v310 = LODWORD(v44) == v50;
            goto LABEL_296;
          case 4:
            if (__dst[32] != 4)
            {
              goto LABEL_340;
            }

            sub_21B0F68B8(__dst);
            sub_21AFC54B0(&v506);
            sub_21AFC54B0(v505);
            v310 = v44 == *&v50;
LABEL_296:
            if (!v310)
            {
              return 0;
            }

            goto LABEL_305;
          case 5:
            if (__dst[32] != 5)
            {
              goto LABEL_340;
            }

            if (*&v44 == *&__dst[8] && v38 == *&__dst[16])
            {
LABEL_304:
              sub_21B0F68B8(__dst);
              sub_21AFC54B0(&v506);
              sub_21AFC54B0(v505);
            }

            else
            {
              OUTLINED_FUNCTION_10_18();
              v198 = sub_21B112D04();
LABEL_192:
              v204 = v198;
              sub_21B0F68B8(__dst);
              sub_21AFC54B0(&v506);
              sub_21AFC54B0(v505);
              if ((v204 & 1) == 0)
              {
                return 0;
              }
            }

LABEL_305:
            if (v468 != v504)
            {
              return 0;
            }

            break;
          case 6:
            if (__dst[32] != 6)
            {
              goto LABEL_340;
            }

            v312 = OUTLINED_FUNCTION_10_18();
            v198 = sub_21B10B43C(v312, v313, v314, v50, v315);
            goto LABEL_192;
          case 7:
            if (__dst[32] != 7 || *&__dst[8] | *&__dst[24] | *&__dst[16])
            {
              goto LABEL_340;
            }

            goto LABEL_304;
          default:
            sub_21B0F68B8(__dst);
            sub_21AFC54B0(&v506);
            sub_21AFC54B0(v505);
            if (v51 || ((v50 ^ LOBYTE(v44)) & 1) != 0)
            {
              return 0;
            }

            goto LABEL_305;
        }

        goto LABEL_327;
      default:
        if (v510)
        {
          goto LABEL_331;
        }

        v36 = *(&v506 + 1);
        v37 = *&v506;
        LODWORD(v20) = BYTE8(v507);
        v2 = v421;
        switch(LOBYTE(v505[3]))
        {
          case 1:
            if (BYTE8(v507) == 1)
            {
              goto LABEL_199;
            }

            goto LABEL_331;
          case 2:
            sub_21AFC54B0(&v506);
            if (v20 != 2)
            {
              return 0;
            }

            v205 = *&v31 == *&v37;
            goto LABEL_325;
          case 3:
            if (BYTE8(v507) != 3)
            {
              goto LABEL_331;
            }

LABEL_199:
            sub_21AFC54B0(&v506);
            v205 = *&v31 == *&v37;
            goto LABEL_325;
          case 4:
            if (BYTE8(v507) != 4)
            {
              goto LABEL_331;
            }

            sub_21AFC54B0(&v506);
            v205 = v31 == v37;
            goto LABEL_325;
          case 5:
            if (BYTE8(v507) != 5)
            {
              goto LABEL_331;
            }

            if (v505[0] == v506 && v505[1] == *(&v506 + 1))
            {
LABEL_211:
              sub_21AFC54B0(&v506);
              v6 = v416;
              goto LABEL_328;
            }

            sub_21B112D04();
            OUTLINED_FUNCTION_40_5();
LABEL_134:
            sub_21AFC54B0(v152);
            if ((v20 & 1) == 0)
            {
              return 0;
            }

            break;
          case 6:
            if (BYTE8(v507) != 6)
            {
              goto LABEL_331;
            }

            if (((v505[1] >> 60) & 3) != 0)
            {
              v207 = v505[1] & 0xCFFFFFFFFFFFFFFFLL;
              v208 = OUTLINED_FUNCTION_1_30(v23, v505[1], v24, v25, v26, v27, v28, v29, v376, v381, v389, v395, v401, v406, v411, v416, v421, v426, v431, *(&v431 + 1), v441, *(&v441 + 1), v454, *(&v454 + 1), v467, *(&v467 + 1), v479, v480, v481, v482, v483, v484, v485, v486, v487, v488, v489, v490, v491[0], v491[1], v491[2], v491[3], v491[4], v491[5], v491[6], v491[7], v491[8], v492, v493, v494, *(&v494 + 1), v495, v496, v497, *(&v497 + 1), v498, v499, v500, v501, *__dst, *&__dst[8], *&__dst[16], *&__dst[24]);
              v210 = sub_21B0F6800(v208, v209);
              v218 = OUTLINED_FUNCTION_1_30(v210, v211, v212, v213, v214, v215, v216, v217, v377, v382, v391, v397, v402, v407, v412, v417, v422, v427, v433, v437, v445, v450, v458, v463, v471, v475, v479, v480, v481, v482, v483, v484, v485, v486, v487, v488, v489, v490, v491[0], v491[1], v491[2], v491[3], v491[4], v491[5], v491[6], v491[7], v491[8], v492, v493, v494, *(&v494 + 1), v495, v496, v497, *(&v497 + 1), v498, v499, v500, v501, *__dst, *&__dst[8], *&__dst[16], *&__dst[24]);
              sub_21B0F6800(v218, v219);
              v220 = v383;
              goto LABEL_314;
            }

            v223 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47A40, &qword_21B12D320);
            v495 = v223;
            v496 = sub_21B0F690C();
            v493 = *&v31;
            v224 = __swift_project_boxed_opaque_existential_0(&v493, v223);
            v232 = *(*v224 + 16);
            if (v232)
            {
              if (v232 <= 0xE)
              {
                v328 = OUTLINED_FUNCTION_1_30(v224, v225, v226, v227, v228, v229, v230, v231, v376, v381, v389, v395, v401, v406, v411, v416, v421, v426, v431, *(&v431 + 1), v441, *(&v441 + 1), v454, *(&v454 + 1), v467, *(&v467 + 1), v479, v480, v481, v482, v483, v484, v485, v486, v487, v488, v489, v490, v491[0], v491[1], v491[2], v491[3], v491[4], v491[5], v491[6], v491[7], v491[8], v492, v493, v494, *(&v494 + 1), v495, v496, v497, *(&v497 + 1), v498, v499, v500, v501, *__dst, *&__dst[8], *&__dst[16], *&__dst[24]);
                v330 = sub_21B0F6800(v328, v329);
                v338 = OUTLINED_FUNCTION_1_30(v330, v331, v332, v333, v334, v335, v336, v337, v380, v387, v394, v400, v405, v410, v415, v420, v425, v430, v436, v440, v449, v453, v462, v466, v474, v478, v479, v480, v481, v482, v483, v484, v485, v486, v487, v488, v489, v490, v491[0], v491[1], v491[2], v491[3], v491[4], v491[5], v491[6], v491[7], v491[8], v492, v493, v494, *(&v494 + 1), v495, v496, v497, *(&v497 + 1), v498, v499, v500, v501, *__dst, *&__dst[8], *&__dst[16], *&__dst[24]);
                sub_21B0F6800(v338, v339);
                v31 = COERCE_DOUBLE(sub_21B110DA4());
                v220 = v388 & 0xF00000000000000 | v340 & 0xFFFFFFFFFFFFFFLL;
                v207 = v220;
                goto LABEL_313;
              }

              v233 = sub_21B110C34();
              v234 = *(v233 + 48);
              v235 = *(v233 + 52);
              v236 = swift_allocObject();
              v244 = OUTLINED_FUNCTION_1_30(v236, v237, v238, v239, v240, v241, v242, v243, v376, v381, v389, v395, v401, v406, v411, v416, v421, v426, v431, *(&v431 + 1), v441, *(&v441 + 1), v454, *(&v454 + 1), v467, *(&v467 + 1), v479, v480, v481, v482, v483, v484, v485, v486, v487, v488, v489, v490, v491[0], v491[1], v491[2], v491[3], v491[4], v491[5], v491[6], v491[7], v491[8], v492, v493, v494, *(&v494 + 1), v495, v496, v497, *(&v497 + 1), v498, v499, v500, v501, *__dst, *&__dst[8], *&__dst[16], *&__dst[24]);
              if (v232 >= v246)
              {
                v341 = sub_21B0F6800(v244, v245);
                v349 = OUTLINED_FUNCTION_1_30(v341, v342, v343, v344, v345, v346, v347, v348, v378, v384, v392, v398, v403, v408, v413, v418, v423, v428, v434, v438, v447, v451, v460, v464, v472, v476, v479, v480, v481, v482, v483, v484, v485, v486, v487, v488, v489, v490, v491[0], v491[1], v491[2], v491[3], v491[4], v491[5], v491[6], v491[7], v491[8], v492, v493, v494, *(&v494 + 1), v495, v496, v497, *(&v497 + 1), v498, v499, v500, v501, *__dst, *&__dst[8], *&__dst[16], *&__dst[24]);
                sub_21B0F6800(v349, v350);
                OUTLINED_FUNCTION_10_18();
                v351 = sub_21B110BF4();
                sub_21B110E04();
                v31 = COERCE_DOUBLE(swift_allocObject());
                *(*&v31 + 16) = 0;
                *(*&v31 + 24) = v232;
                v207 = v351 | 0x8000000000000000;
              }

              else
              {
                v247 = sub_21B0F6800(v244, v245);
                v255 = OUTLINED_FUNCTION_1_30(v247, v248, v249, v250, v251, v252, v253, v254, v378, v384, v392, v398, v403, v408, v413, v418, v423, v428, v434, v438, v447, v451, v460, v464, v472, v476, v479, v480, v481, v482, v483, v484, v485, v486, v487, v488, v489, v490, v491[0], v491[1], v491[2], v491[3], v491[4], v491[5], v491[6], v491[7], v491[8], v492, v493, v494, *(&v494 + 1), v495, v496, v497, *(&v497 + 1), v498, v499, v500, v501, *__dst, *&__dst[8], *&__dst[16], *&__dst[24]);
                sub_21B0F6800(v255, v256);
                OUTLINED_FUNCTION_10_18();
                *&v31 = v232 << 32;
                v207 = sub_21B110BF4() | 0x4000000000000000;
              }
            }

            else
            {
              v316 = OUTLINED_FUNCTION_1_30(v224, v225, v226, v227, v228, v229, v230, v231, v376, v381, v389, v395, v401, v406, v411, v416, v421, v426, v431, *(&v431 + 1), v441, *(&v441 + 1), v454, *(&v454 + 1), v467, *(&v467 + 1), v479, v480, v481, v482, v483, v484, v485, v486, v487, v488, v489, v490, v491[0], v491[1], v491[2], v491[3], v491[4], v491[5], v491[6], v491[7], v491[8], v492, v493, v494, *(&v494 + 1), v495, v496, v497, *(&v497 + 1), v498, v499, v500, v501, *__dst, *&__dst[8], *&__dst[16], *&__dst[24]);
              v318 = sub_21B0F6800(v316, v317);
              v326 = OUTLINED_FUNCTION_1_30(v318, v319, v320, v321, v322, v323, v324, v325, v379, v386, v393, v399, v404, v409, v414, v419, v424, v429, v435, v439, v448, v452, v461, v465, v473, v477, v479, v480, v481, v482, v483, v484, v485, v486, v487, v488, v489, v490, v491[0], v491[1], v491[2], v491[3], v491[4], v491[5], v491[6], v491[7], v491[8], v492, v493, v494, *(&v494 + 1), v495, v496, v497, *(&v497 + 1), v498, v499, v500, v501, *__dst, *&__dst[8], *&__dst[16], *&__dst[24]);
              sub_21B0F6800(v326, v327);
              v31 = 0.0;
              v207 = 0xC000000000000000;
            }

            v220 = v385;
LABEL_313:
            __swift_destroy_boxed_opaque_existential_0(&v493);
LABEL_314:
            v352 = sub_21B110EB4();
            sub_21AF99728(*&v31, v207);
            v381 = v220;
            if (((v36 >> 60) & 3) != 0)
            {
              v353 = v36 & 0xCFFFFFFFFFFFFFFFLL;
              v354 = OUTLINED_FUNCTION_33_8();
              sub_21B0F6800(v354, v355);
            }

            else
            {
              v356 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47A40, &qword_21B12D320);
              v495 = v356;
              v496 = sub_21B0F690C();
              v493 = *&v37;
              v357 = *(*__swift_project_boxed_opaque_existential_0(&v493, v356) + 16);
              if (v357)
              {
                if (v357 <= 0xE)
                {
                  v366 = OUTLINED_FUNCTION_33_8();
                  sub_21B0F6800(v366, v367);
                  v37 = COERCE_DOUBLE(sub_21B110DA4());
                  v353 = v376 & 0xF00000000000000 | v368 & 0xFFFFFFFFFFFFFFLL;
                  v376 = v353;
                }

                else
                {
                  v358 = sub_21B110C34();
                  v359 = *(v358 + 48);
                  v360 = *(v358 + 52);
                  swift_allocObject();
                  v361 = OUTLINED_FUNCTION_33_8();
                  if (v357 >= v363)
                  {
                    sub_21B0F6800(v361, v362);
                    OUTLINED_FUNCTION_35_2();
                    v369 = sub_21B110BF4();
                    sub_21B110E04();
                    v37 = COERCE_DOUBLE(swift_allocObject());
                    *(*&v37 + 16) = 0;
                    *(*&v37 + 24) = v357;
                    v353 = v369 | 0x8000000000000000;
                  }

                  else
                  {
                    sub_21B0F6800(v361, v362);
                    OUTLINED_FUNCTION_35_2();
                    *&v37 = v357 << 32;
                    v353 = sub_21B110BF4() | 0x4000000000000000;
                  }
                }
              }

              else
              {
                v364 = OUTLINED_FUNCTION_33_8();
                sub_21B0F6800(v364, v365);
                v37 = 0.0;
                v353 = 0xC000000000000000;
              }

              __swift_destroy_boxed_opaque_existential_0(&v493);
            }

            v370 = sub_21B110EB4();
            sub_21AF99728(*&v37, v353);
            sub_21AFC54B0(&v506);
            sub_21AFC54B0(v505);
            v205 = v352 == v370;
LABEL_325:
            if (!v205)
            {
              return 0;
            }

            goto LABEL_327;
          case 7:
            if (BYTE8(v507) != 7 || v506 | v507 | *(&v506 + 1))
            {
              goto LABEL_331;
            }

            goto LABEL_211;
          default:
            sub_21AFC54B0(&v506);
            if (v20 || ((LOBYTE(v37) ^ LOBYTE(v31)) & 1) != 0)
            {
              return 0;
            }

            goto LABEL_327;
        }

        goto LABEL_327;
    }
  }
}

uint64_t sub_21B10AE88(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t))
{
  _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
  _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(a1, a4);

  return a6(a1, a5);
}

uint64_t sub_21B10AF0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *))
{
  OUTLINED_FUNCTION_4_24();
  v6 = _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
  v14 = OUTLINED_FUNCTION_22_8(v6, v7, v8, v9, v10, v11, v12, v13, v26, v28);
  v16 = _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v14, v15);
  v24 = OUTLINED_FUNCTION_34_8(v16, v17, v18, v19, v20, v21, v22, v23, v27, v29);
  a5(v24);
  return sub_21B112F14();
}

uint64_t sub_21B10AFB4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v6 = *v4;
  v7 = v4[1];
  v9 = v4[2];
  v8 = v4[3];
  v10 = sub_21B112EC4();
  v18 = OUTLINED_FUNCTION_22_8(v10, v11, v12, v13, v14, v15, v16, v17, v20, v21);
  a4(v18);
  return sub_21B112F14();
}

uint64_t AvroMap.description.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_36_7();
  OUTLINED_FUNCTION_47_3();
  sub_21B112904();

  OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_23_8();
  v6 = sub_21B112314();
  MEMORY[0x21CEE9770](v6);

  OUTLINED_FUNCTION_2_30();
  OUTLINED_FUNCTION_29_8();
  AvroMapSchema.description.getter(v4, v3, a3);
  OUTLINED_FUNCTION_94_1();

  OUTLINED_FUNCTION_74_0();
  return v8;
}

uint64_t _s9SwiftAvro0B9PrimitiveV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, unint64_t a2, uint64_t a3, char a4, uint64_t a5, unint64_t a6, uint64_t a7, char a8)
{
  switch(a4)
  {
    case 1:
      if (a8 != 1)
      {
        goto LABEL_29;
      }

      v10 = a1 == a5;
      goto LABEL_18;
    case 2:
      if (a8 != 2)
      {
        goto LABEL_29;
      }

      v10 = a1 == a5;
LABEL_18:
      v8 = v10;
      return v8 & 1;
    case 3:
      if (a8 != 3)
      {
        goto LABEL_29;
      }

      v9 = *&a1 == *&a5;
      goto LABEL_10;
    case 4:
      if (a8 != 4)
      {
        goto LABEL_29;
      }

      v9 = *&a1 == *&a5;
LABEL_10:
      v8 = v9;
      return v8 & 1;
    case 5:
      if (a8 != 5)
      {
        goto LABEL_29;
      }

      if (a1 != a5 || a2 != a6)
      {
        return OUTLINED_FUNCTION_11_13();
      }

LABEL_31:
      v8 = 1;
      return v8 & 1;
    case 6:
      if (a8 != 6)
      {
        goto LABEL_29;
      }

      return sub_21B10B43C(a1, a2, a3, a5, a6);
    case 7:
      if (a8 == 7 && !(a5 | a7 | a6))
      {
        goto LABEL_31;
      }

      goto LABEL_29;
    default:
      if (a8)
      {
LABEL_29:
        v8 = 0;
      }

      else
      {
        v8 = a5 ^ a1 ^ 1;
      }

      return v8 & 1;
  }
}

uint64_t _s9SwiftAvro0B9PrimitiveV4hash4intoys6HasherVz_tF_0()
{
  OUTLINED_FUNCTION_81();
  switch(v1)
  {
    case 1:
      MEMORY[0x21CEEA150](2);
      return sub_21B112EF4();
    case 2:
      MEMORY[0x21CEEA150](3);
      v3 = v0;
      goto LABEL_7;
    case 3:
      MEMORY[0x21CEEA150](4);
      return sub_21B112EF4();
    case 4:
      MEMORY[0x21CEEA150](5);
      if ((v0 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v3 = v0;
      }

      else
      {
        v3 = 0;
      }

LABEL_7:
      result = MEMORY[0x21CEEA180](v3);
      break;
    case 5:
      MEMORY[0x21CEEA150](6);
      OUTLINED_FUNCTION_7();

      result = _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
      break;
    case 6:
      MEMORY[0x21CEEA150](7);
      OUTLINED_FUNCTION_7();

      result = sub_21B10B510();
      break;
    case 7:
      result = MEMORY[0x21CEEA150](0);
      break;
    default:
      MEMORY[0x21CEEA150](1);
      result = sub_21B112EE4();
      break;
  }

  return result;
}

uint64_t sub_21B10B368()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 24);
  return sub_21B10B60C();
}

uint64_t sub_21B10B38C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 24);
  return _s9SwiftAvro0B9PrimitiveV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_21B10B3CC(uint64_t a1, unint64_t a2)
{
  if (((a2 >> 60) & 3) != 0)
  {
    v2 = OUTLINED_FUNCTION_52();
    sub_21AF99818(v2, v3);
  }

  else
  {

    sub_21B10D004(v4);
  }

  OUTLINED_FUNCTION_52();
  v5 = sub_21B110EB4();
  v6 = OUTLINED_FUNCTION_52();
  sub_21AF99728(v6, v7);
  return v5;
}

BOOL sub_21B10B43C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = a1;
  if (((a2 >> 60) & 3) != 0)
  {
    v7 = a2 & 0xCFFFFFFFFFFFFFFFLL;
    sub_21AF99818(a1, a2 & 0xCFFFFFFFFFFFFFFFLL);
  }

  else
  {

    v6 = sub_21B10D004(v8);
    v7 = v9;
  }

  v10 = sub_21B110EB4();
  sub_21AF99728(v6, v7);
  if (((a5 >> 60) & 3) != 0)
  {
    v11 = OUTLINED_FUNCTION_52();
    sub_21AF99818(v11, v12);
  }

  else
  {

    sub_21B10D004(v13);
  }

  OUTLINED_FUNCTION_52();
  v14 = sub_21B110EB4();
  v15 = OUTLINED_FUNCTION_52();
  sub_21AF99728(v15, v16);
  return v10 == v14;
}

uint64_t sub_21B10B510()
{
  OUTLINED_FUNCTION_81();
  if (((v0 >> 60) & 3) != 0)
  {
    v1 = OUTLINED_FUNCTION_109();
    sub_21AF99818(v1, v2);
  }

  else
  {

    sub_21B10D004(v3);
  }

  OUTLINED_FUNCTION_109();
  v4 = sub_21B110EB4();
  v5 = OUTLINED_FUNCTION_109();
  sub_21AF99728(v5, v6);
  return MEMORY[0x21CEEA150](v4);
}

uint64_t sub_21B10B58C()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_21B10B510();
}

uint64_t sub_21B10B594()
{
  v1 = *v0;
  v2 = v0[1];
  sub_21B112EC4();
  sub_21B10B510();
  return sub_21B112F14();
}

uint64_t sub_21B10B60C()
{
  OUTLINED_FUNCTION_36_7();
  OUTLINED_FUNCTION_4_24();
  _s9SwiftAvro0B9PrimitiveV4hash4intoys6HasherVz_tF_0();
  return sub_21B112F14();
}

uint64_t sub_21B10B6A0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v6 = *v4;
  v7 = v4[1];
  v8 = v4[2];
  v9 = *(v4 + 24);
  v10 = sub_21B112EC4();
  v18 = OUTLINED_FUNCTION_22_8(v10, v11, v12, v13, v14, v15, v16, v17, v20, v21);
  a4(v18);
  return sub_21B112F14();
}

uint64_t AvroPrimitive.description.getter(char a1, uint64_t a2, uint64_t a3, char a4)
{
  result = 7104878;
  switch(a4)
  {
    case 1:
    case 2:
      result = sub_21B112B84();
      break;
    case 3:
      result = sub_21B112694();
      break;
    case 4:
      result = sub_21B112684();
      break;
    case 5:
      v9 = OUTLINED_FUNCTION_52();
      sub_21B0F69CC(v9, v10, v11, 5);
      result = OUTLINED_FUNCTION_52();
      break;
    case 6:
      v6 = OUTLINED_FUNCTION_52();
      sub_21B0F69CC(v6, v7, v8, 6);
      result = sub_21B112454();
      break;
    case 7:
      return result;
    default:
      if (a1)
      {
        result = 1702195828;
      }

      else
      {
        result = 0x65736C6166;
      }

      break;
  }

  return result;
}

uint64_t AvroUnion.init(schema:value:)@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t *a3@<X8>)
{

  v6 = AvroValue.schema.getter();
  v7 = sub_21B10740C(v6, a1);
  v9 = v8;

  if (v9)
  {
LABEL_6:
    OUTLINED_FUNCTION_61();
    v13 = swift_allocObject();
    *(v13 + 16) = a1;
    v14 = v13 | 0x8000000000000000;
    v15 = AvroValue.schema.getter();
    sub_21B10BCAC();
    OUTLINED_FUNCTION_4_0();
    *v16 = v14;
    v16[1] = v15;
    swift_willThrow();
    return sub_21AFC54B0(a2);
  }

  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v7 < *(a1 + 16))
  {
    v11 = *(a1 + 8 * v7 + 32);

    v12 = sub_21B0EDF24(a2, v11);

    if (v12)
    {
      *a3 = a1;
      result = memcpy(a3 + 1, a2, 0x41uLL);
      a3[10] = v7;
      return result;
    }

    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t AvroUnion.hash(into:)(uint64_t a1)
{
  sub_21B0F4590(a1, *v1);
  _s9SwiftAvro0B5ValueV4hash4intoys6HasherVz_tF_0(a1);
  return MEMORY[0x21CEEA150](v1[10]);
}

uint64_t AvroUnion.hashValue.getter()
{
  OUTLINED_FUNCTION_4_24();
  sub_21B0F4590(v2, *v0);
  _s9SwiftAvro0B5ValueV4hash4intoys6HasherVz_tF_0(v2);
  MEMORY[0x21CEEA150](v0[10]);
  return sub_21B112F14();
}

uint64_t sub_21B10BA9C()
{
  sub_21B112EC4();
  AvroUnion.hash(into:)(v1);
  return sub_21B112F14();
}

unint64_t AvroUnion.description.getter()
{
  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;
  sub_21B112904();

  OUTLINED_FUNCTION_32_0();
  v1 = memcpy(__dst, v0 + 1, 0x41uLL);
  v2 = AvroValue.description.getter(v1);
  MEMORY[0x21CEE9770](v2);

  MEMORY[0x21CEE9770](0x3A7865646E69202CLL, 0xE900000000000020);
  v7 = v0[10];
  v3 = sub_21B112B84();
  MEMORY[0x21CEE9770](v3);

  v4 = OUTLINED_FUNCTION_2_30();
  MEMORY[0x21CEE9770](v4, 0xEA0000000000203ALL);
  v5 = MEMORY[0x21CEE9880](*v0, &type metadata for AvroSchema);
  MEMORY[0x21CEE9770](v5);

  MEMORY[0x21CEE9770](41, 0xE100000000000000);
  return 0xD000000000000011;
}

uint64_t sub_21B10BC38(uint64_t a1, int64_t a2, char a3)
{
  result = sub_21B10BD68(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_21B10BC58()
{
  result = qword_27CD47B00;
  if (!qword_27CD47B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47B00);
  }

  return result;
}

unint64_t sub_21B10BCAC()
{
  result = qword_27CD47B08;
  if (!qword_27CD47B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47B08);
  }

  return result;
}

uint64_t sub_21B10BD68(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47AE0, &qword_21B12D8E8);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 72);
      if (v5)
      {
LABEL_13:
        sub_21B105B00((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_21B10BE70@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v4 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    v5 = 0xC000000000000000;
    goto LABEL_5;
  }

  if (v4 <= 14)
  {
    result = sub_21B110DA4();
    v5 = v7 & 0xFFFFFFFFFFFFFFLL;
  }

  else if (v4 >= 0x7FFFFFFF)
  {
    result = MEMORY[0x21CEE8030]();
    v5 = v8 | 0x8000000000000000;
  }

  else
  {
    result = MEMORY[0x21CEE8050]();
    v5 = v6 | 0x4000000000000000;
  }

LABEL_5:
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_21B10BF04(const void *a1, uint64_t a2)
{
  v5 = a2 + 64;
  v4 = *(a2 + 64);
  v6 = *(a2 + 32);
  OUTLINED_FUNCTION_2_6();
  v9 = v8 & v7;
  v11 = (v10 + 63) >> 6;

  v13 = 0;
  v14 = 0;
  if (v9)
  {
    while (1)
    {
      v15 = v14;
LABEL_6:
      v16 = __clz(__rbit64(v9)) | (v15 << 6);
      v17 = (*(a2 + 48) + 16 * v16);
      v19 = *v17;
      v18 = v17[1];
      memcpy(__dst, (*(a2 + 56) + 72 * v16), 0x41uLL);
      v23 = *&__dst[48];
      v24 = *&__dst[16];
      v21 = *&__dst[32];
      v22 = *__dst;
      v20 = __dst[64];

      sub_21B0F6800(__dst, __src);
      if (!v18)
      {
        break;
      }

      v9 &= v9 - 1;
      *__src = v22;
      *&__src[16] = v24;
      *&__src[32] = v21;
      *&__src[48] = v23;
      __src[64] = v20;
      memcpy(__dst, a1, sizeof(__dst));
      _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();

      memcpy(v28, __src, sizeof(v28));
      sub_21B0F6800(__src, v25);
      _s9SwiftAvro0B5ValueV4hash4intoys6HasherVz_tF_0(__dst);
      sub_21AFC54B0(__src);
      sub_21AFC54B0(__src);
      result = sub_21B112F14();
      v13 ^= result;
      v14 = v15;
      if (!v9)
      {
        goto LABEL_3;
      }
    }

LABEL_9:

    return MEMORY[0x21CEEA150](v13);
  }

  else
  {
LABEL_3:
    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v11)
      {
        goto LABEL_9;
      }

      v9 = *(v5 + 8 * v15);
      ++v14;
      if (v9)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_21B10C0C0()
{
  result = qword_27CD47B10;
  if (!qword_27CD47B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47B10);
  }

  return result;
}

unint64_t sub_21B10C118()
{
  result = qword_27CD47B18;
  if (!qword_27CD47B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47B18);
  }

  return result;
}

unint64_t sub_21B10C170()
{
  result = qword_27CD47B20;
  if (!qword_27CD47B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47B20);
  }

  return result;
}

unint64_t sub_21B10C1C8()
{
  result = qword_27CD47B28;
  if (!qword_27CD47B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47B28);
  }

  return result;
}

unint64_t sub_21B10C244()
{
  result = qword_27CD47B30;
  if (!qword_27CD47B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47B30);
  }

  return result;
}

unint64_t sub_21B10C2A8()
{
  result = qword_27CD47B38;
  if (!qword_27CD47B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47B38);
  }

  return result;
}

unint64_t sub_21B10C318()
{
  result = qword_27CD47B40;
  if (!qword_27CD47B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47B40);
  }

  return result;
}

unint64_t sub_21B10C37C()
{
  result = qword_27CD47B48;
  if (!qword_27CD47B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47B48);
  }

  return result;
}

unint64_t sub_21B10C3D4()
{
  result = qword_27CD47B50;
  if (!qword_27CD47B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47B50);
  }

  return result;
}

unint64_t sub_21B10C42C()
{
  result = qword_27CD47B58;
  if (!qword_27CD47B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47B58);
  }

  return result;
}

unint64_t sub_21B10C484()
{
  result = qword_27CD47B60;
  if (!qword_27CD47B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47B60);
  }

  return result;
}

unint64_t sub_21B10C4DC()
{
  result = qword_27CD47B68;
  if (!qword_27CD47B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47B68);
  }

  return result;
}

uint64_t sub_21B10C530(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7C && *(a1 + 16))
    {
      v2 = *a1 + 123;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x7B)
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

uint64_t sub_21B10C584(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7B)
  {
    *result = a2 - 124;
    *(result + 8) = 0;
    if (a3 >= 0x7C)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7C)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_21B10C5EC(uint64_t result, int a2, int a3)
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

      return OUTLINED_FUNCTION_32_6(result, a2);
    }

    *(result + 16) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_32_6(result, a2);
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9SwiftAvro0B9PrimitiveV5ValueO(uint64_t a1)
{
  if ((*(a1 + 24) & 7) == 7)
  {
    return (*a1 + 7);
  }

  else
  {
    return *(a1 + 24) & 7;
  }
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_21B10C688(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_21B10C6C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21B10C730(uint64_t result, int a2, int a3)
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

      return OUTLINED_FUNCTION_32_6(result, a2);
    }

    *(result + 32) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_32_6(result, a2);
    }
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_21B10C79C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_21B10C7DC(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_21B10C83C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xF9 && *(a1 + 25))
    {
      v2 = *a1 + 248;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 <= 7)
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

uint64_t sub_21B10C87C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 249;
    if (a3 >= 0xF9)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_21B10C8C4(uint64_t result, unsigned int a2)
{
  v2 = a2 - 7;
  if (a2 >= 7)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 7;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

uint64_t sub_21B10C8EC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 == 1 || !*(a1 + 24))
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

uint64_t sub_21B10C92C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = xmmword_21B12D900;
      *(result + 16) = 0;
    }
  }

  return result;
}

uint64_t sub_21B10C9A8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && *(a1 + 65))
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *(a1 + 64);
      if (v3 <= 4)
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

uint64_t sub_21B10C9E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 64) = -a2;
    }
  }

  return result;
}

unint64_t sub_21B10CA58()
{
  result = qword_27CD47B70;
  if (!qword_27CD47B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47B70);
  }

  return result;
}

unint64_t sub_21B10CAB0()
{
  result = qword_27CD47B78;
  if (!qword_27CD47B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47B78);
  }

  return result;
}

unint64_t sub_21B10CB08()
{
  result = qword_27CD47B80;
  if (!qword_27CD47B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47B80);
  }

  return result;
}

unint64_t sub_21B10CB5C()
{
  result = qword_27CD47B88;
  if (!qword_27CD47B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47B88);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_12_16()
{
  result = *((v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v3 = *((v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
  v4 = *((v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
  v5 = *((v0 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v6 = *((v0 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
  v7 = *((v0 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
  return result;
}

void OUTLINED_FUNCTION_14_14(__n128 a1, __n128 a2, __n128 a3)
{
  *v3 = v4;
  *(v3 + 8) = a1;
  *(v3 + 24) = a2;
  *(v3 + 40) = a3;
  *(v3 + 56) = v6;
  *(v3 + 64) = v5;
}

uint64_t OUTLINED_FUNCTION_20_10(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  a1[2] = v21;
  a1[3] = v22;
  a1[4] = v20;
  a18 = v18;

  return sub_21B0F6800(v19, &a9);
}

void OUTLINED_FUNCTION_29_8()
{

  JUMPOUT(0x21CEE9770);
}

void *OUTLINED_FUNCTION_41_6(uint64_t a1)
{
  v3 = (a1 + 16);

  return memcpy(v3, v1, 0x58uLL);
}

uint64_t OUTLINED_FUNCTION_43_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  return sub_21B0F6800(v11, va);
}

void *OUTLINED_FUNCTION_44_5(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, char __src)
{

  return memcpy(a1, &__src, 0x58uLL);
}

uint64_t OUTLINED_FUNCTION_45_4()
{

  return sub_21B112D04();
}

void *OUTLINED_FUNCTION_46_4(void *a1)
{

  return memcpy(a1, v1, 0x41uLL);
}

uint64_t AvroPrimitive.get<A>()@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  switch(a4)
  {
    case 5:
      sub_21B0F69CC(a1, a2, a3, 5);
      goto LABEL_8;
    case 6:
      sub_21B0F69CC(a1, a2, a3, 6);
      if (((a2 >> 60) & 3) == 0)
      {
        sub_21B10D004(a1);
      }

      goto LABEL_8;
    case 7:

      return __swift_storeEnumTagSinglePayload(a6, 1, 1, a5);
    default:
LABEL_8:
      v11 = swift_dynamicCast();
      return __swift_storeEnumTagSinglePayload(a6, v11 ^ 1u, 1, a5);
  }
}

uint64_t sub_21B10D004(uint64_t a1)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47A40, &qword_21B12D320);
  v8 = sub_21B0F690C();
  v6[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_0(v6, v7);
  sub_21B10BE70(*v2 + 32, *v2 + 32 + *(*v2 + 16), &v5);
  v3 = v5;
  __swift_destroy_boxed_opaque_existential_0(v6);
  return v3;
}

uint64_t AvroSchema.canHold(_:)(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    v5 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

    v6 = _s9SwiftAvro0B6SchemaV23__derived_struct_equalsySbAC_ACtFZ_0(a2, a1);
    if (v6)
    {

      return 1;
    }

    else
    {
      v9 = a1;
      MEMORY[0x28223BE20](v6);
      v8[2] = &v9;
      v7 = sub_21B0F3F14(sub_21B0F6A24, v8, v5);
    }

    return v7;
  }

  else
  {

    return _s9SwiftAvro0B6SchemaV23__derived_struct_equalsySbAC_ACtFZ_0(a2, a1);
  }
}

BOOL AvroSchema.canHold(all:)(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = (a1 + 32);
  for (i = a2 & 0x1FFFFFFFFFFFFFFFLL; v3; --v3)
  {
    v6 = *v4;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v8 = *(i + 16);

      v9 = _s9SwiftAvro0B6SchemaV23__derived_struct_equalsySbAC_ACtFZ_0(a2, v6);
      if (v9)
      {
      }

      else
      {
        v13 = v6;
        MEMORY[0x28223BE20](v9);
        v12[2] = &v13;
        v10 = sub_21B0F3F14(sub_21B10D448, v12, v8);

        if (!v10)
        {
          return v3 == 0;
        }
      }
    }

    else
    {

      v7 = _s9SwiftAvro0B6SchemaV23__derived_struct_equalsySbAC_ACtFZ_0(a2, v6);

      if ((v7 & 1) == 0)
      {
        return v3 == 0;
      }
    }

    ++v4;
  }

  return v3 == 0;
}

BOOL AvroSchema.canHold(nullable:)(uint64_t a1, unint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47908, &qword_21B12C2F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21B113DB0;
  *(inited + 32) = a1;
  v5 = qword_27CD47840;

  if (v5 != -1)
  {
    swift_once();
  }

  *(inited + 40) = static AvroSchema.null;

  v6 = AvroSchema.canHold(all:)(inited, a2);
  swift_setDeallocating();
  sub_21B10D3E0();
  return v6;
}

uint64_t sub_21B10D3E0()
{
  v1 = *(v0 + 16);
  swift_arrayDestroy();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_21B10D464@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    sub_21B110760(v5, v6, v7);
    v4 = 1;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7 = -1;
  }

  *a2 = a1;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
}

uint64_t AvroSchemaEncoder.OutputFormatting.indentation.setter(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    *v1 = result;
  }

  return result;
}

uint64_t *(*AvroSchemaEncoder.OutputFormatting.indentation.modify(void *a1))(uint64_t *result, char a2)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_21B10D560;
}

uint64_t *sub_21B10D560(uint64_t *result, char a2)
{
  v2 = *result;
  if (a2)
  {
    if ((v2 & 0x8000000000000000) == 0)
    {
LABEL_5:
      *result[1] = v2;
      return result;
    }

    __break(1u);
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t AvroSchemaEncoder.encodeBytes(_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SchemaEncoder();
  result = sub_21B10D668(a1);
  if (!v2)
  {
    sub_21B10D774(result, a2);
    v7 = v6;

    return v7;
  }

  return result;
}

uint64_t sub_21B10D668(uint64_t a1)
{
  swift_allocObject();
  v3 = sub_21B10E8E8();
  swift_beginAccess();
  v4 = *(v3[6] + 16);
  v5 = v3[2];

  sub_21B10E9AC();
  sub_21B10F7F0(v3, v4, v5);

  if (v1)
  {
  }

  else
  {

    swift_beginAccess();
    a1 = v3[5];
  }

  return a1;
}

void sub_21B10D774(uint64_t a1, uint64_t a2)
{
  sub_21B10E5F8(a1);
  sub_21B1059A8();
  v5 = v4;
  sub_21B10D464(a1, &v114);
  v6 = a2;
  v118 = v114;
  v7 = v115;
  v8 = v116;
  v9 = *(&v114 + 1);
  v112 = a2;
  v113 = v114;
  v110 = 0;
  v111 = v114 + 32;
  v109 = -a2;
  LOBYTE(v10) = v117;
  while (1)
  {
    if (v10 == 0xFF)
    {
LABEL_117:
      sub_21B1106F8(&v118);
      return;
    }

    v11 = *(v113 + 16);
    v12 = v7;
    v13 = v8;
    v14 = v110;
LABEL_4:
    v15 = v14;
    if (v9 == v11)
    {
      v7 = 0;
      v8 = 0;
      v10 = 255;
      v9 = v11;
      goto LABEL_9;
    }

    if ((v9 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v9 >= *(v113 + 16))
    {
      goto LABEL_121;
    }

    v16 = v9 + 1;
    v17 = v111 + 24 * v9;
    v10 = *(v17 + 16);
    v18 = *v17;
    v19 = *(v17 + 8);
    sub_21B110760(*v17, v19, *(v17 + 16));
    v8 = v19;
    v7 = v18;
    v6 = v112;
    v9 = v16;
LABEL_9:
    switch(v10)
    {
      case 1:
        if (v10 == 1 || v10 == 255)
        {
          if (v12)
          {
            v20 = 125;
          }

          else
          {
            v20 = 93;
          }

          v21 = *(v5 + 16);
          v22 = v21 + 1;
          if (v21 >= *(v5 + 24) >> 1)
          {
            v24 = v8;
            v25 = v7;
            sub_21B1059A8();
            v8 = v24;
            v7 = v25;
            v6 = v112;
            v5 = v26;
          }

          *(v5 + 16) = v22;
          *(v5 + v21 + 32) = v20;
          if (v6 < 1)
          {
            continue;
          }

          if (v10 == 255)
          {
            goto LABEL_117;
          }

          v23 = v15 - v6;
          if (__OFSUB__(v15, v6))
          {
            __break(1u);
LABEL_119:
            __break(1u);
            goto LABEL_120;
          }

          if (v23 < 0)
          {
            goto LABEL_119;
          }

          if ((v21 + 2) > *(v5 + 24) >> 1)
          {
            v27 = v8;
            v28 = v7;
            sub_21B1059A8();
            v8 = v27;
            v7 = v28;
            v6 = v112;
            v5 = v29;
          }

          v14 = 0;
          *(v5 + 16) = v21 + 2;
          *(v5 + v22 + 32) = 10;
          v12 = v7;
          v13 = v8;
          if (v23)
          {
            v54 = v21 + 34;
            v55 = v109 + v15;
            do
            {
              if (v54 - 32 >= *(v5 + 24) >> 1)
              {
                v56 = v8;
                v57 = v7;
                sub_21B1059A8();
                v8 = v56;
                v7 = v57;
                v6 = v112;
                v5 = v58;
              }

              *(v5 + 16) = v54 - 31;
              *(v5 + v54++) = 32;
              --v55;
            }

            while (v55);
            goto LABEL_116;
          }

          goto LABEL_4;
        }

        if (v12)
        {
          v59 = 125;
        }

        else
        {
          v59 = 93;
        }

        v60 = *(v5 + 16);
        v61 = *(v5 + 24) >> 1;
        v62 = v60 + 1;
        if (v61 <= v60)
        {
          v92 = v8;
          v93 = v7;
          sub_21B1059A8();
          v8 = v92;
          v7 = v93;
          v6 = v112;
          v5 = v94;
          v61 = *(v94 + 24) >> 1;
        }

        *(v5 + 16) = v62;
        *(v5 + v60 + 32) = v59;
        v63 = v60 + 2;
        if (v61 < (v60 + 2))
        {
          v95 = v8;
          v96 = v7;
          sub_21B1059A8();
          v8 = v95;
          v7 = v96;
          v6 = v112;
          v5 = v97;
        }

        *(v5 + 16) = v63;
        *(v5 + v62 + 32) = 44;
        v110 = v15;
        if (v6 >= 1)
        {
          if ((v60 + 3) > *(v5 + 24) >> 1)
          {
            v103 = v8;
            v104 = v7;
            sub_21B1059A8();
            v8 = v103;
            v7 = v104;
            v6 = v112;
            v5 = v105;
          }

          *(v5 + 16) = v60 + 3;
          *(v5 + v63 + 32) = 10;
          if (v15 < 0)
          {
            goto LABEL_125;
          }

          v110 = 0;
          if (!v15)
          {
            continue;
          }

          v64 = v60 + 35;
          v65 = v15;
          do
          {
            if (v64 - 32 >= *(v5 + 24) >> 1)
            {
              v66 = v8;
              v67 = v7;
              sub_21B1059A8();
              v8 = v66;
              v7 = v67;
              v6 = v112;
              v5 = v68;
            }

            *(v5 + 16) = v64 - 31;
            *(v5 + v64++) = 32;
            --v65;
          }

          while (v65);
LABEL_78:
          v110 = v15;
        }

        break;
      case 2:
        if (v10 && v10 != 3)
        {
          goto LABEL_128;
        }

        v47 = v8;
        v48 = v7;
        v49 = *(v5 + 16);
        if (v49 >= *(v5 + 24) >> 1)
        {
          sub_21B1059A8();
          v5 = v78;
        }

        *(v5 + 16) = v49 + 1;
        *(v5 + v49 + 32) = 34;
        sub_21B10E51C(v12, v13);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v79 = *(v5 + 16);
          sub_21B1059A8();
          v5 = v80;
        }

        v8 = v47;
        v50 = *(v5 + 16);
        v51 = *(v5 + 24) >> 1;
        v52 = v50 + 1;
        v6 = v112;
        if (v51 <= v50)
        {
          sub_21B1059A8();
          v8 = v47;
          v6 = v112;
          v5 = v81;
          v51 = *(v81 + 24) >> 1;
        }

        *(v5 + 16) = v52;
        *(v5 + v50 + 32) = 34;
        v53 = v50 + 2;
        if (v51 < (v50 + 2))
        {
          sub_21B1059A8();
          v8 = v47;
          v6 = v112;
          v5 = v82;
        }

        *(v5 + 16) = v53;
        *(v5 + v52 + 32) = 58;
        v110 = v15;
        v7 = v48;
        if (v6 < 1)
        {
          continue;
        }

        if ((v50 + 3) > *(v5 + 24) >> 1)
        {
          sub_21B1059A8();
          v8 = v47;
          v7 = v48;
          v6 = v112;
          v5 = v83;
        }

        *(v5 + 16) = v50 + 3;
        *(v5 + v53 + 32) = 32;
        goto LABEL_78;
      case 3:
        v30 = (v10 - 2) < 2 || v10 == 0;
        v107 = v7;
        v108 = v8;
        if (v30)
        {
          v31 = *(v5 + 16);
          if (v31 >= *(v5 + 24) >> 1)
          {
            sub_21B1059A8();
            v5 = v87;
          }

          *(v5 + 16) = v31 + 1;
          *(v5 + v31 + 32) = 34;
          sub_21B10E51C(v12, v13);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v88 = *(v5 + 16);
            sub_21B1059A8();
            v5 = v89;
          }

          v8 = v108;
          v32 = *(v5 + 16);
          v33 = *(v5 + 24) >> 1;
          v34 = v32 + 1;
          v6 = v112;
          if (v33 <= v32)
          {
            sub_21B1059A8();
            v8 = v108;
            v6 = v112;
            v5 = v90;
            v33 = *(v90 + 24) >> 1;
          }

          *(v5 + 16) = v34;
          *(v5 + v32 + 32) = 34;
          v35 = v32 + 2;
          if (v33 < (v32 + 2))
          {
            sub_21B1059A8();
            v8 = v108;
            v6 = v112;
            v5 = v91;
          }

          *(v5 + 16) = v35;
          *(v5 + v34 + 32) = 44;
          v110 = v15;
          v7 = v107;
          if (v6 >= 1)
          {
            if ((v32 + 3) > *(v5 + 24) >> 1)
            {
              sub_21B1059A8();
              v7 = v107;
              v8 = v108;
              v6 = v112;
              v5 = v102;
            }

            *(v5 + 16) = v32 + 3;
            *(v5 + v35 + 32) = 10;
            if (v15 < 0)
            {
              goto LABEL_124;
            }

            v110 = 0;
            if (v15)
            {
              v36 = v32 + 35;
              v37 = v15;
              do
              {
                if (v36 - 32 >= *(v5 + 24) >> 1)
                {
                  sub_21B1059A8();
                  v7 = v107;
                  v8 = v108;
                  v6 = v112;
                  v5 = v38;
                }

                *(v5 + 16) = v36 - 31;
                *(v5 + v36++) = 32;
                --v37;
              }

              while (v37);
              goto LABEL_78;
            }
          }
        }

        else
        {
          v69 = *(v5 + 16);
          if (v69 >= *(v5 + 24) >> 1)
          {
            sub_21B1059A8();
            v5 = v98;
          }

          *(v5 + 16) = v69 + 1;
          *(v5 + v69 + 32) = 34;
          sub_21B10E51C(v12, v13);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v99 = *(v5 + 16);
            sub_21B1059A8();
            v5 = v100;
          }

          v70 = *(v5 + 16);
          v71 = v70 + 1;
          v6 = v112;
          v7 = v107;
          v8 = v108;
          if (v70 >= *(v5 + 24) >> 1)
          {
            sub_21B1059A8();
            v7 = v107;
            v8 = v108;
            v6 = v112;
            v5 = v101;
          }

          *(v5 + 16) = v71;
          *(v5 + v70 + 32) = 34;
          v110 = v15;
          if (v6 >= 1)
          {
            v23 = v15 - v6;
            if (__OFSUB__(v15, v6))
            {
              goto LABEL_126;
            }

            if (v23 < 0)
            {
              goto LABEL_127;
            }

            if ((v70 + 2) > *(v5 + 24) >> 1)
            {
              sub_21B1059A8();
              v7 = v107;
              v8 = v108;
              v6 = v112;
              v5 = v106;
            }

            v110 = 0;
            *(v5 + 16) = v70 + 2;
            *(v5 + v71 + 32) = 10;
            if (v23)
            {
              v72 = v70 + 34;
              v73 = v23;
              do
              {
                if (v72 - 32 >= *(v5 + 24) >> 1)
                {
                  sub_21B1059A8();
                  v7 = v107;
                  v8 = v108;
                  v6 = v112;
                  v5 = v74;
                }

                *(v5 + 16) = v72 - 31;
                *(v5 + v72++) = 32;
                --v73;
              }

              while (v73);
LABEL_116:
              v110 = v23;
            }
          }
        }

        continue;
      default:
        if (v12)
        {
          v39 = 123;
        }

        else
        {
          v39 = 91;
        }

        v40 = *(v5 + 16);
        v41 = v40 + 1;
        if (v40 >= *(v5 + 24) >> 1)
        {
          v75 = v8;
          v76 = v7;
          sub_21B1059A8();
          v8 = v75;
          v7 = v76;
          v6 = v112;
          v5 = v77;
        }

        *(v5 + 16) = v41;
        *(v5 + v40 + 32) = v39;
        v110 = v15;
        if (v6 < 1)
        {
          continue;
        }

        v23 = v15 + v6;
        if (__OFADD__(v15, v6))
        {
          goto LABEL_122;
        }

        if ((v40 + 2) > *(v5 + 24) >> 1)
        {
          v84 = v8;
          v85 = v7;
          sub_21B1059A8();
          v8 = v84;
          v7 = v85;
          v6 = v112;
          v5 = v86;
        }

        *(v5 + 16) = v40 + 2;
        *(v5 + v41 + 32) = 10;
        if (v23 < 0)
        {
          goto LABEL_123;
        }

        v110 = 0;
        if (!v23)
        {
          continue;
        }

        v42 = v40 + 34;
        v43 = v23;
        do
        {
          if (v42 - 32 >= *(v5 + 24) >> 1)
          {
            v44 = v8;
            v45 = v7;
            sub_21B1059A8();
            v8 = v44;
            v7 = v45;
            v6 = v112;
            v5 = v46;
          }

          *(v5 + 16) = v42 - 31;
          *(v5 + v42++) = 32;
          --v43;
        }

        while (v43);
        goto LABEL_116;
    }
  }

LABEL_120:
  __break(1u);
LABEL_121:
  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
}

uint64_t AvroSchemaEncoder.encode(_:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for SchemaEncoder();
  v6 = a1;
  v7 = v5;
  v8 = sub_21B10D668(v6);
  if (!v2)
  {
    sub_21B10D774(v8, a2);
    v10 = v9;

    v11 = *(v10 + 16);
    v7 = sub_21B1124B4();
  }

  return v7;
}

uint64_t _s9SwiftAvro0B13SchemaEncoderV16OutputFormattingV9hashValueSivg_0(uint64_t a1)
{
  sub_21B112EC4();
  MEMORY[0x21CEEA150](a1);
  return sub_21B112F14();
}

uint64_t sub_21B10E3A4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_21B112EC4();
  a4(v8, v6);
  return sub_21B112F14();
}

unint64_t sub_21B10E3F4()
{
  result = qword_27CD47B90;
  if (!qword_27CD47B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47B90);
  }

  return result;
}

unint64_t sub_21B10E44C()
{
  result = qword_27CD47B98;
  if (!qword_27CD47B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47B98);
  }

  return result;
}

void sub_21B10E4B8(uint64_t a1)
{
  v3 = *v1;
  if (!swift_isUniquelyReferenced_nonNull_native() || a1 > *(v3 + 24) >> 1)
  {
    if (*(v3 + 16) > a1)
    {
      v4 = *(v3 + 16);
    }

    sub_21B1057C8();
    v3 = v5;
  }

  *v1 = v3;
}

uint64_t sub_21B10E51C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    v3 = sub_21B112514();
  }

  else if ((a2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v3 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v4 = *(*v2 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
    goto LABEL_14;
  }

  sub_21B110690(result);
  v6 = *v2;
  v7 = *(*v2 + 16);
  v8 = *(*v2 + 24) >> 1;
  result = sub_21B112914();
  if ((v9 & 1) == 0)
  {
    v10 = result;

    if (v10 >= v3)
    {
      if (v10 < 1)
      {
LABEL_11:
        *v2 = v6;
        return result;
      }

      v11 = *(v6 + 16);
      v12 = __OFADD__(v11, v10);
      v13 = v11 + v10;
      if (!v12)
      {
        *(v6 + 16) = v13;
        goto LABEL_11;
      }

      goto LABEL_15;
    }

LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_21B10E5F8(uint64_t result)
{
  v1 = 0;
  v2 = (result + 48);
  v3 = *(result + 16) + 1;
  do
  {
    if (!--v3)
    {
      return v1;
    }

    v4 = *v2;
    if (v4 >= 2)
    {
      v6 = *(v2 - 2);
      v7 = *(v2 - 1);
      if (v4 == 2)
      {
        if ((v7 & 0x1000000000000000) != 0)
        {
          result = sub_21B112514();
        }

        else if ((v7 & 0x2000000000000000) != 0)
        {
          result = HIBYTE(v7) & 0xF;
        }

        else
        {
          result = v6 & 0xFFFFFFFFFFFFLL;
        }

        v5 = result + 3;
        if (__OFADD__(result, 3))
        {
          goto LABEL_25;
        }
      }

      else
      {
        if ((v7 & 0x1000000000000000) != 0)
        {
          result = sub_21B112514();
        }

        else if ((v7 & 0x2000000000000000) != 0)
        {
          result = HIBYTE(v7) & 0xF;
        }

        else
        {
          result = v6 & 0xFFFFFFFFFFFFLL;
        }

        v5 = result + 2;
        if (__OFADD__(result, 2))
        {
          goto LABEL_24;
        }
      }
    }

    else
    {
      v5 = 1;
    }

    v2 += 24;
    v8 = __OFADD__(v1, v5);
    v1 += v5;
  }

  while (!v8);
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_21B10E6B8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  switch(a3)
  {
    case 1:
      result = a6 == 1 && ((a4 ^ a1) & 1) == 0;
      break;
    case 2:
      if (a6 != 2)
      {
        goto LABEL_12;
      }

      goto LABEL_6;
    case 3:
      if (a6 == 3)
      {
LABEL_6:
        if (a1 == a4 && a2 == a5)
        {
          result = 1;
        }

        else
        {
          result = sub_21B112D04();
        }
      }

      else
      {
LABEL_12:
        result = 0;
      }

      break;
    default:
      if (a6)
      {
        result = 0;
      }

      else
      {
        result = ((a4 ^ a1) & 1) == 0;
      }

      break;
  }

  return result;
}

uint64_t sub_21B10E754(uint64_t a1, char a2, uint64_t a3, char a4)
{
  switch(a4)
  {
    case 1:
      v5 = 1;
      goto LABEL_9;
    case 2:
      v6 = 2;
      goto LABEL_5;
    case 3:
      v6 = 3;
LABEL_5:
      MEMORY[0x21CEEA150](v6);

      result = _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
      break;
    default:
      v5 = 0;
LABEL_9:
      MEMORY[0x21CEEA150](v5);
      result = MEMORY[0x21CEEA150](a2 & 1);
      break;
  }

  return result;
}

uint64_t sub_21B10E7FC(char a1, uint64_t a2, char a3)
{
  sub_21B112EC4();
  sub_21B10E754(v7, a1, a2, a3);
  return sub_21B112F14();
}

uint64_t sub_21B10E874()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_21B112EC4();
  sub_21B10E754(v5, v1, v2, v3);
  return sub_21B112F14();
}

void *sub_21B10E8E8()
{
  v1 = v0;
  sub_21B112964();
  v2 = MEMORY[0x277D84F90];
  v1[3] = sub_21B112334();
  v1[4] = sub_21B112334();
  v1[6] = v2;
  v1[2] = v2;
  v1[5] = v2;
  swift_beginAccess();
  sub_21B10E4B8(64);
  swift_endAccess();
  return v1;
}

uint64_t sub_21B10EA30(void (*a1)(uint64_t))
{
  swift_beginAccess();
  v3 = *(v1[6] + 16);
  v4 = v1[2];

  a1(v5);
  sub_21B10F7F0(v1, v3, v4);
}

uint64_t sub_21B10EAC8()
{
  OUTLINED_FUNCTION_0_33();
  swift_beginAccess();
  sub_21B105F98();
  v1 = *(v0[5] + 16);
  sub_21B10603C(v1);
  OUTLINED_FUNCTION_2_31(v1 + 1);
  v4 = v3 + v1 * v2;
  *(v4 + 32) = xmmword_21B12B800;
  *(v4 + 48) = 0;
  v0[5] = v3;
  swift_endAccess();
  OUTLINED_FUNCTION_0_33();
  swift_beginAccess();
  sub_21B105F80();
  v5 = *(v0[6] + 16);
  sub_21B106024(v5);
  v6 = v0[6];
  *(v6 + 16) = v5 + 1;
  *(v6 + v5 + 32) = 1;
  v0[6] = v6;
  swift_endAccess();
  v8 = v0[2];
  type metadata accessor for KeyedContainer();

  swift_getWitnessTable();
  return sub_21B112B64();
}

uint64_t sub_21B10EC08@<X0>(void *a1@<X8>)
{
  v2 = v1;
  OUTLINED_FUNCTION_0_33();
  swift_beginAccess();
  sub_21B105F98();
  v4 = *(v1[5] + 16);
  sub_21B10603C(v4);
  v5 = v1[5];
  *(v5 + 16) = v4 + 1;
  v6 = v5 + 24 * v4;
  *(v6 + 32) = 0;
  *(v6 + 40) = 0;
  *(v6 + 48) = 0;
  v1[5] = v5;
  swift_endAccess();
  OUTLINED_FUNCTION_0_33();
  swift_beginAccess();
  sub_21B105F80();
  v7 = *(v1[6] + 16);
  sub_21B106024(v7);
  v8 = v1[6];
  *(v8 + 16) = v7 + 1;
  *(v8 + v7 + 32) = 0;
  v1[6] = v8;
  swift_endAccess();
  v9 = v1[2];
  a1[3] = &unk_282C98628;
  a1[4] = sub_21B11054C();
  *a1 = 0;
  a1[1] = v9;
  a1[2] = v2;
}

uint64_t sub_21B10ED04@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  a1[3] = &unk_282C986B0;
  a1[4] = sub_21B10FCA4();
  *a1 = v3;
  a1[1] = v1;
}

uint64_t sub_21B10ED64(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_0_33();
  swift_beginAccess();

  sub_21B105F98();
  v5 = *(*(v2 + 40) + 16);
  sub_21B10603C(v5);
  v6 = *(v2 + 40);
  *(v6 + 16) = v5 + 1;
  v7 = v6 + 24 * v5;
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;
  *(v7 + 48) = 3;
  *(v2 + 40) = v6;
  return swift_endAccess();
}

uint64_t sub_21B10EE00(uint64_t a1, uint64_t a2)
{
  v5 = sub_21B112F54();
  v7 = v6;
  OUTLINED_FUNCTION_0_33();
  swift_beginAccess();
  sub_21B105F98();
  v8 = *(*(v2 + 40) + 16);
  sub_21B10603C(v8);
  OUTLINED_FUNCTION_2_31(v8 + 1);
  v11 = v10 + v8 * v9;
  *(v11 + 32) = v5;
  *(v11 + 40) = v7;
  OUTLINED_FUNCTION_3_30(v11);
  return sub_21B10ED64(a1, a2);
}

uint64_t sub_21B10EEB4(unint64_t a1, uint64_t *a2)
{
  if (a1 >> 61 == 3)
  {
    v5 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
    v7[0] = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v7[1] = v5;
    v7[2] = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
    v8 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
    sub_21AFC5454(v7, v6);
    sub_21B10F508(v7);
    return sub_21B0CAA60(v7);
  }

  else if (a1 >> 61)
  {
    v6[3] = *a2;
    v6[4] = sub_21B110934();
    v6[0] = a2;

    AvroSchema.encode(to:)(v6, a1);
    return __swift_destroy_boxed_opaque_existential_0(v6);
  }

  else
  {
    return sub_21B10F318(*(a1 + 16));
  }
}

uint64_t sub_21B10EFA8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v30 = a4;
  v21 = *a2;
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](a1);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v21 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = *(v8 + 16);
  v16(&v21 - v17, a1);
  if ((swift_dynamicCast() & 1) == 0)
  {
    (v16)(v15, a1, a3);
    if (swift_dynamicCast())
    {
      return sub_21B10F318(v22);
    }

    (v16)(v12, a1, a3);
    if (swift_dynamicCast())
    {
      v28[0] = v22;
      v28[1] = v23;
      v28[2] = v24;
      v29 = v25;
      sub_21B10F508(v28);
      return sub_21B0CAA60(v28);
    }

    *(&v23 + 1) = v21;
    *&v24 = sub_21B110934();
    *&v22 = a2;

    sub_21B112354();
    return __swift_destroy_boxed_opaque_existential_0(&v22);
  }

  if (v22 >> 61 != 3)
  {
    if (!(v22 >> 61))
    {
      v18 = *(v22 + 16);

      sub_21B10F318(v18);
    }

    *(&v23 + 1) = v21;
    *&v24 = sub_21B110934();
    *&v22 = a2;

    sub_21B112354();

    return __swift_destroy_boxed_opaque_existential_0(&v22);
  }

  v20 = *((v22 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
  v26[0] = *((v22 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v26[1] = v20;
  v26[2] = *((v22 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
  v27 = *((v22 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);

  sub_21AFC5454(v26, &v22);
  sub_21B10F508(v26);
  if (v4)
  {
    sub_21B0CAA60(v26);
  }

  sub_21B0CAA60(v26);
}

uint64_t sub_21B10F318(char a1)
{
  swift_beginAccess();
  if (*(*(v1 + 40) + 16))
  {
    v3 = sub_21B0F6BC8(a1);
    v5 = v4;
    swift_beginAccess();
    sub_21B105F98();
    v6 = *(*(v1 + 40) + 16);
    sub_21B10603C(v6);
    v7 = *(v1 + 40);
    *(v7 + 16) = v6 + 1;
    v8 = v7 + 24 * v6;
    *(v8 + 32) = v3;
    *(v8 + 40) = v5;
    v9 = 3;
  }

  else
  {
    swift_beginAccess();
    sub_21B105F98();
    v10 = *(*(v1 + 40) + 16);
    sub_21B10603C(v10);
    v11 = *(v1 + 40);
    *(v11 + 16) = v10 + 1;
    v12 = v11 + 24 * v10;
    *(v12 + 32) = xmmword_21B12B800;
    *(v12 + 48) = 0;
    *(v1 + 40) = v11;
    sub_21B105F98();
    v13 = *(*(v1 + 40) + 16);
    sub_21B10603C(v13);
    v14 = *(v1 + 40);
    *(v14 + 16) = v13 + 1;
    v15 = v14 + 24 * v13;
    *(v15 + 32) = xmmword_21B12F6F0;
    *(v15 + 48) = 2;
    *(v1 + 40) = v14;
    v16 = sub_21B0F6BC8(a1);
    v18 = v17;
    sub_21B105F98();
    v19 = *(*(v1 + 40) + 16);
    sub_21B10603C(v19);
    v20 = *(v1 + 40);
    *(v20 + 16) = v19 + 1;
    v21 = v20 + 24 * v19;
    *(v21 + 32) = v16;
    *(v21 + 40) = v18;
    *(v21 + 48) = 3;
    *(v1 + 40) = v20;
    sub_21B105F98();
    v22 = *(*(v1 + 40) + 16);
    sub_21B10603C(v22);
    v7 = *(v1 + 40);
    *(v7 + 16) = v22 + 1;
    v8 = v7 + 24 * v22;
    *(v8 + 32) = xmmword_21B12B800;
    v9 = 1;
  }

  *(v8 + 48) = v9;
  *(v1 + 40) = v7;
  return swift_endAccess();
}

uint64_t sub_21B10F508(uint64_t a1)
{
  v3 = v1;
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *v1;
  swift_beginAccess();
  sub_21AFC5454(a1, v18);
  sub_21B110778(a1, v5, v6, &v19);
  swift_endAccess();
  v8 = *(&v19 + 1);
  if (!*(&v19 + 1))
  {
    *(&v20 + 1) = v7;
    *&v21 = sub_21B110934();
    *&v19 = v3;

    AvroRecordSchema.encode(to:)(&v19);
    return __swift_destroy_boxed_opaque_existential_0(&v19);
  }

  v27 = v2;
  v9 = v19;
  v23 = v19;
  v24 = v20;
  v25 = v21;
  v26 = v22;
  if (static AvroRecordSchema.__derived_struct_equals(_:_:)())
  {
    sub_21B110988(v9, v8);
    *(&v20 + 1) = v7;
    *&v21 = sub_21B110934();
    *&v19 = v3;

    sub_21B112504();
    return __swift_destroy_boxed_opaque_existential_0(&v19);
  }

  v11 = swift_allocObject();
  v12 = v24;
  *(v11 + 16) = v23;
  *(v11 + 32) = v12;
  *(v11 + 48) = v25;
  *(v11 + 64) = v26;
  v13 = v11 | 0x6000000000000000;
  v14 = swift_allocObject();
  v15 = *(a1 + 16);
  *(v14 + 16) = *a1;
  *(v14 + 32) = v15;
  *(v14 + 48) = *(a1 + 32);
  *(v14 + 64) = *(a1 + 48);
  v16 = v14 | 0x6000000000000000;
  sub_21B10BCAC();
  swift_allocError();
  *v17 = v13;
  v17[1] = v16;
  swift_willThrow();
  return sub_21AFC5454(a1, &v19);
}

uint64_t sub_21B10F72C()
{
  v1 = sub_21B112F54();
  v3 = v2;
  OUTLINED_FUNCTION_0_33();
  swift_beginAccess();
  sub_21B105F98();
  v4 = *(*(v0 + 40) + 16);
  sub_21B10603C(v4);
  OUTLINED_FUNCTION_2_31(v4 + 1);
  v7 = v6 + v4 * v5;
  *(v7 + 32) = v1;
  *(v7 + 40) = v3;
  OUTLINED_FUNCTION_3_30(v7);
  return sub_21B10E9F0();
}

void sub_21B10F7F0(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  while (1)
  {
    v6 = a1[6];
    v7 = *(v6 + 16);
    if (v7 <= a2)
    {
      v25 = a1[2];
      a1[2] = a3;

      return;
    }

    swift_beginAccess();
    if (!v7)
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    a1[6] = v6;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_21B10BC24(v6);
      v6 = v18;
    }

    v9 = *(v6 + 16);
    if (!v9)
    {
      goto LABEL_21;
    }

    v10 = v9 - 1;
    v11 = *(v6 + v10 + 32);
    *(v6 + 16) = v10;
    a1[6] = v6;
    swift_endAccess();
    if (v11)
    {
      swift_beginAccess();
      v12 = a1[5];
      v13 = swift_isUniquelyReferenced_nonNull_native();
      a1[5] = v12;
      if ((v13 & 1) == 0)
      {
        v19 = *(v12 + 16);
        sub_21B1057C8();
        v12 = v20;
        a1[5] = v20;
      }

      v14 = *(v12 + 16);
      if (v14 >= *(v12 + 24) >> 1)
      {
        sub_21B1057C8();
        v12 = v21;
      }

      *(v12 + 16) = v14 + 1;
      v15 = v12 + 24 * v14;
      *(v15 + 32) = xmmword_21B12B800;
    }

    else
    {
      swift_beginAccess();
      v12 = a1[5];
      v16 = swift_isUniquelyReferenced_nonNull_native();
      a1[5] = v12;
      if ((v16 & 1) == 0)
      {
        v22 = *(v12 + 16);
        sub_21B1057C8();
        v12 = v23;
        a1[5] = v23;
      }

      v17 = *(v12 + 16);
      if (v17 >= *(v12 + 24) >> 1)
      {
        sub_21B1057C8();
        v12 = v24;
      }

      *(v12 + 16) = v17 + 1;
      v15 = v12 + 24 * v17;
      *(v15 + 32) = 0;
      *(v15 + 40) = 0;
    }

    *(v15 + 48) = 1;
    a1[5] = v12;
    swift_endAccess();
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

void *sub_21B10FA0C()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  return v0;
}

uint64_t sub_21B10FA4C()
{
  sub_21B10FA0C();

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

_BYTE *sub_21B10FA80(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_21B10FB74()
{
  result = qword_27CD47BA0;
  if (!qword_27CD47BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47BA0);
  }

  return result;
}

unint64_t sub_21B10FBCC()
{
  result = qword_27CD47BA8;
  if (!qword_27CD47BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47BA8);
  }

  return result;
}

unint64_t sub_21B10FCA4()
{
  result = qword_27CD47BB0;
  if (!qword_27CD47BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47BB0);
  }

  return result;
}

uint64_t sub_21B10FCF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 8);
  v7 = *(a4 + 16);
  v6 = *(a4 + 24);
  return sub_21B10EE00(a1, a2);
}

uint64_t sub_21B10FD24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 8);
  v5 = *(a3 + 16);
  v6 = *(a3 + 24);
  return sub_21B10F72C();
}

uint64_t sub_21B1100D8(uint64_t result, uint64_t a2)
{
  if (__OFADD__(*v2, 1))
  {
    __break(1u);
  }

  else
  {
    ++*v2;
    v3 = v2[2];
    return sub_21B10ED64(result, a2);
  }

  return result;
}

uint64_t sub_21B110118()
{
  if (__OFADD__(*v0, 1))
  {
    __break(1u);
  }

  else
  {
    ++*v0;
    v1 = v0[2];
    return sub_21B10E9F0();
  }

  return result;
}

unint64_t sub_21B11054C()
{
  result = qword_27CD47BB8;
  if (!qword_27CD47BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47BB8);
  }

  return result;
}

void *sub_21B1105B8(unint64_t a1, uint64_t a2, uint64_t a3, void *__src, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = memcpy((a5[7] + 72 * a1), __src, 0x41uLL);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t sub_21B11062C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = a5[7] + 56 * result;
  v7 = *(a4 + 16);
  *v6 = *a4;
  *(v6 + 16) = v7;
  *(v6 + 32) = *(a4 + 32);
  *(v6 + 48) = *(a4 + 48);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

void sub_21B110690(uint64_t a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!isUniquelyReferenced_nonNull_native || a1 > *(v3 + 24) >> 1)
  {
    if (*(v3 + 16) > a1)
    {
      v5 = *(v3 + 16);
    }

    sub_21B1059A8();
    *v1 = v6;
  }
}

uint64_t sub_21B1106F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47BC0, &qword_21B12FA30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21B110760(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 0xFE) == 2)
  {
  }

  return result;
}

unint64_t sub_21B110778@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *v4;
  swift_isUniquelyReferenced_nonNull_native();
  v24 = *v4;
  v10 = sub_21AF98B58(a2, a3);
  if (__OFADD__(v24[2], (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v12 = v10;
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CD47BD0, &qword_21B12FA38);
  result = sub_21B112994();
  if (result)
  {
    result = sub_21AF98B58(a2, a3);
    if ((v13 & 1) == (v15 & 1))
    {
      v12 = result;
      goto LABEL_5;
    }

LABEL_10:
    result = sub_21B112E54();
    __break(1u);
    return result;
  }

LABEL_5:
  if (v13)
  {
    v16 = v24[7] + 56 * v12;
    v17 = *v16;
    v18 = *(v16 + 8);
    v19 = *(v16 + 16);
    v20 = *(v16 + 24);
    v21 = *(v16 + 32);
    v22 = *(v16 + 48);
    v23 = *(a1 + 16);
    *v16 = *a1;
    *(v16 + 16) = v23;
    *(v16 + 32) = *(a1 + 32);
    *(v16 + 48) = *(a1 + 48);
  }

  else
  {
    sub_21B11062C(v12, a2, a3, a1, v24);

    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v22 = 0;
    v21 = 0uLL;
  }

  *a4 = v17;
  *(a4 + 8) = v18;
  *(a4 + 16) = v19;
  *(a4 + 24) = v20;
  *(a4 + 32) = v21;
  *(a4 + 48) = v22;
  *v4 = v24;
  return result;
}

unint64_t sub_21B110934()
{
  result = qword_27CD47BC8;
  if (!qword_27CD47BC8)
  {
    type metadata accessor for SchemaEncoder();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47BC8);
  }

  return result;
}

uint64_t sub_21B110988(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_21B110A0C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_21B110A54(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_21B110A94(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t OUTLINED_FUNCTION_3_30@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 48) = 2;
  *(v2 + 40) = v1;

  return swift_endAccess();
}