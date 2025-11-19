void static WeatherComparison.read(from:)()
{
  OUTLINED_FUNCTION_90_1();
  v3 = v2;
  v4 = sub_1B621D8F4();
  OUTLINED_FUNCTION_2();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_32();
  if (!v0)
  {
    if (v18 == 1)
    {
      OUTLINED_FUNCTION_31_4();
      static WeatherComparison.Condition.read(from:)(v8);
      OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_31_4();
      static Urgency.read(from:)(v9);
      OUTLINED_FUNCTION_31_4();
      sub_1B621D764();
      *v3 = v19;
      *(v3 + 8) = v18;
      *(v3 + 16) = v17;
      *(v3 + 24) = v16;
      v10 = type metadata accessor for WeatherComparison();
      (*(v6 + 32))(v3 + *(v10 + 36), v1, v4);
    }

    else
    {
      sub_1B6220694();
      OUTLINED_FUNCTION_1_41();
      sub_1B6077C6C(v11, v12);
      v13 = OUTLINED_FUNCTION_17_18();
      OUTLINED_FUNCTION_43_2(v13, v14);
      OUTLINED_FUNCTION_14_1();
      (*(v15 + 104))();
      swift_willThrow();
    }
  }

  OUTLINED_FUNCTION_37_1();
}

uint64_t WeatherComparison.write(to:)()
{
  OUTLINED_FUNCTION_44_3();
  result = sub_1B6220854();
  if (!v0)
  {
    OUTLINED_FUNCTION_66();
    WeatherComparison.Condition.write(to:)();
    OUTLINED_FUNCTION_66();
    sub_1B6220854();
    OUTLINED_FUNCTION_66();
    sub_1B6220854();
    OUTLINED_FUNCTION_66();
    Urgency.write(to:)();
    type metadata accessor for WeatherComparison();
    OUTLINED_FUNCTION_66();
    return sub_1B621D774();
  }

  return result;
}

void static DailyForecast.read(from:)()
{
  OUTLINED_FUNCTION_112_1();
  OUTLINED_FUNCTION_6_2();
  v3 = type metadata accessor for Metadata();
  v4 = OUTLINED_FUNCTION_0(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_68_1();
  static Metadata.read(from:)(v5);
  if (!v1)
  {
    type metadata accessor for DayForecast();
    sub_1B6077C6C(&qword_1EDAB0848, type metadata accessor for DayForecast);
    OUTLINED_FUNCTION_54_0();
    sub_1B6077C6C(v6, type metadata accessor for DayForecast);
    v7 = OUTLINED_FUNCTION_100_1();
    OUTLINED_FUNCTION_2_6();
    sub_1B604CB80(v2, v0, v8);
    *(v0 + *(type metadata accessor for DailyForecast() + 20)) = v7;
  }

  OUTLINED_FUNCTION_113_1();
}

void DailyForecast.write(to:)()
{
  Metadata.write(to:)();
  if (!v0)
  {
    type metadata accessor for DailyForecast();
    type metadata accessor for DayForecast();
    sub_1B6077C6C(&qword_1EDAB0848, type metadata accessor for DayForecast);
    OUTLINED_FUNCTION_54_0();
    sub_1B6077C6C(v1, type metadata accessor for DayForecast);
    OUTLINED_FUNCTION_20_12();
  }
}

void static PeriodicForecast.read(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  OUTLINED_FUNCTION_112_1();
  v16 = v15;
  OUTLINED_FUNCTION_88_1();
  if (!v13)
  {
    type metadata accessor for DayPartForecast();
    OUTLINED_FUNCTION_53_2();
    sub_1B6077C6C(v17, v14);
    OUTLINED_FUNCTION_6_22();
    sub_1B6077C6C(v18, v14);
    v19 = sub_1B62214D4();
    *v16 = a13;
    *(v16 + 8) = v19;
  }

  OUTLINED_FUNCTION_113_1();
}

uint64_t PeriodicForecast.write(to:)()
{
  result = sub_1B6220854();
  if (!v0)
  {
    type metadata accessor for DayPartForecast();
    OUTLINED_FUNCTION_53_2();
    sub_1B6077C6C(v3, v1);
    OUTLINED_FUNCTION_6_22();
    sub_1B6077C6C(v4, v1);
    return sub_1B62214E4();
  }

  return result;
}

void WeatherChange.write(to:)()
{
  OUTLINED_FUNCTION_44_3();
  Metadata.write(to:)();
  if (!v0)
  {
    type metadata accessor for WeatherChange();
    OUTLINED_FUNCTION_103_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600);
    OUTLINED_FUNCTION_8_24();
    sub_1B6221A04();
    OUTLINED_FUNCTION_8_24();
    sub_1B6221A04();
    OUTLINED_FUNCTION_93_0();
    type metadata accessor for TrendDeviation();
    sub_1B6077C6C(&qword_1EDAB01D0, type metadata accessor for TrendDeviation);
    OUTLINED_FUNCTION_51_2();
    sub_1B6077C6C(v1, type metadata accessor for TrendDeviation);
    OUTLINED_FUNCTION_20_12();
  }
}

uint64_t ForecastSummary.write(to:)()
{
  OUTLINED_FUNCTION_44_3();
  result = sub_1B621D774();
  if (!v0)
  {
    type metadata accessor for ForecastSummary();
    OUTLINED_FUNCTION_103_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600);
    OUTLINED_FUNCTION_66();
    sub_1B6221A04();
    OUTLINED_FUNCTION_36_4();
    OUTLINED_FUNCTION_5_32();
    CardinalDirection.write(to:)();
    OUTLINED_FUNCTION_3_34();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9267D0);
    OUTLINED_FUNCTION_8_24();
    sub_1B6221A04();
    OUTLINED_FUNCTION_3_34();
    OUTLINED_FUNCTION_8_24();
    return sub_1B6221A04();
  }

  return result;
}

void NextHourForecast.write(to:)()
{
  OUTLINED_FUNCTION_44_3();
  Metadata.write(to:)();
  if (!v0)
  {
    type metadata accessor for NextHourForecast();
    OUTLINED_FUNCTION_66_1();
    OUTLINED_FUNCTION_93_0();
    type metadata accessor for ForecastCondition();
    sub_1B6077C6C(&qword_1EDAB0058, type metadata accessor for ForecastCondition);
    OUTLINED_FUNCTION_50_1();
    sub_1B6077C6C(v1, type metadata accessor for ForecastCondition);
    OUTLINED_FUNCTION_21_11();
    OUTLINED_FUNCTION_73_1();
    sub_1B62214E4();
    OUTLINED_FUNCTION_93_0();
    type metadata accessor for ForecastSummary();
    sub_1B6077C6C(&qword_1EDAB0160, type metadata accessor for ForecastSummary);
    OUTLINED_FUNCTION_49_3();
    sub_1B6077C6C(v2, type metadata accessor for ForecastSummary);
    OUTLINED_FUNCTION_21_11();
    OUTLINED_FUNCTION_73_1();
    sub_1B62214E4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600);
    OUTLINED_FUNCTION_8_24();
    sub_1B6221A04();
    OUTLINED_FUNCTION_8_24();
    sub_1B6221A04();
    OUTLINED_FUNCTION_93_0();
    type metadata accessor for ForecastMinute();
    sub_1B6077C6C(&qword_1EDAB0208, type metadata accessor for ForecastMinute);
    OUTLINED_FUNCTION_48_3();
    sub_1B6077C6C(v3, type metadata accessor for ForecastMinute);
    OUTLINED_FUNCTION_20_12();
  }
}

void static ResponseType.read(from:)(_BYTE *a1@<X8>)
{
  OUTLINED_FUNCTION_88_1();
  if (!v1)
  {
    OUTLINED_FUNCTION_69_1();
    if (v3 >= 9)
    {
      sub_1B6220694();
      OUTLINED_FUNCTION_1_41();
      sub_1B6077C6C(v4, v5);
      v6 = OUTLINED_FUNCTION_17_18();
      OUTLINED_FUNCTION_43_2(v6, v7);
      OUTLINED_FUNCTION_14_1();
      (*(v8 + 104))();
      swift_willThrow();
    }

    else
    {
      *a1 = v3;
    }
  }
}

void static HourlyForecast.read(from:)()
{
  OUTLINED_FUNCTION_112_1();
  OUTLINED_FUNCTION_6_2();
  v3 = type metadata accessor for Metadata();
  v4 = OUTLINED_FUNCTION_0(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_68_1();
  static Metadata.read(from:)(v5);
  if (!v1)
  {
    type metadata accessor for HourForecast();
    sub_1B6077C6C(&qword_1EDAB07E8, type metadata accessor for HourForecast);
    OUTLINED_FUNCTION_57_0();
    sub_1B6077C6C(v6, type metadata accessor for HourForecast);
    v7 = OUTLINED_FUNCTION_100_1();
    OUTLINED_FUNCTION_2_6();
    sub_1B604CB80(v2, v0, v8);
    *(v0 + *(type metadata accessor for HourlyForecast() + 20)) = v7;
  }

  OUTLINED_FUNCTION_113_1();
}

void HourlyForecast.write(to:)()
{
  Metadata.write(to:)();
  if (!v0)
  {
    type metadata accessor for HourlyForecast();
    type metadata accessor for HourForecast();
    sub_1B6077C6C(&qword_1EDAB07E8, type metadata accessor for HourForecast);
    OUTLINED_FUNCTION_57_0();
    sub_1B6077C6C(v1, type metadata accessor for HourForecast);
    OUTLINED_FUNCTION_20_12();
  }
}

void Metadata.write(to:)()
{
  OUTLINED_FUNCTION_94_1();
  OUTLINED_FUNCTION_44_3();
  sub_1B621D774();
  if (!v0)
  {
    type metadata accessor for Metadata();
    OUTLINED_FUNCTION_66_1();
    OUTLINED_FUNCTION_66();
    sub_1B621D774();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600);
    OUTLINED_FUNCTION_66();
    sub_1B6221A04();
    OUTLINED_FUNCTION_3_34();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9267D8);
    OUTLINED_FUNCTION_5_32();
    sub_1B6221A04();
    OUTLINED_FUNCTION_26_10(v1[8]);
    OUTLINED_FUNCTION_5_32();
    sub_1B6220854();
    OUTLINED_FUNCTION_26_10(v1[9]);
    OUTLINED_FUNCTION_5_32();
    sub_1B6220854();
    OUTLINED_FUNCTION_65_1(v1[10]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925FE0);
    OUTLINED_FUNCTION_8_24();
    sub_1B6221A04();
    OUTLINED_FUNCTION_65_1(v1[11]);
    OUTLINED_FUNCTION_8_24();
    sub_1B6221A04();
    OUTLINED_FUNCTION_65_1(v1[12]);
    OUTLINED_FUNCTION_8_24();
    sub_1B6221A04();
    OUTLINED_FUNCTION_36_4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9267E0);
    OUTLINED_FUNCTION_5_32();
    sub_1B6221A04();
    OUTLINED_FUNCTION_36_4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9267E8);
    sub_1B60722F8();
    sub_1B607234C();
    OUTLINED_FUNCTION_15_18();
    OUTLINED_FUNCTION_75_0();
    OUTLINED_FUNCTION_65_1(v1[15]);
    OUTLINED_FUNCTION_8_24();
    sub_1B6221A04();
    OUTLINED_FUNCTION_36_4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9267F0);
    sub_1B60723A0();
    sub_1B60723F4();
    OUTLINED_FUNCTION_15_18();
    sub_1B6221A04();
  }

  OUTLINED_FUNCTION_95_1();
}

uint64_t sub_1B617D868()
{
  result = OUTLINED_FUNCTION_88_1();
  if (!v0 && v7 != 1)
  {
    sub_1B6220694();
    OUTLINED_FUNCTION_1_41();
    sub_1B6077C6C(v2, v3);
    v4 = OUTLINED_FUNCTION_17_18();
    OUTLINED_FUNCTION_43_2(v4, v5);
    OUTLINED_FUNCTION_14_1();
    (*(v6 + 104))();
    return swift_willThrow();
  }

  return result;
}

void static PrecipitationConditionParameter.read(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  OUTLINED_FUNCTION_112_1();
  OUTLINED_FUNCTION_6_2();
  sub_1B621D8F4();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_86_0();
  sub_1B6220844();
  if (!v14)
  {
    if (a13 == 2)
    {
      v16 = 1;
    }

    else
    {
      if (a13 != 1)
      {
        sub_1B6220694();
        OUTLINED_FUNCTION_1_41();
        sub_1B6077C6C(v18, v19);
        swift_allocError();
        OUTLINED_FUNCTION_10_6();
        (*(v20 + 104))();
        swift_willThrow();
        goto LABEL_2;
      }

      v16 = 0;
    }

    sub_1B621D764();
    *v13 = v16;
    type metadata accessor for PrecipitationConditionParameter();
    OUTLINED_FUNCTION_102();
    v17();
  }

LABEL_2:
  OUTLINED_FUNCTION_113_1();
}

uint64_t PrecipitationConditionParameter.write(to:)()
{
  OUTLINED_FUNCTION_101_1();
  result = sub_1B6220854();
  if (!v0)
  {
    type metadata accessor for PrecipitationConditionParameter();
    OUTLINED_FUNCTION_84_1();
    return sub_1B621D774();
  }

  return result;
}

void AirQuality.write(to:)()
{
  OUTLINED_FUNCTION_94_1();
  OUTLINED_FUNCTION_44_3();
  Metadata.write(to:)();
  if (!v0)
  {
    type metadata accessor for AirQuality();
    OUTLINED_FUNCTION_66_1();
    OUTLINED_FUNCTION_3_34();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9267D8);
    OUTLINED_FUNCTION_8_24();
    sub_1B6221A04();
    OUTLINED_FUNCTION_3_34();
    OUTLINED_FUNCTION_8_24();
    sub_1B6221A04();
    OUTLINED_FUNCTION_36_4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9267E0);
    OUTLINED_FUNCTION_5_32();
    sub_1B6221A04();
    sub_1B6072648();
    sub_1B607269C();
    OUTLINED_FUNCTION_1_39();
    sub_1B62214E4();
    OUTLINED_FUNCTION_65_1(*(v1 + 36));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925FE0);
    OUTLINED_FUNCTION_8_24();
    sub_1B6221A04();
    OUTLINED_FUNCTION_36_4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9267F8);
    sub_1B6072934();
    sub_1B6072988();
    OUTLINED_FUNCTION_15_18();
    OUTLINED_FUNCTION_75_0();
    OUTLINED_FUNCTION_65_1(*(v1 + 44));
    OUTLINED_FUNCTION_8_24();
    sub_1B6221A04();
  }

  OUTLINED_FUNCTION_95_1();
}

void sub_1B617DDCC()
{
  OUTLINED_FUNCTION_12_0();
  v3 = v2;
  v15 = v4;
  v6 = v5;
  OUTLINED_FUNCTION_6_2();
  sub_1B621D8F4();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_11_0();
  v8 = type metadata accessor for Metadata();
  v9 = OUTLINED_FUNCTION_0(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_14();
  v12 = v11 - v10;
  static Metadata.read(from:)(v11 - v10);
  if (!v1)
  {
    v6();
    v15();
    OUTLINED_FUNCTION_78_0();
    v13 = sub_1B62214D4();
    sub_1B621D764();
    sub_1B604CB80(v12, v0, type metadata accessor for Metadata);
    *(v0 + *(v3(0) + 20)) = v13;
    OUTLINED_FUNCTION_105_1();
    v14();
  }

  OUTLINED_FUNCTION_13();
}

void sub_1B617E0CC(uint64_t a1, void (*a2)(void), void (*a3)(void), void (*a4)(void))
{
  Metadata.write(to:)();
  if (!v4)
  {
    a2(0);
    a3();
    a4();
    sub_1B62214E4();
    OUTLINED_FUNCTION_66();
    sub_1B621D774();
  }
}

void HourForecast.write(to:)()
{
  OUTLINED_FUNCTION_94_1();
  OUTLINED_FUNCTION_44_3();
  sub_1B621D774();
  if (!v0)
  {
    type metadata accessor for HourForecast();
    OUTLINED_FUNCTION_66_1();
    OUTLINED_FUNCTION_26_10(v2);
    OUTLINED_FUNCTION_5_32();
    sub_1B6220854();
    OUTLINED_FUNCTION_26_10(v1[6]);
    OUTLINED_FUNCTION_5_32();
    sub_1B6220854();
    OUTLINED_FUNCTION_26_10(v1[7]);
    OUTLINED_FUNCTION_5_32();
    sub_1B6220854();
    OUTLINED_FUNCTION_26_10(v1[8]);
    OUTLINED_FUNCTION_5_32();
    sub_1B6220854();
    OUTLINED_FUNCTION_36_4();
    OUTLINED_FUNCTION_5_32();
    ConditionCode.write(to:)();
    OUTLINED_FUNCTION_36_4();
    OUTLINED_FUNCTION_5_32();
    sub_1B6220854();
    OUTLINED_FUNCTION_26_10(v1[11]);
    OUTLINED_FUNCTION_5_32();
    sub_1B6220854();
    OUTLINED_FUNCTION_26_10(v1[12]);
    OUTLINED_FUNCTION_5_32();
    sub_1B6220854();
    OUTLINED_FUNCTION_26_10(v1[13]);
    OUTLINED_FUNCTION_5_32();
    sub_1B6220854();
    OUTLINED_FUNCTION_36_4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926820);
    sub_1B6077250();
    sub_1B60772A4();
    OUTLINED_FUNCTION_9_22();
    OUTLINED_FUNCTION_104_1();
    sub_1B6221A04();
    OUTLINED_FUNCTION_26_10(v1[15]);
    OUTLINED_FUNCTION_5_32();
    sub_1B6220854();
    OUTLINED_FUNCTION_3_34();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9267D0);
    OUTLINED_FUNCTION_8_24();
    sub_1B6221A04();
    OUTLINED_FUNCTION_36_4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926828);
    sub_1B607A1A8();
    sub_1B607A1FC();
    OUTLINED_FUNCTION_15_18();
    OUTLINED_FUNCTION_75_0();
    OUTLINED_FUNCTION_3_34();
    OUTLINED_FUNCTION_8_24();
    sub_1B6221A04();
    OUTLINED_FUNCTION_26_10(v1[19]);
    OUTLINED_FUNCTION_5_32();
    sub_1B6220854();
    OUTLINED_FUNCTION_3_34();
    OUTLINED_FUNCTION_8_24();
    sub_1B6221A04();
    OUTLINED_FUNCTION_3_34();
    OUTLINED_FUNCTION_8_24();
    sub_1B6221A04();
    OUTLINED_FUNCTION_5_32();
    sub_1B6220854();
    OUTLINED_FUNCTION_26_10(v1[23]);
    OUTLINED_FUNCTION_5_32();
    sub_1B6220854();
    OUTLINED_FUNCTION_3_34();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9267D8);
    OUTLINED_FUNCTION_5_32();
    sub_1B6221A04();
    OUTLINED_FUNCTION_3_34();
    OUTLINED_FUNCTION_8_24();
    sub_1B6221A04();
    OUTLINED_FUNCTION_26_10(v1[26]);
    OUTLINED_FUNCTION_5_32();
    sub_1B6220854();
  }

  OUTLINED_FUNCTION_95_1();
}

uint64_t static EventMessage.read(from:)()
{
  OUTLINED_FUNCTION_61();
  result = sub_1B62219F4();
  if (!v1)
  {
    OUTLINED_FUNCTION_91_1();
    result = sub_1B62219F4();
    *v0 = v4;
    *(v0 + 8) = v5;
    *(v0 + 16) = v3;
  }

  return result;
}

uint64_t EventMessage.write(to:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925FE0);
  result = sub_1B6221A04();
  if (!v0)
  {
    return sub_1B6221A04();
  }

  return result;
}

void sub_1B617E758(void (*a1)(void)@<X1>, void (*a2)(void)@<X2>, uint64_t (*a3)(void)@<X4>, uint64_t a4@<X8>)
{
  v10 = type metadata accessor for Metadata();
  v11 = OUTLINED_FUNCTION_0(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_97_0();
  static Metadata.read(from:)(v12);
  if (!v4)
  {
    a1();
    a2();
    OUTLINED_FUNCTION_78_0();
    v13 = sub_1B62214D4();
    OUTLINED_FUNCTION_2_6();
    sub_1B604CB80(v5, a4, v14);
    *(a4 + *(a3(0) + 20)) = v13;
  }
}

void static LocationInfo.read(from:)()
{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_90_1();
  v2 = v1;
  v3 = type metadata accessor for Metadata();
  v4 = OUTLINED_FUNCTION_0(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_68_1();
  OUTLINED_FUNCTION_31_4();
  static Metadata.read(from:)(v5);
  if (!v0)
  {
    OUTLINED_FUNCTION_31_4();
    v6 = sub_1B6221274();
    v8 = v7;
    OUTLINED_FUNCTION_31_4();
    sub_1B62219F4();
    OUTLINED_FUNCTION_31_4();
    sub_1B62219F4();
    OUTLINED_FUNCTION_31_4();
    sub_1B62219F4();
    OUTLINED_FUNCTION_31_4();
    v9 = sub_1B6221274();
    v20 = v10;
    v11 = type metadata accessor for LocationInfo();
    v17 = (v2 + v11[6]);
    v19 = (v2 + v11[7]);
    v18 = (v2 + v11[8]);
    OUTLINED_FUNCTION_2_6();
    v12 = OUTLINED_FUNCTION_1_39();
    sub_1B604CB80(v12, v13, v14);
    v15 = (v2 + v11[5]);
    *v15 = v6;
    v15[1] = v8;
    *v17 = v25;
    v17[1] = v26;
    *v19 = v23;
    v19[1] = v24;
    *v18 = v21;
    v18[1] = v22;
    v16 = (v2 + v11[9]);
    *v16 = v9;
    v16[1] = v20;
  }

  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_13();
}

void LocationInfo.write(to:)()
{
  OUTLINED_FUNCTION_44_3();
  Metadata.write(to:)();
  if (!v0)
  {
    type metadata accessor for LocationInfo();
    OUTLINED_FUNCTION_66_1();
    OUTLINED_FUNCTION_66();
    sub_1B6221284();
    OUTLINED_FUNCTION_65_1(v1[6]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925FE0);
    OUTLINED_FUNCTION_8_24();
    sub_1B6221A04();
    OUTLINED_FUNCTION_65_1(v1[7]);
    OUTLINED_FUNCTION_8_24();
    sub_1B6221A04();
    OUTLINED_FUNCTION_65_1(v1[8]);
    OUTLINED_FUNCTION_8_24();
    sub_1B6221A04();
    OUTLINED_FUNCTION_66();
    sub_1B6221284();
  }
}

uint64_t sub_1B617EC58()
{
  OUTLINED_FUNCTION_61();
  result = sub_1B6220844();
  if (!v1)
  {
    OUTLINED_FUNCTION_98_1();
    OUTLINED_FUNCTION_91_1();
    result = sub_1B6220844();
    *v0 = v5;
    v0[1] = v4;
    v0[2] = v3;
  }

  return result;
}

uint64_t sub_1B617ED18()
{
  result = sub_1B6220854();
  if (!v0)
  {
    OUTLINED_FUNCTION_99_1();
    return OUTLINED_FUNCTION_99_1();
  }

  return result;
}

uint64_t static HourWeatherStatistics.read(from:)()
{
  OUTLINED_FUNCTION_61();
  result = sub_1B6220844();
  if (!v1)
  {
    sub_1B6182C48();
    sub_1B6182C9C();
    OUTLINED_FUNCTION_29_9();
    result = sub_1B62219F4();
    *v0 = v6;
    *(v0 + 8) = v3;
    *(v0 + 24) = v4;
    *(v0 + 32) = v5;
  }

  return result;
}

uint64_t HourWeatherStatistics.write(to:)()
{
  result = sub_1B6220854();
  if (!v0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926850);
    sub_1B6182C48();
    sub_1B6182C9C();
    OUTLINED_FUNCTION_15_18();
    return sub_1B6221A04();
  }

  return result;
}

void static CurrentWeather.read(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_77_1();
  v21 = v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600);
  v23 = OUTLINED_FUNCTION_0(v22);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_10();
  v26 = v24 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v76 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v76 - v31;
  v33 = type metadata accessor for Metadata();
  v34 = OUTLINED_FUNCTION_0(v33);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_45_0();
  static Metadata.read(from:)(v19);
  if (!v18)
  {
    v35 = sub_1B621D8F4();
    sub_1B62219F4();
    v124 = v35;
    OUTLINED_FUNCTION_27_9();
    OUTLINED_FUNCTION_27_9();
    v36 = v163;
    OUTLINED_FUNCTION_27_9();
    v37 = v162;
    OUTLINED_FUNCTION_27_9();
    v38 = v161;
    OUTLINED_FUNCTION_71_1();
    static ConditionCode.read(from:)(v39);
    v123 = v160;
    OUTLINED_FUNCTION_27_9();
    v122 = v159;
    OUTLINED_FUNCTION_27_9();
    v40 = v158;
    OUTLINED_FUNCTION_27_9();
    v41 = v157;
    OUTLINED_FUNCTION_27_9();
    v42 = v156;
    OUTLINED_FUNCTION_27_9();
    v43 = v155;
    OUTLINED_FUNCTION_27_9();
    v121 = v154;
    OUTLINED_FUNCTION_27_9();
    v120 = v153;
    OUTLINED_FUNCTION_27_9();
    v117 = v152;
    v44 = sub_1B60771A8();
    sub_1B60771FC();
    v119 = v44;
    v118 = sub_1B62214D4();
    v116 = OUTLINED_FUNCTION_38_5();
    v115 = OUTLINED_FUNCTION_38_5();
    v114 = OUTLINED_FUNCTION_38_5();
    v113 = OUTLINED_FUNCTION_38_5();
    v119 = OUTLINED_FUNCTION_38_5();
    OUTLINED_FUNCTION_27_9();
    v112 = v151;
    OUTLINED_FUNCTION_27_9();
    v111 = v150;
    OUTLINED_FUNCTION_71_1();
    sub_1B62219F4();
    v110 = v148;
    v109 = v149;
    sub_1B607A1A8();
    sub_1B607A1FC();
    sub_1B62219F4();
    v108 = v147;
    OUTLINED_FUNCTION_27_9();
    v107 = v146;
    OUTLINED_FUNCTION_27_9();
    v106 = v145;
    OUTLINED_FUNCTION_27_9();
    v105 = v144;
    OUTLINED_FUNCTION_27_9();
    v104 = v143;
    OUTLINED_FUNCTION_27_9();
    v103 = v142;
    OUTLINED_FUNCTION_27_9();
    v102 = v141;
    sub_1B62219F4();
    sub_1B62219F4();
    OUTLINED_FUNCTION_27_9();
    v101 = v140;
    OUTLINED_FUNCTION_71_1();
    sub_1B62219F4();
    v100 = v138;
    v99 = v139;
    OUTLINED_FUNCTION_71_1();
    sub_1B62219F4();
    v98 = v136;
    v97 = v137;
    OUTLINED_FUNCTION_71_1();
    sub_1B62219F4();
    v96 = v134;
    v95 = v135;
    OUTLINED_FUNCTION_71_1();
    sub_1B62219F4();
    v94 = v132;
    v93 = v133;
    OUTLINED_FUNCTION_27_9();
    v92 = v131;
    OUTLINED_FUNCTION_27_9();
    v91 = v130;
    OUTLINED_FUNCTION_71_1();
    sub_1B62219F4();
    v90 = v128;
    v89 = v129;
    OUTLINED_FUNCTION_71_1();
    sub_1B62219F4();
    v88 = v126;
    v87 = v127;
    OUTLINED_FUNCTION_27_9();
    v86 = v125;
    v45 = type metadata accessor for CurrentWeather();
    v77 = v45[5];
    OUTLINED_FUNCTION_3_10();
    v46 = v124;
    __swift_storeEnumTagSinglePayload(v47, v48, v49, v124);
    v50 = (v21 + v45[27]);
    v78 = v45[28];
    v79 = v50;
    *(v21 + v78) = 3;
    v84 = v45[35];
    OUTLINED_FUNCTION_3_10();
    __swift_storeEnumTagSinglePayload(v51, v52, v53, v46);
    v83 = v45[36];
    OUTLINED_FUNCTION_3_10();
    __swift_storeEnumTagSinglePayload(v54, v55, v56, v46);
    v57 = v45[39];
    v82 = (v21 + v45[38]);
    v85 = (v21 + v57);
    v58 = v45[41];
    v80 = (v21 + v45[40]);
    v81 = v21 + v58;
    v59 = v45[45];
    v124 = (v21 + v45[44]);
    v60 = v21 + v59;
    OUTLINED_FUNCTION_2_6();
    sub_1B604CB80(v19, v21, v61);
    sub_1B6072594(v32, v21 + v77, &qword_1EB924600);
    *(v21 + v45[6]) = a18;
    *(v21 + v45[7]) = v36;
    *(v21 + v45[8]) = v37;
    *(v21 + v45[9]) = v38;
    *(v21 + v45[10]) = v123;
    *(v21 + v45[11]) = v122;
    *(v21 + v45[12]) = v40;
    *(v21 + v45[13]) = v41;
    *(v21 + v45[14]) = v42;
    *(v21 + v45[15]) = v43;
    v62 = v120;
    *(v21 + v45[16]) = v121;
    *(v21 + v45[17]) = v62;
    *(v21 + v45[18]) = v117;
    *(v21 + v45[19]) = v118;
    v63 = v115;
    *(v21 + v45[20]) = v116;
    *(v21 + v45[21]) = v63;
    v64 = v113;
    *(v21 + v45[22]) = v114;
    *(v21 + v45[23]) = v64;
    *(v21 + v45[24]) = v119;
    v65 = v111;
    *(v21 + v45[25]) = v112;
    *(v21 + v45[26]) = v65;
    v66 = v78;
    v67 = v79;
    *v79 = v110;
    *(v67 + 8) = v109;
    *(v21 + v66) = v108;
    v68 = v106;
    *(v21 + v45[29]) = v107;
    *(v21 + v45[30]) = v68;
    v69 = v104;
    *(v21 + v45[31]) = v105;
    *(v21 + v45[32]) = v69;
    v70 = v102;
    *(v21 + v45[33]) = v103;
    *(v21 + v45[34]) = v70;
    sub_1B6072594(v29, v21 + v84, &qword_1EB924600);
    sub_1B6072594(v26, v21 + v83, &qword_1EB924600);
    *(v21 + v45[37]) = v101;
    v71 = v82;
    *v82 = v100;
    *(v71 + 8) = v99;
    v72 = v85;
    *v85 = v98;
    *(v72 + 8) = v97;
    v74 = v80;
    v73 = v81;
    *v80 = v96;
    *(v74 + 8) = v95;
    *v73 = v94;
    *(v73 + 8) = v93;
    *(v21 + v45[42]) = v92;
    *(v21 + v45[43]) = v91;
    v75 = v124;
    *v124 = v90;
    *(v75 + 8) = v89;
    *v60 = v88;
    *(v60 + 8) = v87;
    *(v21 + v45[46]) = v86;
  }

  OUTLINED_FUNCTION_76_1();
}

void CurrentWeather.write(to:)()
{
  OUTLINED_FUNCTION_109_1();
  OUTLINED_FUNCTION_44_3();
  Metadata.write(to:)();
  if (!v0)
  {
    type metadata accessor for CurrentWeather();
    OUTLINED_FUNCTION_103_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600);
    OUTLINED_FUNCTION_8_24();
    sub_1B6221A04();
    OUTLINED_FUNCTION_26_10(v1[6]);
    OUTLINED_FUNCTION_5_32();
    sub_1B6220854();
    OUTLINED_FUNCTION_26_10(v1[7]);
    OUTLINED_FUNCTION_5_32();
    sub_1B6220854();
    OUTLINED_FUNCTION_26_10(v1[8]);
    OUTLINED_FUNCTION_5_32();
    sub_1B6220854();
    OUTLINED_FUNCTION_26_10(v1[9]);
    OUTLINED_FUNCTION_5_32();
    sub_1B6220854();
    OUTLINED_FUNCTION_36_4();
    OUTLINED_FUNCTION_5_32();
    ConditionCode.write(to:)();
    OUTLINED_FUNCTION_36_4();
    OUTLINED_FUNCTION_5_32();
    sub_1B6220854();
    OUTLINED_FUNCTION_26_10(v1[12]);
    OUTLINED_FUNCTION_5_32();
    sub_1B6220854();
    OUTLINED_FUNCTION_26_10(v1[13]);
    OUTLINED_FUNCTION_5_32();
    sub_1B6220854();
    OUTLINED_FUNCTION_26_10(v1[14]);
    OUTLINED_FUNCTION_5_32();
    sub_1B6220854();
    OUTLINED_FUNCTION_26_10(v1[15]);
    OUTLINED_FUNCTION_5_32();
    sub_1B6220854();
    OUTLINED_FUNCTION_26_10(v1[16]);
    OUTLINED_FUNCTION_5_32();
    sub_1B6220854();
    OUTLINED_FUNCTION_26_10(v1[17]);
    OUTLINED_FUNCTION_5_32();
    sub_1B6220854();
    OUTLINED_FUNCTION_26_10(v1[18]);
    OUTLINED_FUNCTION_5_32();
    sub_1B6220854();
    sub_1B60771A8();
    sub_1B60771FC();
    sub_1B62214E4();
    OUTLINED_FUNCTION_41_1();
    OUTLINED_FUNCTION_41_1();
    OUTLINED_FUNCTION_41_1();
    OUTLINED_FUNCTION_41_1();
    OUTLINED_FUNCTION_41_1();
    OUTLINED_FUNCTION_26_10(v1[25]);
    OUTLINED_FUNCTION_5_32();
    sub_1B6220854();
    OUTLINED_FUNCTION_26_10(v1[26]);
    OUTLINED_FUNCTION_5_32();
    sub_1B6220854();
    OUTLINED_FUNCTION_3_34();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9267D0);
    OUTLINED_FUNCTION_16_19();
    sub_1B6221A04();
    OUTLINED_FUNCTION_36_4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926828);
    sub_1B607A1A8();
    sub_1B607A1FC();
    OUTLINED_FUNCTION_15_18();
    OUTLINED_FUNCTION_107_0();
    sub_1B6221A04();
    OUTLINED_FUNCTION_26_10(v1[29]);
    OUTLINED_FUNCTION_5_32();
    sub_1B6220854();
    OUTLINED_FUNCTION_26_10(v1[30]);
    OUTLINED_FUNCTION_5_32();
    sub_1B6220854();
    OUTLINED_FUNCTION_26_10(v1[31]);
    OUTLINED_FUNCTION_5_32();
    sub_1B6220854();
    OUTLINED_FUNCTION_26_10(v1[32]);
    OUTLINED_FUNCTION_5_32();
    sub_1B6220854();
    OUTLINED_FUNCTION_26_10(v1[33]);
    OUTLINED_FUNCTION_5_32();
    sub_1B6220854();
    OUTLINED_FUNCTION_26_10(v1[34]);
    OUTLINED_FUNCTION_5_32();
    sub_1B6220854();
    OUTLINED_FUNCTION_8_24();
    sub_1B6221A04();
    OUTLINED_FUNCTION_8_24();
    sub_1B6221A04();
    OUTLINED_FUNCTION_26_10(v1[37]);
    OUTLINED_FUNCTION_5_32();
    sub_1B6220854();
    OUTLINED_FUNCTION_3_34();
    OUTLINED_FUNCTION_16_19();
    sub_1B6221A04();
    OUTLINED_FUNCTION_3_34();
    OUTLINED_FUNCTION_16_19();
    sub_1B6221A04();
    OUTLINED_FUNCTION_3_34();
    OUTLINED_FUNCTION_16_19();
    sub_1B6221A04();
    OUTLINED_FUNCTION_3_34();
    OUTLINED_FUNCTION_16_19();
    sub_1B6221A04();
    OUTLINED_FUNCTION_5_32();
    sub_1B6220854();
    OUTLINED_FUNCTION_26_10(v1[43]);
    OUTLINED_FUNCTION_5_32();
    sub_1B6220854();
    OUTLINED_FUNCTION_3_34();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9267D8);
    OUTLINED_FUNCTION_5_32();
    sub_1B6221A04();
    OUTLINED_FUNCTION_3_34();
    OUTLINED_FUNCTION_16_19();
    sub_1B6221A04();
    OUTLINED_FUNCTION_26_10(v1[46]);
    OUTLINED_FUNCTION_5_32();
    sub_1B6220854();
  }

  OUTLINED_FUNCTION_110_1();
}

void Article.write(to:)()
{
  OUTLINED_FUNCTION_109_1();
  sub_1B6221284();
  if (!v0)
  {
    OUTLINED_FUNCTION_8_24();
    sub_1B62214E4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925FE0);
    OUTLINED_FUNCTION_8_24();
    sub_1B6221A04();
    OUTLINED_FUNCTION_8_24();
    sub_1B6221A04();
    sub_1B62214E4();
    sub_1B621D944();
    sub_1B62214E4();
  }

  OUTLINED_FUNCTION_110_1();
}

uint64_t static Article.read(from:)@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B6221274();
  if (!v1)
  {
    v5 = result;
    v6 = v4;
    OUTLINED_FUNCTION_55_0();
    v7 = sub_1B62214D4();
    OUTLINED_FUNCTION_55_0();
    sub_1B62219F4();
    OUTLINED_FUNCTION_55_0();
    sub_1B62219F4();
    OUTLINED_FUNCTION_55_0();
    v8 = sub_1B62214D4();
    sub_1B621D944();
    OUTLINED_FUNCTION_55_0();
    result = sub_1B62214D4();
    *a1 = v5;
    a1[1] = v6;
    a1[2] = v7;
    a1[3] = v11;
    a1[4] = v12;
    a1[5] = v9;
    a1[6] = v10;
    a1[7] = v8;
    a1[8] = result;
  }

  return result;
}

uint64_t sub_1B6180720()
{
  result = sub_1B6220854();
  if (!v0)
  {
    return OUTLINED_FUNCTION_99_1();
  }

  return result;
}

uint64_t sub_1B618079C()
{
  OUTLINED_FUNCTION_61();
  result = sub_1B6220844();
  if (!v1)
  {
    OUTLINED_FUNCTION_91_1();
    result = sub_1B6220844();
    *v0 = v4;
    v0[1] = v3;
  }

  return result;
}

void DayForecast.write(to:)()
{
  OUTLINED_FUNCTION_109_1();
  OUTLINED_FUNCTION_44_3();
  sub_1B621D774();
  if (!v0)
  {
    type metadata accessor for DayForecast();
    OUTLINED_FUNCTION_66_1();
    OUTLINED_FUNCTION_36_4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926858);
    sub_1B6076E5C();
    sub_1B6076EB0();
    OUTLINED_FUNCTION_9_22();
    OUTLINED_FUNCTION_104_1();
    sub_1B6221A04();
    OUTLINED_FUNCTION_3_34();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9267D0);
    OUTLINED_FUNCTION_8_24();
    sub_1B6221A04();
    OUTLINED_FUNCTION_3_34();
    OUTLINED_FUNCTION_8_24();
    sub_1B6221A04();
    OUTLINED_FUNCTION_5_32();
    sub_1B6220854();
    OUTLINED_FUNCTION_36_4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926860);
    sub_1B6076FE8();
    sub_1B607703C();
    OUTLINED_FUNCTION_15_18();
    OUTLINED_FUNCTION_75_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600);
    sub_1B6221A04();
    OUTLINED_FUNCTION_18_15();
    OUTLINED_FUNCTION_26_10(v1[12]);
    OUTLINED_FUNCTION_5_32();
    sub_1B6220854();
    sub_1B60771A8();
    sub_1B60771FC();
    OUTLINED_FUNCTION_1_39();
    OUTLINED_FUNCTION_73_1();
    sub_1B62214E4();
    OUTLINED_FUNCTION_26_10(v1[14]);
    OUTLINED_FUNCTION_5_32();
    sub_1B6220854();
    OUTLINED_FUNCTION_36_4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926820);
    sub_1B6077250();
    sub_1B60772A4();
    OUTLINED_FUNCTION_15_18();
    OUTLINED_FUNCTION_107_0();
    sub_1B6221A04();
    OUTLINED_FUNCTION_26_10(v1[16]);
    OUTLINED_FUNCTION_5_32();
    sub_1B6220854();
    OUTLINED_FUNCTION_18_15();
    OUTLINED_FUNCTION_18_15();
    OUTLINED_FUNCTION_18_15();
    OUTLINED_FUNCTION_18_15();
    OUTLINED_FUNCTION_18_15();
    OUTLINED_FUNCTION_18_15();
    OUTLINED_FUNCTION_18_15();
    OUTLINED_FUNCTION_18_15();
    OUTLINED_FUNCTION_18_15();
    OUTLINED_FUNCTION_18_15();
    OUTLINED_FUNCTION_26_10(v1[27]);
    OUTLINED_FUNCTION_5_32();
    sub_1B6220854();
    OUTLINED_FUNCTION_18_15();
    OUTLINED_FUNCTION_26_10(v1[29]);
    OUTLINED_FUNCTION_5_32();
    sub_1B6220854();
    OUTLINED_FUNCTION_18_15();
    OUTLINED_FUNCTION_3_34();
    OUTLINED_FUNCTION_8_24();
    sub_1B6221A04();
    OUTLINED_FUNCTION_3_34();
    OUTLINED_FUNCTION_8_24();
    sub_1B6221A04();
    OUTLINED_FUNCTION_3_34();
    OUTLINED_FUNCTION_8_24();
    sub_1B6221A04();
    OUTLINED_FUNCTION_3_34();
    OUTLINED_FUNCTION_8_24();
    sub_1B6221A04();
    OUTLINED_FUNCTION_3_34();
    OUTLINED_FUNCTION_8_24();
    sub_1B6221A04();
    OUTLINED_FUNCTION_66();
    DayPartForecast.write(to:)();
    OUTLINED_FUNCTION_66();
    DayPartForecast.write(to:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925088);
    sub_1B6077C6C(&qword_1EDAB06A8, type metadata accessor for DayPartForecast);
    OUTLINED_FUNCTION_6_22();
    sub_1B6077C6C(v2, type metadata accessor for DayPartForecast);
    sub_1B6221A04();
  }

  OUTLINED_FUNCTION_110_1();
}

void DayPartForecast.write(to:)()
{
  OUTLINED_FUNCTION_94_1();
  OUTLINED_FUNCTION_44_3();
  sub_1B621D774();
  if (!v0)
  {
    type metadata accessor for DayPartForecast();
    OUTLINED_FUNCTION_66_1();
    OUTLINED_FUNCTION_66();
    sub_1B621D774();
    OUTLINED_FUNCTION_36_4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926868);
    sub_1B6077BC4();
    sub_1B6077C18();
    OUTLINED_FUNCTION_9_22();
    OUTLINED_FUNCTION_104_1();
    sub_1B6221A04();
    OUTLINED_FUNCTION_26_10(v1[7]);
    OUTLINED_FUNCTION_5_32();
    sub_1B6220854();
    OUTLINED_FUNCTION_26_10(v1[8]);
    OUTLINED_FUNCTION_5_32();
    sub_1B6220854();
    OUTLINED_FUNCTION_26_10(v1[9]);
    OUTLINED_FUNCTION_5_32();
    sub_1B6220854();
    OUTLINED_FUNCTION_26_10(v1[10]);
    OUTLINED_FUNCTION_5_32();
    sub_1B6220854();
    OUTLINED_FUNCTION_36_4();
    OUTLINED_FUNCTION_5_32();
    ConditionCode.write(to:)();
    OUTLINED_FUNCTION_26_10(v1[12]);
    OUTLINED_FUNCTION_5_32();
    sub_1B6220854();
    OUTLINED_FUNCTION_26_10(v1[13]);
    OUTLINED_FUNCTION_5_32();
    sub_1B6220854();
    OUTLINED_FUNCTION_26_10(v1[14]);
    OUTLINED_FUNCTION_5_32();
    sub_1B6220854();
    OUTLINED_FUNCTION_26_10(v1[15]);
    OUTLINED_FUNCTION_5_32();
    sub_1B6220854();
    OUTLINED_FUNCTION_3_34();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9267D0);
    OUTLINED_FUNCTION_8_24();
    sub_1B6221A04();
    sub_1B60771A8();
    sub_1B60771FC();
    OUTLINED_FUNCTION_1_39();
    sub_1B62214E4();
    OUTLINED_FUNCTION_26_10(v1[18]);
    OUTLINED_FUNCTION_5_32();
    sub_1B6220854();
    OUTLINED_FUNCTION_36_4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926820);
    sub_1B6077250();
    sub_1B60772A4();
    OUTLINED_FUNCTION_15_18();
    OUTLINED_FUNCTION_75_0();
    OUTLINED_FUNCTION_3_34();
    OUTLINED_FUNCTION_8_24();
    sub_1B6221A04();
    OUTLINED_FUNCTION_26_10(v1[21]);
    OUTLINED_FUNCTION_5_32();
    sub_1B6220854();
    OUTLINED_FUNCTION_26_10(v1[22]);
    OUTLINED_FUNCTION_5_32();
    sub_1B6220854();
    OUTLINED_FUNCTION_3_34();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9267D8);
    OUTLINED_FUNCTION_5_32();
    sub_1B6221A04();
    OUTLINED_FUNCTION_26_10(v1[24]);
    OUTLINED_FUNCTION_5_32();
    sub_1B6220854();
    OUTLINED_FUNCTION_26_10(v1[25]);
    OUTLINED_FUNCTION_5_32();
    sub_1B6220854();
    OUTLINED_FUNCTION_26_10(v1[26]);
    OUTLINED_FUNCTION_5_32();
    sub_1B6220854();
    OUTLINED_FUNCTION_26_10(v1[27]);
    OUTLINED_FUNCTION_5_32();
    sub_1B6220854();
    OUTLINED_FUNCTION_26_10(v1[28]);
    OUTLINED_FUNCTION_5_32();
    sub_1B6220854();
    OUTLINED_FUNCTION_26_10(v1[29]);
    OUTLINED_FUNCTION_5_32();
    sub_1B6220854();
    OUTLINED_FUNCTION_26_10(v1[30]);
    OUTLINED_FUNCTION_5_32();
    sub_1B6220854();
    OUTLINED_FUNCTION_26_10(v1[31]);
    OUTLINED_FUNCTION_5_32();
    sub_1B6220854();
    OUTLINED_FUNCTION_26_10(v1[32]);
    OUTLINED_FUNCTION_5_32();
    sub_1B6220854();
    OUTLINED_FUNCTION_26_10(v1[33]);
    OUTLINED_FUNCTION_5_32();
    sub_1B6220854();
    OUTLINED_FUNCTION_36_4();
    OUTLINED_FUNCTION_5_32();
    sub_1B6220854();
  }

  OUTLINED_FUNCTION_95_1();
}

uint64_t DaySummary.write(to:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9267D8);
  result = sub_1B6221A04();
  if (!v0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9267D0);
    OUTLINED_FUNCTION_59_1();
    OUTLINED_FUNCTION_59_1();
    OUTLINED_FUNCTION_59_1();
    return OUTLINED_FUNCTION_59_1();
  }

  return result;
}

uint64_t static DaySummary.read(from:)@<X0>(uint64_t a1@<X8>)
{
  result = sub_1B62219F4();
  if (!v1)
  {
    sub_1B62219F4();
    sub_1B62219F4();
    sub_1B62219F4();
    result = sub_1B62219F4();
    *a1 = v12;
    *(a1 + 8) = v13;
    *(a1 + 16) = v10;
    *(a1 + 24) = v11;
    *(a1 + 32) = v8;
    *(a1 + 40) = v9;
    *(a1 + 48) = v6;
    *(a1 + 56) = v7;
    *(a1 + 64) = v4;
    *(a1 + 72) = v5;
  }

  return result;
}

uint64_t static DayWeatherStatistics.read(from:)()
{
  OUTLINED_FUNCTION_61();
  result = sub_1B6220844();
  if (!v1)
  {
    sub_1B6182D4C();
    sub_1B6182DA0();
    OUTLINED_FUNCTION_29_9();
    sub_1B62219F4();
    sub_1B6182DF4();
    sub_1B6182E48();
    OUTLINED_FUNCTION_29_9();
    result = sub_1B62219F4();
    *v0 = v9;
    *(v0 + 8) = v6;
    *(v0 + 16) = v7;
    *(v0 + 24) = v8;
    *(v0 + 32) = v3;
    *(v0 + 48) = v4;
    *(v0 + 56) = v5;
  }

  return result;
}

unint64_t sub_1B6181A20()
{
  result = qword_1EB9267A0;
  if (!qword_1EB9267A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9267A0);
  }

  return result;
}

unint64_t sub_1B6181A74()
{
  result = qword_1EB9267A8;
  if (!qword_1EB9267A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9267A8);
  }

  return result;
}

uint64_t ForecastMinute.write(to:)()
{
  OUTLINED_FUNCTION_44_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600);
  OUTLINED_FUNCTION_66();
  result = sub_1B6221A04();
  if (!v0)
  {
    type metadata accessor for ForecastMinute();
    OUTLINED_FUNCTION_66_1();
    OUTLINED_FUNCTION_66();
    sub_1B6220854();
    OUTLINED_FUNCTION_66();
    sub_1B6220854();
    OUTLINED_FUNCTION_66();
    return sub_1B6220854();
  }

  return result;
}

uint64_t HistoricalFacts.write(to:)()
{
  type metadata accessor for HistoricalFact();
  OUTLINED_FUNCTION_58_0();
  sub_1B6077C6C(v1, v0);
  OUTLINED_FUNCTION_64_1(&qword_1EB9268A8);
  return OUTLINED_FUNCTION_20_12();
}

uint64_t static HistoricalFacts.read(from:)()
{
  OUTLINED_FUNCTION_61();
  type metadata accessor for HistoricalFact();
  OUTLINED_FUNCTION_58_0();
  sub_1B6077C6C(v3, v2);
  OUTLINED_FUNCTION_64_1(&qword_1EB9268A8);
  result = sub_1B62214D4();
  if (!v1)
  {
    *v0 = result;
  }

  return result;
}

uint64_t sub_1B6181CE4()
{
  result = sub_1B6220854();
  if (!v0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926870);
    sub_1B6182D4C();
    sub_1B6182DA0();
    OUTLINED_FUNCTION_60_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926888);
    sub_1B6182DF4();
    sub_1B6182E48();
    return OUTLINED_FUNCTION_60_1();
  }

  return result;
}

uint64_t static MonthWeatherStatistics.read(from:)()
{
  OUTLINED_FUNCTION_61();
  result = sub_1B6220844();
  if (!v1)
  {
    sub_1B6182D4C();
    sub_1B6182DA0();
    OUTLINED_FUNCTION_29_9();
    sub_1B62219F4();
    sub_1B6182DF4();
    sub_1B6182E48();
    OUTLINED_FUNCTION_29_9();
    result = sub_1B62219F4();
    *v0 = v9;
    *(v0 + 8) = v6;
    *(v0 + 16) = v7;
    *(v0 + 24) = v8;
    *(v0 + 32) = v3;
    *(v0 + 48) = v4;
    *(v0 + 56) = v5;
  }

  return result;
}

void sub_1B6181F54()
{
  OUTLINED_FUNCTION_112_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  Metadata.write(to:)();
  if (!v0)
  {
    v6(0);
    v4();
    v2();
    sub_1B62214E4();
  }

  OUTLINED_FUNCTION_113_1();
}

uint64_t Placement.write(to:)()
{
  sub_1B6182F44();
  sub_1B6182F98();
  result = sub_1B62214E4();
  if (!v0)
  {
    return PlacementLocation.write(to:)();
  }

  return result;
}

void static Placement.read(from:)()
{
  OUTLINED_FUNCTION_61();
  sub_1B6182F44();
  sub_1B6182F98();
  OUTLINED_FUNCTION_29_9();
  v2 = sub_1B62214D4();
  if (!v1)
  {
    v3 = v2;
    static PlacementLocation.read(from:)(&v5);
    v4 = v5;
    *v0 = v3;
    *(v0 + 8) = v4;
  }
}

void static PlacementLocation.read(from:)(_BYTE *a1@<X8>)
{
  OUTLINED_FUNCTION_88_1();
  if (!v1)
  {
    OUTLINED_FUNCTION_69_1();
    if (v3 >= 0xF)
    {
      sub_1B6220694();
      OUTLINED_FUNCTION_1_41();
      sub_1B6077C6C(v4, v5);
      v6 = OUTLINED_FUNCTION_17_18();
      OUTLINED_FUNCTION_43_2(v6, v7);
      OUTLINED_FUNCTION_14_1();
      (*(v8 + 104))();
      swift_willThrow();
    }

    else
    {
      *a1 = v3;
    }
  }
}

uint64_t Pollutant.write(to:)()
{
  OUTLINED_FUNCTION_101_1();
  result = PollutantType.write(to:)();
  if (!v0)
  {
    sub_1B6220854();
    return sub_1B6220854();
  }

  return result;
}

uint64_t PrecipitationAmountRange.write(to:)()
{
  OUTLINED_FUNCTION_101_1();
  result = CardinalDirection.write(to:)();
  if (!v0)
  {
    OUTLINED_FUNCTION_99_1();
    OUTLINED_FUNCTION_99_1();
    OUTLINED_FUNCTION_99_1();
    return OUTLINED_FUNCTION_99_1();
  }

  return result;
}

void static PrecipitationAmountRange.read(from:)()
{
  OUTLINED_FUNCTION_61();
  static CardinalDirection.read(from:)(&v7);
  if (!v1)
  {
    v2 = v7;
    OUTLINED_FUNCTION_98_1();
    OUTLINED_FUNCTION_98_1();
    OUTLINED_FUNCTION_98_1();
    OUTLINED_FUNCTION_91_1();
    sub_1B6220844();
    *v0 = v2;
    *(v0 + 8) = v6;
    *(v0 + 16) = v5;
    *(v0 + 24) = v4;
    *(v0 + 32) = v3;
  }
}

void TrendDeviation.write(to:)()
{
  OUTLINED_FUNCTION_94_1();
  OUTLINED_FUNCTION_44_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600);
  OUTLINED_FUNCTION_66();
  sub_1B6221A04();
  if (!v0)
  {
    type metadata accessor for TrendDeviation();
    OUTLINED_FUNCTION_66_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9268B0);
    sub_1B607FE40();
    sub_1B607FE94();
    OUTLINED_FUNCTION_23_12();
    OUTLINED_FUNCTION_73_1();
    sub_1B6221A04();
    OUTLINED_FUNCTION_23_12();
    OUTLINED_FUNCTION_73_1();
    sub_1B6221A04();
    OUTLINED_FUNCTION_23_12();
    OUTLINED_FUNCTION_73_1();
    sub_1B6221A04();
    OUTLINED_FUNCTION_23_12();
    OUTLINED_FUNCTION_73_1();
    sub_1B6221A04();
  }

  OUTLINED_FUNCTION_95_1();
}

void sub_1B6182834(_BYTE *a1@<X8>)
{
  OUTLINED_FUNCTION_88_1();
  if (!v1)
  {
    OUTLINED_FUNCTION_69_1();
    if (v3 >= 5)
    {
      sub_1B6220694();
      OUTLINED_FUNCTION_1_41();
      sub_1B6077C6C(v4, v5);
      v6 = OUTLINED_FUNCTION_17_18();
      OUTLINED_FUNCTION_43_2(v6, v7);
      OUTLINED_FUNCTION_14_1();
      (*(v8 + 104))();
      swift_willThrow();
    }

    else
    {
      *a1 = v3;
    }
  }
}

unint64_t sub_1B6182900()
{
  result = qword_1EB9267B0;
  if (!qword_1EB9267B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9267B0);
  }

  return result;
}

unint64_t sub_1B6182954()
{
  result = qword_1EB9267B8;
  if (!qword_1EB9267B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9267B8);
  }

  return result;
}

unint64_t sub_1B61829A8()
{
  result = qword_1EB9267C0;
  if (!qword_1EB9267C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9267C0);
  }

  return result;
}

unint64_t sub_1B61829FC()
{
  result = qword_1EB9267C8;
  if (!qword_1EB9267C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9267C8);
  }

  return result;
}

unint64_t sub_1B6182A50()
{
  result = qword_1EB926800;
  if (!qword_1EB926800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB926800);
  }

  return result;
}

unint64_t sub_1B6182AA4()
{
  result = qword_1EB926808;
  if (!qword_1EB926808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB926808);
  }

  return result;
}

unint64_t sub_1B6182AF8()
{
  result = qword_1EB926810;
  if (!qword_1EB926810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB926810);
  }

  return result;
}

unint64_t sub_1B6182B4C()
{
  result = qword_1EB926818;
  if (!qword_1EB926818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB926818);
  }

  return result;
}

unint64_t sub_1B6182BA0()
{
  result = qword_1EB926830;
  if (!qword_1EB926830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB926830);
  }

  return result;
}

unint64_t sub_1B6182BF4()
{
  result = qword_1EB926838;
  if (!qword_1EB926838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB926838);
  }

  return result;
}

unint64_t sub_1B6182C48()
{
  result = qword_1EB926840;
  if (!qword_1EB926840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB926840);
  }

  return result;
}

unint64_t sub_1B6182C9C()
{
  result = qword_1EB926848;
  if (!qword_1EB926848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB926848);
  }

  return result;
}

uint64_t sub_1B6182CF0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_10_6();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1B6182D4C()
{
  result = qword_1EB926878;
  if (!qword_1EB926878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB926878);
  }

  return result;
}

unint64_t sub_1B6182DA0()
{
  result = qword_1EB926880;
  if (!qword_1EB926880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB926880);
  }

  return result;
}

unint64_t sub_1B6182DF4()
{
  result = qword_1EB926890;
  if (!qword_1EB926890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB926890);
  }

  return result;
}

unint64_t sub_1B6182E48()
{
  result = qword_1EB926898;
  if (!qword_1EB926898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB926898);
  }

  return result;
}

unint64_t sub_1B6182E9C()
{
  result = qword_1EDAAEB68;
  if (!qword_1EDAAEB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAAEB68);
  }

  return result;
}

unint64_t sub_1B6182EF0()
{
  result = qword_1EDAAEB60;
  if (!qword_1EDAAEB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAAEB60);
  }

  return result;
}

unint64_t sub_1B6182F44()
{
  result = qword_1EDAAEBE8;
  if (!qword_1EDAAEBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAAEBE8);
  }

  return result;
}

unint64_t sub_1B6182F98()
{
  result = qword_1EDAAEBE0;
  if (!qword_1EDAAEBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAAEBE0);
  }

  return result;
}

void WeatherComparisons.write(to:)()
{
  OUTLINED_FUNCTION_112_1();
  type metadata accessor for WeatherComparison();
  OUTLINED_FUNCTION_52_2();
  sub_1B6077C6C(v2, v1);
  OUTLINED_FUNCTION_63_1(&qword_1EDAAF430);
  sub_1B62214E4();
  if (!v0)
  {
    type metadata accessor for WeatherComparisons();
    Metadata.write(to:)();
  }

  OUTLINED_FUNCTION_113_1();
}

void static WeatherComparisons.read(from:)()
{
  OUTLINED_FUNCTION_112_1();
  OUTLINED_FUNCTION_61();
  v3 = type metadata accessor for Metadata();
  v4 = OUTLINED_FUNCTION_0(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_14();
  v7 = v6 - v5;
  type metadata accessor for WeatherComparison();
  OUTLINED_FUNCTION_52_2();
  sub_1B6077C6C(v8, v2);
  OUTLINED_FUNCTION_63_1(&qword_1EDAAF430);
  v9 = sub_1B62214D4();
  if (!v1)
  {
    v10 = v9;
    static Metadata.read(from:)(v7);
    *v0 = v10;
    type metadata accessor for WeatherComparisons();
    OUTLINED_FUNCTION_2_6();
    sub_1B604CB80(v7, v0 + v11, v12);
  }

  OUTLINED_FUNCTION_113_1();
}

uint64_t OUTLINED_FUNCTION_98_1()
{

  return sub_1B6220844();
}

uint64_t OUTLINED_FUNCTION_111_1()
{

  return type metadata accessor for Metadata();
}

uint64_t Double.humanReadableDescription.getter(double a1)
{
  if (a1 <= 3600.0)
  {
    if (a1 <= 60.0)
    {
      sub_1B6221704();
      v1 = 0x73646E6F63657320;
    }

    else
    {
      sub_1B6221704();
      v1 = 0x736574756E696D20;
    }

    v2 = 0xE800000000000000;
  }

  else
  {
    sub_1B6221704();
    v1 = 0x7372756F6820;
    v2 = 0xE600000000000000;
  }

  MEMORY[0x1B8C90530](v1, v2);
  return 0;
}

WeatherDaemon::PlacementLocation_optional __swiftcall PlacementLocation.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B6221CD4();

  v5 = 15;
  if (v3 < 0xF)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t PlacementLocation.rawValue.getter()
{
  result = 0x5445445F4E4F4F4DLL;
  switch(*v0)
  {
    case 1:
      OUTLINED_FUNCTION_0_69();
      result = v5 + 11;
      break;
    case 2:
      OUTLINED_FUNCTION_0_69();
      result = v4 - 3;
      break;
    case 3:
      return result;
    case 4:
      OUTLINED_FUNCTION_0_69();
      result = v3 + 2;
      break;
    case 5:
      OUTLINED_FUNCTION_0_69();
      result = v6 + 7;
      break;
    case 6:
      OUTLINED_FUNCTION_0_69();
      result = v8 + 1;
      break;
    case 7:
      result = 0x575F455245564553;
      break;
    case 8:
      OUTLINED_FUNCTION_0_69();
      result = v9 + 3;
      break;
    case 9:
      result = 0xD000000000000013;
      break;
    case 0xA:
      result = 0x53444E455254;
      break;
    case 0xB:
      OUTLINED_FUNCTION_0_69();
      result = v2 + 5;
      break;
    case 0xC:
      result = 0x49415445445F5655;
      break;
    case 0xD:
      OUTLINED_FUNCTION_0_69();
      result = v7 - 1;
      break;
    case 0xE:
      result = 0x5445445F444E4957;
      break;
    default:
      result = 0xD000000000000013;
      break;
  }

  return result;
}

unint64_t sub_1B6183B9C()
{
  result = qword_1EB9268B8;
  if (!qword_1EB9268B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9268B8);
  }

  return result;
}

unint64_t sub_1B6183C14@<X0>(unint64_t *a1@<X8>)
{
  result = PlacementLocation.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for PlacementLocation(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF2)
  {
    if (a2 + 14 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 14) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 15;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v5 = v6 - 15;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PlacementLocation(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF1)
  {
    v6 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
          *result = a2 + 14;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1B6183E80()
{
  result = qword_1EDAAEE88;
  if (!qword_1EDAAEE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAAEE88);
  }

  return result;
}

uint64_t Importance.init(from:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_0_9();
  sub_1B62220C4();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v8, v8[3]);
    OUTLINED_FUNCTION_0_9();
    sub_1B6221F44();
    __swift_destroy_boxed_opaque_existential_1(v8);
    v5 = sub_1B6221CD4();

    if (v5 >= 4)
    {
      v6 = 3;
    }

    else
    {
      v6 = v5;
    }

    *a2 = v6;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

WeatherDaemon::Importance_optional __swiftcall Importance.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B6221CD4();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t Importance.rawValue.getter()
{
  result = 1212631368;
  switch(*v0)
  {
    case 1:
      result = 5721932;
      break;
    case 2:
      result = 0x4C414D524F4ELL;
      break;
    case 3:
      result = 0x4E574F4E4B4E55;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1B6184084()
{
  result = qword_1EB9268C0[0];
  if (!qword_1EB9268C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB9268C0);
  }

  return result;
}

uint64_t sub_1B61840FC@<X0>(uint64_t *a1@<X8>)
{
  result = Importance.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for Importance(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1B6184298()
{
  result = qword_1EDAAFAF0;
  if (!qword_1EDAAFAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAAFAF0);
  }

  return result;
}

Swift::Bool __swiftcall GeoJSON.FeatureCollection.contains(_:)(__C::CLLocationCoordinate2D a1)
{
  if (*(v1 + 8))
  {
    (MEMORY[0x1EEE9AC00])();
    type metadata accessor for GeoJSON.Feature();
    sub_1B6221584();
    swift_getWitnessTable();
    v2 = sub_1B62213E4();
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

BOOL static GeoJSON.FeatureCollection.== infix(_:_:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v42 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B6221A14();
  OUTLINED_FUNCTION_2();
  v12 = v11;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v38 - v14;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_2();
  v43 = v17;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v38 - v19;
  v21 = *a2;
  if (*a1)
  {
    if (!v21 || (sub_1B60950A0(*a1, v21) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v21)
  {
    return 0;
  }

  v40 = v12;
  v41 = a4;
  v22 = a2[1];
  if (a1[1])
  {
    if (!v22)
    {
      return 0;
    }

    v39 = v8;
    OUTLINED_FUNCTION_3_35();
    type metadata accessor for GeoJSON.Feature();
    sub_1B6220784();
    swift_getWitnessTable();
    v23 = sub_1B6221594();

    if ((v23 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v39 = v8;
    if (v22)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_3_35();
  v24 = *(type metadata accessor for GeoJSON.FeatureCollection() + 40);
  v25 = *(v40 + 16);
  v26 = a1 + v24;
  v27 = *(TupleTypeMetadata2 + 48);
  v25(v20, v26, v10);
  v25(&v20[v27], a2 + v24, v10);
  OUTLINED_FUNCTION_6_1(v20);
  if (v30)
  {
    OUTLINED_FUNCTION_6_1(&v20[v27]);
    if (v30)
    {
      v28 = OUTLINED_FUNCTION_6_23();
      v29(v28);
      return 1;
    }

    goto LABEL_19;
  }

  v25(v15, v20, v10);
  OUTLINED_FUNCTION_6_1(&v20[v27]);
  if (v30)
  {
    (*(v39 + 8))(v15, a3);
LABEL_19:
    (*(v43 + 8))(v20, TupleTypeMetadata2);
    return 0;
  }

  v32 = v39;
  v33 = v42;
  (*(v39 + 32))(v42, &v20[v27], a3);
  v34 = sub_1B62211A4();
  v35 = *(v32 + 8);
  v35(v33, a3);
  v35(v15, a3);
  v36 = OUTLINED_FUNCTION_6_23();
  v37(v36);
  return (v34 & 1) != 0;
}

uint64_t GeoJSON.FeatureCollection.properties.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = sub_1B6221A14();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t GeoJSON.FeatureCollection.init(boundingBox:features:properties:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  *(a4 + 1) = a2;
  v6 = *(type metadata accessor for GeoJSON.FeatureCollection() + 40);
  v7 = sub_1B6221A14();
  v8 = *(*(v7 - 8) + 32);

  return v8(&a4[v6], a3, v7);
}

uint64_t sub_1B6184910()
{
  v0 = sub_1B6221CD4();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1B6184960(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6180];

  return MEMORY[0x1EEE6B350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1B61849D4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69348](a1, a2, WitnessTable, v5);
}

uint64_t sub_1B6184A40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69358](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1B6184AB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1B6184B20@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B6184910();
  *a1 = result;
  return result;
}

uint64_t sub_1B6184B58@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B6087314(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1B6184B94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  result = sub_1B618495C(a1, a2, *(a3 + 16), *(a3 + 24));
  *a4 = result;
  return result;
}

uint64_t sub_1B6184BC4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1B6184C18(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t GeoJSON.FeatureCollection.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X2>, char *a3@<X8>)
{
  v32 = a3;
  sub_1B6221A14();
  OUTLINED_FUNCTION_2();
  v30 = v6;
  v31 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v26 - v10;
  v34 = a2;
  _s17FeatureCollectionV10CodingKeysOMa();
  OUTLINED_FUNCTION_1_42();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_3_35();
  v35 = sub_1B6221E04();
  OUTLINED_FUNCTION_2();
  v33 = v12;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v26 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v36 = v15;
  v16 = a1;
  v17 = v37;
  sub_1B62220D4();
  if (!v17)
  {
    v37 = v11;
    v29 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925458);
    v39 = 1;
    sub_1B60D45BC(&qword_1EB925460);
    sub_1B6221D84();
    v28 = a1;
    v18 = v40;
    type metadata accessor for GeoJSON.Feature();
    OUTLINED_FUNCTION_3_35();
    sub_1B6221584();
    v39 = 2;
    WitnessTable = swift_getWitnessTable();
    swift_getWitnessTable();
    sub_1B6221D84();
    v27 = v18;
    v19 = v40;
    LOBYTE(v40) = 3;
    v20 = v37;
    sub_1B6221D84();
    v16 = v28;
    v21 = OUTLINED_FUNCTION_2_39();
    v22(v21);
    v23 = v19;
    v24 = v29;
    (*(v30 + 32))(v29, v20, v31);
    GeoJSON.FeatureCollection.init(boundingBox:features:properties:)(v27, v23, v24, v32);
  }

  return __swift_destroy_boxed_opaque_existential_1(v16);
}

uint64_t GeoJSON.FeatureCollection.encode(to:)(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v15[0] = *(a2 + 24);
  v15[1] = v4;
  _s17FeatureCollectionV10CodingKeysOMa();
  OUTLINED_FUNCTION_1_42();
  swift_getWitnessTable();
  v5 = sub_1B6221EE4();
  OUTLINED_FUNCTION_2();
  v7 = v6;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v15 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B62220F4();
  LOBYTE(v20) = 0;
  v11 = v17;
  sub_1B6221E84();
  if (v11)
  {
    return (*(v7 + 8))(v10, v5);
  }

  v17 = a2;
  v13 = v7;
  v14 = v16;
  v20 = *v16;
  v19 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925458);
  sub_1B60D45BC(&qword_1EB925498);
  OUTLINED_FUNCTION_5_33();
  sub_1B6221E74();
  v20 = v14[1];
  v19 = 2;
  type metadata accessor for GeoJSON.Feature();
  OUTLINED_FUNCTION_3_35();
  sub_1B6221584();
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_5_33();
  sub_1B6221E74();
  LOBYTE(v20) = 3;
  sub_1B6221E74();
  return (*(v13 + 8))(v10, v5);
}

void sub_1B6185360()
{
  sub_1B61858F8();
  if (v0 <= 0x3F)
  {
    type metadata accessor for GeoJSON.Feature();
    sub_1B6221584();
    sub_1B6221A14();
    if (v1 <= 0x3F)
    {
      sub_1B6221A14();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1B6185420(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  if (v6)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = 0;
  }

  if (v7 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(v5 + 80);
  v10 = *(*(v4 - 8) + 64);
  if (!v6)
  {
    ++v10;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_28;
  }

  v12 = v10 + ((v9 + 16) & ~v9);
  v13 = 8 * v12;
  if (v12 <= 3)
  {
    v16 = ((v11 + ~(-1 << v13)) >> v13) + 1;
    if (HIWORD(v16))
    {
      v14 = *(a1 + v12);
      if (!v14)
      {
        goto LABEL_28;
      }

      goto LABEL_20;
    }

    if (v16 > 0xFF)
    {
      v14 = *(a1 + v12);
      if (!*(a1 + v12))
      {
        goto LABEL_28;
      }

      goto LABEL_20;
    }

    if (v16 < 2)
    {
LABEL_28:
      if (v7 > 0x7FFFFFFE)
      {
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v9 + 8) & ~v9, v6, v4);
        if (EnumTagSinglePayload >= 2)
        {
          return EnumTagSinglePayload - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v18 = *a1;
        if (*a1 >= 0xFFFFFFFFuLL)
        {
          LODWORD(v18) = -1;
        }

        if ((v18 + 1) >= 2)
        {
          return v18;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v14 = *(a1 + v12);
  if (!*(a1 + v12))
  {
    goto LABEL_28;
  }

LABEL_20:
  v17 = (v14 - 1) << v13;
  if (v12 > 3)
  {
    v17 = 0;
  }

  if (v12)
  {
    if (v12 > 3)
    {
      LODWORD(v12) = 4;
    }

    switch(v12)
    {
      case 2:
        LODWORD(v12) = *a1;
        break;
      case 3:
        LODWORD(v12) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v12) = *a1;
        break;
      default:
        LODWORD(v12) = *a1;
        break;
    }
  }

  return v8 + (v12 | v17) + 1;
}

void sub_1B61855EC(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = v9 - 1;
  if (!v9)
  {
    v10 = 0;
  }

  if (v10 <= 0x7FFFFFFE)
  {
    v11 = 2147483646;
  }

  else
  {
    v11 = v10;
  }

  v12 = *(v8 + 80);
  v13 = (v12 + 16) & ~v12;
  v14 = *(*(v7 - 8) + 64);
  if (!v9)
  {
    ++v14;
  }

  v15 = v13 + v14;
  v16 = 8 * (v13 + v14);
  v17 = a3 >= v11;
  v18 = a3 - v11;
  if (v18 != 0 && v17)
  {
    if (v15 <= 3)
    {
      v19 = ((v18 + ~(-1 << v16)) >> v16) + 1;
      if (HIWORD(v19))
      {
        v6 = 4;
      }

      else
      {
        if (v19 < 0x100)
        {
          v20 = 1;
        }

        else
        {
          v20 = 2;
        }

        if (v19 >= 2)
        {
          v6 = v20;
        }

        else
        {
          v6 = 0;
        }
      }
    }

    else
    {
      v6 = 1;
    }
  }

  if (v11 >= a2)
  {
    switch(v6)
    {
      case 1:
        a1[v15] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v15] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_61:
        __break(1u);
        break;
      case 4:
        *&a1[v15] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if (v10 > 0x7FFFFFFE)
          {
            v24 = ((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v12 + 8) & ~v12);
            if (v10 >= a2)
            {
              v28 = a2 + 1;
              v29 = (((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v12 + 8) & ~v12;

              __swift_storeEnumTagSinglePayload(v29, v28, v9, v7);
            }

            else
            {
              if (v14 <= 3)
              {
                v25 = ~(-1 << (8 * v14));
              }

              else
              {
                v25 = -1;
              }

              if (v14)
              {
                v26 = v25 & (~v10 + a2);
                if (v14 <= 3)
                {
                  v27 = v14;
                }

                else
                {
                  v27 = 4;
                }

                bzero(v24, v14);
                switch(v27)
                {
                  case 2:
                    *v24 = v26;
                    break;
                  case 3:
                    *v24 = v26;
                    v24[2] = BYTE2(v26);
                    break;
                  case 4:
                    *v24 = v26;
                    break;
                  default:
                    *v24 = v26;
                    break;
                }
              }
            }
          }

          else if (a2 > 0x7FFFFFFE)
          {
            *a1 = 0;
            *a1 = a2 - 0x7FFFFFFF;
          }

          else
          {
            *a1 = a2;
          }
        }

        break;
    }
  }

  else
  {
    v21 = ~v11 + a2;
    if (v15 < 4)
    {
      v22 = (v21 >> v16) + 1;
      if (v15)
      {
        v23 = v21 & ~(-1 << v16);
        bzero(a1, v15);
        if (v15 == 3)
        {
          *a1 = v23;
          a1[2] = BYTE2(v23);
        }

        else if (v15 == 2)
        {
          *a1 = v23;
        }

        else
        {
          *a1 = v21;
        }
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v21;
      v22 = 1;
    }

    switch(v6)
    {
      case 1:
        a1[v15] = v22;
        break;
      case 2:
        *&a1[v15] = v22;
        break;
      case 3:
        goto LABEL_61;
      case 4:
        *&a1[v15] = v22;
        break;
      default:
        return;
    }
  }
}

void sub_1B61858F8()
{
  if (!qword_1EB925538)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB925458);
    v0 = sub_1B6221A14();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB925538);
    }
  }
}

_BYTE *sub_1B618595C(_BYTE *result, unsigned int a2, unsigned int a3)
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

WeatherDaemon::WeatherRequestHourlyRelativeRange::RelativeTo_optional __swiftcall WeatherRequestHourlyRelativeRange.RelativeTo.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B6221CD4();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t WeatherRequestHourlyRelativeRange.RelativeTo.rawValue.getter()
{
  if (*v0)
  {
    return 7827310;
  }

  else
  {
    return 7954788;
  }
}

uint64_t sub_1B6185B10(char a1)
{
  result = 0x7472617473;
  switch(a1)
  {
    case 1:
      result = 6581861;
      break;
    case 2:
      result = 0x65766974616C6572;
      break;
    case 3:
      result = 7827310;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B6185BB4@<X0>(uint64_t *a1@<X8>)
{
  result = WeatherRequestHourlyRelativeRange.RelativeTo.rawValue.getter();
  *a1 = result;
  a1[1] = 0xE300000000000000;
  return result;
}

uint64_t sub_1B6185C98(uint64_t a1)
{
  v2 = sub_1B6185EF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B6185CD4(uint64_t a1)
{
  v2 = sub_1B6185EF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WeatherRequestHourlyRelativeRange.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9269D0);
  OUTLINED_FUNCTION_2();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v12[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6185EF8();
  sub_1B62220F4();
  v12[15] = 0;
  OUTLINED_FUNCTION_1_43();
  sub_1B6221EB4();
  if (!v2)
  {
    v12[14] = 1;
    OUTLINED_FUNCTION_1_43();
    sub_1B6221EB4();
    v12[13] = *(v3 + 16);
    v12[12] = 2;
    sub_1B6185F4C();
    OUTLINED_FUNCTION_1_43();
    sub_1B6221EC4();
    type metadata accessor for WeatherRequestHourlyRelativeRange();
    v12[11] = 3;
    sub_1B621D8F4();
    sub_1B609F140(&unk_1EDAB20F8);
    sub_1B6221EC4();
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_1B6185EF8()
{
  result = qword_1EB9269D8;
  if (!qword_1EB9269D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9269D8);
  }

  return result;
}

unint64_t sub_1B6185F4C()
{
  result = qword_1EB9269E0;
  if (!qword_1EB9269E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9269E0);
  }

  return result;
}

uint64_t WeatherRequestHourlyRelativeRange.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = sub_1B621D8F4();
  OUTLINED_FUNCTION_2();
  v22 = v5;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9269E8);
  OUTLINED_FUNCTION_2();
  v24 = v10;
  v25 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v21 - v11;
  v13 = type metadata accessor for WeatherRequestHourlyRelativeRange();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v26 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1B6185EF8();
  sub_1B62220D4();
  if (!v2)
  {
    v17 = v15;
    v31 = 0;
    v18 = v24;
    OUTLINED_FUNCTION_1_26();
    *v17 = sub_1B6221DC4();
    v30 = 1;
    OUTLINED_FUNCTION_1_26();
    *(v17 + 8) = sub_1B6221DC4();
    v28 = 2;
    sub_1B61862C4();
    OUTLINED_FUNCTION_1_26();
    sub_1B6221DD4();
    *(v17 + 16) = v29;
    v27 = 3;
    sub_1B609F140(&qword_1EDAB20F0);
    v21 = v8;
    v20 = v25;
    OUTLINED_FUNCTION_1_26();
    sub_1B6221DD4();
    (*(v18 + 8))(v12, v20);
    (*(v22 + 32))(v17 + *(v13 + 28), v21, v4);
    sub_1B6186318(v17, v23);
  }

  return __swift_destroy_boxed_opaque_existential_1(v26);
}

unint64_t sub_1B61862C4()
{
  result = qword_1EB9269F0;
  if (!qword_1EB9269F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9269F0);
  }

  return result;
}

uint64_t sub_1B6186318(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WeatherRequestHourlyRelativeRange();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B6186380()
{
  result = qword_1EB9269F8;
  if (!qword_1EB9269F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9269F8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WeatherRequestHourlyRelativeRange.RelativeTo(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for WeatherRequestHourlyRelativeRange.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1B61865B0()
{
  result = qword_1EB926A00;
  if (!qword_1EB926A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB926A00);
  }

  return result;
}

unint64_t sub_1B6186608()
{
  result = qword_1EB926A08;
  if (!qword_1EB926A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB926A08);
  }

  return result;
}

unint64_t sub_1B6186660()
{
  result = qword_1EB926A10;
  if (!qword_1EB926A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB926A10);
  }

  return result;
}

unint64_t sub_1B61866B4()
{
  result = qword_1EB926A18;
  if (!qword_1EB926A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB926A18);
  }

  return result;
}

uint64_t DayForecast.forecastStart.setter()
{
  OUTLINED_FUNCTION_3();
  sub_1B621D8F4();
  OUTLINED_FUNCTION_9();
  v4 = *(v3 + 40);

  return v4(v1, v0, v2);
}

uint64_t DayForecast.conditionCode.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for DayForecast();
  *(v1 + *(result + 20)) = v2;
  return result;
}

uint64_t DayForecast.conditionCode.modify()
{
  OUTLINED_FUNCTION_3();
  type metadata accessor for DayForecast();
  return OUTLINED_FUNCTION_5();
}

uint64_t DayForecast.humidityMax.modify()
{
  OUTLINED_FUNCTION_3();
  type metadata accessor for DayForecast();
  return OUTLINED_FUNCTION_5();
}

uint64_t DayForecast.humidityMin.modify()
{
  OUTLINED_FUNCTION_3();
  type metadata accessor for DayForecast();
  return OUTLINED_FUNCTION_5();
}

uint64_t DayForecast.maxUvIndex.setter()
{
  OUTLINED_FUNCTION_3();
  result = type metadata accessor for DayForecast();
  *(v1 + *(result + 32)) = v0;
  return result;
}

uint64_t DayForecast.maxUvIndex.modify()
{
  OUTLINED_FUNCTION_3();
  type metadata accessor for DayForecast();
  return OUTLINED_FUNCTION_5();
}

uint64_t DayForecast.moonPhase.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for DayForecast();
  *(v1 + *(result + 36)) = v2;
  return result;
}

uint64_t DayForecast.moonPhase.modify()
{
  OUTLINED_FUNCTION_3();
  type metadata accessor for DayForecast();
  return OUTLINED_FUNCTION_5();
}

uint64_t DayForecast.moonrise.setter()
{
  OUTLINED_FUNCTION_3();
  type metadata accessor for DayForecast();
  v0 = OUTLINED_FUNCTION_20_13();
  return sub_1B60725F8(v0, v1, v2);
}

uint64_t DayForecast.moonrise.modify()
{
  OUTLINED_FUNCTION_3();
  type metadata accessor for DayForecast();
  return OUTLINED_FUNCTION_5();
}

uint64_t DayForecast.moonset.setter()
{
  OUTLINED_FUNCTION_3();
  type metadata accessor for DayForecast();
  v0 = OUTLINED_FUNCTION_20_13();
  return sub_1B60725F8(v0, v1, v2);
}

uint64_t DayForecast.moonset.modify()
{
  OUTLINED_FUNCTION_3();
  type metadata accessor for DayForecast();
  return OUTLINED_FUNCTION_5();
}

uint64_t DayForecast.precipitationAmount.setter()
{
  result = OUTLINED_FUNCTION_36_5();
  *(v0 + *(result + 48)) = v1;
  return result;
}

uint64_t DayForecast.precipitationAmount.modify()
{
  OUTLINED_FUNCTION_3();
  type metadata accessor for DayForecast();
  return OUTLINED_FUNCTION_5();
}

uint64_t DayForecast.precipitationAmountByType.setter()
{
  OUTLINED_FUNCTION_3();
  v2 = *(type metadata accessor for DayForecast() + 52);

  *(v1 + v2) = v0;
  return result;
}

uint64_t DayForecast.precipitationAmountByType.modify()
{
  OUTLINED_FUNCTION_3();
  type metadata accessor for DayForecast();
  return OUTLINED_FUNCTION_5();
}

uint64_t DayForecast.precipitationChance.setter()
{
  result = OUTLINED_FUNCTION_36_5();
  *(v0 + *(result + 56)) = v1;
  return result;
}

uint64_t DayForecast.precipitationChance.modify()
{
  OUTLINED_FUNCTION_3();
  type metadata accessor for DayForecast();
  return OUTLINED_FUNCTION_5();
}

uint64_t DayForecast.precipitationType.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for DayForecast();
  *(v1 + *(result + 60)) = v2;
  return result;
}

uint64_t DayForecast.precipitationType.modify()
{
  OUTLINED_FUNCTION_3();
  type metadata accessor for DayForecast();
  return OUTLINED_FUNCTION_5();
}

uint64_t DayForecast.snowfallAmount.setter()
{
  result = OUTLINED_FUNCTION_36_5();
  *(v0 + *(result + 64)) = v1;
  return result;
}

uint64_t DayForecast.snowfallAmount.modify()
{
  OUTLINED_FUNCTION_3();
  type metadata accessor for DayForecast();
  return OUTLINED_FUNCTION_5();
}

uint64_t DayForecast.solarNoon.setter()
{
  OUTLINED_FUNCTION_3();
  type metadata accessor for DayForecast();
  v0 = OUTLINED_FUNCTION_20_13();
  return sub_1B60725F8(v0, v1, v2);
}

uint64_t DayForecast.solarNoon.modify()
{
  OUTLINED_FUNCTION_3();
  type metadata accessor for DayForecast();
  return OUTLINED_FUNCTION_5();
}

uint64_t DayForecast.solarMidnight.setter()
{
  OUTLINED_FUNCTION_3();
  type metadata accessor for DayForecast();
  v0 = OUTLINED_FUNCTION_20_13();
  return sub_1B60725F8(v0, v1, v2);
}

uint64_t DayForecast.solarMidnight.modify()
{
  OUTLINED_FUNCTION_3();
  type metadata accessor for DayForecast();
  return OUTLINED_FUNCTION_5();
}

uint64_t DayForecast.sunrise.setter()
{
  OUTLINED_FUNCTION_3();
  type metadata accessor for DayForecast();
  v0 = OUTLINED_FUNCTION_20_13();
  return sub_1B60725F8(v0, v1, v2);
}

uint64_t DayForecast.sunrise.modify()
{
  OUTLINED_FUNCTION_3();
  type metadata accessor for DayForecast();
  return OUTLINED_FUNCTION_5();
}

uint64_t DayForecast.sunriseAstronomical.setter()
{
  OUTLINED_FUNCTION_3();
  type metadata accessor for DayForecast();
  v0 = OUTLINED_FUNCTION_20_13();
  return sub_1B60725F8(v0, v1, v2);
}

uint64_t DayForecast.sunriseAstronomical.modify()
{
  OUTLINED_FUNCTION_3();
  type metadata accessor for DayForecast();
  return OUTLINED_FUNCTION_5();
}

uint64_t DayForecast.sunriseCivil.setter()
{
  OUTLINED_FUNCTION_3();
  type metadata accessor for DayForecast();
  v0 = OUTLINED_FUNCTION_20_13();
  return sub_1B60725F8(v0, v1, v2);
}

uint64_t DayForecast.sunriseCivil.modify()
{
  OUTLINED_FUNCTION_3();
  type metadata accessor for DayForecast();
  return OUTLINED_FUNCTION_5();
}

uint64_t DayForecast.sunriseNautical.setter()
{
  OUTLINED_FUNCTION_3();
  type metadata accessor for DayForecast();
  v0 = OUTLINED_FUNCTION_20_13();
  return sub_1B60725F8(v0, v1, v2);
}

uint64_t DayForecast.sunriseNautical.modify()
{
  OUTLINED_FUNCTION_3();
  type metadata accessor for DayForecast();
  return OUTLINED_FUNCTION_5();
}

uint64_t DayForecast.sunset.setter()
{
  OUTLINED_FUNCTION_3();
  type metadata accessor for DayForecast();
  v0 = OUTLINED_FUNCTION_20_13();
  return sub_1B60725F8(v0, v1, v2);
}

uint64_t DayForecast.sunset.modify()
{
  OUTLINED_FUNCTION_3();
  type metadata accessor for DayForecast();
  return OUTLINED_FUNCTION_5();
}

uint64_t DayForecast.sunsetAstronomical.setter()
{
  OUTLINED_FUNCTION_3();
  type metadata accessor for DayForecast();
  v0 = OUTLINED_FUNCTION_20_13();
  return sub_1B60725F8(v0, v1, v2);
}

uint64_t DayForecast.sunsetAstronomical.modify()
{
  OUTLINED_FUNCTION_3();
  type metadata accessor for DayForecast();
  return OUTLINED_FUNCTION_5();
}

uint64_t DayForecast.sunsetCivil.setter()
{
  OUTLINED_FUNCTION_3();
  type metadata accessor for DayForecast();
  v0 = OUTLINED_FUNCTION_20_13();
  return sub_1B60725F8(v0, v1, v2);
}

uint64_t DayForecast.sunsetCivil.modify()
{
  OUTLINED_FUNCTION_3();
  type metadata accessor for DayForecast();
  return OUTLINED_FUNCTION_5();
}

uint64_t DayForecast.sunsetNautical.setter()
{
  OUTLINED_FUNCTION_3();
  type metadata accessor for DayForecast();
  v0 = OUTLINED_FUNCTION_20_13();
  return sub_1B60725F8(v0, v1, v2);
}

uint64_t DayForecast.sunsetNautical.modify()
{
  OUTLINED_FUNCTION_3();
  type metadata accessor for DayForecast();
  return OUTLINED_FUNCTION_5();
}

uint64_t DayForecast.temperatureMax.setter()
{
  result = OUTLINED_FUNCTION_36_5();
  *(v0 + *(result + 108)) = v1;
  return result;
}

uint64_t DayForecast.temperatureMax.modify()
{
  OUTLINED_FUNCTION_3();
  type metadata accessor for DayForecast();
  return OUTLINED_FUNCTION_5();
}

uint64_t DayForecast.temperatureMaxTime.setter()
{
  OUTLINED_FUNCTION_3();
  type metadata accessor for DayForecast();
  v0 = OUTLINED_FUNCTION_20_13();
  return sub_1B60725F8(v0, v1, v2);
}

uint64_t DayForecast.temperatureMaxTime.modify()
{
  OUTLINED_FUNCTION_3();
  type metadata accessor for DayForecast();
  return OUTLINED_FUNCTION_5();
}

uint64_t DayForecast.temperatureMin.setter()
{
  result = OUTLINED_FUNCTION_36_5();
  *(v0 + *(result + 116)) = v1;
  return result;
}

uint64_t DayForecast.temperatureMin.modify()
{
  OUTLINED_FUNCTION_3();
  type metadata accessor for DayForecast();
  return OUTLINED_FUNCTION_5();
}

uint64_t DayForecast.temperatureMinTime.setter()
{
  OUTLINED_FUNCTION_3();
  type metadata accessor for DayForecast();
  v0 = OUTLINED_FUNCTION_20_13();
  return sub_1B60725F8(v0, v1, v2);
}

uint64_t DayForecast.temperatureMinTime.modify()
{
  OUTLINED_FUNCTION_3();
  type metadata accessor for DayForecast();
  return OUTLINED_FUNCTION_5();
}

uint64_t DayForecast.visibilityMax.modify()
{
  OUTLINED_FUNCTION_3();
  type metadata accessor for DayForecast();
  return OUTLINED_FUNCTION_5();
}

uint64_t DayForecast.visibilityMin.modify()
{
  OUTLINED_FUNCTION_3();
  type metadata accessor for DayForecast();
  return OUTLINED_FUNCTION_5();
}

uint64_t DayForecast.windGustSpeedMax.modify()
{
  OUTLINED_FUNCTION_3();
  type metadata accessor for DayForecast();
  return OUTLINED_FUNCTION_5();
}

uint64_t DayForecast.windSpeedAvg.modify()
{
  OUTLINED_FUNCTION_3();
  type metadata accessor for DayForecast();
  return OUTLINED_FUNCTION_5();
}

uint64_t DayForecast.windSpeedMax.modify()
{
  OUTLINED_FUNCTION_3();
  type metadata accessor for DayForecast();
  return OUTLINED_FUNCTION_5();
}

uint64_t DayForecast.daytimeForecast.setter()
{
  OUTLINED_FUNCTION_3();
  type metadata accessor for DayForecast();
  v0 = OUTLINED_FUNCTION_20_13();

  return sub_1B6187610(v0, v1);
}

uint64_t sub_1B6187610(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DayPartForecast();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t DayForecast.daytimeForecast.modify()
{
  OUTLINED_FUNCTION_3();
  type metadata accessor for DayForecast();
  return OUTLINED_FUNCTION_5();
}

uint64_t DayForecast.overnightForecast.setter()
{
  OUTLINED_FUNCTION_3();
  type metadata accessor for DayForecast();
  v0 = OUTLINED_FUNCTION_20_13();

  return sub_1B6187610(v0, v1);
}

uint64_t DayForecast.overnightForecast.modify()
{
  OUTLINED_FUNCTION_3();
  type metadata accessor for DayForecast();
  return OUTLINED_FUNCTION_5();
}

uint64_t sub_1B6187730(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_30_0(a1, a2, a3);
  OUTLINED_FUNCTION_9();
  (*(v5 + 16))(v3, v4);
  return v3;
}

uint64_t DayForecast.restOfDayForecast.setter()
{
  OUTLINED_FUNCTION_3();
  type metadata accessor for DayForecast();
  v0 = OUTLINED_FUNCTION_20_13();
  return sub_1B60725F8(v0, v1, v2);
}

uint64_t DayForecast.restOfDayForecast.modify()
{
  OUTLINED_FUNCTION_3();
  type metadata accessor for DayForecast();
  return OUTLINED_FUNCTION_5();
}

uint64_t DayForecast.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v171 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925088);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v172 = &v143 - v4;
  v174 = type metadata accessor for DayPartForecast();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_1_9();
  MEMORY[0x1EEE9AC00](v6);
  v175 = &v143 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600);
  MEMORY[0x1EEE9AC00](v8 - 8);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_1_9();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_1_9();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_1_9();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_1_9();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_1_9();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_1_9();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_1_9();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_1_9();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_1_9();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_1_9();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_1_9();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_1_9();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v143 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v143 - v24;
  v26 = sub_1B621D8F4();
  OUTLINED_FUNCTION_2();
  v185 = v27;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v143 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926A20);
  OUTLINED_FUNCTION_2();
  v32 = v31;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v143 - v34;
  v36 = a1[3];
  v189 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v36);
  sub_1B6188980();
  v186 = v35;
  v37 = v188;
  sub_1B62220D4();
  if (v37)
  {
    return __swift_destroy_boxed_opaque_existential_1(v189);
  }

  v188 = v32;
  v169 = v22;
  v170 = v25;
  LOBYTE(v203) = 0;
  OUTLINED_FUNCTION_27_10();
  v40 = sub_1B6189F64(v38, v39);
  sub_1B6221DD4();
  v166 = v40;
  v168 = v26;
  v167 = v30;
  LOBYTE(v203) = 1;
  sub_1B60FDA64();
  sub_1B6221D24();
  v41 = v214;
  LOBYTE(v201) = 2;
  OUTLINED_FUNCTION_40_4();
  v42 = v203;
  v43 = v204;
  LOBYTE(v199) = 3;
  OUTLINED_FUNCTION_40_4();
  v44 = v201;
  v45 = v202;
  OUTLINED_FUNCTION_16_20(4);
  v161 = sub_1B6221DC4();
  v162 = v45;
  v163 = v44;
  v164 = v43;
  v165 = v42;
  v210 = v41;
  LOBYTE(v199) = 5;
  sub_1B61889D4();
  sub_1B6221D24();
  v46 = v213;
  OUTLINED_FUNCTION_24_10(6);
  v47 = v170;
  v48 = v168;
  sub_1B6221D24();
  OUTLINED_FUNCTION_24_10(7);
  v49 = v169;
  sub_1B6221D24();
  OUTLINED_FUNCTION_16_20(8);
  sub_1B6221DB4();
  v51 = v50;
  LOBYTE(v199) = 9;
  sub_1B617A040();
  v52 = sub_1B6221D14();
  LOBYTE(v199) = 10;
  sub_1B6221DB4();
  v59 = v58;
  LOBYTE(v199) = 11;
  sub_1B60D5940();
  v60 = v186;
  sub_1B6221D24();
  v61 = v212;
  OUTLINED_FUNCTION_16_20(12);
  sub_1B6221DB4();
  v63 = v62;
  v160 = v61;
  OUTLINED_FUNCTION_24_10(13);
  OUTLINED_FUNCTION_35_4();
  OUTLINED_FUNCTION_22_9();
  sub_1B6221D24();
  OUTLINED_FUNCTION_24_10(14);
  OUTLINED_FUNCTION_5_34();
  OUTLINED_FUNCTION_24_10(15);
  OUTLINED_FUNCTION_5_34();
  OUTLINED_FUNCTION_24_10(16);
  OUTLINED_FUNCTION_5_34();
  OUTLINED_FUNCTION_24_10(17);
  OUTLINED_FUNCTION_5_34();
  OUTLINED_FUNCTION_24_10(18);
  OUTLINED_FUNCTION_5_34();
  OUTLINED_FUNCTION_24_10(19);
  OUTLINED_FUNCTION_5_34();
  OUTLINED_FUNCTION_24_10(20);
  OUTLINED_FUNCTION_5_34();
  OUTLINED_FUNCTION_24_10(21);
  OUTLINED_FUNCTION_5_34();
  OUTLINED_FUNCTION_24_10(22);
  OUTLINED_FUNCTION_5_34();
  LOBYTE(v199) = 23;
  sub_1B6221DB4();
  v65 = v64;
  OUTLINED_FUNCTION_24_10(24);
  OUTLINED_FUNCTION_22_9();
  sub_1B6221D24();
  OUTLINED_FUNCTION_16_20(25);
  sub_1B6221DB4();
  v159 = 0;
  v158 = v66;
  OUTLINED_FUNCTION_24_10(26);
  OUTLINED_FUNCTION_35_4();
  OUTLINED_FUNCTION_22_9();
  sub_1B6221D24();
  LOBYTE(v197) = 27;
  OUTLINED_FUNCTION_6_24();
  sub_1B6221D24();
  v166 = v199;
  v157 = v200[0];
  LOBYTE(v195) = 28;
  OUTLINED_FUNCTION_6_24();
  sub_1B6221D24();
  v156 = v197;
  v155 = v198;
  LOBYTE(v193) = 29;
  OUTLINED_FUNCTION_6_24();
  sub_1B6221D24();
  v154 = v195;
  v153 = v196;
  LOBYTE(v190) = 30;
  OUTLINED_FUNCTION_6_24();
  sub_1B6221D24();
  v152 = v193;
  v151 = v194;
  v211 = 31;
  OUTLINED_FUNCTION_6_24();
  sub_1B6221D24();
  v150 = v190;
  v149 = v191;
  v211 = 32;
  OUTLINED_FUNCTION_25_9();
  sub_1B6189F64(v67, v68);
  OUTLINED_FUNCTION_6_24();
  v69 = v159;
  sub_1B6221DD4();
  if (v69)
  {

    sub_1B608CA50(v176);
    sub_1B608CA50(v177);
    sub_1B608CA50(v178);
    sub_1B608CA50(v179);
    sub_1B608CA50(v180);
    sub_1B608CA50(v181[0]);
    sub_1B608CA50(v181[1]);
    sub_1B608CA50(v182[0]);
    sub_1B608CA50(v182[1]);
    sub_1B608CA50(v183[0]);
    sub_1B608CA50(v183[1]);
    sub_1B608CA50(v184);
    sub_1B608CA50(v49);
    sub_1B608CA50(v47);
    v53 = OUTLINED_FUNCTION_9_23();
    v54(v53, v48);
    v55 = OUTLINED_FUNCTION_30_7();
    v56(v55);
    return __swift_destroy_boxed_opaque_existential_1(v189);
  }

  v70 = v52;
  v71 = v167;
  v211 = 33;
  OUTLINED_FUNCTION_22_9();
  sub_1B6221DD4();
  v159 = 0;
  v211 = 34;
  v72 = v174;
  v73 = v187;
  OUTLINED_FUNCTION_22_9();
  sub_1B6221D24();
  (*(v188 + 8))(v60, v73);
  v74 = type metadata accessor for DayForecast();
  v145 = v74[5];
  v75 = v171;
  *(v171 + v145) = 35;
  v76 = v75 + v74[6];
  v143 = v75 + v74[7];
  v144 = v74[9];
  *(v75 + v144) = 8;
  v77 = OUTLINED_FUNCTION_2_40(v74[10]);
  v78 = v168;
  __swift_storeEnumTagSinglePayload(v77, v79, v80, v168);
  v81 = OUTLINED_FUNCTION_2_40(v74[11]);
  __swift_storeEnumTagSinglePayload(v81, v82, v83, v78);
  v146 = v74[15];
  *(v75 + v146) = 8;
  v84 = OUTLINED_FUNCTION_2_40(v74[17]);
  __swift_storeEnumTagSinglePayload(v84, v85, v86, v78);
  v87 = OUTLINED_FUNCTION_2_40(v74[18]);
  __swift_storeEnumTagSinglePayload(v87, v88, v89, v78);
  v90 = OUTLINED_FUNCTION_2_40(v74[19]);
  __swift_storeEnumTagSinglePayload(v90, v91, v92, v78);
  v93 = OUTLINED_FUNCTION_2_40(v74[20]);
  __swift_storeEnumTagSinglePayload(v93, v94, v95, v78);
  v96 = OUTLINED_FUNCTION_2_40(v74[21]);
  __swift_storeEnumTagSinglePayload(v96, v97, v98, v78);
  v99 = OUTLINED_FUNCTION_2_40(v74[22]);
  __swift_storeEnumTagSinglePayload(v99, v100, v101, v78);
  v102 = OUTLINED_FUNCTION_2_40(v74[23]);
  __swift_storeEnumTagSinglePayload(v102, v103, v104, v78);
  v105 = OUTLINED_FUNCTION_2_40(v74[24]);
  __swift_storeEnumTagSinglePayload(v105, v106, v107, v78);
  v108 = OUTLINED_FUNCTION_2_40(v74[25]);
  __swift_storeEnumTagSinglePayload(v108, v109, v110, v78);
  v111 = OUTLINED_FUNCTION_2_40(v74[26]);
  __swift_storeEnumTagSinglePayload(v111, v112, v113, v78);
  v114 = OUTLINED_FUNCTION_2_40(v74[28]);
  __swift_storeEnumTagSinglePayload(v114, v115, v116, v78);
  v117 = OUTLINED_FUNCTION_2_40(v74[30]);
  __swift_storeEnumTagSinglePayload(v117, v118, v119, v78);
  v120 = v74[32];
  v187 = (v75 + v74[31]);
  v188 = v75 + v120;
  v121 = v74[34];
  v147 = v75 + v74[33];
  v186 = (v75 + v121);
  v148 = v75 + v74[35];
  v122 = OUTLINED_FUNCTION_2_40(v74[38]);
  __swift_storeEnumTagSinglePayload(v122, v123, v124, v72);
  (*(v185 + 32))(v75, v71, v78);
  *(v75 + v145) = v210;
  *v76 = v165;
  *(v76 + 8) = v164;
  OUTLINED_FUNCTION_19_0(v163);
  OUTLINED_FUNCTION_18_9(v192);
  *(v75 + v74[8]) = v161;
  *(v75 + v144) = v46;
  OUTLINED_FUNCTION_23_13();
  OUTLINED_FUNCTION_17_19(v125, v200);
  OUTLINED_FUNCTION_23_13();
  OUTLINED_FUNCTION_17_19(v126, &v199);
  *(v75 + v74[12]) = v51;
  *(v75 + v74[13]) = v70;
  *(v75 + v74[14]) = v59;
  *(v75 + v146) = v160;
  *(v75 + v74[16]) = v63;
  OUTLINED_FUNCTION_23_13();
  OUTLINED_FUNCTION_17_19(v127, &v220);
  OUTLINED_FUNCTION_23_13();
  OUTLINED_FUNCTION_17_19(v128, &v219);
  OUTLINED_FUNCTION_23_13();
  OUTLINED_FUNCTION_17_19(v129, &v218);
  OUTLINED_FUNCTION_23_13();
  OUTLINED_FUNCTION_17_19(v130, &v217);
  OUTLINED_FUNCTION_23_13();
  OUTLINED_FUNCTION_17_19(v131, &v216);
  OUTLINED_FUNCTION_23_13();
  OUTLINED_FUNCTION_17_19(v132, &v215);
  OUTLINED_FUNCTION_23_13();
  OUTLINED_FUNCTION_17_19(v133, &v210);
  OUTLINED_FUNCTION_23_13();
  OUTLINED_FUNCTION_17_19(v134, &v209);
  OUTLINED_FUNCTION_23_13();
  OUTLINED_FUNCTION_17_19(v135, &v208);
  OUTLINED_FUNCTION_23_13();
  OUTLINED_FUNCTION_17_19(v136, &v207);
  *(v75 + v74[27]) = v65;
  OUTLINED_FUNCTION_23_13();
  OUTLINED_FUNCTION_17_19(v137, &v206);
  *(v75 + v74[29]) = v158;
  OUTLINED_FUNCTION_23_13();
  OUTLINED_FUNCTION_17_19(v138, &v205);
  sub_1B603F42C(v175, v75 + v74[36]);
  sub_1B603F42C(v173, v75 + v74[37]);
  OUTLINED_FUNCTION_23_13();
  sub_1B60725F8(v172, v139, v140);
  v142 = v187;
  v141 = v188;
  *v187 = v166;
  *(v142 + 8) = v157;
  *v141 = v156;
  OUTLINED_FUNCTION_18_9(&v184 + 4);
  OUTLINED_FUNCTION_19_0(v154);
  OUTLINED_FUNCTION_18_9(v183 + 4);
  OUTLINED_FUNCTION_19_0(v152);
  OUTLINED_FUNCTION_18_9(v182 + 4);
  OUTLINED_FUNCTION_19_0(v150);
  OUTLINED_FUNCTION_18_9(v181 + 4);
  return __swift_destroy_boxed_opaque_existential_1(v189);
}

unint64_t sub_1B6188980()
{
  result = qword_1EDAB0860;
  if (!qword_1EDAB0860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAB0860);
  }

  return result;
}

unint64_t sub_1B61889D4()
{
  result = qword_1EDAB04A0;
  if (!qword_1EDAB04A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAB04A0);
  }

  return result;
}

uint64_t sub_1B6188A28(uint64_t a1)
{
  v2 = type metadata accessor for DayPartForecast();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B6188A84(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7473616365726F66 && a2 == 0xED00007472617453;
  if (v4 || (sub_1B6221F24() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6F697469646E6F63 && a2 == 0xED000065646F436ELL;
    if (v6 || (sub_1B6221F24() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x79746964696D7568 && a2 == 0xEB0000000078614DLL;
      if (v7 || (sub_1B6221F24() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x79746964696D7568 && a2 == 0xEB000000006E694DLL;
        if (v8 || (sub_1B6221F24() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x646E49765578616DLL && a2 == 0xEA00000000007865;
          if (v9 || (sub_1B6221F24() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x736168506E6F6F6DLL && a2 == 0xE900000000000065;
            if (v10 || (sub_1B6221F24() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x657369726E6F6F6DLL && a2 == 0xE800000000000000;
              if (v11 || (sub_1B6221F24() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x7465736E6F6F6DLL && a2 == 0xE700000000000000;
                if (v12 || (sub_1B6221F24() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000013 && 0x80000001B623D800 == a2;
                  if (v13 || (sub_1B6221F24() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000019 && 0x80000001B623EB10 == a2;
                    if (v14 || (sub_1B6221F24() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000013 && 0x80000001B623CED0 == a2;
                      if (v15 || (sub_1B6221F24() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD000000000000011 && 0x80000001B623D820 == a2;
                        if (v16 || (sub_1B6221F24() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x6C6C6166776F6E73 && a2 == 0xEE00746E756F6D41;
                          if (v17 || (sub_1B6221F24() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x6F6F4E72616C6F73 && a2 == 0xE90000000000006ELL;
                            if (v18 || (sub_1B6221F24() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x64694D72616C6F73 && a2 == 0xED0000746867696ELL;
                              if (v19 || (sub_1B6221F24() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0x657369726E7573 && a2 == 0xE700000000000000;
                                if (v20 || (sub_1B6221F24() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0xD000000000000013 && 0x80000001B623EB30 == a2;
                                  if (v21 || (sub_1B6221F24() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0x43657369726E7573 && a2 == 0xEC0000006C697669;
                                    if (v22 || (sub_1B6221F24() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v23 = a1 == 0x4E657369726E7573 && a2 == 0xEF6C616369747561;
                                      if (v23 || (sub_1B6221F24() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        v24 = a1 == 0x7465736E7573 && a2 == 0xE600000000000000;
                                        if (v24 || (sub_1B6221F24() & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else
                                        {
                                          v25 = a1 == 0xD000000000000012 && 0x80000001B623EB50 == a2;
                                          if (v25 || (sub_1B6221F24() & 1) != 0)
                                          {

                                            return 20;
                                          }

                                          else
                                          {
                                            v26 = a1 == 0x69437465736E7573 && a2 == 0xEB000000006C6976;
                                            if (v26 || (sub_1B6221F24() & 1) != 0)
                                            {

                                              return 21;
                                            }

                                            else
                                            {
                                              v27 = a1 == 0x614E7465736E7573 && a2 == 0xEE006C6163697475;
                                              if (v27 || (sub_1B6221F24() & 1) != 0)
                                              {

                                                return 22;
                                              }

                                              else
                                              {
                                                v28 = a1 == 0x74617265706D6574 && a2 == 0xEE0078614D657275;
                                                if (v28 || (sub_1B6221F24() & 1) != 0)
                                                {

                                                  return 23;
                                                }

                                                else
                                                {
                                                  v29 = a1 == 0xD000000000000012 && 0x80000001B623EB70 == a2;
                                                  if (v29 || (sub_1B6221F24() & 1) != 0)
                                                  {

                                                    return 24;
                                                  }

                                                  else
                                                  {
                                                    v30 = a1 == 0x74617265706D6574 && a2 == 0xEE006E694D657275;
                                                    if (v30 || (sub_1B6221F24() & 1) != 0)
                                                    {

                                                      return 25;
                                                    }

                                                    else
                                                    {
                                                      v31 = a1 == 0xD000000000000012 && 0x80000001B623EB90 == a2;
                                                      if (v31 || (sub_1B6221F24() & 1) != 0)
                                                      {

                                                        return 26;
                                                      }

                                                      else
                                                      {
                                                        v32 = a1 == 0x696C696269736976 && a2 == 0xED000078614D7974;
                                                        if (v32 || (sub_1B6221F24() & 1) != 0)
                                                        {

                                                          return 27;
                                                        }

                                                        else
                                                        {
                                                          v33 = a1 == 0x696C696269736976 && a2 == 0xED00006E694D7974;
                                                          if (v33 || (sub_1B6221F24() & 1) != 0)
                                                          {

                                                            return 28;
                                                          }

                                                          else
                                                          {
                                                            v34 = a1 == 0xD000000000000010 && 0x80000001B623EBB0 == a2;
                                                            if (v34 || (sub_1B6221F24() & 1) != 0)
                                                            {

                                                              return 29;
                                                            }

                                                            else
                                                            {
                                                              v35 = a1 == 0x65657053646E6977 && a2 == 0xEC00000067764164;
                                                              if (v35 || (sub_1B6221F24() & 1) != 0)
                                                              {

                                                                return 30;
                                                              }

                                                              else
                                                              {
                                                                v36 = a1 == 0x65657053646E6977 && a2 == 0xEC00000078614D64;
                                                                if (v36 || (sub_1B6221F24() & 1) != 0)
                                                                {

                                                                  return 31;
                                                                }

                                                                else
                                                                {
                                                                  v37 = a1 == 0x46656D6974796164 && a2 == 0xEF7473616365726FLL;
                                                                  if (v37 || (sub_1B6221F24() & 1) != 0)
                                                                  {

                                                                    return 32;
                                                                  }

                                                                  else
                                                                  {
                                                                    v38 = a1 == 0xD000000000000011 && 0x80000001B623EBD0 == a2;
                                                                    if (v38 || (sub_1B6221F24() & 1) != 0)
                                                                    {

                                                                      return 33;
                                                                    }

                                                                    else if (a1 == 0xD000000000000011 && 0x80000001B623EBF0 == a2)
                                                                    {

                                                                      return 34;
                                                                    }

                                                                    else
                                                                    {
                                                                      v40 = sub_1B6221F24();

                                                                      if (v40)
                                                                      {
                                                                        return 34;
                                                                      }

                                                                      else
                                                                      {
                                                                        return 35;
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

unint64_t sub_1B61894F4(char a1)
{
  result = 0x7473616365726F66;
  switch(a1)
  {
    case 1:
      result = 0x6F697469646E6F63;
      break;
    case 2:
    case 3:
      result = 0x79746964696D7568;
      break;
    case 4:
      result = 0x646E49765578616DLL;
      break;
    case 5:
      result = 0x736168506E6F6F6DLL;
      break;
    case 6:
      result = 0x657369726E6F6F6DLL;
      break;
    case 7:
      result = 0x7465736E6F6F6DLL;
      break;
    case 8:
    case 10:
    case 16:
      result = 0xD000000000000013;
      break;
    case 9:
      result = 0xD000000000000019;
      break;
    case 11:
      result = 0xD000000000000011;
      break;
    case 12:
      result = 0x6C6C6166776F6E73;
      break;
    case 13:
      result = 0x6F6F4E72616C6F73;
      break;
    case 14:
      result = 0x64694D72616C6F73;
      break;
    case 15:
      result = 0x657369726E7573;
      break;
    case 17:
      result = 0x43657369726E7573;
      break;
    case 18:
      result = 0x4E657369726E7573;
      break;
    case 19:
      result = 0x7465736E7573;
      break;
    case 20:
    case 24:
    case 26:
      result = 0xD000000000000012;
      break;
    case 21:
      result = 0x69437465736E7573;
      break;
    case 22:
      result = 0x614E7465736E7573;
      break;
    case 23:
    case 25:
      result = 0x74617265706D6574;
      break;
    case 27:
    case 28:
      result = 0x696C696269736976;
      break;
    case 29:
      result = 0xD000000000000010;
      break;
    case 30:
    case 31:
      result = 0x65657053646E6977;
      break;
    case 32:
      result = 0x46656D6974796164;
      break;
    case 33:
      result = 0xD000000000000011;
      break;
    case 34:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B61898C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B6188A84(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B61898EC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B61894EC();
  *a1 = result;
  return result;
}

uint64_t sub_1B6189914(uint64_t a1)
{
  v2 = sub_1B6188980();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B6189950(uint64_t a1)
{
  v2 = sub_1B6188980();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DayForecast.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926A28);
  OUTLINED_FUNCTION_2();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6188980();
  sub_1B62220F4();
  LOBYTE(v18) = 0;
  sub_1B621D8F4();
  OUTLINED_FUNCTION_27_10();
  sub_1B6189F64(v11, v12);
  OUTLINED_FUNCTION_1_44();
  sub_1B6221EC4();
  if (!v2)
  {
    v13 = type metadata accessor for DayForecast();
    LOBYTE(v18) = *(v3 + v13[5]);
    v19 = 1;
    sub_1B60FE980();
    OUTLINED_FUNCTION_9_2();
    OUTLINED_FUNCTION_13_17();
    sub_1B6221E74();
    OUTLINED_FUNCTION_4_1(v13[6]);
    OUTLINED_FUNCTION_7_26(2);
    OUTLINED_FUNCTION_4_1(v13[7]);
    OUTLINED_FUNCTION_7_26(3);
    LOBYTE(v18) = 4;
    OUTLINED_FUNCTION_13_17();
    sub_1B6221EB4();
    LOBYTE(v18) = *(v3 + v13[9]);
    v19 = 5;
    sub_1B6189F10();
    OUTLINED_FUNCTION_9_2();
    OUTLINED_FUNCTION_13_17();
    sub_1B6221E74();
    OUTLINED_FUNCTION_0_70(v13[10]);
    sub_1B6221E74();
    OUTLINED_FUNCTION_0_70(v13[11]);
    sub_1B6221E74();
    OUTLINED_FUNCTION_2_38(8);
    v18 = *(v3 + v13[13]);
    v19 = 9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926788);
    sub_1B617B8A0();
    OUTLINED_FUNCTION_9_2();
    OUTLINED_FUNCTION_13_17();
    sub_1B6221EC4();
    OUTLINED_FUNCTION_2_38(10);
    LOBYTE(v18) = *(v3 + v13[15]);
    v19 = 11;
    sub_1B60D5EF4();
    OUTLINED_FUNCTION_9_2();
    OUTLINED_FUNCTION_13_17();
    sub_1B6221E74();
    OUTLINED_FUNCTION_2_38(12);
    OUTLINED_FUNCTION_0_70(v13[17]);
    sub_1B6221E74();
    OUTLINED_FUNCTION_0_70(v13[18]);
    sub_1B6221E74();
    OUTLINED_FUNCTION_0_70(v13[19]);
    sub_1B6221E74();
    OUTLINED_FUNCTION_0_70(v13[20]);
    sub_1B6221E74();
    OUTLINED_FUNCTION_0_70(v13[21]);
    sub_1B6221E74();
    OUTLINED_FUNCTION_0_70(v13[22]);
    sub_1B6221E74();
    OUTLINED_FUNCTION_0_70(v13[23]);
    sub_1B6221E74();
    OUTLINED_FUNCTION_0_70(v13[24]);
    sub_1B6221E74();
    OUTLINED_FUNCTION_0_70(v13[25]);
    sub_1B6221E74();
    OUTLINED_FUNCTION_0_70(v13[26]);
    sub_1B6221E74();
    OUTLINED_FUNCTION_2_38(23);
    OUTLINED_FUNCTION_0_70(v13[28]);
    sub_1B6221E74();
    OUTLINED_FUNCTION_2_38(25);
    OUTLINED_FUNCTION_0_70(v13[30]);
    sub_1B6221E74();
    OUTLINED_FUNCTION_4_1(v13[31]);
    OUTLINED_FUNCTION_7_26(27);
    OUTLINED_FUNCTION_4_1(v13[32]);
    OUTLINED_FUNCTION_7_26(28);
    OUTLINED_FUNCTION_4_1(v13[33]);
    OUTLINED_FUNCTION_7_26(29);
    OUTLINED_FUNCTION_4_1(v13[34]);
    OUTLINED_FUNCTION_7_26(30);
    OUTLINED_FUNCTION_4_1(v13[35]);
    OUTLINED_FUNCTION_7_26(31);
    LOBYTE(v18) = 32;
    type metadata accessor for DayPartForecast();
    OUTLINED_FUNCTION_25_9();
    sub_1B6189F64(v14, v15);
    OUTLINED_FUNCTION_1_44();
    sub_1B6221EC4();
    OUTLINED_FUNCTION_0_70(v13[37]);
    sub_1B6221EC4();
    OUTLINED_FUNCTION_0_70(v13[38]);
    sub_1B6221E74();
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_1B6189F10()
{
  result = qword_1EDAB04B0;
  if (!qword_1EDAB04B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAB04B0);
  }

  return result;
}

uint64_t sub_1B6189F64(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for DayForecast.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 34 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 34) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xDE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xDD)
  {
    v6 = ((a2 - 222) >> 8) + 1;
    *result = a2 + 34;
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
          *result = a2 + 34;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1B618A0D4()
{
  result = qword_1EB926A30;
  if (!qword_1EB926A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB926A30);
  }

  return result;
}

unint64_t sub_1B618A12C()
{
  result = qword_1EDAB0850;
  if (!qword_1EDAB0850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAB0850);
  }

  return result;
}

unint64_t sub_1B618A184()
{
  result = qword_1EDAB0858;
  if (!qword_1EDAB0858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAB0858);
  }

  return result;
}

BOOL static PrecipitationAmountRange.== infix(_:_:)(double *a1, double *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v5 = a1[3];
  v4 = a1[4];
  v6 = a2[1];
  v7 = a2[2];
  v9 = a2[3];
  v8 = a2[4];
  v10 = sub_1B60DDFB4();
  result = 0;
  if ((v10 & 1) != 0 && v2 == v6 && v3 == v7 && v5 == v9)
  {
    return v4 == v8;
  }

  return result;
}

uint64_t sub_1B618A278(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x80000001B623D820 == a2;
  if (v3 || (sub_1B6221F24() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6465746365707865 && a2 == 0xE800000000000000;
    if (v6 || (sub_1B6221F24() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x536D756D696E696DLL && a2 == 0xEB00000000776F6ELL;
      if (v7 || (sub_1B6221F24() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x536D756D6978616DLL && a2 == 0xEB00000000776F6ELL;
        if (v8 || (sub_1B6221F24() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x6465746365707865 && a2 == 0xEC000000776F6E53)
        {

          return 4;
        }

        else
        {
          v10 = sub_1B6221F24();

          if (v10)
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

uint64_t sub_1B618A428(char a1)
{
  result = 0x6465746365707865;
  switch(a1)
  {
    case 1:
    case 4:
      return result;
    case 2:
      v3 = 1768843629;
      goto LABEL_5;
    case 3:
      v3 = 1769496941;
LABEL_5:
      result = v3 | 0x536D756D00000000;
      break;
    default:
      result = 0xD000000000000011;
      break;
  }

  return result;
}

uint64_t sub_1B618A4C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B618A278(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B618A4EC(uint64_t a1)
{
  v2 = sub_1B618A734();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B618A528(uint64_t a1)
{
  v2 = sub_1B618A734();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PrecipitationAmountRange.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926A38);
  OUTLINED_FUNCTION_2();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v12 - v8;
  v10 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B618A734();
  sub_1B62220F4();
  v18 = v10;
  v17 = 0;
  sub_1B60D5EF4();
  sub_1B6221EC4();
  if (!v2)
  {
    v16 = 1;
    OUTLINED_FUNCTION_0_1();
    v15 = 2;
    OUTLINED_FUNCTION_0_1();
    v14 = 3;
    OUTLINED_FUNCTION_0_1();
    v13 = 4;
    OUTLINED_FUNCTION_0_1();
  }

  return (*(v6 + 8))(v9, v4);
}

unint64_t sub_1B618A734()
{
  result = qword_1EDAB11F8;
  if (!qword_1EDAB11F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAB11F8);
  }

  return result;
}

uint64_t PrecipitationAmountRange.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926A40);
  OUTLINED_FUNCTION_2();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B618A734();
  sub_1B62220D4();
  if (!v2)
  {
    v26 = 0;
    sub_1B60D5940();
    sub_1B6221DD4();
    v11 = v27;
    v25 = 1;
    OUTLINED_FUNCTION_0_71();
    v13 = v12;
    v24 = 2;
    OUTLINED_FUNCTION_0_71();
    v15 = v14;
    v23 = 3;
    OUTLINED_FUNCTION_0_71();
    v18 = v17;
    v22 = 4;
    OUTLINED_FUNCTION_0_71();
    v20 = v19;
    (*(v7 + 8))(v10, v5);
    *a2 = v11;
    *(a2 + 8) = v13;
    *(a2 + 16) = v15;
    *(a2 + 24) = v18;
    *(a2 + 32) = v20;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1B618A9F8(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xF9 && a1[40])
    {
      v2 = *a1 + 248;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 8;
      v2 = v3 - 8;
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

uint64_t sub_1B618AA34(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 249;
    if (a3 >= 0xF9)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = a2 + 7;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PrecipitationAmountRange.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1B618AB60()
{
  result = qword_1EB926A48;
  if (!qword_1EB926A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB926A48);
  }

  return result;
}

unint64_t sub_1B618ABB8()
{
  result = qword_1EDAB11E8;
  if (!qword_1EDAB11E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAB11E8);
  }

  return result;
}

unint64_t sub_1B618AC10()
{
  result = qword_1EDAB11F0;
  if (!qword_1EDAB11F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAB11F0);
  }

  return result;
}

WeatherDaemon::WeatherRequestMarineHourlyRelativeRange::RelativeTo_optional __swiftcall WeatherRequestMarineHourlyRelativeRange.RelativeTo.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B6221CD4();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t WeatherRequestMarineHourlyRelativeRange.init(start:end:relativeTo:now:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *a3;
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = v7;
  v8 = *(type metadata accessor for WeatherRequestMarineHourlyRelativeRange() + 28);
  sub_1B621D8F4();
  OUTLINED_FUNCTION_9();
  v10 = *(v9 + 32);

  return v10(a5 + v8, a4);
}

uint64_t WeatherRequestMarineHourlyRelativeRange.RelativeTo.rawValue.getter()
{
  if (*v0)
  {
    return 7827310;
  }

  else
  {
    return 7954788;
  }
}

uint64_t sub_1B618AD70(uint64_t a1, unint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v25 - v8;
  v10 = sub_1B621D8F4();
  OUTLINED_FUNCTION_2();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_14();
  v16 = v15 - v14;
  v25 = 0x2C656E6972616DLL;
  v26 = 0xE700000000000000;
  sub_1B603A9E8(a3, v9, &qword_1EB924600);
  OUTLINED_FUNCTION_16_5(v9, 1, v10);
  if (v17)
  {
    v18 = type metadata accessor for WeatherRequestMarineHourlyRelativeRange();
    (*(v12 + 16))(v16, v3 + *(v18 + 28), v10);
    OUTLINED_FUNCTION_16_5(v9, 1, v10);
    if (!v17)
    {
      sub_1B6037288(v9, &qword_1EB924600);
    }
  }

  else
  {
    (*(v12 + 32))(v16, v9, v10);
  }

  v19 = sub_1B618B650();
  v21 = v20;
  (*(v12 + 8))(v16, v10);
  MEMORY[0x1B8C90530](v19, v21);

  v22 = v25;
  v23 = v26;
  v25 = a1;
  v26 = a2;
  sub_1B6220784();
  MEMORY[0x1B8C90530](44, 0xE100000000000000);
  MEMORY[0x1B8C90530](v22, v23);

  return v25;
}

uint64_t sub_1B618AFA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v66 = a3;
  v69 = a2;
  v70 = a1;
  v73 = sub_1B621DAF4();
  OUTLINED_FUNCTION_2();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_14();
  v72 = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600);
  MEMORY[0x1EEE9AC00](v10 - 8);
  OUTLINED_FUNCTION_2_3();
  v67 = v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v61 - v13;
  v68 = sub_1B621D8F4();
  OUTLINED_FUNCTION_2();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_2_3();
  v74 = v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v61 - v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924EF8);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v61 - v23;
  v25 = sub_1B621DB64();
  OUTLINED_FUNCTION_2();
  v27 = v26;
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_14();
  v31 = v30 - v29;
  sub_1B621DB04();
  OUTLINED_FUNCTION_2();
  v63 = v33;
  v64 = v32;
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_14();
  v36 = v35 - v34;
  sub_1B603A9E8(v66, v24, &qword_1EB924EF8);
  v37 = OUTLINED_FUNCTION_38_0();
  OUTLINED_FUNCTION_16_5(v37, v38, v25);
  v71 = v16;
  if (v39)
  {
    sub_1B621DB54();
    v40 = OUTLINED_FUNCTION_38_0();
    OUTLINED_FUNCTION_16_5(v40, v41, v25);
    if (!v39)
    {
      sub_1B6037288(v24, &qword_1EB924EF8);
    }
  }

  else
  {
    (*(v27 + 32))(v31, v24, v25);
  }

  static Calendar.currentCalendar(with:)(v31, v36);
  (*(v27 + 8))(v31, v25);
  sub_1B618B740(v4, v21, v21);
  v42 = *MEMORY[0x1E6969A58];
  v44 = v72;
  v43 = v73;
  v61 = *(v6 + 104);
  v61(v72, v42, v73);
  v66 = v4;
  v62 = v36;
  sub_1B621DAB4();
  v45 = *(v6 + 8);
  v65 = v6 + 8;
  v45(v44, v43);
  v46 = v68;
  if (__swift_getEnumTagSinglePayload(v14, 1, v68) == 1)
  {
    sub_1B621D804();
    OUTLINED_FUNCTION_16_5(v14, 1, v46);
    if (!v39)
    {
      sub_1B6037288(v14, &qword_1EB924600);
    }
  }

  else
  {
    (*(v71 + 32))(v74, v14, v46);
  }

  v47 = v72;
  v48 = v73;
  v61(v72, v42, v73);
  v49 = v67;
  v50 = *(v66 + 8);
  v51 = v62;
  sub_1B621DAB4();
  v45(v47, v48);
  v52 = OUTLINED_FUNCTION_38_0();
  OUTLINED_FUNCTION_16_5(v52, v53, v46);
  if (v39)
  {
    sub_1B621D804();
    v54 = OUTLINED_FUNCTION_4_28();
    v55(v54);
    (*(v63 + 8))(v51, v64);
    v56 = OUTLINED_FUNCTION_38_0();
    OUTLINED_FUNCTION_16_5(v56, v57, v46);
    if (!v39)
    {
      sub_1B6037288(v49, &qword_1EB924600);
    }
  }

  else
  {
    v58 = OUTLINED_FUNCTION_4_28();
    v59(v58);
    (*(v63 + 8))(v51, v64);
    (*(v50 + 32))(v69, v49, v46);
  }

  return (*(v50 + 32))(v70, v74, v46);
}

uint64_t sub_1B618B574@<X0>(uint64_t *a1@<X8>)
{
  result = WeatherRequestMarineHourlyRelativeRange.RelativeTo.rawValue.getter();
  *a1 = result;
  a1[1] = 0xE300000000000000;
  return result;
}

uint64_t sub_1B618B650()
{
  if (*(v0 + 16))
  {
    sub_1B60BDF5C();
  }

  else
  {
    sub_1B60BDD04();
  }

  v3 = v1;
  v4 = v2;
  v7 = sub_1B6221F04();
  MEMORY[0x1B8C90530](58, 0xE100000000000000);
  MEMORY[0x1B8C90530](v3, v4);

  MEMORY[0x1B8C90530](58, 0xE100000000000000);
  v5 = sub_1B6221F04();
  MEMORY[0x1B8C90530](v5);

  return v7;
}

uint64_t sub_1B618B740@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v33 - v7;
  v9 = sub_1B621D8F4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1B621D4F4();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16))
  {
    v38 = v12;
    v39 = v10;
    v34 = a2;
    v40 = a3;
    v36 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9250D0);
    v18 = sub_1B621DAF4();
    v35 = a1;
    v19 = v18;
    v20 = *(v18 - 8);
    v21 = *(v20 + 72);
    v22 = (*(v20 + 80) + 32) & ~*(v20 + 80);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1B6226520;
    v24 = v23 + v22;
    v25 = *MEMORY[0x1E6969A68];
    v37 = v9;
    v26 = *(v20 + 104);
    v26(v24, v25, v19);
    v26(v24 + v21, *MEMORY[0x1E6969A78], v19);
    v26(v24 + 2 * v21, *MEMORY[0x1E6969A48], v19);
    v26(v24 + 3 * v21, *MEMORY[0x1E6969A58], v19);
    sub_1B605954C(v23);
    type metadata accessor for WeatherRequestMarineHourlyRelativeRange();
    sub_1B621DA94();

    v27 = v37;
    sub_1B621DAA4();
    (*(v14 + 8))(v17, v36);
    if (__swift_getEnumTagSinglePayload(v8, 1, v27) == 1)
    {
      v29 = v38;
      v28 = v39;
      (*(v39 + 16))(v38, v34, v27);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v8, 1, v27);
      v31 = v40;
      if (EnumTagSinglePayload != 1)
      {
        sub_1B6037288(v8, &qword_1EB924600);
      }
    }

    else
    {
      v29 = v38;
      v28 = v39;
      (*(v39 + 32))(v38, v8, v27);
      v31 = v40;
    }

    return (*(v28 + 32))(v31, v29, v27);
  }

  else
  {
    type metadata accessor for WeatherRequestMarineHourlyRelativeRange();
    return sub_1B621DA74();
  }
}

uint64_t sub_1B618BB48(char a1)
{
  result = 0x7472617473;
  switch(a1)
  {
    case 1:
      result = 6581861;
      break;
    case 2:
      result = 0x65766974616C6572;
      break;
    case 3:
      result = 7827310;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B618BBC4(uint64_t a1)
{
  v2 = sub_1B618BE20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B618BC00(uint64_t a1)
{
  v2 = sub_1B618BE20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WeatherRequestMarineHourlyRelativeRange.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926A50);
  OUTLINED_FUNCTION_2();
  v7 = v6;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v12[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B618BE20();
  sub_1B62220F4();
  v12[15] = 0;
  OUTLINED_FUNCTION_1_43();
  sub_1B6221EB4();
  if (!v2)
  {
    v12[14] = 1;
    OUTLINED_FUNCTION_1_43();
    sub_1B6221EB4();
    v12[13] = *(v3 + 16);
    v12[12] = 2;
    sub_1B618BE74();
    OUTLINED_FUNCTION_1_43();
    sub_1B6221EC4();
    type metadata accessor for WeatherRequestMarineHourlyRelativeRange();
    v12[11] = 3;
    sub_1B621D8F4();
    sub_1B609F140(&unk_1EDAB20F8);
    sub_1B6221EC4();
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_1B618BE20()
{
  result = qword_1EB926A58;
  if (!qword_1EB926A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB926A58);
  }

  return result;
}

unint64_t sub_1B618BE74()
{
  result = qword_1EB926A60;
  if (!qword_1EB926A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB926A60);
  }

  return result;
}

uint64_t WeatherRequestMarineHourlyRelativeRange.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = sub_1B621D8F4();
  OUTLINED_FUNCTION_2();
  v26 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_14();
  v9 = v8 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926A68);
  OUTLINED_FUNCTION_2();
  v28 = v11;
  v29 = v10;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v25 - v13;
  v15 = type metadata accessor for WeatherRequestMarineHourlyRelativeRange();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_14();
  v19 = v18 - v17;
  v20 = a1[3];
  v30 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_1B618BE20();
  sub_1B62220D4();
  if (!v2)
  {
    v21 = v19;
    v35 = 0;
    v22 = v28;
    OUTLINED_FUNCTION_1_26();
    *v21 = sub_1B6221DC4();
    v34 = 1;
    OUTLINED_FUNCTION_1_26();
    *(v21 + 8) = sub_1B6221DC4();
    v32 = 2;
    sub_1B618C1D0();
    OUTLINED_FUNCTION_1_26();
    sub_1B6221DD4();
    *(v21 + 16) = v33;
    v31 = 3;
    sub_1B609F140(&qword_1EDAB20F0);
    v25 = v9;
    v24 = v29;
    OUTLINED_FUNCTION_1_26();
    sub_1B6221DD4();
    (*(v22 + 8))(v14, v24);
    (*(v26 + 32))(v21 + *(v15 + 28), v25, v4);
    sub_1B6177AFC(v21, v27);
  }

  return __swift_destroy_boxed_opaque_existential_1(v30);
}

unint64_t sub_1B618C1D0()
{
  result = qword_1EB926A70;
  if (!qword_1EB926A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB926A70);
  }

  return result;
}

unint64_t sub_1B618C228()
{
  result = qword_1EB926A78;
  if (!qword_1EB926A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB926A78);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WeatherRequestMarineHourlyRelativeRange.RelativeTo(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for WeatherRequestMarineHourlyRelativeRange.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1B618C468()
{
  result = qword_1EB926A80;
  if (!qword_1EB926A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB926A80);
  }

  return result;
}

unint64_t sub_1B618C4C0()
{
  result = qword_1EB926A88;
  if (!qword_1EB926A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB926A88);
  }

  return result;
}

unint64_t sub_1B618C518()
{
  result = qword_1EB926A90;
  if (!qword_1EB926A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB926A90);
  }

  return result;
}

unint64_t sub_1B618C56C()
{
  result = qword_1EB926A98;
  if (!qword_1EB926A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB926A98);
  }

  return result;
}

uint64_t sub_1B618C5C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, double a8)
{
  v14 = *a6;
  v15 = *(a6 + 8);
  if (qword_1EDAB3D80 != -1)
  {
    swift_once();
  }

  v16 = sub_1B6220B34();
  __swift_project_value_buffer(v16, qword_1EDAC2AB0);
  v17 = sub_1B6220B14();
  v18 = sub_1B62217F4();
  if (os_log_type_enabled(v17, v18))
  {
    v31 = v15;
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v33[0] = v20;
    *v19 = 141558275;
    *(v19 + 4) = 1752392040;
    *(v19 + 12) = 2081;
    v21 = CLLocationCoordinate2D.id.getter();
    v23 = v14;
    v24 = a2;
    v25 = a4;
    v26 = sub_1B602EEB0(v21, v22, v33);

    *(v19 + 14) = v26;
    a4 = v25;
    a2 = v24;
    v14 = v23;
    _os_log_impl(&dword_1B6020000, v17, v18, "Fetching daily weather summary for location: %{private,mask.hash}s", v19, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v20);
    MEMORY[0x1B8C91C90](v20, -1, -1);
    v27 = v19;
    v15 = v31;
    MEMORY[0x1B8C91C90](v27, -1, -1);
  }

  v33[0] = a1;
  *&v33[1] = a7;
  *&v33[2] = a8;
  v33[3] = a2;
  v33[4] = a3;
  v33[5] = a4;
  v33[6] = a5;
  v33[7] = v14;
  v34 = v15;
  sub_1B6220784();
  sub_1B6220784();
  sub_1B6220784();
  sub_1B610B594();
  v29 = v28;
  sub_1B6152BE4(v33);
  return v29;
}

Swift::String __swiftcall CLLocationCoordinate2D.storeKey(forCountryCode:)(Swift::String forCountryCode)
{
  OUTLINED_FUNCTION_58();
  v2 = v1;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924678);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1B6226520;
  OUTLINED_FUNCTION_0_72(v5, MEMORY[0x1E69E63B0]);
  v6 = static Locale.languageIdentifier.getter();
  v8 = v7;
  v9 = MEMORY[0x1E69E6158];
  *(v5 + 136) = MEMORY[0x1E69E6158];
  v10 = sub_1B6035A98();
  *(v5 + 112) = v6;
  *(v5 + 120) = v8;
  *(v5 + 176) = v9;
  *(v5 + 184) = v10;
  *(v5 + 144) = v10;
  *(v5 + 152) = v4;
  *(v5 + 160) = v2;
  sub_1B6220784();

  v11 = sub_1B6221204();
  result._object = v12;
  result._countAndFlagsBits = v11;
  return result;
}

uint64_t sub_1B618C904@<X0>(uint64_t *a1@<X8>)
{
  result = CLLocationCoordinate2D.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1B618C93C()
{
  v0 = sub_1B6221CD4();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B618C9B4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B618C93C();
  *a1 = result;
  return result;
}

uint64_t sub_1B618C9E4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B6030854(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1B618CA10@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B618C93C();
  *a1 = result;
  return result;
}

uint64_t sub_1B618CA38(uint64_t a1)
{
  v2 = sub_1B60307F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B618CA74(uint64_t a1)
{
  v2 = sub_1B60307F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1B618CAB4()
{
  result = qword_1EB926AB0;
  if (!qword_1EB926AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB926AB0);
  }

  return result;
}

uint64_t AirQualityScaleAqiGradient.stops.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

WeatherDaemon::AirQualityScaleAqiGradient __swiftcall AirQualityScaleAqiGradient.init(stops:)(Swift::OpaquePointer_optional stops)
{
  rawValue = stops.value._rawValue;
  v3 = v1;

  *v3 = rawValue;
  result.stops.value._rawValue = v4;
  result.stops.is_nil = v5;
  return result;
}

uint64_t sub_1B618CB8C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x73706F7473 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1B6221F24();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1B618CC00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B618CB8C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1B618CC2C(uint64_t a1)
{
  v2 = sub_1B6056C14();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B618CC68(uint64_t a1)
{
  v2 = sub_1B6056C14();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AirQualityScaleAqiGradient.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926AC0);
  OUTLINED_FUNCTION_2();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v11 - v7;
  v9 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6056C14();
  sub_1B6220784();
  sub_1B62220F4();
  v11[1] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926AC8);
  sub_1B618CE0C();
  sub_1B6221E74();

  return (*(v5 + 8))(v8, v3);
}

unint64_t sub_1B618CE0C()
{
  result = qword_1EDAAFC68;
  if (!qword_1EDAAFC68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB926AC8);
    sub_1B618CE90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAAFC68);
  }

  return result;
}

unint64_t sub_1B618CE90()
{
  result = qword_1EDAAFD70;
  if (!qword_1EDAAFD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAAFD70);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AirQualityScaleAqiGradient.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_1B618CF9C()
{
  result = qword_1EB926AD0;
  if (!qword_1EB926AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB926AD0);
  }

  return result;
}

double static CubicInterpolationMath.cubicInterpolate(ax:ay:bx:by:cx:cy:dx:dy:x:)(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v17 = a6 - a4;
  v18 = 0.0;
  if (((~*&a1 & 0x7FF0000000000000) != 0 || (*&a1 & 0xFFFFFFFFFFFFFLL) == 0) && ((~*&a2 & 0x7FF0000000000000) != 0 || (*&a2 & 0xFFFFFFFFFFFFFLL) == 0))
  {
    v18 = ((a4 - a2) * (a5 - a3) / (a3 - a1) - v17) * 0.5;
  }

  v19 = 0.0;
  if (((~*&a7 & 0x7FF0000000000000) != 0 || (*&a7 & 0xFFFFFFFFFFFFFLL) == 0) && ((~*&a8 & 0x7FF0000000000000) != 0 || (*&a8 & 0xFFFFFFFFFFFFFLL) == 0))
  {
    v19 = ((a5 - a3) * (a8 - a6) / (a7 - a5) - v17) * 0.5;
  }

  return (a9 - a3) / (a5 - a3) * (v17 + v18 + (a9 - a3) / (a5 - a3) * (v18 * -2.0 - v19 + (a9 - a3) / (a5 - a3) * (v18 + v19))) + a4;
}

void static CubicInterpolationMath.cubicMonotoneInterpolate(ax:ay:bx:by:cx:cy:dx:dy:x:)(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  sub_1B618D8AC(a5, a6, a1, a2, a3, a4);
  if (a1 > a3)
  {
    __break(1u);
  }

  else
  {
    if (a1 <= a9 && a9 < a3)
    {
LABEL_12:
      OUTLINED_FUNCTION_3_36();
      return;
    }

    OUTLINED_FUNCTION_6_25();
    sub_1B618D8AC(v20, v21, v22, v23, v24, a6);
    if (a3 <= a5)
    {
      if (a3 > a9 || a9 >= a5)
      {
        OUTLINED_FUNCTION_0_73();
        OUTLINED_FUNCTION_2_42(v27, v28, v29, v30, v26 * a6, v31, v32);
        return;
      }

      goto LABEL_12;
    }
  }

  __break(1u);
}

void static CubicInterpolationMath.cubicExtrema(ax:ay:bx:by:cx:cy:dx:dy:x1:x2:useMonotone:)(double a1@<X0>, char a2@<W1>, double a3@<X2>, char a4@<W3>, char a5@<W4>, double *a6@<X8>, double a7@<D0>, double a8@<D1>, double a9@<D2>, double a10@<D3>, double a11@<D4>, double a12@<D5>, double a13@<D6>, double a14@<D7>)
{
  v14 = a11;
  if (a2)
  {
    a1 = a9;
  }

  if ((a4 & 1) == 0)
  {
    a11 = a3;
  }

  v21 = a12 - a10;
  v22 = 0.0;
  if (((~*&a7 & 0x7FF0000000000000) != 0 || (*&a7 & 0xFFFFFFFFFFFFFLL) == 0) && ((~*&a8 & 0x7FF0000000000000) != 0 || (*&a8 & 0xFFFFFFFFFFFFFLL) == 0))
  {
    v22 = ((a10 - a8) * (v14 - a9) / (a9 - a7) - v21) * 0.5;
  }

  v23 = 0.0;
  if (((~*&a13 & 0x7FF0000000000000) != 0 || (*&a13 & 0xFFFFFFFFFFFFFLL) == 0) && ((~*&a14 & 0x7FF0000000000000) != 0 || (*&a14 & 0xFFFFFFFFFFFFFLL) == 0))
  {
    v23 = ((v14 - a9) * (a14 - a12) / (a13 - v14) - v21) * 0.5;
  }

  v24 = v22 + v23;
  v25 = v22 * -2.0 - v23;
  v26 = v21 + v22;
  v27 = (a1 - a9) / (v14 - a9);
  v28 = (a11 - a9) / (v14 - a9);
  v29 = v27 * (v26 + v27 * (v25 + v27 * v24)) + a10;
  v30 = v28 * (v26 + v28 * (v25 + v28 * v24)) + a10;
  if (v29 >= v30)
  {
    v31 = v27 * (v26 + v27 * (v25 + v27 * v24)) + a10;
  }

  else
  {
    v31 = v28 * (v26 + v28 * (v25 + v28 * v24)) + a10;
  }

  if (v29 >= v30)
  {
    v32 = v27;
  }

  else
  {
    v32 = v28;
  }

  if (v30 >= v29)
  {
    v33 = v27 * (v26 + v27 * (v25 + v27 * v24)) + a10;
  }

  else
  {
    v33 = v28 * (v26 + v28 * (v25 + v28 * v24)) + a10;
  }

  if (v30 >= v29)
  {
    v34 = v27;
  }

  else
  {
    v34 = v28;
  }

  if (v24 == 0.0)
  {
    v35 = -v26 / (v25 + v25);
    if (v27 < v35 && v35 < v28)
    {
      v37 = v35 * (v26 + v25 * v35) + a10;
      if (v31 < v37)
      {
        v31 = v37;
        v32 = v35;
      }

      if (v37 < v33)
      {
        v33 = v37;
        v34 = v35;
      }
    }
  }

  else
  {
    v38 = v24 * 3.0;
    v39 = v25 * v25 - v26 * (v24 * 3.0);
    if (v39 > 0.0)
    {
      v40 = sqrt(v39);
      v41 = (-v25 - v40) / v38;
      v42 = (v40 - v25) / v38;
      if (v27 < v41 && v41 < v28)
      {
        v44 = v41 * (v26 + v41 * (v25 + v24 * v41)) + a10;
        if (v31 < v44)
        {
          v31 = v41 * (v26 + v41 * (v25 + v24 * v41)) + a10;
          v32 = v41;
        }

        if (v44 < v33)
        {
          v33 = v41 * (v26 + v41 * (v25 + v24 * v41)) + a10;
          v34 = v41;
        }
      }

      if (v27 < v42 && v42 < v28)
      {
        v46 = v42 * (v26 + v42 * (v25 + v24 * v42)) + a10;
        if (v31 < v46)
        {
          v31 = v46;
          v32 = v42;
        }

        if (v46 < v33)
        {
          v33 = v46;
          v34 = v42;
        }
      }
    }
  }

  v47 = v34 * v14 + (1.0 - v34) * a9;
  v48 = v32 * v14 + (1.0 - v32) * a9;
  if ((a5 & 1) == 0)
  {
    goto LABEL_83;
  }

  v116 = v14 - a9;
  v117 = v34;
  v118 = v32;
  sub_1B618D8AC(v14, a12, a7, a8, a9, a10);
  if (a7 > a9)
  {
    __break(1u);
    goto LABEL_85;
  }

  if (v47 < a7 || v47 >= a9)
  {
    OUTLINED_FUNCTION_6_25();
    v55 = sub_1B618D8AC(v50, v51, v52, v53, v54, a12);
    if (a9 <= v14)
    {
      if (v47 >= a9 && v47 < v14)
      {
        v72 = OUTLINED_FUNCTION_5_35(v55, v56, v57, v58, v59, v60, v61, v62, v115, v116);
        OUTLINED_FUNCTION_1_45(a12 - v72, v73, v47 - a9, v74, v75);
      }

      else
      {
        OUTLINED_FUNCTION_0_73();
        OUTLINED_FUNCTION_2_42(v66, v67, v68, v69, v64 * v65, v70, v71);
      }

      goto LABEL_70;
    }

LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  OUTLINED_FUNCTION_4_30();
  OUTLINED_FUNCTION_3_36();
LABEL_70:
  if (v48 >= a7 && v48 < a9)
  {
    OUTLINED_FUNCTION_4_30();
    OUTLINED_FUNCTION_3_36();
    v98 = v105 * (v105 * (v103 - v104)) * v109 + v106 * v107 + v105 * (v105 * v102 + v103) * v108;
    v101 = v105 * (v105 * v105) * a10;
LABEL_82:
    v31 = v101 + v98;
    v34 = v117;
    v32 = v118;
LABEL_83:
    *a6 = v32;
    a6[1] = v48;
    a6[2] = v31;
    a6[3] = v34;
    a6[4] = v47;
    a6[5] = v33;
    return;
  }

  OUTLINED_FUNCTION_6_25();
  v82 = sub_1B618D8AC(v77, v78, v79, v80, v81, a12);
  if (a9 <= v14)
  {
    if (v48 >= a9 && v48 < v14)
    {
      v110 = OUTLINED_FUNCTION_5_35(v82, v83, v84, v85, v86, v87, v88, v89, v115, v116);
      v98 = OUTLINED_FUNCTION_1_45(a12 - v110, v111, v48 - a9, v112, v113);
      v101 = v114 * a12;
    }

    else
    {
      OUTLINED_FUNCTION_0_73();
      v98 = OUTLINED_FUNCTION_2_42(v92, v93, v94, v95, v91 * a12, v96, v97);
      v101 = v99 * v100;
    }

    goto LABEL_82;
  }

LABEL_86:
  __break(1u);
}

double sub_1B618D8AC(double a1, double a2, double a3, double a4, double a5, double a6)
{
  v6 = a5 - a3;
  if (v6 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v6;
  }

  v8 = a1 - a5;
  v9 = (a6 - a4) / v7;
  if (v8 == 0.0)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = v8;
  }

  v11 = (a2 - a6) / v10;
  v12 = 1.0;
  if (v9 >= 0.0)
  {
    v13 = 1.0;
  }

  else
  {
    v13 = -1.0;
  }

  if (v11 < 0.0)
  {
    v12 = -1.0;
  }

  v14 = (v8 * v9 + v6 * v11) / (v6 + v8);
  v15 = fabs(v9);
  v16 = fabs(v11);
  if (v16 >= v15)
  {
    v16 = v15;
  }

  v17 = fabs(v14) * 0.5;
  if (v17 >= v16)
  {
    v17 = v16;
  }

  return v17 * (v12 + v13);
}

_BYTE *storeEnumTagSinglePayload for CubicInterpolationMath(_BYTE *result, int a2, int a3)
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

uint64_t static CurrentWeatherDescriptor.name.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_3_5();
  *aCurrentweather_9 = a1;
  *&aCurrentweather_9[8] = a2;
}

uint64_t (*static CurrentWeatherDescriptor.name.modify())()
{
  OUTLINED_FUNCTION_1_3();
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1B618DA80@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = *&aCurrentweather_9[8];
  *a1 = *aCurrentweather_9;
  a1[1] = v2;
  return sub_1B6220784();
}

uint64_t sub_1B618DAD0(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  *aCurrentweather_9 = v2;
  *&aCurrentweather_9[8] = v1;
  sub_1B6220784();
}

uint64_t *sub_1B618DB34()
{
  if (qword_1EDAB2030 != -1)
  {
    OUTLINED_FUNCTION_0_74();
  }

  return &qword_1EDAB2038;
}

uint64_t static CurrentWeatherDescriptor.version.setter(uint64_t a1, uint64_t a2)
{
  if (qword_1EDAB2030 != -1)
  {
    OUTLINED_FUNCTION_0_74();
  }

  OUTLINED_FUNCTION_3_5();
  qword_1EDAB2038 = a1;
  qword_1EDAB2040 = a2;
}

uint64_t (*static CurrentWeatherDescriptor.version.modify())()
{
  if (qword_1EDAB2030 != -1)
  {
    OUTLINED_FUNCTION_0_74();
  }

  OUTLINED_FUNCTION_1_3();
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1B618DC54@<X0>(void *a1@<X8>)
{
  sub_1B618DB34();
  swift_beginAccess();
  v2 = qword_1EDAB2040;
  *a1 = qword_1EDAB2038;
  a1[1] = v2;
  return sub_1B6220784();
}

uint64_t sub_1B618DCA8(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  sub_1B6220784();
  sub_1B618DB34();
  swift_beginAccess();
  qword_1EDAB2038 = v2;
  qword_1EDAB2040 = v1;
}

_BYTE *storeEnumTagSinglePayload for CurrentWeatherDescriptor(_BYTE *result, int a2, int a3)
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

char *XPCDaemonService.init(machService:targetQueue:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC13WeatherDaemon16XPCDaemonService_state;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB926AE8);
  v7 = swift_allocObject();
  *(v7 + 20) = 0;
  *(v7 + 16) = 0;
  *&v3[v6] = v7;
  v8 = OBJC_IVAR____TtC13WeatherDaemon16XPCDaemonService_machService;
  v9 = sub_1B6220574();
  v10 = *(v9 - 8);
  (*(v10 + 16))(&v3[v8], a1, v9);
  *&v3[OBJC_IVAR____TtC13WeatherDaemon16XPCDaemonService_targetQueue] = a2;
  sub_1B618E014();
  v11 = a2;
  sub_1B6220564();
  *&v3[OBJC_IVAR____TtC13WeatherDaemon16XPCDaemonService_listener] = sub_1B618E058();
  v18.receiver = v3;
  v18.super_class = type metadata accessor for XPCDaemonService();
  v12 = objc_msgSendSuper2(&v18, sel_init);
  v13 = OBJC_IVAR____TtC13WeatherDaemon16XPCDaemonService_listener;
  v14 = *&v12[OBJC_IVAR____TtC13WeatherDaemon16XPCDaemonService_listener];
  v15 = v12;
  [v14 _setQueue_];
  [*&v12[v13] setDelegate_];
  sub_1B621DC04();
  sub_1B621DBF4();
  if (qword_1EDAAF5F8 != -1)
  {
    swift_once();
  }

  sub_1B621DBE4();

  if (v17)
  {
    (*(v10 + 8))(a1, v9);
  }

  else
  {
    [v15 start];

    (*(v10 + 8))(a1, v9);
  }

  return v15;
}

unint64_t sub_1B618E014()
{
  result = qword_1EDAAEAA0;
  if (!qword_1EDAAEAA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDAAEAA0);
  }

  return result;
}

id sub_1B618E058()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_1B62211B4();

  v2 = [v0 initWithMachServiceName_];

  return v2;
}

uint64_t type metadata accessor for XPCDaemonService()
{
  result = qword_1EDAAEF48;
  if (!qword_1EDAAEF48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B618E118(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B6220FE4();
  OUTLINED_FUNCTION_2_7();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_14();
  v10 = v9 - v8;
  v11 = sub_1B6221034();
  OUTLINED_FUNCTION_2_7();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_14();
  v17 = v16 - v15;
  aBlock[4] = a1;
  aBlock[5] = a2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B6098858;
  aBlock[3] = &block_descriptor_4;
  v18 = _Block_copy(aBlock);

  sub_1B6220FF4();
  sub_1B60CADEC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924848);
  sub_1B60CAE44();
  sub_1B6221AA4();
  MEMORY[0x1B8C90A90](0, v17, v10, v18);
  _Block_release(v18);
  (*(v6 + 8))(v10, v4);
  (*(v13 + 8))(v17, v11);
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1B618E364(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a3;
  v19 = result;
  v8 = (a4 & 0xFFFFFFFFFFFFFFFELL);
  for (i = (a5 & 0xFFFFFFFFFFFFFFFELL); v6; --v6)
  {
    v20 = &v18;
    v10 = *v8;
    v11 = *i;
    OUTLINED_FUNCTION_2_7();
    v13 = v12;
    MEMORY[0x1EEE9AC00](v14);
    OUTLINED_FUNCTION_14();
    v17 = v16 - v15;
    (*(v13 + 16))(v16 - v15);
    (*(v11 + 8))(v19, v10, v11);
    result = (*(v13 + 8))(v17, v10);
    if (v5)
    {
      break;
    }

    ++v8;
    ++i;
    a2 += 8;
  }

  return result;
}

id XPCDaemonService.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id XPCDaemonService.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for XPCDaemonService();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1B618E5FC(void *a1)
{
  v2 = v1;
  if (*v2)
  {
    if (qword_1EDAAEB10 != -1)
    {
      swift_once();
    }

    v4 = sub_1B6220B34();
    __swift_project_value_buffer(v4, qword_1EDAC29A0);
    v5 = a1;
    oslog = sub_1B6220B14();
    v6 = sub_1B62217E4();

    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v22 = v8;
      *v7 = 136315138;
      v9 = sub_1B6220564();
      v11 = sub_1B602EEB0(v9, v10, &v22);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_1B6020000, oslog, v6, "Service was already running - ignoring start call: %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x1B8C91C90](v8, -1, -1);
      MEMORY[0x1B8C91C90](v7, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (qword_1EDAAEB10 != -1)
    {
      swift_once();
    }

    v12 = sub_1B6220B34();
    __swift_project_value_buffer(v12, qword_1EDAC29A0);
    v13 = a1;
    v14 = sub_1B6220B14();
    v15 = sub_1B62217C4();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v22 = v17;
      *v16 = 136315138;
      v18 = sub_1B6220564();
      v20 = sub_1B602EEB0(v18, v19, &v22);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_1B6020000, v14, v15, "Starting service: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x1B8C91C90](v17, -1, -1);
      MEMORY[0x1B8C91C90](v16, -1, -1);
    }

    [*&v13[OBJC_IVAR____TtC13WeatherDaemon16XPCDaemonService_listener] resume];
    *v2 = 1;
  }
}

void sub_1B618E8DC(void *a1)
{
  v2 = v1;
  if (*v2)
  {
    if (qword_1EDAAEB10 != -1)
    {
      swift_once();
    }

    v4 = sub_1B6220B34();
    __swift_project_value_buffer(v4, qword_1EDAC29A0);
    v5 = a1;
    v6 = sub_1B6220B14();
    v7 = sub_1B62217C4();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v22 = v9;
      *v8 = 136315138;
      v10 = sub_1B6220564();
      v12 = sub_1B602EEB0(v10, v11, &v22);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_1B6020000, v6, v7, "Stopping service: %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x1B8C91C90](v9, -1, -1);
      MEMORY[0x1B8C91C90](v8, -1, -1);
    }

    [*&v5[OBJC_IVAR____TtC13WeatherDaemon16XPCDaemonService_listener] suspend];
    *v2 = 0;
  }

  else
  {
    if (qword_1EDAAEB10 != -1)
    {
      swift_once();
    }

    v13 = sub_1B6220B34();
    __swift_project_value_buffer(v13, qword_1EDAC29A0);
    v14 = a1;
    oslog = sub_1B6220B14();
    v15 = sub_1B62217E4();

    if (os_log_type_enabled(oslog, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v22 = v17;
      *v16 = 136315138;
      v18 = sub_1B6220564();
      v20 = sub_1B602EEB0(v18, v19, &v22);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_1B6020000, oslog, v15, "Service was already idle - ignoring stop call: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x1B8C91C90](v17, -1, -1);
      MEMORY[0x1B8C91C90](v16, -1, -1);
    }

    else
    {
    }
  }
}

Swift::Void __swiftcall XPCDaemonService.start()()
{
  v1 = *(v0 + OBJC_IVAR____TtC13WeatherDaemon16XPCDaemonService_state);
  os_unfair_lock_lock(v1 + 5);
  sub_1B618EC14();
  os_unfair_lock_unlock(v1 + 5);
}

Swift::Void __swiftcall XPCDaemonService.stop()()
{
  v1 = *(v0 + OBJC_IVAR____TtC13WeatherDaemon16XPCDaemonService_state);
  os_unfair_lock_lock(v1 + 5);
  sub_1B618ECE0();
  os_unfair_lock_unlock(v1 + 5);
}

Swift::Bool __swiftcall XPCDaemonService.listener(_:shouldAcceptNewConnection:)(NSXPCListener _, NSXPCConnection shouldAcceptNewConnection)
{
  v3 = v2;
  v5 = sub_1B6220674();
  OUTLINED_FUNCTION_2_7();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_14();
  v11 = v10 - v9;
  WDDeviceUnlockedSinceBoot();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924678);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1B6225510;
  v13 = sub_1B6220564();
  v15 = v14;
  *(v12 + 56) = MEMORY[0x1E69E6158];
  *(v12 + 64) = sub_1B6035A98();
  *(v12 + 32) = v13;
  *(v12 + 40) = v15;
  sub_1B62206E4();

  (*((*MEMORY[0x1E69E7D40] & *v3) + 0x80))(shouldAcceptNewConnection.super.isa);
  v29 = v7;
  if (qword_1EDAAEB10 != -1)
  {
    OUTLINED_FUNCTION_0_75();
  }

  v16 = sub_1B6220B34();
  __swift_project_value_buffer(v16, qword_1EDAC29A0);
  v17 = v3;
  v18 = sub_1B6220B14();
  v19 = sub_1B62217F4();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v30 = v28;
    *v20 = 136315138;
    v21 = sub_1B6220564();
    isa = shouldAcceptNewConnection.super.isa;
    v24 = v5;
    v25 = sub_1B602EEB0(v21, v22, &v30);

    *(v20 + 4) = v25;
    v5 = v24;
    shouldAcceptNewConnection.super.isa = isa;
    _os_log_impl(&dword_1B6020000, v18, v19, "Accepting connection to service: %s.", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v28);
    OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_30();
  }

  [(objc_class *)shouldAcceptNewConnection.super.isa setExportedObject:v17];
  sub_1B6220554();
  v26 = sub_1B6220664();
  (*(v29 + 8))(v11, v5);
  [(objc_class *)shouldAcceptNewConnection.super.isa setExportedInterface:v26];

  [(objc_class *)shouldAcceptNewConnection.super.isa resume];
  return 1;
}

uint64_t sub_1B618F23C()
{
  result = sub_1B6220574();
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

_BYTE *storeEnumTagSinglePayload for XPCDaemonService.State(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1B618F4B8()
{
  result = qword_1EB926B58;
  if (!qword_1EB926B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB926B58);
  }

  return result;
}

void *WDSAuthenticator.__allocating_init(signatureRoundingInterval:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = type metadata accessor for WDSHMACSigner();
  swift_allocObject();
  v4 = WDSHMACSigner.init(signatureRoundingInterval:)(a1);
  v2[5] = v3;
  v2[6] = &protocol witness table for WDSHMACSigner;
  v2[2] = v4;
  return v2;
}

void *WDSAuthenticator.init(signatureRoundingInterval:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for WDSHMACSigner();
  swift_allocObject();
  v5 = WDSHMACSigner.init(signatureRoundingInterval:)(a1);
  v2[5] = v4;
  v2[6] = &protocol witness table for WDSHMACSigner;
  v2[2] = v5;
  return v2;
}

uint64_t WDSAuthenticator.createSignature(with:)(uint64_t a1)
{
  v3 = v1[5];
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  return (*(v4 + 8))(a1, v3, v4);
}

uint64_t WDSAuthenticator.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 56, 7);
}

uint64_t WDSAuthenticator.sign(request:session:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926B60);
  swift_allocObject();
  return sub_1B62209D4();
}

void sub_1B618F734(void (*a1)(char *), uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, void *a6)
{
  v47 = a6;
  v43 = a2;
  v44 = a1;
  v8 = sub_1B621D284();
  v9 = *(v8 - 8);
  v45 = v8;
  v46 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v42 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for WDSAuthenticationContext();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924690);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v39 - v15;
  v17 = sub_1B621D634();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B621D244();
  if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
  {
    sub_1B60F2264(v16);
    sub_1B618FD84();
    v21 = swift_allocError();
    *v22 = 3;
    a3();
  }

  else
  {
    v41 = a3;
    (*(v18 + 32))(v20, v16, v17);
    v23 = sub_1B621D1E4();
    if (v24)
    {
      v25 = v23;
      v26 = v24;
      sub_1B621D8E4();
      (*(v18 + 16))(&v13[v11[6]], v20, v17);
      *v13 = 0xD00000000000002CLL;
      *(v13 + 1) = 0x80000001B623C010;
      v27 = &v13[v11[7]];
      *v27 = v25;
      v27[1] = v26;
      v28 = &v13[v11[8]];
      *v28 = 0x79654B697061;
      *(v28 + 1) = 0xE600000000000000;
      v29 = v47[5];
      v30 = v47[6];
      __swift_project_boxed_opaque_existential_1(v47 + 2, v29);
      (*(v30 + 8))(&v48, v13, v29, v30);
      v32 = v49;
      v40 = v48;
      v41 = v49;
      v33 = v50;
      v34 = v51;
      v47 = v51;
      v35 = v53;
      v39 = v52;
      v36 = v42;
      v37 = a5;
      v38 = v45;
      (*(v46 + 16))(v42, v37, v45);
      v48 = v40;
      v49 = v32;
      v50 = v33;
      v51 = v34;
      v52 = v39;
      v53 = v35;
      WDSSignature.header.getter();
      sub_1B621D254();

      v44(v36);

      sub_1B60362A8(v33, v47);

      (*(v46 + 8))(v36, v38);
      sub_1B618FDD8(v13);
      (*(v18 + 8))(v20, v17);
      return;
    }

    sub_1B618FD84();
    v21 = swift_allocError();
    *v31 = 2;
    v41();
    (*(v18 + 8))(v20, v17);
  }
}

uint64_t *sub_1B618FC08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  (*(v7 + 16))(v9, a1, a3);
  v11 = sub_1B60367FC(v9, v10, a3, a4);
  (*(v7 + 8))(a1, a3);
  return v11;
}

unint64_t sub_1B618FD84()
{
  result = qword_1EB926B68;
  if (!qword_1EB926B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB926B68);
  }

  return result;
}

uint64_t sub_1B618FDD8(uint64_t a1)
{
  v2 = type metadata accessor for WDSAuthenticationContext();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for WDSAuthenticator.Error(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1B618FF14()
{
  result = qword_1EB926B70;
  if (!qword_1EB926B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB926B70);
  }

  return result;
}

uint64_t static Domain.weatherInternal.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDAB4AA8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B621DC24();
  v3 = __swift_project_value_buffer(v2, qword_1EDAB4AB0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t NetworkMonitor.__allocating_init()()
{
  v0 = swift_allocObject();
  NetworkMonitor.init()();
  return v0;
}

uint64_t NetworkMonitor.deinit()
{

  return v0;
}

uint64_t NetworkMonitor.__deallocating_deinit()
{
  NetworkMonitor.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

uint64_t Article.init(id:supportedStorefronts:locale:headlineOverride:phenomena:alertIds:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  a9[8] = a10;
  return result;
}

uint64_t Article.id.getter()
{
  v1 = *v0;
  sub_1B6220784();
  return v1;
}

uint64_t Article.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Article.supportedStorefronts.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t Article.locale.getter()
{
  v1 = *(v0 + 24);
  sub_1B6220784();
  return v1;
}

uint64_t Article.locale.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t Article.headlineOverride.getter()
{
  v1 = *(v0 + 40);
  sub_1B6220784();
  return v1;
}

uint64_t Article.headlineOverride.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t Article.phenomena.setter(uint64_t a1)
{

  *(v1 + 56) = a1;
  return result;
}

uint64_t Article.alertIds.setter(uint64_t a1)
{

  *(v1 + 64) = a1;
  return result;
}

uint64_t Article.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926BA8);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B619069C();
  sub_1B62220D4();
  if (!v2)
  {
    v6 = sub_1B6221D94();
    v8 = v7;
    LOBYTE(v19) = 1;
    LOBYTE(v18) = 2;
    v17 = sub_1B6221D14();
    sub_1B6221D24();
    sub_1B6221D24();
    v9 = sub_1B6221D34();
    v10 = MEMORY[0x1E69E7CC0];
    if (v9)
    {
      v10 = v9;
    }

    v16 = v10;
    sub_1B621D944();
    sub_1B6162614(&qword_1EDAAFB80);
    v11 = sub_1B6221D34();
    if (v11)
    {
      v12 = v11;
    }

    else
    {
      v12 = MEMORY[0x1E69E7CC0];
    }

    v13 = OUTLINED_FUNCTION_1_46();
    v14(v13);
    *a2 = v6;
    *(a2 + 8) = v8;
    *(a2 + 16) = v17;
    *(a2 + 40) = v18;
    *(a2 + 24) = v19;
    *(a2 + 56) = v16;
    *(a2 + 64) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1B619069C()
{
  result = qword_1EDAAEC00;
  if (!qword_1EDAAEC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAAEC00);
  }

  return result;
}

uint64_t sub_1B61906F0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1B6221F24() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000014 && 0x80000001B623EDF0 == a2;
    if (v6 || (sub_1B6221F24() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000;
      if (v7 || (sub_1B6221F24() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000010 && 0x80000001B623EE10 == a2;
        if (v8 || (sub_1B6221F24() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6E656D6F6E656870 && a2 == 0xE900000000000061;
          if (v9 || (sub_1B6221F24() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x7364497472656C61 && a2 == 0xE800000000000000)
          {

            return 5;
          }

          else
          {
            v11 = sub_1B6221F24();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1B61908E4(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000014;
      break;
    case 2:
      result = 0x656C61636F6CLL;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0x6E656D6F6E656870;
      break;
    case 5:
      result = 0x7364497472656C61;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B61909A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B61906F0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B61909C8(uint64_t a1)
{
  v2 = sub_1B619069C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B6190A04(uint64_t a1)
{
  v2 = sub_1B619069C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Article.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926BB0);
  OUTLINED_FUNCTION_2();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16 - v7;
  v9 = v1[2];
  v22 = v1[3];
  v23 = v9;
  v10 = v1[4];
  v11 = v1[5];
  v12 = v1[7];
  v20 = v1[6];
  v21 = v10;
  v18 = v12;
  v19 = v11;
  v17 = v1[8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B619069C();
  sub_1B62220F4();
  LOBYTE(v26) = 0;
  v13 = v24;
  sub_1B6221E84();
  if (!v13)
  {
    v26 = v23;
    v25 = 1;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F68);
    sub_1B60D0644();
    OUTLINED_FUNCTION_0_76();
    OUTLINED_FUNCTION_2_43();
    sub_1B6221EC4();
    v24 = v14;
    LOBYTE(v26) = 2;
    OUTLINED_FUNCTION_2_43();
    sub_1B6221E24();
    LOBYTE(v26) = 3;
    OUTLINED_FUNCTION_2_43();
    sub_1B6221E24();
    v26 = v18;
    v25 = 4;
    OUTLINED_FUNCTION_0_76();
    OUTLINED_FUNCTION_2_43();
    sub_1B6221EC4();
    v26 = v17;
    v25 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926BB8);
    sub_1B6190CB0();
    OUTLINED_FUNCTION_0_76();
    OUTLINED_FUNCTION_2_43();
    sub_1B6221EC4();
  }

  return (*(v5 + 8))(v8, v3);
}

unint64_t sub_1B6190CB0()
{
  result = qword_1EDAAEAF8;
  if (!qword_1EDAAEAF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB926BB8);
    sub_1B6162614(&unk_1EDAAFB88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAAEAF8);
  }

  return result;
}

uint64_t sub_1B6190DB0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_1B6190DF0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

_BYTE *storeEnumTagSinglePayload for Article.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1B6190F30()
{
  result = qword_1EB926BC0;
  if (!qword_1EB926BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB926BC0);
  }

  return result;
}

unint64_t sub_1B6190F88()
{
  result = qword_1EDAAEBF0;
  if (!qword_1EDAAEBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAAEBF0);
  }

  return result;
}

unint64_t sub_1B6190FE0()
{
  result = qword_1EDAAEBF8;
  if (!qword_1EDAAEBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAAEBF8);
  }

  return result;
}

WeatherDaemon::WeatherDataRequest_optional __swiftcall WeatherDataRequest.init(rawValue:)(Swift::String rawValue)
{
  v1 = sub_1B6221CD4();

  if (v1 >= 0xE)
  {
    return 14;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_1B6191090()
{
  result = qword_1EB926BC8;
  if (!qword_1EB926BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB926BC8);
  }

  return result;
}

WeatherDaemon::WeatherDataRequest_optional sub_1B61910FC@<W0>(Swift::String *a1@<X0>, WeatherDaemon::WeatherDataRequest_optional *a2@<X8>)
{
  result.value = WeatherDataRequest.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

unint64_t sub_1B619112C@<X0>(unint64_t *a1@<X8>)
{
  result = WeatherDataRequest.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

_BYTE *storeEnumTagSinglePayload for WeatherDataRequest(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF2)
  {
    v6 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
          *result = a2 + 13;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1B61912D4()
{
  result = qword_1EB926BD0;
  if (!qword_1EB926BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB926BD0);
  }

  return result;
}

uint64_t AirQualityScaleMaxPrefix.maxAqi.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t AirQualityScaleMaxPrefix._prefix.getter()
{
  v1 = *(v0 + 16);
  sub_1B6220784();
  return v1;
}

uint64_t AirQualityScaleMaxPrefix._prefix.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_1B6191404@<X0>(char *a1@<X8>)
{
  v2 = sub_1B6221CD4();

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

uint64_t AirQualityScaleMaxPrefix.CodingKeys.stringValue.getter()
{
  if (*v0)
  {
    return 0x786966657270;
  }

  else
  {
    return 0x69714178616DLL;
  }
}

uint64_t sub_1B61914D8@<X0>(uint64_t *a1@<X8>)
{
  result = AirQualityScaleMaxPrefix.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = 0xE600000000000000;
  return result;
}

uint64_t sub_1B6191528(uint64_t a1)
{
  v2 = sub_1B6191750();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B6191564(uint64_t a1)
{
  v2 = sub_1B6191750();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

WeatherDaemon::AirQualityScaleMaxPrefix __swiftcall AirQualityScaleMaxPrefix.init(maxAqi:_prefix:)(Swift::Int_optional maxAqi, Swift::String_optional _prefix)
{
  *v2 = maxAqi.value;
  *(v2 + 8) = maxAqi.is_nil;
  *(v2 + 16) = _prefix;
  result._prefix = _prefix;
  result.maxAqi = maxAqi;
  return result;
}

uint64_t AirQualityScaleMaxPrefix.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926BD8);
  OUTLINED_FUNCTION_2();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v15 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6191750();
  sub_1B62220D4();
  if (!v2)
  {
    LOBYTE(v15) = 0;
    sub_1B6221D24();
    v11 = v16;
    v12 = v17;
    v18 = 1;
    sub_1B6221D24();
    (*(v7 + 8))(v10, v5);
    v13 = v15;
    *a2 = v11;
    *(a2 + 8) = v12;
    *(a2 + 16) = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1B6191750()
{
  result = qword_1EB926BE0;
  if (!qword_1EB926BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB926BE0);
  }

  return result;
}

uint64_t AirQualityScaleMaxPrefix.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926BE8);
  OUTLINED_FUNCTION_2();
  v12 = v5;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v11 - v7;
  v9 = *(v1 + 16);
  v11[1] = *(v1 + 24);
  v11[2] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6191750();
  sub_1B62220F4();
  v14 = 0;
  sub_1B6221E64();
  if (!v2)
  {
    v13 = 1;
    sub_1B6221E24();
  }

  return (*(v12 + 8))(v8, v4);
}

unint64_t sub_1B619191C()
{
  result = qword_1EB926BF0;
  if (!qword_1EB926BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB926BF0);
  }

  return result;
}

unint64_t sub_1B6191974()
{
  result = qword_1EB926BF8;
  if (!qword_1EB926BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB926BF8);
  }

  return result;
}

unint64_t sub_1B61919CC()
{
  result = qword_1EB926C00;
  if (!qword_1EB926C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB926C00);
  }

  return result;
}

uint64_t sub_1B6191A50(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 32))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 24);
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

_BYTE *storeEnumTagSinglePayload for AirQualityScaleMaxPrefix.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t News.init(metadata:placements:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1B603D8D8(a1, a3);
  result = type metadata accessor for News();
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t News.placements.getter()
{
  type metadata accessor for News();

  return sub_1B6220784();
}

uint64_t News.placements.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for News() + 20);

  *(v1 + v3) = a1;
  return result;
}

uint64_t News.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = type metadata accessor for Metadata();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926C08);
  OUTLINED_FUNCTION_2();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v17 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6191F10();
  sub_1B62220D4();
  if (!v2)
  {
    v12 = v8;
    v13 = v17;
    v20 = 0;
    sub_1B6093DE4(&qword_1EDAB1000);
    v14 = v18;
    sub_1B6221DD4();
    v19 = 1;
    sub_1B6191F64();
    v16 = sub_1B6221D14();
    (*(v12 + 8))(v11, v14);
    sub_1B603D8D8(v6, v13);
    *(v13 + *(type metadata accessor for News() + 20)) = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1B6191F10()
{
  result = qword_1EDAAEC28;
  if (!qword_1EDAAEC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAAEC28);
  }

  return result;
}

unint64_t sub_1B6191F64()
{
  result = qword_1EDAAEB50;
  if (!qword_1EDAAEB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAAEB50);
  }

  return result;
}

uint64_t sub_1B6191FB8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x617461646174656DLL && a2 == 0xE800000000000000;
  if (v4 || (sub_1B6221F24() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E656D6563616C70 && a2 == 0xEA00000000007374)
  {

    return 1;
  }

  else
  {
    v7 = sub_1B6221F24();

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

uint64_t sub_1B6192088(char a1)
{
  if (a1)
  {
    return 0x6E656D6563616C70;
  }

  else
  {
    return 0x617461646174656DLL;
  }
}

uint64_t sub_1B61920CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B6191FB8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B61920F4(uint64_t a1)
{
  v2 = sub_1B6191F10();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B6192130(uint64_t a1)
{
  v2 = sub_1B6191F10();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t News.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926C10);
  OUTLINED_FUNCTION_2();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v12[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6191F10();
  sub_1B62220F4();
  v14 = 0;
  type metadata accessor for Metadata();
  sub_1B6093DE4(&qword_1EDAB1008);
  OUTLINED_FUNCTION_2_2();
  if (!v2)
  {
    v13 = *(v3 + *(type metadata accessor for News() + 20));
    v12[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926C18);
    sub_1B6192310();
    OUTLINED_FUNCTION_2_2();
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_1B6192310()
{
  result = qword_1EDAAEAB8;
  if (!qword_1EDAAEAB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB926C18);
    sub_1B6192394();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAAEAB8);
  }

  return result;
}

unint64_t sub_1B6192394()
{
  result = qword_1EDAAEB58;
  if (!qword_1EDAAEB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAAEB58);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for News.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1B6192528()
{
  result = qword_1EB926C20;
  if (!qword_1EB926C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB926C20);
  }

  return result;
}

unint64_t sub_1B6192580()
{
  result = qword_1EDAAEC18;
  if (!qword_1EDAAEC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAAEC18);
  }

  return result;
}

unint64_t sub_1B61925D8()
{
  result = qword_1EDAAEC20;
  if (!qword_1EDAAEC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAAEC20);
  }

  return result;
}

id sub_1B6192634()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = *(v0 + 32);
  }

  else
  {
    v3 = sub_1B619268C();
    v4 = *(v0 + 32);
    *(v0 + 32) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

id sub_1B619268C()
{
  v0 = sub_1B6220674();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B616F3F8();
  if (qword_1EDAB0300 != -1)
  {
    swift_once();
  }

  v4 = sub_1B6220574();
  __swift_project_value_buffer(v4, qword_1EDAB0308);
  v5 = sub_1B6220564();
  v7 = sub_1B61927EC(v5, v6, 4096);
  sub_1B6220554();
  v8 = sub_1B6220664();
  (*(v1 + 8))(v3, v0);
  [v7 setRemoteObjectInterface_];

  return v7;
}

id sub_1B61927EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_1B62211B4();

  v6 = [v4 initWithMachServiceName:v5 options:a3];

  return v6;
}

uint64_t WeatherDataService.__allocating_init()()
{
  v0 = swift_allocObject();
  WeatherDataService.init()();
  return v0;
}

void *WeatherDataService.init()()
{
  v1 = sub_1B6220514();
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1B6220504();
  sub_1B6220534();
  OUTLINED_FUNCTION_73();
  v2 = sub_1B6220524();
  v0[3] = 0;
  v0[4] = 0;
  v0[2] = v2;
  return v0;
}