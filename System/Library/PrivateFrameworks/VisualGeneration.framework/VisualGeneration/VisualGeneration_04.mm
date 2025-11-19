void sub_19A332F8C()
{
  sub_19A333E10(319, &qword_1ED825580, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_19A3330B0(319, &qword_1ED825360);
    if (v1 <= 0x3F)
    {
      sub_19A3330B0(319, &qword_1ED825598);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_19A3330B0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_19A57378C();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_16VisualGeneration20GenerativePlaygroundC21PromptAssignmentEventO(uint64_t a1)
{
  if ((*(a1 + 16) & 7u) <= 4)
  {
    return *(a1 + 16) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_19A33312C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 17))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 16);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_19A333174(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_19A3331B8(uint64_t result, unsigned int a2)
{
  if (a2 >= 5)
  {
    *result = a2 - 5;
    *(result + 8) = 0;
    LOBYTE(a2) = 5;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_19A3331E0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_19A33323C(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2;
    }
  }

  return result;
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for AppleDiffusionModelMetadata.CaseSpecificLCMParameters(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AppleDiffusionModelMetadata.CaseSpecificLCMParameters(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
    *result = a2 - 1;
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

  *(result + 5) = v3;
  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
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

uint64_t sub_19A333360(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 41))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_19A3333A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t __swift_memcpy10_4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for GenerativePlayground.DrawOnImageAssignmentOptions(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[10])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for GenerativePlayground.DrawOnImageAssignmentOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Sex(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for Sex(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t get_enum_tag_for_layout_string_16VisualGeneration5ImageOSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 > 2)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_19A33362C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 25))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = (v3 ^ 0xFF) - 1;
  }

  return (v4 + 1);
}

uint64_t sub_19A333678(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 8) = ~a2;
    }
  }

  return result;
}

uint64_t sub_19A3336D0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 9))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = (v3 ^ 0xFF) - 1;
  }

  return (v4 + 1);
}

uint64_t sub_19A33371C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = ~a2;
    }
  }

  return result;
}

uint64_t sub_19A33377C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 9);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_19A3337C8(uint64_t result, int a2, int a3)
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
      *result = 0;
      *(result + 8) = -a2 << 8;
      *(result + 16) = 0;
      *(result + 24) = 0;
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

uint64_t getEnumTagSinglePayload for ForensicsReportType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
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

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ForensicsReportType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for GenerativePlayground.PromptConditioningImageAssignmentOptions(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[4])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for GenerativePlayground.PromptConditioningImageAssignmentOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 4) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 4) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_19A333A58(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3E && *(a1 + 9))
  {
    return (*a1 + 62);
  }

  v3 = (*(a1 + 8) & 0x3C | (*(a1 + 8) >> 6)) ^ 0x3F;
  if (v3 >= 0x3D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_19A333AA8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3D)
  {
    *(result + 8) = 0;
    *result = a2 - 62;
    if (a3 >= 0x3E)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3E)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 4 * (((-a2 >> 2) & 0xF) - 16 * a2);
    }
  }

  return result;
}

__n128 __swift_memcpy28_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 12) = *(a2 + 12);
  *a1 = result;
  return result;
}

uint64_t sub_19A333B20(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 28))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_19A333B7C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 28) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 28) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void sub_19A333C04()
{
  if (!qword_1EAF9E808)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF9FE60);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EAF9E808);
    }
  }
}

void sub_19A333C9C()
{
  if (!qword_1EAF9F028)
  {
    v0 = sub_19A333E74(0, &qword_1EAF9F020);
    if (!v1)
    {
      atomic_store(v0, &qword_1EAF9F028);
    }
  }
}

void sub_19A333D1C()
{
  sub_19A333E10(319, &qword_1EAF9E828, type metadata accessor for GenerativePlayground.PreviewGenerationEvent, MEMORY[0x1E69E8698]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for GenerationState();
    if (v1 <= 0x3F)
    {
      sub_19A333E74(319, &qword_1EAF9E740);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_19A333E10(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_19A333E74(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_19A333ED8()
{
  result = type metadata accessor for GeneratedImage();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for GenerationState();
    if (v2 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

__n128 __swift_memcpy60_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_19A333FD8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 60))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 40);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_19A334034(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 60) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 60) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

uint64_t sub_19A3340C8(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_19A334100()
{
  type metadata accessor for GenerationState();
  if (v0 <= 0x3F)
  {
    sub_19A333C9C();
    if (v1 <= 0x3F)
    {
      sub_19A333E10(319, &qword_1ED823F58, type metadata accessor for GeneratedImage, MEMORY[0x1E69E62F8]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for GenerativePlayground.ImageGenerationOptions(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for GenerativePlayground.ImageGenerationOptions(uint64_t result, int a2, int a3)
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

void sub_19A334298(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(void))
{
  type metadata accessor for GenerationState();
  if (v7 <= 0x3F)
  {
    sub_19A333C04();
    if (v8 <= 0x3F)
    {
      sub_19A33434C(319, a4, a5);
      if (v9 <= 0x3F)
      {
        sub_19A333C9C();
        if (v10 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_19A33434C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_19A3343A0()
{
  sub_19A333E10(319, &qword_1EAF9FE80, type metadata accessor for GenerativePlayground.ImageGenerationEvent, MEMORY[0x1E69E8698]);
  if (v0 <= 0x3F)
  {
    sub_19A57102C();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_19A3344FC()
{
  result = sub_19A57112C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_19A334618(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_19A334674(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v10 = *(v4 + 16);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_19A33558C;

  return sub_19A3EAC34(a1, a2, a3, a4, v10);
}

uint64_t sub_19A334754(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

unint64_t sub_19A3347B8()
{
  result = qword_1EAF9FF88;
  if (!qword_1EAF9FF88)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAF9FF88);
  }

  return result;
}

uint64_t sub_19A334804(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

void sub_19A334818(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0120) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_19A3135C4(a1, a2, v2 + v6, v7);
}

uint64_t sub_19A3348D0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_19A33558C;

  return sub_19A314134(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_19A334998(uint64_t a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0120) - 8);
  v13 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v3 = (*(v2 + 64) + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_19A57102C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FDC8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v10 = *(v1 + v4);
  v11 = *(v1 + v3);
  v7 = *(v1 + ((v4 + 87) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v12 + 16) = v8;
  *v8 = v12;
  v8[1] = sub_19A33558C;

  return sub_19A30EAC0(a1, v5, v6, v1 + v13, v11, v10, v1 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8), v7);
}

uint64_t sub_19A334CEC(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_19A33558C;

  return sub_19A497970(a1, a2, v6, v7, v8);
}

uint64_t sub_19A334DE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD80);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_19A334E74(uint64_t a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0160) - 8);
  v16 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v3 = (*(v2 + 64) + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(type metadata accessor for GenerationState() - 8);
  v14 = (*(v6 + 80) + v5 + 8) & ~*(v6 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FDC8);
  v12 = *(v1 + v4);
  v13 = *(v1 + v3);
  v7 = *(v1 + 24);
  v10 = *(v1 + 16);
  v11 = *(v1 + v5);
  v8 = swift_task_alloc();
  *(v15 + 16) = v8;
  *v8 = v15;
  v8[1] = sub_19A33558C;

  return sub_19A303598(a1, v10, v7, v1 + v16, v13, v12, v11, v1 + v14);
}

unint64_t sub_19A335164()
{
  result = qword_1EAFA0178;
  if (!qword_1EAFA0178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0178);
  }

  return result;
}

uint64_t sub_19A3351B8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_19A335220(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_310Tm(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x1EEE6BDD0](v1, v5 + v6, v4 | 7);
}

uint64_t sub_19A335314(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3) - 8);
  v9 = v5 + ((*(v8 + 80) + 16) & ~*(v8 + 80));

  return a5(a1, a2, v9);
}

unint64_t sub_19A3353AC()
{
  result = qword_1EAFA0188;
  if (!qword_1EAFA0188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0188);
  }

  return result;
}

void sub_19A335400(void *a1, char a2, void *a3, uint64_t a4, void *a5)
{
  if (a2 != -1)
  {
  }
}

void sub_19A335458(id a1, char a2)
{
  if (a2 != -1)
  {
  }
}

uint64_t sub_19A33546C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_19A3354D4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_19A33558C;

  return sub_19A31CA04(a1, v4);
}

unint64_t _s13DiffusionBase21PipelineConfigurationV17InputConditioningV16VisualGeneration27RadarDescriptionConvertibleA2fGP05radarJ0SSvgTW_0()
{
  sub_19A57395C();

  v1 = type metadata accessor for PipelineConfiguration.InputConditioning(0);
  v2 = *(v0 + *(v1 + 28)) == 0;
  if (*(v0 + *(v1 + 28)))
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  MEMORY[0x19A900A50](v3, v4);

  return 0xD00000000000001FLL;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_19A3356FC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_19A335744(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_19A3357BC(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = "lowerBoundOffset";
  }

  else
  {
    v2 = "und";
  }

  v3 = v2 | 0x8000000000000000;
  if (*a2)
  {
    v4 = "lowerBoundOffset";
  }

  else
  {
    v4 = "und";
  }

  if (v3 == (v4 | 0x8000000000000000))
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_19A573F1C();
  }

  return v5 & 1;
}

uint64_t sub_19A335860()
{
  sub_19A5740BC();
  sub_19A572E4C();

  return sub_19A57410C();
}

uint64_t sub_19A3358D8()
{
  sub_19A572E4C();
}

uint64_t sub_19A33593C()
{
  sub_19A5740BC();
  sub_19A572E4C();

  return sub_19A57410C();
}

uint64_t sub_19A3359B0@<X0>(char *a1@<X8>)
{
  v2 = sub_19A573C2C();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_19A335A10(void *a1@<X8>)
{
  if (*v1)
  {
    v2 = "lowerBoundOffset";
  }

  else
  {
    v2 = "und";
  }

  *a1 = 0xD000000000000010;
  a1[1] = v2 | 0x8000000000000000;
}

uint64_t sub_19A335A78@<X0>(char *a1@<X8>)
{
  v2 = sub_19A573C2C();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_19A335AE8(uint64_t a1)
{
  v2 = sub_19A335EB4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A335B24(uint64_t a1)
{
  v2 = sub_19A335EB4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_19A335B60(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA01B0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A335EB4();
  sub_19A5741AC();
  v10 = 0;
  sub_19A573E6C();
  if (!v1)
  {
    v9 = 1;
    sub_19A573E6C();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_19A335CE8()
{
  v1 = *v0;
  v2 = v0[1];
  sub_19A5740BC();
  MEMORY[0x19A901C70](v1 >> 14);
  MEMORY[0x19A901C70](v2 >> 14);
  return sub_19A57410C();
}

uint64_t sub_19A335D44()
{
  v1 = v0[1];
  MEMORY[0x19A901C70](*v0 >> 14);
  return MEMORY[0x19A901C70](v1 >> 14);
}

uint64_t sub_19A335D84()
{
  v1 = *v0;
  v2 = v0[1];
  sub_19A5740BC();
  MEMORY[0x19A901C70](v1 >> 14);
  MEMORY[0x19A901C70](v2 >> 14);
  return sub_19A57410C();
}

void *sub_19A335DDC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_19A335F08(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

unint64_t sub_19A335E60()
{
  result = qword_1EAFA01A8;
  if (!qword_1EAFA01A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA01A8);
  }

  return result;
}

unint64_t sub_19A335EB4()
{
  result = qword_1ED8246A0;
  if (!qword_1ED8246A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8246A0);
  }

  return result;
}

void *sub_19A335F08(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA01B8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16 - v5;
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A335EB4();
  sub_19A57417C();
  if (v1)
  {
    goto LABEL_11;
  }

  LOBYTE(v18) = 0;
  v8 = sub_19A573D3C();
  if ((v8 & 0x8000000000000000) != 0)
  {
    v20 = 0;
    v18 = 0;
    v19 = 0xE000000000000000;
    sub_19A57395C();

    v18 = 0xD000000000000014;
    v19 = 0x800000019A596AB0;
    v17 = v8;
    v13 = sub_19A573EDC();
    MEMORY[0x19A900A50](v13);
  }

  else
  {
    LOBYTE(v18) = 1;
    v9 = sub_19A573D3C();
    v10 = v9;
    if ((v9 & 0x8000000000000000) == 0)
    {
      if (v9 >= v8)
      {
        (*(v4 + 8))(v6, v3);
        v7 = (v8 << 16);
        __swift_destroy_boxed_opaque_existential_0Tm(a1);
        return v7;
      }

      v20 = 1;
      v18 = 0;
      v19 = 0xE000000000000000;
      sub_19A57395C();
      MEMORY[0x19A900A50](0xD000000000000014, 0x800000019A596A40);
      v17 = v10;
      v11 = sub_19A573EDC();
      MEMORY[0x19A900A50](v11);

      MEMORY[0x19A900A50](0xD000000000000021, 0x800000019A596A60);
      v17 = v8;
      v12 = sub_19A573EDC();
      MEMORY[0x19A900A50](v12);

      goto LABEL_9;
    }

    v20 = 1;
    v18 = 0;
    v19 = 0xE000000000000000;
    sub_19A57395C();

    v18 = 0xD000000000000014;
    v19 = 0x800000019A596A40;
    v17 = v10;
    v15 = sub_19A573EDC();
    MEMORY[0x19A900A50](v15);
  }

  MEMORY[0x19A900A50](0xD000000000000012, 0x800000019A596A90);
LABEL_9:
  v7 = v18;
  sub_19A5739FC();
  swift_allocError();
  sub_19A3362F4();
  sub_19A5739CC();

  swift_willThrow();
  (*(v4 + 8))(v6, v3);
LABEL_11:
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v7;
}

unint64_t sub_19A3362F4()
{
  result = qword_1EAFA01C0;
  if (!qword_1EAFA01C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFA01B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA01C0);
  }

  return result;
}

unint64_t sub_19A33636C()
{
  result = qword_1EAFA01C8;
  if (!qword_1EAFA01C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA01C8);
  }

  return result;
}

unint64_t sub_19A3363C4()
{
  result = qword_1ED8246B0;
  if (!qword_1ED8246B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8246B0);
  }

  return result;
}

unint64_t sub_19A33641C()
{
  result = qword_1ED8246A8;
  if (!qword_1ED8246A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8246A8);
  }

  return result;
}

uint64_t sub_19A336470@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v19 = a1;
  v20 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FDC8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v17 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA01D0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v17 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0020);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v18 = &v17 - v10;
  v11 = sub_19A570C7C();
  MEMORY[0x1EEE9AC00](v11 - 8);

  sub_19A570C6C();
  sub_19A570BFC();
  v21[0] = 0x7D74706D6F72707BLL;
  v21[1] = 0xE800000000000000;
  v12 = sub_19A57112C();
  (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
  sub_19A570BEC();
  sub_19A33679C();
  sub_19A2F4450();
  sub_19A570D8C();
  sub_19A2F3FA0(v4, &qword_1EAF9FDC8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    v13 = &qword_1EAFA01D0;
    v14 = v7;
  }

  else
  {
    v15 = v18;
    sub_19A3367F4(v7, v18);
    sub_19A336864();
    sub_19A570AEC();
    v13 = &qword_1EAFA0020;
    v14 = v15;
  }

  sub_19A2F3FA0(v14, v13);
  return sub_19A2F132C(v21);
}

unint64_t sub_19A33679C()
{
  result = qword_1ED825300;
  if (!qword_1ED825300)
  {
    sub_19A570BEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED825300);
  }

  return result;
}

uint64_t sub_19A3367F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0020);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_19A336864()
{
  result = qword_1ED823F20;
  if (!qword_1ED823F20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFA0020);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED823F20);
  }

  return result;
}

unint64_t sub_19A3368CC()
{
  result = qword_1EAFA01D8;
  if (!qword_1EAFA01D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA01D8);
  }

  return result;
}

unint64_t sub_19A336924()
{
  result = qword_1EAFA01E0;
  if (!qword_1EAFA01E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA01E0);
  }

  return result;
}

unint64_t sub_19A336984(uint64_t a1)
{
  result = sub_19A3369AC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_19A3369AC()
{
  result = qword_1ED825688;
  if (!qword_1ED825688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED825688);
  }

  return result;
}

uint64_t sub_19A336A68(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFA01E8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_19A336AD0(uint64_t a1)
{
  v2 = sub_19A336E3C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A336B0C(uint64_t a1)
{
  v2 = sub_19A336E3C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_19A336B70(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA01F0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A336E3C();
  sub_19A5741AC();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_19A336C84@<X0>(__IOSurface *a1@<X1>, uint64_t a2@<X8>)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  result = CVPixelBufferCreateWithIOSurface(*MEMORY[0x1E695E480], a1, 0, v6);
  v4 = result;
  if (result || !v6[0])
  {
    sub_19A336E90();
    swift_allocError();
    *v5 = v4;
    *(v5 + 4) = 0;
    return swift_willThrow();
  }

  else
  {
    *a2 = v6[0];
    *(a2 + 8) = 2;
  }

  return result;
}

unint64_t sub_19A336D54(uint64_t a1)
{
  *(a1 + 8) = sub_19A336D84();
  result = sub_19A336DD8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_19A336D84()
{
  result = qword_1ED825CD8;
  if (!qword_1ED825CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED825CD8);
  }

  return result;
}

unint64_t sub_19A336DD8()
{
  result = qword_1ED825690;
  if (!qword_1ED825690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED825690);
  }

  return result;
}

unint64_t sub_19A336E3C()
{
  result = qword_1EAF9E9A0;
  if (!qword_1EAF9E9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF9E9A0);
  }

  return result;
}

unint64_t sub_19A336E90()
{
  result = qword_1EAFA2710;
  if (!qword_1EAFA2710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2710);
  }

  return result;
}

unint64_t sub_19A336EF8()
{
  result = qword_1EAF9E990;
  if (!qword_1EAF9E990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF9E990);
  }

  return result;
}

unint64_t sub_19A336F50()
{
  result = qword_1EAF9E998;
  if (!qword_1EAF9E998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF9E998);
  }

  return result;
}

uint64_t sub_19A336FA4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000776F6CLL;
  v3 = 0x6C6559696A6F6D65;
  v4 = a1;
  if (a1 > 4u)
  {
    v13 = 0xE400000000000000;
    v14 = 1802658148;
    v15 = 0xE800000000000000;
    v16 = 0x6B72614470656564;
    if (a1 != 8)
    {
      v16 = 0x7473656B726164;
      v15 = 0xE700000000000000;
    }

    if (a1 != 7)
    {
      v14 = v16;
      v13 = v15;
    }

    v17 = 0xE600000000000000;
    v18 = 0x6D756964656DLL;
    if (a1 != 5)
    {
      v18 = 0x61446D756964656DLL;
      v17 = 0xEA00000000006B72;
    }

    if (a1 <= 6u)
    {
      v11 = v18;
    }

    else
    {
      v11 = v14;
    }

    if (v4 <= 6)
    {
      v12 = v17;
    }

    else
    {
      v12 = v13;
    }
  }

  else
  {
    v5 = 0x696146746867696CLL;
    v6 = 0xE900000000000072;
    v7 = 0xE400000000000000;
    v8 = 1919508838;
    if (a1 != 3)
    {
      v8 = 0x64654D746867696CLL;
      v7 = 0xEB000000006D7569;
    }

    if (a1 != 2)
    {
      v5 = v8;
      v6 = v7;
    }

    v9 = 0xE700000000000000;
    v10 = 0x74736572696166;
    if (!a1)
    {
      v10 = 0x6C6559696A6F6D65;
      v9 = 0xEB00000000776F6CLL;
    }

    if (a1 <= 1u)
    {
      v11 = v10;
    }

    else
    {
      v11 = v5;
    }

    if (v4 <= 1)
    {
      v12 = v9;
    }

    else
    {
      v12 = v6;
    }
  }

  if (a2 > 4u)
  {
    if (a2 <= 6u)
    {
      if (a2 == 5)
      {
        v2 = 0xE600000000000000;
        if (v11 != 0x6D756964656DLL)
        {
          goto LABEL_54;
        }
      }

      else
      {
        v2 = 0xEA00000000006B72;
        if (v11 != 0x61446D756964656DLL)
        {
          goto LABEL_54;
        }
      }

      goto LABEL_51;
    }

    if (a2 == 7)
    {
      v2 = 0xE400000000000000;
      if (v11 != 1802658148)
      {
        goto LABEL_54;
      }

      goto LABEL_51;
    }

    if (a2 == 8)
    {
      v2 = 0xE800000000000000;
      if (v11 != 0x6B72614470656564)
      {
        goto LABEL_54;
      }

      goto LABEL_51;
    }

    v2 = 0xE700000000000000;
    v3 = 0x7473656B726164;
  }

  else
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v2 = 0xE900000000000072;
        if (v11 != 0x696146746867696CLL)
        {
          goto LABEL_54;
        }
      }

      else if (a2 == 3)
      {
        v2 = 0xE400000000000000;
        if (v11 != 1919508838)
        {
          goto LABEL_54;
        }
      }

      else
      {
        v2 = 0xEB000000006D7569;
        if (v11 != 0x64654D746867696CLL)
        {
          goto LABEL_54;
        }
      }

      goto LABEL_51;
    }

    if (a2)
    {
      v2 = 0xE700000000000000;
      if (v11 != 0x74736572696166)
      {
        goto LABEL_54;
      }

      goto LABEL_51;
    }
  }

  if (v11 != v3)
  {
LABEL_54:
    v19 = sub_19A573F1C();
    goto LABEL_55;
  }

LABEL_51:
  if (v12 != v2)
  {
    goto LABEL_54;
  }

  v19 = 1;
LABEL_55:

  return v19 & 1;
}

uint64_t sub_19A337298(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 2036490594;
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x646C696863;
    }

    else
    {
      v5 = 2036490594;
    }

    if (v3)
    {
      v4 = 0xE500000000000000;
    }

    else
    {
      v4 = 0xE400000000000000;
    }
  }

  else if (a1 == 2)
  {
    v5 = 0x756441676E756F79;
    v4 = 0xEA0000000000746CLL;
  }

  else if (a1 == 3)
  {
    v4 = 0xE500000000000000;
    v5 = 0x746C756461;
  }

  else
  {
    v4 = 0xE600000000000000;
    v5 = 0x726F696E6573;
  }

  if (a2 <= 1u)
  {
    v6 = 0xE400000000000000;
    v7 = 0xE500000000000000;
    v8 = 0x646C696863;
    v9 = a2 == 0;
  }

  else
  {
    v2 = 0x756441676E756F79;
    v6 = 0xEA0000000000746CLL;
    v7 = 0xE500000000000000;
    v8 = 0x746C756461;
    if (a2 != 3)
    {
      v8 = 0x726F696E6573;
      v7 = 0xE600000000000000;
    }

    v9 = a2 == 2;
  }

  if (v9)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v9)
  {
    v11 = v6;
  }

  else
  {
    v11 = v7;
  }

  if (v5 == v10 && v4 == v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_19A573F1C();
  }

  return v12 & 1;
}

uint64_t sub_19A3373FC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 7827308;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 1751607656;
    }

    else
    {
      v4 = 1869903201;
    }

    v5 = 0xE400000000000000;
  }

  else
  {
    if (a1)
    {
      v4 = 0x6D756964656DLL;
    }

    else
    {
      v4 = 7827308;
    }

    if (v3)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE300000000000000;
    }
  }

  v6 = 0xE300000000000000;
  v7 = 1751607656;
  if (a2 != 2)
  {
    v7 = 1869903201;
  }

  if (a2)
  {
    v2 = 0x6D756964656DLL;
    v6 = 0xE600000000000000;
  }

  if (a2 <= 1u)
  {
    v8 = v2;
  }

  else
  {
    v8 = v7;
  }

  if (a2 <= 1u)
  {
    v9 = v6;
  }

  else
  {
    v9 = 0xE400000000000000;
  }

  if (v4 == v8 && v5 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_19A573F1C();
  }

  return v10 & 1;
}

uint64_t sub_19A337510(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x61486C6169636166;
    }

    else
    {
      v5 = 1919508840;
    }

    if (v2)
    {
      v6 = 0xEA00000000007269;
    }

    else
    {
      v6 = 0xE400000000000000;
    }
  }

  else
  {
    v3 = 0x726F737365636361;
    v4 = 0xEB00000000736569;
    if (a1 != 3)
    {
      v3 = 0xD000000000000015;
      v4 = 0x800000019A5959C0;
    }

    if (a1 == 2)
    {
      v5 = 0x7261657764616568;
    }

    else
    {
      v5 = v3;
    }

    if (v2 == 2)
    {
      v6 = 0xE800000000000000;
    }

    else
    {
      v6 = v4;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v11 = 0x61486C6169636166;
    }

    else
    {
      v11 = 1919508840;
    }

    if (a2)
    {
      v10 = 0xEA00000000007269;
    }

    else
    {
      v10 = 0xE400000000000000;
    }

    if (v5 != v11)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v7 = 0x726F737365636361;
    v8 = 0x800000019A5959C0;
    if (a2 == 3)
    {
      v8 = 0xEB00000000736569;
    }

    else
    {
      v7 = 0xD000000000000015;
    }

    if (a2 == 2)
    {
      v9 = 0x7261657764616568;
    }

    else
    {
      v9 = v7;
    }

    if (a2 == 2)
    {
      v10 = 0xE800000000000000;
    }

    else
    {
      v10 = v8;
    }

    if (v5 != v9)
    {
      goto LABEL_37;
    }
  }

  if (v6 != v10)
  {
LABEL_37:
    v12 = sub_19A573F1C();
    goto LABEL_38;
  }

  v12 = 1;
LABEL_38:

  return v12 & 1;
}

uint64_t sub_19A3376AC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = "upperBoundOffset";
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0xD000000000000011;
    }

    else
    {
      v5 = 0xD000000000000010;
    }

    if (v3 == 2)
    {
      v4 = "textSanitization";
    }

    else
    {
      v4 = "imageSanitization";
    }
  }

  else
  {
    if (a1)
    {
      v4 = "promptValidation";
    }

    else
    {
      v4 = "upperBoundOffset";
    }

    v5 = 0xD000000000000010;
  }

  v6 = "textSanitization";
  if (a2 == 2)
  {
    v7 = 0xD000000000000011;
  }

  else
  {
    v7 = 0xD000000000000010;
  }

  if (a2 != 2)
  {
    v6 = "imageSanitization";
  }

  if (a2)
  {
    v2 = "promptValidation";
  }

  if (a2 <= 1u)
  {
    v8 = 0xD000000000000010;
  }

  else
  {
    v8 = v7;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v6;
  }

  if (v5 == v8 && (v4 | 0x8000000000000000) == (v9 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_19A573F1C();
  }

  return v10 & 1;
}

uint64_t sub_19A3377AC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEE006567616D4974;
  v3 = 0xD000000000000012;
  if (a1 <= 3u)
  {
    v4 = 0x800000019A595530;
    v5 = 0xD000000000000014;
    if (a1 != 2)
    {
      v5 = 0xD000000000000012;
      v4 = 0x800000019A595550;
    }

    v8 = 0x800000019A5954F0;
    v9 = 0xD000000000000017;
    if (a1)
    {
      v9 = 0xD000000000000011;
      v8 = 0x800000019A595510;
    }

    v10 = a1 <= 1u;
  }

  else
  {
    v4 = 0x800000019A5955B0;
    v5 = 0xD000000000000020;
    v6 = 0x6669636570736E75;
    v7 = 0xEB00000000646569;
    if (a1 == 7)
    {
      v6 = 0x75706E4965636166;
      v7 = 0xEE006567616D4974;
    }

    if (a1 != 6)
    {
      v5 = v6;
      v4 = v7;
    }

    v8 = 0x800000019A595570;
    v9 = 0xD00000000000001DLL;
    if (a1 != 4)
    {
      v9 = 0xD000000000000012;
      v8 = 0x800000019A595590;
    }

    v10 = a1 <= 5u;
  }

  if (v10)
  {
    v11 = v9;
  }

  else
  {
    v11 = v5;
  }

  if (v10)
  {
    v12 = v8;
  }

  else
  {
    v12 = v4;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v2 = 0x800000019A5955B0;
        v3 = 0xD000000000000020;
      }

      else if (a2 == 7)
      {
        v3 = 0x75706E4965636166;
      }

      else
      {
        v3 = 0x6669636570736E75;
        v2 = 0xEB00000000646569;
      }

      goto LABEL_38;
    }

    if (a2 == 4)
    {
      v2 = 0x800000019A595570;
      v3 = 0xD00000000000001DLL;
      goto LABEL_38;
    }

    v13 = "scribbleInputImage";
LABEL_37:
    v2 = (v13 - 32) | 0x8000000000000000;
    goto LABEL_38;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v2 = 0x800000019A595530;
      v3 = 0xD000000000000014;
      goto LABEL_38;
    }

    v13 = "genmojiOutputImage";
    goto LABEL_37;
  }

  if (a2)
  {
    v2 = 0x800000019A595510;
    v3 = 0xD000000000000011;
  }

  else
  {
    v2 = 0x800000019A5954F0;
    v3 = 0xD000000000000017;
  }

LABEL_38:
  if (v11 == v3 && v12 == v2)
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_19A573F1C();
  }

  return v14 & 1;
}

uint64_t sub_19A337A30(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE90000000000006ELL;
  v3 = 0x6F6974616D696E61;
  v4 = a1;
  v5 = 0xD000000000000013;
  v6 = 0x800000019A595400;
  if (a1 != 5)
  {
    v5 = 0x6C616E7265747865;
    v6 = 0xE800000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x686374656B73;
  if (a1 != 3)
  {
    v8 = 0x747241656E696CLL;
    v7 = 0xE700000000000000;
  }

  if (a1 <= 4u)
  {
    v5 = v8;
    v6 = v7;
  }

  v9 = 0xE500000000000000;
  v10 = 0x696A6F6D65;
  if (a1 != 1)
  {
    v10 = 0x61727473756C6C69;
    v9 = 0xEC0000006E6F6974;
  }

  if (!a1)
  {
    v10 = 0x6F6974616D696E61;
    v9 = 0xE90000000000006ELL;
  }

  if (a1 <= 2u)
  {
    v11 = v10;
  }

  else
  {
    v11 = v5;
  }

  if (v4 <= 2)
  {
    v12 = v9;
  }

  else
  {
    v12 = v6;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xE500000000000000;
        if (v11 != 0x696A6F6D65)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v2 = 0xEC0000006E6F6974;
        if (v11 != 0x61727473756C6C69)
        {
          goto LABEL_36;
        }
      }

      goto LABEL_33;
    }
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v2 = 0x800000019A595400;
        if (v11 != 0xD000000000000013)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v2 = 0xE800000000000000;
        if (v11 != 0x6C616E7265747865)
        {
          goto LABEL_36;
        }
      }

      goto LABEL_33;
    }

    if (a2 == 3)
    {
      v2 = 0xE600000000000000;
      if (v11 != 0x686374656B73)
      {
        goto LABEL_36;
      }

      goto LABEL_33;
    }

    v2 = 0xE700000000000000;
    v3 = 0x747241656E696CLL;
  }

  if (v11 != v3)
  {
LABEL_36:
    v13 = sub_19A573F1C();
    goto LABEL_37;
  }

LABEL_33:
  if (v12 != v2)
  {
    goto LABEL_36;
  }

  v13 = 1;
LABEL_37:

  return v13 & 1;
}

VisualGeneration::ForensicsReportType_optional __swiftcall ForensicsReportType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_19A573C2C();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t ForensicsReportType.rawValue.getter()
{
  v1 = *v0;
  if (v1 == 2)
  {
    v2 = 0xD000000000000011;
  }

  else
  {
    v2 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return 0xD000000000000010;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_19A337D18()
{
  sub_19A5740BC();
  sub_19A572E4C();

  return sub_19A57410C();
}

uint64_t sub_19A337DC0()
{
  sub_19A572E4C();
}

uint64_t sub_19A337E54()
{
  sub_19A5740BC();
  sub_19A572E4C();

  return sub_19A57410C();
}

void sub_19A337F04(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000010;
  v3 = *v1;
  v4 = "upperBoundOffset";
  v5 = "textSanitization";
  if (v3 == 2)
  {
    v6 = 0xD000000000000011;
  }

  else
  {
    v6 = 0xD000000000000010;
  }

  if (v3 != 2)
  {
    v5 = "imageSanitization";
  }

  if (*v1)
  {
    v4 = "promptValidation";
  }

  if (*v1 <= 1u)
  {
    v7 = v4;
  }

  else
  {
    v2 = v6;
    v7 = v5;
  }

  *a1 = v2;
  a1[1] = v7 | 0x8000000000000000;
}

uint64_t sub_19A338028@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FEB0);
  result = sub_19A573BBC();
  v6 = result;
  v7 = 0;
  v29 = a2;
  v10 = *(a2 + 64);
  v9 = a2 + 64;
  v8 = v10;
  v11 = 1 << *(v9 - 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v8;
  v14 = (v11 + 63) >> 6;
  v28 = result + 64;
  if ((v12 & v8) != 0)
  {
    while (1)
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_10:
      v18 = v15 | (v7 << 6);
      v19 = (*(v29 + 48) + 16 * v18);
      v20 = *v19;
      v21 = v19[1];
      sub_19A334618(*(v29 + 56) + 32 * v18, v31);
      sub_19A334618(v31, v30);

      JSONValue.init(_:)(v30, &v32);
      if (v3)
      {
        break;
      }

      result = __swift_destroy_boxed_opaque_existential_0Tm(v31);
      *(v28 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v22 = (v6[6] + 16 * v18);
      *v22 = v20;
      v22[1] = v21;
      *(v6[7] + 8 * v18) = v32;
      v23 = v6[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        goto LABEL_17;
      }

      v6[2] = v25;
      if (!v13)
      {
        goto LABEL_5;
      }
    }

    return __swift_destroy_boxed_opaque_existential_0Tm(v31);
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

        *a3 = v26;
        *(a3 + 8) = v6;
        return result;
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

uint64_t JSONValue.init(_:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  sub_19A334618(a1, v63);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA01F8);
  if (swift_dynamicCast())
  {
    sub_19A2EA460(v61, v56);
    v6 = v58;
    v7 = v59;
    __swift_project_boxed_opaque_existential_1(v56, v58);
    (*(v7 + 16))(v61, v6, v7);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    v8 = *&v61[0];
    result = __swift_destroy_boxed_opaque_existential_0Tm(v56);
    *a2 = v8;
    return result;
  }

  v62 = 0;
  memset(v61, 0, sizeof(v61));
  sub_19A2F3FA0(v61, &qword_1EAFA0200);
  sub_19A334618(a1, v56);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    v10 = v61[0];
    result = swift_allocObject();
    *(result + 16) = v10;
    *a2 = result;
    return result;
  }

  sub_19A334618(a1, v56);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    v11 = *&v61[0];
    result = swift_allocObject();
    *(result + 16) = v11;
    v12 = result | 0x2000000000000000;
LABEL_54:
    *a2 = v12;
    return result;
  }

  sub_19A334618(a1, v56);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    v13 = *&v61[0];
    result = swift_allocObject();
    *(result + 16) = v13;
    v12 = result | 0x4000000000000000;
    goto LABEL_54;
  }

  sub_19A334618(a1, v56);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    v14 = v61[0];
    result = swift_allocObject();
    *(result + 16) = v14;
    v12 = result | 0x6000000000000000;
    goto LABEL_54;
  }

  sub_19A334618(a1, v56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0208);
  if (swift_dynamicCast())
  {
    v15 = *(*&v61[0] + 16);
    if (v15)
    {
      v16 = *&v61[0] + 32;
      v17 = MEMORY[0x1E69E7CC0];
      do
      {
        sub_19A334618(v16, v56);
        sub_19A334618(v56, v61);
        JSONValue.init(_:)(v63, v61);
        if (v3)
        {

          __swift_destroy_boxed_opaque_existential_0Tm(v56);
          v3 = 0;
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_0Tm(v56);
          v18 = v63[0];
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v17 = sub_19A31D6DC(0, *(v17 + 2) + 1, 1, v17);
          }

          v20 = *(v17 + 2);
          v19 = *(v17 + 3);
          if (v20 >= v19 >> 1)
          {
            v17 = sub_19A31D6DC((v19 > 1), v20 + 1, 1, v17);
          }

          *(v17 + 2) = v20 + 1;
          *&v17[8 * v20 + 32] = v18;
        }

        v16 += 32;
        --v15;
      }

      while (v15);
    }

    else
    {

      v17 = MEMORY[0x1E69E7CC0];
    }

    v48 = swift_allocObject();
    result = __swift_destroy_boxed_opaque_existential_0Tm(a1);
    *(v48 + 16) = v17;
    v12 = v48 | 0x8000000000000000;
    goto LABEL_54;
  }

  sub_19A334618(a1, v56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0210);
  if (swift_dynamicCast())
  {
    v21 = *&v61[0] + 64;
    v22 = 1 << *(*&v61[0] + 32);
    v23 = -1;
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    v24 = v23 & *(*&v61[0] + 64);
    v25 = (v22 + 63) >> 6;
    v55 = *&v61[0];

    v50 = MEMORY[0x1E69E7CC0];
    v53 = v25;
    v54 = v21;
    v26 = 0;
    if (v24)
    {
      while (1)
      {
        v27 = v26;
LABEL_30:
        v28 = __clz(__rbit64(v24)) | (v27 << 6);
        v29 = (*(v55 + 48) + 16 * v28);
        v31 = *v29;
        v30 = v29[1];
        sub_19A334618(*(v55 + 56) + 32 * v28, &v57);
        v56[0] = v31;
        v56[1] = v30;
        __swift_project_boxed_opaque_existential_1(&v57, v60);
        DynamicType = swift_getDynamicType();
        v33 = swift_conformsToProtocol2();
        if (v33)
        {
          v34 = DynamicType == 0;
        }

        else
        {
          v34 = 1;
        }

        if (v34)
        {
          v36 = v31;
          swift_bridgeObjectRetain_n();
        }

        else
        {
          v51 = *(v33 + 8);
          v35 = v33;

          v36 = v51(v31, v30, DynamicType, v35);
          v30 = v37;
        }

        v24 &= v24 - 1;
        sub_19A334618(&v57, v61);
        JSONValue.init(_:)(v63, v61);
        if (v3)
        {

          sub_19A2F3FA0(v56, &qword_1EAFA0220);
          v3 = 0;
          v26 = v27;
          v25 = v53;
          v21 = v54;
          if (!v24)
          {
            goto LABEL_27;
          }
        }

        else
        {
          v38 = v63[0];
          sub_19A2F3FA0(v56, &qword_1EAFA0220);
          v52 = v38;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v50 = sub_19A31D7E8(0, v50[2] + 1, 1, v50);
          }

          v39 = v36;
          v41 = v50[2];
          v40 = v50[3];
          v42 = v41 + 1;
          if (v41 >= v40 >> 1)
          {
            v44 = sub_19A31D7E8((v40 > 1), v41 + 1, 1, v50);
            v42 = v41 + 1;
            v39 = v36;
            v50 = v44;
          }

          v50[2] = v42;
          v43 = &v50[3 * v41];
          v43[4] = v39;
          v43[5] = v30;
          v25 = v53;
          v43[6] = v52;
          v21 = v54;
          v26 = v27;
          if (!v24)
          {
            goto LABEL_27;
          }
        }
      }
    }

    while (1)
    {
LABEL_27:
      v27 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_56;
      }

      if (v27 >= v25)
      {
        break;
      }

      v24 = *(v21 + 8 * v27);
      ++v26;
      if (v24)
      {
        goto LABEL_30;
      }
    }

    if (v50[2])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FEB0);
      v47 = sub_19A573BEC();
    }

    else
    {
      v47 = MEMORY[0x1E69E7CC8];
    }

    v56[0] = v47;
    sub_19A33E0F0(v50, 1, v56);
    if (!v3)
    {
      v49 = swift_allocObject();
      result = __swift_destroy_boxed_opaque_existential_0Tm(a1);
      *(v49 + 16) = v56[0];
      v12 = v49 | 0xA000000000000000;
      goto LABEL_54;
    }

LABEL_56:
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v45 = swift_getDynamicType();
    sub_19A3389C4();
    swift_allocError();
    *v46 = v45;
    *(v46 + 8) = 0;
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  return result;
}

unint64_t sub_19A3389C4()
{
  result = qword_1EAFA0218;
  if (!qword_1EAFA0218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0218);
  }

  return result;
}

uint64_t ForensicsReport.append(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_19A334618(a1, v10);
  result = JSONValue.init(_:)(v10, &v11);
  if (!v4)
  {
    v8 = v11;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10[0] = *(v3 + 8);
    sub_19A33D400(v8, a2, a3, isUniquelyReferenced_nonNull_native);

    *(v3 + 8) = v10[0];
  }

  return result;
}

double ForensicsReport.value(forKey:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (*(*(v3 + 8) + 16) && (sub_19A31F6BC(a1, a2), (v5 & 1) != 0))
  {
    JSONValue.value.getter(a3);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

void JSONValue.value.getter(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *v1 >> 61;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v15 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      *(a1 + 24) = MEMORY[0x1E69E6370];
      *a1 = v15;
    }

    else if (v3 == 4)
    {
      v7 = *(*((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) + 16);
      v8 = MEMORY[0x1E69E7CC0];
      if (v7)
      {
        v41 = MEMORY[0x1E69E7CC0];

        v9 = sub_19A3227A0(0, v7, 0);
        v10 = 32;
        v8 = v41;
        do
        {
          JSONValue.value.getter(v42, v9);
          v12 = *(v41 + 16);
          v11 = *(v41 + 24);
          if (v12 >= v11 >> 1)
          {
            sub_19A3227A0((v11 > 1), v12 + 1, 1);
          }

          *(v41 + 16) = v12 + 1;
          v9 = sub_19A2E10E0(v42, (v41 + 32 * v12 + 32));
          v10 += 8;
          --v7;
        }

        while (v7);
      }

      *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0208);
      *a1 = v8;
    }

    else
    {
      v17 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FF20);
      v18 = sub_19A573BBC();
      v19 = v18;
      v20 = v17 + 64;
      v21 = 1 << *(v17 + 32);
      v22 = -1;
      if (v21 < 64)
      {
        v22 = ~(-1 << v21);
      }

      v23 = v22 & *(v17 + 64);
      v24 = (v21 + 63) >> 6;
      v39 = v18 + 64;
      v40 = v17;

      v25 = 0;
      if (v23)
      {
        while (1)
        {
          v26 = __clz(__rbit64(v23));
          v23 &= v23 - 1;
LABEL_27:
          v29 = v26 | (v25 << 6);
          v30 = (*(v40 + 48) + 16 * v29);
          v31 = *v30;
          v32 = v30[1];

          JSONValue.value.getter(v42, v33);
          *(v39 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
          v34 = (v19[6] + 16 * v29);
          *v34 = v31;
          v34[1] = v32;
          sub_19A2E10E0(v42, (v19[7] + 32 * v29));
          v35 = v19[2];
          v36 = __OFADD__(v35, 1);
          v37 = v35 + 1;
          if (v36)
          {
            break;
          }

          v19[2] = v37;
          if (!v23)
          {
            goto LABEL_22;
          }
        }
      }

      else
      {
LABEL_22:
        v27 = v25;
        while (1)
        {
          v25 = v27 + 1;
          if (__OFADD__(v27, 1))
          {
            break;
          }

          if (v25 >= v24)
          {

            *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0210);
            *a1 = v19;
            return;
          }

          v28 = *(v20 + 8 * v25);
          ++v27;
          if (v28)
          {
            v26 = __clz(__rbit64(v28));
            v23 = (v28 - 1) & v28;
            goto LABEL_27;
          }
        }

        __break(1u);
      }

      __break(1u);
    }
  }

  else if (v3)
  {
    v4 = v2 & 0x1FFFFFFFFFFFFFFFLL;
    if (v3 == 1)
    {
      v5 = *(v4 + 16);
      *(a1 + 24) = MEMORY[0x1E69E6530];
      *a1 = v5;
    }

    else
    {
      v16 = *(v4 + 16);
      *(a1 + 24) = MEMORY[0x1E69E63B0];
      *a1 = v16;
    }
  }

  else
  {
    v14 = *(v2 + 16);
    v13 = *(v2 + 24);
    *(a1 + 24) = MEMORY[0x1E69E6158];
    *a1 = v14;
    *(a1 + 8) = v13;
  }
}

uint64_t ForensicsReport.value(forKeyPath:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v6 = *(v3 + 8);
  v45[0] = 46;
  v45[1] = 0xE100000000000000;
  v44 = v45;

  result = sub_19A33C9C8(0x7FFFFFFFFFFFFFFFLL, 1, sub_19A33E48C, v43, a1, a2, v7);
  v9 = result;
  v10 = *(result + 16);
  if (v10)
  {
    v11 = 0;
    v42 = result + 32;
    v12 = 0xF000000000000007;
    v13 = 1;
    while (v11 < *(v9 + 16))
    {
      v14 = (v42 + 32 * v11);
      v15 = v14[2];
      v16 = v14[3];
      v18 = *v14;
      v17 = v14[1];

      v19 = MEMORY[0x19A900970](v18, v17, v15, v16);
      v21 = v20;

      if (!*(v6 + 16))
      {
        goto LABEL_20;
      }

      v22 = sub_19A31F6BC(v19, v21);
      v24 = v23;

      if ((v24 & 1) == 0)
      {
        goto LABEL_22;
      }

      v25 = v11 + 1;
      v26 = *(*(v6 + 56) + 8 * v22);
      v27 = v26 & 0x1FFFFFFFFFFFFFFFLL;

      result = sub_19A33E4E4(v12);
      if (v26 >> 61 != 5)
      {
        if (v25 == v10)
        {
          goto LABEL_15;
        }

        if (v25 >= *(v9 + 16))
        {
          break;
        }

        if (v13 == v25)
        {
          sub_19A33E4E4(v26);

          goto LABEL_16;
        }

        v28 = (v42 + 32 * v25);
        v29 = v28[2];
        v30 = v28[3];
        v32 = *v28;
        v31 = v28[1];

        v33 = MEMORY[0x19A900970](v32, v31, v29, v30);
        v35 = v34;

        if (!*(v6 + 16))
        {
          v12 = v26;
LABEL_20:
          v40 = a3;

          goto LABEL_23;
        }

        v36 = sub_19A31F6BC(v33, v35);
        v38 = v37;

        if ((v38 & 1) == 0)
        {
          v12 = v26;
LABEL_22:
          v40 = a3;
LABEL_23:

          result = sub_19A33E4E4(v12);
          *v40 = 0u;
          v40[1] = 0u;
          return result;
        }

        v25 = v11 + 2;
        v39 = *(*(v6 + 56) + 8 * v36);
        v27 = v39 & 0x1FFFFFFFFFFFFFFFLL;

        sub_19A33E4E4(v26);
        v26 = v39;
      }

      v6 = *(v27 + 16);

      v13 = v25 + 1;
      v12 = v26;
      v11 = v25;
      if (v25 == v10)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v26 = 0xF000000000000007;
LABEL_15:

    if ((~v26 & 0xF000000000000007) != 0)
    {
      v45[0] = v26;
      JSONValue.value.getter(a3);
      return sub_19A33E4E4(v26);
    }

    else
    {
LABEL_16:
      *a3 = 0u;
      a3[1] = 0u;
    }
  }

  return result;
}

uint64_t ForensicsReport.value<A>(_:forKeyPath:)@<X0>(uint64_t a1@<X1>, unint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  ForensicsReport.value(forKeyPath:)(a1, a2, &v8);
  if (v9)
  {
    sub_19A2E10E0(&v8, v10);
    sub_19A2E10E0(v10, &v8);
    v6 = swift_dynamicCast();
    return (*(*(a3 - 8) + 56))(a4, v6 ^ 1u, 1, a3);
  }

  else
  {
    sub_19A2F3FA0(&v8, &qword_1EAFA0228);
    return (*(*(a3 - 8) + 56))(a4, 1, 1, a3);
  }
}

uint64_t static ForensicsReport.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if ((sub_19A3376AC(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_19A3392D0(v2, v3);
}

uint64_t sub_19A3392D0(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    v16 = *(*(v3 + 56) + 8 * v12);

    if (!v14)
    {
      return 1;
    }

    v22 = v16;
    v17 = sub_19A31F6BC(v15, v14);
    v19 = v18;

    if ((v19 & 1) == 0)
    {

      return 0;
    }

    v21 = *(*(a2 + 56) + 8 * v17);

    v20 = _s16VisualGeneration9JSONValueO2eeoiySbAC_ACtFZ_0(&v21, &v22);

    if ((v20 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
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

uint64_t sub_19A339458(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 64);
  v7 = (v4 + 63) >> 6;
  while (v6)
  {
    v8 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
LABEL_13:
    v11 = v8 | (v3 << 6);
    v12 = *(*(v2 + 56) + 8 * v11);
    v13 = *(*(v2 + 48) + v11);

    sub_19A31F734(v13);
    if ((v14 & 1) == 0)
    {

      return 0;
    }

    v16 = sub_19A3395A0(v15, v12);

    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  v9 = v3;
  while (1)
  {
    v3 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v3 >= v7)
    {
      return 1;
    }

    v10 = *(v2 + 64 + 8 * v3);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v6 = (v10 - 1) & v10;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_19A3395A0(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = result + 64;
  v6 = 1 << *(result + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(result + 64);
  v9 = (v6 + 63) >> 6;
  v30 = v9;
  if (v8)
  {
    do
    {
      v10 = __clz(__rbit64(v8));
      v31 = (v8 - 1) & v8;
LABEL_12:
      v13 = v10 | (v4 << 6);
      v14 = *(*(v3 + 48) + v13);
      v15 = *(*(v3 + 56) + 8 * v13);

      if (!v15)
      {
        return 1;
      }

      v16 = sub_19A31F7F8(v14);
      if ((v17 & 1) == 0 || (v18 = *(*(a2 + 56) + 8 * v16), v19 = *(v18 + 16), v19 != *(v15 + 16)))
      {
LABEL_38:

        return 0;
      }

      if (v19)
      {
        v20 = v18 == v15;
      }

      else
      {
        v20 = 1;
      }

      if (!v20)
      {
        v28 = v5;
        v29 = v3;
        sub_19A571B9C();

        v21 = 0;
        v22 = 0;
        v33 = v18;
        v34 = v15;
        v32 = v19;
        while (v22 < *(v18 + 16))
        {
          if (v22 >= *(v15 + 16))
          {
            goto LABEL_42;
          }

          v23 = *(v18 + v21 + 40);
          v24 = *(v18 + v21 + 48);
          v25 = *(v15 + v21 + 40);
          v26 = *(v15 + v21 + 48);

          if ((sub_19A571B7C() & 1) == 0)
          {
LABEL_36:

            return 0;
          }

          if (v24)
          {
            if (!v26)
            {
              goto LABEL_36;
            }

            if (v23 == v25 && v24 == v26)
            {
            }

            else
            {
              v27 = sub_19A573F1C();

              if ((v27 & 1) == 0)
              {
LABEL_37:

                goto LABEL_38;
              }
            }
          }

          else
          {

            if (v26)
            {
              goto LABEL_37;
            }
          }

          ++v22;
          v21 += 24;
          v18 = v33;
          v15 = v34;
          if (v32 == v22)
          {

            v3 = v29;
            v5 = v28;
            goto LABEL_20;
          }
        }

        goto LABEL_41;
      }

LABEL_20:

      v9 = v30;
      v8 = v31;
    }

    while (v31);
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return 1;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v31 = (v12 - 1) & v12;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_19A3398B0()
{
  if (*v0)
  {
    return 0x746E65746E6F63;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_19A3398E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v5 || (sub_19A573F1C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_19A573F1C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_19A3399C0(uint64_t a1)
{
  v2 = sub_19A33E4FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A3399FC(uint64_t a1)
{
  v2 = sub_19A33E4FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ForensicsReport.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0230);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v10 - v6;
  v8 = *v1;
  v10[0] = *(v1 + 1);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A33E4FC();
  sub_19A5741AC();
  v13 = v8;
  v12 = 0;
  sub_19A33E550();
  sub_19A573E7C();
  if (!v2)
  {
    v10[1] = v10[0];
    v11 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0240);
    sub_19A33E64C(&qword_1EAFA0248, sub_19A33E5A4);
    sub_19A573E7C();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t ForensicsReport.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0258);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A33E4FC();
  sub_19A57417C();
  if (!v2)
  {
    v14 = 0;
    sub_19A33E5F8();
    sub_19A573D4C();
    v9 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0240);
    v13 = 1;
    sub_19A33E64C(&qword_1EAF9E908, sub_19A33E6D0);
    sub_19A573D4C();
    (*(v6 + 8))(v8, v5);
    v10 = v12[1];
    *a2 = v9;
    *(a2 + 8) = v10;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t sub_19A339E78(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if ((sub_19A3376AC(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_19A3392D0(v2, v3);
}

uint64_t ForensicRecorder.__allocating_init()()
{
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0260);
  v1 = swift_allocObject();
  *(v1 + 24) = 0;
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  *(v0 + 16) = v1;
  return v0;
}

uint64_t ForensicRecorder.init()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0260);
  v1 = swift_allocObject();
  *(v1 + 24) = 0;
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  *(v0 + 16) = v1;
  return v0;
}

Swift::Void __swiftcall ForensicRecorder.record(_:)(VisualGeneration::ForensicsReport_optional a1)
{
  if (*(*&a1.value.type + 8))
  {
    v2 = *(v1 + 16);
    MEMORY[0x1EEE9AC00](*&a1.value.type);
    os_unfair_lock_lock((v2 + 24));
    sub_19A33E724((v2 + 16));
    os_unfair_lock_unlock((v2 + 24));
  }
}

uint64_t sub_19A33A018(uint64_t *a1, char a2, uint64_t a3)
{
  v6 = *a1;

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_19A31DB70(0, *(v6 + 16) + 1, 1, v6);
    v6 = result;
  }

  v9 = *(v6 + 16);
  v8 = *(v6 + 24);
  if (v9 >= v8 >> 1)
  {
    result = sub_19A31DB70((v8 > 1), v9 + 1, 1, v6);
    v6 = result;
  }

  *(v6 + 16) = v9 + 1;
  v10 = v6 + 16 * v9;
  *(v10 + 32) = a2;
  *(v10 + 40) = a3;
  *a1 = v6;
  return result;
}

Swift::Void __swiftcall ForensicRecorder.record(_:)(Swift::OpaquePointer a1)
{
  v2 = *(v1 + 16);
  os_unfair_lock_lock(v2 + 6);
  sub_19A33E744();
  os_unfair_lock_unlock(v2 + 6);
}

uint64_t ForensicRecorder.reports.getter()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);

  os_unfair_lock_unlock((v1 + 24));
  return v2;
}

uint64_t (*ForensicRecorder.reporter.getter())()
{
  swift_allocObject();
  swift_weakInit();
  return sub_19A33E77C;
}

uint64_t sub_19A33A1C8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 16);
    MEMORY[0x1EEE9AC00](result);

    os_unfair_lock_lock((v1 + 24));
    sub_19A33F1B0((v1 + 16));
    os_unfair_lock_unlock((v1 + 24));
  }

  return result;
}

uint64_t ForensicRecorder.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t JSONValue.encode(to:)(void *a1)
{
  v2 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A57418C();
  v3 = v2 >> 61;
  if ((v2 >> 61) > 2)
  {
    if (v3 == 3)
    {
      __swift_mutable_project_boxed_opaque_existential_1(v5, v6);
      sub_19A573FAC();
    }

    else
    {
      if (v3 == 4)
      {
        __swift_mutable_project_boxed_opaque_existential_1(v5, v6);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0268);
        sub_19A33E7D4(&qword_1EAFA0270, sub_19A33E5A4);
      }

      else
      {
        __swift_mutable_project_boxed_opaque_existential_1(v5, v6);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0240);
        sub_19A33E64C(&qword_1EAFA0248, sub_19A33E5A4);
      }

      sub_19A573FDC();
    }
  }

  else if (v3)
  {
    if (v3 == 1)
    {
      __swift_mutable_project_boxed_opaque_existential_1(v5, v6);
      sub_19A573FCC();
    }

    else
    {
      __swift_mutable_project_boxed_opaque_existential_1(v5, v6);
      sub_19A573FBC();
    }
  }

  else
  {
    __swift_mutable_project_boxed_opaque_existential_1(v5, v6);

    sub_19A573F9C();
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v5);
}

uint64_t JSONValue.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A57415C();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v10, v10[3]);
    v5 = sub_19A573F4C();
    v7 = v6;
    v8 = swift_allocObject();
    *(v8 + 16) = v5;
    *(v8 + 24) = v7;
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    *a2 = v8;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t sub_19A33A978(uint64_t a1)
{
  v1 = nullsub_2(a1);

  return v1;
}

uint64_t static JSONKeyValueConvertible.jsonKey(from:)(uint64_t a1)
{
  v1 = nullsub_2(a1);

  return v1;
}

uint64_t sub_19A33A9E8()
{
  v0 = sub_19A572E7C();
  if (v0)
  {
    v1 = v0;
    v18 = MEMORY[0x1E69E7CC0];
    result = sub_19A322700(0, v0 & ~(v0 >> 63), 0);
    if ((v1 & 0x8000000000000000) == 0)
    {
      v3 = 0;
      if (("Unable to encode image." & 0x2000000000000000) != 0)
      {
        v4 = ("Unable to encode image." >> 40) & 0xF0000;
      }

      else
      {
        v4 = 1703936;
      }

      v17 = v1;
      while (!__OFADD__(v3++, 1))
      {
        v6 = sub_19A572F6C();
        v8 = v7;
        if (v4)
        {
          v9 = 15;
          while (sub_19A572F6C() != v6 || v10 != v8)
          {
            v11 = sub_19A573F1C();

            if (v11)
            {
              goto LABEL_16;
            }

            v9 = sub_19A572E8C();
            if ((v4 ^ v9) < 0x4000)
            {
              goto LABEL_21;
            }
          }

LABEL_16:
          if (v9 >= 0x4000)
          {
            sub_19A572E9C();
            result = sub_19A572F6C();
          }

          else
          {
            result = sub_19A33AC44(0xD00000000000001ALL, 0x800000019A596B90);
            if (!v12)
            {
              goto LABEL_27;
            }
          }

          v6 = result;
          v13 = v12;

          v8 = v13;
        }

LABEL_21:
        v15 = *(v18 + 16);
        v14 = *(v18 + 24);
        if (v15 >= v14 >> 1)
        {
          sub_19A322700((v14 > 1), v15 + 1, 1);
        }

        *(v18 + 16) = v15 + 1;
        v16 = v18 + 16 * v15;
        *(v16 + 32) = v6;
        *(v16 + 40) = v8;
        result = sub_19A572E8C();
        if (v3 == v17)
        {
          goto LABEL_24;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_27:
    __break(1u);
  }

  else
  {
LABEL_24:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA02B0);
    sub_19A33F144();
    return sub_19A572F7C();
  }

  return result;
}

uint64_t sub_19A33AC44(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  sub_19A572E9C();
  return sub_19A572F6C();
}

uint64_t sub_19A33ACC4@<X0>(unint64_t *a1@<X8>)
{
  swift_getObjectType();
  v3 = [v1 label];
  if (v3)
  {
    v4 = v3;
    v5 = sub_19A572CFC();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = [v1 label];
  if (v8)
  {
    v9 = v8;

    sub_19A572CFC();

    v5 = sub_19A33A9E8();
    v7 = v10;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA02A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_19A5792A0;
  *(inited + 32) = 1701208435;
  *(inited + 40) = 0xE400000000000000;
  v12 = [v1 safe];
  v13 = MEMORY[0x1E69E6370];
  *(inited + 48) = v12;
  *(inited + 72) = v13;
  *(inited + 80) = 0x6C6562616CLL;
  *(inited + 88) = 0xE500000000000000;
  if (v7)
  {
    v14 = MEMORY[0x1E69E6158];
  }

  else
  {
    v5 = 0;
    v14 = 0;
    *(inited + 112) = 0;
  }

  *(inited + 96) = v5;
  *(inited + 104) = v7;
  *(inited + 120) = v14;
  *(inited + 128) = 0x65726F6373;
  *(inited + 136) = 0xE500000000000000;
  v15 = [v1 score];
  if (v15)
  {
    v16 = v15;
    [v15 doubleValue];
    v18 = v17;

    v19 = MEMORY[0x1E69E63B0];
  }

  else
  {
    v19 = 0;
    *(inited + 152) = 0;
    *(inited + 160) = 0;
    v18 = 0;
  }

  *(inited + 144) = v18;
  *(inited + 168) = v19;
  v20 = sub_19A330240(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA00C8);
  swift_arrayDestroy();
  v21 = swift_allocObject();
  v22 = sub_19A33B2D0(v20);

  *(v21 + 16) = v22;
  *a1 = v21 | 0xA000000000000000;
  return result;
}

uint64_t sub_19A33AF34(uint64_t a1)
{
  v1 = a1;
  v38 = MEMORY[0x1E69E7CC8];
  v45 = MEMORY[0x1E69E7CC8];
  v2 = a1 + 64;
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

  v8 = 0;
  v40 = v6;
  v41 = result;
  v39 = v2;
  while (1)
  {
LABEL_6:
    v9 = v8;
    if (!v5)
    {
      goto LABEL_8;
    }

    while (1)
    {
      v8 = v9;
LABEL_11:
      v10 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v11 = v10 | (v8 << 6);
      v12 = (*(v1 + 56) + 40 * v11);
      v14 = *v12;
      v13 = v12[1];
      v16 = v12[2];
      v15 = v12[3];
      v17 = v12[4];
      if (!v15)
      {
        result = sub_19A331C90(*v12, v12[1], v12[2], 0);
        goto LABEL_6;
      }

      v18 = v1;
      v19 = v17;
      v20 = (*(v18 + 48) + 16 * v11);
      v22 = *v20;
      v21 = v20[1];
      v43[3] = &type metadata for ResolvedImage;
      v23 = swift_allocObject();
      v43[0] = v23;
      *(v23 + 16) = v14;
      *(v23 + 24) = v13;
      *(v23 + 32) = v16;
      *(v23 + 40) = v15;
      *(v23 + 48) = v19;
      sub_19A331BEC(v14, v13, v16, v15);
      sub_19A331BEC(v14, v13, v16, v15);
      sub_19A331BEC(v14, v13, v16, v15);

      JSONValue.init(_:)(v43, &v44);
      if (!v42)
      {
        break;
      }

      sub_19A331C90(v14, v13, v16, v15);

      result = sub_19A331C90(v14, v13, v16, v15);
      v42 = 0;
      v9 = v8;
      v6 = v40;
      v1 = v41;
      v2 = v39;
      if (!v5)
      {
LABEL_8:
        while (1)
        {
          v8 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            break;
          }

          if (v8 >= v6)
          {

            return v38;
          }

          v5 = *(v2 + 8 * v8);
          ++v9;
          if (v5)
          {
            goto LABEL_11;
          }
        }

        __break(1u);
        goto LABEL_30;
      }
    }

    v42 = 0;
    sub_19A331C90(v14, v13, v16, v15);
    v37 = v44;
    v24 = v38;
    v25 = *(v38 + 16);
    if (*(v38 + 24) <= v25)
    {
      sub_19A329B58(v25 + 1, 1);
      v24 = v45;
    }

    v38 = v24;
    sub_19A5740BC();
    sub_19A572E4C();
    result = sub_19A57410C();
    v26 = v38 + 64;
    v27 = -1 << *(v38 + 32);
    v28 = result & ~v27;
    v29 = v28 >> 6;
    if (((-1 << v28) & ~*(v38 + 64 + 8 * (v28 >> 6))) == 0)
    {
      break;
    }

    v30 = __clz(__rbit64((-1 << v28) & ~*(v38 + 64 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
    v1 = v41;
    v31 = v22;
LABEL_27:
    *(v26 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
    v36 = (*(v38 + 48) + 16 * v30);
    *v36 = v31;
    v36[1] = v21;
    *(*(v38 + 56) + 8 * v30) = v37;
    ++*(v38 + 16);
    result = sub_19A331C90(v14, v13, v16, v15);
    v2 = v39;
    v6 = v40;
  }

  v32 = 0;
  v33 = (63 - v27) >> 6;
  v1 = v41;
  v31 = v22;
  while (++v29 != v33 || (v32 & 1) == 0)
  {
    v34 = v29 == v33;
    if (v29 == v33)
    {
      v29 = 0;
    }

    v32 |= v34;
    v35 = *(v26 + 8 * v29);
    if (v35 != -1)
    {
      v30 = __clz(__rbit64(~v35)) + (v29 << 6);
      goto LABEL_27;
    }
  }

LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_19A33B2D0(uint64_t a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7CC8];
  v38 = MEMORY[0x1E69E7CC8];
  v5 = a1 + 64;
  v6 = 1 << *(a1 + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  if (!v8)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    while (1)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v14 = v13 | (v11 << 6);
      v15 = (*(a1 + 48) + 16 * v14);
      v17 = *v15;
      v16 = v15[1];
      sub_19A33F0D4(*(a1 + 56) + 32 * v14, v37);
      *&v36 = v17;
      *(&v36 + 1) = v16;
      v33 = v36;
      v34 = v37[0];
      v35 = v37[1];
      sub_19A33F0D4(&v34, &v30);
      if (*(&v31[0] + 1))
      {
        break;
      }

      sub_19A2F3FA0(&v30, &qword_1EAFA0228);
LABEL_7:
      result = sub_19A2F3FA0(&v33, &qword_1EAFA02A8);
      if (!v8)
      {
        goto LABEL_8;
      }
    }

    sub_19A2E10E0(&v30, v29);
    sub_19A334618(v29, &v30);

    JSONValue.init(_:)(&v30, &v32);
    if (v2)
    {

      __swift_destroy_boxed_opaque_existential_0Tm(v29);
      v2 = 0;
      goto LABEL_7;
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v29);
    v39 = v32;
    v31[0] = v34;
    v31[1] = v35;
    v30 = v33;
    v18 = *(v4 + 16);
    if (*(v4 + 24) <= v18)
    {
      sub_19A329B58(v18 + 1, 1);
      v4 = v38;
    }

    v19 = v30;
    sub_19A5740BC();
    sub_19A572E4C();
    result = sub_19A57410C();
    v20 = v4 + 64;
    v21 = -1 << *(v4 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v4 + 64 + 8 * (v22 >> 6))) == 0)
    {
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
        v28 = *(v20 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v4 + 64 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v20 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    *(*(v4 + 48) + 16 * v24) = v19;
    *(*(v4 + 56) + 8 * v24) = v39;
    ++*(v4 + 16);
    result = sub_19A2F3FA0(v31, &qword_1EAFA0228);
  }

  while (v8);
LABEL_8:
  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v9)
    {

      return v4;
    }

    v8 = *(v5 + 8 * v12);
    ++v11;
    if (v8)
    {
      v11 = v12;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_19A33B630@<X0>(unint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA02A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_19A576E20;
  *(inited + 32) = 1701208435;
  *(inited + 40) = 0xE400000000000000;
  v4 = [v1 safe];
  v5 = MEMORY[0x1E69E6370];
  *(inited + 48) = v4;
  *(inited + 72) = v5;
  *(inited + 80) = 0x65726F6373;
  *(inited + 88) = 0xE500000000000000;
  v6 = [v1 score];
  if (v6)
  {
    v7 = v6;
    [v6 doubleValue];
    v9 = v8;

    v10 = MEMORY[0x1E69E63B0];
  }

  else
  {
    v10 = 0;
    *(inited + 104) = 0;
    *(inited + 112) = 0;
    v9 = 0;
  }

  *(inited + 96) = v9;
  *(inited + 120) = v10;
  v11 = sub_19A330240(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA00C8);
  swift_arrayDestroy();
  v12 = swift_allocObject();
  v13 = sub_19A33B2D0(v11);

  *(v12 + 16) = v13;
  *a1 = v12 | 0xA000000000000000;
  return result;
}

uint64_t Concept.jsonValue.getter@<X0>(unint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for NamedEntityData(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v28[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for Concept(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_19A33EE38(v2, v9, type metadata accessor for Concept);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v11 = *v9;
    v12 = v9[1];
    if (EnumCaseMultiPayload)
    {
      v13 = swift_allocObject();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA00E8);
      inited = swift_initStackObject();
      v15 = inited;
      *(inited + 16) = xmmword_19A576E10;
      *(inited + 32) = 0x696A6F6D65;
      v16 = inited + 32;
      v17 = 0xE500000000000000;
    }

    else
    {
      v13 = swift_allocObject();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA00E8);
      inited = swift_initStackObject();
      v15 = inited;
      *(inited + 16) = xmmword_19A576E10;
      *(inited + 32) = 1853189998;
      v16 = inited + 32;
      v17 = 0xE400000000000000;
    }

    goto LABEL_10;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v18 = swift_allocObject();
    *(v18 + 16) = sub_19A33013C(MEMORY[0x1E69E7CC0]);
    *a1 = v18 | 0xA000000000000000;
    return sub_19A33EEA0(v9, type metadata accessor for Concept);
  }

  if (EnumCaseMultiPayload == 3)
  {
    v11 = *v9;
    v12 = v9[1];
    v13 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA00E8);
    inited = swift_initStackObject();
    v15 = inited;
    *(inited + 16) = xmmword_19A576E10;
    *(inited + 32) = 0x45636972656E6567;
    v16 = inited + 32;
    v17 = 0xED0000797469746ELL;
LABEL_10:
    *(inited + 40) = v17;
    v26 = swift_allocObject();
    *(v26 + 16) = v11;
    *(v26 + 24) = v12;
    *(v15 + 48) = v26;
    v27 = sub_19A33013C(v15);
    swift_setDeallocating();
    result = sub_19A2F3FA0(v16, &qword_1EAFA00F0);
    *(v13 + 16) = v27;
    v25 = v13 | 0xA000000000000000;
    goto LABEL_11;
  }

  sub_19A33EF00(v9, v6, type metadata accessor for NamedEntityData);
  v20 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA00E8);
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_19A576E10;
  *(v21 + 32) = 0x746E4564656D616ELL;
  *(v21 + 40) = 0xEB00000000797469;
  v22 = swift_allocObject();
  v23 = v6[1];
  *(v22 + 16) = *v6;
  *(v22 + 24) = v23;
  *(v21 + 48) = v22;

  v24 = sub_19A33013C(v21);
  swift_setDeallocating();
  sub_19A2F3FA0(v21 + 32, &qword_1EAFA00F0);
  result = sub_19A33EEA0(v6, type metadata accessor for NamedEntityData);
  *(v20 + 16) = v24;
  v25 = v20 | 0xA000000000000000;
LABEL_11:
  *a1 = v25;
  return result;
}

void sub_19A33BBE4(unint64_t *a1@<X8>)
{
  v108 = a1;
  v104 = sub_19A570A9C();
  MEMORY[0x1EEE9AC00](v104);
  v103 = &v99 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for GenerationRecipe(0);
  MEMORY[0x1EEE9AC00](v3);
  v106 = &v99 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = _s15AssembledPromptV12PromptInputsVMa(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v107 = &v99 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0288);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v112 = &v99 - v8;
  v111 = type metadata accessor for AugmentedPrompt();
  v110 = *(v111 - 8);
  v9 = MEMORY[0x1EEE9AC00](v111);
  v105 = &v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v109 = &v99 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v102 = &v99 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0290);
  inited = swift_initStackObject();
  *(inited + 32) = 0xD000000000000014;
  *(inited + 16) = xmmword_19A5792A0;
  *(inited + 40) = 0x800000019A5956F0;
  v15 = (v1 + *(v3 + 84));
  v16 = v15[1];
  v18 = v15[2];
  v17 = v15[3];
  v19 = v15[4];
  v117 = *v15;
  *(inited + 48) = v117;
  *(inited + 56) = v16;
  v114 = v16;
  *(inited + 64) = v18;
  *(inited + 72) = v17;
  *(inited + 80) = v19;
  strcpy((inited + 88), "doiBaseImage");
  *(inited + 101) = 0;
  *(inited + 102) = -5120;
  v115 = v3;
  v20 = *(v3 + 92);
  v116 = v1;
  v21 = (v1 + v20);
  v22 = *(v1 + v20 + 24);
  if (v22)
  {
    v23 = *(v21 + 4);
    v24 = *(v21 + 4);
    v113 = *v21;
    v25 = v22;

    v26 = v113;
  }

  else
  {
    v24 = 0;
    v23 = 0;
    v26 = 0uLL;
  }

  *(inited + 104) = v26;
  *(inited + 120) = v24;
  *(inited + 128) = v22;
  *(inited + 136) = v23;
  strcpy((inited + 144), "doiSketchMask");
  *(inited + 158) = -4864;
  if (v22)
  {
    v27 = *(v21 + 8);
    v28 = *(v21 + 9);
    v22 = *(v21 + 14);
    v113 = *(v21 + 40);
    v29 = v27;

    v30 = v113;
  }

  else
  {
    v27 = 0;
    v28 = 0;
    v30 = 0uLL;
  }

  *(inited + 160) = v30;
  *(inited + 176) = v22;
  *(inited + 184) = v27;
  *(inited + 192) = v28;
  sub_19A331BEC(v117, v114, v18, v17);
  v31 = sub_19A32FFF8(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0298);
  swift_arrayDestroy();
  v32 = sub_19A33AF34(v31);

  v33 = v116;
  v34 = *(sub_19A39B584() + 16);

  if (!v34)
  {
LABEL_19:
    v57 = v112;
    v58 = v111;
    v59 = v109;
    sub_19A36CA0C(v109);
    v60 = v106;
    sub_19A33EE38(v33, v106, type metadata accessor for GenerationRecipe);
    v61 = v105;
    sub_19A33EE38(v59, v105, type metadata accessor for AugmentedPrompt);
    v62 = v107;
    sub_19A36D454(v60, v61, v107);
    sub_19A36D724(v62, 0, v57);
    sub_19A33EEA0(v62, _s15AssembledPromptV12PromptInputsVMa);
    sub_19A33EEA0(v59, type metadata accessor for AugmentedPrompt);
    (*(v110 + 56))(v57, 0, 1, v58);
    v90 = v102;
    sub_19A33EF00(v57, v102, type metadata accessor for AugmentedPrompt);
    v91 = swift_allocObject();
    sub_19A570A4C();
    sub_19A33EF68(&qword_1ED825330, MEMORY[0x1E6968678]);
    *(v91 + 16) = sub_19A572F7C();
    *(v91 + 24) = v92;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v118[0] = v32;
    sub_19A33D400(v91, 0x656C626D65737361, 0xEF74706D6F725064, isUniquelyReferenced_nonNull_native);
    v94 = v118[0];
    v95 = swift_allocObject();
    sub_19A570BEC();
    sub_19A33EF68(&qword_1ED825300, MEMORY[0x1E6968848]);
    *(v95 + 16) = sub_19A570D6C();
    *(v95 + 24) = v96;
    v97 = swift_isUniquelyReferenced_nonNull_native();
    v118[0] = v94;
    sub_19A33D400(v95, 0xD000000000000018, 0x800000019A596B50, v97);
    sub_19A33EEA0(v90, type metadata accessor for AugmentedPrompt);
    v98 = v118[0];
    v63 = *(v33 + *(v115 + 24));
    v64 = *(v63 + 16);
    v65 = MEMORY[0x1E69E7CC0];
    if (v64)
    {
      v114 = v118[0];
      v118[0] = MEMORY[0x1E69E7CC0];
      sub_19A3226E0(0, v64, 0);
      v65 = v118[0];
      v66 = (v63 + 32);
      do
      {
        v68 = *v66++;
        v67 = v68;
        v69 = v68 == 5;
        v70 = 0x6C616E7265747865;
        if (v68 == 5)
        {
          v70 = 0xD000000000000013;
        }

        v71 = 0xE800000000000000;
        if (v69)
        {
          v71 = 0x800000019A595400;
        }

        v72 = 0x686374656B73;
        if (v67 != 3)
        {
          v72 = 0x747241656E696CLL;
        }

        v73 = 0xE600000000000000;
        if (v67 != 3)
        {
          v73 = 0xE700000000000000;
        }

        if (v67 <= 4)
        {
          v70 = v72;
          v71 = v73;
        }

        v74 = 0x696A6F6D65;
        if (v67 != 1)
        {
          v74 = 0x61727473756C6C69;
        }

        v75 = 0xE500000000000000;
        if (v67 != 1)
        {
          v75 = 0xEC0000006E6F6974;
        }

        if (!v67)
        {
          v74 = 0x6F6974616D696E61;
          v75 = 0xE90000000000006ELL;
        }

        if (v67 <= 2)
        {
          v76 = v74;
        }

        else
        {
          v76 = v70;
        }

        if (v67 <= 2)
        {
          v77 = v75;
        }

        else
        {
          v77 = v71;
        }

        v78 = swift_allocObject();
        *(v78 + 16) = v76;
        *(v78 + 24) = v77;
        v118[0] = v65;
        v80 = *(v65 + 16);
        v79 = *(v65 + 24);
        if (v80 >= v79 >> 1)
        {
          v117 = v78;
          sub_19A3226E0((v79 > 1), v80 + 1, 1);
          v78 = v117;
          v65 = v118[0];
        }

        *(v65 + 16) = v80 + 1;
        *(v65 + 8 * v80 + 32) = v78;
        --v64;
      }

      while (v64);
      v33 = v116;
      v98 = v114;
    }

    v81 = swift_allocObject();
    *(v81 + 16) = v65;
    v82 = swift_isUniquelyReferenced_nonNull_native();
    v118[0] = v98;
    sub_19A33D400(v81 | 0x8000000000000000, 0x7974536567616D69, 0xEB0000000073656CLL, v82);
    v83 = v118[0];
    v84 = v33 + *(v115 + 44);
    if ((*(v84 + 4) & 1) == 0)
    {
      v85 = *v84;
      v86 = swift_allocObject();
      *(v86 + 16) = v85;
      v87 = swift_isUniquelyReferenced_nonNull_native();
      v118[0] = v83;
      sub_19A33D400(v86 | 0x4000000000000000, 0xD000000000000010, 0x800000019A595830, v87);
      v83 = v118[0];
    }

    v88 = v108;
    v89 = swift_allocObject();
    *(v89 + 16) = v83;
    *v88 = v89 | 0xA000000000000000;
    return;
  }

  v114 = v32;
  v35 = sub_19A39B584();
  v36 = v35;
  v37 = *(v35 + 16);
  if (!v37)
  {
    *&v113 = MEMORY[0x1E69E7CC0];
LABEL_18:
    v54 = swift_allocObject();

    *(v54 + 16) = v113;
    v55 = v114;
    v56 = swift_isUniquelyReferenced_nonNull_native();
    v118[0] = v55;
    sub_19A33D400(v54 | 0x8000000000000000, 0xD000000000000018, 0x800000019A596B30, v56);
    v32 = v118[0];
    v33 = v116;
    goto LABEL_19;
  }

  v38 = 0;
  v39 = v35 + 64;
  *&v113 = MEMORY[0x1E69E7CC0];
  v117 = v37;
  v100 = v37 - 1;
  v101 = v35 + 64;
  while (1)
  {
    v40 = (v39 + 40 * v38);
    v41 = v38;
    if (v38 >= *(v36 + 16))
    {
      break;
    }

    v42 = *(v40 - 1);
    v43 = *v40;
    ++v38;
    v44 = *(v40 - 4);
    v45 = *(v40 - 4);
    v46 = *(v40 - 3);
    v118[3] = &type metadata for ResolvedImage;
    v47 = swift_allocObject();
    v118[0] = v47;
    *(v47 + 16) = v45;
    *(v47 + 24) = v46;
    *(v47 + 32) = v44;
    *(v47 + 40) = v42;
    *(v47 + 48) = v43;
    v48 = v42;
    swift_retain_n();
    v49 = v48;
    JSONValue.init(_:)(v118, &v119);

    v50 = v119;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      *&v113 = sub_19A31D6DC(0, *(v113 + 16) + 1, 1, v113);
    }

    v52 = *(v113 + 16);
    v51 = *(v113 + 24);
    if (v52 >= v51 >> 1)
    {
      *&v113 = sub_19A31D6DC((v51 > 1), v52 + 1, 1, v113);
    }

    v53 = v113;
    *(v113 + 16) = v52 + 1;
    *(v53 + 8 * v52 + 32) = v50;
    v39 = v101;
    if (v100 == v41)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
}

uint64_t sub_19A33C8DC@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_19A4CEB54();
  if (v3 >> 60 == 15)
  {
    result = swift_allocObject();
    v5 = result;
    v6 = 0x800000019A596B70;
    *(result + 16) = 0xD000000000000017;
  }

  else
  {
    v7 = v2;
    v8 = v3;
    v5 = swift_allocObject();
    v9 = sub_19A570F1C();
    v6 = v10;
    result = sub_19A33EFB0(v7, v8);
    *(v5 + 16) = v9;
  }

  *(v5 + 24) = v6;
  *a1 = v5;
  return result;
}

unint64_t sub_19A33C9C8@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x1E69E7CC0];
    }

    v7 = sub_19A572F9C();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_19A31DA64(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_19A31DA64((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x1E69E7CC0];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_19A572F6C();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_19A572E8C();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_19A572E8C();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_19A572F9C();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_19A31DA64(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_19A572F9C();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_19A31DA64(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_19A31DA64((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_19A572E8C();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

_OWORD *sub_19A33CD88(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_19A573AFC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_19A31FA78(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_19A32C05C();
      goto LABEL_7;
    }

    sub_19A328B94(v17, a3 & 1);
    v23 = sub_19A31FA78(a2);
    if ((v18 & 1) == (v24 & 1))
    {
      v14 = v23;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_19A34D168(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_19A57404C();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = (v20[7] + 32 * v14);
  __swift_destroy_boxed_opaque_existential_0Tm(v21);

  return sub_19A2E10E0(a1, v21);
}

_OWORD *sub_19A33CF60(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_19A31F918(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_19A32C2E0();
      goto LABEL_7;
    }

    sub_19A328F34(v13, a3 & 1);
    v19 = sub_19A31F918(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_19A334568(a2, v21);
      return sub_19A34D228(v10, v21, a1, v16);
    }

LABEL_15:
    result = sub_19A57404C();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  __swift_destroy_boxed_opaque_existential_0Tm(v17);

  return sub_19A2E10E0(a1, v17);
}

unint64_t sub_19A33D0AC(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_19A31FADC(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = result;
      sub_19A32C484();
      result = v17;
      goto LABEL_8;
    }

    sub_19A3291EC(v14, a3 & 1);
    result = sub_19A31FADC(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_14:
      result = sub_19A57404C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * result) = a1;
  }

  else
  {

    return sub_19A34D2A4(result, a2, a1, v19);
  }

  return result;
}

uint64_t sub_19A33D1B8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_19A31F7F8(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_19A32C5D0();
      v9 = v17;
      goto LABEL_8;
    }

    sub_19A3294B0(v14, a3 & 1);
    v9 = sub_19A31F7F8(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = sub_19A57404C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(*(v19 + 56) + 8 * v9) = a1;
  }

  else
  {

    return sub_19A34F27C(v9, a2, a1, v19);
  }
}

uint64_t sub_19A33D2DC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_19A31F734(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_19A32C5E4();
      v9 = v17;
      goto LABEL_8;
    }

    sub_19A329874(v14, a3 & 1);
    v9 = sub_19A31F734(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = sub_19A57404C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(*(v19 + 56) + 8 * v9) = a1;
  }

  else
  {

    return sub_19A34F27C(v9, a2, a1, v19);
  }
}

uint64_t sub_19A33D400(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_19A31F6BC(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_19A32C744();
      v11 = v19;
      goto LABEL_8;
    }

    sub_19A329B58(v16, a4 & 1);
    v11 = sub_19A31F6BC(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_19A57404C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  else
  {
    sub_19A34D2E8(v11, a2, a3, a1, v21);
  }
}

void sub_19A33D548(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_19A31FCD8(a3, a4);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = v12[3];
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = v13;
      sub_19A32CCF0();
      v13 = v21;
      goto LABEL_8;
    }

    sub_19A32A5E8(v18, a5 & 1);
    v13 = sub_19A31FCD8(a3, a4);
    if ((v19 & 1) != (v22 & 1))
    {
LABEL_16:
      sub_19A57404C();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v23 = *v6;
  if (v19)
  {
    v24 = v23[7] + 16 * v13;
    v25 = *v24;
    *v24 = a1;
    *(v24 + 8) = a2;
  }

  else
  {

    sub_19A34D330(v13, a3, a4, a1, a2, v23);
  }
}

_OWORD *sub_19A33D694(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_19A31F6BC(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_19A32CE60();
      v11 = v19;
      goto LABEL_8;
    }

    sub_19A32A8A4(v16, a4 & 1);
    v11 = sub_19A31F6BC(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_19A57404C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0Tm(v22);

    return sub_19A2E10E0(a1, v22);
  }

  else
  {
    sub_19A34D384(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_19A33D7E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_19A31F6BC(a3, a4);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = v12[3];
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = v13;
      sub_19A32D004();
      v13 = v21;
      goto LABEL_8;
    }

    sub_19A32AB5C(v18, a5 & 1);
    v13 = sub_19A31F6BC(a3, a4);
    if ((v19 & 1) != (v22 & 1))
    {
LABEL_16:
      result = sub_19A57404C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  else
  {
    sub_19A34D3F0(v13, a3, a4, a1, a2, v23);
  }
}

id sub_19A33D934(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_19A31FF68(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_19A32D178();
      v8 = v16;
      goto LABEL_8;
    }

    sub_19A32AE14(v13, a3 & 1);
    v8 = sub_19A31FF68(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      sub_19A3347B8();
      sub_19A57404C();
      __break(1u);
      return MEMORY[0x1EEE66BB8]();
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    *(v18[7] + 8 * v8) = a1;

    return MEMORY[0x1EEE66BB8]();
  }

  sub_19A34D440(v8, a2, a1, v18);

  return a2;
}

uint64_t sub_19A33DA68(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_19A31FCD8(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for GeneratedImage();
      return sub_19A33F06C(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for GeneratedImage);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_19A32D2D8();
    goto LABEL_7;
  }

  sub_19A32B07C(v15, a4 & 1);
  v22 = sub_19A31FCD8(a2, a3);
  if ((v16 & 1) != (v23 & 1))
  {
LABEL_15:
    result = sub_19A57404C();
    __break(1u);
    return result;
  }

  v12 = v22;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:

  return sub_19A34D484(v12, a2, a3, a1, v18);
}

unint64_t sub_19A33DBCC(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_19A31FFAC(a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_19A32D514();
      v11 = v19;
      goto LABEL_8;
    }

    sub_19A32B3EC(v16, a4 & 1);
    v11 = sub_19A31FFAC(a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_19A57404C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 16 * v11);
    *v22 = a1;
    v22[1] = a2;
  }

  else
  {

    return sub_19A34D530(v11, a3, a1, a2, v21);
  }
}

uint64_t sub_19A33DD04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_19A31F6BC(a3, a4);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = v12[3];
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = v13;
      sub_19A32D67C();
      v13 = v21;
      goto LABEL_8;
    }

    sub_19A32B730(v18, a5 & 1);
    v13 = sub_19A31F6BC(a3, a4);
    if ((v19 & 1) != (v22 & 1))
    {
LABEL_16:
      result = sub_19A57404C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  else
  {
    sub_19A34D3F0(v13, a3, a4, a1, a2, v23);
  }
}

uint64_t sub_19A33DE54(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_19A31FBD4(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 >= v13 && (a3 & 1) != 0)
  {
LABEL_7:
    v16 = *v4;
    if (v14)
    {
LABEL_8:
      v17 = v16[7];
      v18 = type metadata accessor for AppleDiffusionImageGenerator.PipelineCollectionManager.CacheEntry(0);
      return sub_19A33F06C(a1, v17 + *(*(v18 - 8) + 72) * v10, type metadata accessor for AppleDiffusionImageGenerator.PipelineCollectionManager.CacheEntry);
    }

    goto LABEL_11;
  }

  if (v15 >= v13 && (a3 & 1) == 0)
  {
    sub_19A32D7F4();
    goto LABEL_7;
  }

  sub_19A32B9F0(v13, a3 & 1);
  v20 = sub_19A31FBD4(a2);
  if ((v14 & 1) != (v21 & 1))
  {
LABEL_15:
    result = sub_19A57404C();
    __break(1u);
    return result;
  }

  v10 = v20;
  v16 = *v4;
  if (v14)
  {
    goto LABEL_8;
  }

LABEL_11:

  return sub_19A34D578(v10, a2, a1, v16);
}

uint64_t sub_19A33DFA8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_19A31F6BC(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_19A32C8B8();
      v11 = v19;
      goto LABEL_8;
    }

    sub_19A329E00(v16, a4 & 1);
    v11 = sub_19A31F6BC(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_19A57404C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  else
  {
    sub_19A34D2E8(v11, a2, a3, a1, v21);
  }
}

void sub_19A33E0F0(void *a1, char a2, void *a3)
{
  v37 = a1[2];
  if (!v37)
  {
    goto LABEL_23;
  }

  LOBYTE(v5) = a2;
  v6 = a1[5];
  v7 = a1[6];
  v8 = a1[4];

  if (!v6)
  {
    goto LABEL_23;
  }

  v9 = *a3;
  v10 = sub_19A31F6BC(v8, v6);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_19A329B58(v15, v5 & 1);
    v10 = sub_19A31F6BC(v8, v6);
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_8;
    }

LABEL_6:
    v10 = sub_19A57404C();
    __break(1u);
  }

  if (v5)
  {
LABEL_8:
    if (v16)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  v20 = v10;
  sub_19A32C744();
  v10 = v20;
  if (v16)
  {
LABEL_9:
    v18 = swift_allocError();
    swift_willThrow();

    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA26F0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_28;
  }

LABEL_12:
  v21 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v22 = (v21[6] + 16 * v10);
  *v22 = v8;
  v22[1] = v6;
  *(v21[7] + 8 * v10) = v7;
  v23 = v21[2];
  v14 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v14)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    sub_19A57395C();
    MEMORY[0x19A900A50](0xD00000000000001BLL, 0x800000019A596BD0);
    sub_19A573ACC();
    MEMORY[0x19A900A50](39, 0xE100000000000000);
    sub_19A573B7C();
    __break(1u);
    return;
  }

  v21[2] = v24;
  if (v37 != 1)
  {
    v5 = a1 + 9;
    v25 = 1;
    while (v25 < a1[2])
    {
      v6 = *(v5 - 1);
      v7 = *v5;
      v8 = *(v5 - 2);

      if (!v6)
      {
        goto LABEL_23;
      }

      v26 = *a3;
      v27 = sub_19A31F6BC(v8, v6);
      v29 = v26[2];
      v30 = (v28 & 1) == 0;
      v14 = __OFADD__(v29, v30);
      v31 = v29 + v30;
      if (v14)
      {
        goto LABEL_25;
      }

      v16 = v28;
      if (v26[3] < v31)
      {
        sub_19A329B58(v31, 1);
        v27 = sub_19A31F6BC(v8, v6);
        if ((v16 & 1) != (v32 & 1))
        {
          goto LABEL_6;
        }
      }

      if (v16)
      {
        goto LABEL_9;
      }

      v33 = *a3;
      *(*a3 + 8 * (v27 >> 6) + 64) |= 1 << v27;
      v34 = (v33[6] + 16 * v27);
      *v34 = v8;
      v34[1] = v6;
      *(v33[7] + 8 * v27) = v7;
      v35 = v33[2];
      v14 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v14)
      {
        goto LABEL_26;
      }

      ++v25;
      v33[2] = v36;
      v5 += 3;
      if (v37 == v25)
      {
        goto LABEL_23;
      }
    }

    goto LABEL_27;
  }

LABEL_23:
}

uint64_t sub_19A33E48C(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_19A573F1C() & 1;
  }
}

uint64_t sub_19A33E4E4(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
  }

  return result;
}

unint64_t sub_19A33E4FC()
{
  result = qword_1EAF9ED00;
  if (!qword_1EAF9ED00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF9ED00);
  }

  return result;
}

unint64_t sub_19A33E550()
{
  result = qword_1EAFA0238;
  if (!qword_1EAFA0238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0238);
  }

  return result;
}

unint64_t sub_19A33E5A4()
{
  result = qword_1EAFA0250;
  if (!qword_1EAFA0250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0250);
  }

  return result;
}

unint64_t sub_19A33E5F8()
{
  result = qword_1EAF9EC68;
  if (!qword_1EAF9EC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF9EC68);
  }

  return result;
}

uint64_t sub_19A33E64C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFA0240);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_19A33E6D0()
{
  result = qword_1EAF9E968;
  if (!qword_1EAF9E968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF9E968);
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_19A33E7D4(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFA0268);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _s16VisualGeneration9JSONValueO2eeoiySbAC_ACtFZ_0(uint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1 >> 61;
  if (v4 > 2)
  {
    if (v4 != 3)
    {
      if (v4 == 4)
      {
        if (v3 >> 61 != 4)
        {
          goto LABEL_26;
        }

        v6 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v7 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

        v8 = sub_19A4D3A60(v6, v7);
      }

      else
      {
        if (v3 >> 61 != 5)
        {
          goto LABEL_26;
        }

        v11 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v12 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

        v8 = sub_19A3392D0(v11, v12);
      }

      v13 = v8;

      return v13 & 1;
    }

    if (v3 >> 61 == 3)
    {
      v5 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) ^ *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) ^ 1;
      return v5 & 1;
    }

LABEL_26:
    v5 = 0;
    return v5 & 1;
  }

  if (v4)
  {
    if (v4 == 1)
    {
      if (v3 >> 61 == 1)
      {
        v5 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) == *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        return v5 & 1;
      }

      goto LABEL_26;
    }

    if (v3 >> 61 != 2 || *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) != *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10))
    {
      goto LABEL_26;
    }

LABEL_22:
    v5 = 1;
    return v5 & 1;
  }

  if (v3 >> 61)
  {
    goto LABEL_26;
  }

  if (*(v2 + 16) == *(v3 + 16) && *(v2 + 24) == *(v3 + 24))
  {
    goto LABEL_22;
  }

  return sub_19A573F1C();
}

unint64_t sub_19A33EA10()
{
  result = qword_1EAFA0278;
  if (!qword_1EAFA0278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0278);
  }

  return result;
}

uint64_t sub_19A33EA74(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_19A33EABC(uint64_t result, int a2, int a3)
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

uint64_t sub_19A33EB64(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_19A33EBAC(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_19A33EC18(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7B && *(a1 + 8))
  {
    return (*a1 + 123);
  }

  v3 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7A)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_19A33EC74(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7A)
  {
    *result = a2 - 123;
    if (a3 >= 0x7B)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7B)
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

unint64_t sub_19A33ED34()
{
  result = qword_1EAFA0280;
  if (!qword_1EAFA0280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0280);
  }

  return result;
}

unint64_t sub_19A33ED8C()
{
  result = qword_1EAF9ECF0;
  if (!qword_1EAF9ECF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF9ECF0);
  }

  return result;
}

unint64_t sub_19A33EDE4()
{
  result = qword_1EAF9ECF8;
  if (!qword_1EAF9ECF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF9ECF8);
  }

  return result;
}

uint64_t sub_19A33EE38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_19A33EEA0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_19A33EF00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_19A33EF68(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_19A33EFB0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_19A33EFC4(a1, a2);
  }

  return a1;
}

uint64_t sub_19A33EFC4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_19A33F018()
{
  result = qword_1EAF9EC70;
  if (!qword_1EAF9EC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF9EC70);
  }

  return result;
}

uint64_t sub_19A33F06C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_19A33F0D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0228);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_19A33F144()
{
  result = qword_1EAFA02B8;
  if (!qword_1EAFA02B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFA02B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA02B8);
  }

  return result;
}

__n128 __swift_memcpy45_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 29) = *(a2 + 29);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_19A33F1DC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 45))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_19A33F238(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 44) = 0;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 45) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 45) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_19A33F2AC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7463656A627573;
  }

  else
  {
    v3 = 0x70616373646E616CLL;
  }

  if (v2)
  {
    v4 = 0xE900000000000065;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x7463656A627573;
  }

  else
  {
    v5 = 0x70616373646E616CLL;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE900000000000065;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_19A573F1C();
  }

  return v8 & 1;
}

uint64_t sub_19A33F358()
{
  sub_19A5740BC();
  sub_19A572E4C();

  return sub_19A57410C();
}

uint64_t sub_19A33F3E0()
{
  sub_19A572E4C();
}

uint64_t sub_19A33F454()
{
  sub_19A5740BC();
  sub_19A572E4C();

  return sub_19A57410C();
}

uint64_t sub_19A33F4D8@<X0>(char *a1@<X8>)
{
  v2 = sub_19A573C2C();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_19A33F538(uint64_t *a1@<X8>)
{
  v2 = 0x70616373646E616CLL;
  if (*v1)
  {
    v2 = 0x7463656A627573;
  }

  v3 = 0xE900000000000065;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_19A33F62C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA02C0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A33F9A8();
  sub_19A5741AC();
  v11[15] = *v3;
  v11[14] = 0;
  sub_19A33F9FC();
  sub_19A573E7C();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v11[13] = 1;
  sub_19A573DCC();
  v11[12] = 2;
  sub_19A573DCC();
  v10 = v3[44];
  v11[11] = 3;
  v11[8] = v10;
  sub_19A573DFC();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_19A33F814()
{
  v1 = 0x745374756F79616CLL;
  v2 = 0x655474756F79616CLL;
  if (*v0 != 2)
  {
    v2 = 0x656C616373;
  }

  if (*v0)
  {
    v1 = 0x655474706D6F7270;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_19A33F8AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_19A340218(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_19A33F8D4(uint64_t a1)
{
  v2 = sub_19A33F9A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A33F910(uint64_t a1)
{
  v2 = sub_19A33F9A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_19A33F94C@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_19A34038C(a1, &v6);
  if (!v2)
  {
    v5 = v7[0];
    *a2 = v6;
    a2[1] = v5;
    result = *(v7 + 13);
    *(a2 + 29) = *(v7 + 13);
  }

  return result;
}

unint64_t sub_19A33F9A8()
{
  result = qword_1EAFA02C8;
  if (!qword_1EAFA02C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA02C8);
  }

  return result;
}

unint64_t sub_19A33F9FC()
{
  result = qword_1EAFA02D0;
  if (!qword_1EAFA02D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA02D0);
  }

  return result;
}

CVPixelBufferRef sub_19A33FA50(unsigned int a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AppleDiffusionPipeline.ResourceURLs(0);
  MEMORY[0x1EEE9AC00](v6);
  v83 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_19A570DCC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA02E8);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v85 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v68 - v15;
  v17 = sub_19A570EAC();
  v18 = MEMORY[0x1EEE9AC00](v17);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v20 = MEMORY[0x1EEE9AC00](v19);
  MEMORY[0x1EEE9AC00](v20);
  v26 = &v68 - v25;
  if (!a3)
  {
    return 0;
  }

  v79 = v6;
  v77 = a1;
  v71 = v24;
  v72 = v23;
  v78 = v22;
  v27 = v21;
  v82 = *(v21 + 56);
  v82(v16, 1, 1, v17);
  v28 = *MEMORY[0x1E6968F70];
  v73 = v9;
  v29 = *(v9 + 104);
  v70 = v28;
  v74 = v8;
  v69 = v29;
  v29(v11);

  v80 = v11;
  sub_19A570E6C();
  v30 = sub_19A570DDC();
  v32 = v31;
  v81 = v27;
  v33 = *(v27 + 8);
  v84 = v17;
  v76 = v27 + 8;
  v75 = v33;
  v33(v26, v17);
  if (v30 == a2 && v32 == a3)
  {

    v34 = v85;
  }

  else
  {
    v35 = sub_19A573F1C();

    v34 = v85;
    if ((v35 & 1) == 0)
    {
      return 0;
    }
  }

  type metadata accessor for AppleDiffusionResourceFactory(0);
  v36 = static AppleDiffusionResourceFactory.shared(reset:)(0);
  v37 = v83;
  sub_19A3406DC(v36 + OBJC_IVAR____TtC13DiffusionBase29AppleDiffusionResourceFactory_resourceURLs, v83);

  v38 = *(v37 + *(v79 + 28));

  sub_19A340740(v37);
  if (*(v38 + 16))
  {
    v39 = sub_19A31FBD4(v77);
    v40 = v80;
    if (v41)
    {
      (*(v81 + 16))(v34, *(v38 + 56) + *(v81 + 72) * v39, v84);
      v42 = 0;
    }

    else
    {
      v42 = 1;
    }
  }

  else
  {
    v42 = 1;
    v40 = v80;
  }

  v43 = v84;
  v82(v34, v42, 1, v84);
  v44 = v81;
  if ((*(v81 + 48))(v34, 1, v43) == 1)
  {
    sub_19A340674(v34);
    return 0;
  }

  v46 = v78;
  (*(v44 + 32))();
  v47 = v71;
  sub_19A570E0C();
  *&v87.a = a2;
  *&v87.b = a3;
  v48 = v74;
  v69(v40, v70, v74);
  sub_19A2F4450();
  v49 = v72;
  sub_19A570E8C();
  (*(v73 + 8))(v40, v48);
  v50 = v75;
  v75(v47, v43);
  v51 = objc_allocWithZone(MEMORY[0x1E695F658]);
  v52 = sub_19A570DEC();
  v53 = [v51 initWithContentsOfURL_];

  v50(v49, v43);
  if (!v53)
  {
    v50(v46, v43);
    return 0;
  }

  v54 = v53;
  [v54 extent];
  sub_19A39AAB4(v88, v55, v56);
  v57 = *v88;
  v58 = *&v88[1];
  [v54 extent];
  [v54 extent];
  v60 = v59;
  v62 = v61;
  v87.a = 1.0;
  v87.b = 0.0;
  v87.c = 0.0;
  v87.d = 1.0;
  v87.tx = 0.0;
  v87.ty = 0.0;
  CGAffineTransformTranslate(&v86, &v87, -v63, -v64);
  v87 = v86;
  CGAffineTransformScale(&v86, &v87, *&v57 / v60, *&v58 / v62);
  v87 = v86;
  v65 = [v54 imageByApplyingTransform_];
  v87.a = v57;
  v87.b = v58;
  v66 = sub_19A3941B4(&v87, 0x42475241u);
  v67 = [objc_allocWithZone(MEMORY[0x1E695F620]) init];
  [v67 render:v65 toCVPixelBuffer:v66];

  v50(v78, v84);
  return v66;
}

uint64_t sub_19A340218(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x745374756F79616CLL && a2 == 0xEB00000000656C79;
  if (v4 || (sub_19A573F1C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x655474706D6F7270 && a2 == 0xEE006574616C706DLL || (sub_19A573F1C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x655474756F79616CLL && a2 == 0xEE006574616C706DLL || (sub_19A573F1C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C616373 && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_19A573F1C();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_19A34038C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA02D8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A33F9A8();
  sub_19A57417C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  else
  {
    v25 = 0;
    sub_19A340620();
    sub_19A573D4C();
    v9 = v26;
    v24 = 1;
    v10 = sub_19A573C8C();
    v12 = v11;
    v20 = v9;
    v21 = v10;
    v23 = 2;
    v13 = sub_19A573C8C();
    v15 = v14;
    v19 = v13;
    v22 = 3;
    v16 = sub_19A573CBC();
    (*(v6 + 8))(v8, v5);
    result = __swift_destroy_boxed_opaque_existential_0Tm(a1);
    *a2 = v20;
    *(a2 + 8) = v21;
    *(a2 + 16) = v12;
    *(a2 + 24) = v19;
    *(a2 + 32) = v15;
    *(a2 + 40) = v16;
    *(a2 + 44) = BYTE4(v16) & 1;
  }

  return result;
}

unint64_t sub_19A340620()
{
  result = qword_1EAFA02E0;
  if (!qword_1EAFA02E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA02E0);
  }

  return result;
}

uint64_t sub_19A340674(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA02E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_19A3406DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppleDiffusionPipeline.ResourceURLs(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_19A340740(uint64_t a1)
{
  v2 = type metadata accessor for AppleDiffusionPipeline.ResourceURLs(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_19A3407C0()
{
  result = qword_1EAFA02F0;
  if (!qword_1EAFA02F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA02F0);
  }

  return result;
}

unint64_t sub_19A340818()
{
  result = qword_1EAFA02F8;
  if (!qword_1EAFA02F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA02F8);
  }

  return result;
}

unint64_t sub_19A340870()
{
  result = qword_1EAFA0300;
  if (!qword_1EAFA0300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0300);
  }

  return result;
}

unint64_t sub_19A3408C8()
{
  result = qword_1EAFA0308;
  if (!qword_1EAFA0308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0308);
  }

  return result;
}

unint64_t sub_19A34091C()
{
  result = qword_1EAFA0310;
  if (!qword_1EAFA0310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0310);
  }

  return result;
}

void sub_19A340970(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for Concept(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EAF9F840 != -1)
  {
    swift_once();
  }

  v12 = qword_1EAFCA250;
  if (![v4 attribute:qword_1EAFCA250 atIndex:a2 effectiveRange:0])
  {
    goto LABEL_11;
  }

  sub_19A57384C();
  swift_unknownObjectRelease();
  sub_19A3355EC(v21, v22);
  sub_19A334618(v22, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0318);
  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v22);
LABEL_11:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FFB0);
    v17 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_19A576E10;
    sub_19A341FD0(a1, v18 + v17, type metadata accessor for Concept);
    v19 = sub_19A57307C();

    [v4 addAttribute:v12 value:v19 range:{a2, a3}];

    return;
  }

  v13 = v20[1];
  sub_19A341FD0(a1, v11, type metadata accessor for Concept);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v13 = sub_19A31D108(0, v13[2] + 1, 1, v13);
  }

  v15 = v13[2];
  v14 = v13[3];
  if (v15 >= v14 >> 1)
  {
    v13 = sub_19A31D108(v14 > 1, v15 + 1, 1, v13);
  }

  v13[2] = v15 + 1;
  sub_19A3420EC(v11, v13 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, type metadata accessor for Concept);
  v16 = sub_19A57307C();

  [v4 addAttribute:v12 value:v16 range:{a2, a3}];

  __swift_destroy_boxed_opaque_existential_0Tm(v22);
}

uint64_t sub_19A340CA4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = *(v6 + 24);
  v13 = [v12 mutableString];
  v14 = sub_19A572CCC();
  [v13 insertString:v14 atIndex:0];

  sub_19A340970(a3, a4, a5);
  [v12 removeAttribute:*MEMORY[0x1E696A518] range:{a4, a5}];
  v15 = MEMORY[0x1E69E6158];
  v24[3] = MEMORY[0x1E69E6158];
  v24[4] = sub_19A2F4450();
  v24[0] = a1;
  v24[1] = a2;
  v16 = *(v6 + 16);

  sub_19A386EC4(v16);

  v17 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v17 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v17)
  {
    sub_19A386EC4(v16);

    v18 = __swift_project_boxed_opaque_existential_1(v24, v15);
    MEMORY[0x1EEE9AC00](v18);
    (*(v20 + 16))(&v24[-1] - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
    *&v25[0] = sub_19A572F8C();
    *(&v25[0] + 1) = v21;
    memset(&v25[1], 0, 32);
    sub_19A46ACDC(0, 0, v25);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v24);
}

uint64_t sub_19A340EC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v62 = a6;
  v56 = a5;
  v55 = sub_19A57102C();
  v7 = *(v55 - 8);
  v8 = MEMORY[0x1EEE9AC00](v55);
  v54 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v53 = &v47 - v10;
  v11 = type metadata accessor for NamedEntityData.NamedEntityType(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for NamedEntityData.PhotosPersonData(0);
  v14 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v52 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for NamedEntityData(0);
  MEMORY[0x1EEE9AC00](v59);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Concept(0);
  v19 = *(v18 - 8);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v61 = &v47 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = &v47 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v47 - v28;
  sub_19A33546C(a1, v64, &qword_1EAFA0228);
  if (!v65)
  {
    return sub_19A2F3FA0(v64, &qword_1EAFA0228);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0318);
  result = swift_dynamicCast();
  if (result)
  {
    v31 = v14;
    v32 = *(v63 + 16);
    if (v32)
    {
      v33 = v63 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
      v60 = *(v19 + 72);
      v57 = (v31 + 48);
      v49 = (v7 + 16);
      v50 = v13;
      v47 = v63;
      v48 = (v7 + 8);
      v34 = v27;
      v51 = v17;
      do
      {
        sub_19A341FD0(v33, v29, type metadata accessor for Concept);
        sub_19A341FD0(v29, v27, type metadata accessor for Concept);
        if (swift_getEnumCaseMultiPayload() == 4)
        {
          sub_19A3420EC(v27, v17, type metadata accessor for NamedEntityData);
          sub_19A341FD0(&v17[*(v59 + 20)], v13, type metadata accessor for NamedEntityData.NamedEntityType);
          if ((*v57)(v13, 1, v58) == 1)
          {
            sub_19A34208C(v17, type metadata accessor for NamedEntityData);
            v35 = type metadata accessor for NamedEntityData.NamedEntityType;
            v36 = v13;
          }

          else
          {
            v38 = v52;
            sub_19A3420EC(v13, v52, type metadata accessor for NamedEntityData.PhotosPersonData);
            v39 = v54;
            v40 = v55;
            (*v49)(v54, v38, v55);
            v41 = v22;
            v42 = v18;
            v43 = v53;
            sub_19A32338C(v53, v39);
            v44 = v43;
            v18 = v42;
            v22 = v41;
            v45 = v40;
            v13 = v50;
            (*v48)(v44, v45);
            v46 = v38;
            v17 = v51;
            sub_19A34208C(v46, type metadata accessor for NamedEntityData.PhotosPersonData);
            v35 = type metadata accessor for NamedEntityData;
            v36 = v17;
          }
        }

        else
        {
          v35 = type metadata accessor for Concept;
          v36 = v27;
        }

        sub_19A34208C(v36, v35);
        sub_19A341FD0(v29, v22, type metadata accessor for Concept);
        v37 = v61;
        sub_19A32314C(v61, v22);
        sub_19A34208C(v37, type metadata accessor for Concept);
        sub_19A34208C(v29, type metadata accessor for Concept);
        v33 += v60;
        --v32;
        v27 = v34;
      }

      while (v32);
    }
  }

  return result;
}

uint64_t sub_19A3414AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v58 = a2;
  v59 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD80);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v55 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v54 = &v44 - v10;
  v57 = sub_19A570BEC();
  v50 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v56 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA01D0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v44 - v13;
  v15 = sub_19A57102C();
  v46 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for NamedEntityData.NamedEntityType(0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for NamedEntityData.PhotosPersonData(0);
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v44 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for Concept(0);
  v61 = *(v25 - 8);
  v62 = v25;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v44 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for NamedEntityData(0);
  MEMORY[0x1EEE9AC00](v64);
  v60 = &v44 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19A33546C(a1, v69, &qword_1EAFA0228);
  if (!v70)
  {
    return sub_19A2F3FA0(v69, &qword_1EAFA0228);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0318);
  result = swift_dynamicCast();
  if (result)
  {
    result = v68;
    v67 = *(v68 + 16);
    if (!v67)
    {
    }

    v52 = v14;
    v53 = a5;
    v30 = 0;
    v31 = v61;
    v66 = v68 + ((*(v31 + 80) + 32) & ~*(v31 + 80));
    v63 = (v22 + 48);
    v32 = (v46 + 2);
    v50 += 2;
    v47 = (v46 + 7);
    ++v46;
    v33 = v60;
    v49 = v21;
    v48 = v20;
    v65 = v68;
    v51 = v32;
    v45 = v27;
    v44 = v24;
    while (1)
    {
      if (v30 >= *(result + 16))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        return result;
      }

      sub_19A341FD0(v66 + *(v31 + 72) * v30, v27, type metadata accessor for Concept);
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        break;
      }

      sub_19A3420EC(v27, v33, type metadata accessor for NamedEntityData);
      sub_19A341FD0(v33 + *(v64 + 20), v20, type metadata accessor for NamedEntityData.NamedEntityType);
      if ((*v63)(v20, 1, v21) == 1)
      {
        sub_19A34208C(v33, type metadata accessor for NamedEntityData);
        v34 = type metadata accessor for NamedEntityData.NamedEntityType;
        v35 = v20;
        goto LABEL_6;
      }

      sub_19A3420EC(v20, v24, type metadata accessor for NamedEntityData.PhotosPersonData);
      v36 = *v51;
      (*v51)(v17, v24, v15);
      v37 = v15;
      (*v50)(v56, v53, v57);
      sub_19A33679C();
      v38 = v52;
      sub_19A57346C();
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0020);
      result = (*(*(v39 - 8) + 48))(v38, 1, v39);
      if (result == 1)
      {
        goto LABEL_18;
      }

      v40 = v54;
      v36(v54, v17, v37);
      (*v47)(v40, 0, 1, v37);
      sub_19A336864();
      v41 = sub_19A570C2C();
      sub_19A33546C(v40, v55, &qword_1EAF9FD80);
      sub_19A342038();
      sub_19A570D0C();
      sub_19A2F3FA0(v40, &qword_1EAF9FD80);
      v41(v69, 0);
      (*v46)(v17, v37);
      v24 = v44;
      sub_19A34208C(v44, type metadata accessor for NamedEntityData.PhotosPersonData);
      v42 = v60;
      sub_19A34208C(v60, type metadata accessor for NamedEntityData);
      v43 = v38;
      v33 = v42;
      sub_19A2F3FA0(v43, &qword_1EAFA0020);
      v15 = v37;
      v20 = v48;
      v21 = v49;
      v31 = v61;
      v27 = v45;
LABEL_7:
      ++v30;
      result = v65;
      if (v67 == v30)
      {
      }
    }

    v34 = type metadata accessor for Concept;
    v35 = v27;
LABEL_6:
    sub_19A34208C(v35, v34);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_19A341CF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_19A570BEC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA01D0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v21 - v12;
  sub_19A33546C(a1, v23, &qword_1EAFA0228);
  if (v24)
  {
    result = swift_dynamicCast();
    if ((result & 1) == 0)
    {
      return result;
    }

    v15 = v21;
    v16 = v22;
    (*(v8 + 16))(v10, a5, v7);
    sub_19A33679C();
    sub_19A57346C();
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0020);
    result = (*(*(v17 - 8) + 48))(v13, 1, v17);
    if (result == 1)
    {
      __break(1u);
      return result;
    }

    sub_19A336864();
    v18 = sub_19A570C2C();
    v21 = v15;
    v22 = v16;
    sub_19A341F7C();
    sub_19A570D0C();
    v18(v23, 0);
    v19 = &qword_1EAFA0020;
    v20 = v13;
  }

  else
  {
    v19 = &qword_1EAFA0228;
    v20 = v23;
  }

  return sub_19A2F3FA0(v20, v19);
}

unint64_t sub_19A341F7C()
{
  result = qword_1EAF9F768;
  if (!qword_1EAF9F768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF9F768);
  }

  return result;
}

uint64_t sub_19A341FD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_19A342038()
{
  result = qword_1ED824978;
  if (!qword_1ED824978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED824978);
  }

  return result;
}

uint64_t sub_19A34208C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_19A3420EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_19A342154()
{
  sub_19A5740BC();
  sub_19A572E4C();
  return sub_19A57410C();
}

uint64_t sub_19A3421C0()
{
  sub_19A5740BC();
  sub_19A572E4C();
  return sub_19A57410C();
}

uint64_t sub_19A342210@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_19A573C2C();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_19A342298@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_19A573C2C();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_19A3422F0(uint64_t a1)
{
  v2 = sub_19A3435C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A34232C(uint64_t a1)
{
  v2 = sub_19A3435C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Image.CodingError.errorDescription.getter()
{
  v0 = sub_19A57112C();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_19A572CBC();
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_19A572C4C();
  sub_19A5710EC();
  return sub_19A572D7C();
}

unint64_t sub_19A3424D4()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000016;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000015;
  }
}

uint64_t sub_19A342530@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_19A344058(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_19A342558(uint64_t a1)
{
  v2 = sub_19A342AA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A342594(uint64_t a1)
{
  v2 = sub_19A342AA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_19A3425D0(uint64_t a1)
{
  v2 = sub_19A342BA0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A34260C(uint64_t a1)
{
  v2 = sub_19A342BA0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_19A342648(uint64_t a1)
{
  v2 = sub_19A342B4C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A342684(uint64_t a1)
{
  v2 = sub_19A342B4C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_19A3426C0(uint64_t a1)
{
  v2 = sub_19A342AF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A3426FC(uint64_t a1)
{
  v2 = sub_19A342AF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Image.CodingError.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0320);
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v24 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0328);
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v21 = &v18 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0330);
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0338);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - v12;
  v14 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A342AA4();
  sub_19A5741AC();
  if (v14)
  {
    if (v14 == 1)
    {
      v28 = 1;
      sub_19A342B4C();
      v9 = v21;
      sub_19A573DAC();
      v16 = v22;
      v15 = v23;
    }

    else
    {
      v29 = 2;
      sub_19A342AF8();
      v9 = v24;
      sub_19A573DAC();
      v16 = v25;
      v15 = v26;
    }
  }

  else
  {
    v27 = 0;
    sub_19A342BA0();
    sub_19A573DAC();
    v16 = v19;
    v15 = v20;
  }

  (*(v16 + 8))(v9, v15);
  return (*(v11 + 8))(v13, v10);
}

unint64_t sub_19A342AA4()
{
  result = qword_1EAFA0340;
  if (!qword_1EAFA0340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0340);
  }

  return result;
}

unint64_t sub_19A342AF8()
{
  result = qword_1EAFA0348;
  if (!qword_1EAFA0348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0348);
  }

  return result;
}

unint64_t sub_19A342B4C()
{
  result = qword_1EAFA0350;
  if (!qword_1EAFA0350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0350);
  }

  return result;
}

unint64_t sub_19A342BA0()
{
  result = qword_1EAFA0358;
  if (!qword_1EAFA0358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0358);
  }

  return result;
}

uint64_t Image.CodingError.hashValue.getter()
{
  v1 = *v0;
  sub_19A5740BC();
  MEMORY[0x19A901C40](v1);
  return sub_19A57410C();
}

uint64_t Image.CodingError.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v39 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0360);
  v36 = *(v3 - 8);
  v37 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v41 = &v32 - v4;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0368);
  v35 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v6 = &v32 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0370);
  v40 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v32 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0378);
  v42 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v32 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A342AA4();
  v13 = v43;
  sub_19A57417C();
  if (v13)
  {
    goto LABEL_10;
  }

  v33 = v7;
  v34 = 0;
  v14 = v40;
  v15 = v41;
  v43 = a1;
  v16 = v12;
  v17 = sub_19A573D7C();
  v18 = *(v17 + 16);
  if (v18)
  {
    v19 = *(v17 + 32);
    if (v18 == 1 && v19 != 3)
    {
      if (*(v17 + 32))
      {
        v40 = v17;
        v26 = v42;
        if (v19 == 1)
        {
          v45 = 1;
          sub_19A342B4C();
          v27 = v34;
          sub_19A573C5C();
          v28 = v39;
          if (v27)
          {
            (*(v26 + 8))(v16, v10);
            goto LABEL_9;
          }

          (*(v35 + 8))(v6, v38);
          (*(v26 + 8))(v16, v10);
        }

        else
        {
          v46 = 2;
          sub_19A342AF8();
          v31 = v34;
          sub_19A573C5C();
          v28 = v39;
          if (v31)
          {
            (*(v26 + 8))(v16, v10);
            goto LABEL_9;
          }

          (*(v36 + 8))(v15, v37);
          (*(v26 + 8))(v16, v10);
        }

        swift_unknownObjectRelease();
      }

      else
      {
        v44 = 0;
        sub_19A342BA0();
        v29 = v34;
        sub_19A573C5C();
        v30 = v42;
        if (v29)
        {
          (*(v42 + 8))(v12, v10);
          goto LABEL_9;
        }

        (*(v14 + 8))(v9, v33);
        (*(v30 + 8))(v12, v10);
        swift_unknownObjectRelease();
        v28 = v39;
      }

      *v28 = v19;
      v24 = v43;
      return __swift_destroy_boxed_opaque_existential_0Tm(v24);
    }
  }

  v21 = sub_19A5739FC();
  swift_allocError();
  v23 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2700);
  *v23 = &type metadata for Image.CodingError;
  sub_19A573C7C();
  sub_19A5739DC();
  (*(*(v21 - 8) + 104))(v23, *MEMORY[0x1E69E6AF8], v21);
  swift_willThrow();
  (*(v42 + 8))(v12, v10);
LABEL_9:
  swift_unknownObjectRelease();
  a1 = v43;
LABEL_10:
  v24 = a1;
  return __swift_destroy_boxed_opaque_existential_0Tm(v24);
}

uint64_t sub_19A343228()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 5;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_19A34325C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24) >> 1;
  if (v1 != v2)
  {
    if (v1 >= v2)
    {
      __break(1u);
      return result;
    }

    *(v0 + 16) = v1 + 1;
  }

  return v1 == v2;
}

uint64_t sub_19A343288()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_19A3432BC()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 10;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_19A3432F0()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_19A343324()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 13;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_19A343358()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_19A34338C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 7;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t Image.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0380);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - v5;
  v7 = *v1;
  v8 = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A3435C0();
  sub_19A5741AC();
  v15 = v7;
  LOBYTE(v16) = v8;
  v9 = sub_19A4CEB54();
  if (v10 >> 60 == 15)
  {
    sub_19A343614();
    swift_allocError();
    *v11 = 0;
    swift_willThrow();
    return (*(v4 + 8))(v6, v3);
  }

  else
  {
    v15 = v9;
    v16 = v10;
    v13 = v9;
    v14 = v10;
    sub_19A343668();
    sub_19A573E7C();
    (*(v4 + 8))(v6, v3);
    return sub_19A33EFB0(v13, v14);
  }
}

unint64_t sub_19A3435C0()
{
  result = qword_1EAFA0388;
  if (!qword_1EAFA0388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0388);
  }

  return result;
}

unint64_t sub_19A343614()
{
  result = qword_1EAFA0390;
  if (!qword_1EAFA0390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0390);
  }

  return result;
}

unint64_t sub_19A343668()
{
  result = qword_1EAFA0398;
  if (!qword_1EAFA0398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0398);
  }

  return result;
}

uint64_t Image.init(from:)@<X0>(void *a1@<X0>, CGImageRef *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA03A0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A3435C0();
  sub_19A57417C();
  if (!v2)
  {
    sub_19A343940();
    sub_19A573CDC();
    v9 = v24;
    if (v24 >> 60 == 15)
    {
      sub_19A343614();
      swift_allocError();
      *v10 = 2;
      swift_willThrow();
LABEL_11:
      (*(v6 + 8))(v8, v5);
      return __swift_destroy_boxed_opaque_existential_0Tm(a1);
    }

    v25 = a2;
    v11 = v23;
    v12 = sub_19A570F0C();
    v13 = CGDataProviderCreateWithCFData(v12);

    if (v13)
    {
      v14 = CGImageSourceCreateWithDataProvider(v13, 0);
      if (v14)
      {
        v15 = v14;
        PrimaryImageIndex = CGImageSourceGetPrimaryImageIndex(v14);
        ImageAtIndex = CGImageSourceCreateImageAtIndex(v15, PrimaryImageIndex, 0);

        v17 = ImageAtIndex;
        if (ImageAtIndex)
        {
          sub_19A33EFB0(v11, v9);
          (*(v6 + 8))(v8, v5);
          v18 = v25;
          *v25 = v17;
          *(v18 + 8) = 0;
          return __swift_destroy_boxed_opaque_existential_0Tm(a1);
        }
      }

      else
      {
      }
    }

    sub_19A343614();
    swift_allocError();
    *v19 = 1;
    swift_willThrow();
    sub_19A33EFB0(v11, v9);
    goto LABEL_11;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

unint64_t sub_19A343940()
{
  result = qword_1EAFA03A8;
  if (!qword_1EAFA03A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA03A8);
  }

  return result;
}

unint64_t sub_19A343998()
{
  result = qword_1EAFA03B0;
  if (!qword_1EAFA03B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA03B0);
  }

  return result;
}

unint64_t sub_19A3439EC(void *a1)
{
  a1[1] = sub_19A343A24();
  a1[2] = sub_19A343A78();
  result = sub_19A343614();
  a1[3] = result;
  return result;
}

unint64_t sub_19A343A24()
{
  result = qword_1EAFA03B8;
  if (!qword_1EAFA03B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA03B8);
  }

  return result;
}

unint64_t sub_19A343A78()
{
  result = qword_1EAFA03C0;
  if (!qword_1EAFA03C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA03C0);
  }

  return result;
}

uint64_t _s10CodingKeysOwet(unsigned int *a1, int a2)
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

_WORD *_s10CodingKeysOwst(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_19A343C3C()
{
  result = qword_1EAFA03C8;
  if (!qword_1EAFA03C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA03C8);
  }

  return result;
}

unint64_t sub_19A343C94()
{
  result = qword_1EAFA03D0;
  if (!qword_1EAFA03D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA03D0);
  }

  return result;
}

unint64_t sub_19A343CEC()
{
  result = qword_1EAFA03D8;
  if (!qword_1EAFA03D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA03D8);
  }

  return result;
}

unint64_t sub_19A343D44()
{
  result = qword_1EAFA03E0;
  if (!qword_1EAFA03E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA03E0);
  }

  return result;
}

unint64_t sub_19A343D9C()
{
  result = qword_1EAFA03E8;
  if (!qword_1EAFA03E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA03E8);
  }

  return result;
}

unint64_t sub_19A343DF4()
{
  result = qword_1EAFA03F0;
  if (!qword_1EAFA03F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA03F0);
  }

  return result;
}

unint64_t sub_19A343E4C()
{
  result = qword_1EAFA03F8;
  if (!qword_1EAFA03F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA03F8);
  }

  return result;
}

unint64_t sub_19A343EA4()
{
  result = qword_1EAFA0400;
  if (!qword_1EAFA0400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0400);
  }

  return result;
}

unint64_t sub_19A343EFC()
{
  result = qword_1EAFA0408;
  if (!qword_1EAFA0408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0408);
  }

  return result;
}

unint64_t sub_19A343F54()
{
  result = qword_1EAFA0410;
  if (!qword_1EAFA0410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0410);
  }

  return result;
}

unint64_t sub_19A343FAC()
{
  result = qword_1EAFA0418;
  if (!qword_1EAFA0418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0418);
  }

  return result;
}

unint64_t sub_19A344004()
{
  result = qword_1EAFA0420;
  if (!qword_1EAFA0420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0420);
  }

  return result;
}

uint64_t sub_19A344058(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000015 && 0x800000019A596C80 == a2 || (sub_19A573F1C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000019A596CA0 == a2 || (sub_19A573F1C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x800000019A596CC0 == a2)
  {

    return 2;
  }

  else
  {
    v5 = sub_19A573F1C();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t dispatch thunk of PersonDescriptionDirectiveSpecifying.personDescriptionDirective.getter(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_19A3442C0;

  return v7(a1, a2);
}

uint64_t sub_19A3442C0(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t dispatch thunk of PersonDescriptionDirectiveSpecifying.specifyPersonDescriptionDirective(_:analysisLocales:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 16) + **(a5 + 16));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_19A2F759C;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of PersonDescriptionDirectiveSpecifying.dropPersonDescriptionDirective()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 24) + **(a2 + 24));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_19A2F759C;

  return v7(a1, a2);
}

unint64_t sub_19A34461C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    return 0;
  }

  v7 = 4 * v4;
  v8 = 15;
  while (sub_19A572F6C() != a1 || v9 != a2)
  {
    v10 = sub_19A573F1C();

    if (v10)
    {
      return v8;
    }

    v8 = sub_19A572E8C();
    if (v7 == v8 >> 14)
    {
      return 0;
    }
  }

  return v8;
}

int64x2_t sub_19A34470C()
{
  result = vdupq_n_s64(0x200uLL);
  xmmword_1EAFA0428 = result;
  return result;
}