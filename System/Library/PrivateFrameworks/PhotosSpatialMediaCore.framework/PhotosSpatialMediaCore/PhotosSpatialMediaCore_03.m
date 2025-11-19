uint64_t SpatialPhoto.ViewModel.deinit()
{
  swift_unknownObjectRelease();

  v1 = OBJC_IVAR____TtCO22PhotosSpatialMediaCore12SpatialPhoto9ViewModel_signpostDateCreated;
  v2 = sub_1D8BEFF30();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v0;
}

uint64_t SpatialPhoto.ViewModel.__deallocating_deinit()
{
  SpatialPhoto.ViewModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D8BE8868()
{
  if (qword_1ECAA3DF8 != -1)
  {
    result = swift_once();
  }

  byte_1ECAA49D0 = byte_1ECAAA810;
  return result;
}

uint64_t static SpatialPhoto.disableRenderEffect.getter()
{
  if (qword_1ECAA3E50 != -1)
  {
    OUTLINED_FUNCTION_6_5();
    swift_once();
  }

  return byte_1ECAA49D0;
}

id sub_1D8BE8918()
{
  result = sub_1D8BE8938();
  qword_1ECAA49D8 = result;
  return result;
}

id sub_1D8BE8938()
{
  v0 = [objc_opt_self() standardUserDefaults];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAA4B58);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D8BF5A50;
  *(inited + 32) = 0xD000000000000024;
  *(inited + 40) = 0x80000001D8BF4A10;
  *(inited + 72) = MEMORY[0x1E69E6370];
  *(inited + 48) = 1;
  sub_1D8BF0980();
  v2 = sub_1D8BF0960();

  [v0 registerDefaults_];

  return v0;
}

uint64_t SpatialPhoto.ViewModel.rendererCanPerformSRGBConversion.getter()
{
  v1 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  return (*(v1 + 40))(ObjectType, v1) & 1;
}

unint64_t sub_1D8BE8ACC()
{
  result = qword_1ECAA4A80;
  if (!qword_1ECAA4A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAA4A80);
  }

  return result;
}

uint64_t sub_1D8BE8B20(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAA4958);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D8BE8B88(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAA4958);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_1D8BE8C4C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAA4B20);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAA4B28);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1D8BE8D7C()
{
  OUTLINED_FUNCTION_14_4();
  if (v3)
  {
    OUTLINED_FUNCTION_4_6();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_15_4();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_8();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAA4B18);
    v9 = OUTLINED_FUNCTION_39_1();
    v10 = _swift_stdlib_malloc_size(v9);
    *(v9 + 2) = v7;
    *(v9 + 3) = 2 * ((v10 - 32) / 16);
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
    swift_arrayInitWithCopy();
  }
}

void sub_1D8BE8E64()
{
  OUTLINED_FUNCTION_14_4();
  if (v4)
  {
    OUTLINED_FUNCTION_4_6();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_15_4();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_8();
    }
  }

  OUTLINED_FUNCTION_11_4();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAA4B68);
    v7 = OUTLINED_FUNCTION_39_1();
    OUTLINED_FUNCTION_40_1(v7);
    OUTLINED_FUNCTION_19_3(v8);
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC0];
  }

  v9 = OUTLINED_FUNCTION_35_1();
  if (v1)
  {
    if (v2 != v0 || &v10[4 * v3] <= v9)
    {
      memmove(v9, v10, 4 * v3);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    memcpy(v9, v10, 4 * v3);
  }
}

void sub_1D8BE8F28()
{
  OUTLINED_FUNCTION_14_4();
  if (v4)
  {
    OUTLINED_FUNCTION_4_6();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_15_4();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_8();
    }
  }

  OUTLINED_FUNCTION_11_4();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAA4B70);
    v7 = swift_allocObject();
    OUTLINED_FUNCTION_40_1(v7);
    OUTLINED_FUNCTION_19_3(v8);
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC0];
  }

  v9 = OUTLINED_FUNCTION_35_1();
  if (v1)
  {
    if (v2 != v0 || &v10[16 * v3] <= v9)
    {
      memmove(v9, v10, 16 * v3);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    memcpy(v9, v10, 16 * v3);
  }
}

void sub_1D8BE8FF4()
{
  OUTLINED_FUNCTION_14_4();
  if (v4)
  {
    OUTLINED_FUNCTION_4_6();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_15_4();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_8();
    }
  }

  OUTLINED_FUNCTION_11_4();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAA4B60);
    v7 = swift_allocObject();
    OUTLINED_FUNCTION_40_1(v7);
    *(v2 + 16) = v3;
    *(v2 + 24) = 2 * (v8 / 96);
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC0];
  }

  v9 = OUTLINED_FUNCTION_35_1();
  v11 = 96 * v3;
  if (v1)
  {
    if (v2 != v0 || &v10[v11] <= v9)
    {
      memmove(v9, v10, v11);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    memcpy(v9, v10, v11);
  }
}

void sub_1D8BE90D0()
{
  OUTLINED_FUNCTION_14_4();
  if (v4)
  {
    OUTLINED_FUNCTION_4_6();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_15_4();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_8();
    }
  }

  OUTLINED_FUNCTION_11_4();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAA4B10);
    v7 = OUTLINED_FUNCTION_39_1();
    OUTLINED_FUNCTION_40_1(v7);
    OUTLINED_FUNCTION_19_3(v8);
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC0];
  }

  v9 = OUTLINED_FUNCTION_35_1();
  if (v1)
  {
    if (v2 != v0 || &v10[8 * v3] <= v9)
    {
      memmove(v9, v10, 8 * v3);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    memcpy(v9, v10, 8 * v3);
  }
}

void sub_1D8BE9194()
{
  OUTLINED_FUNCTION_14_4();
  if (v3)
  {
    OUTLINED_FUNCTION_4_6();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_15_4();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_8();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = v0[2];
  if (v4 <= v7)
  {
    v8 = v0[2];
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAA4AF8);
    v9 = OUTLINED_FUNCTION_39_1();
    v10 = _swift_stdlib_malloc_size(v9);
    v9[2] = v7;
    v9[3] = 2 * ((v10 - 32) / 8);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  if (v1)
  {
    if (v9 != v0 || &v0[v7 + 4] <= v9 + 4)
    {
      v12 = OUTLINED_FUNCTION_34_2();
      memmove(v12, v13, v14);
    }

    v0[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAA4B00);
    OUTLINED_FUNCTION_34_2();
    swift_arrayInitWithCopy();
  }
}

void sub_1D8BE929C()
{
  OUTLINED_FUNCTION_14_4();
  if (v3)
  {
    OUTLINED_FUNCTION_4_6();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_15_4();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_8();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 16);
  v8 = sub_1D8BE9370(v7, v4);
  v9 = *(sub_1D8BF04E0() - 8);
  if (v1)
  {
    v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    sub_1D8BE94B0(v0 + v10, v7, v8 + v10);
    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

size_t sub_1D8BE9370(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAA4B08);
  v4 = *(sub_1D8BF04E0() - 8);
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

char *sub_1D8BE946C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[96 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_7_5(a3, result);
  }

  return result;
}

char *sub_1D8BE9490(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_7_5(a3, result);
  }

  return result;
}

uint64_t sub_1D8BE94B0(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = sub_1D8BF04E0(), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    v7 = sub_1D8BF04E0();

    return MEMORY[0x1EEE6BD00](a3, a1, a2, v7);
  }

  else if (a3 != a1)
  {

    return MEMORY[0x1EEE6BCF8](a3, a1, a2, result);
  }

  return result;
}

uint64_t sub_1D8BE9584(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_1D8BF7CD0;
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

BOOL sub_1D8BE95E8()
{
  v1 = *v0;
  sub_1D8BF1070();
  MEMORY[0x1DA723030](0);
  v2 = sub_1D8BF1090() & ~(-1 << *(v1 + 32));
  v3 = (1 << v2) & *(v1 + ((v2 >> 3) & 0xFFFFFFFFFFFFFF8) + 56);
  if (!v3)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *v0;
    sub_1D8BE98B0(v2, isUniquelyReferenced_nonNull_native);
    *v0 = v6;
  }

  return v3 == 0;
}

uint64_t sub_1D8BE969C()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAA4B50);
  result = sub_1D8BF0DB0();
  v3 = result;
  if (*(v1 + 16))
  {
    v4 = 0;
    v5 = (v1 + 56);
    v6 = 1 << *(v1 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v1 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    if (!v8)
    {
      goto LABEL_6;
    }

    do
    {
LABEL_10:
      sub_1D8BF1070();
      MEMORY[0x1DA723030](0);
      result = sub_1D8BF1090();
      v12 = -1 << *(v3 + 32);
      v13 = result & ~v12;
      v14 = v13 >> 6;
      if (((-1 << v13) & ~*(v10 + 8 * (v13 >> 6))) == 0)
      {
        v16 = 0;
        v17 = (63 - v12) >> 6;
        while (++v14 != v17 || (v16 & 1) == 0)
        {
          v18 = v14 == v17;
          if (v14 == v17)
          {
            v14 = 0;
          }

          v16 |= v18;
          v19 = *(v10 + 8 * v14);
          if (v19 != -1)
          {
            v15 = __clz(__rbit64(~v19)) + (v14 << 6);
            goto LABEL_19;
          }
        }

LABEL_27:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v13) & ~*(v10 + 8 * (v13 >> 6)))) | v13 & 0x7FFFFFFFFFFFFFC0;
LABEL_19:
      v8 &= v8 - 1;
      *(v10 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      ++*(v3 + 16);
    }

    while (v8);
    while (1)
    {
LABEL_6:
      v11 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v11 >= v9)
      {
        break;
      }

      v8 = v5[v11];
      ++v4;
      if (v8)
      {
        v4 = v11;
        goto LABEL_10;
      }
    }

    v20 = 1 << *(v1 + 32);
    if (v20 >= 64)
    {
      sub_1D8BE9584(0, (v20 + 63) >> 6, v1 + 56);
    }

    else
    {
      *v5 = -1 << v20;
    }

    *(v1 + 16) = 0;
  }

  *v0 = v3;
  return result;
}

uint64_t sub_1D8BE98B0(uint64_t result, char a2)
{
  v3 = result;
  v4 = *(*v2 + 16);
  v5 = *(*v2 + 24);
  if (v5 <= v4 || (a2 & 1) == 0)
  {
    if (a2)
    {
      sub_1D8BE969C();
      goto LABEL_8;
    }

    if (v5 <= v4)
    {
      sub_1D8BE9AC8();
LABEL_8:
      v6 = *v2;
      sub_1D8BF1070();
      MEMORY[0x1DA723030](0);
      result = sub_1D8BF1090();
      v3 = result & ~(-1 << *(v6 + 32));
      if ((*(v6 + ((v3 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v3))
      {
        goto LABEL_12;
      }

      goto LABEL_9;
    }

    result = sub_1D8BE99BC();
  }

LABEL_9:
  v7 = *v2;
  *(*v2 + 8 * (v3 >> 6) + 56) |= 1 << v3;
  v8 = *(v7 + 16);
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (!v9)
  {
    *(v7 + 16) = v10;
    return result;
  }

  __break(1u);
LABEL_12:
  result = sub_1D8BF0FF0();
  __break(1u);
  return result;
}

void *sub_1D8BE99BC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAA4B50);
  v2 = *v0;
  v3 = sub_1D8BF0DA0();
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
    v12 = (v9 + 63) >> 6;
    if (v11)
    {
      goto LABEL_15;
    }

    while (1)
    {
      v13 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v13 >= v12)
      {
        goto LABEL_17;
      }

      v11 = *(v2 + 56 + 8 * v13);
      ++v8;
      if (v11)
      {
        v8 = v13;
        do
        {
LABEL_15:
          v11 &= v11 - 1;
        }

        while (v11);
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1D8BE9AC8()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAA4B50);
  result = sub_1D8BF0DB0();
  v3 = result;
  if (*(v1 + 16))
  {
    v4 = 0;
    v5 = 1 << *(v1 + 32);
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    else
    {
      v6 = -1;
    }

    v7 = v6 & *(v1 + 56);
    v8 = (v5 + 63) >> 6;
    v9 = result + 56;
    if (!v7)
    {
      goto LABEL_6;
    }

    do
    {
LABEL_10:
      sub_1D8BF1070();
      MEMORY[0x1DA723030](0);
      result = sub_1D8BF1090();
      v11 = -1 << *(v3 + 32);
      v12 = result & ~v11;
      v13 = v12 >> 6;
      if (((-1 << v12) & ~*(v9 + 8 * (v12 >> 6))) == 0)
      {
        v15 = 0;
        v16 = (63 - v11) >> 6;
        while (++v13 != v16 || (v15 & 1) == 0)
        {
          v17 = v13 == v16;
          if (v13 == v16)
          {
            v13 = 0;
          }

          v15 |= v17;
          v18 = *(v9 + 8 * v13);
          if (v18 != -1)
          {
            v14 = __clz(__rbit64(~v18)) + (v13 << 6);
            goto LABEL_19;
          }
        }

        goto LABEL_23;
      }

      v14 = __clz(__rbit64((-1 << v12) & ~*(v9 + 8 * (v12 >> 6)))) | v12 & 0x7FFFFFFFFFFFFFC0;
LABEL_19:
      v7 &= v7 - 1;
      *(v9 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      ++*(v3 + 16);
    }

    while (v7);
LABEL_6:
    while (1)
    {
      v10 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if (v10 >= v8)
      {
        goto LABEL_21;
      }

      v7 = *(v1 + 56 + 8 * v10);
      ++v4;
      if (v7)
      {
        v4 = v10;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
  }

  else
  {
LABEL_21:

    *v0 = v3;
  }

  return result;
}

unint64_t sub_1D8BE9CA4()
{
  result = qword_1ECAA4A90;
  if (!qword_1ECAA4A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAA4A90);
  }

  return result;
}

unint64_t sub_1D8BE9D40()
{
  result = qword_1ECAA4AA8;
  if (!qword_1ECAA4AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAA4AA8);
  }

  return result;
}

unint64_t sub_1D8BE9DDC()
{
  result = qword_1ECAA4AC0;
  if (!qword_1ECAA4AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAA4AC0);
  }

  return result;
}

_BYTE *_s14descr1F54466F9O13OcclusionModeOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

_BYTE *_s14descr1F54466F9O16OptimizationModeOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t type metadata accessor for SpatialPhoto.ViewModel()
{
  result = qword_1ECAA4AD0;
  if (!qword_1ECAA4AD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D8BEA03C()
{
  result = sub_1D8BEFF30();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

_BYTE *_s14descr1F54466F9O9ViewModelC12RendererKindOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *_s14descr1F54466F9O9ViewModelC14UpdateEntitiesOwst(_BYTE *result, int a2, int a3)
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

uint64_t _s14descr1F54466F9O9ViewModelC5ErrorOwet(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *_s14descr1F54466F9O9ViewModelC5ErrorOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D8BEA950()
{
  result = qword_1ECAA4AE8;
  if (!qword_1ECAA4AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAA4AE8);
  }

  return result;
}

unint64_t sub_1D8BEA9A8()
{
  result = qword_1ECAA4AF0;
  if (!qword_1ECAA4AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAA4AF0);
  }

  return result;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1D8BEAA24()
{
  result = qword_1ECAA4750;
  if (!qword_1ECAA4750)
  {
    sub_1D8BF08D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAA4750);
  }

  return result;
}

uint64_t sub_1D8BEAA7C(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_8_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, __int128 a11)
{
  STACK[0x2C0] = v14;
  STACK[0x2C8] = v15;
  STACK[0x2D0] = v16;
  v12[2] = a11;
  v12[3] = a10;
  v12[4] = a9;
  LOBYTE(STACK[0x310]) = v13;
  return v11 + 32;
}

double OUTLINED_FUNCTION_12_4@<D0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + a2);
  *a1 = v3;
  return *&v3;
}

uint64_t OUTLINED_FUNCTION_13_4()
{

  return swift_getObjectType();
}

void OUTLINED_FUNCTION_16_4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void *OUTLINED_FUNCTION_26_1()
{

  return memcpy((v1 + 16), v0, 0xF1uLL);
}

BOOL OUTLINED_FUNCTION_27_2(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void *OUTLINED_FUNCTION_28_2()
{

  return memcpy(&STACK[0x580], &STACK[0x970], 0x300uLL);
}

void OUTLINED_FUNCTION_32_2(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0;
  v2[1] = 0;
}

void *OUTLINED_FUNCTION_36_2(uint64_t a1)
{
  *(a1 + 260) = 0;
  v3 = (a1 + 16);

  return memcpy(v3, (v1 + 80), 0xF1uLL);
}

uint64_t OUTLINED_FUNCTION_37_2()
{

  return swift_unknownObjectRetain();
}

uint64_t OUTLINED_FUNCTION_39_1()
{

  return swift_allocObject();
}

void *OUTLINED_FUNCTION_41_1(void *a1)
{

  return memcpy(a1, (v1 + 32), 0x151uLL);
}

uint64_t static SpatialPhoto.SceneAnalysis.releaseCachedResources(reason:)()
{
  if (qword_1ECAA3E60 != -1)
  {
    swift_once();
  }

  return sub_1D8BEDDD8();
}

uint64_t SpatialPhoto.SceneAnalysis.__allocating_init(scene:size:renderScale:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, double a5)
{
  if (a4)
  {
    OUTLINED_FUNCTION_0_13();
    swift_beginAccess();
    v8 = *(a1 + 36);
    v9 = sqrt(50000.0 / v8);
    v10 = round(v9 * v8);
    v11 = round(v9);
  }

  else
  {
    v10 = *&a2;
    v11 = *&a3;
  }

  v19 = 2;
  type metadata accessor for SpatialPhoto.CameraController();
  swift_allocObject();
  v12 = SpatialPhoto.CameraController.init(style:)(&v19);
  v19 = 1;
  type metadata accessor for SpatialPhoto.PixelBufferRenderDestination();
  v13 = swift_allocObject();
  v14 = SpatialPhoto.PixelBufferRenderDestination.init(size:renderScale:options:)(&v19, v10, v11, a5);
  if (v5)
  {
  }

  else
  {
    v15 = v14;
    v19 = 2;
    v18 = 0;
    type metadata accessor for SpatialPhoto.ViewModel();
    swift_allocObject();

    v16 = SpatialPhoto.ViewModel.init(scene:cameraProvider:renderDestination:rendererKind:occlusionMode:renderEffect:)(a1, v12, &protocol witness table for SpatialPhoto.CameraController, v15, &protocol witness table for SpatialPhoto.PixelBufferRenderDestination, &v19, &v18, 0, 0);
    type metadata accessor for SpatialPhoto.SceneAnalysis();
    v13 = swift_allocObject();
    SpatialPhoto.SceneAnalysis.init(viewModel:)(v16);
  }

  return v13;
}

uint64_t SpatialPhoto.SceneAnalysis.__allocating_init(viewModel:)(uint64_t a1)
{
  v2 = swift_allocObject();
  SpatialPhoto.SceneAnalysis.init(viewModel:)(a1);
  return v2;
}

void SpatialPhoto.SceneAnalysis.init(viewModel:)(uint64_t a1)
{
  v2 = v1;
  *(v1 + 24) = 2;
  *(v1 + 48) = 0;
  *(v1 + 32) = a1;
  v4 = *(a1 + OBJC_IVAR____TtCO22PhotosSpatialMediaCore12SpatialPhoto9ViewModel__scene);

  os_unfair_lock_lock((v4 + 24));
  v5 = *(v4 + 16);

  os_unfair_lock_unlock((v4 + 24));
  if (v5)
  {
    *(v2 + 16) = v5;
    if (*(a1 + OBJC_IVAR____TtCO22PhotosSpatialMediaCore12SpatialPhoto9ViewModel__cameraProvider))
    {
      type metadata accessor for SpatialPhoto.CameraController();
      *(v2 + 40) = swift_dynamicCastClassUnconditional();
      v6 = 0;
      swift_unknownObjectRetain();
      sub_1D8BE5568(&v6);
      sub_1D8BE538C(1048576000);
      sub_1D8BEB168();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1D8BEB168()
{
  v2[1] = 1;
  sub_1D8BC94E4(0x100000000);
  v2[0] = 0;
  sub_1D8BEB3E0(v2);
  v1 = 2;
  return sub_1D8BEB5C4(&v1);
}

unint64_t sub_1D8BEB1C8@<X0>(uint64_t a1@<X8>)
{
  result = sub_1D8BEB23C();
  *a1 = result;
  *(a1 + 4) = BYTE4(result) & 1;
  return result;
}

unint64_t sub_1D8BEB23C()
{
  v1 = *(v0 + 40);
  OUTLINED_FUNCTION_0_13();
  swift_beginAccess();
  return *(v1 + 28) | (*(v1 + 32) << 32);
}

uint64_t (*sub_1D8BEB2BC(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = sub_1D8BEB23C();
  *(a1 + 8) = v3;
  *(a1 + 12) = BYTE4(v3) & 1;
  return sub_1D8BEB30C;
}

void (*sub_1D8BEB418(uint64_t a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  sub_1D8BE5158((a1 + 8));
  return sub_1D8BEB470;
}

void sub_1D8BEB470(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = *(a1 + 8);
    v2 = &v3;
  }

  else
  {
    v4 = *(a1 + 8);
    v2 = &v4;
  }

  sub_1D8BEB3E0(v2);
}

uint64_t sub_1D8BEB4B8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D8BEB588(&v3);
  *a1 = v3;
  return result;
}

uint64_t sub_1D8BEB52C(unsigned __int8 *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  if (v2 != *(v1 + 24))
  {
    result = sub_1D8BEBB2C();
    if (result)
    {
      *(result + 161) = 1;
    }
  }

  return result;
}

uint64_t sub_1D8BEB588@<X0>(_BYTE *a1@<X8>)
{
  OUTLINED_FUNCTION_0_13();
  result = swift_beginAccess();
  *a1 = *(v1 + 24);
  return result;
}

uint64_t sub_1D8BEB5C4(char *a1)
{
  v2 = *a1;
  OUTLINED_FUNCTION_2_2();
  swift_beginAccess();
  v3 = *(v1 + 24);
  *(v1 + 24) = v2;
  v5 = v3;
  return sub_1D8BEB52C(&v5);
}

void (*sub_1D8BEB610(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[3] = v1;
  OUTLINED_FUNCTION_45();
  swift_beginAccess();
  *(v3 + 32) = *(v1 + 24);
  return sub_1D8BEB684;
}

void sub_1D8BEB684(uint64_t a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v4 = *(*a1 + 32);
    v3 = &v4;
  }

  else
  {
    v5 = *(*a1 + 32);
    v3 = &v5;
  }

  sub_1D8BEB5C4(v3);

  free(v2);
}

uint64_t sub_1D8BEB6E8()
{
  result = sub_1D8BEBC88();
  if (!v0)
  {
    v2 = sub_1D8BEBB2C();
    if (v2)
    {
      v3 = v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAA4B18);
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_1D8BF5A50;
      MEMORY[0x1DA722A10](0x6E694B6874706564, 0xEA00000000003A64);
      OUTLINED_FUNCTION_45();
      swift_beginAccess();
      sub_1D8BF0E30();
      *(v4 + 32) = 0;
      *(v4 + 40) = 0xE000000000000000;
      if ((sub_1D8BEB23C() & 0x100000000) == 0)
      {
        sub_1D8BF0DE0();
        OUTLINED_FUNCTION_2_9();
        sub_1D8BF0B10();
        v5 = *(v4 + 16);
        v6 = v5 + 1;
        if (v5 >= *(v4 + 24) >> 1)
        {
          v12 = v5 + 1;
          v10 = *(v4 + 16);
          sub_1D8BE8D7C();
          v5 = v10;
          v6 = v12;
          v4 = v11;
        }

        *(v4 + 16) = v6;
        v7 = v4 + 16 * v5;
        *(v7 + 32) = 0;
        *(v7 + 40) = 0xE000000000000000;
      }

      if ((sub_1D8BEB23C() & 0x100000000) != 0)
      {
        v8 = 0;
      }

      else
      {
        sub_1D8BF0DE0();
        OUTLINED_FUNCTION_2_9();
        sub_1D8BF0B10();
        v8 = 0xE000000000000000;
      }

      OUTLINED_FUNCTION_2_2();
      swift_beginAccess();
      v3[5] = 0;
      v3[6] = v8;

      OUTLINED_FUNCTION_2_2();
      swift_beginAccess();
      v3[7] = v4;

      sub_1D8BC5D70(1);
    }

    else
    {
      sub_1D8BEBF28();
      swift_allocError();
      *v9 = 3;
      return swift_willThrow();
    }
  }

  return result;
}

void *sub_1D8BEB960()
{
  v0 = sub_1D8BEBB2C();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  OUTLINED_FUNCTION_0_13();
  swift_beginAccess();
  v2 = *(v1 + 104);
  v3 = v2;

  return v2;
}

uint64_t sub_1D8BEB9B8()
{
  v0 = sub_1D8BEBB2C();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  OUTLINED_FUNCTION_0_13();
  swift_beginAccess();
  v2 = *(v1 + 112);
  swift_unknownObjectRetain();

  return v2;
}

uint64_t sub_1D8BEBA14()
{
  v0 = sub_1D8BEBB2C();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  OUTLINED_FUNCTION_0_13();
  swift_beginAccess();
  v2 = *(v1 + 120);
  swift_unknownObjectRetain();

  return v2;
}

uint64_t sub_1D8BEBA70()
{
  result = sub_1D8BEBB2C();
  if (result)
  {
    sub_1D8BC5B44();
  }

  return result;
}

uint64_t sub_1D8BEBB2C()
{
  if (!*(*(v0 + 32) + OBJC_IVAR____TtCO22PhotosSpatialMediaCore12SpatialPhoto9ViewModel__primaryRenderDestination))
  {
    return 0;
  }

  type metadata accessor for SpatialPhoto.PixelBufferRenderDestination();
  v1 = swift_dynamicCastClass();
  if (v1)
  {
    swift_unknownObjectRetain();
  }

  return v1;
}

uint64_t sub_1D8BEBB8C(uint64_t a1)
{
  if (a1)
  {
    v1 = &protocol witness table for SpatialPhoto.PixelBufferRenderDestination;
  }

  else
  {
    v1 = 0;
  }

  sub_1D8BE4E18(v2, v1);
}

uint64_t (*sub_1D8BEBBE8(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1D8BEBB2C();
  return sub_1D8BEBC30;
}

uint64_t sub_1D8BEBC30(uint64_t *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_1D8BEBB8C(*a1);
  }

  sub_1D8BEBB8C(v2);
}

uint64_t sub_1D8BEBC88()
{
  v2 = v1;
  v3 = v0;
  v4 = sub_1D8BEBB2C();
  if (v4)
  {
    if (*(v4 + 66) == 1)
    {
      v5 = *(v4 + 128);
      v6 = *(v0 + 48);
      if (v6)
      {
        v7 = *(v6 + 16);
        swift_unknownObjectRetain();
        if (v7 == v5)
        {

          result = swift_unknownObjectRelease();
LABEL_15:
          v13 = *(v0 + 48);
          if (v13)
          {
            OUTLINED_FUNCTION_45();
            swift_beginAccess();
            v14 = *(v3 + 24);
            if (*(v3 + 24))
            {
              v15 = *(v3 + 16);
              if (v14 == 1)
              {
                OUTLINED_FUNCTION_45();
                swift_beginAccess();
                __asm { FMOV            V0.2S, #1.0 }

                LODWORD(_D0) = *(v15 + 44);
              }

              else
              {
                OUTLINED_FUNCTION_45();
                swift_beginAccess();
                _D0 = *(v15 + 44);
              }
            }

            else
            {
              _D0 = 0x3F80000000000000;
            }

            v21 = _D0;
            OUTLINED_FUNCTION_2_2();
            result = swift_beginAccess();
            *(v13 + 32) = v21;
          }

          return result;
        }
      }

      else
      {
        swift_unknownObjectRetain();
      }

      type metadata accessor for SpatialPhoto.DepthNormalization();
      swift_allocObject();
      v9 = swift_unknownObjectRetain();
      v10 = SpatialPhoto.DepthNormalization.init(device:)(v9);
      if (v2)
      {

        return swift_unknownObjectRelease();
      }

      v11 = v10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAA4B98);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_1D8BF5A50;
      *(v12 + 32) = v11;
      *(v12 + 40) = &protocol witness table for SpatialPhoto.DepthNormalization;

      sub_1D8BC5600(v12);
      swift_unknownObjectRelease();

      *(v0 + 48) = v11;

      goto LABEL_15;
    }
  }

  if (sub_1D8BEBB2C())
  {
    sub_1D8BC5600(MEMORY[0x1E69E7CC0]);
  }

  *(v0 + 48) = 0;
}

uint64_t SpatialPhoto.SceneAnalysis.deinit()
{

  return v0;
}

uint64_t SpatialPhoto.SceneAnalysis.__deallocating_deinit()
{
  SpatialPhoto.SceneAnalysis.deinit();

  return swift_deallocClassInstance();
}

unint64_t sub_1D8BEBF28()
{
  result = qword_1ECAA4B80;
  if (!qword_1ECAA4B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAA4B80);
  }

  return result;
}

unint64_t sub_1D8BEBF80()
{
  result = qword_1ECAA4B88;
  if (!qword_1ECAA4B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAA4B88);
  }

  return result;
}

unint64_t sub_1D8BEBFD8()
{
  result = qword_1ECAA4B90;
  if (!qword_1ECAA4B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAA4B90);
  }

  return result;
}

_BYTE *_s14descr1F54466F9O13SceneAnalysisC5ErrorOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *_s14descr1F54466F9O13SceneAnalysisC9DepthKindOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

void OUTLINED_FUNCTION_2_9()
{

  JUMPOUT(0x1DA722A10);
}

uint64_t (*sub_1D8BEC56C(uint64_t a1))()
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_8_0();
  return sub_1D8BED6E0;
}

float sub_1D8BEC608()
{
  swift_getKeyPath();
  v1 = sub_1D8BEC670();
  OUTLINED_FUNCTION_2_10(v1, v2);

  OUTLINED_FUNCTION_2_3();
  return *(v0 + 16);
}

unint64_t sub_1D8BEC670()
{
  result = qword_1ECAA4BA8;
  if (!qword_1ECAA4BA8)
  {
    type metadata accessor for SpatialPhoto.CameraParameters();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAA4BA8);
  }

  return result;
}

uint64_t type metadata accessor for SpatialPhoto.CameraParameters()
{
  result = qword_1ECAA4BB0;
  if (!qword_1ECAA4BB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D8BEC714(float a1)
{
  swift_beginAccess();
  if (*(v1 + 16) == a1)
  {
    *(v1 + 16) = a1;
    sub_1D8BED21C();
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_1_8();
    MEMORY[0x1EEE9AC00]();
    OUTLINED_FUNCTION_0_14();
    OUTLINED_FUNCTION_11_5();
  }
}

void sub_1D8BEC7BC(uint64_t a1, float a2)
{
  swift_beginAccess();
  *(a1 + 16) = a2;
  sub_1D8BED21C();
}

void (*sub_1D8BEC834())(void *a1)
{
  v3 = OUTLINED_FUNCTION_6_6();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_5_5(v4);
  swift_getKeyPath();
  v2[5] = OBJC_IVAR____TtCO22PhotosSpatialMediaCore12SpatialPhoto16CameraParameters___observationRegistrar;
  *v2 = v0;
  v5 = sub_1D8BEC670();
  OUTLINED_FUNCTION_3_9(v5);

  *v2 = v1;
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_4_7(KeyPath);

  v2[7] = sub_1D8BEC56C(v2);
  return sub_1D8BEC8EC;
}

uint64_t (*sub_1D8BEC904(uint64_t a1))()
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_8_0();
  return sub_1D8BEC94C;
}

void sub_1D8BEC950(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1D8BED21C();
  }
}

float sub_1D8BEC9D8()
{
  swift_getKeyPath();
  v1 = sub_1D8BEC670();
  OUTLINED_FUNCTION_2_10(v1, v2);

  OUTLINED_FUNCTION_2_3();
  return *(v0 + 20);
}

void sub_1D8BECA40(float a1)
{
  swift_beginAccess();
  if (*(v1 + 20) == a1)
  {
    *(v1 + 20) = a1;
    sub_1D8BED21C();
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_1_8();
    MEMORY[0x1EEE9AC00]();
    OUTLINED_FUNCTION_0_14();
    OUTLINED_FUNCTION_11_5();
  }
}

void sub_1D8BECAE8(uint64_t a1, float a2)
{
  swift_beginAccess();
  *(a1 + 20) = a2;
  sub_1D8BED21C();
}

void (*sub_1D8BECB40())(void *a1)
{
  v3 = OUTLINED_FUNCTION_6_6();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_5_5(v4);
  swift_getKeyPath();
  v2[5] = OBJC_IVAR____TtCO22PhotosSpatialMediaCore12SpatialPhoto16CameraParameters___observationRegistrar;
  *v2 = v0;
  v5 = sub_1D8BEC670();
  OUTLINED_FUNCTION_3_9(v5);

  *v2 = v1;
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_4_7(KeyPath);

  v2[7] = sub_1D8BEC904(v2);
  return sub_1D8BECBF8;
}

float sub_1D8BECC9C()
{
  swift_getKeyPath();
  v1 = sub_1D8BEC670();
  OUTLINED_FUNCTION_2_10(v1, v2);

  OUTLINED_FUNCTION_2_3();
  return *(v0 + 24);
}

uint64_t sub_1D8BECD04(float a1)
{
  result = swift_beginAccess();
  if (*(v1 + 24) == a1)
  {
    *(v1 + 24) = a1;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_1_8();
    MEMORY[0x1EEE9AC00]();
    OUTLINED_FUNCTION_0_14();
    OUTLINED_FUNCTION_11_5();
  }

  return result;
}

uint64_t sub_1D8BECDAC(uint64_t a1, float a2)
{
  result = swift_beginAccess();
  *(a1 + 24) = a2;
  return result;
}

void (*sub_1D8BECE00())(void *a1)
{
  v3 = OUTLINED_FUNCTION_6_6();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_5_5(v4);
  swift_getKeyPath();
  v2[5] = OBJC_IVAR____TtCO22PhotosSpatialMediaCore12SpatialPhoto16CameraParameters___observationRegistrar;
  *v2 = v0;
  v5 = sub_1D8BEC670();
  OUTLINED_FUNCTION_3_9(v5);

  *v2 = v1;
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_4_7(KeyPath);

  v2[7] = sub_1D8BECC04();
  return sub_1D8BECEB8;
}

void sub_1D8BECEC4(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  sub_1D8BF0230();

  free(v1);
}

float sub_1D8BECF58()
{
  swift_getKeyPath();
  v1 = sub_1D8BEC670();
  OUTLINED_FUNCTION_2_10(v1, v2);

  return *(v0 + 28);
}

uint64_t sub_1D8BECFB8(float a1)
{
  if (*(v1 + 28) == a1)
  {
    *(v1 + 28) = a1;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_1_8();
    MEMORY[0x1EEE9AC00]();
    OUTLINED_FUNCTION_0_14();
    OUTLINED_FUNCTION_11_5();
  }

  return result;
}

float sub_1D8BED048()
{
  swift_getKeyPath();
  v1 = sub_1D8BEC670();
  OUTLINED_FUNCTION_2_10(v1, v2);

  return *(v0 + 36);
}

uint64_t sub_1D8BED0A8(float a1)
{
  if (*(v1 + 36) == a1)
  {
    *(v1 + 36) = a1;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_1_8();
    MEMORY[0x1EEE9AC00]();
    OUTLINED_FUNCTION_0_14();
    OUTLINED_FUNCTION_11_5();
  }

  return result;
}

uint64_t sub_1D8BED144()
{
  *(v0 + 16) = xmmword_1D8BF91C0;
  *(v0 + 32) = 0x3DA3D70A41898287;
  *(v0 + 40) = 0;
  *(v0 + 44) = 1;
  *(v0 + 48) = 0;
  *(v0 + 56) = 1;
  *(v0 + 60) = 0;
  *(v0 + 64) = 1;
  sub_1D8BF0250();
  return v0;
}

float sub_1D8BED1A0()
{
  if (*(v0 + 56))
  {
    return sub_1D8BEC608();
  }

  else
  {
    return *(v0 + 52);
  }
}

float sub_1D8BED1B4()
{
  if (*(v0 + 64))
  {
    return sub_1D8BEC9D8();
  }

  else
  {
    return *(v0 + 60);
  }
}

void sub_1D8BED1C8(uint64_t a1)
{
  v2 = *(v1 + 44);
  if ((a1 & 0x100000000) != 0)
  {
    if (*(v1 + 44))
    {
      return;
    }

LABEL_7:
    sub_1D8BED21C();
    return;
  }

  if (*(v1 + 40) != *&a1)
  {
    v2 = 1;
  }

  if (v2)
  {
    goto LABEL_7;
  }
}

void sub_1D8BED1F0(uint64_t a1)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 44);
  *(v1 + 40) = a1;
  *(v1 + 44) = BYTE4(a1) & 1;
  sub_1D8BED1C8(v2 | (v3 << 32));
}

void sub_1D8BED21C()
{
  v1 = *(v0 + 44);
  v2 = 0.0;
  v3 = 0.0;
  if (v1)
  {
LABEL_14:
    *(v0 + 52) = v3;
    *(v0 + 56) = v1;
    *(v0 + 60) = v2;
    *(v0 + 64) = v1;
    return;
  }

  v4 = *(v0 + 40);
  v5 = sub_1D8BEC608();
  if (v5 > 1.0)
  {
    __break(1u);
  }

  else
  {
    v6 = v5;
    v2 = sub_1D8BEC9D8();
    if (v2 >= 1.0)
    {
      v7 = (1.0 - (v4 * v2)) / (1.0 - v4);
      v8 = ((1.0 - v6) + (v4 * v6)) / v4;
      if (v7 <= 1.0)
      {
        v9 = (1.0 - (v4 * v2)) / (1.0 - v4);
      }

      else
      {
        v9 = 1.0;
      }

      if (v7 >= v6)
      {
        v3 = v9;
      }

      else
      {
        v3 = v6;
      }

      if (v2 >= v8)
      {
        v2 = ((1.0 - v6) + (v4 * v6)) / v4;
      }

      if (v8 < 1.0)
      {
        v2 = 1.0;
      }

      goto LABEL_14;
    }
  }

  __break(1u);
}

uint64_t SpatialPhoto.CameraParameters.deinit()
{
  v1 = OBJC_IVAR____TtCO22PhotosSpatialMediaCore12SpatialPhoto16CameraParameters___observationRegistrar;
  sub_1D8BF0260();
  OUTLINED_FUNCTION_20();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t SpatialPhoto.CameraParameters.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtCO22PhotosSpatialMediaCore12SpatialPhoto16CameraParameters___observationRegistrar;
  sub_1D8BF0260();
  OUTLINED_FUNCTION_20();
  (*(v2 + 8))(v0 + v1);

  return swift_deallocClassInstance();
}

uint64_t sub_1D8BED48C()
{
  result = sub_1D8BF0260();
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

float sub_1D8BED6C0()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 36) = result;
  return result;
}

float sub_1D8BED6D0()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 28) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_2_10(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return MEMORY[0x1EEE6CE60](va, v2, a1);
}

uint64_t OUTLINED_FUNCTION_3_9(uint64_t a1)
{
  *(v1 + 48) = a1;

  return MEMORY[0x1EEE6CE60](v1, v2, a1);
}

uint64_t OUTLINED_FUNCTION_4_7(uint64_t a1)
{

  return MEMORY[0x1EEE6CE78](v1, a1, v2);
}

uint64_t OUTLINED_FUNCTION_5_5(uint64_t result)
{
  *v1 = result;
  *(result + 32) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_11_5()
{

  return sub_1D8BED2D8();
}

uint64_t sub_1D8BED7BC()
{
  _s14descr1F54466F9O13VisionSessionCMa();
  v0 = swift_allocObject();
  result = sub_1D8BED7F8();
  qword_1ECAAA838 = v0;
  return result;
}

uint64_t sub_1D8BED7F8()
{
  v0 = _s14descr1F54466F9O13VisionSessionC5StateVMa();
  v1 = v0 - 8;
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_53();
  v21 = v3 - v2;
  OUTLINED_FUNCTION_11_3();
  v20 = sub_1D8BF0C20();
  OUTLINED_FUNCTION_3_1();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_53();
  v9 = v8 - v7;
  v10 = sub_1D8BF0C00();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_53();
  v11 = sub_1D8BF0900();
  MEMORY[0x1EEE9AC00](v11 - 8);
  OUTLINED_FUNCTION_53();
  sub_1D8BCF84C(0, &qword_1ECAA4B30);
  sub_1D8BF08F0();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1D8BEF154(&qword_1ECAA49A0, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAA49A8);
  sub_1D8BE3488(&qword_1ECAA49B0, &qword_1ECAA49A8);
  sub_1D8BF0D60();
  (*(v5 + 104))(v9, *MEMORY[0x1E69E8090], v20);
  *(v22 + 16) = sub_1D8BF0C50();
  v12 = sub_1D8BEFF30();
  __swift_storeEnumTagSinglePayload(v21, 1, 1, v12);
  *(v21 + *(v1 + 28)) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAA4C00);
  v13 = swift_allocObject();
  *(v13 + ((*(*v13 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_1D8BEF19C(v21, v13 + *(*v13 + *MEMORY[0x1E69E6B68] + 16));
  sub_1D8BEF200(v21);
  *(v22 + 24) = v13;
  v14 = [objc_opt_self() defaultCenter];
  v15 = sub_1D8BF09B0();
  v16 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_1D8BEF25C;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8BEDCE4;
  aBlock[3] = &block_descriptor_12_0;
  v17 = _Block_copy(aBlock);

  v18 = [v14 addObserverForName:v15 object:0 queue:0 usingBlock:v17];
  _Block_release(v17);
  swift_unknownObjectRelease();

  return v22;
}

uint64_t sub_1D8BEDC78()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1D8BEDDD8();
  }

  return result;
}

uint64_t sub_1D8BEDCE4(uint64_t a1)
{
  v2 = sub_1D8BEFE90();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 32);
  sub_1D8BEFE80();

  v6(v5);

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1D8BEDDD8()
{
  v1 = *(v0 + 24);
  v2 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v1 + v2));
  sub_1D8BEF120();
  os_unfair_lock_unlock((v1 + v2));
}

void sub_1D8BEDE80(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  if (qword_1EE320A68 != -1)
  {
    swift_once();
  }

  v6 = sub_1D8BF08A0();
  __swift_project_value_buffer(v6, qword_1EE320A70);

  v7 = sub_1D8BF0880();
  v8 = sub_1D8BF0B70();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v14 = v10;
    *v9 = 136446210;
    *(v9 + 4) = sub_1D8BBE6E8(a1, a2, &v14);
    _os_log_impl(&dword_1D8BAF000, v7, v8, "SpatialPhoto.VisionSession release VNSession (%{public}s)", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x1DA723A30](v10, -1, -1);
    MEMORY[0x1DA723A30](v9, -1, -1);
  }

  sub_1D8BC81E4(v3, &qword_1ECAA4BC0);
  v11 = sub_1D8BEFF30();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v11);
  v12 = *(_s14descr1F54466F9O13VisionSessionC5StateVMa() + 20);
  v13 = *(v3 + v12);
  if (v13)
  {
    [*(v3 + v12) releaseCachedResources];

    *(v3 + v12) = 0;
  }
}

uint64_t sub_1D8BEE034()
{
  v1 = v0;
  sub_1D8BF08D0();
  OUTLINED_FUNCTION_3_1();
  v61 = v3;
  v62 = v2;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_53();
  v59 = v5 - v4;
  OUTLINED_FUNCTION_11_3();
  v60 = sub_1D8BF0900();
  OUTLINED_FUNCTION_3_1();
  v58 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_53();
  v57 = v9 - v8;
  OUTLINED_FUNCTION_11_3();
  v53 = sub_1D8BF08C0();
  OUTLINED_FUNCTION_3_1();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_53();
  v15 = (v14 - v13);
  v65 = sub_1D8BF0930();
  OUTLINED_FUNCTION_3_1();
  v56 = v16;
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v63 = v51 - v21;
  OUTLINED_FUNCTION_11_3();
  v55 = sub_1D8BEFF30();
  OUTLINED_FUNCTION_3_1();
  v54 = v22;
  v24 = *(v23 + 64);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v27 = v51 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v29 = v51 - v28;
  sub_1D8BEFF10();
  v30 = *(v0 + 24);
  v64 = v29;
  v66 = v29;
  v31 = *(*v30 + *MEMORY[0x1E69E6B68] + 16);
  v32 = (*(*v30 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v30 + v32));
  sub_1D8BEF088(v30 + v31, aBlock);
  v33 = (v30 + v32);
  v34 = v1;
  os_unfair_lock_unlock(v33);
  v35 = aBlock[0];

  v36 = *(v1 + 16);
  result = sub_1D8BF0910();
  if (qword_1ECAA3E20 != -1)
  {
    result = swift_once();
  }

  v38 = *&qword_1ECAAA820 * 1000.0;
  if (COERCE__INT64(fabs(*&qword_1ECAAA820 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v38 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v38 < 9.22337204e18)
  {
    *v15 = v38;
    v39 = *MEMORY[0x1E69E7F38];
    v40 = *(v11 + 104);
    v51[1] = v36;
    v41 = v53;
    v40(v15, v39, v53);
    v52 = v35;
    sub_1D8BF0920();
    (*(v11 + 8))(v15, v41);
    v56 = *(v56 + 8);
    (v56)(v20, v65);
    v42 = v54;
    v43 = v55;
    (*(v54 + 16))(v27, v64, v55);
    v44 = (*(v42 + 80) + 24) & ~*(v42 + 80);
    v45 = swift_allocObject();
    *(v45 + 16) = v34;
    (*(v42 + 32))(v45 + v44, v27, v43);
    aBlock[4] = sub_1D8BEF0A4;
    aBlock[5] = v45;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D8BDBEA8;
    aBlock[3] = &block_descriptor_4;
    v46 = _Block_copy(aBlock);

    v47 = v57;
    sub_1D8BF08F0();
    v67 = MEMORY[0x1E69E7CC0];
    sub_1D8BEF154(&qword_1ECAA4750, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAA4B40);
    sub_1D8BE3488(&qword_1ECAA4760, &unk_1ECAA4B40);
    v48 = v59;
    v49 = v62;
    sub_1D8BF0D60();
    v50 = v63;
    MEMORY[0x1DA722BC0](v63, v47, v48, v46);
    _Block_release(v46);
    (*(v61 + 8))(v48, v49);
    (*(v58 + 8))(v47, v60);
    (v56)(v50, v65);

    (*(v42 + 8))(v64, v43);
    return v52;
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_1D8BEE6AC(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_1D8BC81E4(a1, &qword_1ECAA4BC0);
  v6 = sub_1D8BEFF30();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  __swift_storeEnumTagSinglePayload(a1, 0, 1, v6);
  v7 = *(_s14descr1F54466F9O13VisionSessionC5StateVMa() + 20);
  v8 = *(a1 + v7);
  if (v8)
  {
    v9 = qword_1EE320A68;
    v10 = v8;
    if (v9 != -1)
    {
      swift_once();
    }

    v11 = sub_1D8BF08A0();
    __swift_project_value_buffer(v11, qword_1EE320A70);
    v12 = sub_1D8BF0880();
    v13 = sub_1D8BF0B80();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1D8BAF000, v12, v13, "SpatialPhoto.VisionSession use VNSession", v14, 2u);
      MEMORY[0x1DA723A30](v14, -1, -1);
    }
  }

  else
  {
    if (qword_1EE320A68 != -1)
    {
      swift_once();
    }

    v15 = sub_1D8BF08A0();
    __swift_project_value_buffer(v15, qword_1EE320A70);
    v16 = sub_1D8BF0880();
    v17 = sub_1D8BF0B70();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1D8BAF000, v16, v17, "SpatialPhoto.VisionSession create VNSession", v18, 2u);
      MEMORY[0x1DA723A30](v18, -1, -1);
    }

    v19 = [objc_allocWithZone(MEMORY[0x1E6984688]) init];
    *(a1 + v7) = v19;
    v10 = v19;
  }

  *a3 = v10;
}

uint64_t sub_1D8BEE90C()
{
  v1 = *(v0 + 24);
  v2 = *(*v1 + *MEMORY[0x1E69E6B68] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v1 + v3));
  sub_1D8BEEFFC(v1 + v2);
  os_unfair_lock_unlock((v1 + v3));
}

void sub_1D8BEE9B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D8BEFF30();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v25 = &v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAA4BF0);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAA4BC0);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v23[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v23[-v16];
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v23[-v18];
  (*(v5 + 16))(&v23[-v18], a2, v4);
  __swift_storeEnumTagSinglePayload(v19, 0, 1, v4);
  v26 = a1;
  sub_1D8BEF018(a1, v17);
  v20 = *(v8 + 56);
  sub_1D8BEF018(v19, v10);
  sub_1D8BEF018(v17, &v10[v20]);
  if (__swift_getEnumTagSinglePayload(v10, 1, v4) != 1)
  {
    sub_1D8BEF018(v10, v14);
    if (__swift_getEnumTagSinglePayload(&v10[v20], 1, v4) != 1)
    {
      v21 = v25;
      (*(v5 + 32))(v25, &v10[v20], v4);
      sub_1D8BEF154(&qword_1ECAA4BF8, MEMORY[0x1E6969530]);
      v24 = sub_1D8BF09A0();
      v22 = *(v5 + 8);
      v22(v21, v4);
      sub_1D8BC81E4(v17, &qword_1ECAA4BC0);
      sub_1D8BC81E4(v19, &qword_1ECAA4BC0);
      v22(v14, v4);
      sub_1D8BC81E4(v10, &qword_1ECAA4BC0);
      if ((v24 & 1) == 0)
      {
        return;
      }

      goto LABEL_8;
    }

    sub_1D8BC81E4(v17, &qword_1ECAA4BC0);
    sub_1D8BC81E4(v19, &qword_1ECAA4BC0);
    (*(v5 + 8))(v14, v4);
LABEL_6:
    sub_1D8BC81E4(v10, &qword_1ECAA4BF0);
    return;
  }

  sub_1D8BC81E4(v17, &qword_1ECAA4BC0);
  sub_1D8BC81E4(v19, &qword_1ECAA4BC0);
  if (__swift_getEnumTagSinglePayload(&v10[v20], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_1D8BC81E4(v10, &qword_1ECAA4BC0);
LABEL_8:
  sub_1D8BEDE80(0x72656D6974, 0xE500000000000000);
}

uint64_t sub_1D8BEEDEC()
{
  sub_1D8BEEDC4();

  return swift_deallocClassInstance();
}

uint64_t _s14descr1F54466F9O13VisionSessionC5StateVMa()
{
  result = qword_1ECAA4BC8;
  if (!qword_1ECAA4BC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D8BEEEB8()
{
  sub_1D8BEEF3C();
  if (v0 <= 0x3F)
  {
    sub_1D8BEEF94();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D8BEEF3C()
{
  if (!qword_1ECAA4BD8)
  {
    sub_1D8BEFF30();
    v0 = sub_1D8BF0D00();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECAA4BD8);
    }
  }
}

void sub_1D8BEEF94()
{
  if (!qword_1ECAA4BE0)
  {
    sub_1D8BCF84C(255, &qword_1ECAA4BE8);
    v0 = sub_1D8BF0D00();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECAA4BE0);
    }
  }
}

uint64_t sub_1D8BEF018(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAA4BC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D8BEF154(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D8BEF19C(uint64_t a1, uint64_t a2)
{
  v4 = _s14descr1F54466F9O13VisionSessionC5StateVMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D8BEF200(uint64_t a1)
{
  v2 = _s14descr1F54466F9O13VisionSessionC5StateVMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D8BEF274(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 444))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 80);
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

uint64_t sub_1D8BEF2B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 440) = 0;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 444) = 1;
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
      *(result + 80) = (a2 - 1);
      return result;
    }

    *(result + 444) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1D8BEF378@<Q0>(uint64_t a1@<X8>, float32x4_t a2@<Q0>)
{
  v4 = *(v2 + 80);
  v5 = *(v2 + 108);
  v6 = *(v2 + 112);
  v7 = *(v2 + 120);
  v35 = *(v2 + 144);
  v32 = *(v2 + 32);
  v33 = *(v2 + 160);
  v30 = *(v2 + 176);
  v8 = *(v2 + 436);
  v9 = sub_1D8BECF58();
  v10 = vdiv_f32(vcvt_f32_f64(vcvtq_f64_s64(v32)), v7);
  v11 = v10.f32[1];
  if (v10.f32[0] > v10.f32[1])
  {
    v11 = v10.f32[0];
  }

  v12 = v11 * v9;
  v13 = v35;
  *&v13 = v12 * *&v35;
  v14 = v33;
  DWORD1(v14) = vmuls_lane_f32(v12, *&v33, 1);
  v34 = v14;
  v36 = v13;
  v15.n128_u64[0] = vmul_f32(v10, *v30.i8);
  v15.n128_u64[1] = vextq_s8(v30, v30, 8uLL).u64[0];
  v31 = v15;
  v16 = *(v4 + 48);
  if (v8 > (v5 + ((v6 - v5) * v16)))
  {
    v17 = v8;
  }

  else
  {
    v17 = v5 + ((v6 - v5) * v16);
  }

  v18.i32[3] = 0;
  v19 = v17 / sqrtf(vaddv_f32(vmul_f32(*a2.f32, *a2.f32)) + ((a2.f32[2] - v17) * (a2.f32[2] - v17)));
  v18.i64[0] = vaddq_f32(vmulq_n_f32(a2, v19), 0).u64[0];
  v18.f32[2] = v17 + ((a2.f32[2] - v17) * v19);
  *&v20 = sub_1D8BEF510(0, LODWORD(v17), 0, 0xBF80000000000000, 0, 0, 1, v18);
  v21 = *MEMORY[0x1E69E9B18];
  v22 = *(MEMORY[0x1E69E9B18] + 16);
  v23 = *(MEMORY[0x1E69E9B18] + 32);
  v24 = *(MEMORY[0x1E69E9B18] + 48);
  *a1 = v32;
  *(a1 + 16) = 0x497424003C23D70ALL;
  *(a1 + 24) = 0;
  *(a1 + 28) = 0;
  *(a1 + 32) = v20;
  *(a1 + 48) = v25;
  *(a1 + 64) = v26;
  *(a1 + 80) = v27;
  *(a1 + 96) = v36;
  *(a1 + 112) = v34;
  result = v31;
  *(a1 + 128) = v31;
  *(a1 + 144) = v21;
  *(a1 + 160) = v22;
  *(a1 + 176) = v23;
  *(a1 + 192) = v24;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = v32;
  return result;
}

double sub_1D8BEF510(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6, char a7, float32x4_t a8)
{
  v9.i64[0] = a1;
  v9.i64[1] = a2;
  if (a3)
  {
    v10 = -1;
  }

  else
  {
    v10 = 0;
  }

  v11.i64[0] = a4;
  v11.i64[1] = a5;
  v12 = vsubq_f32(vbslq_s8(vdupq_n_s32(v10), 0, v9), a8);
  v13 = vmulq_f32(v12, v12);
  *&v14 = v13.f32[2] + vaddv_f32(*v13.f32);
  *v13.f32 = vrsqrte_f32(v14);
  *v13.f32 = vmul_f32(*v13.f32, vrsqrts_f32(v14, vmul_f32(*v13.f32, *v13.f32)));
  v15 = vmulq_n_f32(v12, vmul_f32(*v13.f32, vrsqrts_f32(v14, vmul_f32(*v13.f32, *v13.f32))).f32[0]);
  if (a6)
  {
    v16 = -1;
  }

  else
  {
    v16 = 0;
  }

  v17 = vbslq_s8(vdupq_n_s32(v16), xmmword_1D8BF7190, v11);
  v18 = vextq_s8(vuzp1q_s32(v15, v15), v15, 0xCuLL);
  v19 = vnegq_f32(v15);
  v20 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v17, v17), v17, 0xCuLL), v19), v17, v18);
  v21 = vextq_s8(vuzp1q_s32(v20, v20), v20, 0xCuLL);
  v22 = vmulq_f32(v20, v20);
  *&v23 = v22.f32[1] + (v22.f32[2] + v22.f32[0]);
  *v22.f32 = vrsqrte_f32(v23);
  *v22.f32 = vmul_f32(*v22.f32, vrsqrts_f32(v23, vmul_f32(*v22.f32, *v22.f32)));
  v24 = vmulq_n_f32(v21, vmul_f32(*v22.f32, vrsqrts_f32(v23, vmul_f32(*v22.f32, *v22.f32))).f32[0]);
  v25 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v24, v24), v24, 0xCuLL), v19), v24, v18);
  v26 = vextq_s8(vuzp1q_s32(v25, v25), v25, 0xCuLL);
  v27 = vmulq_f32(v25, v25);
  v19.f32[0] = v27.f32[1] + (v27.f32[2] + v27.f32[0]);
  *v27.f32 = vrsqrte_f32(v19.u32[0]);
  *v27.f32 = vmul_f32(*v27.f32, vrsqrts_f32(v19.u32[0], vmul_f32(*v27.f32, *v27.f32)));
  v28 = vmulq_n_f32(v26, vmul_f32(*v27.f32, vrsqrts_f32(v19.u32[0], vmul_f32(*v27.f32, *v27.f32))).f32[0]);
  if (a7)
  {
    v24.i64[0] = vzip1q_s32(vzip1q_s32(v24, v15), vzip1q_s32(v28, 0)).u64[0];
  }

  return *v24.i64;
}

void sub_1D8BEF6B8()
{
  memcpy(__dst, v0, sizeof(__dst));
  v1 = *(v0 + 80);
  v15 = *(v0 + 88);
  v16 = *(v0 + 104);
  v3 = *(v0 + 108);
  v2 = *(v0 + 112);
  v4 = *(v0 + 116);
  v12 = *(v0 + 120);
  v10 = *(v0 + 128);
  memcpy(v22, (v0 + 136), sizeof(v22));
  v5 = *(v0 + 436);
  v6 = *(v0 + 440);
  v14 = v1;
  v17 = v3;
  v18 = v2;
  v19 = v4;
  v20 = v12;
  v21 = v10;
  v23 = v5;
  v24 = v6;
  sub_1D8BEF894();
  v7 = sub_1D8BECF58();
  if (qword_1ECAA3E08 != -1)
  {
    swift_once();
  }

  v9 = dword_1ECAAA814;
  v8 = v7 * *&dword_1ECAAA814;
  OUTLINED_FUNCTION_1_9(v3 * (v7 * *&dword_1ECAAA814));
  OUTLINED_FUNCTION_0_15(v2 * v8);
  v11 = vmul_f32(__PAIR64__(HIDWORD(v10), v9), (COERCE_UNSIGNED_INT(sub_1D8BECF58()) | 0x4000000000000000)).f32[0];
  OUTLINED_FUNCTION_1_9(v3 * v11);
  OUTLINED_FUNCTION_0_15(v2 * v11);
}

float sub_1D8BEF894()
{
  v1 = v0[13].f32[1];
  v2 = v0[14].f32[0];
  v3 = vdiv_f32(v0[15], v0[16]);
  v4 = sqrtf(vaddv_f32(vmul_f32(v3, v3)));
  v5 = v2 - v1;
  if ((v2 - v1) <= 0.1)
  {
    v5 = 0.1;
  }

  return ((sub_1D8BED048() / 1.4142) * ((v1 * v2) / v5)) * v4;
}

float sub_1D8BEF90C(float a1, float a2, float a3, float a4)
{
  v4 = (((a2 - a4) * a3) + a1) * 0.5;
  v5 = ((a1 * a3) - a2) * a4;
  v6 = fabsf(v4) + sqrtf(v5 + (v4 * v4));
  result = v5 / v6;
  if (result >= v6)
  {
    return v6;
  }

  return result;
}

float sub_1D8BEF950()
{
  sub_1D8BEF6B8();
  if (v1 < v0)
  {
    v0 = v1;
  }

  return v0 / 0.06;
}

float OUTLINED_FUNCTION_0_15(float a1)
{
  v5 = a1 / v4;

  return sub_1D8BEF90C(v5, v2, v4, v3);
}

float OUTLINED_FUNCTION_1_9(float a1)
{
  v5 = a1 / v4;

  return sub_1D8BEF90C(v5, v2, v4, v3);
}

uint64_t sub_1D8BEF9C8()
{
  v0 = sub_1D8BF08A0();
  __swift_allocate_value_buffer(v0, qword_1EE320A70);
  __swift_project_value_buffer(v0, qword_1EE320A70);
  return sub_1D8BF0890();
}

uint64_t sub_1D8BEFABC()
{
  v0 = sub_1D8BF08A0();
  __swift_allocate_value_buffer(v0, qword_1ECAA4C08);
  __swift_project_value_buffer(v0, qword_1ECAA4C08);
  return sub_1D8BF0890();
}

uint64_t sub_1D8BEFB90()
{
  v0 = sub_1D8BF08A0();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00]();
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D8BF0820();
  __swift_allocate_value_buffer(v4, qword_1ECAA4C20);
  __swift_project_value_buffer(v4, qword_1ECAA4C20);
  if (qword_1EE320A68 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_1EE320A70);
  (*(v1 + 16))(v3, v5, v0);
  return sub_1D8BF0800();
}

uint64_t sub_1D8BEFD04@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v7 = a2(0);
  v8 = __swift_project_value_buffer(v7, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE40](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE88](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

simd_float4x4 __invert_f4(simd_float4x4 a1)
{
  MEMORY[0x1EEE73560](a1.columns[0], a1.columns[1], a1.columns[2], a1.columns[3]);
  result.columns[3].i64[1] = v8;
  result.columns[3].i64[0] = v7;
  result.columns[2].i64[1] = v6;
  result.columns[2].i64[0] = v5;
  result.columns[1].i64[1] = v4;
  result.columns[1].i64[0] = v3;
  result.columns[0].i64[1] = v2;
  result.columns[0].i64[0] = v1;
  return result;
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x1EEE73570](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}