void static WK2_PrecipitationAmount.add(averageAmount:_:)()
{
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_75();
  v1 = *MEMORY[0x277D85DE8];

  static WK2_Quantiles.add(p50:_:)();
}

void static WK2_PrecipitationAmount.add(averageSnowfallAmount:_:)()
{
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_75();
  v1 = *MEMORY[0x277D85DE8];

  static WK2_Quantiles.add(p90:_:)();
}

void static WK2_Range.add(min:_:)()
{
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_75();
  v1 = *MEMORY[0x277D85DE8];

  static WK2_Quantiles.add(p10:_:)();
}

void static WK2_Range.add(max:_:)()
{
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_75();
  v1 = *MEMORY[0x277D85DE8];

  static WK2_Quantiles.add(p50:_:)();
}

uint64_t WK2_DailyWeatherStatistics.metadata.getter@<X0>(uint64_t a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 24);
  v4 = *(*v1 + 24);
  v5 = *(v4 + v3);
  v6 = __OFSUB__(v3, v5);
  v7 = v3 - v5;
  if (v6)
  {
    __break(1u);
    goto LABEL_10;
  }

  v8 = *(v1 + 8);
  if (*(v4 + v7) < 5u)
  {
    v10 = 0;
LABEL_6:
    v6 = __OFADD__(v10, v3);
    v11 = v10 + v3;
    if (!v6)
    {
      v12 = *(v4 + v11);
      v6 = __OFADD__(v11, v12);
      v13 = v11 + v12;
      if (!v6)
      {
        *a1 = result;
        *(a1 + 8) = v8;
        *(a1 + 24) = v13;
      }

      goto LABEL_11;
    }

LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v6 = __OFADD__(v7, 4);
  v9 = v7 + 4;
  if (!v6)
  {
    v10 = *(v4 + v9);
    goto LABEL_6;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t WK2_DailyWeatherStatistics.baselineStart.getter()
{
  v1 = v0[6];
  v2 = *(*v0 + 24);
  v3 = *(v2 + v1);
  v4 = __OFSUB__(v1, v3);
  v5 = v1 - v3;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    if (*(v2 + v5) < 7u)
    {
      return OUTLINED_FUNCTION_32_0();
    }

    v4 = __OFADD__(v5, 6);
    v6 = v5 + 6;
    if (!v4)
    {
      v7 = *(v2 + v6);
      if (v7)
      {
        v4 = __OFADD__(v7, v1);
        v8 = v7 + v1;
        if (!v4)
        {
          return *(v2 + v8);
        }

        goto LABEL_10;
      }

      return OUTLINED_FUNCTION_32_0();
    }
  }

  __break(1u);
LABEL_10:
  __break(1u);
  return result;
}

uint64_t WK2_DailyWeatherStatistics.hasDays.getter()
{
  v1 = v0[6];
  v2 = *(*v0 + 24);
  v3 = *(v2 + v1);
  v4 = __OFSUB__(v1, v3);
  v5 = v1 - v3;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    if (*(v2 + v5) < 9u)
    {
      return OUTLINED_FUNCTION_32_0();
    }

    v4 = __OFADD__(v5, 8);
    v6 = v5 + 8;
    if (!v4)
    {
      return *(v2 + v6) != 0;
    }
  }

  __break(1u);
  return result;
}

uint64_t WK2_DailyWeatherStatistics.daysCount.getter()
{
  v1 = v0[6];
  v2 = *(*v0 + 24);
  v3 = *(v2 + v1);
  v4 = __OFSUB__(v1, v3);
  v5 = v1 - v3;
  if (v4)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(v2 + v5) < 9u)
  {
    return OUTLINED_FUNCTION_32_0();
  }

  v4 = __OFADD__(v5, 8);
  v6 = v5 + 8;
  if (v4)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = *(v2 + v6);
  if (!v7)
  {
    return OUTLINED_FUNCTION_32_0();
  }

  v4 = __OFADD__(v7, v1);
  v8 = v7 + v1;
  if (!v4)
  {
    v9 = *(v2 + v8);
    v4 = __OFADD__(v8, v9);
    v10 = v8 + v9;
    if (!v4)
    {
      return *(v2 + v10);
    }

    goto LABEL_12;
  }

LABEL_11:
  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t WK2_DailyWeatherStatistics.days(at:)(int a1)
{
  result = *v1;
  v4 = *(v1 + 24);
  v5 = *(*v1 + 24);
  v6 = *(v5 + v4);
  v7 = __OFSUB__(v4, v6);
  v8 = v4 - v6;
  if (v7)
  {
    __break(1u);
    goto LABEL_15;
  }

  v9 = 0uLL;
  if (*(v5 + v8) < 9u)
  {
LABEL_12:
    v17 = 0;
    return OUTLINED_FUNCTION_51(v17, v9);
  }

  v7 = __OFADD__(v8, 8);
  v10 = v8 + 8;
  if (v7)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v11 = *(v5 + v10);
  if (!v11)
  {
    goto LABEL_12;
  }

  v7 = __OFADD__(v11, v4);
  v12 = v11 + v4;
  if (v7)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v13 = *(v5 + v12);
  v7 = __OFADD__(v12, v13);
  v14 = v12 + v13;
  if (v7)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v7 = __OFADD__(v14, 4);
  v15 = v14 + 4;
  if (v7)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if ((a1 - 0x20000000) >> 30 != 3)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v7 = __OFADD__(v15, 4 * a1);
  v16 = v15 + 4 * a1;
  if (v7)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!__OFADD__(v16, *(v5 + v16)))
  {
    v18 = *(v1 + 8);

    v9 = v18;
    return OUTLINED_FUNCTION_51(v17, v9);
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t WK2_DayOfYearWeatherStatistics.init(_:o:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  return result;
}

void static WK2_DailyWeatherStatistics.add(metadata:_:)()
{
  OUTLINED_FUNCTION_219();
  v22 = *MEMORY[0x277D85DE8];
  v5 = *v3;
  if (!*v3)
  {
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_58(v3, v4);
  if (v7 != v8)
  {
    OUTLINED_FUNCTION_38();
  }

  v9 = *(v0 + 16);
  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_29;
  }

  if (HIDWORD(v9))
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v10 = OUTLINED_FUNCTION_3(v6, v9);
  if (v7 != v8)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v10, v11, *(v0 + 24));
  }

  *(v0 + 16) = v2;
  if (HIDWORD(v2))
  {
    goto LABEL_30;
  }

  if (v2 - v5 == -4)
  {
    OUTLINED_FUNCTION_79();
    if (!v12)
    {
LABEL_27:
      v21 = *MEMORY[0x277D85DE8];
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  v13 = OUTLINED_FUNCTION_15();
  if (v7 != v8)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v13, v2, *(v0 + 24));
  }

  OUTLINED_FUNCTION_27();
  if (v7 != v8)
  {
    OUTLINED_FUNCTION_9();
    v14 = *(v1 + 32);
  }

  OUTLINED_FUNCTION_4(v14);
  if (!v12 & v15)
  {
LABEL_31:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v17 & 1) == 0)
  {
    if (*(v16 + 32))
    {
      OUTLINED_FUNCTION_57(v16);
      *(v18 + 4) = 4;
    }

    OUTLINED_FUNCTION_33(v16, *(v16 + 72), xmmword_272B87CB0);
    if (v20 <= 4)
    {
      LOWORD(v20) = 4;
    }

    *(v19 + 64) = v20;
    goto LABEL_27;
  }

  __break(1u);
}

void static WK2_DailyWeatherStatistics.add(baselineStart:_:)()
{
  OUTLINED_FUNCTION_219();
  v3 = v2;
  v5 = v4;
  v22 = *MEMORY[0x277D85DE8];
  if (!v4)
  {
    OUTLINED_FUNCTION_79();
    if (!v6)
    {
LABEL_20:
      v21 = *MEMORY[0x277D85DE8];
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  if (v3[8] <= 3)
  {
    OUTLINED_FUNCTION_38();
  }

  v7 = v3[2];
  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (HIDWORD(v7))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v8 = -*(v3 + 4);
  OUTLINED_FUNCTION_22();
  if (v11 != v12)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v9, v10, v3[3]);
  }

  v3[2] = v1;
  v13 = v1 + 4;
  v14 = *(v0 + 32);
  if (v14 < (v1 + 4))
  {
    OUTLINED_FUNCTION_9();
    v14 = *(v0 + 32);
  }

  *(*(v0 + 24) + v14 - v1 - 4) = v5;
  v3[2] = v13;
  if (v1 > 0xFFFFFFFB)
  {
LABEL_23:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v16 & 1) == 0)
  {
    v17 = *(v15 + 32);
    if (v17)
    {
      v18 = v17 + *(v15 + 80);
      *v18 = v13;
      *(v18 + 4) = 6;
    }

    OUTLINED_FUNCTION_33(v15, *(v15 + 72), xmmword_272B87CB0);
    if (v20 <= 6)
    {
      LOWORD(v20) = 6;
    }

    *(v19 + 64) = v20;
    goto LABEL_20;
  }

  __break(1u);
}

void static WK2_DailyWeatherStatistics.createDailyWeatherStatistics(_:metadataOffset:baselineStart:daysVectorOffset:)()
{
  OUTLINED_FUNCTION_219();
  v1 = v0;
  v3 = *v2;
  v5 = *v4;
  v6 = static WK2_DayOfYearWeatherStatistics.startDayOfYearWeatherStatistics(_:)();
  static WK2_DailyWeatherStatistics.add(metadata:_:)();
  static WK2_DailyWeatherStatistics.add(baselineStart:_:)();
  static WK2_DayOfYearWeatherStatistics.add(precipitation:_:)();
  *v1 = FlatBufferBuilder.endTable(at:)(v6);
  OUTLINED_FUNCTION_218();
}

void static WK2_DailyWeatherStatistics.verify<A>(_:at:of:)(int a1, unint64_t position)
{
  Verifier.visitTable(at:)(position, __src);
  if (!v2)
  {
    sub_272B5D67C(4, 0x617461646174656DLL, 0xE800000000000000, 1);
    v3 = 0;
    if (__src[2] >= 7)
    {
      v4 = __src[1] + 6;
      v5 = LOBYTE(__src[3]);
      if (LOBYTE(__src[3]) == 1 && ((*(__src[8] + 24) + v4) & 1) != 0)
      {
        *v20 = MEMORY[0x277D84C58];
        v9 = &qword_2808A3160;
        v10 = &unk_272B87CC0;
        goto LABEL_15;
      }

      OUTLINED_FUNCTION_76();
      v3 = 0;
      v6 = *(__src[8] + 24);
      v7 = *(v6 + v4);
      if (*(v6 + v4))
      {
        if (((v6 + LOBYTE(__src[0]) + v7) & 3) != 0)
        {
          v8 = v5;
        }

        else
        {
          v8 = 0;
        }

        if (v8 == 1)
        {
          *v20 = MEMORY[0x277D84CC0];
          v9 = &qword_2808A3170;
          v10 = &unk_272B89910;
LABEL_15:
          __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
          sub_272B87730();
          sub_272B5C86C();
          v11 = swift_allocError();
          OUTLINED_FUNCTION_7(v11, v12, v13, v14, v15, v16, v17, v18, *v20, *&v20[16], *&v20[32]);
LABEL_3:
          memcpy(v20, __src, sizeof(v20));
          sub_272B522C4(v20);
          return;
        }

        Verifier.rangeInBuffer(position:size:)(__src[0] + v7, 4);
        v3 = v19;
        if (v19)
        {
          goto LABEL_3;
        }
      }
    }

    sub_272B5D748(8, 1937334628, 0xE400000000000000, 1);
    if (!v3)
    {
      if (__OFSUB__(__src[7], 1))
      {
        __break(1u);
        return;
      }

      --__src[7];
    }

    goto LABEL_3;
  }
}

uint64_t WK2_DayOfYearWeatherStatistics.dayOfYear.getter()
{
  v1 = v0[6];
  v2 = *(*v0 + 24);
  v3 = *(v2 + v1);
  v4 = __OFSUB__(v1, v3);
  v5 = v1 - v3;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    if (*(v2 + v5) < 5u)
    {
      return OUTLINED_FUNCTION_32_0();
    }

    v4 = __OFADD__(v5, 4);
    v6 = v5 + 4;
    if (!v4)
    {
      v7 = *(v2 + v6);
      if (v7)
      {
        v4 = __OFADD__(v7, v1);
        v8 = v7 + v1;
        if (!v4)
        {
          return *(v2 + v8);
        }

        goto LABEL_10;
      }

      return OUTLINED_FUNCTION_32_0();
    }
  }

  __break(1u);
LABEL_10:
  __break(1u);
  return result;
}

uint64_t WK2_DayOfYearWeatherStatistics.temperature.getter()
{
  result = OUTLINED_FUNCTION_14();
  if (v5)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = 0uLL;
  if (*(v2 + v4) < 7u)
  {
LABEL_8:
    v10 = 0;
    return OUTLINED_FUNCTION_51(v10, v6);
  }

  v5 = __OFADD__(v4, 6);
  v7 = v4 + 6;
  if (v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = *(v2 + v7);
  if (!v8)
  {
    goto LABEL_8;
  }

  v5 = __OFADD__(v8, v3);
  v9 = v8 + v3;
  if (v5)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (!__OFADD__(v9, *(v2 + v9)))
  {
    v11 = *(v0 + 8);

    v6 = v11;
    return OUTLINED_FUNCTION_51(v10, v6);
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t WK2_DayOfYearWeatherStatistics.precipitation.getter()
{
  result = OUTLINED_FUNCTION_14();
  if (v5)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = 0uLL;
  if (*(v2 + v4) < 9u)
  {
LABEL_8:
    v10 = 0;
    return OUTLINED_FUNCTION_51(v10, v6);
  }

  v5 = __OFADD__(v4, 8);
  v7 = v4 + 8;
  if (v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = *(v2 + v7);
  if (!v8)
  {
    goto LABEL_8;
  }

  v5 = __OFADD__(v8, v3);
  v9 = v8 + v3;
  if (v5)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (!__OFADD__(v9, *(v2 + v9)))
  {
    v11 = *(v0 + 8);

    v6 = v11;
    return OUTLINED_FUNCTION_51(v10, v6);
  }

LABEL_13:
  __break(1u);
  return result;
}

unint64_t _s11WeatherData011WK2_MonthlyA10StatisticsV05startdaE0ys6UInt32VAA17FlatBufferBuilderVzFZ_0(unint64_t result)
{
  v1 = result;
  *(result + 40) = 1;
  v2 = *result;
  if (*(*result + 56) < *(*result + 80) + 24)
  {
    if (*(v2 + 48))
    {
LABEL_11:
      __break(1u);
      return result;
    }

    v3 = *(v2 + 32);
    if (v3)
    {
      MEMORY[0x2743D4FD0](v3, -1, -1);
    }

    v4 = swift_slowAlloc();
    *(v2 + 32) = v4;
    *(v2 + 40) = v4 + 24;
    *(v2 + 48) = 0;
    *(v2 + 56) = 24;
  }

  result = *(v1 + 16);
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (HIDWORD(result))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  return result;
}

void static WK2_DayOfYearWeatherStatistics.add(dayOfYear:_:)()
{
  OUTLINED_FUNCTION_219();
  v3 = v2;
  v5 = v4;
  v21 = *MEMORY[0x277D85DE8];
  if (!v4)
  {
    OUTLINED_FUNCTION_79();
    if (!v6)
    {
LABEL_20:
      v20 = *MEMORY[0x277D85DE8];
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  if (v3[8] <= 1)
  {
    v3[8] = 2;
    v3[3] = 2;
  }

  v7 = v3[2];
  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (HIDWORD(v7))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_22();
  if (v10 != v11)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v8, v9, v3[3]);
  }

  v3[2] = v1;
  v12 = v1 + 2;
  v13 = *(v0 + 32);
  if (v13 < (v1 + 2))
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(2, v1, v3[3]);
    v13 = *(v0 + 32);
  }

  *(*(v0 + 24) + v13 - v1 - 2) = v5;
  v3[2] = v12;
  if (v1 > 0xFFFFFFFD)
  {
LABEL_23:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v15 & 1) == 0)
  {
    v16 = *(v14 + 32);
    if (v16)
    {
      v17 = v16 + *(v14 + 80);
      *v17 = v12;
      *(v17 + 4) = 4;
    }

    OUTLINED_FUNCTION_33(v14, *(v14 + 72), xmmword_272B87CB0);
    if (v19 <= 4)
    {
      LOWORD(v19) = 4;
    }

    *(v18 + 64) = v19;
    goto LABEL_20;
  }

  __break(1u);
}

void static WK2_DayOfYearWeatherStatistics.add(temperature:_:)()
{
  OUTLINED_FUNCTION_219();
  v22 = *MEMORY[0x277D85DE8];
  v5 = *v3;
  if (!*v3)
  {
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_58(v3, v4);
  if (v7 != v8)
  {
    OUTLINED_FUNCTION_38();
  }

  v9 = *(v0 + 16);
  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_29;
  }

  if (HIDWORD(v9))
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v10 = OUTLINED_FUNCTION_3(v6, v9);
  if (v7 != v8)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v10, v11, *(v0 + 24));
  }

  *(v0 + 16) = v2;
  if (HIDWORD(v2))
  {
    goto LABEL_30;
  }

  if (v2 - v5 == -4)
  {
    OUTLINED_FUNCTION_79();
    if (!v12)
    {
LABEL_27:
      v21 = *MEMORY[0x277D85DE8];
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  v13 = OUTLINED_FUNCTION_15();
  if (v7 != v8)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v13, v2, *(v0 + 24));
  }

  OUTLINED_FUNCTION_27();
  if (v7 != v8)
  {
    OUTLINED_FUNCTION_9();
    v14 = *(v1 + 32);
  }

  OUTLINED_FUNCTION_4(v14);
  if (!v12 & v15)
  {
LABEL_31:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v17 & 1) == 0)
  {
    if (*(v16 + 32))
    {
      OUTLINED_FUNCTION_57(v16);
      *(v18 + 4) = 6;
    }

    OUTLINED_FUNCTION_33(v16, *(v16 + 72), xmmword_272B87CB0);
    if (v20 <= 6)
    {
      LOWORD(v20) = 6;
    }

    *(v19 + 64) = v20;
    goto LABEL_27;
  }

  __break(1u);
}

void static WK2_DayOfYearWeatherStatistics.add(precipitation:_:)()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D85DE8];

  sub_272B7596C();
}

void sub_272B7596C()
{
  OUTLINED_FUNCTION_219();
  v22 = *MEMORY[0x277D85DE8];
  v5 = *v3;
  if (!*v3)
  {
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_58(v3, v4);
  if (v7 != v8)
  {
    OUTLINED_FUNCTION_38();
  }

  v9 = *(v0 + 16);
  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_29;
  }

  if (HIDWORD(v9))
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v10 = OUTLINED_FUNCTION_3(v6, v9);
  if (v7 != v8)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v10, v11, *(v0 + 24));
  }

  *(v0 + 16) = v2;
  if (HIDWORD(v2))
  {
    goto LABEL_30;
  }

  if (v2 - v5 == -4)
  {
    OUTLINED_FUNCTION_79();
    if (!v12)
    {
LABEL_27:
      v21 = *MEMORY[0x277D85DE8];
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  v13 = OUTLINED_FUNCTION_15();
  if (v7 != v8)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v13, v2, *(v0 + 24));
  }

  OUTLINED_FUNCTION_27();
  if (v7 != v8)
  {
    OUTLINED_FUNCTION_9();
    v14 = *(v1 + 32);
  }

  OUTLINED_FUNCTION_4(v14);
  if (!v12 & v15)
  {
LABEL_31:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v17 & 1) == 0)
  {
    if (*(v16 + 32))
    {
      OUTLINED_FUNCTION_57(v16);
      *(v18 + 4) = 8;
    }

    OUTLINED_FUNCTION_33(v16, *(v16 + 72), xmmword_272B87CB0);
    if (v20 <= 8)
    {
      LOWORD(v20) = 8;
    }

    *(v19 + 64) = v20;
    goto LABEL_27;
  }

  __break(1u);
}

uint64_t static WK2_DayOfYearWeatherStatistics.endDayOfYearWeatherStatistics(_:start:)@<X0>(Swift::UInt32 at@<W1>, _DWORD *a2@<X8>)
{
  result = FlatBufferBuilder.endTable(at:)(at);
  *a2 = result;
  return result;
}

void static WK2_DayOfYearWeatherStatistics.createDayOfYearWeatherStatistics(_:dayOfYear:temperatureOffset:precipitationOffset:)()
{
  OUTLINED_FUNCTION_219();
  v1 = v0;
  v3 = *v2;
  v5 = *v4;
  v6 = static WK2_DayOfYearWeatherStatistics.startDayOfYearWeatherStatistics(_:)();
  static WK2_DayOfYearWeatherStatistics.add(dayOfYear:_:)();
  static WK2_DayOfYearWeatherStatistics.add(temperature:_:)();
  static WK2_DayOfYearWeatherStatistics.add(precipitation:_:)();
  *v1 = FlatBufferBuilder.endTable(at:)(v6);
  OUTLINED_FUNCTION_218();
}

void static WK2_DayOfYearWeatherStatistics.verify<A>(_:at:of:)(int a1, unint64_t position)
{
  Verifier.visitTable(at:)(position, __src);
  if (!v2)
  {
    if (__src[2] >= 5)
    {
      v3 = __src[1] + 4;
      v4 = LOBYTE(__src[3]);
      if (LOBYTE(__src[3]) == 1 && ((*(__src[8] + 24) + v3) & 1) != 0)
      {
        *v16 = MEMORY[0x277D84C58];
        v6 = &qword_2808A3160;
        v7 = &unk_272B87CC0;
        goto LABEL_9;
      }

      OUTLINED_FUNCTION_76();
      v5 = *(__src[8] + 24);
      if (*(v5 + v3))
      {
        if ((v4 & (v5 + LODWORD(__src[0]) + *(v5 + v3))) == 1)
        {
          *v16 = MEMORY[0x277D84958];
          v6 = qword_2808A3220;
          v7 = &qword_272B89920;
LABEL_9:
          __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
          sub_272B87730();
          sub_272B5C86C();
          v8 = swift_allocError();
          OUTLINED_FUNCTION_7(v8, v9, v10, v11, v12, v13, v14, v15, *v16, *&v16[16], *&v16[32]);
LABEL_13:
          memcpy(v16, __src, sizeof(v16));
          sub_272B522C4(v16);
          return;
        }

        OUTLINED_FUNCTION_76();
      }
    }

    sub_272B5D6F0(6, 0x74617265706D6574, 0xEB00000000657275, 0);
    sub_272B5D71C(8, 0x7469706963657270, 0xED00006E6F697461, 0);
    if (__OFSUB__(__src[7], 1))
    {
      __break(1u);
      return;
    }

    --__src[7];
    goto LABEL_13;
  }
}

void static WK2_DailyWeatherStatistics.addVectorOf(days:_:)()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D85DE8];

  static WK2_DayOfYearWeatherStatistics.add(precipitation:_:)();
}

unint64_t sub_272B75E60()
{
  result = qword_2808A3338;
  if (!qword_2808A3338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808A3338);
  }

  return result;
}

unint64_t sub_272B75EB8()
{
  result = qword_2808A3340;
  if (!qword_2808A3340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808A3340);
  }

  return result;
}

unint64_t sub_272B75F10()
{
  result = qword_2808A3348;
  if (!qword_2808A3348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808A3348);
  }

  return result;
}

unint64_t sub_272B75F68()
{
  result = qword_2808A3350;
  if (!qword_2808A3350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808A3350);
  }

  return result;
}

unint64_t sub_272B75FC0()
{
  result = qword_2808A3358;
  if (!qword_2808A3358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808A3358);
  }

  return result;
}

unint64_t sub_272B76018()
{
  result = qword_2808A3360[0];
  if (!qword_2808A3360[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2808A3360);
  }

  return result;
}

_BYTE *sub_272B76098(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = OUTLINED_FUNCTION_182(result, a2 + 4);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_272B7616C(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *sub_272B761F4(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = OUTLINED_FUNCTION_182(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WK2_WeatherCondition(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF0)
  {
    if (a2 + 16 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 16) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 17;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v5 = v6 - 17;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for WK2_WeatherCondition(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t WK2_DailySummary.metadata.getter@<X0>(uint64_t a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 24);
  v4 = *(*v1 + 24);
  v5 = *(v4 + v3);
  v6 = __OFSUB__(v3, v5);
  v7 = v3 - v5;
  if (v6)
  {
    __break(1u);
    goto LABEL_10;
  }

  v8 = *(v1 + 8);
  if (*(v4 + v7) < 5u)
  {
    v10 = 0;
LABEL_6:
    v6 = __OFADD__(v10, v3);
    v11 = v10 + v3;
    if (!v6)
    {
      v12 = *(v4 + v11);
      v6 = __OFADD__(v11, v12);
      v13 = v11 + v12;
      if (!v6)
      {
        *a1 = result;
        *(a1 + 8) = v8;
        *(a1 + 24) = v13;
      }

      goto LABEL_11;
    }

LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v6 = __OFADD__(v7, 4);
  v9 = v7 + 4;
  if (!v6)
  {
    v10 = *(v4 + v9);
    goto LABEL_6;
  }

LABEL_12:
  __break(1u);
  return result;
}

void WK2_DailySummary.startDate.getter()
{
  OUTLINED_FUNCTION_103();
  if (v3)
  {
    __break(1u);
  }

  else
  {
    if (*(v0 + v2) < 7u)
    {
      goto LABEL_7;
    }

    v3 = __OFADD__(v2, 6);
    v4 = v2 + 6;
    if (!v3)
    {
      v5 = *(v0 + v4);
      if (v5)
      {
        if (!__OFADD__(v5, v1))
        {
          OUTLINED_FUNCTION_112(v0);
          return;
        }

        goto LABEL_10;
      }

LABEL_7:
      OUTLINED_FUNCTION_32_0();
      return;
    }
  }

  __break(1u);
LABEL_10:
  __break(1u);
}

void WK2_DailySummary.endDate.getter()
{
  OUTLINED_FUNCTION_103();
  if (v3)
  {
    __break(1u);
  }

  else
  {
    if (*(v0 + v2) < 9u)
    {
      goto LABEL_7;
    }

    v3 = __OFADD__(v2, 8);
    v4 = v2 + 8;
    if (!v3)
    {
      v5 = *(v0 + v4);
      if (v5)
      {
        if (!__OFADD__(v5, v1))
        {
          OUTLINED_FUNCTION_112(v0);
          return;
        }

        goto LABEL_10;
      }

LABEL_7:
      OUTLINED_FUNCTION_32_0();
      return;
    }
  }

  __break(1u);
LABEL_10:
  __break(1u);
}

uint64_t WK2_DailySummary.hasDays.getter()
{
  v1 = v0[6];
  v2 = *(*v0 + 24);
  v3 = *(v2 + v1);
  v4 = __OFSUB__(v1, v3);
  v5 = v1 - v3;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    if (*(v2 + v5) < 0xBu)
    {
      return OUTLINED_FUNCTION_32_0();
    }

    v4 = __OFADD__(v5, 10);
    v6 = v5 + 10;
    if (!v4)
    {
      return *(v2 + v6) != 0;
    }
  }

  __break(1u);
  return result;
}

void WK2_DailySummary.daysCount.getter()
{
  OUTLINED_FUNCTION_103();
  if (v3)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(v0 + v2) < 0xBu)
  {
LABEL_8:
    OUTLINED_FUNCTION_32_0();
    return;
  }

  v3 = __OFADD__(v2, 10);
  v4 = v2 + 10;
  if (v3)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v5 = *(v0 + v4);
  if (!v5)
  {
    goto LABEL_8;
  }

  v3 = __OFADD__(v5, v1);
  v6 = v5 + v1;
  if (!v3)
  {
    if (!__OFADD__(v6, *(v0 + v6)))
    {
      OUTLINED_FUNCTION_112(v0);
      return;
    }

    goto LABEL_12;
  }

LABEL_11:
  __break(1u);
LABEL_12:
  __break(1u);
}

uint64_t WK2_DailySummary.days(at:)@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  result = *v2;
  v6 = *(v2 + 24);
  v7 = *(*v2 + 24);
  v8 = *(v7 + v6);
  v9 = __OFSUB__(v6, v8);
  v10 = v6 - v8;
  if (v9)
  {
    __break(1u);
    goto LABEL_15;
  }

  v11 = 0uLL;
  if (*(v7 + v10) < 0xBu)
  {
LABEL_12:
    result = 0;
    v20 = 0;
    goto LABEL_13;
  }

  v9 = __OFADD__(v10, 10);
  v12 = v10 + 10;
  if (v9)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v13 = *(v7 + v12);
  if (!v13)
  {
    goto LABEL_12;
  }

  v9 = __OFADD__(v13, v6);
  v14 = v13 + v6;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v15 = *(v7 + v14);
  v9 = __OFADD__(v14, v15);
  v16 = v14 + v15;
  if (v9)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v9 = __OFADD__(v16, 4);
  v17 = v16 + 4;
  if (v9)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if ((a1 - 0x20000000) >> 30 != 3)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v9 = __OFADD__(v17, 4 * a1);
  v18 = v17 + 4 * a1;
  if (v9)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v19 = *(v7 + v18);
  v20 = v18 + v19;
  if (!__OFADD__(v18, v19))
  {
    v21 = *(v2 + 8);

    v11 = v21;
LABEL_13:
    *a2 = result;
    *(a2 + 8) = v11;
    *(a2 + 24) = v20;
    return result;
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t WK2_DaySummary.init(_:o:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  return result;
}

unint64_t static WK2_DailySummary.startDailySummary(_:)(_BYTE *a1)
{
  result = OUTLINED_FUNCTION_25(a1);
  if (*(v2 + 56) < v4 + 32)
  {
    if (*(v2 + 48))
    {
LABEL_11:
      __break(1u);
      return result;
    }

    v5 = *(v2 + 32);
    if (v5)
    {
      MEMORY[0x2743D4FD0](v5, -1, -1);
    }

    v6 = swift_slowAlloc();
    *(v2 + 32) = v6;
    *(v2 + 40) = v6 + 32;
    *(v2 + 48) = 0;
    *(v2 + 56) = 32;
  }

  result = *(v1 + 16);
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (HIDWORD(result))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  return result;
}

void static WK2_DailySummary.add(metadata:_:)(unsigned int *a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  if (!v4)
  {
    goto LABEL_26;
  }

  if (a2[8] < 4)
  {
    OUTLINED_FUNCTION_38();
  }

  v6 = a2[2];
  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_28;
  }

  if (HIDWORD(v6))
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v7 = OUTLINED_FUNCTION_3(a1, v6);
  if (v9 != v10)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v7, v8, a2[3]);
  }

  a2[2] = v3;
  if (HIDWORD(v3))
  {
    goto LABEL_29;
  }

  if (v3 - v4 == -4)
  {
    OUTLINED_FUNCTION_79();
    if (!v11)
    {
LABEL_26:
      v22 = *MEMORY[0x277D85DE8];
      return;
    }
  }

  v12 = OUTLINED_FUNCTION_15();
  if (v9 != v10)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v12, v3, a2[3]);
  }

  OUTLINED_FUNCTION_27();
  if (v9 != v10)
  {
    v14 = OUTLINED_FUNCTION_83();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v14, v4, v15);
    v13 = *(v2 + 32);
  }

  OUTLINED_FUNCTION_4(v13);
  if (!v11 & v16)
  {
LABEL_30:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v18 & 1) == 0)
  {
    if (*(v17 + 32))
    {
      OUTLINED_FUNCTION_12_0(v17);
      *v19 = v3;
      *(v19 + 4) = 4;
    }

    OUTLINED_FUNCTION_33(v17, *(v17 + 72), xmmword_272B87CB0);
    if (v21 <= 4)
    {
      LOWORD(v21) = 4;
    }

    *(v20 + 64) = v21;
    goto LABEL_26;
  }

  __break(1u);
}

void static WK2_DailySummary.add(startDate:_:)(int a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    OUTLINED_FUNCTION_79();
    if (!v6)
    {
LABEL_22:
      v22 = *MEMORY[0x277D85DE8];
      return;
    }
  }

  OUTLINED_FUNCTION_95();
  if (v8 ^ v9 | v6)
  {
    OUTLINED_FUNCTION_38();
  }

  v10 = *(a2 + 16);
  if ((v10 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (HIDWORD(v10))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v11 = OUTLINED_FUNCTION_6(v7, v10);
  if (v8 != v9)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v11, v12, *(a2 + 24));
  }

  OUTLINED_FUNCTION_26();
  if (v8 != v9)
  {
    v14 = OUTLINED_FUNCTION_83();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v14, v3, v15);
    v13 = *(v2 + 32);
  }

  OUTLINED_FUNCTION_5(v13);
  if (!v6 & v16)
  {
LABEL_25:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v18 & 1) == 0)
  {
    if (*(v17 + 32))
    {
      OUTLINED_FUNCTION_12_0(v17);
      *v19 = v4;
      *(v19 + 4) = 6;
    }

    OUTLINED_FUNCTION_33(v17, *(v17 + 72), xmmword_272B87CB0);
    if (v21 <= 6)
    {
      LOWORD(v21) = 6;
    }

    *(v20 + 64) = v21;
    goto LABEL_22;
  }

  __break(1u);
}

void static WK2_DailySummary.add(endDate:_:)(int a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    OUTLINED_FUNCTION_79();
    if (!v6)
    {
LABEL_22:
      v22 = *MEMORY[0x277D85DE8];
      return;
    }
  }

  OUTLINED_FUNCTION_95();
  if (v8 ^ v9 | v6)
  {
    OUTLINED_FUNCTION_38();
  }

  v10 = *(a2 + 16);
  if ((v10 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (HIDWORD(v10))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v11 = OUTLINED_FUNCTION_6(v7, v10);
  if (v8 != v9)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v11, v12, *(a2 + 24));
  }

  OUTLINED_FUNCTION_26();
  if (v8 != v9)
  {
    v14 = OUTLINED_FUNCTION_83();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v14, v3, v15);
    v13 = *(v2 + 32);
  }

  OUTLINED_FUNCTION_5(v13);
  if (!v6 & v16)
  {
LABEL_25:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v18 & 1) == 0)
  {
    if (*(v17 + 32))
    {
      OUTLINED_FUNCTION_12_0(v17);
      *v19 = v4;
      *(v19 + 4) = 8;
    }

    OUTLINED_FUNCTION_33(v17, *(v17 + 72), xmmword_272B87CB0);
    if (v21 <= 8)
    {
      LOWORD(v21) = 8;
    }

    *(v20 + 64) = v21;
    goto LABEL_22;
  }

  __break(1u);
}

void static WK2_DailySummary.addVectorOf(days:_:)(unsigned int *a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  if (!v4)
  {
    goto LABEL_26;
  }

  if (a2[8] < 4)
  {
    OUTLINED_FUNCTION_38();
  }

  v6 = a2[2];
  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_28;
  }

  if (HIDWORD(v6))
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v7 = OUTLINED_FUNCTION_3(a1, v6);
  if (v9 != v10)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v7, v8, a2[3]);
  }

  a2[2] = v3;
  if (HIDWORD(v3))
  {
    goto LABEL_29;
  }

  if (v3 - v4 == -4)
  {
    OUTLINED_FUNCTION_79();
    if (!v11)
    {
LABEL_26:
      v22 = *MEMORY[0x277D85DE8];
      return;
    }
  }

  v12 = OUTLINED_FUNCTION_15();
  if (v9 != v10)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v12, v3, a2[3]);
  }

  OUTLINED_FUNCTION_27();
  if (v9 != v10)
  {
    v14 = OUTLINED_FUNCTION_83();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v14, v4, v15);
    v13 = *(v2 + 32);
  }

  OUTLINED_FUNCTION_4(v13);
  if (!v11 & v16)
  {
LABEL_30:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v18 & 1) == 0)
  {
    if (*(v17 + 32))
    {
      OUTLINED_FUNCTION_12_0(v17);
      *v19 = v3;
      *(v19 + 4) = 10;
    }

    OUTLINED_FUNCTION_33(v17, *(v17 + 72), xmmword_272B87CB0);
    if (v21 <= 0xA)
    {
      LOWORD(v21) = 10;
    }

    *(v20 + 64) = v21;
    goto LABEL_26;
  }

  __break(1u);
}

uint64_t static WK2_DailySummary.createDailySummary(_:metadataOffset:startDate:endDate:daysVectorOffset:)@<X0>(_BYTE *a1@<X0>, unsigned int *a2@<X1>, int a3@<W2>, int a4@<W3>, unsigned int *a5@<X4>, _DWORD *a6@<X8>)
{
  v10 = *a2;
  v11 = *a5;
  v12 = static WK2_DailySummary.startDailySummary(_:)(a1);
  v15 = v10;
  static WK2_DailySummary.add(metadata:_:)(&v15, a1);
  static WK2_DailySummary.add(startDate:_:)(a3, a1);
  static WK2_DailySummary.add(endDate:_:)(a4, a1);
  v14 = v11;
  static WK2_DailySummary.addVectorOf(days:_:)(&v14, a1);
  result = FlatBufferBuilder.endTable(at:)(v12);
  *a6 = result;
  return result;
}

void static WK2_DailySummary.verify<A>(_:at:of:)(int a1, unint64_t position)
{
  Verifier.visitTable(at:)(position, __src);
  if (!v2)
  {
    sub_272B5D67C(4, 0x617461646174656DLL, 0xE800000000000000, 1);
    v4 = __src[2];
    if (__src[2] < 7)
    {
      goto LABEL_25;
    }

    OUTLINED_FUNCTION_18();
    if (!v13 || (OUTLINED_FUNCTION_42(v5, v6, v7, v8, v9, v10, v11, v12, *v55, *&v55[8], *&v55[16], *&v55[24], *&v55[32], *&v55[40], *&v55[48], *&v55[56], *&v55[64], *&v55[72], *&v55[80], *&v55[88], *&v55[96], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8]), (v14 & 1) == 0))
    {
      OUTLINED_FUNCTION_62();
      OUTLINED_FUNCTION_53(v15, v16, v17, v18, v19, v20, v21, v22, *v55, *&v55[8], *&v55[16], *&v55[24], *&v55[32], *&v55[40], *&v55[48], *&v55[56], *&v55[64], *&v55[72], *&v55[80], *&v55[88], *&v55[96], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8]);
      if (v31)
      {
        OUTLINED_FUNCTION_23();
        if (v13)
        {
          v32 = 0;
        }

        else
        {
          v32 = v3;
        }

        if (v32 == 1)
        {
          goto LABEL_14;
        }

        OUTLINED_FUNCTION_66();
      }

      if (v4 <= 8)
      {
LABEL_25:
        sub_272B5D6C4(10, 1937334628, 0xE400000000000000, 1);
        if (__OFSUB__(__src[7], 1))
        {
          __break(1u);
          return;
        }

        --__src[7];
        goto LABEL_3;
      }

      v35 = LOBYTE(__src[3]);
      if (LOBYTE(__src[3]) != 1 || (OUTLINED_FUNCTION_42(v23, v24, v25, v26, v27, v28, v29, v30, *v55, *&v55[8], *&v55[16], *&v55[24], *&v55[32], *&v55[40], *&v55[48], *&v55[56], *&v55[64], *&v55[72], *&v55[80], *&v55[88], *&v55[96], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8]), (v36 & 1) == 0))
      {
        OUTLINED_FUNCTION_62();
        OUTLINED_FUNCTION_53(v37, v38, v39, v40, v41, v42, v43, v44, *v55, *&v55[8], *&v55[16], *&v55[24], *&v55[32], *&v55[40], *&v55[48], *&v55[56], *&v55[64], *&v55[72], *&v55[80], *&v55[88], *&v55[96], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8]);
        if (v45)
        {
          OUTLINED_FUNCTION_23();
          if (v13)
          {
            v46 = 0;
          }

          else
          {
            v46 = v35;
          }

          if (v46 == 1)
          {
LABEL_14:
            *v55 = MEMORY[0x277D84CC0];
            v33 = &qword_2808A3170;
            v34 = &unk_272B89910;
LABEL_28:
            __swift_instantiateConcreteTypeFromMangledNameV2(v33, v34);
            sub_272B87730();
            sub_272B5C86C();
            v47 = swift_allocError();
            OUTLINED_FUNCTION_7(v47, v48, v49, v50, v51, v52, v53, v54, *v55, *&v55[16], *&v55[32]);
LABEL_3:
            memcpy(v55, __src, 0x65uLL);
            sub_272B522C4(v55);
            return;
          }

          OUTLINED_FUNCTION_66();
        }

        goto LABEL_25;
      }
    }

    *v55 = MEMORY[0x277D84C58];
    v33 = &qword_2808A3160;
    v34 = &unk_272B87CC0;
    goto LABEL_28;
  }
}

void WK2_DaySummary.date.getter()
{
  OUTLINED_FUNCTION_103();
  if (v3)
  {
    __break(1u);
  }

  else
  {
    if (*(v0 + v2) < 5u)
    {
      goto LABEL_7;
    }

    v3 = __OFADD__(v2, 4);
    v4 = v2 + 4;
    if (!v3)
    {
      v5 = *(v0 + v4);
      if (v5)
      {
        if (!__OFADD__(v5, v1))
        {
          OUTLINED_FUNCTION_112(v0);
          return;
        }

        goto LABEL_10;
      }

LABEL_7:
      OUTLINED_FUNCTION_32_0();
      return;
    }
  }

  __break(1u);
LABEL_10:
  __break(1u);
}

void WK2_DaySummary.temperatureMin.getter()
{
  OUTLINED_FUNCTION_103();
  if (v3)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(v0 + v2) < 7u)
  {
    return;
  }

  v3 = __OFADD__(v2, 6);
  v4 = v2 + 6;
  if (v3)
  {
    goto LABEL_9;
  }

  v5 = *(v0 + v4);
  if (!v5)
  {
    return;
  }

  v3 = __OFADD__(v5, v1);
  v6 = v5 + v1;
  if (v3)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v7 = *(v0 + v6);
}

void WK2_DaySummary.temperatureMax.getter()
{
  OUTLINED_FUNCTION_103();
  if (v3)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(v0 + v2) < 9u)
  {
    return;
  }

  v3 = __OFADD__(v2, 8);
  v4 = v2 + 8;
  if (v3)
  {
    goto LABEL_9;
  }

  v5 = *(v0 + v4);
  if (!v5)
  {
    return;
  }

  v3 = __OFADD__(v5, v1);
  v6 = v5 + v1;
  if (v3)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v7 = *(v0 + v6);
}

void WK2_DaySummary.precipitationAmount.getter()
{
  OUTLINED_FUNCTION_103();
  if (v3)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(v0 + v2) < 0xBu)
  {
    return;
  }

  v3 = __OFADD__(v2, 10);
  v4 = v2 + 10;
  if (v3)
  {
    goto LABEL_9;
  }

  v5 = *(v0 + v4);
  if (!v5)
  {
    return;
  }

  v3 = __OFADD__(v5, v1);
  v6 = v5 + v1;
  if (v3)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v7 = *(v0 + v6);
}

void WK2_DaySummary.snowfallAmount.getter()
{
  OUTLINED_FUNCTION_103();
  if (v3)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(v0 + v2) < 0xDu)
  {
    return;
  }

  v3 = __OFADD__(v2, 12);
  v4 = v2 + 12;
  if (v3)
  {
    goto LABEL_9;
  }

  v5 = *(v0 + v4);
  if (!v5)
  {
    return;
  }

  v3 = __OFADD__(v5, v1);
  v6 = v5 + v1;
  if (v3)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v7 = *(v0 + v6);
}

unint64_t static WK2_DaySummary.startDaySummary(_:)(_BYTE *a1)
{
  result = OUTLINED_FUNCTION_25(a1);
  if (*(v2 + 56) < v4 + 40)
  {
    if (*(v2 + 48))
    {
LABEL_11:
      __break(1u);
      return result;
    }

    v5 = *(v2 + 32);
    if (v5)
    {
      MEMORY[0x2743D4FD0](v5, -1, -1);
    }

    v6 = swift_slowAlloc();
    *(v2 + 32) = v6;
    *(v2 + 40) = v6 + 40;
    *(v2 + 48) = 0;
    *(v2 + 56) = 40;
  }

  result = *(v1 + 16);
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (HIDWORD(result))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  return result;
}

void static WK2_DaySummary.add(date:_:)(int a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    OUTLINED_FUNCTION_79();
    if (!v6)
    {
LABEL_22:
      v22 = *MEMORY[0x277D85DE8];
      return;
    }
  }

  OUTLINED_FUNCTION_95();
  if (v8 ^ v9 | v6)
  {
    OUTLINED_FUNCTION_38();
  }

  v10 = *(a2 + 16);
  if ((v10 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (HIDWORD(v10))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v11 = OUTLINED_FUNCTION_6(v7, v10);
  if (v8 != v9)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v11, v12, *(a2 + 24));
  }

  OUTLINED_FUNCTION_26();
  if (v8 != v9)
  {
    v14 = OUTLINED_FUNCTION_83();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v14, v3, v15);
    v13 = *(v2 + 32);
  }

  OUTLINED_FUNCTION_5(v13);
  if (!v6 & v16)
  {
LABEL_25:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v18 & 1) == 0)
  {
    if (*(v17 + 32))
    {
      OUTLINED_FUNCTION_12_0(v17);
      *v19 = v4;
      *(v19 + 4) = 4;
    }

    OUTLINED_FUNCTION_33(v17, *(v17 + 72), xmmword_272B87CB0);
    if (v21 <= 4)
    {
      LOWORD(v21) = 4;
    }

    *(v20 + 64) = v21;
    goto LABEL_22;
  }

  __break(1u);
}

void static WK2_DaySummary.add(temperatureMin:_:)()
{
  OUTLINED_FUNCTION_97();
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_96();
  if (v5)
  {
    OUTLINED_FUNCTION_79();
    if (!v5)
    {
LABEL_23:
      v21 = *MEMORY[0x277D85DE8];
      return;
    }
  }

  OUTLINED_FUNCTION_95();
  if (v7 ^ v8 | v5)
  {
    OUTLINED_FUNCTION_38();
  }

  v9 = *(v0 + 16);
  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (HIDWORD(v9))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v10 = OUTLINED_FUNCTION_3(v6, v9);
  if (v7 != v8)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v10, v11, *(v0 + 24));
  }

  OUTLINED_FUNCTION_20_0();
  if (v7 != v8)
  {
    v13 = OUTLINED_FUNCTION_83();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v13, v2, v14);
    v12 = *(v1 + 32);
  }

  OUTLINED_FUNCTION_1_0(v12);
  if (!v5 & v15)
  {
LABEL_26:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v17 & 1) == 0)
  {
    if (*(v16 + 32))
    {
      OUTLINED_FUNCTION_12_0(v16);
      *v18 = v3;
      *(v18 + 4) = 6;
    }

    OUTLINED_FUNCTION_33(v16, *(v16 + 72), xmmword_272B87CB0);
    if (v20 <= 6)
    {
      LOWORD(v20) = 6;
    }

    *(v19 + 64) = v20;
    goto LABEL_23;
  }

  __break(1u);
}

void static WK2_DaySummary.add(temperatureMax:_:)()
{
  OUTLINED_FUNCTION_97();
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_96();
  if (v5)
  {
    OUTLINED_FUNCTION_79();
    if (!v5)
    {
LABEL_23:
      v21 = *MEMORY[0x277D85DE8];
      return;
    }
  }

  OUTLINED_FUNCTION_95();
  if (v7 ^ v8 | v5)
  {
    OUTLINED_FUNCTION_38();
  }

  v9 = *(v0 + 16);
  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (HIDWORD(v9))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v10 = OUTLINED_FUNCTION_3(v6, v9);
  if (v7 != v8)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v10, v11, *(v0 + 24));
  }

  OUTLINED_FUNCTION_20_0();
  if (v7 != v8)
  {
    v13 = OUTLINED_FUNCTION_83();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v13, v2, v14);
    v12 = *(v1 + 32);
  }

  OUTLINED_FUNCTION_1_0(v12);
  if (!v5 & v15)
  {
LABEL_26:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v17 & 1) == 0)
  {
    if (*(v16 + 32))
    {
      OUTLINED_FUNCTION_12_0(v16);
      *v18 = v3;
      *(v18 + 4) = 8;
    }

    OUTLINED_FUNCTION_33(v16, *(v16 + 72), xmmword_272B87CB0);
    if (v20 <= 8)
    {
      LOWORD(v20) = 8;
    }

    *(v19 + 64) = v20;
    goto LABEL_23;
  }

  __break(1u);
}

void static WK2_DaySummary.add(precipitationAmount:_:)()
{
  OUTLINED_FUNCTION_97();
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_96();
  if (v5)
  {
    OUTLINED_FUNCTION_79();
    if (!v5)
    {
LABEL_23:
      v21 = *MEMORY[0x277D85DE8];
      return;
    }
  }

  OUTLINED_FUNCTION_95();
  if (v7 ^ v8 | v5)
  {
    OUTLINED_FUNCTION_38();
  }

  v9 = *(v0 + 16);
  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (HIDWORD(v9))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v10 = OUTLINED_FUNCTION_3(v6, v9);
  if (v7 != v8)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v10, v11, *(v0 + 24));
  }

  OUTLINED_FUNCTION_20_0();
  if (v7 != v8)
  {
    v13 = OUTLINED_FUNCTION_83();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v13, v2, v14);
    v12 = *(v1 + 32);
  }

  OUTLINED_FUNCTION_1_0(v12);
  if (!v5 & v15)
  {
LABEL_26:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v17 & 1) == 0)
  {
    if (*(v16 + 32))
    {
      OUTLINED_FUNCTION_12_0(v16);
      *v18 = v3;
      *(v18 + 4) = 10;
    }

    OUTLINED_FUNCTION_33(v16, *(v16 + 72), xmmword_272B87CB0);
    if (v20 <= 0xA)
    {
      LOWORD(v20) = 10;
    }

    *(v19 + 64) = v20;
    goto LABEL_23;
  }

  __break(1u);
}

void static WK2_DaySummary.add(snowfallAmount:_:)()
{
  OUTLINED_FUNCTION_97();
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_96();
  if (v5)
  {
    OUTLINED_FUNCTION_79();
    if (!v5)
    {
LABEL_23:
      v21 = *MEMORY[0x277D85DE8];
      return;
    }
  }

  OUTLINED_FUNCTION_95();
  if (v7 ^ v8 | v5)
  {
    OUTLINED_FUNCTION_38();
  }

  v9 = *(v0 + 16);
  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (HIDWORD(v9))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v10 = OUTLINED_FUNCTION_3(v6, v9);
  if (v7 != v8)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v10, v11, *(v0 + 24));
  }

  OUTLINED_FUNCTION_20_0();
  if (v7 != v8)
  {
    v13 = OUTLINED_FUNCTION_83();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v13, v2, v14);
    v12 = *(v1 + 32);
  }

  OUTLINED_FUNCTION_1_0(v12);
  if (!v5 & v15)
  {
LABEL_26:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v17 & 1) == 0)
  {
    if (*(v16 + 32))
    {
      OUTLINED_FUNCTION_12_0(v16);
      *v18 = v3;
      *(v18 + 4) = 12;
    }

    OUTLINED_FUNCTION_33(v16, *(v16 + 72), xmmword_272B87CB0);
    if (v20 <= 0xC)
    {
      LOWORD(v20) = 12;
    }

    *(v19 + 64) = v20;
    goto LABEL_23;
  }

  __break(1u);
}

uint64_t static WK2_DaySummary.endDaySummary(_:start:)@<X0>(Swift::UInt32 at@<W1>, _DWORD *a2@<X8>)
{
  result = FlatBufferBuilder.endTable(at:)(at);
  *a2 = result;
  return result;
}

uint64_t static WK2_DaySummary.createDaySummary(_:date:temperatureMin:temperatureMax:precipitationAmount:snowfallAmount:)@<X0>(_BYTE *a1@<X0>, int a2@<W1>, _DWORD *a3@<X8>)
{
  v6 = static WK2_DaySummary.startDaySummary(_:)(a1);
  static WK2_DaySummary.add(date:_:)(a2, a1);
  static WK2_DaySummary.add(temperatureMin:_:)();
  static WK2_DaySummary.add(temperatureMax:_:)();
  static WK2_DaySummary.add(precipitationAmount:_:)();
  static WK2_DaySummary.add(snowfallAmount:_:)();
  result = FlatBufferBuilder.endTable(at:)(v6);
  *a3 = result;
  return result;
}

void static WK2_DaySummary.verify<A>(_:at:of:)(int a1, unint64_t position)
{
  Verifier.visitTable(at:)(position, __src);
  if (!v2)
  {
    v4 = __src[2];
    if (__src[2] < 5)
    {
      goto LABEL_53;
    }

    OUTLINED_FUNCTION_18();
    if (!v13 || (OUTLINED_FUNCTION_42(v5, v6, v7, v8, v9, v10, v11, v12, *v112, *&v112[8], *&v112[16], *&v112[24], *&v112[32], *&v112[40], *&v112[48], *&v112[56], *&v112[64], *&v112[72], *&v112[80], *&v112[88], *&v112[96], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8]), (v14 & 1) == 0))
    {
      OUTLINED_FUNCTION_62();
      OUTLINED_FUNCTION_53(v15, v16, v17, v18, v19, v20, v21, v22, *v112, *&v112[8], *&v112[16], *&v112[24], *&v112[32], *&v112[40], *&v112[48], *&v112[56], *&v112[64], *&v112[72], *&v112[80], *&v112[88], *&v112[96], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8]);
      if (v23)
      {
        OUTLINED_FUNCTION_23();
        if (v13)
        {
          v24 = 0;
        }

        else
        {
          v24 = v3;
        }

        if (v24 == 1)
        {
          *v112 = MEMORY[0x277D84CC0];
          v25 = &qword_2808A3170;
          v26 = &unk_272B89910;
LABEL_56:
          __swift_instantiateConcreteTypeFromMangledNameV2(v25, v26);
          sub_272B87730();
          sub_272B5C86C();
          v104 = swift_allocError();
          OUTLINED_FUNCTION_7(v104, v105, v106, v107, v108, v109, v110, v111, *v112, *&v112[16], *&v112[32]);
LABEL_57:
          memcpy(v112, __src, 0x65uLL);
          sub_272B522C4(v112);
          return;
        }

        OUTLINED_FUNCTION_66();
      }

      if (v4 <= 6)
      {
        goto LABEL_53;
      }

      OUTLINED_FUNCTION_18();
      if (!v13 || (OUTLINED_FUNCTION_42(v27, v28, v29, v30, v31, v32, v33, v34, *v112, *&v112[8], *&v112[16], *&v112[24], *&v112[32], *&v112[40], *&v112[48], *&v112[56], *&v112[64], *&v112[72], *&v112[80], *&v112[88], *&v112[96], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8]), (v35 & 1) == 0))
      {
        OUTLINED_FUNCTION_62();
        OUTLINED_FUNCTION_53(v36, v37, v38, v39, v40, v41, v42, v43, *v112, *&v112[8], *&v112[16], *&v112[24], *&v112[32], *&v112[40], *&v112[48], *&v112[56], *&v112[64], *&v112[72], *&v112[80], *&v112[88], *&v112[96], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8]);
        if (v44)
        {
          OUTLINED_FUNCTION_23();
          if (v13)
          {
            v45 = 0;
          }

          else
          {
            v45 = v3;
          }

          if (v45 == 1)
          {
            goto LABEL_22;
          }

          OUTLINED_FUNCTION_66();
        }

        if (v4 <= 8)
        {
          goto LABEL_53;
        }

        OUTLINED_FUNCTION_18();
        if (!v13 || (OUTLINED_FUNCTION_42(v46, v47, v48, v49, v50, v51, v52, v53, *v112, *&v112[8], *&v112[16], *&v112[24], *&v112[32], *&v112[40], *&v112[48], *&v112[56], *&v112[64], *&v112[72], *&v112[80], *&v112[88], *&v112[96], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8]), (v54 & 1) == 0))
        {
          OUTLINED_FUNCTION_62();
          OUTLINED_FUNCTION_53(v55, v56, v57, v58, v59, v60, v61, v62, *v112, *&v112[8], *&v112[16], *&v112[24], *&v112[32], *&v112[40], *&v112[48], *&v112[56], *&v112[64], *&v112[72], *&v112[80], *&v112[88], *&v112[96], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8]);
          if (v63)
          {
            OUTLINED_FUNCTION_23();
            if (v13)
            {
              v64 = 0;
            }

            else
            {
              v64 = v3;
            }

            if (v64 == 1)
            {
              goto LABEL_22;
            }

            OUTLINED_FUNCTION_66();
          }

          if (v4 <= 0xA)
          {
            goto LABEL_53;
          }

          OUTLINED_FUNCTION_18();
          if (!v13 || (OUTLINED_FUNCTION_42(v65, v66, v67, v68, v69, v70, v71, v72, *v112, *&v112[8], *&v112[16], *&v112[24], *&v112[32], *&v112[40], *&v112[48], *&v112[56], *&v112[64], *&v112[72], *&v112[80], *&v112[88], *&v112[96], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8]), (v73 & 1) == 0))
          {
            OUTLINED_FUNCTION_62();
            OUTLINED_FUNCTION_53(v74, v75, v76, v77, v78, v79, v80, v81, *v112, *&v112[8], *&v112[16], *&v112[24], *&v112[32], *&v112[40], *&v112[48], *&v112[56], *&v112[64], *&v112[72], *&v112[80], *&v112[88], *&v112[96], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8]);
            if (v90)
            {
              OUTLINED_FUNCTION_23();
              if (v13)
              {
                v91 = 0;
              }

              else
              {
                v91 = v3;
              }

              if (v91 == 1)
              {
                goto LABEL_22;
              }

              OUTLINED_FUNCTION_66();
            }

            if (v4 <= 0xC)
            {
LABEL_53:
              if (__OFSUB__(__src[7], 1))
              {
                __break(1u);
                return;
              }

              --__src[7];
              goto LABEL_57;
            }

            v92 = LOBYTE(__src[3]);
            if (LOBYTE(__src[3]) != 1 || (OUTLINED_FUNCTION_42(v82, v83, v84, v85, v86, v87, v88, v89, *v112, *&v112[8], *&v112[16], *&v112[24], *&v112[32], *&v112[40], *&v112[48], *&v112[56], *&v112[64], *&v112[72], *&v112[80], *&v112[88], *&v112[96], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8]), (v93 & 1) == 0))
            {
              OUTLINED_FUNCTION_62();
              OUTLINED_FUNCTION_53(v94, v95, v96, v97, v98, v99, v100, v101, *v112, *&v112[8], *&v112[16], *&v112[24], *&v112[32], *&v112[40], *&v112[48], *&v112[56], *&v112[64], *&v112[72], *&v112[80], *&v112[88], *&v112[96], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8]);
              if (v102)
              {
                OUTLINED_FUNCTION_23();
                if (v13)
                {
                  v103 = 0;
                }

                else
                {
                  v103 = v92;
                }

                if (v103 != 1)
                {
                  OUTLINED_FUNCTION_66();
                  goto LABEL_53;
                }

LABEL_22:
                *v112 = MEMORY[0x277D83A90];
                v25 = &unk_2808A3178;
                v26 = &unk_272B87CD0;
                goto LABEL_56;
              }

              goto LABEL_53;
            }
          }
        }
      }
    }

    *v112 = MEMORY[0x277D84C58];
    v25 = &qword_2808A3160;
    v26 = &unk_272B87CC0;
    goto LABEL_56;
  }
}

uint64_t Message.object.getter(uint64_t a1)
{
  result = *v1;
  v4 = v1[1];
  v5 = *(*v1 + 32) - v4;
  if (v5 < 0xFFFFFFFF80000000)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v5 > 0x7FFFFFFF)
  {
    goto LABEL_7;
  }

  v6 = *(*(result + 24) + v5);
  if (v6 < 0)
  {
    goto LABEL_7;
  }

  v7 = (v6 + v5);
  if (!__OFADD__(v6, v5))
  {
    v8 = v1[2];
    v9 = *(a1 + 16);
    v10 = *(*(a1 + 24) + 8);
    v11 = *(v10 + 8);

    return v11(v12, v4, v8, v7, v9, v10);
  }

LABEL_8:
  __break(1u);
  return result;
}

unint64_t Message.size.getter()
{
  result = *(v0 + 8);
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (HIDWORD(result))
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t Message.init(byteBuffer:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

void Message.init(builder:)(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *(a1 + 16);
  if ((v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(v2))
  {
    v4 = *(a1 + 8);
    v5 = *(v4 + 24);
    v6 = *(v4 + 32) - v2;
    type metadata accessor for ByteBuffer.Storage();
    swift_allocObject();
    v7 = ByteBuffer.Storage.init(count:alignment:)(v2);
    ByteBuffer.Storage.copy(from:count:)((v5 + v6), v2);
    v8 = *(v7 + 32);
    *a2 = v7;
    a2[1] = v8;
    a2[2] = 1;
    FlatBufferBuilder.clear()();
    return;
  }

  __break(1u);
}

uint64_t sub_272B77C88()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_272B77CD8(uint64_t *a1, int a2)
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

uint64_t sub_272B77D18(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t VerifierOptions.init(maxDepth:maxTableCount:maxApparentSize:ignoreMissingNullTerminators:)@<X0>(uint64_t result@<X0>, int a2@<W1>, int a3@<W2>, char a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = a3;
  *(a5 + 4) = a2;
  *(a5 + 8) = result;
  *(a5 + 12) = a4;
  return result;
}

void *__swift_memcpy13_4(void *result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 5) = *(a2 + 5);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for VerifierOptions(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 13))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 12);
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
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

uint64_t storeEnumTagSinglePayload for VerifierOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 12) = 0;
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 13) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 13) = 0;
    }

    if (a2)
    {
      *(result + 12) = a2 + 1;
    }
  }

  return result;
}

void TableVerifier.visit<A>(field:fieldName:required:type:)(unsigned __int16 a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = v7;
  v12 = a2;
  if (*(v9 + 16) > a1)
  {
    v16 = *(v9 + 8) + a1;
    if (*(v9 + 24) == 1 && ((*(*(v9 + 64) + 24) + v16) & 1) != 0)
    {
      v23.n128_u64[0] = MEMORY[0x277D84C58];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808A3160, &unk_272B87CC0);
      sub_272B87730();
      OUTLINED_FUNCTION_204();
      OUTLINED_FUNCTION_177();
      *v17 = v16;
      v17[1] = v12;
      v17[2] = a3;
      OUTLINED_FUNCTION_0_3(v17, v25, v24, v23);
      *(v18 + 64) = 0;
      swift_willThrow();
      return;
    }

    OUTLINED_FUNCTION_2_1();
    if (v8)
    {
      return;
    }

    if (*(*(*(v9 + 64) + 24) + v16))
    {
      (*(a7 + 8))(v9 + 24, *v9 + *(*(*(v9 + 64) + 24) + v16), a6, a6, a7, a6, a7);
      return;
    }

    v12 = a2;
  }

  if (a4)
  {
    sub_272B5C86C();
    OUTLINED_FUNCTION_177();
    *v19 = a1;
    *(v19 + 6) = v27;
    *(v19 + 2) = v26;
    *(v19 + 8) = v12;
    *(v19 + 16) = a3;
    OUTLINED_FUNCTION_0_3(v19, v25, v24, v23);
    OUTLINED_FUNCTION_157(v20, v21);
  }
}

Swift::Void __swiftcall TableVerifier.finish()()
{
  v1 = *(v0 + 56);
  v2 = __OFSUB__(v1, 1);
  v3 = v1 - 1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 56) = v3;
  }
}

void TableVerifier.visit<A>(unionKey:unionField:unionKeyName:fieldName:required:completion:)(unsigned __int16 a1, unsigned __int16 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, void (*a8)(void, void, void), uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = v11;
  v61 = a7;
  v62 = a5;
  v63 = a6;
  v64 = a3;
  v65 = a4;
  v59 = a11;
  v16 = *(a11 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v58 = v53 - v18;
  v19 = sub_272B878A0();
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v22 = *(*(a10 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21);
  v24 = *(v12 + 16);
  if (v24 <= a1)
  {
    v29 = 0;
    v28 = 1;
  }

  else
  {
    v25 = *(v12 + 8) + a1;
    if (*(v12 + 24) == 1 && ((*(*(v12 + 64) + 24) + v25) & 1) != 0)
    {
      v66.n128_u64[0] = MEMORY[0x277D84C58];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808A3160, &unk_272B87CC0);
      sub_272B87730();
      OUTLINED_FUNCTION_204();
      OUTLINED_FUNCTION_177();
      *v30 = v25;
LABEL_19:
      v30[1] = a8;
      v30[2] = v16;
      OUTLINED_FUNCTION_0_3(v30, v68, v67, v66);
      *(v36 + 64) = 0;
      goto LABEL_20;
    }

    OUTLINED_FUNCTION_5_0(v23);
    Verifier.rangeInBuffer(position:size:)(v25, 2);
    if (v26)
    {
      return;
    }

    v27 = *(*(*(v12 + 64) + 24) + v25);
    if (*(*(*(v12 + 64) + 24) + v25))
    {
      v28 = 0;
      v29 = *v12 + v27;
    }

    else
    {
      v29 = 0;
      v28 = 1;
    }

    v23 = v55;
    a8 = v56;
  }

  if (v24 <= a2)
  {
    goto LABEL_22;
  }

  v31 = *(v12 + 8) + a2;
  if (*(v12 + 24) == 1 && ((*(*(v12 + 64) + 24) + v31) & 1) != 0)
  {
    v66.n128_u64[0] = MEMORY[0x277D84C58];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808A3160, &unk_272B87CC0);
    sub_272B87730();
    OUTLINED_FUNCTION_204();
    OUTLINED_FUNCTION_177();
    *v30 = v31;
    goto LABEL_19;
  }

  v32 = v29;
  OUTLINED_FUNCTION_5_0(v23);
  Verifier.rangeInBuffer(position:size:)(v31, 2);
  if (v33)
  {
    return;
  }

  if (*(*(*(v12 + 64) + 24) + v31))
  {
    v34 = *v12 + *(*(*(v12 + 64) + 24) + v31);
    if (v28)
    {
      v35 = 0;
LABEL_26:
      v66.n128_u8[0] = v28;
      LOBYTE(v69) = v35;
      sub_272B5C86C();
      OUTLINED_FUNCTION_177();
      *v42 = v32;
      *(v42 + 8) = v28;
      v43 = v65;
      *(v42 + 16) = v64;
      *(v42 + 24) = v43;
      *(v42 + 32) = v34;
      *(v42 + 40) = v35;
      v44 = v63;
      *(v42 + 48) = v62;
      *(v42 + 56) = v44;
      *(v42 + 64) = 5;
      swift_willThrow();

      goto LABEL_27;
    }

    v45 = AssociatedTypeWitness;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 8))(v12 + 24, v32, v45, v45, AssociatedConformanceWitness, v45, AssociatedConformanceWitness);
    v47 = *(*(v12 + 64) + 24);
    sub_272B71990();
    v48 = v58;
    sub_272B878B0();
    v49 = v57;
    (*(v59 + 16))(v48, a10);
    if (__swift_getEnumTagSinglePayload(v49, 1, a10) != 1)
    {
      v51 = v54;
      v52 = v53[0];
      (*(v54 + 32))(v53[0], v49, a10);
      v56(v12 + 24, v52, v34);
      (*(v51 + 8))(v52, a10);
      return;
    }

    (*(v53[1] + 8))(v49, v55);
    sub_272B5C86C();
    OUTLINED_FUNCTION_177();
    *v50 = 5;
    *(v50 + 8) = 0u;
    *(v50 + 24) = 0u;
    *(v50 + 40) = 0u;
    *(v50 + 56) = 0;
    *(v50 + 64) = 7;
LABEL_20:
    swift_willThrow();
    return;
  }

  v29 = v32;
LABEL_22:
  if ((v28 & 1) == 0)
  {
    v32 = v29;
    v34 = 0;
    v35 = 1;
    goto LABEL_26;
  }

  if ((v61 & 1) == 0)
  {
    return;
  }

  sub_272B5C86C();
  OUTLINED_FUNCTION_177();
  *v37 = a1;
  v38 = v69;
  *(v37 + 6) = v70;
  *(v37 + 2) = v38;
  v39 = v65;
  *(v37 + 8) = v64;
  *(v37 + 16) = v39;
  OUTLINED_FUNCTION_0_3(v37, v68, v67, v66);
  OUTLINED_FUNCTION_157(v40, v41);
LABEL_27:
}

void TableVerifier.visitUnionVector<A>(unionKey:unionField:unionKeyName:fieldName:required:completion:)(unsigned __int16 a1, unsigned __int16 a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, char a7, void (*a8)(unsigned __int8 *, char *, Swift::Int), uint64_t a9, uint64_t a10, uint64_t a11)
{
  v14 = v11;
  v20 = *(v14 + 2);
  if (v20 > a1)
  {
    OUTLINED_FUNCTION_4_1(a1);
    if (v21 && ((*(*(v14 + 8) + 24) + v13) & 1) != 0)
    {
      goto LABEL_19;
    }

    OUTLINED_FUNCTION_2_1();
    if (v12)
    {
      return;
    }

    if (*(*(*(v14 + 8) + 24) + v13))
    {
      v22 = *v14;
    }
  }

  if (v20 > a2)
  {
    OUTLINED_FUNCTION_4_1(a2);
    if (!v21 || ((*(*(v14 + 8) + 24) + v13) & 1) == 0)
    {
      v27 = v26;
      v34 = v25;
      v35 = v23;
      v36 = v24;
      OUTLINED_FUNCTION_2_1();
      if (v12)
      {
        return;
      }

      if (*(*(*(v14 + 8) + 24) + v13))
      {
        v28 = v27;
      }

      else
      {
        v28 = 1;
      }

      if ((v28 & 1) == 0)
      {
        static UnionVector.verify(_:keyPosition:fieldPosition:unionKeyName:fieldName:completion:)(v14 + 24, v34, *v14 + *(*(*(v14 + 8) + 24) + v13), v35, v36, a5, a6, a8, a9, a10, a11);
        return;
      }

      goto LABEL_17;
    }

LABEL_19:
    v37.n128_u64[0] = MEMORY[0x277D84C58];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808A3160, &unk_272B87CC0);
    sub_272B87730();
    OUTLINED_FUNCTION_204();
    OUTLINED_FUNCTION_177();
    *v32 = v13;
    v32[1] = a5;
    v32[2] = a6;
    OUTLINED_FUNCTION_0_3(v32, v39, v38, v37);
    *(v33 + 64) = 0;
    swift_willThrow();
    return;
  }

LABEL_17:
  if (a7)
  {
    sub_272B5C86C();
    OUTLINED_FUNCTION_177();
    *v29 = a2;
    *(v29 + 6) = v41;
    *(v29 + 2) = v40;
    *(v29 + 8) = a5;
    *(v29 + 16) = a6;
    OUTLINED_FUNCTION_0_3(v29, v39, v38, v37);
    OUTLINED_FUNCTION_157(v30, v31);
  }
}

uint64_t sub_272B78838(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 101))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 64);
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

uint64_t sub_272B78878(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 100) = 0;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 101) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 101) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t WK2_MonthlyWeatherStatistics.init(_:o:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  return result;
}

uint64_t WK2_MonthlyWeatherStatistics.metadata.getter@<X0>(uint64_t a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 24);
  v4 = *(*v1 + 24);
  v5 = *(v4 + v3);
  v6 = __OFSUB__(v3, v5);
  v7 = v3 - v5;
  if (v6)
  {
    __break(1u);
    goto LABEL_10;
  }

  v8 = *(v1 + 8);
  if (*(v4 + v7) < 5u)
  {
    v10 = 0;
LABEL_6:
    v6 = __OFADD__(v10, v3);
    v11 = v10 + v3;
    if (!v6)
    {
      v12 = *(v4 + v11);
      v6 = __OFADD__(v11, v12);
      v13 = v11 + v12;
      if (!v6)
      {
        *a1 = result;
        *(a1 + 8) = v8;
        *(a1 + 24) = v13;
      }

      goto LABEL_11;
    }

LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v6 = __OFADD__(v7, 4);
  v9 = v7 + 4;
  if (!v6)
  {
    v10 = *(v4 + v9);
    goto LABEL_6;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t WK2_MonthlyWeatherStatistics.baselineStart.getter()
{
  v1 = v0[6];
  v2 = *(*v0 + 24);
  v3 = *(v2 + v1);
  v4 = __OFSUB__(v1, v3);
  v5 = v1 - v3;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    if (*(v2 + v5) < 7u)
    {
      return OUTLINED_FUNCTION_32_0();
    }

    v4 = __OFADD__(v5, 6);
    v6 = v5 + 6;
    if (!v4)
    {
      v7 = *(v2 + v6);
      if (v7)
      {
        v4 = __OFADD__(v7, v1);
        v8 = v7 + v1;
        if (!v4)
        {
          return *(v2 + v8);
        }

        goto LABEL_10;
      }

      return OUTLINED_FUNCTION_32_0();
    }
  }

  __break(1u);
LABEL_10:
  __break(1u);
  return result;
}

uint64_t WK2_MonthlyWeatherStatistics.hasMonths.getter()
{
  v1 = v0[6];
  v2 = *(*v0 + 24);
  v3 = *(v2 + v1);
  v4 = __OFSUB__(v1, v3);
  v5 = v1 - v3;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    if (*(v2 + v5) < 9u)
    {
      return OUTLINED_FUNCTION_32_0();
    }

    v4 = __OFADD__(v5, 8);
    v6 = v5 + 8;
    if (!v4)
    {
      return *(v2 + v6) != 0;
    }
  }

  __break(1u);
  return result;
}

uint64_t WK2_MonthlyWeatherStatistics.monthsCount.getter()
{
  v1 = v0[6];
  v2 = *(*v0 + 24);
  v3 = *(v2 + v1);
  v4 = __OFSUB__(v1, v3);
  v5 = v1 - v3;
  if (v4)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(v2 + v5) < 9u)
  {
    return OUTLINED_FUNCTION_32_0();
  }

  v4 = __OFADD__(v5, 8);
  v6 = v5 + 8;
  if (v4)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = *(v2 + v6);
  if (!v7)
  {
    return OUTLINED_FUNCTION_32_0();
  }

  v4 = __OFADD__(v7, v1);
  v8 = v7 + v1;
  if (!v4)
  {
    v9 = *(v2 + v8);
    v4 = __OFADD__(v8, v9);
    v10 = v8 + v9;
    if (!v4)
    {
      return *(v2 + v10);
    }

    goto LABEL_12;
  }

LABEL_11:
  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t WK2_MonthlyWeatherStatistics.months(at:)(int a1)
{
  result = *v1;
  v4 = *(v1 + 24);
  v5 = *(*v1 + 24);
  v6 = *(v5 + v4);
  v7 = __OFSUB__(v4, v6);
  v8 = v4 - v6;
  if (v7)
  {
    __break(1u);
    goto LABEL_15;
  }

  v9 = 0uLL;
  if (*(v5 + v8) < 9u)
  {
LABEL_12:
    v17 = 0;
    return OUTLINED_FUNCTION_51(v17, v9);
  }

  v7 = __OFADD__(v8, 8);
  v10 = v8 + 8;
  if (v7)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v11 = *(v5 + v10);
  if (!v11)
  {
    goto LABEL_12;
  }

  v7 = __OFADD__(v11, v4);
  v12 = v11 + v4;
  if (v7)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v13 = *(v5 + v12);
  v7 = __OFADD__(v12, v13);
  v14 = v12 + v13;
  if (v7)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v7 = __OFADD__(v14, 4);
  v15 = v14 + 4;
  if (v7)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if ((a1 - 0x20000000) >> 30 != 3)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v7 = __OFADD__(v15, 4 * a1);
  v16 = v15 + 4 * a1;
  if (v7)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!__OFADD__(v16, *(v5 + v16)))
  {
    v18 = *(v1 + 8);

    v9 = v18;
    return OUTLINED_FUNCTION_51(v17, v9);
  }

LABEL_21:
  __break(1u);
  return result;
}

void static WK2_MonthlyWeatherStatistics.add(metadata:_:)()
{
  OUTLINED_FUNCTION_219();
  v22 = *MEMORY[0x277D85DE8];
  v5 = *v3;
  if (!*v3)
  {
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_58(v3, v4);
  if (v7 != v8)
  {
    OUTLINED_FUNCTION_38();
  }

  v9 = *(v0 + 16);
  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_29;
  }

  if (HIDWORD(v9))
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v10 = OUTLINED_FUNCTION_3(v6, v9);
  if (v7 != v8)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v10, v11, *(v0 + 24));
  }

  *(v0 + 16) = v2;
  if (HIDWORD(v2))
  {
    goto LABEL_30;
  }

  if (v2 - v5 == -4)
  {
    OUTLINED_FUNCTION_79();
    if (!v12)
    {
LABEL_27:
      v21 = *MEMORY[0x277D85DE8];
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  v13 = OUTLINED_FUNCTION_15();
  if (v7 != v8)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v13, v2, *(v0 + 24));
  }

  OUTLINED_FUNCTION_27();
  if (v7 != v8)
  {
    OUTLINED_FUNCTION_9();
    v14 = *(v1 + 32);
  }

  OUTLINED_FUNCTION_4(v14);
  if (!v12 & v15)
  {
LABEL_31:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v17 & 1) == 0)
  {
    if (*(v16 + 32))
    {
      OUTLINED_FUNCTION_57(v16);
      *(v18 + 4) = 4;
    }

    OUTLINED_FUNCTION_33(v16, *(v16 + 72), xmmword_272B87CB0);
    if (v20 <= 4)
    {
      LOWORD(v20) = 4;
    }

    *(v19 + 64) = v20;
    goto LABEL_27;
  }

  __break(1u);
}

void static WK2_MonthlyWeatherStatistics.add(baselineStart:_:)()
{
  OUTLINED_FUNCTION_219();
  v1 = v0;
  v3 = v2;
  v18 = *MEMORY[0x277D85DE8];
  if (!v2)
  {
    OUTLINED_FUNCTION_79();
    if (!v4)
    {
LABEL_19:
      v17 = *MEMORY[0x277D85DE8];
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  if (v1[8] <= 3)
  {
    OUTLINED_FUNCTION_38();
  }

  v5 = v1[2];
  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (HIDWORD(v5))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v6 = -*(v1 + 16) & 3;
  v7 = v6 + v5;
  v8 = v1[1];
  if (*(v8 + 32) < (v6 + v5))
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v6, v5, v1[3]);
  }

  v1[2] = v7;
  v9 = v7 + 4;
  v10 = *(v8 + 32);
  if (v10 < (v7 + 4))
  {
    OUTLINED_FUNCTION_9();
    v10 = *(v8 + 32);
  }

  *(*(v8 + 24) + v10 - v7 - 4) = v3;
  v1[2] = v9;
  if (v7 > 0xFFFFFFFB)
  {
LABEL_22:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v12 & 1) == 0)
  {
    v13 = *(v11 + 32);
    if (v13)
    {
      v14 = v13 + *(v11 + 80);
      *v14 = v9;
      *(v14 + 4) = 6;
    }

    OUTLINED_FUNCTION_33(v11, *(v11 + 72), xmmword_272B87CB0);
    if (v16 <= 6)
    {
      LOWORD(v16) = 6;
    }

    *(v15 + 64) = v16;
    goto LABEL_19;
  }

  __break(1u);
}

void static WK2_MonthlyWeatherStatistics.addVectorOf(months:_:)()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D85DE8];

  sub_272B7596C();
}

uint64_t static WK2_MonthlyWeatherStatistics.endMonthlyWeatherStatistics(_:start:)@<X0>(Swift::UInt32 at@<W1>, _DWORD *a2@<X8>)
{
  result = FlatBufferBuilder.endTable(at:)(at);
  *a2 = result;
  return result;
}

void static WK2_MonthlyWeatherStatistics.createMonthlyWeatherStatistics(_:metadataOffset:baselineStart:monthsVectorOffset:)()
{
  OUTLINED_FUNCTION_219();
  v1 = v0;
  v3 = *v2;
  v5 = *v4;
  v7 = static WK2_MonthlyWeatherStatistics.startMonthlyWeatherStatistics(_:)(v6);
  static WK2_MonthlyWeatherStatistics.add(metadata:_:)();
  static WK2_MonthlyWeatherStatistics.add(baselineStart:_:)();
  static WK2_MonthlyWeatherStatistics.addVectorOf(months:_:)();
  *v1 = FlatBufferBuilder.endTable(at:)(v7);
  OUTLINED_FUNCTION_218();
}

void static WK2_MonthlyWeatherStatistics.verify<A>(_:at:of:)(int a1, unint64_t position)
{
  Verifier.visitTable(at:)(position, __src);
  if (!v2)
  {
    sub_272B5D67C(4, 0x617461646174656DLL, 0xE800000000000000, 1);
    v3 = 0;
    if (__src[2] >= 7)
    {
      v4 = __src[1] + 6;
      v5 = LOBYTE(__src[3]);
      if (LOBYTE(__src[3]) == 1 && ((*(__src[8] + 24) + v4) & 1) != 0)
      {
        *v21 = MEMORY[0x277D84C58];
        v10 = &qword_2808A3160;
        v11 = &unk_272B87CC0;
        goto LABEL_16;
      }

      Verifier.rangeInBuffer(position:size:)(__src[1] + 6, 2);
      v3 = v6;
      if (v6)
      {
LABEL_3:
        memcpy(v21, __src, sizeof(v21));
        sub_272B522C4(v21);
        return;
      }

      v7 = *(__src[8] + 24);
      v8 = *(v7 + v4);
      if (*(v7 + v4))
      {
        if (((v7 + LOBYTE(__src[0]) + v8) & 3) != 0)
        {
          v9 = v5;
        }

        else
        {
          v9 = 0;
        }

        if (v9 == 1)
        {
          *v21 = MEMORY[0x277D84CC0];
          v10 = &qword_2808A3170;
          v11 = &unk_272B89910;
LABEL_16:
          __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
          sub_272B87730();
          sub_272B5C86C();
          v12 = swift_allocError();
          OUTLINED_FUNCTION_7(v12, v13, v14, v15, v16, v17, v18, v19, *v21, *&v21[16], *&v21[32]);
          goto LABEL_3;
        }

        Verifier.rangeInBuffer(position:size:)(__src[0] + v8, 4);
        v3 = v20;
        if (v20)
        {
          goto LABEL_3;
        }
      }
    }

    sub_272B5DD6C(8, 0x7368746E6F6DLL, 0xE600000000000000, 1);
    if (!v3)
    {
      if (__OFSUB__(__src[7], 1))
      {
        __break(1u);
        return;
      }

      --__src[7];
    }

    goto LABEL_3;
  }
}

uint64_t WK2_MonthWeatherStatistics.month.getter()
{
  v1 = v0[6];
  v2 = *(*v0 + 24);
  v3 = *(v2 + v1);
  v4 = __OFSUB__(v1, v3);
  v5 = v1 - v3;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    if (*(v2 + v5) < 5u)
    {
      return OUTLINED_FUNCTION_32_0();
    }

    v4 = __OFADD__(v5, 4);
    v6 = v5 + 4;
    if (!v4)
    {
      v7 = *(v2 + v6);
      if (v7)
      {
        v4 = __OFADD__(v7, v1);
        v8 = v7 + v1;
        if (!v4)
        {
          return *(v2 + v8);
        }

        goto LABEL_10;
      }

      return OUTLINED_FUNCTION_32_0();
    }
  }

  __break(1u);
LABEL_10:
  __break(1u);
  return result;
}

uint64_t WK2_MonthWeatherStatistics.temperature.getter()
{
  result = OUTLINED_FUNCTION_14();
  if (v5)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = 0uLL;
  if (*(v2 + v4) < 7u)
  {
LABEL_8:
    v10 = 0;
    return OUTLINED_FUNCTION_51(v10, v6);
  }

  v5 = __OFADD__(v4, 6);
  v7 = v4 + 6;
  if (v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = *(v2 + v7);
  if (!v8)
  {
    goto LABEL_8;
  }

  v5 = __OFADD__(v8, v3);
  v9 = v8 + v3;
  if (v5)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (!__OFADD__(v9, *(v2 + v9)))
  {
    v11 = *(v0 + 8);

    v6 = v11;
    return OUTLINED_FUNCTION_51(v10, v6);
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t WK2_MonthWeatherStatistics.precipitation.getter()
{
  result = OUTLINED_FUNCTION_14();
  if (v5)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = 0uLL;
  if (*(v2 + v4) < 9u)
  {
LABEL_8:
    v10 = 0;
    return OUTLINED_FUNCTION_51(v10, v6);
  }

  v5 = __OFADD__(v4, 8);
  v7 = v4 + 8;
  if (v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = *(v2 + v7);
  if (!v8)
  {
    goto LABEL_8;
  }

  v5 = __OFADD__(v8, v3);
  v9 = v8 + v3;
  if (v5)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (!__OFADD__(v9, *(v2 + v9)))
  {
    v11 = *(v0 + 8);

    v6 = v11;
    return OUTLINED_FUNCTION_51(v10, v6);
  }

LABEL_13:
  __break(1u);
  return result;
}

void static WK2_MonthWeatherStatistics.add(month:_:)()
{
  OUTLINED_FUNCTION_219();
  v1 = v0;
  v3 = v2;
  v16 = *MEMORY[0x277D85DE8];
  if (!v2)
  {
    OUTLINED_FUNCTION_79();
    if (!v4)
    {
LABEL_19:
      v15 = *MEMORY[0x277D85DE8];
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  if (v1[8] <= 0)
  {
    v1[8] = 1;
    v1[3] = 1;
  }

  v5 = v1[2];
  if (v5 < 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (HIDWORD(v5))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v6 = v1[1];
  if (*(v6 + 32) < v5)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(0, v1[2], v1[3]);
  }

  v1[2] = v5;
  v7 = v5 + 1;
  v8 = *(v6 + 32);
  if (v8 <= v5)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(1, v5, v1[3]);
    v8 = *(v6 + 32);
  }

  *(*(v6 + 24) + v8 + ~v5) = v3;
  v1[2] = v7;
  if (v5 == 0xFFFFFFFFLL)
  {
LABEL_22:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v10 & 1) == 0)
  {
    v11 = *(v9 + 32);
    if (v11)
    {
      v12 = v11 + *(v9 + 80);
      *v12 = v7;
      *(v12 + 4) = 4;
    }

    OUTLINED_FUNCTION_33(v9, *(v9 + 72), xmmword_272B87CB0);
    if (v14 <= 4)
    {
      LOWORD(v14) = 4;
    }

    *(v13 + 64) = v14;
    goto LABEL_19;
  }

  __break(1u);
}

void static WK2_MonthWeatherStatistics.add(temperature:_:)()
{
  OUTLINED_FUNCTION_219();
  v22 = *MEMORY[0x277D85DE8];
  v5 = *v3;
  if (!*v3)
  {
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_58(v3, v4);
  if (v7 != v8)
  {
    OUTLINED_FUNCTION_38();
  }

  v9 = *(v0 + 16);
  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_29;
  }

  if (HIDWORD(v9))
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v10 = OUTLINED_FUNCTION_3(v6, v9);
  if (v7 != v8)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v10, v11, *(v0 + 24));
  }

  *(v0 + 16) = v2;
  if (HIDWORD(v2))
  {
    goto LABEL_30;
  }

  if (v2 - v5 == -4)
  {
    OUTLINED_FUNCTION_79();
    if (!v12)
    {
LABEL_27:
      v21 = *MEMORY[0x277D85DE8];
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  v13 = OUTLINED_FUNCTION_15();
  if (v7 != v8)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v13, v2, *(v0 + 24));
  }

  OUTLINED_FUNCTION_27();
  if (v7 != v8)
  {
    OUTLINED_FUNCTION_9();
    v14 = *(v1 + 32);
  }

  OUTLINED_FUNCTION_4(v14);
  if (!v12 & v15)
  {
LABEL_31:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v17 & 1) == 0)
  {
    if (*(v16 + 32))
    {
      OUTLINED_FUNCTION_57(v16);
      *(v18 + 4) = 6;
    }

    OUTLINED_FUNCTION_33(v16, *(v16 + 72), xmmword_272B87CB0);
    if (v20 <= 6)
    {
      LOWORD(v20) = 6;
    }

    *(v19 + 64) = v20;
    goto LABEL_27;
  }

  __break(1u);
}

void static WK2_MonthWeatherStatistics.createMonthWeatherStatistics(_:month:temperatureOffset:precipitationOffset:)()
{
  OUTLINED_FUNCTION_219();
  v1 = v0;
  v3 = *v2;
  v5 = *v4;
  v7 = static WK2_MonthlyWeatherStatistics.startMonthlyWeatherStatistics(_:)(v6);
  static WK2_MonthWeatherStatistics.add(month:_:)();
  static WK2_MonthWeatherStatistics.add(temperature:_:)();
  static WK2_MonthlyWeatherStatistics.addVectorOf(months:_:)();
  *v1 = FlatBufferBuilder.endTable(at:)(v7);
  OUTLINED_FUNCTION_218();
}

void static WK2_MonthWeatherStatistics.verify<A>(_:at:of:)(int a1, unint64_t position)
{
  Verifier.visitTable(at:)(position, __src);
  v3 = v2;
  if (!v2)
  {
    if (__src[2] < 5)
    {
      goto LABEL_8;
    }

    v4 = __src[1] + 4;
    if (LOBYTE(__src[3]) == 1 && ((*(__src[8] + 24) + v4) & 1) != 0)
    {
      *v15 = MEMORY[0x277D84C58];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808A3160, &unk_272B87CC0);
      sub_272B87730();
      sub_272B5C86C();
      v7 = swift_allocError();
      OUTLINED_FUNCTION_7(v7, v8, v9, v10, v11, v12, v13, v14, *v15, *&v15[16], *&v15[32]);
    }

    else
    {
      Verifier.rangeInBuffer(position:size:)(__src[1] + 4, 2);
      v3 = v5;
      if (!v5)
      {
        if (!*(*(__src[8] + 24) + v4) || (Verifier.rangeInBuffer(position:size:)(__src[0] + *(*(__src[8] + 24) + v4), 1), (v3 = v6) == 0))
        {
LABEL_8:
          sub_272B5D6F0(6, 0x74617265706D6574, 0xEB00000000657275, 0);
          if (!v3)
          {
            sub_272B5D71C(8, 0x7469706963657270, 0xED00006E6F697461, 0);
            if (__OFSUB__(__src[7], 1))
            {
              __break(1u);
              return;
            }

            --__src[7];
          }
        }
      }
    }

    memcpy(v15, __src, sizeof(v15));
    sub_272B522C4(v15);
  }
}

void static WK2_MonthWeatherStatistics.add(precipitation:_:)()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D85DE8];

  static WK2_MonthlyWeatherStatistics.addVectorOf(months:_:)();
}

uint64_t getEnumTagSinglePayload for Offset(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Offset(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

uint64_t NativeObject.serialize<A>(type:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  FlatBufferBuilder.init(initialSize:serializeDefaults:)(1024, 0, v13);
  NativeObject.serialize<A>(builder:type:)(v13, a1, a2, a3, v9, a5);
  v11 = v10;
  memcpy(__dst, v13, sizeof(__dst));
  sub_272B51710(__dst);
  return v11;
}

void NativeObject.serialize<A>(builder:type:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a3 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](a1);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, v6);
  (*(a6 + 24))(&v23, a1, v14, a4, a6);
  FlatBufferBuilder.finish(offset:addPrefix:)(&v23, 0);
  v15 = *(a1 + 16);
  if ((v15 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(v15))
  {
    v16 = *(a1 + 8);
    v17 = *(v16 + 24);
    v18 = *(v16 + 32) - v15;
    type metadata accessor for ByteBuffer.Storage();
    swift_allocObject();
    v19 = ByteBuffer.Storage.init(count:alignment:)(v15);
    ByteBuffer.Storage.copy(from:count:)((v17 + v18), v15);
    v20 = *(v11 + 8);

    v20(v14, a3);
    v21 = *(v19 + 32);

    return;
  }

  __break(1u);
}

Swift::UInt32 __swiftcall FlatBufferBuilder.startTable(with:)(Swift::Int with)
{
  OUTLINED_FUNCTION_40_0();
  v3 = *v1;
  if (*(*v1 + 56) < (*(*v1 + 80) + 8 * v2))
  {
    if (*(v3 + 48))
    {
      goto LABEL_11;
    }

    v4 = 8 * v2;
    v5 = *(v3 + 32);
    if (v5)
    {
      MEMORY[0x2743D4FD0](v5, -1, -1);
    }

    v6 = swift_slowAlloc();
    *(v3 + 32) = v6;
    *(v3 + 40) = v6 + v4;
    *(v3 + 48) = 0;
    *(v3 + 56) = v4;
  }

  v2 = v1[2];
  if ((v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(v2))
  {
    return v2;
  }

  __break(1u);
LABEL_11:
  __break(1u);
  return v2;
}

void FlatBufferBuilder.add(offset:at:)(unsigned int *a1, __int16 a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  if (!v3)
  {
    goto LABEL_24;
  }

  v4 = v2;
  OUTLINED_FUNCTION_27_0();
  if (v8 ^ v9 | v7)
  {
    OUTLINED_FUNCTION_9_1();
  }

  v10 = *(v2 + 16);
  if ((v10 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_26;
  }

  if (HIDWORD(v10))
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v11 = OUTLINED_FUNCTION_10_0(v6, v10);
  v13 = v11 + v12;
  v14 = *(v2 + 8);
  OUTLINED_FUNCTION_15_0();
  if (v8 != v9)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v15, v16, *(v4 + 24));
  }

  *(v4 + 16) = v13;
  if (HIDWORD(v13))
  {
    goto LABEL_27;
  }

  v17 = v13 - v3 + 4;
  if (v13 - v3 == -4 && *(v4 + 57) != 1)
  {
LABEL_24:
    v28 = *MEMORY[0x277D85DE8];
    return;
  }

  v18 = OUTLINED_FUNCTION_8_0();
  if (v8 != v9)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v18, v13, *(v4 + 24));
  }

  *(v4 + 16) = v3;
  v19 = v3 + 4;
  OUTLINED_FUNCTION_15_0();
  if (v8 != v9)
  {
    v21 = OUTLINED_FUNCTION_35_0();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v21, v3, v22);
    v20 = *(v14 + 32);
  }

  OUTLINED_FUNCTION_3_2(v20);
  *(v23 - 4) = v17;
  *(v4 + 16) = v19;
  OUTLINED_FUNCTION_58_0();
  if (!v7 & v24)
  {
LABEL_28:
    __break(1u);
  }

  v25 = *v4;
  if ((*(*v4 + 48) & 1) == 0)
  {
    v26 = *(v25 + 32);
    if (v26)
    {
      v27 = v26 + *(v25 + 80);
      *v27 = v19;
      *(v27 + 4) = a2;
    }

    OUTLINED_FUNCTION_22_0(v25, *(v25 + 72), xmmword_272B87CB0);
    goto LABEL_24;
  }

  __break(1u);
}

void FlatBufferBuilder.add<A>(element:def:at:)()
{
  OUTLINED_FUNCTION_31_0();
  v3 = v0;
  v5 = v4;
  v7 = v6;
  v35 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_2();
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_53_1();
  v14 = *(v13 + 8);
  if ((sub_272B876D0() & 1) != 0 && *(v0 + 57) != 1)
  {
LABEL_21:
    v34 = *MEMORY[0x277D85DE8];
    OUTLINED_FUNCTION_32_2();
    return;
  }

  if (*(v0 + 64) < v11)
  {
    *(v0 + 64) = v11;
    *(v0 + 24) = v11;
  }

  v15 = *(v0 + 16);
  OUTLINED_FUNCTION_11_0();
  if (!(v18 ^ v19 | v17))
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if ((v16 | v11) < 0)
  {
    goto LABEL_22;
  }

  if (v11 > 0xFFFFFFFFLL)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (!v11)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  OUTLINED_FUNCTION_71_0(v16, v11 - 1);
  v20 = *(v0 + 8);
  OUTLINED_FUNCTION_25_0();
  if (v18 != v19)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v21, v22, v3[3]);
  }

  v3[2] = v2;
  v23 = v2 + v11;
  if (*(v20 + 32) < v2 + v11)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v11, v2, v3[3]);
  }

  v24 = OUTLINED_FUNCTION_46_0(v9);
  v25(v24);
  v26 = *(v20 + 24);
  v27 = *(v20 + 32) - v23;
  OUTLINED_FUNCTION_28_0();
  memcpy(v28, v29, v30);
  v3[2] = v23;
  (*(v9 + 8))(v1, v5);
  if ((v23 & 0x8000000000000000) != 0)
  {
    goto LABEL_25;
  }

  if (HIDWORD(v23))
  {
    goto LABEL_26;
  }

  v31 = *v3;
  if ((*(*v3 + 48) & 1) == 0)
  {
    v32 = *(v31 + 32);
    if (v32)
    {
      v33 = v32 + *(v31 + 80);
      *v33 = v23;
      *(v33 + 4) = v7;
    }

    OUTLINED_FUNCTION_22_0(v31, *(v31 + 72), xmmword_272B87CB0);
    goto LABEL_21;
  }

  __break(1u);
}

void FlatBufferBuilder.add<A>(element:at:)()
{
  OUTLINED_FUNCTION_31_0();
  v1 = v0;
  v3 = v2;
  v48 = v4;
  v6 = v5;
  v49 = *MEMORY[0x277D85DE8];
  v7 = sub_272B878A0();
  OUTLINED_FUNCTION_2_2();
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v12);
  v14 = &v47[-v13];
  OUTLINED_FUNCTION_2_2();
  v16 = v15;
  v18 = *(v17 + 64);
  v20 = MEMORY[0x28223BE20](v19);
  MEMORY[0x28223BE20](v20);
  v22 = &v47[-v21];
  (*(v9 + 16))(v14, v6, v7);
  if (__swift_getEnumTagSinglePayload(v14, 1, v3) == 1)
  {
    (*(v9 + 8))(v14, v7);
LABEL_24:
    v46 = *MEMORY[0x277D85DE8];
    OUTLINED_FUNCTION_32_2();
    return;
  }

  (*(v16 + 32))(v22, v14, v3);
  if (v1[8] < v18)
  {
    v1[8] = v18;
    v1[3] = v18;
  }

  v23 = v1[2];
  OUTLINED_FUNCTION_11_0();
  if (!(v26 ^ v27 | v25))
  {
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if ((v24 | v18) < 0)
  {
    goto LABEL_25;
  }

  if (v18 > 0xFFFFFFFFLL)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (!v18)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  OUTLINED_FUNCTION_71_0(v24, v18 - 1);
  v28 = v1[1];
  OUTLINED_FUNCTION_25_0();
  if (v26 != v27)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v29, v30, v1[3]);
  }

  v1[2] = v14;
  v31 = &v14[v18];
  OUTLINED_FUNCTION_36_1();
  if (v26 != v27)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v18, v14, v1[3]);
  }

  v32 = OUTLINED_FUNCTION_46_0(v16);
  v33(v32);
  v34 = *(v28 + 24);
  v35 = *(v28 + 32) - v31;
  OUTLINED_FUNCTION_28_0();
  memcpy(v36, v37, v38);
  v1[2] = v31;
  v39 = *(v16 + 8);
  v40 = OUTLINED_FUNCTION_68_0();
  v39(v40);
  if ((v31 & 0x8000000000000000) != 0)
  {
    goto LABEL_28;
  }

  if (HIDWORD(v31))
  {
    goto LABEL_29;
  }

  v41 = *v1;
  if ((*(*v1 + 48) & 1) == 0)
  {
    v42 = *(v41 + 32);
    v43 = v48;
    if (v42)
    {
      v44 = v42 + *(v41 + 80);
      *v44 = v31;
      *(v44 + 4) = v43;
    }

    (v39)(v22, v3);
    *(v41 + 72) = vaddq_s64(*(v41 + 72), xmmword_272B87CB0);
    v45 = *(v41 + 64);
    if (v45 <= v43)
    {
      LOWORD(v45) = v43;
    }

    *(v41 + 64) = v45;
    goto LABEL_24;
  }

  __break(1u);
}

void FlatBufferBuilder.sizedBuffer.getter()
{
  v1 = *(v0 + 16);
  if ((v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(v1))
  {
    v2 = *(v0 + 8);
    v3 = *(v2 + 24);
    v4 = *(v2 + 32) - v1;
    type metadata accessor for ByteBuffer.Storage();
    swift_allocObject();
    v5 = ByteBuffer.Storage.init(count:alignment:)(v1);
    ByteBuffer.Storage.copy(from:count:)((v3 + v4), v1);
    v6 = *(v5 + 32);
    return;
  }

  __break(1u);
}

Swift::Void __swiftcall FlatBufferBuilder.clear()()
{
  v1 = v0;
  v0[8] = 0;
  v0[3] = 0;
  *(v0 + 40) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808A33E8, &qword_272B8A890);
  sub_272B876A0();
  v3 = v0 + 4;
  v2 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *v3;
  if (isUniquelyReferenced_nonNull_native)
  {
    sub_272B7DB60(0, *(v5 + 16));
  }

  else
  {
    v6 = sub_272B7DA74(0, *(v5 + 24) >> 1);

    *v3 = v6;
  }

  v7 = *v1;
  *(v7 + 64) = 0;
  *(v7 + 72) = 0;
  *(v7 + 80) = 0;
  *(v1 + 1) = xmmword_272B8A880;
  ByteBuffer.Storage.initialize(for:)(*(v1[1] + 32));
}

uint64_t FlatBufferBuilder.VTableStorage.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = OUTLINED_FUNCTION_33_0(v0);
  *(v0 + 32) = v1;
  *(v0 + 40) = v1;
  *(v0 + 48) = 0;
  return v0;
}

uint64_t FlatBufferBuilder._vtableStorage.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t FlatBufferBuilder._bb.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[1];

  v3[1] = a1;
  v3[2] = a2;
  v3[3] = a3;
  return result;
}

uint64_t FlatBufferBuilder._minAlignment.setter(uint64_t result)
{
  *(v1 + 64) = result;
  *(v1 + 24) = result;
  return result;
}

uint64_t sub_272B7A428(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    *(*result + 24) = *(*result + 64);
  }

  return result;
}

unint64_t FlatBufferBuilder.size.getter()
{
  result = *(v0 + 16);
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (HIDWORD(result))
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

void *FlatBufferBuilder.fullSizedByteArray.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v1 + 32);
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = *(v1 + 24);
  v4 = sub_272B7DAF0(*(v1 + 32), 0);
  memcpy(v4 + 4, v3, v2);
  return v4;
}

uint64_t _s11WeatherData17FlatBufferBuilderV3_bbAA04ByteD0Vvg_0()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
}

void FlatBufferBuilder.finish(offset:fileId:addPrefix:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_76_0();
  a27 = v29;
  a28 = v30;
  v32 = v31;
  a16 = *MEMORY[0x277D85DE8];
  v33 = v28[2];
  OUTLINED_FUNCTION_11_0();
  if (!(v39 ^ v40 | v38))
  {
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v41 = v28;
  v42 = v37;
  v43 = v28[8];
  if (v37)
  {
    v44 = -12;
  }

  else
  {
    v44 = -8;
  }

  if ((v35 | v43) < 0)
  {
    goto LABEL_55;
  }

  if (v43 > 0xFFFFFFFFLL)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v45 = v43 != 0;
  v46 = v43 - 1;
  if (!v45)
  {
LABEL_57:
    __break(1u);
  }

  v47 = v36;
  v48 = *v34;
  v49 = v35 + ((v44 - v35) & v46);
  v50 = v28[1];
  OUTLINED_FUNCTION_5_1();
  if (v39 != v40)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v51, v52, v41[3]);
  }

  v41[2] = v49;
  OUTLINED_FUNCTION_38_0();
  if (v39 != v40)
  {
    v53 = v41[3];
    v54 = OUTLINED_FUNCTION_23_0();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v54, v55, v56);
  }

  v57 = OUTLINED_FUNCTION_29_0();
  sub_272B46F44(v57, v58, v59, 4uLL);
  OUTLINED_FUNCTION_67_0();
  if (!v38)
  {
    goto LABEL_52;
  }

  v60 = (v47 & 0x2000000000000000) != 0 ? HIBYTE(v47) & 0xF : v32 & 0xFFFFFFFFFFFFLL;
  if (!v60)
  {
    goto LABEL_52;
  }

  v79 = v48;
  v61 = (v32 >> 59) & 1;
  if ((v47 & 0x1000000000000000) == 0)
  {
    LODWORD(v61) = 1;
  }

  v62 = 11;
  if (v61)
  {
    v62 = 7;
  }

  v63 = v62 | (v60 << 16);
  v64 = 4 << v61;
  OUTLINED_FUNCTION_54_0();
  while (1)
  {
    if ((v63 & 0xC) != v64)
    {
      if ((v47 & 0x1000000000000000) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_32;
    }

    v65 = OUTLINED_FUNCTION_4_2();
    v68 = sub_272B73308(v65, v66, v67);
    if (v68 < 0x4000)
    {
      break;
    }

    v63 = v68;
    if ((v47 & 0x1000000000000000) == 0)
    {
LABEL_29:
      OUTLINED_FUNCTION_44_0();
      goto LABEL_34;
    }

LABEL_32:
    if (v60 < v63 >> 16)
    {
      __break(1u);
      goto LABEL_54;
    }

    OUTLINED_FUNCTION_4_2();
    v63 = sub_272B87770();
LABEL_34:
    v69 = v63;
    if ((v63 & 0xC) == v64)
    {
      v75 = OUTLINED_FUNCTION_4_2();
      v69 = sub_272B73308(v75, v76, v77);
    }

    v70 = v69 >> 16;
    if (v69 >> 16 >= v60)
    {
      goto LABEL_50;
    }

    if ((v47 & 0x1000000000000000) != 0)
    {
      OUTLINED_FUNCTION_12_1();
      v72 = sub_272B87790();
    }

    else if ((v47 & 0x2000000000000000) != 0)
    {
      a13 = v32;
      a14 = a12;
      v72 = *(&a13 + v70);
    }

    else
    {
      v71 = a11;
      if ((v32 & 0x1000000000000000) == 0)
      {
        OUTLINED_FUNCTION_29_0();
        v71 = sub_272B878E0();
      }

      v72 = *(v71 + v70);
    }

    v73 = v41[2];
    OUTLINED_FUNCTION_15_0();
    if (v39 != v40)
    {
      ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(1, v73, v41[3]);
      v74 = *(v50 + 32);
    }

    *(*(v50 + 24) + v74 + ~v73) = v72;
    v41[2] = v73 + 1;
    if (!(v63 >> 14))
    {
      goto LABEL_51;
    }
  }

  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:

  v48 = v79;
LABEL_52:

  LODWORD(a13) = v48;
  FlatBufferBuilder.finish(offset:addPrefix:)(&a13, v42 & 1);
  v78 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_75_0();
}

Swift::Void __swiftcall FlatBufferBuilder.preAlign(len:alignment:)(Swift::Int len, Swift::Int alignment)
{
  v3 = v2;
  if (v2[8] < alignment)
  {
    v2[8] = alignment;
    v2[3] = alignment;
  }

  v4 = v2[2];
  OUTLINED_FUNCTION_52_0();
  if (!(v9 ^ v10 | v8))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v5 > 0xFFFFFFFFLL)
  {
    goto LABEL_15;
  }

  if ((v7 | v5 | v6) < 0)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_30_0();
  if (!(v9 ^ v10 | v8))
  {
    goto LABEL_17;
  }

  v12 = v11 != 0;
  v13 = v11 - 1;
  if (!v12)
  {
    goto LABEL_18;
  }

  v14 = OUTLINED_FUNCTION_24_0(v13);
  v16 = v15 + v14;
  v17 = v2[1];
  OUTLINED_FUNCTION_5_1();
  if (v9 != v10)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v18, v19, v3[3]);
  }

  v3[2] = v16;
}

Swift::UInt32 __swiftcall FlatBufferBuilder.refer(to:)(Swift::UInt32 to)
{
  v2 = v1;
  OUTLINED_FUNCTION_27_0();
  if (v6 ^ v7 | v5)
  {
    OUTLINED_FUNCTION_9_1();
  }

  v8 = *(v1 + 16);
  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (HIDWORD(v8))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    return v4;
  }

  v9 = OUTLINED_FUNCTION_10_0(v4, v8);
  v11 = v9 + v10;
  v12 = *(v1 + 8);
  OUTLINED_FUNCTION_15_0();
  if (v6 != v7)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v4, v13, *(v2 + 24));
  }

  *(v2 + 16) = v11;
  if (HIDWORD(v11))
  {
    goto LABEL_13;
  }

  LODWORD(v4) = v11 - to + 4;
  return v4;
}

void FlatBufferBuilder.push<A>(element:)()
{
  OUTLINED_FUNCTION_31_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v28[1] = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_2();
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v10);
  if (v0[8] < v9)
  {
    v0[8] = v9;
    v0[3] = v9;
  }

  v11 = v0[2];
  OUTLINED_FUNCTION_11_0();
  if (!(v14 ^ v15 | v13))
  {
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if ((v12 | v9) < 0)
  {
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_51_0();
  if (!(v14 ^ v15 | v13))
  {
    goto LABEL_19;
  }

  if (!v9)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }

  v17 = v16 + ((v9 - 1) & (-v16 - v9));
  v18 = v0[1];
  OUTLINED_FUNCTION_25_0();
  if (v14 != v15)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v19, v20, v1[3]);
  }

  v1[2] = v17;
  v21 = v17 + v9;
  OUTLINED_FUNCTION_37_0();
  if (v14 != v15)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v9, v17, v1[3]);
  }

  (*(v7 + 16))(v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v5, v3);
  v22 = *(v18 + 24);
  v23 = *(v18 + 32) - v21;
  OUTLINED_FUNCTION_12_1();
  memcpy(v24, v25, v26);
  v1[2] = v21;
  (*(v7 + 8))(v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  if ((v21 & 0x8000000000000000) != 0)
  {
    goto LABEL_21;
  }

  if (HIDWORD(v21))
  {
    goto LABEL_22;
  }

  v27 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_32_2();
}

Swift::Void __swiftcall FlatBufferBuilder.minAlignment(size:)(Swift::Int size)
{
  if (*(v1 + 64) < size)
  {
    *(v1 + 64) = size;
    *(v1 + 24) = size;
  }
}

Swift::UInt32 __swiftcall FlatBufferBuilder.padding(bufSize:elementSize:)(Swift::UInt32 bufSize, Swift::UInt32 elementSize)
{
  if (elementSize)
  {
    return (elementSize - 1) & -bufSize;
  }

  __break(1u);
  return bufSize;
}

void FlatBufferBuilder.preAlign<A>(len:type:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(*(a3 - 8) + 64);
  if (v3[8] < v5)
  {
    v3[8] = v5;
    v3[3] = v5;
  }

  v6 = v3[2];
  OUTLINED_FUNCTION_52_0();
  if (!(v11 ^ v12 | v10))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v7 > 0xFFFFFFFFLL)
  {
    goto LABEL_15;
  }

  if ((v9 | v7 | v8) < 0)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_30_0();
  if (!(v11 ^ v12 | v10))
  {
    goto LABEL_17;
  }

  v14 = v13 != 0;
  v15 = v13 - 1;
  if (!v14)
  {
    goto LABEL_18;
  }

  v16 = OUTLINED_FUNCTION_24_0(v15);
  v18 = v17 + v16;
  v19 = v3[1];
  OUTLINED_FUNCTION_5_1();
  if (v11 != v12)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v20, v21, v4[3]);
  }

  v4[2] = v18;
}

Swift::Void __swiftcall FlatBufferBuilder.track(offset:at:)(Swift::UInt32 offset, Swift::UInt16 at)
{
  v3 = *v2;
  if (*(*v2 + 48))
  {
    __break(1u);
  }

  else
  {
    v4 = *(v3 + 32);
    if (v4)
    {
      v5 = v4 + *(v3 + 80);
      *v5 = offset;
      *(v5 + 4) = at;
    }

    *(v3 + 72) = vaddq_s64(*(v3 + 72), xmmword_272B87CB0);
    v6 = *(v3 + 64);
    if (v6 <= at)
    {
      LOWORD(v6) = at;
    }

    *(v3 + 64) = v6;
  }
}

Swift::Void __swiftcall FlatBufferBuilder.startVector(_:elementSize:)(Swift::Int _, Swift::Int elementSize)
{
  v3 = v2;
  OUTLINED_FUNCTION_40_0();
  v5 = v2[8];
  if (v5 <= 3)
  {
    v5 = 4;
    v2[8] = 4;
    v2[3] = 4;
  }

  v6 = v2[2];
  OUTLINED_FUNCTION_11_0();
  if (!(v10 ^ v11 | v9))
  {
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v12 = elementSize * v7;
  if ((v8 | (elementSize * v7)) < 0)
  {
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_51_0();
  if (!(v10 ^ v11 | v9))
  {
    goto LABEL_23;
  }

  v14 = ((-v13 - v12) & 3) + v13;
  v15 = v2[1];
  OUTLINED_FUNCTION_15_0();
  if (v10 != v11)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v16, v17, v3[3]);
  }

  v3[2] = v14;
  if (v5 < elementSize)
  {
    v3[8] = elementSize;
    v3[3] = elementSize;
  }

  if (v14 > 0xFFFFFFFFLL)
  {
    goto LABEL_24;
  }

  if ((v14 | elementSize) < 0)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_66_0();
  if (!(v10 ^ v11 | v9))
  {
    goto LABEL_26;
  }

  if (!elementSize)
  {
LABEL_27:
    __break(1u);
    return;
  }

  v18 = v14 + OUTLINED_FUNCTION_24_0(elementSize - 1);
  OUTLINED_FUNCTION_5_1();
  if (v10 != v11)
  {
    OUTLINED_FUNCTION_79_0(v19);
  }

  v3[2] = v18;
}

void FlatBufferBuilder.endVector(len:)(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v24 = *MEMORY[0x277D85DE8];
  *(v2 + 40) = 0;
  if (a1 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_17;
  }

  v4 = a1;
  if (a1 > 0x7FFFFFFF)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v5 = v2;
  OUTLINED_FUNCTION_27_0();
  if (v8 ^ v9 | v7)
  {
    OUTLINED_FUNCTION_9_1();
  }

  v10 = *(v2 + 16);
  if ((v10 & 0x8000000000000000) != 0)
  {
    goto LABEL_18;
  }

  if (HIDWORD(v10))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v11 = OUTLINED_FUNCTION_10_0(v6, v10);
  v13 = v11 + v12;
  v14 = *(v2 + 8);
  OUTLINED_FUNCTION_105();
  if (v8 != v9)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v15, v16, *(v5 + 24));
  }

  *(v5 + 16) = v13;
  v17 = v13 + 4;
  OUTLINED_FUNCTION_17_0();
  if (v8 != v9)
  {
    v19 = OUTLINED_FUNCTION_35_0();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v19, v13, v20);
    v18 = *(v14 + 32);
  }

  OUTLINED_FUNCTION_3_2(v18);
  *(v21 - 4) = v4;
  *(v5 + 16) = v17;
  OUTLINED_FUNCTION_58_0();
  if (!v7 & v22)
  {
LABEL_20:
    __break(1u);
  }

  *a2 = v17;
  v23 = *MEMORY[0x277D85DE8];
}

void FlatBufferBuilder.createVector<A>(_:)()
{
  OUTLINED_FUNCTION_31_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v38 = *MEMORY[0x277D85DE8];
  sub_272B87810();
  v6 = *(*(v3 - 8) + 64);
  OUTLINED_FUNCTION_40_0();
  v7 = v0[8];
  if (v7 <= 3)
  {
    v7 = 4;
    v0[8] = 4;
    v0[3] = 4;
  }

  v8 = v0[2];
  OUTLINED_FUNCTION_11_0();
  if (!(v12 ^ v13 | v11))
  {
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v14 = v6 * v9;
  if ((v10 | (v6 * v9)) < 0)
  {
    goto LABEL_34;
  }

  OUTLINED_FUNCTION_65_0();
  if (!(v12 ^ v13 | v11))
  {
    goto LABEL_35;
  }

  v16 = v0 + 1;
  v17 = ((-v15 - v14) & 3) + v15;
  v18 = v0[1];
  OUTLINED_FUNCTION_36_1();
  if (v12 != v13)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v19, v20, v1[3]);
  }

  v1[2] = v17;
  if (v7 < v6)
  {
    v1[8] = v6;
    v1[3] = v6;
  }

  if (v17 > 0xFFFFFFFFLL)
  {
    goto LABEL_36;
  }

  if ((v17 | v6) < 0)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v6 > 0xFFFFFFFFLL)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (!v6)
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v21 = OUTLINED_FUNCTION_24_0(v6 - 1);
  v22 = v17 + v21;
  if (*(v18 + 32) < v17 + v21)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v21, v17, v1[3]);
  }

  v1[2] = v22;
  OUTLINED_FUNCTION_38_0();
  if (v12 != v13)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v14, v22, v1[3]);
  }

  OUTLINED_FUNCTION_78_0();

  OUTLINED_FUNCTION_0_4();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_55_0();
  OUTLINED_FUNCTION_63_0();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_20_1();
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_77_0();

  OUTLINED_FUNCTION_50_0();
  if (v12 != v13)
  {
    goto LABEL_40;
  }

  if (v3 > 0x7FFFFFFF)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v25 = v1[2];
  if ((v25 & 0x8000000000000000) != 0)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (HIDWORD(v25))
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v26 = OUTLINED_FUNCTION_10_0(v24, v25);
  v28 = v26 + v27;
  v29 = *v16;
  OUTLINED_FUNCTION_5_1();
  if (v12 != v13)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v30, v31, v1[3]);
  }

  OUTLINED_FUNCTION_19();
  if (v12 != v13)
  {
    v33 = OUTLINED_FUNCTION_21_0();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v33, v28, v34);
    v32 = *(v29 + 32);
  }

  OUTLINED_FUNCTION_7_1(v32);
  *(v35 - 4) = v3;
  OUTLINED_FUNCTION_42_0();
  if (!v11 & v36)
  {
LABEL_44:
    __break(1u);
  }

  *v5 = v16;
  v37 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_32_2();
}

{
  OUTLINED_FUNCTION_31_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v76 = *MEMORY[0x277D85DE8];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_2_2();
  v62 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_62_0();
  v71 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_72_0();
  v73 = v14;
  OUTLINED_FUNCTION_56_0();
  OUTLINED_FUNCTION_2_2();
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_61_0();
  v70 = v20;
  v21 = sub_272B87810();
  v22 = OUTLINED_FUNCTION_59_0();
  v69 = v23;
  v24 = v23(v22, v3);
  *(v0 + 40) = 1;
  v25 = *(v0 + 64);
  if (v25 <= 3)
  {
    v25 = 4;
    *(v0 + 64) = 4;
    *(v0 + 24) = 4;
  }

  v26 = *(v0 + 16);
  OUTLINED_FUNCTION_11_0();
  if (!(v29 ^ v30 | v28))
  {
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if ((v27 | (v24 * v21)) < 0)
  {
    goto LABEL_36;
  }

  OUTLINED_FUNCTION_64_0();
  if (!(v29 ^ v30 | v28))
  {
    goto LABEL_37;
  }

  v64 = v16;
  v33 = OUTLINED_FUNCTION_41_0(v31, v32);
  v35 = v33 + v34;
  v74 = *(v0 + 8);
  if (*(v74 + 32) < v33 + v34)
  {
    v36 = *(v0 + 24);
    v37 = *(v0 + 8);
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v33, v34, v36);
  }

  *(v1 + 16) = v35;
  if (v25 < v24)
  {
    *(v1 + 64) = v24;
    *(v1 + 24) = v24;
  }

  OUTLINED_FUNCTION_51_0();
  if (!(v29 ^ v30 | v28))
  {
    goto LABEL_38;
  }

  if ((v35 | v24) < 0)
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  OUTLINED_FUNCTION_66_0();
  if (!(v29 ^ v30 | v28))
  {
    goto LABEL_40;
  }

  if (!v24)
  {
LABEL_41:
    __break(1u);
LABEL_42:

    goto LABEL_26;
  }

  v38 = OUTLINED_FUNCTION_24_0(v24 - 1);
  v24 = v35 + v38;
  if (*(v39 + 32) < v35 + v38)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v38, v35, *(v1 + 24));
  }

  *(v1 + 16) = v24;
  v40 = OUTLINED_FUNCTION_78_0();

  OUTLINED_FUNCTION_0_4();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_47_0();
  v68 = v40;
  MEMORY[0x2743D4A10](v40);

  v41 = sub_272B87810();

  v75 = v41;
  if (v41 == sub_272B877D0())
  {
    goto LABEL_42;
  }

  v63 = v1;
  v61 = v7;
  v42 = v74;
  v67 = *(v3 + 40);
  v66 = (v64 + 16);
  v65 = (v64 + 8);
  do
  {
    sub_272B87830();
    OUTLINED_FUNCTION_1_2();
    swift_getWitnessTable();
    v43 = OUTLINED_FUNCTION_16_0();
    v45 = sub_272B7DF34(v43, v44, v68);
    (*v66)(v70);
    v46 = OUTLINED_FUNCTION_43_0();
    v45(v46);
    v67(v5, v3);
    (*v65)(v70, v5);
    v47 = v69(v5, v3);
    v48 = v47 + v24;
    if (*(v42 + 32) < (v47 + v24))
    {
      v49 = *(v63 + 24);
      v50 = OUTLINED_FUNCTION_68_0();
      ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v50, v51, v52);
      v42 = v74;
    }

    (*(v62 + 16))(v71, v73, AssociatedTypeWitness);
    memcpy((*(v42 + 24) + *(v42 + 32) - v48), v71, v47);
    v53 = *(v62 + 8);
    v54 = OUTLINED_FUNCTION_68_0();
    v53(v54);
    (v53)(v71, AssociatedTypeWitness);
    v24 += v47;
  }

  while (v75 != sub_272B877D0());

  v1 = v63;
  *(v63 + 16) = v48;
  v24 = v48;
  v7 = v61;
LABEL_26:
  *(v1 + 40) = 0;
  v55 = v74;
  if (v21 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_44;
  }

  if (v21 > 0x7FFFFFFF)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (v24 < 0)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (HIDWORD(v24))
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v56 = -v24 & 3;
  v57 = v56 + v24;
  if (*(v74 + 32) < v56 + v24)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v56, v24, *(v1 + 24));
    v55 = v74;
  }

  *(v1 + 16) = v57;
  v58 = v57 + 4;
  v59 = *(v55 + 32);
  if (v59 < (v57 + 4))
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(4, v57, *(v1 + 24));
    v55 = v74;
    v59 = *(v74 + 32);
  }

  *(*(v55 + 24) + v59 - v57 - 4) = v21;
  *(v1 + 16) = v58;
  if (v57 > 0xFFFFFFFB)
  {
LABEL_47:
    __break(1u);
  }

  *v7 = v58;
  v60 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_32_2();
}

void FlatBufferBuilder.createVector<A>(_:size:)()
{
  OUTLINED_FUNCTION_31_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v38 = *MEMORY[0x277D85DE8];
  v6 = *(*(v2 - 8) + 64);
  OUTLINED_FUNCTION_40_0();
  v7 = v0[8];
  if (v7 <= 3)
  {
    v7 = 4;
    v0[8] = 4;
    v0[3] = 4;
  }

  v8 = v0[2];
  OUTLINED_FUNCTION_11_0();
  if (!(v12 ^ v13 | v11))
  {
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v14 = v6 * v10;
  if ((v9 | (v6 * v10)) < 0)
  {
    goto LABEL_35;
  }

  if (v14 > 0xFFFFFFFFLL)
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v15 = v0 + 1;
  v16 = ((-v9 - v14) & 3) + v9;
  v17 = v0[1];
  OUTLINED_FUNCTION_25_0();
  if (v12 != v13)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v18, v19, v1[3]);
  }

  v1[2] = v16;
  if (v7 < v6)
  {
    v1[8] = v6;
    v1[3] = v6;
  }

  OUTLINED_FUNCTION_65_0();
  if (!(v12 ^ v13 | v11))
  {
    goto LABEL_37;
  }

  if ((v16 | v6) < 0)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v6 > 0xFFFFFFFFLL)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (!v6)
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v20 = v16 + OUTLINED_FUNCTION_24_0(v6 - 1);
  OUTLINED_FUNCTION_36_1();
  if (v12 != v13)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v21, v16, v1[3]);
  }

  v1[2] = v20;
  OUTLINED_FUNCTION_69_0();
  sub_272B87810();
  OUTLINED_FUNCTION_38_0();
  if (v12 != v13)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v22, v20, v1[3]);
  }

  OUTLINED_FUNCTION_78_0();

  OUTLINED_FUNCTION_0_4();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_55_0();
  OUTLINED_FUNCTION_63_0();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_20_1();
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_77_0();

  OUTLINED_FUNCTION_50_0();
  if (v12 != v13)
  {
    goto LABEL_41;
  }

  if (v3 > 0x7FFFFFFF)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v25 = v1[2];
  if ((v25 & 0x8000000000000000) != 0)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if (HIDWORD(v25))
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v26 = OUTLINED_FUNCTION_10_0(v24, v25);
  v28 = v26 + v27;
  v29 = *v15;
  OUTLINED_FUNCTION_5_1();
  if (v12 != v13)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v30, v31, v1[3]);
  }

  OUTLINED_FUNCTION_19();
  if (v12 != v13)
  {
    v33 = OUTLINED_FUNCTION_21_0();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v33, v28, v34);
    v32 = *(v29 + 32);
  }

  OUTLINED_FUNCTION_7_1(v32);
  *(v35 - 4) = v3;
  OUTLINED_FUNCTION_42_0();
  if (!v11 & v36)
  {
LABEL_45:
    __break(1u);
  }

  *v5 = v15;
  v37 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_32_2();
}

{
  OUTLINED_FUNCTION_31_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v76 = *MEMORY[0x277D85DE8];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_2_2();
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_62_0();
  v70 = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_72_0();
  v73 = v17;
  OUTLINED_FUNCTION_56_0();
  OUTLINED_FUNCTION_2_2();
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_61_0();
  v69 = v23;
  v24 = OUTLINED_FUNCTION_59_0();
  v72 = v3;
  v68 = v25;
  v26 = v25(v24, v3);
  *(v0 + 40) = 1;
  v27 = *(v0 + 64);
  if (v27 <= 3)
  {
    v27 = 4;
    *(v0 + 64) = 4;
    *(v0 + 24) = 4;
  }

  v28 = *(v0 + 16);
  OUTLINED_FUNCTION_11_0();
  if (!(v31 ^ v32 | v30))
  {
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if ((v29 | (v26 * v7)) < 0)
  {
    goto LABEL_36;
  }

  OUTLINED_FUNCTION_64_0();
  if (!(v31 ^ v32 | v30))
  {
    goto LABEL_37;
  }

  v65 = v19;
  v35 = OUTLINED_FUNCTION_41_0(v33, v34);
  v37 = v35 + v36;
  v74 = *(v0 + 8);
  if (*(v74 + 32) < v35 + v36)
  {
    v38 = *(v0 + 24);
    v39 = *(v0 + 8);
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v35, v36, v38);
  }

  *(v1 + 16) = v37;
  if (v27 < v26)
  {
    *(v1 + 64) = v26;
    *(v1 + 24) = v26;
  }

  OUTLINED_FUNCTION_51_0();
  if (!(v31 ^ v32 | v30))
  {
    goto LABEL_38;
  }

  if ((v37 | v26) < 0)
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  OUTLINED_FUNCTION_66_0();
  if (!(v31 ^ v32 | v30))
  {
    goto LABEL_40;
  }

  v40 = v26 - 1;
  if (!v26)
  {
LABEL_41:
    __break(1u);
LABEL_42:

    goto LABEL_26;
  }

  v41 = v11;
  v64 = v9;
  v42 = OUTLINED_FUNCTION_24_0(v40);
  v11 = v37 + v42;
  if (*(v43 + 32) < v37 + v42)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v42, v37, *(v1 + 24));
  }

  *(v1 + 16) = v11;
  v44 = OUTLINED_FUNCTION_78_0();

  OUTLINED_FUNCTION_0_4();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_47_0();
  v67 = v44;
  MEMORY[0x2743D4A10](v44);

  v45 = sub_272B87810();

  v75 = v45;
  if (v45 == sub_272B877D0())
  {
    goto LABEL_42;
  }

  v66 = *(v3 + 40);
  v46 = (v41 + 16);
  v47 = (v41 + 8);
  v48 = v74;
  do
  {
    sub_272B87830();
    OUTLINED_FUNCTION_1_2();
    swift_getWitnessTable();
    v49 = OUTLINED_FUNCTION_16_0();
    v51 = sub_272B7DF34(v49, v50, v67);
    (*(v65 + 16))(v69);
    v52 = OUTLINED_FUNCTION_43_0();
    v51(v52);
    v66(v5, v72);
    (*(v65 + 8))(v69, v5);
    v53 = v68(v5, v72);
    v54 = v53;
    v55 = v53 + v11;
    if (*(v48 + 32) < (v53 + v11))
    {
      ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v53, v11, *(v1 + 24));
      v48 = v74;
    }

    (*v46)(v70, v73, AssociatedTypeWitness);
    memcpy((*(v48 + 24) + *(v48 + 32) - v55), v70, v54);
    v56 = *v47;
    (*v47)(v73, AssociatedTypeWitness);
    v57 = OUTLINED_FUNCTION_39_0();
    v56(v57);
    v11 = v55;
  }

  while (v75 != sub_272B877D0());

  *(v1 + 16) = v55;
  v11 = v55;
LABEL_26:
  *(v1 + 40) = 0;
  v58 = v74;
  if (v7 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_44;
  }

  if (v7 > 0x7FFFFFFF)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if ((v11 & 0x8000000000000000) != 0)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (HIDWORD(v11))
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v59 = -v11 & 3;
  v60 = v59 + v11;
  if (*(v74 + 32) < (v59 + v11))
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v59, v11, *(v1 + 24));
    v58 = v74;
  }

  *(v1 + 16) = v60;
  v61 = v60 + 4;
  v62 = *(v58 + 32);
  if (v62 < (v60 + 4))
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(4, v60, *(v1 + 24));
    v58 = v74;
    v62 = *(v74 + 32);
  }

  *(*(v58 + 24) + v62 - v60 - 4) = v7;
  *(v1 + 16) = v61;
  if (v60 > 0xFFFFFFFB)
  {
LABEL_47:
    __break(1u);
  }

  *v64 = v61;
  v63 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_32_2();
}

void FlatBufferBuilder.createVector(ofOffsets:)()
{
  OUTLINED_FUNCTION_73_0();
  v3 = v0;
  v5 = v4;
  v7 = v6;
  v38 = *MEMORY[0x277D85DE8];
  v8 = *(v4 + 16);
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_27_0();
  if (v10 ^ v11 | v9)
  {
    OUTLINED_FUNCTION_9_1();
  }

  v12 = v0[2];
  OUTLINED_FUNCTION_11_0();
  if (!(v10 ^ v11 | v9))
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if (((v13 | (4 * v8)) & 0x8000000000000000) != 0)
  {
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  OUTLINED_FUNCTION_30_0();
  if (!(v10 ^ v11 | v9))
  {
    goto LABEL_45;
  }

  v16 = OUTLINED_FUNCTION_10_0(v14, v15);
  v18 = v16 + v17;
  v0 = v0[1];
  OUTLINED_FUNCTION_17_0();
  if (v10 != v11)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v19, v20, v3[3]);
  }

  v3[2] = v18;
  if (v18 < 0)
  {
    goto LABEL_46;
  }

  if (HIDWORD(v18))
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v1 = OUTLINED_FUNCTION_49_0() + v18;
  OUTLINED_FUNCTION_15_0();
  if (v10 != v11)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v21, v18, v3[3]);
  }

  v2 = 4294967291;
  v3[2] = v1;
  if (v8)
  {
    v36 = v8;
    v37 = v7;
    v7 = v8;
    while (v1 <= 0xFFFFFFFFLL)
    {
      v22 = *(v5 + 28 + 4 * v7);
      v23 = OUTLINED_FUNCTION_8_0();
      if (v10 != v11)
      {
        ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v23, v1, v3[3]);
      }

      if (v5 > 0xFFFFFFFFLL)
      {
        goto LABEL_41;
      }

      v24 = OUTLINED_FUNCTION_6_0();
      if (v10 != v11)
      {
        ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v24, v5, v3[3]);
        v25 = v0[4];
      }

      v1 = v18 + 4;
      if (v25 < v18 + 4)
      {
        v26 = OUTLINED_FUNCTION_35_0();
        ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v26, v18, v27);
        v25 = v0[4];
      }

      *(v0[3] + v25 - v18 - 4) = v5 - v22 + 4;
      if (v18 > 4294967291)
      {
        goto LABEL_42;
      }

      if (!--v7)
      {
        v3[2] = v1;
        *(v3 + 40) = 0;
        v28 = v36;
        v7 = v37;
        if (!(v36 >> 31))
        {
          goto LABEL_32;
        }

LABEL_50:
        __break(1u);
        goto LABEL_51;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

LABEL_48:
  v28 = 0;
  *(v3 + 40) = 0;
  if (HIDWORD(v1))
  {
    __break(1u);
    goto LABEL_50;
  }

LABEL_32:
  v29 = OUTLINED_FUNCTION_8_0();
  if (v10 != v11)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v29, v1, v3[3]);
  }

  v3[2] = v5;
  v30 = v5 + 4;
  OUTLINED_FUNCTION_26_0();
  if (v10 != v11)
  {
    v32 = OUTLINED_FUNCTION_35_0();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v32, v5, v33);
    v31 = v0[4];
  }

  OUTLINED_FUNCTION_3_2(v31);
  *(v34 - 4) = v28;
  v3[2] = v30;
  if (v5 > v2)
  {
LABEL_51:
    __break(1u);
  }

  *v7 = v30;
  v35 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_74_0();
}

void FlatBufferBuilder.createVector(ofOffsets:len:)()
{
  OUTLINED_FUNCTION_73_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v38 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_27_0();
  if (v9 ^ v10 | v8)
  {
    OUTLINED_FUNCTION_9_1();
  }

  v11 = *(v0 + 16);
  OUTLINED_FUNCTION_11_0();
  if (!(v9 ^ v10 | v8))
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  if ((v12 | (4 * v3)) < 0)
  {
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  OUTLINED_FUNCTION_30_0();
  if (!(v9 ^ v10 | v8))
  {
    goto LABEL_49;
  }

  v15 = OUTLINED_FUNCTION_10_0(v13, v14);
  v17 = v15 + v16;
  v18 = *(v0 + 8);
  OUTLINED_FUNCTION_37_0();
  if (v9 != v10)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v19, v20, *(v1 + 24));
  }

  *(v1 + 16) = v17;
  if ((v17 & 0x8000000000000000) != 0)
  {
    goto LABEL_50;
  }

  if (HIDWORD(v17))
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v21 = (-v17 & 3) + v17;
  OUTLINED_FUNCTION_105();
  if (v9 != v10)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v22, v17, *(v1 + 24));
  }

  *(v1 + 16) = v21;
  v23 = *(v5 + 16);
  if (v23)
  {
    v37 = v7;
    while (v21 <= 0xFFFFFFFFLL)
    {
      v24 = *(v5 + 28 + 4 * v23);
      v25 = OUTLINED_FUNCTION_6_0();
      if (v9 != v10)
      {
        ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v25, v21, *(v1 + 24));
      }

      if (v5 > 0xFFFFFFFFLL)
      {
        goto LABEL_45;
      }

      v26 = OUTLINED_FUNCTION_49_0() + v5;
      OUTLINED_FUNCTION_37_0();
      if (v9 != v10)
      {
        ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v27, v5, *(v1 + 24));
        v28 = *(v18 + 32);
      }

      v21 = v26 + 4;
      if (v28 < v26 + 4)
      {
        v29 = OUTLINED_FUNCTION_35_0();
        ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v29, v26, v30);
        v28 = *(v18 + 32);
      }

      OUTLINED_FUNCTION_48_0(v28);
      if (v26 > 4294967291)
      {
        goto LABEL_46;
      }

      if (!--v23)
      {
        *(v1 + 16) = v21;
        v7 = v37;
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

LABEL_32:
  *(v1 + 40) = 0;
  if (v3 < 0xFFFFFFFF80000000)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  if (v3 > 0x7FFFFFFF)
  {
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  OUTLINED_FUNCTION_51_0();
  if (!(v9 ^ v10 | v8))
  {
    goto LABEL_54;
  }

  v31 = OUTLINED_FUNCTION_6_0();
  if (v9 != v10)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v31, v21, *(v1 + 24));
  }

  *(v1 + 16) = v5;
  v32 = v5 + 4;
  OUTLINED_FUNCTION_26_0();
  if (v9 != v10)
  {
    v34 = OUTLINED_FUNCTION_35_0();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v34, v5, v35);
    v33 = *(v18 + 32);
  }

  *(*(v18 + 24) + v33 - v5 - 4) = v3;
  *(v1 + 16) = v32;
  if (v5 > 4294967291)
  {
LABEL_55:
    __break(1u);
  }

  *v7 = v32;
  v36 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_74_0();
}

unint64_t FlatBufferBuilder.push(element:)()
{
  v1 = v0;
  v25 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_27_0();
  if (v4 ^ v5 | v3)
  {
    OUTLINED_FUNCTION_38();
  }

  v6 = *(v0 + 16);
  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (HIDWORD(v6))
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v7 = *v2;
  v8 = OUTLINED_FUNCTION_10_0(v2, v6);
  v10 = v8 + v9;
  v11 = *(v0 + 8);
  OUTLINED_FUNCTION_15_0();
  if (v4 != v5)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v12, v13, *(v1 + 24));
  }

  *(v1 + 16) = v10;
  if (HIDWORD(v10))
  {
    goto LABEL_20;
  }

  v14 = v10 - v7 + 4;
  v15 = (-v10 & 3) + v10;
  OUTLINED_FUNCTION_5_1();
  if (v4 != v5)
  {
    OUTLINED_FUNCTION_79_0(v16);
  }

  *(v1 + 16) = v15;
  OUTLINED_FUNCTION_15_0();
  if (v4 != v5)
  {
    v18 = *(v1 + 24);
    v19 = OUTLINED_FUNCTION_23_0();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v19, v20, v21);
    v17 = *(v11 + 32);
  }

  OUTLINED_FUNCTION_7_1(v17);
  *(v22 - 4) = v14;
  *(v1 + 16) = v15 + 4;
  if (v15 > 0xFFFFFFFB)
  {
LABEL_21:
    __break(1u);
  }

  v23 = *MEMORY[0x277D85DE8];
  return v15 + 4;
}

void FlatBufferBuilder.createVector(ofStrings:)(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v4 = v2;
  v5 = 0;
  v86[3] = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 16);
  v82 = a1 + 32;
  v7 = MEMORY[0x277D84F90];
  v8 = 0xFFFFFFFFLL;
  v81 = v6;
  while (1)
  {
    if (v5 == v6)
    {
      goto LABEL_72;
    }

    v83 = v5;
    v84 = v7;
    v9 = (v82 + 16 * v5);
    v11 = *v9;
    v10 = v9[1];
    if ((v10 & 0x1000000000000000) != 0)
    {
      v49 = *v9;
      v50 = v9[1];
      sub_272B87760();
    }

    OUTLINED_FUNCTION_57_0();
    if (v14 ^ v15 | v13)
    {
      OUTLINED_FUNCTION_18_0();
    }

    v16 = *(v4 + 16);
    if (v16 > 0xFFFFFFFFLL)
    {
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
      goto LABEL_127;
    }

    if (((v16 | (v12 + 1)) & 0x8000000000000000) != 0)
    {
      goto LABEL_120;
    }

    if ((v12 + 1) > 0xFFFFFFFFLL)
    {
      goto LABEL_121;
    }

    v85 = v12;
    v6 = ~(v16 + v12) & 3;
    v17 = v6 + v16;
    v8 = *(v4 + 8);
    OUTLINED_FUNCTION_36_1();
    if (v14 != v15)
    {
      v18 = *(v4 + 24);
      OUTLINED_FUNCTION_70_0();
      swift_bridgeObjectRetain_n();
      ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v6, v16, v18);
    }

    else
    {
      OUTLINED_FUNCTION_70_0();
      swift_bridgeObjectRetain_n();
    }

    *(v4 + 16) = v17;
    OUTLINED_FUNCTION_36_1();
    if (v14 ^ v15 | v13)
    {
      v19 = OUTLINED_FUNCTION_34_1();
      ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v19, v17, v20);
    }

    *(v4 + 16) = v17 + 1;
    v21 = v85;
    OUTLINED_FUNCTION_38_0();
    if (v14 != v15)
    {
      ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v85, v22, *(v4 + 24));
    }

    v3 = 0;
    sub_272B46F44(v11, v10, (v4 + 8), v85);
    OUTLINED_FUNCTION_67_0();
    if (v13)
    {
      v3 = (v10 & 0x2000000000000000) != 0 ? HIBYTE(v10) & 0xF : v11 & 0xFFFFFFFFFFFFLL;
      if (v3)
      {
        break;
      }
    }

LABEL_53:

    if ((v21 & 0x8000000000000000) != 0)
    {
      goto LABEL_122;
    }

    if (HIDWORD(v21))
    {
      goto LABEL_123;
    }

    v39 = *(v4 + 16);
    if ((v39 & 0x8000000000000000) != 0)
    {
      goto LABEL_124;
    }

    if (HIDWORD(v39))
    {
      goto LABEL_125;
    }

    v40 = OUTLINED_FUNCTION_10_0(v38, v39);
    v42 = v40 + v41;
    OUTLINED_FUNCTION_25_0();
    if (v14 != v15)
    {
      ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v43, v44, *(v4 + 24));
    }

    *(v4 + 16) = v42;
    v6 = v42 + 4;
    OUTLINED_FUNCTION_26_0();
    if (v14 != v15)
    {
      v46 = OUTLINED_FUNCTION_21_0();
      ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v46, v42, v47);
      v45 = *(v8 + 32);
    }

    *(*(v8 + 24) + v45 - v42 - 4) = v21;

    *(v4 + 16) = v6;
    if (v42 > 0xFFFFFFFB)
    {
      goto LABEL_126;
    }

    v7 = v84;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_272B7D880(0, *(v84 + 2) + 1, 1, v84);
    }

    v3 = *(v7 + 2);
    v48 = *(v7 + 3);
    if (v3 >= v48 >> 1)
    {
      v7 = sub_272B7D880((v48 > 1), v3 + 1, 1, v7);
    }

    v5 = v83 + 1;
    *(v7 + 2) = v3 + 1;
    *&v7[4 * v3 + 32] = v6;
    v6 = v81;
    v8 = 0xFFFFFFFFLL;
  }

  v23 = (v11 >> 59) & 1;
  if ((v10 & 0x1000000000000000) == 0)
  {
    LODWORD(v23) = 1;
  }

  v24 = 11;
  if (v23)
  {
    v24 = 7;
  }

  v25 = v24 | (v3 << 16);
  v7 = (4 << v23);
  OUTLINED_FUNCTION_70_0();
  swift_bridgeObjectRetain_n();
  while (1)
  {
    if ((v25 & 0xC) != v7)
    {
      if ((v10 & 0x1000000000000000) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_36;
    }

    v26 = OUTLINED_FUNCTION_39_0();
    v28 = sub_272B73308(v26, v27, v10);
    if (v28 < 0x4000)
    {
      break;
    }

    v25 = v28;
    if ((v10 & 0x1000000000000000) == 0)
    {
LABEL_33:
      v25 = (v25 & 0xFFFFFFFFFFFF0000) - 65532;
      goto LABEL_38;
    }

LABEL_36:
    if (v3 < v25 >> 16)
    {
      goto LABEL_71;
    }

    OUTLINED_FUNCTION_39_0();
    v25 = sub_272B87770();
LABEL_38:
    v29 = v25;
    if ((v25 & 0xC) == v7)
    {
      v36 = OUTLINED_FUNCTION_39_0();
      v29 = sub_272B73308(v36, v37, v10);
    }

    v30 = v29 >> 16;
    if (v29 >> 16 >= v3)
    {
      goto LABEL_70;
    }

    if ((v10 & 0x1000000000000000) != 0)
    {
      v32 = sub_272B87790();
    }

    else if ((v10 & 0x2000000000000000) != 0)
    {
      v86[0] = v11;
      v86[1] = v10 & 0xFFFFFFFFFFFFFFLL;
      v32 = *(v86 + v30);
    }

    else
    {
      v31 = (v10 & 0xFFFFFFFFFFFFFFFLL) + 32;
      if ((v11 & 0x1000000000000000) == 0)
      {
        v31 = sub_272B878E0();
      }

      v32 = *(v31 + v30);
    }

    v6 = *(v4 + 16);
    OUTLINED_FUNCTION_37_0();
    if (v14 != v15)
    {
      v34 = OUTLINED_FUNCTION_34_1();
      ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v34, v6, v35);
      v33 = *(v8 + 32);
    }

    *(*(v8 + 24) + v33 + ~v6) = v32;
    *(v4 + 16) = v6 + 1;
    if (!(v25 >> 14))
    {
      OUTLINED_FUNCTION_70_0();
      swift_bridgeObjectRelease_n();
      v21 = v85;
      goto LABEL_53;
    }
  }

  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  v6 = *(v7 + 2);
  *(v4 + 40) = 1;
  OUTLINED_FUNCTION_57_0();
  if (v14 ^ v15 | v13)
  {
    OUTLINED_FUNCTION_18_0();
  }

  v51 = *(v4 + 16);
  OUTLINED_FUNCTION_11_0();
  if (!(v14 ^ v15 | v13))
  {
LABEL_127:
    __break(1u);
LABEL_128:
    __break(1u);
    goto LABEL_129;
  }

  if (((v52 | (4 * v6)) & 0x8000000000000000) != 0)
  {
    goto LABEL_128;
  }

  OUTLINED_FUNCTION_30_0();
  if (!(v14 ^ v15 | v13))
  {
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  v55 = v7;
  v56 = OUTLINED_FUNCTION_10_0(v53, v54);
  v58 = v56 + v57;
  v8 = *(v4 + 8);
  OUTLINED_FUNCTION_17_0();
  if (v14 != v15)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v59, v60, *(v4 + 24));
  }

  *(v4 + 16) = v58;
  if ((v58 & 0x8000000000000000) != 0)
  {
LABEL_130:
    __break(1u);
    goto LABEL_131;
  }

  if (HIDWORD(v58))
  {
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v3 = OUTLINED_FUNCTION_49_0() + v58;
  OUTLINED_FUNCTION_5_1();
  if (v14 != v15)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v61, v58, *(v4 + 24));
  }

  *(v4 + 16) = v3;
  v62 = v7;
  v63 = *(v7 + 2);
  if (v63)
  {
    while (v63 <= *(v62 + 2))
    {
      if (v3 > 0xFFFFFFFFLL)
      {
        goto LABEL_116;
      }

      v64 = *&v62[4 * v63 + 28];
      v65 = (-v3 & 3) + v3;
      OUTLINED_FUNCTION_17_0();
      if (v14 != v15)
      {
        ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v66, v3, *(v4 + 24));
      }

      if (v65 > 0xFFFFFFFFLL)
      {
        goto LABEL_117;
      }

      v67 = OUTLINED_FUNCTION_49_0() + v65;
      OUTLINED_FUNCTION_37_0();
      if (v14 != v15)
      {
        ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v68, v65, *(v4 + 24));
        v69 = *(v8 + 32);
      }

      v3 = v67 + 4;
      if (v69 < v67 + 4)
      {
        v70 = OUTLINED_FUNCTION_21_0();
        ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v70, v67, v71);
        v69 = *(v8 + 32);
      }

      OUTLINED_FUNCTION_48_0(v69);
      if (v67 > 4294967291)
      {
        goto LABEL_118;
      }

      --v63;
      v62 = v55;
      if (!v63)
      {

        *(v4 + 16) = v3;
        goto LABEL_103;
      }
    }

    __break(1u);
LABEL_116:
    __break(1u);
LABEL_117:
    __break(1u);
LABEL_118:
    __break(1u);
    goto LABEL_119;
  }

LABEL_132:

LABEL_103:
  *(v4 + 40) = 0;
  if (v6 >> 31)
  {
    __break(1u);
    goto LABEL_134;
  }

  OUTLINED_FUNCTION_66_0();
  if (!(v14 ^ v15 | v13))
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  v72 = (-v3 & 3) + v3;
  OUTLINED_FUNCTION_105();
  if (v14 != v15)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v73, v3, *(v4 + 24));
  }

  *(v4 + 16) = v72;
  v74 = v72 + 4;
  OUTLINED_FUNCTION_5_1();
  if (v14 != v15)
  {
    v76 = OUTLINED_FUNCTION_21_0();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v76, v72, v77);
    v75 = *(v8 + 32);
  }

  OUTLINED_FUNCTION_3_2(v75);
  *(v78 - 4) = v6;
  *(v4 + 16) = v74;
  OUTLINED_FUNCTION_58_0();
  if (!(v14 ^ v15 | v13))
  {
LABEL_135:
    __break(1u);
  }

  *a2 = v74;
  v79 = *MEMORY[0x277D85DE8];
}

void FlatBufferBuilder.createVector<A>(ofStructs:)()
{
  OUTLINED_FUNCTION_31_0();
  v3 = v1;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v80 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_2();
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v14);
  v67 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_56_0();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_72_0();
  v76 = v16;
  OUTLINED_FUNCTION_56_0();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_72_0();
  v71 = v18;
  v66 = sub_272B87810();
  if ((v66 * v13) >> 64 != (v66 * v13) >> 63)
  {
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v72 = *(v11 + 80);
  *(v1 + 40) = 1;
  v75 = *(v1 + 64);
  if (v75 <= 3)
  {
    *(v1 + 64) = 4;
    v75 = 4;
    *(v1 + 24) = 4;
  }

  v19 = *(v1 + 16);
  OUTLINED_FUNCTION_52_0();
  if (!(v23 ^ v24 | v22))
  {
    goto LABEL_46;
  }

  v74 = v72 + 1;
  v0 = v21 * (v72 + 1);
  if (((v20 | v0) & 0x8000000000000000) != 0)
  {
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  OUTLINED_FUNCTION_64_0();
  if (!(v23 ^ v24 | v22))
  {
    goto LABEL_48;
  }

  v27 = OUTLINED_FUNCTION_41_0(v25, v26);
  v29 = v27 + v28;
  v2 = *(v1 + 8);
  if (*(v2 + 32) < v27 + v28)
  {
    v30 = *(v1 + 24);
    v31 = *(v1 + 8);
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v27, v28, v30);
  }

  v3[2] = v29;
  if (v75 < v74)
  {
    v32 = v74;
    v3[8] = v74;
    v3[3] = v32;
    v75 = v32;
  }

  if (v29 > 0xFFFFFFFFLL)
  {
    goto LABEL_49;
  }

  if ((v29 & 0x8000000000000000) == 0)
  {
    v33 = v72 & (-v0 - v29);
    v0 = v29 + v33;
    if (*(v2 + 32) < v29 + v33)
    {
      ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v33, v29, v3[3]);
    }

    v3[2] = v0;
    v78 = v7;
    v34 = sub_272B87840();

    OUTLINED_FUNCTION_0_4();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_47_0();
    v70 = v34;
    MEMORY[0x2743D4A10](v34);
    v35 = v79;
    v78 = v79;

    v36 = sub_272B87810();

    v77 = v36;
    if (v36 == sub_272B877D0())
    {
      goto LABEL_51;
    }

    if ((v13 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (!HIDWORD(v13))
    {
      v73 = v3;
      v65 = v9;
      v9 = (v11 + 16);
      v68 = (v11 + 32);
      v69 = v13;
      v37 = (v11 + 8);
      while (1)
      {
        v3 = v35;
        sub_272B87830();
        OUTLINED_FUNCTION_1_2();
        v38 = v70;
        swift_getWitnessTable();
        v39 = OUTLINED_FUNCTION_16_0();
        v41 = sub_272B7DF34(v39, v40, v38);
        v42 = *v9;
        (*v9)(v71);
        v43 = OUTLINED_FUNCTION_43_0();
        v41(v43);
        v44 = *v68;
        OUTLINED_FUNCTION_12_1();
        v45();
        if (v75 < v74)
        {
          v46 = v73;
          v47 = v74;
          v73[8] = v74;
          v46[3] = v47;
          v75 = v47;
        }

        v48 = v69;
        if ((v0 & 0x8000000000000000) != 0)
        {
          break;
        }

        if (HIDWORD(v0))
        {
          goto LABEL_43;
        }

        v49 = v72 & -(v69 + v0);
        v50 = v0 + v49;
        v51 = *(v2 + 32);
        if (v51 < (v0 + v49))
        {
          ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v49, v0, v73[3]);
          v51 = *(v2 + 32);
        }

        v0 = v50 + v48;
        if (v51 < (v50 + v48))
        {
          ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v48, v50, v73[3]);
        }

        v52 = v67;
        OUTLINED_FUNCTION_12_1();
        v42();
        memcpy((*(v2 + 24) + *(v2 + 32) - v0), v52, v48);
        v53 = *v37;
        v54 = OUTLINED_FUNCTION_29_0();
        v53(v54);
        (v53)(v52, v5);
        OUTLINED_FUNCTION_64_0();
        if (!(v23 ^ v24 | v22))
        {
          goto LABEL_44;
        }

        v35 = v3;
        if (v77 == sub_272B877D0())
        {

          v3 = v73;
          v73[2] = v0;
          v9 = v65;
          goto LABEL_33;
        }
      }

      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

LABEL_50:
  __break(1u);
LABEL_51:

LABEL_33:
  *(v3 + 40) = 0;
  v55 = v66;
  if (v66 < 0xFFFFFFFF80000000)
  {
    goto LABEL_54;
  }

  if (v66 > 0x7FFFFFFF)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  if (HIDWORD(v0))
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v56 = -v0 & 3;
  v57 = v56 + v0;
  if (*(v2 + 32) < (v56 + v0))
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v56, v0, v3[3]);
  }

  v3[2] = v57;
  v58 = v57 + 4;
  v59 = *(v2 + 32);
  if (v59 < (v57 + 4))
  {
    v60 = v3[3];
    v61 = OUTLINED_FUNCTION_23_0();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v61, v62, v63);
    v59 = *(v2 + 32);
  }

  *(*(v2 + 24) + v59 - v57 - 4) = v55;
  v3[2] = v58;
  if (v57 > 0xFFFFFFFB)
  {
LABEL_57:
    __break(1u);
  }

  *v9 = v58;
  v64 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_32_2();
}

void FlatBufferBuilder.create<A>(struct:)()
{
  OUTLINED_FUNCTION_31_0();
  v1 = v0;
  v3 = v2;
  v32 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_2();
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_53_1();
  v9 = *(v5 + 80) + 1;
  if (v0[8] < v9)
  {
    v0[8] = v9;
    v0[3] = v9;
  }

  v10 = v0[2];
  OUTLINED_FUNCTION_52_0();
  if (!(v14 ^ v15 | v13))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v7 > 0xFFFFFFFFLL)
  {
    goto LABEL_15;
  }

  if ((v11 | v7) < 0)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
  }

  v16 = v11 + (v12 & (-v11 - v7));
  v17 = v0[1];
  OUTLINED_FUNCTION_25_0();
  if (v14 != v15)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v18, v19, v1[3]);
  }

  v1[2] = v16;
  v20 = v16 + v7;
  if (*(v17 + 32) < v16 + v7)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v7, v16, v1[3]);
  }

  v21 = OUTLINED_FUNCTION_46_0(v5);
  v22(v21);
  v23 = *(v17 + 24);
  v24 = *(v17 + 32) - v20;
  OUTLINED_FUNCTION_28_0();
  memcpy(v25, v26, v27);
  v1[2] = v20;
  v28 = *(v5 + 8);
  v29 = OUTLINED_FUNCTION_68_0();
  v30(v29);
  if ((v20 & 0x8000000000000000) != 0)
  {
    goto LABEL_17;
  }

  if (HIDWORD(v20))
  {
    goto LABEL_18;
  }

  *v3 = v20;
  v31 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_32_2();
}

void FlatBufferBuilder.create<A>(struct:position:)()
{
  OUTLINED_FUNCTION_31_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v30[1] = *MEMORY[0x277D85DE8];
  v6 = *(v2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v8);
  v9 = *(v6 + 80) + 1;
  if (v0[8] < v9)
  {
    v0[8] = v9;
    v0[3] = v9;
  }

  v10 = v0[2];
  OUTLINED_FUNCTION_52_0();
  if (!(v15 ^ v16 | v14))
  {
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v7 > 0xFFFFFFFFLL)
  {
    goto LABEL_21;
  }

  if ((v11 | v7) < 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v30[0] = v12;
  v17 = v11 + (v13 & (-v11 - v7));
  v18 = v0[1];
  OUTLINED_FUNCTION_36_1();
  if (v15 != v16)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v19, v20, v1[3]);
  }

  v1[2] = v17;
  v21 = v17 + v7;
  OUTLINED_FUNCTION_26_0();
  if (v15 != v16)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v7, v17, v1[3]);
  }

  v22 = *(v6 + 16);
  OUTLINED_FUNCTION_12_1();
  v23();
  memcpy((*(v18 + 24) + *(v18 + 32) - v21), v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  v1[2] = v21;
  (*(v6 + 8))(v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  if ((v21 & 0x8000000000000000) != 0)
  {
    goto LABEL_23;
  }

  if (HIDWORD(v21))
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  v24 = *v1;
  if (*(*v1 + 48))
  {
    goto LABEL_25;
  }

  v25 = *(v24 + 32);
  v26 = v30[0];
  if (v25)
  {
    v27 = v25 + *(v24 + 80);
    *v27 = v21;
    *(v27 + 4) = v5;
  }

  *(v24 + 72) = vaddq_s64(*(v24 + 72), xmmword_272B87CB0);
  v28 = *(v24 + 64);
  if (v28 <= v5)
  {
    LOWORD(v28) = v5;
  }

  *(v24 + 64) = v28;
  *v26 = v21;
  v29 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_32_2();
}

void FlatBufferBuilder.createShared(string:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_76_0();
  a27 = v29;
  a28 = v32;
  v34 = v33;
  a16 = *MEMORY[0x277D85DE8];
  if (!v31)
  {
    LODWORD(v43) = 0;
    goto LABEL_75;
  }

  v35 = v28;
  v36 = v31;
  v37 = v30;
  v38 = v28[6];
  if (!*(v38 + 16) || (v39 = OUTLINED_FUNCTION_29_0(), v41 = sub_272B7DC98(v39, v40), (v42 & 1) == 0))
  {
    v44 = HIBYTE(v36) & 0xF;
    if ((v36 & 0x1000000000000000) != 0)
    {
      goto LABEL_77;
    }

    if ((v36 & 0x2000000000000000) != 0)
    {
      v45 = HIBYTE(v36) & 0xF;
    }

    else
    {
      v45 = v37 & 0xFFFFFFFFFFFFLL;
    }

LABEL_9:
    OUTLINED_FUNCTION_57_0();
    if (v47 ^ v48 | v46)
    {
      OUTLINED_FUNCTION_18_0();
    }

    v49 = v35[2];
    OUTLINED_FUNCTION_65_0();
    if (!(v47 ^ v48 | v46))
    {
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
      goto LABEL_80;
    }

    if ((v49 | (v45 + 1)) < 0)
    {
      goto LABEL_78;
    }

    OUTLINED_FUNCTION_30_0();
    if (!(v47 ^ v48 | v46))
    {
      goto LABEL_79;
    }

    v50 = (~(v49 + v45) & 3) + v49;
    v51 = v35[1];
    OUTLINED_FUNCTION_5_1();
    v96 = v34;
    if (v47 != v48)
    {
      v34 = v45;
      v52 = v35[3];

      v53 = OUTLINED_FUNCTION_39_0();
      v54 = v52;
      v45 = v34;
      ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v53, v55, v54);
    }

    else
    {
    }

    v35[2] = v50;
    OUTLINED_FUNCTION_5_1();
    if (v47 ^ v48 | v46)
    {
      v56 = OUTLINED_FUNCTION_34_1();
      ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v56, v50, v57);
    }

    v35[2] = v50 + 1;
    OUTLINED_FUNCTION_38_0();
    if (v47 != v48)
    {
      ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v45, v50 + 1, v35[3]);
    }

    v58 = OUTLINED_FUNCTION_29_0();
    v97 = v45;
    sub_272B46F44(v58, v59, v60, v45);
    OUTLINED_FUNCTION_67_0();
    if (!v46)
    {
      goto LABEL_63;
    }

    v61 = (v36 & 0x2000000000000000) != 0 ? v44 : v37 & 0xFFFFFFFFFFFFLL;
    if (!v61)
    {
      goto LABEL_63;
    }

    v62 = (v37 >> 59) & 1;
    if ((v36 & 0x1000000000000000) == 0)
    {
      LODWORD(v62) = 1;
    }

    v63 = 11;
    if (v62)
    {
      v63 = 7;
    }

    v64 = v63 | (v61 << 16);
    v44 = 4 << v62;
    OUTLINED_FUNCTION_54_0();
    while (1)
    {
      if ((v64 & 0xC) == v44)
      {
        v65 = OUTLINED_FUNCTION_4_2();
        v68 = sub_272B73308(v65, v66, v67);
        if (v68 < 0x4000)
        {
          __break(1u);
LABEL_61:
          __break(1u);
LABEL_62:

LABEL_63:

          if ((v97 & 0x8000000000000000) == 0)
          {
            if (!HIDWORD(v97))
            {
              v82 = v35[2];
              if ((v82 & 0x8000000000000000) == 0)
              {
                if (!HIDWORD(v82))
                {
                  v83 = OUTLINED_FUNCTION_10_0(v81, v82);
                  v85 = v83 + v84;
                  OUTLINED_FUNCTION_25_0();
                  if (v47 != v48)
                  {
                    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v86, v87, v35[3]);
                  }

                  v35[2] = v85;
                  v43 = v85 + 4;
                  OUTLINED_FUNCTION_5_1();
                  v34 = v96;
                  if (v47 != v48)
                  {
                    v89 = OUTLINED_FUNCTION_21_0();
                    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v89, v85, v90);
                    v88 = *(v51 + 32);
                  }

                  *(*(v51 + 24) + v88 - v85 - 4) = v97;
                  v35[2] = v43;
                  if (v85 <= 0xFFFFFFFB)
                  {
                    v91 = v35[6];
                    swift_isUniquelyReferenced_nonNull_native();
                    a13 = v35[6];
                    OUTLINED_FUNCTION_12_1();
                    sub_272B7DDC4(v92, v93, v94);
                    v35[6] = a13;
                    goto LABEL_75;
                  }

LABEL_84:
                  __break(1u);
                }

LABEL_83:
                __break(1u);
                goto LABEL_84;
              }

LABEL_82:
              __break(1u);
              goto LABEL_83;
            }

LABEL_81:
            __break(1u);
            goto LABEL_82;
          }

LABEL_80:
          __break(1u);
          goto LABEL_81;
        }

        v64 = v68;
        if ((v36 & 0x1000000000000000) == 0)
        {
LABEL_40:
          OUTLINED_FUNCTION_44_0();
          goto LABEL_45;
        }
      }

      else if ((v36 & 0x1000000000000000) == 0)
      {
        goto LABEL_40;
      }

      if (v61 < v64 >> 16)
      {
        __break(1u);
LABEL_77:
        OUTLINED_FUNCTION_29_0();
        v45 = sub_272B87760();
        goto LABEL_9;
      }

      OUTLINED_FUNCTION_4_2();
      v64 = sub_272B87770();
LABEL_45:
      v69 = v64;
      if ((v64 & 0xC) == v44)
      {
        v78 = OUTLINED_FUNCTION_4_2();
        v69 = sub_272B73308(v78, v79, v80);
      }

      v70 = v69 >> 16;
      if (v69 >> 16 >= v61)
      {
        goto LABEL_61;
      }

      if ((v36 & 0x1000000000000000) != 0)
      {
        OUTLINED_FUNCTION_12_1();
        sub_272B87790();
      }

      else if ((v36 & 0x2000000000000000) != 0)
      {
        a13 = v37;
        a14 = a12;
        v73 = *(&a13 + v70);
      }

      else
      {
        v71 = a11;
        if ((v37 & 0x1000000000000000) == 0)
        {
          OUTLINED_FUNCTION_29_0();
          v71 = sub_272B878E0();
        }

        v72 = *(v71 + v70);
      }

      v74 = v35[2];
      v34 = (v74 + 1);
      OUTLINED_FUNCTION_37_0();
      if (v47 != v48)
      {
        v76 = OUTLINED_FUNCTION_34_1();
        ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v76, v74, v77);
        v75 = *(v51 + 32);
      }

      OUTLINED_FUNCTION_60_0(v75);
      v35[2] = v34;
      if (!(v64 >> 14))
      {
        goto LABEL_62;
      }
    }
  }

  LODWORD(v43) = *(*(v38 + 56) + 4 * v41);
LABEL_75:
  *v34 = v43;
  v95 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_75_0();
}

uint64_t FlatBufferBuilder.debugDescription.getter()
{
  sub_272B878C0();
  MEMORY[0x2743D4AA0](0x6420726566667562, 0xEE000A3A67756265);
  v8 = *(v0 + 8);
  v9 = *(v0 + 24);
  sub_272B87930();
  MEMORY[0x2743D4AA0](0xD00000000000001CLL, 0x8000000272B8BA90);
  if (*(v0 + 56))
  {
    v1 = 1702195828;
  }

  else
  {
    v1 = 0x65736C6166;
  }

  if (*(v0 + 56))
  {
    v2 = 0xE400000000000000;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  MEMORY[0x2743D4AA0](v1, v2);

  MEMORY[0x2743D4AA0](0xD000000000000015, 0x8000000272B8BAB0);
  if (*(v0 + 57))
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (*(v0 + 57))
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x2743D4AA0](v3, v4);

  MEMORY[0x2743D4AA0](0x7473654E7369202CLL, 0xEC000000203A6465);
  if (*(v0 + 40))
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (*(v0 + 40))
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x2743D4AA0](v5, v6);

  MEMORY[0x2743D4AA0](32032, 0xE200000000000000);
  return 0;
}

uint64_t FlatBufferBuilder.VTableStorage.init()()
{
  *(v0 + 16) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 24) = 8;
  *(v0 + 48) = 1;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;
  *(v0 + 80) = 0;
  v1 = swift_slowAlloc();
  *(v0 + 32) = v1;
  *(v0 + 40) = v1;
  *(v0 + 48) = 0;
  return v0;
}

void FlatBufferBuilder.VTableStorage.deinit()
{
  if (*(v0 + 48))
  {
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 32);
    if (v1)
    {
      MEMORY[0x2743D4FD0](v1, -1, -1);
    }
  }
}

char *sub_272B7D880(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808A3400, &qword_272B8A990);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[4 * v8] <= v12)
    {
      memmove(v12, v13, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 4 * v8);
  }

  return v10;
}

char *sub_272B7D980(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808A33F0, &qword_272B8A980);
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

void *sub_272B7DA74(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808A3408, &qword_272B8A998);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 4);
  return v4;
}

void *sub_272B7DAF0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808A33F0, &qword_272B8A980);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

unint64_t sub_272B7DB60(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  result = v4 - v6;
  if (__OFADD__(v4, v7))
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  result = sub_272B7DC30(result, 1);
  v8 = *v2;
  if (!v7)
  {
LABEL_15:
    *v2 = v8;
    return result;
  }

  v9 = *(v8 + 16);
  v10 = v9 - a2;
  if (__OFSUB__(v9, a2))
  {
    goto LABEL_21;
  }

  v11 = (v8 + 32 + 4 * a2);
  result = v8 + 32 + 4 * v5;
  if (v5 != a2 || v11 + 4 * v10 <= result)
  {
    result = memmove(result, v11, 4 * v10);
    v9 = *(v8 + 16);
  }

  v13 = __OFADD__(v9, v7);
  v14 = v9 + v7;
  if (!v13)
  {
    *(v8 + 16) = v14;
    goto LABEL_15;
  }

LABEL_22:
  __break(1u);
  return result;
}

char *sub_272B7DC30(int64_t a1, char a2)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if (!result || a1 > *(v5 + 3) >> 1)
  {
    if (*(v5 + 2) <= a1)
    {
      v7 = a1;
    }

    else
    {
      v7 = *(v5 + 2);
    }

    result = sub_272B48058(result, v7, a2 & 1, v5);
    *v2 = result;
  }

  return result;
}

unint64_t sub_272B7DC98(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_272B879F0();
  sub_272B87740();
  v6 = sub_272B87A10();

  return sub_272B7DD10(a1, a2, v6);
}

unint64_t sub_272B7DD10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_272B87980() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_272B7DDC4(int a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_272B7DC98(a2, a3);
  if (__OFADD__(*(v8 + 16), (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v11 = v9;
  v12 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808A33F8, &qword_272B8A988);
  result = sub_272B87940();
  if ((result & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = *v4;
  result = sub_272B7DC98(a2, a3);
  if ((v12 & 1) != (v15 & 1))
  {
LABEL_11:
    result = sub_272B87990();
    __break(1u);
    return result;
  }

  v11 = result;
LABEL_5:
  v16 = *v4;
  if (v12)
  {
    *(v16[7] + 4 * v11) = a1;
  }

  else
  {
    sub_272B7DEEC(v11, a2, a3, a1, v16);
  }

  return result;
}

unint64_t sub_272B7DEEC(unint64_t result, uint64_t a2, uint64_t a3, int a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 4 * result) = a4;
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

void (*sub_272B7DF34(void *a1, uint64_t *a2, uint64_t a3))(void *a1)
{
  v7 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v7;
  v7[4] = sub_272B7DFF4(v7, *a2, *v3, *(a3 + 16));
  return sub_272B7DFAC;
}

void sub_272B7DFAC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

void (*sub_272B7DFF4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(void *a1)
{
  v8 = *(a4 - 8);
  v9 = v8;
  a1[1] = a4;
  a1[2] = v8;
  v10 = *(v8 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  a1[3] = v11;
  v12 = sub_272B87800();
  sub_272B877E0();
  if (v12)
  {
    (*(v9 + 16))(v11, a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * a2, a4);
    return sub_272B7E154;
  }

  result = sub_272B878D0();
  if (v10 == 8)
  {
    *a1 = result;
    (*(v9 + 16))(v11, a1, a4);
    swift_unknownObjectRelease();
    return sub_272B7E154;
  }

  __break(1u);
  return result;
}

void sub_272B7E154(void *a1)
{
  v1 = a1[3];
  (*(a1[2] + 8))(v1, a1[1]);

  free(v1);
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t sub_272B7E1FC(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_272B7E23C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void OUTLINED_FUNCTION_55_0()
{

  JUMPOUT(0x2743D4A10);
}

uint64_t OUTLINED_FUNCTION_77_0()
{

  return sub_272B877C0();
}

uint64_t OUTLINED_FUNCTION_78_0()
{

  return sub_272B87840();
}

void OUTLINED_FUNCTION_79_0(Swift::Int a1)
{
  v4 = *(v1 + 24);

  ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(a1, v2, v4);
}

uint64_t WK2_Metadata.init(_:o:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  return result;
}

uint64_t WK2_UUID.hasBytes.getter()
{
  v1 = v0[6];
  v2 = *(*v0 + 24);
  v3 = *(v2 + v1);
  v4 = __OFSUB__(v1, v3);
  v5 = v1 - v3;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    if (*(v2 + v5) < 5u)
    {
      return OUTLINED_FUNCTION_32_0();
    }

    v4 = __OFADD__(v5, 4);
    v6 = v5 + 4;
    if (!v4)
    {
      return *(v2 + v6) != 0;
    }
  }

  __break(1u);
  return result;
}

void WK2_UUID.bytesCount.getter()
{
  OUTLINED_FUNCTION_103();
  if (v3)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(v0 + v2) < 5u)
  {
LABEL_8:
    OUTLINED_FUNCTION_32_0();
    return;
  }

  v3 = __OFADD__(v2, 4);
  v4 = v2 + 4;
  if (v3)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v5 = *(v0 + v4);
  if (!v5)
  {
    goto LABEL_8;
  }

  v3 = __OFADD__(v5, v1);
  v6 = v5 + v1;
  if (!v3)
  {
    if (!__OFADD__(v6, *(v0 + v6)))
    {
      OUTLINED_FUNCTION_112(v0);
      return;
    }

    goto LABEL_12;
  }

LABEL_11:
  __break(1u);
LABEL_12:
  __break(1u);
}

Swift::UInt8 __swiftcall WK2_UUID.bytes(at:)(Swift::Int32 at)
{
  OUTLINED_FUNCTION_103();
  if (v5)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (*(v2 + v4) < 5u)
  {
LABEL_10:
    LOBYTE(v1) = OUTLINED_FUNCTION_32_0();
    return v1;
  }

  v5 = __OFADD__(v4, 4);
  v6 = v4 + 4;
  if (v5)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v7 = *(v2 + v6);
  if (!v7)
  {
    goto LABEL_10;
  }

  v5 = __OFADD__(v7, v3);
  v8 = v7 + v3;
  if (v5)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = *(v2 + v8);
  v5 = __OFADD__(v8, v9);
  v10 = v8 + v9;
  if (v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v5 = __OFADD__(v10, 4);
  v11 = v10 + 4;
  if (v5)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v5 = __OFADD__(v11, v1);
  v12 = v11 + v1;
  if (v5)
  {
LABEL_16:
    __break(1u);
    return v1;
  }

  LOBYTE(v1) = *(v2 + v12);
  return v1;
}

void *WK2_UUID.bytes.getter()
{
  result = sub_272B5DE20(4, *v0, *(v0 + 8), *(v0 + 16), *(v0 + 24));
  if (!result)
  {
    return MEMORY[0x277D84F90];
  }

  return result;
}

unint64_t static WK2_UUID.startUUID(_:)(_BYTE *a1)
{
  result = OUTLINED_FUNCTION_25(a1);
  if (*(v2 + 56) < v4 + 8)
  {
    if (*(v2 + 48))
    {
LABEL_11:
      __break(1u);
      return result;
    }

    v5 = *(v2 + 32);
    if (v5)
    {
      MEMORY[0x2743D4FD0](v5, -1, -1);
    }

    v6 = swift_slowAlloc();
    *(v2 + 32) = v6;
    *(v2 + 40) = v6 + 8;
    *(v2 + 48) = 0;
    *(v2 + 56) = 8;
  }

  result = *(v1 + 16);
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (HIDWORD(result))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  return result;
}

uint64_t static WK2_UUID.createUUID(_:bytesVectorOffset:)@<X0>(_BYTE *a1@<X0>, int *a2@<X1>, _DWORD *a3@<X8>)
{
  v4 = *a2;
  v5 = static WK2_UUID.startUUID(_:)(a1);
  static WK2_Metadata.add(attributionUrl:_:)();
  result = FlatBufferBuilder.endTable(at:)(v5);
  *a3 = result;
  return result;
}

void static WK2_UUID.verify<A>(_:at:of:)(int a1, unint64_t position)
{
  Verifier.visitTable(at:)(position, __src);
  if (!v2)
  {
    sub_272B5D54C(4, 0x7365747962, 0xE500000000000000, 1);
    if (__OFSUB__(__src[7], 1))
    {
      __break(1u);
    }

    else
    {
      --__src[7];
      memcpy(v3, __src, 0x65uLL);
      sub_272B522C4(v3);
    }
  }
}

unint64_t static WK2_Metadata.startMetadata(_:)(_BYTE *a1)
{
  result = OUTLINED_FUNCTION_25(a1);
  if (*(v2 + 56) < v4 + 88)
  {
    if (*(v2 + 48))
    {
LABEL_11:
      __break(1u);
      return result;
    }

    v5 = *(v2 + 32);
    if (v5)
    {
      MEMORY[0x2743D4FD0](v5, -1, -1);
    }

    v6 = swift_slowAlloc();
    *(v2 + 32) = v6;
    *(v2 + 40) = v6 + 88;
    *(v2 + 48) = 0;
    *(v2 + 56) = 88;
  }

  result = *(v1 + 16);
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (HIDWORD(result))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  return result;
}

void sub_272B7E91C()
{
  OUTLINED_FUNCTION_219();
  v4 = *MEMORY[0x277D85DE8];
  v6 = OUTLINED_FUNCTION_120(v5);
  if (!v3)
  {
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_58(v6, v7);
  if (v9 != v10)
  {
    OUTLINED_FUNCTION_38();
  }

  v11 = *(v0 + 16);
  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  if (HIDWORD(v11))
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v12 = OUTLINED_FUNCTION_3(v8, v11);
  if (v9 != v10)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v12, v13, *(v0 + 24));
  }

  OUTLINED_FUNCTION_119();
  if (v14)
  {
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_118();
  if (v15)
  {
    OUTLINED_FUNCTION_79();
    if (!v15)
    {
LABEL_28:
      v24 = *MEMORY[0x277D85DE8];
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  v16 = OUTLINED_FUNCTION_15();
  if (v9 != v10)
  {
    OUTLINED_FUNCTION_186(v16);
  }

  OUTLINED_FUNCTION_27();
  if (v9 != v10)
  {
    OUTLINED_FUNCTION_9();
    v17 = *(v1 + 32);
  }

  OUTLINED_FUNCTION_4(v17);
  if (!v15 & v18)
  {
LABEL_32:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v20 & 1) == 0)
  {
    if (*(v19 + 32))
    {
      OUTLINED_FUNCTION_12_0(v19);
      *v21 = v2;
      *(v21 + 4) = 4;
    }

    OUTLINED_FUNCTION_33(v19, *(v19 + 72), xmmword_272B87CB0);
    if (v23 <= 4)
    {
      LOWORD(v23) = 4;
    }

    *(v22 + 64) = v23;
    goto LABEL_28;
  }

  __break(1u);
}

void static WK2_Metadata.add(language:_:)()
{
  OUTLINED_FUNCTION_219();
  v4 = *MEMORY[0x277D85DE8];
  v6 = OUTLINED_FUNCTION_120(v5);
  if (!v3)
  {
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_58(v6, v7);
  if (v9 != v10)
  {
    OUTLINED_FUNCTION_38();
  }

  v11 = *(v0 + 16);
  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  if (HIDWORD(v11))
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v12 = OUTLINED_FUNCTION_3(v8, v11);
  if (v9 != v10)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v12, v13, *(v0 + 24));
  }

  OUTLINED_FUNCTION_119();
  if (v14)
  {
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_118();
  if (v15)
  {
    OUTLINED_FUNCTION_79();
    if (!v15)
    {
LABEL_28:
      v24 = *MEMORY[0x277D85DE8];
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  v16 = OUTLINED_FUNCTION_15();
  if (v9 != v10)
  {
    OUTLINED_FUNCTION_186(v16);
  }

  OUTLINED_FUNCTION_27();
  if (v9 != v10)
  {
    OUTLINED_FUNCTION_9();
    v17 = *(v1 + 32);
  }

  OUTLINED_FUNCTION_4(v17);
  if (!v15 & v18)
  {
LABEL_32:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v20 & 1) == 0)
  {
    if (*(v19 + 32))
    {
      OUTLINED_FUNCTION_12_0(v19);
      *v21 = v2;
      *(v21 + 4) = 8;
    }

    OUTLINED_FUNCTION_33(v19, *(v19 + 72), xmmword_272B87CB0);
    if (v23 <= 8)
    {
      LOWORD(v23) = 8;
    }

    *(v22 + 64) = v23;
    goto LABEL_28;
  }

  __break(1u);
}