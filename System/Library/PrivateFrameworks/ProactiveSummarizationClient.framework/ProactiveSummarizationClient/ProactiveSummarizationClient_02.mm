uint64_t sub_1CFCFDE1C()
{
  v27 = *MEMORY[0x1E69E9840];
  v1 = v0[140];
  v2 = v0[139];
  v3 = v0[138];
  v4 = v0[137];
  v5 = v0[132];
  v6 = v0[131];
  v7 = v0[130];
  swift_willThrow();

  v8 = sub_1CFD08CC4();
  (*(v6 + 16))(v5, v8, v7);
  v9 = sub_1CFD48E18();
  v10 = sub_1CFD492E8();
  v11 = OUTLINED_FUNCTION_126(v10);
  v12 = v0[140];
  v13 = v0[131];
  v23 = v0[130];
  v24 = v0[132];
  v14 = v0[129];
  v15 = v0[128];
  v25 = v0[127];
  v16 = v0[118];
  v17 = v0[117];
  v18 = v0[116];
  if (v11)
  {
    v19 = OUTLINED_FUNCTION_120();
    *v19 = 0;
    _os_log_impl(&dword_1CFCD7000, v9, v10, "Failed to launch Tap to Radar", v19, 2u);
    OUTLINED_FUNCTION_121();
  }

  (*(v13 + 8))(v24, v23);
  (*(v17 + 8))(v16, v18);
  (*(v15 + 8))(v14, v25);
  OUTLINED_FUNCTION_83();
  v26 = v0[114];

  OUTLINED_FUNCTION_23_1();
  v21 = *MEMORY[0x1E69E9840];

  return v20();
}

id sub_1CFCFE054(uint64_t a1)
{
  if (a1)
  {
    v1 = sub_1CFD48EB8();
  }

  else
  {
    v1 = 0;
  }

  v2 = [swift_getObjCClassFromMetadata() optionsWithDictionary_];

  return v2;
}

uint64_t *sub_1CFCFE0E0(uint64_t a1, void *a2, void *a3)
{
  result = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *result;
  if (a3)
  {
    v7 = a3;

    return sub_1CFCFE170(v6, v7);
  }

  else if (a2)
  {
    v8 = a2;

    return sub_1CFCFE1DC(v6, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CFCFE170(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2DB0, &qword_1CFD4BDA0);
  v4 = swift_allocError();
  *v5 = a2;

  return MEMORY[0x1EEE6DEE8](a1, v4);
}

uint64_t sub_1CFCFE1FC()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_1CFD48D48();
}

uint64_t sub_1CFCFE248()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_1CFD48D38();
}

uint64_t sub_1CFCFE2A0()
{
  sub_1CFD49728();
  v1 = *v0;
  swift_getWitnessTable();
  sub_1CFD48D38();
  return sub_1CFD49758();
}

uint64_t sub_1CFCFE308(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getWitnessTable();

  return sub_1CFD48D28();
}

uint64_t sub_1CFCFE374(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!result || a1 > *(v4 + 24) >> 1)
  {
    if (*(v4 + 16) > a1)
    {
      v6 = *(v4 + 16);
    }

    return a2();
  }

  return result;
}

char *sub_1CFCFE404(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2FA0, &qword_1CFD4D000);
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

char *sub_1CFCFE50C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2FF8, &qword_1CFD4D048);
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
    memcpy(v12, v13, 8 * v8);
  }

  return v10;
}

size_t sub_1CFCFE60C(size_t result, int64_t a2, char a3, uint64_t a4)
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
  v9 = sub_1CFCFE70C(v8, v7);
  v10 = *(type metadata accessor for EntityAttachment() - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_1CFCFE8E0(a4 + v11, v8, v9 + v11, type metadata accessor for EntityAttachment);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

size_t sub_1CFCFE70C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F3000, &qword_1CFD4D050);
  v4 = *(type metadata accessor for EntityAttachment() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1CFCFE808(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4, uint64_t *a5)
{
  OUTLINED_FUNCTION_137();
  if (v11 < v10 || (v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5), result = OUTLINED_FUNCTION_25(v12), v6 + *(v14 + 72) * v5 <= a3))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    v19 = OUTLINED_FUNCTION_40_1();

    return MEMORY[0x1EEE6BD00](v19, v20, v21, v22);
  }

  else if (a3 != v6)
  {
    v15 = OUTLINED_FUNCTION_40_1();

    return MEMORY[0x1EEE6BCF8](v15, v16, v17, v18);
  }

  return result;
}

uint64_t sub_1CFCFE8E0(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_137();
  if (v9 < v8 || (v10 = (a4)(0), result = OUTLINED_FUNCTION_25(v10), v5 + *(v12 + 72) * v4 <= a3))
  {
    a4(0);
    v17 = OUTLINED_FUNCTION_40_1();

    return MEMORY[0x1EEE6BD00](v17, v18, v19, v20);
  }

  else if (a3 != v5)
  {
    v13 = OUTLINED_FUNCTION_40_1();

    return MEMORY[0x1EEE6BCF8](v13, v14, v15, v16);
  }

  return result;
}

uint64_t sub_1CFCFE9A4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1CFCFEA68(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_1CFD01B90(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_1CFCFEA68(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1CFCFEB68(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_1CFD49458();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_1CFCFEB68(uint64_t a1, unint64_t a2)
{
  v4 = sub_1CFCFEBB4(a1, a2);
  sub_1CFCFECCC(&unk_1F4C77AB0);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_1CFCFEBB4(uint64_t a1, unint64_t a2)
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

  for (; v5; v5 = sub_1CFD49078())
  {
    result = sub_1CFCFEDB0(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_1CFD493F8();
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
          result = sub_1CFD49458();
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

uint64_t sub_1CFCFECCC(uint64_t result)
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

    result = sub_1CFCFEE20(result, v8, 1, v3);
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

void *sub_1CFCFEDB0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2F48, &qword_1CFD4CFB0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_1CFCFEE20(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2F48, &qword_1CFD4CFB0);
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

uint64_t sub_1CFCFEF14(uint64_t a1)
{
  if (a1 < 16)
  {
    return 0;
  }

  sub_1CFD49408();
  return 0;
}

unint64_t sub_1CFCFEF5C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_1CFD493A8();

  return sub_1CFCFF054(a1, v5);
}

unint64_t sub_1CFCFEFA0(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_1CFD49728();
  type metadata accessor for CFString(0);
  sub_1CFCFFDA0(&qword_1EC4F2F88, type metadata accessor for CFString);
  sub_1CFD48D38();
  v4 = sub_1CFD49758();

  return sub_1CFCFF118(a1, v4);
}

unint64_t sub_1CFCFF054(uint64_t a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    sub_1CFD02014(*(v2 + 48) + 40 * i, v8);
    v6 = MEMORY[0x1D3873C90](v8, a1);
    sub_1CFD01F28(v8);
    if (v6)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_1CFCFF118(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = v2 + 64;
  v5 = ~(-1 << *(v2 + 32));
  for (i = a2 & v5; ((1 << i) & *(v4 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v5)
  {
    v7 = *(*(v3 + 48) + 8 * i);
    type metadata accessor for CFString(0);
    sub_1CFCFFDA0(&qword_1EC4F2F88, type metadata accessor for CFString);
    v8 = v7;
    v9 = sub_1CFD48D28();

    if (v9)
    {
      break;
    }
  }

  return i;
}

size_t sub_1CFCFF21C(size_t a1, int64_t a2, char a3)
{
  result = sub_1CFCFF33C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1CFCFF23C(void *a1, int64_t a2, char a3)
{
  result = sub_1CFCFF504(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1CFCFF25C(char *a1, int64_t a2, char a3)
{
  result = sub_1CFCFF634(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1CFCFF27C()
{
  v1 = *v0;
  sub_1CFCFF734();
  *v0 = v2;
}

void sub_1CFCFF2BC()
{
  v1 = *v0;
  sub_1CFCFF734();
  *v0 = v2;
}

void sub_1CFCFF2FC()
{
  v1 = *v0;
  sub_1CFCFF734();
  *v0 = v2;
}

size_t sub_1CFCFF33C(size_t result, int64_t a2, char a3, uint64_t a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2FD8, &qword_1CFD4D038);
  v10 = *(sub_1CFD48B48() - 8);
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
  v15 = *(sub_1CFD48B48() - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_1CFCFE8E0(a4 + v16, v8, v13 + v16, MEMORY[0x1E6968178]);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_1CFCFF504(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F3008, &qword_1CFD4D058);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2AB8, &qword_1CFD4D060);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1CFCFF634(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2FF8, &qword_1CFD4D048);
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
    memcpy(v12, v13, 8 * v8);
  }

  return v10;
}

void sub_1CFCFF734()
{
  OUTLINED_FUNCTION_156();
  v5 = v4;
  v7 = v6;
  v8 = v1;
  v10 = v9;
  if (v11)
  {
    v12 = *(v1 + 24);
    v13 = v12 >> 1;
    if ((v12 >> 1) < v0)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_25:
        __break(1u);
        return;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= v0)
      {
        v13 = v0;
      }
    }
  }

  else
  {
    v13 = v0;
  }

  v14 = *(v1 + 16);
  if (v13 <= v14)
  {
    v15 = *(v1 + 16);
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v23 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  v16 = OUTLINED_FUNCTION_87();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(v16, v17);
  OUTLINED_FUNCTION_18_2(v18);
  v20 = *(v19 + 72);
  v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v23 = swift_allocObject();
  v24 = _swift_stdlib_malloc_size(v23);
  if (!v20)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v24 - v22 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_24;
  }

  v23[2] = v14;
  v23[3] = 2 * ((v24 - v22) / v20);
LABEL_19:
  v26 = OUTLINED_FUNCTION_87();
  v28 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(v26, v27) - 8) + 80);
  OUTLINED_FUNCTION_73();
  if (v10)
  {
    sub_1CFCFE808(v8 + v29, v14, v23 + v29, v7, v5);
    *(v8 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  OUTLINED_FUNCTION_155();
}

int64_t sub_1CFCFF8DC(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1CFCFF9DC(result, 1);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = (*(v6 + 24) >> 1) - *(v6 + 16);
  result = type metadata accessor for EntityAttachment();
  v8 = *(result - 8);
  if (v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = *(v8 + 72);
  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v11 = *(v6 + 16);
  v12 = __OFADD__(v11, v3);
  v13 = v11 + v3;
  if (!v12)
  {
    *(v6 + 16) = v13;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

size_t sub_1CFCFF9DC(int64_t a1, char a2)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if (!result || a1 > *(v5 + 24) >> 1)
  {
    if (*(v5 + 16) <= a1)
    {
      v7 = a1;
    }

    else
    {
      v7 = *(v5 + 16);
    }

    result = sub_1CFCFE60C(result, v7, a2 & 1, v5);
    *v2 = result;
  }

  return result;
}

_OWORD *sub_1CFCFFA44(_OWORD *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_1CFCFEF5C(a2);
  if (__OFADD__(*(v6 + 16), (v8 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v9 = v7;
  v10 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2FD0, &unk_1CFD4D028);
  if ((sub_1CFD494A8() & 1) == 0)
  {
    goto LABEL_5;
  }

  v11 = *v3;
  v12 = sub_1CFCFEF5C(a2);
  if ((v10 & 1) != (v13 & 1))
  {
LABEL_11:
    result = sub_1CFD496C8();
    __break(1u);
    return result;
  }

  v9 = v12;
LABEL_5:
  v14 = *v3;
  if (v10)
  {
    v15 = (v14[7] + 32 * v9);
    __swift_destroy_boxed_opaque_existential_1(v15);

    return sub_1CFD01C10(a1, v15);
  }

  else
  {
    sub_1CFD02014(a2, v17);
    return sub_1CFCFFCBC(v9, v17, a1, v14);
  }
}

_OWORD *sub_1CFCFFB84(_OWORD *a1, void *a2)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_1CFCFEFA0(a2);
  if (__OFADD__(*(v5 + 16), (v7 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v8 = v6;
  v9 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2F80, &qword_1CFD4CFE0);
  if ((sub_1CFD494A8() & 1) == 0)
  {
    goto LABEL_5;
  }

  v10 = *v3;
  v11 = sub_1CFCFEFA0(a2);
  if ((v9 & 1) != (v12 & 1))
  {
LABEL_13:
    type metadata accessor for CFString(0);
    result = sub_1CFD496C8();
    __break(1u);
    return result;
  }

  v8 = v11;
LABEL_5:
  v13 = *v3;
  if (v9)
  {
    v14 = (v13[7] + 32 * v8);
    __swift_destroy_boxed_opaque_existential_1(v14);

    return sub_1CFD01C10(a1, v14);
  }

  else
  {
    sub_1CFCFFD38(v8, a2, a1, v13);

    return a2;
  }
}

_OWORD *sub_1CFCFFCBC(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_1CFD01C10(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

_OWORD *sub_1CFCFFD38(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_1CFD01C10(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t sub_1CFCFFDA0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1CFCFFDE8()
{
  OUTLINED_FUNCTION_137();
  v2 = v1(0);
  OUTLINED_FUNCTION_25(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_27();
  v6(v5);
  return v0;
}

unint64_t sub_1CFCFFE40()
{
  result = qword_1EC4F7220;
  if (!qword_1EC4F7220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F7220);
  }

  return result;
}

unint64_t sub_1CFCFFE94()
{
  result = qword_1EC4F2E30;
  if (!qword_1EC4F2E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F2E30);
  }

  return result;
}

unint64_t sub_1CFCFFEE8()
{
  result = qword_1EC4F2E40;
  if (!qword_1EC4F2E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F2E40);
  }

  return result;
}

uint64_t sub_1CFCFFF3C()
{
  OUTLINED_FUNCTION_137();
  v2 = v1(0);
  OUTLINED_FUNCTION_25(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_27();
  v6(v5);
  return v0;
}

unint64_t sub_1CFCFFF94()
{
  result = qword_1EC4F7228[0];
  if (!qword_1EC4F7228[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4F7228);
  }

  return result;
}

unint64_t sub_1CFD00008()
{
  result = qword_1EC4F2E60;
  if (!qword_1EC4F2E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F2E60);
  }

  return result;
}

unint64_t sub_1CFD0005C()
{
  result = qword_1EC4F2E68;
  if (!qword_1EC4F2E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F2E68);
  }

  return result;
}

unint64_t sub_1CFD000B0()
{
  result = qword_1EC4F2E70;
  if (!qword_1EC4F2E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F2E70);
  }

  return result;
}

unint64_t sub_1CFD00104()
{
  result = qword_1EC4F2E80;
  if (!qword_1EC4F2E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F2E80);
  }

  return result;
}

unint64_t sub_1CFD00158()
{
  result = qword_1EC4F2E90;
  if (!qword_1EC4F2E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F2E90);
  }

  return result;
}

unint64_t sub_1CFD001AC()
{
  result = qword_1EC4F2E98;
  if (!qword_1EC4F2E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F2E98);
  }

  return result;
}

unint64_t sub_1CFD00200()
{
  result = qword_1EC4F2EA8;
  if (!qword_1EC4F2EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F2EA8);
  }

  return result;
}

void *sub_1CFD00254(void *result, void *a2)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1CFD00354()
{
  result = qword_1EC4F2EE0;
  if (!qword_1EC4F2EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F2EE0);
  }

  return result;
}

unint64_t sub_1CFD003AC()
{
  result = qword_1EC4F2EE8;
  if (!qword_1EC4F2EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F2EE8);
  }

  return result;
}

unint64_t sub_1CFD00404()
{
  result = qword_1EC4F2EF0;
  if (!qword_1EC4F2EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F2EF0);
  }

  return result;
}

unint64_t sub_1CFD0045C()
{
  result = qword_1EC4F2EF8;
  if (!qword_1EC4F2EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F2EF8);
  }

  return result;
}

unint64_t sub_1CFD004B4()
{
  result = qword_1EC4F2F00;
  if (!qword_1EC4F2F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F2F00);
  }

  return result;
}

unint64_t sub_1CFD0050C()
{
  result = qword_1EC4F2F08;
  if (!qword_1EC4F2F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F2F08);
  }

  return result;
}

void sub_1CFD00588()
{
  type metadata accessor for SummarizationFeedback.UIKind(319);
  if (v0 <= 0x3F)
  {
    sub_1CFD0062C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1CFD0062C()
{
  if (!qword_1EDDD2B18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4F2F10, &qword_1CFD53AC0);
    v0 = sub_1CFD49338();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDDD2B18);
    }
  }
}

void sub_1CFD006B8()
{
  sub_1CFCE8918();
  if (v0 <= 0x3F)
  {
    sub_1CFD00730();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1CFD00730()
{
  if (!qword_1EDDD3120)
  {
    v0 = type metadata accessor for SummarizationFeedback.MailThreadFeedback(0);
    if (!v1)
    {
      atomic_store(v0, &qword_1EDDD3120);
    }
  }
}

uint64_t getEnumTagSinglePayload for SummarizationFeedback.Presentation(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_3_2(-1);
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return OUTLINED_FUNCTION_3_2((*a1 | (v4 << 16)) - 65282);
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return OUTLINED_FUNCTION_3_2((*a1 | (v4 << 16)) - 65282);
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return OUTLINED_FUNCTION_3_2((*a1 | (v4 << 16)) - 65282);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_3_2(v8);
}

_BYTE *storeEnumTagSinglePayload for SummarizationFeedback.Presentation(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v6 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    switch(v5)
    {
      case 1:
        result[2] = v6;
        break;
      case 2:
        *(result + 1) = v6;
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
        result[2] = 0;
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
          result = OUTLINED_FUNCTION_27_0(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1CFD0092C()
{
  result = type metadata accessor for SummarizationResponse();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SummarizationFeedback.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_3_2(-1);
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
      return OUTLINED_FUNCTION_3_2((*a1 | (v4 << 8)) - 4);
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

      return OUTLINED_FUNCTION_3_2((*a1 | (v4 << 8)) - 4);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_3_2((*a1 | (v4 << 8)) - 4);
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

  return OUTLINED_FUNCTION_3_2(v8);
}

_BYTE *storeEnumTagSinglePayload for SummarizationFeedback.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t dispatch thunk of SummarizationFeedbackClient.send(summarizationFeedback:)(uint64_t a1)
{
  v4 = *(*v1 + 184);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1CFCEFD40;

  return v8(a1);
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1CFD00D38(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1CFD00D78(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1CFD00DD0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 168))
    {
      return OUTLINED_FUNCTION_3_2(*a1 + 2147483646);
    }

    v3 = *(a1 + 8);
    OUTLINED_FUNCTION_192();
  }

  else
  {
    v4 = -1;
  }

  return OUTLINED_FUNCTION_3_2(v4);
}

uint64_t sub_1CFD00E1C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 168) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 168) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MailEntity.Thread.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_3_2(-1);
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
      return OUTLINED_FUNCTION_3_2((*a1 | (v4 << 8)) - 2);
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

      return OUTLINED_FUNCTION_3_2((*a1 | (v4 << 8)) - 2);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_3_2((*a1 | (v4 << 8)) - 2);
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

  return OUTLINED_FUNCTION_3_2(v8);
}

_BYTE *_s28ProactiveSummarizationClient21SummarizationFeedbackV18MailThreadFeedbackV10CodingKeysOwst_0(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for SummarizationFeedback.UIKind.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_3_2(-1);
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
      return OUTLINED_FUNCTION_3_2((*a1 | (v4 << 8)) - 5);
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

      return OUTLINED_FUNCTION_3_2((*a1 | (v4 << 8)) - 5);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_3_2((*a1 | (v4 << 8)) - 5);
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

  return OUTLINED_FUNCTION_3_2(v8);
}

_BYTE *storeEnumTagSinglePayload for SummarizationFeedback.UIKind.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *_s28ProactiveSummarizationClient21SummarizationFeedbackV6UIKindO14MailCodingKeysOwst_0(_BYTE *result, int a2, int a3)
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

unint64_t sub_1CFD01254()
{
  result = qword_1EC4F81B0[0];
  if (!qword_1EC4F81B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4F81B0);
  }

  return result;
}

unint64_t sub_1CFD012AC()
{
  result = qword_1EC4F83C0[0];
  if (!qword_1EC4F83C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4F83C0);
  }

  return result;
}

unint64_t sub_1CFD01304()
{
  result = qword_1EC4F85D0[0];
  if (!qword_1EC4F85D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4F85D0);
  }

  return result;
}

unint64_t sub_1CFD0135C()
{
  result = qword_1EC4F87E0[0];
  if (!qword_1EC4F87E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4F87E0);
  }

  return result;
}

unint64_t sub_1CFD013B4()
{
  result = qword_1EC4F89F0;
  if (!qword_1EC4F89F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F89F0);
  }

  return result;
}

unint64_t sub_1CFD0140C()
{
  result = qword_1EC4F8C00[0];
  if (!qword_1EC4F8C00[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4F8C00);
  }

  return result;
}

unint64_t sub_1CFD01464()
{
  result = qword_1EC4F8E10[0];
  if (!qword_1EC4F8E10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4F8E10);
  }

  return result;
}

unint64_t sub_1CFD014BC()
{
  result = qword_1EC4F9020[0];
  if (!qword_1EC4F9020[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4F9020);
  }

  return result;
}

unint64_t sub_1CFD01514()
{
  result = qword_1EC4F9130;
  if (!qword_1EC4F9130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F9130);
  }

  return result;
}

unint64_t sub_1CFD0156C()
{
  result = qword_1EC4F9138[0];
  if (!qword_1EC4F9138[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4F9138);
  }

  return result;
}

unint64_t sub_1CFD015C4()
{
  result = qword_1EC4F91C0;
  if (!qword_1EC4F91C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F91C0);
  }

  return result;
}

unint64_t sub_1CFD0161C()
{
  result = qword_1EC4F91C8[0];
  if (!qword_1EC4F91C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4F91C8);
  }

  return result;
}

unint64_t sub_1CFD01674()
{
  result = qword_1EC4F9250;
  if (!qword_1EC4F9250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F9250);
  }

  return result;
}

unint64_t sub_1CFD016CC()
{
  result = qword_1EC4F9258[0];
  if (!qword_1EC4F9258[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4F9258);
  }

  return result;
}

unint64_t sub_1CFD01724()
{
  result = qword_1EC4F92E0;
  if (!qword_1EC4F92E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F92E0);
  }

  return result;
}

unint64_t sub_1CFD0177C()
{
  result = qword_1EC4F92E8[0];
  if (!qword_1EC4F92E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4F92E8);
  }

  return result;
}

unint64_t sub_1CFD017D4()
{
  result = qword_1EC4F9370;
  if (!qword_1EC4F9370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F9370);
  }

  return result;
}

unint64_t sub_1CFD0182C()
{
  result = qword_1EC4F9378;
  if (!qword_1EC4F9378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F9378);
  }

  return result;
}

unint64_t sub_1CFD01884()
{
  result = qword_1EC4F9400;
  if (!qword_1EC4F9400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F9400);
  }

  return result;
}

unint64_t sub_1CFD018DC()
{
  result = qword_1EC4F9408[0];
  if (!qword_1EC4F9408[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4F9408);
  }

  return result;
}

unint64_t sub_1CFD01934()
{
  result = qword_1EC4F9490;
  if (!qword_1EC4F9490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F9490);
  }

  return result;
}

unint64_t sub_1CFD0198C()
{
  result = qword_1EC4F9498[0];
  if (!qword_1EC4F9498[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4F9498);
  }

  return result;
}

unint64_t sub_1CFD019E4()
{
  result = qword_1EC4F9520;
  if (!qword_1EC4F9520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F9520);
  }

  return result;
}

unint64_t sub_1CFD01A3C()
{
  result = qword_1EC4F9528[0];
  if (!qword_1EC4F9528[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4F9528);
  }

  return result;
}

unint64_t sub_1CFD01A90()
{
  result = qword_1EC4F2F18;
  if (!qword_1EC4F2F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F2F18);
  }

  return result;
}

unint64_t sub_1CFD01AE4()
{
  result = qword_1EC4F2F20;
  if (!qword_1EC4F2F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F2F20);
  }

  return result;
}

unint64_t sub_1CFD01B38()
{
  result = qword_1EC4F2F28;
  if (!qword_1EC4F2F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F2F28);
  }

  return result;
}

uint64_t sub_1CFD01B90(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_1CFD01BEC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  sub_1CFCFB708();
}

_OWORD *sub_1CFD01C10(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void *sub_1CFD01C20()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2F68, &qword_1CFD4CFD0);
  OUTLINED_FUNCTION_18_2(v1);
  v4 = *(v0 + ((*(v3 + 64) + ((*(v2 + 80) + 16) & ~*(v2 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2F68, &qword_1CFD4CFD0);
  sub_1CFD49238();
  OUTLINED_FUNCTION_162();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    v8 = result + 4;
    v7 = result[4];
    if (v7)
    {
      v9 = result[7];
      v10 = result[5];
      v11 = v7;
      v12 = v10;

      CFRunLoopSourceInvalidate(v11);
      CFUserNotificationCancel(v12);

      v13 = v6[4];
      v14 = v6[5];
      v15 = v6[6];
      v16 = v6[7];
      *v8 = 0u;
      v8[1] = 0u;
      sub_1CFD00254(v13, v14);
    }
  }

  return result;
}

void *sub_1CFD01D7C(void *result, void *a2)
{
  if (result)
  {
    v3 = result;
    v4 = a2;
  }

  return result;
}

unint64_t sub_1CFD01DC4()
{
  result = qword_1EC4F2FA8;
  if (!qword_1EC4F2FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F2FA8);
  }

  return result;
}

uint64_t sub_1CFD01E18(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1CFD01E2C(a1, a2);
  }

  return a1;
}

uint64_t sub_1CFD01E2C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_1CFD01E84()
{
  result = qword_1EDDD27B0[0];
  if (!qword_1EDDD27B0[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4F2A98, &unk_1CFD4D010);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDD27B0);
  }

  return result;
}

uint64_t sub_1CFD01EE8(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = sub_1CFD49398();
  v4 = *(a1 + 36);
  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_1CFD02008(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1CFD02070(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1CFD020E8()
{
  OUTLINED_FUNCTION_137();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_25(v3);
  v5 = *(v4 + 32);
  v6 = OUTLINED_FUNCTION_27();
  v7(v6);
  return v0;
}

uint64_t sub_1CFD02140()
{
  OUTLINED_FUNCTION_137();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_25(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_27();
  v7(v6);
  return v0;
}

_BYTE *_s28ProactiveSummarizationClient21SummarizationFeedbackV7FeatureOwst_0(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_1CFD0228C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

unint64_t sub_1CFD022DC()
{
  result = qword_1EC4F95B0[0];
  if (!qword_1EC4F95B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4F95B0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_6_4()
{
  result = v0[198];
  v2 = v0[197];
  v3 = v0[196];
  v4 = v0[195];
  v5 = v0[194];
  v6 = v0[193];
  v7 = v0[192];
  v8 = v0[191];
  v9 = v0[190];
  v10 = v0[189];
  v11 = v0[188];
  v12 = v0[187];
  return result;
}

void OUTLINED_FUNCTION_11_3()
{
  v3 = v0[184];
  v4 = v0[183];
  v5 = v0[181];
  v6 = v0[180];
  v7 = v0[179];
  v8 = v0[178];
  v9 = v0[177];
  v10 = v0[176];
  v11 = v0[175];
  v12 = v0[173];
  v13 = v0[171];
  v14 = v0[170];
  v15 = v0[169];
  v16 = v0[168];
  v17 = v0[167];
  v18 = v0[166];
  v19 = v0[165];
  v20 = v0[164];
  v21 = v0[162];
  v22 = v0[161];
  v23 = v0[160];
  v24 = v0[159];
  v25 = v0[158];
  v26 = v0[155];
  v27 = v0[154];
  v28 = v0[151];
  v29 = v0[148];
  v30 = v0[147];
  v1 = v0[146];
  v2 = v0[145];
}

__n128 *OUTLINED_FUNCTION_19_2(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x6449656C646E7562;
  result[2].n128_u64[1] = 0xE800000000000000;
  return result;
}

_OWORD *OUTLINED_FUNCTION_22_3()
{
  *(v0 + 80) = v1;

  return sub_1CFCFFB84((v0 + 88), v2);
}

void OUTLINED_FUNCTION_35_2()
{
  v1 = v0[186];
  v2 = v0[185];
  v3 = v0[181];
  v4 = v0[173];
}

uint64_t OUTLINED_FUNCTION_37_2()
{

  return swift_once();
}

void OUTLINED_FUNCTION_38_1()
{
  v1 = v0[186];
  v2 = v0[185];
  v3 = v0[181];
  v4 = v0[173];
}

uint64_t OUTLINED_FUNCTION_42_1()
{
  v1 = v0[217];
  v2 = v0[216];
  v3 = v0[214];
  return v0[119];
}

void OUTLINED_FUNCTION_45_1()
{
  v2 = v0[184];
  v3 = v0[183];
  v4 = v0[181];
  v5 = v0[180];
  v6 = v0[179];
  v7 = v0[178];
  v8 = v0[177];
  v9 = v0[176];
  v10 = v0[175];
  v11 = v0[173];
  v12 = v0[171];
  v13 = v0[170];
  v14 = v0[169];
  v15 = v0[168];
  v16 = v0[167];
  v17 = v0[166];
  v18 = v0[165];
  v19 = v0[164];
  v20 = v0[162];
  v21 = v0[161];
  v22 = v0[160];
  v23 = v0[159];
  v24 = v0[158];
  v25 = v0[155];
  v26 = v0[154];
  v27 = v0[151];
  v28 = v0[148];
  v29 = v0[147];
  v30 = v0[146];
  v31 = v0[145];
  v32 = v0[144];
  v33 = v0[143];
  v1 = v0[141];
  v34 = v0[140];
}

void OUTLINED_FUNCTION_46_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

void OUTLINED_FUNCTION_47_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

id OUTLINED_FUNCTION_48_1()
{
  v4 = *(v0 + 80);
  *(v0 + 144) = v2;
  *(v0 + 120) = v3;
  sub_1CFD01C10((v0 + 120), (v0 + 88));

  return v1;
}

BOOL OUTLINED_FUNCTION_49_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_65()
{
  v8 = v0[144];
  v9 = v0[143];
  v10 = v0[141];
  v11 = v0[140];
  v12 = v0[138];
  v13 = v0[136];
  v14 = v0[135];
  v15 = v0[132];
  v3 = v0[130];
  *(v1 - 256) = v0[131];
  *(v1 - 248) = v3;
  v4 = v0[128];
  *(v1 - 240) = v0[129];
  *(v1 - 232) = v4;
  v5 = v0[125];
  *(v1 - 224) = v0[127];
  *(v1 - 216) = v5;
  v6 = v0[121];
  *(v1 - 208) = v0[122];
  *(v1 - 200) = v6;
}

uint64_t OUTLINED_FUNCTION_75()
{
  result = v0[217];
  v2 = v0[215];
  v3 = v0[201];
  v4 = v0[200];
  v5 = v0[199];
  return result;
}

void OUTLINED_FUNCTION_77()
{

  JUMPOUT(0x1D3874700);
}

uint64_t OUTLINED_FUNCTION_83()
{
  result = v0[136];
  v2 = v0[135];
  v3 = v0[134];
  v4 = v0[133];
  v5 = v0[132];
  v6 = v0[129];
  v7 = v0[126];
  v8 = v0[125];
  v9 = v0[124];
  v10 = v0[121];
  v11 = v0[118];
  v12 = v0[115];
  return result;
}

void OUTLINED_FUNCTION_86()
{

  JUMPOUT(0x1D3874700);
}

uint64_t OUTLINED_FUNCTION_88@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 112) = a1;

  return sub_1CFCFE374(v1, sub_1CFCFF25C);
}

void OUTLINED_FUNCTION_94()
{

  JUMPOUT(0x1D3874700);
}

BOOL OUTLINED_FUNCTION_95(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_101()
{

  JUMPOUT(0x1D3873940);
}

uint64_t OUTLINED_FUNCTION_102()
{
  v2 = *(v0 - 96);

  return sub_1CFD494F8();
}

BOOL OUTLINED_FUNCTION_109_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_110(uint64_t a1)
{

  return sub_1CFCF0B10(a1, type metadata accessor for SummarizableItem);
}

void OUTLINED_FUNCTION_112()
{
  v1 = v0[186];
  v2 = v0[185];
  v3 = v0[181];
  v4 = v0[173];
}

uint64_t OUTLINED_FUNCTION_120()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_121()
{

  JUMPOUT(0x1D3874700);
}

void OUTLINED_FUNCTION_123()
{
  v1 = *(*(v0 - 176) + 1608);
  v2 = *(*(v0 - 176) + 1600);
  v3 = *(*(v0 - 176) + 1592);
  v4 = *(v0 - 176);
}

id OUTLINED_FUNCTION_124(void *a1)
{

  return [a1 (v1 + 3448)];
}

uint64_t OUTLINED_FUNCTION_125()
{
  result = type metadata accessor for SummarizationFeedback(0);
  v1 = *(result + 32);
  return result;
}

BOOL OUTLINED_FUNCTION_126(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_128@<X0>(char a1@<W8>)
{
  *(v1 + v2) = a1;

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_129()
{
  v2 = *(v0 - 96);

  return sub_1CFD495A8();
}

uint64_t OUTLINED_FUNCTION_130()
{

  return swift_task_alloc();
}

id OUTLINED_FUNCTION_141(void *a1)
{

  return [a1 (v2 + 3448)];
}

void OUTLINED_FUNCTION_144()
{
  *(v0 - 152) = 0;
  *(v0 - 144) = 0;
  *(v0 - 136) = 0;
}

void OUTLINED_FUNCTION_145()
{
  v1 = v0;
  v2 = *(v0 + 1608);
  v3 = *(v1 + 1600);
}

_OWORD *OUTLINED_FUNCTION_151()
{

  return sub_1CFD01C10((v0 + 120), (v0 + 88));
}

uint64_t OUTLINED_FUNCTION_153()
{

  return sub_1CFD02140();
}

uint64_t OUTLINED_FUNCTION_154(uint64_t result)
{
  v1[18] = result;
  v1[19] = 1684957547;
  v1[20] = 0xE400000000000000;
  return result;
}

void OUTLINED_FUNCTION_158()
{
  v1 = v0[131];
  v2 = v0[130];
  v3 = v0[129];
  v4 = v0[128];
  v5 = v0[127];
}

void OUTLINED_FUNCTION_161()
{
  *(v0 - 184) = 0;
  *(v0 - 176) = 0;
  *(v0 - 168) = 0;
  *(v0 - 160) = 0;
}

uint64_t OUTLINED_FUNCTION_162()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_163()
{
  v3 = v1[188];
  v4 = v1[186];
  v5 = v1[185];
}

void OUTLINED_FUNCTION_164()
{
  v3 = v1[190];
  v4 = v1[186];
  v5 = v1[185];
}

uint64_t OUTLINED_FUNCTION_165(uint64_t a1)
{

  return sub_1CFCE3050(a1, v1, v2);
}

void OUTLINED_FUNCTION_168()
{

  sub_1CFD21098();
}

void OUTLINED_FUNCTION_170()
{
  v1 = v0[186];
  v2 = v0[185];
  v3 = v0[181];
  v4 = v0[173];
}

unsigned __int8 *OUTLINED_FUNCTION_177(unsigned __int8 *result, unsigned __int8 *a2)
{
  v2 = *result;
  v3 = *a2;
  return result;
}

void OUTLINED_FUNCTION_180()
{
  v2 = *(v0 + 860);
  v3 = *(v0 + 1384);
  *(v1 - 208) = *(v0 + 1376);
}

void OUTLINED_FUNCTION_182()
{
  v1 = v0[215];
  v2 = v0[201];
  v3 = v0[200];
  v4 = v0[199];
}

void OUTLINED_FUNCTION_186()
{
  v1 = v0[186];
  v2 = v0[185];
  v3 = v0[181];
  v4 = v0[173];
}

uint64_t OUTLINED_FUNCTION_191()
{
  v2 = v0[199];
  v3 = v0[189];
  v4 = v0[185];
  v5 = v0[175];
}

uint64_t OUTLINED_FUNCTION_193()
{
}

BOOL OUTLINED_FUNCTION_194(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t SummarizableItem.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_27();
}

uint64_t SummarizableItem.identifier.setter()
{
  OUTLINED_FUNCTION_30();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t SummarizableItem.bundle.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_27();
}

uint64_t SummarizableItem.bundle.setter()
{
  OUTLINED_FUNCTION_30();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t SummarizableItem.textContent.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_27();
}

uint64_t SummarizableItem.textContent.setter()
{
  OUTLINED_FUNCTION_30();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t SummarizableItem.htmlContent.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return OUTLINED_FUNCTION_27();
}

uint64_t SummarizableItem.htmlContent.setter()
{
  OUTLINED_FUNCTION_30();
  v3 = *(v1 + 56);

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t SummarizableItem.sender.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 64), 0x41uLL);
  memcpy(a1, (v1 + 64), 0x41uLL);
  return sub_1CFD0373C(__dst, &v4, &qword_1EC4F3048, &unk_1CFD4D240);
}

void *SummarizableItem.sender.setter(const void *a1)
{
  memcpy(__dst, (v1 + 64), 0x41uLL);
  sub_1CFCE3050(__dst, &qword_1EC4F3048, &unk_1CFD4D240);
  return memcpy((v1 + 64), a1, 0x41uLL);
}

uint64_t SummarizableItem.recipients.setter(uint64_t a1)
{
  v3 = *(v1 + 136);

  *(v1 + 136) = a1;
  return result;
}

uint64_t type metadata accessor for SummarizableItem()
{
  result = qword_1EDDD37B0;
  if (!qword_1EDDD37B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CFD0373C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_25(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_27();
  v9(v8);
  return a2;
}

uint64_t SummarizableItem.dateReceived.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_16_2() + 40);

  return sub_1CFCE281C(v0, v2);
}

uint64_t SummarizableItem.isRead.setter(char a1)
{
  result = type metadata accessor for SummarizableItem();
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t SummarizableItem.subject.getter()
{
  v1 = (v0 + *(type metadata accessor for SummarizableItem() + 48));
  v2 = *v1;
  v3 = v1[1];

  return OUTLINED_FUNCTION_27();
}

uint64_t SummarizableItem.subject.setter()
{
  OUTLINED_FUNCTION_30();
  v3 = (v1 + *(type metadata accessor for SummarizableItem() + 48));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t SummarizableItem.init(identifier:bundle:textContent:htmlContent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  *(a9 + 64) = xmmword_1CFD4D230;
  *(a9 + 136) = 0;
  v17 = type metadata accessor for SummarizableItem();
  *(a9 + 80) = 0u;
  *(a9 + 96) = 0u;
  *(a9 + 112) = 0u;
  *(a9 + 128) = 0;
  v18 = v17[10];
  v19 = sub_1CFD48CC8();
  result = __swift_storeEnumTagSinglePayload(a9 + v18, 1, 1, v19);
  *(a9 + v17[11]) = 2;
  v21 = (a9 + v17[12]);
  *v21 = 0;
  v21[1] = 0;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  return result;
}

uint64_t sub_1CFD03A48(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (OUTLINED_FUNCTION_20() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656C646E7562 && a2 == 0xE600000000000000;
    if (v6 || (OUTLINED_FUNCTION_20() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x746E6F4374786574 && a2 == 0xEB00000000746E65;
      if (v7 || (OUTLINED_FUNCTION_20() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x746E6F436C6D7468 && a2 == 0xEB00000000746E65;
        if (v8 || (OUTLINED_FUNCTION_20() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x7265646E6573 && a2 == 0xE600000000000000;
          if (v9 || (OUTLINED_FUNCTION_20() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6E65697069636572 && a2 == 0xEA00000000007374;
            if (v10 || (OUTLINED_FUNCTION_20() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v12 = a1 == OUTLINED_FUNCTION_14_4() && a2 == v11;
              if (v12 || (OUTLINED_FUNCTION_20() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v13 = a1 == 0x646165527369 && a2 == 0xE600000000000000;
                if (v13 || (OUTLINED_FUNCTION_20() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0x7463656A627573 && a2 == 0xE700000000000000)
                {

                  return 8;
                }

                else
                {
                  v15 = OUTLINED_FUNCTION_20();

                  if (v15)
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
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

uint64_t sub_1CFD03C8C(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = 0x656C646E7562;
      break;
    case 2:
      v3 = 1954047348;
      goto LABEL_6;
    case 3:
      v3 = 1819112552;
LABEL_6:
      result = v3 | 0x746E6F4300000000;
      break;
    case 4:
      result = 0x7265646E6573;
      break;
    case 5:
      result = 0x6E65697069636572;
      break;
    case 6:
      result = OUTLINED_FUNCTION_14_4();
      break;
    case 7:
      result = 0x646165527369;
      break;
    case 8:
      result = 0x7463656A627573;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1CFD03D84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CFD03A48(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1CFD03DB8(uint64_t a1)
{
  v2 = sub_1CFD041C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CFD03DF4(uint64_t a1)
{
  v2 = sub_1CFD041C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SummarizableItem.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F3050, &unk_1CFD4D250);
  v6 = OUTLINED_FUNCTION_37(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v30[-v11 - 8];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CFD041C0();
  sub_1CFD497A8();
  v14 = *v3;
  v15 = v3[1];
  __dst[0] = 0;
  OUTLINED_FUNCTION_5_1();
  sub_1CFD495E8();
  if (!v2)
  {
    v16 = v3[2];
    v17 = v3[3];
    __dst[0] = 1;
    OUTLINED_FUNCTION_5_1();
    sub_1CFD495E8();
    v18 = v3[4];
    v19 = v3[5];
    __dst[0] = 2;
    OUTLINED_FUNCTION_5_1();
    sub_1CFD495B8();
    v20 = v3[6];
    v21 = v3[7];
    __dst[87] = 3;
    OUTLINED_FUNCTION_5_1();
    sub_1CFD495B8();
    memcpy(__dst, v3 + 8, 0x41uLL);
    memcpy(__src, v3 + 8, sizeof(__src));
    __dst[86] = 4;
    sub_1CFD0373C(__dst, v30, &qword_1EC4F3048, &unk_1CFD4D240);
    sub_1CFCDF174();
    OUTLINED_FUNCTION_7_5();
    sub_1CFD495D8();
    memcpy(v30, __src, 0x41uLL);
    sub_1CFCE3050(v30, &qword_1EC4F3048, &unk_1CFD4D240);
    v29 = v3[17];
    __dst[85] = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2AA8, &unk_1CFD49F00);
    sub_1CFD048E4(&qword_1EC4F2AB0, sub_1CFCDF174);
    OUTLINED_FUNCTION_7_5();
    sub_1CFD495D8();
    v22 = type metadata accessor for SummarizableItem();
    v23 = v22[10];
    LOBYTE(v29) = 6;
    sub_1CFD48CC8();
    sub_1CFCEBB9C(&qword_1EC4F2A90);
    OUTLINED_FUNCTION_7_5();
    sub_1CFD495D8();
    v24 = *(v3 + v22[11]);
    LOBYTE(v29) = 7;
    OUTLINED_FUNCTION_7_5();
    sub_1CFD495C8();
    v25 = (v3 + v22[12]);
    v26 = *v25;
    v27 = v25[1];
    LOBYTE(v29) = 8;
    OUTLINED_FUNCTION_5_1();
    sub_1CFD495B8();
  }

  return (*(v8 + 8))(v12, v5);
}

unint64_t sub_1CFD041C0()
{
  result = qword_1EC4F9840[0];
  if (!qword_1EC4F9840[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4F9840);
  }

  return result;
}

uint64_t SummarizableItem.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2BD0, &qword_1CFD4A5B0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v49 - v5;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F3058, &qword_1CFD4D260);
  v7 = OUTLINED_FUNCTION_37(v53);
  v52 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = type metadata accessor for SummarizableItem();
  v12 = OUTLINED_FUNCTION_25(v11);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v17 + 4) = xmmword_1CFD4D230;
  v56 = v17 + 64;
  *(v17 + 5) = 0u;
  *(v17 + 6) = 0u;
  *(v17 + 7) = 0u;
  v17[128] = 0;
  v18 = *(v15 + 40);
  v19 = sub_1CFD48CC8();
  v20 = v18;
  v57 = v17;
  __swift_storeEnumTagSinglePayload(&v17[v18], 1, 1, v19);
  v21 = a1[3];
  v22 = a1[4];
  v54 = a1;
  v23 = __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_1CFD041C0();
  v24 = v55;
  sub_1CFD49788();
  if (v24)
  {
    OUTLINED_FUNCTION_11_4();
    v25 = v20;
    v28 = v56;
    OUTLINED_FUNCTION_13_4();
    v29 = v57;
    if (v23)
    {
      v30 = v57[3];
    }

    memcpy(__dst, v28, 0x41uLL);
    sub_1CFCE3050(__dst, &qword_1EC4F3048, &unk_1CFD4D240);

    return sub_1CFCE3050(v29 + v25, &qword_1EC4F2BD0, &qword_1CFD4A5B0);
  }

  else
  {
    v55 = v19;
    v50 = v11;
    __dst[0] = 0;
    OUTLINED_FUNCTION_6_5();
    v26 = sub_1CFD49548();
    v27 = v20;
    v31 = v57;
    *v57 = v26;
    v31[1] = v32;
    __dst[0] = 1;
    OUTLINED_FUNCTION_6_5();
    v33 = sub_1CFD49548();
    v34 = v56;
    v31[2] = v33;
    v31[3] = v35;
    __dst[0] = 2;
    OUTLINED_FUNCTION_6_5();
    v31[4] = sub_1CFD49518();
    v31[5] = v36;
    __dst[0] = 3;
    OUTLINED_FUNCTION_5_4();
    v31[6] = sub_1CFD49518();
    v31[7] = v37;
    v49 = v37;
    __dst[95] = 4;
    sub_1CFCDF450();
    OUTLINED_FUNCTION_6_5();
    sub_1CFD49538();
    memcpy(__src, __dst, sizeof(__src));
    memcpy(v60, v34, 0x41uLL);
    sub_1CFCE3050(v60, &qword_1EC4F3048, &unk_1CFD4D240);
    memcpy(v34, __src, 0x41uLL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2AA8, &unk_1CFD49F00);
    __dst[94] = 5;
    sub_1CFD048E4(&qword_1EC4F2B18, sub_1CFCDF450);
    OUTLINED_FUNCTION_6_5();
    sub_1CFD49538();
    v38 = v57;
    v57[17] = v58;
    LOBYTE(v58) = 6;
    sub_1CFCEBB9C(&qword_1EC4F2B08);
    OUTLINED_FUNCTION_6_5();
    sub_1CFD49538();
    sub_1CFCE281C(v6, v38 + v27);
    LOBYTE(v58) = 7;
    OUTLINED_FUNCTION_5_4();
    v39 = sub_1CFD49528();
    v40 = v38;
    v41 = v50;
    *(v40 + *(v50 + 44)) = v39;
    LOBYTE(v58) = 8;
    OUTLINED_FUNCTION_5_4();
    v42 = sub_1CFD49518();
    v44 = v43;
    v45 = (v40 + *(v41 + 48));
    v46 = OUTLINED_FUNCTION_0_5();
    v47(v46);
    *v45 = v42;
    v45[1] = v44;
    sub_1CFD0495C(v40, v51);
    OUTLINED_FUNCTION_13_4();
    return sub_1CFD049C0(v40);
  }
}

uint64_t sub_1CFD048E4(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4F2AA8, &unk_1CFD49F00);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1CFD0495C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SummarizableItem();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CFD049C0(uint64_t a1)
{
  v2 = type metadata accessor for SummarizableItem();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CFD04A74()
{
  sub_1CFD04BF0(319, qword_1EDDD3340);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_1CFD04BF0(319, &qword_1EDDD2868);
    if (v4 > 0x3F)
    {
      return v3;
    }

    sub_1CFD04B8C();
    if (v5 > 0x3F)
    {
      return v3;
    }

    sub_1CFCE4010();
    if (v6 > 0x3F)
    {
      return v3;
    }

    sub_1CFD04BF0(319, &unk_1EDDD3760);
    if (v7 > 0x3F)
    {
      return v3;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v1;
}

void sub_1CFD04B8C()
{
  if (!qword_1EDDD3330)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4F2AA8, &unk_1CFD49F00);
    v0 = sub_1CFD49338();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDDD3330);
    }
  }
}

void sub_1CFD04BF0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1CFD49338();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for SummarizableItem.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
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

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SummarizableItem.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1CFD04DA4()
{
  result = qword_1EC4F9A50[0];
  if (!qword_1EC4F9A50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4F9A50);
  }

  return result;
}

unint64_t sub_1CFD04DFC()
{
  result = qword_1EC4F9B60;
  if (!qword_1EC4F9B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F9B60);
  }

  return result;
}

unint64_t sub_1CFD04E54()
{
  result = qword_1EC4F9B68[0];
  if (!qword_1EC4F9B68[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4F9B68);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_5()
{
  v2 = *(*(v1 - 360) + 8);
  result = v0;
  v4 = *(v1 - 352);
  return result;
}

uint64_t OUTLINED_FUNCTION_1_6()
{
  v3 = *(v0 + 8);
  result = v1;
  v5 = *(v2 - 352);
  return result;
}

uint64_t OUTLINED_FUNCTION_13_4()
{
  v2 = *(v0 - 344);

  return __swift_destroy_boxed_opaque_existential_1(v2);
}

uint64_t OUTLINED_FUNCTION_16_2()
{

  return type metadata accessor for SummarizableItem();
}

uint64_t ResolvedTapback.sender.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 8), 0x41uLL);
  memcpy(a1, (v1 + 8), 0x41uLL);
  return sub_1CFCDB100(__dst, &v4);
}

BOOL static ResolvedTapback.== infix(_:_:)(char *__src, unsigned __int8 *a2)
{
  v3 = __src + 8;
  v4 = *__src;
  memcpy(__dst, __src + 8, 0x41uLL);
  v6 = *a2;
  v5 = a2 + 8;
  memcpy(v14, v5, 0x41uLL);
  if (sub_1CFD0511C())
  {
    memcpy(__srca, v3, 0x41uLL);
    memcpy(v9, v5, 0x41uLL);
    sub_1CFCDB100(__dst, v12);
    sub_1CFCDB100(v14, v12);
    v7 = static EntityHandle.== infix(_:_:)(__srca, v9);
    memcpy(v11, v9, 0x41uLL);
    sub_1CFCDB1BC(v11);
    memcpy(v12, __srca, 0x41uLL);
    sub_1CFCDB1BC(v12);
  }

  else
  {
    return 0;
  }

  return v7;
}

BOOL sub_1CFD0511C()
{
  sub_1CFD05A10();
  sub_1CFD49108();
  sub_1CFD49108();
  return v2 == v1;
}

uint64_t sub_1CFD05194(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_1CFD49668() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7265646E6573 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1CFD49668();

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

uint64_t sub_1CFD05258(char a1)
{
  if (a1)
  {
    return 0x7265646E6573;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_1CFD0528C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CFD05194(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1CFD052B4(uint64_t a1)
{
  v2 = sub_1CFD05518();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CFD052F0(uint64_t a1)
{
  v2 = sub_1CFD05518();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ResolvedTapback.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F3060, &qword_1CFD4D440);
  v5 = OUTLINED_FUNCTION_37(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v11 = &v15[-v10];
  v12 = *v1;
  memcpy(__dst, v1 + 8, 0x41uLL);
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CFD05518();
  sub_1CFD497A8();
  __src[0] = v12;
  v15[0] = 0;
  sub_1CFCDF20C();
  sub_1CFD49618();
  if (!v2)
  {
    memcpy(__src, __dst, sizeof(__src));
    __dst[95] = 1;
    sub_1CFCDB100(__dst, v15);
    sub_1CFCDF174();
    sub_1CFD49618();
    memcpy(v15, __src, 0x41uLL);
    sub_1CFCDB1BC(v15);
  }

  return (*(v7 + 8))(v11, v4);
}

unint64_t sub_1CFD05518()
{
  result = qword_1EC4F9BF0[0];
  if (!qword_1EC4F9BF0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4F9BF0);
  }

  return result;
}

uint64_t ResolvedTapback.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F3068, &qword_1CFD4D448);
  v6 = OUTLINED_FUNCTION_37(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &__src[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CFD05518();
  sub_1CFD49788();
  if (!v2)
  {
    v18 = 0;
    sub_1CFCDF5A0();
    OUTLINED_FUNCTION_0_6();
    v14 = __src[0];
    v18 = 1;
    sub_1CFCDF450();
    OUTLINED_FUNCTION_0_6();
    (*(v8 + 8))(v12, v5);
    memcpy(&v17[7], __src, 0x41uLL);
    *a2 = v14;
    memcpy(a2 + 1, v17, 0x48uLL);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1CFD05760(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 73))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
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

uint64_t sub_1CFD057B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 73) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 73) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ResolvedTapback.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1CFD0590C()
{
  result = qword_1EC4F9E80[0];
  if (!qword_1EC4F9E80[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4F9E80);
  }

  return result;
}

unint64_t sub_1CFD05964()
{
  result = qword_1EC4F9F90;
  if (!qword_1EC4F9F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F9F90);
  }

  return result;
}

unint64_t sub_1CFD059BC()
{
  result = qword_1EC4F9F98[0];
  if (!qword_1EC4F9F98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4F9F98);
  }

  return result;
}

unint64_t sub_1CFD05A10()
{
  result = qword_1EC4F3070;
  if (!qword_1EC4F3070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F3070);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_6()
{

  return sub_1CFD49578();
}

uint64_t NotificationEntity.uniqueId.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_27();
}

uint64_t NotificationEntity.uniqueId.setter()
{
  OUTLINED_FUNCTION_30();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t NotificationEntity.domainId.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_27();
}

uint64_t NotificationEntity.domainId.setter()
{
  OUTLINED_FUNCTION_30();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t NotificationEntity.donatingBundleId.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_27();
}

uint64_t NotificationEntity.donatingBundleId.setter()
{
  OUTLINED_FUNCTION_30();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t NotificationEntity.absoluteTimestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NotificationEntity() + 28);
  v4 = sub_1CFD48CC8();
  v5 = OUTLINED_FUNCTION_25(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t type metadata accessor for NotificationEntity()
{
  result = qword_1EDDD6010;
  if (!qword_1EDDD6010)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t NotificationEntity.absoluteTimestamp.setter()
{
  OUTLINED_FUNCTION_21();
  v2 = *(type metadata accessor for NotificationEntity() + 28);
  v3 = sub_1CFD48CC8();
  OUTLINED_FUNCTION_25(v3);
  v5 = *(v4 + 40);

  return v5(v1 + v2, v0);
}

uint64_t NotificationEntity.absoluteTimestamp.modify()
{
  OUTLINED_FUNCTION_21();
  v0 = *(type metadata accessor for NotificationEntity() + 28);
  return OUTLINED_FUNCTION_23();
}

uint64_t NotificationEntity.appBundleId.getter()
{
  v0 = type metadata accessor for NotificationEntity();
  OUTLINED_FUNCTION_28(*(v0 + 32));
  return OUTLINED_FUNCTION_27();
}

uint64_t NotificationEntity.appBundleId.setter()
{
  OUTLINED_FUNCTION_30();
  v3 = type metadata accessor for NotificationEntity();
  result = OUTLINED_FUNCTION_41(*(v3 + 32));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t NotificationEntity.appBundleId.modify()
{
  OUTLINED_FUNCTION_21();
  v0 = *(type metadata accessor for NotificationEntity() + 32);
  return OUTLINED_FUNCTION_23();
}

uint64_t NotificationEntity.title.getter()
{
  v0 = type metadata accessor for NotificationEntity();
  OUTLINED_FUNCTION_28(*(v0 + 36));
  return OUTLINED_FUNCTION_27();
}

uint64_t NotificationEntity.title.setter()
{
  OUTLINED_FUNCTION_30();
  v3 = type metadata accessor for NotificationEntity();
  result = OUTLINED_FUNCTION_41(*(v3 + 36));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t NotificationEntity.title.modify()
{
  OUTLINED_FUNCTION_21();
  v0 = *(type metadata accessor for NotificationEntity() + 36);
  return OUTLINED_FUNCTION_23();
}

uint64_t NotificationEntity.subtitle.getter()
{
  v0 = type metadata accessor for NotificationEntity();
  OUTLINED_FUNCTION_28(*(v0 + 40));
  return OUTLINED_FUNCTION_27();
}

uint64_t NotificationEntity.subtitle.setter()
{
  OUTLINED_FUNCTION_30();
  v3 = type metadata accessor for NotificationEntity();
  result = OUTLINED_FUNCTION_41(*(v3 + 40));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t NotificationEntity.subtitle.modify()
{
  OUTLINED_FUNCTION_21();
  v0 = *(type metadata accessor for NotificationEntity() + 40);
  return OUTLINED_FUNCTION_23();
}

uint64_t NotificationEntity.body.getter()
{
  v0 = type metadata accessor for NotificationEntity();
  OUTLINED_FUNCTION_28(*(v0 + 44));
  return OUTLINED_FUNCTION_27();
}

uint64_t NotificationEntity.body.setter()
{
  OUTLINED_FUNCTION_30();
  v3 = type metadata accessor for NotificationEntity();
  result = OUTLINED_FUNCTION_41(*(v3 + 44));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t NotificationEntity.body.modify()
{
  OUTLINED_FUNCTION_21();
  v0 = *(type metadata accessor for NotificationEntity() + 44);
  return OUTLINED_FUNCTION_23();
}

uint64_t NotificationEntity.threadId.getter()
{
  v0 = type metadata accessor for NotificationEntity();
  OUTLINED_FUNCTION_28(*(v0 + 48));
  return OUTLINED_FUNCTION_27();
}

uint64_t NotificationEntity.threadId.setter()
{
  OUTLINED_FUNCTION_30();
  v3 = type metadata accessor for NotificationEntity();
  result = OUTLINED_FUNCTION_41(*(v3 + 48));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t NotificationEntity.threadId.modify()
{
  OUTLINED_FUNCTION_21();
  v0 = *(type metadata accessor for NotificationEntity() + 48);
  return OUTLINED_FUNCTION_23();
}

uint64_t NotificationEntity.category.getter()
{
  v0 = type metadata accessor for NotificationEntity();
  OUTLINED_FUNCTION_28(*(v0 + 52));
  return OUTLINED_FUNCTION_27();
}

uint64_t NotificationEntity.category.setter()
{
  OUTLINED_FUNCTION_30();
  v3 = type metadata accessor for NotificationEntity();
  result = OUTLINED_FUNCTION_41(*(v3 + 52));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t NotificationEntity.category.modify()
{
  OUTLINED_FUNCTION_21();
  v0 = *(type metadata accessor for NotificationEntity() + 52);
  return OUTLINED_FUNCTION_23();
}

uint64_t NotificationEntity.isGroupMessage.setter()
{
  result = OUTLINED_FUNCTION_36_3();
  *(v1 + *(result + 56)) = v0;
  return result;
}

uint64_t NotificationEntity.isGroupMessage.modify()
{
  OUTLINED_FUNCTION_21();
  v0 = *(type metadata accessor for NotificationEntity() + 56);
  return OUTLINED_FUNCTION_23();
}

uint64_t NotificationEntity.isTimeSensitive.setter()
{
  result = OUTLINED_FUNCTION_36_3();
  *(v1 + *(result + 60)) = v0;
  return result;
}

uint64_t NotificationEntity.isTimeSensitive.modify()
{
  OUTLINED_FUNCTION_21();
  v0 = *(type metadata accessor for NotificationEntity() + 60);
  return OUTLINED_FUNCTION_23();
}

uint64_t NotificationEntity.isCritical.setter()
{
  result = OUTLINED_FUNCTION_36_3();
  *(v1 + *(result + 64)) = v0;
  return result;
}

uint64_t NotificationEntity.isCritical.modify()
{
  OUTLINED_FUNCTION_21();
  v0 = *(type metadata accessor for NotificationEntity() + 64);
  return OUTLINED_FUNCTION_23();
}

uint64_t NotificationEntity.isCommunicationNotification.setter()
{
  result = OUTLINED_FUNCTION_36_3();
  *(v1 + *(result + 68)) = v0;
  return result;
}

uint64_t NotificationEntity.isCommunicationNotification.modify()
{
  OUTLINED_FUNCTION_21();
  v0 = *(type metadata accessor for NotificationEntity() + 68);
  return OUTLINED_FUNCTION_23();
}

uint64_t NotificationEntity.isSpotlightUpdate.setter()
{
  result = OUTLINED_FUNCTION_36_3();
  *(v1 + *(result + 72)) = v0;
  return result;
}

uint64_t NotificationEntity.isSpotlightUpdate.modify()
{
  OUTLINED_FUNCTION_21();
  v0 = *(type metadata accessor for NotificationEntity() + 72);
  return OUTLINED_FUNCTION_23();
}

uint64_t NotificationEntity.attachments.getter()
{
  v1 = *(v0 + *(type metadata accessor for NotificationEntity() + 76));
}

uint64_t NotificationEntity.attachments.setter()
{
  OUTLINED_FUNCTION_21();
  v2 = *(type metadata accessor for NotificationEntity() + 76);
  v3 = *(v1 + v2);

  *(v1 + v2) = v0;
  return result;
}

uint64_t NotificationEntity.attachments.modify()
{
  OUTLINED_FUNCTION_21();
  v0 = *(type metadata accessor for NotificationEntity() + 76);
  return OUTLINED_FUNCTION_23();
}

uint64_t NotificationEntity.senderHandles.getter()
{
  v1 = *(v0 + *(type metadata accessor for NotificationEntity() + 80));
}

uint64_t NotificationEntity.senderHandles.setter()
{
  OUTLINED_FUNCTION_21();
  v2 = *(type metadata accessor for NotificationEntity() + 80);
  v3 = *(v1 + v2);

  *(v1 + v2) = v0;
  return result;
}

uint64_t NotificationEntity.senderHandles.modify()
{
  OUTLINED_FUNCTION_21();
  v0 = *(type metadata accessor for NotificationEntity() + 80);
  return OUTLINED_FUNCTION_23();
}

uint64_t NotificationEntity.recipientHandles.getter()
{
  v1 = *(v0 + *(type metadata accessor for NotificationEntity() + 84));
}

uint64_t NotificationEntity.recipientHandles.setter()
{
  OUTLINED_FUNCTION_21();
  v2 = *(type metadata accessor for NotificationEntity() + 84);
  v3 = *(v1 + v2);

  *(v1 + v2) = v0;
  return result;
}

uint64_t NotificationEntity.recipientHandles.modify()
{
  OUTLINED_FUNCTION_21();
  v0 = *(type metadata accessor for NotificationEntity() + 84);
  return OUTLINED_FUNCTION_23();
}

uint64_t NotificationEntity.init(uniqueId:domainId:donatingBundleId:absoluteTimestamp:appBundleId:title:subtitle:body:threadId:category:isGroupMessage:isTimeSensitive:isCritical:isCommunicationNotification:isSpotlightUpdate:attachments:senderHandles:recipientHandles:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, char a22, char a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  v30 = type metadata accessor for NotificationEntity();
  v31 = &a9[v30[8]];
  v32 = &a9[v30[9]];
  v33 = &a9[v30[10]];
  v34 = &a9[v30[11]];
  v35 = &a9[v30[12]];
  v36 = &a9[v30[13]];
  v37 = v30[15];
  v44 = v30[16];
  v45 = v30[14];
  v42 = v30[18];
  v43 = v30[17];
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  *(a9 + 4) = a5;
  *(a9 + 5) = a6;
  v38 = v30[7];
  v39 = sub_1CFD48CC8();
  OUTLINED_FUNCTION_25(v39);
  result = (*(v40 + 32))(&a9[v38], a7);
  *v31 = a8;
  *(v31 + 1) = a10;
  *v32 = a11;
  *(v32 + 1) = a12;
  *v33 = a13;
  *(v33 + 1) = a14;
  *v34 = a15;
  *(v34 + 1) = a16;
  *v35 = a17;
  *(v35 + 1) = a18;
  *v36 = a19;
  *(v36 + 1) = a20;
  a9[v45] = a21;
  a9[v37] = a22;
  a9[v44] = a23;
  a9[v43] = a24;
  a9[v42] = a25;
  *&a9[v30[19]] = a26;
  *&a9[v30[20]] = a27;
  *&a9[v30[21]] = a28;
  return result;
}

uint64_t NotificationEntity.messageForCommunicationNotification.getter@<X0>(void *a1@<X8>)
{
  v3 = sub_1CFD48CC8();
  v4 = OUTLINED_FUNCTION_37(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_0();
  v11 = v10 - v9;
  v12 = type metadata accessor for NotificationEntity();
  v13 = *(v1 + *(v12 + 68));
  if (v13 != 2 && (v13 & 1) != 0 && (v14 = v12, v15 = *(v1 + *(v12 + 80)), *(v15 + 16)))
  {
    memcpy(__dst, (v15 + 32), 0x41uLL);
    v36 = *v1;
    v35 = v1[1];
    v34 = v1[2];
    v33 = v1[3];
    v16 = v1[5];
    v32 = v1[4];
    (*(v6 + 16))(v11, v1 + v14[7], v3);
    v17 = (v1 + v14[8]);
    v18 = v17[1];
    v31 = *v17;
    v19 = (v1 + v14[12]);
    v20 = v19[1];
    v30 = *v19;
    memcpy(v40, __dst, 0x41uLL);
    v21 = *(v1 + v14[21]);
    v22 = (v1 + v14[11]);
    if (v22[1])
    {
      v29 = *v22;
      v28 = v22[1];
    }

    else
    {
      v29 = 0;
      v28 = 0xE000000000000000;
    }

    v25 = *(v1 + v14[19]);
    v26 = *(v1 + v14[14]);
    v39 = 10;
    v38 = 15;
    sub_1CFCDB100(__dst, v37);

    MessageEntity.init(uniqueId:domainId:donatingBundleId:absoluteTimestamp:appBundleId:conversationId:conversationUUID:inlineThreadId:accountHandles:senderHandle:recipientHandles:content:attachments:isNew:isTwoFactorCode:isFromMe:isFromKnownSender:isGroupThread:isJunk:isRead:isPinned:isBusinessChat:tapbackAssociatedMessageId:tapbackType:messageEffect:messageType:messagesService:ownerIdentifier:isSpotlightUpdate:fileProtectionType:)(v36, v35, v34, v33, v32, v16, v11, v31, a1, v18, v30, v20, 0, 0, 0, 0, 0, v40, v21, v29, v28, v25, 1, 2, 0, 2, v26, 2, 0, 2, 2, 0, 0, &v39, &v38, 0, 0, 0, 0, 0, 0, 2, 0);
    v27 = type metadata accessor for MessageEntity();
    return __swift_storeEnumTagSinglePayload(a1, 0, 1, v27);
  }

  else
  {
    v23 = type metadata accessor for MessageEntity();

    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v23);
  }
}

uint64_t static NotificationEntity.== infix(_:_:)(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1CFD49668() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[3];
  v6 = a2[3];
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    v7 = a1[2] == a2[2] && v5 == v6;
    if (!v7 && (sub_1CFD49668() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  v8 = a1[5];
  v9 = a2[5];
  if (v8)
  {
    if (!v9)
    {
      return 0;
    }

    v10 = a1[4] == a2[4] && v8 == v9;
    if (!v10 && (sub_1CFD49668() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  v11 = type metadata accessor for NotificationEntity();
  v12 = v11[7];
  if ((sub_1CFD48CA8() & 1) == 0)
  {
    return 0;
  }

  v13 = v11[8];
  OUTLINED_FUNCTION_6_0();
  if (v16)
  {
    if (!v14)
    {
      return 0;
    }

    OUTLINED_FUNCTION_19(v15);
    v19 = v4 && v17 == v18;
    if (!v19 && (sub_1CFD49668() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v14)
  {
    return 0;
  }

  v20 = v11[9];
  OUTLINED_FUNCTION_6_0();
  if (v23)
  {
    if (!v21)
    {
      return 0;
    }

    OUTLINED_FUNCTION_19(v22);
    v26 = v4 && v24 == v25;
    if (!v26 && (sub_1CFD49668() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v21)
  {
    return 0;
  }

  v27 = v11[10];
  OUTLINED_FUNCTION_6_0();
  if (v30)
  {
    if (!v28)
    {
      return 0;
    }

    OUTLINED_FUNCTION_19(v29);
    v33 = v4 && v31 == v32;
    if (!v33 && (sub_1CFD49668() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v28)
  {
    return 0;
  }

  v34 = v11[11];
  OUTLINED_FUNCTION_6_0();
  if (v37)
  {
    if (!v35)
    {
      return 0;
    }

    OUTLINED_FUNCTION_19(v36);
    v40 = v4 && v38 == v39;
    if (!v40 && (sub_1CFD49668() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v35)
  {
    return 0;
  }

  v41 = v11[12];
  OUTLINED_FUNCTION_6_0();
  if (v44)
  {
    if (!v42)
    {
      return 0;
    }

    OUTLINED_FUNCTION_19(v43);
    v47 = v4 && v45 == v46;
    if (!v47 && (sub_1CFD49668() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v42)
  {
    return 0;
  }

  v48 = v11[13];
  OUTLINED_FUNCTION_6_0();
  if (v51)
  {
    if (!v49)
    {
      return 0;
    }

    OUTLINED_FUNCTION_19(v50);
    v54 = v4 && v52 == v53;
    if (!v54 && (sub_1CFD49668() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v49)
  {
    return 0;
  }

  OUTLINED_FUNCTION_22_4(v11[14]);
  if (v4)
  {
    if (v55 != 2)
    {
      return 0;
    }
  }

  else if (v55 == 2 || ((v55 ^ v56) & 1) != 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_22_4(v11[15]);
  if (v4)
  {
    if (v57 != 2)
    {
      return 0;
    }
  }

  else if (v57 == 2 || ((v57 ^ v58) & 1) != 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_22_4(v11[16]);
  if (v4)
  {
    if (v59 != 2)
    {
      return 0;
    }
  }

  else if (v59 == 2 || ((v59 ^ v60) & 1) != 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_22_4(v11[17]);
  if (v4)
  {
    if (v61 == 2)
    {
      goto LABEL_103;
    }

    return 0;
  }

  if (v61 == 2 || ((v61 ^ v62) & 1) != 0)
  {
    return 0;
  }

LABEL_103:
  if (*(a1 + v11[18]) != *(a2 + v11[18]) || (sub_1CFCDCC38(*(a1 + v11[19]), *(a2 + v11[19])) & 1) == 0 || (sub_1CFCDCB14(*(a1 + v11[20]), *(a2 + v11[20])) & 1) == 0)
  {
    return 0;
  }

  v63 = v11[21];
  v64 = *(a1 + v63);
  v65 = *(a2 + v63);

  return sub_1CFCDCB14(v64, v65);
}

uint64_t sub_1CFD06EE8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6449657571696E75 && a2 == 0xE800000000000000;
  if (v4 || (OUTLINED_FUNCTION_20() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x64496E69616D6F64 && a2 == 0xE800000000000000;
    if (v6 || (OUTLINED_FUNCTION_20() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000010 && 0x80000001CFD5D690 == a2;
      if (v7 || (OUTLINED_FUNCTION_20() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000011 && 0x80000001CFD5D6B0 == a2;
        if (v8 || (OUTLINED_FUNCTION_20() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v10 = a1 == OUTLINED_FUNCTION_56() && a2 == v9;
          if (v10 || (OUTLINED_FUNCTION_20() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v11 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
            if (v11 || (OUTLINED_FUNCTION_20() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v12 = a1 == 0x656C746974627573 && a2 == 0xE800000000000000;
              if (v12 || (OUTLINED_FUNCTION_20() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v13 = a1 == 2036625250 && a2 == 0xE400000000000000;
                if (v13 || (OUTLINED_FUNCTION_20() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v14 = a1 == 0x6449646165726874 && a2 == 0xE800000000000000;
                  if (v14 || (OUTLINED_FUNCTION_20() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v15 = a1 == 0x79726F6765746163 && a2 == 0xE800000000000000;
                    if (v15 || (OUTLINED_FUNCTION_20() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v17 = a1 == OUTLINED_FUNCTION_32_2() && a2 == v16;
                      if (v17 || (OUTLINED_FUNCTION_20() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v19 = a1 == OUTLINED_FUNCTION_31_2() && a2 == v18;
                        if (v19 || (OUTLINED_FUNCTION_20() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v20 = a1 == 0x6369746972437369 && a2 == 0xEA00000000006C61;
                          if (v20 || (OUTLINED_FUNCTION_20() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v21 = a1 == 0xD00000000000001BLL && 0x80000001CFD5E1C0 == a2;
                            if (v21 || (OUTLINED_FUNCTION_20() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v22 = a1 == 0xD000000000000011 && 0x80000001CFD5D770 == a2;
                              if (v22 || (OUTLINED_FUNCTION_20() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v24 = a1 == OUTLINED_FUNCTION_57() && a2 == v23;
                                if (v24 || (OUTLINED_FUNCTION_20() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v26 = a1 == OUTLINED_FUNCTION_30_2() && a2 == v25;
                                  if (v26 || (OUTLINED_FUNCTION_20() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else if (a1 == 0xD000000000000010 && 0x80000001CFD5D6F0 == a2)
                                  {

                                    return 17;
                                  }

                                  else
                                  {
                                    v28 = OUTLINED_FUNCTION_20();

                                    if (v28)
                                    {
                                      return 17;
                                    }

                                    else
                                    {
                                      return 18;
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

uint64_t sub_1CFD07308(char a1)
{
  result = 0x6449657571696E75;
  switch(a1)
  {
    case 1:
      v3 = 0x6E69616D6F64;
      goto LABEL_19;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
    case 14:
      result = 0xD000000000000011;
      break;
    case 4:
      result = OUTLINED_FUNCTION_56();
      break;
    case 5:
      result = 0x656C746974;
      break;
    case 6:
      result = 0x656C746974627573;
      break;
    case 7:
      result = 2036625250;
      break;
    case 8:
      v3 = 0x646165726874;
LABEL_19:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6449000000000000;
      break;
    case 9:
      result = 0x79726F6765746163;
      break;
    case 10:
      result = OUTLINED_FUNCTION_32_2();
      break;
    case 11:
      result = OUTLINED_FUNCTION_31_2();
      break;
    case 12:
      result = 0x6369746972437369;
      break;
    case 13:
      result = 0xD00000000000001BLL;
      break;
    case 15:
      result = OUTLINED_FUNCTION_57();
      break;
    case 16:
      result = OUTLINED_FUNCTION_30_2();
      break;
    case 17:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1CFD074D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CFD06EE8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1CFD07504(uint64_t a1)
{
  v2 = sub_1CFD079CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CFD07540(uint64_t a1)
{
  v2 = sub_1CFD079CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t NotificationEntity.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F3078, &qword_1CFD4D640);
  v6 = OUTLINED_FUNCTION_37(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v30 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CFD079CC();
  sub_1CFD497A8();
  v14 = *v3;
  v15 = v3[1];
  LOBYTE(v32) = 0;
  OUTLINED_FUNCTION_0_7();
  sub_1CFD495E8();
  if (!v2)
  {
    v16 = v3[2];
    v17 = v3[3];
    LOBYTE(v32) = 1;
    OUTLINED_FUNCTION_0_7();
    sub_1CFD495B8();
    v18 = v3[4];
    v19 = v3[5];
    LOBYTE(v32) = 2;
    OUTLINED_FUNCTION_0_7();
    sub_1CFD495B8();
    v20 = type metadata accessor for NotificationEntity();
    v21 = v20[7];
    LOBYTE(v32) = 3;
    sub_1CFD48CC8();
    OUTLINED_FUNCTION_17_5();
    sub_1CFD089C0(v22, v23);
    OUTLINED_FUNCTION_13_5();
    sub_1CFD49618();
    OUTLINED_FUNCTION_34(v20[8]);
    LOBYTE(v32) = 4;
    OUTLINED_FUNCTION_0_7();
    sub_1CFD495B8();
    OUTLINED_FUNCTION_34(v20[9]);
    LOBYTE(v32) = 5;
    OUTLINED_FUNCTION_0_7();
    sub_1CFD495B8();
    OUTLINED_FUNCTION_34(v20[10]);
    LOBYTE(v32) = 6;
    OUTLINED_FUNCTION_0_7();
    sub_1CFD495B8();
    OUTLINED_FUNCTION_34(v20[11]);
    LOBYTE(v32) = 7;
    OUTLINED_FUNCTION_0_7();
    sub_1CFD495B8();
    OUTLINED_FUNCTION_34(v20[12]);
    LOBYTE(v32) = 8;
    OUTLINED_FUNCTION_0_7();
    sub_1CFD495B8();
    OUTLINED_FUNCTION_34(v20[13]);
    LOBYTE(v32) = 9;
    OUTLINED_FUNCTION_0_7();
    sub_1CFD495B8();
    v24 = *(v3 + v20[14]);
    OUTLINED_FUNCTION_1_7(10);
    sub_1CFD495C8();
    v25 = *(v3 + v20[15]);
    OUTLINED_FUNCTION_1_7(11);
    sub_1CFD495C8();
    v26 = *(v3 + v20[16]);
    OUTLINED_FUNCTION_1_7(12);
    sub_1CFD495C8();
    v27 = *(v3 + v20[17]);
    OUTLINED_FUNCTION_1_7(13);
    sub_1CFD495C8();
    v28 = *(v3 + v20[18]);
    OUTLINED_FUNCTION_1_7(14);
    sub_1CFD495F8();
    v32 = *(v3 + v20[19]);
    v31 = 15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2AB8, &qword_1CFD4D060);
    sub_1CFD082E0(&qword_1EC4F2AC0, &qword_1EC4F2AC8);
    OUTLINED_FUNCTION_27_3();
    OUTLINED_FUNCTION_13_5();
    sub_1CFD49618();
    v32 = *(v3 + v20[20]);
    v31 = 16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2AA8, &unk_1CFD49F00);
    sub_1CFD07A20(&qword_1EC4F2AB0, sub_1CFCDF174);
    OUTLINED_FUNCTION_27_3();
    OUTLINED_FUNCTION_13_5();
    sub_1CFD49618();
    v32 = *(v3 + v20[21]);
    v31 = 17;
    OUTLINED_FUNCTION_27_3();
    OUTLINED_FUNCTION_13_5();
    sub_1CFD49618();
  }

  return (*(v8 + 8))(v12, v5);
}

unint64_t sub_1CFD079CC()
{
  result = qword_1EC4FA020[0];
  if (!qword_1EC4FA020[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4FA020);
  }

  return result;
}

uint64_t sub_1CFD07A20(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4F2AA8, &unk_1CFD49F00);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t NotificationEntity.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1CFD48CC8();
  v6 = OUTLINED_FUNCTION_37(v5);
  v44 = v7;
  v45 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_0();
  v12 = v11 - v10;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F3080, &qword_1CFD4D648);
  v13 = OUTLINED_FUNCTION_37(v43);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v47 = type metadata accessor for NotificationEntity();
  v16 = OUTLINED_FUNCTION_25(v47);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_2_0();
  v46 = (v20 - v19);
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CFD079CC();
  sub_1CFD49788();
  if (v2)
  {
    OUTLINED_FUNCTION_6_6();
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    OUTLINED_FUNCTION_14_5();
    *v46 = sub_1CFD49548();
    v46[1] = v22;
    v46[2] = OUTLINED_FUNCTION_4_4(1);
    v46[3] = v23;
    v46[4] = OUTLINED_FUNCTION_4_4(2);
    v46[5] = v24;
    LOBYTE(v48) = 3;
    OUTLINED_FUNCTION_17_5();
    sub_1CFD089C0(v25, v26);
    OUTLINED_FUNCTION_14_5();
    sub_1CFD49578();
    (*(v44 + 32))(v46 + v47[7], v12, v45);
    v27 = OUTLINED_FUNCTION_4_4(4);
    OUTLINED_FUNCTION_60(v27, v28, v47[8]);
    v29 = OUTLINED_FUNCTION_4_4(5);
    OUTLINED_FUNCTION_60(v29, v30, v47[9]);
    v31 = OUTLINED_FUNCTION_4_4(6);
    OUTLINED_FUNCTION_60(v31, v32, v47[10]);
    v33 = OUTLINED_FUNCTION_4_4(7);
    OUTLINED_FUNCTION_60(v33, v34, v47[11]);
    v35 = OUTLINED_FUNCTION_4_4(8);
    OUTLINED_FUNCTION_60(v35, v36, v47[12]);
    v37 = OUTLINED_FUNCTION_4_4(9);
    v38 = (v46 + v47[13]);
    *v38 = v37;
    v38[1] = v39;
    OUTLINED_FUNCTION_2_6(10);
    *(v46 + v47[14]) = sub_1CFD49528();
    OUTLINED_FUNCTION_2_6(11);
    *(v46 + v47[15]) = sub_1CFD49528();
    OUTLINED_FUNCTION_2_6(12);
    *(v46 + v47[16]) = sub_1CFD49528();
    OUTLINED_FUNCTION_2_6(13);
    *(v46 + v47[17]) = sub_1CFD49528();
    OUTLINED_FUNCTION_2_6(14);
    *(v46 + v47[18]) = sub_1CFD49558() & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2AB8, &qword_1CFD4D060);
    sub_1CFD082E0(&qword_1EC4F2B20, &qword_1EC4F2B28);
    OUTLINED_FUNCTION_14_5();
    sub_1CFD49578();
    *(v46 + v47[19]) = v48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2AA8, &unk_1CFD49F00);
    sub_1CFD07A20(&qword_1EC4F2B18, sub_1CFCDF450);
    OUTLINED_FUNCTION_14_5();
    sub_1CFD49578();
    *(v46 + v47[20]) = v48;
    OUTLINED_FUNCTION_14_5();
    sub_1CFD49578();
    v40 = OUTLINED_FUNCTION_10_2();
    v41(v40);
    *(v46 + v47[21]) = v48;
    sub_1CFD08964(v46, a2, type metadata accessor for NotificationEntity);
    __swift_destroy_boxed_opaque_existential_1(a1);
    OUTLINED_FUNCTION_27();
    return sub_1CFD08A08();
  }
}

uint64_t sub_1CFD082E0(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4F2AB8, &qword_1CFD4D060);
    sub_1CFD089C0(a2, type metadata accessor for EntityAttachment);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1CFD083B4(uint64_t a1)
{
  result = sub_1CFD089C0(&qword_1EDDD2E08, type metadata accessor for NotificationEntity);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1CFD08418(uint64_t a1)
{
  *(a1 + 8) = sub_1CFD089C0(&qword_1EDDD2E10, type metadata accessor for NotificationEntity);
  result = sub_1CFD089C0(&qword_1EDDD2E18, type metadata accessor for NotificationEntity);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1CFD084F8()
{
  v1 = OUTLINED_FUNCTION_16_3();
  sub_1CFD086A8(v1, v2, v3, v4);
  OUTLINED_FUNCTION_37_3();
  if (!(!v6 & v5))
  {
    v7 = sub_1CFD48CC8();
    if (v8 > 0x3F)
    {
      return v7;
    }

    else
    {
      v9 = MEMORY[0x1E69E6370];
      v10 = OUTLINED_FUNCTION_16_3();
      sub_1CFD086A8(v10, v11, v9, v12);
      OUTLINED_FUNCTION_37_3();
      if (!(!v6 & v5))
      {
        sub_1CFD08650();
        OUTLINED_FUNCTION_37_3();
        if (!(!v6 & v5))
        {
          sub_1CFD086A8(319, &qword_1EDDD3338, &type metadata for EntityHandle, MEMORY[0x1E69E62F8]);
          OUTLINED_FUNCTION_37_3();
          if (!(!v6 & v5))
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v0;
}

void sub_1CFD08650()
{
  if (!qword_1EDDD3320)
  {
    type metadata accessor for EntityAttachment();
    v0 = sub_1CFD49218();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDDD3320);
    }
  }
}

void sub_1CFD086A8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t getEnumTagSinglePayload for NotificationEntity.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xEF)
  {
    if (a2 + 17 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 17) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 18;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v5 = v6 - 18;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for NotificationEntity.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1CFD08860()
{
  result = qword_1EC4FA230[0];
  if (!qword_1EC4FA230[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4FA230);
  }

  return result;
}

unint64_t sub_1CFD088B8()
{
  result = qword_1EC4FA340;
  if (!qword_1EC4FA340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4FA340);
  }

  return result;
}

unint64_t sub_1CFD08910()
{
  result = qword_1EC4FA348[0];
  if (!qword_1EC4FA348[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4FA348);
  }

  return result;
}

uint64_t sub_1CFD08964(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_25(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_27();
  v8(v7);
  return a2;
}

uint64_t sub_1CFD089C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1CFD08A08()
{
  v1 = OUTLINED_FUNCTION_21();
  v3 = v2(v1);
  OUTLINED_FUNCTION_25(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t OUTLINED_FUNCTION_2_6@<X0>(char a1@<W8>)
{
  *(v1 - 72) = a1;
  result = v1 - 72;
  v3 = *(v1 - 160);
  return result;
}

uint64_t OUTLINED_FUNCTION_4_4@<X0>(char a1@<W8>)
{
  *(v1 - 72) = a1;

  return sub_1CFD49518();
}

void OUTLINED_FUNCTION_6_6()
{
  *(v0 - 136) = 0;
  *(v0 - 128) = 0;
  *(v0 - 120) = 0;
  *(v0 - 112) = 0;
}

uint64_t OUTLINED_FUNCTION_10_2()
{
  v3 = *(v0 + 8);
  result = v1;
  v5 = *(v2 - 160);
  return result;
}

uint64_t OUTLINED_FUNCTION_36_3()
{

  return type metadata accessor for NotificationEntity();
}

uint64_t sub_1CFD08C48()
{
  v0 = sub_1CFD48E38();
  __swift_allocate_value_buffer(v0, qword_1EDDD3788);
  v1 = OUTLINED_FUNCTION_27();
  __swift_project_value_buffer(v1, v2);
  OUTLINED_FUNCTION_139();
  return sub_1CFD48E28();
}

uint64_t sub_1CFD08CC4()
{
  if (_MergedGlobals_0 != -1)
  {
    OUTLINED_FUNCTION_3_5();
  }

  v0 = sub_1CFD48E38();

  return __swift_project_value_buffer(v0, qword_1EDDD3788);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t static Logger.summarizationClient.getter@<X0>(uint64_t a1@<X8>)
{
  if (_MergedGlobals_0 != -1)
  {
    OUTLINED_FUNCTION_3_5();
  }

  v2 = sub_1CFD48E38();
  __swift_project_value_buffer(v2, qword_1EDDD3788);
  OUTLINED_FUNCTION_29_2(v2);
  v4 = *(v3 + 16);

  return v4(a1);
}

uint64_t sub_1CFD08DE4()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  if (v3 < 2)
  {
    v4 = *v0;
    v5 = *(v0 + 8);
  }

  sub_1CFD08E34(v1, v2, v3);
  return OUTLINED_FUNCTION_27();
}

uint64_t sub_1CFD08E34(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

Swift::String __swiftcall SummarizationPipelineRequest.caseString()()
{
  v0 = sub_1CFD0B5C4(type metadata accessor for SummarizationPipelineRequest);
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t sub_1CFD08EC0()
{
  sub_1CFD09A68();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1CFD08EF8()
{
  sub_1CFD09A68();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1CFD08F68@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1CFD0B728();
  *a1 = result;
  return result;
}

uint64_t sub_1CFD08F90()
{
  sub_1CFD09A14();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1CFD08FC8()
{
  sub_1CFD09A14();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1CFD09000()
{
  sub_1CFD09B94();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1CFD09038()
{
  sub_1CFD09B94();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1CFD09070()
{
  sub_1CFD09C98();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1CFD090A8()
{
  sub_1CFD09C98();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1CFD090E0()
{
  sub_1CFD09ABC();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1CFD09118()
{
  sub_1CFD09ABC();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1CFD09150()
{
  sub_1CFD09D34();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1CFD09188()
{
  sub_1CFD09D34();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

void SummarizationPipelineRequest.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_143();
  a19 = v21;
  a20 = v22;
  a10 = v20;
  v24 = v23;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F3088, &qword_1CFD4D8D0);
  OUTLINED_FUNCTION_37(v102);
  v101 = v25;
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_89_0(v29);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F3090, &qword_1CFD4D8D8);
  OUTLINED_FUNCTION_37(v99);
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_89_0(v33);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F3098, &qword_1CFD4D8E0);
  OUTLINED_FUNCTION_37(v98);
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_89_0(v37);
  v96 = type metadata accessor for FeedbackRequest(0);
  v38 = OUTLINED_FUNCTION_25(v96);
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_89_0(v42 - v41);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F30A0, &qword_1CFD4D8E8);
  OUTLINED_FUNCTION_37(v95);
  v44 = *(v43 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_89_0(v46);
  v94 = type metadata accessor for ModelInputContentRequest(0);
  v47 = OUTLINED_FUNCTION_25(v94);
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_2_0();
  v52 = v51 - v50;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F30A8, &qword_1CFD4D8F0);
  OUTLINED_FUNCTION_37(v53);
  v55 = *(v54 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_16_4();
  v57 = type metadata accessor for SummarizationPipelineRequest(0);
  v58 = OUTLINED_FUNCTION_25(v57);
  v60 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_2_0();
  v63 = (v62 - v61);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F30B0, &unk_1CFD4D8F8);
  OUTLINED_FUNCTION_37(v103);
  v65 = *(v64 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_146();
  v67 = v24[4];
  OUTLINED_FUNCTION_178(v24, v24[3]);
  sub_1CFD09A14();
  sub_1CFD497A8();
  sub_1CFD125F4();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1CFD09C40();
      LOBYTE(v105[0]) = 1;
      sub_1CFD09C98();
      OUTLINED_FUNCTION_108_0(&v105[4]);
      OUTLINED_FUNCTION_24_4();
      sub_1CFD495A8();
      OUTLINED_FUNCTION_58_1();
      sub_1CFD09CEC(v88, 255, v89);
      OUTLINED_FUNCTION_124_0();
      v90 = OUTLINED_FUNCTION_19_3(&v105[5]);
      v91(v90, v95);
      v82 = type metadata accessor for ModelInputContentRequest;
      v83 = v52;
      goto LABEL_8;
    case 2u:
      sub_1CFD09C40();
      LOBYTE(v105[0]) = 2;
      sub_1CFD09B94();
      OUTLINED_FUNCTION_108_0(&v105[9]);
      OUTLINED_FUNCTION_24_4();
      sub_1CFD495A8();
      OUTLINED_FUNCTION_49_1();
      sub_1CFD09CEC(v78, 255, v79);
      OUTLINED_FUNCTION_124_0();
      v80 = OUTLINED_FUNCTION_19_3(&v105[10]);
      v81(v80, v98);
      v82 = type metadata accessor for FeedbackRequest;
      v83 = v97;
LABEL_8:
      sub_1CFD09BE8(v83, v82);
      v92 = OUTLINED_FUNCTION_17_6();
      v93(v92);
      goto LABEL_9;
    case 3u:
      memcpy(v105, v63, 0x51uLL);
      sub_1CFD09ABC();
      OUTLINED_FUNCTION_108_0(&a9);
      OUTLINED_FUNCTION_24_4();
      sub_1CFD495A8();
      memcpy(v104, v105, sizeof(v104));
      sub_1CFD09B10();
      OUTLINED_FUNCTION_124_0();
      v84 = OUTLINED_FUNCTION_19_3(&a10);
      v85(v84, v99);
      v86 = OUTLINED_FUNCTION_17_6();
      v87(v86);
      sub_1CFD09B64(v105);
      goto LABEL_9;
    case 4u:
      v77 = *v63;
      sub_1CFD09A68();
      OUTLINED_FUNCTION_47_2();
      sub_1CFD495A8();
      v105[0] = v77;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2A98, &unk_1CFD4D010);
      OUTLINED_FUNCTION_67(&qword_1EDDD2B28);
      sub_1CFD49618();
      (*(v101 + 8))(v100, v102);
      v74 = OUTLINED_FUNCTION_30_3();
      v76 = v103;
      goto LABEL_4;
    default:
      v68 = *v63;
      v69 = v63[1];
      v70 = *(v63 + 16);
      v71 = *(v63 + 17);
      sub_1CFD09D34();
      OUTLINED_FUNCTION_47_2();
      sub_1CFD495A8();
      v105[0] = v68;
      v105[1] = v69;
      LOBYTE(v105[2]) = v70;
      BYTE1(v105[2]) = v71;
      sub_1CFCE6E60();
      OUTLINED_FUNCTION_124_0();
      v72 = OUTLINED_FUNCTION_19_3(&v105[2]);
      v73(v72, v53);
      v74 = OUTLINED_FUNCTION_30_3();
      v76 = v103;
LABEL_4:
      v75(v74, v76);

LABEL_9:
      OUTLINED_FUNCTION_142();
      return;
  }
}

unint64_t sub_1CFD09A14()
{
  result = qword_1EDDD5990[0];
  if (!qword_1EDDD5990[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDD5990);
  }

  return result;
}

unint64_t sub_1CFD09A68()
{
  result = qword_1EDDD54D8[0];
  if (!qword_1EDDD54D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDD54D8);
  }

  return result;
}

unint64_t sub_1CFD09ABC()
{
  result = qword_1EC4FA3D0;
  if (!qword_1EC4FA3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4FA3D0);
  }

  return result;
}

unint64_t sub_1CFD09B10()
{
  result = qword_1EC4F30B8;
  if (!qword_1EC4F30B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F30B8);
  }

  return result;
}

unint64_t sub_1CFD09B94()
{
  result = qword_1EC4FA3D8;
  if (!qword_1EC4FA3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4FA3D8);
  }

  return result;
}

uint64_t sub_1CFD09BE8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_25(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1CFD09C40()
{
  OUTLINED_FUNCTION_137();
  v2 = v1(0);
  OUTLINED_FUNCTION_25(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_27();
  v6(v5);
  return v0;
}

unint64_t sub_1CFD09C98()
{
  result = qword_1EC4FA3E0;
  if (!qword_1EC4FA3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4FA3E0);
  }

  return result;
}

uint64_t sub_1CFD09CEC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1CFD09D34()
{
  result = qword_1EC4FA3E8;
  if (!qword_1EC4FA3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4FA3E8);
  }

  return result;
}

void SummarizationPipelineRequest.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_143();
  a19 = v24;
  a20 = v25;
  a10 = v20;
  v27 = v26;
  v134 = v28;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F30D0, &qword_1CFD4D908);
  OUTLINED_FUNCTION_37(v131);
  v136 = v29;
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_22_1();
  v140 = v33;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F30D8, &qword_1CFD4D910);
  OUTLINED_FUNCTION_37(v130);
  v135 = v34;
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_22_1();
  v133 = v38;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F30E0, &qword_1CFD4D918);
  OUTLINED_FUNCTION_37(v129);
  v128 = v39;
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_22_1();
  v132 = v43;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F30E8, &qword_1CFD4D920);
  OUTLINED_FUNCTION_37(v127);
  v126 = v44;
  v46 = *(v45 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_89_0(v48);
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F30F0, &qword_1CFD4D928);
  OUTLINED_FUNCTION_37(v125);
  v124 = v49;
  v51 = *(v50 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_89_0(v53);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F30F8, &unk_1CFD4D930);
  v55 = OUTLINED_FUNCTION_37(v54);
  v138 = v56;
  v139 = v55;
  v58 = *(v57 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_16_4();
  v137 = type metadata accessor for SummarizationPipelineRequest(0);
  v60 = OUTLINED_FUNCTION_25(v137);
  v62 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_9_0();
  v123 = (v63 - v64);
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_134_0();
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_133_0();
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_105();
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_73_0();
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_137_0();
  v141 = v27;
  v70 = OUTLINED_FUNCTION_110_0();
  OUTLINED_FUNCTION_178(v70, v71);
  sub_1CFD09A14();
  OUTLINED_FUNCTION_120_0();
  if (!v20)
  {
    v72 = v139;
    v73 = v22;
    v74 = sub_1CFD49588();
    v75 = sub_1CFCE83C4(v74, 0);
    if (v77 == v76 >> 1)
    {
      v79 = v137;
      v78 = v138;
    }

    else
    {
      OUTLINED_FUNCTION_74_0();
      a10 = v22;
      OUTLINED_FUNCTION_135_0();
      if (v84 == v85)
      {
        __break(1u);
        return;
      }

      v86 = *(v83 + v81);
      sub_1CFCE840C(v81 + 1, v80, v75, v83, v81, v82);
      v88 = v87;
      v90 = v89;
      swift_unknownObjectRelease();
      if (v88 == v90 >> 1)
      {
        switch(v86)
        {
          case 1:
            LOBYTE(v142[0]) = 1;
            sub_1CFD09C98();
            OUTLINED_FUNCTION_108_0(&a18);
            OUTLINED_FUNCTION_42_2();
            type metadata accessor for ModelInputContentRequest(0);
            OUTLINED_FUNCTION_58_1();
            sub_1CFD09CEC(v100, 255, v101);
            OUTLINED_FUNCTION_102_0();
            sub_1CFD49578();
            OUTLINED_FUNCTION_136_0();
            swift_unknownObjectRelease();
            v119 = OUTLINED_FUNCTION_19_3(&a11);
            v120(v119, v127);
            v121 = OUTLINED_FUNCTION_18_3();
            v122(v121);
            swift_storeEnumTagMultiPayload();
            OUTLINED_FUNCTION_7_6();
            goto LABEL_18;
          case 2:
            LOBYTE(v142[0]) = 2;
            sub_1CFD09B94();
            OUTLINED_FUNCTION_42_2();
            type metadata accessor for FeedbackRequest(0);
            OUTLINED_FUNCTION_49_1();
            sub_1CFD09CEC(v98, 255, v99);
            OUTLINED_FUNCTION_108_0(&v142[9]);
            OUTLINED_FUNCTION_98_0();
            sub_1CFD49578();
            OUTLINED_FUNCTION_136_0();
            swift_unknownObjectRelease();
            v105 = OUTLINED_FUNCTION_17_6();
            v106(v105);
            v107 = OUTLINED_FUNCTION_18_3();
            v108(v107);
            swift_storeEnumTagMultiPayload();
            OUTLINED_FUNCTION_7_6();
            goto LABEL_18;
          case 3:
            LOBYTE(v142[0]) = 3;
            sub_1CFD09ABC();
            OUTLINED_FUNCTION_42_2();
            sub_1CFD1250C();
            sub_1CFD49578();
            swift_unknownObjectRelease();
            v109 = *(v135 + 8);
            v110 = OUTLINED_FUNCTION_140();
            v111(v110);
            (*(v138 + 8))(a10, v139);
            memcpy(v23, v142, 0x51uLL);
            goto LABEL_17;
          case 4:
            LOBYTE(v142[0]) = 4;
            sub_1CFD09A68();
            OUTLINED_FUNCTION_42_2();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2A98, &unk_1CFD4D010);
            OUTLINED_FUNCTION_71_0(&qword_1EDDD2B20);
            sub_1CFD49578();
            OUTLINED_FUNCTION_136_0();
            swift_unknownObjectRelease();
            (*(v136 + 8))(v140, v131);
            v102 = OUTLINED_FUNCTION_18_3();
            v103(v102);
            *v123 = v142[0];
            swift_storeEnumTagMultiPayload();
            OUTLINED_FUNCTION_7_6();
            OUTLINED_FUNCTION_146_0(&v142[10]);
            v104 = v141;
            goto LABEL_19;
          default:
            LOBYTE(v142[0]) = 0;
            sub_1CFD09D34();
            OUTLINED_FUNCTION_42_2();
            sub_1CFCE84E4();
            OUTLINED_FUNCTION_24_4();
            sub_1CFD49578();
            OUTLINED_FUNCTION_136_0();
            swift_unknownObjectRelease();
            v112 = OUTLINED_FUNCTION_17_6();
            v113(v112);
            v114 = OUTLINED_FUNCTION_18_3();
            v115(v114);
            v116 = v142[1];
            v117 = v142[2];
            v118 = BYTE1(v142[2]);
            *v21 = v142[0];
            *(v21 + 8) = v116;
            *(v21 + 16) = v117;
            *(v21 + 17) = v118;
LABEL_17:
            swift_storeEnumTagMultiPayload();
            OUTLINED_FUNCTION_7_6();
LABEL_18:
            OUTLINED_FUNCTION_146_0(&v142[10]);
            v104 = v141;
LABEL_19:
            OUTLINED_FUNCTION_7_6();
            sub_1CFD09C40();
            v97 = v104;
            break;
        }

        goto LABEL_12;
      }

      v79 = v137;
      v78 = v138;
      v73 = a10;
    }

    v91 = sub_1CFD49448();
    OUTLINED_FUNCTION_38_2();
    swift_allocError();
    v93 = v92;
    v94 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2CB0, &qword_1CFD4BF00) + 48);
    *v93 = v79;
    sub_1CFD49508();
    OUTLINED_FUNCTION_65_0();
    v95 = *MEMORY[0x1E69E6AF8];
    OUTLINED_FUNCTION_29_2(v91);
    (*(v96 + 104))(v93);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v78 + 8))(v73, v72);
  }

  v97 = v141;
LABEL_12:
  __swift_destroy_boxed_opaque_existential_1(v97);
  OUTLINED_FUNCTION_142();
}

uint64_t sub_1CFD0A82C()
{
  OUTLINED_FUNCTION_137();
  v3 = v1 == 0x726F727265 && v2 == 0xE500000000000000;
  if (v3 || (OUTLINED_FUNCTION_20() & 1) != 0)
  {

    return 0;
  }

  else if (v1 == 0x73736563637573 && v0 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_37_0();
    if (v1)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1CFD0A8CC(char a1)
{
  if (a1)
  {
    return 0x73736563637573;
  }

  else
  {
    return 0x726F727265;
  }
}

uint64_t sub_1CFD0A900(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x65736E6F70736572 && a2 == 0xE800000000000000)
  {

    v4 = 0;
  }

  else
  {
    sub_1CFD49668();
    OUTLINED_FUNCTION_37_0();
    v4 = v2 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1CFD0A9C4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1CFD0A82C();
  *a1 = result;
  return result;
}

uint64_t sub_1CFD0A9EC()
{
  sub_1CFD125A0();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1CFD0AA24()
{
  sub_1CFD125A0();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1CFD0AA74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CFD0B90C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1CFD0AAA0()
{
  sub_1CFD126A0();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1CFD0AAD8()
{
  sub_1CFD126A0();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1CFD0AB28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CFD0A900(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1CFD0AB54()
{
  sub_1CFD1264C();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1CFD0AB8C()
{
  sub_1CFD1264C();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

void SummarizationPipelineResult.encode(to:)()
{
  OUTLINED_FUNCTION_143();
  v54 = v0;
  v55 = v1;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F3118, &qword_1CFD4D940);
  v5 = OUTLINED_FUNCTION_37(v4);
  v52 = v6;
  v53 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_22_1();
  v51 = v10;
  v49 = type metadata accessor for SummarizationPipelineResponse(0);
  v11 = OUTLINED_FUNCTION_25(v49);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2_0();
  v50 = v15 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F3120, &qword_1CFD4D948);
  v17 = OUTLINED_FUNCTION_37(v16);
  v48[1] = v18;
  v48[2] = v17;
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v21);
  v22 = type metadata accessor for SummarizationPipelineResult(0);
  v23 = OUTLINED_FUNCTION_25(v22);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_2_0();
  v28 = (v27 - v26);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F3128, &qword_1CFD4D950);
  OUTLINED_FUNCTION_37(v29);
  v31 = v30;
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v34);
  v36 = v48 - v35;
  v37 = v3[4];
  OUTLINED_FUNCTION_178(v3, v3[3]);
  sub_1CFD125A0();
  sub_1CFD497A8();
  OUTLINED_FUNCTION_4_5();
  sub_1CFD125F4();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v38 = v50;
    sub_1CFD09C40();
    sub_1CFD1264C();
    v39 = v51;
    sub_1CFD495A8();
    OUTLINED_FUNCTION_57_1();
    sub_1CFD09CEC(v40, 255, v41);
    v42 = v53;
    sub_1CFD49618();
    (*(v52 + 8))(v39, v42);
    OUTLINED_FUNCTION_0_8();
    sub_1CFD09BE8(v38, v43);
  }

  else
  {
    v44 = *v28;
    v45 = v28[1];
    sub_1CFD126A0();
    sub_1CFD495A8();
    sub_1CFD495E8();

    v46 = OUTLINED_FUNCTION_101_0();
    v47(v46);
  }

  (*(v31 + 8))(v36, v29);
  OUTLINED_FUNCTION_142();
}

void SummarizationPipelineResult.init(from:)()
{
  OUTLINED_FUNCTION_143();
  v85 = v1;
  v4 = v3;
  v76 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F3130, &qword_1CFD4D958);
  v79 = OUTLINED_FUNCTION_37(v6);
  v80 = v7;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_22_1();
  v81 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F3138, &qword_1CFD4D960);
  v13 = OUTLINED_FUNCTION_37(v12);
  v77 = v14;
  v78 = v13;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_22_1();
  v83 = v18;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F3140, &qword_1CFD4D968);
  OUTLINED_FUNCTION_37(v84);
  v82 = v19;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_16_4();
  v23 = type metadata accessor for SummarizationPipelineResult(0);
  v24 = OUTLINED_FUNCTION_25(v23);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_105();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_73_0();
  MEMORY[0x1EEE9AC00](v28);
  v30 = v74 - v29;
  v31 = v4[4];
  OUTLINED_FUNCTION_178(v4, v4[3]);
  sub_1CFD125A0();
  v32 = v85;
  sub_1CFD49788();
  if (!v32)
  {
    v74[0] = v2;
    v74[1] = v0;
    v74[2] = v30;
    v75 = v23;
    v85 = v4;
    v33 = sub_1CFD49588();
    v34 = sub_1CFCE83C4(v33, 0);
    if (v36 != v35 >> 1)
    {
      OUTLINED_FUNCTION_74_0();
      OUTLINED_FUNCTION_135_0();
      if (v41 == v42)
      {
        __break(1u);
        return;
      }

      v86 = *(v40 + v38);
      sub_1CFCE840C(v38 + 1, v37, v34, v40, v38, v39);
      v44 = v43;
      v46 = v45;
      swift_unknownObjectRelease();
      if (v44 == v46 >> 1)
      {
        if (v86)
        {
          sub_1CFD1264C();
          OUTLINED_FUNCTION_43_2();
          sub_1CFD494F8();
          v47 = v82;
          type metadata accessor for SummarizationPipelineResponse(0);
          OUTLINED_FUNCTION_57_1();
          sub_1CFD09CEC(v59, 255, v60);
          sub_1CFD49578();
          swift_unknownObjectRelease();
          v61 = OUTLINED_FUNCTION_101_0();
          v62(v61);
          v63 = *(v47 + 8);
          v64 = OUTLINED_FUNCTION_140();
          v65(v64);
        }

        else
        {
          sub_1CFD126A0();
          OUTLINED_FUNCTION_43_2();
          sub_1CFD494F8();
          v58 = v82;
          v81 = sub_1CFD49548();
          v67 = v66;
          swift_unknownObjectRelease();
          v68 = OUTLINED_FUNCTION_138_0();
          v69(v68);
          v70 = *(v58 + 8);
          v71 = OUTLINED_FUNCTION_68_0();
          v72(v71);
          v73 = v74[0];
          *v74[0] = v81;
          *(v73 + 8) = v67;
        }

        swift_storeEnumTagMultiPayload();
        sub_1CFD09C40();
        sub_1CFD09C40();
        v57 = v85;
        goto LABEL_10;
      }
    }

    v48 = v75;
    v49 = sub_1CFD49448();
    OUTLINED_FUNCTION_38_2();
    swift_allocError();
    v51 = v50;
    v52 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2CB0, &qword_1CFD4BF00) + 48);
    *v51 = v48;
    sub_1CFD49508();
    OUTLINED_FUNCTION_65_0();
    v53 = *MEMORY[0x1E69E6AF8];
    OUTLINED_FUNCTION_29_2(v49);
    (*(v54 + 104))(v51);
    swift_willThrow();
    swift_unknownObjectRelease();
    v55 = OUTLINED_FUNCTION_25_3();
    v56(v55);
    v4 = v85;
  }

  v57 = v4;
LABEL_10:
  __swift_destroy_boxed_opaque_existential_1(v57);
  OUTLINED_FUNCTION_142();
}

Swift::String __swiftcall SummarizationPipelineResponse.caseString()()
{
  v0 = sub_1CFD0B5C4(type metadata accessor for SummarizationPipelineResponse);
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

unint64_t sub_1CFD0B5C4(uint64_t (*a1)(void))
{
  v1 = a1(0);
  OUTLINED_FUNCTION_25(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v4);
  sub_1CFD125F4();
  OUTLINED_FUNCTION_32_1();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
    case 4u:
      v5 = 0xD000000000000011;
      OUTLINED_FUNCTION_127();
      break;
    case 2u:
      OUTLINED_FUNCTION_127();
      v5 = 0x6B63616264656566;
      break;
    case 3u:
      OUTLINED_FUNCTION_127();
      v5 = 0xD000000000000010;
      break;
    default:
      OUTLINED_FUNCTION_127();
      v5 = 0x7A6972616D6D7573;
      break;
  }

  return v5;
}

uint64_t sub_1CFD0B728()
{
  OUTLINED_FUNCTION_137();
  v3 = v1 == OUTLINED_FUNCTION_117_0() && v0 == v2;
  if (v3 || (OUTLINED_FUNCTION_20() & 1) != 0)
  {

    return 0;
  }

  else
  {
    OUTLINED_FUNCTION_106_0();
    v6 = v3 && v5 == v0;
    if (v6 || (OUTLINED_FUNCTION_20() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = v1 == 0x6B63616264656566 && v0 == 0xE800000000000000;
      if (v7 || (OUTLINED_FUNCTION_20() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = v1 == 0xD000000000000010 && 0x80000001CFD5E220 == v0;
        if (v8 || (OUTLINED_FUNCTION_20() & 1) != 0)
        {

          return 3;
        }

        else
        {
          OUTLINED_FUNCTION_106_0();
          if (v3 && v9 == v0)
          {

            return 4;
          }

          else
          {
            OUTLINED_FUNCTION_20();
            OUTLINED_FUNCTION_37_0();
            if (v1)
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

uint64_t sub_1CFD0B868()
{
  result = OUTLINED_FUNCTION_117_0();
  switch(v1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0x6B63616264656566;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1CFD0B90C(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    sub_1CFD49668();
    OUTLINED_FUNCTION_37_0();
    v4 = v2 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1CFD0B974()
{
  sub_1CFD12748();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1CFD0B9AC()
{
  sub_1CFD12748();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1CFD0B9E4()
{
  sub_1CFD126F4();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1CFD0BA1C()
{
  sub_1CFD126F4();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1CFD0BA54()
{
  sub_1CFD12844();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1CFD0BA8C()
{
  sub_1CFD12844();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1CFD0BAC4()
{
  sub_1CFD128EC();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1CFD0BAFC()
{
  sub_1CFD128EC();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1CFD0BB34()
{
  sub_1CFD1279C();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1CFD0BB6C()
{
  sub_1CFD1279C();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1CFD0BBA4()
{
  sub_1CFD12940();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1CFD0BBDC()
{
  sub_1CFD12940();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

void SummarizationPipelineResponse.encode(to:)()
{
  OUTLINED_FUNCTION_143();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F3148, &qword_1CFD4D970);
  v4 = OUTLINED_FUNCTION_37(v3);
  v91 = v5;
  v92 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_22_1();
  v90 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F3150, &qword_1CFD4D978);
  v11 = OUTLINED_FUNCTION_37(v10);
  v88 = v12;
  v89 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_22_1();
  v87 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F3158, &qword_1CFD4D980);
  v18 = OUTLINED_FUNCTION_37(v17);
  v85 = v19;
  v86 = v18;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_22_1();
  v83 = v23;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F3160, &qword_1CFD4D988);
  OUTLINED_FUNCTION_37(v84);
  v82 = v24;
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_22_1();
  v81 = v28;
  v79 = type metadata accessor for ModelInputContentResponse(0);
  v29 = OUTLINED_FUNCTION_25(v79);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_2_0();
  v80 = v33 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F3168, &qword_1CFD4D990);
  v35 = OUTLINED_FUNCTION_37(v34);
  v77 = v36;
  v78 = v35;
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_16_4();
  v40 = type metadata accessor for SummarizationResponse();
  v41 = OUTLINED_FUNCTION_25(v40);
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_2_0();
  v46 = v45 - v44;
  v47 = type metadata accessor for SummarizationPipelineResponse(0);
  v48 = OUTLINED_FUNCTION_25(v47);
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_2_0();
  v53 = (v52 - v51);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F3170, &qword_1CFD4D998);
  v93 = OUTLINED_FUNCTION_37(v54);
  v56 = *(v55 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_146();
  v58 = v2[4];
  OUTLINED_FUNCTION_178(v2, v2[3]);
  sub_1CFD126F4();
  sub_1CFD497A8();
  OUTLINED_FUNCTION_1_8();
  sub_1CFD125F4();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1CFD09C40();
      sub_1CFD128EC();
      OUTLINED_FUNCTION_47_2();
      sub_1CFD495A8();
      OUTLINED_FUNCTION_59_1();
      sub_1CFD09CEC(v75, 255, v76);
      sub_1CFD49618();
      (*(v82 + 8))(v81, v84);
      sub_1CFD09BE8(v80, type metadata accessor for ModelInputContentResponse);
      v61 = OUTLINED_FUNCTION_100_0();
      v63 = v93;
      goto LABEL_8;
    case 2u:
      v69 = *v53;
      v70 = v53[1];
      sub_1CFD12844();
      v65 = v83;
      v66 = v93;
      OUTLINED_FUNCTION_47_2();
      sub_1CFD495A8();
      sub_1CFD12898();
      v67 = v86;
      OUTLINED_FUNCTION_131_0();
      sub_1CFD49618();
      v68 = v85;
      goto LABEL_6;
    case 3u:
      v71 = *v53;
      v72 = v53[1];
      sub_1CFD1279C();
      v65 = v87;
      v66 = v93;
      OUTLINED_FUNCTION_47_2();
      sub_1CFD495A8();
      sub_1CFD127F0();
      v67 = v89;
      OUTLINED_FUNCTION_131_0();
      sub_1CFD49618();
      v68 = v88;
      goto LABEL_6;
    case 4u:
      v64 = *v53;
      sub_1CFD12748();
      v65 = v90;
      v66 = v93;
      OUTLINED_FUNCTION_47_2();
      sub_1CFD495A8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2A98, &unk_1CFD4D010);
      OUTLINED_FUNCTION_67(&qword_1EDDD2B28);
      v67 = v92;
      OUTLINED_FUNCTION_131_0();
      sub_1CFD49618();
      v68 = v91;
LABEL_6:
      (*(v68 + 8))(v65, v67);
      v73 = OUTLINED_FUNCTION_100_0();
      v74(v73, v66);

      break;
    default:
      sub_1CFD09C40();
      sub_1CFD12940();
      OUTLINED_FUNCTION_47_2();
      sub_1CFD495A8();
      OUTLINED_FUNCTION_50_1();
      sub_1CFD09CEC(v59, 255, v60);
      OUTLINED_FUNCTION_124_0();
      (*(v77 + 8))(v0, v78);
      sub_1CFD09BE8(v46, type metadata accessor for SummarizationResponse);
      v61 = OUTLINED_FUNCTION_100_0();
      v63 = v93;
LABEL_8:
      v62(v61, v63);
      break;
  }

  OUTLINED_FUNCTION_140_0();
  OUTLINED_FUNCTION_142();
}

void SummarizationPipelineResponse.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_143();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F3190, &qword_1CFD4D9A0);
  OUTLINED_FUNCTION_37(v114);
  v115 = v26;
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_22_1();
  v119 = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F3198, &qword_1CFD4D9A8);
  OUTLINED_FUNCTION_37(v31);
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_22_1();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F31A0, &qword_1CFD4D9B0);
  OUTLINED_FUNCTION_37(v35);
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_22_1();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F31A8, &qword_1CFD4D9B8);
  OUTLINED_FUNCTION_37(v39);
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_22_1();
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F31B0, &qword_1CFD4D9C0);
  OUTLINED_FUNCTION_37(v113);
  v44 = *(v43 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_22_1();
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F31B8, &qword_1CFD4D9C8);
  v47 = OUTLINED_FUNCTION_37(v46);
  v117 = v48;
  v118 = v47;
  v50 = *(v49 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_16_4();
  v116 = type metadata accessor for SummarizationPipelineResponse(0);
  v52 = OUTLINED_FUNCTION_25(v116);
  v54 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_9_0();
  v112 = (v55 - v56);
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_134_0();
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_133_0();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_73_0();
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_105();
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_137_0();
  v120 = v25;
  v62 = OUTLINED_FUNCTION_110_0();
  OUTLINED_FUNCTION_178(v62, v63);
  sub_1CFD126F4();
  OUTLINED_FUNCTION_120_0();
  if (!v20)
  {
    v64 = v21;
    v65 = sub_1CFD49588();
    v66 = sub_1CFCE83C4(v65, 0);
    if (v68 == v67 >> 1)
    {
      v70 = v116;
      v69 = v117;
    }

    else
    {
      OUTLINED_FUNCTION_74_0();
      v122 = v21;
      OUTLINED_FUNCTION_135_0();
      if (v75 == v76)
      {
        __break(1u);
        return;
      }

      v77 = *(v74 + v72);
      sub_1CFCE840C(v72 + 1, v71, v66, v74, v72, v73);
      v79 = v78;
      v81 = v80;
      swift_unknownObjectRelease();
      if (v79 == v81 >> 1)
      {
        switch(v77)
        {
          case 1:
            sub_1CFD128EC();
            OUTLINED_FUNCTION_39_1();
            type metadata accessor for ModelInputContentResponse(0);
            OUTLINED_FUNCTION_59_1();
            sub_1CFD09CEC(v91, 255, v92);
            OUTLINED_FUNCTION_102_0();
            sub_1CFD49578();
            OUTLINED_FUNCTION_114();
            swift_unknownObjectRelease();
            v108 = OUTLINED_FUNCTION_25_3();
            v109(v108);
            v110 = OUTLINED_FUNCTION_15_4();
            v111(v110);
            goto LABEL_17;
          case 2:
            v121.n128_u8[0] = 2;
            sub_1CFD12844();
            OUTLINED_FUNCTION_39_1();
            sub_1CFD129E8();
            OUTLINED_FUNCTION_24_4();
            sub_1CFD49578();
            OUTLINED_FUNCTION_114();
            swift_unknownObjectRelease();
            v96 = OUTLINED_FUNCTION_17_6();
            v97(v96);
            v98 = OUTLINED_FUNCTION_15_4();
            v99(v98);
            OUTLINED_FUNCTION_130_0(&a11, v121);
            goto LABEL_17;
          case 3:
            v121.n128_u8[0] = 3;
            sub_1CFD1279C();
            OUTLINED_FUNCTION_39_1();
            sub_1CFD12994();
            OUTLINED_FUNCTION_24_4();
            sub_1CFD49578();
            OUTLINED_FUNCTION_114();
            swift_unknownObjectRelease();
            v100 = OUTLINED_FUNCTION_17_6();
            v101(v100);
            v102 = OUTLINED_FUNCTION_15_4();
            v103(v102);
            OUTLINED_FUNCTION_130_0(&a12, v121);
            goto LABEL_17;
          case 4:
            v121.n128_u8[0] = 4;
            sub_1CFD12748();
            OUTLINED_FUNCTION_39_1();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2A98, &unk_1CFD4D010);
            OUTLINED_FUNCTION_71_0(&qword_1EDDD2B20);
            sub_1CFD49578();
            OUTLINED_FUNCTION_114();
            swift_unknownObjectRelease();
            (*(v115 + 8))(v119, v114);
            v93 = OUTLINED_FUNCTION_15_4();
            v94(v93);
            *v112 = v121.n128_u64[0];
            swift_storeEnumTagMultiPayload();
            OUTLINED_FUNCTION_2_7();
            OUTLINED_FUNCTION_146_0(&a15);
            v95 = v120;
            goto LABEL_18;
          default:
            sub_1CFD12940();
            OUTLINED_FUNCTION_39_1();
            type metadata accessor for SummarizationResponse();
            OUTLINED_FUNCTION_50_1();
            sub_1CFD09CEC(v82, 255, v83);
            OUTLINED_FUNCTION_102_0();
            sub_1CFD49578();
            OUTLINED_FUNCTION_114();
            swift_unknownObjectRelease();
            v104 = OUTLINED_FUNCTION_19_3(&a17);
            v105(v104, v113);
            v106 = OUTLINED_FUNCTION_15_4();
            v107(v106);
LABEL_17:
            swift_storeEnumTagMultiPayload();
            OUTLINED_FUNCTION_2_7();
            OUTLINED_FUNCTION_146_0(&a15);
            v95 = v120;
LABEL_18:
            OUTLINED_FUNCTION_2_7();
            sub_1CFD09C40();
            v90 = v95;
            break;
        }

        goto LABEL_12;
      }

      v70 = v116;
      v69 = v117;
      v64 = v122;
    }

    v84 = sub_1CFD49448();
    OUTLINED_FUNCTION_38_2();
    swift_allocError();
    v86 = v85;
    v87 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2CB0, &qword_1CFD4BF00) + 48);
    *v86 = v70;
    sub_1CFD49508();
    OUTLINED_FUNCTION_65_0();
    v88 = *MEMORY[0x1E69E6AF8];
    OUTLINED_FUNCTION_29_2(v84);
    (*(v89 + 104))(v86);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v69 + 8))(v64, v118);
  }

  v90 = v120;
LABEL_12:
  __swift_destroy_boxed_opaque_existential_1(v90);
  OUTLINED_FUNCTION_142();
}

uint64_t FeedbackRequest.init(summarizationFeedback:modelInputContentKind:)()
{
  sub_1CFD09C40();
  v0 = *(type metadata accessor for FeedbackRequest(0) + 20);
  OUTLINED_FUNCTION_56_1();
  return sub_1CFD09C40();
}

uint64_t sub_1CFD0CE48(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000015 && 0x80000001CFD5E2E0 == a2;
  if (v3 || (v4 = a1, OUTLINED_FUNCTION_139(), (OUTLINED_FUNCTION_20() & 1) != 0))
  {

    return 0;
  }

  else
  {
    OUTLINED_FUNCTION_106_0();
    if (v3 && v6 == a2)
    {

      return 1;
    }

    else
    {
      OUTLINED_FUNCTION_139();
      OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_37_0();
      if (v4)
      {
        return 1;
      }

      else
      {
        return 2;
      }
    }
  }
}

uint64_t sub_1CFD0CEF0(char a1)
{
  OUTLINED_FUNCTION_147_0();
  MEMORY[0x1D3874010](a1 & 1);
  return sub_1CFD49758();
}

unint64_t sub_1CFD0CF30(char a1)
{
  v1 = "summarizationFeedback";
  if (a1)
  {
    v1 = "modelInputContentKind";
  }

  return (v1 - 32) | 0x8000000000000000;
}

uint64_t sub_1CFD0CF78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CFD0CE48(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1CFD0CFA0()
{
  sub_1CFD12A3C();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1CFD0CFD8()
{
  sub_1CFD12A3C();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t FeedbackRequest.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F31D8, &qword_1CFD4D9D0);
  OUTLINED_FUNCTION_37(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_146();
  v10 = a1[4];
  OUTLINED_FUNCTION_178(a1, a1[3]);
  sub_1CFD12A3C();
  sub_1CFD497A8();
  type metadata accessor for SummarizationFeedback(0);
  OUTLINED_FUNCTION_55_1();
  sub_1CFD09CEC(v11, 255, v12);
  OUTLINED_FUNCTION_98_0();
  sub_1CFD49618();
  if (!v1)
  {
    v13 = *(type metadata accessor for FeedbackRequest(0) + 20);
    type metadata accessor for ModelInputContentKind(0);
    OUTLINED_FUNCTION_54_1();
    sub_1CFD09CEC(v14, 255, v15);
    OUTLINED_FUNCTION_98_0();
    sub_1CFD49618();
  }

  return (*(v6 + 8))(v2, v4);
}

void FeedbackRequest.init(from:)()
{
  OUTLINED_FUNCTION_143();
  v2 = v1;
  v36 = v3;
  v37 = type metadata accessor for ModelInputContentKind(0);
  v4 = OUTLINED_FUNCTION_25(v37);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_0();
  v39 = type metadata accessor for SummarizationFeedback(0);
  v7 = OUTLINED_FUNCTION_25(v39);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_0();
  v40 = v11 - v10;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F31F0, &qword_1CFD4D9D8);
  OUTLINED_FUNCTION_37(v41);
  v38 = v12;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v34 - v16;
  v18 = type metadata accessor for FeedbackRequest(0);
  v19 = OUTLINED_FUNCTION_25(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_2_0();
  v24 = v23 - v22;
  v25 = v2[4];
  OUTLINED_FUNCTION_178(v2, v2[3]);
  sub_1CFD12A3C();
  sub_1CFD49788();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    v34 = v18;
    v35 = v2;
    v26 = v38;
    v27 = v24;
    OUTLINED_FUNCTION_55_1();
    sub_1CFD09CEC(v28, 255, v29);
    v30 = v41;
    OUTLINED_FUNCTION_142_0();
    sub_1CFD09C40();
    OUTLINED_FUNCTION_54_1();
    sub_1CFD09CEC(v31, 255, v32);
    OUTLINED_FUNCTION_142_0();
    (*(v26 + 8))(v17, v30);
    v33 = *(v34 + 20);
    OUTLINED_FUNCTION_56_1();
    sub_1CFD09C40();
    OUTLINED_FUNCTION_53_1();
    sub_1CFD125F4();
    __swift_destroy_boxed_opaque_existential_1(v35);
    sub_1CFD09BE8(v27, type metadata accessor for FeedbackRequest);
  }

  OUTLINED_FUNCTION_142();
}

ProactiveSummarizationClient::FeedbackResponse __swiftcall FeedbackResponse.init()()
{
  *v0 = 0;
  v0[1] = 0;
  return result;
}

uint64_t sub_1CFD0D524@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CFD0F0CC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1CFD0D550()
{
  sub_1CFD12A90();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1CFD0D588()
{
  sub_1CFD12A90();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t PriorityFeedbackRequest.bundleId.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return OUTLINED_FUNCTION_27();
}

uint64_t PriorityFeedbackRequest.title.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_27();
}

uint64_t PriorityFeedbackRequest.body.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return OUTLINED_FUNCTION_27();
}

uint64_t PriorityFeedbackRequest.subtitle.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return OUTLINED_FUNCTION_27();
}

uint64_t sub_1CFD0D774()
{
  OUTLINED_FUNCTION_137();
  v3 = v1 == OUTLINED_FUNCTION_123_0() && v0 == v2;
  if (v3 || (OUTLINED_FUNCTION_20() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v5 = v1 == 0x6449656C646E7562 && v0 == 0xE800000000000000;
    if (v5 || (OUTLINED_FUNCTION_20() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v6 = v1 == 0x6C6562616CLL && v0 == 0xE500000000000000;
      if (v6 || (OUTLINED_FUNCTION_20() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v7 = v1 == 0x656C746974 && v0 == 0xE500000000000000;
        if (v7 || (OUTLINED_FUNCTION_20() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v8 = v1 == 2036625250 && v0 == 0xE400000000000000;
          if (v8 || (OUTLINED_FUNCTION_20() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v9 = v1 == 0x656C746974627573 && v0 == 0xE800000000000000;
            if (v9 || (OUTLINED_FUNCTION_20() & 1) != 0)
            {

              return 5;
            }

            else if (v1 == 0xD000000000000013 && 0x80000001CFD5E320 == v0)
            {

              return 6;
            }

            else
            {
              OUTLINED_FUNCTION_20();
              OUTLINED_FUNCTION_37_0();
              if (v1)
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

uint64_t sub_1CFD0D938()
{
  result = OUTLINED_FUNCTION_123_0();
  switch(v1)
  {
    case 1:
      result = 0x6449656C646E7562;
      break;
    case 2:
      result = 0x6C6562616CLL;
      break;
    case 3:
      result = 0x656C746974;
      break;
    case 4:
      result = 2036625250;
      break;
    case 5:
      result = 0x656C746974627573;
      break;
    case 6:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1CFD0DA00@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1CFD0D774();
  *a1 = result;
  return result;
}

uint64_t sub_1CFD0DA30()
{
  sub_1CFD12AE4();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1CFD0DA68()
{
  sub_1CFD12AE4();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

void PriorityFeedbackRequest.encode(to:)()
{
  OUTLINED_FUNCTION_143();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F3218, &qword_1CFD4D9F0);
  OUTLINED_FUNCTION_37(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_147();
  v11 = *v0;
  v24 = *(v0 + 2);
  v25 = *(v0 + 1);
  v22 = *(v0 + 4);
  v23 = *(v0 + 3);
  v20 = *(v0 + 7);
  v21 = *(v0 + 5);
  v17 = *(v0 + 8);
  v18 = *(v0 + 9);
  v19 = *(v0 + 6);
  v12 = v0[80];
  v13 = *(v4 + 24);
  v14 = *(v4 + 32);
  v15 = OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_178(v15, v16);
  sub_1CFD12AE4();
  sub_1CFD497A8();
  sub_1CFD12B38();
  sub_1CFD49618();
  if (!v1)
  {
    OUTLINED_FUNCTION_70_0();
    sub_1CFD495E8();
    sub_1CFD49608();
    OUTLINED_FUNCTION_70_0();
    sub_1CFD495E8();
    OUTLINED_FUNCTION_70_0();
    sub_1CFD495E8();
    OUTLINED_FUNCTION_70_0();
    sub_1CFD495B8();
    sub_1CFD495F8();
  }

  (*(v7 + 8))(v2, v5);
  OUTLINED_FUNCTION_142();
}

void PriorityFeedbackRequest.init(from:)()
{
  OUTLINED_FUNCTION_143();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F3228, &qword_1CFD4D9F8);
  OUTLINED_FUNCTION_37(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v8);
  v9 = v2[4];
  OUTLINED_FUNCTION_178(v2, v2[3]);
  sub_1CFD12AE4();
  sub_1CFD49788();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    LOBYTE(v28[0]) = 0;
    sub_1CFD12B8C();
    sub_1CFD49578();
    OUTLINED_FUNCTION_13_6(1);
    v10 = sub_1CFD49548();
    v27 = v11;
    OUTLINED_FUNCTION_13_6(2);
    v25 = sub_1CFD49568();
    OUTLINED_FUNCTION_13_6(3);
    v24 = sub_1CFD49548();
    v26 = v12;
    OUTLINED_FUNCTION_13_6(4);
    v23 = sub_1CFD49548();
    v22 = v10;
    v40 = v29[0];
    v14 = v13;
    OUTLINED_FUNCTION_13_6(5);
    v15 = sub_1CFD49518();
    v17 = v16;
    v21 = v15;
    v18 = sub_1CFD49558();
    v19 = OUTLINED_FUNCTION_27_4();
    v20(v19);
    LOBYTE(v28[0]) = v40;
    v28[1] = v22;
    v28[2] = v27;
    v28[3] = v25;
    v28[4] = v24;
    v28[5] = v26;
    v28[6] = v23;
    v28[7] = v14;
    v28[8] = v21;
    v28[9] = v17;
    LOBYTE(v28[10]) = v18 & 1;
    memcpy(v4, v28, 0x51uLL);
    sub_1CFD12BE0(v28, v29);
    __swift_destroy_boxed_opaque_existential_1(v2);
    v29[0] = v40;
    v30 = v22;
    v31 = v27;
    v32 = v25;
    v33 = v24;
    v34 = v26;
    v35 = v23;
    v36 = v14;
    v37 = v21;
    v38 = v17;
    v39 = v18 & 1;
    sub_1CFD09B64(v29);
  }

  OUTLINED_FUNCTION_140_0();
  OUTLINED_FUNCTION_142();
}

Swift::String __swiftcall PriorityFeedbackRequestType.caseString()()
{
  v1 = 0xE800000000000000;
  v2 = 0x705573626D756874;
  switch(*v0)
  {
    case 1:
      v2 = OUTLINED_FUNCTION_61_1();
      break;
    case 2:
      v2 = OUTLINED_FUNCTION_60_1();
      break;
    case 3:
      v2 = OUTLINED_FUNCTION_75_0();
      break;
    default:
      break;
  }

  result._object = v1;
  result._countAndFlagsBits = v2;
  return result;
}

uint64_t sub_1CFD0E15C()
{
  OUTLINED_FUNCTION_137();
  v3 = v1 == 0x705573626D756874 && v2 == 0xE800000000000000;
  if (v3 || (OUTLINED_FUNCTION_20() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v5 = v1 == 0x6F4473626D756874 && v0 == 0xEA00000000006E77;
    if (v5 || (OUTLINED_FUNCTION_20() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v6 = v1 == 0x61646152656C6966 && v0 == 0xE900000000000072;
      if (v6 || (OUTLINED_FUNCTION_20() & 1) != 0)
      {

        return 2;
      }

      else if (v1 == OUTLINED_FUNCTION_75_0() && v0 == v7)
      {

        return 3;
      }

      else
      {
        OUTLINED_FUNCTION_20();
        OUTLINED_FUNCTION_37_0();
        if (v1)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_1CFD0E274(unsigned __int8 a1)
{
  OUTLINED_FUNCTION_147_0();
  MEMORY[0x1D3874010](a1);
  return sub_1CFD49758();
}

uint64_t sub_1CFD0E2B4(char a1)
{
  result = 0x705573626D756874;
  switch(a1)
  {
    case 1:
      result = OUTLINED_FUNCTION_61_1();
      break;
    case 2:
      result = OUTLINED_FUNCTION_60_1();
      break;
    case 3:
      result = OUTLINED_FUNCTION_75_0();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1CFD0E314@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  result = j__swift_bridgeObjectRelease(a1);
  *a2 = 1;
  return result;
}

uint64_t sub_1CFD0E344()
{
  sub_1CFD12C6C();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1CFD0E37C()
{
  sub_1CFD12C6C();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1CFD0E3BC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1CFD0E15C();
  *a1 = result;
  return result;
}

uint64_t sub_1CFD0E3E4()
{
  sub_1CFD12C18();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1CFD0E41C()
{
  sub_1CFD12C18();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1CFD0E454()
{
  sub_1CFD12CC0();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1CFD0E48C()
{
  sub_1CFD12CC0();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1CFD0E4C4()
{
  sub_1CFD12D14();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1CFD0E4FC()
{
  sub_1CFD12D14();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1CFD0E534()
{
  sub_1CFD12D68();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1CFD0E56C()
{
  sub_1CFD12D68();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

void PriorityFeedbackRequestType.encode(to:)()
{
  OUTLINED_FUNCTION_143();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F3238, &qword_1CFD4DA00);
  v5 = OUTLINED_FUNCTION_37(v4);
  v53 = v6;
  v54 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_22_1();
  v52 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F3240, &qword_1CFD4DA08);
  v12 = OUTLINED_FUNCTION_37(v11);
  v50 = v13;
  v51 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_22_1();
  v49 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F3248, &qword_1CFD4DA10);
  v19 = OUTLINED_FUNCTION_37(v18);
  v47 = v20;
  v48 = v19;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_22_1();
  v46 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F3250, &qword_1CFD4DA18);
  v26 = OUTLINED_FUNCTION_37(v25);
  v44 = v27;
  v45 = v26;
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_16_4();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F3258, &qword_1CFD4DA20);
  OUTLINED_FUNCTION_37(v31);
  v33 = v32;
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v44 - v37;
  v39 = *v0;
  v40 = v3[4];
  OUTLINED_FUNCTION_178(v3, v3[3]);
  sub_1CFD12C18();
  sub_1CFD497A8();
  switch(v39)
  {
    case 1:
      sub_1CFD12D14();
      v41 = v46;
      OUTLINED_FUNCTION_43_2();
      sub_1CFD495A8();
      v43 = v47;
      v42 = v48;
      goto LABEL_6;
    case 2:
      sub_1CFD12CC0();
      v41 = v49;
      OUTLINED_FUNCTION_43_2();
      sub_1CFD495A8();
      v43 = v50;
      v42 = v51;
      goto LABEL_6;
    case 3:
      sub_1CFD12C6C();
      v41 = v52;
      OUTLINED_FUNCTION_43_2();
      sub_1CFD495A8();
      v43 = v53;
      v42 = v54;
LABEL_6:
      (*(v43 + 8))(v41, v42);
      break;
    default:
      sub_1CFD12D68();
      sub_1CFD495A8();
      (*(v44 + 8))(v1, v45);
      break;
  }

  (*(v33 + 8))(v38, v31);
  OUTLINED_FUNCTION_142();
}

uint64_t PriorityFeedbackRequestType.hashValue.getter()
{
  v1 = *v0;
  OUTLINED_FUNCTION_147_0();
  MEMORY[0x1D3874010](v1);
  return sub_1CFD49758();
}

void PriorityFeedbackRequestType.init(from:)()
{
  OUTLINED_FUNCTION_143();
  v98 = v0;
  v4 = v3;
  v94 = v5;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F3260, &qword_1CFD4DA28);
  OUTLINED_FUNCTION_37(v97);
  v93 = v6;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_22_1();
  v96 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F3268, &qword_1CFD4DA30);
  v12 = OUTLINED_FUNCTION_37(v11);
  v90 = v13;
  v91 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_22_1();
  v92 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F3270, &qword_1CFD4DA38);
  v19 = OUTLINED_FUNCTION_37(v18);
  v88 = v20;
  v89 = v19;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v81 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F3278, &qword_1CFD4DA40);
  OUTLINED_FUNCTION_37(v26);
  v87 = v27;
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_16_4();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F3280, &qword_1CFD4DA48);
  OUTLINED_FUNCTION_37(v31);
  v95 = v32;
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_147();
  v36 = v4[4];
  OUTLINED_FUNCTION_178(v4, v4[3]);
  sub_1CFD12C18();
  v37 = v98;
  sub_1CFD49788();
  if (!v37)
  {
    v84 = v26;
    v85 = v2;
    v86 = v25;
    v38 = v96;
    v39 = v97;
    v98 = v4;
    v40 = v1;
    v41 = sub_1CFD49588();
    v42 = sub_1CFCE83C4(v41, 0);
    if (v44 != v43 >> 1)
    {
      OUTLINED_FUNCTION_74_0();
      v83 = 0;
      OUTLINED_FUNCTION_135_0();
      if (v49 == v50)
      {
        __break(1u);
        return;
      }

      v51 = *(v48 + v46);
      sub_1CFCE840C(v46 + 1, v45, v42, v48, v46, v47);
      v53 = v52;
      v55 = v54;
      swift_unknownObjectRelease();
      if (v53 == v55 >> 1)
      {
        v56 = v94;
        v57 = v95;
        v82 = v51;
        v58 = v51;
        v59 = v93;
        switch(v58)
        {
          case 1:
            sub_1CFD12D14();
            v69 = v86;
            OUTLINED_FUNCTION_63_0();
            v74 = v83;
            sub_1CFD494F8();
            if (v74)
            {
              goto LABEL_17;
            }

            swift_unknownObjectRelease();
            v72 = v88;
            v71 = v89;
            goto LABEL_19;
          case 2:
            sub_1CFD12CC0();
            v69 = v92;
            OUTLINED_FUNCTION_63_0();
            v70 = v83;
            sub_1CFD494F8();
            if (v70)
            {
              goto LABEL_17;
            }

            swift_unknownObjectRelease();
            v72 = v90;
            v71 = v91;
LABEL_19:
            (*(v72 + 8))(v69, v71);
            goto LABEL_20;
          case 3:
            sub_1CFD12C6C();
            OUTLINED_FUNCTION_63_0();
            v73 = v83;
            sub_1CFD494F8();
            if (v73)
            {
              goto LABEL_17;
            }

            swift_unknownObjectRelease();
            (*(v59 + 8))(v38, v39);
            goto LABEL_20;
          default:
            sub_1CFD12D68();
            v60 = v85;
            OUTLINED_FUNCTION_63_0();
            v61 = v83;
            sub_1CFD494F8();
            if (v61)
            {
LABEL_17:
              v75 = *(v57 + 8);
              v76 = OUTLINED_FUNCTION_110_0();
              v77(v76);
              swift_unknownObjectRelease();
              v4 = v98;
              goto LABEL_10;
            }

            swift_unknownObjectRelease();
            (*(v87 + 8))(v60, v84);
LABEL_20:
            v78 = *(v57 + 8);
            v79 = OUTLINED_FUNCTION_110_0();
            v80(v79);
            *v56 = v82;
            __swift_destroy_boxed_opaque_existential_1(v98);
            break;
        }

        goto LABEL_11;
      }
    }

    v62 = v95;
    v63 = sub_1CFD49448();
    OUTLINED_FUNCTION_38_2();
    swift_allocError();
    v65 = v64;
    v66 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2CB0, &qword_1CFD4BF00) + 48);
    *v65 = &type metadata for PriorityFeedbackRequestType;
    sub_1CFD49508();
    OUTLINED_FUNCTION_65_0();
    v67 = *MEMORY[0x1E69E6AF8];
    OUTLINED_FUNCTION_29_2(v63);
    (*(v68 + 104))(v65);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v62 + 8))(v40, v31);
    v4 = v98;
  }

LABEL_10:
  __swift_destroy_boxed_opaque_existential_1(v4);
LABEL_11:
  OUTLINED_FUNCTION_140_0();
  OUTLINED_FUNCTION_142();
}

void _s28ProactiveSummarizationClient16FeedbackResponseV5errorACSS_tcfC_0(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (_MergedGlobals_0 != -1)
  {
    OUTLINED_FUNCTION_3_5();
  }

  v7 = sub_1CFD48E38();
  __swift_project_value_buffer(v7, qword_1EDDD3788);

  v8 = sub_1CFD48E18();
  sub_1CFD492F8();

  if (OUTLINED_FUNCTION_119_0())
  {
    OUTLINED_FUNCTION_97();
    v11 = OUTLINED_FUNCTION_77_0();
    *v3 = 136315138;
    *(v3 + 4) = sub_1CFCFE9A4(a1, a2, &v11);
    OUTLINED_FUNCTION_32_3(&dword_1CFCD7000, v9, v10, "Error occurred: %s");
    OUTLINED_FUNCTION_26_2();
    OUTLINED_FUNCTION_69();
  }

  *a3 = a1;
  a3[1] = a2;
}

uint64_t sub_1CFD0F0CC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x726F727265 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    sub_1CFD49668();
    OUTLINED_FUNCTION_37_0();
    v4 = v2 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1CFD0F138()
{
  OUTLINED_FUNCTION_147_0();
  MEMORY[0x1D3874010](0);
  return sub_1CFD49758();
}

uint64_t sub_1CFD0F174()
{
  sub_1CFD12DBC();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1CFD0F1AC()
{
  sub_1CFD12DBC();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

void sub_1CFD0F218()
{
  OUTLINED_FUNCTION_143();
  v21 = v1;
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_37(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v20 - v12;
  v14 = v0[1];
  v20 = *v0;
  v16 = *(v3 + 24);
  v15 = *(v3 + 32);
  v17 = OUTLINED_FUNCTION_140();
  v19 = OUTLINED_FUNCTION_178(v17, v18);
  v21(v19);
  sub_1CFD497A8();
  OUTLINED_FUNCTION_131_0();
  sub_1CFD495B8();
  (*(v8 + 8))(v13, v6);
  OUTLINED_FUNCTION_140_0();
  OUTLINED_FUNCTION_142();
}

void sub_1CFD0F364()
{
  OUTLINED_FUNCTION_143();
  v2 = v1;
  v4 = v3;
  v22 = v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_37(v8);
  v21 = v9;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_16_4();
  v13 = v4[4];
  v14 = OUTLINED_FUNCTION_178(v4, v4[3]);
  v2(v14);
  sub_1CFD49788();
  if (!v0)
  {
    v15 = sub_1CFD49518();
    v17 = v16;
    v18 = *(v21 + 8);
    v19 = OUTLINED_FUNCTION_140();
    v20(v19);
    *v22 = v15;
    v22[1] = v17;
  }

  __swift_destroy_boxed_opaque_existential_1(v4);
  OUTLINED_FUNCTION_142();
}

uint64_t SummarizationPipelineClient.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v0 + 112) = 0;
  return v0;
}

uint64_t SummarizationPipelineClient.init()()
{
  swift_defaultActor_initialize();
  *(v0 + 112) = 0;
  return v0;
}

uint64_t SummarizationPipelineClient.deinit()
{
  if (*(v0 + 112))
  {

    sub_1CFD48E88();

    v1 = *(v0 + 112);
  }

  swift_defaultActor_destroy();
  return v0;
}

uint64_t SummarizationPipelineClient.__deallocating_deinit()
{
  SummarizationPipelineClient.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t SummarizationPipelineClient.summarizeItems(_:options:)()
{
  OUTLINED_FUNCTION_66_0();
  v3 = v2;
  *(v1 + 48) = v4;
  *(v1 + 56) = v0;
  *(v1 + 40) = v5;
  v6 = type metadata accessor for SummarizationPipelineResponse(0);
  *(v1 + 64) = v6;
  OUTLINED_FUNCTION_6_2(v6);
  v8 = *(v7 + 64);
  *(v1 + 72) = OUTLINED_FUNCTION_148_0();
  *(v1 + 80) = swift_task_alloc();
  *(v1 + 88) = swift_task_alloc();
  *(v1 + 96) = swift_task_alloc();
  v9 = type metadata accessor for SummarizationPipelineRequest(0);
  *(v1 + 104) = v9;
  OUTLINED_FUNCTION_6_2(v9);
  v11 = *(v10 + 64);
  *(v1 + 112) = OUTLINED_FUNCTION_26_0();
  v12 = type metadata accessor for SummarizationPipelineResult(0);
  *(v1 + 120) = v12;
  OUTLINED_FUNCTION_6_2(v12);
  v14 = *(v13 + 64);
  *(v1 + 128) = OUTLINED_FUNCTION_148_0();
  v15 = swift_task_alloc();
  v16 = *v3;
  *(v1 + 136) = v15;
  *(v1 + 144) = v16;
  *(v1 + 34) = *(v3 + 8);
  *(v1 + 35) = *(v3 + 9);
  v17 = OUTLINED_FUNCTION_90_0();

  return MEMORY[0x1EEE6DFA0](v17, v18, v19);
}

uint64_t sub_1CFD0F6EC()
{
  OUTLINED_FUNCTION_66_0();
  v19 = v0;
  v1 = *(v0 + 35);
  v2 = *(v0 + 34);
  v3 = *(v0 + 104);
  v4 = *(v0 + 112);
  v5 = *(v0 + 48);
  v16 = *(v0 + 144);
  v17 = v2;
  v18 = v1;

  v21.requestedSummaryStyles.rawValue = &v16;
  SummarizationRequest.init(items:options:)(v6, v21);
  v7 = *(v0 + 24);
  v8 = *(v0 + 32);
  v9 = *(v0 + 33);
  *v4 = *(v0 + 16);
  *(v4 + 8) = v7;
  *(v4 + 16) = v8;
  *(v4 + 17) = v9;
  OUTLINED_FUNCTION_71();
  swift_storeEnumTagMultiPayload();
  swift_task_alloc();
  OUTLINED_FUNCTION_19_1();
  *(v0 + 152) = v10;
  *v10 = v11;
  v10[1] = sub_1CFD0F7DC;
  v12 = *(v0 + 136);
  v13 = *(v0 + 112);
  v14 = *(v0 + 56);

  return sub_1CFD0FD58(v12, v13);
}

uint64_t sub_1CFD0F7DC()
{
  OUTLINED_FUNCTION_66_0();
  v2 = *v1;
  OUTLINED_FUNCTION_20_4();
  *v3 = v2;
  v5 = *(v4 + 152);
  v6 = *(v4 + 112);
  v11 = *v1;
  *(v2 + 160) = v0;

  OUTLINED_FUNCTION_8_5();
  sub_1CFD09BE8(v6, v7);
  v8 = *(v2 + 56);
  if (v0)
  {
    v9 = sub_1CFD0FCB8;
  }

  else
  {
    v9 = sub_1CFD0F910;
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, 0);
}

uint64_t sub_1CFD0F910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_91_0();
  OUTLINED_FUNCTION_187();
  v15 = v12[16];
  v14 = v12[17];
  v16 = v12[15];
  OUTLINED_FUNCTION_4_5();
  sub_1CFD125F4();
  OUTLINED_FUNCTION_71();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v18 = v12[16];
  if (EnumCaseMultiPayload == 1)
  {
    v19 = v12[11];
    v20 = v12[12];
    v21 = v12[8];
    OUTLINED_FUNCTION_2_7();
    sub_1CFD09C40();
    OUTLINED_FUNCTION_1_8();
    OUTLINED_FUNCTION_71();
    sub_1CFD125F4();
    OUTLINED_FUNCTION_51_0();
    if (!swift_getEnumCaseMultiPayload())
    {
      v53 = v12[16];
      v54 = v12[17];
      v55 = v12[14];
      v57 = v12[11];
      v56 = v12[12];
      v59 = v12[9];
      v58 = v12[10];
      v60 = v12[5];
      OUTLINED_FUNCTION_0_8();
      sub_1CFD09BE8(v56, v61);
      OUTLINED_FUNCTION_5_5();
      sub_1CFD09BE8(v54, v62);
      sub_1CFD09C40();

      OUTLINED_FUNCTION_23_1();
      goto LABEL_16;
    }

    v22 = v12[11];
    OUTLINED_FUNCTION_0_8();
    sub_1CFD09BE8(v23, v24);
    if (_MergedGlobals_0 != -1)
    {
      OUTLINED_FUNCTION_3_5();
    }

    v25 = v12[12];
    v26 = v12[10];
    v27 = sub_1CFD48E38();
    v28 = __swift_project_value_buffer(v27, qword_1EDDD3788);
    OUTLINED_FUNCTION_1_8();
    OUTLINED_FUNCTION_71();
    sub_1CFD125F4();
    v29 = sub_1CFD48E18();
    v30 = sub_1CFD492F8();
    v31 = OUTLINED_FUNCTION_95(v30);
    v32 = v12[10];
    if (v31)
    {
      v34 = v12[8];
      v33 = v12[9];
      OUTLINED_FUNCTION_97();
      OUTLINED_FUNCTION_87_0();
      OUTLINED_FUNCTION_111();
      *v28 = 136315138;
      OUTLINED_FUNCTION_1_8();
      OUTLINED_FUNCTION_68_0();
      sub_1CFD125F4();
      OUTLINED_FUNCTION_64_0();
      sub_1CFD48FF8();
      OUTLINED_FUNCTION_0_8();
      sub_1CFD09BE8(v32, v35);
      v36 = OUTLINED_FUNCTION_64_0();
      sub_1CFCFE9A4(v36, v37, v38);
      OUTLINED_FUNCTION_129_0();
      *(v28 + 4) = v32;
      OUTLINED_FUNCTION_46_2(&dword_1CFCD7000, v39, v40, "Error: %s");
      OUTLINED_FUNCTION_40_2();
      OUTLINED_FUNCTION_86();
    }

    else
    {

      OUTLINED_FUNCTION_0_8();
      sub_1CFD09BE8(v32, v63);
    }

    v50 = v12[17];
    v64 = v12[12];
    v66 = v12[8];
    v65 = v12[9];
    OUTLINED_FUNCTION_1_8();
    OUTLINED_FUNCTION_51_0();
    sub_1CFD125F4();
    OUTLINED_FUNCTION_32_1();
    sub_1CFD48FF8();
    OUTLINED_FUNCTION_128_0();
    OUTLINED_FUNCTION_38_2();
    v67 = swift_allocError();
    OUTLINED_FUNCTION_44_2(v67, v68);
    OUTLINED_FUNCTION_0_8();
    sub_1CFD09BE8(v64, v69);
  }

  else
  {
    v41 = *v18;
    v42 = v18[1];
    if (_MergedGlobals_0 != -1)
    {
      OUTLINED_FUNCTION_3_5();
    }

    v43 = sub_1CFD48E38();
    OUTLINED_FUNCTION_116_0(v43, qword_1EDDD3788);
    v44 = sub_1CFD48E18();
    sub_1CFD492F8();
    OUTLINED_FUNCTION_125_0();
    if (OUTLINED_FUNCTION_119_0())
    {
      OUTLINED_FUNCTION_97();
      OUTLINED_FUNCTION_77_0();
      OUTLINED_FUNCTION_109_1();
      *v13 = 136315138;
      v45 = OUTLINED_FUNCTION_51_0();
      *(v13 + 4) = sub_1CFCFE9A4(v45, v46, v47);
      OUTLINED_FUNCTION_32_3(&dword_1CFCD7000, v48, v49, "Error: %s");
      OUTLINED_FUNCTION_26_2();
      OUTLINED_FUNCTION_69();
    }

    v50 = v12[17];
    sub_1CFD12E10();
    OUTLINED_FUNCTION_38_2();
    v51 = swift_allocError();
    OUTLINED_FUNCTION_45_2(v51, v52);
  }

  sub_1CFD09BE8(v50, type metadata accessor for SummarizationPipelineResult);
  v71 = v12[16];
  v70 = v12[17];
  v72 = v12[14];
  v74 = v12[11];
  v73 = v12[12];
  v76 = v12[9];
  v75 = v12[10];

  OUTLINED_FUNCTION_23_1();
LABEL_16:
  OUTLINED_FUNCTION_82();

  return v78(v77, v78, v79, v80, v81, v82, v83, v84, a9, a10, a11, a12);
}

uint64_t sub_1CFD0FCB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_145_0();
  OUTLINED_FUNCTION_27_1();
  v11 = v10[20];
  v13 = v10[16];
  v12 = v10[17];
  v14 = v10[14];
  v16 = v10[11];
  v15 = v10[12];
  v18 = v10[9];
  v17 = v10[10];

  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_144_0();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10);
}

uint64_t sub_1CFD0FD58(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_62_1();
}

uint64_t sub_1CFD0FD70()
{
  v1 = v0[4];
  v2 = sub_1CFD1205C();
  v0[5] = v2;
  v3 = v2;
  v5 = v0[3];
  v4 = v0[4];
  v7 = sub_1CFD09CEC(&qword_1EDDD2AF8, v6, type metadata accessor for SummarizationPipelineClient);
  v8 = swift_task_alloc();
  v0[6] = v8;
  *(v8 + 16) = v3;
  *(v8 + 24) = v5;
  v9 = *(MEMORY[0x1E69E8920] + 4);
  v10 = swift_task_alloc();
  v0[7] = v10;
  v11 = type metadata accessor for SummarizationPipelineResult(0);
  *v10 = v0;
  v10[1] = sub_1CFD0FF04;
  v12 = v0[2];

  return MEMORY[0x1EEE6DE38](v12, v4, v7, 0x75716552646E6573, 0xEF293A5F28747365, sub_1CFD15130, v8, v11);
}

uint64_t sub_1CFD0FF04()
{
  OUTLINED_FUNCTION_18_1();
  v2 = *v1;
  OUTLINED_FUNCTION_20_4();
  *v3 = v2;
  v5 = *(v4 + 56);
  v11 = *v1;
  v2[8] = v0;

  if (v0)
  {
    v6 = v2[4];
    v7 = sub_1CFD1007C;
  }

  else
  {
    v8 = v2[6];
    v9 = v2[4];

    v7 = sub_1CFD10020;
    v6 = v9;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

uint64_t sub_1CFD10020()
{
  OUTLINED_FUNCTION_18_1();
  v1 = *(v0 + 40);

  OUTLINED_FUNCTION_23_1();

  return v2();
}

uint64_t sub_1CFD1007C()
{
  OUTLINED_FUNCTION_18_1();
  v1 = v0[5];
  v2 = v0[6];

  v3 = v0[8];
  OUTLINED_FUNCTION_23_1();

  return v4();
}

uint64_t sub_1CFD100E0()
{
  OUTLINED_FUNCTION_18_1();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = type metadata accessor for SummarizationPipelineResponse(0);
  v1[5] = v4;
  OUTLINED_FUNCTION_6_2(v4);
  v6 = *(v5 + 64);
  v1[6] = OUTLINED_FUNCTION_118_0();
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v7 = type metadata accessor for SummarizationPipelineRequest(0);
  v1[10] = v7;
  OUTLINED_FUNCTION_6_2(v7);
  v9 = *(v8 + 64);
  v1[11] = OUTLINED_FUNCTION_26_0();
  v10 = type metadata accessor for SummarizationPipelineResult(0);
  v1[12] = v10;
  OUTLINED_FUNCTION_6_2(v10);
  v12 = *(v11 + 64);
  v1[13] = OUTLINED_FUNCTION_118_0();
  v1[14] = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_90_0();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}