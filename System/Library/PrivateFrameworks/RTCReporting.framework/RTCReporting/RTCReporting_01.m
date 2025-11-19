uint64_t sub_223C3C9A8(void *a1, void (*a2)(void), uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  if (a1[43])
  {
    v7 = a1[41];
    v8 = a1[42];
    a1[41] = sub_223C3D3E4;
    a1[42] = v6;

    sub_223C28024(v7);
  }

  else
  {

    a2(0);
  }
}

uint64_t sub_223C3CA6C()
{
  OUTLINED_FUNCTION_41();
  v20 = v0;
  v1 = v0[7];
  swift_unknownObjectRelease();
  if (qword_280AEBEE0 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v2 = v0[9];
  v3 = sub_223C481B8();
  __swift_project_value_buffer(v3, qword_280AEC380);
  v4 = v2;
  v5 = sub_223C48198();
  v6 = sub_223C484A8();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[9];
  if (v7)
  {
    v9 = OUTLINED_FUNCTION_52();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v9 = 136446210;
    swift_getErrorValue();
    v12 = v0[2];
    v11 = v0[3];
    v13 = v0[4];
    v14 = sub_223C486F8();
    v16 = sub_223C354E8(v14, v15, &v19);

    *(v9 + 4) = v16;
    _os_log_impl(&dword_223C26000, v5, v6, "failed to send session end: %{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_36();
  }

  else
  {
  }

  *(v0[6] + 320) = 2;
  OUTLINED_FUNCTION_20_0();

  return v17();
}

uint64_t sub_223C3CC18()
{
  result = sub_223C48138();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t dispatch thunk of Session.end()()
{
  OUTLINED_FUNCTION_19();
  v2 = *(*v0 + 384);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_223C349AC;

  return v6();
}

uint64_t getEnumTagSinglePayload for Session.State(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for Session.State(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_223C3CFE4()
{
  result = qword_27D0B9A28;
  if (!qword_27D0B9A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B9A28);
  }

  return result;
}

uint64_t sub_223C3D038(uint64_t a1, unint64_t a2)
{
  v4 = sub_223C3D084(a1, a2);
  sub_223C3D19C(&unk_283720DF8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_223C3D084(uint64_t a1, unint64_t a2)
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

  for (; v5; v5 = sub_223C48388())
  {
    result = sub_223C3D280(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_223C485B8();
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
          result = sub_223C485D8();
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

uint64_t sub_223C3D19C(uint64_t result)
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

    result = sub_223C3D2F0(result, v8, 1, v3);
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

void *sub_223C3D280(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0B9A50, &unk_223C4ABC0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_223C3D2F0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0B9A50, &unk_223C4ABC0);
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

unint64_t sub_223C3D450()
{
  result = qword_280AEBD98;
  if (!qword_280AEBD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280AEBD98);
  }

  return result;
}

uint64_t sub_223C3D4AC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1() & 1;
}

BOOL sub_223C3D4D8(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = *(v6 + 40);
  v8 = sub_223C48748();
  v9 = ~(-1 << *(v6 + 32));
  while (1)
  {
    v10 = v8 & v9;
    v11 = (1 << (v8 & v9)) & *(v6 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v11)
    {
      break;
    }

    if (*(*(v6 + 48) + 8 * v10) == a2)
    {
      goto LABEL_6;
    }

    v8 = v10 + 1;
  }

  v12 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v3;
  sub_223C3D7CC(a2, v10, isUniquelyReferenced_nonNull_native);
  *v3 = v15;
LABEL_6:
  result = v11 == 0;
  *a1 = a2;
  return result;
}

uint64_t sub_223C3D5A8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B9AD8, &qword_223C4ABE8);
  result = sub_223C485A8();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v7 = 0;
  v9 = (v3 + 56);
  v8 = *(v3 + 56);
  v10 = 1 << *(v3 + 32);
  v27 = v2;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & v8;
  v13 = result + 56;
  if ((v11 & v8) == 0)
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

      if (v7 >= ((v10 + 63) >> 6))
      {
        break;
      }

      v16 = v9[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    if (v10 >= 64)
    {
      sub_223C2D650(0, (v10 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v9 = -1 << v10;
    }

    v2 = v27;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_14:
    v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
    v18 = *(v6 + 40);
    result = sub_223C48748();
    v19 = -1 << *(v6 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v6 + 48) + 8 * v22) = v17;
    ++*(v6 + 16);
    if (!v12)
    {
      goto LABEL_9;
    }
  }

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
    v26 = *(v13 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_223C3D7CC(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_223C3D5A8(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_223C3DA10(v6 + 1);
LABEL_10:
      v12 = *v3;
      v13 = *(*v3 + 40);
      result = sub_223C48748();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = result & v14;
        if (((*(v12 + 56 + (((result & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v14)) & 1) == 0)
        {
          goto LABEL_7;
        }

        if (*(*(v12 + 48) + 8 * a2) == v5)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_223C3D8D0();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 8 * a2) = v5;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    result = sub_223C486B8();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

void *sub_223C3D8D0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B9AD8, &qword_223C4ABE8);
  v2 = *v0;
  v3 = sub_223C48598();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_223C3DA10(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B9AD8, &qword_223C4ABE8);
  result = sub_223C485A8();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = *(*(v3 + 48) + 8 * (v13 | (v7 << 6)));
        v17 = *(v6 + 40);
        result = sub_223C48748();
        v18 = -1 << *(v6 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        *(*(v6 + 48) + 8 * v21) = v16;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {
          goto LABEL_25;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_25:

    *v2 = v6;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12RTCReporting7SessionC0B5Error33_DEE8464164A2ABB39C97BC4641B8970CLLO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_223C3DC20(uint64_t a1, unsigned int a2)
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

uint64_t sub_223C3DC74(uint64_t result, unsigned int a2, unsigned int a3)
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

void *sub_223C3DCD0(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
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

void OUTLINED_FUNCTION_36()
{

  JUMPOUT(0x223DF6270);
}

uint64_t OUTLINED_FUNCTION_49()
{

  return sub_223C2C4D4(v0, v1, v2, v3);
}

uint64_t sub_223C3DDB4()
{
  v19 = sub_223C481C8();
  v0 = *(v19 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v19);
  v3 = v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_223C484E8();
  v4 = *(v18 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v18);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_223C484D8();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = sub_223C481E8();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  sub_223C3E5F4();
  v17[1] = "com.apple.rtcreporting";
  sub_223C481D8();
  v21 = MEMORY[0x277D84F90];
  sub_223C3E638();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B9B40, &qword_223C4AD38);
  sub_223C3E690();
  sub_223C48578();
  (*(v4 + 104))(v7, *MEMORY[0x277D85268], v18);
  v12 = v19;
  (*(v0 + 104))(v3, *MEMORY[0x277D851C8], v19);
  sub_223C48508();
  (*(v0 + 8))(v3, v12);
  v13 = sub_223C484F8();
  v14 = v20;
  *(v20 + 16) = v13;
  *(v14 + 24) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B9B48, &qword_223C4AD40);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v14 + 32) = v15;
  *(v14 + 40) = 2;
  return v14;
}

uint64_t sub_223C3E0C8()
{
  v0 = SecTaskCreateFromSelf(0);
  if (!v0)
  {
    if (qword_27D0B9868 != -1)
    {
      swift_once();
    }

    if (byte_27D0B9870 != 1)
    {
      return 0;
    }

    if (qword_27D0B9858 != -1)
    {
      swift_once();
    }

    v5 = sub_223C481B8();
    __swift_project_value_buffer(v5, qword_27D0BA830);
    v1 = sub_223C48198();
    v6 = sub_223C484A8();
    if (os_log_type_enabled(v1, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_223C26000, v1, v6, "unable to validate task XPC authorization", v7, 2u);
      MEMORY[0x223DF6270](v7, -1, -1);
    }

    goto LABEL_20;
  }

  v1 = v0;
  v2 = sub_223C48318();
  v3 = SecTaskCopyValueForEntitlement(v1, v2, 0);

  if (!v3)
  {
    if (qword_27D0B9868 != -1)
    {
      swift_once();
    }

    if (byte_27D0B9870 == 1)
    {
      if (qword_27D0B9858 != -1)
      {
        swift_once();
      }

      v8 = sub_223C481B8();
      __swift_project_value_buffer(v8, qword_27D0BA830);
      v9 = sub_223C48198();
      v10 = sub_223C484A8();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&dword_223C26000, v9, v10, "XPC authorization entitlement not available", v11, 2u);
        MEMORY[0x223DF6270](v11, -1, -1);
      }
    }

LABEL_20:

    return 0;
  }

  swift_unknownObjectRetain();
  if (swift_dynamicCast())
  {
    swift_unknownObjectRelease();

    return v16;
  }

  if (qword_27D0B9868 != -1)
  {
    swift_once();
  }

  if (byte_27D0B9870 == 1)
  {
    if (qword_27D0B9858 != -1)
    {
      swift_once();
    }

    v12 = sub_223C481B8();
    __swift_project_value_buffer(v12, qword_27D0BA830);
    v13 = sub_223C48198();
    v14 = sub_223C484A8();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_223C26000, v13, v14, "XPC authorization entitlement is invalid", v15, 2u);
      MEMORY[0x223DF6270](v15, -1, -1);
    }
  }

  swift_unknownObjectRelease();
  return 0;
}

uint64_t sub_223C3E484()
{
  result = os_variant_has_internal_diagnostics();
  byte_27D0B9870 = result;
  return result;
}

uint64_t sub_223C3E4AC()
{
  v0 = sub_223C481B8();
  __swift_allocate_value_buffer(v0, qword_27D0BA830);
  __swift_project_value_buffer(v0, qword_27D0BA830);
  return sub_223C481A8();
}

uint64_t sub_223C3E530()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return v0;
}

uint64_t sub_223C3E560()
{
  sub_223C3E530();

  return MEMORY[0x2821FE8D8](v0, 41, 7);
}

uint64_t sub_223C3E5B8()
{
  type metadata accessor for ConnectionManager();
  swift_allocObject();
  result = sub_223C3DDB4();
  qword_280AEC3A0 = result;
  return result;
}

unint64_t sub_223C3E5F4()
{
  result = qword_280AEC1A0;
  if (!qword_280AEC1A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280AEC1A0);
  }

  return result;
}

unint64_t sub_223C3E638()
{
  result = qword_280AEC1A8;
  if (!qword_280AEC1A8)
  {
    sub_223C484D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280AEC1A8);
  }

  return result;
}

unint64_t sub_223C3E690()
{
  result = qword_280AEC1B8;
  if (!qword_280AEC1B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0B9B40, &qword_223C4AD38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280AEC1B8);
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

unint64_t sub_223C3E73C(uint64_t a1, uint64_t a2)
{
  sub_223C485C8();

  MEMORY[0x223DF5570](a1, a2);
  return 0xD000000000000016;
}

void sub_223C3E828(uint64_t a1)
{
  if (qword_280AEC178 != -1)
  {
    a1 = swift_once();
  }

  v1 = qword_280AEC180;
  v2 = MEMORY[0x28223BE20](a1);
  MEMORY[0x28223BE20](v2);
  os_unfair_lock_lock(v1 + 4);
  sub_223C2BF1C();
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t _RTCReportingS.messageLoggingBlock.getter()
{
  v1 = (v0 + OBJC_IVAR____RTCReportingS_messageLoggingBlock);
  OUTLINED_FUNCTION_48_0();
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];
  v4 = OUTLINED_FUNCTION_41_0();
  sub_223C29A24(v4);
  return OUTLINED_FUNCTION_41_0();
}

uint64_t sub_223C3E9F8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = sub_223C48328();
  v5 = v4;

  v2(v3, v5);
}

void sub_223C3EB0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_223C48318();
  (*(a3 + 16))(a3, v4);
}

uint64_t _RTCReportingS.messageLoggingBlock.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____RTCReportingS_messageLoggingBlock);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_223C28024(v6);
}

uint64_t sub_223C3EBC4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____RTCReportingS_messageLoggingBlock);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_223C45188;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_223C29A24(v4);
}

uint64_t sub_223C3EC64(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_223C45150;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____RTCReportingS_messageLoggingBlock);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_223C29A24(v3);
  return sub_223C28024(v8);
}

uint64_t _RTCReportingS.messageSentDelegate.getter()
{
  OUTLINED_FUNCTION_48_0();
  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t _RTCReportingS.messageSentDelegate.setter()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t sub_223C3EEC8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_223C3EF24(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  return swift_unknownObjectWeakAssign();
}

void (*_RTCReportingS.messageSentDelegate.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____RTCReportingS_messageSentDelegate;
  v3[4] = v1;
  v3[5] = v4;
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return sub_223C3F004;
}

void sub_223C3F004(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  v5 = *(*a1 + 32) + *(*a1 + 40);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v6 = v3[3];
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

uint64_t sub_223C3F084()
{
  v0 = sub_223C481B8();
  __swift_allocate_value_buffer(v0, qword_280AEC1D0);
  __swift_project_value_buffer(v0, qword_280AEC1D0);
  return sub_223C481A8();
}

uint64_t sub_223C3F104()
{
  result = os_variant_has_internal_diagnostics();
  byte_280AEC398 = result;
  return result;
}

uint64_t sub_223C3F12C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B9B48, &qword_223C4AD40);
  result = swift_allocObject();
  *(result + 16) = 0;
  qword_280AEC180 = result;
  return result;
}

uint64_t sub_223C3F16C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B9B48, &qword_223C4AD40);
  result = swift_allocObject();
  *(result + 16) = 0;
  qword_280AEC158 = result;
  return result;
}

uint64_t sub_223C3F1C8(char a1)
{
  if (a1)
  {
    v1 = 0xD000000000000011;
  }

  else
  {
    v1 = 0xD000000000000016;
  }

  if (a1)
  {
    v2 = "ier>,N,W,VmessageSentDelegate";
  }

  else
  {
    v2 = "invalid parameter";
  }

  v3 = v2 | 0x8000000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B9C08, &qword_223C4AEF8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_223C4A900;
  v5 = *MEMORY[0x277CCA450];
  *(inited + 32) = sub_223C48328();
  *(inited + 40) = v6;
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v1;
  *(inited + 56) = v3;
  return sub_223C48298();
}

uint64_t sub_223C3F294(uint64_t a1)
{
  if (a1 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_223C3F2D8(char a1)
{
  sub_223C48758();
  MEMORY[0x223DF5980](a1 & 1);
  return sub_223C48788();
}

uint64_t sub_223C3F358(uint64_t a1, char a2)
{
  sub_223C48758();
  MEMORY[0x223DF5980](a2 & 1);
  return sub_223C48788();
}

uint64_t sub_223C3F39C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_223C3F294(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_223C3F3C8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_223C3F2AC(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_223C3F414(uint64_t a1, uint64_t a2)
{
  v4 = sub_223C45058();
  v5 = sub_223C450AC();

  return MEMORY[0x28211BAD0](a1, a2, v4, v5);
}

uint64_t sub_223C3F474(uint64_t a1)
{
  v2 = sub_223C45004();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_223C3F4B0(uint64_t a1)
{
  v2 = sub_223C45004();
  v3 = sub_223C45058();
  v4 = sub_223C450AC();

  return MEMORY[0x28211F498](a1, v2, v3, v4);
}

uint64_t sub_223C3F50C()
{
  os_unfair_lock_assert_owner((*(v0 + OBJC_IVAR____RTCReportingS_lock) + 16));
  v1 = OBJC_IVAR____RTCReportingS_activeTasks;
  swift_beginAccess();
  v2 = *(v0 + v1);

  v4 = sub_223C44660(v3, sub_223C447D8, sub_223C447D8);

  v5 = *(v0 + v1);
  *(v0 + v1) = v4;
}

void _RTCReportingS.__allocating_init(sessionInfo:userInfo:frameworksToCheck:)()
{
  v1 = objc_allocWithZone(v0);
  OUTLINED_FUNCTION_54();
  _RTCReportingS.init(sessionInfo:userInfo:frameworksToCheck:)();
}

unint64_t sub_223C3F658()
{
  result = qword_280AEC0C0;
  if (!qword_280AEC0C0)
  {
    sub_223C48188();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280AEC0C0);
  }

  return result;
}

void sub_223C3F6B0(uint64_t a1, unsigned __int16 a2, unsigned __int16 a3, uint64_t a4, uint64_t a5, double a6)
{
  if (a1)
  {
    v11 = sub_223C48238();
    if (a4)
    {
LABEL_3:
      v12 = sub_223C48238();
      goto LABEL_6;
    }
  }

  else
  {
    v11 = 0;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v12 = 0;
LABEL_6:
  v13 = v12;
  (*(a5 + 16))(a5, v11, a2, a3, a6);
}

uint64_t sub_223C3F798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_223C3F7B8, 0, 0);
}

uint64_t sub_223C3F7B8()
{
  OUTLINED_FUNCTION_31();
  v1 = *(v0 + 24);
  (*(v0 + 16))(0);
  OUTLINED_FUNCTION_20_0();

  return v2();
}

uint64_t sub_223C3F818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0B9A30, &unk_223C4AB88);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v26 - v11;
  sub_223C4582C(a3, v26 - v11, &unk_27D0B9A30, &unk_223C4AB88);
  v13 = sub_223C48418();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);

  if (EnumTagSinglePayload == 1)
  {
    sub_223C2CF0C(v12, &unk_27D0B9A30, &unk_223C4AB88);
  }

  else
  {
    sub_223C48408();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_223C483C8();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_223C48348() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_223C2CF0C(a3, &unk_27D0B9A30, &unk_223C4AB88);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_223C2CF0C(a3, &unk_27D0B9A30, &unk_223C4AB88);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_223C3FAFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_223C45A88, 0, 0);
}

uint64_t sub_223C3FB1C()
{
  v25 = v0;
  v1 = v0[43];

  if (qword_280AEC1C8 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v2 = v0[46];
  v3 = sub_223C481B8();
  __swift_project_value_buffer(v3, qword_280AEC1D0);
  v4 = v2;
  v5 = sub_223C48198();
  v6 = sub_223C484A8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[46];
    OUTLINED_FUNCTION_52();
    v8 = OUTLINED_FUNCTION_44_0();
    v24 = v8;
    *v2 = 136315138;
    swift_getErrorValue();
    v10 = v0[28];
    v9 = v0[29];
    v11 = v0[30];
    v12 = sub_223C486F8();
    v14 = sub_223C354E8(v12, v13, &v24);

    *(v2 + 1) = v14;
    OUTLINED_FUNCTION_56(&dword_223C26000, v15, v16, "failed to configure legacy session: %s");
    __swift_destroy_boxed_opaque_existential_0(v8);
    OUTLINED_FUNCTION_10_1();
    MEMORY[0x223DF6270]();
    v17 = OUTLINED_FUNCTION_8_1();
    MEMORY[0x223DF6270](v17);
  }

  v18 = v0[39];
  v19 = v0[46];
  if (v18)
  {
    v20 = v0[40];

    v18(0);

    v21 = OUTLINED_FUNCTION_30_0();
    sub_223C28024(v21);
  }

  else
  {
  }

  OUTLINED_FUNCTION_20_0();

  return v22();
}

uint64_t sub_223C3FCCC()
{
  v22 = v0;
  v1 = v0[13];

  if (qword_280AEC1C8 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v2 = v0[16];
  v3 = sub_223C481B8();
  __swift_project_value_buffer(v3, qword_280AEC1D0);
  v4 = v2;
  v5 = sub_223C48198();
  v6 = sub_223C484A8();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[16];
  if (v7)
  {
    v9 = OUTLINED_FUNCTION_52();
    v10 = swift_slowAlloc();
    v21 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v12 = v0[2];
    v11 = v0[3];
    v13 = v0[4];
    v14 = sub_223C486F8();
    v16 = sub_223C354E8(v14, v15, &v21);

    *(v9 + 4) = v16;
    _os_log_impl(&dword_223C26000, v5, v6, "error sending deferred-from-unconfigured events: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    OUTLINED_FUNCTION_10_1();
    MEMORY[0x223DF6270](v17);
    OUTLINED_FUNCTION_10_1();
    MEMORY[0x223DF6270](v18);
  }

  else
  {
  }

  OUTLINED_FUNCTION_20_0();

  return v19();
}

uint64_t sub_223C3FE74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0B9A30, &unk_223C4AB88);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v26 - v11;
  sub_223C4582C(a3, v26 - v11, &unk_27D0B9A30, &unk_223C4AB88);
  v13 = sub_223C48418();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);

  if (EnumTagSinglePayload == 1)
  {
    sub_223C2CF0C(v12, &unk_27D0B9A30, &unk_223C4AB88);
  }

  else
  {
    sub_223C48408();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_223C483C8();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_223C48348() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t _RTCReportingS.fetchReportingStates(userInfo:fetchComplete:)(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v7 = *&v3[OBJC_IVAR____RTCReportingS_lock];
  os_unfair_lock_lock(v7 + 4);
  sub_223C2A5BC(v8, &v23);
  os_unfair_lock_unlock(v7 + 4);
  v10 = v23;
  if (!*(v23 + 16))
  {

    v17 = swift_allocObject();
    v17[2] = a2;
    v17[3] = a3;
    v17[4] = v3;
    v18 = OUTLINED_FUNCTION_31_0();
    sub_223C29A24(v18);
    v19 = v3;
    _RTCReportingS.startConfiguration(completionHandler:)();
  }

  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_38_0();
  *(v11 - 32) = v10;
  *(v11 - 24) = v3;
  *(v11 - 16) = ObjectType;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_7_1();
  v14 = OUTLINED_FUNCTION_29_1(v13);
  os_unfair_lock_lock(v14);
  sub_223C2BF1C();
  os_unfair_lock_unlock(v7 + 4);

  if (!a2)
  {
    return result;
  }

  if (*&v3[OBJC_IVAR____RTCReportingS_session])
  {
    if (v3[OBJC_IVAR____RTCReportingS_completelyDisabled] != 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B9BE0, &unk_223C4AD80);
      v20 = swift_allocObject();
      v21 = MEMORY[0x277D837D0];
      *(v20 + 16) = xmmword_223C4A900;
      *(v20 + 56) = v21;
      *(v20 + 32) = 120;
      *(v20 + 40) = 0xE100000000000000;

      a2(v20);

      goto LABEL_10;
    }

    v16 = 0;
  }

  else
  {

    v16 = MEMORY[0x277D84F90];
  }

  a2(v16);
LABEL_10:
  v22 = OUTLINED_FUNCTION_31_0();
  return sub_223C28024(v22);
}

uint64_t sub_223C40368@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = OBJC_IVAR____RTCReportingS_userInfo;
  swift_beginAccess();
  v7 = *(a1 + v6);
  *(a1 + v6) = a2;
  *a3 = v7;
}

void sub_223C403E0(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return;
  }

  if (*(a4 + OBJC_IVAR____RTCReportingS_session))
  {
    if (*(a4 + OBJC_IVAR____RTCReportingS_completelyDisabled) != 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B9BE0, &unk_223C4AD80);
      v6 = swift_allocObject();
      v7 = MEMORY[0x277D837D0];
      *(v6 + 16) = xmmword_223C4A900;
      *(v6 + 56) = v7;
      *(v6 + 32) = 120;
      *(v6 + 40) = 0xE100000000000000;

      a2(v6);

      goto LABEL_9;
    }

    v5 = 0;
  }

  else
  {

    v5 = MEMORY[0x277D84F90];
  }

  a2(v5);
LABEL_9:

  sub_223C28024(a2);
}

uint64_t sub_223C404E0(uint64_t a1, uint64_t a2)
{
  sub_223C2C00C(a1, &v10);
  if (v11)
  {
    if (swift_dynamicCast())
    {
      v4 = OBJC_IVAR____RTCReportingS_userInfo;
      swift_beginAccess();
      sub_223C2C00C(*(a2 + v4), &v10);
      swift_endAccess();
      if (v11)
      {
        if (swift_dynamicCast())
        {
        }
      }

      else
      {

        sub_223C2CF0C(&v10, &qword_27D0B99E8, &qword_223C4A8A0);
      }
    }
  }

  else
  {
    sub_223C2CF0C(&v10, &qword_27D0B99E8, &qword_223C4A8A0);
  }

  sub_223C2C00C(a1, &v10);
  if (v11)
  {
    if (swift_dynamicCast())
    {
      v5 = OBJC_IVAR____RTCReportingS_userInfo;
      swift_beginAccess();
      sub_223C2C00C(*(a2 + v5), &v10);
      swift_endAccess();
      if (v11)
      {
        if (swift_dynamicCast())
        {
        }
      }

      else
      {

        sub_223C2CF0C(&v10, &qword_27D0B99E8, &qword_223C4A8A0);
      }
    }
  }

  else
  {
    sub_223C2CF0C(&v10, &qword_27D0B99E8, &qword_223C4A8A0);
  }

  v6 = OBJC_IVAR____RTCReportingS_userInfo;
  swift_beginAccess();
  v7 = *(a2 + v6);

  sub_223C2D120(v8);
}

uint64_t sub_223C40B20(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B9C28, &unk_223C4AF80);
    v2 = sub_223C48648();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

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
  v7 = v2 + 64;

  v9 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = __clz(__rbit64(v5)) | (v9 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    sub_223C2C0BC(*(a1 + 56) + 32 * v11, v36);
    *&v35 = v14;
    *(&v35 + 1) = v13;
    v33[2] = v35;
    v34[0] = v36[0];
    v34[1] = v36[1];
    v33[0] = v35;

    swift_dynamicCast();
    sub_223C2A050(v34, v28);
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_223C2A050(v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_223C2A050(v32, v33);
    v15 = *(v2 + 40);
    result = sub_223C48588();
    v16 = -1 << *(v2 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v7 + 8 * (v17 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v19 = __clz(__rbit64((-1 << v17) & ~*(v7 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *(v7 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    v24 = *(v2 + 48) + 40 * v19;
    *v24 = v25;
    *(v24 + 16) = v26;
    *(v24 + 32) = v27;
    result = sub_223C2A050(v33, (*(v2 + 56) + 32 * v19));
    ++*(v2 + 16);
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_223C40DE4()
{
  OUTLINED_FUNCTION_20_1();
  v1 = *(v0 + 96);
  v2 = *(v0 + 80);
  v3 = OBJC_IVAR____RTCReportingS_lock;
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_32_0(v4);
  OUTLINED_FUNCTION_19_1(v5);
  sub_223C2BF1C();
  os_unfair_lock_unlock(v3 + 4);

  if (!v1)
  {

    OUTLINED_FUNCTION_20_0();

    return v7();
  }

  return result;
}

uint64_t sub_223C40E9C()
{
  v29 = v0;
  if (qword_280AEC1C8 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v1 = *(v0 + 96);
  v2 = sub_223C481B8();
  __swift_project_value_buffer(v2, qword_280AEC1D0);
  v3 = v1;
  v4 = sub_223C48198();
  v5 = sub_223C484A8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 96);
    OUTLINED_FUNCTION_52();
    v7 = OUTLINED_FUNCTION_44_0();
    v28 = v7;
    *v1 = 136446210;
    swift_getErrorValue();
    v9 = *(v0 + 16);
    v8 = *(v0 + 24);
    v10 = *(v0 + 32);
    v11 = sub_223C486F8();
    v13 = sub_223C354E8(v11, v12, &v28);

    *(v1 + 1) = v13;
    OUTLINED_FUNCTION_56(&dword_223C26000, v14, v15, "failed to send legacy message: %{public}s");
    __swift_destroy_boxed_opaque_existential_0(v7);
    OUTLINED_FUNCTION_10_1();
    MEMORY[0x223DF6270](v16);
    v17 = OUTLINED_FUNCTION_8_1();
    MEMORY[0x223DF6270](v17);
  }

  v18 = *(v0 + 64);
  v19 = *(v18 + OBJC_IVAR____RTCReportingS_lock);
  v20 = swift_task_alloc();
  *(v20 + 16) = v18;
  v21 = swift_task_alloc();
  *(v21 + 16) = sub_223C45670;
  *(v21 + 24) = v20;
  os_unfair_lock_lock(v19 + 4);
  sub_223C2BF1C();
  os_unfair_lock_unlock(v19 + 4);

  v22 = *(v0 + 80);
  v23 = OBJC_IVAR____RTCReportingS_lock;
  v24 = swift_task_alloc();
  v25 = OUTLINED_FUNCTION_32_0(v24);
  OUTLINED_FUNCTION_19_1(v25);
  sub_223C2BF1C();
  os_unfair_lock_unlock(v23 + 4);

  OUTLINED_FUNCTION_20_0();

  return v26();
}

void sub_223C410CC(char *a1)
{
  v2 = OBJC_IVAR____RTCReportingS_activeTasks;
  swift_beginAccess();
  sub_223C442CC();
  swift_endAccess();

  if (qword_280AEC1C8 != -1)
  {
    swift_once();
  }

  v3 = sub_223C481B8();
  __swift_project_value_buffer(v3, qword_280AEC1D0);
  v4 = a1;
  v5 = sub_223C48198();
  v6 = sub_223C48488();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = *(*&a1[v2] + 16);

    _os_log_impl(&dword_223C26000, v5, v6, "Total active tasks after sendMessage finished:%ld", v7, 0xCu);
    MEMORY[0x223DF6270](v7, -1, -1);
  }

  else
  {

    v5 = v4;
  }
}

void _RTCReportingS.flushMessages(completion:)()
{
  swift_getObjectType();
  v1 = *(v0 + OBJC_IVAR____RTCReportingS_lock);
  os_unfair_lock_lock(v1 + 4);
  sub_223C2BF1C();
  os_unfair_lock_unlock(v1 + 4);
}

void sub_223C412B8(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0B9A30, &unk_223C4AB88);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v22 - v8;
  v10 = *(a1 + OBJC_IVAR____RTCReportingS_session);
  if (v10)
  {
    if (*(a1 + OBJC_IVAR____RTCReportingS_completelyDisabled))
    {
      if (!a2)
      {
        return;
      }

      v11 = *(a1 + OBJC_IVAR____RTCReportingS_session);

      sub_223C29A24(a2);
      (a2)(0);

      goto LABEL_11;
    }

    if (a2)
    {
      v19 = *(a1 + OBJC_IVAR____RTCReportingS_session);

      sub_223C29A24(a2);
      sub_223C483F8();
      v20 = sub_223C48418();
      __swift_storeEnumTagSinglePayload(v9, 0, 1, v20);
      v21 = swift_allocObject();
      v21[2] = 0;
      v21[3] = 0;
      v21[4] = v10;
      v21[5] = a2;
      v21[6] = a3;

      sub_223C29A24(a2);
      sub_223C3FE74(0, 0, v9, &unk_223C4AF78, v21);

      sub_223C28024(a2);

      sub_223C2CF0C(v9, &unk_27D0B9A30, &unk_223C4AB88);
    }
  }

  else
  {
    if (qword_280AEC1C8 != -1)
    {
      swift_once();
    }

    v12 = sub_223C481B8();
    __swift_project_value_buffer(v12, qword_280AEC1D0);
    v13 = sub_223C48198();
    v14 = sub_223C484A8();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_223C26000, v13, v14, "attempted to flush unconfigured session", v15, 2u);
      MEMORY[0x223DF6270](v15, -1, -1);
    }

    if (a2)
    {
      sub_223C44D4C();
      v16 = swift_allocError();
      *v17 = 1;

      v18 = sub_223C48048();
      a2();

LABEL_11:
      sub_223C28024(a2);
    }
  }
}

uint64_t sub_223C41588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_223C415AC, 0, 0);
}

uint64_t sub_223C415AC()
{
  OUTLINED_FUNCTION_31();
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);

  v3 = OUTLINED_FUNCTION_30_0();

  return MEMORY[0x2822009F8](v3, v4, 0);
}

uint64_t sub_223C41614()
{
  OUTLINED_FUNCTION_31();
  sub_223C3C9A8(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  OUTLINED_FUNCTION_20_0();

  return v1();
}

void static _RTCReportingS.sendOneMessage(sessionInfo:userInfo:category:type:payload:)(uint64_t a1, uint64_t a2, __int16 a3, __int16 a4, uint64_t a5)
{
  v9 = objc_allocWithZone(v5);

  _RTCReportingS.init(sessionInfo:userInfo:frameworksToCheck:)();
  if (v10)
  {
    v11 = v10;
    v12 = swift_allocObject();
    *(v12 + 16) = a3;
    *(v12 + 18) = a4;
    *(v12 + 24) = a5;
    *(v12 + 32) = v11;

    v13 = v11;
    _RTCReportingS.startConfiguration(completionHandler:)();
  }

  else
  {
    if (qword_280AEC1C8 != -1)
    {
      OUTLINED_FUNCTION_0_2();
      swift_once();
    }

    v14 = sub_223C481B8();
    __swift_project_value_buffer(v14, qword_280AEC1D0);
    v15 = sub_223C48198();
    sub_223C484A8();
    v16 = OUTLINED_FUNCTION_46_0();
    if (os_log_type_enabled(v16, v17))
    {
      OUTLINED_FUNCTION_45_0();
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_47_0();
      _os_log_impl(v18, v19, v20, v21, v22, 2u);
      v23 = OUTLINED_FUNCTION_8_1();
      MEMORY[0x223DF6270](v23);
    }
  }
}

Swift::Void __swiftcall _RTCReportingS.updateSharedData(dictionary:)(Swift::OpaquePointer dictionary)
{
  if (qword_280AEC1C8 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v1 = sub_223C481B8();
  __swift_project_value_buffer(v1, qword_280AEC1D0);
  oslog = sub_223C48198();
  v2 = sub_223C484B8();
  if (os_log_type_enabled(oslog, v2))
  {
    OUTLINED_FUNCTION_45_0();
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_61(&dword_223C26000, v3, v4, "updateSharedData is deprecated", v5, v6, v7, v8, v9, oslog);
    OUTLINED_FUNCTION_10_1();
    MEMORY[0x223DF6270]();
  }
}

Swift::Void __swiftcall _RTCReportingS.updateSharedData(key:value:)(Swift::String key, NSObject value)
{
  if (qword_280AEC1C8 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v2 = sub_223C481B8();
  __swift_project_value_buffer(v2, qword_280AEC1D0);
  oslog = sub_223C48198();
  v3 = sub_223C484B8();
  if (os_log_type_enabled(oslog, v3))
  {
    OUTLINED_FUNCTION_45_0();
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_61(&dword_223C26000, v4, v5, "updateSharedData is deprecated", v6, v7, v8, v9, v10, oslog);
    OUTLINED_FUNCTION_10_1();
    MEMORY[0x223DF6270]();
  }
}

void sub_223C41F50()
{
  v1 = *(v0 + OBJC_IVAR____RTCReportingS_lock);
  os_unfair_lock_lock(v1 + 4);
  sub_223C2BF1C();
  os_unfair_lock_unlock(v1 + 4);
}

void sub_223C41FC0(char *a1)
{
  v1 = OBJC_IVAR____RTCReportingS_deprecatedPeriodic;
  if (!*&a1[OBJC_IVAR____RTCReportingS_deprecatedPeriodic])
  {
    v7[3] = swift_getObjectType();
    v7[0] = a1;
    v3 = objc_allocWithZone(RTCReportingAVCDeprecatedPeriodic);
    v4 = a1;
    v5 = sub_223C43D54(v7);
    v6 = *&a1[v1];
    *&a1[v1] = v5;
  }
}

Swift::Void __swiftcall _RTCReportingS.stopLogTimer()()
{
  sub_223C41F50();
  v1 = *(v0 + OBJC_IVAR____RTCReportingS_deprecatedPeriodic);
  if (v1)
  {

    [v1 stopLogTimer];
  }

  else
  {
    __break(1u);
  }
}

void _RTCReportingS.registerPeriodicTask(module:needToUpdate:needToReport:serviceBlock:)(uint64_t a1, char a2, char a3, uint64_t a4, uint64_t a5)
{
  sub_223C41F50();
  v11 = *(v5 + OBJC_IVAR____RTCReportingS_deprecatedPeriodic);
  if (v11)
  {
    v14[4] = a4;
    v14[5] = a5;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 1107296256;
    v14[2] = sub_223C422C4;
    v14[3] = &block_descriptor_0;
    v12 = _Block_copy(v14);
    v13 = v11;

    [v13 registerPeriodicTaskForModule:a1 needToUpdate:a2 & 1 needToReport:a3 & 1 serviceBlock:v12];
    _Block_release(v12);
  }

  else
  {
    __break(1u);
  }
}

void sub_223C422C4(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t _s12RTCReporting01_A1SC10uploadFile3URL17completionHandlerSbSo5NSURLC_ySb_So7NSErrorCSgtcSgtF_0(uint64_t a1, void (*a2)(void, void))
{
  if (a2)
  {

    a2(0, 0);
    v3 = OUTLINED_FUNCTION_30_0();
    sub_223C28024(v3);
  }

  return 0;
}

uint64_t _RTCReportingS.terminateSession(completion:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_223C48218();
  v6 = OUTLINED_FUNCTION_3(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_13();
  v13 = v12 - v11;
  sub_223C48208();
  if (qword_280AEC1C8 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v14 = sub_223C481B8();
  __swift_project_value_buffer(v14, qword_280AEC1D0);
  v15 = v2;
  v16 = sub_223C48198();
  v17 = sub_223C484C8();

  if (os_log_type_enabled(v16, v17))
  {
    v33 = a1;
    v34 = a2;
    v18 = OUTLINED_FUNCTION_52();
    v19 = swift_slowAlloc();
    v36 = v19;
    *v18 = 136315138;
    if (*&v15[OBJC_IVAR____RTCReportingS_generatedSessionID + 8])
    {
      v20 = *&v15[OBJC_IVAR____RTCReportingS_generatedSessionID];
      v21 = *&v15[OBJC_IVAR____RTCReportingS_generatedSessionID + 8];
    }

    else
    {
      v21 = 0xE100000000000000;
      v20 = 63;
    }

    v23 = sub_223C354E8(v20, v21, &v36);

    *(v18 + 4) = v23;
    _os_log_impl(&dword_223C26000, v16, v17, "terminateSession called for: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    OUTLINED_FUNCTION_10_1();
    MEMORY[0x223DF6270]();
    OUTLINED_FUNCTION_10_1();
    MEMORY[0x223DF6270]();

    a1 = v33;
    a2 = v34;
  }

  else
  {
  }

  v24 = *&v15[OBJC_IVAR____RTCReportingS_lock];
  v25 = MEMORY[0x28223BE20](v22);
  *(&v32 - 6) = v15;
  *(&v32 - 5) = a1;
  *(&v32 - 4) = a2;
  *(&v32 - 3) = v13;
  *(&v32 - 2) = ObjectType;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_7_1();
  v27 = OUTLINED_FUNCTION_29_1(v26);
  os_unfair_lock_lock(v27);
  sub_223C2BF1C();
  os_unfair_lock_unlock(v24 + 4);
  v28 = *(v8 + 8);
  v29 = OUTLINED_FUNCTION_31_0();
  return v30(v29);
}

void sub_223C428EC(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v51 = a4;
  v10 = sub_223C48218();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0B9A30, &unk_223C4AB88);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v53 = &v47 - v15;
  if (a1[OBJC_IVAR____RTCReportingS_terminated])
  {
    v16 = a2;
    v17 = a3;
    if (qword_280AEC1C8 != -1)
    {
      swift_once();
    }

    v18 = sub_223C481B8();
    __swift_project_value_buffer(v18, qword_280AEC1D0);
    v19 = a1;
    v20 = sub_223C48198();
    v21 = sub_223C484A8();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v52 = v23;
      *v22 = 136315138;
      if (*&v19[OBJC_IVAR____RTCReportingS_generatedSessionID + 8])
      {
        v24 = *&v19[OBJC_IVAR____RTCReportingS_generatedSessionID];
        v25 = *&v19[OBJC_IVAR____RTCReportingS_generatedSessionID + 8];
      }

      else
      {
        v25 = 0xE100000000000000;
        v24 = 63;
      }

      v44 = sub_223C354E8(v24, v25, &v52);

      *(v22 + 4) = v44;
      _os_log_impl(&dword_223C26000, v20, v21, "attempted to terminate already-ended session %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x223DF6270](v23, -1, -1);
      MEMORY[0x223DF6270](v22, -1, -1);

      if (v16)
      {
        goto LABEL_19;
      }
    }

    else
    {

      if (v16)
      {
LABEL_19:

        v36 = v53;
        sub_223C483F8();
        v45 = sub_223C48418();
        __swift_storeEnumTagSinglePayload(v36, 0, 1, v45);
        v46 = swift_allocObject();
        v46[2] = 0;
        v46[3] = 0;
        v46[4] = v16;
        v46[5] = v17;

        sub_223C3FE74(0, 0, v36, &unk_223C4AF58, v46);

        v43 = v16;
        goto LABEL_20;
      }
    }
  }

  else
  {
    v50 = v5;
    v26 = *&a1[OBJC_IVAR____RTCReportingS_session];
    if (v26)
    {
      a1[OBJC_IVAR____RTCReportingS_terminated] = 1;

      v49 = a5;
      sub_223C359A8(v27);
      sub_223C3F50C();
      v28 = OBJC_IVAR____RTCReportingS_activeTasks;
      swift_beginAccess();
      v29 = *&a1[v28];

      v48 = sub_223C42F8C(v30);
      v31 = v53;
      sub_223C483F8();
      v32 = sub_223C48418();
      __swift_storeEnumTagSinglePayload(v31, 0, 1, v32);
      (*(v11 + 16))(&v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v51, v10);
      v33 = a3;
      v34 = (*(v11 + 80) + 64) & ~*(v11 + 80);
      v35 = swift_allocObject();
      *(v35 + 2) = 0;
      *(v35 + 3) = 0;
      *(v35 + 4) = v48;
      *(v35 + 5) = v26;
      *(v35 + 6) = a2;
      *(v35 + 7) = v33;
      (*(v11 + 32))(&v35[v34], &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
      *&v35[(v12 + v34 + 7) & 0xFFFFFFFFFFFFFFF8] = v49;

      v36 = v53;
      sub_223C29A24(a2);
      sub_223C3FE74(0, 0, v36, &unk_223C4AF48, v35);

LABEL_21:
      sub_223C2CF0C(v36, &unk_27D0B9A30, &unk_223C4AB88);
      return;
    }

    if (qword_280AEC1C8 != -1)
    {
      swift_once();
    }

    v37 = sub_223C481B8();
    __swift_project_value_buffer(v37, qword_280AEC1D0);
    v38 = sub_223C48198();
    v39 = sub_223C484A8();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_223C26000, v38, v39, "attempted to terminate session that never started", v40, 2u);
      MEMORY[0x223DF6270](v40, -1, -1);
    }

    if (a2)
    {

      v36 = v53;
      sub_223C483F8();
      v41 = sub_223C48418();
      __swift_storeEnumTagSinglePayload(v36, 0, 1, v41);
      v42 = swift_allocObject();
      v42[2] = 0;
      v42[3] = 0;
      v42[4] = a2;
      v42[5] = a3;

      sub_223C3FE74(0, 0, v36, &unk_223C4AF38, v42);

      v43 = a2;
LABEL_20:
      sub_223C28024(v43);
      goto LABEL_21;
    }
  }
}

uint64_t sub_223C42EF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_223C45A8C, 0, 0);
}

uint64_t sub_223C42F10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_223C42F30, 0, 0);
}

uint64_t sub_223C42F30()
{
  OUTLINED_FUNCTION_31();
  v1 = *(v0 + 24);
  (*(v0 + 16))();
  OUTLINED_FUNCTION_20_0();

  return v2();
}

void *sub_223C42F8C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_223C43FA8(*(a1 + 16), 0);
  v4 = sub_223C45414(&v6, v3 + 4, v2, a1);
  sub_223C4556C();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v3;
}

uint64_t sub_223C4301C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  v9 = sub_223C48218();
  v8[7] = v9;
  v10 = *(v9 - 8);
  v8[8] = v10;
  v11 = *(v10 + 64) + 15;
  v8[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_223C430E8, 0, 0);
}

uint64_t sub_223C430E8()
{
  OUTLINED_FUNCTION_19();
  if (qword_280AEC1C8 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v1 = v0[2];
  v2 = sub_223C481B8();
  v0[10] = __swift_project_value_buffer(v2, qword_280AEC1D0);

  v3 = sub_223C48198();
  sub_223C48488();
  v4 = OUTLINED_FUNCTION_46_0();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[2];
  if (v6)
  {
    v8 = OUTLINED_FUNCTION_52();
    *v8 = 134217984;
    *(v8 + 4) = *(v7 + 16);

    OUTLINED_FUNCTION_47_0();
    _os_log_impl(v9, v10, v11, v12, v13, 0xCu);
    v14 = OUTLINED_FUNCTION_8_1();
    MEMORY[0x223DF6270](v14);
  }

  else
  {
    v15 = v0[2];
  }

  v16 = v0[2];
  v17 = *(v16 + 16);
  v0[11] = v17;
  if (v17)
  {
    v0[12] = 0;
    v18 = *(v16 + 32);
    v0[13] = v18;
    v19 = *(MEMORY[0x277D857E0] + 4);

    v20 = swift_task_alloc();
    v0[14] = v20;
    *v20 = v0;
    v21 = OUTLINED_FUNCTION_17_0(v20);
    v22 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x282200460](v21, v18, v22);
  }

  else
  {
    v23 = swift_task_alloc();
    v24 = OUTLINED_FUNCTION_55(v23);
    *v24 = v25;
    OUTLINED_FUNCTION_16_1(v24);

    return sub_223C35E20();
  }
}

uint64_t sub_223C432B0()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_29();
  v2 = *(v1 + 112);
  v3 = *v0;
  OUTLINED_FUNCTION_4_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_35_0();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_223C43394()
{
  OUTLINED_FUNCTION_31();
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];

  if (v2 + 1 == v3)
  {
    v4 = swift_task_alloc();
    v5 = OUTLINED_FUNCTION_55(v4);
    *v5 = v6;
    OUTLINED_FUNCTION_16_1(v5);

    return sub_223C35E20();
  }

  else
  {
    v8 = v0[12] + 1;
    v0[12] = v8;
    v9 = *(v0[2] + 8 * v8 + 32);
    v0[13] = v9;
    v10 = *(MEMORY[0x277D857E0] + 4);

    v11 = swift_task_alloc();
    v0[14] = v11;
    *v11 = v0;
    v12 = OUTLINED_FUNCTION_17_0();
    v13 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x282200460](v12, v9, v13);
  }
}

uint64_t sub_223C4349C()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_29();
  v2 = *(v1 + 120);
  v3 = *v0;
  OUTLINED_FUNCTION_4_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_35_0();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

unint64_t sub_223C43580()
{
  OUTLINED_FUNCTION_20_1();
  v1 = v0[4];
  if (v1)
  {
    v3 = v0[8];
    v2 = v0[9];
    v5 = v0[6];
    v4 = v0[7];
    v6 = v0[5];

    v1();
    sub_223C48208();
    v7 = sub_223C481F8();
    (*(v3 + 8))(v2, v4);
    result = sub_223C481F8();
    v9 = v7 - result;
    if (v7 < result)
    {
      __break(1u);
      return result;
    }

    v10 = v0[10];
    v11 = sub_223C48198();
    v12 = sub_223C484C8();
    v13 = OUTLINED_FUNCTION_46_0();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = OUTLINED_FUNCTION_52();
      *v15 = 134217984;
      *(v15 + 4) = v9 / 0xF4240;
      _os_log_impl(&dword_223C26000, v11, v12, "Time taken to finish terminateSession: %llu ms", v15, 0xCu);
      OUTLINED_FUNCTION_10_1();
      MEMORY[0x223DF6270]();
    }

    v16 = v0[5];
    sub_223C28024(v0[4]);
  }

  v17 = v0[9];

  OUTLINED_FUNCTION_20_0();

  return v18();
}

void static _RTCReportingS.updateEarlyCacheLimit(newLimit:)(uint64_t a1)
{
  v2 = a1;
  if (qword_280AEC150 != -1)
  {
    OUTLINED_FUNCTION_18_1();
    a1 = swift_once();
  }

  v3 = qword_280AEC158;
  MEMORY[0x28223BE20](a1);
  OUTLINED_FUNCTION_38_0();
  *(v4 - 32) = v2;
  *(v4 - 24) = v1;
  *(v4 - 16) = v1;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7_1();
  *(v6 - 16) = sub_223C44DEC;
  *(v6 - 8) = v7;
  os_unfair_lock_lock(v3 + 4);
  sub_223C2BF1C();
  os_unfair_lock_unlock(v3 + 4);
}

void sub_223C43844(uint64_t a1)
{
  qword_27D0B9860 = a1;
  if (qword_280AEC1C8 != -1)
  {
    swift_once();
  }

  v1 = sub_223C481B8();
  __swift_project_value_buffer(v1, qword_280AEC1D0);
  v2 = sub_223C48198();
  v3 = sub_223C48498();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 134217984;
    *(v4 + 4) = qword_27D0B9860;
    _os_log_impl(&dword_223C26000, v2, v3, "updating eventCache limit to %ld based on client request", v4, 0xCu);
    MEMORY[0x223DF6270](v4, -1, -1);
  }
}

id static _RTCReportingS._privacyLogs()()
{
  v23[1] = *MEMORY[0x277D85DE8];
  v1 = sub_223C480C8();
  v2 = OUTLINED_FUNCTION_3(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v7);
  v8 = sub_223C48318();
  v9 = NSHomeDirectoryForUser(v8);

  if (v9)
  {
    sub_223C48328();
  }

  sub_223C48088();

  sub_223C480A8();
  v10 = *(v4 + 8);
  v11 = OUTLINED_FUNCTION_41_0();
  v10(v11);
  v12 = sub_223C480B8();
  if (v0)
  {

LABEL_8:
    v17 = MEMORY[0x277D84F90];
    goto LABEL_9;
  }

  if ((v12 & 1) == 0)
  {
    goto LABEL_8;
  }

  v13 = [objc_opt_self() defaultManager];
  v14 = sub_223C48098();
  v23[0] = 0;
  v15 = [v13 contentsOfDirectoryAtURL:v14 includingPropertiesForKeys:0 options:0 error:v23];

  v16 = v23[0];
  if (!v15)
  {
    v17 = v23[0];
    sub_223C48058();

    swift_willThrow();
    v22 = OUTLINED_FUNCTION_31_0();
    v10(v22);
    goto LABEL_10;
  }

  v17 = sub_223C483A8();
  v18 = v16;

LABEL_9:
  v19 = OUTLINED_FUNCTION_31_0();
  v10(v19);
LABEL_10:
  v20 = *MEMORY[0x277D85DE8];
  return v17;
}

id _RTCReportingS.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_223C43D54(uint64_t *a1)
{
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v3 = [v1 initWithSession_];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v3;
}

size_t sub_223C43DC0(size_t result, int64_t a2, char a3, uint64_t a4)
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
  v9 = sub_223C43EAC(v8, v7);
  v10 = *(type metadata accessor for EventValue() - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_223C44024(a4 + v11, v8, v9 + v11);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

size_t sub_223C43EAC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B9C58, &qword_223C4AFD8);
  v4 = *(type metadata accessor for EventValue() - 8);
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

void *sub_223C43FA8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B9C18, &qword_223C4AF60);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 8);
  return v4;
}

uint64_t sub_223C44024(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = type metadata accessor for EventValue(), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    v7 = type metadata accessor for EventValue();

    return MEMORY[0x2821FE828](a3, a1, a2, v7);
  }

  else if (a3 != a1)
  {

    return MEMORY[0x2821FE820](a3, a1, a2, result);
  }

  return result;
}

uint64_t sub_223C440F8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_223C29FE0();
  if (v6)
  {
    v7 = v5;
    v8 = *v2;
    swift_isUniquelyReferenced_nonNull_native();
    v26 = *v2;
    v9 = *(*v2 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0B9A40, &unk_223C4ABB0);
    v10 = OUTLINED_FUNCTION_58();
    OUTLINED_FUNCTION_57(v10, v11, v12, v13, v14, v15, v16, v17, v25, v26);
    v18 = *(v4 + 56);
    v19 = type metadata accessor for EventValue();
    OUTLINED_FUNCTION_3_0(v19);
    sub_223C2D02C(v18 + *(v20 + 72) * v7, a1);
    sub_223C48618();
    *v2 = v4;
    v21 = a1;
    v22 = 0;
    v23 = v19;
  }

  else
  {
    v23 = type metadata accessor for EventValue();
    v21 = a1;
    v22 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v21, v22, 1, v23);
}

double sub_223C44204@<D0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_223C29FE0();
  if (v6)
  {
    v7 = v5;
    v8 = *v2;
    swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    v9 = *(*v2 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B9BE8, &qword_223C4AD90);
    v10 = OUTLINED_FUNCTION_58();
    OUTLINED_FUNCTION_57(v10, v11, v12, v13, v14, v15, v16, v17, v19, v20);
    sub_223C2A050((*(v4 + 56) + 32 * v7), a1);
    sub_223C48618();
    *v2 = v4;
  }

  else
  {
    result = 0.0;
    *a1 = 0u;
    a1[1] = 0u;
  }

  return result;
}

uint64_t sub_223C442CC()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_223C3BA30();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  v6 = *v1;
  swift_isUniquelyReferenced_nonNull_native();
  v12 = *v1;
  v7 = *(*v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B9C38, &qword_223C4AFB8);
  sub_223C485F8();
  v8 = *(v12 + 48);
  v9 = sub_223C48188();
  (*(*(v9 - 8) + 8))(v8 + *(*(v9 - 8) + 72) * v5, v9);
  v10 = *(*(v12 + 56) + 8 * v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B9BC8, &qword_223C4AD78);
  sub_223C3F658();
  sub_223C48618();
  *v1 = v12;
  return v10;
}

uint64_t sub_223C443E8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_223C48188();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = sub_223C3BA30();
  if (__OFADD__(*(v11 + 16), (v13 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v14 = v12;
  v15 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B9C38, &qword_223C4AFB8);
  if ((sub_223C485F8() & 1) == 0)
  {
    goto LABEL_5;
  }

  v16 = *v3;
  v17 = sub_223C3BA30();
  if ((v15 & 1) != (v18 & 1))
  {
LABEL_11:
    result = sub_223C486C8();
    __break(1u);
    return result;
  }

  v14 = v17;
LABEL_5:
  v19 = *v3;
  if (v15)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v14);
    *(v20 + 8 * v14) = a1;
  }

  else
  {
    (*(v7 + 16))(v10, a2, v6);
    return sub_223C445A8(v14, v10, a1, v19);
  }
}

uint64_t sub_223C445A8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_223C48188();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_223C44660(uint64_t a1, uint64_t (*a2)(char *, unint64_t, uint64_t), uint64_t (*a3)(void *, uint64_t, uint64_t))
{
  v5 = a1;
  v14[1] = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  v7 = ((1 << v6) + 63) >> 6;
  v8 = 8 * v7;
  if ((v6 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v13 = swift_slowAlloc();
      v5 = sub_223C44914(v13, v7, v5, a3);
      OUTLINED_FUNCTION_10_1();
      MEMORY[0x223DF6270]();
      goto LABEL_5;
    }
  }

  MEMORY[0x28223BE20](a1);
  sub_223C2D650(0, v7, v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0));
  v9 = a2(v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v7, v5);
  if (v3)
  {
    swift_willThrow();
  }

  else
  {
    v5 = v9;
  }

LABEL_5:
  v10 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t sub_223C447D8(uint64_t result, uint64_t a2, uint64_t a3)
{
  v19 = result;
  v4 = 0;
  v5 = 0;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = *(*(a3 + 56) + 8 * v14);

    isCancelled = swift_task_isCancelled();

    if ((isCancelled & 1) == 0)
    {
      *(v19 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return sub_223C4499C(v19, a2, v4, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      return sub_223C4499C(v19, a2, v4, a3);
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_223C44914(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = a4(v7, a2, a3);

    return v8;
  }

  return result;
}

uint64_t sub_223C4499C(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v40 = a1;
  v48 = sub_223C48188();
  v7 = *(v48 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v48);
  v47 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v41 = &v35 - v11;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B9C20, &qword_223C4AF68);
  result = sub_223C48648();
  v13 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *v40;
  }

  v15 = 0;
  v37 = v7 + 16;
  v38 = result;
  v46 = v7 + 32;
  v16 = result + 64;
  v36 = a4;
  v39 = v7;
  v17 = v48;
  while (v14)
  {
    v18 = __clz(__rbit64(v14));
    v42 = (v14 - 1) & v14;
LABEL_16:
    v21 = v18 | (v15 << 6);
    v22 = a4[6];
    v45 = *(v7 + 72);
    v23 = v41;
    (*(v7 + 16))(v41, v22 + v45 * v21, v17);
    v24 = *(a4[7] + 8 * v21);
    v43 = *(v7 + 32);
    v43(v47, v23, v17);
    v13 = v38;
    v25 = *(v38 + 40);
    sub_223C3F658();
    v44 = v24;

    result = sub_223C482C8();
    v26 = -1 << *(v13 + 32);
    v27 = result & ~v26;
    v28 = v27 >> 6;
    if (((-1 << v27) & ~*(v16 + 8 * (v27 >> 6))) == 0)
    {
      v30 = 0;
      v31 = (63 - v26) >> 6;
      v7 = v39;
      while (++v28 != v31 || (v30 & 1) == 0)
      {
        v32 = v28 == v31;
        if (v28 == v31)
        {
          v28 = 0;
        }

        v30 |= v32;
        v33 = *(v16 + 8 * v28);
        if (v33 != -1)
        {
          v29 = __clz(__rbit64(~v33)) + (v28 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v29 = __clz(__rbit64((-1 << v27) & ~*(v16 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
    v7 = v39;
LABEL_25:
    *(v16 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
    result = (v43)(*(v13 + 48) + v29 * v45, v47, v48);
    *(*(v13 + 56) + 8 * v29) = v44;
    ++*(v13 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_31;
    }

    a4 = v36;
    v14 = v42;
    if (!a3)
    {
      return v13;
    }
  }

  v19 = v15;
  while (1)
  {
    v15 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      return v13;
    }

    v20 = v40[v15];
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v42 = (v20 - 1) & v20;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

unint64_t sub_223C44D4C()
{
  result = qword_280AEBDB0;
  if (!qword_280AEBDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280AEBDB0);
  }

  return result;
}

void sub_223C44DEC()
{
  v1 = v0[3];
  v2 = v0[4];
  sub_223C43844(v0[2]);
}

uint64_t getEnumTagSinglePayload for _RTCReportingS.Error(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for _RTCReportingS.Error(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_223C44FB0()
{
  result = qword_27D0B9C00;
  if (!qword_27D0B9C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B9C00);
  }

  return result;
}

unint64_t sub_223C45004()
{
  result = qword_280AEBDA8;
  if (!qword_280AEBDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280AEBDA8);
  }

  return result;
}

unint64_t sub_223C45058()
{
  result = qword_280AEBDA0;
  if (!qword_280AEBDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280AEBDA0);
  }

  return result;
}

unint64_t sub_223C450AC()
{
  result = qword_280AEBD88;
  if (!qword_280AEBD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280AEBD88);
  }

  return result;
}

uint64_t sub_223C45150(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6[0] = a1;
  v6[1] = a2;
  return v3(v6);
}

uint64_t sub_223C45188(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, a1[1]);
}

uint64_t sub_223C451B8()
{
  OUTLINED_FUNCTION_20_1();
  OUTLINED_FUNCTION_13_1();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_5_1(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_1_2(v2);

  return sub_223C42F10(v4, v5, v6, v7, v0);
}

uint64_t sub_223C45250()
{
  v3 = v1;
  v4 = sub_223C48218();
  OUTLINED_FUNCTION_26(v4);
  v6 = (*(v5 + 80) + 64) & ~*(v5 + 80);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_42_0();
  v9 = *(v0 + 48);
  v10 = *(v0 + 56);
  v12 = *(v0 + v11);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_223C34944;
  OUTLINED_FUNCTION_2_2();

  return sub_223C4301C(v14, v15, v16, v17, v2, v9, v10, v18);
}

uint64_t sub_223C4537C()
{
  OUTLINED_FUNCTION_20_1();
  OUTLINED_FUNCTION_13_1();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_5_1(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_1_2(v2);

  return sub_223C42EF0(v4, v5, v6, v7, v0);
}

uint64_t sub_223C45414(uint64_t result, void *a2, unint64_t a3, uint64_t a4)
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
      *v11 = *(*(a4 + 56) + ((v15 << 9) | (8 * v16)));
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      ++v11;

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

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_223C455D4()
{
  OUTLINED_FUNCTION_20_1();
  OUTLINED_FUNCTION_52_0();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_5_1(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_1_2(v3);

  return sub_223C41588(v5, v6, v7, v8, v1, v0);
}

void sub_223C45688()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_223C410CC(*(v0 + 16));
}

unint64_t sub_223C456A8()
{
  result = qword_27D0B9850;
  if (!qword_27D0B9850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B9850);
  }

  return result;
}

uint64_t sub_223C456FC()
{
  OUTLINED_FUNCTION_20_1();
  OUTLINED_FUNCTION_13_1();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_5_1(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_1_2(v2);

  return sub_223C3F798(v4, v5, v6, v7, v0);
}

uint64_t sub_223C45794()
{
  OUTLINED_FUNCTION_20_1();
  OUTLINED_FUNCTION_13_1();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_5_1(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_1_2(v2);

  return sub_223C3FAFC(v4, v5, v6, v7, v0);
}

uint64_t sub_223C4582C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_62(a1, a2, a3, a4);
  OUTLINED_FUNCTION_3_0(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_30_0();
  v9(v8);
  return v4;
}

uint64_t objectdestroy_74Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_223C458B8()
{
  OUTLINED_FUNCTION_20_1();
  OUTLINED_FUNCTION_13_1();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_5_1(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_1_2(v2);

  return sub_223C3FAFC(v4, v5, v6, v7, v0);
}

uint64_t sub_223C45950()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_51_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_5_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_4_1(v1);

  return v4(v3);
}

uint64_t sub_223C459F0(uint64_t a1, int a2)
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

uint64_t sub_223C45A30(uint64_t result, int a2, int a3)
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

void OUTLINED_FUNCTION_42_0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
}

uint64_t OUTLINED_FUNCTION_57(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = *(*(a10 + 48) + 16 * v10 + 8);
}

uint64_t OUTLINED_FUNCTION_58()
{

  return sub_223C485F8();
}

uint64_t OUTLINED_FUNCTION_59()
{

  return sub_223C485F8();
}

_OWORD *OUTLINED_FUNCTION_60()
{

  return sub_223C29B2C();
}

void OUTLINED_FUNCTION_61(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, os_log_t log)
{

  _os_log_impl(a1, log, v10, a4, v11, 2u);
}

uint64_t OUTLINED_FUNCTION_62(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

_OWORD *OUTLINED_FUNCTION_64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, uint64_t a12, uint64_t a13, __int128 a14)
{

  return sub_223C2A050(&a14, &a11);
}

BOOL static XPCObject.== infix(_:_:)()
{
  v0 = XPCObject.obj.getter();
  v1 = XPCObject.obj.getter();
  v2 = xpc_equal(v0, v1);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v2;
}

uint64_t RTCXPCDictionary.keys.getter(void *a1)
{
  count = xpc_dictionary_get_count(a1);
  v3 = MEMORY[0x277D84F90];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || count > *(v3 + 3) >> 1)
  {
    if (*(v3 + 2) <= count)
    {
      v5 = count;
    }

    else
    {
      v5 = *(v3 + 2);
    }

    v3 = sub_223C462A8(isUniquelyReferenced_nonNull_native, v5, 0, v3);
  }

  v13 = v3;
  v6 = swift_allocObject();
  *(v6 + 16) = &v13;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_223C463B0;
  *(v7 + 24) = v6;
  aBlock[4] = sub_223C463B8;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_223C45E88;
  aBlock[3] = &block_descriptor_1;
  v8 = _Block_copy(aBlock);

  xpc_dictionary_apply(a1, v8);
  _Block_release(v8);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v11 = v13;

    return v11;
  }

  return result;
}

uint64_t sub_223C45E28(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = sub_223C48378();
  v6 = v5;
  sub_223C46524();
  v7 = *(*a3 + 16);
  sub_223C46570(v7);
  v8 = *a3;
  *(v8 + 16) = v7 + 1;
  v9 = v8 + 16 * v7;
  *(v9 + 32) = v4;
  *(v9 + 40) = v6;
  return 1;
}

uint64_t sub_223C45E88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  swift_unknownObjectRetain();
  LOBYTE(v5) = v6(a2, a3);
  swift_unknownObjectRelease();
  return v5 & 1;
}

void (*RTCXPCDictionary.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
{
  v7 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v7;
  v7[1] = a3;
  v7[2] = v3;
  *v7 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0B9C60, qword_223C4B100);
  OUTLINED_FUNCTION_14(v8);
  v10 = *(v9 + 64);
  v7[3] = __swift_coroFrameAllocStub(v10);
  v11 = __swift_coroFrameAllocStub(v10);
  v7[4] = v11;
  v12 = *v3;
  OUTLINED_FUNCTION_20();
  v13 = sub_223C48348();
  v14 = xpc_dictionary_get_value(v12, (v13 + 32));

  XPCObject.init(_:)(v14, v11);
  return sub_223C45FD4;
}

void sub_223C45FD4(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[3];
  v4 = (*a1)[4];
  v6 = (*a1)[1];
  v5 = (*a1)[2];
  v7 = **a1;
  if (a2)
  {
    v8 = OUTLINED_FUNCTION_20();
    sub_223C2C474(v8, v9, &unk_27D0B9C60, qword_223C4B100);

    RTCXPCDictionary.subscript.setter(v3);
    sub_223C2CF0C(v4, &unk_27D0B9C60, qword_223C4B100);
  }

  else
  {
    v10 = (*a1)[1];

    RTCXPCDictionary.subscript.setter(v4);
  }

  free(v4);
  free(v3);

  free(v2);
}

Swift::Bool __swiftcall RTCXPCDictionary.contains(key:)(Swift::String key)
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0B9C60, qword_223C4B100);
  v4 = OUTLINED_FUNCTION_14(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - v7;
  v9 = sub_223C48348();
  v10 = xpc_dictionary_get_value(v2, (v9 + 32));

  XPCObject.init(_:)(v10, v8);
  v11 = type metadata accessor for XPCObject();
  LOBYTE(v10) = __swift_getEnumTagSinglePayload(v8, 1, v11) != 1;
  sub_223C2CF0C(v8, &unk_27D0B9C60, qword_223C4B100);
  return v10;
}

xpc_object_t sub_223C461A0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = RTCXPCDictionary.init(dictionaryLiteral:)(a1);
  *a2 = result;
  return result;
}

char *sub_223C461C8(uint64_t a1, uint64_t a2)
{
  result = sub_223C47FE8();
  v5 = result;
  if (result)
  {
    result = sub_223C48008();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v5 += a1 - result;
  }

  v6 = __OFSUB__(a2, a1);
  v7 = a2 - a1;
  if (v6)
  {
    __break(1u);
    goto LABEL_13;
  }

  v8 = sub_223C47FF8();
  if (v8 >= v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  if (v5)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  return xpc_data_create(v5, v10);
}

uint64_t sub_223C46250(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

char *sub_223C462A8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0B9C70, &qword_223C4B1D8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

uint64_t sub_223C463B8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1() & 1;
}

unint64_t sub_223C463E4()
{
  v0 = sub_223C464B8();
  if (v1 <= 0x3F)
  {
    v2 = sub_223C48188();
    if (v3 > 0x3F)
    {
      return v2;
    }

    else
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return v0;
}

unint64_t sub_223C464B8()
{
  result = qword_280AEC0E0;
  if (!qword_280AEC0E0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280AEC0E0);
  }

  return result;
}

char *sub_223C46524()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!result)
  {
    result = sub_223C462A8(result, *(v1 + 2) + 1, 1, v1);
    *v0 = result;
  }

  return result;
}

char *sub_223C46570(char *result)
{
  v2 = *(*v1 + 3);
  if ((result + 1) > (v2 >> 1))
  {
    result = sub_223C462A8((v2 > 1), (result + 1), 1, *v1);
    *v1 = result;
  }

  return result;
}

uint64_t XPCError.description.getter(void *a1)
{
  if (xpc_dictionary_get_string(a1, "XPCErrorDescription"))
  {
    return sub_223C48378();
  }

  else
  {
    return OUTLINED_FUNCTION_2_3();
  }
}

uint64_t XPCError.errorDescription.getter(void *a1)
{
  if (xpc_dictionary_get_string(a1, "XPCErrorDescription"))
  {
    return sub_223C48378();
  }

  else
  {
    return OUTLINED_FUNCTION_2_3();
  }
}

uint64_t XPCIncomingConnection.auditToken.getter()
{
  v2 = *MEMORY[0x277D85DE8];
  xpc_connection_get_audit_token();
  result = 0;
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

unsigned __int8 *XPCIncomingConnection.entitlementValue(forKey:)@<X0>(uint64_t a1@<X8>)
{
  sub_223C48348();
  v2 = xpc_connection_copy_entitlement_value();

  return XPCObject.init(_:)(v2, a1);
}

uint64_t XPCIncomingConnection.makeConnection(targetQ:delegate:)(void *a1, uint64_t a2, uint64_t a3, _xpc_connection_s *a4)
{
  type metadata accessor for XPCConnection();
  v8 = swift_allocObject();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  XPCConnection.init(conn:targetQ:delegate:)(a4, a1, a2, a3);
  return v8;
}

uint64_t XPCConnection.__allocating_init(conn:targetQ:delegate:)(_xpc_connection_s *a1, void *a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_3_2();
  v8 = swift_allocObject();
  XPCConnection.init(conn:targetQ:delegate:)(a1, a2, a3, a4);
  return v8;
}

uint64_t XPCConnection.delegate.getter()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v2 = *(v0 + 32);
  return result;
}

uint64_t XPCConnection.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 32) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*XPCConnection.delegate.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v1 + 32);
  v3[3] = Strong;
  v3[4] = v5;
  return sub_223C46A04;
}

void sub_223C46A04(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + 32) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v3[3];
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

uint64_t XPCConnection.__allocating_init(machService:targetQ:listen:delegate:)(uint64_t a1, uint64_t a2, void *a3, char a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_3_2();
  v12 = swift_allocObject();
  XPCConnection.init(machService:targetQ:listen:delegate:)(a1, a2, a3, a4, a5, a6);
  return v12;
}

void *XPCConnection.init(machService:targetQ:listen:delegate:)(uint64_t a1, uint64_t a2, void *a3, char a4, uint64_t a5, uint64_t a6)
{
  v6[4] = 0;
  swift_unknownObjectWeakInit();
  if (a4)
  {
    v10 = 1;
  }

  else
  {
    v10 = 2;
  }

  v11 = sub_223C48348();
  v12 = a3;

  mach_service = xpc_connection_create_mach_service((v11 + 32), v12, v10);

  OUTLINED_FUNCTION_4_2();
  v6[4] = a6;
  swift_unknownObjectWeakAssign();
  v6[2] = mach_service;
  v6[5] = v12;
  v14 = swift_unknownObjectRetain();
  xpc_connection_set_target_queue(v14, v12);
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1_5();
  v19 = v15;
  v20 = &block_descriptor_2;
  v16 = _Block_copy(aBlock);

  xpc_connection_set_event_handler(mach_service, v16);
  _Block_release(v16);
  xpc_connection_activate(mach_service);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v6;
}

uint64_t sub_223C46C58(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(v1 + 32);
    v5 = MEMORY[0x223DF6570](a1);
    v6 = MEMORY[0x277D86480];
    ObjectType = swift_getObjectType();
    if (v5 == v6)
    {
      (*(v4 + 8))(a1, ObjectType, v4);
    }

    else
    {
      (*(v4 + 16))(a1, ObjectType, v4);
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void *XPCConnection.init(conn:targetQ:delegate:)(_xpc_connection_s *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4[4] = 0;
  swift_unknownObjectWeakInit();
  v4[2] = a1;
  OUTLINED_FUNCTION_4_2();
  v4[4] = a4;
  swift_unknownObjectWeakAssign();
  v4[5] = a2;
  swift_unknownObjectRetain();
  v8 = a2;
  xpc_connection_set_target_queue(a1, v8);
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1_5();
  v13 = v9;
  v14 = &block_descriptor_3;
  v10 = _Block_copy(aBlock);

  xpc_connection_set_event_handler(a1, v10);
  _Block_release(v10);
  xpc_connection_activate(a1);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return v4;
}

uint64_t sub_223C46E68()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

uint64_t XPCConnection.auditToken.getter()
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 16);
  xpc_connection_get_audit_token();
  result = 0;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t XPCConnection.deinit()
{
  xpc_connection_cancel(*(v0 + 16));
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  sub_223C35CC0(v0 + 24);

  return v0;
}

uint64_t XPCConnection.__deallocating_deinit()
{
  XPCConnection.deinit();
  v0 = OUTLINED_FUNCTION_3_2();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

unint64_t sub_223C46FD4()
{
  result = qword_280AEBF00;
  if (!qword_280AEBF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280AEBF00);
  }

  return result;
}

RTCUtility::XPCMessage::MessageType_optional __swiftcall XPCMessage.MessageType.init(rawValue:)(Swift::Int64 rawValue)
{
  if (rawValue >= 5)
  {
    LOBYTE(rawValue) = 5;
  }

  return rawValue;
}

uint64_t sub_223C47098(unsigned __int8 a1)
{
  sub_223C48758();
  MEMORY[0x223DF5980](a1);
  return sub_223C48788();
}

uint64_t sub_223C47118(uint64_t a1, unsigned __int8 a2)
{
  sub_223C48758();
  MEMORY[0x223DF5980](a2);
  return sub_223C48788();
}

RTCUtility::XPCMessage::MessageType_optional sub_223C4715C@<W0>(Swift::Int64 *a1@<X0>, RTCUtility::XPCMessage::MessageType_optional *a2@<X8>)
{
  result.value = XPCMessage.MessageType.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t sub_223C47188@<X0>(uint64_t *a1@<X8>)
{
  result = XPCMessage.MessageType.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

void XPCMessage.init(fromXPC:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0B9C60, qword_223C4B100);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  swift_getObjectType();
  OS_xpc_object.type()();
}

void *sub_223C47230(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (a1 == MEMORY[0x277D86468])
  {
    v16 = xpc_dictionary_get_value(v15, "type");
    XPCObject.init(_:)(v16, v14);
    v17 = type metadata accessor for XPCObject();
    if (__swift_getEnumTagSinglePayload(v14, 1, v17) == 1)
    {
      swift_unknownObjectRelease();
      sub_223C30D7C(v14);
      return 0;
    }

    if (swift_getEnumCaseMultiPayload() != 3)
    {
      swift_unknownObjectRelease();
      sub_223C3058C(v14);
      return 0;
    }

    if (XPCMessage.MessageType.init(rawValue:)(*v14).value != RTCUtility_XPCMessage_MessageType_unknownDefault)
    {
      return v15;
    }
  }

  swift_unknownObjectRelease();
  return 0;
}

uint64_t XPCMessage.description.getter(void *a1, char a2)
{
  v41 = type metadata accessor for XPCObject();
  v39 = *(v41 - 8);
  v4 = *(v39 + 64);
  MEMORY[0x28223BE20](v41);
  isUniquelyReferenced_nonNull_native = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0B9C60, qword_223C4B100);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v38 - v9;
  v46 = 0;
  v47 = 0xE000000000000000;
  LOBYTE(v45) = a2;
  sub_223C485E8();
  MEMORY[0x223DF5570](2683, 0xE200000000000000);
  v40 = a1;
  v11 = RTCXPCDictionary.keys.getter(a1);
  v12 = 0;
  v42 = *(v11 + 16);
  v13 = MEMORY[0x277D84F98];
  v43 = v11;
  v14 = (v11 + 40);
  while (1)
  {
    if (v42 == v12)
    {

      v34 = sub_223C48268();
      v36 = v35;

      MEMORY[0x223DF5570](v34, v36);

      MEMORY[0x223DF5570](125, 0xE100000000000000);
      return v46;
    }

    if (v12 >= *(v43 + 16))
    {
      break;
    }

    v44 = v12;
    v15 = *(v14 - 1);
    v16 = *v14;
    v17 = v14;
    v18 = sub_223C48348();

    v19 = xpc_dictionary_get_value(v40, (v18 + 32));

    XPCObject.init(_:)(v19, v10);
    if (__swift_getEnumTagSinglePayload(v10, 1, v41) == 1)
    {
      goto LABEL_18;
    }

    sub_223C307C0(v10, isUniquelyReferenced_nonNull_native);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v45 = v13;
    v20 = sub_223C29FE0();
    if (__OFADD__(*(v13 + 16), (v21 & 1) == 0))
    {
      goto LABEL_16;
    }

    v22 = v20;
    v23 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B9C90, &qword_223C4B440);
    if (sub_223C485F8())
    {
      v24 = sub_223C29FE0();
      if ((v23 & 1) != (v25 & 1))
      {
        goto LABEL_19;
      }

      v22 = v24;
    }

    if (v23)
    {

      v13 = v45;
      v26 = OUTLINED_FUNCTION_0_6();
      sub_223C476A0(v26, v27);
    }

    else
    {
      v13 = v45;
      *(v45 + 8 * (v22 >> 6) + 64) |= 1 << v22;
      v28 = (*(v13 + 48) + 16 * v22);
      *v28 = v15;
      v28[1] = v16;
      v29 = OUTLINED_FUNCTION_0_6();
      sub_223C307C0(v29, v30);
      v31 = *(v13 + 16);
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        goto LABEL_17;
      }

      *(v13 + 16) = v33;
    }

    v14 = v17 + 2;
    v12 = v44 + 1;
  }

  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_223C486C8();
  __break(1u);
  return result;
}

uint64_t sub_223C476A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for XPCObject();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_223C47708()
{
  result = qword_27D0B9C98;
  if (!qword_27D0B9C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B9C98);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for XPCMessage.MessageType(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for XPCMessage.MessageType(_BYTE *result, unsigned int a2, unsigned int a3)
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

void __createAWDAdaptorInstance_block_invoke_cold_1(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = @"/System/Library/PrivateFrameworks/AVConference.framework/Frameworks/GKSPerformance.framework";
  _os_log_error_impl(&dword_223C26000, log, OS_LOG_TYPE_ERROR, "invokeAWDAdaptorForReporter unable to find AWDAdaptor at %@", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}