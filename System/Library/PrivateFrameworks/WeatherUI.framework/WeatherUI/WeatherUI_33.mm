uint64_t sub_1BCBE9D9C()
{
  v1 = v0;
  v2 = type metadata accessor for WeatherProviderAttributionCacheManager.ProviderDetails(0);
  MEMORY[0x1EEE9AC00](v2);
  v3 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0ACD0);
  result = sub_1BCE1DCE0();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v1 = v5;
    return result;
  }

  v24 = v3;
  v6 = 0;
  v7 = (v3 + 56);
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
  if (!v10)
  {
LABEL_7:
    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v14 = v7[v6];
      ++v13;
      if (v14)
      {
        v25 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    v23 = 1 << *(v3 + 32);
    if (v23 >= 64)
    {
      sub_1BC99E464(0, (v23 + 63) >> 6, v7);
    }

    else
    {
      *v7 = -1 << v23;
    }

    v1 = v0;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v25 = (v10 - 1) & v10;
LABEL_12:
    sub_1BCBED070();
    sub_1BCE1E100();
    sub_1BCE1D370();
    sub_1BCE18E40();
    sub_1BC94CC74(&qword_1EDA1BF48, MEMORY[0x1E6968FB0]);
    sub_1BCE1D190();
    sub_1BCE1D190();
    result = sub_1BCE1E150();
    v15 = -1 << *(v5 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v12 + 8 * (v16 >> 6))) == 0)
    {
      break;
    }

    v18 = __clz(__rbit64((-1 << v16) & ~*(v12 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
    v3 = v24;
LABEL_21:
    *(v12 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    result = sub_1BCBED070();
    ++*(v5 + 16);
    v10 = v25;
    if (!v25)
    {
      goto LABEL_7;
    }
  }

  v19 = 0;
  v20 = (63 - v15) >> 6;
  v3 = v24;
  while (++v17 != v20 || (v19 & 1) == 0)
  {
    v21 = v17 == v20;
    if (v17 == v20)
    {
      v17 = 0;
    }

    v19 |= v21;
    v22 = *(v12 + 8 * v17);
    if (v22 != -1)
    {
      v18 = __clz(__rbit64(~v22)) + (v17 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1BCBEA138()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0AD30);
  result = sub_1BCE1DCE0();
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

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      sub_1BC99E464(0, (v27 + 63) >> 6, v2 + 56);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_12:
    v15 = (*(v2 + 48) + 16 * (v12 | (v5 << 6)));
    v16 = *v15;
    v17 = v15[1];
    sub_1BCE1E100();
    sub_1BCE1D370();
    result = sub_1BCE1E150();
    v18 = -1 << *(v4 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
    {
      break;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    v26 = (*(v4 + 48) + 16 * v21);
    *v26 = v16;
    v26[1] = v17;
    ++*(v4 + 16);
    if (!v9)
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
    v25 = *(v11 + 8 * v20);
    if (v25 != -1)
    {
      v21 = __clz(__rbit64(~v25)) + (v20 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

unint64_t sub_1BCBEA394(unsigned int a1, uint64_t a2)
{
  sub_1BCE1E100();
  MEMORY[0x1BFB30850]((a1 >> 7) & 1);
  MEMORY[0x1BFB30850](a1 & 0x7F);
  sub_1BCE1E150();
  result = sub_1BCE1DC60();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t sub_1BCBEA444(uint64_t a1, uint64_t a2)
{
  sub_1BCE1E100();
  MEMORY[0x1BFB30850](a1);
  sub_1BCE1E150();
  OUTLINED_FUNCTION_18_17();
  result = sub_1BCE1DC60();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_1BCBEA4E4(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1BCBE9B7C();
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_1BCBEB0F4();
LABEL_10:
      v12 = *v3;
      sub_1BCE1E100();
      MEMORY[0x1BFB30850](a1);
      v13 = sub_1BCE1E150();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = v13 & v14;
        if (((*(v12 + 56 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v14)) & 1) == 0)
        {
          goto LABEL_7;
        }

        type metadata accessor for ForegroundEffectRenderer();
        if (*(*(v12 + 48) + 8 * a2) == a1)
        {
          goto LABEL_15;
        }

        v13 = a2 + 1;
      }
    }

    sub_1BCBEABC0();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 8 * a2) = a1;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    sub_1BCE1E0E0();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }
}

uint64_t sub_1BCBEA61C(uint64_t *a1, unint64_t a2, char a3)
{
  v7 = type metadata accessor for WeatherProviderAttributionCacheManager.ProviderDetails(0);
  v27 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v26 = v3;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_18;
  }

  if (a3)
  {
    sub_1BCBE9D9C();
  }

  else
  {
    if (v11 > v10)
    {
      sub_1BCBEACD0();
      goto LABEL_18;
    }

    sub_1BCBEB318();
  }

  v12 = *v3;
  sub_1BCE1E100();
  v13 = *a1;
  v14 = a1[1];
  sub_1BCE1D370();
  v15 = *(v7 + 20);
  sub_1BCE18E40();
  sub_1BC94CC74(&qword_1EDA1BF48, MEMORY[0x1E6968FB0]);
  v29 = v15;
  sub_1BCE1D190();
  v28 = *(v7 + 24);
  sub_1BCE1D190();
  v16 = sub_1BCE1E150();
  v17 = -1 << *(v12 + 32);
  a2 = v16 & ~v17;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    do
    {
      sub_1BC962A04();
      v19 = *v9 == v13 && v9[1] == v14;
      if (v19 || (sub_1BCE1E090()) && (sub_1BCE18E10() & 1) != 0 && (sub_1BCE18E10())
      {
        goto LABEL_21;
      }

      sub_1BCBED0C8(v9, type metadata accessor for WeatherProviderAttributionCacheManager.ProviderDetails);
      a2 = (a2 + 1) & v18;
    }

    while (((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_18:
  v20 = *v26;
  *(*v26 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_1BCBED070();
  v22 = *(v20 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (!v23)
  {
    *(v20 + 16) = v24;
    return result;
  }

  __break(1u);
LABEL_21:
  sub_1BCBED0C8(v9, type metadata accessor for WeatherProviderAttributionCacheManager.ProviderDetails);
  result = sub_1BCE1E0E0();
  __break(1u);
  return result;
}

uint64_t sub_1BCBEA93C(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_1BCBEA138();
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_1BCBEB684();
LABEL_10:
      v15 = *v4;
      sub_1BCE1E100();
      sub_1BCE1D370();
      result = sub_1BCE1E150();
      v16 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v16;
        if (((*(v15 + 56 + (((result & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v16)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v17 = (*(v15 + 48) + 16 * a3);
        v18 = *v17 == v7 && v17[1] == a2;
        if (v18 || (sub_1BCE1E090() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_1BCBEAEE4();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = sub_1BCE1E0E0();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

void *sub_1BCBEAAA4()
{
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0AD28);
  v4 = *v2;
  sub_1BCE1DCD0();
  OUTLINED_FUNCTION_16_22();
  if (v5)
  {
    result = OUTLINED_FUNCTION_7_40();
    if (v9)
    {
      v10 = result >= v8;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      result = memmove(result, v1, 8 * v7);
    }

    v11 = 0;
    *(v3 + 16) = *(v4 + 16);
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 56);
    for (i = (v12 + 63) >> 6; v14; *(*(v3 + 48) + v17) = *(*(v4 + 48) + v17))
    {
      v16 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v17 = v16 | (v11 << 6);
LABEL_17:
      ;
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= i)
      {
        goto LABEL_19;
      }

      v19 = *(v1 + v11);
      ++v18;
      if (v19)
      {
        v14 = (v19 - 1) & v19;
        v17 = __clz(__rbit64(v19)) | (v11 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v3;
  }

  return result;
}

void sub_1BCBEABC0()
{
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07D80);
  v4 = *v2;
  sub_1BCE1DCD0();
  OUTLINED_FUNCTION_16_22();
  if (v5)
  {
    v6 = OUTLINED_FUNCTION_7_40();
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
      memmove(v6, v1, 8 * v7);
    }

    v11 = 0;
    *(v3 + 16) = v4[2];
    OUTLINED_FUNCTION_9_30();
    v13 = v4[7];
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        OUTLINED_FUNCTION_8_37();
LABEL_17:
        *(*(v3 + 48) + 8 * (v17 | (v11 << 6))) = *(v4[6] + 8 * (v17 | (v11 << 6)));
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {
        goto LABEL_19;
      }

      ++v18;
      if (*(v1 + v11))
      {
        OUTLINED_FUNCTION_30();
        v15 = v20 & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v3;
  }
}

void *sub_1BCBEACD0()
{
  v1 = v0;
  v2 = type metadata accessor for WeatherProviderAttributionCacheManager.ProviderDetails(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0ACD0);
  v3 = *v0;
  v4 = sub_1BCE1DCD0();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 56);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 56 + 8 * v7)
    {
      result = memmove(result, (v3 + 56), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 56);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v13 &= v13 - 1;
LABEL_17:
        sub_1BC962A04();
        result = sub_1BCBED070();
      }

      while (v13);
    }

    v15 = v9;
    while (1)
    {
      v9 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v16 = *(v3 + 56 + 8 * v9);
      ++v15;
      if (v16)
      {
        v13 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v5;
  }

  return result;
}

void *sub_1BCBEAEE4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0AD30);
  v2 = *v0;
  v3 = sub_1BCE1DCD0();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
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

void sub_1BCBEB03C()
{
  OUTLINED_FUNCTION_2_51();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0AD28);
  OUTLINED_FUNCTION_10_32();
  v6 = v5;
  sub_1BCE1DCE0();
  OUTLINED_FUNCTION_16_22();
  if (v7)
  {
    OUTLINED_FUNCTION_3_49();
    while (v4)
    {
      OUTLINED_FUNCTION_8_37();
LABEL_9:
      OUTLINED_FUNCTION_23_19(v8);
    }

    v9 = v2;
    while (1)
    {
      v2 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v2 >= v3)
      {
        goto LABEL_11;
      }

      ++v9;
      if (*(v1 + 8 * v2))
      {
        OUTLINED_FUNCTION_30();
        v4 = v11 & v10;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_11:

    *v0 = v6;
  }
}

uint64_t sub_1BCBEB0F4()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07D80);
  result = sub_1BCE1DCE0();
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
        sub_1BCE1E100();
        MEMORY[0x1BFB30850](v14);
        result = sub_1BCE1E150();
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

uint64_t sub_1BCBEB318()
{
  v1 = v0;
  v2 = type metadata accessor for WeatherProviderAttributionCacheManager.ProviderDetails(0);
  MEMORY[0x1EEE9AC00](v2);
  v3 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0ACD0);
  result = sub_1BCE1DCE0();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    if (v9)
    {
      while (1)
      {
        v22 = (v9 - 1) & v9;
LABEL_12:
        sub_1BC962A04();
        sub_1BCE1E100();
        sub_1BCE1D370();
        sub_1BCE18E40();
        sub_1BC94CC74(&qword_1EDA1BF48, MEMORY[0x1E6968FB0]);
        sub_1BCE1D190();
        sub_1BCE1D190();
        result = sub_1BCE1E150();
        v14 = -1 << *(v5 + 32);
        v15 = result & ~v14;
        v16 = v15 >> 6;
        if (((-1 << v15) & ~*(v11 + 8 * (v15 >> 6))) == 0)
        {
          break;
        }

        v17 = __clz(__rbit64((-1 << v15) & ~*(v11 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
        result = sub_1BCBED070();
        ++*(v5 + 16);
        v9 = v22;
        if (!v22)
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
        v21 = *(v11 + 8 * v16);
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

          v1 = v0;
          goto LABEL_25;
        }

        v13 = *(v3 + 56 + 8 * v6);
        ++v12;
        if (v13)
        {
          v22 = (v13 - 1) & v13;
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
    *v1 = v5;
  }

  return result;
}

uint64_t sub_1BCBEB684()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0AD30);
  result = sub_1BCE1DCE0();
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
        v15 = *v14;
        v16 = v14[1];
        sub_1BCE1E100();

        sub_1BCE1D370();
        result = sub_1BCE1E150();
        v17 = -1 << *(v4 + 32);
        v18 = result & ~v17;
        v19 = v18 >> 6;
        if (((-1 << v18) & ~*(v10 + 8 * (v18 >> 6))) == 0)
        {
          break;
        }

        v20 = __clz(__rbit64((-1 << v18) & ~*(v10 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v10 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
        v25 = (*(v4 + 48) + 16 * v20);
        *v25 = v15;
        v25[1] = v16;
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

void sub_1BCBEB8B8(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1BCE1E040();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for WeatherProviderAttribution(0);
        v6 = sub_1BCE1D5A0();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for WeatherProviderAttribution(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1BCBEBC70(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1BCBEB9E8(0, v2, 1, a1);
  }
}

void sub_1BCBEB9E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v32 = type metadata accessor for WeatherProviderAttribution(0);
  MEMORY[0x1EEE9AC00](v32);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v24 - v9);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v24 - v13);
  v26 = a2;
  if (a3 != a2)
  {
    v15 = *a4;
    v16 = *(v12 + 72);
    v17 = *a4 + v16 * (a3 - 1);
    v18 = -v16;
    v19 = a1 - a3;
    v31 = v15;
    v25 = v16;
    v20 = v15 + v16 * a3;
    while (2)
    {
      v29 = v17;
      v30 = a3;
      v27 = v20;
      v28 = v19;
      while (1)
      {
        sub_1BC962A04();
        sub_1BC962A04();
        if (*v10 == *v14 && v10[1] == v14[1])
        {
          break;
        }

        v22 = sub_1BCE1E090();
        sub_1BCBED0C8(v10, type metadata accessor for WeatherProviderAttribution);
        sub_1BCBED0C8(v14, type metadata accessor for WeatherProviderAttribution);
        if (v22)
        {
          if (!v31)
          {
            __break(1u);
            return;
          }

          sub_1BCBED070();
          swift_arrayInitWithTakeFrontToBack();
          sub_1BCBED070();
          v17 += v18;
          v20 += v18;
          if (!__CFADD__(v19++, 1))
          {
            continue;
          }
        }

        goto LABEL_14;
      }

      sub_1BCBED0C8(v10, type metadata accessor for WeatherProviderAttribution);
      sub_1BCBED0C8(v14, type metadata accessor for WeatherProviderAttribution);
LABEL_14:
      a3 = v30 + 1;
      v17 = v29 + v25;
      v19 = v28 - 1;
      v20 = v27 + v25;
      if (v30 + 1 != v26)
      {
        continue;
      }

      break;
    }
  }
}

void sub_1BCBEBC70(int64_t *a1, uint64_t a2, uint64_t *a3, int64_t a4)
{
  v122 = a1;
  v138 = type metadata accessor for WeatherProviderAttribution(0);
  v129 = *(v138 - 8);
  MEMORY[0x1EEE9AC00](v138);
  v126 = &v118 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v137 = &v118 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v139 = (&v118 - v10);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v118 - v12);
  MEMORY[0x1EEE9AC00](v14);
  v135 = (&v118 - v15);
  MEMORY[0x1EEE9AC00](v16);
  v134 = (&v118 - v17);
  MEMORY[0x1EEE9AC00](v18);
  v121 = (&v118 - v19);
  MEMORY[0x1EEE9AC00](v20);
  v120 = (&v118 - v21);
  v132 = a3;
  v22 = a3[1];
  if (v22 < 1)
  {
    v24 = MEMORY[0x1E69E7CC0];
LABEL_112:
    v23 = *v122;
    if (!*v122)
    {
      goto LABEL_152;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_114:
      v110 = (v24 + 16);
      for (i = *(v24 + 2); i >= 2; *v110 = i)
      {
        if (!*v132)
        {
          goto LABEL_149;
        }

        v112 = &v24[16 * i];
        v113 = *v112;
        v114 = &v110[2 * i];
        v115 = v114[1];
        v116 = v136;
        sub_1BCBEC67C(*v132 + *(v129 + 72) * *v112, *v132 + *(v129 + 72) * *v114, *v132 + *(v129 + 72) * v115, v23);
        v136 = v116;
        if (v116)
        {
          break;
        }

        if (v115 < v113)
        {
          goto LABEL_137;
        }

        if (i - 2 >= *v110)
        {
          goto LABEL_138;
        }

        *v112 = v113;
        *(v112 + 1) = v115;
        v117 = *v110 - i;
        if (*v110 < i)
        {
          goto LABEL_139;
        }

        i = *v110 - 1;
        memmove(v114, v114 + 2, 16 * v117);
      }

LABEL_110:

      return;
    }

LABEL_146:
    v24 = sub_1BCBECBBC();
    goto LABEL_114;
  }

  v118 = a4;
  v23 = 0;
  v24 = MEMORY[0x1E69E7CC0];
  v131 = v13;
  while (1)
  {
    v25 = v23++;
    v125 = v25;
    if (v23 < v22)
    {
      v127 = v22;
      v26 = *v132;
      v27 = *(v129 + 72);
      v28 = v120;
      sub_1BC962A04();
      v130 = v27;
      v29 = v121;
      sub_1BC962A04();
      if (*v29 == *v28 && v29[1] == v28[1])
      {
        LODWORD(v128) = 0;
      }

      else
      {
        LODWORD(v128) = sub_1BCE1E090();
      }

      v119 = v24;
      sub_1BCBED0C8(v121, type metadata accessor for WeatherProviderAttribution);
      sub_1BCBED0C8(v120, type metadata accessor for WeatherProviderAttribution);
      v31 = v125 + 2;
      v32 = v130 * (v125 + 2);
      v33 = v26 + v32;
      v34 = v23;
      v35 = v130 * v23;
      v36 = v26 + v130 * v23;
      do
      {
        v37 = v31;
        v38 = v34;
        v23 = v35;
        v39 = v32;
        if (v31 >= v127)
        {
          break;
        }

        v133 = v31;
        v40 = v134;
        sub_1BC962A04();
        v41 = v135;
        sub_1BC962A04();
        v42 = *v41 == *v40 && v41[1] == v40[1];
        v43 = v42 ? 0 : sub_1BCE1E090();
        v37 = v133;
        sub_1BCBED0C8(v135, type metadata accessor for WeatherProviderAttribution);
        sub_1BCBED0C8(v134, type metadata accessor for WeatherProviderAttribution);
        v31 = v37 + 1;
        v13 = v131;
        v33 += v130;
        v36 += v130;
        v34 = v38 + 1;
        v35 = v23 + v130;
        v32 = v39 + v130;
      }

      while (((v128 ^ v43) & 1) == 0);
      if (v128)
      {
        v25 = v125;
        if (v37 < v125)
        {
          goto LABEL_143;
        }

        if (v125 < v37)
        {
          v44 = v125 * v130;
          v45 = v125;
          do
          {
            if (v45 != v38)
            {
              v46 = *v132;
              if (!*v132)
              {
                goto LABEL_150;
              }

              sub_1BCBED070();
              v47 = v44 < v23 || v46 + v44 >= (v46 + v39);
              if (v47)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v44 != v23)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_1BCBED070();
              v25 = v125;
            }

            ++v45;
            v23 -= v130;
            v39 -= v130;
            v44 += v130;
            v48 = v45 < v38--;
          }

          while (v48);
        }

        v23 = v37;
        v24 = v119;
      }

      else
      {
        v23 = v37;
        v24 = v119;
        v25 = v125;
      }
    }

    v49 = v132[1];
    if (v23 < v49)
    {
      if (__OFSUB__(v23, v25))
      {
        goto LABEL_142;
      }

      if (v23 - v25 < v118)
      {
        break;
      }
    }

LABEL_59:
    if (v23 < v25)
    {
      goto LABEL_141;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1BCB65134(0, *(v24 + 2) + 1, 1, v24);
      v24 = v108;
    }

    v63 = *(v24 + 2);
    v62 = *(v24 + 3);
    v64 = v63 + 1;
    if (v63 >= v62 >> 1)
    {
      sub_1BCB65134(v62 > 1, v63 + 1, 1, v24);
      v24 = v109;
    }

    *(v24 + 2) = v64;
    v65 = v24 + 32;
    v66 = &v24[16 * v63 + 32];
    *v66 = v25;
    *(v66 + 1) = v23;
    v133 = *v122;
    if (!v133)
    {
      goto LABEL_151;
    }

    if (v63)
    {
      while (1)
      {
        v67 = v64 - 1;
        v68 = &v65[16 * v64 - 16];
        v69 = &v24[16 * v64];
        if (v64 >= 4)
        {
          break;
        }

        if (v64 == 3)
        {
          v70 = *(v24 + 4);
          v71 = *(v24 + 5);
          v80 = __OFSUB__(v71, v70);
          v72 = v71 - v70;
          v73 = v80;
LABEL_79:
          if (v73)
          {
            goto LABEL_128;
          }

          v85 = *v69;
          v84 = *(v69 + 1);
          v86 = __OFSUB__(v84, v85);
          v87 = v84 - v85;
          v88 = v86;
          if (v86)
          {
            goto LABEL_131;
          }

          v89 = *(v68 + 1);
          v90 = v89 - *v68;
          if (__OFSUB__(v89, *v68))
          {
            goto LABEL_134;
          }

          if (__OFADD__(v87, v90))
          {
            goto LABEL_136;
          }

          if (v87 + v90 >= v72)
          {
            if (v72 < v90)
            {
              v67 = v64 - 2;
            }

            goto LABEL_101;
          }

          goto LABEL_94;
        }

        if (v64 < 2)
        {
          goto LABEL_130;
        }

        v92 = *v69;
        v91 = *(v69 + 1);
        v80 = __OFSUB__(v91, v92);
        v87 = v91 - v92;
        v88 = v80;
LABEL_94:
        if (v88)
        {
          goto LABEL_133;
        }

        v94 = *v68;
        v93 = *(v68 + 1);
        v80 = __OFSUB__(v93, v94);
        v95 = v93 - v94;
        if (v80)
        {
          goto LABEL_135;
        }

        if (v95 < v87)
        {
          goto LABEL_108;
        }

LABEL_101:
        if (v67 - 1 >= v64)
        {
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
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
          goto LABEL_145;
        }

        if (!*v132)
        {
          goto LABEL_148;
        }

        v99 = v23;
        v100 = v24;
        v101 = &v65[16 * v67 - 16];
        v102 = *v101;
        v103 = v65;
        v104 = v67;
        v105 = &v65[16 * v67];
        v106 = *(v105 + 1);
        v107 = v136;
        sub_1BCBEC67C(*v132 + *(v129 + 72) * *v101, *v132 + *(v129 + 72) * *v105, *v132 + *(v129 + 72) * v106, v133);
        v136 = v107;
        if (v107)
        {
          goto LABEL_110;
        }

        if (v106 < v102)
        {
          goto LABEL_123;
        }

        v23 = *(v100 + 2);
        if (v104 > v23)
        {
          goto LABEL_124;
        }

        *v101 = v102;
        *(v101 + 1) = v106;
        if (v104 >= v23)
        {
          goto LABEL_125;
        }

        v64 = v23 - 1;
        memmove(v105, v105 + 16, 16 * (v23 - 1 - v104));
        v24 = v100;
        *(v100 + 2) = v23 - 1;
        v48 = v23 > 2;
        v23 = v99;
        v65 = v103;
        v13 = v131;
        if (!v48)
        {
          goto LABEL_108;
        }
      }

      v74 = &v65[16 * v64];
      v75 = *(v74 - 8);
      v76 = *(v74 - 7);
      v80 = __OFSUB__(v76, v75);
      v77 = v76 - v75;
      if (v80)
      {
        goto LABEL_126;
      }

      v79 = *(v74 - 6);
      v78 = *(v74 - 5);
      v80 = __OFSUB__(v78, v79);
      v72 = v78 - v79;
      v73 = v80;
      if (v80)
      {
        goto LABEL_127;
      }

      v81 = *(v69 + 1);
      v82 = v81 - *v69;
      if (__OFSUB__(v81, *v69))
      {
        goto LABEL_129;
      }

      v80 = __OFADD__(v72, v82);
      v83 = v72 + v82;
      if (v80)
      {
        goto LABEL_132;
      }

      if (v83 >= v77)
      {
        v97 = *v68;
        v96 = *(v68 + 1);
        v80 = __OFSUB__(v96, v97);
        v98 = v96 - v97;
        if (v80)
        {
          goto LABEL_140;
        }

        if (v72 < v98)
        {
          v67 = v64 - 2;
        }

        goto LABEL_101;
      }

      goto LABEL_79;
    }

LABEL_108:
    v22 = v132[1];
    if (v23 >= v22)
    {
      goto LABEL_112;
    }
  }

  v50 = v25 + v118;
  if (__OFADD__(v25, v118))
  {
    goto LABEL_144;
  }

  if (v50 >= v49)
  {
    v50 = v132[1];
  }

  if (v50 < v25)
  {
LABEL_145:
    __break(1u);
    goto LABEL_146;
  }

  if (v23 == v50)
  {
    goto LABEL_59;
  }

  v119 = v24;
  v51 = *v132;
  v52 = *(v129 + 72);
  v53 = *v132 + v52 * (v23 - 1);
  v54 = -v52;
  v55 = v25 - v23;
  v123 = v52;
  v124 = v50;
  v56 = v51 + v23 * v52;
LABEL_46:
  v133 = v23;
  v127 = v56;
  v128 = v55;
  v57 = v56;
  v130 = v53;
  v58 = v53;
  while (1)
  {
    sub_1BC962A04();
    v59 = v139;
    sub_1BC962A04();
    if (*v59 == *v13 && v59[1] == v13[1])
    {
      sub_1BCBED0C8(v139, type metadata accessor for WeatherProviderAttribution);
      sub_1BCBED0C8(v13, type metadata accessor for WeatherProviderAttribution);
LABEL_57:
      v23 = v133 + 1;
      v53 = v130 + v123;
      v55 = v128 - 1;
      v56 = v127 + v123;
      if (v133 + 1 == v124)
      {
        v23 = v124;
        v24 = v119;
        v25 = v125;
        goto LABEL_59;
      }

      goto LABEL_46;
    }

    v61 = sub_1BCE1E090();
    sub_1BCBED0C8(v139, type metadata accessor for WeatherProviderAttribution);
    sub_1BCBED0C8(v13, type metadata accessor for WeatherProviderAttribution);
    if ((v61 & 1) == 0)
    {
      goto LABEL_57;
    }

    if (!v51)
    {
      break;
    }

    sub_1BCBED070();
    swift_arrayInitWithTakeFrontToBack();
    sub_1BCBED070();
    v58 += v54;
    v57 += v54;
    v47 = __CFADD__(v55++, 1);
    if (v47)
    {
      goto LABEL_57;
    }
  }

  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
}

void sub_1BCBEC67C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v52 = type metadata accessor for WeatherProviderAttribution(0);
  MEMORY[0x1EEE9AC00](v52);
  v51 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v50 = (&v46 - v10);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v46 - v12);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v46 - v15);
  v18 = *(v17 + 72);
  if (!v18)
  {
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    return;
  }

  v19 = a2 - a1;
  v20 = a2 - a1 == 0x8000000000000000 && v18 == -1;
  if (v20)
  {
    goto LABEL_72;
  }

  v21 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_73;
  }

  v23 = v19 / v18;
  v55 = a1;
  v54 = a4;
  v24 = v21 / v18;
  if (v19 / v18 < v21 / v18)
  {
    sub_1BCA14FE0(a1, v19 / v18, a4);
    v25 = a4 + v23 * v18;
    v53 = v25;
    while (1)
    {
      if (a4 >= v25 || a2 >= a3)
      {
        goto LABEL_70;
      }

      sub_1BC962A04();
      sub_1BC962A04();
      if (*v13 == *v16 && v13[1] == v16[1])
      {
        sub_1BCBED0C8(v13, type metadata accessor for WeatherProviderAttribution);
        sub_1BCBED0C8(v16, type metadata accessor for WeatherProviderAttribution);
      }

      else
      {
        LODWORD(v51) = sub_1BCE1E090();
        sub_1BCBED0C8(v13, type metadata accessor for WeatherProviderAttribution);
        sub_1BCBED0C8(v16, type metadata accessor for WeatherProviderAttribution);
        if (v51)
        {
          if (a1 < a2 || a1 >= a2 + v18)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v18;
          goto LABEL_40;
        }
      }

      if (a1 < a4 || a1 >= a4 + v18)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a1 != a4)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v54 = a4 + v18;
      a4 += v18;
LABEL_40:
      a1 += v18;
      v55 = a1;
    }
  }

  sub_1BCA14FE0(a2, v21 / v18, a4);
  v30 = a2;
  v31 = a4 + v24 * v18;
  v32 = -v18;
  v33 = v31;
  v49 = -v18;
LABEL_42:
  v48 = v30;
  v34 = v30 + v32;
  v35 = a3;
  v46 = v33;
  while (1)
  {
    if (v31 <= a4)
    {
      v55 = v48;
      v53 = v33;
      goto LABEL_70;
    }

    if (v48 <= a1)
    {
      break;
    }

    v47 = v33;
    v36 = v31 + v32;
    v37 = v50;
    sub_1BC962A04();
    v38 = v34;
    v39 = v51;
    sub_1BC962A04();
    if (*v39 == *v37 && v39[1] == v37[1])
    {
      v41 = 0;
    }

    else
    {
      v41 = sub_1BCE1E090();
    }

    a3 = v35 + v49;
    sub_1BCBED0C8(v51, type metadata accessor for WeatherProviderAttribution);
    sub_1BCBED0C8(v50, type metadata accessor for WeatherProviderAttribution);
    if (v41)
    {
      v43 = v35 < v48 || a3 >= v48;
      v44 = v38;
      if (v43)
      {
        swift_arrayInitWithTakeFrontToBack();
        v30 = v38;
        v33 = v47;
        v32 = v49;
      }

      else
      {
        v45 = v47;
        v33 = v47;
        v30 = v44;
        v32 = v49;
        if (v35 != v48)
        {
          swift_arrayInitWithTakeBackToFront();
          v30 = v44;
          v33 = v45;
        }
      }

      goto LABEL_42;
    }

    v42 = v35 < v31 || a3 >= v31;
    v34 = v38;
    if (v42)
    {
      swift_arrayInitWithTakeFrontToBack();
      v35 = a3;
      v31 = v36;
      v33 = v36;
      v32 = v49;
    }

    else
    {
      v33 = v36;
      v20 = v31 == v35;
      v35 = a3;
      v31 = v36;
      v32 = v49;
      if (!v20)
      {
        swift_arrayInitWithTakeBackToFront();
        v35 = a3;
        v31 = v36;
        v33 = v36;
      }
    }
  }

  v55 = v48;
  v53 = v46;
LABEL_70:
  sub_1BCBECC04(&v55, &v54, &v53, type metadata accessor for WeatherProviderAttribution);
}

void sub_1BCBECC04(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  a4(0);
  OUTLINED_FUNCTION_4();
  v8 = *(v7 + 72);
  if (!v8)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_19_20();
  v11 = !v11 || v4 >= v10;
  if (v11)
  {
    OUTLINED_FUNCTION_6_2();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {
    OUTLINED_FUNCTION_6_2();

    swift_arrayInitWithTakeBackToFront();
  }
}

void sub_1BCBECD2C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07948);
  OUTLINED_FUNCTION_4();
  v7 = *(v6 + 72);
  if (!v7)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_19_20();
  v10 = !v10 || v3 >= v9;
  if (v10)
  {
    OUTLINED_FUNCTION_6_2();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {
    OUTLINED_FUNCTION_6_2();

    swift_arrayInitWithTakeBackToFront();
  }
}

char *sub_1BCBECE14(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

char *sub_1BCBECE40(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09C40);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

unint64_t sub_1BCBECF40()
{
  result = qword_1EDA16D08;
  if (!qword_1EDA16D08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0ACC0);
    sub_1BC94CC74(&qword_1EDA1B0C8, type metadata accessor for WeatherProviderAttributionCacheManager.ProviderDetailsCacheEntry);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA16D08);
  }

  return result;
}

uint64_t sub_1BCBECFFC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1BCBED070()
{
  OUTLINED_FUNCTION_9();
  v1(0);
  OUTLINED_FUNCTION_4();
  v2 = OUTLINED_FUNCTION_10_1();
  v3(v2);
  return v0;
}

uint64_t sub_1BCBED0C8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1BCBED120()
{
  result = qword_1EDA16D10;
  if (!qword_1EDA16D10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0ACC0);
    sub_1BC94CC74(&qword_1EDA1B0D0, type metadata accessor for WeatherProviderAttributionCacheManager.ProviderDetailsCacheEntry);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA16D10);
  }

  return result;
}

unint64_t sub_1BCBED250()
{
  result = qword_1EDA1B0E8[0];
  if (!qword_1EDA1B0E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDA1B0E8);
  }

  return result;
}

uint64_t sub_1BCBED2A4(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0AD08);
    sub_1BC94CC74(a2, type metadata accessor for WeatherProviderAttributionCacheManager.ProviderDetails);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BCBED340()
{
  result = qword_1EDA1B1B8[0];
  if (!qword_1EDA1B1B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDA1B1B8);
  }

  return result;
}

_BYTE *sub_1BCBED41C(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1BCBED4FC()
{
  result = qword_1EBD0AD38;
  if (!qword_1EBD0AD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0AD38);
  }

  return result;
}

unint64_t sub_1BCBED554()
{
  result = qword_1EBD0AD40;
  if (!qword_1EBD0AD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0AD40);
  }

  return result;
}

unint64_t sub_1BCBED5AC()
{
  result = qword_1EDA1B1A8;
  if (!qword_1EDA1B1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1B1A8);
  }

  return result;
}

unint64_t sub_1BCBED604()
{
  result = qword_1EDA1B1B0;
  if (!qword_1EDA1B1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1B1B0);
  }

  return result;
}

unint64_t sub_1BCBED65C()
{
  result = qword_1EDA1B0D8;
  if (!qword_1EDA1B0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1B0D8);
  }

  return result;
}

unint64_t sub_1BCBED6B4()
{
  result = qword_1EDA1B0E0;
  if (!qword_1EDA1B0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1B0E0);
  }

  return result;
}

void sub_1BCBED710(uint64_t a1@<X8>)
{
  v2 = a1 + 1436;
  sub_1BCBEDE54();
  v4 = v3;
  sub_1BCBEFD34();
  *a1 = 0x4006666666666666;
  *(a1 + 8) = 6;
  *(a1 + 16) = 0x3FF0000000000000;
  *(a1 + 24) = 25;
  *(a1 + 32) = xmmword_1BCE3BED0;
  *(a1 + 48) = xmmword_1BCE3BED0;
  *(a1 + 64) = 0x42D2000042480000;
  *(a1 + 72) = 0xC409800000000000;
  *(a1 + 80) = xmmword_1BCE3E530;
  *(a1 + 96) = xmmword_1BCE43040;
  *(a1 + 112) = 0x3E8000003DF5C28FLL;
  *(a1 + 128) = xmmword_1BCE3C7C0;
  *(a1 + 144) = xmmword_1BCE3D840;
  *(a1 + 160) = xmmword_1BCE3BF00;
  *(a1 + 176) = 1153138688;
  *(a1 + 184) = 0x3E4CCCCD3DA3D70ALL;
  *(a1 + 192) = xmmword_1BCE3C7C0;
  *(a1 + 208) = xmmword_1BCE3C700;
  *(a1 + 224) = xmmword_1BCE3C660;
  *(a1 + 240) = 0x4140000040A00000;
  *(a1 + 248) = 1132068864;
  *(a1 + 256) = 0x3E4CCCCD3DE147AELL;
  *(a1 + 264) = 0x40A0000041700000;
  *(a1 + 272) = 1101004800;
  __asm { FMOV            V0.4S, #1.0 }

  *(a1 + 288) = xmmword_1BCE3C7C0;
  *(a1 + 304) = _Q0;
  *(a1 + 320) = 0x4348000040C00000;
  *(a1 + 328) = 0x3E99999A3E19999ALL;
  *(a1 + 336) = 0x3F00000040A00000;
  *(a1 + 352) = xmmword_1BCE3C7C0;
  *(a1 + 368) = xmmword_1BCE3C700;
  *(a1 + 384) = 0;
  *(a1 + 388) = 0x3B03126F3F800000;
  *(a1 + 400) = xmmword_1BCE3C670;
  *(a1 + 416) = 0x3F0000003F000000;
  *(a1 + 424) = 30;
  *(a1 + 432) = xmmword_1BCE3D860;
  *(a1 + 448) = 0x3E4CCCCD3DCCCCCDLL;
  *(a1 + 464) = _Q0;
  *(a1 + 480) = xmmword_1BCE3D870;
  *(a1 + 496) = 0x43FA000040400000;
  *(a1 + 504) = 1116471296;
  *(a1 + 512) = 0x3E8000003DF5C28FLL;
  *(a1 + 528) = _Q0;
  *(a1 + 544) = _Q0;
  *(a1 + 560) = 0x4248000044BB8000;
  *(a1 + 568) = 0x3E4CCCCD3DA3D70ALL;
  *(a1 + 576) = xmmword_1BCE3C700;
  *(a1 + 592) = xmmword_1BCE3D880;
  *(a1 + 608) = 0x40C0000040800000;
  *(a1 + 624) = xmmword_1BCE3C700;
  *(a1 + 640) = xmmword_1BCE3D880;
  *(a1 + 656) = 0x419DAE1441200000;
  *(a1 + 664) = 0x402000003E99999ALL;
  *(a1 + 672) = 0x40A000003F800000;
  *(a1 + 688) = _Q0;
  *(a1 + 704) = 1065353216;
  *(a1 + 712) = 0x404000003FC00000;
  *(a1 + 720) = 0x400000003FC00000;
  *(a1 + 728) = 0;
  *(a1 + 736) = 1;
  *(a1 + 744) = 4;
  *(a1 + 752) = xmmword_1BCE3BF40;
  *(a1 + 768) = 0x617274736F746C41;
  *(a1 + 776) = 0xEF53202D20737574;
  *(a1 + 784) = 0xD000000000000013;
  *(a1 + 792) = 0x80000001BCE792E0;
  *(a1 + 800) = 6;
  *(a1 + 816) = _Q0;
  *(a1 + 832) = 1065353216;
  *(a1 + 840) = 0x404000003FC00000;
  *(a1 + 848) = 0x400000003FC00000;
  *(a1 + 856) = 0;
  *(a1 + 864) = 1;
  *(a1 + 872) = 4;
  *(a1 + 880) = xmmword_1BCE3D890;
  *(a1 + 896) = 0x617274736F746C41;
  *(a1 + 904) = 0xEF53202D20737574;
  *(a1 + 912) = 0xD000000000000013;
  *(a1 + 920) = 0x80000001BCE792E0;
  *(a1 + 928) = 6;
  *(a1 + 944) = _Q0;
  *(a1 + 960) = 1065353216;
  *(a1 + 968) = 0x404000003FC00000;
  *(a1 + 976) = 0x411970A44106E147;
  *(a1 + 984) = 1083022496;
  *(a1 + 992) = 1;
  *(a1 + 1000) = 4;
  *(a1 + 1008) = xmmword_1BCE3C6F0;
  *(a1 + 1024) = 0x2073756C756D7543;
  *(a1 + 1032) = 0xEB000000004D202DLL;
  *(a1 + 1040) = 0x5F73756C756D7543;
  *(a1 + 1048) = 0xEF4D656C676E6953;
  *(a1 + 1056) = 10;
  *(a1 + 1072) = _Q0;
  *(a1 + 1088) = 1065353216;
  *(a1 + 1096) = 0;
  __asm { FMOV            V4.2S, #3.25 }

  *(a1 + 1104) = _D4;
  *(a1 + 1112) = 0x42820000C0D00000;
  *(a1 + 1120) = 0;
  *(a1 + 1128) = 2;
  *(a1 + 1136) = xmmword_1BCE3FB50;
  *(a1 + 1152) = 0x7970736957;
  *(a1 + 1160) = 0xE500000000000000;
  strcpy((a1 + 1168), "Wispy_Single");
  *(a1 + 1181) = 0;
  *(a1 + 1182) = -5120;
  *(a1 + 1184) = 6;
  *(a1 + 1200) = _Q0;
  *(a1 + 1216) = xmmword_1BCE47CB0;
  *(a1 + 1232) = 0;
  *(a1 + 1236) = 1;
  *(a1 + 1240) = 0x617274736F746C41;
  *(a1 + 1248) = 0xEB00000000737574;
  *(a1 + 1256) = 0xD000000000000013;
  *(a1 + 1264) = 0x80000001BCE79300;
  *(a1 + 1272) = 8;
  *(a1 + 1280) = 0;
  *(a1 + 1288) = 0x400000003F800000;
  *(a1 + 1296) = 0x41C8000042C80000;
  *(a1 + 1304) = 0;
  *(a1 + 1312) = _Q0;
  *(a1 + 1328) = _Q0;
  *(a1 + 1344) = 0;
  *(a1 + 1352) = 0x40000000;
  *(a1 + 1360) = 0;
  *(a1 + 1368) = 1;
  *(a1 + 1408) = 0u;
  *(a1 + 1392) = 0u;
  *(a1 + 1376) = 0u;
  *(a1 + 1424) = 0x3F99999A3ECCCCCDLL;
  *(a1 + 1432) = 1;
  *v2 = xmmword_1BCE3BFC0;
  *(a1 + 1456) = 0x41D3333341BD3333;
  *(a1 + 1472) = _Q0;
  *(a1 + 1488) = _Q0;
  *(a1 + 1504) = 1097859072;
  *(a1 + 1512) = 0x736168506E6F6F6DLL;
  *(a1 + 1520) = 0xEA00000000003065;
  *(a1 + 1528) = 1112014848;
  *(a1 + 1536) = _Q0;
  *(a1 + 1552) = xmmword_1BCE3C770;
  *(a1 + 1568) = 0x4248000042200000;
  *(a1 + 1584) = 0u;
  *(a1 + 1600) = xmmword_1BCE3D880;
  __asm { FMOV            V2.2S, #-30.0 }

  *(a1 + 1616) = -_D2;
  *(a1 + 1624) = 0x40000000;
  *(a1 + 1632) = 0;
  *(a1 + 1628) = 0;
  *(a1 + 1634) = 16843009;
  *(a1 + 1637) = 16843009;
  *(a1 + 1645) = 256;
  *(v2 + 211) = 0;
  *(a1 + 1651) = 1;
  *(a1 + 1656) = 0;
  *(a1 + 1657) = v13;
  *(a1 + 1659) = v14;
  *(a1 + 1660) = 1066611507;
  *(a1 + 1664) = 0x40C0000040A00000;
  *(a1 + 1672) = 3;
  *(a1 + 1680) = xmmword_1BCE3C000;
  *(a1 + 1696) = xmmword_1BCE3C010;
  *(a1 + 1712) = xmmword_1BCE3C020;
  *(a1 + 1728) = 0x3F0000003EB33333;
  *(a1 + 1736) = 0x3E800000453B8000;
  *(a1 + 1760) = 0;
  *(a1 + 1744) = 0u;
  *(a1 + 1776) = xmmword_1BCE3D8B0;
  *(a1 + 1792) = xmmword_1BCE3D8C0;
  *(a1 + 1808) = xmmword_1BCE3C7A0;
  *(a1 + 1824) = 1;
  *(a1 + 1828) = xmmword_1BCE3C7B0;
  *(a1 + 1844) = 1050253722;
  *(a1 + 1848) = 0x4100000041200000;
  *(a1 + 1856) = 3;
  *(a1 + 1864) = 1041865114;
  *(a1 + 1872) = 0x400AE1483F970A3DLL;
  *(a1 + 1880) = 1109917696;
  *(a1 + 1888) = _Q0;
  *(a1 + 1904) = 0x3F19999A40A00000;
  *(a1 + 1912) = 1106247680;
  *(a1 + 1920) = 0;
  *(a1 + 1928) = 1107296256;
  *(a1 + 1936) = _Q0;
  *(a1 + 1952) = 1065353216;
  *(a1 + 1960) = 0x420C000041C80000;
  *(a1 + 1968) = xmmword_1BCE4B030;
  *(a1 + 1984) = 0x3F80000000000000;
  *(a1 + 1992) = 1061158912;
  *(a1 + 2000) = 0x3F6666663E4CCCCDLL;
  *(a1 + 2008) = 0x3F6666663F333333;
  *(a1 + 2016) = xmmword_1BCE3C7E0;
  *(a1 + 2096) = 0u;
  *(a1 + 2080) = 0u;
  *(a1 + 2064) = 0u;
  *(a1 + 2048) = 0u;
  *(a1 + 2032) = 0u;
  *(a1 + 2112) = 1056964608;
  *(a1 + 2120) = 0x3E4CCCCD3DCCCCCDLL;
  *(a1 + 2128) = 0x400000003F800000;
  *(a1 + 2136) = 0x4040000040000000;
  *(a1 + 2144) = -1046478848;
  *(a1 + 2160) = _Q0;
  *(a1 + 2176) = _Q0;
  *(a1 + 2192) = 1061997773;
  *(a1 + 2200) = 10;
  *(a1 + 2208) = 0x40A000003FC00000;
  *(a1 + 2224) = xmmword_1BCE3C090;
  *(a1 + 2240) = xmmword_1BCE3C0A0;
  *(a1 + 2256) = _Q0;
  *(a1 + 2288) = 0u;
  *(a1 + 2272) = 0u;
  *(a1 + 2304) = 3;
  *(a1 + 2312) = v4;
  *(a1 + 2320) = v12;
}

__n128 sub_1BCBEDE54()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07858);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BCE3C820;
  *(v0 + 32) = 0xC056800000000000;
  *(v0 + 40) = 0;
  *(v0 + 48) = xmmword_1BCE3C830;
  *(v0 + 64) = 0x432A000043480000;
  *(v0 + 72) = 1040242952;
  *(v0 + 80) = xmmword_1BCE3C840;
  *(v0 + 96) = xmmword_1BCE3C850;
  *(v0 + 112) = xmmword_1BCE3C860;
  *(v0 + 128) = xmmword_1BCE3C870;
  *(v0 + 144) = xmmword_1BCE3C880;
  *(v0 + 160) = xmmword_1BCE3C890;
  __asm { FMOV            V0.2D, #1.0 }

  *(v0 + 176) = result;
  *(v0 + 192) = result;
  *(v0 + 208) = result;
  *(v0 + 224) = xmmword_1BCE3C8C0;
  *(v0 + 240) = result;
  *(v0 + 256) = result;
  *(v0 + 272) = result;
  *(v0 + 288) = result;
  *(v0 + 304) = result;
  *(v0 + 320) = result;
  *(v0 + 336) = xmmword_1BCE3C8F0;
  *(v0 + 352) = result;
  *(v0 + 368) = xmmword_1BCE47CE0;
  *(v0 + 384) = 0x3F4CCCCD3F800000;
  *(v0 + 392) = 0x3FEFC7B640000000;
  *(v0 + 400) = xmmword_1BCE4B040;
  *(v0 + 416) = 0;
  *(v0 + 424) = 1065353216;
  *(v0 + 432) = result;
  *(v0 + 448) = result;
  *(v0 + 464) = result;
  *(v0 + 480) = result;
  *(v0 + 496) = result;
  *(v0 + 512) = result;
  *(v0 + 528) = result;
  *(v0 + 544) = result;
  *(v0 + 560) = result;
  *(v0 + 576) = result;
  *(v0 + 592) = result;
  *(v0 + 608) = result;
  *(v0 + 624) = result;
  *(v0 + 640) = result;
  *(v0 + 656) = result;
  *(v0 + 672) = result;
  *(v0 + 688) = result;
  *(v0 + 704) = result;
  *(v0 + 720) = result;
  *(v0 + 736) = result;
  *(v0 + 752) = result;
  *(v0 + 768) = result;
  *(v0 + 784) = result;
  *(v0 + 800) = result;
  *(v0 + 816) = result;
  *(v0 + 832) = result;
  *(v0 + 848) = result;
  *(v0 + 864) = result;
  *(v0 + 880) = result;
  *(v0 + 896) = result;
  *(v0 + 912) = result;
  *(v0 + 928) = result;
  *(v0 + 944) = result;
  *(v0 + 960) = result;
  *(v0 + 976) = result;
  *(v0 + 992) = result;
  *(v0 + 1008) = result;
  *(v0 + 1024) = result;
  *(v0 + 1040) = result;
  *(v0 + 1056) = result;
  *(v0 + 1072) = vdupq_n_s64(0x3FCF82F740000000uLL);
  *(v0 + 1088) = xmmword_1BCE3C910;
  *(v0 + 1104) = xmmword_1BCE3C920;
  *(v0 + 1120) = xmmword_1BCE3C930;
  *(v0 + 1136) = result;
  *(v0 + 1152) = result;
  *(v0 + 1168) = 0x4170000000000000;
  *(v0 + 1176) = 0x3FF0000000000000;
  *(v0 + 1184) = result;
  *(v0 + 1200) = result;
  *(v0 + 1216) = result;
  *(v0 + 1232) = 0x3FF0000000000000;
  *(v0 + 1248) = 0xC04E000000000000;
  *(v0 + 1256) = 0;
  *(v0 + 1257) = *v8;
  *(v0 + 1260) = *&v8[3];
  *(v0 + 1264) = xmmword_1BCE3C830;
  *(v0 + 1280) = 0x432A000043480000;
  *(v0 + 1288) = 1040242952;
  *(v0 + 1296) = xmmword_1BCE3C840;
  *(v0 + 1312) = xmmword_1BCE3C850;
  *(v0 + 1328) = xmmword_1BCE3C860;
  *(v0 + 1344) = xmmword_1BCE3C870;
  *(v0 + 1360) = xmmword_1BCE3C880;
  *(v0 + 1376) = xmmword_1BCE3C890;
  *(v0 + 1392) = result;
  *(v0 + 1408) = result;
  *(v0 + 1424) = result;
  *(v0 + 1440) = xmmword_1BCE3C8C0;
  *(v0 + 1456) = result;
  *(v0 + 1472) = result;
  *(v0 + 1488) = result;
  *(v0 + 1504) = result;
  *(v0 + 1520) = result;
  *(v0 + 1536) = result;
  *(v0 + 1552) = xmmword_1BCE3C8F0;
  *(v0 + 1568) = result;
  *(v0 + 1584) = xmmword_1BCE47CE0;
  *(v0 + 1600) = 0x3F4CCCCD3F800000;
  *(v0 + 1608) = 0x3FEFC7B640000000;
  *(v0 + 1616) = xmmword_1BCE4B040;
  *(v0 + 1632) = 0;
  *(v0 + 1640) = 1065353216;
  *(v0 + 1648) = result;
  *(v0 + 1664) = result;
  *(v0 + 1680) = result;
  *(v0 + 1696) = result;
  *(v0 + 1712) = result;
  *(v0 + 1728) = result;
  *(v0 + 1744) = result;
  *(v0 + 1760) = result;
  *(v0 + 1776) = result;
  *(v0 + 1792) = result;
  *(v0 + 1808) = result;
  *(v0 + 1824) = result;
  *(v0 + 1840) = result;
  *(v0 + 1856) = result;
  *(v0 + 1872) = result;
  *(v0 + 1888) = result;
  *(v0 + 1904) = result;
  *(v0 + 1920) = result;
  *(v0 + 1936) = result;
  *(v0 + 1952) = result;
  *(v0 + 1968) = result;
  *(v0 + 1984) = result;
  *(v0 + 2000) = result;
  *(v0 + 2016) = result;
  *(v0 + 2032) = result;
  *(v0 + 2048) = result;
  *(v0 + 2064) = result;
  *(v0 + 2080) = result;
  *(v0 + 2096) = result;
  *(v0 + 2112) = result;
  *(v0 + 2128) = result;
  *(v0 + 2144) = result;
  *(v0 + 2160) = result;
  *(v0 + 2176) = result;
  *(v0 + 2192) = result;
  *(v0 + 2208) = result;
  *(v0 + 2224) = result;
  *(v0 + 2240) = result;
  *(v0 + 2256) = result;
  *(v0 + 2272) = result;
  *(v0 + 2288) = vdupq_n_s64(0x3FCF6CD7E0000000uLL);
  *(v0 + 2304) = xmmword_1BCE3C940;
  *(v0 + 2320) = xmmword_1BCE3C950;
  *(v0 + 2336) = xmmword_1BCE3C960;
  *(v0 + 2352) = result;
  *(v0 + 2368) = result;
  *(v0 + 2384) = 0x4170000000000000;
  *(v0 + 2392) = 0x3FF0000000000000;
  *(v0 + 2400) = result;
  *(v0 + 2416) = result;
  *(v0 + 2432) = result;
  *(v0 + 2448) = 0x3FF0000000000000;
  *(v0 + 2464) = 0xC028000000000000;
  *(v0 + 2472) = 0;
  *(v0 + 2473) = *v9;
  *(v0 + 2476) = *&v9[3];
  *(v0 + 2480) = xmmword_1BCE3DC90;
  *(v0 + 2496) = 0x4396000042C80000;
  *(v0 + 2504) = 1036831949;
  *(v0 + 2512) = xmmword_1BCE3C970;
  *(v0 + 2528) = result;
  *(v0 + 2544) = xmmword_1BCE3DEC0;
  *(v0 + 2656) = xmmword_1BCE3C8C0;
  *(v0 + 2672) = result;
  *(v0 + 2688) = result;
  *(v0 + 2704) = xmmword_1BCE3D3C0;
  *(v0 + 2736) = xmmword_1BCE3C9E0;
  *(v0 + 2752) = xmmword_1BCE3CBC0;
  *(v0 + 2768) = xmmword_1BCE3C9F0;
  *(v0 + 2784) = xmmword_1BCE3CA00;
  *(v0 + 2800) = xmmword_1BCE42C40;
  v6 = vdup_n_s32(0x3F4CCCCDu);
  *(v0 + 2816) = v6;
  *(v0 + 2824) = 0x3FEFC7B660000000;
  *(v0 + 2832) = xmmword_1BCE4B040;
  *(v0 + 2848) = 0;
  *(v0 + 2856) = 1065353216;
  *(v0 + 2864) = result;
  *(v0 + 2880) = result;
  *(v0 + 2896) = result;
  *(v0 + 2912) = result;
  *(v0 + 2928) = result;
  *(v0 + 2944) = result;
  *(v0 + 2960) = result;
  *(v0 + 2976) = result;
  *(v0 + 2992) = result;
  *(v0 + 3008) = result;
  *(v0 + 3024) = result;
  *(v0 + 3040) = result;
  *(v0 + 3056) = result;
  *(v0 + 3072) = result;
  *(v0 + 3088) = result;
  *(v0 + 3104) = result;
  *(v0 + 3120) = result;
  *(v0 + 3136) = result;
  *(v0 + 3152) = result;
  *(v0 + 3168) = result;
  *(v0 + 3184) = result;
  *(v0 + 3200) = result;
  *(v0 + 3216) = result;
  *(v0 + 3232) = result;
  *(v0 + 3248) = result;
  *(v0 + 3264) = result;
  *(v0 + 3280) = result;
  *(v0 + 3296) = result;
  *(v0 + 3312) = result;
  *(v0 + 3328) = result;
  *(v0 + 3344) = result;
  *(v0 + 3360) = result;
  *(v0 + 3376) = result;
  *(v0 + 3392) = result;
  *(v0 + 3408) = result;
  *(v0 + 3424) = result;
  *(v0 + 3440) = result;
  *(v0 + 3456) = result;
  *(v0 + 3472) = result;
  *(v0 + 3488) = result;
  *(v0 + 3504) = vdupq_n_s64(0x3FCF992720000000uLL);
  *(v0 + 3520) = xmmword_1BCE3CA20;
  *(v0 + 3536) = xmmword_1BCE3CA30;
  *(v0 + 3552) = xmmword_1BCE3CA40;
  *(v0 + 3568) = result;
  *(v0 + 3584) = result;
  *(v0 + 3600) = 0x4170000000000000;
  *(v0 + 3608) = 0x3FF0000000000000;
  *(v0 + 3616) = result;
  *(v0 + 3632) = result;
  *(v0 + 3648) = result;
  *(v0 + 3664) = 0x3FF0000000000000;
  *(v0 + 3680) = 0xC018000000000000;
  *(v0 + 3688) = 0;
  *(v0 + 3689) = *v10;
  *(v0 + 3692) = *&v10[3];
  *(v0 + 3696) = xmmword_1BCE3CB30;
  *(v0 + 3728) = xmmword_1BCE3CA60;
  *(v0 + 3760) = xmmword_1BCE3CA70;
  *(v0 + 3776) = xmmword_1BCE3CA80;
  *(v0 + 4672) = result;
  *(v0 + 4688) = result;
  *(v0 + 4704) = result;
  *(v0 + 4720) = xmmword_1BCE3CB00;
  *(v0 + 4736) = xmmword_1BCE3CB10;
  *(v0 + 4576) = result;
  *(v0 + 4592) = result;
  *(v0 + 4608) = result;
  *(v0 + 4624) = result;
  *(v0 + 4640) = result;
  *(v0 + 4656) = result;
  *(v0 + 4480) = result;
  *(v0 + 4496) = result;
  *(v0 + 4512) = result;
  *(v0 + 4528) = result;
  *(v0 + 4544) = result;
  *(v0 + 4560) = result;
  *(v0 + 4384) = result;
  *(v0 + 4400) = result;
  *(v0 + 4416) = result;
  *(v0 + 4432) = result;
  *(v0 + 4448) = result;
  *(v0 + 4464) = result;
  *(v0 + 4288) = result;
  *(v0 + 4304) = result;
  *(v0 + 4320) = result;
  *(v0 + 4336) = result;
  *(v0 + 4352) = result;
  *(v0 + 4368) = result;
  *(v0 + 4208) = result;
  *(v0 + 4224) = result;
  *(v0 + 4240) = result;
  *(v0 + 4256) = result;
  *(v0 + 4272) = result;
  *(v0 + 4128) = result;
  *(v0 + 4144) = result;
  *(v0 + 4160) = result;
  *(v0 + 4176) = result;
  *(v0 + 4192) = result;
  *(v0 + 3792) = xmmword_1BCE3CA90;
  *(v0 + 4072) = 1065353216;
  *(v0 + 4080) = result;
  *(v0 + 4096) = result;
  *(v0 + 4112) = result;
  *(v0 + 3984) = xmmword_1BCE3CAD0;
  *(v0 + 4000) = xmmword_1BCE3CA00;
  *(v0 + 4048) = xmmword_1BCE4B040;
  *(v0 + 4064) = 0;
  *(v0 + 4016) = xmmword_1BCE47CF0;
  *(v0 + 4032) = 1062836634;
  *(v0 + 4040) = 0x3FEFC7B640000000;
  *(v0 + 3920) = result;
  *(v0 + 3936) = result;
  *(v0 + 3952) = result;
  *(v0 + 3968) = xmmword_1BCE3C8C0;
  *(v0 + 3808) = xmmword_1BCE3CAA0;
  *(v0 + 3872) = xmmword_1BCE3C8C0;
  *(v0 + 3888) = result;
  *(v0 + 3904) = result;
  *(v0 + 4752) = xmmword_1BCE3CB20;
  *(v0 + 3712) = 0x447A000044160000;
  *(v0 + 3824) = result;
  *(v0 + 3840) = result;
  *(v0 + 3856) = result;
  *(v0 + 3720) = 1061997773;
  *(v0 + 3744) = result;
  *(v0 + 4768) = xmmword_1BCE3CB10;
  *(v0 + 4944) = xmmword_1BCE3DA10;
  *(v0 + 4960) = xmmword_1BCE3DA20;
  *(v0 + 4976) = xmmword_1BCE3CB60;
  *(v0 + 4992) = xmmword_1BCE3CB70;
  *(v0 + 5008) = xmmword_1BCE3DA30;
  *(v0 + 5024) = xmmword_1BCE3DA40;
  *(v0 + 5168) = xmmword_1BCE3DA80;
  *(v0 + 5184) = xmmword_1BCE3CBE0;
  *(v0 + 5936) = xmmword_1BCE3CC10;
  *(v0 + 5968) = xmmword_1BCE3CC30;
  *(v0 + 5952) = xmmword_1BCE3CC20;
  *(v0 + 5984) = xmmword_1BCE3CC20;
  *(v0 + 6128) = xmmword_1BCE3CC40;
  *(v0 + 6160) = xmmword_1BCE3DA90;
  *(v0 + 6176) = xmmword_1BCE3DAA0;
  *(v0 + 6192) = xmmword_1BCE4B050;
  *(v0 + 6208) = xmmword_1BCE4B060;
  *(v0 + 6224) = xmmword_1BCE3CC90;
  *(v0 + 6240) = xmmword_1BCE3CCA0;
  *(v0 + 6384) = xmmword_1BCE3DAF0;
  *(v0 + 6400) = xmmword_1BCE3DB00;
  *(v0 + 6416) = xmmword_1BCE3CCD0;
  *(v0 + 6432) = xmmword_1BCE3CCE0;
  *(v0 + 7152) = xmmword_1BCE3CD10;
  *(v0 + 7184) = xmmword_1BCE3CD30;
  *(v0 + 7168) = xmmword_1BCE3CD20;
  *(v0 + 7200) = xmmword_1BCE3CD20;
  *(v0 + 7344) = xmmword_1BCE3CD40;
  *(v0 + 7408) = xmmword_1BCE4B070;
  *(v0 + 7552) = result;
  *(v0 + 7424) = xmmword_1BCE3CE60;
  *(v0 + 7632) = xmmword_1BCE3CD90;
  *(v0 + 7648) = xmmword_1BCE3CDA0;
  *(v0 + 8368) = xmmword_1BCE3CDD0;
  *(v0 + 8400) = xmmword_1BCE3CDE0;
  *(v0 + 8560) = xmmword_1BCE3CDF0;
  *(v0 + 8624) = xmmword_1BCE57F60;
  *(v0 + 8848) = xmmword_1BCE3DB40;
  *(v0 + 9616) = xmmword_1BCE47D00;
  *(v0 + 10128) = xmmword_1BCE4B0C0;
  *(v0 + 9584) = xmmword_1BCE3CE20;
  *(v0 + 10800) = xmmword_1BCE3CE20;
  *(v0 + 10832) = xmmword_1BCE3CEA0;
  *(v0 + 9776) = xmmword_1BCE3CE40;
  *(v0 + 10992) = xmmword_1BCE3CE40;
  *(v0 + 9792) = 1150681088;
  *(v0 + 11008) = 1150681088;
  *(v0 + 7376) = xmmword_1BCE3DB10;
  *(v0 + 9808) = xmmword_1BCE3DB10;
  *(v0 + 11024) = xmmword_1BCE3DB10;
  *(v0 + 9840) = xmmword_1BCE4B0A0;
  *(v0 + 11056) = xmmword_1BCE4B0A0;
  *(v0 + 9856) = xmmword_1BCE4B0B0;
  *(v0 + 11072) = xmmword_1BCE4B0B0;
  *(v0 + 9872) = xmmword_1BCE3CE70;
  *(v0 + 11088) = xmmword_1BCE3CE70;
  *(v0 + 9888) = xmmword_1BCE3CE80;
  *(v0 + 11104) = xmmword_1BCE3CE80;
  *(v0 + 11344) = xmmword_1BCE4B0D0;
  *(v0 + 10816) = xmmword_1BCE3CE90;
  *(v0 + 12032) = xmmword_1BCE3CE90;
  *(v0 + 12048) = xmmword_1BCE3CE30;
  *(v0 + 12208) = xmmword_1BCE3CEC0;
  *(v0 + 8576) = 0x41A0000044960000;
  *(v0 + 12224) = 0x41A0000044960000;
  *(v0 + 8592) = xmmword_1BCE3DB30;
  *(v0 + 12240) = xmmword_1BCE3DB30;
  *(v0 + 7392) = xmmword_1BCE3CD50;
  *(v0 + 8608) = xmmword_1BCE3CD50;
  *(v0 + 9824) = xmmword_1BCE3CD50;
  *(v0 + 11040) = xmmword_1BCE3CD50;
  *(v0 + 12256) = xmmword_1BCE3CD50;
  *(v0 + 12272) = xmmword_1BCE4B0E0;
  *(v0 + 9600) = xmmword_1BCE3D4B0;
  *(v0 + 13248) = xmmword_1BCE3D4B0;
  *(v0 + 13264) = xmmword_1BCE47D10;
  *(v0 + 13424) = xmmword_1BCE4B0F0;
  *(v0 + 7360) = 1147207680;
  *(v0 + 13440) = 1147207680;
  *(v0 + 13456) = xmmword_1BCE3DB50;
  *(v0 + 13472) = xmmword_1BCE3CF10;
  *(v0 + 13488) = xmmword_1BCE4B100;
  *(v0 + 13504) = xmmword_1BCE4B110;
  *(v0 + 7440) = xmmword_1BCE3CD70;
  *(v0 + 13520) = xmmword_1BCE3CD70;
  *(v0 + 7456) = xmmword_1BCE3CD80;
  *(v0 + 13536) = xmmword_1BCE3CD80;
  *(v0 + 13712) = xmmword_1BCE3CF60;
  *(v0 + 7696) = xmmword_1BCE4B080;
  *(v0 + 8912) = xmmword_1BCE4B080;
  *(v0 + 12560) = xmmword_1BCE4B080;
  *(v0 + 13776) = xmmword_1BCE4B080;
  *(v0 + 12016) = xmmword_1BCE3CEB0;
  *(v0 + 13232) = xmmword_1BCE3CEB0;
  *(v0 + 14448) = xmmword_1BCE3CEB0;
  *(v0 + 8384) = xmmword_1BCE3CBB0;
  *(v0 + 14464) = xmmword_1BCE3CBB0;
  *(v0 + 14480) = xmmword_1BCE3CF90;
  *(v0 + 14640) = xmmword_1BCE4B120;
  *(v0 + 6144) = 0x44480000443B8000;
  *(v0 + 14656) = 0x44480000443B8000;
  *(v0 + 14672) = xmmword_1BCE3DF50;
  *(v0 + 2720) = xmmword_1BCE3D3D0;
  *(v0 + 2560) = xmmword_1BCE3C990;
  *(v0 + 2592) = result;
  *(v0 + 2608) = result;
  *(v0 + 2624) = result;
  *(v0 + 2640) = result;
  *(v0 + 2576) = xmmword_1BCE3C9A0;
  *(v0 + 4784) = result;
  *(v0 + 4800) = result;
  *(v0 + 4816) = 0x4170000000000000;
  *(v0 + 4824) = 0x3FF0000000000000;
  *(v0 + 4832) = result;
  *(v0 + 4848) = result;
  *(v0 + 4905) = *v11;
  *(v0 + 4864) = result;
  *(v0 + 4880) = 0x3FF0000000000000;
  *(v0 + 4896) = 0;
  *(v0 + 4904) = 0;
  *(v0 + 4908) = *&v11[3];
  *(v0 + 4912) = xmmword_1BCE3CB30;
  *(v0 + 4928) = 0x44C8000044160000;
  *(v0 + 4936) = 1061997773;
  *(v0 + 5040) = result;
  *(v0 + 5056) = result;
  *(v0 + 5072) = result;
  *(v0 + 5088) = xmmword_1BCE3C8C0;
  *(v0 + 5104) = result;
  *(v0 + 5120) = result;
  *(v0 + 5136) = result;
  *(v0 + 5152) = result;
  *(v0 + 5200) = xmmword_1BCE3CBF0;
  *(v0 + 5216) = xmmword_1BCE3CA00;
  *(v0 + 5232) = xmmword_1BCE3FD30;
  *(v0 + 5248) = 1063675494;
  *(v0 + 5256) = 0x3FEFC7B640000000;
  *(v0 + 5264) = xmmword_1BCE4B040;
  *(v0 + 5280) = 0;
  *(v0 + 5288) = 0;
  *(v0 + 5296) = result;
  *(v0 + 5312) = result;
  *(v0 + 5328) = result;
  *(v0 + 5344) = result;
  *(v0 + 5360) = result;
  *(v0 + 5376) = result;
  *(v0 + 5392) = result;
  *(v0 + 5408) = result;
  *(v0 + 5424) = result;
  *(v0 + 5440) = result;
  *(v0 + 5456) = result;
  *(v0 + 5472) = result;
  *(v0 + 5488) = result;
  *(v0 + 5504) = result;
  *(v0 + 5520) = result;
  *(v0 + 5536) = result;
  *(v0 + 5552) = result;
  *(v0 + 5568) = result;
  *(v0 + 5584) = result;
  *(v0 + 5600) = result;
  *(v0 + 5616) = result;
  *(v0 + 5632) = result;
  *(v0 + 5648) = result;
  *(v0 + 5664) = result;
  *(v0 + 5680) = result;
  *(v0 + 5696) = result;
  *(v0 + 5712) = result;
  *(v0 + 5728) = result;
  *(v0 + 5744) = result;
  *(v0 + 5760) = result;
  *(v0 + 5776) = result;
  *(v0 + 5792) = result;
  *(v0 + 5808) = result;
  *(v0 + 5824) = result;
  *(v0 + 5840) = result;
  *(v0 + 5856) = result;
  *(v0 + 5872) = result;
  *(v0 + 5888) = result;
  *(v0 + 5904) = result;
  *(v0 + 5920) = result;
  *(v0 + 6000) = result;
  *(v0 + 6016) = result;
  *(v0 + 6032) = 0x4170000000000000;
  *(v0 + 6040) = 0x3FF0000000000000;
  *(v0 + 6048) = result;
  *(v0 + 6064) = result;
  *(v0 + 6080) = result;
  *(v0 + 6121) = *v12;
  *(v0 + 6096) = 0x3FF0000000000000;
  *(v0 + 6112) = 0x4017FFFFFFFFFFFALL;
  *(v0 + 6120) = 0;
  *(v0 + 6124) = *&v12[3];
  *(v0 + 6152) = 1060320052;
  *(v0 + 6256) = result;
  *(v0 + 6272) = result;
  *(v0 + 6288) = result;
  *(v0 + 6304) = xmmword_1BCE3C8C0;
  *(v0 + 6320) = result;
  *(v0 + 6336) = result;
  *(v0 + 6352) = result;
  *(v0 + 6368) = result;
  *(v0 + 6448) = xmmword_1BCE3FD30;
  *(v0 + 6464) = 1063675494;
  *(v0 + 6472) = 0x3FEFC7B660000000;
  *(v0 + 6480) = xmmword_1BCE4B040;
  *(v0 + 6496) = 0x3FE0000000000000;
  *(v0 + 6504) = 0;
  *(v0 + 6512) = result;
  *(v0 + 6528) = result;
  *(v0 + 6544) = result;
  *(v0 + 6560) = result;
  *(v0 + 6576) = result;
  *(v0 + 6592) = result;
  *(v0 + 6608) = result;
  *(v0 + 6624) = result;
  *(v0 + 6640) = result;
  *(v0 + 6656) = result;
  *(v0 + 6672) = result;
  *(v0 + 6688) = result;
  *(v0 + 6704) = result;
  *(v0 + 6720) = result;
  *(v0 + 6736) = result;
  *(v0 + 6752) = result;
  *(v0 + 6768) = result;
  *(v0 + 6784) = result;
  *(v0 + 6800) = result;
  *(v0 + 6816) = result;
  *(v0 + 6832) = result;
  *(v0 + 6848) = result;
  *(v0 + 6864) = result;
  *(v0 + 6880) = result;
  *(v0 + 6896) = result;
  *(v0 + 6912) = result;
  *(v0 + 6928) = result;
  *(v0 + 6944) = result;
  *(v0 + 6960) = result;
  *(v0 + 6976) = result;
  *(v0 + 6992) = result;
  *(v0 + 7008) = result;
  *(v0 + 7024) = result;
  *(v0 + 7040) = result;
  *(v0 + 7056) = result;
  *(v0 + 7072) = result;
  *(v0 + 7088) = result;
  *(v0 + 7104) = result;
  *(v0 + 7120) = result;
  *(v0 + 7136) = result;
  *(v0 + 7216) = result;
  *(v0 + 7232) = result;
  *(v0 + 7248) = 0x4170000000000000;
  *(v0 + 7256) = 0x3FF0000000000000;
  *(v0 + 7264) = result;
  *(v0 + 7280) = result;
  *(v0 + 7296) = result;
  *(v0 + 7312) = 0x3FF0000000000000;
  *(v0 + 7328) = 0x4027FFFFFFFFFFFALL;
  *(v0 + 7336) = 0;
  *(v0 + 7337) = *v13;
  *(v0 + 7340) = *&v13[3];
  *(v0 + 7368) = 1058642330;
  *(v0 + 7472) = result;
  *(v0 + 7488) = result;
  *(v0 + 7504) = result;
  *(v0 + 7520) = xmmword_1BCE3C8C0;
  *(v0 + 7536) = result;
  *(v0 + 14688) = xmmword_1BCE3DF60;
  *(v0 + 14704) = xmmword_1BCE4B130;
  *(v0 + 14720) = xmmword_1BCE4B140;
  *(v0 + 14736) = xmmword_1BCE3DBA0;
  *(v0 + 14752) = xmmword_1BCE3DBB0;
  *(v0 + 14864) = xmmword_1BCE3D010;
  *(v0 + 14880) = xmmword_1BCE3DBE0;
  *(v0 + 14928) = xmmword_1BCE3D040;
  *(v0 + 15664) = xmmword_1BCE3D070;
  *(v0 + 15680) = xmmword_1BCE3D080;
  *(v0 + 15696) = xmmword_1BCE3D090;
  *(v0 + 15712) = xmmword_1BCE3D0A0;
  *(v0 + 15856) = xmmword_1BCE3D0B0;
  *(v0 + 15872) = 0x44C8000044160000;
  *(v0 + 15888) = xmmword_1BCE3DFA0;
  *(v0 + 15904) = xmmword_1BCE3DFB0;
  *(v0 + 15920) = xmmword_1BCE3DFC0;
  *(v0 + 15936) = xmmword_1BCE3DFD0;
  *(v0 + 15952) = xmmword_1BCE3DC10;
  *(v0 + 15968) = xmmword_1BCE3DC20;
  *(v0 + 10032) = xmmword_1BCE3CCB0;
  *(v0 + 10064) = xmmword_1BCE3CCB0;
  *(v0 + 11248) = xmmword_1BCE3CCB0;
  *(v0 + 11280) = xmmword_1BCE3CCB0;
  *(v0 + 16080) = xmmword_1BCE3CCB0;
  *(v0 + 16096) = xmmword_1BCE3DC50;
  *(v0 + 16144) = xmmword_1BCE3CBF0;
  *(v0 + 7664) = xmmword_1BCE3FD30;
  *(v0 + 8880) = xmmword_1BCE3FD30;
  *(v0 + 10096) = xmmword_1BCE3FD30;
  *(v0 + 11312) = xmmword_1BCE3FD30;
  *(v0 + 12528) = xmmword_1BCE3FD30;
  *(v0 + 13744) = xmmword_1BCE3FD30;
  *(v0 + 14960) = xmmword_1BCE3FD30;
  *(v0 + 16176) = xmmword_1BCE3FD30;
  *(v0 + 7680) = 1063675494;
  *(v0 + 8896) = 1063675494;
  *(v0 + 10112) = 1063675494;
  *(v0 + 11328) = 1063675494;
  *(v0 + 12544) = 1063675494;
  *(v0 + 13760) = 1063675494;
  *(v0 + 14976) = 1063675494;
  *(v0 + 16192) = 1063675494;
  *(v0 + 16880) = xmmword_1BCE3D160;
  *(v0 + 16896) = xmmword_1BCE3D170;
  *(v0 + 16912) = xmmword_1BCE3D180;
  *(v0 + 16928) = xmmword_1BCE3D190;
  *(v0 + 17072) = xmmword_1BCE3CB30;
  *(v0 + 17088) = 0x447A000044160000;
  *(v0 + 17104) = xmmword_1BCE4B150;
  *(v0 + 17136) = xmmword_1BCE3D1C0;
  *(v0 + 17152) = xmmword_1BCE3D1D0;
  *(v0 + 17168) = xmmword_1BCE4B160;
  *(v0 + 17184) = xmmword_1BCE4B170;
  *(v0 + 17312) = xmmword_1BCE3DC70;
  *(v0 + 17360) = xmmword_1BCE3CAD0;
  *(v0 + 13728) = xmmword_1BCE3CA00;
  *(v0 + 14944) = xmmword_1BCE3CA00;
  *(v0 + 16160) = xmmword_1BCE3CA00;
  *(v0 + 17376) = xmmword_1BCE3CA00;
  *(v0 + 17392) = xmmword_1BCE47CF0;
  *(v0 + 17408) = 1062836634;
  *(v0 + 18096) = xmmword_1BCE3D230;
  *(v0 + 18112) = xmmword_1BCE3D240;
  *(v0 + 18128) = xmmword_1BCE3D250;
  *(v0 + 18144) = xmmword_1BCE3D260;
  *(v0 + 18288) = xmmword_1BCE3DC90;
  *(v0 + 18304) = 0x4396000042C80000;
  *(v0 + 18320) = xmmword_1BCE3C970;
  *(v0 + 18352) = xmmword_1BCE3DEC0;
  *(v0 + 18368) = xmmword_1BCE3C990;
  *(v0 + 18384) = xmmword_1BCE3C9A0;
  *(v0 + 18512) = xmmword_1BCE3D3C0;
  *(v0 + 18528) = xmmword_1BCE3D3D0;
  *(v0 + 18544) = xmmword_1BCE3DCC0;
  *(v0 + 8416) = xmmword_1BCE3CBC0;
  *(v0 + 9632) = xmmword_1BCE3CBC0;
  *(v0 + 10848) = xmmword_1BCE3CBC0;
  *(v0 + 12064) = xmmword_1BCE3CBC0;
  *(v0 + 13280) = xmmword_1BCE3CBC0;
  *(v0 + 14496) = xmmword_1BCE3CBC0;
  *(v0 + 18560) = xmmword_1BCE3CBC0;
  *(v0 + 18576) = xmmword_1BCE3C9F0;
  *(v0 + 18592) = xmmword_1BCE3DCD0;
  *(v0 + 18608) = xmmword_1BCE42C40;
  *(v0 + 18624) = v6;
  *(v0 + 19312) = xmmword_1BCE3D2E0;
  *(v0 + 19344) = xmmword_1BCE3D2F0;
  *(v0 + 19328) = xmmword_1BCE3E580;
  *(v0 + 19360) = xmmword_1BCE3E580;
  __asm { FMOV            V1.2D, #0.25 }

  *(v0 + 20528) = _Q1;
  *(v0 + 20560) = xmmword_1BCE3D300;
  *(v0 + 19504) = xmmword_1BCE3C830;
  *(v0 + 20720) = xmmword_1BCE3C830;
  *(v0 + 19520) = 0x432A000043480000;
  *(v0 + 20736) = 0x432A000043480000;
  *(v0 + 19536) = xmmword_1BCE3C840;
  *(v0 + 20752) = xmmword_1BCE3C840;
  *(v0 + 19552) = xmmword_1BCE3C850;
  *(v0 + 20768) = xmmword_1BCE3C850;
  *(v0 + 19568) = xmmword_1BCE3C860;
  *(v0 + 20784) = xmmword_1BCE3C860;
  *(v0 + 19584) = xmmword_1BCE3C870;
  *(v0 + 20800) = xmmword_1BCE3C870;
  *(v0 + 19600) = xmmword_1BCE3C880;
  *(v0 + 20816) = xmmword_1BCE3C880;
  *(v0 + 19616) = xmmword_1BCE3C890;
  *(v0 + 20832) = xmmword_1BCE3C890;
  *(v0 + 7616) = xmmword_1BCE3C8C0;
  *(v0 + 8736) = xmmword_1BCE3C8C0;
  *(v0 + 8832) = xmmword_1BCE3C8C0;
  *(v0 + 9952) = xmmword_1BCE3C8C0;
  *(v0 + 10048) = xmmword_1BCE3C8C0;
  *(v0 + 11168) = xmmword_1BCE3C8C0;
  *(v0 + 11264) = xmmword_1BCE3C8C0;
  *(v0 + 12384) = xmmword_1BCE3C8C0;
  *(v0 + 12480) = xmmword_1BCE3C8C0;
  *(v0 + 13600) = xmmword_1BCE3C8C0;
  *(v0 + 13696) = xmmword_1BCE3C8C0;
  *(v0 + 14816) = xmmword_1BCE3C8C0;
  *(v0 + 14912) = xmmword_1BCE3C8C0;
  *(v0 + 16032) = xmmword_1BCE3C8C0;
  *(v0 + 16128) = xmmword_1BCE3C8C0;
  *(v0 + 17248) = xmmword_1BCE3C8C0;
  *(v0 + 17344) = xmmword_1BCE3C8C0;
  *(v0 + 18464) = xmmword_1BCE3C8C0;
  *(v0 + 19680) = xmmword_1BCE3C8C0;
  *(v0 + 20896) = xmmword_1BCE3C8C0;
  *(v0 + 19792) = xmmword_1BCE3C8F0;
  *(v0 + 21008) = xmmword_1BCE3C8F0;
  *(v0 + 19824) = xmmword_1BCE47CE0;
  *(v0 + 21040) = xmmword_1BCE47CE0;
  *(v0 + 14992) = xmmword_1BCE4B040;
  *(v0 + 16208) = xmmword_1BCE4B040;
  *(v0 + 17424) = xmmword_1BCE4B040;
  *(v0 + 18640) = xmmword_1BCE4B040;
  *(v0 + 19840) = 0x3F4CCCCD3F800000;
  *(v0 + 19856) = xmmword_1BCE4B040;
  *(v0 + 21056) = 0x3F4CCCCD3F800000;
  *(v0 + 21072) = xmmword_1BCE4B040;
  *(v0 + 21744) = vdupq_n_s64(0x3FCFEB6B80000000uLL);
  *(v0 + 20544) = xmmword_1BCE3C910;
  *(v0 + 20576) = xmmword_1BCE3C910;
  *(v0 + 21760) = xmmword_1BCE3C910;
  *(v0 + 21776) = xmmword_1BCE3D310;
  *(v0 + 21792) = xmmword_1BCE3D320;
  *(v0 + 8464) = 0x4170000000000000;
  *(v0 + 9680) = 0x4170000000000000;
  *(v0 + 10896) = 0x4170000000000000;
  *(v0 + 12112) = 0x4170000000000000;
  *(v0 + 13328) = 0x4170000000000000;
  *(v0 + 14544) = 0x4170000000000000;
  *(v0 + 15760) = 0x4170000000000000;
  *(v0 + 16976) = 0x4170000000000000;
  *(v0 + 18192) = 0x4170000000000000;
  *(v0 + 19408) = 0x4170000000000000;
  *(v0 + 20624) = 0x4170000000000000;
  *(v0 + 21840) = 0x4170000000000000;
  *(v0 + 7568) = result;
  *(v0 + 7584) = result;
  *(v0 + 7600) = result;
  *(v0 + 7728) = result;
  *(v0 + 7744) = result;
  *(v0 + 7760) = result;
  *(v0 + 7776) = result;
  *(v0 + 7792) = result;
  *(v0 + 7808) = result;
  *(v0 + 7824) = result;
  *(v0 + 7840) = result;
  *(v0 + 7856) = result;
  *(v0 + 7872) = result;
  *(v0 + 7888) = result;
  *(v0 + 7904) = result;
  *(v0 + 7920) = result;
  *(v0 + 7936) = result;
  *(v0 + 7952) = result;
  *(v0 + 7968) = result;
  *(v0 + 7984) = result;
  *(v0 + 8000) = result;
  *(v0 + 8016) = result;
  *(v0 + 8032) = result;
  *(v0 + 8048) = result;
  *(v0 + 8064) = result;
  *(v0 + 8080) = result;
  *(v0 + 18000) = result;
  *(v0 + 18016) = result;
  *(v0 + 18032) = result;
  *(v0 + 18048) = result;
  *(v0 + 18064) = result;
  *(v0 + 18080) = result;
  *(v0 + 17904) = result;
  *(v0 + 17920) = result;
  *(v0 + 17936) = result;
  *(v0 + 17952) = result;
  *(v0 + 17968) = result;
  *(v0 + 17984) = result;
  *(v0 + 17808) = result;
  *(v0 + 17824) = result;
  *(v0 + 17840) = result;
  *(v0 + 17856) = result;
  *(v0 + 17872) = result;
  *(v0 + 17888) = result;
  *(v0 + 17712) = result;
  *(v0 + 17728) = result;
  *(v0 + 17744) = result;
  *(v0 + 17760) = result;
  *(v0 + 17776) = result;
  *(v0 + 17792) = result;
  *(v0 + 17616) = result;
  *(v0 + 17632) = result;
  *(v0 + 17648) = result;
  *(v0 + 17664) = result;
  *(v0 + 17680) = result;
  *(v0 + 17696) = result;
  *(v0 + 8096) = result;
  *(v0 + 17536) = result;
  *(v0 + 17552) = result;
  *(v0 + 17568) = result;
  *(v0 + 17584) = result;
  *(v0 + 17600) = result;
  *(v0 + 17448) = 1065353216;
  *(v0 + 17456) = result;
  *(v0 + 17472) = result;
  *(v0 + 17488) = result;
  *(v0 + 17504) = result;
  *(v0 + 17520) = result;
  *(v0 + 8112) = result;
  *(v0 + 8128) = result;
  *(v0 + 8144) = result;
  *(v0 + 8160) = result;
  *(v0 + 17416) = 0x3FEFC7B660000000;
  *(v0 + 17440) = 0;
  *(v0 + 8176) = result;
  *(v0 + 0x2000) = result;
  *(v0 + 8208) = result;
  *(v0 + 17280) = result;
  *(v0 + 17296) = result;
  *(v0 + 17328) = result;
  *(v0 + 8224) = result;
  *(v0 + 8240) = result;
  *(v0 + 17200) = result;
  *(v0 + 17216) = result;
  *(v0 + 17232) = result;
  *(v0 + 17264) = result;
  *(v0 + 8256) = result;
  *(v0 + 8272) = result;
  *(v0 + 8288) = result;
  *(v0 + 8304) = result;
  *(v0 + 8320) = result;
  *(v0 + 17120) = result;
  *(v0 + 8336) = result;
  *(v0 + 17056) = 0xC017FFFFFFFFFFE8;
  *(v0 + 17064) = 1;
  *(v0 + 17065) = *v21;
  *(v0 + 17068) = *&v21[3];
  *(v0 + 17096) = 1061997773;
  *(v0 + 8352) = result;
  *(v0 + 16984) = 0x3FF0000000000000;
  *(v0 + 16992) = result;
  *(v0 + 17008) = result;
  *(v0 + 17024) = result;
  *(v0 + 17040) = 0x3FF0000000000000;
  *(v0 + 8432) = result;
  *(v0 + 8448) = result;
  *(v0 + 8472) = 0x3FF0000000000000;
  *(v0 + 8480) = result;
  *(v0 + 16944) = result;
  *(v0 + 16960) = result;
  *(v0 + 16784) = result;
  *(v0 + 16800) = result;
  *(v0 + 16816) = result;
  *(v0 + 16832) = result;
  *(v0 + 16848) = result;
  *(v0 + 16864) = result;
  *(v0 + 16688) = result;
  *(v0 + 16704) = result;
  *(v0 + 16720) = result;
  *(v0 + 16736) = result;
  *(v0 + 16752) = result;
  *(v0 + 16768) = result;
  *(v0 + 16592) = result;
  *(v0 + 16608) = result;
  *(v0 + 16624) = result;
  *(v0 + 16640) = result;
  *(v0 + 16656) = result;
  *(v0 + 16672) = result;
  *(v0 + 16496) = result;
  *(v0 + 16512) = result;
  *(v0 + 16528) = result;
  *(v0 + 16544) = result;
  *(v0 + 16560) = result;
  *(v0 + 16576) = result;
  *(v0 + 16400) = result;
  *(v0 + 16416) = result;
  *(v0 + 16432) = result;
  *(v0 + 16448) = result;
  *(v0 + 16464) = result;
  *(v0 + 16480) = result;
  *(v0 + 16304) = result;
  *(v0 + 16320) = result;
  *(v0 + 16336) = result;
  *(v0 + 16352) = result;
  *(v0 + 16368) = result;
  *(v0 + 0x4000) = result;
  *(v0 + 8496) = result;
  *(v0 + 16232) = 0;
  *(v0 + 16240) = result;
  *(v0 + 16256) = result;
  *(v0 + 16272) = result;
  *(v0 + 16288) = result;
  *(v0 + 8512) = result;
  *(v0 + 8528) = 0x3FF0000000000000;
  *(v0 + 8544) = 0x4032000000000001;
  *(v0 + 16200) = 0x3FEFC7B640000000;
  *(v0 + 16224) = 0;
  *(v0 + 8552) = 0;
  *(v0 + 8553) = *v14;
  *(v0 + 8556) = *&v14[3];
  *(v0 + 8584) = 1058642330;
  *(v0 + 8640) = result;
  *(v0 + 16048) = result;
  *(v0 + 16064) = result;
  *(v0 + 16112) = result;
  *(v0 + 8656) = result;
  *(v0 + 8672) = result;
  *(v0 + 8688) = result;
  *(v0 + 15984) = result;
  *(v0 + 16000) = result;
  *(v0 + 16016) = result;
  *(v0 + 8704) = result;
  *(v0 + 8720) = result;
  *(v0 + 8752) = result;
  *(v0 + 8768) = result;
  *(v0 + 8784) = result;
  *(v0 + 8800) = result;
  *(v0 + 15792) = result;
  *(v0 + 15849) = *v20;
  *(v0 + 15880) = 1061997773;
  *(v0 + 15808) = result;
  *(v0 + 15824) = 0x3FF0000000000000;
  *(v0 + 15840) = 0;
  *(v0 + 15848) = 1;
  *(v0 + 15852) = *&v20[3];
  *(v0 + 8816) = result;
  *(v0 + 8864) = result;
  *(v0 + 15728) = result;
  *(v0 + 15744) = result;
  *(v0 + 15768) = 0x3FF0000000000000;
  *(v0 + 15776) = result;
  *(v0 + 8904) = 0x3FEFC7B660000000;
  *(v0 + 8928) = 0x3FF0000000000000;
  *(v0 + 8936) = 0;
  *(v0 + 15616) = result;
  *(v0 + 15632) = result;
  *(v0 + 15648) = result;
  *(v0 + 15520) = result;
  *(v0 + 15536) = result;
  *(v0 + 15552) = result;
  *(v0 + 15568) = result;
  *(v0 + 15584) = result;
  *(v0 + 15600) = result;
  *(v0 + 15424) = result;
  *(v0 + 15440) = result;
  *(v0 + 15456) = result;
  *(v0 + 15472) = result;
  *(v0 + 15488) = result;
  *(v0 + 15504) = result;
  *(v0 + 15328) = result;
  *(v0 + 15344) = result;
  *(v0 + 15360) = result;
  *(v0 + 15376) = result;
  *(v0 + 15392) = result;
  *(v0 + 15408) = result;
  *(v0 + 15232) = result;
  *(v0 + 15248) = result;
  *(v0 + 15264) = result;
  *(v0 + 15280) = result;
  *(v0 + 15296) = result;
  *(v0 + 15312) = result;
  *(v0 + 15136) = result;
  *(v0 + 15152) = result;
  *(v0 + 15168) = result;
  *(v0 + 15184) = result;
  *(v0 + 15200) = result;
  *(v0 + 15216) = result;
  *(v0 + 15040) = result;
  *(v0 + 15056) = result;
  *(v0 + 15072) = result;
  *(v0 + 15088) = result;
  *(v0 + 15104) = result;
  *(v0 + 15120) = result;
  *(v0 + 8944) = result;
  *(v0 + 8960) = result;
  *(v0 + 14984) = 0x3FEFC7B660000000;
  *(v0 + 15008) = 0x3FE0000000000000;
  *(v0 + 15016) = 0;
  *(v0 + 15024) = result;
  *(v0 + 8976) = result;
  *(v0 + 8992) = result;
  *(v0 + 9008) = result;
  *(v0 + 9024) = result;
  *(v0 + 9040) = result;
  *(v0 + 14896) = result;
  *(v0 + 9056) = result;
  *(v0 + 9072) = result;
  *(v0 + 14784) = result;
  *(v0 + 14800) = result;
  *(v0 + 14832) = result;
  *(v0 + 14848) = result;
  *(v0 + 9088) = result;
  *(v0 + 9104) = result;
  *(v0 + 9120) = result;
  *(v0 + 9136) = result;
  *(v0 + 9152) = result;
  *(v0 + 14768) = result;
  *(v0 + 9168) = result;
  *(v0 + 9184) = result;
  *(v0 + 14624) = 0x4018000000000010;
  *(v0 + 14632) = 1;
  *(v0 + 14633) = *v19;
  *(v0 + 14636) = *&v19[3];
  *(v0 + 14664) = 1060320052;
  *(v0 + 9200) = result;
  *(v0 + 14552) = 0x3FF0000000000000;
  *(v0 + 14560) = result;
  *(v0 + 14576) = result;
  *(v0 + 14592) = result;
  *(v0 + 14608) = 0x3FF0000000000000;
  *(v0 + 9216) = result;
  *(v0 + 9232) = result;
  *(v0 + 9248) = result;
  *(v0 + 9264) = result;
  *(v0 + 14512) = result;
  *(v0 + 14528) = result;
  *(v0 + 14352) = result;
  *(v0 + 14368) = result;
  *(v0 + 14384) = result;
  *(v0 + 14400) = result;
  *(v0 + 14416) = result;
  *(v0 + 14432) = result;
  *(v0 + 14256) = result;
  *(v0 + 14272) = result;
  *(v0 + 14288) = result;
  *(v0 + 14304) = result;
  *(v0 + 14320) = result;
  *(v0 + 14336) = result;
  *(v0 + 14160) = result;
  *(v0 + 14176) = result;
  *(v0 + 14192) = result;
  *(v0 + 14208) = result;
  *(v0 + 14224) = result;
  *(v0 + 14240) = result;
  *(v0 + 14064) = result;
  *(v0 + 14080) = result;
  *(v0 + 14096) = result;
  *(v0 + 14112) = result;
  *(v0 + 14128) = result;
  *(v0 + 14144) = result;
  *(v0 + 13968) = result;
  *(v0 + 13984) = result;
  *(v0 + 14000) = result;
  *(v0 + 14016) = result;
  *(v0 + 14032) = result;
  *(v0 + 14048) = result;
  *(v0 + 13872) = result;
  *(v0 + 13888) = result;
  *(v0 + 13904) = result;
  *(v0 + 13920) = result;
  *(v0 + 13936) = result;
  *(v0 + 13952) = result;
  *(v0 + 9280) = result;
  *(v0 + 13800) = 0;
  *(v0 + 13808) = result;
  *(v0 + 13824) = result;
  *(v0 + 13840) = result;
  *(v0 + 13856) = result;
  *(v0 + 9296) = result;
  *(v0 + 9312) = result;
  *(v0 + 9328) = result;
  *(v0 + 9344) = result;
  *(v0 + 13768) = 0x3FEFC7B620000000;
  *(v0 + 13792) = 0x3FF0000000000000;
  *(v0 + 9360) = result;
  *(v0 + 9376) = result;
  *(v0 + 13632) = result;
  *(v0 + 13648) = result;
  *(v0 + 13664) = result;
  *(v0 + 13680) = result;
  *(v0 + 9392) = result;
  *(v0 + 9408) = result;
  *(v0 + 13552) = result;
  *(v0 + 13568) = result;
  *(v0 + 13584) = result;
  *(v0 + 13616) = result;
  *(v0 + 9424) = result;
  *(v0 + 9440) = result;
  *(v0 + 9456) = result;
  *(v0 + 9472) = result;
  *(v0 + 9488) = result;
  *(v0 + 9504) = result;
  *(v0 + 9520) = result;
  *(v0 + 9536) = result;
  *(v0 + 13408) = 0x4028000000000010;
  *(v0 + 13416) = 1;
  *(v0 + 13417) = *v18;
  *(v0 + 13420) = *&v18[3];
  *(v0 + 13448) = 1058642330;
  *(v0 + 9552) = result;
  *(v0 + 13336) = 0x3FF0000000000000;
  *(v0 + 13344) = result;
  *(v0 + 13360) = result;
  *(v0 + 13376) = result;
  *(v0 + 13392) = 0x3FF0000000000000;
  *(v0 + 9568) = result;
  *(v0 + 9648) = result;
  *(v0 + 9664) = result;
  *(v0 + 9688) = 0x3FF0000000000000;
  *(v0 + 13296) = result;
  *(v0 + 13312) = result;
  *(v0 + 13136) = result;
  *(v0 + 13152) = result;
  *(v0 + 13168) = result;
  *(v0 + 13184) = result;
  *(v0 + 13200) = result;
  *(v0 + 13216) = result;
  *(v0 + 13040) = result;
  *(v0 + 13056) = result;
  *(v0 + 13072) = result;
  *(v0 + 13088) = result;
  *(v0 + 13104) = result;
  *(v0 + 13120) = result;
  *(v0 + 12944) = result;
  *(v0 + 12960) = result;
  *(v0 + 12976) = result;
  *(v0 + 12992) = result;
  *(v0 + 13008) = result;
  *(v0 + 13024) = result;
  *(v0 + 12848) = result;
  *(v0 + 12864) = result;
  *(v0 + 12880) = result;
  *(v0 + 12896) = result;
  *(v0 + 12912) = result;
  *(v0 + 12928) = result;
  *(v0 + 12752) = result;
  *(v0 + 12768) = result;
  *(v0 + 12784) = result;
  *(v0 + 12800) = result;
  *(v0 + 12816) = result;
  *(v0 + 12832) = result;
  *(v0 + 12656) = result;
  *(v0 + 12672) = result;
  *(v0 + 12688) = result;
  *(v0 + 12704) = result;
  *(v0 + 12720) = result;
  *(v0 + 12736) = result;
  *(v0 + 12576) = 0x3FF0000000000000;
  *(v0 + 12584) = 0;
  *(v0 + 12592) = result;
  *(v0 + 12608) = result;
  *(v0 + 12624) = result;
  *(v0 + 12640) = result;
  *(v0 + 9696) = result;
  *(v0 + 9712) = result;
  *(v0 + 9728) = result;
  *(v0 + 12496) = result;
  *(v0 + 12512) = result;
  *(v0 + 12552) = 0x3FEFC7B660000000;
  *(v0 + 9744) = 0x3FF0000000000000;
  *(v0 + 12416) = result;
  *(v0 + 12432) = result;
  *(v0 + 12448) = result;
  *(v0 + 12464) = result;
  *(v0 + 9760) = 0x403DFFFFFFFFFFFELL;
  *(v0 + 9768) = 0;
  *(v0 + 12368) = result;
  *(v0 + 12400) = result;
  *(v0 + 9769) = *v15;
  *(v0 + 12304) = result;
  *(v0 + 12320) = result;
  *(v0 + 12336) = result;
  *(v0 + 12352) = result;
  *(v0 + 9772) = *&v15[3];
  *(v0 + 9800) = 1061997773;
  *(v0 + 9904) = result;
  *(v0 + 9920) = result;
  *(v0 + 12288) = result;
  *(v0 + 12160) = result;
  *(v0 + 12201) = *v17;
  *(v0 + 12232) = 1058642330;
  *(v0 + 12176) = 0x3FF0000000000000;
  *(v0 + 12192) = 0x4031FFFFFFFFFFF6;
  *(v0 + 12200) = 1;
  *(v0 + 12204) = *&v17[3];
  *(v0 + 9936) = result;
  *(v0 + 12080) = result;
  *(v0 + 12096) = result;
  *(v0 + 12120) = 0x3FF0000000000000;
  *(v0 + 12128) = result;
  *(v0 + 12144) = result;
  *(v0 + 9968) = result;
  *(v0 + 9984) = result;
  *(v0 + 10000) = result;
  *(v0 + 10016) = result;
  *(v0 + 11984) = result;
  *(v0 + 12000) = result;
  *(v0 + 11888) = result;
  *(v0 + 11904) = result;
  *(v0 + 11920) = result;
  *(v0 + 11936) = result;
  *(v0 + 11952) = result;
  *(v0 + 11968) = result;
  *(v0 + 11792) = result;
  *(v0 + 11808) = result;
  *(v0 + 11824) = result;
  *(v0 + 11840) = result;
  *(v0 + 11856) = result;
  *(v0 + 11872) = result;
  *(v0 + 11696) = result;
  *(v0 + 11712) = result;
  *(v0 + 11728) = result;
  *(v0 + 11744) = result;
  *(v0 + 11760) = result;
  *(v0 + 11776) = result;
  *(v0 + 11600) = result;
  *(v0 + 11616) = result;
  *(v0 + 11632) = result;
  *(v0 + 11648) = result;
  *(v0 + 11664) = result;
  *(v0 + 11680) = result;
  *(v0 + 11504) = result;
  *(v0 + 11520) = result;
  *(v0 + 11536) = result;
  *(v0 + 11552) = result;
  *(v0 + 11568) = result;
  *(v0 + 11584) = result;
  *(v0 + 11408) = result;
  *(v0 + 11424) = result;
  *(v0 + 11440) = result;
  *(v0 + 11456) = result;
  *(v0 + 11472) = result;
  *(v0 + 11488) = result;
  *(v0 + 10080) = result;
  *(v0 + 10120) = 0x3FF0000000000000;
  *(v0 + 11360) = 0x3FF0000000000000;
  *(v0 + 11368) = 0;
  *(v0 + 11376) = result;
  *(v0 + 11392) = result;
  *(v0 + 10144) = 0x3FF0000000000000;
  *(v0 + 10152) = 0;
  *(v0 + 10160) = result;
  *(v0 + 11296) = result;
  *(v0 + 11336) = 0x3FEFFC6E20000000;
  *(v0 + 10176) = result;
  *(v0 + 10192) = result;
  *(v0 + 11184) = result;
  *(v0 + 11200) = result;
  *(v0 + 11216) = result;
  *(v0 + 11232) = result;
  *(v0 + 10208) = result;
  *(v0 + 10224) = result;
  *(v0 + 10240) = result;
  *(v0 + 11120) = result;
  *(v0 + 11136) = result;
  *(v0 + 11152) = result;
  *(v0 + 10256) = result;
  *(v0 + 10272) = result;
  *(v0 + 10288) = result;
  *(v0 + 10304) = result;
  *(v0 + 10320) = result;
  *(v0 + 10985) = *v16;
  *(v0 + 10988) = *&v16[3];
  *(v0 + 11016) = 1061997773;
  *(v0 + 10912) = result;
  *(v0 + 10928) = result;
  *(v0 + 10944) = result;
  *(v0 + 10960) = 0x3FF0000000000000;
  *(v0 + 10976) = 0x403DFFFFFFFFFFFELL;
  *(v0 + 10984) = 1;
  *(v0 + 10336) = result;
  *(v0 + 10352) = result;
  *(v0 + 10368) = result;
  *(v0 + 10864) = result;
  *(v0 + 10880) = result;
  *(v0 + 10904) = 0x3FF0000000000000;
  *(v0 + 10384) = result;
  *(v0 + 10400) = result;
  *(v0 + 10736) = result;
  *(v0 + 10752) = result;
  *(v0 + 10768) = result;
  *(v0 + 10784) = result;
  *(v0 + 10640) = result;
  *(v0 + 10656) = result;
  *(v0 + 10672) = result;
  *(v0 + 10688) = result;
  *(v0 + 10704) = result;
  *(v0 + 10720) = result;
  *(v0 + 10544) = result;
  *(v0 + 10560) = result;
  *(v0 + 10576) = result;
  *(v0 + 10592) = result;
  *(v0 + 10608) = result;
  *(v0 + 10624) = result;
  *(v0 + 10448) = result;
  *(v0 + 10464) = result;
  *(v0 + 10480) = result;
  *(v0 + 10496) = result;
  *(v0 + 10512) = result;
  *(v0 + 10528) = result;
  *(v0 + 10416) = result;
  *(v0 + 10432) = result;
  *(v0 + 18160) = result;
  *(v0 + 18176) = result;
  *(v0 + 18208) = result;
  *(v0 + 18224) = result;
  *(v0 + 18240) = result;
  *(v0 + 18336) = result;
  *(v0 + 18400) = result;
  *(v0 + 18416) = result;
  *(v0 + 18432) = result;
  *(v0 + 18448) = result;
  *(v0 + 18480) = result;
  *(v0 + 18496) = result;
  *(v0 + 18672) = result;
  *(v0 + 18688) = result;
  *(v0 + 18704) = result;
  *(v0 + 18720) = result;
  *(v0 + 18736) = result;
  *(v0 + 18752) = result;
  *(v0 + 18768) = result;
  *(v0 + 18784) = result;
  *(v0 + 18800) = result;
  *(v0 + 18816) = result;
  *(v0 + 18832) = result;
  *(v0 + 18848) = result;
  *(v0 + 18864) = result;
  *(v0 + 18880) = result;
  *(v0 + 18896) = result;
  *(v0 + 18912) = result;
  *(v0 + 18928) = result;
  *(v0 + 18944) = result;
  *(v0 + 18960) = result;
  *(v0 + 18976) = result;
  *(v0 + 18992) = result;
  *(v0 + 19008) = result;
  *(v0 + 19024) = result;
  *(v0 + 19040) = result;
  *(v0 + 19056) = result;
  *(v0 + 19072) = result;
  *(v0 + 19088) = result;
  *(v0 + 19104) = result;
  *(v0 + 19120) = result;
  *(v0 + 19136) = result;
  *(v0 + 19152) = result;
  *(v0 + 19168) = result;
  *(v0 + 19184) = result;
  *(v0 + 19200) = result;
  *(v0 + 19216) = result;
  *(v0 + 19232) = result;
  *(v0 + 19248) = result;
  *(v0 + 19264) = result;
  *(v0 + 19280) = result;
  *(v0 + 19296) = result;
  *(v0 + 19376) = result;
  *(v0 + 19392) = result;
  *(v0 + 19424) = result;
  *(v0 + 19440) = result;
  *(v0 + 19456) = result;
  *(v0 + 19632) = result;
  *(v0 + 19648) = result;
  *(v0 + 19664) = result;
  *(v0 + 19696) = result;
  *(v0 + 19712) = result;
  *(v0 + 19728) = result;
  *(v0 + 19744) = result;
  *(v0 + 19760) = result;
  *(v0 + 19776) = result;
  *(v0 + 19808) = result;
  *(v0 + 19888) = result;
  *(v0 + 19904) = result;
  *(v0 + 19920) = result;
  *(v0 + 19936) = result;
  *(v0 + 19952) = result;
  *(v0 + 19968) = result;
  *(v0 + 19984) = result;
  *(v0 + 20000) = result;
  *(v0 + 20016) = result;
  *(v0 + 20032) = result;
  *(v0 + 20048) = result;
  *(v0 + 20064) = result;
  *(v0 + 20080) = result;
  *(v0 + 20096) = result;
  *(v0 + 20112) = result;
  *(v0 + 20128) = result;
  *(v0 + 20144) = result;
  *(v0 + 20160) = result;
  *(v0 + 20176) = result;
  *(v0 + 20192) = result;
  *(v0 + 20208) = result;
  *(v0 + 20224) = result;
  *(v0 + 20240) = result;
  *(v0 + 20256) = result;
  *(v0 + 20272) = result;
  *(v0 + 20288) = result;
  *(v0 + 20304) = result;
  *(v0 + 20320) = result;
  *(v0 + 20336) = result;
  *(v0 + 20352) = result;
  *(v0 + 20368) = result;
  *(v0 + 20384) = result;
  *(v0 + 20400) = result;
  *(v0 + 20416) = result;
  *(v0 + 20432) = result;
  *(v0 + 20448) = result;
  *(v0 + 20464) = result;
  *(v0 + 20480) = result;
  *(v0 + 20496) = result;
  *(v0 + 20512) = result;
  *(v0 + 20592) = result;
  *(v0 + 20608) = result;
  *(v0 + 20640) = result;
  *(v0 + 20656) = result;
  *(v0 + 20672) = result;
  *(v0 + 20848) = result;
  *(v0 + 20864) = result;
  *(v0 + 20880) = result;
  *(v0 + 20912) = result;
  *(v0 + 20928) = result;
  *(v0 + 20944) = result;
  *(v0 + 20960) = result;
  *(v0 + 20976) = result;
  *(v0 + 20992) = result;
  *(v0 + 21024) = result;
  *(v0 + 21104) = result;
  *(v0 + 21120) = result;
  *(v0 + 21136) = result;
  *(v0 + 21152) = result;
  *(v0 + 21168) = result;
  *(v0 + 21184) = result;
  *(v0 + 21200) = result;
  *(v0 + 21216) = result;
  *(v0 + 21232) = result;
  *(v0 + 21248) = result;
  *(v0 + 21264) = result;
  *(v0 + 21280) = result;
  *(v0 + 21296) = result;
  *(v0 + 21312) = result;
  *(v0 + 21328) = result;
  *(v0 + 21344) = result;
  *(v0 + 21360) = result;
  *(v0 + 21376) = result;
  *(v0 + 21392) = result;
  *(v0 + 21408) = result;
  *(v0 + 21424) = result;
  *(v0 + 21440) = result;
  *(v0 + 21456) = result;
  *(v0 + 21472) = result;
  *(v0 + 21488) = result;
  *(v0 + 21504) = result;
  *(v0 + 21520) = result;
  *(v0 + 21536) = result;
  *(v0 + 21552) = result;
  *(v0 + 21568) = result;
  *(v0 + 21584) = result;
  *(v0 + 21600) = result;
  *(v0 + 21616) = result;
  *(v0 + 21632) = result;
  *(v0 + 21648) = result;
  *(v0 + 21664) = result;
  *(v0 + 21680) = result;
  *(v0 + 21696) = result;
  *(v0 + 21712) = result;
  *(v0 + 21728) = result;
  *(v0 + 21808) = result;
  *(v0 + 21824) = result;
  *(v0 + 21856) = result;
  *(v0 + 21872) = result;
  *(v0 + 21888) = result;
  *(v0 + 7688) = 0x3FEFC7B620000000;
  *(v0 + 7712) = 0x3FF0000000000000;
  *(v0 + 7720) = 0;
  *(v0 + 18200) = 0x3FF0000000000000;
  *(v0 + 18256) = 0x3FF0000000000000;
  *(v0 + 18272) = 0xC028000000000015;
  *(v0 + 18280) = 1;
  *(v0 + 18281) = *v22;
  *(v0 + 18284) = *&v22[3];
  *(v0 + 18312) = 1036831952;
  *(v0 + 18632) = 0x3FEFC7B660000000;
  *(v0 + 18656) = 0;
  *(v0 + 18664) = 1065353216;
  *(v0 + 19416) = 0x3FF0000000000000;
  *(v0 + 19472) = 0x3FF0000000000000;
  *(v0 + 19488) = 0xC04E000000000002;
  *(v0 + 19496) = 1;
  *(v0 + 19497) = *v23;
  *(v0 + 19500) = *&v23[3];
  *(v0 + 19528) = 1040242952;
  *(v0 + 19848) = 0x3FEFC7B640000000;
  *(v0 + 19872) = 0;
  *(v0 + 19880) = 1065353216;
  *(v0 + 20632) = 0x3FF0000000000000;
  *(v0 + 20688) = 0x3FF0000000000000;
  *(v0 + 20704) = 0xC056800000000000;
  *(v0 + 20712) = 1;
  *(v0 + 20713) = *v24;
  *(v0 + 20716) = *&v24[3];
  *(v0 + 20744) = 1040242952;
  *(v0 + 21064) = 0x3FEFC7B640000000;
  *(v0 + 21088) = 0;
  *(v0 + 21096) = 1065353216;
  *(v0 + 21848) = 0x3FF0000000000000;
  *(v0 + 21904) = 0x3FF0000000000000;
  return result;
}

double sub_1BCBEFD34()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07858);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BCE3C820;
  *(v0 + 32) = 0xC056800000000000;
  *(v0 + 40) = 0;
  *(v0 + 48) = xmmword_1BCE3C830;
  *(v0 + 64) = 0x432A000043480000;
  *(v0 + 72) = 1040242952;
  *(v0 + 80) = xmmword_1BCE3C840;
  *(v0 + 96) = xmmword_1BCE3C850;
  *(v0 + 112) = xmmword_1BCE3C860;
  *(v0 + 128) = xmmword_1BCE3C870;
  *(v0 + 144) = xmmword_1BCE3C880;
  *(v0 + 160) = xmmword_1BCE3C890;
  __asm { FMOV            V0.2D, #1.0 }

  *(v0 + 176) = _Q0;
  *(v0 + 192) = _Q0;
  *(v0 + 208) = _Q0;
  *(v0 + 224) = xmmword_1BCE3C8C0;
  *(v0 + 240) = _Q0;
  *(v0 + 256) = _Q0;
  *(v0 + 272) = _Q0;
  *(v0 + 288) = _Q0;
  *(v0 + 304) = _Q0;
  *(v0 + 320) = _Q0;
  *(v0 + 336) = xmmword_1BCE3C8F0;
  *(v0 + 352) = _Q0;
  *(v0 + 368) = xmmword_1BCE47CE0;
  *(v0 + 384) = 0x3F4CCCCD3F800000;
  *(v0 + 392) = 0x3FEFC7B640000000;
  *(v0 + 400) = xmmword_1BCE4B040;
  *(v0 + 416) = 0;
  *(v0 + 424) = 1065353216;
  *(v0 + 432) = _Q0;
  *(v0 + 448) = _Q0;
  *(v0 + 464) = _Q0;
  *(v0 + 480) = _Q0;
  *(v0 + 496) = _Q0;
  *(v0 + 512) = _Q0;
  *(v0 + 528) = _Q0;
  *(v0 + 544) = _Q0;
  *(v0 + 560) = _Q0;
  *(v0 + 576) = _Q0;
  *(v0 + 592) = _Q0;
  *(v0 + 608) = _Q0;
  *(v0 + 624) = _Q0;
  *(v0 + 640) = _Q0;
  *(v0 + 656) = _Q0;
  *(v0 + 672) = _Q0;
  *(v0 + 688) = _Q0;
  *(v0 + 704) = _Q0;
  *(v0 + 720) = _Q0;
  *(v0 + 736) = _Q0;
  *(v0 + 752) = _Q0;
  *(v0 + 768) = _Q0;
  *(v0 + 784) = _Q0;
  *(v0 + 800) = _Q0;
  *(v0 + 816) = _Q0;
  *(v0 + 832) = _Q0;
  *(v0 + 848) = _Q0;
  *(v0 + 864) = _Q0;
  *(v0 + 880) = _Q0;
  *(v0 + 896) = _Q0;
  *(v0 + 912) = _Q0;
  *(v0 + 928) = _Q0;
  *(v0 + 944) = _Q0;
  *(v0 + 960) = _Q0;
  *(v0 + 976) = _Q0;
  *(v0 + 992) = _Q0;
  *(v0 + 1008) = _Q0;
  *(v0 + 1024) = _Q0;
  *(v0 + 1040) = _Q0;
  *(v0 + 1056) = _Q0;
  *(v0 + 1072) = vdupq_n_s64(0x3FCF82F740000000uLL);
  *(v0 + 1088) = xmmword_1BCE3C910;
  *(v0 + 1104) = xmmword_1BCE3C920;
  *(v0 + 1120) = xmmword_1BCE3C930;
  *(v0 + 1136) = xmmword_1BCE3D350;
  *(v0 + 1152) = _Q0;
  *(v0 + 1168) = 0x4120000042FA0000;
  *(v0 + 1176) = 0x3FEB89F080000000;
  *(v0 + 1184) = xmmword_1BCE3D360;
  *(v0 + 1200) = _Q0;
  *(v0 + 1216) = xmmword_1BCE3D370;
  *(v0 + 1232) = 0x3FF0000000000000;
  *(v0 + 1248) = 0xC04E000000000000;
  *(v0 + 1256) = 0;
  *(v0 + 1257) = *v10;
  *(v0 + 1260) = *&v10[3];
  *(v0 + 1264) = xmmword_1BCE3C830;
  *(v0 + 1280) = 0x432A000043480000;
  *(v0 + 1288) = 1040242952;
  *(v0 + 1296) = xmmword_1BCE3C840;
  *(v0 + 1312) = xmmword_1BCE3C850;
  *(v0 + 1328) = xmmword_1BCE3C860;
  *(v0 + 1344) = xmmword_1BCE3C870;
  *(v0 + 1360) = xmmword_1BCE3C880;
  *(v0 + 1376) = xmmword_1BCE3C890;
  *(v0 + 1392) = _Q0;
  *(v0 + 1408) = _Q0;
  *(v0 + 1424) = _Q0;
  *(v0 + 1440) = xmmword_1BCE3C8C0;
  *(v0 + 1456) = _Q0;
  *(v0 + 1472) = _Q0;
  *(v0 + 1488) = _Q0;
  *(v0 + 1504) = _Q0;
  *(v0 + 1520) = _Q0;
  *(v0 + 1536) = _Q0;
  *(v0 + 1552) = xmmword_1BCE3C8F0;
  *(v0 + 1568) = _Q0;
  *(v0 + 1584) = xmmword_1BCE47CE0;
  *(v0 + 1600) = 0x3F4CCCCD3F800000;
  *(v0 + 1608) = 0x3FEFC7B640000000;
  *(v0 + 1616) = xmmword_1BCE4B040;
  *(v0 + 1632) = 0;
  *(v0 + 1640) = 1065353216;
  *(v0 + 1648) = _Q0;
  *(v0 + 1664) = _Q0;
  *(v0 + 1680) = _Q0;
  *(v0 + 1696) = _Q0;
  *(v0 + 1712) = _Q0;
  *(v0 + 1728) = _Q0;
  *(v0 + 1744) = _Q0;
  *(v0 + 1760) = _Q0;
  *(v0 + 1776) = _Q0;
  *(v0 + 1792) = _Q0;
  *(v0 + 1808) = _Q0;
  *(v0 + 1824) = _Q0;
  *(v0 + 1840) = _Q0;
  *(v0 + 1856) = _Q0;
  *(v0 + 1872) = _Q0;
  *(v0 + 1888) = _Q0;
  *(v0 + 1904) = _Q0;
  *(v0 + 1920) = _Q0;
  *(v0 + 1936) = _Q0;
  *(v0 + 1952) = _Q0;
  *(v0 + 1968) = _Q0;
  *(v0 + 1984) = _Q0;
  *(v0 + 2000) = _Q0;
  *(v0 + 2016) = _Q0;
  *(v0 + 2032) = _Q0;
  *(v0 + 2048) = _Q0;
  *(v0 + 2064) = _Q0;
  *(v0 + 2080) = _Q0;
  *(v0 + 2096) = _Q0;
  *(v0 + 2112) = _Q0;
  *(v0 + 2128) = _Q0;
  *(v0 + 2144) = _Q0;
  *(v0 + 2160) = _Q0;
  *(v0 + 2288) = vdupq_n_s64(0x3FCF6CD7E0000000uLL);
  *(v0 + 2304) = xmmword_1BCE3C940;
  *(v0 + 2320) = xmmword_1BCE3C950;
  *(v0 + 2336) = xmmword_1BCE3C960;
  *(v0 + 2400) = xmmword_1BCE3D380;
  *(v0 + 2432) = xmmword_1BCE3D390;
  *(v0 + 2512) = xmmword_1BCE3C970;
  *(v0 + 2560) = xmmword_1BCE3C990;
  *(v0 + 2704) = xmmword_1BCE3D3C0;
  *(v0 + 2720) = xmmword_1BCE3D3D0;
  *(v0 + 2736) = xmmword_1BCE3C9E0;
  *(v0 + 2752) = xmmword_1BCE3CBC0;
  *(v0 + 2768) = xmmword_1BCE3C9F0;
  *(v0 + 2784) = xmmword_1BCE3CA00;
  *(v0 + 2800) = xmmword_1BCE42C40;
  *(v0 + 2832) = xmmword_1BCE4B040;
  *(v0 + 2848) = 0;
  *(v0 + 2856) = 1065353216;
  *(v0 + 2864) = _Q0;
  *(v0 + 2880) = _Q0;
  *(v0 + 2896) = _Q0;
  *(v0 + 2912) = _Q0;
  *(v0 + 2928) = _Q0;
  *(v0 + 2944) = _Q0;
  *(v0 + 2960) = _Q0;
  *(v0 + 2976) = _Q0;
  *(v0 + 2992) = _Q0;
  *(v0 + 3008) = _Q0;
  *(v0 + 3024) = _Q0;
  *(v0 + 3040) = _Q0;
  *(v0 + 3056) = _Q0;
  *(v0 + 3072) = _Q0;
  *(v0 + 3088) = _Q0;
  *(v0 + 3104) = _Q0;
  *(v0 + 3120) = _Q0;
  *(v0 + 3136) = _Q0;
  *(v0 + 3152) = _Q0;
  *(v0 + 3168) = _Q0;
  *(v0 + 3184) = _Q0;
  *(v0 + 3200) = _Q0;
  *(v0 + 3216) = _Q0;
  *(v0 + 3232) = _Q0;
  *(v0 + 3248) = _Q0;
  *(v0 + 3264) = _Q0;
  *(v0 + 3280) = _Q0;
  *(v0 + 3296) = _Q0;
  *(v0 + 3312) = _Q0;
  *(v0 + 3328) = _Q0;
  *(v0 + 3344) = _Q0;
  *(v0 + 3360) = _Q0;
  *(v0 + 3376) = _Q0;
  *(v0 + 3392) = _Q0;
  *(v0 + 3408) = _Q0;
  *(v0 + 3424) = _Q0;
  *(v0 + 3440) = _Q0;
  *(v0 + 3456) = _Q0;
  *(v0 + 3472) = _Q0;
  *(v0 + 3488) = _Q0;
  *(v0 + 3504) = vdupq_n_s64(0x3FCF992720000000uLL);
  *(v0 + 3520) = xmmword_1BCE3CA20;
  *(v0 + 3536) = xmmword_1BCE3CA30;
  *(v0 + 3552) = xmmword_1BCE3CA40;
  *(v0 + 3568) = xmmword_1BCE3D3E0;
  *(v0 + 3584) = _Q0;
  *(v0 + 3600) = 0x4120000042B40000;
  *(v0 + 3608) = 0x3FEB439580000000;
  *(v0 + 3616) = xmmword_1BCE3DCF0;
  *(v0 + 3632) = xmmword_1BCE3DD00;
  *(v0 + 3648) = xmmword_1BCE3DD10;
  *(v0 + 3664) = 0x3FF0000000000000;
  *(v0 + 3680) = 0xC018000000000000;
  *(v0 + 3688) = 0;
  *(v0 + 3689) = *v12;
  *(v0 + 3692) = *&v12[3];
  *(v0 + 3696) = xmmword_1BCE3CB30;
  *(v0 + 3712) = 0x447A000044160000;
  *(v0 + 3720) = 1061997773;
  *(v0 + 3728) = xmmword_1BCE3CA60;
  *(v0 + 3744) = _Q0;
  *(v0 + 3760) = xmmword_1BCE3CA70;
  *(v0 + 3776) = xmmword_1BCE3CA80;
  *(v0 + 3792) = xmmword_1BCE3CA90;
  *(v0 + 3808) = xmmword_1BCE3CAA0;
  *(v0 + 3824) = _Q0;
  *(v0 + 3840) = _Q0;
  *(v0 + 3856) = _Q0;
  *(v0 + 3872) = xmmword_1BCE3C8C0;
  *(v0 + 3888) = _Q0;
  *(v0 + 3904) = _Q0;
  *(v0 + 3920) = _Q0;
  *(v0 + 3936) = _Q0;
  *(v0 + 3952) = _Q0;
  *(v0 + 3968) = xmmword_1BCE3C8C0;
  *(v0 + 3984) = xmmword_1BCE3CAD0;
  *(v0 + 4000) = xmmword_1BCE3CA00;
  *(v0 + 4112) = _Q0;
  *(v0 + 4128) = _Q0;
  *(v0 + 4144) = _Q0;
  *(v0 + 4160) = _Q0;
  *(v0 + 4176) = _Q0;
  *(v0 + 4192) = _Q0;
  *(v0 + 4208) = _Q0;
  *(v0 + 4224) = _Q0;
  *(v0 + 4240) = _Q0;
  *(v0 + 4256) = _Q0;
  *(v0 + 4704) = _Q0;
  *(v0 + 4720) = xmmword_1BCE3CB00;
  *(v0 + 4904) = 0;
  *(v0 + 4905) = *v13;
  *(v0 + 4908) = *&v13[3];
  *(v0 + 4864) = xmmword_1BCE3DD30;
  *(v0 + 4880) = 0x3FF0000000000000;
  *(v0 + 4896) = 0;
  *(v0 + 4824) = 0x3FE8000000000000;
  *(v0 + 4832) = xmmword_1BCE3DD20;
  *(v0 + 4848) = xmmword_1BCE3DD00;
  *(v0 + 4736) = xmmword_1BCE3CB10;
  *(v0 + 4800) = _Q0;
  *(v0 + 4816) = 0x41A0000041F00000;
  *(v0 + 4752) = xmmword_1BCE3CB20;
  *(v0 + 4768) = xmmword_1BCE3CB10;
  *(v0 + 4784) = xmmword_1BCE3D410;
  *(v0 + 4608) = _Q0;
  *(v0 + 4624) = _Q0;
  *(v0 + 4640) = _Q0;
  *(v0 + 4656) = _Q0;
  *(v0 + 4672) = _Q0;
  *(v0 + 4688) = _Q0;
  *(v0 + 4512) = _Q0;
  *(v0 + 4528) = _Q0;
  *(v0 + 4544) = _Q0;
  *(v0 + 4560) = _Q0;
  *(v0 + 4576) = _Q0;
  *(v0 + 4592) = _Q0;
  *(v0 + 4416) = _Q0;
  *(v0 + 4432) = _Q0;
  *(v0 + 4448) = _Q0;
  *(v0 + 4464) = _Q0;
  *(v0 + 4480) = _Q0;
  *(v0 + 4496) = _Q0;
  *(v0 + 4272) = _Q0;
  *(v0 + 4288) = _Q0;
  *(v0 + 4352) = _Q0;
  *(v0 + 4368) = _Q0;
  *(v0 + 4384) = _Q0;
  *(v0 + 4400) = _Q0;
  *(v0 + 4304) = _Q0;
  *(v0 + 4320) = _Q0;
  *(v0 + 4336) = _Q0;
  *(v0 + 4944) = xmmword_1BCE3DA10;
  *(v0 + 4960) = xmmword_1BCE3DA20;
  *(v0 + 4976) = xmmword_1BCE3CB60;
  *(v0 + 4992) = xmmword_1BCE3CB70;
  *(v0 + 5008) = xmmword_1BCE3DA30;
  *(v0 + 5024) = xmmword_1BCE3DA40;
  *(v0 + 5168) = xmmword_1BCE3DA80;
  *(v0 + 5184) = xmmword_1BCE3CBE0;
  *(v0 + 5936) = xmmword_1BCE3CC10;
  *(v0 + 5968) = xmmword_1BCE3CC30;
  *(v0 + 5952) = xmmword_1BCE3CC20;
  *(v0 + 5984) = xmmword_1BCE3CC20;
  *(v0 + 4064) = 0;
  *(v0 + 4072) = 1065353216;
  *(v0 + 4080) = _Q0;
  *(v0 + 4096) = _Q0;
  *(v0 + 4016) = xmmword_1BCE47CF0;
  *(v0 + 4048) = xmmword_1BCE4B040;
  *(v0 + 6000) = xmmword_1BCE3D410;
  *(v0 + 6032) = 0x4170000041A00000;
  *(v0 + 4032) = 1062836634;
  *(v0 + 4040) = 0x3FEFC7B640000000;
  *(v0 + 6048) = xmmword_1BCE3DD20;
  *(v0 + 6080) = xmmword_1BCE3D460;
  *(v0 + 6128) = xmmword_1BCE3CC40;
  *(v0 + 6160) = xmmword_1BCE3DA90;
  *(v0 + 6176) = xmmword_1BCE3DAA0;
  *(v0 + 6192) = xmmword_1BCE4B050;
  *(v0 + 6208) = xmmword_1BCE4B060;
  *(v0 + 6224) = xmmword_1BCE3CC90;
  *(v0 + 6240) = xmmword_1BCE3CCA0;
  *(v0 + 6384) = xmmword_1BCE3DAF0;
  *(v0 + 6400) = xmmword_1BCE3DB00;
  *(v0 + 6416) = xmmword_1BCE3CCD0;
  *(v0 + 6432) = xmmword_1BCE3CCE0;
  *(v0 + 7152) = xmmword_1BCE3CD10;
  *(v0 + 7184) = xmmword_1BCE3CD30;
  *(v0 + 7168) = xmmword_1BCE3CD20;
  *(v0 + 7200) = xmmword_1BCE3CD20;
  *(v0 + 7264) = xmmword_1BCE3DD40;
  *(v0 + 7280) = xmmword_1BCE3D480;
  *(v0 + 7296) = xmmword_1BCE3D490;
  *(v0 + 7344) = xmmword_1BCE3CD40;
  *(v0 + 7408) = xmmword_1BCE4B070;
  *(v0 + 7424) = xmmword_1BCE3CE60;
  *(v0 + 7552) = _Q0;
  *(v0 + 7632) = xmmword_1BCE3CD90;
  *(v0 + 7648) = xmmword_1BCE3CDA0;
  *(v0 + 8368) = xmmword_1BCE3CDD0;
  *(v0 + 8400) = xmmword_1BCE3CDE0;
  *(v0 + 8480) = xmmword_1BCE3DD50;
  *(v0 + 8512) = xmmword_1BCE3D4C0;
  *(v0 + 8560) = xmmword_1BCE3CDF0;
  *(v0 + 8624) = xmmword_1BCE4B090;
  *(v0 + 9696) = xmmword_1BCE3D4D0;
  *(v0 + 9728) = xmmword_1BCE3D4F0;
  *(v0 + 10128) = xmmword_1BCE4B0C0;
  *(v0 + 9584) = xmmword_1BCE3CE20;
  *(v0 + 10800) = xmmword_1BCE3CE20;
  *(v0 + 10944) = xmmword_1BCE3D500;
  *(v0 + 9776) = xmmword_1BCE3CE40;
  *(v0 + 10992) = xmmword_1BCE3CE40;
  *(v0 + 9792) = 1150681088;
  *(v0 + 11008) = 1150681088;
  *(v0 + 9840) = xmmword_1BCE4B0A0;
  *(v0 + 11056) = xmmword_1BCE4B0A0;
  *(v0 + 9856) = xmmword_1BCE4B0B0;
  *(v0 + 11072) = xmmword_1BCE4B0B0;
  *(v0 + 9872) = xmmword_1BCE3CE70;
  *(v0 + 11088) = xmmword_1BCE3CE70;
  *(v0 + 9888) = xmmword_1BCE3CE80;
  *(v0 + 11104) = xmmword_1BCE3CE80;
  *(v0 + 11344) = xmmword_1BCE4B0D0;
  *(v0 + 10816) = xmmword_1BCE3CE90;
  *(v0 + 12032) = xmmword_1BCE3CE90;
  *(v0 + 9616) = xmmword_1BCE3CE30;
  *(v0 + 12048) = xmmword_1BCE3CE30;
  *(v0 + 12160) = xmmword_1BCE3D510;
  *(v0 + 12208) = xmmword_1BCE3CEC0;
  *(v0 + 8576) = 0x41A0000044960000;
  *(v0 + 12224) = 0x41A0000044960000;
  *(v0 + 7376) = xmmword_1BCE3DB10;
  *(v0 + 8592) = xmmword_1BCE3DB10;
  *(v0 + 9808) = xmmword_1BCE3DB10;
  *(v0 + 11024) = xmmword_1BCE3DB10;
  *(v0 + 12240) = xmmword_1BCE3DB10;
  *(v0 + 7392) = xmmword_1BCE3CD50;
  *(v0 + 8608) = xmmword_1BCE3CD50;
  *(v0 + 9824) = xmmword_1BCE3CD50;
  *(v0 + 11040) = xmmword_1BCE3CD50;
  *(v0 + 12256) = xmmword_1BCE3CD50;
  *(v0 + 12272) = xmmword_1BCE4B0E0;
  *(v0 + 10832) = xmmword_1BCE3CEA0;
  *(v0 + 13264) = xmmword_1BCE3CEA0;
  __asm { FMOV            V1.2D, #0.5 }

  *(v0 + 10912) = _Q1;
  *(v0 + 12128) = _Q1;
  *(v0 + 13344) = _Q1;
  *(v0 + 13376) = xmmword_1BCE3D520;
  *(v0 + 13424) = xmmword_1BCE4B0F0;
  *(v0 + 7360) = 1147207680;
  *(v0 + 13440) = 1147207680;
  *(v0 + 13456) = xmmword_1BCE3DB50;
  *(v0 + 13472) = xmmword_1BCE3CF10;
  *(v0 + 13488) = xmmword_1BCE4B100;
  *(v0 + 13504) = xmmword_1BCE4B110;
  *(v0 + 7440) = xmmword_1BCE3CD70;
  *(v0 + 13520) = xmmword_1BCE3CD70;
  *(v0 + 7456) = xmmword_1BCE3CD80;
  *(v0 + 13536) = xmmword_1BCE3CD80;
  *(v0 + 13712) = xmmword_1BCE3CF60;
  *(v0 + 7696) = xmmword_1BCE4B080;
  *(v0 + 8912) = xmmword_1BCE4B080;
  *(v0 + 12560) = xmmword_1BCE4B080;
  *(v0 + 13776) = xmmword_1BCE4B080;
  *(v0 + 12016) = xmmword_1BCE3CEB0;
  *(v0 + 13232) = xmmword_1BCE3CEB0;
  *(v0 + 14448) = xmmword_1BCE3CEB0;
  *(v0 + 8384) = xmmword_1BCE3CBB0;
  *(v0 + 9600) = xmmword_1BCE3CBB0;
  *(v0 + 13248) = xmmword_1BCE3CBB0;
  *(v0 + 14464) = xmmword_1BCE3CBB0;
  *(v0 + 14480) = xmmword_1BCE3CF90;
  *(v0 + 14560) = xmmword_1BCE3DD60;
  *(v0 + 8496) = xmmword_1BCE3D4B0;
  *(v0 + 14576) = xmmword_1BCE3D4B0;
  *(v0 + 14592) = xmmword_1BCE3D540;
  *(v0 + 14640) = xmmword_1BCE4B120;
  *(v0 + 6144) = 0x44480000443B8000;
  *(v0 + 14656) = 0x44480000443B8000;
  *(v0 + 14672) = xmmword_1BCE3DF50;
  v7 = vdup_n_s32(0x3F4CCCCDu);
  *(v0 + 2816) = v7;
  *(v0 + 2824) = 0x3FEFC7B660000000;
  *(v0 + 2176) = _Q0;
  *(v0 + 2192) = _Q0;
  *(v0 + 2208) = _Q0;
  *(v0 + 2224) = _Q0;
  *(v0 + 2672) = _Q0;
  *(v0 + 2688) = _Q0;
  *(v0 + 2240) = _Q0;
  *(v0 + 2624) = _Q0;
  *(v0 + 2640) = _Q0;
  *(v0 + 2656) = xmmword_1BCE3C8C0;
  *(v0 + 2544) = xmmword_1BCE3DEC0;
  *(v0 + 2576) = xmmword_1BCE3C9A0;
  *(v0 + 2592) = _Q0;
  *(v0 + 2608) = _Q0;
  *(v0 + 2448) = 0x3FF0000000000000;
  *(v0 + 2464) = 0xC028000000000000;
  *(v0 + 2472) = 0;
  *(v0 + 2528) = _Q0;
  *(v0 + 2473) = *v11;
  *(v0 + 2476) = *&v11[3];
  *(v0 + 2504) = 1036831949;
  *(v0 + 2480) = xmmword_1BCE3DC90;
  *(v0 + 2496) = 0x4396000042C80000;
  *(v0 + 2256) = _Q0;
  *(v0 + 2272) = _Q0;
  *(v0 + 2352) = xmmword_1BCE3D350;
  *(v0 + 2368) = _Q0;
  *(v0 + 2384) = 0x4120000042FA0000;
  *(v0 + 2416) = _Q0;
  *(v0 + 2392) = 0x3FEBA9FBE0000000;
  *(v0 + 4912) = xmmword_1BCE3CB30;
  *(v0 + 4928) = 0x44C8000044160000;
  *(v0 + 4936) = 1061997773;
  *(v0 + 5040) = _Q0;
  *(v0 + 5056) = _Q0;
  *(v0 + 5072) = _Q0;
  *(v0 + 5088) = xmmword_1BCE3C8C0;
  *(v0 + 5104) = _Q0;
  *(v0 + 5120) = _Q0;
  *(v0 + 5136) = _Q0;
  *(v0 + 5152) = _Q0;
  *(v0 + 5200) = xmmword_1BCE3CBF0;
  *(v0 + 5216) = xmmword_1BCE3CA00;
  *(v0 + 5232) = xmmword_1BCE3FD30;
  *(v0 + 5248) = 1063675494;
  *(v0 + 5256) = 0x3FEFC7B640000000;
  *(v0 + 5264) = xmmword_1BCE4B040;
  *(v0 + 5280) = 0;
  *(v0 + 5288) = 0;
  *(v0 + 5296) = _Q0;
  *(v0 + 5312) = _Q0;
  *(v0 + 5328) = _Q0;
  *(v0 + 5344) = _Q0;
  *(v0 + 5360) = _Q0;
  *(v0 + 5376) = _Q0;
  *(v0 + 5392) = _Q0;
  *(v0 + 5408) = _Q0;
  *(v0 + 5424) = _Q0;
  *(v0 + 5440) = _Q0;
  *(v0 + 5456) = _Q0;
  *(v0 + 5472) = _Q0;
  *(v0 + 5488) = _Q0;
  *(v0 + 5504) = _Q0;
  *(v0 + 5520) = _Q0;
  *(v0 + 5536) = _Q0;
  *(v0 + 5552) = _Q0;
  *(v0 + 5568) = _Q0;
  *(v0 + 5584) = _Q0;
  *(v0 + 5600) = _Q0;
  *(v0 + 5616) = _Q0;
  *(v0 + 5632) = _Q0;
  *(v0 + 5648) = _Q0;
  *(v0 + 5664) = _Q0;
  *(v0 + 5680) = _Q0;
  *(v0 + 5696) = _Q0;
  *(v0 + 5712) = _Q0;
  *(v0 + 5728) = _Q0;
  *(v0 + 5744) = _Q0;
  *(v0 + 5760) = _Q0;
  *(v0 + 5776) = _Q0;
  *(v0 + 5792) = _Q0;
  *(v0 + 5808) = _Q0;
  *(v0 + 5824) = _Q0;
  *(v0 + 5840) = _Q0;
  *(v0 + 5856) = _Q0;
  *(v0 + 5872) = _Q0;
  *(v0 + 5888) = _Q0;
  *(v0 + 5904) = _Q0;
  *(v0 + 5920) = _Q0;
  *(v0 + 6016) = _Q0;
  *(v0 + 6040) = 0x3FE7333340000000;
  *(v0 + 6064) = _Q0;
  *(v0 + 6096) = 0x3FF0000000000000;
  *(v0 + 6112) = 0x4017FFFFFFFFFFFALL;
  *(v0 + 6120) = 0;
  *(v0 + 6121) = *v14;
  *(v0 + 6124) = *&v14[3];
  *(v0 + 6152) = 1060320052;
  *(v0 + 6256) = _Q0;
  *(v0 + 6272) = _Q0;
  *(v0 + 6288) = _Q0;
  *(v0 + 6304) = xmmword_1BCE3C8C0;
  *(v0 + 6320) = _Q0;
  *(v0 + 6336) = _Q0;
  *(v0 + 6352) = _Q0;
  *(v0 + 6368) = _Q0;
  *(v0 + 6448) = xmmword_1BCE3FD30;
  *(v0 + 6464) = 1063675494;
  *(v0 + 6472) = 0x3FEFC7B660000000;
  *(v0 + 6480) = xmmword_1BCE4B040;
  *(v0 + 6496) = 0x3FE0000000000000;
  *(v0 + 6504) = 0;
  *(v0 + 6512) = _Q0;
  *(v0 + 6528) = _Q0;
  *(v0 + 6544) = _Q0;
  *(v0 + 6560) = _Q0;
  *(v0 + 6576) = _Q0;
  *(v0 + 6592) = _Q0;
  *(v0 + 6608) = _Q0;
  *(v0 + 6624) = _Q0;
  *(v0 + 6640) = _Q0;
  *(v0 + 6656) = _Q0;
  *(v0 + 6672) = _Q0;
  *(v0 + 6688) = _Q0;
  *(v0 + 6704) = _Q0;
  *(v0 + 6720) = _Q0;
  *(v0 + 6736) = _Q0;
  *(v0 + 6752) = _Q0;
  *(v0 + 6768) = _Q0;
  *(v0 + 6784) = _Q0;
  *(v0 + 6800) = _Q0;
  *(v0 + 6816) = _Q0;
  *(v0 + 6832) = _Q0;
  *(v0 + 6848) = _Q0;
  *(v0 + 6864) = _Q0;
  *(v0 + 6880) = _Q0;
  *(v0 + 6896) = _Q0;
  *(v0 + 6912) = _Q0;
  *(v0 + 6928) = _Q0;
  *(v0 + 6944) = _Q0;
  *(v0 + 6960) = _Q0;
  *(v0 + 6976) = _Q0;
  *(v0 + 6992) = _Q0;
  *(v0 + 7008) = _Q0;
  *(v0 + 7024) = _Q0;
  *(v0 + 7040) = _Q0;
  *(v0 + 7056) = _Q0;
  *(v0 + 7072) = _Q0;
  *(v0 + 7088) = _Q0;
  *(v0 + 7104) = _Q0;
  *(v0 + 7120) = _Q0;
  *(v0 + 7136) = _Q0;
  *(v0 + 7216) = _Q0;
  *(v0 + 7232) = _Q0;
  *(v0 + 7248) = 0x4170000000000000;
  *(v0 + 7256) = 0x3FE369D020000000;
  *(v0 + 7312) = 0x3FF0000000000000;
  *(v0 + 7328) = 0x4028000000000000;
  *(v0 + 7336) = 0;
  *(v0 + 7337) = *v15;
  *(v0 + 7340) = *&v15[3];
  *(v0 + 7368) = 1058642330;
  *(v0 + 7472) = _Q0;
  *(v0 + 7488) = _Q0;
  *(v0 + 7504) = _Q0;
  *(v0 + 7520) = xmmword_1BCE3C8C0;
  *(v0 + 7536) = _Q0;
  *(v0 + 14688) = xmmword_1BCE3DF60;
  *(v0 + 14704) = xmmword_1BCE4B130;
  *(v0 + 14720) = xmmword_1BCE4B140;
  *(v0 + 14736) = xmmword_1BCE3DBA0;
  *(v0 + 14752) = xmmword_1BCE3DBB0;
  *(v0 + 14864) = xmmword_1BCE3D010;
  *(v0 + 14880) = xmmword_1BCE3DBE0;
  *(v0 + 14928) = xmmword_1BCE3D040;
  *(v0 + 15664) = xmmword_1BCE3D070;
  *(v0 + 15680) = xmmword_1BCE3D080;
  *(v0 + 15696) = xmmword_1BCE3D090;
  *(v0 + 15712) = xmmword_1BCE3D0A0;
  *(v0 + 15776) = xmmword_1BCE3DD70;
  *(v0 + 15808) = xmmword_1BCE3D560;
  *(v0 + 15856) = xmmword_1BCE3D0B0;
  *(v0 + 15872) = 0x44C8000044160000;
  *(v0 + 15888) = xmmword_1BCE3DFA0;
  *(v0 + 15904) = xmmword_1BCE3DFB0;
  *(v0 + 15920) = xmmword_1BCE3DFC0;
  *(v0 + 15936) = xmmword_1BCE3DFD0;
  *(v0 + 15952) = xmmword_1BCE3DC10;
  *(v0 + 15968) = xmmword_1BCE3DC20;
  *(v0 + 10032) = xmmword_1BCE3CCB0;
  *(v0 + 10064) = xmmword_1BCE3CCB0;
  *(v0 + 11248) = xmmword_1BCE3CCB0;
  *(v0 + 11280) = xmmword_1BCE3CCB0;
  *(v0 + 16080) = xmmword_1BCE3CCB0;
  *(v0 + 16096) = xmmword_1BCE3DC50;
  *(v0 + 16144) = xmmword_1BCE3CBF0;
  *(v0 + 7664) = xmmword_1BCE3FD30;
  *(v0 + 8880) = xmmword_1BCE3FD30;
  *(v0 + 10096) = xmmword_1BCE3FD30;
  *(v0 + 11312) = xmmword_1BCE3FD30;
  *(v0 + 12528) = xmmword_1BCE3FD30;
  *(v0 + 13744) = xmmword_1BCE3FD30;
  *(v0 + 14960) = xmmword_1BCE3FD30;
  *(v0 + 16176) = xmmword_1BCE3FD30;
  *(v0 + 7680) = 1063675494;
  *(v0 + 8896) = 1063675494;
  *(v0 + 10112) = 1063675494;
  *(v0 + 11328) = 1063675494;
  *(v0 + 12544) = 1063675494;
  *(v0 + 13760) = 1063675494;
  *(v0 + 14976) = 1063675494;
  *(v0 + 16192) = 1063675494;
  *(v0 + 16880) = xmmword_1BCE3D160;
  *(v0 + 16896) = xmmword_1BCE3D170;
  *(v0 + 16912) = xmmword_1BCE3D180;
  *(v0 + 16928) = xmmword_1BCE3D190;
  *(v0 + 16944) = xmmword_1BCE3D570;
  *(v0 + 16960) = xmmword_1BCE3D580;
  *(v0 + 8464) = 0x4170000000000000;
  *(v0 + 9680) = 0x4170000000000000;
  *(v0 + 10896) = 0x4170000000000000;
  *(v0 + 12112) = 0x4170000000000000;
  *(v0 + 13328) = 0x4170000000000000;
  *(v0 + 14544) = 0x4170000000000000;
  *(v0 + 15760) = 0x4170000000000000;
  *(v0 + 16976) = 0x4170000000000000;
  *(v0 + 16992) = xmmword_1BCE3DD80;
  *(v0 + 17008) = xmmword_1BCE3DD90;
  *(v0 + 17024) = xmmword_1BCE3DDA0;
  *(v0 + 17072) = xmmword_1BCE3CB30;
  *(v0 + 17088) = 0x447A000044160000;
  *(v0 + 17104) = xmmword_1BCE4B150;
  *(v0 + 17136) = xmmword_1BCE3D1C0;
  *(v0 + 17152) = xmmword_1BCE3D1D0;
  *(v0 + 17168) = xmmword_1BCE4B160;
  *(v0 + 17184) = xmmword_1BCE4B170;
  *(v0 + 17312) = xmmword_1BCE3DC70;
  *(v0 + 17360) = xmmword_1BCE3CAD0;
  *(v0 + 17392) = xmmword_1BCE47CF0;
  *(v0 + 17408) = 1062836634;
  *(v0 + 18096) = xmmword_1BCE3D230;
  *(v0 + 18112) = xmmword_1BCE3D240;
  *(v0 + 18128) = xmmword_1BCE3D250;
  *(v0 + 18144) = xmmword_1BCE3D260;
  *(v0 + 18160) = xmmword_1BCE3D5C0;
  *(v0 + 18176) = xmmword_1BCE3D5D0;
  __asm { FMOV            V1.2S, #20.0 }

  *(v0 + 18192) = _Q1;
  *(v0 + 18208) = xmmword_1BCE3DDB0;
  *(v0 + 9712) = xmmword_1BCE3D4E0;
  *(v0 + 10928) = xmmword_1BCE3D4E0;
  *(v0 + 12144) = xmmword_1BCE3D4E0;
  *(v0 + 13360) = xmmword_1BCE3D4E0;
  *(v0 + 15792) = xmmword_1BCE3D4E0;
  *(v0 + 18224) = xmmword_1BCE3D4E0;
  *(v0 + 18240) = xmmword_1BCE3DDC0;
  *(v0 + 18288) = xmmword_1BCE3DC90;
  *(v0 + 18304) = 0x4396000042C80000;
  *(v0 + 18320) = xmmword_1BCE3D270;
  *(v0 + 18352) = xmmword_1BCE3DEC0;
  *(v0 + 18368) = xmmword_1BCE4B180;
  *(v0 + 18384) = xmmword_1BCE3C9A0;
  *(v0 + 18512) = xmmword_1BCE3D2B0;
  *(v0 + 18528) = xmmword_1BCE3D2C0;
  *(v0 + 18544) = xmmword_1BCE3DDD0;
  *(v0 + 8416) = xmmword_1BCE3CBC0;
  *(v0 + 9632) = xmmword_1BCE3CBC0;
  *(v0 + 10848) = xmmword_1BCE3CBC0;
  *(v0 + 12064) = xmmword_1BCE3CBC0;
  *(v0 + 13280) = xmmword_1BCE3CBC0;
  *(v0 + 14496) = xmmword_1BCE3CBC0;
  *(v0 + 18560) = xmmword_1BCE3CBC0;
  *(v0 + 18576) = xmmword_1BCE3C9F0;
  *(v0 + 13728) = xmmword_1BCE3CA00;
  *(v0 + 14944) = xmmword_1BCE3CA00;
  *(v0 + 16160) = xmmword_1BCE3CA00;
  *(v0 + 17376) = xmmword_1BCE3CA00;
  *(v0 + 18592) = xmmword_1BCE3CA00;
  *(v0 + 18608) = xmmword_1BCE42C40;
  *(v0 + 18624) = v7;
  *(v0 + 19312) = xmmword_1BCE3D2E0;
  *(v0 + 19344) = xmmword_1BCE3D2F0;
  *(v0 + 19376) = xmmword_1BCE3D600;
  *(v0 + 19408) = 0x4120000042B40000;
  *(v0 + 19424) = xmmword_1BCE3DCF0;
  *(v0 + 19440) = xmmword_1BCE3DD00;
  *(v0 + 19456) = xmmword_1BCE3DDE0;
  __asm { FMOV            V1.2D, #0.25 }

  *(v0 + 20528) = _Q1;
  *(v0 + 20560) = xmmword_1BCE3D300;
  *(v0 + 20640) = xmmword_1BCE3D630;
  *(v0 + 20672) = xmmword_1BCE3D640;
  *(v0 + 19504) = xmmword_1BCE3C830;
  *(v0 + 20720) = xmmword_1BCE3C830;
  *(v0 + 19520) = 0x432A000043480000;
  *(v0 + 20736) = 0x432A000043480000;
  *(v0 + 19536) = xmmword_1BCE3C840;
  *(v0 + 20752) = xmmword_1BCE3C840;
  *(v0 + 19552) = xmmword_1BCE3C850;
  *(v0 + 20768) = xmmword_1BCE3C850;
  *(v0 + 19568) = xmmword_1BCE3C860;
  *(v0 + 20784) = xmmword_1BCE3C860;
  *(v0 + 19584) = xmmword_1BCE3C870;
  *(v0 + 20800) = xmmword_1BCE3C870;
  *(v0 + 19600) = xmmword_1BCE3C880;
  *(v0 + 20816) = xmmword_1BCE3C880;
  *(v0 + 19616) = xmmword_1BCE3C890;
  *(v0 + 20832) = xmmword_1BCE3C890;
  *(v0 + 7616) = xmmword_1BCE3C8C0;
  *(v0 + 8736) = xmmword_1BCE3C8C0;
  *(v0 + 8832) = xmmword_1BCE3C8C0;
  *(v0 + 9952) = xmmword_1BCE3C8C0;
  *(v0 + 10048) = xmmword_1BCE3C8C0;
  *(v0 + 11168) = xmmword_1BCE3C8C0;
  *(v0 + 11264) = xmmword_1BCE3C8C0;
  *(v0 + 12384) = xmmword_1BCE3C8C0;
  *(v0 + 12480) = xmmword_1BCE3C8C0;
  *(v0 + 13600) = xmmword_1BCE3C8C0;
  *(v0 + 13696) = xmmword_1BCE3C8C0;
  *(v0 + 14816) = xmmword_1BCE3C8C0;
  *(v0 + 14912) = xmmword_1BCE3C8C0;
  *(v0 + 16032) = xmmword_1BCE3C8C0;
  *(v0 + 16128) = xmmword_1BCE3C8C0;
  *(v0 + 17248) = xmmword_1BCE3C8C0;
  *(v0 + 17344) = xmmword_1BCE3C8C0;
  *(v0 + 18464) = xmmword_1BCE3C8C0;
  *(v0 + 19680) = xmmword_1BCE3C8C0;
  *(v0 + 20896) = xmmword_1BCE3C8C0;
  *(v0 + 8848) = xmmword_1BCE3C8F0;
  *(v0 + 19792) = xmmword_1BCE3C8F0;
  *(v0 + 21008) = xmmword_1BCE3C8F0;
  *(v0 + 19824) = xmmword_1BCE47CE0;
  *(v0 + 21040) = xmmword_1BCE47CE0;
  *(v0 + 19840) = 0x3F4CCCCD3F800000;
  *(v0 + 21056) = 0x3F4CCCCD3F800000;
  *(v0 + 14992) = xmmword_1BCE4B040;
  *(v0 + 16208) = xmmword_1BCE4B040;
  *(v0 + 17424) = xmmword_1BCE4B040;
  *(v0 + 18640) = xmmword_1BCE4B040;
  *(v0 + 19856) = xmmword_1BCE4B040;
  *(v0 + 21072) = xmmword_1BCE4B040;
  *(v0 + 21744) = vdupq_n_s64(0x3FCFEB6B80000000uLL);
  *(v0 + 18000) = _Q0;
  *(v0 + 18016) = _Q0;
  *(v0 + 18032) = _Q0;
  *(v0 + 18048) = _Q0;
  *(v0 + 18064) = _Q0;
  *(v0 + 18080) = _Q0;
  *(v0 + 17904) = _Q0;
  *(v0 + 17920) = _Q0;
  *(v0 + 17936) = _Q0;
  *(v0 + 17952) = _Q0;
  *(v0 + 17968) = _Q0;
  *(v0 + 17984) = _Q0;
  *(v0 + 17808) = _Q0;
  *(v0 + 17824) = _Q0;
  *(v0 + 17840) = _Q0;
  *(v0 + 17856) = _Q0;
  *(v0 + 17872) = _Q0;
  *(v0 + 17888) = _Q0;
  *(v0 + 17712) = _Q0;
  *(v0 + 17728) = _Q0;
  *(v0 + 17744) = _Q0;
  *(v0 + 17760) = _Q0;
  *(v0 + 17776) = _Q0;
  *(v0 + 17792) = _Q0;
  *(v0 + 17616) = _Q0;
  *(v0 + 17632) = _Q0;
  *(v0 + 17648) = _Q0;
  *(v0 + 17664) = _Q0;
  *(v0 + 17680) = _Q0;
  *(v0 + 17696) = _Q0;
  *(v0 + 17440) = 0;
  *(v0 + 17536) = _Q0;
  *(v0 + 17552) = _Q0;
  *(v0 + 17568) = _Q0;
  *(v0 + 17584) = _Q0;
  *(v0 + 17600) = _Q0;
  *(v0 + 17448) = 1065353216;
  *(v0 + 17456) = _Q0;
  *(v0 + 17472) = _Q0;
  *(v0 + 17488) = _Q0;
  *(v0 + 17504) = _Q0;
  *(v0 + 17520) = _Q0;
  *(v0 + 19328) = xmmword_1BCE3C910;
  *(v0 + 19360) = xmmword_1BCE3C910;
  *(v0 + 20544) = xmmword_1BCE3C910;
  *(v0 + 20576) = xmmword_1BCE3C910;
  *(v0 + 21760) = xmmword_1BCE3C910;
  *(v0 + 21776) = xmmword_1BCE3D310;
  *(v0 + 21792) = xmmword_1BCE3D320;
  *(v0 + 17416) = 0x3FEFC7B660000000;
  *(v0 + 20592) = xmmword_1BCE3D350;
  *(v0 + 21808) = xmmword_1BCE3D350;
  *(v0 + 17264) = _Q0;
  *(v0 + 17280) = _Q0;
  *(v0 + 17296) = _Q0;
  *(v0 + 17328) = _Q0;
  *(v0 + 20624) = 0x4120000042FA0000;
  *(v0 + 21840) = 0x4120000042FA0000;
  *(v0 + 21856) = xmmword_1BCE3D360;
  *(v0 + 17200) = _Q0;
  *(v0 + 17216) = _Q0;
  *(v0 + 17232) = _Q0;
  *(v0 + 7568) = _Q0;
  *(v0 + 7584) = _Q0;
  *(v0 + 7600) = _Q0;
  *(v0 + 17120) = _Q0;
  *(v0 + 17065) = *v23;
  *(v0 + 17096) = 1061997773;
  *(v0 + 17040) = 0x3FF0000000000000;
  *(v0 + 17056) = 0xC018000000000000;
  *(v0 + 17064) = 1;
  *(v0 + 17068) = *&v23[3];
  *(v0 + 7728) = _Q0;
  *(v0 + 7744) = _Q0;
  *(v0 + 7760) = _Q0;
  *(v0 + 7776) = _Q0;
  *(v0 + 7792) = _Q0;
  *(v0 + 16984) = 0x3FE8000000000000;
  *(v0 + 7808) = _Q0;
  *(v0 + 7824) = _Q0;
  *(v0 + 7840) = _Q0;
  *(v0 + 7856) = _Q0;
  *(v0 + 16848) = _Q0;
  *(v0 + 16864) = _Q0;
  *(v0 + 16752) = _Q0;
  *(v0 + 16768) = _Q0;
  *(v0 + 16784) = _Q0;
  *(v0 + 16800) = _Q0;
  *(v0 + 16816) = _Q0;
  *(v0 + 16832) = _Q0;
  *(v0 + 16656) = _Q0;
  *(v0 + 16672) = _Q0;
  *(v0 + 16688) = _Q0;
  *(v0 + 16704) = _Q0;
  *(v0 + 16720) = _Q0;
  *(v0 + 16736) = _Q0;
  *(v0 + 16560) = _Q0;
  *(v0 + 16576) = _Q0;
  *(v0 + 16592) = _Q0;
  *(v0 + 16608) = _Q0;
  *(v0 + 16624) = _Q0;
  *(v0 + 16640) = _Q0;
  *(v0 + 16464) = _Q0;
  *(v0 + 16480) = _Q0;
  *(v0 + 16496) = _Q0;
  *(v0 + 16512) = _Q0;
  *(v0 + 16528) = _Q0;
  *(v0 + 16544) = _Q0;
  *(v0 + 16368) = _Q0;
  *(v0 + 0x4000) = _Q0;
  *(v0 + 16400) = _Q0;
  *(v0 + 16416) = _Q0;
  *(v0 + 16432) = _Q0;
  *(v0 + 16448) = _Q0;
  *(v0 + 16272) = _Q0;
  *(v0 + 16288) = _Q0;
  *(v0 + 16304) = _Q0;
  *(v0 + 16320) = _Q0;
  *(v0 + 16336) = _Q0;
  *(v0 + 16352) = _Q0;
  *(v0 + 7872) = _Q0;
  *(v0 + 16200) = 0x3FEFC7B640000000;
  *(v0 + 16224) = 0;
  *(v0 + 16232) = 0;
  *(v0 + 16240) = _Q0;
  *(v0 + 16256) = _Q0;
  *(v0 + 7888) = _Q0;
  *(v0 + 7904) = _Q0;
  *(v0 + 7920) = _Q0;
  *(v0 + 7936) = _Q0;
  *(v0 + 7952) = _Q0;
  *(v0 + 16112) = _Q0;
  *(v0 + 7968) = _Q0;
  *(v0 + 7984) = _Q0;
  *(v0 + 8000) = _Q0;
  *(v0 + 16016) = _Q0;
  *(v0 + 16048) = _Q0;
  *(v0 + 16064) = _Q0;
  *(v0 + 8016) = _Q0;
  *(v0 + 8032) = _Q0;
  *(v0 + 8048) = _Q0;
  *(v0 + 8064) = _Q0;
  *(v0 + 15984) = _Q0;
  *(v0 + 16000) = _Q0;
  *(v0 + 8080) = _Q0;
  *(v0 + 8096) = _Q0;
  *(v0 + 8112) = _Q0;
  *(v0 + 8128) = _Q0;
  *(v0 + 15848) = 1;
  *(v0 + 15849) = *v22;
  *(v0 + 15852) = *&v22[3];
  *(v0 + 15880) = 1061997773;
  *(v0 + 8144) = _Q0;
  *(v0 + 8160) = _Q0;
  *(v0 + 8176) = _Q0;
  *(v0 + 0x2000) = _Q0;
  *(v0 + 15824) = 0x3FF0000000000000;
  *(v0 + 15840) = 0;
  *(v0 + 8208) = _Q0;
  *(v0 + 8224) = _Q0;
  *(v0 + 15728) = _Q0;
  *(v0 + 15744) = _Q0;
  *(v0 + 15768) = 0x3FE4CCCCC0000000;
  *(v0 + 8240) = _Q0;
  *(v0 + 8256) = _Q0;
  *(v0 + 15600) = _Q0;
  *(v0 + 15616) = _Q0;
  *(v0 + 15632) = _Q0;
  *(v0 + 15648) = _Q0;
  *(v0 + 15504) = _Q0;
  *(v0 + 15520) = _Q0;
  *(v0 + 15536) = _Q0;
  *(v0 + 15552) = _Q0;
  *(v0 + 15568) = _Q0;
  *(v0 + 15584) = _Q0;
  *(v0 + 15408) = _Q0;
  *(v0 + 15424) = _Q0;
  *(v0 + 15440) = _Q0;
  *(v0 + 15456) = _Q0;
  *(v0 + 15472) = _Q0;
  *(v0 + 15488) = _Q0;
  *(v0 + 15312) = _Q0;
  *(v0 + 15328) = _Q0;
  *(v0 + 15344) = _Q0;
  *(v0 + 15360) = _Q0;
  *(v0 + 15376) = _Q0;
  *(v0 + 15392) = _Q0;
  *(v0 + 15216) = _Q0;
  *(v0 + 15232) = _Q0;
  *(v0 + 15248) = _Q0;
  *(v0 + 15264) = _Q0;
  *(v0 + 15280) = _Q0;
  *(v0 + 15296) = _Q0;
  *(v0 + 15120) = _Q0;
  *(v0 + 15136) = _Q0;
  *(v0 + 15152) = _Q0;
  *(v0 + 15168) = _Q0;
  *(v0 + 15184) = _Q0;
  *(v0 + 15200) = _Q0;
  *(v0 + 15024) = _Q0;
  *(v0 + 15040) = _Q0;
  *(v0 + 15056) = _Q0;
  *(v0 + 15072) = _Q0;
  *(v0 + 15088) = _Q0;
  *(v0 + 15104) = _Q0;
  *(v0 + 8272) = _Q0;
  *(v0 + 8288) = _Q0;
  *(v0 + 8304) = _Q0;
  *(v0 + 14984) = 0x3FEFC7B660000000;
  *(v0 + 15008) = 0x3FE0000000000000;
  *(v0 + 15016) = 0;
  *(v0 + 8320) = _Q0;
  *(v0 + 8336) = _Q0;
  *(v0 + 8352) = _Q0;
  *(v0 + 8432) = _Q0;
  *(v0 + 8448) = _Q0;
  *(v0 + 14896) = _Q0;
  *(v0 + 8472) = 0x3FE0000000000000;
  *(v0 + 8528) = 0x3FF0000000000000;
  *(v0 + 14784) = _Q0;
  *(v0 + 14800) = _Q0;
  *(v0 + 14832) = _Q0;
  *(v0 + 14848) = _Q0;
  *(v0 + 8544) = 0x4032000000000000;
  *(v0 + 8552) = 0;
  *(v0 + 14768) = _Q0;
  *(v0 + 8553) = *v16;
  *(v0 + 8556) = *&v16[3];
  *(v0 + 8584) = 1058642330;
  *(v0 + 8640) = _Q0;
  *(v0 + 8656) = _Q0;
  *(v0 + 14633) = *v21;
  *(v0 + 14664) = 1060320052;
  *(v0 + 14608) = 0x3FF0000000000000;
  *(v0 + 14624) = 0x4018000000000010;
  *(v0 + 14632) = 1;
  *(v0 + 14636) = *&v21[3];
  *(v0 + 8672) = _Q0;
  *(v0 + 8688) = _Q0;
  *(v0 + 8704) = _Q0;
  *(v0 + 8720) = _Q0;
  *(v0 + 14528) = _Q0;
  *(v0 + 14552) = 0x3FE0000000000000;
  *(v0 + 8752) = _Q0;
  *(v0 + 8768) = _Q0;
  *(v0 + 8784) = _Q0;
  *(v0 + 8800) = _Q0;
  *(v0 + 14432) = _Q0;
  *(v0 + 14512) = _Q0;
  *(v0 + 14336) = _Q0;
  *(v0 + 14352) = _Q0;
  *(v0 + 14368) = _Q0;
  *(v0 + 14384) = _Q0;
  *(v0 + 14400) = _Q0;
  *(v0 + 14416) = _Q0;
  *(v0 + 14240) = _Q0;
  *(v0 + 14256) = _Q0;
  *(v0 + 14272) = _Q0;
  *(v0 + 14288) = _Q0;
  *(v0 + 14304) = _Q0;
  *(v0 + 14320) = _Q0;
  *(v0 + 14144) = _Q0;
  *(v0 + 14160) = _Q0;
  *(v0 + 14176) = _Q0;
  *(v0 + 14192) = _Q0;
  *(v0 + 14208) = _Q0;
  *(v0 + 14224) = _Q0;
  *(v0 + 14048) = _Q0;
  *(v0 + 14064) = _Q0;
  *(v0 + 14080) = _Q0;
  *(v0 + 14096) = _Q0;
  *(v0 + 14112) = _Q0;
  *(v0 + 14128) = _Q0;
  *(v0 + 13952) = _Q0;
  *(v0 + 13968) = _Q0;
  *(v0 + 13984) = _Q0;
  *(v0 + 14000) = _Q0;
  *(v0 + 14016) = _Q0;
  *(v0 + 14032) = _Q0;
  *(v0 + 13856) = _Q0;
  *(v0 + 13872) = _Q0;
  *(v0 + 13888) = _Q0;
  *(v0 + 13904) = _Q0;
  *(v0 + 13920) = _Q0;
  *(v0 + 13936) = _Q0;
  *(v0 + 8816) = _Q0;
  *(v0 + 13792) = 0x3FF0000000000000;
  *(v0 + 13800) = 0;
  *(v0 + 13808) = _Q0;
  *(v0 + 13824) = _Q0;
  *(v0 + 13840) = _Q0;
  *(v0 + 8864) = _Q0;
  *(v0 + 8904) = 0x3FEFC7B620000000;
  *(v0 + 8928) = 0x3FF0000000000000;
  *(v0 + 8936) = 0;
  *(v0 + 8944) = _Q0;
  *(v0 + 13768) = 0x3FEFC7B620000000;
  *(v0 + 8960) = _Q0;
  *(v0 + 13616) = _Q0;
  *(v0 + 13632) = _Q0;
  *(v0 + 13648) = _Q0;
  *(v0 + 13664) = _Q0;
  *(v0 + 13680) = _Q0;
  *(v0 + 8976) = _Q0;
  *(v0 + 8992) = _Q0;
  *(v0 + 9008) = _Q0;
  *(v0 + 13552) = _Q0;
  *(v0 + 13568) = _Q0;
  *(v0 + 13584) = _Q0;
  *(v0 + 9024) = _Q0;
  *(v0 + 9040) = _Q0;
  *(v0 + 9056) = _Q0;
  *(v0 + 9072) = _Q0;
  *(v0 + 9088) = _Q0;
  *(v0 + 9104) = _Q0;
  *(v0 + 9120) = _Q0;
  *(v0 + 13417) = *v20;
  *(v0 + 13448) = 1058642330;
  *(v0 + 9136) = _Q0;
  *(v0 + 13392) = 0x3FF0000000000000;
  *(v0 + 13408) = 0x4028000000000000;
  *(v0 + 13416) = 1;
  *(v0 + 13420) = *&v20[3];
  *(v0 + 9152) = _Q0;
  *(v0 + 9168) = _Q0;
  *(v0 + 9184) = _Q0;
  *(v0 + 13296) = _Q0;
  *(v0 + 13312) = _Q0;
  *(v0 + 13336) = 0x3FE0000000000000;
  *(v0 + 9200) = _Q0;
  *(v0 + 9216) = _Q0;
  *(v0 + 9232) = _Q0;
  *(v0 + 9248) = _Q0;
  *(v0 + 13200) = _Q0;
  *(v0 + 13216) = _Q0;
  *(v0 + 13104) = _Q0;
  *(v0 + 13120) = _Q0;
  *(v0 + 13136) = _Q0;
  *(v0 + 13152) = _Q0;
  *(v0 + 13168) = _Q0;
  *(v0 + 13184) = _Q0;
  *(v0 + 13008) = _Q0;
  *(v0 + 13024) = _Q0;
  *(v0 + 13040) = _Q0;
  *(v0 + 13056) = _Q0;
  *(v0 + 13072) = _Q0;
  *(v0 + 13088) = _Q0;
  *(v0 + 12912) = _Q0;
  *(v0 + 12928) = _Q0;
  *(v0 + 12944) = _Q0;
  *(v0 + 12960) = _Q0;
  *(v0 + 12976) = _Q0;
  *(v0 + 12992) = _Q0;
  *(v0 + 12816) = _Q0;
  *(v0 + 12832) = _Q0;
  *(v0 + 12848) = _Q0;
  *(v0 + 12864) = _Q0;
  *(v0 + 12880) = _Q0;
  *(v0 + 12896) = _Q0;
  *(v0 + 12720) = _Q0;
  *(v0 + 12736) = _Q0;
  *(v0 + 12752) = _Q0;
  *(v0 + 12768) = _Q0;
  *(v0 + 12784) = _Q0;
  *(v0 + 12800) = _Q0;
  *(v0 + 12624) = _Q0;
  *(v0 + 12640) = _Q0;
  *(v0 + 12656) = _Q0;
  *(v0 + 12672) = _Q0;
  *(v0 + 12688) = _Q0;
  *(v0 + 12704) = _Q0;
  *(v0 + 9264) = _Q0;
  *(v0 + 12552) = 0x3FEFC7B620000000;
  *(v0 + 12576) = 0x3FF0000000000000;
  *(v0 + 12584) = 0;
  *(v0 + 12592) = _Q0;
  *(v0 + 12608) = _Q0;
  *(v0 + 9280) = _Q0;
  *(v0 + 9296) = _Q0;
  *(v0 + 9312) = _Q0;
  *(v0 + 12464) = _Q0;
  *(v0 + 12496) = _Q0;
  *(v0 + 12512) = _Q0;
  *(v0 + 9328) = _Q0;
  *(v0 + 12368) = _Q0;
  *(v0 + 12400) = _Q0;
  *(v0 + 12416) = _Q0;
  *(v0 + 12432) = _Q0;
  *(v0 + 12448) = _Q0;
  *(v0 + 9344) = _Q0;
  *(v0 + 12288) = _Q0;
  *(v0 + 12304) = _Q0;
  *(v0 + 12320) = _Q0;
  *(v0 + 12336) = _Q0;
  *(v0 + 12352) = _Q0;
  *(v0 + 9360) = _Q0;
  *(v0 + 9376) = _Q0;
  *(v0 + 9392) = _Q0;
  *(v0 + 9408) = _Q0;
  *(v0 + 12200) = 1;
  *(v0 + 12201) = *v19;
  *(v0 + 12204) = *&v19[3];
  *(v0 + 12232) = 1058642330;
  *(v0 + 9424) = _Q0;
  *(v0 + 9440) = _Q0;
  *(v0 + 9456) = _Q0;
  *(v0 + 12120) = 0x3FE0000000000000;
  *(v0 + 12176) = 0x3FF0000000000000;
  *(v0 + 12192) = 0x4032000000000000;
  *(v0 + 9472) = _Q0;
  *(v0 + 9488) = _Q0;
  *(v0 + 9504) = _Q0;
  *(v0 + 9520) = _Q0;
  *(v0 + 12080) = _Q0;
  *(v0 + 12096) = _Q0;
  *(v0 + 9536) = _Q0;
  *(v0 + 11936) = _Q0;
  *(v0 + 11952) = _Q0;
  *(v0 + 11968) = _Q0;
  *(v0 + 11984) = _Q0;
  *(v0 + 12000) = _Q0;
  *(v0 + 11840) = _Q0;
  *(v0 + 11856) = _Q0;
  *(v0 + 11872) = _Q0;
  *(v0 + 11888) = _Q0;
  *(v0 + 11904) = _Q0;
  *(v0 + 11920) = _Q0;
  *(v0 + 11744) = _Q0;
  *(v0 + 11760) = _Q0;
  *(v0 + 11776) = _Q0;
  *(v0 + 11792) = _Q0;
  *(v0 + 11808) = _Q0;
  *(v0 + 11824) = _Q0;
  *(v0 + 11648) = _Q0;
  *(v0 + 11664) = _Q0;
  *(v0 + 11680) = _Q0;
  *(v0 + 11696) = _Q0;
  *(v0 + 11712) = _Q0;
  *(v0 + 11728) = _Q0;
  *(v0 + 11552) = _Q0;
  *(v0 + 11568) = _Q0;
  *(v0 + 11584) = _Q0;
  *(v0 + 11600) = _Q0;
  *(v0 + 11616) = _Q0;
  *(v0 + 11632) = _Q0;
  *(v0 + 11456) = _Q0;
  *(v0 + 11472) = _Q0;
  *(v0 + 11488) = _Q0;
  *(v0 + 11504) = _Q0;
  *(v0 + 11520) = _Q0;
  *(v0 + 11536) = _Q0;
  *(v0 + 9552) = _Q0;
  *(v0 + 11376) = _Q0;
  *(v0 + 11392) = _Q0;
  *(v0 + 11408) = _Q0;
  *(v0 + 11424) = _Q0;
  *(v0 + 11440) = _Q0;
  *(v0 + 9568) = _Q0;
  *(v0 + 9648) = _Q0;
  *(v0 + 11336) = 0x3FEFFC6E20000000;
  *(v0 + 11360) = 0x3FF0000000000000;
  *(v0 + 11368) = 0;
  *(v0 + 9664) = _Q0;
  *(v0 + 9688) = 0x3FD9999980000000;
  *(v0 + 9744) = 0x3FF0000000000000;
  *(v0 + 11296) = _Q0;
  *(v0 + 9760) = 0x403DFFFFFFFFFFFELL;
  *(v0 + 9768) = 0;
  *(v0 + 11200) = _Q0;
  *(v0 + 11216) = _Q0;
  *(v0 + 11232) = _Q0;
  *(v0 + 9769) = *v17;
  *(v0 + 11136) = _Q0;
  *(v0 + 11152) = _Q0;
  *(v0 + 11184) = _Q0;
  *(v0 + 9772) = *&v17[3];
  *(v0 + 9800) = 1061997773;
  *(v0 + 9904) = _Q0;
  *(v0 + 9920) = _Q0;
  *(v0 + 11120) = _Q0;
  *(v0 + 9936) = _Q0;
  *(v0 + 9968) = _Q0;
  *(v0 + 9984) = _Q0;
  *(v0 + 10976) = 0x403DFFFFFFFFFFFELL;
  *(v0 + 10984) = 1;
  *(v0 + 10985) = *v18;
  *(v0 + 10988) = *&v18[3];
  *(v0 + 11016) = 1061997773;
  *(v0 + 10000) = _Q0;
  *(v0 + 10016) = _Q0;
  *(v0 + 10080) = _Q0;
  *(v0 + 10120) = 0x3FF0000000000000;
  *(v0 + 10904) = 0x3FE0000000000000;
  *(v0 + 10960) = 0x3FF0000000000000;
  *(v0 + 10144) = 0x3FF0000000000000;
  *(v0 + 10152) = 0;
  *(v0 + 10160) = _Q0;
  *(v0 + 10176) = _Q0;
  *(v0 + 10864) = _Q0;
  *(v0 + 10880) = _Q0;
  *(v0 + 10704) = _Q0;
  *(v0 + 10720) = _Q0;
  *(v0 + 10736) = _Q0;
  *(v0 + 10752) = _Q0;
  *(v0 + 10768) = _Q0;
  *(v0 + 10784) = _Q0;
  *(v0 + 10608) = _Q0;
  *(v0 + 10624) = _Q0;
  *(v0 + 10640) = _Q0;
  *(v0 + 10656) = _Q0;
  *(v0 + 10672) = _Q0;
  *(v0 + 10688) = _Q0;
  *(v0 + 10512) = _Q0;
  *(v0 + 10528) = _Q0;
  *(v0 + 10544) = _Q0;
  *(v0 + 10560) = _Q0;
  *(v0 + 10576) = _Q0;
  *(v0 + 10592) = _Q0;
  *(v0 + 10416) = _Q0;
  *(v0 + 10432) = _Q0;
  *(v0 + 10448) = _Q0;
  *(v0 + 10464) = _Q0;
  *(v0 + 10480) = _Q0;
  *(v0 + 10496) = _Q0;
  *(v0 + 10320) = _Q0;
  *(v0 + 10336) = _Q0;
  *(v0 + 10352) = _Q0;
  *(v0 + 10368) = _Q0;
  *(v0 + 10384) = _Q0;
  *(v0 + 10400) = _Q0;
  *(v0 + 10224) = _Q0;
  *(v0 + 10240) = _Q0;
  *(v0 + 10256) = _Q0;
  *(v0 + 10272) = _Q0;
  *(v0 + 10288) = _Q0;
  *(v0 + 10304) = _Q0;
  *(v0 + 10192) = _Q0;
  *(v0 + 10208) = _Q0;
  *(v0 + 18336) = _Q0;
  *(v0 + 18400) = _Q0;
  *(v0 + 18416) = _Q0;
  *(v0 + 18432) = _Q0;
  *(v0 + 18448) = _Q0;
  *(v0 + 18480) = _Q0;
  *(v0 + 18496) = _Q0;
  *(v0 + 18672) = _Q0;
  *(v0 + 18688) = _Q0;
  *(v0 + 18704) = _Q0;
  *(v0 + 18720) = _Q0;
  *(v0 + 18736) = _Q0;
  *(v0 + 18752) = _Q0;
  *(v0 + 18768) = _Q0;
  *(v0 + 18784) = _Q0;
  *(v0 + 18800) = _Q0;
  *(v0 + 18816) = _Q0;
  *(v0 + 18832) = _Q0;
  *(v0 + 18848) = _Q0;
  *(v0 + 18864) = _Q0;
  *(v0 + 18880) = _Q0;
  *(v0 + 18896) = _Q0;
  *(v0 + 18912) = _Q0;
  *(v0 + 18928) = _Q0;
  *(v0 + 18944) = _Q0;
  *(v0 + 18960) = _Q0;
  *(v0 + 18976) = _Q0;
  *(v0 + 18992) = _Q0;
  *(v0 + 19008) = _Q0;
  *(v0 + 19024) = _Q0;
  *(v0 + 19040) = _Q0;
  *(v0 + 19056) = _Q0;
  *(v0 + 19072) = _Q0;
  *(v0 + 19088) = _Q0;
  *(v0 + 19104) = _Q0;
  *(v0 + 19120) = _Q0;
  *(v0 + 19136) = _Q0;
  *(v0 + 19152) = _Q0;
  *(v0 + 19168) = _Q0;
  *(v0 + 19184) = _Q0;
  *(v0 + 19200) = _Q0;
  *(v0 + 19216) = _Q0;
  *(v0 + 19232) = _Q0;
  *(v0 + 19248) = _Q0;
  *(v0 + 19264) = _Q0;
  *(v0 + 19280) = _Q0;
  *(v0 + 19296) = _Q0;
  *(v0 + 19392) = _Q0;
  *(v0 + 19632) = _Q0;
  *(v0 + 19648) = _Q0;
  *(v0 + 19664) = _Q0;
  *(v0 + 19696) = _Q0;
  *(v0 + 19712) = _Q0;
  *(v0 + 19728) = _Q0;
  *(v0 + 19744) = _Q0;
  *(v0 + 19760) = _Q0;
  *(v0 + 19776) = _Q0;
  *(v0 + 19808) = _Q0;
  *(v0 + 19888) = _Q0;
  *(v0 + 19904) = _Q0;
  *(v0 + 19920) = _Q0;
  *(v0 + 19936) = _Q0;
  *(v0 + 19952) = _Q0;
  *(v0 + 19968) = _Q0;
  *(v0 + 19984) = _Q0;
  *(v0 + 20000) = _Q0;
  *(v0 + 20016) = _Q0;
  *(v0 + 20032) = _Q0;
  *(v0 + 20048) = _Q0;
  *(v0 + 20064) = _Q0;
  *(v0 + 20080) = _Q0;
  *(v0 + 20096) = _Q0;
  *(v0 + 20112) = _Q0;
  *(v0 + 20128) = _Q0;
  *(v0 + 20144) = _Q0;
  *(v0 + 20160) = _Q0;
  *(v0 + 20176) = _Q0;
  *(v0 + 20192) = _Q0;
  *(v0 + 20208) = _Q0;
  *(v0 + 20224) = _Q0;
  *(v0 + 20240) = _Q0;
  *(v0 + 20256) = _Q0;
  *(v0 + 20272) = _Q0;
  *(v0 + 20288) = _Q0;
  *(v0 + 20304) = _Q0;
  *(v0 + 20320) = _Q0;
  *(v0 + 20336) = _Q0;
  *(v0 + 20352) = _Q0;
  *(v0 + 20368) = _Q0;
  *(v0 + 20384) = _Q0;
  *(v0 + 20400) = _Q0;
  *(v0 + 20416) = _Q0;
  *(v0 + 20432) = _Q0;
  *(v0 + 20448) = _Q0;
  *(v0 + 20464) = _Q0;
  *(v0 + 20480) = _Q0;
  *(v0 + 20496) = _Q0;
  *(v0 + 20512) = _Q0;
  *(v0 + 20608) = _Q0;
  *(v0 + 20656) = _Q0;
  *(v0 + 20848) = _Q0;
  *(v0 + 20864) = _Q0;
  *(v0 + 20880) = _Q0;
  *(v0 + 20912) = _Q0;
  *(v0 + 20928) = _Q0;
  *(v0 + 20944) = _Q0;
  *(v0 + 20960) = _Q0;
  *(v0 + 20976) = _Q0;
  *(v0 + 20992) = _Q0;
  *(v0 + 21024) = _Q0;
  *(v0 + 21104) = _Q0;
  *(v0 + 21120) = _Q0;
  *(v0 + 21136) = _Q0;
  *(v0 + 21152) = _Q0;
  *(v0 + 21168) = _Q0;
  *(v0 + 21184) = _Q0;
  *(v0 + 21200) = _Q0;
  *(v0 + 21216) = _Q0;
  *(v0 + 21232) = _Q0;
  *(v0 + 21248) = _Q0;
  *(v0 + 21264) = _Q0;
  *(v0 + 21280) = _Q0;
  *(v0 + 21296) = _Q0;
  *(v0 + 21312) = _Q0;
  *(v0 + 21328) = _Q0;
  *(v0 + 21344) = _Q0;
  *(v0 + 21360) = _Q0;
  *(v0 + 21376) = _Q0;
  *(v0 + 21392) = _Q0;
  *(v0 + 21408) = _Q0;
  *(v0 + 21424) = _Q0;
  *(v0 + 21440) = _Q0;
  *(v0 + 21456) = _Q0;
  *(v0 + 21472) = _Q0;
  *(v0 + 21488) = _Q0;
  *(v0 + 21504) = _Q0;
  *(v0 + 21520) = _Q0;
  *(v0 + 21536) = _Q0;
  *(v0 + 21552) = _Q0;
  *(v0 + 21568) = _Q0;
  *(v0 + 21584) = _Q0;
  *(v0 + 21600) = _Q0;
  *(v0 + 21616) = _Q0;
  *(v0 + 21632) = _Q0;
  *(v0 + 21648) = _Q0;
  *(v0 + 21664) = _Q0;
  *(v0 + 21680) = _Q0;
  *(v0 + 21696) = _Q0;
  *(v0 + 21712) = _Q0;
  *(v0 + 21728) = _Q0;
  *(v0 + 21824) = _Q0;
  *(v0 + 21872) = _Q0;
  result = 0.799999952;
  *(v0 + 21888) = xmmword_1BCE3D370;
  *(v0 + 7688) = 0x3FEFC7B620000000;
  *(v0 + 7712) = 0x3FF0000000000000;
  *(v0 + 7720) = 0;
  *(v0 + 18200) = 0x3FE99999A0000000;
  *(v0 + 18256) = 0x3FF0000000000000;
  *(v0 + 18272) = 0xC028000000000000;
  *(v0 + 18280) = 1;
  *(v0 + 18281) = *v24;
  *(v0 + 18284) = *&v24[3];
  *(v0 + 18312) = 1036831952;
  *(v0 + 18632) = 0x3FEFC7B640000000;
  *(v0 + 18656) = 0;
  *(v0 + 18664) = 1065353216;
  *(v0 + 19416) = 0x3FEAE14760000000;
  *(v0 + 19472) = 0x3FF0000000000000;
  *(v0 + 19488) = 0xC04E000000000002;
  *(v0 + 19496) = 1;
  *(v0 + 19497) = *v25;
  *(v0 + 19500) = *&v25[3];
  *(v0 + 19528) = 1040242952;
  *(v0 + 19848) = 0x3FEFC7B640000000;
  *(v0 + 19872) = 0;
  *(v0 + 19880) = 1065353216;
  *(v0 + 20632) = 0x3FEB89F0C0000000;
  *(v0 + 20688) = 0x3FF0000000000000;
  *(v0 + 20704) = 0xC056800000000000;
  *(v0 + 20712) = 1;
  *(v0 + 20713) = *v26;
  *(v0 + 20716) = *&v26[3];
  *(v0 + 20744) = 1040242952;
  *(v0 + 21064) = 0x3FEFC7B640000000;
  *(v0 + 21088) = 0;
  *(v0 + 21096) = 1065353216;
  *(v0 + 21848) = 0x3FEB89F080000000;
  *(v0 + 21904) = 0x3FF0000000000000;
  return result;
}

uint64_t sub_1BCBF1DF8(uint64_t a1)
{
  sub_1BCE19280();
  OUTLINED_FUNCTION_2();
  v120 = v3;
  v121 = v2;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_3_0();
  v118 = v4;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v5);
  v106 = &v103 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07890);
  MEMORY[0x1EEE9AC00](v7 - 8);
  OUTLINED_FUNCTION_3_0();
  v117 = v8;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_6_1();
  v113 = v10;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_6_1();
  v114 = v12;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_6_1();
  v104 = v14;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_6_1();
  v107 = v16;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v17);
  v108 = &v103 - v18;
  v119 = type metadata accessor for NSUnitSpeed.BaseWeatherFormatStyle(0);
  MEMORY[0x1EEE9AC00](v119);
  OUTLINED_FUNCTION_3_0();
  v115 = v19;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_6_1();
  v116 = v21;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_6_1();
  v103 = v23;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v24);
  v105 = &v103 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07898);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v28 = &v103 - v27;
  v29 = sub_1BCE1A000();
  OUTLINED_FUNCTION_2();
  v31 = v30;
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_3_0();
  v111 = v33;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v103 - v35;
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v103 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07860);
  OUTLINED_FUNCTION_2();
  v122 = v41;
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_3_0();
  v124 = v43;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v103 - v45;
  MEMORY[0x1EEE9AC00](v47);
  v49 = (&v103 - v48);
  v123 = a1;
  sub_1BCE196B0();
  sub_1BCE19FE0();
  v50 = *(v31 + 8);
  v50(v39, v29);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v28, 1, v40);
  v112 = v29;
  v110 = v50;
  if (EnumTagSinglePayload == 1)
  {
    sub_1BC94C0B4(v28, &qword_1EBD07898);
    v52 = v121;
LABEL_12:
    v109 = v40;
    v73 = v115;
    v74 = v112;
    v75 = v110;
    if (qword_1EDA1EFB0 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    OUTLINED_FUNCTION_7();
    swift_beginAccess();
    v76 = qword_1EDA1EFB8;
    OUTLINED_FUNCTION_7();
    v123 = sub_1BCE18B60();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07880);
    v77 = swift_allocObject();
    *(v77 + 16) = xmmword_1BCE3E050;
    v78 = v111;
    sub_1BCE196B0();
    sub_1BCE19FF0();
    v75(v78, v74);
    v79 = v114;
    __swift_storeEnumTagSinglePayload(v114, 1, 1, v52);
    static Set<>.full.getter();
    v81 = v80;
    v82 = v113;
    sub_1BCA4B50C(v79, v113);
    *v73 = v81;
    *(v73 + 8) = 0;
    v83 = v117;
    sub_1BCA4B50C(v82, v117);
    if (__swift_getEnumTagSinglePayload(v83, 1, v52) == 1)
    {
      v84 = v118;
      if (qword_1EDA1F658 != -1)
      {
        OUTLINED_FUNCTION_1_0();
      }

      sub_1BCE1A9F0();

      OUTLINED_FUNCTION_6_34(v82);
      OUTLINED_FUNCTION_6_34(v79);
      v85 = __swift_getEnumTagSinglePayload(v83, 1, v52);
      v86 = v120;
      if (v85 != 1)
      {
        sub_1BC94C0B4(v83, &qword_1EBD07890);
      }
    }

    else
    {
      OUTLINED_FUNCTION_6_34(v82);
      OUTLINED_FUNCTION_6_34(v79);
      v86 = v120;
      v84 = v118;
      (*(v120 + 32))(v118, v83, v52);
    }

    v87 = v119;
    (*(v86 + 32))(v73 + *(v119 + 24), v84, v52);
    *(v73 + *(v87 + 28)) = 0;
    *(v73 + *(v87 + 32)) = 1;
    v88 = v116;
    sub_1BC979F00(v73, v116);
    sub_1BCE1A3E0();
    v89 = sub_1BCE1A3A0();
    v90 = v124;
    v91 = sub_1BC979F64(v88, 0, v89, v124);
    v93 = v92;

    sub_1BCBF2960(v88);
    v122[1](v90, v109);
    *(v77 + 56) = MEMORY[0x1E69E6158];
    *(v77 + 64) = sub_1BC9804E0();
    *(v77 + 32) = v91;
    *(v77 + 40) = v93;
    v94 = sub_1BCE1D250();

    return v94;
  }

  v53 = v122;
  (v122[4])(v49, v28, v40);
  sub_1BCE196B0();
  sub_1BCE19FF0();
  v50(v36, v29);
  sub_1BCBF29BC();
  v54 = sub_1BCE1D1E0();
  v57 = v53[1];
  v55 = (v53 + 1);
  v56 = v57;
  v57(v46, v40);
  if ((v54 & 1) == 0)
  {
    (v56)(v49, v40);
    v52 = v121;
    goto LABEL_12;
  }

  v122 = v56;
  v123 = v55;
  v124 = v49;
  v58 = v121;
  if (qword_1EDA1EFB0 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  v59 = qword_1EDA1EFB8;
  OUTLINED_FUNCTION_7();
  v118 = sub_1BCE18B60();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07880);
  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_1BCE3E050;
  v61 = v108;
  __swift_storeEnumTagSinglePayload(v108, 1, 1, v58);
  static Set<>.full.getter();
  v63 = v62;
  v64 = v107;
  sub_1BCA4B50C(v61, v107);
  v65 = v103;
  *v103 = v63;
  v66 = v64;
  *(v65 + 8) = 1;
  v67 = v64;
  v68 = v104;
  sub_1BCA4B50C(v67, v104);
  v69 = __swift_getEnumTagSinglePayload(v68, 1, v58);
  v70 = v106;
  if (v69 == 1)
  {
    if (qword_1EDA1F658 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    sub_1BCE1A9F0();

    OUTLINED_FUNCTION_6_34(v107);
    OUTLINED_FUNCTION_6_34(v108);
    v71 = __swift_getEnumTagSinglePayload(v68, 1, v58);
    v72 = v120;
    if (v71 != 1)
    {
      sub_1BC94C0B4(v68, &qword_1EBD07890);
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_34(v66);
    OUTLINED_FUNCTION_6_34(v61);
    v72 = v120;
    (*(v120 + 32))(v70, v68, v58);
  }

  v95 = v119;
  (*(v72 + 32))(v65 + *(v119 + 24), v70, v58);
  *(v65 + *(v95 + 28)) = 0;
  *(v65 + *(v95 + 32)) = 1;
  v96 = v105;
  sub_1BC979F00(v65, v105);
  sub_1BCE1A3E0();
  v97 = sub_1BCE1A3A0();
  v98 = v124;
  v99 = sub_1BC979F64(v96, 0, v97, v124);
  v101 = v100;

  sub_1BCBF2960(v96);
  *(v60 + 56) = MEMORY[0x1E69E6158];
  *(v60 + 64) = sub_1BC9804E0();
  *(v60 + 32) = v99;
  *(v60 + 40) = v101;
  v94 = sub_1BCE1D250();

  (v122)(v98, v40);
  return v94;
}

uint64_t sub_1BCBF2960(uint64_t a1)
{
  v2 = type metadata accessor for NSUnitSpeed.BaseWeatherFormatStyle(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BCBF29BC()
{
  result = qword_1EDA1EC68;
  if (!qword_1EDA1EC68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD07860);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1EC68);
  }

  return result;
}

uint64_t sub_1BCBF2A20@<X0>(double (**a1)()@<X8>)
{
  v3 = type metadata accessor for DailyGaugeView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_1BCBF428C(v1, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_1BCBF42F0(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  *a1 = sub_1BCBF4354;
  a1[1] = v7;
  return result;
}

float64x2_t sub_1BCBF2B14@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_1BCE1BDF0();
  v20 = 0;
  sub_1BCBF2C10(a1, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v22, __src, sizeof(v22));
  sub_1BC952B1C(__dst, v17, &qword_1EBD0AD58);
  sub_1BC94C05C(v22, &qword_1EBD0AD58);
  memcpy(&v19[7], __dst, 0x138uLL);
  v5 = v20;
  sub_1BCE1B630();
  v15 = v7;
  v16 = v6;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v5;
  memcpy((a2 + 17), v19, 0x13FuLL);
  v8.f64[0] = v16;
  v8.f64[1] = v15;
  __asm { FMOV            V0.2D, #0.5 }

  result = vmulq_f64(v8, _Q0);
  *(a2 + 336) = result;
  return result;
}

uint64_t sub_1BCBF2C10@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v59 = a2;
  v3 = type metadata accessor for DailyGaugeView();
  v4 = *(v3 - 1);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = sub_1BCE1CED0();
  v68 = v7;
  v69 = v6;
  sub_1BCBF428C(a1, &v50[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v8 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v67 = swift_allocObject();
  sub_1BCBF42F0(&v50[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], v67 + v8);
  v66 = sub_1BCE1C240();
  sub_1BCE1B4A0();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v65 = v15;
  LOBYTE(v71[0]) = 0;
  v64 = sub_1BCE1C260();
  sub_1BCE1B4A0();
  v62 = v17;
  v63 = v16;
  v60 = v19;
  v61 = v18;
  LOBYTE(v93) = 0;
  sub_1BCE1CEE0();
  sub_1BCE1B610();
  *&v122[7] = *&v122[56];
  *&v122[23] = *&v122[72];
  *&v122[39] = *&v122[88];
  if (*(a1 + v3[7]) == 1)
  {
    if (qword_1EDA17938 != -1)
    {
      swift_once();
    }

    v20 = qword_1EDA2EEA8;
  }

  else
  {
    if (qword_1EBD07178 != -1)
    {
      swift_once();
    }

    type metadata accessor for ComplicationDailyGaugeViewModel();
    v20 = sub_1BCBA0A54();
    v21 = v22;
  }

  v93 = v20;
  v94 = v21;
  sub_1BC970820();
  v23 = sub_1BCE1C6A0();
  v25 = v24;
  v27 = v26;
  v28 = sub_1BCE1C610();
  v55 = v29;
  v56 = v28;
  v31 = v30;
  v57 = v32;
  sub_1BC998CF4(v23, v25, v27 & 1);

  KeyPath = swift_getKeyPath();
  v52 = KeyPath;
  v54 = sub_1BCE1C240();
  sub_1BCE1B4A0();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v120 = v31 & 1;
  LOBYTE(v23) = v31 & 1;
  v51 = v31 & 1;
  v118 = 0;
  v115 = 0;
  v53 = *(a1 + v3[9] + 8 * (*(a1 + v3[6]) == 0));

  v42 = swift_getKeyPath();
  v43 = *(a1 + 8);
  v71[0] = v69;
  v71[1] = v68;
  v58 = sub_1BCBF4524;
  *(&v71[15] + 1) = *v122;
  v71[2] = sub_1BCBF4524;
  v71[3] = v67;
  LOBYTE(v71[4]) = v66;
  *(&v71[4] + 1) = v125[0];
  HIDWORD(v71[4]) = *(v125 + 3);
  v71[5] = v10;
  v71[6] = v12;
  v71[7] = v14;
  v71[8] = v65;
  LOBYTE(v71[9]) = 0;
  *(&v71[9] + 1) = *v124;
  HIDWORD(v71[9]) = *&v124[3];
  LOBYTE(v71[10]) = v64;
  HIDWORD(v71[10]) = *&v123[3];
  *(&v71[10] + 1) = *v123;
  v71[11] = v63;
  v71[12] = v62;
  v71[13] = v61;
  v71[14] = v60;
  LOBYTE(v71[15]) = 0;
  *(&v71[17] + 1) = *&v122[16];
  *(&v71[19] + 1) = *&v122[32];
  v71[21] = *&v122[47];
  memcpy(v70, v71, 0xB0uLL);
  v45 = v55;
  v44 = v56;
  v72[0] = v56;
  v72[1] = v55;
  LOBYTE(v72[2]) = v23;
  *(&v72[2] + 1) = *v119;
  HIDWORD(v72[2]) = *&v119[3];
  v46 = v57;
  v72[3] = v57;
  v72[4] = KeyPath;
  v72[5] = 1;
  LOBYTE(v72[6]) = 0;
  *(&v72[6] + 1) = *v117;
  HIDWORD(v72[6]) = *&v117[3];
  LOBYTE(KeyPath) = v54;
  LOBYTE(v72[7]) = v54;
  HIDWORD(v72[7]) = *&v116[3];
  *(&v72[7] + 1) = *v116;
  v72[8] = v35;
  v72[9] = v37;
  v72[10] = v39;
  v72[11] = v41;
  LOBYTE(v72[12]) = 0;
  HIDWORD(v72[12]) = *&v121[3];
  *(&v72[12] + 1) = *v121;
  v72[13] = v42;
  v47 = v42;
  v48 = v53;
  v72[14] = v53;
  v72[15] = 0;
  v72[16] = v43;
  memcpy(&v70[176], v72, 0x88uLL);
  memcpy(v59, v70, 0x138uLL);
  v73[0] = v44;
  v73[1] = v45;
  v74 = v51;
  *v75 = *v119;
  *&v75[3] = *&v119[3];
  v76 = v46;
  v77 = v52;
  v78 = 1;
  v79 = 0;
  *v80 = *v117;
  *&v80[3] = *&v117[3];
  v81 = KeyPath;
  *&v82[3] = *&v116[3];
  *v82 = *v116;
  v83 = v35;
  v84 = v37;
  v85 = v39;
  v86 = v41;
  v87 = 0;
  *&v88[3] = *&v121[3];
  *v88 = *v121;
  v89 = v47;
  v90 = v48;
  v91 = 0;
  v92 = v43;
  sub_1BC952B1C(v71, &v93, &qword_1EBD0AD60);
  sub_1BC952B1C(v72, &v93, &qword_1EBD0AD68);
  sub_1BC94C05C(v73, &qword_1EBD0AD68);
  v93 = v69;
  v94 = v68;
  v95 = v58;
  v96 = v67;
  v97 = v66;
  *v98 = v125[0];
  *&v98[3] = *(v125 + 3);
  v99 = v10;
  v100 = v12;
  v101 = v14;
  v102 = v65;
  v103 = 0;
  *v104 = *v124;
  *&v104[3] = *&v124[3];
  v105 = v64;
  *&v106[3] = *&v123[3];
  *v106 = *v123;
  v107 = v63;
  v108 = v62;
  v109 = v61;
  v110 = v60;
  v111 = 0;
  v112 = *v122;
  v113 = *&v122[16];
  *v114 = *&v122[32];
  *&v114[15] = *&v122[47];
  return sub_1BC94C05C(&v93, &qword_1EBD0AD60);
}

uint64_t sub_1BCBF32D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a1;
  v35 = a3;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0AD70);
  MEMORY[0x1EEE9AC00](v36);
  v33 = v29 - v4;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0AD78);
  MEMORY[0x1EEE9AC00](v34);
  v6 = v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0A730);
  v30 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v29 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0AD80);
  v31 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v29 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0AD88);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v29 - v14;
  v16 = type metadata accessor for DailyGaugeView();
  v17 = a2 + *(v16 + 24);
  if (*v17)
  {
    v18 = *(v17 + 8);

    v20 = v33;
    sub_1BCBF37C8(v19, v32, v33, v18);
    sub_1BC952B1C(v20, v6, &qword_1EBD0AD70);
    swift_storeEnumTagMultiPayload();
    sub_1BCBF45E8();
    sub_1BCBF4758();
    sub_1BCE1BF60();

    v21 = v20;
    v22 = &qword_1EBD0AD70;
  }

  else
  {
    v29[1] = v16;
    v32 = v6;
    v33 = v10;
    v23 = 0.0;
    if ((*(v17 + 24) & 1) == 0)
    {
      v23 = 1.0;
      if (*(v17 + 16) <= 1.0)
      {
        v23 = *(v17 + 16);
      }
    }

    v37 = v23;
    v38 = xmmword_1BCE3A870;
    sub_1BC96ABEC();
    sub_1BCE1CB90();
    v24 = sub_1BCBF3DD0();
    v25 = *(v17 + 32);
    *&v38 = v24;
    *(&v38 + 1) = v25;
    sub_1BC957184(&qword_1EBD0A728, &qword_1EBD0A730);
    sub_1BCBF4594();
    sub_1BCE1C7C0();
    (*(v30 + 8))(v9, v7);
    sub_1BCE1CEE0();
    sub_1BCE1B610();
    (*(v31 + 32))(v15, v12, v33);
    v26 = &v15[*(v13 + 36)];
    v27 = v39;
    *v26 = v38;
    v26[1] = v27;
    v26[2] = v40;
    sub_1BC952B1C(v15, v32, &qword_1EBD0AD88);
    swift_storeEnumTagMultiPayload();
    sub_1BCBF45E8();
    sub_1BCBF4758();
    sub_1BCE1BF60();
    v21 = v15;
    v22 = &qword_1EBD0AD88;
  }

  return sub_1BC94C05C(v21, v22);
}

uint64_t sub_1BCBF37C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v50 = a2;
  v51 = a3;
  v52 = a1;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0A730);
  v6 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v8 = &v44 - v7;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0AD80);
  v9 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v11 = &v44 - v10;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0AD88);
  MEMORY[0x1EEE9AC00](v45);
  v13 = &v44 - v12;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0ADA8);
  MEMORY[0x1EEE9AC00](v48);
  v49 = &v44 - v14;
  v15 = type metadata accessor for DailyGaugeView();
  v16 = v4 + *(v15 + 24);
  v17 = 0.0;
  if ((*(v16 + 24) & 1) == 0)
  {
    v17 = 1.0;
    if (*(v16 + 16) <= 1.0)
    {
      v17 = *(v16 + 16);
    }
  }

  *v66 = v17;
  v67[0] = xmmword_1BCE3A870;
  sub_1BC96ABEC();
  sub_1BCE1CB90();
  v18 = sub_1BCBF3DD0();
  v19 = *(v16 + 32);
  *v67 = v18;
  *(&v67[0] + 1) = v19;
  sub_1BC957184(&qword_1EBD0A728, &qword_1EBD0A730);
  sub_1BCBF4594();
  v20 = v46;
  sub_1BCE1C7C0();
  (*(v6 + 8))(v8, v20);
  v21 = v4 + *(v15 + 32);
  v22 = *(v21 + 8);
  sub_1BCE1CEE0();
  sub_1BCE1B610();
  (*(v9 + 32))(v13, v11, v47);
  v23 = &v13[*(v45 + 36)];
  v24 = v67[14];
  *v23 = v67[13];
  *(v23 + 1) = v24;
  *(v23 + 2) = v67[15];
  v25 = sub_1BCE1CED0();
  v27 = v26;
  sub_1BCBF3E34(v4, v67, a4);
  memcpy(v65, v67, sizeof(v65));
  memcpy(v66, v67, sizeof(v66));
  sub_1BC952B1C(v65, &v56, &qword_1EBD0ADD8);
  sub_1BC94C05C(v66, &qword_1EBD0ADD8);
  memcpy(v67, v65, 0xD0uLL);
  v28 = v13;
  v29 = v49;
  sub_1BC9643D8(v28, v49, &qword_1EBD0AD88);
  v30 = (v29 + *(v48 + 36));
  *v30 = v25;
  v30[1] = v27;
  memcpy(v30 + 2, v67, 0xD0uLL);
  sub_1BCE1CEE0();
  sub_1BCE1B610();
  *&v55[6] = v67[16];
  *&v55[22] = v67[17];
  *&v55[38] = v67[18];
  v31 = v52;

  sub_1BCE1B630();
  if (a4 >= 0.09)
  {
    v35 = *(v21 + 16);
    if (a4 <= 0.9)
    {
      v34 = v32 * a4 - v35;
      v33 = v35 * 0.5;
    }

    else
    {
      v36 = v22 + v35;
      v33 = v35 * 0.5;
      v34 = v33 + v32 - v36;
    }
  }

  else
  {
    v33 = *(v21 + 16) * 0.5;
    v34 = 0.0 - v33;
  }

  v37 = -(v34 + v33);
  v38 = sub_1BCE1CED0();
  v40 = v39;
  v54[0] = v31;
  LOWORD(v54[1]) = 256;
  *(&v54[1] + 2) = *v55;
  *(&v54[3] + 2) = *&v55[16];
  *(&v54[5] + 2) = *&v55[32];
  v54[7] = *&v55[46];
  v54[8] = 0;
  *&v54[9] = v37;
  v54[10] = v38;
  v54[11] = v39;
  v41 = v51;
  sub_1BC9643D8(v29, v51, &qword_1EBD0ADA8);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0AD70);
  memcpy((v41 + *(v42 + 36)), v54, 0x60uLL);
  v56 = v31;
  v57 = 256;
  v58 = *v55;
  v59 = *&v55[16];
  *v60 = *&v55[32];
  *&v60[14] = *&v55[46];
  v61 = 0;
  v62 = v37;
  v63 = v38;
  v64 = v40;
  sub_1BC952B1C(v54, &v53, &qword_1EBD0ADD0);
  return sub_1BC94C05C(&v56, &qword_1EBD0ADD0);
}

double sub_1BCBF3DD0()
{
  v1 = type metadata accessor for DailyGaugeView();
  v2 = v0 + *(v1 + 32);
  v3 = *(v2 + 8);
  v4 = *(v2 + 16);
  v5 = v0 + *(v1 + 24);
  if ((*(v5 + 24) & 1) != 0 || (v6 = *(v5 + 16), v6 <= 1.0) && v6 < 0.9)
  {
    v4 = v4 * 0.5;
  }

  return v3 - v4;
}

uint64_t sub_1BCBF3E34@<X0>(uint64_t a1@<X0>, void *a2@<X8>, double a3@<D0>)
{
  v6 = sub_1BCE1CAB0();
  sub_1BCE1CEE0();
  sub_1BCE1B910();
  memcpy(&v30[6], __src, 0x70uLL);
  v7 = sub_1BCE1CA90();
  v8 = a1 + *(type metadata accessor for DailyGaugeView() + 32);
  v9 = *(v8 + 16);
  v10 = *(v8 + 8) + v9;
  sub_1BCE1CEE0();
  sub_1BCE1B610();
  *&v29[6] = v32;
  *&v29[22] = v33;
  *&v29[38] = v34;
  sub_1BCE1B630();
  if (a3 >= 0.09)
  {
    v12 = v9 * 0.5 + v11 - v10;
    v13 = v11 * a3 - v9;
    if (a3 <= 0.9)
    {
      v12 = v13;
    }
  }

  else
  {
    v12 = v9 * -0.5 + 0.0;
  }

  v14 = -v12;
  v17[0] = v6;
  LOWORD(v17[1]) = 256;
  memcpy(&v17[1] + 2, v30, 0x76uLL);
  memcpy(__dst, v17, 0x80uLL);
  v18[0] = v7;
  LOWORD(v18[1]) = 256;
  *(&v18[1] + 2) = *v29;
  *(&v18[3] + 2) = *&v29[16];
  *(&v18[5] + 2) = *&v29[32];
  v18[7] = *&v29[46];
  v18[8] = 0;
  *&v18[9] = v14;
  memcpy(&__dst[128], v18, 0x50uLL);
  memcpy(a2, __dst, 0xD0uLL);
  v19 = v7;
  v20 = 256;
  v21 = *v29;
  v22 = *&v29[16];
  *v23 = *&v29[32];
  *&v23[14] = *&v29[46];
  v24 = 0;
  v25 = v14;
  sub_1BC952B1C(v17, &v26, &qword_1EBD0ADE0);
  sub_1BC952B1C(v18, &v26, &qword_1EBD0ADE8);
  sub_1BC94C05C(&v19, &qword_1EBD0ADE8);
  v26 = v6;
  v27 = 256;
  memcpy(v28, v30, sizeof(v28));
  return sub_1BC94C05C(&v26, &qword_1EBD0ADE0);
}

uint64_t sub_1BCBF40E0()
{
  v0 = sub_1BCE1CAB0();
  sub_1BCE1CAB0();
  v1 = sub_1BCE1CAE0();

  qword_1EBD2A2C8 = v0;
  unk_1EBD2A2D0 = v1;
  return result;
}

uint64_t type metadata accessor for DailyGaugeView()
{
  result = qword_1EBD0AD48;
  if (!qword_1EBD0AD48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BCBF41AC()
{
  result = type metadata accessor for ComplicationDailyGaugeViewModel();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1BCBF428C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DailyGaugeView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BCBF42F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DailyGaugeView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_1BCBF4354()
{
  type metadata accessor for DailyGaugeView();
  OUTLINED_FUNCTION_2_52();

  *&result = *&sub_1BCBF2B14(v0, v1);
  return result;
}

uint64_t objectdestroyTm_0()
{
  v1 = (type metadata accessor for DailyGaugeView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v0 + v3 + v1[8];

  v6 = type metadata accessor for ComplicationDailyGaugeViewModel();
  v7 = *(v6 + 28);
  sub_1BCE19060();
  OUTLINED_FUNCTION_4();
  (*(v8 + 8))(v5 + v7);
  v9 = *(v6 + 32);
  sub_1BCE19470();
  OUTLINED_FUNCTION_4();
  (*(v10 + 8))(v5 + v9);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1BCBF4524()
{
  type metadata accessor for DailyGaugeView();
  v0 = OUTLINED_FUNCTION_2_52();

  return sub_1BCBF32D8(v0, v1, v2);
}

unint64_t sub_1BCBF4594()
{
  result = qword_1EBD0AD90;
  if (!qword_1EBD0AD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0AD90);
  }

  return result;
}

unint64_t sub_1BCBF45E8()
{
  result = qword_1EBD0AD98;
  if (!qword_1EBD0AD98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0AD70);
    sub_1BCBF46A0();
    sub_1BC957184(&qword_1EBD0ADC8, &qword_1EBD0ADD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0AD98);
  }

  return result;
}

unint64_t sub_1BCBF46A0()
{
  result = qword_1EBD0ADA0;
  if (!qword_1EBD0ADA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0ADA8);
    sub_1BCBF4758();
    sub_1BC957184(&qword_1EBD0ADB8, &qword_1EBD0ADC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0ADA0);
  }

  return result;
}

unint64_t sub_1BCBF4758()
{
  result = qword_1EBD0ADB0;
  if (!qword_1EBD0ADB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0AD88);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0A730);
    sub_1BC957184(&qword_1EBD0A728, &qword_1EBD0A730);
    sub_1BCBF4594();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0ADB0);
  }

  return result;
}

uint64_t sub_1BCBF4868(uint64_t a1, char a2)
{
  BoundPropertyName.rawValue.getter();
  sub_1BCBF48F0(a1, a2 & 1, v4, v5);
}

void sub_1BCBF48F0(uint64_t a1, char a2, uint64_t a3, unint64_t a4)
{
  if (a2)
  {
    if (qword_1EDA1EE78 != -1)
    {
      swift_once();
    }

    v6 = sub_1BCE1ACC0();
    __swift_project_value_buffer(v6, qword_1EDA1EE80);

    oslog = sub_1BCE1ACA0();
    v7 = sub_1BCE1D8B0();

    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v11 = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_1BC98FE38(a3, a4, &v11);
      _os_log_impl(&dword_1BC940000, oslog, v7, "Failed to set binding because entity object ID was nil, binding=%s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x1BFB31B10](v9, -1, -1);
      MEMORY[0x1BFB31B10](v8, -1, -1);
    }
  }

  else
  {
    sub_1BCE1AEC0();
  }
}

uint64_t sub_1BCBF4A78()
{
  BoundEntity.rawValue.getter();
  sub_1BCE1AEB0();
}

uint64_t WeatherVFXEffect.applyUpdate(_:lastConfiguration:effectType:cameraPositionType:hasLocationChanged:gradient:)(uint64_t a1, uint64_t a2, char *a3, char *a4, uint64_t a5, uint64_t a6)
{
  v8 = *a3;
  v9 = *a4;
  sub_1BCBF4B5C(a1);
  v17 = v8;
  v16 = v9;
  sub_1BCBF5B1C(a1, &v17, &v16, v10, v11, v12, v13, v14);

  return sub_1BCBF5C04(a6);
}

uint64_t sub_1BCBF4B5C(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v448 = v1;
  v3 = v2;
  HIDWORD(v327) = v4;
  v6 = v5;
  v8 = v7;
  OUTLINED_FUNCTION_29_12(&v655);
  v604 = v8[1629];
  LODWORD(v543) = v8[1631];
  HIDWORD(v543) = v8[1630];
  v9 = v8[1632];
  LODWORD(v499) = v8[1633];
  HIDWORD(v499) = v8[1634];
  LODWORD(v523) = v8[1635];
  HIDWORD(v482) = v8[1636];
  HIDWORD(v432) = v8[1637];
  v10 = v8[1638];
  v11 = v8[1639];
  v12 = v8[1641];
  HIDWORD(v402) = v8[1642];
  LODWORD(v417) = v8[1643];
  HIDWORD(v417) = v8[1640];
  HIDWORD(v568) = v8[1644];
  v13 = v8[1645];
  v610 = v8[1646];
  HIDWORD(v619) = v8[1647];
  v628 = v8[1648];
  v637 = v8[1649];
  v642 = v8[1650];
  HIDWORD(v523) = v8[1651];
  v14 = v8[1652];
  OUTLINED_FUNCTION_37_7(&v654);
  memcpy(v656, v6, sizeof(v656));
  __src = v6;
  memcpy(v657, v6, 0x918uLL);
  OUTLINED_FUNCTION_38_1(v657);
  LODWORD(v432) = v13;
  HIDWORD(v463) = v9;
  LODWORD(v568) = v14;
  if (v31)
  {
    v15 = 0;
    v17 = 0;
    v16 = 2;
  }

  else
  {
    v16 = *&v657[1629];
    v15 = *&v657[1637];
    v17 = *&v657[1645];
  }

  v342 = HIDWORD(v15) & 1;
  v18 = (v16 >> 8) & 1;
  v590 = v11;
  v387 = v16;
  LODWORD(v482) = v10;
  if ((v3 & 1) == 0)
  {
    v296 = v16;
    v312 = v15;
    v23 = v10;
    BYTE4(v372) = v12;
    v280 = v17;
    v24 = (v17 >> 8) & 0x10101010101;
    if (v16 == 2)
    {
      v24 = 2;
    }

    v25 = 256;
    if ((v619 & 0x100000000) == 0)
    {
      v25 = 0;
    }

    v26 = 0x10000;
    if ((v628 & 1) == 0)
    {
      v26 = 0;
    }

    v27 = 0x1000000;
    if ((v637 & 1) == 0)
    {
      v27 = 0;
    }

    v28 = 0x100000000;
    if ((v642 & 1) == 0)
    {
      v28 = 0;
    }

    v29 = BYTE4(v523);
    v30 = 0x10000000000;
    if ((v523 & 0x100000000) == 0)
    {
      v30 = 0;
    }

    v653[0] = v24;
    LOWORD(v653[1]) = WORD2(v24);
    HIWORD(v653[2]) = (v28 | v30) >> 32;
    *(&v653[1] + 2) = v25 & 0xFFFFFFFE | v610 & 1 | v26 | v27;
    v264 = (v16 >> 8) & 1;
    if ((v24 & 3) == 2)
    {
      OUTLINED_FUNCTION_30_8();
    }

    else
    {
      v652[0] = v24;
      LOWORD(v652[1]) = WORD2(v24);
      v33 = OUTLINED_FUNCTION_16_23();
      static WeatherConditionBackgroundConfig.Layers.CloudLayers.== infix(_:_:)(v33, (v34 | 6));
      OUTLINED_FUNCTION_30_8();
      if (v35)
      {
        goto LABEL_37;
      }
    }

    v36 = OUTLINED_FUNCTION_6_35();
    OUTLINED_FUNCTION_29_12(v36);
    OUTLINED_FUNCTION_33_10();
    BYTE1(v653[408]) = v499;
    BYTE2(v653[408]) = BYTE4(v499);
    HIBYTE(v653[408]) = v523;
    LOBYTE(v653[409]) = BYTE4(v482);
    BYTE1(v653[409]) = BYTE4(v432);
    BYTE2(v653[409]) = v10;
    OUTLINED_FUNCTION_5_39(v37, v38, v39, v40, v41, v42, v43, v44, v264, v17, v296, v312, v327, v342, __src, v372, v12, v387, v402, v417, SBYTE4(v417), v432, v448, v463, v482, v499, v523, v543, v568, v11);
    BYTE2(v653[410]) = v17;
    HIBYTE(v653[410]) = v11;
    OUTLINED_FUNCTION_1_52(v45, v46, v47, v48, v49, v50, v51, v52, v265, v281, v297, v313, v328, v343, __srch, v373, v388, v403, v418, v433, v449, v464, v483, v500, v524, v544, v569, v584, v591, v610, SHIDWORD(v610), v619, SBYTE4(v619), SHIWORD(v619), v628, SHIWORD(v628), v637, SHIWORD(v637), v642);
    HIBYTE(v653[412]) = BYTE4(v523);
    LOBYTE(v653[413]) = v568;
    OUTLINED_FUNCTION_37_7(&v653[413] + 1);
    OUTLINED_FUNCTION_6_35();
    sub_1BCBF99D8();
    v29 = BYTE4(v523);
LABEL_37:
    v53 = OUTLINED_FUNCTION_6_35();
    OUTLINED_FUNCTION_29_12(v53);
    OUTLINED_FUNCTION_33_10();
    v55 = v499;
    v54 = BYTE4(v499);
    BYTE1(v653[408]) = v499;
    BYTE2(v653[408]) = BYTE4(v499);
    HIBYTE(v653[408]) = v523;
    v56 = HIDWORD(v482);
    LOBYTE(v653[409]) = BYTE4(v482);
    BYTE1(v653[409]) = BYTE4(v432);
    BYTE2(v653[409]) = v23;
    OUTLINED_FUNCTION_5_39(v57, v58, v59, v60, v61, v62, v63, v64, v264, v280, v296, v312, v327, v342, __src, v372, SBYTE4(v372), v387, v402, v417, SBYTE4(v417), v432, v448, v463, v482, v499, v523, v543, v568, v590);
    BYTE2(v653[410]) = v17;
    HIBYTE(v653[410]) = v11;
    OUTLINED_FUNCTION_1_52(v65, v66, v67, v68, v69, v70, v71, v72, v266, v282, v298, v314, v329, v344, __srci, v374, v389, v404, v419, v434, v450, v465, v484, v501, v525, v545, v570, v585, v592, v610, SHIDWORD(v610), v619, SBYTE4(v619), SHIWORD(v619), v628, SHIWORD(v628), v637, SHIWORD(v637), v642);
    HIBYTE(v653[412]) = v29;
    OUTLINED_FUNCTION_24_12(v73, v74, v75, v76, v77, v78, v79, v80, v267, v283, v299, v315, v330, v345, __srcj, v375, v390, v405, v420, v435, v451, v466, v485, v502, v526, v546, v571);
    OUTLINED_FUNCTION_37_7(v81);
    v82 = OUTLINED_FUNCTION_16_23();
    memcpy(v82, __srca, 0x918uLL);
    v83 = OUTLINED_FUNCTION_16_23();
    v84 = v605;
    if (WeatherConditionBackgroundConfig.shouldRandomizeClouds(lastConfig:forceRandomization:)(v83))
    {
      v85 = OUTLINED_FUNCTION_6_35();
      v86 = OUTLINED_FUNCTION_29_12(v85);
      BYTE1(v653[407]) = v605;
      BYTE2(v653[407]) = BYTE4(v547);
      HIBYTE(v653[407]) = v547;
      LOBYTE(v653[408]) = v652;
      BYTE1(v653[408]) = v55;
      BYTE2(v653[408]) = v54;
      HIBYTE(v653[408]) = v527;
      LOBYTE(v653[409]) = v56;
      BYTE1(v653[409]) = BYTE4(v436);
      BYTE2(v653[409]) = v486;
      OUTLINED_FUNCTION_5_39(v86, v87, v88, v89, v90, v91, v92, v93, v268, v284, v300, v316, v331, v346, __srca, *v376, v376[4], v391, v406, v421, SBYTE4(v421), v436, v452, v467, v486, v503, v527, v547, v572, v593);
      BYTE2(v653[410]) = BYTE4(v407);
      HIBYTE(v653[410]) = v422;
      OUTLINED_FUNCTION_1_52(v94, v95, v96, v97, v98, v99, v100, v101, v269, v285, v301, v317, v332, v347, __srck, v377, v392, v407, v422, v437, v453, v468, v487, v504, v528, v548, v573, v586, v594, v611, v615, *v620, v620[4], v624, v629, *v633, v633[2], v638, v643);
      HIBYTE(v653[412]) = v29;
      OUTLINED_FUNCTION_24_12(v102, v103, v104, v105, v106, v107, v108, v109, v270, v286, v302, v318, v333, v348, __srcl, v378, v393, v408, v423, v438, v454, v469, v488, v505, v529, v549, v574);
      OUTLINED_FUNCTION_7_41(v110);
      v111 = OUTLINED_FUNCTION_6_35();
      sub_1BCBF9AC0(v111);
    }

    v112 = v84 & 1;
    if (v300 == 2)
    {
      sub_1BCBF97E8(v112, 0);
      v113 = BYTE4(v436);
      v115 = v547;
      v114 = BYTE4(v547);
    }

    else
    {
      v113 = BYTE4(v436);
      v115 = v547;
      if (v112 != (v391 & 1))
      {
        sub_1BCBF97E8(v112, 0);
      }

      v114 = BYTE4(v547);
      if (((v268 ^ HIDWORD(v547)) & 1) == 0)
      {
        goto LABEL_46;
      }
    }

    sub_1BCBF97E8(v114 & 1, 0);
    if (v300 == 2)
    {
      OUTLINED_FUNCTION_0_52(8);
      sub_1BCBF4A78();
LABEL_49:
      OUTLINED_FUNCTION_0_52(25);
      sub_1BCBF4A78();
      if (v300 == 2)
      {
        sub_1BCBF9EBC();
        goto LABEL_54;
      }

LABEL_51:
      v116 = BYTE4(v391);
      if (((v391 >> 24) & 1) != (v652 & 1))
      {
        sub_1BCBF9EBC();
        v116 = BYTE4(v391);
      }

      if (((v116 & 1 ^ v55) & 1) == 0)
      {
LABEL_55:
        result = sub_1BCBF9DCC();
        if (v300 == 2)
        {
          OUTLINED_FUNCTION_0_52(17);
          sub_1BCBF4A78();
          v118 = v316;
        }

        else
        {
          v119 = HIBYTE(v391);
          v118 = v316;
          if ((HIWORD(v391) & 1) != (v527 & 1))
          {
            OUTLINED_FUNCTION_0_52(17);
            result = sub_1BCBF4A78();
            v119 = HIBYTE(v391);
          }

          if (((v119 & 1 ^ v56) & 1) == 0)
          {
            goto LABEL_62;
          }
        }

        OUTLINED_FUNCTION_0_52(26);
        result = sub_1BCBF4A78();
        if (v300 == 2)
        {
          OUTLINED_FUNCTION_0_52(27);
          sub_1BCBF4A78();
LABEL_65:
          OUTLINED_FUNCTION_0_52(28);
          result = sub_1BCBF4A78();
          if (v300 == 2)
          {
            OUTLINED_FUNCTION_0_52(29);
            sub_1BCBF4A78();
LABEL_70:
            result = sub_1BCBF9E30();
            if (v300 == 2)
            {
              OUTLINED_FUNCTION_0_52(30);
              sub_1BCBF4A78();
LABEL_75:
              result = sub_1BCBF9EBC();
              if (v300 == 2)
              {
                OUTLINED_FUNCTION_0_52(33);
                sub_1BCBF4A78();
                goto LABEL_80;
              }

LABEL_77:
              if ((HIWORD(v118) & 1) != (v421 & 1))
              {
                OUTLINED_FUNCTION_0_52(33);
                result = sub_1BCBF4A78();
              }

              if ((v436 & 1) == (v284 & 1))
              {
                return result;
              }

LABEL_80:
              OUTLINED_FUNCTION_0_52(7);
              return sub_1BCBF4A78();
            }

LABEL_72:
            if (v346 != (v376[4] & 1))
            {
              OUTLINED_FUNCTION_0_52(30);
              result = sub_1BCBF4A78();
            }

            if ((((v118 >> 40) & 1 ^ HIDWORD(v406)) & 1) == 0)
            {
              goto LABEL_77;
            }

            goto LABEL_75;
          }

LABEL_67:
          if ((v113 & 1) != (v118 & 1))
          {
            OUTLINED_FUNCTION_0_52(29);
            result = sub_1BCBF4A78();
          }

          if ((((v118 >> 24) & 1 ^ HIDWORD(v421)) & 1) == 0)
          {
            goto LABEL_72;
          }

          goto LABEL_70;
        }

LABEL_62:
        if (((v118 >> 8) & 1) != (v486 & 1))
        {
          OUTLINED_FUNCTION_0_52(27);
          result = sub_1BCBF4A78();
        }

        if ((((v118 >> 16) & 1 ^ v593) & 1) == 0)
        {
          goto LABEL_67;
        }

        goto LABEL_65;
      }

LABEL_54:
      OUTLINED_FUNCTION_0_52(20);
      sub_1BCBF4A78();
      goto LABEL_55;
    }

LABEL_46:
    if (((v391 >> 16) & 1) != (v115 & 1))
    {
      OUTLINED_FUNCTION_0_52(8);
      sub_1BCBF4A78();
    }

    if (((HIBYTE(v316) & 1 ^ HIDWORD(v572)) & 1) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_49;
  }

  v19 = v12;
  v20 = v16;
  if (v16 == 2)
  {
    OUTLINED_FUNCTION_36_7(v604 & 1);
  }

  else
  {
    v21 = v604 & 1;
    if (v21 != (v16 & 1))
    {
      v22 = (v16 >> 8) & 1;
      OUTLINED_FUNCTION_36_7(v21);
      LODWORD(v18) = v22;
    }

    v3 = v448;
    if (((v18 ^ HIDWORD(v543)) & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  sub_1BCBF97E8(BYTE4(v543) & 1, 1);
  if (v20 == 2)
  {
    OUTLINED_FUNCTION_0_52(30);
    sub_1BCBF4A78();
    goto LABEL_87;
  }

LABEL_26:
  if ((v342 ^ v19))
  {
    OUTLINED_FUNCTION_0_52(30);
    v3 = v448;
    sub_1BCBF4A78();
  }

  if (HIBYTE(v17) == 4)
  {
    v31 = v14 != 4 || v20 == 2;
    v32 = v387;
    if (!v31)
    {
LABEL_85:
      if (((v604 ^ v32) & 1) == 0 && ((HIDWORD(v543) ^ (v32 >> 8) | v342 ^ v19) & 1) == 0)
      {
        goto LABEL_88;
      }
    }
  }

  else if (v14 != 4)
  {
    v120 = sub_1BCA68B30(SHIBYTE(v17), v14);
    v32 = v387;
    if (v20 != 2 && (v120 & 1) != 0)
    {
      goto LABEL_85;
    }
  }

LABEL_87:
  LOBYTE(v653[0]) = v604;
  BYTE1(v653[0]) = BYTE4(v543);
  BYTE2(v653[0]) = v543;
  HIBYTE(v653[0]) = v9;
  LOBYTE(v653[1]) = v499;
  BYTE1(v653[1]) = BYTE4(v499);
  BYTE2(v653[1]) = v523;
  HIBYTE(v653[1]) = BYTE4(v482);
  LOBYTE(v653[2]) = BYTE4(v432);
  BYTE1(v653[2]) = v482;
  BYTE2(v653[2]) = v11;
  HIBYTE(v653[2]) = BYTE4(v417);
  LOBYTE(v653[3]) = v19;
  BYTE1(v653[3]) = BYTE4(v402);
  BYTE2(v653[3]) = v417;
  HIBYTE(v653[3]) = BYTE4(v568);
  LOBYTE(v653[4]) = v13;
  BYTE1(v653[4]) = v610;
  BYTE2(v653[4]) = BYTE4(v619);
  HIBYTE(v653[4]) = v628;
  LOBYTE(v653[5]) = v637;
  BYTE1(v653[5]) = v642;
  BYTE2(v653[5]) = BYTE4(v523);
  HIBYTE(v653[5]) = v14;
  v121 = OUTLINED_FUNCTION_6_35();
  v3 = v448;
  sub_1BCBF9844(v121);
LABEL_88:
  v122 = OUTLINED_FUNCTION_6_35();
  memcpy(v122, __src, 0x918uLL);
  v123 = OUTLINED_FUNCTION_6_35();
  OUTLINED_FUNCTION_38_1(v123);
  if (v31)
  {
    v125 = 2;
  }

  else
  {
    v124 = OUTLINED_FUNCTION_16_23();
    memcpy(v124, v653, 0x918uLL);
    OUTLINED_FUNCTION_31_9();
    v125 = WeatherConditionBackgroundConfig.colliderAEnabled.getter() & 1;
  }

  v126 = BYTE4(v402);
  v127 = BYTE4(v417);
  v128 = v590;
  OUTLINED_FUNCTION_31_9();
  v129 = OUTLINED_FUNCTION_16_23();
  v130 = OUTLINED_FUNCTION_29_12(v129);
  OUTLINED_FUNCTION_11_28(v130, v131, v132, v133, v134, v135, v136, v137, v263, v279, v295, v311, v327, v342, __src, v372, v387, v402, v417, v432, v448, v463, v9, v482, v499, SWORD1(v499), SBYTE4(v499), SHIWORD(v499), v523, SHIDWORD(v523), v543, SWORD1(v543), SBYTE4(v543), v568, v590, v604);
  LOBYTE(v652[409]) = BYTE4(v489);
  BYTE1(v652[409]) = v447;
  BYTE2(v652[409]) = v489;
  HIBYTE(v652[409]) = v128;
  LOBYTE(v652[410]) = v127;
  BYTE1(v652[410]) = v19;
  BYTE2(v652[410]) = v126;
  v138 = v424;
  HIBYTE(v652[410]) = v424;
  OUTLINED_FUNCTION_9_31(v587, v271, v287, v303, v319, v334, v349, __srcm, v379, v394, v409, v424, v439, v455, v470, v489, v506, v530, v540, v550, v575, v595, v610, SHIDWORD(v610), v619, SBYTE4(v619), SHIWORD(v619), v628, SHIWORD(v628), v637, SHIWORD(v637), v642);
  OUTLINED_FUNCTION_37_7((v3 + 1653));
  OUTLINED_FUNCTION_31_9();
  v139 = WeatherConditionBackgroundConfig.colliderAEnabled.getter();
  if (v125 == 2)
  {
    v140 = BYTE4(v440);
  }

  else
  {
    v140 = BYTE4(v440);
    if (((v139 ^ v125) & 1) == 0)
    {
      goto LABEL_95;
    }
  }

  v651[0] = 41;
  v141 = OUTLINED_FUNCTION_16_23();
  v142 = OUTLINED_FUNCTION_8_38(v141);
  OUTLINED_FUNCTION_11_28(v142, v143, v144, v145, v146, v147, v148, v149, v272, v288, v304, v320, v335, v350, __srcb, v380, v395, v410, v425, v440, v456, *v471, v471[4], v490, v507, *v514, v514[2], v520, v531, *&v539[2], v551, *v558, v558[2], v576, *v596, v596[4]);
  LOBYTE(v652[409]) = BYTE4(v491);
  BYTE1(v652[409]) = v140;
  BYTE2(v652[409]) = v491;
  HIBYTE(v652[409]) = v597;
  LOBYTE(v652[410]) = v127;
  BYTE1(v652[410]) = v19;
  BYTE2(v652[410]) = v126;
  HIBYTE(v652[410]) = v138;
  OUTLINED_FUNCTION_9_31(v588, v273, v289, v305, v321, v336, v351, __srcn, v381, v396, v411, v426, v441, v457, v472, v491, v508, v532, v541, v552, v577, v597, v612, v616, *v621, v621[4], v625, v630, *v634, v634[2], v639, v644);
  OUTLINED_FUNCTION_7_41(&v652[413] + 1);
  OUTLINED_FUNCTION_31_9();
  WeatherConditionBackgroundConfig.colliderAEnabled.getter();
  OUTLINED_FUNCTION_21_19();
  OUTLINED_FUNCTION_20_19();
  sub_1BCBF4A78();
LABEL_95:
  v150 = OUTLINED_FUNCTION_16_23();
  OUTLINED_FUNCTION_17_19(v150);
  v151 = OUTLINED_FUNCTION_16_23();
  OUTLINED_FUNCTION_38_1(v151);
  if (v31)
  {
    v153 = 2;
  }

  else
  {
    v152 = OUTLINED_FUNCTION_21_19();
    memcpy(v152, v652, 0x918uLL);
    OUTLINED_FUNCTION_32_7();
    v153 = WeatherConditionBackgroundConfig.colliderBEnabled.getter() & 1;
  }

  v154 = v440;
  OUTLINED_FUNCTION_32_7();
  v155 = OUTLINED_FUNCTION_21_19();
  v156 = OUTLINED_FUNCTION_8_38(v155);
  OUTLINED_FUNCTION_3_50(v156, v157, v158, v159, v160, v161, v162, v163, v272, v288, v304, v320, v335, v350, __srcb, v380, v395, v410, v425, v440, v456, *v471, v471[4], v478, v490, SWORD1(v490), SBYTE4(v490), SHIWORD(v490), v507, *v514, v514[2], v520, v531, *v539, v539[2], *&v539[4], v551, *v558, v558[2], v564, v576, SWORD1(v576), SBYTE4(v576), SHIWORD(v576), v596[0], *&v596[2], v596[4], v606, v612, v616, *v621, v621[4], v625, v630, *v634, v634[2], v639, v644);
  OUTLINED_FUNCTION_2_53();
  OUTLINED_FUNCTION_32_7();
  v164 = WeatherConditionBackgroundConfig.colliderBEnabled.getter();
  if (v153 == 2 || ((v164 ^ v153) & 1) != 0)
  {
    v650[0] = 42;
    v165 = OUTLINED_FUNCTION_21_19();
    v166 = OUTLINED_FUNCTION_8_38(v165);
    OUTLINED_FUNCTION_3_50(v166, v167, v168, v169, v170, v171, v172, v173, v274, v290, v306, v322, v337, v352, __srcc, v382, v397, v412, v427, v442, v458, *v473, v473[4], v479, v492, SWORD1(v492), SBYTE4(v492), SHIWORD(v492), v509, *v515, v515[2], v521, v533, *&v538[1], v538[3], *&v538[5], v553, *v559, v559[2], v565, v578, SWORD1(v578), SBYTE4(v578), SHIWORD(v578), v598[0], *&v598[2], v598[4], v607, v613, v617, *v622, v622[4], v626, v631, *v635, v635[2], v640, v645);
    OUTLINED_FUNCTION_7_41(&v651[1653]);
    OUTLINED_FUNCTION_32_7();
    WeatherConditionBackgroundConfig.colliderBEnabled.getter();
    OUTLINED_FUNCTION_22_18();
    OUTLINED_FUNCTION_20_19();
    sub_1BCBF4A78();
  }

  v174 = OUTLINED_FUNCTION_21_19();
  OUTLINED_FUNCTION_17_19(v174);
  v175 = OUTLINED_FUNCTION_21_19();
  OUTLINED_FUNCTION_38_1(v175);
  if (v31)
  {
    v177 = 2;
  }

  else
  {
    v176 = OUTLINED_FUNCTION_22_18();
    memcpy(v176, v651, 0x918uLL);
    OUTLINED_FUNCTION_25_10();
    v177 = WeatherConditionBackgroundConfig.colliderCEnabled.getter() & 1;
  }

  OUTLINED_FUNCTION_25_10();
  v178 = OUTLINED_FUNCTION_22_18();
  v179 = OUTLINED_FUNCTION_8_38(v178);
  OUTLINED_FUNCTION_12_33(v179, v180, v181, v182, v183, v184, v185, v186, v274, v290, v306, v322, v337, v352, __srcc, v382, v397, v412, v427, v442, v458, *v473, v473[4], v492, v509, *v515, v515[2], v521, v533, *&v538[3], v553, *v559, v559[2], v578, *v598, v598[4]);
  v650[1636] = BYTE4(v493);
  v650[1637] = BYTE4(v443);
  v650[1638] = v493;
  v650[1639] = v599[0];
  v650[1640] = v127;
  v650[1641] = v19;
  v650[1642] = v126;
  v650[1643] = v138;
  v650[1644] = BYTE4(v579);
  v650[1645] = v154;
  v650[1646] = v613;
  v650[1647] = v622[4];
  v650[1648] = v631;
  v650[1649] = v635[2];
  v650[1650] = v645;
  v650[1651] = BYTE4(v534);
  v650[1652] = v579;
  OUTLINED_FUNCTION_2_53();
  OUTLINED_FUNCTION_25_10();
  v187 = WeatherConditionBackgroundConfig.colliderCEnabled.getter();
  if (v177 == 2)
  {
    v188 = BYTE4(v443);
  }

  else
  {
    v189 = v187 ^ v177;
    v188 = BYTE4(v443);
    if ((v189 & 1) == 0)
    {
      goto LABEL_108;
    }
  }

  v649[0] = 43;
  OUTLINED_FUNCTION_25_10();
  v190 = OUTLINED_FUNCTION_22_18();
  v191 = OUTLINED_FUNCTION_8_38(v190);
  OUTLINED_FUNCTION_12_33(v191, v192, v193, v194, v195, v196, v197, v198, v275, v291, v307, v323, v338, v353, __srcd, v383, v398, v413, v428, v443, v459, *v474, v474[4], v493, v510, *v516, v516[2], v522, v534, SHIDWORD(v534), v554, *v560, v560[2], v579, *v599, v599[4]);
  v650[1636] = BYTE4(v493);
  v650[1637] = v188;
  v650[1638] = v493;
  v650[1639] = v599[0];
  v650[1640] = v127;
  v650[1641] = v19;
  v650[1642] = v126;
  v650[1643] = v138;
  v650[1644] = BYTE4(v579);
  v650[1645] = v154;
  v650[1646] = v613;
  v650[1647] = v622[4];
  v650[1648] = v631;
  v650[1649] = v635[2];
  v650[1650] = v645;
  v650[1651] = BYTE4(v534);
  v650[1652] = v579;
  OUTLINED_FUNCTION_2_53();
  OUTLINED_FUNCTION_25_10();
  WeatherConditionBackgroundConfig.colliderCEnabled.getter();
  OUTLINED_FUNCTION_23_20();
  OUTLINED_FUNCTION_20_19();
  sub_1BCBF4A78();
LABEL_108:
  v199 = OUTLINED_FUNCTION_22_18();
  OUTLINED_FUNCTION_17_19(v199);
  v200 = OUTLINED_FUNCTION_22_18();
  OUTLINED_FUNCTION_38_1(v200);
  if (v31)
  {
    v202 = 2;
  }

  else
  {
    v201 = OUTLINED_FUNCTION_23_20();
    memcpy(v201, v650, 0x918uLL);
    OUTLINED_FUNCTION_26_12();
    v202 = WeatherConditionBackgroundConfig.colliderDEnabled.getter() & 1;
  }

  OUTLINED_FUNCTION_26_12();
  v203 = OUTLINED_FUNCTION_23_20();
  v204 = OUTLINED_FUNCTION_8_38(v203);
  OUTLINED_FUNCTION_13_27(v204, v205, v206, v207, v208, v209, v210, v211, v275, v291, v307, v323, v338, v353, __srcd, v383, v398, v413, v428, v443, v459, *v474, v474[4], v493, v510, *v516, v516[2], v534, v554, *v560, v560[2], v579, *v599, v599[4]);
  v649[1635] = v535;
  v649[1636] = BYTE4(v494);
  v649[1637] = v188;
  v649[1638] = v494;
  v649[1639] = v600[0];
  v649[1640] = v127;
  v649[1641] = v19;
  v649[1642] = v126;
  v649[1643] = v138;
  v649[1644] = BYTE4(v580);
  v649[1645] = v154;
  v649[1646] = v613;
  v649[1647] = v622[4];
  v649[1648] = v631;
  v649[1649] = v635[2];
  v649[1650] = v645;
  v649[1651] = BYTE4(v535);
  v649[1652] = v580;
  OUTLINED_FUNCTION_2_53();
  OUTLINED_FUNCTION_26_12();
  v212 = WeatherConditionBackgroundConfig.colliderDEnabled.getter();
  if (v202 == 2)
  {
    v213 = v535;
  }

  else
  {
    v214 = v212 ^ v202;
    v213 = v535;
    if ((v214 & 1) == 0)
    {
      goto LABEL_115;
    }
  }

  __dst[0] = 44;
  OUTLINED_FUNCTION_26_12();
  v215 = OUTLINED_FUNCTION_23_20();
  v216 = OUTLINED_FUNCTION_8_38(v215);
  OUTLINED_FUNCTION_13_27(v216, v217, v218, v219, v220, v221, v222, v223, v276, v292, v308, v324, v339, v354, __srce, v384, v399, v414, v429, v444, v460, *v475, v475[4], v494, v511, *v517, v517[2], v535, v555, *v561, v561[2], v580, *v600, v600[4]);
  v649[1635] = v213;
  v649[1636] = BYTE4(v494);
  v649[1637] = v188;
  v649[1638] = v494;
  v649[1639] = v600[0];
  v649[1640] = v127;
  v649[1641] = v19;
  v649[1642] = v126;
  v649[1643] = v138;
  v649[1644] = BYTE4(v580);
  v649[1645] = v154;
  v649[1646] = v613;
  v649[1647] = v622[4];
  v649[1648] = v631;
  v649[1649] = v635[2];
  v649[1650] = v645;
  v649[1651] = BYTE4(v535);
  v649[1652] = v580;
  OUTLINED_FUNCTION_2_53();
  OUTLINED_FUNCTION_26_12();
  WeatherConditionBackgroundConfig.colliderDEnabled.getter();
  OUTLINED_FUNCTION_20_19();
  sub_1BCBF4A78();
LABEL_115:
  v224 = OUTLINED_FUNCTION_23_20();
  OUTLINED_FUNCTION_17_19(v224);
  v225 = OUTLINED_FUNCTION_23_20();
  OUTLINED_FUNCTION_38_1(v225);
  if (v31)
  {
    v226 = 2;
  }

  else
  {
    memcpy(__dst, v649, 0x918uLL);
    v226 = WeatherConditionBackgroundConfig.colliderEEnabled.getter() & 1;
  }

  v227 = OUTLINED_FUNCTION_8_38(__dst);
  OUTLINED_FUNCTION_10_33(v227, v228, v229, v230, v231, v232, v233, v234, v276, v292, v308, v324, v339, v354, __srce, v384, v399, v414, v429, v444, v460, *v475, v475[4], v494, v511, *v517, v517[2], v535, v555, *v561, v561[2], v580, *v600, v600[4]);
  __dst[1635] = v536;
  __dst[1636] = BYTE4(v495);
  __dst[1637] = v188;
  __dst[1638] = v495;
  __dst[1639] = v601[0];
  __dst[1640] = v127;
  __dst[1641] = v19;
  __dst[1642] = v126;
  __dst[1643] = v138;
  __dst[1644] = BYTE4(v581);
  __dst[1645] = v154;
  __dst[1646] = v613;
  __dst[1647] = v622[4];
  __dst[1648] = v631;
  __dst[1649] = v635[2];
  __dst[1650] = v645;
  __dst[1651] = BYTE4(v536);
  __dst[1652] = v581;
  OUTLINED_FUNCTION_2_53();
  v235 = WeatherConditionBackgroundConfig.colliderEEnabled.getter();
  if (v226 == 2)
  {
    v236 = v536;
  }

  else
  {
    v237 = v235 ^ v226;
    v236 = v536;
    if ((v237 & 1) == 0)
    {
      goto LABEL_122;
    }
  }

  v647[0] = 45;
  v238 = OUTLINED_FUNCTION_8_38(__dst);
  OUTLINED_FUNCTION_10_33(v238, v239, v240, v241, v242, v243, v244, v245, v277, v293, v309, v325, v340, v355, __srcf, v385, v400, v415, v430, v445, v461, *v476, v476[4], v495, v512, *v518, v518[2], v536, v556, *v562, v562[2], v581, *v601, v601[4]);
  __dst[1635] = v236;
  __dst[1636] = BYTE4(v495);
  __dst[1637] = v188;
  __dst[1638] = v495;
  __dst[1639] = v601[0];
  __dst[1640] = v127;
  __dst[1641] = v19;
  __dst[1642] = v126;
  __dst[1643] = v138;
  __dst[1644] = BYTE4(v581);
  __dst[1645] = v154;
  __dst[1646] = v613;
  __dst[1647] = v622[4];
  __dst[1648] = v631;
  __dst[1649] = v635[2];
  __dst[1650] = v645;
  __dst[1651] = BYTE4(v536);
  __dst[1652] = v581;
  OUTLINED_FUNCTION_2_53();
  WeatherConditionBackgroundConfig.colliderEEnabled.getter();
  OUTLINED_FUNCTION_20_19();
  sub_1BCBF4A78();
LABEL_122:
  OUTLINED_FUNCTION_17_19(__dst);
  OUTLINED_FUNCTION_38_1(__dst);
  if (v31)
  {
    v246 = 2;
  }

  else
  {
    memcpy(v647, __dst, 0x918uLL);
    v246 = WeatherConditionBackgroundConfig.colliderFEnabled.getter() & 1;
  }

  v247 = OUTLINED_FUNCTION_8_38(v647);
  OUTLINED_FUNCTION_4_41(v247, v248, v249, v250, v251, v252, v253, v254, v277, v293, v309, v325, v340, v355, __srcf, v385, v400, v415, v430, v445, v461, *v476, v476[4], v480, v495, SWORD1(v495), SBYTE4(v495), SHIWORD(v495), v512, *v518, v518[2], v536, SBYTE4(v536), SHIWORD(v536), v556, *v562, v562[2], v566, v581, SWORD1(v581), SBYTE4(v581), SHIWORD(v581), v601[0], *&v601[2], v601[4], v608, v613, v617, *v622, v622[4], v626, v631, *v635, v635[2], v640, v645);
  OUTLINED_FUNCTION_2_53();
  result = WeatherConditionBackgroundConfig.colliderFEnabled.getter();
  if (v246 == 2 || ((result ^ v246) & 1) != 0)
  {
    v255 = OUTLINED_FUNCTION_8_38(v647);
    OUTLINED_FUNCTION_4_41(v255, v256, v257, v258, v259, v260, v261, v262, v278, v294, v310, v326, v341, v356, __srcg, v386, v401, v416, v431, v446, v462, *v477, v477[4], v481, v496, *v497, v497[2], v498, v513, *v519, v519[2], *v537, v537[4], v542, v557, *v563, v563[2], v567, v582, *v583, v583[2], v589, v602, *v603, v603[2], v609, v614, v618, *v623, v623[4], v627, v632, *v636, v636[2], v641, v646);
    OUTLINED_FUNCTION_7_41(&v647[1653]);
    WeatherConditionBackgroundConfig.colliderFEnabled.getter();
    OUTLINED_FUNCTION_20_19();
    return sub_1BCBF4A78();
  }

  return result;
}

uint64_t sub_1BCBF5B1C(uint64_t a1, char *a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v8 = *a2;
  v9 = &unk_1F3B4D898;
  if (*(a1 + 1632))
  {
    v9 = &unk_1F3B4D870;
  }

  if (*a2)
  {
    v10 = &unk_1F3B4D8C0;
  }

  else
  {
    v10 = v9;
  }

  v11 = v10[2];
  if (v11)
  {
    v12 = (v10 + 4);
    do
    {
      ++v12;
      OUTLINED_FUNCTION_18_18(a1, a2, a3, a4, a5, a6, a7, a8, v28, v30, v32[0]);
      OUTLINED_FUNCTION_19_21();
      v13 = OUTLINED_FUNCTION_34_8();
      v16 = sub_1BCBF5EBC(v13, v14, v15);
      OUTLINED_FUNCTION_18_18(v16, v17, v18, v19, v20, v21, v22, v23, v29, v31, v32[0]);
      OUTLINED_FUNCTION_19_21();
      if (v8)
      {
        LODWORD(a1) = sub_1BCBF93D0(v33, v32);
      }

      else
      {
        v24 = OUTLINED_FUNCTION_34_8();
        LODWORD(a1) = sub_1BCBF6654(v24, v25, v26);
      }

      --v11;
    }

    while (v11);
  }
}

uint64_t sub_1BCBF5C04(uint64_t result)
{
  if ((*(result + 104) & 1) == 0)
  {
    v1 = result;
    v30 = 38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07D90);
    inited = swift_initStackObject();
    v3 = vcvt_hight_f32_f64(vcvt_f32_f64(*v1), v1[1]);
    *(inited + 16) = xmmword_1BCE3E040;
    *(inited + 32) = v3;
    v4.n128_f64[0] = sub_1BC9A79F0();
    v24 = v4;
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0AE08);
    v29 = v5;
    v28[0] = OUTLINED_FUNCTION_28_7();
    OUTLINED_FUNCTION_14_19(v28[0], v24);
    __swift_destroy_boxed_opaque_existential_1(v28);
    v30 = 39;
    v6 = swift_initStackObject();
    OUTLINED_FUNCTION_35_7(v6, v1[3], v1[2], v7, v8, v9, v10, v11, v12, v13, v24.n128_i64[0], v24.n128_i64[1], xmmword_1BCE3E040);
    v25 = v14;
    v29 = v5;
    v28[0] = OUTLINED_FUNCTION_28_7();
    OUTLINED_FUNCTION_14_19(v28[0], v25);
    __swift_destroy_boxed_opaque_existential_1(v28);
    v30 = 40;
    v15 = swift_initStackObject();
    OUTLINED_FUNCTION_35_7(v15, v1[5], v1[4], v16, v17, v18, v19, v20, v21, v22, v25.n128_i64[0], v25.n128_i64[1], v26);
    v27 = v23;
    v29 = v5;
    v28[0] = OUTLINED_FUNCTION_28_7();
    OUTLINED_FUNCTION_14_19(v28[0], v27);
    return __swift_destroy_boxed_opaque_existential_1(v28);
  }

  return result;
}

uint64_t WeatherVFXEffect.applyOverrides(_:config:)(uint64_t result, uint64_t a2)
{
  v3 = *(result + 16);
  if (v3)
  {
    v4 = *(a2 + 1228);
    v5 = *(a2 + 1280);
    v6 = *(v2 + 40);
    v7 = *(v2 + 48);
    v8 = (result + 36);
    do
    {
      v9 = *v8;
      *&v10 = 0;
      *(&v10 + 1) = *(v8 - 1);
      v13 = v10;
      v16 = 1;
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0AE00);
      *v14 = swift_allocObject();
      *(*v14 + 16) = v13;
      sub_1BCBF4868(v6, v7);
      result = __swift_destroy_boxed_opaque_existential_1(v14);
      if (v5)
      {
        v11 = *(v2 + 24);
        v12 = *(v2 + 32);
        v16 = -80;
        v15 = MEMORY[0x1E69E6448];
        v14[0] = v4 + (((v4 + 16.0) - v4) * ((((v9 + -0.5) * (v9 + -0.5)) * -4.0) + 1.0));
        sub_1BCBF4868(v11, v12);
        result = __swift_destroy_boxed_opaque_existential_1(v14);
      }

      v8 += 2;
      --v3;
    }

    while (v3);
  }

  return result;
}

_BYTE *sub_1BCBF5EBC(_BYTE *result, uint64_t a2, _BYTE *a3)
{
  if (*result == 1)
  {
    v38 = *(a2 + 1980);
    v39 = *(a2 + 1984);
    v36 = *(a2 + 464);
    v37 = *(a2 + 480);
    v35 = *(a2 + 448);
    v33 = *(a2 + 440);
    v34 = *(a2 + 444);
    v32 = *(a2 + 436);
    v30 = *(a2 + 288);
    v31 = *(a2 + 304);
    v28 = *(a2 + 268);
    v26 = *(a2 + 272);
    v27 = *(a2 + 264);
    v29 = *(a2 + 256);
    v24 = *(a2 + 248);
    v25 = *(a2 + 244);
    v23 = *(a2 + 236);
    v9 = *(a2 + 164);
    v8 = *(a2 + 168);
    v10 = *(a2 + 160);
    v21 = *(a2 + 128);
    v22 = *(a2 + 144);
    v20 = *(a2 + 112);
    v11 = *(a2 + 104);
    v12 = *(a2 + 108);
    v14 = *(a2 + 96);
    v13 = *(a2 + 100);
    v15 = *(a2 + 88);
    v16 = *(a2 + 92);
    v5 = *(v3 + 24);
    v6 = *(v3 + 32);
    v43 = 87;
    v17 = MEMORY[0x1E69E6448];
    v42 = MEMORY[0x1E69E6448];
    LODWORD(v41[0]) = v15;
    sub_1BCBF4868(v5, v6);
    __swift_destroy_boxed_opaque_existential_1(v41);
    v43 = 88;
    v42 = v17;
    LODWORD(v41[0]) = v16;
    sub_1BCBF4868(v5, v6);
    __swift_destroy_boxed_opaque_existential_1(v41);
    v43 = 89;
    v42 = v17;
    LODWORD(v41[0]) = v14;
    sub_1BCBF4868(v5, v6);
    __swift_destroy_boxed_opaque_existential_1(v41);
    v43 = -43;
    v42 = v17;
    LODWORD(v41[0]) = v13;
    sub_1BCBF4868(v5, v6);
    __swift_destroy_boxed_opaque_existential_1(v41);
    v43 = 41;
    v42 = v17;
    LODWORD(v41[0]) = v12;
    sub_1BCBF4868(v5, v6);
    __swift_destroy_boxed_opaque_existential_1(v41);
    v43 = 42;
    v42 = v17;
    LODWORD(v41[0]) = v11;
    sub_1BCBF4868(v5, v6);
    __swift_destroy_boxed_opaque_existential_1(v41);
    v43 = 46;
    v42 = v17;
    LODWORD(v41[0]) = v10;
    sub_1BCBF4868(v5, v6);
    __swift_destroy_boxed_opaque_existential_1(v41);
    v43 = 47;
    v42 = v17;
    LODWORD(v41[0]) = v9;
    sub_1BCBF4868(v5, v6);
    __swift_destroy_boxed_opaque_existential_1(v41);
    v43 = 48;
    v42 = v17;
    LODWORD(v41[0]) = v8;
    sub_1BCBF4868(v5, v6);
    __swift_destroy_boxed_opaque_existential_1(v41);
    v43 = 43;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07DA8);
    v42 = v18;
    v41[0] = v20;
    sub_1BCBF4868(v5, v6);
    __swift_destroy_boxed_opaque_existential_1(v41);
    v43 = 44;
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0AE08);
    v42 = v19;
    v41[0] = swift_allocObject();
    *(v41[0] + 16) = v21;
    sub_1BCBF4868(v5, v6);
    __swift_destroy_boxed_opaque_existential_1(v41);
    v43 = 45;
    v42 = v19;
    v41[0] = swift_allocObject();
    *(v41[0] + 16) = v22;
    sub_1BCBF4868(v5, v6);
    __swift_destroy_boxed_opaque_existential_1(v41);
    v43 = -42;
    v42 = v17;
    LODWORD(v41[0]) = v23;
    sub_1BCBF4868(v5, v6);
    __swift_destroy_boxed_opaque_existential_1(v41);
    v43 = 59;
    v42 = v17;
    LODWORD(v41[0]) = v24;
    sub_1BCBF4868(v5, v6);
    __swift_destroy_boxed_opaque_existential_1(v41);
    v43 = 60;
    v42 = v17;
    LODWORD(v41[0]) = v25;
    sub_1BCBF4868(v5, v6);
    __swift_destroy_boxed_opaque_existential_1(v41);
    v43 = 64;
    v42 = v17;
    LODWORD(v41[0]) = v26;
    sub_1BCBF4868(v5, v6);
    __swift_destroy_boxed_opaque_existential_1(v41);
    v43 = 62;
    v42 = v17;
    LODWORD(v41[0]) = v27;
    sub_1BCBF4868(v5, v6);
    __swift_destroy_boxed_opaque_existential_1(v41);
    v43 = 63;
    v42 = v17;
    LODWORD(v41[0]) = v28;
    sub_1BCBF4868(v5, v6);
    __swift_destroy_boxed_opaque_existential_1(v41);
    v43 = 61;
    v42 = v18;
    v41[0] = v29;
    sub_1BCBF4868(v5, v6);
    __swift_destroy_boxed_opaque_existential_1(v41);
    v43 = 65;
    v42 = v19;
    v41[0] = swift_allocObject();
    *(v41[0] + 16) = v30;
    sub_1BCBF4868(v5, v6);
    __swift_destroy_boxed_opaque_existential_1(v41);
    v43 = 66;
    v42 = v19;
    v41[0] = swift_allocObject();
    *(v41[0] + 16) = v31;
    sub_1BCBF4868(v5, v6);
    __swift_destroy_boxed_opaque_existential_1(v41);
    v43 = -40;
    v42 = v17;
    LODWORD(v41[0]) = v32;
    sub_1BCBF4868(v5, v6);
    __swift_destroy_boxed_opaque_existential_1(v41);
    v43 = 105;
    v42 = v17;
    LODWORD(v41[0]) = v33;
    sub_1BCBF4868(v5, v6);
    __swift_destroy_boxed_opaque_existential_1(v41);
    v43 = 106;
    v42 = v17;
    LODWORD(v41[0]) = v34;
    sub_1BCBF4868(v5, v6);
    __swift_destroy_boxed_opaque_existential_1(v41);
    v43 = 107;
    v42 = v18;
    v41[0] = v35;
    sub_1BCBF4868(v5, v6);
    __swift_destroy_boxed_opaque_existential_1(v41);
    v43 = 108;
    v42 = v19;
    v41[0] = swift_allocObject();
    *(v41[0] + 16) = v36;
    sub_1BCBF4868(v5, v6);
    __swift_destroy_boxed_opaque_existential_1(v41);
    v43 = 109;
    v42 = v19;
    v41[0] = swift_allocObject();
    *(v41[0] + 16) = v37;
    sub_1BCBF4868(v5, v6);
    __swift_destroy_boxed_opaque_existential_1(v41);
    v43 = 57;
    v42 = v17;
    LODWORD(v41[0]) = v38;
    sub_1BCBF4868(v5, v6);
    __swift_destroy_boxed_opaque_existential_1(v41);
    v43 = 58;
    v42 = v17;
    LODWORD(v41[0]) = v39;
  }

  else
  {
    if (*result)
    {
      return result;
    }

    v4 = *(a2 + 80);
    v5 = *(v3 + 40);
    v6 = *(v3 + 48);
    if (*a3)
    {
      v7 = *(a2 + 48);
    }

    else
    {
      v7 = *(a2 + 32);
    }

    v40 = v7;
    v43 = 0;
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0AE00);
    v41[0] = swift_allocObject();
    *(v41[0] + 16) = v40;
    sub_1BCBF4868(v5, v6);
    __swift_destroy_boxed_opaque_existential_1(v41);
    v43 = 3;
    v42 = MEMORY[0x1E69E6448];
    LODWORD(v41[0]) = v4;
  }

  sub_1BCBF4868(v5, v6);
  return __swift_destroy_boxed_opaque_existential_1(v41);
}

_BYTE *sub_1BCBF6654(_BYTE *result, uint64_t a2, _BYTE *a3)
{
  v4 = *result;
  switch(v4)
  {
    case 24:
      v47 = *(a2 + 1552);
      v48 = *(a2 + 1528);
      v49 = *(a2 + 1520);
      v50 = *(a2 + 1512);
      v51 = *(a2 + 1508);
      v52 = *(a2 + 1504);
      v213 = *(a2 + 1488);
      v216 = *(a2 + 1536);
      v210 = *(a2 + 1472);
      v53 = *(a2 + 1456);
      v54 = *(a2 + 1448);
      v55 = *(a2 + 1444);
      v56 = *(a2 + 1440);
      v14 = *(v3 + 72);
      v15 = *(v3 + 80);
      v219 = 26;
      v57 = MEMORY[0x1E69E6448];
      v218 = MEMORY[0x1E69E6448];
      LODWORD(v217[0]) = v56;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = 27;
      v217[0] = v50;
      v217[1] = v49;

      MEMORY[0x1BFB2FB00](1735290926, 0xE400000000000000);
      v218 = MEMORY[0x1E69E6158];
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = 28;
      v218 = v57;
      LODWORD(v217[0]) = v55;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = 29;
      v218 = v57;
      LODWORD(v217[0]) = v54;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = 30;
      v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07DA8);
      v217[0] = v53;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = 31;
      v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0AE08);
      v218 = v58;
      v217[0] = swift_allocObject();
      *(v217[0] + 16) = v210;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = 32;
      v218 = v58;
      v217[0] = swift_allocObject();
      *(v217[0] + 16) = v213;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = 34;
      v218 = v57;
      LODWORD(v217[0]) = v51;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = 33;
      v218 = v57;
      LODWORD(v217[0]) = v52;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = 35;
      v218 = v57;
      LODWORD(v217[0]) = v48;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = 36;
      v218 = v58;
      v217[0] = swift_allocObject();
      *(v217[0] + 16) = v216;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = 37;
      v218 = v57;
      LODWORD(v217[0]) = v47;
      break;
    case 1:
      v63 = *(a2 + 1804);
      v62 = *(a2 + 1808);
      v166 = *(a2 + 2304);
      v164 = *(a2 + 2296);
      v161 = *(a2 + 2288);
      v158 = *(a2 + 2280);
      v157 = *(a2 + 2272);
      v154 = *(a2 + 2256);
      v152 = *(a2 + 2252);
      v150 = *(a2 + 2248);
      v148 = *(a2 + 2244);
      v147 = *(a2 + 2240);
      v146 = *(a2 + 2224);
      v145 = *(a2 + 2212);
      v144 = *(a2 + 2208);
      v143 = *(a2 + 2200);
      v141 = *(a2 + 2008);
      v140 = *(a2 + 2000);
      v139 = *(a2 + 1992);
      v138 = *(a2 + 1988);
      v201 = *(a2 + 1976);
      v199 = *(a2 + 1972);
      v197 = *(a2 + 1968);
      v195 = *(a2 + 1960);
      v193 = *(a2 + 1952);
      v191 = *(a2 + 1936);
      v188 = *(a2 + 1928);
      v186 = *(a2 + 1920);
      v185 = *(a2 + 1912);
      v184 = *(a2 + 1908);
      v182 = *(a2 + 1904);
      v181 = *(a2 + 1888);
      v180 = *(a2 + 1880);
      v142 = *(a2 + 1872);
      v179 = *(a2 + 1864);
      v178 = *(a2 + 1856);
      v177 = *(a2 + 1852);
      v176 = *(a2 + 1848);
      v11 = *(a2 + 172);
      LODWORD(v217[0]) = *(a2 + 176);
      v175 = *(a2 + 1844);
      v211 = *(a2 + 1824);
      v208 = *(a2 + 1368);
      v136 = *(a2 + 1236);
      v132 = *(a2 + 1128);
      v131 = *(a2 + 1120);
      v124 = *(a2 + 1000);
      v122 = *(a2 + 992);
      v115 = *(a2 + 872);
      v113 = *(a2 + 864);
      v214 = *(a2 + 744);
      v105 = *(a2 + 736);
      v12 = *(a2 + 400);
      v86 = *(a2 + 424);
      v87 = *(a2 + 408);
      v13 = *(a2 + 384);
      v14 = *(v3 + 24);
      v15 = *(v3 + 32);
      v219 = 49;
      v218 = MEMORY[0x1E69E6448];
      v16 = MEMORY[0x1E69E6448];
      v174 = *(a2 + 1840);
      v173 = *(a2 + 1836);
      v189 = *(a2 + 1832);
      v183 = *(a2 + 1828);
      v155 = *(a2 + 1800);
      v151 = *(a2 + 1796);
      v153 = *(a2 + 1792);
      v149 = *(a2 + 1776);
      v172 = *(a2 + 1740);
      v171 = *(a2 + 1736);
      v95 = *(a2 + 1616);
      v92 = *(a2 + 1584);
      v93 = *(a2 + 1600);
      v91 = *(a2 + 1568);
      v90 = *(a2 + 1564);
      v89 = *(a2 + 1560);
      v88 = *(a2 + 1556);
      v160 = *(a2 + 1408);
      v156 = *(a2 + 1392);
      v163 = *(a2 + 1376);
      v206 = *(a2 + 1360);
      v202 = *(a2 + 1348);
      v204 = *(a2 + 1352);
      v200 = *(a2 + 1344);
      v198 = *(a2 + 1328);
      v196 = *(a2 + 1312);
      v194 = *(a2 + 1304);
      v192 = *(a2 + 1300);
      v190 = *(a2 + 1296);
      v187 = *(a2 + 1288);
      v135 = *(a2 + 1232);
      v94 = *(a2 + 1228);
      v96 = *(a2 + 1224);
      v98 = *(a2 + 1220);
      v134 = *(a2 + 1216);
      v133 = *(a2 + 1200);
      v130 = *(a2 + 1136);
      v129 = *(a2 + 1116);
      v128 = *(a2 + 1112);
      v127 = *(a2 + 1104);
      v126 = *(a2 + 1096);
      v125 = *(a2 + 1088);
      v123 = *(a2 + 1072);
      v121 = *(a2 + 1008);
      v120 = *(a2 + 988);
      v119 = *(a2 + 984);
      v118 = *(a2 + 976);
      v117 = *(a2 + 968);
      v116 = *(a2 + 960);
      v114 = *(a2 + 944);
      v112 = *(a2 + 880);
      v111 = *(a2 + 860);
      v110 = *(a2 + 856);
      v108 = *(a2 + 840);
      v109 = *(a2 + 848);
      v107 = *(a2 + 832);
      v106 = *(a2 + 816);
      v104 = *(a2 + 752);
      v103 = *(a2 + 732);
      v102 = *(a2 + 728);
      v100 = *(a2 + 712);
      v101 = *(a2 + 720);
      v99 = *(a2 + 704);
      v97 = *(a2 + 688);
      v170 = *(a2 + 672);
      v169 = *(a2 + 664);
      v168 = *(a2 + 656);
      v167 = *(a2 + 640);
      v165 = *(a2 + 624);
      v162 = *(a2 + 612);
      v159 = *(a2 + 608);
      v75 = *(a2 + 576);
      v76 = *(a2 + 592);
      v74 = *(a2 + 568);
      v72 = *(a2 + 560);
      v73 = *(a2 + 564);
      v80 = *(a2 + 528);
      v81 = *(a2 + 544);
      v79 = *(a2 + 512);
      v77 = *(a2 + 500);
      v78 = *(a2 + 504);
      v71 = *(a2 + 496);
      v85 = *(a2 + 420);
      v83 = *(a2 + 432);
      v84 = *(a2 + 416);
      v82 = *(a2 + 392);
      v137 = *(a2 + 388);
      v70 = *(a2 + 368);
      v69 = *(a2 + 352);
      v66 = *(a2 + 336);
      v67 = *(a2 + 340);
      v68 = *(a2 + 328);
      v17 = *(a2 + 324);
      v18 = *(a2 + 320);
      v19 = *(a2 + 240);
      v20 = *(a2 + 228);
      v21 = *(a2 + 232);
      v22 = *(a2 + 224);
      v64 = *(a2 + 192);
      v65 = *(a2 + 208);
      v23 = *(a2 + 184);
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = 50;
      v218 = v16;
      LODWORD(v217[0]) = v11;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = 54;
      v218 = v16;
      LODWORD(v217[0]) = v22;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = 55;
      v218 = v16;
      LODWORD(v217[0]) = v20;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = 56;
      v218 = v16;
      LODWORD(v217[0]) = v21;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = 51;
      v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07DA8);
      v24 = v218;
      v217[0] = v23;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = 52;
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0AE08);
      v218 = v25;
      v217[0] = swift_allocObject();
      *(v217[0] + 16) = v64;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = 53;
      v218 = v25;
      v217[0] = swift_allocObject();
      *(v217[0] + 16) = v65;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = 75;
      v218 = MEMORY[0x1E69E6370];
      LOBYTE(v217[0]) = v13;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = 67;
      v218 = v16;
      LODWORD(v217[0]) = v17;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = 68;
      v218 = v16;
      LODWORD(v217[0]) = v18;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = 72;
      v218 = v16;
      LODWORD(v217[0]) = v19;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = 70;
      v218 = v16;
      LODWORD(v217[0]) = v66;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = 71;
      v218 = v16;
      LODWORD(v217[0]) = v67;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = 69;
      v218 = v24;
      v217[0] = v68;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = 73;
      v218 = v25;
      v217[0] = swift_allocObject();
      *(v217[0] + 16) = v69;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = 74;
      v218 = v25;
      v217[0] = swift_allocObject();
      *(v217[0] + 16) = v70;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = -41;
      v218 = v16;
      LODWORD(v217[0]) = v71;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = 115;
      v218 = v16;
      LODWORD(v217[0]) = v72;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = 116;
      v218 = v16;
      LODWORD(v217[0]) = v73;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = 117;
      v218 = v24;
      v217[0] = v74;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = 118;
      v218 = v25;
      v217[0] = swift_allocObject();
      *(v217[0] + 16) = v75;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = 119;
      v218 = v25;
      v217[0] = swift_allocObject();
      *(v217[0] + 16) = v76;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = 110;
      v218 = v16;
      LODWORD(v217[0]) = v77;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = 111;
      v218 = v16;
      LODWORD(v217[0]) = v78;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = 112;
      v218 = v24;
      v217[0] = v79;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = 113;
      v218 = v25;
      v217[0] = swift_allocObject();
      *(v217[0] + 16) = v80;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = 114;
      v218 = v25;
      v217[0] = swift_allocObject();
      *(v217[0] + 16) = v81;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = 78;
      v218 = v16;
      LODWORD(v217[0]) = v82;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = 79;
      v218 = MEMORY[0x1E69E6530];
      v26 = MEMORY[0x1E69E6530];
      v217[0] = v12;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = 86;
      v218 = v26;
      v217[0] = v86;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = -38;
      v218 = v16;
      LODWORD(v217[0]) = v83;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = 81;
      v218 = v26;
      v217[0] = v87;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = 82;
      v218 = v16;
      LODWORD(v217[0]) = v84;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = 83;
      v218 = v16;
      LODWORD(v217[0]) = v85;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = -39;
      v218 = v16;
      LODWORD(v217[0]) = v88;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = 99;
      v218 = v16;
      LODWORD(v217[0]) = v89;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = 100;
      v218 = v16;
      LODWORD(v217[0]) = v90;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = 101;
      v218 = v24;
      v217[0] = v91;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = 102;
      v218 = v25;
      v217[0] = swift_allocObject();
      *(v217[0] + 16) = v92;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = 103;
      v218 = v25;
      v217[0] = swift_allocObject();
      *(v217[0] + 16) = v93;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = 104;
      v218 = v24;
      v217[0] = v95;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = -80;
      v218 = v16;
      LODWORD(v217[0]) = v94;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = -81;
      v218 = v16;
      LODWORD(v217[0]) = v96;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = -82;
      v218 = v16;
      LODWORD(v217[0]) = v98;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = -120;
      v218 = v25;
      v217[0] = swift_allocObject();
      *(v217[0] + 16) = v97;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = -119;
      v218 = v16;
      LODWORD(v217[0]) = v99;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = -118;
      v218 = v24;
      v217[0] = v100;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = -117;
      v218 = v24;
      v217[0] = v101;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = -116;
      v218 = v16;
      LODWORD(v217[0]) = v102;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = -115;
      v218 = v16;
      LODWORD(v217[0]) = v103;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = -114;
      v27 = MEMORY[0x1E69E6370];
      v218 = MEMORY[0x1E69E6370];
      LOBYTE(v217[0]) = v105;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = -113;
      v218 = MEMORY[0x1E69E6530];
      v217[0] = v214;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = -112;
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0AE00);
      v218 = v28;
      v217[0] = swift_allocObject();
      *(v217[0] + 16) = v104;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = -111;
      v218 = v25;
      v217[0] = swift_allocObject();
      *(v217[0] + 16) = v106;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = -110;
      v218 = v16;
      LODWORD(v217[0]) = v107;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = -109;
      v218 = v24;
      v217[0] = v108;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = -108;
      v218 = v24;
      v217[0] = v109;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = -107;
      v29 = v16;
      v218 = v16;
      LODWORD(v217[0]) = v110;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = -106;
      v218 = v16;
      LODWORD(v217[0]) = v111;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = -105;
      v218 = v27;
      LOBYTE(v217[0]) = v113;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = -104;
      v218 = MEMORY[0x1E69E6530];
      v217[0] = v115;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = -103;
      v218 = v28;
      v217[0] = swift_allocObject();
      *(v217[0] + 16) = v112;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = -102;
      v30 = v25;
      v218 = v25;
      v217[0] = swift_allocObject();
      *(v217[0] + 16) = v114;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = -101;
      v218 = v29;
      LODWORD(v217[0]) = v116;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = -100;
      v218 = v24;
      v217[0] = v117;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = -99;
      v218 = v24;
      v217[0] = v118;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = -98;
      v218 = v29;
      LODWORD(v217[0]) = v119;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = -97;
      v218 = v29;
      LODWORD(v217[0]) = v120;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = -96;
      v31 = MEMORY[0x1E69E6370];
      v218 = MEMORY[0x1E69E6370];
      LOBYTE(v217[0]) = v122;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = -95;
      v32 = MEMORY[0x1E69E6530];
      v218 = MEMORY[0x1E69E6530];
      v217[0] = v124;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = -94;
      v218 = v28;
      v217[0] = swift_allocObject();
      *(v217[0] + 16) = v121;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = -93;
      v218 = v25;
      v217[0] = swift_allocObject();
      *(v217[0] + 16) = v123;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = -92;
      v33 = MEMORY[0x1E69E6448];
      v218 = MEMORY[0x1E69E6448];
      LODWORD(v217[0]) = v125;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = -91;
      v218 = v24;
      v217[0] = v126;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = -90;
      v218 = v24;
      v217[0] = v127;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = -89;
      v218 = v33;
      LODWORD(v217[0]) = v128;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = -88;
      v218 = v33;
      LODWORD(v217[0]) = v129;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = -87;
      v218 = v31;
      LOBYTE(v217[0]) = v131;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = -86;
      v218 = v32;
      v217[0] = v132;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = -85;
      v218 = v28;
      v217[0] = swift_allocObject();
      *(v217[0] + 16) = v130;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = -84;
      v218 = v30;
      v217[0] = swift_allocObject();
      *(v217[0] + 16) = v133;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = -83;
      v218 = v33;
      LODWORD(v217[0]) = v134;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = -82;
      v218 = v33;
      LODWORD(v217[0]) = v98;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = -81;
      v218 = v33;
      LODWORD(v217[0]) = v96;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = -80;
      v218 = v33;
      LODWORD(v217[0]) = v94;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = -79;
      v218 = v33;
      LODWORD(v217[0]) = v135;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = -78;
      v218 = v31;
      LOBYTE(v217[0]) = v136;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = 84;
      v218 = v33;
      LODWORD(v217[0]) = v138;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = 85;
      v218 = v33;
      LODWORD(v217[0]) = v139;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = 77;
      v218 = v24;
      v217[0] = v140;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = 80;
      v218 = v24;
      v217[0] = v141;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = -58;
      v218 = v24;
      v217[0] = v142;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = 76;
      v218 = v33;
      LODWORD(v217[0]) = v137;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = 127;
      v34 = MEMORY[0x1E69E6530];
      v218 = MEMORY[0x1E69E6530];
      v217[0] = v143;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = 0x80;
      v218 = v33;
      LODWORD(v217[0]) = v144;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = -127;
      v218 = v33;
      LODWORD(v217[0]) = v145;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = -126;
      v218 = v28;
      v217[0] = swift_allocObject();
      *(v217[0] + 16) = v146;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = -125;
      v218 = v33;
      LODWORD(v217[0]) = v147;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = -124;
      v218 = v33;
      LODWORD(v217[0]) = v148;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = -123;
      v218 = v33;
      LODWORD(v217[0]) = v150;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = -122;
      v218 = v33;
      LODWORD(v217[0]) = v152;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = -121;
      v218 = v30;
      v217[0] = swift_allocObject();
      *(v217[0] + 16) = v154;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = -22;
      v218 = v34;
      v217[0] = v157;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = -21;
      v218 = v34;
      v217[0] = v158;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = -20;
      v218 = v34;
      v217[0] = v161;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = -19;
      v218 = v34;
      v217[0] = v164;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = -18;
      v218 = v34;
      v217[0] = v166;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = 96;
      v218 = v28;
      v217[0] = swift_allocObject();
      *(v217[0] + 16) = v149;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = 94;
      v218 = v33;
      LODWORD(v217[0]) = v151;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = 93;
      v218 = v33;
      LODWORD(v217[0]) = v153;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = 95;
      v218 = v33;
      LODWORD(v217[0]) = v155;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = 91;
      v218 = v30;
      v217[0] = swift_allocObject();
      *(v217[0] + 16) = v156;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = 92;
      v218 = v30;
      v217[0] = swift_allocObject();
      *(v217[0] + 16) = v160;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = 90;
      v218 = v30;
      v217[0] = swift_allocObject();
      *(v217[0] + 16) = v163;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = 120;
      v218 = v33;
      LODWORD(v217[0]) = v159;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = 121;
      v218 = v33;
      LODWORD(v217[0]) = v162;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = 122;
      v218 = v30;
      v217[0] = swift_allocObject();
      *(v217[0] + 16) = v165;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = 123;
      v218 = v30;
      v217[0] = swift_allocObject();
      *(v217[0] + 16) = v167;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = 124;
      v218 = v24;
      v217[0] = v168;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = 125;
      v218 = v24;
      v217[0] = v169;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = 126;
      v218 = v24;
      v217[0] = v170;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = 20;
      v218 = v33;
      LODWORD(v217[0]) = v171;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = 21;
      v218 = v33;
      LODWORD(v217[0]) = v172;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = -65;
      v218 = v33;
      LODWORD(v217[0]) = v173;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = -64;
      v218 = v33;
      LODWORD(v217[0]) = v174;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = -63;
      v218 = v33;
      LODWORD(v217[0]) = v175;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = -62;
      v218 = v33;
      LODWORD(v217[0]) = v176;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = -61;
      v218 = v33;
      LODWORD(v217[0]) = v177;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = -60;
      v218 = v34;
      v217[0] = v178;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = -59;
      v218 = v33;
      LODWORD(v217[0]) = v179;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = -57;
      v218 = v33;
      LODWORD(v217[0]) = v180;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = -56;
      v218 = v30;
      v217[0] = swift_allocObject();
      *(v217[0] + 16) = v181;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = -55;
      v218 = v33;
      LODWORD(v217[0]) = v182;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = -54;
      v218 = v33;
      LODWORD(v217[0]) = v184;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = -53;
      v218 = v33;
      LODWORD(v217[0]) = v185;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = -52;
      v218 = v34;
      v217[0] = v186;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = -51;
      v218 = v33;
      LODWORD(v217[0]) = v188;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = -50;
      v218 = v30;
      v217[0] = swift_allocObject();
      *(v217[0] + 16) = v191;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = -49;
      v218 = v33;
      LODWORD(v217[0]) = v193;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = -48;
      v218 = v24;
      v217[0] = v195;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = -47;
      v218 = v33;
      LODWORD(v217[0]) = v183;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = -46;
      v218 = v33;
      LODWORD(v217[0]) = v197;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = -45;
      v218 = v33;
      LODWORD(v217[0]) = v199;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = -44;
      v218 = v33;
      LODWORD(v217[0]) = v201;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = -66;
      v218 = v33;
      LODWORD(v217[0]) = v189;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = -77;
      v218 = v24;
      v217[0] = v187;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = -76;
      v218 = v33;
      LODWORD(v217[0]) = v190;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = -75;
      v218 = v33;
      LODWORD(v217[0]) = v192;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = -74;
      v218 = v33;
      LODWORD(v217[0]) = v194;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = -73;
      v218 = v30;
      v217[0] = swift_allocObject();
      *(v217[0] + 16) = v196;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = -72;
      v218 = v30;
      v217[0] = swift_allocObject();
      *(v217[0] + 16) = v198;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = -71;
      v218 = v33;
      LODWORD(v217[0]) = v200;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = -70;
      v218 = v33;
      LODWORD(v217[0]) = v202;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = -69;
      v218 = v33;
      LODWORD(v217[0]) = v204;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = -68;
      v218 = v24;
      v217[0] = v206;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = -67;
      v218 = v34;
      v217[0] = v208;
      sub_1BCBF4868(v14, v15);
      result = __swift_destroy_boxed_opaque_existential_1(v217);
      if (v211 != 1)
      {
        return result;
      }

      v219 = 98;
      v218 = v28;
      v217[0] = swift_allocObject();
      *(v217[0] + 16) = v62;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = 97;
      v218 = v33;
      LODWORD(v217[0]) = v63;
      break;
    case 18:
      v212 = *(a2 + 1728);
      v209 = *(a2 + 1724);
      v35 = *(a2 + 1716);
      v203 = *(a2 + 1712);
      v36 = *(a2 + 1708);
      v37 = *(a2 + 1704);
      v205 = *(a2 + 1700);
      v207 = *(a2 + 1720);
      v38 = *(a2 + 1696);
      v215 = *(a2 + 1692);
      v39 = *(a2 + 1688);
      v40 = *(a2 + 1684);
      v41 = *(a2 + 1680);
      v42 = *(a2 + 1672);
      v43 = *(a2 + 1664);
      v44 = *(a2 + 1656);
      v14 = *(v3 + 56);
      v15 = *(v3 + 64);
      v219 = 6;
      v218 = MEMORY[0x1E69E6530];
      v217[0] = v42;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = 7;
      v45 = MEMORY[0x1E69E6448];
      v218 = MEMORY[0x1E69E6448];
      LODWORD(v217[0]) = v41;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = 8;
      v218 = v45;
      LODWORD(v217[0]) = v38;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = 9;
      v218 = v45;
      LODWORD(v217[0]) = v40;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = 10;
      v218 = v45;
      LODWORD(v217[0]) = v39;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = 11;
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07DA8);
      v218 = v46;
      v217[0] = v43;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = 12;
      v218 = v45;
      LODWORD(v217[0]) = v35;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = 13;
      v218 = v45;
      LODWORD(v217[0]) = v37;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = 14;
      v218 = v45;
      LODWORD(v217[0]) = v36;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = 15;
      v218 = v45;
      LODWORD(v217[0]) = v203;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = 16;
      v218 = v45;
      LODWORD(v217[0]) = v205;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = 17;
      v218 = v45;
      LODWORD(v217[0]) = v207;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = 18;
      v218 = v45;
      LODWORD(v217[0]) = v209;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = 19;
      v218 = v46;
      v217[0] = v212;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = 22;
      v218 = v45;
      LODWORD(v217[0]) = v215;
      sub_1BCBF4868(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = 23;
      v218 = MEMORY[0x1E69E6370];
      LOBYTE(v217[0]) = v44;
      break;
    default:
      if (*result)
      {
        return result;
      }

      v5 = *(a2 + 84);
      v6 = *(v3 + 40);
      v7 = *(v3 + 48);
      v8 = MEMORY[0x1E69E6448];
      if (*a3)
      {
        v9 = *(a2 + 68);
        v10 = *(a2 + 72);
        v219 = 2;
        v218 = MEMORY[0x1E69E6448];
        LODWORD(v217[0]) = v9;
        sub_1BCBF4868(v6, v7);
        __swift_destroy_boxed_opaque_existential_1(v217);
        v219 = 5;
        v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07DA8);
        v217[0] = v10;
      }

      else
      {
        v61 = *(a2 + 64);
        v219 = 2;
        v218 = MEMORY[0x1E69E6448];
        LODWORD(v217[0]) = v61;
        sub_1BCBF4868(v6, v7);
        __swift_destroy_boxed_opaque_existential_1(v217);
        v219 = 5;
        v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07DA8);
        v217[0] = sub_1BC9A7DFC(&unk_1F3B4D8E8);
      }

      sub_1BCBF4868(v6, v7);
      __swift_destroy_boxed_opaque_existential_1(v217);
      v219 = 4;
      v218 = v8;
      LODWORD(v217[0]) = v5;
      v59 = v6;
      v60 = v7;
      goto LABEL_14;
  }

  v59 = v14;
  v60 = v15;
LABEL_14:
  sub_1BCBF4868(v59, v60);
  return __swift_destroy_boxed_opaque_existential_1(v217);
}

_BYTE *sub_1BCBF93D0(_BYTE *result, uint64_t a2)
{
  if (*result == 1)
  {
    v3 = *(a2 + 2192);
    v20 = *(a2 + 2160);
    v21 = *(a2 + 2176);
    v4 = *(a2 + 2144);
    v5 = *(a2 + 2136);
    v6 = *(a2 + 2128);
    v7 = *(a2 + 2120);
    v8 = *(a2 + 2112);
    v18 = *(a2 + 2080);
    v19 = *(a2 + 2096);
    v16 = *(a2 + 2048);
    v17 = *(a2 + 2064);
    v14 = *(a2 + 2016);
    v15 = *(a2 + 2032);
    v9 = *(v2 + 24);
    v10 = *(v2 + 32);
    v24 = -36;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0AE08);
    v23 = v11;
    v22[0] = swift_allocObject();
    *(v22[0] + 16) = v14;
    sub_1BCBF4868(v9, v10);
    __swift_destroy_boxed_opaque_existential_1(v22);
    v24 = -35;
    v23 = v11;
    v22[0] = swift_allocObject();
    *(v22[0] + 16) = v15;
    sub_1BCBF4868(v9, v10);
    __swift_destroy_boxed_opaque_existential_1(v22);
    v24 = -34;
    v23 = v11;
    v22[0] = swift_allocObject();
    *(v22[0] + 16) = v16;
    sub_1BCBF4868(v9, v10);
    __swift_destroy_boxed_opaque_existential_1(v22);
    v24 = -33;
    v23 = v11;
    v22[0] = swift_allocObject();
    *(v22[0] + 16) = v17;
    sub_1BCBF4868(v9, v10);
    __swift_destroy_boxed_opaque_existential_1(v22);
    v24 = -32;
    v23 = v11;
    v22[0] = swift_allocObject();
    *(v22[0] + 16) = v18;
    sub_1BCBF4868(v9, v10);
    __swift_destroy_boxed_opaque_existential_1(v22);
    v24 = -31;
    v23 = v11;
    v22[0] = swift_allocObject();
    *(v22[0] + 16) = v19;
    sub_1BCBF4868(v9, v10);
    __swift_destroy_boxed_opaque_existential_1(v22);
    v24 = -30;
    v12 = MEMORY[0x1E69E6448];
    v23 = MEMORY[0x1E69E6448];
    LODWORD(v22[0]) = v8;
    sub_1BCBF4868(v9, v10);
    __swift_destroy_boxed_opaque_existential_1(v22);
    v24 = -29;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07DA8);
    v23 = v13;
    v22[0] = v7;
    sub_1BCBF4868(v9, v10);
    __swift_destroy_boxed_opaque_existential_1(v22);
    v24 = -28;
    v23 = v13;
    v22[0] = v6;
    sub_1BCBF4868(v9, v10);
    __swift_destroy_boxed_opaque_existential_1(v22);
    v24 = -27;
    v23 = v13;
    v22[0] = v5;
    sub_1BCBF4868(v9, v10);
    __swift_destroy_boxed_opaque_existential_1(v22);
    v24 = -26;
    v23 = v12;
    LODWORD(v22[0]) = v4;
    sub_1BCBF4868(v9, v10);
    __swift_destroy_boxed_opaque_existential_1(v22);
    v24 = -25;
    v23 = v11;
    v22[0] = swift_allocObject();
    *(v22[0] + 16) = v20;
    sub_1BCBF4868(v9, v10);
    __swift_destroy_boxed_opaque_existential_1(v22);
    v24 = -24;
    v23 = v11;
    v22[0] = swift_allocObject();
    *(v22[0] + 16) = v21;
    sub_1BCBF4868(v9, v10);
    __swift_destroy_boxed_opaque_existential_1(v22);
    v24 = -23;
    v23 = v12;
    LODWORD(v22[0]) = v3;
    sub_1BCBF4868(v9, v10);
    return __swift_destroy_boxed_opaque_existential_1(v22);
  }

  return result;
}

uint64_t sub_1BCBF97E8(uint64_t a1, char a2)
{
  result = sub_1BCBF4A78();
  if ((a2 & 1) == 0)
  {
    return sub_1BCBF4A78();
  }

  return result;
}

uint64_t sub_1BCBF9844(uint64_t a1)
{
  v1 = *(a1 + 23);
  switch(*(a1 + 23))
  {
    case 1:

      sub_1BCBF4A78();
      goto LABEL_7;
    default:
      sub_1BCE1E090();

      sub_1BCBF4A78();
      if (v1 == 3)
      {
        sub_1BCBF4A78();
      }

      else
      {
        if (v1 == 2)
        {
          OUTLINED_FUNCTION_27_6();
          sub_1BCBF4A78();
          return sub_1BCBF4A78();
        }

LABEL_7:
        OUTLINED_FUNCTION_27_6();
        sub_1BCBF4A78();
      }

      sub_1BCE1E090();
      return sub_1BCBF4A78();
  }
}

uint64_t sub_1BCBF99D8()
{
  sub_1BCBF4A78();
  sub_1BCBF4A78();
  sub_1BCBF4A78();
  sub_1BCBF4A78();
  sub_1BCBF4A78();
  sub_1BCBF4A78();
  sub_1BCBF4A78();
  return sub_1BCBF4A78();
}

uint64_t sub_1BCBF9AC0(uint64_t a1)
{
  v33 = *(a1 + 744);
  v2 = *(a1 + 768);
  v3 = *(a1 + 784);
  v4 = *(a1 + 792);
  v5 = *(a1 + 800);
  v39 = *(a1 + 872);
  v28 = *(a1 + 904);
  v36 = *(a1 + 912);
  v37 = *(a1 + 896);
  v6 = *(a1 + 920);
  v35 = *(a1 + 928);
  v45 = *(a1 + 1000);
  v31 = *(a1 + 1032);
  v42 = *(a1 + 1040);
  v43 = *(a1 + 1024);
  v7 = *(a1 + 1048);
  v41 = *(a1 + 1056);
  v49 = *(a1 + 1128);
  v34 = *(a1 + 1160);
  v47 = *(a1 + 1168);
  v48 = *(a1 + 1152);
  v8 = *(a1 + 1176);
  v46 = *(a1 + 1184);
  v52 = *(a1 + 1240);
  v29 = *(a1 + 1248);
  v51 = *(a1 + 1256);
  v40 = *(a1 + 1264);
  v50 = *(a1 + 1272);
  v56 = *(a1 + 776);
  v57 = v3;
  v53 = *(a1 + 1647);
  v58 = v4;
  v59 = v5;
  v54 = 13;
  v30 = *(a1 + 1648);
  v55 = v2;
  v32 = *(a1 + 1649);
  v38 = *(a1 + 1650);
  v44 = *(a1 + 1651);
  v9 = *(v1 + 88);
  v10 = *(v1 + 96);

  sub_1BCBF9F10(&v55, v9, v10, &v54, v33, 0, v30);

  v55 = v37;
  v56 = v28;
  v57 = v36;
  v58 = v6;
  v59 = v35;
  v11 = OUTLINED_FUNCTION_15_23(10);
  sub_1BCBF9F10(v11, v12, v13, v14, v39, 0, v32);

  v55 = v43;
  v56 = v31;
  v57 = v42;
  v58 = v7;
  v59 = v41;
  v15 = OUTLINED_FUNCTION_15_23(11);
  sub_1BCBF9F10(v15, v16, v17, v18, v45, 0, v38);

  v55 = v48;
  v56 = v34;
  v57 = v47;
  v58 = v8;
  v59 = v46;
  v19 = OUTLINED_FUNCTION_15_23(12);
  sub_1BCBF9F10(v19, v20, v21, v22, v49, 0, v44);

  v55 = v52;
  v56 = v29;
  v57 = v51;
  v58 = v40;
  v59 = v50;
  v23 = OUTLINED_FUNCTION_15_23(9);
  sub_1BCBF9F10(v23, v24, v25, v26, 1, 1, v53);
}

uint64_t sub_1BCBF9DCC()
{
  sub_1BCBF4A78();
  sub_1BCBF4A78();
  return sub_1BCBF4A78();
}

uint64_t sub_1BCBF9E30()
{
  sub_1BCBF4A78();
  sub_1BCBF4A78();
  sub_1BCBF4A78();
  sub_1BCBF4A78();
  return sub_1BCBF4A78();
}

void sub_1BCBF9F10(void *a1, uint64_t a2, int a3, unsigned __int8 *a4, uint64_t a5, int a6, uint64_t a7)
{
  LODWORD(v8) = a6;
  v108 = a5;
  v106 = a3;
  v105 = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09490);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v95 = &v94 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v107 = &v94 - v14;
  v15 = a1[4];
  if (!v15)
  {
    return;
  }

  if (v8)
  {
    v16 = 1;
  }

  else
  {
    v16 = 6;
  }

  if (v15 < 0)
  {
    goto LABEL_68;
  }

  v17 = a1[3];
  v99 = a1[2];
  v98 = v17;
  v100 = *a4;
  v114 = sub_1BCBFAB3C(0, v15);
  sub_1BCBFA9FC();
  v18 = v114;
  v118 = v114;
  v19 = *(v114 + 16) >= v16;
  v112 = v8;
  v109 = v16;
  v101 = a7;
  if (v19)
  {
LABEL_37:
    v39 = 0;
    v97 = 0x80000001BCE7FF30;
    *(&v40 + 1) = 2;
    v111 = xmmword_1BCE3E050;
    *&v40 = 136446978;
    v94 = v40;
    while (1)
    {
      if (v8)
      {
        v41 = 0;
        v42 = 0xE000000000000000;
        v114 = 0;
        v115 = 0xE000000000000000;
        v43 = 0x616C4264756F6C63;
        v44 = 0xEC00000074656B6ELL;
      }

      else
      {
        v114 = 95;
        v115 = 0xE100000000000000;
        v117 = v39;
        sub_1BCA28540();
        v45 = sub_1BCE1D340();
        MEMORY[0x1BFB2FB00](v45);

        v41 = v114;
        v42 = v115;
        v114 = 0;
        v115 = 0xE000000000000000;
        LOBYTE(v117) = v100;
        BoundEntity.rawValue.getter();
        v44 = v46;
      }

      MEMORY[0x1BFB2FB00](v43, v44);

      MEMORY[0x1BFB2FB00](0x6567616D49, 0xE500000000000000);
      MEMORY[0x1BFB2FB00](v41, v42);

      v48 = v114;
      v47 = v115;

      MEMORY[0x1BFB2FB00](1397706847, 0xE400000000000000);
      v49 = v114;
      v113 = v115;
      v114 = v48;
      v115 = v47;

      MEMORY[0x1BFB2FB00](1195724383, 0xE400000000000000);

      v51 = v114;
      v50 = v115;
      if ((a7 & 1) != 0 && v39 < v108)
      {
        if (!*(v118 + 16))
        {
          goto LABEL_63;
        }

        v102 = v49;
        v103 = v114;
        v110 = v115;
        v52 = *(v118 + 32);
        sub_1BCD1A218(0, 1);
        v53 = v99;
        v54 = v98;
        v114 = v99;
        v115 = v98;

        MEMORY[0x1BFB2FB00](95, 0xE100000000000000);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07880);
        v55 = swift_allocObject();
        *(v55 + 16) = v111;
        v56 = MEMORY[0x1E69E6530];
        *(v55 + 56) = MEMORY[0x1E69E6530];
        v57 = MEMORY[0x1E69E65A8];
        *(v55 + 64) = MEMORY[0x1E69E65A8];
        *(v55 + 32) = v52;
        v58 = sub_1BCE1D2B0();
        MEMORY[0x1BFB2FB00](v58);

        MEMORY[0x1BFB2FB00](95, 0xE100000000000000);
        MEMORY[0x1BFB2FB00](5459792, 0xE300000000000000);
        v60 = v114;
        v59 = v115;
        v114 = v53;
        v115 = v54;

        MEMORY[0x1BFB2FB00](95, 0xE100000000000000);
        v61 = swift_allocObject();
        *(v61 + 16) = v111;
        *(v61 + 56) = v56;
        *(v61 + 64) = v57;
        *(v61 + 32) = v52;
        v62 = sub_1BCE1D2B0();
        MEMORY[0x1BFB2FB00](v62);

        MEMORY[0x1BFB2FB00](95, 0xE100000000000000);
        MEMORY[0x1BFB2FB00](4670798, 0xE300000000000000);
        v64 = v114;
        v63 = v115;
        v65 = objc_opt_self();
        v66 = [v65 mainBundle];

        v67 = v107;
        v104 = v60;
        sub_1BCDBDB0C(v59, 0xE300000000000000, v107);

        v68 = sub_1BCE18E40();
        if (__swift_getEnumTagSinglePayload(v67, 1, v68) != 1)
        {
          v69 = v107;
          v96 = sub_1BCE18DF0();
          v71 = v70;
          v72 = *(*(v68 - 8) + 8);
          v72(v69, v68);
          v73 = [v65 mainBundle];

          v74 = v95;
          sub_1BCDBDB0C(v63, 0xE300000000000000, v95);

          if (__swift_getEnumTagSinglePayload(v74, 1, v68) != 1)
          {

            v88 = sub_1BCE18DF0();
            v89 = v74;
            v91 = v90;
            v72(v89, v68);
            v92 = MEMORY[0x1E69E6158];
            v116 = MEMORY[0x1E69E6158];
            v114 = v96;
            v115 = v71;
            v93 = v106;
            v8 = v105;
            sub_1BCBF48F0(v105, v106 & 1, v102, v113);

            __swift_destroy_boxed_opaque_existential_1(&v114);
            v116 = v92;
            v114 = v88;
            v115 = v91;
            sub_1BCBF48F0(v8, v93 & 1, v103, v110);

            __swift_destroy_boxed_opaque_existential_1(&v114);
            a7 = v101;
            LOBYTE(v8) = v112;
            v16 = v109;
            goto LABEL_55;
          }

          v67 = v74;
        }

        v75 = v64;

        sub_1BCB1E26C(v67);
        v16 = v109;
        if (qword_1EDA1EE78 != -1)
        {
          swift_once();
        }

        v76 = sub_1BCE1ACC0();
        __swift_project_value_buffer(v76, qword_1EDA1EE80);

        v77 = sub_1BCE1ACA0();
        v78 = sub_1BCE1D8B0();

        if (os_log_type_enabled(v77, v78))
        {
          v79 = swift_slowAlloc();
          v80 = swift_slowAlloc();
          v114 = v80;
          *v79 = v94;
          v81 = sub_1BC98FE38(v104, v59, &v114);

          *(v79 + 4) = v81;
          *(v79 + 12) = 2082;
          *(v79 + 14) = sub_1BC98FE38(7894123, 0xE300000000000000, &v114);
          *(v79 + 22) = 2082;
          v82 = sub_1BC98FE38(v75, v63, &v114);

          *(v79 + 24) = v82;
          *(v79 + 32) = 2082;
          *(v79 + 34) = sub_1BC98FE38(7894123, 0xE300000000000000, &v114);
          _os_log_impl(&dword_1BC940000, v77, v78, "Failed to load cloud assets for %{public}s.%{public}s, %{public}s.%{public}s", v79, 0x2Au);
          swift_arrayDestroy();
          MEMORY[0x1BFB31B10](v80, -1, -1);
          MEMORY[0x1BFB31B10](v79, -1, -1);
        }

        else
        {
        }

        a7 = v101;
      }

      else
      {
        v116 = MEMORY[0x1E69E6158];
        v114 = 0xD000000000000018;
        v83 = v49;
        v84 = a7;
        v85 = v97;
        v115 = v97;
        v86 = v106;
        v87 = v105;
        sub_1BCBF48F0(v105, v106 & 1, v83, v113);

        __swift_destroy_boxed_opaque_existential_1(&v114);
        v116 = MEMORY[0x1E69E6158];
        v114 = 0xD000000000000018;
        v115 = v85;
        a7 = v84;
        sub_1BCBF48F0(v87, v86 & 1, v51, v50);

        __swift_destroy_boxed_opaque_existential_1(&v114);
      }

      LOBYTE(v8) = v112;
LABEL_55:
      if (v16 == ++v39)
      {

        return;
      }
    }
  }

  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07970);
    v20 = swift_allocObject();
    v21 = _swift_stdlib_malloc_size_0(v20);
    v20[2] = v15;
    v20[3] = 2 * ((v21 - 32) / 8);
    v22 = v20 + 4;
    v23 = 4;
    do
    {
      v24 = v23 - 3;
      if (__OFADD__(v23 - 4, 1))
      {
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
        goto LABEL_67;
      }

      v20[v23] = v23 - 4;
      ++v23;
    }

    while (v24 != v15);
    v25 = v20[2];
    v26 = v25 - 2;
    if (v25 >= 2)
    {
      v27 = 0;
      do
      {
        v114 = 0;
        MEMORY[0x1BFB31B30](&v114, 8);
        v28 = (v114 * v25) >> 64;
        if (v25 > v114 * v25)
        {
          v29 = -v25 % v25;
          if (v29 > v114 * v25)
          {
            do
            {
              v114 = 0;
              MEMORY[0x1BFB31B30](&v114, 8);
            }

            while (v29 > v114 * v25);
            v28 = (v114 * v25) >> 64;
          }
        }

        v30 = __OFADD__(v27, v28);
        v31 = v27 + v28;
        if (v30)
        {
          goto LABEL_60;
        }

        if (v27 != v31)
        {
          v32 = v20[2];
          if (v27 >= v32)
          {
            goto LABEL_61;
          }

          if (v31 >= v32)
          {
            goto LABEL_62;
          }

          v33 = v22[v27];
          v22[v27] = v22[v31];
          v22[v31] = v33;
        }

        --v25;
      }

      while (v27++ != v26);
      v25 = v20[2];
    }

    v35 = *(v18 + 16);
    if (__OFADD__(v35, v25))
    {
      goto LABEL_64;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || (v35 + v25) > *(v18 + 24) >> 1)
    {
      sub_1BCB6562C();
      v18 = v36;
    }

    if (v20[2])
    {
      break;
    }

    if (v25)
    {
      goto LABEL_65;
    }

    v38 = *(v18 + 16);
LABEL_35:
    v16 = v109;
    if (v38 >= v109)
    {
      v118 = v18;
      a7 = v101;
      LOBYTE(v8) = v112;
      goto LABEL_37;
    }
  }

  v37 = *(v18 + 16);
  if ((*(v18 + 24) >> 1) - v37 < v25)
  {
    goto LABEL_66;
  }

  memcpy((v18 + 8 * v37 + 32), v20 + 4, 8 * v25);

  v38 = *(v18 + 16);
  if (!v25)
  {
    goto LABEL_35;
  }

  v30 = __OFADD__(v38, v25);
  v38 += v25;
  if (!v30)
  {
    *(v18 + 16) = v38;
    goto LABEL_35;
  }

LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
}