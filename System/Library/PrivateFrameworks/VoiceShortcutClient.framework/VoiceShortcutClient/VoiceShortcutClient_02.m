void sub_1B1E16070()
{
  v1 = v0;
  v2 = *(v0 + 16);
  xpc_array_get_value(*v0, v2);
  v3 = *(v0 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7843F8, &qword_1B1F2B720);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B1F2A3B0;
  sub_1B1F1A760();
  v5 = sub_1B1E12AF0();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  *(inited + 56) = &type metadata for XPCKey;
  *(inited + 64) = sub_1B1E17708();
  OUTLINED_FUNCTION_20_0();
  v12 = swift_allocObject();
  *(inited + 32) = v12;
  *(v12 + 16) = v5;
  *(v12 + 24) = v7;
  *(v12 + 32) = v9;
  *(v12 + 40) = v11 & 1;
  sub_1B1E17200(inited);
  if (__OFADD__(v2, 1))
  {
    __break(1u);
  }

  else
  {
    *(v1 + 16) = v2 + 1;
    sub_1B1F1B0B0();
    sub_1B1F1A730();
    XPCDecoder.container<A>(keyedBy:)();

    swift_unknownObjectRelease();
  }
}

void sub_1B1E161F8(void *a1@<X8>)
{
  v2 = v1;
  v4 = *(v1 + 16);
  v5 = xpc_array_get_value(*v1, v4);
  v6 = *(v1 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7843F8, &qword_1B1F2B720);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B1F2A3B0;
  sub_1B1F1A760();
  v8 = sub_1B1E12AF0();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  *(inited + 56) = &type metadata for XPCKey;
  *(inited + 64) = sub_1B1E17708();
  v15 = swift_allocObject();
  *(inited + 32) = v15;
  *(v15 + 16) = v8;
  *(v15 + 24) = v10;
  *(v15 + 32) = v12;
  *(v15 + 40) = v14 & 1;
  sub_1B1E17200(inited);
  if (__OFADD__(v4, 1))
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = v4 + 1;
    sub_1B1F1B0B0();
    v16 = sub_1B1F1A730();
    *a1 = v5;
    a1[1] = v6;
    a1[2] = v16;
  }
}

void sub_1B1E16344()
{
  v1 = v0;
  v2 = *(v0 + 16);
  xpc_array_get_value(*v0, v2);
  v3 = *(v0 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7843F8, &qword_1B1F2B720);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B1F2A3B0;
  sub_1B1F1A760();
  v5 = sub_1B1E12AF0();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  *(inited + 56) = &type metadata for XPCKey;
  *(inited + 64) = sub_1B1E17708();
  OUTLINED_FUNCTION_20_0();
  v12 = swift_allocObject();
  *(inited + 32) = v12;
  *(v12 + 16) = v5;
  *(v12 + 24) = v7;
  *(v12 + 32) = v9;
  *(v12 + 40) = v11 & 1;
  sub_1B1E17200(inited);
  if (__OFADD__(v2, 1))
  {
    __break(1u);
  }

  else
  {
    *(v1 + 16) = v2 + 1;
    sub_1B1F1B0B0();
    sub_1B1F1A730();
    XPCDecoder.unkeyedContainer()();

    swift_unknownObjectRelease();
  }
}

void sub_1B1E164C4(void *a1@<X8>)
{
  a1[3] = &type metadata for XPCDecoder;
  a1[4] = sub_1B1E141EC();
  sub_1B1E161F8(a1);
}

uint64_t sub_1B1E166C4()
{
  result = sub_1B1F1B330();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1B1E16714()
{
  result = sub_1B1F1B340();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1B1E167BC()
{
  result = sub_1B1F1B370();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1B1E1680C()
{
  result = sub_1B1F1B350();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1B1E16934()
{
  result = sub_1B1F1B380();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1B1E16984(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  result = a3();
  if (v3)
  {
    return v5;
  }

  return result;
}

uint64_t sub_1B1E16A54(uint64_t result)
{
  if (!result)
  {
    v1 = sub_1B1F1AFE0();
    swift_allocError();
    v3 = v2;
    v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB783CD0, qword_1B1F2B6F0) + 48);
    *v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784410, &qword_1B1F2BFC0);
    sub_1B1F1A760();
    sub_1B1F1AFA0();
    MEMORY[0x1B273D1A0](0xD000000000000013, 0x80000001B1F384D0);
    MEMORY[0x1B273D1A0](0xD000000000000013, 0x80000001B1F38520);
    MEMORY[0x1B273D1A0](0xD000000000000022, 0x80000001B1F384F0);
    sub_1B1F1AFD0();
    (*(*(v1 - 8) + 104))(v3, *MEMORY[0x1E69E6AF8], v1);
    return swift_willThrow();
  }

  return result;
}

BOOL sub_1B1E16BD8(uint64_t a1)
{
  v2 = sub_1B1F1A510();
  swift_unknownObjectRelease();
  return v2 == a1;
}

uint64_t sub_1B1E16C1C(void *a1)
{
  string_ptr = xpc_string_get_string_ptr(a1);
  result = sub_1B1E16A54(string_ptr);
  if (!v1)
  {
    return sub_1B1F1A920();
  }

  return result;
}

int64_t sub_1B1E16CEC(void *a1)
{
  result = xpc_int64_get_value(a1);
  if (result < -128)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (result > 127)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

int64_t sub_1B1E16D2C(void *a1)
{
  result = xpc_int64_get_value(a1);
  if (result < -32768)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (result >= 0x8000)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

int64_t sub_1B1E16D6C(void *a1)
{
  result = xpc_int64_get_value(a1);
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B1E16DDC(void *a1)
{
  result = xpc_uint64_get_value(a1);
  if (result > 0xFF)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B1E16E10(void *a1)
{
  result = xpc_uint64_get_value(a1);
  if (result >> 16)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B1E16E44(void *a1)
{
  result = xpc_uint64_get_value(a1);
  if (HIDWORD(result))
  {
    __break(1u);
  }

  return result;
}

void sub_1B1E16E78()
{
  OUTLINED_FUNCTION_34();
  v1 = v0;
  v3 = v2;
  v26 = v4;
  v5 = sub_1B1F1AEB0();
  OUTLINED_FUNCTION_5_0();
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v25 - v11;
  OUTLINED_FUNCTION_5_0();
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_2_3();
  v20 = (v19 - v18);
  swift_unknownObjectRetain();
  sub_1B1E14D78(v1, v3, v1, v12);
  if (__swift_getEnumTagSinglePayload(v12, 1, v1) == 1)
  {
    (*(v7 + 8))(v12, v5);
    sub_1B1F1B0B0();
    v21 = MEMORY[0x1E69E7CC0];
    v22 = sub_1B1F1A730();
    v25[4] = &type metadata for XPCDecoder;
    v23 = sub_1B1E141EC();
    v25[1] = v3;
    v25[2] = v21;
    v25[5] = v23;
    v25[3] = v22;
    sub_1B1F1ABE0();
  }

  else
  {
    swift_unknownObjectRelease();
    v24 = *(v14 + 32);
    v24(v20, v12, v1);
    v24(v26, v20, v1);
  }

  OUTLINED_FUNCTION_35();
}

void sub_1B1E17200(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1B1E17BEC(v4 + v3);
  v5 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v5 + 24) >> 1) - *(v5 + 16) < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784448, &qword_1B1F2BFE0);
  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v5;
    return;
  }

  v6 = *(v5 + 16);
  v7 = __OFADD__(v6, v3);
  v8 = v6 + v3;
  if (!v7)
  {
    *(v5 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t *__swift_deallocate_boxed_opaque_existential_1(uint64_t *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    v2 = *result;
    v3 = *(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80));
    JUMPOUT(0x1B273F720);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for XPCCoder(_BYTE *result, int a2, int a3)
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

uint64_t sub_1B1E17470()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B1E174B8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7D && *(a1 + 8))
    {
      v2 = *a1 + 124;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x7C)
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

uint64_t sub_1B1E1750C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *result = a2 - 125;
    if (a3 >= 0x7D)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_1B1E175A8(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

void *sub_1B1E175E8(void *result, int a2, int a3)
{
  if (a2 < 0)
  {
    result[1] = 0;
    result[2] = 0;
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

      return OUTLINED_FUNCTION_30(result, a2);
    }

    *(result + 24) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_30(result, a2);
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_19VoiceShortcutClient8XPCValue33_AF7300B6C9E30E4373285D89F83589AALLO(uint64_t a1)
{
  if ((*(a1 + 16) & 8) != 0)
  {
    return (*a1 + 8);
  }

  else
  {
    return *(a1 + 16) & 0xF;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1B1E1765C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xF8 && *(a1 + 17))
    {
      v2 = *a1 + 247;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 8)
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

uint64_t sub_1B1E1769C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF7)
  {
    *(result + 16) = 0;
    *result = a2 - 248;
    *(result + 8) = 0;
    if (a3 >= 0xF8)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF8)
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

uint64_t sub_1B1E176E0(uint64_t result, unsigned int a2)
{
  if (a2 >= 8)
  {
    *result = a2 - 8;
    *(result + 8) = 0;
    LOBYTE(a2) = 8;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_1B1E17708()
{
  result = qword_1EB784408;
  if (!qword_1EB784408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784408);
  }

  return result;
}

unint64_t sub_1B1E1775C()
{
  result = qword_1EB784418;
  if (!qword_1EB784418)
  {
    type metadata accessor for XPCEncoder();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784418);
  }

  return result;
}

uint64_t sub_1B1E177B0(uint64_t a1, uint64_t a2, char a3)
{
  switch(a3)
  {
    case 0:
    case 1:
    case 3:

      break;
    case 7:
      result = swift_unknownObjectRelease();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B1E177F4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_11_2(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_1B1E17850(uint64_t a1, uint64_t a2, char a3)
{
  switch(a3)
  {
    case 0:
    case 1:
    case 3:
      result = sub_1B1F1A760();
      break;
    case 7:
      result = swift_unknownObjectRetain();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B1E17894(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
  }

  return result;
}

unint64_t sub_1B1E178AC()
{
  result = qword_1EB784430;
  if (!qword_1EB784430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784430);
  }

  return result;
}

uint64_t sub_1B1E17900(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
  }

  return result;
}

unint64_t sub_1B1E17918()
{
  result = qword_1EB784438;
  if (!qword_1EB784438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784438);
  }

  return result;
}

uint64_t sub_1B1E17984(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784440, &qword_1B1F2BFD8);
  result = sub_1B1F1B120();
  v3 = 0;
  v32 = result;
  v33 = a1;
  v6 = *(a1 + 64);
  v5 = a1 + 64;
  v4 = v6;
  v7 = 1 << *(v5 - 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & v4;
  v10 = (v7 + 63) >> 6;
  v31 = result + 64;
  if ((v8 & v4) != 0)
  {
    while (1)
    {
      v11 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_10:
      v14 = v11 | (v3 << 6);
      v15 = (*(v33 + 48) + 16 * v14);
      v16 = v15[1];
      v34 = *v15;
      v17 = *(*(v33 + 56) + 8 * v14);
      switch(v17 >> 62)
      {
        case 1uLL:
          sub_1B1F1A760();

          v19 = sub_1B1E10AFC();
          v20 = v16;

          v21 = 0;
          v22 = 1;
          break;
        case 2uLL:
          v19 = *((v17 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
          v21 = *((v17 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
          v22 = *((v17 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
          sub_1B1F1A760();
          v20 = v16;
          sub_1B1E17850(v19, v21, v22);
          break;
        case 3uLL:
          sub_1B1F1A760();

          v19 = sub_1B1E10CB0(v23);
          v21 = v24;
          v22 = v25;
          v20 = v16;

          break;
        default:

          v18 = sub_1B1F1A760();
          v19 = sub_1B1E107BC(v18);
          v20 = v16;

          v21 = 0;
          v22 = 0;
          break;
      }

      result = v32;
      *(v31 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v26 = (v32[6] + 16 * v14);
      *v26 = v34;
      v26[1] = v20;
      v27 = v32[7] + 24 * v14;
      *v27 = v19;
      *(v27 + 8) = v21;
      *(v27 + 16) = v22;
      v28 = v32[2];
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
        break;
      }

      v32[2] = v30;
      if (!v9)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v12 = v3;
    while (1)
    {
      v3 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v3 >= v10)
      {
        return result;
      }

      v13 = *(v5 + 8 * v3);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v9 = (v13 - 1) & v13;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1B1E17BEC(uint64_t a1)
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

    sub_1B1E2AFB8();
    *v1 = v6;
  }
}

uint64_t sub_1B1E17C54()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B1E17C90(uint64_t *a1, int a2)
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

void *sub_1B1E17CD0(void *result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
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

      return OUTLINED_FUNCTION_30(result, a2);
    }

    *(result + 16) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_30(result, a2);
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

uint64_t sub_1B1E17D24(uint64_t a1, int a2)
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

uint64_t sub_1B1E17D64(uint64_t result, int a2, int a3)
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

unint64_t sub_1B1E17DBC()
{
  result = qword_1EB7844E0;
  if (!qword_1EB7844E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7844E0);
  }

  return result;
}

unint64_t sub_1B1E17E14()
{
  result = qword_1EB7844E8;
  if (!qword_1EB7844E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7844E8);
  }

  return result;
}

uint64_t sub_1B1E17E68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t *a6)
{
  v16 = &type metadata for XPCKey;
  v17 = sub_1B1E17708();
  v12 = swift_allocObject();
  *&v15 = v12;
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  *(v12 + 32) = a4;
  *(v12 + 40) = a5 & 1;
  v13 = *a6;
  *(v13 + 16) = a1 + 1;
  return sub_1B1E17F10(&v15, v13 + 40 * a1 + 32);
}

uint64_t sub_1B1E17F10(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1B1E17F28(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_1B1E17F10(&v12, v10 + 40 * a1 + 32);
}

uint64_t OUTLINED_FUNCTION_8_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(a2 + 24);
  return v2;
}

uint64_t OUTLINED_FUNCTION_29(double a1)
{
  v2 = *v1;
  v3 = *(*v1 + 16);
  v4 = *(*v1 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = 0;
  v5 = *(v2 + 32);
  *(v2 + 32) = 6;
  return sub_1B1E177B0(v3, v4, v5);
}

uint64_t OUTLINED_FUNCTION_36()
{

  return sub_1B1F1AFD0();
}

uint64_t OUTLINED_FUNCTION_37(uint64_t a1)
{
  *v1 = a1;

  return sub_1B1F1A760();
}

void OUTLINED_FUNCTION_38()
{
  v3 = *v0;
  v2 = v0[1];

  JUMPOUT(0x1B273FB80);
}

uint64_t OUTLINED_FUNCTION_39(uint64_t a1)
{
  *(v1 + 32) = a1;
  sub_1B1E17900(v2);
  sub_1B1E17900(v2);

  return sub_1B1F1A760();
}

uint64_t VCVoiceShortcutClient.scheduleTrigger(_:with:)()
{
  OUTLINED_FUNCTION_1();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7844F0, &qword_1B1F2C488);
  v1[6] = v5;
  OUTLINED_FUNCTION_8(v5);
  v7 = *(v6 + 64) + 15;
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v8 = type metadata accessor for VoiceShortcutClientRequest();
  v1[9] = v8;
  OUTLINED_FUNCTION_8(v8);
  v10 = *(v9 + 64);
  v1[10] = OUTLINED_FUNCTION_9();
  v11 = sub_1B1F1A640();
  v1[11] = v11;
  OUTLINED_FUNCTION_6_0(v11);
  v1[12] = v12;
  v14 = *(v13 + 64);
  v1[13] = OUTLINED_FUNCTION_9();
  v15 = type metadata accessor for TriggerType(0);
  OUTLINED_FUNCTION_8(v15);
  v17 = *(v16 + 64);
  v1[14] = OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_5_1();

  return MEMORY[0x1EEE6DFA0](v18, v19, v20);
}

uint64_t sub_1B1E18328()
{
  v1 = *(v0 + 112);
  v3 = *(v0 + 72);
  v2 = *(v0 + 80);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = v4[3];
  v7 = v4[4];
  __swift_project_boxed_opaque_existential_0(v4, v6);
  (*(v7 + 32))(v6, v7);
  *(v0 + 136) = 1;
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7844F8, &qword_1B1F2DBD0) + 48);
  sub_1B1E19714(v1, v2, type metadata accessor for TriggerType);
  sub_1B1E76714(v2 + v8);
  type metadata accessor for VoiceShortcutClientRequest.Automations();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v9 = swift_task_alloc();
  *(v0 + 120) = v9;
  *v9 = v0;
  v9[1] = sub_1B1E18494;
  v10 = *(v0 + 104);
  v11 = *(v0 + 80);
  v12 = *(v0 + 40);

  return sub_1B1E1978C(v10, (v0 + 136), v11);
}

uint64_t sub_1B1E18494()
{
  OUTLINED_FUNCTION_1();
  v2 = *v1;
  OUTLINED_FUNCTION_4();
  *v3 = v2;
  v5 = *(v4 + 120);
  v6 = *v1;
  OUTLINED_FUNCTION_4();
  *v7 = v6;
  *(v2 + 128) = v0;

  OUTLINED_FUNCTION_0_7(*(v2 + 80));
  OUTLINED_FUNCTION_5_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1B1E185A8()
{
  v1 = v0[16];
  v2 = v0[13];
  v3 = v0[8];
  v4 = v0[6];
  sub_1B1E19510(&qword_1EB784500, &qword_1EB7844F0, &qword_1B1F2C488);
  sub_1B1F1A630();
  if (v1)
  {
    v5 = v0[14];
    (*(v0[12] + 8))(v0[13], v0[11]);
LABEL_5:
    sub_1B1E1891C(v5, type metadata accessor for TriggerType);
    v18 = v0[13];
    v17 = v0[14];
    v19 = v0[10];
    v21 = v0[7];
    v20 = v0[8];

    OUTLINED_FUNCTION_2_0();
    goto LABEL_6;
  }

  v6 = v0[6];
  sub_1B1E18974(v0[8], v0[7]);
  OUTLINED_FUNCTION_12_1();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = v0[13];
    v5 = v0[14];
    v8 = v0[11];
    v9 = v0[12];
    v10 = v0[7];
    v11 = v0[8];
    v35 = v10[1];
    v36 = *v10;
    v34 = v10[2];
    v12 = *(v10 + 6);
    sub_1B1E04B74();
    v13 = OUTLINED_FUNCTION_13();
    *v14 = v36;
    *(v14 + 16) = v35;
    *(v14 + 32) = v34;
    *(v14 + 48) = v12;
    sub_1B1E04BC8();
    v15 = OUTLINED_FUNCTION_13();
    *v16 = v13;
    OUTLINED_FUNCTION_10_1(v15, v16);
    sub_1B1E0BDB8(v11, &qword_1EB7844F0, &qword_1B1F2C488);
    (*(v9 + 8))(v7, v8);
    goto LABEL_5;
  }

  v24 = v0[13];
  v25 = v0[14];
  v26 = v0[11];
  v27 = v0[12];
  v28 = v0[10];
  v30 = v0[7];
  v29 = v0[8];
  v31 = v0[2];
  v31[3] = type metadata accessor for ScheduledTrigger(0);
  v31[4] = sub_1B1E189E4(&qword_1EB784508);
  v31[5] = sub_1B1E189E4(&qword_1EB784510);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v31);
  sub_1B1E18A28(v30, boxed_opaque_existential_1);
  sub_1B1E0BDB8(v29, &qword_1EB7844F0, &qword_1B1F2C488);
  (*(v27 + 8))(v24, v26);
  OUTLINED_FUNCTION_1_6();
  sub_1B1E1891C(v25, v33);

  OUTLINED_FUNCTION_2_0();
LABEL_6:

  return v22();
}

uint64_t sub_1B1E18878()
{
  v1 = v0[14];
  OUTLINED_FUNCTION_1_6();
  sub_1B1E1891C(v2, v3);
  v4 = v0[16];
  v6 = v0[13];
  v5 = v0[14];
  v7 = v0[10];
  v9 = v0[7];
  v8 = v0[8];

  OUTLINED_FUNCTION_2_0();

  return v10();
}

uint64_t sub_1B1E1891C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_10(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1B1E18974(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7844F0, &qword_1B1F2C488);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B1E189E4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ScheduledTrigger(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B1E18A28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScheduledTrigger(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t VCVoiceShortcutClient.deleteScheduledTrigger(with:)()
{
  OUTLINED_FUNCTION_1();
  v1[9] = v2;
  v1[10] = v0;
  v3 = type metadata accessor for VoiceShortcutClientRequest();
  v1[11] = v3;
  OUTLINED_FUNCTION_8(v3);
  v5 = *(v4 + 64);
  v1[12] = OUTLINED_FUNCTION_9();
  v6 = sub_1B1F1A640();
  v1[13] = v6;
  OUTLINED_FUNCTION_6_0(v6);
  v1[14] = v7;
  v9 = *(v8 + 64);
  v1[15] = OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_5_1();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1B1E18B58()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 72);
  *(v0 + 144) = 1;
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_0(v3, v4);
  *v1 = (*(v5 + 24))(v4, v5);
  v1[1] = v6;
  type metadata accessor for VoiceShortcutClientRequest.Automations();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v7 = swift_task_alloc();
  *(v0 + 128) = v7;
  *v7 = v0;
  v7[1] = sub_1B1E18C74;
  v8 = *(v0 + 120);
  v9 = *(v0 + 96);
  v10 = *(v0 + 80);

  return sub_1B1E1978C(v8, (v0 + 144), v9);
}

uint64_t sub_1B1E18C74()
{
  OUTLINED_FUNCTION_1();
  v2 = *v1;
  OUTLINED_FUNCTION_4();
  *v3 = v2;
  v5 = *(v4 + 128);
  v6 = *v1;
  OUTLINED_FUNCTION_4();
  *v7 = v6;
  *(v2 + 136) = v0;

  OUTLINED_FUNCTION_0_7(*(v2 + 96));
  OUTLINED_FUNCTION_5_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1B1E18D88()
{
  v1 = v0[17];
  v2 = v0[15];
  sub_1B1E18F74();
  sub_1B1F1A630();
  if (v1)
  {
    (*(v0[14] + 8))(v0[15], v0[13]);
LABEL_5:
    v15 = v0[15];
    v16 = v0[12];

    OUTLINED_FUNCTION_2_0();
    goto LABEL_6;
  }

  v3 = v0[4];
  v4 = v0[14];
  if (v3)
  {
    v5 = v0[2];
    v6 = v0[3];
    v7 = v0[5];
    v8 = v0[6];
    v20 = v0[13];
    v21 = v0[15];
    v9 = v0[7];
    v10 = v0[8];
    sub_1B1E04B74();
    v11 = OUTLINED_FUNCTION_13();
    *v12 = v5;
    v12[1] = v6;
    v12[2] = v3;
    v12[3] = v7;
    v12[4] = v8;
    v12[5] = v9;
    v12[6] = v10;
    sub_1B1E04BC8();
    v13 = OUTLINED_FUNCTION_13();
    *v14 = v11;
    OUTLINED_FUNCTION_10_1(v13, v14);
    (*(v4 + 8))(v21, v20);
    goto LABEL_5;
  }

  v19 = v0[12];
  (*(v4 + 8))(v0[15], v0[13]);

  OUTLINED_FUNCTION_2_0();
LABEL_6:

  return v17();
}

uint64_t sub_1B1E18F0C()
{
  OUTLINED_FUNCTION_1();
  v1 = v0[17];
  v2 = v0[15];
  v3 = v0[12];

  OUTLINED_FUNCTION_2_0();

  return v4();
}

unint64_t sub_1B1E18F74()
{
  result = qword_1EB784518;
  if (!qword_1EB784518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784518);
  }

  return result;
}

uint64_t VCVoiceShortcutClient.fetchAllScheduledTriggers()()
{
  OUTLINED_FUNCTION_1();
  v1[18] = v0;
  v2 = type metadata accessor for VoiceShortcutClientRequest();
  v1[19] = v2;
  OUTLINED_FUNCTION_8(v2);
  v4 = *(v3 + 64);
  v1[20] = OUTLINED_FUNCTION_9();
  v5 = sub_1B1F1A640();
  v1[21] = v5;
  OUTLINED_FUNCTION_6_0(v5);
  v1[22] = v6;
  v8 = *(v7 + 64);
  v1[23] = OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_5_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1B1E19094()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 160);
  *(v0 + 73) = 1;
  type metadata accessor for VoiceShortcutClientRequest.Automations();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_12_1();
  swift_storeEnumTagMultiPayload();
  v3 = swift_task_alloc();
  *(v0 + 192) = v3;
  *v3 = v0;
  v3[1] = sub_1B1E19170;
  v4 = *(v0 + 184);
  v5 = *(v0 + 160);
  v6 = *(v0 + 144);

  return sub_1B1E1978C(v4, (v0 + 73), v5);
}

uint64_t sub_1B1E19170()
{
  OUTLINED_FUNCTION_1();
  v2 = *v1;
  OUTLINED_FUNCTION_4();
  *v3 = v2;
  v5 = *(v4 + 192);
  v6 = *v1;
  OUTLINED_FUNCTION_4();
  *v7 = v6;
  *(v2 + 200) = v0;

  OUTLINED_FUNCTION_0_7(*(v2 + 160));
  OUTLINED_FUNCTION_5_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1B1E19284()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 184);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784520, &unk_1B1F2C4A0);
  sub_1B1E19510(&qword_1EB784528, &qword_1EB784520, &unk_1B1F2C4A0);
  sub_1B1F1A630();
  if (v1)
  {
    (*(*(v0 + 176) + 8))(*(v0 + 184), *(v0 + 168));
LABEL_5:
    v17 = *(v0 + 184);
    v18 = *(v0 + 160);

    OUTLINED_FUNCTION_2_0();

    return v19();
  }

  *(v0 + 112) = *(v0 + 48);
  *(v0 + 121) = *(v0 + 57);
  v3 = *(v0 + 32);
  *(v0 + 80) = *(v0 + 16);
  *(v0 + 96) = v3;
  v4 = *(v0 + 80);
  v6 = *(v0 + 176);
  v5 = *(v0 + 184);
  v7 = *(v0 + 168);
  if (*(v0 + 136))
  {
    v9 = *(v0 + 120);
    v8 = *(v0 + 128);
    v27 = *(v0 + 88);
    v28 = *(v0 + 104);
    sub_1B1E04B74();
    v10 = OUTLINED_FUNCTION_13();
    *v11 = v4;
    *(v11 + 8) = v27;
    *(v11 + 24) = v28;
    *(v11 + 40) = v9;
    *(v11 + 48) = v8;
    sub_1B1E04BC8();
    v12 = OUTLINED_FUNCTION_13();
    *v13 = v10;
    OUTLINED_FUNCTION_10_1(v12, v13);
    v14 = *(v6 + 8);
    v15 = OUTLINED_FUNCTION_12_1();
    v16(v15);
    goto LABEL_5;
  }

  v21 = *(v0 + 160);
  v22 = sub_1B1E19564(*(v0 + 80));
  sub_1B1E0BDB8(v0 + 80, &qword_1EB784520, &unk_1B1F2C4A0);
  v23 = *(v6 + 8);
  v24 = OUTLINED_FUNCTION_12_1();
  v25(v24);

  v26 = *(v0 + 8);

  return v26(v22);
}

uint64_t sub_1B1E194A8()
{
  OUTLINED_FUNCTION_1();
  v1 = v0[25];
  v2 = v0[23];
  v3 = v0[20];

  OUTLINED_FUNCTION_2_0();

  return v4();
}

uint64_t sub_1B1E19510(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B1E19564(uint64_t a1)
{
  v2 = type metadata accessor for ScheduledTrigger(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v16 = MEMORY[0x1E69E7CC0];
    sub_1B1E3B284(0, v7, 0);
    v8 = v16;
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    do
    {
      sub_1B1E19714(v9, v6, type metadata accessor for ScheduledTrigger);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784530, &qword_1B1F2F190);
      swift_dynamicCast();
      v16 = v8;
      v12 = *(v8 + 16);
      v11 = *(v8 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_1B1E3B284(v11 > 1, v12 + 1, 1);
        v8 = v16;
      }

      *(v8 + 16) = v12 + 1;
      sub_1B1E19774(v15, (v8 + 48 * v12 + 32));
      v9 += v10;
      --v7;
    }

    while (v7);
  }

  return v8;
}

uint64_t sub_1B1E19714(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_10(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

_OWORD *sub_1B1E19774(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

uint64_t sub_1B1E1978C(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  *(v3 + 24) = a3;
  *(v3 + 32) = ObjectType;
  *(v3 + 16) = a1;
  *(v3 + 64) = *a2;

  return MEMORY[0x1EEE6DFA0](sub_1B1E19818, 0, 0);
}

uint64_t sub_1B1E19818()
{
  v1 = *(v0 + 64);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  v3 = *(v0 + 24);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  v4 = *(MEMORY[0x1E69E8920] + 4);
  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  v6 = sub_1B1F1A640();
  *v5 = v0;
  v5[1] = sub_1B1E1991C;
  v7 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v7, 0, 0, 0xD000000000000027, 0x80000001B1F385A0, sub_1B1E1A380, v2, v6);
}

uint64_t sub_1B1E1991C()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  v3[7] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B1E19A58, 0, 0);
  }

  else
  {
    v4 = v3[5];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_1B1E19A58()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

uint64_t VCVoiceShortcutClient.Service.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1B1F1B160();

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

unint64_t VCVoiceShortcutClient.Service.rawValue.getter()
{
  if (*v0)
  {
    result = 0xD00000000000001ALL;
  }

  else
  {
    result = 0xD000000000000021;
  }

  *v0;
  return result;
}

unint64_t sub_1B1E19B6C()
{
  result = qword_1EB784538;
  if (!qword_1EB784538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784538);
  }

  return result;
}

uint64_t sub_1B1E19BD8@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return VCVoiceShortcutClient.Service.init(rawValue:)(a1);
}

unint64_t sub_1B1E19BE4@<X0>(unint64_t *a1@<X8>)
{
  result = VCVoiceShortcutClient.Service.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_BYTE *_s7ServiceOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t get_enum_tag_for_layout_string_So21VCVoiceShortcutClientC05VoicebC0E0dbC5ErrorO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_1B1E19D04(uint64_t a1, unsigned int a2)
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
      if (v3 <= 2)
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

uint64_t sub_1B1E19D44(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1B1E19D88(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_1B1E19DB0(_BYTE *a1)
{
  v3 = sub_1B1F1A5E0();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  *a1;
  sub_1B1F1A610();
  sub_1B1F1A5D0();
  result = sub_1B1F1A5C0();
  if (v1)
  {
    return v6;
  }

  return result;
}

uint64_t sub_1B1E19EA0(void *a1, char a2)
{
  if (!a2)
  {
    sub_1B1F1AFA0();

    v6 = 0xD000000000000025;
    v3 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784550, &qword_1B1F2C6E0);
    v4 = sub_1B1F1A8D0();
    MEMORY[0x1B273D1A0](v4);

    return v6;
  }

  if (a2 == 1)
  {
    v6 = 0;
    sub_1B1F1AFA0();
    MEMORY[0x1B273D1A0](0xD000000000000020, 0x80000001B1F38540);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784548, &unk_1B1F308A0);
    sub_1B1F1B0A0();
    return v6;
  }

  return 0x206E776F6E6B6E55;
}

uint64_t sub_1B1E1A00C(uint64_t a1)
{
  v2 = sub_1B1E1A0AC();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1B1E1A048(uint64_t a1)
{
  v2 = sub_1B1E1A0AC();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

unint64_t sub_1B1E1A0AC()
{
  result = qword_1EB784540;
  if (!qword_1EB784540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784540);
  }

  return result;
}

uint64_t sub_1B1E1A100(uint64_t a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784558, &qword_1B1F2C6F0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v16 - v7;
  LOBYTE(v16[0]) = a2 & 1;
  if (sub_1B1E19DB0(v16))
  {
    (*(v5 + 16))(v8, a1, v4);
    v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v12 = swift_allocObject();
    (*(v5 + 32))(v12 + v11, v8, v4);
    type metadata accessor for VoiceShortcutClientRequest();
    sub_1B1E1A794(&qword_1EB784560, type metadata accessor for VoiceShortcutClientRequest);
    sub_1B1F1A5F0();

    sub_1B1F1A600();
  }

  else
  {
    sub_1B1E04BC8();
    v14 = swift_allocError();
    *v15 = 0;
    *(v15 + 8) = 0;
    swift_willThrow();
    sub_1B1E04BC8();
    v9 = swift_allocError();
    *v10 = v14;
    *(v10 + 8) = 0;
    v16[0] = v9;
    return sub_1B1F1AA30();
  }
}

uint64_t sub_1B1E1A380(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  return sub_1B1E1A100(a1, *(v1 + 16));
}

uint64_t sub_1B1E1A38C(uint64_t a1, uint64_t a2)
{
  v23[0] = a2;
  v3 = sub_1B1F1A620();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B1F1A640();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v23 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784568, &unk_1B1F2C6F8);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v23 - v18;
  sub_1B1E1A724(a1, v23 - v18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v4 + 32))(v7, v19, v3);
    sub_1B1E1A794(&qword_1EB784570, MEMORY[0x1E69E84C0]);
    v20 = swift_allocError();
    (*(v4 + 16))(v21, v7, v3);
    v23[1] = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784558, &qword_1B1F2C6F0);
    sub_1B1F1AA30();
    return (*(v4 + 8))(v7, v3);
  }

  else
  {
    (*(v9 + 32))(v15, v19, v8);
    (*(v9 + 16))(v13, v15, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784558, &qword_1B1F2C6F0);
    sub_1B1F1AA40();
    return (*(v9 + 8))(v15, v8);
  }
}

uint64_t sub_1B1E1A6A8(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784558, &qword_1B1F2C6F0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1B1E1A38C(a1, v4);
}

uint64_t sub_1B1E1A724(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784568, &unk_1B1F2C6F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B1E1A794(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B1E1A7E0(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a8;
  v45 = a1;
  v46 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v47 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  v16 = *(v49 + 64);
  v17 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v19 = &v34 - v18;
  v20 = *(*(a4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v43 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_getAssociatedTypeWitness();
  v37 = *(v22 - 8);
  v38 = v22;
  v23 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v34 - v24;
  v26 = sub_1B1F1AC90();
  if (!v26)
  {
    return sub_1B1F1A9D0();
  }

  v48 = v26;
  v52 = sub_1B1F1B080();
  v39 = sub_1B1F1B090();
  sub_1B1F1B040();
  result = sub_1B1F1AC80();
  if ((v48 & 0x8000000000000000) == 0)
  {
    v34 = v11;
    v35 = a5;
    v28 = 0;
    v40 = (v49 + 16);
    v41 = (v49 + 8);
    v42 = v8;
    while (!__OFADD__(v28, 1))
    {
      v49 = v28 + 1;
      v29 = sub_1B1F1ACE0();
      v30 = v19;
      v31 = v19;
      v32 = AssociatedTypeWitness;
      (*v40)(v30);
      v29(v51, 0);
      v33 = v50;
      v45(v31, v47);
      if (v33)
      {
        (*v41)(v31, v32);
        (*(v37 + 8))(v25, v38);

        return (*(v34 + 32))(v36, v47, v35);
      }

      v50 = 0;
      (*v41)(v31, v32);
      sub_1B1F1B070();
      result = sub_1B1F1ACA0();
      ++v28;
      v19 = v31;
      if (v49 == v48)
      {
        (*(v37 + 8))(v25, v38);
        return v52;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t Array<A>.protobuf(useCase:)(unsigned __int8 *a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_6(a1, a2);
  sub_1B1F1A9F0();
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784548, &unk_1B1F308A0);
  OUTLINED_FUNCTION_0_8();
  swift_getWitnessTable();
  v2 = OUTLINED_FUNCTION_1_7();
  return OUTLINED_FUNCTION_3_6(v2, v3, v4, v5, v6, v7, v8, &v10);
}

uint64_t sub_1B1E1ACCC(uint64_t a1, char a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = a2;
  result = (*(a4 + 16))(&v8, a3, a4);
  if (v5)
  {
    *a5 = v5;
  }

  return result;
}

uint64_t sub_1B1E1AD4C@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = *(a3 - 8);
  v8 = *(a2 + 16);
  result = Array<A>.protobuf(useCase:)(a1, *v4);
  if (!v5)
  {
    *a4 = result;
  }

  return result;
}

uint64_t Array<A>.init(protobuf:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13[1] = a1;
  v4 = *(a3 + 8);
  swift_getAssociatedTypeWitness();
  v5 = sub_1B1F1A9F0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784548, &unk_1B1F308A0);
  OUTLINED_FUNCTION_0_8();
  swift_getWitnessTable();
  v7 = OUTLINED_FUNCTION_1_7();
  v11 = sub_1B1E1A7E0(v7, v8, v5, a2, v6, v9, v10, v13);

  return v11;
}

uint64_t sub_1B1E1AE80(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v9 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = v16 - v12;
  (*(v14 + 16))(v16 - v12, a1);
  result = (*(a3 + 16))(v13, a2, a3);
  if (v4)
  {
    *a4 = v4;
  }

  return result;
}

uint64_t sub_1B1E1AFC8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = Array<A>.init(protobuf:)(*a1, *(a2 + 16), *(a3 - 8));
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t Set<>.protobuf(useCase:)(unsigned __int8 *a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_6(a1, a2);
  sub_1B1F1AC60();
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784548, &unk_1B1F308A0);
  swift_getWitnessTable();
  v2 = OUTLINED_FUNCTION_1_7();
  return OUTLINED_FUNCTION_3_6(v2, v3, v4, v5, v6, v7, v8, &v10);
}

uint64_t sub_1B1E1B0E8(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v9 = a2;
  result = (*(a5 + 16))(&v9, a3, a5);
  if (v6)
  {
    *a6 = v6;
  }

  return result;
}

uint64_t sub_1B1E1B16C@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = *(a3 - 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  result = Set<>.protobuf(useCase:)(a1, *v4);
  if (!v5)
  {
    *a4 = result;
  }

  return result;
}

uint64_t Set<>.init(protobuf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = a1;
  v6 = *(a4 + 8);
  swift_getAssociatedTypeWitness();
  v7 = sub_1B1F1A9F0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784548, &unk_1B1F308A0);
  OUTLINED_FUNCTION_0_8();
  swift_getWitnessTable();
  v9 = OUTLINED_FUNCTION_1_7();
  v13 = sub_1B1E1A7E0(v9, v10, v7, a2, v8, v11, v12, &v15);

  if (!v4)
  {
    v16 = v13;
    sub_1B1F1A9F0();
    swift_getWitnessTable();
    return sub_1B1F1AC70();
  }

  return result;
}

uint64_t sub_1B1E1B2F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = *(a4 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = v17 - v13;
  (*(v15 + 16))(v17 - v13, a1);
  result = (*(a4 + 16))(v14, a2, a4);
  if (v5)
  {
    *a5 = v5;
  }

  return result;
}

uint64_t sub_1B1E1B440@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = Set<>.init(protobuf:)(*a1, *(a2 + 16), *(a2 + 24), *(a3 - 8));
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t String.init(protobuf:)(uint64_t a1)
{
  v2 = sub_1B1F1A390();
  v3 = sub_1B1F1A3A0();
  (*(*(v3 - 8) + 8))(a1, v3);
  return v2;
}

uint64_t sub_1B1E1B540@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = String.init(protobuf:)(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1B1E1B570()
{
  v1 = *v0;
  v2 = v0[1];
  return String.protobuf(useCase:)();
}

uint64_t Dictionary<>.protobuf(useCase:)(char *a1)
{
  v2 = *a1;
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1_7();
  return sub_1B1F1A7B0();
}

uint64_t sub_1B1E1B628()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v0 + 32);
  return (*(v2 + 16))(&v4, v1);
}

uint64_t sub_1B1E1B670@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = *(a3 - 8);
  v8 = *v4;
  v9 = *(a2 + 24);
  result = Dictionary<>.protobuf(useCase:)(a1);
  if (!v5)
  {
    *a4 = result;
  }

  return result;
}

uint64_t Dictionary<>.init(protobuf:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 8);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1_7();
  v4 = sub_1B1F1A7B0();

  return v4;
}

uint64_t sub_1B1E1B758(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return (*(a3 + 16))(v10, a2, a3);
}

uint64_t sub_1B1E1B884(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*a3 + 8);
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B1E1B8D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*a3 + 8);
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B1E1B92C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = Dictionary<>.init(protobuf:)(*a1, *(a2 + 24), *(a3 - 8));
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_1B1E1B964(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*a3 + 8);
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void *sub_1B1E1B9B8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784598, &unk_1B1F2C8D8);
  result = sub_1B1F1A730();
  off_1EB7834E0 = result;
  return result;
}

uint64_t sub_1B1E1BA08()
{
  result = sub_1B1F1A730();
  qword_1EB783378 = result;
  return result;
}

uint64_t sub_1B1E1BA48()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7845C0, &unk_1B1F2C900);
  result = swift_allocObject();
  *(result + 16) = 0;
  qword_1ED84EBA0 = result;
  return result;
}

uint64_t sub_1B1E1BA88()
{
  v0 = sub_1B1F1AD60();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1B1F1AD50();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v7 = sub_1B1F1A6B0();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  sub_1B1E1D940();
  sub_1B1F1A690();
  v10[1] = MEMORY[0x1E69E7CC0];
  sub_1B1E1D984();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7845B0, qword_1B1F34ED0);
  sub_1B1E1D9DC();
  sub_1B1F1AF00();
  (*(v1 + 104))(v4, *MEMORY[0x1E69E8090], v0);
  result = sub_1B1F1AD80();
  qword_1EB7834F8 = result;
  return result;
}

uint64_t sub_1B1E1BC90()
{
  v0 = sub_1B1F1A500();
  __swift_allocate_value_buffer(v0, qword_1EB7832D0);
  __swift_project_value_buffer(v0, qword_1EB7832D0);
  return sub_1B1F1A4F0();
}

void static XPCEventStream.activate()(uint64_t a1, uint64_t a2)
{
  if (qword_1EB7832C0 != -1)
  {
    OUTLINED_FUNCTION_1_8();
  }

  v4 = sub_1B1F1A500();
  __swift_project_value_buffer(v4, qword_1EB7832D0);
  v5 = sub_1B1F1A4E0();
  v6 = sub_1B1F1AD30();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136315138;
    v9 = (*(a2 + 24))(a1, a2);
    v11 = sub_1B1DF61DC(v9, v10, &v18);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_1B1DE3000, v5, v6, "Attempting to activate stream: %s.", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_5();
  }

  if (qword_1ED84EB90 != -1)
  {
    OUTLINED_FUNCTION_0_9();
  }

  v12 = qword_1ED84EBA0;
  os_unfair_lock_assert_not_owner((qword_1ED84EBA0 + 16));
  v14 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2_2();
  *(v15 - 16) = sub_1B1E1C39C;
  *(v15 - 8) = v16;
  os_unfair_lock_lock(v12 + 4);
  sub_1B1DE7A64(v17);
  os_unfair_lock_unlock(v12 + 4);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void sub_1B1E1BF30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1EB783368 != -1)
  {
    swift_once();
  }

  v6 = *(a3 + 24);
  v7 = v6(a2, a3);
  v9 = v8;
  swift_beginAccess();
  LODWORD(v7) = sub_1B1E0CC80(v7, v9, qword_1EB783378);
  swift_endAccess();

  if (v7 == 2)
  {
    v6(a2, a3);
    v29 = v6;
    if (qword_1EB7834E8 != -1)
    {
      swift_once();
    }

    v10 = qword_1EB7834F8;
    v11 = swift_allocObject();
    v11[2] = a2;
    v11[3] = a3;
    v11[4] = a1;
    aBlock[4] = sub_1B1E1D918;
    aBlock[5] = v11;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B1E6EBE0;
    aBlock[3] = &block_descriptor_2;
    v12 = _Block_copy(aBlock);

    v13 = sub_1B1F1A8E0();

    xpc_set_event_stream_handler((v13 + 32), v10, v12);

    _Block_release(v12);
    v14 = v29(a2, a3);
    v16 = v15;
    swift_beginAccess();
    swift_isUniquelyReferenced_nonNull_native();
    v31 = qword_1EB783378;
    sub_1B1E0DA24(1, v14, v16);
    qword_1EB783378 = v31;

    swift_endAccess();
    if (qword_1EB7832C0 != -1)
    {
      swift_once();
    }

    v17 = sub_1B1F1A500();
    __swift_project_value_buffer(v17, qword_1EB7832D0);
    v18 = sub_1B1F1A4E0();
    v19 = sub_1B1F1AD30();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      aBlock[0] = v21;
      *v20 = 136315138;
      v22 = v29(a2, a3);
      v24 = sub_1B1DF61DC(v22, v23, aBlock);

      *(v20 + 4) = v24;
      _os_log_impl(&dword_1B1DE3000, v18, v19, "Stream: %s has been successfully activated.", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x1B273F720](v21, -1, -1);
      MEMORY[0x1B273F720](v20, -1, -1);
    }
  }

  else
  {
    if (qword_1EB7832C0 != -1)
    {
      swift_once();
    }

    v25 = sub_1B1F1A500();
    __swift_project_value_buffer(v25, qword_1EB7832D0);
    v26 = sub_1B1F1A4E0();
    v27 = sub_1B1F1AD10();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_1B1DE3000, v26, v27, "Attempted to activate an already active stream.", v28, 2u);
      MEMORY[0x1B273F720](v28, -1, -1);
    }
  }
}

void static XPCEventStream.setEventListener(eventName:event:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (qword_1EB7832C0 != -1)
  {
    OUTLINED_FUNCTION_1_8();
  }

  v6 = sub_1B1F1A500();
  __swift_project_value_buffer(v6, qword_1EB7832D0);
  v7 = sub_1B1F1A4E0();
  v8 = sub_1B1F1AD30();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = v10;
    *v9 = 136315138;
    v11 = (*(a5 + 24))(a4, a5);
    v13 = sub_1B1DF61DC(v11, v12, &v21);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_1B1DE3000, v7, v8, "Attempting to add event for stream: %s.", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_5();
  }

  if (qword_1ED84EB90 != -1)
  {
    OUTLINED_FUNCTION_0_9();
  }

  v14 = qword_1ED84EBA0;
  os_unfair_lock_assert_not_owner((qword_1ED84EBA0 + 16));
  v16 = MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_2_2();
  *(v17 - 16) = sub_1B1E1D848;
  *(v17 - 8) = v18;
  os_unfair_lock_lock(v14 + 4);
  sub_1B1E07944(v19);
  os_unfair_lock_unlock(v14 + 4);
}

void sub_1B1E1C5E4(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v20 = *(a6 + 24);
  v20(a5, a6);
  sub_1B1F1A8E0();

  v22 = a2;
  sub_1B1F1A8E0();
  xpc_set_event();

  if (qword_1EB7832C0 != -1)
  {
    swift_once();
  }

  v9 = sub_1B1F1A500();
  __swift_project_value_buffer(v9, qword_1EB7832D0);
  sub_1B1F1A760();
  swift_unknownObjectRetain();
  v10 = sub_1B1F1A4E0();
  v11 = sub_1B1F1AD30();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v23 = v19;
    *v12 = 136315650;
    v13 = (v20)(a5, a6);
    v15 = sub_1B1DF61DC(v13, v14, &v23);

    *(v12 + 4) = v15;
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_1B1DF61DC(v22, a3, &v23);
    *(v12 + 22) = 2080;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7845A0, &qword_1B1F2C8E8);
    v16 = sub_1B1F1A8D0();
    v18 = sub_1B1DF61DC(v16, v17, &v23);

    *(v12 + 24) = v18;
    _os_log_impl(&dword_1B1DE3000, v10, v11, "Stream: %s has added listener for %s: %s.", v12, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1B273F720](v19, -1, -1);
    MEMORY[0x1B273F720](v12, -1, -1);
  }

  else
  {
  }
}

uint64_t static XPCEventStream.notifyHandlers(of:eventName:)(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v46 = *(AssociatedTypeWitness - 8);
  v12 = *(v46 + 64);
  v13 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v15 = v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v45 = v44 - v16;
  if (qword_1ED84EB90 != -1)
  {
    OUTLINED_FUNCTION_0_9();
  }

  v17 = qword_1ED84EBA0;
  os_unfair_lock_assert_not_owner((qword_1ED84EBA0 + 16));
  v19 = MEMORY[0x1EEE9AC00](v18);
  v44[-6] = a4;
  v44[-5] = a5;
  v44[2] = a5;
  v44[-4] = v5;
  v44[-3] = a2;
  v44[-2] = a3;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_2_2();
  *(v20 - 16) = sub_1B1E1D86C;
  *(v20 - 8) = v21;
  os_unfair_lock_lock(v17 + 4);
  sub_1B1E1D8BC(v22, v48);
  os_unfair_lock_unlock(v17 + 4);
  v47 = v48[0];
  if (qword_1EB7832C0 != -1)
  {
    OUTLINED_FUNCTION_1_8();
  }

  v23 = sub_1B1F1A500();
  __swift_project_value_buffer(v23, qword_1EB7832D0);
  v25 = v45;
  v24 = v46;
  v26 = *(v46 + 16);
  v26(v45, a1, AssociatedTypeWitness);
  v27 = sub_1B1F1A4E0();
  v28 = sub_1B1F1AD30();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v44[1] = a4;
    v30 = v29;
    v44[0] = swift_slowAlloc();
    v48[0] = v44[0];
    *v30 = 136315138;
    v26(v15, v25, AssociatedTypeWitness);
    v31 = sub_1B1F1A8D0();
    v32 = v25;
    v34 = v33;
    (*(v24 + 8))(v32, AssociatedTypeWitness);
    v35 = sub_1B1DF61DC(v31, v34, v48);

    *(v30 + 4) = v35;
    _os_log_impl(&dword_1B1DE3000, v27, v28, "Dispatching XPC event: %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v44[0]);
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_5();
  }

  else
  {

    (*(v24 + 8))(v25, AssociatedTypeWitness);
  }

  v36 = v47;
  v37 = *(v47 + 16);
  if (v37)
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v39 = (v36 + 40);
    do
    {
      v41 = *(v39 - 1);
      v40 = *v39;
      v48[3] = AssociatedTypeWitness;
      v48[4] = AssociatedConformanceWitness;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v48);
      v26(boxed_opaque_existential_1, a1, AssociatedTypeWitness);

      v41(v48);

      __swift_destroy_boxed_opaque_existential_1(v48);
      v39 += 2;
      --v37;
    }

    while (v37);
  }
}

void sub_1B1E1CC40(uint64_t a1@<X1>, unint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  if (qword_1ED84EB80 != -1)
  {
    swift_once();
  }

  v10 = (*(a4 + 24))(a3, a4);
  v12 = v11;
  swift_beginAccess();
  v13 = sub_1B1E0E2B8(v10, v12, off_1EB7834E0);

  if (v13)
  {
    v14 = sub_1B1E0E2B8(a1, a2, v13);
    swift_endAccess();

    if (v14)
    {
      goto LABEL_12;
    }
  }

  else
  {
    swift_endAccess();
  }

  if (qword_1EB7832C0 != -1)
  {
    swift_once();
  }

  v15 = sub_1B1F1A500();
  __swift_project_value_buffer(v15, qword_1EB7832D0);
  sub_1B1F1A760();
  v16 = sub_1B1F1A4E0();
  v17 = sub_1B1F1AD10();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v20 = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_1B1DF61DC(a1, a2, &v20);
    _os_log_impl(&dword_1B1DE3000, v16, v17, "Received an XPC event that we do not have an registered handler for: %s. This is a serious programming error that might lead to missed messages and stuck streams.", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x1B273F720](v19, -1, -1);
    MEMORY[0x1B273F720](v18, -1, -1);
  }

  v14 = MEMORY[0x1E69E7CC0];
LABEL_12:
  *a5 = v14;
}

void static XPCEventStream.register(matching:_:)()
{
  if (qword_1ED84EB90 != -1)
  {
    OUTLINED_FUNCTION_0_9();
  }

  v0 = qword_1ED84EBA0;
  os_unfair_lock_assert_not_owner((qword_1ED84EBA0 + 16));
  v2 = MEMORY[0x1EEE9AC00](v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_2_2();
  *(v3 - 16) = sub_1B1E1D8D8;
  *(v3 - 8) = v4;
  os_unfair_lock_lock(v0 + 4);
  sub_1B1E07944(v5);
  os_unfair_lock_unlock(v0 + 4);
}

uint64_t sub_1B1E1CF70(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  if (qword_1EB783368 != -1)
  {
    swift_once();
  }

  v10 = *(a7 + 24);
  v11 = v10(a6, a7);
  v13 = v12;
  swift_beginAccess();
  v14 = sub_1B1E0CC80(v11, v13, qword_1EB783378);
  swift_endAccess();

  if (v14 == 2 || (v14 & 1) == 0)
  {
    goto LABEL_10;
  }

  if (qword_1EB7832C0 != -1)
  {
    goto LABEL_28;
  }

  while (1)
  {
    v15 = sub_1B1F1A500();
    __swift_project_value_buffer(v15, qword_1EB7832D0);
    sub_1B1F1A760();
    v16 = sub_1B1F1A4E0();
    v17 = sub_1B1F1AD10();

    log = v16;
    if (os_log_type_enabled(v16, v17))
    {
      v52 = v17;
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v57 = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_1B1DF61DC(a2, a3, &v57);
      _os_log_impl(&dword_1B1DE3000, log, v52, "Attempting to register for new event (%s) after the stream has already been activated. This is a serious programming error that might lead to missed messages and stuck streams.", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x1B273F720](v19, -1, -1);
      MEMORY[0x1B273F720](v18, -1, -1);
    }

LABEL_10:
    if (qword_1ED84EB80 != -1)
    {
      swift_once();
    }

    v20 = v10(a6, a7);
    v22 = v21;
    v23 = swift_allocObject();
    v23[2] = a6;
    v23[3] = a7;
    v23[4] = a4;
    v23[5] = a5;
    a6 = &off_1EB7834E0;
    swift_beginAccess();

    swift_isUniquelyReferenced_nonNull_native();
    v24 = off_1EB7834E0;
    v58 = off_1EB7834E0;
    off_1EB7834E0 = 0x8000000000000000;
    v25 = sub_1B1DEBED8();
    v27 = v24[2];
    v28 = (v26 & 1) == 0;
    a7 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      __break(1u);
      goto LABEL_27;
    }

    a6 = v25;
    a5 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784578, &qword_1B1F2C8B8);
    if (sub_1B1F1B0C0())
    {
      v29 = sub_1B1DEBED8();
      if ((a5 & 1) != (v30 & 1))
      {
        goto LABEL_29;
      }

      a6 = v29;
    }

    v31 = v58;
    off_1EB7834E0 = v58;
    if ((a5 & 1) == 0)
    {
      sub_1B1E1D444(&v58);
      sub_1B1E2D060(a6, v20, v22, v58, v31);
      sub_1B1F1A760();
    }

    v10 = v31[7];
    v32 = *(v10 + a6);
    swift_isUniquelyReferenced_nonNull_native();
    v58 = *(v10 + a6);
    v33 = v58;
    *(v10 + a6) = 0x8000000000000000;
    v34 = sub_1B1DEBED8();
    v36 = v33[2];
    v37 = (v35 & 1) == 0;
    a7 = v36 + v37;
    if (!__OFADD__(v36, v37))
    {
      break;
    }

LABEL_27:
    __break(1u);
LABEL_28:
    swift_once();
  }

  v38 = v34;
  v39 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784580, &qword_1B1F2C8C0);
  v40 = sub_1B1F1B0C0();
  v41 = v58;
  if (v40)
  {
    v42 = a3;
    v43 = sub_1B1DEBED8();
    if ((v39 & 1) != (v44 & 1))
    {
LABEL_29:
      result = sub_1B1F1B720();
      __break(1u);
      return result;
    }

    v38 = v43;
  }

  else
  {
    v42 = a3;
  }

  v45 = *(v10 + a6);
  *(v10 + a6) = v41;

  v46 = *(v10 + a6);
  if ((v39 & 1) == 0)
  {
    sub_1B1E2D060(v38, a2, v42, MEMORY[0x1E69E7CC0], v46);
    sub_1B1F1A760();
  }

  v47 = *(v46 + 56) + 8 * v38;
  sub_1B1E2AB7C();
  v48 = *(*v47 + 16);
  sub_1B1E2AC38(v48);
  v49 = *v47;
  *(v49 + 16) = v48 + 1;
  v50 = v49 + 16 * v48;
  *(v50 + 32) = sub_1B1DF64A8;
  *(v50 + 40) = v23;
  swift_endAccess();
}

uint64_t sub_1B1E1D444@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784588, &qword_1B1F2C8C8);
  result = sub_1B1F1A730();
  *a1 = result;
  return result;
}

uint64_t sub_1B1E1D49C(uint64_t a1, unint64_t a2)
{
  v4 = sub_1B1E1D4E8(a1, a2);
  sub_1B1E1D600(&unk_1F28F30C8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_1B1E1D4E8(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_1B1F1A930())
  {
    result = sub_1B1E1D6E4(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_1B1F1AF80();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_1B1F1B010();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1B1E1D600(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_1B1E1D754(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1B1E1D6E4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7845A8, &unk_1B1F2C8F0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_1B1E1D754(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7845A8, &unk_1B1F2C8F0);
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

void *sub_1B1E1D890@<X0>(uint64_t a1@<X0>, void *(*a2)(uint64_t *__return_ptr)@<X1>, void *a3@<X8>)
{
  result = sub_1B1E0BD80(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

void sub_1B1E1D918(void *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  sub_1B1DF5D98(a1, v2, v3);
}

unint64_t sub_1B1E1D940()
{
  result = qword_1EB783600;
  if (!qword_1EB783600)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB783600);
  }

  return result;
}

unint64_t sub_1B1E1D984()
{
  result = qword_1EB783608;
  if (!qword_1EB783608)
  {
    sub_1B1F1AD50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB783608);
  }

  return result;
}

unint64_t sub_1B1E1D9DC()
{
  result = qword_1EB783648;
  if (!qword_1EB783648)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB7845B0, qword_1B1F34ED0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB783648);
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

void sub_1B1E1DAE8()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69ACF60]) initWithOptions_];
  v1 = [objc_allocWithZone(WFAppIntentsMetadataProvider) initWithMetadataProvider:v0 cacheLifetime:30.0];

  qword_1EB7845D0 = v1;
}

id static WFAppIntentsMetadataProvider.daemon()()
{
  if (qword_1EB783B10 != -1)
  {
    OUTLINED_FUNCTION_10_2();
  }

  v1 = qword_1EB7845D0;

  return v1;
}

char *sub_1B1E1DBC8(void *a1, double a2)
{
  v3 = v2;
  v6 = sub_1B1F1A650();
  v7 = OUTLINED_FUNCTION_0(v6);
  v91 = v8;
  v92 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_5();
  v90 = v11;
  OUTLINED_FUNCTION_28_0();
  v87 = sub_1B1F1ADD0();
  v83 = *(v87 - 1);
  v84 = v83;
  v12 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v87);
  OUTLINED_FUNCTION_4_5();
  v86 = v13;
  OUTLINED_FUNCTION_28_0();
  v82 = sub_1B1F1AD60();
  v14 = OUTLINED_FUNCTION_0(v82);
  v81 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_4_5();
  v80 = v18;
  OUTLINED_FUNCTION_28_0();
  v79 = sub_1B1F1AD50();
  v19 = *(*(v79 - 8) + 64);
  MEMORY[0x1EEE9AC00](v79);
  OUTLINED_FUNCTION_4_5();
  v78 = v20;
  OUTLINED_FUNCTION_28_0();
  v21 = sub_1B1F1A6B0();
  v22 = OUTLINED_FUNCTION_0(v21);
  v88 = v23;
  v89 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v27 = &v76 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v3[OBJC_IVAR___WFAppIntentsMetadataProvider_cacheActivityTransaction] = 0;
  *&v3[OBJC_IVAR___WFAppIntentsMetadataProvider_cachePurgeNotificationObserver] = 0;
  type metadata accessor for ActionMetadataCache(0);
  OUTLINED_FUNCTION_24_3();
  v28 = swift_allocObject();
  *(v28 + 56) = a1;
  v29 = MEMORY[0x1E69E7CC8];
  *(v28 + 16) = 0;
  v30 = MEMORY[0x1E69E7CC0];
  *(v28 + 24) = MEMORY[0x1E69E7CC0];
  *(v28 + 32) = v30;
  *(v28 + 40) = v29;
  *(v28 + 48) = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784780, &qword_1B1F2CCA0);
  v31 = OUTLINED_FUNCTION_23_1();
  *(v31 + 24) = 0;
  *(v31 + 16) = v28;
  v32 = OUTLINED_FUNCTION_32_0(v31, OBJC_IVAR___WFAppIntentsMetadataProvider_actionsCache);
  type metadata accessor for QueryMetadataCache(v32);
  swift_allocObject();
  v33 = a1;
  sub_1B1DFA6D8(v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784788, &qword_1B1F2CCA8);
  v34 = OUTLINED_FUNCTION_23_1();
  v35 = OUTLINED_FUNCTION_33_0(v34);
  v36 = OUTLINED_FUNCTION_32_0(v35, OBJC_IVAR___WFAppIntentsMetadataProvider_queriesCache);
  type metadata accessor for EntityMetadataCache(v36);
  OUTLINED_FUNCTION_24_3();
  v37 = swift_allocObject();
  OUTLINED_FUNCTION_20_1(v37);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784790, &qword_1B1F2CCB0);
  v38 = OUTLINED_FUNCTION_23_1();
  v39 = OUTLINED_FUNCTION_33_0(v38);
  v40 = OUTLINED_FUNCTION_32_0(v39, OBJC_IVAR___WFAppIntentsMetadataProvider_entitiesCache);
  type metadata accessor for EnumerationMetadataCache(v40);
  OUTLINED_FUNCTION_24_3();
  v41 = swift_allocObject();
  OUTLINED_FUNCTION_20_1(v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784798, &qword_1B1F2CCB8);
  v42 = OUTLINED_FUNCTION_23_1();
  v43 = OUTLINED_FUNCTION_33_0(v42);
  v44 = OUTLINED_FUNCTION_32_0(v43, OBJC_IVAR___WFAppIntentsMetadataProvider_enumerationsCache);
  type metadata accessor for ExamplePhraseMetadataCache(v44);
  v45 = swift_allocObject();
  *(v45 + 16) = 0;
  *(v45 + 24) = v30;
  *(v45 + 32) = v30;
  *(v45 + 40) = v29;
  *(v45 + 48) = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7847A0, &unk_1B1F2CCC0);
  v46 = OUTLINED_FUNCTION_23_1();
  *&v3[OBJC_IVAR___WFAppIntentsMetadataProvider_examplePhrasesCache] = OUTLINED_FUNCTION_33_0(v46);
  *&v3[OBJC_IVAR___WFAppIntentsMetadataProvider_metadataProvider] = v33;
  sub_1B1DEA98C(0, &qword_1EB783600, 0x1E69E9610);
  v85 = v33;
  v77 = v27;
  sub_1B1F1A680();
  aBlock = v30;
  sub_1B1E2CE90(&qword_1EB783608, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7845B0, qword_1B1F34ED0);
  sub_1B1DFA1D4(&qword_1EB783648, &unk_1EB7845B0, qword_1B1F34ED0);
  sub_1B1F1AF00();
  (*(v81 + 104))(v80, *MEMORY[0x1E69E8090], v82);
  v47 = sub_1B1F1AD80();
  v48 = [objc_allocWithZone(WFDebouncer) initWithDelay:v47 queue:a2];
  *&v3[OBJC_IVAR___WFAppIntentsMetadataProvider_cachePurgeDebouncer] = v48;
  sub_1B1DEA98C(0, &qword_1EB7835E8, 0x1E69E9630);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7847A8, &qword_1B1F2CCD0);
  v49 = v84;
  v50 = *(v83 + 72);
  v51 = (*(v84 + 80) + 32) & ~*(v84 + 80);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_1B1F2C910;
  sub_1B1F1ADC0();
  sub_1B1F1ADA0();
  sub_1B1F1ADB0();
  aBlock = v52;
  sub_1B1E2CE90(&unk_1EB7835F0, MEMORY[0x1E69E80E0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7847B0, &qword_1B1F2CCD8);
  sub_1B1DFA1D4(&unk_1EB783638, &qword_1EB7847B0, &qword_1B1F2CCD8);
  v53 = v86;
  v54 = v87;
  sub_1B1F1AF00();
  v55 = v53;
  v56 = sub_1B1F1ADE0();
  (*(v49 + 8))(v55, v54);
  *&v3[OBJC_IVAR___WFAppIntentsMetadataProvider_cachePurgeDispatchQueue] = v47;
  *&v3[OBJC_IVAR___WFAppIntentsMetadataProvider_cachePurgeDispatchSource] = v56;
  v99.receiver = v3;
  v99.super_class = WFAppIntentsMetadataProvider;
  v87 = v47;
  swift_unknownObjectRetain();
  v57 = objc_msgSendSuper2(&v99, sel_init);
  v58 = objc_opt_self();
  v59 = v57;
  v60 = [v58 defaultCenter];
  v61 = *MEMORY[0x1E69ACC50];
  OUTLINED_FUNCTION_3_2();
  v62 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v97 = sub_1B1E2CED4;
  v98 = v62;
  aBlock = MEMORY[0x1E69E9820];
  v94 = 1107296256;
  v95 = sub_1B1E1E7D4;
  v96 = &block_descriptor_251;
  v63 = _Block_copy(&aBlock);
  v64 = v59;

  v65 = [v60 addObserverForName:v61 object:0 queue:0 usingBlock:v63];
  _Block_release(v63);

  v66 = *&v64[OBJC_IVAR___WFAppIntentsMetadataProvider_cachePurgeNotificationObserver];
  *&v64[OBJC_IVAR___WFAppIntentsMetadataProvider_cachePurgeNotificationObserver] = v65;
  swift_unknownObjectRelease();
  v67 = OBJC_IVAR___WFAppIntentsMetadataProvider_cachePurgeDispatchSource;
  v68 = *&v64[OBJC_IVAR___WFAppIntentsMetadataProvider_cachePurgeDispatchSource];
  swift_getObjectType();
  OUTLINED_FUNCTION_3_2();
  v69 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v97 = sub_1B1E2CEDC;
  v98 = v69;
  aBlock = MEMORY[0x1E69E9820];
  v94 = 1107296256;
  v95 = sub_1B1DFB864;
  v96 = &block_descriptor_255;
  v70 = _Block_copy(&aBlock);
  swift_unknownObjectRetain();

  v71 = v77;
  sub_1B1F1A680();
  v72 = v90;
  sub_1B1DFA218();
  sub_1B1F1ADF0();
  _Block_release(v70);
  swift_unknownObjectRelease();
  (*(v91 + 8))(v72, v92);
  (*(v88 + 8))(v71, v89);

  v73 = *&v64[OBJC_IVAR___WFAppIntentsMetadataProvider_cachePurgeDebouncer];
  [v73 addTarget:v64 action:sel_cacheDebouncerFire];

  v74 = *&v64[v67];
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_1B1F1AE10();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v64;
}

void sub_1B1E1E580()
{
  v0 = sub_1B1F1A500();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x1EEE9AC00](v0);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED84F030 != -1)
  {
    v3 = swift_once();
  }

  v6 = qword_1ED84F038;
  v7 = MEMORY[0x1EEE9AC00](v3);
  v15[-2] = "AppIntentsMetadata";
  MEMORY[0x1EEE9AC00](v7);
  v15[-2] = sub_1B1E07904;
  v15[-1] = v8;

  os_unfair_lock_lock(v6 + 4);
  sub_1B1E07944(v9);
  os_unfair_lock_unlock(v6 + 4);

  v10 = sub_1B1F1A4E0();
  v11 = sub_1B1F1AD10();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1B1DE3000, v10, v11, "Purging cache due to LNMetadataChanged notification", v12, 2u);
    MEMORY[0x1B273F720](v12, -1, -1);
  }

  (*(v1 + 8))(v5, v0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    [Strong purge];
  }
}

uint64_t sub_1B1E1E7D4(uint64_t a1)
{
  v2 = sub_1B1F1A080();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  sub_1B1F1A060();

  v8(v6);

  return (*(v3 + 8))(v6, v2);
}

void sub_1B1E1E8C8()
{
  v0 = sub_1B1F1A500();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x1EEE9AC00](v0);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED84F030 != -1)
  {
    v3 = swift_once();
  }

  v6 = qword_1ED84F038;
  v7 = MEMORY[0x1EEE9AC00](v3);
  v15[-2] = "AppIntentsMetadata";
  MEMORY[0x1EEE9AC00](v7);
  v15[-2] = sub_1B1E07904;
  v15[-1] = v8;

  os_unfair_lock_lock(v6 + 4);
  sub_1B1E07944(v9);
  os_unfair_lock_unlock(v6 + 4);

  v10 = sub_1B1F1A4E0();
  v11 = sub_1B1F1AD10();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1B1DE3000, v10, v11, "Purging cache due to Memory Pressure notification", v12, 2u);
    MEMORY[0x1B273F720](v12, -1, -1);
  }

  (*(v1 + 8))(v5, v0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    [Strong purge];
  }
}

id sub_1B1E1EB54()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR___WFAppIntentsMetadataProvider_cachePurgeNotificationObserver];
  if (v2)
  {
    v3 = objc_opt_self();
    swift_unknownObjectRetain();
    v4 = [v3 defaultCenter];
    [v4 removeObserver_];
    swift_unknownObjectRelease();
  }

  v5 = *&v1[OBJC_IVAR___WFAppIntentsMetadataProvider_cachePurgeDispatchSource];
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_1B1F1AE00();
  swift_unknownObjectRelease();
  v7.receiver = v1;
  v7.super_class = WFAppIntentsMetadataProvider;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

uint64_t sub_1B1E1ED34()
{
  v1 = sub_1B1F1A650();
  v17 = *(v1 - 8);
  v2 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1B1F1A6B0();
  v5 = *(v16 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *&v0[OBJC_IVAR___WFAppIntentsMetadataProvider_cachePurgeDispatchQueue];
  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  aBlock[4] = sub_1B1E2CE88;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B1DFB864;
  aBlock[3] = &block_descriptor_3;
  v11 = _Block_copy(aBlock);
  v12 = v9;
  v13 = v0;
  sub_1B1F1A680();
  v18 = MEMORY[0x1E69E7CC0];
  sub_1B1E2CE90(&qword_1EB783678, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784778, &qword_1B1F2CC98);
  sub_1B1DFA1D4(&qword_1EB783670, &qword_1EB784778, &qword_1B1F2CC98);
  sub_1B1F1AF00();
  MEMORY[0x1B273D600](0, v8, v4, v11);
  _Block_release(v11);

  (*(v17 + 8))(v4, v1);
  (*(v5 + 8))(v8, v16);
}

id sub_1B1E1F010(uint64_t a1)
{
  v2 = os_transaction_create();
  v3 = *(a1 + OBJC_IVAR___WFAppIntentsMetadataProvider_cacheActivityTransaction);
  *(a1 + OBJC_IVAR___WFAppIntentsMetadataProvider_cacheActivityTransaction) = v2;
  swift_unknownObjectRelease();
  v4 = *(a1 + OBJC_IVAR___WFAppIntentsMetadataProvider_cachePurgeDebouncer);

  return [v4 poke];
}

uint64_t sub_1B1E1F078(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_1B1E1F104()
{
  v1 = v0;
  v2 = sub_1B1F1A500();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v24[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1B1F1A6C0();
  v8 = *(v7 - 1);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v24[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *&v1[OBJC_IVAR___WFAppIntentsMetadataProvider_cachePurgeDispatchQueue];
  *v11 = v12;
  (*(v8 + 104))(v11, *MEMORY[0x1E69E8020], v7);
  v13 = v12;
  LOBYTE(v12) = sub_1B1F1A6D0();
  v14 = (*(v8 + 8))(v11, v7);
  if (v12)
  {
    v7 = "AppIntentsMetadata";
    if (qword_1ED84F030 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  v14 = swift_once();
LABEL_3:
  v15 = qword_1ED84F038;
  v16 = MEMORY[0x1EEE9AC00](v14);
  *&v24[-16] = v7;
  MEMORY[0x1EEE9AC00](v16);
  *&v24[-16] = sub_1B1E07904;
  *&v24[-8] = v17;

  os_unfair_lock_lock(v15 + 4);
  sub_1B1E07944(v18);
  os_unfair_lock_unlock(v15 + 4);

  v19 = sub_1B1F1A4E0();
  v20 = sub_1B1F1AD10();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_1B1DE3000, v19, v20, "Purging cache due to cache expiry", v21, 2u);
    MEMORY[0x1B273F720](v21, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  [v1 purge];
  v22 = *&v1[OBJC_IVAR___WFAppIntentsMetadataProvider_cacheActivityTransaction];
  *&v1[OBJC_IVAR___WFAppIntentsMetadataProvider_cacheActivityTransaction] = 0;
  return swift_unknownObjectRelease();
}

uint64_t sub_1B1E1F470()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR___WFAppIntentsMetadataProvider_actionsCache);

  os_unfair_lock_lock((v2 + 24));
  v3 = *(v2 + 16);
  sub_1B1E26D38(sub_1B1E25824, &qword_1EB784700, &qword_1B1F2CC38);
  os_unfair_lock_unlock((v2 + 24));

  v4 = *(v1 + OBJC_IVAR___WFAppIntentsMetadataProvider_queriesCache);

  os_unfair_lock_lock((v4 + 24));
  v5 = *(v4 + 16);
  sub_1B1E2A0AC();
  os_unfair_lock_unlock((v4 + 24));

  v6 = *(v1 + OBJC_IVAR___WFAppIntentsMetadataProvider_entitiesCache);

  os_unfair_lock_lock((v6 + 24));
  v7 = *(v6 + 16);
  sub_1B1E26D38(sub_1B1E25E84, &qword_1EB7846F8, &qword_1B1F2CC30);
  os_unfair_lock_unlock((v6 + 24));

  v8 = *(v1 + OBJC_IVAR___WFAppIntentsMetadataProvider_enumerationsCache);

  os_unfair_lock_lock((v8 + 24));
  v9 = *(v8 + 16);
  sub_1B1E26D38(sub_1B1E261B4, &qword_1EB7846F0, &qword_1B1F2CC28);
  os_unfair_lock_unlock((v8 + 24));

  v10 = *(v1 + OBJC_IVAR___WFAppIntentsMetadataProvider_examplePhrasesCache);

  os_unfair_lock_lock((v10 + 24));
  v11 = *(v10 + 16);
  sub_1B1E264E4();
  os_unfair_lock_unlock((v10 + 24));
}

void *sub_1B1E1F65C()
{
  OUTLINED_FUNCTION_12_2(OBJC_IVAR___WFAppIntentsMetadataProvider_actionsCache);
  os_unfair_lock_lock(v1 + 6);
  v2 = OUTLINED_FUNCTION_2_7();
  sub_1B1E2CE04(v2);
  os_unfair_lock_unlock(v1 + 6);
  OUTLINED_FUNCTION_21_1();
  [v0 cacheDebouncerPoke];
  return v0;
}

uint64_t sub_1B1E1F724(void *a1, void (*a2)(void))
{
  v4 = v2;
  v5 = *&v2[*a1];

  os_unfair_lock_lock((v5 + 24));
  v6 = *(v5 + 16);
  v7 = sub_1B1E26E94(a2);
  os_unfair_lock_unlock((v5 + 24));

  [v4 cacheDebouncerPoke];
  return v7;
}

void *sub_1B1E1F7FC()
{
  OUTLINED_FUNCTION_6_5(OBJC_IVAR___WFAppIntentsMetadataProvider_queriesCache);
  os_unfair_lock_lock(v1 + 6);
  v2 = OUTLINED_FUNCTION_2_7();
  sub_1B1E2CD8C(v2);
  os_unfair_lock_unlock(v1 + 6);
  OUTLINED_FUNCTION_22_1();
  [v0 cacheDebouncerPoke];
  return v0;
}

void *sub_1B1E1F884()
{
  OUTLINED_FUNCTION_12_2(OBJC_IVAR___WFAppIntentsMetadataProvider_queriesCache);
  os_unfair_lock_lock(v1 + 6);
  v2 = OUTLINED_FUNCTION_2_7();
  sub_1B1E2CD08(v2);
  os_unfair_lock_unlock(v1 + 6);
  OUTLINED_FUNCTION_21_1();
  [v0 cacheDebouncerPoke];
  return v0;
}

id sub_1B1E1F94C(void *a1, uint64_t a2, void *a3, void (*a4)(void), uint64_t *a5, uint64_t *a6)
{
  v10 = a1;
  sub_1B1E1F724(a3, a4);

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v11 = sub_1B1F1A6F0();

  return v11;
}

void *sub_1B1E1F9EC()
{
  OUTLINED_FUNCTION_12_2(OBJC_IVAR___WFAppIntentsMetadataProvider_examplePhrasesCache);
  os_unfair_lock_lock(v1 + 6);
  v2 = OUTLINED_FUNCTION_2_7();
  sub_1B1E2D048(v2);
  os_unfair_lock_unlock(v1 + 6);
  OUTLINED_FUNCTION_21_1();
  [v0 cacheDebouncerPoke];
  return v0;
}

id sub_1B1E1FA84(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v57[1] = *MEMORY[0x1E69E9840];
  v8 = sub_1B1F1A500();
  v9 = OUTLINED_FUNCTION_0(v8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v54 - v16;
  if (a3)
  {
    v18 = *&v4[OBJC_IVAR___WFAppIntentsMetadataProvider_examplePhrasesCache];
    MEMORY[0x1EEE9AC00](v13);
    OUTLINED_FUNCTION_2_2();
    *(v19 - 16) = a1;
    *(v19 - 8) = a2;

    os_unfair_lock_lock((v18 + 24));
    sub_1B1E2CC84((v18 + 16));
    os_unfair_lock_unlock((v18 + 24));
    v20 = v57[0];

    [v4 cacheDebouncerPoke];
  }

  else
  {
    v55 = v15;
    v56 = v14;
    if (qword_1ED84F030 != -1)
    {
      v13 = swift_once();
    }

    v21 = qword_1ED84F038;
    v22 = MEMORY[0x1EEE9AC00](v13);
    v54 = "AppIntentsMetadata";
    *(&v54 - 2) = "AppIntentsMetadata";
    MEMORY[0x1EEE9AC00](v22);
    OUTLINED_FUNCTION_2_2();
    *(v23 - 16) = sub_1B1E07904;
    *(v23 - 8) = v24;

    os_unfair_lock_lock(v21 + 4);
    sub_1B1E07944(v25);
    os_unfair_lock_unlock(v21 + 4);

    sub_1B1F1A760();
    v26 = sub_1B1F1A4E0();
    v27 = sub_1B1F1AD30();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v57[0] = v29;
      *v28 = 136315138;
      *(v28 + 4) = sub_1B1DF61DC(a1, a2, v57);
      _os_log_impl(&dword_1B1DE3000, v26, v27, "Forcing loading of example phrases for bundle identifier '%s'.", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      OUTLINED_FUNCTION_5();
      OUTLINED_FUNCTION_5();
    }

    v30 = *(v56 + 8);
    v30(v17, v8);
    v31 = [v4 metadataProvider];
    v32 = sub_1B1F1A860();
    v57[0] = 0;
    v33 = [v31 examplePhrasesForBundleIdentifier:v32 error:v57];

    v34 = v57[0];
    if (v33)
    {
      sub_1B1DEA98C(0, &qword_1EB7835D8, 0x1E69AC840);
      OUTLINED_FUNCTION_31_0();
      v20 = sub_1B1F1A9B0();
      v35 = v34;
    }

    else
    {
      v36 = v57[0];
      v37 = sub_1B1F1A1C0();

      v38 = swift_willThrow();
      v39 = qword_1ED84F038;
      v40 = MEMORY[0x1EEE9AC00](v38);
      *(&v54 - 2) = v54;
      MEMORY[0x1EEE9AC00](v40);
      OUTLINED_FUNCTION_2_2();
      *(v41 - 16) = sub_1B1E07904;
      *(v41 - 8) = v42;

      os_unfair_lock_lock(v39 + 4);
      v43 = v55;
      sub_1B1E07944(v44);
      os_unfair_lock_unlock(v39 + 4);

      v45 = v37;
      v46 = sub_1B1F1A4E0();
      v47 = sub_1B1F1AD10();

      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        *v48 = 138412290;
        v50 = v37;
        v51 = _swift_stdlib_bridgeErrorToNSError();
        *(v48 + 4) = v51;
        *v49 = v51;
        _os_log_impl(&dword_1B1DE3000, v46, v47, "Failed to fetch example phrases due to error: %@", v48, 0xCu);
        sub_1B1E08DD4(v49);
        OUTLINED_FUNCTION_5();
        OUTLINED_FUNCTION_5();
      }

      v30(v43, v8);
      v20 = MEMORY[0x1E69E7CC0];
    }
  }

  v52 = *MEMORY[0x1E69E9840];
  return v20;
}

void __swiftcall WFAppIntentsMetadataProvider.init()(WFAppIntentsMetadataProvider *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

uint64_t LNQueryMetadata.uniqueIdentifier.getter()
{
  v1 = sub_1B1E2C7B8(v0);
  if (v2)
  {
    return v1;
  }

  v4 = [v0 identifier];
  v3 = sub_1B1F1A890();

  return v3;
}

uint64_t sub_1B1E201AC()
{
  v1 = [v0 identifier];
  v2 = sub_1B1F1A890();

  return v2;
}

uint64_t sub_1B1E20204()
{
  v1 = *(*v0 + 80);
  sub_1B1F1A7C0();
  swift_getTupleTypeMetadata2();
  sub_1B1F1A9D0();
  return sub_1B1F1A730();
}

uint64_t sub_1B1E202DC()
{
  v1 = sub_1B1F1A500();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = v71 - v8;
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = v71 - v11;
  v13 = "AppIntentsMetadata";
  if (v0[16] == 1)
  {
    if (qword_1ED84F030 == -1)
    {
LABEL_3:
      v14 = qword_1ED84F038;
      v15 = MEMORY[0x1EEE9AC00](v10);
      v71[-2] = v13;
      MEMORY[0x1EEE9AC00](v15);
      v71[-2] = sub_1B1E07904;
      v71[-1] = v16;

      os_unfair_lock_lock(v14 + 4);
      sub_1B1E07944(v17);
      os_unfair_lock_unlock(v14 + 4);

      v18 = sub_1B1F1A4E0();
      v19 = sub_1B1F1AD10();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v74[0] = v21;
        *v20 = 136315138;
        sub_1B1DEA98C(0, &qword_1EB783618, 0x1E69AC678);
        v22 = sub_1B1F1B880();
        v24 = sub_1B1DF61DC(v22, v23, v74);

        *(v20 + 4) = v24;
        _os_log_impl(&dword_1B1DE3000, v18, v19, "Not loading %s - cache already fully loaded", v20, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v21);
        MEMORY[0x1B273F720](v21, -1, -1);
        MEMORY[0x1B273F720](v20, -1, -1);
      }

      return (*(v2 + 8))(v12, v1);
    }

LABEL_28:
    v10 = swift_once();
    goto LABEL_3;
  }

  v73 = v0;
  if (qword_1ED84F030 != -1)
  {
    v10 = swift_once();
  }

  v12 = qword_1ED84F038;
  v26 = MEMORY[0x1EEE9AC00](v10);
  v71[0] = "AppIntentsMetadata";
  v71[-2] = "AppIntentsMetadata";
  MEMORY[0x1EEE9AC00](v26);
  v71[-2] = sub_1B1E07904;
  v71[-1] = v27;

  os_unfair_lock_lock(v12 + 4);
  sub_1B1E07944(v28);
  v72 = 0;
  os_unfair_lock_unlock(v12 + 4);

  v29 = sub_1B1F1A4E0();
  v30 = sub_1B1F1AD30();
  v31 = os_log_type_enabled(v29, v30);
  v71[1] = v2;
  if (v31)
  {
    v12 = swift_slowAlloc();
    v32 = v1;
    v33 = swift_slowAlloc();
    v74[0] = v33;
    *v12 = 136315138;
    sub_1B1DEA98C(0, &qword_1EB783618, 0x1E69AC678);
    v34 = sub_1B1F1B880();
    v36 = sub_1B1DF61DC(v34, v35, v74);

    *(v12 + 4) = v36;
    _os_log_impl(&dword_1B1DE3000, v29, v30, "Loading all %s metadata", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v33);
    v37 = v33;
    v1 = v32;
    MEMORY[0x1B273F720](v37, -1, -1);
    MEMORY[0x1B273F720](v12, -1, -1);

    v38 = *(v2 + 8);
    v39 = v38(v9, v32);
  }

  else
  {

    v38 = *(v2 + 8);
    v39 = v38(v9, v1);
  }

  v13 = v72;
  v40 = (*(*v73 + 224))(v39);
  if (!v13)
  {
    v2 = 0;
    v72 = v40;
    v1 = v40 + 64;
    v60 = 1 << *(v40 + 32);
    v61 = -1;
    if (v60 < 64)
    {
      v61 = ~(-1 << v60);
    }

    v62 = v61 & *(v40 + 64);
    v63 = (v60 + 63) >> 6;
    while (v62)
    {
      v64 = v2;
LABEL_22:
      v65 = __clz(__rbit64(v62));
      v62 &= v62 - 1;
      v66 = v65 | (v64 << 6);
      v67 = *(v72 + 48) + 16 * v66;
      v12 = *v67;
      v68 = *(v67 + 8);
      v69 = *(*(v72 + 56) + 8 * v66);
      v74[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784760, &qword_1B1F2CC88);
      v74[4] = sub_1B1DFA1D4(&qword_1EB784768, &qword_1EB784760, &qword_1B1F2CC88);
      v74[0] = v69;
      v13 = (*v73 + 256);
      v70 = *v13;
      sub_1B1F1A760();
      sub_1B1F1A760();
      v70(v74, v12, v68);

      __swift_destroy_boxed_opaque_existential_1(v74);
    }

    while (1)
    {
      v64 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        break;
      }

      if (v64 >= v63)
      {

        v73[16] = 1;
        return result;
      }

      v62 = *(v1 + 8 * v64);
      ++v2;
      if (v62)
      {
        v2 = v64;
        goto LABEL_22;
      }
    }

    __break(1u);
    goto LABEL_28;
  }

  v41 = v13;
  v42 = qword_1ED84F038;
  v43 = MEMORY[0x1EEE9AC00](v40);
  v71[-2] = v71[0];
  MEMORY[0x1EEE9AC00](v43);
  v71[-2] = sub_1B1E07904;
  v71[-1] = v44;

  os_unfair_lock_lock(v42 + 4);
  sub_1B1E07944(v45);
  os_unfair_lock_unlock(v42 + 4);

  v46 = v13;
  v47 = sub_1B1F1A4E0();
  v48 = sub_1B1F1AD10();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v74[0] = v51;
    *v49 = 136315394;
    sub_1B1DEA98C(0, &qword_1EB783618, 0x1E69AC678);
    v52 = sub_1B1F1B880();
    v54 = sub_1B1DF61DC(v52, v53, v74);
    v73 = v1;
    v55 = v54;

    *(v49 + 4) = v55;
    *(v49 + 12) = 2112;
    v56 = v41;
    v57 = _swift_stdlib_bridgeErrorToNSError();
    *(v49 + 14) = v57;
    *v50 = v57;
    _os_log_impl(&dword_1B1DE3000, v47, v48, "Failed to load all %s from metadata provider due to: %@", v49, 0x16u);
    sub_1B1E08DD4(v50);
    MEMORY[0x1B273F720](v50, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v51);
    MEMORY[0x1B273F720](v51, -1, -1);
    MEMORY[0x1B273F720](v49, -1, -1);

    v58 = v6;
    v59 = v73;
  }

  else
  {

    v58 = v6;
    v59 = v1;
  }

  return v38(v58, v59);
}

uint64_t sub_1B1E20B6C()
{
  v1 = sub_1B1F1A500();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = v71 - v8;
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = v71 - v11;
  v13 = "AppIntentsMetadata";
  if (v0[16] == 1)
  {
    if (qword_1ED84F030 == -1)
    {
LABEL_3:
      v14 = qword_1ED84F038;
      v15 = MEMORY[0x1EEE9AC00](v10);
      v71[-2] = v13;
      MEMORY[0x1EEE9AC00](v15);
      v71[-2] = sub_1B1E07904;
      v71[-1] = v16;

      os_unfair_lock_lock(v14 + 4);
      sub_1B1E07944(v17);
      os_unfair_lock_unlock(v14 + 4);

      v18 = sub_1B1F1A4E0();
      v19 = sub_1B1F1AD10();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v74[0] = v21;
        *v20 = 136315138;
        sub_1B1DEA98C(0, &qword_1EB783610, 0x1E69AC7F8);
        v22 = sub_1B1F1B880();
        v24 = sub_1B1DF61DC(v22, v23, v74);

        *(v20 + 4) = v24;
        _os_log_impl(&dword_1B1DE3000, v18, v19, "Not loading %s - cache already fully loaded", v20, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v21);
        MEMORY[0x1B273F720](v21, -1, -1);
        MEMORY[0x1B273F720](v20, -1, -1);
      }

      return (*(v2 + 8))(v12, v1);
    }

LABEL_28:
    v10 = swift_once();
    goto LABEL_3;
  }

  v73 = v0;
  if (qword_1ED84F030 != -1)
  {
    v10 = swift_once();
  }

  v12 = qword_1ED84F038;
  v26 = MEMORY[0x1EEE9AC00](v10);
  v71[0] = "AppIntentsMetadata";
  v71[-2] = "AppIntentsMetadata";
  MEMORY[0x1EEE9AC00](v26);
  v71[-2] = sub_1B1E07904;
  v71[-1] = v27;

  os_unfair_lock_lock(v12 + 4);
  sub_1B1E07944(v28);
  v72 = 0;
  os_unfair_lock_unlock(v12 + 4);

  v29 = sub_1B1F1A4E0();
  v30 = sub_1B1F1AD30();
  v31 = os_log_type_enabled(v29, v30);
  v71[1] = v2;
  if (v31)
  {
    v12 = swift_slowAlloc();
    v32 = v1;
    v33 = swift_slowAlloc();
    v74[0] = v33;
    *v12 = 136315138;
    sub_1B1DEA98C(0, &qword_1EB783610, 0x1E69AC7F8);
    v34 = sub_1B1F1B880();
    v36 = sub_1B1DF61DC(v34, v35, v74);

    *(v12 + 4) = v36;
    _os_log_impl(&dword_1B1DE3000, v29, v30, "Loading all %s metadata", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v33);
    v37 = v33;
    v1 = v32;
    MEMORY[0x1B273F720](v37, -1, -1);
    MEMORY[0x1B273F720](v12, -1, -1);

    v38 = *(v2 + 8);
    v39 = v38(v9, v32);
  }

  else
  {

    v38 = *(v2 + 8);
    v39 = v38(v9, v1);
  }

  v13 = v72;
  v40 = (*(*v73 + 224))(v39);
  if (!v13)
  {
    v2 = 0;
    v72 = v40;
    v1 = v40 + 64;
    v60 = 1 << *(v40 + 32);
    v61 = -1;
    if (v60 < 64)
    {
      v61 = ~(-1 << v60);
    }

    v62 = v61 & *(v40 + 64);
    v63 = (v60 + 63) >> 6;
    while (v62)
    {
      v64 = v2;
LABEL_22:
      v65 = __clz(__rbit64(v62));
      v62 &= v62 - 1;
      v66 = v65 | (v64 << 6);
      v67 = *(v72 + 48) + 16 * v66;
      v12 = *v67;
      v68 = *(v67 + 8);
      v69 = *(*(v72 + 56) + 8 * v66);
      v74[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784740, &qword_1B1F2CC70);
      v74[4] = sub_1B1DFA1D4(&qword_1EB784748, &qword_1EB784740, &qword_1B1F2CC70);
      v74[0] = v69;
      v13 = (*v73 + 256);
      v70 = *v13;
      sub_1B1F1A760();
      sub_1B1F1A760();
      v70(v74, v12, v68);

      __swift_destroy_boxed_opaque_existential_1(v74);
    }

    while (1)
    {
      v64 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        break;
      }

      if (v64 >= v63)
      {

        v73[16] = 1;
        return result;
      }

      v62 = *(v1 + 8 * v64);
      ++v2;
      if (v62)
      {
        v2 = v64;
        goto LABEL_22;
      }
    }

    __break(1u);
    goto LABEL_28;
  }

  v41 = v13;
  v42 = qword_1ED84F038;
  v43 = MEMORY[0x1EEE9AC00](v40);
  v71[-2] = v71[0];
  MEMORY[0x1EEE9AC00](v43);
  v71[-2] = sub_1B1E07904;
  v71[-1] = v44;

  os_unfair_lock_lock(v42 + 4);
  sub_1B1E07944(v45);
  os_unfair_lock_unlock(v42 + 4);

  v46 = v13;
  v47 = sub_1B1F1A4E0();
  v48 = sub_1B1F1AD10();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v74[0] = v51;
    *v49 = 136315394;
    sub_1B1DEA98C(0, &qword_1EB783610, 0x1E69AC7F8);
    v52 = sub_1B1F1B880();
    v54 = sub_1B1DF61DC(v52, v53, v74);
    v73 = v1;
    v55 = v54;

    *(v49 + 4) = v55;
    *(v49 + 12) = 2112;
    v56 = v41;
    v57 = _swift_stdlib_bridgeErrorToNSError();
    *(v49 + 14) = v57;
    *v50 = v57;
    _os_log_impl(&dword_1B1DE3000, v47, v48, "Failed to load all %s from metadata provider due to: %@", v49, 0x16u);
    sub_1B1E08DD4(v50);
    MEMORY[0x1B273F720](v50, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v51);
    MEMORY[0x1B273F720](v51, -1, -1);
    MEMORY[0x1B273F720](v49, -1, -1);

    v58 = v6;
    v59 = v73;
  }

  else
  {

    v58 = v6;
    v59 = v1;
  }

  return v38(v58, v59);
}

uint64_t sub_1B1E213FC()
{
  v1 = sub_1B1F1A500();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = v71 - v8;
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = v71 - v11;
  v13 = "AppIntentsMetadata";
  if (v0[16] == 1)
  {
    if (qword_1ED84F030 == -1)
    {
LABEL_3:
      v14 = qword_1ED84F038;
      v15 = MEMORY[0x1EEE9AC00](v10);
      v71[-2] = v13;
      MEMORY[0x1EEE9AC00](v15);
      v71[-2] = sub_1B1E07904;
      v71[-1] = v16;

      os_unfair_lock_lock(v14 + 4);
      sub_1B1E07944(v17);
      os_unfair_lock_unlock(v14 + 4);

      v18 = sub_1B1F1A4E0();
      v19 = sub_1B1F1AD10();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v74[0] = v21;
        *v20 = 136315138;
        sub_1B1DEA98C(0, &qword_1EB783628, 0x1E69AC838);
        v22 = sub_1B1F1B880();
        v24 = sub_1B1DF61DC(v22, v23, v74);

        *(v20 + 4) = v24;
        _os_log_impl(&dword_1B1DE3000, v18, v19, "Not loading %s - cache already fully loaded", v20, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v21);
        MEMORY[0x1B273F720](v21, -1, -1);
        MEMORY[0x1B273F720](v20, -1, -1);
      }

      return (*(v2 + 8))(v12, v1);
    }

LABEL_28:
    v10 = swift_once();
    goto LABEL_3;
  }

  v73 = v0;
  if (qword_1ED84F030 != -1)
  {
    v10 = swift_once();
  }

  v12 = qword_1ED84F038;
  v26 = MEMORY[0x1EEE9AC00](v10);
  v71[0] = "AppIntentsMetadata";
  v71[-2] = "AppIntentsMetadata";
  MEMORY[0x1EEE9AC00](v26);
  v71[-2] = sub_1B1E07904;
  v71[-1] = v27;

  os_unfair_lock_lock(v12 + 4);
  sub_1B1E07944(v28);
  v72 = 0;
  os_unfair_lock_unlock(v12 + 4);

  v29 = sub_1B1F1A4E0();
  v30 = sub_1B1F1AD30();
  v31 = os_log_type_enabled(v29, v30);
  v71[1] = v2;
  if (v31)
  {
    v12 = swift_slowAlloc();
    v32 = v1;
    v33 = swift_slowAlloc();
    v74[0] = v33;
    *v12 = 136315138;
    sub_1B1DEA98C(0, &qword_1EB783628, 0x1E69AC838);
    v34 = sub_1B1F1B880();
    v36 = sub_1B1DF61DC(v34, v35, v74);

    *(v12 + 4) = v36;
    _os_log_impl(&dword_1B1DE3000, v29, v30, "Loading all %s metadata", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v33);
    v37 = v33;
    v1 = v32;
    MEMORY[0x1B273F720](v37, -1, -1);
    MEMORY[0x1B273F720](v12, -1, -1);

    v38 = *(v2 + 8);
    v39 = v38(v9, v32);
  }

  else
  {

    v38 = *(v2 + 8);
    v39 = v38(v9, v1);
  }

  v13 = v72;
  v40 = (*(*v73 + 224))(v39);
  if (!v13)
  {
    v2 = 0;
    v72 = v40;
    v1 = v40 + 64;
    v60 = 1 << *(v40 + 32);
    v61 = -1;
    if (v60 < 64)
    {
      v61 = ~(-1 << v60);
    }

    v62 = v61 & *(v40 + 64);
    v63 = (v60 + 63) >> 6;
    while (v62)
    {
      v64 = v2;
LABEL_22:
      v65 = __clz(__rbit64(v62));
      v62 &= v62 - 1;
      v66 = v65 | (v64 << 6);
      v67 = *(v72 + 48) + 16 * v66;
      v12 = *v67;
      v68 = *(v67 + 8);
      v69 = *(*(v72 + 56) + 8 * v66);
      v74[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784728, &qword_1B1F2CC60);
      v74[4] = sub_1B1DFA1D4(&qword_1EB784730, &qword_1EB784728, &qword_1B1F2CC60);
      v74[0] = v69;
      v13 = (*v73 + 256);
      v70 = *v13;
      sub_1B1F1A760();
      sub_1B1F1A760();
      v70(v74, v12, v68);

      __swift_destroy_boxed_opaque_existential_1(v74);
    }

    while (1)
    {
      v64 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        break;
      }

      if (v64 >= v63)
      {

        v73[16] = 1;
        return result;
      }

      v62 = *(v1 + 8 * v64);
      ++v2;
      if (v62)
      {
        v2 = v64;
        goto LABEL_22;
      }
    }

    __break(1u);
    goto LABEL_28;
  }

  v41 = v13;
  v42 = qword_1ED84F038;
  v43 = MEMORY[0x1EEE9AC00](v40);
  v71[-2] = v71[0];
  MEMORY[0x1EEE9AC00](v43);
  v71[-2] = sub_1B1E07904;
  v71[-1] = v44;

  os_unfair_lock_lock(v42 + 4);
  sub_1B1E07944(v45);
  os_unfair_lock_unlock(v42 + 4);

  v46 = v13;
  v47 = sub_1B1F1A4E0();
  v48 = sub_1B1F1AD10();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v74[0] = v51;
    *v49 = 136315394;
    sub_1B1DEA98C(0, &qword_1EB783628, 0x1E69AC838);
    v52 = sub_1B1F1B880();
    v54 = sub_1B1DF61DC(v52, v53, v74);
    v73 = v1;
    v55 = v54;

    *(v49 + 4) = v55;
    *(v49 + 12) = 2112;
    v56 = v41;
    v57 = _swift_stdlib_bridgeErrorToNSError();
    *(v49 + 14) = v57;
    *v50 = v57;
    _os_log_impl(&dword_1B1DE3000, v47, v48, "Failed to load all %s from metadata provider due to: %@", v49, 0x16u);
    sub_1B1E08DD4(v50);
    MEMORY[0x1B273F720](v50, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v51);
    MEMORY[0x1B273F720](v51, -1, -1);
    MEMORY[0x1B273F720](v49, -1, -1);

    v58 = v6;
    v59 = v73;
  }

  else
  {

    v58 = v6;
    v59 = v1;
  }

  return v38(v58, v59);
}

uint64_t sub_1B1E21C8C()
{
  v1 = sub_1B1F1A500();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = v71 - v8;
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = v71 - v11;
  v13 = "AppIntentsMetadata";
  if (v0[16] == 1)
  {
    if (qword_1ED84F030 == -1)
    {
LABEL_3:
      v14 = qword_1ED84F038;
      v15 = MEMORY[0x1EEE9AC00](v10);
      v71[-2] = v13;
      MEMORY[0x1EEE9AC00](v15);
      v71[-2] = sub_1B1E07904;
      v71[-1] = v16;

      os_unfair_lock_lock(v14 + 4);
      sub_1B1E07944(v17);
      os_unfair_lock_unlock(v14 + 4);

      v18 = sub_1B1F1A4E0();
      v19 = sub_1B1F1AD10();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v74[0] = v21;
        *v20 = 136315138;
        sub_1B1DEA98C(0, &qword_1EB783620, 0x1E69AC988);
        v22 = sub_1B1F1B880();
        v24 = sub_1B1DF61DC(v22, v23, v74);

        *(v20 + 4) = v24;
        _os_log_impl(&dword_1B1DE3000, v18, v19, "Not loading %s - cache already fully loaded", v20, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v21);
        MEMORY[0x1B273F720](v21, -1, -1);
        MEMORY[0x1B273F720](v20, -1, -1);
      }

      return (*(v2 + 8))(v12, v1);
    }

LABEL_28:
    v10 = swift_once();
    goto LABEL_3;
  }

  v73 = v0;
  if (qword_1ED84F030 != -1)
  {
    v10 = swift_once();
  }

  v12 = qword_1ED84F038;
  v26 = MEMORY[0x1EEE9AC00](v10);
  v71[0] = "AppIntentsMetadata";
  v71[-2] = "AppIntentsMetadata";
  MEMORY[0x1EEE9AC00](v26);
  v71[-2] = sub_1B1E07904;
  v71[-1] = v27;

  os_unfair_lock_lock(v12 + 4);
  sub_1B1E07944(v28);
  v72 = 0;
  os_unfair_lock_unlock(v12 + 4);

  v29 = sub_1B1F1A4E0();
  v30 = sub_1B1F1AD30();
  v31 = os_log_type_enabled(v29, v30);
  v71[1] = v2;
  if (v31)
  {
    v12 = swift_slowAlloc();
    v32 = v1;
    v33 = swift_slowAlloc();
    v74[0] = v33;
    *v12 = 136315138;
    sub_1B1DEA98C(0, &qword_1EB783620, 0x1E69AC988);
    v34 = sub_1B1F1B880();
    v36 = sub_1B1DF61DC(v34, v35, v74);

    *(v12 + 4) = v36;
    _os_log_impl(&dword_1B1DE3000, v29, v30, "Loading all %s metadata", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v33);
    v37 = v33;
    v1 = v32;
    MEMORY[0x1B273F720](v37, -1, -1);
    MEMORY[0x1B273F720](v12, -1, -1);

    v38 = *(v2 + 8);
    v39 = v38(v9, v32);
  }

  else
  {

    v38 = *(v2 + 8);
    v39 = v38(v9, v1);
  }

  v13 = v72;
  v40 = (*(*v73 + 224))(v39);
  if (!v13)
  {
    v2 = 0;
    v72 = v40;
    v1 = v40 + 64;
    v60 = 1 << *(v40 + 32);
    v61 = -1;
    if (v60 < 64)
    {
      v61 = ~(-1 << v60);
    }

    v62 = v61 & *(v40 + 64);
    v63 = (v60 + 63) >> 6;
    while (v62)
    {
      v64 = v2;
LABEL_22:
      v65 = __clz(__rbit64(v62));
      v62 &= v62 - 1;
      v66 = v65 | (v64 << 6);
      v67 = *(v72 + 48) + 16 * v66;
      v12 = *v67;
      v68 = *(v67 + 8);
      v69 = *(*(v72 + 56) + 8 * v66);
      v74[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784718, &qword_1B1F2CC58);
      v74[4] = sub_1B1DFA1D4(&qword_1EB784720, &qword_1EB784718, &qword_1B1F2CC58);
      v74[0] = v69;
      v13 = (*v73 + 256);
      v70 = *v13;
      sub_1B1F1A760();
      sub_1B1F1A760();
      v70(v74, v12, v68);

      __swift_destroy_boxed_opaque_existential_1(v74);
    }

    while (1)
    {
      v64 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        break;
      }

      if (v64 >= v63)
      {

        v73[16] = 1;
        return result;
      }

      v62 = *(v1 + 8 * v64);
      ++v2;
      if (v62)
      {
        v2 = v64;
        goto LABEL_22;
      }
    }

    __break(1u);
    goto LABEL_28;
  }

  v41 = v13;
  v42 = qword_1ED84F038;
  v43 = MEMORY[0x1EEE9AC00](v40);
  v71[-2] = v71[0];
  MEMORY[0x1EEE9AC00](v43);
  v71[-2] = sub_1B1E07904;
  v71[-1] = v44;

  os_unfair_lock_lock(v42 + 4);
  sub_1B1E07944(v45);
  os_unfair_lock_unlock(v42 + 4);

  v46 = v13;
  v47 = sub_1B1F1A4E0();
  v48 = sub_1B1F1AD10();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v74[0] = v51;
    *v49 = 136315394;
    sub_1B1DEA98C(0, &qword_1EB783620, 0x1E69AC988);
    v52 = sub_1B1F1B880();
    v54 = sub_1B1DF61DC(v52, v53, v74);
    v73 = v1;
    v55 = v54;

    *(v49 + 4) = v55;
    *(v49 + 12) = 2112;
    v56 = v41;
    v57 = _swift_stdlib_bridgeErrorToNSError();
    *(v49 + 14) = v57;
    *v50 = v57;
    _os_log_impl(&dword_1B1DE3000, v47, v48, "Failed to load all %s from metadata provider due to: %@", v49, 0x16u);
    sub_1B1E08DD4(v50);
    MEMORY[0x1B273F720](v50, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v51);
    MEMORY[0x1B273F720](v51, -1, -1);
    MEMORY[0x1B273F720](v49, -1, -1);

    v58 = v6;
    v59 = v73;
  }

  else
  {

    v58 = v6;
    v59 = v1;
  }

  return v38(v58, v59);
}

uint64_t sub_1B1E2251C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_1B1F1A500();
  v73 = *(v6 - 8);
  v7 = *(v73 + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v68 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v68 - v14;
  v16 = sub_1B1DEB798(a1, a2, sub_1B1E2D064, sub_1B1E2D064);
  v72 = a1;
  if (v16)
  {
    if (qword_1ED84F030 != -1)
    {
      v16 = swift_once();
    }

    v17 = qword_1ED84F038;
    v18 = MEMORY[0x1EEE9AC00](v16);
    *(&v68 - 2) = "AppIntentsMetadata";
    MEMORY[0x1EEE9AC00](v18);
    *(&v68 - 2) = sub_1B1E07904;
    *(&v68 - 1) = v19;

    os_unfair_lock_lock(v17 + 4);
    sub_1B1E07944(v20);
    os_unfair_lock_unlock(v17 + 4);

    sub_1B1F1A760();
    v21 = sub_1B1F1A4E0();
    v22 = sub_1B1F1AD10();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v74[0] = v24;
      *v23 = 136315394;
      sub_1B1DEA98C(0, &qword_1EB783618, 0x1E69AC678);
      v25 = sub_1B1F1B880();
      v27 = sub_1B1DF61DC(v25, v26, v74);

      *(v23 + 4) = v27;
      *(v23 + 12) = 2080;
      *(v23 + 14) = sub_1B1DF61DC(v72, a2, v74);
      _os_log_impl(&dword_1B1DE3000, v21, v22, "Not loading %s for bundle identifier %s - cache already present", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B273F720](v24, -1, -1);
      MEMORY[0x1B273F720](v23, -1, -1);
    }

    return (*(v73 + 8))(v15, v6);
  }

  else
  {
    v69 = v10;
    v71 = v6;
    if (qword_1ED84F030 != -1)
    {
      v16 = swift_once();
    }

    v29 = qword_1ED84F038;
    v30 = MEMORY[0x1EEE9AC00](v16);
    v68 = "AppIntentsMetadata";
    *(&v68 - 2) = "AppIntentsMetadata";
    MEMORY[0x1EEE9AC00](v30);
    *(&v68 - 2) = sub_1B1E07904;
    *(&v68 - 1) = v31;

    os_unfair_lock_lock(v29 + 4);
    sub_1B1E07944(v32);
    v70 = 0;
    os_unfair_lock_unlock(v29 + 4);

    sub_1B1F1A760();
    v33 = sub_1B1F1A4E0();
    v34 = sub_1B1F1AD30();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v74[0] = v36;
      *v35 = 136315394;
      sub_1B1DEA98C(0, &qword_1EB783618, 0x1E69AC678);
      v37 = sub_1B1F1B880();
      v39 = sub_1B1DF61DC(v37, v38, v74);

      *(v35 + 4) = v39;
      *(v35 + 12) = 2080;
      v40 = v72;
      *(v35 + 14) = sub_1B1DF61DC(v72, a2, v74);
      _os_log_impl(&dword_1B1DE3000, v33, v34, "Loading %s for bundle identifier %s", v35, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B273F720](v36, -1, -1);
      MEMORY[0x1B273F720](v35, -1, -1);

      v41 = *(v73 + 8);
      v42 = v71;
      v41(v13, v71);
    }

    else
    {

      v41 = *(v73 + 8);
      v42 = v71;
      v41(v13, v71);
      v40 = v72;
    }

    v43 = v70;
    v44 = (*(*v3 + 232))(v40, a2);
    if (v43)
    {
      v45 = v43;
      v46 = qword_1ED84F038;
      v47 = MEMORY[0x1EEE9AC00](v44);
      *(&v68 - 2) = v68;
      MEMORY[0x1EEE9AC00](v47);
      *(&v68 - 2) = sub_1B1E07904;
      *(&v68 - 1) = v48;

      os_unfair_lock_lock(v46 + 4);
      v49 = v69;
      sub_1B1E07944(v50);
      os_unfair_lock_unlock(v46 + 4);

      v51 = v49;
      sub_1B1F1A760();
      v52 = v43;
      v53 = sub_1B1F1A4E0();
      v54 = sub_1B1F1AD10();

      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v70 = v41;
        v57 = v56;
        v58 = swift_slowAlloc();
        v74[0] = v58;
        *v55 = 136315650;
        sub_1B1DEA98C(0, &qword_1EB783618, 0x1E69AC678);
        v59 = sub_1B1F1B880();
        v61 = sub_1B1DF61DC(v59, v60, v74);

        *(v55 + 4) = v61;
        *(v55 + 12) = 2080;
        *(v55 + 14) = sub_1B1DF61DC(v72, a2, v74);
        *(v55 + 22) = 2112;
        v62 = v45;
        v63 = _swift_stdlib_bridgeErrorToNSError();
        *(v55 + 24) = v63;
        *v57 = v63;
        _os_log_impl(&dword_1B1DE3000, v53, v54, "Failed to load %s for %s from metadata provider due to: %@", v55, 0x20u);
        sub_1B1E08DD4(v57);
        MEMORY[0x1B273F720](v57, -1, -1);
        swift_arrayDestroy();
        MEMORY[0x1B273F720](v58, -1, -1);
        MEMORY[0x1B273F720](v55, -1, -1);

        return (v70)(v51, v71);
      }

      else
      {

        return (v41)(v51, v42);
      }
    }

    else
    {
      v64 = v44;
      v74[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784770, &qword_1B1F2CC90);
      v74[4] = sub_1B1DFA1D4(&qword_1EB783658, &qword_1EB784770, &qword_1B1F2CC90);
      v74[0] = v64;
      (*(*v3 + 256))(v74, v40, a2);
      __swift_destroy_boxed_opaque_existential_1(v74);
      swift_beginAccess();
      sub_1B1F1A760();
      sub_1B1E2AB94(sub_1B1E2ACBC);
      v65 = *(v3[4] + 16);
      sub_1B1E2AC50(v65, sub_1B1E2ACBC);
      v66 = v3[4];
      *(v66 + 16) = v65 + 1;
      v67 = v66 + 16 * v65;
      *(v67 + 32) = v40;
      *(v67 + 40) = a2;
      v3[4] = v66;
      return swift_endAccess();
    }
  }
}

uint64_t sub_1B1E22E78(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_1B1F1A500();
  v73 = *(v6 - 8);
  v7 = *(v73 + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v68 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v68 - v14;
  v16 = sub_1B1DEB798(a1, a2, sub_1B1E2D064, sub_1B1E2D064);
  v72 = a1;
  if (v16)
  {
    if (qword_1ED84F030 != -1)
    {
      v16 = swift_once();
    }

    v17 = qword_1ED84F038;
    v18 = MEMORY[0x1EEE9AC00](v16);
    *(&v68 - 2) = "AppIntentsMetadata";
    MEMORY[0x1EEE9AC00](v18);
    *(&v68 - 2) = sub_1B1E07904;
    *(&v68 - 1) = v19;

    os_unfair_lock_lock(v17 + 4);
    sub_1B1E07944(v20);
    os_unfair_lock_unlock(v17 + 4);

    sub_1B1F1A760();
    v21 = sub_1B1F1A4E0();
    v22 = sub_1B1F1AD10();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v74[0] = v24;
      *v23 = 136315394;
      sub_1B1DEA98C(0, &qword_1EB783610, 0x1E69AC7F8);
      v25 = sub_1B1F1B880();
      v27 = sub_1B1DF61DC(v25, v26, v74);

      *(v23 + 4) = v27;
      *(v23 + 12) = 2080;
      *(v23 + 14) = sub_1B1DF61DC(v72, a2, v74);
      _os_log_impl(&dword_1B1DE3000, v21, v22, "Not loading %s for bundle identifier %s - cache already present", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B273F720](v24, -1, -1);
      MEMORY[0x1B273F720](v23, -1, -1);
    }

    return (*(v73 + 8))(v15, v6);
  }

  else
  {
    v69 = v10;
    v71 = v6;
    if (qword_1ED84F030 != -1)
    {
      v16 = swift_once();
    }

    v29 = qword_1ED84F038;
    v30 = MEMORY[0x1EEE9AC00](v16);
    v68 = "AppIntentsMetadata";
    *(&v68 - 2) = "AppIntentsMetadata";
    MEMORY[0x1EEE9AC00](v30);
    *(&v68 - 2) = sub_1B1E07904;
    *(&v68 - 1) = v31;

    os_unfair_lock_lock(v29 + 4);
    sub_1B1E07944(v32);
    v70 = 0;
    os_unfair_lock_unlock(v29 + 4);

    sub_1B1F1A760();
    v33 = sub_1B1F1A4E0();
    v34 = sub_1B1F1AD30();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v74[0] = v36;
      *v35 = 136315394;
      sub_1B1DEA98C(0, &qword_1EB783610, 0x1E69AC7F8);
      v37 = sub_1B1F1B880();
      v39 = sub_1B1DF61DC(v37, v38, v74);

      *(v35 + 4) = v39;
      *(v35 + 12) = 2080;
      v40 = v72;
      *(v35 + 14) = sub_1B1DF61DC(v72, a2, v74);
      _os_log_impl(&dword_1B1DE3000, v33, v34, "Loading %s for bundle identifier %s", v35, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B273F720](v36, -1, -1);
      MEMORY[0x1B273F720](v35, -1, -1);

      v41 = *(v73 + 8);
      v42 = v71;
      v41(v13, v71);
    }

    else
    {

      v41 = *(v73 + 8);
      v42 = v71;
      v41(v13, v71);
      v40 = v72;
    }

    v43 = v70;
    v44 = (*(*v3 + 232))(v40, a2);
    if (v43)
    {
      v45 = v43;
      v46 = qword_1ED84F038;
      v47 = MEMORY[0x1EEE9AC00](v44);
      *(&v68 - 2) = v68;
      MEMORY[0x1EEE9AC00](v47);
      *(&v68 - 2) = sub_1B1E07904;
      *(&v68 - 1) = v48;

      os_unfair_lock_lock(v46 + 4);
      v49 = v69;
      sub_1B1E07944(v50);
      os_unfair_lock_unlock(v46 + 4);

      v51 = v49;
      sub_1B1F1A760();
      v52 = v43;
      v53 = sub_1B1F1A4E0();
      v54 = sub_1B1F1AD10();

      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v70 = v41;
        v57 = v56;
        v58 = swift_slowAlloc();
        v74[0] = v58;
        *v55 = 136315650;
        sub_1B1DEA98C(0, &qword_1EB783610, 0x1E69AC7F8);
        v59 = sub_1B1F1B880();
        v61 = sub_1B1DF61DC(v59, v60, v74);

        *(v55 + 4) = v61;
        *(v55 + 12) = 2080;
        *(v55 + 14) = sub_1B1DF61DC(v72, a2, v74);
        *(v55 + 22) = 2112;
        v62 = v45;
        v63 = _swift_stdlib_bridgeErrorToNSError();
        *(v55 + 24) = v63;
        *v57 = v63;
        _os_log_impl(&dword_1B1DE3000, v53, v54, "Failed to load %s for %s from metadata provider due to: %@", v55, 0x20u);
        sub_1B1E08DD4(v57);
        MEMORY[0x1B273F720](v57, -1, -1);
        swift_arrayDestroy();
        MEMORY[0x1B273F720](v58, -1, -1);
        MEMORY[0x1B273F720](v55, -1, -1);

        return (v70)(v51, v71);
      }

      else
      {

        return (v41)(v51, v42);
      }
    }

    else
    {
      v64 = v44;
      v74[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784750, &qword_1B1F2CC78);
      v74[4] = sub_1B1DFA1D4(&qword_1EB783650, &qword_1EB784750, &qword_1B1F2CC78);
      v74[0] = v64;
      (*(*v3 + 256))(v74, v40, a2);
      __swift_destroy_boxed_opaque_existential_1(v74);
      swift_beginAccess();
      sub_1B1F1A760();
      sub_1B1E2AB94(sub_1B1E2ACBC);
      v65 = *(v3[4] + 16);
      sub_1B1E2AC50(v65, sub_1B1E2ACBC);
      v66 = v3[4];
      *(v66 + 16) = v65 + 1;
      v67 = v66 + 16 * v65;
      *(v67 + 32) = v40;
      *(v67 + 40) = a2;
      v3[4] = v66;
      return swift_endAccess();
    }
  }
}

uint64_t sub_1B1E237D4(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_1B1F1A500();
  v73 = *(v6 - 8);
  v7 = *(v73 + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v68 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v68 - v14;
  v16 = sub_1B1DEB798(a1, a2, sub_1B1E2D064, sub_1B1E2D064);
  v72 = a1;
  if (v16)
  {
    if (qword_1ED84F030 != -1)
    {
      v16 = swift_once();
    }

    v17 = qword_1ED84F038;
    v18 = MEMORY[0x1EEE9AC00](v16);
    *(&v68 - 2) = "AppIntentsMetadata";
    MEMORY[0x1EEE9AC00](v18);
    *(&v68 - 2) = sub_1B1E07904;
    *(&v68 - 1) = v19;

    os_unfair_lock_lock(v17 + 4);
    sub_1B1E07944(v20);
    os_unfair_lock_unlock(v17 + 4);

    sub_1B1F1A760();
    v21 = sub_1B1F1A4E0();
    v22 = sub_1B1F1AD10();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v74[0] = v24;
      *v23 = 136315394;
      sub_1B1DEA98C(0, &qword_1EB783628, 0x1E69AC838);
      v25 = sub_1B1F1B880();
      v27 = sub_1B1DF61DC(v25, v26, v74);

      *(v23 + 4) = v27;
      *(v23 + 12) = 2080;
      *(v23 + 14) = sub_1B1DF61DC(v72, a2, v74);
      _os_log_impl(&dword_1B1DE3000, v21, v22, "Not loading %s for bundle identifier %s - cache already present", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B273F720](v24, -1, -1);
      MEMORY[0x1B273F720](v23, -1, -1);
    }

    return (*(v73 + 8))(v15, v6);
  }

  else
  {
    v69 = v10;
    v71 = v6;
    if (qword_1ED84F030 != -1)
    {
      v16 = swift_once();
    }

    v29 = qword_1ED84F038;
    v30 = MEMORY[0x1EEE9AC00](v16);
    v68 = "AppIntentsMetadata";
    *(&v68 - 2) = "AppIntentsMetadata";
    MEMORY[0x1EEE9AC00](v30);
    *(&v68 - 2) = sub_1B1E07904;
    *(&v68 - 1) = v31;

    os_unfair_lock_lock(v29 + 4);
    sub_1B1E07944(v32);
    v70 = 0;
    os_unfair_lock_unlock(v29 + 4);

    sub_1B1F1A760();
    v33 = sub_1B1F1A4E0();
    v34 = sub_1B1F1AD30();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v74[0] = v36;
      *v35 = 136315394;
      sub_1B1DEA98C(0, &qword_1EB783628, 0x1E69AC838);
      v37 = sub_1B1F1B880();
      v39 = sub_1B1DF61DC(v37, v38, v74);

      *(v35 + 4) = v39;
      *(v35 + 12) = 2080;
      v40 = v72;
      *(v35 + 14) = sub_1B1DF61DC(v72, a2, v74);
      _os_log_impl(&dword_1B1DE3000, v33, v34, "Loading %s for bundle identifier %s", v35, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B273F720](v36, -1, -1);
      MEMORY[0x1B273F720](v35, -1, -1);

      v41 = *(v73 + 8);
      v42 = v71;
      v41(v13, v71);
    }

    else
    {

      v41 = *(v73 + 8);
      v42 = v71;
      v41(v13, v71);
      v40 = v72;
    }

    v43 = v70;
    v44 = (*(*v3 + 232))(v40, a2);
    if (v43)
    {
      v45 = v43;
      v46 = qword_1ED84F038;
      v47 = MEMORY[0x1EEE9AC00](v44);
      *(&v68 - 2) = v68;
      MEMORY[0x1EEE9AC00](v47);
      *(&v68 - 2) = sub_1B1E07904;
      *(&v68 - 1) = v48;

      os_unfair_lock_lock(v46 + 4);
      v49 = v69;
      sub_1B1E07944(v50);
      os_unfair_lock_unlock(v46 + 4);

      v51 = v49;
      sub_1B1F1A760();
      v52 = v43;
      v53 = sub_1B1F1A4E0();
      v54 = sub_1B1F1AD10();

      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v70 = v41;
        v57 = v56;
        v58 = swift_slowAlloc();
        v74[0] = v58;
        *v55 = 136315650;
        sub_1B1DEA98C(0, &qword_1EB783628, 0x1E69AC838);
        v59 = sub_1B1F1B880();
        v61 = sub_1B1DF61DC(v59, v60, v74);

        *(v55 + 4) = v61;
        *(v55 + 12) = 2080;
        *(v55 + 14) = sub_1B1DF61DC(v72, a2, v74);
        *(v55 + 22) = 2112;
        v62 = v45;
        v63 = _swift_stdlib_bridgeErrorToNSError();
        *(v55 + 24) = v63;
        *v57 = v63;
        _os_log_impl(&dword_1B1DE3000, v53, v54, "Failed to load %s for %s from metadata provider due to: %@", v55, 0x20u);
        sub_1B1E08DD4(v57);
        MEMORY[0x1B273F720](v57, -1, -1);
        swift_arrayDestroy();
        MEMORY[0x1B273F720](v58, -1, -1);
        MEMORY[0x1B273F720](v55, -1, -1);

        return (v70)(v51, v71);
      }

      else
      {

        return (v41)(v51, v42);
      }
    }

    else
    {
      v64 = v44;
      v74[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784738, &qword_1B1F2CC68);
      v74[4] = sub_1B1DFA1D4(&qword_1EB783668, &qword_1EB784738, &qword_1B1F2CC68);
      v74[0] = v64;
      (*(*v3 + 256))(v74, v40, a2);
      __swift_destroy_boxed_opaque_existential_1(v74);
      swift_beginAccess();
      sub_1B1F1A760();
      sub_1B1E2AB94(sub_1B1E2ACBC);
      v65 = *(v3[4] + 16);
      sub_1B1E2AC50(v65, sub_1B1E2ACBC);
      v66 = v3[4];
      *(v66 + 16) = v65 + 1;
      v67 = v66 + 16 * v65;
      *(v67 + 32) = v40;
      *(v67 + 40) = a2;
      v3[4] = v66;
      return swift_endAccess();
    }
  }
}

uint64_t sub_1B1E24130(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_1B1F1A500();
  v73 = *(v6 - 8);
  v7 = *(v73 + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v68 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v68 - v14;
  v16 = sub_1B1DEB798(a1, a2, sub_1B1DEBA30, sub_1B1E2D064);
  v72 = a1;
  if (v16)
  {
    if (qword_1ED84F030 != -1)
    {
      v16 = swift_once();
    }

    v17 = qword_1ED84F038;
    v18 = MEMORY[0x1EEE9AC00](v16);
    *(&v68 - 2) = "AppIntentsMetadata";
    MEMORY[0x1EEE9AC00](v18);
    *(&v68 - 2) = sub_1B1E07904;
    *(&v68 - 1) = v19;

    os_unfair_lock_lock(v17 + 4);
    sub_1B1E07944(v20);
    os_unfair_lock_unlock(v17 + 4);

    sub_1B1F1A760();
    v21 = sub_1B1F1A4E0();
    v22 = sub_1B1F1AD10();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v74[0] = v24;
      *v23 = 136315394;
      sub_1B1DEA98C(0, &qword_1EB783620, 0x1E69AC988);
      v25 = sub_1B1F1B880();
      v27 = sub_1B1DF61DC(v25, v26, v74);

      *(v23 + 4) = v27;
      *(v23 + 12) = 2080;
      *(v23 + 14) = sub_1B1DF61DC(v72, a2, v74);
      _os_log_impl(&dword_1B1DE3000, v21, v22, "Not loading %s for bundle identifier %s - cache already present", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B273F720](v24, -1, -1);
      MEMORY[0x1B273F720](v23, -1, -1);
    }

    return (*(v73 + 8))(v15, v6);
  }

  else
  {
    v69 = v10;
    v71 = v6;
    if (qword_1ED84F030 != -1)
    {
      v16 = swift_once();
    }

    v29 = qword_1ED84F038;
    v30 = MEMORY[0x1EEE9AC00](v16);
    v68 = "AppIntentsMetadata";
    *(&v68 - 2) = "AppIntentsMetadata";
    MEMORY[0x1EEE9AC00](v30);
    *(&v68 - 2) = sub_1B1E07904;
    *(&v68 - 1) = v31;

    os_unfair_lock_lock(v29 + 4);
    sub_1B1E07944(v32);
    v70 = 0;
    os_unfair_lock_unlock(v29 + 4);

    sub_1B1F1A760();
    v33 = sub_1B1F1A4E0();
    v34 = sub_1B1F1AD30();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v74[0] = v36;
      *v35 = 136315394;
      sub_1B1DEA98C(0, &qword_1EB783620, 0x1E69AC988);
      v37 = sub_1B1F1B880();
      v39 = sub_1B1DF61DC(v37, v38, v74);

      *(v35 + 4) = v39;
      *(v35 + 12) = 2080;
      v40 = v72;
      *(v35 + 14) = sub_1B1DF61DC(v72, a2, v74);
      _os_log_impl(&dword_1B1DE3000, v33, v34, "Loading %s for bundle identifier %s", v35, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B273F720](v36, -1, -1);
      MEMORY[0x1B273F720](v35, -1, -1);

      v41 = *(v73 + 8);
      v42 = v71;
      v41(v13, v71);
    }

    else
    {

      v41 = *(v73 + 8);
      v42 = v71;
      v41(v13, v71);
      v40 = v72;
    }

    v43 = v70;
    v44 = (*(*v3 + 232))(v40, a2);
    if (v43)
    {
      v45 = v43;
      v46 = qword_1ED84F038;
      v47 = MEMORY[0x1EEE9AC00](v44);
      *(&v68 - 2) = v68;
      MEMORY[0x1EEE9AC00](v47);
      *(&v68 - 2) = sub_1B1E07904;
      *(&v68 - 1) = v48;

      os_unfair_lock_lock(v46 + 4);
      v49 = v69;
      sub_1B1E07944(v50);
      os_unfair_lock_unlock(v46 + 4);

      v51 = v49;
      sub_1B1F1A760();
      v52 = v43;
      v53 = sub_1B1F1A4E0();
      v54 = sub_1B1F1AD10();

      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v70 = v41;
        v57 = v56;
        v58 = swift_slowAlloc();
        v74[0] = v58;
        *v55 = 136315650;
        sub_1B1DEA98C(0, &qword_1EB783620, 0x1E69AC988);
        v59 = sub_1B1F1B880();
        v61 = sub_1B1DF61DC(v59, v60, v74);

        *(v55 + 4) = v61;
        *(v55 + 12) = 2080;
        *(v55 + 14) = sub_1B1DF61DC(v72, a2, v74);
        *(v55 + 22) = 2112;
        v62 = v45;
        v63 = _swift_stdlib_bridgeErrorToNSError();
        *(v55 + 24) = v63;
        *v57 = v63;
        _os_log_impl(&dword_1B1DE3000, v53, v54, "Failed to load %s for %s from metadata provider due to: %@", v55, 0x20u);
        sub_1B1E08DD4(v57);
        MEMORY[0x1B273F720](v57, -1, -1);
        swift_arrayDestroy();
        MEMORY[0x1B273F720](v58, -1, -1);
        MEMORY[0x1B273F720](v55, -1, -1);

        return (v70)(v51, v71);
      }

      else
      {

        return (v41)(v51, v42);
      }
    }

    else
    {
      v64 = v44;
      v74[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7846D8, &unk_1B1F2CC00);
      v74[4] = sub_1B1DFA1D4(&qword_1EB783660, &qword_1EB7846D8, &unk_1B1F2CC00);
      v74[0] = v64;
      (*(*v3 + 256))(v74, v40, a2);
      __swift_destroy_boxed_opaque_existential_1(v74);
      swift_beginAccess();
      sub_1B1F1A760();
      sub_1B1E2AB94(sub_1B1E2ACBC);
      v65 = *(v3[4] + 16);
      sub_1B1E2AC50(v65, sub_1B1E2ACBC);
      v66 = v3[4];
      *(v66 + 16) = v65 + 1;
      v67 = v66 + 16 * v65;
      *(v67 + 32) = v40;
      *(v67 + 40) = a2;
      v3[4] = v66;
      return swift_endAccess();
    }
  }
}

uint64_t sub_1B1E24A8C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_1B1F1A500();
  v73 = *(v6 - 8);
  v7 = *(v73 + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v68 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v68 - v14;
  v16 = sub_1B1DEB798(a1, a2, sub_1B1E2D064, sub_1B1E2D064);
  v72 = a1;
  if (v16)
  {
    if (qword_1ED84F030 != -1)
    {
      v16 = swift_once();
    }

    v17 = qword_1ED84F038;
    v18 = MEMORY[0x1EEE9AC00](v16);
    *(&v68 - 2) = "AppIntentsMetadata";
    MEMORY[0x1EEE9AC00](v18);
    *(&v68 - 2) = sub_1B1E07904;
    *(&v68 - 1) = v19;

    os_unfair_lock_lock(v17 + 4);
    sub_1B1E07944(v20);
    os_unfair_lock_unlock(v17 + 4);

    sub_1B1F1A760();
    v21 = sub_1B1F1A4E0();
    v22 = sub_1B1F1AD10();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v74[0] = v24;
      *v23 = 136315394;
      sub_1B1DEA98C(0, &qword_1EB7835D8, 0x1E69AC840);
      v25 = sub_1B1F1B880();
      v27 = sub_1B1DF61DC(v25, v26, v74);

      *(v23 + 4) = v27;
      *(v23 + 12) = 2080;
      *(v23 + 14) = sub_1B1DF61DC(v72, a2, v74);
      _os_log_impl(&dword_1B1DE3000, v21, v22, "Not loading %s for bundle identifier %s - cache already present", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B273F720](v24, -1, -1);
      MEMORY[0x1B273F720](v23, -1, -1);
    }

    return (*(v73 + 8))(v15, v6);
  }

  else
  {
    v69 = v10;
    v71 = v6;
    if (qword_1ED84F030 != -1)
    {
      v16 = swift_once();
    }

    v29 = qword_1ED84F038;
    v30 = MEMORY[0x1EEE9AC00](v16);
    v68 = "AppIntentsMetadata";
    *(&v68 - 2) = "AppIntentsMetadata";
    MEMORY[0x1EEE9AC00](v30);
    *(&v68 - 2) = sub_1B1E07904;
    *(&v68 - 1) = v31;

    os_unfair_lock_lock(v29 + 4);
    sub_1B1E07944(v32);
    v70 = 0;
    os_unfair_lock_unlock(v29 + 4);

    sub_1B1F1A760();
    v33 = sub_1B1F1A4E0();
    v34 = sub_1B1F1AD30();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v74[0] = v36;
      *v35 = 136315394;
      sub_1B1DEA98C(0, &qword_1EB7835D8, 0x1E69AC840);
      v37 = sub_1B1F1B880();
      v39 = sub_1B1DF61DC(v37, v38, v74);

      *(v35 + 4) = v39;
      *(v35 + 12) = 2080;
      v40 = v72;
      *(v35 + 14) = sub_1B1DF61DC(v72, a2, v74);
      _os_log_impl(&dword_1B1DE3000, v33, v34, "Loading %s for bundle identifier %s", v35, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B273F720](v36, -1, -1);
      MEMORY[0x1B273F720](v35, -1, -1);

      v41 = *(v73 + 8);
      v42 = v71;
      v41(v13, v71);
    }

    else
    {

      v41 = *(v73 + 8);
      v42 = v71;
      v41(v13, v71);
      v40 = v72;
    }

    v43 = v70;
    v44 = (*(*v3 + 232))(v40, a2);
    if (v43)
    {
      v45 = v43;
      v46 = qword_1ED84F038;
      v47 = MEMORY[0x1EEE9AC00](v44);
      *(&v68 - 2) = v68;
      MEMORY[0x1EEE9AC00](v47);
      *(&v68 - 2) = sub_1B1E07904;
      *(&v68 - 1) = v48;

      os_unfair_lock_lock(v46 + 4);
      v49 = v69;
      sub_1B1E07944(v50);
      os_unfair_lock_unlock(v46 + 4);

      v51 = v49;
      sub_1B1F1A760();
      v52 = v43;
      v53 = sub_1B1F1A4E0();
      v54 = sub_1B1F1AD10();

      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v70 = v41;
        v57 = v56;
        v58 = swift_slowAlloc();
        v74[0] = v58;
        *v55 = 136315650;
        sub_1B1DEA98C(0, &qword_1EB7835D8, 0x1E69AC840);
        v59 = sub_1B1F1B880();
        v61 = sub_1B1DF61DC(v59, v60, v74);

        *(v55 + 4) = v61;
        *(v55 + 12) = 2080;
        *(v55 + 14) = sub_1B1DF61DC(v72, a2, v74);
        *(v55 + 22) = 2112;
        v62 = v45;
        v63 = _swift_stdlib_bridgeErrorToNSError();
        *(v55 + 24) = v63;
        *v57 = v63;
        _os_log_impl(&dword_1B1DE3000, v53, v54, "Failed to load %s for %s from metadata provider due to: %@", v55, 0x20u);
        sub_1B1E08DD4(v57);
        MEMORY[0x1B273F720](v57, -1, -1);
        swift_arrayDestroy();
        MEMORY[0x1B273F720](v58, -1, -1);
        MEMORY[0x1B273F720](v55, -1, -1);

        return (v70)(v51, v71);
      }

      else
      {

        return (v41)(v51, v42);
      }
    }

    else
    {
      v64 = v44;
      v74[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784710, &qword_1B1F2CC50);
      v74[4] = sub_1B1DFA1D4(&unk_1EB783260, &qword_1EB784710, &qword_1B1F2CC50);
      v74[0] = v64;
      (*(*v3 + 256))(v74, v40, a2);
      __swift_destroy_boxed_opaque_existential_1(v74);
      swift_beginAccess();
      sub_1B1F1A760();
      sub_1B1E2AB94(sub_1B1E2ACBC);
      v65 = *(v3[4] + 16);
      sub_1B1E2AC50(v65, sub_1B1E2ACBC);
      v66 = v3[4];
      *(v66 + 16) = v65 + 1;
      v67 = v66 + 16 * v65;
      *(v67 + 32) = v40;
      *(v67 + 40) = a2;
      v3[4] = v66;
      return swift_endAccess();
    }
  }
}

uint64_t sub_1B1E253E8(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = a1[3];
  v8 = a1[4];
  v9 = __swift_project_boxed_opaque_existential_0(a1, v7);
  v10 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  (*(v12 + 16))(&v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B1DEA98C(0, &qword_1EB783620, 0x1E69AC988);
  v13 = *(v8 + 8);
  sub_1B1F1AA00();
  swift_beginAccess();
  v14 = *(v4 + 40);
  swift_isUniquelyReferenced_nonNull_native();
  v19 = *(v4 + 40);
  sub_1B1E0DB7C();
  *(v4 + 40) = v19;
  swift_endAccess();
  swift_beginAccess();
  sub_1B1F1A760();
  sub_1B1E2AB94(sub_1B1E2ACBC);
  v15 = *(*(v4 + 24) + 16);
  sub_1B1E2AC50(v15, sub_1B1E2ACBC);
  v16 = *(v4 + 24);
  *(v16 + 16) = v15 + 1;
  v17 = v16 + 16 * v15;
  *(v17 + 32) = a2;
  *(v17 + 40) = a3;
  *(v4 + 24) = v16;
  return swift_endAccess();
}

uint64_t sub_1B1E255AC(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = a1[3];
  v9 = a1[4];
  v10 = __swift_project_boxed_opaque_existential_0(a1, v8);
  v11 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  (*(v13 + 16))(&v21[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v14 = *(v7 + 80);
  v15 = *(v9 + 8);
  sub_1B1F1A760();
  v16 = sub_1B1F1AA00();
  v23 = a3;
  v24 = v16;
  v22 = a2;
  swift_beginAccess();
  sub_1B1F1A9F0();
  sub_1B1F1A7C0();
  sub_1B1F1A7E0();
  swift_endAccess();
  swift_beginAccess();
  sub_1B1F1A760();
  sub_1B1E2AB94(sub_1B1E2ACBC);
  v17 = *(v4[3] + 16);
  sub_1B1E2AC50(v17, sub_1B1E2ACBC);
  v18 = v4[3];
  *(v18 + 16) = v17 + 1;
  v19 = v18 + 16 * v17;
  *(v19 + 32) = a2;
  *(v19 + 40) = a3;
  v4[3] = v18;
  return swift_endAccess();
}

void *sub_1B1E25794(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_1B1E2B424(*(a1 + 16), 0);
  v4 = sub_1B1E2CB1C(&v6, v3 + 4, v2, a1);
  sub_1B1E2CC74();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

uint64_t sub_1B1E25824()
{
  v1 = v0;
  v2 = sub_1B1F1A500();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED84F030 != -1)
  {
    v5 = swift_once();
  }

  v8 = qword_1ED84F038;
  v9 = MEMORY[0x1EEE9AC00](v5);
  v25[-2] = "AppIntentsMetadata";
  MEMORY[0x1EEE9AC00](v9);
  v25[-2] = sub_1B1E07904;
  v25[-1] = v10;

  os_unfair_lock_lock(v8 + 4);
  sub_1B1E07944(v11);
  os_unfair_lock_unlock(v8 + 4);

  v12 = sub_1B1F1A4E0();
  v13 = sub_1B1F1AD30();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v26 = v15;
    *v14 = 136315138;
    sub_1B1DEA98C(0, &qword_1EB783618, 0x1E69AC678);
    v16 = sub_1B1F1B880();
    v18 = sub_1B1DF61DC(v16, v17, &v26);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_1B1DE3000, v12, v13, "Purging metadata cache for %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x1B273F720](v15, -1, -1);
    MEMORY[0x1B273F720](v14, -1, -1);
  }

  (*(v3 + 8))(v7, v2);
  *(v1 + 16) = 0;
  swift_beginAccess();
  v19 = *(v1 + 24);
  v20 = MEMORY[0x1E69E7CC0];
  *(v1 + 24) = MEMORY[0x1E69E7CC0];

  swift_beginAccess();
  v21 = *(v1 + 32);
  *(v1 + 32) = v20;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784770, &qword_1B1F2CC90);
  v22 = sub_1B1F1A730();
  swift_beginAccess();
  v23 = *(v1 + 40);
  *(v1 + 40) = v22;
}

uint64_t sub_1B1E25B54()
{
  v1 = v0;
  v2 = sub_1B1F1A500();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED84F030 != -1)
  {
    v5 = swift_once();
  }

  v8 = qword_1ED84F038;
  v9 = MEMORY[0x1EEE9AC00](v5);
  v25[-2] = "AppIntentsMetadata";
  MEMORY[0x1EEE9AC00](v9);
  v25[-2] = sub_1B1DE7A98;
  v25[-1] = v10;

  os_unfair_lock_lock(v8 + 4);
  sub_1B1DE7A64(v11);
  os_unfair_lock_unlock(v8 + 4);

  v12 = sub_1B1F1A4E0();
  v13 = sub_1B1F1AD30();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v26 = v15;
    *v14 = 136315138;
    sub_1B1DEA98C(0, &qword_1EB783620, 0x1E69AC988);
    v16 = sub_1B1F1B880();
    v18 = sub_1B1DF61DC(v16, v17, &v26);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_1B1DE3000, v12, v13, "Purging metadata cache for %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x1B273F720](v15, -1, -1);
    MEMORY[0x1B273F720](v14, -1, -1);
  }

  (*(v3 + 8))(v7, v2);
  *(v1 + 16) = 0;
  swift_beginAccess();
  v19 = *(v1 + 24);
  v20 = MEMORY[0x1E69E7CC0];
  *(v1 + 24) = MEMORY[0x1E69E7CC0];

  swift_beginAccess();
  v21 = *(v1 + 32);
  *(v1 + 32) = v20;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7846D8, &unk_1B1F2CC00);
  v22 = sub_1B1F1A730();
  swift_beginAccess();
  v23 = *(v1 + 40);
  *(v1 + 40) = v22;
}

uint64_t sub_1B1E25E84()
{
  v1 = v0;
  v2 = sub_1B1F1A500();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED84F030 != -1)
  {
    v5 = swift_once();
  }

  v8 = qword_1ED84F038;
  v9 = MEMORY[0x1EEE9AC00](v5);
  v25[-2] = "AppIntentsMetadata";
  MEMORY[0x1EEE9AC00](v9);
  v25[-2] = sub_1B1E07904;
  v25[-1] = v10;

  os_unfair_lock_lock(v8 + 4);
  sub_1B1E07944(v11);
  os_unfair_lock_unlock(v8 + 4);

  v12 = sub_1B1F1A4E0();
  v13 = sub_1B1F1AD30();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v26 = v15;
    *v14 = 136315138;
    sub_1B1DEA98C(0, &qword_1EB783610, 0x1E69AC7F8);
    v16 = sub_1B1F1B880();
    v18 = sub_1B1DF61DC(v16, v17, &v26);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_1B1DE3000, v12, v13, "Purging metadata cache for %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x1B273F720](v15, -1, -1);
    MEMORY[0x1B273F720](v14, -1, -1);
  }

  (*(v3 + 8))(v7, v2);
  *(v1 + 16) = 0;
  swift_beginAccess();
  v19 = *(v1 + 24);
  v20 = MEMORY[0x1E69E7CC0];
  *(v1 + 24) = MEMORY[0x1E69E7CC0];

  swift_beginAccess();
  v21 = *(v1 + 32);
  *(v1 + 32) = v20;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784750, &qword_1B1F2CC78);
  v22 = sub_1B1F1A730();
  swift_beginAccess();
  v23 = *(v1 + 40);
  *(v1 + 40) = v22;
}

uint64_t sub_1B1E261B4()
{
  v1 = v0;
  v2 = sub_1B1F1A500();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED84F030 != -1)
  {
    v5 = swift_once();
  }

  v8 = qword_1ED84F038;
  v9 = MEMORY[0x1EEE9AC00](v5);
  v25[-2] = "AppIntentsMetadata";
  MEMORY[0x1EEE9AC00](v9);
  v25[-2] = sub_1B1E07904;
  v25[-1] = v10;

  os_unfair_lock_lock(v8 + 4);
  sub_1B1E07944(v11);
  os_unfair_lock_unlock(v8 + 4);

  v12 = sub_1B1F1A4E0();
  v13 = sub_1B1F1AD30();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v26 = v15;
    *v14 = 136315138;
    sub_1B1DEA98C(0, &qword_1EB783628, 0x1E69AC838);
    v16 = sub_1B1F1B880();
    v18 = sub_1B1DF61DC(v16, v17, &v26);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_1B1DE3000, v12, v13, "Purging metadata cache for %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x1B273F720](v15, -1, -1);
    MEMORY[0x1B273F720](v14, -1, -1);
  }

  (*(v3 + 8))(v7, v2);
  *(v1 + 16) = 0;
  swift_beginAccess();
  v19 = *(v1 + 24);
  v20 = MEMORY[0x1E69E7CC0];
  *(v1 + 24) = MEMORY[0x1E69E7CC0];

  swift_beginAccess();
  v21 = *(v1 + 32);
  *(v1 + 32) = v20;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784738, &qword_1B1F2CC68);
  v22 = sub_1B1F1A730();
  swift_beginAccess();
  v23 = *(v1 + 40);
  *(v1 + 40) = v22;
}

uint64_t sub_1B1E264E4()
{
  v1 = v0;
  v2 = sub_1B1F1A500();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED84F030 != -1)
  {
    v5 = swift_once();
  }

  v8 = qword_1ED84F038;
  v9 = MEMORY[0x1EEE9AC00](v5);
  v25[-2] = "AppIntentsMetadata";
  MEMORY[0x1EEE9AC00](v9);
  v25[-2] = sub_1B1E07904;
  v25[-1] = v10;

  os_unfair_lock_lock(v8 + 4);
  sub_1B1E07944(v11);
  os_unfair_lock_unlock(v8 + 4);

  v12 = sub_1B1F1A4E0();
  v13 = sub_1B1F1AD30();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v26 = v15;
    *v14 = 136315138;
    sub_1B1DEA98C(0, &qword_1EB7835D8, 0x1E69AC840);
    v16 = sub_1B1F1B880();
    v18 = sub_1B1DF61DC(v16, v17, &v26);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_1B1DE3000, v12, v13, "Purging metadata cache for %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x1B273F720](v15, -1, -1);
    MEMORY[0x1B273F720](v14, -1, -1);
  }

  (*(v3 + 8))(v7, v2);
  *(v1 + 16) = 0;
  swift_beginAccess();
  v19 = *(v1 + 24);
  v20 = MEMORY[0x1E69E7CC0];
  *(v1 + 24) = MEMORY[0x1E69E7CC0];

  swift_beginAccess();
  v21 = *(v1 + 32);
  *(v1 + 32) = v20;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784710, &qword_1B1F2CC50);
  v22 = sub_1B1F1A730();
  swift_beginAccess();
  v23 = *(v1 + 40);
  *(v1 + 40) = v22;
}

void *sub_1B1E26814()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  return v0;
}

uint64_t sub_1B1E26844()
{
  v0 = sub_1B1E26814();

  return MEMORY[0x1EEE6BDC0](v0, 48, 7);
}

uint64_t sub_1B1E26874(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1B1E253E8(a1, a2, a3);
  v7 = a1[3];
  v8 = a1[4];
  v9 = __swift_project_boxed_opaque_existential_0(a1, v7);
  v10 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  (*(v12 + 16))(&v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v8 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v19);
  sub_1B1F1A950();
  while (1)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v19, AssociatedTypeWitness);
    sub_1B1F1AEC0();
    v14 = v18;
    if (!v18)
    {
      break;
    }

    v17 = v18;
    (*(*v3 + 360))(&v17, a2, a3);
  }

  return __swift_destroy_boxed_opaque_existential_1(v19);
}

uint64_t sub_1B1E26A3C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(*v4 + 288);
  v27 = *(v8 - 8);
  v9 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v26 - v10;
  v12 = sub_1B1F1AEB0();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v26 - v14;
  v28 = a2;
  sub_1B1E255AC(a1, a2, a3);
  v17 = a1[3];
  v16 = a1[4];
  v18 = __swift_project_boxed_opaque_existential_0(a1, v17);
  v19 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  (*(v21 + 16))(&v26 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = *(v16 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v29);
  sub_1B1F1A950();
  v23 = (v27 + 32);
  for (i = (v27 + 8); ; (*i)(v11, v8))
  {
    __swift_mutable_project_boxed_opaque_existential_1(v29, AssociatedTypeWitness);
    sub_1B1F1AEC0();
    if (__swift_getEnumTagSinglePayload(v15, 1, v8) == 1)
    {
      break;
    }

    (*v23)(v11, v15, v8);
    (*(*v4 + 360))(v11, v28, a3);
  }

  return __swift_destroy_boxed_opaque_existential_1(v29);
}

uint64_t sub_1B1E26D38(void (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  a1();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v6 = sub_1B1F1A730();
  swift_beginAccess();
  v7 = *(v3 + 48);
  *(v3 + 48) = v6;
}

uint64_t sub_1B1E26DC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *), uint64_t (*a6)(void *), uint64_t (*a7)(uint64_t, uint64_t, uint64_t), uint64_t (*a8)(uint64_t))
{
  if (sub_1B1DEB798(a3, a4, a5, a6))
  {
    return 1;
  }

  OUTLINED_FUNCTION_15_3();
  v13 = *(v8 + 48);
  sub_1B1F1A760();
  v14 = a7(a3, a4, v13);

  if (v14)
  {
    v15 = OUTLINED_FUNCTION_19_1();
    v16 = a8(v15);

    if (v16)
    {

      return 1;
    }
  }

  return 0;
}

uint64_t sub_1B1E26E94(void (*a1)(void))
{
  if ((*(v1 + 16) & 1) == 0)
  {
    a1();
  }

  OUTLINED_FUNCTION_15_3();
  v2 = *(v1 + 48);
  return sub_1B1F1A760();
}

uint64_t sub_1B1E26ECC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!sub_1B1DEB798(a1, a2, sub_1B1E2D064, sub_1B1E2D064))
  {
    sub_1B1E237D4(a1, a2);
  }

  swift_beginAccess();
  v9 = *(v4 + 48);
  sub_1B1F1A760();
  v10 = sub_1B1E0E2B8(a1, a2, v9);

  if (!v10)
  {
    return 0;
  }

  v11 = sub_1B1E0E2BC(a3, a4, v10);

  return v11;
}

uint64_t sub_1B1E26FB4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!sub_1B1DEB798(a1, a2, sub_1B1DEBA30, sub_1B1E2D064))
  {
    sub_1B1E24130(a1, a2);
  }

  swift_beginAccess();
  v9 = *(v4 + 48);
  sub_1B1F1A760();
  v10 = sub_1B1E0E2B8(a1, a2, v9);

  if (!v10)
  {
    return 0;
  }

  v11 = sub_1B1E0E2BC(a3, a4, v10);

  return v11;
}

uint64_t sub_1B1E2709C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = [a1 identifier];
  sub_1B1F1A890();

  swift_beginAccess();
  v9 = *(v4 + 48);
  swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v4 + 48);
  *(v4 + 48) = 0x8000000000000000;
  v11 = sub_1B1DEBED8();
  if (__OFADD__(*(v10 + 16), (v12 & 1) == 0))
  {
    __break(1u);
    goto LABEL_9;
  }

  v13 = v11;
  v14 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784708, &unk_1B1F2CC40);
  if (sub_1B1F1B0C0())
  {
    v15 = sub_1B1DEBED8();
    if ((v14 & 1) == (v16 & 1))
    {
      v13 = v15;
      goto LABEL_5;
    }

LABEL_9:
    result = sub_1B1F1B720();
    __break(1u);
    return result;
  }

LABEL_5:
  *(v4 + 48) = v10;
  if ((v14 & 1) == 0)
  {
    sub_1B1DEA98C(0, &qword_1EB783618, 0x1E69AC678);
    v17 = sub_1B1F1A730();
    sub_1B1E2B6B4(v13, a2, a3, v17, v10);
    sub_1B1F1A760();
  }

  v18 = *(v10 + 56);
  v19 = a1;
  v20 = *(v18 + 8 * v13);
  swift_isUniquelyReferenced_nonNull_native();
  v22 = *(v18 + 8 * v13);
  sub_1B1E0DB2C();
  *(v18 + 8 * v13) = v22;

  return swift_endAccess();
}

uint64_t sub_1B1E27280(void *a1, uint64_t a2, uint64_t a3)
{
  LNQueryMetadata.uniqueIdentifier.getter();
  swift_beginAccess();
  v7 = *(v3 + 48);
  swift_isUniquelyReferenced_nonNull_native();
  v19 = *(v3 + 48);
  *(v3 + 48) = 0x8000000000000000;
  v8 = sub_1B1DEBED8();
  if (__OFADD__(*(v19 + 16), (v9 & 1) == 0))
  {
    __break(1u);
    goto LABEL_9;
  }

  v10 = v8;
  v11 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7846C8, &qword_1B1F2CBF0);
  if (sub_1B1F1B0C0())
  {
    v12 = sub_1B1DEBED8();
    if ((v11 & 1) == (v13 & 1))
    {
      v10 = v12;
      goto LABEL_5;
    }

LABEL_9:
    result = sub_1B1F1B720();
    __break(1u);
    return result;
  }

LABEL_5:
  *(v3 + 48) = v19;
  if ((v11 & 1) == 0)
  {
    sub_1B1DEA98C(0, &qword_1EB783620, 0x1E69AC988);
    v14 = sub_1B1F1A730();
    sub_1B1E2B6B4(v10, a2, a3, v14, v19);
    sub_1B1F1A760();
  }

  v15 = *(v19 + 56);
  v16 = a1;
  v17 = *(v15 + 8 * v10);
  swift_isUniquelyReferenced_nonNull_native();
  v20 = *(v15 + 8 * v10);
  sub_1B1E0DB54();
  *(v15 + 8 * v10) = v20;

  return swift_endAccess();
}

uint64_t sub_1B1E2744C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = [a1 identifier];
  sub_1B1F1A890();

  swift_beginAccess();
  v9 = *(v4 + 48);
  swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v4 + 48);
  *(v4 + 48) = 0x8000000000000000;
  v11 = sub_1B1DEBED8();
  if (__OFADD__(*(v10 + 16), (v12 & 1) == 0))
  {
    __break(1u);
    goto LABEL_9;
  }

  v13 = v11;
  v14 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784758, &qword_1B1F2CC80);
  if (sub_1B1F1B0C0())
  {
    v15 = sub_1B1DEBED8();
    if ((v14 & 1) == (v16 & 1))
    {
      v13 = v15;
      goto LABEL_5;
    }

LABEL_9:
    result = sub_1B1F1B720();
    __break(1u);
    return result;
  }

LABEL_5:
  *(v4 + 48) = v10;
  if ((v14 & 1) == 0)
  {
    sub_1B1DEA98C(0, &qword_1EB783610, 0x1E69AC7F8);
    v17 = sub_1B1F1A730();
    sub_1B1E2B6B4(v13, a2, a3, v17, v10);
    sub_1B1F1A760();
  }

  v18 = *(v10 + 56);
  v19 = a1;
  v20 = *(v18 + 8 * v13);
  swift_isUniquelyReferenced_nonNull_native();
  v22 = *(v18 + 8 * v13);
  sub_1B1E0DC70();
  *(v18 + 8 * v13) = v22;

  return swift_endAccess();
}

uint64_t sub_1B1E27630(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v4;
  v9 = *(*v4 + 288);
  v10 = sub_1B1F1AEB0();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = v33 - v12;
  v14 = swift_allocObject();
  *(v14 + 16) = v9;
  v15 = *(v8 + 296);
  *(v14 + 24) = v15;
  v16 = (*(v15 + 8))(v9, v15);
  v18 = v17;
  (*(*(v9 - 8) + 16))(v13, a1, v9);
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v9);
  v39 = v16;
  v40 = v18;
  swift_beginAccess();
  v19 = swift_allocObject();
  v19[2] = v9;
  v19[3] = v15;
  v19[4] = sub_1B1E2CC7C;
  v19[5] = v14;
  v20 = v4[6];
  swift_isUniquelyReferenced_nonNull_native();
  v21 = v4[6];
  v35 = a3;
  v36 = v21;
  v4[6] = 0x8000000000000000;
  v34 = a2;
  v22 = sub_1B1DEBED8();
  if (__OFADD__(*(v21 + 16), (v23 & 1) == 0))
  {
    __break(1u);
    goto LABEL_9;
  }

  v24 = v22;
  v25 = v23;
  v33[1] = v13;
  sub_1B1F1A7C0();
  sub_1B1F1B0F0();
  v26 = sub_1B1F1B0C0();
  v27 = v36;
  if (v26)
  {
    v28 = sub_1B1DEBED8();
    if ((v25 & 1) == (v29 & 1))
    {
      v24 = v28;
      goto LABEL_5;
    }

LABEL_9:
    result = sub_1B1F1B720();
    __break(1u);
    return result;
  }

LABEL_5:
  v4[6] = v27;
  if ((v25 & 1) == 0)
  {
    v30 = v19[5];
    v38 = (v19[4])();
    v36 = v34;
    v37 = v35;
    sub_1B1F1A760();
    sub_1B1F1B0E0();
  }

  v31 = *(v27 + 56) + 8 * v24;
  sub_1B1F1A7E0();
  swift_endAccess();
}

uint64_t sub_1B1E27928()
{
  swift_getTupleTypeMetadata2();
  sub_1B1F1A9D0();

  return sub_1B1F1A730();
}

void *sub_1B1E2799C()
{
  v0 = sub_1B1E26814();
  v1 = v0[6];

  return v0;
}

uint64_t sub_1B1E279CC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((sub_1B1E26DC4(a3, a4, a1, a2, sub_1B1E2D064, sub_1B1E2D064, sub_1B1E0E2B8, sub_1B1E0E2BC) & 1) == 0)
  {
    sub_1B1E27C64(a3, a4, a1, a2);
  }

  swift_beginAccess();
  v9 = *(v4 + 48);
  sub_1B1F1A760();
  v10 = sub_1B1E0E2B8(a1, a2, v9);

  if (!v10)
  {
    return 0;
  }

  v11 = sub_1B1E0E2BC(a3, a4, v10);

  return v11;
}

uint64_t sub_1B1E27AF4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((sub_1B1E26DC4(a3, a4, a1, a2, sub_1B1E2D064, sub_1B1E2D064, sub_1B1E0E2B8, sub_1B1E0E2BC) & 1) == 0)
  {
    sub_1B1E287FC(a3, a4, a1, a2);
  }

  swift_beginAccess();
  v9 = *(v4 + 48);
  sub_1B1F1A760();
  v10 = sub_1B1E0E2B8(a1, a2, v9);

  if (!v10)
  {
    return 0;
  }

  v11 = sub_1B1E0E2BC(a3, a4, v10);

  return v11;
}

void sub_1B1E27C64(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v104 = a4;
  v10 = sub_1B1F1A500();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v99 = &v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v95 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v95 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v95 - v21;
  v102 = a1;
  v103 = a3;
  v23 = sub_1B1E26DC4(a1, a2, a3, a4, sub_1B1E2D064, sub_1B1E2D064, sub_1B1E0E2B8, sub_1B1E0E2BC);
  if ((v23 & 1) == 0)
  {
    v101 = v11;
    v96 = v17;
    if (qword_1ED84F030 != -1)
    {
      v23 = swift_once();
    }

    v37 = qword_1ED84F038;
    v38 = MEMORY[0x1EEE9AC00](v23);
    v97 = "AppIntentsMetadata";
    *(&v95 - 2) = "AppIntentsMetadata";
    MEMORY[0x1EEE9AC00](v38);
    *(&v95 - 2) = sub_1B1E07904;
    *(&v95 - 1) = v39;

    os_unfair_lock_lock(v37 + 4);
    sub_1B1E07944(v40);
    v98 = 0;
    os_unfair_lock_unlock(v37 + 4);

    sub_1B1F1A760();
    v41 = v104;
    sub_1B1F1A760();
    v42 = sub_1B1F1A4E0();
    v43 = sub_1B1F1AD30();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v100 = v10;
      v46 = v45;
      v105[0] = v45;
      *v44 = 136315650;
      sub_1B1DEA98C(0, &qword_1EB783618, 0x1E69AC678);
      v47 = sub_1B1F1B880();
      v49 = sub_1B1DF61DC(v47, v48, v105);

      *(v44 + 4) = v49;
      *(v44 + 12) = 2080;
      v50 = v102;
      *(v44 + 14) = sub_1B1DF61DC(v102, a2, v105);
      *(v44 + 22) = 2080;
      v51 = a2;
      v52 = v103;
      v41 = v104;
      *(v44 + 24) = sub_1B1DF61DC(v103, v104, v105);
      _os_log_impl(&dword_1B1DE3000, v42, v43, "Loading %s %s from %s", v44, 0x20u);
      swift_arrayDestroy();
      v53 = v46;
      v10 = v100;
      MEMORY[0x1B273F720](v53, -1, -1);
      v54 = v44;
      v55 = v52;
      a2 = v51;
      MEMORY[0x1B273F720](v54, -1, -1);

      v56 = *(v101 + 8);
      v56(v20, v10);
    }

    else
    {

      v56 = *(v101 + 8);
      v56(v20, v10);
      v50 = v102;
      v55 = v103;
    }

    v57 = v98;
    v58 = (*(*v5 + 384))(v105, v50, a2, v55, v41);
    v59 = v57;
    if (v57)
    {
      v98 = v56;
      v60 = qword_1ED84F038;
      v61 = MEMORY[0x1EEE9AC00](v58);
      *(&v95 - 2) = v97;
      MEMORY[0x1EEE9AC00](v61);
      *(&v95 - 2) = sub_1B1E07904;
      *(&v95 - 1) = v62;

      os_unfair_lock_lock(v60 + 4);
      v63 = v96;
      sub_1B1E07944(v64);
      os_unfair_lock_unlock(v60 + 4);
      v65 = v63;
      v66 = v104;

      sub_1B1F1A760();
      sub_1B1F1A760();
      v67 = v57;
      v68 = sub_1B1F1A4E0();
      v69 = sub_1B1F1AD10();

      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        v99 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        v100 = v10;
        v72 = v71;
        v105[0] = v71;
        *v70 = 136315906;
        sub_1B1DEA98C(0, &qword_1EB783618, 0x1E69AC678);
        v73 = sub_1B1F1B880();
        v75 = sub_1B1DF61DC(v73, v74, v105);

        *(v70 + 4) = v75;
        *(v70 + 12) = 2080;
        *(v70 + 14) = sub_1B1DF61DC(v102, a2, v105);
        *(v70 + 22) = 2080;
        *(v70 + 24) = sub_1B1DF61DC(v103, v66, v105);
        *(v70 + 32) = 2112;
        v76 = v59;
        v77 = _swift_stdlib_bridgeErrorToNSError();
        *(v70 + 34) = v77;
        v78 = v99;
        *v99 = v77;
        _os_log_impl(&dword_1B1DE3000, v68, v69, "Failed to load %s for %s in %s from metadata provider due to: %@", v70, 0x2Au);
        sub_1B1E08DD4(v78);
        MEMORY[0x1B273F720](v78, -1, -1);
        swift_arrayDestroy();
        MEMORY[0x1B273F720](v72, -1, -1);
        MEMORY[0x1B273F720](v70, -1, -1);

        v79 = v100;
        v80 = v65;
LABEL_22:
        v98(v80, v79);
        return;
      }

      v80 = v63;
    }

    else
    {
      v81 = v105[0];
      if (v105[0])
      {
        sub_1B1E2709C(v105[0], v55, v41);

        return;
      }

      v98 = v56;
      v82 = qword_1ED84F038;
      v83 = MEMORY[0x1EEE9AC00](v58);
      *(&v95 - 2) = v97;
      MEMORY[0x1EEE9AC00](v83);
      *(&v95 - 2) = sub_1B1E07904;
      *(&v95 - 1) = v84;

      os_unfair_lock_lock(v82 + 4);
      v85 = v99;
      sub_1B1E07944(v86);
      os_unfair_lock_unlock(v82 + 4);
      v87 = v104;

      sub_1B1F1A760();
      sub_1B1F1A760();
      v88 = sub_1B1F1A4E0();
      v89 = sub_1B1F1AD10();

      if (os_log_type_enabled(v88, v89))
      {
        v90 = swift_slowAlloc();
        v91 = swift_slowAlloc();
        v105[0] = v91;
        *v90 = 136315650;
        sub_1B1DEA98C(0, &qword_1EB783618, 0x1E69AC678);
        v92 = sub_1B1F1B880();
        v94 = sub_1B1DF61DC(v92, v93, v105);

        *(v90 + 4) = v94;
        *(v90 + 12) = 2080;
        *(v90 + 14) = sub_1B1DF61DC(v102, a2, v105);
        *(v90 + 22) = 2080;
        *(v90 + 24) = sub_1B1DF61DC(v103, v87, v105);
        _os_log_impl(&dword_1B1DE3000, v88, v89, "No %s found matching identifier %s from %s", v90, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1B273F720](v91, -1, -1);
        MEMORY[0x1B273F720](v90, -1, -1);
      }

      v80 = v85;
    }

    v79 = v10;
    goto LABEL_22;
  }

  if (qword_1ED84F030 != -1)
  {
    v23 = swift_once();
  }

  v24 = qword_1ED84F038;
  v25 = MEMORY[0x1EEE9AC00](v23);
  *(&v95 - 2) = "AppIntentsMetadata";
  MEMORY[0x1EEE9AC00](v25);
  *(&v95 - 2) = sub_1B1E07904;
  *(&v95 - 1) = v26;

  os_unfair_lock_lock(v24 + 4);
  sub_1B1E07944(v27);
  os_unfair_lock_unlock(v24 + 4);

  sub_1B1F1A760();
  v28 = v104;
  sub_1B1F1A760();
  v29 = sub_1B1F1A4E0();
  v30 = sub_1B1F1AD10();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v105[0] = v32;
    *v31 = 136315650;
    sub_1B1DEA98C(0, &qword_1EB783618, 0x1E69AC678);
    v33 = sub_1B1F1B880();
    v35 = sub_1B1DF61DC(v33, v34, v105);
    v100 = v10;
    v36 = v35;

    *(v31 + 4) = v36;
    *(v31 + 12) = 2080;
    *(v31 + 14) = sub_1B1DF61DC(v102, a2, v105);
    *(v31 + 22) = 2080;
    *(v31 + 24) = sub_1B1DF61DC(v103, v28, v105);
    _os_log_impl(&dword_1B1DE3000, v29, v30, "Not loading %s for identifier %s from %s - cache already present", v31, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1B273F720](v32, -1, -1);
    MEMORY[0x1B273F720](v31, -1, -1);

    (*(v11 + 8))(v22, v100);
  }

  else
  {

    (*(v11 + 8))(v22, v10);
  }
}

void sub_1B1E287FC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v104 = a4;
  v10 = sub_1B1F1A500();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v99 = &v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v95 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v95 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v95 - v21;
  v102 = a1;
  v103 = a3;
  v23 = sub_1B1E26DC4(a1, a2, a3, a4, sub_1B1E2D064, sub_1B1E2D064, sub_1B1E0E2B8, sub_1B1E0E2BC);
  if ((v23 & 1) == 0)
  {
    v101 = v11;
    v96 = v17;
    if (qword_1ED84F030 != -1)
    {
      v23 = swift_once();
    }

    v37 = qword_1ED84F038;
    v38 = MEMORY[0x1EEE9AC00](v23);
    v97 = "AppIntentsMetadata";
    *(&v95 - 2) = "AppIntentsMetadata";
    MEMORY[0x1EEE9AC00](v38);
    *(&v95 - 2) = sub_1B1E07904;
    *(&v95 - 1) = v39;

    os_unfair_lock_lock(v37 + 4);
    sub_1B1E07944(v40);
    v98 = 0;
    os_unfair_lock_unlock(v37 + 4);

    sub_1B1F1A760();
    v41 = v104;
    sub_1B1F1A760();
    v42 = sub_1B1F1A4E0();
    v43 = sub_1B1F1AD30();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v100 = v10;
      v46 = v45;
      v105[0] = v45;
      *v44 = 136315650;
      sub_1B1DEA98C(0, &qword_1EB783610, 0x1E69AC7F8);
      v47 = sub_1B1F1B880();
      v49 = sub_1B1DF61DC(v47, v48, v105);

      *(v44 + 4) = v49;
      *(v44 + 12) = 2080;
      v50 = v102;
      *(v44 + 14) = sub_1B1DF61DC(v102, a2, v105);
      *(v44 + 22) = 2080;
      v51 = a2;
      v52 = v103;
      v41 = v104;
      *(v44 + 24) = sub_1B1DF61DC(v103, v104, v105);
      _os_log_impl(&dword_1B1DE3000, v42, v43, "Loading %s %s from %s", v44, 0x20u);
      swift_arrayDestroy();
      v53 = v46;
      v10 = v100;
      MEMORY[0x1B273F720](v53, -1, -1);
      v54 = v44;
      v55 = v52;
      a2 = v51;
      MEMORY[0x1B273F720](v54, -1, -1);

      v56 = *(v101 + 8);
      v56(v20, v10);
    }

    else
    {

      v56 = *(v101 + 8);
      v56(v20, v10);
      v50 = v102;
      v55 = v103;
    }

    v57 = v98;
    v58 = (*(*v5 + 384))(v105, v50, a2, v55, v41);
    v59 = v57;
    if (v57)
    {
      v98 = v56;
      v60 = qword_1ED84F038;
      v61 = MEMORY[0x1EEE9AC00](v58);
      *(&v95 - 2) = v97;
      MEMORY[0x1EEE9AC00](v61);
      *(&v95 - 2) = sub_1B1E07904;
      *(&v95 - 1) = v62;

      os_unfair_lock_lock(v60 + 4);
      v63 = v96;
      sub_1B1E07944(v64);
      os_unfair_lock_unlock(v60 + 4);
      v65 = v63;
      v66 = v104;

      sub_1B1F1A760();
      sub_1B1F1A760();
      v67 = v57;
      v68 = sub_1B1F1A4E0();
      v69 = sub_1B1F1AD10();

      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        v99 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        v100 = v10;
        v72 = v71;
        v105[0] = v71;
        *v70 = 136315906;
        sub_1B1DEA98C(0, &qword_1EB783610, 0x1E69AC7F8);
        v73 = sub_1B1F1B880();
        v75 = sub_1B1DF61DC(v73, v74, v105);

        *(v70 + 4) = v75;
        *(v70 + 12) = 2080;
        *(v70 + 14) = sub_1B1DF61DC(v102, a2, v105);
        *(v70 + 22) = 2080;
        *(v70 + 24) = sub_1B1DF61DC(v103, v66, v105);
        *(v70 + 32) = 2112;
        v76 = v59;
        v77 = _swift_stdlib_bridgeErrorToNSError();
        *(v70 + 34) = v77;
        v78 = v99;
        *v99 = v77;
        _os_log_impl(&dword_1B1DE3000, v68, v69, "Failed to load %s for %s in %s from metadata provider due to: %@", v70, 0x2Au);
        sub_1B1E08DD4(v78);
        MEMORY[0x1B273F720](v78, -1, -1);
        swift_arrayDestroy();
        MEMORY[0x1B273F720](v72, -1, -1);
        MEMORY[0x1B273F720](v70, -1, -1);

        v79 = v100;
        v80 = v65;
LABEL_22:
        v98(v80, v79);
        return;
      }

      v80 = v63;
    }

    else
    {
      v81 = v105[0];
      if (v105[0])
      {
        sub_1B1E2744C(v105[0], v55, v41);

        return;
      }

      v98 = v56;
      v82 = qword_1ED84F038;
      v83 = MEMORY[0x1EEE9AC00](v58);
      *(&v95 - 2) = v97;
      MEMORY[0x1EEE9AC00](v83);
      *(&v95 - 2) = sub_1B1E07904;
      *(&v95 - 1) = v84;

      os_unfair_lock_lock(v82 + 4);
      v85 = v99;
      sub_1B1E07944(v86);
      os_unfair_lock_unlock(v82 + 4);
      v87 = v104;

      sub_1B1F1A760();
      sub_1B1F1A760();
      v88 = sub_1B1F1A4E0();
      v89 = sub_1B1F1AD10();

      if (os_log_type_enabled(v88, v89))
      {
        v90 = swift_slowAlloc();
        v91 = swift_slowAlloc();
        v105[0] = v91;
        *v90 = 136315650;
        sub_1B1DEA98C(0, &qword_1EB783610, 0x1E69AC7F8);
        v92 = sub_1B1F1B880();
        v94 = sub_1B1DF61DC(v92, v93, v105);

        *(v90 + 4) = v94;
        *(v90 + 12) = 2080;
        *(v90 + 14) = sub_1B1DF61DC(v102, a2, v105);
        *(v90 + 22) = 2080;
        *(v90 + 24) = sub_1B1DF61DC(v103, v87, v105);
        _os_log_impl(&dword_1B1DE3000, v88, v89, "No %s found matching identifier %s from %s", v90, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1B273F720](v91, -1, -1);
        MEMORY[0x1B273F720](v90, -1, -1);
      }

      v80 = v85;
    }

    v79 = v10;
    goto LABEL_22;
  }

  if (qword_1ED84F030 != -1)
  {
    v23 = swift_once();
  }

  v24 = qword_1ED84F038;
  v25 = MEMORY[0x1EEE9AC00](v23);
  *(&v95 - 2) = "AppIntentsMetadata";
  MEMORY[0x1EEE9AC00](v25);
  *(&v95 - 2) = sub_1B1E07904;
  *(&v95 - 1) = v26;

  os_unfair_lock_lock(v24 + 4);
  sub_1B1E07944(v27);
  os_unfair_lock_unlock(v24 + 4);

  sub_1B1F1A760();
  v28 = v104;
  sub_1B1F1A760();
  v29 = sub_1B1F1A4E0();
  v30 = sub_1B1F1AD10();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v105[0] = v32;
    *v31 = 136315650;
    sub_1B1DEA98C(0, &qword_1EB783610, 0x1E69AC7F8);
    v33 = sub_1B1F1B880();
    v35 = sub_1B1DF61DC(v33, v34, v105);
    v100 = v10;
    v36 = v35;

    *(v31 + 4) = v36;
    *(v31 + 12) = 2080;
    *(v31 + 14) = sub_1B1DF61DC(v102, a2, v105);
    *(v31 + 22) = 2080;
    *(v31 + 24) = sub_1B1DF61DC(v103, v28, v105);
    _os_log_impl(&dword_1B1DE3000, v29, v30, "Not loading %s for identifier %s from %s - cache already present", v31, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1B273F720](v32, -1, -1);
    MEMORY[0x1B273F720](v31, -1, -1);

    (*(v11 + 8))(v22, v100);
  }

  else
  {

    (*(v11 + 8))(v22, v10);
  }
}

id sub_1B1E29394()
{
  v2 = *MEMORY[0x1E69E9840];
  result = sub_1B1E29870(&selRef_actionsWithError_, &qword_1EB784700, &qword_1B1F2CC38);
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t *sub_1B1E293F8(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x1E69E9840];
  result = sub_1B1E295B4(a1, a2, &selRef_actionsForBundleIdentifier_error_, &qword_1EB783618, 0x1E69AC678);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B1E2945C@<X0>(uint64_t *a1@<X8>)
{
  sub_1B1DEA98C(0, &qword_1EB783618, 0x1E69AC678);
  result = sub_1B1F1A730();
  *a1 = result;
  return result;
}

id sub_1B1E294B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  result = sub_1B1E296B0(a1, a2, a3, a4, &selRef_actionForBundleIdentifier_andActionIdentifier_error_);
  if (!v5)
  {
    *a5 = result;
  }

  return result;
}

id sub_1B1E294EC()
{
  v2 = *MEMORY[0x1E69E9840];
  result = sub_1B1E29870(&selRef_entitiesWithError_, &qword_1EB7846F8, &qword_1B1F2CC30);
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t *sub_1B1E29550(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x1E69E9840];
  result = sub_1B1E295B4(a1, a2, &selRef_entitiesForBundleIdentifier_error_, &qword_1EB783610, 0x1E69AC7F8);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t *sub_1B1E295B4(uint64_t a1, uint64_t a2, SEL *a3, unint64_t *a4, uint64_t *a5)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v9 = *(v5 + 56);
  v10 = sub_1B1F1A860();
  v17[0] = 0;
  v11 = [v9 *a3];

  v12 = v17[0];
  if (v11)
  {
    sub_1B1DEA98C(0, a4, a5);
    OUTLINED_FUNCTION_31_0();
    a5 = sub_1B1F1A9B0();
    v13 = v12;
  }

  else
  {
    v14 = v17[0];
    sub_1B1F1A1C0();

    swift_willThrow();
  }

  v15 = *MEMORY[0x1E69E9840];
  return a5;
}

id sub_1B1E296B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v7 = *(v5 + 56);
  v8 = sub_1B1F1A860();
  v9 = sub_1B1F1A860();
  v15[0] = 0;
  v10 = [v7 *a5];

  v11 = v15[0];
  if (!v10)
  {
    v12 = v11;
    sub_1B1F1A1C0();

    swift_willThrow();
  }

  v13 = *MEMORY[0x1E69E9840];
  return v10;
}

void *sub_1B1E297A0()
{
  v0 = sub_1B1E26814();
  v1 = v0[6];

  return v0;
}

id sub_1B1E297D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  result = sub_1B1E296B0(a1, a2, a3, a4, &selRef_entityForBundleIdentifier_withEntityIdentifier_error_);
  if (!v5)
  {
    *a5 = result;
  }

  return result;
}

id sub_1B1E2980C()
{
  v2 = *MEMORY[0x1E69E9840];
  result = sub_1B1E29870(&selRef_enumsWithError_, &qword_1EB7846F0, &qword_1B1F2CC28);
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

id sub_1B1E29870(SEL *a1, uint64_t *a2, uint64_t *a3)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v6 = *(v3 + 56);
  v14[0] = 0;
  v7 = [v6 *a1];
  v8 = v14[0];
  if (v7)
  {
    v9 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v10 = sub_1B1F1A710();
    v11 = v8;
  }

  else
  {
    v10 = v14[0];
    sub_1B1F1A1C0();

    swift_willThrow();
  }

  v12 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t *sub_1B1E29968(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x1E69E9840];
  result = sub_1B1E295B4(a1, a2, &selRef_enumsForBundleIdentifier_error_, &qword_1EB783628, 0x1E69AC838);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *sub_1B1E299CC()
{
  v31[1] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 56);
  v31[0] = 0;
  v2 = [v1 queriesWithError_];
  v3 = v31[0];
  if (v2)
  {
    v4 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7846C0, &qword_1B1F2CBE8);
    v5 = sub_1B1F1A710();
    v6 = v3;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7846E0, &qword_1B1F2CC18);
    v7 = sub_1B1F1B120();
    v3 = v7;
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v5 + 64;
    v12 = v10 & *(v5 + 64);
    v13 = (v9 + 63) >> 6;
    v28 = v7 + 64;
    v29 = v5;
    if (v12)
    {
      goto LABEL_5;
    }

LABEL_6:
    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_18;
      }

      if (v8 >= v13)
      {
        break;
      }

      v16 = *(v11 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        while (2)
        {
          v17 = v14 | (v8 << 6);
          v18 = (*(v29 + 48) + 16 * v17);
          v19 = *v18;
          v20 = v18[1];
          v31[0] = *(*(v29 + 56) + 8 * v17);
          sub_1B1F1A760();
          sub_1B1E29C14(v31, &v30);
          *(v28 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
          v21 = (v3[6] + 16 * v17);
          *v21 = v19;
          v21[1] = v20;
          *(v3[7] + 8 * v17) = v30;
          v22 = v3[2];
          v23 = __OFADD__(v22, 1);
          v24 = v22 + 1;
          if (!v23)
          {
            v3[2] = v24;
            if (!v12)
            {
              goto LABEL_6;
            }

LABEL_5:
            v14 = __clz(__rbit64(v12));
            v12 &= v12 - 1;
            continue;
          }

          break;
        }

LABEL_18:
        __break(1u);
      }
    }
  }

  else
  {
    v25 = v31[0];
    sub_1B1F1A1C0();

    swift_willThrow();
  }

  v26 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t sub_1B1E29C14@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = v2 + 64;
  v4 = 1 << *(v2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v2 + 64);
  v7 = (v4 + 63) >> 6;
  v31 = v2;
  sub_1B1F1A760();
  v8 = 0;
  v9 = MEMORY[0x1E69E7CC8];
  v29 = v7;
  v30 = v3;
  if (v6)
  {
LABEL_8:
    while (1)
    {
      v11 = *(*(v31 + 56) + ((v8 << 9) | (8 * __clz(__rbit64(v6)))));
      v12 = LNQueryMetadata.uniqueIdentifier.getter();
      v14 = v13;
      v32 = v11;
      swift_isUniquelyReferenced_nonNull_native();
      v15 = sub_1B1DEBED8();
      if (__OFADD__(v9[2], (v16 & 1) == 0))
      {
        break;
      }

      v17 = v15;
      v18 = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7841B8, &qword_1B1F2B150);
      if (sub_1B1F1B0C0())
      {
        v19 = sub_1B1DEBED8();
        if ((v18 & 1) != (v20 & 1))
        {
          goto LABEL_22;
        }

        v17 = v19;
      }

      if (v18)
      {

        v21 = v9[7];
        v22 = *(v21 + 8 * v17);
        *(v21 + 8 * v17) = v32;
      }

      else
      {
        v9[(v17 >> 6) + 8] |= 1 << v17;
        v23 = (v9[6] + 16 * v17);
        *v23 = v12;
        v23[1] = v14;
        *(v9[7] + 8 * v17) = v32;

        v24 = v9[2];
        v25 = __OFADD__(v24, 1);
        v26 = v24 + 1;
        if (v25)
        {
          goto LABEL_21;
        }

        v9[2] = v26;
      }

      v6 &= v6 - 1;
      v7 = v29;
      v3 = v30;
      if (!v6)
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
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v10 >= v7)
      {

        *a2 = v9;
        return result;
      }

      v6 = *(v3 + 8 * v10);
      ++v8;
      if (v6)
      {
        v8 = v10;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = sub_1B1F1B720();
  __break(1u);
  return result;
}

uint64_t sub_1B1E29E48()
{
  v10[1] = *MEMORY[0x1E69E9840];
  v2 = *(v0 + 56);
  v3 = sub_1B1F1A860();
  v10[0] = 0;
  v4 = [v2 queriesForBundleIdentifier:v3 ofType:0 error:v10];

  v5 = v10[0];
  if (v4)
  {
    sub_1B1DEA98C(0, &qword_1EB783620, 0x1E69AC988);
    v1 = sub_1B1F1A9B0();
    v6 = v5;
  }

  else
  {
    v7 = v10[0];
    sub_1B1F1A1C0();

    swift_willThrow();
  }

  v8 = *MEMORY[0x1E69E9840];
  return v1;
}

uint64_t sub_1B1E29F44(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1B1E26874(a1, a2, a3);
  swift_beginAccess();
  v6 = *(v3 + 64);
  sub_1B1F1A760();
  v23 = a3;
  v7 = sub_1B1E0E2B8(a2, a3, v6);

  if (v7)
  {
    v9 = 0;
    v10 = 1 << *(v7 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v7 + 64);
    for (i = (v10 + 63) >> 6; v12; result = )
    {
      v14 = v9;
LABEL_10:
      v15 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v16 = v15 | (v14 << 6);
      v17 = (*(v7 + 48) + 16 * v16);
      v18 = *v17;
      v19 = v17[1];
      v20 = *(*(v7 + 56) + 8 * v16);
      sub_1B1F1A760();
      v21 = sub_1B1F1A760();
      v22 = sub_1B1E25794(v21);
      sub_1B1E2A4E0(v22, v18, v19, a2, v23);
    }

    while (1)
    {
      v14 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v14 >= i)
      {
      }

      v12 = *(v7 + 64 + 8 * v14);
      ++v9;
      if (v12)
      {
        v9 = v14;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B1E2A0AC()
{
  sub_1B1E26D38(sub_1B1E25B54, &qword_1EB7846C0, &qword_1B1F2CBE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7846C0, &qword_1B1F2CBE8);
  v1 = sub_1B1F1A730();
  swift_beginAccess();
  v2 = *(v0 + 72);
  *(v0 + 72) = v1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7846D0, &qword_1B1F2CBF8);
  v3 = sub_1B1F1A730();
  swift_beginAccess();
  v4 = *(v0 + 64);
  *(v0 + 64) = v3;
}

uint64_t sub_1B1E2A1B8(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_1B1E27280(a1, a2, a3);
  v8 = [a1 entityType];
  v37 = sub_1B1F1A890();
  v10 = v9;

  v11 = [a1 identifier];
  sub_1B1F1A890();

  swift_beginAccess();
  v12 = *(v4 + 64);
  swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v4 + 64);
  *(v4 + 64) = 0x8000000000000000;
  v14 = sub_1B1DEBED8();
  if (__OFADD__(*(v13 + 16), (v15 & 1) == 0))
  {
    __break(1u);
    goto LABEL_16;
  }

  v16 = v14;
  v17 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7846B8, &qword_1B1F2CBE0);
  if (sub_1B1F1B0C0())
  {
    v18 = sub_1B1DEBED8();
    if ((v17 & 1) != (v19 & 1))
    {
      goto LABEL_17;
    }

    v16 = v18;
  }

  *(v4 + 64) = v13;
  if ((v17 & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7846C0, &qword_1B1F2CBE8);
    v20 = sub_1B1F1A730();
    sub_1B1E2B6B4(v16, a2, a3, v20, v13);
    sub_1B1F1A760();
  }

  v21 = *(v13 + 56);
  v22 = *(v21 + 8 * v16);
  swift_isUniquelyReferenced_nonNull_native();
  v23 = *(v21 + 8 * v16);
  *(v21 + 8 * v16) = 0x8000000000000000;
  v24 = sub_1B1DEBED8();
  if (__OFADD__(*(v23 + 16), (v25 & 1) == 0))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v26 = v24;
  v27 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7846C8, &qword_1B1F2CBF0);
  if (sub_1B1F1B0C0())
  {
    v28 = sub_1B1DEBED8();
    if ((v27 & 1) == (v29 & 1))
    {
      v26 = v28;
      goto LABEL_11;
    }

LABEL_17:
    result = sub_1B1F1B720();
    __break(1u);
    return result;
  }

LABEL_11:
  v30 = *(v21 + 8 * v16);
  *(v21 + 8 * v16) = v23;

  v31 = *(v21 + 8 * v16);
  if (v27)
  {
  }

  else
  {
    sub_1B1DEA98C(0, &qword_1EB783620, 0x1E69AC988);
    v32 = sub_1B1F1A730();
    sub_1B1E2B6B4(v26, v37, v10, v32, v31);
  }

  v33 = *(v31 + 56);
  v34 = a1;
  v35 = *(v33 + 8 * v26);
  swift_isUniquelyReferenced_nonNull_native();
  v38 = *(v33 + 8 * v26);
  sub_1B1E0DB54();
  *(v33 + 8 * v26) = v38;

  return swift_endAccess();
}

void sub_1B1E2A4E0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v9 = a1;
  v10 = sub_1B1E2AC98(a1);
  for (i = 0; ; ++i)
  {
    if (v10 == i)
    {
      v14 = sub_1B1F1A760();
      v40[0] = sub_1B1E2C8C8(v14);
      sub_1B1E2B83C(v40);
      v9 = v40[0];
      if (!sub_1B1E2AC98(v40[0]))
      {

        v16 = 0;
        goto LABEL_23;
      }

      if ((v9 & 0xC000000000000001) != 0)
      {
        goto LABEL_37;
      }

      if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v15 = *(v9 + 32);
        goto LABEL_14;
      }

      __break(1u);

      __break(1u);
      goto LABEL_39;
    }

    if ((v9 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x1B273D840](i, v9);
    }

    else
    {
      if (i >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_34;
      }

      v12 = *(v9 + 8 * i + 32);
    }

    v13 = v12;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    if ([v12 defaultQueryForEntity])
    {
      break;
    }
  }

  swift_beginAccess();
  v17 = *(v6 + 72);
  swift_isUniquelyReferenced_nonNull_native();
  v39 = *(v6 + 72);
  v9 = v39;
  *(v6 + 72) = 0x8000000000000000;
  v18 = sub_1B1DEBED8();
  if (__OFADD__(*(v9 + 16), (v19 & 1) == 0))
  {
    while (1)
    {
      __break(1u);
LABEL_37:
      v15 = MEMORY[0x1B273D840](0, v9);
LABEL_14:
      v16 = v15;

LABEL_23:
      swift_beginAccess();
      v27 = *(v6 + 72);
      swift_isUniquelyReferenced_nonNull_native();
      v39 = *(v6 + 72);
      v9 = v39;
      *(v6 + 72) = 0x8000000000000000;
      v28 = sub_1B1DEBED8();
      if (!__OFADD__(*(v9 + 16), (v29 & 1) == 0))
      {
        break;
      }

LABEL_35:
      __break(1u);
    }

    v30 = v28;
    v31 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7846C8, &qword_1B1F2CBF0);
    v32 = v39;
    if (sub_1B1F1B0C0())
    {
      v33 = sub_1B1DEBED8();
      if ((v31 & 1) != (v34 & 1))
      {
        goto LABEL_39;
      }

      v30 = v33;
    }

    *(v6 + 72) = v39;
    if ((v31 & 1) == 0)
    {
      sub_1B1DFD9C8(&v39);
      sub_1B1E2B6B4(v30, a4, a5, v39, v32);
      sub_1B1F1A760();
    }

    v35 = (*(v32 + 56) + 8 * v30);
    if (v16)
    {
      v16 = v16;
      v36 = *v35;
      swift_isUniquelyReferenced_nonNull_native();
      v39 = *v35;
      sub_1B1E0DB54();
      *v35 = v39;
    }

    else
    {
    }

    goto LABEL_32;
  }

  v20 = v18;
  v21 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7846C8, &qword_1B1F2CBF0);
  v22 = v39;
  if ((sub_1B1F1B0C0() & 1) == 0)
  {
    goto LABEL_19;
  }

  v23 = sub_1B1DEBED8();
  if ((v21 & 1) == (v24 & 1))
  {
    v20 = v23;
LABEL_19:
    *(v6 + 72) = v39;
    if ((v21 & 1) == 0)
    {
      sub_1B1DFD9C8(&v39);
      sub_1B1E2B6B4(v20, a4, a5, v39, v22);
      sub_1B1F1A760();
    }

    v25 = *(v22 + 56);
    v16 = v13;
    v26 = *(v25 + 8 * v20);
    swift_isUniquelyReferenced_nonNull_native();
    v39 = *(v25 + 8 * v20);
    sub_1B1E0DB54();
    *(v25 + 8 * v20) = v39;
LABEL_32:
    swift_endAccess();

    return;
  }

LABEL_39:
  sub_1B1F1B720();
  __break(1u);
}

uint64_t sub_1B1E2A8C8()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 72);
}

void *sub_1B1E2A900()
{
  v0 = sub_1B1E26814();
  v1 = v0[6];

  v2 = v0[8];

  v3 = v0[9];

  return v0;
}

uint64_t sub_1B1E2A948()
{
  v0 = sub_1B1E2A900();

  return MEMORY[0x1EEE6BDC0](v0, 80, 7);
}

uint64_t sub_1B1E2A980()
{
  v10[1] = *MEMORY[0x1E69E9840];
  v2 = *(v0 + 48);
  v3 = sub_1B1F1A860();
  v10[0] = 0;
  v4 = [v2 examplePhrasesForBundleIdentifier:v3 error:v10];

  v5 = v10[0];
  if (v4)
  {
    sub_1B1DEA98C(0, &qword_1EB7835D8, 0x1E69AC840);
    v1 = sub_1B1F1A9B0();
    v6 = v5;
  }

  else
  {
    v7 = v10[0];
    sub_1B1F1A1C0();

    swift_willThrow();
  }

  v8 = *MEMORY[0x1E69E9840];
  return v1;
}

uint64_t sub_1B1E2AA80()
{
  v0 = sub_1B1E26814();

  return MEMORY[0x1EEE6BDC0](v0, 56, 7);
}

uint64_t sub_1B1E2AAC8(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    if (result)
    {
      sub_1B1DEA98C(0, &qword_1EB783620, 0x1E69AC988);
      result = sub_1B1F1A9E0();
      *((result & 0xFFFFFFFFFFFFFF8) + 0x10) = v1;
    }

    else
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return result;
}

uint64_t sub_1B1E2AB94(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1B1E2AC50(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

uint64_t sub_1B1E2AC98(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_1B1F1B110();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

char *sub_1B1E2ACBC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB783F38, &qword_1B1F2CC10);
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

void sub_1B1E2ADC4()
{
  OUTLINED_FUNCTION_30_0();
  if (v5)
  {
    OUTLINED_FUNCTION_9_4();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_29_0();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_8_4();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_17_2(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785B00, &qword_1B1F35170);
    v9 = swift_allocObject();
    v10 = _swift_stdlib_malloc_size(v9);
    *(v9 + 2) = v2;
    *(v9 + 3) = 2 * ((v10 - 32) / 32);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[32 * v2] <= v11)
    {
      memmove(v11, v12, 32 * v2);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

char *sub_1B1E2AEB0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7847B8, &unk_1B1F2CCE0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1B1E2AFB8()
{
  OUTLINED_FUNCTION_30_0();
  if (v5)
  {
    OUTLINED_FUNCTION_9_4();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_29_0();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_8_4();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_17_2(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7843F8, &qword_1B1F2B720);
    v9 = swift_allocObject();
    v10 = _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_26_0(v10);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  if (v1)
  {
    if (v9 != v0 || &v0[40 * v2 + 32] <= v9 + 32)
    {
      v12 = OUTLINED_FUNCTION_25_0();
      memmove(v12, v13, v14);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784448, &qword_1B1F2BFE0);
    OUTLINED_FUNCTION_25_0();
    swift_arrayInitWithCopy();
  }
}

void *sub_1B1E2B0BC(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7847C8, &qword_1B1F2CCF8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[2 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7847D0, &unk_1B1F2CD00);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1B1E2B1EC()
{
  OUTLINED_FUNCTION_30_0();
  if (v3)
  {
    OUTLINED_FUNCTION_9_4();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_29_0();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_8_4();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7846E8, &qword_1B1F2CC20);
    v9 = swift_allocObject();
    _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_27_0();
    *(v9 + 2) = v7;
    *(v9 + 3) = v10;
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v7] <= v11)
    {
      memmove(v11, v12, 16 * v7);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v11, v12, 16 * v7);
  }
}

void sub_1B1E2B2C8()
{
  OUTLINED_FUNCTION_30_0();
  if (v5)
  {
    OUTLINED_FUNCTION_9_4();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_29_0();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_8_4();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_17_2(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7847C0, &qword_1B1F2CCF0);
    v9 = swift_allocObject();
    v10 = _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_26_0(v10);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[24 * v2] <= v11)
    {
      memmove(v11, v12, 24 * v2);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void *sub_1B1E2B3B4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB783F38, &qword_1B1F2CC10);
  v4 = swift_allocObject();
  _swift_stdlib_malloc_size(v4);
  OUTLINED_FUNCTION_27_0();
  v4[2] = a1;
  v4[3] = v5;
  return v4;
}

void *sub_1B1E2B424(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB783F10, &unk_1B1F2A660);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = (2 * ((v5 - 32) / 8)) | 1;
  return v4;
}

char *sub_1B1E2B4A4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_10(a3, result);
  }

  return result;
}

char *sub_1B1E2B4C4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_10(a3, result);
  }

  return result;
}

char *sub_1B1E2B4E8(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[48 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_10(a3, result);
  }

  return result;
}

char *sub_1B1E2B510(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[32 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_10(a3, result);
  }

  return result;
}

unint64_t sub_1B1E2B53C(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B1E2B560(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5, uint64_t *a6)
{
  v11 = v6;
  v12 = *v6;
  v13 = sub_1B1DEBED8();
  if ((v14 & 1) == 0)
  {
    return 0;
  }

  v15 = v13;
  v16 = *v11;
  swift_isUniquelyReferenced_nonNull_native();
  v21 = *v11;
  v17 = *(*v11 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  sub_1B1F1B0C0();
  v18 = *(*(v21 + 48) + 16 * v15 + 8);

  v19 = *(*(v21 + 56) + 8 * v15);
  sub_1B1DEA98C(0, a5, a6);
  OUTLINED_FUNCTION_25_0();
  sub_1B1F1B0D0();
  *v11 = v21;
  return v19;
}

_OWORD *sub_1B1E2B670(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = OUTLINED_FUNCTION_1_9(a1, a2, a3, a4, a5);
  result = sub_1B1E077D8(v8, (v7 + 32 * v6));
  v10 = *(a5 + 16);
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v12;
  }

  return result;
}

void sub_1B1E2B6B4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = OUTLINED_FUNCTION_1_9(a1, a2, a3, a4, a5);
  *(v8 + 8 * v5) = v7;
  v9 = *(v6 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_16_2(v6, v11);
  }
}

void sub_1B1E2B6E0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = OUTLINED_FUNCTION_1_9(a1, a2, a3, a4, a5);
  *(v8 + v5) = v7;
  v9 = *(v6 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_16_2(v6, v11);
  }
}

uint64_t sub_1B1E2B70C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = OUTLINED_FUNCTION_7_4(a1, a8 + 8 * (a1 >> 6));
  v10 = (v9[6] + 16 * result);
  *v10 = v11;
  v10[1] = v12;
  v13 = (v9[7] + 32 * result);
  *v13 = v14;
  v13[1] = v15;
  v13[2] = v16;
  v13[3] = v17;
  v18 = v9[2];
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    v9[2] = v20;
  }

  return result;
}

uint64_t sub_1B1E2B75C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = OUTLINED_FUNCTION_7_4(a1, a6 + 8 * (a1 >> 6));
  v8 = (v7[6] + 16 * result);
  *v8 = v9;
  v8[1] = v10;
  v11 = (v7[7] + 16 * result);
  *v11 = v12;
  v11[1] = v13;
  v14 = v7[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    v7[2] = v16;
  }

  return result;
}

void (*sub_1B1E2B7A8(void *a1, unint64_t a2, uint64_t a3))(id *a1)
{
  v6 = sub_1B1E2B530(a3);
  sub_1B1E2B53C(a2, v6, a3);
  if (v6)
  {
    v7 = *(a3 + 8 * a2 + 32);
  }

  else
  {
    v7 = MEMORY[0x1B273D840](a2, a3);
  }

  *a1 = v7;
  return sub_1B1E2B834;
}

uint64_t sub_1B1E2B83C(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1B1E2CAF4(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1B1E2B8B8(v6);
  return sub_1B1F1B030();
}

void sub_1B1E2B8B8(uint64_t *a1)
{
  v3 = a1[1];
  v4 = sub_1B1F1B2F0();
  if (v4 < v3)
  {
    v5 = v4;
    v6 = sub_1B1E2AAC8(v3 / 2);
    v8[0] = v7;
    v8[1] = (v3 / 2);
    sub_1B1E2BB10(v8, v9, a1, v5);
    if (v1)
    {
      if (v3 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v3 < -1)
    {
LABEL_12:
      __break(1u);
      return;
    }

    *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

    return;
  }

LABEL_5:
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v3)
  {
    sub_1B1E2B998(0, v3, 1, a1);
  }
}

uint64_t sub_1B1E2B998(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v26 = *a4;
    v4 = *a4 + 8 * a3 - 8;
    v5 = result - a3;
    while (2)
    {
      v24 = v4;
      v25 = a3;
      v6 = *(v26 + 8 * a3);
      v23 = v5;
      while (1)
      {
        v7 = *v4;
        v8 = v6;
        v9 = v7;
        v10 = [v8 identifier];
        v11 = sub_1B1F1A890();
        v13 = v12;

        v14 = [v9 identifier];
        v15 = sub_1B1F1A890();
        v17 = v16;

        if (v11 == v15 && v13 == v17)
        {
          break;
        }

        v19 = sub_1B1F1B510();

        if (v19)
        {
          if (!v26)
          {
            __break(1u);
            return result;
          }

          v20 = *v4;
          v6 = *(v4 + 8);
          *v4 = v6;
          *(v4 + 8) = v20;
          v4 -= 8;
          if (!__CFADD__(v5++, 1))
          {
            continue;
          }
        }

        goto LABEL_14;
      }

LABEL_14:
      a3 = v25 + 1;
      v4 = v24 + 8;
      v5 = v23 - 1;
      if (v25 + 1 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1B1E2BB10(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a3[1];
  if (v4 < 1)
  {
    v6 = MEMORY[0x1E69E7CC0];
LABEL_106:
    v7 = *a1;
    if (!*a1)
    {
      goto LABEL_147;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_108:
      v127 = v6;
      v107 = *(v6 + 2);
      v6 += 16;
      for (i = v107; i >= 2; *v6 = i)
      {
        if (!*a3)
        {
          goto LABEL_144;
        }

        v108 = &v127[16 * i];
        v109 = *v108;
        v110 = &v6[16 * i];
        v111 = *(v110 + 1);
        sub_1B1E2C2DC((*a3 + 8 * *v108), (*a3 + 8 * *v110), (*a3 + 8 * v111), v7);
        if (v123)
        {
          break;
        }

        if (v111 < v109)
        {
          goto LABEL_132;
        }

        if (i - 2 >= *v6)
        {
          goto LABEL_133;
        }

        *v108 = v109;
        *(v108 + 1) = v111;
        v112 = *v6 - i;
        if (*v6 < i)
        {
          goto LABEL_134;
        }

        v123 = 0;
        i = *v6 - 1;
        memmove(v110, v110 + 16, 16 * v112);
      }

LABEL_116:

      return;
    }

LABEL_141:
    v6 = sub_1B1E2C634(v6);
    goto LABEL_108;
  }

  v5 = 0;
  v6 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v7 = v5;
    v8 = v5 + 1;
    if (v5 + 1 < v4)
    {
      v118 = v4;
      v124 = v6;
      v9 = *a3;
      v115 = v5;
      v10 = *(*a3 + 8 * v5);
      v11 = *(*a3 + 8 * v8);
      v12 = v10;
      v13 = [v11 identifier];
      v14 = sub_1B1F1A890();
      v16 = v15;

      v17 = [v12 identifier];
      v18 = sub_1B1F1A890();
      v7 = v19;

      if (v14 == v18 && v16 == v7)
      {
        v120 = 0;
      }

      else
      {
        v120 = sub_1B1F1B510();
      }

      v21 = (v9 + 8 * v115 + 16);
      v22 = 8 * v115 + 8;
      do
      {
        v23 = v8;
        v6 = v22;
        if (++v8 >= v118)
        {
          break;
        }

        v128 = v8;
        v24 = *(v21 - 1);
        v25 = *v21;
        v26 = v24;
        v131 = v25;
        v27 = [v25 identifier];
        v28 = sub_1B1F1A890();
        v30 = v29;

        v31 = [v26 identifier];
        v32 = sub_1B1F1A890();
        v34 = v33;

        v35 = v28 == v32 && v30 == v34;
        v7 = v35 ? 0 : sub_1B1F1B510();

        ++v21;
        v22 = (v6 + 8);
        v8 = v128;
      }

      while (((v120 ^ v7) & 1) == 0);
      if (v120)
      {
        v36 = v115;
        if (v8 < v115)
        {
          goto LABEL_138;
        }

        if (v115 >= v8)
        {
          v6 = v124;
          v7 = v115;
          goto LABEL_29;
        }

        v37 = 8 * v115;
        do
        {
          if (v36 != v23)
          {
            v38 = *a3;
            if (!*a3)
            {
              goto LABEL_145;
            }

            v39 = *(v38 + v37);
            *(v38 + v37) = *&v6[v38];
            *&v6[v38] = v39;
          }

          v36 = (v36 + 1);
          v6 -= 8;
          v37 += 8;
        }

        while (v36 < v23--);
      }

      v6 = v124;
      v7 = v115;
    }

LABEL_29:
    v41 = a3[1];
    if (v8 < v41)
    {
      if (__OFSUB__(v8, v7))
      {
        goto LABEL_137;
      }

      if (v8 - v7 < a4)
      {
        break;
      }
    }

LABEL_51:
    if (v8 < v7)
    {
      goto LABEL_136;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v103 = *(v6 + 2);
      sub_1B1E2B1EC();
      v6 = v104;
    }

    v62 = v6;
    v63 = *(v6 + 2);
    v126 = v62;
    v64 = v63 + 1;
    if (v63 >= *(v62 + 3) >> 1)
    {
      sub_1B1E2B1EC();
      v126 = v105;
    }

    *(v126 + 2) = v64;
    v65 = v126 + 32;
    v66 = &v126[16 * v63 + 32];
    *v66 = v7;
    v66[1] = v8;
    v67 = *a1;
    if (!*a1)
    {
      goto LABEL_146;
    }

    v130 = v8;
    if (v63)
    {
      v6 = v126;
      while (1)
      {
        v68 = v64 - 1;
        v69 = &v65[16 * v64 - 16];
        v70 = &v6[16 * v64];
        if (v64 >= 4)
        {
          break;
        }

        if (v64 == 3)
        {
          v71 = *(v6 + 4);
          v72 = *(v6 + 5);
          v81 = __OFSUB__(v72, v71);
          v73 = v72 - v71;
          v74 = v81;
LABEL_72:
          if (v74)
          {
            goto LABEL_123;
          }

          v86 = *v70;
          v85 = *(v70 + 1);
          v87 = __OFSUB__(v85, v86);
          v88 = v85 - v86;
          v89 = v87;
          if (v87)
          {
            goto LABEL_126;
          }

          v90 = *(v69 + 1);
          v91 = v90 - *v69;
          if (__OFSUB__(v90, *v69))
          {
            goto LABEL_129;
          }

          if (__OFADD__(v88, v91))
          {
            goto LABEL_131;
          }

          if (v88 + v91 >= v73)
          {
            if (v73 < v91)
            {
              v68 = v64 - 2;
            }

            goto LABEL_94;
          }

          goto LABEL_87;
        }

        if (v64 < 2)
        {
          goto LABEL_125;
        }

        v93 = *v70;
        v92 = *(v70 + 1);
        v81 = __OFSUB__(v92, v93);
        v88 = v92 - v93;
        v89 = v81;
LABEL_87:
        if (v89)
        {
          goto LABEL_128;
        }

        v95 = *v69;
        v94 = *(v69 + 1);
        v81 = __OFSUB__(v94, v95);
        v96 = v94 - v95;
        if (v81)
        {
          goto LABEL_130;
        }

        if (v96 < v88)
        {
          goto LABEL_103;
        }

LABEL_94:
        if (v68 - 1 >= v64)
        {
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
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
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
          goto LABEL_140;
        }

        if (!*a3)
        {
          goto LABEL_143;
        }

        v6 = &v65[16 * v68 - 16];
        v7 = *v6;
        v100 = &v65[16 * v68];
        v101 = *(v100 + 1);
        sub_1B1E2C2DC((*a3 + 8 * *v6), (*a3 + 8 * *v100), (*a3 + 8 * v101), v67);
        if (v123)
        {
          goto LABEL_116;
        }

        if (v101 < v7)
        {
          goto LABEL_118;
        }

        v102 = *(v126 + 2);
        if (v68 > v102)
        {
          goto LABEL_119;
        }

        *v6 = v7;
        *(v6 + 1) = v101;
        if (v68 >= v102)
        {
          goto LABEL_120;
        }

        v123 = 0;
        v64 = v102 - 1;
        memmove(&v65[16 * v68], v100 + 16, 16 * (v102 - 1 - v68));
        v6 = v126;
        *(v126 + 2) = v102 - 1;
        if (v102 <= 2)
        {
          goto LABEL_103;
        }
      }

      v75 = &v65[16 * v64];
      v76 = *(v75 - 8);
      v77 = *(v75 - 7);
      v81 = __OFSUB__(v77, v76);
      v78 = v77 - v76;
      if (v81)
      {
        goto LABEL_121;
      }

      v80 = *(v75 - 6);
      v79 = *(v75 - 5);
      v81 = __OFSUB__(v79, v80);
      v73 = v79 - v80;
      v74 = v81;
      if (v81)
      {
        goto LABEL_122;
      }

      v82 = *(v70 + 1);
      v83 = v82 - *v70;
      if (__OFSUB__(v82, *v70))
      {
        goto LABEL_124;
      }

      v81 = __OFADD__(v73, v83);
      v84 = v73 + v83;
      if (v81)
      {
        goto LABEL_127;
      }

      if (v84 >= v78)
      {
        v98 = *v69;
        v97 = *(v69 + 1);
        v81 = __OFSUB__(v97, v98);
        v99 = v97 - v98;
        if (v81)
        {
          goto LABEL_135;
        }

        if (v73 < v99)
        {
          v68 = v64 - 2;
        }

        goto LABEL_94;
      }

      goto LABEL_72;
    }

    v6 = v126;
LABEL_103:
    v4 = a3[1];
    v5 = v130;
    if (v130 >= v4)
    {
      goto LABEL_106;
    }
  }

  v42 = v7 + a4;
  if (__OFADD__(v7, a4))
  {
    goto LABEL_139;
  }

  if (v42 >= v41)
  {
    v42 = a3[1];
  }

  if (v42 < v7)
  {
LABEL_140:
    __break(1u);
    goto LABEL_141;
  }

  if (v8 == v42)
  {
    goto LABEL_51;
  }

  v125 = v6;
  v132 = *a3;
  v43 = *a3 + 8 * v8 - 8;
  v116 = v7;
  v117 = v42;
  v44 = v7 - v8;
LABEL_38:
  v129 = v8;
  v45 = *(v132 + 8 * v8);
  v119 = v44;
  v121 = v43;
  v46 = v43;
  while (1)
  {
    v47 = *v46;
    v48 = v45;
    v49 = v47;
    v50 = [v48 identifier];
    v51 = sub_1B1F1A890();
    v53 = v52;

    v54 = [v49 identifier];
    v55 = sub_1B1F1A890();
    v57 = v56;

    if (v51 == v55 && v53 == v57)
    {

LABEL_49:
      v8 = v129 + 1;
      v43 = v121 + 8;
      v44 = v119 - 1;
      if ((v129 + 1) == v117)
      {
        v8 = v117;
        v6 = v125;
        v7 = v116;
        goto LABEL_51;
      }

      goto LABEL_38;
    }

    v59 = sub_1B1F1B510();

    if ((v59 & 1) == 0)
    {
      goto LABEL_49;
    }

    if (!v132)
    {
      break;
    }

    v60 = *v46;
    v45 = *(v46 + 8);
    *v46 = v45;
    *(v46 + 8) = v60;
    v46 -= 8;
    if (__CFADD__(v44++, 1))
    {
      goto LABEL_49;
    }
  }

  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
}