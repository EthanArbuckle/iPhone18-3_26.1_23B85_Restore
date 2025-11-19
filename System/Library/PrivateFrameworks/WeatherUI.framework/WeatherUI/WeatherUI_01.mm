void __swift_store_extra_inhabitant_indexTm()
{
  OUTLINED_FUNCTION_107_0();
  if (v3)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_1BCE18E40();
    v5 = OUTLINED_FUNCTION_105(*(v4 + 20));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1BCE19280();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1BC95E2C0@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{
  v23 = a3;
  v5 = sub_1BCE198B0();
  OUTLINED_FUNCTION_2();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v22 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  OUTLINED_FUNCTION_2();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v22 - v18;
  sub_1BC95DCE8();
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    sub_1BC94C05C(v13, a1);
    v20 = type metadata accessor for WeatherProviderAttributionCacheManager.ProviderDetails(0);
    return __swift_storeEnumTagSinglePayload(v23, 1, 1, v20);
  }

  else
  {
    (*(v16 + 32))(v19, v13, v14);
    sub_1BCE1A0B0();
    sub_1BC95DD40(v23);
    (*(v7 + 8))(v10, v5);
    return (*(v16 + 8))(v19, v14);
  }
}

uint64_t sub_1BC95E500@<X0>(char *a1@<X8>)
{
  v39 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09490);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v36 = &v32 - v2;
  v37 = sub_1BCE18E40();
  v34 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v35 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0ACE0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v32 - v5;
  v7 = sub_1BCE19DD0();
  v38 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD085B0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v32 - v11;
  v13 = sub_1BCE19A90();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BC95DCE8();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_1BC94C05C(v12, &qword_1EBD085B0);
    v17 = type metadata accessor for WeatherProviderAttributionCacheManager.ProviderDetails(0);
    v18 = v39;
  }

  else
  {
    v19 = v39;
    (*(v14 + 32))(v16, v12, v13);
    sub_1BCE19A40();
    if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
    {
      (*(v14 + 8))(v16, v13);
      v20 = &qword_1EBD0ACE0;
      v21 = v6;
    }

    else
    {
      (*(v38 + 32))(v9, v6, v7);
      v22 = v36;
      sub_1BCE19DC0();
      v23 = v37;
      if (__swift_getEnumTagSinglePayload(v22, 1, v37) != 1)
      {
        v26 = v34;
        (*(v34 + 32))(v35, v22, v23);
        v27 = v23;
        v36 = sub_1BCE19DB0();
        v33 = v28;
        v29 = type metadata accessor for WeatherProviderAttributionCacheManager.ProviderDetails(0);
        v30 = v35;
        (*(v26 + 16))(&v19[*(v29 + 20)], v35, v27);
        sub_1BCE19A20();
        (*(v26 + 8))(v30, v37);
        (*(v38 + 8))(v9, v7);
        (*(v14 + 8))(v16, v13);
        v31 = v33;
        *v19 = v36;
        *(v19 + 1) = v31;
        v18 = v19;
        v24 = 0;
        v17 = v29;
        return __swift_storeEnumTagSinglePayload(v18, v24, 1, v17);
      }

      (*(v38 + 8))(v9, v7);
      (*(v14 + 8))(v16, v13);
      v20 = &qword_1EBD09490;
      v21 = v22;
    }

    sub_1BC94C05C(v21, v20);
    v17 = type metadata accessor for WeatherProviderAttributionCacheManager.ProviderDetails(0);
    v18 = v19;
  }

  v24 = 1;
  return __swift_storeEnumTagSinglePayload(v18, v24, 1, v17);
}

uint64_t sub_1BC95EA10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BCE198B0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 && *(a1 + 16))
  {
    sub_1BCE197A0();
    sub_1BCE19790();
    sub_1BC95DD40(a2);
    return (*(v5 + 8))(v7, v4);
  }

  else
  {
    v9 = type metadata accessor for WeatherProviderAttributionCacheManager.ProviderDetails(0);

    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v9);
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_14_9(*(a1 + 8));
  }

  sub_1BCE18E40();
  v5 = OUTLINED_FUNCTION_105(*(a3 + 20));

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

uint64_t __swift_get_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BCE19280();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1BC95ECC8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08568);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BC95ED38()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08568);
  swift_arrayDestroy();
  v0 = OUTLINED_FUNCTION_0_22();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void sub_1BC95EDB4()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 6);
  sub_1BC95F1A4(&v1[4]);
  os_unfair_lock_unlock(v1 + 6);
}

uint64_t sub_1BC95EE18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a4;
  v7 = type metadata accessor for WeatherProviderAttributionCacheManager.ProviderDetails(0);
  v34 = *(v7 - 8);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = (v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v12 = v32 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0ACB8);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v35 = v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v32 - v16;
  v18 = type metadata accessor for WeatherProviderAttributionCacheManager.ProviderDetailsCacheEntry(0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = (v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = a3;
  sub_1BCE1D800();
  v21 = v38;
  sub_1BC95F1C4(a1);
  if (v21)
  {
  }

  v32[2] = a2;
  v33 = v18;
  v38 = a1;

  v23 = v36;
  v24 = *(v36 + 16);
  if (v24)
  {
    v32[1] = 0;
    sub_1BCE1D800();
    sub_1BCBE3438(*v38, v17);

    if (__swift_getEnumTagSinglePayload(v17, 1, v33) == 1)
    {
      sub_1BC94C05C(v17, &qword_1EBD0ACB8);
      v25 = sub_1BCE1D800();
      v27 = v26;
      sub_1BCE18F60();
      *v20 = MEMORY[0x1E69E7CD0];
      v20[1] = v25;
      v20[2] = v27;
    }

    else
    {
      sub_1BCBED070();
    }

    v28 = v23 + ((*(v34 + 80) + 32) & ~*(v34 + 80));
    v29 = *(v34 + 72);
    do
    {
      sub_1BC962A04();
      sub_1BCBE9608(v12, v10);
      sub_1BCBED0C8(v12, type metadata accessor for WeatherProviderAttributionCacheManager.ProviderDetails);
      v28 += v29;
      --v24;
    }

    while (v24);
    sub_1BCE1D800();
    v30 = v35;
    sub_1BC962A04();
    __swift_storeEnumTagSinglePayload(v30, 0, 1, v33);
    v31 = v38;
    sub_1BCCD1448();
    sub_1BCBE9210(*v31);
    return sub_1BCBED0C8(v20, type metadata accessor for WeatherProviderAttributionCacheManager.ProviderDetailsCacheEntry);
  }

  return result;
}

unint64_t sub_1BC95F1C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0ACB8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v15 = &v14 - v3;
  v4 = sub_1BCE19060();
  v17 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for WeatherProviderAttributionCacheManager.ProviderDetailsCacheEntry(0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  result = MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - v10;
  v16 = a1;
  if (*(*a1 + 16))
  {
    result = sub_1BC95511C();
    if (v12)
    {
      sub_1BC962A04();
      sub_1BCBED070();
      sub_1BCE197B0();
      sub_1BC94CC74(&qword_1EDA1EF40, MEMORY[0x1E6969530]);
      v13 = sub_1BCE1D1E0();
      (*(v17 + 8))(v6, v4);
      if ((v13 & 1) == 0)
      {
        __swift_storeEnumTagSinglePayload(v15, 1, 1, v7);

        sub_1BCCD1448();
      }

      return sub_1BCBED0C8(v11, type metadata accessor for WeatherProviderAttributionCacheManager.ProviderDetailsCacheEntry);
    }
  }

  return result;
}

uint64_t Date.startOfDay(timeZone:)()
{
  sub_1BCE193E0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_85_0();
  sub_1BCE192A0();
  sub_1BCE19290();
  v1 = OUTLINED_FUNCTION_16_2();
  return v2(v1);
}

double UIColor.rgbaComponents.getter()
{
  v6[1] = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  v4 = 0;
  v5 = 0;
  v3 = 0;
  v1 = [v0 getRed:v6 green:&v5 blue:&v4 alpha:&v3];
  result = 0.0;
  if (v1)
  {
    return *v6;
  }

  return result;
}

void sub_1BC95F620()
{
  if (!qword_1EDA1F1D0)
  {
    type metadata accessor for NSUnitTemperature.WeatherFormatComponent(255);
    sub_1BC95003C(qword_1EDA1F100, type metadata accessor for NSUnitTemperature.WeatherFormatComponent);
    v0 = sub_1BCE1D6D0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDA1F1D0);
    }
  }
}

void sub_1BC95F6B4()
{
  sub_1BC95F620();
  if (v0 <= 0x3F)
  {
    sub_1BCE19280();
    if (v1 <= 0x3F)
    {
      sub_1BCE18D50();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1BC95F780()
{
  v0 = type metadata accessor for NSUnitTemperature.WeatherFormatUnitConfiguration(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

void sub_1BC95F7F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1BC947608(255, qword_1EDA1EFC0);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1BC95F868()
{
  sub_1BC95F7F8(319, &qword_1EDA1F688, MEMORY[0x1E6968030]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t DayWeather.conditionOfRelevance(isToday:)(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0BB60);
  OUTLINED_FUNCTION_14(v3);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_2_65();
  OUTLINED_FUNCTION_2();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2_0();
  v11 = v10 - v9;
  if ((a1 & 1) == 0)
  {
    return sub_1BCE19530();
  }

  sub_1BCE19480();
  if (__swift_getEnumTagSinglePayload(v1, 1, v5) == 1)
  {
    sub_1BC94C0B4(v1, &qword_1EBD0BB60);
    return sub_1BCE19530();
  }

  v13 = OUTLINED_FUNCTION_3_60();
  v14(v13);
  sub_1BCE19CE0();
  return (*(v7 + 8))(v11, v5);
}

double DayWeather.precipitationOfRelevance(isToday:)(uint64_t a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0BB60);
  OUTLINED_FUNCTION_14(v4);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_2_65();
  OUTLINED_FUNCTION_2();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2_0();
  v12 = v11 - v10;
  if (a2)
  {
    sub_1BCE19480();
    if (__swift_getEnumTagSinglePayload(v2, 1, v6) != 1)
    {
      v15 = OUTLINED_FUNCTION_3_60();
      v16(v15);
      sub_1BCE19CD0();
      v14 = v17;
      sub_1BCE19CC0();
      (*(v8 + 8))(v12, v6);
      return v14;
    }

    sub_1BC94C0B4(v2, &qword_1EBD0BB60);
  }

  sub_1BCE194D0();
  v14 = v13;
  sub_1BCE19490();
  return v14;
}

uint64_t Date.dayOfWeek(timeZone:context:)()
{
  if (qword_1EDA1EF48 != -1)
  {
    OUTLINED_FUNCTION_15_22();
  }

  OUTLINED_FUNCTION_25_0();

  return sub_1BC9600B0();
}

void sub_1BC95FC84()
{
  OUTLINED_FUNCTION_20_0();
  v1 = v0;
  v3 = v2;
  v4 = sub_1BCE1A7B0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_36_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD07D60);
  *(swift_allocObject() + 16) = xmmword_1BCE3E050;
  sub_1BCE1A7A0();
  OUTLINED_FUNCTION_10_31();
  sub_1BC95FF1C(v5, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07D70);
  OUTLINED_FUNCTION_9_29();
  sub_1BC957184(v7, &qword_1EBD07D70);
  sub_1BCE1DC30();
  sub_1BCE1A7D0();
  swift_allocObject();
  v8 = sub_1BCE1A7C0();
  v9 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  sub_1BC95FFAC(v9);

  *v3 = v9;
  *v1 = v8;
  OUTLINED_FUNCTION_21();
}

uint64_t OUTLINED_FUNCTION_79_1(__n128 a1)
{
  v1[5] = a1;
}

uint64_t sub_1BC95FED4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BC95FF1C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BC95FF64(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1BC95FFAC(void *a1)
{
  v3 = sub_1BCE19280();
  OUTLINED_FUNCTION_2();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_50();
  sub_1BCE19150();
  v7 = sub_1BCE19140();
  (*(v5 + 8))(v1, v3);
  [a1 setLocale_];

  v8 = sub_1BCE1D240();
  v9 = OUTLINED_FUNCTION_33_9();
  [v9 v10];
}

uint64_t sub_1BC9600B0()
{
  sub_1BCE1A7D0();

  sub_1BCE1A960();

  return v1;
}

uint64_t sub_1BC960144()
{
  v1 = OUTLINED_FUNCTION_12_0();
  v2(v1);
  OUTLINED_FUNCTION_4();
  v3 = OUTLINED_FUNCTION_10_1();
  v4(v3);
  return v0;
}

uint64_t sub_1BC960198(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4();
  (*(v5 + 32))(a2, a1);
  return a2;
}

size_t sub_1BC9601F8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = a2;
  }

  if (!v6)
  {
    return MEMORY[0x1E69E7CC0];
  }

  OUTLINED_FUNCTION_22_13(a1, a2, a3);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size_0(v11);
  if (v9)
  {
    if (result - v10 != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = v5;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BC960328(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1BC960388(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4();
  v4 = OUTLINED_FUNCTION_10_1();
  v5(v4);
  return a2;
}

void sub_1BC9603E4()
{
  OUTLINED_FUNCTION_18_0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = type metadata accessor for MoonRiseSet();
  OUTLINED_FUNCTION_2();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_0();
  v13 = v12 - v11;
  for (i = *(v2 + 16) - 1; i != -1; --i)
  {
    sub_1BC959000(v2 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * i, v13, type metadata accessor for MoonRiseSet);
    v15 = v4(v13);
    if (v0)
    {
      sub_1BC9542F8(v13, type metadata accessor for MoonRiseSet);
      goto LABEL_9;
    }

    if (v15)
    {
      sub_1BC960328(v13, v6, type metadata accessor for MoonRiseSet);
      v16 = 0;
      goto LABEL_8;
    }

    sub_1BC9542F8(v13, type metadata accessor for MoonRiseSet);
  }

  v16 = 1;
LABEL_8:
  __swift_storeEnumTagSinglePayload(v6, v16, 1, v7);
LABEL_9:
  OUTLINED_FUNCTION_20_9();
  OUTLINED_FUNCTION_17_1();
}

BOOL sub_1BC96056C(uint64_t a1, uint64_t a2)
{
  sub_1BCE19060();
  OUTLINED_FUNCTION_0_29();
  sub_1BC94B930(v4, v5);
  if (sub_1BCE1D210() & 1) != 0 && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08D40), (sub_1BCE1D210()) && (v6 = *(type metadata accessor for MoonDataProvider.LunarEventsCacheKey(0) + 20), v7 = a1 + v6, v8 = *(a1 + v6), v9 = (a2 + v6), v8 == *v9))
  {
    return *(v7 + 8) == v9[1];
  }

  else
  {
    return 0;
  }
}

double sub_1BC960650()
{
  sub_1BCE1A7D0();

  sub_1BCE1A960();

  return v1;
}

uint64_t static MoonImage.imageName(phaseAngle:parallacticAngle:)(double a1, double a2)
{
  sub_1BC956D98(a1, a2);
  v2 = sub_1BCE1E050();
  MEMORY[0x1BFB2FB00](v2);

  return 0x736168506E6F6F6DLL;
}

void sub_1BC960754()
{
  if (!qword_1EDA1BC28)
  {
    sub_1BCE1B4E0();
    v0 = sub_1BCE1DB10();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDA1BC28);
    }
  }
}

unint64_t sub_1BC9607AC()
{
  result = qword_1EDA1BB50;
  if (!qword_1EDA1BB50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD08620);
    sub_1BC957184(&qword_1EDA1B748, &qword_1EBD08638);
    sub_1BC957184(&qword_1EDA1B6F8, &qword_1EBD08640);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1BB50);
  }

  return result;
}

uint64_t __DeviceSupportsStickyHeaders_block_invoke()
{
  result = MGIsDeviceOneOfType();
  DeviceSupportsStickyHeaders_result = result ^ 1;
  return result;
}

uint64_t sub_1BC960CCC(void *a1)
{
  if (*a1 != -1)
  {
    swift_once();
  }
}

uint64_t DeviceSupportsForegroundEffects()
{
  if (DeviceSupportsForegroundEffects_onceToken != -1)
  {
    DeviceSupportsForegroundEffects_cold_1();
  }

  return DeviceSupportsForegroundEffects_result;
}

uint64_t sub_1BC960DC8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BCE1B450();

  return v1;
}

uint64_t sub_1BC960E3C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BC960DC8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1BC960E94()
{
  OUTLINED_FUNCTION_20_1();
  v0 = EnvironmentValues.useGlobalCoordinateSpaceForForegroundEffectBackgroundContainer.getter();
  return OUTLINED_FUNCTION_9_40(v0);
}

uint64_t sub_1BC960EDC(void (*a1)(void))
{
  a1();
  sub_1BCE1BC30();
  return v2;
}

unint64_t sub_1BC960F24()
{
  result = qword_1EDA1B890;
  if (!qword_1EDA1B890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1B890);
  }

  return result;
}

uint64_t sub_1BC960F78@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BC960FA4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1BC961014()
{
  OUTLINED_FUNCTION_20_1();
  v0 = EnvironmentValues.foregroundEffectsAreAbleToRender.getter();
  return OUTLINED_FUNCTION_9_40(v0);
}

unint64_t sub_1BC96103C()
{
  result = qword_1EDA17670[0];
  if (!qword_1EDA17670[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDA17670);
  }

  return result;
}

uint64_t EnvironmentValues.foregroundEffectPlaybackController.getter()
{
  sub_1BC96114C();
  sub_1BCE1BC30();
  if (v2[0])
  {
    v0 = 0;
  }

  else
  {
    v0 = v2[1] == 1;
  }

  if (v0)
  {
    sub_1BC94C0B4(v2, &qword_1EBD0E210);
  }

  else
  {
    swift_unknownObjectWeakLoadStrong();
    sub_1BC96FA1C(v2);
  }

  return OUTLINED_FUNCTION_10_1();
}

uint64_t sub_1BC961120@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundEffectPlaybackController.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1BC96114C()
{
  result = qword_1EDA174B0;
  if (!qword_1EDA174B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA174B0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_23_7()
{

  return sub_1BCE1D780();
}

uint64_t OUTLINED_FUNCTION_23_10(uint64_t a1)
{
  v4 = *(v1 + 24);

  return sub_1BC952B1C(a1, v4, v2);
}

uint64_t OUTLINED_FUNCTION_23_14()
{

  return swift_allocObject();
}

unint64_t OUTLINED_FUNCTION_23_18()
{
  *(v0 - 120) = 11501794;
  *(v0 - 112) = 0xA300000000000000;
  *(v0 - 136) = 0;
  *(v0 - 128) = 0xE000000000000000;

  return sub_1BC970820();
}

unint64_t OUTLINED_FUNCTION_23_19@<X0>(uint64_t a1@<X8>)
{
  v5 = *(*(v2 + 48) + (a1 | (v3 << 6)));

  return sub_1BCBEA394(v5, v1);
}

uint64_t OUTLINED_FUNCTION_23_23()
{
}

uint64_t OUTLINED_FUNCTION_23_25(uint64_t result)
{
  v6 = *(v5 - 168);
  v3[4] = *(v5 - 456);
  v3[5] = v6;
  v3[12] = v4;
  v3[13] = result;
  v3[8] = result;
  v3[9] = v2;
  v3[10] = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_23_27()
{

  return sub_1BCE1DF70();
}

uint64_t OUTLINED_FUNCTION_23_28(double a1, double a2, double a3, double a4)
{
  *&STACK[0x3F0] = a1;
  *&STACK[0x3E8] = a2;
  *&STACK[0x3E0] = a3;
  *&STACK[0x3D8] = a4;
}

uint64_t OUTLINED_FUNCTION_23_29()
{

  return swift_dynamicCast();
}

uint64_t sub_1BC961474()
{
  sub_1BC9621D0();
  sub_1BCE1BC30();
  return v1;
}

uint64_t static Font.system(_:weight:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08780);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v7 - v1;
  v3 = *MEMORY[0x1E6980E20];
  v4 = sub_1BCE1C350();
  (*(*(v4 - 8) + 104))(v2, v3, v4);
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v4);
  v5 = sub_1BCE1C3F0();
  sub_1BC96160C(v2);
  return v5;
}

uint64_t sub_1BC96160C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08780);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t __DeviceSupportsMaterialBackgrounds_block_invoke()
{
  result = MGIsDeviceOneOfType();
  DeviceSupportsMaterialBackgrounds_result = result ^ 1;
  return result;
}

uint64_t __DeviceSupportsVFX_block_invoke()
{
  result = MGIsDeviceOneOfType();
  DeviceSupportsVFX_result = result ^ 1;
  return result;
}

unint64_t sub_1BC962098()
{
  result = qword_1EDA1BE50;
  if (!qword_1EDA1BE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1BE50);
  }

  return result;
}

uint64_t sub_1BC9620EC()
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  sub_1BC96114C();
  sub_1BCE1BC40();
  return swift_unknownObjectRelease();
}

uint64_t sub_1BC962164(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
      *(result + 8) = 1;
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

uint64_t sub_1BC9621A4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BC961474();
  *a1 = result;
  return result;
}

unint64_t sub_1BC9621D0()
{
  result = qword_1EDA18288;
  if (!qword_1EDA18288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA18288);
  }

  return result;
}

uint64_t DeviceSupportsMaterialBackgrounds()
{
  if (DeviceSupportsMaterialBackgrounds_onceToken != -1)
  {
    DeviceSupportsMaterialBackgrounds_cold_1();
  }

  return DeviceSupportsMaterialBackgrounds_result;
}

uint64_t getEnumTagSinglePayload for TargetWindowSizeClass(unsigned __int8 *a1, unsigned int a2)
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

void *sub_1BC9623A4(void *result, int a2)
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

double UIWindow.displayScale.getter()
{
  v1 = [v0 traitCollection];
  [v1 displayScale];
  v3 = v2;

  return v3;
}

uint64_t WeatherConditionBackgroundOptions.init(locationIDs:applyMask:applyLegibilityScrim:effectViewID:canShowCollisionLayer:cameraPositionType:displayLocation:windowBounds:displayScale:locationViewerOrientation:)@<X0>(uint64_t result@<X0>, char a2@<W1>, char a3@<W2>, _OWORD *a4@<X3>, char a5@<W4>, char *a6@<X5>, char *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, double a14@<D4>, char a15)
{
  v15 = *a6;
  v16 = *a7;
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 9) = a3;
  *(a9 + 16) = *a4;
  *(a9 + 32) = a5;
  *(a9 + 33) = v15;
  *(a9 + 34) = v16;
  *(a9 + 40) = a10;
  *(a9 + 48) = a11;
  *(a9 + 56) = a12;
  *(a9 + 64) = a13;
  *(a9 + 72) = a14;
  *(a9 + 80) = a8;
  *(a9 + 88) = a15 & 1;
  return result;
}

uint64_t sub_1BC962464(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07868);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_12_5()
{
  *(v2 + *(v1 + 28)) = 0;
  *(v2 + *(v1 + 32)) = 1;

  return sub_1BC979F00(v2, v0);
}

void OUTLINED_FUNCTION_12_9(double a1)
{
  *(v1 + 120) = 0x4018000000000000;
  *(v1 + 128) = a1;
  *(v1 + 136) = v2;
}

uint64_t OUTLINED_FUNCTION_12_12()
{

  return sub_1BCE1B420();
}

uint64_t OUTLINED_FUNCTION_12_13()
{

  return sub_1BCE1BF60();
}

uint64_t OUTLINED_FUNCTION_12_15()
{

  return sub_1BCE185E0();
}

uint64_t OUTLINED_FUNCTION_12_18()
{

  return sub_1BCE1BF60();
}

uint64_t OUTLINED_FUNCTION_12_20()
{

  return sub_1BCE1DB90();
}

void OUTLINED_FUNCTION_12_26(unint64_t a1@<X8>)
{

  sub_1BC998D04(a1 > 1, v2, 1, v1);
}

uint64_t OUTLINED_FUNCTION_12_30(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_12_32()
{

  return sub_1BCE1D190();
}

void OUTLINED_FUNCTION_12_33(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, char a23, uint64_t a24, char a25, __int16 a26, char a27, __int16 a28, char a29, int a30, char a31, __int16 a32, char a33, uint64_t a34, int a35, char a36)
{
  v36[1629] = a36;
  v36[1630] = a33;
  v36[1631] = a31;
  v36[1632] = a23;
  v36[1633] = a25;
  v36[1634] = a27;
  v36[1635] = a29;
}

uint64_t OUTLINED_FUNCTION_12_36(uint64_t a1)
{
  *(a1 + 16) = *(v1 + 496);
  v3 = *(v1 + 656);
  *(a1 + 32) = *(v1 + 560);
  *(a1 + 40) = v3;

  return sub_1BCE19640();
}

uint64_t OUTLINED_FUNCTION_12_40()
{

  return sub_1BCE19270();
}

uint64_t OUTLINED_FUNCTION_12_45()
{

  return sub_1BCE197A0();
}

uint64_t OUTLINED_FUNCTION_12_49(double a1, double a2, double a3, double a4)
{
  *&STACK[0x270] = a1;
  *&STACK[0x268] = a2;
  *&STACK[0x260] = a3;
  *&STACK[0x258] = a4;
}

uint64_t sub_1BC96299C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BC962A04()
{
  OUTLINED_FUNCTION_9();
  v1(0);
  OUTLINED_FUNCTION_4();
  v2 = OUTLINED_FUNCTION_10_1();
  v3(v2);
  return v0;
}

uint64_t sub_1BC962A5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GeoHandler.CacheEntry();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1BC962B0C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1BCE19060();
  OUTLINED_FUNCTION_1();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07868);
    OUTLINED_FUNCTION_1();
    if (*(v13 + 84) != a3)
    {
      *(a1 + *(a4 + 40) + 8) = (a2 - 1);
      return;
    }

    v10 = v12;
    v11 = a1 + *(a4 + 20);
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_1BC962C18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1BCE19060();
  OUTLINED_FUNCTION_1();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07868);
  OUTLINED_FUNCTION_1();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v13 = *(a1 + *(a3 + 40) + 8);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

uint64_t OUTLINED_FUNCTION_36_4()
{

  return sub_1BCE1D780();
}

uint64_t OUTLINED_FUNCTION_36_7(uint64_t a1)
{

  return sub_1BCBF97E8(a1, 1);
}

uint64_t OUTLINED_FUNCTION_36_10(uint64_t a1)
{
  *(v1 + 656) = a1;

  return sub_1BCE1A3A0();
}

uint64_t OUTLINED_FUNCTION_36_14()
{
}

uint64_t storeEnumTagSinglePayload for Elevation(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BackgroundAnimationKind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE)
  {
    v2 = a2 + 2;
    if (a2 + 2 >= 0xFFFF00)
    {
      v3 = 4;
    }

    else
    {
      v3 = 2;
    }

    if (v2 >> 8 < 0xFF)
    {
      v3 = 1;
    }

    if (v2 >= 0x100)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    switch(v4)
    {
      case 1:
        v5 = a1[1];
        if (!a1[1])
        {
          break;
        }

        return (*a1 | (v5 << 8)) - 2;
      case 2:
        v5 = *(a1 + 1);
        if (*(a1 + 1))
        {
          return (*a1 | (v5 << 8)) - 2;
        }

        break;
      case 3:
        __break(1u);
        JUMPOUT(0x1BC962F14);
      case 4:
        v5 = *(a1 + 1);
        if (!v5)
        {
          break;
        }

        return (*a1 | (v5 << 8)) - 2;
      default:
        break;
    }
  }

  v7 = *a1;
  v8 = v7 >= 2;
  v9 = (v7 + 2147483646) & 0x7FFFFFFF;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t _s18CameraPositionTypeOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_1BC962FD4()
{
  sub_1BCE1A240();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_2_0();
  v3 = v2 - v1;
  (*(v4 + 104))(v2 - v1, *MEMORY[0x1E69D6E90]);
  type metadata accessor for Settings.VFX.AnimatedBackgrounds();
  swift_allocObject();
  result = Settings.VFX.AnimatedBackgrounds.init(key:defaultValue:access:)(0xD000000000000027, 0x80000001BCE8C710, 1, v3);
  qword_1EDA1BDF0 = result;
  return result;
}

uint64_t type metadata accessor for Settings.VFX.AnimatedBackgrounds()
{
  result = qword_1EDA1BE20;
  if (!qword_1EDA1BE20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Settings.VFX.AnimatedBackgrounds.init(key:defaultValue:access:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = sub_1BCE1A260();
  OUTLINED_FUNCTION_2();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_0();
  v25 = v8 - v7;
  v16 = sub_1BCE1A240();
  v22 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_2_0();
  v11 = v10 - v9;
  DeviceSupportsVFX();
  v19 = qword_1EDA1BE30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0BC38);
  v18 = *MEMORY[0x1E69D6E90];
  v17 = *(v22 + 104);
  v17(v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0BC40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0BC48);
  *(swift_allocObject() + 16) = xmmword_1BCE3E030;
  OUTLINED_FUNCTION_4_52();
  sub_1BCE1A270();
  OUTLINED_FUNCTION_3_63();
  sub_1BCE1A270();
  v12 = *MEMORY[0x1E69D6EA0];
  v15 = *(v5 + 104);
  v15(v25, v12, v24);
  sub_1BC9635E4();
  *(v21 + v19) = sub_1BCE1A280();
  DeviceSupportsVFX();
  v20 = qword_1EDA1BE38;
  (v17)(v11, v18, v16);
  *(swift_allocObject() + 16) = xmmword_1BCE3E030;
  OUTLINED_FUNCTION_4_52();
  sub_1BCE1A270();
  OUTLINED_FUNCTION_3_63();
  sub_1BCE1A270();
  v15(v25, v12, v24);
  *(v21 + v20) = sub_1BCE1A280();
  (*(v22 + 16))(v11, a4, v16);
  v13 = sub_1BCE1A1D0();
  (*(v22 + 8))(a4, v16);
  return v13;
}

uint64_t DeviceSupportsVFX()
{
  if (DeviceSupportsVFX_onceToken[0] != -1)
  {
    DeviceSupportsVFX_cold_1();
  }

  return DeviceSupportsVFX_result;
}

unint64_t sub_1BC9635E4()
{
  result = qword_1EDA1BE40;
  if (!qword_1EDA1BE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1BE40);
  }

  return result;
}

uint64_t sub_1BC963638(uint64_t a1)
{
  v2 = sub_1BC96368C();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45770](a1, v2, v3);
}

unint64_t sub_1BC96368C()
{
  result = qword_1EDA1BE48;
  if (!qword_1EDA1BE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1BE48);
  }

  return result;
}

uint64_t sub_1BC9636E0@<X0>(uint64_t *a1@<X8>)
{
  result = Settings.VFX.AnimatedBackgrounds.AnimationKind.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void static Set<>.value.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07CD8);
  OUTLINED_FUNCTION_11_32();
  *(swift_allocObject() + 16) = xmmword_1BCE3E050;
  OUTLINED_FUNCTION_55_5();
  OUTLINED_FUNCTION_19_0();
  __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);

  sub_1BC9639B4();
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09BC8);
  OUTLINED_FUNCTION_2_103();
  *(OUTLINED_FUNCTION_19_6() + 16) = xmmword_1BCE3E050;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08BD8);
  OUTLINED_FUNCTION_19_0();
  __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);

  sub_1BC98926C();
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD078A8);
  OUTLINED_FUNCTION_12_55();
  *(OUTLINED_FUNCTION_19_6() + 16) = xmmword_1BCE3E050;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD078B0);
  OUTLINED_FUNCTION_19_0();
  __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);

  sub_1BC9795A8();
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08B00);
  OUTLINED_FUNCTION_13_14();
  *(OUTLINED_FUNCTION_19_6() + 16) = xmmword_1BCE3E050;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08B08);
  OUTLINED_FUNCTION_19_0();
  __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);

  sub_1BC98427C();
}

uint64_t Settings.VFX.AnimatedBackgrounds.AnimationKind.rawValue.getter()
{
  if (*v0)
  {
    return 1633905005;
  }

  else
  {
    return 7890550;
  }
}

_BYTE *sub_1BC9637F0(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_57_2()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_57_3@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 128) = a1;

  return sub_1BCE19280();
}

uint64_t OUTLINED_FUNCTION_57_4(double a1, double a2, double a3, double a4)
{
  *&STACK[0x328] = a1;
  *&STACK[0x320] = a2;
  *&STACK[0x318] = a3;
  *&STACK[0x310] = a4;
}

void sub_1BC9638DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08BF8);
  OUTLINED_FUNCTION_1();
  if (*(v9 + 84) == a3)
  {

    __swift_storeEnumTagSinglePayload(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }
}

_BYTE *sub_1BC96398C(_BYTE *result, unsigned int a2)
{
  if (a2 < 2)
  {
    v2 = *result & 1 | (a2 << 6);
  }

  else
  {
    v2 = a2 & 1 | 0x80;
  }

  *result = v2;
  return result;
}

void sub_1BC9639B4()
{
  OUTLINED_FUNCTION_20_0();
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08BF0);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_77();
  v7 = type metadata accessor for NSUnitTemperature.WeatherFormatUnitConfiguration(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_20_10();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_35();
  v48 = v10;
  v11 = type metadata accessor for NSUnitTemperature.WeatherFormatComponent(0);
  v12 = OUTLINED_FUNCTION_11_2(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_3();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_9_5();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_18_2();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_35();
  if (!*(v5 + 16))
  {
    goto LABEL_28;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0E7B8);
  v19 = sub_1BCE1DD00();
  v51 = *(v5 + 16);
  if (!v51)
  {
    goto LABEL_28;
  }

  v20 = 0;
  v50 = v5;
  v53 = v1;
  v49 = v2;
  while (1)
  {
    if (v20 >= *(v5 + 16))
    {
      __break(1u);
      goto LABEL_30;
    }

    OUTLINED_FUNCTION_30_18();
    sub_1BC970B70();
    sub_1BCE1E100();
    sub_1BC970B70();
    OUTLINED_FUNCTION_4_5(v2);
    v52 = v20;
    if (v29)
    {
      OUTLINED_FUNCTION_105_3();
    }

    else
    {
      OUTLINED_FUNCTION_29_19();
      sub_1BC979BA4();
      OUTLINED_FUNCTION_106_3();
      v2 = &unk_1BCE5BC00;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08BF8);
      OUTLINED_FUNCTION_10_0();
      sub_1BC957184(&qword_1EDA1F690, &qword_1EBD08BF8);
      OUTLINED_FUNCTION_85_4();
      sub_1BCE1D190();
      sub_1BCE1E120();
      OUTLINED_FUNCTION_1_95();
      sub_1BC979DA0(v48, v21);
    }

    v22 = sub_1BCE1E150();
    v23 = ~(-1 << *(v19 + 32));
    v24 = v22 & v23;
    OUTLINED_FUNCTION_26_19();
    if (((v26 << v24) & v27) == 0)
    {
      break;
    }

    while (1)
    {
      OUTLINED_FUNCTION_30_18();
      sub_1BC970B70();
      OUTLINED_FUNCTION_100_2();
      sub_1BC970B70();
      OUTLINED_FUNCTION_4_5(v0);
      if (v29)
      {
        OUTLINED_FUNCTION_6_69();
        sub_1BC979DA0(v3, v28);
        OUTLINED_FUNCTION_4_5(v0 + v2);
        if (v29)
        {
          goto LABEL_26;
        }

        goto LABEL_17;
      }

      sub_1BC970B70();
      OUTLINED_FUNCTION_4_5(v0 + v2);
      if (!v29)
      {
        break;
      }

      OUTLINED_FUNCTION_6_69();
      sub_1BC979DA0(v3, v30);
      OUTLINED_FUNCTION_1_95();
      sub_1BC979DA0(v15, v31);
LABEL_17:
      sub_1BC94C05C(v0, &qword_1EBD08BF0);
LABEL_23:
      v24 = (v24 + 1) & v23;
      OUTLINED_FUNCTION_26_19();
      if ((v41 & (v40 << v24)) == 0)
      {
        goto LABEL_24;
      }
    }

    OUTLINED_FUNCTION_29_19();
    sub_1BC979BA4();
    sub_1BC947608(0, qword_1EDA1EFC0);
    v32 = sub_1BCE18640();
    OUTLINED_FUNCTION_6_69();
    sub_1BC979DA0(v3, v33);
    if ((v32 & 1) == 0)
    {
      OUTLINED_FUNCTION_1_95();
      sub_1BC979DA0(v53, v37);
LABEL_22:
      OUTLINED_FUNCTION_1_95();
      sub_1BC979DA0(v15, v38);
      OUTLINED_FUNCTION_6_69();
      sub_1BC979DA0(v0, v39);
      goto LABEL_23;
    }

    v34 = *(v7 + 20);
    v35 = *(v15 + v34);
    v2 = *(v53 + v34);
    OUTLINED_FUNCTION_1_95();
    sub_1BC979DA0(v53, v36);
    if (v35 != v2)
    {
      goto LABEL_22;
    }

    OUTLINED_FUNCTION_1_95();
    sub_1BC979DA0(v15, v45);
LABEL_26:
    sub_1BC979DA0(v0, type metadata accessor for NSUnitTemperature.WeatherFormatComponent);
    v46 = OUTLINED_FUNCTION_22_3();
    sub_1BC979DA0(v46, v47);
LABEL_27:
    v20 = v52 + 1;
    v2 = v49;
    v5 = v50;
    if (v52 + 1 == v51)
    {
LABEL_28:

      OUTLINED_FUNCTION_21();
      return;
    }
  }

LABEL_24:
  OUTLINED_FUNCTION_74_4(v25);
  sub_1BC979BA4();
  v42 = *(v19 + 16);
  v43 = __OFADD__(v42, 1);
  v44 = v42 + 1;
  if (!v43)
  {
    *(v19 + 16) = v44;
    goto LABEL_27;
  }

LABEL_30:
  __break(1u);
}

uint64_t OUTLINED_FUNCTION_82_0(uint64_t a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v7 = va_arg(va1, void);

  return MEMORY[0x1EEE69880](va1, v4, va, v2, v3);
}

uint64_t OUTLINED_FUNCTION_82_2()
{
}

uint64_t OUTLINED_FUNCTION_82_5()
{

  return sub_1BCE1D210();
}

uint64_t get_enum_tag_for_layout_string_9WeatherUI15VFXEffectViewIDO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t WeatherConditionBackgroundModelFactoryInput.init(animationKind:currentTime:elevation:moonData:debugConditionOverride:isReduceMotionEnabled:location:options:presentationContext:weatherData:conditionBackgroundDateOverride:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, const void *a8@<X7>, _BYTE *a9@<X8>, char *a10, uint64_t a11, uint64_t a12)
{
  v18 = *a3;
  v19 = *(a3 + 8);
  v25 = *a10;
  *a9 = *a1;
  v20 = type metadata accessor for WeatherConditionBackgroundModelFactoryInput();
  v21 = v20[5];
  sub_1BCE19060();
  OUTLINED_FUNCTION_4();
  (*(v22 + 32))(&a9[v21], a2);
  v23 = &a9[v20[6]];
  *v23 = v18;
  v23[8] = v19;
  sub_1BC9643D8(a4, &a9[v20[7]], &qword_1EBD07870);
  sub_1BC9643D8(a5, &a9[v20[8]], &qword_1EBD08688);
  a9[v20[9]] = a6;
  sub_1BC9643D8(a7, &a9[v20[10]], &qword_1EBD0BC08);
  memcpy(&a9[v20[11]], a8, 0x59uLL);
  a9[v20[12]] = v25;
  sub_1BC9643D8(a11, &a9[v20[13]], &qword_1EBD0BC10);
  return sub_1BC9643D8(a12, &a9[v20[14]], &qword_1EBD07868);
}

void static WeatherFormatStyle<>.weather(_:locale:)()
{
  OUTLINED_FUNCTION_20_0();
  v5 = v4;
  v7 = v6;
  v8 = sub_1BCE19280();
  OUTLINED_FUNCTION_2();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_8_15();
  sub_1BCE18D50();
  OUTLINED_FUNCTION_2();
  v23 = v13;
  v24 = v12;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_36_0();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07890);
  v15 = OUTLINED_FUNCTION_14(v14);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_18_2();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_16_0();
  sub_1BCBDA45C();
  sub_1BCE18D40();
  *v7 = v5;
  sub_1BCBDA45C();
  OUTLINED_FUNCTION_6(v2);
  if (v17)
  {
    v18 = qword_1EDA1F658;

    if (v18 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    sub_1BCE1A9F0();

    sub_1BC94C05C(v3, &qword_1EBD07890);
    OUTLINED_FUNCTION_6(v2);
    if (!v17)
    {
      sub_1BC94C05C(v2, &qword_1EBD07890);
    }
  }

  else
  {

    sub_1BC94C05C(v3, &qword_1EBD07890);
    (*(v10 + 32))(v0, v2, v8);
  }

  v19 = type metadata accessor for NSUnitTemperature.BaseWeatherFormatStyle(0);
  v20 = OUTLINED_FUNCTION_30_11(*(v19 + 20));
  v21(v20);
  OUTLINED_FUNCTION_38_10();
  (*(v23 + 32))(&v7[v22], v1, v24);
  OUTLINED_FUNCTION_21();
}

uint64_t sub_1BC9643D8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_9_0(a1, a2, a3);
  OUTLINED_FUNCTION_4();
  (*(v5 + 32))(v3, v4);
  return v3;
}

uint64_t sub_1BC964428()
{
  v0 = sub_1BCE19280();
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1BCE19150();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0E7C8);
  swift_allocObject();
  result = sub_1BCE1A9E0();
  qword_1EDA1F660 = result;
  return result;
}

void sub_1BC9644E0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_1BCE19060();
  OUTLINED_FUNCTION_1();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a4[5];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07870);
    OUTLINED_FUNCTION_1();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v11 = a4[7];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08688);
      OUTLINED_FUNCTION_1();
      if (*(v15 + 84) == a3)
      {
        v10 = v14;
        v11 = a4[8];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0BC08);
        OUTLINED_FUNCTION_1();
        if (*(v17 + 84) == a3)
        {
          v10 = v16;
          v11 = a4[10];
        }

        else
        {
          if (a3 == 0x7FFFFFFF)
          {
            *(a1 + a4[11]) = (a2 - 1);
            return;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0BC10);
          OUTLINED_FUNCTION_1();
          if (*(v19 + 84) == a3)
          {
            v10 = v18;
            v11 = a4[13];
          }

          else
          {
            v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07868);
            v11 = a4[14];
          }
        }
      }
    }
  }

  __swift_storeEnumTagSinglePayload(a1 + v11, a2, a2, v10);
}

uint64_t sub_1BC9646E4(uint64_t a1)
{
  result = sub_1BC95003C(&qword_1EDA1F1B0, type metadata accessor for NSUnitTemperature.BaseWeatherFormatStyle);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1BC964750(uint64_t a1, uint64_t a2, int *a3)
{
  sub_1BCE19060();
  OUTLINED_FUNCTION_1();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a3[5];
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07870);
  OUTLINED_FUNCTION_1();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a3[7];
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08688);
  OUTLINED_FUNCTION_1();
  if (*(v13 + 84) == a2)
  {
    v8 = v12;
    v9 = a3[8];
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0BC08);
  OUTLINED_FUNCTION_1();
  if (*(v15 + 84) == a2)
  {
    v8 = v14;
    v9 = a3[10];
    goto LABEL_9;
  }

  if (a2 != 0x7FFFFFFF)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0BC10);
    OUTLINED_FUNCTION_1();
    if (*(v19 + 84) == a2)
    {
      v8 = v18;
      v9 = a3[13];
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07868);
      v9 = a3[14];
    }

LABEL_9:

    return __swift_getEnumTagSinglePayload(a1 + v9, a2, v8);
  }

  v17 = *(a1 + a3[11]);
  if (v17 >= 0xFFFFFFFF)
  {
    LODWORD(v17) = -1;
  }

  return (v17 + 1);
}

uint64_t WeatherConditionBackgroundModelFactory.makeModel(from:)@<X0>(char *a1@<X0>, _BYTE *a2@<X8>)
{
  v231 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07870);
  OUTLINED_FUNCTION_14(v3);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_10_16();
  v221 = v5;
  v6 = OUTLINED_FUNCTION_13();
  v206 = type metadata accessor for BackgroundAnimationData.Model(v6);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5_1();
  v207 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09868);
  v10 = OUTLINED_FUNCTION_14(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_3_0();
  v204 = v11;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_6_1();
  v202 = v13;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_35();
  v203 = v15;
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07860);
  OUTLINED_FUNCTION_2();
  v220 = v16;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_3_0();
  v219 = v18;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_35();
  v217 = v20;
  OUTLINED_FUNCTION_13();
  v209 = type metadata accessor for WeatherConditionGradientModel();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_5_1();
  v211 = v22;
  OUTLINED_FUNCTION_13();
  v222 = sub_1BCE196E0();
  OUTLINED_FUNCTION_2();
  v200 = v23;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_3_0();
  v198 = v25;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_6_1();
  v196 = v27;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_6_1();
  v197 = v29;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_35();
  v195 = v31;
  OUTLINED_FUNCTION_13();
  v229 = sub_1BCE199D0();
  OUTLINED_FUNCTION_2();
  v226 = v32;
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_3_0();
  v218 = v34;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_35();
  v228 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD085A8);
  OUTLINED_FUNCTION_2();
  v192 = v38;
  v193 = v37;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_10_16();
  v191 = v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08CA8);
  OUTLINED_FUNCTION_14(v41);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_10_16();
  v224 = v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0BC10);
  OUTLINED_FUNCTION_14(v44);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_10_16();
  v208 = v46;
  OUTLINED_FUNCTION_13();
  v223 = sub_1BCE19A10();
  OUTLINED_FUNCTION_2();
  v214 = v47;
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_5_1();
  v227 = v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07868);
  v51 = OUTLINED_FUNCTION_14(v50);
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_3_0();
  v216 = v52;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_6_1();
  v215 = v54;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v55);
  v57 = v186 - v56;
  v58 = sub_1BCE19060();
  OUTLINED_FUNCTION_2();
  v232 = v59;
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_3_0();
  v213 = v61;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_35();
  v230 = v63;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0BC08);
  OUTLINED_FUNCTION_14(v64);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v65);
  v67 = v186 - v66;
  v68 = sub_1BCE1A6F0();
  OUTLINED_FUNCTION_2();
  v70 = v69;
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_3_0();
  v210 = v72;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v73);
  v75 = v186 - v74;
  v76 = type metadata accessor for WeatherConditionBackgroundModelFactoryInput();
  sub_1BC952B1C(&a1[v76[10]], v67, &qword_1EBD0BC08);
  OUTLINED_FUNCTION_4_5(v67);
  if (v81)
  {
    sub_1BC94C05C(v67, &qword_1EBD0BC08);
    if (qword_1EDA19CB0 != -1)
    {
      swift_once();
    }

    memcpy(v235, &xmmword_1EDA19CB8, sizeof(v235));
    v77 = *a1;
    type metadata accessor for WeatherConditionBackgroundModel(0);
    memcpy(__dst, &a1[v76[11]], 0x59uLL);
    OUTLINED_FUNCTION_25_13();
    type metadata accessor for BackgroundAnimationData(0);
    swift_storeEnumTagMultiPayload();
    memcpy(v68, v235, 0x68uLL);
    v68[104] = v77;
    return sub_1BC96A9A0(__dst, v234);
  }

  else
  {
    v80 = v70 + 32;
    v79 = *(v70 + 32);
    v212 = v75;
    v187 = v79;
    v79(v75, v67, v68);
    sub_1BC952B1C(&a1[v76[14]], v57, &qword_1EBD07868);
    OUTLINED_FUNCTION_29_0(v57, 1, v58);
    v82 = v76;
    v199 = v70;
    v201 = v68;
    if (v81)
    {
      v83 = v230;
      (*(v232 + 16))(v230, &a1[v76[5]], v58);
      OUTLINED_FUNCTION_29_0(v57, 1, v58);
      v84 = v226;
      if (!v81)
      {
        sub_1BC94C05C(v57, &qword_1EBD07868);
      }
    }

    else
    {
      v83 = v230;
      (*(v232 + 32))(v230, v57, v58);
      v84 = v226;
    }

    v85 = &a1[v76[6]];
    v86 = *(v85 + 8);
    v87 = v212;
    v88 = v208;
    if (v86 == 2)
    {
      v85 = v235;
      static GeoHandler.getElevation(for:on:)(v212, v83, v235);
      v86 = LOBYTE(v235[1]);
    }

    v189 = v86;
    v89 = *v85;
    sub_1BC952B1C(&a1[v82[13]], v88, &qword_1EBD0BC10);
    v90 = v223;
    OUTLINED_FUNCTION_29_0(v88, 1, v223);
    if (v81)
    {
      sub_1BC94C05C(v88, &qword_1EBD0BC10);
      v91 = v211;
      (*(v84 + 104))(v211, *MEMORY[0x1E6984C98], v229);
      v92 = a1[v82[12]];
      v93 = v209;
      v94 = v91 + *(v209 + 20);
      *v94 = v89;
      *(v94 + 8) = v189 & 1;
      *(v91 + v93[6]) = v89 > 0.0;
      *(v91 + v93[7]) = v92;
      *(v91 + v93[8]) = 0;
      *(v91 + v93[9]) = 0;
      v95 = v225[5];
      v96 = v225[6];
      __swift_project_boxed_opaque_existential_1(v225 + 2, v95);
      v97 = v82;
      (*(v96 + 8))(v233, v91, v95, v96);
      OUTLINED_FUNCTION_7_48();
      sub_1BC969F2C(v91, v98);
      (*(v199 + 8))(v87, v201);
      v99 = *a1;
      type metadata accessor for WeatherConditionBackgroundModel(0);
      memcpy(v235, &a1[v97[11]], 0x59uLL);
      OUTLINED_FUNCTION_25_13();
      type metadata accessor for BackgroundAnimationData(0);
      swift_storeEnumTagMultiPayload();
      memcpy(v96, v233, 0x68uLL);
      *(v96 + 104) = v99;
      sub_1BC96A9A0(v235, __dst);
      return (*(v232 + 8))(v83, v58);
    }

    else
    {
      v190 = v82;
      v188 = v58;
      (*(v214 + 32))(v227, v88, v90);
      v100 = v191;
      v101 = sub_1BCE199F0();
      v194 = a1;
      MEMORY[0x1EEE9AC00](v101);
      v186[-2] = v83;
      sub_1BC994C58();
      v192[1](v100, v193);
      sub_1BC996990(v194, v228);
      v102 = v195;
      sub_1BCE199E0();
      sub_1BCE19650();
      v104 = v103;
      sub_1BCE19660();
      v106 = v105;
      sub_1BCE19670();
      v108 = v107;
      v109 = *(v200 + 8);
      (v109)(v102, v222);
      v110 = v106 < v104 && v108 < v104;
      v186[1] = v80;
      if (v110)
      {
        LODWORD(v208) = 0;
        v112 = v229;
      }

      else
      {
        v111 = v104 < v106 && v108 < v106;
        v112 = v229;
        if (v111)
        {
          v114 = 1;
        }

        else if (v104 < v108 && v106 < v108)
        {
          v114 = 2;
        }

        else
        {
          v114 = v104 < v106;
          if (v106 != v108)
          {
            v114 = 0;
          }
        }

        LODWORD(v208) = v114;
      }

      v115 = *(v84 + 16);
      v193 = v84 + 16;
      v195 = v115;
      v116 = v211;
      v115(v211, v228, v112);
      v117 = v197;
      v118 = v227;
      sub_1BCE199E0();
      LODWORD(v191) = sub_1BCE19620();
      v119 = v222;
      (v109)(v117, v222);
      v120 = v194[v190[12]];
      v192 = v109;
      v121 = v196;
      sub_1BCE199E0();
      sub_1BCE19610();
      v123 = v122;
      (v109)(v121, v119);
      v124 = v209;
      v125 = v116 + *(v209 + 20);
      *v125 = v89;
      LODWORD(v200) = v189 & 1;
      *(v125 + 8) = v189 & 1;
      *(v116 + v124[6]) = v191 & 1;
      *(v116 + v124[7]) = v120;
      v126 = v194;
      *(v116 + v124[8]) = v123;
      *(v116 + v124[9]) = v208;
      v127 = v225;
      v128 = v225[5];
      v129 = v225[6];
      __swift_project_boxed_opaque_existential_1(v225 + 2, v128);
      (*(v129 + 8))(v235, v116, v128, v129);
      OUTLINED_FUNCTION_7_48();
      sub_1BC969F2C(v116, v130);
      v131 = v217;
      sub_1BC9972DC(v126, v118, v217);
      sub_1BCE199E0();
      sub_1BCE19610();
      v133 = v132;
      v134 = v222;
      v135 = v192;
      (v192)(v117, v222);
      v136 = v203;
      v137 = v230;
      v138 = v212;
      sub_1BC9978A0(v224, v127, v230, v212, v203);
      (*(v199 + 16))(v210, v138, v201);
      v139 = v188;
      (*(v232 + 16))(v213, v137, v188);
      v195(v218, v228, v229);
      v140 = v131;
      v141 = v205;
      (*(v220 + 16))(v219, v140, v205);
      v142 = v190;
      sub_1BC952B1C(v126 + v190[7], v221, &qword_1EBD07870);
      v143 = (v126 + v142[11]);
      v144 = v136;
      memcpy(__dst, v143, 0x59uLL);
      sub_1BC96A9A0(__dst, v234);
      v145 = v198;
      sub_1BCE199E0();
      LODWORD(v225) = sub_1BCE19620();
      (v135)(v145, v134);
      v146 = v202;
      sub_1BC952B1C(v136, v202, &qword_1EBD09868);
      v147 = sub_1BCE1A170();
      OUTLINED_FUNCTION_29_0(v146, 1, v147);
      if (v81)
      {
        sub_1BC94C05C(v146, &qword_1EBD09868);
        OUTLINED_FUNCTION_19_0();
        __swift_storeEnumTagSinglePayload(v148, v149, v150, v139);
      }

      else
      {
        sub_1BCE1A160();
        (*(*(v147 - 8) + 8))(v146, v147);
      }

      v151 = v204;
      sub_1BC952B1C(v136, v204, &qword_1EBD09868);
      OUTLINED_FUNCTION_29_0(v151, 1, v147);
      v152 = v220;
      v153 = v226;
      if (v81)
      {
        sub_1BC94C05C(v136, &qword_1EBD09868);
        v154 = OUTLINED_FUNCTION_24_17();
        v155(v154);
        v156 = v229;
        (*(v153 + 8))(v228, v229);
        sub_1BC94C05C(v224, &qword_1EBD08CA8);
        v157 = OUTLINED_FUNCTION_23_24();
        v158(v157);
        v159 = OUTLINED_FUNCTION_22_22();
        v160(v159);
        v166 = v156;
        sub_1BC94C05C(v151, &qword_1EBD09868);
        OUTLINED_FUNCTION_19_0();
        v171 = v188;
        __swift_storeEnumTagSinglePayload(v161, v162, v163, v188);
      }

      else
      {
        sub_1BCE1A150();
        sub_1BC94C05C(v136, &qword_1EBD09868);
        v164 = OUTLINED_FUNCTION_24_17();
        v165(v164);
        v166 = v229;
        (*(v153 + 8))(v228, v229);
        sub_1BC94C05C(v224, &qword_1EBD08CA8);
        v167 = OUTLINED_FUNCTION_23_24();
        v168(v167);
        v169 = OUTLINED_FUNCTION_22_22();
        v170(v169);
        (*(*(v147 - 8) + 8))(v151, v147);
        v171 = v188;
      }

      v172 = v194;
      LODWORD(v228) = v194[v190[9]];
      v173 = v207;
      v187(v207, v210, v144);
      v174 = v206;
      v175 = v232;
      (*(v232 + 32))(v173 + *(v206 + 20), v213, v171);
      (*(v153 + 32))(v173 + v174[6], v218, v166);
      (*(v152 + 32))(v173 + v174[7], v219, v141);
      *(v173 + v174[8]) = v133;
      *(v173 + v174[9]) = v208;
      v176 = v173 + v174[10];
      *v176 = v89;
      *(v176 + 8) = v200;
      sub_1BC9643D8(v221, v173 + v174[11], &qword_1EBD07870);
      memcpy((v173 + v174[12]), __dst, 0x59uLL);
      *(v173 + v174[13]) = v225 & 1;
      OUTLINED_FUNCTION_38_2();
      sub_1BC9643D8(v177, v178, v179);
      OUTLINED_FUNCTION_38_2();
      sub_1BC9643D8(v180, v181, v182);
      *(v173 + v174[16]) = v228;
      v183 = *v172;
      v184 = type metadata accessor for WeatherConditionBackgroundModel(0);
      v185 = v231;
      sub_1BC993FA4(v173, &v231[*(v184 + 24)], type metadata accessor for BackgroundAnimationData.Model);
      type metadata accessor for BackgroundAnimationData(0);
      swift_storeEnumTagMultiPayload();
      memcpy(v185, v235, 0x68uLL);
      v185[104] = v183;
      return (*(v175 + 8))(v230, v171);
    }
  }
}

void sub_1BC965C2C()
{
  sub_1BCE186B0();
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      sub_1BC965D24();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t type metadata accessor for WeatherConditionGradientModel()
{
  result = qword_1EDA1F440;
  if (!qword_1EDA1F440)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BC965D24()
{
  if (!qword_1EDA1F1D8)
  {
    v0 = sub_1BCE1DB10();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDA1F1D8);
    }
  }
}

uint64_t sub_1BC965D74()
{
  result = sub_1BCE199D0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1BC965E14()
{
  OUTLINED_FUNCTION_20_0();
  v29 = v0;
  v30 = v1;
  v3 = v2;
  v5 = v4;
  v31 = v6;
  v8 = v7;
  OUTLINED_FUNCTION_3_6();
  v27 = v9;
  v28 = v10;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2_0();
  v13 = v12 - v11;
  swift_getAssociatedTypeWitness();
  v14 = sub_1BCE186B0();
  OUTLINED_FUNCTION_2();
  v16 = v15;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v26 - v18;
  v32 = v3;
  v26 = type metadata accessor for WeatherFormatCacheKey();
  OUTLINED_FUNCTION_2();
  v21 = v20;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v26 - v23;
  v25 = *v8;
  if (qword_1EDA1F638 != -1)
  {
    OUTLINED_FUNCTION_2_6();
  }

  (*(v16 + 16))(v19, v27, v14);
  (*(v28 + 16))(v13, v29, v5);
  v33 = v25;
  sub_1BC96AFAC(v19, v13, &v33, v30, v31, v5, v24);

  sub_1BC9816C8();
  (*(v21 + 8))(v24, v26);
  OUTLINED_FUNCTION_21();
}

void *sub_1BC966090()
{
  type metadata accessor for WeatherFormatCache();
  v0 = swift_allocObject();
  result = sub_1BC96685C();
  qword_1EDA2F058 = v0;
  return result;
}

uint64_t sub_1BC9660CC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_9_0(a1, a2, a3);
  OUTLINED_FUNCTION_4();
  v4 = OUTLINED_FUNCTION_10_1();
  v5(v4);
  return v3;
}

uint64_t OUTLINED_FUNCTION_68_0(uint64_t a1, uint64_t a2)
{
  *(v2 - 152) = a1;
  *(v2 - 144) = a2;
  return 0;
}

uint64_t OUTLINED_FUNCTION_68_1@<X0>(uint64_t a1@<X8>)
{
  result = *(a1 - 256);
  *(v1 - 360) = result;
  return result;
}

void WeatherConditionGradientManager.load(for:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v6 = sub_1BCE1CA30();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = type metadata accessor for WeatherConditionGradientManager.GradientCacheKey();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BC9671C0(a1, __dst);
  v13 = __dst[0];
  v12 = __dst[1];
  v15 = __dst[2];
  v14 = __dst[3];
  v16 = __dst[4];
  v17 = __dst[5];
  v18 = __dst[6];
  v77 = __dst[7];
  v76 = __dst[8];
  v78 = __dst[9];
  v79 = __dst[10];
  v80 = __dst[11];
  v19 = __dst[12];
  v20 = type metadata accessor for WeatherConditionGradientModel();
  v21 = *(a1 + *(v20 + 28)) >> 6;
  if (!v21)
  {
    *a2 = v13;
    a2[1] = v12;
    a2[2] = v15;
    a2[3] = v14;
    a2[4] = v16;
    a2[5] = v17;
    v27 = v77;
    a2[6] = v18;
    a2[7] = v27;
    v28 = v78;
    a2[8] = v76;
    a2[9] = v28;
    v29 = v80;
    a2[10] = v79;
    a2[11] = v29;
    a2[12] = v19;
    return;
  }

  if (v21 == 1)
  {
    v22 = *(a1 + *(v20 + 24));
    sub_1BCE199D0();
    OUTLINED_FUNCTION_4();
    (*(v23 + 16))(v11, a1);
    v11[*(v8 + 20)] = v22;
    if ((DeviceSupportsVFX() & 1) == 0)
    {
      swift_beginAccess();
      v24 = *(v3 + 16);
      if (*(v24 + 16))
      {
        v25 = sub_1BCA9B494(v11);
        if (v26)
        {
          memcpy(__dst, (*(v24 + 56) + 104 * v25), 0x68uLL);
          swift_endAccess();
          goto LABEL_15;
        }
      }

      swift_endAccess();
    }

    v75 = v3;
    v54 = *(v7 + 104);
    v55 = OUTLINED_FUNCTION_6_16();
    v54(v55);
    OUTLINED_FUNCTION_8_13();
    v56 = sub_1BCE1CB30();
    v57 = OUTLINED_FUNCTION_6_16();
    v54(v57);
    OUTLINED_FUNCTION_17_8();
    v58 = v77;
    v59 = sub_1BCE1CB30();
    v60 = static Color.interpolated(between:and:progress:)(v56, v59, 0.86);

    v61 = OUTLINED_FUNCTION_6_16();
    v54(v61);
    OUTLINED_FUNCTION_17_8();
    v62 = sub_1BCE1CB30();
    v63 = OUTLINED_FUNCTION_6_16();
    v54(v63);
    v64 = sub_1BCE1CB30();
    v65 = static Color.interpolated(between:and:progress:)(v62, v64, 0.14);

    static Color.interpolated(between:and:progress:)(v60, v65, 0.5);

    v66 = Color.rgbaComponents.getter();
    OUTLINED_FUNCTION_9_12(v66, v67, v68, v69);

    Color.rgbaComponents.getter();
    OUTLINED_FUNCTION_15_9();

    Color.rgbaComponents.getter();
    OUTLINED_FUNCTION_12_1();

    v70 = OUTLINED_FUNCTION_13_12();
    __dst[0] = v71;
    *&__dst[1] = v70;
    v72 = OUTLINED_FUNCTION_14_11();
    __dst[2] = v73;
    *&__dst[3] = v72;
    __dst[4] = v18;
    __dst[5] = v12;
    __dst[6] = v17;
    __dst[7] = v13;
    __dst[8] = v58;
    __dst[9] = v14;
    __dst[10] = v16;
    __dst[11] = v15;
    __dst[12] = 0x3FE0000000000000;
    if (DeviceSupportsVFX())
    {
      sub_1BC967834(v11, type metadata accessor for WeatherConditionGradientManager.GradientCacheKey);

LABEL_16:
      memcpy(a2, __dst, 0x68uLL);
      return;
    }

    v74 = v75;
    swift_beginAccess();
    swift_isUniquelyReferenced_nonNull_native();
    v81 = *(v74 + 16);
    sub_1BCA9B6F0(__dst, v11);
    *(v74 + 16) = v81;
    swift_endAccess();

LABEL_15:
    sub_1BC967834(v11, type metadata accessor for WeatherConditionGradientManager.GradientCacheKey);
    goto LABEL_16;
  }

  v30 = *(v7 + 104);
  v31 = OUTLINED_FUNCTION_2_15();
  v30(v31);
  OUTLINED_FUNCTION_8_13();
  sub_1BCE1CB30();
  v32 = OUTLINED_FUNCTION_2_15();
  v30(v32);
  v33 = v16;
  v34 = v17;
  v35 = v18;
  v36 = v77;
  sub_1BCE1CB30();
  v37 = OUTLINED_FUNCTION_2_15();
  v30(v37);
  v38 = v76;
  v39 = v78;
  v40 = v79;
  v41 = v80;
  sub_1BCE1CB30();
  if (DeviceSupportsVFX())
  {
    v42 = OUTLINED_FUNCTION_2_15();
    v30(v42);
    v43 = sub_1BCE1CB30();
    v44 = OUTLINED_FUNCTION_2_15();
    v30(v44);
    OUTLINED_FUNCTION_8_13();
    v45 = sub_1BCE1CB30();
    static Color.interpolated(between:and:progress:)(v43, v45, 0.3);
  }

  v46 = Color.rgbaComponents.getter();
  OUTLINED_FUNCTION_9_12(v46, v47, v48, v49);

  Color.rgbaComponents.getter();
  OUTLINED_FUNCTION_15_9();

  Color.rgbaComponents.getter();
  OUTLINED_FUNCTION_12_1();

  v50 = OUTLINED_FUNCTION_13_12();
  *a2 = v51;
  *(a2 + 1) = v50;
  v52 = OUTLINED_FUNCTION_14_11();
  a2[2] = v53;
  *(a2 + 3) = v52;
  a2[4] = v39;
  a2[5] = v34;
  a2[6] = v38;
  a2[7] = v33;
  a2[8] = v36;
  a2[9] = v41;
  a2[10] = v40;
  a2[11] = v35;
  a2[12] = 0x3FE0000000000000;
}

void *sub_1BC96685C()
{
  v1 = sub_1BCE1A7B0();
  MEMORY[0x1EEE9AC00](v1 - 8);
  OUTLINED_FUNCTION_2_0();
  sub_1BCE1A7A0();
  sub_1BCE1A7D0();
  swift_allocObject();
  v0[2] = sub_1BCE1A7C0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD079B0);
  swift_allocObject();
  v0[3] = sub_1BCE1AA30();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD079B8);
  swift_allocObject();
  v0[4] = sub_1BCE1AA30();
  if (qword_1EDA1F4F8 != -1)
  {
    swift_once();
  }

  sub_1BC966B60();
  return v0;
}

uint64_t sub_1BC9669B0()
{
  type metadata accessor for WeatherFormattedMonitor();
  v0 = swift_allocObject();
  result = sub_1BC966A5C();
  qword_1EDA2F050 = v0;
  return result;
}

uint64_t type metadata accessor for WeatherConditionGradientManager.GradientCacheKey()
{
  result = qword_1EDA1F378;
  if (!qword_1EDA1F378)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BC966A5C()
{
  v1 = sub_1BCE1A7B0();
  MEMORY[0x1EEE9AC00](v1 - 8);
  OUTLINED_FUNCTION_0_66();
  sub_1BCE1A7A0();
  sub_1BCE1A7D0();
  swift_allocObject();
  v2 = sub_1BCE1A7C0();
  v3 = MEMORY[0x1E69E7CC0];
  *(v0 + 16) = v2;
  *(v0 + 24) = v3;
  return v0;
}

uint64_t sub_1BC966AEC()
{
  result = sub_1BCE199D0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1BC966B60()
{
  v1 = v0;
  v2 = sub_1BCE1ACC0();
  OUTLINED_FUNCTION_2();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BCE1A780();
  swift_beginAccess();
  if (!sub_1BC94791C(*(v0 + 24)))
  {
    sub_1BCE1AC80();
    v8 = sub_1BCE1ACA0();
    v9 = sub_1BCE1D8D0();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1BC940000, v8, v9, "Set up unit formatting monitoring", v10, 2u);
      MEMORY[0x1BFB31B10](v10, -1, -1);
    }

    (*(v4 + 8))(v7, v2);
    v11 = objc_opt_self();
    v12 = [v11 defaultCenter];
    v13 = sub_1BCE1A350();
    v14 = objc_opt_self();
    v15 = [v14 mainQueue];
    v31 = sub_1BCCC398C;
    v32 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v28 = 1107296256;
    v29 = sub_1BCCC3998;
    v30 = &block_descriptor_3;
    v16 = _Block_copy(&aBlock);
    v17 = [v12 addObserverForName:v13 object:0 queue:v15 usingBlock:v16];
    _Block_release(v16);

    OUTLINED_FUNCTION_2_72();
    v18 = swift_unknownObjectRetain();
    MEMORY[0x1BFB2FC90](v18);
    sub_1BC9672C0(*((*(v1 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10));
    sub_1BCE1D5B0();
    swift_endAccess();
    v19 = [v11 defaultCenter];
    v20 = *MEMORY[0x1E695D8F0];
    v21 = [v14 mainQueue];
    v31 = sub_1BCCC3A8C;
    v32 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v28 = 1107296256;
    v29 = sub_1BCCC3998;
    v30 = &block_descriptor_4;
    v22 = _Block_copy(&aBlock);
    v23 = [v19 addObserverForName:v20 object:0 queue:v21 usingBlock:v22];
    _Block_release(v22);

    v24 = OUTLINED_FUNCTION_2_72();
    MEMORY[0x1BFB2FC90](v24);
    sub_1BC9672C0(*((*(v1 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10));
    sub_1BCE1D5B0();
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  return sub_1BCE1A790();
}

void *sub_1BC966F3C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1BCE199D0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for WeatherConditionGradientModel();
  v9 = (v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BC967260(a1, v11, type metadata accessor for WeatherConditionGradientModel);
  (*(v5 + 16))(v7, v11, v4);
  v12 = *&v11[v9[10]];
  LOBYTE(__src[0]) = v11[v9[11]];
  v13 = sub_1BC9672EC(v7, __src, v12);
  sub_1BC967834(v11, type metadata accessor for WeatherConditionGradientModel);
  sub_1BC96788C(v13, __src);
  static SkyBackgroundGradient.interpolated(forElevation:isPM:stops:)(*(a1 + v9[7] + 8), __src[1], v17, *(a1 + v9[7]));

  v15[2] = 0;
  v15[1] = 0;
  v16 = 0;
  SkyBackgroundGradient.mutated(with:)();
  return memcpy(a2, __src, 0x68uLL);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *sub_1BC9671C0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for WeatherConditionGradientModel();
  v5 = *(a1 + *(v4 + 28));
  if (v5 >> 6 > 1)
  {
    if (DeviceSupportsVFX())
    {
      return sub_1BC966F3C(a1, a2);
    }
  }

  else if (v5)
  {
    return sub_1BC966F3C(a1, a2);
  }

  v7 = *(a1 + *(v4 + 24));

  return sub_1BCCC321C(a1, v7, a2);
}

uint64_t sub_1BC967260(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1BC9672C0(uint64_t result)
{
  if (result + 1 > *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    return sub_1BCE1D590();
  }

  return result;
}

uint64_t sub_1BC9672EC(uint64_t a1, unsigned __int8 *a2, double a3)
{
  v6 = sub_1BCE199D0();
  OUTLINED_FUNCTION_2();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a2;
  (*(v8 + 16))(v11, a1, v6);
  v13 = (*(v8 + 88))(v11, v6);
  if (v13 == *MEMORY[0x1E6984CE0])
  {
    v14 = 0;
    goto LABEL_51;
  }

  if (v13 == *MEMORY[0x1E6984C08])
  {
    v14 = 1;
    goto LABEL_51;
  }

  if (v13 == *MEMORY[0x1E6984C10])
  {
    v14 = 2;
    goto LABEL_51;
  }

  if (v13 != *MEMORY[0x1E6984CC0])
  {
    if (v13 == *MEMORY[0x1E6984C98])
    {
      goto LABEL_19;
    }

    if (v13 == *MEMORY[0x1E6984CC8])
    {
      v18 = 6;
    }

    else
    {
      if (v13 == *MEMORY[0x1E6984CD8])
      {
        v14 = 7;
        goto LABEL_51;
      }

      if (v13 == *MEMORY[0x1E6984CE8])
      {
        v14 = 8;
        goto LABEL_51;
      }

      if (v13 == *MEMORY[0x1E6984CA0])
      {
        v14 = 9;
        goto LABEL_51;
      }

      if (v13 == *MEMORY[0x1E6984C58])
      {
        v14 = 10;
        goto LABEL_51;
      }

      if (v13 == *MEMORY[0x1E6984C28])
      {
        v14 = 11;
        goto LABEL_51;
      }

      if (v13 == *MEMORY[0x1E6984CD0])
      {
        v14 = 12;
        goto LABEL_51;
      }

      if (v13 == *MEMORY[0x1E6984C78])
      {
        v14 = 13;
        goto LABEL_51;
      }

      if (v13 == *MEMORY[0x1E6984C80])
      {
        v14 = 14;
        goto LABEL_51;
      }

      if (v13 == *MEMORY[0x1E6984D10])
      {
        v14 = 15;
        goto LABEL_51;
      }

      if (v13 == *MEMORY[0x1E6984D18])
      {
        v14 = 16;
        goto LABEL_51;
      }

      if (v13 == *MEMORY[0x1E6984C70])
      {
        v14 = 17;
        goto LABEL_51;
      }

      if (v13 == *MEMORY[0x1E6984D20])
      {
        v14 = 18;
        goto LABEL_51;
      }

      if (v13 == *MEMORY[0x1E6984C60])
      {
        v14 = 19;
        goto LABEL_51;
      }

      if (v13 == *MEMORY[0x1E6984C18])
      {
        v14 = 20;
        goto LABEL_51;
      }

      if (v13 == *MEMORY[0x1E6984C30])
      {
        v18 = 23;
      }

      else
      {
        if (v13 != *MEMORY[0x1E6984C38])
        {
          if (v13 == *MEMORY[0x1E6984C88])
          {
            v14 = 27;
            goto LABEL_51;
          }

          if (v13 == *MEMORY[0x1E6984C68])
          {
            v14 = 28;
            goto LABEL_51;
          }

          if (v13 == *MEMORY[0x1E6984CA8])
          {
            v14 = 29;
            goto LABEL_51;
          }

          if (v13 == *MEMORY[0x1E6984CB0])
          {
            v14 = 30;
            goto LABEL_51;
          }

          if (v13 == *MEMORY[0x1E6984C90])
          {
            v14 = 31;
            goto LABEL_51;
          }

          if (v13 == *MEMORY[0x1E6984C40])
          {
            v14 = 32;
            goto LABEL_51;
          }

          if (v13 == *MEMORY[0x1E6984C20])
          {
            v14 = 33;
            goto LABEL_51;
          }

          if (v13 == *MEMORY[0x1E6984C00])
          {
            v14 = 34;
            goto LABEL_51;
          }

          if (v13 == *MEMORY[0x1E6984C48])
          {
            v14 = 35;
            goto LABEL_51;
          }

          if (v13 == *MEMORY[0x1E6984C50])
          {
            v14 = 36;
            goto LABEL_51;
          }

          if (v13 == *MEMORY[0x1E6984CB8])
          {
            goto LABEL_8;
          }

          if (v13 == *MEMORY[0x1E6984D28])
          {
            v14 = 37;
            goto LABEL_51;
          }

          (*(v8 + 8))(v11, v6);
LABEL_19:
          v14 = 3;
          goto LABEL_51;
        }

        v18 = 26;
      }
    }

    v14 = (v18 - v12);
    goto LABEL_51;
  }

LABEL_8:
  v15 = 23 - v12;
  v16 = 26 - v12;
  if (a3 < 0.125)
  {
    v17 = 3;
  }

  else
  {
    v17 = 20;
  }

  if (a3 < 0.375)
  {
    v16 = v17;
  }

  if (a3 < 0.625)
  {
    v15 = v16;
  }

  if (a3 < 0.875)
  {
    v14 = v15;
  }

  else
  {
    v14 = (6 - v12);
  }

LABEL_51:
  (*(v8 + 8))(a1, v6);
  return v14;
}

uint64_t sub_1BC967834(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

double sub_1BC96788C@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1BC9686C8(a1, &v4);
  switch(v4)
  {
    case 1:

      result = sub_1BCD1A8E8(a2);
      break;
    case 2:

      result = sub_1BCC54BDC(a2);
      break;
    case 3:

      result = sub_1BCCA34B8(a2);
      break;
    case 4:

      result = sub_1BCB51E94(a2);
      break;
    case 5:

      result = sub_1BCD717C4(a2);
      break;
    case 6:

      result = sub_1BCC8C390(a2);
      break;
    case 7:

      result = sub_1BCA26950(a2);
      break;
    case 8:

      result = sub_1BCA8261C(a2);
      break;
    case 9:

      result = sub_1BCCC4788(a2);
      break;
    case 10:

      result = sub_1BCB07F58(a2);
      break;
    case 11:

      result = sub_1BCD7C7E0(a2);
      break;
    case 12:

      result = sub_1BCCE2F9C(a2);
      break;
    case 13:

      result = sub_1BCADA9AC(a2);
      break;
    case 14:

      result = sub_1BCDF2274(a2);
      break;
    default:

      result = sub_1BC9686E0(a2);
      break;
  }

  return result;
}

void sub_1BC967B28()
{
  OUTLINED_FUNCTION_20_0();
  v127 = v0;
  v128 = v1;
  v3 = v2;
  v125 = v4;
  v126 = v5;
  v7 = v6;
  v114 = sub_1BCE18710();
  OUTLINED_FUNCTION_2();
  v113 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2_0();
  v112 = v11 - v10;
  OUTLINED_FUNCTION_13();
  sub_1BCE1DAF0();
  OUTLINED_FUNCTION_2();
  v116 = v13;
  v117 = v12;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2_0();
  v115 = v15 - v14;
  v16 = OUTLINED_FUNCTION_13();
  v17 = type metadata accessor for NSUnitTemperature.WeatherFormatComponent(v16);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_2_0();
  v121 = v20 - v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD098E8);
  OUTLINED_FUNCTION_2();
  v119 = v22;
  v120 = v21;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v23);
  v118 = &v108 - v24;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08288);
  OUTLINED_FUNCTION_2();
  v110 = v25;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_3();
  v108 = v27 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v109 = &v108 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07CA8);
  OUTLINED_FUNCTION_2();
  v130 = v32;
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_3();
  v36 = v34 - v35;
  MEMORY[0x1EEE9AC00](v37);
  v129 = &v108 - v38;
  OUTLINED_FUNCTION_13();
  sub_1BCE19260();
  OUTLINED_FUNCTION_2();
  v122 = v40;
  v123 = v39;
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_2_0();
  v43 = v42 - v41;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD098F0);
  OUTLINED_FUNCTION_14(v44);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v108 - v46;
  v124 = *v7;
  v48 = *v3;
  if (*(*v3 + 16) == 1)
  {
    sub_1BC96926C(*v3, v47);
    if (__swift_getEnumTagSinglePayload(v47, 1, v17) == 1)
    {
      sub_1BC94C05C(v47, &qword_1EBD098F0);
    }

    else
    {
      v49 = type metadata accessor for NSUnitTemperature.WeatherFormatUnitConfiguration(0);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v47, 1, v49);
      OUTLINED_FUNCTION_2_60();
      sub_1BC969FDC(v47, v51);
      if (EnumTagSinglePayload != 1)
      {
        v52 = type metadata accessor for NSUnitTemperature.BaseWeatherFormatStyle(0);
        sub_1BCE19270();
        v53 = sub_1BCE191C0();
        (*(v122 + 8))(v43, v123);
        if ((v53 & 1) != 0 && (*(v3 + *(v52 + 24)) & 1) == 0)
        {
          sub_1BC947608(0, &qword_1EDA1C0B8);
          v106 = sub_1BCE1A410();
          v107 = [objc_opt_self() fahrenheit];
          sub_1BCE1DAC0();

          goto LABEL_24;
        }
      }
    }
  }

  v54 = type metadata accessor for NSUnitTemperature.BaseWeatherFormatStyle(0);
  v55 = v54[5];
  v56 = sub_1BCE1A410();
  sub_1BCE18680();

  sub_1BCE185E0();
  sub_1BCE185F0();
  sub_1BCE185E0();
  if (v57 == 0.0)
  {
    sub_1BCE185F0();
  }

  (*(v130 + 32))(v129, v36, v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07CD8);
  *(swift_allocObject() + 16) = xmmword_1BCE3E050;
  OUTLINED_FUNCTION_56_3();
  OUTLINED_FUNCTION_19_0();
  __swift_storeEnumTagSinglePayload(v58, v59, v60, v36);
  sub_1BC9639B4();
  sub_1BC96A034();
  v62 = v61;

  if (v62 & 1) != 0 || (*(v3 + v54[7]) & 1) != 0 && (sub_1BCE19270(), v76 = sub_1BCE191C0(), (*(v122 + 8))(v43, v123), (v76))
  {
    v63 = v129;
    switch(v124)
    {
      case 1:
      case 3:
        goto LABEL_20;
      case 2:
        OUTLINED_FUNCTION_44_6();
LABEL_20:
        (*(v130 + 8))(v63, v31);
        break;
      default:
        sub_1BCE185E0();
        v131 = v64;
        v65 = v108;
        sub_1BC96A7B4(v3 + v54[8], v48, v66, v67, v68, v69, v70, v71, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119);
        v72 = v3 + v55;
        v73 = v109;
        v74 = v111;
        MEMORY[0x1BFB2B3D0](v72, v111);
        v75 = *(v110 + 8);
        v75(v65, v74);
        sub_1BC96ABEC();
        sub_1BC957184(&qword_1EDA1EF58, &qword_1EBD08288);
        sub_1BCE1D0F0();
        v75(v73, v74);
        (*(v130 + 8))(v63, v31);
        break;
    }
  }

  else
  {
    v77 = v118;
    sub_1BC96C320();
    sub_1BC957184(&qword_1EDA1F680, &qword_1EBD098E8);
    v78 = v120;
    sub_1BCE186A0();
    (*(v119 + 8))(v77, v78);
    v79 = v121;
    OUTLINED_FUNCTION_19_0();
    __swift_storeEnumTagSinglePayload(v80, v81, v82, v36);
    sub_1BC96D35C();
    v84 = v83;
    OUTLINED_FUNCTION_2_60();
    sub_1BC969FDC(v79, v85);
    if (v84)
    {
      v86 = 0xE200000000000000;
      v87 = 11565;
      switch(v124)
      {
        case 1:
          goto LABEL_23;
        case 2:
          OUTLINED_FUNCTION_44_6();
          goto LABEL_23;
        case 3:
          v87 = 0;
          v86 = 0xE000000000000000;
LABEL_23:
          sub_1BCE1ABF0();
          v131 = v87;
          v132 = v86;
          sub_1BC98C934();
          sub_1BC98CAB4();
          OUTLINED_FUNCTION_15_26();
          sub_1BC95003C(v100, v101);
          OUTLINED_FUNCTION_46_4();
          sub_1BCE1D790();
          v102 = OUTLINED_FUNCTION_39_7();
          v103(v102);
          v104 = OUTLINED_FUNCTION_37_9();
          v105(v104, v31);

          break;
        default:
          v88 = OUTLINED_FUNCTION_37_9();
          v89(v88, v31);
          break;
      }
    }

    else
    {
      sub_1BCE1ABF0();
      v131 = 0;
      v132 = 0xE000000000000000;
      sub_1BC98C934();
      sub_1BC98CAB4();
      OUTLINED_FUNCTION_15_26();
      sub_1BC95003C(v90, v91);
      OUTLINED_FUNCTION_46_4();
      sub_1BCE1D790();
      v92 = OUTLINED_FUNCTION_39_7();
      v93(v92);
      v131 = v133;
      v132 = v134;
      v94 = v112;
      sub_1BCE186C0();
      sub_1BC970820();
      v95 = sub_1BCE1DB70();
      v97 = v96;
      (*(v113 + 8))(v94, v114);
      v98 = OUTLINED_FUNCTION_37_9();
      v99(v98, v31);

      v133 = v95;
      v134 = v97;
    }
  }

LABEL_24:
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_21();
}

uint64_t Measurement.formatted<A>(_:placeholder:unitManager:tag:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = *a2;
  LOBYTE(v19) = *a2;
  sub_1BC965E14();
  if (v14)
  {
    return v13;
  }

  v18 = v12;
  (*(a9 + 32))(&v19, v9, &v18, a3, a4, a8, a9);
  v15 = v19;
  LOBYTE(v19) = v12;
  sub_1BC96AC40();
  return v15;
}

double sub_1BC9686E0@<D0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07990);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1BCE41A20;
  *(v2 + 448) = xmmword_1BCE70160;
  *(v2 + 464) = xmmword_1BCE5FF30;
  *(v2 + 656) = xmmword_1BCE70160;
  *(v2 + 672) = xmmword_1BCE68F10;
  *(v2 + 688) = xmmword_1BCE701B0;
  *(v2 + 704) = xmmword_1BCE701C0;
  *(v2 + 720) = xmmword_1BCE701D0;
  *(v2 + 832) = xmmword_1BCE70210;
  *(v2 + 848) = xmmword_1BCE40490;
  *(v2 + 912) = xmmword_1BCE70230;
  *(v2 + 928) = xmmword_1BCE70240;
  *(v2 + 944) = xmmword_1BCE70250;
  *(v2 + 960) = xmmword_1BCE70260;
  *(v2 + 1520) = xmmword_1BCE70380;
  *(v2 + 1552) = xmmword_1BCE70390;
  *(v2 + 1568) = xmmword_1BCE3CD50;
  *(v2 + 1344) = xmmword_1BCE41DA0;
  *(v2 + 1584) = xmmword_1BCE41DA0;
  *(v2 + 1392) = xmmword_1BCE70340;
  *(v2 + 1632) = xmmword_1BCE70340;
  *(v2 + 1408) = xmmword_1BCE70350;
  *(v2 + 1648) = xmmword_1BCE70350;
  *(v2 + 1424) = xmmword_1BCE70360;
  *(v2 + 1664) = xmmword_1BCE70360;
  *(v2 + 1440) = xmmword_1BCE70370;
  *(v2 + 1680) = xmmword_1BCE70370;
  *(v2 + 1280) = xmmword_1BCE70310;
  *(v2 + 1760) = xmmword_1BCE70310;
  *(v2 + 1296) = xmmword_1BCE70320;
  *(v2 + 1536) = xmmword_1BCE70320;
  *(v2 + 1776) = xmmword_1BCE70320;
  *(v2 + 1312) = xmmword_1BCE70330;
  *(v2 + 1792) = xmmword_1BCE70330;
  *(v2 + 1328) = xmmword_1BCE425B0;
  *(v2 + 1808) = xmmword_1BCE425B0;
  *(v2 + 1104) = xmmword_1BCE41CE0;
  *(v2 + 1824) = xmmword_1BCE41CE0;
  *(v2 + 1136) = xmmword_1BCE702C0;
  *(v2 + 1376) = xmmword_1BCE702C0;
  *(v2 + 1616) = xmmword_1BCE702C0;
  *(v2 + 1856) = xmmword_1BCE702C0;
  *(v2 + 1152) = xmmword_1BCE702D0;
  *(v2 + 1872) = xmmword_1BCE702D0;
  *(v2 + 1168) = xmmword_1BCE702E0;
  *(v2 + 1888) = xmmword_1BCE702E0;
  *(v2 + 1184) = xmmword_1BCE702F0;
  *(v2 + 1904) = xmmword_1BCE702F0;
  *(v2 + 1200) = xmmword_1BCE70300;
  *(v2 + 1920) = xmmword_1BCE70300;
  *(v2 + 1248) = xmmword_1BCE70270;
  *(v2 + 1488) = xmmword_1BCE70270;
  *(v2 + 1728) = xmmword_1BCE70270;
  *(v2 + 1968) = xmmword_1BCE70270;
  *(v2 + 1008) = xmmword_1BCE70270;
  *(v2 + 1024) = xmmword_1BCE3EDD0;
  *(v2 + 896) = xmmword_1BCE70220;
  *(v2 + 1264) = xmmword_1BCE3EDD0;
  *(v2 + 1504) = xmmword_1BCE3EDD0;
  *(v2 + 1744) = xmmword_1BCE3EDD0;
  *(v2 + 1984) = xmmword_1BCE3EDD0;
  *(v2 + 1040) = xmmword_1BCE70280;
  *(v2 + 2000) = xmmword_1BCE70280;
  *(v2 + 1056) = xmmword_1BCE70290;
  *(v2 + 2016) = xmmword_1BCE70290;
  *(v2 + 1072) = xmmword_1BCE702A0;
  *(v2 + 2032) = xmmword_1BCE702A0;
  *(v2 + 1088) = xmmword_1BCE702B0;
  *(v2 + 2048) = xmmword_1BCE702B0;
  *(v2 + 864) = xmmword_1BCE41C20;
  *(v2 + 2064) = xmmword_1BCE41C20;
  *(v2 + 2096) = xmmword_1BCE70220;
  *(v2 + 2112) = xmmword_1BCE703A0;
  *(v2 + 2128) = xmmword_1BCE703B0;
  *(v2 + 2144) = xmmword_1BCE703C0;
  *(v2 + 2160) = xmmword_1BCE703D0;
  *(v2 + 2208) = xmmword_1BCE701E0;
  *(v2 + 768) = xmmword_1BCE701E0;
  *(v2 + 784) = xmmword_1BCE701F0;
  v3 = vdupq_n_s64(0x3FDC1C1C00000000uLL);
  *(v2 + 2224) = xmmword_1BCE701F0;
  *(v2 + 2240) = v3;
  *(v2 + 800) = v3;
  *(v2 + 816) = xmmword_1BCE70200;
  *(v2 + 2256) = xmmword_1BCE70200;
  *(v2 + 2272) = xmmword_1BCE703E0;
  *(v2 + 2288) = xmmword_1BCE703F0;
  *(v2 + 624) = xmmword_1BCE41B60;
  *(v2 + 2304) = xmmword_1BCE41B60;
  *(v2 + 2336) = xmmword_1BCE70400;
  *(v2 + 2352) = xmmword_1BCE4C180;
  *(v2 + 2368) = xmmword_1BCE70410;
  *(v2 + 2384) = xmmword_1BCE523C0;
  *(v2 + 2400) = xmmword_1BCE70420;
  *(v2 + 2512) = xmmword_1BCE701A0;
  *(v2 + 592) = xmmword_1BCE701A0;
  *(v2 + 608) = xmmword_1BCE4C1F0;
  *(v2 + 2528) = xmmword_1BCE4C1F0;
  *(v2 + 384) = xmmword_1BCE41AA0;
  *(v2 + 2544) = xmmword_1BCE41AA0;
  v4 = vdupq_n_s64(0x3F90101020000002uLL);
  *(v2 + 2608) = xmmword_1BCE70160;
  *(v2 + 2624) = xmmword_1BCE5FAE0;
  *(v2 + 2640) = xmmword_1BCE70430;
  *(v2 + 2448) = v4;
  *(v2 + 2688) = v4;
  *(v2 + 528) = v4;
  *(v2 + 544) = xmmword_1BCE70180;
  *(v2 + 144) = xmmword_1BCE41A90;
  *(v2 + 2464) = xmmword_1BCE70180;
  *(v2 + 2704) = xmmword_1BCE70180;
  *(v2 + 560) = xmmword_1BCE70190;
  *(v2 + 2480) = xmmword_1BCE70190;
  *(v2 + 2720) = xmmword_1BCE70190;
  *(v2 + 2752) = xmmword_1BCE70440;
  *(v2 + 2768) = xmmword_1BCE4C210;
  *(v2 + 2784) = xmmword_1BCE41A90;
  *(v2 + 2816) = xmmword_1BCE70450;
  *(v2 + 2576) = xmmword_1BCE70150;
  *(v2 + 416) = xmmword_1BCE70150;
  *(v2 + 432) = xmmword_1BCE5D0C0;
  *(v2 + 2592) = xmmword_1BCE5D0C0;
  *(v2 + 2832) = xmmword_1BCE5D0C0;
  *(v2 + 2848) = xmmword_1BCE70460;
  *(v2 + 2864) = xmmword_1BCE70470;
  *(v2 + 2880) = xmmword_1BCE70480;
  *(v2 + 480) = xmmword_1BCE70170;
  *(v2 + 496) = xmmword_1BCE3C8C0;
  v5 = vdupq_n_s64(0x3F88181820000000uLL);
  *(v2 + 736) = xmmword_1BCE3C8C0;
  *(v2 + 976) = xmmword_1BCE3C8C0;
  *(v2 + 1216) = xmmword_1BCE3C8C0;
  *(v2 + 1456) = xmmword_1BCE3C8C0;
  *(v2 + 1696) = xmmword_1BCE3C8C0;
  *(v2 + 1936) = xmmword_1BCE3C8C0;
  *(v2 + 2176) = xmmword_1BCE3C8C0;
  *(v2 + 2416) = xmmword_1BCE3C8C0;
  *(v2 + 2656) = xmmword_1BCE3C8C0;
  *(v2 + 2896) = xmmword_1BCE3C8C0;
  *(v2 + 168) = v5;
  *(v2 + 288) = v5;
  *(v2 + 304) = xmmword_1BCE70100;
  *(v2 + 2928) = v5;
  *(v2 + 48) = v5;
  *(v2 + 64) = xmmword_1BCE70100;
  *(v2 + 184) = xmmword_1BCE70100;
  *(v2 + 2944) = xmmword_1BCE70100;
  *(v2 + 80) = xmmword_1BCE70110;
  *(v2 + 96) = xmmword_1BCE70120;
  *(v2 + 200) = xmmword_1BCE70110;
  *(v2 + 2960) = xmmword_1BCE70110;
  *(v2 + 320) = xmmword_1BCE70110;
  *(v2 + 336) = xmmword_1BCE70120;
  result = 0.176470593;
  *(v2 + 216) = xmmword_1BCE70120;
  *(v2 + 576) = xmmword_1BCE70120;
  *(v2 + 2496) = xmmword_1BCE70120;
  *(v2 + 2736) = xmmword_1BCE70120;
  *(v2 + 2976) = xmmword_1BCE70120;
  *(v2 + 232) = xmmword_1BCE70130;
  *(v2 + 352) = xmmword_1BCE70130;
  *(v2 + 368) = xmmword_1BCE70140;
  *(v2 + 2992) = xmmword_1BCE70130;
  *(v2 + 112) = xmmword_1BCE70130;
  *(v2 + 128) = xmmword_1BCE70140;
  *(v2 + 248) = xmmword_1BCE70140;
  *(v2 + 3008) = xmmword_1BCE70140;
  *(v2 + 32) = 0xC056800000000000;
  *(v2 + 40) = 0;
  *(v2 + 160) = 0;
  *(v2 + 264) = 0x3FE0000000000000;
  *(v2 + 272) = 0xC03E000000000000;
  *(v2 + 280) = 0;
  *(v2 + 400) = 0;
  *(v2 + 408) = 0x3F90101020000002;
  *(v2 + 512) = 0xC028000000000000;
  *(v2 + 520) = 0;
  *(v2 + 640) = 0;
  *(v2 + 648) = 0x3FB6161600000000;
  *(v2 + 752) = 0;
  *(v2 + 760) = 0;
  *(v2 + 761) = *v7;
  *(v2 + 764) = *&v7[3];
  *(v2 + 880) = 0;
  *(v2 + 881) = *v8;
  *(v2 + 884) = *&v8[3];
  *(v2 + 888) = 0x3FC5151540000000;
  *(v2 + 992) = 0x4028000000000000;
  *(v2 + 1000) = 0;
  *(v2 + 1004) = *&v9[3];
  *(v2 + 1001) = *v9;
  *(v2 + 1120) = 0;
  *(v2 + 1121) = *v10;
  *(v2 + 1124) = *&v10[3];
  *(v2 + 1128) = 0x3F98181820000000;
  *(v2 + 1232) = 0x403E000000000000;
  *(v2 + 1240) = 0;
  *(v2 + 1244) = *&v11[3];
  *(v2 + 1241) = *v11;
  *(v2 + 1360) = 0;
  *(v2 + 1364) = *&v12[3];
  *(v2 + 1361) = *v12;
  *(v2 + 1368) = 0x3F98181820000000;
  *(v2 + 1472) = 0x4056800000000000;
  *(v2 + 1480) = 1;
  *(v2 + 1484) = *&v13[3];
  *(v2 + 1481) = *v13;
  *(v2 + 1600) = 1;
  *(v2 + 1604) = *&v14[3];
  *(v2 + 1601) = *v14;
  *(v2 + 1608) = 0x3F98181820000000;
  *(v2 + 1712) = 0x403E000000000000;
  *(v2 + 1720) = 1;
  *(v2 + 1724) = *&v15[3];
  *(v2 + 1721) = *v15;
  *(v2 + 1840) = 1;
  *(v2 + 1844) = *&v16[3];
  *(v2 + 1841) = *v16;
  *(v2 + 1848) = 0x3F98181820000000;
  *(v2 + 1952) = 0x4028000000000000;
  *(v2 + 1960) = 1;
  *(v2 + 1964) = *&v17[3];
  *(v2 + 1961) = *v17;
  *(v2 + 2080) = 1;
  *(v2 + 2084) = *&v18[3];
  *(v2 + 2081) = *v18;
  *(v2 + 2088) = 0x3FC5151540000000;
  *(v2 + 2192) = 0;
  *(v2 + 2200) = 1;
  *(v2 + 2204) = *&v19[3];
  *(v2 + 2201) = *v19;
  *(v2 + 2320) = 1;
  *(v2 + 2324) = *&v20[3];
  *(v2 + 2321) = *v20;
  *(v2 + 2328) = 0x3FB31312E0000000;
  *(v2 + 2432) = 0xC028000000000000;
  *(v2 + 2440) = 1;
  *(v2 + 2444) = *&v21[3];
  *(v2 + 2441) = *v21;
  *(v2 + 2560) = 1;
  *(v2 + 2564) = *&v22[3];
  *(v2 + 2561) = *v22;
  *(v2 + 2568) = 0x3F90101020000002;
  *(v2 + 2672) = 0xC03E000000000000;
  *(v2 + 2680) = 1;
  *(v2 + 2684) = *&v23[3];
  *(v2 + 2681) = *v23;
  *(v2 + 2800) = 1;
  *(v2 + 2804) = *&v24[3];
  *(v2 + 2801) = *v24;
  *(v2 + 2808) = 0x3F88181820000000;
  *(v2 + 2912) = 0xC056800000000000;
  *(v2 + 2920) = 1;
  *(v2 + 2924) = *&v25[3];
  *(v2 + 2921) = *v25;
  *(v2 + 3024) = 0x3FE0000000000000;
  *a1 = 0x3FFB333333333333;
  a1[1] = v2;
  return result;
}

void sub_1BC968EA4()
{
  OUTLINED_FUNCTION_101_0();
  v1 = v0;
  swift_getObjectType();
  OUTLINED_FUNCTION_69();
  sub_1BC967B28();
  *v1 = v2;
  v1[1] = v3;
}

uint64_t OUTLINED_FUNCTION_100_2()
{

  return sub_1BC970B70();
}

void *static SkyBackgroundGradient.interpolated(forElevation:isPM:stops:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, void *a3@<X8>, double a4@<D0>)
{
  if (fabs(a4) <= 90.0)
  {
    v7 = *(a2 + 16);
    if (v7)
    {
      v39 = MEMORY[0x1E69E7CC0];
      sub_1BC969418(0, v7, 0);
      v9 = v39;
      v10 = a2 + 32;
      v11 = v7 - 1;
      v12 = (a2 + 41);
      v34 = v10;
      while (1)
      {
        v13 = *(v12 - 1);
        if (v13)
        {
          v14 = 180.0 - *(v12 - 9);
        }

        else
        {
          v14 = *(v12 - 9);
        }

        memcpy(__dst, v12, sizeof(__dst));
        v39 = v9;
        v16 = *(v9 + 16);
        v15 = *(v9 + 24);
        if (v16 >= v15 >> 1)
        {
          sub_1BC969418((v15 > 1), v16 + 1, 1);
          v9 = v39;
        }

        *(v9 + 16) = v16 + 1;
        v17 = v9 + 120 * v16;
        *(v17 + 32) = v14;
        *(v17 + 40) = v13;
        memcpy((v17 + 41), __dst, 0x6FuLL);
        if (!v11)
        {
          break;
        }

        --v11;
        v12 += 120;
      }

      v20 = 0;
      if (a1)
      {
        v21 = 180.0 - a4;
      }

      else
      {
        v21 = a4;
      }

      v22 = 32;
      while (1)
      {
        if (v16 + 1 == v20)
        {
          goto LABEL_23;
        }

        if (v21 < *(v9 + v22))
        {
          break;
        }

        v22 += 120;
        if (__OFADD__(v20++, 1))
        {
          __break(1u);
LABEL_23:

          v20 = v7 - 1;
          goto LABEL_25;
        }
      }

LABEL_25:
      v24 = v20 - 1;
      if (__OFSUB__(v20, 1))
      {
        __break(1u);
      }

      else if (v20 < v7)
      {
        if (v24 < v7)
        {
          v25 = (v34 + 120 * v20);
          v27 = *v25;
          v26 = v25 + 2;
          v28 = v27;
          v29 = (v34 + 120 * (v24 & ~(v24 >> 63)));
          v31 = *v29;
          v30 = v29 + 2;
          v32 = v31;
          v33 = 0.0;
          if (v31 != v28)
          {
            v33 = (a4 - v32) / (v28 - v32);
          }

          memcpy(v36, v30, sizeof(v36));
          memcpy(v35, v26, sizeof(v35));
          static SkyBackgroundGradient.interpolated(between:and:progress:)(v36, v35, __src, v33);
          return memcpy(a3, __src, 0x68uLL);
        }

LABEL_33:
        __break(1u);
        return result;
      }

      __break(1u);
      goto LABEL_33;
    }
  }

  v18 = MEMORY[0x1E69E7CC0];

  return SkyBackgroundGradient.init(hexes:)(v18, a3);
}

uint64_t OUTLINED_FUNCTION_72_2()
{

  return sub_1BCE1DFE0();
}

uint64_t OUTLINED_FUNCTION_72_3@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *v6 = result;
  *(v6 + 8) = *(a2 + 8);
  *(v6 + 24) = a3;
  *(v6 + 32) = v3;
  *(v6 + 40) = v4;
  *(v6 + 41) = v5;
  return result;
}

uint64_t sub_1BC96926C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1BC969438();
  if (v6)
  {
    goto LABEL_10;
  }

  if (*(a1 + 36) != v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  if (result == 1 << *(a1 + 32))
  {
    v7 = 1;
  }

  else
  {
    sub_1BC969810(result, v5, a1, a2);
    v7 = 0;
  }

  v8 = type metadata accessor for NSUnitTemperature.WeatherFormatComponent(0);

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v8);
}

char *sub_1BC969304(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07990);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 120);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[120 * v8] <= v12)
    {
      memmove(v12, v13, 120 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 120 * v8);
  }

  return v10;
}

char *sub_1BC969418(char *a1, int64_t a2, char a3)
{
  result = sub_1BC969304(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1BC969478(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1BC9694D8()
{
  v1 = OUTLINED_FUNCTION_12_0();
  v2(v1);
  OUTLINED_FUNCTION_4();
  v3 = OUTLINED_FUNCTION_10_1();
  v4(v3);
  return v0;
}

void static CodableColor.interpolated(between:and:progress:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, float a4@<S0>)
{
  sub_1BCE1CA30();
  OUTLINED_FUNCTION_2();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_0();
  v11 = *a2;
  v12 = *(a2 + 8);
  v13 = *(a2 + 16);
  v14 = *(a2 + 24);
  v15 = a4;
  v16 = 1.0 - a4;
  if (v16 > 0.0)
  {
    if (a4 <= 0.0)
    {
      v11 = *a1;
      v12 = *(a1 + 8);
      v13 = *(a1 + 16);
      v14 = *(a1 + 24);
    }

    else
    {
      v17 = *(v9 + 104);
      v18 = OUTLINED_FUNCTION_7_30();
      v17(v18);
      sub_1BCE1CB30();
      v19 = Color.rgbaComponents.getter();
      v21 = v20;
      v26 = v22;

      v23 = OUTLINED_FUNCTION_7_30();
      v17(v23);
      OUTLINED_FUNCTION_8_23();
      sub_1BCE1CB30();
      Color.rgbaComponents.getter();
      OUTLINED_FUNCTION_2_26();

      v11 = v16 * v19 + v11 * v15;
      v12 = v16 * v21 + v12 * v15;
      v13 = v16 * v26 + v13 * v15;
      v24 = OUTLINED_FUNCTION_7_30();
      v17(v24);
      OUTLINED_FUNCTION_8_23();
      sub_1BCE1CB30();
      Color.rgbaComponents.getter();
      OUTLINED_FUNCTION_2_26();
      v14 = v25;
    }
  }

  *a3 = v11;
  *(a3 + 8) = v12;
  *(a3 + 16) = v13;
  *(a3 + 24) = v14;
}

double static SkyBackgroundGradient.interpolated(between:and:progress:)@<D0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>, float a4@<S0>)
{
  v8 = a1[1];
  v23 = *a1;
  v24 = v8;
  v9 = a2[1];
  v21 = *a2;
  v22 = v9;
  static CodableColor.interpolated(between:and:progress:)(&v23, &v21, v25, a4);
  v10 = a1[3];
  v21 = a1[2];
  v22 = v10;
  v11 = a2[3];
  v19 = a2[2];
  v20 = v11;
  static CodableColor.interpolated(between:and:progress:)(&v21, &v19, &v23, a4);
  v12 = a1[5];
  v19 = a1[4];
  v20 = v12;
  v13 = a2[5];
  v18[0] = a2[4];
  v18[1] = v13;
  static CodableColor.interpolated(between:and:progress:)(&v19, v18, &v21, a4);
  v14 = v25[1];
  *a3 = v25[0];
  *(a3 + 16) = v14;
  v15 = v24;
  *(a3 + 32) = v23;
  *(a3 + 48) = v15;
  result = *&v21;
  v17 = v22;
  *(a3 + 64) = v21;
  *(a3 + 80) = v17;
  *(a3 + 96) = 0x3FE0000000000000;
  return result;
}

uint64_t sub_1BC969810@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || (v4 = result, 1 << *(a3 + 32) <= result))
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a3 + 36) == a2)
  {
    v6 = *(a3 + 48);
    v7 = type metadata accessor for NSUnitTemperature.WeatherFormatComponent(0);
    return sub_1BC969478(v6 + *(*(v7 - 8) + 72) * v4, a4, type metadata accessor for NSUnitTemperature.WeatherFormatComponent);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1BC9698D4(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  OUTLINED_FUNCTION_55_5();

  return __swift_storeEnumTagSinglePayload(a1, v5, a3, v6);
}

double Color.rgbaComponents.getter()
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = 0;
  v6[0] = 0;
  v3 = 0;
  v4 = 0;
  sub_1BC947608(0, &qword_1EDA1F698);

  v0 = sub_1BCE1DAB0();
  v1 = [v0 getRed:v6 green:&v5 blue:&v4 alpha:&v3];

  result = 0.0;
  if (v1)
  {
    return *v6;
  }

  return result;
}

uint64_t sub_1BC969A04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NSUnitTemperature.WeatherFormatUnitConfiguration(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, a2, v4);
  if (EnumTagSinglePayload >= 2)
  {
    return EnumTagSinglePayload - 1;
  }

  else
  {
    return 0;
  }
}

void SkyBackgroundGradient.mutated(with:)()
{
  OUTLINED_FUNCTION_12_25();
  v2 = v1;
  v4 = v3;
  v5 = sub_1BCE1CA30();
  OUTLINED_FUNCTION_2();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2_0();
  v11 = v10 - v9;
  v13 = *v0;
  v12 = *(v0 + 8);
  v14 = *(v0 + 16);
  v15 = *(v0 + 24);
  v16 = *(v0 + 32);
  v17 = *(v0 + 40);
  v18 = *(v0 + 48);
  v19 = *(v0 + 56);
  v20 = *(v0 + 64);
  v21 = *(v0 + 72);
  v22 = *(v0 + 80);
  _Q0 = *(v0 + 88);
  if ((*(v2 + 16) & 1) == 0)
  {
    v24 = *(v2 + 4);
    LODWORD(v25) = *(v2 + 8);
    if (*v2 == 0.0 && v24 == 0.0 && v25 == 0.0 && (*(v2 + 8) & 0x7FFFFFFF00000000) == 0)
    {
      v21 = *(v0 + 72);
      v20 = *(v0 + 64);
      v22 = *(v0 + 80);
    }

    else
    {
      sub_1BCE1CA90();
      sub_1BCE1CA60();
      v26 = OUTLINED_FUNCTION_13_0();
      static Color.interpolated(between:and:progress:)(v26, v27, v28);

      v29 = sub_1BCE1CA90();
      v30 = sub_1BCE1CAD0();
      static Color.interpolated(between:and:progress:)(v29, v30, v24);

      v31 = sub_1BCE1CA90();
      v32 = sub_1BCE1CA70();
      static Color.interpolated(between:and:progress:)(v31, v32, v25);

      v47 = *MEMORY[0x1E69814D8];
      v33 = *(v7 + 104);
      v33(v11);
      sub_1BCE1CB30();
      sub_1BCE1CAB0();
      Color.remapped(between:and:)();

      sub_1BCE1CAB0();
      Color.remapped(between:and:)();

      sub_1BCE1CAB0();
      Color.remapped(between:and:)();

      (v33)(v11, v47, v5);
      sub_1BCE1CB30();
      sub_1BCE1CAB0();
      Color.remapped(between:and:)();

      sub_1BCE1CAB0();
      Color.remapped(between:and:)();

      sub_1BCE1CAB0();
      Color.remapped(between:and:)();

      (v33)(v11, v47, v5);
      sub_1BCE1CB30();
      sub_1BCE1CAB0();
      Color.remapped(between:and:)();

      sub_1BCE1CAB0();
      Color.remapped(between:and:)();

      sub_1BCE1CAB0();
      Color.remapped(between:and:)();

      v13 = Color.rgbaComponents.getter();
      v12 = v34;
      v14 = v35;
      v15 = v36;

      v48 = Color.rgbaComponents.getter();
      v49 = v37;
      v50 = v38;
      v19 = v39;

      v20 = Color.rgbaComponents.getter();
      v21 = v40;
      v22 = v41;
      v51 = v42;

      v17 = v49;
      v18 = v50;
      v16 = v48;
      __asm { FMOV            V0.2D, #0.5 }

      *&_Q0 = v51;
    }
  }

  *v4 = v13;
  *(v4 + 8) = v12;
  *(v4 + 16) = v14;
  *(v4 + 24) = v15;
  *(v4 + 32) = v16;
  *(v4 + 40) = v17;
  *(v4 + 48) = v18;
  *(v4 + 56) = v19;
  *(v4 + 64) = v20;
  *(v4 + 72) = v21;
  *(v4 + 80) = v22;
  *(v4 + 88) = _Q0;
  OUTLINED_FUNCTION_13_23();
}

uint64_t sub_1BC969F2C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1BC969F84(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1BC969FDC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_1BC96A034()
{
  OUTLINED_FUNCTION_20_0();
  v2 = v1;
  v4 = v3;
  type metadata accessor for NSUnitTemperature.WeatherFormatUnitConfiguration(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_114_0(v7 - v6);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08BF0);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_36_1();
  v9 = type metadata accessor for NSUnitTemperature.WeatherFormatComponent(0);
  v10 = OUTLINED_FUNCTION_11_2(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_78();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_35_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_110();
  MEMORY[0x1EEE9AC00](v13);
  v17 = v26 - v16;
  if (v4 == v2 || *(v4 + 16) != *(v2 + 16))
  {
LABEL_14:
    OUTLINED_FUNCTION_21();
    return;
  }

  v30 = v15;
  v18 = 1 << *(v4 + 32);
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  else
  {
    v19 = -1;
  }

  v20 = v19 & *(v4 + 56);
  v31 = v2 + 56;
  v26[3] = v14;
  v26[4] = v4;
  v26[1] = v4 + 56;
  v26[2] = v17;
  v26[0] = (v18 + 63) >> 6;
  v29 = v0;
  if (v20)
  {
    v27 = 0;
    v28 = (v20 - 1) & v20;
LABEL_13:
    OUTLINED_FUNCTION_22_5();
    sub_1BC96DDD0();
    sub_1BC979B4C();
    sub_1BCE1E100();
    NSUnitTemperature.WeatherFormatComponent.hash(into:)();
    sub_1BCE1E150();
    OUTLINED_FUNCTION_59();
    sub_1BC96DF88(v0, type metadata accessor for NSUnitTemperature.WeatherFormatComponent);
    goto LABEL_14;
  }

  v21 = 0;
  while (1)
  {
    v22 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v22 >= ((v18 + 63) >> 6))
    {
      goto LABEL_14;
    }

    ++v21;
    if (*(v4 + 56 + 8 * v22))
    {
      OUTLINED_FUNCTION_30();
      v27 = v25;
      v28 = v24 & v23;
      goto LABEL_13;
    }
  }

  __break(1u);
}

void OUTLINED_FUNCTION_22_4()
{
  *(v0 + 128) = 0;
  *(v0 + 136) = 0;
  *(v0 + 144) = 3;
}

uint64_t OUTLINED_FUNCTION_22_6(uint64_t a1)
{
  v2[8] = a1;
  v2[4] = v1;
  v2[5] = v3;

  return sub_1BCE1D250();
}

void OUTLINED_FUNCTION_22_10()
{
  *(v1 + 72) = v0;
  *(v1 + 80) = v2;
  *(v1 + 88) = 0;
  *(v1 + 96) = 0;
  *(v1 + 104) = 2;
}

uint64_t OUTLINED_FUNCTION_22_12()
{

  return sub_1BCE1E090();
}

uint64_t OUTLINED_FUNCTION_22_13(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3);
}

void OUTLINED_FUNCTION_22_14()
{

  static WeatherFormatStyle<>.weather(_:locale:)();
}

uint64_t OUTLINED_FUNCTION_22_15()
{
}

uint64_t OUTLINED_FUNCTION_22_23(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1BC97FC70(a1, a2, a3);
}

void OUTLINED_FUNCTION_22_24(uint64_t a1@<X8>)
{
  v2[4] = 16421;
  v2[5] = 0xE200000000000000;
  v2[12] = a1;
  v2[13] = v1;
}

uint64_t OUTLINED_FUNCTION_22_25()
{

  return sub_1BCE1DF70();
}

void OUTLINED_FUNCTION_22_26(uint64_t a1@<X8>, double a2@<D0>)
{
  *v5 = a1;
  *(v5 + 8) = *(v6 - 120);
  *(v5 + 24) = a2;
  *(v5 + 32) = v2;
  *(v5 + 40) = v3;
  *(v5 + 41) = v4;
}

void OUTLINED_FUNCTION_22_27(double a1, double a2, double a3, double a4)
{
  *&STACK[0x3C8] = a1;
  *&STACK[0x3C0] = a2;
  *&STACK[0x3B8] = a3;
  *&STACK[0x3B0] = a4;
}

uint64_t OUTLINED_FUNCTION_22_28()
{

  return swift_bridgeObjectRetain_n();
}

uint64_t OUTLINED_FUNCTION_22_29()
{
}

void sub_1BC96A7B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_20_0();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v26 = sub_1BCE18D90();
  OUTLINED_FUNCTION_2();
  v28 = v27;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_8_15();
  v30 = sub_1BCE19280();
  v31 = OUTLINED_FUNCTION_14(v30);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_24_15();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08288);
  OUTLINED_FUNCTION_2();
  v34 = v33;
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_18_2();
  MEMORY[0x1EEE9AC00](v36);
  v38 = &a9 - v37;
  sub_1BCE19150();
  sub_1BC96ABEC();
  sub_1BCE18C80();
  sub_1BCE18D60();
  MEMORY[0x1BFB2B400](v20, v32);
  (*(v28 + 8))(v20, v26);
  v39 = *(v34 + 8);
  v39(v21, v32);
  MEMORY[0x1BFB2B3B0](v25, v32);
  v39(v38, v32);
  OUTLINED_FUNCTION_21();
}

uint64_t sub_1BC96AA10(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 253)
  {
    *(result + 104) = a2 + 2;
  }

  else
  {
    v7 = type metadata accessor for BackgroundAnimationData(0);
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_74_0()
{
  v3 = *(v0 + 208);
  v4 = *(v0 + 24);

  return sub_1BC97EFD0(v1, v3, v4);
}

uint64_t OUTLINED_FUNCTION_74_3()
{

  return sub_1BCE1DF70();
}

uint64_t sub_1BC96AB50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 253)
  {
    v4 = *(a1 + 104);
    if (v4 >= 2)
    {
      v5 = ((v4 + 2147483646) & 0x7FFFFFFF) - 1;
    }

    else
    {
      v5 = -2;
    }

    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = type metadata accessor for BackgroundAnimationData(0);
    v10 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

unint64_t sub_1BC96ABEC()
{
  result = qword_1EDA1F1E0;
  if (!qword_1EDA1F1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1F1E0);
  }

  return result;
}

void sub_1BC96AC40()
{
  OUTLINED_FUNCTION_20_0();
  v32 = v0;
  v33 = v1;
  v3 = v2;
  v5 = v4;
  v35 = v7;
  v36 = v6;
  v9 = v8;
  v34 = v10;
  OUTLINED_FUNCTION_3_6();
  v30 = v11;
  v31 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_2_0();
  v16 = v15 - v14;
  swift_getAssociatedTypeWitness();
  v17 = sub_1BCE186B0();
  OUTLINED_FUNCTION_2();
  v19 = v18;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v29 - v21;
  v37 = v3;
  v29 = type metadata accessor for WeatherFormatCacheKey();
  OUTLINED_FUNCTION_2();
  v24 = v23;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v29 - v26;
  v28 = *v9;
  if (qword_1EDA1F638 != -1)
  {
    OUTLINED_FUNCTION_2_6();
  }

  (*(v19 + 16))(v22, v30, v17);
  (*(v31 + 16))(v16, v32, v5);
  v38 = v28;
  sub_1BC96AFAC(v22, v16, &v38, v33, v35, v5, v27);

  sub_1BC96B0F0(v34, v36);
  (*(v24 + 8))(v27, v29);
  OUTLINED_FUNCTION_21();
}

uint64_t WeatherConditionBackgroundModel.animationData.getter()
{
  v0 = OUTLINED_FUNCTION_19_1();
  v1 = type metadata accessor for WeatherConditionBackgroundModel(v0);
  v2 = OUTLINED_FUNCTION_105(*(v1 + 24));

  return sub_1BC96AF48(v2, v3);
}

uint64_t OUTLINED_FUNCTION_115()
{

  return sub_1BC9849E8();
}

uint64_t OUTLINED_FUNCTION_115_0()
{
}

uint64_t sub_1BC96AF48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BackgroundAnimationData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BC96AFAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v13 = *a3;
  v14 = sub_1BCE186B0();
  (*(*(v14 - 8) + 32))(a7, a1, v14);
  v15 = type metadata accessor for WeatherFormatCacheKey();
  result = (*(*(a6 - 8) + 32))(a7 + v15[11], a2, a6);
  *(a7 + v15[12]) = v13;
  v17 = (a7 + v15[13]);
  *v17 = a4;
  v17[1] = a5;
  return result;
}

uint64_t sub_1BC96B0B0(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_1BC96B0F0(uint64_t a1, uint64_t a2)
{
  sub_1BCE1A780();
  v6 = a1;
  v7 = a2;
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_16_5();
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_9_7();
  sub_1BCE1AA10();

  sub_1BC96B2D0(v5);
  return sub_1BCE1A790();
}

uint64_t NSUnitTemperature.BaseWeatherFormatStyle.hash(into:)()
{
  sub_1BC98CB2C();
  type metadata accessor for NSUnitTemperature.BaseWeatherFormatStyle(0);
  sub_1BCE19280();
  OUTLINED_FUNCTION_7_45();
  sub_1BC95003C(v0, v1);
  OUTLINED_FUNCTION_58();
  sub_1BCE1D190();
  sub_1BCE1E120();
  sub_1BCE1E120();
  sub_1BCE18D50();
  OUTLINED_FUNCTION_6_42();
  sub_1BC95003C(v2, v3);
  OUTLINED_FUNCTION_58();
  return sub_1BCE1D190();
}

uint64_t sub_1BC96B280(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t SkyBackgroundGradient.gradient()()
{
  sub_1BCE1CA30();
  OUTLINED_FUNCTION_2();
  v1 = v0;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_2_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD079A0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1BCE43610;
  v4 = *(v1 + 104);
  v5 = OUTLINED_FUNCTION_4_35();
  v4(v5);
  sub_1BCE1CB30();
  *(v3 + 32) = sub_1BCE1CE50();
  *(v3 + 40) = v6;
  v7 = OUTLINED_FUNCTION_4_35();
  v4(v7);
  sub_1BCE1CB30();
  *(v3 + 48) = sub_1BCE1CE50();
  *(v3 + 56) = v8;
  v9 = OUTLINED_FUNCTION_4_35();
  v4(v9);
  sub_1BCE1CB30();
  *(v3 + 64) = sub_1BCE1CE50();
  *(v3 + 72) = v10;
  return sub_1BCE1CE60();
}

WeatherUI::WeatherConditionIcon __swiftcall WeatherCondition.conditionIcon(isDaylight:isFilled:forLightBackground:)(Swift::Bool isDaylight, Swift::Bool isFilled, Swift::Bool forLightBackground)
{
  v5 = v3;
  v9 = WeatherCondition.conditionIconName(isDaytime:isFilled:)(isDaylight, isFilled);
  object = v9.value._object;
  countAndFlagsBits = v9.value._countAndFlagsBits;
  if (v9.value._object)
  {
    v10 = v9.value._countAndFlagsBits;
    v11 = v9.value._object;
    v12 = MEMORY[0x1E69E7CC0];
    if (forLightBackground)
    {
      if (qword_1EDA1EB88 != -1)
      {
        swift_once();
      }

      countAndFlagsBits = sub_1BCBE33E8(v9.value._countAndFlagsBits, v9.value._object, qword_1EDA1EB90);
      if (countAndFlagsBits)
      {
        v12 = countAndFlagsBits;
      }
    }
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
    v11 = 0xEC0000006C6C6966;
    v10 = 0x2E78616D2E6E7573;
  }

  *v5 = v10;
  v5[1] = v11;
  v5[2] = v12;
  result.palette._rawValue = v8;
  result.name._object = object;
  result.name._countAndFlagsBits = countAndFlagsBits;
  return result;
}

Swift::String_optional __swiftcall WeatherCondition.conditionIconName(isDaytime:isFilled:)(Swift::Bool isDaytime, Swift::Bool isFilled)
{
  v4 = v2;
  OUTLINED_FUNCTION_1_51();
  v7 = v3 & 0xFFFFFFFFFFFFLL | 0x6E73000000000000;
  v8 = sub_1BCE199D0();
  OUTLINED_FUNCTION_2();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v13, v4, v8);
  v14 = (*(v10 + 88))(v13, v8);
  if (v14 == *MEMORY[0x1E6984CE0])
  {
    goto LABEL_2;
  }

  if (v14 == *MEMORY[0x1E6984C08])
  {
    v15 = 0xE800000000000000;
    v7 = 0x747375642E6E7573;
    goto LABEL_5;
  }

  v16 = 0xE900000000000065;
  if (v14 == *MEMORY[0x1E6984C10])
  {
    v16 = 0xE900000000000077;
    v17 = 0x6F6E732E646E6977;
    goto LABEL_12;
  }

  if (v14 == *MEMORY[0x1E6984CC0])
  {
LABEL_11:
    v16 = 0xE400000000000000;
    v17 = 1684957559;
    goto LABEL_12;
  }

  if (v14 == *MEMORY[0x1E6984C98])
  {
LABEL_14:
    if (isDaytime)
    {
      v7 = 0x78616D2E6E7573;
    }

    else
    {
      v7 = 0x6174732E6E6F6F6DLL;
    }

    if (isDaytime)
    {
      v15 = 0xE700000000000000;
    }

    else
    {
      v15 = 0xEA00000000007372;
    }

    goto LABEL_5;
  }

  if (v14 == *MEMORY[0x1E6984CC8])
  {
    goto LABEL_21;
  }

  if (v14 == *MEMORY[0x1E6984CD8])
  {
    if (isDaytime)
    {
      v7 = 0x72642E64756F6C63;
    }

    else
    {
      v7 = 0x6F6D2E64756F6C63;
    }

    if (isDaytime)
    {
      v15 = 0xED0000656C7A7A69;
    }

    else
    {
      v15 = 0xEF6E6961722E6E6FLL;
    }

    goto LABEL_5;
  }

  v17 = 0x6B616C66776F6E73;
  if (v14 == *MEMORY[0x1E6984CE8])
  {
    goto LABEL_12;
  }

  if (v14 == *MEMORY[0x1E6984CA0])
  {
    v15 = 0xE900000000000067;
    OUTLINED_FUNCTION_1_51();
    v7 = v7 & 0xFFFFFFFFFFFFLL | 0x6F66000000000000;
    goto LABEL_5;
  }

  if (v14 == *MEMORY[0x1E6984C58])
  {
    v15 = 0xED0000656C7A7A69;
    OUTLINED_FUNCTION_1_51();
    v7 = v7 & 0xFFFFFFFFFFFFLL | 0x7264000000000000;
    goto LABEL_5;
  }

  if (v14 == *MEMORY[0x1E6984C28])
  {
    goto LABEL_35;
  }

  if (v14 == *MEMORY[0x1E6984CD0])
  {
    v16 = 0x80000001BCE7BF60;
    v17 = 0xD000000000000015;
    goto LABEL_12;
  }

  if (v14 == *MEMORY[0x1E6984C78])
  {
    v15 = 0xEA00000000006C69;
    OUTLINED_FUNCTION_1_51();
    v7 = v7 & 0xFFFFFFFFFFFFLL | 0x6168000000000000;
    goto LABEL_5;
  }

  if (v14 == *MEMORY[0x1E6984C80])
  {
LABEL_41:
    if (isDaytime)
    {
      v7 = 0x657A61682E6E7573;
    }

    else
    {
      v7 = 0x7A61682E6E6F6F6DLL;
    }

    if (isDaytime)
    {
      v15 = 0xE800000000000000;
    }

    else
    {
      v15 = 0xE900000000000065;
    }

    goto LABEL_5;
  }

  if (v14 == *MEMORY[0x1E6984D10])
  {
    v15 = 0xEF6E696172797661;
    OUTLINED_FUNCTION_1_51();
    v7 = v7 & 0xFFFFFFFFFFFFLL | 0x6568000000000000;
    goto LABEL_5;
  }

  if (v14 == *MEMORY[0x1E6984D18])
  {
LABEL_2:
    v15 = 0xEA0000000000776FLL;
    goto LABEL_5;
  }

  if (v14 == *MEMORY[0x1E6984C70])
  {
    goto LABEL_14;
  }

  if (v14 == *MEMORY[0x1E6984D20])
  {
    v17 = 0x6E61636972727568;
    goto LABEL_12;
  }

  if (v14 == *MEMORY[0x1E6984C60])
  {
LABEL_54:
    if (isDaytime)
    {
      v7 = 0x6F622E64756F6C63;
    }

    else
    {
      v7 = 0x6F6D2E64756F6C63;
    }

    if (isDaytime)
    {
      v15 = 0xEA0000000000746CLL;
    }

    else
    {
      v15 = 0xEF746C6F622E6E6FLL;
    }

    goto LABEL_5;
  }

  if (v14 == *MEMORY[0x1E6984C18])
  {
    goto LABEL_14;
  }

  if (v14 == *MEMORY[0x1E6984C30])
  {
LABEL_21:
    v15 = 0xE500000000000000;
    v7 = 0x64756F6C63;
    goto LABEL_5;
  }

  if (v14 == *MEMORY[0x1E6984C38])
  {
    if (isDaytime)
    {
      v7 = 0x75732E64756F6C63;
    }

    else
    {
      v7 = 0x6F6D2E64756F6C63;
    }

    if (isDaytime)
    {
      v15 = 0xE90000000000006ELL;
    }

    else
    {
      v15 = 0xEA00000000006E6FLL;
    }

    goto LABEL_5;
  }

  if (v14 == *MEMORY[0x1E6984C88])
  {
    v15 = 0xEA00000000006E69;
    OUTLINED_FUNCTION_1_51();
    v7 = v7 & 0xFFFFFFFFFFFFLL | 0x6172000000000000;
  }

  else
  {
    if (v14 == *MEMORY[0x1E6984C68])
    {
      goto LABEL_54;
    }

    if (v14 == *MEMORY[0x1E6984CA8])
    {
LABEL_35:
      v7 = 0x6C732E64756F6C63;
      v15 = 0xEB00000000746565;
      goto LABEL_5;
    }

    if (v14 == *MEMORY[0x1E6984CB0])
    {
      goto LABEL_41;
    }

    if (v14 == *MEMORY[0x1E6984C90])
    {
      goto LABEL_12;
    }

    v15 = 0xEF6E6961722E746CLL;
    OUTLINED_FUNCTION_1_51();
    v7 = v7 & 0xFFFFFFFFFFFFLL | 0x6F62000000000000;
    if (v19 == *MEMORY[0x1E6984C40])
    {
      goto LABEL_5;
    }

    if (v19 == *MEMORY[0x1E6984C20])
    {
      goto LABEL_12;
    }

    if (v19 == *MEMORY[0x1E6984C00])
    {
      OUTLINED_FUNCTION_1_51();
      v7 = v7 & 0xFFFFFFFFFFFFLL | 0x7573000000000000;
      v15 = 0xEE006E6961722E6ELL;
    }

    else if (v19 != *MEMORY[0x1E6984C48])
    {
      if (v19 == *MEMORY[0x1E6984C50])
      {
        v16 = 0xED00006D726F7473;
        v17 = 0x6C616369706F7274;
        goto LABEL_12;
      }

      if (v19 != *MEMORY[0x1E6984CB8])
      {
        v7 = v21;
        v15 = v20;
        if (v19 != *MEMORY[0x1E6984D28])
        {
          (*(v10 + 8))(v13, v8);
          v17 = 0;
          v16 = 0;
          goto LABEL_12;
        }

        goto LABEL_5;
      }

      goto LABEL_11;
    }
  }

LABEL_5:
  if (isFilled)
  {
    v23 = v7;
    v24 = v15;

    MEMORY[0x1BFB2FB00](0x6C6C69662ELL, 0xE500000000000000);

    v17 = v23;
    v16 = v24;
  }

  else
  {
    v17 = v7;
    v16 = v15;
  }

LABEL_12:
  v18 = v17;
  result.value._object = v16;
  result.value._countAndFlagsBits = v18;
  return result;
}

uint64_t AnimatedGradient.init(baseGradient:animatedGradient:showAnimatedGradient:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

uint64_t WeatherConditionIcon.name.getter()
{
  v1 = *v0;

  return v1;
}

Swift::String __swiftcall Double.formattedPercent(roundToNearestPercent:)(Swift::Bool roundToNearestPercent)
{
  v2 = v1;
  v4 = sub_1BCE19280();
  MEMORY[0x1EEE9AC00](v4 - 8);
  OUTLINED_FUNCTION_2_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07BE8);
  OUTLINED_FUNCTION_2();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v24 - v9;
  v11 = sub_1BCE1E060();
  OUTLINED_FUNCTION_2();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2_0();
  v17 = v16 - v15;
  if (roundToNearestPercent)
  {
    (*(v13 + 104))(v17, *MEMORY[0x1E69E7038], v11);
    v2 = Double.nearestMultiple(of:roundingRule:)(v17, 0.01, v2);
    (*(v13 + 8))(v17, v11);
  }

  *&v24[1] = v2;
  sub_1BCE19150();
  sub_1BC96ABEC();
  sub_1BCE18CB0();
  sub_1BC96C2BC();
  sub_1BCE1D0F0();
  (*(v7 + 8))(v10, v5);
  v18 = sub_1BCC67EB4(v24[2], v24[3]);
  v20 = v19;

  v21 = v18;
  v22 = v20;
  result._object = v22;
  result._countAndFlagsBits = v21;
  return result;
}

double Double.nearestMultiple(of:roundingRule:)(uint64_t a1, long double a2, long double a3)
{
  v6 = sub_1BCE1E060();
  OUTLINED_FUNCTION_2();
  v8 = v7;
  v10 = (MEMORY[0x1EEE9AC00])(v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v27 - v13;
  v15 = fmod(a3, a2);
  if (v15 <= 2.22044605e-16)
  {
    v20 = a3 / a2;
    v28 = v20;
    (*(v8 + 16))(v12, a1, v6);
    v21 = (*(v8 + 88))(v12, v6);
    if (v21 == *MEMORY[0x1E69E7038])
    {
      v22 = round(v20);
    }

    else if (v21 == *MEMORY[0x1E69E7030])
    {
      v22 = rint(v20);
    }

    else if (v21 == *MEMORY[0x1E69E7040])
    {
      v22 = ceil(v20);
    }

    else if (v21 == *MEMORY[0x1E69E7048])
    {
      v22 = floor(v20);
    }

    else if (v21 == *MEMORY[0x1E69E7020])
    {
      v22 = trunc(v20);
    }

    else if (v21 == *MEMORY[0x1E69E7028])
    {
      v24 = sub_1BCE1D680();
      v22 = floor(v20);
      v25 = ceil(v20);
      if ((v24 & 1) == 0)
      {
        v22 = v25;
      }
    }

    else
    {
      sub_1BCE1D670();
      (*(v8 + 8))(v12, v6);
      v22 = v28;
    }

    return v22 * a2;
  }

  else
  {
    (*(v8 + 16))(v14, a1, v6);
    v16 = (*(v8 + 88))(v14, v6);
    if (v16 != *MEMORY[0x1E69E7038] && v16 != *MEMORY[0x1E69E7030] && v16 != *MEMORY[0x1E69E7040])
    {
      if (v16 == *MEMORY[0x1E69E7048] || v16 == *MEMORY[0x1E69E7020])
      {
        return a3 - v15;
      }

      if (v16 != *MEMORY[0x1E69E7028])
      {
        v19 = a2 - v15 + a3;
        (*(v8 + 8))(v14, v6);
        return v19;
      }
    }

    return a2 - v15 + a3;
  }
}

uint64_t sub_1BC96C23C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_1BC96C27C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1BC96C2BC()
{
  result = qword_1EDA1EC00;
  if (!qword_1EDA1EC00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD07BE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1EC00);
  }

  return result;
}

void sub_1BC96C320()
{
  OUTLINED_FUNCTION_20_0();
  v73 = v3;
  v74 = v4;
  v68 = v5;
  HIDWORD(v64) = v6;
  v72 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08B50);
  OUTLINED_FUNCTION_14(v8);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v9);
  v66 = &v61 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0B938);
  OUTLINED_FUNCTION_2();
  v70 = v12;
  v71 = v11;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_77();
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD098E8);
  OUTLINED_FUNCTION_2();
  v67 = v14;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v15);
  v65 = &v61 - v16;
  OUTLINED_FUNCTION_13();
  sub_1BCE19260();
  OUTLINED_FUNCTION_2();
  v62 = v18;
  v63 = v17;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_2_0();
  v21 = v20 - v19;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0B940);
  OUTLINED_FUNCTION_14(v22);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_24_15();
  v24 = type metadata accessor for NSUnitTemperature.WeatherFormatUnitConfiguration(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_36_0();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08BF8);
  OUTLINED_FUNCTION_2();
  v28 = v27;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_3();
  v32 = v30 - v31;
  v34 = MEMORY[0x1EEE9AC00](v33);
  v36 = &v61 - v35;
  MEMORY[0x1EEE9AC00](v34);
  v38 = &v61 - v37;
  sub_1BC96CCEC(v74, v0);
  if (__swift_getEnumTagSinglePayload(v0, 1, v24) == 1)
  {
    sub_1BC94C05C(v0, &qword_1EBD0B940);
    sub_1BC947608(0, qword_1EDA1EFC0);
    sub_1BCE18660();
    v39 = OUTLINED_FUNCTION_36_9();
    v40(v39);
    sub_1BCE18CF0();
  }

  else
  {
    OUTLINED_FUNCTION_16_25();
    sub_1BC96D10C();
    if (*(v2 + *(v24 + 20)))
    {
      v47 = *(v28 + 16);
      v47(v36, v2, v26);
      (*(v28 + 32))(v38, v36, v26);
      OUTLINED_FUNCTION_0_57();
      sub_1BC969FDC(v2, v48);
      v49 = OUTLINED_FUNCTION_36_9();
      (v47)(v49);
      sub_1BC947608(0, qword_1EDA1EFC0);
      sub_1BCE18CF0();
    }

    else
    {
      sub_1BC947608(0, qword_1EDA1EFC0);
      if ((v64 & 0x100000000) != 0)
      {
        sub_1BCE18650();
      }

      else
      {
        sub_1BCE18660();
      }

      (*(v28 + 32))(v38, v36, v26);
      sub_1BCE19270();
      sub_1BCE191C0();
      (*(v62 + 8))(v21, v63);
      OUTLINED_FUNCTION_0_57();
      sub_1BC969FDC(v2, v50);
      v51 = OUTLINED_FUNCTION_36_9();
      v52(v51);
      sub_1BCE18CF0();
    }
  }

  v53 = v66;
  sub_1BC96A7B4(v68, v74, v41, v42, v43, v44, v45, v46, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08288);
  OUTLINED_FUNCTION_60();
  __swift_storeEnumTagSinglePayload(v54, v55, v56, v57);
  sub_1BCE18520();
  sub_1BC94C05C(v53, &qword_1EBD08B50);
  (*(v70 + 8))(v1, v71);
  v58 = *(v28 + 8);
  v58(v32, v26);
  sub_1BCE18620();
  v59 = OUTLINED_FUNCTION_25_0();
  v60(v59);
  v58(v38, v26);
  OUTLINED_FUNCTION_21();
}

void sub_1BC96C8FC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_1BCE1A6F0();
  OUTLINED_FUNCTION_1();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    sub_1BCE19060();
    OUTLINED_FUNCTION_1();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      sub_1BCE199D0();
      OUTLINED_FUNCTION_1();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[6];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07860);
        OUTLINED_FUNCTION_1();
        if (*(v18 + 84) == a3)
        {
          v10 = v17;
          v14 = a4[7];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07870);
          OUTLINED_FUNCTION_1();
          if (*(v20 + 84) == a3)
          {
            v10 = v19;
            v14 = a4[11];
          }

          else
          {
            if (a3 == 0x7FFFFFFF)
            {
              *(a1 + a4[12]) = (a2 - 1);
              return;
            }

            v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07868);
            v14 = a4[14];
          }
        }
      }
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_1BC96CAFC(uint64_t a1, uint64_t a2, int *a3)
{
  sub_1BCE1A6F0();
  OUTLINED_FUNCTION_1();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_17:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  sub_1BCE19060();
  OUTLINED_FUNCTION_1();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v12 = a3[5];
LABEL_16:
    v9 = a1 + v12;
    goto LABEL_17;
  }

  sub_1BCE199D0();
  OUTLINED_FUNCTION_1();
  if (*(v14 + 84) == a2)
  {
    v8 = v13;
    v12 = a3[6];
    goto LABEL_16;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07860);
  OUTLINED_FUNCTION_1();
  if (*(v16 + 84) == a2)
  {
    v8 = v15;
    v12 = a3[7];
    goto LABEL_16;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07870);
  OUTLINED_FUNCTION_1();
  if (*(v18 + 84) == a2)
  {
    v8 = v17;
    v12 = a3[11];
    goto LABEL_16;
  }

  if (a2 != 0x7FFFFFFF)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07868);
    v12 = a3[14];
    goto LABEL_16;
  }

  v19 = *(a1 + a3[12]);
  if (v19 >= 0xFFFFFFFF)
  {
    LODWORD(v19) = -1;
  }

  return (v19 + 1);
}

uint64_t sub_1BC96CCEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for NSUnitTemperature.WeatherFormatComponent(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v22 - v9;
  v11 = 1 << *(a1 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a1 + 56);
  v14 = (v11 + 63) >> 6;

  v16 = 0;
  if (v13)
  {
    while (1)
    {
      v17 = v16;
LABEL_8:
      sub_1BC96D168(*(a1 + 48) + *(v5 + 72) * (__clz(__rbit64(v13)) | (v17 << 6)), v10);
      sub_1BC96D10C();
      v18 = type metadata accessor for NSUnitTemperature.WeatherFormatUnitConfiguration(0);
      if (__swift_getEnumTagSinglePayload(v8, 1, v18) != 1)
      {
        break;
      }

      v13 &= v13 - 1;
      result = sub_1BC969FDC(v8, type metadata accessor for NSUnitTemperature.WeatherFormatComponent);
      v16 = v17;
      if (!v13)
      {
        goto LABEL_5;
      }
    }

    sub_1BC96D10C();
    v20 = a2;
    v21 = 0;
    v19 = v18;
    return __swift_storeEnumTagSinglePayload(v20, v21, 1, v19);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v17 >= v14)
      {

        v19 = type metadata accessor for NSUnitTemperature.WeatherFormatUnitConfiguration(0);
        v20 = a2;
        v21 = 1;
        return __swift_storeEnumTagSinglePayload(v20, v21, 1, v19);
      }

      v13 = *(a1 + 56 + 8 * v17);
      ++v16;
      if (v13)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t UIApplication.expectedWindow.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = UIApplication.maybeWindow.getter();
  if (v2)
  {
    v3 = v2;
    result = sub_1BC947608(0, &qword_1EDA16828);
    a1[3] = result;
    a1[4] = &protocol witness table for UIWindow;
    *a1 = v3;
  }

  else
  {
    if (qword_1EBD070D0 != -1)
    {
      swift_once();
    }

    v5 = sub_1BCE1ACC0();
    __swift_project_value_buffer(v5, qword_1EBD09510);
    v6 = sub_1BCE1ACA0();
    v7 = sub_1BCE1D8B0();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1BC940000, v6, v7, "expected a window, but don't have one. returning fallback", v8, 2u);
      MEMORY[0x1BFB31B10](v8, -1, -1);
    }

    if (qword_1EBD073D0 != -1)
    {
      swift_once();
    }

    memcpy(__dst, &xmmword_1EBD0E978, sizeof(__dst));
    a1[3] = &type metadata for Window;
    a1[4] = &protocol witness table for Window;
    v9 = swift_allocObject();
    *a1 = v9;
    memcpy((v9 + 16), &xmmword_1EBD0E978, 0x70uLL);
    return sub_1BCC6F5D4(__dst, &v10);
  }

  return result;
}

uint64_t sub_1BC96D0D4()
{

  return MEMORY[0x1EEE6BDD0](v0, 128, 7);
}

uint64_t sub_1BC96D10C()
{
  OUTLINED_FUNCTION_9();
  v2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 32))(v0, v1);
  return v0;
}

uint64_t sub_1BC96D168(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NSUnitTemperature.WeatherFormatComponent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_35_7(uint64_t a1, float64x2_t a2, float64x2_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13)
{
  *(a1 + 16) = a13;
  *(a1 + 32) = vcvt_hight_f32_f64(vcvt_f32_f64(a3), a2);

  return sub_1BC9A79F0();
}

uint64_t OUTLINED_FUNCTION_35_8()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_35_9()
{
  v3 = *(v0 + 624);

  return sub_1BCC85C64(v1, v3);
}

uint64_t OUTLINED_FUNCTION_35_13(double a1, double a2, double a3, double a4)
{
  *&STACK[0x3B0] = a1;
  *&STACK[0x3A8] = a2;
  *&STACK[0x3A0] = a3;
  *&STACK[0x398] = a4;
}

uint64_t OUTLINED_FUNCTION_35_14()
{

  return sub_1BCE1DD00();
}

void sub_1BC96D35C()
{
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_66_0();
  v5 = type metadata accessor for NSUnitTemperature.WeatherFormatUnitConfiguration(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_0();
  v34 = v8 - v7;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08BF0);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_37();
  v10 = type metadata accessor for NSUnitTemperature.WeatherFormatComponent(0);
  v11 = OUTLINED_FUNCTION_11_2(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_54();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_16_0();
  if (!*(v0 + 16))
  {
    goto LABEL_20;
  }

  sub_1BCE1E100();
  NSUnitTemperature.WeatherFormatComponent.hash(into:)();
  sub_1BCE1E150();
  v13 = v0 + 56;
  OUTLINED_FUNCTION_26_4();
  OUTLINED_FUNCTION_59();
  if (((*(v0 + 56 + v15) >> v1) & 1) == 0)
  {
    goto LABEL_20;
  }

  v35 = ~v14;
  while (1)
  {
    v16 = v0;
    OUTLINED_FUNCTION_21_8();
    sub_1BC96DDD0();
    v17 = *(v36 + 48);
    OUTLINED_FUNCTION_87();
    sub_1BC96DDD0();
    sub_1BC96DDD0();
    OUTLINED_FUNCTION_29_0(v2, 1, v5);
    if (v19)
    {
      OUTLINED_FUNCTION_3_27();
      sub_1BC96DF88(v4, v18);
      OUTLINED_FUNCTION_29_0(v2 + v17, 1, v5);
      if (v19)
      {
        goto LABEL_21;
      }

      goto LABEL_12;
    }

    OUTLINED_FUNCTION_22_5();
    sub_1BC96DDD0();
    OUTLINED_FUNCTION_29_0(v2 + v17, 1, v5);
    if (!v19)
    {
      break;
    }

    OUTLINED_FUNCTION_3_27();
    sub_1BC96DF88(v4, v20);
    OUTLINED_FUNCTION_2_20();
    sub_1BC96DF88(v3, v21);
LABEL_12:
    sub_1BC94C05C(v2, &qword_1EBD08BF0);
    v0 = v16;
LABEL_19:
    v1 = (v1 + 1) & v35;
    if (((*(v13 + ((v1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v1) & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  OUTLINED_FUNCTION_20_8();
  sub_1BC979B4C();
  sub_1BC947608(0, qword_1EDA1EFC0);
  v22 = sub_1BCE18640();
  OUTLINED_FUNCTION_3_27();
  sub_1BC96DF88(v4, v23);
  if ((v22 & 1) == 0)
  {
    OUTLINED_FUNCTION_2_20();
    sub_1BC96DF88(v34, v29);
    v0 = v16;
LABEL_18:
    OUTLINED_FUNCTION_2_20();
    sub_1BC96DF88(v3, v30);
    OUTLINED_FUNCTION_3_27();
    sub_1BC96DF88(v2, v31);
    goto LABEL_19;
  }

  v24 = *(v5 + 20);
  v25 = *(v3 + v24);
  v26 = *(v34 + v24);
  OUTLINED_FUNCTION_2_20();
  sub_1BC96DF88(v27, v28);
  v19 = v25 == v26;
  v0 = v16;
  if (!v19)
  {
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_2_20();
  sub_1BC96DF88(v3, v32);
LABEL_21:
  OUTLINED_FUNCTION_3_27();
  sub_1BC96DF88(v2, v33);
LABEL_20:
  OUTLINED_FUNCTION_21();
}

unint64_t OUTLINED_FUNCTION_73_3()
{
  v4 = (v0 + *(v1 + 40));
  v5 = v4[1];
  v6 = v4[2];
  v7 = v4[3];
  *(v2 - 112) = *v4;
  *(v2 - 104) = v5;
  *(v2 - 96) = v6;
  *(v2 - 88) = v7;
  *(v2 - 65) = 6;

  return sub_1BCD8EAE4();
}

char *MicaBackgroundAnimation.__allocating_init(windowBounds:)()
{
  OUTLINED_FUNCTION_1_68();
  v1 = objc_allocWithZone(v0);
  OUTLINED_FUNCTION_11_3();
  return MicaBackgroundAnimation.init(windowBounds:mode:)(v2);
}

void NSUnitTemperature.WeatherFormatComponent.hash(into:)()
{
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_56_3();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_2_0();
  v4 = v3 - v2;
  v5 = type metadata accessor for NSUnitTemperature.WeatherFormatComponent(0);
  v6 = OUTLINED_FUNCTION_14(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_24_15();
  sub_1BC96D168(v0, v0);
  OUTLINED_FUNCTION_6(v0);
  if (v7)
  {
    MEMORY[0x1BFB30850](0);
  }

  else
  {
    sub_1BC96D10C();
    MEMORY[0x1BFB30850](1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08BF8);
    OUTLINED_FUNCTION_10_0();
    sub_1BC957184(v8, &qword_1EBD08BF8);
    sub_1BCE1D190();
    sub_1BCE1E120();
    sub_1BC969FDC(v4, type metadata accessor for NSUnitTemperature.WeatherFormatUnitConfiguration);
  }

  OUTLINED_FUNCTION_18_8();
}

char *MicaBackgroundAnimation.init(windowBounds:mode:)(char *a1)
{
  v4 = v1;
  OUTLINED_FUNCTION_1_68();
  ObjectType = swift_getObjectType();
  v6 = sub_1BCE1A7E0();
  MEMORY[0x1EEE9AC00](v6);
  v7 = *a1;
  MicaLayer.init(layer:)([objc_allocWithZone(MEMORY[0x1E6979398]) init], &v1[OBJC_IVAR____TtC9WeatherUI23MicaBackgroundAnimation_rootMicaLayer]);
  v8 = OBJC_IVAR____TtC9WeatherUI23MicaBackgroundAnimation_rotationLayer;
  *&v1[v8] = [objc_allocWithZone(MEMORY[0x1E6979398]) init];
  v9 = OBJC_IVAR____TtC9WeatherUI23MicaBackgroundAnimation_scaleLayer;
  *&v1[v9] = [objc_allocWithZone(MEMORY[0x1E6979398]) init];
  *&v1[OBJC_IVAR____TtC9WeatherUI23MicaBackgroundAnimation_timeStep] = 0x4056800000000000;
  *&v1[OBJC_IVAR____TtC9WeatherUI23MicaBackgroundAnimation_randomSpeedVariance] = 0x3FBEB851EB851EB8;
  v1[OBJC_IVAR____TtC9WeatherUI23MicaBackgroundAnimation_stateName] = 0;
  *&v1[OBJC_IVAR____TtC9WeatherUI23MicaBackgroundAnimation_posterRotationAngle] = 0;
  *&v1[OBJC_IVAR____TtC9WeatherUI23MicaBackgroundAnimation_posterOrientation] = 1;
  v1[OBJC_IVAR____TtC9WeatherUI23MicaBackgroundAnimation_isAnimating] = 0;
  v1[OBJC_IVAR____TtC9WeatherUI23MicaBackgroundAnimation_isActive] = 0;
  *&v1[OBJC_IVAR____TtC9WeatherUI23MicaBackgroundAnimation_scale] = 0x3FF0000000000000;
  v10 = [objc_allocWithZone(MEMORY[0x1E6979398]) init];
  *&v1[OBJC_IVAR____TtC9WeatherUI23MicaBackgroundAnimation_layer] = v10;
  *(swift_allocObject() + 16) = v10;
  *&v33.m11 = MEMORY[0x1E69E7CC0];
  sub_1BC96DF30();
  v31 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD0C510);
  sub_1BC96DFE0();
  sub_1BCE1DC30();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0C520);
  swift_allocObject();
  v11 = sub_1BCE1A940();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0C528);
  swift_allocObject();
  v12 = sub_1BC96E294(v11);
  v13 = &v4[OBJC_IVAR____TtC9WeatherUI23MicaBackgroundAnimation_playbackCoordinator];
  *v13 = v12;
  v13[1] = &protocol witness table for WeatherConditionPlaybackCoordinator<A>;
  v14 = OUTLINED_FUNCTION_11_3();
  sub_1BC96E300(v14, v15, v16, v17);
  *&v4[OBJC_IVAR____TtC9WeatherUI23MicaBackgroundAnimation_displayScale] = v18;
  v4[OBJC_IVAR____TtC9WeatherUI23MicaBackgroundAnimation_mode] = v7;
  v34.receiver = v4;
  v34.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v34, sel_init);
  v20 = OBJC_IVAR____TtC9WeatherUI23MicaBackgroundAnimation_layer;
  OUTLINED_FUNCTION_12();
  v21 = *&v19[v20];
  v22 = v19;
  [v21 setAnchorPoint_];
  v23 = OBJC_IVAR____TtC9WeatherUI23MicaBackgroundAnimation_displayScale;
  [*&v19[v20] setFrame_];
  [*&v19[v20] setMasksToBounds_];
  [*&v19[v20] setDelegate_];
  v24 = OBJC_IVAR____TtC9WeatherUI23MicaBackgroundAnimation_rotationLayer;
  [*&v22[OBJC_IVAR____TtC9WeatherUI23MicaBackgroundAnimation_rotationLayer] &selRef_reset + 7];
  v25 = *&v22[v24];
  [v31 frame];
  [v25 &selRef_projectionType];

  [*&v22[v24] setDelegate_];
  v26 = OBJC_IVAR____TtC9WeatherUI23MicaBackgroundAnimation_scaleLayer;
  [*&v22[OBJC_IVAR____TtC9WeatherUI23MicaBackgroundAnimation_scaleLayer] setAnchorPoint_];
  v27 = *&v22[v26];
  [v31 frame];
  [v27 setFrame_];

  [*&v22[v26] setDelegate_];
  v28 = 1.0 / *&v22[v23];
  v29 = *&v19[v20];
  CATransform3DMakeScale(&v33, v28, v28, 1.0);
  [v29 setTransform_];

  [v31 addSublayer_];
  [*&v22[v24] addSublayer_];

  return v22;
}

uint64_t sub_1BC96DD98()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BC96DDD0()
{
  OUTLINED_FUNCTION_9();
  v1(0);
  OUTLINED_FUNCTION_4();
  v2 = OUTLINED_FUNCTION_10_1();
  v3(v2);
  return v0;
}

uint64_t OUTLINED_FUNCTION_59_3()
{

  return swift_unknownObjectRelease();
}

uint64_t OUTLINED_FUNCTION_59_4(double a1, double a2, double a3, double a4)
{
  *&STACK[0x408] = a1;
  *&STACK[0x400] = a2;
  *&STACK[0x3F8] = a3;
  *&STACK[0x3F0] = a4;
}

id MicaLayer.init(layer:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = [objc_allocWithZone(MEMORY[0x1E69794D0]) initWithLayer_];
  if (result)
  {
    *a2 = a1;
    a2[1] = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1BC96DF30()
{
  result = qword_1EDA1EAD8;
  if (!qword_1EDA1EAD8)
  {
    sub_1BCE1A7E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1EAD8);
  }

  return result;
}

uint64_t sub_1BC96DF88(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1BC96DFE0()
{
  result = qword_1EDA1C248;
  if (!qword_1EDA1C248)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD0C510);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1C248);
  }

  return result;
}

uint64_t Date.shortDayOfWeek(timeZone:isStandalone:)(uint64_t a1, char a2)
{
  v2 = sub_1BC96E0D0(a2);
  OUTLINED_FUNCTION_6_2();
  v3 = sub_1BC9600B0();

  return v3;
}

uint64_t sub_1BC96E0D0(char a1)
{
  sub_1BCE19260();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_105_0();
  v4 = sub_1BCE19280();
  OUTLINED_FUNCTION_2();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_50();
  if (a1 & 1) != 0 || (sub_1BCE191B0(), sub_1BCE19270(), (*(v6 + 8))(v1, v4), v8 = sub_1BCE19240(), v9 = OUTLINED_FUNCTION_40(), v10(v9), (v8))
  {
    if (qword_1EDA1EBE0 != -1)
    {
      swift_once();
    }

    v11 = &qword_1EDA2F008;
  }

  else
  {
    if (qword_1EDA1EF48 != -1)
    {
      OUTLINED_FUNCTION_15_22();
    }

    v11 = &qword_1EDA2F030;
  }

  v12 = *v11;

  return OUTLINED_FUNCTION_6_2();
}

uint64_t sub_1BC96E294(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 40) = 0;
  *(v1 + 48) = sub_1BC94E4FC();
  *(v1 + 24) = a1;
  *(v1 + 32) = 1;
  return v1;
}

uint64_t OUTLINED_FUNCTION_108_0()
{

  return sub_1BC94C05C(v1, v0);
}

void sub_1BC96E300(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v8 = [objc_opt_self() mainScreen];
  [v8 scale];
  v10 = v9;

  if (v10 != 4.0 && v10 == 3.0)
  {
    v11.origin.x = a1;
    v11.origin.y = a2;
    v11.size.width = a3;
    v11.size.height = a4;
    CGRectGetHeight(v11);
  }
}

uint64_t OUTLINED_FUNCTION_112_0()
{

  return sub_1BCE19060();
}

uint64_t OUTLINED_FUNCTION_112_1()
{

  return sub_1BCE1CAE0();
}

uint64_t OUTLINED_FUNCTION_112_2()
{
  *(v0 - 112) = 1;

  return sub_1BCE19470();
}

id MicaBackgroundAnimation.action(for:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = [objc_opt_self() currentDevice];
  v8 = [v7 userInterfaceIdiom];

  if (v8)
  {
    sub_1BC947608(0, &qword_1EDA1C0B8);
    v9 = *(v3 + OBJC_IVAR____TtC9WeatherUI23MicaBackgroundAnimation_rootMicaLayer);
    v10 = sub_1BCE1DAC0();

    if ((v10 & 1) != 0 && *(v4 + OBJC_IVAR____TtC9WeatherUI23MicaBackgroundAnimation_isAnimating) == 1)
    {
      v11 = a2 == 0x6E6F697469736F70 && a3 == 0xE800000000000000;
      if (v11 || (sub_1BCE1E090() & 1) != 0)
      {
        if (*(v4 + OBJC_IVAR____TtC9WeatherUI23MicaBackgroundAnimation_stateName) == 1)
        {

          return 0;
        }

        v12 = sub_1BCE1E090();

        if (v12)
        {
          return 0;
        }
      }

      v13 = a2 == 0x726F66736E617274 && a3 == 0xE90000000000006DLL;
      if (v13 || (sub_1BCE1E090() & 1) != 0)
      {
        return 0;
      }
    }
  }

  return [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
}

__n128 AnimatedLinearGradient.init(gradient:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  v2 = a1[1].n128_u8[0];
  result = *a1;
  *a2 = *a1;
  a2[1].n128_u8[0] = v2;
  return result;
}

uint64_t sub_1BC96E6CC(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

BOOL TemperatureDifferenceThresholdDetector.areTemperaturesSignificantlyDifferent(_:_:threshold:thresholdUnit:)(double a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07CA8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  sub_1BCE18680();
  sub_1BCE185E0();
  v10 = v9;
  v11 = *(v3 + 8);
  v11(v8, v2);
  sub_1BCE18680();
  sub_1BCE185E0();
  v13 = v12;
  v11(v5, v2);
  return vabdd_f64(v10, v13) >= a1;
}

uint64_t Measurement.rounded.getter()
{
  sub_1BCE185E0();
  sub_1BCE185C0();

  return sub_1BCE185D0();
}

uint64_t StringBuilder.makeString(for:data:formattedForAccessibility:)(uint64_t a1, uint64_t a2, char a3)
{
  OUTLINED_FUNCTION_2_54();
  OUTLINED_FUNCTION_2_54();
  type metadata accessor for AnyRule();
  sub_1BCE1D5D0();

  OUTLINED_FUNCTION_0_53();
  sub_1BCE1D4E0();

  if (!v9)
  {
    return 0;
  }

  v6 = *(v9 + 32);

  v7 = v6(a1, a2, a3 & 1);

  return v7;
}

uint64_t sub_1BC96EA14()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BCE1B450();
}

uint64_t sub_1BC96EAE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*a1 + 16);

  LOBYTE(a2) = v5(a2, a3);

  return a2 & 1;
}

uint64_t sub_1BC96EB50(unint64_t *a1, uint64_t *a2)
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

uint64_t Measurement<>.canonicalized.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BCE19280();
  OUTLINED_FUNCTION_2();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_52();
  sub_1BCE191B0();
  sub_1BC96ECD4(a1);
  return (*(v5 + 8))(v1, v3);
}

void sub_1BC96ECD4(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07CA8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - v4;
  sub_1BCE1A3E0();
  sub_1BCE1A3A0();
  v6 = sub_1BCE1A330();

  sub_1BCE18680();
  (*(v3 + 16))(a1, v5, v2);
  sub_1BCE185E0();
  sub_1BCE185F0();
  sub_1BCE185E0();
  if (v7 == 0.0)
  {
    sub_1BCE185F0();

    (*(v3 + 8))(v5, v2);
  }

  else
  {
    (*(v3 + 8))(v5, v2);
  }
}

uint64_t AnimatedLinearGradient.body.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0C3F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0C400);
  sub_1BCCD11F8();
  sub_1BC96EB50(&qword_1EDA1B470, &qword_1EBD0C3F8);
  sub_1BC96EB50(&qword_1EDA1B4A0, &qword_1EBD0C400);
  return sub_1BCE1CEA0();
}

uint64_t sub_1BC96EF84(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3)
  {
    v8 = (*(a8 + 48))(a1, a2, a7, a8);
  }

  else
  {
    v8 = (*(a8 + 32))(a1, a2, a7, a8);
  }

  v9 = v8;
  if ((sub_1BCE1D440() & 1) == 0)
  {
    return v9;
  }

  v10 = sub_1BCC0DB14(1);
  v11 = MEMORY[0x1BFB2FA90](v10);

  return v11;
}

uint64_t DeviceIsVerySlow()
{
  if (DeviceIsVerySlow_onceToken != -1)
  {
    DeviceIsVerySlow_cold_1();
  }

  return DeviceIsVerySlow_result;
}

uint64_t __DeviceIsVerySlow_block_invoke()
{
  if (DeviceIsSlow_onceToken[0] != -1)
  {
    DeviceIsSlow_cold_1();
  }

  if (DeviceIsSlow_result == 1)
  {
    result = MGIsDeviceOneOfType();
  }

  else
  {
    result = 0;
  }

  DeviceIsVerySlow_result = result;
  return result;
}

uint64_t static NSDateFormatter.prevailingPeriodSymbols.getter()
{
  if (qword_1EDA1C150 != -1)
  {
    OUTLINED_FUNCTION_3_96();
  }

  return NSDateFormatter.periodSymbols.getter();
}

id sub_1BC96F384()
{
  result = sub_1BC96F3DC();
  qword_1EDA2EFF0 = result;
  return result;
}

uint64_t DeviceUsesWireframeOnLocationViewScroll()
{
  if (DeviceUsesWireframeOnLocationViewScroll_onceToken != -1)
  {
    DeviceUsesWireframeOnLocationViewScroll_cold_1();
  }

  return DeviceUsesWireframeOnLocationViewScroll_result;
}

id sub_1BC96F3DC()
{
  v0 = sub_1BCE19280();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  sub_1BCE19150();
  v5 = sub_1BCE19140();
  (*(v1 + 8))(v3, v0);
  [v4 setLocale_];

  return v4;
}

uint64_t NSDateFormatter.periodSymbols.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD0C550);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1BCE3E030;
  result = sub_1BC987F5C(v0, &selRef_AMSymbol);
  if (v3)
  {
    *(v1 + 32) = result;
    *(v1 + 40) = v3;
    result = sub_1BC987F5C(v0, &selRef_PMSymbol);
    if (v4)
    {
      *(v1 + 48) = result;
      *(v1 + 56) = v4;
      return v1;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t __DeviceUsesWireframeOnLocationViewScroll_block_invoke()
{
  result = MGIsDeviceOneOfType();
  DeviceUsesWireframeOnLocationViewScroll_result = result;
  return result;
}

void Date.formattedHours(timeZone:forAccessibility:)()
{
  OUTLINED_FUNCTION_20_0();
  v1 = v0;
  sub_1BCE19260();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_8_15();
  v3 = sub_1BCE19280();
  OUTLINED_FUNCTION_2();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_0();
  v9 = v8 - v7;
  if (qword_1EDA1EF50 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v10 = sub_1BC9600B0();
  v12 = v11;
  if (v1)
  {
    if (static Date.uses24HourTime()())
    {
      if (qword_1EDA1EFB0 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v13 = qword_1EDA1EFB8;
      sub_1BCE18B60();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07880);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_1BCE3E050;
      *(v14 + 56) = MEMORY[0x1E69E6158];
      *(v14 + 64) = sub_1BC9804E0();
      *(v14 + 32) = v10;
      *(v14 + 40) = v12;
      sub_1BCE1D250();
    }
  }

  else
  {
    sub_1BCE191B0();
    sub_1BCE19270();
    (*(v5 + 8))(v9, v3);
    v15 = sub_1BCE19240();
    v16 = OUTLINED_FUNCTION_16_2();
    v17(v16);
    if (v15)
    {
      sub_1BC970820();
      OUTLINED_FUNCTION_34_7();
      OUTLINED_FUNCTION_5_17();
      sub_1BCE1DB90();
    }
  }

  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_21();
}

uint64_t sub_1BC96FAA4()
{
  v4[23] = sub_1BCDB1520() & 1;
  v7 = *v0;
  v8 = *(v0 + 16);
  v5 = *(v0 + 3);
  v6 = *(v0 + 32);
  v1 = swift_allocObject();
  v2 = v0[1];
  *(v1 + 16) = *v0;
  *(v1 + 32) = v2;
  *(v1 + 48) = *(v0 + 32);
  sub_1BCDB1BE4(&v7, v4, &qword_1EBD0E2A0);
  sub_1BCDB1BE4(&v5, v4, &qword_1EBD0E2A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0E2B0);
  sub_1BC957184(&qword_1EDA1B738, &qword_1EBD0E2B0);
  sub_1BCE1C9E0();
}

uint64_t sub_1BC96FC00()
{
  sub_1BCDB1BD0(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  sub_1BCA21FC4(*(v0 + 40), *(v0 + 48));

  return MEMORY[0x1EEE6BDD0](v0, 49, 7);
}

void sub_1BC96FC48()
{
  OUTLINED_FUNCTION_20_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_1BCE1A7B0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_85_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD07D60);
  *(swift_allocObject() + 16) = xmmword_1BCE3E050;
  sub_1BCE1A7A0();
  OUTLINED_FUNCTION_10_31();
  sub_1BC95FF1C(v7, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07D70);
  OUTLINED_FUNCTION_9_29();
  sub_1BC957184(v9, &qword_1EBD07D70);
  sub_1BCE1DC30();
  sub_1BCE1A7D0();
  swift_allocObject();
  v10 = sub_1BCE1A7C0();
  v11 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  v5();

  *v3 = v11;
  *v1 = v10;
  OUTLINED_FUNCTION_21();
}

void sub_1BC96FE28(void *a1)
{
  v76 = a1;
  v69 = sub_1BCE19190();
  v60 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v58 = &v58 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09D68);
  MEMORY[0x1EEE9AC00](v65);
  v68 = &v58 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09D70);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v59 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v66 = &v58 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v67 = &v58 - v8;
  v74 = sub_1BCE190D0();
  v71 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v61 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09D78) - 8);
  MEMORY[0x1EEE9AC00](v75);
  v73 = &v58 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08B18);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v70 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v58 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v58 - v17;
  v72 = sub_1BCE19260();
  v19 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v21 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1BCE19280();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v63 = &v58 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v58 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v58 - v29;
  sub_1BCE19150();
  v31 = sub_1BCE19140();
  v32 = *(v23 + 8);
  v32(v30, v22);
  [v76 setLocale_];

  v33 = v74;
  sub_1BCE191B0();
  sub_1BCE19270();
  v64 = v22;
  v34 = v22;
  v35 = v73;
  v62 = v32;
  v32(v27, v34);
  sub_1BCE19250();
  (*(v19 + 8))(v21, v72);
  sub_1BCE190C0();
  __swift_storeEnumTagSinglePayload(v15, 0, 1, v33);
  v36 = *(v75 + 14);
  sub_1BC952ABC(v18, v35, &qword_1EBD08B18);
  sub_1BC952ABC(v15, v35 + v36, &qword_1EBD08B18);
  if (__swift_getEnumTagSinglePayload(v35, 1, v33) == 1)
  {
    sub_1BC94C05C(v15, &qword_1EBD08B18);
    sub_1BC94C05C(v18, &qword_1EBD08B18);
    if (__swift_getEnumTagSinglePayload(v35 + v36, 1, v33) == 1)
    {
      sub_1BC94C05C(v35, &qword_1EBD08B18);
LABEL_8:
      v46 = v63;
      sub_1BCE191B0();
      v47 = v67;
      sub_1BCE191A0();
      v62(v46, v64);
      v48 = v66;
      sub_1BCE19180();
      v49 = v69;
      __swift_storeEnumTagSinglePayload(v48, 0, 1, v69);
      v50 = *(v65 + 48);
      v51 = v68;
      sub_1BC952ABC(v47, v68, &qword_1EBD09D70);
      sub_1BC952ABC(v48, v51 + v50, &qword_1EBD09D70);
      if (__swift_getEnumTagSinglePayload(v51, 1, v49) == 1)
      {
        sub_1BC94C05C(v48, &qword_1EBD09D70);
        sub_1BC94C05C(v47, &qword_1EBD09D70);
        if (__swift_getEnumTagSinglePayload(v51 + v50, 1, v49) == 1)
        {
          sub_1BC94C05C(v51, &qword_1EBD09D70);
          goto LABEL_15;
        }
      }

      else
      {
        v52 = v59;
        sub_1BC952ABC(v51, v59, &qword_1EBD09D70);
        if (__swift_getEnumTagSinglePayload(v51 + v50, 1, v49) != 1)
        {
          v54 = v60;
          v55 = v51 + v50;
          v56 = v58;
          (*(v60 + 32))(v58, v55, v49);
          sub_1BC95FF1C(&qword_1EBD09D80, MEMORY[0x1E6969680]);
          sub_1BCE1D210();
          v57 = *(v54 + 8);
          v57(v56, v49);
          sub_1BC94C05C(v48, &qword_1EBD09D70);
          sub_1BC94C05C(v47, &qword_1EBD09D70);
          v57(v52, v49);
          sub_1BC94C05C(v51, &qword_1EBD09D70);
          goto LABEL_15;
        }

        sub_1BC94C05C(v48, &qword_1EBD09D70);
        sub_1BC94C05C(v47, &qword_1EBD09D70);
        (*(v60 + 8))(v52, v49);
      }

      v38 = &qword_1EBD09D68;
      v39 = v51;
LABEL_14:
      sub_1BC94C05C(v39, v38);
      goto LABEL_15;
    }

LABEL_6:
    v38 = &qword_1EBD09D78;
    v39 = v35;
    goto LABEL_14;
  }

  v37 = v70;
  sub_1BC952ABC(v35, v70, &qword_1EBD08B18);
  if (__swift_getEnumTagSinglePayload(v35 + v36, 1, v33) == 1)
  {
    sub_1BC94C05C(v15, &qword_1EBD08B18);
    sub_1BC94C05C(v18, &qword_1EBD08B18);
    (*(v71 + 8))(v37, v33);
    goto LABEL_6;
  }

  v40 = v71;
  v41 = *(v71 + 32);
  v75 = v18;
  v42 = v15;
  v43 = v61;
  v41(v61, v35 + v36, v33);
  sub_1BC95FF1C(&qword_1EDA1EF28, MEMORY[0x1E6969610]);
  v44 = sub_1BCE1D210();
  v45 = *(v40 + 8);
  v45(v43, v33);
  sub_1BC94C05C(v42, &qword_1EBD08B18);
  sub_1BC94C05C(v75, &qword_1EBD08B18);
  v45(v37, v33);
  sub_1BC94C05C(v35, &qword_1EBD08B18);
  if (v44)
  {
    goto LABEL_8;
  }

LABEL_15:
  v53 = sub_1BCE1D240();
  [v76 setLocalizedDateFormatFromTemplate_];
}

unint64_t sub_1BC970820()
{
  result = qword_1EDA1F6A8;
  if (!qword_1EDA1F6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1F6A8);
  }

  return result;
}

uint64_t sub_1BC970874()
{
  OUTLINED_FUNCTION_12_11();
  v2 = v1 & 0xFFFFFFFFFFFFLL | 0x74000000000000;
  v3 = 0xE700000000000000;
  v5 = v4;
  v6 = v2;
  switch(v5)
  {
    case 1:
      v3 = 0xE800000000000000;
      v6 = 0x7469617274726F50;
      break;
    case 2:
      v6 = 0x70616373646E614CLL;
      goto LABEL_6;
    case 3:
      v6 = 0x6469776172746C55;
LABEL_6:
      v3 = 0xE900000000000065;
      break;
    case 4:
      v3 = 0xE600000000000000;
      v6 = 0x726574736F50;
      break;
    case 5:
      v3 = 0xE500000000000000;
      v6 = 0x6863746157;
      break;
    case 6:
      v3 = 0xE600000000000000;
      v6 = 0x76656C67614DLL;
      break;
    case 7:
      v6 = OUTLINED_FUNCTION_23_2();
      v3 = 0xEA00000000006E69;
      break;
    case 8:
      v6 = OUTLINED_FUNCTION_23_2();
      v3 = 0xEA00000000007861;
      break;
    default:
      break;
  }

  v7 = 0xE700000000000000;
  switch(v0)
  {
    case 1:
      v7 = 0xE800000000000000;
      v2 = 0x7469617274726F50;
      break;
    case 2:
      v2 = 0x70616373646E614CLL;
      goto LABEL_16;
    case 3:
      v2 = 0x6469776172746C55;
LABEL_16:
      v7 = 0xE900000000000065;
      break;
    case 4:
      v7 = 0xE600000000000000;
      v2 = 0x726574736F50;
      break;
    case 5:
      v7 = 0xE500000000000000;
      v2 = 0x6863746157;
      break;
    case 6:
      v7 = 0xE600000000000000;
      v2 = 0x76656C67614DLL;
      break;
    case 7:
      OUTLINED_FUNCTION_12_11();
      v2 = v8 & 0xFFFFFFFFFFFFLL | 0x4D74000000000000;
      v7 = 0xEA00000000006E69;
      break;
    case 8:
      OUTLINED_FUNCTION_12_11();
      v2 = v9 & 0xFFFFFFFFFFFFLL | 0x4D74000000000000;
      v7 = 0xEA00000000007861;
      break;
    default:
      break;
  }

  if (v6 == v2 && v3 == v7)
  {
    v11 = 1;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_4_14();
  }

  return v11 & 1;
}

uint64_t sub_1BC970ABC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  type metadata accessor for ForegroundEffectCoordinator();
  sub_1BC95D098(&qword_1EDA18A08, type metadata accessor for ForegroundEffectCoordinator);
  sub_1BCE1B500();
  a4();
}

uint64_t sub_1BC970B70()
{
  OUTLINED_FUNCTION_9();
  v1(0);
  OUTLINED_FUNCTION_4();
  v2 = OUTLINED_FUNCTION_10_1();
  v3(v2);
  return v0;
}

void sub_1BC970BFC()
{
  v1 = *(v0 + 29);
  if (v1 == 2 || (v1 & 1) != 0)
  {
    OUTLINED_FUNCTION_5_8();
    *(v0 + 28) = 0;
    sub_1BC971130();
  }
}

uint64_t WeatherForecastDescriptionStringBuilder.buildWeatherDescription(from:hourlyForecast:dailyForecast:weatherChanges:historicalFacts:timeZone:unit:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, void *a6@<X6>, uint64_t *a7@<X8>)
{
  v8 = v7;
  v85 = a6;
  v86 = a4;
  v84 = a3;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08578);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v81 - v14;
  v87 = sub_1BCE19850();
  OUTLINED_FUNCTION_3_6();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_2_0();
  v21 = v20 - v19;
  __swift_project_boxed_opaque_existential_1(v7 + 7, v7[10]);
  v22 = sub_1BC9711F4(a1, a2);
  if (v23)
  {
    v24 = v22;
    v25 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD078E8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BCE3E050;
    *(inited + 32) = v24;
    *(inited + 40) = v25;
    *(inited + 48) = 0;
    *(inited + 56) = 0;
    *(inited + 64) = 1;

    v27 = OUTLINED_FUNCTION_0_54();
    v30 = sub_1BC97FC70(v27, v28, v29);
    v32 = v31;
    v33 = OUTLINED_FUNCTION_0_54();
    v36 = sub_1BC9807F0(v33, v34, v35);
    v38 = v37;

    swift_setDeallocating();
    result = sub_1BC9811E0();
    *a7 = v30;
    a7[1] = v32;
    a7[2] = v36;
    a7[3] = v38;
    return result;
  }

  v40 = v85;
  v82 = a7;
  v83 = a5;
  sub_1BC952B1C(v86, v15, &qword_1EBD08578);
  if (__swift_getEnumTagSinglePayload(v15, 1, v87) == 1)
  {
    sub_1BC94C05C(v15, &qword_1EBD08578);
    v41 = v40;
  }

  else
  {
    (*(v17 + 32))(v21, v15, v87);
    __swift_project_boxed_opaque_existential_1(v7 + 2, v7[5]);
    v42 = v40;
    v43 = sub_1BC9714A4(v84, v21, v83, 1, 0, v40);
    v45 = v82;
    if (v44)
    {
      v46 = v43;
      v47 = v44;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD078E8);
      v48 = swift_initStackObject();
      *(v48 + 16) = xmmword_1BCE3E050;
      *(v48 + 32) = v46;
      *(v48 + 40) = v47;
      *(v48 + 48) = 0;
      *(v48 + 56) = 0;
      *(v48 + 64) = 1;

      v49 = OUTLINED_FUNCTION_0_54();
      v52 = sub_1BC97FC70(v49, v50, v51);
      v54 = v53;
      v55 = OUTLINED_FUNCTION_0_54();
      v58 = sub_1BC9807F0(v55, v56, v57);
      v60 = v59;
      swift_setDeallocating();
      sub_1BC9811E0();

      v61 = OUTLINED_FUNCTION_6_38();
      result = v62(v61);
      *v45 = v52;
      v45[1] = v54;
      v45[2] = v58;
      v45[3] = v60;
      return result;
    }

    v63 = OUTLINED_FUNCTION_6_38();
    v64(v63);
    v41 = v42;
  }

  swift_beginAccess();
  v65 = v7[25];
  v81 = a2;
  if (v65)
  {
    sub_1BC94DE68((v7 + 22), &v88);
    v66 = v91;
    v67 = v92;
    __swift_project_boxed_opaque_existential_1(&v88, v91);
    v68 = v83;
    (*(v67 + 16))(&v93, a1, a2, v83, v41, v66, v67);
    v70 = *(&v93 + 1);
    v69 = v93;
    v72 = *(&v94 + 1);
    v71 = v94;
    __swift_destroy_boxed_opaque_existential_1(&v88);
  }

  else
  {
    v69 = 0;
    v70 = 0;
    v71 = 0;
    v72 = 0;
    v68 = v83;
  }

  v73 = v7[15];
  v74 = v7[16];
  __swift_project_boxed_opaque_existential_1(v7 + 12, v73);
  *&v93 = v69;
  *(&v93 + 1) = v70;
  *&v94 = v71;
  *(&v94 + 1) = v72;
  (*(v74 + 8))(&v88, a1, v81, &v93, v68, v73, v74);
  v75 = v89;
  if (v89)
  {
    v76 = v69;
    v78 = v90;
    v77 = v91;
    v79 = v88;
    result = sub_1BC983420(v76, v70);
    v80 = v82;
    *v82 = v79;
    v80[1] = v75;
    v80[2] = v78;
    v80[3] = v77;
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v8 + 17, v8[20]);
    v88 = v69;
    v89 = v70;
    v90 = v71;
    v91 = v72;
    v93 = 0u;
    v94 = 0u;
    sub_1BCAA54F0(a1, v81, &v88, v68, v82);
    return sub_1BC983420(v69, v70);
  }

  return result;
}

void sub_1BC971130()
{
  v1 = *(v0 + OBJC_IVAR____TtC9WeatherUI27ForegroundEffectCoordinator_displayLink);
  if (v1)
  {
    swift_beginAccess();
    if (*(v0 + 28) == 1)
    {
      v2 = v1;
      v3 = 1;
    }

    else
    {
      swift_beginAccess();
      v2 = v1;

      v3 = sub_1BC971464(v4);
    }

    [v2 setPaused_];
  }
}

uint64_t sub_1BC9711F4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1BCE199D0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BCE196D0();
  v10 = sub_1BCE19900();
  (*(v7 + 8))(v9, v6);
  v11 = 0;
  if (v10)
  {
    v12 = sub_1BCC89374(v3, a1, a2);
    v14 = v13;
    __swift_project_boxed_opaque_existential_1((v3 + 16), *(v3 + 40));
    v15 = sub_1BCBF1DF8(a1);
    v17 = v16;
    if (qword_1EDA1EFB0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v18 = qword_1EDA1EFB8;
    sub_1BCE18B60();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07880);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1BCE3E030;
    v20 = MEMORY[0x1E69E6158];
    *(v19 + 56) = MEMORY[0x1E69E6158];
    v21 = sub_1BC9804E0();
    *(v19 + 32) = v12;
    *(v19 + 40) = v14;
    *(v19 + 96) = v20;
    *(v19 + 104) = v21;
    *(v19 + 64) = v21;
    *(v19 + 72) = v15;
    *(v19 + 80) = v17;
    v11 = sub_1BCE1D250();
  }

  return v11;
}

BOOL sub_1BC971464(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v1 = sub_1BCE1DC80();
  }

  else
  {
    v1 = *(a1 + 16);
  }

  return v1 == 0;
}

uint64_t sub_1BC9714A4(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, void *a6)
{
  v290 = a5;
  v291 = a4;
  v309 = a3;
  v303 = a1;
  v285 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07BE8);
  OUTLINED_FUNCTION_2();
  v284 = v7;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_3_31(&v273 - v9);
  v282 = sub_1BCE1E060();
  OUTLINED_FUNCTION_2();
  v281 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_3_31(v12);
  v277 = sub_1BCE19260();
  OUTLINED_FUNCTION_2();
  v278 = v13;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_3_31(v15);
  v298 = sub_1BCE19280();
  OUTLINED_FUNCTION_2();
  v276 = v16;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_3_31(v18);
  v300 = sub_1BCE19BA0();
  OUTLINED_FUNCTION_2();
  v297 = v19;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x1EEE9AC00](v23);
  v299 = &v273 - v24;
  v287 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD095B0);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v25);
  v288 = &v273 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07890);
  OUTLINED_FUNCTION_14(v27);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v273 - v29;
  v31 = type metadata accessor for NSUnitTemperature.BaseWeatherFormatStyle(0);
  v32 = OUTLINED_FUNCTION_14(v31);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_5_1();
  v295 = v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07CA8);
  OUTLINED_FUNCTION_2();
  v301 = v35;
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_3_0();
  v302 = v37;
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v273 - v39;
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v273 - v42;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0BF10);
  v45 = OUTLINED_FUNCTION_14(v44);
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x1EEE9AC00](v47);
  v306 = &v273 - v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08CA8);
  OUTLINED_FUNCTION_14(v49);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v50);
  v52 = &v273 - v51;
  sub_1BCE19540();
  OUTLINED_FUNCTION_2();
  v304 = v54;
  v305 = v53;
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_5_1();
  v308 = v55;
  v56 = sub_1BCE193E0();
  OUTLINED_FUNCTION_2();
  v307 = v57;
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_5_1();
  v310 = v59;
  sub_1BCE1A3E0();
  v60 = sub_1BCE1A3A0();
  if (a6)
  {
    sub_1BCE1A550();
    swift_allocObject();
    v61 = a6;
    v62 = sub_1BCE1A540();

    v293 = MEMORY[0x1E69E1770];
    v311 = v62;
  }

  else
  {
    v311 = v60;
    v293 = MEMORY[0x1E69E1768];
  }

  v63 = v310;
  sub_1BCE192A0();
  v64 = sub_1BCE19840();
  if (!*(v64 + 16))
  {
    swift_unknownObjectRelease();

    v66 = 0;
    goto LABEL_8;
  }

  v292 = v56;
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_34_10();
  sub_1BC994C58();
  v65 = v305;
  if (__swift_getEnumTagSinglePayload(v52, 1, v305) != 1)
  {
    v68 = v308;
    (*(v304 + 32))(v308, v52, v65);
    v274 = sub_1BCCADD70(v309, v68);
    v309 = v69;
    MEMORY[0x1EEE9AC00](v274);
    OUTLINED_FUNCTION_34_10();
    sub_1BCAD0F58();

    sub_1BCE194C0();
    v70 = [objc_opt_self() fahrenheit];
    sub_1BCE18680();

    v71 = *(v301 + 8);
    v71(v40, v34);
    sub_1BCE185E0();
    v73 = v72;
    v275 = v71;
    v71(v43, v34);
    v74 = v302;
    sub_1BCE194C0();
    static Set<>.full.getter();
    __swift_storeEnumTagSinglePayload(v30, 1, 1, v298);
    v75 = v295;
    static WeatherFormatStyle<>.weather(_:locale:)();

    sub_1BC94F81C(v30, &qword_1EBD07890);
    swift_getObjectType();
    v76 = sub_1BCE1A420();
    v77 = [v76 symbol];

    v78 = sub_1BCE1D280();
    v80 = v79;

    sub_1BC97F790();
    if (v82)
    {
      v83 = v81;
      v303 = v82;
    }

    else
    {
      LOBYTE(v312) = 0;
      sub_1BC967B28();
      v85 = v84;
      v86 = v74;
      v88 = v87;
      if (qword_1EDA1F638 != -1)
      {
        swift_once();
      }

      v89 = v288;
      (*(v301 + 16))(v288, v86, v34);
      v90 = v287;
      sub_1BC97FBF0(v75, v89 + *(v287 + 44));
      *(v89 + *(v90 + 48)) = 0;
      v91 = (v89 + *(v90 + 52));
      *v91 = v78;
      v91[1] = v80;
      v83 = v85;
      v303 = v88;
      sub_1BC97FC54();
      sub_1BC94F81C(v89, &qword_1EBD095B0);
      v74 = v302;
    }

    v92 = v306;
    sub_1BCA2AB28(v75);
    v275(v74, v34);
    v93 = v299;
    sub_1BCE19490();
    v94 = v294;
    sub_1BCCAEA24(v92, v294);
    v95 = sub_1BCE19830();
    if (__swift_getEnumTagSinglePayload(v94, 1, v95) == 1)
    {
      sub_1BC94F81C(v94, &qword_1EBD0BF10);
      v96 = 0;
    }

    else
    {
      v97 = sub_1BCE19800();
      OUTLINED_FUNCTION_3_2();
      (*(v98 + 8))(v94, v95);
      v96 = MEMORY[0x1BFB2BF60](v97, 0);
    }

    v99 = v296;
    sub_1BCCAEA24(v92, v296);
    if (__swift_getEnumTagSinglePayload(v99, 1, v95) == 1)
    {
      sub_1BC94F81C(v99, &qword_1EBD0BF10);
      v100 = 0;
      if (v96)
      {
        v101 = 1;
        goto LABEL_22;
      }
    }

    else
    {
      v102 = sub_1BCE19800();
      OUTLINED_FUNCTION_3_2();
      (*(v103 + 8))(v99, v95);
      v101 = 1;
      v100 = MEMORY[0x1BFB2BF60](v102, 1);
      if (v96)
      {
        goto LABEL_22;
      }
    }

    v101 = v100;
LABEL_22:
    v104 = sub_1BCCAE688(v92);
    v105 = v104;
    v106 = MEMORY[0x1E6984DC8];
    if (v101)
    {
      if (v100 & v104)
      {
        v107 = MEMORY[0x1E6984DC0];

        v108 = OUTLINED_FUNCTION_36_11(40.0);
        if (v109)
        {
          v110 = v297;
          v111 = *(v297 + 104);
          v112 = v279;
          v113 = v300;
          v111(v279, *v106, v300, v108);
          v114 = sub_1BCA68720(v93, v112);
          v115 = *(v110 + 8);
          v115(v112, v113);
          if (v114)
          {
            OUTLINED_FUNCTION_19_24();
            if (v116)
            {
              OUTLINED_FUNCTION_5_51();
              sub_1BCE191B0();
              OUTLINED_FUNCTION_12_40();
              v117 = OUTLINED_FUNCTION_2_71();
              v118(v117);
              sub_1BCE191F0();
              v119 = OUTLINED_FUNCTION_1_64();
              v120(v119);
              v121 = v306;
              OUTLINED_FUNCTION_31_13();
              if ((v114 & 1) == 0)
              {
                if (v291)
                {
                  OUTLINED_FUNCTION_9_42();
                  if (!v122)
                  {
                    OUTLINED_FUNCTION_0();
                  }
                }

                else
                {
                  OUTLINED_FUNCTION_9_42();
                  if (!v122)
                  {
                    OUTLINED_FUNCTION_0();
                  }
                }

                goto LABEL_341;
              }

              if (v291)
              {
                OUTLINED_FUNCTION_9_42();
                if (!v122)
                {
                  OUTLINED_FUNCTION_0();
                }
              }

              else
              {
                OUTLINED_FUNCTION_9_42();
                if (!v122)
                {
                  OUTLINED_FUNCTION_0();
                }
              }
            }

            else
            {
              v121 = v306;
              OUTLINED_FUNCTION_14_26();
              OUTLINED_FUNCTION_31_13();
              if (v193)
              {
                OUTLINED_FUNCTION_9_42();
                if (!v122)
                {
                  OUTLINED_FUNCTION_0();
                }
              }

              else
              {
                OUTLINED_FUNCTION_9_42();
                if (!v122)
                {
                  OUTLINED_FUNCTION_0();
                }
              }
            }
          }

          else
          {
            (v111)(v112, *v107, v113);
            v169 = sub_1BCA68720(v93, v112);
            v115(v112, v113);
            if (v169)
            {
              v121 = v306;
              OUTLINED_FUNCTION_19_24();
              OUTLINED_FUNCTION_31_13();
              if (v170)
              {
                OUTLINED_FUNCTION_5_51();
                sub_1BCE191B0();
                OUTLINED_FUNCTION_12_40();
                v171 = OUTLINED_FUNCTION_2_71();
                v172(v171);
                sub_1BCE191F0();
                v173 = OUTLINED_FUNCTION_1_64();
                v174(v173);
                if ((v169 & 1) == 0)
                {
                  if (v291)
                  {
                    OUTLINED_FUNCTION_9_42();
                    if (!v122)
                    {
                      OUTLINED_FUNCTION_0();
                    }
                  }

                  else
                  {
                    OUTLINED_FUNCTION_9_42();
                    if (!v122)
                    {
                      OUTLINED_FUNCTION_0();
                    }
                  }

                  goto LABEL_341;
                }

                if (v291)
                {
                  OUTLINED_FUNCTION_9_42();
                  if (!v122)
                  {
                    OUTLINED_FUNCTION_0();
                  }
                }

                else
                {
                  OUTLINED_FUNCTION_9_42();
                  if (!v122)
                  {
                    OUTLINED_FUNCTION_0();
                  }
                }
              }

              else
              {
                OUTLINED_FUNCTION_14_26();
                if (v224)
                {
                  OUTLINED_FUNCTION_9_42();
                  if (!v122)
                  {
                    OUTLINED_FUNCTION_0();
                  }
                }

                else
                {
                  OUTLINED_FUNCTION_9_42();
                  if (!v122)
                  {
                    OUTLINED_FUNCTION_0();
                  }
                }
              }
            }

            else
            {
              v121 = v306;
              OUTLINED_FUNCTION_19_24();
              OUTLINED_FUNCTION_31_13();
              if (v206)
              {
                OUTLINED_FUNCTION_5_51();
                sub_1BCE191B0();
                OUTLINED_FUNCTION_12_40();
                v207 = OUTLINED_FUNCTION_2_71();
                v208(v207);
                sub_1BCE191F0();
                v209 = OUTLINED_FUNCTION_1_64();
                v210(v209);
                if ((v169 & 1) == 0)
                {
                  if ((v291 & 1) == 0)
                  {
                    if (qword_1EDA1EFB0 != -1)
                    {
                      OUTLINED_FUNCTION_0();
                    }

                    OUTLINED_FUNCTION_4_56();
                    v248 = qword_1EDA1EFB8;
                    goto LABEL_342;
                  }

                  if (qword_1EDA1EFB0 == -1)
                  {
                    goto LABEL_341;
                  }

                  goto LABEL_281;
                }

                OUTLINED_FUNCTION_14_26();
                if (v211)
                {
                  OUTLINED_FUNCTION_9_42();
                  if (!v122)
                  {
                    OUTLINED_FUNCTION_0();
                  }
                }

                else
                {
                  OUTLINED_FUNCTION_9_42();
                  if (!v122)
                  {
                    OUTLINED_FUNCTION_0();
                  }
                }
              }

              else
              {
                OUTLINED_FUNCTION_14_26();
                if (v238)
                {
                  OUTLINED_FUNCTION_9_42();
                  if (!v122)
                  {
                    OUTLINED_FUNCTION_0();
                  }
                }

                else
                {
                  OUTLINED_FUNCTION_9_42();
                  if (!v122)
                  {
                    OUTLINED_FUNCTION_0();
                  }
                }
              }
            }
          }

LABEL_254:
          v248 = &qword_1EDA1EFB8;
          OUTLINED_FUNCTION_4_56();
          OUTLINED_FUNCTION_9_4(qword_1EDA1EFB8);
          OUTLINED_FUNCTION_10_42();
LABEL_342:
          OUTLINED_FUNCTION_7();
          OUTLINED_FUNCTION_13_1();
          v255 = sub_1BCE18B60();

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07880);
          v256 = swift_allocObject();
          *(v256 + 16) = xmmword_1BCE3E050;
          v66 = OUTLINED_FUNCTION_30_13(v255);
          v258 = v257;

          *(v256 + 56) = MEMORY[0x1E69E6158];
          *(v256 + 64) = sub_1BC9804E0();
          *(v256 + 32) = v66;
          *(v256 + 40) = v258;
          sub_1BCE1D250();
          OUTLINED_FUNCTION_24_18();

          (*(v110 + 8))(v93, v113);
          goto LABEL_343;
        }

        v110 = v297;
        if (v73 < 75.0)
        {
          v156 = v279;
          v113 = v300;
          (*(v297 + 104))(v279, *v107, v300);
          sub_1BCA68720(v93, v156);
          v157 = OUTLINED_FUNCTION_27_10();
          v158(v157);
          v121 = v306;
          if (v96)
          {
            if (v290)
            {
              OUTLINED_FUNCTION_5_51();
              sub_1BCE191B0();
              OUTLINED_FUNCTION_12_40();
              v159 = OUTLINED_FUNCTION_2_71();
              v160(v159);
              sub_1BCE191F0();
              v161 = OUTLINED_FUNCTION_1_64();
              v162(v161);
              if ((v96 & 1) == 0)
              {
                if (v291)
                {
                  OUTLINED_FUNCTION_9_42();
                  if (!v122)
                  {
                    OUTLINED_FUNCTION_0();
                  }

                  goto LABEL_341;
                }

                OUTLINED_FUNCTION_9_42();
                if (v122)
                {
LABEL_341:
                  OUTLINED_FUNCTION_4_56();
                  v248 = OUTLINED_FUNCTION_9_4(qword_1EDA1EFB8);
                  OUTLINED_FUNCTION_13_34();
                  goto LABEL_342;
                }

LABEL_281:
                OUTLINED_FUNCTION_0();
                goto LABEL_341;
              }

              goto LABEL_151;
            }

LABEL_155:
            OUTLINED_FUNCTION_14_26();
            if (v218)
            {
              OUTLINED_FUNCTION_9_42();
              if (!v122)
              {
                OUTLINED_FUNCTION_0();
              }
            }

            else
            {
              OUTLINED_FUNCTION_9_42();
              if (!v122)
              {
                OUTLINED_FUNCTION_0();
              }
            }

            goto LABEL_254;
          }

          if (v290)
          {
            OUTLINED_FUNCTION_5_51();
            sub_1BCE191B0();
            OUTLINED_FUNCTION_12_40();
            v196 = OUTLINED_FUNCTION_2_71();
            v197(v196);
            sub_1BCE191F0();
            v198 = OUTLINED_FUNCTION_1_64();
            v199(v198);
            if ((v96 & 1) == 0)
            {
              if (v291)
              {
                OUTLINED_FUNCTION_9_42();
                if (!v122)
                {
                  OUTLINED_FUNCTION_0();
                }
              }

              else
              {
                OUTLINED_FUNCTION_9_42();
                if (!v122)
                {
                  OUTLINED_FUNCTION_0();
                }
              }

              goto LABEL_341;
            }

            goto LABEL_207;
          }

          goto LABEL_211;
        }

        v113 = v300;
        v121 = v306;
        v182 = v279;
        if (v73 >= 90.0)
        {
          (*(v297 + 104))(v279, *v107, v300);
          sub_1BCA68720(v93, v182);
          v212 = OUTLINED_FUNCTION_27_10();
          v213(v212);
          if ((v96 & 1) == 0)
          {
            if (v290)
            {
              OUTLINED_FUNCTION_5_51();
              sub_1BCE191B0();
              OUTLINED_FUNCTION_12_40();
              v239 = OUTLINED_FUNCTION_2_71();
              v240(v239);
              sub_1BCE191F0();
              v241 = OUTLINED_FUNCTION_1_64();
              v242(v241);
              if ((v96 & 1) == 0)
              {
                if (v291)
                {
                  OUTLINED_FUNCTION_9_42();
                  if (!v122)
                  {
                    OUTLINED_FUNCTION_0();
                  }
                }

                else
                {
                  OUTLINED_FUNCTION_9_42();
                  if (!v122)
                  {
                    OUTLINED_FUNCTION_0();
                  }
                }

                goto LABEL_341;
              }

LABEL_207:
              if (v291)
              {
                OUTLINED_FUNCTION_9_42();
                if (!v122)
                {
                  OUTLINED_FUNCTION_0();
                }
              }

              else
              {
                OUTLINED_FUNCTION_9_42();
                if (!v122)
                {
                  OUTLINED_FUNCTION_0();
                }
              }

              goto LABEL_254;
            }

LABEL_211:
            OUTLINED_FUNCTION_14_26();
            if (v243)
            {
              OUTLINED_FUNCTION_9_42();
              if (!v122)
              {
                OUTLINED_FUNCTION_0();
              }
            }

            else
            {
              OUTLINED_FUNCTION_9_42();
              if (!v122)
              {
                OUTLINED_FUNCTION_0();
              }
            }

            goto LABEL_254;
          }

          if ((v290 & 1) == 0)
          {
            goto LABEL_155;
          }

          OUTLINED_FUNCTION_5_51();
          sub_1BCE191B0();
          OUTLINED_FUNCTION_12_40();
          v214 = OUTLINED_FUNCTION_2_71();
          v215(v214);
          sub_1BCE191F0();
          v216 = OUTLINED_FUNCTION_1_64();
          v217(v216);
          if ((v96 & 1) == 0)
          {
            if (v291)
            {
              OUTLINED_FUNCTION_9_42();
              if (!v122)
              {
                OUTLINED_FUNCTION_0();
              }
            }

            else
            {
              OUTLINED_FUNCTION_9_42();
              if (!v122)
              {
                OUTLINED_FUNCTION_0();
              }
            }

            goto LABEL_341;
          }
        }

        else
        {
          OUTLINED_FUNCTION_19_24();
          if ((v183 & 1) == 0)
          {
            goto LABEL_155;
          }

          OUTLINED_FUNCTION_5_51();
          sub_1BCE191B0();
          OUTLINED_FUNCTION_12_40();
          v184 = OUTLINED_FUNCTION_2_71();
          v185(v184);
          sub_1BCE191F0();
          v186 = OUTLINED_FUNCTION_1_64();
          v187(v186);
          if ((v96 & 1) == 0)
          {
            if (v291)
            {
              OUTLINED_FUNCTION_9_42();
              if (!v122)
              {
                OUTLINED_FUNCTION_0();
              }
            }

            else
            {
              OUTLINED_FUNCTION_9_42();
              if (!v122)
              {
                OUTLINED_FUNCTION_0();
              }
            }

            goto LABEL_341;
          }
        }

LABEL_151:
        if (v291)
        {
          OUTLINED_FUNCTION_9_42();
          if (!v122)
          {
            OUTLINED_FUNCTION_0();
          }
        }

        else
        {
          OUTLINED_FUNCTION_9_42();
          if (!v122)
          {
            OUTLINED_FUNCTION_0();
          }
        }

        goto LABEL_254;
      }

      v144 = v83;
      if (v96)
      {
        OUTLINED_FUNCTION_36_11(50.0);
        if (!(!v122 & v145))
        {
          v176 = v300;
          OUTLINED_FUNCTION_19_24();
          if (v177)
          {
            OUTLINED_FUNCTION_5_51();
            sub_1BCE191B0();
            OUTLINED_FUNCTION_12_40();
            v178 = OUTLINED_FUNCTION_2_71();
            v179(v178);
            sub_1BCE191F0();
            v180 = OUTLINED_FUNCTION_1_64();
            v181(v180);
            if (v96)
            {
              if (v291)
              {
                OUTLINED_FUNCTION_9_42();
                if (!v122)
                {
                  OUTLINED_FUNCTION_0();
                }
              }

              else
              {
                OUTLINED_FUNCTION_9_42();
                if (!v122)
                {
                  OUTLINED_FUNCTION_0();
                }
              }
            }

            else if (v291)
            {
              OUTLINED_FUNCTION_9_42();
              if (!v122)
              {
                OUTLINED_FUNCTION_0();
              }
            }

            else
            {
              OUTLINED_FUNCTION_9_42();
              if (!v122)
              {
                OUTLINED_FUNCTION_0();
              }
            }

LABEL_349:
            v254 = &qword_1EDA1EFB8;
            OUTLINED_FUNCTION_4_56();
            OUTLINED_FUNCTION_9_4(qword_1EDA1EFB8);
            OUTLINED_FUNCTION_10_42();
            OUTLINED_FUNCTION_7();
            OUTLINED_FUNCTION_13_1();
            goto LABEL_350;
          }

LABEL_118:
          OUTLINED_FUNCTION_14_26();
          if (v195)
          {
            OUTLINED_FUNCTION_9_42();
            if (!v122)
            {
              OUTLINED_FUNCTION_0();
            }
          }

          else
          {
            OUTLINED_FUNCTION_9_42();
            if (!v122)
            {
              OUTLINED_FUNCTION_0();
            }
          }

          goto LABEL_349;
        }

        OUTLINED_FUNCTION_36_11(92.0);
        v176 = v300;
        if (v109)
        {
          OUTLINED_FUNCTION_19_24();
          if ((v146 & 1) == 0)
          {
            goto LABEL_118;
          }

          OUTLINED_FUNCTION_5_51();
          sub_1BCE191B0();
          OUTLINED_FUNCTION_12_40();
          v147 = OUTLINED_FUNCTION_2_71();
          v148(v147);
          sub_1BCE191F0();
          v149 = OUTLINED_FUNCTION_1_64();
          v150(v149);
          if (v96)
          {
            if (v291)
            {
              OUTLINED_FUNCTION_9_42();
              if (!v122)
              {
                OUTLINED_FUNCTION_0();
              }
            }

            else
            {
              OUTLINED_FUNCTION_9_42();
              if (!v122)
              {
                OUTLINED_FUNCTION_0();
              }
            }

            goto LABEL_349;
          }

          if (v291)
          {
            OUTLINED_FUNCTION_9_42();
            if (!v122)
            {
              OUTLINED_FUNCTION_0();
            }

            goto LABEL_349;
          }

          OUTLINED_FUNCTION_9_42();
          if (!v122)
          {
            OUTLINED_FUNCTION_0();
          }
        }

        else
        {
          if ((v290 & 1) == 0)
          {
            goto LABEL_118;
          }

          OUTLINED_FUNCTION_14_26();
          if (v194)
          {
            OUTLINED_FUNCTION_9_42();
            if (!v122)
            {
              OUTLINED_FUNCTION_0();
            }

            goto LABEL_349;
          }

          OUTLINED_FUNCTION_9_42();
          if (!v122)
          {
            OUTLINED_FUNCTION_0();
          }
        }

LABEL_335:
        OUTLINED_FUNCTION_4_56();
        v254 = OUTLINED_FUNCTION_9_4(qword_1EDA1EFB8);
        OUTLINED_FUNCTION_13_34();
        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_13_1();
LABEL_350:
        v260 = sub_1BCE18B60();
        v262 = v261;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07880);
        v263 = OUTLINED_FUNCTION_26();
        *(v263 + 16) = xmmword_1BCE3E030;
        v66 = sub_1BCCAE950(v260, v262, v274);
        v265 = v264;

        v266 = MEMORY[0x1E69E6158];
        *(v263 + 56) = MEMORY[0x1E69E6158];
        v267 = sub_1BC9804E0();
        *(v263 + 32) = v66;
        *(v263 + 40) = v265;
        *(v263 + 96) = v266;
        *(v263 + 104) = v267;
        *(v263 + 64) = v267;
        *(v263 + 72) = v144;
        *(v263 + 80) = v303;
        sub_1BCE1D250();
        OUTLINED_FUNCTION_24_18();

        v268 = OUTLINED_FUNCTION_35_10();
        v269(v268, v176);
        v259 = v306;
        goto LABEL_351;
      }

      v151 = v306;
      if (v100)
      {
        OUTLINED_FUNCTION_36_11(40.0);
        if (v109)
        {
          OUTLINED_FUNCTION_19_24();
          if (v164)
          {
            OUTLINED_FUNCTION_5_51();
            sub_1BCE191B0();
            OUTLINED_FUNCTION_12_40();
            v165 = OUTLINED_FUNCTION_2_71();
            v166(v165);
            sub_1BCE191F0();
            v167 = OUTLINED_FUNCTION_1_64();
            v168(v167);
            v176 = v300;
            if (v151)
            {
              if (v291)
              {
                OUTLINED_FUNCTION_9_42();
                if (!v122)
                {
                  OUTLINED_FUNCTION_0();
                }
              }

              else
              {
                OUTLINED_FUNCTION_9_42();
                if (!v122)
                {
                  OUTLINED_FUNCTION_0();
                }
              }

              goto LABEL_349;
            }

            if (v291)
            {
              OUTLINED_FUNCTION_9_42();
              if (!v122)
              {
                OUTLINED_FUNCTION_0();
              }

              goto LABEL_349;
            }

            OUTLINED_FUNCTION_9_42();
            if (!v122)
            {
              OUTLINED_FUNCTION_0();
            }

            goto LABEL_335;
          }

          v176 = v300;
        }

        else if (v73 >= 75.0)
        {
          v176 = v300;
          if (v73 >= 90.0)
          {
            if (v290)
            {
              OUTLINED_FUNCTION_5_51();
              sub_1BCE191B0();
              OUTLINED_FUNCTION_12_40();
              v249 = OUTLINED_FUNCTION_2_71();
              v250(v249);
              sub_1BCE191F0();
              v251 = OUTLINED_FUNCTION_1_64();
              v252(v251);
              if (v151)
              {
                if (v291)
                {
                  OUTLINED_FUNCTION_9_42();
                  if (!v122)
                  {
                    OUTLINED_FUNCTION_0();
                  }
                }

                else
                {
                  OUTLINED_FUNCTION_9_42();
                  if (!v122)
                  {
                    OUTLINED_FUNCTION_0();
                  }
                }
              }

              else if (v291)
              {
                OUTLINED_FUNCTION_9_42();
                if (!v122)
                {
                  OUTLINED_FUNCTION_0();
                }
              }

              else
              {
                OUTLINED_FUNCTION_9_42();
                if (!v122)
                {
                  OUTLINED_FUNCTION_0();
                }
              }

              goto LABEL_349;
            }
          }

          else if (v290)
          {
            OUTLINED_FUNCTION_5_51();
            sub_1BCE191B0();
            OUTLINED_FUNCTION_12_40();
            v234 = OUTLINED_FUNCTION_2_71();
            v235(v234);
            sub_1BCE191F0();
            v236 = OUTLINED_FUNCTION_1_64();
            v237(v236);
            if (v151)
            {
              if (v291)
              {
                OUTLINED_FUNCTION_9_42();
                if (!v122)
                {
                  OUTLINED_FUNCTION_0();
                }
              }

              else
              {
                OUTLINED_FUNCTION_9_42();
                if (!v122)
                {
                  OUTLINED_FUNCTION_0();
                }
              }
            }

            else if (v291)
            {
              OUTLINED_FUNCTION_9_42();
              if (!v122)
              {
                OUTLINED_FUNCTION_0();
              }
            }

            else
            {
              OUTLINED_FUNCTION_9_42();
              if (!v122)
              {
                OUTLINED_FUNCTION_0();
              }
            }

            goto LABEL_349;
          }
        }

        else
        {
          v176 = v300;
          OUTLINED_FUNCTION_19_24();
          if (v201)
          {
            OUTLINED_FUNCTION_5_51();
            sub_1BCE191B0();
            OUTLINED_FUNCTION_12_40();
            v202 = OUTLINED_FUNCTION_2_71();
            v203(v202);
            sub_1BCE191F0();
            v204 = OUTLINED_FUNCTION_1_64();
            v205(v204);
            if (v151)
            {
              if (v291)
              {
                OUTLINED_FUNCTION_9_42();
                if (!v122)
                {
                  OUTLINED_FUNCTION_0();
                }
              }

              else
              {
                OUTLINED_FUNCTION_9_42();
                if (!v122)
                {
                  OUTLINED_FUNCTION_0();
                }
              }

              goto LABEL_349;
            }

            if (v291)
            {
              OUTLINED_FUNCTION_9_42();
              if (!v122)
              {
                OUTLINED_FUNCTION_0();
              }

              goto LABEL_349;
            }

            OUTLINED_FUNCTION_9_42();
            if (!v122)
            {
              OUTLINED_FUNCTION_0();
            }

            goto LABEL_335;
          }
        }

        OUTLINED_FUNCTION_14_26();
        if (v253)
        {
          OUTLINED_FUNCTION_9_42();
          if (!v122)
          {
            OUTLINED_FUNCTION_0();
          }
        }

        else
        {
          OUTLINED_FUNCTION_9_42();
          if (!v122)
          {
            OUTLINED_FUNCTION_0();
          }
        }

        goto LABEL_349;
      }

      swift_unknownObjectRelease();

      v123 = v300;
      goto LABEL_52;
    }

    v123 = v300;
    if ((v105 & 1) == 0)
    {
      swift_unknownObjectRelease();
      v151 = v306;
LABEL_52:

      v152 = OUTLINED_FUNCTION_35_10();
      v153(v152, v123);
      sub_1BC94F81C(v151, &qword_1EBD0BF10);
      v154 = OUTLINED_FUNCTION_25_14();
      v155(v154);
      v66 = 0;
LABEL_352:
      v56 = v292;
      v67 = v310;
      goto LABEL_353;
    }

    sub_1BCE194D0();
    v125 = v124;
    v126 = v289;
    sub_1BCE19490();
    v127 = *MEMORY[0x1E69E7038];
    v128 = v281;
    v129 = *(v281 + 104);
    v130 = v280;
    v131 = v282;
    v129(v280, v127, v282);
    v132 = Double.nearestMultiple(of:roundingRule:)(v130, 0.05, v125);
    v133 = *(v128 + 8);
    v133(v130, v131);
    v129(v130, v127, v131);
    v134 = Double.nearestMultiple(of:roundingRule:)(v130, 0.01, v132);
    v133(v130, v131);
    v314 = v134;
    OUTLINED_FUNCTION_5_51();
    sub_1BCE19150();
    sub_1BC96ABEC();
    v135 = v283;
    sub_1BCE18CB0();
    sub_1BC96C2BC();
    v136 = v285;
    sub_1BCE1D0F0();
    (*(v284 + 8))(v135, v136);
    v137 = sub_1BCC67EB4(v312, v313);
    v66 = v138;

    v139 = v297;
    v140 = v286;
    (*(v297 + 16))(v286, v126, v123);
    v141 = (*(v139 + 88))(v140, v123);
    if (v141 == *MEMORY[0x1E6984DC0])
    {
      if (v290)
      {
        v121 = v306;
        OUTLINED_FUNCTION_14_26();
        v142 = v299;
        if (v143)
        {
          OUTLINED_FUNCTION_16_28();
          if (!v122)
          {
            OUTLINED_FUNCTION_0();
          }
        }

        else
        {
          OUTLINED_FUNCTION_16_28();
          if (!v122)
          {
            OUTLINED_FUNCTION_0();
          }
        }

LABEL_175:
        OUTLINED_FUNCTION_7_49();
        OUTLINED_FUNCTION_9_4(qword_1EDA1EFB8);
        OUTLINED_FUNCTION_21_21();
        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_13_1();
        sub_1BCE18B60();
        OUTLINED_FUNCTION_29_15();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07880);
        v220 = OUTLINED_FUNCTION_26();
        *(v220 + 16) = xmmword_1BCE3E030;
        v221 = MEMORY[0x1E69E6158];
        *(v220 + 56) = MEMORY[0x1E69E6158];
        v222 = sub_1BC9804E0();
        *(v220 + 32) = v137;
        *(v220 + 40) = v66;
        *(v220 + 96) = v221;
        *(v220 + 104) = v222;
        v223 = v274;
        *(v220 + 64) = v222;
        *(v220 + 72) = v223;
        *(v220 + 80) = v309;
LABEL_193:
        sub_1BCE1D250();
        OUTLINED_FUNCTION_24_18();

        v233 = OUTLINED_FUNCTION_28_12();
        (qword_1EDA1EFB8)(v233);
        (qword_1EDA1EFB8)(v142, v220);
LABEL_343:
        v259 = v121;
LABEL_351:
        sub_1BC94F81C(v259, &qword_1EBD0BF10);
        v270 = OUTLINED_FUNCTION_25_14();
        v271(v270);
        goto LABEL_352;
      }

      v121 = v306;
      OUTLINED_FUNCTION_14_26();
      v142 = v299;
      if (v175)
      {
        OUTLINED_FUNCTION_16_28();
        if (!v122)
        {
          OUTLINED_FUNCTION_0();
        }
      }

      else
      {
        OUTLINED_FUNCTION_16_28();
        if (!v122)
        {
          OUTLINED_FUNCTION_0();
        }
      }

      goto LABEL_192;
    }

    if (v141 == *v106)
    {
      v121 = v306;
      v142 = v299;
      if (v290)
      {
        OUTLINED_FUNCTION_14_26();
        if (v163)
        {
          OUTLINED_FUNCTION_16_28();
          if (!v122)
          {
            OUTLINED_FUNCTION_0();
          }
        }

        else
        {
          OUTLINED_FUNCTION_16_28();
          if (!v122)
          {
            OUTLINED_FUNCTION_0();
          }
        }

        goto LABEL_175;
      }

      OUTLINED_FUNCTION_14_26();
      if (v200)
      {
        OUTLINED_FUNCTION_16_28();
        if (!v122)
        {
          OUTLINED_FUNCTION_0();
        }
      }

      else
      {
        OUTLINED_FUNCTION_16_28();
        if (!v122)
        {
          OUTLINED_FUNCTION_0();
        }
      }

LABEL_192:
      OUTLINED_FUNCTION_7_49();
      OUTLINED_FUNCTION_9_4(qword_1EDA1EFB8);
      OUTLINED_FUNCTION_11_35();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_13_1();
      sub_1BCE18B60();
      OUTLINED_FUNCTION_29_15();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07880);
      v220 = OUTLINED_FUNCTION_26();
      *(v220 + 16) = xmmword_1BCE3E030;
      *(v220 + 56) = MEMORY[0x1E69E6158];
      v232 = sub_1BC9804E0();
      OUTLINED_FUNCTION_23_25(v232);
      goto LABEL_193;
    }

    v188 = v306;
    OUTLINED_FUNCTION_19_24();
    v189 = v299;
    if ((v190 & 1) == 0)
    {
      OUTLINED_FUNCTION_14_26();
      if (v219)
      {
        OUTLINED_FUNCTION_16_28();
        if (!v122)
        {
          OUTLINED_FUNCTION_0();
        }
      }

      else
      {
        OUTLINED_FUNCTION_16_28();
        if (!v122)
        {
          OUTLINED_FUNCTION_0();
        }
      }

      v227 = &qword_1EDA1EFB8;
      OUTLINED_FUNCTION_7_49();
      OUTLINED_FUNCTION_9_4(qword_1EDA1EFB8);
      OUTLINED_FUNCTION_11_35();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_13_1();
      sub_1BCE18B60();
      OUTLINED_FUNCTION_29_15();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07880);
      v228 = OUTLINED_FUNCTION_26();
      *(v228 + 16) = xmmword_1BCE3E030;
      *(v228 + 56) = MEMORY[0x1E69E6158];
      v244 = sub_1BC9804E0();
      OUTLINED_FUNCTION_23_25(v244);
      goto LABEL_218;
    }

    OUTLINED_FUNCTION_14_26();
    if (v192)
    {
      if (v191 == -1)
      {
        goto LABEL_186;
      }
    }

    else if (v191 == -1)
    {
LABEL_186:
      OUTLINED_FUNCTION_4_56();
      v225 = qword_1EDA1EFB8;
      OUTLINED_FUNCTION_26_15();
      OUTLINED_FUNCTION_21_21();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_13_1();
      v66 = sub_1BCE18B60();
      v227 = v226;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07880);
      v228 = swift_allocObject();
      *(v228 + 16) = xmmword_1BCE3E050;
      v229 = OUTLINED_FUNCTION_30_13(v66);
      v231 = v230;

      *(v228 + 56) = MEMORY[0x1E69E6158];
      *(v228 + 64) = sub_1BC9804E0();
      *(v228 + 32) = v229;
      *(v228 + 40) = v231;
LABEL_218:
      sub_1BCE1D250();
      OUTLINED_FUNCTION_24_18();

      v245 = OUTLINED_FUNCTION_28_12();
      (v227)(v245);
      (v227)(v189, v228);
      sub_1BC94F81C(v188, &qword_1EBD0BF10);
      v246 = OUTLINED_FUNCTION_25_14();
      v247(v246);
      (v227)(v286, v228);
      goto LABEL_352;
    }

    OUTLINED_FUNCTION_0();
    goto LABEL_186;
  }

  swift_unknownObjectRelease();

  sub_1BC94F81C(v52, &qword_1EBD08CA8);
  v66 = 0;
  v56 = v292;
LABEL_8:
  v67 = v63;
LABEL_353:
  (*(v307 + 8))(v67, v56);
  return v66;
}

void *BackgroundAnimationData.options.getter()
{
  v2 = OUTLINED_FUNCTION_19_1();
  v3 = type metadata accessor for BackgroundAnimationData.Model(v2);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_24_15();
  type metadata accessor for BackgroundAnimationData(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_0();
  v8 = (v7 - v6);
  sub_1BC96AF48(v1, v7 - v6);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_3_74();
    sub_1BC999604();
    memcpy(__dst, (v1 + *(v3 + 48)), 0x59uLL);
    sub_1BC96A9A0(__dst, v13);
    OUTLINED_FUNCTION_2_82();
    sub_1BC969F84(v1, v9);
    v10 = __dst;
    v11 = v0;
  }

  else
  {
    v11 = v0;
    v10 = v8;
  }

  return memcpy(v11, v10, 0x59uLL);
}

void FeelsLikeStringBuilder.buildString(from:hourlyForecast:timeZone:unit:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v540 = a2;
  i = a4;
  v544 = a3;
  v547 = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07890);
  v7 = OUTLINED_FUNCTION_14(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_3_0();
  v500 = v8;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_6_1();
  v503 = v10;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_6_1();
  v525 = v12;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_6_1();
  v497 = v14;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_6_1();
  v496 = v16;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_35();
  v502 = v18;
  v19 = OUTLINED_FUNCTION_13();
  v524 = type metadata accessor for NSUnitSpeed.BaseWeatherFormatStyle(v19);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_3_0();
  v523 = v21;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_6_1();
  v499 = v23;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_6_1();
  v521 = v25;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_35();
  v498 = v27;
  OUTLINED_FUNCTION_13();
  v532 = sub_1BCE1A000();
  OUTLINED_FUNCTION_2();
  v535 = v28;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_3_0();
  v493 = v30;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_35();
  v554 = v32;
  v546 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07860);
  OUTLINED_FUNCTION_2();
  v531 = v33;
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_3_0();
  v520 = v35;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_6_1();
  v522 = v37;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_6_1();
  v553 = v39;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_35();
  v555 = v41;
  OUTLINED_FUNCTION_13();
  v509 = sub_1BCE19260();
  OUTLINED_FUNCTION_2();
  v515 = v42;
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_2_0();
  v514 = v45 - v44;
  OUTLINED_FUNCTION_13();
  sub_1BCE19280();
  OUTLINED_FUNCTION_2();
  v529 = v47;
  v530 = v46;
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_3_0();
  v495 = v48;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_6_1();
  v494 = v50;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_35();
  v513 = v52;
  OUTLINED_FUNCTION_13();
  sub_1BCE18EE0();
  OUTLINED_FUNCTION_2();
  v511 = v54;
  v512 = v53;
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_2_0();
  v510 = v56 - v55;
  OUTLINED_FUNCTION_13();
  v563 = sub_1BCE195D0();
  OUTLINED_FUNCTION_2();
  v564 = v57;
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_3_0();
  v492 = v59;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_6_1();
  v501 = v61;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_6_1();
  v491 = v63;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_6_1();
  v518 = v65;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_6_1();
  v528 = v67;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_35();
  v517 = v69;
  v543 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD085A0);
  OUTLINED_FUNCTION_2();
  v539 = v70;
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_3_0();
  v490 = v72;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v73);
  OUTLINED_FUNCTION_6_1();
  v560 = v74;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v75);
  OUTLINED_FUNCTION_35();
  v556 = v76;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08698);
  v78 = OUTLINED_FUNCTION_14(v77);
  MEMORY[0x1EEE9AC00](v78);
  OUTLINED_FUNCTION_3_0();
  v505 = v79;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v80);
  OUTLINED_FUNCTION_6_1();
  v526 = v81;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v82);
  OUTLINED_FUNCTION_6_1();
  v527 = v83;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v84);
  OUTLINED_FUNCTION_35();
  v536 = v85;
  OUTLINED_FUNCTION_13();
  v538 = sub_1BCE193E0();
  OUTLINED_FUNCTION_2();
  v551 = v86;
  MEMORY[0x1EEE9AC00](v87);
  OUTLINED_FUNCTION_2_0();
  v537 = v89 - v88;
  OUTLINED_FUNCTION_13();
  v550 = sub_1BCE19060();
  OUTLINED_FUNCTION_2();
  v542 = v90;
  MEMORY[0x1EEE9AC00](v91);
  OUTLINED_FUNCTION_3_0();
  v489 = v92;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v93);
  OUTLINED_FUNCTION_6_1();
  v558 = v94;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v95);
  OUTLINED_FUNCTION_6_1();
  v486 = v96;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v97);
  OUTLINED_FUNCTION_6_1();
  v487 = v98;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v99);
  OUTLINED_FUNCTION_6_1();
  v488 = v100;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v101);
  OUTLINED_FUNCTION_6_1();
  v559 = v102;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v103);
  OUTLINED_FUNCTION_6_1();
  v504 = v104;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v105);
  OUTLINED_FUNCTION_6_1();
  v507 = v106;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v107);
  OUTLINED_FUNCTION_6_1();
  v506 = v108;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v109);
  OUTLINED_FUNCTION_6_1();
  v561 = v110;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v111);
  OUTLINED_FUNCTION_6_1();
  v552 = v112;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v113);
  OUTLINED_FUNCTION_6_1();
  v545 = v114;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v115);
  OUTLINED_FUNCTION_35();
  v549 = v116;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07CA8);
  OUTLINED_FUNCTION_2();
  v119 = v118;
  MEMORY[0x1EEE9AC00](v120);
  OUTLINED_FUNCTION_3_0();
  v568 = v121;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v122);
  v124 = &v482 - v123;
  MEMORY[0x1EEE9AC00](v125);
  v127 = &v482 - v126;
  MEMORY[0x1EEE9AC00](v128);
  v130 = (&v482 - v129);
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07898);
  v132 = OUTLINED_FUNCTION_14(v131);
  MEMORY[0x1EEE9AC00](v132);
  OUTLINED_FUNCTION_3_0();
  v519 = v133;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v134);
  v136 = &v482 - v135;
  sub_1BC977B50(a1, &v482 - v135);
  sub_1BCE19640();
  v548 = a1;
  sub_1BCE19680();
  v137 = [objc_opt_self() fahrenheit];
  sub_1BCE18680();
  sub_1BCE185E0();
  v139 = v138;
  isa = v119[1].isa;
  isa(v124, v117);
  v141 = v568;
  sub_1BCE18680();
  sub_1BCE185E0();
  v143 = v142;
  isa(v141, v117);

  v562 = v127;
  isa(v127, v117);
  v566 = v130;
  v568 = v117;
  v567 = v119 + 1;
  v565 = isa;
  isa(v130, v117);
  if (vabdd_f64(v139, v143) < 5.0)
  {
    if (__swift_getEnumTagSinglePayload(v136, 1, v546) == 1)
    {
      sub_1BC94C05C(v136, &qword_1EBD07898);
      OUTLINED_FUNCTION_69_1();
    }

    else
    {
      __swift_project_boxed_opaque_existential_1((v541 + 16), *(v541 + 40));
      v149 = sub_1BCBF1DF8(v548);
      v151 = v150;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD078E8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1BCE3E050;
      *(inited + 32) = v149;
      *(inited + 40) = v151;
      *(inited + 48) = 0;
      *(inited + 56) = 0;
      *(inited + 64) = 1;
      v153 = sub_1BC97FC70(16421, 0xE200000000000000, inited);
      v155 = v154;
      v156 = sub_1BC9807F0(16421, 0xE200000000000000, inited);
      v158 = v157;
      swift_setDeallocating();
      sub_1BC9811E0();
      sub_1BC94C05C(v136, &qword_1EBD07898);
      v159 = v547;
      *v547 = v153;
      v159[1] = v155;
      v159[2] = v156;
      v159[3] = v158;
    }

    return;
  }

  v516 = v136;
  v144 = sub_1BCE1A3E0();
  v145 = sub_1BCE1A3A0();
  v146 = i;
  v484 = v144;
  if (i)
  {
    sub_1BCE1A550();
    swift_allocObject();
    v147 = v146;
    v148 = sub_1BCE1A540();

    v485 = MEMORY[0x1E69E1770];
    v508 = v148;
  }

  else
  {
    v508 = v145;
    v485 = MEMORY[0x1E69E1768];
  }

  v160 = v545;
  v161 = v548;
  sub_1BCE196A0();
  v162 = v537;
  sub_1BCE192A0();
  v163 = v549;
  sub_1BCE19290();
  v164 = v551 + 8;
  v165 = *(v551 + 8);
  v166 = v538;
  v165(v162, v538);
  v167 = *(v542 + 8);
  v533 = (v542 + 8);
  v534 = v167;
  (v167)(v160, v550);
  sub_1BCE192A0();
  sub_1BCE18EF0();
  v551 = v164;
  v483 = v165;
  v165(v162, v166);
  v168 = v161;
  v169 = v566;
  sub_1BCE19680();
  v170 = v562;
  sub_1BCE19640();
  v171 = sub_1BC957184(&qword_1EDA1BFA0, &qword_1EBD07CA8);
  v172 = v568;
  i = v171;
  v173 = sub_1BCE1D1E0();
  v174 = v170;
  v175 = v567;
  v176 = v565;
  v565(v174, v172);
  v177 = v552;
  v176(v169, v172);
  if (v173)
  {
    v178 = OUTLINED_FUNCTION_78_1();
    v546 = v179;
    v538 = v180;
    v181 = v180(v178);
    v182 = &v482;
    MEMORY[0x1EEE9AC00](v181);
    v480 = v163;
    v481 = v177;
    v183 = sub_1BC9781E0(sub_1BC978CA8, v479);
    v558 = *(v183 + 16);
    if (v558)
    {
      OUTLINED_FUNCTION_73_1();
      v184 = v517;
      v554 = v183 + v185;
      v186 = v563;
      v556 = v187;
      v187(v517);
      v553 = -8;
      v555 = 0;
      v551 = 16;
      v188 = 1;
      OUTLINED_FUNCTION_67_0();
      v189 = v518;
      for (i = v183; ; v183 = i)
      {
        if (v558 == v188)
        {

          v183 = v536;
          (*v551)(v536, v184, v186);
          __swift_storeEnumTagSinglePayload(v183, 0, 1, v186);
          goto LABEL_26;
        }

        if (v188 >= *(v183 + 16))
        {
          break;
        }

        OUTLINED_FUNCTION_83_0();
        v556(v189);
        v182 = v566;
        sub_1BCE19580();
        v190 = v562;
        sub_1BCE19580();
        sub_1BCA301DC();
        v186 = sub_1BCE185A0();
        v191 = v190;
        v192 = v189;
        v193 = v568;
        v175 = v567;
        v168 = v565;
        v565(v191, v568);
        v168(v182, v193);
        OUTLINED_FUNCTION_44_1();
        v194();
        if (v186)
        {
          (*v551)(v184, v192, v186);
        }

        v189 = v192;
        ++v188;
        OUTLINED_FUNCTION_67_0();
      }

      __break(1u);
LABEL_119:
      __break(1u);
      goto LABEL_120;
    }

    v183 = v536;
    OUTLINED_FUNCTION_19_0();
    v186 = v563;
    __swift_storeEnumTagSinglePayload(v220, v221, v222, v563);
    OUTLINED_FUNCTION_67_0();
LABEL_26:
    v223 = v533;
    v224 = v527;
    sub_1BC952ABC(v183, v527, &qword_1EBD08698);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v224, 1, v186);
    v182 = v552;
    v226 = v534;
    if (EnumTagSinglePayload == 1)
    {
      sub_1BC94C05C(v224, &qword_1EBD08698);
      if (qword_1EBD070E0 == -1)
      {
LABEL_28:
        v227 = sub_1BCE1ACC0();
        __swift_project_value_buffer(v227, qword_1EBD09528);
        v228 = *(v542 + 16);
        v229 = v504;
        v230 = v550;
        v228(v504, v549, v550);
        v228(v162, v182, v230);
        v231 = v543;
        v538(v168, v540, v543);
        v232 = sub_1BCE1ACA0();
        v233 = sub_1BCE1D8B0();
        if (os_log_type_enabled(v232, v233))
        {
          v234 = swift_slowAlloc();
          v568 = swift_slowAlloc();
          v569[0] = v568;
          *v234 = 136446722;
          v230 = OUTLINED_FUNCTION_41_4(&qword_1EDA1BF08);
          LODWORD(v567) = v233;
          v235 = v229;
          OUTLINED_FUNCTION_93_1();
          OUTLINED_FUNCTION_70();
          v236 = v229;
          v237 = v534;
          (v534)(v236, v550);
          v238 = sub_1BC98FE38(v235, v168, v569);

          *(v234 + 4) = v238;
          *(v234 + 12) = 2082;
          v239 = v162;
          OUTLINED_FUNCTION_93_1();
          OUTLINED_FUNCTION_29_7();
          v240 = v162;
          v241 = v237;
          (v237)(v240, v550);
          v242 = OUTLINED_FUNCTION_46();
          sub_1BC98FE38(v242, v243, v244);
          OUTLINED_FUNCTION_88_1();
          *(v234 + 14) = v239;
          *(v234 + 22) = 2082;
          v245 = v549;
          v246 = v560;
          v247 = v560;
          sub_1BCE1A090();
          OUTLINED_FUNCTION_29_7();
          OUTLINED_FUNCTION_82_1();
          v248(v246, v231);
          v249 = OUTLINED_FUNCTION_46();
          sub_1BC98FE38(v249, v250, v251);
          OUTLINED_FUNCTION_88_1();
          *(v234 + 24) = v247;
          _os_log_impl(&dword_1BC940000, v232, v567, "Unexpectedly failed to find the highest feels like for the day. startDate=%{public}s, endDate=%{public}s, hourlyForecast=%{public}s", v234, 0x20u);
          OUTLINED_FUNCTION_86_1();
          OUTLINED_FUNCTION_84_2();
          OUTLINED_FUNCTION_85_1();

          swift_unknownObjectRelease();
          sub_1BC94C05C(v536, &qword_1EBD08698);
        }

        else
        {

          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_82_1();
          v273(v168, v231);
          v274 = v162;
          v241 = v534;
          (v534)(v274, v230);
          v241(v229, v230);
          sub_1BC94C05C(v183, &qword_1EBD08698);
          v245 = v549;
        }

        sub_1BC94C05C(v516, &qword_1EBD07898);
        OUTLINED_FUNCTION_69_1();
        v275 = OUTLINED_FUNCTION_30_3();
        (v241)(v275);
        v241(v245, v230);
        return;
      }

LABEL_120:
      OUTLINED_FUNCTION_32_4();
      goto LABEL_28;
    }

    v252 = v528;
    (*(v564 + 32))(v528, v224, v186);
    v253 = v545;
    sub_1BCE195A0();
    sub_1BCE196A0();
    v254 = sub_1BCE18FC0();
    v255 = v223;
    v256 = v550;
    v226(v175);
    (v226)(v253, v256);
    v257 = v226;
    if (v254)
    {
      if (qword_1EDA1EFB0 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      OUTLINED_FUNCTION_24_9();
      OUTLINED_FUNCTION_81_1();
      OUTLINED_FUNCTION_89_1();
      OUTLINED_FUNCTION_57_1();
      v480 = v175;
      OUTLINED_FUNCTION_9_3();
      v258 = sub_1BCE18B60();
      OUTLINED_FUNCTION_79(v258);
      v260 = v259;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD078E8);
      v261 = swift_allocObject();
      OUTLINED_FUNCTION_37_2(v261, xmmword_1BCE43610);
      sub_1BCE195A0();
      OUTLINED_FUNCTION_87_0();
      OUTLINED_FUNCTION_51_2();
      v262 = OUTLINED_FUNCTION_23_12();
      v263(v262);
      v264 = OUTLINED_FUNCTION_30_3();
      (v257)(v264);
      OUTLINED_FUNCTION_9_23();
      sub_1BCE19580();
      OUTLINED_FUNCTION_28_3();
      v265 = OUTLINED_FUNCTION_6_22();
      v266(v265);
      OUTLINED_FUNCTION_22_10();
      sub_1BCE195A0();
      v267 = static Date.uses24HourTime()();
      v562 = v260;
      if (v267)
      {
        v268 = v255;
        v269 = v547;
        if (qword_1EDA1EBE8 != -1)
        {
          OUTLINED_FUNCTION_1_16();
        }

        v270 = &qword_1EDA2F018;
      }

      else
      {
        v268 = v255;
        v269 = v547;
        if (qword_1EDA1EF50 != -1)
        {
          OUTLINED_FUNCTION_0_0();
        }

        v270 = &qword_1EDA2F040;
      }

      v421 = *v270;
      OUTLINED_FUNCTION_90_0();
      OUTLINED_FUNCTION_92_1();
      OUTLINED_FUNCTION_91_1();
      v422 = OUTLINED_FUNCTION_38_6();
      v423(v422);
      sub_1BCE19240();
      v424 = OUTLINED_FUNCTION_10_21();
      v425(v424);
      v426 = v506;
      OUTLINED_FUNCTION_33_3();
      OUTLINED_FUNCTION_70();
      if (v260)
      {
        OUTLINED_FUNCTION_13_17();
        OUTLINED_FUNCTION_12_20();
        OUTLINED_FUNCTION_48_1();

        v427 = OUTLINED_FUNCTION_18_13();
        v428 = v534;
        v534(v427);
        v257 = v260;
      }

      else
      {

        v438 = OUTLINED_FUNCTION_18_13();
        v428 = v534;
        v534(v438);
      }

      v439 = OUTLINED_FUNCTION_15_14();
      OUTLINED_FUNCTION_42_3(v439, v440);
      OUTLINED_FUNCTION_72_0();
      swift_setDeallocating();
      sub_1BC9811E0();
      swift_unknownObjectRelease();
    }

    else
    {
      if (qword_1EDA1EFB0 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      OUTLINED_FUNCTION_24_9();
      OUTLINED_FUNCTION_81_1();
      v276 = OUTLINED_FUNCTION_89_1();
      v480 = v175;
      OUTLINED_FUNCTION_9_3();
      v277 = sub_1BCE18B60();
      OUTLINED_FUNCTION_79(v277);
      v279 = v278;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD078E8);
      v280 = swift_allocObject();
      OUTLINED_FUNCTION_37_2(v280, xmmword_1BCE43610);
      sub_1BCE195A0();
      OUTLINED_FUNCTION_87_0();
      OUTLINED_FUNCTION_51_2();
      v281 = OUTLINED_FUNCTION_23_12();
      v282(v281);
      v283 = OUTLINED_FUNCTION_30_3();
      (v257)(v283);
      OUTLINED_FUNCTION_9_23();
      sub_1BCE19580();
      OUTLINED_FUNCTION_28_3();
      v284 = OUTLINED_FUNCTION_6_22();
      v285(v284);
      OUTLINED_FUNCTION_22_10();
      sub_1BCE195A0();
      v286 = static Date.uses24HourTime()();
      v562 = v279;
      if (v286)
      {
        v268 = v255;
        v269 = v547;
        if (qword_1EDA1EBE8 != -1)
        {
          OUTLINED_FUNCTION_1_16();
        }

        v287 = &qword_1EDA2F018;
      }

      else
      {
        v268 = v255;
        v269 = v547;
        if (qword_1EDA1EF50 != -1)
        {
          OUTLINED_FUNCTION_0_0();
        }

        v287 = &qword_1EDA2F040;
      }

      v429 = *v287;
      OUTLINED_FUNCTION_90_0();
      OUTLINED_FUNCTION_92_1();
      OUTLINED_FUNCTION_91_1();
      v430 = OUTLINED_FUNCTION_38_6();
      v431(v430);
      sub_1BCE19240();
      v432 = OUTLINED_FUNCTION_10_21();
      v433(v432);
      v426 = v507;
      OUTLINED_FUNCTION_33_3();
      OUTLINED_FUNCTION_70();
      if (v279)
      {
        OUTLINED_FUNCTION_13_17();
        OUTLINED_FUNCTION_12_20();
        OUTLINED_FUNCTION_48_1();

        v434 = OUTLINED_FUNCTION_18_13();
        v428 = v534;
        v534(v434);
        v257 = v279;
      }

      else
      {

        v441 = OUTLINED_FUNCTION_18_13();
        v428 = v534;
        v534(v441);
      }

      v442 = OUTLINED_FUNCTION_15_14();
      OUTLINED_FUNCTION_42_3(v442, v443);
      OUTLINED_FUNCTION_72_0();
      swift_unknownObjectRelease();
      swift_setDeallocating();
      sub_1BC9811E0();
    }

    (*(v564 + 8))(v528, v563);
    v444 = v536;
LABEL_93:
    sub_1BC94C05C(v444, &qword_1EBD08698);
    sub_1BC94C05C(v516, &qword_1EBD07898);
    v445 = v567;
    *v269 = v568;
    v269[1] = v445;
    v269[2] = v268;
    v269[3] = v257;
    v428(v552, v426);
    v428(v549, v426);
    return;
  }

  v195 = v554;
  sub_1BCE196B0();
  v196 = v553;
  sub_1BCE19FF0();
  v197 = v535 + 8;
  v518 = *(v535 + 8);
  v518(v195, v532);
  v198 = [objc_opt_self() kilometersPerHour];
  v199 = v555;
  v200 = v546;
  sub_1BCE18680();

  v201 = (v531 + 8);
  v202 = *(v531 + 8);
  v202(v196, v200);
  sub_1BCE185E0();
  v204 = v203;
  v527 = v202;
  v528 = v201;
  v202(v199, v200);
  if (v204 > 25.0)
  {
    goto LABEL_57;
  }

  v535 = v197;
  v205 = OUTLINED_FUNCTION_78_1();
  v517 = v206;
  v507 = v207;
  v208 = v207(v205);
  v182 = &v482;
  MEMORY[0x1EEE9AC00](v208);
  v480 = v549;
  v481 = v552;
  v209 = sub_1BC9781E0(sub_1BC978CC8, v479);
  v560 = *(v209 + 16);
  if (v560)
  {
    OUTLINED_FUNCTION_73_1();
    v168 = v491;
    v554 = v209 + v210;
    v211 = v563;
    v555 = v212;
    v212(v491);
    v553 = -8;
    v556 = 0;
    v536 = 16;
    v213 = 1;
    v162 = v558;
    v183 = v492;
    v559 = v209;
    while (v560 != v213)
    {
      if (v213 >= *(v209 + 16))
      {
        goto LABEL_119;
      }

      OUTLINED_FUNCTION_83_0();
      v555(v183);
      v214 = v566;
      sub_1BCE19580();
      v215 = v562;
      sub_1BCE19580();
      v211 = v568;
      v216 = sub_1BCE1D1E0();
      v217 = v215;
      v182 = v567;
      v218 = v565;
      v565(v217, v211);
      v218(v214, v211);
      OUTLINED_FUNCTION_44_1();
      v219();
      if (v216)
      {
        (*v536)(v168, v183, v211);
      }

      ++v213;
      v162 = v558;
      v209 = v559;
    }

    v271 = v526;
    (*v536)(v526, v168, v211);
    __swift_storeEnumTagSinglePayload(v271, 0, 1, v211);
    v272 = v550;
  }

  else
  {

    v271 = v526;
    OUTLINED_FUNCTION_19_0();
    v211 = v563;
    __swift_storeEnumTagSinglePayload(v288, v289, v290, v563);
    v272 = v550;
    v162 = v558;
  }

  v291 = v505;
  sub_1BC952ABC(v271, v505, &qword_1EBD08698);
  v292 = __swift_getEnumTagSinglePayload(v291, 1, v211);
  v293 = v549;
  v294 = v552;
  v295 = v534;
  if (v292 == 1)
  {
    sub_1BC94C05C(v291, &qword_1EBD08698);
    if (qword_1EBD070E0 != -1)
    {
      OUTLINED_FUNCTION_32_4();
    }

    v296 = sub_1BCE1ACC0();
    __swift_project_value_buffer(v296, qword_1EBD09528);
    v297 = *(v542 + 16);
    v297(v162, v293, v272);
    v298 = v489;
    v297(v489, v294, v272);
    v299 = v490;
    v300 = v543;
    v507(v490, v540, v543);
    v301 = sub_1BCE1ACA0();
    v302 = sub_1BCE1D8B0();
    if (os_log_type_enabled(v301, v302))
    {
      v303 = swift_slowAlloc();
      v568 = swift_slowAlloc();
      v569[0] = v568;
      *v303 = 136446722;
      v272 = OUTLINED_FUNCTION_41_4(&qword_1EDA1BF08);
      v567 = v301;
      v304 = v162;
      OUTLINED_FUNCTION_93_1();
      OUTLINED_FUNCTION_70();
      v305 = v162;
      LODWORD(v566) = v302;
      v306 = v534;
      (v534)(v305, v550);
      v307 = sub_1BC98FE38(v304, v293, v569);

      *(v303 + 4) = v307;
      *(v303 + 12) = 2082;
      OUTLINED_FUNCTION_93_1();
      OUTLINED_FUNCTION_29_7();
      v306(v298, v550);
      v308 = OUTLINED_FUNCTION_46();
      sub_1BC98FE38(v308, v309, v310);
      OUTLINED_FUNCTION_88_1();
      *(v303 + 14) = v298;
      *(v303 + 22) = 2082;
      v293 = v549;
      sub_1BCE1A090();
      OUTLINED_FUNCTION_29_7();
      OUTLINED_FUNCTION_82_1();
      v311(v299, v300);
      v312 = OUTLINED_FUNCTION_46();
      sub_1BC98FE38(v312, v313, v314);
      OUTLINED_FUNCTION_88_1();
      *(v303 + 24) = v299;
      v315 = v567;
      _os_log_impl(&dword_1BC940000, v567, v566, "Unexpectedly failed to find the lowest feels like for the day. startDate=%{public}s, endDate=%{public}s, hourlyForecast=%{public}s", v303, 0x20u);
      OUTLINED_FUNCTION_86_1();
      OUTLINED_FUNCTION_84_2();
      OUTLINED_FUNCTION_85_1();

      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_82_1();
      v435(v299, v300);
      v306 = v534;
      (v534)(v298, v272);
      v436 = OUTLINED_FUNCTION_46();
      (v306)(v436);
    }

    sub_1BC94C05C(v526, &qword_1EBD08698);
    sub_1BC94C05C(v516, &qword_1EBD07898);
    OUTLINED_FUNCTION_69_1();
    v437 = OUTLINED_FUNCTION_30_3();
    (v306)(v437);
    v306(v293, v272);
    return;
  }

  v257 = v501;
  (*(v564 + 32))(v501, v291, v211);
  v316 = v548;
  sub_1BCE196A0();
  v317 = v561;
  sub_1BCE195A0();
  sub_1BCE18FD0();
  v318 = OUTLINED_FUNCTION_34_3();
  v319 = v533;
  v295(v318);
  v320 = OUTLINED_FUNCTION_30_3();
  v295(v320);
  v321 = v295;
  if (v257)
  {
    sub_1BCE195A0();
    v322 = v488;
    sub_1BCE196A0();
    v323 = v257;
    v324 = v537;
    sub_1BCE19390();
    v325 = v322;
    sub_1BCE18F00();
    v326 = v324;
    v257 = v323;
    v483(v326, v538);
    v327 = v322;
    v321 = v534;
    (v534)(v327, v272);
    OUTLINED_FUNCTION_39_3(&qword_1EDA1EF40);
    OUTLINED_FUNCTION_75_0();
    v328 = OUTLINED_FUNCTION_34_3();
    v321(v328);
    v329 = OUTLINED_FUNCTION_30_3();
    v321(v329);
    if ((v325 & 1) == 0)
    {
      if (qword_1EDA1EFB0 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      OUTLINED_FUNCTION_24_9();
      OUTLINED_FUNCTION_81_1();
      OUTLINED_FUNCTION_89_1();
      OUTLINED_FUNCTION_57_1();
      v480 = v317;
      OUTLINED_FUNCTION_9_3();
      v446 = sub_1BCE18B60();
      OUTLINED_FUNCTION_79(v446);
      v562 = v447;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD078E8);
      v448 = swift_allocObject();
      OUTLINED_FUNCTION_37_2(v448, xmmword_1BCE43610);
      sub_1BCE195A0();
      OUTLINED_FUNCTION_87_0();
      OUTLINED_FUNCTION_51_2();
      v449 = OUTLINED_FUNCTION_23_12();
      v450(v449);
      v451 = OUTLINED_FUNCTION_30_3();
      v268 = v533;
      v321(v451);
      OUTLINED_FUNCTION_9_23();
      sub_1BCE19580();
      OUTLINED_FUNCTION_28_3();
      v452 = OUTLINED_FUNCTION_6_22();
      v453(v452);
      OUTLINED_FUNCTION_22_10();
      sub_1BCE195A0();
      if (static Date.uses24HourTime()())
      {
        v269 = v547;
        if (qword_1EDA1EBE8 != -1)
        {
          OUTLINED_FUNCTION_1_16();
        }

        v454 = &qword_1EDA2F018;
      }

      else
      {
        v269 = v547;
        if (qword_1EDA1EF50 != -1)
        {
          OUTLINED_FUNCTION_0_0();
        }

        v454 = &qword_1EDA2F040;
      }

      v465 = *v454;
      OUTLINED_FUNCTION_90_0();
      OUTLINED_FUNCTION_92_1();
      OUTLINED_FUNCTION_91_1();
      v466 = OUTLINED_FUNCTION_38_6();
      v467(v466);
      sub_1BCE19240();
      v468 = OUTLINED_FUNCTION_10_21();
      v469(v468);
      v426 = v487;
      goto LABEL_114;
    }
  }

  sub_1BCE195A0();
  sub_1BCE196A0();
  sub_1BCE18FD0();
  v330 = OUTLINED_FUNCTION_34_3();
  v321(v330);
  v331 = OUTLINED_FUNCTION_30_3();
  v321(v331);
  v323 = v319;
  if (v316)
  {
    sub_1BCE196A0();
    v332 = v257;
    v333 = v488;
    sub_1BCE195A0();
    v334 = v537;
    sub_1BCE19390();
    v335 = v333;
    sub_1BCE18F00();
    v483(v334, v538);
    v336 = v333;
    v257 = v332;
    (v321)(v336, v272);
    OUTLINED_FUNCTION_39_3(&qword_1EDA1EF40);
    OUTLINED_FUNCTION_75_0();
    v337 = OUTLINED_FUNCTION_34_3();
    v321(v337);
    v338 = OUTLINED_FUNCTION_30_3();
    v321(v338);
    if ((v335 & 1) == 0)
    {
      if (qword_1EDA1EFB0 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      OUTLINED_FUNCTION_24_9();
      OUTLINED_FUNCTION_81_1();
      OUTLINED_FUNCTION_89_1();
      OUTLINED_FUNCTION_57_1();
      v480 = v317;
      OUTLINED_FUNCTION_9_3();
      v455 = sub_1BCE18B60();
      OUTLINED_FUNCTION_79(v455);
      v319 = v456;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD078E8);
      v457 = swift_initStackObject();
      OUTLINED_FUNCTION_37_2(v457, xmmword_1BCE43610);
      sub_1BCE195A0();
      OUTLINED_FUNCTION_87_0();
      OUTLINED_FUNCTION_51_2();
      v458 = OUTLINED_FUNCTION_23_12();
      v459(v458);
      v460 = OUTLINED_FUNCTION_30_3();
      v321(v460);
      OUTLINED_FUNCTION_9_23();
      sub_1BCE19580();
      OUTLINED_FUNCTION_28_3();
      v461 = OUTLINED_FUNCTION_6_22();
      v462(v461);
      OUTLINED_FUNCTION_22_10();
      sub_1BCE195A0();
      v463 = static Date.uses24HourTime()();
      v562 = v319;
      if (v463)
      {
        v268 = v323;
        v269 = v547;
        if (qword_1EDA1EBE8 != -1)
        {
          OUTLINED_FUNCTION_1_16();
        }

        v464 = &qword_1EDA2F018;
      }

      else
      {
        v268 = v323;
        v269 = v547;
        if (qword_1EDA1EF50 != -1)
        {
          OUTLINED_FUNCTION_0_0();
        }

        v464 = &qword_1EDA2F040;
      }

      v470 = *v464;
      OUTLINED_FUNCTION_90_0();
      OUTLINED_FUNCTION_92_1();
      OUTLINED_FUNCTION_91_1();
      v471 = OUTLINED_FUNCTION_38_6();
      v472(v471);
      sub_1BCE19240();
      v473 = OUTLINED_FUNCTION_10_21();
      v474(v473);
      v426 = v486;
LABEL_114:
      OUTLINED_FUNCTION_33_3();
      OUTLINED_FUNCTION_70();
      if (v323)
      {
        OUTLINED_FUNCTION_13_17();
        OUTLINED_FUNCTION_12_20();
        OUTLINED_FUNCTION_48_1();

        v475 = OUTLINED_FUNCTION_18_13();
        v428 = v534;
        v534(v475);
        v257 = v323;
      }

      else
      {

        v476 = OUTLINED_FUNCTION_18_13();
        v428 = v534;
        v534(v476);
      }

      v477 = OUTLINED_FUNCTION_15_14();
      OUTLINED_FUNCTION_42_3(v477, v478);
      OUTLINED_FUNCTION_72_0();
      swift_unknownObjectRelease();
      swift_setDeallocating();
      sub_1BC9811E0();

      (*(v564 + 8))(v501, v563);
      v444 = v526;
      goto LABEL_93;
    }
  }

  (*(v564 + 8))(v257, v563);
  sub_1BC94C05C(v526, &qword_1EBD08698);
  v200 = v546;
LABEL_57:
  v339 = v519;
  sub_1BC952ABC(v516, v519, &qword_1EBD07898);
  if (__swift_getEnumTagSinglePayload(v339, 1, v200) == 1)
  {
    sub_1BC94C05C(v339, &qword_1EBD07898);
    if (qword_1EDA1EFB0 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    OUTLINED_FUNCTION_24_9();
    v340 = qword_1EDA1EFB8;
    v480 = 0x80000001BCE7D0E0;
    OUTLINED_FUNCTION_9_3();
    v564 = sub_1BCE18B60();
    v342 = v341;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD078E8);
    v343 = swift_initStackObject();
    *(v343 + 16) = xmmword_1BCE3E030;
    v344 = v493;
    sub_1BCE196B0();
    sub_1BCE19FF0();
    v518(v344, v532);
    OUTLINED_FUNCTION_19_0();
    v345 = v530;
    __swift_storeEnumTagSinglePayload(v346, v347, v348, v530);
    static Set<>.full.getter();
    v350 = v349;
    v351 = v503;
    OUTLINED_FUNCTION_35_5();
    sub_1BC952ABC(v352, v353, v354);
    v355 = v523;
    *v523 = v350;
    *(v355 + 8) = 0;
    v356 = v500;
    sub_1BC952ABC(v351, v500, &qword_1EBD07890);
    OUTLINED_FUNCTION_20(v356);
    if (v357)
    {
      v385 = v495;
      if (qword_1EDA1F658 != -1)
      {
        OUTLINED_FUNCTION_1_0();
      }

      sub_1BCE1A9F0();

      OUTLINED_FUNCTION_35_5();
      sub_1BC94C05C(v358, v359);
      OUTLINED_FUNCTION_35_5();
      sub_1BC94C05C(v360, v361);
      OUTLINED_FUNCTION_20(v356);
      v384 = v529;
      if (!v357)
      {
        sub_1BC94C05C(v356, &qword_1EBD07890);
      }
    }

    else
    {
      OUTLINED_FUNCTION_35_5();
      sub_1BC94C05C(v380, v381);
      OUTLINED_FUNCTION_35_5();
      sub_1BC94C05C(v382, v383);
      v384 = v529;
      v385 = v495;
      (*(v529 + 32))(v495, v356, v345);
    }

    v387 = v523;
    v386 = v524;
    (*(v384 + 32))(v523 + *(v524 + 24), v385, v345);
    *(v387 + *(v386 + 28)) = 0;
    *(v387 + *(v386 + 32)) = 1;
    v388 = v499;
    sub_1BC979F00(v387, v499);
    v389 = v484;
    sub_1BCE1A3A0();
    v390 = OUTLINED_FUNCTION_80();
    v391 = v520;
    v394 = sub_1BC979F64(v390, v392, v393, v520);

    OUTLINED_FUNCTION_31_4();
    v527(v391, v546);
    OUTLINED_FUNCTION_56_2();
    OUTLINED_FUNCTION_74_0();
    OUTLINED_FUNCTION_29_7();
    v395 = OUTLINED_FUNCTION_77_1();
    v396(v395);
    *(v343 + 72) = v389;
    *(v343 + 80) = v394;
    *(v343 + 88) = 0;
    *(v343 + 96) = 0;
    *(v343 + 104) = v388;
    v397 = v564;
    sub_1BC97FC70(v564, v342, v343);
    sub_1BC9807F0(v397, v342, v343);
    OUTLINED_FUNCTION_72_0();
    swift_unknownObjectRelease();
    swift_setDeallocating();
    sub_1BC9811E0();

    sub_1BC94C05C(v516, &qword_1EBD07898);
    v398 = OUTLINED_FUNCTION_55_3();
    v399 = v534;
    v534(v398);
    v399(v549, v343);
  }

  else
  {
    (*(v531 + 32))(v522, v339, v200);
    if (qword_1EDA1EFB0 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    OUTLINED_FUNCTION_24_9();
    v362 = qword_1EDA1EFB8;
    v480 = 0x80000001BCE7D1B0;
    OUTLINED_FUNCTION_9_3();
    v563 = sub_1BCE18B60();
    v564 = v363;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD078E8);
    v364 = swift_initStackObject();
    *(v364 + 16) = xmmword_1BCE3E030;
    v365 = v502;
    OUTLINED_FUNCTION_19_0();
    v366 = v530;
    __swift_storeEnumTagSinglePayload(v367, v368, v369, v530);
    static Set<>.full.getter();
    v371 = v370;
    v372 = v496;
    sub_1BC952ABC(v365, v496, &qword_1EBD07890);
    v373 = v521;
    *v521 = v371;
    *(v373 + 8) = 1;
    v374 = v372;
    v375 = v497;
    sub_1BC952ABC(v374, v497, &qword_1EBD07890);
    OUTLINED_FUNCTION_20(v375);
    if (v357)
    {
      if (qword_1EDA1F658 != -1)
      {
        OUTLINED_FUNCTION_1_0();
      }

      v405 = v494;
      sub_1BCE1A9F0();

      OUTLINED_FUNCTION_35_5();
      sub_1BC94C05C(v376, v377);
      OUTLINED_FUNCTION_35_5();
      sub_1BC94C05C(v378, v379);
      OUTLINED_FUNCTION_20(v375);
      v404 = v529;
      if (!v357)
      {
        sub_1BC94C05C(v375, &qword_1EBD07890);
      }
    }

    else
    {
      OUTLINED_FUNCTION_35_5();
      sub_1BC94C05C(v400, v401);
      OUTLINED_FUNCTION_35_5();
      sub_1BC94C05C(v402, v403);
      v404 = v529;
      v405 = v494;
      (*(v529 + 32))(v494, v375, v366);
    }

    v406 = v524;
    v407 = v521;
    (*(v404 + 32))(v521 + *(v524 + 24), v405, v366);
    *(v407 + *(v406 + 28)) = 0;
    *(v407 + *(v406 + 32)) = 1;
    v408 = v498;
    sub_1BC979F00(v407, v498);
    v409 = v484;
    sub_1BCE1A3A0();
    v410 = OUTLINED_FUNCTION_80();
    v411 = v522;
    v414 = sub_1BC979F64(v410, v412, v413, v522);

    OUTLINED_FUNCTION_31_4();
    OUTLINED_FUNCTION_56_2();
    OUTLINED_FUNCTION_74_0();
    OUTLINED_FUNCTION_29_7();
    v415 = OUTLINED_FUNCTION_77_1();
    v416(v415);
    *(v364 + 72) = v409;
    *(v364 + 80) = v414;
    *(v364 + 88) = 0;
    *(v364 + 96) = 0;
    *(v364 + 104) = v408;
    v417 = v563;
    v418 = v564;
    sub_1BC97FC70(v563, v564, v364);
    sub_1BC9807F0(v417, v418, v364);
    OUTLINED_FUNCTION_72_0();
    swift_unknownObjectRelease();
    swift_setDeallocating();
    sub_1BC9811E0();

    v527(v411, v546);
    sub_1BC94C05C(v516, &qword_1EBD07898);
    v419 = OUTLINED_FUNCTION_55_3();
    v420 = v534;
    v534(v419);
    v420(v549, v364);
  }
}