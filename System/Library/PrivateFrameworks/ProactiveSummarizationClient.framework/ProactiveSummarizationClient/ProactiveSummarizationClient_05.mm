char *sub_1CFD35A5C(int64_t a1, char a2)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if (!result || a1 > *(v5 + 3) >> 1)
  {
    if (*(v5 + 2) <= a1)
    {
      v7 = a1;
    }

    else
    {
      v7 = *(v5 + 2);
    }

    result = sub_1CFD34880(result, v7, a2 & 1, v5);
    *v2 = result;
  }

  return result;
}

void *sub_1CFD35AC4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = sub_1CFD34BA8(*(a1 + 16), 0);
  v4 = sub_1CFD39518(&v6, v3 + 2, v1, a1);

  if (v4 != v1)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

unint64_t sub_1CFD35B58()
{
  result = qword_1EC4FEE98;
  if (!qword_1EC4FEE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4FEE98);
  }

  return result;
}

unint64_t sub_1CFD35BAC()
{
  result = qword_1EC4FEEA0;
  if (!qword_1EC4FEEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4FEEA0);
  }

  return result;
}

unint64_t sub_1CFD35C00()
{
  result = qword_1EC4FEEA8;
  if (!qword_1EC4FEEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4FEEA8);
  }

  return result;
}

unint64_t sub_1CFD35C54()
{
  result = qword_1EC4FEEB0;
  if (!qword_1EC4FEEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4FEEB0);
  }

  return result;
}

unint64_t sub_1CFD35CA8()
{
  result = qword_1EC4FEEB8;
  if (!qword_1EC4FEEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4FEEB8);
  }

  return result;
}

unint64_t sub_1CFD35CFC()
{
  result = qword_1EC4FEEC0;
  if (!qword_1EC4FEEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4FEEC0);
  }

  return result;
}

unint64_t sub_1CFD35D50()
{
  result = qword_1EC4FEEC8;
  if (!qword_1EC4FEEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4FEEC8);
  }

  return result;
}

unint64_t sub_1CFD35DA4()
{
  result = qword_1EC4FEED0;
  if (!qword_1EC4FEED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4FEED0);
  }

  return result;
}

unint64_t sub_1CFD35DF8()
{
  result = qword_1EC4F3490;
  if (!qword_1EC4F3490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F3490);
  }

  return result;
}

unint64_t sub_1CFD35E4C()
{
  result = qword_1EC4F34A0;
  if (!qword_1EC4F34A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F34A0);
  }

  return result;
}

uint64_t sub_1CFD35F00()
{
  OUTLINED_FUNCTION_137();
  v2 = v1(0);
  OUTLINED_FUNCTION_25(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_27();
  v6(v5);
  return v0;
}

uint64_t sub_1CFD35F58()
{
  OUTLINED_FUNCTION_137();
  v2 = v1(0);
  OUTLINED_FUNCTION_25(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_27();
  v6(v5);
  return v0;
}

uint64_t sub_1CFD35FB0()
{
  v1 = OUTLINED_FUNCTION_21();
  v3 = v2(v1);
  OUTLINED_FUNCTION_25(v3);
  (*(v4 + 8))(v0);
  return v0;
}

void sub_1CFD3601C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (a1 < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < a1 || (a6 >> 1) < a2)
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
    swift_unknownObjectRetain();
    OUTLINED_FUNCTION_70();
    return;
  }

LABEL_12:
  __break(1u);
}

unint64_t sub_1CFD360C4()
{
  result = qword_1EC4FEED8;
  if (!qword_1EC4FEED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4FEED8);
  }

  return result;
}

unint64_t sub_1CFD36118()
{
  result = qword_1EC4FEEE0;
  if (!qword_1EC4FEEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4FEEE0);
  }

  return result;
}

unint64_t sub_1CFD3616C()
{
  result = qword_1EC4FEEE8;
  if (!qword_1EC4FEEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4FEEE8);
  }

  return result;
}

unint64_t sub_1CFD361C0()
{
  result = qword_1EC4FEEF0;
  if (!qword_1EC4FEEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4FEEF0);
  }

  return result;
}

unint64_t sub_1CFD36234()
{
  result = qword_1EC4FEEF8;
  if (!qword_1EC4FEEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4FEEF8);
  }

  return result;
}

unint64_t sub_1CFD36288()
{
  result = qword_1EC4FEF00;
  if (!qword_1EC4FEF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4FEF00);
  }

  return result;
}

unint64_t sub_1CFD362DC()
{
  result = qword_1EC4FEF08;
  if (!qword_1EC4FEF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4FEF08);
  }

  return result;
}

unint64_t sub_1CFD36330()
{
  result = qword_1EC4FEF10;
  if (!qword_1EC4FEF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4FEF10);
  }

  return result;
}

unint64_t sub_1CFD36384()
{
  result = qword_1EC4FEF18[0];
  if (!qword_1EC4FEF18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4FEF18);
  }

  return result;
}

uint64_t sub_1CFD365A0(uint64_t a1, unint64_t a2)
{
  if (a2 >= 6)
  {
  }

  return result;
}

uint64_t sub_1CFD365B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2EB8, &unk_1CFD4BF50);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1CFD36680()
{
  result = qword_1EC4F3560;
  if (!qword_1EC4F3560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F3560);
  }

  return result;
}

unint64_t sub_1CFD366D4()
{
  result = qword_1EC4F3568;
  if (!qword_1EC4F3568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F3568);
  }

  return result;
}

unint64_t sub_1CFD367C0()
{
  result = qword_1EC4F3578;
  if (!qword_1EC4F3578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F3578);
  }

  return result;
}

unint64_t sub_1CFD36818()
{
  result = qword_1EC4F3580;
  if (!qword_1EC4F3580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F3580);
  }

  return result;
}

unint64_t sub_1CFD36870()
{
  result = qword_1EC4F3588;
  if (!qword_1EC4F3588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F3588);
  }

  return result;
}

unint64_t sub_1CFD368C8()
{
  result = qword_1EC4F3590;
  if (!qword_1EC4F3590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F3590);
  }

  return result;
}

unint64_t sub_1CFD36920()
{
  result = qword_1EC4F3598;
  if (!qword_1EC4F3598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F3598);
  }

  return result;
}

uint64_t sub_1CFD36990(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_3_2(-1);
  }

  if (a2 < 0 && *(a1 + 18))
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

  return OUTLINED_FUNCTION_3_2(v2);
}

uint64_t sub_1CFD369CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 18) = 1;
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

      return OUTLINED_FUNCTION_132_0(result, a2);
    }

    *(result + 18) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_132_0(result, a2);
    }
  }

  return result;
}

void sub_1CFD36A6C()
{
  type metadata accessor for ModelInputAndOutputKind(319);
  if (v0 <= 0x3F)
  {
    sub_1CFD04BF0(319, &unk_1EDDD3760);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      OUTLINED_FUNCTION_141_0();
    }
  }
}

uint64_t sub_1CFD36B34()
{
  result = sub_1CFD48D98();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return OUTLINED_FUNCTION_141_0();
  }

  return result;
}

void sub_1CFD36BB0()
{
  sub_1CFD1B268();
  if (v0 <= 0x3F)
  {
    sub_1CFD1B2FC();
    if (v1 <= 0x3F)
    {
      sub_1CFD1B390();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        OUTLINED_FUNCTION_141_0();
      }
    }
  }
}

uint64_t sub_1CFD36C4C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  OUTLINED_FUNCTION_346();
  v3 = type metadata accessor for ModelContentInput.Status();
  if (v4 <= 0x3F)
  {
    sub_1CFD04BF0(319, qword_1EDDD3340);
    v3 = v5;
    if (v6 <= 0x3F)
    {
      sub_1CFD49338();
      sub_1CFD49218();
      v7 = sub_1CFD49338();
      if (v8 > 0x3F)
      {
        return v7;
      }

      OUTLINED_FUNCTION_346();
      type metadata accessor for ModelContentInput.EntityStatus();
      v7 = sub_1CFD49218();
      if (v9 > 0x3F)
      {
        return v7;
      }

      sub_1CFD17D6C();
      if (v10 > 0x3F)
      {
        return v7;
      }

      sub_1CFD04BF0(319, &unk_1EDDD3760);
      if (v11 > 0x3F)
      {
        return v7;
      }

      else
      {
        v3 = type metadata accessor for ModelInputContentRequest(319);
        if (v12 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v3;
}

uint64_t sub_1CFD36E28(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  type metadata accessor for ModelContentInput.EntityStatus.EntityContentSource();
  result = swift_getTupleTypeMetadata2();
  if (v4 <= 0x3F)
  {
    result = sub_1CFCE8918();
    if (v5 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return OUTLINED_FUNCTION_141_0();
    }
  }

  return result;
}

uint64_t sub_1CFD36EBC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  v4 = 16;
  if ((v3 + 1) > 0x10)
  {
    v4 = v3 + 1;
  }

  if (!a2)
  {
    return OUTLINED_FUNCTION_23_0();
  }

  if (a2 < 0xFE)
  {
    goto LABEL_22;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 253) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_22:
      v11 = *(a1 + v4);
      if (v11 >= 3)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_22;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    switch(v5)
    {
      case 2:
        LODWORD(v5) = *a1;
        break;
      case 3:
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v5) = *a1;
        break;
      default:
        LODWORD(v5) = *a1;
        break;
    }
  }

  return (v5 | v10) + 254;
}

void sub_1CFD36FE0(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if ((v5 + 1) > 0x10)
  {
    v6 = v5 + 1;
  }

  else
  {
    v6 = 16;
  }

  v7 = v6 + 1;
  v8 = 8 * (v6 + 1);
  if (a3 < 0xFE)
  {
    v9 = 0;
  }

  else if (v7 <= 3)
  {
    v14 = ((a3 + ~(-1 << v8) - 253) >> v8) + 1;
    if (HIWORD(v14))
    {
      v9 = 4;
    }

    else
    {
      if (v14 < 0x100)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      if (v14 >= 2)
      {
        v9 = v15;
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 1;
  }

  if (a2 > 0xFD)
  {
    v10 = a2 - 254;
    if (v7 < 4)
    {
      v13 = (v10 >> v8) + 1;
      if (v6 != -1)
      {
        v16 = v10 & ~(-1 << v8);
        v17 = OUTLINED_FUNCTION_27();
        bzero(v17, v18);
        if (v7 == 3)
        {
          *a1 = v16;
          *(a1 + 2) = BYTE2(v16);
        }

        else if (v7 == 2)
        {
          *a1 = v16;
        }

        else
        {
          *a1 = v10;
        }
      }
    }

    else
    {
      v11 = OUTLINED_FUNCTION_27();
      bzero(v11, v12);
      *a1 = v10;
      v13 = 1;
    }

    switch(v9)
    {
      case 1:
        *(a1 + v7) = v13;
        break;
      case 2:
        *(a1 + v7) = v13;
        break;
      case 3:
LABEL_38:
        __break(1u);
        break;
      case 4:
        *(a1 + v7) = v13;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v9)
    {
      case 1:
        *(a1 + v7) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_27;
      case 2:
        *(a1 + v7) = 0;
        goto LABEL_26;
      case 3:
        goto LABEL_38;
      case 4:
        *(a1 + v7) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_27;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          *(a1 + v6) = -a2;
        }

        break;
    }
  }
}

uint64_t sub_1CFD371A0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_28ProactiveSummarizationClient17ModelContentInputV6StatusOyAA10MailEntityV_G(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1CFD3720C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_23_0();
  }

  if (a2 > 0x7FFFFFF9 && *(a1 + 16))
  {
    return OUTLINED_FUNCTION_3_2(*a1 + 2147483641);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 5;
  if (v4 >= 7)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1CFD3725C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFA)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483642;
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 5;
    }
  }

  return result;
}

uint64_t sub_1CFD372AC(uint64_t result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
  }

  else if (a2)
  {
    return OUTLINED_FUNCTION_132_0(result, a2);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_28ProactiveSummarizationClient7SectionV6HeaderV5StyleO(uint64_t a1)
{
  if ((*(a1 + 24) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 24) & 3;
  }
}

uint64_t get_enum_tag_for_layout_string_28ProactiveSummarizationClient7SectionV4KindO(void *a1)
{
  if (*a1 >> 62 == 3)
  {
    return (*a1 >> 3) + 6;
  }

  else
  {
    return *a1 >> 61;
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

uint64_t sub_1CFD37314(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_3_2(-1);
  }

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

  return OUTLINED_FUNCTION_3_2(v2);
}

uint64_t sub_1CFD37350(uint64_t result, int a2, int a3)
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

      return OUTLINED_FUNCTION_132_0(result, a2);
    }

    *(result + 64) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_132_0(result, a2);
    }
  }

  return result;
}

uint64_t sub_1CFD373A8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7A && *(a1 + 8))
    {
      return OUTLINED_FUNCTION_3_2(*a1 + 121);
    }

    v3 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
    if (v3 >= 0x79)
    {
      return OUTLINED_FUNCTION_3_2(-1);
    }
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_3_2(v3);
}

void *sub_1CFD373F8(void *result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x79)
  {
    *result = a2 - 122;
    if (a3 >= 0x7A)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7A)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      return OUTLINED_FUNCTION_392(result, (v3 | (v3 << 57)) & 0xF000000000000007);
    }
  }

  return result;
}

void *sub_1CFD37450(void *a1, uint64_t a2)
{
  if (a2 < 6)
  {
    v2 = *a1 & 0xFFFFFFFFFFFFFF8 | (a2 << 61);
  }

  else
  {
    v2 = (8 * (a2 - 6)) | 0xC000000000000000;
  }

  return OUTLINED_FUNCTION_392(a1, v2);
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1CFD374A0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_3_2(-1);
  }

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

  return OUTLINED_FUNCTION_3_2(v2);
}

uint64_t sub_1CFD374DC(uint64_t result, int a2, int a3)
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

      return OUTLINED_FUNCTION_132_0(result, a2);
    }

    *(result + 56) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_132_0(result, a2);
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

uint64_t sub_1CFD37544(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_3_2(-1);
  }

  if (a2 >= 0xFE && *(a1 + 25))
  {
    return OUTLINED_FUNCTION_3_2(*a1 + 253);
  }

  v3 = *(a1 + 24);
  if (v3 > 2)
  {
    return OUTLINED_FUNCTION_3_2(v3 ^ 0xFF);
  }

  else
  {
    return OUTLINED_FUNCTION_3_2(-1);
  }
}

uint64_t sub_1CFD37580(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_1CFD375C8(uint64_t result, unsigned int a2)
{
  v2 = a2 - 2;
  if (a2 >= 2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 2;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

uint64_t sub_1CFD375FC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_3_2(-1);
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_3_2((*a1 | (v4 << 8)) - 15);
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

      return OUTLINED_FUNCTION_3_2((*a1 | (v4 << 8)) - 15);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_3_2((*a1 | (v4 << 8)) - 15);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_3_2(v8);
}

_BYTE *sub_1CFD37680(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF1)
  {
    v6 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_133(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_131(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_132(result, v6);
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
          result = OUTLINED_FUNCTION_27_0(result, a2 + 14);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1CFD3773C(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_133(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_131(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_132(result, v6);
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
          result = OUTLINED_FUNCTION_27_0(result, a2 + 6);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1CFD37808(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_133(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_131(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_132(result, v6);
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
          result = OUTLINED_FUNCTION_27_0(result, a2 + 3);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1CFD37944(_BYTE *result, int a2, int a3)
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

_BYTE *sub_1CFD379F0(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_133(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_131(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_132(result, v6);
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
          result = OUTLINED_FUNCTION_27_0(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1CFD37AC0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_3_2(-1);
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
      return OUTLINED_FUNCTION_3_2((*a1 | (v4 << 8)) - 6);
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

      return OUTLINED_FUNCTION_3_2((*a1 | (v4 << 8)) - 6);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_3_2((*a1 | (v4 << 8)) - 6);
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

  return OUTLINED_FUNCTION_3_2(v8);
}

_BYTE *sub_1CFD37B48(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_133(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_131(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_132(result, v6);
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
          result = OUTLINED_FUNCTION_27_0(result, a2 + 5);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1CFD37C74(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_133(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_131(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_132(result, v6);
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
          result = OUTLINED_FUNCTION_27_0(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1CFD37D64()
{
  result = qword_1EC500AD0[0];
  if (!qword_1EC500AD0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC500AD0);
  }

  return result;
}

unint64_t sub_1CFD37DBC()
{
  result = qword_1EC5012E0[0];
  if (!qword_1EC5012E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC5012E0);
  }

  return result;
}

unint64_t sub_1CFD37E14()
{
  result = qword_1EC5014F0[0];
  if (!qword_1EC5014F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC5014F0);
  }

  return result;
}

unint64_t sub_1CFD37E6C()
{
  result = qword_1EC501700[0];
  if (!qword_1EC501700[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC501700);
  }

  return result;
}

unint64_t sub_1CFD37EC4()
{
  result = qword_1EC501910[0];
  if (!qword_1EC501910[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC501910);
  }

  return result;
}

unint64_t sub_1CFD37F1C()
{
  result = qword_1EC501B20[0];
  if (!qword_1EC501B20[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC501B20);
  }

  return result;
}

unint64_t sub_1CFD37F74()
{
  result = qword_1EC501D30[0];
  if (!qword_1EC501D30[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC501D30);
  }

  return result;
}

unint64_t sub_1CFD37FCC()
{
  result = qword_1EC501F40[0];
  if (!qword_1EC501F40[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC501F40);
  }

  return result;
}

unint64_t sub_1CFD38024()
{
  result = qword_1EC502150[0];
  if (!qword_1EC502150[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC502150);
  }

  return result;
}

unint64_t sub_1CFD3807C()
{
  result = qword_1EC502460[0];
  if (!qword_1EC502460[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC502460);
  }

  return result;
}

unint64_t sub_1CFD380D4()
{
  result = qword_1EC502670[0];
  if (!qword_1EC502670[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC502670);
  }

  return result;
}

unint64_t sub_1CFD385FC()
{
  result = qword_1EC504A80;
  if (!qword_1EC504A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC504A80);
  }

  return result;
}

unint64_t sub_1CFD38654()
{
  result = qword_1EC504A88[0];
  if (!qword_1EC504A88[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC504A88);
  }

  return result;
}

unint64_t sub_1CFD386AC()
{
  result = qword_1EC504B10;
  if (!qword_1EC504B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC504B10);
  }

  return result;
}

unint64_t sub_1CFD38704()
{
  result = qword_1EC504B18[0];
  if (!qword_1EC504B18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC504B18);
  }

  return result;
}

unint64_t sub_1CFD3875C()
{
  result = qword_1EC504BA0;
  if (!qword_1EC504BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC504BA0);
  }

  return result;
}

unint64_t sub_1CFD387B4()
{
  result = qword_1EC504BA8[0];
  if (!qword_1EC504BA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC504BA8);
  }

  return result;
}

unint64_t sub_1CFD3880C()
{
  result = qword_1EC504C30;
  if (!qword_1EC504C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC504C30);
  }

  return result;
}

unint64_t sub_1CFD38864()
{
  result = qword_1EC504C38[0];
  if (!qword_1EC504C38[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC504C38);
  }

  return result;
}

unint64_t sub_1CFD388BC()
{
  result = qword_1EC504CC0;
  if (!qword_1EC504CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC504CC0);
  }

  return result;
}

unint64_t sub_1CFD38914()
{
  result = qword_1EC504CC8[0];
  if (!qword_1EC504CC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC504CC8);
  }

  return result;
}

unint64_t sub_1CFD3896C()
{
  result = qword_1EC504D50;
  if (!qword_1EC504D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC504D50);
  }

  return result;
}

unint64_t sub_1CFD389C4()
{
  result = qword_1EC504D58[0];
  if (!qword_1EC504D58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC504D58);
  }

  return result;
}

unint64_t sub_1CFD38A1C()
{
  result = qword_1EC504DE0;
  if (!qword_1EC504DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC504DE0);
  }

  return result;
}

unint64_t sub_1CFD38A74()
{
  result = qword_1EC504DE8[0];
  if (!qword_1EC504DE8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC504DE8);
  }

  return result;
}

unint64_t sub_1CFD38ACC()
{
  result = qword_1EC504E70;
  if (!qword_1EC504E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC504E70);
  }

  return result;
}

unint64_t sub_1CFD38B24()
{
  result = qword_1EC504E78;
  if (!qword_1EC504E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC504E78);
  }

  return result;
}

unint64_t sub_1CFD38B7C()
{
  result = qword_1EC504F00;
  if (!qword_1EC504F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC504F00);
  }

  return result;
}

unint64_t sub_1CFD38BD4()
{
  result = qword_1EC504F08[0];
  if (!qword_1EC504F08[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC504F08);
  }

  return result;
}

unint64_t sub_1CFD38C2C()
{
  result = qword_1EC504F90;
  if (!qword_1EC504F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC504F90);
  }

  return result;
}

unint64_t sub_1CFD38C84()
{
  result = qword_1EC504F98[0];
  if (!qword_1EC504F98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC504F98);
  }

  return result;
}

unint64_t sub_1CFD38CDC()
{
  result = qword_1EC505020;
  if (!qword_1EC505020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC505020);
  }

  return result;
}

unint64_t sub_1CFD38D34()
{
  result = qword_1EC505028[0];
  if (!qword_1EC505028[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC505028);
  }

  return result;
}

unint64_t sub_1CFD38D8C()
{
  result = qword_1EC5050B0;
  if (!qword_1EC5050B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5050B0);
  }

  return result;
}

unint64_t sub_1CFD38DE4()
{
  result = qword_1EC5050B8[0];
  if (!qword_1EC5050B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC5050B8);
  }

  return result;
}

unint64_t sub_1CFD38E3C()
{
  result = qword_1EC505140;
  if (!qword_1EC505140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC505140);
  }

  return result;
}

unint64_t sub_1CFD38E94()
{
  result = qword_1EC505148[0];
  if (!qword_1EC505148[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC505148);
  }

  return result;
}

unint64_t sub_1CFD38EEC()
{
  result = qword_1EC5051D0;
  if (!qword_1EC5051D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5051D0);
  }

  return result;
}

unint64_t sub_1CFD38F44()
{
  result = qword_1EC5051D8[0];
  if (!qword_1EC5051D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC5051D8);
  }

  return result;
}

unint64_t sub_1CFD38F9C()
{
  result = qword_1EC505260;
  if (!qword_1EC505260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC505260);
  }

  return result;
}

unint64_t sub_1CFD38FF4()
{
  result = qword_1EC505268[0];
  if (!qword_1EC505268[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC505268);
  }

  return result;
}

unint64_t sub_1CFD3904C()
{
  result = qword_1EC5052F0;
  if (!qword_1EC5052F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5052F0);
  }

  return result;
}

unint64_t sub_1CFD390A4()
{
  result = qword_1EC5052F8[0];
  if (!qword_1EC5052F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC5052F8);
  }

  return result;
}

unint64_t sub_1CFD390FC()
{
  result = qword_1EC505380;
  if (!qword_1EC505380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC505380);
  }

  return result;
}

unint64_t sub_1CFD39154()
{
  result = qword_1EC505388[0];
  if (!qword_1EC505388[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC505388);
  }

  return result;
}

unint64_t sub_1CFD391AC()
{
  result = qword_1EC505410;
  if (!qword_1EC505410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC505410);
  }

  return result;
}

unint64_t sub_1CFD39204()
{
  result = qword_1EC505418[0];
  if (!qword_1EC505418[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC505418);
  }

  return result;
}

unint64_t sub_1CFD3925C()
{
  result = qword_1EC5054A0;
  if (!qword_1EC5054A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5054A0);
  }

  return result;
}

unint64_t sub_1CFD392B4()
{
  result = qword_1EC5054A8[0];
  if (!qword_1EC5054A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC5054A8);
  }

  return result;
}

unint64_t sub_1CFD3930C()
{
  result = qword_1EC505530;
  if (!qword_1EC505530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC505530);
  }

  return result;
}

unint64_t sub_1CFD39364()
{
  result = qword_1EC505538[0];
  if (!qword_1EC505538[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC505538);
  }

  return result;
}

uint64_t sub_1CFD393B8(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE **sub_1CFD39408(_BYTE **result)
{
  v2 = *result;
  *v2 = *(v1 + 16);
  *result = v2 + 1;
  return result;
}

uint64_t sub_1CFD39424()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t objectdestroy_274Tm()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1CFD39518(uint64_t result, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = *(a4 + 16);
  if (!a2)
  {
    v11 = *(a4 + 16);
    v6 = 0;
LABEL_13:
    *v5 = a4;
    v5[1] = v11;
    return v6;
  }

  if (!a3)
  {
    v11 = *(a4 + 16);
LABEL_12:
    v6 = a3;
    goto LABEL_13;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = a2;
    v9 = 0;
    for (i = (a4 + (v6 << 6) - 32); ; i -= 4)
    {
      v11 = v6 + v9;
      if (!(v6 + v9))
      {
        break;
      }

      if (v11 > *(a4 + 16))
      {
        __break(1u);
        goto LABEL_15;
      }

      v13 = i[1];
      v16[0] = *i;
      v12 = v16[0];
      v16[1] = v13;
      v14 = i[3];
      v17 = i[2];
      v18 = v14;
      v8[2] = v17;
      v8[3] = v14;
      *v8 = v12;
      v8[1] = v13;
      if (a3 + v9 == 1)
      {
        sub_1CFD36728(v16, v15);
        v11 = v6 + v9 - 1;
        goto LABEL_12;
      }

      v8 += 4;
      result = sub_1CFD36728(v16, v15);
      --v9;
    }

    goto LABEL_13;
  }

LABEL_15:
  __break(1u);
  return result;
}

unint64_t sub_1CFD39610()
{
  result = qword_1EC4F35F8;
  if (!qword_1EC4F35F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC4F35F8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_48_2()
{

  return sub_1CFD35FB0();
}

__n128 OUTLINED_FUNCTION_49_2@<Q0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = *(v1 - 152);
  *(a1 + 48) = *(v1 - 136);
  *(a1 + 64) = *(v1 - 120);
  result = *(v1 - 104);
  *(a1 + 80) = result;
  return result;
}

void OUTLINED_FUNCTION_51_2(__n128 *a1@<X8>, __n128 a2@<Q0>)
{
  a1[3] = a2;
  a1[4].n128_u64[0] = 1;
  a1[4].n128_u8[8] = 1;
}

uint64_t OUTLINED_FUNCTION_52_2(uint64_t result)
{
  *(result + 16) = v1;
  *(result + 24) = 3;
  *(v4 - 144) = v2;
  *(v4 - 136) = v3;
  *(v4 - 120) = 0;
  *(v4 - 112) = 0;
  *(v4 - 128) = 0;
  return result;
}

__n128 OUTLINED_FUNCTION_56_2@<Q0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = *(v1 + 520);
  *(a1 + 48) = *(v1 + 536);
  *(a1 + 64) = *(v1 + 552);
  result = *(v1 + 568);
  *(a1 + 80) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_76_0()
{

  return sub_1CFD49668();
}

uint64_t OUTLINED_FUNCTION_81_0@<X0>(uint64_t a1@<X8>)
{
  v3 = (v2 + a1);
  result = v3[1];
  *(v1 + 16) = *v3;
  *(v1 + 24) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_98_1()
{
  v2 = *(v0 - 96);

  return sub_1CFD495A8();
}

uint64_t OUTLINED_FUNCTION_100_1()
{
  v2 = *(v0 - 96);

  return sub_1CFD495A8();
}

void OUTLINED_FUNCTION_113_1(__n128 *a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q1>, __n128 a4@<Q2>, __n128 a5@<Q3>)
{
  a1[4] = a4;
  a1[5] = a5;
  a1[2] = a2;
  a1[3] = a3;
}

uint64_t OUTLINED_FUNCTION_116_1@<X0>(void *a1@<X8>)
{
  v3 = a1[1];
  *(v1 + 16) = *a1;
  *(v1 + 24) = v3;
  *(v1 + 32) = 0;
}

uint64_t OUTLINED_FUNCTION_120_1()
{
  result = v1;
  v3 = *(v0 + 40);
  return result;
}

uint64_t OUTLINED_FUNCTION_122_0(uint64_t result)
{
  v1 = *(result + 24);
  v2 = *(result + 16) + 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_124_1@<X0>(void *a1@<X8>)
{
  result = a1[1];
  *(v1 + 16) = *a1;
  *(v1 + 24) = result;
  return result;
}

char *OUTLINED_FUNCTION_131_1(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{

  return sub_1CFD34880(0, 1, 1, a4);
}

uint64_t OUTLINED_FUNCTION_137_1@<X0>(uint64_t a1@<X8>, __n128 a2@<Q0>)
{
  v2[3] = a2;
  *(v3 + 48) = a2;
  *(v3 + 64) = 1;
  *(v3 + 72) = 1;
  *(v3 + 73) = *(v4 - 109);
  *(v3 + 76) = *(v4 - 106);
  *(v3 + 80) = 2;
  *(v3 + 88) = a1;

  return sub_1CFD48EF8();
}

uint64_t OUTLINED_FUNCTION_143_1()
{

  return sub_1CFD48EF8();
}

uint64_t OUTLINED_FUNCTION_151_0()
{
  *(v4 + 160) = v1;
  *(v4 + 168) = v2;
  *(v4 + 176) = *(v0 + 48);
  *(v4 + 192) = 1;
  *(v4 + 200) = 1;
  *(v4 + 201) = *(v5 - 95);
  *(v4 + 204) = *(v5 - 92);
  *(v4 + 208) = 2;
  *(v4 + 216) = v3 | 0x4000000000000000;
  v7 = *(v0 + 32);

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_163_0@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 73) = v3;
  *(v1 + 76) = v2;
  *(v1 + 80) = v4;
  *(v1 + 88) = a1;

  return sub_1CFD35FB0();
}

uint64_t OUTLINED_FUNCTION_168_0(uint64_t result)
{
  *(result + 16) = v1;
  *(result + 24) = v2;
  *(result + 32) = 0;
  return result;
}

__n128 OUTLINED_FUNCTION_171()
{
  *(v3 + 96) = v1;
  *(v3 + 104) = v2;
  result = v0[3];
  *(v3 + 112) = result;
  *(v3 + 128) = 1;
  *(v3 + 136) = 1;
  *(v3 + 137) = *(v4 - 102);
  *(v3 + 140) = *(v4 - 99);
  return result;
}

uint64_t OUTLINED_FUNCTION_172_0()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_190_0()
{

  return sub_1CFD35F58();
}

uint64_t OUTLINED_FUNCTION_194_0()
{

  return sub_1CFD48EF8();
}

char *OUTLINED_FUNCTION_195()
{
  v2 = *(*(v0 + 104) + 16);

  return sub_1CFD34840(v2);
}

uint64_t OUTLINED_FUNCTION_201()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_202()
{
  v1 = *(v0[40] + 8);
  result = v0[27];
  v3 = v0[38];
  return result;
}

uint64_t OUTLINED_FUNCTION_203(uint64_t a1)
{

  return MEMORY[0x1EEDC5D38](a1, 1684827173, 0xE400000000000000);
}

void OUTLINED_FUNCTION_205()
{

  sub_1CFD3059C();
}

uint64_t OUTLINED_FUNCTION_207(uint64_t result)
{
  v1 = *(result + 24);
  v2 = *(result + 16) + 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_225()
{
  v2 = *(v0 + 424);

  return sub_1CFD48EF8();
}

uint64_t OUTLINED_FUNCTION_228@<X0>(char a1@<W8>)
{
  *(v1 - 112) = a1;
  result = v1 - 112;
  v4 = *(v1 - 208);
  v3 = *(v1 - 200);
  return result;
}

uint64_t OUTLINED_FUNCTION_229(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 - 192) = a3;

  return sub_1CFD48CE8();
}

uint64_t OUTLINED_FUNCTION_248()
{

  return sub_1CFD48EF8();
}

void OUTLINED_FUNCTION_249(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  *(v20 - 96) = 1;
  *(v20 - 88) = a8;

  sub_1CFD33E3C(v20 - 144, a1, a2, a3, a4, a5, a6, a7, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t OUTLINED_FUNCTION_252@<X0>(_OWORD *a1@<X8>)
{
  a1[2] = *(v1 - 176);
  a1[3] = *(v1 - 160);
  a1[4] = *(v1 - 144);
  a1[5] = *(v1 - 128);

  return swift_endAccess();
}

uint64_t OUTLINED_FUNCTION_259(uint64_t result, uint64_t a2)
{
  *(v2 + 416) = result;
  *(v2 + 208) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_268@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 96) = v1;
  v4 = *(v2 - 128) + a1;

  return sub_1CFD495D8();
}

uint64_t OUTLINED_FUNCTION_269()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_271()
{

  return sub_1CFD48CD8();
}

uint64_t OUTLINED_FUNCTION_274()
{

  return sub_1CFD48EF8();
}

uint64_t OUTLINED_FUNCTION_276()
{
  v2 = *(v0 + 424);

  return sub_1CFD48EF8();
}

void OUTLINED_FUNCTION_277()
{

  sub_1CFD3059C();
}

uint64_t OUTLINED_FUNCTION_278()
{

  return sub_1CFD48CD8();
}

char *OUTLINED_FUNCTION_282()
{
  v2 = *(*v0 + 16);

  return sub_1CFD34840(v2);
}

uint64_t OUTLINED_FUNCTION_286(uint64_t result, uint64_t a2)
{
  *(v2 + 424) = result;
  *(v2 + 216) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_289()
{

  return sub_1CFD48EF8();
}

uint64_t OUTLINED_FUNCTION_290()
{

  return sub_1CFD48EF8();
}

uint64_t OUTLINED_FUNCTION_293(uint64_t result, uint64_t a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2;
  *(v2 + 32) = 0;
  return result;
}

__n128 OUTLINED_FUNCTION_296@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 - 120);
  v3 = *(v1 - 104);
  v4 = *(v1 - 152);
  v5 = *(v1 - 136);
  *(a1 + 64) = result;
  *(a1 + 80) = v3;
  *(a1 + 32) = v4;
  *(a1 + 48) = v5;
  return result;
}

uint64_t OUTLINED_FUNCTION_300()
{
  v2 = *(v0 + 200);

  return sub_1CFD490E8();
}

void OUTLINED_FUNCTION_301()
{

  sub_1CFD3059C();
}

uint64_t OUTLINED_FUNCTION_303(uint64_t a1)
{
  *(v1 + 64) = a1;
  v3 = *(v1 + 104) + *(a1 + 68);

  return sub_1CFD02140();
}

void OUTLINED_FUNCTION_304()
{

  sub_1CFD3059C();
}

uint64_t OUTLINED_FUNCTION_306()
{

  return sub_1CFD48EF8();
}

uint64_t OUTLINED_FUNCTION_311()
{
  v2 = *(v0 + 408);

  return sub_1CFD48CD8();
}

uint64_t OUTLINED_FUNCTION_314()
{

  return sub_1CFD48EF8();
}

void OUTLINED_FUNCTION_317(uint64_t a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q1>)
{
  *(a1 - 256) = a3;
  *(v3 - 160) = a3;
  *(v3 - 144) = a2;
}

uint64_t OUTLINED_FUNCTION_327(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a5;
  v5[6] = a4;
  v5[1] = a3;
  v5[13] = a2;
  v5[4] = a1;

  return sub_1CFD48CE8();
}

uint64_t OUTLINED_FUNCTION_328()
{

  return sub_1CFD48F28();
}

uint64_t OUTLINED_FUNCTION_329()
{

  return sub_1CFD48F28();
}

uint64_t OUTLINED_FUNCTION_330()
{

  return sub_1CFD48EF8();
}

void OUTLINED_FUNCTION_331()
{

  sub_1CFD3059C();
}

uint64_t OUTLINED_FUNCTION_332()
{

  return sub_1CFD48FE8();
}

uint64_t OUTLINED_FUNCTION_333()
{

  return sub_1CFD48EF8();
}

uint64_t OUTLINED_FUNCTION_335()
{

  return sub_1CFD48EF8();
}

uint64_t OUTLINED_FUNCTION_337(uint64_t result, uint64_t a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2;
  *(v2 + 32) = 0;
  return result;
}

void OUTLINED_FUNCTION_338()
{
  v4 = *v0;
  *(v4 + 16) = v2 + 1;
  v5 = v4 + (v2 << 6);
  *(v5 + 32) = v1;
  *(v5 + 40) = v3;
}

uint64_t OUTLINED_FUNCTION_342()
{
  if (v1)
  {
    return v0;
  }

  else
  {
    return 0;
  }
}

uint64_t OUTLINED_FUNCTION_344(uint64_t result)
{
  *(result + 16) = v1;
  *(result + 24) = v2;
  *(result + 32) = 0;
  return result;
}

__n128 OUTLINED_FUNCTION_352()
{
  result = v1[15];
  v0[3] = result;
  v0[4].n128_u64[0] = 1;
  v0[4].n128_u8[8] = 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_355()
{
  result = *(v0 - 232);
  v2 = *(v0 - 112);
  return result;
}

uint64_t OUTLINED_FUNCTION_362()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_363()
{

  return sub_1CFD48EF8();
}

uint64_t OUTLINED_FUNCTION_369()
{

  return sub_1CFD48FE8();
}

uint64_t OUTLINED_FUNCTION_371()
{

  return sub_1CFD48FE8();
}

uint64_t OUTLINED_FUNCTION_372@<X0>(char a1@<W8>)
{
  *(v1 - 96) = a1;
  v3 = *(v1 - 144);

  return sub_1CFD495B8();
}

uint64_t OUTLINED_FUNCTION_373()
{
  v2 = *(v0 + 192);

  return sub_1CFD48B98();
}

uint64_t OUTLINED_FUNCTION_374()
{

  return sub_1CFD49578();
}

void OUTLINED_FUNCTION_375()
{

  sub_1CFD30744();
}

void OUTLINED_FUNCTION_376()
{

  sub_1CFD3059C();
}

uint64_t OUTLINED_FUNCTION_377()
{

  return sub_1CFD48EF8();
}

uint64_t OUTLINED_FUNCTION_380()
{

  return sub_1CFD48CD8();
}

void OUTLINED_FUNCTION_381()
{

  sub_1CFD3059C();
}

void OUTLINED_FUNCTION_382()
{
  v2 = *v0;

  JUMPOUT(0x1D3874010);
}

uint64_t OUTLINED_FUNCTION_383()
{

  return sub_1CFD49538();
}

void OUTLINED_FUNCTION_384()
{

  sub_1CFD3059C();
}

uint64_t OUTLINED_FUNCTION_385()
{

  return sub_1CFD48EF8();
}

uint64_t OUTLINED_FUNCTION_386()
{
  v2 = *(v0 - 72);

  return sub_1CFD494F8();
}

void OUTLINED_FUNCTION_387()
{

  sub_1CFD3059C();
}

uint64_t OUTLINED_FUNCTION_388()
{

  return sub_1CFD48F28();
}

uint64_t OUTLINED_FUNCTION_390()
{
  v2 = *(v0 + 64);

  return sub_1CFD48CD8();
}

uint64_t OUTLINED_FUNCTION_391()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_393()
{

  return sub_1CFD48FE8();
}

void OUTLINED_FUNCTION_394()
{

  JUMPOUT(0x1D3874010);
}

uint64_t OUTLINED_FUNCTION_395()
{

  return sub_1CFD48CD8();
}

uint64_t OUTLINED_FUNCTION_402(uint64_t result)
{
  v1 = *(result + 24);
  v2 = *(result + 16) + 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_406@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  return (a1 + 1);
}

__n128 OUTLINED_FUNCTION_408()
{
  result = *(v0 + 424);
  v2 = *(v0 + 440);
  return result;
}

__n128 OUTLINED_FUNCTION_409()
{
  result = *(v0 + 392);
  v2 = *(v0 + 408);
  return result;
}

__n128 OUTLINED_FUNCTION_410()
{
  result = *(v0 + 360);
  v2 = *(v0 + 376);
  return result;
}

uint64_t OUTLINED_FUNCTION_429()
{
  v2 = *(v0 + 8);
  result = *(v1 - 208);
  v4 = *(v1 - 200);
  return result;
}

char *OUTLINED_FUNCTION_435()
{
  v2 = *(*(v0 + 120) + 16);

  return sub_1CFD34840(v2);
}

char *OUTLINED_FUNCTION_436()
{
  v2 = *(*(v0 + 120) + 16);

  return sub_1CFD34840(v2);
}

uint64_t OUTLINED_FUNCTION_437()
{
  v2 = *(v0 + 240);

  return sub_1CFD48F38();
}

uint64_t OUTLINED_FUNCTION_438(uint64_t a1, uint64_t a2)
{
  *(v2 - 224) = a1;
  *(v2 - 216) = a2;
}

void OUTLINED_FUNCTION_439()
{

  sub_1CFD3059C();
}

void OUTLINED_FUNCTION_440(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 0xCu);
}

uint64_t OUTLINED_FUNCTION_441()
{
  v2 = *(v0 - 88);

  return sub_1CFD49788();
}

uint64_t OUTLINED_FUNCTION_442@<X0>(uint64_t a1@<X8>)
{
  v4 = (v2 + a1);
  v5 = v4[1];
  *(v1 + 16) = *v4;
  *(v1 + 24) = v5;
  *(v1 + 32) = 0;
}

uint64_t OUTLINED_FUNCTION_443()
{
}

void OUTLINED_FUNCTION_444()
{

  sub_1CFD3059C();
}

uint64_t OUTLINED_FUNCTION_445@<X0>(__n128 *a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q1>)
{
  a1[4] = a2;
  a1[5] = a3;

  return swift_endAccess();
}

void OUTLINED_FUNCTION_446()
{

  sub_1CFD3059C();
}

uint64_t OUTLINED_FUNCTION_447()
{

  return sub_1CFD48EF8();
}

uint64_t OUTLINED_FUNCTION_448()
{
  v2 = *(v0 - 256);

  return sub_1CFD495A8();
}

uint64_t OUTLINED_FUNCTION_449()
{

  return sub_1CFD48FE8();
}

void OUTLINED_FUNCTION_451()
{

  sub_1CFD3059C();
}

void OUTLINED_FUNCTION_452()
{

  sub_1CFD3059C();
}

uint64_t OUTLINED_FUNCTION_453()
{
  v2 = *(v0 - 232);

  return sub_1CFD494F8();
}

uint64_t sub_1CFD3B658(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = 0;
  if (!((a5 ^ a1) >> 14) && !((a6 ^ a2) >> 14))
  {
    if (a3 == a7 && a4 == a8)
    {
      return 1;
    }

    else
    {
      return sub_1CFD49668();
    }
  }

  return result;
}

uint64_t sub_1CFD3B6A4(uint64_t a1, unint64_t a2, unint64_t a3)
{
  MEMORY[0x1D3874020](a2 >> 14);
  MEMORY[0x1D3874020](a3 >> 14);

  return sub_1CFD49038();
}

uint64_t sub_1CFD3B704(unint64_t a1, unint64_t a2)
{
  sub_1CFD49728();
  MEMORY[0x1D3874020](a1 >> 14);
  MEMORY[0x1D3874020](a2 >> 14);
  sub_1CFD49038();
  return sub_1CFD49758();
}

uint64_t sub_1CFD3B798()
{
  v1 = v0[2];
  v2 = v0[3];
  return sub_1CFD3B704(*v0, v0[1]);
}

uint64_t sub_1CFD3B7A4(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1CFD3B6A4(a1, *v1, v1[1]);
}

uint64_t sub_1CFD3B7B0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1CFD49728();
  MEMORY[0x1D3874020](v1 >> 14);
  MEMORY[0x1D3874020](v2 >> 14);
  sub_1CFD49038();
  return sub_1CFD49758();
}

uint64_t sub_1CFD3B824()
{
  OUTLINED_FUNCTION_137();
  v2 = v0;

  sub_1CFD3C960(&v2);

  return OUTLINED_FUNCTION_71();
}

unint64_t sub_1CFD3B898(char a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  if (v6)
  {

    v9 = 0;
    v10 = (a4 + 32 * v6 + 16);
    v11 = 1;
    do
    {
      v12 = *(v10 - 2);
      v13 = *(v10 - 1);
      v15 = *v10;
      v14 = v10[1];
      if ((v11 & 1) != 0 || v9 >> 14 >= v13 >> 14)
      {
        v16 = v10[1];

        if (a1)
        {
          v24 = 0xE000000000000000;
          sub_1CFD49408();

          v23 = 0xD000000000000012;
          v17 = OUTLINED_FUNCTION_6_11();
          MEMORY[0x1D3873940](v17);
          v18 = 0x80000001CFD5F860;
          v19 = 0xD000000000000012;
        }

        else
        {
          v23 = 0x4445544341444552;
          v19 = OUTLINED_FUNCTION_6_11();
        }

        MEMORY[0x1D3873940](v19, v18);

        a2 = sub_1CFD3BA2C(v12, v13, v23, v24, a2, a3);
        v21 = v20;

        v9 = v12;
        a3 = v21;
      }

      v11 = 0;
      v10 -= 4;
      --v6;
    }

    while (v6);
  }

  else
  {
  }

  return a2;
}

uint64_t sub_1CFD3BA2C(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
{

  sub_1CFD49348();
  v12 = v11;

  if ((v12 & 0x1000000000000000) != 0)
  {
    goto LABEL_35;
  }

  sub_1CFD49348();
  v14 = v13;

  if ((v14 & 0x1000000000000000) != 0)
  {
    goto LABEL_35;
  }

  v16 = (a5 >> 59) & 1;
  if ((a6 & 0x1000000000000000) == 0)
  {
    LOBYTE(v16) = 1;
  }

  v17 = 4 << v16;
  v18 = a1;
  if ((a1 & 0xC) == 4 << v16)
  {
    result = sub_1CFD3E05C(a1, a5, a6);
    v18 = result;
    if ((a6 & 0x1000000000000000) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((a6 & 0x1000000000000000) == 0)
  {
LABEL_7:
    v19 = v18 >> 16;
    if ((a6 & 0x2000000000000000) != 0)
    {
      v20 = HIBYTE(a6) & 0xF;
    }

    else
    {
      v20 = a5 & 0xFFFFFFFFFFFFLL;
    }

    v21 = (v20 << 16) | 7;
    LOBYTE(v22) = 1;
    goto LABEL_11;
  }

  if ((a6 & 0x2000000000000000) != 0)
  {
    v20 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v20 = a5 & 0xFFFFFFFFFFFFLL;
  }

  if (v20 < v18 >> 16)
  {
    goto LABEL_41;
  }

  result = sub_1CFD49098();
  v19 = result;
  v25 = 11;
  if ((a5 & 0x800000000000000) != 0)
  {
    v25 = 7;
  }

  v21 = v25 | (v20 << 16);
  v22 = (a5 & 0x800000000000000) >> 59;
LABEL_11:
  v23 = a2;
  if ((a2 & 0xC) == 4 << v22)
  {
    result = sub_1CFD3E05C(a2, a5, a6);
    v23 = result;
  }

  if ((v21 & 0xC) == v17)
  {
    result = sub_1CFD3E05C(v21, a5, a6);
    v21 = result;
    if ((a6 & 0x1000000000000000) == 0)
    {
      goto LABEL_15;
    }
  }

  else if ((a6 & 0x1000000000000000) == 0)
  {
LABEL_15:
    v24 = (v21 >> 16) - (v23 >> 16);
LABEL_28:
    if ((a4 & 0x1000000000000000) != 0)
    {
      result = sub_1CFD49078();
    }

    else if ((a4 & 0x2000000000000000) != 0)
    {
      result = HIBYTE(a4) & 0xF;
    }

    else
    {
      result = a3 & 0xFFFFFFFFFFFFLL;
    }

    v26 = v19 + result;
    if (__OFADD__(v19, result))
    {
      __break(1u);
    }

    else
    {
      result = v26 + v24;
      if (!__OFADD__(v26, v24))
      {
        MEMORY[0x1D3873900](result);
LABEL_35:
        sub_1CFD490F8();
        sub_1CFD3E11C();
        sub_1CFD49058();

        sub_1CFD49058();
        sub_1CFD3D618(a2, a5, a6);
        sub_1CFD49058();

        return 0;
      }
    }

    __break(1u);
    goto LABEL_39;
  }

  if (v20 < v23 >> 16)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v20 >= v21 >> 16)
  {
    v24 = sub_1CFD49098();
    goto LABEL_28;
  }

LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

uint64_t sub_1CFD3BD28(void *a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CFD49798();
  sub_1CFD3B898(1, a2, a3, a4);
  __swift_mutable_project_boxed_opaque_existential_1(v9, v9[3]);
  sub_1CFD49688();

  return __swift_destroy_boxed_opaque_existential_1(v9);
}

uint64_t sub_1CFD3BDF8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = a1;
  if (a3 == 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F3608, &qword_1CFD53BB0);
    *(swift_allocObject() + 16) = xmmword_1CFD4BE60;
    OUTLINED_FUNCTION_2_11();
    v9 = (v7 & v8) == 0;
    v10 = 11;
    if (v9)
    {
      v10 = 7;
    }

    v5[4] = 15;
    v5[5] = v10 | (v6 << 16);
    v5[6] = 0x4C41544341444552;
    v5[7] = 0xE90000000000004CLL;

    OUTLINED_FUNCTION_3_8();
    return sub_1CFD3B824();
  }

  v55 = MEMORY[0x1E69E7CC0];
  if (a3)
  {
    sub_1CFD02070(0, &qword_1EC4F3610, 0x1E6977A80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F3618, &qword_1CFD53BB8);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1CFD508E0;
    v13 = *MEMORY[0x1E69779D0];
    v14 = *MEMORY[0x1E69779C8];
    *(v12 + 32) = *MEMORY[0x1E69779D0];
    *(v12 + 40) = v14;
    v15 = v13;
    v16 = v14;
    v4 = a1;
    v17 = sub_1CFD3C2F8();
    v18 = *MEMORY[0x1E6977748];
    OUTLINED_FUNCTION_2_11();
    sub_1CFD49318();
    v19 = OUTLINED_FUNCTION_3_8();
    sub_1CFD3D798(v19, v20, v21);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F3620, &qword_1CFD53BC0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1CFD4BE60;
    *(inited + 32) = *MEMORY[0x1E6977988];
    MEMORY[0x1EEE9AC00](inited);
    v24 = v23;
    sub_1CFD49328();

    swift_setDeallocating();
    sub_1CFD3C9CC();
  }

  v25 = objc_allocWithZone(MEMORY[0x1E696AB60]);
  v26 = sub_1CFCEB958(2096);
  if (v26)
  {
    v28 = v26;
    v29 = sub_1CFD48F78();
    v30 = [v28 matchesInString:v29 options:0 range:{0, MEMORY[0x1D3873980](v4, a2)}];
    v51 = v28;

    sub_1CFD02070(0, &qword_1EC4F2D50, 0x1E696AEF8);
    v27 = sub_1CFD49188();
  }

  else
  {
    v51 = 0;
    v27 = MEMORY[0x1E69E7CC0];
  }

  result = sub_1CFCEBA70(v27);
  if (!result)
  {
LABEL_33:

    OUTLINED_FUNCTION_3_8();
    v11 = sub_1CFD3B824();

    return v11;
  }

  v32 = result;
  if (result >= 1)
  {
    v33 = 0;
    v34 = v27 & 0xC000000000000001;
    v35 = 0x1E83CD000uLL;
    v53 = v27;
    v52 = v27 & 0xC000000000000001;
    while (1)
    {
      if (v34)
      {
        v36 = MEMORY[0x1D3873D00](v33, v27);
      }

      else
      {
        v36 = *(v27 + 8 * v33 + 32);
      }

      v37 = v36;
      [v36 *(v35 + 3200)];
      v38 = sub_1CFD492C8();
      if ((v40 & 1) == 0)
      {
        v41 = v38;
        v42 = v39;
        v43 = [v37 resultType];
        if (v43 == 16)
        {
          v46 = 0xE800000000000000;
          v44 = 0x4E4F495441434F4CLL;
          goto LABEL_27;
        }

        if (v43 == 2048)
        {
          v44 = 0x554E5F454E4F4850;
          v45 = 1380270669;
LABEL_25:
          v46 = v45 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
LABEL_27:
          v47 = v55;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v47 = sub_1CFD3D510(0, *(v55 + 2) + 1, 1, v55);
          }

          v49 = *(v47 + 2);
          v48 = *(v47 + 3);
          if (v49 >= v48 >> 1)
          {
            v47 = sub_1CFD3D510((v48 > 1), v49 + 1, 1, v47);
          }

          *(v47 + 2) = v49 + 1;
          v50 = &v47[32 * v49];
          *(v50 + 4) = v41;
          *(v50 + 5) = v42;
          *(v50 + 6) = v44;
          *(v50 + 7) = v46;
          v55 = v47;
          v34 = v52;
          v27 = v53;
          v35 = 0x1E83CD000;
          goto LABEL_32;
        }

        if (v43 == 32)
        {
          v44 = 0x524F5F4C49414D45;
          v45 = 1280464223;
          goto LABEL_25;
        }
      }

LABEL_32:
      if (v32 == ++v33)
      {
        goto LABEL_33;
      }
    }
  }

  __break(1u);
  return result;
}

id sub_1CFD3C2F8()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  type metadata accessor for NLTagScheme(0);
  v1 = sub_1CFD49178();

  v2 = [v0 initWithTagSchemes_];

  return v2;
}

void sub_1CFD3C370(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  if (a1)
  {
    v18 = a1;
    MEMORY[0x1EEE9AC00](a1);
    v17[2] = &v18;
    v10 = a1;
    if (sub_1CFD3D6F0(sub_1CFD3E0FC, v17, a4))
    {
      sub_1CFD48FA8();
      v11 = sub_1CFD49008();
      v13 = v12;

      sub_1CFD3D370();
      v14 = *(*a5 + 16);
      sub_1CFD3D3BC(v14);

      v15 = *a5;
      *(v15 + 16) = v14 + 1;
      v16 = (v15 + 32 * v14);
      v16[4] = a2;
      v16[5] = a3;
      v16[6] = v11;
      v16[7] = v13;
    }

    else
    {
    }
  }
}

uint64_t sub_1CFD3C484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a1 == a4 && a2 == a5;
  if (!v5 && (sub_1CFD49668() & 1) == 0)
  {
    return 0;
  }

  v6 = OUTLINED_FUNCTION_71();

  return sub_1CFD3C4EC(v6, v7);
}

uint64_t sub_1CFD3C4EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 56);
    for (i = (a2 + 56); !((*(i - 3) ^ *(v3 - 3)) >> 14) && !((*(i - 2) ^ *(v3 - 2)) >> 14); i += 4)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_1CFD49668() & 1) == 0)
      {
        break;
      }

      v3 += 4;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1CFD3C5A0()
{
  sub_1CFD49038();
  v0 = OUTLINED_FUNCTION_71();

  return sub_1CFD3D810(v0, v1);
}

uint64_t sub_1CFD3C5DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1CFD49728();
  sub_1CFD49038();
  sub_1CFD3D810(v5, a3);
  return sub_1CFD49758();
}

uint64_t sub_1CFD3C68C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  return sub_1CFD3C5A0();
}

uint64_t sub_1CFD3C698()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1CFD49728();
  sub_1CFD49038();
  sub_1CFD3D810(v5, v3);
  return sub_1CFD49758();
}

uint64_t sub_1CFD3C6F8()
{
  OUTLINED_FUNCTION_137();

  result = sub_1CFD48F88();
  *v0 = 0;
  return result;
}

uint64_t sub_1CFD3C76C()
{
  OUTLINED_FUNCTION_137();

  v2 = sub_1CFD48F98();
  *v0 = 0;
  return v2 & 1;
}

uint64_t sub_1CFD3C7E8(uint64_t a1)
{
  v2 = sub_1CFD3DE18(&qword_1EC4F3680, type metadata accessor for NLTag);
  v3 = sub_1CFD3DE18(&qword_1EC4F3688, type metadata accessor for NLTag);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1CFD3C8A4(uint64_t a1)
{
  v2 = sub_1CFD3DE18(&qword_1EC4F3690, type metadata accessor for NLTagScheme);
  v3 = sub_1CFD3DE18(&qword_1EC4F3698, type metadata accessor for NLTagScheme);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1CFD3C960(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1CFD3DF40(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1CFD3CA20(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1CFD3C9CC()
{
  v1 = *(v0 + 16);
  type metadata accessor for NLTag(0);
  swift_arrayDestroy();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1CFD3CA20(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1CFD49638();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v6 = sub_1CFD491C8();
        *(v6 + 16) = v5;
      }

      v7[0] = v6 + 32;
      v7[1] = v5;
      sub_1CFD3CB98(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1CFD3CB14(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1CFD3CB14(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 32 * a3 - 32;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 32 * a3);
      v8 = v6;
      v9 = v5;
      do
      {
        if (v7 >> 14 >= *v9 >> 14)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v10 = *(v9 + 56);
        v11 = *(v9 + 40);
        v12 = *(v9 + 16);
        *(v9 + 32) = *v9;
        *(v9 + 48) = v12;
        *v9 = v7;
        *(v9 + 8) = v11;
        *(v9 + 24) = v10;
        v9 -= 32;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 32;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_1CFD3CB98(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v86 = result;
  v90 = MEMORY[0x1E69E7CC0];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    v85 = a4;
    while (1)
    {
      v9 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v10 = *(*a3 + 32 * v9);
        v11 = (*a3 + 32 * v7);
        v12 = 32 * v7;
        v14 = *v11;
        v13 = v11 + 8;
        v15 = v10 >> 14;
        v16 = v14 >> 14;
        v17 = v7 + 2;
        while (1)
        {
          v18 = v17;
          if (++v9 >= v6)
          {
            break;
          }

          v19 = *v13;
          v13 += 4;
          v20 = (v15 < v16) ^ (v19 >> 14 >= v10 >> 14);
          ++v17;
          v10 = v19;
          if ((v20 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v9 = v6;
LABEL_9:
        if (v15 < v16)
        {
          if (v9 < v7)
          {
            goto LABEL_108;
          }

          if (v7 < v9)
          {
            if (v6 >= v18)
            {
              v6 = v18;
            }

            v21 = 32 * v6 - 32;
            v22 = v9;
            v23 = v7;
            do
            {
              if (v23 != --v22)
              {
                v24 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v25 = (v24 + v12);
                v26 = (v24 + v21);
                v27 = *(v25 + 2);
                v28 = *(v25 + 3);
                v29 = *v25;
                v30 = v26[1];
                *v25 = *v26;
                v25[1] = v30;
                *v26 = v29;
                *(v26 + 2) = v27;
                *(v26 + 3) = v28;
              }

              ++v23;
              v21 -= 32;
              v12 += 32;
            }

            while (v23 < v22);
            v6 = a3[1];
          }
        }
      }

      if (v9 < v6)
      {
        if (__OFSUB__(v9, v7))
        {
          goto LABEL_107;
        }

        if (v9 - v7 < a4)
        {
          if (__OFADD__(v7, a4))
          {
            goto LABEL_109;
          }

          if (v7 + a4 < v6)
          {
            v6 = v7 + a4;
          }

          if (v6 < v7)
          {
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
            return result;
          }

          if (v9 != v6)
          {
            v31 = *a3;
            v32 = *a3 + 32 * v9 - 32;
            v33 = v7 - v9;
            do
            {
              v34 = *(v31 + 32 * v9);
              v35 = v33;
              v36 = v32;
              do
              {
                if (v34 >> 14 >= *v36 >> 14)
                {
                  break;
                }

                if (!v31)
                {
                  goto LABEL_111;
                }

                v37 = *(v36 + 56);
                v38 = *(v36 + 40);
                v39 = *(v36 + 16);
                *(v36 + 32) = *v36;
                *(v36 + 48) = v39;
                *v36 = v34;
                *(v36 + 8) = v38;
                *(v36 + 24) = v37;
                v36 -= 32;
              }

              while (!__CFADD__(v35++, 1));
              ++v9;
              v32 += 32;
              --v33;
            }

            while (v9 != v6);
            v9 = v6;
          }
        }
      }

      if (v9 < v7)
      {
        goto LABEL_106;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      v87 = v9;
      if ((result & 1) == 0)
      {
        result = sub_1CFD3D410(0, *(v8 + 16) + 1, 1, v8);
        v8 = result;
      }

      v42 = *(v8 + 16);
      v41 = *(v8 + 24);
      v43 = v42 + 1;
      if (v42 >= v41 >> 1)
      {
        result = sub_1CFD3D410((v41 > 1), v42 + 1, 1, v8);
        v8 = result;
      }

      *(v8 + 16) = v43;
      v44 = v8 + 32;
      v45 = (v8 + 32 + 16 * v42);
      *v45 = v7;
      v45[1] = v9;
      v88 = *v86;
      if (!*v86)
      {
        goto LABEL_114;
      }

      if (v42)
      {
        while (1)
        {
          v46 = v43 - 1;
          v47 = (v44 + 16 * (v43 - 1));
          v48 = (v8 + 16 * v43);
          if (v43 >= 4)
          {
            break;
          }

          if (v43 == 3)
          {
            v49 = *(v8 + 32);
            v50 = *(v8 + 40);
            v59 = __OFSUB__(v50, v49);
            v51 = v50 - v49;
            v52 = v59;
LABEL_56:
            if (v52)
            {
              goto LABEL_96;
            }

            v64 = *v48;
            v63 = v48[1];
            v65 = __OFSUB__(v63, v64);
            v66 = v63 - v64;
            v67 = v65;
            if (v65)
            {
              goto LABEL_99;
            }

            v68 = v47[1];
            v69 = v68 - *v47;
            if (__OFSUB__(v68, *v47))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v66, v69))
            {
              goto LABEL_104;
            }

            if (v66 + v69 >= v51)
            {
              if (v51 < v69)
              {
                v46 = v43 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v43 < 2)
          {
            goto LABEL_98;
          }

          v71 = *v48;
          v70 = v48[1];
          v59 = __OFSUB__(v70, v71);
          v66 = v70 - v71;
          v67 = v59;
LABEL_71:
          if (v67)
          {
            goto LABEL_101;
          }

          v73 = *v47;
          v72 = v47[1];
          v59 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v59)
          {
            goto LABEL_103;
          }

          if (v74 < v66)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v46 - 1 >= v43)
          {
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
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v78 = (v44 + 16 * (v46 - 1));
          v79 = *v78;
          v80 = (v44 + 16 * v46);
          v81 = v80[1];
          result = sub_1CFD3D1C4((*a3 + 32 * *v78), (*a3 + 32 * *v80), (*a3 + 32 * v81), v88);
          if (v5)
          {
          }

          if (v81 < v79)
          {
            goto LABEL_91;
          }

          v82 = v8;
          v83 = *(v8 + 16);
          if (v46 > v83)
          {
            goto LABEL_92;
          }

          *v78 = v79;
          v78[1] = v81;
          if (v46 >= v83)
          {
            goto LABEL_93;
          }

          v43 = v83 - 1;
          result = memmove((v44 + 16 * v46), v80 + 2, 16 * (v83 - 1 - v46));
          *(v82 + 16) = v83 - 1;
          v84 = v83 > 2;
          v8 = v82;
          v5 = 0;
          if (!v84)
          {
            goto LABEL_85;
          }
        }

        v53 = v44 + 16 * v43;
        v54 = *(v53 - 64);
        v55 = *(v53 - 56);
        v59 = __OFSUB__(v55, v54);
        v56 = v55 - v54;
        if (v59)
        {
          goto LABEL_94;
        }

        v58 = *(v53 - 48);
        v57 = *(v53 - 40);
        v59 = __OFSUB__(v57, v58);
        v51 = v57 - v58;
        v52 = v59;
        if (v59)
        {
          goto LABEL_95;
        }

        v60 = v48[1];
        v61 = v60 - *v48;
        if (__OFSUB__(v60, *v48))
        {
          goto LABEL_97;
        }

        v59 = __OFADD__(v51, v61);
        v62 = v51 + v61;
        if (v59)
        {
          goto LABEL_100;
        }

        if (v62 >= v56)
        {
          v76 = *v47;
          v75 = v47[1];
          v59 = __OFSUB__(v75, v76);
          v77 = v75 - v76;
          if (v59)
          {
            goto LABEL_105;
          }

          if (v51 < v77)
          {
            v46 = v43 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v6 = a3[1];
      v7 = v87;
      a4 = v85;
      if (v87 >= v6)
      {
        v90 = v8;
        break;
      }
    }
  }

  if (!*v86)
  {
    goto LABEL_115;
  }

  sub_1CFD3D098(&v90, *v86, a3);
}

uint64_t sub_1CFD3D098(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1CFD3D3FC(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_1CFD3D1C4((*a3 + 32 * *v9), (*a3 + 32 * *v11), (*a3 + 32 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_1CFD3D1C4(char *__src, char *__dst, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = (__dst - __src) / 32;
  v9 = (a3 - __dst) / 32;
  if (v8 < v9)
  {
    if (a4 != __src || &__src[32 * v8] <= a4)
    {
      memmove(a4, __src, 32 * v8);
    }

    v11 = &v4[32 * v8];
    while (1)
    {
      if (v4 >= v11 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_38;
      }

      if (*v6 >> 14 >= *v4 >> 14)
      {
        break;
      }

      v13 = v6;
      v14 = v7 == v6;
      v6 += 32;
      if (!v14)
      {
        goto LABEL_17;
      }

LABEL_18:
      v7 += 32;
    }

    v13 = v4;
    v14 = v7 == v4;
    v4 += 32;
    if (v14)
    {
      goto LABEL_18;
    }

LABEL_17:
    v15 = *(v13 + 1);
    *v7 = *v13;
    *(v7 + 1) = v15;
    goto LABEL_18;
  }

  if (a4 != __dst || &__dst[32 * v9] <= a4)
  {
    memmove(a4, __dst, 32 * v9);
  }

  v11 = &v4[32 * v9];
LABEL_25:
  v17 = v6 - 32;
  for (v5 -= 32; v11 > v4 && v6 > v7; v5 -= 32)
  {
    if (*(v11 - 4) >> 14 < *v17 >> 14)
    {
      v14 = v5 + 32 == v6;
      v6 -= 32;
      if (!v14)
      {
        v20 = *(v17 + 1);
        *v5 = *v17;
        *(v5 + 1) = v20;
        v6 = v17;
      }

      goto LABEL_25;
    }

    if (v11 != v5 + 32)
    {
      v19 = *(v11 - 1);
      *v5 = *(v11 - 2);
      *(v5 + 1) = v19;
    }

    v11 -= 32;
  }

LABEL_38:
  v21 = (v11 - v4) / 32;
  if (v6 != v4 || v6 >= &v4[32 * v21])
  {
    memmove(v6, v4, 32 * v21);
  }

  return 1;
}

char *sub_1CFD3D370()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!result)
  {
    result = sub_1CFD3D510(result, *(v1 + 2) + 1, 1, v1);
    *v0 = result;
  }

  return result;
}

char *sub_1CFD3D3BC(char *result)
{
  v2 = *(*v1 + 3);
  if ((result + 1) > (v2 >> 1))
  {
    result = sub_1CFD3D510((v2 > 1), (result + 1), 1, *v1);
    *v1 = result;
  }

  return result;
}

char *sub_1CFD3D410(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F36A8, &unk_1CFD540B0);
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
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

char *sub_1CFD3D510(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F3608, &qword_1CFD53BB0);
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

unint64_t sub_1CFD3D618(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return sub_1CFD490F8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1CFD3D664()
{
  v0 = sub_1CFD48FA8();
  v2 = v1;
  if (v0 == sub_1CFD48FA8() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1CFD49668();
  }

  return v5 & 1;
}

BOOL sub_1CFD3D6F0(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
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

    v13 = *v6;
    v9 = v13;
    v10 = a1(&v13);
    if (v3)
    {

      return v7 != 0;
    }

    v11 = v10;

    ++v6;
  }

  while ((v11 & 1) == 0);
  return v7 != 0;
}

void sub_1CFD3D798(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1CFD48F78();
  [a3 setString_];
}

uint64_t sub_1CFD3D810(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1D3874010](v3);
  if (v3)
  {
    v5 = (a2 + 56);
    do
    {
      v6 = *(v5 - 2);
      v7 = *(v5 - 1);
      v8 = *v5;
      MEMORY[0x1D3874020](*(v5 - 3) >> 14);
      MEMORY[0x1D3874020](v6 >> 14);

      sub_1CFD49038();

      v5 += 4;
      --v3;
    }

    while (v3);
  }

  return result;
}

unint64_t sub_1CFD3D8A0()
{
  result = qword_1EC4F3628;
  if (!qword_1EC4F3628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F3628);
  }

  return result;
}

unint64_t sub_1CFD3D8F8()
{
  result = qword_1EC4F3630;
  if (!qword_1EC4F3630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F3630);
  }

  return result;
}

unint64_t sub_1CFD3D950()
{
  result = qword_1EC4F3638;
  if (!qword_1EC4F3638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F3638);
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

uint64_t sub_1CFD3D9B8(uint64_t a1, int a2)
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

uint64_t sub_1CFD3D9F8(uint64_t result, int a2, int a3)
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

uint64_t sub_1CFD3DA48(uint64_t a1, int a2)
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

uint64_t sub_1CFD3DA88(uint64_t result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for RedactedString.OutputStyle(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = OUTLINED_FUNCTION_27_0(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

unsigned __int8 *getEnumTagSinglePayload for RedactedString.Algorithm(unsigned __int8 *result, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
LABEL_18:
    v6 = *result;
    v7 = v6 >= 2;
    v8 = (v6 + 2147483646) & 0x7FFFFFFF;
    if (!v7)
    {
      v8 = -1;
    }

    if (v8 + 1 >= 2)
    {
      return v8;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v2 = a2 + 2;
    if (a2 + 2 >= 0xFFFF00)
    {
      v3 = 4;
    }

    else
    {
      v3 = 2;
    }

    if (v2 >> 8 < 0xFF)
    {
      v3 = 1;
    }

    if (v2 >= 0x100)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    switch(v4)
    {
      case 1:
        v5 = result[1];
        if (!result[1])
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 2:
        v5 = *(result + 1);
        if (!*(result + 1))
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 3:
        __break(1u);
        return result;
      case 4:
        v5 = *(result + 1);
        if (!v5)
        {
          goto LABEL_18;
        }

LABEL_16:
        result = ((*result | (v5 << 8)) - 2);
        break;
      default:
        goto LABEL_18;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RedactedString.Algorithm(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 2;
  if (a3 + 2 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 >= 0xFE)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xFD)
  {
    v7 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v6)
    {
      case 1:
        result[1] = v7;
        break;
      case 2:
        *(result + 1) = v7;
        break;
      case 3:
LABEL_25:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v7;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v6)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      case 2:
        *(result + 1) = 0;
        goto LABEL_19;
      case 3:
        goto LABEL_25;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      default:
LABEL_19:
        if (a2)
        {
LABEL_20:
          result = OUTLINED_FUNCTION_27_0(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1CFD3DD3C(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1CFD3DD58(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t sub_1CFD3DE18(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_1CFD3DF54(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F3608, &qword_1CFD53BB0);
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

uint64_t sub_1CFD3E05C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1CFD490B8();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x1D3873960](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_1CFD3E0D8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_1CFD3D664() & 1;
}

unint64_t sub_1CFD3E11C()
{
  result = qword_1EC4F36A0;
  if (!qword_1EC4F36A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F36A0);
  }

  return result;
}

uint64_t MailEntity.MailThreadMessage.uniqueId.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_27();
}

uint64_t MailEntity.MailThreadMessage.uniqueId.setter()
{
  OUTLINED_FUNCTION_30();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t MailEntity.MailThreadMessage.senderHandle.getter@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_134_2(v5);
  memcpy(a1, (v1 + 16), 0x41uLL);
  return sub_1CFCDB100(v5, &v4);
}

void *MailEntity.MailThreadMessage.senderHandle.setter(const void *a1)
{
  OUTLINED_FUNCTION_134_2(v4);
  sub_1CFCDB1BC(v4);
  return memcpy((v1 + 16), a1, 0x41uLL);
}

uint64_t MailEntity.MailThreadMessage.recipientHandles.setter(uint64_t a1)
{
  v3 = *(v1 + 88);

  *(v1 + 88) = a1;
  return result;
}

uint64_t MailEntity.MailThreadMessage.dateSentOrReceived.getter()
{
  v2 = OUTLINED_FUNCTION_357();
  v3 = *(type metadata accessor for MailEntity.MailThreadMessage(v2) + 28);
  v4 = sub_1CFD48CC8();
  v5 = OUTLINED_FUNCTION_25(v4);
  v7 = *(v6 + 16);

  return v7(v0, v1 + v3, v5);
}

uint64_t MailEntity.MailThreadMessage.dateSentOrReceived.setter()
{
  v2 = OUTLINED_FUNCTION_21();
  v3 = *(type metadata accessor for MailEntity.MailThreadMessage(v2) + 28);
  v4 = sub_1CFD48CC8();
  OUTLINED_FUNCTION_25(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, v0);
}

uint64_t MailEntity.MailThreadMessage.dateSentOrReceived.modify()
{
  v0 = OUTLINED_FUNCTION_21();
  v1 = *(type metadata accessor for MailEntity.MailThreadMessage(v0) + 28);
  return OUTLINED_FUNCTION_23();
}

uint64_t MailEntity.MailThreadMessage.isRead.setter()
{
  v2 = OUTLINED_FUNCTION_21();
  result = type metadata accessor for MailEntity.MailThreadMessage(v2);
  *(v1 + *(result + 32)) = v0;
  return result;
}

uint64_t MailEntity.MailThreadMessage.isRead.modify()
{
  v0 = OUTLINED_FUNCTION_21();
  v1 = *(type metadata accessor for MailEntity.MailThreadMessage(v0) + 32);
  return OUTLINED_FUNCTION_23();
}

uint64_t MailEntity.MailThreadMessage.subject.getter()
{
  v0 = type metadata accessor for MailEntity.MailThreadMessage(0);
  OUTLINED_FUNCTION_28(*(v0 + 36));
  return OUTLINED_FUNCTION_27();
}

uint64_t MailEntity.MailThreadMessage.subject.setter()
{
  OUTLINED_FUNCTION_30();
  v3 = (v1 + *(type metadata accessor for MailEntity.MailThreadMessage(0) + 36));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t MailEntity.MailThreadMessage.subject.modify()
{
  v0 = OUTLINED_FUNCTION_21();
  v1 = *(type metadata accessor for MailEntity.MailThreadMessage(v0) + 36);
  return OUTLINED_FUNCTION_23();
}

uint64_t MailEntity.MailThreadMessage.body.getter()
{
  v0 = type metadata accessor for MailEntity.MailThreadMessage(0);
  OUTLINED_FUNCTION_28(*(v0 + 40));
  return OUTLINED_FUNCTION_27();
}

uint64_t MailEntity.MailThreadMessage.body.setter()
{
  OUTLINED_FUNCTION_30();
  v3 = (v1 + *(type metadata accessor for MailEntity.MailThreadMessage(0) + 40));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t MailEntity.MailThreadMessage.body.modify()
{
  v0 = OUTLINED_FUNCTION_21();
  v1 = *(type metadata accessor for MailEntity.MailThreadMessage(v0) + 40);
  return OUTLINED_FUNCTION_23();
}

uint64_t MailEntity.MailThreadMessage.attachments.getter()
{
  v1 = *(v0 + *(type metadata accessor for MailEntity.MailThreadMessage(0) + 44));
}

uint64_t MailEntity.MailThreadMessage.attachments.setter()
{
  v2 = OUTLINED_FUNCTION_21();
  v3 = *(type metadata accessor for MailEntity.MailThreadMessage(v2) + 44);
  v4 = *(v1 + v3);

  *(v1 + v3) = v0;
  return result;
}

uint64_t MailEntity.MailThreadMessage.attachments.modify()
{
  v0 = OUTLINED_FUNCTION_21();
  v1 = *(type metadata accessor for MailEntity.MailThreadMessage(v0) + 44);
  return OUTLINED_FUNCTION_23();
}

uint64_t MailEntity.MailThreadMessage.init(uniqueId:senderHandle:recipientHandles:dateSentOrReceived:isRead:subject:body:attachments:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, const void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v18 = type metadata accessor for MailEntity.MailThreadMessage(0);
  v19 = &a9[v18[9]];
  v20 = &a9[v18[10]];
  *a9 = a1;
  *(a9 + 1) = a2;
  memcpy(a9 + 16, a3, 0x41uLL);
  *(a9 + 11) = a4;
  v21 = v18[7];
  v22 = sub_1CFD48CC8();
  OUTLINED_FUNCTION_25(v22);
  result = (*(v23 + 32))(&a9[v21], a5);
  a9[v18[8]] = a6;
  *v19 = a7;
  *(v19 + 1) = a8;
  *v20 = a10;
  *(v20 + 1) = a11;
  *&a9[v18[11]] = a12;
  return result;
}

uint64_t static MailEntity.MailThreadMessage.== infix(_:_:)(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (v5 = sub_1CFD49668(), v6 = 0, (v5 & 1) != 0))
  {
    OUTLINED_FUNCTION_134_2(v28);
    OUTLINED_FUNCTION_134_2(v27);
    memcpy(__dst, a2 + 2, 0x41uLL);
    memcpy(__src, a2 + 2, 0x41uLL);
    sub_1CFCDB100(v28, v25);
    sub_1CFCDB100(__dst, v25);
    v7 = static EntityHandle.== infix(_:_:)(v27, __src);
    memcpy(v30, __src, 0x41uLL);
    sub_1CFCDB1BC(v30);
    memcpy(v31, v27, 0x41uLL);
    sub_1CFCDB1BC(v31);
    if (!v7)
    {
      goto LABEL_10;
    }

    if ((sub_1CFCDCB14(a1[11], a2[11]) & 1) == 0)
    {
      goto LABEL_10;
    }

    v8 = type metadata accessor for MailEntity.MailThreadMessage(0);
    v9 = v8[7];
    if ((sub_1CFD48CA8() & 1) == 0 || *(a1 + v8[8]) != *(a2 + v8[8]))
    {
      goto LABEL_10;
    }

    v11 = v8[9];
    OUTLINED_FUNCTION_6_0();
    if (v14)
    {
      if (!v12)
      {
        goto LABEL_10;
      }

      OUTLINED_FUNCTION_19(v13);
      v17 = v4 && v15 == v16;
      if (!v17 && (sub_1CFD49668() & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    else if (v12)
    {
      goto LABEL_10;
    }

    v18 = v8[10];
    OUTLINED_FUNCTION_6_0();
    if (v21)
    {
      if (!v19)
      {
        goto LABEL_10;
      }

      OUTLINED_FUNCTION_19(v20);
      v24 = v4 && v22 == v23;
      if (!v24 && (sub_1CFD49668() & 1) == 0)
      {
        goto LABEL_10;
      }

LABEL_30:
      v6 = sub_1CFCDCC38(*(a1 + v8[11]), *(a2 + v8[11]));
      return v6 & 1;
    }

    if (!v19)
    {
      goto LABEL_30;
    }

LABEL_10:
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_1CFD3EA20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MailEntity.MailThreadMessage(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = (&v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v11 = (&v43 - v10);
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    return 0;
  }

  if (!v12 || a1 == a2)
  {
    return 1;
  }

  v13 = 0;
  v14 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v15 = a1 + v14;
  v49 = a2 + v14;
  v16 = *(v9 + 72);
  v47 = v4;
  v48 = v8;
  v45 = a1 + v14;
  v46 = v12;
  v44 = v16;
  while (1)
  {
    v17 = v16 * v13;
    result = sub_1CFD46B64(v15 + v16 * v13, v11, type metadata accessor for MailEntity.MailThreadMessage);
    if (v13 == v12)
    {
      break;
    }

    sub_1CFD46B64(v49 + v17, v8, type metadata accessor for MailEntity.MailThreadMessage);
    v19 = *v11 == *v8 && v11[1] == v8[1];
    if (!v19 && (sub_1CFD49668() & 1) == 0)
    {
      goto LABEL_44;
    }

    memcpy(v58, v11 + 2, 0x41uLL);
    memcpy(v57, v11 + 2, 0x41uLL);
    memcpy(v59, v8 + 2, 0x41uLL);
    memcpy(v56, v8 + 2, 0x41uLL);
    sub_1CFCDB100(v58, v55);
    sub_1CFCDB100(v59, v55);
    v20 = static EntityHandle.== infix(_:_:)(v57, v56);
    memcpy(__dst, v56, 0x41uLL);
    sub_1CFCDB1BC(__dst);
    memcpy(v61, v57, 0x41uLL);
    result = sub_1CFCDB1BC(v61);
    if (!v20 || (v50 = v13, v21 = v11[11], v22 = v8[11], v23 = *(v21 + 16), v23 != *(v22 + 16)))
    {
LABEL_44:
      sub_1CFD46BC0();
      sub_1CFD46BC0();
      return 0;
    }

    if (v23 && v21 != v22)
    {
      v24 = 0;
      v25 = (v21 + 32);
      v26 = (v22 + 32);
      while (v24 < *(v21 + 16))
      {
        memcpy(v54, v25, 0x41uLL);
        result = memmove(v53, v25, 0x41uLL);
        if (v24 >= *(v22 + 16))
        {
          goto LABEL_48;
        }

        memcpy(v55, v26, 0x41uLL);
        memmove(v52, v26, 0x41uLL);
        sub_1CFCDB100(v54, v51);
        sub_1CFCDB100(v55, v51);
        sub_1CFCE0448();
        v27 = sub_1CFD48EE8();
        memcpy(v56, v52, 0x41uLL);
        sub_1CFCDB1BC(v56);
        memcpy(v57, v53, 0x41uLL);
        result = sub_1CFCDB1BC(v57);
        if ((v27 & 1) == 0)
        {
          goto LABEL_44;
        }

        ++v24;
        v26 += 72;
        v25 += 72;
        if (v23 == v24)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_48:
      __break(1u);
      break;
    }

LABEL_20:
    v28 = v47;
    v8 = v48;
    v29 = v47[7];
    if ((sub_1CFD48CA8() & 1) == 0 || *(v11 + v28[8]) != *(v8 + v28[8]))
    {
      goto LABEL_44;
    }

    v30 = v28[9];
    v31 = (v11 + v30);
    v32 = *(v11 + v30 + 8);
    v33 = (v8 + v30);
    v34 = v33[1];
    if (v32)
    {
      v12 = v46;
      v35 = v50;
      if (!v34)
      {
        goto LABEL_44;
      }

      v36 = *v31 == *v33 && v32 == v34;
      if (!v36 && (sub_1CFD49668() & 1) == 0)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v12 = v46;
      v35 = v50;
      if (v34)
      {
        goto LABEL_44;
      }
    }

    v37 = v28[10];
    v38 = (v11 + v37);
    v39 = *(v11 + v37 + 8);
    v40 = (v8 + v37);
    v41 = v40[1];
    if (v39)
    {
      if (!v41)
      {
        goto LABEL_44;
      }

      v42 = *v38 == *v40 && v39 == v41;
      if (!v42 && (sub_1CFD49668() & 1) == 0)
      {
        goto LABEL_44;
      }
    }

    else if (v41)
    {
      goto LABEL_44;
    }

    if ((sub_1CFCDCC38(*(v11 + v28[11]), *(v8 + v28[11])) & 1) == 0)
    {
      goto LABEL_44;
    }

    v13 = v35 + 1;
    sub_1CFD46BC0();
    sub_1CFD46BC0();
    result = 1;
    v16 = v44;
    v15 = v45;
    if (v13 == v12)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1CFD3EED0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for QuotedRegion();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v11 = &v19 - v10;
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (!v12 || a1 == a2)
    {
      v17 = 1;
    }

    else
    {
      v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v14 = a1 + v13;
      v15 = a2 + v13;
      v16 = *(v9 + 72);
      do
      {
        sub_1CFD46B64(v14, v11, type metadata accessor for QuotedRegion);
        sub_1CFD46B64(v15, v8, type metadata accessor for QuotedRegion);
        sub_1CFD3F824(&unk_1EC4F37F0, type metadata accessor for QuotedRegion);
        v17 = sub_1CFD48EE8();
        sub_1CFD46BC0();
        sub_1CFD46BC0();
        if ((v17 & 1) == 0)
        {
          break;
        }

        v15 += v16;
        v14 += v16;
        --v12;
      }

      while (v12);
    }
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_1CFD3F0C8()
{
  OUTLINED_FUNCTION_79_0();
  v3 = v3 && v2 == 0xE800000000000000;
  if (v3 || (OUTLINED_FUNCTION_20() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = v1 == OUTLINED_FUNCTION_55() && v0 == v5;
    if (v6 || (OUTLINED_FUNCTION_20() & 1) != 0)
    {

      return 1;
    }

    else
    {
      OUTLINED_FUNCTION_106_0();
      v8 = v3 && v7 == v0;
      if (v8 || (OUTLINED_FUNCTION_20() & 1) != 0)
      {

        return 2;
      }

      else
      {
        OUTLINED_FUNCTION_197();
        v10 = v1 == 0xD000000000000012 && v9 == v0;
        if (v10 || (OUTLINED_FUNCTION_20() & 1) != 0)
        {

          return 3;
        }

        else
        {
          OUTLINED_FUNCTION_114_1();
          v11 = v3 && v0 == 0xE600000000000000;
          if (v11 || (OUTLINED_FUNCTION_20() & 1) != 0)
          {

            return 4;
          }

          else
          {
            OUTLINED_FUNCTION_99_2();
            v12 = v3 && v0 == 0xE700000000000000;
            if (v12 || (OUTLINED_FUNCTION_20() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v13 = v1 == 2036625250 && v0 == 0xE400000000000000;
              if (v13 || (OUTLINED_FUNCTION_20() & 1) != 0)
              {

                return 6;
              }

              else if (v1 == OUTLINED_FUNCTION_57() && v0 == v14)
              {

                return 7;
              }

              else
              {
                OUTLINED_FUNCTION_20();
                OUTLINED_FUNCTION_37_0();
                if (v1)
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

void sub_1CFD3F278(char a1)
{
  switch(a1)
  {
    case 1:
      OUTLINED_FUNCTION_55();
      break;
    case 2:
    case 3:
      OUTLINED_FUNCTION_197();
      break;
    case 4:
      OUTLINED_FUNCTION_74_1();
      break;
    case 5:
      OUTLINED_FUNCTION_71_2();
      break;
    case 6:
      OUTLINED_FUNCTION_93_1();
      break;
    case 7:
      OUTLINED_FUNCTION_57();
      break;
    default:
      return;
  }
}

uint64_t sub_1CFD3F338@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1CFD3F0C8();
  *a1 = result;
  return result;
}

uint64_t sub_1CFD3F368()
{
  sub_1CFD3F71C();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1CFD3F3A0()
{
  sub_1CFD3F71C();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

void MailEntity.MailThreadMessage.encode(to:)()
{
  OUTLINED_FUNCTION_143();
  v3 = v0;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F36B0, &qword_1CFD540D0);
  OUTLINED_FUNCTION_37(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_147();
  v12 = v5[4];
  OUTLINED_FUNCTION_178(v5, v5[3]);
  sub_1CFD3F71C();
  OUTLINED_FUNCTION_127_1();
  sub_1CFD497A8();
  v13 = *v3;
  v14 = v3[1];
  OUTLINED_FUNCTION_7_5();
  sub_1CFD495E8();
  if (!v1)
  {
    memcpy(v32, v3 + 2, 0x41uLL);
    memcpy(v31, v3 + 2, sizeof(v31));
    sub_1CFCDB100(v32, v30);
    sub_1CFCDF174();
    OUTLINED_FUNCTION_7_5();
    sub_1CFD49618();
    memcpy(v30, v31, 0x41uLL);
    sub_1CFCDB1BC(v30);
    v28 = v3[11];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2AA8, &unk_1CFD49F00);
    OUTLINED_FUNCTION_47_4();
    sub_1CFD048E4(v15, v16);
    OUTLINED_FUNCTION_126_0();
    OUTLINED_FUNCTION_7_5();
    sub_1CFD49618();
    v17 = type metadata accessor for MailEntity.MailThreadMessage(0);
    v18 = v17[7];
    OUTLINED_FUNCTION_125_2(3);
    sub_1CFD48CC8();
    OUTLINED_FUNCTION_3_9();
    sub_1CFD3F824(v19, v20);
    OUTLINED_FUNCTION_126_0();
    OUTLINED_FUNCTION_7_5();
    sub_1CFD49618();
    v21 = *(v3 + v17[8]);
    OUTLINED_FUNCTION_125_2(4);
    OUTLINED_FUNCTION_7_5();
    sub_1CFD495F8();
    v22 = (v3 + v17[9]);
    v23 = *v22;
    v24 = v22[1];
    OUTLINED_FUNCTION_125_2(5);
    OUTLINED_FUNCTION_7_5();
    sub_1CFD495B8();
    v25 = (v3 + v17[10]);
    v26 = *v25;
    v27 = v25[1];
    OUTLINED_FUNCTION_125_2(6);
    OUTLINED_FUNCTION_7_5();
    sub_1CFD495B8();
    v29 = *(v3 + v17[11]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2AB8, &qword_1CFD4D060);
    sub_1CFD3F770();
    OUTLINED_FUNCTION_126_0();
    OUTLINED_FUNCTION_7_5();
    sub_1CFD49618();
  }

  (*(v8 + 8))(v2, v6);
  OUTLINED_FUNCTION_142();
}

unint64_t sub_1CFD3F71C()
{
  result = qword_1EC505F40;
  if (!qword_1EC505F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC505F40);
  }

  return result;
}

unint64_t sub_1CFD3F770()
{
  result = qword_1EC4F2AC0;
  if (!qword_1EC4F2AC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4F2AB8, &qword_1CFD4D060);
    sub_1CFD3F824(&qword_1EC4F2AC8, type metadata accessor for EntityAttachment);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F2AC0);
  }

  return result;
}

uint64_t sub_1CFD3F824(unint64_t *a1, void (*a2)(uint64_t))
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

void MailEntity.MailThreadMessage.init(from:)()
{
  OUTLINED_FUNCTION_143();
  v2 = v1;
  v34 = v3;
  v38 = sub_1CFD48CC8();
  v4 = OUTLINED_FUNCTION_37(v38);
  v36 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_0();
  v10 = v9 - v8;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F36B8, &qword_1CFD540D8);
  OUTLINED_FUNCTION_37(v35);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_148();
  v37 = type metadata accessor for MailEntity.MailThreadMessage(0);
  v14 = OUTLINED_FUNCTION_25(v37);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2_0();
  v19 = (v18 - v17);
  v20 = v2[4];
  OUTLINED_FUNCTION_178(v2, v2[3]);
  sub_1CFD3F71C();
  sub_1CFD49788();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    v40[0] = 0;
    *v19 = sub_1CFD49548();
    v19[1] = v21;
    sub_1CFCDF450();
    sub_1CFD49578();
    memcpy(v19 + 2, v40, 0x41uLL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2AA8, &unk_1CFD49F00);
    OUTLINED_FUNCTION_45_4();
    sub_1CFD048E4(v22, v23);
    OUTLINED_FUNCTION_131_2();
    v19[11] = v39;
    LOBYTE(v39) = 3;
    OUTLINED_FUNCTION_3_9();
    sub_1CFD3F824(v24, v25);
    OUTLINED_FUNCTION_131_2();
    (*(v36 + 32))(v19 + v37[7], v10, v38);
    OUTLINED_FUNCTION_24_7(4);
    *(v19 + v37[8]) = sub_1CFD49558() & 1;
    OUTLINED_FUNCTION_24_7(5);
    v26 = sub_1CFD49518();
    v27 = (v19 + v37[9]);
    *v27 = v26;
    v27[1] = v28;
    OUTLINED_FUNCTION_24_7(6);
    v29 = sub_1CFD49518();
    v30 = (v19 + v37[10]);
    *v30 = v29;
    v30[1] = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2AB8, &qword_1CFD4D060);
    sub_1CFD3FE10();
    sub_1CFD49578();
    v32 = OUTLINED_FUNCTION_17_8();
    v33(v32);
    *(v19 + v37[11]) = v39;
    sub_1CFD46B64(v19, v34, type metadata accessor for MailEntity.MailThreadMessage);
    __swift_destroy_boxed_opaque_existential_1(v2);
    sub_1CFD46BC0();
  }

  OUTLINED_FUNCTION_142();
}

unint64_t sub_1CFD3FE10()
{
  result = qword_1EC4F2B20;
  if (!qword_1EC4F2B20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4F2AB8, &qword_1CFD4D060);
    sub_1CFD3F824(&qword_1EC4F2B28, type metadata accessor for EntityAttachment);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F2B20);
  }

  return result;
}

uint64_t MailEntity.Thread.quotedRegions.getter()
{
  if (*(v0 + 8) != 1)
  {
    return 0;
  }

  v1 = *v0;
}

uint64_t MailEntity.Thread.mailThreadMessages.getter()
{
  if (v0[1])
  {
    return 0;
  }

  v2 = *v0;
}

uint64_t static MailEntity.Thread.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (a1[1])
  {
    if (*(a2 + 8))
    {
      v5 = *a2;

      v7 = sub_1CFD3EED0(v6, v3);
LABEL_7:
      v8 = v7;

      return v8 & 1;
    }
  }

  else if ((*(a2 + 8) & 1) == 0)
  {
    v9 = *a2;

    v7 = sub_1CFD3EA20(v10, v3);
    goto LABEL_7;
  }

  v8 = 0;
  return v8 & 1;
}

uint64_t sub_1CFD3FFF4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000012 && 0x80000001CFD5F900 == a2;
  if (v3 || (OUTLINED_FUNCTION_20() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65526465746F7571 && a2 == 0xED0000736E6F6967)
  {

    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_37_0();
    if (a1)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1CFD400AC(char a1)
{
  if (a1)
  {
    return 0x65526465746F7571;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_1CFD400FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CFD3FFF4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1CFD40124()
{
  sub_1CFD40564();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1CFD4015C()
{
  sub_1CFD40564();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1CFD40194()
{
  sub_1CFD406C0();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1CFD401CC()
{
  sub_1CFD406C0();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1CFD40204()
{
  sub_1CFD405B8();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1CFD4023C()
{
  sub_1CFD405B8();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

void MailEntity.Thread.encode(to:)()
{
  OUTLINED_FUNCTION_143();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F36C0, &qword_1CFD540E0);
  v5 = OUTLINED_FUNCTION_37(v4);
  v32 = v6;
  v33 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_148();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F36C8, &qword_1CFD540E8);
  v11 = OUTLINED_FUNCTION_37(v10);
  v30 = v12;
  v31 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v29 - v16;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F36D0, &qword_1CFD540F0);
  OUTLINED_FUNCTION_37(v35);
  v19 = v18;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v29 - v23;
  v34 = *v0;
  v25 = *(v0 + 8);
  v26 = v3[4];
  OUTLINED_FUNCTION_178(v3, v3[3]);
  sub_1CFD40564();
  sub_1CFD497A8();
  if (v25)
  {
    sub_1CFD405B8();
    OUTLINED_FUNCTION_97_1();
    sub_1CFD495A8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F36D8, &qword_1CFD540F8);
    sub_1CFD4060C();
    v27 = v33;
    sub_1CFD49618();
    (*(v32 + 8))(v1, v27);
  }

  else
  {
    sub_1CFD406C0();
    OUTLINED_FUNCTION_97_1();
    sub_1CFD495A8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F36F0, &qword_1CFD54100);
    sub_1CFD40714();
    v28 = v31;
    sub_1CFD49618();
    (*(v30 + 8))(v17, v28);
  }

  (*(v19 + 8))(v24, v25);
  OUTLINED_FUNCTION_140_0();
  OUTLINED_FUNCTION_142();
}

unint64_t sub_1CFD40564()
{
  result = qword_1EC505F48;
  if (!qword_1EC505F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC505F48);
  }

  return result;
}

unint64_t sub_1CFD405B8()
{
  result = qword_1EC505F50;
  if (!qword_1EC505F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC505F50);
  }

  return result;
}

unint64_t sub_1CFD4060C()
{
  result = qword_1EC4F36E0;
  if (!qword_1EC4F36E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4F36D8, &qword_1CFD540F8);
    sub_1CFD3F824(&qword_1EC4F36E8, type metadata accessor for QuotedRegion);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F36E0);
  }

  return result;
}

unint64_t sub_1CFD406C0()
{
  result = qword_1EC505F58;
  if (!qword_1EC505F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC505F58);
  }

  return result;
}

unint64_t sub_1CFD40714()
{
  result = qword_1EC4F36F8;
  if (!qword_1EC4F36F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4F36F0, &qword_1CFD54100);
    sub_1CFD3F824(&qword_1EC4F3700, type metadata accessor for MailEntity.MailThreadMessage);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F36F8);
  }

  return result;
}

void MailEntity.Thread.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_143();
  v67 = v12;
  v68 = v10;
  v14 = v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F3708, &qword_1CFD54108);
  v16 = OUTLINED_FUNCTION_37(v15);
  v64 = v17;
  v65 = v16;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_146();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F3710, &qword_1CFD54110);
  OUTLINED_FUNCTION_37(v21);
  v63 = v22;
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_148();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F3718, &unk_1CFD54118);
  OUTLINED_FUNCTION_37(v26);
  v66 = v27;
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v30);
  v32 = v62 - v31;
  v33 = v14[4];
  OUTLINED_FUNCTION_178(v14, v14[3]);
  sub_1CFD40564();
  v34 = v68;
  sub_1CFD49788();
  if (v34)
  {
    goto LABEL_8;
  }

  v62[2] = v21;
  v62[3] = v11;
  v68 = v14;
  v35 = v67;
  v36 = sub_1CFD49588();
  v40 = sub_1CFCE83C4(v36, 0);
  if (v38 == v39 >> 1)
  {
LABEL_7:
    v47 = sub_1CFD49448();
    swift_allocError();
    v49 = v48;
    v50 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2CB0, &qword_1CFD4BF00) + 48);
    *v49 = &type metadata for MailEntity.Thread;
    sub_1CFD49508();
    OUTLINED_FUNCTION_65_0();
    v51 = *MEMORY[0x1E69E6AF8];
    OUTLINED_FUNCTION_29_2(v47);
    (*(v52 + 104))(v49);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v66 + 8))(v32, v26);
    v14 = v68;
LABEL_8:
    __swift_destroy_boxed_opaque_existential_1(v14);
LABEL_9:
    OUTLINED_FUNCTION_142();
    return;
  }

  v62[1] = 0;
  if (v38 < (v39 >> 1))
  {
    v41 = *(v37 + v38);
    sub_1CFCE840C(v38 + 1, v39 >> 1, v40, v37, v38, v39);
    v43 = v42;
    v45 = v44;
    swift_unknownObjectRelease();
    if (v43 == v45 >> 1)
    {
      v46 = v41;
      if (v41)
      {
        LODWORD(v63) = v41;
        LOBYTE(a10) = 1;
        sub_1CFD405B8();
        OUTLINED_FUNCTION_130_1();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F36D8, &qword_1CFD540F8);
        sub_1CFD46504();
        sub_1CFD49578();
        swift_unknownObjectRelease();
        v53 = OUTLINED_FUNCTION_124_2();
        v54(v53);
        v55 = OUTLINED_FUNCTION_59_3();
        v56(v55);
        v57 = a10;
        v46 = v63;
      }

      else
      {
        LOBYTE(a10) = 0;
        sub_1CFD406C0();
        OUTLINED_FUNCTION_130_1();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F36F0, &qword_1CFD54100);
        sub_1CFD465B8();
        OUTLINED_FUNCTION_126_0();
        sub_1CFD49578();
        swift_unknownObjectRelease();
        v58 = OUTLINED_FUNCTION_116_2();
        v59(v58);
        v60 = OUTLINED_FUNCTION_59_3();
        v61(v60);
        v57 = a10;
        v35 = v67;
      }

      *v35 = v57;
      *(v35 + 8) = v46;
      __swift_destroy_boxed_opaque_existential_1(v68);
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t MailEntity.Body.text.getter()
{
  if (*(v0 + 16) <= 1u)
  {
    v3 = v0;
    v2 = *v0;
    v1 = v3[1];
    v4 = OUTLINED_FUNCTION_71();
    sub_1CFD08E34(v4, v5, v6);
  }

  return OUTLINED_FUNCTION_71();
}

unint64_t MailEntity.Body.kind.getter()
{
  if (!*(v0 + 16))
  {
    return OUTLINED_FUNCTION_80_0();
  }

  if (*(v0 + 16) == 1)
  {
    return OUTLINED_FUNCTION_51_3();
  }

  if (*v0 ^ 1 | *(v0 + 8))
  {
    v2 = 0xD000000000000016;
  }

  else
  {
    v2 = 0xD000000000000011;
  }

  if (*v0 == 0)
  {
    return 0xD000000000000018;
  }

  else
  {
    return v2;
  }
}

uint64_t static MailEntity.Body.== infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = a2[1];
  v7 = *(a2 + 16);
  if (!*(a1 + 16))
  {
    if (*(a2 + 16))
    {
      goto LABEL_40;
    }

    v21 = *a1;
    if (v3 != v6 || v2 != v5)
    {
      v9 = sub_1CFD49668();
      v23 = OUTLINED_FUNCTION_423();
      v25 = OUTLINED_FUNCTION_29_4(v23, v24, 0);
      v27 = OUTLINED_FUNCTION_29_4(v25, v26, 0);
      sub_1CFCEF63C(v27, v28, 0);
      v18 = OUTLINED_FUNCTION_423();
      v20 = 0;
      goto LABEL_15;
    }

    v61 = OUTLINED_FUNCTION_29_4(v21, v2, 0);
    v63 = OUTLINED_FUNCTION_29_4(v61, v62, 0);
    sub_1CFCEF63C(v63, v64, 0);
    v41 = OUTLINED_FUNCTION_71();
    v66 = 0;
LABEL_47:
    sub_1CFCEF63C(v41, v65, v66);
    return 1;
  }

  if (v4 == 1)
  {
    if (v7 == 1)
    {
      if (v3 != v6 || v2 != v5)
      {
        OUTLINED_FUNCTION_71();
        v9 = sub_1CFD49668();
        v10 = OUTLINED_FUNCTION_423();
        sub_1CFD08E34(v10, v11, 1u);
        v12 = OUTLINED_FUNCTION_26_4();
        sub_1CFD08E34(v12, v13, v14);
        v15 = OUTLINED_FUNCTION_26_4();
        sub_1CFCEF63C(v15, v16, v17);
        v18 = OUTLINED_FUNCTION_423();
        v20 = 1;
LABEL_15:
        sub_1CFCEF63C(v18, v19, v20);
        return v9 & 1;
      }

      v34 = 1;
      v52 = OUTLINED_FUNCTION_26_4();
      sub_1CFD08E34(v52, v53, v54);
      v55 = OUTLINED_FUNCTION_26_4();
      sub_1CFD08E34(v55, v56, v57);
      v58 = OUTLINED_FUNCTION_26_4();
      sub_1CFCEF63C(v58, v59, v60);
      v35 = OUTLINED_FUNCTION_26_4();
      goto LABEL_43;
    }

    goto LABEL_40;
  }

  if (!(v3 | v2))
  {
    if (v7 != 2 || (v5 | v6) != 0)
    {
      goto LABEL_40;
    }

    v39 = OUTLINED_FUNCTION_71();
    sub_1CFCEF63C(v39, v40, 2u);
    v41 = 0;
LABEL_46:
    v65 = 0;
    v66 = 2;
    goto LABEL_47;
  }

  if (v3 ^ 1 | v2)
  {
    if (v7 != 2 || v6 != 2 || v5 != 0)
    {
      goto LABEL_40;
    }

    v67 = OUTLINED_FUNCTION_71();
    sub_1CFCEF63C(v67, v68, 2u);
    v41 = 2;
    goto LABEL_46;
  }

  if (v7 == 2 && v6 == 1 && v5 == 0)
  {
    v32 = OUTLINED_FUNCTION_71();
    sub_1CFCEF63C(v32, v33, 2u);
    v34 = 1;
    v35 = 1;
    v36 = 0;
    v37 = 2;
LABEL_43:
    sub_1CFCEF63C(v35, v36, v37);
    return v34;
  }

LABEL_40:
  v44 = OUTLINED_FUNCTION_423();
  v46 = OUTLINED_FUNCTION_29_4(v44, v45, v7);
  v48 = OUTLINED_FUNCTION_29_4(v46, v47, v4);
  sub_1CFCEF63C(v48, v49, v4);
  v50 = OUTLINED_FUNCTION_423();
  sub_1CFCEF63C(v50, v51, v7);
  return 0;
}

uint64_t sub_1CFD40FE4(uint64_t a1, uint64_t a2)
{
  v5 = a1 == OUTLINED_FUNCTION_80_0() && a2 == v4;
  if (v5 || (OUTLINED_FUNCTION_20() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v7 = a1 == 0x657461636E757274 && a2 == 0xE900000000000064;
    if (v7 || (OUTLINED_FUNCTION_20() & 1) != 0)
    {

      return 1;
    }

    else
    {
      OUTLINED_FUNCTION_197();
      v9 = a1 == 0xD000000000000018 && v8 == a2;
      if (v9 || (OUTLINED_FUNCTION_20() & 1) != 0)
      {

        return 2;
      }

      else
      {
        OUTLINED_FUNCTION_106_0();
        v11 = v5 && v10 == a2;
        if (v11 || (OUTLINED_FUNCTION_20() & 1) != 0)
        {

          return 3;
        }

        else
        {
          OUTLINED_FUNCTION_197();
          if (a1 == 0xD000000000000016 && v12 == a2)
          {

            return 4;
          }

          else
          {
            OUTLINED_FUNCTION_20();
            OUTLINED_FUNCTION_37_0();
            if (a1)
            {
              return 4;
            }

            else
            {
              return 5;
            }
          }
        }
      }
    }
  }
}

void sub_1CFD4112C()
{
  OUTLINED_FUNCTION_80_0();
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_51_3();
      break;
    case 2:
    case 4:
      OUTLINED_FUNCTION_136_2();
      break;
    case 3:
      OUTLINED_FUNCTION_197();
      break;
    default:
      return;
  }
}

uint64_t sub_1CFD411D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CFD40FE4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1CFD411F8()
{
  sub_1CFD4666C();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1CFD41230()
{
  sub_1CFD4666C();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1CFD41268()
{
  sub_1CFD466C0();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1CFD412A0()
{
  sub_1CFD466C0();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1CFD412D8()
{
  sub_1CFD46714();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1CFD41310()
{
  sub_1CFD46714();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1CFD41348()
{
  sub_1CFD46810();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1CFD41380()
{
  sub_1CFD46810();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1CFD413B8()
{
  sub_1CFD467BC();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1CFD413F0()
{
  sub_1CFD467BC();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1CFD41428()
{
  sub_1CFD46768();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1CFD41460()
{
  sub_1CFD46768();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

void MailEntity.Body.encode(to:)()
{
  OUTLINED_FUNCTION_143();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F3740, &qword_1CFD54128);
  OUTLINED_FUNCTION_37(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_22_1();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F3748, &qword_1CFD54130);
  OUTLINED_FUNCTION_37(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_22_1();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F3750, &qword_1CFD54138);
  OUTLINED_FUNCTION_37(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_22_1();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F3758, &qword_1CFD54140);
  v18 = OUTLINED_FUNCTION_37(v17);
  v42 = v19;
  v43 = v18;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_148();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F3760, &qword_1CFD54148);
  OUTLINED_FUNCTION_37(v23);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_147();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F3768, &qword_1CFD54150);
  v45 = OUTLINED_FUNCTION_37(v27);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_146();
  v44 = *v0;
  v31 = *(v0 + 16);
  v32 = v4[4];
  OUTLINED_FUNCTION_178(v4, v4[3]);
  sub_1CFD4666C();
  sub_1CFD497A8();
  if (!v31)
  {
    sub_1CFD46810();
    sub_1CFD495A8();
    sub_1CFD495E8();
    v36 = OUTLINED_FUNCTION_237();
    v37(v36, v23);
    v33 = OUTLINED_FUNCTION_94_0();
    v35 = v45;
    goto LABEL_5;
  }

  if (v31 == 1)
  {
    sub_1CFD467BC();
    OUTLINED_FUNCTION_97_1();
    sub_1CFD495A8();
    sub_1CFD495E8();
    (*(v42 + 8))(v2, v43);
    v33 = OUTLINED_FUNCTION_94_0();
    v35 = v1;
LABEL_5:
    v34(v33, v35);
    goto LABEL_13;
  }

  if (v44 == 0)
  {
    sub_1CFD46768();
    OUTLINED_FUNCTION_63_2();
  }

  else
  {
    if (v44 ^ 1 | *(&v44 + 1))
    {
      sub_1CFD466C0();
    }

    else
    {
      sub_1CFD46714();
    }

    OUTLINED_FUNCTION_63_2();
  }

  v38 = OUTLINED_FUNCTION_237();
  v39(v38);
  v40 = OUTLINED_FUNCTION_94_0();
  v41(v40, v31);
LABEL_13:
  OUTLINED_FUNCTION_140_0();
  OUTLINED_FUNCTION_142();
}

void MailEntity.Body.init(from:)()
{
  OUTLINED_FUNCTION_143();
  v110 = v0;
  v3 = v2;
  v106 = v4;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F3770, &qword_1CFD54158);
  OUTLINED_FUNCTION_37(v101);
  v104 = v5;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_22_1();
  v108 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F3778, &qword_1CFD54160);
  v11 = OUTLINED_FUNCTION_37(v10);
  v102 = v12;
  v103 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_22_1();
  v107 = v16;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F3780, &qword_1CFD54168);
  OUTLINED_FUNCTION_37(v99);
  v97 = v17;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_22_1();
  v105 = v21;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F3788, &qword_1CFD54170);
  OUTLINED_FUNCTION_37(v100);
  v98 = v22;
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_147();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F3790, &qword_1CFD54178);
  OUTLINED_FUNCTION_37(v26);
  v96 = v27;
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v30);
  v32 = v92 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F3798, &unk_1CFD54180);
  OUTLINED_FUNCTION_37(v33);
  v35 = v34;
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v38);
  v40 = v92 - v39;
  v42 = v3[3];
  v41 = v3[4];
  v109 = v3;
  OUTLINED_FUNCTION_178(v3, v42);
  sub_1CFD4666C();
  v43 = v110;
  sub_1CFD49788();
  if (v43)
  {
    goto LABEL_10;
  }

  v93 = v26;
  v94 = v32;
  v95 = v1;
  v110 = v35;
  v44 = sub_1CFD49588();
  v45 = sub_1CFCE83C4(v44, 0);
  if (v47 == v48 >> 1)
  {
    v49 = v110;
LABEL_9:
    v59 = sub_1CFD49448();
    swift_allocError();
    v61 = v60;
    v62 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2CB0, &qword_1CFD4BF00) + 48);
    *v61 = &type metadata for MailEntity.Body;
    sub_1CFD49508();
    OUTLINED_FUNCTION_65_0();
    v63 = *MEMORY[0x1E69E6AF8];
    OUTLINED_FUNCTION_29_2(v59);
    (*(v64 + 104))(v61);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v49 + 8))(v40, v33);
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1(v109);
LABEL_11:
    OUTLINED_FUNCTION_140_0();
    OUTLINED_FUNCTION_142();
    return;
  }

  v92[1] = 0;
  if (v47 < (v48 >> 1))
  {
    v50 = *(v46 + v47);
    sub_1CFCE840C(v47 + 1, v48 >> 1, v45, v46, v47, v48);
    v52 = v51;
    v54 = v53;
    swift_unknownObjectRelease();
    if (v52 == v54 >> 1)
    {
      v55 = v106;
      switch(v50)
      {
        case 1:
          sub_1CFD467BC();
          OUTLINED_FUNCTION_75_2();
          v108 = v40;
          v77 = v100;
          v78 = sub_1CFD49548();
          v58 = v109;
          v79 = v78;
          v81 = v87;
          swift_unknownObjectRelease();
          v88 = OUTLINED_FUNCTION_237();
          v89(v88, v77);
          v90 = OUTLINED_FUNCTION_61_3();
          v91(v90);
          v86 = 1;
          break;
        case 2:
          sub_1CFD46768();
          OUTLINED_FUNCTION_75_2();
          v81 = 0;
          swift_unknownObjectRelease();
          v69 = OUTLINED_FUNCTION_237();
          v70(v69, v99);
          v71 = OUTLINED_FUNCTION_28_2();
          v72(v71);
          v79 = 0;
          goto LABEL_14;
        case 3:
          sub_1CFD46714();
          OUTLINED_FUNCTION_75_2();
          v81 = 0;
          swift_unknownObjectRelease();
          v73 = OUTLINED_FUNCTION_424();
          v74(v73);
          v75 = OUTLINED_FUNCTION_28_2();
          v76(v75);
          v86 = 2;
          v79 = 1;
          goto LABEL_16;
        case 4:
          sub_1CFD466C0();
          OUTLINED_FUNCTION_75_2();
          v81 = 0;
          swift_unknownObjectRelease();
          v65 = OUTLINED_FUNCTION_237();
          v66(v65, v101);
          v67 = OUTLINED_FUNCTION_28_2();
          v68(v67);
          v79 = 2;
LABEL_14:
          v86 = 2;
LABEL_16:
          v58 = v109;
          break;
        default:
          sub_1CFD46810();
          OUTLINED_FUNCTION_75_2();
          v108 = v40;
          v56 = v93;
          v57 = sub_1CFD49548();
          v58 = v109;
          v79 = v57;
          v81 = v80;
          swift_unknownObjectRelease();
          v82 = OUTLINED_FUNCTION_424();
          v83(v82, v56);
          v84 = OUTLINED_FUNCTION_61_3();
          v85(v84);
          v86 = 0;
          break;
      }

      *v55 = v79;
      *(v55 + 8) = v81;
      *(v55 + 16) = v86;
      __swift_destroy_boxed_opaque_existential_1(v58);
      goto LABEL_11;
    }

    v49 = v110;
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t MailEntity.domainId.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_27();
}

uint64_t MailEntity.domainId.setter()
{
  OUTLINED_FUNCTION_30();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t MailEntity.donatingBundleId.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_27();
}

uint64_t MailEntity.donatingBundleId.setter()
{
  OUTLINED_FUNCTION_30();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t MailEntity.accountIdentifier.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return OUTLINED_FUNCTION_27();
}

uint64_t MailEntity.accountIdentifier.setter()
{
  OUTLINED_FUNCTION_30();
  v3 = *(v1 + 56);

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t MailEntity.accountHandles.setter(uint64_t a1)
{
  v3 = *(v1 + 64);

  *(v1 + 64) = a1;
  return result;
}

uint64_t MailEntity.senderHandle.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 72), 0x41uLL);
  memcpy(a1, (v1 + 72), 0x41uLL);
  return sub_1CFCDB100(__dst, &v4);
}

void *MailEntity.senderHandle.setter(const void *a1)
{
  memcpy(__dst, (v1 + 72), 0x41uLL);
  sub_1CFCDB1BC(__dst);
  return memcpy((v1 + 72), a1, 0x41uLL);
}

uint64_t MailEntity.recipientHandles.setter(uint64_t a1)
{
  v3 = *(v1 + 144);

  *(v1 + 144) = a1;
  return result;
}

uint64_t MailEntity.primaryRecipientHandles.setter(uint64_t a1)
{
  v3 = *(v1 + 152);

  *(v1 + 152) = a1;
  return result;
}

uint64_t MailEntity.additionalRecipientHandles.setter(uint64_t a1)
{
  v3 = *(v1 + 160);

  *(v1 + 160) = a1;
  return result;
}

uint64_t MailEntity.subject.getter()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);

  return OUTLINED_FUNCTION_27();
}

uint64_t MailEntity.subject.setter()
{
  OUTLINED_FUNCTION_30();
  v3 = *(v1 + 176);

  *(v1 + 168) = v2;
  *(v1 + 176) = v0;
  return result;
}

uint64_t MailEntity.htmlContent.getter()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 192);
  v3 = OUTLINED_FUNCTION_27();
  sub_1CFD46864(v3, v4);
  return OUTLINED_FUNCTION_27();
}

uint64_t MailEntity.htmlContent.setter()
{
  OUTLINED_FUNCTION_30();
  result = sub_1CFD01E18(*(v1 + 184), *(v1 + 192));
  *(v1 + 184) = v2;
  *(v1 + 192) = v0;
  return result;
}

uint64_t MailEntity.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 200);
  v3 = *(v1 + 208);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 216);
  *(a1 + 16) = v4;
  return sub_1CFD08E34(v2, v3, v4);
}

uint64_t MailEntity.body.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = sub_1CFCEF63C(*(v1 + 200), *(v1 + 208), *(v1 + 216));
  *(v1 + 200) = v2;
  *(v1 + 208) = v3;
  *(v1 + 216) = v4;
  return result;
}

uint64_t sub_1CFD42630()
{
  if (*(v0 + 216) <= 1u)
  {
    v3 = v0 + 200;
    v2 = *(v0 + 200);
    v1 = *(v3 + 8);
    v4 = OUTLINED_FUNCTION_71();
    sub_1CFD08E34(v4, v5, v6);
  }

  return OUTLINED_FUNCTION_71();
}

uint64_t MailEntity.mailboxIdentifiers.setter(uint64_t a1)
{
  v3 = *(v1 + 224);

  *(v1 + 224) = a1;
  return result;
}

uint64_t MailEntity.attachments.setter(uint64_t a1)
{
  v3 = *(v1 + 232);

  *(v1 + 232) = a1;
  return result;
}

uint64_t MailEntity.conversationId.getter()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 248);

  return OUTLINED_FUNCTION_27();
}

uint64_t MailEntity.conversationId.setter()
{
  OUTLINED_FUNCTION_30();
  v3 = *(v1 + 248);

  *(v1 + 240) = v2;
  *(v1 + 248) = v0;
  return result;
}

uint64_t MailEntity.dateSent.getter()
{
  v2 = OUTLINED_FUNCTION_357();
  v3 = v1 + *(type metadata accessor for MailEntity(v2) + 80);

  return sub_1CFCE2770(v3, v0);
}

uint64_t MailEntity.dateSent.setter()
{
  v2 = OUTLINED_FUNCTION_21();
  v3 = v1 + *(type metadata accessor for MailEntity(v2) + 80);

  return sub_1CFCE281C(v0, v3);
}

uint64_t MailEntity.dateSent.modify()
{
  v0 = OUTLINED_FUNCTION_21();
  v1 = *(type metadata accessor for MailEntity(v0) + 80);
  return OUTLINED_FUNCTION_23();
}

uint64_t MailEntity.dateReceived.getter()
{
  v2 = OUTLINED_FUNCTION_357();
  v3 = v1 + *(type metadata accessor for MailEntity(v2) + 84);

  return sub_1CFCE2770(v3, v0);
}

uint64_t MailEntity.dateReceived.setter()
{
  v2 = OUTLINED_FUNCTION_21();
  v3 = v1 + *(type metadata accessor for MailEntity(v2) + 84);

  return sub_1CFCE281C(v0, v3);
}

uint64_t MailEntity.dateReceived.modify()
{
  v0 = OUTLINED_FUNCTION_21();
  v1 = *(type metadata accessor for MailEntity(v0) + 84);
  return OUTLINED_FUNCTION_23();
}

uint64_t MailEntity.mailCategories.getter()
{
  v2 = OUTLINED_FUNCTION_357();
  result = type metadata accessor for MailEntity(v2);
  v4 = (v1 + *(result + 88));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 8);
  *v0 = v5;
  *(v0 + 8) = v4;
  return result;
}

uint64_t MailEntity.mailCategories.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = type metadata accessor for MailEntity(0);
  v5 = v1 + *(result + 88);
  *v5 = v2;
  *(v5 + 8) = v3;
  return result;
}

uint64_t MailEntity.mailCategories.modify()
{
  v0 = OUTLINED_FUNCTION_21();
  v1 = *(type metadata accessor for MailEntity(v0) + 88);
  return OUTLINED_FUNCTION_23();
}

uint64_t MailEntity.isNew.setter()
{
  v2 = OUTLINED_FUNCTION_21();
  result = type metadata accessor for MailEntity(v2);
  *(v1 + *(result + 92)) = v0;
  return result;
}

uint64_t MailEntity.isNew.modify()
{
  v0 = OUTLINED_FUNCTION_21();
  v1 = *(type metadata accessor for MailEntity(v0) + 92);
  return OUTLINED_FUNCTION_23();
}

uint64_t MailEntity.isTwoFactorCode.setter()
{
  v2 = OUTLINED_FUNCTION_21();
  result = type metadata accessor for MailEntity(v2);
  *(v1 + *(result + 96)) = v0;
  return result;
}

uint64_t MailEntity.isTwoFactorCode.modify()
{
  v0 = OUTLINED_FUNCTION_21();
  v1 = *(type metadata accessor for MailEntity(v0) + 96);
  return OUTLINED_FUNCTION_23();
}

uint64_t MailEntity.isFromMe.setter()
{
  v2 = OUTLINED_FUNCTION_21();
  result = type metadata accessor for MailEntity(v2);
  *(v1 + *(result + 100)) = v0;
  return result;
}

uint64_t MailEntity.isFromMe.modify()
{
  v0 = OUTLINED_FUNCTION_21();
  v1 = *(type metadata accessor for MailEntity(v0) + 100);
  return OUTLINED_FUNCTION_23();
}

uint64_t MailEntity.isJunk.setter()
{
  v2 = OUTLINED_FUNCTION_21();
  result = type metadata accessor for MailEntity(v2);
  *(v1 + *(result + 104)) = v0;
  return result;
}

uint64_t MailEntity.isJunk.modify()
{
  v0 = OUTLINED_FUNCTION_21();
  v1 = *(type metadata accessor for MailEntity(v0) + 104);
  return OUTLINED_FUNCTION_23();
}

uint64_t MailEntity.isRead.setter()
{
  v2 = OUTLINED_FUNCTION_21();
  result = type metadata accessor for MailEntity(v2);
  *(v1 + *(result + 108)) = v0;
  return result;
}

uint64_t MailEntity.isRead.modify()
{
  v0 = OUTLINED_FUNCTION_21();
  v1 = *(type metadata accessor for MailEntity(v0) + 108);
  return OUTLINED_FUNCTION_23();
}

uint64_t MailEntity.isVIP.setter()
{
  v2 = OUTLINED_FUNCTION_21();
  result = type metadata accessor for MailEntity(v2);
  *(v1 + *(result + 112)) = v0;
  return result;
}

uint64_t MailEntity.isVIP.modify()
{
  v0 = OUTLINED_FUNCTION_21();
  v1 = *(type metadata accessor for MailEntity(v0) + 112);
  return OUTLINED_FUNCTION_23();
}

uint64_t MailEntity.isFlagged.setter()
{
  v2 = OUTLINED_FUNCTION_21();
  result = type metadata accessor for MailEntity(v2);
  *(v1 + *(result + 116)) = v0;
  return result;
}

uint64_t MailEntity.isFlagged.modify()
{
  v0 = OUTLINED_FUNCTION_21();
  v1 = *(type metadata accessor for MailEntity(v0) + 116);
  return OUTLINED_FUNCTION_23();
}

uint64_t MailEntity.isSpotlightUpdate.setter()
{
  v2 = OUTLINED_FUNCTION_21();
  result = type metadata accessor for MailEntity(v2);
  *(v1 + *(result + 120)) = v0;
  return result;
}

uint64_t MailEntity.isSpotlightUpdate.modify()
{
  v0 = OUTLINED_FUNCTION_21();
  v1 = *(type metadata accessor for MailEntity(v0) + 120);
  return OUTLINED_FUNCTION_23();
}

uint64_t MailEntity.notificationId.getter()
{
  v0 = type metadata accessor for MailEntity(0);
  OUTLINED_FUNCTION_28(*(v0 + 124));
  return OUTLINED_FUNCTION_27();
}

uint64_t MailEntity.notificationId.setter()
{
  OUTLINED_FUNCTION_30();
  v3 = (v1 + *(type metadata accessor for MailEntity(0) + 124));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t MailEntity.notificationId.modify()
{
  v0 = OUTLINED_FUNCTION_21();
  v1 = *(type metadata accessor for MailEntity(v0) + 124);
  return OUTLINED_FUNCTION_23();
}

void *MailEntity.fileProtectionType.getter()
{
  v1 = *(v0 + *(type metadata accessor for MailEntity(0) + 128));
  v2 = v1;
  return v1;
}

void MailEntity.fileProtectionType.setter()
{
  v2 = OUTLINED_FUNCTION_21();
  v3 = *(type metadata accessor for MailEntity(v2) + 128);

  *(v1 + v3) = v0;
}

uint64_t MailEntity.fileProtectionType.modify()
{
  v0 = OUTLINED_FUNCTION_21();
  v1 = *(type metadata accessor for MailEntity(v0) + 128);
  return OUTLINED_FUNCTION_23();
}

uint64_t MailEntity.mailThread.getter()
{
  v2 = OUTLINED_FUNCTION_357();
  v3 = v1 + *(type metadata accessor for MailEntity(v2) + 132);
  v4 = *v3;
  *v0 = *v3;
  v5 = *(v3 + 8);
  *(v0 + 8) = v5;

  return sub_1CFD468F0(v4, v5);
}

uint64_t MailEntity.mailThread.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = v1 + *(type metadata accessor for MailEntity(0) + 132);
  result = sub_1CFD46904(*v4, *(v4 + 8));
  *v4 = v2;
  *(v4 + 8) = v3;
  return result;
}

uint64_t MailEntity.mailThread.modify()
{
  v0 = OUTLINED_FUNCTION_21();
  v1 = *(type metadata accessor for MailEntity(v0) + 132);
  return OUTLINED_FUNCTION_23();
}

uint64_t MailEntity.init(uniqueId:domainId:donatingBundleId:accountIdentifier:accountHandles:senderHandle:recipientHandles:primaryRecipientHandles:additionalRecipientHandles:subject:htmlContent:body:isFullyDownloaded:mailboxIdentifiers:attachments:conversationId:dateSent:dateReceived:mailCategories:isNew:isTwoFactorCode:isFromMe:isJunk:isRead:isVIP:isFlagged:isSpotlightUpdate:notificationId:fileProtectionType:mailThread:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, const void *a11, __int128 a12, __int128 a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t *a17, char a18, __int128 a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t *a24, char a25, char a26, char a27, char a28, char a29, char a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t *a36)
{
  v62 = *a17;
  v61 = a17[1];
  v60 = *(a17 + 16);
  v71 = *a24;
  v70 = *(a24 + 8);
  v74 = *a36;
  v73 = *(a36 + 8);
  *(a9 + 184) = xmmword_1CFD540C0;
  v37 = type metadata accessor for MailEntity(0);
  v38 = v37[20];
  v39 = sub_1CFD48CC8();
  OUTLINED_FUNCTION_154_0();
  __swift_storeEnumTagSinglePayload(v40, v41, v42, v39);
  v43 = v37[21];
  OUTLINED_FUNCTION_154_0();
  __swift_storeEnumTagSinglePayload(v44, v45, v46, v39);
  v47 = a9 + v37[22];
  *v47 = 0;
  *(v47 + 8) = 1;
  v58 = v37[24];
  v59 = v37[23];
  v48 = v37[25];
  v49 = v37[26];
  v56 = v37[28];
  v57 = v37[27];
  v54 = v37[30];
  v55 = v37[29];
  v53 = v37[32];
  v50 = (a9 + v37[31]);
  v51 = a9 + v37[33];
  *v51 = 0;
  *(v51 + 8) = -1;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  memcpy((a9 + 72), a11, 0x41uLL);
  *(a9 + 144) = a12;
  *(a9 + 160) = a13;
  *(a9 + 176) = a14;
  sub_1CFD01E18(*(a9 + 184), *(a9 + 192));
  *(a9 + 184) = a15;
  *(a9 + 192) = a16;
  *(a9 + 200) = v62;
  *(a9 + 208) = v61;
  *(a9 + 216) = v60;
  *(a9 + 217) = a18;
  *(a9 + 224) = a19;
  *(a9 + 240) = a20;
  *(a9 + 248) = a21;
  sub_1CFCE281C(a22, a9 + v38);
  sub_1CFCE281C(a23, a9 + v43);
  *v47 = v71;
  *(v47 + 8) = v70;
  *(a9 + v59) = a25;
  *(a9 + v58) = a26;
  *(a9 + v48) = a27;
  *(a9 + v49) = a28;
  *(a9 + v57) = a29;
  *(a9 + v56) = a30;
  *(a9 + v55) = a31;
  *(a9 + v54) = a32;
  *v50 = a33;
  v50[1] = a34;
  *(a9 + v53) = a35;
  result = sub_1CFD46904(*v51, *(v51 + 8));
  *v51 = v74;
  *(v51 + 8) = v73;
  return result;
}

uint64_t MailEntity.dateReceivedOrDateSent.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2BD0, &qword_1CFD4A5B0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  OUTLINED_FUNCTION_9_0();
  v7 = v5 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v20 - v9;
  v11 = type metadata accessor for MailEntity(0);
  sub_1CFCE2770(v1 + *(v11 + 84), v7);
  v12 = sub_1CFD48CC8();
  OUTLINED_FUNCTION_133_2(v7);
  if (v13)
  {
    sub_1CFCE2770(v1 + *(v11 + 80), v10);
    OUTLINED_FUNCTION_133_2(v7);
    if (!v13)
    {
      sub_1CFCE3050(v7, &qword_1EC4F2BD0, &qword_1CFD4A5B0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_29_2(v12);
    v15 = *(v14 + 32);
    v16 = OUTLINED_FUNCTION_100_2();
    v17(v16);
    __swift_storeEnumTagSinglePayload(v10, 0, 1, v12);
  }

  result = OUTLINED_FUNCTION_133_2(v10);
  if (v13)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_29_2(v12);
    return (*(v19 + 32))(a1, v10, v12);
  }

  return result;
}

uint64_t sub_1CFD4358C()
{
  sub_1CFD48464();
  result = sub_1CFD48EC8();
  qword_1EDDD37A8 = result;
  return result;
}

Swift::String __swiftcall MailEntity.Categories.userFacingDescription()()
{
  v1 = *v0;
  if (_MergedGlobals_1 != -1)
  {
LABEL_32:
    swift_once();
  }

  v2 = qword_1EDDD37A8;
  v3 = qword_1EDDD37A8 + 64;
  v4 = 1 << *(qword_1EDDD37A8 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(qword_1EDDD37A8 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  while (v6)
  {
LABEL_10:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = v11 | (v8 << 6);
    v13 = *(*(v2 + 48) + 8 * v12);
    if ((v13 & ~v1) == 0)
    {
      v14 = (*(v2 + 56) + 16 * v12);
      v15 = v14[1];
      v34 = *v14;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = OUTLINED_FUNCTION_107_1();
      }

      v17 = *(v9 + 2);
      v16 = *(v9 + 3);
      v18 = v17 + 1;
      if (v17 >= v16 >> 1)
      {
        v20 = sub_1CFCFE404((v16 > 1), v17 + 1, 1, v9);
        v18 = v17 + 1;
        v9 = v20;
      }

      *(v9 + 2) = v18;
      v19 = &v9[16 * v17];
      *(v19 + 4) = v34;
      *(v19 + 5) = v15;
      if (v13)
      {
        v1 &= ~v13;
      }
    }
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      goto LABEL_32;
    }

    if (v10 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v10);
    ++v8;
    if (v6)
    {
      v8 = v10;
      goto LABEL_10;
    }
  }

  if (v1)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = OUTLINED_FUNCTION_107_1();
    }

    v22 = *(v9 + 2);
    v21 = *(v9 + 3);
    v23 = v22 + 1;
    if (v22 >= v21 >> 1)
    {
      v9 = OUTLINED_FUNCTION_106_2(v21);
    }

    v24 = 0xE700000000000000;
    v25 = 0x6E776F6E6B6E55;
  }

  else
  {
    if (*(v9 + 2))
    {
      goto LABEL_25;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_1CFCFE404(0, 1, 1, v9);
    }

    v22 = *(v9 + 2);
    v32 = *(v9 + 3);
    v23 = v22 + 1;
    if (v22 >= v32 >> 1)
    {
      v9 = OUTLINED_FUNCTION_106_2(v32);
    }

    v24 = 0xE400000000000000;
    v25 = 1701736270;
  }

  *(v9 + 2) = v23;
  v26 = &v9[16 * v22];
  *(v26 + 4) = v25;
  *(v26 + 5) = v24;
LABEL_25:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2A98, &unk_1CFD4D010);
  sub_1CFD01E84();
  v27 = sub_1CFD48ED8();
  v29 = v28;

  v30 = v27;
  v31 = v29;
  result._object = v31;
  result._countAndFlagsBits = v30;
  return result;
}

uint64_t sub_1CFD43878()
{
  OUTLINED_FUNCTION_61();
  sub_1CFD46C18();
  OUTLINED_FUNCTION_59();
  return sub_1CFD49158();
}

uint64_t sub_1CFD438C0()
{
  OUTLINED_FUNCTION_61();
  sub_1CFD46C18();
  OUTLINED_FUNCTION_59();
  return sub_1CFD49128();
}

uint64_t sub_1CFD43900(uint64_t a1)
{
  sub_1CFD49728();
  MEMORY[0x1D3874010](a1);
  return sub_1CFD49758();
}

uint64_t sub_1CFD43980(uint64_t a1, uint64_t a2)
{
  sub_1CFD49728();
  MEMORY[0x1D3874010](a2);
  return sub_1CFD49758();
}

ProactiveSummarizationClient::MailEntity::Categories sub_1CFD439C4@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = MailEntity.Categories.init(rawValue:)(*a1).rawValue;
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1CFD43A04@<X0>(uint64_t *a1@<X8>)
{
  result = MailEntity.Categories.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t static MailEntity.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CFD48CC8();
  v5 = OUTLINED_FUNCTION_37(v4);
  v165 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_0();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2BD0, &qword_1CFD4A5B0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  OUTLINED_FUNCTION_9_0();
  v16 = v14 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v157 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2BD8, &qword_1CFD4A5B8);
  v21 = OUTLINED_FUNCTION_25(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_9_0();
  v26 = v24 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v157 - v28;
  v30 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v30 && (sub_1CFD49668() & 1) == 0)
  {
    return 0;
  }

  v31 = *(a1 + 24);
  v32 = *(a2 + 24);
  if (v31)
  {
    if (!v32)
    {
      return 0;
    }

    v33 = *(a1 + 16) == *(a2 + 16) && v31 == v32;
    if (!v33 && (sub_1CFD49668() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v32)
  {
    return 0;
  }

  v34 = *(a1 + 40);
  v35 = *(a2 + 40);
  if (v34)
  {
    if (!v35)
    {
      return 0;
    }

    v36 = *(a1 + 32) == *(a2 + 32) && v34 == v35;
    if (!v36 && (sub_1CFD49668() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v35)
  {
    return 0;
  }

  v37 = *(a1 + 48) == *(a2 + 48) && *(a1 + 56) == *(a2 + 56);
  if (!v37 && (sub_1CFD49668() & 1) == 0)
  {
    return 0;
  }

  v38 = *(a1 + 64);
  v39 = *(a2 + 64);
  if (v38)
  {
    if (!v39 || (sub_1CFCDCA88(v38, v39) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v39)
  {
    return 0;
  }

  memcpy(v169, (a1 + 72), 0x41uLL);
  memcpy(v168, (a1 + 72), 0x41uLL);
  memcpy(v170, (a2 + 72), 0x41uLL);
  memcpy(v167, (a2 + 72), 0x41uLL);
  sub_1CFCDB100(v169, v166);
  sub_1CFCDB100(v170, v166);
  LODWORD(v164) = static EntityHandle.== infix(_:_:)(v168, v167);
  memcpy(__dst, v167, 0x41uLL);
  sub_1CFCDB1BC(__dst);
  memcpy(v172, v168, 0x41uLL);
  sub_1CFCDB1BC(v172);
  if ((v164 & 1) == 0 || (sub_1CFCDCB14(*(a1 + 144), *(a2 + 144)) & 1) == 0)
  {
    return 0;
  }

  v40 = *(a2 + 152);
  if (*(a1 + 152))
  {
    if (!v40)
    {
      return 0;
    }

    v41 = *(a2 + 152);
    v163 = *(a1 + 152);
    v164 = v40;

    LODWORD(v163) = sub_1CFCDCB14(v163, v164);

    if ((v163 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v40)
  {
    return 0;
  }

  v42 = *(a2 + 160);
  if (*(a1 + 160))
  {
    if (!v42)
    {
      return 0;
    }

    v43 = *(a2 + 160);
    v163 = *(a1 + 160);
    v164 = v42;

    LODWORD(v163) = sub_1CFCDCB14(v163, v164);

    if ((v163 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v42)
  {
    return 0;
  }

  v44 = *(a1 + 168) == *(a2 + 168) && *(a1 + 176) == *(a2 + 176);
  if (!v44 && (sub_1CFD49668() & 1) == 0)
  {
    return 0;
  }

  v46 = *(a1 + 184);
  v45 = *(a1 + 192);
  v47 = *(a2 + 192);
  v163 = *(a2 + 184);
  v164 = v47;
  v48 = v47 >> 60;
  if (v45 >> 60 == 15)
  {
    if (v48 > 0xE)
    {
      v49 = OUTLINED_FUNCTION_135_2();
      sub_1CFD01E18(v49, v50);
      goto LABEL_57;
    }

LABEL_55:
    v51 = v46;
    v52 = v45;
    sub_1CFD46864(v46, v45);
    v53 = OUTLINED_FUNCTION_100_2();
    sub_1CFD46864(v53, v54);
    sub_1CFD01E18(v51, v52);
    v55 = OUTLINED_FUNCTION_100_2();
    sub_1CFD01E18(v55, v56);
    return 0;
  }

  if (v48 > 0xE)
  {
    goto LABEL_55;
  }

  v57 = OUTLINED_FUNCTION_135_2();
  LODWORD(v160) = MEMORY[0x1D3873540](v57);
  sub_1CFD01E18(v163, v164);
  sub_1CFD01E18(v162, v161);
  if ((v160 & 1) == 0)
  {
    return 0;
  }

LABEL_57:
  v58 = *(a1 + 200);
  v160 = *(a1 + 208);
  v161 = v58;
  v159 = *(a1 + 216);
  v168[0] = v58;
  v168[1] = v160;
  LOBYTE(v168[2]) = v159;
  v59 = *(a2 + 200);
  v163 = *(a2 + 208);
  v164 = v59;
  LODWORD(v162) = *(a2 + 216);
  v167[0] = v59;
  v167[1] = v163;
  LOBYTE(v167[2]) = v162;
  sub_1CFD08E34(v58, v160, v159);
  sub_1CFD08E34(v164, v163, v162);
  v158 = static MailEntity.Body.== infix(_:_:)(v168, v167);
  sub_1CFCEF63C(v164, v163, v162);
  sub_1CFCEF63C(v161, v160, v159);
  if ((v158 & 1) == 0 || *(a1 + 217) != *(a2 + 217) || (sub_1CFCDCA88(*(a1 + 224), *(a2 + 224)) & 1) == 0 || (sub_1CFCDCC38(*(a1 + 232), *(a2 + 232)) & 1) == 0)
  {
    return 0;
  }

  v60 = *(a1 + 248);
  v61 = *(a2 + 248);
  if (v60)
  {
    if (!v61)
    {
      return 0;
    }

    v62 = *(a1 + 240) == *(a2 + 240) && v60 == v61;
    if (!v62 && (sub_1CFD49668() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v61)
  {
    return 0;
  }

  v63 = type metadata accessor for MailEntity(0);
  v64 = v63[20];
  v162 = v63;
  v163 = v64;
  v164 = *(v20 + 48);
  sub_1CFCE2770(a1 + v64, v29);
  sub_1CFCE2770(a2 + v163, &v29[v164]);
  OUTLINED_FUNCTION_8_0(v29);
  if (v30)
  {
    OUTLINED_FUNCTION_8_0(&v29[v164]);
    if (v30)
    {
      sub_1CFCE3050(v29, &qword_1EC4F2BD0, &qword_1CFD4A5B0);
      goto LABEL_80;
    }

LABEL_78:
    v68 = v29;
LABEL_89:
    sub_1CFCE3050(v68, &qword_1EC4F2BD8, &qword_1CFD4A5B8);
    return 0;
  }

  sub_1CFCE2770(v29, v19);
  OUTLINED_FUNCTION_8_0(&v29[v164]);
  if (v65)
  {
    v66 = OUTLINED_FUNCTION_424();
    v67(v66, v4);
    goto LABEL_78;
  }

  (*(v165 + 32))(v11, &v29[v164], v4);
  OUTLINED_FUNCTION_3_9();
  sub_1CFD3F824(v69, v70);
  LODWORD(v161) = sub_1CFD48EE8();
  v71 = *(v165 + 8);
  v163 = v165 + 8;
  v164 = v71;
  v71(v11, v4);
  (v164)(v19, v4);
  sub_1CFCE3050(v29, &qword_1EC4F2BD0, &qword_1CFD4A5B0);
  if ((v161 & 1) == 0)
  {
    return 0;
  }

LABEL_80:
  v72 = v162[21];
  v73 = *(v20 + 48);
  sub_1CFCE2770(a1 + v72, v26);
  sub_1CFCE2770(a2 + v72, v26 + v73);
  OUTLINED_FUNCTION_8_0(v26);
  if (v30)
  {
    OUTLINED_FUNCTION_8_0(v26 + v73);
    if (v30)
    {
      sub_1CFCE3050(v26, &qword_1EC4F2BD0, &qword_1CFD4A5B0);
      goto LABEL_92;
    }

    goto LABEL_88;
  }

  sub_1CFCE2770(v26, v16);
  OUTLINED_FUNCTION_8_0(v26 + v73);
  if (v74)
  {
    (*(v165 + 8))(v16, v4);
LABEL_88:
    v68 = v26;
    goto LABEL_89;
  }

  v76 = v165;
  (*(v165 + 32))(v11, v26 + v73, v4);
  OUTLINED_FUNCTION_3_9();
  sub_1CFD3F824(v77, v78);
  v79 = sub_1CFD48EE8();
  v80 = *(v76 + 8);
  v80(v11, v4);
  v80(v16, v4);
  sub_1CFCE3050(v26, &qword_1EC4F2BD0, &qword_1CFD4A5B0);
  if ((v79 & 1) == 0)
  {
    return 0;
  }

LABEL_92:
  v81 = v162[22];
  v82 = (a1 + v81);
  v83 = *(a1 + v81 + 8);
  v84 = (a2 + v81);
  v85 = *(a2 + v81 + 8);
  if (v83)
  {
    if (!v85)
    {
      return 0;
    }
  }

  else
  {
    if (*v82 != *v84)
    {
      LOBYTE(v85) = 1;
    }

    if (v85)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_21_7(v162[23]);
  if (v30)
  {
    if (v86 != 2)
    {
      return 0;
    }
  }

  else if (v86 == 2 || ((v86 ^ v87) & 1) != 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_21_7(v162[24]);
  if (v30)
  {
    if (v88 != 2)
    {
      return 0;
    }
  }

  else if (v88 == 2 || ((v88 ^ v89) & 1) != 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_21_7(v162[25]);
  if (v30)
  {
    if (v90 != 2)
    {
      return 0;
    }
  }

  else if (v90 == 2 || ((v90 ^ v91) & 1) != 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_21_7(v162[26]);
  if (v30)
  {
    if (v92 != 2)
    {
      return 0;
    }
  }

  else if (v92 == 2 || ((v92 ^ v93) & 1) != 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_21_7(v162[27]);
  if (v30)
  {
    if (v94 != 2)
    {
      return 0;
    }
  }

  else if (v94 == 2 || ((v94 ^ v95) & 1) != 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_21_7(v162[28]);
  if (v30)
  {
    if (v96 != 2)
    {
      return 0;
    }
  }

  else if (v96 == 2 || ((v96 ^ v97) & 1) != 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_21_7(v162[29]);
  if (v30)
  {
    if (v98 != 2)
    {
      return 0;
    }
  }

  else if (v98 == 2 || ((v98 ^ v99) & 1) != 0)
  {
    return 0;
  }

  if (*(a1 + v162[30]) != *(a2 + v162[30]))
  {
    return 0;
  }

  v100 = v162[31];
  v101 = *(a2 + v100 + 8);
  if (*(a1 + v100 + 8))
  {
    if (!v101)
    {
      return 0;
    }

    OUTLINED_FUNCTION_19((a1 + v100));
    v104 = v30 && v102 == v103;
    if (!v104 && (sub_1CFD49668() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v101)
  {
    return 0;
  }

  v105 = v162[32];
  v106 = *(a2 + v105);
  if (!*(a1 + v105))
  {
    if (!v106)
    {
      goto LABEL_161;
    }

    return 0;
  }

  if (!v106)
  {
    return 0;
  }

  v107 = sub_1CFD48FA8();
  v109 = v108;
  if (v107 == sub_1CFD48FA8() && v109 == v110)
  {

    goto LABEL_161;
  }

  v112 = sub_1CFD49668();

  if ((v112 & 1) == 0)
  {
    return 0;
  }

LABEL_161:
  v113 = v162[33];
  v114 = *(a1 + v113);
  v115 = *(a1 + v113 + 8);
  v116 = a2 + v113;
  v117 = *v116;
  v118 = *(v116 + 8);
  if (v115 != 255)
  {
    if (v118 != 255)
    {
      if (v115)
      {
        if (v118)
        {
          v119 = OUTLINED_FUNCTION_173();
          sub_1CFD468F0(v119, v120);
          v121 = OUTLINED_FUNCTION_173();
          sub_1CFD468F0(v121, v122);
          v123 = OUTLINED_FUNCTION_173();
          sub_1CFD468F0(v123, v124);
          v125 = OUTLINED_FUNCTION_32_1();
          v127 = OUTLINED_FUNCTION_53_3(v125, v126);
          v128 = sub_1CFD3EED0(v127, v117);
          goto LABEL_172;
        }
      }

      else if ((v118 & 1) == 0)
      {
        v141 = OUTLINED_FUNCTION_173();
        sub_1CFD468F0(v141, v142);
        v143 = OUTLINED_FUNCTION_173();
        sub_1CFD468F0(v143, v144);
        v145 = OUTLINED_FUNCTION_173();
        sub_1CFD468F0(v145, v146);
        v147 = OUTLINED_FUNCTION_32_1();
        v149 = OUTLINED_FUNCTION_53_3(v147, v148);
        v128 = sub_1CFD3EA20(v149, v117);
LABEL_172:
        v150 = v128;

        v151 = OUTLINED_FUNCTION_32_1();
        sub_1CFD46904(v151, v152);
        v153 = OUTLINED_FUNCTION_173();
        sub_1CFD46904(v153, v154);
        if (v150)
        {
          goto LABEL_173;
        }

        goto LABEL_174;
      }

      v137 = OUTLINED_FUNCTION_173();
      sub_1CFD468F0(v137, v138);
      v139 = OUTLINED_FUNCTION_173();
      OUTLINED_FUNCTION_53_3(v139, v140);

LABEL_174:
      v135 = OUTLINED_FUNCTION_173();
      goto LABEL_175;
    }

LABEL_167:
    v129 = OUTLINED_FUNCTION_173();
    sub_1CFD468F0(v129, v130);
    v131 = OUTLINED_FUNCTION_32_1();
    sub_1CFD468F0(v131, v132);
    v133 = OUTLINED_FUNCTION_173();
    sub_1CFD46904(v133, v134);
    v135 = OUTLINED_FUNCTION_32_1();
LABEL_175:
    sub_1CFD46904(v135, v136);
    return 0;
  }

  if (v118 != 255)
  {
    goto LABEL_167;
  }

  sub_1CFD468F0(v114, 255);
  sub_1CFD468F0(v117, 255);
LABEL_173:
  v155 = OUTLINED_FUNCTION_173();
  sub_1CFD46904(v155, v156);
  return 1;
}

uint64_t sub_1CFD4459C()
{
  OUTLINED_FUNCTION_79_0();
  v3 = v3 && v2 == 0xE800000000000000;
  if (v3 || (OUTLINED_FUNCTION_20() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v5 = v1 == 0x64496E69616D6F64 && v0 == 0xE800000000000000;
    if (v5 || (OUTLINED_FUNCTION_20() & 1) != 0)
    {

      return 1;
    }

    else
    {
      OUTLINED_FUNCTION_197();
      v7 = v1 == 0xD000000000000010 && v6 == v0;
      if (v7 || (OUTLINED_FUNCTION_20() & 1) != 0)
      {

        return 2;
      }

      else
      {
        OUTLINED_FUNCTION_197();
        v9 = v1 == 0xD000000000000011 && v8 == v0;
        if (v9 || (OUTLINED_FUNCTION_20() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v11 = v1 == OUTLINED_FUNCTION_45() && v0 == v10;
          if (v11 || (OUTLINED_FUNCTION_20() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v13 = v1 == OUTLINED_FUNCTION_55() && v0 == v12;
            if (v13 || (OUTLINED_FUNCTION_20() & 1) != 0)
            {

              return 5;
            }

            else
            {
              OUTLINED_FUNCTION_106_0();
              v15 = v3 && v14 == v0;
              if (v15 || (OUTLINED_FUNCTION_20() & 1) != 0)
              {

                return 6;
              }

              else
              {
                OUTLINED_FUNCTION_197();
                v17 = v1 == 0xD000000000000017 && v16 == v0;
                if (v17 || (OUTLINED_FUNCTION_20() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  OUTLINED_FUNCTION_197();
                  v19 = v1 == 0xD00000000000001ALL && v18 == v0;
                  if (v19 || (OUTLINED_FUNCTION_20() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    OUTLINED_FUNCTION_99_2();
                    v20 = v3 && v0 == 0xE700000000000000;
                    if (v20 || (OUTLINED_FUNCTION_20() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v22 = v1 == (OUTLINED_FUNCTION_132_1() & 0xFFFFFFFFFFFFLL | 0x746E000000000000) && v0 == v21;
                      if (v22 || (OUTLINED_FUNCTION_20() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v23 = v1 == 2036625250 && v0 == 0xE400000000000000;
                        if (v23 || (OUTLINED_FUNCTION_20() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          OUTLINED_FUNCTION_197();
                          v25 = v1 == 0xD000000000000011 && v24 == v0;
                          if (v25 || (OUTLINED_FUNCTION_20() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            OUTLINED_FUNCTION_197();
                            v27 = v1 == 0xD000000000000012 && v26 == v0;
                            if (v27 || (OUTLINED_FUNCTION_20() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v29 = v1 == OUTLINED_FUNCTION_57() && v0 == v28;
                              if (v29 || (OUTLINED_FUNCTION_20() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v30 = v1 == 0x61737265766E6F63 && v0 == 0xEE0064496E6F6974;
                                if (v30 || (OUTLINED_FUNCTION_20() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v31 = v1 == 0x746E655365746164 && v0 == 0xE800000000000000;
                                  if (v31 || (OUTLINED_FUNCTION_20() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v33 = v1 == OUTLINED_FUNCTION_14_4() && v0 == v32;
                                    if (v33 || (OUTLINED_FUNCTION_20() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v35 = v1 == OUTLINED_FUNCTION_104_1() && v0 == v34;
                                      if (v35 || (OUTLINED_FUNCTION_20() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        v36 = v1 == 0x77654E7369 && v0 == 0xE500000000000000;
                                        if (v36 || (OUTLINED_FUNCTION_20() & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else
                                        {
                                          v38 = v1 == OUTLINED_FUNCTION_52() && v0 == v37;
                                          if (v38 || (OUTLINED_FUNCTION_20() & 1) != 0)
                                          {

                                            return 20;
                                          }

                                          else
                                          {
                                            v39 = v1 == 0x654D6D6F72467369 && v0 == 0xE800000000000000;
                                            if (v39 || (OUTLINED_FUNCTION_20() & 1) != 0)
                                            {

                                              return 21;
                                            }

                                            else
                                            {
                                              v40 = v1 == 0x6B6E754A7369 && v0 == 0xE600000000000000;
                                              if (v40 || (OUTLINED_FUNCTION_20() & 1) != 0)
                                              {

                                                return 22;
                                              }

                                              else
                                              {
                                                OUTLINED_FUNCTION_114_1();
                                                v41 = v3 && v0 == 0xE600000000000000;
                                                if (v41 || (OUTLINED_FUNCTION_20() & 1) != 0)
                                                {

                                                  return 23;
                                                }

                                                else
                                                {
                                                  v42 = v1 == 0x5049567369 && v0 == 0xE500000000000000;
                                                  if (v42 || (OUTLINED_FUNCTION_20() & 1) != 0)
                                                  {

                                                    return 24;
                                                  }

                                                  else
                                                  {
                                                    v43 = v1 == 0x656767616C467369 && v0 == 0xE900000000000064;
                                                    if (v43 || (OUTLINED_FUNCTION_20() & 1) != 0)
                                                    {

                                                      return 25;
                                                    }

                                                    else
                                                    {
                                                      OUTLINED_FUNCTION_197();
                                                      v45 = v1 == 0xD000000000000011 && v44 == v0;
                                                      if (v45 || (OUTLINED_FUNCTION_20() & 1) != 0)
                                                      {

                                                        return 26;
                                                      }

                                                      else
                                                      {
                                                        v46 = v1 == 0x6163696669746F6ELL && v0 == 0xEE0064496E6F6974;
                                                        if (v46 || (OUTLINED_FUNCTION_20() & 1) != 0)
                                                        {

                                                          return 27;
                                                        }

                                                        else
                                                        {
                                                          OUTLINED_FUNCTION_106_0();
                                                          v48 = v3 && v47 == v0;
                                                          if (v48 || (OUTLINED_FUNCTION_20() & 1) != 0)
                                                          {

                                                            return 28;
                                                          }

                                                          else if (v1 == 0x657268546C69616DLL && v0 == 0xEA00000000006461)
                                                          {

                                                            return 29;
                                                          }

                                                          else
                                                          {
                                                            OUTLINED_FUNCTION_20();
                                                            OUTLINED_FUNCTION_37_0();
                                                            if (v1)
                                                            {
                                                              return 29;
                                                            }

                                                            else
                                                            {
                                                              return 30;
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

void sub_1CFD44C04(char a1)
{
  switch(a1)
  {
    case 2:
    case 6:
    case 7:
    case 8:
    case 13:
    case 28:
      OUTLINED_FUNCTION_136_2();
      break;
    case 3:
    case 12:
    case 26:
      OUTLINED_FUNCTION_197();
      break;
    case 4:
      OUTLINED_FUNCTION_45();
      break;
    case 5:
      OUTLINED_FUNCTION_55();
      break;
    case 9:
      OUTLINED_FUNCTION_71_2();
      break;
    case 10:
      OUTLINED_FUNCTION_132_1();
      break;
    case 11:
      OUTLINED_FUNCTION_93_1();
      break;
    case 14:
      OUTLINED_FUNCTION_57();
      break;
    case 17:
      OUTLINED_FUNCTION_14_4();
      break;
    case 18:
      OUTLINED_FUNCTION_104_1();
      break;
    case 20:
      OUTLINED_FUNCTION_52();
      break;
    case 23:
      OUTLINED_FUNCTION_74_1();
      break;
    default:
      return;
  }
}

uint64_t sub_1CFD44EC8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1CFD4459C();
  *a1 = result;
  return result;
}

uint64_t sub_1CFD44EF8()
{
  sub_1CFD46918();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1CFD44F30()
{
  sub_1CFD46918();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

void MailEntity.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_143();
  a19 = v22;
  a20 = v23;
  v24 = v20;
  v26 = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F37A0, &qword_1CFD54190);
  OUTLINED_FUNCTION_37(v27);
  v29 = v28;
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_146();
  v33 = v26[4];
  OUTLINED_FUNCTION_178(v26, v26[3]);
  sub_1CFD46918();
  OUTLINED_FUNCTION_127_1();
  sub_1CFD497A8();
  v34 = *v24;
  v35 = v24[1];
  v100[0] = 0;
  OUTLINED_FUNCTION_22_6();
  sub_1CFD495E8();
  if (!v21)
  {
    v36 = v24[2];
    v37 = v24[3];
    v100[0] = 1;
    OUTLINED_FUNCTION_22_6();
    sub_1CFD495B8();
    v38 = v24[4];
    v39 = v24[5];
    v100[0] = 2;
    OUTLINED_FUNCTION_22_6();
    sub_1CFD495B8();
    v40 = v24[6];
    v41 = v24[7];
    v100[0] = 3;
    OUTLINED_FUNCTION_22_6();
    sub_1CFD495E8();
    a10 = v24[8];
    v100[71] = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2A98, &unk_1CFD4D010);
    sub_1CFCE3CB4(&qword_1EDDD2B28);
    OUTLINED_FUNCTION_127_1();
    OUTLINED_FUNCTION_23_5();
    sub_1CFD495D8();
    memcpy(v100, v24 + 9, 0x41uLL);
    memcpy(v99, v24 + 9, sizeof(v99));
    v98 = 5;
    sub_1CFCDB100(v100, v97);
    sub_1CFCDF174();
    OUTLINED_FUNCTION_15();
    sub_1CFD49618();
    memcpy(v97, v99, sizeof(v97));
    sub_1CFCDB1BC(v97);
    OUTLINED_FUNCTION_87_1(v24[18]);
    OUTLINED_FUNCTION_39(6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2AA8, &unk_1CFD49F00);
    OUTLINED_FUNCTION_47_4();
    sub_1CFD048E4(v42, v43);
    OUTLINED_FUNCTION_13_8();
    OUTLINED_FUNCTION_23_5();
    sub_1CFD49618();
    OUTLINED_FUNCTION_87_1(v24[19]);
    OUTLINED_FUNCTION_39(7);
    OUTLINED_FUNCTION_13_8();
    OUTLINED_FUNCTION_23_5();
    sub_1CFD495D8();
    OUTLINED_FUNCTION_87_1(v24[20]);
    OUTLINED_FUNCTION_39(8);
    OUTLINED_FUNCTION_13_8();
    OUTLINED_FUNCTION_23_5();
    sub_1CFD495D8();
    v44 = v24[21];
    v45 = v24[22];
    OUTLINED_FUNCTION_41_2(9);
    OUTLINED_FUNCTION_22_6();
    sub_1CFD495E8();
    v46 = v24[24];
    OUTLINED_FUNCTION_96(v24[23]);
    *(v48 - 256) = v47;
    OUTLINED_FUNCTION_39(10);
    sub_1CFD46864(v49, v50);
    sub_1CFD16704();
    OUTLINED_FUNCTION_15();
    sub_1CFD495D8();
    v51 = OUTLINED_FUNCTION_64_2(&a10);
    sub_1CFD01E18(v51, v52);
    v53 = v24[26];
    v54 = *(v24 + 216);
    OUTLINED_FUNCTION_96(v24[25]);
    *(v56 - 256) = v55;
    v96 = v57;
    OUTLINED_FUNCTION_39(11);
    sub_1CFD08E34(v58, v59, v60);
    sub_1CFD4696C();
    OUTLINED_FUNCTION_15();
    sub_1CFD49618();
    v61 = OUTLINED_FUNCTION_64_2(&a10);
    sub_1CFCEF63C(v61, v62, v96);
    v63 = *(v24 + 217);
    OUTLINED_FUNCTION_5_7(12);
    sub_1CFD495F8();
    OUTLINED_FUNCTION_87_1(v24[28]);
    OUTLINED_FUNCTION_39(13);
    OUTLINED_FUNCTION_13_8();
    OUTLINED_FUNCTION_127_1();
    OUTLINED_FUNCTION_23_5();
    sub_1CFD49618();
    OUTLINED_FUNCTION_87_1(v24[29]);
    OUTLINED_FUNCTION_39(14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2AB8, &qword_1CFD4D060);
    sub_1CFD3F770();
    OUTLINED_FUNCTION_13_8();
    OUTLINED_FUNCTION_23_5();
    sub_1CFD49618();
    v64 = v24[30];
    v65 = v24[31];
    OUTLINED_FUNCTION_41_2(15);
    OUTLINED_FUNCTION_22_6();
    sub_1CFD495B8();
    v66 = type metadata accessor for MailEntity(0);
    v67 = v66[20];
    OUTLINED_FUNCTION_41_2(16);
    sub_1CFD48CC8();
    OUTLINED_FUNCTION_3_9();
    sub_1CFD3F824(v68, v69);
    OUTLINED_FUNCTION_23_5();
    sub_1CFD495D8();
    v70 = v66[21];
    OUTLINED_FUNCTION_23_5();
    sub_1CFD495D8();
    v71 = v24 + v66[22];
    v94 = *v71;
    v95 = *(v71 + 8);
    OUTLINED_FUNCTION_39(18);
    sub_1CFD469C0();
    OUTLINED_FUNCTION_15();
    sub_1CFD495D8();
    v72 = *(v24 + v66[23]);
    OUTLINED_FUNCTION_5_7(19);
    sub_1CFD495C8();
    v73 = *(v24 + v66[24]);
    OUTLINED_FUNCTION_5_7(20);
    sub_1CFD495C8();
    v74 = *(v24 + v66[25]);
    OUTLINED_FUNCTION_5_7(21);
    sub_1CFD495C8();
    v75 = *(v24 + v66[26]);
    OUTLINED_FUNCTION_5_7(22);
    sub_1CFD495C8();
    v76 = *(v24 + v66[27]);
    OUTLINED_FUNCTION_5_7(23);
    sub_1CFD495C8();
    v77 = *(v24 + v66[28]);
    OUTLINED_FUNCTION_5_7(24);
    sub_1CFD495C8();
    v78 = *(v24 + v66[29]);
    OUTLINED_FUNCTION_5_7(25);
    sub_1CFD495C8();
    v79 = *(v24 + v66[30]);
    OUTLINED_FUNCTION_5_7(26);
    sub_1CFD495F8();
    v80 = (v24 + v66[31]);
    v81 = *v80;
    v82 = v80[1];
    OUTLINED_FUNCTION_41_2(27);
    OUTLINED_FUNCTION_22_6();
    sub_1CFD495B8();
    OUTLINED_FUNCTION_87_1(*(v24 + v66[32]));
    OUTLINED_FUNCTION_39(28);
    type metadata accessor for FileProtectionType(0);
    OUTLINED_FUNCTION_7_11();
    sub_1CFD3F824(v83, v84);
    OUTLINED_FUNCTION_13_8();
    OUTLINED_FUNCTION_23_5();
    sub_1CFD495D8();
    v85 = v24 + v66[33];
    v86 = *(v85 + 8);
    OUTLINED_FUNCTION_96(*v85);
    *(v88 - 256) = v87;
    OUTLINED_FUNCTION_39(29);
    sub_1CFD468F0(v89, v90);
    sub_1CFD46A14();
    OUTLINED_FUNCTION_15();
    sub_1CFD495D8();
    sub_1CFD46904(v94, v95);
  }

  v91 = *(v29 + 8);
  v92 = OUTLINED_FUNCTION_100_2();
  v93(v92);
  OUTLINED_FUNCTION_140_0();
  OUTLINED_FUNCTION_142();
}

void MailEntity.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_143();
  a19 = v22;
  a20 = v23;
  v158 = v20;
  v25 = v24;
  v144 = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2BD0, &qword_1CFD4A5B0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27 - 8);
  OUTLINED_FUNCTION_9_0();
  v143 = v29 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v33 = v141 - v32;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F37C0, &qword_1CFD54198);
  OUTLINED_FUNCTION_37(v147);
  v146 = v34;
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_147();
  v38 = type metadata accessor for MailEntity(0);
  v39 = OUTLINED_FUNCTION_25(v38);
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_2_0();
  v44 = v43 - v42;
  *(v43 - v42 + 184) = xmmword_1CFD540C0;
  v46 = *(v45 + 80);
  v47 = sub_1CFD48CC8();
  v48 = 1;
  v155 = v46;
  OUTLINED_FUNCTION_154_0();
  __swift_storeEnumTagSinglePayload(v49, v50, v51, v47);
  v154 = v38[21];
  OUTLINED_FUNCTION_154_0();
  __swift_storeEnumTagSinglePayload(v52, v53, v54, v47);
  v55 = v44 + v38[22];
  *v55 = 0;
  *(v55 + 8) = 1;
  v56 = v38[33];
  v159 = v44;
  v57 = v44 + v56;
  *v57 = 0;
  v156 = v44 + v56;
  *(v57 + 8) = -1;
  v58 = v25[3];
  v59 = v25[4];
  v153 = v25;
  OUTLINED_FUNCTION_178(v25, v58);
  sub_1CFD46918();
  v148 = v21;
  v60 = v158;
  sub_1CFD49788();
  if (v60)
  {
    v158 = v60;
    v62 = 0;
    v63 = 0;
    v64 = 0;
    v65 = 0;
    OUTLINED_FUNCTION_0_13();
    OUTLINED_FUNCTION_60_3(v66);
    v152 = 0;
    v67 = 0;
  }

  else
  {
    v62 = v47;
    v142 = v55;
    v58 = v33;
    v141[1] = v38;
    v64 = v146;
    LOBYTE(v162[0]) = 0;
    v65 = v147;
    v61 = sub_1CFD49548();
    v75 = v159;
    *v159 = v61;
    v75[1] = v76;
    OUTLINED_FUNCTION_24_7(1);
    v63 = v64;
    v75[2] = sub_1CFD49518();
    v75[3] = v77;
    v145 = v77;
    OUTLINED_FUNCTION_24_7(2);
    v75[4] = sub_1CFD49518();
    v75[5] = v78;
    v152 = v78;
    OUTLINED_FUNCTION_24_7(3);
    v75[6] = sub_1CFD49548();
    v75[7] = v79;
    v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2A98, &unk_1CFD4D010);
    LOBYTE(v160) = 4;
    v81 = sub_1CFCE3CB4(&qword_1EDDD2B20);
    v157 = v80;
    v82 = v81;
    sub_1CFD49538();
    v141[0] = v82;
    v151 = v162[0];
    v75[8] = v162[0];
    sub_1CFCDF450();
    sub_1CFD49578();
    memcpy(v75 + 9, v162, 0x41uLL);
    v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2AA8, &unk_1CFD49F00);
    OUTLINED_FUNCTION_45_4();
    sub_1CFD048E4(v84, v85);
    OUTLINED_FUNCTION_56_3();
    v158 = v83;
    v149 = v86;
    sub_1CFD49578();
    v75[18] = v160;
    OUTLINED_FUNCTION_56_3();
    sub_1CFD49538();
    v150 = v160;
    *(v159 + 152) = v160;
    OUTLINED_FUNCTION_56_3();
    sub_1CFD49538();
    v158 = 0;
    v149 = v160;
    *(v159 + 160) = v160;
    LOBYTE(v160) = 9;
    v87 = sub_1CFD49548();
    v158 = 0;
    v88 = v159;
    *(v159 + 168) = v87;
    *(v88 + 176) = v89;
    sub_1CFD16510();
    OUTLINED_FUNCTION_10_5();
    sub_1CFD49538();
    v158 = 0;
    v91 = *(&v160 + 1);
    v90 = v160;
    v92 = v159;
    sub_1CFD01E18(*(v159 + 184), *(v159 + 192));
    *(v92 + 184) = __PAIR128__(v91, v90);
    sub_1CFD46A68();
    OUTLINED_FUNCTION_10_5();
    sub_1CFD49578();
    v158 = 0;
    v93 = v161;
    v94 = v159;
    *(v159 + 200) = v160;
    *(v94 + 216) = v93;
    OUTLINED_FUNCTION_2_12(12);
    v95 = sub_1CFD49558();
    v158 = 0;
    *(v159 + 217) = v95 & 1;
    OUTLINED_FUNCTION_56_3();
    OUTLINED_FUNCTION_70_2();
    sub_1CFD49578();
    v158 = 0;
    *(v159 + 224) = v160;
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2AB8, &qword_1CFD4D060);
    sub_1CFD3FE10();
    OUTLINED_FUNCTION_56_3();
    OUTLINED_FUNCTION_70_2();
    OUTLINED_FUNCTION_19_6();
    sub_1CFD49578();
    v158 = 0;
    *(v159 + 232) = v160;
    OUTLINED_FUNCTION_2_12(15);
    v96 = v158;
    v97 = sub_1CFD49518();
    v157 = v98;
    v158 = v96;
    if (v96)
    {
      v99 = OUTLINED_FUNCTION_8_8();
      v100(v99);
      v157 = 0;
    }

    else
    {
      v101 = v159;
      v102 = v157;
      *(v159 + 240) = v97;
      *(v101 + 248) = v102;
      LOBYTE(v160) = 16;
      OUTLINED_FUNCTION_3_9();
      sub_1CFD3F824(v103, v104);
      OUTLINED_FUNCTION_70_2();
      OUTLINED_FUNCTION_19_6();
      sub_1CFD49538();
      v158 = 0;
      sub_1CFCE281C(v58, v159 + v155);
      LOBYTE(v160) = 17;
      OUTLINED_FUNCTION_70_2();
      OUTLINED_FUNCTION_19_6();
      sub_1CFD49538();
      v158 = 0;
      sub_1CFCE281C(v143, v159 + v154);
      sub_1CFD46ABC();
      OUTLINED_FUNCTION_10_5();
      sub_1CFD49538();
      v158 = 0;
      v105 = BYTE8(v160);
      v106 = v142;
      *v142 = v160;
      *(v106 + 8) = v105;
      OUTLINED_FUNCTION_2_12(19);
      v107 = v158;
      sub_1CFD49528();
      v158 = v107;
      if (!v107)
      {
        OUTLINED_FUNCTION_52_3();
        OUTLINED_FUNCTION_78(v109, *(v108 + 92));
        OUTLINED_FUNCTION_2_12(20);
        sub_1CFD49528();
        v158 = 0;
        OUTLINED_FUNCTION_52_3();
        OUTLINED_FUNCTION_78(v111, *(v110 + 96));
        OUTLINED_FUNCTION_2_12(21);
        sub_1CFD49528();
        v158 = 0;
        OUTLINED_FUNCTION_52_3();
        OUTLINED_FUNCTION_78(v113, *(v112 + 100));
        OUTLINED_FUNCTION_2_12(22);
        sub_1CFD49528();
        v158 = 0;
        OUTLINED_FUNCTION_52_3();
        OUTLINED_FUNCTION_78(v115, *(v114 + 104));
        OUTLINED_FUNCTION_2_12(23);
        sub_1CFD49528();
        v158 = 0;
        OUTLINED_FUNCTION_52_3();
        OUTLINED_FUNCTION_78(v117, *(v116 + 108));
        OUTLINED_FUNCTION_2_12(24);
        sub_1CFD49528();
        v158 = 0;
        OUTLINED_FUNCTION_52_3();
        OUTLINED_FUNCTION_78(v119, *(v118 + 112));
        OUTLINED_FUNCTION_2_12(25);
        sub_1CFD49528();
        v158 = 0;
        OUTLINED_FUNCTION_52_3();
        OUTLINED_FUNCTION_78(v123, *(v122 + 116));
        OUTLINED_FUNCTION_2_12(26);
        sub_1CFD49558();
        v158 = 0;
        OUTLINED_FUNCTION_52_3();
        v126 = v158;
        *(v159 + *(v124 + 120)) = v125 & 1;
        OUTLINED_FUNCTION_2_12(27);
        sub_1CFD49518();
        v158 = v126;
        if (!v126)
        {
          OUTLINED_FUNCTION_52_3();
          v130 = (v159 + *(v129 + 124));
          *v130 = v131;
          v130[1] = v132;
          type metadata accessor for FileProtectionType(0);
          OUTLINED_FUNCTION_7_11();
          sub_1CFD3F824(v133, v134);
          OUTLINED_FUNCTION_56_3();
          OUTLINED_FUNCTION_70_2();
          OUTLINED_FUNCTION_19_6();
          sub_1CFD49538();
          v158 = 0;
          OUTLINED_FUNCTION_52_3();
          *(v159 + *(v135 + 128)) = v160;
          sub_1CFD46B10();
          OUTLINED_FUNCTION_10_5();
          sub_1CFD49538();
          v158 = 0;
          v136 = OUTLINED_FUNCTION_8_8();
          v137(v136);
          v138 = v160;
          v139 = BYTE8(v160);
          v140 = v156;
          sub_1CFD46904(*v156, *(v156 + 8));
          *v140 = v138;
          *(v140 + 8) = v139;
          sub_1CFD46B64(v159, v144, type metadata accessor for MailEntity);
          __swift_destroy_boxed_opaque_existential_1(v153);
          OUTLINED_FUNCTION_27();
          sub_1CFD46BC0();
          goto LABEL_23;
        }

        v127 = OUTLINED_FUNCTION_8_8();
        v128(v127);
        __swift_destroy_boxed_opaque_existential_1(v153);
        v63 = 1;
        v64 = 1;
        v65 = 1;
        OUTLINED_FUNCTION_38_4();
        LODWORD(v55) = 1;
        v68 = v159;
LABEL_6:
        v69 = *(v68 + 8);

        if (v63)
        {
          goto LABEL_7;
        }

        goto LABEL_12;
      }

      v120 = OUTLINED_FUNCTION_8_8();
      v121(v120);
    }

    OUTLINED_FUNCTION_16_8();
    OUTLINED_FUNCTION_38_4();
    LODWORD(v55) = 1;
    v67 = v145;
  }

  __swift_destroy_boxed_opaque_existential_1(v153);
  v68 = v159;
  if (v62)
  {
    v145 = v67;
    goto LABEL_6;
  }

  if (v63)
  {
LABEL_7:
    v70 = *(v68 + 56);

    if ((v64 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_13;
  }

LABEL_12:

  if (!v64)
  {
LABEL_8:
    if (v65)
    {
      goto LABEL_9;
    }

    goto LABEL_14;
  }

LABEL_13:
  memcpy(v162, (v68 + 72), 0x41uLL);
  sub_1CFCDB1BC(v162);
  if (v65)
  {
LABEL_9:
    v71 = *(v68 + 144);

    if ((v58 & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_14:

  if (v58)
  {
LABEL_15:
    v72 = *(v68 + 176);
  }

LABEL_16:
  sub_1CFD01E18(*(v68 + 184), *(v68 + 192));
  if (v48)
  {
    sub_1CFCEF63C(*(v68 + 200), *(v68 + 208), *(v68 + 216));
  }

  if (v148)
  {
    v73 = *(v68 + 224);
  }

  if (v55)
  {
    v74 = *(v68 + 232);
  }

  sub_1CFCE3050(v68 + v155, &qword_1EC4F2BD0, &qword_1CFD4A5B0);
  sub_1CFCE3050(v68 + v154, &qword_1EC4F2BD0, &qword_1CFD4A5B0);

  sub_1CFD46904(*v156, *(v156 + 8));
LABEL_23:
  OUTLINED_FUNCTION_142();
}

unint64_t sub_1CFD46504()
{
  result = qword_1EC4F3720;
  if (!qword_1EC4F3720)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4F36D8, &qword_1CFD540F8);
    sub_1CFD3F824(&qword_1EC4F3728, type metadata accessor for QuotedRegion);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F3720);
  }

  return result;
}

unint64_t sub_1CFD465B8()
{
  result = qword_1EC4F3730;
  if (!qword_1EC4F3730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4F36F0, &qword_1CFD54100);
    sub_1CFD3F824(&qword_1EC4F3738, type metadata accessor for MailEntity.MailThreadMessage);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F3730);
  }

  return result;
}

unint64_t sub_1CFD4666C()
{
  result = qword_1EC505F60;
  if (!qword_1EC505F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC505F60);
  }

  return result;
}

unint64_t sub_1CFD466C0()
{
  result = qword_1EC505F68;
  if (!qword_1EC505F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC505F68);
  }

  return result;
}

unint64_t sub_1CFD46714()
{
  result = qword_1EC505F70;
  if (!qword_1EC505F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC505F70);
  }

  return result;
}

unint64_t sub_1CFD46768()
{
  result = qword_1EC505F78;
  if (!qword_1EC505F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC505F78);
  }

  return result;
}

unint64_t sub_1CFD467BC()
{
  result = qword_1EC505F80;
  if (!qword_1EC505F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC505F80);
  }

  return result;
}

unint64_t sub_1CFD46810()
{
  result = qword_1EC505F88;
  if (!qword_1EC505F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC505F88);
  }

  return result;
}

uint64_t sub_1CFD46864(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1CFD46878(a1, a2);
  }

  return a1;
}

uint64_t sub_1CFD46878(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1CFD468F0(uint64_t a1, char a2)
{
  if (a2 != -1)
  {
  }

  return result;
}

uint64_t sub_1CFD46904(uint64_t a1, char a2)
{
  if (a2 != -1)
  {
  }

  return result;
}

unint64_t sub_1CFD46918()
{
  result = qword_1EC505F90[0];
  if (!qword_1EC505F90[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC505F90);
  }

  return result;
}

unint64_t sub_1CFD4696C()
{
  result = qword_1EC4F37A8;
  if (!qword_1EC4F37A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F37A8);
  }

  return result;
}

unint64_t sub_1CFD469C0()
{
  result = qword_1EC4F37B0;
  if (!qword_1EC4F37B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F37B0);
  }

  return result;
}

unint64_t sub_1CFD46A14()
{
  result = qword_1EC4F37B8;
  if (!qword_1EC4F37B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F37B8);
  }

  return result;
}

unint64_t sub_1CFD46A68()
{
  result = qword_1EC4F37C8;
  if (!qword_1EC4F37C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F37C8);
  }

  return result;
}

unint64_t sub_1CFD46ABC()
{
  result = qword_1EC4F37D0;
  if (!qword_1EC4F37D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F37D0);
  }

  return result;
}

unint64_t sub_1CFD46B10()
{
  result = qword_1EC4F37D8;
  if (!qword_1EC4F37D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F37D8);
  }

  return result;
}

uint64_t sub_1CFD46B64(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_25(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_27();
  v8(v7);
  return a2;
}

uint64_t sub_1CFD46BC0()
{
  v1 = OUTLINED_FUNCTION_21();
  v3 = v2(v1);
  OUTLINED_FUNCTION_25(v3);
  (*(v4 + 8))(v0);
  return v0;
}

unint64_t sub_1CFD46C18()
{
  result = qword_1EC4F37E0;
  if (!qword_1EC4F37E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F37E0);
  }

  return result;
}

unint64_t sub_1CFD46C70()
{
  result = qword_1EC4F37E8;
  if (!qword_1EC4F37E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F37E8);
  }

  return result;
}

unint64_t sub_1CFD46CC8()
{
  result = qword_1EDDD2878;
  if (!qword_1EDDD2878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDD2878);
  }

  return result;
}

unint64_t sub_1CFD46D20()
{
  result = qword_1EDDD2870;
  if (!qword_1EDDD2870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDD2870);
  }

  return result;
}

uint64_t sub_1CFD46D74(uint64_t a1)
{
  result = sub_1CFD3F824(&qword_1EDDD2F60, type metadata accessor for MailEntity);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1CFD46DCC(uint64_t a1)
{
  *(a1 + 8) = sub_1CFD3F824(&qword_1EDDD2F68, type metadata accessor for MailEntity);
  result = sub_1CFD3F824(qword_1EDDD2F70, type metadata accessor for MailEntity);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1CFD46E78()
{
  v0 = MEMORY[0x1E69E6158];
  v1 = OUTLINED_FUNCTION_1_12();
  sub_1CFD4723C(v1, v2, v0, v3);
  v5 = v4;
  if (v6 <= 0x3F)
  {
    sub_1CFD47184(319, &qword_1EDDD3310, &qword_1EC4F2A98, &unk_1CFD4D010);
    if (v8 > 0x3F)
    {
      return v7;
    }

    OUTLINED_FUNCTION_15_7(v7, &qword_1EDDD3338, &type metadata for EntityHandle);
    if (v9 > 0x3F)
    {
      return v7;
    }

    sub_1CFD47184(319, &qword_1EDDD3330, &qword_1EC4F2AA8, &unk_1CFD49F00);
    if (v10 > 0x3F)
    {
      return v7;
    }

    v11 = OUTLINED_FUNCTION_1_12();
    sub_1CFD4723C(v11, v12, v13, v14);
    if (v15 > 0x3F)
    {
      return v7;
    }

    OUTLINED_FUNCTION_15_7(v7, &qword_1EDDD3318, MEMORY[0x1E69E6158]);
    if (v16 > 0x3F)
    {
      return v7;
    }

    OUTLINED_FUNCTION_46_3();
    sub_1CFD471D8(319, v17, v18, MEMORY[0x1E69E62F8]);
    if (v19 > 0x3F)
    {
      return v7;
    }

    sub_1CFD471D8(319, &qword_1EDDD3748, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    if (v20 > 0x3F)
    {
      return v7;
    }

    v21 = OUTLINED_FUNCTION_1_12();
    sub_1CFD4723C(v21, v22, v23, v24);
    if (v25 > 0x3F)
    {
      return v7;
    }

    v26 = MEMORY[0x1E69E6370];
    v27 = OUTLINED_FUNCTION_1_12();
    sub_1CFD4723C(v27, v28, v26, v29);
    if (v30 > 0x3F)
    {
      return v7;
    }

    else
    {
      sub_1CFD471D8(319, &qword_1EDDD3300, type metadata accessor for FileProtectionType, MEMORY[0x1E69E6720]);
      v5 = v31;
      if (v32 <= 0x3F)
      {
        v33 = OUTLINED_FUNCTION_1_12();
        sub_1CFD4723C(v33, v34, v35, v36);
        v5 = v37;
        if (v38 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v5;
}

void sub_1CFD47184(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_1CFD49338();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1CFD471D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1CFD4723C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1CFD472B4(uint64_t a1)
{
  OUTLINED_FUNCTION_15_7(a1, &qword_1EDDD3338, &type metadata for EntityHandle);
  if (v1 <= 0x3F)
  {
    sub_1CFD48CC8();
    if (v2 <= 0x3F)
    {
      v3 = OUTLINED_FUNCTION_1_12();
      sub_1CFD4723C(v3, v4, v5, v6);
      if (v7 <= 0x3F)
      {
        OUTLINED_FUNCTION_46_3();
        sub_1CFD471D8(319, v8, v9, MEMORY[0x1E69E62F8]);
        if (v10 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_1CFD473DC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_3_2(-1);
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return OUTLINED_FUNCTION_3_2(*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 > 1)
  {
    return OUTLINED_FUNCTION_3_2(v3 ^ 0xFF);
  }

  else
  {
    return OUTLINED_FUNCTION_3_2(-1);
  }
}

uint64_t sub_1CFD47418(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_28ProactiveSummarizationClient10MailEntityV4BodyO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t getEnumTagSinglePayload for MailEntity.Categories(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return OUTLINED_FUNCTION_3_2(*a1);
  }

  else
  {
    return OUTLINED_FUNCTION_23_0();
  }
}

uint64_t getEnumTagSinglePayload for MailEntity.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_3_2(-1);
  }

  if (a2 < 0xE3)
  {
    goto LABEL_17;
  }

  if (a2 + 29 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 29) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_3_2((*a1 | (v4 << 8)) - 30);
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

      return OUTLINED_FUNCTION_3_2((*a1 | (v4 << 8)) - 30);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_3_2((*a1 | (v4 << 8)) - 30);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1E;
  v8 = v6 - 30;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_3_2(v8);
}

_BYTE *storeEnumTagSinglePayload for MailEntity.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 29 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 29) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE2)
  {
    v6 = ((a2 - 227) >> 8) + 1;
    *result = a2 + 29;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_133(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_131(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_132(result, v6);
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
          result = OUTLINED_FUNCTION_27_0(result, a2 + 29);
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MailEntity.Body.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_133(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_131(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_132(result, v6);
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
          result = OUTLINED_FUNCTION_27_0(result, a2 + 4);
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MailEntity.Thread.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_133(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_131(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_132(result, v6);
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
          result = OUTLINED_FUNCTION_27_0(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

_BYTE *_s28ProactiveSummarizationClient10MailEntityV4BodyO19TruncatedCodingKeysOwst_0(_BYTE *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for MailEntity.MailThreadMessage.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_3_2(-1);
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
      return OUTLINED_FUNCTION_3_2((*a1 | (v4 << 8)) - 8);
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

      return OUTLINED_FUNCTION_3_2((*a1 | (v4 << 8)) - 8);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_3_2((*a1 | (v4 << 8)) - 8);
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

  return OUTLINED_FUNCTION_3_2(v8);
}

_BYTE *storeEnumTagSinglePayload for MailEntity.MailThreadMessage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_133(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_131(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_132(result, v6);
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
          result = OUTLINED_FUNCTION_27_0(result, a2 + 7);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1CFD47A18()
{
  result = qword_1EC5067A0[0];
  if (!qword_1EC5067A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC5067A0);
  }

  return result;
}

unint64_t sub_1CFD47A70()
{
  result = qword_1EC5069B0[0];
  if (!qword_1EC5069B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC5069B0);
  }

  return result;
}

unint64_t sub_1CFD47AC8()
{
  result = qword_1EC506BC0[0];
  if (!qword_1EC506BC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC506BC0);
  }

  return result;
}

unint64_t sub_1CFD47B20()
{
  result = qword_1EC506DD0[0];
  if (!qword_1EC506DD0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC506DD0);
  }

  return result;
}

unint64_t sub_1CFD47B78()
{
  result = qword_1EC5072E0[0];
  if (!qword_1EC5072E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC5072E0);
  }

  return result;
}

unint64_t sub_1CFD47BD0()
{
  result = qword_1EC5074F0[0];
  if (!qword_1EC5074F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC5074F0);
  }

  return result;
}

unint64_t sub_1CFD47C28()
{
  result = qword_1EC507700[0];
  if (!qword_1EC507700[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC507700);
  }

  return result;
}

unint64_t sub_1CFD47C80()
{
  result = qword_1EC507910[0];
  if (!qword_1EC507910[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC507910);
  }

  return result;
}

unint64_t sub_1CFD47CD8()
{
  result = qword_1EC507BA0;
  if (!qword_1EC507BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC507BA0);
  }

  return result;
}

unint64_t sub_1CFD47D30()
{
  result = qword_1EC507BA8[0];
  if (!qword_1EC507BA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC507BA8);
  }

  return result;
}

unint64_t sub_1CFD47D88()
{
  result = qword_1EC507C30;
  if (!qword_1EC507C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC507C30);
  }

  return result;
}

unint64_t sub_1CFD47DE0()
{
  result = qword_1EC507C38[0];
  if (!qword_1EC507C38[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC507C38);
  }

  return result;
}

unint64_t sub_1CFD47E38()
{
  result = qword_1EC507CC0;
  if (!qword_1EC507CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC507CC0);
  }

  return result;
}

unint64_t sub_1CFD47E90()
{
  result = qword_1EC507CC8[0];
  if (!qword_1EC507CC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC507CC8);
  }

  return result;
}

unint64_t sub_1CFD47EE8()
{
  result = qword_1EC507D50;
  if (!qword_1EC507D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC507D50);
  }

  return result;
}

unint64_t sub_1CFD47F40()
{
  result = qword_1EC507D58[0];
  if (!qword_1EC507D58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC507D58);
  }

  return result;
}

unint64_t sub_1CFD47F98()
{
  result = qword_1EC507DE0;
  if (!qword_1EC507DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC507DE0);
  }

  return result;
}

unint64_t sub_1CFD47FF0()
{
  result = qword_1EC507DE8[0];
  if (!qword_1EC507DE8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC507DE8);
  }

  return result;
}

unint64_t sub_1CFD48048()
{
  result = qword_1EC507E70;
  if (!qword_1EC507E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC507E70);
  }

  return result;
}

unint64_t sub_1CFD480A0()
{
  result = qword_1EC507E78;
  if (!qword_1EC507E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC507E78);
  }

  return result;
}

unint64_t sub_1CFD480F8()
{
  result = qword_1EC507F00;
  if (!qword_1EC507F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC507F00);
  }

  return result;
}

unint64_t sub_1CFD48150()
{
  result = qword_1EC507F08[0];
  if (!qword_1EC507F08[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC507F08);
  }

  return result;
}

unint64_t sub_1CFD481A8()
{
  result = qword_1EC507F90;
  if (!qword_1EC507F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC507F90);
  }

  return result;
}

unint64_t sub_1CFD48200()
{
  result = qword_1EC507F98[0];
  if (!qword_1EC507F98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC507F98);
  }

  return result;
}

unint64_t sub_1CFD48258()
{
  result = qword_1EC508020;
  if (!qword_1EC508020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC508020);
  }

  return result;
}

unint64_t sub_1CFD482B0()
{
  result = qword_1EC508028[0];
  if (!qword_1EC508028[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC508028);
  }

  return result;
}

unint64_t sub_1CFD48308()
{
  result = qword_1EC5080B0;
  if (!qword_1EC5080B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5080B0);
  }

  return result;
}

unint64_t sub_1CFD48360()
{
  result = qword_1EC5080B8[0];
  if (!qword_1EC5080B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC5080B8);
  }

  return result;
}

unint64_t sub_1CFD483B8()
{
  result = qword_1EC508140;
  if (!qword_1EC508140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC508140);
  }

  return result;
}

unint64_t sub_1CFD48410()
{
  result = qword_1EC508148[0];
  if (!qword_1EC508148[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC508148);
  }

  return result;
}

unint64_t sub_1CFD48464()
{
  result = qword_1EDDD2880[0];
  if (!qword_1EDDD2880[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDD2880);
  }

  return result;
}

void OUTLINED_FUNCTION_0_13()
{
  *(v0 - 288) = 0;
  *(v0 - 216) = 0;
  *(v0 - 280) = 0;
}

uint64_t OUTLINED_FUNCTION_2_12@<X0>(char a1@<W8>)
{
  *(v1 - 192) = a1;
  result = v1 - 192;
  v3 = *(v1 - 296);
  v4 = *(v1 - 288);
  return result;
}

uint64_t OUTLINED_FUNCTION_8_8()
{
  v2 = *(v0 + 8);
  result = *(v1 - 288);
  v4 = *(v1 - 296);
  return result;
}

void OUTLINED_FUNCTION_10_5()
{
  v1 = *(v0 - 296);
  v2 = *(v0 - 288);
  v3 = *(v0 - 208);
}

void OUTLINED_FUNCTION_15_7(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v4 = MEMORY[0x1E69E62F8];

  sub_1CFD4723C(319, a2, a3, v4);
}

uint64_t OUTLINED_FUNCTION_53_3(uint64_t a1, char a2)
{
  sub_1CFD468F0(a1, a2);
  sub_1CFD468F0(v3, v4);
  return v2;
}

uint64_t OUTLINED_FUNCTION_63_2()
{
  v2 = *(v0 - 96);

  return sub_1CFD495A8();
}

uint64_t OUTLINED_FUNCTION_64_2@<X0>(uint64_t a1@<X8>)
{
  result = *(a1 - 256);
  v3 = *(v1 - 320);
  return result;
}

uint64_t OUTLINED_FUNCTION_75_2()
{

  return sub_1CFD494F8();
}

uint64_t OUTLINED_FUNCTION_78@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 - 208);
  *(*(v2 - 200) + a2) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_101_1()
{
  v1 = *(v0 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

char *OUTLINED_FUNCTION_106_2@<X0>(unint64_t a1@<X8>)
{

  return sub_1CFCFE404((a1 > 1), v2, 1, v1);
}

char *OUTLINED_FUNCTION_107_1()
{
  v2 = *(v0 + 16) + 1;

  return sub_1CFCFE404(0, v2, 1, v0);
}

uint64_t OUTLINED_FUNCTION_130_1()
{
  v2 = *(v0 - 152);

  return sub_1CFD494F8();
}

uint64_t OUTLINED_FUNCTION_131_2()
{

  return sub_1CFD49578();
}

void *OUTLINED_FUNCTION_134_2(void *a1)
{

  return memcpy(a1, (v1 + 16), 0x41uLL);
}

uint64_t OUTLINED_FUNCTION_135_2()
{
  v2[3] = v0;
  v2[4] = v1;
  sub_1CFD46864(v1, v0);
  sub_1CFD46864(v2[5], v2[6]);
  v4 = v2[3];
  return v2[4];
}