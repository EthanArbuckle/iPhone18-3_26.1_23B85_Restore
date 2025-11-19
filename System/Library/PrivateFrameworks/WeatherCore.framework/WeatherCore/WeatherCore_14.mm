uint64_t AppConfigurationStore.write(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430);
  OUTLINED_FUNCTION_7(v2);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v26 - v4;
  v6 = sub_1C96A4764();
  OUTLINED_FUNCTION_1();
  v27 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v26 - v13;
  sub_1C96A4204();
  OUTLINED_FUNCTION_23();
  sub_1C96A41F4();
  type metadata accessor for AppConfiguration();
  OUTLINED_FUNCTION_3_31();
  sub_1C946DA2C(v15, 255, v16);
  v17 = sub_1C96A41E4();
  v19 = v18;

  sub_1C96A4FD4();
  sub_1C96A4FB4();
  sub_1C96A4FC4();

  sub_1C96A4704();
  v20 = v11;
  v21 = *(v27 + 1);
  v21(v20, v6);
  sub_1C96A4874();
  v22 = sub_1C96A4A54();
  v27 = v21;
  v23 = v22;
  OUTLINED_FUNCTION_6();
  (*(v24 + 16))(v5, a1, v23);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v23);
  sub_1C9482E28(v5);
  sub_1C9482EF0();
  sub_1C9482F3C(v17, v19);
  return v27(v14, v6);
}

uint64_t AppConfigurationStore.deinit()
{

  return v0;
}

uint64_t AppConfigurationStore.__deallocating_deinit()
{
  AppConfigurationStore.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

WeatherCore::NewsConfiguration __swiftcall NewsConfiguration.init(enabled:trendingPlacement:severePlacement:)(Swift::Bool_optional enabled, WeatherCore::NewsConfiguration::TrendingPlacement_optional trendingPlacement, WeatherCore::NewsConfiguration::SeverePlacement_optional severePlacement)
{
  v4 = *trendingPlacement.value;
  v5 = *severePlacement.value;
  if (v4 == 3)
  {
    LOBYTE(v4) = 0;
  }

  *v3 = enabled.value == 2 || enabled.value;
  v3[1] = v4;
  v3[2] = (v5 == 2) | v5 & 1;
  result.enabled = enabled.value;
  return result;
}

uint64_t NewsConfiguration.TrendingPlacement.rawValue.getter()
{
  v1 = 0x70614D776F6C6562;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000001ALL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x72694165766F6261;
  }
}

uint64_t sub_1C95A2E14@<X0>(uint64_t *a1@<X8>)
{
  result = NewsConfiguration.TrendingPlacement.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t NewsConfiguration.SeverePlacement.rawValue.getter()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0xD000000000000012;
  }
}

unint64_t sub_1C95A2E9C@<X0>(unint64_t *a1@<X8>)
{
  result = NewsConfiguration.SeverePlacement.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t NewsConfiguration.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6310);
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13 - v8;
  v10 = *(v1 + 1);
  v14 = *(v1 + 2);
  v15 = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C9480D44();
  sub_1C96A7F54();
  v20 = 0;
  OUTLINED_FUNCTION_0_59();
  sub_1C96A7D34();
  if (!v2)
  {
    v11 = v14;
    v19 = v15;
    v18 = 1;
    sub_1C95A3084();
    OUTLINED_FUNCTION_0_59();
    sub_1C96A7D74();
    v17 = v11;
    v16 = 2;
    sub_1C95A30D8();
    OUTLINED_FUNCTION_0_59();
    sub_1C96A7D74();
  }

  return (*(v6 + 8))(v9, v4);
}

unint64_t sub_1C95A3084()
{
  result = qword_1EDB7EDF0;
  if (!qword_1EDB7EDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7EDF0);
  }

  return result;
}

unint64_t sub_1C95A30D8()
{
  result = qword_1EDB7EE08;
  if (!qword_1EDB7EE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7EE08);
  }

  return result;
}

uint64_t sub_1C95A3150@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C94E2AD4();
  *a1 = result;
  return result;
}

uint64_t sub_1C95A3180@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C9480DA0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1C95A31AC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C94E2AD4();
  *a1 = result;
  return result;
}

uint64_t sub_1C95A31D4(uint64_t a1)
{
  v2 = sub_1C9480D44();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C95A3210(uint64_t a1)
{
  v2 = sub_1C9480D44();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t static NewsConfiguration.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[2];
  if ((sub_1C94BDAD0(a1[1], a2[1]) & 1) == 0)
  {
    return 0;
  }

  return sub_1C94BDB98(v2);
}

unint64_t sub_1C95A3374()
{
  result = qword_1EC3A6318;
  if (!qword_1EC3A6318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6318);
  }

  return result;
}

unint64_t sub_1C95A33CC()
{
  result = qword_1EC3A6320;
  if (!qword_1EC3A6320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6320);
  }

  return result;
}

uint64_t __swift_memcpy3_1(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for NewsConfiguration(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v3 = -1;
    return (v3 + 1);
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        goto LABEL_5;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
LABEL_5:
        v3 = (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776962;
        return (v3 + 1);
      }
    }
  }

  v4 = *a1;
  v5 = v4 >= 2;
  v3 = (v4 + 2147483646) & 0x7FFFFFFF;
  if (!v5)
  {
    v3 = -1;
  }

  return (v3 + 1);
}

unint64_t sub_1C95A34CC()
{
  result = qword_1EC3A6328;
  if (!qword_1EC3A6328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6328);
  }

  return result;
}

uint64_t NotificationsOptInManager.__allocating_init()()
{
  v0 = swift_allocObject();
  NotificationsOptInManager.init()();
  return v0;
}

void NotificationsOptInManager.didDismissTip(for:)(uint64_t a1)
{
  v2 = sub_1C96A4A54();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C96A7004();
  v7 = OUTLINED_FUNCTION_2_45();
  v9 = [v7 v8];

  if (v9)
  {
    v10 = sub_1C96A6ED4();

    MEMORY[0x1EEE9AC00](v11);
    *(&v17 - 2) = a1;
    sub_1C96A53C4();
    v12 = sub_1C957FDE4(sub_1C95A4168);

    if (v12)
    {
    }

    else
    {
      v20 = MEMORY[0x1E69E6370];
      LOBYTE(v19) = 1;
      sub_1C946306C(&v19, &v18);
      sub_1C96A53C4();
      swift_isUniquelyReferenced_nonNull_native();
      v17 = v10;
      sub_1C950B354();

      sub_1C951B510();
    }

    _s11WeatherCore11SystemClockV4time10Foundation4DateVvg_0();
    sub_1C96A49E4();
    (*(v3 + 8))(v5, v2);
    sub_1C951B58C();
    v13 = sub_1C96A7004();
    v14 = OUTLINED_FUNCTION_2_45();
    v16 = [v14 v15];

    if (__OFADD__(v16, 1))
    {
      __break(1u);
    }

    else
    {
      sub_1C951B5F8();
    }
  }
}

Swift::Bool __swiftcall NotificationsOptInManager.severeFeatureAnnouncementAcknowledged()()
{
  OUTLINED_FUNCTION_1_43();
  v0 = sub_1C96A7004();
  v1 = OUTLINED_FUNCTION_2_45();
  v3 = [v1 v2];

  return v3;
}

Swift::Bool __swiftcall NotificationsOptInManager.loweredPermissionsSheetShown()()
{
  OUTLINED_FUNCTION_1_43();
  v0 = sub_1C96A7004();
  v1 = OUTLINED_FUNCTION_2_45();
  v3 = [v1 v2];

  return v3;
}

Swift::Void __swiftcall NotificationsOptInManager.resetTappedAllowNotifications()()
{
  v1 = *(v0 + 16);
  OUTLINED_FUNCTION_1_43();
  v2 = sub_1C96A7004();
  [v1 removeObjectForKey_];
}

uint64_t NotificationsOptInManager.tipDismissed(for:)()
{
  v1 = *(v0 + 16);
  OUTLINED_FUNCTION_1_43();
  v2 = sub_1C96A7004();
  v3 = [v1 dictionaryForKey_];

  if (v3)
  {
    sub_1C96A6ED4();

    MEMORY[0x1EEE9AC00](v4);
    v5 = sub_1C957FDE4(sub_1C95A3EB4);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_1C95A3C24(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1C96A7DE4() & 1;
  }
}

uint64_t NotificationsOptInManager.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1C95A4004(uint64_t result, void *a2, unint64_t a3, uint64_t a4)
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
      v16 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == v10)
      {
        sub_1C96A53C4();
        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;
      result = sub_1C96A53C4();
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

uint64_t CurrentLocationStore.readCachedLocation()@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5458);
  OUTLINED_FUNCTION_7(v2);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v10 - v4;
  CurrentLocationStore.readCachedGeocodedLocation()(&v10 - v4);
  v6 = type metadata accessor for CachedCurrentLocation(0);
  OUTLINED_FUNCTION_23_1(v5, 1, v6);
  if (v7)
  {
    sub_1C9470AFC(v5, &qword_1EC3A5458);
    return CurrentLocationStore.readCachedRawLocation()(a1);
  }

  else
  {
    OUTLINED_FUNCTION_2_6();
    sub_1C95A62B4(v5, a1, v8);
    return __swift_storeEnumTagSinglePayload(a1, 0, 1, v6);
  }
}

Swift::Void __swiftcall CurrentLocationStore.cacheLocation(_:)(CLLocation a1)
{
  isa = a1.super.isa;
  v3 = sub_1C96A4A54();
  v4 = OUTLINED_FUNCTION_7(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_14();
  v7 = v6 - v5;
  sub_1C96A6304();
  v9 = *(v1 + 16);
  v8 = *(v1 + 24);
  sub_1C96A53C4();
  [(objc_class *)isa coordinate];
  v11 = v10;
  v13 = v12;
  sub_1C96A5954();
  sub_1C96A5944();
  sub_1C95DA274(v9, *&v8, v7, v14, v11, v13);
  OUTLINED_FUNCTION_13_23();
  if (v8)
  {

    OUTLINED_FUNCTION_22_15();
  }

  else
  {
    OUTLINED_FUNCTION_22_15();
  }
}

uint64_t CurrentLocationStore.cacheLocation(_:)()
{
  v1 = sub_1C96A4A54();
  v2 = OUTLINED_FUNCTION_7(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_14();
  v5 = (v4 - v3);
  v6 = type metadata accessor for Location();
  v7 = OUTLINED_FUNCTION_7(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_14();
  v10 = v9 - v8;
  sub_1C96A6304();
  v12 = *(v0 + 16);
  v11 = *(v0 + 24);
  OUTLINED_FUNCTION_10_22();
  v13 = OUTLINED_FUNCTION_46();
  sub_1C94899E8(v13, v14, v15);
  sub_1C96A5954();
  sub_1C96A53C4();
  sub_1C96A5944();
  sub_1C9541108(v12, v11, v10, v5, v17);
  OUTLINED_FUNCTION_13_23();
  if (v5)
  {

    OUTLINED_FUNCTION_22_15();
  }

  else
  {
    OUTLINED_FUNCTION_22_15();
  }
}

Swift::Void __swiftcall CurrentLocationStore.clearCache()()
{
  sub_1C96A6504();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_14();
  (*(v3 + 104))(v2 - v1, *MEMORY[0x1E69D62C0]);
  sub_1C96A6524();
  swift_allocObject();
  sub_1C96A6514();
  sub_1C96A6334();
  sub_1C96A63B4();

  sub_1C96A6334();
  sub_1C96A63B4();
}

uint64_t CurrentLocationStore.deinit()
{
  sub_1C96A3D04();
  sub_1C96A64A4();

  return v0;
}

uint64_t CurrentLocationStore.__deallocating_deinit()
{
  CurrentLocationStore.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 56, 7);
}

uint64_t CurrentLocationStore.__allocating_init(database:)(uint64_t a1)
{
  v2 = swift_allocObject();
  CurrentLocationStore.init(database:)(a1);
  return v2;
}

void *CurrentLocationStore.init(database:)(uint64_t a1)
{
  v1[2] = 0x746E6572727563;
  v1[3] = 0xE700000000000000;
  v1[4] = a1;
  sub_1C95A6260();
  sub_1C96A3D04();
  v3 = sub_1C96A64B4();
  if (v2)
  {

    swift_deallocPartialClassInstance();
  }

  else
  {
    v1[5] = v3;
    sub_1C9542604();
    v1[6] = sub_1C96A64B4();
    sub_1C96A3D04();
    sub_1C96A6324();

    sub_1C96A6374();

    sub_1C96A3D04();
    sub_1C96A6324();

    sub_1C96A6374();
  }

  return v1;
}

uint64_t CurrentLocationStore.readCachedRawLocation()@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v86 = a1;
  v84 = type metadata accessor for CachedCurrentLocation(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_24();
  v78 = v5;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_18_1();
  v79 = v7;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v8);
  v82 = &v75 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430);
  OUTLINED_FUNCTION_7(v10);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_24_12();
  v12 = sub_1C96A4A54();
  OUTLINED_FUNCTION_1();
  v81 = v13;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_14();
  v80 = v16 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6340);
  OUTLINED_FUNCTION_7(v17);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v18);
  v83 = &v75 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4B60);
  OUTLINED_FUNCTION_7(v20);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v21);
  v85 = &v75 - v22;
  OUTLINED_FUNCTION_15_4();
  v23 = sub_1C96A61C4();
  OUTLINED_FUNCTION_1();
  v25 = v24;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_14();
  v29 = v28 - v27;
  if (qword_1EDB7CFC8 != -1)
  {
    OUTLINED_FUNCTION_0_49();
  }

  v30 = sub_1C96A6154();
  __swift_project_value_buffer(v30, qword_1EDB7CFD0);
  v31 = sub_1C96A6134();
  v32 = sub_1C96A76A4();
  if (OUTLINED_FUNCTION_14_7(v32))
  {
    v33 = OUTLINED_FUNCTION_29();
    v77 = v25;
    *v33 = 0;
    _os_log_impl(&dword_1C945E000, v31, v32, "Attempting to read cached raw current location", v33, 2u);
    v25 = v77;
    OUTLINED_FUNCTION_26();
  }

  sub_1C96A6314();
  v35 = *(v3 + 16);
  v34 = *(v3 + 24);
  v89 = MEMORY[0x1E69E6158];
  v90 = MEMORY[0x1E69D62D8];
  v87 = v35;
  v88 = v34;
  sub_1C96A53C4();
  sub_1C96A6224();
  __swift_destroy_boxed_opaque_existential_1Tm(&v87);
  sub_1C96A63E4();
  v36 = v85;
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v37, v38, v39, v40);
  sub_1C96A62D4();

  sub_1C9470AFC(v36, &qword_1EC3A4B60);
  (*(v25 + 8))(v29, v23);
  v85 = v91;
  if (!v91)
  {
    v41 = sub_1C96A6134();
    v42 = sub_1C96A76A4();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = OUTLINED_FUNCTION_29();
      *v43 = 0;
      _os_log_impl(&dword_1C945E000, v41, v42, "No cached raw current location found on disk", v43, 2u);
      OUTLINED_FUNCTION_26();
    }

    v44 = 1;
    v45 = v84;
    return __swift_storeEnumTagSinglePayload(v86, v44, 1, v45);
  }

  v46 = v93;
  v47 = v83;
  v77 = v92;
  sub_1C96A6354();
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6348);
  result = OUTLINED_FUNCTION_23_1(v47, 1, v48);
  if (v50)
  {
    __break(1u);
  }

  else
  {
    sub_1C96A6294();
    v51 = v87;
    v52 = v88;
    (*(*(v48 - 8) + 8))(v47, v48);
    v83 = v46;
    sub_1C96A6354();
    result = OUTLINED_FUNCTION_23_1(v2, 1, v12);
    v53 = v81;
    v54 = v82;
    v56 = v79;
    v55 = v80;
    if (!v50)
    {
      (*(v81 + 32))(v80, v2, v12);
      v57 = [objc_allocWithZone(MEMORY[0x1E6985C40]) initWithLatitude:v51 longitude:v52];
      v45 = v84;
      (*(v53 + 16))(&v54[*(v84 + 20)], v55, v12);
      *v54 = v57;
      type metadata accessor for CachedCurrentLocation.EmbeddedLocation(0);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_0_61();
      v58 = v56;
      sub_1C94899E8(v54, v56, v59);
      v60 = v12;
      v61 = sub_1C96A6134();
      v62 = sub_1C96A76A4();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        v76 = v60;
        v64 = v63;
        *&v65 = COERCE_DOUBLE(swift_slowAlloc());
        v87 = *&v65;
        *v64 = 141558275;
        *(v64 + 4) = 1752392040;
        *(v64 + 12) = 2081;
        OUTLINED_FUNCTION_0_61();
        sub_1C94899E8(v58, v78, v66);
        sub_1C96A70A4();
        OUTLINED_FUNCTION_1_44();
        sub_1C95A6310(v68, v67);
        v69 = OUTLINED_FUNCTION_46();
        v72 = sub_1C9484164(v69, v70, v71);

        *(v64 + 14) = v72;
        _os_log_impl(&dword_1C945E000, v61, v62, "Got a cached raw current location. cachedCurrentLocation=%{private,mask.hash}s", v64, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm(v65);
        OUTLINED_FUNCTION_26();
        OUTLINED_FUNCTION_26();

        sub_1C95075B0(v85);
        (*(v53 + 8))(v55, v76);
      }

      else
      {

        sub_1C95075B0(v85);
        OUTLINED_FUNCTION_1_44();
        sub_1C95A6310(v58, v73);
        (*(v53 + 8))(v55, v60);
      }

      OUTLINED_FUNCTION_2_6();
      sub_1C95A62B4(v54, v86, v74);
      v44 = 0;
      return __swift_storeEnumTagSinglePayload(v86, v44, 1, v45);
    }
  }

  __break(1u);
  return result;
}

uint64_t CurrentLocationStore.readCachedGeocodedLocation()@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v169 = a1;
  v170 = type metadata accessor for CachedCurrentLocation(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_24();
  v149 = v5;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_18_1();
  v155 = v7;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v8);
  v156 = &v144 - v9;
  OUTLINED_FUNCTION_15_4();
  sub_1C96A4DF4();
  OUTLINED_FUNCTION_1();
  v162 = v11;
  v163 = v10;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_14();
  v161 = v13 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F60);
  v15 = OUTLINED_FUNCTION_7(v14);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_24();
  v150 = v16;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v144 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430);
  v21 = OUTLINED_FUNCTION_7(v20);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_24();
  v151 = v22;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_18_1();
  v153 = v24;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_18_1();
  v167 = v26;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v27);
  v157 = (&v144 - v28);
  OUTLINED_FUNCTION_15_4();
  sub_1C96A4A54();
  OUTLINED_FUNCTION_1();
  v165 = v30;
  v166 = v29;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_14();
  v164 = v32 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4B40);
  OUTLINED_FUNCTION_7(v33);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v34);
  v159 = &v144 - v35;
  OUTLINED_FUNCTION_15_4();
  v158 = type metadata accessor for Location();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_24();
  v154 = v37;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_18_1();
  v152 = v39;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_18_1();
  v160 = v41;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v144 - v43;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4B60);
  OUTLINED_FUNCTION_7(v45);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_24_12();
  sub_1C96A61C4();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_14();
  if (qword_1EDB7CFC8 != -1)
  {
    OUTLINED_FUNCTION_0_49();
  }

  v48 = sub_1C96A6154();
  v168 = __swift_project_value_buffer(v48, qword_1EDB7CFD0);
  v49 = sub_1C96A6134();
  v50 = sub_1C96A76A4();
  if (OUTLINED_FUNCTION_14_7(v50))
  {
    v51 = OUTLINED_FUNCTION_29();
    v148 = v2;
    *v51 = 0;
    _os_log_impl(&dword_1C945E000, v49, v50, "Attempting to read cached geocoded current location", v51, 2u);
    v2 = v148;
    OUTLINED_FUNCTION_26();
  }

  sub_1C96A6314();
  v53 = *(v3 + 16);
  v52 = *(v3 + 24);
  __dst[3] = MEMORY[0x1E69E6158];
  __dst[4] = MEMORY[0x1E69D62D8];
  __dst[0] = v53;
  __dst[1] = v52;
  sub_1C96A53C4();
  sub_1C96A6224();
  __swift_destroy_boxed_opaque_existential_1Tm(__dst);
  sub_1C96A63E4();
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v54, v55, v56, v57);
  sub_1C96A62D4();

  sub_1C9470AFC(v2, &qword_1EC3A4B60);
  v65 = OUTLINED_FUNCTION_46();
  v66(v65);
  v67 = v174[0];
  if (!v174[0])
  {
    v58 = sub_1C96A6134();
    v59 = sub_1C96A76A4();
    if (OUTLINED_FUNCTION_14_7(v59))
    {
      v60 = OUTLINED_FUNCTION_29();
      *v60 = 0;
      _os_log_impl(&dword_1C945E000, v58, v59, "No cached geocoded current location found on disk", v60, 2u);
      OUTLINED_FUNCTION_26();
    }

    OUTLINED_FUNCTION_3();
    return __swift_storeEnumTagSinglePayload(v61, v62, v63, v64);
  }

  v68 = v174[1];
  v69 = v174[2];
  v70 = v159;
  sub_1C96A6354();
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4B48);
  v72 = OUTLINED_FUNCTION_18_19();
  result = OUTLINED_FUNCTION_23_1(v72, v73, v71);
  if (v75)
  {
    __break(1u);
  }

  else
  {
    v147 = v68;
    v148 = v67;
    sub_1C96A6294();
    (*(*(v71 - 8) + 8))(v70, v71);
    v76 = v157;
    v146 = v69;
    sub_1C96A6354();
    v77 = OUTLINED_FUNCTION_18_19();
    v78 = v166;
    result = OUTLINED_FUNCTION_23_1(v77, v79, v166);
    v80 = v163;
    v81 = v158;
    if (!v75)
    {
      v157 = *(v165 + 32);
      (v157)(v164, v76, v78);
      memcpy(v173, v44, sizeof(v173));
      memcpy(__dst, v44, 0x48uLL);
      sub_1C95087DC(v173, v174);
      Location.Identifier.with(id:name:coordinate:)(1.81844032e-306, 0xE700000000000000, 0, 0, 0.0, 0.0, 1, v172);
      memcpy(v174, __dst, sizeof(v174));
      sub_1C953AEDC(v174);
      memcpy(__dst, v172, 0x48uLL);
      OUTLINED_FUNCTION_3();
      __swift_storeEnumTagSinglePayload(v82, v83, v84, v80);
      OUTLINED_FUNCTION_3();
      __swift_storeEnumTagSinglePayload(v85, v86, v87, v78);
      v88 = *&v44[v81[11]];
      v159 = v88;
      if (!v88)
      {
        v159 = [objc_allocWithZone(MEMORY[0x1E6985C40]) initWithLatitude:v173[4] longitude:v173[5]];
      }

      v89 = v150;
      sub_1C9470AA0(v19, v150, &unk_1EC3A5F60);
      OUTLINED_FUNCTION_23_1(v89, 1, v80);
      if (v75)
      {
        v90 = v44;
        (*(v162 + 16))(v161, &v44[v81[5]], v80);
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v89, 1, v80);
        v92 = v88;
        sub_1C95087DC(__dst, v171);
        if (EnumTagSinglePayload != 1)
        {
          sub_1C9470AFC(v89, &unk_1EC3A5F60);
        }

        v44 = v90;
      }

      else
      {
        (*(v162 + 32))(v161, v89, v80);
        v93 = v88;
        sub_1C95087DC(__dst, v171);
      }

      v94 = v153;
      v95 = v151;
      sub_1C9470AA0(v167, v151, &unk_1EC3A5430);
      v96 = OUTLINED_FUNCTION_18_19();
      OUTLINED_FUNCTION_23_1(v96, v97, v78);
      v145 = v19;
      if (v75)
      {
        sub_1C9470AA0(&v44[v81[6]], v94, &unk_1EC3A5430);
        v98 = OUTLINED_FUNCTION_18_19();
        OUTLINED_FUNCTION_23_1(v98, v99, v78);
        if (!v75)
        {
          sub_1C9470AFC(v95, &unk_1EC3A5430);
        }
      }

      else
      {
        (v157)(v94, v95, v78);
        __swift_storeEnumTagSinglePayload(v94, 0, 1, v78);
      }

      v100 = &v44[v81[7]];
      v101 = *v100;
      v102 = v100[1];
      v103 = &v44[v81[8]];
      v153 = *v103;
      v104 = v44;
      v105 = *(v103 + 1);
      v106 = v81[10];
      v107 = &v104[v81[9]];
      v109 = *v107;
      v108 = *(v107 + 1);
      v157 = v104;
      v110 = *&v104[v106 + 8];
      v150 = *&v104[v106];
      v151 = v101;
      v111 = v81[11];
      v112 = v152;
      *&v152[v111] = 0;
      memcpy(v112, __dst, 0x48uLL);
      (*(v162 + 32))(&v112[v81[5]], v161, v163);
      sub_1C948E818(v94, &v112[v81[6]]);
      sub_1C96A53C4();
      sub_1C96A53C4();
      sub_1C96A53C4();
      sub_1C96A53C4();
      sub_1C953AEDC(__dst);
      v113 = &v112[v81[7]];
      *v113 = v151;
      *(v113 + 1) = v102;
      v114 = &v112[v81[8]];
      *v114 = v153;
      *(v114 + 1) = v105;
      v115 = &v112[v81[9]];
      *v115 = v109;
      *(v115 + 1) = v108;
      v116 = &v112[v81[10]];
      *v116 = v150;
      *(v116 + 1) = v110;
      sub_1C9470AFC(v167, &unk_1EC3A5430);
      sub_1C9470AFC(v145, &unk_1EC3A5F60);
      v117 = v160;
      *&v112[v111] = v159;
      OUTLINED_FUNCTION_5_27();
      sub_1C95A62B4(v112, v117, v118);
      OUTLINED_FUNCTION_10_22();
      v119 = v154;
      sub_1C94899E8(v117, v154, v120);
      v121 = v170;
      v122 = v164;
      v123 = v165;
      v124 = v156;
      v125 = v166;
      (*(v165 + 16))(&v156[*(v170 + 20)], v164, v166);
      sub_1C95A62B4(v119, v124, v94);
      type metadata accessor for CachedCurrentLocation.EmbeddedLocation(0);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_0_61();
      v126 = v155;
      sub_1C94899E8(v124, v155, v127);
      v128 = sub_1C96A6134();
      v129 = sub_1C96A76A4();
      if (OUTLINED_FUNCTION_14_7(v129))
      {
        v130 = swift_slowAlloc();
        v131 = swift_slowAlloc();
        v172[0] = v131;
        *v130 = 141558275;
        *(v130 + 4) = 1752392040;
        *(v130 + 12) = 2081;
        OUTLINED_FUNCTION_0_61();
        v132 = v121;
        sub_1C94899E8(v126, v149, v133);
        v134 = sub_1C96A70A4();
        v136 = v135;
        OUTLINED_FUNCTION_1_44();
        sub_1C95A6310(v126, v137);
        v138 = sub_1C9484164(v134, v136, v172);

        *(v130 + 14) = v138;
        v121 = v132;
        _os_log_impl(&dword_1C945E000, v128, v129, "Got a cached geocoded current location. cachedCurrentLocation=%{private,mask.hash}s", v130, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm(v131);
        OUTLINED_FUNCTION_26();
        OUTLINED_FUNCTION_26();

        sub_1C95075B0(v148);
        OUTLINED_FUNCTION_5_27();
        sub_1C95A6310(v160, v139);
        (*(v165 + 8))(v164, v166);
      }

      else
      {

        sub_1C95075B0(v148);
        OUTLINED_FUNCTION_1_44();
        sub_1C95A6310(v126, v140);
        OUTLINED_FUNCTION_5_27();
        sub_1C95A6310(v117, v141);
        (*(v123 + 8))(v122, v125);
      }

      sub_1C95A6310(v157, v128);
      OUTLINED_FUNCTION_2_6();
      v142 = v169;
      sub_1C95A62B4(v124, v169, v143);
      v61 = v142;
      v62 = 0;
      v63 = 1;
      v64 = v121;
      return __swift_storeEnumTagSinglePayload(v61, v62, v63, v64);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C95A5E8C()
{
  v0 = sub_1C96A6154();
  OUTLINED_FUNCTION_1();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_14();
  v6 = v5 - v4;
  v7 = sub_1C96A64D4();
  __swift_allocate_value_buffer(v7, qword_1EDB7BF30);
  __swift_project_value_buffer(v7, qword_1EDB7BF30);
  if (qword_1EDB7CFC8 != -1)
  {
    OUTLINED_FUNCTION_0_49();
  }

  v8 = __swift_project_value_buffer(v0, qword_1EDB7CFD0);
  (*(v2 + 16))(v6, v8, v0);
  sub_1C96A64C4();
  return (*(v2 + 8))(v6, v0);
}

uint64_t static CurrentLocationStore.location.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDB7BF28 != -1)
  {
    OUTLINED_FUNCTION_9_24();
  }

  v2 = sub_1C96A64D4();
  v3 = __swift_project_value_buffer(v2, qword_1EDB7BF30);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static CurrentLocationStore.location.setter(uint64_t a1)
{
  if (qword_1EDB7BF28 != -1)
  {
    OUTLINED_FUNCTION_9_24();
  }

  v2 = sub_1C96A64D4();
  v3 = __swift_project_value_buffer(v2, qword_1EDB7BF30);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  swift_endAccess();
  v4 = OUTLINED_FUNCTION_11();
  return v5(v4);
}

uint64_t (*static CurrentLocationStore.location.modify())()
{
  if (qword_1EDB7BF28 != -1)
  {
    OUTLINED_FUNCTION_9_24();
  }

  v0 = sub_1C96A64D4();
  __swift_project_value_buffer(v0, qword_1EDB7BF30);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t static CurrentLocationStore.preferredCacheSize.getter@<X0>(void *a1@<X8>)
{
  *a1 = 32;
  v2 = *MEMORY[0x1E69D6298];
  sub_1C96A64E4();
  OUTLINED_FUNCTION_6();
  v5 = *(v4 + 104);

  return v5(a1, v2, v3);
}

unint64_t sub_1C95A6260()
{
  result = qword_1EDB7BBB0;
  if (!qword_1EDB7BBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7BBB0);
  }

  return result;
}

uint64_t sub_1C95A62B4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_6();
  v4 = OUTLINED_FUNCTION_11();
  v5(v4);
  return a2;
}

uint64_t sub_1C95A6310(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_6();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t dispatch thunk of CurrentLocationStoreType.cacheLocation(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 16))();
}

{
  return (*(a3 + 24))();
}

uint64_t HistoricalFactsConfiguration.init(forecastStringAllowList:)@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  if (!result)
  {
    if (qword_1EDB7D890 != -1)
    {
      OUTLINED_FUNCTION_0_62();
      swift_once();
    }

    result = sub_1C96A53C4();
  }

  *a2 = result;
  return result;
}

uint64_t HistoricalFactsConfiguration.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6360);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v11 - v7;
  v9 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C947E3B4();
  sub_1C96A53C4();
  sub_1C96A7F54();
  v11[1] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6358);
  sub_1C947E408(&qword_1EDB7CDF8);
  sub_1C96A7D74();

  return (*(v5 + 8))(v8, v3);
}

BOOL sub_1C95A65F0@<W0>(_BYTE *a1@<X8>)
{
  result = sub_1C94E2B20();
  *a1 = result;
  return result;
}

unint64_t sub_1C95A6624@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1C947E478();
  *a1 = result;
  a1[1] = v3;
  return result;
}

BOOL sub_1C95A664C@<W0>(_BYTE *a1@<X8>)
{
  result = sub_1C94E2B20();
  *a1 = result;
  return result;
}

uint64_t sub_1C95A6678(uint64_t a1)
{
  v2 = sub_1C947E3B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C95A66B4(uint64_t a1)
{
  v2 = sub_1C947E3B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1C95A671C()
{
  result = qword_1EC3A6368;
  if (!qword_1EC3A6368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6368);
  }

  return result;
}

uint64_t GeocodeService.__allocating_init(appConfigurationManager:privacySampler:locationMetadataUpdater:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  GeocodeService.init(appConfigurationManager:privacySampler:locationMetadataUpdater:)(a1, a2, a3);
  return v6;
}

uint64_t GeocodeService.setupWeatherKitGeocoding(using:)(uint64_t a1)
{
  sub_1C9469B6C(a1, v4);
  v2 = OBJC_IVAR____TtC11WeatherCore14GeocodeService_weatherService;
  swift_beginAccess();
  sub_1C95A69E8(v4, v1 + v2);
  return swift_endAccess();
}

uint64_t GeocodeServiceType.reverseGeocode(location:)()
{
  type metadata accessor for Location();
  sub_1C96A5784();
  v0 = sub_1C96A55A4();
  type metadata accessor for GeocodeResult(0);
  v1 = sub_1C96A5644();

  return v1;
}

uint64_t GeocodeResult.init(location:isExact:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  sub_1C94898C4(a1, a3);
  result = type metadata accessor for GeocodeResult(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t sub_1C95A69A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C9489760(a1, a2);
  result = type metadata accessor for GeocodeResult(0);
  *(a2 + *(result + 20)) = 1;
  return result;
}

uint64_t sub_1C95A69E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6378);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C95A6ABC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A63C0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  if (qword_1EDB7CF88 != -1)
  {
    swift_once();
  }

  v8 = sub_1C96A6154();
  __swift_project_value_buffer(v8, qword_1EDB7CF90);
  v9 = sub_1C96A6134();
  v10 = sub_1C96A76A4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1C945E000, v9, v10, "About to configure GeoJSON allow list", v11, 2u);
    MEMORY[0x1CCA8E3D0](v11, -1, -1);
  }

  v12 = sub_1C95ABB8C(a2, v7);
  v14[1] = *(v3 + OBJC_IVAR____TtC11WeatherCore14GeocodeService_serverSideRegionGeoJSONLock);
  MEMORY[0x1EEE9AC00](v12);
  v14[-2] = v3;
  v14[-1] = v7;
  sub_1C96A5134();
  sub_1C96A3D04();
  sub_1C96A5554();

  return sub_1C9470AFC(v7, &qword_1EC3A63C0);
}

WeatherCore::ReverseGeocodeSource __swiftcall GeocodeService.reverseGeocodeSource(for:)(CLLocation a1)
{
  v2 = v1;
  sub_1C95A6D14(a1.super.isa, v5);
  v3 = v6 == 0;
  result = sub_1C9470AFC(v5, &qword_1EC3A6378);
  *v2 = v3;
  return result;
}

void sub_1C95A6D14(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v79 = a2;
  v5 = type metadata accessor for AppConfiguration();
  MEMORY[0x1EEE9AC00](v5);
  v78 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDB7CF88 != -1)
  {
    swift_once();
  }

  v7 = sub_1C96A6154();
  __swift_project_value_buffer(v7, qword_1EDB7CF90);
  v8 = a1;
  v9 = sub_1C96A6134();
  v10 = sub_1C96A76A4();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v76 = v5;
    v12 = v11;
    v13 = swift_slowAlloc();
    v77 = v3;
    v14 = v13;
    v80[0] = v13;
    *v12 = 141558275;
    *(v12 + 4) = 1752392040;
    *(v12 + 12) = 2081;
    [v8 coordinate];
    v15 = sub_1C96A7844();
    v17 = sub_1C9484164(v15, v16, v80);

    *(v12 + 14) = v17;
    _os_log_impl(&dword_1C945E000, v9, v10, "About to determine if we can do a server side revGeo. locationID=%{private,mask.hash}s", v12, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    v3 = v77;
    MEMORY[0x1CCA8E3D0](v14, -1, -1);
    v18 = v12;
    v5 = v76;
    MEMORY[0x1CCA8E3D0](v18, -1, -1);
  }

  sub_1C96A4EE4();
  sub_1C96A4EC4();
  if (qword_1EDB7CAB8 != -1)
  {
    swift_once();
  }

  sub_1C96A4EB4();

  if (v81)
  {
    if (v81 == 1)
    {
      v19 = v8;
      v20 = sub_1C96A6134();
      v21 = sub_1C96A76A4();

      if (!os_log_type_enabled(v20, v21))
      {
LABEL_35:

        v70 = v79;
        *(v79 + 32) = 0;
        *v70 = 0u;
        v70[1] = 0u;
        return;
      }

      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v80[0] = v23;
      *v22 = 141558275;
      *(v22 + 4) = 1752392040;
      *(v22 + 12) = 2081;
      [v19 coordinate];
      v24 = sub_1C96A7844();
      v26 = sub_1C9484164(v24, v25, v80);

      *(v22 + 14) = v26;
      _os_log_impl(&dword_1C945E000, v20, v21, "We have a local override to force client side revGeo, so doing that. locationID=%{private,mask.hash}s", v22, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v23);
      goto LABEL_29;
    }

    v37 = v3;
    v46 = v8;
    v20 = sub_1C96A6134();
    v39 = sub_1C96A76A4();

    if (os_log_type_enabled(v20, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v80[0] = v41;
      *v40 = 141558275;
      *(v40 + 4) = 1752392040;
      *(v40 + 12) = 2081;
      [v46 coordinate];
      v47 = sub_1C96A7844();
      v49 = sub_1C9484164(v47, v48, v80);

      *(v40 + 14) = v49;
      v45 = "We have a local override to force server side revGeo, so doing that. locationID=%{private,mask.hash}s";
      goto LABEL_18;
    }

    goto LABEL_20;
  }

  v27 = v8;
  v28 = *(v3 + OBJC_IVAR____TtC11WeatherCore14GeocodeService_appConfigurationManager + 24);
  v29 = *(v3 + OBJC_IVAR____TtC11WeatherCore14GeocodeService_appConfigurationManager + 32);
  __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC11WeatherCore14GeocodeService_appConfigurationManager), v28);
  v30 = v78;
  (*(v29 + 8))(v28, v29);
  v31 = *(v30 + *(v5 + 56));
  sub_1C96A53C4();
  sub_1C948CC9C(v30, type metadata accessor for AppConfiguration);
  v32 = [objc_opt_self() sharedConfiguration];
  if (v32)
  {
    v33 = sub_1C94A3EF4(v32);
    v35 = v34;
    v36 = sub_1C95AB304(v31, v33, v34);

    if (!v36)
    {
      sub_1C96A53C4();
      v52 = v27;
      v20 = sub_1C96A6134();
      v53 = sub_1C96A76A4();

      if (!os_log_type_enabled(v20, v53))
      {

        goto LABEL_35;
      }

      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v80[0] = v23;
      *v22 = 136315651;
      if (v35)
      {
        v54 = v33;
      }

      else
      {
        v54 = 1819047278;
      }

      if (v35)
      {
        v55 = v35;
      }

      else
      {
        v55 = 0xE400000000000000;
      }

      v56 = sub_1C9484164(v54, v55, v80);

      *(v22 + 4) = v56;
      *(v22 + 12) = 2160;
      *(v22 + 14) = 1752392040;
      *(v22 + 22) = 2081;
      [v52 coordinate];
      v57 = sub_1C96A7844();
      v59 = sub_1C9484164(v57, v58, v80);

      *(v22 + 24) = v59;
      _os_log_impl(&dword_1C945E000, v20, v53, "Server side revGeo is not possible for this country code. countryCode =%s, locationID=%{private,mask.hash}s", v22, 0x20u);
      swift_arrayDestroy();
LABEL_29:
      MEMORY[0x1CCA8E3D0](v23, -1, -1);
      v60 = v22;
LABEL_30:
      MEMORY[0x1CCA8E3D0](v60, -1, -1);
      goto LABEL_35;
    }

    if (sub_1C95AB5D8(v27))
    {
      v37 = v3;
      v38 = v27;
      v20 = sub_1C96A6134();
      v39 = sub_1C96A76A4();

      if (os_log_type_enabled(v20, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v80[0] = v41;
        *v40 = 141558275;
        *(v40 + 4) = 1752392040;
        *(v40 + 12) = 2081;
        [v38 coordinate];
        v42 = sub_1C96A7844();
        v44 = sub_1C9484164(v42, v43, v80);

        *(v40 + 14) = v44;
        v45 = "Server side revGeo is always enabled in this geography so we can proceed. locationID=%{private,mask.hash}s";
LABEL_18:
        _os_log_impl(&dword_1C945E000, v20, v39, v45, v40, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm(v41);
        MEMORY[0x1CCA8E3D0](v41, -1, -1);
        v50 = v40;
LABEL_19:
        MEMORY[0x1CCA8E3D0](v50, -1, -1);
      }
    }

    else
    {
      v37 = v3;
      v61 = sub_1C95AB994();
      v62 = v27;
      v20 = sub_1C96A6134();
      v63 = sub_1C96A76A4();

      v64 = os_log_type_enabled(v20, v63);
      if (!v61)
      {
        if (!v64)
        {
          goto LABEL_35;
        }

        v71 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        v80[0] = v72;
        *v71 = 141558275;
        *(v71 + 4) = 1752392040;
        *(v71 + 12) = 2081;
        [v62 coordinate];
        v73 = sub_1C96A7844();
        v75 = sub_1C9484164(v73, v74, v80);

        *(v71 + 14) = v75;
        _os_log_impl(&dword_1C945E000, v20, v63, "Server side revGeo is disabled for this device for now (enablementRate did not pass the threshold). locationID=%{private,mask.hash}s", v71, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm(v72);
        MEMORY[0x1CCA8E3D0](v72, -1, -1);
        v60 = v71;
        goto LABEL_30;
      }

      if (v64)
      {
        v65 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        v80[0] = v66;
        *v65 = 141558275;
        *(v65 + 4) = 1752392040;
        *(v65 + 12) = 2081;
        [v62 coordinate];
        v67 = sub_1C96A7844();
        v69 = sub_1C9484164(v67, v68, v80);

        *(v65 + 14) = v69;
        _os_log_impl(&dword_1C945E000, v20, v63, "We can do a server side revGeo on this device (enablementRate passed the threshold). locationID=%{private,mask.hash}s", v65, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm(v66);
        MEMORY[0x1CCA8E3D0](v66, -1, -1);
        v50 = v65;
        goto LABEL_19;
      }
    }

LABEL_20:

    v51 = OBJC_IVAR____TtC11WeatherCore14GeocodeService_weatherService;
    swift_beginAccess();
    sub_1C95AE040(v37 + v51, v79, &qword_1EC3A6378);
    return;
  }

  __break(1u);
}

uint64_t sub_1C95A7690(uint64_t a1, void (*a2)(void), uint64_t a3, void (*a4)(void))
{
  a2(0);
  sub_1C96A5784();
  v5 = sub_1C96A55A4();
  a4(0);
  v6 = sub_1C96A5644();

  return v6;
}

uint64_t GeocodeService.reverseGeocode(location:)(void *a1)
{
  sub_1C95A6D14(a1, &v4);
  if (v5)
  {
    sub_1C94670AC(&v4, v6);
    v2 = sub_1C95A77DC(a1, v6);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
  }

  else
  {
    sub_1C9470AFC(&v4, &qword_1EC3A6378);
    return sub_1C95A819C(a1);
  }

  return v2;
}

uint64_t sub_1C95A77DC(void *a1, uint64_t a2)
{
  v79 = a2;
  v77 = sub_1C96A5834();
  MEMORY[0x1EEE9AC00](v77);
  v78 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1C96A5F54();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v76 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A63E0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v75 = &v62 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A63E8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v74 = &v62 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A63F0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v73 = &v62 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A63F8);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v72 = &v62 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6400);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v84 = &v62 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6408);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v83 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v82 = &v62 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6410);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v81 = &v62 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F60);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v80 = &v62 - v24;
  v25 = sub_1C96A5874();
  v70 = *(v25 - 8);
  v71 = v25;
  MEMORY[0x1EEE9AC00](v25);
  v69 = &v62 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for AppConfiguration();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v62 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDB7CF88 != -1)
  {
    swift_once();
  }

  v30 = sub_1C96A6154();
  __swift_project_value_buffer(v30, qword_1EDB7CF90);
  v31 = a1;
  v32 = sub_1C96A6134();
  v33 = sub_1C96A76A4();

  v34 = os_log_type_enabled(v32, v33);
  v68 = v31;
  if (v34)
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v86 = v36;
    *v35 = 141558275;
    *(v35 + 4) = 1752392040;
    *(v35 + 12) = 2081;
    [v31 coordinate];
    v37 = sub_1C96A7844();
    v39 = v29;
    v40 = v4;
    v41 = sub_1C9484164(v37, v38, &v86);

    *(v35 + 14) = v41;
    v4 = v40;
    v29 = v39;
    _os_log_impl(&dword_1C945E000, v32, v33, "Starting a server side revGeo. locationID=%{private,mask.hash}s", v35, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v36);
    MEMORY[0x1CCA8E3D0](v36, -1, -1);
    MEMORY[0x1CCA8E3D0](v35, -1, -1);
  }

  v42 = *(v85 + OBJC_IVAR____TtC11WeatherCore14GeocodeService_appConfigurationManager + 24);
  v43 = *(v85 + OBJC_IVAR____TtC11WeatherCore14GeocodeService_appConfigurationManager + 32);
  __swift_project_boxed_opaque_existential_1((v85 + OBJC_IVAR____TtC11WeatherCore14GeocodeService_appConfigurationManager), v42);
  (*(v43 + 8))(v42, v43);
  v44 = sub_1C96A4AF4();
  v66 = v45;
  v67 = v44;
  v46 = sub_1C96A4DF4();
  __swift_storeEnumTagSinglePayload(v80, 1, 1, v46);
  v47 = WCCountryCodeEstimate();
  if (v47)
  {
    v48 = v47;
    v65 = sub_1C96A7024();
    v64 = v49;
  }

  else
  {
    v65 = 0;
    v64 = 0;
  }

  v50 = v81;
  sub_1C96A5884();
  v51 = sub_1C96A5894();
  __swift_storeEnumTagSinglePayload(v50, 0, 1, v51);
  v62 = *&v29[*(v27 + 140)];
  v52 = sub_1C96A42B4();
  __swift_storeEnumTagSinglePayload(v82, 1, 1, v52);
  __swift_storeEnumTagSinglePayload(v83, 1, 1, v52);
  v53 = sub_1C96A58C4();
  __swift_storeEnumTagSinglePayload(v84, 1, 1, v53);
  v54 = sub_1C96A58A4();
  __swift_storeEnumTagSinglePayload(v72, 1, 1, v54);
  v55 = sub_1C96A58B4();
  __swift_storeEnumTagSinglePayload(v73, 1, 1, v55);
  v56 = sub_1C96A58D4();
  __swift_storeEnumTagSinglePayload(v74, 1, 1, v56);
  v57 = sub_1C96A5E44();
  v63 = v29;
  __swift_storeEnumTagSinglePayload(v75, 1, 1, v57);
  sub_1C96A53C4();
  sub_1C96A4B54();
  (*(v5 + 104))(v76, *MEMORY[0x1E69E1958], v4);
  v86 = MEMORY[0x1E69E7CC0];
  sub_1C94D7C74(&qword_1EDB7ACF0, MEMORY[0x1E69E17F8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A6418);
  sub_1C9469CB4(&qword_1EDB7AB70, &unk_1EC3A6418);
  sub_1C96A79E4();
  v58 = v69;
  v59 = sub_1C96A5864();
  MEMORY[0x1EEE9AC00](v59);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6428);
  swift_allocObject();
  v60 = sub_1C96A5714();
  sub_1C948CC9C(v63, type metadata accessor for AppConfiguration);
  (*(v70 + 8))(v58, v71);
  return v60;
}

uint64_t sub_1C95A819C(void *a1)
{
  if (qword_1EDB7CF88 != -1)
  {
    swift_once();
  }

  v2 = sub_1C96A6154();
  __swift_project_value_buffer(v2, qword_1EDB7CF90);
  v3 = a1;
  v4 = sub_1C96A6134();
  v5 = sub_1C96A76A4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    *v6 = 141558275;
    *(v6 + 4) = 1752392040;
    *(v6 + 12) = 2081;
    [v3 coordinate];
    v8 = sub_1C96A7844();
    v10 = sub_1C9484164(v8, v9, &v17);

    *(v6 + 14) = v10;
    _os_log_impl(&dword_1C945E000, v4, v5, "Starting a GeoServices based revGeo. locationID=%{private,mask.hash}s", v6, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x1CCA8E3D0](v7, -1, -1);
    MEMORY[0x1CCA8E3D0](v6, -1, -1);
  }

  MEMORY[0x1EEE9AC00](v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A63C8);
  sub_1C96A5784();
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = v3;
  *(v13 + 24) = v12;
  type metadata accessor for GeocodeResult(0);
  v14 = v3;
  v15 = sub_1C96A5644();

  return v15;
}

uint64_t GeocodeService.reverseGeocodeToGEOMapItem(location:)(void *a1)
{
  if (qword_1EDB7CF88 != -1)
  {
    OUTLINED_FUNCTION_0_9();
  }

  v2 = sub_1C96A6154();
  __swift_project_value_buffer(v2, qword_1EDB7CF90);
  v3 = a1;
  v4 = sub_1C96A6134();
  v5 = sub_1C96A76A4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 141558275;
    *(v6 + 4) = 1752392040;
    *(v6 + 12) = 2081;
    [v3 coordinate];
    v8 = sub_1C96A7844();
    v10 = sub_1C9484164(v8, v9, &v15);

    *(v6 + 14) = v10;
    _os_log_impl(&dword_1C945E000, v4, v5, "Will reverse geocode to geo map item. locationID=%{private,mask.hash}s", v6, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_26();
  }

  v15 = 0;
  v16 = 0xE000000000000000;
  sub_1C96A7A94();

  v15 = 0x5365646F636F6547;
  v16 = 0xEF3A656369767265;
  v11 = CLLocation.storeKey.getter();
  MEMORY[0x1CCA8CB00](v11);

  MEMORY[0x1EEE9AC00](v12);
  v13 = sub_1C96A5324();

  return v13;
}

uint64_t sub_1C95A8664()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A63D8);
  swift_allocObject();
  return sub_1C96A5714();
}

uint64_t sub_1C95A86D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, int a7, void *a8)
{
  v30 = a7;
  v28 = a3;
  v29 = a6;
  v13 = sub_1C96A6564();
  v33 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1C96A65E4();
  v31 = *(v16 - 8);
  v32 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  v20 = swift_allocObject();
  v21 = v28;
  v22 = v29;
  *(v20 + 16) = v29;
  *(v20 + 24) = v21;
  *(v20 + 32) = a4;
  *(v20 + 40) = v30;
  *(v20 + 48) = sub_1C94DA5C0;
  *(v20 + 56) = v19;
  *(v20 + 64) = a8;
  *(v20 + 72) = a5;
  aBlock[4] = sub_1C95ADD94;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C946FCF8;
  aBlock[3] = &block_descriptor_24_0;
  v23 = _Block_copy(aBlock);
  v24 = a8;
  a5;
  sub_1C96A3D04();
  v25 = v22;
  sub_1C96A3D04();
  sub_1C96A6594();
  v34 = MEMORY[0x1E69E7CC0];
  sub_1C94D7C74(&qword_1EDB7CF40, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5370);
  sub_1C9469CB4(&qword_1EDB7CE80, &unk_1EC3A5370);
  sub_1C96A79E4();
  MEMORY[0x1CCA8D100](0, v18, v15, v23);
  _Block_release(v23);
  (*(v33 + 8))(v15, v13);
  (*(v31 + 8))(v18, v32);
}

void sub_1C95A8A10(void *a1, void (*a2)(void), uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = [objc_opt_self() sharedService];
  if (!v16)
  {
    if (qword_1EDB7CF88 != -1)
    {
      swift_once();
    }

    v39 = sub_1C96A6154();
    __swift_project_value_buffer(v39, qword_1EDB7CF90);
    v40 = a1;
    v41 = sub_1C96A6134();
    v42 = sub_1C96A7684();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      aBlock = v44;
      *v43 = 141558275;
      *(v43 + 4) = 1752392040;
      *(v43 + 12) = 2081;
      [v40 coordinate];
      v45 = sub_1C96A7844();
      v47 = sub_1C9484164(v45, v46, &aBlock);

      *(v43 + 14) = v47;
      _os_log_impl(&dword_1C945E000, v41, v42, "Unexpectedly received nil GEOMapService. locationID=%{private,mask.hash}s", v43, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v44);
      MEMORY[0x1CCA8E3D0](v44, -1, -1);
      MEMORY[0x1CCA8E3D0](v43, -1, -1);
    }

    sub_1C95ADC54();
    v48 = swift_allocError();
    *v49 = 3;
    a2();
    v50 = v48;

    goto LABEL_18;
  }

  v17 = v16;
  v18 = &selRef_defaultBackgroundTraits;
  if ((a4 & 1) == 0)
  {
    v18 = &selRef_defaultTraits;
  }

  v63 = [v16 *v18];
  if (v63)
  {
    v19 = v63;
    CurrentCountry = GeocodeManagerGetCurrentCountryCode()();
    sub_1C95ADCA8(CurrentCountry._countAndFlagsBits, CurrentCountry._object, v19);
  }

  [a1 coordinate];
  v22 = v21;
  [a1 coordinate];
  v23 = [v17 ticketForReverseGeocodeCoordinate:0 shiftLocationsIfNeeded:1 preserveOriginalLocation:v63 traits:v22];
  if (!v23)
  {
    if (qword_1EDB7CF88 != -1)
    {
      swift_once();
    }

    v51 = sub_1C96A6154();
    __swift_project_value_buffer(v51, qword_1EDB7CF90);
    v52 = a1;
    v53 = sub_1C96A6134();
    v54 = sub_1C96A7684();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      aBlock = v56;
      *v55 = 141558275;
      *(v55 + 4) = 1752392040;
      *(v55 + 12) = 2081;
      [v52 coordinate];
      v57 = sub_1C96A7844();
      v59 = sub_1C9484164(v57, v58, &aBlock);

      *(v55 + 14) = v59;
      _os_log_impl(&dword_1C945E000, v53, v54, "Unexpectedly received nil reverse geocode service ticket. locationID=%{private,mask.hash}s", v55, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v56);
      MEMORY[0x1CCA8E3D0](v56, -1, -1);
      MEMORY[0x1CCA8E3D0](v55, -1, -1);
    }

    sub_1C95ADC54();
    v60 = swift_allocError();
    *v61 = 3;
    a2();

    v50 = v63;

LABEL_18:

    return;
  }

  v24 = v23;
  v25 = swift_allocObject();
  v25[2] = a1;
  v25[3] = a2;
  v25[4] = a3;
  v25[5] = a5;
  v25[6] = a6;
  v26 = qword_1EDB7CF88;
  v27 = a1;
  sub_1C96A3D04();
  sub_1C96A3D04();
  if (v26 != -1)
  {
    swift_once();
  }

  v62 = a8;
  v28 = sub_1C96A6154();
  __swift_project_value_buffer(v28, qword_1EDB7CF90);
  v29 = v27;
  v30 = sub_1C96A6134();
  v31 = sub_1C96A76A4();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    aBlock = v33;
    *v32 = 141558275;
    *(v32 + 4) = 1752392040;
    *(v32 + 12) = 2081;
    [v29 coordinate];
    v34 = sub_1C96A7844();
    v36 = sub_1C9484164(v34, v35, &aBlock);

    *(v32 + 14) = v36;
    _os_log_impl(&dword_1C945E000, v30, v31, "Will submit geocode service ticket. locationID=%{private,mask.hash}s", v32, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v33);
    MEMORY[0x1CCA8E3D0](v33, -1, -1);
    MEMORY[0x1CCA8E3D0](v32, -1, -1);
  }

  v68 = sub_1C95ADDAC;
  v69 = v25;
  aBlock = MEMORY[0x1E69E9820];
  v65 = 1107296256;
  v66 = sub_1C95A972C;
  v67 = &block_descriptor_30;
  v37 = _Block_copy(&aBlock);
  sub_1C96A3D04();

  v68 = GEOLocationCoordinate2DMake;
  v69 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v65 = 1107296256;
  v66 = sub_1C94BB03C;
  v67 = &block_descriptor_33_0;
  v38 = _Block_copy(&aBlock);
  [v24 submitWithHandler:v37 auditToken:a7 timeout:30 networkActivity:v38 queue:v62];
  _Block_release(v38);
  _Block_release(v37);

  swift_unknownObjectRelease();
}

void sub_1C95A9134(uint64_t a1, id a2, void *a3, void (*a4)(void), uint64_t a5, void (*a6)(uint64_t))
{
  if (a2)
  {
    v9 = a2;
    if (qword_1EDB7CF88 != -1)
    {
      swift_once();
    }

    v10 = sub_1C96A6154();
    __swift_project_value_buffer(v10, qword_1EDB7CF90);
    v11 = a2;
    v12 = a3;
    v13 = sub_1C96A6134();
    v14 = sub_1C96A7684();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v53 = v16;
      *v15 = 141558531;
      *(v15 + 4) = 1752392040;
      *(v15 + 12) = 2081;
      [v12 coordinate];
      v17 = sub_1C96A7844();
      v19 = sub_1C9484164(v17, v18, &v53);

      *(v15 + 14) = v19;
      *(v15 + 22) = 2082;
      v20 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5380);
      v21 = sub_1C96A70A4();
      v23 = sub_1C9484164(v21, v22, &v53);

      *(v15 + 24) = v23;
      _os_log_impl(&dword_1C945E000, v13, v14, "Failed to reverse geocode location. locationID=%{private,mask.hash}s, error=%{public}s", v15, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1CCA8E3D0](v16, -1, -1);
      MEMORY[0x1CCA8E3D0](v15, -1, -1);
    }

    sub_1C95ADC54();
    v24 = swift_allocError();
    *v25 = a2;
    v26 = a2;
    (a4)(v24);
  }

  else if (a1 && sub_1C946D04C())
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v29 = MEMORY[0x1CCA8D440](0, a1);
    }

    else
    {
      if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }

      v29 = *(a1 + 32);
      swift_unknownObjectRetain();
    }

    if (qword_1EDB7CF88 != -1)
    {
      swift_once();
    }

    v30 = sub_1C96A6154();
    __swift_project_value_buffer(v30, qword_1EDB7CF90);
    v31 = a3;
    v32 = sub_1C96A6134();
    v33 = sub_1C96A76A4();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v53 = v52;
      *v34 = 141558275;
      *(v34 + 4) = 1752392040;
      *(v34 + 12) = 2081;
      v35 = v31;
      v36 = [v35 description];
      v37 = sub_1C96A7024();
      v39 = v38;

      v40 = sub_1C9484164(v37, v39, &v53);

      *(v34 + 14) = v40;
      __swift_destroy_boxed_opaque_existential_1Tm(v52);
      MEMORY[0x1CCA8E3D0](v52, -1, -1);
      MEMORY[0x1CCA8E3D0](v34, -1, -1);
    }

    a6(v29);

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1EDB7CF88 != -1)
    {
      swift_once();
    }

    v41 = sub_1C96A6154();
    __swift_project_value_buffer(v41, qword_1EDB7CF90);
    v42 = a3;
    v43 = sub_1C96A6134();
    v44 = sub_1C96A7684();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v53 = v46;
      *v45 = 141558275;
      *(v45 + 4) = 1752392040;
      *(v45 + 12) = 2081;
      [v42 coordinate];
      v47 = sub_1C96A7844();
      v49 = sub_1C9484164(v47, v48, &v53);

      *(v45 + 14) = v49;
      __swift_destroy_boxed_opaque_existential_1Tm(v46);
      MEMORY[0x1CCA8E3D0](v46, -1, -1);
      MEMORY[0x1CCA8E3D0](v45, -1, -1);
    }

    sub_1C95ADC54();
    v50 = swift_allocError();
    *v51 = 1;
    a4();
  }
}

uint64_t sub_1C95A972C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A63C8);
    v4 = sub_1C96A72A4();
  }

  sub_1C96A3D04();
  v6 = a3;
  v5(v4, a3);
}

uint64_t GeocodeService.reverseGeocodeToGEOMapItem(searchQuery:coordinate:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A63B8);
  swift_allocObject();
  return sub_1C96A5714();
}

uint64_t sub_1C95A9868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, int a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, uint64_t a10, uint64_t a11, void *a12)
{
  v35 = a7;
  v36 = a8;
  v34 = a6;
  v32 = a10;
  v33 = a11;
  v31 = a9;
  v17 = sub_1C96A6564();
  v39 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v30[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = sub_1C96A65E4();
  v37 = *(v20 - 8);
  v38 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v30[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = swift_allocObject();
  *(v23 + 16) = a1;
  *(v23 + 24) = a2;
  v24 = swift_allocObject();
  *(v24 + 16) = a3;
  *(v24 + 24) = a4;
  *(v24 + 32) = v34;
  v25 = v36;
  *(v24 + 40) = v35;
  *(v24 + 48) = v25;
  *(v24 + 56) = v31 & 1;
  v26 = v33;
  *(v24 + 64) = v32;
  *(v24 + 72) = v26;
  *(v24 + 80) = sub_1C94DA5C0;
  *(v24 + 88) = v23;
  *(v24 + 96) = a12;
  *(v24 + 104) = a5;
  aBlock[4] = sub_1C95ADC10;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C946FCF8;
  aBlock[3] = &block_descriptor_8;
  v27 = _Block_copy(aBlock);
  v28 = a12;
  a5;
  sub_1C96A3D04();
  sub_1C96A3D04();
  sub_1C96A53C4();
  sub_1C96A6594();
  v40 = MEMORY[0x1E69E7CC0];
  sub_1C94D7C74(&qword_1EDB7CF40, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5370);
  sub_1C9469CB4(&qword_1EDB7CE80, &unk_1EC3A5370);
  sub_1C96A79E4();
  MEMORY[0x1CCA8D100](0, v22, v19, v27);
  _Block_release(v27);
  (*(v39 + 8))(v19, v17);
  (*(v37 + 8))(v22, v38);
}

void sub_1C95A9BD0(void (*a1)(void), uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v20 = [objc_opt_self() sharedService];
  if (v20)
  {
    v21 = v20;
    v22 = &selRef_defaultBackgroundTraits;
    if ((a3 & 1) == 0)
    {
      v22 = &selRef_defaultTraits;
    }

    v23 = [v20 *v22];
    v38 = v23;
    if ((a6 & 1) == 0)
    {
      v24 = [objc_allocWithZone(MEMORY[0x1E69A2200]) init];
      v25 = v24;
      if (v24)
      {
        [v24 setSouthLat_];
        [v25 setNorthLat_];
        [v25 setWestLng_];
        [v25 setEastLng_];
      }

      v26 = v38;
      [v26 setMapRegion_];

      v23 = v38;
    }

    v27 = sub_1C95ADD0C(a7, a8, 1, v23, v21);
    if (v27)
    {
      v28 = v27;
      v29 = swift_allocObject();
      v29[2] = a7;
      v29[3] = a8;
      v29[4] = a1;
      v29[5] = a2;
      v29[6] = v37;
      v29[7] = a10;
      v43 = sub_1C95ADD74;
      v44 = v29;
      aBlock = MEMORY[0x1E69E9820];
      v40 = 1107296256;
      v41 = sub_1C95A972C;
      v42 = &block_descriptor_12_0;
      v30 = _Block_copy(&aBlock);
      sub_1C96A53C4();
      sub_1C96A3D04();
      sub_1C96A3D04();
      sub_1C96A3D04();

      v43 = GEOLocationCoordinate2DMake;
      v44 = 0;
      aBlock = MEMORY[0x1E69E9820];
      v40 = 1107296256;
      v41 = sub_1C94BB03C;
      v42 = &block_descriptor_15_0;
      v31 = _Block_copy(&aBlock);
      [v28 submitWithHandler:v30 auditToken:a11 timeout:30 networkActivity:v31 queue:a12];
      _Block_release(v31);
      _Block_release(v30);

      swift_unknownObjectRelease();

      return;
    }

    sub_1C95ADC54();
    v35 = swift_allocError();
    *v36 = 3;
    a1();

    v34 = v38;
  }

  else
  {
    sub_1C95ADC54();
    v32 = swift_allocError();
    *v33 = 3;
    a1();
    v34 = v32;
  }
}

void sub_1C95A9FA8(uint64_t a1, id a2, uint64_t a3, unint64_t a4, void (*a5)(void), uint64_t a6, void (*a7)(uint64_t))
{
  if (a2)
  {
    v11 = a2;
    if (qword_1EDB7CF88 != -1)
    {
      swift_once();
    }

    v12 = sub_1C96A6154();
    __swift_project_value_buffer(v12, qword_1EDB7CF90);
    v13 = a2;
    sub_1C96A53C4();
    v14 = sub_1C96A6134();
    v15 = sub_1C96A7684();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v35 = v17;
      *v16 = 141558531;
      *(v16 + 4) = 1752392040;
      *(v16 + 12) = 2085;
      *(v16 + 14) = sub_1C9484164(a3, a4, &v35);
      *(v16 + 22) = 2082;
      v18 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5380);
      v19 = sub_1C96A70A4();
      v21 = sub_1C9484164(v19, v20, &v35);

      *(v16 + 24) = v21;
      _os_log_impl(&dword_1C945E000, v14, v15, "Failed to reverse geocode searchQuery. searchQuery=%{sensitive,mask.hash}s, error=%{public}s", v16, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1CCA8E3D0](v17, -1, -1);
      MEMORY[0x1CCA8E3D0](v16, -1, -1);
    }

    sub_1C95ADC54();
    v22 = swift_allocError();
    *v23 = a2;
    v24 = a2;
    (a5)(v22);
  }

  else if (a1 && sub_1C946D04C())
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v27 = MEMORY[0x1CCA8D440](0, a1);
    }

    else
    {
      if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }

      v27 = *(a1 + 32);
      swift_unknownObjectRetain();
    }

    a7(v27);

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1EDB7CF88 != -1)
    {
      swift_once();
    }

    v28 = sub_1C96A6154();
    __swift_project_value_buffer(v28, qword_1EDB7CF90);
    sub_1C96A53C4();
    v29 = sub_1C96A6134();
    v30 = sub_1C96A7684();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v35 = v32;
      *v31 = 141558275;
      *(v31 + 4) = 1752392040;
      *(v31 + 12) = 2085;
      *(v31 + 14) = sub_1C9484164(a3, a4, &v35);
      __swift_destroy_boxed_opaque_existential_1Tm(v32);
      MEMORY[0x1CCA8E3D0](v32, -1, -1);
      MEMORY[0x1CCA8E3D0](v31, -1, -1);
    }

    sub_1C95ADC54();
    v33 = swift_allocError();
    *v34 = 1;
    a5();
  }
}

uint64_t sub_1C95AA404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  if (a3)
  {
    sub_1C95AE040(v6 + OBJC_IVAR____TtC11WeatherCore14GeocodeService_locationMetadataUpdater, v19, &unk_1EC3A63A8);
    v12 = v20;
    if (v20)
    {
      v13 = v21;
      __swift_project_boxed_opaque_existential_1(v19, v20);
      (*(v13 + 8))(a2, a3, a1, v12, v13);
      goto LABEL_6;
    }
  }

  else
  {
    sub_1C95AE040(v5 + OBJC_IVAR____TtC11WeatherCore14GeocodeService_locationMetadataUpdater, v19, &unk_1EC3A63A8);
    v14 = v20;
    if (v20)
    {
      v15 = v21;
      __swift_project_boxed_opaque_existential_1(v19, v20);
      (*(v15 + 8))(0, 0, a1, v14, v15);
LABEL_6:
      result = __swift_destroy_boxed_opaque_existential_1Tm(v19);
      if (!a5)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  result = sub_1C9470AFC(v19, &unk_1EC3A63A8);
  if (!a5)
  {
    return result;
  }

LABEL_9:
  sub_1C95AE040(v6 + OBJC_IVAR____TtC11WeatherCore14GeocodeService_locationMetadataUpdater, v19, &unk_1EC3A63A8);
  v17 = v20;
  if (!v20)
  {
    return sub_1C9470AFC(v19, &unk_1EC3A63A8);
  }

  v18 = v21;
  __swift_project_boxed_opaque_existential_1(v19, v20);
  (*(v18 + 16))(a4, a5, a1, v17, v18);
  return __swift_destroy_boxed_opaque_existential_1Tm(v19);
}

void sub_1C95AA5E0(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v124 = a3;
  v131 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v128 = &v117 - v8;
  v9 = type metadata accessor for Location();
  MEMORY[0x1EEE9AC00](v9);
  v125 = &v117 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F60);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v129 = &v117 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v130 = &v117 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v117 - v16;
  v18 = sub_1C96A4DF4();
  v136 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v127 = &v117 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v117 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v126 = &v117 - v24;
  v25 = *a1;
  v26 = [objc_opt_self() placemarkWithGEOMapItem_];
  if (v26)
  {
    v27 = v26;
    v121 = v9;
    if (qword_1EDB7CF88 != -1)
    {
      swift_once();
    }

    v28 = sub_1C96A6154();
    v29 = __swift_project_value_buffer(v28, qword_1EDB7CF90);
    swift_unknownObjectRetain();
    v122 = v29;
    v30 = sub_1C96A6134();
    v31 = sub_1C96A76A4();
    swift_unknownObjectRelease();
    v32 = os_log_type_enabled(v30, v31);
    v132 = v18;
    v120 = v4;
    v119 = a4;
    v123 = v27;
    if (v32)
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v134 = v34;
      *v33 = 141558275;
      *(v33 + 4) = 1752392040;
      *(v33 + 12) = 2081;
      v133[0] = v25;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A63C8);
      v35 = sub_1C96A70A4();
      v37 = sub_1C9484164(v35, v36, &v134);

      *(v33 + 14) = v37;
      _os_log_impl(&dword_1C945E000, v30, v31, "Successfully reverse geocoded mapItem. mapItem=%{private,mask.hash}s.", v33, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v34);
      v38 = v34;
      v27 = v123;
      MEMORY[0x1CCA8E3D0](v38, -1, -1);
      MEMORY[0x1CCA8E3D0](v33, -1, -1);
    }

    swift_getObjectType();
    [v25 coordinate];
    v40 = v39;
    [v25 coordinate];
    v42 = v41;
    v43 = [v27 timeZone];
    v44 = v129;
    if (v43)
    {
      v45 = v43;
      sub_1C96A4DD4();

      v46 = *(v136 + 32);
      v47 = v130;
      v48 = v132;
      v46(v130, v22, v132);
      __swift_storeEnumTagSinglePayload(v47, 0, 1, v48);
      v46(v17, v47, v48);
      __swift_storeEnumTagSinglePayload(v17, 0, 1, v48);
    }

    else
    {
      v59 = 1;
      v60 = v130;
      __swift_storeEnumTagSinglePayload(v130, 1, 1, v132);
      v61 = [v25 timezone];
      if (v61)
      {
        v62 = v61;
        sub_1C96A4DD4();

        v59 = 0;
      }

      v48 = v132;
      __swift_storeEnumTagSinglePayload(v44, v59, 1, v132);
      sub_1C95ADF8C(v44, v17, &unk_1EC3A5F60);
      if (__swift_getEnumTagSinglePayload(v60, 1, v48) != 1)
      {
        sub_1C9470AFC(v60, &unk_1EC3A5F60);
      }
    }

    if (__swift_getEnumTagSinglePayload(v17, 1, v48) == 1)
    {
      sub_1C9470AFC(v17, &unk_1EC3A5F60);
      v63 = v131;
      v64 = sub_1C96A6134();
      v65 = sub_1C96A7684();

      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v134 = v67;
        *v66 = 141558275;
        *(v66 + 4) = 1752392040;
        *(v66 + 12) = 2081;
        [v63 coordinate];
        v68 = sub_1C96A7844();
        v70 = sub_1C9484164(v68, v69, &v134);

        *(v66 + 14) = v70;
        _os_log_impl(&dword_1C945E000, v64, v65, "TimeZone missing while reverse geocoding. locationID=%{private,mask.hash}s", v66, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm(v67);
        MEMORY[0x1CCA8E3D0](v67, -1, -1);
        MEMORY[0x1CCA8E3D0](v66, -1, -1);
      }

      sub_1C95ADC54();
      swift_allocError();
      *v71 = 0;
      swift_willThrow();

      return;
    }

    v72 = v136;
    v73 = v126;
    v130 = *(v136 + 32);
    v131 = (v136 + 32);
    (v130)(v126, v17, v48);
    v74 = sub_1C96A7844();
    v76 = v75;
    v77 = sub_1C96A7634();
    v79 = v78;
    (*(v72 + 16))(v127, v73, v48);
    sub_1C96A5954();
    v80 = v128;
    sub_1C96A5944();
    v81 = sub_1C96A4A54();
    __swift_storeEnumTagSinglePayload(v80, 0, 1, v81);
    v82 = [v25 addressObject];
    if (v82)
    {
      v129 = sub_1C9493F40(v82, &selRef_weatherLocationName);
      v118 = v83;
      v134 = v74;
      v135 = v76;
      swift_bridgeObjectRetain_n();
      sub_1C96A53C4();
      MEMORY[0x1CCA8CB00](58, 0xE100000000000000);
      MEMORY[0x1CCA8CB00](v77, v79);

      v85 = v134;
      v84 = v135;
      if (v74 == 0x746E6572727563 && v76 == 0xE700000000000000)
      {

        v87 = 1;
      }

      else
      {
        v87 = sub_1C96A7DE4();
      }

      v88 = v87 & 1;
      v89 = v121;
      v90 = v121[11];
      v91 = v125;
      *&v125[v90] = 0;
      *v91 = v74;
      *(v91 + 1) = v76;
      *(v91 + 2) = v77;
      *(v91 + 3) = v79;
      v92 = v91;
      *(v91 + 4) = v40;
      *(v91 + 5) = v42;
      v91[48] = v88;
      *(v91 + 7) = v85;
      *(v91 + 8) = v84;
      v93 = v132;
      (v130)(&v91[v89[5]], v127, v132);
      sub_1C95ADF8C(v128, v92 + v89[6], &unk_1EC3A5430);
      v94 = (v92 + v89[7]);
      *v94 = 0;
      v94[1] = 0;
      v95 = (v92 + v89[8]);
      *v95 = 0;
      v95[1] = 0;
      v96 = (v92 + v89[9]);
      v97 = v118;
      *v96 = v129;
      v96[1] = v97;
      v98 = (v92 + v89[10]);
      *v98 = 0;
      v98[1] = 0;
      v99 = v123;
      v100 = [v123 location];
      if (v100)
      {
        *(v92 + v90) = v100;
      }

      v101 = [v25 addressObject];
      if (v101)
      {
        v102 = v101;
        v103 = [v101 fullAddressWithMultiline_];

        if (v103)
        {
          v104 = sub_1C96A7024();
          v106 = v105;
        }

        else
        {
          v104 = 0;
          v106 = 0;
        }

        swift_beginAccess();
        if (swift_weakLoadStrong())
        {
          v107 = sub_1C95ADFDC(v99);
          sub_1C95AA404(v92, v107, v108, v104, v106);
        }

        v109 = sub_1C96A6134();
        v110 = sub_1C96A76A4();
        if (os_log_type_enabled(v109, v110))
        {
          v111 = swift_slowAlloc();
          v112 = swift_slowAlloc();
          v133[0] = v112;
          *v111 = 141558275;
          *(v111 + 4) = 1752392040;
          *(v111 + 12) = 2081;
          swift_beginAccess();
          sub_1C94D7C74(&qword_1EDB7ADD0, type metadata accessor for Location);
          v113 = sub_1C96A7DB4();
          v115 = sub_1C9484164(v113, v114, v133);

          *(v111 + 14) = v115;
          _os_log_impl(&dword_1C945E000, v109, v110, "Successfully performed a GeoServices based revGeo. location=%{private,mask.hash}s.", v111, 0x16u);
          __swift_destroy_boxed_opaque_existential_1Tm(v112);
          MEMORY[0x1CCA8E3D0](v112, -1, -1);
          MEMORY[0x1CCA8E3D0](v111, -1, -1);
        }

        (*(v136 + 8))(v126, v93);
        v116 = v119;
        swift_beginAccess();
        sub_1C9489760(v92, v116);
        sub_1C948CC9C(v92, type metadata accessor for Location);
        *(v116 + *(type metadata accessor for GeocodeResult(0) + 20)) = 1;
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

  if (qword_1EDB7CF88 != -1)
  {
    swift_once();
  }

  v49 = sub_1C96A6154();
  __swift_project_value_buffer(v49, qword_1EDB7CF90);
  v50 = v131;
  v51 = sub_1C96A6134();
  v52 = sub_1C96A7684();

  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v134 = v54;
    *v53 = 141558275;
    *(v53 + 4) = 1752392040;
    *(v53 + 12) = 2081;
    [v50 coordinate];
    v55 = sub_1C96A7844();
    v57 = sub_1C9484164(v55, v56, &v134);

    *(v53 + 14) = v57;
    _os_log_impl(&dword_1C945E000, v51, v52, "CLPlacemark missing while reverse geocoding. locationID=%{private,mask.hash}s", v53, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v54);
    MEMORY[0x1CCA8E3D0](v54, -1, -1);
    MEMORY[0x1CCA8E3D0](v53, -1, -1);
  }

  sub_1C95ADC54();
  swift_allocError();
  *v58 = 2;
  swift_willThrow();
}

BOOL sub_1C95AB304(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3)
  {
    v21[0] = a2;
    v21[1] = a3;
    MEMORY[0x1EEE9AC00](a1);
    v20[2] = v21;
    v6 = !sub_1C957FD34(sub_1C9592490, v20, a1);
    if (qword_1EDB7CF88 != -1)
    {
      swift_once();
    }

    v7 = sub_1C96A6154();
    __swift_project_value_buffer(v7, qword_1EDB7CF90);
    sub_1C96A53C4();
    sub_1C96A53C4();
    v8 = sub_1C96A6134();
    v9 = sub_1C96A76A4();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v21[0] = v11;
      *v10 = 136315650;
      *(v10 + 4) = sub_1C9484164(a2, a3, v21);
      *(v10 + 12) = 2080;
      v12 = MEMORY[0x1CCA8CC40](a1, MEMORY[0x1E69E6158]);
      v14 = sub_1C9484164(v12, v13, v21);

      *(v10 + 14) = v14;
      *(v10 + 22) = 1024;
      *(v10 + 24) = v6;
      _os_log_impl(&dword_1C945E000, v8, v9, "Checking our country code against the disallow list. countryCode=%s, disallowList=%s, allowed=%{BOOL}d", v10, 0x1Cu);
      swift_arrayDestroy();
      MEMORY[0x1CCA8E3D0](v11, -1, -1);
      MEMORY[0x1CCA8E3D0](v10, -1, -1);
    }
  }

  else
  {
    if (qword_1EDB7CF88 != -1)
    {
      swift_once();
    }

    v15 = sub_1C96A6154();
    __swift_project_value_buffer(v15, qword_1EDB7CF90);
    v16 = sub_1C96A6134();
    v17 = sub_1C96A76A4();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1C945E000, v16, v17, "Checking our country code against the allow list. countryCode cannot be obtained on this device ... allowed to continue", v18, 2u);
      MEMORY[0x1CCA8E3D0](v18, -1, -1);
    }

    return 1;
  }

  return v6;
}

uint64_t sub_1C95AB5D8(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A63C0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v30 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A6380);
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v30 - v11;
  v13 = *(v1 + OBJC_IVAR____TtC11WeatherCore14GeocodeService_serverSideRegionGeoJSONLock);
  sub_1C96A50E4();
  v14 = OBJC_IVAR____TtC11WeatherCore14GeocodeService_serverSideRegionAllowlistGeoJSON;
  swift_beginAccess();
  sub_1C95AE040(v2 + v14, v6, &qword_1EC3A63C0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    sub_1C9470AFC(v6, &qword_1EC3A63C0);
    if (qword_1EDB7CF88 != -1)
    {
      OUTLINED_FUNCTION_0_9();
    }

    v15 = sub_1C96A6154();
    __swift_project_value_buffer(v15, qword_1EDB7CF90);
    v16 = sub_1C96A6134();
    v17 = sub_1C96A76A4();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1C945E000, v16, v17, "Checking our location coordinates against the allow list. serverSideRegionAllowlistGeoJSON cannot be obtained on this device ... allowed to continue", v18, 2u);
      OUTLINED_FUNCTION_26();
    }

    v19 = 1;
  }

  else
  {
    v30[1] = v13;
    (*(v9 + 32))(v12, v6, v7);
    [a1 coordinate];
    v19 = sub_1C96A5F94();
    if (qword_1EDB7CF88 != -1)
    {
      OUTLINED_FUNCTION_0_9();
    }

    v20 = sub_1C96A6154();
    __swift_project_value_buffer(v20, qword_1EDB7CF90);
    v21 = a1;
    v22 = sub_1C96A6134();
    v23 = sub_1C96A76A4();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v31 = v25;
      *v24 = 141558531;
      *(v24 + 4) = 1752392040;
      *(v24 + 12) = 2081;
      [v21 coordinate];
      v26 = sub_1C96A7844();
      v28 = sub_1C9484164(v26, v27, &v31);

      *(v24 + 14) = v28;
      *(v24 + 22) = 1024;
      *(v24 + 24) = v19 & 1;
      _os_log_impl(&dword_1C945E000, v22, v23, "Checking our location coordinates against the allow list. locationID=%{private,mask.hash}s, contained=%{BOOL}d", v24, 0x1Cu);
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
      OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_26();
    }

    (*(v9 + 8))(v12, v7);
  }

  sub_1C96A50F4();
  return v19 & 1;
}

BOOL sub_1C95AB994()
{
  v1 = type metadata accessor for AppConfiguration();
  v2 = v1 - 8;
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + OBJC_IVAR____TtC11WeatherCore14GeocodeService_appConfigurationManager + 24);
  v6 = *(v0 + OBJC_IVAR____TtC11WeatherCore14GeocodeService_appConfigurationManager + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC11WeatherCore14GeocodeService_appConfigurationManager), v5);
  (*(v6 + 8))(v5, v6);
  v7 = *&v4[*(v2 + 64) + 8];
  sub_1C948CC9C(v4, type metadata accessor for AppConfiguration);
  v8 = v7;
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC11WeatherCore14GeocodeService_privacySampler), *(v0 + OBJC_IVAR____TtC11WeatherCore14GeocodeService_privacySampler + 24));
  v9 = PrivacySamplerType.canRecord(samplingRate:)(v8);
  if (qword_1EDB7CF88 != -1)
  {
    swift_once();
  }

  v10 = sub_1C96A6154();
  __swift_project_value_buffer(v10, qword_1EDB7CF90);
  v11 = sub_1C96A6134();
  v12 = sub_1C96A76A4();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 134218240;
    *(v13 + 4) = v8;
    *(v13 + 12) = 1024;
    *(v13 + 14) = v9;
    _os_log_impl(&dword_1C945E000, v11, v12, "Checking our server side enablement rate. enablementRate=%f, userIsEnabled=%{BOOL}d", v13, 0x12u);
    MEMORY[0x1CCA8E3D0](v13, -1, -1);
  }

  return v9;
}

uint64_t sub_1C95ABB8C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A63C0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v38 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A6380);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v38 - v9;
  v11 = sub_1C96A7084();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v38[0] = a2;
    sub_1C96A7074();
    v15 = sub_1C96A7034();
    v17 = v16;
    (*(v12 + 8))(v14, v11);
    if (v17 >> 60 == 15)
    {
      if (qword_1EDB7CF88 != -1)
      {
        swift_once();
      }

      v18 = sub_1C96A6154();
      __swift_project_value_buffer(v18, qword_1EDB7CF90);
      v19 = sub_1C96A6134();
      v20 = sub_1C96A76A4();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_1C945E000, v19, v20, "Cannot configure GeoJSON allow list: app config string could not be transformed into UTF8 data", v21, 2u);
        MEMORY[0x1CCA8E3D0](v21, -1, -1);
      }

      v30 = v38[0];
      v31 = 1;
    }

    else
    {
      sub_1C96A4184();
      swift_allocObject();
      sub_1C96A4174();
      sub_1C9469CB4(&unk_1EC3A6440, &unk_1EC3A6380);
      v29 = v15;
      sub_1C96A4154();

      __swift_storeEnumTagSinglePayload(v6, 0, 1, v7);
      v32 = *(v8 + 32);
      v32(v10, v6, v7);
      if (qword_1EDB7CF88 != -1)
      {
        swift_once();
      }

      v33 = sub_1C96A6154();
      __swift_project_value_buffer(v33, qword_1EDB7CF90);
      v34 = sub_1C96A6134();
      v35 = sub_1C96A76A4();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&dword_1C945E000, v34, v35, "Successfully configured GeoJSON allow list", v36, 2u);
        MEMORY[0x1CCA8E3D0](v36, -1, -1);
      }

      sub_1C9485BFC(v29, v17);

      v37 = v38[0];
      v32(v38[0], v10, v7);
      v30 = v37;
      v31 = 0;
    }

    return __swift_storeEnumTagSinglePayload(v30, v31, 1, v7);
  }

  else
  {
    if (qword_1EDB7CF88 != -1)
    {
      swift_once();
    }

    v22 = sub_1C96A6154();
    __swift_project_value_buffer(v22, qword_1EDB7CF90);
    v23 = sub_1C96A6134();
    v24 = sub_1C96A76A4();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = a2;
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_1C945E000, v23, v24, "Cannot configure GeoJSON allow list: app config string is nil", v26, 2u);
      v27 = v26;
      a2 = v25;
      MEMORY[0x1CCA8E3D0](v27, -1, -1);
    }

    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v7);
  }
}

uint64_t sub_1C95AC1C8(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC11WeatherCore14GeocodeService_serverSideRegionAllowlistGeoJSON;
  swift_beginAccess();
  sub_1C95AE098(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_1C95AC22C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9)
{
  v38 = a8;
  v36 = a5;
  v40 = a4;
  v37 = a3;
  v42 = a2;
  v39 = a1;
  v35 = a9;
  v45 = sub_1C96A6564();
  v47 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v43 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1C96A65E4();
  v44 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v41 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1C96A5874();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C9469B6C(a6, v50);
  (*(v14 + 16))(v16, a7, v13);
  v17 = (*(v14 + 80) + 56) & ~*(v14 + 80);
  v18 = (v15 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + 15) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 15) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 15) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  sub_1C94670AC(v50, v22 + 16);
  (*(v14 + 32))(v22 + v17, v16, v13);
  v23 = v38;
  *(v22 + v18) = v38;
  v24 = v36;
  *(v22 + v19) = v36;
  *(v22 + v20) = v35;
  v25 = (v22 + v21);
  v26 = v40;
  *v25 = v37;
  v25[1] = v26;
  v27 = (v22 + ((v21 + 23) & 0xFFFFFFFFFFFFFFF8));
  v28 = v42;
  *v27 = v39;
  v27[1] = v28;
  aBlock[4] = sub_1C95ADDEC;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C946FCF8;
  aBlock[3] = &block_descriptor_39_0;
  v29 = _Block_copy(aBlock);
  v30 = v23;
  v24;
  sub_1C96A3D04();
  sub_1C96A3D04();
  sub_1C96A3D04();
  v31 = v41;
  sub_1C96A6594();
  v48 = MEMORY[0x1E69E7CC0];
  sub_1C94D7C74(&qword_1EDB7CF40, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5370);
  sub_1C9469CB4(&qword_1EDB7CE80, &unk_1EC3A5370);
  v32 = v43;
  v33 = v45;
  sub_1C96A79E4();
  MEMORY[0x1CCA8D100](0, v31, v32, v29);
  _Block_release(v29);
  (*(v47 + 8))(v32, v33);
  (*(v44 + 8))(v31, v46);
}

void sub_1C95AC6AC(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C96A57F4();
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a6;
  v13[4] = a7;
  v13[5] = a8;
  v13[6] = a9;
  type metadata accessor for GeocodeService(0);
  v14 = a3;
  sub_1C96A3D04();
  sub_1C96A3D04();
  sub_1C96A5664();

  v15 = swift_allocObject();
  *(v15 + 16) = a6;
  *(v15 + 24) = a7;
  sub_1C96A3D04();
  v16 = sub_1C96A55A4();
  sub_1C96A5674();
}

void sub_1C95AC83C(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void), uint64_t a5, void (*a6)(uint64_t), uint64_t a7)
{
  v135 = a7;
  v136 = a6;
  v129 = a5;
  v130 = a4;
  v139 = a3;
  v126 = a2;
  v134 = type metadata accessor for GeocodeResult(0);
  MEMORY[0x1EEE9AC00](v134);
  v133 = &v118 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_1C96A5FF4();
  v124 = *(v125 - 8);
  MEMORY[0x1EEE9AC00](v125);
  v123 = &v118 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v142 = &v118 - v10;
  v137 = type metadata accessor for Location();
  MEMORY[0x1EEE9AC00](v137);
  v132 = &v118 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v138 = &v118 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F60);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v118 - v15;
  v17 = sub_1C96A4DF4();
  v145 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v141 = &v118 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v143 = &v118 - v20;
  v21 = sub_1C96A5AB4();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v131 = &v118 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v118 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v118 - v28;
  sub_1C96A5E04();
  v149 = sub_1C96A5E14();
  if (qword_1EDB7CF88 != -1)
  {
    swift_once();
  }

  v30 = sub_1C96A6154();
  v31 = __swift_project_value_buffer(v30, qword_1EDB7CF90);
  v32 = *(v22 + 16);
  v128 = v22 + 16;
  v127 = v32;
  v32(v26, v29, v21);
  v140 = v31;
  v33 = sub_1C96A6134();
  v34 = sub_1C96A76A4();
  v35 = os_log_type_enabled(v33, v34);
  v147 = v17;
  v148 = v29;
  v146 = v22;
  if (v35)
  {
    v36 = swift_slowAlloc();
    v37 = v21;
    v38 = swift_slowAlloc();
    v150 = v38;
    *v36 = 141558531;
    *(v36 + 4) = 1752392040;
    *(v36 + 12) = 2081;
    sub_1C94D7C74(&qword_1EDB7ACE8, MEMORY[0x1E69E1838]);
    v39 = sub_1C96A7DB4();
    v40 = v22;
    v42 = v41;
    v144 = *(v40 + 8);
    v144(v26, v37);
    v43 = sub_1C9484164(v39, v42, &v150);

    *(v36 + 14) = v43;
    *(v36 + 22) = 1024;
    *(v36 + 24) = v149 & 1;
    _os_log_impl(&dword_1C945E000, v33, v34, "Successfully fetched LocationInfo. locationInfo=%{private,mask.hash}s, isExact=%{BOOL}d.", v36, 0x1Cu);
    __swift_destroy_boxed_opaque_existential_1Tm(v38);
    v44 = v38;
    v21 = v37;
    v29 = v148;
    MEMORY[0x1CCA8E3D0](v44, -1, -1);
    v45 = v36;
    v17 = v147;
    MEMORY[0x1CCA8E3D0](v45, -1, -1);
  }

  else
  {

    v144 = *(v22 + 8);
    v144(v26, v21);
  }

  sub_1C96A5AA4();
  sub_1C96A4D64();

  if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
  {
    sub_1C9470AFC(v16, &unk_1EC3A5F60);
    v46 = v139;
    v47 = sub_1C96A6134();
    v48 = sub_1C96A7684();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v150 = v50;
      *v49 = 141558531;
      *(v49 + 4) = 1752392040;
      *(v49 + 12) = 2081;
      [v46 coordinate];
      v51 = sub_1C96A7844();
      v53 = sub_1C9484164(v51, v52, &v150);

      *(v49 + 14) = v53;
      *(v49 + 22) = 1024;
      *(v49 + 24) = v149 & 1;
      _os_log_impl(&dword_1C945E000, v47, v48, "TimeZone missing while reverse geocoding. locationID=%{private,mask.hash}s, isExact=%{BOOL}d", v49, 0x1Cu);
      __swift_destroy_boxed_opaque_existential_1Tm(v50);
      MEMORY[0x1CCA8E3D0](v50, -1, -1);
      MEMORY[0x1CCA8E3D0](v49, -1, -1);
    }

    sub_1C95ADC54();
    v54 = swift_allocError();
    *v55 = 0;
    v130();
    v144(v29, v21);
  }

  else
  {
    v56 = v145;
    v57 = *(v145 + 32);
    v58 = v143;
    v121 = v145 + 32;
    v120 = v57;
    v57(v143, v16, v17);
    v59 = sub_1C96A5A74();
    v61 = v60;
    v62 = sub_1C96A5A64();
    v129 = static Location.sanitizedSecondaryName(_:name:)(v59, v61, v62, v63);
    v122 = v64;

    v65 = v139;
    [v139 coordinate];
    v119 = sub_1C96A7844();
    v67 = v66;
    v130 = sub_1C96A5A64();
    v68 = v17;
    v70 = v69;
    (*(v56 + 16))(v141, v58, v68);
    [v65 coordinate];
    v72 = v71;
    v74 = v73;
    v75 = v21;
    if (v149)
    {
      sub_1C96A5954();
      v76 = v142;
      sub_1C96A5944();
    }

    else
    {
      v77 = v123;
      sub_1C96A5A94();
      v76 = v142;
      sub_1C96A5FE4();
      (*(v124 + 8))(v77, v125);
    }

    v78 = v132;
    v79 = sub_1C96A4A54();
    __swift_storeEnumTagSinglePayload(v76, 0, 1, v79);
    v139 = sub_1C96A5A54();
    v132 = v80;
    v81 = v119;
    v150 = v119;
    v151 = v67;
    swift_bridgeObjectRetain_n();
    sub_1C96A53C4();
    MEMORY[0x1CCA8CB00](58, 0xE100000000000000);
    MEMORY[0x1CCA8CB00](v130, v70);

    v83 = v150;
    v82 = v151;
    if (v81 == 0x746E6572727563 && v67 == 0xE700000000000000)
    {

      v85 = 1;
    }

    else
    {
      v85 = sub_1C96A7DE4();
    }

    v86 = v85 & 1;
    v88 = v137;
    v87 = v138;
    *&v138[*(v137 + 44)] = 0;
    *v87 = v81;
    *(v87 + 1) = v67;
    *(v87 + 2) = v130;
    *(v87 + 3) = v70;
    *(v87 + 4) = v72;
    *(v87 + 5) = v74;
    v87[48] = v86;
    *(v87 + 7) = v83;
    *(v87 + 8) = v82;
    v89 = v87;
    v120(&v87[v88[5]], v141, v147);
    sub_1C95ADF8C(v142, v89 + v88[6], &unk_1EC3A5430);
    v90 = (v89 + v88[7]);
    *v90 = 0;
    v90[1] = 0;
    v91 = (v89 + v88[8]);
    *v91 = 0;
    v91[1] = 0;
    v92 = (v89 + v88[9]);
    v93 = v132;
    *v92 = v139;
    v92[1] = v93;
    v94 = (v89 + v88[10]);
    v95 = v122;
    *v94 = v129;
    v94[1] = v95;
    if (v149)
    {
      v96 = sub_1C96A5A44();
      sub_1C95AA404(v89, v96, v97, 0, 0);
    }

    sub_1C9489760(v89, v78);
    v98 = v131;
    v99 = v75;
    v127(v131, v148, v75);
    v100 = sub_1C96A6134();
    v101 = sub_1C96A76A4();
    if (os_log_type_enabled(v100, v101))
    {
      v102 = v78;
      v103 = swift_slowAlloc();
      v142 = swift_slowAlloc();
      v152 = v142;
      *v103 = 141559043;
      *(v103 + 4) = 1752392040;
      *(v103 + 12) = 2081;
      sub_1C94D7C74(&qword_1EDB7ADD0, type metadata accessor for Location);
      v104 = sub_1C96A7DB4();
      v106 = v105;
      sub_1C948CC9C(v102, type metadata accessor for Location);
      v107 = sub_1C9484164(v104, v106, &v152);

      *(v103 + 14) = v107;
      *(v103 + 22) = 2160;
      *(v103 + 24) = 1752392040;
      *(v103 + 32) = 2081;
      v150 = sub_1C96A5A74();
      v151 = v108;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A6430);
      v109 = sub_1C96A70A4();
      v111 = v110;
      v112 = v144;
      v144(v98, v99);
      v113 = sub_1C9484164(v109, v111, &v152);
      v89 = v138;

      *(v103 + 34) = v113;
      *(v103 + 42) = 1024;
      v114 = v149;
      *(v103 + 44) = v149 & 1;
      _os_log_impl(&dword_1C945E000, v100, v101, "Successfully performed a server side revGeo. location=%{private,mask.hash}s, unsanitizedSecondaryName=%{private,mask.hash}s, isExact=%{BOOL}d", v103, 0x30u);
      v115 = v142;
      swift_arrayDestroy();
      MEMORY[0x1CCA8E3D0](v115, -1, -1);
      MEMORY[0x1CCA8E3D0](v103, -1, -1);
    }

    else
    {

      v116 = v75;
      v112 = v144;
      v144(v98, v116);
      sub_1C948CC9C(v78, type metadata accessor for Location);
      v114 = v149;
    }

    v117 = v133;
    sub_1C9489760(v89, v133);
    *(v117 + *(v134 + 20)) = v114 & 1;
    v136(v117);
    sub_1C948CC9C(v117, type metadata accessor for GeocodeResult);
    sub_1C948CC9C(v89, type metadata accessor for Location);
    (*(v145 + 8))(v143, v147);
    v112(v148, v99);
  }
}

void sub_1C95AD64C(uint64_t a1)
{
  switch(a1)
  {
    case 0:
    case 1:
    case 2:
    case 3:
      OUTLINED_FUNCTION_1_43();
      break;
    default:
      sub_1C96A7A94();

      swift_getErrorValue();
      v1 = sub_1C96A7E84();
      MEMORY[0x1CCA8CB00](v1);

      MEMORY[0x1CCA8CB00](0x3D65646F43202CLL, 0xE700000000000000);
      swift_getErrorValue();
      sub_1C96A7E74();
      v2 = sub_1C96A7DB4();
      MEMORY[0x1CCA8CB00](v2);

      break;
  }
}

uint64_t GeocodeService.deinit()
{
  sub_1C9470AFC(v0 + OBJC_IVAR____TtC11WeatherCore14GeocodeService_serverSideRegionAllowlistGeoJSON, &qword_1EC3A63C0);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + OBJC_IVAR____TtC11WeatherCore14GeocodeService_appConfigurationManager);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + OBJC_IVAR____TtC11WeatherCore14GeocodeService_privacySampler);
  sub_1C9470AFC(v0 + OBJC_IVAR____TtC11WeatherCore14GeocodeService_locationMetadataUpdater, &unk_1EC3A63A8);

  sub_1C9470AFC(v0 + OBJC_IVAR____TtC11WeatherCore14GeocodeService_weatherService, &qword_1EC3A6378);

  return v0;
}

uint64_t GeocodeService.__deallocating_deinit()
{
  GeocodeService.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t GeocodeService.appConfigurationDidRefresh(_:)()
{
  v1 = type metadata accessor for AppConfiguration();
  v2 = v1 - 8;
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_14();
  v5 = v4 - v3;
  v6 = *(v0 + OBJC_IVAR____TtC11WeatherCore14GeocodeService_appConfigurationManager + 24);
  v7 = *(v0 + OBJC_IVAR____TtC11WeatherCore14GeocodeService_appConfigurationManager + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC11WeatherCore14GeocodeService_appConfigurationManager), v6);
  (*(v7 + 8))(v6, v7);
  v8 = v5 + *(v2 + 64);
  v9 = *(v8 + 16);
  v10 = *(v8 + 24);
  sub_1C96A53C4();
  OUTLINED_FUNCTION_4_34();
  sub_1C948CC9C(v5, v11);
  sub_1C95A6ABC(v9, v10);
}

unint64_t sub_1C95ADA10(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1C95ADAD8()
{
  result = type metadata accessor for Location();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t dispatch thunk of GeocodeServiceType.reverseGeocode(location:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 8))();
}

{
  return (*(a3 + 16))();
}

unint64_t sub_1C95ADC54()
{
  result = qword_1EDB7A190;
  if (!qword_1EDB7A190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7A190);
  }

  return result;
}

void sub_1C95ADCA8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1C96A7004();

  [a3 setDisplayRegion_];
}

id sub_1C95ADD0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = sub_1C96A7004();
  v9 = [a5 ticketForForwardGeocodeString:v8 maxResults:a3 traits:a4];

  return v9;
}

void sub_1C95ADDEC()
{
  v1 = *(sub_1C96A5874() - 8);
  v2 = (*(v1 + 80) + 56) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_1C95AC6AC((v0 + 16), v0 + v2, *(v0 + v3), *(v0 + v4), *(v0 + v5), *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + ((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t objectdestroy_26Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C95ADF8C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_51(a1, a2, a3);
  OUTLINED_FUNCTION_6();
  (*(v5 + 32))(v3, v4);
  return v3;
}

uint64_t sub_1C95ADFDC(void *a1)
{
  v1 = [a1 ISOcountryCode];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1C96A7024();

  return v3;
}

uint64_t sub_1C95AE040(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_51(a1, a2, a3);
  OUTLINED_FUNCTION_6();
  (*(v5 + 16))(v3, v4);
  return v3;
}

uint64_t sub_1C95AE098(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A63C0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_11WeatherCore14GeocodeServiceC6ErrorsO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1C95AE120(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 8))
  {
    return (*a1 + 2147483644);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C95AE174(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

uint64_t static Database.locationMetadata.getter()
{
  if (qword_1EDB7CF48 != -1)
  {
    swift_once();
  }

  return sub_1C96A3D04();
}

uint64_t CLPlacemark.localityName.getter()
{
  result = sub_1C95AE2B8(v0);
  if (!v2)
  {
LABEL_6:

    return sub_1C95D336C(v0);
  }

  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {

    goto LABEL_6;
  }

  return result;
}

uint64_t sub_1C95AE2B8(void *a1)
{
  v1 = [a1 locality];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1C96A7024();

  return v3;
}

Swift::Void __swiftcall URLRequest.addGeoCountryCodeHeader()()
{
  v0 = sub_1C96A4104();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v4 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  GeocodeManagerGetCurrentCountryCode()();
  (*(v1 + 104))(v3, *MEMORY[0x1E69E17C0], v0);
  sub_1C96A4114();

  (*(v1 + 8))(v3, v0);
}

uint64_t CurrentLocation.name.getter()
{
  CurrentLocation.identifier.getter(v1);
  sub_1C96A53C4();
  sub_1C953AEDC(v1);
  return OUTLINED_FUNCTION_11();
}

uint64_t CurrentLocation.timeZone.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Location();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_35_4();
  type metadata accessor for CurrentLocation();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_14();
  v8 = v7 - v6;
  sub_1C949D15C(v1, v7 - v6);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_1C96A4DB4();
    v11 = sub_1C96A4DF4();
  }

  else
  {
    OUTLINED_FUNCTION_8_25();
    sub_1C949A788(v8, v1, v9);
    v10 = *(v3 + 20);
    v11 = sub_1C96A4DF4();
    OUTLINED_FUNCTION_6();
    (*(v12 + 16))(a1, &v1[v10], v11);
    sub_1C948E940(v1, v1);
  }

  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v11);
}

uint64_t sub_1C95AE5DC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000;
  if (v4 || (sub_1C96A7DE4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656C617473 && a2 == 0xE500000000000000;
    if (v6 || (sub_1C96A7DE4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6961747265636E75 && a2 == 0xE90000000000006ELL;
      if (v7 || (sub_1C96A7DE4() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6C6F686563616C70 && a2 == 0xEB00000000726564)
      {

        return 3;
      }

      else
      {
        v9 = sub_1C96A7DE4();

        if (v9)
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

uint64_t sub_1C95AE73C(char a1)
{
  result = 0x6E6F697461636F6CLL;
  switch(a1)
  {
    case 1:
      result = 0x656C617473;
      break;
    case 2:
      result = 0x6961747265636E75;
      break;
    case 3:
      result = 0x6C6F686563616C70;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C95AE7D4(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C96A7DE4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C95AE84C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C95AE5DC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C95AE874(uint64_t a1)
{
  v2 = sub_1C95AF2B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C95AE8B0(uint64_t a1)
{
  v2 = sub_1C95AF2B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C95AE8F0(uint64_t a1)
{
  v2 = sub_1C95AF404();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C95AE92C(uint64_t a1)
{
  v2 = sub_1C95AF404();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C95AE968(uint64_t a1)
{
  v2 = sub_1C95AF308();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C95AE9A4(uint64_t a1)
{
  v2 = sub_1C95AF308();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C95AE9E0(uint64_t a1)
{
  v2 = sub_1C95AF3B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C95AEA1C(uint64_t a1)
{
  v2 = sub_1C95AF3B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C95AEA58(uint64_t a1)
{
  v2 = sub_1C95AF35C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C95AEA94(uint64_t a1)
{
  v2 = sub_1C95AF35C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id CurrentLocation.clLocation.getter()
{
  type metadata accessor for CurrentLocation();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_14();
  v4 = v3 - v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5450);
  OUTLINED_FUNCTION_7(v5);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v18 - v7);
  sub_1C949D15C(v0, v4);
  if (swift_getEnumCaseMultiPayload() > 2)
  {
    v9 = 1;
  }

  else
  {
    sub_1C949A788(v4, v8, type metadata accessor for Location);
    v9 = 0;
  }

  v10 = type metadata accessor for Location();
  __swift_storeEnumTagSinglePayload(v8, v9, 1, v10);
  if (__swift_getEnumTagSinglePayload(v8, 1, v10) == 1)
  {
    sub_1C9470AFC(v8, &qword_1EC3A5450);
    v11 = CurrentLocation.coordinate.getter();
    return [objc_allocWithZone(MEMORY[0x1E6985C40]) initWithLatitude:v11 longitude:v12];
  }

  else
  {
    v14 = *(v8 + *(v10 + 44));
    if (v14)
    {
      v13 = *(v8 + *(v10 + 44));
    }

    else
    {
      v13 = [objc_allocWithZone(MEMORY[0x1E6985C40]) initWithLatitude:v8[4] longitude:v8[5]];
      v14 = 0;
    }

    v15 = v14;
    OUTLINED_FUNCTION_10_23();
    sub_1C948E940(v8, v16);
  }

  return v13;
}

uint64_t CurrentLocation.encode(to:)()
{
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6458);
  OUTLINED_FUNCTION_1();
  v59 = v0;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_90();
  v57 = v2;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6460);
  OUTLINED_FUNCTION_1();
  v60 = v3;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_90();
  v58 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6468);
  OUTLINED_FUNCTION_1();
  v55 = v7;
  v56 = v6;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_90();
  v54 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6470);
  OUTLINED_FUNCTION_1();
  v52 = v11;
  v53 = v10;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_90();
  v51 = v13;
  v63 = type metadata accessor for Location();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2();
  v17 = v15 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v50 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v50 - v22;
  type metadata accessor for CurrentLocation();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_14();
  v27 = v26 - v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6478);
  OUTLINED_FUNCTION_1();
  v65 = v29;
  v66 = v28;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v30);
  v31 = OUTLINED_FUNCTION_21_17();
  __swift_project_boxed_opaque_existential_1(v31, v32);
  sub_1C95AF2B4();
  sub_1C96A7F54();
  sub_1C949D15C(v64, v27);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1C949A788(v27, v20, type metadata accessor for Location);
      v68 = 1;
      sub_1C95AF3B0();
      v48 = v54;
      v34 = v66;
      OUTLINED_FUNCTION_16_21();
      sub_1C96A7CD4();
      OUTLINED_FUNCTION_5_29(&qword_1EDB7ADD8);
      v49 = v56;
      OUTLINED_FUNCTION_28_10();
      (*(v55 + 8))(v48, v49);
      v36 = v20;
      goto LABEL_6;
    case 2u:
      sub_1C949A788(v27, v17, type metadata accessor for Location);
      v69 = 2;
      sub_1C95AF35C();
      v37 = v58;
      v38 = v66;
      OUTLINED_FUNCTION_16_21();
      sub_1C96A7CD4();
      OUTLINED_FUNCTION_5_29(&qword_1EDB7ADD8);
      v39 = v62;
      sub_1C96A7D74();
      (*(v60 + 8))(v37, v39);
      sub_1C948E940(v17, type metadata accessor for Location);
      v40 = OUTLINED_FUNCTION_19_15();
      v42 = v38;
      return v41(v40, v42);
    case 3u:
      v70 = 3;
      sub_1C95AF308();
      v43 = v57;
      v44 = v66;
      OUTLINED_FUNCTION_16_21();
      sub_1C96A7CD4();
      (*(v59 + 8))(v43, v61);
      v45 = OUTLINED_FUNCTION_19_15();
      return v46(v45, v44);
    default:
      sub_1C949A788(v27, v23, type metadata accessor for Location);
      v67 = 0;
      sub_1C95AF404();
      v33 = v51;
      v34 = v66;
      OUTLINED_FUNCTION_16_21();
      sub_1C96A7CD4();
      OUTLINED_FUNCTION_5_29(&qword_1EDB7ADD8);
      v35 = v53;
      OUTLINED_FUNCTION_28_10();
      (*(v52 + 8))(v33, v35);
      v36 = v23;
LABEL_6:
      sub_1C948E940(v36, type metadata accessor for Location);
      v40 = OUTLINED_FUNCTION_19_15();
      v42 = v34;
      return v41(v40, v42);
  }
}

unint64_t sub_1C95AF2B4()
{
  result = qword_1EDB7A018;
  if (!qword_1EDB7A018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7A018);
  }

  return result;
}

unint64_t sub_1C95AF308()
{
  result = qword_1EDB79FE0;
  if (!qword_1EDB79FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB79FE0);
  }

  return result;
}

unint64_t sub_1C95AF35C()
{
  result = qword_1EC3A6480;
  if (!qword_1EC3A6480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6480);
  }

  return result;
}

unint64_t sub_1C95AF3B0()
{
  result = qword_1EC3A6488;
  if (!qword_1EC3A6488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6488);
  }

  return result;
}

unint64_t sub_1C95AF404()
{
  result = qword_1EDB7A030;
  if (!qword_1EDB7A030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7A030);
  }

  return result;
}

uint64_t CurrentLocation.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v93 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6490);
  OUTLINED_FUNCTION_1();
  v87 = v4;
  v88 = v3;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_90();
  v92 = v6;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6498);
  OUTLINED_FUNCTION_1();
  v89 = v7;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_90();
  v94 = v9;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A64A0);
  OUTLINED_FUNCTION_1();
  v86 = v10;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_90();
  v91 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A64A8);
  OUTLINED_FUNCTION_1();
  v84 = v14;
  v85 = v13;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_90();
  v90 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A64B0);
  OUTLINED_FUNCTION_1();
  v96 = v18;
  v97 = v17;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v78 - v20;
  v22 = type metadata accessor for CurrentLocation();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_2();
  v26 = v24 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v78 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v78 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v78 - v34;
  v36 = a1[3];
  v99 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v36);
  sub_1C95AF2B4();
  v37 = v100;
  sub_1C96A7F44();
  if (v37)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v99);
  }

  v82 = v32;
  v83 = v29;
  v81 = v26;
  v38 = v97;
  v100 = v35;
  v39 = sub_1C96A7CC4();
  result = sub_1C9489288(v39, 0);
  if (v42 == v43 >> 1)
  {
    v44 = v21;
LABEL_9:
    v50 = sub_1C96A7AE4();
    swift_allocError();
    v52 = v51;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5A78);
    *v52 = v22;
    sub_1C96A7C14();
    sub_1C96A7AD4();
    (*(*(v50 - 8) + 104))(v52, *MEMORY[0x1E69E6AF8], v50);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v96 + 8))(v44, v38);
    return __swift_destroy_boxed_opaque_existential_1Tm(v99);
  }

  v80 = 0;
  v79 = v22;
  if (v42 >= (v43 >> 1))
  {
    __break(1u);
  }

  else
  {
    v45 = *(v41 + v42);
    sub_1C9489290(v42 + 1);
    v47 = v46;
    v49 = v48;
    swift_unknownObjectRelease();
    if (v47 != v49 >> 1)
    {
      v44 = v21;
      v22 = v79;
      goto LABEL_9;
    }

    switch(v45)
    {
      case 1:
        v102 = 1;
        sub_1C95AF3B0();
        OUTLINED_FUNCTION_12_24();
        type metadata accessor for Location();
        OUTLINED_FUNCTION_6_34(&qword_1EDB7D0B8);
        sub_1C96A7CB4();
        v80 = 0;
        swift_unknownObjectRelease();
        v71 = OUTLINED_FUNCTION_23_15();
        v72(v71);
        v73 = OUTLINED_FUNCTION_18_20();
        v74(v73);
        v75 = v83;
        OUTLINED_FUNCTION_25_13();
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_0_63();
        sub_1C949A788(v75, v100, v76);
        v77 = v99;
        goto LABEL_16;
      case 2:
        v103 = 2;
        sub_1C95AF35C();
        OUTLINED_FUNCTION_12_24();
        type metadata accessor for Location();
        OUTLINED_FUNCTION_6_34(&qword_1EDB7D0B8);
        v53 = v81;
        sub_1C96A7CB4();
        v80 = 0;
        swift_unknownObjectRelease();
        v57 = OUTLINED_FUNCTION_27_10();
        v58(v57);
        v59 = OUTLINED_FUNCTION_18_20();
        v60(v59);
        OUTLINED_FUNCTION_25_13();
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_0_63();
        v67 = v53;
        goto LABEL_14;
      case 3:
        v104 = 3;
        sub_1C95AF308();
        v54 = v92;
        OUTLINED_FUNCTION_12_24();
        v80 = 0;
        swift_unknownObjectRelease();
        (*(v87 + 8))(v54, v88);
        v55 = OUTLINED_FUNCTION_15_21();
        v56(v55, v38);
        OUTLINED_FUNCTION_25_13();
        swift_storeEnumTagMultiPayload();
        goto LABEL_15;
      default:
        v101 = 0;
        sub_1C95AF404();
        OUTLINED_FUNCTION_12_24();
        type metadata accessor for Location();
        OUTLINED_FUNCTION_6_34(&qword_1EDB7D0B8);
        sub_1C96A7CB4();
        v80 = 0;
        swift_unknownObjectRelease();
        v61 = OUTLINED_FUNCTION_26_7();
        v62(v61);
        v63 = OUTLINED_FUNCTION_15_21();
        v64(v63, v38);
        v65 = v82;
        OUTLINED_FUNCTION_25_13();
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_0_63();
        v67 = v65;
LABEL_14:
        sub_1C949A788(v67, v100, v66);
LABEL_15:
        v77 = v99;
LABEL_16:
        OUTLINED_FUNCTION_0_63();
        v68 = OUTLINED_FUNCTION_21_17();
        sub_1C949A788(v68, v69, v70);
        result = __swift_destroy_boxed_opaque_existential_1Tm(v77);
        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CurrentLocation.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1C95AFE40(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C95AFF00()
{
  result = qword_1EC3A64B8;
  if (!qword_1EC3A64B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A64B8);
  }

  return result;
}

unint64_t sub_1C95AFF58()
{
  result = qword_1EC3A64C0;
  if (!qword_1EC3A64C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A64C0);
  }

  return result;
}

unint64_t sub_1C95AFFB0()
{
  result = qword_1EC3A64C8;
  if (!qword_1EC3A64C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A64C8);
  }

  return result;
}

unint64_t sub_1C95B0008()
{
  result = qword_1EC3A64D0;
  if (!qword_1EC3A64D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A64D0);
  }

  return result;
}

unint64_t sub_1C95B0060()
{
  result = qword_1EDB7A020;
  if (!qword_1EDB7A020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7A020);
  }

  return result;
}

unint64_t sub_1C95B00B8()
{
  result = qword_1EDB7A028;
  if (!qword_1EDB7A028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7A028);
  }

  return result;
}

unint64_t sub_1C95B0110()
{
  result = qword_1EDB79FF8;
  if (!qword_1EDB79FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB79FF8);
  }

  return result;
}

unint64_t sub_1C95B0168()
{
  result = qword_1EDB7A000;
  if (!qword_1EDB7A000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7A000);
  }

  return result;
}

unint64_t sub_1C95B01C0()
{
  result = qword_1EDB79FE8;
  if (!qword_1EDB79FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB79FE8);
  }

  return result;
}

unint64_t sub_1C95B0218()
{
  result = qword_1EDB79FF0;
  if (!qword_1EDB79FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB79FF0);
  }

  return result;
}

unint64_t sub_1C95B0270()
{
  result = qword_1EDB79FD0;
  if (!qword_1EDB79FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB79FD0);
  }

  return result;
}

unint64_t sub_1C95B02C8()
{
  result = qword_1EDB79FD8;
  if (!qword_1EDB79FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB79FD8);
  }

  return result;
}

unint64_t sub_1C95B0320()
{
  result = qword_1EDB7A008;
  if (!qword_1EDB7A008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7A008);
  }

  return result;
}

unint64_t sub_1C95B0378()
{
  result = qword_1EDB7A010;
  if (!qword_1EDB7A010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7A010);
  }

  return result;
}

void __swiftcall MapsConfiguration.init(endpoints:useHTTP2:useSeparateRadarEndpoints:useClientHashRendering:precipitationForecastStartOffset:precipitationRadarStartOffset:windStartOffset:awDisabled:defaultOverlayKind:zoomLevels:supportsPinnedMapOnIpad:enableMapLocationAccessibilityModels:enableMapOverlaySonification:enableExitOvlInfo:maxRequestConcurrency:implicationTimerMs:)(WeatherCore::MapsConfiguration *__return_ptr retstr, Swift::OpaquePointer_optional endpoints, Swift::Bool_optional useHTTP2, Swift::Bool_optional useSeparateRadarEndpoints, Swift::Bool_optional useClientHashRendering, Swift::Double_optional precipitationForecastStartOffset, Swift::Double_optional precipitationRadarStartOffset, Swift::Double_optional windStartOffset, Swift::Bool_optional awDisabled, WeatherCore::MapsConfiguration::OverlayKind_optional defaultOverlayKind, WeatherCore::MapsConfiguration::ZoomLevelsConfiguration_optional *zoomLevels, Swift::Bool_optional supportsPinnedMapOnIpad, Swift::Bool_optional enableMapLocationAccessibilityModels, Swift::Bool_optional enableMapOverlaySonification, Swift::Bool_optional enableExitOvlInfo, Swift::Int_optional maxRequestConcurrency, Swift::Int_optional implicationTimerMs)
{
  is_nil = windStartOffset.is_nil;
  v40 = *&precipitationRadarStartOffset.is_nil;
  v45 = precipitationForecastStartOffset.is_nil;
  v44 = *&useClientHashRendering.value;
  v18 = endpoints.is_nil;
  v20 = *supportsPinnedMapOnIpad.value;
  v37 = *maxRequestConcurrency.value;
  v42 = *(maxRequestConcurrency.value + 48);
  v38 = *(maxRequestConcurrency.value + 32);
  v39 = *(maxRequestConcurrency.value + 16);
  v22 = *(maxRequestConcurrency.value + 64);
  v21 = *(maxRequestConcurrency.value + 72);
  v23 = *(maxRequestConcurrency.value + 80);
  v24 = *(maxRequestConcurrency.value + 88);
  v25 = *(maxRequestConcurrency.value + 89);
  v26 = sub_1C947FE2C(endpoints.value._rawValue);

  if (!v26)
  {
    if (qword_1EDB7EF18 != -1)
    {
      OUTLINED_FUNCTION_0_64();
      swift_once();
    }

    OUTLINED_FUNCTION_108();
    swift_beginAccess();
    v26 = off_1EDB7EF20;
    sub_1C96A53C4();
  }

  v27 = v49;
  value = implicationTimerMs.value;
  v29 = v42;
  v31 = v38;
  v30 = v39;
  v32 = v37;
  if (v25)
  {
    v24 = 0;
    v29 = xmmword_1C96B4FA0;
    v31 = xmmword_1C96B4F90;
    v30 = xmmword_1C96B4F80;
    v32 = xmmword_1C96B4F70;
    v23 = 7.0;
    v21 = 7.5;
    v22 = 9.0;
  }

  v33 = -86400.0;
  v34 = -7200.0;
  if (v20 == 4)
  {
    v35 = WeatherCore_MapsConfiguration_OverlayKind_precipitation;
  }

  else
  {
    v35 = v20;
  }

  retstr->endpoints._rawValue = v26;
  v36 = *&awDisabled.value;
  retstr->useHTTP2.value = v18;
  if (zoomLevels)
  {
    v36 = -86400.0;
  }

  retstr->useSeparateRadarEndpoints = useHTTP2;
  if (!is_nil)
  {
    v34 = v40;
  }

  retstr->useClientHashRendering = useSeparateRadarEndpoints;
  if (!v45)
  {
    v33 = v44;
  }

  retstr->precipitationForecastStartOffset = v33;
  retstr->precipitationRadarStartOffset = v34;
  if (implicationTimerMs.is_nil)
  {
    value = 20;
  }

  retstr->windStartOffset = v36;
  retstr->awDisabled.value = BYTE1(zoomLevels) & 1;
  if (v50)
  {
    v27 = 100;
  }

  retstr->defaultOverlayKind = v35;
  *&retstr->zoomLevels.airQuality = v32;
  *&retstr->zoomLevels.precipitationForecastRainNextHour = v30;
  *&retstr->zoomLevels.precipitationForecastRainNextSixHours = v31;
  *&retstr->zoomLevels.precipitationRadar = v29;
  retstr->zoomLevels.precipitationSwitchThreshold = v22;
  retstr->zoomLevels.temperature = v21;
  retstr->zoomLevels.wind.value = v23;
  retstr->zoomLevels.wind.is_nil = v24;
  *(&retstr->zoomLevels.wind + 9) = maxRequestConcurrency.is_nil;
  *(&retstr->zoomLevels.wind + 10) = v46;
  *(&retstr->zoomLevels.wind + 11) = v47;
  *(&retstr->zoomLevels.wind + 12) = v48;
  *&retstr->supportsPinnedMapOnIpad.value = value;
  retstr->maxRequestConcurrency = v27;
}

void __swiftcall MapsConfiguration.ZoomLevelsConfiguration.init(airQuality:precipitationForecast:precipitationForecastRainNextHour:precipitationForecastRainNextThreeHours:precipitationForecastRainNextSixHours:precipitationForecastNoRain:precipitationRadar:precipitationRadarRainingNow:precipitationSwitchThreshold:temperature:wind:)(WeatherCore::MapsConfiguration::ZoomLevelsConfiguration *__return_ptr retstr, Swift::Double_optional airQuality, Swift::Double_optional precipitationForecast, Swift::Double_optional precipitationForecastRainNextHour, Swift::Double_optional precipitationForecastRainNextThreeHours, Swift::Double_optional precipitationForecastRainNextSixHours, Swift::Double_optional precipitationForecastNoRain, Swift::Double_optional precipitationRadar, Swift::Double_optional precipitationRadarRainingNow, Swift::Double_optional precipitationSwitchThreshold, Swift::Double_optional temperature, Swift::Double_optional wind)
{
  v12 = v29;
  v13 = *&airQuality.is_nil;
  if (precipitationForecast.is_nil)
  {
    v13 = 11.0;
  }

  v14 = *&precipitationForecastRainNextHour.is_nil;
  if (precipitationForecastRainNextThreeHours.is_nil)
  {
    v14 = 8.9;
  }

  v15 = *&precipitationForecastRainNextSixHours.is_nil;
  if (precipitationForecastNoRain.is_nil)
  {
    v15 = 9.0;
  }

  v16 = *&precipitationRadar.is_nil;
  if (precipitationRadarRainingNow.is_nil)
  {
    v16 = 7.5;
  }

  value = precipitationSwitchThreshold.value;
  if (precipitationSwitchThreshold.is_nil)
  {
    value = 6.5;
  }

  v18 = temperature.value;
  if (temperature.is_nil)
  {
    v18 = 5.0;
  }

  v19 = wind.value;
  if (wind.is_nil)
  {
    v19 = 9.1;
  }

  v20 = 9.5;
  if ((v24 & 1) == 0)
  {
    v20 = v23;
  }

  retstr->airQuality = v13;
  retstr->precipitationForecast = v14;
  if (v26)
  {
    v21 = 9.0;
  }

  else
  {
    v21 = v25;
  }

  if (v28)
  {
    v22 = 7.5;
  }

  else
  {
    v22 = v27;
  }

  retstr->precipitationForecastRainNextHour = v15;
  retstr->precipitationForecastRainNextThreeHours = v16;
  if (v30)
  {
    v12 = 7.0;
  }

  retstr->precipitationForecastRainNextSixHours = value;
  retstr->precipitationForecastNoRain = v18;
  retstr->precipitationRadar = v19;
  retstr->precipitationRadarRainingNow = v20;
  retstr->precipitationSwitchThreshold = v21;
  retstr->temperature = v22;
  retstr->wind.value = v12;
  retstr->wind.is_nil = 0;
}

uint64_t MapsConfiguration.EndpointConfiguration.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MapsConfiguration.EndpointConfiguration() + 20);
  v4 = sub_1C96A4764();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MapsConfiguration.OverlayKind.rawValue.getter()
{
  result = 0x7469706963657270;
  switch(*v0)
  {
    case 1:
      result = 0x696C617551726961;
      break;
    case 2:
      result = 0x74617265706D6574;
      break;
    case 3:
      result = 1684957559;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C95B0894@<X0>(uint64_t *a1@<X8>)
{
  result = MapsConfiguration.OverlayKind.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C95B0918(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696C617551726961 && a2 == 0xEA00000000007974;
  if (v4 || (sub_1C96A7DE4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000015 && 0x80000001C96D2C90 == a2;
    if (v6 || (sub_1C96A7DE4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000021 && 0x80000001C96D2CB0 == a2;
      if (v7 || (sub_1C96A7DE4() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000027 && 0x80000001C96D2CE0 == a2;
        if (v8 || (sub_1C96A7DE4() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000025 && 0x80000001C96D2D10 == a2;
          if (v9 || (sub_1C96A7DE4() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD00000000000001BLL && 0x80000001C96D2D40 == a2;
            if (v10 || (sub_1C96A7DE4() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000012 && 0x80000001C96D2D60 == a2;
              if (v11 || (sub_1C96A7DE4() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD00000000000001CLL && 0x80000001C96D2D80 == a2;
                if (v12 || (sub_1C96A7DE4() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD00000000000001CLL && 0x80000001C96D2DA0 == a2;
                  if (v13 || (sub_1C96A7DE4() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x74617265706D6574 && a2 == 0xEB00000000657275;
                    if (v14 || (sub_1C96A7DE4() & 1) != 0)
                    {

                      return 9;
                    }

                    else if (a1 == 1684957559 && a2 == 0xE400000000000000)
                    {

                      return 10;
                    }

                    else
                    {
                      v16 = sub_1C96A7DE4();

                      if (v16)
                      {
                        return 10;
                      }

                      else
                      {
                        return 11;
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

uint64_t sub_1C95B0C74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C95B0918(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C95B0C9C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C95B0C6C();
  *a1 = result;
  return result;
}

uint64_t sub_1C95B0CC4(uint64_t a1)
{
  v2 = sub_1C9478DBC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C95B0D00(uint64_t a1)
{
  v2 = sub_1C9478DBC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MapsConfiguration.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A64E8);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v22 - v9;
  v11 = *v3;
  v12 = *(v3 + 8);
  v29 = *(v3 + 9);
  v30 = v12;
  v13 = *(v3 + 40);
  v27 = *(v3 + 41);
  v28 = v13;
  v14 = *(v3 + 137);
  v25 = *(v3 + 138);
  v26 = v14;
  v15 = *(v3 + 139);
  v23 = *(v3 + 140);
  v24 = v15;
  v16 = v3[18];
  v22[1] = v3[19];
  v22[2] = v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C9477884();
  sub_1C96A53C4();
  sub_1C96A7F54();
  __dst[0] = v11;
  v32 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A64E0);
  sub_1C94779B8(&qword_1EDB7CEF8, &unk_1EDB7EF08);
  OUTLINED_FUNCTION_9_26();
  v17 = v5;
  v18 = v10;
  sub_1C96A7D74();
  if (v2)
  {

    return (*(v7 + 8))(v10, v5);
  }

  else
  {
    v20 = v28;
    v21 = v29;
    v22[0] = v7;

    LOBYTE(__dst[0]) = v30;
    v32 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6188);
    sub_1C95B1EC0();
    OUTLINED_FUNCTION_9_26();
    OUTLINED_FUNCTION_16_22();
    sub_1C96A7D74();
    LOBYTE(__dst[0]) = v21;
    OUTLINED_FUNCTION_3_33(2);
    sub_1C96A7D74();
    LOBYTE(__dst[0]) = 3;
    sub_1C96A7D44();
    LOBYTE(__dst[0]) = 4;
    sub_1C96A7D44();
    LOBYTE(__dst[0]) = 5;
    sub_1C96A7D44();
    LOBYTE(__dst[0]) = v20;
    OUTLINED_FUNCTION_3_33(6);
    sub_1C96A7D74();
    LOBYTE(__dst[0]) = v27;
    v32 = 7;
    sub_1C95B1F3C();
    OUTLINED_FUNCTION_9_26();
    sub_1C96A7D74();
    memcpy(__dst, v3 + 6, 0x59uLL);
    v32 = 8;
    sub_1C95B1F90();
    OUTLINED_FUNCTION_9_26();
    sub_1C96A7D74();
    LOBYTE(__dst[0]) = v26;
    OUTLINED_FUNCTION_3_33(9);
    sub_1C96A7D74();
    LOBYTE(__dst[0]) = v25;
    OUTLINED_FUNCTION_3_33(10);
    sub_1C96A7D74();
    LOBYTE(__dst[0]) = v24;
    v32 = 11;
    OUTLINED_FUNCTION_9_26();
    OUTLINED_FUNCTION_16_22();
    OUTLINED_FUNCTION_26_8();
    sub_1C96A7D74();
    LOBYTE(__dst[0]) = v23;
    v32 = 12;
    OUTLINED_FUNCTION_9_26();
    OUTLINED_FUNCTION_16_22();
    OUTLINED_FUNCTION_26_8();
    sub_1C96A7D74();
    LOBYTE(__dst[0]) = 13;
    OUTLINED_FUNCTION_26_8();
    sub_1C96A7D54();
    LOBYTE(__dst[0]) = 14;
    OUTLINED_FUNCTION_26_8();
    sub_1C96A7D54();
    return (*(v22[0] + 8))(v18, v17);
  }
}

uint64_t sub_1C95B1284()
{
  v0 = sub_1C96A7BE4();

  if (v0 >= 0xF)
  {
    return 15;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1C95B1300@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C95B1284();
  *a1 = result;
  return result;
}

uint64_t sub_1C95B1330@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C9477A60(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1C95B135C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C95B12D0();
  *a1 = result;
  return result;
}

uint64_t sub_1C95B1384@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C95B12D4();
  *a1 = result;
  return result;
}

uint64_t sub_1C95B13AC(uint64_t a1)
{
  v2 = sub_1C9477884();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C95B13E8(uint64_t a1)
{
  v2 = sub_1C9477884();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MapsConfiguration.EndpointConfiguration.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A64F8);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C94780D8();
  sub_1C96A7F54();
  v14[15] = *v3;
  v14[14] = 0;
  sub_1C95B1FE4();
  OUTLINED_FUNCTION_24_0();
  sub_1C96A7D74();
  if (!v2)
  {
    type metadata accessor for MapsConfiguration.EndpointConfiguration();
    v14[13] = 1;
    sub_1C96A4764();
    OUTLINED_FUNCTION_8_26();
    sub_1C947F368(v11, v12);
    OUTLINED_FUNCTION_24_0();
    sub_1C96A7D74();
    v14[12] = 2;
    sub_1C95B2038();
    OUTLINED_FUNCTION_24_0();
    sub_1C96A7D74();
    v14[11] = 4;
    OUTLINED_FUNCTION_24_0();
    sub_1C96A7D34();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_1C95B1668@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C94E307C();
  *a1 = result;
  return result;
}

unint64_t sub_1C95B1698@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1C94783F8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1C95B16C4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C94E307C();
  *a1 = result;
  return result;
}

uint64_t sub_1C95B16EC(uint64_t a1)
{
  v2 = sub_1C94780D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C95B1728(uint64_t a1)
{
  v2 = sub_1C94780D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MapsConfiguration.ZoomLevelsConfiguration.encode(to:)()
{
  OUTLINED_FUNCTION_27_11();
  v13 = v1;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6500);
  OUTLINED_FUNCTION_1();
  v6 = v5;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - v8;
  v10 = *(v0 + 8);
  v12[0] = *(v0 + 16);
  v12[1] = v10;
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1C9478DBC();
  sub_1C96A7F54();
  v11 = v13;
  sub_1C96A7D44();
  if (!v11)
  {
    OUTLINED_FUNCTION_7_26();
    OUTLINED_FUNCTION_7_26();
    OUTLINED_FUNCTION_7_26();
    OUTLINED_FUNCTION_7_26();
    OUTLINED_FUNCTION_7_26();
    OUTLINED_FUNCTION_7_26();
    OUTLINED_FUNCTION_7_26();
    v16 = 8;
    OUTLINED_FUNCTION_7_26();
    v15 = 9;
    OUTLINED_FUNCTION_7_26();
    v14 = 10;
    sub_1C96A7D04();
  }

  (*(v6 + 8))(v9, v4);
  OUTLINED_FUNCTION_28_11();
}

uint64_t static MapsConfiguration.EndpointConfiguration.== infix(_:_:)(unsigned __int8 *a1, char *a2)
{
  if (sub_1C954A818(*a1, *a2) & 1) != 0 && (v4 = type metadata accessor for MapsConfiguration.EndpointConfiguration(), (sub_1C96A4724()))
  {
    v5 = a1[*(v4 + 28)] ^ a2[*(v4 + 28)] ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t static MapsConfiguration.EndpointConfiguration.default(for:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A70);
  MEMORY[0x1EEE9AC00](v6 - 8);
  OUTLINED_FUNCTION_15_22();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v32 - v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_25_14();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v32 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v32 - v15;
  switch(*a1)
  {
    case 1:
      OUTLINED_FUNCTION_6_35();
      sub_1C96A4754();
      v17 = sub_1C96A4764();
      a1 = 1;
      OUTLINED_FUNCTION_25_1(v16);
      if (v18)
      {
        goto LABEL_16;
      }

      *a2 = 1;
      type metadata accessor for MapsConfiguration.EndpointConfiguration();
      OUTLINED_FUNCTION_4_36();
      v20 = *(v19 + 32);
      v22 = &a2[v21];
      v23 = v16;
      goto LABEL_10;
    case 2:
      OUTLINED_FUNCTION_6_35();
      sub_1C96A4754();
      v17 = sub_1C96A4764();
      OUTLINED_FUNCTION_25_1(v13);
      if (v18)
      {
        goto LABEL_15;
      }

      OUTLINED_FUNCTION_30_7(2);
      OUTLINED_FUNCTION_4_36();
      v20 = *(v26 + 32);
      v22 = &a2[v27];
      v23 = v13;
      goto LABEL_10;
    case 3:
      OUTLINED_FUNCTION_6_35();
      sub_1C96A4754();
      v17 = sub_1C96A4764();
      OUTLINED_FUNCTION_25_1(v3);
      if (v18)
      {
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_30_7(3);
      OUTLINED_FUNCTION_4_36();
      v20 = *(v28 + 32);
      v22 = &a2[v29];
      v23 = v3;
      goto LABEL_10;
    case 4:
      OUTLINED_FUNCTION_6_35();
      sub_1C96A4754();
      v17 = sub_1C96A4764();
      OUTLINED_FUNCTION_25_1(v9);
      if (v18)
      {
        __break(1u);
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        __break(1u);
LABEL_19:
        result = sub_1C96A7BA4();
        __break(1u);
      }

      else
      {
        OUTLINED_FUNCTION_30_7(4);
        OUTLINED_FUNCTION_4_36();
        v20 = *(v24 + 32);
        v22 = &a2[v25];
        v23 = v9;
LABEL_10:
        result = v20(v22, v23, v17);
LABEL_11:
        a2[*(a1 + 28)] = 1;
      }

      return result;
    case 5:
      OUTLINED_FUNCTION_6_35();
      sub_1C96A4754();
      v31 = sub_1C96A4764();
      if (__swift_getEnumTagSinglePayload(v2, 1, v31) == 1)
      {
        goto LABEL_18;
      }

      a1 = OUTLINED_FUNCTION_30_7(5);
      result = (*(*(v31 - 8) + 32))(&a2[*(a1 + 20)], v2, v31);
      goto LABEL_11;
    default:
      goto LABEL_19;
  }
}

unint64_t sub_1C95B1EC0()
{
  result = qword_1EDB7CE08;
  if (!qword_1EDB7CE08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC3A6188);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7CE08);
  }

  return result;
}

unint64_t sub_1C95B1F3C()
{
  result = qword_1EDB7EE48;
  if (!qword_1EDB7EE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7EE48);
  }

  return result;
}

unint64_t sub_1C95B1F90()
{
  result = qword_1EDB7EF60;
  if (!qword_1EDB7EF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7EF60);
  }

  return result;
}

unint64_t sub_1C95B1FE4()
{
  result = qword_1EDB7FC00;
  if (!qword_1EDB7FC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7FC00);
  }

  return result;
}

unint64_t sub_1C95B2038()
{
  result = qword_1EDB7EF38;
  if (!qword_1EDB7EF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7EF38);
  }

  return result;
}

uint64_t static MapsConfiguration.EndpointConfiguration.defaultEndpoints.getter()
{
  if (qword_1EDB7EF18 != -1)
  {
    OUTLINED_FUNCTION_0_64();
    swift_once();
  }

  OUTLINED_FUNCTION_108();
  swift_beginAccess();
  return sub_1C96A53C4();
}

uint64_t static MapsConfiguration.EndpointConfiguration.defaultEndpoints.setter(void *a1)
{
  if (qword_1EDB7EF18 != -1)
  {
    OUTLINED_FUNCTION_0_64();
    swift_once();
  }

  swift_beginAccess();
  off_1EDB7EF20 = a1;
}

uint64_t (*static MapsConfiguration.EndpointConfiguration.defaultEndpoints.modify())()
{
  if (qword_1EDB7EF18 != -1)
  {
    OUTLINED_FUNCTION_0_64();
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

unint64_t sub_1C95B21E8()
{
  result = qword_1EC3A6510;
  if (!qword_1EC3A6510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6510);
  }

  return result;
}

unint64_t sub_1C95B223C()
{
  result = qword_1EC3A6518;
  if (!qword_1EC3A6518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6518);
  }

  return result;
}

uint64_t sub_1C95B2290(uint64_t a1)
{
  v2 = sub_1C94789A8();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45780](a1, v2, v3);
}

uint64_t sub_1C95B22E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C94789A8();
  v5 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45778](a1, a2, v4, v5);
}

uint64_t sub_1C95B2340(uint64_t a1)
{
  v2 = sub_1C94789A8();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45770](a1, v2, v3);
}

uint64_t sub_1C95B239C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 160))
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

uint64_t sub_1C95B241C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 89))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t getEnumTagSinglePayload for MapsConfiguration.ZoomLevelsConfiguration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF6)
  {
    if (a2 + 10 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 10) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 11;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v5 = v6 - 11;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

unint64_t sub_1C95B24D8()
{
  result = qword_1EC3A6520;
  if (!qword_1EC3A6520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6520);
  }

  return result;
}

unint64_t sub_1C95B2530()
{
  result = qword_1EC3A6528;
  if (!qword_1EC3A6528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6528);
  }

  return result;
}

unint64_t sub_1C95B2588()
{
  result = qword_1EC3A6530;
  if (!qword_1EC3A6530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6530);
  }

  return result;
}

uint64_t sub_1C95B25DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MapsConfiguration.EndpointConfiguration();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t IdentityService.__allocating_init(keyValueStoreProvider:iCloudStatusProvider:)()
{
  v0 = swift_allocObject();
  IdentityService.init(keyValueStoreProvider:iCloudStatusProvider:)();
  return v0;
}

void sub_1C95B2694()
{
  sub_1C94AB374();
  type metadata accessor for UserIdentity();
  sub_1C951B3AC();
  sub_1C94AB374();
  sub_1C951B3AC();
  sub_1C94AB374();
  sub_1C951B3AC();

  sub_1C951B3AC();
}

id sub_1C95B27E0(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + *a1);
  if (v3)
  {
    v4 = *(v1 + *a1);
  }

  else
  {
    v5 = v1;
    sub_1C96A5534();
    v6 = *(v1 + v2);
    *(v5 + v2) = v9;
    v4 = v9;

    v3 = 0;
  }

  v7 = v3;
  return v4;
}

Swift::Void __swiftcall IdentityService.resetUserIdentifier()()
{
  OUTLINED_FUNCTION_103();
  v3 = v0;
  v4 = sub_1C96A4A94();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_14();
  v10 = v9 - v8;
  type metadata accessor for UserIdentity();
  OUTLINED_FUNCTION_13_25();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2();
  v14 = (v12 - v13);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_12_26();
  IdentityService.identity.getter(v14);
  sub_1C96A4A84();
  v16 = sub_1C96A4A64();
  v32 = v17;
  v33 = v16;
  (*(v6 + 8))(v10, v4);
  sub_1C96A5954();
  sub_1C96A5944();
  v18 = v2[9];
  v19 = &v14[v2[8]];
  v20 = v19[1];
  v31 = *v19;
  v21 = sub_1C96A4A54();
  OUTLINED_FUNCTION_6();
  v23 = *(v22 + 16);
  v23(v1 + v18, &v14[v18], v21);
  v24 = &v14[v2[10]];
  v26 = *v24;
  v25 = v24[1];
  v23(v1 + v2[11], &v14[v2[11]], v21);
  v23(v1 + v2[12], &v14[v2[12]], v21);
  sub_1C96A53C4();
  sub_1C96A53C4();
  OUTLINED_FUNCTION_0_65();
  sub_1C94B3788(v14, v27);
  *v1 = v33;
  v1[1] = v32;
  v28 = (v1 + v2[8]);
  *v28 = v31;
  v28[1] = v20;
  v29 = (v1 + v2[10]);
  *v29 = v26;
  v29[1] = v25;
  sub_1C95B2694();
  OUTLINED_FUNCTION_7_27();
  if (*(v3 + 48))
  {
    sub_1C9469B6C(v3 + 24, v34);
    OUTLINED_FUNCTION_4_37();
    __swift_destroy_boxed_opaque_existential_1Tm(v34);
  }

  OUTLINED_FUNCTION_16_23(1);
  OUTLINED_FUNCTION_0_65();
  sub_1C94B3788(v1, v30);
  OUTLINED_FUNCTION_101();
}

uint64_t sub_1C95B2A9C(uint64_t *a1)
{
  v2 = v1;
  v27 = sub_1C96A6564();
  v29 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v25 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1C96A65E4();
  v26 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UserIdentityChange();
  v8 = v7 - 8;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v24 - v13);
  v15 = *a1;
  sub_1C96A50E4();
  v16 = OBJC_IVAR____TtC11WeatherCore15IdentityService_observers;
  swift_beginAccess();
  v17 = *(v2 + v16);
  sub_1C96A53C4();
  sub_1C96A50F4();
  IdentityService.identity.getter(v14);
  *(v14 + *(v8 + 28)) = v15;
  v24 = *(v2 + OBJC_IVAR____TtC11WeatherCore15IdentityService_notifyQueue);
  sub_1C94C92F8(v14, v12, type metadata accessor for UserIdentityChange);
  v18 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  *(v19 + 24) = v2;
  sub_1C94B3690(v12, v19 + v18, type metadata accessor for UserIdentityChange);
  aBlock[4] = sub_1C95B4740;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C946FCF8;
  aBlock[3] = &block_descriptor_17;
  v20 = _Block_copy(aBlock);
  sub_1C96A3D04();
  sub_1C96A6594();
  v30 = MEMORY[0x1E69E7CC0];
  sub_1C946F8C0(&qword_1EDB7CF40, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5370);
  sub_1C9469CB4(&qword_1EDB7CE80, &unk_1EC3A5370);
  v21 = v25;
  v22 = v27;
  sub_1C96A79E4();
  MEMORY[0x1CCA8D100](0, v6, v21, v20);
  _Block_release(v20);
  (*(v29 + 8))(v21, v22);
  (*(v26 + 8))(v6, v28);
  sub_1C94B3788(v14, type metadata accessor for UserIdentityChange);
}

Swift::Void __swiftcall IdentityService.resetPrivateUserIdentifier()()
{
  OUTLINED_FUNCTION_103();
  v30 = v0;
  v32 = sub_1C96A4A94();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_14();
  v8 = v7 - v6;
  type metadata accessor for UserIdentity();
  OUTLINED_FUNCTION_13_25();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2();
  v12 = (v10 - v11);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_12_26();
  IdentityService.identity.getter(v12);
  v14 = v12[1];
  v31 = *v12;
  v15 = v2[7];
  v16 = sub_1C96A4A54();
  OUTLINED_FUNCTION_6();
  v18 = *(v17 + 16);
  v18(&v1[v15], v12 + v15, v16);
  sub_1C96A53C4();
  sub_1C96A4A84();
  v19 = sub_1C96A4A64();
  v28 = v20;
  v29 = v19;
  (*(v4 + 8))(v8, v32);
  sub_1C96A5954();
  sub_1C96A5944();
  v21 = (v12 + v2[10]);
  v23 = *v21;
  v22 = v21[1];
  v18(&v1[v2[11]], v12 + v2[11], v16);
  v18(&v1[v2[12]], v12 + v2[12], v16);
  sub_1C96A53C4();
  OUTLINED_FUNCTION_0_65();
  sub_1C94B3788(v12, v24);
  *v1 = v31;
  *(v1 + 1) = v14;
  v25 = &v1[v2[8]];
  *v25 = v29;
  v25[1] = v28;
  v26 = &v1[v2[10]];
  *v26 = v23;
  *(v26 + 1) = v22;
  sub_1C95B2694();
  OUTLINED_FUNCTION_7_27();
  if (*(v30 + 48))
  {
    sub_1C9469B6C(v30 + 24, v33);
    OUTLINED_FUNCTION_4_37();
    __swift_destroy_boxed_opaque_existential_1Tm(v33);
  }

  OUTLINED_FUNCTION_16_23(2);
  OUTLINED_FUNCTION_0_65();
  sub_1C94B3788(v1, v27);
  OUTLINED_FUNCTION_101();
}

Swift::Void __swiftcall IdentityService.resetReportWeatherUserIdentifier()()
{
  OUTLINED_FUNCTION_103();
  v28 = v0;
  v32 = sub_1C96A4A94();
  OUTLINED_FUNCTION_1();
  v30 = v3;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_14();
  v7 = v6 - v5;
  type metadata accessor for UserIdentity();
  OUTLINED_FUNCTION_13_25();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2();
  v11 = (v9 - v10);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_12_26();
  IdentityService.identity.getter(v11);
  v31 = *v11;
  v27 = v11[1];
  v13 = v2[7];
  v14 = sub_1C96A4A54();
  OUTLINED_FUNCTION_6();
  v16 = *(v15 + 16);
  v16(&v1[v13], v11 + v13, v14);
  v17 = (v11 + v2[8]);
  v18 = v17[1];
  v29 = *v17;
  v16(&v1[v2[9]], v11 + v2[9], v14);
  sub_1C96A53C4();
  sub_1C96A53C4();
  sub_1C96A4A84();
  v19 = sub_1C96A4A64();
  v25 = v20;
  v26 = v19;
  (*(v30 + 8))(v7, v32);
  sub_1C96A5954();
  sub_1C96A5944();
  v16(&v1[v2[12]], v11 + v2[12], v14);
  OUTLINED_FUNCTION_0_65();
  sub_1C94B3788(v11, v21);
  *v1 = v31;
  *(v1 + 1) = v27;
  v22 = &v1[v2[8]];
  *v22 = v29;
  *(v22 + 1) = v18;
  v23 = &v1[v2[10]];
  *v23 = v26;
  v23[1] = v25;
  sub_1C95B2694();
  OUTLINED_FUNCTION_7_27();
  if (*(v28 + 48))
  {
    sub_1C9469B6C(v28 + 24, v33);
    OUTLINED_FUNCTION_4_37();
    __swift_destroy_boxed_opaque_existential_1Tm(v33);
  }

  OUTLINED_FUNCTION_16_23(4);
  OUTLINED_FUNCTION_0_65();
  sub_1C94B3788(v1, v24);
  OUTLINED_FUNCTION_101();
}

uint64_t sub_1C95B3378(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC11WeatherCore15IdentityService_observers;
  swift_beginAccess();
  v5 = *(a1 + v4);
  v11 = MEMORY[0x1E69E7CC0];
  v6 = sub_1C946D04C();
  result = sub_1C96A53C4();
  for (i = 0; ; ++i)
  {
    if (v6 == i)
    {

      *(a1 + v4) = v11;
    }

    if ((v5 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1CCA8D440](i, v5);
    }

    else
    {
      if (i >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      result = sub_1C96A3D04();
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong && (v10 = Strong, swift_unknownObjectRelease(), v10 == a2))
    {
    }

    else
    {
      sub_1C96A7B14();
      sub_1C96A7B34();
      sub_1C96A7B44();
      result = sub_1C96A7B24();
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

unint64_t sub_1C95B34DC(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  if (result >> 62)
  {
    result = sub_1C96A7BB4();
    v5 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v5 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      return result;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
  }

  else
  {
    for (i = 0; i != v5; ++i)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1CCA8D440](i, v4);
      }

      else
      {
        v7 = *(v4 + 8 * i + 32);
        sub_1C96A3D04();
      }

      v12[3] = type metadata accessor for IdentityService();
      v12[4] = &protocol witness table for IdentityService;
      v12[0] = a2;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v8 = *(v7 + 24);
        ObjectType = swift_getObjectType();
        v10 = *(v8 + 8);
        sub_1C96A3D04();
        v10(v12, a3, ObjectType, v8);
        swift_unknownObjectRelease();
      }

      else
      {
        sub_1C96A3D04();
      }

      result = __swift_destroy_boxed_opaque_existential_1Tm(v12);
    }
  }

  return result;
}

void sub_1C95B3630(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a4;
  v7 = type metadata accessor for UserIdentity();
  v30 = *(v7 - 8);
  v8 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  if (qword_1EDB7D038 != -1)
  {
    swift_once();
  }

  v11 = sub_1C96A6154();
  __swift_project_value_buffer(v11, qword_1EDB7D040);
  v12 = sub_1C96A6134();
  v13 = sub_1C96A76A4();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v29 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    v15 = v14;
    v16 = swift_slowAlloc();
    v28 = a3;
    v17 = v16;
    *&v32[0] = v16;
    *v15 = 136315138;
    if (v10)
    {
      v18 = 0x6574656C706D6F63;
    }

    else
    {
      v18 = 0x706D6F6320746F6ELL;
    }

    v27 = v8;
    if (v10)
    {
      v19 = 0xE900000000000064;
    }

    else
    {
      v19 = 0xED0000646574656CLL;
    }

    v20 = sub_1C9484164(v18, v19, v32);
    v8 = v27;

    *(v15 + 4) = v20;
    _os_log_impl(&dword_1C945E000, v12, v13, "Fallback migration %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    a3 = v28;
    MEMORY[0x1CCA8E3D0](v17, -1, -1);
    v21 = v15;
    v9 = v29;
    MEMORY[0x1CCA8E3D0](v21, -1, -1);
  }

  if (v10)
  {
    *&v32[0] = 7;
    sub_1C95B2A9C(v32);
  }

  else
  {
    v22 = a2;
    sub_1C96A5784();
    sub_1C9469B6C(a3, v32);
    sub_1C94C92F8(v31, v9, type metadata accessor for UserIdentity);
    v23 = (*(v30 + 80) + 56) & ~*(v30 + 80);
    v24 = swift_allocObject();
    sub_1C94670AC(v32, v24 + 16);
    sub_1C94B3690(v9, v24 + v23, type metadata accessor for UserIdentity);
    *(v24 + ((v8 + v23 + 7) & 0xFFFFFFFFFFFFFFF8)) = v22;
    sub_1C96A3D04();
    v25 = sub_1C96A55A4();
    sub_1C96A5644();

    v26 = sub_1C96A55A4();
    sub_1C96A5674();
  }
}

uint64_t sub_1C95B39B4(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1C95B27E0(a2);
  v4 = sub_1C95B4610(v3, *(a1 + 16));

  return v4;
}

uint64_t sub_1C95B3A18(unsigned __int8 *a1, void *a2, uint64_t *a3)
{
  v5 = *a1;
  if (qword_1EDB7D038 != -1)
  {
    swift_once();
  }

  v6 = sub_1C96A6154();
  __swift_project_value_buffer(v6, qword_1EDB7D040);
  v7 = sub_1C96A6134();
  v8 = sub_1C96A76A4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = a3;
    v11 = swift_slowAlloc();
    v19 = v11;
    *v9 = 136315138;
    if (v5)
    {
      v12 = 0x6574656C706D6F63;
    }

    else
    {
      v12 = 0x706D6F6320746F6ELL;
    }

    if (v5)
    {
      v13 = 0xE900000000000064;
    }

    else
    {
      v13 = 0xED0000646574656CLL;
    }

    v14 = sub_1C9484164(v12, v13, &v19);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_1C945E000, v7, v8, "Fallback migration %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    v15 = v11;
    a3 = v10;
    MEMORY[0x1CCA8E3D0](v15, -1, -1);
    MEMORY[0x1CCA8E3D0](v9, -1, -1);
  }

  if ((v5 & 1) == 0)
  {
    v16 = a2[3];
    v17 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v16);
    sub_1C959DD5C(a3, v16, v17);
  }

  v19 = 7;
  return sub_1C95B2A9C(&v19);
}

void sub_1C95B3C24(uint64_t a1, const char *a2)
{
  if (qword_1EDB7D038 != -1)
  {
    swift_once();
  }

  v3 = sub_1C96A6154();
  __swift_project_value_buffer(v3, qword_1EDB7D040);
  oslog = sub_1C96A6134();
  v4 = sub_1C96A7684();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1C945E000, oslog, v4, a2, v5, 2u);
    MEMORY[0x1CCA8E3D0](v5, -1, -1);
  }
}

uint64_t _s11WeatherCore15IdentityServiceC16accountSignedOutyyF_0()
{
  v0 = type metadata accessor for UserIdentity();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = (&v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1C956BE78(v2);
  sub_1C95B2694();
  v5 = 7;
  sub_1C95B2A9C(&v5);
  return sub_1C94B3788(v2, type metadata accessor for UserIdentity);
}

uint64_t IdentityService.deinit()
{
  sub_1C9470AFC(v0 + 24, &qword_1EC3A6548);
  sub_1C9470AFC(v0 + OBJC_IVAR____TtC11WeatherCore15IdentityService_lastKnownIdentity, &qword_1EC3A6538);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + OBJC_IVAR____TtC11WeatherCore15IdentityService_iCloudStatusProvider);
  return v0;
}

uint64_t IdentityService.__deallocating_deinit()
{
  IdentityService.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void IdentityService.ubiquitousKeyValueStoreChangedExternally(_:changeReason:)()
{
  OUTLINED_FUNCTION_103();
  v2 = *v1;
  v40 = v0;
  v41 = v2;
  v43[0] = MEMORY[0x1E69E7CC0];
  sub_1C94D5558(0, 7, 0);
  v3 = 0;
  v4 = v43[0];
  OUTLINED_FUNCTION_20_19();
  OUTLINED_FUNCTION_19_17();
  do
  {
    v13 = 0xED00006574614474;
    v14 = 0x7261745372657375;
    switch(byte_1F48FAE90[v3 + 32])
    {
      case 1:
        v14 = v12;
        v13 = v11;
        break;
      case 2:
        v14 = 0xD000000000000015;
        v13 = v10;
        break;
      case 3:
        v14 = 0xD000000000000017;
        v13 = v9;
        break;
      case 4:
        v14 = 0xD00000000000001BLL;
        v13 = v8;
        break;
      case 5:
        v14 = 0xD000000000000022;
        v13 = v7;
        break;
      case 6:
        v14 = 0xD000000000000024;
        v13 = v6;
        break;
      default:
        break;
    }

    v43[0] = v4;
    v16 = *(v4 + 16);
    v15 = *(v4 + 24);
    if (v16 >= v15 >> 1)
    {
      v38 = v7;
      v39 = v6;
      v36 = v9;
      v37 = v8;
      v35 = v10;
      sub_1C94D5558((v15 > 1), v16 + 1, 1);
      OUTLINED_FUNCTION_19_17();
      OUTLINED_FUNCTION_20_19();
      v10 = v35;
      v9 = v36;
      v8 = v37;
      v7 = v38;
      v6 = v39;
      v4 = v43[0];
    }

    ++v3;
    *(v4 + 16) = v16 + 1;
    v17 = v4 + 16 * v16;
    *(v17 + 32) = v14;
    *(v17 + 40) = v13;
  }

  while (v3 != 7);
  v18 = v41;
  if ((v41 - 1) > 2 && v41)
  {
    v19 = (v41 + 40);
    v20 = -*(v41 + 16);
    v21 = -1;
    while (v20 + v21 != -1)
    {
      if (++v21 >= *(v18 + 16))
      {
        __break(1u);
        goto LABEL_25;
      }

      v22 = v19 + 2;
      v23 = *v19;
      v43[0] = *(v19 - 1);
      v43[1] = v23;
      MEMORY[0x1EEE9AC00](v5);
      v34[2] = v43;
      sub_1C96A53C4();
      v24 = sub_1C957FD34(sub_1C9592490, v34, v4);

      v19 = v22;
      if (v24)
      {
        goto LABEL_18;
      }
    }

    if (qword_1EDB7CF60 == -1)
    {
      goto LABEL_21;
    }

LABEL_25:
    swift_once();
LABEL_21:
    v25 = sub_1C96A6154();
    __swift_project_value_buffer(v25, qword_1EDB7CF68);
    sub_1C9592414(v18);
    v26 = sub_1C96A6134();
    v27 = sub_1C96A76A4();
    sub_1C9592428(v18);
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v43[0] = v29;
      *v28 = 136315138;
      v42 = v18;
      v30 = OUTLINED_FUNCTION_11();
      __swift_instantiateConcreteTypeFromMangledNameV2(v30);
      sub_1C9469CB4(&qword_1EDB7AB68, &unk_1EC3A5FC0);
      v31 = sub_1C96A6F54();
      v33 = sub_1C9484164(v31, v32, v43);

      *(v28 + 4) = v33;
      _os_log_impl(&dword_1C945E000, v26, v27, "Remote identity store did change but it wasn't a relevant key (%s), so ignoring", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      MEMORY[0x1CCA8E3D0](v29, -1, -1);
      MEMORY[0x1CCA8E3D0](v28, -1, -1);
    }
  }

  else
  {
LABEL_18:

    _s11WeatherCore15IdentityServiceC15accountSignedInyyF_0();
  }

  OUTLINED_FUNCTION_101();
}

void sub_1C95B44D8()
{
  v2 = OUTLINED_FUNCTION_21_19();
  OUTLINED_FUNCTION_7(v2);
  sub_1C95B3630(v1, *(v0 + 16), v0 + 24, v0 + ((*(v3 + 80) + 64) & ~*(v3 + 80)));
}

uint64_t sub_1C95B4610(void *a1, void *a2)
{
  v9[3] = sub_1C946B5D0(0, &qword_1EDB7CD48);
  v9[4] = &protocol witness table for NSUbiquitousKeyValueStore;
  v9[0] = a1;
  v8[3] = sub_1C946B5D0(0, &qword_1EDB80340);
  v8[4] = &protocol witness table for NSUserDefaults;
  v8[0] = a2;
  sub_1C96A5134();
  v4 = a1;
  v5 = a2;
  sub_1C96A3D04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A6128);
  sub_1C96A5554();

  __swift_destroy_boxed_opaque_existential_1Tm(v9);
  __swift_destroy_boxed_opaque_existential_1Tm(v8);
  return v7;
}

unint64_t sub_1C95B4740()
{
  v1 = type metadata accessor for UserIdentityChange();
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = v0 + ((*(v2 + 80) + 32) & ~*(v2 + 80));

  return sub_1C95B34DC(v3, v4, v5);
}

uint64_t sub_1C95B47A8@<X0>(void *a1@<X8>)
{
  result = sub_1C96A6354();
  if (v10)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = sub_1C96A6354();
  if (v8)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  result = sub_1C96A6354();
  if (v6)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  result = sub_1C96A6354();
  if ((v4 & 1) == 0)
  {
    *a1 = v9;
    a1[1] = v7;
    a1[2] = v5;
    a1[3] = v3;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1C95B4864@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D60);
  v3 = OUTLINED_FUNCTION_7(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A54B8);
  v6 = OUTLINED_FUNCTION_7(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AC8);
  v9 = OUTLINED_FUNCTION_7(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AD0);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v11);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AD8);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_14_21();
  v55 = sub_1C96A6344();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A54C0);
  v19 = OUTLINED_FUNCTION_19_0();
  v22 = OUTLINED_FUNCTION_7_28(v19, v20, v21, v18);
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A54C8);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  v54 = OUTLINED_FUNCTION_19_18();
  v25 = OUTLINED_FUNCTION_19_0();
  v28 = OUTLINED_FUNCTION_7_28(v25, v26, v27, v18);
  OUTLINED_FUNCTION_17_23(v28, v29, v30);
  OUTLINED_FUNCTION_1_1();
  v31 = OUTLINED_FUNCTION_19_18();
  v32 = OUTLINED_FUNCTION_19_0();
  v35 = OUTLINED_FUNCTION_7_28(v32, v33, v34, v18);
  OUTLINED_FUNCTION_17_23(v35, v36, v37);
  OUTLINED_FUNCTION_1_1();
  v38 = OUTLINED_FUNCTION_19_18();
  v39 = OUTLINED_FUNCTION_19_0();
  v42 = OUTLINED_FUNCTION_7_28(v39, v40, v41, v18);
  OUTLINED_FUNCTION_17_23(v42, v43, v44);
  OUTLINED_FUNCTION_1_1();
  v45 = OUTLINED_FUNCTION_19_18();
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D68);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v47, v48, v49, v46);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v50, v51, v52, v46);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D70);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  result = sub_1C96A6344();
  *a1 = v55;
  a1[1] = v54;
  a1[2] = v31;
  a1[3] = v38;
  a1[4] = v45;
  a1[5] = result;
  return result;
}

uint64_t sub_1C95B4B68@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v80 = a3;
  v81 = a4;
  v79 = a2;
  v82 = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430);
  v7 = OUTLINED_FUNCTION_7(v6);
  MEMORY[0x1EEE9AC00](v7);
  v78 = &v73 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D60);
  v10 = OUTLINED_FUNCTION_7(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2();
  v75 = v11 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A54B8);
  v15 = OUTLINED_FUNCTION_7(v14);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AC8);
  v18 = OUTLINED_FUNCTION_7(v17);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v19);
  v20 = a1[1];
  v73 = *a1;
  v74 = v20;
  v21 = a1[3];
  v76 = a1[2];
  v77 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AD0);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v22);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AD8);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_14_21();
  v29 = sub_1C96A6344();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A54C0);
  v31 = OUTLINED_FUNCTION_19_0();
  v34 = OUTLINED_FUNCTION_7_28(v31, v32, v33, v30);
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A54C8);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  sub_1C96A3D04();
  OUTLINED_FUNCTION_1_0();
  v37 = OUTLINED_FUNCTION_19_18();
  v38 = OUTLINED_FUNCTION_19_0();
  v41 = OUTLINED_FUNCTION_7_28(v38, v39, v40, v30);
  OUTLINED_FUNCTION_18_4(v41, v42, v43);
  sub_1C96A3D04();
  OUTLINED_FUNCTION_1_0();
  v44 = OUTLINED_FUNCTION_19_18();
  v45 = OUTLINED_FUNCTION_19_0();
  v48 = OUTLINED_FUNCTION_7_28(v45, v46, v47, v30);
  OUTLINED_FUNCTION_18_4(v48, v49, v50);
  sub_1C96A3D04();
  OUTLINED_FUNCTION_1_0();
  v51 = OUTLINED_FUNCTION_19_18();
  v52 = OUTLINED_FUNCTION_19_0();
  v55 = OUTLINED_FUNCTION_7_28(v52, v53, v54, v30);
  OUTLINED_FUNCTION_18_4(v55, v56, v57);
  sub_1C96A3D04();
  OUTLINED_FUNCTION_1_0();
  v58 = OUTLINED_FUNCTION_19_18();
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D68);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v60, v61, v62, v59);
  v63 = OUTLINED_FUNCTION_19_0();
  __swift_storeEnumTagSinglePayload(v63, v64, v65, v59);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D70);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  sub_1C96A3D04();
  OUTLINED_FUNCTION_1_0();
  v66 = sub_1C96A6344();
  v83 = v73;
  LOBYTE(v84) = 0;
  sub_1C96A3D04();
  sub_1C96A6364();

  OUTLINED_FUNCTION_16_24(v74);
  sub_1C96A6364();

  OUTLINED_FUNCTION_16_24(v76);
  sub_1C96A6364();

  OUTLINED_FUNCTION_16_24(v77);
  sub_1C96A6364();

  v83 = v79;
  v84 = v80;
  sub_1C96A6364();

  v67 = sub_1C96A4A54();
  v68 = *(v67 - 8);
  v69 = v78;
  v70 = v81;
  (*(v68 + 16))(v78, v81, v67);
  __swift_storeEnumTagSinglePayload(v69, 0, 1, v67);
  sub_1C96A6364();

  result = (*(v68 + 8))(v70, v67);
  v72 = v82;
  *v82 = v29;
  v72[1] = v37;
  v72[2] = v44;
  v72[3] = v51;
  v72[4] = v58;
  v72[5] = v66;
  return result;
}

uint64_t sub_1C95B5038(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1C95B5078(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1C95B50D4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1C96A7DE4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 120 && a2 == 0xE100000000000000;
    if (v6 || (sub_1C96A7DE4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 121 && a2 == 0xE100000000000000;
      if (v7 || (sub_1C96A7DE4() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6874646977 && a2 == 0xE500000000000000;
        if (v8 || (sub_1C96A7DE4() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x746867696568 && a2 == 0xE600000000000000;
          if (v9 || (sub_1C96A7DE4() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x73657269707865 && a2 == 0xE700000000000000)
          {

            return 5;
          }

          else
          {
            v11 = sub_1C96A7DE4();

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

uint64_t sub_1C95B52A4(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 120;
      break;
    case 2:
      result = 121;
      break;
    case 3:
      result = 0x6874646977;
      break;
    case 4:
      result = 0x746867696568;
      break;
    case 5:
      result = 0x73657269707865;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C95B532C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6578);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C95B62F8();
  sub_1C96A7F54();
  v19 = *v3;
  HIBYTE(v18) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AD8);
  OUTLINED_FUNCTION_4_0();
  sub_1C9469CB4(v11, v12);
  sub_1C96A7D74();
  if (!v2)
  {
    v19 = v3[1];
    HIBYTE(v18) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A54C8);
    OUTLINED_FUNCTION_4_0();
    sub_1C9469CB4(v13, v14);
    OUTLINED_FUNCTION_8_27();
    OUTLINED_FUNCTION_13_26();
    v19 = v3[2];
    HIBYTE(v18) = 2;
    OUTLINED_FUNCTION_8_27();
    OUTLINED_FUNCTION_13_26();
    v19 = v3[3];
    HIBYTE(v18) = 3;
    OUTLINED_FUNCTION_8_27();
    OUTLINED_FUNCTION_13_26();
    v19 = v3[4];
    HIBYTE(v18) = 4;
    OUTLINED_FUNCTION_8_27();
    OUTLINED_FUNCTION_13_26();
    v19 = v3[5];
    HIBYTE(v18) = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D70);
    OUTLINED_FUNCTION_4_0();
    sub_1C9469CB4(v15, v16);
    OUTLINED_FUNCTION_8_27();
    sub_1C96A7D74();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_1C95B55B8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6568);
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D60);
  v4 = OUTLINED_FUNCTION_7(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A54B8);
  v7 = OUTLINED_FUNCTION_7(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AC8);
  v10 = OUTLINED_FUNCTION_7(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AD0);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v12);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AD8);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_14_21();
  sub_1C96A6344();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A54C0);
  v19 = OUTLINED_FUNCTION_4_38();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A54C8);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_22_16();
  v23 = OUTLINED_FUNCTION_4_38();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
  OUTLINED_FUNCTION_20_20();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_22_16();
  v27 = OUTLINED_FUNCTION_4_38();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
  OUTLINED_FUNCTION_20_20();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_22_16();
  v31 = OUTLINED_FUNCTION_4_38();
  __swift_storeEnumTagSinglePayload(v31, v32, v33, v34);
  OUTLINED_FUNCTION_20_20();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_22_16();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D68);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v36, v37, v38, v35);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v39, v40, v41, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D70);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  sub_1C96A6344();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C95B62F8();
  sub_1C96A7F44();
  if (v46)
  {

    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    OUTLINED_FUNCTION_5(&qword_1EC3A4B18, &qword_1EC3A4AD8);
    sub_1C96A7CB4();

    OUTLINED_FUNCTION_5(&qword_1EC3A5508, &qword_1EC3A54C8);
    OUTLINED_FUNCTION_3_34();
    sub_1C96A7CB4();

    OUTLINED_FUNCTION_3_34();
    sub_1C96A7CB4();

    OUTLINED_FUNCTION_3_34();
    sub_1C96A7CB4();

    OUTLINED_FUNCTION_3_34();
    sub_1C96A7CB4();

    OUTLINED_FUNCTION_5(&qword_1EC3A4E00, &qword_1EC3A4D70);
    sub_1C96A7CB4();
    v43 = OUTLINED_FUNCTION_15_23();
    v44(v43);

    result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
    *a2 = v48;
    a2[1] = v48;
    a2[2] = v48;
    a2[3] = v48;
    a2[4] = v48;
    a2[5] = v48;
  }

  return result;
}

uint64_t sub_1C95B5CE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C95B50D4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C95B5D0C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C95B529C();
  *a1 = result;
  return result;
}

uint64_t sub_1C95B5D34(uint64_t a1)
{
  v2 = sub_1C95B62F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C95B5D70(uint64_t a1)
{
  v2 = sub_1C95B62F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C95B5DC8()
{
  v0 = *a002_1;
  sub_1C96A53C4();
  return v0;
}

uint64_t sub_1C95B5E00(uint64_t a1)
{
  v2 = sub_1C95B62A4();

  return MEMORY[0x1EEE438E0](a1, v2);
}

uint64_t sub_1C95B5E4C(uint64_t a1)
{
  v2 = sub_1C95B62A4();

  return MEMORY[0x1EEE438F0](a1, v2);
}

uint64_t sub_1C95B5E98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C95B62A4();

  return MEMORY[0x1EEE438E8](a1, a2, a3, v6);
}

double sub_1C95B5EFC@<D0>(_OWORD *a1@<X8>)
{
  sub_1C95B4864(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

double sub_1C95B5F3C@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1C95B55B8(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

uint64_t sub_1C95B5F98(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C95B62A4();

  return MEMORY[0x1EEE43908](a1, a2, v4);
}

uint64_t sub_1C95B5FE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C95B62A4();

  return MEMORY[0x1EEE43900](a1, a2, a3, v6);
}

uint64_t sub_1C95B6038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C95B62A4();

  return MEMORY[0x1EEE438F8](a1, a2, a3, a4, v8);
}

unint64_t sub_1C95B609C()
{
  result = qword_1EDB79178;
  if (!qword_1EDB79178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB79178);
  }

  return result;
}

unint64_t sub_1C95B60F0()
{
  result = qword_1EDB79180;
  if (!qword_1EDB79180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB79180);
  }

  return result;
}

unint64_t sub_1C95B6148()
{
  result = qword_1EDB79190;
  if (!qword_1EDB79190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB79190);
  }

  return result;
}

unint64_t sub_1C95B61A0()
{
  result = qword_1EDB79198;
  if (!qword_1EDB79198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB79198);
  }

  return result;
}

unint64_t sub_1C95B61F8()
{
  result = qword_1EDB79188;
  if (!qword_1EDB79188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB79188);
  }

  return result;
}

unint64_t sub_1C95B6250()
{
  result = qword_1EDB791A0;
  if (!qword_1EDB791A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB791A0);
  }

  return result;
}

unint64_t sub_1C95B62A4()
{
  result = qword_1EDB791A8[0];
  if (!qword_1EDB791A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDB791A8);
  }

  return result;
}

unint64_t sub_1C95B62F8()
{
  result = qword_1EC3A6570;
  if (!qword_1EC3A6570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6570);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LocationDisplayRegionEntity.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C95B642C()
{
  result = qword_1EC3A6580;
  if (!qword_1EC3A6580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6580);
  }

  return result;
}

unint64_t sub_1C95B6484()
{
  result = qword_1EC3A6588;
  if (!qword_1EC3A6588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6588);
  }

  return result;
}

unint64_t sub_1C95B64DC()
{
  result = qword_1EC3A6590;
  if (!qword_1EC3A6590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6590);
  }

  return result;
}

uint64_t PermanentURLFactory.Container.hashValue.getter()
{
  v1 = *v0;
  sub_1C96A7EE4();
  MEMORY[0x1CCA8D880](v1);
  return sub_1C96A7F24();
}

unint64_t PermanentURLFactory.permanentURL(for:container:)@<X0>(unsigned __int8 *a1@<X2>, uint64_t a2@<X8>)
{
  v41[0] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A70);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v41 - v4;
  v6 = sub_1C96A43B4();
  OUTLINED_FUNCTION_1();
  v41[3] = v7;
  MEMORY[0x1EEE9AC00](v8);
  v9 = sub_1C96A7084();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = *a1;
  v44 = xmmword_1C96ACFD0;
  sub_1C95B6AF4(0, 0, 2);
  v15 = 0;
  switch(*(&v44 + 1) >> 62)
  {
    case 1:
      v15 = v44 >> 32;
      break;
    case 2:
      v15 = *(v44 + 24);
      break;
    case 3:
      break;
    default:
      v15 = BYTE14(v44);
      break;
  }

  sub_1C95B6AF4(v15, v15, v45 + 1);
  OUTLINED_FUNCTION_0_66();
  result = sub_1C96A7154();
  if (result > 0xFF)
  {
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    return result;
  }

  v17 = result;
  v18 = 0;
  v41[2] = v6;
  switch(*(&v44 + 1) >> 62)
  {
    case 1:
      v18 = v44 >> 32;
      break;
    case 2:
      v18 = *(v44 + 24);
      break;
    case 3:
      break;
    default:
      v18 = BYTE14(v44);
      break;
  }

  sub_1C95B6AF4(v18, v18, v17);
  sub_1C96A7074();
  sub_1C96A7034();
  v20 = v19;
  v21 = *(v11 + 8);
  result = v21(v14, v9);
  if (v20 >> 60 == 15)
  {
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_0_66();
  sub_1C96A4884();
  v22 = OUTLINED_FUNCTION_0_66();
  sub_1C9485BFC(v22, v23);
  v24 = 0;
  switch(*(&v44 + 1) >> 62)
  {
    case 1:
      v24 = v44 >> 32;
      break;
    case 2:
      v24 = *(v44 + 24);
      break;
    case 3:
      break;
    default:
      v24 = BYTE14(v44);
      break;
  }

  sub_1C95B6AF4(v24, v24, 0);
  sub_1C96A7074();
  sub_1C96A7034();
  v26 = v25;
  result = v21(v14, v9);
  if (v26 >> 60 == 15)
  {
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_0_66();
  sub_1C96A4884();
  v27 = OUTLINED_FUNCTION_0_66();
  sub_1C9485BFC(v27, v28);
  sub_1C96A43A4();
  sub_1C96A4384();
  if (v45)
  {
    v29 = 0xD000000000000018;
  }

  else
  {
    v29 = 0x2E656C7070612E63;
  }

  if (v45)
  {
    v30 = 0x80000001C96D2F60;
  }

  else
  {
    v30 = 0xEC0000007377656ELL;
  }

  MEMORY[0x1CCA89CE0](v29, v30);
  v42 = 47;
  v43 = 0xE100000000000000;
  v31 = sub_1C96A47D4();
  MEMORY[0x1CCA8CB00](v31);

  MEMORY[0x1CCA89CF0](v42, v43);
  sub_1C96A4344();
  v32 = sub_1C96A4764();
  if (__swift_getEnumTagSinglePayload(v5, 1, v32) == 1)
  {
    sub_1C947F1BC(v5);
    sub_1C95B6BB8();
    v33 = sub_1C96A7DB4();
    v35 = v34;
    sub_1C95B6C10();
    swift_allocError();
    *v36 = v33;
    v36[1] = v35;
    swift_willThrow();
    v37 = OUTLINED_FUNCTION_2_47();
    v38(v37);
    return sub_1C9482F3C(v44, *(&v44 + 1));
  }

  else
  {
    v39 = OUTLINED_FUNCTION_2_47();
    v40(v39);
    sub_1C9482F3C(v44, *(&v44 + 1));
    return (*(*(v32 - 8) + 32))(v41[0], v5, v32);
  }
}

uint64_t sub_1C95B6AF4(uint64_t a1, uint64_t a2, char a3)
{
  v8 = *MEMORY[0x1E69E9840];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A65B0);
  v7 = sub_1C95B6DFC();
  LOBYTE(v5[0]) = a3;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  sub_1C96A47F4();
  return __swift_destroy_boxed_opaque_existential_1Tm(v5);
}

unint64_t sub_1C95B6BB8()
{
  result = qword_1EC3A6598;
  if (!qword_1EC3A6598)
  {
    sub_1C96A43B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6598);
  }

  return result;
}

unint64_t sub_1C95B6C10()
{
  result = qword_1EC3A65A0;
  if (!qword_1EC3A65A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A65A0);
  }

  return result;
}

unint64_t sub_1C95B6C68()
{
  result = qword_1EC3A65A8;
  if (!qword_1EC3A65A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A65A8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PermanentURLFactory.Container(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C95B6DFC()
{
  result = qword_1EDB7CD18;
  if (!qword_1EDB7CD18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC3A65B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7CD18);
  }

  return result;
}

uint64_t static PeriodicWeatherAlertEntity.version.getter()
{
  swift_beginAccess();
  v0 = *a001_1;
  sub_1C96A53C4();
  return v0;
}

uint64_t static PeriodicWeatherAlertEntity.version.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *a001_1 = a1;
  qword_1EC3A65C0 = a2;
}

uint64_t sub_1C95B6F84@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = qword_1EC3A65C0;
  *a1 = *a001_1;
  a1[1] = v2;
  return sub_1C96A53C4();
}

uint64_t sub_1C95B6FD4(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  *a001_1 = v2;
  qword_1EC3A65C0 = v1;
  sub_1C96A53C4();
}

uint64_t PeriodicWeatherAlertEntity.init()@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D60);
  v3 = OUTLINED_FUNCTION_7(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v31 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AC8);
  v8 = OUTLINED_FUNCTION_7(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AD0);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v10);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AD8);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_9_27();
  *a1 = sub_1C96A6344();
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v10);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v10);
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  a1[1] = sub_1C96A6344();
  _s11WeatherCore11SystemClockV4time10Foundation4DateVvg_0();
  v23 = *MEMORY[0x1E69D61F8];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D68);
  OUTLINED_FUNCTION_6();
  (*(v25 + 104))(v6, v23, v24);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v24);
  OUTLINED_FUNCTION_6_1();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D70);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  result = sub_1C96A6344();
  a1[2] = result;
  return result;
}

uint64_t PeriodicWeatherAlertEntity.init(weatherAlert:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v47 = a1;
  v48 = sub_1C96A4A94();
  OUTLINED_FUNCTION_1();
  v46 = v3;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D60);
  v8 = OUTLINED_FUNCTION_7(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v45 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AC8);
  v13 = OUTLINED_FUNCTION_7(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AD0);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v15);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AD8);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_9_27();
  *a2 = sub_1C96A6344();
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v15);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v15);
  swift_allocObject();
  sub_1C96A3D04();
  OUTLINED_FUNCTION_9_27();
  a2[1] = sub_1C96A6344();
  sub_1C96A3D04();
  _s11WeatherCore11SystemClockV4time10Foundation4DateVvg_0();
  v28 = *MEMORY[0x1E69D61F8];
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D68);
  OUTLINED_FUNCTION_6();
  (*(v30 + 104))(v11, v28, v29);
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v29);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v31, v32, v33, v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D70);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  a2[2] = sub_1C96A6344();
  v34 = [objc_allocWithZone(MEMORY[0x1E696AFB0]) init];
  v35 = [v34 UUIDString];

  v36 = sub_1C96A7024();
  v38 = v37;

  v49 = v36;
  v50 = v38;
  sub_1C96A6364();

  v39 = v47;
  sub_1C96A5914();
  v40 = sub_1C96A4A64();
  v42 = v41;
  (*(v46 + 8))(v6, v48);
  v49 = v40;
  v50 = v42;
  sub_1C96A6364();

  sub_1C96A5934();
  OUTLINED_FUNCTION_6();
  return (*(v43 + 8))(v39);
}

uint64_t sub_1C95B769C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1C96A7DE4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6564497472656C61 && a2 == 0xEF7265696669746ELL;
    if (v6 || (sub_1C96A7DE4() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x64657461657263 && a2 == 0xE700000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C96A7DE4();

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

uint64_t sub_1C95B77AC(char a1)
{
  if (!a1)
  {
    return 25705;
  }

  if (a1 == 1)
  {
    return 0x6564497472656C61;
  }

  return 0x64657461657263;
}

uint64_t sub_1C95B780C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C95B769C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C95B7834(uint64_t a1)
{
  v2 = sub_1C95B7AC0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C95B7870(uint64_t a1)
{
  v2 = sub_1C95B7AC0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PeriodicWeatherAlertEntity.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A65C8);
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - v8;
  v11 = *v1;
  v10 = v1[1];
  v19 = v1[2];
  v20 = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C95B7AC0();
  sub_1C96A3D04();
  sub_1C96A7F54();
  v22 = v11;
  v21 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AD8);
  OUTLINED_FUNCTION_4_0();
  sub_1C9469CB4(v12, v13);
  OUTLINED_FUNCTION_5_31();
  sub_1C96A7D74();

  if (!v2)
  {
    v14 = v19;
    v22 = v20;
    v21 = 1;
    OUTLINED_FUNCTION_5_31();
    sub_1C96A7D74();
    v22 = v14;
    v21 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D70);
    OUTLINED_FUNCTION_4_0();
    sub_1C9469CB4(v15, v16);
    OUTLINED_FUNCTION_5_31();
    sub_1C96A7D74();
  }

  return (*(v6 + 8))(v9, v4);
}

unint64_t sub_1C95B7AC0()
{
  result = qword_1EC3A65D0;
  if (!qword_1EC3A65D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A65D0);
  }

  return result;
}

uint64_t PeriodicWeatherAlertEntity.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v46 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A65D8);
  OUTLINED_FUNCTION_1();
  v47 = v4;
  v48 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v45 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D60);
  v8 = OUTLINED_FUNCTION_7(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v45 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AC8);
  v13 = OUTLINED_FUNCTION_7(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AD0);
  OUTLINED_FUNCTION_6_1();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
  OUTLINED_FUNCTION_6_1();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AD8);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_9_27();
  v51 = sub_1C96A6344();
  OUTLINED_FUNCTION_6_1();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
  OUTLINED_FUNCTION_6_1();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  v50 = sub_1C96A6344();
  _s11WeatherCore11SystemClockV4time10Foundation4DateVvg_0();
  v31 = *MEMORY[0x1E69D61F8];
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D68);
  OUTLINED_FUNCTION_6();
  (*(v33 + 104))(v11, v31, v32);
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v32);
  OUTLINED_FUNCTION_6_1();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v37);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D70);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  sub_1C96A6344();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C95B7AC0();
  v38 = v49;
  sub_1C96A7F44();
  if (!v38)
  {
    v39 = v47;
    v52 = 0;
    OUTLINED_FUNCTION_5(&qword_1EC3A4B18, &qword_1EC3A4AD8);
    OUTLINED_FUNCTION_10_26();

    v51 = v53;
    v52 = 1;
    OUTLINED_FUNCTION_10_26();

    v41 = v53;
    v52 = 2;
    OUTLINED_FUNCTION_5(&qword_1EC3A4E00, &qword_1EC3A4D70);
    v42 = v48;
    sub_1C96A7CB4();
    (*(v39 + 8))(v6, v42);

    v43 = v53;
    v44 = v46;
    *v46 = v51;
    v44[1] = v41;
    v44[2] = v43;
    sub_1C96A3D04();
    sub_1C96A3D04();
    sub_1C96A3D04();
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_1C95B7F9C()
{
  result = qword_1EDB7A6D8;
  if (!qword_1EDB7A6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7A6D8);
  }

  return result;
}

unint64_t sub_1C95B7FF4()
{
  result = qword_1EDB7A6F0;
  if (!qword_1EDB7A6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7A6F0);
  }

  return result;
}

unint64_t sub_1C95B804C()
{
  result = qword_1EDB7A6C8;
  if (!qword_1EDB7A6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7A6C8);
  }

  return result;
}

unint64_t sub_1C95B80A0()
{
  result = qword_1EDB7A6D0;
  if (!qword_1EDB7A6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7A6D0);
  }

  return result;
}

unint64_t sub_1C95B80F8()
{
  result = qword_1EDB7A6E8;
  if (!qword_1EDB7A6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7A6E8);
  }

  return result;
}

unint64_t sub_1C95B8174()
{
  result = qword_1EDB7A6E0;
  if (!qword_1EDB7A6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7A6E0);
  }

  return result;
}

uint64_t sub_1C95B81C8(uint64_t a1)
{
  v2 = sub_1C95B85F0();

  return MEMORY[0x1EEE438E0](a1, v2);
}

uint64_t sub_1C95B8214(uint64_t a1)
{
  v2 = sub_1C95B85F0();

  return MEMORY[0x1EEE438F0](a1, v2);
}

uint64_t sub_1C95B8260(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C95B85F0();

  return MEMORY[0x1EEE438E8](a1, a2, a3, v6);
}

uint64_t sub_1C95B82F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C95B85F0();

  return MEMORY[0x1EEE43908](a1, a2, v4);
}

uint64_t sub_1C95B8344(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C95B85F0();

  return MEMORY[0x1EEE43900](a1, a2, a3, v6);
}

uint64_t sub_1C95B8398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C95B85F0();

  return MEMORY[0x1EEE438F8](a1, a2, a3, a4, v8);
}

_BYTE *storeEnumTagSinglePayload for PeriodicWeatherAlertEntity.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C95B84EC()
{
  result = qword_1EC3A65E0;
  if (!qword_1EC3A65E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A65E0);
  }

  return result;
}

unint64_t sub_1C95B8544()
{
  result = qword_1EC3A65E8;
  if (!qword_1EC3A65E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A65E8);
  }

  return result;
}

unint64_t sub_1C95B859C()
{
  result = qword_1EC3A65F0;
  if (!qword_1EC3A65F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A65F0);
  }

  return result;
}

unint64_t sub_1C95B85F0()
{
  result = qword_1EC3A65F8;
  if (!qword_1EC3A65F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A65F8);
  }

  return result;
}

uint64_t DarwinNotificationName.name.getter()
{
  v1 = *v0;
  sub_1C96A53C4();
  return v1;
}

uint64_t sub_1C95B867C@<X0>(Swift::String *a1@<X0>, void *a2@<X8>)
{
  result = DarwinNotificationName.init(stringLiteral:)(*a1).name._countAndFlagsBits;
  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_1C95B86BC@<X0>(uint64_t *a1@<X8>)
{
  result = DarwinNotificationName.name.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1C95B86F0()
{
  result = qword_1EC3A6600;
  if (!qword_1EC3A6600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6600);
  }

  return result;
}

unint64_t sub_1C95B8760()
{
  result = qword_1EC3A6608;
  if (!qword_1EC3A6608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6608);
  }

  return result;
}

uint64_t sub_1C95B889C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1C95B89AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v15 = swift_allocObject();
  v15[2] = a8;
  v15[3] = a9;
  v15[4] = a10;
  v15[5] = a6;
  v15[6] = a7;
  v15[7] = a1;
  v15[8] = a2;
  v16 = *(a10 + 8);
  sub_1C96A3D04();
  sub_1C96A3D04();
  v16(sub_1C95BA554, v15, a8, a10);
}

void sub_1C95B8A88(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  a2();
  v13 = swift_allocObject();
  v13[2] = a6;
  v13[3] = a7;
  v13[4] = a8;
  v13[5] = a4;
  v13[6] = a5;
  sub_1C96A3D04();
  v14 = sub_1C96A55A4();
  sub_1C96A5644();
}

uint64_t sub_1C95B8B6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v15 = swift_allocObject();
  v15[2] = a8;
  v15[3] = a9;
  v15[4] = a10;
  v15[5] = a1;
  v15[6] = a2;
  v15[7] = a6;
  v15[8] = a7;
  v16 = *(a10 + 8);
  sub_1C96A3D04();
  sub_1C96A3D04();
  v16(sub_1C95BA880, v15, a8, a10);
}

uint64_t sub_1C95B8C48(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = *(a7 - 8);
  v10 = MEMORY[0x1EEE9AC00]();
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13(v10);
  a2(v12);
  return (*(v9 + 8))(v12, a7);
}

uint64_t static UbiquitousKeyValueStoreProvider.shared.getter()
{
  if (qword_1EDB7D5B0 != -1)
  {
    swift_once();
  }

  return sub_1C96A3D04();
}

uint64_t UbiquitousKeyValueStoreProvider.synchronizeImmediately()()
{
  if (qword_1EDB77DF0 != -1)
  {
    swift_once();
  }

  v0 = sub_1C96A6154();
  __swift_project_value_buffer(v0, qword_1EDB77DF8);
  v1 = sub_1C96A6134();
  v2 = sub_1C96A76A4();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1C945E000, v1, v2, "Attempting to synchronize immediately with the active store", v3, 2u);
    MEMORY[0x1CCA8E3D0](v3, -1, -1);
  }

  sub_1C946B5D0(0, &qword_1EDB7CD48);
  sub_1C96A5784();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A51A8);
  v4 = sub_1C96A5634();

  return v4;
}

uint64_t sub_1C95B8EF4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6630);
  swift_allocObject();
  return sub_1C96A5714();
}

void sub_1C95B8F68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1C94DA5C0;
  *(v9 + 24) = v8;
  v11[4] = sub_1C95BA8BC;
  v11[5] = v9;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1C9539FC4;
  v11[3] = &block_descriptor_49;
  v10 = _Block_copy(v11);
  sub_1C96A3D04();

  [a5 wc:v10 synchronizeWithCompletionHandler:?];
  _Block_release(v10);
}

uint64_t UbiquitousKeyValueStoreProvider.removeObserver(_:)(uint64_t a1)
{
  v2 = v1;
  sub_1C96A50E4();
  swift_beginAccess();
  v4 = *(v1 + 64);
  v10 = MEMORY[0x1E69E7CC0];
  v5 = sub_1C946D04C();
  result = sub_1C96A53C4();
  for (i = 0; ; ++i)
  {
    if (v5 == i)
    {

      *(v2 + 64) = v10;

      return sub_1C96A50F4();
    }

    if ((v4 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1CCA8D440](i, v4);
    }

    else
    {
      if (i >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      result = sub_1C96A3D04();
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong && (v9 = Strong, swift_unknownObjectRelease(), v9 == a1))
    {
    }

    else
    {
      sub_1C96A7B14();
      sub_1C96A7B34();
      sub_1C96A7B44();
      result = sub_1C96A7B24();
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1C95B91E4(uint64_t *a1)
{
  v2 = v1;
  v4 = sub_1C96A6564();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1C96A65E4();
  v8 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  sub_1C96A50E4();
  swift_beginAccess();
  v12 = *(v2 + 64);
  sub_1C96A53C4();
  sub_1C96A50F4();
  v16 = *(v2 + 72);
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = v2;
  v13[4] = v11;
  aBlock[4] = sub_1C95BA688;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C946FCF8;
  aBlock[3] = &block_descriptor_10;
  v14 = _Block_copy(aBlock);
  sub_1C96A3D04();
  sub_1C9592414(v11);
  sub_1C96A6594();
  v18 = MEMORY[0x1E69E7CC0];
  sub_1C9469C18(&qword_1EDB7CF40, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5370);
  sub_1C9469CB4(&qword_1EDB7CE80, &unk_1EC3A5370);
  sub_1C96A79E4();
  MEMORY[0x1CCA8D100](0, v10, v7, v14);
  _Block_release(v14);
  (*(v5 + 8))(v7, v4);
  (*(v8 + 8))(v10, v17);
}

uint64_t sub_1C95B94F4(uint64_t a1)
{
  v2 = sub_1C96A42E4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1C946B5D0(0, &qword_1EDB7CD48);
  sub_1C96A5784();
  sub_1C96A5654();

  sub_1C96A5664();

  (*(v3 + 16))(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  (*(v3 + 32))(v6 + v5, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
  sub_1C96A5664();
}

uint64_t sub_1C95B9744()
{
  v0 = sub_1C9469D80();
  sub_1C946B5D0(0, &qword_1EDB7CD48);
  v1 = sub_1C96A78B4();

  if ((v1 & 1) == 0)
  {
    return sub_1C96A5774();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6620);
  swift_allocObject();
  return sub_1C96A56A4();
}

void sub_1C95B9854(_BYTE *a1, uint64_t a2)
{
  if (*a1)
  {
    if (*a1 != 1)
    {
      return;
    }

    goto LABEL_8;
  }

  v3 = *(a2 + 48);
  v4 = *(a2 + 56);
  sub_1C95BA790(v3, *(a2 + 56));
  v5 = sub_1C9469D80();
  if (v4 != 1)
  {
    sub_1C94A855C(v3, 0);

    goto LABEL_8;
  }

  sub_1C946B5D0(0, &qword_1EDB7CD30);
  v6 = sub_1C96A78B4();
  sub_1C94A855C(v3, 1);

  if ((v6 & 1) == 0)
  {
LABEL_8:
    v7 = sub_1C9469D80();
    v8 = *(a2 + 48);
    v9 = *(a2 + 56);
    *(a2 + 48) = v7;
    *(a2 + 56) = 1;
    sub_1C94A855C(v8, v9);
  }
}

uint64_t sub_1C95B9940(uint64_t a1)
{
  v2 = sub_1C96A42E4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1C946B5D0(0, &qword_1EDB7CD48);
  sub_1C96A5784();
  (*(v3 + 16))(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  (*(v3 + 32))(v6 + v5, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
  sub_1C96A5664();
}

uint64_t sub_1C95B9B28()
{
  v0 = sub_1C96A42D4();
  if (!v0)
  {
    v6 = 0u;
    v7 = 0u;
    return sub_1C95BA620(&v6);
  }

  v1 = v0;
  sub_1C96A7024();
  sub_1C96A7A34();
  sub_1C94FA794(v5, v1);

  sub_1C950C50C(v5);
  if (!*(&v7 + 1))
  {
    return sub_1C95BA620(&v6);
  }

  sub_1C946B5D0(0, &qword_1EDB7CD38);
  result = swift_dynamicCast();
  if (result)
  {
    v3 = v5[0];
    sub_1C95B9C54(v5[0], v5);
    v4 = v5[0];
    sub_1C95B91E4(v5);

    return sub_1C9592428(v4);
  }

  return result;
}

id sub_1C95B9C54@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = [a1 integerValue];
  if (result)
  {
    v4 = 1;
    if (result == 3)
    {
      v4 = 2;
    }

    if (result == 2)
    {
      v4 = 3;
    }

    goto LABEL_6;
  }

  v5 = sub_1C96A42D4();
  if (!v5)
  {
    v9 = 0u;
    v10 = 0u;
    goto LABEL_13;
  }

  v6 = v5;
  *&v9 = sub_1C96A7024();
  *(&v9 + 1) = v7;
  sub_1C96A7A34();
  sub_1C94FA794(v8, v6);

  sub_1C950C50C(v8);
  if (!*(&v10 + 1))
  {
LABEL_13:
    result = sub_1C95BA620(&v9);
    v4 = 0;
    goto LABEL_6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5FC0);
  result = swift_dynamicCast();
  v4 = v8[0];
  if (!result)
  {
    v4 = 0;
  }

LABEL_6:
  *a2 = v4;
  return result;
}

uint64_t sub_1C95B9D88(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v5 = sub_1C96A42E4();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C96A42C4();
  sub_1C96A3D04();
  a4(v10);

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_1C95B9E74(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  if (result >> 62)
  {
    result = sub_1C96A7BB4();
    v5 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v5 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      return result;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
  }

  else
  {
    for (i = 0; i != v5; ++i)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1CCA8D440](i, v4);
      }

      else
      {
        v7 = *(v4 + 8 * i + 32);
        sub_1C96A3D04();
      }

      v13[3] = type metadata accessor for UbiquitousKeyValueStoreProvider();
      v13[4] = &protocol witness table for UbiquitousKeyValueStoreProvider;
      v13[0] = a2;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v8 = *(v7 + 24);
        ObjectType = swift_getObjectType();
        v12 = a3;
        v10 = *(v8 + 8);
        sub_1C96A3D04();
        v10(v13, &v12, ObjectType, v8);
        swift_unknownObjectRelease();
      }

      else
      {
        sub_1C96A3D04();
      }

      result = __swift_destroy_boxed_opaque_existential_1Tm(v13);
    }
  }

  return result;
}

uint64_t UbiquitousKeyValueStoreProvider.deinit()
{

  sub_1C94A855C(*(v0 + 48), *(v0 + 56));

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 88);
  return v0;
}

uint64_t UbiquitousKeyValueStoreProvider.__deallocating_deinit()
{
  UbiquitousKeyValueStoreProvider.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 128, 7);
}

uint64_t UbiquitousKeyValueStoreChangeReason.shortDescription.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6610);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v14[-v7];
  v9 = *v1;
  if (*v1 == 3 || v9 == 2 || v9 == 1)
  {
    sub_1C96A6F04();
    OUTLINED_FUNCTION_2_48();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6330);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C96AA1C0;
    *(inited + 32) = 1937335659;
    *(inited + 40) = 0xE400000000000000;
    *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5FC0);
    v11 = MEMORY[0x1E69E7CC0];
    if (v9)
    {
      v11 = v9;
    }

    *(inited + 48) = v11;
    sub_1C96A53C4();
    sub_1C96A6F04();
    OUTLINED_FUNCTION_2_48();
  }

  sub_1C96A53B4();
  a1[3] = v3;
  a1[4] = sub_1C9469CB4(&qword_1EDB77EE0, &qword_1EC3A6610);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  return (*(v5 + 32))(boxed_opaque_existential_1, v8, v3);
}

uint64_t sub_1C95BA3A8()
{
  sub_1C95BA79C();

  return sub_1C96A53A4();
}

uint64_t get_enum_tag_for_layout_string_11WeatherCore35UbiquitousKeyValueStoreChangeReasonO(uint64_t *a1)
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

uint64_t sub_1C95BA40C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 8))
  {
    return (*a1 + 2147483644);
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

  v5 = v4 + 1;
  v6 = v4 - 2;
  if (v5 >= 4)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

void *sub_1C95BA46C(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    a2 -= 0x7FFFFFFF;
    goto LABEL_5;
  }

  if (a2)
  {
LABEL_5:
    *result = a2;
  }

  return result;
}

uint64_t sub_1C95BA620(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_21Tm()
{
  v1 = sub_1C96A42E4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

id sub_1C95BA790(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
    return sub_1C96A3D04();
  }
}

unint64_t sub_1C95BA79C()
{
  result = qword_1EC3A6628;
  if (!qword_1EC3A6628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6628);
  }

  return result;
}

uint64_t objectdestroy_15Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

_BYTE *storeEnumTagSinglePayload for UbiquitousKeyValueStoreProvider.MigrationStatus(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C95BA9C4()
{
  result = qword_1EC3A6648;
  if (!qword_1EC3A6648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6648);
  }

  return result;
}

uint64_t UNUserNotificationCenter.addNotificationRequest(_:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4B88);
  swift_allocObject();
  return sub_1C96A5714();
}

uint64_t sub_1C95BAAC0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4B80);
  swift_allocObject();
  return sub_1C96A5714();
}

void sub_1C95BAB1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  OUTLINED_FUNCTION_54();
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  OUTLINED_FUNCTION_54();
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1C95BB548;
  *(v9 + 24) = v8;
  v11[4] = sub_1C95BB4D8;
  v11[5] = v9;
  OUTLINED_FUNCTION_0_67();
  v11[1] = 1107296256;
  v11[2] = sub_1C95BAC0C;
  v11[3] = &block_descriptor_13;
  v10 = _Block_copy(v11);
  sub_1C96A3D04();

  [a5 getPendingNotificationRequestsWithCompletionHandler_];
  _Block_release(v10);
}

void sub_1C95BAC20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  OUTLINED_FUNCTION_54();
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  OUTLINED_FUNCTION_54();
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1C94DA5C0;
  *(v9 + 24) = v8;
  v11[4] = sub_1C95BB4D0;
  v11[5] = v9;
  OUTLINED_FUNCTION_0_67();
  v11[1] = 1107296256;
  v11[2] = sub_1C95BAE64;
  v11[3] = &block_descriptor_11;
  v10 = _Block_copy(v11);
  sub_1C96A3D04();

  [a5 getDeliveredNotificationsWithCompletionHandler_];
  _Block_release(v10);
}

void sub_1C95BAD10(uint64_t a1, void (*a2)(uint64_t))
{
  v3 = MEMORY[0x1E69E7CC0];
  v11 = MEMORY[0x1E69E7CC0];
  v4 = sub_1C946D04C(a1);
  v5 = 0;
  while (v4 != v5)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1CCA8D440](v5, a1);
    }

    else
    {
      if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_16;
      }

      v6 = *(a1 + 8 * v5 + 32);
    }

    v7 = v6;
    v8 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_16:
      __break(1u);
      return;
    }

    v9 = [v6 request];

    ++v5;
    if (v9)
    {
      MEMORY[0x1CCA8CC10]();
      if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1C96A72F4();
      }

      sub_1C96A7314();
      v3 = v11;
      v5 = v8;
    }
  }

  a2(v3);
}

uint64_t sub_1C95BAE78(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v3 = *(a1 + 32);
  sub_1C946B5D0(0, a3);
  v4 = sub_1C96A72A4();
  sub_1C96A3D04();
  v3(v4);
}