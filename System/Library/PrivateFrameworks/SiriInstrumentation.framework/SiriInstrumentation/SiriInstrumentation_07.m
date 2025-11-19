void static MessageContainsSensitiveFields.sensitiveTagPaths(for:)(uint64_t a1)
{
  v34 = a1;
  OUTLINED_FUNCTION_0_8(*MEMORY[0x1E69E9840]);
  v5 = v4(v2, v3);
  v6 = v5 + 64;
  v7 = 1 << *(v5 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v5 + 64);
  v10 = (v7 + 63) >> 6;
  v35 = v5;
  sub_1AA6519D4();
  v11 = 0;
  v33 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v12 = v11;
    if (!v9)
    {
      break;
    }

    v36 = 0;
LABEL_10:
    v13 = (v11 << 9) | (8 * __clz(__rbit64(v9)));
    v14 = *(*(v35 + 48) + v13);
    v15 = *(*(*(v35 + 56) + v13) + 32) & 0x3F;
    OUTLINED_FUNCTION_1_7();
    swift_bridgeObjectRetain_n();
    sub_1AA6519D4();
    v37 = v14;
    isStackAllocationSafe = sub_1AA6519D4();
    if (v15 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
    {
      MEMORY[0x1EEE9AC00](isStackAllocationSafe);
      sub_1A9CB909C(0, v1, &v32 - ((8 * v1 + 15) & 0x3FFFFFFFFFFFFFF0));
      OUTLINED_FUNCTION_3_5();
      v21 = sub_1A9CB9190(v17, v18, v19, v20);
      v22 = v1;
      if (v1)
      {

        swift_willThrow();

        __break(1u);
LABEL_26:

        OUTLINED_FUNCTION_20_1();
        __break(1u);
        return;
      }

      v23 = v21;
    }

    else
    {
      swift_slowAlloc();
      sub_1AA6519D4();
      sub_1AA6519D4();
      OUTLINED_FUNCTION_3_5();
      v23 = sub_1A9CB9100(v28, v29, v30, v31);
      v22 = v1;

      if (v1)
      {
        goto LABEL_26;
      }

      OUTLINED_FUNCTION_20_1();
    }

    v9 &= v9 - 1;
    v24 = v23[2];

    if (v24)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = sub_1A9CB8C54(0, v33[2] + 1, 1, v33);
      }

      v26 = v33[2];
      v25 = v33[3];
      v1 = v26 + 1;
      if (v26 >= v25 >> 1)
      {
        v33 = sub_1A9CB8C54((v25 > 1), v26 + 1, 1, v33);
      }

      v27 = v33;
      v33[2] = v1;
      v27[v26 + 4] = v37;
    }

    else
    {
    }
  }

  while (1)
  {
    v11 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
    }

    if (v11 >= v10)
    {
      break;
    }

    v9 = *(v6 + 8 * v11);
    ++v12;
    if (v9)
    {
      v36 = 0;
      goto LABEL_10;
    }
  }
}

void *sub_1A9CB8C54(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400B50);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400848);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1A9CB8D84(size_t result, int64_t a2, char a3, uint64_t a4)
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
  v9 = sub_1A9CB8E7C(v8, v7);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400B40) - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_1A9CB8FB0(a4 + v11, v8, v9 + v11);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

size_t sub_1A9CB8E7C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400B48);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400B40) - 8);
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

char *sub_1A9CB8F84(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[4 * a2] <= __dst)
  {
    return memmove(__dst, __src, 4 * a2);
  }

  return __src;
}

uint64_t sub_1A9CB8FB0(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400B40), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400B40);

    return MEMORY[0x1EEE6BD00](a3, a1, a2, v7);
  }

  else if (a3 != a1)
  {

    return MEMORY[0x1EEE6BCF8](a3, a1, a2, result);
  }

  return result;
}

uint64_t sub_1A9CB909C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_1AA738600;
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

void *sub_1A9CB9100(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
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

    v8 = sub_1A9CB9190(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_1A9CB9190(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v35 = 0;
    v20 = 0;
    v21 = 1 << *(a3 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & *(a3 + 56);
    v24 = (v21 + 63) >> 6;
LABEL_24:
    while (v23)
    {
      v25 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
LABEL_31:
      v34 = v25 | (v20 << 6);
      v28 = *(*(a3 + 48) + 4 * v34);
      sub_1AA651F94();
      sub_1AA651FC4();
      result = sub_1AA651FE4();
      v29 = ~(-1 << *(a4 + 32));
      while (1)
      {
        v30 = result & v29;
        if (((*(a4 + 56 + (((result & v29) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v29)) & 1) == 0)
        {
          break;
        }

        result = v30 + 1;
        if (*(*(a4 + 48) + 4 * v30) == v28)
        {
          *(v32 + ((v34 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v34;
          v19 = __OFADD__(v35++, 1);
          if (!v19)
          {
            goto LABEL_24;
          }

          __break(1u);
          goto LABEL_37;
        }
      }
    }

    v26 = v20;
    while (1)
    {
      v20 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v20 >= v24)
      {
LABEL_37:

        return sub_1A9CB94B8(v32, a2, v35, a3);
      }

      v27 = *(a3 + 56 + 8 * v20);
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v23 = (v27 - 1) & v27;
        goto LABEL_31;
      }
    }
  }

  else
  {
    v35 = 0;
    v6 = 0;
    v7 = 1 << *(a4 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(a4 + 56);
    v10 = (v7 + 63) >> 6;
LABEL_6:
    while (v9)
    {
      v11 = __clz(__rbit64(v9));
      v33 = (v9 - 1) & v9;
LABEL_13:
      v14 = *(*(a4 + 48) + 4 * (v11 | (v6 << 6)));
      sub_1AA651F94();
      sub_1AA651FC4();
      result = sub_1AA651FE4();
      v15 = ~(-1 << *(a3 + 32));
      do
      {
        v16 = result & v15;
        v17 = (result & v15) >> 6;
        v18 = 1 << (result & v15);
        if ((v18 & *(a3 + 56 + 8 * v17)) == 0)
        {
          v9 = v33;
          goto LABEL_6;
        }

        result = v16 + 1;
      }

      while (*(*(a3 + 48) + 4 * v16) != v14);
      v32[v17] |= v18;
      v19 = __OFADD__(v35++, 1);
      v9 = v33;
      if (v19)
      {
        goto LABEL_40;
      }
    }

    v12 = v6;
    while (1)
    {
      v6 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_37;
      }

      v13 = *(a4 + 56 + 8 * v6);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v33 = (v13 - 1) & v13;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1A9CB94B8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400B58);
  result = sub_1AA651D34();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + 4 * (v13 | (v11 << 6)));
    sub_1AA651F94();
    sub_1AA651FC4();
    result = sub_1AA651FE4();
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_30;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 48) + 4 * v20) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

id SISchemaTopLevelUnionType.innerMessage.getter()
{
  result = swift_dynamicCastObjCProtocolConditional();
  if (result)
  {
    return [result innerEvent];
  }

  return result;
}

id SISchemaTopLevelUnionType.innerMessageOrdinal.getter()
{
  result = swift_dynamicCastObjCProtocolConditional();
  if (result)
  {
    return [result whichInnerEventType];
  }

  return result;
}

uint64_t sub_1A9CB9780(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_1A9CBC5C0(a1);
  if (v2)
  {
    return sub_1AA6519D4();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A9CB97D0(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v2 = a1;
    v3 = sub_1AA651E64();

    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400BD8);
      swift_dynamicCast();
      return v6;
    }
  }

  else if (*(a2 + 16))
  {
    sub_1A9CBC644(a1);
    if (v5)
    {
    }
  }

  return 0;
}

uint64_t GroupedMessagesBuilder.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x1E69E7CC8];
  return result;
}

uint64_t GroupedMessagesBuilder.init()()
{
  result = v0;
  *(v0 + 16) = MEMORY[0x1E69E7CC8];
  return result;
}

uint64_t sub_1A9CB98D0(char *a1)
{
  v2 = v1;
  v4 = sub_1AA651944();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1();
  v10 = v9 - v8;
  v11 = OBJC_IVAR___SIOrderedEventInternal_logicalTimestamp;
  result = OUTLINED_FUNCTION_4_6();
  v13 = *&a1[v11];
  if (v13)
  {
    (*(v6 + 16))(v10, v13 + OBJC_IVAR___SILogicalTimestampInternal_clockIdentifier, v4);
    OUTLINED_FUNCTION_4_6();
    v14 = *(v2 + 16);
    sub_1AA6519D4();
    v15 = sub_1A9CB9780(v10, v14);

    if (v15)
    {
      v16 = v15;
    }

    else
    {
      v16 = MEMORY[0x1E69E7CC0];
    }

    sub_1A9C88910(0, qword_1ED92F580);
    if (GRPSchemaOrderedMessage.init(_:)(a1))
    {
      MEMORY[0x1AC5904D0]();
      if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1AA651B44();
      }

      sub_1AA651B54();
    }

    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *(v2 + 16);
    sub_1A9CBA92C(v16, v10, isUniquelyReferenced_nonNull_native, &qword_1EB400BF0);
    *(v2 + 16) = v18;
    swift_endAccess();
    return (*(v6 + 8))(v10, v4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t GRPSchemaOrderedMessage.init(_:)(char *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (!v2)
  {
    goto LABEL_9;
  }

  v3 = objc_allocWithZone(GRPSchemaSiriEventTypeUnion);
  v4 = v2;
  v5 = [v3 init];
  [v4 setSiriEventTypeUnion_];

  v6 = [v4 siriEventTypeUnion];
  if (v6)
  {
    v7 = v6;
    v8 = OBJC_IVAR___SIOrderedEventInternal_tluEvent;
    result = OUTLINED_FUNCTION_4_6();
    if (!*&a1[v8])
    {
      __break(1u);
      goto LABEL_13;
    }

    [v7 setEventType_];
  }

  v10 = [v4 siriEventTypeUnion];

  if (!v10 || (v11 = [v10 getEventType], v10, !v11))
  {

    return 0;
  }

  v12 = OBJC_IVAR___SIOrderedEventInternal_logicalTimestamp;
  result = OUTLINED_FUNCTION_4_6();
  v13 = *&a1[v12];
  if (v13)
  {
    [v4 setLogicalEventTimestampInNs_];
LABEL_9:

    return v2;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_1A9CB9C84()
{
  OUTLINED_FUNCTION_4_6();
  v0 = sub_1AA6519D4();
  v1 = sub_1A9CB9E90(v0);

  return v1;
}

id GRPSchemaGroupedMessagesClientEvent.init(clockId:)(uint64_t a1)
{
  v2 = sub_1AA651944();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1();
  v8 = v7 - v6;
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (result)
  {
    v10 = result;
    v11 = objc_allocWithZone(GRPSchemaGroupedMessagesGrouping);
    v12 = v10;
    v13 = [v11 init];
    [v12 setGroupedBy_];

    v14 = [v12 groupedBy];
    if (v14)
    {
      sub_1A9C88910(0, &qword_1ED92F780);
      (*(v4 + 16))(v8, a1, v2);
      v15 = sub_1A9C6DCB0(v8);
      [v14 setClockIdentifier_];
    }

    (*(v4 + 8))(a1, v2);
    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A9CB9E90(uint64_t a1)
{
  v51 = sub_1AA651944();
  v3 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v50 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400BE8);
  v5 = MEMORY[0x1EEE9AC00](v49);
  v48 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v47 = v37 - v7;
  v8 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v8)
  {
    v10 = a1;
    v37[1] = v1;
    v56 = MEMORY[0x1E69E7CC0];
    sub_1AA651DE4();
    v11 = sub_1A9CBACFC();
    v13 = v12;
    v15 = v14;
    v16 = v10 + 64;
    result = sub_1A9C88910(0, &qword_1ED92F570);
    v17 = 0;
    v44 = v3 + 16;
    v45 = result;
    v46 = v3;
    v42 = v10;
    v43 = v3 + 32;
    v39 = v13;
    v40 = v10 + 64;
    v38 = v10 + 72;
    v41 = v8;
    while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(v10 + 32))
    {
      v52 = v15;
      v18 = v11 >> 6;
      if ((*(v16 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
      {
        goto LABEL_21;
      }

      if (*(v10 + 36) != v13)
      {
        goto LABEL_22;
      }

      v54 = v13;
      v55 = 1 << v11;
      v53 = v17;
      v19 = v46;
      v20 = v47;
      v21 = *(v46 + 16);
      v22 = v51;
      v21(v47, *(v10 + 48) + *(v46 + 72) * v11, v51);
      v23 = *(*(v10 + 56) + 8 * v11);
      v24 = *(v19 + 32);
      v25 = v48;
      v24(v48, v20, v22);
      v26 = v50;
      *(v25 + *(v49 + 48)) = v23;
      v21(v26, v25, v22);
      sub_1AA6519D4();
      v27 = GRPSchemaGroupedMessagesClientEvent.init(clockId:)(v26);
      sub_1A9CBAC80(v23, v27);
      sub_1A9CBAD3C(v25);
      sub_1AA651DC4();
      sub_1AA651DF4();
      sub_1AA651E04();
      result = sub_1AA651DD4();
      v10 = v42;
      v28 = 1 << *(v42 + 32);
      if (v11 >= v28)
      {
        goto LABEL_23;
      }

      v16 = v40;
      v29 = v41;
      v30 = *(v40 + 8 * v18);
      if ((v30 & v55) == 0)
      {
        goto LABEL_24;
      }

      if (*(v42 + 36) != v54)
      {
        goto LABEL_25;
      }

      v31 = v30 & (-2 << (v11 & 0x3F));
      if (v31)
      {
        v28 = __clz(__rbit64(v31)) | v11 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v32 = v18 << 6;
        v33 = v18 + 1;
        v34 = (v38 + 8 * v18);
        while (v33 < (v28 + 63) >> 6)
        {
          v36 = *v34++;
          v35 = v36;
          v32 += 64;
          ++v33;
          if (v36)
          {
            result = sub_1A9CBADA4(v11, v54, v52 & 1);
            v28 = __clz(__rbit64(v35)) + v32;
            goto LABEL_17;
          }
        }

        result = sub_1A9CBADA4(v11, v54, v52 & 1);
      }

LABEL_17:
      v15 = 0;
      v17 = v53 + 1;
      v11 = v28;
      v13 = v39;
      if (v53 + 1 == v29)
      {
        return v56;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t GroupedMessagesBuilder.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

void __swiftcall GRPSchemaOrderedMessage.init(_:)(GRPSchemaOrderedMessage_optional *__return_ptr retstr, SISchemaOrderedAnyEvent a2)
{
  isa = a2.super.super.super.super.isa;
  v3 = [(objc_class *)a2.super.super.super.super.isa metadata:a2._event];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 timestamp];

    if (v5)
    {
      v6 = [v5 timestampInNanoseconds];

      v7 = [(objc_class *)isa event];
      v8 = v7;
      if (v7)
      {
        v9 = [v7 unwrap];

        if (v9)
        {
          v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
          if (v10)
          {
            v11 = v10;
            [v11 setLogicalEventTimestampInNs_];
            v12 = [objc_allocWithZone(GRPSchemaSiriEventTypeUnion) init];
            [v11 setSiriEventTypeUnion_];

            v13 = [v11 siriEventTypeUnion];
            if (v13)
            {
              [v13 setEventType_];
            }
          }
        }
      }
    }
  }
}

void __swiftcall GRPSchemaOrderedMessage.init(_:)(GRPSchemaOrderedMessage_optional *__return_ptr retstr, SISchemaAnyEvent *a2)
{
  v2 = a2;
  v3 = [(SISchemaAnyEvent *)a2 unwrap];
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = v3;
  objc_opt_self();
  v5.super.super.super.super.isa = swift_dynamicCastObjCClass();
  if (!v5.super.super.super.super.isa)
  {

    goto LABEL_7;
  }

  GRPSchemaOrderedMessage.init(_:)(v6, v5);
  v8 = v7;
  v4 = v7;

  if (v8)
  {
LABEL_7:
    v2 = v4;
LABEL_8:
  }
}

id sub_1A9CBA584(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_3_6(a1, a2);
  OUTLINED_FUNCTION_1_8();
  if (v6)
  {
    __break(1u);
    goto LABEL_13;
  }

  v7 = v4;
  v8 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400BE0);
  if ((OUTLINED_FUNCTION_5_5() & 1) == 0)
  {
    goto LABEL_5;
  }

  v9 = sub_1A9CBC644(v13);
  if ((v8 & 1) != (v10 & 1))
  {
LABEL_13:
    type metadata accessor for ComponentIdentifier();
    result = sub_1AA651F84();
    __break(1u);
    return result;
  }

  v7 = v9;
LABEL_5:
  v11 = *v3;
  if (v8)
  {
    *(v11[7] + 8 * v7) = v2;
  }

  else
  {
    sub_1A9CBAAC4(v7, v13, v2, v11);

    return v13;
  }
}

id sub_1A9CBA67C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_3_6(a1, a2);
  OUTLINED_FUNCTION_1_8();
  if (v6)
  {
    __break(1u);
    goto LABEL_13;
  }

  v7 = v4;
  v8 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400BD0);
  if ((OUTLINED_FUNCTION_5_5() & 1) == 0)
  {
    goto LABEL_5;
  }

  v9 = sub_1A9CBC644(v13);
  if ((v8 & 1) != (v10 & 1))
  {
LABEL_13:
    type metadata accessor for ComponentIdentifier();
    result = sub_1AA651F84();
    __break(1u);
    return result;
  }

  v7 = v9;
LABEL_5:
  v11 = *v3;
  if (v8)
  {
    *(v11[7] + 8 * v7) = v2;
  }

  else
  {
    sub_1A9CBAAC4(v7, v13, v2, v11);

    return v13;
  }
}

void sub_1A9CBA774(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1AA651944();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1();
  v12 = v11 - v10;
  sub_1A9CBC5C0(a3);
  OUTLINED_FUNCTION_1_8();
  if (v15)
  {
    __break(1u);
    goto LABEL_11;
  }

  v16 = v13;
  v17 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400BC0);
  if ((sub_1AA651E24() & 1) == 0)
  {
    goto LABEL_5;
  }

  v18 = sub_1A9CBC5C0(a3);
  if ((v17 & 1) != (v19 & 1))
  {
LABEL_11:
    sub_1AA651F84();
    __break(1u);
    return;
  }

  v16 = v18;
LABEL_5:
  v20 = *v3;
  if (v17)
  {
    v21 = (v20[7] + 16 * v16);
    *v21 = a1;
    v21[1] = a2;
    OUTLINED_FUNCTION_20();
  }

  else
  {
    (*(v8 + 16))(v12, a3, v6);
    sub_1A9CBAB08(v16, v12, a1, a2, v20);
    OUTLINED_FUNCTION_20();
  }
}

void sub_1A9CBA92C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v22 = sub_1AA651944();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1();
  v12 = v11 - v10;
  sub_1A9CBC5C0(a2);
  OUTLINED_FUNCTION_1_8();
  if (v15)
  {
    __break(1u);
    goto LABEL_11;
  }

  v16 = v13;
  v17 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(a4);
  if ((sub_1AA651E24() & 1) == 0)
  {
    goto LABEL_5;
  }

  v18 = sub_1A9CBC5C0(a2);
  if ((v17 & 1) != (v19 & 1))
  {
LABEL_11:
    sub_1AA651F84();
    __break(1u);
    return;
  }

  v16 = v18;
LABEL_5:
  v20 = *v4;
  if (v17)
  {
    *(v20[7] + 8 * v16) = a1;
    OUTLINED_FUNCTION_20();
  }

  else
  {
    (*(v8 + 16))(v12, a2, v22);
    sub_1A9CBABC8(v16, v12, a1, v20);
    OUTLINED_FUNCTION_20();
  }
}

unint64_t sub_1A9CBAAC4(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
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

uint64_t sub_1A9CBAB08(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = sub_1AA651944();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  v13 = (a5[7] + 16 * a1);
  *v13 = a3;
  v13[1] = a4;
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

uint64_t sub_1A9CBABC8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1AA651944();
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

void sub_1A9CBAC80(uint64_t a1, void *a2)
{
  sub_1A9C88910(0, qword_1ED92F580);
  v3 = sub_1AA651B24();
  [a2 setOrderedMessages_];
}

uint64_t sub_1A9CBAD3C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400BE8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A9CBADA4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

unint64_t OUTLINED_FUNCTION_3_6(uint64_t a1, uint64_t a2)
{

  return sub_1A9CBC644(a2);
}

uint64_t OUTLINED_FUNCTION_4_6()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_5_5()
{

  return sub_1AA651E24();
}

uint64_t sub_1A9CBAE10@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for UUIDRepresentation();
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A9CBB360(v2, v6);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = *v6;
    v7 = v6[1];
    Data.si_uuid()(v8, v7, a1);
    return sub_1A9C6BB4C(v8, v7);
  }

  else
  {
    v10 = sub_1AA651944();
    (*(*(v10 - 8) + 32))(a1, v6, v10);
    return __swift_storeEnumTagSinglePayload(a1, 0, 1, v10);
  }
}

uint64_t Data.si_uuid()@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a2 >> 62;
  v5 = 1;
  switch(a2 >> 62)
  {
    case 1uLL:
      LODWORD(v6) = HIDWORD(result) - result;
      if (!__OFSUB__(HIDWORD(result), result))
      {
        v6 = v6;
        goto LABEL_6;
      }

      __break(1u);
      goto LABEL_19;
    case 2uLL:
      v8 = *(result + 16);
      v7 = *(result + 24);
      v9 = __OFSUB__(v7, v8);
      v6 = v7 - v8;
      if (!v9)
      {
        goto LABEL_6;
      }

LABEL_19:
      __break(1u);
      goto LABEL_20;
    case 3uLL:
      goto LABEL_15;
    default:
      v6 = BYTE6(a2);
LABEL_6:
      if (v6 != 16)
      {
        goto LABEL_15;
      }

      if (v4 == 2)
      {
        v12 = *(result + 24);
        result = *(result + 16);
        v11 = v12;
LABEL_12:
        sub_1A9CBB210(result, v11);
        goto LABEL_14;
      }

      if (v4 == 1)
      {
        v10 = result >> 32;
        if (result >> 32 < result)
        {
LABEL_20:
          __break(1u);
          return result;
        }

        result = result;
        v11 = v10;
        goto LABEL_12;
      }

      sub_1AA651924();
LABEL_14:
      v5 = 0;
LABEL_15:
      v13 = sub_1AA651944();

      return __swift_storeEnumTagSinglePayload(a3, v5, 1, v13);
  }
}

uint64_t UUID.si_data()()
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = sub_1AA651934();
  v2[1] = v0;
  return sub_1A9CBB0F4(v2, &v3);
}

uint64_t sub_1A9CBB0F4(uint64_t a1, uint64_t a2)
{
  v8[3] = MEMORY[0x1E69E6290];
  v8[4] = MEMORY[0x1E6969DF8];
  v8[0] = a1;
  v8[1] = a2;
  v2 = __swift_project_boxed_opaque_existential_1(v8, MEMORY[0x1E69E6290]);
  v3 = *v2;
  if (*v2 && (v4 = v2[1], v5 = v4 - v3, v4 != v3))
  {
    if (v5 <= 14)
    {
      v6 = sub_1AA651844();
    }

    else if (v5 >= 0x7FFFFFFF)
    {
      v6 = MEMORY[0x1AC590210]();
    }

    else
    {
      v6 = MEMORY[0x1AC590220]();
    }
  }

  else
  {
    v6 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(v8);
  return v6;
}

uint64_t sub_1A9CBB1B0(uint64_t result)
{
  if (result)
  {
    return sub_1AA651924();
  }

  __break(1u);
  return result;
}

uint64_t sub_1A9CBB210(uint64_t a1, uint64_t a2)
{
  result = sub_1AA6517E4();
  v5 = result;
  if (result)
  {
    result = sub_1AA651804();
    if (__OFSUB__(a1, result))
    {
      goto LABEL_7;
    }

    v5 += a1 - result;
  }

  if (!__OFSUB__(a2, a1))
  {
    sub_1AA6517F4();
    return sub_1A9CBB1B0(v5);
  }

  __break(1u);
LABEL_7:
  __break(1u);
  return result;
}

uint64_t type metadata accessor for UUIDRepresentation()
{
  result = qword_1ED92F740;
  if (!qword_1ED92F740)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A9CBB2F8()
{
  result = sub_1AA651944();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1A9CBB360(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUIDRepresentation();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A9CBB3C4()
{
  sub_1A9CBB430();
  result = sub_1AA651C84();
  qword_1EB419B48 = result;
  return result;
}

unint64_t sub_1A9CBB430()
{
  result = qword_1EB400BF8;
  if (!qword_1EB400BF8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB400BF8);
  }

  return result;
}

uint64_t sub_1A9CBB474(uint64_t a1)
{
  swift_weakInit();
  *(v1 + 24) = 0;
  *(v1 + 32) = a1;
  swift_weakAssign();
  return v1;
}

uint64_t sub_1A9CBB4B4(void *a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  sub_1AA6519D4();
  v4 = sub_1A9CB97D0(a1, v3);

  if (!v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400BD8);
    swift_allocObject();
    v4 = sub_1A9CBB474(a1);
    swift_beginAccess();
    v5 = a1;

    sub_1A9CBD490(v6, v5);
    swift_endAccess();
  }

  return v4;
}

uint64_t sub_1A9CBB590(void *a1, void *a2)
{
  sub_1A9CBB4B4(a1);
  sub_1A9CBB4B4(a2);
  v4 = sub_1A9CB6F74();
  v5 = sub_1A9CB6F74();
  if (v4 != v5)
  {
    (*(*v2 + 272))(v4, v5);
  }

  sub_1A9CBB664();
}

uint64_t sub_1A9CBB664()
{
  *(v0 + 24) = 0;

  *(v0 + 32) = 0;
}

uint64_t _s19SiriInstrumentation21ConnectedComponentIdsCfd_0()
{

  return v0;
}

uint64_t sub_1A9CBB6CC(uint64_t a1, uint64_t a2)
{
  result = *(*(a1 + 32) + OBJC_IVAR___SIComponentIdentifier_componentName);
  if (result == 2)
  {
    if (*(*(a2 + 32) + OBJC_IVAR___SIComponentIdentifier_componentName) == 2)
    {
      return result;
    }
  }

  else if (result == 1 && *(*(a2 + 32) + OBJC_IVAR___SIComponentIdentifier_componentName) == 1)
  {
    return result;
  }

  sub_1A9CBB784(result);
  sub_1A9CBB784(*(*(a2 + 32) + OBJC_IVAR___SIComponentIdentifier_componentName));

  return swift_weakAssign();
}

uint64_t sub_1A9CBB784(int a1)
{
  result = sub_1A9CBB7C0(a1, &unk_1F1DE2E98);
  if (v3)
  {
    return a1 + 2;
  }

  return result;
}

uint64_t sub_1A9CBB7C0(int a1, uint64_t a2)
{
  for (i = 0; ; ++i)
  {
    if (*(a2 + 16) == i)
    {
      return 0;
    }

    if (*(a2 + 32 + 4 * i) == a1)
    {
      break;
    }
  }

  return i;
}

void *ConnectedComponentIds.__allocating_init()()
{
  result = swift_allocObject();
  result[4] = 0;
  result[2] = MEMORY[0x1E69E7CC8];
  result[3] = 0;
  return result;
}

void *ConnectedComponentIds.init()()
{
  result = v0;
  v0[4] = 0;
  v0[2] = MEMORY[0x1E69E7CC8];
  v0[3] = 0;
  return result;
}

uint64_t ConnectedComponentIds.__deallocating_deinit()
{
  v0 = _s19SiriInstrumentation21ConnectedComponentIdsCfd_0();

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

Swift::OpaquePointer_optional __swiftcall SISchemaRequestLink.componentIdEdges()()
{
  v1 = [v0 source];
  if (!v1)
  {
    goto LABEL_9;
  }

  v3 = v1;
  v4 = [v0 target];
  if (!v4)
  {

LABEL_9:
    v12 = 0;
    goto LABEL_10;
  }

  v5 = v4;
  type metadata accessor for ComponentIdentifier();
  v6 = v3;
  v7 = ComponentIdentifier.__allocating_init(requestLinkInfo:)(v6);
  if (!v7)
  {

    goto LABEL_9;
  }

  v8 = v7;
  v9 = v5;
  v10 = ComponentIdentifier.__allocating_init(requestLinkInfo:)(v9);
  if (!v10)
  {

    goto LABEL_9;
  }

  v11 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400C00);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1AA736E00;
  *(v12 + 32) = v8;
  *(v12 + 40) = v11;
  *(v12 + 48) = 1;

LABEL_10:
  v13 = v12;
  result.value._rawValue = v13;
  result.is_nil = v2;
  return result;
}

id SISchemaRequestLink.init(source:target:)(char *a1, char *a2)
{
  v4 = sub_1AA651944();
  MEMORY[0x1EEE9AC00](v4 - 8);
  OUTLINED_FUNCTION_1();
  v7 = v6 - v5;
  v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (v8)
  {
    v9 = objc_allocWithZone(SISchemaRequestLinkInfo);
    v10 = v8;
    v11 = [v9 init];
    [v10 setSource_];

    v12 = [v10 source];
    if (v12)
    {
      v13 = v12;
      [v12 setComponent_];
    }

    v14 = [v10 source];
    if (v14)
    {
      v15 = v14;
      v16 = sub_1A9C88910(0, &qword_1ED92F780);
      sub_1A9C6BD54(v7);
      v17 = sub_1A9C6DCB0(v7);
      OUTLINED_FUNCTION_14_2(v17);
    }

    v18 = [objc_allocWithZone(SISchemaRequestLinkInfo) init];
    [v10 setTarget_];

    v19 = [v10 target];
    if (v19)
    {
      v20 = v19;
      [v19 setComponent_];
    }

    v21 = [v10 target];

    if (v21)
    {
      v22 = sub_1A9C88910(0, &qword_1ED92F780);
      sub_1A9C6BD54(v7);
      v23 = sub_1A9C6DCB0(v7);
      OUTLINED_FUNCTION_14_2(v23);
    }
  }

  return v8;
}

Swift::OpaquePointer_optional __swiftcall RFGSchemaRFGClientEvent.componentIdEdges()()
{
  v1 = sub_1AA651944();
  MEMORY[0x1EEE9AC00](v1 - 8);
  OUTLINED_FUNCTION_1();
  v4 = v3 - v2;
  v5 = [v0 visualResponseShownLink];
  if (!v5)
  {
    goto LABEL_9;
  }

  v7 = v5;
  v8 = [v0 eventMetadata];
  v9 = v8;
  if (!v8)
  {

    goto LABEL_10;
  }

  v10 = [v8 rfId];

  if (!v10)
  {

LABEL_9:
    v9 = 0;
    goto LABEL_10;
  }

  v11 = [v7 turnId];
  if (!v11)
  {

    goto LABEL_9;
  }

  v12 = v11;
  SISchemaUUID.toNSUUID()(v4);
  v13 = type metadata accessor for ComponentIdentifier();
  v14 = objc_allocWithZone(v13);
  v15 = ComponentIdentifier.init(name:uuid:)(2, v4);
  SISchemaUUID.toNSUUID()(v4);
  v16 = objc_allocWithZone(v13);
  v17 = ComponentIdentifier.init(name:uuid:)(28, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400C00);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1AA736E00;
  *(v9 + 32) = v15;
  *(v9 + 40) = v17;
  *(v9 + 48) = 1;

LABEL_10:
  v18 = v9;
  result.value._rawValue = v18;
  result.is_nil = v6;
  return result;
}

Swift::OpaquePointer_optional __swiftcall ORCHSchemaORCHClientEvent.componentIdEdges()()
{
  v1 = sub_1AA651944();
  MEMORY[0x1EEE9AC00](v1 - 8);
  OUTLINED_FUNCTION_1();
  v4 = v3 - v2;
  v5 = [v0 subRequestContext];
  if (!v5)
  {
    goto LABEL_9;
  }

  v7 = v5;
  v8 = [v0 eventMetadata];
  v9 = v8;
  if (!v8)
  {

    goto LABEL_10;
  }

  v10 = [v8 requestId];

  if (!v10)
  {

LABEL_9:
    v9 = 0;
    goto LABEL_10;
  }

  v11 = [v7 subRequestId];
  if (!v11)
  {

    goto LABEL_9;
  }

  v12 = v11;
  SISchemaUUID.toNSUUID()(v4);
  v13 = type metadata accessor for ComponentIdentifier();
  v14 = objc_allocWithZone(v13);
  v15 = ComponentIdentifier.init(name:uuid:)(1, v4);
  SISchemaUUID.toNSUUID()(v4);
  v16 = objc_allocWithZone(v13);
  v17 = ComponentIdentifier.init(name:uuid:)(43, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400C00);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1AA736E00;
  *(v9 + 32) = v15;
  *(v9 + 40) = v17;
  *(v9 + 48) = 1;

LABEL_10:
  v18 = v9;
  result.value._rawValue = v18;
  result.is_nil = v6;
  return result;
}

uint64_t Graph<>.process(join:)(void *a1)
{
  v2 = v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v3 = OUTLINED_FUNCTION_5_6();
  result = v4(v3);
  if (!result)
  {
    return result;
  }

  v6 = *(result + 16);
  if (!v6)
  {
LABEL_28:
  }

  v7 = (result + 48);
  v8 = MEMORY[0x1E69E7CD0];
  while (1)
  {
    v9 = *(v7 - 1);
    v10 = *v7;
    v11 = *v2;
    v12 = *(*v2 + 16);
    v13 = *(v7 - 2);
    v14 = v9;
    if (v12 && (v15 = sub_1A9CBC644(v13), (v16 & 1) != 0))
    {
      v17 = *(*(v11 + 56) + 8 * v15);
      sub_1AA6519D4();
    }

    else
    {
      v17 = v8;
    }

    if ((v17 & 0xC000000000000001) != 0)
    {
      break;
    }

    v21 = v14;
    OUTLINED_FUNCTION_12_3();
    swift_isUniquelyReferenced_nonNull_native();
    v19 = OUTLINED_FUNCTION_3_7();
LABEL_14:

    swift_isUniquelyReferenced_nonNull_native();
    v31 = *v2;
    *v2 = 0x8000000000000000;
    v22 = OUTLINED_FUNCTION_3_7();
    sub_1A9CBA584(v22, v13);

    *v2 = v31;
    if (v10)
    {
      if (*(v31 + 16) && (v23 = sub_1A9CBC644(v14), (v24 & 1) != 0))
      {
        v25 = *(*(v31 + 56) + 8 * v23);
        sub_1AA6519D4();
      }

      else
      {
        v25 = v8;
      }

      if ((v25 & 0xC000000000000001) != 0)
      {
        if (v25 >= 0)
        {
          v25 &= 0xFFFFFFFFFFFFFF8uLL;
        }

        v26 = v13;
        OUTLINED_FUNCTION_12_3();
        result = sub_1AA651CE4();
        if (__OFADD__(result, 1))
        {
          goto LABEL_33;
        }

        sub_1A9CBC8F0(v25, result + 1);
        v27 = OUTLINED_FUNCTION_3_7();
        v28 = 1;
      }

      else
      {
        v29 = v13;
        OUTLINED_FUNCTION_12_3();
        swift_isUniquelyReferenced_nonNull_native();
        v27 = OUTLINED_FUNCTION_3_7();
      }

      swift_isUniquelyReferenced_nonNull_native();
      v32 = *v2;
      *v2 = 0x8000000000000000;
      v30 = OUTLINED_FUNCTION_3_7();
      sub_1A9CBA584(v30, v14);

      *v2 = v32;
    }

    else
    {
    }

    v7 += 24;
    if (!--v6)
    {
      goto LABEL_28;
    }
  }

  if (v17 >= 0)
  {
    v17 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  v18 = v14;
  OUTLINED_FUNCTION_12_3();
  result = sub_1AA651CE4();
  if (!__OFADD__(result, 1))
  {
    sub_1A9CBC8F0(v17, result + 1);
    v19 = OUTLINED_FUNCTION_3_7();
    v20 = 1;
    goto LABEL_14;
  }

  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

uint64_t Graph<>.process(_:)(void *a1)
{
  v14 = a1;
  sub_1A9C88910(0, &qword_1ED92F578);
  v2 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400C08);
  v3 = swift_dynamicCast();
  if ((v3 & 1) == 0)
  {
    return OUTLINED_FUNCTION_13_2(v3, v4, v5, v6, v7, v8, v9, v10, v12[0], v12[1], v13);
  }

  sub_1A9CBD9A0(v12, v15);
  Graph<>.process(join:)(v15);
  return __swift_destroy_boxed_opaque_existential_1(v15);
}

uint64_t Graph<>.process(_:)(uint64_t a1)
{
  v2 = OBJC_IVAR___SIOrderedEventInternal_tluEvent;
  result = swift_beginAccess();
  v4 = *(a1 + v2);
  if (v4)
  {
    v16 = v4;
    sub_1A9C88910(0, &qword_1ED92F578);
    v5 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400C08);
    if (swift_dynamicCast())
    {
      sub_1A9CBD9A0(v14, v17);
      Graph<>.process(join:)(v17);

      return __swift_destroy_boxed_opaque_existential_1(v17);
    }

    else
    {

      return OUTLINED_FUNCTION_13_2(v6, v7, v8, v9, v10, v11, v12, v13, v14[0], v14[1], v15);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::OpaquePointer_optional __swiftcall ConnectedComponentIds.process(_:)(SISchemaTopLevelUnionType a1)
{
  sub_1A9C88910(0, &qword_1ED92F578);
  v2 = a1.super.super.super.isa;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400C08);
  if (swift_dynamicCast())
  {
    __swift_project_boxed_opaque_existential_1(&v15, *(&v16 + 1));
    v3 = OUTLINED_FUNCTION_5_6();
    v5 = v4(v3);
    __swift_destroy_boxed_opaque_existential_1(&v15);
    if (v5)
    {
      v7 = *(v5 + 16);
      if (v7)
      {
        v8 = (v5 + 40);
        do
        {
          v9 = *v8;
          v10 = *(v8 - 1);
          v11 = v9;
          v12 = v10;
          v13 = v11;
          sub_1A9CBB590(v12, v13);

          v8 += 3;
          --v7;
        }

        while (v7);
      }
    }
  }

  else
  {
    v17 = 0;
    v15 = 0u;
    v16 = 0u;
    sub_1A9CBD938(&v15);
    v5 = 0;
  }

  v14 = v5;
  result.value._rawValue = v14;
  result.is_nil = v6;
  return result;
}

uint64_t ConnectedComponentIds.process(_:)(uint64_t a1)
{
  v2 = OBJC_IVAR___SIOrderedEventInternal_tluEvent;
  result = swift_beginAccess();
  v4 = *(a1 + v2);
  if (v4)
  {
    v5 = v4;
    v6 = ConnectedComponentIds.process(_:)(v5);

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1A9CBC5C0(uint64_t a1)
{
  sub_1AA651944();
  sub_1A9C6E030(&qword_1ED92F770);
  v2 = sub_1AA651A34();

  return sub_1A9CBC688(a1, v2);
}

unint64_t sub_1A9CBC644(uint64_t a1)
{
  v2 = sub_1AA651C64();

  return sub_1A9CBC830(a1, v2);
}

unint64_t sub_1A9CBC688(uint64_t a1, uint64_t a2)
{
  v13 = a1;
  v4 = sub_1AA651944();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v2 + 64;
  v12 = ~(-1 << *(v2 + 32));
  for (i = a2 & v12; ((1 << i) & *(v14 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v12)
  {
    (*(v5 + 16))(v7, *(v2 + 48) + *(v5 + 72) * i, v4);
    sub_1A9C6E030(&qword_1ED92F718);
    v9 = sub_1AA651A84();
    (*(v5 + 8))(v7, v4);
    if (v9)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_1A9CBC830(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = v2 + 64;
  v5 = ~(-1 << *(v2 + 32));
  for (i = a2 & v5; ((1 << i) & *(v4 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v5)
  {
    type metadata accessor for ComponentIdentifier();
    v7 = *(*(v3 + 48) + 8 * i);
    v8 = sub_1AA651C74();

    if (v8)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_1A9CBC8F0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400C20);
    v2 = sub_1AA651D24();
    v14 = v2;
    sub_1AA651CD4();
    while (1)
    {
      if (!sub_1AA651CF4())
      {

        return v2;
      }

      type metadata accessor for ComponentIdentifier();
      swift_dynamicCast();
      if (*(v2 + 24) <= *(v2 + 16))
      {
        sub_1A9CBCC54();
      }

      v2 = v14;
      result = sub_1AA651C64();
      v4 = v14 + 56;
      v5 = -1 << *(v14 + 32);
      v6 = result & ~v5;
      v7 = v6 >> 6;
      if (((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6))) == 0)
      {
        break;
      }

      v8 = __clz(__rbit64((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
      *(*(v14 + 48) + 8 * v8) = v13;
      ++*(v14 + 16);
    }

    v9 = 0;
    v10 = (63 - v5) >> 6;
    while (++v7 != v10 || (v9 & 1) == 0)
    {
      v11 = v7 == v10;
      if (v7 == v10)
      {
        v7 = 0;
      }

      v9 |= v11;
      v12 = *(v4 + 8 * v7);
      if (v12 != -1)
      {
        v8 = __clz(__rbit64(~v12)) + (v7 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

void sub_1A9CBCAAC()
{
  OUTLINED_FUNCTION_6_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400B58);
  v4 = sub_1AA651D14();
  if (!*(v1 + 16))
  {
LABEL_24:

    *v0 = v4;
    return;
  }

  v5 = 0;
  v6 = (v1 + 56);
  OUTLINED_FUNCTION_0_9();
  if (!v0)
  {
LABEL_4:
    v8 = v5;
    while (1)
    {
      v5 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        goto LABEL_26;
      }

      if (v5 >= v3)
      {
        break;
      }

      ++v8;
      if (v6[v5])
      {
        OUTLINED_FUNCTION_9_3();
        goto LABEL_9;
      }
    }

    v18 = 1 << *(v1 + 32);
    if (v18 >= 64)
    {
      sub_1A9CB909C(0, (v18 + 63) >> 6, v1 + 56);
    }

    else
    {
      *v6 = -1 << v18;
    }

    *(v1 + 16) = 0;
    goto LABEL_24;
  }

  while (1)
  {
    OUTLINED_FUNCTION_10_3();
LABEL_9:
    v9 = *(*(v1 + 48) + 4 * (v7 | (v5 << 6)));
    sub_1AA651F94();
    sub_1AA651FC4();
    sub_1AA651FE4();
    OUTLINED_FUNCTION_2_8();
    if (v10)
    {
      break;
    }

    OUTLINED_FUNCTION_8_4();
LABEL_18:
    OUTLINED_FUNCTION_1_9(v11);
    *(v17 + 4 * v16) = v9;
    ++*(v4 + 16);
    if (!v0)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_7_5();
  while (++v12 != v14 || (v13 & 1) == 0)
  {
    v15 = v12 == v14;
    if (v12 == v14)
    {
      v12 = 0;
    }

    v13 |= v15;
    if (*(v2 + 8 * v12) != -1)
    {
      OUTLINED_FUNCTION_11_2();
      goto LABEL_18;
    }
  }

LABEL_26:
  __break(1u);
}

uint64_t sub_1A9CBCC54()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400C20);
  result = sub_1AA651D14();
  v4 = result;
  if (!*(v2 + 16))
  {
LABEL_27:

    *v1 = v4;
    return result;
  }

  v5 = 0;
  v6 = (v2 + 56);
  v7 = 1 << *(v2 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v2 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = result + 56;
  if (!v9)
  {
LABEL_7:
    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v5 >= v10)
      {
        break;
      }

      v14 = v6[v5];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      sub_1A9CB909C(0, (v24 + 63) >> 6, v2 + 56);
    }

    else
    {
      *v6 = -1 << v24;
    }

    *(v2 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_12:
    v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
    result = sub_1AA651C64();
    v16 = -1 << *(v4 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
    {
      break;
    }

    v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    *(*(v4 + 48) + 8 * v19) = v15;
    ++*(v4 + 16);
    if (!v9)
    {
      goto LABEL_7;
    }
  }

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
    v23 = *(v11 + 8 * v18);
    if (v23 != -1)
    {
      v19 = __clz(__rbit64(~v23)) + (v18 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

void *sub_1A9CBCE78()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400B58);
  v2 = *v0;
  v3 = sub_1AA651D04();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14))
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

id sub_1A9CBCFB8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400C20);
  v2 = *v0;
  v3 = sub_1AA651D04();
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

void sub_1A9CBD108()
{
  OUTLINED_FUNCTION_6_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400B58);
  v4 = sub_1AA651D14();
  if (*(v1 + 16))
  {
    v5 = 0;
    OUTLINED_FUNCTION_0_9();
    if (v0)
    {
      while (1)
      {
        OUTLINED_FUNCTION_10_3();
LABEL_9:
        v8 = *(*(v1 + 48) + 4 * (v6 | (v5 << 6)));
        sub_1AA651F94();
        sub_1AA651FC4();
        sub_1AA651FE4();
        OUTLINED_FUNCTION_2_8();
        if (v9)
        {
          break;
        }

        OUTLINED_FUNCTION_8_4();
LABEL_18:
        OUTLINED_FUNCTION_1_9(v10);
        *(v16 + 4 * v15) = v8;
        ++*(v4 + 16);
        if (!v0)
        {
          goto LABEL_4;
        }
      }

      OUTLINED_FUNCTION_7_5();
      while (++v11 != v13 || (v12 & 1) == 0)
      {
        v14 = v11 == v13;
        if (v11 == v13)
        {
          v11 = 0;
        }

        v12 |= v14;
        if (*(v2 + 8 * v11) != -1)
        {
          OUTLINED_FUNCTION_11_2();
          goto LABEL_18;
        }
      }
    }

    else
    {
LABEL_4:
      v7 = v5;
      while (1)
      {
        v5 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        if (v5 >= v3)
        {
          goto LABEL_20;
        }

        ++v7;
        if (*(v1 + 56 + 8 * v5))
        {
          OUTLINED_FUNCTION_9_3();
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_20:

    *v0 = v4;
  }
}

uint64_t sub_1A9CBD280()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400C20);
  result = sub_1AA651D14();
  v4 = result;
  if (*(v2 + 16))
  {
    v23 = v0;
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    if (v8)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
LABEL_12:
        v14 = *(*(v2 + 48) + 8 * (v11 | (v5 << 6)));
        result = sub_1AA651C64();
        v15 = -1 << *(v4 + 32);
        v16 = result & ~v15;
        v17 = v16 >> 6;
        if (((-1 << v16) & ~*(v10 + 8 * (v16 >> 6))) == 0)
        {
          break;
        }

        v18 = __clz(__rbit64((-1 << v16) & ~*(v10 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v10 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
        *(*(v4 + 48) + 8 * v18) = v14;
        ++*(v4 + 16);
        if (!v8)
        {
          goto LABEL_7;
        }
      }

      v19 = 0;
      v20 = (63 - v15) >> 6;
      while (++v17 != v20 || (v19 & 1) == 0)
      {
        v21 = v17 == v20;
        if (v17 == v20)
        {
          v17 = 0;
        }

        v19 |= v21;
        v22 = *(v10 + 8 * v17);
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v12 = v5;
      while (1)
      {
        v5 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v5 >= v9)
        {

          v1 = v23;
          goto LABEL_25;
        }

        v13 = *(v2 + 56 + 8 * v5);
        ++v12;
        if (v13)
        {
          v11 = __clz(__rbit64(v13));
          v8 = (v13 - 1) & v13;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1A9CBD490(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) == 0)
  {
    goto LABEL_7;
  }

  if (v6 < 0)
  {
    v7 = *v2;
  }

  else
  {
    v7 = v6 & 0xFFFFFFFFFFFFFF8;
  }

  result = sub_1AA651CE4();
  if (!__OFADD__(result, 1))
  {
    *v3 = sub_1A9CBD528(v7, result + 1);
LABEL_7:
    swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    result = sub_1A9CBA67C(a1, a2);
    *v3 = v9;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A9CBD528(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400C18);
    v2 = sub_1AA651EB4();
    v17 = v2;
    sub_1AA651E44();
    while (1)
    {
      v3 = sub_1AA651E74();
      if (!v3)
      {

        return v2;
      }

      v15 = v3;
      type metadata accessor for ComponentIdentifier();
      swift_dynamicCast();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400BD8);
      swift_dynamicCast();
      v4 = *(v2 + 16);
      if (*(v2 + 24) <= v4)
      {
        sub_1A9CBFF40(v4 + 1, 1);
      }

      v2 = v17;
      result = sub_1AA651C64();
      v6 = v17 + 64;
      v7 = -1 << *(v17 + 32);
      v8 = result & ~v7;
      v9 = v8 >> 6;
      if (((-1 << v8) & ~*(v17 + 64 + 8 * (v8 >> 6))) == 0)
      {
        break;
      }

      v10 = __clz(__rbit64((-1 << v8) & ~*(v17 + 64 + 8 * (v8 >> 6)))) | v8 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v6 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
      *(*(v17 + 48) + 8 * v10) = v16;
      *(*(v17 + 56) + 8 * v10) = v15;
      ++*(v17 + 16);
    }

    v11 = 0;
    v12 = (63 - v7) >> 6;
    while (++v9 != v12 || (v11 & 1) == 0)
    {
      v13 = v9 == v12;
      if (v9 == v12)
      {
        v9 = 0;
      }

      v11 |= v13;
      v14 = *(v6 + 8 * v9);
      if (v14 != -1)
      {
        v10 = __clz(__rbit64(~v14)) + (v9 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1A9CBD738(uint64_t a1, char a2)
{
  v3 = *v2;
  v4 = sub_1AA651C64();
  v5 = ~(-1 << *(v3 + 32));
  v6 = 1;
  while (1)
  {
    v7 = v4 & v5;
    v8 = (v4 & v5) >> 6;
    v9 = 1 << (v4 & v5);
    v10 = v9 & *(v3 + 56 + 8 * v8);
    if (!v10)
    {
      break;
    }

    type metadata accessor for ComponentIdentifier();
    v11 = *(*(v3 + 48) + 8 * v7);
    v12 = sub_1AA651C74();

    if (v12)
    {
      v6 = 0;
      break;
    }

    v4 = v7 + 1;
  }

  v13 = *(v3 + 16);
  v14 = v13 + v6;
  if (__OFADD__(v13, v6))
  {
    __break(1u);
  }

  else
  {
    v15 = *(v3 + 24);
    v16 = v29;
    if (v15 < v14 || (a2 & 1) == 0)
    {
      if (a2)
      {
        sub_1A9CBCC54();
        goto LABEL_16;
      }

      if (v15 < v14)
      {
        sub_1A9CBD280();
LABEL_16:
        v17 = *v29;
        v18 = sub_1AA651C64();
        v19 = ~(-1 << *(v17 + 32));
        while (1)
        {
          v7 = v18 & v19;
          v8 = (v18 & v19) >> 6;
          v9 = 1 << (v18 & v19);
          if ((v9 & *(v17 + 56 + 8 * v8)) == 0)
          {
            v16 = v29;
            if (v10)
            {
              goto LABEL_27;
            }

            goto LABEL_21;
          }

          type metadata accessor for ComponentIdentifier();
          v20 = *(*(v17 + 48) + 8 * v7);
          v21 = sub_1AA651C74();

          if (v21)
          {
            break;
          }

          v18 = v7 + 1;
        }

        v16 = v29;
        if (!v10)
        {
          goto LABEL_27;
        }

        goto LABEL_24;
      }

      sub_1A9CBCFB8();
    }

    if (v10)
    {
LABEL_24:
      v27 = *(*v16 + 48);
      result = *(v27 + 8 * v7);
      *(v27 + 8 * v7) = a1;
      return result;
    }

LABEL_21:
    v22 = *v16;
    *(*v16 + 8 * v8 + 56) |= v9;
    *(*(v22 + 48) + 8 * v7) = a1;
    v23 = *(v22 + 16);
    v24 = __OFADD__(v23, 1);
    v25 = v23 + 1;
    if (!v24)
    {
      result = 0;
      *(v22 + 16) = v25;
      return result;
    }
  }

  __break(1u);
LABEL_27:
  type metadata accessor for ComponentIdentifier();
  result = sub_1AA651F74();
  __break(1u);
  return result;
}

uint64_t sub_1A9CBD938(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400C10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A9CBD9A0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t type metadata accessor for ConnectedComponentIds()
{
  result = qword_1ED92F608;
  if (!qword_1ED92F608)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_13_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, uint64_t a11)
{
  a11 = 0;
  a9 = 0u;
  a10 = 0u;

  return sub_1A9CBD938(&a9);
}

id OUTLINED_FUNCTION_14_2(uint64_t a1)
{

  return [v1 (v2 + 3192)];
}

void MessageContainsTier1Fields.applyPoliciesToTier1Fields(sensitiveConditions:)()
{
  OUTLINED_FUNCTION_0_10();
  while (v8)
  {
    v9 = v4;
LABEL_8:
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v11 = *(*(v0 + 48) + ((v9 << 8) | (4 * v10)));
    v12 = v11 > 7;
    v13 = (v5 << v11) & v7;
    if (!v12 && v13 != 0)
    {
      (*(v2 + 16))(v1, v2);
      return;
    }
  }

  while (1)
  {
    v9 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v9 >= v6)
    {
      return;
    }

    v8 = *(v3 + 8 * v9);
    ++v4;
    if (v8)
    {
      v4 = v9;
      goto LABEL_8;
    }
  }

  __break(1u);
}

void static MessageContainsTier1Fields.tier1FieldPaths(for:)()
{
  OUTLINED_FUNCTION_0_10();
  while (v8)
  {
    v9 = v4;
LABEL_8:
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v11 = *(*(v0 + 48) + ((v9 << 8) | (4 * v10)));
    v12 = v11 > 7;
    v13 = (v5 << v11) & v7;
    if (!v12 && v13 != 0)
    {
      (*(v2 + 24))(v1, v2);
      return;
    }
  }

  while (1)
  {
    v9 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v9 >= v6)
    {
      return;
    }

    v8 = *(v3 + 8 * v9);
    ++v4;
    if (v8)
    {
      v4 = v9;
      goto LABEL_8;
    }
  }

  __break(1u);
}

uint64_t sub_1A9CBDD48@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  *a2 = v4;
  return result;
}

BOOL sub_1A9CBDE24(unsigned __int8 *a1, unsigned __int8 a2)
{
  v3 = (*v2 & a2);
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

uint64_t sub_1A9CBDE5C@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *v2;
  if ((*v2 & result) != 0)
  {
    *v2 = v3 & ~result;
  }

  *a2 = v3 & result;
  a2[1] = (v3 & result) == 0;
  return result;
}

uint64_t sub_1A9CBDE90@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *v2;
  v4 = *v2 & result;
  *v2 |= result;
  *a2 = v4;
  a2[1] = (v3 & result) == 0;
  return result;
}

uint64_t sub_1A9CBDF90@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = StoragePolicyRealms.init(rawValue:)(*a1, &v4);
  *a2 = v4;
  a2[1] = 0;
  return result;
}

uint64_t sub_1A9CBDFD0@<X0>(_BYTE *a1@<X8>)
{
  result = StoragePolicyRealms.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1A9CBE010(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v4 = (a2 + 32);
    v5 = a1 & 0xFD;
    v6 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v8 = *v4++;
      v7 = v8;
      if (v8 == 1 || v7 == 4)
      {
        if (a1 < 4u)
        {
          goto LABEL_11;
        }
      }

      else if (!v5)
      {
LABEL_11:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1A9CBE4AC(0, *(v6 + 16) + 1, 1);
        }

        v11 = *(v6 + 16);
        v10 = *(v6 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_1A9CBE4AC(v10 > 1, v11 + 1, 1);
        }

        *(v6 + 16) = v11 + 1;
        *(v6 + 4 * v11 + 32) = v7;
      }

      if (!--v2)
      {
        return v6;
      }
    }
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t Sequence<>.filtered(by:)(uint64_t a1, uint64_t a2)
{
  v5 = *MEMORY[0x1EEE9AC00](a1);
  (*(v6 + 16))(&v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], v2, a2);
  v8[16] = v5;
  return sub_1AA651AE4();
}

BOOL sub_1A9CBE208(_DWORD *a1)
{
  if (*a1 == 4 || *a1 == 1)
  {
    v3 = -4;
  }

  else
  {
    v3 = -3;
  }

  return (v3 & *(v1 + 16)) == 0;
}

BOOL StorageSyndicationFilter.divergentPolicyForOffDevice.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    v4 = MEMORY[0x1E69E7CC0];
    v5 = (v1 + 32);
    v6 = *(*v0 + 16);
    do
    {
      v8 = *v5++;
      v7 = v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_2_9(*(v4 + 16));
      }

      v10 = *(v4 + 16);
      v9 = *(v4 + 24);
      if (v10 >= v9 >> 1)
      {
        OUTLINED_FUNCTION_1_10(v9);
      }

      *(v4 + 16) = v10 + 1;
      *(v4 + 4 * v10 + 32) = v7;
      --v6;
    }

    while (v6);
    v11 = MEMORY[0x1E69E7CC0];
    do
    {
      v13 = *v3++;
      v12 = v13;
      if (v13 == 4 || v12 == 1)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_2_9(*(v11 + 16));
        }

        v16 = *(v11 + 16);
        v15 = *(v11 + 24);
        if (v16 >= v15 >> 1)
        {
          OUTLINED_FUNCTION_1_10(v15);
        }

        *(v11 + 16) = v16 + 1;
        *(v11 + 4 * v16 + 32) = v12;
      }

      --v2;
    }

    while (v2);
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
    v11 = MEMORY[0x1E69E7CC0];
  }

  v17 = sub_1A9CAE168(v4, v11);

  return (v17 & 1) == 0;
}

uint64_t StorageSyndicationFilter.apply(anyEventType:data:realms:)(int a1, uint64_t a2, unint64_t a3, unsigned __int8 *a4)
{
  v8 = sub_1A9CBE010(*a4, *v4);
  v9 = v8;
  v10 = *(v8 + 16);
  if (!v10)
  {
    goto LABEL_9;
  }

  v11 = 32;
  while (v10)
  {
    v12 = *(v8 + v11);
    v11 += 4;
    --v10;
    if (v12 == 1)
    {

      return 0;
    }
  }

  v13 = SISchemaAnyEventType.messageType.getter(a1);
  if (v13 && (v14 = dynamic_cast_existential_1_conditional(v13)) != 0)
  {
    v16 = v14;
    v17 = v15;
    v18 = sub_1A9C952F4(v9);
    a2 = static PrivacySensitiveMessage.applyPolicies(sensitiveConditions:to:)(v18, a2, a3, v16, v17);
  }

  else
  {
LABEL_9:

    sub_1A9C6BAE0(a2, a3);
  }

  return a2;
}

uint64_t sub_1A9CBE4AC(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1A9CBE7AC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t dynamic_cast_existential_1_conditional(uint64_t a1)
{
  if (swift_conformsToProtocol2())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1A9CBE514()
{
  result = qword_1EB400C28;
  if (!qword_1EB400C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB400C28);
  }

  return result;
}

unint64_t sub_1A9CBE56C()
{
  result = qword_1EB400C30;
  if (!qword_1EB400C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB400C30);
  }

  return result;
}

unint64_t sub_1A9CBE5C0()
{
  result = qword_1EB3FED20;
  if (!qword_1EB3FED20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3FED20);
  }

  return result;
}

unint64_t sub_1A9CBE618()
{
  result = qword_1EB3FED18;
  if (!qword_1EB3FED18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3FED18);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StoragePolicyRealms(unsigned __int8 *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 255) >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 255) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 255;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        return 0;
      }

      return (*a1 | (v4 << 8)) - 255;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 255;
    }
  }

  return 0;
}

_BYTE *storeEnumTagSinglePayload for StoragePolicyRealms(_BYTE *result, int a2, int a3)
{
  if ((a3 + 255) >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 255) >> 8 < 0xFF)
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
    v6 = ((a2 - 1) >> 8) + 1;
    *result = a2 - 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
        goto LABEL_19;
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
        break;
      case 2:
        *(result + 1) = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *(result + 1) = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1A9CBE7AC(uint64_t result, int64_t a2, char a3, uint64_t a4)
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400C38);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 4);
      if (v5)
      {
LABEL_13:
        sub_1A9CB8F84((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    memcpy((v10 + 32), (a4 + 32), 4 * v8);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

SISchemaUUID_optional __swiftcall SISchemaOpaqueClientEvent.getComponentId()()
{
  v1 = [v0 componentId];
  v2 = [v1 uuid];

  v6 = v2;
  result.value._value = v3;
  result.value.super.super.super.isa = v6;
  result.is_nil = v5;
  result.value._hasValue = v4;
  return result;
}

id SISchemaOpaqueClientEvent.componentName.getter()
{
  result = [v0 componentId];
  if (result)
  {
    v2 = result;
    v3 = [result component];

    return v3;
  }

  return result;
}

uint64_t SessionBuilder.init(shouldInclude:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  v3 = MEMORY[0x1E69E7CC8];
  a3[2] = MEMORY[0x1E69E7CC8];
  a3[3] = v3;
  a3[4] = result;
  a3[5] = a2;
  return result;
}

void SessionBuilder.add(_:)(void *a1)
{
  v2 = v1;
  v4 = sub_1AA651944();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1();
  v10 = v9 - v8;
  sub_1A9C88910(0, &qword_1EB3FED00);
  v11 = a1;
  sub_1A9CBEC10();
  if (v12)
  {
    v13 = v12;
    v14 = OBJC_IVAR___SIOrderedEventInternal_logicalTimestamp;
    OUTLINED_FUNCTION_4_6();
    v15 = *&v11[v14];
    if (v15)
    {
      (*(v6 + 16))(v10, v15 + OBJC_IVAR___SILogicalTimestampInternal_clockIdentifier, v4);
      if (*(v2[2] + 16) && (sub_1A9CBC5C0(v10), (v16 & 1) != 0))
      {
        v17 = sub_1AA6519D4();
      }

      else
      {
        v17 = MEMORY[0x1E69E7CC0];
      }

      v21 = v17;
      v18 = v13;
      MEMORY[0x1AC5904D0]();
      if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1AA651B44();
      }

      sub_1AA651B54();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v20 = v2[2];
      sub_1A9CBA918(v21, v10, isUniquelyReferenced_nonNull_native);
      v2[2] = v20;
      if (!__OFADD__(*v2, 1))
      {
        ++*v2;
        sub_1A9CBEDB8(v11, v10);

        (*(v6 + 8))(v10, v4);
        return;
      }

      __break(1u);
    }

    __break(1u);
  }
}

void sub_1A9CBEC10()
{
  OUTLINED_FUNCTION_21();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4004E0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  OUTLINED_FUNCTION_3();
  v5 = v3 - v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v14 - v7;
  v9 = OBJC_IVAR___SIOrderedEventInternal_tluEvent;
  OUTLINED_FUNCTION_4_6();
  v10 = *&v1[v9];
  if (v10)
  {
    if (![v10 wrapAsAnyEvent])
    {

      goto LABEL_6;
    }

    v11 = OBJC_IVAR___SIOrderedEventInternal_logicalTimestamp;
    OUTLINED_FUNCTION_4_6();
    if (*&v1[v11])
    {
      v12 = OBJC_IVAR___SIOrderedEventInternal_messageUUID;
      OUTLINED_FUNCTION_4_6();
      sub_1A9C6DF78(&v1[v12], v8, &qword_1EB4004E0);
      v13 = OBJC_IVAR___SIOrderedEventInternal_testFingerprint;
      OUTLINED_FUNCTION_4_6();
      sub_1A9C6DF78(&v1[v13], v5, &qword_1EB4004E0);
      sub_1A9CBFAB0();

LABEL_6:
      OUTLINED_FUNCTION_20();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1A9CBEDB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A9CB4D2C();
  if (v4)
  {
    v10 = v4;
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5 && (v6 = sub_1A9CC0D04(v5), v7))
    {
      v8 = v6;
      v9 = v7;
      swift_isUniquelyReferenced_nonNull_native();
      v11 = *(v2 + 24);
      sub_1A9CBA774(v8, v9, a2);

      *(v2 + 24) = v11;
    }

    else
    {
    }
  }
}

void SessionBuilder.buildAll()()
{
  OUTLINED_FUNCTION_21();
  v1 = v0;
  v39 = sub_1AA651944();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1();
  v32 = v6 - v5;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400C40);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v32 - v8;
  v10 = v0[2];
  v11 = v10 + 64;
  v33 = MEMORY[0x1E69E7CC0];
  v40 = v10;
  v41 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_4_7();
  v14 = v13 & v12;
  v16 = (v15 + 63) >> 6;
  v37 = v3;
  v38 = v3 + 16;
  swift_bridgeObjectRetain_n();
  v17 = 0;
  v34 = v16;
  v35 = v11;
LABEL_2:
  v18 = v17;
  if (!v14)
  {
    goto LABEL_4;
  }

  do
  {
    v17 = v18;
LABEL_7:
    v19 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    v20 = v19 | (v17 << 6);
    v21 = v40;
    v22 = *(v37 + 16);
    v22(v9, *(v40 + 48) + *(v37 + 72) * v20, v39);
    v23 = *(*(v21 + 56) + 8 * v20);
    *&v9[*(v36 + 48)] = v23;
    v24 = v1[4];
    if (!v24)
    {
      sub_1AA6519D4();
LABEL_13:
      sub_1A9C88910(0, &qword_1EB4005B8);
      v30 = v32;
      v22(v32, v9, v39);
      sub_1AA6519D4();
      sub_1A9CBF1B4(v30, v23);
      v31 = sub_1A9C6DFD8(v9, &qword_1EB400C40);
      MEMORY[0x1AC5904D0](v31);
      if (*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1AA651B44();
      }

      sub_1AA651B54();
      v33 = v41;
      v16 = v34;
      v11 = v35;
      goto LABEL_2;
    }

    v25 = v1[3];
    sub_1AA6519D4();
    sub_1A9CC0570(v24);
    sub_1AA6519D4();
    v26 = v24(v9, v25);
    sub_1A9CC0580(v24);

    if (v26)
    {
      goto LABEL_13;
    }

    v27 = v1[1];
    v28 = __OFADD__(v27, 1);
    v29 = v27 + 1;
    if (v28)
    {
      goto LABEL_18;
    }

    v1[1] = v29;
    sub_1A9C6DFD8(v9, &qword_1EB400C40);
    v18 = v17;
    v16 = v34;
    v11 = v35;
  }

  while (v14);
LABEL_4:
  while (1)
  {
    v17 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v17 >= v16)
    {

      OUTLINED_FUNCTION_20();
      return;
    }

    v14 = *(v11 + 8 * v17);
    ++v18;
    if (v14)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
}

id sub_1A9CBF1B4(uint64_t a1, uint64_t a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = sub_1AA6518C4();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1();
  v9 = v8 - v7;
  v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (!v10)
  {
LABEL_11:
    __break(1u);
  }

  v11 = v10;
  v12 = objc_allocWithZone(SessionSchemaSessionId);
  v13 = v11;
  v14 = [v12 init];
  if (v14)
  {
    sub_1A9C88910(0, &qword_1ED92F780);
    v15 = v14;
    v27[0] = sub_1AA651934();
    v27[1] = v16;
    v17 = sub_1A9CBB0F4(v27, &v28);
    v19 = sub_1A9CBFA38(v17, v18);
    [v15 setSessionId_];
  }

  [v13 setSessionId_];
  sub_1A9CC0D68(a2, v13);
  sub_1AA6518B4();
  sub_1AA6518A4();
  v21 = v20;
  (*(v5 + 8))(v9, v3);
  v22 = v21 * 1000.0;
  if (COERCE__INT64(fabs(v21 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v22 <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v22 >= 9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  [v13 setCreationTimestampInMsSince1970_];

  sub_1AA651944();
  OUTLINED_FUNCTION_2_0();
  (*(v23 + 8))(v26);
  return v13;
}

void SessionBuilder.buildAllWithStatistics()()
{
  OUTLINED_FUNCTION_21();
  v1 = sub_1AA651944();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1();
  v58 = v6 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400C48);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v53 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400B40);
  OUTLINED_FUNCTION_0();
  v54 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_3();
  v55 = v13 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v53 = &v53 - v16;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400C40);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v53 - v18;
  v20 = v0[2] + 64;
  OUTLINED_FUNCTION_4_7();
  v23 = v22 & v21;
  v25 = (v24 + 63) >> 6;
  v64 = v3;
  v65 = v26;
  v67 = v3 + 16;
  v68 = v0;
  swift_bridgeObjectRetain_n();
  v27 = 0;
  v56 = MEMORY[0x1E69E7CC0];
  v57 = v9;
  v59 = v9 + 8;
  v60 = v25;
  v66 = v19;
  v61 = v20;
  v62 = v10;
LABEL_2:
  v28 = v27;
  if (!v23)
  {
    goto LABEL_4;
  }

  do
  {
    v27 = v28;
LABEL_7:
    v29 = __clz(__rbit64(v23)) | (v27 << 6);
    v30 = v65;
    v31 = *(v64 + 16);
    v31(v19, *(v65 + 48) + *(v64 + 72) * v29, v1);
    v32 = *(v30 + 56);
    v33 = v19;
    v34 = *(v32 + 8 * v29);
    *&v33[*(v63 + 48)] = v34;
    v35 = v68[4];
    if (!v35)
    {
      sub_1AA6519D4();
LABEL_12:
      v44 = v66;
      v31(v9, v66, v1);
      sub_1A9C88910(0, &qword_1EB4005B8);
      v45 = v58;
      v31(v58, v44, v1);
      sub_1AA6519D4();
      v46 = sub_1A9CBF1B4(v45, v34);
      v47 = [v46 wrapAsAnyEvent];

      if (v34 >> 62)
      {
        LODWORD(v43) = sub_1AA651CE4();
      }

      else
      {
        v43 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v20 = v61;
      v41 = v62;
      v42 = *(v62 + 48);
      *&v9[v42] = v47;
      v19 = v66;
      goto LABEL_15;
    }

    v36 = v68[3];
    sub_1AA6519D4();
    sub_1A9CC0570(v35);
    sub_1AA6519D4();
    v37 = v35(v33, v36);
    sub_1A9CC0580(v35);
    v9 = v57;

    if (v37)
    {
      goto LABEL_12;
    }

    v38 = v68[1];
    v39 = __OFADD__(v38, 1);
    v40 = v38 + 1;
    if (v39)
    {
      goto LABEL_26;
    }

    v68[1] = v40;
    v41 = v62;
    v42 = *(v62 + 48);
    v19 = v66;
    v31(v9, v66, v1);
    LODWORD(v43) = 0;
    *&v9[v42] = 1;
    v20 = v61;
LABEL_15:
    v23 &= v23 - 1;
    *&v59[v42] = v43;
    __swift_storeEnumTagSinglePayload(v9, 0, 1, v41);
    sub_1A9C6DFD8(v19, &qword_1EB400C40);
    if (__swift_getEnumTagSinglePayload(v9, 1, v41) != 1)
    {
      v48 = v53;
      sub_1A9CC0590(v9, v53);
      sub_1A9CC0590(v48, v55);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v56 = sub_1A9CB8D84(0, *(v56 + 16) + 1, 1, v56);
      }

      v50 = *(v56 + 16);
      v49 = *(v56 + 24);
      if (v50 >= v49 >> 1)
      {
        v56 = sub_1A9CB8D84(v49 > 1, v50 + 1, 1, v56);
      }

      v51 = v55;
      v52 = v56;
      *(v56 + 16) = v50 + 1;
      sub_1A9CC0590(v51, v52 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v50);
      v25 = v60;
      goto LABEL_2;
    }

    sub_1A9C6DFD8(v9, &qword_1EB400C48);
    v28 = v27;
    v25 = v60;
  }

  while (v23);
LABEL_4:
  while (1)
  {
    v27 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v27 >= v25)
    {

      sub_1A9CBF990(v56);
      OUTLINED_FUNCTION_20();
      return;
    }

    v23 = *(v20 + 8 * v27);
    ++v28;
    if (v23)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

uint64_t sub_1A9CBF990(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400C50);
    v2 = sub_1AA651EC4();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v4 = v2;
  sub_1A9CC07F8(a1, 1, &v4);
  return v4;
}

id sub_1A9CBFA38(uint64_t a1, unint64_t a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_1AA651874();
  v6 = [v4 initWithBytesAsData_];

  sub_1A9C6BB4C(a1, a2);
  return v6;
}

void sub_1A9CBFAB0()
{
  OUTLINED_FUNCTION_21();
  v52 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4004E0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  OUTLINED_FUNCTION_3();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v48 - v12;
  v14 = sub_1AA651944();
  OUTLINED_FUNCTION_0();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_3();
  v51 = v18 - v19;
  v21 = MEMORY[0x1EEE9AC00](v20);
  v49 = v48 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v24 = v48 - v23;
  v25 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (v25)
  {
    v26 = v25;
    [v26 setLogicalEventTimestampInNs_];
    v50 = v6;
    [v26 setEvent_];
    v27 = [objc_allocWithZone(SISchemaCommonEventMetadata) init];
    [v26 setMetadata_];

    sub_1A9C6DF78(v2, v13, &qword_1EB4004E0);
    v28 = v2;
    if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
    {
      sub_1A9C6DFD8(v13, &qword_1EB4004E0);
      v30 = v51;
      v29 = v52;
    }

    else
    {
      (*(v16 + 32))(v24, v13, v14);
      v31 = [v26 metadata];
      v30 = v51;
      v29 = v52;
      if (v31)
      {
        v32 = v31;
        v48[1] = sub_1A9C88910(0, &qword_1ED92F780);
        v33 = *(v16 + 16);
        v34 = v10;
        v35 = v29;
        v36 = v16;
        v37 = v30;
        v38 = v28;
        v39 = v49;
        v33(v49, v24, v14);
        v40 = v39;
        v28 = v38;
        v30 = v37;
        v16 = v36;
        v29 = v35;
        v10 = v34;
        v41 = sub_1A9C6DCB0(v40);
        [v32 setEventId_];
      }

      (*(v16 + 8))(v24, v14);
    }

    sub_1A9C6DF78(v29, v10, &qword_1EB4004E0);
    if (__swift_getEnumTagSinglePayload(v10, 1, v14) == 1)
    {

      OUTLINED_FUNCTION_6_5(v29);
      OUTLINED_FUNCTION_6_5(v28);
      OUTLINED_FUNCTION_6_5(v10);
    }

    else
    {
      (*(v16 + 32))(v30, v10, v14);
      v42 = [v26 metadata];
      if (v42)
      {
        v43 = v42;
        sub_1A9C88910(0, &qword_1ED92F780);
        v44 = v28;
        v45 = v49;
        (*(v16 + 16))(v49, v30, v14);
        v46 = v45;
        v28 = v44;
        v47 = sub_1A9C6DCB0(v46);
        [v43 setTestFingerprint_];
      }

      else
      {
        v47 = v50;
      }

      OUTLINED_FUNCTION_6_5(v29);
      OUTLINED_FUNCTION_6_5(v28);
      (*(v16 + 8))(v30, v14);
    }

    OUTLINED_FUNCTION_20();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1A9CBFF40(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400C18);
  result = sub_1AA651EA4();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_31:

LABEL_32:
    *v3 = v7;
    return result;
  }

  v31 = v2;
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

    if ((a2 & 1) == 0)
    {

      v3 = v31;
      goto LABEL_32;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v31;
    if (v30 >= 64)
    {
      sub_1A9CB909C(0, (v30 + 63) >> 6, v5 + 64);
    }

    else
    {
      *v9 = -1 << v30;
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
    v19 = *(*(v5 + 48) + 8 * v18);
    v20 = *(*(v5 + 56) + 8 * v18);
    if ((a2 & 1) == 0)
    {
      v21 = v19;
    }

    result = sub_1AA651C64();
    v22 = -1 << *(v7 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
    {
      break;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v14 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    *(*(v7 + 48) + 8 * v25) = v19;
    *(*(v7 + 56) + 8 * v25) = v20;
    ++*(v7 + 16);
    if (!v12)
    {
      goto LABEL_7;
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
    v29 = *(v14 + 8 * v24);
    if (v29 != -1)
    {
      v25 = __clz(__rbit64(~v29)) + (v24 << 6);
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_1A9CC01AC(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_1AA651944();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v45 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400C50);
  v44 = a2;
  result = sub_1AA651EA4();
  v10 = result;
  if (!*(v8 + 16))
  {
LABEL_32:

LABEL_33:
    *v3 = v10;
    return result;
  }

  v49 = v5;
  v11 = 0;
  v12 = (v8 + 64);
  v13 = 1 << *(v8 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(v8 + 64);
  v16 = (v13 + 63) >> 6;
  v40 = v2;
  v41 = (v6 + 16);
  v42 = v8;
  v43 = v6;
  v46 = (v6 + 32);
  v17 = result + 64;
  v18 = v45;
  if (!v15)
  {
LABEL_7:
    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v19 = __clz(__rbit64(v22));
        v20 = (v22 - 1) & v22;
        goto LABEL_12;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_33;
    }

    v39 = 1 << *(v8 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      sub_1A9CB909C(0, (v39 + 63) >> 6, v12);
    }

    else
    {
      *v12 = -1 << v39;
    }

    *(v8 + 16) = 0;
    goto LABEL_32;
  }

  while (1)
  {
    v19 = __clz(__rbit64(v15));
    v20 = (v15 - 1) & v15;
LABEL_12:
    v23 = v19 | (v11 << 6);
    v24 = *(v8 + 48) + *(v43 + 72) * v23;
    v25 = 16 * v23;
    v47 = *(v43 + 72);
    v48 = v20;
    if (v44)
    {
      (*v46)(v18, v24, v49);
      v26 = *(v8 + 56) + v25;
      v27 = *v26;
      v28 = *(v26 + 8);
    }

    else
    {
      (*v41)(v18, v24, v49);
      v29 = *(v8 + 56) + v25;
      v27 = *v29;
      v28 = *(v29 + 8);
      sub_1A9CC0C9C(*v29);
    }

    sub_1A9CC0CAC();
    result = sub_1AA651A34();
    v30 = -1 << *(v10 + 32);
    v31 = result & ~v30;
    v32 = v31 >> 6;
    if (((-1 << v31) & ~*(v17 + 8 * (v31 >> 6))) == 0)
    {
      break;
    }

    v33 = __clz(__rbit64((-1 << v31) & ~*(v17 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
    v18 = v45;
LABEL_24:
    *(v17 + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v33;
    result = (*v46)(*(v10 + 48) + v47 * v33, v18, v49);
    v38 = *(v10 + 56) + 16 * v33;
    *v38 = v27;
    *(v38 + 8) = v28;
    ++*(v10 + 16);
    v8 = v42;
    v15 = v48;
    if (!v48)
    {
      goto LABEL_7;
    }
  }

  v34 = 0;
  v35 = (63 - v30) >> 6;
  v18 = v45;
  while (++v32 != v35 || (v34 & 1) == 0)
  {
    v36 = v32 == v35;
    if (v32 == v35)
    {
      v32 = 0;
    }

    v34 |= v36;
    v37 = *(v17 + 8 * v32);
    if (v37 != -1)
    {
      v33 = __clz(__rbit64(~v37)) + (v32 << 6);
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_1A9CC0570(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1A9CC0580(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1A9CC0590(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400B40);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_19SiriInstrumentation14EnvelopeResultO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t __swift_memcpy12_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t sub_1A9CC0638(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 12))
  {
    return (*a1 + 2147483646);
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

  if ((v4 + 1) >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A9CC0694(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 12) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 12) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1A9CC06F4(uint64_t result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    v2 = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2;
  }

  *result = v2;
  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4UUIDVSDyACSSGSbIegngd_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
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

uint64_t sub_1A9CC075C(uint64_t a1, int a2)
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

uint64_t sub_1A9CC079C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

void sub_1A9CC07F8(uint64_t a1, char a2, void *a3)
{
  v47 = a3;
  v6 = sub_1AA651944();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v48 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400B40);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v13 = v38 - v12;
  v44 = *(a1 + 16);
  if (v44)
  {
    v38[1] = v3;
    v39 = v11;
    v14 = 0;
    v43 = &v13[*(v10 + 48)];
    v15 = *(v11 + 80);
    v41 = v7;
    v42 = a1 + ((v15 + 32) & ~v15);
    v46 = (v7 + 32);
    v40 = a1;
    while (1)
    {
      if (v14 >= *(a1 + 16))
      {
        __break(1u);
LABEL_18:
        __break(1u);
LABEL_19:
        __break(1u);
LABEL_20:
        sub_1AA651F84();
        __break(1u);
        goto LABEL_21;
      }

      sub_1A9C6DF78(v42 + *(v11 + 72) * v14, v13, &qword_1EB400B40);
      v16 = *v46;
      v17 = v48;
      v18 = v13;
      v19 = v6;
      (*v46)(v48, v13, v6);
      v20 = *v43;
      v45 = *(v43 + 2);
      v21 = *v47;
      v23 = sub_1A9CBC5C0(v17);
      v24 = v21[2];
      v25 = (v22 & 1) == 0;
      v26 = v24 + v25;
      if (__OFADD__(v24, v25))
      {
        goto LABEL_18;
      }

      v27 = v22;
      if (v21[3] >= v26)
      {
        if ((a2 & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400C58);
          sub_1AA651E34();
        }
      }

      else
      {
        sub_1A9CC01AC(v26, a2 & 1);
        v28 = sub_1A9CBC5C0(v48);
        if ((v27 & 1) != (v29 & 1))
        {
          goto LABEL_20;
        }

        v23 = v28;
      }

      v6 = v19;
      if (v27)
      {
        break;
      }

      v30 = v48;
      v31 = *v47;
      *(*v47 + 8 * (v23 >> 6) + 64) |= 1 << v23;
      v16(v31[6] + *(v41 + 72) * v23, v30, v19);
      v32 = v31[7] + 16 * v23;
      *v32 = v20;
      *(v32 + 8) = v45;
      v33 = v31[2];
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
        goto LABEL_19;
      }

      ++v14;
      v31[2] = v35;
      a2 = 1;
      v11 = v39;
      a1 = v40;
      v13 = v18;
      if (v44 == v14)
      {
        goto LABEL_13;
      }
    }

    v36 = swift_allocError();
    swift_willThrow();

    v51 = v36;
    v37 = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400C60);
    if ((swift_dynamicCast() & 1) == 0)
    {
      sub_1A9CC0C8C(v20);
      (*(v41 + 8))(v48, v6);

      return;
    }

LABEL_21:
    v49 = 0;
    v50 = 0xE000000000000000;
    sub_1AA651D54();
    MEMORY[0x1AC590480](0xD00000000000001BLL, 0x80000001AA789C20);
    sub_1AA651E14();
    MEMORY[0x1AC590480](39, 0xE100000000000000);
    sub_1AA651E84();
    __break(1u);
  }

  else
  {
LABEL_13:
  }
}

void sub_1A9CC0C8C(id a1)
{
  if (a1 != 1)
  {
  }
}

id sub_1A9CC0C9C(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

unint64_t sub_1A9CC0CAC()
{
  result = qword_1ED92F770;
  if (!qword_1ED92F770)
  {
    sub_1AA651944();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED92F770);
  }

  return result;
}

uint64_t sub_1A9CC0D04(void *a1)
{
  v1 = [a1 siriDeviceId];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1AA651AA4();

  return v3;
}

void sub_1A9CC0D68(uint64_t a1, void *a2)
{
  sub_1A9C88910(0, &qword_1EB3FED00);
  v3 = sub_1AA651B24();

  [a2 setEvents_];
}

uint64_t OUTLINED_FUNCTION_6_5(uint64_t a1)
{

  return sub_1A9C6DFD8(a1, v1);
}

uint64_t PrivacySensitiveMessage<>.applyPolicies(sensitiveConditions:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 40))();
}

{
  return (*(a3 + 40))();
}

uint64_t static PrivacySensitiveMessage<>.affectedFieldPaths(sensitiveConditions:)(uint64_t a1)
{
  static MessageContainsTier1Fields.tier1FieldPaths(for:)();
  v3 = v2;
  static MessageContainsSensitiveFields.sensitiveTagPaths(for:)(a1);
  sub_1A9CC152C(v4);
  return v3;
}

uint64_t static PrivacySensitiveMessage.applyPolicies(sensitiveConditions:to:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*((*(a5 + 16))(a1, a4, a5) + 16))
  {
    MEMORY[0x1AC590580]();
    a2 = sub_1AA651BB4();

    if (!v5)
    {
    }
  }

  else
  {

    sub_1A9C6BAE0(a2, a3);
  }

  return a2;
}

int64_t sub_1A9CC152C(uint64_t a1)
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

  result = sub_1A9CC162C(result, 1);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400848);
  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v7 = *(v6 + 16);
  v8 = __OFADD__(v7, v3);
  v9 = v7 + v3;
  if (!v8)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

void *sub_1A9CC162C(int64_t a1, char a2)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if (!result || a1 > v5[3] >> 1)
  {
    if (v5[2] <= a1)
    {
      v7 = a1;
    }

    else
    {
      v7 = v5[2];
    }

    result = sub_1A9CB8C54(result, v7, a2 & 1, v5);
    *v2 = result;
  }

  return result;
}

id SIReflectionHydrateProtoFromEventTypeAndData(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3 && (v4 = [SISchemaClientEvent getEventTypeClassForTag:a1]) != 0)
  {
    v5 = [[v4 alloc] initWithData:v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ACTVSchemaACTVTurnActivatedReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(SISchemaUUID);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !SISchemaUUIDReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        [a1 setTurnId:v13];
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t ANCSchemaANCAppNotificationMetadataReadFrom(void *a1, void *a2)
{
  for (i = a2; ; i = a2)
  {
    v5 = [i position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v37 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v37 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v37 & 0x7F) << v6;
      if ((v37 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    v14 = v13 >> 3;
    if ((v13 >> 3) == 1)
    {
      v29 = 0;
      v30 = 0;
      v31 = 0;
      while (1)
      {
        v38 = 0;
        v32 = [a2 position] + 1;
        if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
        {
          v34 = [a2 data];
          [v34 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v31 |= (v38 & 0x7F) << v29;
        if ((v38 & 0x80) == 0)
        {
          break;
        }

        v29 += 7;
        v12 = v30++ >= 9;
        if (v12)
        {
          v35 = 0;
          goto LABEL_55;
        }
      }

      if ([a2 hasError])
      {
        v35 = 0;
      }

      else
      {
        v35 = v31;
      }

LABEL_55:
      [a1 setCommsNotificationType:v35];
    }

    else if (v14 == 2)
    {
      v22 = 0;
      v23 = 0;
      v24 = 0;
      while (1)
      {
        v40 = 0;
        v25 = [a2 position] + 1;
        if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
        {
          v27 = [a2 data];
          [v27 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v24 |= (v40 & 0x7F) << v22;
        if ((v40 & 0x80) == 0)
        {
          break;
        }

        v22 += 7;
        v12 = v23++ >= 9;
        if (v12)
        {
          v28 = 0;
          goto LABEL_51;
        }
      }

      v28 = (v24 != 0) & ~[a2 hasError];
LABEL_51:
      [a1 setIsSmsEligible:v28];
    }

    else if (v14 == 3)
    {
      v15 = 0;
      v16 = 0;
      v17 = 0;
      while (1)
      {
        v39 = 0;
        v18 = [a2 position] + 1;
        if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
        {
          v20 = [a2 data];
          [v20 getBytes:&v39 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v17 |= (v39 & 0x7F) << v15;
        if ((v39 & 0x80) == 0)
        {
          break;
        }

        v15 += 7;
        v12 = v16++ >= 9;
        if (v12)
        {
          v21 = 0;
          goto LABEL_57;
        }
      }

      v21 = (v17 != 0) & ~[a2 hasError];
LABEL_57:
      [a1 setIsAskWithSiriEnabled:v21];
    }

    else
    {
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t ANCSchemaANCAudioDeviceReadFrom(void *a1, void *a2)
{
  for (i = a2; ; i = a2)
  {
    v5 = [i position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      return [a2 hasError] ^ 1;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v16 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v16 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v16 & 0x7F) << v6;
      if ((v16 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      if (v7++ >= 9)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      return [a2 hasError] ^ 1;
    }

    if ((v13 >> 3) == 2)
    {
      v14 = PBReaderReadString();
      [a1 setProductIdentifier:v14];
      goto LABEL_22;
    }

    if ((v13 >> 3) == 1)
    {
      v14 = PBReaderReadString();
      [a1 setVendorIdentifier:v14];
LABEL_22:

      continue;
    }

    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      break;
    }
  }

  return 0;
}

uint64_t ANCSchemaANCBackgroundContentReadFrom(void *a1, void *a2)
{
  for (i = a2; ; i = a2)
  {
    v5 = [i position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v29 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v29 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v29 & 0x7F) << v6;
      if ((v29 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    if ((v13 >> 3) == 1)
    {
      v21 = 0;
      v22 = 0;
      v23 = 0;
      while (1)
      {
        v30 = 0;
        v24 = [a2 position] + 1;
        if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
        {
          v26 = [a2 data];
          [v26 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v23 |= (v30 & 0x7F) << v21;
        if ((v30 & 0x80) == 0)
        {
          break;
        }

        v21 += 7;
        v12 = v22++ >= 9;
        if (v12)
        {
          v27 = 0;
          goto LABEL_45;
        }
      }

      if ([a2 hasError])
      {
        v27 = 0;
      }

      else
      {
        v27 = v23;
      }

LABEL_45:
      [a1 setMediaType:v27];
    }

    else if ((v13 >> 3) == 2)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      while (1)
      {
        v31 = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v31 & 0x7F) << v14;
        if ((v31 & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v12 = v15++ >= 9;
        if (v12)
        {
          v20 = 0;
          goto LABEL_41;
        }
      }

      v20 = (v16 != 0) & ~[a2 hasError];
LABEL_41:
      [a1 setIsFocusModeEnabled:v20];
    }

    else
    {
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t ANCSchemaANCClientEventReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v17) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17 & 0x7F) << v5;
        if ((v17 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v14 = objc_alloc_init(ANCSchemaANCUserResponseEvaluated);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !ANCSchemaANCUserResponseEvaluatedReadFrom(v14, a2))
          {
LABEL_40:

            return 0;
          }

          PBReaderRecallMark();
          [a1 setUserResponseEvaluated:v14];
          goto LABEL_36;
        }

        if (v13 == 4)
        {
          v14 = objc_alloc_init(ANCSchemaANCNotificationReceivedTier1);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !ANCSchemaANCNotificationReceivedTier1ReadFrom(v14, a2))
          {
            goto LABEL_40;
          }

          PBReaderRecallMark();
          [a1 setNotificationReceivedTier1:v14];
          goto LABEL_36;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v14 = objc_alloc_init(ANCSchemaANCClientEventMetadata);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !ANCSchemaANCClientEventMetadataReadFrom(v14, a2))
          {
            goto LABEL_40;
          }

          PBReaderRecallMark();
          [a1 setEventMetadata:v14];
          goto LABEL_36;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(ANCSchemaANCNotificationReceived);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !ANCSchemaANCNotificationReceivedReadFrom(v14, a2))
          {
            goto LABEL_40;
          }

          PBReaderRecallMark();
          [a1 setNotificationReceived:v14];
LABEL_36:

          goto LABEL_37;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_37:
      v15 = [a2 position];
    }

    while (v15 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t ANCSchemaANCClientEventMetadataReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16 & 0x7F) << v5;
        if ((v16 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(SISchemaUUID);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !SISchemaUUIDReadFrom(v13, a2))
        {
          goto LABEL_30;
        }

        PBReaderRecallMark();
        [a1 setAncId:v13];
LABEL_25:

        goto LABEL_27;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_27:
      v14 = [a2 position];
      if (v14 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = objc_alloc_init(SISchemaUUID);
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !SISchemaUUIDReadFrom(v13, a2))
    {
LABEL_30:

      return 0;
    }

    PBReaderRecallMark();
    [a1 setRequestId:v13];
    goto LABEL_25;
  }

  return [a2 hasError] ^ 1;
}

uint64_t ANCSchemaANCNotificationReceivedReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v59) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v59 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v59 & 0x7F) << v5;
        if ((v59 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 5)
      {
        if (v13 <= 7)
        {
          if (v13 == 6)
          {
            v35 = objc_alloc_init(SISchemaUUID);
            v59 = 0;
            v60 = 0;
            if (!PBReaderPlaceMark() || !SISchemaUUIDReadFrom(v35, a2))
            {
LABEL_124:

              return 0;
            }

            PBReaderRecallMark();
            [a1 setLinkId:v35];
            goto LABEL_78;
          }

          if (v13 == 7)
          {
            v35 = objc_alloc_init(ANCSchemaANCBackgroundContent);
            v59 = 0;
            v60 = 0;
            if (!PBReaderPlaceMark() || !ANCSchemaANCBackgroundContentReadFrom(v35, a2))
            {
              goto LABEL_124;
            }

            PBReaderRecallMark();
            [a1 setBackgroundContent:v35];
            goto LABEL_78;
          }
        }

        else
        {
          switch(v13)
          {
            case 8:
              v35 = objc_alloc_init(ANCSchemaANCAppNotificationMetadata);
              v59 = 0;
              v60 = 0;
              if (!PBReaderPlaceMark() || !ANCSchemaANCAppNotificationMetadataReadFrom(v35, a2))
              {
                goto LABEL_124;
              }

              PBReaderRecallMark();
              [a1 setNotificationMetadata:v35];
              goto LABEL_78;
            case 9:
              v50 = 0;
              v51 = 0;
              v52 = 0;
              while (1)
              {
                LOBYTE(v59) = 0;
                v53 = [a2 position] + 1;
                if (v53 >= [a2 position] && (v54 = objc_msgSend(a2, "position") + 1, v54 <= objc_msgSend(a2, "length")))
                {
                  v55 = [a2 data];
                  [v55 getBytes:&v59 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v52 |= (v59 & 0x7F) << v50;
                if ((v59 & 0x80) == 0)
                {
                  break;
                }

                v50 += 7;
                v11 = v51++ >= 9;
                if (v11)
                {
                  v56 = 0;
                  goto LABEL_120;
                }
              }

              if ([a2 hasError])
              {
                v56 = 0;
              }

              else
              {
                v56 = v52;
              }

LABEL_120:
              [a1 setBobbleEnabled:v56];
              goto LABEL_121;
            case 0xA:
              v21 = 0;
              v22 = 0;
              v23 = 0;
              while (1)
              {
                LOBYTE(v59) = 0;
                v24 = [a2 position] + 1;
                if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
                {
                  v26 = [a2 data];
                  [v26 getBytes:&v59 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v23 |= (v59 & 0x7F) << v21;
                if ((v59 & 0x80) == 0)
                {
                  break;
                }

                v21 += 7;
                v11 = v22++ >= 9;
                if (v11)
                {
                  v27 = 0;
                  goto LABEL_114;
                }
              }

              if ([a2 hasError])
              {
                v27 = 0;
              }

              else
              {
                v27 = v23;
              }

LABEL_114:
              [a1 setBobbleSupported:v27];
              goto LABEL_121;
          }
        }
      }

      else if (v13 <= 2)
      {
        if (v13 == 1)
        {
          v36 = 0;
          v37 = 0;
          v38 = 0;
          while (1)
          {
            LOBYTE(v59) = 0;
            v39 = [a2 position] + 1;
            if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
            {
              v41 = [a2 data];
              [v41 getBytes:&v59 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v38 |= (v59 & 0x7F) << v36;
            if ((v59 & 0x80) == 0)
            {
              break;
            }

            v36 += 7;
            v11 = v37++ >= 9;
            if (v11)
            {
              v42 = 0;
              goto LABEL_106;
            }
          }

          if ([a2 hasError])
          {
            v42 = 0;
          }

          else
          {
            v42 = v38;
          }

LABEL_106:
          [a1 setAnnouncementCategory:v42];
          goto LABEL_121;
        }

        if (v13 == 2)
        {
          v28 = 0;
          v29 = 0;
          v30 = 0;
          while (1)
          {
            LOBYTE(v59) = 0;
            v31 = [a2 position] + 1;
            if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
            {
              v33 = [a2 data];
              [v33 getBytes:&v59 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v30 |= (v59 & 0x7F) << v28;
            if ((v59 & 0x80) == 0)
            {
              break;
            }

            v28 += 7;
            v11 = v29++ >= 9;
            if (v11)
            {
              v34 = 0;
              goto LABEL_102;
            }
          }

          if ([a2 hasError])
          {
            v34 = 0;
          }

          else
          {
            v34 = v30;
          }

LABEL_102:
          [a1 setTargetPlatform:v34];
          goto LABEL_121;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v35 = objc_alloc_init(ANCSchemaANCAudioDevice);
            v59 = 0;
            v60 = 0;
            if (!PBReaderPlaceMark() || !ANCSchemaANCAudioDeviceReadFrom(v35, a2))
            {
              goto LABEL_124;
            }

            PBReaderRecallMark();
            [a1 setConnectedAudioDevice:v35];
LABEL_78:

            goto LABEL_121;
          case 4:
            v43 = 0;
            v44 = 0;
            v45 = 0;
            while (1)
            {
              LOBYTE(v59) = 0;
              v46 = [a2 position] + 1;
              if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 1, v47 <= objc_msgSend(a2, "length")))
              {
                v48 = [a2 data];
                [v48 getBytes:&v59 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v45 |= (v59 & 0x7F) << v43;
              if ((v59 & 0x80) == 0)
              {
                break;
              }

              v43 += 7;
              v11 = v44++ >= 9;
              if (v11)
              {
                v49 = 0;
                goto LABEL_116;
              }
            }

            v49 = (v45 != 0) & ~[a2 hasError];
LABEL_116:
            [a1 setIsTimeSensitiveAnnouncement:v49];
            goto LABEL_121;
          case 5:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            while (1)
            {
              LOBYTE(v59) = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v59 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v59 & 0x7F) << v14;
              if ((v59 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_110;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v16;
            }

LABEL_110:
            [a1 setAppCategory:v20];
            goto LABEL_121;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_121:
      v57 = [a2 position];
    }

    while (v57 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t ANCSchemaANCNotificationReceivedTier1ReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v24[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24[0] & 0x7F) << v5;
        if ((v24[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 1)
      {
        break;
      }

      if (v13 == 2)
      {
        v21 = PBReaderReadString();
        [a1 setAppBundleId:v21];
LABEL_33:

        goto LABEL_38;
      }

      if (v13 == 3)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        while (1)
        {
          LOBYTE(v24[0]) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:v24 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v24[0] & 0x7F) << v14;
          if ((v24[0] & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_37;
          }
        }

        v20 = (v16 != 0) & ~[a2 hasError];
LABEL_37:
        [a1 setIsRedactedDueToOptOut:v20];
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_38:
      v22 = [a2 position];
      if (v22 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v21 = objc_alloc_init(SISchemaUUID);
    v24[0] = 0;
    v24[1] = 0;
    if (!PBReaderPlaceMark() || !SISchemaUUIDReadFrom(v21, a2))
    {

      return 0;
    }

    PBReaderRecallMark();
    [a1 setLinkId:v21];
    goto LABEL_33;
  }

  return [a2 hasError] ^ 1;
}

uint64_t ANCSchemaANCServerEventReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16 & 0x7F) << v5;
        if ((v16 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(ANCSchemaANCServerEventMetadata);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !ANCSchemaANCServerEventMetadataReadFrom(v13, a2))
        {
          goto LABEL_30;
        }

        PBReaderRecallMark();
        [a1 setEventMetadata:v13];
LABEL_25:

        goto LABEL_27;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_27:
      v14 = [a2 position];
      if (v14 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = objc_alloc_init(ANCSchemaANCServerUserResponseEvaluated);
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !ANCSchemaANCServerUserResponseEvaluatedReadFrom(v13, a2))
    {
LABEL_30:

      return 0;
    }

    PBReaderRecallMark();
    [a1 setUserResponseEvaluated:v13];
    goto LABEL_25;
  }

  return [a2 hasError] ^ 1;
}

uint64_t ANCSchemaANCServerEventMetadataReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(SISchemaUUID);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !SISchemaUUIDReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        [a1 setAncId:v13];
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t ANCSchemaANCServerUserResponseEvaluatedReadFrom(void *a1, void *a2)
{
  for (i = a2; ; i = a2)
  {
    v5 = [i position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v22 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v22 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v22 & 0x7F) << v6;
      if ((v22 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    if ((v13 >> 3) == 1)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      while (1)
      {
        v23 = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v23 & 0x7F) << v14;
        if ((v23 & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v12 = v15++ >= 9;
        if (v12)
        {
          v20 = 0;
          goto LABEL_33;
        }
      }

      if ([a2 hasError])
      {
        v20 = 0;
      }

      else
      {
        v20 = v16;
      }

LABEL_33:
      [a1 setUserResponseCategory:v20];
    }

    else
    {
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t ANCSchemaANCUserResponseEvaluatedReadFrom(void *a1, void *a2)
{
  for (i = a2; ; i = a2)
  {
    v5 = [i position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v22 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v22 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v22 & 0x7F) << v6;
      if ((v22 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    if ((v13 >> 3) == 1)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      while (1)
      {
        v23 = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v23 & 0x7F) << v14;
        if ((v23 & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v12 = v15++ >= 9;
        if (v12)
        {
          v20 = 0;
          goto LABEL_33;
        }
      }

      if ([a2 hasError])
      {
        v20 = 0;
      }

      else
      {
        v20 = v16;
      }

LABEL_33:
      [a1 setUserResponseCategory:v20];
    }

    else
    {
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t ASRSchemaASRActiveConfigUpdateContextReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16 & 0x7F) << v5;
        if ((v16 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 102)
      {
        break;
      }

      if ((v12 >> 3) == 101)
      {
        v13 = objc_alloc_init(ASRSchemaASRActiveConfigUpdateStarted);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !ASRSchemaASRActiveConfigUpdateStartedReadFrom(v13, a2))
        {
          goto LABEL_30;
        }

        PBReaderRecallMark();
        [a1 setStartedOrChanged:v13];
LABEL_25:

        goto LABEL_27;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_27:
      v14 = [a2 position];
      if (v14 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = objc_alloc_init(ASRSchemaASRActiveConfigUpdateEnded);
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !ASRSchemaASRActiveConfigUpdateEndedReadFrom(v13, a2))
    {
LABEL_30:

      return 0;
    }

    PBReaderRecallMark();
    [a1 setEnded:v13];
    goto LABEL_25;
  }

  return [a2 hasError] ^ 1;
}

uint64_t ASRSchemaASRActiveConfigUpdateEndedReadFrom(void *a1, void *a2)
{
  for (i = a2; ; i = a2)
  {
    v5 = [i position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v22 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v22 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v22 & 0x7F) << v6;
      if ((v22 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    if ((v13 >> 3) == 1)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      while (1)
      {
        v23 = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v23 & 0x7F) << v14;
        if ((v23 & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v12 = v15++ >= 9;
        if (v12)
        {
          v20 = 0;
          goto LABEL_31;
        }
      }

      v20 = (v16 != 0) & ~[a2 hasError];
LABEL_31:
      [a1 setExists:v20];
    }

    else
    {
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t ASRSchemaASRActiveConfigUpdateStartedReadFrom(void *a1, void *a2)
{
  for (i = a2; ; i = a2)
  {
    v5 = [i position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v22 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v22 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v22 & 0x7F) << v6;
      if ((v22 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    if ((v13 >> 3) == 1)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      while (1)
      {
        v23 = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v23 & 0x7F) << v14;
        if ((v23 & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v12 = v15++ >= 9;
        if (v12)
        {
          v20 = 0;
          goto LABEL_31;
        }
      }

      v20 = (v16 != 0) & ~[a2 hasError];
LABEL_31:
      [a1 setExists:v20];
    }

    else
    {
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t ASRSchemaASRAlternativeSelectionTextCategorizedReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(SISchemaUUID);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !SISchemaUUIDReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        [a1 setOriginalAsrId:v13];
        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_25:
      v14 = [a2 position];
      if (v14 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = PBReaderReadString();
    [a1 setFullCorrectedText:v13];
LABEL_23:

    goto LABEL_25;
  }

  return [a2 hasError] ^ 1;
}

uint64_t ASRSchemaASRAppLanguageModelLoadContextReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v17) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17 & 0x7F) << v5;
        if ((v17 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 103)
      {
        v14 = objc_alloc_init(ASRSchemaASRAppLanguageModelLoadFailed);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !ASRSchemaASRAppLanguageModelLoadFailedReadFrom(v14, a2))
        {
LABEL_34:

          return 0;
        }

        PBReaderRecallMark();
        [a1 setFailed:v14];
        goto LABEL_29;
      }

      if (v13 == 102)
      {
        break;
      }

      if (v13 == 101)
      {
        v14 = objc_alloc_init(ASRSchemaASRAppLanguageModelLoadStarted);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !ASRSchemaASRAppLanguageModelLoadStartedReadFrom(v14, a2))
        {
          goto LABEL_34;
        }

        PBReaderRecallMark();
        [a1 setStartedOrChanged:v14];
LABEL_29:

        goto LABEL_31;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_31:
      v15 = [a2 position];
      if (v15 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = objc_alloc_init(ASRSchemaASRAppLanguageModelLoadEnded);
    v17 = 0;
    v18 = 0;
    if (!PBReaderPlaceMark() || !ASRSchemaASRAppLanguageModelLoadEndedReadFrom(v14, a2))
    {
      goto LABEL_34;
    }

    PBReaderRecallMark();
    [a1 setEnded:v14];
    goto LABEL_29;
  }

  return [a2 hasError] ^ 1;
}

uint64_t ASRSchemaASRAppLanguageModelLoadEndedReadFrom(void *a1, void *a2)
{
  for (i = a2; ; i = a2)
  {
    v5 = [i position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v29 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v29 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v29 & 0x7F) << v6;
      if ((v29 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    if ((v13 >> 3) == 1)
    {
      v21 = 0;
      v22 = 0;
      v23 = 0;
      while (1)
      {
        v31 = 0;
        v24 = [a2 position] + 1;
        if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
        {
          v26 = [a2 data];
          [v26 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v23 |= (v31 & 0x7F) << v21;
        if ((v31 & 0x80) == 0)
        {
          break;
        }

        v21 += 7;
        v12 = v22++ >= 9;
        if (v12)
        {
          v27 = 0;
          goto LABEL_47;
        }
      }

      if ([a2 hasError])
      {
        v27 = 0;
      }

      else
      {
        v27 = v23;
      }

LABEL_47:
      [a1 setLoadTimeInNs:v27];
    }

    else if ((v13 >> 3) == 2)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      while (1)
      {
        v30 = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v30 & 0x7F) << v14;
        if ((v30 & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v12 = v15++ >= 9;
        if (v12)
        {
          v20 = 0;
          goto LABEL_43;
        }
      }

      if ([a2 hasError])
      {
        v20 = 0;
      }

      else
      {
        v20 = v16;
      }

LABEL_43:
      [a1 setForegroundCheckTimeInNs:v20];
    }

    else
    {
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t ASRSchemaASRAppLanguageModelLoadFailedReadFrom(void *a1, void *a2)
{
  for (i = a2; ; i = a2)
  {
    v5 = [i position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v37 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v37 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v37 & 0x7F) << v6;
      if ((v37 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    v14 = v13 >> 3;
    if ((v13 >> 3) == 1)
    {
      v29 = 0;
      v30 = 0;
      v31 = 0;
      while (1)
      {
        v38 = 0;
        v32 = [a2 position] + 1;
        if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
        {
          v34 = [a2 data];
          [v34 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v31 |= (v38 & 0x7F) << v29;
        if ((v38 & 0x80) == 0)
        {
          break;
        }

        v29 += 7;
        v12 = v30++ >= 9;
        if (v12)
        {
          v35 = 0;
          goto LABEL_57;
        }
      }

      if ([a2 hasError])
      {
        v35 = 0;
      }

      else
      {
        v35 = v31;
      }

LABEL_57:
      [a1 setReason:v35];
    }

    else if (v14 == 2)
    {
      v22 = 0;
      v23 = 0;
      v24 = 0;
      while (1)
      {
        v40 = 0;
        v25 = [a2 position] + 1;
        if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
        {
          v27 = [a2 data];
          [v27 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v24 |= (v40 & 0x7F) << v22;
        if ((v40 & 0x80) == 0)
        {
          break;
        }

        v22 += 7;
        v12 = v23++ >= 9;
        if (v12)
        {
          v28 = 0;
          goto LABEL_53;
        }
      }

      if ([a2 hasError])
      {
        v28 = 0;
      }

      else
      {
        v28 = v24;
      }

LABEL_53:
      [a1 setLoadTimeInNs:v28];
    }

    else if (v14 == 3)
    {
      v15 = 0;
      v16 = 0;
      v17 = 0;
      while (1)
      {
        v39 = 0;
        v18 = [a2 position] + 1;
        if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
        {
          v20 = [a2 data];
          [v20 getBytes:&v39 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v17 |= (v39 & 0x7F) << v15;
        if ((v39 & 0x80) == 0)
        {
          break;
        }

        v15 += 7;
        v12 = v16++ >= 9;
        if (v12)
        {
          v21 = 0;
          goto LABEL_61;
        }
      }

      if ([a2 hasError])
      {
        v21 = 0;
      }

      else
      {
        v21 = v17;
      }

LABEL_61:
      [a1 setForegroundCheckTimeInNs:v21];
    }

    else
    {
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t ASRSchemaASRAppLanguageModelLoadStartedReadFrom(void *a1, void *a2)
{
  for (i = a2; ; i = a2)
  {
    v5 = [i position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v22 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v22 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v22 & 0x7F) << v6;
      if ((v22 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    if ((v13 >> 3) == 1)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      while (1)
      {
        v23 = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v23 & 0x7F) << v14;
        if ((v23 & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v12 = v15++ >= 9;
        if (v12)
        {
          v20 = 0;
          goto LABEL_33;
        }
      }

      if ([a2 hasError])
      {
        v20 = 0;
      }

      else
      {
        v20 = v16;
      }

LABEL_33:
      [a1 setModelLocale:v20];
    }

    else
    {
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t ASRSchemaASRAppleNeuralEngineCompilationContextReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16 & 0x7F) << v5;
        if ((v16 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 102)
      {
        break;
      }

      if ((v12 >> 3) == 101)
      {
        v13 = objc_alloc_init(ASRSchemaASRAppleNeuralEngineCompilationStarted);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !ASRSchemaASRAppleNeuralEngineCompilationStartedReadFrom(v13, a2))
        {
          goto LABEL_30;
        }

        PBReaderRecallMark();
        [a1 setStarted:v13];
LABEL_25:

        goto LABEL_27;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_27:
      v14 = [a2 position];
      if (v14 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = objc_alloc_init(ASRSchemaASRAppleNeuralEngineCompilationEnded);
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !ASRSchemaASRAppleNeuralEngineCompilationEndedReadFrom(v13, a2))
    {
LABEL_30:

      return 0;
    }

    PBReaderRecallMark();
    [a1 setEnded:v13];
    goto LABEL_25;
  }

  return [a2 hasError] ^ 1;
}

uint64_t ASRSchemaASRAppleNeuralEngineCompilationEndedReadFrom(void *a1, void *a2)
{
  for (i = a2; ; i = a2)
  {
    v5 = [i position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v22 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v22 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v22 & 0x7F) << v6;
      if ((v22 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    if ((v13 >> 3) == 1)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      while (1)
      {
        v23 = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v23 & 0x7F) << v14;
        if ((v23 & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v12 = v15++ >= 9;
        if (v12)
        {
          v20 = 0;
          goto LABEL_31;
        }
      }

      v20 = (v16 != 0) & ~[a2 hasError];
LABEL_31:
      [a1 setExists:v20];
    }

    else
    {
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t ASRSchemaASRAppleNeuralEngineCompilationStartedReadFrom(void *a1, void *a2)
{
  for (i = a2; ; i = a2)
  {
    v5 = [i position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v22 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v22 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v22 & 0x7F) << v6;
      if ((v22 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    if ((v13 >> 3) == 1)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      while (1)
      {
        v23 = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v23 & 0x7F) << v14;
        if ((v23 & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v12 = v15++ >= 9;
        if (v12)
        {
          v20 = 0;
          goto LABEL_31;
        }
      }

      v20 = (v16 != 0) & ~[a2 hasError];
LABEL_31:
      [a1 setExists:v20];
    }

    else
    {
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t ASRSchemaASRAppleNeuralEngineModelInitializationContextReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16 & 0x7F) << v5;
        if ((v16 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 102)
      {
        break;
      }

      if ((v12 >> 3) == 101)
      {
        v13 = objc_alloc_init(ASRSchemaASRAppleNeuralEngineModelInitializationStarted);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !ASRSchemaASRAppleNeuralEngineModelInitializationStartedReadFrom(v13, a2))
        {
          goto LABEL_30;
        }

        PBReaderRecallMark();
        [a1 setStartedOrChanged:v13];
LABEL_25:

        goto LABEL_27;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_27:
      v14 = [a2 position];
      if (v14 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = objc_alloc_init(ASRSchemaASRAppleNeuralEngineModelInitializationEnded);
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !ASRSchemaASRAppleNeuralEngineModelInitializationEndedReadFrom(v13, a2))
    {
LABEL_30:

      return 0;
    }

    PBReaderRecallMark();
    [a1 setEnded:v13];
    goto LABEL_25;
  }

  return [a2 hasError] ^ 1;
}

uint64_t ASRSchemaASRAppleNeuralEngineModelInitializationEndedReadFrom(void *a1, void *a2)
{
  for (i = a2; ; i = a2)
  {
    v5 = [i position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v22 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v22 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v22 & 0x7F) << v6;
      if ((v22 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    if ((v13 >> 3) == 1)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      while (1)
      {
        v23 = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v23 & 0x7F) << v14;
        if ((v23 & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v12 = v15++ >= 9;
        if (v12)
        {
          v20 = 0;
          goto LABEL_31;
        }
      }

      v20 = (v16 != 0) & ~[a2 hasError];
LABEL_31:
      [a1 setExists:v20];
    }

    else
    {
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t ASRSchemaASRAppleNeuralEngineModelInitializationStartedReadFrom(void *a1, void *a2)
{
  for (i = a2; ; i = a2)
  {
    v5 = [i position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v22 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v22 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v22 & 0x7F) << v6;
      if ((v22 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    if ((v13 >> 3) == 1)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      while (1)
      {
        v23 = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v23 & 0x7F) << v14;
        if ((v23 & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v12 = v15++ >= 9;
        if (v12)
        {
          v20 = 0;
          goto LABEL_31;
        }
      }

      v20 = (v16 != 0) & ~[a2 hasError];
LABEL_31:
      [a1 setExists:v20];
    }

    else
    {
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t ASRSchemaASRAssetLoadContextReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16 & 0x7F) << v5;
        if ((v16 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 102)
      {
        break;
      }

      if ((v12 >> 3) == 101)
      {
        v13 = objc_alloc_init(ASRSchemaASRAssetLoadStarted);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !ASRSchemaASRAssetLoadStartedReadFrom(v13, a2))
        {
          goto LABEL_30;
        }

        PBReaderRecallMark();
        [a1 setStartedOrChanged:v13];
LABEL_25:

        goto LABEL_27;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_27:
      v14 = [a2 position];
      if (v14 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = objc_alloc_init(ASRSchemaASRAssetLoadEnded);
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !ASRSchemaASRAssetLoadEndedReadFrom(v13, a2))
    {
LABEL_30:

      return 0;
    }

    PBReaderRecallMark();
    [a1 setEnded:v13];
    goto LABEL_25;
  }

  return [a2 hasError] ^ 1;
}

uint64_t ASRSchemaASRAssetLoadEndedReadFrom(void *a1, void *a2)
{
  for (i = a2; ; i = a2)
  {
    v5 = [i position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v22 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v22 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v22 & 0x7F) << v6;
      if ((v22 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    if ((v13 >> 3) == 1)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      while (1)
      {
        v23 = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v23 & 0x7F) << v14;
        if ((v23 & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v12 = v15++ >= 9;
        if (v12)
        {
          v20 = 0;
          goto LABEL_31;
        }
      }

      v20 = (v16 != 0) & ~[a2 hasError];
LABEL_31:
      [a1 setExists:v20];
    }

    else
    {
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t ASRSchemaASRAssetLoadStartedReadFrom(void *a1, void *a2)
{
  for (i = a2; ; i = a2)
  {
    v5 = [i position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v22 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v22 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v22 & 0x7F) << v6;
      if ((v22 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    if ((v13 >> 3) == 1)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      while (1)
      {
        v23 = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v23 & 0x7F) << v14;
        if ((v23 & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v12 = v15++ >= 9;
        if (v12)
        {
          v20 = 0;
          goto LABEL_31;
        }
      }

      v20 = (v16 != 0) & ~[a2 hasError];
LABEL_31:
      [a1 setExists:v20];
    }

    else
    {
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t ASRSchemaASRAudioPacketArrivalContextReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16 & 0x7F) << v5;
        if ((v16 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 102)
      {
        break;
      }

      if ((v12 >> 3) == 101)
      {
        v13 = objc_alloc_init(ASRSchemaASRAudioPacketArrivalStarted);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !ASRSchemaASRAudioPacketArrivalStartedReadFrom(v13, a2))
        {
          goto LABEL_30;
        }

        PBReaderRecallMark();
        [a1 setStartedOrChanged:v13];
LABEL_25:

        goto LABEL_27;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_27:
      v14 = [a2 position];
      if (v14 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = objc_alloc_init(ASRSchemaASRAudioPacketArrivalEnded);
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !ASRSchemaASRAudioPacketArrivalEndedReadFrom(v13, a2))
    {
LABEL_30:

      return 0;
    }

    PBReaderRecallMark();
    [a1 setEnded:v13];
    goto LABEL_25;
  }

  return [a2 hasError] ^ 1;
}

uint64_t ASRSchemaASRAudioPacketArrivalEndedReadFrom(void *a1, void *a2)
{
  for (i = a2; ; i = a2)
  {
    v5 = [i position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v22 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v22 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v22 & 0x7F) << v6;
      if ((v22 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    if ((v13 >> 3) == 1)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      while (1)
      {
        v23 = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v23 & 0x7F) << v14;
        if ((v23 & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v12 = v15++ >= 9;
        if (v12)
        {
          v20 = 0;
          goto LABEL_31;
        }
      }

      v20 = (v16 != 0) & ~[a2 hasError];
LABEL_31:
      [a1 setExists:v20];
    }

    else
    {
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t ASRSchemaASRAudioPacketArrivalStartedReadFrom(void *a1, void *a2)
{
  for (i = a2; ; i = a2)
  {
    v5 = [i position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v22 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v22 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v22 & 0x7F) << v6;
      if ((v22 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    if ((v13 >> 3) == 1)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      while (1)
      {
        v23 = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v23 & 0x7F) << v14;
        if ((v23 & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v12 = v15++ >= 9;
        if (v12)
        {
          v20 = 0;
          goto LABEL_31;
        }
      }

      v20 = (v16 != 0) & ~[a2 hasError];
LABEL_31:
      [a1 setExists:v20];
    }

    else
    {
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t ASRSchemaASRAudioPacketContainingEndOfFirstWordReadyUpstreamReadFrom(void *a1, void *a2)
{
  for (i = a2; ; i = a2)
  {
    v5 = [i position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v22 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v22 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v22 & 0x7F) << v6;
      if ((v22 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    if ((v13 >> 3) == 1)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      while (1)
      {
        v23 = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v23 & 0x7F) << v14;
        if ((v23 & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v12 = v15++ >= 9;
        if (v12)
        {
          v20 = 0;
          goto LABEL_31;
        }
      }

      v20 = (v16 != 0) & ~[a2 hasError];
LABEL_31:
      [a1 setExists:v20];
    }

    else
    {
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }
    }
  }

  return [a2 hasError] ^ 1;
}