uint64_t sub_1D7EF4558(uint64_t a1, uint64_t a2)
{
  sub_1D7E188DC(0, &unk_1ECA0CFE0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v17 - v5;
  v7 = sub_1D818F824();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v17 - v12;
  sub_1D7EF4C4C(a1, v6);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    sub_1D7E70CE0();
    return 0;
  }

  (*(v8 + 32))(v13, v6, v7);
  (*(v8 + 16))(v10, v13, v7);
  if ((*(v8 + 88))(v10, v7) == *MEMORY[0x1E69D6A50])
  {
    (*(v8 + 8))(v13, v7);
    (*(v8 + 96))(v10, v7);
    v14 = *(*v10 + 16);
    sub_1D8190DB4();

    return v14;
  }

  v17[2] = 0;
  v17[3] = 0xE000000000000000;
  sub_1D81921A4();
  MEMORY[0x1DA713260](0xD000000000000010, 0x80000001D81C5FE0);
  sub_1D7E2B754(&unk_1ECA0D2A8, MEMORY[0x1E69D6A58]);
  v16 = sub_1D81925B4();
  MEMORY[0x1DA713260](v16);

  MEMORY[0x1DA713260](0xD00000000000001ALL, 0x80000001D81C6000);
  v17[1] = *(a2 + 80);
  sub_1D8192334();
  result = sub_1D81923A4();
  __break(1u);
  return result;
}

uint64_t sub_1D7EF4904()
{
  sub_1D7E188DC(0, &unk_1ECA0D3F8);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_1D8192364();
  __swift_allocate_value_buffer(v3, qword_1ECA0CFB0);
  v4 = __swift_project_value_buffer(v3, qword_1ECA0CFB0);
  sub_1D8192354();
  result = __swift_getEnumTagSinglePayload(v2, 1, v3);
  if (result != 1)
  {
    return (*(*(v3 - 8) + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D7EF4A5C()
{
  sub_1D7E188DC(0, &unk_1ECA0D3F8);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_1D8192364();
  __swift_allocate_value_buffer(v3, qword_1ECA0CFC8);
  v4 = __swift_project_value_buffer(v3, qword_1ECA0CFC8);
  sub_1D8192354();
  result = __swift_getEnumTagSinglePayload(v2, 1, v3);
  if (result != 1)
  {
    return (*(*(v3 - 8) + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D7EF4BB4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_1D8192364();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_1D7EF4C4C(uint64_t a1, uint64_t a2)
{
  sub_1D7E188DC(0, &unk_1ECA0CFE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7EF4CE0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1D7EF4D38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1D7E11428(a2, a3);
  if (__OFADD__(*(v8 + 16), (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v9;
  v12 = v10;
  sub_1D7E145C0(0, &unk_1ECA0D3F0);
  if ((sub_1D8192374() & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = sub_1D7E11428(a2, a3);
  if ((v12 & 1) != (v14 & 1))
  {
LABEL_13:
    result = sub_1D8192714();
    __break(1u);
    return result;
  }

  v11 = v13;
LABEL_5:
  v15 = *v4;
  if (v12)
  {
    v16 = *(v15 + 56);
    v17 = sub_1D818F824();
    v18 = *(v17 - 8);
    v19 = *(v18 + 40);
    v20 = v17;
    v21 = v16 + *(v18 + 72) * v11;

    return v19(v21, a1, v20);
  }

  else
  {
    sub_1D7F555BC(v11, a2, a3, a1, v15);

    return sub_1D8190DB4();
  }
}

uint64_t sub_1D7EF4ED0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1D7EF4CE0(a1, a2);
  }

  return a1;
}

unint64_t sub_1D7EF4EE4()
{
  result = qword_1ECA0D030;
  if (!qword_1ECA0D030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0D030);
  }

  return result;
}

unint64_t sub_1D7EF4F68()
{
  result = qword_1ECA0D040;
  if (!qword_1ECA0D040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0D040);
  }

  return result;
}

unint64_t sub_1D7EF4FBC()
{
  result = qword_1ECA0D050;
  if (!qword_1ECA0D050)
  {
    sub_1D7E145C0(255, &unk_1ECA0D048);
    sub_1D7E2B754(&unk_1ECA0CFF8, type metadata accessor for JSONSchema);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0D050);
  }

  return result;
}

uint64_t sub_1D7EF50C4()
{
  result = sub_1D818F824();
  if (v1 <= 0x3F)
  {
    result = sub_1D818E794();
    if (v2 <= 0x3F)
    {
      result = sub_1D818E644();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1D7EF5198()
{
  result = type metadata accessor for JSONSchema.SchemaType.ObjectType.DynamicObject(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1D7EF52A8()
{
  if (!qword_1ECA0D0A8[0])
  {
    v0 = type metadata accessor for JSONSchema.LabeledValue();
    if (!v1)
    {
      atomic_store(v0, qword_1ECA0D0A8);
    }
  }
}

uint64_t sub_1D7EF533C()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D7EF53BC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

  v10 = ((v7 + 16) & ~v7) + *(*(v4 - 8) + 64);
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
        return __swift_getEnumTagSinglePayload((a1 + v7 + 16) & ~v7, v6, v4);
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

void sub_1D7EF553C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
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
  v11 = ((v10 + 16) & ~v10) + *(*(v6 - 8) + 64);
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
            v21 = &a1[v10 + 16] & ~v10;

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
      if (v11)
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

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1D7EF57E4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for BlueprintImpressionManagerOptions.EndPercentage(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 9))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 1)
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

uint64_t storeEnumTagSinglePayload for BlueprintImpressionManagerOptions.EndPercentage(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t get_enum_tag_for_layout_string_5TeaUI10JSONSchemaV10SchemaTypeO(void *a1)
{
  v1 = *a1 >> 61;
  if (v1 == 7)
  {
    return (*a1 >> 3) + 7;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1D7EF5904(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x79 && *(a1 + 8))
    {
      v2 = *a1 + 120;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x78)
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

uint64_t sub_1D7EF5958(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x78)
  {
    *result = a2 - 121;
    if (a3 >= 0x79)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x79)
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

unint64_t *sub_1D7EF59B8(unint64_t *result, uint64_t a2)
{
  if (a2 < 7)
  {
    v2 = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 61);
  }

  else
  {
    v2 = (8 * (a2 - 7)) | 0xE000000000000000;
  }

  *result = v2;
  return result;
}

uint64_t sub_1D7EF59F0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D7EF5A4C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_1D7EF5AB4(uint64_t a1, unsigned int a2)
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

uint64_t sub_1D7EF5B08(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for JSONSchema.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF7)
  {
    if (a2 + 9 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 9) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 10;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v5 = v6 - 10;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for JSONSchema.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1D7EF5CE8()
{
  result = qword_1ECA0D1B0;
  if (!qword_1ECA0D1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0D1B0);
  }

  return result;
}

unint64_t sub_1D7EF5D40()
{
  result = qword_1ECA0D1B8;
  if (!qword_1ECA0D1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0D1B8);
  }

  return result;
}

unint64_t sub_1D7EF5D98()
{
  result = qword_1ECA0D1C0;
  if (!qword_1ECA0D1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0D1C0);
  }

  return result;
}

void sub_1D7EF5DEC(__n128 *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1D8192364();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  v11 = sub_1D7F04FD8();
  if (__OFADD__(*(v10 + 16), (v12 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v13 = v11;
  v14 = v12;
  sub_1D7EF8FBC();
  if ((sub_1D8192374() & 1) == 0)
  {
    goto LABEL_5;
  }

  v15 = sub_1D7F04FD8();
  if ((v14 & 1) != (v16 & 1))
  {
LABEL_11:
    sub_1D8192714();
    __break(1u);
    return;
  }

  v13 = v15;
LABEL_5:
  v17 = *v3;
  if (v14)
  {
    v18 = (*(v17 + 56) + 32 * v13);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);

    sub_1D7E895D8(a1, v18);
  }

  else
  {
    (*(v7 + 16))(v9, a2, v6);
    sub_1D7F55638(v13, v9, a1, v17);
  }
}

void sub_1D7EF5FD8()
{
  OUTLINED_FUNCTION_144();
  v4 = OUTLINED_FUNCTION_25_2(v2, v3);
  sub_1D7E7E198(v4);
  OUTLINED_FUNCTION_4_10();
  if (v5)
  {
    __break(1u);
LABEL_13:
    sub_1D8192714();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_79_0();
  sub_1D7EF8414();
  v6 = OUTLINED_FUNCTION_29_2();
  if (v6)
  {
    v9 = OUTLINED_FUNCTION_97_0();
    sub_1D7E7E198(v9);
    OUTLINED_FUNCTION_31_2();
    if (!v10)
    {
      goto LABEL_13;
    }
  }

  if (v1)
  {
    OUTLINED_FUNCTION_88_0(v6, v7, v8, *v0);
    OUTLINED_FUNCTION_139();

    swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_43_1();
    OUTLINED_FUNCTION_139();

    sub_1D7E7F9FC(v12, v13, v14, v15);
  }
}

void sub_1D7EF60BC()
{
  OUTLINED_FUNCTION_144();
  v4 = OUTLINED_FUNCTION_25_2(v2, v3);
  sub_1D7E7E198(v4);
  OUTLINED_FUNCTION_4_10();
  if (v5)
  {
    __break(1u);
LABEL_13:
    sub_1D8192714();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_79_0();
  sub_1D7EF8378();
  v6 = OUTLINED_FUNCTION_29_2();
  if (v6)
  {
    v9 = OUTLINED_FUNCTION_97_0();
    sub_1D7E7E198(v9);
    OUTLINED_FUNCTION_31_2();
    if (!v10)
    {
      goto LABEL_13;
    }
  }

  if (v1)
  {
    OUTLINED_FUNCTION_88_0(v6, v7, v8, *v0);
    OUTLINED_FUNCTION_139();
  }

  else
  {
    OUTLINED_FUNCTION_43_1();
    OUTLINED_FUNCTION_139();

    sub_1D7E7F9FC(v12, v13, v14, v15);
  }
}

void sub_1D7EF61CC()
{
  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_71_0();
  v4 = v3;
  sub_1D7E7E198(v5);
  OUTLINED_FUNCTION_4_10();
  if (v6)
  {
    __break(1u);
LABEL_12:
    sub_1D8192714();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_79_0();
  sub_1D7EF8318();
  if (OUTLINED_FUNCTION_29_2())
  {
    v7 = OUTLINED_FUNCTION_97_0();
    sub_1D7E7E198(v7);
    OUTLINED_FUNCTION_31_2();
    if (!v9)
    {
      goto LABEL_12;
    }

    v2 = v8;
  }

  if (v1)
  {
    *(*(*v0 + 56) + v2) = v4;
    OUTLINED_FUNCTION_139();
  }

  else
  {
    OUTLINED_FUNCTION_139();

    sub_1D7E402D0(v10, v11, v12, v13);
  }
}

void sub_1D7EF6290()
{
  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_71_0();
  v3 = v2;
  sub_1D7F061F8(v2);
  OUTLINED_FUNCTION_4_10();
  if (v4)
  {
    __break(1u);
LABEL_13:
    sub_1D8192714();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_92_0();
  sub_1D7E2C5FC(0, &unk_1EDBAE3A0);
  v5 = OUTLINED_FUNCTION_29_2();
  if (v5)
  {
    sub_1D7F061F8(v3);
    OUTLINED_FUNCTION_31_2();
    if (!v8)
    {
      goto LABEL_13;
    }
  }

  if (v1)
  {
    OUTLINED_FUNCTION_88_0(v5, v6, v7, *v0);
    OUTLINED_FUNCTION_139();
  }

  else
  {
    OUTLINED_FUNCTION_139();

    sub_1D7F5575C(v10, v11, v12, v13);
  }
}

void sub_1D7EF63CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t (*a6)(void), uint64_t a7, void (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, void))
{
  v14 = OUTLINED_FUNCTION_16_8(a1, a2);
  sub_1D7E11428(v14, v15);
  OUTLINED_FUNCTION_4_10();
  if (v18)
  {
    __break(1u);
    goto LABEL_11;
  }

  v19 = v16;
  v20 = v17;
  a5(0);
  if ((sub_1D8192374() & 1) == 0)
  {
    goto LABEL_5;
  }

  v21 = OUTLINED_FUNCTION_90_0();
  v23 = sub_1D7E11428(v21, v22);
  if ((v20 & 1) != (v24 & 1))
  {
LABEL_11:
    sub_1D8192714();
    __break(1u);
    return;
  }

  v19 = v23;
LABEL_5:
  if (v20)
  {
    v25 = a6(0);
    OUTLINED_FUNCTION_50(v25);
    sub_1D7EF850C();
    OUTLINED_FUNCTION_168();
  }

  else
  {
    a8(v19, a2, a3, v9, *v8);
    OUTLINED_FUNCTION_168();

    sub_1D8190DB4();
  }
}

void sub_1D7EF656C()
{
  OUTLINED_FUNCTION_71_0();
  v4 = v3;
  v6 = v5;
  sub_1D7E11428(v7, v3);
  OUTLINED_FUNCTION_4_10();
  if (v8)
  {
    __break(1u);
LABEL_12:
    sub_1D8192714();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_92_0();
  OUTLINED_FUNCTION_11_6();
  sub_1D7E63668(0, v9, v10, v11);
  if (OUTLINED_FUNCTION_29_2())
  {
    v12 = OUTLINED_FUNCTION_97_0();
    sub_1D7E11428(v12, v4);
    OUTLINED_FUNCTION_31_2();
    if (!v14)
    {
      goto LABEL_12;
    }

    v2 = v13;
  }

  if (v1)
  {
    *(*(*v0 + 56) + 8 * v2) = v6;
    OUTLINED_FUNCTION_133();
  }

  else
  {
    v15 = OUTLINED_FUNCTION_43_1();
    sub_1D7F55844(v15, v16, v17, v18);
    OUTLINED_FUNCTION_133();

    sub_1D8190DB4();
  }
}

void sub_1D7EF6658()
{
  OUTLINED_FUNCTION_153();
  v4 = v3;
  v6 = v5;
  sub_1D7E7E198(v3);
  OUTLINED_FUNCTION_4_10();
  if (v7)
  {
    __break(1u);
LABEL_12:
    sub_1D8192714();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_128_0();
  sub_1D7EF7198();
  if (OUTLINED_FUNCTION_70_0())
  {
    sub_1D7E7E198(v4);
    OUTLINED_FUNCTION_74_0();
    if (!v9)
    {
      goto LABEL_12;
    }

    v2 = v8;
  }

  if (v1)
  {
    *(*(*v0 + 56) + 8 * v2) = v6;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_158();

    sub_1D7F55880(v10, v11, v12);
  }
}

uint64_t sub_1D7EF6724(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v9 = OUTLINED_FUNCTION_16_8(a1, a2);
  sub_1D7F050D0(v9, v10, v11);
  OUTLINED_FUNCTION_4_10();
  if (v12)
  {
    __break(1u);
LABEL_13:
    result = sub_1D8192714();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_108();
  sub_1D7E2C5FC(0, &unk_1ECA0D268);
  v13 = OUTLINED_FUNCTION_40();
  if (v13)
  {
    v17 = OUTLINED_FUNCTION_41_1();
    sub_1D7F050D0(v17, v18, a4);
    OUTLINED_FUNCTION_26_1();
    if (!v19)
    {
      goto LABEL_13;
    }
  }

  if (v6)
  {
    OUTLINED_FUNCTION_46_0(v13, v14, v15, v16, *v4);
    OUTLINED_FUNCTION_133();
  }

  else
  {
    v22 = OUTLINED_FUNCTION_53_0();
    sub_1D7F558C0(v22, v23, a3, v5, v24);
    OUTLINED_FUNCTION_133();

    return sub_1D8190DB4();
  }
}

void sub_1D7EF684C()
{
  OUTLINED_FUNCTION_71_0();
  v7 = v6;
  OUTLINED_FUNCTION_132();
  sub_1D7F050D0(v8, v9, v10);
  OUTLINED_FUNCTION_4_10();
  if (v11)
  {
    __break(1u);
LABEL_12:
    sub_1D8192714();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_92_0();
  sub_1D7E2C5FC(0, &unk_1ECA0D280);
  if (OUTLINED_FUNCTION_29_2())
  {
    v12 = OUTLINED_FUNCTION_97_0();
    sub_1D7F050D0(v12, v0, v7);
    OUTLINED_FUNCTION_31_2();
    if (!v14)
    {
      goto LABEL_12;
    }

    v3 = v13;
  }

  if (v2)
  {
    v15 = (*(*v1 + 56) + 16 * v3);
    *v15 = v5;
    v15[1] = v4;
  }

  else
  {
    v16 = OUTLINED_FUNCTION_43_1();
    sub_1D7F55904(v16, v17, v18, v19);

    sub_1D8190DB4();
  }
}

__n128 *sub_1D7EF6984(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1D7E11428(a2, a3);
  if (__OFADD__(*(v8 + 16), (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v9;
  v12 = v10;
  sub_1D7E17BB8(0, &qword_1ECA0D250);
  if ((sub_1D8192374() & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = sub_1D7E11428(a2, a3);
  if ((v12 & 1) != (v14 & 1))
  {
LABEL_13:
    result = sub_1D8192714();
    __break(1u);
    return result;
  }

  v11 = v13;
LABEL_5:
  v15 = *v4;
  if (v12)
  {
    v16 = (*(v15 + 56) + 40 * v11);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);

    return sub_1D7E176EC(a1, v16);
  }

  else
  {
    sub_1D7E301A0(v11, a2, a3, a1, v15);

    return sub_1D8190DB4();
  }
}

uint64_t sub_1D7EF6AF0()
{
  OUTLINED_FUNCTION_120();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  sub_1D7E11428(v7, v1);
  OUTLINED_FUNCTION_4_10();
  if (v10)
  {
    __break(1u);
LABEL_14:
    result = sub_1D8192714();
    __break(1u);
    return result;
  }

  v11 = v8;
  v12 = v9;
  sub_1D7E145C0(0, &unk_1ECA0D230);
  if (OUTLINED_FUNCTION_114())
  {
    v13 = OUTLINED_FUNCTION_158();
    sub_1D7E11428(v13, v14);
    OUTLINED_FUNCTION_122();
    if (!v16)
    {
      goto LABEL_14;
    }

    v11 = v15;
  }

  if (v12)
  {
    v17 = (*(*v0 + 56) + 16 * v11);
    *v17 = v6;
    v17[1] = v4;
    OUTLINED_FUNCTION_100();
  }

  else
  {
    v20 = OUTLINED_FUNCTION_131();
    sub_1D7F5594C(v20, v21, v2, v6, v4, v22);
    OUTLINED_FUNCTION_100();

    return sub_1D8190DB4();
  }
}

uint64_t sub_1D7EF6C24()
{
  OUTLINED_FUNCTION_144();
  v4 = OUTLINED_FUNCTION_10_11(v2, v3);
  sub_1D7E11428(v4, v5);
  OUTLINED_FUNCTION_4_10();
  if (v6)
  {
    __break(1u);
LABEL_13:
    result = sub_1D8192714();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_108();
  OUTLINED_FUNCTION_11_6();
  sub_1D7E63668(0, v7, v8, v9);
  v10 = OUTLINED_FUNCTION_40();
  if (v10)
  {
    v14 = OUTLINED_FUNCTION_41_1();
    sub_1D7E11428(v14, v15);
    OUTLINED_FUNCTION_26_1();
    if (!v16)
    {
      goto LABEL_13;
    }
  }

  if (v1)
  {
    OUTLINED_FUNCTION_46_0(v10, v11, v12, v13, *v0);
    OUTLINED_FUNCTION_139();
  }

  else
  {
    v19 = OUTLINED_FUNCTION_30_5();
    sub_1D7E146EC(v19);
    OUTLINED_FUNCTION_139();

    return sub_1D8190DB4();
  }
}

void sub_1D7EF6CFC()
{
  OUTLINED_FUNCTION_144();
  v4 = OUTLINED_FUNCTION_10_11(v2, v3);
  sub_1D7E11428(v4, v5);
  OUTLINED_FUNCTION_4_10();
  if (v6)
  {
    __break(1u);
LABEL_13:
    sub_1D8192714();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_108();
  sub_1D7E2C5FC(0, &qword_1EDBAE390);
  v7 = OUTLINED_FUNCTION_40();
  if (v7)
  {
    v11 = OUTLINED_FUNCTION_41_1();
    sub_1D7E11428(v11, v12);
    OUTLINED_FUNCTION_26_1();
    if (!v13)
    {
      goto LABEL_13;
    }
  }

  if (v1)
  {
    OUTLINED_FUNCTION_46_0(v7, v8, v9, v10, *v0);
    OUTLINED_FUNCTION_139();
  }

  else
  {
    v16 = OUTLINED_FUNCTION_30_5();
    sub_1D7E14734(v16, v17, v18, v19, v20);
    OUTLINED_FUNCTION_139();

    sub_1D8190DB4();
  }
}

void sub_1D7EF6DF8()
{
  if (!qword_1ECA0D1D0)
  {
    type metadata accessor for JSONSchema.SchemaType.ObjectType(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ECA0D1D0);
    }
  }
}

uint64_t sub_1D7EF6E5C()
{
  OUTLINED_FUNCTION_60();
  v1(0);
  OUTLINED_FUNCTION_8();
  v2 = OUTLINED_FUNCTION_109();
  v3(v2);
  return v0;
}

unint64_t sub_1D7EF6ECC()
{
  result = qword_1ECA0D1E0;
  if (!qword_1ECA0D1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0D1E0);
  }

  return result;
}

unint64_t sub_1D7EF6F20()
{
  result = qword_1ECA0D1F0;
  if (!qword_1ECA0D1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0D1F0);
  }

  return result;
}

unint64_t sub_1D7EF6F74()
{
  result = qword_1ECA0D200;
  if (!qword_1ECA0D200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0D200);
  }

  return result;
}

unint64_t sub_1D7EF7024()
{
  result = qword_1ECA0D210;
  if (!qword_1ECA0D210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0D210);
  }

  return result;
}

unint64_t sub_1D7EF7078()
{
  result = qword_1ECA0D220;
  if (!qword_1ECA0D220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0D220);
  }

  return result;
}

void sub_1D7EF70CC()
{
  if (!qword_1EDBB2DE8)
  {
    sub_1D7E188DC(255, &qword_1EDBB3380);
    v0 = sub_1D8192394();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBB2DE8);
    }
  }
}

void sub_1D7EF7198()
{
  if (!qword_1ECA0D260)
  {
    v0 = sub_1D8192394();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECA0D260);
    }
  }
}

unint64_t sub_1D7EF7254()
{
  result = qword_1ECA0D278;
  if (!qword_1ECA0D278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0D278);
  }

  return result;
}

void sub_1D7EF72A8()
{
  if (!qword_1EDBAE368)
  {
    sub_1D7E188DC(255, &unk_1EDBB32F0);
    v0 = sub_1D8192394();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBAE368);
    }
  }
}

void sub_1D7EF7340()
{
  if (!qword_1ECA0D290)
  {
    sub_1D7E188DC(255, &unk_1ECA0D298);
    v0 = sub_1D8192394();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECA0D290);
    }
  }
}

unsigned __int8 *sub_1D7EF74A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;
  sub_1D8190DB4();
  result = sub_1D8191114();
  v6 = result;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1D7EF7A9C();
    v36 = v35;

    v7 = v36;
    if ((v36 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1D8192254();
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v20 = v8 - 1;
        if (v8 != 1)
        {
          v21 = a3 + 48;
          v22 = a3 + 55;
          v23 = a3 + 87;
          if (a3 > 10)
          {
            v21 = 58;
          }

          else
          {
            v23 = 97;
            v22 = 65;
          }

          if (result)
          {
            v14 = 0;
            v24 = result + 1;
            do
            {
              v25 = *v24;
              if (v25 < 0x30 || v25 >= v21)
              {
                if (v25 < 0x41 || v25 >= v22)
                {
                  v18 = 0;
                  if (v25 < 0x61 || v25 >= v23)
                  {
                    goto LABEL_127;
                  }

                  v26 = -87;
                }

                else
                {
                  v26 = -55;
                }
              }

              else
              {
                v26 = -48;
              }

              v27 = v14 * a3;
              if ((v14 * a3) >> 64 != (v14 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v14 = v27 + (v25 + v26);
              if (__OFADD__(v27, (v25 + v26)))
              {
                goto LABEL_126;
              }

              ++v24;
              --v20;
            }

            while (v20);
LABEL_46:
            v18 = v14;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v18 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v28 = a3 + 48;
        v29 = a3 + 55;
        v30 = a3 + 87;
        if (a3 > 10)
        {
          v28 = 58;
        }

        else
        {
          v30 = 97;
          v29 = 65;
        }

        if (result)
        {
          v31 = 0;
          do
          {
            v32 = *result;
            if (v32 < 0x30 || v32 >= v28)
            {
              if (v32 < 0x41 || v32 >= v29)
              {
                v18 = 0;
                if (v32 < 0x61 || v32 >= v30)
                {
                  goto LABEL_127;
                }

                v33 = -87;
              }

              else
              {
                v33 = -55;
              }
            }

            else
            {
              v33 = -48;
            }

            v34 = v31 * a3;
            if ((v31 * a3) >> 64 != (v31 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v31 = v34 + (v32 + v33);
            if (__OFADD__(v34, (v32 + v33)))
            {
              goto LABEL_126;
            }

            ++result;
            --v8;
          }

          while (v8);
          v18 = v34 + (v32 + v33);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v8 != 1)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (result)
        {
          v14 = 0;
          v15 = result + 1;
          while (1)
          {
            v16 = *v15;
            if (v16 < 0x30 || v16 >= v11)
            {
              if (v16 < 0x41 || v16 >= v12)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v13)
                {
                  goto LABEL_127;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v14 * a3;
            if ((v14 * a3) >> 64 != (v14 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v14 = v19 - (v16 + v17);
            if (__OFSUB__(v19, (v16 + v17)))
            {
              goto LABEL_126;
            }

            ++v15;
            if (!--v10)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v18 = 0;
LABEL_127:

        return v18;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v37 = HIBYTE(v7) & 0xF;
  v62 = v6;
  v63 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v37)
      {
        v39 = 0;
        v55 = a3 + 48;
        v56 = a3 + 55;
        v57 = a3 + 87;
        if (a3 > 10)
        {
          v55 = 58;
        }

        else
        {
          v57 = 97;
          v56 = 65;
        }

        v58 = &v62;
        while (1)
        {
          v59 = *v58;
          if (v59 < 0x30 || v59 >= v55)
          {
            if (v59 < 0x41 || v59 >= v56)
            {
              v18 = 0;
              if (v59 < 0x61 || v59 >= v57)
              {
                goto LABEL_127;
              }

              v60 = -87;
            }

            else
            {
              v60 = -55;
            }
          }

          else
          {
            v60 = -48;
          }

          v61 = v39 * a3;
          if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v39 = v61 + (v59 + v60);
          if (__OFADD__(v61, (v59 + v60)))
          {
            goto LABEL_126;
          }

          v58 = (v58 + 1);
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v37)
    {
      v38 = v37 - 1;
      if (v38)
      {
        v39 = 0;
        v40 = a3 + 48;
        v41 = a3 + 55;
        v42 = a3 + 87;
        if (a3 > 10)
        {
          v40 = 58;
        }

        else
        {
          v42 = 97;
          v41 = 65;
        }

        v43 = &v62 + 1;
        while (1)
        {
          v44 = *v43;
          if (v44 < 0x30 || v44 >= v40)
          {
            if (v44 < 0x41 || v44 >= v41)
            {
              v18 = 0;
              if (v44 < 0x61 || v44 >= v42)
              {
                goto LABEL_127;
              }

              v45 = -87;
            }

            else
            {
              v45 = -55;
            }
          }

          else
          {
            v45 = -48;
          }

          v46 = v39 * a3;
          if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v39 = v46 - (v44 + v45);
          if (__OFSUB__(v46, (v44 + v45)))
          {
            goto LABEL_126;
          }

          ++v43;
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v37)
  {
    v47 = v37 - 1;
    if (v47)
    {
      v39 = 0;
      v48 = a3 + 48;
      v49 = a3 + 55;
      v50 = a3 + 87;
      if (a3 > 10)
      {
        v48 = 58;
      }

      else
      {
        v50 = 97;
        v49 = 65;
      }

      v51 = &v62 + 1;
      do
      {
        v52 = *v51;
        if (v52 < 0x30 || v52 >= v48)
        {
          if (v52 < 0x41 || v52 >= v49)
          {
            v18 = 0;
            if (v52 < 0x61 || v52 >= v50)
            {
              goto LABEL_127;
            }

            v53 = -87;
          }

          else
          {
            v53 = -55;
          }
        }

        else
        {
          v53 = -48;
        }

        v54 = v39 * a3;
        if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v39 = v54 + (v52 + v53);
        if (__OFADD__(v54, (v52 + v53)))
        {
          goto LABEL_126;
        }

        ++v51;
        --v47;
      }

      while (v47);
LABEL_125:
      v18 = v39;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

_BYTE *sub_1D7EF7A30@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  v6 = v4 || v5 == 0;
  v7 = v6 && (result = _swift_stdlib_strtod_clocale()) != 0 && *result == 0;
  *a2 = v7;
  return result;
}

uint64_t sub_1D7EF7A9C()
{
  v0 = sub_1D7EF7B08();
  v4 = sub_1D7EF7B3C(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_1D7EF7B3C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_1D8191E94();
    if (!v9 || (v10 = v9, v11 = sub_1D7E39E14(v9, 0), v12 = sub_1D7EF7C9C(v14, (v11 + 4), v10, a1, a2, a3, a4), sub_1D8190DB4(), , v12 == v10))
    {
      v13 = sub_1D8190FE4();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1D8190FE4();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_1D8192254();
LABEL_4:

  return sub_1D8190FE4();
}

unint64_t sub_1D7EF7C9C(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_36;
  }

  if (a3 < 0)
  {
    goto LABEL_40;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_36:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    result = v12;
    if ((v12 & 0xC) == v15)
    {
      result = sub_1D7EF7EAC(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1D81910B4();
      v19 = result;
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_1D8192254();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = sub_1D7EF7EAC(v12, a6, a7);
      v12 = result;
      if ((a7 & 0x1000000000000000) == 0)
      {
LABEL_27:
        v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_31;
      }
    }

    else if ((a7 & 0x1000000000000000) == 0)
    {
      goto LABEL_27;
    }

    if (v23 <= v12 >> 16)
    {
      goto LABEL_39;
    }

    result = sub_1D8191094();
    v12 = result;
LABEL_31:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_36;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_38;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1D7EF7EAC(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1D81910D4();
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
    v5 = MEMORY[0x1DA7132B0](15, a1 >> 16);
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

BOOL sub_1D7EF7F28(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v3 < 0x21 && ((0x100003E01uLL >> v3) & 1) != 0)
      {
        return 0;
      }

      goto LABEL_9;
    }

LABEL_13:
    sub_1D8192194();
    if (!v2)
    {
      return v7;
    }

    return v5;
  }

  if (a1 <= 0x20u && ((0x100003E01uLL >> a1) & 1) != 0)
  {
    return 0;
  }

LABEL_9:
  v4 = _swift_stdlib_strtod_clocale();
  if (!v4)
  {
    return 0;
  }

  return *v4 == 0;
}

void sub_1D7EF803C(uint64_t a1, void *a2)
{
  if (!*a2)
  {
    v3 = OUTLINED_FUNCTION_35();
    v4(v3);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, v2);
    }
  }
}

uint64_t sub_1D7EF80A0()
{
  v1 = OUTLINED_FUNCTION_76_0();
  sub_1D7EF803C(v1, v2);
  OUTLINED_FUNCTION_8();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_1D7EF80F0(uint64_t a1, uint64_t a2)
{
  sub_1D7EBB3F4(0, a2);
  OUTLINED_FUNCTION_8();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_1D7EF818C()
{
  if (!qword_1EDBB2E20)
  {
    sub_1D7E188DC(255, qword_1EDBB8998);
    v0 = sub_1D8192394();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBB2E20);
    }
  }
}

void sub_1D7EF8224()
{
  if (!qword_1EDBAE658)
  {
    type metadata accessor for Key();
    sub_1D7E2B754(&qword_1EDBB30F0, type metadata accessor for Key);
    v0 = sub_1D8190E14();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBAE658);
    }
  }
}

unint64_t sub_1D7EF82C4()
{
  result = qword_1EDBB08A8;
  if (!qword_1EDBB08A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBB08A8);
  }

  return result;
}

void sub_1D7EF8318()
{
  if (!qword_1EDBB2D50)
  {
    v0 = sub_1D8192394();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBB2D50);
    }
  }
}

void sub_1D7EF8378()
{
  if (!qword_1EDBAE348)
  {
    type metadata accessor for Plugin();
    v0 = sub_1D8192394();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBAE348);
    }
  }
}

void sub_1D7EF8414()
{
  if (!qword_1EDBB2D60)
  {
    sub_1D7EF847C();
    v0 = sub_1D8192394();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBB2D60);
    }
  }
}

unint64_t sub_1D7EF847C()
{
  result = qword_1EDBB3100;
  if (!qword_1EDBB3100)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDBB3100);
  }

  return result;
}

uint64_t sub_1D7EF850C()
{
  OUTLINED_FUNCTION_60();
  v1(0);
  OUTLINED_FUNCTION_8();
  v2 = OUTLINED_FUNCTION_109();
  v3(v2);
  return v0;
}

uint64_t objectdestroy_95Tm()
{
  if (*(v0 + 120) != 255)
  {
  }

  return swift_deallocObject();
}

unint64_t sub_1D7EF85A8()
{
  result = qword_1ECA0D2D8;
  if (!qword_1ECA0D2D8)
  {
    sub_1D7E188DC(255, &unk_1ECA0D2D0);
    sub_1D7E2B754(&qword_1ECA0D008, MEMORY[0x1E69D6A58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0D2D8);
  }

  return result;
}

void sub_1D7EF86C0()
{
  if (!qword_1ECA0D2E0)
  {
    v0 = type metadata accessor for JSONSchema.SuppliedValues.Errors();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECA0D2E0);
    }
  }
}

uint64_t sub_1D7EF873C(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

void sub_1D7EF8750()
{
  if (!qword_1ECA0D2F0)
  {
    v0 = type metadata accessor for JSONSchema.SuppliedValues.CodingKeys();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECA0D2F0);
    }
  }
}

void sub_1D7EF8800()
{
  if (!qword_1ECA0D308)
  {
    v0 = type metadata accessor for JSONSchema.LabeledValue();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECA0D308);
    }
  }
}

void sub_1D7EF887C()
{
  if (!qword_1ECA0D328)
  {
    v0 = type metadata accessor for JSONSchema.SuppliedValues.Errors();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECA0D328);
    }
  }
}

void sub_1D7EF88F8()
{
  if (!qword_1ECA0D338)
  {
    v0 = type metadata accessor for JSONSchema.SuppliedValues.CodingKeys();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECA0D338);
    }
  }
}

void sub_1D7EF89A8()
{
  if (!qword_1ECA0D350)
  {
    v0 = type metadata accessor for JSONSchema.LabeledValue();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECA0D350);
    }
  }
}

uint64_t sub_1D7EF8A24(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    v4 = OUTLINED_FUNCTION_159();
    sub_1D7E2B754(v4, v5);
    OUTLINED_FUNCTION_62_1();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D7EF8AA8()
{
  result = qword_1ECA0D378;
  if (!qword_1ECA0D378)
  {
    sub_1D7E145C0(255, &unk_1ECA0D370);
    sub_1D7E2B754(&qword_1ECA0D008, MEMORY[0x1E69D6A58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0D378);
  }

  return result;
}

unint64_t sub_1D7EF8B88()
{
  result = qword_1ECA0D398;
  if (!qword_1ECA0D398)
  {
    sub_1D7E09C74(255, &qword_1EDBB3330, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0D398);
  }

  return result;
}

unint64_t sub_1D7EF8C1C()
{
  result = qword_1ECA0D3A8;
  if (!qword_1ECA0D3A8)
  {
    sub_1D7E63668(255, &qword_1EDBB3460, MEMORY[0x1E69E6158], MEMORY[0x1E69E5E28]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0D3A8);
  }

  return result;
}

unint64_t sub_1D7EF8CB0()
{
  result = qword_1ECA0D3B0;
  if (!qword_1ECA0D3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0D3B0);
  }

  return result;
}

void sub_1D7EF8D04()
{
  if (!qword_1ECA0D3B8)
  {
    v0 = type metadata accessor for JSONSchema.SuppliedValues.Errors();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECA0D3B8);
    }
  }
}

void sub_1D7EF8D80(uint64_t a1, void *a2)
{
  if (!*a2)
  {
    v3 = OUTLINED_FUNCTION_35();
    v4(v3);
    v5 = OUTLINED_FUNCTION_85();
    sub_1D7E2B754(v5, v6);
    v7 = sub_1D8192544();
    if (!v8)
    {
      atomic_store(v7, v2);
    }
  }
}

void sub_1D7EF8E0C()
{
  if (!qword_1ECA0D3C8)
  {
    v0 = type metadata accessor for JSONSchema.SuppliedValues.CodingKeys();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECA0D3C8);
    }
  }
}

void sub_1D7EF8E88(uint64_t a1, uint64_t a2)
{
  if (!OUTLINED_FUNCTION_115(a1, a2))
  {
    v4 = v2;
    v3();
    OUTLINED_FUNCTION_159();
    v5 = sub_1D8192544();
    if (!v6)
    {
      atomic_store(v5, v4);
    }
  }
}

unint64_t sub_1D7EF8EE0()
{
  result = qword_1ECA0D3E8;
  if (!qword_1ECA0D3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0D3E8);
  }

  return result;
}

unint64_t sub_1D7EF8F6C()
{
  result = qword_1ECA0D900;
  if (!qword_1ECA0D900)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1ECA0D900);
  }

  return result;
}

void sub_1D7EF8FBC()
{
  if (!qword_1ECA0D410[0])
  {
    sub_1D8192364();
    sub_1D7EF8F6C();
    v0 = sub_1D8192394();
    if (!v1)
    {
      atomic_store(v0, qword_1ECA0D410);
    }
  }
}

uint64_t sub_1D7EF906C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1D7EF90A8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D7EF90FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1D7EF9158(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_98_0(-1);
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
      return OUTLINED_FUNCTION_98_0((*a1 | (v4 << 8)) - 5);
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

      return OUTLINED_FUNCTION_98_0((*a1 | (v4 << 8)) - 5);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_98_0((*a1 | (v4 << 8)) - 5);
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

  return OUTLINED_FUNCTION_98_0(v8);
}

_BYTE *sub_1D7EF91DC(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = OUTLINED_FUNCTION_143(result, a2 + 4);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1D7EF92D4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_98_0(-1);
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
      return OUTLINED_FUNCTION_98_0((*a1 | (v4 << 8)) - 2);
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

      return OUTLINED_FUNCTION_98_0((*a1 | (v4 << 8)) - 2);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_98_0((*a1 | (v4 << 8)) - 2);
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

  return OUTLINED_FUNCTION_98_0(v8);
}

_BYTE *sub_1D7EF9358(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = OUTLINED_FUNCTION_143(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_5TeaUI10JSONSchemaV14SuppliedValuesOy_SSGSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1D7EF9450(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 57))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 40);
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

uint64_t sub_1D7EF94A4(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

uint64_t sub_1D7EF9518(uint64_t a1, int a2)
{
  if (a2)
  {
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
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D7EF9558(uint64_t result, int a2, int a3)
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

      return OUTLINED_FUNCTION_140(result, a2);
    }

    *(result + 16) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_140(result, a2);
    }
  }

  return result;
}

void sub_1D7EF95C4()
{
  type metadata accessor for JSONSchema.SchemaType.ObjectType(319);
  if (v0 <= 0x3F)
  {
    sub_1D7E188DC(319, &unk_1ECA0D5B0);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D7EF9678()
{
  if (!qword_1ECA0D5B8)
  {
    sub_1D7E188DC(255, &qword_1ECA0D298);
    v0 = sub_1D8190E14();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECA0D5B8);
    }
  }
}

uint64_t sub_1D7EF9728(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_98_0(-1);
  }

  if (a2 >= 0xFE && *(a1 + 105))
  {
    return OUTLINED_FUNCTION_98_0(*a1 + 253);
  }

  v3 = *(a1 + 104);
  if (v3 > 1)
  {
    return OUTLINED_FUNCTION_98_0((v3 ^ 0xFF) - 1);
  }

  else
  {
    return OUTLINED_FUNCTION_98_0(-1);
  }
}

uint64_t sub_1D7EF9768(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 105) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 105) = 0;
    }

    if (a2)
    {
      *(result + 104) = ~a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for JSONSchema.SchemaType.BooleanSchema(unsigned __int8 *a1, unsigned int a2)
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
      if (v4)
      {
        goto LABEL_15;
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

LABEL_15:
        v5 = (*a1 | (v4 << 8)) - 3;
        return (v5 + 1);
      }

      v4 = a1[1];
      if (a1[1])
      {
        goto LABEL_15;
      }
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 >= 2)
  {
    v5 = ((v6 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v5 = -2;
  }

  if (v5 < 0)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for JSONSchema.SchemaType.BooleanSchema(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t __swift_get_extra_inhabitant_index_15Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OUTLINED_FUNCTION_76_0();
  type metadata accessor for JSONSchema(v6);
  OUTLINED_FUNCTION_95();
  if (*(v8 + 84) != a2)
  {
    return OUTLINED_FUNCTION_37_1(*(v3 + *(a3 + 24)));
  }

  return __swift_getEnumTagSinglePayload(v3, a2, v7);
}

void __swift_store_extra_inhabitant_index_16Tm(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  v8 = OUTLINED_FUNCTION_113();
  type metadata accessor for JSONSchema(v8);
  OUTLINED_FUNCTION_95();
  if (*(v9 + 84) == a3)
  {
    v10 = OUTLINED_FUNCTION_145();

    __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  }

  else
  {
    *(v4 + *(a4 + 24)) = a2;
  }
}

void sub_1D7EF9AD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for JSONSchema(319);
  if (v6 <= 0x3F)
  {
    sub_1D7E188DC(319, a5);
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1D7EF9BDC()
{
  result = qword_1ECA0D5E0;
  if (!qword_1ECA0D5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0D5E0);
  }

  return result;
}

unint64_t sub_1D7EF9C34()
{
  result = qword_1ECA0D5E8;
  if (!qword_1ECA0D5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0D5E8);
  }

  return result;
}

unint64_t sub_1D7EF9C8C()
{
  result = qword_1ECA0D5F0;
  if (!qword_1ECA0D5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0D5F0);
  }

  return result;
}

unint64_t sub_1D7EF9D00()
{
  result = qword_1ECA0D5F8;
  if (!qword_1ECA0D5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0D5F8);
  }

  return result;
}

unint64_t sub_1D7EF9D58()
{
  result = qword_1ECA0D600;
  if (!qword_1ECA0D600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0D600);
  }

  return result;
}

unint64_t sub_1D7EF9DB0()
{
  result = qword_1ECA0D608;
  if (!qword_1ECA0D608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0D608);
  }

  return result;
}

unint64_t sub_1D7EF9E08()
{
  result = qword_1ECA0D610;
  if (!qword_1ECA0D610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0D610);
  }

  return result;
}

unint64_t sub_1D7EF9E60()
{
  result = qword_1ECA0D618;
  if (!qword_1ECA0D618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0D618);
  }

  return result;
}

unint64_t sub_1D7EF9EB8()
{
  result = qword_1ECA0D620;
  if (!qword_1ECA0D620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0D620);
  }

  return result;
}

unint64_t sub_1D7EF9F10()
{
  result = qword_1ECA0D628;
  if (!qword_1ECA0D628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0D628);
  }

  return result;
}

unint64_t sub_1D7EF9F68()
{
  result = qword_1ECA0D630;
  if (!qword_1ECA0D630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0D630);
  }

  return result;
}

unint64_t sub_1D7EF9FC0()
{
  result = qword_1ECA0D638;
  if (!qword_1ECA0D638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0D638);
  }

  return result;
}

unint64_t sub_1D7EFA050()
{
  result = qword_1ECA0D640;
  if (!qword_1ECA0D640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0D640);
  }

  return result;
}

unint64_t sub_1D7EFA0A8()
{
  result = qword_1ECA0D648;
  if (!qword_1ECA0D648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0D648);
  }

  return result;
}

unint64_t sub_1D7EFA100()
{
  result = qword_1ECA0D650;
  if (!qword_1ECA0D650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0D650);
  }

  return result;
}

unint64_t sub_1D7EFA158()
{
  result = qword_1ECA0D658;
  if (!qword_1ECA0D658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0D658);
  }

  return result;
}

unint64_t sub_1D7EFA1B0()
{
  result = qword_1ECA0D660;
  if (!qword_1ECA0D660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0D660);
  }

  return result;
}

unint64_t sub_1D7EFA208()
{
  result = qword_1ECA0D668;
  if (!qword_1ECA0D668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0D668);
  }

  return result;
}

void OUTLINED_FUNCTION_167()
{

  JUMPOUT(0x1DA713260);
}

uint64_t OUTLINED_FUNCTION_171(uint64_t a1)
{
  v4 = *(v2 - 144);
  v5 = *(v2 - 136);
  v6 = *(v2 - 128);

  return sub_1D7EE78B4(a1, v4, v5, v6, v1);
}

void *OUTLINED_FUNCTION_172(uint64_t a1)
{

  return memcpy((v1 - 208), ((a1 & 0x1FFFFFFFFFFFFFFFLL) + 16), 0x69uLL);
}

id StatusBarView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id _s5TeaUI13StatusBarViewC5frameACSo6CGRectV_tcfC_0(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

char *BlurStatusBarView.init(frame:barStyle:)(void **a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = *a1;
  v6 = type metadata accessor for BarView();
  v14 = OUTLINED_FUNCTION_3_21(v6, v7, v8, v9, v10, v11, v12, v13, v24, v26, *v27, *&v27[4], v27[6], 0, v5);
  sub_1D7E42AD0(v5);
  *&v2[OBJC_IVAR____TtC5TeaUI17BlurStatusBarView_barView] = v14;
  v25.receiver = v2;
  v25.super_class = ObjectType;
  v22 = OUTLINED_FUNCTION_1_12(v15, sel_initWithFrame_, v16, v17, v18, v19, v20, v21, v25);
  [v22 setPreservesSuperviewLayoutMargins_];
  [v22 setAutoresizingMask_];
  [v22 addSubview_];

  return v22;
}

id _s5TeaUI13StatusBarViewCfD_0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id UINavigationController.cardViewAppearance.getter@<X0>(void *a1@<X8>)
{
  if ([v1 visibleViewController] && (sub_1D7E194D0(), sub_1D7E0631C(0, &qword_1EDBAFE68), (OUTLINED_FUNCTION_1_13() & 1) != 0))
  {
    if (*(&v10 + 1))
    {
      sub_1D7E05450(&v9, v12);
      __swift_project_boxed_opaque_existential_1(v12, v12[3]);
      v3 = OUTLINED_FUNCTION_0_5();
      v4(v3);
      return __swift_destroy_boxed_opaque_existential_1Tm(v12);
    }
  }

  else
  {
    v11 = 0;
    v9 = 0u;
    v10 = 0u;
  }

  sub_1D7E9DD24(&v9, &qword_1ECA0D678, &qword_1EDBAFE68);
  if (qword_1ECA0C340 != -1)
  {
    swift_once();
  }

  v6 = *algn_1ECA10558;
  v8 = qword_1ECA10550;
  *a1 = qword_1ECA10550;
  a1[1] = v6;
  v7 = v6;

  return v8;
}

void UINavigationController.cardViewBehavior.getter(uint64_t a1@<X8>)
{
  if ([v1 visibleViewController] && (sub_1D7E194D0(), sub_1D7E0631C(0, &qword_1EDBB0218), (OUTLINED_FUNCTION_1_13() & 1) != 0))
  {
    if (*(&v6 + 1))
    {
      sub_1D7E05450(&v5, v8);
      __swift_project_boxed_opaque_existential_1(v8, v8[3]);
      v3 = OUTLINED_FUNCTION_0_5();
      v4(v3);
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      return;
    }
  }

  else
  {
    v7 = 0;
    v5 = 0u;
    v6 = 0u;
  }

  sub_1D7E9DD24(&v5, &qword_1EDBB0210, &qword_1EDBB0218);
  static CardViewBehavior.default.getter(a1);
}

id UINavigationController.responder.getter()
{
  result = [v0 visibleViewController];
  if (!result)
  {

    return v2;
  }

  return result;
}

Swift::Void __swiftcall UINavigationController.set(previewing:)(Swift::Bool previewing)
{
  v3 = [v1 visibleViewController];
  if (v3)
  {
    v4 = v3;
    setPreviewing(viewController:previewing:)(v3, previewing);
  }
}

Swift::Void __swiftcall UINavigationController.popViewControllerOppositeDirection(animated:)(Swift::Bool animated)
{
  v3 = [v1 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_8;
  }

  v4 = v3;
  v5 = [v3 clipsToBounds];

  v6 = [v1 view];
  if (!v6)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v7 = v6;
  [v6 setClipsToBounds_];

  if (!animated)
  {
LABEL_6:
    v12 = objc_opt_self();
    [v12 begin];

    v13 = swift_allocObject();
    *(v13 + 16) = v1;
    *(v13 + 24) = v5;
    v16[4] = sub_1D7EFB150;
    v16[5] = v13;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 1107296256;
    v16[2] = sub_1D7E64940;
    v16[3] = &block_descriptor;
    v14 = _Block_copy(v16);
    v15 = v1;

    [v12 setCompletionBlock_];
    _Block_release(v14);
    [v12 commit];
    return;
  }

  v8 = [v1 view];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 layer];

    v11 = sub_1D7EFAD6C();
    [v10 addAnimation:v11 forKey:0];

    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
}

id sub_1D7EFAD6C()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E6979538]) init];
  [v0 setDuration_];
  v1 = objc_allocWithZone(MEMORY[0x1E69793D0]);
  LODWORD(v2) = 1051260355;
  LODWORD(v3) = 1045220557;
  LODWORD(v4) = 1.0;
  v5 = [v1 initWithControlPoints__:v2 :{0.0, v3, v4}];
  [v0 setTimingFunction_];

  [v0 setType_];
  [v0 setSubtype_];
  return v0;
}

void sub_1D7EFAE4C(void *a1, char a2)
{
  v3 = [a1 view];
  if (v3)
  {
    v4 = v3;
    [v3 setClipsToBounds_];
  }

  else
  {
    __break(1u);
  }
}

void sub_1D7EFAEB8(void *a1, uint64_t a2, Swift::Bool a3)
{
  v4 = a1;
  UINavigationController.popViewControllerOppositeDirection(animated:)(a3);
}

Swift::Void __swiftcall UINavigationController.popToViewControllerOppositeDirection(_:animated:)(UIViewController *_, Swift::Bool animated)
{
  if (animated)
  {
    v4 = [v2 view];
    if (!v4)
    {
      __break(1u);
      return;
    }

    v5 = v4;
    v6 = [v4 layer];

    v7 = sub_1D7EFAD6C();
    [v6 addAnimation:v7 forKey:0];
  }

  v8 = [v2 popToViewController:_ animated:0];
}

void sub_1D7EFAFD0(void *a1, uint64_t a2, void *a3, Swift::Bool a4)
{
  v6 = a3;
  v7 = a1;
  UINavigationController.popToViewControllerOppositeDirection(_:animated:)(v6, a4);
}

Swift::Void __swiftcall UINavigationController.popToRootViewControllerOppositeDirection(animated:)(Swift::Bool animated)
{
  if (animated)
  {
    v2 = [v1 view];
    if (!v2)
    {
      __break(1u);
      return;
    }

    v3 = v2;
    v4 = [v2 layer];

    v5 = sub_1D7EFAD6C();
    [v4 addAnimation:v5 forKey:0];
  }

  v6 = [v1 popToRootViewControllerAnimated_];
}

void sub_1D7EFB0FC(void *a1, uint64_t a2, Swift::Bool a3)
{
  v4 = a1;
  UINavigationController.popToRootViewControllerOppositeDirection(animated:)(a3);
}

uint64_t ShortcutItemHandlerManager.add(_:)(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  sub_1D7EE4308();
  v4 = *(*(v1 + 16) + 16);
  sub_1D7EE4534(v4);
  v5 = *(v1 + 16);
  *(v5 + 16) = v4 + 1;
  sub_1D7E0E768(a1, v5 + 40 * v4 + 32);
  *(v2 + 16) = v5;
  return swift_endAccess();
}

Swift::Bool __swiftcall ShortcutItemHandlerManager.handle(shortcutItem:)(UIApplicationShortcutItem shortcutItem)
{
  type metadata accessor for ShortcutItemHandlerMatcher();
  *(swift_initStackObject() + 16) = shortcutItem;
  swift_beginAccess();
  v3 = *(v1 + 16);
  v4 = *(v3 + 16);
  v5 = shortcutItem.super.isa;
  result = sub_1D8190DB4();
  if (!v4)
  {

    v15 = 0;
    return v15 & 1;
  }

  if (*(v3 + 16))
  {
    sub_1D7E0E768(v3 + 32, v19);
    v7 = v20;
    v8 = v21;
    __swift_project_boxed_opaque_existential_1(v19, v20);
    v9 = (*(v8 + 8))(v7, v8);
    sub_1D80B9204(v9, &v16);

    v11 = v16;
    v10 = v17;
    v12 = v18;
    v13 = v20;
    v14 = v21;
    __swift_project_boxed_opaque_existential_1(v19, v20);
    v16 = v11;
    v17 = v10;
    v18 = v12;
    v15 = (*(v14 + 16))(v5, &v16, v13, v14);

    sub_1D7E0E10C(v10);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    return v15 & 1;
  }

  __break(1u);
  return result;
}

uint64_t ShortcutItemHandlerManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

id TabBarSplitViewPresentationContext.collapsedPresentation.getter@<X0>(void *a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  a1[1] = v3;
  return OUTLINED_FUNCTION_0_6(v2, v3, *(v1 + 16), a1);
}

id sub_1D7EFB42C(id result, unint64_t a2, unsigned __int8 a3)
{
  switch(a3 >> 5)
  {
    case 0:
      result = sub_1D7EFB46C(result, a2);
      break;
    case 3:
    case 4:
      result = sub_1D8190DB4();
      break;
    case 5:
      result = result;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D7EFB46C(uint64_t a1, unint64_t a2)
{
  if (a2 >= 5)
  {
    return sub_1D8190DB4();
  }

  return result;
}

id TabBarSplitViewPresentationContext.expandedPresentation.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  *a1 = v2;
  a1[1] = v3;
  return OUTLINED_FUNCTION_0_6(v2, v3, *(v1 + 40), a1);
}

__n128 TabBarSplitViewPresentationContext.init(collapsed:expanded:)@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 16);
  v4 = a2[1].n128_u8[0];
  *a3 = *a1;
  *(a3 + 16) = v3;
  result = *a2;
  *(a3 + 24) = *a2;
  *(a3 + 40) = v4;
  return result;
}

BOOL TabBarSplitViewPresentationContext.isSticky.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 16);
  v6 = *(v0 + 40);
  v8 = (v5 & 0xE0) == 0x40 || (v6 & 0xE0) == 64;
  sub_1D7EFB42C(v1, v2, v5);
  sub_1D7EFB42C(v3, v4, v6);
  sub_1D7EFB554(v1, v2, v5);
  sub_1D7EFB554(v3, v4, v6);
  return v8;
}

void sub_1D7EFB554(void *a1, unint64_t a2, unsigned __int8 a3)
{
  switch(a3 >> 5)
  {
    case 0:
      sub_1D7EFB594(a1, a2);
      break;
    case 3:
    case 4:

      break;
    case 5:

      break;
    default:
      return;
  }
}

uint64_t sub_1D7EFB594(uint64_t a1, unint64_t a2)
{
  if (a2 >= 5)
  {
  }

  return result;
}

id TabBarSplitViewPresentationContext.tabBarSplitViewPresentation(for:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = 8;
  if (a1)
  {
    v4 = 32;
  }

  v5 = 24;
  if ((a1 & 1) == 0)
  {
    v5 = 0;
  }

  v6 = 16;
  if (a1)
  {
    v6 = 40;
  }

  v7 = *(v2 + v4);
  v8 = *(v2 + v5);
  v9 = *(v2 + v6);
  result = sub_1D7EFB42C(v8, v7, v9);
  *a2 = v8;
  *(a2 + 8) = v7;
  *(a2 + 16) = v9;
  return result;
}

uint64_t get_enum_tag_for_layout_string_5TeaUI27TabBarSplitViewPresentationO10NavigationO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D7EFB644(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7B && *(a1 + 41))
    {
      v2 = *a1 + 122;
    }

    else
    {
      v2 = ((*(a1 + 16) >> 5) & 0xFFFFFF87 | (8 * ((*(a1 + 16) >> 1) & 0xF))) ^ 0x7F;
      if (v2 >= 0x7A)
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

uint64_t sub_1D7EFB690(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7A)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 123;
    if (a3 >= 0x7B)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7B)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * (((-a2 >> 3) & 0xF) - 16 * a2);
    }
  }

  return result;
}

uint64_t BlueprintLayoutSectionViewState.items.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_1D7EFB80C(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for BlueprintLayoutItemViewState(unsigned __int8 *a1, unsigned int a2)
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
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for BlueprintLayoutItemViewState(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1D7EFBA00(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, char *, uint64_t, uint64_t, uint64_t))
{
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a2, v7);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, v10);
  v14 = a3(a1, v12, v3, v7, v8);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v14;
}

Swift::Void __swiftcall MemoryImageCache.clear(percentage:)(Swift::Double percentage)
{
  v3 = v1[6];
  v4 = v1[7];
  __swift_project_boxed_opaque_existential_1(v1 + 3, v3);
  OUTLINED_FUNCTION_0_8();
  v5 = swift_allocObject();
  swift_weakInit();
  v6[2] = v5;
  *&v6[3] = percentage;
  (*(v4 + 8))(sub_1D7EFBE74, v6, v3, v4);
}

uint64_t sub_1D7EFBBC4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_1D818FC64();
  }

  return result;
}

uint64_t MemoryImageCache.deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 24);
  return v0;
}

uint64_t MemoryImageCache.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_1D7EFBCA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  (*(v9 + 16))(v11, a2, a4);
  v13 = sub_1D7EFBDC8(a1, v11, v12, a4, a5);
  (*(v9 + 8))(a2, a4);
  return v13;
}

uint64_t sub_1D7EFBDC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = a4;
  v12 = a5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v10);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_0, a2, a4);
  sub_1D7E1D0A0();
  swift_allocObject();
  *(a3 + 16) = sub_1D818FC84();
  sub_1D7E05450(&v10, a3 + 24);
  return a3;
}

uint64_t sub_1D7EFBF24(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (a2)
  {
    if ((a4 & 1) == 0)
    {
      return 0;
    }
  }

  else if (a4)
  {
    return 0;
  }

  return a5(a1, a3);
}

uint64_t sub_1D7EFBF44()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D7EFBFA0()
{
  OUTLINED_FUNCTION_66_0();
  v5 = *v4;
  if (v4 && *v4 == _TtC5TeaUI20JSONSchemaValueArray && *v0 == _TtC5TeaUI20JSONSchemaValueArray)
  {

    v6 = sub_1D7EFC4E4();
    v7 = sub_1D7EFC4E4();
    v8 = sub_1D8185814(v6, v7);

    return v8 & 1;
  }

  if (v1 && v5 == _TtC5TeaUI19JSONSchemaValueBool && *v0 == _TtC5TeaUI19JSONSchemaValueBool)
  {

    v10 = sub_1D7EFC58C();
    if ((v10 ^ sub_1D7EFC58C()))
    {
      goto LABEL_49;
    }

    goto LABEL_32;
  }

  if (v1 && v5 == _TtC5TeaUI22JSONSchemaValueInteger && *v0 == _TtC5TeaUI22JSONSchemaValueInteger)
  {

    v2 = sub_1D7EFC62C();
    v11 = v0;
    if (v2 != sub_1D7EFC62C() || (OUTLINED_FUNCTION_76_1() & 1) == 0)
    {
      goto LABEL_49;
    }

    OUTLINED_FUNCTION_19_4();
    if (!v24)
    {
      v13 = *v12;
      if (v3 != 255)
      {
        v14 = sub_1D8185B5C;
LABEL_48:
        v19 = sub_1D7EFBF24(v13, v2 & 1, v11, v3 & 1, v14);
        sub_1D7ED06CC(v13, v2);

        sub_1D7ED07B8(v13, v2);
        return v19 & 1;
      }

      goto LABEL_54;
    }

    goto LABEL_52;
  }

  if (v1 && v5 == _TtC5TeaUI21JSONSchemaValueNumber && *v0 == _TtC5TeaUI21JSONSchemaValueNumber && v0)
  {

    v15 = sub_1D7EFC6BC();
    v11 = v0;
    if (v15 != sub_1D7EFC6BC() || (OUTLINED_FUNCTION_76_1() & 1) == 0)
    {
      goto LABEL_49;
    }

    OUTLINED_FUNCTION_19_4();
    if (!v24)
    {
      v13 = *v16;
      if (v3 != 255)
      {
        v14 = sub_1D8185AAC;
        goto LABEL_48;
      }

      goto LABEL_54;
    }

    goto LABEL_52;
  }

  if (!v1 || v5 != _TtC5TeaUI21JSONSchemaValueObject || *v0 != _TtC5TeaUI21JSONSchemaValueObject || !v0)
  {
    v19 = 0;
    if (!v1)
    {
      return v19 & 1;
    }

    if (v5 != _TtC5TeaUI21JSONSchemaValueString)
    {
      return v19 & 1;
    }

    v19 = 0;
    if (*v0 != _TtC5TeaUI21JSONSchemaValueString || !v0)
    {
      return v19 & 1;
    }

    v20 = sub_1D7EFD090();
    v2 = v21;
    v22 = sub_1D7EFD090();
    v11 = v23;
    v24 = v20 == v22 && v2 == v23;
    if (v24)
    {
    }

    else
    {
      v25 = sub_1D8192634();

      if ((v25 & 1) == 0)
      {
        goto LABEL_49;
      }
    }

    if (OUTLINED_FUNCTION_76_1())
    {
      OUTLINED_FUNCTION_19_4();
      if (!v24)
      {
        v13 = *v26;
        if (v3 != 255)
        {
          v14 = sub_1D81859E0;
          goto LABEL_48;
        }

LABEL_54:
        sub_1D8190DB4();

        v27 = v13;
        v28 = v2;
LABEL_55:
        sub_1D7ED07B8(v27, v28);
        goto LABEL_50;
      }

LABEL_52:
      sub_1D7ED06CC(v11, v3);

      if (v3 == 255)
      {
        v19 = 1;
        return v19 & 1;
      }

      v27 = v11;
      v28 = v3;
      goto LABEL_55;
    }

LABEL_49:

LABEL_50:
    v19 = 0;
    return v19 & 1;
  }

  sub_1D7EFC74C();
  sub_1D7EFC74C();
  sub_1D7EFC7F4();
  v18 = v17;

  if ((v18 & 1) == 0)
  {
    goto LABEL_49;
  }

LABEL_32:
  v19 = OUTLINED_FUNCTION_76_1();

  return v19 & 1;
}

uint64_t sub_1D7EFC4E4()
{
  swift_getKeyPath();
  v1 = sub_1D7F01EBC(&qword_1ECA0D7E8, type metadata accessor for JSONSchemaValueArray);
  OUTLINED_FUNCTION_9_4(v1, v2, v3, v4, v5, v6, v7, v8, v10, v0);
  sub_1D818E9D4();

  OUTLINED_FUNCTION_73_1();
  return sub_1D8190DB4();
}

uint64_t sub_1D7EFC58C()
{
  swift_getKeyPath();
  v1 = sub_1D7F01EBC(&qword_1ECA0D7F0, type metadata accessor for JSONSchemaValueBool);
  OUTLINED_FUNCTION_9_4(v1, v2, v3, v4, v5, v6, v7, v8, v10, v0);
  sub_1D818E9D4();

  return *(v0 + OBJC_IVAR____TtC5TeaUI19JSONSchemaValueBool__value);
}

uint64_t sub_1D7EFC62C()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_28_3();
  v3 = sub_1D7F01EBC(v1, v2);
  OUTLINED_FUNCTION_9_4(v3, v4, v5, v6, v7, v8, v9, v10, v12, v0);
  sub_1D818E9D4();

  return *(v0 + OBJC_IVAR____TtC5TeaUI22JSONSchemaValueInteger__value);
}

double sub_1D7EFC6BC()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_27_3();
  v3 = sub_1D7F01EBC(v1, v2);
  OUTLINED_FUNCTION_9_4(v3, v4, v5, v6, v7, v8, v9, v10, v12, v0);
  sub_1D818E9D4();

  return *(v0 + OBJC_IVAR____TtC5TeaUI21JSONSchemaValueNumber__value);
}

uint64_t sub_1D7EFC74C()
{
  swift_getKeyPath();
  v1 = sub_1D7F01EBC(&qword_1ECA0D810, type metadata accessor for JSONSchemaValueObject);
  OUTLINED_FUNCTION_9_4(v1, v2, v3, v4, v5, v6, v7, v8, v10, v0);
  sub_1D818E9D4();

  OUTLINED_FUNCTION_73_1();
  return sub_1D8190DB4();
}

void sub_1D7EFC7F4()
{
  OUTLINED_FUNCTION_120();
  if (v2 == v3 || (OUTLINED_FUNCTION_66_0(), *(v4 + 16) != *(v5 + 16)))
  {
LABEL_18:
    OUTLINED_FUNCTION_100();
  }

  else
  {
    v6 = 0;
    OUTLINED_FUNCTION_24();
    v9 = v8 & v7;
    v11 = (v10 + 63) >> 6;
    while (v9)
    {
      v12 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_11:
      v16 = v12 | (v6 << 6);
      v17 = (*(v1 + 48) + 16 * v16);
      v18 = *v17;
      v19 = v17[1];
      v20 = *(*(v1 + 56) + 8 * v16);
      sub_1D8190DB4();

      v21 = sub_1D7E11428(v18, v19);
      v23 = v22;

      if ((v23 & 1) == 0)
      {
        goto LABEL_17;
      }

      v24 = *(*(v0 + 56) + 8 * v21);

      v25 = sub_1D7EFF774();
      if ((v25 ^ sub_1D7EFF774()))
      {

LABEL_17:

        goto LABEL_18;
      }

      type metadata accessor for JSONSchemaValue(0);
      v26 = sub_1D7EFBFA0(*(v24 + 16), *(v20 + 16));

      if ((v26 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
        goto LABEL_18;
      }

      ++v13;
      if (*(v1 + 64 + 8 * v6))
      {
        OUTLINED_FUNCTION_21_3();
        v9 = v15 & v14;
        goto LABEL_11;
      }
    }

    __break(1u);
  }
}

void sub_1D7EFC960()
{
  OUTLINED_FUNCTION_120();
  v1 = v0;
  v3 = v2;
  v110 = type metadata accessor for JSONSchema(0);
  v4 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110);
  OUTLINED_FUNCTION_28_0();
  v7 = (v5 - v6);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v90 - v9);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v90 - v12;
  sub_1D7EAB040(0, &qword_1ECA0D820, sub_1D7F01370, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v14 - 8);
  OUTLINED_FUNCTION_28_0();
  v17 = v15 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = (&v90 - v19);
  if (v3 == v1 || *(v3 + 16) != *(v1 + 16))
  {
LABEL_67:
    OUTLINED_FUNCTION_100();
  }

  else
  {
    v21 = 0;
    v96 = v3 + 64;
    v97 = v13;
    OUTLINED_FUNCTION_24();
    v24 = v23 & v22;
    v95 = (v25 + 63) >> 6;
    v108 = v20;
    v109 = v17;
    v99 = v3;
    v100 = v1;
    v98 = v4;
    while (v24)
    {
      OUTLINED_FUNCTION_67_1();
      v107 = v26;
      v28 = v27 | (v21 << 6);
LABEL_10:
      v31 = (*(v3 + 48) + 16 * v28);
      v33 = *v31;
      v32 = v31[1];
      OUTLINED_FUNCTION_3_23();
      sub_1D7F01FD8(v34, v13, v35);
      sub_1D7F01370();
      v37 = v36;
      v38 = v109;
      *v109 = v33;
      v38[1] = v32;
      v17 = v38;
      OUTLINED_FUNCTION_1_15();
      sub_1D7F014E4(v13, v40 + v39, v41);
      __swift_storeEnumTagSinglePayload(v17, 0, 1, v37);
      sub_1D8190DB4();
      v20 = v108;
LABEL_11:
      sub_1D7F013DC(v17, v20);
      sub_1D7F01370();
      v42 = __swift_getEnumTagSinglePayload(v20, 1, v37) == 1;
      if (v42)
      {
        goto LABEL_67;
      }

      v105 = v42;
      v43 = *v20;
      v44 = v20[1];
      OUTLINED_FUNCTION_1_15();
      sub_1D7F014E4(v20 + v45, v10, v46);
      sub_1D7E11428(v43, v44);
      v48 = v47;

      if ((v48 & 1) == 0)
      {
        goto LABEL_66;
      }

      OUTLINED_FUNCTION_3_23();
      sub_1D7F01FD8(v49, v7, v50);
      v51 = v7[1];
      v52 = v7[2];
      v54 = v7[3];
      v53 = v7[4];
      v55 = v7[5];
      v106 = v7[6];
      v56 = v7[7];
      v57 = v7[9];
      v58 = v10[1];
      v59 = v10[2];
      v61 = v10[3];
      v60 = v10[4];
      v63 = v10[5];
      v62 = v10[6];
      v65 = v10[7];
      v64 = v10[8];
      v103 = v7[8];
      v104 = v64;
      v66 = v10[9];
      if (v51)
      {
        if (!v58 || (*v7 == *v10 ? (v67 = v51 == v58) : (v67 = 0), !v67 && (v101 = v53, v102 = v57, v68 = v65, v93 = v60, v94 = v62, v69 = v55, v91 = v59, v92 = v52, v70 = sub_1D8192634(), v59 = v91, v52 = v92, v60 = v93, v62 = v94, v53 = v101, v57 = v102, v55 = v69, v65 = v68, (v70 & 1) == 0)))
        {
LABEL_65:
          OUTLINED_FUNCTION_0_9();
          sub_1D7F02154(v7, v89);
LABEL_66:
          sub_1D7F02154(v10, type metadata accessor for JSONSchema);
          goto LABEL_67;
        }
      }

      else if (v58)
      {
        goto LABEL_65;
      }

      if (v54)
      {
        if (!v61)
        {
          goto LABEL_65;
        }

        if (v52 != v59 || v54 != v61)
        {
          v101 = v53;
          v102 = v57;
          v72 = v66;
          v73 = v56;
          v74 = v62;
          v75 = v55;
          v76 = v60;
          v77 = sub_1D8192634();
          v60 = v76;
          v53 = v101;
          v57 = v102;
          v55 = v75;
          v62 = v74;
          v56 = v73;
          v66 = v72;
          if ((v77 & 1) == 0)
          {
            goto LABEL_65;
          }
        }
      }

      else if (v61)
      {
        goto LABEL_65;
      }

      if (v55)
      {
        if (!v63)
        {
          goto LABEL_65;
        }

        if (v53 != v60 || v55 != v63)
        {
          v79 = v57;
          v80 = v62;
          v81 = sub_1D8192634();
          v62 = v80;
          v57 = v79;
          if ((v81 & 1) == 0)
          {
            goto LABEL_65;
          }
        }
      }

      else if (v63)
      {
        goto LABEL_65;
      }

      if (v56)
      {
        if (!v65)
        {
          goto LABEL_65;
        }

        if (v106 != v62 || v56 != v65)
        {
          v83 = v57;
          v84 = sub_1D8192634();
          v57 = v83;
          if ((v84 & 1) == 0)
          {
            goto LABEL_65;
          }
        }
      }

      else if (v65)
      {
        goto LABEL_65;
      }

      if (v57)
      {
        if (!v66)
        {
          goto LABEL_65;
        }

        v85 = v103 == v104 && v57 == v66;
        if (!v85 && (sub_1D8192634() & 1) == 0)
        {
          goto LABEL_65;
        }
      }

      else if (v66)
      {
        goto LABEL_65;
      }

      sub_1D7EEDCE0(v7[10], v10[10]);
      if ((v86 & 1) == 0 || (sub_1D818F804() & 1) == 0 || (sub_1D818E774() & 1) == 0)
      {
        goto LABEL_65;
      }

      v87 = sub_1D818E5F4();
      sub_1D7F02154(v7, type metadata accessor for JSONSchema);
      sub_1D7F02154(v10, type metadata accessor for JSONSchema);
      v3 = v99;
      v13 = v97;
      v20 = v108;
      v17 = v109;
      v24 = v107;
      if ((v87 & 1) == 0)
      {
        goto LABEL_67;
      }
    }

    while (1)
    {
      v29 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v29 >= v95)
      {
        sub_1D7F01370();
        v37 = v88;
        __swift_storeEnumTagSinglePayload(v17, 1, 1, v88);
        v107 = 0;
        goto LABEL_11;
      }

      v30 = *(v96 + 8 * v29);
      ++v21;
      if (v30)
      {
        v107 = (v30 - 1) & v30;
        v28 = __clz(__rbit64(v30)) | (v29 << 6);
        v21 = v29;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

void sub_1D7EFCF1C(uint64_t a1, uint64_t a2)
{
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v3 = 0;
    v4 = a1 + 64;
    OUTLINED_FUNCTION_24();
    v7 = v6 & v5;
    v9 = (v8 + 63) >> 6;
    while (v7)
    {
      OUTLINED_FUNCTION_67_1();
      v27 = v12;
LABEL_11:
      v16 = (*(v10 + 56) + 16 * (v11 | (v3 << 6)));
      v18 = *v16;
      v17 = v16[1];
      sub_1D8190DB4();
      sub_1D8190DB4();
      v19 = OUTLINED_FUNCTION_111();
      v21 = sub_1D7E11428(v19, v20);
      v23 = v22;

      if ((v23 & 1) == 0)
      {

        return;
      }

      v24 = (*(a2 + 56) + 16 * v21);
      if (*v24 == v18 && v24[1] == v17)
      {

        v7 = v27;
      }

      else
      {
        v26 = sub_1D8192634();

        v7 = v27;
        if ((v26 & 1) == 0)
        {
          return;
        }
      }
    }

    v13 = v3;
    while (1)
    {
      v3 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v3 >= v9)
      {
        return;
      }

      ++v13;
      if (*(v4 + 8 * v3))
      {
        OUTLINED_FUNCTION_21_3();
        v27 = v15 & v14;
        goto LABEL_11;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1D7EFD090()
{
  swift_getKeyPath();
  v1 = sub_1D7F01EBC(&qword_1ECA0D818, type metadata accessor for JSONSchemaValueString);
  OUTLINED_FUNCTION_9_4(v1, v2, v3, v4, v5, v6, v7, v8, v11, v0);
  sub_1D818E9D4();

  v9 = *(v0 + OBJC_IVAR____TtC5TeaUI21JSONSchemaValueString__value);
  sub_1D8190DB4();
  return v9;
}

uint64_t sub_1D7EFD220()
{
  OUTLINED_FUNCTION_0_9();
  sub_1D7F02154(v0 + v1, v2);
  OUTLINED_FUNCTION_39();

  return swift_deallocClassInstance();
}

uint64_t sub_1D7EFD2AC()
{
  result = type metadata accessor for JSONSchema(319);
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D7EFD3E8()
{
  OUTLINED_FUNCTION_30_0();
  result = sub_1D7EFC4E4();
  *v0 = result;
  return result;
}

uint64_t sub_1D7EFD43C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC5TeaUI20JSONSchemaValueArray__value;
  OUTLINED_FUNCTION_70_1();
  v4 = sub_1D8190DB4();
  v5 = sub_1D8185814(v4, a1);

  if (v5)
  {
    *(v1 + v3) = a1;

    return sub_1D7EFFDCC();
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_22_4();
    MEMORY[0x1EEE9AC00](v7);
    OUTLINED_FUNCTION_11_7();
    *(v8 - 16) = v1;
    *(v8 - 8) = a1;
    sub_1D7EFDB94(v9, sub_1D7F01218, v10, &OBJC_IVAR____TtC5TeaUI20JSONSchemaValueArray___observationRegistrar, &qword_1ECA0D7E8, type metadata accessor for JSONSchemaValueArray);
  }
}

uint64_t sub_1D7EFD548(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7)
{
  sub_1D818EA04();
  OUTLINED_FUNCTION_3_23();
  sub_1D7F01FD8(a2, v7 + v15, v16);
  if (!a7)
  {
    a7 = MEMORY[0x1E69E7CC0];
  }

  OUTLINED_FUNCTION_0_9();
  sub_1D7F02154(a2, v17);
  *(v7 + OBJC_IVAR____TtC5TeaUI20JSONSchemaValueArray__value) = a7;
  v18 = v7 + OBJC_IVAR____TtC5TeaUI20JSONSchemaValueArray_validations;
  *v18 = a3;
  *(v18 + 8) = a4 & 1;
  *(v18 + 16) = a5;
  *(v18 + 24) = a6 & 1;
  OUTLINED_FUNCTION_1_15();
  sub_1D7F014E4(a1, v7 + v19, v20);
  return v7;
}

uint64_t sub_1D7EFD628()
{
  OUTLINED_FUNCTION_69_0();
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  OUTLINED_FUNCTION_111();
  sub_1D81928B4();
  v1 = sub_1D7EFC4E4();
  OUTLINED_FUNCTION_60_1(v1, v2, v3, v4, v5, v6, v7, v8, v1, v12[0], v13, v14, v15);
  OUTLINED_FUNCTION_2_18();
  sub_1D7EAB040(0, v9, v10, MEMORY[0x1E69E62F8]);
  sub_1D7F01DE4();
  OUTLINED_FUNCTION_55_3();

  return __swift_destroy_boxed_opaque_existential_1Tm(v12);
}

uint64_t sub_1D7EFD6E0()
{
  v0 = sub_1D7EFC4E4();
  v1 = type metadata accessor for JSONSchemaValue(0);
  v2 = MEMORY[0x1DA713540](v0, v1);

  return v2;
}

void sub_1D7EFD738()
{
  OUTLINED_FUNCTION_65_1();
  v2 = (v0 + OBJC_IVAR____TtC5TeaUI20JSONSchemaValueArray_validations);
  if ((*(v0 + OBJC_IVAR____TtC5TeaUI20JSONSchemaValueArray_validations + 8) & 1) == 0)
  {
    v3 = *v2;
    v4 = sub_1D7EFC4E4();
    sub_1D7E36AB8(v4);
    OUTLINED_FUNCTION_75_0();
    if (v1 < v3)
    {
      OUTLINED_FUNCTION_10_7();
      sub_1D81921A4();
      OUTLINED_FUNCTION_35_0();
      OUTLINED_FUNCTION_42();
      MEMORY[0x1DA713260](0xD000000000000012);
      v5 = OUTLINED_FUNCTION_40_0();
      MEMORY[0x1DA713260](v5);

      v6 = 0xD000000000000013;
      v7 = 0x80000001D81C68C0;
LABEL_7:
      MEMORY[0x1DA713260](v6, v7);
      v11 = sub_1D7EFC4E4();
      sub_1D7E36AB8(v11);

      v12 = OUTLINED_FUNCTION_40_0();
      MEMORY[0x1DA713260](v12);

      MEMORY[0x1DA713260](0x6920736D65746920, 0xEF65756C6176206ELL);
      sub_1D7F01D90();
      v13 = OUTLINED_FUNCTION_121();
      OUTLINED_FUNCTION_48_1(v13, v14);
      return;
    }
  }

  if ((v2[3] & 1) == 0)
  {
    v8 = v2[2];
    v9 = sub_1D7EFC4E4();
    sub_1D7E36AB8(v9);
    OUTLINED_FUNCTION_75_0();
    if (v8 < v1)
    {
      OUTLINED_FUNCTION_10_7();
      sub_1D81921A4();
      OUTLINED_FUNCTION_35_0();
      OUTLINED_FUNCTION_42();
      MEMORY[0x1DA713260](0xD000000000000012);
      v10 = OUTLINED_FUNCTION_40_0();
      MEMORY[0x1DA713260](v10);

      v6 = 0x746E656D656C6520;
      v7 = 0xEE00207475622073;
      goto LABEL_7;
    }
  }
}

uint64_t sub_1D7EFD9CC()
{
  result = type metadata accessor for JSONSchema(319);
  if (v1 <= 0x3F)
  {
    result = sub_1D818EA14();
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

uint64_t sub_1D7EFDAB0(char a1)
{
  v2 = a1 & 1;
  if (*(v1 + OBJC_IVAR____TtC5TeaUI19JSONSchemaValueBool__value) == (a1 & 1))
  {
    *(v1 + OBJC_IVAR____TtC5TeaUI19JSONSchemaValueBool__value) = v2;
    return sub_1D7EFFDCC();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    OUTLINED_FUNCTION_11_7();
    *(v4 - 16) = v1;
    *(v4 - 8) = v2;
    sub_1D7EFDB94(v5, sub_1D7F0123C, v6, &OBJC_IVAR____TtC5TeaUI19JSONSchemaValueBool___observationRegistrar, &qword_1ECA0D7F0, type metadata accessor for JSONSchemaValueBool);
  }
}

uint64_t sub_1D7EFDC24(uint64_t a1, char a2)
{
  sub_1D818EA04();
  *(v2 + OBJC_IVAR____TtC5TeaUI19JSONSchemaValueBool__value) = a2 & 1;
  OUTLINED_FUNCTION_1_15();
  sub_1D7F014E4(a1, v2 + v5, v6);
  return v2;
}

uint64_t sub_1D7EFDC8C()
{
  OUTLINED_FUNCTION_69_0();
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  OUTLINED_FUNCTION_111();
  sub_1D81928B4();
  v1 = sub_1D7EFC58C();
  OUTLINED_FUNCTION_59_1(v1, v2, v3, v4, v5, v6, v7, v8, v11, v12, v13, v14, v15);
  OUTLINED_FUNCTION_134();
  v9 = sub_1D8192664();
  return OUTLINED_FUNCTION_77_1(v9);
}

uint64_t sub_1D7EFDD10()
{
  if (sub_1D7EFC58C())
  {
    return 1702195828;
  }

  else
  {
    return 0x65736C6166;
  }
}

uint64_t sub_1D7EFDD50()
{
  v1 = OBJC_IVAR____TtC5TeaUI19JSONSchemaValueBool___observationRegistrar;
  sub_1D818EA14();
  OUTLINED_FUNCTION_4_3();
  v3 = *(v2 + 8);

  return v3(v0 + v1);
}

uint64_t sub_1D7EFDDAC()
{
  OUTLINED_FUNCTION_0_9();
  sub_1D7F02154(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC5TeaUI19JSONSchemaValueBool___observationRegistrar;
  sub_1D818EA14();
  OUTLINED_FUNCTION_4_3();
  (*(v4 + 8))(v0 + v3);
  OUTLINED_FUNCTION_39();

  return swift_deallocClassInstance();
}

uint64_t sub_1D7EFDE74()
{
  result = sub_1D818EA14();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void *sub_1D7EFDF10@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_28_3();
  v5 = sub_1D7F01EBC(v3, v4);
  OUTLINED_FUNCTION_9_4(v5, v6, v7, v8, v9, v10, v11, v12, v14, v1);
  sub_1D818E9D4();

  return memcpy(a1, (v1 + OBJC_IVAR____TtC5TeaUI22JSONSchemaValueInteger__validations), 0x49uLL);
}

void *sub_1D7EFE038(uint64_t a1)
{
  memcpy(__dst, (v1 + OBJC_IVAR____TtC5TeaUI22JSONSchemaValueInteger__validations), 0x49uLL);
  if (sub_1D7EECC88(__dst, a1))
  {
    v3 = OUTLINED_FUNCTION_64_1();

    return memcpy(v3, v4, v5);
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_22_4();
    MEMORY[0x1EEE9AC00](v7);
    OUTLINED_FUNCTION_11_7();
    *(v8 - 16) = v1;
    *(v8 - 8) = a1;
    sub_1D7EFDB94(v9, sub_1D7F01480, v10, &OBJC_IVAR____TtC5TeaUI22JSONSchemaValueInteger___observationRegistrar, &qword_1ECA0D7F8, type metadata accessor for JSONSchemaValueInteger);
  }
}

uint64_t sub_1D7EFE148(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC5TeaUI22JSONSchemaValueInteger__value) == a1)
  {
    return sub_1D7EFFDCC();
  }

  swift_getKeyPath();
  OUTLINED_FUNCTION_22_4();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_11_7();
  *(v5 - 16) = v1;
  *(v5 - 8) = a1;
  sub_1D7EFDB94(v6, sub_1D7F0127C, v7, &OBJC_IVAR____TtC5TeaUI22JSONSchemaValueInteger___observationRegistrar, &qword_1ECA0D7F8, type metadata accessor for JSONSchemaValueInteger);
}

uint64_t sub_1D7EFE224()
{
  OUTLINED_FUNCTION_46_1();
  sub_1D818EA04();
  memcpy((v1 + OBJC_IVAR____TtC5TeaUI22JSONSchemaValueInteger__validations), v6, 0x49uLL);
  if (v5)
  {
    if (v2 != -1 && (v2 & 1) != 0 && *(v3 + 16))
    {
      v4 = *(v3 + 48);
    }

    else
    {
      v4 = 0;
    }
  }

  *(v1 + OBJC_IVAR____TtC5TeaUI22JSONSchemaValueInteger__value) = v4;
  OUTLINED_FUNCTION_49_0(OBJC_IVAR____TtC5TeaUI22JSONSchemaValueInteger_suppliedValues);
  OUTLINED_FUNCTION_1_15();
  sub_1D7F014E4(v0, v1 + v7, v8);
  return v1;
}

void sub_1D7EFE2E0()
{
  OUTLINED_FUNCTION_68_1();
  sub_1D7EFE364();
  if (!v0)
  {
    v1 = OUTLINED_FUNCTION_111();
    __swift_project_boxed_opaque_existential_1(v1, v2);
    OUTLINED_FUNCTION_23_3();
    v3 = sub_1D7EFC62C();
    OUTLINED_FUNCTION_59_1(v3, v4, v5, v6, v7, v8, v9, v10, v12, v13, v14, v15, v16);
    OUTLINED_FUNCTION_134();
    v11 = sub_1D8192684();
    OUTLINED_FUNCTION_77_1(v11);
  }
}

void sub_1D7EFE364()
{
  OUTLINED_FUNCTION_65_1();
  sub_1D7EFDF10(v15);
  if ((v17 & 1) == 0)
  {
    v0 = v16;
    sub_1D7EFC62C();
    OUTLINED_FUNCTION_13_5();
    if (!(v2 ^ v3 | v1))
    {
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    if (v0 <= -9.22337204e18)
    {
      goto LABEL_48;
    }

    OUTLINED_FUNCTION_20_2();
    if (!v2)
    {
      goto LABEL_49;
    }

    OUTLINED_FUNCTION_63_0();
    if (v2 != v3)
    {
      goto LABEL_24;
    }
  }

  sub_1D7EFDF10(&v18);
  if ((v19 & 1) == 0)
  {
    v4 = v18;
    sub_1D7EFC62C();
    OUTLINED_FUNCTION_13_5();
    if (!(v2 ^ v3 | v1))
    {
      goto LABEL_50;
    }

    if (v4 <= -9.22337204e18)
    {
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    OUTLINED_FUNCTION_20_2();
    if (!v2)
    {
      goto LABEL_52;
    }

    OUTLINED_FUNCTION_63_0();
    if (v2 ^ v3 | v1)
    {
      goto LABEL_44;
    }
  }

  sub_1D7EFDF10(v20);
  if ((v22 & 1) == 0)
  {
    v5 = v21;
    sub_1D7EFC62C();
    OUTLINED_FUNCTION_13_5();
    if (!(v2 ^ v3 | v1))
    {
      goto LABEL_53;
    }

    if (v5 <= -9.22337204e18)
    {
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    OUTLINED_FUNCTION_20_2();
    if (!v2)
    {
      goto LABEL_55;
    }

    OUTLINED_FUNCTION_63_0();
    if (!(v2 ^ v3 | v1))
    {
LABEL_24:
      OUTLINED_FUNCTION_10_7();
      sub_1D81921A4();
      OUTLINED_FUNCTION_35_0();
      OUTLINED_FUNCTION_42();
      v6 = 0xD000000000000011;
LABEL_46:
      MEMORY[0x1DA713260](v6);
      sub_1D81915C4();
      v11 = OUTLINED_FUNCTION_38_1();
      MEMORY[0x1DA713260](v11);
      sub_1D7EFC62C();
      v12 = sub_1D81925B4();
      MEMORY[0x1DA713260](v12);

      sub_1D7F01CE8();
      v13 = OUTLINED_FUNCTION_121();
      OUTLINED_FUNCTION_48_1(v13, v14);
      return;
    }
  }

  sub_1D7EFDF10(v23);
  if ((v25 & 1) == 0)
  {
    v7 = v24;
    sub_1D7EFC62C();
    OUTLINED_FUNCTION_13_5();
    if (!(v2 ^ v3 | v1))
    {
      goto LABEL_56;
    }

    if (v7 <= -9.22337204e18)
    {
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    OUTLINED_FUNCTION_20_2();
    if (!v2)
    {
      goto LABEL_58;
    }

    OUTLINED_FUNCTION_63_0();
    if (v2 == v3)
    {
LABEL_44:
      OUTLINED_FUNCTION_10_7();
      sub_1D81921A4();
      OUTLINED_FUNCTION_35_0();
      OUTLINED_FUNCTION_57_0();
      goto LABEL_45;
    }
  }

  sub_1D7EFDF10(v26);
  if ((v28 & 1) == 0)
  {
    v8 = v27;
    sub_1D7EFC62C();
    OUTLINED_FUNCTION_13_5();
    if (!(v2 ^ v3 | v1))
    {
      goto LABEL_59;
    }

    if (v8 <= -9.22337204e18)
    {
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
      return;
    }

    OUTLINED_FUNCTION_20_2();
    if (!v2)
    {
      goto LABEL_61;
    }

    v10 = v8;
    if (v8 != -1)
    {
      if (v10)
      {
        v9 %= v10;
      }

      if (v9)
      {
        OUTLINED_FUNCTION_10_7();
        sub_1D81921A4();
        OUTLINED_FUNCTION_35_0();
        OUTLINED_FUNCTION_54_0();
LABEL_45:
        OUTLINED_FUNCTION_42();
        goto LABEL_46;
      }
    }
  }
}

uint64_t sub_1D7EFE674()
{
  sub_1D7EFC62C();
  sub_1D7F01D3C();
  return sub_1D8191F24();
}

void *sub_1D7EFE748@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_27_3();
  v5 = sub_1D7F01EBC(v3, v4);
  OUTLINED_FUNCTION_9_4(v5, v6, v7, v8, v9, v10, v11, v12, v14, v1);
  sub_1D818E9D4();

  return memcpy(a1, (v1 + OBJC_IVAR____TtC5TeaUI21JSONSchemaValueNumber__validations), 0x49uLL);
}

void *sub_1D7EFE870(uint64_t a1)
{
  memcpy(__dst, (v1 + OBJC_IVAR____TtC5TeaUI21JSONSchemaValueNumber__validations), 0x49uLL);
  if (sub_1D7EFA2F0(__dst, a1))
  {
    v3 = OUTLINED_FUNCTION_64_1();

    return memcpy(v3, v4, v5);
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_22_4();
    MEMORY[0x1EEE9AC00](v7);
    OUTLINED_FUNCTION_11_7();
    *(v8 - 16) = v1;
    *(v8 - 8) = a1;
    sub_1D7EFDB94(v9, sub_1D7F01470, v10, &OBJC_IVAR____TtC5TeaUI21JSONSchemaValueNumber___observationRegistrar, &qword_1ECA0D800, type metadata accessor for JSONSchemaValueNumber);
  }
}

uint64_t sub_1D7EFE980(double a1)
{
  if (*(v1 + OBJC_IVAR____TtC5TeaUI21JSONSchemaValueNumber__value) == a1)
  {
    *(v1 + OBJC_IVAR____TtC5TeaUI21JSONSchemaValueNumber__value) = a1;
    return sub_1D7EFFDCC();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    OUTLINED_FUNCTION_11_7();
    *(v5 - 16) = v1;
    *(v5 - 8) = a1;
    sub_1D7EFDB94(v6, sub_1D7F012B8, v7, &OBJC_IVAR____TtC5TeaUI21JSONSchemaValueNumber___observationRegistrar, &qword_1ECA0D800, type metadata accessor for JSONSchemaValueNumber);
  }
}

uint64_t sub_1D7EFEA6C()
{
  OUTLINED_FUNCTION_46_1();
  sub_1D818EA04();
  memcpy((v1 + OBJC_IVAR____TtC5TeaUI21JSONSchemaValueNumber__validations), v6, 0x49uLL);
  if (v5)
  {
    if (v2 != -1 && (v2 & 1) != 0 && *(v3 + 16))
    {
      v4 = *(v3 + 48);
    }

    else
    {
      v4 = 0;
    }
  }

  *(v1 + OBJC_IVAR____TtC5TeaUI21JSONSchemaValueNumber__value) = v4;
  OUTLINED_FUNCTION_49_0(OBJC_IVAR____TtC5TeaUI21JSONSchemaValueNumber_suppliedValues);
  OUTLINED_FUNCTION_1_15();
  sub_1D7F014E4(v0, v1 + v7, v8);
  return v1;
}

void sub_1D7EFEB28()
{
  OUTLINED_FUNCTION_68_1();
  sub_1D7EFEBB4();
  if (!v0)
  {
    v1 = OUTLINED_FUNCTION_111();
    __swift_project_boxed_opaque_existential_1(v1, v2);
    OUTLINED_FUNCTION_23_3();
    sub_1D7EFC6BC();
    OUTLINED_FUNCTION_59_1(v3, v4, v5, v6, v7, v8, v9, v10, v12, v13, v14, v15, v16);
    v11 = sub_1D8192674();
    OUTLINED_FUNCTION_77_1(v11);
  }
}

void sub_1D7EFEBB4()
{
  OUTLINED_FUNCTION_65_1();
  sub_1D7EFE748(v12);
  if ((v14 & 1) == 0)
  {
    v0 = v13;
    if (sub_1D7EFC6BC() < v0)
    {
      goto LABEL_7;
    }
  }

  sub_1D7EFE748(&v15);
  if ((v16 & 1) == 0)
  {
    v1 = v15;
    if (sub_1D7EFC6BC() <= v1)
    {
      OUTLINED_FUNCTION_17_5();
      sub_1D81921A4();
      OUTLINED_FUNCTION_43_2();
      OUTLINED_FUNCTION_57_0();
LABEL_24:
      OUTLINED_FUNCTION_56_2();
      goto LABEL_25;
    }
  }

  sub_1D7EFE748(v17);
  if ((v19 & 1) == 0)
  {
    v2 = v18;
    if (v2 < sub_1D7EFC6BC())
    {
LABEL_7:
      OUTLINED_FUNCTION_17_5();
      sub_1D81921A4();
      OUTLINED_FUNCTION_43_2();
      OUTLINED_FUNCTION_56_2();
      v3 = 0xD000000000000011;
LABEL_25:
      MEMORY[0x1DA713260](v3);
      OUTLINED_FUNCTION_134();
      sub_1D81915C4();
      v9 = OUTLINED_FUNCTION_38_1();
      MEMORY[0x1DA713260](v9);
      sub_1D7EFC6BC();
      OUTLINED_FUNCTION_134();
      sub_1D81915C4();
      sub_1D7F01C94();
      v10 = OUTLINED_FUNCTION_121();
      OUTLINED_FUNCTION_48_1(v10, v11);
      return;
    }
  }

  sub_1D7EFE748(v20);
  if ((v22 & 1) == 0)
  {
    v4 = v21;
    if (v4 <= sub_1D7EFC6BC())
    {
LABEL_23:
      OUTLINED_FUNCTION_17_5();
      sub_1D81921A4();
      OUTLINED_FUNCTION_43_2();
      OUTLINED_FUNCTION_54_0();
      goto LABEL_24;
    }
  }

  sub_1D7EFE748(v23);
  if (v25)
  {
    return;
  }

  v5 = v24;
  v6 = sub_1D7EFC6BC();
  if (v6 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_28;
  }

  if (v6 >= 9.22337204e18)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_29;
  }

  if (v5 <= -9.22337204e18)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v5 >= 9.22337204e18)
  {
LABEL_31:
    __break(1u);
    return;
  }

  v7 = v5;
  if (v5 != -1)
  {
    v8 = v6;
    if (v7)
    {
      v8 %= v7;
    }

    if (v8)
    {
      goto LABEL_23;
    }
  }
}

uint64_t sub_1D7EFEE58()
{
  sub_1D7EFC6BC();

  return sub_1D81915A4();
}

uint64_t sub_1D7EFEEA8(void *a1, void (*a2)(void, void), uint64_t a3)
{
  a2(*(v3 + *a1), *(v3 + *a1 + 8));
  OUTLINED_FUNCTION_74_1();
  OUTLINED_FUNCTION_4_3();
  v6 = *(v5 + 8);

  return v6(v3 + a3);
}

uint64_t sub_1D7EFEF18(uint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
{
  OUTLINED_FUNCTION_0_9();
  sub_1D7F02154(v3 + v7, v8);
  v9 = OUTLINED_FUNCTION_50_0(*a1);
  a2(v9);
  OUTLINED_FUNCTION_74_1();
  OUTLINED_FUNCTION_4_3();
  (*(v10 + 8))(v3 + a3);
  return v3;
}

uint64_t sub_1D7EFEFC0(uint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
{
  sub_1D7EFEF18(a1, a2, a3);
  OUTLINED_FUNCTION_39();

  return swift_deallocClassInstance();
}

uint64_t sub_1D7EFF07C()
{
  OUTLINED_FUNCTION_66_0();
  v4 = (v1 + OBJC_IVAR____TtC5TeaUI21JSONSchemaValueString__value);
  v5 = *(v1 + OBJC_IVAR____TtC5TeaUI21JSONSchemaValueString__value) == v2 && *(v1 + OBJC_IVAR____TtC5TeaUI21JSONSchemaValueString__value + 8) == v3;
  if (v5 || (sub_1D8192634() & 1) != 0)
  {
    *v4 = v2;
    v4[1] = v0;

    return sub_1D7EFFDCC();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v9[2] = v1;
    v9[3] = v2;
    v9[4] = v0;
    sub_1D7EFDB94(v8, sub_1D7F01350, v9, &OBJC_IVAR____TtC5TeaUI21JSONSchemaValueString___observationRegistrar, &qword_1ECA0D818, type metadata accessor for JSONSchemaValueString);
  }
}

uint64_t sub_1D7EFF1A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a1 + OBJC_IVAR____TtC5TeaUI21JSONSchemaValueString__value);
  *v3 = a2;
  v3[1] = a3;
  sub_1D8190DB4();

  return sub_1D7EFFDCC();
}

void sub_1D7EFF1F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_120();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v38 = a21;
  sub_1D818EA04();
  v39 = v21 + OBJC_IVAR____TtC5TeaUI21JSONSchemaValueString_validations;
  *v39 = v35;
  *(v39 + 8) = v33 & 1;
  *(v39 + 16) = v31;
  *(v39 + 24) = v29 & 1;
  if (!a21)
  {
    v23 = sub_1D7EFF2C4(v27, v25);
    v38 = v40;
  }

  v41 = (v21 + OBJC_IVAR____TtC5TeaUI21JSONSchemaValueString__value);
  *v41 = v23;
  v41[1] = v38;
  OUTLINED_FUNCTION_49_0(OBJC_IVAR____TtC5TeaUI21JSONSchemaValueString_suppliedValues);
  OUTLINED_FUNCTION_1_15();
  sub_1D7F014E4(v37, v21 + v42, v43);
  OUTLINED_FUNCTION_100();
}

uint64_t sub_1D7EFF2C4(uint64_t a1, char a2)
{
  if (a2 == -1 || (a2 & 1) == 0 || !*(a1 + 16))
  {
    return 0;
  }

  v2 = *(a1 + 48);
  sub_1D8190DB4();
  return v2;
}

void sub_1D7EFF318()
{
  OUTLINED_FUNCTION_68_1();
  sub_1D7EFF3B8();
  if (!v0)
  {
    v1 = OUTLINED_FUNCTION_111();
    __swift_project_boxed_opaque_existential_1(v1, v2);
    OUTLINED_FUNCTION_23_3();
    v3 = sub_1D7EFD090();
    OUTLINED_FUNCTION_60_1(v3, v4, v5, v6, v7, v8, v9, v10, v11, v12[0], v13, v14, v15);
    sub_1D8192654();

    __swift_destroy_boxed_opaque_existential_1Tm(v12);
  }
}

void sub_1D7EFF3B8()
{
  OUTLINED_FUNCTION_65_1();
  v2 = (v0 + OBJC_IVAR____TtC5TeaUI21JSONSchemaValueString_validations);
  if ((*(v0 + OBJC_IVAR____TtC5TeaUI21JSONSchemaValueString_validations + 8) & 1) == 0 && (v3 = *v2, sub_1D7EFD090(), sub_1D8191014(), OUTLINED_FUNCTION_75_0(), v1 < v3) || (v2[3] & 1) == 0 && (v4 = v2[2], sub_1D7EFD090(), sub_1D8191014(), OUTLINED_FUNCTION_75_0(), v4 < v1))
  {
    OUTLINED_FUNCTION_10_7();
    sub_1D81921A4();
    OUTLINED_FUNCTION_35_0();
    OUTLINED_FUNCTION_42();
    MEMORY[0x1DA713260]();
    v5 = OUTLINED_FUNCTION_40_0();
    MEMORY[0x1DA713260](v5);

    OUTLINED_FUNCTION_42();
    MEMORY[0x1DA713260]();
    sub_1D7EFD090();
    sub_1D8191014();

    v6 = OUTLINED_FUNCTION_40_0();
    MEMORY[0x1DA713260](v6);

    OUTLINED_FUNCTION_42();
    MEMORY[0x1DA713260](0xD000000000000010);
    sub_1D7F01C40();
    v7 = OUTLINED_FUNCTION_121();
    OUTLINED_FUNCTION_48_1(v7, v8);
  }
}

uint64_t sub_1D7EFF558()
{
  v1 = OUTLINED_FUNCTION_50_0(OBJC_IVAR____TtC5TeaUI21JSONSchemaValueString_suppliedValues);
  sub_1D7ED07B8(v1, v2);

  v3 = OBJC_IVAR____TtC5TeaUI21JSONSchemaValueString___observationRegistrar;
  sub_1D818EA14();
  OUTLINED_FUNCTION_4_3();
  v5 = *(v4 + 8);

  return v5(v0 + v3);
}

uint64_t sub_1D7EFF5D8()
{
  OUTLINED_FUNCTION_0_9();
  sub_1D7F02154(v0 + v1, v2);
  v3 = OUTLINED_FUNCTION_50_0(OBJC_IVAR____TtC5TeaUI21JSONSchemaValueString_suppliedValues);
  sub_1D7ED07B8(v3, v4);

  v5 = OBJC_IVAR____TtC5TeaUI21JSONSchemaValueString___observationRegistrar;
  sub_1D818EA14();
  OUTLINED_FUNCTION_4_3();
  (*(v6 + 8))(v0 + v5);
  return v0;
}

uint64_t sub_1D7EFF6B8()
{
  result = sub_1D818EA14();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D7EFF774()
{
  v10 = type metadata accessor for JSONSchemaValue(0);
  swift_getKeyPath();
  v1 = sub_1D7F015FC(&qword_1ECA0D808);
  OUTLINED_FUNCTION_9_4(v1, v2, v3, v4, v5, v6, v7, v8, v10, v0);
  sub_1D818E9D4();

  return *(v0 + 24);
}

uint64_t sub_1D7EFF808()
{
  swift_getKeyPath();
  sub_1D7EFF9E8();

  return *(v0 + 24);
}

uint64_t sub_1D7EFF868()
{
  OUTLINED_FUNCTION_30_0();
  result = sub_1D7EFF808();
  *v0 = result & 1;
  return result;
}

uint64_t sub_1D7EFF8BC()
{
  OUTLINED_FUNCTION_39();
  v2 = v1 & 1;
  v3 = sub_1D7EFFA60();
  if (!v3)
  {
    return sub_1D7EFF758(v2);
  }

  MEMORY[0x1EEE9AC00](v3);
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  OUTLINED_FUNCTION_11_7();
  *(v5 - 16) = v0;
  *(v5 - 8) = v2;
  sub_1D7EFFA8C();
}

uint64_t sub_1D7EFF9E8()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_25_3();
  swift_getWitnessTable();
  return sub_1D818E9D4();
}

uint64_t sub_1D7EFFA8C()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_25_3();
  swift_getWitnessTable();
  return sub_1D818E9C4();
}

uint64_t sub_1D7EFFB3C()
{
  OUTLINED_FUNCTION_69_0();
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  OUTLINED_FUNCTION_23_3();
  v4 = *(v0 + 16);
  __swift_mutable_project_boxed_opaque_existential_1(v5, v6);
  swift_getWitnessTable();
  v2 = sub_1D8192694();
  return OUTLINED_FUNCTION_77_1(v2, v4);
}

uint64_t sub_1D7EFFBF8()
{
  OUTLINED_FUNCTION_66_0();
  v0 = sub_1D7EFF808();
  if ((v0 ^ sub_1D7EFF808()))
  {
    return 0;
  }

  type metadata accessor for JSONSchemaValue(0);
  return sub_1D7EFBFA0() & 1;
}

uint64_t sub_1D7EFFC5C()
{
  result = sub_1D7EFF774();
  if (result)
  {
    return (*(**(v0 + 16) + 112))();
  }

  return result;
}

uint64_t sub_1D7EFFCB8()
{

  v1 = qword_1ECA0D760;
  sub_1D818EA14();
  OUTLINED_FUNCTION_4_3();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t sub_1D7EFFD2C(void (*a1)(void))
{
  a1();
  OUTLINED_FUNCTION_39();

  return swift_deallocClassInstance();
}

uint64_t sub_1D7EFFDCC()
{
  v0 = off_1EECAA608;

  (v0)(v1);
}

uint64_t sub_1D7EFFE18()
{
  OUTLINED_FUNCTION_30_0();
  result = sub_1D7EFC74C();
  *v0 = result;
  return result;
}

uint64_t sub_1D7EFFE6C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC5TeaUI21JSONSchemaValueObject__value;
  OUTLINED_FUNCTION_70_1();
  sub_1D8190DB4();
  sub_1D7EFC7F4();
  v5 = v4;

  if (v5)
  {
    *(v1 + v3) = a1;

    return sub_1D7EFFDCC();
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_22_4();
    MEMORY[0x1EEE9AC00](v7);
    OUTLINED_FUNCTION_11_7();
    *(v8 - 16) = v1;
    *(v8 - 8) = a1;
    sub_1D7EFDB94(v9, sub_1D7F0132C, v10, &OBJC_IVAR____TtC5TeaUI21JSONSchemaValueObject___observationRegistrar, &qword_1ECA0D810, type metadata accessor for JSONSchemaValueObject);
  }
}

uint64_t sub_1D7EFFF78(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  swift_beginAccess();
  *(a1 + v5) = a2;
  sub_1D8190DB4();

  return sub_1D7EFFDCC();
}

void sub_1D7EFFFEC()
{
  OUTLINED_FUNCTION_120();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  sub_1D7EAB040(0, &qword_1ECA0CFE0, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v97 = v86 - v8;
  sub_1D7F01370();
  v101 = v9;
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_28_0();
  v93 = v11 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = (v86 - v14);
  MEMORY[0x1EEE9AC00](v16);
  v18 = (v86 - v17);
  MEMORY[0x1EEE9AC00](v19);
  v104 = (v86 - v20);
  type metadata accessor for JSONSchema.SchemaType.ObjectType(0);
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v21);
  v23 = (v86 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D818EA04();
  sub_1D7F01FD8(v4, v0 + OBJC_IVAR____TtC5TeaUI21JSONSchemaValueObject_object, type metadata accessor for JSONSchema.SchemaType.ObjectType);
  sub_1D7F01FD8(v4, v23, type metadata accessor for JSONSchema.SchemaType.ObjectType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D7F02154(v4, type metadata accessor for JSONSchema.SchemaType.ObjectType);
    v24 = MEMORY[0x1E69E7CC8];
    if (v2)
    {
      v24 = v2;
    }

    *(v0 + OBJC_IVAR____TtC5TeaUI21JSONSchemaValueObject__value) = v24;
    sub_1D7F02154(v23, type metadata accessor for JSONSchema.SchemaType.ObjectType);
    goto LABEL_32;
  }

  v92 = v15;
  v99 = v2;
  v87 = v4;
  v88 = v6;
  v89 = v0;
  v25 = *v23;
  v96 = v23[1];
  v86[1] = v23[2];
  v26 = v25 + 64;
  OUTLINED_FUNCTION_24();
  v29 = v28 & v27;
  v31 = (v30 + 63) >> 6;
  v98 = v32;
  swift_bridgeObjectRetain_n();
  v33 = 0;
  v100 = 0;
  v34 = MEMORY[0x1E69E7CC8];
  v35 = v101;
  v94 = v31;
  v95 = v26;
  v91 = v18;
  if (v29)
  {
    goto LABEL_10;
  }

LABEL_6:
  while (1)
  {
    v36 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      break;
    }

    if (v36 >= v31)
    {

      OUTLINED_FUNCTION_15_1();
      sub_1D7F02154(v87, v83);

      v6 = v88;
      v0 = v89;
      *(v89 + OBJC_IVAR____TtC5TeaUI21JSONSchemaValueObject__value) = v34;
LABEL_32:
      OUTLINED_FUNCTION_1_15();
      sub_1D7F014E4(v6, v0 + v84, v85);
      OUTLINED_FUNCTION_100();
      return;
    }

    v29 = *(v26 + 8 * v36);
    ++v33;
    if (v29)
    {
      v33 = v36;
LABEL_10:
      while (1)
      {
        v37 = (*(v98 + 48) + 16 * (__clz(__rbit64(v29)) | (v33 << 6)));
        v38 = *v37;
        v39 = v37[1];
        type metadata accessor for JSONSchema(0);
        v40 = *(v35 + 48);
        OUTLINED_FUNCTION_3_23();
        v41 = v104;
        sub_1D7F01FD8(v42, v104 + v40, v43);
        *v41 = v38;
        v41[1] = v39;
        OUTLINED_FUNCTION_8_12();
        sub_1D7F01FD8(v41, v18, v44);
        v45 = v18[1];
        v102 = *v18;
        v103 = v45;
        v46 = v99;
        if (!v99)
        {
          break;
        }

        OUTLINED_FUNCTION_8_12();
        v47 = v92;
        sub_1D7F01FD8(v41, v92, v48);
        v49 = v47[1];
        v50 = *(v35 + 48);
        if (!*(v46 + 16))
        {
          sub_1D8190DB4();

          OUTLINED_FUNCTION_0_9();
          v57 = v47 + v50;
          goto LABEL_17;
        }

        v90 = v50;
        v51 = *v47;
        sub_1D8190DB4();
        v52 = sub_1D7E11428(v51, v49);
        if ((v53 & 1) == 0)
        {

          OUTLINED_FUNCTION_0_9();
          v57 = v47 + v90;
LABEL_17:
          sub_1D7F02154(v57, v56);
          v18 = v91;
LABEL_18:
          v58 = sub_1D818F824();
          v59 = 1;
          v60 = v97;
          __swift_storeEnumTagSinglePayload(v97, 1, 1, v58);
          v61 = sub_1D7EF01F4(v60);
          v62 = sub_1D7F02038(v60);
          v105[0] = v38;
          v105[1] = v39;
          MEMORY[0x1EEE9AC00](v62);
          v86[-2] = v105;
          v63 = v100;
          v64 = sub_1D7F8F0B0();
          v100 = v63;
          if (!v64)
          {
            OUTLINED_FUNCTION_8_12();
            v65 = v93;
            sub_1D7F01FD8(v104, v93, v66);

            v67 = *(v101 + 48);
            v59 = sub_1D7EF2138();
            OUTLINED_FUNCTION_0_9();
            sub_1D7F02154(v65 + v67, v68);
          }

          OUTLINED_FUNCTION_2_18();
          sub_1D7EAB040(0, &qword_1ECA0D298, v69, type metadata accessor for JSONSchemaValueObject.EnablableValue);
          swift_allocObject();
          v54 = sub_1D804F474(v61, v59 & 1);
          v35 = v101;
          goto LABEL_21;
        }

        v54 = *(*(v46 + 56) + 8 * v52);

        OUTLINED_FUNCTION_0_9();
        sub_1D7F02154(v47 + v90, v55);
        v35 = v101;
        v18 = v91;
LABEL_21:
        swift_isUniquelyReferenced_nonNull_native();
        v105[0] = v34;
        v70 = sub_1D7E11428(v102, v103);
        if (__OFADD__(v34[2], (v71 & 1) == 0))
        {
          goto LABEL_34;
        }

        v72 = v70;
        v73 = v71;
        sub_1D7F020C4(0, &qword_1ECA0D290, MEMORY[0x1E69E6DC8]);
        if (sub_1D8192374())
        {
          v74 = sub_1D7E11428(v102, v103);
          if ((v73 & 1) != (v75 & 1))
          {
            goto LABEL_36;
          }

          v72 = v74;
        }

        v34 = v105[0];
        if (v73)
        {
          *(*(v105[0] + 56) + 8 * v72) = v54;
        }

        else
        {
          *(v105[0] + 8 * (v72 >> 6) + 64) |= 1 << v72;
          v76 = (v34[6] + 16 * v72);
          v77 = v103;
          *v76 = v102;
          v76[1] = v77;
          *(v34[7] + 8 * v72) = v54;
          v78 = v34[2];
          v79 = __OFADD__(v78, 1);
          v80 = v78 + 1;
          if (v79)
          {
            goto LABEL_35;
          }

          v34[2] = v80;
        }

        v29 &= v29 - 1;
        OUTLINED_FUNCTION_0_9();
        sub_1D7F02154(v18 + v81, v82);
        sub_1D7F02154(v104, sub_1D7F01370);
        v31 = v94;
        v26 = v95;
        if (!v29)
        {
          goto LABEL_6;
        }
      }

      sub_1D8190DB4();
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  sub_1D8192714();
  __break(1u);
}

uint64_t sub_1D7F006E0()
{
  OUTLINED_FUNCTION_68_1();
  result = sub_1D7F007AC();
  if (!v0)
  {
    v2 = OUTLINED_FUNCTION_111();
    __swift_project_boxed_opaque_existential_1(v2, v3);
    OUTLINED_FUNCTION_23_3();
    v4 = sub_1D7EFC74C();
    v5 = sub_1D7F00A2C(v4);

    OUTLINED_FUNCTION_60_1(v6, v7, v8, v9, v10, v11, v12, v13, v5, v14[0], v15, v16, v17);
    sub_1D7F020C4(0, &qword_1ECA0D5B8, MEMORY[0x1E69E5E28]);
    sub_1D7F01544();
    OUTLINED_FUNCTION_55_3();

    return __swift_destroy_boxed_opaque_existential_1Tm(v14);
  }

  return result;
}

uint64_t sub_1D7F007AC()
{
  OUTLINED_FUNCTION_69_0();
  v1 = sub_1D7F00CF4();
  if ((v2 & 1) != 0 || (v3 = v1, v4 = *(sub_1D7EFC74C() + 16), , v4 >= v3)) && ((sub_1D7F00CF4(), (v6) || (v7 = v5, v8 = *(sub_1D7EFC74C() + 16), , v7 >= v8)))
  {
    v13 = sub_1D7EFC74C() + 64;
    OUTLINED_FUNCTION_24();
    v16 = v15 & v14;
    v18 = (v17 + 63) >> 6;
    result = sub_1D8190DB4();
    v19 = 0;
    if (!v16)
    {
      goto LABEL_8;
    }

    do
    {
      v20 = v19;
LABEL_11:

      sub_1D7EFFC5C();
      if (v0)
      {
      }

      v16 &= v16 - 1;

      v19 = v20;
    }

    while (v16);
LABEL_8:
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v20 >= v18)
      {
      }

      v16 = *(v13 + 8 * v20);
      ++v19;
      if (v16)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_17_5();
    sub_1D81921A4();
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_56_2();
    MEMORY[0x1DA713260]();
    v9 = sub_1D81925B4();
    MEMORY[0x1DA713260](v9);

    OUTLINED_FUNCTION_56_2();
    MEMORY[0x1DA713260]();
    sub_1D7EFC74C();

    v10 = sub_1D81925B4();
    MEMORY[0x1DA713260](v10);

    OUTLINED_FUNCTION_56_2();
    MEMORY[0x1DA713260](0xD000000000000010);
    sub_1D7F01490();
    OUTLINED_FUNCTION_121();
    *v11 = v21;
    v11[1] = v22;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1D7F00A2C(uint64_t a1)
{
  v28 = MEMORY[0x1E69E7CC8];
  v29 = MEMORY[0x1E69E7CC8];
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
  result = sub_1D8190DB4();
  v8 = 0;
  while (1)
  {
    v9 = v8;
    if (!v5)
    {
      break;
    }

LABEL_9:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = v10 | (v8 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    v15 = *(*(a1 + 56) + 8 * v11);
    sub_1D8190DB4();

    if (sub_1D7EFF774())
    {
      v16 = v28;
      v17 = *(v28 + 16);
      if (*(v28 + 24) <= v17)
      {
        sub_1D7F01660(v17 + 1, 1);
        v16 = v29;
      }

      v28 = v16;
      sub_1D81927E4();
      sub_1D8190FF4();
      result = sub_1D8192824();
      v18 = v28 + 64;
      v19 = -1 << *(v28 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v28 + 64 + 8 * (v20 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v19) >> 6;
        while (++v21 != v24 || (v23 & 1) == 0)
        {
          v25 = v21 == v24;
          if (v21 == v24)
          {
            v21 = 0;
          }

          v23 |= v25;
          v26 = *(v18 + 8 * v21);
          if (v26 != -1)
          {
            v22 = __clz(__rbit64(~v26)) + (v21 << 6);
            goto LABEL_22;
          }
        }

        goto LABEL_25;
      }

      v22 = __clz(__rbit64((-1 << v20) & ~*(v28 + 64 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_22:
      *(v18 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      v27 = (*(v28 + 48) + 16 * v22);
      *v27 = v14;
      v27[1] = v13;
      *(*(v28 + 56) + 8 * v22) = v15;
      ++*(v28 + 16);
    }

    else
    {
    }
  }

  while (1)
  {
    v8 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      return v28;
    }

    v5 = *(v2 + 8 * v8);
    ++v9;
    if (v5)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1D7F00C6C()
{
  sub_1D7EFC74C();
  OUTLINED_FUNCTION_2_18();
  sub_1D7EAB040(0, v0, v1, type metadata accessor for JSONSchemaValueObject.EnablableValue);
  v2 = sub_1D8190D64();

  return v2;
}

uint64_t sub_1D7F00CF4()
{
  v1 = type metadata accessor for JSONSchema.SchemaType.ObjectType.DynamicObject(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v9[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = type metadata accessor for JSONSchema.SchemaType.ObjectType(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D7F01FD8(v0 + OBJC_IVAR____TtC5TeaUI21JSONSchemaValueObject_object, v6, type metadata accessor for JSONSchema.SchemaType.ObjectType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D7F014E4(v6, v3, type metadata accessor for JSONSchema.SchemaType.ObjectType.DynamicObject);
    v7 = *&v3[*(v1 + 20)];
    sub_1D7F02154(v3, type metadata accessor for JSONSchema.SchemaType.ObjectType.DynamicObject);
  }

  else
  {
    sub_1D7F02154(v6, type metadata accessor for JSONSchema.SchemaType.ObjectType);
    return 0;
  }

  return v7;
}

uint64_t sub_1D7F00EC8(void *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  sub_1D7F02154(v4 + *a1, a2);

  OUTLINED_FUNCTION_74_1();
  OUTLINED_FUNCTION_4_3();
  v7 = *(v6 + 8);

  return v7(v4 + a4);
}

uint64_t sub_1D7F00F40(void *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_0_9();
  sub_1D7F02154(v4 + v8, v9);
  sub_1D7F02154(v4 + *a1, a2);

  OUTLINED_FUNCTION_74_1();
  OUTLINED_FUNCTION_4_3();
  (*(v10 + 8))(v4 + a4);
  return v4;
}

uint64_t sub_1D7F01008(void *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  sub_1D7F00F40(a1, a2, a3, a4);
  OUTLINED_FUNCTION_39();

  return swift_deallocClassInstance();
}

uint64_t sub_1D7F01084()
{
  result = type metadata accessor for JSONSchema.SchemaType.ObjectType(319);
  if (v1 <= 0x3F)
  {
    result = sub_1D818EA14();
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

uint64_t sub_1D7F0115C()
{
  result = sub_1D818EA14();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1D7F01370()
{
  if (!qword_1ECA0D010)
  {
    type metadata accessor for JSONSchema(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ECA0D010);
    }
  }
}

uint64_t sub_1D7F013DC(uint64_t a1, uint64_t a2)
{
  sub_1D7EAB040(0, &qword_1ECA0D820, sub_1D7F01370, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D7F01490()
{
  result = qword_1ECA0D828;
  if (!qword_1ECA0D828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0D828);
  }

  return result;
}

uint64_t sub_1D7F014E4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_8();
  (*(v5 + 32))(a2, a1);
  return a2;
}

unint64_t sub_1D7F01544()
{
  result = qword_1ECA0D830;
  if (!qword_1ECA0D830)
  {
    sub_1D7F020C4(255, &qword_1ECA0D5B8, MEMORY[0x1E69E5E28]);
    sub_1D7F015FC(&qword_1ECA0D838);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0D830);
  }

  return result;
}

uint64_t sub_1D7F015FC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    OUTLINED_FUNCTION_2_18();
    sub_1D7EAB040(255, v3, v4, type metadata accessor for JSONSchemaValueObject.EnablableValue);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D7F01660(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1D7F020C4(0, &qword_1ECA0D840, MEMORY[0x1E69E6EC8]);
  v34 = a2;
  result = sub_1D8192434();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_31:

LABEL_32:
    *v3 = v7;
    return result;
  }

  v33 = v5;
  v8 = 0;
  v9 = (v5 + 64);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 64);
  v13 = (v10 + 63) >> 6;
  v14 = result + 64;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_32;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      sub_1D7E2CB98(0, (v32 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = (*(v5 + 48) + 16 * v18);
    v20 = *v19;
    v21 = v19[1];
    v22 = *(*(v5 + 56) + 8 * v18);
    if ((v34 & 1) == 0)
    {
      sub_1D8190DB4();
    }

    sub_1D81927E4();
    sub_1D8190FF4();
    result = sub_1D8192824();
    v23 = -1 << *(v7 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
    {
      break;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v14 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = (*(v7 + 48) + 16 * v26);
    *v31 = v20;
    v31[1] = v21;
    *(*(v7 + 56) + 8 * v26) = v22;
    ++*(v7 + 16);
    v5 = v33;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v27 = 0;
  v28 = (63 - v23) >> 6;
  while (++v25 != v28 || (v27 & 1) == 0)
  {
    v29 = v25 == v28;
    if (v25 == v28)
    {
      v25 = 0;
    }

    v27 |= v29;
    v30 = *(v14 + 8 * v25);
    if (v30 != -1)
    {
      v26 = __clz(__rbit64(~v30)) + (v25 << 6);
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}

void sub_1D7F0193C()
{
  OUTLINED_FUNCTION_16_9();
  sub_1D7F01F6C();
  v5 = OUTLINED_FUNCTION_24_3();
  if (!v3[2])
  {
LABEL_29:

LABEL_30:
    *v0 = v5;
    return;
  }

  OUTLINED_FUNCTION_6_7();
  if (!v1)
  {
LABEL_4:
    v8 = v4;
    while (1)
    {
      v4 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v4 >= v0)
      {
        break;
      }

      ++v8;
      if (*(v2 + 8 * v4))
      {
        OUTLINED_FUNCTION_21_3();
        v1 = v10 & v9;
        goto LABEL_9;
      }
    }

    if ((v29 & 1) == 0)
    {

      v0 = v28;
      goto LABEL_30;
    }

    OUTLINED_FUNCTION_31_3();
    v0 = v28;
    if (v26 != v27)
    {
      OUTLINED_FUNCTION_51_1(v25);
    }

    else
    {
      OUTLINED_FUNCTION_44_0(v25);
    }

    v3[2] = 0;
    goto LABEL_29;
  }

  while (1)
  {
    OUTLINED_FUNCTION_36_2();
LABEL_9:
    v11 = v6 | (v4 << 6);
    v12 = (v3[6] + v11 * v7);
    v13 = *v12;
    v14 = *(v12 + 1);
    v15 = v12[2];
    v3 = *(v3[7] + 8 * v11);
    if ((v29 & 1) == 0)
    {
      sub_1D8190DB4();
      sub_1D8190DB4();
    }

    sub_1D81927E4();
    OUTLINED_FUNCTION_58_0();
    v16 = v15 == 0.0 ? 0.0 : v15;
    MEMORY[0x1DA714A20](*&v16);
    sub_1D8192824();
    OUTLINED_FUNCTION_14_8();
    if (v17)
    {
      break;
    }

    OUTLINED_FUNCTION_34();
LABEL_21:
    OUTLINED_FUNCTION_12_7(v18);
    v24 = v23 + 24 * v22;
    *v24 = v13;
    *(v24 + 8) = v14;
    *(v24 + 16) = v15;
    OUTLINED_FUNCTION_18_4(v22);
    if (!v1)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_33();
  while (v19 + 1 != v21 || (v20 & 1) == 0)
  {
    OUTLINED_FUNCTION_53_1();
    if (!v17)
    {
      OUTLINED_FUNCTION_32();
      goto LABEL_21;
    }
  }

LABEL_32:
  __break(1u);
}

void sub_1D7F01AE0()
{
  OUTLINED_FUNCTION_16_9();
  sub_1D7F01F04();
  v7 = OUTLINED_FUNCTION_24_3();
  if (!*(v3 + 16))
  {
LABEL_26:

LABEL_27:
    *v0 = v7;
    return;
  }

  OUTLINED_FUNCTION_6_7();
  if (!v1)
  {
LABEL_4:
    v8 = v6;
    while (1)
    {
      v6 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v0)
      {
        break;
      }

      ++v8;
      if (*(v2 + 8 * v6))
      {
        OUTLINED_FUNCTION_21_3();
        v1 = v10 & v9;
        goto LABEL_9;
      }
    }

    if ((v24 & 1) == 0)
    {

      v0 = v23;
      goto LABEL_27;
    }

    OUTLINED_FUNCTION_31_3();
    v0 = v23;
    if (v21 != v22)
    {
      OUTLINED_FUNCTION_51_1(v20);
    }

    else
    {
      OUTLINED_FUNCTION_44_0(v20);
    }

    *(v3 + 16) = 0;
    goto LABEL_26;
  }

  while (1)
  {
    OUTLINED_FUNCTION_36_2();
LABEL_9:
    OUTLINED_FUNCTION_47_1();
    if ((v11 & 1) == 0)
    {
      sub_1D8190DB4();
    }

    sub_1D81927E4();
    OUTLINED_FUNCTION_58_0();
    sub_1D8192824();
    OUTLINED_FUNCTION_14_8();
    if (v12)
    {
      break;
    }

    OUTLINED_FUNCTION_34();
LABEL_18:
    OUTLINED_FUNCTION_12_7(v13);
    v19 = (v18 + 16 * v17);
    *v19 = v4;
    v19[1] = v5;
    OUTLINED_FUNCTION_18_4(v17);
    if (!v1)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_33();
  while (v14 + 1 != v16 || (v15 & 1) == 0)
  {
    OUTLINED_FUNCTION_53_1();
    if (!v12)
    {
      OUTLINED_FUNCTION_32();
      goto LABEL_18;
    }
  }

LABEL_29:
  __break(1u);
}

unint64_t sub_1D7F01C40()
{
  result = qword_1ECA0D848;
  if (!qword_1ECA0D848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0D848);
  }

  return result;
}

unint64_t sub_1D7F01C94()
{
  result = qword_1ECA0D850;
  if (!qword_1ECA0D850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0D850);
  }

  return result;
}

unint64_t sub_1D7F01CE8()
{
  result = qword_1ECA0D858;
  if (!qword_1ECA0D858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0D858);
  }

  return result;
}

unint64_t sub_1D7F01D3C()
{
  result = qword_1EDBB3490;
  if (!qword_1EDBB3490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBB3490);
  }

  return result;
}

unint64_t sub_1D7F01D90()
{
  result = qword_1ECA0D860;
  if (!qword_1ECA0D860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0D860);
  }

  return result;
}

unint64_t sub_1D7F01DE4()
{
  result = qword_1ECA0D868;
  if (!qword_1ECA0D868)
  {
    sub_1D7EAB040(255, &qword_1ECA0D5D8, type metadata accessor for JSONSchemaValue, MEMORY[0x1E69E62F8]);
    sub_1D7F01EBC(&qword_1ECA0D870, type metadata accessor for JSONSchemaValue);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0D868);
  }

  return result;
}

uint64_t sub_1D7F01EBC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D7F01F04()
{
  if (!qword_1EDBB2D40)
  {
    type metadata accessor for TipPlacement();
    v0 = sub_1D8192454();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBB2D40);
    }
  }
}

void sub_1D7F01F6C()
{
  if (!qword_1ECA0D878)
  {
    sub_1D7E33568();
    sub_1D7EF7254();
    v0 = sub_1D8192454();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECA0D878);
    }
  }
}

uint64_t sub_1D7F01FD8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1D7F02038(uint64_t a1)
{
  sub_1D7EAB040(0, &qword_1ECA0CFE0, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D7F020C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void, uint64_t, void))
{
  if (!*a2)
  {
    OUTLINED_FUNCTION_2_18();
    sub_1D7EAB040(255, v6, v7, type metadata accessor for JSONSchemaValueObject.EnablableValue);
    v9 = a3(a1, MEMORY[0x1E69E6158], v8, MEMORY[0x1E69E6168]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1D7F02154(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4_3();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1D7F021E8(uint64_t result, int a2, int a3)
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

uint64_t sub_1D7F02240@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D7E0E768(a1, v5);
  v3 = type metadata accessor for SettingsPresenter();
  swift_allocObject();
  result = sub_1D7F33850(v5);
  a2[3] = v3;
  a2[4] = &off_1F52EA948;
  *a2 = result;
  return result;
}

uint64_t sub_1D7F022AC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for SettingsViewController();
  result = sub_1D818EFE4();
  if (result)
  {
    v2 = result;
    v3 = [objc_allocWithZone(type metadata accessor for SettingsNavigationController()) initWithRootViewController_];

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_1D7F0232C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7E0A63C(0, &qword_1EDBBD1C0, MEMORY[0x1E69E62F8]);
  result = sub_1D818EFF4();
  if (v10)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D818EFC4();
    result = v9;
    if (v9)
    {
      sub_1D7F0A4C0(v9);
      type metadata accessor for SettingActionHandler();
      v3 = swift_allocObject();
      v4 = sub_1D818EAC4();
      v5 = MEMORY[0x1E69D6D60];
      v6 = sub_1D7E0A0FC(&qword_1ECA0D8E8, MEMORY[0x1E69D6D60]);
      v7 = sub_1D7E0A0FC(&unk_1ECA0D8F0, v5);
      MEMORY[0x1DA7114E0](MEMORY[0x1E69E7CC0], v4, v6, v7);
      v8 = objc_allocWithZone(type metadata accessor for SettingsViewController());
      return sub_1D7F02FD8(v10, v3, v8);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D7F024D8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v48 = a1;
  v38 = a2;
  v2 = MEMORY[0x1E69D6E30];
  sub_1D7F02EB8(0, &qword_1ECA0D880, sub_1D7F02C80, &type metadata for DebugContextMenuPosition, MEMORY[0x1E69D6E30]);
  v46 = v3;
  v44 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v47 = v37 - v4;
  sub_1D7F02DE4(0, &qword_1ECA0D888, MEMORY[0x1E69D6E30]);
  v41 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v40 = v37 - v7;
  v39 = sub_1D818EB04();
  v8 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v10 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7F02EB8(0, &qword_1ECA0D890, sub_1D7F02CD4, &type metadata for DebugWindowActivation, v2);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v37 - v14;
  sub_1D7E0A63C(0, &qword_1ECA0D8A0, MEMORY[0x1E69E6F90]);
  v16 = *(sub_1D818EBE4() - 8);
  v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v37[1] = *(v16 + 72);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1D819FAC0;
  sub_1D7F02D28();
  v42 = v19;
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1D81A1B70;
  sub_1D7F02EB8(0, &qword_1ECA0D8B0, sub_1D7F02CD4, &type metadata for DebugWindowActivation, MEMORY[0x1E69D6E50]);
  v22 = v21;
  if (qword_1ECA0C300 != -1)
  {
    swift_once();
  }

  v45 = v18;
  v43 = v18 + v17;
  v23 = *MEMORY[0x1E69D6E28];
  (*(v13 + 104))(v15, v23, v12);
  sub_1D7F02D90();

  v24 = sub_1D818EBA4();
  *(v20 + 56) = v22;
  *(v20 + 64) = sub_1D7F02F74(&qword_1ECA0D8C0, &qword_1ECA0D8B0, sub_1D7F02CD4, &type metadata for DebugWindowActivation);
  *(v20 + 32) = v24;
  sub_1D7F02DE4(0, &qword_1ECA0D8C8, MEMORY[0x1E69D6E50]);
  v26 = v25;
  if (qword_1ECA0C2E8 != -1)
  {
    swift_once();
  }

  (*(v8 + 104))(v10, *MEMORY[0x1E69D6D78], v39);
  (*(v6 + 104))(v40, v23, v41);

  v27 = sub_1D818EBB4();
  *(v20 + 96) = v26;
  *(v20 + 104) = sub_1D7F02E44();
  *(v20 + 72) = v27;
  sub_1D7F02EB8(0, &qword_1ECA0D8D8, sub_1D7F02C80, &type metadata for DebugContextMenuPosition, MEMORY[0x1E69D6E50]);
  v29 = v28;
  if (qword_1EDBBC648 != -1)
  {
    swift_once();
  }

  (*(v44 + 104))(v47, v23, v46);
  sub_1D7F02F20();

  v30 = sub_1D818EBA4();
  *(v20 + 136) = v29;
  *(v20 + 144) = sub_1D7F02F74(&qword_1ECA0D8E0, &qword_1ECA0D8D8, sub_1D7F02C80, &type metadata for DebugContextMenuPosition);
  *(v20 + 112) = v30;
  sub_1D818EBD4();
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1D819FAB0;
  __swift_project_boxed_opaque_existential_1(v48, v48[3]);
  sub_1D7E0A63C(0, &qword_1EDBBD1C0, MEMORY[0x1E69E62F8]);
  result = sub_1D818EFF4();
  v33 = v45;
  if (v49)
  {
    v34 = sub_1D818ECC4();
    swift_allocObject();
    v35 = sub_1D818ECB4();
    v36 = MEMORY[0x1E69D6ED0];
    *(v31 + 56) = v34;
    *(v31 + 64) = v36;
    *(v31 + 32) = v35;
    result = sub_1D818EBD4();
    *v38 = v33;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1D7F02C80()
{
  result = qword_1EDBB7BC0;
  if (!qword_1EDBB7BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBB7BC0);
  }

  return result;
}

unint64_t sub_1D7F02CD4()
{
  result = qword_1ECA0D898;
  if (!qword_1ECA0D898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0D898);
  }

  return result;
}

void sub_1D7F02D28()
{
  if (!qword_1ECA0D8A8)
  {
    sub_1D7E0631C(255, &qword_1ECA0ED40);
    v0 = sub_1D81925C4();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECA0D8A8);
    }
  }
}

unint64_t sub_1D7F02D90()
{
  result = qword_1ECA0D8B8;
  if (!qword_1ECA0D8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0D8B8);
  }

  return result;
}

void sub_1D7F02DE4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1D7F02E44()
{
  result = qword_1ECA0D8D0;
  if (!qword_1ECA0D8D0)
  {
    sub_1D7F02DE4(255, &qword_1ECA0D8C8, MEMORY[0x1E69D6E50]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0D8D0);
  }

  return result;
}

void sub_1D7F02EB8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1D7F02F20()
{
  result = qword_1EDBB7BB0;
  if (!qword_1EDBB7BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBB7BB0);
  }

  return result;
}

uint64_t sub_1D7F02F74(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1D7F02EB8(255, a2, a3, a4, MEMORY[0x1E69D6E50]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

char *sub_1D7F02FD8(uint64_t a1, uint64_t a2, char *a3)
{
  ObjectType = swift_getObjectType();
  v15[3] = type metadata accessor for SettingActionHandler();
  v15[4] = &protocol witness table for SettingActionHandler;
  v15[0] = a2;
  v7 = OBJC_IVAR____TtC5TeaUI22SettingsViewController_tableView;
  *&a3[v7] = [objc_allocWithZone(MEMORY[0x1E69DD020]) initWithFrame:1 style:{0.0, 0.0, 0.0, 0.0}];
  v8 = &a3[OBJC_IVAR____TtC5TeaUI22SettingsViewController_akeyboardWillChangeFrame];
  *v8 = sub_1D7FC409C;
  v8[1] = 0;
  *&a3[OBJC_IVAR____TtC5TeaUI22SettingsViewController_layout] = a1;
  sub_1D7E0E768(v15, &a3[OBJC_IVAR____TtC5TeaUI22SettingsViewController_actionHandler]);
  v14.receiver = a3;
  v14.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v14, sel_initWithNibName_bundle_, 0, 0);
  v10 = OBJC_IVAR____TtC5TeaUI22SettingsViewController_tableView;
  v11 = *&v9[OBJC_IVAR____TtC5TeaUI22SettingsViewController_tableView];
  v12 = v9;
  [v11 setDelegate_];
  [*&v9[v10] setDataSource_];

  __swift_destroy_boxed_opaque_existential_1Tm(v15);
  return v12;
}

uint64_t sub_1D7F03120@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1D7F03170(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 24) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t ScrollViewProxyManager.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*ScrollViewProxyManager.delegate.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  OUTLINED_FUNCTION_15_2();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v1 + 24);
  v3[3] = Strong;
  v3[4] = v5;
  return sub_1D7F032D0;
}

void sub_1D7F032D0(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 24) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t ScrollViewProxyManager.currentScrollView.getter()
{
  OUTLINED_FUNCTION_10();

  sub_1D818F154();

  return v1;
}

uint64_t ScrollViewProxyManager.observableScrollView.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 40) = a1;
}

uint64_t ScrollViewProxyManager.__allocating_init()()
{
  v0 = swift_allocObject();
  ScrollViewProxyManager.init()();
  return v0;
}

void *ScrollViewProxyManager.init()()
{
  v0[3] = 0;
  swift_unknownObjectWeakInit();
  sub_1D7EF847C();
  v0[4] = sub_1D8190D94();
  sub_1D7F03588();
  swift_allocObject();
  v0[5] = sub_1D818F144();
  return v0;
}

void sub_1D7F03588()
{
  if (!qword_1EDBBC4D8)
  {
    sub_1D7EBB454(255, qword_1EDBB3230);
    v0 = sub_1D818F194();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBBC4D8);
    }
  }
}

Swift::Void __swiftcall ScrollViewProxyManager.proxy(to:)(UIScrollView *to)
{
  v3 = [(UIScrollView *)to delegate];
  OUTLINED_FUNCTION_15_2();
  if (v3)
  {
    swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v1 + 32);
    sub_1D7EF5FD8();
    *(v1 + 32) = v7;
  }

  else
  {
    sub_1D7F03A28(to);
    swift_unknownObjectRelease();
  }

  swift_endAccess();
  swift_beginAccess();
  sub_1D7F03AE8();

  v4 = to;
  sub_1D818F184();

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v1 + 24);
    ObjectType = swift_getObjectType();
    (*(v5 + 8))(v4, ObjectType, v5);
    swift_unknownObjectRelease();
  }
}

Swift::Void __swiftcall ScrollViewProxyManager.restore(_:)(UIScrollView *a1)
{
  swift_beginAccess();
  v3 = sub_1D7EDF340(a1, *(v1 + 32));
  swift_endAccess();
  [(UIScrollView *)a1 setDelegate:v3];
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_15_2();
  sub_1D7F03A28(a1);
  swift_endAccess();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_10();

  sub_1D818F154();

  if (v4)
  {

    if (v4 == a1)
    {
      sub_1D7F03AE8();

      sub_1D818F184();
    }
  }
}

uint64_t ScrollViewProxyManager.deinit()
{
  sub_1D7E166A0(v0 + 16);

  return v0;
}

uint64_t ScrollViewProxyManager.__deallocating_deinit()
{
  ScrollViewProxyManager.deinit();

  return swift_deallocClassInstance();
}

void sub_1D7F038EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_16_10();
  v12 = v11;
  v13 = sub_1D7F04FD8();
  if (v14)
  {
    v15 = v13;
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_6_8();
    sub_1D7EF8FBC();
    OUTLINED_FUNCTION_5_5();
    sub_1D8192374();
    v16 = *(a10 + 48);
    v17 = sub_1D8192364();
    OUTLINED_FUNCTION_8();
    (*(v18 + 8))(v16 + *(v18 + 72) * v15, v17);
    sub_1D7EFA2F4((*(a10 + 56) + 32 * v15), v12);
    sub_1D7EF8F6C();
    sub_1D8192384();
    *v10 = a10;
  }

  else
  {
    *v12 = 0u;
    *(v12 + 16) = 0u;
  }

  OUTLINED_FUNCTION_17_6();
}

uint64_t sub_1D7F03A28(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1D7E7E198(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  swift_isUniquelyReferenced_nonNull_native();
  v8 = *v1;
  sub_1D7EF8414();
  sub_1D8192374();
  v6 = *(*(v8 + 56) + 8 * v5);
  sub_1D7EF847C();
  sub_1D8192384();
  *v2 = v8;
  return v6;
}

unint64_t sub_1D7F03AE8()
{
  result = qword_1EDBB3220;
  if (!qword_1EDBB3220)
  {
    sub_1D7EBB454(255, qword_1EDBB3230);
    sub_1D7F03B8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBB3220);
  }

  return result;
}

unint64_t sub_1D7F03B8C()
{
  result = qword_1EDBB3218;
  if (!qword_1EDBB3218)
  {
    sub_1D7E0A1A8(255, &qword_1EDBB3240);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBB3218);
  }

  return result;
}

void sub_1D7F03BF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_16_10();
  OUTLINED_FUNCTION_9_5();
  sub_1D7E7E198(v11);
  if (v12)
  {
    OUTLINED_FUNCTION_12_8();
    OUTLINED_FUNCTION_0_11();
    sub_1D7EF8378();
    OUTLINED_FUNCTION_1_16();
    OUTLINED_FUNCTION_2_19();
    type metadata accessor for Plugin();
    OUTLINED_FUNCTION_11_0();
    sub_1D8192384();
    *v10 = a10;
  }

  OUTLINED_FUNCTION_17_6();
}

void sub_1D7F03CE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_14_9();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  OUTLINED_FUNCTION_9_5();
  sub_1D7E11428(v17, v18);
  if (v19)
  {
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_6_8();
    v20 = OUTLINED_FUNCTION_4_12();
    sub_1D7F04560(v20, v16, v14, v21);
    OUTLINED_FUNCTION_5_5();
    sub_1D8192374();

    v12(0);
    sub_1D8192384();
    *v10 = a10;
  }

  OUTLINED_FUNCTION_169();
}

void sub_1D7F03DB4()
{
  OUTLINED_FUNCTION_16_10();
  OUTLINED_FUNCTION_9_5();
  sub_1D7E11428(v2, v3);
  if (v4)
  {
    OUTLINED_FUNCTION_12_8();
    OUTLINED_FUNCTION_0_11();
    sub_1D7F04560(0, &qword_1EDBB2DF0, sub_1D7F045D4, MEMORY[0x1E69E6DC8]);
    OUTLINED_FUNCTION_1_16();
    OUTLINED_FUNCTION_3_24();
    OUTLINED_FUNCTION_2_19();
    sub_1D7F045D4();
    OUTLINED_FUNCTION_11_0();
    sub_1D8192384();
    *v0 = v1;
  }

  OUTLINED_FUNCTION_17_6();
}

uint64_t sub_1D7F03F14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X2>, uint64_t (*a4)(uint64_t)@<X3>, uint64_t (*a5)(void)@<X4>, void (*a6)(void)@<X5>, uint64_t a7@<X8>)
{
  v13 = sub_1D7E11428(a1, a2);
  if (v14)
  {
    v15 = v13;
    swift_isUniquelyReferenced_nonNull_native();
    v25 = *v7;
    v16 = OUTLINED_FUNCTION_4_12();
    sub_1D7F04560(v16, a3, a4, v17);
    OUTLINED_FUNCTION_5_5();
    sub_1D8192374();

    v18 = *(v25 + 56);
    v19 = a5(0);
    OUTLINED_FUNCTION_8();
    sub_1D7E2B9C0(v18 + *(v20 + 72) * v15, a7, a6);
    sub_1D8192384();
    *v7 = v25;
    v21 = a7;
    v22 = 0;
    v23 = v19;
  }

  else
  {
    v23 = a5(0);
    v21 = a7;
    v22 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v21, v22, 1, v23);
}

void sub_1D7F04064()
{
  OUTLINED_FUNCTION_14_9();
  OUTLINED_FUNCTION_9_5();
  sub_1D7E11428(v2, v3);
  if (v4)
  {
    OUTLINED_FUNCTION_12_8();
    OUTLINED_FUNCTION_0_11();
    sub_1D7F0472C(0, qword_1EDBB2DC0);
    OUTLINED_FUNCTION_1_16();
    OUTLINED_FUNCTION_3_24();
    v5 = OUTLINED_FUNCTION_2_19();
    sub_1D7E0A1A8(v5, qword_1EDBBC7E0);
    OUTLINED_FUNCTION_11_0();
    sub_1D8192384();
    *v0 = v1;
  }

  OUTLINED_FUNCTION_169();
}

void sub_1D7F04124()
{
  OUTLINED_FUNCTION_14_9();
  OUTLINED_FUNCTION_9_5();
  sub_1D7E11428(v2, v3);
  if (v4)
  {
    OUTLINED_FUNCTION_12_8();
    OUTLINED_FUNCTION_0_11();
    v5 = MEMORY[0x1E69E62F8];
    sub_1D7EBC044(0, &qword_1EDBAE368);
    OUTLINED_FUNCTION_1_16();
    OUTLINED_FUNCTION_3_24();
    v6 = OUTLINED_FUNCTION_2_19();
    sub_1D7EBC0A4(v6, &qword_1EDBB32F0, sub_1D7EE5BC0, v5);
    OUTLINED_FUNCTION_11_0();
    sub_1D8192384();
    *v0 = v1;
  }

  OUTLINED_FUNCTION_169();
}

void sub_1D7F041F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_16_10();
  v13 = v12;
  sub_1D7E2AEC0();
  if (v14)
  {
    OUTLINED_FUNCTION_12_8();
    OUTLINED_FUNCTION_6_8();
    sub_1D7E2B698();
    OUTLINED_FUNCTION_5_5();
    sub_1D8192374();
    v15 = *(a10 + 48);
    type metadata accessor for BlueprintBookmark();
    OUTLINED_FUNCTION_8();
    sub_1D7E2BBA0(v15 + *(v16 + 72) * v11);
    sub_1D7E05450((*(a10 + 56) + 40 * v11), v13);
    sub_1D7E0631C(0, &qword_1EDBB5C48);
    sub_1D7F0478C();
    sub_1D8192384();
    *v10 = a10;
  }

  else
  {
    *(v13 + 32) = 0;
    *v13 = 0u;
    *(v13 + 16) = 0u;
  }

  OUTLINED_FUNCTION_17_6();
}

void sub_1D7F0431C()
{
  OUTLINED_FUNCTION_16_10();
  OUTLINED_FUNCTION_9_5();
  sub_1D7E11428(v2, v3);
  if (v4)
  {
    OUTLINED_FUNCTION_12_8();
    OUTLINED_FUNCTION_0_11();
    sub_1D7F04624();
    OUTLINED_FUNCTION_1_16();
    OUTLINED_FUNCTION_3_24();
    OUTLINED_FUNCTION_2_19();
    type metadata accessor for TipPresentation();
    sub_1D7E30F60();
    OUTLINED_FUNCTION_11_0();
    sub_1D8192384();
    *v0 = v1;
  }

  OUTLINED_FUNCTION_17_6();
}

double sub_1D7F043D4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, unint64_t *a4@<X3>, void (*a5)(uint64_t, uint64_t)@<X5>, uint64_t a6@<X8>)
{
  v11 = sub_1D7E11428(a1, a2);
  if (v12)
  {
    v13 = v11;
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_6_8();
    sub_1D7F0472C(0, a3);
    OUTLINED_FUNCTION_5_5();
    sub_1D8192374();

    a5(*(v15 + 56) + 40 * v13, a6);
    sub_1D7E0631C(0, a4);
    sub_1D8192384();
    *v6 = v15;
  }

  else
  {
    *(a6 + 32) = 0;
    result = 0.0;
    *a6 = 0u;
    *(a6 + 16) = 0u;
  }

  return result;
}

void sub_1D7F04560(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, void, uint64_t, void))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, MEMORY[0x1E69E6158], v7, MEMORY[0x1E69E6168]);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1D7F045D4()
{
  if (!qword_1EDBB3390)
  {
    v0 = sub_1D8191484();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBB3390);
    }
  }
}

void sub_1D7F04624()
{
  if (!qword_1EDBAE390)
  {
    type metadata accessor for TipPresentation();
    sub_1D7E30F60();
    v0 = sub_1D8192394();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBAE390);
    }
  }
}

void sub_1D7F04690()
{
  if (!qword_1EDBB2E68)
  {
    sub_1D7F04560(255, &unk_1EDBB3450, type metadata accessor for TipPlacement, MEMORY[0x1E69E5E28]);
    sub_1D7E30F60();
    v0 = sub_1D8192394();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBB2E68);
    }
  }
}

void sub_1D7F0472C(uint64_t a1, void *a2)
{
  if (!*a2)
  {
    v3 = OUTLINED_FUNCTION_7_12();
    v4(v3);
    v5 = sub_1D8192394();
    if (!v6)
    {
      atomic_store(v5, v2);
    }
  }
}

unint64_t sub_1D7F0478C()
{
  result = qword_1EDBBA750;
  if (!qword_1EDBBA750)
  {
    type metadata accessor for BlueprintBookmark();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBBA750);
  }

  return result;
}

double sub_1D7F04848()
{
  v0 = type metadata accessor for BlueprintCompositionalListItemSeparatorOptions(0);
  __swift_allocate_value_buffer(v0, qword_1EDBAEA28);
  v1 = __swift_project_value_buffer(v0, qword_1EDBAEA28);
  v2 = *(v0 + 24);
  v3 = sub_1D8190044();
  __swift_storeEnumTagSinglePayload(v1 + v2, 1, 1, v3);
  *(v1 + 32) = 0;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  result = 16.0;
  *(v1 + 40) = xmmword_1D81A1C50;
  *(v1 + 56) = 0x4028000000000000;
  return result;
}

uint64_t KeyCommandRegistry.__allocating_init(provider:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  KeyCommandRegistry.init(provider:)(a1, a2);
  return v4;
}

uint64_t sub_1D7F04980(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    result = sub_1D81920A4();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  if (result < 1)
  {
    __break(1u);
  }

  else
  {
    v3 = 0;
    v4 = v1 & 0xC000000000000001;
    v5 = result;
    v6 = v1;
    do
    {
      if (v4)
      {
        MEMORY[0x1DA714420](v3, v1);
      }

      else
      {
      }

      ++v3;
      sub_1D8190DB4();

      sub_1D8190DB4();
      sub_1D7E3DAB0();

      result = v5;
      v1 = v6;
    }

    while (v5 != v3);
  }

  return result;
}

uint64_t KeyCommandRegistry.deinit()
{

  MEMORY[0x1DA715E30](v0 + 24);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t KeyCommandRegistry.__deallocating_deinit()
{
  KeyCommandRegistry.deinit();

  return swift_deallocClassInstance();
}

Swift::Bool __swiftcall KeyCommandHandlerRegistry.handle(keyCommand:)(UIKeyCommand keyCommand)
{
  swift_beginAccess();
  v2 = *(v1 + 16);
  if (*(v2 + 16))
  {
    sub_1D8190DB4();
    v3 = sub_1D7E3DF84();
    if (v4)
    {
      v5 = *(*(v2 + 56) + 16 * v3);

      v5(v6);

      return 1;
    }
  }

  return 0;
}

Swift::Bool __swiftcall KeyCommandHandlerRegistry.handle(key:flags:)(Swift::String key, __C::UIKeyModifierFlags flags)
{
  OUTLINED_FUNCTION_12_9();
  v22 = v4;
  v23 = v3;
  v24 = v5;
  OUTLINED_FUNCTION_7_13();
  v6 = *(v2 + 16);
  OUTLINED_FUNCTION_24();
  v9 = v8 & v7;
  v11 = (v10 + 63) >> 6;
  result = sub_1D8190DB4();
  for (i = 0; v9; result = )
  {
LABEL_6:
    v15 = __clz(__rbit64(v9)) | (i << 6);
    v16 = *(*(v6 + 56) + 16 * v15);
    v17 = *(*(v6 + 48) + 8 * v15);

    v18 = sub_1D7F05E54(v17);
    if (v19)
    {
      if (v18 == v23 && v19 == v24)
      {
      }

      else
      {
        v21 = sub_1D8192634();

        if ((v21 & 1) == 0)
        {
          goto LABEL_15;
        }
      }

      if ([v17 modifierFlags] == v22)
      {
        v16();

LABEL_18:
        OUTLINED_FUNCTION_11_8();
        return result;
      }
    }

LABEL_15:
    v9 &= v9 - 1;
  }

  while (1)
  {
    v14 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v14 >= v11)
    {

      goto LABEL_18;
    }

    v9 = *(v6 + 64 + 8 * v14);
    ++i;
    if (v9)
    {
      i = v14;
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall KeyCommandHandlerRegistry.clearState()()
{
  v1 = *(v0 + 40);
  ObjectType = swift_getObjectType();
  (*(v1 + 48))(ObjectType, v1);
}

Swift::Void __swiftcall KeyCommandHandlerRegistry.removeAll()()
{
  OUTLINED_FUNCTION_12_9();
  OUTLINED_FUNCTION_7_13();
  v1 = *(v0 + 16);
  OUTLINED_FUNCTION_24();
  v4 = v3 & v2;
  v6 = (v5 + 63) >> 6;
  sub_1D8190DB4();
  v7 = 0;
  while (v4)
  {
LABEL_7:
    OUTLINED_FUNCTION_16_11();
    v10 = *(*(v1 + 48) + ((v7 << 9) | (8 * v9)));
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v12 = Strong;
      [Strong removeKeyCommand_];
    }
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      swift_beginAccess();
      sub_1D7E72D74();
      sub_1D8190DE4();
      swift_endAccess();
      OUTLINED_FUNCTION_11_8();
      return;
    }

    v4 = *(v1 + 64 + 8 * v8);
    ++v7;
    if (v4)
    {
      v7 = v8;
      goto LABEL_7;
    }
  }

  __break(1u);
}

uint64_t KeyCommandHandlerRegistry.keyCommands()()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = sub_1D7F05590();
  v4 = sub_1D7F0584C(&v6, (v3 + 32), v2, v1);
  sub_1D8190DB4();
  sub_1D7E4507C();
  if (v4 != v2)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

unint64_t sub_1D7F04F80()
{
  OUTLINED_FUNCTION_8_13();
  MEMORY[0x1DA714A00](v0);
  sub_1D8192824();
  v1 = OUTLINED_FUNCTION_17_7();

  return sub_1D7E7E1D8(v1, v2);
}

unint64_t sub_1D7F04FD8()
{
  OUTLINED_FUNCTION_20_3();
  sub_1D8192364();
  sub_1D8190E54();
  v0 = OUTLINED_FUNCTION_14();

  return sub_1D7F05168(v0, v1);
}

unint64_t sub_1D7F05034(unsigned __int8 a1)
{
  OUTLINED_FUNCTION_10_13();
  MEMORY[0x1DA714A00](a1);
  v2 = sub_1D8192824();
  return sub_1D7F052EC(a1, v2);
}

unint64_t sub_1D7F05094()
{
  OUTLINED_FUNCTION_20_3();
  sub_1D8192104();
  v0 = OUTLINED_FUNCTION_14();

  return sub_1D7F0534C(v0, v1);
}

unint64_t sub_1D7F050D0(uint64_t a1, uint64_t a2, double a3)
{
  OUTLINED_FUNCTION_10_13();
  sub_1D8190FF4();
  v6 = 0.0;
  if (a3 != 0.0)
  {
    v6 = a3;
  }

  MEMORY[0x1DA714A20](*&v6);
  v7 = sub_1D8192824();

  return sub_1D7F05410(a1, a2, v7, a3);
}

unint64_t sub_1D7F05168(uint64_t a1, uint64_t a2)
{
  v13[1] = a1;
  v4 = sub_1D8192364();
  v5 = *(v4 - 8);
  v6.n128_f64[0] = MEMORY[0x1EEE9AC00](v4);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v2;
  v15 = v2 + 64;
  v9 = ~(-1 << *(v2 + 32));
  for (i = a2 & v9; ((1 << i) & *(v15 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v9)
  {
    (*(v5 + 16))(v8, *(v14 + 48) + *(v5 + 72) * i, v4, v6);
    v11 = sub_1D8190ED4();
    (*(v5 + 8))(v8, v4);
    if (v11)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_1D7F052EC(unsigned __int8 a1, uint64_t a2)
{
  v3 = a1;
  v4 = ~(-1 << *(v2 + 32));
    ;
  }

  return result;
}

unint64_t sub_1D7F0534C(uint64_t a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    sub_1D7F0607C(*(v2 + 48) + 40 * i, v8);
    v6 = MEMORY[0x1DA714320](v8, a1);
    sub_1D7F060D8(v8);
    if (v6)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_1D7F05410(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v5 = v4 + 64;
  v6 = -1 << *(v4 + 32);
  v7 = a3 & ~v6;
  if ((*(v4 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v11 = ~v6;
    v12 = *(v4 + 48);
    do
    {
      v13 = v12 + 24 * v7;
      v14 = *(v13 + 16);
      v15 = *v13 == a1 && *(v13 + 8) == a2;
      if (v15 || (sub_1D8192634()) && v14 == a4)
      {
        break;
      }

      v7 = (v7 + 1) & v11;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

uint64_t sub_1D7F054EC()
{
  OUTLINED_FUNCTION_15_3();
  if (!v0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1D7E71F64(0, &qword_1EDBB2C60);
  v1 = swift_allocObject();
  OUTLINED_FUNCTION_22_5(v1);
  OUTLINED_FUNCTION_21_4(v2 / 16);
  return v0;
}

uint64_t sub_1D7F05590()
{
  OUTLINED_FUNCTION_15_3();
  if (!v0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = v1;
  sub_1D7E71F64(0, &qword_1EDBB2BF0);
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_22_5(v3);
  *(v0 + 16) = v2;
  *(v0 + 24) = (2 * (v4 / 8)) | 1;
  return v0;
}

void *sub_1D7F0560C()
{
  OUTLINED_FUNCTION_15_3();
  if (!v0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = v1;
  sub_1D7E71F64(0, &qword_1EDBAE2E8);
  v3 = swift_allocObject();
  v4 = _swift_stdlib_malloc_size(v3);
  v3[2] = v2;
  v3[3] = 2 * v4 - 64;
  return v3;
}

uint64_t sub_1D7F057B4()
{
  OUTLINED_FUNCTION_15_3();
  if (!v0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1D7E73450(0, &qword_1ECA0D910, sub_1D7F05FE0, MEMORY[0x1E69E6F90]);
  v1 = swift_allocObject();
  OUTLINED_FUNCTION_22_5(v1);
  OUTLINED_FUNCTION_21_4(v2 / 24);
  return v0;
}

void *sub_1D7F0584C(void *result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
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
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v17 = *(*(a4 + 48) + ((v15 << 9) | (8 * v16)));
      *v11 = v17;
      if (v14 == v10)
      {
        v18 = v17;
        v13 = v15;
        goto LABEL_20;
      }

      ++v11;
      result = v17;
      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1D7F059A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a4 + 56;
  OUTLINED_FUNCTION_6_9();
  if (!v9)
  {
    v11 = 0;
LABEL_17:
    OUTLINED_FUNCTION_13_6(v11);
    return;
  }

  v10 = v8;
  if (!v8)
  {
    v11 = 0;
    goto LABEL_17;
  }

  if ((v8 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_5_6();
    v14 = (v13 - v5) >> 6;
    while (v12 < v10)
    {
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_21;
      }

      if (!v6)
      {
        while (1)
        {
          v16 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            break;
          }

          if (v16 >= v14)
          {
            goto LABEL_17;
          }

          v6 = *(v7 + 8 * v16);
          ++v11;
          if (v6)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        break;
      }

      v16 = v11;
LABEL_12:
      OUTLINED_FUNCTION_4_13();
      if (v17)
      {
        sub_1D8190DB4();
        v11 = v16;
        goto LABEL_17;
      }

      v4 += 16;
      sub_1D8190DB4();
      v12 = v15;
      v11 = v16;
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

void *sub_1D7F05AA4(void *result, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
    v9 = 0;
    a3 = 0;
LABEL_18:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_18;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (!v7)
      {
        while (1)
        {
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            break;
          }

          if (v11 >= ((63 - v6) >> 6))
          {
            v7 = 0;
            a3 = v8;
            goto LABEL_18;
          }

          v7 = *(v4 + 8 * v11);
          ++v9;
          if (v7)
          {
            v9 = v11;
            goto LABEL_13;
          }
        }

        __break(1u);
        break;
      }

LABEL_13:
      v12 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2++ = *(*(a4 + 48) + (v12 | (v9 << 6)));
      v8 = v10;
      if (v10 == a3)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}