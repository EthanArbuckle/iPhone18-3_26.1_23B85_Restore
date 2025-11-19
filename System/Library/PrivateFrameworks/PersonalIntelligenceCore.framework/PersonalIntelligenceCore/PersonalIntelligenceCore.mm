id ii_default_log_handle()
{
  if (ii_default_log_handle__pasOnceToken2 != -1)
  {
    dispatch_once(&ii_default_log_handle__pasOnceToken2, &__block_literal_global_13);
  }

  v1 = ii_default_log_handle__pasExprOnceResult;

  return v1;
}

uint64_t sub_231C95EFC()
{
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_0();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_231C960F8()
{
  OUTLINED_FUNCTION_0();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_231C96138()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_26();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_231C9616C()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_26();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_231C961AC()
{
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_0();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_231C961E0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  v4 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_231C96238()
{
  v1 = sub_231CA7B38();
  OUTLINED_FUNCTION_5_0(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_231C962E0()
{
  _Block_release(*(v0 + 16));
  OUTLINED_FUNCTION_0();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_231C96314()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_231C96378()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    type metadata accessor for AppLaunchCounter();
    OUTLINED_FUNCTION_0();
    v16 = swift_allocObject();
    *(v16 + 16) = sub_231CA7C88();
    v2 = [objc_allocWithZone(MEMORY[0x277CF1908]) init];
    v3 = [v2 publisherFromStartTime_];

    OUTLINED_FUNCTION_0();
    v4 = swift_allocObject();
    *(v4 + 16) = &unk_2846EB9A0;
    v21 = sub_231C98040;
    v22 = v4;
    aBlock = MEMORY[0x277D85DD0];
    v18 = 1107296256;
    v19 = sub_231C967DC;
    v20 = &block_descriptor;
    v5 = _Block_copy(&aBlock);

    v6 = [v3 filterWithIsIncluded_];
    _Block_release(v5);

    v7 = sub_231CA7C58();

    OUTLINED_FUNCTION_0();
    v8 = swift_allocObject();
    *(v8 + 16) = &unk_2846EB9A0;
    v21 = sub_231C9811C;
    v22 = v8;
    aBlock = MEMORY[0x277D85DD0];
    v18 = 1107296256;
    v19 = sub_231C96834;
    v20 = &block_descriptor_13;
    v9 = _Block_copy(&aBlock);

    v10 = [v6 reduceWithInitial:v7 nextPartialResult:v9];
    _Block_release(v9);

    v21 = sub_231C968F8;
    v22 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v18 = 1107296256;
    v19 = sub_231C96A90;
    v20 = &block_descriptor_16;
    v11 = _Block_copy(&aBlock);
    v21 = sub_231C98388;
    v22 = v16;
    aBlock = MEMORY[0x277D85DD0];
    v18 = 1107296256;
    v19 = sub_231C96AF8;
    v20 = &block_descriptor_19;
    v12 = _Block_copy(&aBlock);

    v13 = [v10 sinkWithCompletion:v11 receiveInput:v12];
    _Block_release(v12);
    _Block_release(v11);

    swift_beginAccess();
    v1 = *(v16 + 16);

    v14 = *(v0 + 16);
    *(v0 + 16) = v1;
  }

  return v1;
}

BOOL sub_231C96758(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
    sub_231C984AC();
  }

  while ((sub_231CA7CA8() & 1) == 0);
  return v4 != 0;
}

uint64_t sub_231C967DC(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  LOBYTE(v4) = v4();

  return v4 & 1;
}

id sub_231C96834(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v11[3] = swift_getObjectType();
  v11[0] = a2;

  swift_unknownObjectRetain();
  v7 = a3;
  v6(v10, v11, v7);

  __swift_project_boxed_opaque_existential_0(v10, v10[3]);
  v8 = sub_231CA7FA8();
  __swift_destroy_boxed_opaque_existential_0(v10);
  __swift_destroy_boxed_opaque_existential_0(v11);

  return v8;
}

void sub_231C968F8(void *a1)
{
  if ([a1 state] == 1)
  {
    v2 = sub_231CA7D48();
    v3 = ii_default_log_handle();
    if (v3)
    {
      log = v3;
      if (os_log_type_enabled(v3, v2))
      {
        v4 = swift_slowAlloc();
        v5 = swift_slowAlloc();
        v13 = v5;
        *v4 = 136315138;
        v6 = [a1 error];
        if (v6)
        {
          v7 = v6;
          swift_getErrorValue();
          v8 = sub_231CA7FD8();
          v10 = v9;
        }

        else
        {
          v8 = 0;
          v10 = 0xE000000000000000;
        }

        v11 = sub_231C970D0(v8, v10, &v13);

        *(v4 + 4) = v11;
        _os_log_impl(&dword_231C94000, log, v2, "AppLaunchCounter: failed to completely read Biome stream %s", v4, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v5);
        MEMORY[0x23837A830](v5, -1, -1);
        MEMORY[0x23837A830](v4, -1, -1);
      }

      else
      {
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_231C96A90(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_231C96AF8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_231C96B58(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD72CD8, &qword_231CA8DC0);
  result = sub_231CA7EA8();
  v3 = result;
  v4 = 0;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;
  v9 = result + 64;
  if (v7)
  {
    while (1)
    {
      v10 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_10:
      v13 = v10 | (v4 << 6);
      v14 = *(*(a1 + 56) + 8 * v13);
      if (v14)
      {
        v15 = v14 / 0xA;
        if (v15 >= 5)
        {
          v15 = 5;
        }

        v14 = v15 + 1;
      }

      v16 = (*(a1 + 48) + 16 * v13);
      v17 = *v16;
      result = v16[1];
      *(v9 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v18 = (v3[6] + 16 * v13);
      *v18 = v17;
      v18[1] = result;
      *(v3[7] + 8 * v13) = v14;
      v19 = v3[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        break;
      }

      v3[2] = v21;

      if (!v7)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v11 = v4;
    while (1)
    {
      v4 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return v3;
      }

      v12 = *(a1 + 64 + 8 * v4);
      ++v11;
      if (v12)
      {
        v10 = __clz(__rbit64(v12));
        v7 = (v12 - 1) & v12;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_231C96CC4(uint64_t a1)
{

  v2 = sub_231C96378();
  v3 = sub_231C96B58(v2);

  v4 = sub_231C96D60(v3);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = a1;
  sub_231C97AFC(v4, sub_231C97AC4, 0, isUniquelyReferenced_nonNull_native, &v7);
  return v7;
}

unint64_t sub_231C96D60(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD72CC8, &unk_231CA8DB0);
    v2 = sub_231CA7EC8();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  while (v5)
  {
    v9 = v8;
LABEL_12:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = v10 | (v9 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    v24 = *(*(a1 + 56) + 8 * v11);

    swift_dynamicCast();
    sub_231C97F34(&v25, v27);
    sub_231C97F34(v27, v28);
    sub_231C97F34(v28, &v26);
    result = sub_231C97640(v14, v13);
    v15 = result;
    if (v16)
    {
      v17 = (v2[6] + 16 * result);
      v18 = v17[1];
      *v17 = v14;
      v17[1] = v13;

      v19 = (v2[7] + 32 * v15);
      __swift_destroy_boxed_opaque_existential_0(v19);
      result = sub_231C97F34(&v26, v19);
      v8 = v9;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_19;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v20 = (v2[6] + 16 * result);
      *v20 = v14;
      v20[1] = v13;
      result = sub_231C97F34(&v26, (v2[7] + 32 * result));
      v21 = v2[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_20;
      }

      v2[2] = v23;
      v8 = v9;
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_231C97078()
{
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_0();

  return MEMORY[0x2821FE8D8]();
}

uint64_t sub_231C970AC()
{
  OUTLINED_FUNCTION_0();
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

uint64_t sub_231C970D0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_231C97194(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_231C97D54(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_231C97194(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_231C97294(a5, a6);
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
    result = sub_231CA7DF8();
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

uint64_t sub_231C97294(uint64_t a1, unint64_t a2)
{
  v4 = sub_231C972E0(a1, a2);
  sub_231C973F8(&unk_2846EB9C8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_231C972E0(uint64_t a1, unint64_t a2)
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

  for (; v5; v5 = sub_231CA7CF8())
  {
    result = sub_231C974DC(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_231CA7DC8();
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
          result = sub_231CA7DF8();
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

  return MEMORY[0x277D84F90];
}

uint64_t sub_231C973F8(uint64_t result)
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

    result = sub_231C9754C(result, v8, 1, v3);
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

void *sub_231C974DC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD72DF0, &qword_231CA8DD0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_231C9754C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD72DF0, &qword_231CA8DD0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

unint64_t sub_231C97640(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_231CA8028();
  sub_231CA7CD8();
  v6 = sub_231CA8048();

  return sub_231C976B8(a1, a2, v6);
}

unint64_t sub_231C976B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_231CA7FB8() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_231C9776C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD72CC8, &unk_231CA8DB0);
  v36 = a2;
  result = sub_231CA7EB8();
  v8 = result;
  if (!*(v5 + 16))
  {
LABEL_34:

LABEL_35:
    *v3 = v8;
    return result;
  }

  v35 = v3;
  v9 = 0;
  v10 = (v5 + 64);
  v11 = 1 << *(v5 + 32);
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & *(v5 + 64);
  v14 = (v11 + 63) >> 6;
  v15 = result + 64;
  if (!v13)
  {
LABEL_9:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v18 = v10[v9];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      sub_231C97A20(0, (v34 + 63) >> 6, v5 + 64);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
    goto LABEL_34;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_14:
    v19 = v16 | (v9 << 6);
    v20 = (*(v5 + 48) + 16 * v19);
    v21 = *v20;
    v22 = v20[1];
    v23 = (*(v5 + 56) + 32 * v19);
    if (v36)
    {
      sub_231C97F34(v23, v37);
    }

    else
    {
      sub_231C97D54(v23, v37);
    }

    v24 = *(v8 + 40);
    sub_231CA8028();
    sub_231CA7CD8();
    result = sub_231CA8048();
    v25 = -1 << *(v8 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    v33 = (*(v8 + 48) + 16 * v28);
    *v33 = v21;
    v33[1] = v22;
    result = sub_231C97F34(v37, (*(v8 + 56) + 32 * v28));
    ++*(v8 + 16);
    if (!v13)
    {
      goto LABEL_9;
    }
  }

  v29 = 0;
  v30 = (63 - v25) >> 6;
  while (++v27 != v30 || (v29 & 1) == 0)
  {
    v31 = v27 == v30;
    if (v27 == v30)
    {
      v27 = 0;
    }

    v29 |= v31;
    v32 = *(v15 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_26;
    }
  }

LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_231C97A20(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_231CA8D50;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_231C97A84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_231C97D54(a4, a1);

  return a2;
}

uint64_t sub_231C97AC4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_231C97A84((a2 + 2), *a1, a1[1], (a1 + 2));
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_231C97AFC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  sub_231C97DB0(a1, a2, a3, v32);
  v30[2] = v32[0];
  v30[3] = v32[1];
  v30[4] = v32[2];
  v31 = v33;

  while (1)
  {
    sub_231C97DEC(&v29);
    v7 = *(&v29 + 1);
    if (!*(&v29 + 1))
    {
      sub_231C97F2C();
    }

    v8 = v29;
    sub_231C97F34(v30, v28);
    v9 = *a5;
    v11 = sub_231C97640(v8, v7);
    v12 = *(v9 + 16);
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      break;
    }

    v15 = v10;
    if (*(v9 + 24) >= v14)
    {
      if (a4)
      {
        if (v10)
        {
          goto LABEL_10;
        }
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD72CC0, &qword_231CA8DA8);
        sub_231CA7E78();
        if (v15)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      sub_231C9776C(v14, a4 & 1);
      v16 = *a5;
      v17 = sub_231C97640(v8, v7);
      if ((v15 & 1) != (v18 & 1))
      {
        goto LABEL_18;
      }

      v11 = v17;
      if (v15)
      {
LABEL_10:
        v19 = *a5;
        sub_231C97D54(*(*a5 + 56) + 32 * v11, v27);
        __swift_destroy_boxed_opaque_existential_0(v28);

        v20 = (*(v19 + 56) + 32 * v11);
        __swift_destroy_boxed_opaque_existential_0(v20);
        sub_231C97F34(v27, v20);
        goto LABEL_14;
      }
    }

    v21 = *a5;
    *(*a5 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v22 = (v21[6] + 16 * v11);
    *v22 = v8;
    v22[1] = v7;
    sub_231C97F34(v28, (v21[7] + 32 * v11));
    v23 = v21[2];
    v24 = __OFADD__(v23, 1);
    v25 = v23 + 1;
    if (v24)
    {
      goto LABEL_17;
    }

    v21[2] = v25;
LABEL_14:
    a4 = 1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = sub_231CA7FC8();
  __break(1u);
  return result;
}

uint64_t sub_231C97D54(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_231C97DB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = -1 << *(a1 + 32);
  *a4 = a1;
  v7 = *(a1 + 64);
  result = a1 + 64;
  v6 = v7;
  v8 = ~v4;
  v9 = -v4;
  a4[1] = result;
  a4[2] = v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  a4[3] = 0;
  a4[4] = v10 & v6;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

uint64_t sub_231C97DEC@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_7:
    v9 = (v7 - 1) & v7;
    v10 = __clz(__rbit64(v7)) | (v8 << 6);
    v11 = (*(v3 + 48) + 16 * v10);
    v13 = *v11;
    v12 = v11[1];
    sub_231C97D54(*(v3 + 56) + 32 * v10, v19);
    *&v20 = v13;
    *(&v20 + 1) = v12;
    sub_231C97F34(v19, &v21);

    v15 = *(&v20 + 1);
    v16 = v20;
LABEL_8:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v5;
    v1[3] = v6;
    v1[4] = v9;
    if (v15)
    {
      v18 = v1[5];
      v17 = v1[6];
      *&v19[0] = v16;
      *(&v19[0] + 1) = v15;
      v19[1] = v21;
      v19[2] = v22;
      v18(v19);
      return sub_231C97FD8(v19);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    while (1)
    {
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v8 >= ((v5 + 64) >> 6))
      {
        v15 = 0;
        v16 = 0;
        v9 = 0;
        v21 = 0u;
        v22 = 0u;
        v20 = 0u;
        goto LABEL_8;
      }

      v7 = *(v4 + 8 * v8);
      ++v6;
      if (v7)
      {
        v6 = v8;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  return result;
}

_OWORD *sub_231C97F34(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_231C97FD8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD72CD0, &qword_231CA9050);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL sub_231C98040(void *a1)
{
  v2 = *(v1 + 16);
  v3 = [a1 eventBody];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = [v3 bundleID];

  v6 = sub_231CA7CC8();
  v8 = v7;

  v9 = sub_231C9EDC0(v6, v8);

  if (v9 == 4)
  {
    return 0;
  }

  return sub_231C96758(v9, v2);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_231C9811C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(v2 + 16);
  sub_231C97D54(a1, &v30);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD72CE0, &qword_231CA8DC8);
  result = swift_dynamicCast();
  if (result)
  {
    v5 = v29;
  }

  else
  {
    result = sub_231CA7C88();
    v5 = result;
  }

  v6 = *(v3 + 16);
  if (!v6)
  {
LABEL_27:
    a2[3] = v27;
    *a2 = v5;
    return result;
  }

  v7 = (v3 + 32);
  while (1)
  {
    v8 = *v7++;
    v9 = v8 >= 3;
    v10 = v8 >= 3 ? 0xD000000000000017 : 0xD000000000000013;
    v11 = "y from output result";
    if (v9)
    {
      v11 = "MailAppLaunchBucket";
    }

    v12 = v11 | 0x8000000000000000;
    if (v5[2])
    {
      v13 = sub_231C97640(v10, v12);
      v15 = v14;

      if (v15)
      {
        v16 = *(v5[7] + 8 * v13);
        goto LABEL_17;
      }
    }

    else
    {
    }

    v16 = 0;
LABEL_17:
    v17 = v16 + 1;
    if (v16 == -1)
    {
      break;
    }

    swift_isUniquelyReferenced_nonNull_native();
    v30 = v5;
    v18 = sub_231C97640(v10, v12);
    if (__OFADD__(v5[2], (v19 & 1) == 0))
    {
      goto LABEL_29;
    }

    v20 = v18;
    v21 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD72CE8, &qword_231CA8DD8);
    result = sub_231CA7E68();
    if (result)
    {
      result = sub_231C97640(v10, v12);
      if ((v21 & 1) != (v22 & 1))
      {
        goto LABEL_31;
      }

      v20 = result;
    }

    if (v21)
    {

      v5 = v30;
      *(v30[7] + 8 * v20) = v17;
    }

    else
    {
      v5 = v30;
      v30[(v20 >> 6) + 8] |= 1 << v20;
      v23 = (v5[6] + 16 * v20);
      *v23 = v10;
      v23[1] = v12;
      *(v5[7] + 8 * v20) = v17;
      v24 = v5[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_30;
      }

      v5[2] = v26;
    }

    if (!--v6)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  result = sub_231CA7FC8();
  __break(1u);
  return result;
}

void sub_231C98388()
{
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD72CE0, &qword_231CA8DC8);
  if (swift_dynamicCast())
  {
    swift_beginAccess();
    v1 = *(v0 + 16);
    *(v0 + 16) = v4;
  }

  else
  {
    sub_231CA7D48();
    v2 = ii_default_log_handle();
    if (v2)
    {
      v3 = v2;
      sub_231CA7C18();
    }

    else
    {
      __break(1u);
    }
  }
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_231C984AC()
{
  result = qword_27DD72CF0;
  if (!qword_27DD72CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD72CF0);
  }

  return result;
}

uint64_t sub_231C9855C(char a1)
{
  sub_231CA8028();
  MEMORY[0x23837A0B0](a1 & 1);
  return sub_231CA8048();
}

uint64_t sub_231C985C0()
{
  v1 = *v0;
  sub_231CA8028();
  MEMORY[0x23837A0B0](v1);
  return sub_231CA8048();
}

uint64_t sub_231C98614(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7955819 && a2 == 0xE300000000000000;
  if (v3 || (OUTLINED_FUNCTION_2() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6156656C62756F64 && a2 == 0xEB0000000065756CLL;
    if (v6 || (OUTLINED_FUNCTION_2() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6156676E69727473 && a2 == 0xEB0000000065756CLL)
    {

      return 2;
    }

    else
    {
      v8 = OUTLINED_FUNCTION_2();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_231C98744(char a1)
{
  if (!a1)
  {
    return 7955819;
  }

  if (a1 == 1)
  {
    return 0x6156656C62756F64;
  }

  return 0x6156676E69727473;
}

uint64_t sub_231C987E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_231C98614(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_231C98818()
{
  sub_231C9AB84();
  v0 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231C98850()
{
  sub_231C9AB84();
  v0 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231C98888(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD72DE0, &qword_231CA9048);
  OUTLINED_FUNCTION_1(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_19();
  MEMORY[0x28223BE20]();
  v11 = &v20[-v10];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_231C9AB84();
  OUTLINED_FUNCTION_20();
  v13 = *v3;
  v14 = v3[1];
  v20[15] = 0;
  OUTLINED_FUNCTION_3();
  sub_231CA7F58();
  if (!v2)
  {
    v15 = v3[2];
    v16 = *(v3 + 24);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_3();
    sub_231CA7F48();
    v17 = v3[4];
    v18 = v3[5];
    v20[13] = 2;
    OUTLINED_FUNCTION_3();
    sub_231CA7F38();
  }

  return (*(v7 + 8))(v11, v5);
}

uint64_t sub_231C989DC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD72DD8, &qword_231CA9040);
  OUTLINED_FUNCTION_1(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_19();
  MEMORY[0x28223BE20]();
  v11 = &v23 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_231C9AB84();
  sub_231CA8058();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v27 = 0;
  OUTLINED_FUNCTION_6();
  v13 = sub_231CA7EF8();
  v15 = v14;
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6();
  v16 = sub_231CA7EE8();
  v25 = v17;
  v24 = v16;
  v26 = 2;
  OUTLINED_FUNCTION_6();
  v18 = sub_231CA7ED8();
  v19 = v11;
  v21 = v20;
  (*(v7 + 8))(v19, v5);
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  *a2 = v13;
  *(a2 + 8) = v15;
  *(a2 + 16) = v24;
  *(a2 + 24) = v25 & 1;
  *(a2 + 32) = v18;
  *(a2 + 40) = v21;
  return result;
}

double sub_231C98BD0(uint64_t *a1)
{
  v2 = sub_231C989DC(a1, v12);
  if (!v1)
  {
    v10.n128_u64[0] = OUTLINED_FUNCTION_15(v2, v3, v4, v5, v6, v7, v8, v9, v12[0], v12[1], v10).n128_u64[0];
  }

  return v10.n128_f64[0];
}

void sub_231C98C20()
{
  if (*(v0 + 40))
  {
    v1 = *(v0 + 40);

    return;
  }

  v2 = 0;
  v19 = v0;
  v3 = *(v0 + 24);
  v4 = *(v3 + 16);
  v5 = (v3 + 72);
  v6 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v4 == v2)
    {
      v18 = sub_231C98E1C(v6);

      *(v19 + 40) = v18;
      return;
    }

    if (v2 >= *(v3 + 16))
    {
      break;
    }

    v8 = *(v5 - 5);
    v7 = *(v5 - 4);
    if (*(v5 - 2))
    {
      v9 = *v5;
      if (!*v5)
      {
        v23 = 0;
        v21 = 0u;
        v22 = 0u;
        v20 = 0u;
        sub_231C9B528(&v20, &qword_27DD72E00, &qword_231CA9060);
        goto LABEL_15;
      }

      v10 = *(v5 - 1);
      *&v20 = *(v5 - 5);
      *(&v20 + 1) = v7;
      *&v24 = v10;
      *(&v24 + 1) = v9;
    }

    else
    {
      v11 = *(v5 - 3);
      *&v20 = *(v5 - 5);
      *(&v20 + 1) = v7;
      *&v24 = v11;
    }

    sub_231CA7DB8();
    v24 = v20;
    v25 = v21;
    v26 = v22;
    v27 = v23;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_231C9AC44(0, v6[2] + 1, 1, v6);
    }

    v13 = v6[2];
    v12 = v6[3];
    if (v13 >= v12 >> 1)
    {
      v6 = sub_231C9AC44((v12 > 1), v13 + 1, 1, v6);
    }

    v6[2] = v13 + 1;
    v14 = &v6[7 * v13];
    v15 = v24;
    v16 = v25;
    v17 = v26;
    v14[10] = v27;
    *(v14 + 3) = v16;
    *(v14 + 4) = v17;
    *(v14 + 2) = v15;
LABEL_15:
    v5 += 6;
    ++v2;
  }

  __break(1u);
}

uint64_t sub_231C98E1C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD72E08, &qword_231CA9068);
    v1 = sub_231CA7EC8();
  }

  else
  {
    v1 = MEMORY[0x277D84F98];
  }

  v4 = v1;

  sub_231C9AF34(v2, 1, &v4);

  return v4;
}

uint64_t sub_231C98ED0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x646E656B636162 && a2 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_2() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000011 && 0x8000000231CA9DB0 == a2;
    if (v6 || (OUTLINED_FUNCTION_2() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x73646C656966 && a2 == 0xE600000000000000;
      if (v7 || (OUTLINED_FUNCTION_2() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == OUTLINED_FUNCTION_14() && a2 == v8)
      {

        return 3;
      }

      else
      {
        v10 = OUTLINED_FUNCTION_2();

        if (v10)
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

uint64_t sub_231C98FE8(unsigned __int8 a1)
{
  sub_231CA8028();
  MEMORY[0x23837A0B0](a1);
  return sub_231CA8048();
}

uint64_t sub_231C99030(char a1)
{
  result = 0x646E656B636162;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0x73646C656966;
      break;
    case 3:
      result = OUTLINED_FUNCTION_14();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_231C990B4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD72DC8, &qword_231CA9038);
  OUTLINED_FUNCTION_1(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_19();
  MEMORY[0x28223BE20]();
  v11 = &v18[-v10];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_231C9A9C8();
  OUTLINED_FUNCTION_20();
  v13 = *v3;
  v20 = 0;
  sub_231CA7F78();
  if (!v2)
  {
    v14 = *(v3 + 1);
    v15 = *(v3 + 2);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_3();
    sub_231CA7F58();
    v19 = *(v3 + 3);
    v18[15] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD72DB8, &qword_231CA9030);
    sub_231C9AAB8(&qword_2814C92D0, sub_231C9AB30);
    sub_231CA7F68();
    v16 = *(v3 + 8);
    v18[14] = 3;
    sub_231CA7F88();
  }

  return (*(v7 + 8))(v11, v5);
}

uint64_t sub_231C99298@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD72DB0, &qword_231CA9028);
  OUTLINED_FUNCTION_1(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_19();
  MEMORY[0x28223BE20]();
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_231C9A9C8();
  sub_231CA8058();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  OUTLINED_FUNCTION_6();
  v9 = sub_231CA7F18();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6();
  v10 = sub_231CA7EF8();
  v12 = v11;
  v17 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD72DB8, &qword_231CA9030);
  sub_231C9AAB8(&qword_27DD72DC0, sub_231C9AA64);
  sub_231CA7F08();
  OUTLINED_FUNCTION_6();
  v13 = sub_231CA7F28();
  v14 = OUTLINED_FUNCTION_0_0();
  v15(v14);
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  *a2 = v9;
  *(a2 + 8) = v17;
  *(a2 + 16) = v12;
  *(a2 + 24) = v18;
  *(a2 + 32) = v13;
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_231C99540@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_231C98ED0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_231C99574()
{
  sub_231C9A9C8();
  v0 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231C995AC()
{
  sub_231C9A9C8();
  v0 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2821FE720](v0);
}

double sub_231C995E4(uint64_t *a1)
{
  v2 = sub_231C99298(a1, v12);
  if (!v1)
  {
    v10.n128_u64[0] = OUTLINED_FUNCTION_15(v2, v3, v4, v5, v6, v7, v8, v9, v12[0], v12[1], v10).n128_u64[0];
  }

  return v10.n128_f64[0];
}

uint64_t sub_231C996A4()
{
  v5 = *(v0 + OBJC_IVAR____TtC24PersonalIntelligenceCore13MetricMessage_backend);
  v6 = sub_231CA7F98();
  OUTLINED_FUNCTION_13();
  MEMORY[0x238379D60](*(v0 + OBJC_IVAR____TtC24PersonalIntelligenceCore13MetricMessage_messageIdentifier), *(v0 + OBJC_IVAR____TtC24PersonalIntelligenceCore13MetricMessage_messageIdentifier + 8));
  OUTLINED_FUNCTION_13();
  v1 = *(v0 + OBJC_IVAR____TtC24PersonalIntelligenceCore13MetricMessage_messageContents);
  v2 = sub_231CA7C78();
  MEMORY[0x238379D60](v2);

  OUTLINED_FUNCTION_13();
  v3 = sub_231CA7F98();
  MEMORY[0x238379D60](v3);

  return v6;
}

uint64_t sub_231C99794()
{
  v1 = *(v0 + OBJC_IVAR____TtC24PersonalIntelligenceCore13MetricMessage____lazy_storage___codableArray);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC24PersonalIntelligenceCore13MetricMessage____lazy_storage___codableArray);

    return v1;
  }

  v34 = OBJC_IVAR____TtC24PersonalIntelligenceCore13MetricMessage____lazy_storage___codableArray;
  v35 = v0;
  v3 = *(v0 + OBJC_IVAR____TtC24PersonalIntelligenceCore13MetricMessage_messageContents);
  v4 = v3 + 64;
  v5 = 1 << *(v3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v3 + 64);
  v37 = v0 + OBJC_IVAR____TtC24PersonalIntelligenceCore13MetricMessage_messageIdentifier;
  v8 = (v5 + 63) >> 6;

  v36 = MEMORY[0x277D84F90];
  v38 = v3;
  while (v7)
  {
LABEL_11:
    v11 = __clz(__rbit64(v7)) | (v1 << 6);
    v12 = (*(v3 + 48) + 16 * v11);
    v13 = *v12;
    v14 = v12[1];
    sub_231C97D54(*(v3 + 56) + 32 * v11, &v48);
    v47[0] = v13;
    v47[1] = v14;
    sub_231C9B588(v47, &v45, &qword_27DD72CD0, &qword_231CA9050);
    v15 = *(&v45 + 1);
    v39 = v45;
    sub_231C9B588(v47, &v43, &qword_27DD72CD0, &qword_231CA9050);

    sub_231C97D54(v44, v42);
    sub_231C9AE94();
    if (swift_dynamicCast())
    {
      [v40 doubleValue];
      v17 = v16;

      v18 = 0;
      v19 = v17;
    }

    else
    {
      sub_231C97D54(v44, v42);
      v20 = swift_dynamicCast();
      if (v20)
      {
        v19 = v40;
      }

      else
      {
        v19 = 0;
      }

      v18 = v20 ^ 1;
    }

    v7 &= v7 - 1;
    sub_231C97D54(v44, v42);
    if (swift_dynamicCast())
    {
      v28 = v40;
      v33 = v41;
      goto LABEL_26;
    }

    if (v18)
    {

      __swift_destroy_boxed_opaque_existential_0(v44);
      __swift_destroy_boxed_opaque_existential_0(v46);
      v21 = sub_231CA7D48();
      result = ii_default_log_handle();
      if (!result)
      {
        goto LABEL_34;
      }

      v22 = result;
      sub_231C9B588(v47, &v45, &qword_27DD72CD0, &qword_231CA9050);
      if (os_log_type_enabled(v22, v21))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v42[0] = v24;
        *v23 = 136315394;
        *(v23 + 4) = sub_231C970D0(*v37, *(v37 + 8), v42);
        *(v23 + 12) = 2080;
        v43 = v45;
        v44[0] = v46[0];
        v44[1] = v46[1];
        v25 = v45;
        __swift_destroy_boxed_opaque_existential_0(v44);
        v26 = sub_231C970D0(v25, *(&v25 + 1), v42);

        *(v23 + 14) = v26;
        _os_log_impl(&dword_231C94000, v22, v21, "MetricMessage: Found message %s with uncodable value for key %s, this key will not be persisted.", v23, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x23837A830](v24, -1, -1);
        v27 = v23;
        v3 = v38;
        MEMORY[0x23837A830](v27, -1, -1);
      }

      else
      {

        sub_231C9B528(&v45, &qword_27DD72CD0, &qword_231CA9050);
      }

      result = sub_231C9B528(v47, &qword_27DD72CD0, &qword_231CA9050);
    }

    else
    {
      v18 = 0;
      v28 = 0;
      v33 = 0;
LABEL_26:
      __swift_destroy_boxed_opaque_existential_0(v44);
      __swift_destroy_boxed_opaque_existential_0(v46);
      sub_231C9B528(v47, &qword_27DD72CD0, &qword_231CA9050);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_231C9AD7C(0, *(v36 + 16) + 1, 1, v36);
        v36 = result;
      }

      v30 = *(v36 + 16);
      v29 = *(v36 + 24);
      if (v30 >= v29 >> 1)
      {
        result = sub_231C9AD7C((v29 > 1), v30 + 1, 1, v36);
        v36 = result;
      }

      *(v36 + 16) = v30 + 1;
      v31 = v36 + 48 * v30;
      v3 = v38;
      *(v31 + 32) = v39;
      *(v31 + 40) = v15;
      *(v31 + 48) = v19;
      *(v31 + 56) = v18;
      *(v31 + 64) = v28;
      *(v31 + 72) = v33;
    }
  }

  while (1)
  {
    v10 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      break;
    }

    if (v10 >= v8)
    {

      v32 = *(v35 + v34);
      v1 = v36;
      *(v35 + v34) = v36;

      return v1;
    }

    v7 = *(v4 + 8 * v10);
    ++v1;
    if (v7)
    {
      v1 = v10;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

id sub_231C99CF4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *&v4[OBJC_IVAR____TtC24PersonalIntelligenceCore13MetricMessage____lazy_storage___codableArray] = 0;
  v4[OBJC_IVAR____TtC24PersonalIntelligenceCore13MetricMessage_backend] = a4;
  v5 = &v4[OBJC_IVAR____TtC24PersonalIntelligenceCore13MetricMessage_messageIdentifier];
  *v5 = a2;
  v5[1] = a3;
  *&v4[OBJC_IVAR____TtC24PersonalIntelligenceCore13MetricMessage_messageContents] = a1;
  *&v4[OBJC_IVAR____TtC24PersonalIntelligenceCore13MetricMessage_dataVersion] = 1;
  v7.receiver = v4;
  v7.super_class = type metadata accessor for MetricMessage();
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t sub_231C99D90(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  v5 = 0;
  if (a3 == 1)
  {
    v6 = sub_231CA7A38();
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();
    sub_231CA7A28();
    sub_231C99F5C();
    sub_231CA7A18();

    sub_231C98C20();
    v10 = sub_231C9A004(v9);

    v5 = (*(v4 + 144))(v10, v13, v14, v12);
  }

  return v5;
}

unint64_t sub_231C99F5C()
{
  result = qword_27DD72FE0[0];
  if (!qword_27DD72FE0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD72FE0);
  }

  return result;
}

unint64_t sub_231C99FB0()
{
  result = qword_27DD72D30;
  if (!qword_27DD72D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD72D30);
  }

  return result;
}

unint64_t sub_231C9A004(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD72CC8, &unk_231CA8DB0);
    v2 = sub_231CA7EC8();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  while (v5)
  {
    v9 = v8;
LABEL_12:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = v10 | (v9 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    sub_231C9AED8(*(a1 + 56) + 40 * v11, &v30);
    v28 = v14;
    v29 = v13;

    swift_dynamicCast();
    sub_231C97F34(&v24, v26);
    sub_231C97F34(v26, v27);
    sub_231C97F34(v27, &v25);
    result = sub_231C97640(v14, v13);
    v15 = result;
    if (v16)
    {
      v17 = (v2[6] + 16 * result);
      v18 = v17[1];
      *v17 = v14;
      v17[1] = v13;

      v19 = (v2[7] + 32 * v15);
      __swift_destroy_boxed_opaque_existential_0(v19);
      result = sub_231C97F34(&v25, v19);
      v8 = v9;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_19;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v20 = (v2[6] + 16 * result);
      *v20 = v14;
      v20[1] = v13;
      result = sub_231C97F34(&v25, (v2[7] + 32 * result));
      v21 = v2[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_20;
      }

      v2[2] = v23;
      v8 = v9;
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

unint64_t sub_231C9A33C()
{
  result = qword_2814C95F8[0];
  if (!qword_2814C95F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2814C95F8);
  }

  return result;
}

uint64_t sub_231C9A3E8(uint64_t (*a1)(void), void (*a2)(void), uint64_t (*a3)(_BYTE *, void *, unint64_t))
{
  v7 = *(v3 + OBJC_IVAR____TtC24PersonalIntelligenceCore13MetricMessage_backend);
  v9 = *(v3 + OBJC_IVAR____TtC24PersonalIntelligenceCore13MetricMessage_messageIdentifier);
  v8 = *(v3 + OBJC_IVAR____TtC24PersonalIntelligenceCore13MetricMessage_messageIdentifier + 8);

  v10 = sub_231C99794();
  v11 = a1(0);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  a2();
  v17[0] = v7;
  v18 = v9;
  v19 = v8;
  v20 = v10;
  v21 = 1;
  v22 = 0;
  v14 = sub_231C9A33C();
  v15 = a3(v17, &unk_2846EB690, v14);

  return v15;
}

id sub_231C9A524(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();
  v6 = v5;

  if (v6 >> 60 == 15)
  {
    v7 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_17();
    v7 = sub_231CA7A98();
    v8 = OUTLINED_FUNCTION_17();
    sub_231C9ABD8(v8, v9);
  }

  return v7;
}

id sub_231C9A5E8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MetricMessage();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_231C9A680()
{
  result = qword_27DD72D38;
  if (!qword_27DD72D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD72D38);
  }

  return result;
}

uint64_t sub_231C9A6E4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_10(-1);
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
      return OUTLINED_FUNCTION_10((*a1 | (v4 << 8)) - 2);
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

      return OUTLINED_FUNCTION_10((*a1 | (v4 << 8)) - 2);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_10((*a1 | (v4 << 8)) - 2);
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

  return OUTLINED_FUNCTION_10(v8);
}

_BYTE *sub_231C9A768(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_9(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_7(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_8(result, v6);
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
          result = OUTLINED_FUNCTION_5(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_231C9A858(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_231C9A898(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      return OUTLINED_FUNCTION_11(result);
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void type metadata accessor for IIMetricsBackend()
{
  if (!qword_27DD72DA8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27DD72DA8);
    }
  }
}

uint64_t sub_231C9A938(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_231C9A978(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      return OUTLINED_FUNCTION_11(result);
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_231C9A9C8()
{
  result = qword_2814C9790[0];
  if (!qword_2814C9790[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2814C9790);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_231C9AA64()
{
  result = qword_27DD73278;
  if (!qword_27DD73278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD73278);
  }

  return result;
}

uint64_t sub_231C9AAB8(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD72DB8, &qword_231CA9030);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_231C9AB30()
{
  result = qword_2814C9820[0];
  if (!qword_2814C9820[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2814C9820);
  }

  return result;
}

unint64_t sub_231C9AB84()
{
  result = qword_2814C99C8[0];
  if (!qword_2814C99C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2814C99C8);
  }

  return result;
}

uint64_t sub_231C9ABD8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_231C9ABEC(a1, a2);
  }

  return a1;
}

uint64_t sub_231C9ABEC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void *sub_231C9AC44(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD72E28, &qword_231CA9088);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[7 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 56 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD72E10, &qword_231CA9070);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_231C9AD7C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD72DE8, &qword_231CA9058);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[48 * v8] <= v12)
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_231C9AE94()
{
  result = qword_2814C92C0;
  if (!qword_2814C92C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2814C92C0);
  }

  return result;
}

void sub_231C9AF34(uint64_t a1, char a2, void *a3)
{
  v29 = *(a1 + 16);
  if (!v29)
  {

    return;
  }

  v5 = 0;
  for (i = a1 + 32; ; i += 56)
  {
    if (v5 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_231CA7FC8();
      __break(1u);
      goto LABEL_22;
    }

    sub_231C9B588(i, &v36, &qword_27DD72E10, &qword_231CA9070);
    v8 = v36;
    v7 = v37;
    v34 = v36;
    v35 = v37;
    v31 = v38;
    v32 = v39;
    v33 = v40;
    v9 = *a3;
    v11 = sub_231C97640(v36, v37);
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_19;
    }

    v15 = v10;
    if (v9[3] < v14)
    {
      break;
    }

    if (a2)
    {
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD72E18, &qword_231CA9078);
      sub_231CA7E78();
      if (v15)
      {
        goto LABEL_15;
      }
    }

LABEL_11:
    v19 = *a3;
    *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v20 = (v19[6] + 16 * v11);
    *v20 = v8;
    v20[1] = v7;
    v21 = v19[7] + 40 * v11;
    v22 = v31;
    v23 = v32;
    *(v21 + 32) = v33;
    *v21 = v22;
    *(v21 + 16) = v23;
    v24 = v19[2];
    v25 = __OFADD__(v24, 1);
    v26 = v24 + 1;
    if (v25)
    {
      goto LABEL_20;
    }

    ++v5;
    v19[2] = v26;
    a2 = 1;
    if (v29 == v5)
    {

      return;
    }
  }

  sub_231C9B25C(v14, a2 & 1);
  v16 = *a3;
  v17 = sub_231C97640(v8, v7);
  if ((v15 & 1) != (v18 & 1))
  {
    goto LABEL_21;
  }

  v11 = v17;
  if ((v15 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v27 = swift_allocError();
  swift_willThrow();
  v41 = v27;
  v28 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD72E20, &qword_231CA9080);
  if ((swift_dynamicCast() & 1) == 0)
  {

    sub_231C9B5EC(&v31);

    return;
  }

LABEL_22:
  sub_231CA7DD8();
  MEMORY[0x238379D60](0xD00000000000001BLL, 0x8000000231CA9E90);
  sub_231CA7E58();
  MEMORY[0x238379D60](39, 0xE100000000000000);
  sub_231CA7E88();
  __break(1u);
}

uint64_t sub_231C9B25C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD72E08, &qword_231CA9068);
  v41 = a2;
  result = sub_231CA7EB8();
  v8 = result;
  if (!*(v5 + 16))
  {
LABEL_34:

LABEL_35:
    *v3 = v8;
    return result;
  }

  v40 = v3;
  v9 = 0;
  v10 = (v5 + 64);
  v11 = 1 << *(v5 + 32);
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & *(v5 + 64);
  v14 = (v11 + 63) >> 6;
  v15 = result + 64;
  if (!v13)
  {
LABEL_9:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v18 = v10[v9];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_35;
    }

    v39 = 1 << *(v5 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      sub_231C97A20(0, (v39 + 63) >> 6, v5 + 64);
    }

    else
    {
      *v10 = -1 << v39;
    }

    *(v5 + 16) = 0;
    goto LABEL_34;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_14:
    v19 = v16 | (v9 << 6);
    v20 = (*(v5 + 48) + 16 * v19);
    v21 = *v20;
    v22 = v20[1];
    v23 = *(v5 + 56) + 40 * v19;
    if (v41)
    {
      v24 = *v23;
      v25 = *(v23 + 16);
      v44 = *(v23 + 32);
      v42 = v24;
      v43 = v25;
    }

    else
    {
      sub_231C9AED8(v23, &v42);
    }

    v26 = *(v8 + 40);
    sub_231CA8028();
    sub_231CA7CD8();
    result = sub_231CA8048();
    v27 = -1 << *(v8 + 32);
    v28 = result & ~v27;
    v29 = v28 >> 6;
    if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
    {
      break;
    }

    v30 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
    v35 = (*(v8 + 48) + 16 * v30);
    *v35 = v21;
    v35[1] = v22;
    v36 = *(v8 + 56) + 40 * v30;
    v37 = v42;
    v38 = v43;
    *(v36 + 32) = v44;
    *v36 = v37;
    *(v36 + 16) = v38;
    ++*(v8 + 16);
    if (!v13)
    {
      goto LABEL_9;
    }
  }

  v31 = 0;
  v32 = (63 - v27) >> 6;
  while (++v29 != v32 || (v31 & 1) == 0)
  {
    v33 = v29 == v32;
    if (v29 == v32)
    {
      v29 = 0;
    }

    v31 |= v33;
    v34 = *(v15 + 8 * v29);
    if (v34 != -1)
    {
      v30 = __clz(__rbit64(~v34)) + (v29 << 6);
      goto LABEL_26;
    }
  }

LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_231C9B528(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_231C9B588(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8) + 16);
  v6 = OUTLINED_FUNCTION_17();
  v7(v6);
  return a2;
}

uint64_t sub_231C9B640(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_10(-1);
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

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
      return OUTLINED_FUNCTION_10((*a1 | (v4 << 8)) - 3);
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

      return OUTLINED_FUNCTION_10((*a1 | (v4 << 8)) - 3);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_10((*a1 | (v4 << 8)) - 3);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_10(v8);
}

_BYTE *sub_231C9B6C4(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_9(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_7(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_8(result, v6);
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
          result = OUTLINED_FUNCTION_5(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_231C9B794(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_10(-1);
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
      return OUTLINED_FUNCTION_10((*a1 | (v4 << 8)) - 4);
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

      return OUTLINED_FUNCTION_10((*a1 | (v4 << 8)) - 4);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_10((*a1 | (v4 << 8)) - 4);
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

  return OUTLINED_FUNCTION_10(v8);
}

_BYTE *sub_231C9B818(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_9(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_7(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_8(result, v6);
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
          result = OUTLINED_FUNCTION_5(result, a2 + 3);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_231C9B8E4()
{
  result = qword_27DD73280[0];
  if (!qword_27DD73280[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD73280);
  }

  return result;
}

unint64_t sub_231C9B93C()
{
  result = qword_27DD73390[0];
  if (!qword_27DD73390[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD73390);
  }

  return result;
}

unint64_t sub_231C9B994()
{
  result = qword_2814C99B0;
  if (!qword_2814C99B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814C99B0);
  }

  return result;
}

unint64_t sub_231C9B9EC()
{
  result = qword_2814C99B8;
  if (!qword_2814C99B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814C99B8);
  }

  return result;
}

unint64_t sub_231C9BA44()
{
  result = qword_2814C9780;
  if (!qword_2814C9780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814C9780);
  }

  return result;
}

unint64_t sub_231C9BA9C()
{
  result = qword_2814C9788;
  if (!qword_2814C9788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814C9788);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2()
{

  return sub_231CA7FB8();
}

void OUTLINED_FUNCTION_13()
{

  JUMPOUT(0x238379D60);
}

__n128 OUTLINED_FUNCTION_15(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, __n128 a11)
{
  *v11 = a9;
  v11[1] = a10;
  result = a11;
  v11[2] = a11;
  return result;
}

uint64_t OUTLINED_FUNCTION_20()
{

  return sub_231CA8068();
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t UserDefault.init(key:defaultValue:container:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for UserDefault();
  v13 = (a6 + *(v12 + 28));
  *v13 = a1;
  v13[1] = a2;
  result = (*(*(a5 - 8) + 32))(a6, a3, a5);
  *(a6 + *(v12 + 32)) = a4;
  return result;
}

uint64_t UserDefault.wrappedValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v6 = (*(*(sub_231CA7D88() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v8 = v16 - v7;
  v9 = *(a1 + 28);
  v10 = *(v2 + *(a1 + 32));
  v11 = *(v2 + v9);
  v12 = *(v2 + v9 + 8);
  v13 = sub_231CA7CB8();
  v14 = [v10 objectForKey_];

  if (v14)
  {
    sub_231CA7D98();
    swift_unknownObjectRelease();
    sub_231C97F34(v16, v17);
  }

  else
  {
    memset(v17, 0, sizeof(v17));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD72E90, &qword_231CA92B0);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v8, 0, 1, v5);
    return (*(*(v5 - 8) + 32))(a2, v8, v5);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v8, 1, 1, v5);
    return (*(*(v5 - 8) + 16))(a2, v2, v5);
  }
}

uint64_t sub_231C9BF64@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = *(a1 + a2 - 8);
  v5 = type metadata accessor for UserDefault();
  return UserDefault.wrappedValue.getter(v5, a3);
}

uint64_t sub_231C9BFA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = (*(*(*(a3 + a4 - 8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](a1, a1);
  v6 = &v10 - v5;
  (*(v7 + 16))(&v10 - v5);
  v8 = type metadata accessor for UserDefault();
  return UserDefault.wrappedValue.setter(v6, v8);
}

uint64_t UserDefault.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + *(a2 + 32));
  v6 = *(a2 + 16);
  v7 = sub_231CA7FA8();
  v8 = (v2 + *(a2 + 28));
  v9 = *v8;
  v10 = v8[1];
  v11 = sub_231CA7CB8();
  [v5 setObject:v7 forKey:v11];
  swift_unknownObjectRelease();

  v12 = *(*(v6 - 8) + 8);

  return v12(a1, v6);
}

void (*UserDefault.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v5;
  *v5 = a2;
  v5[1] = v2;
  v6 = *(a2 + 16);
  v5[2] = v6;
  v7 = *(v6 - 8);
  v5[3] = v7;
  v8 = *(v7 + 64);
  v5[4] = __swift_coroFrameAllocStub(v8);
  v9 = __swift_coroFrameAllocStub(v8);
  v5[5] = v9;
  UserDefault.wrappedValue.getter(a2, v9);
  return sub_231C9C210;
}

void sub_231C9C210(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  if (a2)
  {
    v5 = v2[2];
    v6 = v2[3];
    v8 = *v2;
    v7 = v2[1];
    (*(v6 + 16))((*a1)[4], v4, v5);
    UserDefault.wrappedValue.setter(v3, v8);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    v9 = v2[1];
    UserDefault.wrappedValue.setter((*a1)[5], *v2);
  }

  free(v4);
  free(v3);

  free(v2);
}

Swift::Void __swiftcall UserDefault.removeObject()()
{
  v2 = *(v1 + *(v0 + 32));
  v3 = (v1 + *(v0 + 28));
  v4 = *v3;
  v5 = v3[1];
  v6 = sub_231CA7CB8();
  [v2 removeObjectForKey_];
}

unint64_t sub_231C9C33C(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    result = sub_231C9C718();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_231C9C3CC(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *(((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return __swift_getEnumTagSinglePayload(result, v5, v4);
    }
  }

  else
  {
    v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_231C9C538(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v8 >= a3)
  {
    v14 = 0;
  }

  else
  {
    v11 = a3 - v8;
    if (((((v9 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              *v17 = a2 & 0x7FFFFFFF;
              v17[1] = 0;
            }

            else
            {
              v17[1] = (a2 - 1);
            }
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((((v9 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((((v9 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

unint64_t sub_231C9C718()
{
  result = qword_2814C92C8;
  if (!qword_2814C92C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2814C92C8);
  }

  return result;
}

uint64_t FeatureFlagDomains.TextUnderstanding.hashValue.getter()
{
  v1 = *v0;
  sub_231CA8028();
  MEMORY[0x23837A0B0](v1);
  return sub_231CA8048();
}

uint64_t sub_231C9C8C4(char a1)
{
  v4[3] = &type metadata for FeatureFlagDomains.TextUnderstanding;
  v4[4] = sub_231C9CCAC();
  LOBYTE(v4[0]) = a1;
  v2 = sub_231CA7C08();
  __swift_destroy_boxed_opaque_existential_0(v4);
  return v2 & 1;
}

uint64_t sub_231C9C91C(uint64_t a1, uint64_t (*a2)(void))
{
  v4[3] = a1;
  v4[4] = a2();
  v2 = sub_231CA7C08();
  __swift_destroy_boxed_opaque_existential_0(v4);
  return v2 & 1;
}

uint64_t CheckableFeatureFlag.isEnabled.getter(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = *(a2 + 8);
  v7[3] = a1;
  v7[4] = v4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v7);
  (*(*(v3 - 8) + 16))(boxed_opaque_existential_1, v2, v3);
  LOBYTE(v3) = sub_231CA7C08();
  __swift_destroy_boxed_opaque_existential_0(v7);
  return v3 & 1;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_231C9CB74()
{
  sub_231CA8028();
  MEMORY[0x23837A0B0](0);
  return sub_231CA8048();
}

uint64_t sub_231C9CBEC()
{
  sub_231CA8028();
  MEMORY[0x23837A0B0](0);
  return sub_231CA8048();
}

unint64_t sub_231C9CC30()
{
  result = qword_27DD72E98;
  if (!qword_27DD72E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD72E98);
  }

  return result;
}

unint64_t sub_231C9CC84(uint64_t a1)
{
  result = sub_231C9CCAC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_231C9CCAC()
{
  result = qword_2814C9308;
  if (!qword_2814C9308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814C9308);
  }

  return result;
}

unint64_t sub_231C9CD34()
{
  result = qword_27DD72EB0;
  if (!qword_27DD72EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD72EB0);
  }

  return result;
}

unint64_t sub_231C9CD88(uint64_t a1)
{
  result = sub_231C9CDB0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_231C9CDB0()
{
  result = qword_2814C9300;
  if (!qword_2814C9300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814C9300);
  }

  return result;
}

unint64_t sub_231C9CE38()
{
  result = qword_27DD72EC8;
  if (!qword_27DD72EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD72EC8);
  }

  return result;
}

unint64_t sub_231C9CEC4(uint64_t a1)
{
  result = sub_231C9CEEC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_231C9CEEC()
{
  result = qword_2814C92D8;
  if (!qword_2814C92D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814C92D8);
  }

  return result;
}

uint64_t sub_231C9CF70(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t getEnumTagSinglePayload for FeatureFlagDomains.TextUnderstanding(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
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

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for FeatureFlagDomains.TextUnderstanding(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_231C9D174(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_3_0();
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

_BYTE *sub_231C9D1C4(_BYTE *result, int a2, int a3)
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

uint64_t sub_231C9D2C4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD72F08, &qword_231CA9838);
  v1 = *(*(v0 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v0 - 8, v2);
  v5 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3, v6);
  v8 = v29 - v7;
  v9 = sub_231CA7A88();
  v10 = OUTLINED_FUNCTION_1(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10, v15);
  v17 = v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = [objc_opt_self() resourcesDirectory];
  sub_231CA7CC8();

  sub_231CA7A78();

  sub_231CA7A68();
  sub_231C9DE74(v5);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    result = sub_231C9DE74(v8);
  }

  else
  {
    (*(v12 + 32))(v17, v8, v9);
    v20 = [objc_opt_self() defaultManager];
    sub_231CA7A58();
    v21 = sub_231CA7CB8();

    v22 = [v20 contentsAtPath_];

    if (v22)
    {
      v23 = sub_231CA7AA8();
      v25 = v24;

      v26 = sub_231CA7A38();
      v27 = *(v26 + 48);
      v28 = *(v26 + 52);
      swift_allocObject();
      sub_231CA7A28();
      sub_231C9DEDC();
      sub_231CA7A18();
      (*(v12 + 8))(v17, v9);

      result = sub_231C9ABEC(v23, v25);
      qword_2814C9D68 = v29[1];
      return result;
    }

    result = (*(v12 + 8))(v17, v9);
  }

  qword_2814C9D68 = 0;
  return result;
}

uint64_t *sub_231C9D5E4()
{
  if (qword_2814C9B00 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  return &qword_2814C9D68;
}

uint64_t sub_231C9D624(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x8000000231CA9F70 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_231CA7FB8();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_231C9D70C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_231C9D624(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_231C9D744(uint64_t a1)
{
  sub_231C9D948();

  return MEMORY[0x2821FE718](a1);
}

uint64_t sub_231C9D780(uint64_t a1)
{
  sub_231C9D948();

  return MEMORY[0x2821FE720](a1);
}

uint64_t MetricConfiguration.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD72EE0, &qword_231CA9680);
  v4 = OUTLINED_FUNCTION_1(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4, v9);
  v11 = v15 - v10;
  v12 = *v1;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_231C9D948();

  sub_231CA8068();
  v15[1] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD72EE8, &qword_231CA9688);
  sub_231C9DB34(&qword_27DD72EF0);
  sub_231CA7F68();

  return (*(v6 + 8))(v11, v3);
}

unint64_t sub_231C9D948()
{
  result = qword_27DD73928[0];
  if (!qword_27DD73928[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD73928);
  }

  return result;
}

uint64_t MetricConfiguration.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD72EF8, &qword_231CA9690);
  v6 = OUTLINED_FUNCTION_1(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6, v11);
  v13 = v16 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_231C9D948();
  sub_231CA8058();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD72EE8, &qword_231CA9688);
    sub_231C9DB34(&qword_27DD72F00);
    sub_231CA7F08();
    (*(v8 + 8))(v13, v5);
    *a2 = v16[1];
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_231C9DB34(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD72EE8, &qword_231CA9688);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_231C9DBE4(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_231C9DC24(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MetricConfiguration.CodingKeys(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for MetricConfiguration.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_231C9DD70()
{
  result = qword_27DD73B30[0];
  if (!qword_27DD73B30[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD73B30);
  }

  return result;
}

unint64_t sub_231C9DDC8()
{
  result = qword_27DD73C40;
  if (!qword_27DD73C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD73C40);
  }

  return result;
}

unint64_t sub_231C9DE20()
{
  result = qword_27DD73C48[0];
  if (!qword_27DD73C48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD73C48);
  }

  return result;
}

uint64_t sub_231C9DE74(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD72F08, &qword_231CA9838);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_231C9DEDC()
{
  result = qword_27DD72F10;
  if (!qword_27DD72F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD72F10);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_3()
{

  return swift_once();
}

uint64_t sub_231C9DF54(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD72F20, &qword_231CA9860);
    v1 = sub_231CA7EC8();
  }

  else
  {
    v1 = MEMORY[0x277D84F98];
  }

  v4 = v1;

  sub_231C9E50C(v2, 1, &v4);

  return v4;
}

uint64_t sub_231C9E008(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = a3 + 64;
  v5 = 1 << *(a3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a3 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  v33 = MEMORY[0x277D84F90];
  v34 = v3;
  while (v7)
  {
LABEL_9:
    v12 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v13 = v12 | (v10 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    sub_231C97D54(*(v3 + 56) + 32 * v13, v38);
    v37[0] = v15;
    v37[1] = v16;
    sub_231C97D54(v38, v36);
    sub_231C9E380();

    if (swift_dynamicCast())
    {
      v26 = v35;

      sub_231C97FD8(v37);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_231C9E3D4(0, v33[2] + 1, 1, v33);
        v33 = result;
      }

      v28 = v33[2];
      v27 = v33[3];
      if (v28 >= v27 >> 1)
      {
        result = sub_231C9E3D4((v27 > 1), v28 + 1, 1, v33);
        v33 = result;
      }

      v33[2] = v28 + 1;
      v29 = &v33[3 * v28];
      v29[4] = v15;
      v29[5] = v16;
      v29[6] = v26;
    }

    else
    {
      v17 = sub_231CA7D48();
      result = ii_default_log_handle();
      if (!result)
      {
        goto LABEL_22;
      }

      v18 = result;
      sub_231C97D54(v38, v36);
      if (os_log_type_enabled(v18, v17))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v35 = v20;
        *v19 = 136315138;
        __swift_project_boxed_opaque_existential_0(v36, v36[3]);
        swift_getDynamicType();
        v21 = sub_231CA8098();
        v23 = v22;
        __swift_destroy_boxed_opaque_existential_0(v36);
        v24 = sub_231C970D0(v21, v23, &v35);

        *(v19 + 4) = v24;
        _os_log_impl(&dword_231C94000, v18, v17, "CABackend: failed to convert item of type %s to NSObject", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v20);
        v25 = v20;
        v3 = v34;
        MEMORY[0x23837A830](v25, -1, -1);
        MEMORY[0x23837A830](v19, -1, -1);
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_0(v36);
      }

      result = sub_231C97FD8(v37);
    }
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v8)
    {

      v30 = sub_231C9DF54(v33);
      v31 = sub_231CA7CB8();
      sub_231C9E380();
      v32 = sub_231CA7C58();
      AnalyticsSendEvent();

      return v30;
    }

    v7 = *(v4 + 8 * v11);
    ++v10;
    if (v7)
    {
      v10 = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

unint64_t sub_231C9E380()
{
  result = qword_27DD72F18;
  if (!qword_27DD72F18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DD72F18);
  }

  return result;
}

void *sub_231C9E3D4(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD72F30, &qword_231CA9878);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD72F38, qword_231CA9880);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_231C9E50C(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v27 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v27 == v4)
    {

      return;
    }

    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_231CA7FC8();
      __break(1u);
      goto LABEL_22;
    }

    v7 = *(i - 2);
    v6 = *(i - 1);
    v8 = *i;
    v9 = *a3;

    v10 = v8;
    v12 = sub_231C97640(v7, v6);
    v13 = v9[2];
    v14 = (v11 & 1) == 0;
    v15 = v13 + v14;
    if (__OFADD__(v13, v14))
    {
      goto LABEL_19;
    }

    v16 = v11;
    if (v9[3] < v15)
    {
      break;
    }

    if (a2)
    {
      if (v11)
      {
        goto LABEL_14;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD72F28, &unk_231CA9868);
      sub_231CA7E78();
      if (v16)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v20 = *a3;
    *(*a3 + 8 * (v12 >> 6) + 64) |= 1 << v12;
    v21 = (v20[6] + 16 * v12);
    *v21 = v7;
    v21[1] = v6;
    *(v20[7] + 8 * v12) = v10;
    v22 = v20[2];
    v23 = __OFADD__(v22, 1);
    v24 = v22 + 1;
    if (v23)
    {
      goto LABEL_20;
    }

    v20[2] = v24;
    ++v4;
    a2 = 1;
  }

  sub_231C9E7EC(v15, a2 & 1);
  v17 = *a3;
  v18 = sub_231C97640(v7, v6);
  if ((v16 & 1) != (v19 & 1))
  {
    goto LABEL_21;
  }

  v12 = v18;
  if ((v16 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v25 = swift_allocError();
  swift_willThrow();
  v26 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD72E20, &qword_231CA9080);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_22:
  sub_231CA7DD8();
  MEMORY[0x238379D60](0xD00000000000001BLL, 0x8000000231CA9E90);
  sub_231CA7E58();
  MEMORY[0x238379D60](39, 0xE100000000000000);
  sub_231CA7E88();
  __break(1u);
}

uint64_t sub_231C9E7EC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD72F20, &qword_231CA9860);
  v39 = a2;
  result = sub_231CA7EB8();
  v8 = result;
  if (!*(v5 + 16))
  {
LABEL_33:

LABEL_34:
    *v3 = v8;
    return result;
  }

  v37 = v3;
  v38 = v5;
  v9 = 0;
  v10 = (v5 + 64);
  v11 = 1 << *(v5 + 32);
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & *(v5 + 64);
  v14 = (v11 + 63) >> 6;
  v15 = result + 64;
  if (!v13)
  {
LABEL_9:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v9 >= v14)
      {
        break;
      }

      v18 = v10[v9];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      sub_231C97A20(0, (v36 + 63) >> 6, v10);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
    goto LABEL_33;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_14:
    v19 = v16 | (v9 << 6);
    v20 = (*(v5 + 48) + 16 * v19);
    v21 = *v20;
    v22 = v20[1];
    v23 = *(*(v5 + 56) + 8 * v19);
    if ((v39 & 1) == 0)
    {
      v24 = v20[1];

      v25 = v23;
    }

    v26 = *(v8 + 40);
    sub_231CA8028();
    sub_231CA7CD8();
    result = sub_231CA8048();
    v27 = -1 << *(v8 + 32);
    v28 = result & ~v27;
    v29 = v28 >> 6;
    if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
    {
      break;
    }

    v30 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v15 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
    v35 = (*(v8 + 48) + 16 * v30);
    *v35 = v21;
    v35[1] = v22;
    *(*(v8 + 56) + 8 * v30) = v23;
    ++*(v8 + 16);
    v5 = v38;
    if (!v13)
    {
      goto LABEL_9;
    }
  }

  v31 = 0;
  v32 = (63 - v27) >> 6;
  while (++v29 != v32 || (v31 & 1) == 0)
  {
    v33 = v29 == v32;
    if (v29 == v32)
    {
      v29 = 0;
    }

    v31 |= v33;
    v34 = *(v15 + 8 * v29);
    if (v34 != -1)
    {
      v30 = __clz(__rbit64(~v34)) + (v29 << 6);
      goto LABEL_25;
    }
  }

LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_231C9EA8C()
{
  v0 = sub_231CA7C48();
  __swift_allocate_value_buffer(v0, qword_27DD73F60);
  __swift_project_value_buffer(v0, qword_27DD73F60);
  return sub_231CA7C38();
}

uint64_t sub_231C9EB04()
{
  if (qword_27DD73CD0 != -1)
  {
    swift_once();
  }

  v0 = sub_231CA7C48();

  return __swift_project_value_buffer(v0, qword_27DD73F60);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
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

uint64_t sub_231C9EC0C(unsigned __int8 a1, char a2)
{
  v2 = 0xEE006C69616D2E65;
  v3 = 0x6C7070612E6D6F63;
  v4 = a1;
  v5 = 0x6C7070612E6D6F63;
  v6 = 0xEE006C69616D2E65;
  switch(v4)
  {
    case 1:
    case 2:
      v6 = 0x8000000231CAA000;
      v5 = 0xD000000000000014;
      break;
    case 3:
      v6 = 0x8000000231CA9FE0;
      v5 = 0xD000000000000013;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
    case 2:
      v2 = 0x8000000231CAA000;
      v3 = 0xD000000000000014;
      break;
    case 3:
      v2 = 0x8000000231CA9FE0;
      v3 = 0xD000000000000013;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_231CA7FB8();
  }

  return v8 & 1;
}

uint64_t sub_231C9ED34()
{
  result = OUTLINED_FUNCTION_1_1();
  switch(v1)
  {
    case 1:
    case 2:
      result = 0xD000000000000014;
      break;
    case 3:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_231C9EDC0(uint64_t a1, uint64_t a2)
{
  v2 = a1 == 0xD000000000000014 && 0x8000000231CAA000 == a2;
  if (v2 || (OUTLINED_FUNCTION_2() & 1) != 0)
  {
    return 2;
  }

  v6 = a1 == 0xD000000000000013 && 0x8000000231CA9FE0 == a2;
  if (v6 || (OUTLINED_FUNCTION_2() & 1) != 0)
  {
    return 3;
  }

  if (OUTLINED_FUNCTION_2())
  {
    return 1;
  }

  if (a1 == OUTLINED_FUNCTION_1_1() && a2 == v7)
  {
    return 0;
  }

  if (OUTLINED_FUNCTION_2())
  {
    return 0;
  }

  return 4;
}

uint64_t getEnumTagSinglePayload for BundleId(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for BundleId(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_231C9F02C()
{
  OUTLINED_FUNCTION_25();
  v66 = v0;
  v68 = v2;
  v64 = sub_231CA7B38();
  v3 = OUTLINED_FUNCTION_1(v64);
  v67 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3, v7);
  OUTLINED_FUNCTION_3_1();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD72F40, &qword_231CA9960);
  OUTLINED_FUNCTION_34(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_19();
  MEMORY[0x28223BE20](v14, v15);
  v61 = &v61 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD72F48, &qword_231CA9968);
  OUTLINED_FUNCTION_34(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_19();
  MEMORY[0x28223BE20](v20, v21);
  v23 = &v61 - v22;
  v65 = sub_231CA7A08();
  v24 = OUTLINED_FUNCTION_1(v65);
  v63 = v25;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v24, v28);
  OUTLINED_FUNCTION_3_1();
  v31 = v30 - v29;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD72F50, &qword_231CA9970);
  OUTLINED_FUNCTION_34(v32);
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_19();
  MEMORY[0x28223BE20](v35, v36);
  OUTLINED_FUNCTION_35();
  v37 = sub_231CA7B48();
  v38 = OUTLINED_FUNCTION_1(v37);
  v40 = v39;
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v38, v43);
  OUTLINED_FUNCTION_3_1();
  v46 = v45 - v44;
  v47 = sub_231CA7B88();
  v48 = OUTLINED_FUNCTION_1(v47);
  v50 = v49;
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v48, v53);
  OUTLINED_FUNCTION_3_1();
  v56 = v55 - v54;
  (*(v40 + 104))(v46, *MEMORY[0x277CC9810], v37);
  sub_231CA7B58();
  (*(v40 + 8))(v46, v37);
  v62 = v47;
  __swift_storeEnumTagSinglePayload(v23, 1, 1, v47);
  v57 = sub_231CA7B98();
  __swift_storeEnumTagSinglePayload(v61, 1, 1, v57);
  sub_231CA79F8();
  sub_231CA7B68();
  sub_231CA7B78();
  v58 = v67;
  v59 = *(v67 + 8);
  v60 = v64;
  v59(v10, v64);
  (*(v63 + 8))(v31, v65);
  if (__swift_getEnumTagSinglePayload(v1, 1, v60) == 1)
  {
    sub_231CA7B68();
    sub_231CA7AE8();
    v59(v10, v60);
    (*(v50 + 8))(v56, v62);
    if (__swift_getEnumTagSinglePayload(v1, 1, v60) != 1)
    {
      sub_231C9F4F4(v1);
    }
  }

  else
  {
    (*(v50 + 8))(v56, v62);
    (*(v58 + 32))(v68, v1, v60);
  }

  OUTLINED_FUNCTION_24();
}

uint64_t sub_231C9F4F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD72F50, &qword_231CA9970);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_231C9F55C()
{
  v1 = objc_allocWithZone(v0);
  OUTLINED_FUNCTION_16_0();
  sub_231C9F5A4();
}

void sub_231C9F5A4()
{
  OUTLINED_FUNCTION_25();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD72F58, &qword_231CA9978);
  OUTLINED_FUNCTION_1(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_19();
  MEMORY[0x28223BE20](v9, v10);
  OUTLINED_FUNCTION_35();
  type metadata accessor for MetricMessage();
  v11 = v3;
  OUTLINED_FUNCTION_16_0();
  sub_231CA7BD8();
  (*(v6 + 32))(v0 + OBJC_IVAR____TtC24PersonalIntelligenceCore13MetricStorage_stream, v1, v4);
  v12.receiver = v0;
  v12.super_class = type metadata accessor for MetricStorage(0);
  objc_msgSendSuper2(&v12, sel_init);

  OUTLINED_FUNCTION_24();
}

uint64_t sub_231C9F6DC()
{
  sub_231CA4EE8(0, &qword_2814C92F8, 0x277CF17F8);
  v1 = objc_opt_self();
  v2 = OUTLINED_FUNCTION_31();
  v3 = [v1 suggestionsSubdirectory_];

  v4 = sub_231CA7CC8();
  v6 = v5;

  sub_231C9F7C4(v4, v6, 102400);
  v7 = *(v0 + 88);
  v8 = OUTLINED_FUNCTION_16_0();

  return v9(v8);
}

id sub_231C9F7C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_231CA7CB8();

  v6 = [v4 initWithStoreBasePath:v5 segmentSize:a3];

  return v6;
}

id sub_231C9F878()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MetricStorage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_231C9F920()
{
  v0 = objc_opt_self();
  v1 = sub_231CA7CB8();
  v2 = [v0 suggestionsDirectoryFile_];

  v3 = sub_231CA7CC8();
  v5 = v4;

  qword_2814C9D90 = v3;
  *algn_2814C9D98 = v5;
}

uint64_t sub_231C9FA30(uint64_t *a1)
{
  v2 = *a1;
  OUTLINED_FUNCTION_23();
  v3 = *(v1 + v2);
}

uint64_t sub_231C9FA78(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v2 + v4);
  *(v2 + v4) = a1;
}

id sub_231C9FB1C()
{
  result = [objc_allocWithZone(type metadata accessor for MetricStore(0)) init];
  qword_2814C9AF8 = result;
  return result;
}

id static MetricStore.sharedInstance.getter()
{
  if (_MergedGlobals != -1)
  {
    OUTLINED_FUNCTION_12_0();
  }

  v1 = qword_2814C9AF8;

  return v1;
}

id MetricStore.init(identifier:storeConfig:enrichmentProviders:messageListeners:windowStartDate:configuration:sendInterval:)(double a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  v9 = v8;
  ObjectType = swift_getObjectType();
  v16 = *a8;
  v17 = objc_allocWithZone(type metadata accessor for MetricStorage(0));
  v18 = a4;
  OUTLINED_FUNCTION_32();
  sub_231C9F5A4();
  v20 = v19;
  v21 = [objc_allocWithZone(MEMORY[0x277D425F8]) initWithGuardedData_];

  *&v9[OBJC_IVAR___IISMetricStore_storageLock] = v21;
  *&v9[OBJC_IVAR___IISMetricStore_enrichmentProviders] = a5;
  *&v9[OBJC_IVAR___IISMetricStore_messageListeners] = a6;
  v22 = OBJC_IVAR___IISMetricStore_windowStartDate;
  v23 = sub_231CA7B38();
  v24 = *(v23 - 8);
  (*(v24 + 16))(&v9[v22], a7, v23);
  *&v9[OBJC_IVAR___IISMetricStore_configuration] = v16;
  *&v9[OBJC_IVAR___IISMetricStore_sendInterval] = a1;
  v28.receiver = v9;
  v28.super_class = ObjectType;
  v25 = objc_msgSendSuper2(&v28, sel_init);

  (*(v24 + 8))(a7, v23);
  return v25;
}

void sub_231C9FDF0()
{
  OUTLINED_FUNCTION_25();
  v67 = v0;
  v68 = v1;
  v69 = v2;
  v70 = sub_231CA7C48();
  v3 = OUTLINED_FUNCTION_1(v70);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3, v8);
  OUTLINED_FUNCTION_3_1();
  v11 = v10 - v9;
  v12 = sub_231CA7B38();
  v13 = OUTLINED_FUNCTION_1(v12);
  v66 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13, v17);
  OUTLINED_FUNCTION_8_0();
  v64 = v18 - v19;
  v22 = MEMORY[0x28223BE20](v20, v21);
  v24 = &v61 - v23;
  MEMORY[0x28223BE20](v22, v25);
  v27 = &v61 - v26;
  sub_231CA4EE8(0, &qword_2814C92F8, 0x277CF17F8);
  v28 = objc_opt_self();
  v29 = OUTLINED_FUNCTION_31();
  v30 = [v28 suggestionsSubdirectory_];

  v31 = sub_231CA7CC8();
  v33 = v32;

  v65 = sub_231C9F7C4(v31, v33, 102400);
  v34 = [objc_opt_self() defaultManager];
  if (qword_2814C9D30 != -1)
  {
    OUTLINED_FUNCTION_2_0();
  }

  v35 = sub_231CA7CB8();
  v36 = [v34 contentsAtPath_];

  if (v36)
  {
    sub_231CA7AA8();

    v37 = sub_231CA79B8();
    v38 = *(v37 + 48);
    v39 = *(v37 + 52);
    swift_allocObject();
    sub_231CA79A8();
    OUTLINED_FUNCTION_4_1();
    sub_231CA4F28(v40, v41);
    sub_231CA7998();
    v56 = OUTLINED_FUNCTION_32();
    sub_231C9ABEC(v56, v57);

    v58 = v66;
    (*(v66 + 32))(v27, v24, v12);
    v59 = v64;
  }

  else
  {
    sub_231CA03A4();
    v42 = swift_allocError();
    *v43 = 2;
    swift_willThrow();
    v44 = sub_231C9EB04();
    (*(v5 + 16))(v11, v44, v70);
    v45 = v42;
    v46 = sub_231CA7C28();
    v47 = sub_231CA7D48();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v62 = v11;
      v50 = v5;
      v51 = v49;
      v71[0] = v49;
      *v48 = 136315138;
      swift_getErrorValue();
      v52 = sub_231CA7FD8();
      v54 = sub_231C970D0(v52, v53, v71);
      v63 = v12;
      v55 = v54;

      *(v48 + 4) = v55;
      _os_log_impl(&dword_231C94000, v46, v47, "MetricStore: failed to decode start date from local file, setting start date of tomorrow UTC: %s", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v51);
      OUTLINED_FUNCTION_20_0();
      OUTLINED_FUNCTION_20_0();

      v12 = v63;
      (*(v50 + 8))(v62, v70);
    }

    else
    {

      (*(v5 + 8))(v11, v70);
    }

    v58 = v66;
    v59 = v64;
    sub_231CA7B28();
    sub_231C9F02C();
    (*(v58 + 8))(v59, v12);
    sub_231CA03F8();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD72F68, &unk_231CA9980);
  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_231CA9950;
  type metadata accessor for AppLaunchCounter();
  *(v60 + 32) = sub_231C970AC();
  (*(v58 + 16))(v59, v27, v12);
  v71[0] = *sub_231C9D5E4();
  objc_allocWithZone(v67);

  MetricStore.init(identifier:storeConfig:enrichmentProviders:messageListeners:windowStartDate:configuration:sendInterval:)(2419200.0, v68, v69, v65, v60, MEMORY[0x277D84F90], v59, v71);
  (*(v58 + 8))(v27, v12);
  OUTLINED_FUNCTION_24();
}

unint64_t sub_231CA03A4()
{
  result = qword_2814C92E0;
  if (!qword_2814C92E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814C92E0);
  }

  return result;
}

void sub_231CA03F8()
{
  OUTLINED_FUNCTION_25();
  v0 = sub_231CA7C48();
  v1 = OUTLINED_FUNCTION_1(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  OUTLINED_FUNCTION_3_1();
  v5 = sub_231CA7A88();
  v6 = OUTLINED_FUNCTION_1(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6, v11);
  OUTLINED_FUNCTION_3_1();
  v14 = v13 - v12;
  v15 = sub_231CA79E8();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  sub_231CA79D8();
  sub_231CA7B38();
  OUTLINED_FUNCTION_4_1();
  sub_231CA4F28(v18, v19);
  v20 = sub_231CA79C8();
  v22 = v21;
  if (qword_2814C9D30 != -1)
  {
    OUTLINED_FUNCTION_2_0();
  }

  sub_231CA7A48();
  sub_231CA7AB8();
  (*(v8 + 8))(v14, v5);
  sub_231C9ABEC(v20, v22);

  OUTLINED_FUNCTION_24();
}

uint64_t sub_231CA0750(uint64_t (*a1)(unint64_t, unint64_t))
{
  swift_getObjectType();
  v3 = a1(0xD00000000000001BLL, 0x8000000231CAA020);
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x30);
  v5 = *((*MEMORY[0x277D85000] & *v1) + 0x34);
  swift_deallocPartialClassInstance();
  return v3;
}

uint64_t MetricStore.saveMessage(_:backend:messageIdentifier:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  type metadata accessor for MetricMessage();
  v10 = sub_231C9A004(a1);

  v11 = sub_231C99C98(v10, a3, a4, a2);
  v12 = *(v5 + OBJC_IVAR___IISMetricStore_storageLock);
  OUTLINED_FUNCTION_0();
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  OUTLINED_FUNCTION_26();
  v14 = swift_allocObject();
  *(v14 + 16) = sub_231CA43EC;
  *(v14 + 24) = v13;
  v19[4] = sub_231CA449C;
  v19[5] = v14;
  OUTLINED_FUNCTION_10_0();
  v19[1] = 1107296256;
  OUTLINED_FUNCTION_1_2();
  v19[2] = v15;
  v19[3] = &block_descriptor_0;
  v16 = _Block_copy(v19);
  v17 = v11;

  [v12 runWithLockAcquired_];

  _Block_release(v16);
  LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

  if (v12)
  {
    __break(1u);
  }

  else
  {

    return a1;
  }

  return result;
}

unint64_t sub_231CA09CC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD72CC8, &unk_231CA8DB0);
    v2 = sub_231CA7EC8();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  while (v5)
  {
    v9 = v8;
LABEL_12:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = v10 | (v9 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    v15 = *(*(a1 + 56) + 8 * v11);
    sub_231CA4EE8(0, &qword_27DD72F18, 0x277D82BB8);

    v16 = v15;
    swift_dynamicCast();
    sub_231C97F34(&v26, v28);
    sub_231C97F34(v28, v29);
    sub_231C97F34(v29, &v27);
    result = sub_231C97640(v14, v13);
    v17 = result;
    if (v18)
    {
      v19 = (v2[6] + 16 * result);
      v20 = v19[1];
      *v19 = v14;
      v19[1] = v13;

      v21 = (v2[7] + 32 * v17);
      __swift_destroy_boxed_opaque_existential_0(v21);
      result = sub_231C97F34(&v27, v21);
      v8 = v9;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_19;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v22 = (v2[6] + 16 * result);
      *v22 = v14;
      v22[1] = v13;
      result = sub_231C97F34(&v27, (v2[7] + 32 * result));
      v23 = v2[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        goto LABEL_20;
      }

      v2[2] = v25;
      v8 = v9;
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

void sub_231CA0C2C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v2();
}

Swift::Void __swiftcall MetricStore.removeAllMetrics(withPrefix:)(Swift::String withPrefix)
{
  object = withPrefix._object;
  countAndFlagsBits = withPrefix._countAndFlagsBits;
  v4 = *(v1 + OBJC_IVAR___IISMetricStore_storageLock);
  OUTLINED_FUNCTION_26();
  v5 = swift_allocObject();
  *(v5 + 16) = countAndFlagsBits;
  *(v5 + 24) = object;
  OUTLINED_FUNCTION_26();
  v6 = swift_allocObject();
  *(v6 + 16) = sub_231CA44DC;
  *(v6 + 24) = v5;
  v9[4] = sub_231CA5088;
  v9[5] = v6;
  OUTLINED_FUNCTION_10_0();
  v9[1] = 1107296256;
  OUTLINED_FUNCTION_1_2();
  v9[2] = v7;
  v9[3] = &block_descriptor_13_0;
  v8 = _Block_copy(v9);

  [v4 runWithLockAcquired_];
  _Block_release(v8);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }
}

uint64_t MetricStore.registerEnrichmentProvider(_:)()
{
  v1 = OBJC_IVAR___IISMetricStore_enrichmentProviders;
  OUTLINED_FUNCTION_27();
  v2 = swift_unknownObjectRetain();
  MEMORY[0x238379D90](v2);
  sub_231CA422C(*((*(v0 + v1) & 0xFFFFFFFFFFFFFF8) + 0x10));
  OUTLINED_FUNCTION_16_0();
  sub_231CA7D38();
  return swift_endAccess();
}

uint64_t MetricStore.registerMessageListener(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  OUTLINED_FUNCTION_26();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = OBJC_IVAR___IISMetricStore_messageListeners;
  OUTLINED_FUNCTION_27();

  sub_231CA41E0();
  v8 = *(*(v3 + v7) + 16);
  sub_231CA4258(v8);
  v9 = *(v3 + v7);
  *(v9 + 16) = v8 + 1;
  v10 = v9 + 16 * v8;
  *(v10 + 32) = sub_231CA454C;
  *(v10 + 40) = v6;
  *(v3 + v7) = v9;
  return swift_endAccess();
}

uint64_t sub_231CA1140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_231CA7CB8();
  v6 = sub_231CA7C58();
  v7 = (*(a4 + 16))(a4, v5, v6);

  return v7;
}

void MetricStore.sendMessages(shouldContinue:)()
{
  OUTLINED_FUNCTION_38();
  v2 = v1;
  v4 = v3;
  v79 = sub_231CA7B38();
  v5 = OUTLINED_FUNCTION_1(v79);
  v77 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5, v9);
  OUTLINED_FUNCTION_8_0();
  v76 = v10 - v11;
  MEMORY[0x28223BE20](v12, v13);
  v78 = &v74 - v14;
  v15 = sub_231CA7C48();
  v16 = OUTLINED_FUNCTION_1(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16, v21);
  OUTLINED_FUNCTION_8_0();
  v24 = v22 - v23;
  v27 = MEMORY[0x28223BE20](v25, v26);
  v29 = &v74 - v28;
  v31 = MEMORY[0x28223BE20](v27, v30);
  v33 = &v74 - v32;
  MEMORY[0x28223BE20](v31, v34);
  v36 = &v74 - v35;
  OUTLINED_FUNCTION_32();
  sub_231CA1728();
  if (v37)
  {
    v38 = sub_231CA1FA4(v37);

    if (v4(v39))
    {
      v75 = v18;
      v40 = sub_231CA2570(v38, v4, v2);

      if (v40)
      {
        sub_231CA2850();
        v42 = v41;

        if (v42)
        {
          sub_231CA2EC8(v42);

          v43 = OBJC_IVAR___IISMetricStore_windowStartDate;
          OUTLINED_FUNCTION_23();
          v44 = v76;
          v45 = v77;
          v75 = *(v77 + 16);
          v46 = v79;
          (v75)(v76, v0 + v43, v79);
          v47 = *(v0 + OBJC_IVAR___IISMetricStore_sendInterval);
          v48 = v78;
          sub_231CA7AE8();
          v49 = *(v45 + 8);
          v49(v44, v46);
          sub_231CA3138(v48);
          v49(v48, v46);
          (v75)(v44, v0 + v43, v46);
          sub_231CA7AE8();
          v49(v44, v46);
          OUTLINED_FUNCTION_27();
          (*(v45 + 40))(v0 + v43, v48, v46);
          swift_endAccess();
          (v75)(v48, v0 + v43, v46);
          sub_231CA03F8();
          v49(v48, v46);
        }

        else
        {
          v67 = sub_231C9EB04();
          v68 = v75;
          (*(v75 + 16))(v33, v67, v15);
          v69 = sub_231CA7C28();
          v70 = sub_231CA7D58();
          if (OUTLINED_FUNCTION_11_0(v70))
          {
            v71 = OUTLINED_FUNCTION_28();
            OUTLINED_FUNCTION_30(v71);
            OUTLINED_FUNCTION_7_0(&dword_231C94000, v72, v73, "MetricStore: deferring post-enrichment.");
            OUTLINED_FUNCTION_14_0();
          }

          (*(v68 + 8))(v33, v15);
        }
      }

      else
      {
        sub_231C9EB04();
        v59 = v75;
        v60 = OUTLINED_FUNCTION_33();
        v61(v60);
        v62 = sub_231CA7C28();
        v63 = sub_231CA7D58();
        if (OUTLINED_FUNCTION_11_0(v63))
        {
          v64 = OUTLINED_FUNCTION_28();
          OUTLINED_FUNCTION_30(v64);
          OUTLINED_FUNCTION_7_0(&dword_231C94000, v65, v66, "MetricStore: deferring after generation of missing messages.");
          OUTLINED_FUNCTION_14_0();
        }

        (*(v59 + 8))(v29, v15);
      }
    }

    else
    {

      sub_231C9EB04();
      OUTLINED_FUNCTION_22();
      v55(v36);
      v56 = sub_231CA7C28();
      v57 = sub_231CA7D58();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = OUTLINED_FUNCTION_28();
        *v58 = 0;
        _os_log_impl(&dword_231C94000, v56, v57, "MetricStore: deferring after grouping of messages.", v58, 2u);
        OUTLINED_FUNCTION_20_0();
      }

      (*(v18 + 8))(v36, v15);
    }
  }

  else
  {
    sub_231C9EB04();
    OUTLINED_FUNCTION_22();
    v50(v24);
    v51 = sub_231CA7C28();
    v52 = sub_231CA7D58();
    if (OUTLINED_FUNCTION_11_0(v52))
    {
      *OUTLINED_FUNCTION_28() = 0;
      OUTLINED_FUNCTION_40(&dword_231C94000, v53, v54, "MetricStore: deferring sending of messages fetching messages.");
      OUTLINED_FUNCTION_20_0();
    }

    (*(v18 + 8))(v24, v15);
  }

  OUTLINED_FUNCTION_39();
}

void sub_231CA1728()
{
  OUTLINED_FUNCTION_25();
  v2 = v1;
  v4 = v3;
  v5 = sub_231CA7C48();
  v6 = OUTLINED_FUNCTION_1(v5);
  v109 = v7;
  v111 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6, v10);
  OUTLINED_FUNCTION_3_1();
  v107 = v12 - v11;
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  OUTLINED_FUNCTION_0();
  v14 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD72CE0, &qword_231CA8DC8);
  *(v14 + 16) = sub_231CA7C88();
  v105 = v14 + 16;
  OUTLINED_FUNCTION_0();
  v15 = swift_allocObject();
  type metadata accessor for MetricMessage();
  *(v15 + 16) = sub_231CA7C88();
  v113 = v15 + 16;
  v16 = *&v0[OBJC_IVAR___IISMetricStore_storageLock];
  v17 = swift_allocObject();
  v17[2] = v0;
  v17[3] = v13;
  v17[4] = v4;
  v17[5] = v2;
  v17[6] = v14;
  v17[7] = v15;
  OUTLINED_FUNCTION_26();
  v18 = swift_allocObject();
  *(v18 + 16) = sub_231CA4590;
  *(v18 + 24) = v17;
  v116[4] = sub_231CA5088;
  v116[5] = v18;
  v116[0] = MEMORY[0x277D85DD0];
  v116[1] = 1107296256;
  OUTLINED_FUNCTION_1_2();
  v116[2] = v19;
  v116[3] = &block_descriptor_35;
  v20 = _Block_copy(v116);
  v21 = v0;

  [v16 runWithLockAcquired_];
  _Block_release(v20);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    if ((v4(v23) & 1) == 0 || (OUTLINED_FUNCTION_23(), *(v13 + 16) == 1))
    {
      sub_231C9EB04();
      OUTLINED_FUNCTION_22();
      v24(v107);
      v25 = sub_231CA7C28();
      v26 = sub_231CA7D58();
      if (OUTLINED_FUNCTION_11_0(v26))
      {
        v27 = OUTLINED_FUNCTION_28();
        OUTLINED_FUNCTION_30(v27);
        OUTLINED_FUNCTION_7_0(&dword_231C94000, v28, v29, "MetricStore: deferring fetching of grouped messages.");
        OUTLINED_FUNCTION_14_0();
      }

      (*(v109 + 8))(v107, v111);

      v30 = 0;
LABEL_41:
      sub_231CA45A0(v30);
      OUTLINED_FUNCTION_24();
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD72F78, &qword_231CA9990);
    v102 = sub_231CA7C88();
    OUTLINED_FUNCTION_23();
    v32 = *(*v105 + 64);
    v31 = *v105 + 64;
    v33 = *(*v105 + 32);
    OUTLINED_FUNCTION_21();
    v36 = v35 & v34;
    v38 = (v37 + 63) >> 6;
    v108 = v39;

    v100 = 0;
    v40 = 0;
    v106 = v31;
    v104 = v38;
    if (!v36)
    {
      goto LABEL_9;
    }

LABEL_8:
    v41 = v40;
LABEL_12:
    v42 = __clz(__rbit64(v36));
    v36 &= v36 - 1;
    v43 = v42 | (v41 << 6);
    v44 = (*(v108 + 48) + 16 * v43);
    v45 = *(*(v108 + 56) + 8 * v43);
    v46 = v44[1];
    v103 = *v44;
    v48 = v45 + 64;
    v47 = *(v45 + 64);
    v49 = *(v45 + 32);
    OUTLINED_FUNCTION_21();
    v52 = v51 & v50;
    v54 = (v53 + 63) >> 6;
    v110 = v55;

    v114 = v45;

    v56 = 0;
    while (1)
    {
      while (1)
      {
        if (!v52)
        {
          while (1)
          {
            v57 = v56 + 1;
            if (__OFADD__(v56, 1))
            {
              __break(1u);
              goto LABEL_43;
            }

            if (v57 >= v54)
            {
              break;
            }

            v52 = *(v48 + 8 * v57);
            ++v56;
            if (v52)
            {
              v56 = v57;
              goto LABEL_18;
            }
          }

          v40 = v41;
          v31 = v106;
          v38 = v104;
          if (v36)
          {
            goto LABEL_8;
          }

LABEL_9:
          while (1)
          {
            v41 = v40 + 1;
            if (__OFADD__(v40, 1))
            {
              break;
            }

            if (v41 >= v38)
            {

              v30 = v100;
              goto LABEL_41;
            }

            v36 = *(v31 + 8 * v41);
            ++v40;
            if (v36)
            {
              goto LABEL_12;
            }
          }

LABEL_43:
          __break(1u);
          goto LABEL_44;
        }

LABEL_18:
        v58 = __clz(__rbit64(v52));
        v52 &= v52 - 1;
        v59 = v58 | (v56 << 6);
        v60 = (*(v114 + 48) + 16 * v59);
        v62 = *v60;
        v61 = v60[1];
        v112 = *(*(v114 + 56) + 8 * v59);
        swift_beginAccess();
        v63 = *v113;
        v64 = *(*v113 + 16);

        if (v64)
        {
          v65 = sub_231C97640(v62, v61);
          if (v66)
          {
            break;
          }
        }

        swift_endAccess();
      }

      v67 = *(*(v63 + 56) + 8 * v65);
      swift_endAccess();
      v99 = v67;

      sub_231CA45A0(v100);
      swift_isUniquelyReferenced_nonNull_native();
      v115 = v102;
      v101 = sub_231C97640(v103, v110);
      OUTLINED_FUNCTION_6_0();
      if (__OFADD__(v69, v70))
      {
        goto LABEL_45;
      }

      v71 = v68;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD72F80, &qword_231CA9998);
      v72 = sub_231CA7E68();
      v102 = v115;
      if (v72)
      {
        v73 = sub_231C97640(v103, v110);
        if ((v71 & 1) != (v74 & 1))
        {
          goto LABEL_49;
        }

        v75 = v73;
        if (v71)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v75 = v101;
        if (v71)
        {
          goto LABEL_29;
        }
      }

      sub_231CA3F90(&v115);
      v76 = v115;
      v102[(v75 >> 6) + 8] |= 1 << v75;
      v77 = (v102[6] + 16 * v75);
      *v77 = v103;
      v77[1] = v110;
      *(v102[7] + 8 * v75) = v76;
      v78 = v102[2];
      v79 = __OFADD__(v78, 1);
      v80 = v78 + 1;
      if (v79)
      {
        goto LABEL_47;
      }

      v102[2] = v80;

LABEL_29:
      v81 = v102[7];
      v82 = *(v81 + 8 * v75);
      swift_isUniquelyReferenced_nonNull_native();
      v115 = *(v81 + 8 * v75);
      *(v81 + 8 * v75) = 0x8000000000000000;
      sub_231CA45B0(v99);
      OUTLINED_FUNCTION_6_0();
      if (__OFADD__(v85, v86))
      {
        goto LABEL_46;
      }

      v87 = v83;
      v88 = v84;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD72F88, &unk_231CA99A0);
      if (sub_231CA7E68())
      {
        v89 = sub_231CA45B0(v99);
        if ((v88 & 1) != (v90 & 1))
        {
          goto LABEL_49;
        }

        v87 = v89;
      }

      v91 = v115;
      if (v88)
      {
        *(v115[7] + 8 * v87) = v112;
        OUTLINED_FUNCTION_36();
        v94 = v99;
      }

      else
      {
        OUTLINED_FUNCTION_18_0(&v115[v87 >> 6]);
        v94 = v99;
        *(v91[6] + 8 * v87) = v99;
        *(v91[7] + 8 * v87) = v112;
        v95 = v91[2];
        v79 = __OFADD__(v95, 1);
        v96 = v95 + 1;
        if (v79)
        {
          goto LABEL_48;
        }

        v91[2] = v96;
        v97 = v99;
        OUTLINED_FUNCTION_36();
      }

      v98 = *(v93 + 8 * v92);
      *(v93 + 8 * v92) = v91;

      v100 = sub_231CA3F90;
    }
  }

LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  sub_231CA7FC8();
  __break(1u);
}

uint64_t sub_231CA1FA4(uint64_t a1)
{
  v1 = a1;
  v2 = 0x756F43746E657665;
  v4 = a1 + 64;
  v3 = *(a1 + 64);
  OUTLINED_FUNCTION_17_0(a1);
  v7 = v6 & v5;
  v9 = (v8 + 63) >> 6;

  v11 = 0;
  v74 = MEMORY[0x277D84F98];
  v69 = v4;
  v70 = v10;
  v71 = v9;
  if (v7)
  {
    while (1)
    {
      v12 = v11;
LABEL_6:
      v72 = v12;
      v73 = v7;
      v13 = __clz(__rbit64(v7)) | (v12 << 6);
      v14 = (*(v1 + 48) + 16 * v13);
      v15 = *(*(v1 + 56) + 8 * v13);
      v16 = *(v15 + 16);
      v79 = v15;
      v80 = *v14;
      v81 = v14[1];
      if (v16)
      {
        break;
      }

      v53 = v14[1];

      v52 = v74;

      v51 = MEMORY[0x277D84F90];
LABEL_34:
      swift_isUniquelyReferenced_nonNull_native();
      *&v86 = v52;
      sub_231C97640(v80, v53);
      OUTLINED_FUNCTION_6_0();
      if (__OFADD__(v56, v57))
      {
        goto LABEL_54;
      }

      v58 = v54;
      v59 = v55;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD72F90, &qword_231CA99B0);
      if (sub_231CA7E68())
      {
        v60 = sub_231C97640(v80, v81);
        if ((v59 & 1) != (v61 & 1))
        {
          goto LABEL_56;
        }

        v58 = v60;
      }

      v7 = (v73 - 1) & v73;
      v62 = v86;
      if (v59)
      {
        v63 = *(v86 + 56);
        v64 = *(v63 + 8 * v58);
        *(v63 + 8 * v58) = v51;

        v7 = (v73 - 1) & v73;
      }

      else
      {
        OUTLINED_FUNCTION_18_0(v86 + 8 * (v58 >> 6));
        v65 = (v62[6] + 16 * v58);
        *v65 = v80;
        v65[1] = v81;
        *(v62[7] + 8 * v58) = v51;

        v66 = v62[2];
        v39 = __OFADD__(v66, 1);
        v67 = v66 + 1;
        if (v39)
        {
          goto LABEL_55;
        }

        v62[2] = v67;
      }

      v9 = v71;
      v11 = v72;
      v74 = v62;
      if (!v7)
      {
        goto LABEL_3;
      }
    }

    v88 = MEMORY[0x277D84F90];

    sub_231CA7E28();
    v19 = sub_231CA49C4(v15);
    v20 = 0;
    v21 = v15 + 64;
    v76 = v17;
    v77 = v16;
    v75 = v15 + 72;
    v78 = v15 + 64;
    while ((v19 & 0x8000000000000000) == 0 && v19 < 1 << *(v15 + 32))
    {
      v22 = v19 >> 6;
      if ((*(v21 + 8 * (v19 >> 6)) & (1 << v19)) == 0)
      {
        goto LABEL_46;
      }

      if (*(v15 + 36) != v17)
      {
        goto LABEL_47;
      }

      v83 = v20;
      v84 = v17;
      v82 = v18;
      v23 = *(*(v15 + 48) + 8 * v19);
      v24 = *(*(v15 + 56) + 8 * v19);
      v25 = *&v23[OBJC_IVAR____TtC24PersonalIntelligenceCore13MetricMessage_messageContents];
      v87 = MEMORY[0x277D83E88];
      *&v86 = v24;
      sub_231C97F34(&v86, v85);
      v26 = v23;

      swift_isUniquelyReferenced_nonNull_native();
      sub_231C97640(v2, 0xEA0000000000746ELL);
      OUTLINED_FUNCTION_6_0();
      if (__OFADD__(v29, v30))
      {
        goto LABEL_48;
      }

      v31 = v27;
      v32 = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD72CC0, &qword_231CA8DA8);
      if (sub_231CA7E68())
      {
        v33 = v2;
        v34 = sub_231C97640(v2, 0xEA0000000000746ELL);
        if ((v32 & 1) != (v35 & 1))
        {
          goto LABEL_56;
        }

        v31 = v34;
      }

      else
      {
        v33 = v2;
      }

      v15 = v79;
      if (v32)
      {
        v36 = (v25[7] + 32 * v31);
        __swift_destroy_boxed_opaque_existential_0(v36);
        sub_231C97F34(v85, v36);
      }

      else
      {
        OUTLINED_FUNCTION_18_0(&v25[v31 >> 6]);
        v37 = (v25[6] + 16 * v31);
        *v37 = v33;
        v37[1] = 0xEA0000000000746ELL;
        sub_231C97F34(v85, (v25[7] + 32 * v31));
        v38 = v25[2];
        v39 = __OFADD__(v38, 1);
        v40 = v38 + 1;
        if (v39)
        {
          goto LABEL_52;
        }

        v25[2] = v40;
      }

      type metadata accessor for MetricMessage();
      v41 = v26[OBJC_IVAR____TtC24PersonalIntelligenceCore13MetricMessage_backend];

      sub_231C99C98(v25, v80, v81, v41);

      sub_231CA7E08();
      v42 = *(v88 + 16);
      sub_231CA7E38();
      OUTLINED_FUNCTION_16_0();
      sub_231CA7E48();
      sub_231CA7E18();
      v43 = 1 << *(v79 + 32);
      if (v19 >= v43)
      {
        goto LABEL_49;
      }

      v21 = v78;
      v44 = *(v78 + 8 * v22);
      if ((v44 & (1 << v19)) == 0)
      {
        goto LABEL_50;
      }

      if (*(v79 + 36) != v84)
      {
        goto LABEL_51;
      }

      v45 = v44 & (-2 << (v19 & 0x3F));
      if (v45)
      {
        v43 = __clz(__rbit64(v45)) | v19 & 0x7FFFFFFFFFFFFFC0;
        v2 = v33;
      }

      else
      {
        v46 = v22 << 6;
        v47 = v22 + 1;
        v48 = (v75 + 8 * v22);
        v2 = v33;
        while (v47 < (v43 + 63) >> 6)
        {
          v50 = *v48++;
          v49 = v50;
          v46 += 64;
          ++v47;
          if (v50)
          {
            sub_231CA4A04(v19, v84, v82 & 1);
            v43 = __clz(__rbit64(v49)) + v46;
            goto LABEL_31;
          }
        }

        sub_231CA4A04(v19, v84, v82 & 1);
      }

LABEL_31:
      v18 = 0;
      v20 = v83 + 1;
      v19 = v43;
      v17 = v76;
      if (v83 + 1 == v77)
      {
        v51 = v88;
        v4 = v69;
        v1 = v70;
        v52 = v74;
        v53 = v81;
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
  }

  else
  {
LABEL_3:
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v9)
      {

        return v74;
      }

      v7 = *(v4 + 8 * v12);
      ++v11;
      if (v7)
      {
        goto LABEL_6;
      }
    }
  }

  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  result = sub_231CA7FC8();
  __break(1u);
  return result;
}

uint64_t sub_231CA2570(void *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  v7 = *(v3 + OBJC_IVAR___IISMetricStore_configuration);
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  v9 = *(v8 + 16);

  v10 = 0;
  v11 = v8 + 40;
  while (2)
  {
    for (i = (v11 + 16 * v10); ; i += 2)
    {
      if (v9 == v10)
      {

        return a1;
      }

      if (v10 >= *(v8 + 16))
      {
        __break(1u);
        goto LABEL_25;
      }

      v14 = *(i - 1);
      v13 = *i;

      if ((a2(v15) & 1) == 0)
      {

        return 0;
      }

      if (!a1[2])
      {
        break;
      }

      sub_231C97640(v14, v13);
      if ((v16 & 1) == 0)
      {
        break;
      }

      ++v10;
    }

    v32 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD72F68, &unk_231CA9980);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_231CA9950;
    type metadata accessor for MetricMessage();
    v18 = sub_231CA7C88();

    v33 = v17;
    *(v17 + 32) = sub_231C99C98(v18, v14, v13, 0);
    swift_isUniquelyReferenced_nonNull_native();
    v19 = sub_231C97640(v14, v13);
    if (__OFADD__(a1[2], (v20 & 1) == 0))
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v21 = v19;
    v22 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD72F90, &qword_231CA99B0);
    if ((sub_231CA7E68() & 1) == 0)
    {
      goto LABEL_16;
    }

    v23 = sub_231C97640(v14, v13);
    if ((v22 & 1) == (v24 & 1))
    {
      v21 = v23;
LABEL_16:
      ++v10;
      if (v22)
      {
        v25 = a1[7];
        v26 = *(v25 + 8 * v21);
        *(v25 + 8 * v21) = v33;

LABEL_20:
        a3 = v32;
        v11 = v8 + 40;
        continue;
      }

      OUTLINED_FUNCTION_18_0(&a1[v21 >> 6]);
      v27 = (a1[6] + 16 * v21);
      *v27 = v14;
      v27[1] = v13;
      *(a1[7] + 8 * v21) = v33;
      v28 = a1[2];
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (!v29)
      {
        a1[2] = v30;
        goto LABEL_20;
      }

LABEL_26:
      __break(1u);
    }

    break;
  }

  result = sub_231CA7FC8();
  __break(1u);
  return result;
}

void sub_231CA2850()
{
  OUTLINED_FUNCTION_25();
  v93 = v1;
  v94 = v2;
  v4 = v3;
  v5 = sub_231CA7C48();
  v6 = OUTLINED_FUNCTION_1(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6, v11);
  OUTLINED_FUNCTION_8_0();
  v14 = v12 - v13;
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v73 - v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD72F98, &qword_231CA99B8);
  v19 = sub_231CA7C88();
  v20 = *(v4 + 64);
  v88 = v4 + 64;
  v21 = 1 << *(v4 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v20;
  v24 = OBJC_IVAR___IISMetricStore_enrichmentProviders;

  v83 = v0;
  v82 = v24;
  OUTLINED_FUNCTION_23();
  v25 = 0;
  v26 = (v21 + 63) >> 6;
  v76 = v26;
  v78 = v5;
  v77 = v8;
  v84 = v4;
  v75 = v14;
  v74 = v18;
LABEL_4:
  if (v23)
  {
    v87 = v19;
    v27 = v25;
    goto LABEL_10;
  }

  do
  {
    v27 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
LABEL_42:
      __break(1u);
      return;
    }

    if (v27 >= v26)
    {

      goto LABEL_35;
    }

    v23 = *(v88 + 8 * v27);
    ++v25;
  }

  while (!v23);
  v87 = v19;
LABEL_10:
  v81 = v27;
  v28 = __clz(__rbit64(v23)) | (v27 << 6);
  v29 = *(v4 + 56);
  v30 = (*(v4 + 48) + 16 * v28);
  v31 = v30[1];
  v80 = *v30;
  v32 = *(v29 + 8 * v28);
  v86 = v31;

  if (v93(v33))
  {
    v79 = (v23 - 1) & v23;
    v34 = *(v83 + v82);
    v35 = sub_231CA4298(v34);
    v91 = v34 & 0xC000000000000001;
    v92 = v35;
    v89 = v34 + 32;
    v90 = v34 & 0xFFFFFFFFFFFFFF8;
    v85 = v34;

    v36 = 0;
    while (1)
    {
      if (v36 == v92)
      {

        v55 = v87;
        swift_isUniquelyReferenced_nonNull_native();
        v100 = v55;
        sub_231CA474C(v32, v80, v86);

        v19 = v100;
        v25 = v81;
        v4 = v84;
        v23 = v79;
        v26 = v76;
        goto LABEL_4;
      }

      if (v91)
      {
        v37 = MEMORY[0x238379E60](v36, v85);
        v99 = v37;
      }

      else
      {
        if (v36 >= *(v90 + 16))
        {
          goto LABEL_40;
        }

        v99 = *(v89 + 8 * v36);
        v37 = swift_unknownObjectRetain();
      }

      if (__OFADD__(v36++, 1))
      {
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      if ((v93(v37) & 1) == 0)
      {

        sub_231C9EB04();
        v56 = v77;
        OUTLINED_FUNCTION_22();
        v57 = v75;
        v58 = v78;
        v59(v75);
        v60 = sub_231CA7C28();
        v61 = sub_231CA7D58();
        if (OUTLINED_FUNCTION_11_0(v61))
        {
          *OUTLINED_FUNCTION_28() = 0;
          OUTLINED_FUNCTION_40(&dword_231C94000, v62, v63, "MetricStore: deferring enrichment of messages.");
          OUTLINED_FUNCTION_20_0();
        }

        swift_unknownObjectRelease();

        (*(v56 + 8))(v57, v58);
        goto LABEL_35;
      }

      if (v32 >> 62)
      {
        v39 = sub_231CA7E98();
        if (!v39)
        {
          goto LABEL_29;
        }

LABEL_20:
        v100 = MEMORY[0x277D84F90];
        sub_231CA7E28();
        if (v39 < 0)
        {
          goto LABEL_41;
        }

        v95 = v36;
        v40 = type metadata accessor for MetricMessage();
        v41 = 0;
        v96 = v32 & 0xC000000000000001;
        v97 = v40;
        v98 = v32;
        do
        {
          if (v96)
          {
            v42 = MEMORY[0x238379E60](v41, v32);
          }

          else
          {
            v42 = *(v32 + 8 * v41 + 32);
          }

          v43 = v42;
          ++v41;
          v44 = *&v42[OBJC_IVAR____TtC24PersonalIntelligenceCore13MetricMessage_messageContents];
          v45 = sub_231CA7C58();
          v46 = &v43[OBJC_IVAR____TtC24PersonalIntelligenceCore13MetricMessage_messageIdentifier];
          v47 = *&v43[OBJC_IVAR____TtC24PersonalIntelligenceCore13MetricMessage_messageIdentifier];
          v48 = *&v43[OBJC_IVAR____TtC24PersonalIntelligenceCore13MetricMessage_messageIdentifier + 8];
          v49 = sub_231CA7CB8();
          v50 = [v99 enrichMessage:v45 messageName:v49];

          v51 = sub_231CA7C68();
          v52 = *v46;
          v53 = v46[1];
          LOBYTE(v46) = v43[OBJC_IVAR____TtC24PersonalIntelligenceCore13MetricMessage_backend];

          sub_231C99C98(v51, v52, v53, v46);

          sub_231CA7E08();
          v54 = *(v100 + 16);
          sub_231CA7E38();
          sub_231CA7E48();
          sub_231CA7E18();
          v32 = v98;
        }

        while (v39 != v41);
        swift_unknownObjectRelease();

        v32 = v100;
        v36 = v95;
      }

      else
      {
        v39 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v39)
        {
          goto LABEL_20;
        }

LABEL_29:
        swift_unknownObjectRelease();

        v32 = MEMORY[0x277D84F90];
      }
    }
  }

  sub_231C9EB04();
  v64 = v77;
  OUTLINED_FUNCTION_22();
  v65 = v74;
  v66 = v78;
  v67(v74);
  v68 = sub_231CA7C28();
  v69 = sub_231CA7D58();
  if (OUTLINED_FUNCTION_11_0(v69))
  {
    v70 = OUTLINED_FUNCTION_28();
    OUTLINED_FUNCTION_30(v70);
    OUTLINED_FUNCTION_7_0(&dword_231C94000, v71, v72, "MetricStore: deferring enrichment of messages.");
    OUTLINED_FUNCTION_14_0();
  }

  (*(v64 + 8))(v65, v66);
LABEL_35:
  OUTLINED_FUNCTION_24();
}

void sub_231CA2EC8(uint64_t a1)
{
  v3 = a1 + 64;
  v2 = *(a1 + 64);
  v4 = OUTLINED_FUNCTION_17_0(a1);
  v7 = v6 & v5;
  v41 = OBJC_IVAR___IISMetricStore_messageListeners;
  v42 = v1;
  v9 = (v8 + 63) >> 6;
  v33 = v4;

  v10 = 0;
  v31 = v9;
  v32 = v3;
  if (v7)
  {
LABEL_2:
    v11 = v10;
LABEL_6:
    v34 = v11;
    v35 = (v7 - 1) & v7;
    v12 = __clz(__rbit64(v7)) | (v11 << 6);
    v13 = (*(v33 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    v16 = *(*(v33 + 56) + 8 * v12);
    v17 = sub_231CA4298(v16);

    OUTLINED_FUNCTION_23();
    v18 = 0;
    v19 = v16 & 0xC000000000000001;
    v20 = v16 & 0xFFFFFFFFFFFFFF8;
    v36 = v16;
    v21 = v16 + 32;
    v38 = v19;
    v39 = v17;
    v40 = v20;
    v37 = v21;
    while (1)
    {
      if (v18 == v17)
      {

        v10 = v34;
        v7 = v35;
        v9 = v31;
        v3 = v32;
        if (!v35)
        {
          goto LABEL_3;
        }

        goto LABEL_2;
      }

      if (v19)
      {
        v22 = MEMORY[0x238379E60](v18, v36);
      }

      else
      {
        if (v18 >= *(v20 + 16))
        {
          goto LABEL_24;
        }

        v22 = *(v21 + 8 * v18);
      }

      v23 = v22;
      if (__OFADD__(v18++, 1))
      {
        break;
      }

      if (v22[OBJC_IVAR____TtC24PersonalIntelligenceCore13MetricMessage_backend])
      {
      }

      else
      {
        v25 = sub_231C9E008(v15, v14, *&v22[OBJC_IVAR____TtC24PersonalIntelligenceCore13MetricMessage_messageContents]);
        v26 = *(*(v42 + v41) + 16);
        if (v26)
        {
          v27 = ( + 40);
          do
          {
            v28 = *(v27 - 1);
            v29 = *v27;

            v30 = sub_231CA09CC(v25);
            v45[0] = v15;
            v45[1] = v14;
            v44 = v30;
            v28(&v43, v45, &v44);

            v27 += 2;
            --v26;
          }

          while (v26);

          v19 = v38;
          v17 = v39;
          v20 = v40;
          v21 = v37;
        }

        else
        {

          v20 = v40;
        }
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  else
  {
LABEL_3:
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v9)
      {

        return;
      }

      v7 = *(v3 + 8 * v11);
      ++v10;
      if (v7)
      {
        goto LABEL_6;
      }
    }
  }

  __break(1u);
}

uint64_t sub_231CA3138(uint64_t a1)
{
  v3 = sub_231CA7B38();
  v4 = OUTLINED_FUNCTION_1(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4, v9);
  v10 = *(v1 + OBJC_IVAR___IISMetricStore_storageLock);
  (*(v6 + 16))(aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  v11 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v12 = swift_allocObject();
  (*(v6 + 32))(v12 + v11, aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  OUTLINED_FUNCTION_26();
  v13 = swift_allocObject();
  *(v13 + 16) = sub_231CA4A10;
  *(v13 + 24) = v12;
  aBlock[4] = sub_231CA5088;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  OUTLINED_FUNCTION_1_2();
  aBlock[2] = v14;
  aBlock[3] = &block_descriptor_45;
  v15 = _Block_copy(aBlock);

  [v10 runWithLockAcquired_];
  _Block_release(v15);
  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
  }

  return result;
}

Swift::Bool __swiftcall MetricStore.shouldSendMessages()()
{
  v1 = sub_231CA7B38();
  v2 = OUTLINED_FUNCTION_1(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2, v7);
  OUTLINED_FUNCTION_8_0();
  v10 = (v8 - v9);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v23 - v13;
  v15 = -*(v0 + OBJC_IVAR___IISMetricStore_sendInterval);
  sub_231CA7B08();
  v16 = OBJC_IVAR___IISMetricStore_windowStartDate;
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_22();
  v17(v10, v0 + v16, v1);
  OUTLINED_FUNCTION_4_1();
  sub_231CA4F28(v18, v19);
  v20 = sub_231CA7C98();
  v21 = *(v4 + 8);
  v21(v10, v1);
  v21(v14, v1);
  return (v20 & 1) == 0;
}

void sub_231CA3568()
{
  OUTLINED_FUNCTION_38();
  v38 = v0;
  v39 = v1;
  v36 = v2;
  v37 = v3;
  v5 = v4;
  v35 = v6;
  v7 = sub_231CA7B38();
  v8 = OUTLINED_FUNCTION_1(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8, v13);
  OUTLINED_FUNCTION_3_1();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD72FB0, &qword_231CA9AD8);
  OUTLINED_FUNCTION_1(v17);
  v19 = v18;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_19();
  MEMORY[0x28223BE20](v22, v23);
  v25 = &v35 - v24;
  v26 = OBJC_IVAR___IISMetricStore_windowStartDate;
  OUTLINED_FUNCTION_23();
  (*(v10 + 16))(v16, &v5[v26], v7);
  sub_231CA7AD8();
  (*(v10 + 8))(v16, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD72F58, &qword_231CA9978);
  OUTLINED_FUNCTION_9_0();
  sub_231CA4F88(v27, v28, &qword_231CA9978);
  sub_231CA7BF8();
  v29 = swift_allocObject();
  v30 = v36;
  v31 = v37;
  v29[2] = v5;
  v29[3] = v30;
  v33 = v38;
  v32 = v39;
  v29[4] = v31;
  v29[5] = v33;
  v29[6] = v32;
  sub_231CA4F88(&qword_27DD72FB8, &qword_27DD72FB0, &qword_231CA9AD8);

  v34 = v5;

  (*(v19 + 8))(v25, v17);
  OUTLINED_FUNCTION_39();
}

void sub_231CA3820()
{
  OUTLINED_FUNCTION_25();
  v1 = v0;
  v3 = v2;
  v4 = sub_231CA7C48();
  v5 = OUTLINED_FUNCTION_1(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5, v10);
  OUTLINED_FUNCTION_3_1();
  if ([v3 state] == 1)
  {
    sub_231C9EB04();
    v11 = OUTLINED_FUNCTION_37();
    v12(v11);
    v13 = v3;
    v14 = sub_231CA7C28();
    v15 = sub_231CA7D48();

    if (os_log_type_enabled(v14, v15))
    {
      v30 = v1;
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v31 = v17;
      *v16 = 136315138;
      v18 = [v13 error];
      if (v18)
      {
        v19 = v18;
        swift_getErrorValue();
        v20 = sub_231CA7FD8();
        v22 = v21;
      }

      else
      {
        v20 = 0;
        v22 = 0xE000000000000000;
      }

      v26 = sub_231C970D0(v20, v22, &v31);

      *(v16 + 4) = v26;
      _os_log_impl(&dword_231C94000, v14, v15, "MetricStore: failed to completely read Biome stream: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      OUTLINED_FUNCTION_20_0();
      OUTLINED_FUNCTION_20_0();

      v27 = *(v7 + 8);
      v28 = OUTLINED_FUNCTION_16_0();
      v29(v28);
      v1 = v30;
    }

    else
    {

      v23 = *(v7 + 8);
      v24 = OUTLINED_FUNCTION_16_0();
      v25(v24);
    }

    swift_beginAccess();
    *(v1 + 16) = 1;
  }

  OUTLINED_FUNCTION_24();
}

void sub_231CA3A54()
{
  OUTLINED_FUNCTION_38();
  v82 = v0;
  v2 = v1;
  v83 = v3;
  v5 = v4;
  v7 = v6;
  v8 = sub_231CA7C48();
  v9 = OUTLINED_FUNCTION_1(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9, v14);
  OUTLINED_FUNCTION_3_1();
  v17 = v16 - v15;
  v18 = sub_231CA7B38();
  v19 = OUTLINED_FUNCTION_1(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v19, v24);
  OUTLINED_FUNCTION_3_1();
  v27 = v26 - v25;
  [v7 timestamp];
  v29 = v28;
  v30 = OBJC_IVAR___IISMetricStore_windowStartDate;
  OUTLINED_FUNCTION_23();
  (*(v21 + 16))(v27, v5 + v30, v18);
  sub_231CA7AD8();
  v32 = v31;
  (*(v21 + 8))(v27, v18);
  if (v32 + *(v5 + OBJC_IVAR___IISMetricStore_sendInterval) < v29)
  {
    goto LABEL_20;
  }

  v33 = [v7 eventBody];
  if (!v33)
  {
    sub_231C9EB04();
    v73 = OUTLINED_FUNCTION_33();
    v74(v73);
    v75 = sub_231CA7C28();
    v76 = sub_231CA7D48();
    if (OUTLINED_FUNCTION_11_0(v76))
    {
      v77 = OUTLINED_FUNCTION_28();
      OUTLINED_FUNCTION_30(v77);
      OUTLINED_FUNCTION_7_0(&dword_231C94000, v78, v79, "MetricStore: failed to fetch event body from event.");
      OUTLINED_FUNCTION_14_0();
    }

    v80 = (*(v11 + 8))(v17, v8);
    v83(v80);
    goto LABEL_20;
  }

  v34 = v33;
  v35 = *&v33[OBJC_IVAR____TtC24PersonalIntelligenceCore13MetricMessage_messageIdentifier];
  v36 = *&v33[OBJC_IVAR____TtC24PersonalIntelligenceCore13MetricMessage_messageIdentifier + 8];

  v37 = [v34 description];
  v81 = sub_231CA7CC8();
  v39 = v38;

  OUTLINED_FUNCTION_27();
  v40 = *(v2 + 16);
  swift_isUniquelyReferenced_nonNull_native();
  v84 = *(v2 + 16);
  *(v2 + 16) = 0x8000000000000000;
  sub_231C97640(v35, v36);
  OUTLINED_FUNCTION_6_0();
  if (__OFADD__(v43, v44))
  {
    __break(1u);
    goto LABEL_22;
  }

  v45 = v41;
  v46 = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD72FC0, &unk_231CA9AE0);
  v47 = v84;
  if (sub_231CA7E68())
  {
    v48 = sub_231C97640(v35, v36);
    if ((v46 & 1) != (v49 & 1))
    {
      goto LABEL_24;
    }

    v45 = v48;
  }

  *(v2 + 16) = v84;
  if ((v46 & 1) == 0)
  {
    sub_231CA3F48(&v84);
    sub_231CA46FC(v45, v35, v36, v84, v47);
  }

  v50 = *(v47 + 56);
  v51 = *(v50 + 8 * v45);
  swift_isUniquelyReferenced_nonNull_native();
  v84 = *(v50 + 8 * v45);
  *(v50 + 8 * v45) = 0x8000000000000000;
  sub_231C97640(v81, v39);
  OUTLINED_FUNCTION_6_0();
  if (__OFADD__(v54, v55))
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v56 = v52;
  v57 = v53;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD72CE8, &qword_231CA8DD8);
  if ((sub_231CA7E68() & 1) == 0)
  {
    goto LABEL_13;
  }

  v58 = sub_231C97640(v81, v39);
  if ((v57 & 1) == (v59 & 1))
  {
    v56 = v58;
LABEL_13:
    v60 = *(v50 + 8 * v45);
    *(v50 + 8 * v45) = v84;

    v61 = *(v50 + 8 * v45);
    if ((v57 & 1) == 0)
    {
      sub_231CA46B4(v56, v81, v39, 0, *(v50 + 8 * v45));
    }

    v62 = *(v61 + 56);
    v63 = *(v62 + 8 * v56);
    v64 = __CFADD__(v63, 1);
    v65 = v63 + 1;
    if (!v64)
    {
      *(v62 + 8 * v56) = v65;
      swift_endAccess();

      v66 = [v34 description];
      v67 = sub_231CA7CC8();
      v69 = v68;

      OUTLINED_FUNCTION_27();
      v70 = v34;
      v71 = *(v82 + 16);
      swift_isUniquelyReferenced_nonNull_native();
      v84 = *(v82 + 16);
      sub_231CA4888(v70, v67, v69);
      *(v82 + 16) = v84;

      v72 = swift_endAccess();
      v83(v72);

LABEL_20:
      OUTLINED_FUNCTION_39();
      return;
    }

    goto LABEL_23;
  }

LABEL_24:
  sub_231CA7FC8();
  __break(1u);
}

uint64_t sub_231CA3F48@<X0>(uint64_t *a1@<X8>)
{
  result = sub_231CA7C88();
  *a1 = result;
  return result;
}

uint64_t sub_231CA3F90@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for MetricMessage();
  sub_231CA4F28(&qword_27DD72FA8, type metadata accessor for MetricMessage);
  result = sub_231CA7C88();
  *a1 = result;
  return result;
}

uint64_t sub_231CA4010(void *a1)
{
  v2 = sub_231CA7B38();
  v3 = OUTLINED_FUNCTION_1(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3, v8);
  OUTLINED_FUNCTION_3_1();
  v11 = v10 - v9;
  if (a1)
  {
    v12 = a1;
    [v12 timestamp];
    sub_231CA7AC8();
    v13 = sub_231CA7AF8();

    (*(v5 + 8))(v11, v2);
  }

  else
  {
    v13 = 1;
  }

  return v13 & 1;
}

id MetricStore.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_231CA41E0()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!result)
  {
    result = sub_231CA42BC(result, v1[2] + 1, 1, v1);
    *v0 = result;
  }

  return result;
}

uint64_t sub_231CA422C(uint64_t result)
{
  v2 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18);
  if (result + 1 > (v2 >> 1))
  {
    return MEMORY[0x2821FC280](v2 > 1);
  }

  return result;
}

void *sub_231CA4258(void *result)
{
  v2 = (*v1)[3];
  if (result + 1 > (v2 >> 1))
  {
    result = sub_231CA42BC((v2 > 1), result + 1, 1, *v1);
    *v1 = result;
  }

  return result;
}

uint64_t sub_231CA4298(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_231CA7E98();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

void *sub_231CA42BC(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD72FD0, &qword_231CA9AF8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD72FD8, &qword_231CA9B00);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_231CA43EC()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD72F58, &qword_231CA9978);
  OUTLINED_FUNCTION_9_0();
  sub_231CA4F88(v2, v3, &qword_231CA9978);
  v4 = sub_231CA7BE8();
  [v4 sendEvent_];
}

uint64_t sub_231CA449C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_231CA44DC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD72F58, &qword_231CA9978);
  return sub_231CA7BB8();
}

uint64_t sub_231CA454C@<X0>(void *a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  result = v5(*a1, a1[1], *a2);
  *a3 = result & 1;
  return result;
}

void sub_231CA4590()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  sub_231CA3568();
}

uint64_t sub_231CA45A0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_231CA45B0(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_231CA7D68();

  return sub_231CA45F4(a1, v5);
}

unint64_t sub_231CA45F4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = v2 + 64;
  v5 = ~(-1 << *(v2 + 32));
  for (i = a2 & v5; ((1 << i) & *(v4 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v5)
  {
    type metadata accessor for MetricMessage();
    v7 = *(*(v3 + 48) + 8 * i);
    v8 = sub_231CA7D78();

    if (v8)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_231CA46B4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
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

void sub_231CA46FC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_18_0(a5 + 8 * (a1 >> 6));
  v7 = (v5[6] + 16 * v6);
  *v7 = v8;
  v7[1] = v9;
  *(v5[7] + 8 * v6) = v10;
  v11 = v5[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    v5[2] = v13;
  }
}

uint64_t sub_231CA474C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_231C97640(a2, a3);
  if (__OFADD__(*(v8 + 16), (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v9;
  v12 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD72F90, &qword_231CA99B0);
  if ((sub_231CA7E68() & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = *v4;
  v14 = sub_231C97640(a2, a3);
  if ((v12 & 1) != (v15 & 1))
  {
LABEL_13:
    result = sub_231CA7FC8();
    __break(1u);
    return result;
  }

  v11 = v14;
LABEL_5:
  v16 = *v4;
  if (v12)
  {
    v17 = *(v16 + 56);
    v18 = *(v17 + 8 * v11);
    *(v17 + 8 * v11) = a1;
  }

  else
  {
    sub_231CA46FC(v11, a2, a3, a1, v16);
  }
}

void sub_231CA4888(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_231C97640(a2, a3);
  if (__OFADD__(*(v8 + 16), (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v9;
  v12 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD72FC8, &qword_231CA9AF0);
  if ((sub_231CA7E68() & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = *v4;
  v14 = sub_231C97640(a2, a3);
  if ((v12 & 1) != (v15 & 1))
  {
LABEL_13:
    sub_231CA7FC8();
    __break(1u);
    return;
  }

  v11 = v14;
LABEL_5:
  v16 = *v4;
  if (v12)
  {
    v17 = v16[7];
    v18 = *(v17 + 8 * v11);
    *(v17 + 8 * v11) = a1;
  }

  else
  {
    sub_231CA46B4(v11, a2, a3, a1, v16);
  }
}

uint64_t sub_231CA49C4(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = sub_231CA7DA8();
  v4 = *(a1 + 36);
  return result;
}

uint64_t sub_231CA4A04(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_231CA4A10()
{
  v1 = sub_231CA7B38();
  OUTLINED_FUNCTION_34(v1);
  v3 = v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD72F58, &qword_231CA9978);
  return sub_231CA7BB8();
}

unint64_t sub_231CA4AB8()
{
  result = qword_27DD72FA0;
  if (!qword_27DD72FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD72FA0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MetricError(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for MetricError(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_231CA4C78()
{
  sub_231CA4D08();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_231CA4D08()
{
  if (!qword_2814C9310)
  {
    type metadata accessor for MetricMessage();
    v0 = sub_231CA7BC8();
    if (!v1)
    {
      atomic_store(v0, &qword_2814C9310);
    }
  }
}

uint64_t sub_231CA4D88(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_231CA4DC0()
{
  result = sub_231CA7B38();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_231CA4EE8(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_231CA4F28(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_231CA4F78()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  sub_231CA3A54();
}

uint64_t sub_231CA4F88(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_231CA4FD0(void *a1)
{
  if (!a1)
  {
    return 1;
  }

  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = [a1 eventBody];
  if (!v4)
  {
    return 1;
  }

  v5 = v4;
  v6 = *&v4[OBJC_IVAR____TtC24PersonalIntelligenceCore13MetricMessage_messageIdentifier];
  v7 = *&v4[OBJC_IVAR____TtC24PersonalIntelligenceCore13MetricMessage_messageIdentifier + 8];

  v8 = sub_231CA7D08();

  return v8 & 1;
}

uint64_t OUTLINED_FUNCTION_2_0()
{

  return swift_once();
}

void OUTLINED_FUNCTION_7_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

BOOL OUTLINED_FUNCTION_11_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_12_0()
{

  return swift_once();
}

void OUTLINED_FUNCTION_14_0()
{

  JUMPOUT(0x23837A830);
}

uint64_t OUTLINED_FUNCTION_19_0()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_20_0()
{

  JUMPOUT(0x23837A830);
}

uint64_t OUTLINED_FUNCTION_23()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_27()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_28()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_31()
{

  return sub_231CA7CB8();
}

void OUTLINED_FUNCTION_40(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void sub_231CA5848(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __ii_default_log_handle_block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = os_log_create("com.apple.proactive.PersonalIntelligenceCore", "Default");
  v2 = ii_default_log_handle__pasExprOnceResult;
  ii_default_log_handle__pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

void sub_231CA5EC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}