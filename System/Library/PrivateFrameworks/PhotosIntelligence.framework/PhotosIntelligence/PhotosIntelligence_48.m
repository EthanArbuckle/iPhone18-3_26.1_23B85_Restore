void sub_1C72F27DC()
{
  OUTLINED_FUNCTION_154_3();
  OUTLINED_FUNCTION_12_54();
  if (!(!v8 & v7) || (v4 & 1) == 0)
  {
    if (v4)
    {
      OUTLINED_FUNCTION_60_18(v5);
      sub_1C72ECF50();
      goto LABEL_11;
    }

    if (v6 <= v5)
    {
      OUTLINED_FUNCTION_60_18(v5);
      sub_1C72FAF50();
LABEL_11:
      OUTLINED_FUNCTION_161_5();
      sub_1C75505AC();
      sub_1C7551FAC();
      OUTLINED_FUNCTION_9_2();
      v15 = ~v14;
      while (1)
      {
        v2 = v13 & v15;
        OUTLINED_FUNCTION_70_16();
        if (((*(v3 + 56 + v16) >> v2) & 1) == 0)
        {
          goto LABEL_8;
        }

        type metadata accessor for MusicKeywordCompletion();
        if (static MusicKeywordCompletion.== infix(_:_:)(*(*(v3 + 48) + 8 * v2), v0))
        {
          goto LABEL_16;
        }

        v13 = v2 + 1;
      }
    }

    sub_1C72F4F60();
  }

LABEL_8:
  OUTLINED_FUNCTION_0_135(*v1);
  *(v9 + 8 * v2) = v0;
  OUTLINED_FUNCTION_56_23();
  if (v12)
  {
    __break(1u);
LABEL_16:
    sub_1C7551E3C();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v11;
  }
}

void sub_1C72F28DC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2167E8);
  OUTLINED_FUNCTION_81_16();
  OUTLINED_FUNCTION_117_6();
  if (v5)
  {
    v6 = OUTLINED_FUNCTION_1_102();
    if (v9)
    {
      v10 = v6 >= v8;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      OUTLINED_FUNCTION_159_5(v6, v7);
    }

    v11 = 0;
    OUTLINED_FUNCTION_6_76();
    OUTLINED_FUNCTION_137_8();
    while (v4)
    {
      OUTLINED_FUNCTION_8_2();
LABEL_15:
      v16 = v12 | (v11 << 6);
      v17 = (*(v1 + 48) + 16 * v16);
      v18 = v17[1];
      v19 = (v0[6] + 16 * v16);
      *v19 = *v17;
      v19[1] = v18;
      sub_1C75504FC();
    }

    v13 = v11;
    while (1)
    {
      v11 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v11 >= v3)
      {
        goto LABEL_17;
      }

      ++v13;
      if (*(v2 + 8 * v11))
      {
        OUTLINED_FUNCTION_78_0();
        v4 = v15 & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v0 = v0;
  }
}

void *sub_1C72F29BC()
{
  v1 = v0;
  v2 = type metadata accessor for Hastings.Asset(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2190F8);
  v6 = *v0;
  v7 = sub_1C755177C();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v6 + 56 + 8 * v10)
    {
      result = memmove(result, (v6 + 56), 8 * v10);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_17:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_1C72FBF68(*(v6 + 48) + v21, v5);
        result = sub_1C72FBF10(v5, *(v8 + 48) + v21);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_19;
      }

      v20 = *(v6 + 56 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v8;
  }

  return result;
}

void sub_1C72F2BC4()
{
  OUTLINED_FUNCTION_33();
  v3 = v0;
  v4 = type metadata accessor for Hastings.Feature();
  v5 = OUTLINED_FUNCTION_18(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_14_0();
  v8 = v7 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219100);
  v9 = *v0;
  v10 = sub_1C755177C();
  if (*(v9 + 16))
  {
    OUTLINED_FUNCTION_18_44();
    OUTLINED_FUNCTION_157_2();
    if (v14)
    {
      v15 = v11 >= v13;
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {
      memmove(v11, v1, 8 * v12);
    }

    v16 = 0;
    *(v10 + 16) = *(v9 + 16);
    OUTLINED_FUNCTION_23_37();
    v19 = v18 & v17;
    v21 = (v20 + 63) >> 6;
    if ((v18 & v17) != 0)
    {
      do
      {
        OUTLINED_FUNCTION_86();
LABEL_15:
        OUTLINED_FUNCTION_174_2();
        OUTLINED_FUNCTION_79_13();
        sub_1C72FBF68(v26 + v2, v8);
        OUTLINED_FUNCTION_76_15();
        sub_1C72FBF10(v8, v27 + v2);
      }

      while (v19);
    }

    v22 = v16;
    while (1)
    {
      v16 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v16 >= v21)
      {
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_194_3();
      if (v23)
      {
        OUTLINED_FUNCTION_78_0();
        v19 = v25 & v24;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v3 = v10;
    OUTLINED_FUNCTION_25_0();
  }
}

void *sub_1C72F2D54()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216890);
  v2 = *v0;
  v3 = sub_1C755177C();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
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

void *sub_1C72F2E94()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216888);
  v2 = *v0;
  v3 = sub_1C755177C();
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

void sub_1C72F2FE8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219120);
  OUTLINED_FUNCTION_81_16();
  OUTLINED_FUNCTION_117_6();
  if (v3)
  {
    v4 = OUTLINED_FUNCTION_1_102();
    if (v7)
    {
      v8 = v4 >= v6;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      OUTLINED_FUNCTION_159_5(v4, v5);
    }

    v9 = 0;
    OUTLINED_FUNCTION_6_76();
    v12 = v11 & v10;
    v14 = (v13 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_15:
        v19 = v15 | (v9 << 6);
        v20 = 3 * v19;
        v21 = (*(v1 + 48) + 192 * v19);
        memcpy(__dst, v21, sizeof(__dst));
        memmove((v0[6] + (v20 << 6)), v21, 0xC0uLL);
        sub_1C7080654(__dst, &v22);
      }

      while (v12);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_17;
      }

      ++v16;
      if (*(v2 + 8 * v9))
      {
        OUTLINED_FUNCTION_78_0();
        v12 = v18 & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v0 = v0;
  }
}

void *sub_1C72F310C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A610);
  v2 = *v0;
  v3 = sub_1C755177C();
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
        v18 = (*(v2 + 48) + 32 * v17);
        v19 = v18[1];
        v20 = v18[2];
        v21 = v18[3];
        v22 = (*(v4 + 48) + 32 * v17);
        *v22 = *v18;
        v22[1] = v19;
        v22[2] = v20;
        v22[3] = v21;
        sub_1C75504FC();
        sub_1C75504FC();
        result = sub_1C75504FC();
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

void sub_1C72F3284()
{
  OUTLINED_FUNCTION_33();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A608);
  OUTLINED_FUNCTION_81_16();
  OUTLINED_FUNCTION_117_6();
  if (v2)
  {
    v3 = OUTLINED_FUNCTION_1_102();
    if (v6)
    {
      v7 = v3 >= v5;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      OUTLINED_FUNCTION_159_5(v3, v4);
    }

    v8 = 0;
    OUTLINED_FUNCTION_6_76();
    v11 = v10 & v9;
    v13 = (v12 + 63) >> 6;
    if ((v10 & v9) != 0)
    {
      do
      {
        OUTLINED_FUNCTION_88();
LABEL_15:
        OUTLINED_FUNCTION_179_3();
        v17 *= 5;
        v19 = (v18 + 8 * v17);
        v20 = v19[1];
        v21 = v19[2];
        v22 = v19[3];
        v23 = v19[4];
        v24 = (v0[6] + 8 * v17);
        *v24 = *v19;
        v24[1] = v20;
        v24[2] = v21;
        v24[3] = v22;
        v24[4] = v23;
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
      }

      while (v11);
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_17;
      }

      ++v14;
      if (*(v1 + 8 * v8))
      {
        OUTLINED_FUNCTION_78_0();
        v11 = v16 & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v0 = v0;
    OUTLINED_FUNCTION_25_0();
  }
}

void *sub_1C72F338C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A618);
  v24 = v0;
  v1 = *v0;
  v2 = sub_1C755177C();
  v3 = v2;
  if (*(v1 + 16))
  {
    result = (v2 + 56);
    v5 = ((1 << *(v3 + 32)) + 63) >> 6;
    if (v3 != v1 || result >= v1 + 56 + 8 * v5)
    {
      result = memmove(result, (v1 + 56), 8 * v5);
    }

    v7 = 0;
    *(v3 + 16) = *(v1 + 16);
    v8 = 1 << *(v1 + 32);
    v9 = *(v1 + 56);
    v10 = -1;
    if (v8 < 64)
    {
      v10 = ~(-1 << v8);
    }

    v11 = v10 & v9;
    v12 = (v8 + 63) >> 6;
    if ((v10 & v9) != 0)
    {
      do
      {
        v13 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
LABEL_17:
        v16 = 3 * (v13 | (v7 << 6));
        v17 = (*(v1 + 48) + 16 * v16);
        v18 = v17[1];
        v19 = v17[2];
        v20 = v17[3];
        v21 = v17[4];
        v22 = v17[5];
        v23 = (*(v3 + 48) + 16 * v16);
        *v23 = *v17;
        v23[1] = v18;
        v23[2] = v19;
        v23[3] = v20;
        v23[4] = v21;
        v23[5] = v22;
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
        result = sub_1C75504FC();
      }

      while (v11);
    }

    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v7 >= v12)
      {
        goto LABEL_19;
      }

      v15 = *(v1 + 56 + 8 * v7);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v24 = v3;
  }

  return result;
}

void *sub_1C72F3530()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A600);
  v2 = *v0;
  v3 = sub_1C755177C();
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
        *(*(v4 + 48) + 16 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 16 * (v14 | (v8 << 6)));
        result = sub_1C75504FC();
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

void *sub_1C72F3684()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A668);
  v2 = *v0;
  v3 = sub_1C755177C();
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
        v17 = 5 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + 8 * v17;
        v19 = *(v18 + 8);
        v20 = *(v18 + 16);
        v21 = *(v18 + 24);
        v22 = *(v18 + 25);
        v23 = *(v18 + 32);
        v24 = *(v4 + 48) + 8 * v17;
        *v24 = *v18;
        *(v24 + 8) = v19;
        *(v24 + 16) = v20;
        *(v24 + 24) = v21;
        *(v24 + 25) = v22;
        *(v24 + 32) = v23;
        sub_1C75504FC();
        result = sub_1C75504FC();
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

void *sub_1C72F3808()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A670);
  v2 = *v0;
  v3 = sub_1C755177C();
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
        v18 = (*(v2 + 48) + (v17 << 6));
        v20 = *v18;
        v19 = v18[1];
        v21 = v18[3];
        v27[2] = v18[2];
        v27[3] = v21;
        v27[0] = v20;
        v27[1] = v19;
        v22 = (*(v4 + 48) + (v17 << 6));
        v23 = *v18;
        v24 = v18[1];
        v25 = v18[3];
        v22[2] = v18[2];
        v22[3] = v25;
        *v22 = v23;
        v22[1] = v24;
        result = sub_1C7026698(v27, &v26);
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

void sub_1C72F3988()
{
  OUTLINED_FUNCTION_33();
  v3 = v0;
  v4 = type metadata accessor for PartOfWeekExtendedToken(0);
  v5 = OUTLINED_FUNCTION_18(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_14_0();
  v8 = v7 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A678);
  v9 = *v0;
  v10 = sub_1C755177C();
  if (*(v9 + 16))
  {
    OUTLINED_FUNCTION_18_44();
    OUTLINED_FUNCTION_157_2();
    if (v14)
    {
      v15 = v11 >= v13;
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {
      memmove(v11, v1, 8 * v12);
    }

    v16 = 0;
    *(v10 + 16) = *(v9 + 16);
    OUTLINED_FUNCTION_23_37();
    v19 = v18 & v17;
    v21 = (v20 + 63) >> 6;
    if ((v18 & v17) != 0)
    {
      do
      {
        OUTLINED_FUNCTION_86();
LABEL_15:
        OUTLINED_FUNCTION_174_2();
        OUTLINED_FUNCTION_75_12();
        sub_1C72FBF68(v26 + v2, v8);
        OUTLINED_FUNCTION_14_52();
        sub_1C72FBF10(v8, v27 + v2);
      }

      while (v19);
    }

    v22 = v16;
    while (1)
    {
      v16 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v16 >= v21)
      {
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_194_3();
      if (v23)
      {
        OUTLINED_FUNCTION_78_0();
        v19 = v25 & v24;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v3 = v10;
    OUTLINED_FUNCTION_25_0();
  }
}

void *sub_1C72F3B04()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A680);
  v2 = *v0;
  v3 = sub_1C755177C();
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
        v17 = 56 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(v18 + 24);
        v24 = *(v18 + 32);
        v23 = *(v18 + 40);
        LOBYTE(v18) = *(v18 + 48);
        v25 = *(v4 + 48) + v17;
        *v25 = v19;
        *(v25 + 8) = v20;
        *(v25 + 16) = v21;
        *(v25 + 24) = v22;
        *(v25 + 32) = v24;
        *(v25 + 40) = v23;
        *(v25 + 48) = v18;
        sub_1C75504FC();
        sub_1C75504FC();
        result = sub_1C75504FC();
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

void *sub_1C72F3C9C()
{
  v1 = v0;
  v2 = type metadata accessor for TimeExtendedToken(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A688);
  v6 = *v0;
  v7 = sub_1C755177C();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v6 + 56 + 8 * v10)
    {
      result = memmove(result, (v6 + 56), 8 * v10);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_17:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_1C72FBF68(*(v6 + 48) + v21, v5);
        result = sub_1C72FBF10(v5, *(v8 + 48) + v21);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_19;
      }

      v20 = *(v6 + 56 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v8;
  }

  return result;
}

void *sub_1C72F3EA4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A690);
  v2 = *v0;
  v3 = sub_1C755177C();
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
        v17 = 5 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + 8 * v17;
        v19 = *(v18 + 8);
        v20 = *(v18 + 16);
        v21 = *(v18 + 24);
        v22 = *(v18 + 25);
        v23 = *(v18 + 32);
        v24 = *(v4 + 48) + 8 * v17;
        *v24 = *v18;
        *(v24 + 8) = v19;
        *(v24 + 16) = v20;
        *(v24 + 24) = v21;
        *(v24 + 25) = v22;
        *(v24 + 32) = v23;
        sub_1C75504FC();
        result = sub_1C75504FC();
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

void *sub_1C72F4028()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A698);
  v2 = *v0;
  v3 = sub_1C755177C();
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
        v17 = 56 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v20 = *(v18 + 16);
        v19 = *(v18 + 32);
        v21 = *v18;
        v28 = *(v18 + 48);
        v27[1] = v20;
        v27[2] = v19;
        v27[0] = v21;
        v22 = *(v4 + 48) + v17;
        v23 = *v18;
        v24 = *(v18 + 16);
        v25 = *(v18 + 32);
        *(v22 + 48) = *(v18 + 48);
        *(v22 + 16) = v24;
        *(v22 + 32) = v25;
        *v22 = v23;
        result = sub_1C70260B4(v27, v26);
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

void *sub_1C72F41C0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A6A0);
  v2 = *v0;
  v3 = sub_1C755177C();
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
        v18 = 9 * v17;
        v19 = (*(v2 + 48) + 72 * v17);
        memcpy(__dst, v19, 0x42uLL);
        memmove((*(v4 + 48) + 8 * v18), v19, 0x42uLL);
        result = sub_1C7025FF8(__dst, &v20);
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

void *sub_1C72F4348()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A6A8);
  v2 = *v0;
  v3 = sub_1C755177C();
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
        v18 = 9 * v17;
        v19 = (*(v2 + 48) + 72 * v17);
        memcpy(__dst, v19, 0x41uLL);
        memmove((*(v4 + 48) + 8 * v18), v19, 0x41uLL);
        result = sub_1C7025F3C(__dst, &v20);
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

void sub_1C72F44D0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219128);
  OUTLINED_FUNCTION_81_16();
  OUTLINED_FUNCTION_117_6();
  if (v3)
  {
    v4 = OUTLINED_FUNCTION_1_102();
    if (v7)
    {
      v8 = v4 >= v6;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      OUTLINED_FUNCTION_159_5(v4, v5);
    }

    OUTLINED_FUNCTION_69_18();
    if (v11)
    {
      do
      {
        OUTLINED_FUNCTION_153_4();
LABEL_15:
        *(v0[6] + 8 * v13) = *(*(v1 + 48) + 8 * v13);
      }

      while (v12);
    }

    v14 = v9;
    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v10)
      {
        goto LABEL_17;
      }

      ++v14;
      if (*(v2 + 8 * v15))
      {
        OUTLINED_FUNCTION_152_4();
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v0 = v0;
  }
}

void *sub_1C72F4584()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A628);
  v2 = *v0;
  v3 = sub_1C755177C();
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
        v18 = (*(v2 + 48) + (v17 << 6));
        v20 = *v18;
        v19 = v18[1];
        v21 = v18[3];
        v27[2] = v18[2];
        v27[3] = v21;
        v27[0] = v20;
        v27[1] = v19;
        v22 = (*(v4 + 48) + (v17 << 6));
        v23 = *v18;
        v24 = v18[1];
        v25 = v18[3];
        v22[2] = v18[2];
        v22[3] = v25;
        *v22 = v23;
        v22[1] = v24;
        result = sub_1C70802EC(v27, &v26);
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

void *sub_1C72F4704()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A648);
  v2 = *v0;
  v3 = sub_1C755177C();
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
        v17 = *(v2 + 48);
        v18 = 120 * (v14 | (v8 << 6));
        memcpy(__dst, (v17 + v18), sizeof(__dst));
        memmove((*(v4 + 48) + v18), (v17 + v18), 0x78uLL);
        result = sub_1C6FCA6E4(__dst, &v19);
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

void sub_1C72F488C()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  v3 = v2(0);
  OUTLINED_FUNCTION_3_0();
  v5 = v4;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v28 - v7;
  v9 = OUTLINED_FUNCTION_282();
  __swift_instantiateConcreteTypeFromMangledNameV2(v9);
  v10 = *v0;
  v11 = sub_1C755177C();
  if (v10[2])
  {
    v29 = v1;
    v12 = OUTLINED_FUNCTION_18_44();
    v14 = (v13 + 63) >> 6;
    if (v11 != v10 || v12 >= &v10[v14 + 7])
    {
      memmove(v12, v10 + 7, 8 * v14);
    }

    v16 = 0;
    *(v11 + 16) = v10[2];
    OUTLINED_FUNCTION_23_37();
    v19 = v18 & v17;
    v21 = (v20 + 63) >> 6;
    v30 = v5 + 32;
    v31 = v5 + 16;
    if ((v18 & v17) != 0)
    {
      do
      {
        OUTLINED_FUNCTION_88();
LABEL_15:
        v27 = *(v5 + 72) * (v22 | (v16 << 6));
        (*(v5 + 16))(v8, v10[6] + v27, v3);
        (*(v5 + 32))(*(v11 + 48) + v27, v8, v3);
      }

      while (v19);
    }

    v23 = v16;
    while (1)
    {
      v16 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v16 >= v21)
      {

        v1 = v29;
        goto LABEL_19;
      }

      OUTLINED_FUNCTION_176_2();
      if (v24)
      {
        OUTLINED_FUNCTION_78_0();
        v19 = v26 & v25;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_19:
    *v1 = v11;
    OUTLINED_FUNCTION_25_0();
  }
}

void *sub_1C72F4A70()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A620);
  v2 = *v0;
  v3 = sub_1C755177C();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 2 * v14) = *(*(v2 + 48) + 2 * v14))
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

void sub_1C72F4BB0(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  OUTLINED_FUNCTION_81_16();
  OUTLINED_FUNCTION_117_6();
  if (v6)
  {
    v7 = OUTLINED_FUNCTION_1_102();
    if (v10)
    {
      v11 = v7 >= v9;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      OUTLINED_FUNCTION_159_5(v7, v8);
    }

    v12 = 0;
    OUTLINED_FUNCTION_6_76();
    OUTLINED_FUNCTION_137_8();
    while (v5)
    {
      OUTLINED_FUNCTION_8_2();
LABEL_15:
      v17 = 3 * (v13 | (v12 << 6));
      v18 = *(v2 + 48) + 8 * v17;
      v20 = *(v18 + 8);
      v19 = *(v18 + 16);
      v21 = v1[6] + 8 * v17;
      *v21 = *v18;
      *(v21 + 8) = v20;
      *(v21 + 16) = v19;
      sub_1C75504FC();
    }

    v14 = v12;
    while (1)
    {
      v12 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v12 >= v4)
      {
        goto LABEL_17;
      }

      ++v14;
      if (*(v3 + 8 * v12))
      {
        OUTLINED_FUNCTION_78_0();
        v5 = v16 & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v1 = v1;
  }
}

void sub_1C72F4CB4(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  OUTLINED_FUNCTION_81_16();
  OUTLINED_FUNCTION_117_6();
  if (v4)
  {
    v5 = OUTLINED_FUNCTION_1_102();
    if (v8)
    {
      v9 = v5 >= v7;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      OUTLINED_FUNCTION_159_5(v5, v6);
    }

    OUTLINED_FUNCTION_69_18();
    if (v12)
    {
      do
      {
        OUTLINED_FUNCTION_153_4();
LABEL_15:
        *(v1[6] + v14) = *(*(v2 + 48) + v14);
      }

      while (v13);
    }

    v15 = v10;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v16 >= v11)
      {
        goto LABEL_17;
      }

      ++v15;
      if (*(v3 + 8 * v16))
      {
        OUTLINED_FUNCTION_152_4();
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v1 = v1;
  }
}

void *sub_1C72F4D58()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A638);
  v2 = *v0;
  v3 = sub_1C755177C();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 2 * v14) = *(*(v2 + 48) + 2 * v14))
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

void sub_1C72F4E98(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  OUTLINED_FUNCTION_81_16();
  OUTLINED_FUNCTION_117_6();
  if (v6)
  {
    v7 = OUTLINED_FUNCTION_1_102();
    if (v10)
    {
      v11 = v7 >= v9;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      OUTLINED_FUNCTION_159_5(v7, v8);
    }

    v12 = 0;
    OUTLINED_FUNCTION_6_76();
    OUTLINED_FUNCTION_137_8();
    for (; v5; v19 = v18)
    {
      OUTLINED_FUNCTION_8_2();
LABEL_15:
      v17 = v13 | (v12 << 6);
      v18 = *(*(v2 + 48) + 8 * v17);
      *(v1[6] + 8 * v17) = v18;
    }

    v14 = v12;
    while (1)
    {
      v12 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v12 >= v4)
      {
        goto LABEL_17;
      }

      ++v14;
      if (*(v3 + 8 * v12))
      {
        OUTLINED_FUNCTION_78_0();
        v5 = v16 & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v1 = v1;
  }
}

void *sub_1C72F4F60()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217770);
  v2 = *v0;
  v3 = sub_1C755177C();
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
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
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

void sub_1C72F50B0()
{
  OUTLINED_FUNCTION_223();
  OUTLINED_FUNCTION_15_57();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2167E8);
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_212_3();
  OUTLINED_FUNCTION_102_10();
  if (v3)
  {
    v4 = 0;
    OUTLINED_FUNCTION_90_1();
    v7 = v6 & v5;
    OUTLINED_FUNCTION_72_5();
    if (v7)
    {
      while (1)
      {
        OUTLINED_FUNCTION_88();
LABEL_9:
        OUTLINED_FUNCTION_179_3();
        v14 = (v13 + 16 * v12);
        v15 = *v14;
        v16 = v14[1];
        OUTLINED_FUNCTION_168_5();
        sub_1C75504FC();
        sub_1C75505AC();
        sub_1C7551FAC();
        OUTLINED_FUNCTION_29_32();
        if (v17)
        {
          break;
        }

        OUTLINED_FUNCTION_16();
LABEL_17:
        OUTLINED_FUNCTION_98_0();
        OUTLINED_FUNCTION_149_5();
        *v19 = v15;
        v19[1] = v16;
        OUTLINED_FUNCTION_47_1();
        if (!v7)
        {
          goto LABEL_4;
        }
      }

      OUTLINED_FUNCTION_15_0();
      while (1)
      {
        OUTLINED_FUNCTION_95_2();
        if (v17)
        {
          if (v18)
          {
            break;
          }
        }

        OUTLINED_FUNCTION_38_19();
        if (!v17)
        {
          OUTLINED_FUNCTION_14_1();
          goto LABEL_17;
        }
      }
    }

    else
    {
LABEL_4:
      v8 = v4;
      while (1)
      {
        v4 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        if (v4 >= v2)
        {
          goto LABEL_19;
        }

        OUTLINED_FUNCTION_176_2();
        if (v9)
        {
          OUTLINED_FUNCTION_78_0();
          v7 = v11 & v10;
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v0 = v1;
    OUTLINED_FUNCTION_224_0();
  }
}

uint64_t sub_1C72F5200()
{
  v1 = v0;
  v2 = type metadata accessor for Hastings.Asset(0);
  v28 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2190F8);
  result = sub_1C755178C();
  v7 = result;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    if (v11)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
LABEL_12:
        v17 = *(v28 + 72);
        sub_1C72FBF68(*(v5 + 48) + v17 * (v14 | (v8 << 6)), v4);
        sub_1C7551F3C();
        sub_1C75505AC();
        result = sub_1C7551FAC();
        v18 = -1 << *(v7 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v13 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v13 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v13 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        result = sub_1C72FBF10(v4, *(v7 + 48) + v21 * v17);
        ++*(v7 + 16);
        if (!v11)
        {
          goto LABEL_7;
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
        v25 = *(v13 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v15 = v8;
      while (1)
      {
        v8 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v8 >= v12)
        {

          v1 = v27;
          goto LABEL_25;
        }

        v16 = *(v5 + 56 + 8 * v8);
        ++v15;
        if (v16)
        {
          v14 = __clz(__rbit64(v16));
          v11 = (v16 - 1) & v16;
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
    *v1 = v7;
  }

  return result;
}

uint64_t sub_1C72F54D4()
{
  v1 = v0;
  v2 = type metadata accessor for Hastings.Feature();
  v31 = *(v2 - 8);
  v32 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219100);
  result = sub_1C755178C();
  v7 = result;
  if (*(v5 + 16))
  {
    v29 = v0;
    v30 = v5;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    if (v12)
    {
      while (1)
      {
        v15 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_12:
        v18 = *(v5 + 48);
        v19 = *(v31 + 72);
        sub_1C72FBF68(v18 + v19 * (v15 | (v8 << 6)), v4);
        sub_1C7551F3C();
        sub_1C75505AC();
        sub_1C75505AC();

        sub_1C754F58C();
        sub_1C72FC014(&qword_1EC215238, MEMORY[0x1E69C1928]);
        sub_1C755059C();
        result = sub_1C7551FAC();
        v20 = -1 << *(v7 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v14 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        result = sub_1C72FBF10(v4, *(v7 + 48) + v23 * v19);
        ++*(v7 + 16);
        v5 = v30;
        if (!v12)
        {
          goto LABEL_7;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v14 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v16 = v8;
      while (1)
      {
        v8 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if (v8 >= v13)
        {

          v1 = v29;
          goto LABEL_25;
        }

        v17 = *(v9 + 8 * v8);
        ++v16;
        if (v17)
        {
          v15 = __clz(__rbit64(v17));
          v12 = (v17 - 1) & v17;
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
    *v1 = v7;
  }

  return result;
}

uint64_t sub_1C72F58C4()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219148);
  result = sub_1C755178C();
  v4 = result;
  if (*(v2 + 16))
  {
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
        v14 = *(*(v2 + 48) + (v11 | (v5 << 6)));
        sub_1C7551F3C();
        sub_1C75505AC();

        result = sub_1C7551FAC();
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
        *(*(v4 + 48) + v18) = v14;
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

          v1 = v0;
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

uint64_t sub_1C72F5AF8()
{
  v1 = v0;
  v32 = sub_1C754E07C();
  v2 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A6B0);
  v6 = sub_1C755178C();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    if (v12)
    {
      while (1)
      {
        v15 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_12:
        v18 = *(v31 + 72);
        (*(v31 + 16))(v4, *(result + 48) + v18 * (v15 | (v8 << 6)), v32);
        sub_1C72FC014(&qword_1EC215FD8, MEMORY[0x1E6969610]);
        result = sub_1C755058C();
        v19 = -1 << *(v6 + 32);
        v20 = result & ~v19;
        v21 = v20 >> 6;
        if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
        {
          break;
        }

        v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
        (*v28)(*(v6 + 48) + v22 * v18, v4, v32);
        ++*(v6 + 16);
        result = v29;
        if (!v12)
        {
          goto LABEL_7;
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
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v16 = v8;
      while (1)
      {
        v8 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if (v8 >= v13)
        {

          v1 = v27;
          goto LABEL_25;
        }

        v17 = *(v9 + 8 * v8);
        ++v16;
        if (v17)
        {
          v15 = __clz(__rbit64(v17));
          v12 = (v17 - 1) & v17;
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
    *v1 = v6;
  }

  return result;
}

uint64_t sub_1C72F5E10()
{
  v1 = v0;
  v32 = sub_1C754E15C();
  v2 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A630);
  v6 = sub_1C755178C();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    if (v12)
    {
      while (1)
      {
        v15 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_12:
        v18 = *(v31 + 72);
        (*(v31 + 16))(v4, *(result + 48) + v18 * (v15 | (v8 << 6)), v32);
        sub_1C72FC014(&qword_1EDD0F9C0, MEMORY[0x1E6969770]);
        result = sub_1C755058C();
        v19 = -1 << *(v6 + 32);
        v20 = result & ~v19;
        v21 = v20 >> 6;
        if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
        {
          break;
        }

        v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
        (*v28)(*(v6 + 48) + v22 * v18, v4, v32);
        ++*(v6 + 16);
        result = v29;
        if (!v12)
        {
          goto LABEL_7;
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
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v16 = v8;
      while (1)
      {
        v8 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if (v8 >= v13)
        {

          v1 = v27;
          goto LABEL_25;
        }

        v17 = *(v9 + 8 * v8);
        ++v16;
        if (v17)
        {
          v15 = __clz(__rbit64(v17));
          v12 = (v17 - 1) & v17;
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
    *v1 = v6;
  }

  return result;
}

uint64_t sub_1C72F6128()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216890);
  result = sub_1C755178C();
  v4 = result;
  if (*(v2 + 16))
  {
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
        v14 = *(*(v2 + 48) + (v11 | (v5 << 6)));
        sub_1C7551F3C();
        sub_1C75505AC();

        result = sub_1C7551FAC();
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
        *(*(v4 + 48) + v18) = v14;
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

          v1 = v0;
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

uint64_t sub_1C72F6388()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216888);
  result = sub_1C755178C();
  v4 = result;
  if (*(v2 + 16))
  {
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
        sub_1C7551F3C();
        MEMORY[0x1CCA5E460](v14);
        result = sub_1C7551FAC();
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

          v1 = v0;
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

uint64_t sub_1C72F65A4()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216880);
  result = sub_1C755178C();
  v4 = result;
  if (*(v2 + 16))
  {
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
        v14 = *(*(v2 + 48) + (v11 | (v5 << 6)));
        sub_1C7551F3C();
        sub_1C75505AC();

        result = sub_1C7551FAC();
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
        *(*(v4 + 48) + v18) = v14;
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

          v1 = v0;
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

uint64_t sub_1C72F69DC()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219120);
  result = sub_1C755178C();
  v4 = result;
  if (*(v2 + 16))
  {
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
        memcpy(__dst, (*(v2 + 48) + 192 * (v11 | (v5 << 6))), 0xC0uLL);
        sub_1C7551F3C();
        sub_1C7080654(__dst, v22);
        sub_1C75505AC();
        sub_1C75505AC();

        result = sub_1C7551FAC();
        v14 = -1 << *(v4 + 32);
        v15 = result & ~v14;
        v16 = v15 >> 6;
        if (((-1 << v15) & ~*(v10 + 8 * (v15 >> 6))) == 0)
        {
          break;
        }

        v17 = __clz(__rbit64((-1 << v15) & ~*(v10 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v10 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
        result = memcpy((*(v4 + 48) + 192 * v17), __dst, 0xC0uLL);
        ++*(v4 + 16);
        if (!v8)
        {
          goto LABEL_7;
        }
      }

      v18 = 0;
      v19 = (63 - v14) >> 6;
      while (++v16 != v19 || (v18 & 1) == 0)
      {
        v20 = v16 == v19;
        if (v16 == v19)
        {
          v16 = 0;
        }

        v18 |= v20;
        v21 = *(v10 + 8 * v16);
        if (v21 != -1)
        {
          v17 = __clz(__rbit64(~v21)) + (v16 << 6);
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

          v1 = v0;
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

uint64_t sub_1C72F6CDC()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A610);
  result = sub_1C755178C();
  v4 = result;
  if (*(v2 + 16))
  {
    v29 = v0;
    v30 = v2;
    v5 = 0;
    v6 = v2 + 56;
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
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = (*(v2 + 48) + 32 * (v12 | (v5 << 6)));
        v16 = *v15;
        v17 = v15[1];
        v18 = v15[2];
        v19 = v15[3];
        sub_1C7551F3C();
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75505AC();
        result = sub_1C7551FAC();
        v20 = -1 << *(v4 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        v28 = (*(v4 + 48) + 32 * v23);
        *v28 = v16;
        v28[1] = v17;
        v28[2] = v18;
        v28[3] = v19;
        ++*(v4 + 16);
        v2 = v30;
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v11 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v5;
      while (1)
      {
        v5 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v5 >= v10)
        {

          v1 = v29;
          goto LABEL_25;
        }

        v14 = *(v6 + 8 * v5);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
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

uint64_t sub_1C72F6F34()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A608);
  result = sub_1C755178C();
  v4 = result;
  if (*(v2 + 16))
  {
    v30 = v0;
    v31 = v2;
    v5 = 0;
    v6 = v2 + 56;
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
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v32 = (v9 - 1) & v9;
LABEL_12:
        v15 = (*(v2 + 48) + 40 * (v12 | (v5 << 6)));
        v16 = *v15;
        v17 = v15[1];
        v19 = v15[2];
        v18 = v15[3];
        v20 = v15[4];
        sub_1C7551F3C();
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75505AC();
        result = sub_1C7551FAC();
        v21 = -1 << *(v4 + 32);
        v22 = result & ~v21;
        v23 = v22 >> 6;
        if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
        {
          break;
        }

        v24 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
        v29 = (*(v4 + 48) + 40 * v24);
        *v29 = v16;
        v29[1] = v17;
        v29[2] = v19;
        v29[3] = v18;
        v29[4] = v20;
        ++*(v4 + 16);
        v2 = v31;
        v9 = v32;
        if (!v32)
        {
          goto LABEL_7;
        }
      }

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
        v28 = *(v11 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v5;
      while (1)
      {
        v5 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v5 >= v10)
        {

          v1 = v30;
          goto LABEL_25;
        }

        v14 = *(v6 + 8 * v5);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v32 = (v14 - 1) & v14;
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

uint64_t sub_1C72F71B0()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A618);
  result = sub_1C755178C();
  v4 = result;
  if (*(v2 + 16))
  {
    v30 = v0;
    v5 = 0;
    v6 = v2 + 56;
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
    v31 = (v7 + 63) >> 6;
    v32 = v2;
    v10 = result + 56;
    if (v9)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v9));
        v33 = (v9 - 1) & v9;
LABEL_12:
        v14 = (*(v2 + 48) + 48 * (v11 | (v5 << 6)));
        v15 = *v14;
        v16 = v14[1];
        v18 = v14[2];
        v17 = v14[3];
        v20 = v14[4];
        v19 = v14[5];
        sub_1C7551F3C();
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75505AC();
        result = sub_1C7551FAC();
        v21 = -1 << *(v4 + 32);
        v22 = result & ~v21;
        v23 = v22 >> 6;
        if (((-1 << v22) & ~*(v10 + 8 * (v22 >> 6))) == 0)
        {
          break;
        }

        v24 = __clz(__rbit64((-1 << v22) & ~*(v10 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v10 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
        v29 = (*(v4 + 48) + 48 * v24);
        *v29 = v15;
        v29[1] = v16;
        v29[2] = v18;
        v29[3] = v17;
        v29[4] = v20;
        v29[5] = v19;
        ++*(v4 + 16);
        v2 = v32;
        v9 = v33;
        if (!v33)
        {
          goto LABEL_7;
        }
      }

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
        v28 = *(v10 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
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

        if (v5 >= v31)
        {

          v1 = v30;
          goto LABEL_25;
        }

        v13 = *(v6 + 8 * v5);
        ++v12;
        if (v13)
        {
          v11 = __clz(__rbit64(v13));
          v33 = (v13 - 1) & v13;
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

uint64_t sub_1C72F743C()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A600);
  result = sub_1C755178C();
  v4 = result;
  if (*(v2 + 16))
  {
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
        v14 = (*(v2 + 48) + 16 * (v11 | (v5 << 6)));
        v16 = *v14;
        v15 = v14[1];
        sub_1C7551F3C();
        sub_1C7551F5C();
        if (v15)
        {
          sub_1C75504FC();
          sub_1C75505AC();
        }

        result = sub_1C7551FAC();
        v17 = -1 << *(v4 + 32);
        v18 = result & ~v17;
        v19 = v18 >> 6;
        if (((-1 << v18) & ~*(v10 + 8 * (v18 >> 6))) == 0)
        {
          break;
        }

        v20 = __clz(__rbit64((-1 << v18) & ~*(v10 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v10 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
        v25 = (*(v4 + 48) + 16 * v20);
        *v25 = v16;
        v25[1] = v15;
        ++*(v4 + 16);
        if (!v8)
        {
          goto LABEL_7;
        }
      }

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
        v24 = *(v10 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_23;
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

          v1 = v0;
          goto LABEL_27;
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

LABEL_27:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1C72F768C()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A668);
  result = sub_1C755178C();
  v4 = result;
  if (*(v2 + 16))
  {
    v28 = v2;
    v5 = 0;
    v6 = v2 + 56;
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
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = *(v2 + 48) + 40 * (v12 | (v5 << 6));
        v16 = *v15;
        v17 = *(v15 + 8);
        v32 = *(v15 + 16);
        v30 = *(v15 + 25);
        v31 = *(v15 + 24);
        v29 = *(v15 + 26);
        v18 = *(v15 + 32);
        sub_1C7551F3C();
        sub_1C75504FC();
        sub_1C75504FC();
        MEMORY[0x1CCA5CD70](v16, v17);
        sub_1C75505AC();

        result = sub_1C7551FAC();
        v19 = -1 << *(v4 + 32);
        v20 = result & ~v19;
        v21 = v20 >> 6;
        if (((-1 << v20) & ~*(v11 + 8 * (v20 >> 6))) == 0)
        {
          break;
        }

        v22 = __clz(__rbit64((-1 << v20) & ~*(v11 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
        v27 = *(v4 + 48) + 40 * v22;
        *v27 = v16;
        *(v27 + 8) = v17;
        *(v27 + 16) = v32;
        *(v27 + 24) = v31;
        *(v27 + 25) = v30;
        *(v27 + 26) = v29;
        *(v27 + 32) = v18;
        ++*(v4 + 16);
        v2 = v28;
        if (!v9)
        {
          goto LABEL_7;
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
        v26 = *(v11 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v5;
      while (1)
      {
        v5 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v5 >= v10)
        {

          v1 = v0;
          goto LABEL_25;
        }

        v14 = *(v6 + 8 * v5);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
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

uint64_t sub_1C72F7944()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A670);
  result = sub_1C755178C();
  v4 = result;
  if (*(v2 + 16))
  {
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
        v14 = (*(v2 + 48) + ((v11 | (v5 << 6)) << 6));
        v16 = *v14;
        v15 = v14[1];
        v17 = v14[3];
        v36 = v14[2];
        v37 = v17;
        v34 = v16;
        v35 = v15;
        sub_1C7551F3C();
        v18 = v36;
        v32 = 0x3A70697254;
        v33 = 0xE500000000000000;
        sub_1C7026698(&v34, v31);
        MEMORY[0x1CCA5CD70](v18, *(&v18 + 1));
        sub_1C75505AC();

        result = sub_1C7551FAC();
        v19 = -1 << *(v4 + 32);
        v20 = result & ~v19;
        v21 = v20 >> 6;
        if (((-1 << v20) & ~*(v10 + 8 * (v20 >> 6))) == 0)
        {
          break;
        }

        v22 = __clz(__rbit64((-1 << v20) & ~*(v10 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v10 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
        v27 = (*(v4 + 48) + (v22 << 6));
        v28 = v34;
        v29 = v35;
        v30 = v37;
        v27[2] = v36;
        v27[3] = v30;
        *v27 = v28;
        v27[1] = v29;
        ++*(v4 + 16);
        if (!v8)
        {
          goto LABEL_7;
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
        v26 = *(v10 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
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

          v1 = v0;
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

void sub_1C72F7BDC()
{
  OUTLINED_FUNCTION_33();
  v2 = OUTLINED_FUNCTION_19_1();
  v3 = type metadata accessor for PartOfWeekExtendedToken(v2);
  v4 = OUTLINED_FUNCTION_18(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_14_0();
  v7 = (v6 - v5);
  v8 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A678);
  v9 = OUTLINED_FUNCTION_212_3();
  if (*(v8 + 16))
  {
    v10 = 0;
    OUTLINED_FUNCTION_90_1();
    v13 = v12 & v11;
    OUTLINED_FUNCTION_72_5();
    if (v13)
    {
      while (1)
      {
        v13 &= v13 - 1;
LABEL_9:
        OUTLINED_FUNCTION_75_12();
        sub_1C72FBF68(v18, v7);
        sub_1C7551F3C();
        OUTLINED_FUNCTION_92_13();
        MEMORY[0x1CCA5CD70](*v7, v7[1]);
        sub_1C75505AC();

        sub_1C7551FAC();
        OUTLINED_FUNCTION_29_32();
        if (v19)
        {
          break;
        }

        OUTLINED_FUNCTION_16();
LABEL_17:
        OUTLINED_FUNCTION_114_9(v20);
        OUTLINED_FUNCTION_14_52();
        sub_1C72FBF10(v7, v22);
        ++*(v9 + 16);
        if (!v13)
        {
          goto LABEL_4;
        }
      }

      OUTLINED_FUNCTION_15_0();
      while (1)
      {
        OUTLINED_FUNCTION_95_2();
        if (v19)
        {
          if (v21)
          {
            break;
          }
        }

        OUTLINED_FUNCTION_38_19();
        if (!v19)
        {
          OUTLINED_FUNCTION_14_1();
          goto LABEL_17;
        }
      }
    }

    else
    {
LABEL_4:
      v14 = v10;
      while (1)
      {
        v10 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v10 >= v1)
        {
          goto LABEL_19;
        }

        OUTLINED_FUNCTION_176_2();
        if (v15)
        {
          OUTLINED_FUNCTION_78_0();
          v13 = v17 & v16;
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v0 = v9;
    OUTLINED_FUNCTION_25_0();
  }
}

uint64_t sub_1C72F7DFC()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A680);
  result = sub_1C755178C();
  v4 = result;
  if (*(v2 + 16))
  {
    v29 = v0;
    v30 = v2;
    v5 = 0;
    v6 = v2 + 56;
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
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = *(v2 + 48) + 56 * (v12 | (v5 << 6));
        v17 = *v15;
        v16 = *(v15 + 8);
        v33 = *(v15 + 16);
        v18 = *(v15 + 32);
        v19 = *(v15 + 40);
        v31 = *(v15 + 48);
        v32 = *(v15 + 24);
        sub_1C7551F3C();
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
        MEMORY[0x1CCA5CD70](v17, v16);
        sub_1C75505AC();

        result = sub_1C7551FAC();
        v20 = -1 << *(v4 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        v28 = *(v4 + 48) + 56 * v23;
        *v28 = v17;
        *(v28 + 8) = v16;
        *(v28 + 16) = v33;
        *(v28 + 24) = v32;
        *(v28 + 32) = v18;
        *(v28 + 40) = v19;
        *(v28 + 48) = v31;
        ++*(v4 + 16);
        v2 = v30;
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v11 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v5;
      while (1)
      {
        v5 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v5 >= v10)
        {

          v1 = v29;
          goto LABEL_25;
        }

        v14 = *(v6 + 8 * v5);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
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

uint64_t sub_1C72F80C8()
{
  v1 = v0;
  v2 = type metadata accessor for TimeExtendedToken(0);
  v28 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = (&v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A688);
  result = sub_1C755178C();
  v7 = result;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    if (v11)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
LABEL_12:
        v17 = *(v28 + 72);
        sub_1C72FBF68(*(v5 + 48) + v17 * (v14 | (v8 << 6)), v4);
        sub_1C7551F3C();
        v29 = 0x3A656D6954;
        v30 = 0xE500000000000000;
        MEMORY[0x1CCA5CD70](*v4, v4[1]);
        sub_1C75505AC();

        result = sub_1C7551FAC();
        v18 = -1 << *(v7 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v13 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v13 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v13 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        result = sub_1C72FBF10(v4, *(v7 + 48) + v21 * v17);
        ++*(v7 + 16);
        if (!v11)
        {
          goto LABEL_7;
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
        v25 = *(v13 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v15 = v8;
      while (1)
      {
        v8 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v8 >= v12)
        {

          v1 = v27;
          goto LABEL_25;
        }

        v16 = *(v5 + 56 + 8 * v8);
        ++v15;
        if (v16)
        {
          v14 = __clz(__rbit64(v16));
          v11 = (v16 - 1) & v16;
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
    *v1 = v7;
  }

  return result;
}

uint64_t sub_1C72F83CC()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A690);
  result = sub_1C755178C();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = v2 + 56;
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
    v28 = v2;
    v11 = result + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = *(v2 + 48) + 40 * (v12 | (v5 << 6));
        v16 = *v15;
        v17 = *(v15 + 8);
        v31 = *(v15 + 16);
        v29 = *(v15 + 25);
        v30 = *(v15 + 24);
        v18 = *(v15 + 32);
        sub_1C7551F3C();
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C755180C();

        MEMORY[0x1CCA5CD70](v16, v17);
        sub_1C75505AC();

        result = sub_1C7551FAC();
        v19 = -1 << *(v4 + 32);
        v20 = result & ~v19;
        v21 = v20 >> 6;
        if (((-1 << v20) & ~*(v11 + 8 * (v20 >> 6))) == 0)
        {
          break;
        }

        v22 = __clz(__rbit64((-1 << v20) & ~*(v11 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
        v27 = *(v4 + 48) + 40 * v22;
        *v27 = v16;
        *(v27 + 8) = v17;
        *(v27 + 16) = v31;
        *(v27 + 24) = v30;
        *(v27 + 25) = v29;
        *(v27 + 32) = v18;
        ++*(v4 + 16);
        v2 = v28;
        if (!v9)
        {
          goto LABEL_7;
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
        v26 = *(v11 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v5;
      while (1)
      {
        v5 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v5 >= v10)
        {

          v1 = v0;
          goto LABEL_25;
        }

        v14 = *(v6 + 8 * v5);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
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

uint64_t sub_1C72F86A0()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A698);
  result = sub_1C755178C();
  v4 = result;
  if (*(v2 + 16))
  {
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
        v14 = *(v2 + 48) + 56 * (v11 | (v5 << 6));
        v15 = *v14;
        v16 = *(v14 + 48);
        v17 = *(v14 + 32);
        v35 = *(v14 + 16);
        v36 = v17;
        v37 = v16;
        v34 = v15;
        sub_1C7551F3C();
        v18 = v35;
        v32 = 0x6E6F697461636F4CLL;
        v33 = 0xE90000000000003ALL;
        sub_1C70260B4(&v34, v31);
        MEMORY[0x1CCA5CD70](v18, *(&v18 + 1));
        sub_1C75505AC();

        result = sub_1C7551FAC();
        v19 = -1 << *(v4 + 32);
        v20 = result & ~v19;
        v21 = v20 >> 6;
        if (((-1 << v20) & ~*(v10 + 8 * (v20 >> 6))) == 0)
        {
          break;
        }

        v22 = __clz(__rbit64((-1 << v20) & ~*(v10 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v10 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
        v27 = *(v4 + 48) + 56 * v22;
        v28 = v34;
        v29 = v35;
        v30 = v36;
        *(v27 + 48) = v37;
        *(v27 + 16) = v29;
        *(v27 + 32) = v30;
        *v27 = v28;
        ++*(v4 + 16);
        if (!v8)
        {
          goto LABEL_7;
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
        v26 = *(v10 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
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

          v1 = v0;
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

uint64_t sub_1C72F8944()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A6A0);
  result = sub_1C755178C();
  v4 = result;
  if (*(v2 + 16))
  {
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
        memcpy(__dst, (*(v2 + 48) + 72 * (v11 | (v5 << 6))), 0x42uLL);
        sub_1C7551F3C();
        v14 = __dst[4];
        v15 = __dst[5];
        v25 = 980706640;
        v26 = 0xE400000000000000;
        sub_1C7025FF8(__dst, v24);
        MEMORY[0x1CCA5CD70](v14, v15);
        sub_1C75505AC();

        result = sub_1C7551FAC();
        v16 = -1 << *(v4 + 32);
        v17 = result & ~v16;
        v18 = v17 >> 6;
        if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
        {
          break;
        }

        v19 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v10 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
        result = memcpy((*(v4 + 48) + 72 * v19), __dst, 0x42uLL);
        ++*(v4 + 16);
        if (!v8)
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
        v23 = *(v10 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
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

          v1 = v0;
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

uint64_t sub_1C72F8BC8()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A6A8);
  result = sub_1C755178C();
  v4 = result;
  if (*(v2 + 16))
  {
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
        memcpy(__dst, (*(v2 + 48) + 72 * (v11 | (v5 << 6))), 0x41uLL);
        sub_1C7551F3C();
        v14 = __dst[4];
        v15 = __dst[5];
        v25 = 0x3A6E6F73726550;
        v26 = 0xE700000000000000;
        sub_1C7025F3C(__dst, v24);
        MEMORY[0x1CCA5CD70](v14, v15);
        sub_1C75505AC();

        result = sub_1C7551FAC();
        v16 = -1 << *(v4 + 32);
        v17 = result & ~v16;
        v18 = v17 >> 6;
        if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
        {
          break;
        }

        v19 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v10 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
        result = memcpy((*(v4 + 48) + 72 * v19), __dst, 0x41uLL);
        ++*(v4 + 16);
        if (!v8)
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
        v23 = *(v10 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
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

          v1 = v0;
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

uint64_t sub_1C72F8E54()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219108);
  result = sub_1C755178C();
  v4 = result;
  if (*(v2 + 16))
  {
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
        v14 = *(*(v2 + 48) + (v11 | (v5 << 6)));
        sub_1C7551F3C();
        sub_1C75505AC();

        result = sub_1C7551FAC();
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
        *(*(v4 + 48) + v18) = v14;
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

          v1 = v0;
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

uint64_t sub_1C72F9108()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219128);
  result = sub_1C755178C();
  v4 = result;
  if (*(v2 + 16))
  {
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
        result = sub_1C7551F2C();
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
          goto LABEL_23;
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
LABEL_23:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1C72F92F4()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219140);
  result = sub_1C755178C();
  v4 = result;
  if (*(v2 + 16))
  {
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
        v14 = *(*(v2 + 48) + (v11 | (v5 << 6)));
        sub_1C7551F3C();
        StoryMusicTermTag.rawValue.getter();
        sub_1C75505AC();

        result = sub_1C7551FAC();
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
        *(*(v4 + 48) + v18) = v14;
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

          v1 = v0;
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

uint64_t sub_1C72F9530()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216758);
  result = sub_1C755178C();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = v2 + 56;
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
    v29 = v2;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v30 = (v9 - 1) & v9;
LABEL_12:
        v15 = *(v2 + 48) + 24 * (v12 | (v5 << 6));
        v16 = *v15;
        v17 = *(v15 + 8);
        v18 = *(v15 + 16);
        sub_1C7551F3C();
        sub_1C75504FC();
        sub_1C75505AC();

        sub_1C7551F5C();
        if (v18)
        {
          sub_1C75505AC();
        }

        result = sub_1C7551FAC();
        v19 = -1 << *(v4 + 32);
        v20 = result & ~v19;
        v21 = v20 >> 6;
        if (((-1 << v20) & ~*(v11 + 8 * (v20 >> 6))) == 0)
        {
          break;
        }

        v22 = __clz(__rbit64((-1 << v20) & ~*(v11 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
        v23 = v16;
LABEL_23:
        *(v11 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
        v28 = *(v4 + 48) + 24 * v22;
        *v28 = v23;
        *(v28 + 8) = v17;
        *(v28 + 16) = v18;
        ++*(v4 + 16);
        v2 = v29;
        v9 = v30;
        if (!v30)
        {
          goto LABEL_7;
        }
      }

      v24 = 0;
      v25 = (63 - v19) >> 6;
      v23 = v16;
      while (++v21 != v25 || (v24 & 1) == 0)
      {
        v26 = v21 == v25;
        if (v21 == v25)
        {
          v21 = 0;
        }

        v24 |= v26;
        v27 = *(v11 + 8 * v21);
        if (v27 != -1)
        {
          v22 = __clz(__rbit64(~v27)) + (v21 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v5;
      while (1)
      {
        v5 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v5 >= v10)
        {

          v1 = v0;
          goto LABEL_27;
        }

        v14 = *(v6 + 8 * v5);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v30 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1C72F98B4()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A628);
  result = sub_1C755178C();
  v4 = result;
  if (*(v2 + 16))
  {
    v34 = v2;
    v5 = 0;
    v6 = v2 + 56;
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
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v35 = (v9 - 1) & v9;
LABEL_12:
        v15 = (*(v2 + 48) + ((v12 | (v5 << 6)) << 6));
        v17 = *v15;
        v16 = v15[1];
        v18 = v15[3];
        v39 = v15[2];
        v40 = v18;
        v37 = v17;
        v38 = v16;
        sub_1C7551F3C();
        v19 = v39;
        sub_1C70802EC(&v37, v36);
        sub_1C75505AC();
        sub_1C75505AC();
        MEMORY[0x1CCA5E460](*(v19 + 16));
        v20 = *(v19 + 16);
        if (v20)
        {
          v21 = v19 + 40;
          do
          {
            sub_1C75504FC();
            sub_1C75505AC();

            v21 += 16;
            --v20;
          }

          while (v20);
        }

        if (v40)
        {
          sub_1C7551F5C();
          sub_1C75505AC();
        }

        else
        {
          sub_1C7551F5C();
        }

        v2 = v34;
        MEMORY[0x1CCA5E460](*(&v40 + 1));
        result = sub_1C7551FAC();
        v22 = -1 << *(v4 + 32);
        v23 = result & ~v22;
        v24 = v23 >> 6;
        if (((-1 << v23) & ~*(v11 + 8 * (v23 >> 6))) == 0)
        {
          break;
        }

        v25 = __clz(__rbit64((-1 << v23) & ~*(v11 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
        *(v11 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
        v30 = (*(v4 + 48) + (v25 << 6));
        v31 = v37;
        v32 = v38;
        v33 = v40;
        v30[2] = v39;
        v30[3] = v33;
        *v30 = v31;
        v30[1] = v32;
        ++*(v4 + 16);
        v9 = v35;
        if (!v35)
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
        v29 = *(v11 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_27;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v5;
      while (1)
      {
        v5 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v5 >= v10)
        {

          v1 = v0;
          goto LABEL_31;
        }

        v14 = *(v6 + 8 * v5);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v35 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_31:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1C72F9BC4()
{
  v1 = v0;
  TokenSuggestion = type metadata accessor for QueryTokenSuggestion(0);
  v32 = *(TokenSuggestion - 8);
  MEMORY[0x1EEE9AC00](TokenSuggestion - 8);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A648);
  result = sub_1C755178C();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v1;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    v33 = result;
    v34 = v5;
    if (v12)
    {
      while (1)
      {
        v15 = __clz(__rbit64(v12));
        v35 = (v12 - 1) & v12;
LABEL_12:
        memcpy(__dst, (*(v5 + 48) + 120 * (v15 | (v8 << 6))), 0x78uLL);
        sub_1C7551F3C();
        v18 = __dst[10];
        sub_1C6FCA6E4(__dst, &v36);
        sub_1C75505AC();
        MEMORY[0x1CCA5E460](*(v18 + 16));
        v19 = *(v18 + 16);
        if (v19)
        {
          v20 = v18 + ((*(v32 + 80) + 32) & ~*(v32 + 80));
          v21 = *(v32 + 72);
          do
          {
            sub_1C72FBF68(v20, v4);
            QueryTokenCategoryType.hash(into:)();
            sub_1C70F76E0(v4, type metadata accessor for QueryTokenSuggestion);
            v20 += v21;
            --v19;
          }

          while (v19);
        }

        result = sub_1C7551FAC();
        v7 = v33;
        v22 = -1 << *(v33 + 32);
        v23 = result & ~v22;
        v24 = v23 >> 6;
        if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
        {
          break;
        }

        v25 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
        v5 = v34;
LABEL_24:
        *(v14 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
        result = memcpy((*(v7 + 48) + 120 * v25), __dst, 0x78uLL);
        ++*(v7 + 16);
        v12 = v35;
        if (!v35)
        {
          goto LABEL_7;
        }
      }

      v26 = 0;
      v27 = (63 - v22) >> 6;
      v5 = v34;
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
          goto LABEL_24;
        }
      }
    }

    else
    {
LABEL_7:
      v16 = v8;
      while (1)
      {
        v8 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if (v8 >= v13)
        {

          v1 = v31;
          goto LABEL_28;
        }

        v17 = *(v9 + 8 * v8);
        ++v16;
        if (v17)
        {
          v15 = __clz(__rbit64(v17));
          v35 = (v17 - 1) & v17;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_28:
    *v1 = v7;
  }

  return result;
}

uint64_t sub_1C72F9F34()
{
  v1 = v0;
  v32 = sub_1C754F0FC();
  v2 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219130);
  v6 = sub_1C755178C();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    if (v12)
    {
      while (1)
      {
        v15 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_12:
        v18 = *(v31 + 72);
        (*(v31 + 16))(v4, *(result + 48) + v18 * (v15 | (v8 << 6)), v32);
        sub_1C72FC014(&qword_1EC2167B8, MEMORY[0x1E69C1790]);
        result = sub_1C755058C();
        v19 = -1 << *(v6 + 32);
        v20 = result & ~v19;
        v21 = v20 >> 6;
        if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
        {
          break;
        }

        v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
        (*v28)(*(v6 + 48) + v22 * v18, v4, v32);
        ++*(v6 + 16);
        result = v29;
        if (!v12)
        {
          goto LABEL_7;
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
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v16 = v8;
      while (1)
      {
        v8 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if (v8 >= v13)
        {

          v1 = v27;
          goto LABEL_25;
        }

        v17 = *(v9 + 8 * v8);
        ++v16;
        if (v17)
        {
          v15 = __clz(__rbit64(v17));
          v12 = (v17 - 1) & v17;
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
    *v1 = v6;
  }

  return result;
}

uint64_t sub_1C72FA24C()
{
  v1 = v0;
  v32 = sub_1C754D8BC();
  v2 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A640);
  v6 = sub_1C755178C();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    if (v12)
    {
      while (1)
      {
        v15 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_12:
        v18 = *(v31 + 72);
        (*(v31 + 16))(v4, *(result + 48) + v18 * (v15 | (v8 << 6)), v32);
        sub_1C72FC014(&qword_1EDD0CBF8, MEMORY[0x1E6968130]);
        result = sub_1C755058C();
        v19 = -1 << *(v6 + 32);
        v20 = result & ~v19;
        v21 = v20 >> 6;
        if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
        {
          break;
        }

        v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
        (*v28)(*(v6 + 48) + v22 * v18, v4, v32);
        ++*(v6 + 16);
        result = v29;
        if (!v12)
        {
          goto LABEL_7;
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
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v16 = v8;
      while (1)
      {
        v8 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if (v8 >= v13)
        {

          v1 = v27;
          goto LABEL_25;
        }

        v17 = *(v9 + 8 * v8);
        ++v16;
        if (v17)
        {
          v15 = __clz(__rbit64(v17));
          v12 = (v17 - 1) & v17;
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
    *v1 = v6;
  }

  return result;
}

uint64_t sub_1C72FA564()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A620);
  result = sub_1C755178C();
  v4 = result;
  if (*(v2 + 16))
  {
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
        v14 = *(*(v2 + 48) + 2 * (v11 | (v5 << 6)));
        sub_1C7551F3C();
        sub_1C7551F6C();
        result = sub_1C7551FAC();
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
        *(*(v4 + 48) + 2 * v18) = v14;
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

          v1 = v0;
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

uint64_t sub_1C72FA780()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216760);
  result = sub_1C755178C();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = v2 + 56;
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
    v29 = v2;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v30 = (v9 - 1) & v9;
LABEL_12:
        v15 = *(v2 + 48) + 24 * (v12 | (v5 << 6));
        v16 = *v15;
        v17 = *(v15 + 8);
        v18 = *(v15 + 16);
        sub_1C7551F3C();
        sub_1C75504FC();
        sub_1C75505AC();

        sub_1C7551F5C();
        if (v18)
        {
          sub_1C75505AC();
        }

        result = sub_1C7551FAC();
        v19 = -1 << *(v4 + 32);
        v20 = result & ~v19;
        v21 = v20 >> 6;
        if (((-1 << v20) & ~*(v11 + 8 * (v20 >> 6))) == 0)
        {
          break;
        }

        v22 = __clz(__rbit64((-1 << v20) & ~*(v11 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
        v23 = v16;
LABEL_23:
        *(v11 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
        v28 = *(v4 + 48) + 24 * v22;
        *v28 = v23;
        *(v28 + 8) = v17;
        *(v28 + 16) = v18;
        ++*(v4 + 16);
        v2 = v29;
        v9 = v30;
        if (!v30)
        {
          goto LABEL_7;
        }
      }

      v24 = 0;
      v25 = (63 - v19) >> 6;
      v23 = v16;
      while (++v21 != v25 || (v24 & 1) == 0)
      {
        v26 = v21 == v25;
        if (v21 == v25)
        {
          v21 = 0;
        }

        v24 |= v26;
        v27 = *(v11 + 8 * v21);
        if (v27 != -1)
        {
          v22 = __clz(__rbit64(~v27)) + (v21 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v5;
      while (1)
      {
        v5 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v5 >= v10)
        {

          v1 = v0;
          goto LABEL_27;
        }

        v14 = *(v6 + 8 * v5);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v30 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v1 = v4;
  }

  return result;
}

void sub_1C72FAB00()
{
  OUTLINED_FUNCTION_223();
  OUTLINED_FUNCTION_15_57();
  v6 = OUTLINED_FUNCTION_122_7(v4, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(v6);
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_212_3();
  OUTLINED_FUNCTION_102_10();
  if (v7)
  {
    v19 = v0;
    v8 = 0;
    OUTLINED_FUNCTION_37_29();
    if (v0)
    {
      while (1)
      {
        OUTLINED_FUNCTION_24_5();
LABEL_9:
        v14 = *(*(v1 + 48) + (v9 | (v8 << 6)));
        OUTLINED_FUNCTION_168_5();
        MEMORY[0x1CCA5E460](v14);
        sub_1C7551FAC();
        OUTLINED_FUNCTION_52_25();
        if (v15)
        {
          break;
        }

        OUTLINED_FUNCTION_16();
LABEL_17:
        OUTLINED_FUNCTION_98_0();
        OUTLINED_FUNCTION_89_13();
        *(v18 + v17) = v14;
        OUTLINED_FUNCTION_47_1();
        if (!v0)
        {
          goto LABEL_4;
        }
      }

      OUTLINED_FUNCTION_15_0();
      while (1)
      {
        OUTLINED_FUNCTION_95_2();
        if (v15)
        {
          if (v16)
          {
            break;
          }
        }

        OUTLINED_FUNCTION_27_27();
        if (!v15)
        {
          OUTLINED_FUNCTION_14_1();
          goto LABEL_17;
        }
      }
    }

    else
    {
LABEL_4:
      v10 = v8;
      while (1)
      {
        v8 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        if (v8 >= v3)
        {

          v0 = v19;
          goto LABEL_21;
        }

        OUTLINED_FUNCTION_194_3();
        if (v11)
        {
          OUTLINED_FUNCTION_78_0();
          v0 = (v13 & v12);
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v0 = v2;
    OUTLINED_FUNCTION_224_0();
  }
}

uint64_t sub_1C72FAC28()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A638);
  result = sub_1C755178C();
  v4 = result;
  if (*(v2 + 16))
  {
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
        v14 = *(*(v2 + 48) + 2 * (v11 | (v5 << 6)));
        result = MEMORY[0x1CCA5E430](*(v4 + 40), v14, 2);
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
        *(*(v4 + 48) + 2 * v18) = v14;
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
          goto LABEL_23;
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
LABEL_23:

    *v1 = v4;
  }

  return result;
}

void sub_1C72FAE18()
{
  OUTLINED_FUNCTION_15_57();
  v7 = OUTLINED_FUNCTION_122_7(v5, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(v7);
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_212_3();
  OUTLINED_FUNCTION_102_10();
  if (v8)
  {
    v20 = v0;
    v9 = 0;
    OUTLINED_FUNCTION_37_29();
    if (v0)
    {
      while (1)
      {
        OUTLINED_FUNCTION_24_5();
LABEL_9:
        v15 = *(*(v2 + 48) + 8 * (v10 | (v9 << 6)));
        OUTLINED_FUNCTION_51();
        sub_1C75513DC();
        OUTLINED_FUNCTION_52_25();
        if (v16)
        {
          break;
        }

        OUTLINED_FUNCTION_16();
LABEL_17:
        OUTLINED_FUNCTION_98_0();
        OUTLINED_FUNCTION_89_13();
        *(v19 + 8 * v18) = v1;
        OUTLINED_FUNCTION_47_1();
        if (!v0)
        {
          goto LABEL_4;
        }
      }

      OUTLINED_FUNCTION_15_0();
      while (1)
      {
        OUTLINED_FUNCTION_95_2();
        if (v16)
        {
          if (v17)
          {
            break;
          }
        }

        OUTLINED_FUNCTION_27_27();
        if (!v16)
        {
          OUTLINED_FUNCTION_14_1();
          goto LABEL_17;
        }
      }
    }

    else
    {
LABEL_4:
      v11 = v9;
      while (1)
      {
        v9 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v9 >= v4)
        {

          v0 = v20;
          goto LABEL_21;
        }

        OUTLINED_FUNCTION_194_3();
        if (v12)
        {
          OUTLINED_FUNCTION_78_0();
          v0 = (v14 & v13);
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v0 = v3;
  }
}

uint64_t sub_1C72FAF50()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217770);
  result = sub_1C755178C();
  v4 = result;
  if (*(v2 + 16))
  {
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
        sub_1C7551F3C();

        sub_1C75505AC();
        result = sub_1C7551FAC();
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

          v1 = v0;
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

unint64_t sub_1C72FB180()
{
  result = qword_1EC21A570;
  if (!qword_1EC21A570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21A570);
  }

  return result;
}

void *sub_1C72FB1D4(_BYTE *a1, uint64_t a2)
{
  v4 = a1;
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = a1[32];
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v12 = swift_slowAlloc();
      sub_1C75504FC();
      v4 = sub_1C72FB918(v12, v7, v4, a2);
      MEMORY[0x1CCA5F8E0](v12, -1, -1);
      swift_bridgeObjectRelease_n();
      goto LABEL_6;
    }
  }

  MEMORY[0x1EEE9AC00](v8);
  v9 = v13 - ((8 * v7 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_1C71FAC38(0, v7, v9);
  sub_1C75504FC();
  sub_1C72FB408(v9, v7, v4, a2);
  if (v2)
  {
    swift_willThrow();
  }

  else
  {
    v4 = v10;
  }

  swift_bridgeObjectRelease_n();
LABEL_6:

  return v4;
}

uint64_t sub_1C72FB398(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A580);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1C72FB408(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v45 = a2;
  v47 = a1;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A580);
  MEMORY[0x1EEE9AC00](v53);
  v7 = &v44 - v6;
  v8 = sub_1C754E07C();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v44 - v12;
  v54 = a3;
  v55 = 0;
  v16 = 0;
  v17 = *(a3 + 64);
  v46 = a3 + 64;
  v18 = 1 << *(a3 + 32);
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  else
  {
    v19 = -1;
  }

  v20 = v19 & v17;
  v21 = (v18 + 63) >> 6;
  v59 = a4 + 56;
  v51 = a4;
  v52 = v13;
  v61 = (v13 + 8);
  v62 = v13 + 16;
  v48 = v21;
  v49 = &v44 - v12;
  v50 = v7;
LABEL_5:
  while (v20)
  {
    v22 = __clz(__rbit64(v20));
    v58 = (v20 - 1) & v20;
LABEL_12:
    v25 = v22 | (v16 << 6);
    v26 = v54;
    v27 = *(v54 + 48);
    v60 = *(v52 + 72);
    v28 = *(v52 + 16);
    v29 = v15;
    v30 = v15;
    v31 = v25;
    v28(v29, v27 + v60 * v25, v8, v14);
    v32 = *(v26 + 56);
    v56 = v31;
    v33 = *(v32 + 8 * v31);
    v15 = v30;
    v34 = v50;
    (v28)(v50, v30, v8);
    *(v34 + *(v53 + 48)) = v33;
    v35 = v51;
    if (*(v51 + 16))
    {
      v57 = v16;
      sub_1C72FC014(&qword_1EC215FD8, MEMORY[0x1E6969610]);
      v36 = v34;
      v37 = sub_1C755058C();
      v38 = v35;
      v39 = ~(-1 << *(v35 + 32));
      while (1)
      {
        v40 = v37 & v39;
        if (((*(v59 + (((v37 & v39) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v37 & v39)) & 1) == 0)
        {
          break;
        }

        (v28)(v10, *(v38 + 48) + v40 * v60, v8);
        sub_1C72FC014(&qword_1EC215FE0, MEMORY[0x1E6969610]);
        v41 = sub_1C755063C();
        v42 = *v61;
        (*v61)(v10, v8);
        v37 = v40 + 1;
        if (v41)
        {
          sub_1C72FBFC0(v36, &qword_1EC21A580);
          v15 = v49;
          v42(v49, v8);
          v16 = v57;
          v20 = v58;
          v21 = v48;
          goto LABEL_5;
        }
      }

      v34 = v36;
      v21 = v48;
      v15 = v49;
      v16 = v57;
    }

    v20 = v58;
    sub_1C72FBFC0(v34, &qword_1EC21A580);
    (*v61)(v15, v8);
    *(v47 + ((v56 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v56;
    if (__OFADD__(v55++, 1))
    {
      __break(1u);
LABEL_21:
      sub_1C7484B7C(v47, v45, v55, v54);

      return;
    }
  }

  v23 = v16;
  while (1)
  {
    v16 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v16 >= v21)
    {
      goto LABEL_21;
    }

    v24 = *(v46 + 8 * v16);
    ++v23;
    if (v24)
    {
      v22 = __clz(__rbit64(v24));
      v58 = (v24 - 1) & v24;
      goto LABEL_12;
    }
  }

  __break(1u);
}

void *sub_1C72FB888(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *), uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_1C721A284(v9, a2, a3, a4, a5);
    v11 = v10;

    return v11;
  }

  return result;
}

void *sub_1C72FB918(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
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

    swift_bridgeObjectRetain_n();
    sub_1C72FB408(v7, a2, a3, a4);
    v9 = v8;
    swift_bridgeObjectRelease_n();

    return v9;
  }

  return result;
}

unint64_t sub_1C72FB9F0()
{
  result = qword_1EC21A5B0;
  if (!qword_1EC21A5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21A5B0);
  }

  return result;
}

unint64_t sub_1C72FBA78()
{
  result = qword_1EDD0F480;
  if (!qword_1EDD0F480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0F480);
  }

  return result;
}

unint64_t sub_1C72FBB00()
{
  result = qword_1EC21A5D8;
  if (!qword_1EC21A5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21A5D8);
  }

  return result;
}

uint64_t sub_1C72FBB84(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    v4 = OUTLINED_FUNCTION_122_7(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *_s17SupportedLanguageOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEF)
  {
    v6 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
          *result = a2 + 16;
        }

        break;
    }
  }

  return result;
}

_BYTE *_s17CharacterCategoryOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *_s26LanguageValidationCategoryOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C72FBE68()
{
  result = qword_1EDD0C058;
  if (!qword_1EDD0C058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0C058);
  }

  return result;
}

unint64_t sub_1C72FBEBC()
{
  result = qword_1EC21A5F8;
  if (!qword_1EC21A5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21A5F8);
  }

  return result;
}

uint64_t sub_1C72FBF10(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_19_1();
  v4(v3);
  OUTLINED_FUNCTION_12();
  v5 = OUTLINED_FUNCTION_90();
  v6(v5);
  return a2;
}

uint64_t sub_1C72FBF68(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_19_1();
  v4(v3);
  OUTLINED_FUNCTION_12();
  v5 = OUTLINED_FUNCTION_90();
  v6(v5);
  return a2;
}

uint64_t sub_1C72FBFC0(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_122_7(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(v3);
  OUTLINED_FUNCTION_12();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1C72FC014(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_40_34()
{

  return sub_1C70F76E0(v0, type metadata accessor for TimeExtendedToken);
}

__n128 OUTLINED_FUNCTION_54_24()
{
  result = *v1;
  v3 = *(v1 + 16);
  *v0 = *v1;
  *(v0 + 16) = v3;
  *(v0 + 32) = *(v1 + 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_61_16()
{

  return sub_1C755063C();
}

uint64_t OUTLINED_FUNCTION_62_18()
{

  return sub_1C75505AC();
}

uint64_t OUTLINED_FUNCTION_81_16()
{

  return sub_1C755177C();
}

uint64_t OUTLINED_FUNCTION_85_11()
{

  return sub_1C70F76E0(v0, type metadata accessor for Hastings.Asset);
}

uint64_t OUTLINED_FUNCTION_110_6()
{

  return sub_1C7551F3C();
}

uint64_t OUTLINED_FUNCTION_111_8()
{

  return sub_1C75505AC();
}

uint64_t OUTLINED_FUNCTION_132_6()
{

  return sub_1C7551DBC();
}

void OUTLINED_FUNCTION_135_6(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  *(v2 + 208) = *v3;
  *(v2 + 216) = v3[1];
}

void *OUTLINED_FUNCTION_159_5@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{

  return memmove(a1, v2, 8 * a2);
}

uint64_t OUTLINED_FUNCTION_161_5()
{

  return sub_1C7551F3C();
}

uint64_t OUTLINED_FUNCTION_162_5()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_164_3()
{

  return sub_1C7551F3C();
}

uint64_t OUTLINED_FUNCTION_166_4(float a1)
{
  *v1 = a1;
  v5 = *(v3 - 328);

  return sub_1C6F765A4(v5, v2, (v3 - 168));
}

uint64_t OUTLINED_FUNCTION_168_5()
{

  return sub_1C7551F3C();
}

uint64_t OUTLINED_FUNCTION_169_5()
{

  return sub_1C755178C();
}

void OUTLINED_FUNCTION_208_3()
{

  JUMPOUT(0x1CCA5CD70);
}

uint64_t OUTLINED_FUNCTION_209_3()
{

  return sub_1C7551DBC();
}

void OUTLINED_FUNCTION_210_2(void *a1@<X0>, const char *a2@<X3>, os_log_type_t a3@<W8>)
{

  _os_log_impl(a1, v3, a3, a2, v4, 0xCu);
}

uint64_t OUTLINED_FUNCTION_211_3()
{

  return sub_1C7551F3C();
}

uint64_t OUTLINED_FUNCTION_212_3()
{

  return sub_1C755178C();
}

uint64_t OUTLINED_FUNCTION_213_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, a4);
}

uint64_t PhotosSearchBasedStoryAssetsFetcher.init(with:isForTesting:)@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  type metadata accessor for PhotosSearchBasedStoryAssetsFetcher();
  sub_1C754FEFC();
  type metadata accessor for PhotosSearchQueryManagerProxy();
  v6 = swift_allocObject();
  result = sub_1C72FC904(a1, a2);
  *a3 = v6;
  return result;
}

uint64_t type metadata accessor for PhotosSearchBasedStoryAssetsFetcher()
{
  result = qword_1EDD0F990;
  if (!qword_1EDD0F990)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C72FC904(void *a1, char a2)
{
  v5 = objc_allocWithZone(MEMORY[0x1E6978A68]);
  v6 = &selRef_initForTestingWithPhotoLibrary_;
  if ((a2 & 1) == 0)
  {
    v6 = &selRef_initWithPhotoLibrary_;
  }

  v7 = [v5 *v6];

  *(v2 + 16) = v7;
  return v2;
}

uint64_t sub_1C72FC970()
{
  *(v1 + 144) = v0;
  v2 = OUTLINED_FUNCTION_24_1();
  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1C72FC998()
{
  v1 = *(v0[18] + 16);
  v0[2] = v0;
  v0[3] = sub_1C72FCAB0;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A6D8);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1C72FCBA4;
  v0[13] = &block_descriptor_24_1;
  v0[14] = v2;
  [v1 preheatSearchWithCompletionBlock_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1C72FCAB0()
{
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  OUTLINED_FUNCTION_14();
  *v2 = v1;

  return MEMORY[0x1EEE6DFA0](sub_1C72FCB84, 0, 0);
}

uint64_t sub_1C72FCBA4(uint64_t a1)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));

  return j__swift_continuation_resume();
}

void sub_1C72FCBDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + 16);
  v9[4] = a3;
  v9[5] = a4;
  OUTLINED_FUNCTION_4_78();
  v9[1] = 1107296256;
  v9[2] = sub_1C72FCC94;
  v9[3] = &block_descriptor_21;
  v8 = _Block_copy(v9);

  [v7 performSearch:a1 searchOptions:a2 resultsHandler:v8];
  _Block_release(v8);
}

void sub_1C72FCC94(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 32);

  v9 = a2;
  v8 = a4;
  v7(v9, a3, a4);
}

void sub_1C72FCD28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(v4 + 16);
  sub_1C6F65BE8(0, &qword_1EDD0CE30);
  v9 = sub_1C7550B3C();
  v11[4] = a3;
  v11[5] = a4;
  OUTLINED_FUNCTION_4_78();
  v11[1] = 1107296256;
  v11[2] = sub_1C72FCE10;
  v11[3] = &block_descriptor_29;
  v10 = _Block_copy(v11);

  [v8 performBatchSearch:v9 searchOptions:a2 resultsHandler:v10];
  _Block_release(v10);
}

void sub_1C72FCE10(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = *(a1 + 32);

  v11 = a2;
  v10 = a5;
  v9(v11, a3, a4, a5);
}

uint64_t PhotosSearchBasedStoryAssetsFetcher.Error.hashValue.getter()
{
  v1 = *v0;
  sub_1C7551F3C();
  MEMORY[0x1CCA5E460](v1);
  return sub_1C7551FAC();
}

uint64_t PhotosSearchBasedStoryAssetsFetcher.preheat(eventRecorder:)()
{
  OUTLINED_FUNCTION_42();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214BF0);
  OUTLINED_FUNCTION_76(v3);
  v1[4] = OUTLINED_FUNCTION_77();
  v4 = sub_1C754F38C();
  v1[5] = v4;
  OUTLINED_FUNCTION_18(v4);
  v1[6] = v5;
  v1[7] = OUTLINED_FUNCTION_77();
  v6 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C72FD054()
{
  v1 = *(v0 + 32);
  __swift_project_boxed_opaque_existential_1(*(v0 + 16), *(*(v0 + 16) + 24));
  OUTLINED_FUNCTION_45_24();
  OUTLINED_FUNCTION_51_1();
  sub_1C754F61C();
  OUTLINED_FUNCTION_25_8();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  sub_1C754F16C();
  sub_1C7047600(v1);
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  *v6 = v0;
  v6[1] = sub_1C72FD164;

  return sub_1C72FC970();
}

uint64_t sub_1C72FD164()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v1 = *v0;
  OUTLINED_FUNCTION_14();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C72FD248()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  __swift_project_boxed_opaque_existential_1(*(v0 + 16), *(*(v0 + 16) + 24));
  OUTLINED_FUNCTION_16_50();
  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_43();

  return v4();
}

uint64_t PhotosSearchBasedStoryAssetsFetcher.performSearch(with:options:eventRecorder:)()
{
  OUTLINED_FUNCTION_42();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v1[2] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214BF0);
  OUTLINED_FUNCTION_76(v6);
  v1[7] = OUTLINED_FUNCTION_77();
  v7 = sub_1C754F38C();
  v1[8] = v7;
  OUTLINED_FUNCTION_18(v7);
  v1[9] = v8;
  v1[10] = OUTLINED_FUNCTION_77();
  v9 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C72FD3D0()
{
  v1 = *(v0 + 56);
  __swift_project_boxed_opaque_existential_1(*(v0 + 40), *(*(v0 + 40) + 24));
  OUTLINED_FUNCTION_45_24();
  OUTLINED_FUNCTION_51_1();
  sub_1C754F61C();
  OUTLINED_FUNCTION_25_8();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  sub_1C754F16C();
  sub_1C7047600(v1);
  v6 = FreeformStoryFetching.Options.searchFetchOptions.getter();
  *(v0 + 88) = v6;
  v7 = v6;
  v8 = *(v0 + 48);
  v10 = *(v0 + 24);
  v9 = *(v0 + 32);
  v11 = swift_task_alloc();
  *(v0 + 96) = v11;
  v11[2] = v8;
  v11[3] = v10;
  v11[4] = v7;
  v11[5] = v9;
  v12 = swift_task_alloc();
  *(v0 + 104) = v12;
  *v12 = v0;
  v12[1] = sub_1C72FD5FC;
  v13 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v13, 0, 0, 0xD00000000000002ALL, 0x80000001C75AA250, sub_1C72FDAE0, v11, &type metadata for FreeformStoryFetching.Result);
}

uint64_t sub_1C72FD5FC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v3 + 112) = v0;

  if (v0)
  {
    v6 = sub_1C72FD7C8;
  }

  else
  {

    v6 = sub_1C72FD708;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1C72FD708()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 40);

  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  OUTLINED_FUNCTION_16_50();
  (*(v3 + 8))(v1, v2);

  OUTLINED_FUNCTION_43();

  return v5();
}

uint64_t sub_1C72FD7C8()
{

  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 64);
  OUTLINED_FUNCTION_24_6(*(v0 + 40));
  sub_1C754F1AC();
  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_43();

  return v4();
}

uint64_t sub_1C72FD898(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v26 = a4;
  v27 = a3;
  v8 = type metadata accessor for PhotosSearchBasedStoryAssetsFetcher();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A6D0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = v25 - v15;
  v25[1] = *a2;
  (*(v12 + 16))(v25 - v15, a1, v11, v14);
  sub_1C72C7318(a5, __src);
  sub_1C72FF630(a2, v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v18 = (v17 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v17 + v13 + 143) & 0xFFFFFFFFFFFFFFF8;
  v20 = (*(v9 + 80) + v19 + 8) & ~*(v9 + 80);
  v21 = swift_allocObject();
  (*(v12 + 32))(v21 + v17, v16, v11);
  memcpy((v21 + v18), __src, 0x81uLL);
  v22 = v26;
  *(v21 + v19) = v26;
  sub_1C72FF694(v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20);
  v23 = v22;
  sub_1C72FCBDC(v27, v23, sub_1C72FF9B0, v21);
}

uint64_t sub_1C72FDAEC(void *a1, uint64_t a2, id a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (a2 == 1)
  {
    sub_1C72FDF08(a1, a5, &v42);
    v10 = v42;
    v11 = v43;
    v12 = v44;
    v13 = sub_1C72FF86C(a6);
    if (v13)
    {
      v14 = *(v13 + 16);

      v42 = v14;
      v15 = sub_1C7551D8C();
      v17 = v16;
    }

    else
    {
      v17 = 0xE300000000000000;
      v15 = 7104878;
    }

    type metadata accessor for PhotosSearchBasedStoryAssetsFetcher();
    sub_1C72C7318(a5, &v42);
    swift_unknownObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v21 = v11;
    sub_1C75504FC();
    v22 = v21;
    v23 = sub_1C754FEEC();
    v24 = sub_1C75511BC();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = v15;
      log = v23;
      v26 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v41 = v39;
      *v26 = 136315907;
      v27 = 0xE900000000000067;
      v28 = 0x6E69646465626D65;
      if (v42 != 1)
      {
        v28 = 0x6574656C706D6F63;
        v27 = 0xE800000000000000;
      }

      if (v42)
      {
        v29 = v28;
      }

      else
      {
        v29 = 0x617461646174656DLL;
      }

      if (v42)
      {
        v30 = v27;
      }

      else
      {
        v30 = 0xE800000000000000;
      }

      sub_1C70DF138(&v42);
      v31 = sub_1C6F765A4(v29, v30, &v41);

      *(v26 + 4) = v31;
      *(v26 + 12) = 2080;
      v32 = sub_1C6F765A4(v25, v17, &v41);

      *(v26 + 14) = v32;
      *(v26 + 22) = 2085;
      sub_1C75504FC();
      v33 = v22;
      swift_unknownObjectRetain();
      v34 = FreeformStoryFetching.Result.description.getter();
      v36 = v35;

      swift_unknownObjectRelease();
      v37 = sub_1C6F765A4(v34, v36, &v41);

      *(v26 + 24) = v37;
      *(v26 + 32) = 2048;
      v38 = v10[2];
      swift_unknownObjectRelease();

      *(v26 + 34) = v38;
      swift_unknownObjectRelease();

      _os_log_impl(&dword_1C6F5C000, log, v24, "Perform %s search scoped to %s assets, result=%{sensitive}s with %ld assets", v26, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1CCA5F8E0](v39, -1, -1);
      MEMORY[0x1CCA5F8E0](v26, -1, -1);
    }

    else
    {

      swift_unknownObjectRelease_n();

      swift_bridgeObjectRelease_n();
      sub_1C70DF138(&v42);
    }

    v42 = v10;
    v43 = v22;
    v44 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A6D0);
    return sub_1C7550CAC();
  }

  else
  {
    if (a3)
    {
      v9 = a3;
    }

    else
    {
      sub_1C72FF8CC();
      v9 = swift_allocError();
      *v18 = 0;
    }

    v42 = v9;
    v19 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A6D0);
    return sub_1C7550C9C();
  }
}

void sub_1C72FDF08(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = FreeformStoryFetching.Options.searchFetchOptions.getter();
  if (!v3)
  {
    v8 = v7;
    v9 = [v7 maxRankedAssetSearchResults];

    if (v9 <= 1)
    {
      v10 = &selRef_searchResults;
    }

    else
    {
      v10 = &selRef_rankedAssetSearchResults;
    }

    v11 = sub_1C72FF93C(a1, v10, &qword_1EDD0CE90);
    if (v11)
    {
      v12 = v11;
      MEMORY[0x1EEE9AC00](v11);
      v20[2] = a2;
      sub_1C7044FEC(sub_1C72FF920, v20, v12);
      v14 = v13;

      v15 = [a1 annotatedQueryString];
      v16 = [a1 queryMatchDetails];
      if (v16)
      {
        v17 = v16;
        v18 = [v16 queryEmbedding];

        if (v18)
        {
          sub_1C6F65BE8(0, &qword_1EC21A6C8);
          v16 = PNTextEmbeddingResultWithBiasScale.init(from:)(v18);
        }

        else
        {
          v16 = 0;
        }
      }

      *a3 = v14;
      a3[1] = v15;
      a3[2] = v16;
    }

    else
    {
      sub_1C72FF8CC();
      swift_allocError();
      *v19 = 0;
      swift_willThrow();
    }
  }
}

uint64_t PhotosSearchBasedStoryAssetsFetcher.performBatchSearch(with:options:eventRecorder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v39 = a4;
  v35 = a2;
  v36 = a1;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A398);
  OUTLINED_FUNCTION_3_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v33 = &v32 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214BF0);
  v10 = OUTLINED_FUNCTION_76(v9);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v32 - v11;
  v34 = sub_1C754F38C();
  OUTLINED_FUNCTION_3_0();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v32 - v19;
  OUTLINED_FUNCTION_24_6(a3);
  OUTLINED_FUNCTION_45_24();
  OUTLINED_FUNCTION_51_1();
  v21 = sub_1C754F61C();
  OUTLINED_FUNCTION_25_8();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v21);
  OUTLINED_FUNCTION_15_58();
  sub_1C7047600(v12);
  OUTLINED_FUNCTION_24_6(a3);
  sub_1C754F17C();
  OUTLINED_FUNCTION_24_6(v46);
  OUTLINED_FUNCTION_45_24();
  OUTLINED_FUNCTION_51_1();
  OUTLINED_FUNCTION_25_8();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v21);
  OUTLINED_FUNCTION_15_58();
  sub_1C7047600(v12);
  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  v40 = v35;
  v41 = v36;
  v42 = v28;
  v43 = v46;
  v44 = v17;
  v45 = v38;
  (*(v6 + 104))(v33, *MEMORY[0x1E69E8650], v37);
  sub_1C7550DFC();

  v29 = *(v14 + 8);
  v30 = v34;
  v29(v17, v34);
  __swift_destroy_boxed_opaque_existential_1(v46);
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  sub_1C754F1AC();
  return (v29)(v20, v30);
}

void sub_1C72FE428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6, uint64_t *a7)
{
  v31 = a7;
  v39 = a6;
  v38 = a5;
  v40 = a4;
  v41 = a3;
  v37 = a1;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A3B8);
  v33 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v36 = sub_1C754F38C();
  v32 = *(v36 - 8);
  v8 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PhotosSearchBasedStoryAssetsFetcher();
  v30 = *(v9 - 8);
  v10 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC21A3A0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v30 - v15;
  v17 = FreeformStoryFetching.Options.searchFetchOptions.getter();
  v18 = v31;
  v34 = *v31;
  v19 = *(v13 + 16);
  v33 = v17;
  v19(v16, v37, v12);
  sub_1C72C7318(a2, __src);
  sub_1C72FF630(v18, v11);
  sub_1C6FB5E28(v38, v42);
  v20 = v32;
  (*(v32 + 16))(v35, v39, v36);
  v21 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v39 = (v21 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v38 = (v21 + v14 + 143) & 0xFFFFFFFFFFFFFFF8;
  v22 = (*(v30 + 80) + v38 + 8) & ~*(v30 + 80);
  v23 = (v10 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = *(v20 + 80);
  v37 = v11;
  v25 = v40;
  v26 = (v24 + v23 + 40) & ~v24;
  v27 = swift_allocObject();
  *(v27 + 16) = v25;
  (*(v13 + 32))(v27 + v21, v16, v12);
  memcpy((v27 + v39), __src, 0x81uLL);
  v28 = v33;
  *(v27 + v38) = v33;
  sub_1C72FF694(v37, v27 + v22);
  sub_1C6FD80E4(v42, v27 + v23);
  (*(v20 + 32))(v27 + v26, v35, v36);
  v29 = v28;

  sub_1C72FCD28(v41, v29, sub_1C72FF6F8, v27);
}

unint64_t sub_1C72FE9E8()
{
  result = qword_1EC21A6B8;
  if (!qword_1EC21A6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21A6B8);
  }

  return result;
}

void sub_1C72FEA3C(void *a1, uint64_t a2, int a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, void *a10)
{
  v69 = a3;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A3B8);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v58 - v18;
  swift_beginAccess();
  if ((*(a5 + 16) & 1) == 0)
  {
    v68 = a2;
    v20 = [a1 annotatedQueryString];
    v21 = v20;
    if (a4)
    {
      v74 = v20;
      v75 = a4;
      v76 = 0;
      v77 = 1;
      v22 = a4;
      v23 = v21;
    }

    else
    {
      if (v68 == 2)
      {
        sub_1C72FF8CC();
        v24 = swift_allocError();
        *v25 = 1;
        v74 = v21;
        v75 = v24;
        v76 = 0;
        v77 = 1;
        v26 = v21;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC21A3A0);
        sub_1C7550D8C();
        (*(v17 + 8))(v19, v16);
LABEL_9:
        swift_beginAccess();
        *(a5 + 16) = 1;
        __swift_project_boxed_opaque_existential_1(a10, a10[3]);
        sub_1C754F1AC();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC21A3A0);
        sub_1C7550D9C();
LABEL_10:

        return;
      }

      sub_1C72FDF08(a1, a7, &v74);
      v64 = a9;
      v27 = v75;
      v67 = v74;
      v66 = v76;
      v28 = sub_1C72FF86C(a8);
      if (v28)
      {
        v29 = *(v28 + 16);

        v74 = v29;
        v62 = sub_1C7551D8C();
        v31 = v30;
      }

      else
      {
        v31 = 0xE300000000000000;
        v62 = 7104878;
      }

      v63 = *(type metadata accessor for PhotosSearchBasedStoryAssetsFetcher() + 20);
      sub_1C72C7318(a7, &v74);
      swift_unknownObjectRetain_n();
      swift_bridgeObjectRetain_n();
      v32 = v27;
      sub_1C75504FC();
      v33 = v32;
      v34 = sub_1C754FEEC();
      v35 = v31;
      v36 = sub_1C75511BC();
      swift_unknownObjectRelease();
      v65 = v33;

      v37 = v67;

      LODWORD(v64) = v36;
      if (os_log_type_enabled(v34, v36))
      {
        v38 = v35;
        v61 = v34;
        v39 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v73 = v60;
        *v39 = 136315907;
        v40 = 0xE900000000000067;
        v41 = 0x6E69646465626D65;
        if (v74 != 1)
        {
          v41 = 0x6574656C706D6F63;
          v40 = 0xE800000000000000;
        }

        if (v74)
        {
          v42 = v41;
        }

        else
        {
          v42 = 0x617461646174656DLL;
        }

        if (v74)
        {
          v43 = v40;
        }

        else
        {
          v43 = 0xE800000000000000;
        }

        sub_1C70DF138(&v74);
        v44 = sub_1C6F765A4(v42, v43, &v73);

        *(v39 + 4) = v44;
        *(v39 + 12) = 2080;
        v45 = sub_1C6F765A4(v62, v38, &v73);

        *(v39 + 14) = v45;
        *(v39 + 22) = 2085;
        v70 = v67;
        v46 = v65;
        v71 = v65;
        v47 = v66;
        v72 = v66;
        sub_1C75504FC();
        v62 = v46;
        swift_unknownObjectRetain();
        v59 = FreeformStoryFetching.Result.description.getter();
        v49 = v48;
        v63 = v39;

        swift_unknownObjectRelease();
        v50 = sub_1C6F765A4(v59, v49, &v73);

        v51 = v63;
        *(v63 + 24) = v50;
        *(v51 + 32) = 2048;
        v59 = v67[2];
        swift_unknownObjectRelease();
        v52 = v62;

        v53 = v63;
        *(v63 + 34) = v59;
        swift_unknownObjectRelease();

        v54 = v61;
        _os_log_impl(&dword_1C6F5C000, v61, v64, "Perform %s search scoped to %s assets, result=%{sensitive}s with %ld assets", v53, 0x2Au);
        v55 = v60;
        swift_arrayDestroy();
        MEMORY[0x1CCA5F8E0](v55, -1, -1);
        v56 = v67;
        MEMORY[0x1CCA5F8E0](v53, -1, -1);
      }

      else
      {

        v47 = v66;
        swift_unknownObjectRelease_n();
        v57 = v65;

        v56 = v37;
        swift_bridgeObjectRelease_n();
        sub_1C70DF138(&v74);
      }

      v74 = v56;
      v75 = v65;
      v76 = v47;
      v77 = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC21A3A0);
    sub_1C7550D8C();
    (*(v17 + 8))(v19, v16);
    if ((v69 & 1) == 0 && v68 != 2)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }
}

void sub_1C72FF13C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C72FF93C(a1, &selRef_embeddingDistances, &qword_1EDD108E0);
  v5 = 0.0;
  if (!v4)
  {
    goto LABEL_7;
  }

  v6 = v4;
  if (sub_1C6FB6304() != 3 || ((v7 = sub_1C6FB6330(0, (v6 & 0xC000000000000001) == 0, v6), (v6 & 0xC000000000000001) != 0) ? (v8 = MEMORY[0x1CCA5DDD0](0, v6, v7)) : (v8 = *(v6 + 32)), v9 = v8, [v8 floatValue], v11 = v10, v9, v11 == 3.4028e38))
  {

LABEL_7:
    v12 = 1;
    goto LABEL_8;
  }

  if ((v6 & 0xC000000000000001) != 0)
  {
    v17 = MEMORY[0x1CCA5DDD0](0, v6);
  }

  else
  {
    v17 = *(v6 + 32);
  }

  v18 = v17;

  [v18 floatValue];
  v20 = v19;

  v12 = 0;
  v5 = v20 * -0.5 + 1.0;
LABEL_8:
  v13 = [a1 uuid];
  v14 = sub_1C755068C();
  v16 = v15;

  *a2 = v14;
  *(a2 + 8) = v16;
  *(a2 + 16) = v5;
  *(a2 + 24) = v12;
  *(a2 + 25) = v12;
}

void sub_1C72FF2A4(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  if ([*a1 type] == *(a2 + 8) && (objc_msgSend(v4, sel_hasOCRTextMatch) & 1) == 0)
  {
    sub_1C72FF13C(v4, &v8);
    v5 = v9;
    v6 = v10;
    if (v11)
    {
      v7 = 256;
    }

    else
    {
      v7 = 0;
    }

    *a3 = v8;
    *(a3 + 16) = v5;
    *(a3 + 24) = v7 | v6;
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 24) = 0;
    *(a3 + 16) = 0;
  }
}

uint64_t sub_1C72FF35C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C6F73F48;

  return PhotosSearchBasedStoryAssetsFetcher.preheat(eventRecorder:)();
}

uint64_t sub_1C72FF3F0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C6F738F4;

  return PhotosSearchBasedStoryAssetsFetcher.performSearch(with:options:eventRecorder:)();
}

uint64_t sub_1C72FF4DC()
{
  type metadata accessor for PhotosSearchQueryManagerProxy();
  result = sub_1C754FF1C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PhotosSearchBasedStoryAssetsFetcher.Error(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1C72FF630(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotosSearchBasedStoryAssetsFetcher();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C72FF694(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotosSearchBasedStoryAssetsFetcher();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1C72FF6F8(void *a1, uint64_t a2, int a3, void *a4)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC21A3A0);
  OUTLINED_FUNCTION_18(v11);
  v13 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v14 = OUTLINED_FUNCTION_7_63();
  OUTLINED_FUNCTION_18(v14);
  v16 = (v6 + *(v15 + 80) + 8) & ~*(v15 + 80);
  v18 = (*(v17 + 64) + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = sub_1C754F38C();
  OUTLINED_FUNCTION_76(v19);
  sub_1C72FEA3C(a1, a2, a3, a4, *(v4 + 16), v4 + v13, v4 + v5, *(v4 + v6), v4 + v16, (v4 + v18));
}

uint64_t sub_1C72FF86C(void *a1)
{
  v1 = [a1 scopedIdentifiers];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1C7550F8C();

  return v3;
}

unint64_t sub_1C72FF8CC()
{
  result = qword_1EC21A6C0;
  if (!qword_1EC21A6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21A6C0);
  }

  return result;
}

uint64_t sub_1C72FF93C(void *a1, SEL *a2, unint64_t *a3)
{
  v4 = [a1 *a2];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  sub_1C6F65BE8(0, a3);
  v6 = sub_1C7550B5C();

  return v6;
}

uint64_t sub_1C72FF9B0(void *a1, uint64_t a2, void *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A6D0);
  OUTLINED_FUNCTION_18(v7);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v11 = v9 + *(v10 + 64);
  v12 = (v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v11 + 143) & 0xFFFFFFFFFFFFFFF8;
  v14 = type metadata accessor for PhotosSearchBasedStoryAssetsFetcher();
  OUTLINED_FUNCTION_76(v14);
  v15 = *(v3 + v13);

  return sub_1C72FDAEC(a1, a2, a3, v3 + v9, v3 + v12, v15);
}

uint64_t static VisualOutliers.requiredFetchPropertySets()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1C75604F0;
  *(v0 + 32) = sub_1C755068C();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_1C755068C();
  *(v0 + 56) = v2;
  return v0;
}

id static VisualOutliers.canAssetsBeCompared(_:_:)(void *a1, void *a2)
{
  result = [a1 sceneAnalysisProperties];
  if (result)
  {
    v4 = result;
    v5 = [result sceneAnalysisVersion];

    result = [a2 sceneAnalysisProperties];
    if (result)
    {
      v6 = result;
      v7 = [result sceneAnalysisVersion];
      v8 = v7;
      v9 = v7;

      return (v5 > 83 && v9 > 83 && v5 == v8);
    }
  }

  return result;
}

unint64_t static VisualOutliers.canCollectionBeCompared(_:)(unint64_t result)
{
  v1 = result;
  if (result >> 62)
  {
    goto LABEL_24;
  }

  for (i = *((result & 0xFFFFFFFFFFFFFF8) + 0x10); !__OFSUB__(i, 1); i = result)
  {
    if (i - 1 < 0)
    {
      goto LABEL_26;
    }

    if (i == 1)
    {
      return 1;
    }

    v3 = 0;
    while (2)
    {
      if (__OFADD__(v3, 1))
      {
LABEL_22:
        __break(1u);
      }

      else if (i >= v3)
      {
        v11 = v3 + 1;
        for (j = v3; i != j; ++j)
        {
          if ((v1 & 0xC000000000000001) != 0)
          {
            v7 = MEMORY[0x1CCA5DDD0](v3, v1);
            v8 = MEMORY[0x1CCA5DDD0](j, v1);
          }

          else
          {
            v5 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v3 >= v5)
            {
              __break(1u);
LABEL_21:
              __break(1u);
              goto LABEL_22;
            }

            if (j >= v5)
            {
              goto LABEL_21;
            }

            v6 = *(v1 + 8 * j + 32);
            v7 = *(v1 + 32 + 8 * v3);
            v8 = v6;
          }

          v9 = v8;
          v10 = static VisualOutliers.canAssetsBeCompared(_:_:)(v7, v8);

          if ((v10 & 1) == 0)
          {
            return 0;
          }
        }

        ++v3;
        if (v11 != i - 1)
        {
          continue;
        }

        return 1;
      }

      break;
    }

    __break(1u);
LABEL_24:
    result = sub_1C75516BC();
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

float static VisualOutliers.visualThresholdTypeValue(_:)(unint64_t a1)
{
  result = 0.0;
  if (a1 <= 2)
  {
    return flt_1C7581640[a1];
  }

  return result;
}

uint64_t static VisualOutliers.assetsDistance(_:_:)(void *a1, void *a2)
{
  sub_1C73C6BB8();
  if (v4)
  {
    v5 = v4;
    sub_1C73C6BB8();
    if (v6)
    {
      v7 = v6;
      if (static VisualOutliers.canAssetsBeCompared(_:_:)(a1, a2))
      {
        if (*(v5 + 16) == *(v7 + 16))
        {
          sub_1C73C6D60(v5, v7);
        }

        v9 = 2;
      }

      else
      {
        v9 = 1;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  sub_1C7300C78();
  swift_allocError();
  *v10 = v9;
  return swift_willThrow();
}

uint64_t static VisualOutliers.assetsDistancesSummary(for:in:with:)(void *a1, uint64_t a2, unint64_t a3)
{
  v6 = MEMORY[0x1E69E7CC0];
  v36 = sub_1C75504DC();
  v7 = sub_1C6FB6304();
  v33 = a3;
  if (!v7)
  {
LABEL_20:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E38);
    inited = swift_initStackObject();
    v29 = inited;
    *(inited + 16) = xmmword_1C755BAA0;
    *(inited + 32) = 0x6C6F687365726874;
    *(inited + 40) = 0xE900000000000064;
    v30 = 0.0;
    if (v33 <= 2)
    {
      v30 = flt_1C7581640[v33];
    }

    *(inited + 48) = v30;
    *(inited + 72) = MEMORY[0x1E69E6448];
    *(inited + 80) = 0x65636E6174736964;
    *(inited + 88) = 0xE900000000000073;
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214F30);
    v29[12] = v36;
    v29[15] = v31;
    v29[16] = 0x6465726F6E6769;
    v29[17] = 0xE700000000000000;
    v29[21] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
    v29[18] = v6;
    return sub_1C75504DC();
  }

  v8 = v7;
  if (v7 < 1)
  {
    goto LABEL_25;
  }

  v9 = 0;
  v37 = v7;
  v34 = a1;
  while (1)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x1CCA5DDD0](v9, a2);
    }

    else
    {
      v10 = *(a2 + 8 * v9 + 32);
    }

    v11 = v10;
    v12 = sub_1C6FCA214(v11);
    if (!v13)
    {

      goto LABEL_19;
    }

    v14 = v12;
    v15 = v13;
    static VisualOutliers.assetsDistance(_:_:)(a1, v11);
    v17 = v16;
    v35 = v6;
    swift_isUniquelyReferenced_nonNull_native();
    v18 = sub_1C6F78124(v14, v15);
    if (__OFADD__(v36[2], (v19 & 1) == 0))
    {
      break;
    }

    v20 = v18;
    v21 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215340);
    if (sub_1C7551A2C())
    {
      v22 = sub_1C6F78124(v14, v15);
      if ((v21 & 1) != (v23 & 1))
      {
        goto LABEL_26;
      }

      v20 = v22;
    }

    a1 = v34;
    if (v21)
    {
      *(v36[7] + 4 * v20) = v17;
    }

    else
    {
      v36[(v20 >> 6) + 8] |= 1 << v20;
      v24 = (v36[6] + 16 * v20);
      *v24 = v14;
      v24[1] = v15;
      *(v36[7] + 4 * v20) = v17;
      v25 = v36[2];
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        goto LABEL_24;
      }

      v36[2] = v27;
    }

    v6 = v35;
    v8 = v37;
LABEL_19:
    if (v8 == ++v9)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_1C7551E4C();
  __break(1u);
  return result;
}

void static VisualOutliers.isSimilarToAnyAssetInAssets(for:in:with:)(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = (a2 >> 62) & 1;
  if (a2 < 0)
  {
    LODWORD(v5) = 1;
  }

  if (a3)
  {
    if (a3 == 2)
    {
      v6 = 0.111;
      if (v5)
      {
        goto LABEL_20;
      }
    }

    else if (a3 == 1)
    {
      v6 = 0.052;
      if (v5)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v6 = 0.0;
      if (v5)
      {
LABEL_20:
        v7 = sub_1C75516BC();
        if (!v7)
        {
          return;
        }

        goto LABEL_10;
      }
    }
  }

  else
  {
    v6 = 0.025;
    if (v5)
    {
      goto LABEL_20;
    }
  }

  v7 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
    return;
  }

LABEL_10:
  v8 = 0;
  while (1)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x1CCA5DDD0](v8, a2);
    }

    else
    {
      if (v8 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_26;
      }

      v9 = *(a2 + 8 * v8 + 32);
    }

    v10 = v9;
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    static VisualOutliers.assetsDistance(_:_:)(a1, v9);
    v13 = v12;

    if (v13 > v6)
    {
      ++v8;
      if (v11 != v7)
      {
        continue;
      }
    }

    return;
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

uint64_t static VisualOutliers.outlierScoresForAssets(assets:)(unint64_t a1)
{
  if ((static VisualOutliers.canCollectionBeCompared(_:)(a1) & 1) == 0)
  {
    sub_1C6F65BE8(0, &qword_1EDD108E0);

    return sub_1C75504DC();
  }

  v2 = sub_1C6FB6304();
  if (v2)
  {
    v3 = v2;
    if (v2 < 1)
    {
      goto LABEL_46;
    }

    v4 = 0;
    v5 = MEMORY[0x1E69E7CC0];
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1CCA5DDD0](v4, a1);
      }

      else
      {
        v6 = *(a1 + 8 * v4 + 32);
      }

      v7 = v6;
      sub_1C73C6BB8();
      if (v8)
      {
        v9 = v8;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C6FB2DBC();
          v5 = v11;
        }

        v10 = *(v5 + 16);
        if (v10 >= *(v5 + 24) >> 1)
        {
          sub_1C6FB2DBC();
          v5 = v12;
        }

        *(v5 + 16) = v10 + 1;
        *(v5 + 8 * v10 + 32) = v9;
      }

      else
      {
      }

      ++v4;
    }

    while (v3 != v4);
  }

  LOBYTE(v49) = 0;
  v14 = objc_allocWithZone(type metadata accessor for Dendrogram());
  v15 = Dendrogram.init(distanceBlock:linkageMethod:)();
  v16 = sub_1C75504FC();
  Dendrogram.fit(_:)(v16);

  if (v17 || (Dendrogram.heightScores()(), v17))
  {

    sub_1C6F65BE8(0, &qword_1EDD108E0);
    v18 = sub_1C75504DC();

    return v18;
  }

  v19 = *(v49 + 16);
  v48 = v15;
  sub_1C75504FC();
  v20 = 0;
  v21 = MEMORY[0x1E69E7CC8];
  while (1)
  {
    if (v19 == v20)
    {

      swift_bridgeObjectRelease_n();
      return v21;
    }

    v22 = v20;
    if (v20 >= *(v49 + 16))
    {
      break;
    }

    v23 = *(v49 + 32 + 4 * v20);
    if ((a1 & 0xC000000000000001) != 0)
    {
      v24 = MEMORY[0x1CCA5DDD0](v20, a1);
    }

    else
    {
      if (v20 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_45;
      }

      v24 = *(a1 + 32 + 8 * v20);
    }

    v25 = sub_1C6FCA214(v24);
    if (!v26)
    {
      goto LABEL_49;
    }

    v27 = v25;
    v28 = v26;
    v29 = objc_allocWithZone(MEMORY[0x1E696AD98]);
    LODWORD(v30) = v23;
    v31 = [v29 initWithFloat_];
    if (v31)
    {
      v35 = v31;
      swift_isUniquelyReferenced_nonNull_native();
      v46 = sub_1C6F78124(v27, v28);
      v47 = v36;
      if (__OFADD__(v21[2], (v36 & 1) == 0))
      {
        goto LABEL_47;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2152C8);
      if (sub_1C7551A2C())
      {
        v37 = sub_1C6F78124(v27, v28);
        if ((v47 & 1) != (v38 & 1))
        {
          goto LABEL_50;
        }

        v39 = v37;
        if (v47)
        {
LABEL_40:

          v44 = v21[7];
          v45 = *(v44 + 8 * v39);
          *(v44 + 8 * v39) = v35;

          goto LABEL_41;
        }
      }

      else
      {
        v39 = v46;
        if (v47)
        {
          goto LABEL_40;
        }
      }

      v21[(v39 >> 6) + 8] |= 1 << v39;
      v40 = (v21[6] + 16 * v39);
      *v40 = v27;
      v40[1] = v28;
      *(v21[7] + 8 * v39) = v35;
      v41 = v21[2];
      v42 = __OFADD__(v41, 1);
      v43 = v41 + 1;
      if (v42)
      {
        goto LABEL_48;
      }

      v21[2] = v43;
LABEL_41:
      v20 = v22 + 1;
    }

    else
    {
      v32 = sub_1C6F78124(v27, v28);
      v34 = v33;

      v20 = v22 + 1;
      if (v34)
      {
        swift_isUniquelyReferenced_nonNull_native();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2152C8);
        sub_1C7551A2C();

        sub_1C6F65BE8(0, &qword_1EDD108E0);
        sub_1C7551A4C();
        goto LABEL_41;
      }
    }
  }

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
  __break(1u);
LABEL_50:
  result = sub_1C7551E4C();
  __break(1u);
  return result;
}