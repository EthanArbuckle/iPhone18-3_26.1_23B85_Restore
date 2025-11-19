uint64_t getEnumTagSinglePayload for UsoEntity_common_MediaItemType.DefinedValues(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xDD)
  {
    goto LABEL_17;
  }

  if (a2 + 35 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 35) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 35;
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

      return (*a1 | (v4 << 8)) - 35;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 35;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x24;
  v8 = v6 - 36;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for UsoEntity_common_MediaItemType.DefinedValues(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 35 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 35) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xDD)
  {
    v4 = 0;
  }

  if (a2 > 0xDC)
  {
    v5 = ((a2 - 221) >> 8) + 1;
    *result = a2 + 35;
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
    *result = a2 + 35;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1C065DFDC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xED)
  {
    goto LABEL_17;
  }

  if (a2 + 19 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 19) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 19;
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

      return (*a1 | (v4 << 8)) - 19;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 19;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v8 = v6 - 20;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1C065E06C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xED)
  {
    v4 = 0;
  }

  if (a2 > 0xEC)
  {
    v5 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
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
    *result = a2 + 19;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UsoEntity_appleEmail_EmailAttribute.DefinedValues(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for UsoEntity_appleEmail_EmailAttribute.DefinedValues(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1C0667054(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xDF)
  {
    goto LABEL_17;
  }

  if (a2 + 33 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 33) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 33;
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

      return (*a1 | (v4 << 8)) - 33;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 33;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x22;
  v8 = v6 - 34;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1C06670E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 33 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 33) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xDF)
  {
    v4 = 0;
  }

  if (a2 > 0xDE)
  {
    v5 = ((a2 - 223) >> 8) + 1;
    *result = a2 + 33;
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
    *result = a2 + 33;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UsoEntity_common_AttachmentType.DefinedValues(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xD6)
  {
    goto LABEL_17;
  }

  if (a2 + 42 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 42) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 42;
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

      return (*a1 | (v4 << 8)) - 42;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 42;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x2B;
  v8 = v6 - 43;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for UsoEntity_common_AttachmentType.DefinedValues(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 42 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 42) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xD6)
  {
    v4 = 0;
  }

  if (a2 > 0xD5)
  {
    v5 = ((a2 - 214) >> 8) + 1;
    *result = a2 + 42;
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
    *result = a2 + 42;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _s14RadiusUnitNodeOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s14RadiusUnitNodeOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1C066A438(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1C066A4C8(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _s9ProximityOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
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

  return (v8 + 1);
}

uint64_t _s9ProximityOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1C066B248()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE19070, &qword_1C0982068);
  if (swift_isClassType())
  {
    v1 = v0 == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    v2 = &unk_1EBE19078;
    v3 = &unk_1C0982070;
  }

  else
  {
    v2 = &qword_1EBE174E0;
    v3 = &unk_1C0975370;
  }

  return __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
}

__n128 UsoValue.__allocating_init(graphNode:)(__n128 *a1)
{
  v2 = swift_allocObject();
  result = *a1;
  *(v2 + 16) = *a1;
  return result;
}

uint64_t UsoTask.baseEntityAsString.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t sub_1C066F364(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  sub_1C095D7BC();
  v5 = v1[4];
  v6 = v1[5];
  sub_1C095D7BC();
  v7 = v1[6];

  return sub_1C05718C8(a1, v7);
}

void *UsoTask.deinit()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  return v0;
}

uint64_t UsoTask.__deallocating_deinit()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  return swift_deallocClassInstance();
}

uint64_t sub_1C066F428()
{
  sub_1C095DFEC();
  v1 = v0[2];
  v2 = v0[3];
  sub_1C095D7BC();
  v3 = v0[4];
  v4 = v0[5];
  sub_1C095D7BC();
  sub_1C05718C8(v6, v0[6]);
  return sub_1C095E03C();
}

uint64_t sub_1C066F484()
{
  v1 = *v0;
  sub_1C095DFEC();
  v2 = v1[2];
  v3 = v1[3];
  sub_1C095D7BC();
  v4 = v1[4];
  v5 = v1[5];
  sub_1C095D7BC();
  sub_1C05718C8(v7, v1[6]);
  return sub_1C095E03C();
}

uint64_t sub_1C066F4E4(uint64_t a1)
{
  v3 = *v1;
  v4 = v3[2];
  v5 = v3[3];
  sub_1C095D7BC();
  v6 = v3[4];
  v7 = v3[5];
  sub_1C095D7BC();
  v8 = v3[6];

  return sub_1C05718C8(a1, v8);
}

uint64_t sub_1C066F534()
{
  sub_1C095DFEC();
  v1 = *v0;
  v2 = *(*v0 + 16);
  v3 = *(*v0 + 24);
  sub_1C095D7BC();
  v4 = v1[4];
  v5 = v1[5];
  sub_1C095D7BC();
  sub_1C05718C8(v7, v1[6]);
  return sub_1C095E03C();
}

uint64_t UsoValue.graphNode.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;

  return swift_unownedRetain();
}

uint64_t static UsoValue.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  v6[0] = *(a1 + 16);
  v6[1] = v2;
  v3 = *(a2 + 24);
  v5[0] = *(a2 + 16);
  v5[1] = v3;

  swift_unownedRetain();

  swift_unownedRetain();
  LOBYTE(v2) = _s12SiriOntology4NodeV2eeoiySbAC_ACtFZ_0(v6, v5);

  swift_unownedRelease();

  swift_unownedRelease();
  return v2 & 1;
}

uint64_t sub_1C066F6AC()
{
  v1 = *(v0 + 24);
  swift_unownedRetainStrong();
  v2 = *(v1 + 112);

  return v2;
}

uint64_t sub_1C066F724()
{
  v1 = *(v0 + 24);
  swift_unownedRetainStrong();
  swift_beginAccess();
  v2 = *(v1 + 104);

  return v2;
}

uint64_t sub_1C066F780()
{
  v1 = *(v0 + 24);
  swift_unownedRetainStrong();
  swift_beginAccess();
  v2 = *(v1 + 120);

  return v2;
}

uint64_t UsoValue.deinit()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  swift_unownedRelease();
  return v0;
}

uint64_t sub_1C066F80C()
{
  sub_1C095DFEC();
  v2 = *(v0 + 16);
  Node.hash(into:)(v3);
  return sub_1C095E03C();
}

uint64_t sub_1C066F858()
{
  v1 = *v0;
  sub_1C095DFEC();
  v3 = *(v1 + 16);
  Node.hash(into:)(v4);
  return sub_1C095E03C();
}

uint64_t sub_1C066F8E0()
{
  sub_1C095DFEC();
  v2 = *(*v0 + 16);
  Node.hash(into:)(v3);
  return sub_1C095E03C();
}

uint64_t sub_1C066F92C(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(*a1 + 24);
  v7[0] = *(*a1 + 16);
  v7[1] = v3;
  v4 = *(v2 + 24);
  v6[0] = *(v2 + 16);
  v6[1] = v4;

  swift_unownedRetain();

  swift_unownedRetain();
  LOBYTE(v3) = _s12SiriOntology4NodeV2eeoiySbAC_ACtFZ_0(v7, v6);

  swift_unownedRelease();

  swift_unownedRelease();
  return v3 & 1;
}

uint64_t sub_1C066F9F0()
{
  v1 = *(*(v0 + 48) + 24);
  swift_unownedRetainStrong();
  v2 = *(v1 + 112);

  return v2;
}

uint64_t UsoEntity.__allocating_init(from:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  UsoEntity.init(from:)(a1);
  return v2;
}

void *UsoEntity.deinit()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  v5 = v0[7];

  return v0;
}

uint64_t UsoExpression.operatorAsString.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t UsoExpression.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return v0;
}

uint64_t UsoExpression.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return swift_deallocClassInstance();
}

unint64_t sub_1C066FB64(unint64_t result, uint64_t a2, int a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 4 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

unint64_t sub_1C066FBA8(unint64_t result, int a2, int a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  *(a5[6] + 4 * result) = a2;
  v5 = a5[7] + 16 * result;
  *v5 = a3;
  *(v5 + 8) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t sub_1C066FBF4(unint64_t result, int a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 4 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

unint64_t sub_1C066FC38(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  *(a5[6] + 8 * result) = a2;
  v5 = (a5[7] + 16 * result);
  *v5 = a3;
  v5[1] = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

void *sub_1C066FC94()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE17440, &unk_1C09789D0);
  v2 = *v0;
  v3 = sub_1C095DD2C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_1C066FE0C(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1C095DD2C();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_1C066FF6C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE172F8, &qword_1C0970AF0);
  v2 = *v0;
  v3 = sub_1C095DD2C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_1C06700C8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE172D0, &qword_1C0970AC0);
  v2 = *v0;
  v3 = sub_1C095DD2C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 4 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 4 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_1C0670228()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE17480, &qword_1C0970A70);
  v2 = *v0;
  v3 = sub_1C095DD2C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = *(v2 + 56) + 16 * v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        *(*(v4 + 48) + 4 * v17) = *(*(v2 + 48) + 4 * v17);
        v21 = *(v4 + 56) + 16 * v17;
        *v21 = v19;
        *(v21 + 8) = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_1C06703AC(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1C095DD2C();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + 4 * v19) = *(*(v4 + 48) + 4 * v19);
        *(*(v6 + 56) + 8 * v19) = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_1C06704F8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE17470, &qword_1C0982390);
  v2 = *v0;
  v3 = sub_1C095DD2C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 16 * v17) = v18;

        result = swift_unownedRetain();
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_1C0670674()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17228, &qword_1C0970A00);
  v2 = *v0;
  v3 = sub_1C095DD2C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

uint64_t _s12SiriOntology7UsoTaskC2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v4 && (sub_1C095DF3C() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[4] == a2[4] && a1[5] == a2[5];
  if (!v5 && (sub_1C095DF3C() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[6];
  v7 = a2[6];

  return sub_1C05685A8(v6, v7);
}

uint64_t sub_1C0670938(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C0670C10()
{
  result = qword_1EBE190A8;
  if (!qword_1EBE190A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE190A8);
  }

  return result;
}

uint64_t sub_1C0670C68(unint64_t a1, unint64_t a2)
{
  v34 = *v2;
  v31 = 0uLL;
  v38[0] = 0;
  v38[1] = 0;
  result = sub_1C0519A28(&v34, &v31, v38);
  v6 = result;
  v7 = MEMORY[0x1E69E7CC0];
  if (a2)
  {
    v38[0] = MEMORY[0x1E69E7CC0];
    v8 = *(result + 16);
    if (v8)
    {
      v9 = 0;
      do
      {
        v10 = (v6 + 32 + 80 * v9);
        v11 = v9;
        while (1)
        {
          if (v11 >= *(v6 + 16))
          {
            __break(1u);
            return result;
          }

          v12 = v10[3];
          v13 = v10[4];
          v14 = v10[2];
          *v35 = v10[1];
          *&v35[16] = v14;
          v15 = *v10;
          v36 = v12;
          v37 = v13;
          v34 = v15;
          if (*&v35[8] == __PAIR128__(a2, a1))
          {
            break;
          }

          result = sub_1C095DF3C();
          if (result)
          {
            break;
          }

          ++v11;
          v10 += 5;
          if (v8 == v11)
          {
            goto LABEL_15;
          }
        }

        sub_1C0519E14(&v34, &v31);
        result = swift_isUniquelyReferenced_nonNull_native();
        v38[0] = v7;
        if ((result & 1) == 0)
        {
          result = sub_1C051A1EC(0, *(v7 + 16) + 1, 1);
          v7 = v38[0];
        }

        v17 = *(v7 + 16);
        v16 = *(v7 + 24);
        if (v17 >= v16 >> 1)
        {
          result = sub_1C051A1EC((v16 > 1), v17 + 1, 1);
          v7 = v38[0];
        }

        v9 = v11 + 1;
        *(v7 + 16) = v17 + 1;
        v18 = (v7 + 80 * v17);
        v18[2] = v34;
        v19 = *v35;
        v20 = *&v35[16];
        v21 = v37;
        v18[5] = v36;
        v18[6] = v21;
        v18[3] = v19;
        v18[4] = v20;
      }

      while (v8 - 1 != v11);
    }

LABEL_15:

    v6 = v7;
    v7 = MEMORY[0x1E69E7CC0];
  }

  v22 = *(v6 + 16);
  if (v22)
  {
    v38[0] = v7;
    sub_1C0600B00(0, v22, 0);
    v7 = v38[0];
    v23 = v22 - 1;
    for (i = 32; ; i += 80)
    {
      v26 = *(v6 + i + 48);
      v25 = *(v6 + i + 64);
      v27 = *(v6 + i + 16);
      *&v35[16] = *(v6 + i + 32);
      v36 = v26;
      v28 = *(v6 + i);
      v37 = v25;
      v34 = v28;
      *v35 = v27;
      sub_1C0519E14(&v34, &v31);

      v38[0] = v7;
      v30 = *(v7 + 16);
      v29 = *(v7 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_1C0600B00((v29 > 1), v30 + 1, 1);
        v7 = v38[0];
      }

      v32 = &type metadata for Node;
      v33 = &off_1F3F9F6A8;
      v31 = v37;
      *(v7 + 16) = v30 + 1;
      sub_1C0531D80(&v31, v7 + 40 * v30 + 32);
      if (!v23)
      {
        break;
      }

      --v23;
    }
  }

  return v7;
}

double sub_1C0670F1C@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = v2[1];
  v6 = *a1;
  swift_unownedRetainStrong();
  v7 = v5[7];

  if (*(v6 + 16) && (v8 = *(v6 + 40), v9 = sub_1C095DFDC(), v10 = -1 << *(v6 + 32), v11 = v9 & ~v10, ((*(v6 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0))
  {
    v12 = ~v10;
    while (*(*(v6 + 48) + 8 * v11) != v7)
    {
      v11 = (v11 + 1) & v12;
      if (((*(v6 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    *(a2 + 96) = 0;
    result = 0.0;
    *(a2 + 64) = 0u;
    *(a2 + 80) = 0u;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  else
  {
LABEL_6:
    swift_unownedRetainStrong();
    v13 = v5[7];

    sub_1C051DFC8(&v76, v13);
    swift_unownedRetainStrong();
    v14 = v5[9];
    v15 = v5[11];
    v53 = v5[10];
    v54 = v5[8];
    v55 = v5[12];

    v56 = v14;

    v83 = 1;
    *&v76 = v4;
    *(&v76 + 1) = v5;
    v16 = Node.stringValue.getter();
    v52 = v17;
    if (v17)
    {
      v51 = v16;
    }

    else
    {
      v51 = 0;
    }

    *&v76 = v4;
    *(&v76 + 1) = v5;
    v18 = Node.int64Value.getter();
    if (v19)
    {
      v50 = 0;
    }

    else
    {
      v50 = v18;
      v83 = 0;
    }

    swift_unownedRetainStrong();
    swift_beginAccess();
    v49 = v5[13];

    swift_unownedRetainStrong();
    v48 = v5[14];

    *&v76 = v4;
    *(&v76 + 1) = v5;
    v67 = 0uLL;
    v62 = 0uLL;
    v20 = sub_1C0519A28(&v76, &v67, &v62);
    v21 = *(v20 + 16);
    v22 = MEMORY[0x1E69E7CC0];
    if (v21)
    {
      v47 = a2;
      v61 = v21 - 1;
      v23 = 32;
      v24 = v20;
      v57 = v20;
      while (1)
      {
        v25 = *(v24 + v23 + 32);
        v26 = *(v24 + v23 + 48);
        v27 = *(v24 + v23 + 64);
        v63 = *(v24 + v23 + 16);
        v64 = v25;
        v65 = v26;
        v66 = v27;
        v62 = *(v24 + v23);
        v28 = v25;
        v60 = *(&v63 + 1);
        v75 = v27;
        sub_1C0519E14(&v62, v74);
        sub_1C0670F1C(&v76, a1);
        v29 = *(&v76 + 1);
        v69 = v79;
        v70 = v80;
        v71 = v81;
        *&v72 = v82;
        v67 = v77;
        v68 = v78;
        if (*(&v76 + 1))
        {
          v59 = v76;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v22 = sub_1C0577E98(0, v22[2] + 1, 1, v22);
          }

          v30 = v22;
          v31 = v22[2];
          v32 = v30;
          v33 = v30[3];
          if (v31 >= v33 >> 1)
          {
            v32 = sub_1C0577E98((v33 > 1), v31 + 1, 1, v32);
          }

          swift_unownedRelease();

          *&v81 = v72;
          v79 = v70;
          v80 = v71;
          v77 = v68;
          v78 = v69;
          v76 = v67;
          v32[2] = v31 + 1;
          v34 = &v32[15 * v31];
          v22 = v32;
          v34[4] = v60;
          v34[5] = v28;
          v34[6] = v59;
          v34[7] = v29;
          v35 = v77;
          *(v34 + 4) = v76;
          *(v34 + 5) = v35;
          v36 = v78;
          v37 = v79;
          v38 = v80;
          v34[18] = v81;
          *(v34 + 7) = v37;
          *(v34 + 8) = v38;
          *(v34 + 6) = v36;
          v24 = v57;
          v39 = v61;
          if (!v61)
          {
LABEL_23:

            a2 = v47;
            v40 = v22;
            v22 = MEMORY[0x1E69E7CC0];
            goto LABEL_25;
          }
        }

        else
        {

          swift_unownedRelease();

          v39 = v61;
          if (!v61)
          {
            goto LABEL_23;
          }
        }

        v61 = v39 - 1;
        v23 += 80;
      }
    }

    v40 = MEMORY[0x1E69E7CC0];
LABEL_25:
    *&v67 = v54;
    *(&v67 + 1) = v56;
    *&v68 = v53;
    *(&v68 + 1) = v15;
    *&v69 = v55;
    *(&v69 + 1) = v51;
    *&v70 = v52;
    *(&v70 + 1) = v50;
    v41 = v74[0];
    *(&v71 + 1) = v74[0];
    DWORD1(v71) = *(v74 + 3);
    LOBYTE(v71) = v83;
    v42 = v83;
    *(&v71 + 1) = v49;
    *&v72 = v48;
    *(&v72 + 1) = v40;
    v73 = v22;
    *(a2 + 96) = v22;
    v43 = v68;
    *a2 = v67;
    *(a2 + 16) = v43;
    v44 = v72;
    *(a2 + 64) = v71;
    *(a2 + 80) = v44;
    v45 = v70;
    *(a2 + 32) = v69;
    *(a2 + 48) = v45;
    *&v76 = v54;
    *(&v76 + 1) = v56;
    *&v77 = v53;
    *(&v77 + 1) = v15;
    *&v78 = v55;
    *(&v78 + 1) = v51;
    *&v79 = v52;
    *(&v79 + 1) = v50;
    LOBYTE(v80) = v42;
    DWORD1(v80) = *(v74 + 3);
    *(&v80 + 1) = v41;
    *(&v80 + 1) = v49;
    *&v81 = v48;
    *(&v81 + 1) = v40;
    v82 = v22;
    sub_1C05AF88C(&v67, &v62);
    sub_1C05AF8E8(&v76);
  }

  return result;
}

uint64_t sub_1C06713CC(void (*a1)(uint64_t *, uint64_t *, char *))
{
  v19 = *v1;
  v11[0] = 0;
  v11[1] = 0;
  v15 = 0;
  *&v16 = 0;
  result = sub_1C0519A28(&v19, v11, &v15);
  v3 = result;
  v9 = *(result + 16);
  if (!v9)
  {
  }

  v4 = 0;
  v5 = 32;
  while (v4 < *(v3 + 16))
  {
    v6 = *(v3 + v5 + 32);
    v8 = *(v3 + v5 + 48);
    v7 = *(v3 + v5 + 64);
    v20 = *(v3 + v5 + 16);
    v21 = v6;
    v22 = v8;
    v23 = v7;
    v19 = *(v3 + v5);
    v18 = 1;
    v15 = *(&v20 + 1);
    v16 = v6;
    v17 = v8;
    v13 = &type metadata for Node;
    v14 = &off_1F3F9F6A8;
    *v12 = v7;
    sub_1C0519E14(&v19, v11);

    swift_unownedRetain();
    a1(&v15, v12, &v18);

    swift_unownedRelease();

    result = __swift_destroy_boxed_opaque_existential_1(v12);
    if (v18)
    {
      ++v4;
      v5 += 80;
      if (v9 != v4)
      {
        continue;
      }
    }
  }

  __break(1u);
  return result;
}

void sub_1C067157C(uint64_t a1@<X8>)
{
  v16 = MEMORY[0x1E69E7CD0];
  v7 = *v1;
  sub_1C0670F1C(&v16, &v8);
  v3 = v9;
  if (v9)
  {
    v4 = v8;

    *a1 = v4;
    *(a1 + 8) = v3;
    v5 = v13;
    *(a1 + 48) = v12;
    *(a1 + 64) = v5;
    *(a1 + 80) = v14;
    *(a1 + 96) = v15;
    v6 = v11;
    *(a1 + 16) = v10;
    *(a1 + 32) = v6;
  }

  else
  {
    __break(1u);
  }
}

void Siri_Nl_Core_Protocol_OrchestrationResponseStatus.code.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t Siri_Nl_Core_Protocol_OrchestrationResponseStatus.code.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t Siri_Nl_Core_Protocol_OrchestrationResponseStatus.description_p.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t Siri_Nl_Core_Protocol_OrchestrationResponseStatus.description_p.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t Siri_Nl_Core_Protocol_OrchestrationResponseStatus.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Siri_Nl_Core_Protocol_OrchestrationResponseStatus() + 24);
  v4 = sub_1C095D38C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for Siri_Nl_Core_Protocol_OrchestrationResponseStatus()
{
  result = qword_1EBE19138;
  if (!qword_1EBE19138)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Siri_Nl_Core_Protocol_OrchestrationResponseStatus.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nl_Core_Protocol_OrchestrationResponseStatus() + 24);
  v4 = sub_1C095D38C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Siri_Nl_Core_Protocol_OrchestrationResponseStatus.StatusCode.init(rawValue:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result == 101)
  {
    v2 = 1;
  }

  else
  {
    v2 = result;
  }

  if (!result)
  {
    v2 = 0;
  }

  *a2 = v2;
  if (result)
  {
    v3 = result == 101;
  }

  else
  {
    v3 = 1;
  }

  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

uint64_t Siri_Nl_Core_Protocol_OrchestrationResponseStatus.StatusCode.rawValue.getter()
{
  v1 = 101;
  if (!*v0)
  {
    v1 = 0;
  }

  if (v0[8])
  {
    return v1;
  }

  else
  {
    return *v0;
  }
}

uint64_t sub_1C06718CC@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = result == 0;
  if (result == 101)
  {
    v3 = 1;
  }

  else
  {
    v3 = result;
  }

  *a2 = v3;
  if (result == 101)
  {
    v2 = 1;
  }

  *(a2 + 8) = v2;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1C06718F8()
{
  v1 = 101;
  if (!*v0)
  {
    v1 = 0;
  }

  if (v0[8])
  {
    return v1;
  }

  else
  {
    return *v0;
  }
}

uint64_t *sub_1C0671918@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result == 0;
  v4 = *result == 101;
  if (*result == 101)
  {
    v2 = 1;
  }

  *a2 = v2;
  v5 = v4 || v3;
  *(a2 + 8) = v5;
  *(a2 + 9) = 0;
  return result;
}

void sub_1C0671948(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 101;
  if (!*v1)
  {
    v3 = 0;
  }

  if (*(v1 + 8))
  {
    v2 = v3;
  }

  *a1 = v2;
}

uint64_t sub_1C067196C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C0671F28();

  return MEMORY[0x1EEE3F550](a1, a2, v4);
}

BOOL sub_1C06719B8(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = 101;
  }

  else
  {
    v3 = 0;
  }

  if (*(a1 + 8))
  {
    v2 = v3;
  }

  if (*a2)
  {
    v4 = 101;
  }

  else
  {
    v4 = 0;
  }

  if (!*(a2 + 8))
  {
    v4 = *a2;
  }

  return v2 == v4;
}

uint64_t Siri_Nl_Core_Protocol_OrchestrationResponseStatus.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  v1 = a1 + *(type metadata accessor for Siri_Nl_Core_Protocol_OrchestrationResponseStatus() + 24);
  return _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
}

uint64_t static Siri_Nl_Core_Protocol_OrchestrationResponseStatus.StatusCode.allCases.setter(void *a1)
{
  swift_beginAccess();
  off_1EBE190B0 = a1;
}

uint64_t sub_1C0671B30@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = off_1EBE190B0;
}

uint64_t sub_1C0671B9C()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE190B8);
  __swift_project_value_buffer(v0, qword_1EBE190B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C096E0D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 2;
  *v6 = "code";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69D26E0];
  v8 = sub_1C095D6BC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "description";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  return sub_1C095D6CC();
}

uint64_t Siri_Nl_Core_Protocol_OrchestrationResponseStatus.decodeMessage<A>(decoder:)()
{
  result = sub_1C095D41C();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 2)
      {
        sub_1C0671F28();
        sub_1C095D45C();
      }

      else if (result == 3)
      {
        sub_1C095D50C();
      }

      result = sub_1C095D41C();
    }
  }

  return result;
}

uint64_t Siri_Nl_Core_Protocol_OrchestrationResponseStatus.traverse<A>(visitor:)()
{
  if (!*v0 || (v6 = *v0, v7 = *(v0 + 8), sub_1C0671F28(), result = sub_1C095D60C(), !v1))
  {
    v3 = v0[3];
    v4 = HIBYTE(v3) & 0xF;
    if ((v3 & 0x2000000000000000) == 0)
    {
      v4 = v0[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v4 || (result = sub_1C095D66C(), !v1))
    {
      v5 = v0 + *(type metadata accessor for Siri_Nl_Core_Protocol_OrchestrationResponseStatus() + 24);
      return sub_1C095D36C();
    }
  }

  return result;
}

unint64_t sub_1C0671F28()
{
  result = qword_1EBE190E8;
  if (!qword_1EBE190E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE190E8);
  }

  return result;
}

uint64_t Siri_Nl_Core_Protocol_OrchestrationResponseStatus.hashValue.getter()
{
  sub_1C095DFEC();
  type metadata accessor for Siri_Nl_Core_Protocol_OrchestrationResponseStatus();
  sub_1C0672844(&qword_1EBE190F0, type metadata accessor for Siri_Nl_Core_Protocol_OrchestrationResponseStatus);
  sub_1C095D71C();
  return sub_1C095E03C();
}

uint64_t sub_1C0672054(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C0672844(&qword_1EBE19148, type metadata accessor for Siri_Nl_Core_Protocol_OrchestrationResponseStatus);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C06720F4(uint64_t a1)
{
  v2 = sub_1C0672844(&qword_1EBE19128, type metadata accessor for Siri_Nl_Core_Protocol_OrchestrationResponseStatus);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C0672160()
{
  sub_1C0672844(&qword_1EBE19128, type metadata accessor for Siri_Nl_Core_Protocol_OrchestrationResponseStatus);

  return sub_1C095D5AC();
}

uint64_t sub_1C06721E0()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE190D0);
  __swift_project_value_buffer(v0, qword_1EBE190D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C096E0D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "SUCCESS";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69D26E0];
  v8 = sub_1C095D6BC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 101;
  *v10 = "EMPTY_NLU_REQUEST";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  return sub_1C095D6CC();
}

uint64_t _s12SiriOntology0A45_Nl_Core_Protocol_OrchestrationResponseStatusV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = 101;
  if (!*a1)
  {
    v4 = 0;
  }

  if (*(a1 + 8))
  {
    v2 = v4;
  }

  if (*(a2 + 8) == 1)
  {
    if (v3)
    {
      if (v2 != 101)
      {
        return 0;
      }
    }

    else if (v2)
    {
      return 0;
    }
  }

  else if (v2 != v3)
  {
    return 0;
  }

  v5 = *(a1 + 16) == a2[2] && *(a1 + 24) == a2[3];
  if (v5 || (sub_1C095DF3C() & 1) != 0)
  {
    v6 = *(type metadata accessor for Siri_Nl_Core_Protocol_OrchestrationResponseStatus() + 24);
    sub_1C095D38C();
    sub_1C0672844(&qword_1EBE16B78, MEMORY[0x1E69D26B8]);
    return sub_1C095D73C() & 1;
  }

  return 0;
}

unint64_t sub_1C06724FC()
{
  result = qword_1EBE190F8;
  if (!qword_1EBE190F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE190F8);
  }

  return result;
}

unint64_t sub_1C0672554()
{
  result = qword_1EBE19100;
  if (!qword_1EBE19100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE19100);
  }

  return result;
}

unint64_t sub_1C06725AC()
{
  result = qword_1EBE19108;
  if (!qword_1EBE19108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE19108);
  }

  return result;
}

unint64_t sub_1C0672604()
{
  result = qword_1EBE19110;
  if (!qword_1EBE19110)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE19118, &qword_1C0982498);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE19110);
  }

  return result;
}

uint64_t sub_1C06727B0()
{
  result = sub_1C095D38C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C0672844(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static AddressOntologyNode.StreetAddressNode.streetNameNode.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E40, &qword_1C0970530);

  return swift_initStaticObject();
}

uint64_t static AddressOntologyNode.StreetAddressNode.streetNumberNode.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E40, &qword_1C0970530);

  return swift_initStaticObject();
}

uint64_t static AddressOntologyNode.StreetAddressNode.streetTypeNode.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17A28, &unk_1C0972FA0);

  return swift_initStaticObject();
}

uint64_t static AddressOntologyNode.StreetAddressNode.crossStreetNameNode.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E40, &qword_1C0970530);

  return swift_initStaticObject();
}

uint64_t static AddressOntologyNode.StreetAddressNode.crossStreetTypeNode.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17A28, &unk_1C0972FA0);

  return swift_initStaticObject();
}

uint64_t static AddressOntologyNode.StreetAddressNode.crossStreetJoinNode.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17A20, &unk_1C0972F90);

  return swift_initStaticObject();
}

uint64_t sub_1C0672A0C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16EA0, &qword_1C0973000);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1C09787B0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E40, &qword_1C0970530);
  inited = swift_initStaticObject();
  *(v0 + 56) = v1;
  *(v0 + 64) = &protocol witness table for TerminalOntologyNode<A>;
  *(v0 + 32) = inited;
  v3 = swift_initStaticObject();
  *(v0 + 96) = v1;
  *(v0 + 104) = &protocol witness table for TerminalOntologyNode<A>;
  *(v0 + 72) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17A28, &unk_1C0972FA0);
  v5 = swift_initStaticObject();
  *(v0 + 136) = v4;
  *(v0 + 144) = &protocol witness table for TerminalOntologyNode<A>;
  *(v0 + 112) = v5;
  v6 = swift_initStaticObject();
  *(v0 + 176) = v1;
  *(v0 + 184) = &protocol witness table for TerminalOntologyNode<A>;
  *(v0 + 152) = v6;
  v7 = swift_initStaticObject();
  *(v0 + 216) = v4;
  *(v0 + 224) = &protocol witness table for TerminalOntologyNode<A>;
  *(v0 + 192) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17A20, &unk_1C0972F90);
  result = swift_initStaticObject();
  *(v0 + 256) = v8;
  *(v0 + 264) = &protocol witness table for TerminalOntologyNode<A>;
  *(v0 + 232) = result;
  qword_1EBE19150 = v0;
  return result;
}

uint64_t static AddressOntologyNode.StreetAddressNode.childNodes.getter()
{
  if (qword_1EBE15668 != -1)
  {
    swift_once();
  }
}

uint64_t AddressOntologyNode.StreetAddressNode.__allocating_init(name:multicardinal:)(uint64_t a1, uint64_t a2, char a3)
{
  v6 = swift_allocObject();
  if (qword_1EBE15668 != -1)
  {
    v10 = v6;
    swift_once();
    v6 = v10;
  }

  v7 = qword_1EBE19150;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3 & 1;
  *(v6 + 40) = v7;
  v8 = v6;

  return v8;
}

uint64_t AddressOntologyNode.StreetAddressNode.init(name:multicardinal:)(uint64_t a1, uint64_t a2, char a3)
{
  if (qword_1EBE15668 != -1)
  {
    v6 = a1;
    v7 = a2;
    v8 = a3;
    swift_once();
    a1 = v6;
    a2 = v7;
    a3 = v8;
  }

  v4 = qword_1EBE19150;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3 & 1;
  *(v3 + 40) = v4;

  return v3;
}

uint64_t AddressOntologyNode.StreetAddressNode.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return v0;
}

uint64_t AddressOntologyNode.StreetAddressNode.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t Node.connectedNodes(nodeKind:edgeKind:)(__int128 *a1, __int128 *a2)
{
  v3 = *v2;
  v6 = *a2;
  v7 = v3;
  v5 = *a1;
  return sub_1C0519A28(&v7, &v6, &v5);
}

uint64_t Node.name.getter@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 8);
  swift_unownedRetainStrong();
  v5 = v3[8];
  v4 = v3[9];
  v7 = v3[10];
  v6 = v3[11];
  v8 = v3[12];

  *a1 = v5;
  a1[1] = v4;
  a1[2] = v7;
  a1[3] = v6;
  a1[4] = v8;
  return result;
}

uint64_t Node.vertex.getter()
{
  v1 = *(v0 + 8);
  v2 = *(swift_unownedRetainStrong() + 56);

  return v2;
}

uint64_t Node.identifiers.setter(uint64_t a1)
{
  v3 = *(v1 + 8);
  swift_unownedRetainStrong();
  swift_beginAccess();
  v4 = *(v3 + 104);
  *(v3 + 104) = a1;
}

uint64_t Node.utteranceAlignments.setter(uint64_t a1)
{
  v3 = *(v1 + 8);
  v4 = swift_unownedRetainStrong();
  v5 = *(v4 + 112);
  *(v4 + 112) = a1;
}

uint64_t Node.identifiers.getter()
{
  v1 = *(v0 + 8);
  swift_unownedRetainStrong();
  swift_beginAccess();
  v2 = *(v1 + 104);

  return v2;
}

uint64_t Node.utteranceAlignments.getter()
{
  v1 = *(v0 + 8);
  swift_unownedRetainStrong();
  v2 = *(v1 + 112);

  return v2;
}

uint64_t Node.entitySpans.getter()
{
  v1 = *(v0 + 8);
  swift_unownedRetainStrong();
  swift_beginAccess();
  v2 = *(v1 + 120);

  return v2;
}

uint64_t Node.kind.getter@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 8);
  swift_unownedRetainStrong();
  v5 = *(v3 + 80);
  v4 = *(v3 + 88);

  *a1 = v5;
  a1[1] = v4;
  return result;
}

uint64_t sub_1C06730BC@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 8);
  swift_unownedRetainStrong();
  v5 = *(v3 + 80);
  v4 = *(v3 + 88);

  *a1 = v5;
  a1[1] = v4;
  return result;
}

uint64_t sub_1C0673108@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 8);
  swift_unownedRetainStrong();
  v5 = v3[8];
  v4 = v3[9];
  v7 = v3[10];
  v6 = v3[11];
  v8 = v3[12];

  *a1 = v5;
  a1[1] = v4;
  a1[2] = v7;
  a1[3] = v6;
  a1[4] = v8;
  return result;
}

uint64_t sub_1C06731A4()
{
  v1 = *(v0 + 8);
  swift_unownedRetainStrong();
  swift_beginAccess();
  v2 = *(v1 + 104);

  return v2;
}

uint64_t sub_1C0673200()
{
  v1 = *(v0 + 8);
  swift_unownedRetainStrong();
  v2 = *(v1 + 112);

  return v2;
}

uint64_t sub_1C0673240()
{
  v1 = *(v0 + 8);
  swift_unownedRetainStrong();
  swift_beginAccess();
  v2 = *(v1 + 120);

  return v2;
}

uint64_t sub_1C067329C(uint64_t a1, uint64_t a2, char a3)
{
  sub_1C095DFEC();
  if ((a3 & 1) == 0)
  {
    MEMORY[0x1C68DDE90](0);
    if ((a2 & 1) == 0)
    {
      sub_1C095E00C();
      MEMORY[0x1C68DDEC0](a1);
      return sub_1C095E03C();
    }

    goto LABEL_5;
  }

  MEMORY[0x1C68DDE90](1);
  if (!a2)
  {
LABEL_5:
    sub_1C095E00C();
    return sub_1C095E03C();
  }

  sub_1C095E00C();
  sub_1C095D7BC();
  return sub_1C095E03C();
}

uint64_t sub_1C0673360()
{
  v1 = *v0;
  v2 = v0[1];
  if ((v0[2] & 1) == 0)
  {
    MEMORY[0x1C68DDE90](0);
    if ((v2 & 1) == 0)
    {
      sub_1C095E00C();
      return MEMORY[0x1C68DDEC0](v1);
    }

    return sub_1C095E00C();
  }

  MEMORY[0x1C68DDE90](1);
  if (!v2)
  {
    return sub_1C095E00C();
  }

  sub_1C095E00C();

  return sub_1C095D7BC();
}

uint64_t sub_1C0673400()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_1C095DFEC();
  if ((v3 & 1) == 0)
  {
    MEMORY[0x1C68DDE90](0);
    if ((v2 & 1) == 0)
    {
      sub_1C095E00C();
      MEMORY[0x1C68DDEC0](v1);
      return sub_1C095E03C();
    }

    goto LABEL_5;
  }

  MEMORY[0x1C68DDE90](1);
  if (!v2)
  {
LABEL_5:
    sub_1C095E00C();
    return sub_1C095E03C();
  }

  sub_1C095E00C();
  sub_1C095D7BC();
  return sub_1C095E03C();
}

uint64_t sub_1C06734CC()
{
  v1 = *(v0 + 40);
  if (v1 == 255)
  {
    goto LABEL_6;
  }

  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  sub_1C095E00C();
  if ((v1 & 1) == 0)
  {
    MEMORY[0x1C68DDE90](0);
    if ((v3 & 1) == 0)
    {
      sub_1C095E00C();
      MEMORY[0x1C68DDEC0](v2);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  MEMORY[0x1C68DDE90](1);
  if (!v3)
  {
LABEL_6:
    sub_1C095E00C();
    goto LABEL_7;
  }

  sub_1C095E00C();
  sub_1C095D7BC();
LABEL_7:
  MEMORY[0x1C68DDEC0](*(v0 + 56));
  v4 = *(v0 + 64);
  v5 = *(v0 + 72);
  v6 = *(v0 + 80);
  v7 = *(v0 + 88);
  v8 = *(v0 + 96);
  sub_1C095D7BC();
  sub_1C095D7BC();
  if (!v8)
  {
    return sub_1C095E00C();
  }

  sub_1C095E00C();
  if (!v8[3])
  {
    return sub_1C095E00C();
  }

  v10 = v8[8];
  v9 = v8[9];
  v12 = v8[6];
  v11 = v8[7];
  v14 = v8[4];
  v13 = v8[5];
  v15 = v8[2];
  sub_1C095E00C();
  sub_1C095D7BC();
  sub_1C095D7BC();
  sub_1C095D7BC();

  return sub_1C095D7BC();
}

uint64_t sub_1C0673644()
{
  v1 = *v0;
  sub_1C095DFEC();
  sub_1C06734CC();
  return sub_1C095E03C();
}

uint64_t sub_1C06736AC()
{
  sub_1C095DFEC();
  v1 = *v0;
  sub_1C06734CC();
  return sub_1C095E03C();
}

uint64_t sub_1C06736F8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 8);
  swift_unownedRetainStrong();
  swift_beginAccess();
  v4 = *(v3 + 104);

  *a2 = v4;
  return result;
}

uint64_t sub_1C0673760(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = a2[1];
  swift_unownedRetainStrong();
  swift_beginAccess();
  v5 = *(v4 + 104);
  *(v4 + 104) = v2;

  swift_unownedRetain();

  return swift_unownedRelease();
}

void (*Node.identifiers.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  v6 = v1[1];
  *(v3 + 80) = v5;
  *(v3 + 88) = v6;
  swift_unownedRetainStrong();
  swift_beginAccess();
  v7 = *(v6 + 104);

  *(v4 + 72) = v7;
  return sub_1C0673898;
}

void sub_1C0673898(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 72);
  v5 = *(*a1 + 88);
  swift_unownedRetainStrong();
  v7 = v3[10];
  v6 = v3[11];
  swift_beginAccess();
  if (a2)
  {
    v8 = *(v6 + 104);
    *(v6 + 104) = v4;

    swift_unownedRetain();

    swift_unownedRelease();
    v9 = v3[9];
  }

  else
  {
    v10 = *(v6 + 104);
    *(v6 + 104) = v4;

    swift_unownedRetain();

    swift_unownedRelease();
  }

  free(v3);
}

uint64_t sub_1C06739A0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = a2[1];
  swift_unownedRetainStrong();
  v5 = *(v4 + 112);
  *(v4 + 112) = v2;

  swift_unownedRetain();

  return swift_unownedRelease();
}

uint64_t (*Node.utteranceAlignments.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = *v1;
  v4 = v1[1];
  a1[1] = v3;
  a1[2] = v4;
  swift_unownedRetainStrong();
  v5 = *(v4 + 112);

  *a1 = v5;
  return sub_1C0673A8C;
}

uint64_t sub_1C0673A8C(uint64_t *a1, char a2)
{
  v4 = a1[2];
  v5 = *a1;
  swift_unownedRetainStrong();
  v6 = *(v4 + 112);
  *(v4 + 112) = v5;
  v7 = a1[1];
  if (a2)
  {

    swift_unownedRetain();

    swift_unownedRelease();
  }

  else
  {

    swift_unownedRetain();

    return swift_unownedRelease();
  }
}

uint64_t sub_1C0673B7C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 8);
  swift_unownedRetainStrong();
  swift_beginAccess();
  v4 = *(v3 + 120);

  *a2 = v4;
  return result;
}

uint64_t sub_1C0673BE4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = a2[1];
  swift_unownedRetainStrong();
  swift_beginAccess();
  v5 = *(v4 + 120);
  *(v4 + 120) = v2;

  swift_unownedRetain();

  return swift_unownedRelease();
}

uint64_t Node.entitySpans.setter(uint64_t a1)
{
  v3 = *(v1 + 8);
  swift_unownedRetainStrong();
  swift_beginAccess();
  v4 = *(v3 + 120);
  *(v3 + 120) = a1;
}

void (*Node.entitySpans.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  v6 = v1[1];
  *(v3 + 80) = v5;
  *(v3 + 88) = v6;
  swift_unownedRetainStrong();
  swift_beginAccess();
  v7 = *(v6 + 120);

  *(v4 + 72) = v7;
  return sub_1C0673D84;
}

void sub_1C0673D84(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 72);
  v5 = *(*a1 + 88);
  swift_unownedRetainStrong();
  v7 = v3[10];
  v6 = v3[11];
  swift_beginAccess();
  if (a2)
  {
    v8 = *(v6 + 120);
    *(v6 + 120) = v4;

    swift_unownedRetain();

    swift_unownedRelease();
    v9 = v3[9];
  }

  else
  {
    v10 = *(v6 + 120);
    *(v6 + 120) = v4;

    swift_unownedRetain();

    swift_unownedRelease();
  }

  free(v3);
}

uint64_t Node.normalizedStringPayloads.getter()
{
  v1 = *(v0 + 8);
  swift_unownedRetainStrong();
  v3 = v1[8];
  v2 = v1[9];

  if (qword_1ED5D7CA0 != -1)
  {
    swift_once();
  }

  if (v3 == xmmword_1ED5D7CA8 && v2 == *(&xmmword_1ED5D7CA8 + 1))
  {

    goto LABEL_10;
  }

  v5 = sub_1C095DF3C();

  if (v5)
  {
LABEL_10:
    swift_unownedRetainStrong();
    v6 = v1[6];

    return v6;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t Node.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 8);
  swift_unownedRetainStrong();
  v4 = v3[8];
  v5 = v3[9];
  v7 = v3[10];
  v6 = v3[11];
  v8 = v3[12];

  sub_1C095D7BC();
  sub_1C095D7BC();
  if (v8 && (sub_1C095E00C(), v8[3]))
  {
    v44 = v8[8];
    v45 = v8[9];
    v42 = v8[6];
    v43 = v8[7];
    v10 = v8[4];
    v9 = v8[5];
    v11 = v8[2];
    sub_1C095E00C();
    sub_1C095D7BC();
    sub_1C095D7BC();
    sub_1C095D7BC();
    sub_1C095D7BC();
  }

  else
  {
    sub_1C095E00C();
  }

  swift_unownedRetainStrong();
  v12 = v3[7];

  MEMORY[0x1C68DDEC0](v12);
  swift_unownedRetainStrong();
  swift_beginAccess();
  v13 = v3[13];

  sub_1C0571154(a1, v13);

  swift_unownedRetainStrong();
  v14 = v3[14];

  sub_1C057106C(a1, v14);

  swift_unownedRetainStrong();
  v16 = v3[8];
  v15 = v3[9];

  if (qword_1ED5D7CA0 != -1)
  {
    swift_once();
  }

  if (__PAIR128__(v15, v16) == xmmword_1ED5D7CA8)
  {

LABEL_10:
    swift_unownedRetainStrong();
    v18 = v3[6];

    goto LABEL_12;
  }

  v17 = sub_1C095DF3C();

  if (v17)
  {
    goto LABEL_10;
  }

  v18 = MEMORY[0x1E69E7CC0];
LABEL_12:
  MEMORY[0x1C68DDE90](*(v18 + 16));
  v19 = *(v18 + 16);
  if (v19)
  {
    v20 = (v18 + 40);
    do
    {
      v21 = *(v20 - 1);
      v22 = *v20;

      sub_1C095D7BC();

      v20 += 2;
      --v19;
    }

    while (v19);
  }

  swift_unownedRetainStrong();
  swift_beginAccess();
  v23 = v3[15];

  MEMORY[0x1C68DDE90](*(v23 + 16));
  v24 = *(v23 + 16);
  if (v24)
  {
    v25 = v24 - 1;
    for (i = 32; ; i += 192)
    {
      v27 = *(v23 + i);
      v28 = *(v23 + i + 16);
      v29 = *(v23 + i + 48);
      v47[2] = *(v23 + i + 32);
      v47[3] = v29;
      v47[0] = v27;
      v47[1] = v28;
      v30 = *(v23 + i + 64);
      v31 = *(v23 + i + 80);
      v32 = *(v23 + i + 112);
      v47[6] = *(v23 + i + 96);
      v47[7] = v32;
      v47[4] = v30;
      v47[5] = v31;
      v33 = *(v23 + i + 128);
      v34 = *(v23 + i + 144);
      v35 = *(v23 + i + 160);
      *(v48 + 9) = *(v23 + i + 169);
      v47[9] = v34;
      v48[0] = v35;
      v47[8] = v33;
      v36 = *(v23 + i + 144);
      v59 = *(v23 + i + 128);
      v60 = v36;
      v61[0] = *(v23 + i + 160);
      *(v61 + 9) = *(v23 + i + 169);
      v37 = *(v23 + i + 80);
      v55 = *(v23 + i + 64);
      v56 = v37;
      v38 = *(v23 + i + 112);
      v57 = *(v23 + i + 96);
      v58 = v38;
      v39 = *(v23 + i + 16);
      v51 = *(v23 + i);
      v52 = v39;
      v40 = *(v23 + i + 48);
      v53 = *(v23 + i + 32);
      v54 = v40;
      sub_1C0521E78(v47, v46);
      UsoEntitySpan.hash(into:)(a1);
      v49[8] = v59;
      v49[9] = v60;
      v50[0] = v61[0];
      *(v50 + 9) = *(v61 + 9);
      v49[4] = v55;
      v49[5] = v56;
      v49[6] = v57;
      v49[7] = v58;
      v49[0] = v51;
      v49[1] = v52;
      v49[2] = v53;
      v49[3] = v54;
      sub_1C05755CC(v49);
      if (!v25)
      {
        break;
      }

      --v25;
    }
  }
}

uint64_t Node.addUsoIdentifier(usoIdentifier:)(__int128 *a1)
{
  v2 = a1[2];
  v3 = a1[4];
  v20 = a1[3];
  v21[0] = v3;
  *(v21 + 9) = *(a1 + 73);
  v4 = a1[1];
  v17 = *a1;
  v18 = v4;
  v19 = v2;
  v5 = *(v1 + 8);
  swift_unownedRetainStrong();
  swift_beginAccess();
  v6 = *(v5 + 104);
  sub_1C0518B04(&v17, v16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + 104) = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_1C0519CF8(0, *(v6 + 2) + 1, 1, v6);
    *(v5 + 104) = v6;
  }

  v9 = *(v6 + 2);
  v8 = *(v6 + 3);
  if (v9 >= v8 >> 1)
  {
    v6 = sub_1C0519CF8((v8 > 1), v9 + 1, 1, v6);
  }

  *(v6 + 2) = v9 + 1;
  v10 = &v6[96 * v9];
  v11 = v18;
  *(v10 + 2) = v17;
  *(v10 + 3) = v11;
  v12 = v19;
  v13 = v20;
  v14 = v21[0];
  *(v10 + 105) = *(v21 + 9);
  *(v10 + 5) = v13;
  *(v10 + 6) = v14;
  *(v10 + 4) = v12;
  *(v5 + 104) = v6;
  swift_endAccess();
}

uint64_t Node.addUtteranceAlignment(utteranceAlignment:)(int *a1)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *(v1 + 8);
  swift_unownedRetainStrong();
  v5 = *(v4 + 112);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v4 + 112) = v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = sub_1C052233C(0, *(v5 + 2) + 1, 1, v5);
    *(v4 + 112) = v5;
  }

  v8 = *(v5 + 2);
  v7 = *(v5 + 3);
  if (v8 >= v7 >> 1)
  {
    v5 = sub_1C052233C((v7 > 1), v8 + 1, 1, v5);
  }

  *(v5 + 2) = v8 + 1;
  v9 = &v5[16 * v8];
  *(v9 + 8) = v2;
  *(v9 + 5) = v3;
  *(v4 + 112) = v5;
}

double Node.connect(to:name:order:)@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, int a3@<W2>, _OWORD *a4@<X8>)
{
  v6 = *(a1 + 8);
  v8 = *a2;
  v7 = a2[1];
  v10 = a2[2];
  v9 = a2[3];
  v11 = a2[4];
  v13 = *v4;
  v12 = v4[1];
  v14 = *(swift_unownedRetainStrong() + 56);

  swift_unownedRetainStrong();
  v15 = *(v6 + 56);

  *&v29 = v14;
  *(&v29 + 1) = v15;
  LODWORD(v30) = a3;
  *(&v30 + 1) = v8;
  *&v31 = v7;
  *(&v31 + 1) = v10;
  *&v32 = v9;
  *(&v32 + 1) = v11;
  swift_beginAccess();
  v16 = *(v13 + 16);

  sub_1C0514AC4(&v29, v28);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v13 + 16) = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v16 = sub_1C0514F9C(0, *(v16 + 2) + 1, 1, v16);
    *(v13 + 16) = v16;
  }

  v19 = *(v16 + 2);
  v18 = *(v16 + 3);
  if (v19 >= v18 >> 1)
  {
    v16 = sub_1C0514F9C((v18 > 1), v19 + 1, 1, v16);
  }

  *(v16 + 2) = v19 + 1;
  v20 = &v16[64 * v19];
  v21 = v29;
  v22 = v30;
  v23 = v32;
  *(v20 + 4) = v31;
  *(v20 + 5) = v23;
  *(v20 + 2) = v21;
  *(v20 + 3) = v22;
  *(v13 + 16) = v16;
  swift_endAccess();
  v24 = v30;
  *a4 = v29;
  a4[1] = v24;
  result = *&v31;
  v26 = v32;
  a4[2] = v31;
  a4[3] = v26;
  return result;
}

uint64_t Node.addEntitySpan(entitySpan:)(__int128 *a1)
{
  v2 = a1[9];
  v32 = a1[8];
  v33 = v2;
  v34[0] = a1[10];
  *(v34 + 9) = *(a1 + 169);
  v3 = a1[5];
  v28 = a1[4];
  v29 = v3;
  v4 = a1[7];
  v30 = a1[6];
  v31 = v4;
  v5 = a1[1];
  v24 = *a1;
  v25 = v5;
  v6 = a1[3];
  v26 = a1[2];
  v27 = v6;
  v7 = *(v1 + 8);
  swift_unownedRetainStrong();
  swift_beginAccess();
  v8 = *(v7 + 120);
  sub_1C0521E78(&v24, v23);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v7 + 120) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_1C0522E00(0, *(v8 + 2) + 1, 1, v8);
    *(v7 + 120) = v8;
  }

  v11 = *(v8 + 2);
  v10 = *(v8 + 3);
  if (v11 >= v10 >> 1)
  {
    v8 = sub_1C0522E00((v10 > 1), v11 + 1, 1, v8);
  }

  *(v8 + 2) = v11 + 1;
  v12 = &v8[192 * v11];
  v13 = v24;
  v14 = v25;
  v15 = v27;
  *(v12 + 4) = v26;
  *(v12 + 5) = v15;
  *(v12 + 2) = v13;
  *(v12 + 3) = v14;
  v16 = v28;
  v17 = v29;
  v18 = v31;
  *(v12 + 8) = v30;
  *(v12 + 9) = v18;
  *(v12 + 6) = v16;
  *(v12 + 7) = v17;
  v19 = v32;
  v20 = v33;
  v21 = v34[0];
  *(v12 + 201) = *(v34 + 9);
  *(v12 + 11) = v20;
  *(v12 + 12) = v21;
  *(v12 + 10) = v19;
  *(v7 + 120) = v8;
  swift_endAccess();
}

uint64_t Node.hashValue.getter()
{
  v3 = *v0;
  sub_1C095DFEC();
  Node.hash(into:)(v2);
  return sub_1C095E03C();
}

uint64_t sub_1C06748AC()
{
  v3 = *v0;
  sub_1C095DFEC();
  Node.hash(into:)(v2);
  return sub_1C095E03C();
}

uint64_t sub_1C06748FC()
{
  v3 = *v0;
  sub_1C095DFEC();
  Node.hash(into:)(v2);
  return sub_1C095E03C();
}

uint64_t _s12SiriOntology4NodeV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  swift_unownedRetainStrong();
  v4 = v2[7];

  swift_unownedRetainStrong();
  v5 = v3[7];

  if (v4 != v5)
  {
    goto LABEL_6;
  }

  swift_unownedRetainStrong();
  v7 = v2[8];
  v6 = v2[9];
  v9 = v2[10];
  v8 = v2[11];
  v10 = v2[12];

  v27[0] = v7;
  v27[1] = v6;
  v27[2] = v9;
  v27[3] = v8;
  v27[4] = v10;
  swift_unownedRetainStrong();
  v12 = v3[8];
  v11 = v3[9];
  v14 = v3[10];
  v13 = v3[11];
  v15 = v3[12];

  v26[0] = v12;
  v26[1] = v11;
  v26[2] = v14;
  v26[3] = v13;
  v26[4] = v15;
  LOBYTE(v11) = sub_1C051D4D0(v27, v26);

  if ((v11 & 1) == 0)
  {
    goto LABEL_6;
  }

  swift_unownedRetainStrong();
  swift_beginAccess();
  v16 = v2[13];

  swift_unownedRetainStrong();
  swift_beginAccess();
  v17 = v3[13];

  v18 = sub_1C055AB4C(v16, v17);

  if ((v18 & 1) == 0)
  {
    goto LABEL_6;
  }

  swift_unownedRetainStrong();
  v19 = v2[14];

  swift_unownedRetainStrong();
  v20 = v3[14];

  v21 = sub_1C055ACCC(v19, v20);

  if (v21)
  {
    swift_unownedRetainStrong();
    swift_beginAccess();
    v22 = v2[15];

    swift_unownedRetainStrong();
    swift_beginAccess();
    v23 = v3[15];

    v24 = sub_1C055ADC8(v22, v23);
  }

  else
  {
LABEL_6:
    v24 = 0;
  }

  return v24 & 1;
}

unint64_t sub_1C0674BF0()
{
  result = qword_1EBE19158;
  if (!qword_1EBE19158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE19158);
  }

  return result;
}

uint64_t sub_1C0674C44(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1C0674C8C(uint64_t result, int a2, int a3)
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

uint64_t sub_1C0674CD4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_1C0674D1C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

unint64_t sub_1C0674D80()
{
  result = qword_1EBE19160;
  if (!qword_1EBE19160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE19160);
  }

  return result;
}

unint64_t sub_1C0674DD8()
{
  result = qword_1EBE19168;
  if (!qword_1EBE19168)
  {
    type metadata accessor for NodeRef();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE19168);
  }

  return result;
}

BOOL sub_1C0674E2C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if ((a3 & 1) == 0)
  {
    if ((a6 & 1) == 0)
    {
      if (a2)
      {
        if (a5)
        {
          return 1;
        }
      }

      else if (!(a5 & 1 | (a1 != a4)))
      {
        return 1;
      }
    }

    return 0;
  }

  if ((a6 & 1) == 0)
  {
    return 0;
  }

  if (!a2)
  {
    return !a5;
  }

  if (!a5)
  {
    return 0;
  }

  if (a1 == a4 && a2 == a5)
  {
    return 1;
  }

  return (sub_1C095DF3C() & 1) != 0;
}

uint64_t sub_1C0674EC4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  v3 = *(a2 + 40);
  if (v2 == 255)
  {
    if (v3 == 255)
    {
      goto LABEL_12;
    }

    goto LABEL_15;
  }

  if (v3 == 255)
  {
    goto LABEL_15;
  }

  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  if (v2)
  {
    if (v3)
    {
      if (v5)
      {
        if (!v7)
        {
          goto LABEL_15;
        }

        if (v4 != v6 || v5 != v7)
        {
          v8 = a1;
          v9 = *(a1 + 24);
          v10 = a2;
          v11 = sub_1C095DF3C();
          a2 = v10;
          v12 = v11;
          a1 = v8;
          if ((v12 & 1) == 0)
          {
            goto LABEL_15;
          }
        }
      }

      else if (v7)
      {
        goto LABEL_15;
      }

      goto LABEL_12;
    }

LABEL_15:
    v21 = 0;
    return v21 & 1;
  }

  if (v3)
  {
    goto LABEL_15;
  }

  if (v5)
  {
    if ((v7 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if (v7 & 1 | (v4 != v6))
  {
    goto LABEL_15;
  }

LABEL_12:
  if (*(a1 + 56) != *(a2 + 56))
  {
    goto LABEL_15;
  }

  v13 = *(a1 + 72);
  v14 = *(a1 + 80);
  v15 = *(a1 + 88);
  v16 = *(a1 + 96);
  v24[0] = *(a1 + 64);
  v24[1] = v13;
  v24[2] = v14;
  v24[3] = v15;
  v24[4] = v16;
  v17 = *(a2 + 72);
  v18 = *(a2 + 80);
  v19 = *(a2 + 88);
  v20 = *(a2 + 96);
  v23[0] = *(a2 + 64);
  v23[1] = v17;
  v23[2] = v18;
  v23[3] = v19;
  v23[4] = v20;

  v21 = sub_1C051D4D0(v24, v23);

  return v21 & 1;
}

void static Kind.DefinedValue.getter(uint64_t a1@<X8>)
{
  strcpy(a1, "DefinedValue");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

uint64_t Name.type.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

Swift::String __swiftcall Name.toString()()
{
  v1 = *v0;
  v2 = v0[1];
  v6 = v0[2];
  v7 = v0[3];

  MEMORY[0x1C68DD690](95, 0xE100000000000000);
  MEMORY[0x1C68DD690](v1, v2);
  v3 = v6;
  v4 = v7;
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

uint64_t sub_1C067518C()
{
  if (qword_1ED5D7C68 != -1)
  {
    swift_once();
  }

  qword_1EBE19170 = qword_1ED5D7C70;
  *algn_1EBE19178 = *algn_1ED5D7C78;
  qword_1EBE19180 = qword_1ED5D7C80;
  unk_1EBE19188 = unk_1ED5D7C88;
  qword_1EBE19190 = qword_1ED5D7C90;
}

uint64_t static GraphConstants.Root.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EBE15670 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = *algn_1EBE19178;
  v2 = qword_1EBE19180;
  v3 = unk_1EBE19188;
  v4 = qword_1EBE19190;
  *a1 = qword_1EBE19170;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
}

uint64_t sub_1C06752B4()
{
  if (qword_1ED5BD000 != -1)
  {
    swift_once();
  }

  qword_1EBE19198 = qword_1ED5BD008;
  unk_1EBE191A0 = unk_1ED5BD010;
  qword_1EBE191A8 = qword_1ED5BD018;
  unk_1EBE191B0 = unk_1ED5BD020;
  qword_1EBE191B8 = qword_1ED5BD028;
}

uint64_t static GraphConstants.TaskEdgeName.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EBE15678 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = unk_1EBE191A0;
  v2 = qword_1EBE191A8;
  v3 = unk_1EBE191B0;
  v4 = qword_1EBE191B8;
  *a1 = qword_1EBE19198;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
}

uint64_t sub_1C06753DC()
{
  if (qword_1EBE155F8 != -1)
  {
    swift_once();
  }

  qword_1EBE191C0 = qword_1EBE17F68;
  *algn_1EBE191C8 = unk_1EBE17F70;
  qword_1EBE191D0 = qword_1EBE17F78;
  unk_1EBE191D8 = unk_1EBE17F80;
  qword_1EBE191E0 = qword_1EBE17F88;
}

uint64_t static GraphConstants.EntityEdgeName.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EBE15680 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = *algn_1EBE191C8;
  v2 = qword_1EBE191D0;
  v3 = unk_1EBE191D8;
  v4 = qword_1EBE191E0;
  *a1 = qword_1EBE191C0;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
}

uint64_t sub_1C0675504()
{
  if (qword_1EBE15608 != -1)
  {
    swift_once();
  }

  qword_1EBE191E8 = qword_1EBE17FB8;
  unk_1EBE191F0 = qword_1EBE17FC0;
  qword_1EBE191F8 = qword_1EBE17FC8;
  unk_1EBE19200 = qword_1EBE17FD0;
  qword_1EBE19208 = qword_1EBE17FD8;
}

uint64_t static GraphConstants.Operand.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EBE15688 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = unk_1EBE191F0;
  v2 = qword_1EBE191F8;
  v3 = unk_1EBE19200;
  v4 = qword_1EBE19208;
  *a1 = qword_1EBE191E8;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
}

uint64_t sub_1C067562C()
{
  if (qword_1ED5D7CA0 != -1)
  {
    swift_once();
  }

  xmmword_1EBE19210 = xmmword_1ED5D7CA8;
  xmmword_1EBE19220 = xmmword_1ED5D7CB8;
  qword_1EBE19230 = qword_1ED5D7CC8;
}

uint64_t static GraphConstants.PrimitiveString.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBE15690 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *(&xmmword_1EBE19210 + 1);
  v2 = xmmword_1EBE19220;
  v3 = qword_1EBE19230;
  *a1 = xmmword_1EBE19210;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
}

uint64_t sub_1C0675754()
{
  if (qword_1ED5BDED8 != -1)
  {
    swift_once();
  }

  xmmword_1EBE19238 = xmmword_1ED5BDEE0;
  xmmword_1EBE19248 = xmmword_1ED5BDEF0;
  qword_1EBE19258 = qword_1ED5BDF00;
}

uint64_t static GraphConstants.PrimitiveInteger.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBE15698 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *(&xmmword_1EBE19238 + 1);
  v2 = xmmword_1EBE19248;
  v3 = qword_1EBE19258;
  *a1 = xmmword_1EBE19238;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
}

uint64_t Node.usoIdentifiers.getter()
{
  v1 = *(v0 + 8);
  swift_unownedRetainStrong();
  swift_beginAccess();
  v2 = *(v1 + 104);

  return v2;
}

uint64_t Node.usoIdentifiers.setter(uint64_t a1)
{
  v4 = *v1;
  v3 = v1[1];
  swift_unownedRetainStrong();
  swift_beginAccess();
  v5 = *(v3 + 104);
  *(v3 + 104) = a1;

  swift_unownedRetain();

  return swift_unownedRelease();
}

void (*Node.usoIdentifiers.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(v1 + 8);
  swift_unownedRetainStrong();
  swift_beginAccess();
  v6 = *(v5 + 104);

  *(v4 + 72) = v6;
  return sub_1C0675A08;
}

void sub_1C0675A08(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 72);
  v5 = *(*a1 + 80);
  v7 = *v5;
  v6 = v5[1];
  swift_unownedRetainStrong();
  swift_beginAccess();
  if (a2)
  {
    v8 = *(v6 + 104);
    *(v6 + 104) = v4;
    swift_bridgeObjectRetain_n();

    swift_unownedRetain();

    swift_unownedRelease();
    v9 = v3[9];
  }

  else
  {
    v10 = *(v6 + 104);
    *(v6 + 104) = v4;

    swift_unownedRetain();

    swift_unownedRelease();
  }

  free(v3);
}

uint64_t static UsoProtobufConversionUtils.getUsoGraphFromProtobufGraph(protobufGraph:vocabManager:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = (&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1C0675BBC(a1, v7);

  return sub_1C0798000(v7, a2);
}

uint64_t sub_1C0675BBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static UsoProtobufConversionUtils.getProtoGraphFromUsoGraph(graph:vocabManager:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  result = Graph.protobufGraphSiriNl(vocabManager:)(a1, a2);
  if (!v2)
  {
    v5 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
    return (*(*(v5 - 8) + 56))(a2, 0, 1, v5);
  }

  return result;
}

void *UsoEntityBuilder_uso_unknown_entity.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return v0;
}

uint64_t UsoEntityBuilder_uso_unknown_entity.__deallocating_deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return swift_deallocClassInstance();
}

uint64_t sub_1C0675D64(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1C052569C(0xD000000000000010, 0x80000001C09B7540, (v2 + 152), a1, a2, &qword_1EBE1E230, &qword_1C0993170);
  return swift_endAccess();
}

uint64_t sub_1C0675E38(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1C052569C(0x6974636165526F74, 0xEE00657079546E6FLL, (v2 + 152), a1, a2, &qword_1EBE1E230, &qword_1C0993170);
  return swift_endAccess();
}

uint64_t sub_1C0675F00(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 152);
  if (!*(v5 + 16))
  {
    goto LABEL_16;
  }

  v6 = *(v2 + 152);

  v7 = sub_1C0516A8C(a1, a2);
  if ((v8 & 1) == 0)
  {
    goto LABEL_15;
  }

  v9 = *(*(v5 + 56) + 8 * v7);

  if (!(v9 >> 62))
  {
    if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_15:

    goto LABEL_16;
  }

  result = sub_1C095DCDC();
  if (!result)
  {
    goto LABEL_15;
  }

LABEL_5:
  if ((v9 & 0xC000000000000001) != 0)
  {
    v11 = MEMORY[0x1C68DDAD0](0, v9);
LABEL_8:

    if (v11)
    {
      type metadata accessor for UsoPrimitiveStringBuilder();
      v12 = swift_dynamicCastClass();
      if (v12 && (v14 = *(v12 + 40), v15 = *(v12 + 48), , __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90), swift_dynamicCast()))
      {
        v13 = v16;
      }

      else
      {
        v13 = 0;
      }

      goto LABEL_17;
    }

LABEL_16:
    v13 = 0;
LABEL_17:

    return v13;
  }

  if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v11 = *(v9 + 32);

    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C0676090(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  swift_beginAccess();
  v7 = *(v3 + 152);
  if (!*(v7 + 16))
  {
    goto LABEL_12;
  }

  v8 = *(v3 + 152);

  v9 = sub_1C0516A8C(a1, a2);
  if ((v10 & 1) == 0)
  {
    goto LABEL_11;
  }

  v11 = *(*(v7 + 56) + 8 * v9);

  if (!(v11 >> 62))
  {
    if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

  result = sub_1C095DCDC();
  if (!result)
  {
LABEL_11:

LABEL_12:
    v13 = 0;
    goto LABEL_13;
  }

LABEL_5:
  if ((v11 & 0xC000000000000001) != 0)
  {
    v13 = MEMORY[0x1C68DDAD0](0, v11);
    goto LABEL_8;
  }

  if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v13 = *(v11 + 32);

LABEL_8:

LABEL_13:
    v14 = a3(v13);

    return v14;
  }

  __break(1u);
  return result;
}

uint64_t UsoTaskBuilder_ReferenceFromReactionTypeToReactionType_uso_unknown_entity.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 40) = 0xD000000000000012;
  *(v0 + 48) = 0x80000001C09E4310;
  *(v0 + 56) = 0xD000000000000027;
  *(v0 + 64) = 0x80000001C09E4330;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;
  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_ReferenceFromReactionTypeToReactionType_uso_unknown_entity.init()()
{
  *(v0 + 40) = 0xD000000000000012;
  *(v0 + 48) = 0x80000001C09E4310;
  *(v0 + 56) = 0xD000000000000027;
  *(v0 + 64) = 0x80000001C09E4330;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;
  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_ReferenceVideoFilter_uso_unknown_entity.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 40) = 0xD000000000000012;
  *(v0 + 48) = 0x80000001C09E4310;
  *(v0 + 56) = 0xD000000000000014;
  *(v0 + 64) = 0x80000001C09E4360;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;
  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_ReferenceVideoFilter_uso_unknown_entity.init()()
{
  *(v0 + 40) = 0xD000000000000012;
  *(v0 + 48) = 0x80000001C09E4310;
  *(v0 + 56) = 0xD000000000000014;
  *(v0 + 64) = 0x80000001C09E4360;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;
  *(v0 + 32) = v1;
  return v0;
}

uint64_t sub_1C067650C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1C052569C(0x7265626D756ELL, 0xE600000000000000, (v2 + 152), a1, a2, &qword_1EBE1E1F8, &qword_1C0993130);
  return swift_endAccess();
}

uint64_t UsoTaskBuilder_ReferenceNumberTrigger_uso_unknown_entity.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 40) = 0xD000000000000012;
  *(v0 + 48) = 0x80000001C09E4310;
  *(v0 + 56) = 0xD000000000000016;
  *(v0 + 64) = 0x80000001C09E4380;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;
  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_ReferenceNumberTrigger_uso_unknown_entity.init()()
{
  *(v0 + 40) = 0xD000000000000012;
  *(v0 + 48) = 0x80000001C09E4310;
  *(v0 + 56) = 0xD000000000000016;
  *(v0 + 64) = 0x80000001C09E4380;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;
  *(v0 + 32) = v1;
  return v0;
}

uint64_t sub_1C0676750(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1C052569C(0x656C69666F7270, 0xE700000000000000, (v2 + 152), a1, a2, &qword_1EBE1DE18, &qword_1C0992CD0);
  return swift_endAccess();
}

uint64_t UsoTaskBuilder_ReferenceProfile_uso_unknown_entity.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 40) = 0xD000000000000012;
  *(v0 + 48) = 0x80000001C09E4310;
  *(v0 + 56) = 0xD000000000000010;
  *(v0 + 64) = 0x80000001C09E43A0;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;
  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_ReferenceProfile_uso_unknown_entity.init()()
{
  *(v0 + 40) = 0xD000000000000012;
  *(v0 + 48) = 0x80000001C09E4310;
  *(v0 + 56) = 0xD000000000000010;
  *(v0 + 64) = 0x80000001C09E43A0;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;
  *(v0 + 32) = v1;
  return v0;
}

uint64_t sub_1C06769A0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1C052569C(0x6E6F697463616572, 0xEC00000065707954, (v2 + 152), a1, a2, &qword_1EBE1E230, &qword_1C0993170);
  return swift_endAccess();
}

uint64_t UsoTaskBuilder_ReferenceReactionType_uso_unknown_entity.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 40) = 0xD000000000000012;
  *(v0 + 48) = 0x80000001C09E4310;
  *(v0 + 56) = 0xD000000000000015;
  *(v0 + 64) = 0x80000001C09E43C0;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;
  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_ReferenceReactionType_uso_unknown_entity.init()()
{
  *(v0 + 40) = 0xD000000000000012;
  *(v0 + 48) = 0x80000001C09E4310;
  *(v0 + 56) = 0xD000000000000015;
  *(v0 + 64) = 0x80000001C09E43C0;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;
  *(v0 + 32) = v1;
  return v0;
}

uint64_t sub_1C0676BFC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1C052569C(0x754474657366666FLL, 0xEE006E6F69746172, (v2 + 152), a1, a2, &qword_1EBE1E188, &unk_1C09A4F60);
  return swift_endAccess();
}

uint64_t UsoTaskBuilder_ReferenceControlOffsetDuration_uso_unknown_entity.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 40) = 0xD000000000000012;
  *(v0 + 48) = 0x80000001C09E4310;
  *(v0 + 56) = 0xD00000000000001ELL;
  *(v0 + 64) = 0x80000001C09E43E0;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;
  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_ReferenceControlOffsetDuration_uso_unknown_entity.init()()
{
  *(v0 + 40) = 0xD000000000000012;
  *(v0 + 48) = 0x80000001C09E4310;
  *(v0 + 56) = 0xD00000000000001ELL;
  *(v0 + 64) = 0x80000001C09E43E0;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;
  *(v0 + 32) = v1;
  return v0;
}

uint64_t sub_1C0676E58(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1C052569C(0x697254746E657665, 0xEC00000072656767, (v2 + 152), a1, a2, &qword_1EBE1E250, &qword_1C0993198);
  return swift_endAccess();
}

uint64_t sub_1C0676F14(uint64_t *a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1C06E4AE0(0x6E65697069636572, 0xEA00000000007374, (v2 + 152), a1, a2, &qword_1EBE172B8, &unk_1C09A4F40);
  return swift_endAccess();
}

uint64_t UsoTaskBuilder_RecipientsEventTrigger_uso_unknown_entity.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 40) = 0xD000000000000012;
  *(v0 + 48) = 0x80000001C09E4310;
  *(v0 + 56) = 0xD000000000000016;
  *(v0 + 64) = 0x80000001C09E4400;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;
  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_RecipientsEventTrigger_uso_unknown_entity.init()()
{
  *(v0 + 40) = 0xD000000000000012;
  *(v0 + 48) = 0x80000001C09E4310;
  *(v0 + 56) = 0xD000000000000016;
  *(v0 + 64) = 0x80000001C09E4400;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;
  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_ReferenceTrigger_uso_unknown_entity.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 40) = 0xD000000000000012;
  *(v0 + 48) = 0x80000001C09E4310;
  *(v0 + 56) = 0xD000000000000010;
  *(v0 + 64) = 0x80000001C09E4420;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;
  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_ReferenceTrigger_uso_unknown_entity.init()()
{
  *(v0 + 40) = 0xD000000000000012;
  *(v0 + 48) = 0x80000001C09E4310;
  *(v0 + 56) = 0xD000000000000010;
  *(v0 + 64) = 0x80000001C09E4420;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;
  *(v0 + 32) = v1;
  return v0;
}

uint64_t sub_1C0677420(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1C052569C(0x6D6572757361656DLL, 0xEF74696E55746E65, (v2 + 152), a1, a2, &qword_1EBE1E0F8, &qword_1C0993020);
  return swift_endAccess();
}

uint64_t UsoTaskBuilder_ReferenceMeasurementUnit_uso_unknown_entity.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 40) = 0xD000000000000012;
  *(v0 + 48) = 0x80000001C09E4310;
  *(v0 + 56) = 0xD000000000000018;
  *(v0 + 64) = 0x80000001C09E4440;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;
  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_ReferenceMeasurementUnit_uso_unknown_entity.init()()
{
  *(v0 + 40) = 0xD000000000000012;
  *(v0 + 48) = 0x80000001C09E4310;
  *(v0 + 56) = 0xD000000000000018;
  *(v0 + 64) = 0x80000001C09E4440;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;
  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_ReferencePhotoCollectionFilter_uso_unknown_entity.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 40) = 0xD000000000000012;
  *(v0 + 48) = 0x80000001C09E4310;
  *(v0 + 56) = 0xD00000000000001ELL;
  *(v0 + 64) = 0x80000001C09E4460;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;
  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_ReferencePhotoCollectionFilter_uso_unknown_entity.init()()
{
  *(v0 + 40) = 0xD000000000000012;
  *(v0 + 48) = 0x80000001C09E4310;
  *(v0 + 56) = 0xD00000000000001ELL;
  *(v0 + 64) = 0x80000001C09E4460;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;
  *(v0 + 32) = v1;
  return v0;
}

uint64_t sub_1C06777B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE174E0, &unk_1C0975370);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1C0970C90;
  type metadata accessor for UsoPrimitiveStringBuilder();
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E7CC0];
  v7[5] = a1;
  v7[6] = a2;
  v7[2] = v8;
  v7[3] = v8;
  v7[4] = v8;
  *(v6 + 32) = v7;

  v9 = *(v3 + 152);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v3 + 152);
  *(v3 + 152) = 0x8000000000000000;
  sub_1C051D194(v6, 0x676E69727473, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
  *(v3 + 152) = v12;
  return swift_endAccess();
}

uint64_t UsoTaskBuilder_ReferenceStringTrigger_uso_unknown_entity.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 40) = 0xD000000000000012;
  *(v0 + 48) = 0x80000001C09E4310;
  *(v0 + 56) = 0xD000000000000016;
  *(v0 + 64) = 0x80000001C09E4480;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;
  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_ReferenceStringTrigger_uso_unknown_entity.init()()
{
  *(v0 + 40) = 0xD000000000000012;
  *(v0 + 48) = 0x80000001C09E4310;
  *(v0 + 56) = 0xD000000000000016;
  *(v0 + 64) = 0x80000001C09E4480;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;
  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_ReferencePhotoMemoryFilter_uso_unknown_entity.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 40) = 0xD000000000000012;
  *(v0 + 48) = 0x80000001C09E4310;
  *(v0 + 56) = 0xD00000000000001ALL;
  *(v0 + 64) = 0x80000001C09E44A0;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;
  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_ReferencePhotoMemoryFilter_uso_unknown_entity.init()()
{
  *(v0 + 40) = 0xD000000000000012;
  *(v0 + 48) = 0x80000001C09E4310;
  *(v0 + 56) = 0xD00000000000001ALL;
  *(v0 + 64) = 0x80000001C09E44A0;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;
  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_ReferencePhotoTag_uso_unknown_entity.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 40) = 0xD000000000000012;
  *(v0 + 48) = 0x80000001C09E4310;
  *(v0 + 56) = 0xD000000000000011;
  *(v0 + 64) = 0x80000001C09E44C0;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;
  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_ReferencePhotoTag_uso_unknown_entity.init()()
{
  *(v0 + 40) = 0xD000000000000012;
  *(v0 + 48) = 0x80000001C09E4310;
  *(v0 + 56) = 0xD000000000000011;
  *(v0 + 64) = 0x80000001C09E44C0;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;
  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_ReferenceSlideshowFilter_uso_unknown_entity.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 40) = 0xD000000000000012;
  *(v0 + 48) = 0x80000001C09E4310;
  *(v0 + 56) = 0xD000000000000018;
  *(v0 + 64) = 0x80000001C09E44E0;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;
  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_ReferenceSlideshowFilter_uso_unknown_entity.init()()
{
  *(v0 + 40) = 0xD000000000000012;
  *(v0 + 48) = 0x80000001C09E4310;
  *(v0 + 56) = 0xD000000000000018;
  *(v0 + 64) = 0x80000001C09E44E0;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;
  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_ReferenceDurationTrigger_uso_unknown_entity.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 40) = 0xD000000000000012;
  *(v0 + 48) = 0x80000001C09E4310;
  *(v0 + 56) = 0xD000000000000018;
  *(v0 + 64) = 0x80000001C09E4500;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;
  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_ReferenceDurationTrigger_uso_unknown_entity.init()()
{
  *(v0 + 40) = 0xD000000000000012;
  *(v0 + 48) = 0x80000001C09E4310;
  *(v0 + 56) = 0xD000000000000018;
  *(v0 + 64) = 0x80000001C09E4500;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;
  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_ReferenceTargetSelect_uso_unknown_entity.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 40) = 0xD000000000000012;
  *(v0 + 48) = 0x80000001C09E4310;
  *(v0 + 56) = 0xD000000000000015;
  *(v0 + 64) = 0x80000001C09E4520;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;
  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_ReferenceTargetSelect_uso_unknown_entity.init()()
{
  *(v0 + 40) = 0xD000000000000012;
  *(v0 + 48) = 0x80000001C09E4310;
  *(v0 + 56) = 0xD000000000000015;
  *(v0 + 64) = 0x80000001C09E4520;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;
  *(v0 + 32) = v1;
  return v0;
}

uint64_t sub_1C06781FC(uint64_t *a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1C06E4AE0(0x65506E6564646968, 0xEC000000656C706FLL, (v2 + 152), a1, a2, &qword_1EBE172B8, &unk_1C09A4F40);
  return swift_endAccess();
}

uint64_t UsoTaskBuilder_RecipientsHiddenPeople_uso_unknown_entity.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 40) = 0xD000000000000012;
  *(v0 + 48) = 0x80000001C09E4310;
  *(v0 + 56) = 0xD000000000000016;
  *(v0 + 64) = 0x80000001C09E4540;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;
  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_RecipientsHiddenPeople_uso_unknown_entity.init()()
{
  *(v0 + 40) = 0xD000000000000012;
  *(v0 + 48) = 0x80000001C09E4310;
  *(v0 + 56) = 0xD000000000000016;
  *(v0 + 64) = 0x80000001C09E4540;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;
  *(v0 + 32) = v1;
  return v0;
}

uint64_t sub_1C06784C0(uint64_t *a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1C06E4AE0(0x656C706F6570, 0xE600000000000000, (v2 + 152), a1, a2, &qword_1EBE172B8, &unk_1C09A4F40);
  return swift_endAccess();
}

uint64_t UsoTaskBuilder_ReferenceSetPeople_uso_unknown_entity.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 40) = 0xD000000000000012;
  *(v0 + 48) = 0x80000001C09E4310;
  *(v0 + 56) = 0xD000000000000012;
  *(v0 + 64) = 0x80000001C09E4560;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;
  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_ReferenceSetPeople_uso_unknown_entity.init()()
{
  *(v0 + 40) = 0xD000000000000012;
  *(v0 + 48) = 0x80000001C09E4310;
  *(v0 + 56) = 0xD000000000000012;
  *(v0 + 64) = 0x80000001C09E4560;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;
  *(v0 + 32) = v1;
  return v0;
}

uint64_t sub_1C06786E8(uint64_t *a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1C06E4AE0(0x73676E6974746573, 0xE800000000000000, (v2 + 152), a1, a2, &qword_1EBE172A8, &qword_1C09931B0);
  return swift_endAccess();
}

uint64_t sub_1C06787E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5, __int128 *a6)
{
  v12 = swift_allocObject();
  _s12SiriOntology14UsoTaskBuilderC16baseEntityString04verbH00I4Name06entityJ0ACSS_SSSgAA0J0VAJtcfc_0(a1, a2, a3, a4, a5, a6);
  return v12;
}

uint64_t sub_1C067889C(uint64_t *a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1C06E4AE0(0x69746E4572657375, 0xEC00000073656974, (v2 + 152), a1, a2, &qword_1EBE172C8, &qword_1C09931D0);
  return swift_endAccess();
}

void *sub_1C06789CC()
{
  swift_beginAccess();
  v1 = *(v0 + 152);

  v2 = sub_1C06DA494(0xD000000000000013, 0x80000001C09B7560, v1);

  return v2;
}

uint64_t sub_1C0678A48(uint64_t *a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1C06E4AE0(0xD000000000000013, 0x80000001C09B7560, (v2 + 152), a1, a2, &qword_1EBE17298, &qword_1C0970A88);
  return swift_endAccess();
}

uint64_t sub_1C0678B14(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1C052569C(0xD000000000000010, 0x80000001C09B7580, (v2 + 152), a1, a2, &qword_1EBE1DBC8, &qword_1C09929F8);
  return swift_endAccess();
}

uint64_t sub_1C0678BDC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1C052569C(0x656D695465746164, 0xE800000000000000, (v2 + 152), a1, a2, &qword_1EBE170C8, &qword_1C09708A0);
  return swift_endAccess();
}

uint64_t UsoTaskBuilder_ReferencePhotoFilter_uso_unknown_entity.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 40) = 0xD000000000000012;
  *(v0 + 48) = 0x80000001C09E4310;
  *(v0 + 56) = 0xD000000000000014;
  *(v0 + 64) = 0x80000001C09E4580;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;
  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_ReferencePhotoFilter_uso_unknown_entity.init()()
{
  *(v0 + 40) = 0xD000000000000012;
  *(v0 + 48) = 0x80000001C09E4310;
  *(v0 + 56) = 0xD000000000000014;
  *(v0 + 64) = 0x80000001C09E4580;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;
  *(v0 + 32) = v1;
  return v0;
}

uint64_t sub_1C0678EA8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1C052569C(0x68706172676F6567, 0xEE00616572416369, (v2 + 152), a1, a2, &qword_1EBE1E268, &qword_1C09931B8);
  return swift_endAccess();
}

uint64_t UsoTaskBuilder_ReferenceGeographicArea_uso_unknown_entity.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 40) = 0xD000000000000012;
  *(v0 + 48) = 0x80000001C09E4310;
  *(v0 + 56) = 0xD000000000000017;
  *(v0 + 64) = 0x80000001C09E45A0;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;
  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_ReferenceGeographicArea_uso_unknown_entity.init()()
{
  *(v0 + 40) = 0xD000000000000012;
  *(v0 + 48) = 0x80000001C09E4310;
  *(v0 + 56) = 0xD000000000000017;
  *(v0 + 64) = 0x80000001C09E45A0;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;
  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_ReferencePhotoCollection_uso_unknown_entity.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 40) = 0xD000000000000012;
  *(v0 + 48) = 0x80000001C09E4310;
  *(v0 + 56) = 0xD000000000000018;
  *(v0 + 64) = 0x80000001C09E45C0;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;
  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_ReferencePhotoCollection_uso_unknown_entity.init()()
{
  *(v0 + 40) = 0xD000000000000012;
  *(v0 + 48) = 0x80000001C09E4310;
  *(v0 + 56) = 0xD000000000000018;
  *(v0 + 64) = 0x80000001C09E45C0;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;
  *(v0 + 32) = v1;
  return v0;
}

uint64_t sub_1C0679288(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1C052569C(0x64616F6C796170, 0xE700000000000000, (v2 + 152), a1, a2, &qword_1EBE1DE50, &unk_1C0992D08);
  return swift_endAccess();
}

uint64_t UsoTaskBuilder_ReferenceVoiceCommandPayload_uso_unknown_entity.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 40) = 0xD000000000000012;
  *(v0 + 48) = 0x80000001C09E4310;
  *(v0 + 56) = 0xD00000000000001CLL;
  *(v0 + 64) = 0x80000001C09E45E0;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;
  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_ReferenceVoiceCommandPayload_uso_unknown_entity.init()()
{
  *(v0 + 40) = 0xD000000000000012;
  *(v0 + 48) = 0x80000001C09E4310;
  *(v0 + 56) = 0xD00000000000001CLL;
  *(v0 + 64) = 0x80000001C09E45E0;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;
  *(v0 + 32) = v1;
  return v0;
}

uint64_t sub_1C0679548(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1C052569C(0x72656767697274, 0xE700000000000000, (v2 + 152), a1, a2, &qword_1EBE1E250, &qword_1C0993198);
  return swift_endAccess();
}

uint64_t UsoTaskBuilder_ReferenceControl_uso_unknown_entity.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 40) = 0xD000000000000012;
  *(v0 + 48) = 0x80000001C09E4310;
  *(v0 + 56) = 0xD000000000000010;
  *(v0 + 64) = 0x80000001C09E4600;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;
  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_ReferenceControl_uso_unknown_entity.init()()
{
  *(v0 + 40) = 0xD000000000000012;
  *(v0 + 48) = 0x80000001C09E4310;
  *(v0 + 56) = 0xD000000000000010;
  *(v0 + 64) = 0x80000001C09E4600;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;
  *(v0 + 32) = v1;
  return v0;
}

uint64_t sub_1C067979C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1C052569C(0x656D695465746164, 0xED000065676E6152, (v2 + 152), a1, a2, &qword_1EBE1E278, &qword_1C09931C8);
  return swift_endAccess();
}

uint64_t UsoTaskBuilder_ReferenceDateTimeRangeTrigger_uso_unknown_entity.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 40) = 0xD000000000000012;
  *(v0 + 48) = 0x80000001C09E4310;
  *(v0 + 56) = 0xD00000000000001DLL;
  *(v0 + 64) = 0x80000001C09E4620;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;
  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_ReferenceDateTimeRangeTrigger_uso_unknown_entity.init()()
{
  *(v0 + 40) = 0xD000000000000012;
  *(v0 + 48) = 0x80000001C09E4310;
  *(v0 + 56) = 0xD00000000000001DLL;
  *(v0 + 64) = 0x80000001C09E4620;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;
  *(v0 + 32) = v1;
  return v0;
}

uint64_t sub_1C0679A70(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1C052569C(0x6D6572757361656DLL, 0xEB00000000746E65, (v2 + 152), a1, a2, &qword_1EBE1E208, &qword_1C0993140);
  return swift_endAccess();
}

uint64_t UsoTaskBuilder_ReferenceMeasurementTrigger_uso_unknown_entity.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 40) = 0xD000000000000012;
  *(v0 + 48) = 0x80000001C09E4310;
  *(v0 + 56) = 0xD00000000000001BLL;
  *(v0 + 64) = 0x80000001C09E4640;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;
  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_ReferenceMeasurementTrigger_uso_unknown_entity.init()()
{
  *(v0 + 40) = 0xD000000000000012;
  *(v0 + 48) = 0x80000001C09E4310;
  *(v0 + 56) = 0xD00000000000001BLL;
  *(v0 + 64) = 0x80000001C09E4640;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;
  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_ReferencePaymentSortKey_uso_unknown_entity.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 40) = 0xD000000000000012;
  *(v0 + 48) = 0x80000001C09E4310;
  *(v0 + 56) = 0xD000000000000017;
  *(v0 + 64) = 0x80000001C09E4660;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;
  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_ReferencePaymentSortKey_uso_unknown_entity.init()()
{
  *(v0 + 40) = 0xD000000000000012;
  *(v0 + 48) = 0x80000001C09E4310;
  *(v0 + 56) = 0xD000000000000017;
  *(v0 + 64) = 0x80000001C09E4660;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;
  *(v0 + 32) = v1;
  return v0;
}

uint64_t sub_1C0679ECC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1C052569C(0x6E6F697461727564, 0xE800000000000000, (v2 + 152), a1, a2, &qword_1EBE1E188, &unk_1C09A4F60);
  return swift_endAccess();
}

uint64_t sub_1C0679F50(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  swift_beginAccess();
  v7 = *(v3 + 152);

  v8 = a3(a1, a2, v7);

  return v8;
}

uint64_t UsoTaskBuilder_ReferenceControlDuration_uso_unknown_entity.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 40) = 0xD000000000000012;
  *(v0 + 48) = 0x80000001C09E4310;
  *(v0 + 56) = 0xD000000000000018;
  *(v0 + 64) = 0x80000001C09E4680;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;
  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_ReferenceControlDuration_uso_unknown_entity.init()()
{
  *(v0 + 40) = 0xD000000000000012;
  *(v0 + 48) = 0x80000001C09E4310;
  *(v0 + 56) = 0xD000000000000018;
  *(v0 + 64) = 0x80000001C09E4680;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;
  *(v0 + 32) = v1;
  return v0;
}

uint64_t _s12SiriOntology14UsoTaskBuilderC16baseEntityString04verbH0ACSS_SSSgtcfC_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 40) = a1;
  *(v8 + 48) = a2;
  *(v8 + 56) = a3;
  *(v8 + 64) = a4;
  *(v8 + 72) = 0u;
  *(v8 + 88) = 0u;
  *(v8 + 104) = 0u;
  *(v8 + 120) = 0u;
  *(v8 + 136) = 0u;
  v9 = MEMORY[0x1E69E7CC0];
  *(v8 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v8 + 16) = v9;
  *(v8 + 24) = v9;
  *(v8 + 32) = v9;
  return v8;
}

uint64_t _s12SiriOntology14UsoTaskBuilderC16baseEntityString04verbH00I4Name06entityJ0ACSS_SSSgAA0J0VAJtcfc_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5, __int128 *a6)
{
  v7 = *a5;
  v8 = a5[1];
  v9 = *(a5 + 4);
  v10 = *a6;
  v11 = a6[1];
  v12 = *(a6 + 4);
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 56) = a3;
  *(v6 + 64) = a4;
  *(v6 + 72) = v7;
  *(v6 + 88) = v8;
  *(v6 + 104) = v9;
  *(v6 + 112) = v10;
  *(v6 + 128) = v11;
  *(v6 + 144) = v12;
  v13 = MEMORY[0x1E69E7CC0];
  *(v6 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v6 + 16) = v13;
  *(v6 + 24) = v13;
  *(v6 + 32) = v13;
  return v6;
}

uint64_t sub_1C067A284(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1C052569C(0x746E756F6D61, 0xE600000000000000, (v2 + 152), a1, a2, &qword_1EBE1E1F8, &qword_1C0993130);
  return swift_endAccess();
}

uint64_t sub_1C067A350(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1C052569C(0x656D7473756A6461, 0xEE0065707954746ELL, (v2 + 152), a1, a2, &qword_1EBE1DF68, &qword_1C0992E58);
  return swift_endAccess();
}

uint64_t sub_1C067A460(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1C052569C(0xD000000000000013, 0x80000001C09B75A0, (v2 + 152), a1, a2, &qword_1EBE1DF98, &qword_1C0992E88);
  return swift_endAccess();
}

uint64_t sub_1C067A4F4(__n128 a1)
{
  v1 = swift_allocObject();
  *(v1 + 40) = 0xD000000000000012;
  *(v1 + 48) = 0x80000001C09E4310;
  *(v1 + 56) = a1;
  *(v1 + 72) = 0u;
  *(v1 + 88) = 0u;
  *(v1 + 104) = 0u;
  *(v1 + 120) = 0u;
  *(v1 + 136) = 0u;
  v2 = MEMORY[0x1E69E7CC0];
  *(v1 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v1 + 16) = v2;
  *(v1 + 24) = v2;
  *(v1 + 32) = v2;
  return v1;
}

uint64_t sub_1C067A598(__n128 a1)
{
  *(v1 + 40) = 0xD000000000000012;
  *(v1 + 48) = 0x80000001C09E4310;
  *(v1 + 56) = a1;
  *(v1 + 72) = 0u;
  *(v1 + 88) = 0u;
  *(v1 + 104) = 0u;
  *(v1 + 120) = 0u;
  *(v1 + 136) = 0u;
  v2 = MEMORY[0x1E69E7CC0];
  *(v1 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v1 + 16) = v2;
  *(v1 + 24) = v2;
  *(v1 + 32) = v2;
  return v1;
}

uint64_t UsoTaskBuilder_noVerb_common_EventTrigger.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_noVerb_common_EventTrigger.init()();
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_common_EventTrigger.init()()
{
  *(v0 + 40) = 0xD000000000000013;
  *(v0 + 48) = 0x80000001C09CD9C0;
  *(v0 + 56) = xmmword_1C0975340;
  *(v0 + 72) = xmmword_1C0975350;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0976140;
  *(v0 + 120) = 0x80000001C09CD9C0;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_commonTimer_TimerAttribute.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_noVerb_commonTimer_TimerAttribute.init()();
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_commonTimer_TimerAttribute.init()()
{
  *(v0 + 40) = 0xD00000000000001ALL;
  *(v0 + 48) = 0x80000001C09CD9E0;
  *(v0 + 56) = xmmword_1C0975340;
  *(v0 + 72) = xmmword_1C0975350;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0976110;
  *(v0 + 120) = 0x80000001C09CD9E0;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_common_VoiceTrigger.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_noVerb_common_VoiceTrigger.init()();
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_common_VoiceTrigger.init()()
{
  *(v0 + 40) = 0xD000000000000013;
  *(v0 + 48) = 0x80000001C09CDA00;
  *(v0 + 56) = xmmword_1C0975340;
  *(v0 + 72) = xmmword_1C0975350;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0976140;
  *(v0 + 120) = 0x80000001C09CDA00;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_preview_common_AppEntity.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_preview_common_AppEntity.init()();
  return v0;
}

uint64_t UsoTaskBuilder_preview_common_AppEntity.init()()
{
  *(v0 + 40) = 0xD000000000000010;
  *(v0 + 48) = 0x80000001C09CDA40;
  *(v0 + 56) = xmmword_1C0982A10;
  *(v0 + 72) = 0xD000000000000011;
  *(v0 + 80) = 0x80000001C09CDA20;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0976090;
  *(v0 + 120) = 0x80000001C09CDA40;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_create_common_AppEntity.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_create_common_AppEntity.init()();
  return v0;
}

uint64_t UsoTaskBuilder_paste_common_AppEntity.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_paste_common_AppEntity.init()();
  return v0;
}

uint64_t UsoTaskBuilder_paste_common_AppEntity.init()()
{
  *(v0 + 40) = 0xD000000000000010;
  *(v0 + 48) = 0x80000001C09CDA40;
  *(v0 + 56) = xmmword_1C0982A40;
  *(v0 + 72) = 0xD000000000000015;
  *(v0 + 80) = 0x80000001C09CDA60;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0976090;
  *(v0 + 120) = 0x80000001C09CDA40;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_summarise_common_AppEntity.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_summarise_common_AppEntity.init()();
  return v0;
}

uint64_t UsoTaskBuilder_summarise_common_AppEntity.init()()
{
  *(v0 + 40) = 0xD000000000000010;
  *(v0 + 48) = 0x80000001C09CDA40;
  *(v0 + 56) = xmmword_1C0982A50;
  *(v0 + 72) = 0xD000000000000013;
  *(v0 + 80) = 0x80000001C09CDA80;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0976090;
  *(v0 + 120) = 0x80000001C09CDA40;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_common_AppEntity.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_noVerb_common_AppEntity.init()();
  return v0;
}

uint64_t UsoTaskBuilder_update_common_AppEntity.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_update_common_AppEntity.init()();
  return v0;
}

uint64_t UsoTaskBuilder_update_common_AppEntity.init()()
{
  *(v0 + 40) = 0xD000000000000010;
  *(v0 + 48) = 0x80000001C09CDA40;
  *(v0 + 56) = xmmword_1C0982A60;
  *(v0 + 72) = 0xD000000000000016;
  *(v0 + 80) = 0x80000001C09CDAA0;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0976090;
  *(v0 + 120) = 0x80000001C09CDA40;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_skipForward_common_AppEntity.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_skipForward_common_AppEntity.init()();
  return v0;
}

uint64_t UsoTaskBuilder_skipForward_common_AppEntity.init()()
{
  *(v0 + 40) = 0xD000000000000010;
  *(v0 + 48) = 0x80000001C09CDA40;
  *(v0 + 56) = xmmword_1C0982A70;
  *(v0 + 72) = 0xD000000000000015;
  *(v0 + 80) = 0x80000001C09CDAC0;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0976090;
  *(v0 + 120) = 0x80000001C09CDA40;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_skipBackward_common_AppEntity.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_skipBackward_common_AppEntity.init()();
  return v0;
}

uint64_t UsoTaskBuilder_skipBackward_common_AppEntity.init()()
{
  *(v0 + 40) = 0xD000000000000010;
  *(v0 + 48) = 0x80000001C09CDA40;
  *(v0 + 56) = xmmword_1C0982A80;
  *(v0 + 72) = 0xD000000000000016;
  *(v0 + 80) = 0x80000001C09CDAE0;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0976090;
  *(v0 + 120) = 0x80000001C09CDA40;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_enterMarkup_common_AppEntity.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_enterMarkup_common_AppEntity.init()();
  return v0;
}

uint64_t UsoTaskBuilder_enterMarkup_common_AppEntity.init()()
{
  *(v0 + 40) = 0xD000000000000010;
  *(v0 + 48) = 0x80000001C09CDA40;
  *(v0 + 56) = xmmword_1C0982A90;
  *(v0 + 72) = 0xD000000000000015;
  *(v0 + 80) = 0x80000001C09CDB00;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0976090;
  *(v0 + 120) = 0x80000001C09CDA40;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_copy_common_AppEntity.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_copy_common_AppEntity.init()();
  return v0;
}

uint64_t UsoTaskBuilder_like_common_AppEntity.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_like_common_AppEntity.init()();
  return v0;
}

uint64_t UsoTaskBuilder_unlike_common_AppEntity.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_unlike_common_AppEntity.init()();
  return v0;
}

uint64_t UsoTaskBuilder_unlike_common_AppEntity.init()()
{
  *(v0 + 40) = 0xD000000000000010;
  *(v0 + 48) = 0x80000001C09CDA40;
  *(v0 + 56) = xmmword_1C0982AE0;
  *(v0 + 72) = 0xD000000000000010;
  *(v0 + 80) = 0x80000001C09CDB20;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0976090;
  *(v0 + 120) = 0x80000001C09CDA40;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_close_common_AppEntity.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_close_common_AppEntity.init()();
  return v0;
}

uint64_t UsoTaskBuilder_delete_common_AppEntity.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_delete_common_AppEntity.init()();
  return v0;
}

uint64_t UsoTaskBuilder_delete_common_AppEntity.init()()
{
  *(v0 + 40) = 0xD000000000000010;
  *(v0 + 48) = 0x80000001C09CDA40;
  *(v0 + 56) = xmmword_1C0982B10;
  *(v0 + 72) = 0xD000000000000010;
  *(v0 + 80) = 0x80000001C09CDB40;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0976090;
  *(v0 + 120) = 0x80000001C09CDA40;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_cut_common_AppEntity.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_cut_common_AppEntity.init()();
  return v0;
}

uint64_t UsoTaskBuilder_exitMarkup_common_AppEntity.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_exitMarkup_common_AppEntity.init()();
  return v0;
}

uint64_t UsoTaskBuilder_exitMarkup_common_AppEntity.init()()
{
  *(v0 + 40) = 0xD000000000000010;
  *(v0 + 48) = 0x80000001C09CDA40;
  *(v0 + 56) = xmmword_1C0982B40;
  *(v0 + 72) = 0xD000000000000014;
  *(v0 + 80) = 0x80000001C09CDB60;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0976090;
  *(v0 + 120) = 0x80000001C09CDA40;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_adjust_common_AppEntity.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_adjust_common_AppEntity.init()();
  return v0;
}

uint64_t UsoTaskBuilder_adjust_common_AppEntity.init()()
{
  *(v0 + 40) = 0xD000000000000010;
  *(v0 + 48) = 0x80000001C09CDA40;
  *(v0 + 56) = xmmword_1C0982B50;
  *(v0 + 72) = 0xD000000000000011;
  *(v0 + 80) = 0x80000001C09CDB80;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0976090;
  *(v0 + 120) = 0x80000001C09CDA40;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_open_common_AppEntity.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_open_common_AppEntity.init()();
  return v0;
}

uint64_t sub_1C067C0B0(__n128 a1, __n128 a2)
{
  *(v2 + 40) = 0xD000000000000010;
  *(v2 + 48) = 0x80000001C09CDA40;
  *(v2 + 56) = a1;
  *(v2 + 72) = a2;
  *(v2 + 88) = xmmword_1C0975360;
  *(v2 + 104) = xmmword_1C0976090;
  *(v2 + 120) = 0x80000001C09CDA40;
  *(v2 + 128) = xmmword_1C0982A00;
  *(v2 + 144) = 0;

  v3 = MEMORY[0x1E69E7CC0];
  *(v2 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v2 + 16) = v3;
  *(v2 + 24) = v3;

  *(v2 + 32) = v3;
  return v2;
}

uint64_t UsoTaskBuilder_noVerb_common_DurationComponent.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_noVerb_common_DurationComponent.init()();
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_common_DurationComponent.init()()
{
  *(v0 + 40) = 0xD000000000000018;
  *(v0 + 48) = 0x80000001C09CDBA0;
  *(v0 + 56) = xmmword_1C0975340;
  *(v0 + 72) = xmmword_1C0975350;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0976170;
  *(v0 + 120) = 0x80000001C09CDBA0;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_common_PhoneCallMode.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_noVerb_common_PhoneCallMode.init()();
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_common_PhoneCallMode.init()()
{
  *(v0 + 40) = 0xD000000000000014;
  *(v0 + 48) = 0x80000001C09CDBC0;
  *(v0 + 56) = xmmword_1C0975340;
  *(v0 + 72) = xmmword_1C0975350;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0976150;
  *(v0 + 120) = 0x80000001C09CDBC0;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_appleContact_ContactAttribute.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_noVerb_appleContact_ContactAttribute.init()();
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_appleContact_ContactAttribute.init()()
{
  *(v0 + 40) = 0xD00000000000001DLL;
  *(v0 + 48) = 0x80000001C09CDBE0;
  *(v0 + 56) = xmmword_1C0975340;
  *(v0 + 72) = xmmword_1C0975350;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C09760C0;
  *(v0 + 120) = 0x80000001C09CDBE0;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_common_PersonProperty.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_noVerb_common_PersonProperty.init()();
  return v0;
}

uint64_t UsoTaskBuilder_checkExistence_common_PersonProperty.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_checkExistence_common_PersonProperty.init()();
  return v0;
}

uint64_t UsoTaskBuilder_checkExistence_common_PersonProperty.init()()
{
  *(v0 + 40) = 0xD000000000000015;
  *(v0 + 48) = 0x80000001C09CDC00;
  *(v0 + 56) = xmmword_1C0982B80;
  *(v0 + 72) = 0xD000000000000018;
  *(v0 + 80) = 0x80000001C09CDC20;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0976160;
  *(v0 + 120) = 0x80000001C09CDC00;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_summarise_common_PersonProperty.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_summarise_common_PersonProperty.init()();
  return v0;
}

uint64_t UsoTaskBuilder_summarise_common_PersonProperty.init()()
{
  *(v0 + 40) = 0xD000000000000015;
  *(v0 + 48) = 0x80000001C09CDC00;
  *(v0 + 56) = xmmword_1C0982A50;
  *(v0 + 72) = 0xD000000000000013;
  *(v0 + 80) = 0x80000001C09CDA80;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0976160;
  *(v0 + 120) = 0x80000001C09CDC00;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_state_common_PersonProperty.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_state_common_PersonProperty.init()();
  return v0;
}

uint64_t sub_1C067CAB0(__n128 a1, __n128 a2)
{
  *(v2 + 40) = 0xD000000000000015;
  *(v2 + 48) = 0x80000001C09CDC00;
  *(v2 + 56) = a1;
  *(v2 + 72) = a2;
  *(v2 + 88) = xmmword_1C0975360;
  *(v2 + 104) = xmmword_1C0976160;
  *(v2 + 120) = 0x80000001C09CDC00;
  *(v2 + 128) = xmmword_1C0982A00;
  *(v2 + 144) = 0;

  v3 = MEMORY[0x1E69E7CC0];
  *(v2 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v2 + 16) = v3;
  *(v2 + 24) = v3;

  *(v2 + 32) = v3;
  return v2;
}

uint64_t UsoTaskBuilder_justify_common_SiriOpinion.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_justify_common_SiriOpinion.init()();
  return v0;
}

uint64_t UsoTaskBuilder_justify_common_SiriOpinion.init()()
{
  *(v0 + 40) = 0xD000000000000012;
  *(v0 + 48) = 0x80000001C09CDC60;
  *(v0 + 56) = xmmword_1C0982BB0;
  *(v0 + 72) = 0xD000000000000011;
  *(v0 + 80) = 0x80000001C09CDC40;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C09760F0;
  *(v0 + 120) = 0x80000001C09CDC60;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_common_SiriOpinion.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_noVerb_common_SiriOpinion.init()();
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_common_SiriOpinion.init()()
{
  *(v0 + 40) = 0xD000000000000012;
  *(v0 + 48) = 0x80000001C09CDC60;
  *(v0 + 56) = xmmword_1C0975340;
  *(v0 + 72) = xmmword_1C0975350;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C09760F0;
  *(v0 + 120) = 0x80000001C09CDC60;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_summarise_common_SiriOpinion.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_summarise_common_SiriOpinion.init()();
  return v0;
}

uint64_t UsoTaskBuilder_summarise_common_SiriOpinion.init()()
{
  *(v0 + 40) = 0xD000000000000012;
  *(v0 + 48) = 0x80000001C09CDC60;
  *(v0 + 56) = xmmword_1C0982A50;
  *(v0 + 72) = 0xD000000000000013;
  *(v0 + 80) = 0x80000001C09CDA80;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C09760F0;
  *(v0 + 120) = 0x80000001C09CDC60;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_checkExistence_common_SiriOpinion.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_checkExistence_common_SiriOpinion.init()();
  return v0;
}

uint64_t UsoTaskBuilder_checkExistence_common_SiriOpinion.init()()
{
  *(v0 + 40) = 0xD000000000000012;
  *(v0 + 48) = 0x80000001C09CDC60;
  *(v0 + 56) = xmmword_1C0982B80;
  *(v0 + 72) = 0xD000000000000018;
  *(v0 + 80) = 0x80000001C09CDC20;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C09760F0;
  *(v0 + 120) = 0x80000001C09CDC60;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_common_TemperatureComponent.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_noVerb_common_TemperatureComponent.init()();
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_common_TemperatureComponent.init()()
{
  *(v0 + 40) = 0xD00000000000001BLL;
  *(v0 + 48) = 0x80000001C09CDC80;
  *(v0 + 56) = xmmword_1C0975340;
  *(v0 + 72) = xmmword_1C0975350;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0976060;
  *(v0 + 120) = 0x80000001C09CDC80;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_common_SearchObject.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_noVerb_common_SearchObject.init()();
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_common_SearchObject.init()()
{
  *(v0 + 40) = 0xD000000000000013;
  *(v0 + 48) = 0x80000001C09CDCA0;
  *(v0 + 56) = xmmword_1C0975340;
  *(v0 + 72) = xmmword_1C0975350;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0976140;
  *(v0 + 120) = 0x80000001C09CDCA0;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_update_common_Voicemail.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_update_common_Voicemail.init()();
  return v0;
}

uint64_t UsoTaskBuilder_update_common_Voicemail.init()()
{
  *(v0 + 40) = 0xD000000000000010;
  *(v0 + 48) = 0x80000001C09CDCC0;
  *(v0 + 56) = xmmword_1C0982A60;
  *(v0 + 72) = 0xD000000000000016;
  *(v0 + 80) = 0x80000001C09CDAA0;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0976090;
  *(v0 + 120) = 0x80000001C09CDCC0;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_call_common_Voicemail.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_call_common_Voicemail.init()();
  return v0;
}

uint64_t UsoTaskBuilder_previous_common_Voicemail.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_previous_common_Voicemail.init()();
  return v0;
}

uint64_t UsoTaskBuilder_previous_common_Voicemail.init()()
{
  *(v0 + 40) = 0xD000000000000010;
  *(v0 + 48) = 0x80000001C09CDCC0;
  *(v0 + 56) = xmmword_1C0982BE0;
  *(v0 + 72) = 0xD000000000000012;
  *(v0 + 80) = 0x80000001C09CDCE0;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0976090;
  *(v0 + 120) = 0x80000001C09CDCC0;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_stop_common_Voicemail.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_stop_common_Voicemail.init()();
  return v0;
}

uint64_t UsoTaskBuilder_play_common_Voicemail.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_play_common_Voicemail.init()();
  return v0;
}

uint64_t UsoTaskBuilder_continue_common_Voicemail.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_continue_common_Voicemail.init()();
  return v0;
}

uint64_t UsoTaskBuilder_continue_common_Voicemail.init()()
{
  *(v0 + 40) = 0xD000000000000010;
  *(v0 + 48) = 0x80000001C09CDCC0;
  *(v0 + 56) = xmmword_1C0982C30;
  *(v0 + 72) = 0xD000000000000012;
  *(v0 + 80) = 0x80000001C09CDD00;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0976090;
  *(v0 + 120) = 0x80000001C09CDCC0;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_request_common_Voicemail.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_request_common_Voicemail.init()();
  return v0;
}

uint64_t UsoTaskBuilder_request_common_Voicemail.init()()
{
  *(v0 + 40) = 0xD000000000000010;
  *(v0 + 48) = 0x80000001C09CDCC0;
  *(v0 + 56) = xmmword_1C0982C40;
  *(v0 + 72) = 0xD000000000000017;
  *(v0 + 80) = 0x80000001C09CDD20;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0976090;
  *(v0 + 120) = 0x80000001C09CDCC0;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_summarise_common_Voicemail.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_summarise_common_Voicemail.init()();
  return v0;
}

uint64_t UsoTaskBuilder_summarise_common_Voicemail.init()()
{
  *(v0 + 40) = 0xD000000000000010;
  *(v0 + 48) = 0x80000001C09CDCC0;
  *(v0 + 56) = xmmword_1C0982A50;
  *(v0 + 72) = 0xD000000000000013;
  *(v0 + 80) = 0x80000001C09CDA80;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0976090;
  *(v0 + 120) = 0x80000001C09CDCC0;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_skip_common_Voicemail.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_skip_common_Voicemail.init()();
  return v0;
}

uint64_t UsoTaskBuilder_read_common_Voicemail.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_read_common_Voicemail.init()();
  return v0;
}

uint64_t UsoTaskBuilder_delete_common_Voicemail.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_delete_common_Voicemail.init()();
  return v0;
}

uint64_t UsoTaskBuilder_delete_common_Voicemail.init()()
{
  *(v0 + 40) = 0xD000000000000010;
  *(v0 + 48) = 0x80000001C09CDCC0;
  *(v0 + 56) = xmmword_1C0982B10;
  *(v0 + 72) = 0xD000000000000010;
  *(v0 + 80) = 0x80000001C09CDB40;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0976090;
  *(v0 + 120) = 0x80000001C09CDCC0;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_common_Voicemail.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_noVerb_common_Voicemail.init()();
  return v0;
}

uint64_t UsoTaskBuilder_repeat_common_Voicemail.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_repeat_common_Voicemail.init()();
  return v0;
}

uint64_t UsoTaskBuilder_repeat_common_Voicemail.init()()
{
  *(v0 + 40) = 0xD000000000000010;
  *(v0 + 48) = 0x80000001C09CDCC0;
  *(v0 + 56) = xmmword_1C0982C90;
  *(v0 + 72) = 0xD000000000000010;
  *(v0 + 80) = 0x80000001C09CDD40;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0976090;
  *(v0 + 120) = 0x80000001C09CDCC0;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_pause_common_Voicemail.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_pause_common_Voicemail.init()();
  return v0;
}

uint64_t sub_1C067E490(__n128 a1, __n128 a2)
{
  *(v2 + 40) = 0xD000000000000010;
  *(v2 + 48) = 0x80000001C09CDCC0;
  *(v2 + 56) = a1;
  *(v2 + 72) = a2;
  *(v2 + 88) = xmmword_1C0975360;
  *(v2 + 104) = xmmword_1C0976090;
  *(v2 + 120) = 0x80000001C09CDCC0;
  *(v2 + 128) = xmmword_1C0982A00;
  *(v2 + 144) = 0;

  v3 = MEMORY[0x1E69E7CC0];
  *(v2 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v2 + 16) = v3;
  *(v2 + 24) = v3;

  *(v2 + 32) = v3;
  return v2;
}

uint64_t UsoTaskBuilder_resume_common_Voicemail.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_resume_common_Voicemail.init()();
  return v0;
}

uint64_t UsoTaskBuilder_resume_common_Voicemail.init()()
{
  *(v0 + 40) = 0xD000000000000010;
  *(v0 + 48) = 0x80000001C09CDCC0;
  *(v0 + 56) = xmmword_1C0982CC0;
  *(v0 + 72) = 0xD000000000000010;
  *(v0 + 80) = 0x80000001C09CDD60;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0976090;
  *(v0 + 120) = 0x80000001C09CDCC0;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_request_common_RecurringDateTimeRange.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_request_common_RecurringDateTimeRange.init()();
  return v0;
}

uint64_t UsoTaskBuilder_request_common_RecurringDateTimeRange.init()()
{
  *(v0 + 40) = 0xD00000000000001DLL;
  *(v0 + 48) = 0x80000001C09CDD80;
  *(v0 + 56) = xmmword_1C0982C40;
  *(v0 + 72) = 0xD000000000000017;
  *(v0 + 80) = 0x80000001C09CDD20;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C09760C0;
  *(v0 + 120) = 0x80000001C09CDD80;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_common_RecurringDateTimeRange.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_noVerb_common_RecurringDateTimeRange.init()();
  return v0;
}

uint64_t UsoTaskBuilder_summarise_common_RecurringDateTimeRange.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_summarise_common_RecurringDateTimeRange.init()();
  return v0;
}

uint64_t UsoTaskBuilder_summarise_common_RecurringDateTimeRange.init()()
{
  *(v0 + 40) = 0xD00000000000001DLL;
  *(v0 + 48) = 0x80000001C09CDD80;
  *(v0 + 56) = xmmword_1C0982A50;
  *(v0 + 72) = 0xD000000000000013;
  *(v0 + 80) = 0x80000001C09CDA80;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C09760C0;
  *(v0 + 120) = 0x80000001C09CDD80;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_checkExistence_common_RecurringDateTimeRange.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_checkExistence_common_RecurringDateTimeRange.init()();
  return v0;
}

uint64_t UsoTaskBuilder_checkExistence_common_RecurringDateTimeRange.init()()
{
  *(v0 + 40) = 0xD00000000000001DLL;
  *(v0 + 48) = 0x80000001C09CDD80;
  *(v0 + 56) = xmmword_1C0982B80;
  *(v0 + 72) = 0xD000000000000018;
  *(v0 + 80) = 0x80000001C09CDC20;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C09760C0;
  *(v0 + 120) = 0x80000001C09CDD80;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_read_common_RecurringDateTimeRange.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_read_common_RecurringDateTimeRange.init()();
  return v0;
}

uint64_t sub_1C067ECFC(__n128 a1, __n128 a2)
{
  *(v2 + 40) = 0xD00000000000001DLL;
  *(v2 + 48) = 0x80000001C09CDD80;
  *(v2 + 56) = a1;
  *(v2 + 72) = a2;
  *(v2 + 88) = xmmword_1C0975360;
  *(v2 + 104) = xmmword_1C09760C0;
  *(v2 + 120) = 0x80000001C09CDD80;
  *(v2 + 128) = xmmword_1C0982A00;
  *(v2 + 144) = 0;

  v3 = MEMORY[0x1E69E7CC0];
  *(v2 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v2 + 16) = v3;
  *(v2 + 24) = v3;

  *(v2 + 32) = v3;
  return v2;
}

uint64_t UsoTaskBuilder_convert_common_RecurringDateTimeRange.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_convert_common_RecurringDateTimeRange.init()();
  return v0;
}

uint64_t UsoTaskBuilder_convert_common_RecurringDateTimeRange.init()()
{
  *(v0 + 40) = 0xD00000000000001DLL;
  *(v0 + 48) = 0x80000001C09CDD80;
  *(v0 + 56) = xmmword_1C0982CD0;
  *(v0 + 72) = 0xD00000000000001DLL;
  *(v0 + 80) = 0x80000001C09CDDA0;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C09760C0;
  *(v0 + 120) = 0x80000001C09CDD80;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_create_common_Workout.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_create_common_Workout.init()();
  return v0;
}

uint64_t UsoTaskBuilder_create_common_Workout.init()()
{
  *(v0 + 40) = xmmword_1C0982CE0;
  *(v0 + 56) = xmmword_1C0982A20;
  *(v0 + 72) = xmmword_1C0982A30;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0977680;
  *(v0 + 120) = xmmword_1C0982CF0;
  *(v0 + 136) = xmmword_1C0982D00;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_common_Workout.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_noVerb_common_Workout.init()();
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_common_Workout.init()()
{
  *(v0 + 40) = xmmword_1C0982CE0;
  *(v0 + 56) = xmmword_1C0975340;
  *(v0 + 72) = xmmword_1C0975350;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0977680;
  *(v0 + 120) = xmmword_1C0982CF0;
  *(v0 + 136) = xmmword_1C0982D00;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_summarise_common_Workout.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_summarise_common_Workout.init()();
  return v0;
}

uint64_t UsoTaskBuilder_update_common_Workout.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_update_common_Workout.init()();
  return v0;
}

uint64_t UsoTaskBuilder_cancel_common_Workout.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_cancel_common_Workout.init()();
  return v0;
}

uint64_t UsoTaskBuilder_stop_common_Workout.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_stop_common_Workout.init()();
  return v0;
}

uint64_t UsoTaskBuilder_pause_common_Workout.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_pause_common_Workout.init()();
  return v0;
}

uint64_t UsoTaskBuilder_resume_common_Workout.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_resume_common_Workout.init()();
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_commonStock_StockAttribute.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_noVerb_commonStock_StockAttribute.init()();
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_commonStock_StockAttribute.init()()
{
  *(v0 + 40) = 0xD00000000000001ALL;
  *(v0 + 48) = 0x80000001C09CDE40;
  *(v0 + 56) = xmmword_1C0975340;
  *(v0 + 72) = xmmword_1C0975350;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0976110;
  *(v0 + 120) = 0x80000001C09CDE40;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_softwareUpdate_common_UserEntity.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_softwareUpdate_common_UserEntity.init()();
  return v0;
}

uint64_t UsoTaskBuilder_softwareUpdate_common_UserEntity.init()()
{
  *(v0 + 40) = 0xD000000000000011;
  *(v0 + 48) = 0x80000001C09CDE80;
  *(v0 + 56) = xmmword_1C0982D10;
  *(v0 + 72) = 0xD000000000000018;
  *(v0 + 80) = 0x80000001C09CDE60;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C09761B0;
  *(v0 + 120) = 0x80000001C09CDE80;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_request_common_UserEntity.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_request_common_UserEntity.init()();
  return v0;
}

uint64_t UsoTaskBuilder_request_common_UserEntity.init()()
{
  *(v0 + 40) = 0xD000000000000011;
  *(v0 + 48) = 0x80000001C09CDE80;
  *(v0 + 56) = xmmword_1C0982C40;
  *(v0 + 72) = 0xD000000000000017;
  *(v0 + 80) = 0x80000001C09CDD20;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C09761B0;
  *(v0 + 120) = 0x80000001C09CDE80;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_stopPing_common_UserEntity.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_stopPing_common_UserEntity.init()();
  return v0;
}

uint64_t UsoTaskBuilder_stopPing_common_UserEntity.init()()
{
  *(v0 + 40) = 0xD000000000000011;
  *(v0 + 48) = 0x80000001C09CDE80;
  *(v0 + 56) = xmmword_1C0982D20;
  *(v0 + 72) = 0xD000000000000012;
  *(v0 + 80) = 0x80000001C09CDEA0;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C09761B0;
  *(v0 + 120) = 0x80000001C09CDE80;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_summarise_common_UserEntity.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_summarise_common_UserEntity.init()();
  return v0;
}

uint64_t UsoTaskBuilder_summarise_common_UserEntity.init()()
{
  *(v0 + 40) = 0xD000000000000011;
  *(v0 + 48) = 0x80000001C09CDE80;
  *(v0 + 56) = xmmword_1C0982A50;
  *(v0 + 72) = 0xD000000000000013;
  *(v0 + 80) = 0x80000001C09CDA80;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C09761B0;
  *(v0 + 120) = 0x80000001C09CDE80;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_find_common_UserEntity.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_find_common_UserEntity.init()();
  return v0;
}

uint64_t UsoTaskBuilder_getLocation_common_UserEntity.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_getLocation_common_UserEntity.init()();
  return v0;
}

uint64_t UsoTaskBuilder_getLocation_common_UserEntity.init()()
{
  *(v0 + 40) = 0xD000000000000011;
  *(v0 + 48) = 0x80000001C09CDE80;
  *(v0 + 56) = xmmword_1C0982D50;
  *(v0 + 72) = 0xD000000000000015;
  *(v0 + 80) = 0x80000001C09CDEC0;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C09761B0;
  *(v0 + 120) = 0x80000001C09CDE80;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_reping_common_UserEntity.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_reping_common_UserEntity.init()();
  return v0;
}

uint64_t UsoTaskBuilder_reping_common_UserEntity.init()()
{
  *(v0 + 40) = 0xD000000000000011;
  *(v0 + 48) = 0x80000001C09CDE80;
  *(v0 + 56) = xmmword_1C0982D60;
  *(v0 + 72) = 0xD000000000000010;
  *(v0 + 80) = 0x80000001C09CDEE0;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C09761B0;
  *(v0 + 120) = 0x80000001C09CDE80;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_checkExistence_common_UserEntity.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_checkExistence_common_UserEntity.init()();
  return v0;
}

uint64_t UsoTaskBuilder_checkExistence_common_UserEntity.init()()
{
  *(v0 + 40) = 0xD000000000000011;
  *(v0 + 48) = 0x80000001C09CDE80;
  *(v0 + 56) = xmmword_1C0982B80;
  *(v0 + 72) = 0xD000000000000018;
  *(v0 + 80) = 0x80000001C09CDC20;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C09761B0;
  *(v0 + 120) = 0x80000001C09CDE80;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_ping_common_UserEntity.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_ping_common_UserEntity.init()();
  return v0;
}

uint64_t UsoTaskBuilder_reset_common_UserEntity.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_reset_common_UserEntity.init()();
  return v0;
}

uint64_t UsoTaskBuilder_discoverCapabilities_common_UserEntity.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_discoverCapabilities_common_UserEntity.init()();
  return v0;
}

uint64_t UsoTaskBuilder_discoverCapabilities_common_UserEntity.init()()
{
  *(v0 + 40) = 0xD000000000000011;
  *(v0 + 48) = 0x80000001C09CDE80;
  *(v0 + 56) = 0xD000000000000014;
  *(v0 + 64) = 0x80000001C09DE280;
  *(v0 + 72) = 0xD00000000000001ELL;
  *(v0 + 80) = 0x80000001C09CDF00;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C09761B0;
  *(v0 + 120) = 0x80000001C09CDE80;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_checkLocation_common_UserEntity.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_checkLocation_common_UserEntity.init()();
  return v0;
}

uint64_t UsoTaskBuilder_checkLocation_common_UserEntity.init()()
{
  *(v0 + 40) = 0xD000000000000011;
  *(v0 + 48) = 0x80000001C09CDE80;
  *(v0 + 56) = xmmword_1C0982DB0;
  *(v0 + 72) = 0xD000000000000025;
  *(v0 + 80) = 0x80000001C09CDF20;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C09761B0;
  *(v0 + 120) = 0x80000001C09CDE80;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_restart_common_UserEntity.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_restart_common_UserEntity.init()();
  return v0;
}

uint64_t UsoTaskBuilder_restart_common_UserEntity.init()()
{
  *(v0 + 40) = 0xD000000000000011;
  *(v0 + 48) = 0x80000001C09CDE80;
  *(v0 + 56) = xmmword_1C0982DC0;
  *(v0 + 72) = 0xD000000000000011;
  *(v0 + 80) = 0x80000001C09CDF50;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C09761B0;
  *(v0 + 120) = 0x80000001C09CDE80;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_common_UserEntity.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_noVerb_common_UserEntity.init()();
  return v0;
}

uint64_t sub_1C0680AE0(__n128 a1, __n128 a2)
{
  *(v2 + 40) = 0xD000000000000011;
  *(v2 + 48) = 0x80000001C09CDE80;
  *(v2 + 56) = a1;
  *(v2 + 72) = a2;
  *(v2 + 88) = xmmword_1C0975360;
  *(v2 + 104) = xmmword_1C09761B0;
  *(v2 + 120) = 0x80000001C09CDE80;
  *(v2 + 128) = xmmword_1C0982A00;
  *(v2 + 144) = 0;

  v3 = MEMORY[0x1E69E7CC0];
  *(v2 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v2 + 16) = v3;
  *(v2 + 24) = v3;

  *(v2 + 32) = v3;
  return v2;
}

uint64_t UsoTaskBuilder_noVerb_common_Religion.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_noVerb_common_Religion.init()();
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_common_Religion.init()()
{
  *(v0 + 40) = xmmword_1C0982DD0;
  *(v0 + 56) = xmmword_1C0975340;
  *(v0 + 72) = xmmword_1C0975350;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0977C40;
  *(v0 + 120) = xmmword_1C0982DE0;
  *(v0 + 136) = xmmword_1C0982D00;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_hear_common_SiriContent.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_hear_common_SiriContent.init()();
  return v0;
}

uint64_t UsoTaskBuilder_tell_common_SiriContent.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_tell_common_SiriContent.init()();
  return v0;
}

uint64_t UsoTaskBuilder_repeat_common_SiriContent.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_repeat_common_SiriContent.init()();
  return v0;
}

uint64_t UsoTaskBuilder_repeat_common_SiriContent.init()()
{
  *(v0 + 40) = 0xD000000000000012;
  *(v0 + 48) = 0x80000001C09CDF70;
  *(v0 + 56) = xmmword_1C0982C90;
  *(v0 + 72) = 0xD000000000000010;
  *(v0 + 80) = 0x80000001C09CDD40;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C09760F0;
  *(v0 + 120) = 0x80000001C09CDF70;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_common_SiriContent.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_noVerb_common_SiriContent.init()();
  return v0;
}

uint64_t UsoTaskBuilder_unlike_common_SiriContent.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_unlike_common_SiriContent.init()();
  return v0;
}

uint64_t UsoTaskBuilder_unlike_common_SiriContent.init()()
{
  *(v0 + 40) = 0xD000000000000012;
  *(v0 + 48) = 0x80000001C09CDF70;
  *(v0 + 56) = xmmword_1C0982AE0;
  *(v0 + 72) = 0xD000000000000010;
  *(v0 + 80) = 0x80000001C09CDB20;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C09760F0;
  *(v0 + 120) = 0x80000001C09CDF70;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_discoverCapabilities_common_SiriContent.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_discoverCapabilities_common_SiriContent.init()();
  return v0;
}

uint64_t UsoTaskBuilder_discoverCapabilities_common_SiriContent.init()()
{
  *(v0 + 40) = 0xD000000000000012;
  *(v0 + 48) = 0x80000001C09CDF70;
  *(v0 + 56) = 0xD000000000000014;
  *(v0 + 64) = 0x80000001C09DE280;
  *(v0 + 72) = 0xD00000000000001ELL;
  *(v0 + 80) = 0x80000001C09CDF00;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C09760F0;
  *(v0 + 120) = 0x80000001C09CDF70;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_like_common_SiriContent.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_like_common_SiriContent.init()();
  return v0;
}

uint64_t sub_1C06814D8(__n128 a1, __n128 a2)
{
  *(v2 + 40) = 0xD000000000000012;
  *(v2 + 48) = 0x80000001C09CDF70;
  *(v2 + 56) = a1;
  *(v2 + 72) = a2;
  *(v2 + 88) = xmmword_1C0975360;
  *(v2 + 104) = xmmword_1C09760F0;
  *(v2 + 120) = 0x80000001C09CDF70;
  *(v2 + 128) = xmmword_1C0982A00;
  *(v2 + 144) = 0;

  v3 = MEMORY[0x1E69E7CC0];
  *(v2 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v2 + 16) = v3;
  *(v2 + 24) = v3;

  *(v2 + 32) = v3;
  return v2;
}

uint64_t UsoTaskBuilder_noVerb_common_MonthOfYear.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_noVerb_common_MonthOfYear.init()();
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_common_MonthOfYear.init()()
{
  *(v0 + 40) = 0xD000000000000012;
  *(v0 + 48) = 0x80000001C09CDF90;
  *(v0 + 56) = xmmword_1C0975340;
  *(v0 + 72) = xmmword_1C0975350;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C09760F0;
  *(v0 + 120) = 0x80000001C09CDF90;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_common_PhoneNumber.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_noVerb_common_PhoneNumber.init()();
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_common_PhoneNumber.init()()
{
  *(v0 + 40) = 0xD000000000000012;
  *(v0 + 48) = 0x80000001C09CDFB0;
  *(v0 + 56) = xmmword_1C0975340;
  *(v0 + 72) = xmmword_1C0975350;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C09760F0;
  *(v0 + 120) = 0x80000001C09CDFB0;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_create_common_Clock.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_create_common_Clock.init()();
  return v0;
}

uint64_t UsoTaskBuilder_create_common_Clock.init()()
{
  *(v0 + 40) = xmmword_1C0982E30;
  *(v0 + 56) = xmmword_1C0982A20;
  *(v0 + 72) = xmmword_1C0982A30;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0977360;
  *(v0 + 120) = xmmword_1C0982E40;
  *(v0 + 136) = xmmword_1C0982D00;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_summarise_common_Clock.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_summarise_common_Clock.init()();
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_common_Clock.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_noVerb_common_Clock.init()();
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_common_Clock.init()()
{
  *(v0 + 40) = xmmword_1C0982E30;
  *(v0 + 56) = xmmword_1C0975340;
  *(v0 + 72) = xmmword_1C0975350;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0977360;
  *(v0 + 120) = xmmword_1C0982E40;
  *(v0 + 136) = xmmword_1C0982D00;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_delete_common_Clock.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_delete_common_Clock.init()();
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_appleMessage_MessageAttribute.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_noVerb_appleMessage_MessageAttribute.init()();
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_appleMessage_MessageAttribute.init()()
{
  *(v0 + 40) = 0xD00000000000001DLL;
  *(v0 + 48) = 0x80000001C09CDFD0;
  *(v0 + 56) = xmmword_1C0975340;
  *(v0 + 72) = xmmword_1C0975350;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C09760C0;
  *(v0 + 120) = 0x80000001C09CDFD0;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_checkExistence_common_NoteFolder.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_checkExistence_common_NoteFolder.init()();
  return v0;
}

uint64_t UsoTaskBuilder_checkExistence_common_NoteFolder.init()()
{
  *(v0 + 40) = 0xD000000000000011;
  *(v0 + 48) = 0x80000001C09CDFF0;
  *(v0 + 56) = xmmword_1C0982B80;
  *(v0 + 72) = 0xD000000000000018;
  *(v0 + 80) = 0x80000001C09CDC20;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C09761B0;
  *(v0 + 120) = 0x80000001C09CDFF0;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_summarise_common_NoteFolder.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_summarise_common_NoteFolder.init()();
  return v0;
}

uint64_t UsoTaskBuilder_summarise_common_NoteFolder.init()()
{
  *(v0 + 40) = 0xD000000000000011;
  *(v0 + 48) = 0x80000001C09CDFF0;
  *(v0 + 56) = xmmword_1C0982A50;
  *(v0 + 72) = 0xD000000000000013;
  *(v0 + 80) = 0x80000001C09CDA80;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C09761B0;
  *(v0 + 120) = 0x80000001C09CDFF0;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_request_common_NoteFolder.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_request_common_NoteFolder.init()();
  return v0;
}

uint64_t UsoTaskBuilder_request_common_NoteFolder.init()()
{
  *(v0 + 40) = 0xD000000000000011;
  *(v0 + 48) = 0x80000001C09CDFF0;
  *(v0 + 56) = xmmword_1C0982C40;
  *(v0 + 72) = 0xD000000000000017;
  *(v0 + 80) = 0x80000001C09CDD20;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C09761B0;
  *(v0 + 120) = 0x80000001C09CDFF0;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_update_common_NoteFolder.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_update_common_NoteFolder.init()();
  return v0;
}

uint64_t UsoTaskBuilder_update_common_NoteFolder.init()()
{
  *(v0 + 40) = 0xD000000000000011;
  *(v0 + 48) = 0x80000001C09CDFF0;
  *(v0 + 56) = xmmword_1C0982A60;
  *(v0 + 72) = 0xD000000000000016;
  *(v0 + 80) = 0x80000001C09CDAA0;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C09761B0;
  *(v0 + 120) = 0x80000001C09CDFF0;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_create_common_NoteFolder.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_create_common_NoteFolder.init()();
  return v0;
}

uint64_t UsoTaskBuilder_delete_common_NoteFolder.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_delete_common_NoteFolder.init()();
  return v0;
}

uint64_t UsoTaskBuilder_delete_common_NoteFolder.init()()
{
  *(v0 + 40) = 0xD000000000000011;
  *(v0 + 48) = 0x80000001C09CDFF0;
  *(v0 + 56) = xmmword_1C0982B10;
  *(v0 + 72) = 0xD000000000000010;
  *(v0 + 80) = 0x80000001C09CDB40;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C09761B0;
  *(v0 + 120) = 0x80000001C09CDFF0;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_common_NoteFolder.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_noVerb_common_NoteFolder.init()();
  return v0;
}

uint64_t sub_1C0682808(__n128 a1, __n128 a2)
{
  *(v2 + 40) = 0xD000000000000011;
  *(v2 + 48) = 0x80000001C09CDFF0;
  *(v2 + 56) = a1;
  *(v2 + 72) = a2;
  *(v2 + 88) = xmmword_1C0975360;
  *(v2 + 104) = xmmword_1C09761B0;
  *(v2 + 120) = 0x80000001C09CDFF0;
  *(v2 + 128) = xmmword_1C0982A00;
  *(v2 + 144) = 0;

  v3 = MEMORY[0x1E69E7CC0];
  *(v2 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v2 + 16) = v3;
  *(v2 + 24) = v3;

  *(v2 + 32) = v3;
  return v2;
}

uint64_t UsoTaskBuilder_noVerb_commonAlarm_AlarmAttribute.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_noVerb_commonAlarm_AlarmAttribute.init()();
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_commonAlarm_AlarmAttribute.init()()
{
  *(v0 + 40) = 0xD00000000000001ALL;
  *(v0 + 48) = 0x80000001C09CE010;
  *(v0 + 56) = xmmword_1C0975340;
  *(v0 + 72) = xmmword_1C0975350;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0976110;
  *(v0 + 120) = 0x80000001C09CE010;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_commonContact_ContactAttribute.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_noVerb_commonContact_ContactAttribute.init()();
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_commonContact_ContactAttribute.init()()
{
  *(v0 + 40) = 0xD00000000000001ELL;
  *(v0 + 48) = 0x80000001C09CE030;
  *(v0 + 56) = xmmword_1C0975340;
  *(v0 + 72) = xmmword_1C0975350;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0976080;
  *(v0 + 120) = 0x80000001C09CE030;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_common_DeviceProperty.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_noVerb_common_DeviceProperty.init()();
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_common_DeviceProperty.init()()
{
  *(v0 + 40) = 0xD000000000000015;
  *(v0 + 48) = 0x80000001C09CE050;
  *(v0 + 56) = xmmword_1C0975340;
  *(v0 + 72) = xmmword_1C0975350;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0976160;
  *(v0 + 120) = 0x80000001C09CE050;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_common_MeasurementUnit.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_noVerb_common_MeasurementUnit.init()();
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_common_MeasurementUnit.init()()
{
  *(v0 + 40) = 0xD000000000000016;
  *(v0 + 48) = 0x80000001C09CE070;
  *(v0 + 56) = xmmword_1C0975340;
  *(v0 + 72) = xmmword_1C0975350;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0976120;
  *(v0 + 120) = 0x80000001C09CE070;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_summarise_common_ReminderList.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_summarise_common_ReminderList.init()();
  return v0;
}

uint64_t UsoTaskBuilder_summarise_common_ReminderList.init()()
{
  *(v0 + 40) = 0xD000000000000013;
  *(v0 + 48) = 0x80000001C09CE090;
  *(v0 + 56) = xmmword_1C0982A50;
  *(v0 + 72) = 0xD000000000000013;
  *(v0 + 80) = 0x80000001C09CDA80;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0976140;
  *(v0 + 120) = 0x80000001C09CE090;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_common_ReminderList.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_noVerb_common_ReminderList.init()();
  return v0;
}

uint64_t UsoTaskBuilder_request_common_ReminderList.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_request_common_ReminderList.init()();
  return v0;
}

uint64_t UsoTaskBuilder_request_common_ReminderList.init()()
{
  *(v0 + 40) = 0xD000000000000013;
  *(v0 + 48) = 0x80000001C09CE090;
  *(v0 + 56) = xmmword_1C0982C40;
  *(v0 + 72) = 0xD000000000000017;
  *(v0 + 80) = 0x80000001C09CDD20;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0976140;
  *(v0 + 120) = 0x80000001C09CE090;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_checkExistence_common_ReminderList.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_checkExistence_common_ReminderList.init()();
  return v0;
}

uint64_t UsoTaskBuilder_checkExistence_common_ReminderList.init()()
{
  *(v0 + 40) = 0xD000000000000013;
  *(v0 + 48) = 0x80000001C09CE090;
  *(v0 + 56) = xmmword_1C0982B80;
  *(v0 + 72) = 0xD000000000000018;
  *(v0 + 80) = 0x80000001C09CDC20;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0976140;
  *(v0 + 120) = 0x80000001C09CE090;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_delete_common_ReminderList.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_delete_common_ReminderList.init()();
  return v0;
}

uint64_t UsoTaskBuilder_delete_common_ReminderList.init()()
{
  *(v0 + 40) = 0xD000000000000013;
  *(v0 + 48) = 0x80000001C09CE090;
  *(v0 + 56) = xmmword_1C0982B10;
  *(v0 + 72) = 0xD000000000000010;
  *(v0 + 80) = 0x80000001C09CDB40;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0976140;
  *(v0 + 120) = 0x80000001C09CE090;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_create_common_ReminderList.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_create_common_ReminderList.init()();
  return v0;
}

uint64_t UsoTaskBuilder_update_common_ReminderList.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_update_common_ReminderList.init()();
  return v0;
}

uint64_t UsoTaskBuilder_update_common_ReminderList.init()()
{
  *(v0 + 40) = 0xD000000000000013;
  *(v0 + 48) = 0x80000001C09CE090;
  *(v0 + 56) = xmmword_1C0982A60;
  *(v0 + 72) = 0xD000000000000016;
  *(v0 + 80) = 0x80000001C09CDAA0;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0976140;
  *(v0 + 120) = 0x80000001C09CE090;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_read_common_ReminderList.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_read_common_ReminderList.init()();
  return v0;
}

uint64_t sub_1C06838E4(__n128 a1, __n128 a2)
{
  *(v2 + 40) = 0xD000000000000013;
  *(v2 + 48) = 0x80000001C09CE090;
  *(v2 + 56) = a1;
  *(v2 + 72) = a2;
  *(v2 + 88) = xmmword_1C0975360;
  *(v2 + 104) = xmmword_1C0976140;
  *(v2 + 120) = 0x80000001C09CE090;
  *(v2 + 128) = xmmword_1C0982A00;
  *(v2 + 144) = 0;

  v3 = MEMORY[0x1E69E7CC0];
  *(v2 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v2 + 16) = v3;
  *(v2 + 24) = v3;

  *(v2 + 32) = v3;
  return v2;
}

uint64_t UsoTaskBuilder_noVerb_common_Stock.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_noVerb_common_Stock.init()();
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_common_Stock.init()()
{
  *(v0 + 40) = xmmword_1C0982E50;
  *(v0 + 56) = xmmword_1C0975340;
  *(v0 + 72) = xmmword_1C0975350;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C09777C0;
  *(v0 + 120) = xmmword_1C0982E60;
  *(v0 + 136) = xmmword_1C0982D00;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_create_common_Stock.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_create_common_Stock.init()();
  return v0;
}

uint64_t UsoTaskBuilder_create_common_Stock.init()()
{
  *(v0 + 40) = xmmword_1C0982E50;
  *(v0 + 56) = xmmword_1C0982A20;
  *(v0 + 72) = xmmword_1C0982A30;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C09777C0;
  *(v0 + 120) = xmmword_1C0982E60;
  *(v0 + 136) = xmmword_1C0982D00;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_read_common_Stock.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_read_common_Stock.init()();
  return v0;
}

uint64_t UsoTaskBuilder_read_common_Stock.init()()
{
  *(v0 + 40) = xmmword_1C0982E50;
  *(v0 + 56) = xmmword_1C0982C70;
  *(v0 + 72) = xmmword_1C0982C80;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C09777C0;
  *(v0 + 120) = xmmword_1C0982E60;
  *(v0 + 136) = xmmword_1C0982D00;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_delete_common_Stock.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_delete_common_Stock.init()();
  return v0;
}

uint64_t UsoTaskBuilder_request_common_Stock.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_request_common_Stock.init()();
  return v0;
}

uint64_t UsoTaskBuilder_update_common_Stock.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_update_common_Stock.init()();
  return v0;
}

uint64_t UsoTaskBuilder_checkExistence_common_Stock.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_checkExistence_common_Stock.init()();
  return v0;
}

uint64_t UsoTaskBuilder_summarise_common_Stock.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_summarise_common_Stock.init()();
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_common_AppSection.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_noVerb_common_AppSection.init()();
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_common_AppSection.init()()
{
  *(v0 + 40) = 0xD000000000000011;
  *(v0 + 48) = 0x80000001C09CE0B0;
  *(v0 + 56) = xmmword_1C0975340;
  *(v0 + 72) = xmmword_1C0975350;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C09761B0;
  *(v0 + 120) = 0x80000001C09CE0B0;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_previous_common_PhoneCall.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_previous_common_PhoneCall.init()();
  return v0;
}

uint64_t UsoTaskBuilder_previous_common_PhoneCall.init()()
{
  *(v0 + 40) = 0xD000000000000010;
  *(v0 + 48) = 0x80000001C09CE0D0;
  *(v0 + 56) = xmmword_1C0982BE0;
  *(v0 + 72) = 0xD000000000000012;
  *(v0 + 80) = 0x80000001C09CDCE0;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0976090;
  *(v0 + 120) = 0x80000001C09CE0D0;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_redial_common_PhoneCall.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_redial_common_PhoneCall.init()();
  return v0;
}

uint64_t UsoTaskBuilder_redial_common_PhoneCall.init()()
{
  *(v0 + 40) = 0xD000000000000010;
  *(v0 + 48) = 0x80000001C09CE0D0;
  *(v0 + 56) = xmmword_1C0982E70;
  *(v0 + 72) = 0xD000000000000016;
  *(v0 + 80) = 0x80000001C09CE0F0;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0976090;
  *(v0 + 120) = 0x80000001C09CE0D0;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_callback_common_PhoneCall.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_callback_common_PhoneCall.init()();
  return v0;
}

uint64_t UsoTaskBuilder_callback_common_PhoneCall.init()()
{
  *(v0 + 40) = 0xD000000000000010;
  *(v0 + 48) = 0x80000001C09CE0D0;
  *(v0 + 56) = xmmword_1C0982E80;
  *(v0 + 72) = 0xD000000000000018;
  *(v0 + 80) = 0x80000001C09CE110;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0976090;
  *(v0 + 120) = 0x80000001C09CE0D0;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_stop_common_PhoneCall.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_stop_common_PhoneCall.init()();
  return v0;
}

uint64_t UsoTaskBuilder_hangup_common_PhoneCall.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_hangup_common_PhoneCall.init()();
  return v0;
}

uint64_t UsoTaskBuilder_hangup_common_PhoneCall.init()()
{
  *(v0 + 40) = 0xD000000000000010;
  *(v0 + 48) = 0x80000001C09CE0D0;
  *(v0 + 56) = xmmword_1C0982E90;
  *(v0 + 72) = 0xD000000000000010;
  *(v0 + 80) = 0x80000001C09CE130;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0976090;
  *(v0 + 120) = 0x80000001C09CE0D0;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_videocall_common_PhoneCall.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_videocall_common_PhoneCall.init()();
  return v0;
}

uint64_t UsoTaskBuilder_videocall_common_PhoneCall.init()()
{
  *(v0 + 40) = 0xD000000000000010;
  *(v0 + 48) = 0x80000001C09CE0D0;
  *(v0 + 56) = xmmword_1C0982EA0;
  *(v0 + 72) = 0xD000000000000010;
  *(v0 + 80) = 0x80000001C09CE150;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0976090;
  *(v0 + 120) = 0x80000001C09CE0D0;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_join_common_PhoneCall.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_join_common_PhoneCall.init()();
  return v0;
}

uint64_t UsoTaskBuilder_join_common_PhoneCall.init()()
{
  *(v0 + 40) = 0xD000000000000010;
  *(v0 + 48) = 0x80000001C09CE0D0;
  *(v0 + 56) = xmmword_1C0982EB0;
  *(v0 + 72) = 0xD000000000000014;
  *(v0 + 80) = 0x80000001C09CE170;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0976090;
  *(v0 + 120) = 0x80000001C09CE0D0;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_request_common_PhoneCall.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_request_common_PhoneCall.init()();
  return v0;
}

uint64_t UsoTaskBuilder_request_common_PhoneCall.init()()
{
  *(v0 + 40) = 0xD000000000000010;
  *(v0 + 48) = 0x80000001C09CE0D0;
  *(v0 + 56) = xmmword_1C0982C40;
  *(v0 + 72) = 0xD000000000000017;
  *(v0 + 80) = 0x80000001C09CDD20;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0976090;
  *(v0 + 120) = 0x80000001C09CE0D0;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_common_PhoneCall.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_noVerb_common_PhoneCall.init()();
  return v0;
}

uint64_t UsoTaskBuilder_read_common_PhoneCall.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_read_common_PhoneCall.init()();
  return v0;
}

uint64_t UsoTaskBuilder_update_common_PhoneCall.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_update_common_PhoneCall.init()();
  return v0;
}

uint64_t UsoTaskBuilder_update_common_PhoneCall.init()()
{
  *(v0 + 40) = 0xD000000000000010;
  *(v0 + 48) = 0x80000001C09CE0D0;
  *(v0 + 56) = xmmword_1C0982A60;
  *(v0 + 72) = 0xD000000000000016;
  *(v0 + 80) = 0x80000001C09CDAA0;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0976090;
  *(v0 + 120) = 0x80000001C09CE0D0;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_skip_common_PhoneCall.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_skip_common_PhoneCall.init()();
  return v0;
}

uint64_t UsoTaskBuilder_summarise_common_PhoneCall.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_summarise_common_PhoneCall.init()();
  return v0;
}

uint64_t UsoTaskBuilder_summarise_common_PhoneCall.init()()
{
  *(v0 + 40) = 0xD000000000000010;
  *(v0 + 48) = 0x80000001C09CE0D0;
  *(v0 + 56) = xmmword_1C0982A50;
  *(v0 + 72) = 0xD000000000000013;
  *(v0 + 80) = 0x80000001C09CDA80;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0976090;
  *(v0 + 120) = 0x80000001C09CE0D0;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_delete_common_PhoneCall.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_delete_common_PhoneCall.init()();
  return v0;
}

uint64_t UsoTaskBuilder_delete_common_PhoneCall.init()()
{
  *(v0 + 40) = 0xD000000000000010;
  *(v0 + 48) = 0x80000001C09CE0D0;
  *(v0 + 56) = xmmword_1C0982B10;
  *(v0 + 72) = 0xD000000000000010;
  *(v0 + 80) = 0x80000001C09CDB40;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0976090;
  *(v0 + 120) = 0x80000001C09CE0D0;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_continue_common_PhoneCall.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_continue_common_PhoneCall.init()();
  return v0;
}

uint64_t UsoTaskBuilder_continue_common_PhoneCall.init()()
{
  *(v0 + 40) = 0xD000000000000010;
  *(v0 + 48) = 0x80000001C09CE0D0;
  *(v0 + 56) = xmmword_1C0982C30;
  *(v0 + 72) = 0xD000000000000012;
  *(v0 + 80) = 0x80000001C09CDD00;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0976090;
  *(v0 + 120) = 0x80000001C09CE0D0;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_call_common_PhoneCall.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_call_common_PhoneCall.init()();
  return v0;
}

uint64_t UsoTaskBuilder_answer_common_PhoneCall.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_answer_common_PhoneCall.init()();
  return v0;
}

uint64_t UsoTaskBuilder_answer_common_PhoneCall.init()()
{
  *(v0 + 40) = 0xD000000000000010;
  *(v0 + 48) = 0x80000001C09CE0D0;
  *(v0 + 56) = xmmword_1C0982EC0;
  *(v0 + 72) = 0xD000000000000016;
  *(v0 + 80) = 0x80000001C09CE190;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0976090;
  *(v0 + 120) = 0x80000001C09CE0D0;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_common_ContactAddress.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_noVerb_common_ContactAddress.init()();
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_common_ContactAddress.init()()
{
  *(v0 + 40) = 0xD000000000000015;
  *(v0 + 48) = 0x80000001C09CE1B0;
  *(v0 + 56) = xmmword_1C0975340;
  *(v0 + 72) = xmmword_1C0975350;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0976160;
  *(v0 + 120) = 0x80000001C09CE1B0;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_common_LocalisedString.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_noVerb_common_LocalisedString.init()();
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_common_LocalisedString.init()()
{
  *(v0 + 40) = 0xD000000000000016;
  *(v0 + 48) = 0x80000001C09CE1D0;
  *(v0 + 56) = xmmword_1C0975340;
  *(v0 + 72) = xmmword_1C0975350;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0976120;
  *(v0 + 120) = 0x80000001C09CE1D0;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_common_ProductCategory.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_noVerb_common_ProductCategory.init()();
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_common_ProductCategory.init()()
{
  *(v0 + 40) = 0xD000000000000016;
  *(v0 + 48) = 0x80000001C09CE1F0;
  *(v0 + 56) = xmmword_1C0975340;
  *(v0 + 72) = xmmword_1C0975350;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0976120;
  *(v0 + 120) = 0x80000001C09CE1F0;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_common_NumberSign.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_noVerb_common_NumberSign.init()();
  return v0;
}