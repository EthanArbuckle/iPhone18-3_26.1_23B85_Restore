void static WK2_ForecastMinute.add(precipitationIntensity:_:)()
{
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_75();
  v1 = *MEMORY[0x277D85DE8];

  sub_272B5061C();
}

void sub_272B50768()
{
  OUTLINED_FUNCTION_226();
  OUTLINED_FUNCTION_97();
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_96();
  if (v4)
  {
    OUTLINED_FUNCTION_79();
    if (!v4)
    {
LABEL_23:
      v20 = *MEMORY[0x277D85DE8];
      OUTLINED_FUNCTION_225();
      return;
    }
  }

  OUTLINED_FUNCTION_95();
  if (v6 ^ v7 | v4)
  {
    OUTLINED_FUNCTION_38();
  }

  v8 = *(v0 + 16);
  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (HIDWORD(v8))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v9 = OUTLINED_FUNCTION_3(v5, v8);
  if (v6 != v7)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v9, v10, *(v0 + 24));
  }

  OUTLINED_FUNCTION_20_0();
  if (v6 != v7)
  {
    v12 = OUTLINED_FUNCTION_83();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v12, v2, v13);
    v11 = *(v1 + 32);
  }

  OUTLINED_FUNCTION_1_0(v11);
  if (!v4 & v14)
  {
LABEL_26:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v16 & 1) == 0)
  {
    if (*(v15 + 32))
    {
      OUTLINED_FUNCTION_48(v15);
      OUTLINED_FUNCTION_203();
    }

    OUTLINED_FUNCTION_33(v15, *(v15 + 72), xmmword_272B87CB0);
    OUTLINED_FUNCTION_201();
    if (!(!v4 & v14))
    {
      v18 = v19;
    }

    *(v17 + 64) = v18;
    goto LABEL_23;
  }

  __break(1u);
}

void static WK2_ForecastMinute.add(perceivedPrecipitationIntensity:_:)()
{
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_75();
  v1 = *MEMORY[0x277D85DE8];

  sub_272B50768();
}

void static WK2_ForecastMinute.add(startTime:_:)()
{
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_75();
  v1 = *MEMORY[0x277D85DE8];

  static WK2_DayWeatherConditions.add(forecastStart:_:)();
}

void static WK2_NextHourForecast.add(metadata:_:)()
{
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_75();
  v1 = *MEMORY[0x277D85DE8];

  static WK2_CurrentWeather.add(metadata:_:)();
}

void static WK2_NextHourForecast.addVectorOf(condition:_:)()
{
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_75();
  v1 = *MEMORY[0x277D85DE8];

  static WK2_Weather.add(currentWeather:_:)();
}

void static WK2_Weather.add(forecastDaily:_:)()
{
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_75();
  v1 = *MEMORY[0x277D85DE8];

  sub_272B50A44();
}

void sub_272B50A44()
{
  OUTLINED_FUNCTION_219();
  v3 = *MEMORY[0x277D85DE8];
  v5 = OUTLINED_FUNCTION_120(v4);
  if (!v2)
  {
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_58(v5, v6);
  if (v8 != v9)
  {
    OUTLINED_FUNCTION_38();
  }

  v10 = *(v0 + 16);
  if ((v10 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  if (HIDWORD(v10))
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v11 = OUTLINED_FUNCTION_3(v7, v10);
  if (v8 != v9)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v11, v12, *(v0 + 24));
  }

  OUTLINED_FUNCTION_119();
  if (v13)
  {
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_118();
  if (v14)
  {
    OUTLINED_FUNCTION_79();
    if (!v14)
    {
LABEL_28:
      v25 = *MEMORY[0x277D85DE8];
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  v15 = OUTLINED_FUNCTION_15();
  if (v8 != v9)
  {
    OUTLINED_FUNCTION_186(v15);
  }

  OUTLINED_FUNCTION_27();
  if (v8 != v9)
  {
    v17 = OUTLINED_FUNCTION_83();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v17, v2, v18);
    v16 = *(v1 + 32);
  }

  OUTLINED_FUNCTION_4(v16);
  if (!v14 & v19)
  {
LABEL_32:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v21 & 1) == 0)
  {
    if (*(v20 + 32))
    {
      OUTLINED_FUNCTION_57(v20);
      OUTLINED_FUNCTION_193();
    }

    OUTLINED_FUNCTION_33(v20, *(v20 + 72), xmmword_272B87CB0);
    OUTLINED_FUNCTION_191();
    if (!(!v14 & v19))
    {
      v23 = v24;
    }

    *(v22 + 64) = v23;
    goto LABEL_28;
  }

  __break(1u);
}

void static WK2_NextHourForecast.addVectorOf(summary:_:)()
{
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_75();
  v1 = *MEMORY[0x277D85DE8];

  static WK2_Weather.add(forecastDaily:_:)();
}

void static WK2_NextHourForecast.addVectorOf(minutes:_:)()
{
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_75();
  v1 = *MEMORY[0x277D85DE8];

  static WK2_Weather.add(news:_:)();
}

void static WK2_NextHourForecast.add(forecastStart:_:)()
{
  OUTLINED_FUNCTION_219();
  v22 = *MEMORY[0x277D85DE8];
  if ((v3 & 0x100000000) != 0)
  {
LABEL_20:
    v21 = *MEMORY[0x277D85DE8];
    OUTLINED_FUNCTION_218();
    return;
  }

  OUTLINED_FUNCTION_30(v3, v4);
  if (v7 ^ v8 | v6)
  {
    OUTLINED_FUNCTION_38();
  }

  v9 = *(v0 + 16);
  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (HIDWORD(v9))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v10 = OUTLINED_FUNCTION_6(v5, v9);
  if (v7 != v8)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v10, v11, *(v0 + 24));
  }

  OUTLINED_FUNCTION_26();
  if (v7 != v8)
  {
    v13 = OUTLINED_FUNCTION_83();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v13, v2, v14);
    v12 = *(v1 + 32);
  }

  OUTLINED_FUNCTION_5(v12);
  if (!v6 & v15)
  {
LABEL_23:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v17 & 1) == 0)
  {
    if (*(v16 + 32))
    {
      OUTLINED_FUNCTION_41(v16);
      OUTLINED_FUNCTION_203();
    }

    OUTLINED_FUNCTION_33(v16, *(v16 + 72), xmmword_272B87CB0);
    OUTLINED_FUNCTION_201();
    if (!(!v6 & v15))
    {
      v19 = v20;
    }

    *(v18 + 64) = v19;
    goto LABEL_20;
  }

  __break(1u);
}

void static WK2_LocationInfo.add(primaryName:_:)()
{
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_75();
  v1 = *MEMORY[0x277D85DE8];

  static WK2_Weather.add(forecastNextHour:_:)();
}

void static WK2_LocationInfo.add(metadata:_:)()
{
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_75();
  v1 = *MEMORY[0x277D85DE8];

  static WK2_CurrentWeather.add(metadata:_:)();
}

void static WK2_Weather.add(forecastHourly:_:)()
{
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_75();
  v1 = *MEMORY[0x277D85DE8];

  sub_272B50DEC();
}

void sub_272B50DEC()
{
  OUTLINED_FUNCTION_219();
  v3 = *MEMORY[0x277D85DE8];
  v5 = OUTLINED_FUNCTION_120(v4);
  if (!v2)
  {
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_58(v5, v6);
  if (v8 != v9)
  {
    OUTLINED_FUNCTION_38();
  }

  v10 = *(v0 + 16);
  if ((v10 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  if (HIDWORD(v10))
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v11 = OUTLINED_FUNCTION_3(v7, v10);
  if (v8 != v9)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v11, v12, *(v0 + 24));
  }

  OUTLINED_FUNCTION_119();
  if (v13)
  {
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_118();
  if (v14)
  {
    OUTLINED_FUNCTION_79();
    if (!v14)
    {
LABEL_28:
      v25 = *MEMORY[0x277D85DE8];
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  v15 = OUTLINED_FUNCTION_15();
  if (v8 != v9)
  {
    OUTLINED_FUNCTION_186(v15);
  }

  OUTLINED_FUNCTION_27();
  if (v8 != v9)
  {
    v17 = OUTLINED_FUNCTION_83();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v17, v2, v18);
    v16 = *(v1 + 32);
  }

  OUTLINED_FUNCTION_4(v16);
  if (!v14 & v19)
  {
LABEL_32:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v21 & 1) == 0)
  {
    if (*(v20 + 32))
    {
      OUTLINED_FUNCTION_57(v20);
      OUTLINED_FUNCTION_203();
    }

    OUTLINED_FUNCTION_33(v20, *(v20 + 72), xmmword_272B87CB0);
    OUTLINED_FUNCTION_201();
    if (!(!v14 & v19))
    {
      v23 = v24;
    }

    *(v22 + 64) = v23;
    goto LABEL_28;
  }

  __break(1u);
}

void static WK2_LocationInfo.add(timeZone:_:)()
{
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_75();
  v1 = *MEMORY[0x277D85DE8];

  static WK2_Weather.add(forecastHourly:_:)();
}

void static WK2_LocationInfo.add(countryCode:_:)()
{
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_75();
  v1 = *MEMORY[0x277D85DE8];

  static WK2_Weather.add(forecastDaily:_:)();
}

void static WK2_WeatherChanges.add(metadata:_:)()
{
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_75();
  v1 = *MEMORY[0x277D85DE8];

  static WK2_CurrentWeather.add(metadata:_:)();
}

void static WK2_WeatherChanges.addVectorOf(changes:_:)()
{
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_75();
  v1 = *MEMORY[0x277D85DE8];

  static WK2_Weather.add(forecastHourly:_:)();
}

void static WK2_Weather.startWeather(_:)(_BYTE *a1)
{
  OUTLINED_FUNCTION_25(a1);
  OUTLINED_FUNCTION_141();
  if (v3 != v4)
  {
    if (*(v2 + 48))
    {
LABEL_12:
      __break(1u);
      return;
    }

    if (*(v2 + 32))
    {
      OUTLINED_FUNCTION_209();
    }

    v5 = swift_slowAlloc();
    OUTLINED_FUNCTION_68(v5, v5 + 112);
  }

  v6 = *(v1 + 16);
  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (HIDWORD(v6))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }
}

void static WK2_Weather.add(airQuality:_:)()
{
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_75();
  v1 = *MEMORY[0x277D85DE8];

  static WK2_CurrentWeather.add(metadata:_:)();
}

void static WK2_Weather.add(locationInfo:_:)()
{
  OUTLINED_FUNCTION_219();
  v3 = *MEMORY[0x277D85DE8];
  v5 = OUTLINED_FUNCTION_120(v4);
  if (!v2)
  {
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_58(v5, v6);
  if (v8 != v9)
  {
    OUTLINED_FUNCTION_38();
  }

  v10 = *(v0 + 16);
  if ((v10 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  if (HIDWORD(v10))
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v11 = OUTLINED_FUNCTION_3(v7, v10);
  if (v8 != v9)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v11, v12, *(v0 + 24));
  }

  OUTLINED_FUNCTION_119();
  if (v13)
  {
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_118();
  if (v14)
  {
    OUTLINED_FUNCTION_79();
    if (!v14)
    {
LABEL_28:
      v25 = *MEMORY[0x277D85DE8];
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  v15 = OUTLINED_FUNCTION_15();
  if (v8 != v9)
  {
    OUTLINED_FUNCTION_186(v15);
  }

  OUTLINED_FUNCTION_27();
  if (v8 != v9)
  {
    v17 = OUTLINED_FUNCTION_83();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v17, v2, v18);
    v16 = *(v1 + 32);
  }

  OUTLINED_FUNCTION_4(v16);
  if (!v14 & v19)
  {
LABEL_32:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v21 & 1) == 0)
  {
    if (*(v20 + 32))
    {
      OUTLINED_FUNCTION_57(v20);
      *(v22 + 4) = 22;
    }

    OUTLINED_FUNCTION_33(v20, *(v20 + 72), xmmword_272B87CB0);
    if (v24 <= 0x16)
    {
      LOWORD(v24) = 22;
    }

    *(v23 + 64) = v24;
    goto LABEL_28;
  }

  __break(1u);
}

void FlatBufferBuilder.finish(offset:addPrefix:)(uint64_t a1, char a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = v2[2];
  OUTLINED_FUNCTION_11_0();
  if (!(v8 ^ v9 | v7))
  {
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v10 = v2;
  v11 = v2[8];
  if (a2)
  {
    v12 = -8;
  }

  else
  {
    v12 = -4;
  }

  if ((v6 | v11) < 0)
  {
    goto LABEL_36;
  }

  if (v11 > 0xFFFFFFFFLL)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (!v11)
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v13 = *v5;
  v14 = v6 + ((v12 - v6) & (v11 - 1));
  v15 = v2[1];
  OUTLINED_FUNCTION_15_0();
  if (v8 != v9)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v16, v17, v10[3]);
  }

  v10[2] = v14;
  if (v11 <= 3)
  {
    OUTLINED_FUNCTION_38();
  }

  if ((v14 & 0x8000000000000000) != 0)
  {
    goto LABEL_39;
  }

  if (HIDWORD(v14))
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v18 = (-v14 & 3) + v14;
  OUTLINED_FUNCTION_17_0();
  if (v8 != v9)
  {
    OUTLINED_FUNCTION_79_0(v19);
  }

  v10[2] = v18;
  if (HIDWORD(v18))
  {
    goto LABEL_41;
  }

  v20 = v18 - v13 + 4;
  v21 = OUTLINED_FUNCTION_49_0() + v18;
  OUTLINED_FUNCTION_105();
  if (v8 != v9)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v22, v18, v10[3]);
  }

  v10[2] = v21;
  v23 = v21 + 4;
  OUTLINED_FUNCTION_15_0();
  if (v8 != v9)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(4, v21, v10[3]);
    v24 = *(v15 + 32);
  }

  OUTLINED_FUNCTION_3_2(v24);
  *(v25 - 4) = v20;
  v10[2] = v23;
  if (v21 > 0xFFFFFFFB)
  {
    goto LABEL_42;
  }

  if (a2)
  {
    v26 = (-v21 & 3) + v23;
    OUTLINED_FUNCTION_5_1();
    if (v8 != v9)
    {
      OUTLINED_FUNCTION_79_0(v27);
    }

    v10[2] = v26;
    OUTLINED_FUNCTION_105();
    if (v8 != v9)
    {
      v29 = v10[3];
      v30 = OUTLINED_FUNCTION_23_0();
      ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v30, v31, v32);
      v28 = *(v15 + 32);
    }

    OUTLINED_FUNCTION_7_1(v28);
    *(v33 - 4) = v23;
    v10[2] = v26 + 4;
    if (v26 > 0xFFFFFFFB)
    {
LABEL_43:
      __break(1u);
    }
  }

  v34 = *v10;
  *(v34 + 64) = 0;
  *(v34 + 72) = 0;
  *(v34 + 80) = 0;
  *(v10 + 56) = 1;
  v35 = *MEMORY[0x277D85DE8];
}

void *sub_272B51468(const void *a1, int64_t a2)
{
  if (!a2)
  {
    return MEMORY[0x277D84F90];
  }

  if (a2 < 1)
  {
    v4 = MEMORY[0x277D84F90];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808A33F0, &qword_272B8A980);
    v4 = swift_allocObject();
    v5 = _swift_stdlib_malloc_size(v4);
    v4[2] = a2;
    v4[3] = 2 * v5 - 64;
  }

  memcpy(v4 + 4, a1, a2);
  return v4;
}

uint64_t sub_272B51500(uint64_t a1)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808A3210, &qword_272B89868);
  v8 = sub_272B515A4();
  v6[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_1(v6, v7);
  sub_272B5164C(*v2 + 32, *v2 + 32 + *(*v2 + 16), &v5);
  v3 = v5;
  __swift_destroy_boxed_opaque_existential_1(v6);
  return v3;
}

unint64_t sub_272B515A4()
{
  result = qword_2808A3418;
  if (!qword_2808A3418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2808A3210, &qword_272B89868);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808A3418);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_272B5164C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v4 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    v5 = 0xC000000000000000;
    goto LABEL_5;
  }

  if (v4 <= 14)
  {
    result = sub_272B87630();
    v5 = v7 & 0xFFFFFFFFFFFFFFLL;
  }

  else if (v4 >= 0x7FFFFFFF)
  {
    result = MEMORY[0x2743D49A0]();
    v5 = v8 | 0x8000000000000000;
  }

  else
  {
    result = MEMORY[0x2743D49B0]();
    v5 = v6 | 0x4000000000000000;
  }

LABEL_5:
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t FlatBufferBuilder.VTableStorage.__deallocating_deinit(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(v3 + 48))
  {
    __break(1u);
  }

  else
  {
    v4 = *(v3 + 32);
    if (v4)
    {
      MEMORY[0x2743D4FD0](v4, -1, -1);
    }

    a1 = v3;
    a2 = 88;
    a3 = 7;
  }

  return MEMORY[0x2821FE8D8](a1, a2, a3);
}

uint64_t ByteBuffer.Storage.__deallocating_deinit()
{
  ByteBuffer.Storage.deinit();
  OUTLINED_FUNCTION_0_6();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t ByteBuffer.Storage.deinit()
{
  if ((*(v0 + 16) & 1) == 0)
  {
    MEMORY[0x2743D4FD0](*(v0 + 24), -1, -1);
  }

  return v0;
}

void Verifier.visitTable(at:)(unint64_t position@<X0>, unint64_t *a2@<X8>)
{
  v5 = *v2;
  if (v5 == 1)
  {
    OUTLINED_FUNCTION_3_4();
    if (((v6 + position) & 3) != 0)
    {
      *&__dst[0] = MEMORY[0x277D849A8];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808A3420, &qword_272B8AB78);
      v7 = sub_272B87730();
      v9 = v8;
      sub_272B5C86C();
      OUTLINED_FUNCTION_177();
      *v10 = position;
      *(v10 + 8) = v7;
      *(v10 + 16) = v9;
LABEL_4:
      v11 = *&__dst[2];
      v12 = __dst[1];
      *(v10 + 24) = __dst[0];
      *(v10 + 40) = v12;
      *(v10 + 56) = v11;
      *(v10 + 64) = 0;
LABEL_18:
      swift_willThrow();
      return;
    }
  }

  Verifier.rangeInBuffer(position:size:)(position, 4);
  if (v13)
  {
    return;
  }

  if ((position & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_36;
  }

  if (HIDWORD(position))
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v14 = *(v2 + 5);
  v15 = *(v14 + 24);
  v16 = *(v15 + position);
  v17 = __CFADD__(position, -v16);
  v18 = (position - v16);
  if (v16 <= 0)
  {
    v19 = v17;
  }

  else
  {
    v19 = position < v16;
  }

  if (v19 || *(v14 + 32) < v18)
  {
    sub_272B5C86C();
    OUTLINED_FUNCTION_177();
    *v20 = v16;
    *(v20 + 8) = position;
    v22 = __dst[1];
    v21 = __dst[2];
    *(v20 + 16) = __dst[0];
    *(v20 + 32) = v22;
    *(v20 + 48) = v21;
    v23 = 2;
LABEL_17:
    *(v20 + 64) = v23;
    goto LABEL_18;
  }

  if ((v5 & (v15 + v18)) == 1)
  {
    *&__dst[0] = MEMORY[0x277D84C58];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808A3160, &unk_272B87CC0);
    v24 = sub_272B87730();
    v26 = v25;
    sub_272B5C86C();
    OUTLINED_FUNCTION_177();
    *v10 = v18;
LABEL_22:
    *(v10 + 8) = v24;
    *(v10 + 16) = v26;
    goto LABEL_4;
  }

  Verifier.rangeInBuffer(position:size:)(v18, 2);
  if (!v27)
  {
    v28 = *(v14 + 24);
    v29 = *(v28 + v18);
    if ((v5 & (v28 + v29 + v18)) == 1)
    {
      *&__dst[0] = MEMORY[0x277D84C58];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808A3160, &unk_272B87CC0);
      v24 = sub_272B87730();
      v26 = v30;
      sub_272B5C86C();
      OUTLINED_FUNCTION_177();
      *v10 = v29 + v18;
      goto LABEL_22;
    }

    Verifier.rangeInBuffer(position:size:)(v18, v29);
    if (!v31)
    {
      v32 = *(v2 + 3);
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (!v33)
      {
        *(v2 + 3) = v34;
        if (v34 > *(v2 + 17))
        {
          sub_272B5C86C();
          OUTLINED_FUNCTION_177();
          v36 = 3;
LABEL_33:
          OUTLINED_FUNCTION_0_5(v35, v36);
          goto LABEL_17;
        }

        v37 = *(v2 + 4);
        v33 = __OFADD__(v37, 1);
        v38 = v37 + 1;
        if (!v33)
        {
          *(v2 + 4) = v38;
          if (v38 <= *(v2 + 18))
          {
            *a2 = position;
            a2[1] = v18;
            a2[2] = v29;
            memcpy(__dst, v2, 0x4DuLL);
            memcpy(a2 + 3, v2, 0x4DuLL);
            sub_272B51B58(__dst, &v39);
            return;
          }

          sub_272B5C86C();
          OUTLINED_FUNCTION_177();
          v36 = 4;
          goto LABEL_33;
        }

LABEL_38:
        __break(1u);
        return;
      }

LABEL_37:
      __break(1u);
      goto LABEL_38;
    }
  }
}

uint64_t ByteBuffer.init(data:)(uint64_t a1, unint64_t a2)
{
  v8 = a1;
  v9 = a2;
  sub_272B5226C(a1, a2);
  v4 = MEMORY[0x2743D49D0](a1, a2);
  type metadata accessor for ByteBuffer.Storage();
  OUTLINED_FUNCTION_0_6();
  v5 = swift_allocObject();
  ByteBuffer.Storage.init(count:alignment:)(v4);
  v10[0] = v5;
  v6 = *(v5 + 32);
  sub_272B52318(&v8, v10, a1, a2);
  sub_272B52DF8(v8, v9);
  return v5;
}

void sub_272B51C30(int a1, unint64_t position)
{
  Verifier.visitTable(at:)(position, __src);
  if (!v2)
  {
    sub_272B544C8(4, 0x7475626972747461, 0xEE006C72556E6F69, 0, sub_272B54784);
    v3 = 0;
    v4 = __src[2];
    if (__src[2] >= 7)
    {
      v5 = __src[1] + 6;
      v6 = LOBYTE(__src[3]);
      if (LOBYTE(__src[3]) == 1 && ((*(__src[8] + 24) + v5) & 1) != 0)
      {
        goto LABEL_73;
      }

      Verifier.rangeInBuffer(position:size:)(__src[1] + 6, 2);
      v3 = v7;
      if (v7)
      {
        goto LABEL_3;
      }

      v8 = *(__src[8] + 24);
      v9 = *(v8 + v5);
      if (*(v8 + v5))
      {
        v5 = __src[0] + v9;
        if (((v8 + LOBYTE(__src[0]) + v9) & 3) != 0)
        {
          v10 = v6;
        }

        else
        {
          v10 = 0;
        }

        if (v10 == 1)
        {
          goto LABEL_14;
        }

        Verifier.rangeInBuffer(position:size:)(__src[0] + v9, 4);
        v3 = v13;
        if (v13)
        {
          goto LABEL_3;
        }
      }
    }

    sub_272B544C8(8, 0x65676175676E616CLL, 0xE800000000000000, 0, sub_272B54784);
    if (v3)
    {
      goto LABEL_3;
    }

    if (v4 >= 11)
    {
      v5 = __src[1] + 10;
      v14 = LOBYTE(__src[3]);
      if (LOBYTE(__src[3]) == 1 && ((*(__src[8] + 24) + v5) & 1) != 0)
      {
        goto LABEL_73;
      }

      Verifier.rangeInBuffer(position:size:)(__src[1] + 10, 2);
      v3 = v15;
      if (v15)
      {
        goto LABEL_3;
      }

      v16 = *(__src[8] + 24);
      v17 = *(v16 + v5);
      if (*(v16 + v5))
      {
        v5 = __src[0] + v17;
        if (((v16 + LOBYTE(__src[0]) + v17) & 3) != 0)
        {
          v18 = v14;
        }

        else
        {
          v18 = 0;
        }

        if (v18 == 1)
        {
          goto LABEL_26;
        }

        Verifier.rangeInBuffer(position:size:)(__src[0] + v17, 4);
        v3 = v19;
        if (v19)
        {
          goto LABEL_3;
        }
      }

      if (v4 > 0xC)
      {
        v5 = __src[1] + 12;
        v20 = LOBYTE(__src[3]);
        if (LOBYTE(__src[3]) == 1 && ((*(__src[8] + 24) + v5) & 1) != 0)
        {
          goto LABEL_73;
        }

        Verifier.rangeInBuffer(position:size:)(__src[1] + 12, 2);
        v3 = v21;
        if (v21)
        {
          goto LABEL_3;
        }

        v22 = *(__src[8] + 24);
        v23 = *(v22 + v5);
        if (*(v22 + v5))
        {
          v5 = __src[0] + v23;
          if (((v22 + LOBYTE(__src[0]) + v23) & 3) != 0)
          {
            v24 = v20;
          }

          else
          {
            v24 = 0;
          }

          if (v24 == 1)
          {
LABEL_26:
            *v48 = MEMORY[0x277D83A90];
            v11 = &unk_2808A3178;
            v12 = &unk_272B87CD0;
            goto LABEL_74;
          }

          Verifier.rangeInBuffer(position:size:)(__src[0] + v23, 4);
          v3 = v25;
          if (v25)
          {
            goto LABEL_3;
          }
        }
      }
    }

    sub_272B544C8(14, 0x72656469766F7270, 0xEC0000006F676F4CLL, 0, sub_272B54784);
    if (v3)
    {
      goto LABEL_3;
    }

    sub_272B544C8(16, 0x72656469766F7270, 0xEC000000656D614ELL, 0, sub_272B54784);
    if (v4 < 19)
    {
      goto LABEL_71;
    }

    v5 = __src[1] + 18;
    v26 = LOBYTE(__src[3]);
    if (LOBYTE(__src[3]) == 1 && ((*(__src[8] + 24) + v5) & 1) != 0)
    {
      goto LABEL_73;
    }

    Verifier.rangeInBuffer(position:size:)(__src[1] + 18, 2);
    if (v27)
    {
      goto LABEL_3;
    }

    v28 = *(__src[8] + 24);
    v29 = *(v28 + v5);
    if (*(v28 + v5))
    {
      v5 = __src[0] + v29;
      if (((v28 + LOBYTE(__src[0]) + v29) & 3) != 0)
      {
        v30 = v26;
      }

      else
      {
        v30 = 0;
      }

      if (v30 == 1)
      {
        goto LABEL_14;
      }

      Verifier.rangeInBuffer(position:size:)(__src[0] + v29, 4);
      if (v31)
      {
        goto LABEL_3;
      }
    }

    if (v4 <= 0x14)
    {
      goto LABEL_71;
    }

    v5 = __src[1] + 20;
    v32 = LOBYTE(__src[3]);
    if (LOBYTE(__src[3]) == 1 && ((*(__src[8] + 24) + v5) & 1) != 0)
    {
      goto LABEL_73;
    }

    Verifier.rangeInBuffer(position:size:)(__src[1] + 20, 2);
    if (v33)
    {
      goto LABEL_3;
    }

    v34 = *(__src[8] + 24);
    v35 = *(v34 + v5);
    if (!*(v34 + v5))
    {
      goto LABEL_59;
    }

    v5 = __src[0] + v35;
    if (((v34 + LOBYTE(__src[0]) + v35) & 3) != 0)
    {
      v36 = v32;
    }

    else
    {
      v36 = 0;
    }

    if (v36 != 1)
    {
      Verifier.rangeInBuffer(position:size:)(__src[0] + v35, 4);
      if (!v37)
      {
LABEL_59:
        if (v4 <= 0x16)
        {
          goto LABEL_71;
        }

        v5 = __src[1] + 22;
        if (LOBYTE(__src[3]) != 1 || ((*(__src[8] + 24) + v5) & 1) == 0)
        {
          Verifier.rangeInBuffer(position:size:)(__src[1] + 22, 2);
          if (v38)
          {
            goto LABEL_3;
          }

          if (*(*(__src[8] + 24) + v5))
          {
            Verifier.rangeInBuffer(position:size:)(__src[0] + *(*(__src[8] + 24) + v5), 1);
            if (v39)
            {
              goto LABEL_3;
            }
          }

          if (v4 <= 0x18)
          {
            goto LABEL_71;
          }

          v5 = __src[1] + 24;
          if (LOBYTE(__src[3]) != 1 || ((*(__src[8] + 24) + v5) & 1) == 0)
          {
            Verifier.rangeInBuffer(position:size:)(__src[1] + 24, 2);
            if (v40)
            {
              goto LABEL_3;
            }

            if (*(*(__src[8] + 24) + v5))
            {
              Verifier.rangeInBuffer(position:size:)(__src[0] + *(*(__src[8] + 24) + v5), 1);
              if (v41)
              {
                goto LABEL_3;
              }
            }

LABEL_71:
            if (__OFSUB__(__src[7], 1))
            {
              __break(1u);
              return;
            }

            --__src[7];
            goto LABEL_3;
          }
        }

LABEL_73:
        *v48 = MEMORY[0x277D84C58];
        v11 = &qword_2808A3160;
        v12 = &unk_272B87CC0;
        goto LABEL_74;
      }

LABEL_3:
      memcpy(v48, __src, sizeof(v48));
      sub_272B522C4(v48);
      return;
    }

LABEL_14:
    *v48 = MEMORY[0x277D84CC0];
    v11 = &qword_2808A3170;
    v12 = &unk_272B89910;
LABEL_74:
    __swift_instantiateConcreteTypeFromMangledNameV2(v11, v12);
    v42 = sub_272B87730();
    v44 = v43;
    sub_272B5C86C();
    swift_allocError();
    *v45 = v5;
    *(v45 + 8) = v42;
    *(v45 + 16) = v44;
    v46 = *&v48[32];
    v47 = *&v48[16];
    *(v45 + 24) = *v48;
    *(v45 + 40) = v47;
    *(v45 + 56) = v46;
    *(v45 + 64) = 0;
    swift_willThrow();
    goto LABEL_3;
  }
}

uint64_t sub_272B5226C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_272B52318(uint64_t *a1, uint64_t *a2, uint64_t a3, unint64_t a4)
{
  v95 = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v4 = a1[1];
  switch(v4 >> 62)
  {
    case 1uLL:
      v37 = v4 & 0x3FFFFFFFFFFFFFFFLL;
      v38 = OUTLINED_FUNCTION_0_2();
      sub_272B5226C(v38, v39);
      v40 = OUTLINED_FUNCTION_0_2();
      sub_272B5226C(v40, v41);
      v42 = OUTLINED_FUNCTION_264();
      sub_272B5226C(v42, v43);
      v44 = OUTLINED_FUNCTION_264();
      sub_272B52DF8(v44, v45);
      *a1 = xmmword_272B89C20;
      sub_272B52DF8(0, 0xC000000000000000);
      v46 = v5 >> 32;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_28;
      }

      if (v46 < v5)
      {
        goto LABEL_42;
      }

      if (sub_272B875E0() && __OFSUB__(v5, sub_272B87600()))
      {
        goto LABEL_43;
      }

      v70 = sub_272B87610();
      v71 = *(v70 + 48);
      v72 = *(v70 + 52);
      swift_allocObject();
      v73 = sub_272B875D0();

      v37 = v73;
LABEL_28:
      if (v46 < v5)
      {
        goto LABEL_40;
      }

      v74 = OUTLINED_FUNCTION_0_2();
      sub_272B5226C(v74, v75);

      v76 = sub_272B875E0();
      if (!v76)
      {
        goto LABEL_53;
      }

      v77 = v76;
      v78 = sub_272B87600();
      v79 = v5 - v78;
      if (__OFSUB__(v5, v78))
      {
        goto LABEL_41;
      }

      sub_272B875F0();
      v80 = *a2;
      v81 = 0;
      switch(a4 >> 62)
      {
        case 1uLL:
          OUTLINED_FUNCTION_4_0();
          if (v31)
          {
            goto LABEL_50;
          }

          v81 = v82;
LABEL_36:
          ByteBuffer.Storage.copy(from:count:)((v77 + v79), v81);
          v83 = OUTLINED_FUNCTION_0_2();
          sub_272B52DF8(v83, v84);

          v85 = OUTLINED_FUNCTION_0_2();
          sub_272B52DF8(v85, v86);
          v87 = OUTLINED_FUNCTION_0_2();
          sub_272B52DF8(v87, v88);
          v89 = OUTLINED_FUNCTION_0_2();
          result = sub_272B52DF8(v89, v90);
          v69 = v37 | 0x4000000000000000;
          *a1 = v5;
          break;
        case 2uLL:
          OUTLINED_FUNCTION_3_1();
          if (!v31)
          {
            goto LABEL_36;
          }

          goto LABEL_51;
        case 3uLL:
          goto LABEL_36;
        default:
          v81 = BYTE6(a4);
          goto LABEL_36;
      }

      break;
    case 2uLL:
      v17 = OUTLINED_FUNCTION_0_2();
      sub_272B5226C(v17, v18);
      v19 = OUTLINED_FUNCTION_0_2();
      sub_272B5226C(v19, v20);
      v21 = OUTLINED_FUNCTION_264();
      sub_272B5226C(v21, v22);
      v23 = OUTLINED_FUNCTION_264();
      sub_272B52DF8(v23, v24);
      *&__src = v5;
      *(&__src + 1) = v4 & 0x3FFFFFFFFFFFFFFFLL;
      *a1 = xmmword_272B89C20;
      sub_272B52DF8(0, 0xC000000000000000);
      sub_272B87640();
      v25 = *(__src + 16);
      v26 = OUTLINED_FUNCTION_0_2();
      sub_272B5226C(v26, v27);
      v28 = sub_272B875E0();
      if (!v28)
      {
        __break(1u);
LABEL_53:
        __break(1u);
        JUMPOUT(0x272B52860);
      }

      v29 = v28;
      v30 = sub_272B87600();
      v31 = __OFSUB__(v25, v30);
      v32 = v25 - v30;
      if (v31)
      {
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
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
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
      }

      sub_272B875F0();
      v33 = *a2;
      v34 = 0;
      switch(a4 >> 62)
      {
        case 1uLL:
          OUTLINED_FUNCTION_4_0();
          if (v31)
          {
            goto LABEL_48;
          }

          v34 = v60;
LABEL_26:
          ByteBuffer.Storage.copy(from:count:)((v29 + v32), v34);
          v61 = OUTLINED_FUNCTION_0_2();
          sub_272B52DF8(v61, v62);
          v63 = OUTLINED_FUNCTION_0_2();
          sub_272B52DF8(v63, v64);
          v65 = OUTLINED_FUNCTION_0_2();
          sub_272B52DF8(v65, v66);
          v67 = OUTLINED_FUNCTION_0_2();
          result = sub_272B52DF8(v67, v68);
          v69 = *(&__src + 1) | 0x8000000000000000;
          *a1 = __src;
          break;
        case 2uLL:
          OUTLINED_FUNCTION_3_1();
          if (!v31)
          {
            goto LABEL_26;
          }

          goto LABEL_49;
        case 3uLL:
          goto LABEL_26;
        default:
          v34 = BYTE6(a4);
          goto LABEL_26;
      }

      break;
    case 3uLL:
      *(&__src + 7) = 0;
      *&__src = 0;
      v35 = *a2;
      v36 = 0;
      switch(a4 >> 62)
      {
        case 1uLL:
          OUTLINED_FUNCTION_4_0();
          if (v31)
          {
            goto LABEL_44;
          }

          v36 = v47;
LABEL_20:
          ByteBuffer.Storage.copy(from:count:)(&__src, v36);
          v49 = OUTLINED_FUNCTION_0_2();
          result = sub_272B52DF8(v49, v50);
          break;
        case 2uLL:
          OUTLINED_FUNCTION_3_1();
          if (!v31)
          {
            goto LABEL_20;
          }

          goto LABEL_46;
        case 3uLL:
          goto LABEL_20;
        default:
          v36 = BYTE6(a4);
          goto LABEL_20;
      }

      goto LABEL_38;
    default:
      v8 = OUTLINED_FUNCTION_0_2();
      sub_272B5226C(v8, v9);
      v10 = OUTLINED_FUNCTION_0_2();
      sub_272B5226C(v10, v11);
      v12 = OUTLINED_FUNCTION_264();
      sub_272B52DF8(v12, v13);
      *&__src = v5;
      WORD4(__src) = v4;
      BYTE10(__src) = BYTE2(v4);
      BYTE11(__src) = BYTE3(v4);
      BYTE12(__src) = BYTE4(v4);
      BYTE13(__src) = BYTE5(v4);
      BYTE14(__src) = BYTE6(v4);
      v14 = *a2;
      v15 = 0;
      switch(a4 >> 62)
      {
        case 1uLL:
          OUTLINED_FUNCTION_4_0();
          if (v31)
          {
            goto LABEL_45;
          }

          v15 = v48;
LABEL_22:
          ByteBuffer.Storage.copy(from:count:)(&__src, v15);
          v52 = __src;
          v53 = DWORD2(__src) | ((WORD6(__src) | (BYTE14(__src) << 16)) << 32);
          v54 = OUTLINED_FUNCTION_0_2();
          sub_272B52DF8(v54, v55);
          v56 = OUTLINED_FUNCTION_0_2();
          sub_272B52DF8(v56, v57);
          v58 = OUTLINED_FUNCTION_0_2();
          result = sub_272B52DF8(v58, v59);
          *a1 = v52;
          a1[1] = v53;
          break;
        case 2uLL:
          OUTLINED_FUNCTION_3_1();
          if (!v31)
          {
            goto LABEL_22;
          }

          goto LABEL_47;
        case 3uLL:
          goto LABEL_22;
        default:
          v15 = BYTE6(a4);
          goto LABEL_22;
      }

      goto LABEL_38;
  }

  a1[1] = v69;
LABEL_38:
  v91 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_272B528CC(int a1, unint64_t position)
{
  Verifier.visitTable(at:)(position, __src);
  if (!v2)
  {
    sub_272B544C8(4, 0x617461646174656DLL, 0xE800000000000000, 1, sub_272B51C30);
    v3 = 0;
    v4 = __src[2];
    if (__src[2] > 6)
    {
      v5 = __src[1] + 6;
      if (LOBYTE(__src[3]) == 1 && ((*(__src[8] + 24) + v5) & 1) != 0)
      {
        goto LABEL_40;
      }

      Verifier.rangeInBuffer(position:size:)(__src[1] + 6, 2);
      v3 = v6;
      if (v6)
      {
        goto LABEL_3;
      }

      if (*(*(__src[8] + 24) + v5))
      {
        Verifier.rangeInBuffer(position:size:)(__src[0] + *(*(__src[8] + 24) + v5), 1);
        v3 = v7;
        if (v7)
        {
          goto LABEL_3;
        }
      }

      if (v4 >= 9)
      {
        v5 = __src[1] + 8;
        v8 = LOBYTE(__src[3]);
        if (LOBYTE(__src[3]) == 1 && ((*(__src[8] + 24) + v5) & 1) != 0)
        {
          goto LABEL_40;
        }

        Verifier.rangeInBuffer(position:size:)(__src[1] + 8, 2);
        v3 = v9;
        if (v9)
        {
          goto LABEL_3;
        }

        v10 = *(__src[8] + 24);
        v11 = *(v10 + v5);
        if (*(v10 + v5))
        {
          v5 = __src[0] + v11;
          if ((v8 & (v10 + LODWORD(__src[0]) + v11)) == 1)
          {
            goto LABEL_40;
          }

          Verifier.rangeInBuffer(position:size:)(__src[0] + v11, 2);
          v3 = v12;
          if (v12)
          {
            goto LABEL_3;
          }
        }

        if (v4 >= 0xB)
        {
          v5 = __src[1] + 10;
          if (LOBYTE(__src[3]) == 1 && ((*(__src[8] + 24) + v5) & 1) != 0)
          {
            goto LABEL_40;
          }

          Verifier.rangeInBuffer(position:size:)(__src[1] + 10, 2);
          v3 = v13;
          if (v13)
          {
            goto LABEL_3;
          }

          if (*(*(__src[8] + 24) + v5))
          {
            Verifier.rangeInBuffer(position:size:)(__src[0] + *(*(__src[8] + 24) + v5), 1);
            v3 = v14;
            if (v14)
            {
              goto LABEL_3;
            }
          }
        }
      }
    }

    sub_272B53EA4(12, 0x6E6174756C6C6F70, 0xEA00000000007374, 1, sub_272B54F44);
    if (v3)
    {
      goto LABEL_3;
    }

    if (v4 <= 14)
    {
      goto LABEL_37;
    }

    v5 = __src[1] + 14;
    if (LOBYTE(__src[3]) != 1 || ((*(__src[8] + 24) + v5) & 1) == 0)
    {
      Verifier.rangeInBuffer(position:size:)(__src[1] + 14, 2);
      v3 = v15;
      if (v15)
      {
        goto LABEL_3;
      }

      if (*(*(__src[8] + 24) + v5))
      {
        Verifier.rangeInBuffer(position:size:)(__src[0] + *(*(__src[8] + 24) + v5), 1);
        v3 = v16;
        if (v16)
        {
          goto LABEL_3;
        }
      }

      if (v4 < 0x11)
      {
        goto LABEL_37;
      }

      v5 = __src[1] + 16;
      if (LOBYTE(__src[3]) != 1 || ((*(__src[8] + 24) + v5) & 1) == 0)
      {
        Verifier.rangeInBuffer(position:size:)(__src[1] + 16, 2);
        v3 = v17;
        if (!v17)
        {
          if (!*(*(__src[8] + 24) + v5) || (Verifier.rangeInBuffer(position:size:)(__src[0] + *(*(__src[8] + 24) + v5), 1), (v3 = v18) == 0))
          {
LABEL_37:
            sub_272B544C8(18, 0x656C616373, 0xE500000000000000, 0, sub_272B54784);
            if (!v3)
            {
              if (__OFSUB__(__src[7], 1))
              {
                __break(1u);
                return;
              }

              --__src[7];
            }
          }
        }

LABEL_3:
        memcpy(v25, __src, sizeof(v25));
        sub_272B522C4(v25);
        return;
      }
    }

LABEL_40:
    *v25 = MEMORY[0x277D84C58];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808A3160, &unk_272B87CC0);
    v19 = sub_272B87730();
    v21 = v20;
    sub_272B5C86C();
    swift_allocError();
    *v22 = v5;
    *(v22 + 8) = v19;
    *(v22 + 16) = v21;
    v23 = *&v25[32];
    v24 = *&v25[16];
    *(v22 + 24) = *v25;
    *(v22 + 40) = v24;
    *(v22 + 56) = v23;
    *(v22 + 64) = 0;
    swift_willThrow();
    goto LABEL_3;
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Verifier.rangeInBuffer(position:size:)(Swift::Int position, Swift::Int size)
{
  if (size + position >= 0)
  {
    v3 = size + position;
  }

  else
  {
    v3 = -(size + position);
  }

  v4 = *(*(v2 + 40) + 32);
  if ((v4 & 0x8000000000000000) != 0 || v4 < v3)
  {
    v9 = *(v2 + 8);
    sub_272B5C86C();
    OUTLINED_FUNCTION_177();
    *v7 = v3;
    *(v7 + 8) = v9;
    *(v7 + 16) = v10;
    *(v7 + 32) = v11;
    *(v7 + 48) = v12;
    v8 = 1;
    goto LABEL_11;
  }

  if (size < 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (HIDWORD(size))
  {
LABEL_14:
    __break(1u);
    return;
  }

  v5 = *(v2 + 16) + size;
  *(v2 + 16) = v5;
  if (*(v2 + 64) >= v5)
  {
    return;
  }

  sub_272B5C86C();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_0_5(v6, 6);
LABEL_11:
  *(v7 + 64) = v8;
  swift_willThrow();
}

uint64_t sub_272B52DF8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void *ByteBuffer.Storage.copy(from:count:)(void *__src, size_t __len)
{
  if ((__len & 0x8000000000000000) == 0)
  {
    return memmove(*(v2 + 24), __src, __len);
  }

  __break(1u);
  return __src;
}

void sub_272B52E68(Swift::Int position)
{
  if (*v1 == 1 && (OUTLINED_FUNCTION_3_4(), ((v3 + position) & 1) != 0))
  {
    *&v14 = MEMORY[0x277D84C58];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808A3160, &unk_272B87CC0);
    v4 = sub_272B87730();
    sub_272B5C86C();
    v5 = OUTLINED_FUNCTION_177();
    *v6 = position;
    v6[1] = v4;
    OUTLINED_FUNCTION_1_4(v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16);
  }

  else
  {
    Verifier.rangeInBuffer(position:size:)(position, 2);
  }
}

void static ForwardOffset.verify<A>(_:at:of:)(uint64_t a1, Swift::Int position, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (*a1 == 1 && ((*(*(a1 + 40) + 24) + position) & 3) != 0)
  {
    v17.n128_u64[0] = MEMORY[0x277D84CC0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808A3170, &unk_272B89910);
    v10 = sub_272B87730();
    v12 = v11;
    sub_272B5C86C();
    OUTLINED_FUNCTION_177();
    *v13 = position;
    v13[1] = v10;
    v13[2] = v12;
    OUTLINED_FUNCTION_21(v13, v19, v18, v17);
    swift_willThrow();
  }

  else
  {
    Verifier.rangeInBuffer(position:size:)(position, 4);
    if (!v14)
    {
      v15 = *(*(*(a1 + 40) + 24) + position) + position;
      if (v15 < 0)
      {
        v15 = -v15;
      }

      if (v15 >= 0x7FFFFFFFFFFFFFFFLL)
      {
        v16 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v16 = v15;
      }

      (*(a6 + 8))(a1, v16, a4, a4, a6, a4, a6);
    }
  }
}

void sub_272B53060(int a1, unint64_t position)
{
  Verifier.visitTable(at:)(position, __src);
  v3 = v2;
  if (!v2)
  {
    v4 = __src[2];
    if (__src[2] < 5)
    {
      goto LABEL_86;
    }

    v5 = __src[1] + 4;
    sub_272B52E68(__src[1] + 4);
    if (*(*(__src[8] + 24) + v5))
    {
      sub_272B55EF8(__src[0] + *(*(__src[8] + 24) + v5));
    }

    if (v4 <= 6)
    {
      goto LABEL_86;
    }

    v6 = __src[1] + 6;
    sub_272B52E68(__src[1] + 6);
    if (!*(*(__src[8] + 24) + v6) || (Verifier.rangeInBuffer(position:size:)(__src[0] + *(*(__src[8] + 24) + v6), 1), (v3 = v7) == 0))
    {
      if (v4 <= 8)
      {
        goto LABEL_86;
      }

      v8 = __src[1] + 8;
      sub_272B52E68(__src[1] + 8);
      if (!v3)
      {
        if (!*(*(__src[8] + 24) + v8) || (Verifier.rangeInBuffer(position:size:)(__src[0] + *(*(__src[8] + 24) + v8), 1), (v3 = v9) == 0))
        {
          if (v4 <= 0xA)
          {
            goto LABEL_86;
          }

          v10 = __src[1] + 10;
          sub_272B52E68(__src[1] + 10);
          if (!v3)
          {
            if (!*(*(__src[8] + 24) + v10) || (Verifier.rangeInBuffer(position:size:)(__src[0] + *(*(__src[8] + 24) + v10), 1), (v3 = v11) == 0))
            {
              if (v4 <= 0xC)
              {
                goto LABEL_86;
              }

              v12 = __src[1] + 12;
              sub_272B52E68(__src[1] + 12);
              if (!v3)
              {
                if (!*(*(__src[8] + 24) + v12) || (Verifier.rangeInBuffer(position:size:)(__src[0] + *(*(__src[8] + 24) + v12), 1), (v3 = v13) == 0))
                {
                  if (v4 <= 0xE)
                  {
                    goto LABEL_86;
                  }

                  v14 = __src[1] + 14;
                  sub_272B52E68(__src[1] + 14);
                  if (!v3)
                  {
                    if (!*(*(__src[8] + 24) + v14) || (Verifier.rangeInBuffer(position:size:)(__src[0] + *(*(__src[8] + 24) + v14), 1), (v3 = v15) == 0))
                    {
                      if (v4 <= 0x10)
                      {
                        goto LABEL_86;
                      }

                      v16 = __src[1] + 16;
                      sub_272B52E68(__src[1] + 16);
                      if (!v3)
                      {
                        if (!*(*(__src[8] + 24) + v16) || (Verifier.rangeInBuffer(position:size:)(__src[0] + *(*(__src[8] + 24) + v16), 1), (v3 = v17) == 0))
                        {
                          if (v4 <= 0x12)
                          {
                            goto LABEL_86;
                          }

                          v18 = __src[1] + 18;
                          sub_272B52E68(__src[1] + 18);
                          if (!v3)
                          {
                            if (!*(*(__src[8] + 24) + v18) || (Verifier.rangeInBuffer(position:size:)(__src[0] + *(*(__src[8] + 24) + v18), 1), (v3 = v19) == 0))
                            {
                              if (v4 <= 0x14)
                              {
                                goto LABEL_86;
                              }

                              v20 = __src[1] + 20;
                              sub_272B52E68(__src[1] + 20);
                              if (!v3)
                              {
                                if (*(*(__src[8] + 24) + v20))
                                {
                                  sub_272B55FD0(__src[0] + *(*(__src[8] + 24) + v20));
                                }

                                if (v4 <= 0x16)
                                {
                                  goto LABEL_86;
                                }

                                v21 = __src[1] + 22;
                                sub_272B52E68(__src[1] + 22);
                                if (*(*(__src[8] + 24) + v21))
                                {
                                  sub_272B55FD0(__src[0] + *(*(__src[8] + 24) + v21));
                                }

                                if (v4 <= 0x18)
                                {
                                  goto LABEL_86;
                                }

                                v22 = __src[1] + 24;
                                sub_272B52E68(__src[1] + 24);
                                if (*(*(__src[8] + 24) + v22))
                                {
                                  sub_272B55FD0(__src[0] + *(*(__src[8] + 24) + v22));
                                }

                                if (v4 <= 0x1A)
                                {
                                  goto LABEL_86;
                                }

                                v23 = __src[1] + 26;
                                sub_272B52E68(__src[1] + 26);
                                if (!*(*(__src[8] + 24) + v23) || (Verifier.rangeInBuffer(position:size:)(__src[0] + *(*(__src[8] + 24) + v23), 1), (v3 = v24) == 0))
                                {
                                  if (v4 <= 0x1C)
                                  {
                                    goto LABEL_86;
                                  }

                                  v25 = __src[1] + 28;
                                  sub_272B52E68(__src[1] + 28);
                                  if (!v3)
                                  {
                                    if (!*(*(__src[8] + 24) + v25) || (Verifier.rangeInBuffer(position:size:)(__src[0] + *(*(__src[8] + 24) + v25), 1), (v3 = v26) == 0))
                                    {
                                      if (v4 <= 0x1E)
                                      {
                                        goto LABEL_86;
                                      }

                                      v27 = __src[1] + 30;
                                      sub_272B52E68(__src[1] + 30);
                                      if (!v3)
                                      {
                                        if (*(*(__src[8] + 24) + v27))
                                        {
                                          sub_272B55FD0(__src[0] + *(*(__src[8] + 24) + v27));
                                        }

                                        if (v4 <= 0x20)
                                        {
                                          goto LABEL_86;
                                        }

                                        v28 = __src[1] + 32;
                                        sub_272B52E68(__src[1] + 32);
                                        if (!*(*(__src[8] + 24) + v28) || (Verifier.rangeInBuffer(position:size:)(__src[0] + *(*(__src[8] + 24) + v28), 1), (v3 = v29) == 0))
                                        {
                                          if (v4 <= 0x22)
                                          {
                                            goto LABEL_86;
                                          }

                                          v30 = __src[1] + 34;
                                          sub_272B52E68(__src[1] + 34);
                                          if (!v3)
                                          {
                                            if (*(*(__src[8] + 24) + v30))
                                            {
                                              sub_272B55FD0(__src[0] + *(*(__src[8] + 24) + v30));
                                            }

                                            if (v4 < 0x25)
                                            {
                                              goto LABEL_86;
                                            }

                                            v31 = __src[1] + 36;
                                            sub_272B52E68(__src[1] + 36);
                                            if (*(*(__src[8] + 24) + v31))
                                            {
                                              sub_272B55FD0(__src[0] + *(*(__src[8] + 24) + v31));
                                            }

                                            if (v4 <= 0x26)
                                            {
                                              goto LABEL_86;
                                            }

                                            v32 = __src[1] + 38;
                                            sub_272B52E68(__src[1] + 38);
                                            if (*(*(__src[8] + 24) + v32))
                                            {
                                              sub_272B55FD0(__src[0] + *(*(__src[8] + 24) + v32));
                                            }

                                            if (v4 <= 0x28)
                                            {
                                              goto LABEL_86;
                                            }

                                            v33 = __src[1] + 40;
                                            sub_272B52E68(__src[1] + 40);
                                            if (*(*(__src[8] + 24) + v33))
                                            {
                                              sub_272B55FD0(__src[0] + *(*(__src[8] + 24) + v33));
                                            }

                                            if (v4 <= 0x2A)
                                            {
                                              goto LABEL_86;
                                            }

                                            v34 = __src[1] + 42;
                                            sub_272B52E68(__src[1] + 42);
                                            if (*(*(__src[8] + 24) + v34))
                                            {
                                              sub_272B55FD0(__src[0] + *(*(__src[8] + 24) + v34));
                                            }

                                            if (v4 < 0x2D)
                                            {
                                              goto LABEL_86;
                                            }

                                            v35 = __src[1] + 44;
                                            sub_272B52E68(__src[1] + 44);
                                            if (*(*(__src[8] + 24) + v35))
                                            {
                                              sub_272B55FD0(__src[0] + *(*(__src[8] + 24) + v35));
                                            }

                                            if (v4 <= 0x2E || (v36 = __src[1] + 46, sub_272B52E68(__src[1] + 46), !*(*(__src[8] + 24) + v36)) || (Verifier.rangeInBuffer(position:size:)(__src[0] + *(*(__src[8] + 24) + v36), 1), (v3 = v37) == 0))
                                            {
LABEL_86:
                                              sub_272B56000(48, 0x696C696269736976, 0xEA00000000007974, 0);
                                              if (!v3)
                                              {
                                                sub_272B56308(0x32u, 0x65726944646E6977, 0xED00006E6F697463, 0);
                                                sub_272B56000(52, 0x74737547646E6977, 0xE800000000000000, 0);
                                                sub_272B56000(54, 0x65657053646E6977, 0xE900000000000064, 0);
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

    memcpy(v38, __src, 0x65uLL);
    sub_272B522C4(v38);
  }
}

void getCheckedRoot<A>(byteBuffer:fileId:options:)(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *a1;
  v9 = *(*a1 + 32);
  if (v9 > 3221225471)
  {
    sub_272B5C86C();
    swift_allocError();
    OUTLINED_FUNCTION_0_7(v22, 2);
    return;
  }

  v10 = v7;
  v12 = a6;
  v15 = *a4;
  v16 = *(a4 + 2);
  v17 = *(a4 + 12);
  v18 = a1[1];
  v19 = a1[2];
  LOBYTE(__src[0]) = 1;
  __src[1] = v9;
  LODWORD(__src[2]) = 0;
  __src[3] = 0;
  __src[4] = 0;
  __src[5] = v8;
  __src[6] = v18;
  __src[7] = v19;
  __src[8] = v15;
  LODWORD(__src[9]) = v16;
  BYTE4(__src[9]) = v17;
  if (a3)
  {
    v31 = v19;

    sub_272B7FDD4(a2, a3);
    if (v10)
    {
LABEL_13:
      memcpy(__dst, __src, 0x4DuLL);
      sub_272B591FC(__dst);
      return;
    }

    v12 = a6;
    v19 = v31;
  }

  else
  {
  }

  static ForwardOffset.verify<A>(_:at:of:)(__src, 0, a5, a5, a5, a7);
  if (v10)
  {
    goto LABEL_13;
  }

  v23 = *(v8 + 32) - v18;
  if (v23 < 0xFFFFFFFF80000000)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v23 > 0x7FFFFFFF)
  {
    goto LABEL_15;
  }

  v24 = *(*(v8 + 24) + v23);
  if (v24 < 0)
  {
    goto LABEL_15;
  }

  v25 = (v24 + v23);
  if (!__OFADD__(v24, v23))
  {
    v26 = *(v12 + 8);
    v27 = *(v26 + 8);

    v27(v28, v18, v19, v25, a5, v26);
    goto LABEL_13;
  }

LABEL_16:
  __break(1u);
}

uint64_t OUTLINED_FUNCTION_183()
{
  v3 = *(v0 + 8);
}

void static WK2_Weather.verify<A>(_:at:of:)(int a1, unint64_t a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  OUTLINED_FUNCTION_92(a1, a2, a3, a4, a5, a6, a7, a8, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104);
  if (!v8)
  {
    OUTLINED_FUNCTION_153();
    OUTLINED_FUNCTION_133();
    OUTLINED_FUNCTION_86();
    sub_272B544C8(v9, v10, v11, v12, v13);
    OUTLINED_FUNCTION_152();
    OUTLINED_FUNCTION_134();
    OUTLINED_FUNCTION_86();
    sub_272B544C8(v14, v15, v16, v17, v18);
    OUTLINED_FUNCTION_151();
    OUTLINED_FUNCTION_189();
    OUTLINED_FUNCTION_71();
    sub_272B544C8(v19, v20, v21, v22, v23);
    OUTLINED_FUNCTION_150();
    OUTLINED_FUNCTION_232();
    OUTLINED_FUNCTION_71();
    sub_272B5DACC(v24, v25, v26, v27, v28, 0xE500000000000000, v29, v30);
    OUTLINED_FUNCTION_149();
    OUTLINED_FUNCTION_101();
    OUTLINED_FUNCTION_67();
    sub_272B544C8(v31, v32, v33, v34, v35);
    OUTLINED_FUNCTION_148();
    OUTLINED_FUNCTION_247();
    OUTLINED_FUNCTION_231();
    OUTLINED_FUNCTION_86();
    sub_272B5DACC(v36, v37, v38, v39, v40, 0xEA00000000007374, v41, v42);
    OUTLINED_FUNCTION_147();
    OUTLINED_FUNCTION_189();
    OUTLINED_FUNCTION_86();
    sub_272B544C8(v43, v44, v45, v46, v47);
    OUTLINED_FUNCTION_145();
    OUTLINED_FUNCTION_200();
    OUTLINED_FUNCTION_86();
    sub_272B544C8(v48, v49, v50, v51, v52);
    OUTLINED_FUNCTION_144();
    OUTLINED_FUNCTION_187();
    OUTLINED_FUNCTION_101();
    OUTLINED_FUNCTION_86();
    sub_272B5DACC(v53, v54, v55, v56, v57, v58, v59, v60);
    OUTLINED_FUNCTION_143();
    OUTLINED_FUNCTION_227();
    OUTLINED_FUNCTION_86();
    sub_272B544C8(v61, v62, v63, v64, v65);
    OUTLINED_FUNCTION_142();
    OUTLINED_FUNCTION_200();
    OUTLINED_FUNCTION_86();
    sub_272B544C8(v66, v67, v68, v69, v70);
    OUTLINED_FUNCTION_156();
    OUTLINED_FUNCTION_86();
    sub_272B544C8(v71, v72, v73, v74, v75);
    OUTLINED_FUNCTION_155();
    OUTLINED_FUNCTION_101();
    OUTLINED_FUNCTION_67();
    sub_272B544C8(v76, v77, v78, v79, v80);
    OUTLINED_FUNCTION_109();
    if (v90)
    {
      __break(1u);
    }

    else
    {
      v105 = v89;
      OUTLINED_FUNCTION_93(v81, v82, v83, v84, v85, v86, v87, v88, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104);
      sub_272B522C4(&v91);
    }
  }
}

void sub_272B54028(int a1, unint64_t position)
{
  Verifier.visitTable(at:)(position, __src);
  if (!v2)
  {
    v3 = __src[2];
    if (__src[2] < 5)
    {
      goto LABEL_40;
    }

    v4 = __src[1] + 4;
    v5 = LOBYTE(__src[3]);
    if (LOBYTE(__src[3]) != 1 || ((*(__src[8] + 24) + v4) & 1) == 0)
    {
      Verifier.rangeInBuffer(position:size:)(__src[1] + 4, 2);
      if (v6)
      {
        goto LABEL_44;
      }

      v7 = *(__src[8] + 24);
      v8 = *(v7 + v4);
      if (*(v7 + v4))
      {
        v4 = __src[0] + v8;
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
          *v33 = MEMORY[0x277D84CC0];
          v10 = &qword_2808A3170;
          v11 = &unk_272B89910;
LABEL_43:
          __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
          v27 = sub_272B87730();
          v29 = v28;
          sub_272B5C86C();
          swift_allocError();
          *v30 = v4;
          *(v30 + 8) = v27;
          *(v30 + 16) = v29;
          v31 = *&v33[32];
          v32 = *&v33[16];
          *(v30 + 24) = *v33;
          *(v30 + 40) = v32;
          *(v30 + 56) = v31;
          *(v30 + 64) = 0;
          swift_willThrow();
          goto LABEL_44;
        }

        Verifier.rangeInBuffer(position:size:)(__src[0] + v8, 4);
        if (v12)
        {
          goto LABEL_44;
        }
      }

      if (v3 <= 6)
      {
        goto LABEL_40;
      }

      v4 = __src[1] + 6;
      if (LOBYTE(__src[3]) != 1 || ((*(__src[8] + 24) + v4) & 1) == 0)
      {
        Verifier.rangeInBuffer(position:size:)(__src[1] + 6, 2);
        if (v13)
        {
          goto LABEL_44;
        }

        if (*(*(__src[8] + 24) + v4))
        {
          Verifier.rangeInBuffer(position:size:)(__src[0] + *(*(__src[8] + 24) + v4), 1);
          if (v14)
          {
            goto LABEL_44;
          }
        }

        if (v3 <= 8)
        {
          goto LABEL_40;
        }

        v4 = __src[1] + 8;
        v15 = LOBYTE(__src[3]);
        if (LOBYTE(__src[3]) != 1 || ((*(__src[8] + 24) + v4) & 1) == 0)
        {
          Verifier.rangeInBuffer(position:size:)(__src[1] + 8, 2);
          if (v16)
          {
            goto LABEL_44;
          }

          v17 = *(__src[8] + 24);
          v18 = *(v17 + v4);
          if (*(v17 + v4))
          {
            v4 = __src[0] + v18;
            if (((v17 + LOBYTE(__src[0]) + v18) & 3) != 0)
            {
              v19 = v15;
            }

            else
            {
              v19 = 0;
            }

            if (v19 == 1)
            {
              goto LABEL_28;
            }

            Verifier.rangeInBuffer(position:size:)(__src[0] + v18, 4);
            if (v20)
            {
              goto LABEL_44;
            }
          }

          if (v3 <= 0xA)
          {
            goto LABEL_40;
          }

          v4 = __src[1] + 10;
          v21 = LOBYTE(__src[3]);
          if (LOBYTE(__src[3]) != 1 || ((*(__src[8] + 24) + v4) & 1) == 0)
          {
            Verifier.rangeInBuffer(position:size:)(__src[1] + 10, 2);
            if (!v22)
            {
              v23 = *(__src[8] + 24);
              v24 = *(v23 + v4);
              if (!*(v23 + v4))
              {
                goto LABEL_40;
              }

              v4 = __src[0] + v24;
              if (((v23 + LOBYTE(__src[0]) + v24) & 3) != 0)
              {
                v25 = v21;
              }

              else
              {
                v25 = 0;
              }

              if (v25 == 1)
              {
LABEL_28:
                *v33 = MEMORY[0x277D83A90];
                v10 = &unk_2808A3178;
                v11 = &unk_272B87CD0;
                goto LABEL_43;
              }

              Verifier.rangeInBuffer(position:size:)(__src[0] + v24, 4);
              if (!v26)
              {
LABEL_40:
                if (__OFSUB__(__src[7], 1))
                {
                  __break(1u);
                  return;
                }

                --__src[7];
              }
            }

LABEL_44:
            memcpy(v33, __src, sizeof(v33));
            sub_272B522C4(v33);
            return;
          }
        }
      }
    }

    *v33 = MEMORY[0x277D84C58];
    v10 = &qword_2808A3160;
    v11 = &unk_272B87CC0;
    goto LABEL_43;
  }
}

Swift::Int sub_272B543C0(Swift::Int a1, Swift::Int position)
{
  v3 = position;
  if (*a1 == 1 && ((*(*(a1 + 40) + 24) + position) & 3) != 0)
  {
    *&v21 = MEMORY[0x277D84CC0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808A3170, &unk_272B89910);
    OUTLINED_FUNCTION_199();
    OUTLINED_FUNCTION_185();
    v5 = OUTLINED_FUNCTION_177();
    *v6 = v3;
    v6[1] = a1;
    v6[2] = v2;
    OUTLINED_FUNCTION_18_1(v5, v6, v7, v8, v9, v10, v11, v12, v20, v21, v13, v22);
    OUTLINED_FUNCTION_184(v14, v15);
  }

  else
  {
    Verifier.rangeInBuffer(position:size:)(position, 4);
    if (!v16)
    {
      v17 = *(*(*(a1 + 40) + 24) + v3);
      v18 = v3 + 4;
      if (v3 + 4 < 0)
      {
        v18 = -4 - v3;
      }

      if (v18 >= 0x7FFFFFFFFFFFFFFFLL)
      {
        v3 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v3 = v18;
      }

      Verifier.rangeInBuffer(position:size:)(v3, v17);
    }
  }

  return v3;
}

uint64_t OUTLINED_FUNCTION_184(uint64_t a1, uint64_t a2)
{
  *(a2 + 64) = 0;

  return swift_willThrow();
}

Swift::Int sub_272B54784(Swift::Int a1, Swift::Int a2)
{
  v5 = sub_272B87720();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v31 - v11;
  result = sub_272B543C0(a1, a2);
  if (!v2)
  {
    v15 = result;
    v16 = v14;
    v34 = v6;
    v17 = result + v14;
    v18 = *(a1 + 8);
    if (result + v14 >= v18)
    {
      if (v17 >= 0)
      {
        v28 = result + v14;
      }

      else
      {
        v28 = -v17;
      }

      sub_272B5C86C();
      swift_allocError();
      *v24 = v28;
      *(v24 + 8) = v18;
      v30 = v32;
      v29 = v33;
      *(v24 + 16) = v31;
      *(v24 + 32) = v30;
      *(v24 + 48) = v29;
      v27 = 1;
      goto LABEL_10;
    }

    if ((*(a1 + 76) & 1) == 0)
    {
      v19 = *(a1 + 40);
      if (*(*(v19 + 24) + v17))
      {
        sub_272B87710();
        *&v31 = sub_272B51468((*(v19 + 24) + v15), v16);
        v20 = v34;
        (*(v34 + 16))(v10, v12, v5);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808A3210, &qword_272B89868);
        sub_272B549E8();
        v21 = sub_272B87700();
        v23 = v22;
        (*(v20 + 8))(v12, v5);

        sub_272B5C86C();
        swift_allocError();
        *v24 = a2;
        *(v24 + 8) = v21;
        *(v24 + 16) = v23;
        v25 = v33;
        v26 = v32;
        *(v24 + 24) = v31;
        *(v24 + 40) = v26;
        *(v24 + 56) = v25;
        v27 = 4;
LABEL_10:
        *(v24 + 64) = v27;
        return swift_willThrow();
      }
    }
  }

  return result;
}

unint64_t sub_272B549E8()
{
  result = qword_28118EE80;
  if (!qword_28118EE80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2808A3210, &qword_272B89868);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28118EE80);
  }

  return result;
}

Swift::String_optional __swiftcall Table.directString(at:)(Swift::Int32 at)
{
  v2 = v1;
  v4 = sub_272B87720();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v13 = v22 - v12;
  v14 = *(v2 + 24);
  v15 = *(v14 + at);
  v16 = at + v15;
  if (__OFADD__(at, v15))
  {
    __break(1u);
  }

  else
  {
    v17 = *(v14 + v16);
    sub_272B87710();
    v22[1] = sub_272B51468((*(v2 + 24) + v16 + 4), v17);
    (*(v5 + 16))(v9, v13, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808A3210, &qword_272B89868);
    sub_272B549E8();
    v18 = sub_272B87700();
    v20 = v19;
    (*(v5 + 8))(v13, v4);

    v10 = v18;
    v11 = v20;
  }

  result.value._object = v11;
  result.value._countAndFlagsBits = v10;
  return result;
}

Swift::Int sub_272B54C14(uint64_t a1, Swift::Int a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  result = sub_272B54DD0(a1, a2);
  if (v3)
  {
    return result;
  }

  v8 = result;
  v9 = result + v7;
  if (result >= result + v7)
  {
    return result;
  }

  while (1)
  {
    v10 = v8 + 4;
    if (!__OFADD__(v8, 4))
    {
      break;
    }

    v11 = 0x7FFFFFFFFFFFFFFFLL;
    if (*a1)
    {
      goto LABEL_8;
    }

LABEL_9:
    if ((v10 & 0x8000000000000000) != 0)
    {
      v10 = -v10;
    }

    v12 = *(a1 + 40);
    v13 = *(v12 + 32);
    if ((v13 & 0x8000000000000000) != 0 || v13 < v10)
    {
      v17 = *(a1 + 8);
      sub_272B5C86C();
      OUTLINED_FUNCTION_177();
      *v18 = v10;
      *(v18 + 8) = v17;
      *(v18 + 16) = v32;
      *(v18 + 32) = v33;
      *(v18 + 48) = v34;
      v19 = 1;
LABEL_23:
      *(v18 + 64) = v19;
      return swift_willThrow();
    }

    v14 = *(a1 + 16) + 4;
    *(a1 + 16) = v14;
    if (*(a1 + 64) < v14)
    {
      sub_272B5C86C();
      v20 = OUTLINED_FUNCTION_177();
      OUTLINED_FUNCTION_167(v20, v21);
      goto LABEL_23;
    }

    v15 = v8 + *(*(v12 + 24) + v8);
    if (v15 < 0)
    {
      v15 = -v15;
    }

    if (v15 >= 0x7FFFFFFFFFFFFFFFLL)
    {
      v16 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v16 = v15;
    }

    result = a3(a1, v16);
    v8 = v11;
    if (v11 >= v9)
    {
      return result;
    }
  }

  v11 = v8 + 4;
  if (!*a1)
  {
    goto LABEL_9;
  }

LABEL_8:
  if (((*(*(a1 + 40) + 24) + v8) & 3) == 0)
  {
    goto LABEL_9;
  }

  *&v32 = MEMORY[0x277D84CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808A3170, &unk_272B89910);
  v22 = OUTLINED_FUNCTION_195();
  sub_272B5C86C();
  v23 = OUTLINED_FUNCTION_177();
  *v24 = v8;
  v24[1] = v22;
  OUTLINED_FUNCTION_9_0(v23, v24, v25, v26, v27, v28, v29, v30, v32, v31, v33);
  return swift_willThrow();
}

Swift::Int sub_272B54DD0(unsigned __int8 *a1, Swift::Int position)
{
  v5 = *a1;
  if (v5 == 1 && ((*(*(a1 + 5) + 24) + position) & 3) != 0)
  {
    *&v27 = MEMORY[0x277D84CC0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808A3170, &unk_272B89910);
    OUTLINED_FUNCTION_199();
    OUTLINED_FUNCTION_185();
    v6 = OUTLINED_FUNCTION_177();
    OUTLINED_FUNCTION_54(v6, v7);
LABEL_15:
    OUTLINED_FUNCTION_18_1(v8, v9, v10, v11, v12, v13, v14, v15, v26, v27, v16, v28);
    OUTLINED_FUNCTION_184(v23, v24);
    return v2;
  }

  Verifier.rangeInBuffer(position:size:)(position, 4);
  if (!v17)
  {
    v18 = *(*(a1 + 5) + 24);
    v19 = position + 4;
    if (position + 4 < 0)
    {
      v19 = -4 - position;
    }

    if (v19 >= 0x7FFFFFFFFFFFFFFFLL)
    {
      v2 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v2 = v19;
    }

    if (((v18 + v2) & 3) != 0)
    {
      v20 = v5;
    }

    else
    {
      v20 = 0;
    }

    if (v20 != 1)
    {
      Verifier.rangeInBuffer(position:size:)(v2, *(v18 + position));
      return v2;
    }

    *&v27 = MEMORY[0x277D84CC0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808A3170, &unk_272B89910);
    OUTLINED_FUNCTION_199();
    OUTLINED_FUNCTION_204();
    v21 = OUTLINED_FUNCTION_177();
    OUTLINED_FUNCTION_224(v21, v22);
    goto LABEL_15;
  }

  return v2;
}

void sub_272B54F44(int a1, unint64_t position)
{
  Verifier.visitTable(at:)(position, __src);
  if (!v2)
  {
    v3 = __src[2];
    if (__src[2] < 5)
    {
      goto LABEL_25;
    }

    v4 = __src[1] + 4;
    if (LOBYTE(__src[3]) != 1 || ((*(__src[8] + 24) + v4) & 1) == 0)
    {
      Verifier.rangeInBuffer(position:size:)(__src[1] + 4, 2);
      if (v5)
      {
        goto LABEL_29;
      }

      if (*(*(__src[8] + 24) + v4))
      {
        Verifier.rangeInBuffer(position:size:)(__src[0] + *(*(__src[8] + 24) + v4), 1);
        if (v6)
        {
          goto LABEL_29;
        }
      }

      if (v3 <= 6)
      {
        goto LABEL_25;
      }

      v4 = __src[1] + 6;
      v7 = LOBYTE(__src[3]);
      if (LOBYTE(__src[3]) != 1 || ((*(__src[8] + 24) + v4) & 1) == 0)
      {
        Verifier.rangeInBuffer(position:size:)(__src[1] + 6, 2);
        if (v8)
        {
          goto LABEL_29;
        }

        v9 = *(__src[8] + 24);
        v10 = *(v9 + v4);
        if (*(v9 + v4))
        {
          v4 = __src[0] + v10;
          if (((v9 + LOBYTE(__src[0]) + v10) & 3) != 0)
          {
            v11 = v7;
          }

          else
          {
            v11 = 0;
          }

          if (v11 == 1)
          {
            *v23 = MEMORY[0x277D83A90];
            v12 = &unk_2808A3178;
            v13 = &unk_272B87CD0;
LABEL_28:
            __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);
            v17 = sub_272B87730();
            v19 = v18;
            sub_272B5C86C();
            swift_allocError();
            *v20 = v4;
            *(v20 + 8) = v17;
            *(v20 + 16) = v19;
            v21 = *&v23[32];
            v22 = *&v23[16];
            *(v20 + 24) = *v23;
            *(v20 + 40) = v22;
            *(v20 + 56) = v21;
            *(v20 + 64) = 0;
            swift_willThrow();
            goto LABEL_29;
          }

          Verifier.rangeInBuffer(position:size:)(__src[0] + v10, 4);
          if (v14)
          {
LABEL_29:
            memcpy(v23, __src, sizeof(v23));
            sub_272B522C4(v23);
            return;
          }
        }

        if (v3 <= 8)
        {
LABEL_25:
          if (__OFSUB__(__src[7], 1))
          {
            __break(1u);
            return;
          }

          --__src[7];
          goto LABEL_29;
        }

        v4 = __src[1] + 8;
        if (LOBYTE(__src[3]) != 1 || ((*(__src[8] + 24) + v4) & 1) == 0)
        {
          Verifier.rangeInBuffer(position:size:)(__src[1] + 8, 2);
          if (v15)
          {
            goto LABEL_29;
          }

          if (*(*(__src[8] + 24) + v4))
          {
            Verifier.rangeInBuffer(position:size:)(__src[0] + *(*(__src[8] + 24) + v4), 1);
            if (v16)
            {
              goto LABEL_29;
            }
          }

          goto LABEL_25;
        }
      }
    }

    *v23 = MEMORY[0x277D84C58];
    v12 = &qword_2808A3160;
    v13 = &unk_272B87CC0;
    goto LABEL_28;
  }
}

void sub_272B551FC(int a1, unint64_t position)
{
  Verifier.visitTable(at:)(position, __src);
  if (!v2)
  {
    sub_272B544C8(4, 0x617461646174656DLL, 0xE800000000000000, 1, sub_272B51C30);
    v3 = 0;
    v4 = __src[2];
    if (__src[2] >= 7)
    {
      v5 = __src[1] + 6;
      sub_272B52E68(__src[1] + 6);
      if (*(*(__src[8] + 24) + v5))
      {
        sub_272B55EF8(__src[0] + *(*(__src[8] + 24) + v5));
      }

      if (v4 > 8)
      {
        v6 = __src[1] + 8;
        sub_272B52E68(__src[1] + 8);
        if (*(*(__src[8] + 24) + v6))
        {
          Verifier.rangeInBuffer(position:size:)(__src[0] + *(*(__src[8] + 24) + v6), 1);
          v3 = v7;
          if (v7)
          {
            goto LABEL_3;
          }
        }

        if (v4 > 0xA)
        {
          v8 = __src[1] + 10;
          sub_272B52E68(__src[1] + 10);
          if (v3)
          {
            goto LABEL_3;
          }

          if (*(*(__src[8] + 24) + v8))
          {
            Verifier.rangeInBuffer(position:size:)(__src[0] + *(*(__src[8] + 24) + v8), 1);
            v3 = v9;
            if (v9)
            {
              goto LABEL_3;
            }
          }

          if (v4 > 0xC)
          {
            v10 = __src[1] + 12;
            sub_272B52E68(__src[1] + 12);
            if (v3)
            {
              goto LABEL_3;
            }

            if (*(*(__src[8] + 24) + v10))
            {
              Verifier.rangeInBuffer(position:size:)(__src[0] + *(*(__src[8] + 24) + v10), 1);
              v3 = v11;
              if (v11)
              {
                goto LABEL_3;
              }
            }

            if (v4 > 0xE)
            {
              v12 = __src[1] + 14;
              sub_272B52E68(__src[1] + 14);
              if (v3)
              {
                goto LABEL_3;
              }

              if (*(*(__src[8] + 24) + v12))
              {
                Verifier.rangeInBuffer(position:size:)(__src[0] + *(*(__src[8] + 24) + v12), 1);
                v3 = v13;
                if (v13)
                {
                  goto LABEL_3;
                }
              }

              if (v4 > 0x10)
              {
                v14 = __src[1] + 16;
                sub_272B52E68(__src[1] + 16);
                if (v3)
                {
                  goto LABEL_3;
                }

                if (*(*(__src[8] + 24) + v14))
                {
                  Verifier.rangeInBuffer(position:size:)(__src[0] + *(*(__src[8] + 24) + v14), 1);
                  v3 = v15;
                  if (v15)
                  {
                    goto LABEL_3;
                  }
                }

                if (v4 > 0x12)
                {
                  v16 = __src[1] + 18;
                  sub_272B52E68(__src[1] + 18);
                  if (v3)
                  {
                    goto LABEL_3;
                  }

                  if (*(*(__src[8] + 24) + v16))
                  {
                    Verifier.rangeInBuffer(position:size:)(__src[0] + *(*(__src[8] + 24) + v16), 1);
                    v3 = v17;
                    if (v17)
                    {
                      goto LABEL_3;
                    }
                  }

                  if (v4 > 0x14)
                  {
                    v18 = __src[1] + 20;
                    sub_272B52E68(__src[1] + 20);
                    if (v3)
                    {
                      goto LABEL_3;
                    }

                    if (*(*(__src[8] + 24) + v18))
                    {
                      Verifier.rangeInBuffer(position:size:)(__src[0] + *(*(__src[8] + 24) + v18), 1);
                      v3 = v19;
                      if (v19)
                      {
                        goto LABEL_3;
                      }
                    }

                    if (v4 > 0x16)
                    {
                      v20 = __src[1] + 22;
                      sub_272B52E68(__src[1] + 22);
                      if (v3)
                      {
                        goto LABEL_3;
                      }

                      if (*(*(__src[8] + 24) + v20))
                      {
                        sub_272B55FD0(__src[0] + *(*(__src[8] + 24) + v20));
                      }

                      if (v4 > 0x18)
                      {
                        v21 = __src[1] + 24;
                        sub_272B52E68(__src[1] + 24);
                        if (*(*(__src[8] + 24) + v21))
                        {
                          sub_272B55FD0(__src[0] + *(*(__src[8] + 24) + v21));
                        }

                        if (v4 > 0x1A)
                        {
                          v22 = __src[1] + 26;
                          sub_272B52E68(__src[1] + 26);
                          if (*(*(__src[8] + 24) + v22))
                          {
                            sub_272B55FD0(__src[0] + *(*(__src[8] + 24) + v22));
                          }

                          if (v4 > 0x1C)
                          {
                            v23 = __src[1] + 28;
                            sub_272B52E68(__src[1] + 28);
                            if (*(*(__src[8] + 24) + v23))
                            {
                              sub_272B55FD0(__src[0] + *(*(__src[8] + 24) + v23));
                            }

                            if (v4 > 0x1E)
                            {
                              v24 = __src[1] + 30;
                              sub_272B52E68(__src[1] + 30);
                              if (*(*(__src[8] + 24) + v24))
                              {
                                sub_272B55FD0(__src[0] + *(*(__src[8] + 24) + v24));
                              }

                              if (v4 > 0x20)
                              {
                                v25 = __src[1] + 32;
                                sub_272B52E68(__src[1] + 32);
                                if (*(*(__src[8] + 24) + v25))
                                {
                                  sub_272B55FD0(__src[0] + *(*(__src[8] + 24) + v25));
                                }

                                if (v4 >= 0x23)
                                {
                                  v26 = __src[1] + 34;
                                  sub_272B52E68(__src[1] + 34);
                                  if (*(*(__src[8] + 24) + v26))
                                  {
                                    sub_272B55FD0(__src[0] + *(*(__src[8] + 24) + v26));
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

    sub_272B53EA4(36, 0xD00000000000001FLL, 0x8000000272B8B670, 1, sub_272B615EC);
    if (!v3)
    {
      sub_272B53EA4(38, 0xD00000000000001FLL, 0x8000000272B8B690, 1, sub_272B615EC);
      sub_272B53EA4(40, 0xD000000000000020, 0x8000000272B8B6B0, 1, sub_272B615EC);
      sub_272B53EA4(42, 0xD000000000000023, 0x8000000272B8B6E0, 1, sub_272B615EC);
      sub_272B53EA4(44, 0xD000000000000023, 0x8000000272B8B710, 1, sub_272B615EC);
      sub_272B53EA4(46, 0xD000000000000024, 0x8000000272B8B740, 1, sub_272B615EC);
      v27 = 0;
      if (v4 < 49)
      {
        goto LABEL_74;
      }

      v28 = __src[1] + 48;
      sub_272B52E68(__src[1] + 48);
      if (*(*(__src[8] + 24) + v28))
      {
        sub_272B55FD0(__src[0] + *(*(__src[8] + 24) + v28));
      }

      if (v4 <= 0x32)
      {
        goto LABEL_74;
      }

      v29 = __src[1] + 50;
      sub_272B52E68(__src[1] + 50);
      if (*(*(__src[8] + 24) + v29))
      {
        sub_272B55FD0(__src[0] + *(*(__src[8] + 24) + v29));
      }

      if (v4 <= 0x34)
      {
LABEL_74:
        sub_272B56000(58, 0xD000000000000011, 0x8000000272B8B770, 0);
        if (!v27)
        {
          sub_272B56000(60, 0xD000000000000014, 0x8000000272B8B790, 0);
          sub_272B56000(62, 0xD000000000000014, 0x8000000272B8B7B0, 0);
          sub_272B56000(64, 0xD000000000000015, 0x8000000272B8B7D0, 0);
          sub_272B56000(66, 0x74617265706D6574, 0xEB00000000657275, 0);
          sub_272B56000(68, 0xD000000000000013, 0x8000000272B8B7F0, 0);
          sub_272B56000(70, 0x6465767265736572, 0xE900000000000030, 0);
          sub_272B56000(72, 0xD000000000000013, 0x8000000272B8B810, 0);
          sub_272B561D4(74, 0x7865646E497675, 0xE700000000000000, 0);
          sub_272B56000(76, 0x696C696269736976, 0xEA00000000007974, 0);
          sub_272B56308(0x4Eu, 0x65726944646E6977, 0xED00006E6F697463, 0);
          sub_272B56000(80, 0x74737547646E6977, 0xE800000000000000, 0);
          sub_272B56000(82, 0x65657053646E6977, 0xE900000000000064, 0);
          if (__OFSUB__(__src[7], 1))
          {
            __break(1u);
            return;
          }

          --__src[7];
        }

        goto LABEL_3;
      }

      v30 = __src[1] + 52;
      sub_272B52E68(__src[1] + 52);
      if (!*(*(__src[8] + 24) + v30) || (Verifier.rangeInBuffer(position:size:)(__src[0] + *(*(__src[8] + 24) + v30), 1), (v27 = v31) == 0))
      {
        if (v4 < 0x37)
        {
          goto LABEL_74;
        }

        v32 = __src[1] + 54;
        sub_272B52E68(__src[1] + 54);
        if (!v27)
        {
          if (*(*(__src[8] + 24) + v32))
          {
            sub_272B55FD0(__src[0] + *(*(__src[8] + 24) + v32));
          }

          if (v4 > 0x38)
          {
            v33 = __src[1] + 56;
            sub_272B52E68(__src[1] + 56);
            if (*(*(__src[8] + 24) + v33))
            {
              sub_272B55FD0(__src[0] + *(*(__src[8] + 24) + v33));
            }
          }

          goto LABEL_74;
        }
      }
    }

LABEL_3:
    memcpy(v34, __src, 0x65uLL);
    sub_272B522C4(v34);
  }
}

void sub_272B55F28(Swift::Int position)
{
  if (*v1 == 1 && (OUTLINED_FUNCTION_3_4(), ((v6 + position) & 3) != 0))
  {
    *&v17 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
    v7 = sub_272B87730();
    sub_272B5C86C();
    v8 = OUTLINED_FUNCTION_177();
    *v9 = position;
    v9[1] = v7;
    OUTLINED_FUNCTION_1_4(v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19);
  }

  else
  {
    Verifier.rangeInBuffer(position:size:)(position, 4);
  }
}

void sub_272B56000(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  OUTLINED_FUNCTION_129();
  if (v14 ^ v15 | v13)
  {
    goto LABEL_8;
  }

  v16 = *(v4 + 8) + v8;
  if (*(v4 + 24) == 1)
  {
    OUTLINED_FUNCTION_273();
    if ((v17 + v16))
    {
      v28.n128_u64[0] = MEMORY[0x277D84C58];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808A3160, &unk_272B87CC0);
      sub_272B87730();
      OUTLINED_FUNCTION_204();
      OUTLINED_FUNCTION_177();
      *v22 = v16;
      v22[1] = v4;
      v22[2] = v6;
      goto LABEL_11;
    }
  }

  v25 = v10;
  v26 = v11;
  v27 = v12;
  OUTLINED_FUNCTION_173(v16);
  if (v5)
  {
    return;
  }

  if (!*(*(*(v4 + 64) + 24) + v16))
  {
LABEL_8:
    if (a4)
    {
      sub_272B5C86C();
      OUTLINED_FUNCTION_177();
      *v23 = v8;
      OUTLINED_FUNCTION_180(v23, v31);
      *(v24 + 8) = v7;
      *(v24 + 16) = v6;
      OUTLINED_FUNCTION_37(v24, v30, v29, v28);
      swift_willThrow();
    }
  }

  else
  {
    v18 = *v4;
    OUTLINED_FUNCTION_31();
    if (v19 == 1)
    {
      v28.n128_u64[0] = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(v26, v27);
      sub_272B87730();
      OUTLINED_FUNCTION_185();
      v20 = OUTLINED_FUNCTION_177();
      OUTLINED_FUNCTION_54(v20, v21);
LABEL_11:
      OUTLINED_FUNCTION_21(v22, v30, v29, v28);
      swift_willThrow();
      return;
    }

    OUTLINED_FUNCTION_90();
  }
}

void sub_272B561D4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  OUTLINED_FUNCTION_129();
  if (!(v12 ^ v13 | v11))
  {
    OUTLINED_FUNCTION_217();
    if (v11)
    {
      OUTLINED_FUNCTION_273();
      if ((v14 + v8))
      {
        *&v38 = MEMORY[0x277D84C58];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808A3160, &unk_272B87CC0);
        OUTLINED_FUNCTION_195();
        OUTLINED_FUNCTION_204();
        v27 = OUTLINED_FUNCTION_177();
        OUTLINED_FUNCTION_126(v27, v28);
        OUTLINED_FUNCTION_11(v29, v30, v31, v32, v33, v34, v35, v36, v38, v37, v39);
        swift_willThrow();
        return;
      }
    }

    OUTLINED_FUNCTION_173(v8);
    if (v4)
    {
      return;
    }

    if (*(*(v9[8] + 24) + v8))
    {
      OUTLINED_FUNCTION_174(*v9 + *(*(v9[8] + 24) + v8));
      return;
    }
  }

  if (a4)
  {
    sub_272B5C86C();
    OUTLINED_FUNCTION_177();
    *v15 = v7;
    OUTLINED_FUNCTION_180(v15, v40);
    *(v16 + 8) = v6;
    *(v16 + 16) = v5;
    OUTLINED_FUNCTION_17(v17, v16, v18, v19, v20, v21, v22, v23, v38, v24, v39);
    OUTLINED_FUNCTION_157(v25, v26);
  }
}

void sub_272B56308(unsigned __int16 a1, uint64_t a2, uint64_t a3, char a4)
{
  if (*(v4 + 16) <= a1)
  {
    goto LABEL_8;
  }

  v9 = *(v4 + 8) + a1;
  v10 = *(v4 + 24);
  if (v10 == 1 && ((*(*(v4 + 64) + 24) + v9) & 1) != 0)
  {
    *&v23 = MEMORY[0x277D84C58];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808A3160, &unk_272B87CC0);
    v20 = sub_272B87730();
    v22 = v21;
    sub_272B5C86C();
    swift_allocError();
    *v18 = v9;
    *(v18 + 8) = v20;
    *(v18 + 16) = v22;
    goto LABEL_11;
  }

  Verifier.rangeInBuffer(position:size:)(v9, 2);
  if (v11)
  {
    return;
  }

  v12 = *(*(v4 + 64) + 24);
  if (*(v12 + v9))
  {
    v13 = *(v12 + v9);
    v14 = *v4 + v13;
    if ((v10 & (v12 + v14)) == 1)
    {
      *&v23 = MEMORY[0x277D84C58];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808A3160, &unk_272B87CC0);
      v15 = sub_272B87730();
      v17 = v16;
      sub_272B5C86C();
      swift_allocError();
      *v18 = v14;
      *(v18 + 8) = v15;
      *(v18 + 16) = v17;
LABEL_11:
      *(v18 + 24) = v23;
      *(v18 + 40) = v24;
      *(v18 + 56) = v25;
      *(v18 + 64) = 0;
      swift_willThrow();
      return;
    }

    Verifier.rangeInBuffer(position:size:)(*v4 + v13, 2);
  }

  else
  {
LABEL_8:
    if (a4)
    {
      sub_272B5C86C();
      swift_allocError();
      *v19 = a1;
      *(v19 + 6) = v27;
      *(v19 + 2) = v26;
      *(v19 + 8) = a2;
      *(v19 + 16) = a3;
      *(v19 + 24) = v23;
      *(v19 + 40) = v24;
      *(v19 + 56) = v25;
      *(v19 + 64) = 3;
      swift_willThrow();
    }
  }
}

void sub_272B5654C(int a1, unint64_t position)
{
  Verifier.visitTable(at:)(position, __src);
  if (v2)
  {
    return;
  }

  sub_272B544C8(4, 0x617461646174656DLL, 0xE800000000000000, 1, sub_272B51C30);
  if (__src[2] <= 6)
  {
    goto LABEL_12;
  }

  v3 = __src[1] + 6;
  v4 = LOBYTE(__src[3]);
  if (LOBYTE(__src[3]) == 1 && ((*(__src[8] + 24) + v3) & 1) != 0)
  {
    *__dst = MEMORY[0x277D84C58];
    v10 = &qword_2808A3160;
    v11 = &unk_272B87CC0;
    goto LABEL_14;
  }

  Verifier.rangeInBuffer(position:size:)(__src[1] + 6, 2);
  if (v5)
  {
    goto LABEL_17;
  }

  v6 = __src[8];
  v7 = *(__src[8] + 24);
  v8 = *(v7 + v3);
  if (!*(v7 + v3))
  {
LABEL_12:
    sub_272B5C86C();
    swift_allocError();
    *v12 = 6;
    *(v12 + 6) = v43;
    *(v12 + 2) = v42;
    *(v12 + 8) = 1937334628;
    *(v12 + 16) = 0xE400000000000000;
    v13 = *&__dst[32];
    v14 = *&__dst[16];
    *(v12 + 24) = *__dst;
    *(v12 + 40) = v14;
    *(v12 + 56) = v13;
    *(v12 + 64) = 3;
    goto LABEL_16;
  }

  v3 = __src[0] + v8;
  if (((v7 + LOBYTE(__src[0]) + v8) & 3) != 0)
  {
    v9 = v4;
  }

  else
  {
    v9 = 0;
  }

  if (v9 == 1)
  {
    *__dst = MEMORY[0x277D84CC0];
    v10 = &qword_2808A3170;
    v11 = &unk_272B89910;
LABEL_14:
    __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
    v15 = sub_272B87730();
    v17 = v16;
    sub_272B5C86C();
    swift_allocError();
    *v18 = v3;
    *(v18 + 8) = v15;
    *(v18 + 16) = v17;
    goto LABEL_15;
  }

  Verifier.rangeInBuffer(position:size:)(__src[0] + v8, 4);
  if (v21)
  {
    goto LABEL_17;
  }

  v22 = v3 + *(*(v6 + 24) + v3);
  if (v22 < 0)
  {
    v22 = -v22;
  }

  if (v22 >= 0x7FFFFFFFFFFFFFFFLL)
  {
    v23 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v23 = v22;
  }

  v24 = sub_272B54DD0(&__src[3], v23);
  v26 = v24 + v25;
  if (v24 < v24 + v25)
  {
    do
    {
      v27 = v24 + 4;
      if (__OFADD__(v24, 4))
      {
        v28 = 0x7FFFFFFFFFFFFFFFLL;
        if ((__src[3] & 1) == 0)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v28 = v24 + 4;
        if (!LOBYTE(__src[3]))
        {
          goto LABEL_32;
        }
      }

      if (((*(__src[8] + 24) + v24) & 3) != 0)
      {
        *__dst = MEMORY[0x277D84CC0];
        v38 = v24;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808A3170, &unk_272B89910);
        v39 = sub_272B87730();
        v41 = v40;
        sub_272B5C86C();
        swift_allocError();
        *v18 = v38;
        *(v18 + 8) = v39;
        *(v18 + 16) = v41;
LABEL_15:
        v19 = *&__dst[32];
        v20 = *&__dst[16];
        *(v18 + 24) = *__dst;
        *(v18 + 40) = v20;
        *(v18 + 56) = v19;
        *(v18 + 64) = 0;
LABEL_16:
        swift_willThrow();
LABEL_17:
        memcpy(__dst, __src, sizeof(__dst));
        sub_272B522C4(__dst);
        return;
      }

LABEL_32:
      if ((v27 & 0x8000000000000000) != 0)
      {
        v27 = -v27;
      }

      v29 = *(__src[8] + 32);
      if ((v29 & 0x8000000000000000) != 0 || v29 < v27)
      {
        v32 = __src[4];
        v33 = v27;
        sub_272B5C86C();
        swift_allocError();
        *v34 = v33;
        *(v34 + 8) = v32;
        v36 = *&__dst[16];
        v35 = *&__dst[32];
        *(v34 + 16) = *__dst;
        *(v34 + 32) = v36;
        *(v34 + 48) = v35;
        v37 = 1;
LABEL_47:
        *(v34 + 64) = v37;
        goto LABEL_16;
      }

      LODWORD(__src[5]) += 4;
      if (LODWORD(__src[11]) < LODWORD(__src[5]))
      {
        sub_272B5C86C();
        swift_allocError();
        *v34 = 6;
        *(v34 + 8) = 0u;
        *(v34 + 24) = 0u;
        *(v34 + 40) = 0u;
        *(v34 + 56) = 0;
        v37 = 7;
        goto LABEL_47;
      }

      v30 = v24 + *(*(__src[8] + 24) + v24);
      if (v30 < 0)
      {
        v30 = -v30;
      }

      if (v30 >= 0x7FFFFFFFFFFFFFFFLL)
      {
        v31 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v31 = v30;
      }

      sub_272B56B1C(&__src[3], v31);
      v24 = v28;
    }

    while (v28 < v26);
  }

  if (!__OFSUB__(__src[7], 1))
  {
    --__src[7];
    goto LABEL_17;
  }

  __break(1u);
}

void WK2_DayWeatherConditions.restOfDayForecast.getter()
{
  OUTLINED_FUNCTION_14();
  if (v1)
  {
    __break(1u);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_132(v0);
  if (v5 < 0x4B)
  {
LABEL_8:
    v8 = OUTLINED_FUNCTION_107();
    goto LABEL_9;
  }

  v1 = __OFADD__(v4, 74);
  v6 = v4 + 74;
  if (v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v7 = *(v2 + v6);
  if (!v7)
  {
    goto LABEL_8;
  }

  if (__OFADD__(v7, v3))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_108(v2);
  if (!v1)
  {
    v8 = OUTLINED_FUNCTION_183();
    v9 = v10;
LABEL_9:
    OUTLINED_FUNCTION_51(v8, v9);
    return;
  }

LABEL_13:
  __break(1u);
}

uint64_t WK2_DayWeatherConditions.daytimeForecast.getter()
{
  result = OUTLINED_FUNCTION_280();
  if (v6)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(v3 + v5) < 0x47u)
  {
    v8 = 0;
LABEL_6:
    v6 = __OFADD__(v8, v4);
    v9 = v8 + v4;
    if (!v6)
    {
      if (!__OFADD__(v9, *(v3 + v9)))
      {
        return OUTLINED_FUNCTION_56(result, v2, *(v0 + 8));
      }

      goto LABEL_11;
    }

LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v6 = __OFADD__(v5, 70);
  v7 = v5 + 70;
  if (!v6)
  {
    v8 = *(v3 + v7);
    goto LABEL_6;
  }

LABEL_12:
  __break(1u);
  return result;
}

void _s11WeatherData08WK2_HourA10ConditionsV14snowfallAmountSfvg_0()
{
  OUTLINED_FUNCTION_103();
  if (v3)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(v0 + v2) < 0x25u)
  {
    return;
  }

  v3 = __OFADD__(v2, 36);
  v4 = v2 + 36;
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

void OUTLINED_FUNCTION_196()
{

  Verifier.rangeInBuffer(position:size:)(v0, 4);
}

void sub_272B56B1C(int a1, unint64_t position)
{
  Verifier.visitTable(at:)(position, __src);
  v3 = v2;
  if (!v2)
  {
    v4 = __src[2];
    if (__src[2] >= 5)
    {
      v5 = __src[1] + 4;
      sub_272B52E68(__src[1] + 4);
      if (*(*(__src[8] + 24) + v5))
      {
        sub_272B55EF8(__src[0] + *(*(__src[8] + 24) + v5));
      }

      if (v4 > 6)
      {
        v6 = __src[1] + 6;
        sub_272B52E68(__src[1] + 6);
        if (*(*(__src[8] + 24) + v6))
        {
          sub_272B55EF8(__src[0] + *(*(__src[8] + 24) + v6));
        }

        if (v4 > 8)
        {
          v7 = __src[1] + 8;
          sub_272B52E68(__src[1] + 8);
          if (*(*(__src[8] + 24) + v7))
          {
            Verifier.rangeInBuffer(position:size:)(__src[0] + *(*(__src[8] + 24) + v7), 1);
            v3 = v8;
            if (v8)
            {
              goto LABEL_38;
            }
          }

          if (v4 > 0xA)
          {
            v9 = __src[1] + 10;
            sub_272B52E68(__src[1] + 10);
            if (v3)
            {
              goto LABEL_38;
            }

            if (*(*(__src[8] + 24) + v9))
            {
              Verifier.rangeInBuffer(position:size:)(__src[0] + *(*(__src[8] + 24) + v9), 1);
              v3 = v10;
              if (v10)
              {
                goto LABEL_38;
              }
            }

            if (v4 > 0xC)
            {
              v11 = __src[1] + 12;
              sub_272B52E68(__src[1] + 12);
              if (v3)
              {
                goto LABEL_38;
              }

              if (*(*(__src[8] + 24) + v11))
              {
                Verifier.rangeInBuffer(position:size:)(__src[0] + *(*(__src[8] + 24) + v11), 1);
                v3 = v12;
                if (v12)
                {
                  goto LABEL_38;
                }
              }

              if (v4 > 0xE)
              {
                v13 = __src[1] + 14;
                sub_272B52E68(__src[1] + 14);
                if (v3)
                {
                  goto LABEL_38;
                }

                if (*(*(__src[8] + 24) + v13))
                {
                  Verifier.rangeInBuffer(position:size:)(__src[0] + *(*(__src[8] + 24) + v13), 1);
                  v3 = v14;
                  if (v14)
                  {
                    goto LABEL_38;
                  }
                }

                if (v4 > 0x10)
                {
                  v15 = __src[1] + 16;
                  sub_272B52E68(__src[1] + 16);
                  if (v3)
                  {
                    goto LABEL_38;
                  }

                  if (*(*(__src[8] + 24) + v15))
                  {
                    Verifier.rangeInBuffer(position:size:)(__src[0] + *(*(__src[8] + 24) + v15), 1);
                    v3 = v16;
                    if (v16)
                    {
                      goto LABEL_38;
                    }
                  }

                  if (v4 > 0x12)
                  {
                    v17 = __src[1] + 18;
                    sub_272B52E68(__src[1] + 18);
                    if (v3)
                    {
                      goto LABEL_38;
                    }

                    if (*(*(__src[8] + 24) + v17))
                    {
                      sub_272B55EF8(__src[0] + *(*(__src[8] + 24) + v17));
                    }

                    if (v4 > 0x14)
                    {
                      v18 = __src[1] + 20;
                      sub_272B52E68(__src[1] + 20);
                      if (*(*(__src[8] + 24) + v18))
                      {
                        sub_272B55EF8(__src[0] + *(*(__src[8] + 24) + v18));
                      }

                      if (v4 > 0x16)
                      {
                        v19 = __src[1] + 22;
                        sub_272B52E68(__src[1] + 22);
                        if (*(*(__src[8] + 24) + v19))
                        {
                          sub_272B55FD0(__src[0] + *(*(__src[8] + 24) + v19));
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

    sub_272B53EA4(24, 0xD000000000000019, 0x8000000272B8B850, 1, sub_272B615EC);
    if (!v3)
    {
      if (v4 >= 27)
      {
        v20 = __src[1] + 26;
        sub_272B52E68(__src[1] + 26);
        if (*(*(__src[8] + 24) + v20))
        {
          Verifier.rangeInBuffer(position:size:)(__src[0] + *(*(__src[8] + 24) + v20), 1);
          v3 = v21;
          if (v21)
          {
            goto LABEL_38;
          }
        }

        if (v4 > 0x1C)
        {
          v22 = __src[1] + 28;
          sub_272B52E68(__src[1] + 28);
          if (v3)
          {
            goto LABEL_38;
          }

          if (*(*(__src[8] + 24) + v22))
          {
            Verifier.rangeInBuffer(position:size:)(__src[0] + *(*(__src[8] + 24) + v22), 1);
            v3 = v23;
            if (v23)
            {
              goto LABEL_38;
            }
          }

          if (v4 > 0x1E)
          {
            v24 = __src[1] + 30;
            sub_272B52E68(__src[1] + 30);
            if (v3)
            {
              goto LABEL_38;
            }

            if (*(*(__src[8] + 24) + v24))
            {
              sub_272B55FD0(__src[0] + *(*(__src[8] + 24) + v24));
            }

            if (v4 > 0x20)
            {
              v25 = __src[1] + 32;
              sub_272B52E68(__src[1] + 32);
              if (*(*(__src[8] + 24) + v25))
              {
                sub_272B55EF8(__src[0] + *(*(__src[8] + 24) + v25));
              }

              if (v4 > 0x22)
              {
                v26 = __src[1] + 34;
                sub_272B52E68(__src[1] + 34);
                if (*(*(__src[8] + 24) + v26))
                {
                  sub_272B55EF8(__src[0] + *(*(__src[8] + 24) + v26));
                }

                if (v4 >= 0x25)
                {
                  v27 = __src[1] + 36;
                  sub_272B52E68(__src[1] + 36);
                  if (*(*(__src[8] + 24) + v27))
                  {
                    sub_272B55EF8(__src[0] + *(*(__src[8] + 24) + v27));
                  }

                  if (v4 > 0x26)
                  {
                    v28 = __src[1] + 38;
                    sub_272B52E68(__src[1] + 38);
                    if (*(*(__src[8] + 24) + v28))
                    {
                      sub_272B55EF8(__src[0] + *(*(__src[8] + 24) + v28));
                    }

                    if (v4 > 0x28)
                    {
                      v29 = __src[1] + 40;
                      sub_272B52E68(__src[1] + 40);
                      if (*(*(__src[8] + 24) + v29))
                      {
                        sub_272B55EF8(__src[0] + *(*(__src[8] + 24) + v29));
                      }

                      if (v4 > 0x2A)
                      {
                        v30 = __src[1] + 42;
                        sub_272B52E68(__src[1] + 42);
                        if (*(*(__src[8] + 24) + v30))
                        {
                          sub_272B55EF8(__src[0] + *(*(__src[8] + 24) + v30));
                        }

                        if (v4 >= 0x2D)
                        {
                          v31 = __src[1] + 44;
                          sub_272B52E68(__src[1] + 44);
                          if (*(*(__src[8] + 24) + v31))
                          {
                            sub_272B55EF8(__src[0] + *(*(__src[8] + 24) + v31));
                          }

                          if (v4 >= 0x2F)
                          {
                            v32 = __src[1] + 46;
                            sub_272B52E68(__src[1] + 46);
                            if (*(*(__src[8] + 24) + v32))
                            {
                              sub_272B55EF8(__src[0] + *(*(__src[8] + 24) + v32));
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

      sub_272B56000(48, 0x614E7465736E7573, 0xEE006C6163697475, 0);
      if (!v3)
      {
        sub_272B56000(50, 0xD000000000000012, 0x8000000272B8B870, 0);
        sub_272B56000(52, 0x74617265706D6574, 0xEE0078614D657275, 0);
        sub_272B56000(54, 0xD000000000000012, 0x8000000272B8B890, 0);
        sub_272B56000(56, 0x74617265706D6574, 0xEE006E694D657275, 0);
        sub_272B56000(58, 0xD000000000000012, 0x8000000272B8B8B0, 0);
        sub_272B56000(60, 0xD000000000000010, 0x8000000272B8B8D0, 0);
        sub_272B56000(62, 0x65657053646E6977, 0xEC00000067764164, 0);
        sub_272B56000(64, 0x65657053646E6977, 0xEC00000078614D64, 0);
        sub_272B56000(66, 0x696C696269736976, 0xED000078614D7974, 0);
        sub_272B56000(68, 0x696C696269736976, 0xED00006E694D7974, 0);
        sub_272B544C8(70, 0x46656D6974796164, 0xEF7473616365726FLL, 1, sub_272B57734);
        sub_272B544C8(72, 0xD000000000000011, 0x8000000272B8B8F0, 1, sub_272B57734);
        sub_272B544C8(74, 0xD000000000000011, 0x8000000272B8B910, 0, sub_272B57734);
        if (__OFSUB__(__src[7], 1))
        {
          __break(1u);
          return;
        }

        --__src[7];
      }
    }

LABEL_38:
    memcpy(v33, __src, 0x65uLL);
    sub_272B522C4(v33);
  }
}

void sub_272B57734(int a1, unint64_t position)
{
  Verifier.visitTable(at:)(position, __src);
  v3 = v2;
  if (!v2)
  {
    v4 = __src[2];
    if (__src[2] >= 5)
    {
      v5 = __src[1] + 4;
      sub_272B52E68(__src[1] + 4);
      if (*(*(__src[8] + 24) + v5))
      {
        sub_272B55EF8(__src[0] + *(*(__src[8] + 24) + v5));
      }

      if (v4 > 6)
      {
        v6 = __src[1] + 6;
        sub_272B52E68(__src[1] + 6);
        if (*(*(__src[8] + 24) + v6))
        {
          sub_272B55EF8(__src[0] + *(*(__src[8] + 24) + v6));
        }

        if (v4 > 8)
        {
          v7 = __src[1] + 8;
          sub_272B52E68(__src[1] + 8);
          if (*(*(__src[8] + 24) + v7))
          {
            Verifier.rangeInBuffer(position:size:)(__src[0] + *(*(__src[8] + 24) + v7), 1);
            v3 = v8;
            if (v8)
            {
              goto LABEL_44;
            }
          }

          if (v4 > 0xA)
          {
            v9 = __src[1] + 10;
            sub_272B52E68(__src[1] + 10);
            if (v3)
            {
              goto LABEL_44;
            }

            if (*(*(__src[8] + 24) + v9))
            {
              Verifier.rangeInBuffer(position:size:)(__src[0] + *(*(__src[8] + 24) + v9), 1);
              v3 = v10;
              if (v10)
              {
                goto LABEL_44;
              }
            }

            if (v4 > 0xC)
            {
              v11 = __src[1] + 12;
              sub_272B52E68(__src[1] + 12);
              if (v3)
              {
                goto LABEL_44;
              }

              if (*(*(__src[8] + 24) + v11))
              {
                Verifier.rangeInBuffer(position:size:)(__src[0] + *(*(__src[8] + 24) + v11), 1);
                v3 = v12;
                if (v12)
                {
                  goto LABEL_44;
                }
              }

              if (v4 > 0xE)
              {
                v13 = __src[1] + 14;
                sub_272B52E68(__src[1] + 14);
                if (v3)
                {
                  goto LABEL_44;
                }

                if (*(*(__src[8] + 24) + v13))
                {
                  Verifier.rangeInBuffer(position:size:)(__src[0] + *(*(__src[8] + 24) + v13), 1);
                  v3 = v14;
                  if (v14)
                  {
                    goto LABEL_44;
                  }
                }

                if (v4 > 0x10)
                {
                  v15 = __src[1] + 16;
                  sub_272B52E68(__src[1] + 16);
                  if (v3)
                  {
                    goto LABEL_44;
                  }

                  if (*(*(__src[8] + 24) + v15))
                  {
                    Verifier.rangeInBuffer(position:size:)(__src[0] + *(*(__src[8] + 24) + v15), 1);
                    v3 = v16;
                    if (v16)
                    {
                      goto LABEL_44;
                    }
                  }

                  if (v4 > 0x12)
                  {
                    v17 = __src[1] + 18;
                    sub_272B52E68(__src[1] + 18);
                    if (v3)
                    {
                      goto LABEL_44;
                    }

                    if (*(*(__src[8] + 24) + v17))
                    {
                      Verifier.rangeInBuffer(position:size:)(__src[0] + *(*(__src[8] + 24) + v17), 1);
                      v3 = v18;
                      if (v18)
                      {
                        goto LABEL_44;
                      }
                    }

                    if (v4 > 0x14)
                    {
                      v19 = __src[1] + 20;
                      sub_272B52E68(__src[1] + 20);
                      if (v3)
                      {
                        goto LABEL_44;
                      }

                      if (*(*(__src[8] + 24) + v19))
                      {
                        Verifier.rangeInBuffer(position:size:)(__src[0] + *(*(__src[8] + 24) + v19), 1);
                        v3 = v20;
                        if (v20)
                        {
                          goto LABEL_44;
                        }
                      }

                      if (v4 > 0x16)
                      {
                        v21 = __src[1] + 22;
                        sub_272B52E68(__src[1] + 22);
                        if (v3)
                        {
                          goto LABEL_44;
                        }

                        if (*(*(__src[8] + 24) + v21))
                        {
                          Verifier.rangeInBuffer(position:size:)(__src[0] + *(*(__src[8] + 24) + v21), 1);
                          v3 = v22;
                          if (v22)
                          {
                            goto LABEL_44;
                          }
                        }

                        if (v4 > 0x18)
                        {
                          v23 = __src[1] + 24;
                          sub_272B52E68(__src[1] + 24);
                          if (v3)
                          {
                            goto LABEL_44;
                          }

                          if (*(*(__src[8] + 24) + v23))
                          {
                            sub_272B55FD0(__src[0] + *(*(__src[8] + 24) + v23));
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

    sub_272B53EA4(26, 0xD000000000000019, 0x8000000272B8B850, 1, sub_272B615EC);
    if (!v3)
    {
      if (v4 >= 29)
      {
        v24 = __src[1] + 28;
        sub_272B52E68(__src[1] + 28);
        if (*(*(__src[8] + 24) + v24))
        {
          Verifier.rangeInBuffer(position:size:)(__src[0] + *(*(__src[8] + 24) + v24), 1);
          v3 = v25;
          if (v25)
          {
            goto LABEL_44;
          }
        }

        if (v4 > 0x1E)
        {
          v26 = __src[1] + 30;
          sub_272B52E68(__src[1] + 30);
          if (v3)
          {
            goto LABEL_44;
          }

          if (*(*(__src[8] + 24) + v26))
          {
            Verifier.rangeInBuffer(position:size:)(__src[0] + *(*(__src[8] + 24) + v26), 1);
            v3 = v27;
            if (v27)
            {
              goto LABEL_44;
            }
          }

          if (v4 > 0x20)
          {
            v28 = __src[1] + 32;
            sub_272B52E68(__src[1] + 32);
            if (v3)
            {
              goto LABEL_44;
            }

            if (*(*(__src[8] + 24) + v28))
            {
              sub_272B55FD0(__src[0] + *(*(__src[8] + 24) + v28));
            }

            if (v4 > 0x22)
            {
              v29 = __src[1] + 34;
              sub_272B52E68(__src[1] + 34);
              if (*(*(__src[8] + 24) + v29))
              {
                sub_272B55FD0(__src[0] + *(*(__src[8] + 24) + v29));
              }

              if (v4 >= 0x25)
              {
                v30 = __src[1] + 36;
                sub_272B52E68(__src[1] + 36);
                if (*(*(__src[8] + 24) + v30))
                {
                  sub_272B55FD0(__src[0] + *(*(__src[8] + 24) + v30));
                }

                if (v4 > 0x26)
                {
                  v31 = __src[1] + 38;
                  sub_272B52E68(__src[1] + 38);
                  if (*(*(__src[8] + 24) + v31))
                  {
                    sub_272B55FD0(__src[0] + *(*(__src[8] + 24) + v31));
                  }

                  if (v4 > 0x28)
                  {
                    v32 = __src[1] + 40;
                    sub_272B52E68(__src[1] + 40);
                    if (*(*(__src[8] + 24) + v32))
                    {
                      sub_272B55FD0(__src[0] + *(*(__src[8] + 24) + v32));
                    }

                    if (v4 > 0x2A)
                    {
                      v33 = __src[1] + 42;
                      sub_272B52E68(__src[1] + 42);
                      if (*(*(__src[8] + 24) + v33))
                      {
                        sub_272B52E68(__src[0] + *(*(__src[8] + 24) + v33));
                      }

                      if (v4 > 0x2C)
                      {
                        v34 = __src[1] + 44;
                        sub_272B52E68(__src[1] + 44);
                        if (*(*(__src[8] + 24) + v34))
                        {
                          sub_272B55FD0(__src[0] + *(*(__src[8] + 24) + v34));
                        }

                        if (v4 >= 0x2F)
                        {
                          v35 = __src[1] + 46;
                          sub_272B52E68(__src[1] + 46);
                          if (*(*(__src[8] + 24) + v35))
                          {
                            sub_272B55FD0(__src[0] + *(*(__src[8] + 24) + v35));
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

      sub_272B56000(48, 0x65657053646E6977, 0xEC00000078614D64, 0);
      if (!v3)
      {
        sub_272B56000(50, 0xD000000000000019, 0x8000000272B8B930, 0);
        sub_272B56000(52, 0xD000000000000022, 0x8000000272B8B950, 0);
        sub_272B561D4(54, 0x4D7865646E497675, 0xEA00000000006E69, 0);
        sub_272B561D4(56, 0x4D7865646E497675, 0xEA00000000007861, 0);
        sub_272B56000(58, 0xD000000000000016, 0x8000000272B8B980, 0);
        sub_272B56000(60, 0xD000000000000016, 0x8000000272B8B9A0, 0);
        sub_272B561D4(62, 0x746867696C796164, 0xE800000000000000, 0);
        if (__OFSUB__(__src[7], 1))
        {
          __break(1u);
          return;
        }

        --__src[7];
      }
    }

LABEL_44:
    memcpy(v36, __src, 0x65uLL);
    sub_272B522C4(v36);
  }
}

void WK2_Metadata.readTime.getter()
{
  OUTLINED_FUNCTION_103();
  if (v3)
  {
    __break(1u);
  }

  else
  {
    if (*(v0 + v2) < 0x13u)
    {
      goto LABEL_7;
    }

    v3 = __OFADD__(v2, 18);
    v4 = v2 + 18;
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

void sub_272B581A8(int a1, unint64_t a2, int a3, int a4, uint64_t a5, int a6, int a7, int a8)
{
  OUTLINED_FUNCTION_92(a1, a2, a3, a4, a5, a6, a7, a8, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41);
  if (!v8)
  {
    OUTLINED_FUNCTION_24(v10, v11, v12, v13, sub_272B51C30);
    OUTLINED_FUNCTION_134();
    OUTLINED_FUNCTION_91();
    sub_272B53EA4(v14, v15, v16, v17, a5);
    OUTLINED_FUNCTION_109();
    if (v27)
    {
      __break(1u);
    }

    else
    {
      v42 = v26;
      OUTLINED_FUNCTION_93(v18, v19, v20, v21, v22, v23, v24, v25, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41);
      sub_272B522C4(&v28);
    }
  }
}

void sub_272B58278(int a1, unint64_t position)
{
  Verifier.visitTable(at:)(position, __src);
  if (!v2)
  {
    sub_272B544C8(4, 0x617461646174656DLL, 0xE800000000000000, 1, sub_272B51C30);
    sub_272B53EA4(6, 0x6F697469646E6F63, 0xE90000000000006ELL, 1, sub_272B586E8);
    sub_272B53EA4(8, 0x7972616D6D7573, 0xE700000000000000, 1, sub_272B646B8);
    v3 = 0;
    v4 = __src[2];
    if (__src[2] <= 10)
    {
      goto LABEL_26;
    }

    v5 = __src[1] + 10;
    v6 = LOBYTE(__src[3]);
    if (LOBYTE(__src[3]) != 1 || ((*(__src[8] + 24) + v5) & 1) == 0)
    {
      Verifier.rangeInBuffer(position:size:)(__src[1] + 10, 2);
      v3 = v7;
      if (v7)
      {
        goto LABEL_3;
      }

      v8 = *(__src[8] + 24);
      v9 = *(v8 + v5);
      if (*(v8 + v5))
      {
        v5 = __src[0] + v9;
        if (((v8 + LOBYTE(__src[0]) + v9) & 3) != 0)
        {
          v10 = v6;
        }

        else
        {
          v10 = 0;
        }

        if (v10 == 1)
        {
          goto LABEL_14;
        }

        Verifier.rangeInBuffer(position:size:)(__src[0] + v9, 4);
        v3 = v13;
        if (v13)
        {
          goto LABEL_3;
        }
      }

      if (v4 < 0xD)
      {
        goto LABEL_26;
      }

      v5 = __src[1] + 12;
      v14 = LOBYTE(__src[3]);
      if (LOBYTE(__src[3]) != 1 || ((*(__src[8] + 24) + v5) & 1) == 0)
      {
        Verifier.rangeInBuffer(position:size:)(__src[1] + 12, 2);
        v3 = v15;
        if (!v15)
        {
          v16 = *(__src[8] + 24);
          v17 = *(v16 + v5);
          if (!*(v16 + v5))
          {
            goto LABEL_26;
          }

          v5 = __src[0] + v17;
          if (((v16 + LOBYTE(__src[0]) + v17) & 3) != 0)
          {
            v18 = v14;
          }

          else
          {
            v18 = 0;
          }

          if (v18 == 1)
          {
LABEL_14:
            *v26 = MEMORY[0x277D84CC0];
            v11 = &qword_2808A3170;
            v12 = &unk_272B89910;
LABEL_30:
            __swift_instantiateConcreteTypeFromMangledNameV2(v11, v12);
            v20 = sub_272B87730();
            v22 = v21;
            sub_272B5C86C();
            swift_allocError();
            *v23 = v5;
            *(v23 + 8) = v20;
            *(v23 + 16) = v22;
            v24 = *&v26[32];
            v25 = *&v26[16];
            *(v23 + 24) = *v26;
            *(v23 + 40) = v25;
            *(v23 + 56) = v24;
            *(v23 + 64) = 0;
            swift_willThrow();
            goto LABEL_3;
          }

          Verifier.rangeInBuffer(position:size:)(__src[0] + v17, 4);
          v3 = v19;
          if (!v19)
          {
LABEL_26:
            sub_272B53EA4(14, 0x736574756E696DLL, 0xE700000000000000, 1, sub_272B54028);
            if (!v3)
            {
              if (__OFSUB__(__src[7], 1))
              {
                __break(1u);
                return;
              }

              --__src[7];
            }
          }
        }

LABEL_3:
        memcpy(v26, __src, sizeof(v26));
        sub_272B522C4(v26);
        return;
      }
    }

    *v26 = MEMORY[0x277D84C58];
    v11 = &qword_2808A3160;
    v12 = &unk_272B87CC0;
    goto LABEL_30;
  }
}

void WK2_DayPartForecast.humidityMin.getter()
{
  OUTLINED_FUNCTION_103();
  if (v3)
  {
    __break(1u);
  }

  else
  {
    if (*(v0 + v2) < 0x17u)
    {
      goto LABEL_7;
    }

    v3 = __OFADD__(v2, 22);
    v4 = v2 + 22;
    if (!v3)
    {
      v5 = *(v0 + v4);
      if (v5)
      {
        if (!__OFADD__(v5, v1))
        {
          OUTLINED_FUNCTION_102(v0);
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

void WK2_Weather.airQuality.getter()
{
  OUTLINED_FUNCTION_14();
  if (v1)
  {
    __break(1u);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_132(v0);
  if (v5 < 5)
  {
LABEL_8:
    v8 = OUTLINED_FUNCTION_107();
    goto LABEL_9;
  }

  v1 = __OFADD__(v4, 4);
  v6 = v4 + 4;
  if (v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v7 = *(v2 + v6);
  if (!v7)
  {
    goto LABEL_8;
  }

  if (__OFADD__(v7, v3))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_108(v2);
  if (!v1)
  {
    v8 = OUTLINED_FUNCTION_183();
    v9 = v10;
LABEL_9:
    OUTLINED_FUNCTION_51(v8, v9);
    return;
  }

LABEL_13:
  __break(1u);
}

void sub_272B586E8(int a1, unint64_t position)
{
  Verifier.visitTable(at:)(position, __src);
  v3 = v2;
  if (!v2)
  {
    v4 = __src[2];
    if (__src[2] <= 4)
    {
      goto LABEL_41;
    }

    v5 = __src[1] + 4;
    v6 = LOBYTE(__src[3]);
    if (LOBYTE(__src[3]) == 1 && ((*(__src[8] + 24) + v5) & 1) != 0)
    {
      goto LABEL_44;
    }

    Verifier.rangeInBuffer(position:size:)(__src[1] + 4, 2);
    v3 = v7;
    if (!v7)
    {
      v8 = *(__src[8] + 24);
      v9 = *(v8 + v5);
      if (!*(v8 + v5))
      {
        goto LABEL_13;
      }

      v5 = __src[0] + v9;
      if (((v8 + LOBYTE(__src[0]) + v9) & 3) != 0)
      {
        v10 = v6;
      }

      else
      {
        v10 = 0;
      }

      if (v10 == 1)
      {
        goto LABEL_11;
      }

      Verifier.rangeInBuffer(position:size:)(__src[0] + v9, 4);
      v3 = v13;
      if (!v13)
      {
LABEL_13:
        if (v4 < 7)
        {
          goto LABEL_41;
        }

        v5 = __src[1] + 6;
        v14 = LOBYTE(__src[3]);
        if (LOBYTE(__src[3]) == 1 && ((*(__src[8] + 24) + v5) & 1) != 0)
        {
          goto LABEL_44;
        }

        Verifier.rangeInBuffer(position:size:)(__src[1] + 6, 2);
        v3 = v15;
        if (!v15)
        {
          v16 = *(__src[8] + 24);
          v17 = *(v16 + v5);
          if (!*(v16 + v5))
          {
            goto LABEL_23;
          }

          v5 = __src[0] + v17;
          if (((v16 + LOBYTE(__src[0]) + v17) & 3) != 0)
          {
            v18 = v14;
          }

          else
          {
            v18 = 0;
          }

          if (v18 == 1)
          {
LABEL_11:
            *v32 = MEMORY[0x277D84CC0];
            v11 = &qword_2808A3170;
            v12 = &unk_272B89910;
LABEL_45:
            __swift_instantiateConcreteTypeFromMangledNameV2(v11, v12);
            v26 = sub_272B87730();
            v28 = v27;
            sub_272B5C86C();
            swift_allocError();
            *v29 = v5;
            *(v29 + 8) = v26;
            *(v29 + 16) = v28;
            v30 = *&v32[32];
            v31 = *&v32[16];
            *(v29 + 24) = *v32;
            *(v29 + 40) = v31;
            *(v29 + 56) = v30;
            *(v29 + 64) = 0;
            swift_willThrow();
            goto LABEL_46;
          }

          Verifier.rangeInBuffer(position:size:)(__src[0] + v17, 4);
          v3 = v19;
          if (!v19)
          {
LABEL_23:
            if (v4 < 9)
            {
              goto LABEL_41;
            }

            v5 = __src[1] + 8;
            if (LOBYTE(__src[3]) != 1 || ((*(__src[8] + 24) + v5) & 1) == 0)
            {
              Verifier.rangeInBuffer(position:size:)(__src[1] + 8, 2);
              v3 = v20;
              if (v20)
              {
                goto LABEL_46;
              }

              if (*(*(__src[8] + 24) + v5))
              {
                Verifier.rangeInBuffer(position:size:)(__src[0] + *(*(__src[8] + 24) + v5), 1);
                v3 = v21;
                if (v21)
                {
                  goto LABEL_46;
                }
              }

              if (v4 < 0xB)
              {
                goto LABEL_41;
              }

              v5 = __src[1] + 10;
              if (LOBYTE(__src[3]) != 1 || ((*(__src[8] + 24) + v5) & 1) == 0)
              {
                Verifier.rangeInBuffer(position:size:)(__src[1] + 10, 2);
                v3 = v22;
                if (v22)
                {
                  goto LABEL_46;
                }

                if (*(*(__src[8] + 24) + v5))
                {
                  Verifier.rangeInBuffer(position:size:)(__src[0] + *(*(__src[8] + 24) + v5), 1);
                  v3 = v23;
                  if (v23)
                  {
                    goto LABEL_46;
                  }
                }

                if (v4 < 0xD)
                {
                  goto LABEL_41;
                }

                v5 = __src[1] + 12;
                if (LOBYTE(__src[3]) != 1 || ((*(__src[8] + 24) + v5) & 1) == 0)
                {
                  Verifier.rangeInBuffer(position:size:)(__src[1] + 12, 2);
                  v3 = v24;
                  if (v24)
                  {
                    goto LABEL_46;
                  }

                  if (*(*(__src[8] + 24) + v5))
                  {
                    Verifier.rangeInBuffer(position:size:)(__src[0] + *(*(__src[8] + 24) + v5), 1);
                    v3 = v25;
                    if (v25)
                    {
                      goto LABEL_46;
                    }
                  }

LABEL_41:
                  sub_272B53EA4(14, 0x6574656D61726170, 0xEA00000000007372, 1, sub_272B68614);
                  if (!v3)
                  {
                    if (__OFSUB__(__src[7], 1))
                    {
                      __break(1u);
                      return;
                    }

                    --__src[7];
                  }

                  goto LABEL_46;
                }
              }
            }

LABEL_44:
            *v32 = MEMORY[0x277D84C58];
            v11 = &qword_2808A3160;
            v12 = &unk_272B87CC0;
            goto LABEL_45;
          }
        }
      }
    }

LABEL_46:
    memcpy(v32, __src, sizeof(v32));
    sub_272B522C4(v32);
  }
}

void WK2_DayPartForecast.precipitationChance.getter()
{
  OUTLINED_FUNCTION_103();
  if (v3)
  {
    __break(1u);
  }

  else
  {
    if (*(v0 + v2) < 0x1Du)
    {
      goto LABEL_7;
    }

    v3 = __OFADD__(v2, 28);
    v4 = v2 + 28;
    if (!v3)
    {
      v5 = *(v0 + v4);
      if (v5)
      {
        if (!__OFADD__(v5, v1))
        {
          OUTLINED_FUNCTION_102(v0);
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

void WK2_Metadata.temporarilyUnavailable.getter()
{
  OUTLINED_FUNCTION_103();
  if (v3)
  {
    __break(1u);
  }

  else
  {
    if (*(v0 + v2) < 0x17u)
    {
      goto LABEL_7;
    }

    v3 = __OFADD__(v2, 22);
    v4 = v2 + 22;
    if (!v3)
    {
      v5 = *(v0 + v4);
      if (v5)
      {
        v3 = __OFADD__(v5, v1);
        v6 = v5 + v1;
        if (!v3)
        {
          v7 = *(v0 + v6);
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

void sub_272B58BA0(int a1, unint64_t position)
{
  Verifier.visitTable(at:)(position, __src);
  if (!v2)
  {
    sub_272B544C8(4, 0x617461646174656DLL, 0xE800000000000000, 1, sub_272B51C30);
    v3 = 0;
    v4 = __src[2];
    if (__src[2] <= 6)
    {
      goto LABEL_26;
    }

    v5 = __src[1] + 6;
    v6 = LOBYTE(__src[3]);
    if (LOBYTE(__src[3]) != 1 || ((*(__src[8] + 24) + v5) & 1) == 0)
    {
      Verifier.rangeInBuffer(position:size:)(__src[1] + 6, 2);
      v3 = v7;
      if (v7)
      {
        goto LABEL_3;
      }

      v8 = *(__src[8] + 24);
      v9 = *(v8 + v5);
      if (*(v8 + v5))
      {
        v5 = __src[0] + v9;
        if (((v8 + LOBYTE(__src[0]) + v9) & 3) != 0)
        {
          v10 = v6;
        }

        else
        {
          v10 = 0;
        }

        if (v10 == 1)
        {
          goto LABEL_14;
        }

        Verifier.rangeInBuffer(position:size:)(__src[0] + v9, 4);
        v3 = v13;
        if (v13)
        {
          goto LABEL_3;
        }
      }

      if (v4 < 9)
      {
        goto LABEL_26;
      }

      v5 = __src[1] + 8;
      v14 = LOBYTE(__src[3]);
      if (LOBYTE(__src[3]) != 1 || ((*(__src[8] + 24) + v5) & 1) == 0)
      {
        Verifier.rangeInBuffer(position:size:)(__src[1] + 8, 2);
        v3 = v15;
        if (!v15)
        {
          v16 = *(__src[8] + 24);
          v17 = *(v16 + v5);
          if (!*(v16 + v5))
          {
            goto LABEL_26;
          }

          v5 = __src[0] + v17;
          if (((v16 + LOBYTE(__src[0]) + v17) & 3) != 0)
          {
            v18 = v14;
          }

          else
          {
            v18 = 0;
          }

          if (v18 == 1)
          {
LABEL_14:
            *v26 = MEMORY[0x277D84CC0];
            v11 = &qword_2808A3170;
            v12 = &unk_272B89910;
LABEL_30:
            __swift_instantiateConcreteTypeFromMangledNameV2(v11, v12);
            v20 = sub_272B87730();
            v22 = v21;
            sub_272B5C86C();
            swift_allocError();
            *v23 = v5;
            *(v23 + 8) = v20;
            *(v23 + 16) = v22;
            v24 = *&v26[32];
            v25 = *&v26[16];
            *(v23 + 24) = *v26;
            *(v23 + 40) = v25;
            *(v23 + 56) = v24;
            *(v23 + 64) = 0;
            swift_willThrow();
            goto LABEL_3;
          }

          Verifier.rangeInBuffer(position:size:)(__src[0] + v17, 4);
          v3 = v19;
          if (!v19)
          {
LABEL_26:
            sub_272B53EA4(10, 0x7365676E616863, 0xE700000000000000, 1, sub_272B65800);
            if (!v3)
            {
              if (__OFSUB__(__src[7], 1))
              {
                __break(1u);
                return;
              }

              --__src[7];
            }
          }
        }

LABEL_3:
        memcpy(v26, __src, sizeof(v26));
        sub_272B522C4(v26);
        return;
      }
    }

    *v26 = MEMORY[0x277D84C58];
    v11 = &qword_2808A3160;
    v12 = &unk_272B87CC0;
    goto LABEL_30;
  }
}

void _s11WeatherData011WK2_CurrentA0V26precipitationAmountNext24hSfvg_0()
{
  OUTLINED_FUNCTION_103();
  if (v3)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(v0 + v2) < 0x23u)
  {
    return;
  }

  v3 = __OFADD__(v2, 34);
  v4 = v2 + 34;
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

void _s11WeatherData011WK2_CurrentA0V20cloudCoverHighAltPcts4Int8Vvg_0()
{
  OUTLINED_FUNCTION_103();
  if (v3)
  {
    __break(1u);
  }

  else
  {
    if (*(v0 + v2) < 0xFu)
    {
      goto LABEL_7;
    }

    v3 = __OFADD__(v2, 14);
    v4 = v2 + 14;
    if (!v3)
    {
      v5 = *(v0 + v4);
      if (v5)
      {
        if (!__OFADD__(v5, v1))
        {
          OUTLINED_FUNCTION_102(v0);
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

void sub_272B58F24(int a1, unint64_t position)
{
  Verifier.visitTable(at:)(position, __src);
  if (!v2)
  {
    sub_272B544C8(4, 0x617461646174656DLL, 0xE800000000000000, 1, sub_272B51C30);
    sub_272B544C8(6, 0x4E65736963657270, 0xEB00000000656D61, 0, sub_272B54784);
    sub_272B544C8(8, 0x437972746E756F63, 0xEB0000000065646FLL, 0, sub_272B54784);
    sub_272B544C8(10, 0x656E6F5A656D6974, 0xE800000000000000, 1, sub_272B54784);
    sub_272B544C8(12, 0x4E7972616D697270, 0xEB00000000656D61, 1, sub_272B54784);
    sub_272B544C8(14, 0x7261646E6F636573, 0xED0000656D614E79, 0, sub_272B54784);
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

void WK2_DayPartForecast.uvIndexMin.getter()
{
  OUTLINED_FUNCTION_103();
  if (v3)
  {
    __break(1u);
  }

  else
  {
    if (*(v0 + v2) < 0x37u)
    {
      goto LABEL_7;
    }

    v3 = __OFADD__(v2, 54);
    v4 = v2 + 54;
    if (!v3)
    {
      v5 = *(v0 + v4);
      if (v5)
      {
        if (!__OFADD__(v5, v1))
        {
          OUTLINED_FUNCTION_102(v0);
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

void WK2_HourWeatherConditions.daylight.getter()
{
  OUTLINED_FUNCTION_103();
  if (v3)
  {
    __break(1u);
  }

  else
  {
    if (*(v0 + v2) < 0x11u)
    {
      goto LABEL_7;
    }

    v3 = __OFADD__(v2, 16);
    v4 = v2 + 16;
    if (!v3)
    {
      v5 = *(v0 + v4);
      if (v5)
      {
        if (!__OFADD__(v5, v1))
        {
          OUTLINED_FUNCTION_102(v0);
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

uint64_t WK2_CurrentWeather.init(_:o:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  return result;
}

void _s11WeatherData011WK2_CurrentA0V25precipitationAmountNext1hSfvg_0()
{
  OUTLINED_FUNCTION_103();
  if (v3)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(v0 + v2) < 0x1Fu)
  {
    return;
  }

  v3 = __OFADD__(v2, 30);
  v4 = v2 + 30;
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

void WK2_HourWeatherConditions.conditionCode.getter()
{
  OUTLINED_FUNCTION_13_0();
  if (v4)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(v1 + v3) < 0xFu)
  {
LABEL_7:
    v8 = 0;
    goto LABEL_8;
  }

  v4 = __OFADD__(v3, 14);
  v5 = v3 + 14;
  if (v4)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = *(v1 + v5);
  if (!v6)
  {
    goto LABEL_7;
  }

  if (!__OFADD__(v6, v2))
  {
    v7 = OUTLINED_FUNCTION_124(v1);
    WK2_ConditionCode.init(rawValue:)(v7);
    OUTLINED_FUNCTION_222();
LABEL_8:
    *v0 = v8;
    return;
  }

LABEL_11:
  __break(1u);
}

void _s11WeatherData011WK2_CurrentA0V16snowfallAmount6hSfvg_0()
{
  OUTLINED_FUNCTION_103();
  if (v3)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(v0 + v2) < 0x39u)
  {
    return;
  }

  v3 = __OFADD__(v2, 56);
  v4 = v2 + 56;
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

void WK2_DayWeatherConditions.sunsetCivil.getter()
{
  OUTLINED_FUNCTION_103();
  if (v3)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(v0 + v2) < 0x2Fu)
  {
    goto LABEL_7;
  }

  v3 = __OFADD__(v2, 46);
  v4 = v2 + 46;
  if (v3)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  v5 = *(v0 + v4);
  if (v5)
  {
    v3 = __OFADD__(v5, v1);
    v6 = v5 + v1;
    if (!v3)
    {
      OUTLINED_FUNCTION_16(*(v0 + v6));
      return;
    }

    goto LABEL_11;
  }

LABEL_7:
  OUTLINED_FUNCTION_16(0);
}

void WK2_DayWeatherConditions.moonPhase.getter()
{
  OUTLINED_FUNCTION_13_0();
  if (v4)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (*(v1 + v3) < 0x11u)
  {
LABEL_9:
    v8 = 0;
LABEL_10:
    *v0 = v8;
    return;
  }

  v4 = __OFADD__(v3, 16);
  v5 = v3 + 16;
  if (v4)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v6 = *(v1 + v5);
  if (!v6)
  {
    goto LABEL_9;
  }

  if (!__OFADD__(v6, v2))
  {
    v7 = OUTLINED_FUNCTION_124(v1);
    WK2_MoonPhase.init(rawValue:)(v7);
    v8 = v9;
    if (v9 == 8)
    {
      v8 = 0;
    }

    goto LABEL_10;
  }

LABEL_13:
  __break(1u);
}

void _s11WeatherData11WK2_ArticleV25supportedStorefrontsCounts5Int32Vvg_0()
{
  OUTLINED_FUNCTION_103();
  if (v3)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(v0 + v2) < 7u)
  {
LABEL_8:
    OUTLINED_FUNCTION_32_0();
    return;
  }

  v3 = __OFADD__(v2, 6);
  v4 = v2 + 6;
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

void WK2_HourWeatherConditions.windDirection.getter()
{
  OUTLINED_FUNCTION_103();
  if (v3)
  {
    __break(1u);
  }

  else
  {
    if (*(v0 + v2) < 0x33u)
    {
      goto LABEL_7;
    }

    v3 = __OFADD__(v2, 50);
    v4 = v2 + 50;
    if (!v3)
    {
      v5 = *(v0 + v4);
      if (v5)
      {
        if (!__OFADD__(v5, v1))
        {
          OUTLINED_FUNCTION_205(v0);
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

void WK2_HourWeatherConditions.uvIndex.getter()
{
  OUTLINED_FUNCTION_103();
  if (v3)
  {
    __break(1u);
  }

  else
  {
    if (*(v0 + v2) < 0x2Fu)
    {
      goto LABEL_7;
    }

    v3 = __OFADD__(v2, 46);
    v4 = v2 + 46;
    if (!v3)
    {
      v5 = *(v0 + v4);
      if (v5)
      {
        if (!__OFADD__(v5, v1))
        {
          OUTLINED_FUNCTION_102(v0);
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

uint64_t OUTLINED_FUNCTION_14()
{
  result = *v0;
  v2 = *(*(*v0 + 24) + v0[6]);
  return result;
}

void *OUTLINED_FUNCTION_93(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char __src)
{

  return memcpy(&a9, &__src, 0x65uLL);
}

void WK2_HourWeatherConditions.pressureTrend.getter()
{
  OUTLINED_FUNCTION_194();
  if (v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*(v1 + v3) < 0x21u)
  {
LABEL_7:
    OUTLINED_FUNCTION_89(v0);
    return;
  }

  v4 = __OFADD__(v3, 32);
  v5 = v3 + 32;
  if (v4)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v6 = *(v1 + v5);
  if (!v6)
  {
    goto LABEL_7;
  }

  v4 = __OFADD__(v6, v2);
  v7 = v6 + v2;
  if (!v4)
  {
    v8 = *(v1 + v7) == 1;
    goto LABEL_7;
  }

LABEL_10:
  __break(1u);
}

void OUTLINED_FUNCTION_54(uint64_t a1, void *a2)
{
  *a2 = v3;
  a2[1] = v2;
  a2[2] = v4;
}

uint64_t OUTLINED_FUNCTION_54_0()
{
}

void _s11WeatherData07WK2_DayA10ConditionsV17precipitationTypeAA0c14_PrecipitationG0Ovg_0()
{
  OUTLINED_FUNCTION_13_0();
  if (v4)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(v1 + v3) < 0x1Du)
  {
LABEL_7:
    v8 = 0;
    goto LABEL_8;
  }

  v4 = __OFADD__(v3, 28);
  v5 = v3 + 28;
  if (v4)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = *(v1 + v5);
  if (!v6)
  {
    goto LABEL_7;
  }

  if (!__OFADD__(v6, v2))
  {
    v7 = OUTLINED_FUNCTION_124(v1);
    WK2_PrecipitationType.init(rawValue:)(v7);
    OUTLINED_FUNCTION_164();
LABEL_8:
    *v0 = v8;
    return;
  }

LABEL_11:
  __break(1u);
}

uint64_t sub_272B596F8(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 28))
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

void WK2_Weather.forecastHourly.getter()
{
  OUTLINED_FUNCTION_14();
  if (v1)
  {
    __break(1u);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_132(v0);
  if (v5 < 0xB)
  {
LABEL_8:
    v8 = OUTLINED_FUNCTION_107();
    goto LABEL_9;
  }

  v1 = __OFADD__(v4, 10);
  v6 = v4 + 10;
  if (v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v7 = *(v2 + v6);
  if (!v7)
  {
    goto LABEL_8;
  }

  if (__OFADD__(v7, v3))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_108(v2);
  if (!v1)
  {
    v8 = OUTLINED_FUNCTION_183();
    v9 = v10;
LABEL_9:
    OUTLINED_FUNCTION_51(v8, v9);
    return;
  }

LABEL_13:
  __break(1u);
}

uint64_t sub_272B597C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 28) = 1;
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

    *(result + 28) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy28_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 12) = *(a2 + 12);
  *a1 = result;
  return result;
}

void WK2_DayPartForecast.uvIndexMax.getter()
{
  OUTLINED_FUNCTION_103();
  if (v3)
  {
    __break(1u);
  }

  else
  {
    if (*(v0 + v2) < 0x39u)
    {
      goto LABEL_7;
    }

    v3 = __OFADD__(v2, 56);
    v4 = v2 + 56;
    if (!v3)
    {
      v5 = *(v0 + v4);
      if (v5)
      {
        if (!__OFADD__(v5, v1))
        {
          OUTLINED_FUNCTION_102(v0);
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

uint64_t _s11WeatherData011WK2_CurrentA0V8metadataAA0C9_MetadataVSgvg_0()
{
  result = OUTLINED_FUNCTION_280();
  if (v6)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(v3 + v5) < 5u)
  {
    v8 = 0;
LABEL_6:
    v6 = __OFADD__(v8, v4);
    v9 = v8 + v4;
    if (!v6)
    {
      if (!__OFADD__(v9, *(v3 + v9)))
      {
        return OUTLINED_FUNCTION_56(result, v2, *(v0 + 8));
      }

      goto LABEL_11;
    }

LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v6 = __OFADD__(v5, 4);
  v7 = v5 + 4;
  if (!v6)
  {
    v8 = *(v3 + v7);
    goto LABEL_6;
  }

LABEL_12:
  __break(1u);
  return result;
}

void _s11WeatherData08WK2_HourA10ConditionsV8humiditys4Int8Vvg_0()
{
  OUTLINED_FUNCTION_103();
  if (v3)
  {
    __break(1u);
  }

  else
  {
    if (*(v0 + v2) < 0x13u)
    {
      goto LABEL_7;
    }

    v3 = __OFADD__(v2, 18);
    v4 = v2 + 18;
    if (!v3)
    {
      v5 = *(v0 + v4);
      if (v5)
      {
        if (!__OFADD__(v5, v1))
        {
          OUTLINED_FUNCTION_102(v0);
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

void _s11WeatherData08WK2_HourA10ConditionsV19temperatureDewPointSfvg_0()
{
  OUTLINED_FUNCTION_103();
  if (v3)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(v0 + v2) < 0x2Du)
  {
    return;
  }

  v3 = __OFADD__(v2, 44);
  v4 = v2 + 44;
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

void WK2_Metadata.reportedTime.getter()
{
  OUTLINED_FUNCTION_103();
  if (v3)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*(v0 + v2) < 0x15u)
  {
    return;
  }

  v3 = __OFADD__(v2, 20);
  v4 = v2 + 20;
  if (v3)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    return;
  }

  v5 = *(v0 + v4);
  if (v5)
  {
    v3 = __OFADD__(v5, v1);
    v6 = v5 + v1;
    if (!v3)
    {
      v7 = *(v0 + v6);
      return;
    }

    goto LABEL_10;
  }
}

void WK2_DayPartForecast.windDirection.getter()
{
  OUTLINED_FUNCTION_103();
  if (v3)
  {
    __break(1u);
  }

  else
  {
    if (*(v0 + v2) < 0x2Bu)
    {
      goto LABEL_7;
    }

    v3 = __OFADD__(v2, 42);
    v4 = v2 + 42;
    if (!v3)
    {
      v5 = *(v0 + v4);
      if (v5)
      {
        if (!__OFADD__(v5, v1))
        {
          OUTLINED_FUNCTION_205(v0);
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

void _s11WeatherData08WK2_HourA10ConditionsV19temperatureApparentSfvg_0()
{
  OUTLINED_FUNCTION_103();
  if (v3)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(v0 + v2) < 0x29u)
  {
    return;
  }

  v3 = __OFADD__(v2, 40);
  v4 = v2 + 40;
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

void WK2_Metadata.latitude.getter()
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

void WK2_Metadata.expireTime.getter()
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

void WK2_Metadata.language.getter()
{
  OUTLINED_FUNCTION_65();
  if (v4)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(v2 + v3) < 9u)
  {
    goto LABEL_7;
  }

  v4 = __OFADD__(v3, 8);
  v5 = v3 + 8;
  if (v4)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  v6 = *(v2 + v5);
  if (v6)
  {
    if (!__OFADD__(v6, v1))
    {
      v7 = *(v0 + 8);
      v8 = *(v0 + 16);
      Table.directString(at:)(v6 + v1);
      return;
    }

    goto LABEL_11;
  }

LABEL_7:
  OUTLINED_FUNCTION_169();
}

void WK2_Metadata.longitude.getter()
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

void _s11WeatherData08WK2_HourA10ConditionsV11temperatureSfvg_0()
{
  OUTLINED_FUNCTION_103();
  if (v3)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(v0 + v2) < 0x27u)
  {
    return;
  }

  v3 = __OFADD__(v2, 38);
  v4 = v2 + 38;
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

void WK2_Metadata.providerName.getter()
{
  OUTLINED_FUNCTION_65();
  if (v4)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(v2 + v3) < 0x11u)
  {
    goto LABEL_7;
  }

  v4 = __OFADD__(v3, 16);
  v5 = v3 + 16;
  if (v4)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  v6 = *(v2 + v5);
  if (v6)
  {
    if (!__OFADD__(v6, v1))
    {
      v7 = *(v0 + 8);
      v8 = *(v0 + 16);
      Table.directString(at:)(v6 + v1);
      return;
    }

    goto LABEL_11;
  }

LABEL_7:
  OUTLINED_FUNCTION_169();
}

void WK2_DayPartForecast.precipitationType.getter()
{
  OUTLINED_FUNCTION_13_0();
  if (v4)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(v1 + v3) < 0x1Fu)
  {
LABEL_7:
    v8 = 0;
    goto LABEL_8;
  }

  v4 = __OFADD__(v3, 30);
  v5 = v3 + 30;
  if (v4)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = *(v1 + v5);
  if (!v6)
  {
    goto LABEL_7;
  }

  if (!__OFADD__(v6, v2))
  {
    v7 = OUTLINED_FUNCTION_124(v1);
    WK2_PrecipitationType.init(rawValue:)(v7);
    OUTLINED_FUNCTION_164();
LABEL_8:
    *v0 = v8;
    return;
  }

LABEL_11:
  __break(1u);
}

void WK2_DayPartForecast.precipitationAmountByTypeCount.getter()
{
  OUTLINED_FUNCTION_103();
  if (v3)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(v0 + v2) < 0x1Bu)
  {
LABEL_8:
    OUTLINED_FUNCTION_32_0();
    return;
  }

  v3 = __OFADD__(v2, 26);
  v4 = v2 + 26;
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

void WK2_Metadata.providerLogo.getter()
{
  OUTLINED_FUNCTION_65();
  if (v4)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(v2 + v3) < 0xFu)
  {
    goto LABEL_7;
  }

  v4 = __OFADD__(v3, 14);
  v5 = v3 + 14;
  if (v4)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  v6 = *(v2 + v5);
  if (v6)
  {
    if (!__OFADD__(v6, v1))
    {
      v7 = *(v0 + 8);
      v8 = *(v0 + 16);
      Table.directString(at:)(v6 + v1);
      return;
    }

    goto LABEL_11;
  }

LABEL_7:
  OUTLINED_FUNCTION_169();
}

void WK2_Metadata.attributionUrl.getter()
{
  OUTLINED_FUNCTION_65();
  if (v4)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(v2 + v3) < 5u)
  {
    goto LABEL_7;
  }

  v4 = __OFADD__(v3, 4);
  v5 = v3 + 4;
  if (v4)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  v6 = *(v2 + v5);
  if (v6)
  {
    if (!__OFADD__(v6, v1))
    {
      v7 = *(v0 + 8);
      v8 = *(v0 + 16);
      Table.directString(at:)(v6 + v1);
      return;
    }

    goto LABEL_11;
  }

LABEL_7:
  OUTLINED_FUNCTION_169();
}

void WK2_Metadata.sourceType.getter(_BYTE *a1@<X8>)
{
  v2 = v1[6];
  v3 = *(*v1 + 24);
  v4 = *(v3 + v2);
  v5 = __OFSUB__(v2, v4);
  v6 = v2 - v4;
  if (v5)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*(v3 + v6) < 0x19u)
  {
LABEL_7:
    OUTLINED_FUNCTION_89(a1);
    return;
  }

  v5 = __OFADD__(v6, 24);
  v7 = v6 + 24;
  if (v5)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v8 = *(v3 + v7);
  if (!v8)
  {
    goto LABEL_7;
  }

  v5 = __OFADD__(v8, v2);
  v9 = v8 + v2;
  if (!v5)
  {
    v10 = *(v3 + v9) == 1;
    goto LABEL_7;
  }

LABEL_10:
  __break(1u);
}

void _s11WeatherData08WK2_HourA10ConditionsV10cloudCovers4Int8Vvg_0()
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
          OUTLINED_FUNCTION_102(v0);
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

void WK2_AirQuality.index.getter()
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
          OUTLINED_FUNCTION_205(v0);
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

void WK2_AirQuality.isSignificant.getter()
{
  OUTLINED_FUNCTION_103();
  if (v3)
  {
    __break(1u);
  }

  else
  {
    if (*(v0 + v2) < 0xBu)
    {
      goto LABEL_7;
    }

    v3 = __OFADD__(v2, 10);
    v4 = v2 + 10;
    if (!v3)
    {
      v5 = *(v0 + v4);
      if (v5)
      {
        if (!__OFADD__(v5, v1))
        {
          OUTLINED_FUNCTION_102(v0);
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

void OUTLINED_FUNCTION_208()
{
  v3 = *(v0 + 24);

  ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(2, v1, v3);
}

void WK2_AirQuality.pollutantsCount.getter()
{
  OUTLINED_FUNCTION_103();
  if (v3)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(v0 + v2) < 0xDu)
  {
LABEL_8:
    OUTLINED_FUNCTION_32_0();
    return;
  }

  v3 = __OFADD__(v2, 12);
  v4 = v2 + 12;
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

void WK2_DayWeatherConditions.temperatureMinTime.getter()
{
  OUTLINED_FUNCTION_103();
  if (v3)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(v0 + v2) < 0x3Bu)
  {
    goto LABEL_7;
  }

  v3 = __OFADD__(v2, 58);
  v4 = v2 + 58;
  if (v3)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  v5 = *(v0 + v4);
  if (v5)
  {
    v3 = __OFADD__(v5, v1);
    v6 = v5 + v1;
    if (!v3)
    {
      OUTLINED_FUNCTION_16(*(v0 + v6));
      return;
    }

    goto LABEL_11;
  }

LABEL_7:
  OUTLINED_FUNCTION_16(0);
}

void WK2_DayWeatherConditions.temperatureMaxTime.getter()
{
  OUTLINED_FUNCTION_103();
  if (v3)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(v0 + v2) < 0x37u)
  {
    goto LABEL_7;
  }

  v3 = __OFADD__(v2, 54);
  v4 = v2 + 54;
  if (v3)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  v5 = *(v0 + v4);
  if (v5)
  {
    v3 = __OFADD__(v5, v1);
    v6 = v5 + v1;
    if (!v3)
    {
      OUTLINED_FUNCTION_16(*(v0 + v6));
      return;
    }

    goto LABEL_11;
  }

LABEL_7:
  OUTLINED_FUNCTION_16(0);
}

void _s11WeatherData07WK2_DayA10ConditionsV14temperatureMaxSfvg_0()
{
  OUTLINED_FUNCTION_103();
  if (v3)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(v0 + v2) < 0x35u)
  {
    return;
  }

  v3 = __OFADD__(v2, 52);
  v4 = v2 + 52;
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

void WK2_DayWeatherConditions.sunset.getter()
{
  OUTLINED_FUNCTION_103();
  if (v3)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(v0 + v2) < 0x2Du)
  {
    goto LABEL_7;
  }

  v3 = __OFADD__(v2, 44);
  v4 = v2 + 44;
  if (v3)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  v5 = *(v0 + v4);
  if (v5)
  {
    v3 = __OFADD__(v5, v1);
    v6 = v5 + v1;
    if (!v3)
    {
      OUTLINED_FUNCTION_16(*(v0 + v6));
      return;
    }

    goto LABEL_11;
  }

LABEL_7:
  OUTLINED_FUNCTION_16(0);
}

void WK2_DayWeatherConditions.sunriseNautical.getter()
{
  OUTLINED_FUNCTION_103();
  if (v3)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(v0 + v2) < 0x29u)
  {
    goto LABEL_7;
  }

  v3 = __OFADD__(v2, 40);
  v4 = v2 + 40;
  if (v3)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  v5 = *(v0 + v4);
  if (v5)
  {
    v3 = __OFADD__(v5, v1);
    v6 = v5 + v1;
    if (!v3)
    {
      OUTLINED_FUNCTION_16(*(v0 + v6));
      return;
    }

    goto LABEL_11;
  }

LABEL_7:
  OUTLINED_FUNCTION_16(0);
}

void WK2_AirQuality.pollutants(at:)()
{
  OUTLINED_FUNCTION_10();
  if (v1)
  {
    __break(1u);
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_137(v0);
  if (v5 < 0xD)
  {
LABEL_13:
    v13 = OUTLINED_FUNCTION_107();
    goto LABEL_14;
  }

  v1 = __OFADD__(v4, 12);
  v6 = v4 + 12;
  if (v1)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v7 = *(v2 + v6);
  if (!v7)
  {
    goto LABEL_13;
  }

  if (__OFADD__(v7, v3))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_136(v2);
  if (v1)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (__OFADD__(v8, 4))
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_36_0();
  if (!v12)
  {
    goto LABEL_20;
  }

  if (__OFADD__(v11, 4 * v10))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_108(v9);
  if (!v1)
  {
    v13 = OUTLINED_FUNCTION_183();
    v14 = v15;
LABEL_14:
    OUTLINED_FUNCTION_51(v13, v14);
    return;
  }

LABEL_22:
  __break(1u);
}

void WK2_DayWeatherConditions.sunriseCivil.getter()
{
  OUTLINED_FUNCTION_103();
  if (v3)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(v0 + v2) < 0x27u)
  {
    goto LABEL_7;
  }

  v3 = __OFADD__(v2, 38);
  v4 = v2 + 38;
  if (v3)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  v5 = *(v0 + v4);
  if (v5)
  {
    v3 = __OFADD__(v5, v1);
    v6 = v5 + v1;
    if (!v3)
    {
      OUTLINED_FUNCTION_16(*(v0 + v6));
      return;
    }

    goto LABEL_11;
  }

LABEL_7:
  OUTLINED_FUNCTION_16(0);
}

void _s11WeatherData07WK2_DayA10ConditionsV19sunriseAstronomicals6UInt32VSgvg_0()
{
  OUTLINED_FUNCTION_103();
  if (v3)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(v0 + v2) < 0x2Bu)
  {
    goto LABEL_7;
  }

  v3 = __OFADD__(v2, 42);
  v4 = v2 + 42;
  if (v3)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  v5 = *(v0 + v4);
  if (v5)
  {
    v3 = __OFADD__(v5, v1);
    v6 = v5 + v1;
    if (!v3)
    {
      OUTLINED_FUNCTION_16(*(v0 + v6));
      return;
    }

    goto LABEL_11;
  }

LABEL_7:
  OUTLINED_FUNCTION_16(0);
}

uint64_t OUTLINED_FUNCTION_13_1()
{

  return swift_getWitnessTable();
}

void OUTLINED_FUNCTION_13_2(Swift::Int a1)
{
  v4 = *(v1 + 24);

  ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(a1, v2, v4);
}

void WK2_DayWeatherConditions.sunrise.getter()
{
  OUTLINED_FUNCTION_103();
  if (v3)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(v0 + v2) < 0x25u)
  {
    goto LABEL_7;
  }

  v3 = __OFADD__(v2, 36);
  v4 = v2 + 36;
  if (v3)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  v5 = *(v0 + v4);
  if (v5)
  {
    v3 = __OFADD__(v5, v1);
    v6 = v5 + v1;
    if (!v3)
    {
      OUTLINED_FUNCTION_16(*(v0 + v6));
      return;
    }

    goto LABEL_11;
  }

LABEL_7:
  OUTLINED_FUNCTION_16(0);
}

void OUTLINED_FUNCTION_38_1()
{
  v3 = *(v0 + 24);

  ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(1, v1, v3);
}

void _s11WeatherData07WK2_DayA10ConditionsV19precipitationChances4Int8Vvg_0()
{
  OUTLINED_FUNCTION_103();
  if (v3)
  {
    __break(1u);
  }

  else
  {
    if (*(v0 + v2) < 0x1Bu)
    {
      goto LABEL_7;
    }

    v3 = __OFADD__(v2, 26);
    v4 = v2 + 26;
    if (!v3)
    {
      v5 = *(v0 + v4);
      if (v5)
      {
        if (!__OFADD__(v5, v1))
        {
          OUTLINED_FUNCTION_102(v0);
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

void WK2_Pollutant.pollutantType.getter()
{
  OUTLINED_FUNCTION_13_0();
  if (v4)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(v1 + v3) < 5u)
  {
LABEL_7:
    v8 = 0;
    goto LABEL_8;
  }

  v4 = __OFADD__(v3, 4);
  v5 = v3 + 4;
  if (v4)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = *(v1 + v5);
  if (!v6)
  {
    goto LABEL_7;
  }

  if (!__OFADD__(v6, v2))
  {
    v7 = OUTLINED_FUNCTION_124(v1);
    WK2_PollutantType.init(rawValue:)(v7);
    OUTLINED_FUNCTION_163();
LABEL_8:
    *v0 = v8;
    return;
  }

LABEL_11:
  __break(1u);
}

void WK2_DayWeatherConditions.precipitationAmountByTypeCount.getter()
{
  OUTLINED_FUNCTION_103();
  if (v3)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(v0 + v2) < 0x19u)
  {
LABEL_8:
    OUTLINED_FUNCTION_32_0();
    return;
  }

  v3 = __OFADD__(v2, 24);
  v4 = v2 + 24;
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

void WK2_DayWeatherConditions.moonrise.getter()
{
  OUTLINED_FUNCTION_103();
  if (v3)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(v0 + v2) < 0x13u)
  {
    goto LABEL_7;
  }

  v3 = __OFADD__(v2, 18);
  v4 = v2 + 18;
  if (v3)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  v5 = *(v0 + v4);
  if (v5)
  {
    v3 = __OFADD__(v5, v1);
    v6 = v5 + v1;
    if (!v3)
    {
      OUTLINED_FUNCTION_16(*(v0 + v6));
      return;
    }

    goto LABEL_11;
  }

LABEL_7:
  OUTLINED_FUNCTION_16(0);
}

void _s11WeatherData13WK2_PollutantV5unitsAA0c1_D4UnitOvg_0()
{
  OUTLINED_FUNCTION_194();
  if (v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*(v1 + v3) < 9u)
  {
LABEL_7:
    OUTLINED_FUNCTION_89(v0);
    return;
  }

  v4 = __OFADD__(v3, 8);
  v5 = v3 + 8;
  if (v4)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v6 = *(v1 + v5);
  if (!v6)
  {
    goto LABEL_7;
  }

  v4 = __OFADD__(v6, v2);
  v7 = v6 + v2;
  if (!v4)
  {
    v8 = *(v1 + v7);
    goto LABEL_7;
  }

LABEL_10:
  __break(1u);
}

void _s11WeatherData12WK2_HourTideV6heightSfvg_0()
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

void WK2_DayWeatherConditions.conditionCode.getter()
{
  OUTLINED_FUNCTION_13_0();
  if (v4)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(v1 + v3) < 9u)
  {
LABEL_7:
    v8 = 0;
    goto LABEL_8;
  }

  v4 = __OFADD__(v3, 8);
  v5 = v3 + 8;
  if (v4)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = *(v1 + v5);
  if (!v6)
  {
    goto LABEL_7;
  }

  if (!__OFADD__(v6, v2))
  {
    v7 = OUTLINED_FUNCTION_124(v1);
    WK2_ConditionCode.init(rawValue:)(v7);
    OUTLINED_FUNCTION_222();
LABEL_8:
    *v0 = v8;
    return;
  }

LABEL_11:
  __break(1u);
}

void _s11WeatherData07WK2_DayA10ConditionsV13forecastStarts6UInt32Vvg_0()
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

void _s11WeatherData14WK2_TideEventsV6events2atAA0c1_D5EventVSgs5Int32V_tF_0()
{
  OUTLINED_FUNCTION_10();
  if (v1)
  {
    __break(1u);
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_137(v0);
  if (v5 < 7)
  {
LABEL_13:
    v13 = OUTLINED_FUNCTION_107();
    goto LABEL_14;
  }

  v1 = __OFADD__(v4, 6);
  v6 = v4 + 6;
  if (v1)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v7 = *(v2 + v6);
  if (!v7)
  {
    goto LABEL_13;
  }

  if (__OFADD__(v7, v3))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_136(v2);
  if (v1)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (__OFADD__(v8, 4))
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_36_0();
  if (!v12)
  {
    goto LABEL_20;
  }

  if (__OFADD__(v11, 4 * v10))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_108(v9);
  if (!v1)
  {
    v13 = OUTLINED_FUNCTION_183();
    v14 = v15;
LABEL_14:
    OUTLINED_FUNCTION_51(v13, v14);
    return;
  }

LABEL_22:
  __break(1u);
}

void WK2_AirQuality.previousDayComparison.getter()
{
  OUTLINED_FUNCTION_13_0();
  if (v4)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (*(v1 + v3) < 0xFu)
  {
LABEL_9:
    v8 = 0;
LABEL_10:
    *v0 = v8;
    return;
  }

  v4 = __OFADD__(v3, 14);
  v5 = v3 + 14;
  if (v4)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v6 = *(v1 + v5);
  if (!v6)
  {
    goto LABEL_9;
  }

  if (!__OFADD__(v6, v2))
  {
    v7 = OUTLINED_FUNCTION_124(v1);
    WK2_ForecastToken.init(rawValue:)(v7);
    v8 = v9;
    if (v9 == 6)
    {
      v8 = 0;
    }

    goto LABEL_10;
  }

LABEL_13:
  __break(1u);
}

void WK2_AirQuality.primaryPollutant.getter()
{
  OUTLINED_FUNCTION_13_0();
  if (v4)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(v1 + v3) < 0x11u)
  {
LABEL_7:
    v8 = 0;
    goto LABEL_8;
  }

  v4 = __OFADD__(v3, 16);
  v5 = v3 + 16;
  if (v4)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = *(v1 + v5);
  if (!v6)
  {
    goto LABEL_7;
  }

  if (!__OFADD__(v6, v2))
  {
    v7 = OUTLINED_FUNCTION_124(v1);
    WK2_PollutantType.init(rawValue:)(v7);
    OUTLINED_FUNCTION_163();
LABEL_8:
    *v0 = v8;
    return;
  }

LABEL_11:
  __break(1u);
}

void WK2_AirQuality.scale.getter()
{
  OUTLINED_FUNCTION_65();
  if (v4)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(v2 + v3) < 0x13u)
  {
    goto LABEL_7;
  }

  v4 = __OFADD__(v3, 18);
  v5 = v3 + 18;
  if (v4)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  v6 = *(v2 + v5);
  if (v6)
  {
    if (!__OFADD__(v6, v1))
    {
      v7 = *(v0 + 8);
      v8 = *(v0 + 16);
      Table.directString(at:)(v6 + v1);
      return;
    }

    goto LABEL_11;
  }

LABEL_7:
  OUTLINED_FUNCTION_169();
}

void WK2_Weather.currentWeather.getter()
{
  OUTLINED_FUNCTION_14();
  if (v1)
  {
    __break(1u);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_132(v0);
  if (v5 < 7)
  {
LABEL_8:
    v8 = OUTLINED_FUNCTION_107();
    goto LABEL_9;
  }

  v1 = __OFADD__(v4, 6);
  v6 = v4 + 6;
  if (v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v7 = *(v2 + v6);
  if (!v7)
  {
    goto LABEL_8;
  }

  if (__OFADD__(v7, v3))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_108(v2);
  if (!v1)
  {
    v8 = OUTLINED_FUNCTION_183();
    v9 = v10;
LABEL_9:
    OUTLINED_FUNCTION_51(v8, v9);
    return;
  }

LABEL_13:
  __break(1u);
}

void _s11WeatherData04WK2_A0V13forecastDailyAA0c1_E8ForecastVSgvg_0()
{
  OUTLINED_FUNCTION_14();
  if (v1)
  {
    __break(1u);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_132(v0);
  if (v5 < 9)
  {
LABEL_8:
    v8 = OUTLINED_FUNCTION_107();
    goto LABEL_9;
  }

  v1 = __OFADD__(v4, 8);
  v6 = v4 + 8;
  if (v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v7 = *(v2 + v6);
  if (!v7)
  {
    goto LABEL_8;
  }

  if (__OFADD__(v7, v3))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_108(v2);
  if (!v1)
  {
    v8 = OUTLINED_FUNCTION_183();
    v9 = v10;
LABEL_9:
    OUTLINED_FUNCTION_51(v8, v9);
    return;
  }

LABEL_13:
  __break(1u);
}

void _s11WeatherData011WK2_CurrentA0V4asOfs6UInt32Vvg_0()
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

void _s11WeatherData011WK2_CurrentA0V10cloudCovers4Int8Vvg_0()
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
          OUTLINED_FUNCTION_102(v0);
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

void WK2_CurrentWeather.windDirection.getter()
{
  OUTLINED_FUNCTION_103();
  if (v3)
  {
    __break(1u);
  }

  else
  {
    if (*(v0 + v2) < 0x4Fu)
    {
      goto LABEL_7;
    }

    v3 = __OFADD__(v2, 78);
    v4 = v2 + 78;
    if (!v3)
    {
      v5 = *(v0 + v4);
      if (v5)
      {
        if (!__OFADD__(v5, v1))
        {
          OUTLINED_FUNCTION_205(v0);
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

void WK2_CurrentWeather.uvIndex.getter()
{
  OUTLINED_FUNCTION_103();
  if (v3)
  {
    __break(1u);
  }

  else
  {
    if (*(v0 + v2) < 0x4Bu)
    {
      goto LABEL_7;
    }

    v3 = __OFADD__(v2, 74);
    v4 = v2 + 74;
    if (!v3)
    {
      v5 = *(v0 + v4);
      if (v5)
      {
        if (!__OFADD__(v5, v1))
        {
          OUTLINED_FUNCTION_102(v0);
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

void _s11WeatherData011WK2_CurrentA0V19cloudCoverLowAltPcts4Int8Vvg_0()
{
  OUTLINED_FUNCTION_103();
  if (v3)
  {
    __break(1u);
  }

  else
  {
    if (*(v0 + v2) < 0xBu)
    {
      goto LABEL_7;
    }

    v3 = __OFADD__(v2, 10);
    v4 = v2 + 10;
    if (!v3)
    {
      v5 = *(v0 + v4);
      if (v5)
      {
        if (!__OFADD__(v5, v1))
        {
          OUTLINED_FUNCTION_102(v0);
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

void _s11WeatherData011WK2_CurrentA0V19temperatureApparentSfvg_0()
{
  OUTLINED_FUNCTION_103();
  if (v3)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(v0 + v2) < 0x45u)
  {
    return;
  }

  v3 = __OFADD__(v2, 68);
  v4 = v2 + 68;
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

void _s11WeatherData011WK2_CurrentA0V21snowfallAmountNext24hSfvg_0()
{
  OUTLINED_FUNCTION_103();
  if (v3)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(v0 + v2) < 0x41u)
  {
    return;
  }

  v3 = __OFADD__(v2, 64);
  v4 = v2 + 64;
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

void _s11WeatherData011WK2_CurrentA0V16snowfallAmount1hSfvg_0()
{
  OUTLINED_FUNCTION_103();
  if (v3)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(v0 + v2) < 0x37u)
  {
    return;
  }

  v3 = __OFADD__(v2, 54);
  v4 = v2 + 54;
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

void WK2_CurrentWeather.pressureTrend.getter()
{
  OUTLINED_FUNCTION_194();
  if (v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*(v1 + v3) < 0x35u)
  {
LABEL_7:
    OUTLINED_FUNCTION_89(v0);
    return;
  }

  v4 = __OFADD__(v3, 52);
  v5 = v3 + 52;
  if (v4)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v6 = *(v1 + v5);
  if (!v6)
  {
    goto LABEL_7;
  }

  v4 = __OFADD__(v6, v2);
  v7 = v6 + v2;
  if (!v4)
  {
    v8 = *(v1 + v7) == 1;
    goto LABEL_7;
  }

LABEL_10:
  __break(1u);
}

void _s11WeatherData011WK2_CurrentA0V19cloudCoverMidAltPcts4Int8Vvg_0()
{
  OUTLINED_FUNCTION_103();
  if (v3)
  {
    __break(1u);
  }

  else
  {
    if (*(v0 + v2) < 0xDu)
    {
      goto LABEL_7;
    }

    v3 = __OFADD__(v2, 12);
    v4 = v2 + 12;
    if (!v3)
    {
      v5 = *(v0 + v4);
      if (v5)
      {
        if (!__OFADD__(v5, v1))
        {
          OUTLINED_FUNCTION_102(v0);
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

void _s11WeatherData011WK2_CurrentA0V8pressureSfvg_0()
{
  OUTLINED_FUNCTION_103();
  if (v3)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(v0 + v2) < 0x33u)
  {
    return;
  }

  v3 = __OFADD__(v2, 50);
  v4 = v2 + 50;
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

void _s11WeatherData011WK2_CurrentA0V31perceivedPrecipitationIntensitySfvg_0()
{
  OUTLINED_FUNCTION_103();
  if (v3)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(v0 + v2) < 0x17u)
  {
    return;
  }

  v3 = __OFADD__(v2, 22);
  v4 = v2 + 22;
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

void _s11WeatherData011WK2_CurrentA0V22precipitationIntensitySfvg_0()
{
  OUTLINED_FUNCTION_103();
  if (v3)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(v0 + v2) < 0x31u)
  {
    return;
  }

  v3 = __OFADD__(v2, 48);
  v4 = v2 + 48;
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

void _s11WeatherData011WK2_CurrentA0V13conditionCodeAA0c10_ConditionF0Ovg_0()
{
  OUTLINED_FUNCTION_13_0();
  if (v4)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(v1 + v3) < 0x11u)
  {
LABEL_7:
    v8 = 0;
    goto LABEL_8;
  }

  v4 = __OFADD__(v3, 16);
  v5 = v3 + 16;
  if (v4)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = *(v1 + v5);
  if (!v6)
  {
    goto LABEL_7;
  }

  if (!__OFADD__(v6, v2))
  {
    v7 = OUTLINED_FUNCTION_124(v1);
    WK2_ConditionCode.init(rawValue:)(v7);
    OUTLINED_FUNCTION_222();
LABEL_8:
    *v0 = v8;
    return;
  }

LABEL_11:
  __break(1u);
}

void WK2_CurrentWeather.precipitationAmountNext1hByTypeCount.getter()
{
  OUTLINED_FUNCTION_103();
  if (v3)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(v0 + v2) < 0x25u)
  {
LABEL_8:
    OUTLINED_FUNCTION_32_0();
    return;
  }

  v3 = __OFADD__(v2, 36);
  v4 = v2 + 36;
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

void _s11WeatherData011WK2_CurrentA0V8humiditys4Int8Vvg_0()
{
  OUTLINED_FUNCTION_103();
  if (v3)
  {
    __break(1u);
  }

  else
  {
    if (*(v0 + v2) < 0x15u)
    {
      goto LABEL_7;
    }

    v3 = __OFADD__(v2, 20);
    v4 = v2 + 20;
    if (!v3)
    {
      v5 = *(v0 + v4);
      if (v5)
      {
        if (!__OFADD__(v5, v1))
        {
          OUTLINED_FUNCTION_102(v0);
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

void WK2_CurrentWeather.daylight.getter()
{
  OUTLINED_FUNCTION_103();
  if (v3)
  {
    __break(1u);
  }

  else
  {
    if (*(v0 + v2) < 0x13u)
    {
      goto LABEL_7;
    }

    v3 = __OFADD__(v2, 18);
    v4 = v2 + 18;
    if (!v3)
    {
      v5 = *(v0 + v4);
      if (v5)
      {
        if (!__OFADD__(v5, v1))
        {
          OUTLINED_FUNCTION_102(v0);
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

void WK2_CurrentWeather.precipitationAmountPrevious6hByTypeCount.getter()
{
  OUTLINED_FUNCTION_103();
  if (v3)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(v0 + v2) < 0x2Du)
  {
LABEL_8:
    OUTLINED_FUNCTION_32_0();
    return;
  }

  v3 = __OFADD__(v2, 44);
  v4 = v2 + 44;
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

void WK2_CurrentWeather.precipitationAmount6h.getter()
{
  OUTLINED_FUNCTION_103();
  if (v3)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(v0 + v2) < 0x1Bu)
  {
    return;
  }

  v3 = __OFADD__(v2, 26);
  v4 = v2 + 26;
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

void WK2_CurrentWeather.precipitationAmountPrevious1hByTypeCount.getter()
{
  OUTLINED_FUNCTION_103();
  if (v3)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(v0 + v2) < 0x2Bu)
  {
LABEL_8:
    OUTLINED_FUNCTION_32_0();
    return;
  }

  v3 = __OFADD__(v2, 42);
  v4 = v2 + 42;
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

void _s11WeatherData011WK2_CurrentA0V21precipitationAmount1hSfvg_0()
{
  OUTLINED_FUNCTION_103();
  if (v3)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(v0 + v2) < 0x19u)
  {
    return;
  }

  v3 = __OFADD__(v2, 24);
  v4 = v2 + 24;
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

void _s11WeatherData011WK2_CurrentA0V25precipitationAmountNext6hSfvg_0()
{
  OUTLINED_FUNCTION_103();
  if (v3)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(v0 + v2) < 0x21u)
  {
    return;
  }

  v3 = __OFADD__(v2, 32);
  v4 = v2 + 32;
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

void WK2_CurrentWeather.precipitationAmount24h.getter()
{
  OUTLINED_FUNCTION_103();
  if (v3)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(v0 + v2) < 0x1Du)
  {
    return;
  }

  v3 = __OFADD__(v2, 28);
  v4 = v2 + 28;
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

void _s11WeatherData011WK2_CurrentA0V20snowfallAmountNext6hSfvg_0()
{
  OUTLINED_FUNCTION_103();
  if (v3)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(v0 + v2) < 0x3Fu)
  {
    return;
  }

  v3 = __OFADD__(v2, 62);
  v4 = v2 + 62;
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

void WK2_CurrentWeather.precipitationAmountPrevious24hByTypeCount.getter()
{
  OUTLINED_FUNCTION_103();
  if (v3)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(v0 + v2) < 0x2Fu)
  {
LABEL_8:
    OUTLINED_FUNCTION_32_0();
    return;
  }

  v3 = __OFADD__(v2, 46);
  v4 = v2 + 46;
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

void WK2_CurrentWeather.precipitationAmountNext6hByTypeCount.getter()
{
  OUTLINED_FUNCTION_103();
  if (v3)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(v0 + v2) < 0x27u)
  {
LABEL_8:
    OUTLINED_FUNCTION_32_0();
    return;
  }

  v3 = __OFADD__(v2, 38);
  v4 = v2 + 38;
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

void WK2_CurrentWeather.precipitationAmountNext24hByTypeCount.getter()
{
  OUTLINED_FUNCTION_103();
  if (v3)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(v0 + v2) < 0x29u)
  {
LABEL_8:
    OUTLINED_FUNCTION_32_0();
    return;
  }

  v3 = __OFADD__(v2, 40);
  v4 = v2 + 40;
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

void _s11WeatherData011WK2_CurrentA0V17snowfallAmount24hSfvg_0()
{
  OUTLINED_FUNCTION_103();
  if (v3)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(v0 + v2) < 0x3Bu)
  {
    return;
  }

  v3 = __OFADD__(v2, 58);
  v4 = v2 + 58;
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

void _s11WeatherData011WK2_CurrentA0V20snowfallAmountNext1hSfvg_0()
{
  OUTLINED_FUNCTION_103();
  if (v3)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(v0 + v2) < 0x3Du)
  {
    return;
  }

  v3 = __OFADD__(v2, 60);
  v4 = v2 + 60;
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

void _s11WeatherData011WK2_CurrentA0V11temperatureSfvg_0()
{
  OUTLINED_FUNCTION_103();
  if (v3)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(v0 + v2) < 0x43u)
  {
    return;
  }

  v3 = __OFADD__(v2, 66);
  v4 = v2 + 66;
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