id RaceChartProvider.maxDataAltitude.getter()
{
  v1 = v0;
  v2 = type metadata accessor for RaceChartPoint();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v31 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore14RaceChartPointVSgMd);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v15 = &v31 - v13;
  v16 = *(v1 + OBJC_IVAR____TtC9WorkoutUI17RaceChartProvider_chartPoints);
  v17 = *(v16 + 16);
  if (v17)
  {
    v31 = v11;
    v32 = v1;
    v18 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v35 = *(v3 + 16);
    v36 = v16;
    v33 = &v31 - v13;
    v34 = v16 + v18;
    result = v35(v8, v14);
    if (v17 != 1)
    {
      v26 = 1;
      while (v26 < *(v36 + 16))
      {
        (v35)(v5, v34 + *(v3 + 72) * v26, v2);
        RaceChartPoint.altitude_m.getter();
        v28 = v27;
        RaceChartPoint.altitude_m.getter();
        v29 = *(v3 + 8);
        if (v28 >= v30)
        {
          result = v29(v5, v2);
        }

        else
        {
          v29(v8, v2);
          result = (*(v3 + 32))(v8, v5, v2);
        }

        if (v17 == ++v26)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
      goto LABEL_17;
    }

LABEL_3:
    v15 = v33;
    (*(v3 + 32))(v33, v8, v2);
    (*(v3 + 56))(v15, 0, 1, v2);
    v11 = v31;
    v1 = v32;
  }

  else
  {
    (*(v3 + 56))(&v31 - v13, 1, 1, v2, v14);
  }

  outlined init with copy of RaceChartPoint?(v15, v11);
  if ((*(v3 + 48))(v11, 1, v2) == 1)
  {
    outlined destroy of RaceChartPoint?(v11);
    v20 = 100.0;
  }

  else
  {
    RaceChartPoint.altitude_m.getter();
    v20 = v21;
    (*(v3 + 8))(v11, v2);
  }

  v22 = [objc_opt_self() meterUnit];
  v23 = [objc_opt_self() quantityWithUnit:v22 doubleValue:v20];

  result = [*(v1 + OBJC_IVAR____TtC9WorkoutUI17RaceChartProvider_formatter) unitManager];
  if (result)
  {
    v24 = result;
    v25 = [result userDistanceHKUnitForDistanceType_];

    [v23 doubleValueForUnit_];
    return outlined destroy of RaceChartPoint?(v15);
  }

LABEL_17:
  __break(1u);
  return result;
}

double RaceChartProvider.maxDataOdometer.getter()
{
  v1 = type metadata accessor for RaceChartPoint();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + OBJC_IVAR____TtC9WorkoutUI17RaceChartProvider_chartPoints);
  v7 = *(v6 + 16);
  if (!v7)
  {
    return 100.0;
  }

  (*(v2 + 16))(v5, v6 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * (v7 - 1), v1, v3);
  RaceChartPoint.odometer_m.getter();
  v9 = v8;
  (*(v2 + 8))(v5, v1);
  return v9;
}

uint64_t RaceChartProvider.dataElements.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t static RaceChartProvider.canonical()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay9WorkoutUI0C22ChartLinearDataElementVGGMd);
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = v14 - v3;
  v5 = MEMORY[0x20F305230](v2);
  if (one-time initialization token for formatter != -1)
  {
    swift_once();
  }

  v6 = static RaceChartProvider.formatter;
  v7 = swift_allocObject();
  v8 = OBJC_IVAR____TtC9WorkoutUI17RaceChartProvider__dataElements;
  v9 = MEMORY[0x277D84F90];
  v14[1] = MEMORY[0x277D84F90];
  v10 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9WorkoutUI0A22ChartLinearDataElementVGMd);
  Published.init(initialValue:)();
  (*(v1 + 32))(v7 + v8, v4, v0);
  v11 = OBJC_IVAR____TtC9WorkoutUI17RaceChartProvider_dataBuckets;
  *(v7 + v11) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSd_11WorkoutCore0C10DataBucketCTt0g5Tf4g_n(v9);
  *(v7 + OBJC_IVAR____TtC9WorkoutUI17RaceChartProvider_chartPoints) = v5;
  *(v7 + OBJC_IVAR____TtC9WorkoutUI17RaceChartProvider_formatter) = v10;
  *(v7 + OBJC_IVAR____TtC9WorkoutUI17RaceChartProvider_markCount) = 52;
  v12 = v10;
  RaceChartProvider.allocateBuckets()();

  return v7;
}

uint64_t RaceChartProvider.__allocating_init(chartPoints:formatter:numberOfMarks:)(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay9WorkoutUI0C22ChartLinearDataElementVGGMd);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v16 - v8;
  v10 = swift_allocObject();
  v11 = OBJC_IVAR____TtC9WorkoutUI17RaceChartProvider__dataElements;
  v12 = MEMORY[0x277D84F90];
  v16[1] = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9WorkoutUI0A22ChartLinearDataElementVGMd);
  Published.init(initialValue:)();
  (*(v7 + 32))(v10 + v11, v9, v6);
  v13 = OBJC_IVAR____TtC9WorkoutUI17RaceChartProvider_dataBuckets;
  *(v10 + v13) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSd_11WorkoutCore0C10DataBucketCTt0g5Tf4g_n(v12);
  *(v10 + OBJC_IVAR____TtC9WorkoutUI17RaceChartProvider_chartPoints) = a1;
  *(v10 + OBJC_IVAR____TtC9WorkoutUI17RaceChartProvider_formatter) = a2;
  *(v10 + OBJC_IVAR____TtC9WorkoutUI17RaceChartProvider_markCount) = a3;
  v14 = a2;
  RaceChartProvider.allocateBuckets()();

  return v10;
}

uint64_t key path getter for RaceChartProvider.dataElements : RaceChartProvider@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t key path setter for RaceChartProvider.dataElements : RaceChartProvider()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t RaceChartProvider.dataElements.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

void (*RaceChartProvider.dataElements.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return RaceChartProvider.dataElements.modify;
}

void RaceChartProvider.dataElements.modify(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t RaceChartProvider.$dataElements.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay9WorkoutUI0C22ChartLinearDataElementVGGMd);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path getter for RaceChartProvider.$dataElements : RaceChartProvider()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay9WorkoutUI0C22ChartLinearDataElementVGGMd);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path setter for RaceChartProvider.$dataElements : RaceChartProvider(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay9WorkoutUI0D22ChartLinearDataElementVG_GMd);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay9WorkoutUI0C22ChartLinearDataElementVGGMd);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(v9, v2);
}

uint64_t RaceChartProvider.$dataElements.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay9WorkoutUI0D22ChartLinearDataElementVG_GMd);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay9WorkoutUI0C22ChartLinearDataElementVGGMd);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*RaceChartProvider.$dataElements.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay9WorkoutUI0D22ChartLinearDataElementVG_GMd);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC9WorkoutUI17RaceChartProvider__dataElements;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay9WorkoutUI0C22ChartLinearDataElementVGGMd);
  Published.projectedValue.getter();
  swift_endAccess();
  return RaceChartProvider.$dataElements.modify;
}

void RaceChartProvider.$dataElements.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[13];
  v11 = v3[14];
  v7 = v3[11];
  v6 = v3[12];
  v8 = v3[10];
  if (a2)
  {
    v4(v3[12], v5, v3[10]);
    swift_beginAccess();
    Published.projectedValue.setter();
    swift_endAccess();
    v9 = *(v7 + 8);
    v9(v5, v8);
    v10 = v11;
    v9(v11, v8);
  }

  else
  {
    swift_beginAccess();
    Published.projectedValue.setter();
    swift_endAccess();
    v10 = v11;
    (*(v7 + 8))(v11, v8);
  }

  free(v10);
  free(v5);
  free(v6);

  free(v3);
}

uint64_t RaceChartProvider.init(chartPoints:formatter:numberOfMarks:)(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = specialized RaceChartProvider.init(chartPoints:formatter:numberOfMarks:)(a1, a2, a3);

  return v4;
}

id RaceChartProvider.allocateBuckets()()
{
  v1 = v0;
  v2 = type metadata accessor for RaceChartPoint();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = RaceChartProvider.maxDataOdometer.getter();
  v39 = *(v0 + OBJC_IVAR____TtC9WorkoutUI17RaceChartProvider_chartPoints);
  v38 = *(v39 + 16);
  if (v38)
  {
    v7 = *(v0 + OBJC_IVAR____TtC9WorkoutUI17RaceChartProvider_markCount);
    v8 = v7;
    v9 = v6 / v7;
    v34 = objc_opt_self();
    result = objc_opt_self();
    v11 = 0;
    v32 = *(v1 + OBJC_IVAR____TtC9WorkoutUI17RaceChartProvider_formatter);
    v33 = result;
    v12 = OBJC_IVAR____TtC9WorkoutUI17RaceChartProvider_dataBuckets;
    v37 = v39 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v36 = v3 + 16;
    v13 = __OFSUB__(v7, 1);
    v35 = v13;
    v14 = (v7 - 1);
    v31 = v2;
    while (v11 < *(v39 + 16))
    {
      (*(v3 + 16))(v5, v37 + *(v3 + 72) * v11, v2);
      result = RaceChartPoint.odometer_m.getter();
      v16 = floor(v15 / v9);
      v17 = v35;
      if (v16 != v8)
      {
        v17 = 0;
      }

      if (v17)
      {
        goto LABEL_20;
      }

      if (v16 == v8)
      {
        v16 = v14;
      }

      v18 = v9 * (v16 + 0.5);
      swift_beginAccess();
      v19 = *(v1 + v12);
      if (*(v19 + 16) && (v20 = specialized __RawDictionaryStorage.find<A>(_:)(v18), (v21 & 1) != 0))
      {
        v22 = *(*(v19 + 56) + 8 * v20);
        swift_endAccess();
      }

      else
      {
        swift_endAccess();
        type metadata accessor for WorkoutDataBucket();
        v22 = WorkoutDataBucket.__allocating_init()();
      }

      v23 = [v34 meterUnit];
      RaceChartPoint.altitude_m.getter();
      v24 = [v33 quantityWithUnit:v23 doubleValue:?];

      result = [v32 unitManager];
      if (!result)
      {
        goto LABEL_21;
      }

      v25 = result;
      ++v11;
      v26 = [result userDistanceHKUnitForDistanceType_];

      [v24 doubleValueForUnit_];
      dispatch thunk of WorkoutDataBucket.add(value:divisor:)();
      swift_beginAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v40 = *(v1 + v12);
      *(v1 + v12) = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v22, isUniquelyReferenced_nonNull_native, v18);
      *(v1 + v12) = v40;
      swift_endAccess();

      v2 = v31;
      result = (*(v3 + 8))(v5, v31);
      if (v38 == v11)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
  }

  else
  {
LABEL_18:
    swift_beginAccess();

    v29 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDySd11WorkoutCore0D10DataBucketCG_0D2UI0d11ChartLinearfB0Vs5NeverOTg503_s9d8UI17Racei73ProviderC15allocateBuckets33_7334F19A8E76DF0ADBDA5F96BB1BF101LLyyFAA0aD17jfb19VSd3key_0A4Core0aQ6G15C5valuet_tXEfU_Tf1cn_n(v28);

    swift_getKeyPath();
    swift_getKeyPath();
    v40 = v29;

    return static Published.subscript.setter();
  }

  return result;
}

uint64_t RaceChartProvider.deinit()
{
  v1 = OBJC_IVAR____TtC9WorkoutUI17RaceChartProvider__dataElements;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay9WorkoutUI0C22ChartLinearDataElementVGGMd);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t RaceChartProvider.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC9WorkoutUI17RaceChartProvider__dataElements;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay9WorkoutUI0C22ChartLinearDataElementVGGMd);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance RaceChartProvider@<X0>(uint64_t *a1@<X8>)
{
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

void one-time initialization function for formatter()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
  v1 = [objc_allocWithZone(MEMORY[0x277D0A808]) initWithHealthStore_];

  v2 = [objc_allocWithZone(MEMORY[0x277D0A7E8]) initWithUnitManager_];
  if (v2)
  {
    static RaceChartProvider.formatter = v2;
  }

  else
  {
    __break(1u);
  }
}

void protocol witness for static Canonical.canonical() in conformance RaceChartProvider(uint64_t *a1@<X8>)
{
  v2 = MEMORY[0x20F305230]();
  if (one-time initialization token for formatter != -1)
  {
    swift_once();
  }

  v3 = static RaceChartProvider.formatter;
  swift_allocObject();
  v4 = v3;
  v5 = specialized RaceChartProvider.init(chartPoints:formatter:numberOfMarks:)(v2, v4, 52);

  *a1 = v5;
}

uint64_t specialized RaceChartProvider.init(chartPoints:formatter:numberOfMarks:)(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay9WorkoutUI0C22ChartLinearDataElementVGGMd);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v16 - v9;
  v11 = OBJC_IVAR____TtC9WorkoutUI17RaceChartProvider__dataElements;
  v12 = MEMORY[0x277D84F90];
  v16[1] = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9WorkoutUI0A22ChartLinearDataElementVGMd);
  Published.init(initialValue:)();
  (*(v8 + 32))(v3 + v11, v10, v7);
  v13 = OBJC_IVAR____TtC9WorkoutUI17RaceChartProvider_dataBuckets;
  *(v3 + v13) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSd_11WorkoutCore0C10DataBucketCTt0g5Tf4g_n(v12);
  *(v3 + OBJC_IVAR____TtC9WorkoutUI17RaceChartProvider_chartPoints) = a1;
  *(v3 + OBJC_IVAR____TtC9WorkoutUI17RaceChartProvider_formatter) = a2;
  *(v3 + OBJC_IVAR____TtC9WorkoutUI17RaceChartProvider_markCount) = a3;
  v14 = a2;
  RaceChartProvider.allocateBuckets()();
  return v3;
}

uint64_t type metadata accessor for RaceChartProvider()
{
  result = type metadata singleton initialization cache for RaceChartProvider;
  if (!type metadata singleton initialization cache for RaceChartProvider)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for RaceChartProvider()
{
  type metadata accessor for Published<[WorkoutChartLinearDataElement]>();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for Published<[WorkoutChartLinearDataElement]>()
{
  if (!lazy cache variable for type metadata for Published<[WorkoutChartLinearDataElement]>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay9WorkoutUI0A22ChartLinearDataElementVGMd);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Published<[WorkoutChartLinearDataElement]>);
    }
  }
}

uint64_t outlined init with copy of RaceChartPoint?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore14RaceChartPointVSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of RaceChartPoint?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore14RaceChartPointVSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t WorkoutNotification.init(alert:formattingManager:displayDuration:)(void *a1, void *a2)
{
  v4 = specialized WorkoutNotification.init(alert:formattingManager:displayDuration:)(a1);

  return v4;
}

uint64_t static WorkoutNotification.unitsAndTypeForInterval(alert:)(uint64_t a1, unsigned int *a2)
{
  v184 = a1;
  v176 = type metadata accessor for PowerZonesAlertZoneType();
  v175 = *(v176 - 8);
  v3 = MEMORY[0x28223BE20](v176);
  v167 = &v158 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v174 = &v158 - v6;
  MEMORY[0x28223BE20](v5);
  v173 = &v158 - v7;
  v183 = type metadata accessor for HeartRateZoneType();
  v185 = *(v183 - 8);
  v8 = MEMORY[0x28223BE20](v183);
  v160 = &v158 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v161 = &v158 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v179 = &v158 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v180 = &v158 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v178 = &v158 - v17;
  MEMORY[0x28223BE20](v16);
  v177 = &v158 - v18;
  v171 = type metadata accessor for TargetZone.PrimaryType();
  v168 = *(v171 - 8);
  MEMORY[0x28223BE20](v171);
  v170 = &v158 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = type metadata accessor for TargetZone.ZoneType();
  v169 = *(v172 - 8);
  MEMORY[0x28223BE20](v172);
  v166 = &v158 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = type metadata accessor for StepType();
  v163 = *(v164 - 8);
  MEMORY[0x28223BE20](v164);
  v162 = &v158 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for WorkoutNotificationUnit.NotificationUnitType();
  v191 = *(v22 - 8);
  v23 = MEMORY[0x28223BE20](v22);
  v159 = &v158 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v190 = &v158 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore09CompletedA4StepVSgMd);
  MEMORY[0x28223BE20](v26 - 8);
  v28 = &v158 - v27;
  v29 = type metadata accessor for CompletedWorkoutStep();
  v30 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v32 = &v158 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for WorkoutNotification.NotificationType();
  v34 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v36 = &v158 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v196 = MEMORY[0x277D84F90];
  v37 = *MEMORY[0x277D7DA18];
  v186 = v38;
  v187 = v34;
  v39 = *(v34 + 104);
  v39(v36, v37);
  v188 = a2;
  WorkoutAlertInterval.completedStep.getter();
  if ((*(v30 + 48))(v28, 1, v29) == 1)
  {
    outlined destroy of CompletedWorkoutStep?(v28);
    v40 = v191;
  }

  else
  {
    (*(v30 + 32))(v32, v28, v29);
    v41 = CompletedWorkoutStep.metricTypeToDisplay.getter();
    if (v42)
    {
      (*(v30 + 8))(v32, v29);
      v40 = v191;
    }

    else
    {
      v43 = v41;
      v44 = v186;
      (*(v187 + 8))(v36, v186);
      v45 = *MEMORY[0x277D7DA08];
      v182 = v36;
      (v39)(v36, v45, v44);
      v46 = *MEMORY[0x277D7DB38];
      v47 = *(v191 + 104);
      v181 = v22;
      v47(v190, v46);
      type metadata accessor for WorkoutNotificationUnit();
      swift_allocObject();
      WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
      MEMORY[0x20F30BCF0]();
      if (*((v196 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v196 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      if (v43 == 3)
      {
        v22 = v181;
        (v47)(v190, *MEMORY[0x277D7DB00], v181);
        CompletedWorkoutStep.completedDuration.getter();
        swift_allocObject();
        WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
        MEMORY[0x20F30BCF0]();
        if (*((v196 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v196 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        (*(v30 + 8))(v32, v29);
        v36 = v182;
      }

      else
      {
        if (v43 == 1)
        {
          (v47)(v190, *MEMORY[0x277D7DB40], v181);
          CompletedWorkoutStep.completedDistance.getter();
          CompletedWorkoutStep.step.getter();
          WorkoutStep.activityType.getter();

          swift_allocObject();
          WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
          MEMORY[0x20F30BCF0]();
          if (*((v196 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v196 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        }

        (*(v30 + 8))(v32, v29);
        v22 = v181;
        v36 = v182;
      }

      v40 = v191;
    }
  }

  v48 = WorkoutAlertInterval.nextStep.getter();
  v49 = MEMORY[0x277D7DB28];
  v50 = v190;
  if (v48)
  {
    v51 = v48;
    v182 = v36;
    v52 = dispatch thunk of WorkoutAlertInterval.maxRepetitions.getter();
    v53 = *(v40 + 104);
    v165 = *MEMORY[0x277D7DB38];
    v189 = v53;
    v53(v50);
    v191 = v40 + 104;
    if (v52 < 2)
    {
      type metadata accessor for WorkoutNotificationUnit();
      swift_allocObject();
      WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
      MEMORY[0x20F30BCF0]();
      if (*((v196 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v196 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
LABEL_39:
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v57 = v185;
        goto LABEL_40;
      }
    }

    else
    {
      type metadata accessor for WorkoutNotificationUnit();
      swift_allocObject();
      WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
      MEMORY[0x20F30BCF0]();
      if (*((v196 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v196 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v54 = *v49;
      v55 = v189;
      v189(v50, v54, v22);
      swift_allocObject();
      WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
      MEMORY[0x20F30BCF0]();
      if (*((v196 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v196 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v158 = *((v196 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v55(v50, *MEMORY[0x277D7DB08], v22);
      swift_allocObject();
      WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
      MEMORY[0x20F30BCF0]();
      if (*((v196 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v196 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v55 = v189;
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v55(v50, v54, v22);
      swift_allocObject();
      WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
      MEMORY[0x20F30BCF0]();
      if (*((v196 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v196 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v55 = v189;
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v55(v50, v54, v22);
      v49 = v188;
      v56 = dispatch thunk of WorkoutAlertInterval.repetition.getter();
      v57 = v185;
      if (!__OFADD__(v56, 1))
      {
        swift_allocObject();
        WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
        MEMORY[0x20F30BCF0]();
        if (*((v196 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v196 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v55 = v189;
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v55(v50, v54, v22);
        dispatch thunk of WorkoutAlertInterval.maxRepetitions.getter();
        swift_allocObject();
        WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
        MEMORY[0x20F30BCF0]();
        if (*((v196 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v196 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v49 = MEMORY[0x277D7DB28];
LABEL_40:
        WorkoutStep.displayName.getter();
        v62 = v61;
        v63 = *v49;
        v189(v50, v63, v22);
        if (!v62)
        {
          v64 = v162;
          WorkoutStep.stepType.getter();
          StepType.displayStringKey.getter();
          (*(v163 + 8))(v64, v164);
        }

        type metadata accessor for WorkoutNotificationUnit();
        swift_allocObject();
        WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
        MEMORY[0x20F30BCF0]();
        if (*((v196 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v196 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v59 = v196;
        v65 = WorkoutStep.goal.getter();
        v66 = [v65 value];

        if (!v66)
        {
          v189(v50, v63, v22);
          v72 = WorkoutStep.goal.getter();
          v73 = [v72 goalTypeIdentifier];

          v74 = _HKWorkoutGoalType.color.getter(v73);
          UIColor.rgbHex()();

          type metadata accessor for WorkoutNotificationUnit();
          swift_allocObject();
          WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
          MEMORY[0x20F30BCF0]();
          if (*((v196 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v196 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v59 = v196;
          goto LABEL_56;
        }

        v67 = WorkoutStep.goal.getter();
        v68 = [v67 goalTypeIdentifier];

        if (v68 == 2)
        {
          v189(v50, *MEMORY[0x277D7DB00], v22);
          v75 = [objc_opt_self() secondUnit];
          [v66 doubleValueForUnit_];

          type metadata accessor for WorkoutNotificationUnit();
          swift_allocObject();
        }

        else
        {
          if (v68 != 1)
          {

LABEL_56:
            v76 = WorkoutStep.activeTargetZone.getter();
            v181 = v22;
            LODWORD(v158) = v63;
            if (v76)
            {
              if (dispatch thunk of TargetZone.enabled.getter())
              {
                v77 = v189;
                v189(v159, v165, v22);
                dispatch thunk of TargetZone.isSingleThreshold.getter();
                type metadata accessor for WorkoutNotificationUnit();
                swift_allocObject();
                WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
                MEMORY[0x20F30BCF0]();
                if (*((v196 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v196 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                }

                specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                v77(v50, *MEMORY[0x277D7DB08], v22);
                WorkoutStep.targetIconName.getter();
                swift_allocObject();
                WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
                MEMORY[0x20F30BCF0]();
                if (*((v196 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v196 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                }

                specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                v78 = v166;
                TargetZone.type.getter();
                v79 = v170;
                TargetZone.ZoneType.primaryType.getter();
                v80 = *(v169 + 8);
                v80(v78, v172);
                dispatch thunk of TargetZone.min.getter();
                v81 = WorkoutStep.activityType.getter();
                specialized static WorkoutNotification.unitForTargetZone(type:value:activityType:)(v79, v81);

                v82 = *(v168 + 8);
                v83 = v82(v79, v171);
                MEMORY[0x20F30BCF0](v83);
                if (*((v196 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v196 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                  v57 = v185;
                }

                specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                v59 = v196;
                if ((dispatch thunk of TargetZone.isSingleThreshold.getter() & 1) == 0)
                {
                  v114 = v166;
                  TargetZone.type.getter();
                  v115 = v170;
                  TargetZone.ZoneType.primaryType.getter();
                  v80(v114, v172);
                  dispatch thunk of TargetZone.max.getter();
                  v116 = WorkoutStep.activityType.getter();
                  specialized static WorkoutNotification.unitForTargetZone(type:value:activityType:)(v115, v116);

                  v117 = v82(v115, v171);
                  MEMORY[0x20F30BCF0](v117);
                  if (*((v196 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v196 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    goto LABEL_133;
                  }

                  goto LABEL_96;
                }
              }
            }

            v84 = v183;
            while (1)
            {
              v85 = WorkoutStep.heartRateTargetZoneWithDefault.getter();
              v86 = v177;
              HeartRateTargetZone.type.getter();

              v87 = *(v57 + 104);
              v88 = v178;
              v87(v178, *MEMORY[0x277D7E138], v84);
              lazy protocol witness table accessor for type HeartRateZoneType and conformance HeartRateZoneType(&lazy protocol witness table cache variable for type HeartRateZoneType and conformance HeartRateZoneType, MEMORY[0x277D7E150]);
              LOBYTE(v85) = dispatch thunk of static Equatable.== infix(_:_:)();
              v91 = *(v57 + 8);
              v90 = v57 + 8;
              v89 = v91;
              v91(v88, v84);
              v91(v86, v84);
              if (v85)
              {
                v92 = v190;
                goto LABEL_98;
              }

              v188 = v51;
              v93 = WorkoutStep.heartRateTargetZoneWithDefault.getter();
              HeartRateTargetZone.type.getter();

              v87(v179, *MEMORY[0x277D7E148], v84);
              lazy protocol witness table accessor for type HeartRateZoneType and conformance HeartRateZoneType(&lazy protocol witness table cache variable for type HeartRateZoneType and conformance HeartRateZoneType, MEMORY[0x277D7E150]);
              dispatch thunk of RawRepresentable.rawValue.getter();
              dispatch thunk of RawRepresentable.rawValue.getter();
              v185 = v90;
              if (v194 == v192 && v195 == v193)
              {
                v89(v179, v84);
                v89(v180, v84);
              }

              else
              {
                v94 = _stringCompareWithSmolCheck(_:_:expecting:)();
                v89(v179, v84);
                v89(v180, v84);

                if ((v94 & 1) == 0)
                {
                  break;
                }
              }

              v95 = WorkoutStep.heartRateTargetZoneWithDefault.getter();
              v96 = dispatch thunk of HeartRateTargetZone.defaultZoneIndex.getter();
              v98 = v97;

              if (v98)
              {
                break;
              }

              v92 = v190;
              v103 = v181;
              v104 = v189;
              v189(v190, v165, v181);
              type metadata accessor for WorkoutNotificationUnit();
              swift_allocObject();
              WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
              MEMORY[0x20F30BCF0]();
              if (*((v196 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v196 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              v104(v92, *MEMORY[0x277D7DB08], v103);
              v51 = v188;
              WorkoutStep.targetIconName.getter();
              swift_allocObject();
              WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
              MEMORY[0x20F30BCF0]();
              if (*((v196 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v196 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              v104(v92, v158, v103);
              if (!__OFADD__(v96, 1))
              {
                swift_allocObject();
                goto LABEL_92;
              }

              __break(1u);
LABEL_133:
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_96:
              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

              v59 = v196;
              v84 = v183;
              v57 = v185;
            }

            v99 = WorkoutStep.heartRateTargetZoneWithDefault.getter();
            v100 = v161;
            HeartRateTargetZone.type.getter();

            v101 = v160;
            v102 = v183;
            v87(v160, *MEMORY[0x277D7E140], v183);
            dispatch thunk of RawRepresentable.rawValue.getter();
            dispatch thunk of RawRepresentable.rawValue.getter();
            if (v194 == v192 && v195 == v193)
            {
              v89(v101, v102);
              v89(v100, v102);
            }

            else
            {
              v105 = _stringCompareWithSmolCheck(_:_:expecting:)();
              v89(v101, v102);
              v89(v100, v102);

              if ((v105 & 1) == 0)
              {
                v92 = v190;
                goto LABEL_98;
              }
            }

            v106 = WorkoutStep.heartRateTargetZoneWithDefault.getter();
            dispatch thunk of HeartRateTargetZone.customRange.getter();
            v108 = v107;
            v110 = v109;

            v92 = v190;
            v111 = v181;
            if (v110)
            {
              goto LABEL_98;
            }

            v185 = v108;
            v112 = v189;
            v189(v190, v165, v181);
            type metadata accessor for WorkoutNotificationUnit();
            swift_allocObject();
            WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
            MEMORY[0x20F30BCF0]();
            if (*((v196 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v196 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v112(v92, *MEMORY[0x277D7DB08], v111);
            WorkoutStep.targetIconName.getter();
            swift_allocObject();
            WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
            MEMORY[0x20F30BCF0]();
            if (*((v196 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v196 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v113 = *MEMORY[0x277D7DB50];
            v112(v92, v113, v111);
            WorkoutStep.activityType.getter();
            swift_allocObject();
            WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
            MEMORY[0x20F30BCF0]();
            if (*((v196 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v196 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v112(v92, v113, v111);
            WorkoutStep.activityType.getter();
            swift_allocObject();
LABEL_92:
            WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
            MEMORY[0x20F30BCF0]();
            if (*((v196 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v196 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v59 = v196;
LABEL_98:
            v118 = v92;
            v119 = WorkoutStep.powerZonesAlertTargetZoneWithDefault.getter();
            v120 = v173;
            dispatch thunk of PowerZonesAlertTargetZone.type.getter();

            v121 = v175;
            v122 = v174;
            v123 = v176;
            (*(v175 + 104))(v174, *MEMORY[0x277D7E418], v176);
            lazy protocol witness table accessor for type HeartRateZoneType and conformance HeartRateZoneType(&lazy protocol witness table cache variable for type PowerZonesAlertZoneType and conformance PowerZonesAlertZoneType, MEMORY[0x277D7E438]);
            LOBYTE(v119) = dispatch thunk of static Equatable.== infix(_:_:)();
            v124 = *(v121 + 8);
            v124(v122, v123);
            v124(v120, v123);
            if (v119)
            {

              goto LABEL_100;
            }

            v125 = WorkoutStep.powerZonesAlertTargetZoneWithDefault.getter();
            v126 = v167;
            dispatch thunk of PowerZonesAlertTargetZone.type.getter();

            v127 = (*(v121 + 88))(v126, v123);
            if (v127 == *MEMORY[0x277D7E428])
            {
              (*(v121 + 96))(v126, v123);
              v128 = v118;
              v129 = v118;
              v130 = v181;
              v131 = v189;
              v189(v129, v165, v181);
              type metadata accessor for WorkoutNotificationUnit();
              swift_allocObject();
              WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
              MEMORY[0x20F30BCF0]();
              if (*((v196 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v196 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                v190 = *((v196 & 0xFFFFFFFFFFFFFF8) + 0x10);
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              v131(v128, *MEMORY[0x277D7DB08], v130);
              WorkoutStep.targetIconName.getter();
              swift_allocObject();
              WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
              MEMORY[0x20F30BCF0]();
              v60 = v187;
              v36 = v182;
              if (*((v196 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v196 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              v132 = v168;
              v133 = v170;
              v134 = v171;
              (*(v168 + 104))(v170, *MEMORY[0x277D7DEC8], v171);
              v135 = WorkoutStep.activityType.getter();
              specialized static WorkoutNotification.unitForTargetZone(type:value:activityType:)(v133, v135);

              v136 = (*(v132 + 8))(v133, v134);
              MEMORY[0x20F30BCF0](v136);
              if (*((v196 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v196 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              v137 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSd5value_11WorkoutCore10TargetZoneC0E4TypeO4modetMd) + 48);
              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

              v59 = v196;
              (*(v169 + 8))(&v126[v137], v172);
              goto LABEL_118;
            }

            if (v127 != *MEMORY[0x277D7E430])
            {
              if (v127 == *MEMORY[0x277D7E420])
              {
                (*(v121 + 96))(v126, v123);
                v142 = v118;
                v143 = v118;
                v144 = v181;
                v145 = v189;
                v189(v143, v165, v181);
                type metadata accessor for WorkoutNotificationUnit();
                swift_allocObject();
                WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
                MEMORY[0x20F30BCF0]();
                if (*((v196 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v196 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                }

                specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                v145(v142, *MEMORY[0x277D7DB08], v144);
                WorkoutStep.targetIconName.getter();
                swift_allocObject();
                WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
                MEMORY[0x20F30BCF0]();
                v146 = v171;
                v147 = v168;
                v148 = v170;
                if (*((v196 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v196 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                }

                specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                v149 = *MEMORY[0x277D7DEC8];
                v150 = *(v147 + 104);
                v150(v148, v149, v146);
                v151 = WorkoutStep.activityType.getter();
                v191 = specialized static WorkoutNotification.unitForTargetZone(type:value:activityType:)(v148, v151);

                v152 = v148;
                v153 = *(v147 + 8);
                v154 = v153(v152, v146);
                MEMORY[0x20F30BCF0](v154);
                v60 = v187;
                if (*((v196 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v196 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  v190 = *((v196 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                }

                specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                v150(v152, v149, v146);
                v155 = WorkoutStep.activityType.getter();
                specialized static WorkoutNotification.unitForTargetZone(type:value:activityType:)(v152, v155);

                v156 = v153(v152, v146);
                MEMORY[0x20F30BCF0](v156);
                if (*((v196 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v196 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                }

                v157 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySdG5range_11WorkoutCore10TargetZoneC0E4TypeO4modetMd) + 48);
                specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

                v59 = v196;
                (*(v169 + 8))(&v167[v157], v172);
                goto LABEL_101;
              }

              v124(v126, v123);
LABEL_100:
              v60 = v187;
LABEL_101:
              v36 = v182;
              goto LABEL_118;
            }

            (*(v121 + 96))(v126, v123);
            v190 = *v126;

            v138 = v118;
            v139 = v181;
            v140 = v189;
            v189(v118, v165, v181);
            type metadata accessor for WorkoutNotificationUnit();
            swift_allocObject();
            WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
            MEMORY[0x20F30BCF0]();
            if (*((v196 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v196 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v140(v118, *MEMORY[0x277D7DB08], v139);
            WorkoutStep.targetIconName.getter();
            swift_allocObject();
            WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
            MEMORY[0x20F30BCF0]();
            v60 = v187;
            v36 = v182;
            if (*((v196 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v196 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v140(v138, v158, v139);
            if (__OFADD__(v190, 1))
            {
              __break(1u);
            }

            else
            {
              swift_allocObject();
              WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
              MEMORY[0x20F30BCF0]();
              if (*((v196 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v196 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
LABEL_117:
                specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

                v59 = v196;
                goto LABEL_118;
              }
            }

            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            goto LABEL_117;
          }

          v69 = [v66 _unit];
          v70 = MEMORY[0x20F30D2C0]();

          v189(v50, *MEMORY[0x277D7DB40], v22);
          v194 = v70;
          dispatch thunk of CustomStringConvertible.description.getter();
          v71 = [objc_opt_self() meterUnit];
          [v66 doubleValueForUnit_];

          type metadata accessor for WorkoutNotificationUnit();
          swift_allocObject();
        }

        WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
        MEMORY[0x20F30BCF0]();
        if (*((v196 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v196 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v59 = v196;
        goto LABEL_56;
      }

      __break(1u);
    }

    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    goto LABEL_39;
  }

  v58 = *(v40 + 104);
  v58(v190, *MEMORY[0x277D7DB28], v22);
  type metadata accessor for WorkoutNotificationUnit();
  swift_allocObject();
  WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
  MEMORY[0x20F30BCF0]();
  if (*((v196 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v196 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v58(v50, *MEMORY[0x277D7DB38], v22);
  swift_allocObject();
  WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
  MEMORY[0x20F30BCF0]();
  if (*((v196 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v196 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v59 = v196;
  v60 = v187;
LABEL_118:
  (*(v60 + 32))(v184, v36, v186);
  return v59;
}

uint64_t static WorkoutNotification.unitsForRace(alert:)()
{
  v0 = type metadata accessor for WorkoutNotificationUnit.NotificationUnitType();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20CB67B90;
  (*(v1 + 104))(v3, *MEMORY[0x277D7DB28], v0);
  dispatch thunk of WorkoutAlertRace.alertTitleLocalizationKey()();
  type metadata accessor for WorkoutNotificationUnit();
  swift_allocObject();
  *(v4 + 32) = WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
  return v4;
}

uint64_t static WorkoutNotification.unitsForTrackStatusChange(alert:)()
{
  v0 = type metadata accessor for WorkoutNotificationUnit.NotificationUnitType();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20CB67B90;
  (*(v1 + 104))(v3, *MEMORY[0x277D7DB28], v0);
  type metadata accessor for WorkoutNotificationUnit();
  swift_allocObject();
  *(v4 + 32) = WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
  return v4;
}

uint64_t specialized static WorkoutNotification.unitsForGoalProgress(alert:)(void *a1)
{
  v2 = type metadata accessor for Logger();
  v25 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for WorkoutNotificationUnit.NotificationUnitType();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x277D84F90];
  v9 = [a1 type];
  v26 = v2;
  if (v9 != 13 && v9 != 7)
  {
    v28 = 0;
    v29 = 0xE000000000000000;
    _StringGuts.grow(_:)(33);

    v28 = 0xD00000000000001FLL;
    v29 = 0x800000020CB9CE40;
    v27 = [a1 type];
    type metadata accessor for NLWorkoutAlertType(0);
    v22 = String.init<A>(describing:)();
    MEMORY[0x20F30BC00](v22);

    goto LABEL_24;
  }

  v10 = *(v6 + 104);
  v10(v8, *MEMORY[0x277D7DB28], v5);
  type metadata accessor for WorkoutNotificationUnit();
  swift_allocObject();
  WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
  MEMORY[0x20F30BCF0]();
  if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v11 = [a1 goal];
  v12 = [v11 goalTypeIdentifier];

  if (v12 <= 2)
  {
    if (v12 == 1)
    {
      v13 = [a1 goal];
      v14 = [v13 value];

      if (v14)
      {
        v15 = [v14 _unit];
        v16 = specialized FIUIDistanceUnit.init(hkUnit:)(v15);

        v28 = v16;
        dispatch thunk of CustomStringConvertible.description.getter();
      }

      else
      {
        static WOLog.alerts.getter();
        v18 = Logger.logObject.getter();
        v19 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          *v20 = 0;
          _os_log_impl(&dword_20C66F000, v18, v19, "Unexpected nil value for distance goal.", v20, 2u);
          MEMORY[0x20F30E080](v20, -1, -1);
        }

        (*(v25 + 8))(v4, v26);
      }

      v10(v8, *MEMORY[0x277D7DB40], v5);
      [a1 currentValue];
      type metadata accessor for WorkoutNotificationUnit();
      swift_allocObject();
      goto LABEL_18;
    }

    if (v12 == 2)
    {
      v17 = MEMORY[0x277D7DB00];
      goto LABEL_13;
    }

    if (v12)
    {
      goto LABEL_23;
    }

LABEL_24:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  if (v12 != 3)
  {
LABEL_23:
    v28 = 0;
    v29 = 0xE000000000000000;
    _StringGuts.grow(_:)(24);

    v28 = 0xD000000000000016;
    v29 = 0x800000020CB9CE80;
    v23 = [a1 goal];
    [v23 goalTypeIdentifier];

    v24 = _HKWorkoutGoalType.description.getter();
    MEMORY[0x20F30BC00](v24);

    goto LABEL_24;
  }

  v17 = MEMORY[0x277D7DB20];
LABEL_13:
  v10(v8, *v17, v5);
  [a1 currentValue];
  type metadata accessor for WorkoutNotificationUnit();
  swift_allocObject();
LABEL_18:
  WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
  MEMORY[0x20F30BCF0]();
  if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return v30;
}

uint64_t specialized static WorkoutNotification.unitsForHeartRate(alert:)(void *a1)
{
  v2 = type metadata accessor for WorkoutNotificationUnit.NotificationUnitType();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [a1 type];
  if (v6 == 8)
  {
    goto LABEL_6;
  }

  if (v6 == 10)
  {
    goto LABEL_7;
  }

  if (v6 == 9)
  {
LABEL_6:
    v7 = dispatch thunk of WorkoutAlertHeartRateZone.heartRateTargetZone.getter();
    dispatch thunk of HeartRateTargetZone.isEffectivelyCustomSingleThreshold.getter();

LABEL_7:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_20CB61A40;
    v9 = *(v3 + 104);
    v9(v5, *MEMORY[0x277D7DB28], v2);
    type metadata accessor for WorkoutNotificationUnit();
    swift_allocObject();
    *(v8 + 32) = WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
    v9(v5, *MEMORY[0x277D7DB50], v2);
    dispatch thunk of WorkoutAlertHeartRateZone.heartRate.getter();
    swift_allocObject();
    *(v8 + 40) = WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
    return v8;
  }

  v13 = 0;
  v14 = 0xE000000000000000;
  _StringGuts.grow(_:)(31);

  v13 = 0xD00000000000001DLL;
  v14 = 0x800000020CB9CB60;
  v12[1] = [a1 type];
  type metadata accessor for NLWorkoutAlertType(0);
  v11 = String.init<A>(describing:)();
  MEMORY[0x20F30BC00](v11);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized static WorkoutNotification.unitForTargetZone(type:value:activityType:)(uint64_t a1, void *a2)
{
  v21 = a2;
  v3 = type metadata accessor for WorkoutNotificationUnit.NotificationUnitType();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TargetZone.PrimaryType();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v20 - v12;
  v14 = *(v8 + 16);
  v20 = a1;
  v14(&v20 - v12, a1, v7);
  v15 = (*(v8 + 88))(v13, v7);
  if (v15 == *MEMORY[0x277D7DEC0])
  {
    v16 = MEMORY[0x277D7DAF8];
LABEL_7:
    (*(v4 + 104))(v6, *v16, v3);
    type metadata accessor for WorkoutNotificationUnit();
    swift_allocObject();
    v17 = v21;
    return WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
  }

  if (v15 == *MEMORY[0x277D7DED0])
  {
    v16 = MEMORY[0x277D7DB30];
    goto LABEL_7;
  }

  if (v15 == *MEMORY[0x277D7DEC8])
  {
    v16 = MEMORY[0x277D7DB10];
    goto LABEL_7;
  }

  v22 = 0;
  v23 = 0xE000000000000000;
  _StringGuts.grow(_:)(26);

  v22 = 0xD000000000000018;
  v23 = 0x800000020CB9CDE0;
  v14(v11, v20, v7);
  v19 = String.init<A>(describing:)();
  MEMORY[0x20F30BC00](v19);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized static WorkoutNotification.unitsForMilestone(alert:)(id a1)
{
  v2 = 0xD000000000000018;
  v3 = type metadata accessor for WorkoutNotificationUnit.NotificationUnitType();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v37 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = &v35 - v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v35 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_20CB67B90;
  v12 = *(v4 + 104);
  v12(v10, *MEMORY[0x277D7DB08], v3);
  v13 = WorkoutAlertSegment.segmentMarker.getter();
  v14 = [v13 segmentIndex];

  v44 = v14;
  v42 = dispatch thunk of CustomStringConvertible.description.getter();
  v43 = v15;
  MEMORY[0x20F30BC00](0x656C637269632ELL, 0xE700000000000000);
  type metadata accessor for WorkoutNotificationUnit();
  swift_allocObject();
  *(v11 + 32) = WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
  v44 = v11;
  v16 = &unk_277DA8000;
  v17 = [a1 type];
  v38 = v10;
  v39 = v12;
  v40 = v4 + 104;
  if (v17 != 6 && v17 != 26)
  {
    goto LABEL_42;
  }

  v12(v10, *MEMORY[0x277D7DB38], v3);
  swift_allocObject();
  WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
  MEMORY[0x20F30BCF0]();
  if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v18 = v44;
  v19 = objc_opt_self();
  v20 = WorkoutAlertSegment.activityType.getter();
  v16 = [v19 fiui:1 activitySupportsMetricType:v20 activityType:WorkoutAlertSegment.activityMoveMode.getter() activityMoveMode:?];

  v21 = WorkoutAlertSegment.activityType.getter();
  v22 = [v19 fiui:8 activitySupportsMetricType:v21 activityType:WorkoutAlertSegment.activityMoveMode.getter() activityMoveMode:?];

  v2 = WorkoutAlertSegment.activityType.getter();
  v23 = [v19 fiui:2 activitySupportsMetricType:v2 activityType:WorkoutAlertSegment.activityMoveMode.getter() activityMoveMode:?];

  if (WorkoutAlertSegment.gpsAvailable.getter())
  {
    v24 = v38;
    if (v16)
    {
      v2 = v36;
      v39(v36, *MEMORY[0x277D7DB40], v3);
      v16 = WorkoutAlertSegment.segmentMarker.getter();
      v25 = [(SEL *)v16 distance];

      if (!v25)
      {
        __break(1u);
        goto LABEL_40;
      }

      [v25 _value];

      WorkoutAlertSegment.activityType.getter();
      swift_allocObject();
      goto LABEL_11;
    }
  }

  else
  {
    v24 = v38;
    if (v16)
    {
      v39(v38, *MEMORY[0x277D7DB28], v3);
      swift_allocObject();
LABEL_11:
      v16 = WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
      MEMORY[0x20F30BCF0]();
      if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v2 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v18 = v44;
    }
  }

  if ((WorkoutAlertSegment.shouldHideTime.getter() & 1) == 0)
  {
    v39(v24, *MEMORY[0x277D7DB18], v3);
    v26 = WorkoutAlertSegment.segmentMarker.getter();
    [v26 duration];

    swift_allocObject();
    v16 = WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
    MEMORY[0x20F30BCF0]();
    if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v2 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v18 = v44;
  }

  if (WorkoutAlertSegment.gpsAvailable.getter())
  {
    if (v22)
    {
      v16 = WorkoutAlertSegment.segmentMarker.getter();
      [(SEL *)v16 duration];
      if (v27 <= 2.22044605e-16)
      {
LABEL_31:
        v32 = v39;
        if (WorkoutAlertSegment.gpsAvailable.getter())
        {
          v33 = MEMORY[0x277D7DAF8];
        }

        else
        {
          v33 = MEMORY[0x277D7DAF0];
        }

        v32(v24, *v33, v3);
        WorkoutAlertSegment.activityType.getter();
        swift_allocObject();
        WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
        MEMORY[0x20F30BCF0]();
        if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        return v44;
      }

      v28 = [(SEL *)v16 distance];
      if (v28)
      {
        v29 = v28;
        v30 = [objc_opt_self() meterUnit];
        [v29 doubleValueForUnit_];

        [(SEL *)v16 duration];
        goto LABEL_31;
      }

      goto LABEL_41;
    }
  }

  else if (v22)
  {
    v39(v24, *MEMORY[0x277D7DB28], v3);
    swift_allocObject();
LABEL_28:
    WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
    MEMORY[0x20F30BCF0]();
    if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    return v44;
  }

  if (!v23)
  {
    return v18;
  }

  v39(v37, *MEMORY[0x277D7DB20], v3);
  v31 = WorkoutAlertSegment.segmentMarker.getter();
  a1 = [v31 activeEnergyBurn];

  if (a1)
  {
    [a1 _value];

    swift_allocObject();
    goto LABEL_28;
  }

LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  v42 = 0;
  v43 = 0xE000000000000000;
  _StringGuts.grow(_:)(38);
  MEMORY[0x20F30BC00](v2 + 12, 0x800000020CB9CD70);
  v41 = [a1 v16[461]];
  type metadata accessor for NLWorkoutAlertType(0);
  _print_unlocked<A, B>(_:_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized static WorkoutNotification.unitsForRaceCompletion(alert:)()
{
  v0 = type metadata accessor for WorkoutNotificationUnit.NotificationUnitType();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = v14 - v5;
  WorkoutAlertRaceComplete.secondsAhead.getter();
  v8 = 0xD00000000000001BLL;
  if (v7 >= 0.0)
  {
    v8 = 0xD00000000000001ALL;
  }

  v14[1] = v8;
  if (v7 >= 0.0)
  {
    v9 = "RACE_METRIC_POSITION_BEHIND";
  }

  else
  {
    v9 = "artworkImageLoader";
  }

  v14[0] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_20CB61A30;
  v11 = *(v1 + 104);
  v11(v6, *MEMORY[0x277D7DB38], v0);
  type metadata accessor for WorkoutNotificationUnit();
  swift_allocObject();
  *(v10 + 32) = WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
  v12 = *MEMORY[0x277D7DB48];
  v11(v4, v12, v0);
  WorkoutAlertRaceComplete.raceTime.getter();
  WorkoutAlertRaceComplete.didWinRace.getter();
  swift_allocObject();
  *(v10 + 40) = WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
  v11(v6, v12, v0);
  WorkoutAlertRaceComplete.secondsAhead.getter();
  swift_allocObject();
  *(v10 + 48) = WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
  v11(v6, *MEMORY[0x277D7DB28], v0);
  dispatch thunk of WorkoutAlertRace.alertTitleLocalizationKey()();
  swift_allocObject();
  *(v10 + 56) = WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
  return v10;
}

uint64_t specialized static WorkoutNotification.unitsForRingCompletion(alert:)(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutNotificationUnit.NotificationUnitType();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v26 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = v26 - v10;
  v12 = &selRef_setPointOfInterestFilter_;
  v13 = [a1 completedRing];
  if (!v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    a1 = swift_allocObject();
    *(a1 + 16) = xmmword_20CB761F0;
    v14 = *MEMORY[0x277D7DB28];
    v15 = *(v3 + 104);
    v15(v6, v14, v2);
    v16 = [objc_opt_self() energyColors];
    if (v16)
    {
      v12 = v16;
      v26[0] = v15;
      v17 = [(SEL *)v16 nonGradientTextColor];

      if (v17)
      {
        UIColor.rgbHex()();

        type metadata accessor for WorkoutNotificationUnit();
        swift_allocObject();
        *(a1 + 32) = WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
        v18 = v26[0];
        (v26[0])(v9, v14, v2);
        swift_allocObject();
        *(a1 + 40) = WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
        v18(v9, v14, v2);
LABEL_9:
        swift_allocObject();
        *(a1 + 48) = WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
        return a1;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v13 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    a1 = swift_allocObject();
    *(a1 + 16) = xmmword_20CB761F0;
    v19 = *MEMORY[0x277D7DB28];
    v20 = *(v3 + 104);
    v20(v11, v19, v2);
    v21 = [objc_opt_self() briskColors];
    if (v21)
    {
      v12 = v21;
      v26[0] = v20;
      v22 = [(SEL *)v21 nonGradientTextColor];

      if (v22)
      {
        UIColor.rgbHex()();

        type metadata accessor for WorkoutNotificationUnit();
        swift_allocObject();
        *(a1 + 32) = WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
        v23 = v26[0];
        (v26[0])(v9, v19, v2);
        swift_allocObject();
        *(a1 + 40) = WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
        v23(v9, v19, v2);
        goto LABEL_9;
      }

      goto LABEL_13;
    }

    goto LABEL_11;
  }

LABEL_14:
  v27 = 0;
  v28 = 0xE000000000000000;
  _StringGuts.grow(_:)(25);

  v27 = 0xD000000000000017;
  v28 = 0x800000020CB9CC10;
  v26[1] = [a1 v12[291]];
  type metadata accessor for NLSessionActivityRing(0);
  v25 = String.init<A>(describing:)();
  MEMORY[0x20F30BC00](v25);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized static WorkoutNotification.unitsForPacerCompletion(alert:)()
{
  v0 = type metadata accessor for WorkoutNotificationUnit.NotificationUnitType();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20CB61A30;
  v5 = *(v1 + 104);
  v5(v3, *MEMORY[0x277D7DB38], v0);
  type metadata accessor for WorkoutNotificationUnit();
  swift_allocObject();
  *(v4 + 32) = WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
  v5(v3, *MEMORY[0x277D7DB00], v0);
  dispatch thunk of WorkoutAlertPacer.finishTime.getter();
  swift_allocObject();
  *(v4 + 40) = WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
  v5(v3, *MEMORY[0x277D7DB40], v0);
  dispatch thunk of WorkoutAlertPacer.distanceGoalInMeters.getter();
  dispatch thunk of WorkoutAlertPacer.activityType.getter();
  swift_allocObject();
  *(v4 + 48) = WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
  v5(v3, *MEMORY[0x277D7DB28], v0);
  swift_allocObject();
  *(v4 + 56) = WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
  return v4;
}

uint64_t specialized static WorkoutNotification.unitsForTimeMilestone(alert:)()
{
  v0 = type metadata accessor for WorkoutNotificationUnit.NotificationUnitType();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20CB61A40;
  v5 = *(v1 + 104);
  v5(v3, *MEMORY[0x277D7DB28], v0);
  type metadata accessor for WorkoutNotificationUnit();
  swift_allocObject();
  *(v4 + 32) = WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
  v5(v3, *MEMORY[0x277D7DB00], v0);
  WorkoutAlertTimeSplit.elapsedTime.getter();
  swift_allocObject();
  *(v4 + 40) = WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
  return v4;
}

uint64_t specialized static WorkoutNotification.unitsForZone(alert:)(void *a1)
{
  v2 = type metadata accessor for TargetZone.ZoneType();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v40 - v7;
  v44 = type metadata accessor for WorkoutNotificationUnit.NotificationUnitType();
  v9 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [dispatch thunk of WorkoutAlertZone.targetZone.getter() primaryType];

  v42 = v3;
  if (v12 == 1)
  {
    v13 = 0xE400000000000000;
    v14 = 1162035536;
  }

  else if (v12 == 3)
  {
    v13 = 0xE500000000000000;
    v14 = 0x5245574F50;
  }

  else
  {
    if (v12 != 2)
    {
      v46 = 0;
      v47 = 0xE000000000000000;
      _StringGuts.grow(_:)(26);

      v46 = 0xD000000000000018;
      v47 = 0x800000020CB9CB40;
      v36 = [dispatch thunk of WorkoutAlertZone.targetZone.getter() primaryType];

      v45 = v36;
      type metadata accessor for WOTargetZonePrimaryType(0);
      v37 = String.init<A>(describing:)();
      MEMORY[0x20F30BC00](v37);

      goto LABEL_42;
    }

    v15 = dispatch thunk of WorkoutAlertZone.activityType.getter();
    v16 = [v15 effectiveTypeIdentifier];

    if (MEMORY[0x20F30D320](v16))
    {
      v13 = 0x800000020CB9CB80;
      v14 = 0xD000000000000011;
    }

    else
    {
      v13 = 0xEF474E494C435943;
      v14 = 0x5F45434E45444143;
    }
  }

  v17 = [a1 type];
  v43 = v2;
  v40 = v6;
  v41 = v13;
  if (v17 == 8)
  {
    dispatch thunk of WorkoutAlertZone.targetZone.getter();
    v20 = dispatch thunk of TargetZone.isSingleThreshold.getter();

    if (v20)
    {
      v19 = 0x5F45564F4241;
      goto LABEL_15;
    }

    v24 = 0x5F45564F4241;
  }

  else
  {
    if (v17 != 9)
    {
      if (v17 != 10)
      {
        v46 = 0;
        v47 = 0xE000000000000000;
        _StringGuts.grow(_:)(31);

        v46 = 0xD00000000000001DLL;
        v47 = 0x800000020CB9CB60;
        v45 = [a1 type];
        type metadata accessor for NLWorkoutAlertType(0);
        v38 = String.init<A>(describing:)();
        MEMORY[0x20F30BC00](v38);

        goto LABEL_42;
      }

      v21 = 0x525F4E4948544957;
      v22 = 1162300993;
      goto LABEL_18;
    }

    dispatch thunk of WorkoutAlertZone.targetZone.getter();
    v18 = dispatch thunk of TargetZone.isSingleThreshold.getter();

    if (v18)
    {
      v19 = 0x5F574F4C4542;
LABEL_15:
      v21 = v19 & 0xFFFFFFFFFFFFLL | 0x4154000000000000;
      v22 = 1413826386;
LABEL_18:
      v23 = v22 | 0xED00005F00000000;
      goto LABEL_22;
    }

    v24 = 0x5F574F4C4542;
  }

  v21 = v24 & 0xFFFFFFFFFFFFLL | 0x4152000000000000;
  v23 = 0xEC0000005F45474ELL;
LABEL_22:
  v46 = v21;
  v47 = v23;
  MEMORY[0x20F30BC00](v14, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_20CB67B90;
  v26 = *(v9 + 104);
  v27 = v44;
  v26(v11, *MEMORY[0x277D7DB28], v44);
  type metadata accessor for WorkoutNotificationUnit();
  swift_allocObject();
  *(v25 + 32) = WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
  v45 = v25;
  dispatch thunk of WorkoutAlertZone.targetZone.getter();
  TargetZone.type.getter();

  v28 = (*(v42 + 88))(v8, v43);
  if (v28 == *MEMORY[0x277D7DE48])
  {

    v29 = *MEMORY[0x277D7DAD8];
    v30 = v11;
    v31 = v27;
  }

  else
  {
    if (v28 == *MEMORY[0x277D7DE40])
    {

      v32 = MEMORY[0x277D7DAD0];
    }

    else if (v28 == *MEMORY[0x277D7DE60])
    {

      v32 = MEMORY[0x277D7DAF8];
    }

    else if (v28 == *MEMORY[0x277D7DE70])
    {

      v32 = MEMORY[0x277D7DB30];
    }

    else if (v28 == *MEMORY[0x277D7DE58])
    {

      v32 = MEMORY[0x277D7DAE8];
    }

    else if (v28 == *MEMORY[0x277D7DE68])
    {

      v32 = MEMORY[0x277D7DB10];
    }

    else
    {
      if (v28 != *MEMORY[0x277D7DE50])
      {
        while (1)
        {
          v46 = 0;
          v47 = 0xE000000000000000;
          _StringGuts.grow(_:)(26);

          v46 = 0xD000000000000018;
          v47 = 0x800000020CB9CB40;
          dispatch thunk of WorkoutAlertZone.targetZone.getter();
          TargetZone.type.getter();

          v39 = String.init<A>(describing:)();
          MEMORY[0x20F30BC00](v39);

LABEL_42:
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
        }
      }

      v32 = MEMORY[0x277D7DAE0];
    }

    v29 = *v32;
    v30 = v11;
    v31 = v44;
  }

  v26(v30, v29, v31);
  dispatch thunk of WorkoutAlertZone.alertValue.getter();
  dispatch thunk of WorkoutAlertZone.activityType.getter();
  swift_allocObject();
  v33 = WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
  MEMORY[0x20F30BCF0](v33, v34);
  if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return v45;
}

uint64_t specialized static WorkoutNotification.unitsForLapMilestone(alert:)()
{
  v0 = type metadata accessor for WorkoutNotificationUnit.NotificationUnitType();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch thunk of WorkoutAlertLapChange.lapDuration.getter();
  if (v4 > 2.22044605e-16)
  {
    dispatch thunk of WorkoutAlertLapChange.lapDistance.getter();
    dispatch thunk of WorkoutAlertLapChange.lapDuration.getter();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_20CB7AEF0;
  v6 = *(v1 + 104);
  v6(v3, *MEMORY[0x277D7DB08], v0);
  v9[1] = dispatch thunk of WorkoutAlertLapChange.lapNumber.getter();
  v9[2] = dispatch thunk of CustomStringConvertible.description.getter();
  v9[3] = v7;
  MEMORY[0x20F30BC00](0x656C637269632ELL, 0xE700000000000000);
  type metadata accessor for WorkoutNotificationUnit();
  swift_allocObject();
  *(v5 + 32) = WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
  v6(v3, *MEMORY[0x277D7DB38], v0);
  swift_allocObject();
  *(v5 + 40) = WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
  v6(v3, *MEMORY[0x277D7DB40], v0);
  dispatch thunk of WorkoutAlertLapChange.lapDistance.getter();
  WorkoutAlertLapChange.activityType.getter();
  swift_allocObject();
  *(v5 + 48) = WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
  v6(v3, *MEMORY[0x277D7DB18], v0);
  dispatch thunk of WorkoutAlertLapChange.lapDuration.getter();
  swift_allocObject();
  *(v5 + 56) = WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
  v6(v3, *MEMORY[0x277D7DAF8], v0);
  WorkoutAlertLapChange.activityType.getter();
  swift_allocObject();
  *(v5 + 64) = WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
  return v5;
}

uint64_t specialized static WorkoutNotification.unitsForTranscript(alert:)()
{
  v0 = type metadata accessor for WorkoutNotificationUnit.NotificationUnitType();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x277D84F90];
  TranscriptWorkoutAlert.title.getter();
  if (v4)
  {
    v5 = *(v1 + 104);
    v5(v3, *MEMORY[0x277D7DB38], v0);
    type metadata accessor for WorkoutNotificationUnit();
    swift_allocObject();
    WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
    MEMORY[0x20F30BCF0]();
    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  else
  {
    v5 = *(v1 + 104);
  }

  v5(v3, *MEMORY[0x277D7DB28], v0);
  TranscriptWorkoutAlert.message.getter();
  type metadata accessor for WorkoutNotificationUnit();
  swift_allocObject();
  WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
  MEMORY[0x20F30BCF0]();
  if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return v8;
}

uint64_t specialized WorkoutNotification.init(alert:formattingManager:displayDuration:)(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for WorkoutNotificationUnit.NotificationUnitType();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for WorkoutNotification.NotificationType();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v71 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = *MEMORY[0x277D7DA20];
  v68 = v11;
  v69 = &v60 - v15;
  v16 = *(v11 + 104);
  v70 = v17;
  v16();
  objc_opt_self();
  v18 = swift_dynamicCastObjCClass();
  if (!v18)
  {
    v63 = v14;
    v61 = v2;
    v62 = v5;
    v66 = v9;
    v67 = v16;
    v60 = v3;
    v64 = v7;
    v65 = v6;
    type metadata accessor for WorkoutAlertHeartRateZone();
    v23 = swift_dynamicCastClass();
    if (v23)
    {
      specialized static WorkoutNotification.unitsForHeartRate(alert:)(v23);
      v22 = v68;
      v21 = v69;
      v20 = v70;
      (*(v68 + 8))(v69, v70);
      (v67)(v21, *MEMORY[0x277D7DA10], v20);
LABEL_7:
      v19 = v71;
      goto LABEL_10;
    }

    type metadata accessor for WorkoutAlertInterval();
    v24 = swift_dynamicCastClass();
    v25 = v67;
    if (v24)
    {
      v19 = v71;
      static WorkoutNotification.unitsAndTypeForInterval(alert:)(v71, v24);
      v22 = v68;
      v21 = v69;
      v20 = v70;
      (*(v68 + 8))(v69, v70);
      (*(v22 + 32))(v21, v19, v20);
      goto LABEL_10;
    }

    type metadata accessor for WorkoutAlertSegment();
    v28 = swift_dynamicCastClass();
    if (v28)
    {
      specialized static WorkoutNotification.unitsForMilestone(alert:)(v28);
      v22 = v68;
      v21 = v69;
      v20 = v70;
      (*(v68 + 8))(v69, v70);
      v29 = MEMORY[0x277D7DA28];
LABEL_15:
      (v25)(v21, *v29, v20);
      goto LABEL_7;
    }

    type metadata accessor for WorkoutAlertRaceComplete();
    if (swift_dynamicCastClass())
    {
      specialized static WorkoutNotification.unitsForRaceCompletion(alert:)();
      v22 = v68;
      v21 = v69;
      v20 = v70;
      (*(v68 + 8))(v69, v70);
      v29 = MEMORY[0x277D7D9F8];
      goto LABEL_15;
    }

    type metadata accessor for WorkoutAlertRace();
    if (swift_dynamicCastClass())
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_20CB67B90;
      (*(v64 + 104))(v66, *MEMORY[0x277D7DB28], v65);
      dispatch thunk of WorkoutAlertRace.alertTitleLocalizationKey()();
      type metadata accessor for WorkoutNotificationUnit();
      swift_allocObject();
      *(v30 + 32) = WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
LABEL_18:
      v19 = v71;
      goto LABEL_4;
    }

    objc_opt_self();
    v31 = swift_dynamicCastObjCClass();
    if (v31)
    {
      specialized static WorkoutNotification.unitsForRingCompletion(alert:)(v31);
      goto LABEL_3;
    }

    type metadata accessor for WorkoutAlertPacer();
    if (swift_dynamicCastClass())
    {
      specialized static WorkoutNotification.unitsForPacerCompletion(alert:)();
      v22 = v68;
      v21 = v69;
      v20 = v70;
      (*(v68 + 8))(v69, v70);
      v29 = MEMORY[0x277D7DA00];
      goto LABEL_15;
    }

    type metadata accessor for WorkoutAlertTimeSplit();
    if (swift_dynamicCastClass())
    {
      specialized static WorkoutNotification.unitsForTimeMilestone(alert:)();
      goto LABEL_3;
    }

    type metadata accessor for WorkoutAlertZone();
    v32 = swift_dynamicCastClass();
    if (v32)
    {
      specialized static WorkoutNotification.unitsForZone(alert:)(v32);
      v22 = v68;
      v21 = v69;
      v20 = v70;
      (*(v68 + 8))(v69, v70);
      v29 = MEMORY[0x277D7DA10];
      goto LABEL_15;
    }

    type metadata accessor for WorkoutAlertLapChange();
    if (swift_dynamicCastClass())
    {
      specialized static WorkoutNotification.unitsForLapMilestone(alert:)();
      v22 = v68;
      v21 = v69;
      v20 = v70;
      (*(v68 + 8))(v69, v70);
      v33 = MEMORY[0x277D7DA28];
    }

    else
    {
      type metadata accessor for WorkoutAlertTrackStatusChange();
      if (swift_dynamicCastClass())
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
        v36 = swift_allocObject();
        *(v36 + 16) = xmmword_20CB67B90;
        (*(v64 + 104))(v66, *MEMORY[0x277D7DB28], v65);
        type metadata accessor for WorkoutNotificationUnit();
        swift_allocObject();
        *(v36 + 32) = WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
        v22 = v68;
        v21 = v69;
        v20 = v70;
        (*(v68 + 8))(v69, v70);
        v35 = v21;
        v34 = v63;
        goto LABEL_32;
      }

      type metadata accessor for TranscriptWorkoutAlert();
      if (!swift_dynamicCastClass())
      {
        static WOLog.alerts.getter();
        v37 = a1;
        v38 = Logger.logObject.getter();
        v39 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          v41 = swift_slowAlloc();
          v72 = v41;
          *v40 = 136315138;
          v42 = v37;
          v43 = [v42 description];
          v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v46 = v45;

          v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v46, &v72);

          *(v40 + 4) = v47;
          _os_log_impl(&dword_20C66F000, v38, v39, "Unhandled workout notification: %s", v40, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v41);
          MEMORY[0x20F30E080](v41, -1, -1);
          MEMORY[0x20F30E080](v40, -1, -1);
        }

        (*(v60 + 8))(v62, v61);
        [v37 type];
        v48 = NLWorkoutAlertTypeString();
        v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v51 = v50;

        v52 = specialized Collection.dropFirst(_:)(0x12uLL, v49, v51);
        v54 = v53;
        v56 = v55;
        v58 = v57;

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
        v59 = swift_allocObject();
        *(v59 + 16) = xmmword_20CB67B90;
        (*(v64 + 104))(v66, *MEMORY[0x277D7DB28], v65);
        MEMORY[0x20F30BBA0](v52, v54, v56, v58);

        type metadata accessor for WorkoutNotificationUnit();
        swift_allocObject();
        *(v59 + 32) = WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)();
        goto LABEL_18;
      }

      specialized static WorkoutNotification.unitsForTranscript(alert:)();
      v22 = v68;
      v21 = v69;
      v20 = v70;
      (*(v68 + 8))(v69, v70);
      v33 = MEMORY[0x277D7D9F0];
    }

    v34 = *v33;
    v35 = v21;
LABEL_32:
    (v67)(v35, v34, v20);
    v19 = v71;
    goto LABEL_10;
  }

  specialized static WorkoutNotification.unitsForGoalProgress(alert:)(v18);
LABEL_3:
  v19 = v71;
LABEL_4:
  v21 = v69;
  v20 = v70;
  v22 = v68;
LABEL_10:
  (*(v22 + 16))(v19, v21, v20);
  v26 = dispatch thunk of WorkoutNotification.__allocating_init(units:notificationType:displayDuration:)();
  (*(v22 + 8))(v21, v20);
  return v26;
}

uint64_t outlined destroy of CompletedWorkoutStep?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore09CompletedA4StepVSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t TrainingLoadBand.color.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Color.RGBColorSpace();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Band = type metadata accessor for TrainingLoadBand();
  v7 = *(Band - 8);
  v8 = MEMORY[0x28223BE20](Band);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v1, Band, v8);
  v11 = (*(v7 + 88))(v10, Band);
  if (v11 == *MEMORY[0x277D0FE98] || v11 == *MEMORY[0x277D0FE88] || v11 == *MEMORY[0x277D0FE78] || v11 == *MEMORY[0x277D0FE80] || v11 == *MEMORY[0x277D0FE90])
  {
    (*(v3 + 104))(v5, *MEMORY[0x277CE0EE0], v2);
    return Color.init(_:red:green:blue:opacity:)();
  }

  else
  {
    v13 = static Color.clear.getter();
    (*(v7 + 8))(v10, Band);
    return v13;
  }
}

uint64_t TrainingLoadBand.background.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Color.RGBColorSpace();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Band = type metadata accessor for TrainingLoadBand();
  v7 = *(Band - 8);
  v8 = MEMORY[0x28223BE20](Band);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v1, Band, v8);
  v11 = (*(v7 + 88))(v10, Band);
  if (v11 == *MEMORY[0x277D0FE98] || v11 == *MEMORY[0x277D0FE88] || v11 == *MEMORY[0x277D0FE78] || v11 == *MEMORY[0x277D0FE80] || v11 == *MEMORY[0x277D0FE90])
  {
    (*(v3 + 104))(v5, *MEMORY[0x277CE0EE0], v2);
    return Color.init(_:red:green:blue:opacity:)();
  }

  else
  {
    v13 = static Color.clear.getter();
    (*(v7 + 8))(v10, Band);
    return v13;
  }
}

__n128 TrainingLoadBand.layeredBackground.getter@<Q0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI5ColorVGMd);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_20CB5DA80;
  v3 = objc_opt_self();
  v4 = [v3 secondarySystemBackgroundColor];
  Color.init(uiColor:)();
  v5 = Color.opacity(_:)();

  *(v2 + 32) = v5;
  v6 = [v3 secondarySystemBackgroundColor];
  Color.init(uiColor:)();
  v7 = Color.opacity(_:)();

  *(v2 + 40) = v7;
  static UnitPoint.top.getter();
  static UnitPoint.bottom.getter();
  MEMORY[0x20F30B340](v2);
  LinearGradient.init(gradient:startPoint:endPoint:)();
  v8 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI8GradientV4StopVGMd);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_20CB5EA80;
  TrainingLoadBand.background.getter();
  Color.opacity(_:)();

  *(v9 + 32) = Gradient.Stop.init(color:location:)();
  *(v9 + 40) = v10;
  TrainingLoadBand.background.getter();
  Color.opacity(_:)();

  *(v9 + 48) = Gradient.Stop.init(color:location:)();
  *(v9 + 56) = v11;
  TrainingLoadBand.background.getter();
  Color.opacity(_:)();

  *(v9 + 64) = Gradient.Stop.init(color:location:)();
  *(v9 + 72) = v12;
  static UnitPoint.top.getter();
  static UnitPoint.bottom.getter();
  Gradient.init(stops:)();
  v18 = v23;
  v19 = v22;
  LinearGradient.init(gradient:startPoint:endPoint:)();
  v13 = v24;
  *a1 = static Alignment.center.getter();
  *(a1 + 8) = v14;
  v16 = v26;
  v17 = v25;
  outlined init with copy of LinearGradient(&v21, v20);
  outlined init with copy of LinearGradient(&v24, v20);
  outlined destroy of LinearGradient(&v24);
  outlined destroy of LinearGradient(&v21);
  *(a1 + 16) = v8;
  *(a1 + 40) = v18;
  *(a1 + 24) = v19;
  *(a1 + 56) = v13;
  result = v17;
  *(a1 + 64) = v17;
  *(a1 + 80) = v16;
  return result;
}

uint64_t TrainingLoadBand.localizedDescription.getter()
{
  v1 = v0;
  Band = type metadata accessor for TrainingLoadBand();
  v3 = *(Band - 8);
  v4 = MEMORY[0x28223BE20](Band);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, Band, v4);
  v7 = (*(v3 + 88))(v6, Band);
  if (v7 != *MEMORY[0x277D0FE98])
  {
    if (v7 == *MEMORY[0x277D0FE88])
    {
      v15 = "LOAD_ASSESSMENT_CATEGORY_DESCRIPTION_BELOW";
    }

    else
    {
      if (v7 == *MEMORY[0x277D0FE78])
      {
        v8 = "LOAD_ASSESSMENT_CATEGORY_DESCRIPTION_CONSISTENT";
        goto LABEL_3;
      }

      if (v7 != *MEMORY[0x277D0FE80])
      {
        if (v7 != *MEMORY[0x277D0FE90])
        {
          (*(v3 + 8))(v6, Band);
          return 0;
        }

        v8 = "LOAD_ASSESSMENT_CATEGORY_DESCRIPTION_WELL_ABOVE";
        goto LABEL_3;
      }

      v15 = "LOAD_ASSESSMENT_CATEGORY_DESCRIPTION_ABOVE";
    }

    v16 = v15 - 32;
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v10 = WorkoutUIBundle.super.isa;
    v14 = 0xD00000000000002ALL;
    v21 = 0xE000000000000000;
    v11 = 0x617A696C61636F4CLL;
    v12 = 0xEB00000000656C62;
    v13 = v16 | 0x8000000000000000;
    goto LABEL_11;
  }

  v8 = "LOAD_ASSESSMENT_CATEGORY_DESCRIPTION_WELL_BELOW";
LABEL_3:
  v9 = v8 - 32;
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v10 = WorkoutUIBundle.super.isa;
  v21 = 0xE000000000000000;
  v11 = 0x617A696C61636F4CLL;
  v12 = 0xEB00000000656C62;
  v13 = v9 | 0x8000000000000000;
  v14 = 0xD00000000000002FLL;
LABEL_11:
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  v18 = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v14, *&v11, v10, v17, *(&v21 - 1))._countAndFlagsBits;

  return countAndFlagsBits;
}

unint64_t lazy protocol witness table accessor for type ZStack<TupleView<(ModifiedContent<Rectangle, _ForegroundStyleModifier<LinearGradient>>, ModifiedContent<Rectangle, _ForegroundStyleModifier<LinearGradient>>)>> and conformance ZStack<A>()
{
  result = lazy protocol witness table cache variable for type ZStack<TupleView<(ModifiedContent<Rectangle, _ForegroundStyleModifier<LinearGradient>>, ModifiedContent<Rectangle, _ForegroundStyleModifier<LinearGradient>>)>> and conformance ZStack<A>;
  if (!lazy protocol witness table cache variable for type ZStack<TupleView<(ModifiedContent<Rectangle, _ForegroundStyleModifier<LinearGradient>>, ModifiedContent<Rectangle, _ForegroundStyleModifier<LinearGradient>>)>> and conformance ZStack<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAA9RectangleVAA24_ForegroundStyleModifierVyAA14LinearGradientVGG_AOtGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ZStack<TupleView<(ModifiedContent<Rectangle, _ForegroundStyleModifier<LinearGradient>>, ModifiedContent<Rectangle, _ForegroundStyleModifier<LinearGradient>>)>> and conformance ZStack<A>);
  }

  return result;
}

void SessionControlsExpandCollapseButton.init(controlsState:)(uint64_t a1@<X8>)
{
  type metadata accessor for SessionControlsState();
  _s9WorkoutUI20SessionControlsStateCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type SessionControlsState and conformance SessionControlsState, type metadata accessor for SessionControlsState);
  Bindable<A>.init(wrappedValue:)();
  v2 = objc_opt_self();
  v3 = [v2 currentDevice];
  v4 = specialized UIDevice.screenType.getter();

  v5 = dbl_20CB7B0B0[v4];
  v6 = objc_opt_self();
  v7 = [v6 mainScreen];
  [v7 scale];
  v9 = v8;

  v10 = [v6 mainScreen];
  [v10 nativeScale];
  v12 = v11;

  if (v9 != v12)
  {
    v13 = [v6 mainScreen];
    [v13 scale];
    v15 = v14;

    v16 = [v6 mainScreen];
    [v16 nativeScale];
    v18 = v17;

    v5 = v5 * (v15 / v18 * 0.95);
  }

  v19 = type metadata accessor for SessionControlsExpandCollapseButton();
  *(a1 + *(v19 + 20)) = v5;
  v20 = [v2 currentDevice];
  v21 = specialized UIDevice.screenType.getter();

  v22 = dbl_20CB7B108[v21];
  v23 = [v6 mainScreen];
  [v23 scale];
  v25 = v24;

  v26 = [v6 mainScreen];
  [v26 nativeScale];
  v28 = v27;

  if (v25 != v28)
  {
    v29 = [v6 mainScreen];
    [v29 scale];
    v31 = v30;

    v32 = [v6 mainScreen];
    [v32 nativeScale];
    v34 = v33;

    v22 = v22 * (v31 / v34 * 0.95);
  }

  *(a1 + *(v19 + 24)) = v22;
}

uint64_t SessionControlsExpandCollapseButton.body.getter@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v2 = type metadata accessor for SessionControlsExpandCollapseButton();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA6ZStackVyAA9TupleViewVyAA06_ShapeH0VyAA6CircleVAA8MaterialVG_ACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGATyAA4FontVSgGGAA15_RotationEffectVGtGGGAA12_FrameLayoutVGMd);
  MEMORY[0x28223BE20](v5);
  v7 = &v31 - v6;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA6ZStackVyAA9TupleViewVyAA06_ShapeH0VyAA6CircleVAA8MaterialVG_ACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGATyAA4FontVSgGGAA15_RotationEffectVGtGGGAA12_FrameLayoutVGAA023AccessibilityAttachmentP0VGMd);
  MEMORY[0x28223BE20](v31);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v31 - v11;
  outlined init with copy of SessionControlsExpandCollapseButton(v1, &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v14 = swift_allocObject();
  outlined init with take of SessionControlsExpandCollapseButton(&v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  v33 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ZStackVyAA9TupleViewVyAA06_ShapeE0VyAA6CircleVAA8MaterialVG_AA15ModifiedContentVyANyANyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGARyAA4FontVSgGGAA15_RotationEffectVGtGGMd);
  lazy protocol witness table accessor for type ZStack<TupleView<(_ShapeView<Circle, Material>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _RotationEffect>)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type ZStack<TupleView<(_ShapeView<Circle, Material>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _RotationEffect>)>> and conformance ZStack<A>, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA06_ShapeE0VyAA6CircleVAA8MaterialVG_AA15ModifiedContentVyANyANyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGARyAA4FontVSgGGAA15_RotationEffectVGtGGMd);
  Button.init(action:label:)();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v15 = &v7[*(v5 + 36)];
  v16 = v37;
  *v15 = v36;
  *(v15 + 1) = v16;
  *(v15 + 2) = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy07WorkoutB020SessionControlsStateCGMd);
  Bindable.wrappedValue.getter();
  v17 = v35;
  swift_getKeyPath();
  v35 = v17;
  _s9WorkoutUI20SessionControlsStateCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type SessionControlsState and conformance SessionControlsState, type metadata accessor for SessionControlsState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v18 = *(v17 + 16);

  if (v18 == 1)
  {
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    v19 = "AX_HIDE_CONTROLS";
  }

  else
  {
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    v19 = "AX_SHOW_CONTROLS";
  }

  v20 = v19 - 32;
  swift_beginAccess();
  v21 = WorkoutUIBundle.super.isa;
  v39._object = 0xE000000000000000;
  v22.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v22.value._object = 0xEB00000000656C62;
  v23._object = (v20 | 0x8000000000000000);
  v23._countAndFlagsBits = 0xD000000000000010;
  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  v39._countAndFlagsBits = 0;
  v25 = NSLocalizedString(_:tableName:bundle:value:comment:)(v23, v22, v21, v24, v39);

  v34 = v25;
  lazy protocol witness table accessor for type ModifiedContent<Button<ZStack<TupleView<(_ShapeView<Circle, Material>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _RotationEffect>)>>>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type String and conformance String();
  View.accessibilityLabel<A>(_:)();

  outlined destroy of ModifiedContent<Button<ZStack<TupleView<(_ShapeView<Circle, Material>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _RotationEffect>)>>>, _FrameLayout>(v7, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA6ZStackVyAA9TupleViewVyAA06_ShapeH0VyAA6CircleVAA8MaterialVG_ACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGATyAA4FontVSgGGAA15_RotationEffectVGtGGGAA12_FrameLayoutVGMd);
  Bindable.wrappedValue.getter();
  countAndFlagsBits = v34._countAndFlagsBits;
  swift_getKeyPath();
  v34._countAndFlagsBits = countAndFlagsBits;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  LODWORD(v20) = *(countAndFlagsBits + 16);

  if (v20 == 1)
  {
    if (one-time initialization token for collapseControls == -1)
    {
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  if (one-time initialization token for expandControls != -1)
  {
LABEL_13:
    swift_once();
  }

LABEL_12:

  ModifiedContent<>.accessibilityIdentifier(_:)();

  outlined destroy of ModifiedContent<Button<ZStack<TupleView<(_ShapeView<Circle, Material>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _RotationEffect>)>>>, _FrameLayout>(v9, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA6ZStackVyAA9TupleViewVyAA06_ShapeH0VyAA6CircleVAA8MaterialVG_ACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGATyAA4FontVSgGGAA15_RotationEffectVGtGGGAA12_FrameLayoutVGAA023AccessibilityAttachmentP0VGMd);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6ButtonVyAA6ZStackVyAA9TupleViewVyAA06_ShapeH0VyAA6CircleVAA8MaterialVG_ACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGATyAA4FontVSgGGAA15_RotationEffectVGtGGGAA12_FrameLayoutVGAA023AccessibilityAttachmentP0VGAA01_di4KindP0VyAMGGMd);
  v28 = v32;
  v29 = (v32 + *(v27 + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI25_ContentShapeKindModifierVyAA6CircleVGMd);
  static ContentShapeKinds.accessibility.getter();
  *v29 = 0;
  return outlined init with take of ModifiedContent<ModifiedContent<Button<ZStack<TupleView<(_ShapeView<Circle, Material>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _RotationEffect>)>>>, _FrameLayout>, AccessibilityAttachmentModifier>(v12, v28);
}

uint64_t closure #1 in SessionControlsExpandCollapseButton.body.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy07WorkoutB020SessionControlsStateCGMd);
  Bindable.wrappedValue.getter();
  swift_getKeyPath();
  _s9WorkoutUI20SessionControlsStateCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type SessionControlsState and conformance SessionControlsState, type metadata accessor for SessionControlsState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  *(v1 + 16) = (*(v1 + 16) & 1) == 0;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();
}

uint64_t closure #2 in SessionControlsExpandCollapseButton.body.getter@<X0>(uint64_t *a1@<X8>)
{
  *a1 = static Alignment.center.getter();
  a1[1] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_ZStackLayoutVAA05TupleD0VyAA06_ShapeD0VyAA6CircleVAA8MaterialVG_AA15ModifiedContentVyARyARyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAVyAA4FontVSgGGAA15_RotationEffectVGtGGMd);
  return closure #1 in closure #2 in SessionControlsExpandCollapseButton.body.getter(a1 + *(v3 + 44));
}

uint64_t closure #1 in closure #2 in SessionControlsExpandCollapseButton.body.getter@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v30 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10_ShapeViewVyAA6CircleVAA8MaterialVGMd);
  MEMORY[0x28223BE20](v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v30 - v8;
  if (one-time initialization token for buttonBackground != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Material();
  v11 = __swift_project_value_buffer(v10, static SessionViewColors.buttonBackground);
  (*(*(v10 - 8) + 16))(v9, v11, v10);
  *&v9[*(v4 + 56)] = 256;
  v12 = Image.init(systemName:)();
  v13 = static Color.white.getter();
  KeyPath = swift_getKeyPath();
  type metadata accessor for SessionControlsExpandCollapseButton();
  static Font.Weight.semibold.getter();
  v15 = type metadata accessor for Font.Design();
  (*(*(v15 - 8) + 56))(v3, 1, 1, v15);
  v16 = static Font.system(size:weight:design:)();
  outlined destroy of ModifiedContent<Button<ZStack<TupleView<(_ShapeView<Circle, Material>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _RotationEffect>)>>>, _FrameLayout>(v3, &_s7SwiftUI4FontV6DesignOSgMd);
  v17 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy07WorkoutB020SessionControlsStateCGMd);
  Bindable.wrappedValue.getter();
  v18 = v36[0];
  swift_getKeyPath();
  v36[0] = v18;
  _s9WorkoutUI20SessionControlsStateCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type SessionControlsState and conformance SessionControlsState, type metadata accessor for SessionControlsState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v19 = *(v18 + 16);

  if (v19)
  {
    v20 = 3.14159265;
  }

  else
  {
    v20 = 0.0;
  }

  static UnitPoint.center.getter();
  v22 = v21;
  v24 = v23;
  _s7SwiftUI10_ShapeViewVyAA6CircleVAA8MaterialVGWOcTm_0(v9, v6, &_s7SwiftUI10_ShapeViewVyAA6CircleVAA8MaterialVGMd);
  v25 = v31;
  _s7SwiftUI10_ShapeViewVyAA6CircleVAA8MaterialVGWOcTm_0(v6, v31, &_s7SwiftUI10_ShapeViewVyAA6CircleVAA8MaterialVGMd);
  v26 = (v25 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10_ShapeViewVyAA6CircleVAA8MaterialVG_AA15ModifiedContentVyAJyAJyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGANyAA4FontVSgGGAA15_RotationEffectVGtMd) + 48));
  *&v32 = v12;
  *(&v32 + 1) = KeyPath;
  *&v33 = v13;
  *(&v33 + 1) = v17;
  *&v34 = v16;
  *(&v34 + 1) = v20;
  *&v35 = v22;
  *(&v35 + 1) = v24;
  v27 = v33;
  *v26 = v32;
  v26[1] = v27;
  v28 = v35;
  v26[2] = v34;
  v26[3] = v28;
  _s7SwiftUI10_ShapeViewVyAA6CircleVAA8MaterialVGWOcTm_0(&v32, v36, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA4FontVSgGGAA15_RotationEffectVGMd);
  outlined destroy of ModifiedContent<Button<ZStack<TupleView<(_ShapeView<Circle, Material>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _RotationEffect>)>>>, _FrameLayout>(v9, &_s7SwiftUI10_ShapeViewVyAA6CircleVAA8MaterialVGMd);
  v36[0] = v12;
  v36[1] = KeyPath;
  v36[2] = v13;
  v36[3] = v17;
  v36[4] = v16;
  *&v36[5] = v20;
  v36[6] = v22;
  v36[7] = v24;
  outlined destroy of ModifiedContent<Button<ZStack<TupleView<(_ShapeView<Circle, Material>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _RotationEffect>)>>>, _FrameLayout>(v36, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA4FontVSgGGAA15_RotationEffectVGMd);
  return outlined destroy of ModifiedContent<Button<ZStack<TupleView<(_ShapeView<Circle, Material>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _RotationEffect>)>>>, _FrameLayout>(v6, &_s7SwiftUI10_ShapeViewVyAA6CircleVAA8MaterialVGMd);
}

uint64_t type metadata accessor for SessionControlsExpandCollapseButton()
{
  result = type metadata singleton initialization cache for SessionControlsExpandCollapseButton;
  if (!type metadata singleton initialization cache for SessionControlsExpandCollapseButton)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for SessionControlsExpandCollapseButton()
{
  type metadata accessor for Bindable<SessionControlsState>();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void type metadata accessor for Bindable<SessionControlsState>()
{
  if (!lazy cache variable for type metadata for Bindable<SessionControlsState>)
  {
    type metadata accessor for SessionControlsState();
    v0 = type metadata accessor for Bindable();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Bindable<SessionControlsState>);
    }
  }
}

uint64_t outlined init with take of SessionControlsExpandCollapseButton(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionControlsExpandCollapseButton();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in SessionControlsExpandCollapseButton.body.getter()
{
  type metadata accessor for SessionControlsExpandCollapseButton();

  return closure #1 in SessionControlsExpandCollapseButton.body.getter();
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Button<ZStack<TupleView<(_ShapeView<Circle, Material>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _RotationEffect>)>>>, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Button<ZStack<TupleView<(_ShapeView<Circle, Material>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _RotationEffect>)>>>, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Button<ZStack<TupleView<(_ShapeView<Circle, Material>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _RotationEffect>)>>>, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA6ZStackVyAA9TupleViewVyAA06_ShapeH0VyAA6CircleVAA8MaterialVG_ACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGATyAA4FontVSgGGAA15_RotationEffectVGtGGGAA12_FrameLayoutVGMd);
    lazy protocol witness table accessor for type ZStack<TupleView<(_ShapeView<Circle, Material>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _RotationEffect>)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type Button<ZStack<TupleView<(_ShapeView<Circle, Material>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _RotationEffect>)>>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA6ZStackVyAA9TupleViewVyAA06_ShapeF0VyAA6CircleVAA8MaterialVG_AA15ModifiedContentVyAPyAPyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGATyAA4FontVSgGGAA15_RotationEffectVGtGGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Button<ZStack<TupleView<(_ShapeView<Circle, Material>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _RotationEffect>)>>>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined init with take of ModifiedContent<ModifiedContent<Button<ZStack<TupleView<(_ShapeView<Circle, Material>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _RotationEffect>)>>>, _FrameLayout>, AccessibilityAttachmentModifier>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA6ZStackVyAA9TupleViewVyAA06_ShapeH0VyAA6CircleVAA8MaterialVG_ACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGATyAA4FontVSgGGAA15_RotationEffectVGtGGGAA12_FrameLayoutVGAA023AccessibilityAttachmentP0VGMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t _s7SwiftUI10_ShapeViewVyAA6CircleVAA8MaterialVGWOcTm_0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of ModifiedContent<Button<ZStack<TupleView<(_ShapeView<Circle, Material>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _RotationEffect>)>>>, _FrameLayout>(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Button<ZStack<TupleView<(_ShapeView<Circle, Material>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _RotationEffect>)>>>, _FrameLayout>, AccessibilityAttachmentModifier>, _ContentShapeKindModifier<Circle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Button<ZStack<TupleView<(_ShapeView<Circle, Material>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _RotationEffect>)>>>, _FrameLayout>, AccessibilityAttachmentModifier>, _ContentShapeKindModifier<Circle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Button<ZStack<TupleView<(_ShapeView<Circle, Material>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _RotationEffect>)>>>, _FrameLayout>, AccessibilityAttachmentModifier>, _ContentShapeKindModifier<Circle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6ButtonVyAA6ZStackVyAA9TupleViewVyAA06_ShapeH0VyAA6CircleVAA8MaterialVG_ACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGATyAA4FontVSgGGAA15_RotationEffectVGtGGGAA12_FrameLayoutVGAA023AccessibilityAttachmentP0VGAA01_di4KindP0VyAMGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<ZStack<TupleView<(_ShapeView<Circle, Material>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _RotationEffect>)>>>, _FrameLayout>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ZStack<TupleView<(_ShapeView<Circle, Material>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _RotationEffect>)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type _ContentShapeKindModifier<Circle> and conformance _ContentShapeKindModifier<A>, &_s7SwiftUI25_ContentShapeKindModifierVyAA6CircleVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Button<ZStack<TupleView<(_ShapeView<Circle, Material>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _RotationEffect>)>>>, _FrameLayout>, AccessibilityAttachmentModifier>, _ContentShapeKindModifier<Circle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<ZStack<TupleView<(_ShapeView<Circle, Material>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _RotationEffect>)>>>, _FrameLayout>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<ZStack<TupleView<(_ShapeView<Circle, Material>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _RotationEffect>)>>>, _FrameLayout>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<ZStack<TupleView<(_ShapeView<Circle, Material>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _RotationEffect>)>>>, _FrameLayout>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA6ZStackVyAA9TupleViewVyAA06_ShapeH0VyAA6CircleVAA8MaterialVG_ACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGATyAA4FontVSgGGAA15_RotationEffectVGtGGGAA12_FrameLayoutVGAA023AccessibilityAttachmentP0VGMd);
    lazy protocol witness table accessor for type ModifiedContent<Button<ZStack<TupleView<(_ShapeView<Circle, Material>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _RotationEffect>)>>>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    _s9WorkoutUI20SessionControlsStateCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<ZStack<TupleView<(_ShapeView<Circle, Material>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _RotationEffect>)>>>, _FrameLayout>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t _s9WorkoutUI20SessionControlsStateCAC11Observation10ObservableAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t lazy protocol witness table accessor for type ZStack<TupleView<(_ShapeView<Circle, Material>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _RotationEffect>)>> and conformance ZStack<A>(unint64_t *a1, uint64_t *a2)
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

uint64_t MoveRingDetailView.init(activityRing:isWheelchairUser:formattingManager:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for ActivityMoveRing();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = type metadata accessor for MoveRingDetailView();
  *(a4 + *(result + 20)) = a2;
  *(a4 + *(result + 24)) = a3;
  return result;
}

uint64_t type metadata accessor for MoveRingDetailView()
{
  result = type metadata singleton initialization cache for MoveRingDetailView;
  if (!type metadata singleton initialization cache for MoveRingDetailView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void MoveRingDetailView.body.getter(double *a1@<X8>)
{
  v2 = v1;
  v80 = a1;
  v3 = type metadata accessor for ActivityRing();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v79 - v8;
  ActivityMoveRing.ring.getter();
  ActivityRing.value.getter();
  v11 = v10;
  v79 = *(v4 + 8);
  v79(v9, v3);
  v12 = ActivityMoveRing.moveMode.getter();
  v14 = v13;
  v82 = v12;
  v83 = v13;
  v16 = v15 & 1;
  v84 = v15 & 1;
  v81 = 1;
  lazy protocol witness table accessor for type ActivityMoveMode and conformance ActivityMoveMode();
  lazy protocol witness table accessor for type ActivityMoveMode and conformance ActivityMoveMode();
  v17 = static PortableEnum<>.== infix(_:_:)();
  outlined consume of PortableEnum<ActivityMoveMode>(v12, v14, v16);
  if ((v17 & 1) == 0)
  {
    [*(v2 + *(type metadata accessor for MoveRingDetailView() + 24)) energyBurnedInUserUnitForCalories_];
    v11 = v18;
  }

  ActivityMoveRing.ring.getter();
  ActivityRing.goal.getter();
  v20 = v19;
  v79(v6, v3);
  v21 = ActivityMoveRing.moveMode.getter();
  v23 = v22;
  v82 = v21;
  v83 = v22;
  v25 = v24 & 1;
  v84 = v24 & 1;
  v81 = 1;
  v26 = static PortableEnum<>.== infix(_:_:)();
  outlined consume of PortableEnum<ActivityMoveMode>(v21, v23, v25);
  if ((v26 & 1) == 0)
  {
    [*(v2 + *(type metadata accessor for MoveRingDetailView() + 24)) energyBurnedInUserUnitForCalories_];
    v20 = v27;
  }

  v28 = *(v2 + *(type metadata accessor for MoveRingDetailView() + 20));
  KeyPath = swift_getKeyPath();
  LOBYTE(v82) = 0;
  v30 = objc_opt_self();
  v31 = [v30 currentDevice];
  v32 = specialized UIDevice.screenType.getter();

  v33 = dbl_20CB7B1F8[v32];
  v34 = objc_opt_self();
  v35 = [v34 mainScreen];
  [v35 scale];
  v37 = v36;

  v38 = [v34 mainScreen];
  [v38 nativeScale];
  v40 = v39;

  if (v37 != v40)
  {
    v41 = [v34 mainScreen];
    [v41 scale];
    v43 = v42;

    v44 = [v34 mainScreen];
    [v44 nativeScale];
    v46 = v45;

    v33 = v33 * (v43 / v46 * 0.95);
  }

  v47 = [v30 currentDevice];
  v48 = specialized UIDevice.screenType.getter();

  v49 = dbl_20CB7B250[v48];
  v50 = [v34 mainScreen];
  [v50 scale];
  v52 = v51;

  v53 = [v34 mainScreen];
  [v53 nativeScale];
  v55 = v54;

  if (v52 != v55)
  {
    v56 = [v34 mainScreen];
    [v56 scale];
    v58 = v57;

    v59 = [v34 mainScreen];
    [v59 nativeScale];
    v61 = v60;

    v49 = v49 * (v58 / v61 * 0.95);
  }

  v62 = [v30 currentDevice];
  v63 = specialized UIDevice.screenType.getter();

  v64 = dbl_20CB7B2A8[v63];
  v65 = [v34 mainScreen];
  [v65 scale];
  v67 = v66;

  v68 = [v34 mainScreen];
  [v68 nativeScale];
  v70 = v69;

  if (v67 != v70)
  {
    v71 = [v34 mainScreen];
    [v71 scale];
    v73 = v72;

    v74 = [v34 mainScreen];
    [v74 nativeScale];
    v76 = v75;

    v64 = v64 * (v73 / v76 * 0.95);
  }

  v77 = v82;
  v78 = v80;
  *v80 = 2;
  v78[1] = v11;
  v78[2] = v20;
  *(v78 + 24) = v28;
  *(v78 + 4) = KeyPath;
  *(v78 + 40) = v77;
  v78[6] = v33;
  v78[7] = v49;
  v78[8] = v64;
}

unint64_t lazy protocol witness table accessor for type ActivityMoveMode and conformance ActivityMoveMode()
{
  result = lazy protocol witness table cache variable for type ActivityMoveMode and conformance ActivityMoveMode;
  if (!lazy protocol witness table cache variable for type ActivityMoveMode and conformance ActivityMoveMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ActivityMoveMode and conformance ActivityMoveMode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ActivityMoveMode and conformance ActivityMoveMode;
  if (!lazy protocol witness table cache variable for type ActivityMoveMode and conformance ActivityMoveMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ActivityMoveMode and conformance ActivityMoveMode);
  }

  return result;
}

uint64_t outlined consume of PortableEnum<ActivityMoveMode>(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

unint64_t type metadata completion function for MoveRingDetailView()
{
  result = type metadata accessor for ActivityMoveRing();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for FIUIFormattingManager();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t EmbeddedGoalConfigurationView.init(goalConfiguration:formattingManager:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t EmbeddedGoalConfigurationView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v31 = a1;
  v32 = type metadata accessor for AccessibilityChildBehavior();
  v3 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB0023AlignedLeadingAccessoryD4ViewVyACyACyAA5ImageVAA24_ForegroundStyleModifierVyAA09TintShapeL0VGGAA022_EnvironmentKeyWritingM0VyAA03AnyoL0VSgGGACyAA6VStackVyAA05TupleI0VyAA4TextV_A_tGGAPyAA0V9AlignmentOGGGAPyAA012ButtonBorderO0VGGMd);
  MEMORY[0x28223BE20](v6);
  v8 = (&v30 - v7);
  v9 = *v1;
  v10 = v2[1];
  v11 = static VerticalAlignment.center.getter();
  WorkoutConfiguration.displaySymbolName.getter();
  v12 = Image.init(_internalSystemName:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA24_ForegroundStyleModifierVyAA09TintShapeG0VGGMd);
  TintShapeStyle.init()();
  *v8 = v12;
  WorkoutConfiguration.displayColor.getter();
  v13 = Color.init(uiColor:)();
  KeyPath = swift_getKeyPath();
  *&v35[0] = v13;
  v15 = AnyShapeStyle.init<A>(_:)();
  v16 = (v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA24_ForegroundStyleModifierVyAA09TintShapeG0VGGAA022_EnvironmentKeyWritingH0VyAA03AnyjG0VSgGGMd) + 36));
  *v16 = KeyPath;
  v16[1] = v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI34AlignedLeadingAccessoryContentViewVy05SwiftB008ModifiedF0VyAFyAD5ImageVAD24_ForegroundStyleModifierVyAD09TintShapeL0VGGAD022_EnvironmentKeyWritingM0VyAD03AnyoL0VSgGGAFyAD6VStackVyAD05TupleG0VyAD4TextV_A_tGGAPyAD0V9AlignmentOGGGMd);
  v18 = v8 + v17[13];
  v19 = static HorizontalAlignment.leading.getter();
  v34 = 1;
  closure #1 in closure #2 in EmbeddedGoalConfigurationView.body.getter(v9, v10, v35);
  *&v33[7] = v35[0];
  *&v33[23] = v35[1];
  *&v33[39] = v35[2];
  *&v33[55] = v35[3];
  LOBYTE(v9) = v34;
  v20 = swift_getKeyPath();
  v21 = *v33;
  *(v18 + 33) = *&v33[16];
  v22 = *&v33[48];
  *(v18 + 49) = *&v33[32];
  *(v18 + 65) = v22;
  *v18 = v19;
  *(v18 + 1) = 0;
  v18[16] = v9;
  v23 = *&v33[63];
  *(v18 + 17) = v21;
  *(v18 + 10) = v23;
  *(v18 + 11) = v20;
  v18[96] = 0;
  *(v8 + v17[14]) = 0x4022000000000000;
  *(v8 + v17[15]) = v11;
  v24 = (v8 + *(v6 + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA17ButtonBorderShapeVGMd);
  static ButtonBorderShape.roundedRectangle.getter();
  *v24 = swift_getKeyPath();
  static AccessibilityChildBehavior.combine.getter();
  lazy protocol witness table accessor for type ModifiedContent<AlignedLeadingAccessoryContentView<ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, ModifiedContent<VStack<TupleView<(Text, Text)>>, _EnvironmentKeyWritingModifier<TextAlignment>>>, _EnvironmentKeyWritingModifier<ButtonBorderShape>> and conformance <> ModifiedContent<A, B>();
  v25 = v31;
  View.accessibilityElement(children:)();
  (*(v3 + 8))(v5, v32);
  outlined destroy of ModifiedContent<AlignedLeadingAccessoryContentView<ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, ModifiedContent<VStack<TupleView<(Text, Text)>>, _EnvironmentKeyWritingModifier<TextAlignment>>>, _EnvironmentKeyWritingModifier<ButtonBorderShape>>(v8);
  v26 = static Color.white.getter();
  v27 = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACy07WorkoutB0023AlignedLeadingAccessorydE0VyACyACyAA5ImageVAA24_ForegroundStyleModifierVyAA09TintShapeR0VGGAA022_EnvironmentKeyWritingS0VyAA03AnyuR0VSgGGACyAA6VStackVyAA05TupleE0VyAA4TextV_A5_tGGAVyAA13TextAlignmentOGGGAVyAA012ButtonBorderU0VGG_Qo_AVyAA5ColorVSgGGMd);
  v29 = (v25 + *(result + 36));
  *v29 = v27;
  v29[1] = v26;
  return result;
}

uint64_t closure #1 in closure #2 in EmbeddedGoalConfigurationView.body.getter@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  if (dispatch thunk of WorkoutConfiguration.externalProvider.getter())
  {

    v6 = dispatch thunk of WorkoutConfiguration.activityType.getter();
    v7 = [v6 localizedName];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v7 = a1;
    v8 = GoalWorkoutConfiguration.goal.getter();
    v9 = [v8 goalTypeIdentifier];

    _HKWorkoutGoalType.displayNameShort(formattingManager:)(a2, v9);
  }

  lazy protocol witness table accessor for type String and conformance String();
  v10 = Text.init<A>(_:)();
  v12 = v11;
  v14 = v13;
  static Font.body.getter();
  static Font.Weight.medium.getter();
  Font.weight(_:)();

  v15 = Text.font(_:)();
  v39 = v16;
  v40 = v15;
  v38 = v17;
  v41 = v18;

  outlined consume of Text.Storage(v10, v12, v14 & 1);

  v19 = GoalWorkoutConfiguration.goal.getter();
  v20 = dispatch thunk of WorkoutConfiguration.activityType.getter();
  FIUIDistanceTypeForActivityType();

  NLSessionActivityGoal.displayString(formattingManager:distanceType:localizedOpenString:)();
  v21 = Text.init<A>(_:)();
  v23 = v22;
  v25 = v24;
  static Color.secondary.getter();
  v26 = Text.foregroundColor(_:)();
  v28 = v27;
  v30 = v29;

  outlined consume of Text.Storage(v21, v23, v25 & 1);

  static Font.body.getter();
  static Font.Weight.light.getter();
  Font.weight(_:)();

  Font.lowercaseSmallCaps()();

  v31 = Text.font(_:)();
  v33 = v32;
  LOBYTE(v23) = v34;
  v36 = v35;

  outlined consume of Text.Storage(v26, v28, v30 & 1);

  *a3 = v40;
  *(a3 + 8) = v39;
  *(a3 + 16) = v38 & 1;
  *(a3 + 24) = v41;
  *(a3 + 32) = v31;
  *(a3 + 40) = v33;
  *(a3 + 48) = v23 & 1;
  *(a3 + 56) = v36;
  outlined copy of Text.Storage(v40, v39, v38 & 1);

  outlined copy of Text.Storage(v31, v33, v23 & 1);

  outlined consume of Text.Storage(v31, v33, v23 & 1);

  outlined consume of Text.Storage(v40, v39, v38 & 1);
}

uint64_t getEnumTagSinglePayload for EmbeddedGoalConfigurationView(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for EmbeddedGoalConfigurationView(uint64_t result, int a2, int a3)
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

uint64_t TrainingLoadOnboardingCore.init(imageName:title:message:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  *a6 = a1;
  *(a6 + 1) = a2;
  *(a6 + 2) = a3;
  *(a6 + 3) = a4;
  v8 = *(type metadata accessor for TrainingLoadOnboardingCore() + 24);
  v9 = type metadata accessor for AttributedString();
  v10 = *(*(v9 - 8) + 32);

  return v10(&a6[v8], a5, v9);
}

uint64_t type metadata accessor for TrainingLoadOnboardingCore()
{
  result = type metadata singleton initialization cache for TrainingLoadOnboardingCore;
  if (!type metadata singleton initialization cache for TrainingLoadOnboardingCore)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TrainingLoadOnboardingCore.imageName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t TrainingLoadOnboardingCore.title.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t TrainingLoadOnboardingCore.message.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TrainingLoadOnboardingCore() + 24);
  v4 = type metadata accessor for AttributedString();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TrainingLoadOnboardingCore.body.getter@<X0>(uint64_t a1@<X8>)
{
  v48 = a1;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5GroupVyAA9TupleViewVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGGAA14_PaddingLayoutVGAA023AccessibilityAttachmentL0VG_AOtGGAQGMd);
  MEMORY[0x28223BE20](v46);
  v47 = &v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v43 - v4;
  v6 = type metadata accessor for Image.ResizingMode();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAA05_FlexiH0VGAA08_PaddingH0VGAPGAA31AccessibilityAttachmentModifierVGMd);
  MEMORY[0x28223BE20](v10 - 8);
  v45 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v43 = &v43 - v13;
  v44 = v1;
  v14 = one-time initialization token for WorkoutUIBundle;

  if (v14 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v15 = WorkoutUIBundle.super.isa;
  Image.init(_:bundle:)();
  (*(v7 + 104))(v9, *MEMORY[0x277CE0FE0], v6);
  v16 = Image.resizable(capInsets:resizingMode:)();

  (*(v7 + 8))(v9, v6);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v59 = 1;
  *&v58[6] = v62;
  *&v58[22] = v63;
  *&v58[38] = v64;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v17 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v60 = 0;
  v26 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  *(&v49[2] + 2) = *v58;
  *(&v49[4] + 2) = *&v58[16];
  *(&v49[6] + 2) = *&v58[32];
  *&v49[15] = v53;
  *&v49[17] = v54;
  *&v49[19] = v55;
  *&v49[21] = v56;
  *&v49[9] = v50;
  *&v49[11] = v51;
  v61 = 0;
  v49[0] = v16;
  v49[1] = 0;
  LOWORD(v49[2]) = 1;
  v49[8] = *&v58[46];
  *&v49[13] = v52;
  LOBYTE(v49[23]) = v17;
  v49[24] = v19;
  v49[25] = v21;
  v49[26] = v23;
  v49[27] = v25;
  LOBYTE(v49[28]) = 0;
  LOBYTE(v49[29]) = v26;
  v49[30] = v27;
  v49[31] = v28;
  v49[32] = v29;
  v49[33] = v30;
  LOBYTE(v49[34]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAA05_FlexiH0VGAA08_PaddingH0VGAPGMd);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _FlexFrameLayout>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _FlexFrameLayout>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAA05_FlexiH0VGAA08_PaddingH0VGAPGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAA05_FlexiH0VGAA08_PaddingH0VGAPGMR, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _FlexFrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  v31 = v43;
  View.accessibilityHidden(_:)();
  memcpy(v57, v49, 0x111uLL);
  outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _FlexFrameLayout>, _PaddingLayout>, _PaddingLayout>(v57, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAA05_FlexiH0VGAA08_PaddingH0VGAPGMd);
  closure #1 in TrainingLoadOnboardingCore.body.getter(v44, v5);
  v32 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v33 = v45;
  v34 = &v5[*(v46 + 36)];
  *v34 = v32;
  *(v34 + 1) = v35;
  *(v34 + 2) = v36;
  *(v34 + 3) = v37;
  *(v34 + 4) = v38;
  v34[40] = 0;
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _FlexFrameLayout>, _PaddingLayout>, _PaddingLayout>, AccessibilityAttachmentModifier>(v31, v33, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAA05_FlexiH0VGAA08_PaddingH0VGAPGAA31AccessibilityAttachmentModifierVGMd);
  v39 = v47;
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _FlexFrameLayout>, _PaddingLayout>, _PaddingLayout>, AccessibilityAttachmentModifier>(v5, v47, &_s7SwiftUI15ModifiedContentVyAA5GroupVyAA9TupleViewVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGGAA14_PaddingLayoutVGAA023AccessibilityAttachmentL0VG_AOtGGAQGMd);
  v40 = v48;
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _FlexFrameLayout>, _PaddingLayout>, _PaddingLayout>, AccessibilityAttachmentModifier>(v33, v48, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAA05_FlexiH0VGAA08_PaddingH0VGAPGAA31AccessibilityAttachmentModifierVGMd);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAA05_FlexiH0VGAA08_PaddingH0VGAPGAA31AccessibilityAttachmentModifierVG_ACyAA5GroupVyAA9TupleViewVyACyACyACyAA4TextVAA022_EnvironmentKeyWritingN0VyAA0R9AlignmentOGGAPGATG_A5_tGGAPGtMd);
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _FlexFrameLayout>, _PaddingLayout>, _PaddingLayout>, AccessibilityAttachmentModifier>(v39, v40 + *(v41 + 48), &_s7SwiftUI15ModifiedContentVyAA5GroupVyAA9TupleViewVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGGAA14_PaddingLayoutVGAA023AccessibilityAttachmentL0VG_AOtGGAQGMd);
  outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _FlexFrameLayout>, _PaddingLayout>, _PaddingLayout>(v5, &_s7SwiftUI15ModifiedContentVyAA5GroupVyAA9TupleViewVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGGAA14_PaddingLayoutVGAA023AccessibilityAttachmentL0VG_AOtGGAQGMd);
  outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _FlexFrameLayout>, _PaddingLayout>, _PaddingLayout>(v31, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAA05_FlexiH0VGAA08_PaddingH0VGAPGAA31AccessibilityAttachmentModifierVGMd);
  outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _FlexFrameLayout>, _PaddingLayout>, _PaddingLayout>(v39, &_s7SwiftUI15ModifiedContentVyAA5GroupVyAA9TupleViewVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGGAA14_PaddingLayoutVGAA023AccessibilityAttachmentL0VG_AOtGGAQGMd);
  return outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _FlexFrameLayout>, _PaddingLayout>, _PaddingLayout>(v33, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAA05_FlexiH0VGAA08_PaddingH0VGAPGAA31AccessibilityAttachmentModifierVGMd);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _FlexFrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _FlexFrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _FlexFrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAA05_FlexiH0VGAA08_PaddingH0VGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _FlexFrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAA05_FlexiH0VGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t closure #1 in TrainingLoadOnboardingCore.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v83 = a2;
  v81 = type metadata accessor for AttributedString();
  v80 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v79 = &v68 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for AccessibilityTraits();
  v77 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v70 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Font.Leading();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA14_PaddingLayoutVGAA023AccessibilityAttachmentI0VGMd);
  MEMORY[0x28223BE20](v9 - 8);
  v82 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v84 = &v68 - v12;
  v76 = a1;
  v13 = *(a1 + 16);
  v14 = *(a1 + 24);
  *&v92[0] = v13;
  *(&v92[0] + 1) = v14;
  lazy protocol witness table accessor for type String and conformance String();

  v15 = Text.init<A>(_:)();
  v17 = v16;
  v19 = v18;
  static Font.largeTitle.getter();
  v75 = *MEMORY[0x277CE0A10];
  v20 = *(v6 + 104);
  v73 = v6 + 104;
  v74 = v20;
  v69 = v5;
  v20(v8);
  Font.leading(_:)();

  v21 = *(v6 + 8);
  v71 = v6 + 8;
  v72 = v21;
  v21(v8, v5);
  v22 = Text.font(_:)();
  v24 = v23;
  v26 = v25;

  outlined consume of Text.Storage(v15, v17, v19 & 1);

  v27 = Text.bold()();
  v29 = v28;
  LOBYTE(v17) = v30;
  outlined consume of Text.Storage(v22, v24, v26 & 1);

  LODWORD(v92[0]) = static HierarchicalShapeStyle.primary.getter();
  v31 = Text.foregroundStyle<A>(_:)();
  v33 = v32;
  LOBYTE(v24) = v34;
  v36 = v35;
  outlined consume of Text.Storage(v27, v29, v17 & 1);

  KeyPath = swift_getKeyPath();
  LOBYTE(v29) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v91 = v24 & 1;
  v90 = 0;
  *&v85 = v31;
  *(&v85 + 1) = v33;
  LOBYTE(v86) = v24 & 1;
  *(&v86 + 1) = v36;
  *&v87 = KeyPath;
  BYTE8(v87) = 1;
  LOBYTE(v88) = v29;
  *(&v88 + 1) = v38;
  *v89 = v39;
  *&v89[8] = v40;
  *&v89[16] = v41;
  v89[24] = 0;
  v42 = v70;
  static AccessibilityTraits.isHeader.getter();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA14_PaddingLayoutVGMd);
  v44 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _FlexFrameLayout>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA14_PaddingLayoutVGMR, lazy protocol witness table accessor for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>);
  MEMORY[0x20F30A9C0](v42, v43, v44);
  (*(v77 + 8))(v42, v78);
  v92[2] = v87;
  v92[3] = v88;
  *v93 = *v89;
  *&v93[9] = *&v89[9];
  v92[0] = v85;
  v92[1] = v86;
  outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _FlexFrameLayout>, _PaddingLayout>, _PaddingLayout>(v92, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA14_PaddingLayoutVGMd);
  OnboardingCore = type metadata accessor for TrainingLoadOnboardingCore();
  (*(v80 + 16))(v79, v76 + *(OnboardingCore + 24), v81);
  v46 = Text.init(_:)();
  v48 = v47;
  LOBYTE(v43) = v49;
  static Font.body.getter();
  v50 = v69;
  v74(v8, v75, v69);
  Font.leading(_:)();

  v72(v8, v50);
  v51 = Text.font(_:)();
  v53 = v52;
  LOBYTE(v36) = v54;

  outlined consume of Text.Storage(v46, v48, v43 & 1);

  v55 = [objc_opt_self() secondaryLabelColor];
  *&v85 = Color.init(uiColor:)();
  v56 = Text.foregroundStyle<A>(_:)();
  v58 = v57;
  LOBYTE(v42) = v59;
  v61 = v60;
  outlined consume of Text.Storage(v51, v53, v36 & 1);

  v62 = swift_getKeyPath();
  v63 = v84;
  v64 = v82;
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _FlexFrameLayout>, _PaddingLayout>, _PaddingLayout>, AccessibilityAttachmentModifier>(v84, v82, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA14_PaddingLayoutVGAA023AccessibilityAttachmentI0VGMd);
  v65 = v83;
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _FlexFrameLayout>, _PaddingLayout>, _PaddingLayout>, AccessibilityAttachmentModifier>(v64, v83, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA14_PaddingLayoutVGAA023AccessibilityAttachmentI0VGMd);
  v66 = v65 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA14_PaddingLayoutVGAA023AccessibilityAttachmentI0VG_AKtMd) + 48);
  *v66 = v56;
  *(v66 + 8) = v58;
  *(v66 + 16) = v42 & 1;
  *(v66 + 24) = v61;
  *(v66 + 32) = v62;
  *(v66 + 40) = 1;
  outlined copy of Text.Storage(v56, v58, v42 & 1);

  outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _FlexFrameLayout>, _PaddingLayout>, _PaddingLayout>(v63, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA14_PaddingLayoutVGAA023AccessibilityAttachmentI0VGMd);
  outlined consume of Text.Storage(v56, v58, v42 & 1);

  return outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _FlexFrameLayout>, _PaddingLayout>, _PaddingLayout>(v64, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA14_PaddingLayoutVGAA023AccessibilityAttachmentI0VGMd);
}

uint64_t type metadata completion function for TrainingLoadOnboardingCore()
{
  result = type metadata accessor for AttributedString();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _FlexFrameLayout>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _FlexFrameLayout>, _PaddingLayout>, _PaddingLayout>, AccessibilityAttachmentModifier>, ModifiedContent<Group<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>, AccessibilityAttachmentModifier>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>>, _PaddingLayout>)> and conformance TupleView<A>(unint64_t *a1, uint64_t *a2)
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

uint64_t outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _FlexFrameLayout>, _PaddingLayout>, _PaddingLayout>, AccessibilityAttachmentModifier>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _FlexFrameLayout>, _PaddingLayout>, _PaddingLayout>(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for WorkoutDisclaimerSheet()
{
  result = type metadata singleton initialization cache for WorkoutDisclaimerSheet;
  if (!type metadata singleton initialization cache for WorkoutDisclaimerSheet)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for WorkoutDisclaimerSheet()
{
  type metadata accessor for Binding<FIUIWorkoutActivityType?>(319, &lazy cache variable for type metadata for Binding<FIUIWorkoutActivityType?>, &_sSo23FIUIWorkoutActivityTypeCSgMd, &_sSo23FIUIWorkoutActivityTypeCSgMR, MEMORY[0x277CE11F8]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for String?();
    if (v1 <= 0x3F)
    {
      type metadata accessor for WOCompoundActivityTypesProviding();
      if (v2 <= 0x3F)
      {
        type metadata accessor for Binding<FIUIWorkoutActivityType?>(319, &lazy cache variable for type metadata for (())?, &_syycMd, &_syycMR, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          type metadata accessor for Environment<DismissAction>();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t type metadata accessor for WOCompoundActivityTypesProviding()
{
  result = lazy cache variable for type metadata for WOCompoundActivityTypesProviding;
  if (!lazy cache variable for type metadata for WOCompoundActivityTypesProviding)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for WOCompoundActivityTypesProviding);
  }

  return result;
}

void type metadata accessor for Binding<FIUIWorkoutActivityType?>(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t WorkoutDisclaimerSheet.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v16[1] = a2;
  v16[2] = a1;
  v4 = type metadata accessor for WorkoutDisclaimerSheet();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  outlined init with copy of WorkoutDisclaimerSheet(v2, v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for MainActor();
  v7 = static MainActor.shared.getter();
  v8 = *(v5 + 80);
  v9 = (v8 + 32) & ~v8;
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  *(v10 + 16) = v7;
  *(v10 + 24) = v11;
  outlined init with take of WorkoutDisclaimerSheet(v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  outlined init with copy of WorkoutDisclaimerSheet(v2, v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = static MainActor.shared.getter();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = v11;
  outlined init with take of WorkoutDisclaimerSheet(v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v9);
  Binding.init(get:set:)();
  outlined init with copy of WorkoutDisclaimerSheet(v3, v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = swift_allocObject();
  outlined init with take of WorkoutDisclaimerSheet(v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + ((v8 + 16) & ~v8));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB00F15DisclaimerSheetVGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15NavigationStackVyAA0C4PathVAA4ViewPAAE7toolbar7contentQrqd__yXE_tAA14ToolbarContentRd__lFQOy07WorkoutB00k10DisclaimerF0VyAA5LabelVyAA4TextVSgAA08ModifiedJ0VyAA5ImageVAK18CircleActivityIcon33_571AE33074DF11E2A7DFE68C4E60975FLLVGSgGAqA6ButtonVyAQGG_AA0iJ7BuilderV10buildBlockyQrxAaJRzlFZQOy_AA0I4ItemVyytA2_yAA013DefaultButtonM0VGGQo_Qo_GMd);
  lazy protocol witness table accessor for type _ViewModifier_Content<WorkoutDisclaimerSheet> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<WorkoutDisclaimerSheet> and conformance _ViewModifier_Content<A>, &_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB00F15DisclaimerSheetVGMd);
  lazy protocol witness table accessor for type _ViewModifier_Content<WorkoutDisclaimerSheet> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0> and conformance NavigationStack<A, B>, &_s7SwiftUI15NavigationStackVyAA0C4PathVAA4ViewPAAE7toolbar7contentQrqd__yXE_tAA14ToolbarContentRd__lFQOy07WorkoutB00k10DisclaimerF0VyAA5LabelVyAA4TextVSgAA08ModifiedJ0VyAA5ImageVAK18CircleActivityIcon33_571AE33074DF11E2A7DFE68C4E60975FLLVGSgGAqA6ButtonVyAQGG_AA0iJ7BuilderV10buildBlockyQrxAaJRzlFZQOy_AA0I4ItemVyytA2_yAA013DefaultButtonM0VGGQo_Qo_GMd);
  View.sheet<A>(isPresented:onDismiss:content:)();
}

void closure #1 in WorkoutDisclaimerSheet.body(content:)(__int128 *a1@<X2>, BOOL *a2@<X8>)
{
  v3 = *(a1 + 2);
  v7 = *a1;
  v8 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySo23FIUIWorkoutActivityTypeCSgGMd);
  MEMORY[0x20F30B100](&v6, v4);
  v5 = v6;
  if (v6)
  {
  }

  *a2 = v5 != 0;
}

_BYTE *closure #2 in WorkoutDisclaimerSheet.body(content:)(_BYTE *result)
{
  if ((*result & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySo23FIUIWorkoutActivityTypeCSgGMd);
    return Binding.wrappedValue.setter();
  }

  return result;
}

uint64_t closure #3 in WorkoutDisclaimerSheet.body(content:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE7toolbar7contentQrqd__yXE_tAA14ToolbarContentRd__lFQOy07WorkoutB00h10DisclaimerC0VyAA5LabelVyAA4TextVSgAA08ModifiedG0VyAA5ImageVAG18CircleActivityIcon33_571AE33074DF11E2A7DFE68C4E60975FLLVGSgGAmA6ButtonVyAMGG_AA0fG7BuilderV10buildBlockyQrxAaFRzlFZQOy_AA0F4ItemVyytAZyAA07DefaultxJ0VGGQo_Qo_Md);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s9WorkoutUI0A14DisclaimerViewVy05SwiftB05LabelVyAD4TextVSgAD15ModifiedContentVyAD5ImageVAA18CircleActivityIcon33_571AE33074DF11E2A7DFE68C4E60975FLLVGSgGAhD6ButtonVyAHGGMd);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA6ButtonVyAA07DefaultI5LabelVGGQo_Md);
  lazy protocol witness table accessor for type _ViewModifier_Content<WorkoutDisclaimerSheet> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type WorkoutDisclaimerView<Label<Text?, ModifiedContent<Image, CircleActivityIcon>?>, Text, Button<Text>> and conformance WorkoutDisclaimerView<A, B, C>, &_s9WorkoutUI0A14DisclaimerViewVy05SwiftB05LabelVyAD4TextVSgAD15ModifiedContentVyAD5ImageVAA18CircleActivityIcon33_571AE33074DF11E2A7DFE68C4E60975FLLVGSgGAhD6ButtonVyAHGGMd);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI11ToolbarItemVyytAA6ButtonVyAA07DefaultE5LabelVGGMd);
  lazy protocol witness table accessor for type _ViewModifier_Content<WorkoutDisclaimerSheet> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type ToolbarItem<(), Button<DefaultButtonLabel>> and conformance ToolbarItem<A, B>, &_s7SwiftUI11ToolbarItemVyytAA6ButtonVyAA07DefaultE5LabelVGGMd);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return NavigationStack.init<>(root:)();
}

uint64_t closure #1 in closure #3 in WorkoutDisclaimerSheet.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v3 = type metadata accessor for WorkoutDisclaimerSheet();
  v19 = *(v3 - 8);
  v4 = *(v19 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI0A14DisclaimerViewVy05SwiftB05LabelVyAD4TextVSgAD15ModifiedContentVyAD5ImageVAA18CircleActivityIcon33_571AE33074DF11E2A7DFE68C4E60975FLLVGSgGAhD6ButtonVyAHGGMd);
  MEMORY[0x28223BE20](v5);
  v7 = v18 - v6;
  v23 = a1;
  v22 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4TextVSgMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageV07WorkoutB018CircleActivityIcon33_571AE33074DF11E2A7DFE68C4E60975FLLVGSgMd);
  lazy protocol witness table accessor for type Text? and conformance <A> A?();
  lazy protocol witness table accessor for type ModifiedContent<Image, CircleActivityIcon>? and conformance <A> A?();
  Label.init(title:icon:)();
  v18[1] = v5;
  v8 = &v7[*(v5 + 68)];
  v9 = *(a1 + 48);
  v24 = *(a1 + 40);
  v25 = v9;
  lazy protocol witness table accessor for type String and conformance String();

  *v8 = Text.init<A>(_:)();
  *(v8 + 1) = v10;
  v8[16] = v11 & 1;
  *(v8 + 3) = v12;
  LocalizedStringKey.init(stringLiteral:)();
  outlined init with copy of WorkoutDisclaimerSheet(a1, v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*(v19 + 80) + 16) & ~*(v19 + 80);
  v14 = swift_allocObject();
  outlined init with take of WorkoutDisclaimerSheet(v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  Button<>.init(_:action:)();
  v21 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA6ButtonVyAA07DefaultI5LabelVGGQo_Md);
  lazy protocol witness table accessor for type _ViewModifier_Content<WorkoutDisclaimerSheet> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type WorkoutDisclaimerView<Label<Text?, ModifiedContent<Image, CircleActivityIcon>?>, Text, Button<Text>> and conformance WorkoutDisclaimerView<A, B, C>, &_s9WorkoutUI0A14DisclaimerViewVy05SwiftB05LabelVyAD4TextVSgAD15ModifiedContentVyAD5ImageVAA18CircleActivityIcon33_571AE33074DF11E2A7DFE68C4E60975FLLVGSgGAhD6ButtonVyAHGGMd);
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI11ToolbarItemVyytAA6ButtonVyAA07DefaultE5LabelVGGMd);
  v16 = lazy protocol witness table accessor for type _ViewModifier_Content<WorkoutDisclaimerSheet> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type ToolbarItem<(), Button<DefaultButtonLabel>> and conformance ToolbarItem<A, B>, &_s7SwiftUI11ToolbarItemVyytAA6ButtonVyAA07DefaultE5LabelVGGMd);
  v24 = v15;
  v25 = v16;
  swift_getOpaqueTypeConformance2();
  View.toolbar<A>(content:)();
  return outlined destroy of WorkoutDisclaimerView<Label<Text?, ModifiedContent<Image, CircleActivityIcon>?>, Text, Button<Text>>(v7);
}

uint64_t closure #1 in closure #1 in closure #1 in closure #3 in WorkoutDisclaimerSheet.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(a1 + 32))
  {
    lazy protocol witness table accessor for type String and conformance String();

    result = Text.init<A>(_:)();
    v7 = v6 & 1;
  }

  else
  {
    result = 0;
    v4 = 0;
    v7 = 0;
    v5 = 0;
  }

  *a2 = result;
  a2[1] = v4;
  a2[2] = v7;
  a2[3] = v5;
  return result;
}

uint64_t closure #2 in closure #1 in closure #1 in closure #3 in WorkoutDisclaimerSheet.body(content:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Image.ResizingMode();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageV07WorkoutB018CircleActivityIcon33_571AE33074DF11E2A7DFE68C4E60975FLLVGMd);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (&v20 - v10);
  v12 = *(a1 + 2);
  v23 = *a1;
  v24 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySo23FIUIWorkoutActivityTypeCSgGMd);
  MEMORY[0x20F30B100](&v22, v13);
  v14 = v22;
  if (!v22)
  {
    goto LABEL_5;
  }

  v15 = [v22 symbolName];
  if (!v15)
  {

LABEL_5:
    v18 = 1;
    return (*(v9 + 56))(a2, v18, 1, v8);
  }

  v21 = a2;
  v16 = v15;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  Image.init(systemName:)();
  (*(v5 + 104))(v7, *MEMORY[0x277CE0FE0], v4);
  v17 = Image.resizable(capInsets:resizingMode:)();
  (*(v5 + 8))(v7, v4);
  *&v23 = 0x404A000000000000;
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  ScaledMetric.init(wrappedValue:)();

  *v11 = v17;
  a2 = v21;
  outlined init with take of ModifiedContent<Image, CircleActivityIcon>(v11, v21);
  v18 = 0;
  return (*(v9 + 56))(a2, v18, 1, v8);
}

uint64_t closure #1 in closure #3 in closure #1 in closure #3 in WorkoutDisclaimerSheet.body(content:)(uint64_t *a1)
{
  v2 = type metadata accessor for DismissAction();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  v13 = *a1;
  v14 = v7;
  v15 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySo23FIUIWorkoutActivityTypeCSgGMd);
  MEMORY[0x20F30B100](&v12);
  v9 = v12;
  if (v12)
  {
    [a1[7] showActivityType_];
    FIUIWorkoutActivityType.setDisclaimerShown()();
    v10 = a1[8];
    if (v10)
    {
      v10();
    }

    type metadata accessor for WorkoutDisclaimerSheet();
    specialized Environment.wrappedValue.getter();
    DismissAction.callAsFunction()();

    (*(v3 + 8))(v5, v2);
  }

  v13 = v6;
  v14 = v7;
  v15 = v8;
  v12 = 0;
  return Binding.wrappedValue.setter();
}

uint64_t closure #4 in closure #1 in closure #3 in WorkoutDisclaimerSheet.body(content:)(uint64_t a1)
{
  v2 = type metadata accessor for ToolbarItemPlacement();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11ToolbarItemVyytAA6ButtonVyAA07DefaultE5LabelVGGMd);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  static ToolbarItemPlacement.cancellationAction.getter();
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA07DefaultC5LabelVGMd);
  lazy protocol witness table accessor for type _ViewModifier_Content<WorkoutDisclaimerSheet> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type Button<DefaultButtonLabel> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA07DefaultC5LabelVGMd);
  ToolbarItem<>.init(placement:content:)();
  v7 = lazy protocol witness table accessor for type _ViewModifier_Content<WorkoutDisclaimerSheet> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type ToolbarItem<(), Button<DefaultButtonLabel>> and conformance ToolbarItem<A, B>, &_s7SwiftUI11ToolbarItemVyytAA6ButtonVyAA07DefaultE5LabelVGGMd);
  MEMORY[0x20F3098F0](v6, v3, v7);
  return (*(v4 + 8))(v6, v3);
}

uint64_t closure #1 in closure #4 in closure #1 in closure #3 in WorkoutDisclaimerSheet.body(content:)(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutDisclaimerSheet();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = type metadata accessor for ButtonRole();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static ButtonRole.cancel.getter();
  outlined init with copy of WorkoutDisclaimerSheet(a1, &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  outlined init with take of WorkoutDisclaimerSheet(&v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  return MEMORY[0x20F30AF90](v7, partial apply for closure #1 in closure #1 in closure #4 in closure #1 in closure #3 in WorkoutDisclaimerSheet.body(content:), v9);
}

uint64_t closure #1 in closure #1 in closure #4 in closure #1 in closure #3 in WorkoutDisclaimerSheet.body(content:)(uint64_t a1)
{
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd);
  MEMORY[0x28223BE20](v6);
  v8 = &v16 - v7;
  v9 = type metadata accessor for DismissAction();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for WorkoutDisclaimerSheet();
  outlined init with copy of Environment<DismissAction>.Content(a1 + *(v13 + 36), v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v12, v8, v9);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v14 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
  }

  DismissAction.callAsFunction()();
  return (*(v10 + 8))(v12, v9);
}

uint64_t outlined init with copy of WorkoutDisclaimerSheet(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutDisclaimerSheet();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of WorkoutDisclaimerSheet(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutDisclaimerSheet();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void partial apply for closure #1 in WorkoutDisclaimerSheet.body(content:)(BOOL *a1@<X8>)
{
  v3 = *(type metadata accessor for WorkoutDisclaimerSheet() - 8);
  v4 = (v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)));

  closure #1 in WorkoutDisclaimerSheet.body(content:)(v4, a1);
}

uint64_t objectdestroyTm_58()
{
  v1 = type metadata accessor for WorkoutDisclaimerSheet();
  v2 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  if (*(v0 + v2 + 64))
  {
  }

  v3 = *(v1 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for DismissAction();
    (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

_BYTE *partial apply for closure #2 in WorkoutDisclaimerSheet.body(content:)(_BYTE *a1)
{
  type metadata accessor for WorkoutDisclaimerSheet();

  return closure #2 in WorkoutDisclaimerSheet.body(content:)(a1);
}

uint64_t partial apply for closure #3 in WorkoutDisclaimerSheet.body(content:)()
{
  type metadata accessor for WorkoutDisclaimerSheet();

  return closure #3 in WorkoutDisclaimerSheet.body(content:)();
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Image, CircleActivityIcon>? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Image, CircleActivityIcon>? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Image, CircleActivityIcon>? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA5ImageV07WorkoutB018CircleActivityIcon33_571AE33074DF11E2A7DFE68C4E60975FLLVGSgMd);
    lazy protocol witness table accessor for type ModifiedContent<Image, CircleActivityIcon> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Image, CircleActivityIcon>? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Image, CircleActivityIcon> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Image, CircleActivityIcon> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Image, CircleActivityIcon> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA5ImageV07WorkoutB018CircleActivityIcon33_571AE33074DF11E2A7DFE68C4E60975FLLVGMd);
    lazy protocol witness table accessor for type CircleActivityIcon and conformance CircleActivityIcon();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Image, CircleActivityIcon> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CircleActivityIcon and conformance CircleActivityIcon()
{
  result = lazy protocol witness table cache variable for type CircleActivityIcon and conformance CircleActivityIcon;
  if (!lazy protocol witness table cache variable for type CircleActivityIcon and conformance CircleActivityIcon)
  {
    type metadata accessor for CircleActivityIcon();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CircleActivityIcon and conformance CircleActivityIcon);
  }

  return result;
}

uint64_t outlined destroy of WorkoutDisclaimerView<Label<Text?, ModifiedContent<Image, CircleActivityIcon>?>, Text, Button<Text>>(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI0A14DisclaimerViewVy05SwiftB05LabelVyAD4TextVSgAD15ModifiedContentVyAD5ImageVAA18CircleActivityIcon33_571AE33074DF11E2A7DFE68C4E60975FLLVGSgGAhD6ButtonVyAHGGMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t lazy protocol witness table accessor for type _ViewModifier_Content<WorkoutDisclaimerSheet> and conformance _ViewModifier_Content<A>(unint64_t *a1, uint64_t *a2)
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

uint64_t objectdestroy_6Tm_0()
{
  v1 = type metadata accessor for WorkoutDisclaimerSheet();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  swift_unknownObjectRelease();
  if (*(v2 + 64))
  {
  }

  v3 = *(v1 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for DismissAction();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #3 in closure #1 in closure #3 in WorkoutDisclaimerSheet.body(content:)(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for WorkoutDisclaimerSheet() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t outlined init with take of ModifiedContent<Image, CircleActivityIcon>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageV07WorkoutB018CircleActivityIcon33_571AE33074DF11E2A7DFE68C4E60975FLLVGMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t NLSessionActivityGoal.platterColor.getter()
{
  if (NLSessionActivityGoal.isTimeAndDistanceGoal()())
  {
    v1 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithDisplayP3Red:0.458823529 green:0.898039216 blue:0.898039216 alpha:1.0];
    v2 = [v1 colorWithAlphaComponent_];

    return v2;
  }

  else
  {
    v4 = [v0 goalTypeIdentifier];

    return _HKWorkoutGoalType.platterColor.getter(v4);
  }
}

uint64_t _HKWorkoutGoalType.color.getter(uint64_t a1, SEL *a2)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      goto LABEL_10;
    }

    v3 = [objc_opt_self() keyColors];
    if (!v3)
    {
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    v4 = v3;
    a2 = [v3 *a2];

    if (a2)
    {
      return a2;
    }

    __break(1u);
  }

  if (a1 != 2)
  {
    goto LABEL_14;
  }

  v5 = [objc_opt_self() elapsedTimeColors];
  if (!v5)
  {
    goto LABEL_19;
  }

  v6 = v5;
  a2 = [v5 *a2];

  if (a2)
  {
    return a2;
  }

  __break(1u);
LABEL_10:
  if (a1 != 1)
  {
    goto LABEL_23;
  }

  v7 = [objc_opt_self() distanceColors];
  if (!v7)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v8 = v7;
  a2 = [v7 *a2];

  if (a2)
  {
    return a2;
  }

  __break(1u);
LABEL_14:
  if (a1 == 3)
  {
    v9 = [objc_opt_self() energyColors];
    if (v9)
    {
      v10 = v9;
      a2 = [v9 *a2];

      if (a2)
      {
        return a2;
      }

      goto LABEL_22;
    }

LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }

LABEL_23:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

id NLSessionActivityGoal.color.getter(uint64_t (*a1)(id), double a2, double a3, double a4)
{
  if (NLSessionActivityGoal.isTimeAndDistanceGoal()())
  {
    v8 = objc_allocWithZone(MEMORY[0x277D75348]);

    return [v8 initWithDisplayP3Red:a2 green:a3 blue:a4 alpha:1.0];
  }

  else
  {
    v10 = [v4 goalTypeIdentifier];

    return a1(v10);
  }
}

uint64_t _HKWorkoutGoalType.platterColor.getter(unint64_t a1)
{
  if (a1 >= 4)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v1 = dbl_20CB7B668[a1];
    v2 = _HKWorkoutGoalType.color.getter(a1);
    v3 = [v2 colorWithAlphaComponent_];

    return v3;
  }

  return result;
}

id _HKWorkoutGoalType.gradientStartingColor.getter(uint64_t a1)
{
  if (a1 <= 1)
  {
    if (!a1)
    {
      v1 = objc_allocWithZone(MEMORY[0x277D75348]);
      v2 = 0.0823529412;
      v3 = 0.109803922;
      v4 = 0x3F80101010101010;
LABEL_10:
      v5 = *&v4;
      goto LABEL_11;
    }

    if (a1 == 1)
    {
      v1 = objc_allocWithZone(MEMORY[0x277D75348]);
      v3 = 0.105882353;
      v5 = 0.141176471;
      v2 = 0.0;
      goto LABEL_11;
    }

LABEL_14:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  if (a1 != 2)
  {
    if (a1 == 3)
    {
      v1 = objc_allocWithZone(MEMORY[0x277D75348]);
      v2 = 0.290196078;
      v3 = 0.0196078431;
      v4 = 0x3FB8181818181818;
      goto LABEL_10;
    }

    goto LABEL_14;
  }

  v1 = objc_allocWithZone(MEMORY[0x277D75348]);
  v2 = 0.145098039;
  v3 = 0.133333333;
  v5 = 0.0196078431;
LABEL_11:

  return [v1 initWithDisplayP3Red:v2 green:v3 blue:v5 alpha:1.0];
}

id _HKWorkoutGoalType.gradientEndingColor.getter(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      v1 = objc_allocWithZone(MEMORY[0x277D75348]);
      v2 = 0.223529412;
      v3 = 0.2;
      v4 = 0x3FA0101010101010;
      goto LABEL_6;
    }

    if (a1 == 3)
    {
      v1 = objc_allocWithZone(MEMORY[0x277D75348]);
      v2 = 0.254901961;
      v3 = 0.0196078431;
      v5 = 0.0823529412;
      goto LABEL_11;
    }

LABEL_14:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  if (a1)
  {
    if (a1 == 1)
    {
      v1 = objc_allocWithZone(MEMORY[0x277D75348]);
      v3 = 0.17254902;
      v5 = 0.22745098;
      v2 = 0.0;
      goto LABEL_11;
    }

    goto LABEL_14;
  }

  v1 = objc_allocWithZone(MEMORY[0x277D75348]);
  v2 = 0.145098039;
  v3 = 0.196078431;
  v4 = 0x3FB1111111111111;
LABEL_6:
  v5 = *&v4;
LABEL_11:

  return [v1 initWithDisplayP3Red:v2 green:v3 blue:v5 alpha:1.0];
}

id one-time initialization function for allowedLapUnits()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_20CB61A40;
  v1 = objc_opt_self();
  *(v0 + 32) = [v1 yards];
  result = [v1 meters];
  *(v0 + 40) = result;
  static SwimmingDistancePickerViewModel.allowedLapUnits = v0;
  return result;
}

uint64_t SwimmingDistancePickerViewModel.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance SwimmingDistancePickerViewModel@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SwimmingDistancePickerViewModel();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v84 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v84;
    if (!*v84)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
      v8 = result;
    }

    v76 = (v8 + 16);
    v77 = *(v8 + 16);
    if (v77 >= 2)
    {
      while (*a3)
      {
        v78 = (v8 + 16 * v77);
        v79 = *v78;
        v80 = &v76[2 * v77];
        v81 = v80[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * *v78), (*a3 + 8 * *v80), (*a3 + 8 * v81), v5);
        if (v4)
        {
        }

        if (v81 < v79)
        {
          goto LABEL_114;
        }

        if (v77 - 2 >= *v76)
        {
          goto LABEL_115;
        }

        *v78 = v79;
        v78[1] = v81;
        v82 = *v76 - v77;
        if (*v76 < v77)
        {
          goto LABEL_116;
        }

        v77 = *v76 - 1;
        result = memmove(v80, v80 + 2, 16 * v82);
        *v76 = v77;
        if (v77 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v83 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = v14 >= v13;
        ++v12;
        v13 = v14;
        if ((((v10 < v11) ^ v15) & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = 8 * v7 - 8;
        v17 = 8 * v9;
        v18 = v7;
        v19 = v9;
        do
        {
          if (v19 != --v18)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v20 = *(v21 + v17);
            *(v21 + v17) = *(v21 + v16);
            *(v21 + v16) = v20;
          }

          ++v19;
          v16 -= 8;
          v17 += 8;
        }

        while (v19 < v18);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v30 = *(v8 + 24);
    v31 = v5 + 1;
    if (v5 >= v30 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v31;
    v32 = v8 + 32;
    v33 = (v8 + 32 + 16 * v5);
    *v33 = v9;
    v33[1] = v7;
    v85 = *v84;
    if (!*v84)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v31 - 1;
        if (v31 >= 4)
        {
          break;
        }

        if (v31 == 3)
        {
          v34 = *(v8 + 32);
          v35 = *(v8 + 40);
          v44 = __OFSUB__(v35, v34);
          v36 = v35 - v34;
          v37 = v44;
LABEL_57:
          if (v37)
          {
            goto LABEL_104;
          }

          v50 = (v8 + 16 * v31);
          v52 = *v50;
          v51 = v50[1];
          v53 = __OFSUB__(v51, v52);
          v54 = v51 - v52;
          v55 = v53;
          if (v53)
          {
            goto LABEL_106;
          }

          v56 = (v32 + 16 * v5);
          v58 = *v56;
          v57 = v56[1];
          v44 = __OFSUB__(v57, v58);
          v59 = v57 - v58;
          if (v44)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v54, v59))
          {
            goto LABEL_111;
          }

          if (v54 + v59 >= v36)
          {
            if (v36 < v59)
            {
              v5 = v31 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v31 < 2)
        {
          goto LABEL_112;
        }

        v60 = (v8 + 16 * v31);
        v62 = *v60;
        v61 = v60[1];
        v44 = __OFSUB__(v61, v62);
        v54 = v61 - v62;
        v55 = v44;
LABEL_72:
        if (v55)
        {
          goto LABEL_108;
        }

        v63 = (v32 + 16 * v5);
        v65 = *v63;
        v64 = v63[1];
        v44 = __OFSUB__(v64, v65);
        v66 = v64 - v65;
        if (v44)
        {
          goto LABEL_110;
        }

        if (v66 < v54)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v31)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v71 = (v32 + 16 * (v5 - 1));
        v72 = *v71;
        v73 = (v32 + 16 * v5);
        v74 = v73[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * *v71), (*a3 + 8 * *v73), (*a3 + 8 * v74), v85);
        if (v4)
        {
        }

        if (v74 < v72)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v71 = v72;
        v71[1] = v74;
        v75 = *(v8 + 16);
        if (v5 >= v75)
        {
          goto LABEL_101;
        }

        v31 = v75 - 1;
        result = memmove((v32 + 16 * v5), v73 + 2, 16 * (v75 - 1 - v5));
        *(v8 + 16) = v75 - 1;
        if (v75 <= 2)
        {
          goto LABEL_3;
        }
      }

      v38 = v32 + 16 * v31;
      v39 = *(v38 - 64);
      v40 = *(v38 - 56);
      v44 = __OFSUB__(v40, v39);
      v41 = v40 - v39;
      if (v44)
      {
        goto LABEL_102;
      }

      v43 = *(v38 - 48);
      v42 = *(v38 - 40);
      v44 = __OFSUB__(v42, v43);
      v36 = v42 - v43;
      v37 = v44;
      if (v44)
      {
        goto LABEL_103;
      }

      v45 = (v8 + 16 * v31);
      v47 = *v45;
      v46 = v45[1];
      v44 = __OFSUB__(v46, v47);
      v48 = v46 - v47;
      if (v44)
      {
        goto LABEL_105;
      }

      v44 = __OFADD__(v36, v48);
      v49 = v36 + v48;
      if (v44)
      {
        goto LABEL_107;
      }

      if (v49 >= v41)
      {
        v67 = (v32 + 16 * v5);
        v69 = *v67;
        v68 = v67[1];
        v44 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v44)
        {
          goto LABEL_113;
        }

        if (v36 < v70)
        {
          v5 = v31 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v83;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v22 = *a3;
  v23 = *a3 + 8 * v7 - 8;
  v24 = v9 - v7;
LABEL_30:
  v25 = *(v22 + 8 * v7);
  v26 = v24;
  v27 = v23;
  while (1)
  {
    v28 = *v27;
    if (v25 >= *v27)
    {
LABEL_29:
      ++v7;
      v23 += 8;
      --v24;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v22)
    {
      break;
    }

    *v27 = v25;
    v27[1] = v28;
    --v27;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

{
  v6 = v4;
  v7 = a3;
  v90 = result;
  v8 = a3[1];
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = MEMORY[0x277D84F90];
    while (1)
    {
      v11 = v9;
      v12 = v9 + 1;
      if (v12 >= v8)
      {
        v8 = v12;
      }

      else
      {
        v87 = v10;
        v13 = 16 * v11;
        v14 = v11;
        v15 = *v7 + 16 * v11 + 40;
        v5 = lazy protocol witness table accessor for type String and conformance String();
        result = StringProtocol.localizedStandardCompare<A>(_:)();
        v16 = result;
        v89 = v14;
        v17 = v14 + 2;
        while (v8 != v17)
        {
          result = StringProtocol.localizedStandardCompare<A>(_:)();
          ++v17;
          v15 += 16;
          if ((v16 == -1) == (result != -1))
          {
            v8 = v17 - 1;
            break;
          }
        }

        v11 = v89;
        if (v16 == -1)
        {
          if (v8 < v89)
          {
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
            return result;
          }

          if (v89 < v8)
          {
            v18 = 0;
            v19 = 16 * v8;
            v20 = v89;
            do
            {
              if (v20 != v8 + v18 - 1)
              {
                v25 = *a3;
                if (!*a3)
                {
                  goto LABEL_124;
                }

                v21 = (v25 + v13);
                v22 = v25 + v19;
                v23 = *v21;
                v24 = v21[1];
                *v21 = *(v22 - 16);
                *(v22 - 16) = v23;
                *(v22 - 8) = v24;
              }

              ++v20;
              --v18;
              v19 -= 16;
              v13 += 16;
            }

            while (v20 < v8 + v18);
          }
        }

        v7 = a3;
        v10 = v87;
      }

      v26 = v7[1];
      if (v8 < v26)
      {
        if (__OFSUB__(v8, v11))
        {
          goto LABEL_116;
        }

        if (v8 - v11 < a4)
        {
          if (__OFADD__(v11, a4))
          {
            goto LABEL_117;
          }

          if (v11 + a4 < v26)
          {
            v26 = v11 + a4;
          }

          if (v26 < v11)
          {
LABEL_118:
            __break(1u);
            goto LABEL_119;
          }

          if (v8 != v26)
          {
            v92 = v26;
            v88 = v10;
            v85 = v6;
            v27 = *v7;
            v5 = lazy protocol witness table accessor for type String and conformance String();
            v28 = (v27 + 16 * v8);
            v29 = v11 - v8;
            do
            {
              v30 = v29;
              v31 = v28;
              do
              {
                result = StringProtocol.localizedStandardCompare<A>(_:)();
                if (result != -1)
                {
                  break;
                }

                if (!v27)
                {
                  goto LABEL_121;
                }

                v32 = *v31;
                v33 = v31[1];
                *v31 = *(v31 - 1);
                *(v31 - 1) = v33;
                *(v31 - 2) = v32;
                v31 -= 2;
              }

              while (!__CFADD__(v30++, 1));
              ++v8;
              v28 += 2;
              --v29;
            }

            while (v8 != v92);
            v6 = v85;
            v7 = a3;
            v8 = v92;
            v10 = v88;
          }
        }
      }

      if (v8 < v11)
      {
        goto LABEL_115;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10);
        v10 = result;
      }

      v36 = *(v10 + 2);
      v35 = *(v10 + 3);
      v37 = v36 + 1;
      if (v36 >= v35 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1, v10);
        v10 = result;
      }

      *(v10 + 2) = v37;
      v38 = &v10[16 * v36];
      *(v38 + 4) = v11;
      *(v38 + 5) = v8;
      v5 = *v90;
      if (!*v90)
      {
        goto LABEL_125;
      }

      v93 = v8;
      if (v36)
      {
        while (1)
        {
          v39 = v37 - 1;
          if (v37 >= 4)
          {
            break;
          }

          if (v37 == 3)
          {
            v40 = *(v10 + 4);
            v41 = *(v10 + 5);
            v50 = __OFSUB__(v41, v40);
            v42 = v41 - v40;
            v43 = v50;
LABEL_57:
            if (v43)
            {
              goto LABEL_104;
            }

            v56 = &v10[16 * v37];
            v58 = *v56;
            v57 = *(v56 + 1);
            v59 = __OFSUB__(v57, v58);
            v60 = v57 - v58;
            v61 = v59;
            if (v59)
            {
              goto LABEL_107;
            }

            v62 = &v10[16 * v39 + 32];
            v64 = *v62;
            v63 = *(v62 + 1);
            v50 = __OFSUB__(v63, v64);
            v65 = v63 - v64;
            if (v50)
            {
              goto LABEL_110;
            }

            if (__OFADD__(v60, v65))
            {
              goto LABEL_111;
            }

            if (v60 + v65 >= v42)
            {
              if (v42 < v65)
              {
                v39 = v37 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          v66 = &v10[16 * v37];
          v68 = *v66;
          v67 = *(v66 + 1);
          v50 = __OFSUB__(v67, v68);
          v60 = v67 - v68;
          v61 = v50;
LABEL_71:
          if (v61)
          {
            goto LABEL_106;
          }

          v69 = &v10[16 * v39];
          v71 = *(v69 + 4);
          v70 = *(v69 + 5);
          v50 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v50)
          {
            goto LABEL_109;
          }

          if (v72 < v60)
          {
            goto LABEL_3;
          }

LABEL_78:
          v77 = v39 - 1;
          if (v39 - 1 >= v37)
          {
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
            goto LABEL_118;
          }

          if (!*v7)
          {
            goto LABEL_122;
          }

          v78 = *&v10[16 * v77 + 32];
          v79 = *&v10[16 * v39 + 40];
          specialized _merge<A>(low:mid:high:buffer:by:)((*v7 + 16 * v78), (*v7 + 16 * *&v10[16 * v39 + 32]), (*v7 + 16 * v79), v5);
          if (v6)
          {
          }

          if (v79 < v78)
          {
            goto LABEL_100;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
          }

          if (v77 >= *(v10 + 2))
          {
            goto LABEL_101;
          }

          v80 = &v10[16 * v77];
          *(v80 + 4) = v78;
          *(v80 + 5) = v79;
          result = specialized Array.remove(at:)(v39);
          v37 = *(v10 + 2);
          if (v37 <= 1)
          {
            goto LABEL_3;
          }
        }

        v44 = &v10[16 * v37 + 32];
        v45 = *(v44 - 64);
        v46 = *(v44 - 56);
        v50 = __OFSUB__(v46, v45);
        v47 = v46 - v45;
        if (v50)
        {
          goto LABEL_102;
        }

        v49 = *(v44 - 48);
        v48 = *(v44 - 40);
        v50 = __OFSUB__(v48, v49);
        v42 = v48 - v49;
        v43 = v50;
        if (v50)
        {
          goto LABEL_103;
        }

        v51 = &v10[16 * v37];
        v53 = *v51;
        v52 = *(v51 + 1);
        v50 = __OFSUB__(v52, v53);
        v54 = v52 - v53;
        if (v50)
        {
          goto LABEL_105;
        }

        v50 = __OFADD__(v42, v54);
        v55 = v42 + v54;
        if (v50)
        {
          goto LABEL_108;
        }

        if (v55 >= v47)
        {
          v73 = &v10[16 * v39 + 32];
          v75 = *v73;
          v74 = *(v73 + 1);
          v50 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v50)
          {
            goto LABEL_112;
          }

          if (v42 < v76)
          {
            v39 = v37 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_57;
      }

LABEL_3:
      v8 = v7[1];
      v9 = v93;
      if (v93 >= v8)
      {
        goto LABEL_88;
      }
    }
  }

  v10 = MEMORY[0x277D84F90];
LABEL_88:
  v5 = v10;
  v10 = *v90;
  if (!*v90)
  {
    goto LABEL_126;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_119:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    v5 = result;
  }

  v81 = *(v5 + 16);
  if (v81 >= 2)
  {
    while (*v7)
    {
      v82 = *(v5 + 16 * v81);
      v83 = *(v5 + 16 * (v81 - 1) + 40);
      specialized _merge<A>(low:mid:high:buffer:by:)((*v7 + 16 * v82), (*v7 + 16 * *(v5 + 16 * (v81 - 1) + 32)), (*v7 + 16 * v83), v10);
      if (v6)
      {
      }

      if (v83 < v82)
      {
        goto LABEL_113;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
      }

      if (v81 - 2 >= *(v5 + 16))
      {
        goto LABEL_114;
      }

      v84 = (v5 + 16 * v81);
      *v84 = v82;
      v84[1] = v83;
      result = specialized Array.remove(at:)(v81 - 1);
      v81 = *(v5 + 16);
      if (v81 <= 1)
      {
      }
    }

    goto LABEL_123;
  }
}

{
  v5 = v4;
  v6 = a3;
  v87 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_92:
    v7 = *v87;
    if (!*v87)
    {
      goto LABEL_130;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_124:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
      v9 = result;
    }

    v79 = *(v9 + 2);
    if (v79 >= 2)
    {
      while (1)
      {
        v80 = *v6;
        if (!*v6)
        {
          goto LABEL_128;
        }

        v6 = (v79 - 1);
        v81 = *&v9[16 * v79];
        v82 = *&v9[16 * v79 + 24];
        specialized _merge<A>(low:mid:high:buffer:by:)((v80 + 8 * v81), (v80 + 8 * *&v9[16 * v79 + 16]), (v80 + 8 * v82), v7);
        if (v5)
        {
        }

        if (v82 < v81)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
        }

        if (v79 - 2 >= *(v9 + 2))
        {
          goto LABEL_118;
        }

        v83 = &v9[16 * v79];
        *v83 = v81;
        *(v83 + 1) = v82;
        result = specialized Array.remove(at:)(v6);
        v79 = *(v9 + 2);
        v6 = a3;
        if (v79 <= 1)
        {
        }
      }
    }
  }

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = v8++;
    if (v8 < v7)
    {
      v85 = v5;
      v11 = 8 * v10;
      v12 = *v6 + 8 * v10 + 16;
      type metadata accessor for StandardWorkoutAddWorkoutRow();
      _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_18(&lazy protocol witness table cache variable for type StandardWorkoutAddWorkoutRow and conformance StandardWorkoutAddWorkoutRow, MEMORY[0x277D7D9A8]);
      result = dispatch thunk of static Comparable.< infix(_:_:)();
      v13 = v10;
      v14 = result;
      v15 = v13;
      v16 = (v13 + 2);
      while (v7 != v16)
      {
        result = dispatch thunk of static Comparable.< infix(_:_:)();
        ++v16;
        v12 += 8;
        if ((v14 & 1) != (result & 1))
        {
          v7 = (v16 - 1);
          break;
        }
      }

      v5 = v85;
      v6 = a3;
      if (v14)
      {
        if (v7 < v15)
        {
          goto LABEL_121;
        }

        v10 = v15;
        if (v15 < v7)
        {
          v17 = 8 * v7 - 8;
          v18 = v7;
          v19 = v15;
          do
          {
            if (v19 != --v18)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_127;
              }

              v20 = *(v21 + v11);
              *(v21 + v11) = *(v21 + v17);
              *(v21 + v17) = v20;
            }

            ++v19;
            v17 -= 8;
            v11 += 8;
          }

          while (v19 < v18);
        }

        v8 = v7;
      }

      else
      {
        v8 = v7;
        v10 = v15;
      }
    }

    v22 = v6[1];
    if (v8 < v22)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_120;
      }

      if (&v8[-v10] < a4)
      {
        break;
      }
    }

LABEL_40:
    if (v8 < v10)
    {
      goto LABEL_119;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v32 = v5;
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v34 = *(v9 + 2);
    v33 = *(v9 + 3);
    v35 = v34 + 1;
    if (v34 >= v33 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v35;
    v36 = &v9[16 * v34];
    *(v36 + 4) = v10;
    *(v36 + 5) = v8;
    v37 = *v87;
    if (!*v87)
    {
      goto LABEL_129;
    }

    if (v34)
    {
      v5 = v32;
      while (1)
      {
        v38 = v35 - 1;
        if (v35 >= 4)
        {
          break;
        }

        if (v35 == 3)
        {
          v39 = *(v9 + 4);
          v40 = *(v9 + 5);
          v49 = __OFSUB__(v40, v39);
          v41 = v40 - v39;
          v42 = v49;
LABEL_61:
          if (v42)
          {
            goto LABEL_108;
          }

          v55 = &v9[16 * v35];
          v57 = *v55;
          v56 = *(v55 + 1);
          v58 = __OFSUB__(v56, v57);
          v59 = v56 - v57;
          v60 = v58;
          if (v58)
          {
            goto LABEL_111;
          }

          v61 = &v9[16 * v38 + 32];
          v63 = *v61;
          v62 = *(v61 + 1);
          v49 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v49)
          {
            goto LABEL_114;
          }

          if (__OFADD__(v59, v64))
          {
            goto LABEL_115;
          }

          if (v59 + v64 >= v41)
          {
            if (v41 < v64)
            {
              v38 = v35 - 2;
            }

            goto LABEL_82;
          }

          goto LABEL_75;
        }

        v65 = &v9[16 * v35];
        v67 = *v65;
        v66 = *(v65 + 1);
        v49 = __OFSUB__(v66, v67);
        v59 = v66 - v67;
        v60 = v49;
LABEL_75:
        if (v60)
        {
          goto LABEL_110;
        }

        v68 = &v9[16 * v38];
        v70 = *(v68 + 4);
        v69 = *(v68 + 5);
        v49 = __OFSUB__(v69, v70);
        v71 = v69 - v70;
        if (v49)
        {
          goto LABEL_113;
        }

        if (v71 < v59)
        {
          goto LABEL_4;
        }

LABEL_82:
        v76 = v38 - 1;
        if (v38 - 1 >= v35)
        {
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
          goto LABEL_123;
        }

        if (!*v6)
        {
          goto LABEL_126;
        }

        v77 = *&v9[16 * v76 + 32];
        v7 = *&v9[16 * v38 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((*v6 + 8 * v77), (*v6 + 8 * *&v9[16 * v38 + 32]), (*v6 + 8 * v7), v37);
        if (v5)
        {
        }

        if (v7 < v77)
        {
          goto LABEL_104;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
        }

        if (v76 >= *(v9 + 2))
        {
          goto LABEL_105;
        }

        v78 = &v9[16 * v76];
        *(v78 + 4) = v77;
        *(v78 + 5) = v7;
        result = specialized Array.remove(at:)(v38);
        v35 = *(v9 + 2);
        if (v35 <= 1)
        {
          goto LABEL_4;
        }
      }

      v43 = &v9[16 * v35 + 32];
      v44 = *(v43 - 64);
      v45 = *(v43 - 56);
      v49 = __OFSUB__(v45, v44);
      v46 = v45 - v44;
      if (v49)
      {
        goto LABEL_106;
      }

      v48 = *(v43 - 48);
      v47 = *(v43 - 40);
      v49 = __OFSUB__(v47, v48);
      v41 = v47 - v48;
      v42 = v49;
      if (v49)
      {
        goto LABEL_107;
      }

      v50 = &v9[16 * v35];
      v52 = *v50;
      v51 = *(v50 + 1);
      v49 = __OFSUB__(v51, v52);
      v53 = v51 - v52;
      if (v49)
      {
        goto LABEL_109;
      }

      v49 = __OFADD__(v41, v53);
      v54 = v41 + v53;
      if (v49)
      {
        goto LABEL_112;
      }

      if (v54 >= v46)
      {
        v72 = &v9[16 * v38 + 32];
        v74 = *v72;
        v73 = *(v72 + 1);
        v49 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v49)
        {
          goto LABEL_116;
        }

        if (v41 < v75)
        {
          v38 = v35 - 2;
        }

        goto LABEL_82;
      }

      goto LABEL_61;
    }

    v5 = v32;
LABEL_4:
    v7 = v6[1];
    if (v8 >= v7)
    {
      goto LABEL_92;
    }
  }

  if (__OFADD__(v10, a4))
  {
    goto LABEL_122;
  }

  v23 = v8;
  if (v10 + a4 >= v22)
  {
    v24 = v6[1];
  }

  else
  {
    v24 = (v10 + a4);
  }

  if (v24 < v10)
  {
LABEL_123:
    __break(1u);
    goto LABEL_124;
  }

  if (v23 == v24)
  {
    v8 = v23;
    goto LABEL_40;
  }

  v86 = v5;
  v25 = *v6;
  type metadata accessor for StandardWorkoutAddWorkoutRow();
  _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_18(&lazy protocol witness table cache variable for type StandardWorkoutAddWorkoutRow and conformance StandardWorkoutAddWorkoutRow, MEMORY[0x277D7D9A8]);
  v26 = v25 + 8 * v23 - 8;
  v7 = v10 - v23;
  v89 = v24;
LABEL_33:
  v27 = v23;
  v28 = v7;
  v29 = v26;
  while (1)
  {
    result = dispatch thunk of static Comparable.< infix(_:_:)();
    if ((result & 1) == 0)
    {
LABEL_32:
      v23 = v27 + 1;
      v26 += 8;
      --v7;
      v8 = v89;
      if (v23 != v89)
      {
        goto LABEL_33;
      }

      v5 = v86;
      v6 = a3;
      goto LABEL_40;
    }

    if (!v25)
    {
      break;
    }

    v30 = *v29;
    *v29 = v29[1];
    v29[1] = v30;
    --v29;
    if (__CFADD__(v28++, 1))
    {
      goto LABEL_32;
    }
  }

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
  return result;
}

{
  v6 = v4;
  v7 = a3;
  v90 = result;
  v8 = a3[1];
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = MEMORY[0x277D84F90];
    while (1)
    {
      v11 = v9;
      v12 = v9 + 1;
      if (v12 >= v8)
      {
        v8 = v12;
      }

      else
      {
        v87 = v10;
        v13 = 16 * v11;
        v14 = v11;
        v15 = *v7 + 16 * v11 + 40;
        v5 = lazy protocol witness table accessor for type String and conformance String();
        result = StringProtocol.localizedStandardCompare<A>(_:)();
        v16 = result;
        v89 = v14;
        v17 = v14 + 2;
        while (v8 != v17)
        {
          result = StringProtocol.localizedStandardCompare<A>(_:)();
          ++v17;
          v15 += 16;
          if ((v16 == -1) == (result != -1))
          {
            v8 = v17 - 1;
            break;
          }
        }

        v11 = v89;
        if (v16 == -1)
        {
          if (v8 < v89)
          {
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
            return result;
          }

          if (v89 < v8)
          {
            v18 = 0;
            v19 = 16 * v8;
            v20 = v89;
            do
            {
              if (v20 != v8 + v18 - 1)
              {
                v25 = *a3;
                if (!*a3)
                {
                  goto LABEL_124;
                }

                v21 = (v25 + v13);
                v22 = v25 + v19;
                v23 = *v21;
                v24 = v21[1];
                *v21 = *(v22 - 16);
                *(v22 - 16) = v23;
                *(v22 - 8) = v24;
              }

              ++v20;
              --v18;
              v19 -= 16;
              v13 += 16;
            }

            while (v20 < v8 + v18);
          }
        }

        v7 = a3;
        v10 = v87;
      }

      v26 = v7[1];
      if (v8 < v26)
      {
        if (__OFSUB__(v8, v11))
        {
          goto LABEL_116;
        }

        if (v8 - v11 < a4)
        {
          if (__OFADD__(v11, a4))
          {
            goto LABEL_117;
          }

          if (v11 + a4 < v26)
          {
            v26 = v11 + a4;
          }

          if (v26 < v11)
          {
LABEL_118:
            __break(1u);
            goto LABEL_119;
          }

          if (v8 != v26)
          {
            v92 = v26;
            v88 = v10;
            v85 = v6;
            v27 = *v7;
            v5 = lazy protocol witness table accessor for type String and conformance String();
            v28 = (v27 + 16 * v8);
            v29 = v11 - v8;
            do
            {
              v30 = v29;
              v31 = v28;
              do
              {
                result = StringProtocol.localizedStandardCompare<A>(_:)();
                if (result != -1)
                {
                  break;
                }

                if (!v27)
                {
                  goto LABEL_121;
                }

                v32 = *v31;
                v33 = v31[1];
                *v31 = *(v31 - 1);
                *(v31 - 1) = v33;
                *(v31 - 2) = v32;
                v31 -= 2;
              }

              while (!__CFADD__(v30++, 1));
              ++v8;
              v28 += 2;
              --v29;
            }

            while (v8 != v92);
            v6 = v85;
            v7 = a3;
            v8 = v92;
            v10 = v88;
          }
        }
      }

      if (v8 < v11)
      {
        goto LABEL_115;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10);
        v10 = result;
      }

      v36 = *(v10 + 2);
      v35 = *(v10 + 3);
      v37 = v36 + 1;
      if (v36 >= v35 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1, v10);
        v10 = result;
      }

      *(v10 + 2) = v37;
      v38 = &v10[16 * v36];
      *(v38 + 4) = v11;
      *(v38 + 5) = v8;
      v5 = *v90;
      if (!*v90)
      {
        goto LABEL_125;
      }

      v93 = v8;
      if (v36)
      {
        while (1)
        {
          v39 = v37 - 1;
          if (v37 >= 4)
          {
            break;
          }

          if (v37 == 3)
          {
            v40 = *(v10 + 4);
            v41 = *(v10 + 5);
            v50 = __OFSUB__(v41, v40);
            v42 = v41 - v40;
            v43 = v50;
LABEL_57:
            if (v43)
            {
              goto LABEL_104;
            }

            v56 = &v10[16 * v37];
            v58 = *v56;
            v57 = *(v56 + 1);
            v59 = __OFSUB__(v57, v58);
            v60 = v57 - v58;
            v61 = v59;
            if (v59)
            {
              goto LABEL_107;
            }

            v62 = &v10[16 * v39 + 32];
            v64 = *v62;
            v63 = *(v62 + 1);
            v50 = __OFSUB__(v63, v64);
            v65 = v63 - v64;
            if (v50)
            {
              goto LABEL_110;
            }

            if (__OFADD__(v60, v65))
            {
              goto LABEL_111;
            }

            if (v60 + v65 >= v42)
            {
              if (v42 < v65)
              {
                v39 = v37 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          v66 = &v10[16 * v37];
          v68 = *v66;
          v67 = *(v66 + 1);
          v50 = __OFSUB__(v67, v68);
          v60 = v67 - v68;
          v61 = v50;
LABEL_71:
          if (v61)
          {
            goto LABEL_106;
          }

          v69 = &v10[16 * v39];
          v71 = *(v69 + 4);
          v70 = *(v69 + 5);
          v50 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v50)
          {
            goto LABEL_109;
          }

          if (v72 < v60)
          {
            goto LABEL_3;
          }

LABEL_78:
          v77 = v39 - 1;
          if (v39 - 1 >= v37)
          {
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
            goto LABEL_118;
          }

          if (!*v7)
          {
            goto LABEL_122;
          }

          v78 = *&v10[16 * v77 + 32];
          v79 = *&v10[16 * v39 + 40];
          specialized _merge<A>(low:mid:high:buffer:by:)((*v7 + 16 * v78), (*v7 + 16 * *&v10[16 * v39 + 32]), (*v7 + 16 * v79), v5);
          if (v6)
          {
          }

          if (v79 < v78)
          {
            goto LABEL_100;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
          }

          if (v77 >= *(v10 + 2))
          {
            goto LABEL_101;
          }

          v80 = &v10[16 * v77];
          *(v80 + 4) = v78;
          *(v80 + 5) = v79;
          result = specialized Array.remove(at:)(v39);
          v37 = *(v10 + 2);
          if (v37 <= 1)
          {
            goto LABEL_3;
          }
        }

        v44 = &v10[16 * v37 + 32];
        v45 = *(v44 - 64);
        v46 = *(v44 - 56);
        v50 = __OFSUB__(v46, v45);
        v47 = v46 - v45;
        if (v50)
        {
          goto LABEL_102;
        }

        v49 = *(v44 - 48);
        v48 = *(v44 - 40);
        v50 = __OFSUB__(v48, v49);
        v42 = v48 - v49;
        v43 = v50;
        if (v50)
        {
          goto LABEL_103;
        }

        v51 = &v10[16 * v37];
        v53 = *v51;
        v52 = *(v51 + 1);
        v50 = __OFSUB__(v52, v53);
        v54 = v52 - v53;
        if (v50)
        {
          goto LABEL_105;
        }

        v50 = __OFADD__(v42, v54);
        v55 = v42 + v54;
        if (v50)
        {
          goto LABEL_108;
        }

        if (v55 >= v47)
        {
          v73 = &v10[16 * v39 + 32];
          v75 = *v73;
          v74 = *(v73 + 1);
          v50 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v50)
          {
            goto LABEL_112;
          }

          if (v42 < v76)
          {
            v39 = v37 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_57;
      }

LABEL_3:
      v8 = v7[1];
      v9 = v93;
      if (v93 >= v8)
      {
        goto LABEL_88;
      }
    }
  }

  v10 = MEMORY[0x277D84F90];
LABEL_88:
  v5 = v10;
  v10 = *v90;
  if (!*v90)
  {
    goto LABEL_126;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_119:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    v5 = result;
  }

  v81 = *(v5 + 16);
  if (v81 >= 2)
  {
    while (*v7)
    {
      v82 = *(v5 + 16 * v81);
      v83 = *(v5 + 16 * (v81 - 1) + 40);
      specialized _merge<A>(low:mid:high:buffer:by:)((*v7 + 16 * v82), (*v7 + 16 * *(v5 + 16 * (v81 - 1) + 32)), (*v7 + 16 * v83), v10);
      if (v6)
      {
      }

      if (v83 < v82)
      {
        goto LABEL_113;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
      }

      if (v81 - 2 >= *(v5 + 16))
      {
        goto LABEL_114;
      }

      v84 = (v5 + 16 * v81);
      *v84 = v82;
      v84[1] = v83;
      result = specialized Array.remove(at:)(v81 - 1);
      v81 = *(v5 + 16);
      if (v81 <= 1)
      {
      }
    }

    goto LABEL_123;
  }
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4++;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6++;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 1;
    --v5;
    v18 = v14;
    do
    {
      v19 = v5 + 1;
      v20 = *(v18 - 8);
      v18 -= 8;
      v21 = v20;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (--v6, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v21;
      }

      --v5;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v22 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

uint64_t specialized SwimmingDistancePickerViewModel.init(formattingManager:lapLength:tintColor:)(void *a1, char *a2, unint64_t a3, void *a4, uint64_t a5)
{
  v6 = v5;
  v6[2] = a1;
  v6[5] = a2;
  v6[6] = a3;
  v6[7] = a4;
  v38 = a2;
  v39 = a3;
  v40 = a4;

  v10 = a4;
  v11 = a1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySo10HKQuantityCGMd);
  MEMORY[0x20F30B100](&v37, v12);
  v13 = v37;
  v14 = [v37 _unit];

  type metadata accessor for HKUnit();
  v15 = objc_opt_self();
  v16 = [v15 yardUnit];
  v17 = static NSObject.== infix(_:_:)();

  if (v17 & 1) != 0 || (v18 = [v15 meterUnit], v19 = static NSObject.== infix(_:_:)(), v18, (v19))
  {
    v6[3] = a5;
    v20 = MEMORY[0x277D84F90];
    v38 = MEMORY[0x277D84F90];

    v21 = 1.0;
    v22 = 4999;
    v23 = 2;
    v24 = 25.0;
    do
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v20 + 2) + 1, 1, v20);
      }

      v26 = *(v20 + 2);
      v25 = *(v20 + 3);
      v27 = v26 + 1;
      if (v26 >= v25 >> 1)
      {
        v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1, v20);
      }

      *(v20 + 2) = v27;
      *&v20[8 * v26 + 32] = v24;
      v38 = v20;
      v28 = v21 * 33.3333333;
      if (v28 > 5000.0)
      {
        break;
      }

      v29 = v28 - trunc(v28);
      if (fabs(v29 + -0.33) < 0.01 || fabs(v29 + -0.66) < 0.01)
      {
        v30 = *(v20 + 3);
        v31 = v26 + 2;
        if (v31 > (v30 >> 1))
        {
          v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31, 1, v20);
        }

        *(v20 + 2) = v31;
        *&v20[8 * v27 + 32] = v28;
        v38 = v20;
      }

      if (!v22)
      {
        break;
      }

      v21 = v23;
      v24 = v23 * 25.0;
      --v22;
      ++v23;
    }

    while (v24 <= 5000.0);
    specialized MutableCollection<>.sort(by:)(&v38);

    v6[4] = v38;
    return v6;
  }

  else
  {
    v38 = 0;
    v39 = 0xE000000000000000;
    _StringGuts.grow(_:)(35);

    v38 = 0xD000000000000021;
    v39 = 0x800000020CB952D0;
    v33 = [v14 description];
    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v35;

    MEMORY[0x20F30BC00](v34, v36);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

unint64_t type metadata accessor for HKUnit()
{
  result = lazy cache variable for type metadata for HKUnit;
  if (!lazy cache variable for type metadata for HKUnit)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for HKUnit);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CreateWorkoutButton(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for CreateWorkoutButton(uint64_t result, int a2, int a3)
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

uint64_t closure #1 in CreateWorkoutButton.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v39 = a4;
  v7 = type metadata accessor for PlainButtonStyle();
  v8 = *(v7 - 8);
  v36 = v7;
  v37 = v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAA5ImageVAA25_ForegroundStyleModifier2VyAA5ColorVAKGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGGMd);
  v11 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v13 = &v34 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACyAA5ImageVAA011_ForegroundG9Modifier2VyAA5ColorVAOGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGG_AA05PlainiG0VQo_ASyAA11ControlSizeOGGMd);
  MEMORY[0x28223BE20](v14);
  v16 = &v34 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACyAA5ImageVAA011_ForegroundG9Modifier2VyAA5ColorVAOGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGG_AA05PlainiG0VQo_ASyAA11ControlSizeOGGAA023AccessibilityAttachmentQ0VGMd);
  MEMORY[0x28223BE20](v17 - 8);
  v38 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v34 - v20;
  v22 = swift_allocObject();
  v22[2] = a1;
  v22[3] = a2;
  v22[4] = a3;
  v40 = a1;
  v41 = a2;
  v42 = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA25_ForegroundStyleModifier2VyAA5ColorVAIGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMd);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier2<Color, Color>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
  Button.init(action:label:)();
  PlainButtonStyle.init()();
  lazy protocol witness table accessor for type _ForegroundStyleModifier2<Color, Color> and conformance _ForegroundStyleModifier2<A, B>(&lazy protocol witness table cache variable for type Button<ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier2<Color, Color>>, _EnvironmentKeyWritingModifier<Font?>>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAA5ImageVAA25_ForegroundStyleModifier2VyAA5ColorVAKGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGGMd);
  _s7SwiftUI16PlainButtonStyleVAcA09PrimitivedE0AAWlTm_3(&lazy protocol witness table cache variable for type PlainButtonStyle and conformance PlainButtonStyle, MEMORY[0x277CDDB18]);
  v24 = v35;
  v23 = v36;
  View.buttonStyle<A>(_:)();
  (*(v37 + 8))(v10, v23);
  (*(v11 + 8))(v13, v24);
  v25 = &v16[*(v14 + 36)];
  v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGMd) + 28);
  v27 = *MEMORY[0x277CDF420];
  v28 = type metadata accessor for ControlSize();
  (*(*(v28 - 8) + 104))(v25 + v26, v27, v28);
  *v25 = swift_getKeyPath();
  if (one-time initialization token for createWorkout != -1)
  {
    swift_once();
  }

  lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>> and conformance <> ModifiedContent<A, B>();
  View.accessibilityIdentifier(_:)();
  outlined destroy of ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>(v16, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACyAA5ImageVAA011_ForegroundG9Modifier2VyAA5ColorVAOGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGG_AA05PlainiG0VQo_ASyAA11ControlSizeOGGMd);
  v29 = v38;
  sub_20C68B3E4(v21, v38);
  v30 = v39;
  *v39 = 0;
  *(v30 + 8) = 1;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6SpacerV_AA15ModifiedContentVyAEyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonH0Rd__lFQOyAA0J0VyAEyAEyAA5ImageVAA011_ForegroundH9Modifier2VyAA5ColorVAQGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGG_AA05PlainjH0VQo_AUyAA11ControlSizeOGGAA023AccessibilityAttachmentR0VGACtMd);
  sub_20C68B3E4(v29, v30 + *(v31 + 48));
  v32 = v30 + *(v31 + 64);
  *v32 = 0;
  v32[8] = 1;
  outlined destroy of ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>(v21, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACyAA5ImageVAA011_ForegroundG9Modifier2VyAA5ColorVAOGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGG_AA05PlainiG0VQo_ASyAA11ControlSizeOGGAA023AccessibilityAttachmentQ0VGMd);
  return outlined destroy of ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>(v29, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACyAA5ImageVAA011_ForegroundG9Modifier2VyAA5ColorVAOGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGG_AA05PlainiG0VQo_ASyAA11ControlSizeOGGAA023AccessibilityAttachmentQ0VGMd);
}

uint64_t closure #1 in closure #1 in CreateWorkoutButton.body.getter(uint64_t a1)
{
  if (a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    return static Published.subscript.setter();
  }

  else
  {
    type metadata accessor for ConfigurationNavigationModel();
    _s7SwiftUI16PlainButtonStyleVAcA09PrimitivedE0AAWlTm_3(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t closure #2 in closure #1 in CreateWorkoutButton.body.getter@<X0>(uint64_t a1@<X2>, uint64_t *a2@<X8>)
{
  v4 = Image.init(systemName:)();
  v5 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
  v6 = Color.init(uiColor:)();

  v7 = static Font.largeTitle.getter();
  result = swift_getKeyPath();
  *a2 = v4;
  a2[1] = a1;
  a2[2] = v6;
  a2[3] = result;
  a2[4] = v7;
  return result;
}

uint64_t protocol witness for View.body.getter in conformance CreateWorkoutButton@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  *a1 = static VerticalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA6SpacerV_AA15ModifiedContentVyAMyAA0D0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonM0Rd__lFQOyAA0O0VyAMyAMyAA5ImageVAA011_ForegroundM9Modifier2VyAA5ColorVAYGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGG_AA05PlainoM0VQo_A1_yAA11ControlSizeOGGAA023AccessibilityAttachmentW0VGAKtGGMd);
  closure #1 in CreateWorkoutButton.body.getter(v3, v4, v5, (a1 + *(v6 + 44)));
  static Color.clear.getter();
  v7 = AnyView.init<A>(_:)();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA6SpacerV_ACyACyAA0G0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonJ0Rd__lFQOyAA0L0VyACyACyAA5ImageVAA011_ForegroundJ9Modifier2VyAA5ColorVAUGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGG_AA05PlainlJ0VQo_AYyAA11ControlSizeOGGAA023AccessibilityAttachmentT0VGAItGGAA06_TraitsT0VyAA022ListRowBackgroundTraitR0VGGMd);
  *(a1 + *(result + 36)) = v7;
  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier2<Color, Color>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier2<Color, Color>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier2<Color, Color>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA25_ForegroundStyleModifier2VyAA5ColorVAIGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<Image, _ForegroundStyleModifier2<Color, Color>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _ForegroundStyleModifier2<Color, Color> and conformance _ForegroundStyleModifier2<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier2<Color, Color>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Image, _ForegroundStyleModifier2<Color, Color>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Image, _ForegroundStyleModifier2<Color, Color>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Image, _ForegroundStyleModifier2<Color, Color>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA25_ForegroundStyleModifier2VyAA5ColorVAIGGMd);
    lazy protocol witness table accessor for type _ForegroundStyleModifier2<Color, Color> and conformance _ForegroundStyleModifier2<A, B>(&lazy protocol witness table cache variable for type _ForegroundStyleModifier2<Color, Color> and conformance _ForegroundStyleModifier2<A, B>, &_s7SwiftUI25_ForegroundStyleModifier2VyAA5ColorVAEGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Image, _ForegroundStyleModifier2<Color, Color>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined destroy of ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s7SwiftUI16PlainButtonStyleVAcA09PrimitivedE0AAWlTm_3(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, AccessibilityAttachmentModifier>, Spacer)>>, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, AccessibilityAttachmentModifier>, Spacer)>>, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, AccessibilityAttachmentModifier>, Spacer)>>, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA6SpacerV_ACyACyAA0G0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonJ0Rd__lFQOyAA0L0VyACyACyAA5ImageVAA011_ForegroundJ9Modifier2VyAA5ColorVAUGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGG_AA05PlainlJ0VQo_AYyAA11ControlSizeOGGAA023AccessibilityAttachmentT0VGAItGGAA06_TraitsT0VyAA022ListRowBackgroundTraitR0VGGMd);
    lazy protocol witness table accessor for type _ForegroundStyleModifier2<Color, Color> and conformance _ForegroundStyleModifier2<A, B>(&lazy protocol witness table cache variable for type HStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, AccessibilityAttachmentModifier>, Spacer)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAIyAA0E0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonJ0Rd__lFQOyAA0L0VyAIyAIyAA5ImageVAA011_ForegroundJ9Modifier2VyAA5ColorVAUGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGG_AA05PlainlJ0VQo_AYyAA11ControlSizeOGGAA023AccessibilityAttachmentT0VGAGtGGMd);
    lazy protocol witness table accessor for type _ForegroundStyleModifier2<Color, Color> and conformance _ForegroundStyleModifier2<A, B>(&lazy protocol witness table cache variable for type _TraitWritingModifier<ListRowBackgroundTraitKey> and conformance _TraitWritingModifier<A>, &_s7SwiftUI21_TraitWritingModifierVyAA017ListRowBackgroundC3KeyVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, AccessibilityAttachmentModifier>, Spacer)>>, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _ForegroundStyleModifier2<Color, Color> and conformance _ForegroundStyleModifier2<A, B>(unint64_t *a1, uint64_t *a2)
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

uint64_t PickerViewModifier.init(title:tintColor:navigationBarColor:paddingEdges:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __int16 a5@<W4>, uint64_t a6@<X8>)
{
  v6 = a5;
  v9 = result;
  if (!a4)
  {

    v11 = a3;
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v11 = a4;
  if ((a5 & 0x100) != 0)
  {
LABEL_3:
    result = static Edge.Set.all.getter();
    LOBYTE(v6) = result;
  }

LABEL_4:
  *a6 = v9;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = v11;
  *(a6 + 32) = v6;
  return result;
}

uint64_t PickerViewModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a1;
  v44 = a2;
  v3 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE15navigationTitleyQrqd__SyRd__lFQOyAA01_C16Modifier_ContentVy07WorkoutB006PickercF0VG_SSQo_Md);
  v38 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v8 = &v34 - v7;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE29navigationBarTitleDisplayModeyQrAA010NavigationE4ItemV0fgH0OFQOyAcAE0dF0yQrqd__SyRd__lFQOyAA01_C16Modifier_ContentVy07WorkoutB006PickercK0VG_SSQo__Qo_Md);
  v42 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v35 = &v34 - v9;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE22toolbarForegroundStyle_3forQrqd___AA16ToolbarPlacementVdtAA05ShapeH0Rd__lFQOyAeAE29navigationBarTitleDisplayModeyQrAA010NavigationN4ItemV0opQ0OFQOyAeAE0mO0yQrqd__SyRd__lFQOyAA01_e9Modifier_D0Vy07WorkoutB006PickereT0VG_SSQo__Qo__AA5ColorVQo_AA022_EnvironmentKeyWritingT0VyAA03AnylH0VSgGGMd);
  MEMORY[0x28223BE20](v43);
  v11 = &v34 - v10;
  v12 = *v2;
  v13 = *(v2 + 8);
  v14 = *(v2 + 24);
  v39 = *(v2 + 16);
  v34 = v14;
  v41 = *(v2 + 32);
  v46 = v12;
  v47 = v13;

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB006PickercD0VGMd);
  v16 = lazy protocol witness table accessor for type _ViewModifier_Content<PickerViewModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<PickerViewModifier> and conformance _ViewModifier_Content<A>, &_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB006PickercD0VGMd);
  v17 = lazy protocol witness table accessor for type String and conformance String();
  v18 = MEMORY[0x277D837D0];
  View.navigationTitle<A>(_:)();
  (*(v4 + 104))(v6, *MEMORY[0x277CDDDC0], v3);
  v46 = v15;
  v47 = v18;
  v48 = v16;
  v49 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v21 = v35;
  v20 = v36;
  View.navigationBarTitleDisplayMode(_:)();
  (*(v4 + 8))(v6, v3);
  v22 = v20;
  (*(v38 + 8))(v8, v20);
  v45 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI16ToolbarPlacementVGMd);
  type metadata accessor for ToolbarPlacement();
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_20CB5DA70;
  static ToolbarPlacement.navigationBar.getter();
  v46 = v22;
  v47 = OpaqueTypeConformance2;
  v24 = swift_getOpaqueTypeConformance2();
  v25 = v40;
  MEMORY[0x20F30A9F0](&v45, v23, v40, MEMORY[0x277CE0F78], v24, MEMORY[0x277CE0F60]);

  (*(v42 + 8))(v21, v25);
  KeyPath = swift_getKeyPath();
  v46 = v39;

  v27 = AnyShapeStyle.init<A>(_:)();
  v28 = &v11[*(v43 + 36)];
  *v28 = KeyPath;
  v28[1] = v27;
  lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.toolbarForegroundStyle<A>(_:for:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>();
  v29 = v44;
  View.scenePadding(_:)();
  sub_20C68B470(v11);
  v30 = static SafeAreaRegions.all.getter();
  v31 = static Edge.Set.bottom.getter();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE12scenePaddingyQrAA4EdgeO3SetVFQOyACyAeAE22toolbarForegroundStyle_3forQrqd___AA16ToolbarPlacementVdtAA05ShapeL0Rd__lFQOyAeAE29navigationBarTitleDisplayModeyQrAA010NavigationR4ItemV0stU0OFQOyAeAE0qS0yQrqd__SyRd__lFQOyAA01_e9Modifier_D0Vy07WorkoutB006PickereX0VG_SSQo__Qo__AA5ColorVQo_AA022_EnvironmentKeyWritingX0VyAA03AnypL0VSgGG_Qo_AA30_SafeAreaRegionsIgnoringLayoutVGMd);
  v33 = v29 + *(result + 36);
  *v33 = v30;
  *(v33 + 8) = v31;
  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.toolbarForegroundStyle<A>(_:for:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.toolbarForegroundStyle<A>(_:for:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.toolbarForegroundStyle<A>(_:for:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE22toolbarForegroundStyle_3forQrqd___AA16ToolbarPlacementVdtAA05ShapeH0Rd__lFQOyAeAE29navigationBarTitleDisplayModeyQrAA010NavigationN4ItemV0opQ0OFQOyAeAE0mO0yQrqd__SyRd__lFQOyAA01_e9Modifier_D0Vy07WorkoutB006PickereT0VG_SSQo__Qo__AA5ColorVQo_AA022_EnvironmentKeyWritingT0VyAA03AnylH0VSgGGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE29navigationBarTitleDisplayModeyQrAA010NavigationE4ItemV0fgH0OFQOyAcAE0dF0yQrqd__SyRd__lFQOyAA01_C16Modifier_ContentVy07WorkoutB006PickercK0VG_SSQo__Qo_Md);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE15navigationTitleyQrqd__SyRd__lFQOyAA01_C16Modifier_ContentVy07WorkoutB006PickercF0VG_SSQo_Md);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB006PickercD0VGMd);
    lazy protocol witness table accessor for type _ViewModifier_Content<PickerViewModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<PickerViewModifier> and conformance _ViewModifier_Content<A>, &_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB006PickercD0VGMd);
    lazy protocol witness table accessor for type String and conformance String();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type _ViewModifier_Content<PickerViewModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<AnyShapeStyle?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.toolbarForegroundStyle<A>(_:for:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _ViewModifier_Content<PickerViewModifier> and conformance _ViewModifier_Content<A>(unint64_t *a1, uint64_t *a2)
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

uint64_t getEnumTagSinglePayload for PickerViewModifier(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for PickerViewModifier(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.scenePadding(_:)>>.0, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.scenePadding(_:)>>.0, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.scenePadding(_:)>>.0, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE12scenePaddingyQrAA4EdgeO3SetVFQOyACyAeAE22toolbarForegroundStyle_3forQrqd___AA16ToolbarPlacementVdtAA05ShapeL0Rd__lFQOyAeAE29navigationBarTitleDisplayModeyQrAA010NavigationR4ItemV0stU0OFQOyAeAE0qS0yQrqd__SyRd__lFQOyAA01_e9Modifier_D0Vy07WorkoutB006PickereX0VG_SSQo__Qo__AA5ColorVQo_AA022_EnvironmentKeyWritingX0VyAA03AnypL0VSgGG_Qo_AA30_SafeAreaRegionsIgnoringLayoutVGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE22toolbarForegroundStyle_3forQrqd___AA16ToolbarPlacementVdtAA05ShapeH0Rd__lFQOyAeAE29navigationBarTitleDisplayModeyQrAA010NavigationN4ItemV0opQ0OFQOyAeAE0mO0yQrqd__SyRd__lFQOyAA01_e9Modifier_D0Vy07WorkoutB006PickereT0VG_SSQo__Qo__AA5ColorVQo_AA022_EnvironmentKeyWritingT0VyAA03AnylH0VSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.toolbarForegroundStyle<A>(_:for:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.scenePadding(_:)>>.0, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t type metadata accessor for TrainingLoadDayViewModel()
{
  result = type metadata singleton initialization cache for TrainingLoadDayViewModel;
  if (!type metadata singleton initialization cache for TrainingLoadDayViewModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for TrainingLoadDayViewModel()
{
  type metadata accessor for TrainingLoadBand();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Range<Double>();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for Range<Double>()
{
  if (!lazy cache variable for type metadata for Range<Double>)
  {
    v0 = type metadata accessor for Range();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Range<Double>);
    }
  }
}

uint64_t TrainingLoadDayViewModel.bandState.getter()
{
  Band = type metadata accessor for TrainingLoadBand();
  v2 = *(Band - 8);
  MEMORY[0x28223BE20](Band);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v0 > 1.0)
  {
    return 0;
  }

  if (*v0 < -0.95)
  {
    return 6;
  }

  v7 = v3;
  DayViewModel = type metadata accessor for TrainingLoadDayViewModel();
  (*(v2 + 16))(v5, v0 + *(DayViewModel + 20), v7);
  v9 = (*(v2 + 88))(v5, v7);
  if (v9 == *MEMORY[0x277D0FE98])
  {
    return 5;
  }

  if (v9 == *MEMORY[0x277D0FE88])
  {
    return 4;
  }

  if (v9 == *MEMORY[0x277D0FE78])
  {
    return 3;
  }

  if (v9 == *MEMORY[0x277D0FE80])
  {
    return 2;
  }

  if (v9 == *MEMORY[0x277D0FE90])
  {
    return 1;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t TrainingLoadDayViewModel.positionWithinBand.getter()
{
  Band = type metadata accessor for TrainingLoadBand();
  v2 = *(Band - 8);
  MEMORY[0x28223BE20](Band);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for TrainingLoadDayViewModel();
  if (*(v0 + *(result + 24)) != *(v0 + *(result + 24) + 8))
  {
    v6.n128_u64[0] = 0.75;
    if (*v0 <= 1.0 && *v0 >= -0.95)
    {
      (*(v2 + 16))(v4, v0 + *(result + 20), Band, v6);
      result = (*(v2 + 88))(v4, Band);
      if (result != *MEMORY[0x277D0FE98])
      {
        v9 = result == *MEMORY[0x277D0FE88] || result == *MEMORY[0x277D0FE78] || result == *MEMORY[0x277D0FE80];
        if (!v9 && result != *MEMORY[0x277D0FE90])
        {
          result = _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
        }
      }
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TrainingLoadTodayViewBand(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TrainingLoadTodayViewBand(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TrainingLoadTodayViewBand and conformance TrainingLoadTodayViewBand()
{
  result = lazy protocol witness table cache variable for type TrainingLoadTodayViewBand and conformance TrainingLoadTodayViewBand;
  if (!lazy protocol witness table cache variable for type TrainingLoadTodayViewBand and conformance TrainingLoadTodayViewBand)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TrainingLoadTodayViewBand and conformance TrainingLoadTodayViewBand);
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance TrainingLoadTodayViewBand()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TrainingLoadTodayViewBand()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v1);
  return Hasher._finalize()();
}

uint64_t getEnumTagSinglePayload for PacerView(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for PacerView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t GeometryProxy.pillOffset(for:)(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(a1 + 16);
  v4 = a1[3];
  GeometryProxy.size.getter();
  v11 = v2;
  v12 = v1;
  v13 = v3;
  v14 = v4;
  PacerViewConfiguration.pillConfiguration.getter(v10);
  v5 = v10[24];

  if (v5)
  {
    if (v5 == 1 && v3)
    {
      goto LABEL_4;
    }
  }

  else if (v3)
  {
LABEL_4:
    v7[7] = v2;
    v7[8] = v1;
    v8 = v3;
    v9 = v4;
    PacerViewConfiguration.pillConfiguration.getter(v7);
  }

  return result;
}

uint64_t closure #1 in PacerView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for EnvironmentValues();
  v47 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyAA06_ShapeG0VyAA9RectangleVAA5ColorVG_ANtGGAA12_FrameLayoutVGAA11_ClipEffectVyAA07RoundedI0VGGMd);
  MEMORY[0x28223BE20](v7);
  v9 = &v46 - v8;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyAA06_ShapeG0VyAA9RectangleVAA5ColorVG_ANtGGAA12_FrameLayoutVGAA11_ClipEffectVyAA07RoundedI0VGGAA16_OverlayModifierVyAA14GeometryReaderVyACyAA6ZStackVyAGyAM_ACyACy07WorkoutB009PacerPillG0VAA07_OffsetN0VGAA010_AnimationQ0VyA4_0W13ConfigurationV0W8PositionOGGtGGA8_GGGGMd);
  MEMORY[0x28223BE20](v52);
  v53 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v46 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v46 - v15;
  v50 = static VerticalAlignment.center.getter();
  v55 = 0;
  v17 = *(a1 + 8);
  v49 = *a1;

  v51 = v17;

  v48 = v55;
  v61 = *(a1 + 64);
  v18 = *(a1 + 56);
  v60 = v18;
  if (v61 != 1)
  {
    _s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGWOcTm_0(&v60, v54, &_s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGMd);
    static os_log_type_t.fault.getter();
    v19 = static Log.runtimeIssuesLog.getter();
    v46 = v16;
    v20 = v4;
    v21 = v7;
    v22 = v19;
    os_log(_:dso:log:_:_:)();

    v7 = v21;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    _s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGWOhTm_0(&v60, &_s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGMd);
    v23 = v20;
    v16 = v46;
    (*(v47 + 8))(v6, v23);
    LOBYTE(v18) = v57;
  }

  if (v18 <= 9u && ((1 << v18) & 0x301) != 0)
  {
    v24 = *(a1 + 40);
    v57 = *(a1 + 24);
    v58 = v24;
    PacerViewConfiguration.pillConfiguration.getter(v54);
  }

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v56[6] = v57;
  *&v56[22] = v58;
  *&v56[38] = v59;
  v25 = &v9[*(v7 + 36)];
  v26 = *(type metadata accessor for RoundedRectangle() + 20);
  v27 = *MEMORY[0x277CE0118];
  v28 = type metadata accessor for RoundedCornerStyle();
  (*(*(v28 - 8) + 104))(&v25[v26], v27, v28);
  __asm { FMOV            V0.2D, #16.0 }

  *v25 = _Q0;
  *&v25[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11_ClipEffectVyAA16RoundedRectangleVGMd) + 36)] = 256;
  v34 = *&v56[16];
  *(v9 + 50) = *v56;
  *v9 = v50;
  *(v9 + 1) = 0;
  v9[16] = v48;
  *(v9 + 3) = v49;
  *(v9 + 16) = 256;
  *(v9 + 5) = v51;
  *(v9 + 24) = 256;
  *(v9 + 66) = v34;
  *(v9 + 82) = *&v56[32];
  *(v9 + 12) = *&v56[46];
  v35 = static Alignment.center.getter();
  v37 = v36;
  v38 = swift_allocObject();
  v39 = *(a1 + 48);
  *(v38 + 48) = *(a1 + 32);
  *(v38 + 64) = v39;
  *(v38 + 80) = *(a1 + 64);
  v40 = *(a1 + 16);
  *(v38 + 16) = *a1;
  *(v38 + 32) = v40;
  outlined init with take of ModifiedContent<ModifiedContent<HStack<TupleView<(_ShapeView<Rectangle, Color>, _ShapeView<Rectangle, Color>)>>, _FrameLayout>, _ClipEffect<RoundedRectangle>>(v9, v13, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyAA06_ShapeG0VyAA9RectangleVAA5ColorVG_ANtGGAA12_FrameLayoutVGAA11_ClipEffectVyAA07RoundedI0VGGMd);
  v41 = &v13[*(v52 + 36)];
  *v41 = partial apply for closure #1 in closure #2 in closure #1 in PacerView.body.getter;
  v41[1] = v38;
  v41[2] = v35;
  v41[3] = v37;
  outlined init with take of ModifiedContent<ModifiedContent<HStack<TupleView<(_ShapeView<Rectangle, Color>, _ShapeView<Rectangle, Color>)>>, _FrameLayout>, _ClipEffect<RoundedRectangle>>(v13, v16, &_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyAA06_ShapeG0VyAA9RectangleVAA5ColorVG_ANtGGAA12_FrameLayoutVGAA11_ClipEffectVyAA07RoundedI0VGGAA16_OverlayModifierVyAA14GeometryReaderVyACyAA6ZStackVyAGyAM_ACyACy07WorkoutB009PacerPillG0VAA07_OffsetN0VGAA010_AnimationQ0VyA4_0W13ConfigurationV0W8PositionOGGtGGA8_GGGGMd);
  v42 = v53;
  _s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGWOcTm_0(v16, v53, &_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyAA06_ShapeG0VyAA9RectangleVAA5ColorVG_ANtGGAA12_FrameLayoutVGAA11_ClipEffectVyAA07RoundedI0VGGAA16_OverlayModifierVyAA14GeometryReaderVyACyAA6ZStackVyAGyAM_ACyACy07WorkoutB009PacerPillG0VAA07_OffsetN0VGAA010_AnimationQ0VyA4_0W13ConfigurationV0W8PositionOGGtGGA8_GGGGMd);
  *a2 = 0;
  *(a2 + 8) = 1;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6SpacerV_AA15ModifiedContentVyAEyAEyAA6HStackVyAA9TupleViewVyAA06_ShapeH0VyAA9RectangleVAA5ColorVG_APtGGAA12_FrameLayoutVGAA11_ClipEffectVyAA07RoundedJ0VGGAA16_OverlayModifierVyAA14GeometryReaderVyAEyAA6ZStackVyAIyAO_AEyAEy07WorkoutB009PacerPillH0VAA07_OffsetO0VGAA010_AnimationR0VyA6_0X13ConfigurationV0X8PositionOGGtGGA10_GGGGACtMd);
  _s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGWOcTm_0(v42, a2 + *(v43 + 48), &_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyAA06_ShapeG0VyAA9RectangleVAA5ColorVG_ANtGGAA12_FrameLayoutVGAA11_ClipEffectVyAA07RoundedI0VGGAA16_OverlayModifierVyAA14GeometryReaderVyACyAA6ZStackVyAGyAM_ACyACy07WorkoutB009PacerPillG0VAA07_OffsetN0VGAA010_AnimationQ0VyA4_0W13ConfigurationV0W8PositionOGGtGGA8_GGGGMd);
  v44 = a2 + *(v43 + 64);
  outlined init with copy of PacerView(a1, v54);
  _s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGWOhTm_0(v16, &_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyAA06_ShapeG0VyAA9RectangleVAA5ColorVG_ANtGGAA12_FrameLayoutVGAA11_ClipEffectVyAA07RoundedI0VGGAA16_OverlayModifierVyAA14GeometryReaderVyACyAA6ZStackVyAGyAM_ACyACy07WorkoutB009PacerPillG0VAA07_OffsetN0VGAA010_AnimationQ0VyA4_0W13ConfigurationV0W8PositionOGGtGGA8_GGGGMd);
  *v44 = 0;
  *(v44 + 8) = 1;
  return _s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGWOhTm_0(v42, &_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyAA06_ShapeG0VyAA9RectangleVAA5ColorVG_ANtGGAA12_FrameLayoutVGAA11_ClipEffectVyAA07RoundedI0VGGAA16_OverlayModifierVyAA14GeometryReaderVyACyAA6ZStackVyAGyAM_ACyACy07WorkoutB009PacerPillG0VAA07_OffsetN0VGAA010_AnimationQ0VyA4_0W13ConfigurationV0W8PositionOGGtGGA8_GGGGMd);
}

uint64_t closure #1 in closure #2 in closure #1 in PacerView.body.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = static Alignment.center.getter();
  v21 = v9;
  v22 = v8;
  closure #1 in closure #1 in closure #2 in closure #1 in PacerView.body.getter(a1, &v25);
  v34 = v27;
  v35 = v28;
  v36[0] = v29[0];
  *(v36 + 9) = *(v29 + 9);
  v32 = v25;
  v33 = v26;
  *(v38 + 9) = *(v29 + 9);
  v37[2] = v27;
  v37[3] = v28;
  v38[0] = v29[0];
  v37[0] = v25;
  v37[1] = v26;
  _s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGWOcTm_0(&v32, &v23, &_s7SwiftUI9TupleViewVyAA5ColorV_AA15ModifiedContentVyAGy07WorkoutB009PacerPillD0VAA13_OffsetEffectVGAA18_AnimationModifierVyAH0J13ConfigurationV0J8PositionOGGtGMd);
  _s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGWOhTm_0(v37, &_s7SwiftUI9TupleViewVyAA5ColorV_AA15ModifiedContentVyAGy07WorkoutB009PacerPillD0VAA13_OffsetEffectVGAA18_AnimationModifierVyAH0J13ConfigurationV0J8PositionOGGtGMd);
  v41 = v34;
  v42 = v35;
  v43[0] = v36[0];
  *(v43 + 9) = *(v36 + 9);
  v39 = v32;
  v40 = v33;
  v30 = *(a1 + 56);
  v31 = *(a1 + 64);
  v10 = v30;
  if (v31 != 1)
  {
    _s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGWOcTm_0(&v30, &v25, &_s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGMd);
    static os_log_type_t.fault.getter();
    v11 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    _s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGWOhTm_0(&v30, &_s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGMd);
    (*(v5 + 8))(v7, v4);
    v10 = v23;
  }

  if (v10 <= 9u && ((1 << v10) & 0x301) != 0)
  {
    v12 = *(a1 + 40);
    v23 = *(a1 + 24);
    v24 = v12;
    PacerViewConfiguration.pillConfiguration.getter(&v25);
    v13 = *(&v25 + 1);

    v15 = v13 * -0.25;
  }

  else
  {
    v16 = *(a1 + 40);
    v23 = *(a1 + 24);
    v24 = v16;
    PacerViewConfiguration.pillConfiguration.getter(&v25);
    v17 = *(&v25 + 1);

    v15 = v17 * -0.25 + -2.5;
  }

  v18 = v21;
  *a2 = v22;
  *(a2 + 8) = v18;
  v19 = v42;
  *(a2 + 48) = v41;
  *(a2 + 64) = v19;
  *(a2 + 80) = v43[0];
  *(a2 + 89) = *(v43 + 9);
  v20 = v40;
  *(a2 + 16) = v39;
  *(a2 + 32) = v20;
  *(a2 + 112) = 0;
  *(a2 + 120) = v15;
  return result;
}

uint64_t closure #1 in closure #1 in closure #2 in closure #1 in PacerView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static Color.clear.getter();
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  *(&v20 + 1) = *(a1 + 41);
  DWORD1(v20) = *(a1 + 44);
  v8 = *(a1 + 48);
  KeyPath = swift_getKeyPath();
  v25 = v5;
  v26 = v6;
  LOBYTE(v27) = v7;
  *(&v27 + 1) = *(a1 + 41);
  HIDWORD(v27) = *(a1 + 44);
  v28 = v8;
  GeometryProxy.pillOffset(for:)(&v25);
  v11 = v10;
  v18[0] = 0;
  v12 = static Animation.linear.getter();
  PacerViewConfiguration.pillConfiguration.getter(&v25);
  v13 = v27;
  v14 = v28;

  *&v19 = v5;
  *(&v19 + 1) = v6;
  LOBYTE(v20) = v7;
  *(&v20 + 1) = v8;
  *&v21 = KeyPath;
  BYTE8(v21) = 0;
  v22 = v11;
  *&v23 = v12;
  *(&v23 + 1) = v13;
  *(a2 + 40) = v21;
  v15 = v23;
  *(a2 + 56) = v22;
  *(a2 + 72) = v15;
  v16 = v20;
  *(a2 + 8) = v19;
  v24 = v14;
  *a2 = v4;
  *(a2 + 88) = v14;
  *(a2 + 24) = v16;
  v25 = v5;
  v26 = v6;
  LOBYTE(v27) = v7;
  v28 = v8;
  v29 = KeyPath;
  LOBYTE(v30) = 0;
  v31 = v11;
  v32 = 0;
  v33 = v12;
  v34 = v13;
  v35 = v14;

  _s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGWOcTm_0(&v19, v18, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB013PacerPillViewVAA13_OffsetEffectVGAA18_AnimationModifierVyAD0G13ConfigurationV0G8PositionOGGMd);
  _s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGWOhTm_0(&v25, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB013PacerPillViewVAA13_OffsetEffectVGAA18_AnimationModifierVyAD0G13ConfigurationV0G8PositionOGGMd);
}

uint64_t protocol witness for View.body.getter in conformance PacerView@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 48);
  v7[2] = *(v1 + 32);
  v7[3] = v3;
  v8 = *(v1 + 64);
  v4 = *(v1 + 16);
  v7[0] = *v1;
  v7[1] = v4;
  *a1 = static HorizontalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA6SpacerV_AA15ModifiedContentVyAMyAMyAA6HStackVyAIyAA06_ShapeD0VyAA9RectangleVAA5ColorVG_AVtGGAA06_FrameG0VGAA11_ClipEffectVyAA07RoundedN0VGGAA16_OverlayModifierVyAA14GeometryReaderVyAMyAA6ZStackVyAIyAU_AMyAMy07WorkoutB009PacerPillD0VAA07_OffsetR0VGAA010_AnimationU0VyA12_17PillConfigurationV12PillPositionOGGtGGA16_GGGGAKtGGMd);
  closure #1 in PacerView.body.getter(v7, a1 + *(v5 + 44));
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA6SpacerV_ACyACyACyAA6HStackVyAGyAA06_ShapeG0VyAA9RectangleVAA5ColorVG_ARtGGAA12_FrameLayoutVGAA11_ClipEffectVyAA07RoundedK0VGGAA16_OverlayModifierVyAA14GeometryReaderVyACyAA6ZStackVyAGyAQ_ACyACy07WorkoutB009PacerPillG0VAA07_OffsetP0VGAA010_AnimationS0VyA8_0Y13ConfigurationV0Y8PositionOGGtGGA12_GGGGAItGGA8_9MetricRowVGMd);
  *(a1 + *(result + 36)) = 0;
  return result;
}

uint64_t outlined init with take of ModifiedContent<ModifiedContent<HStack<TupleView<(_ShapeView<Rectangle, Color>, _ShapeView<Rectangle, Color>)>>, _FrameLayout>, _ClipEffect<RoundedRectangle>>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGWOcTm_0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGWOhTm_0(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(_ShapeView<Rectangle, Color>, _ShapeView<Rectangle, Color>)>>, _FrameLayout>, _ClipEffect<RoundedRectangle>>, _OverlayModifier<GeometryReader<ModifiedContent<ZStack<TupleView<(Color, ModifiedContent<ModifiedContent<PacerPillView, _OffsetEffect>, _AnimationModifier<PillConfiguration.PillPosition>>)>>, _OffsetEffect>>>>, Spacer)>>, MetricRow> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(_ShapeView<Rectangle, Color>, _ShapeView<Rectangle, Color>)>>, _FrameLayout>, _ClipEffect<RoundedRectangle>>, _OverlayModifier<GeometryReader<ModifiedContent<ZStack<TupleView<(Color, ModifiedContent<ModifiedContent<PacerPillView, _OffsetEffect>, _AnimationModifier<PillConfiguration.PillPosition>>)>>, _OffsetEffect>>>>, Spacer)>>, MetricRow> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(_ShapeView<Rectangle, Color>, _ShapeView<Rectangle, Color>)>>, _FrameLayout>, _ClipEffect<RoundedRectangle>>, _OverlayModifier<GeometryReader<ModifiedContent<ZStack<TupleView<(Color, ModifiedContent<ModifiedContent<PacerPillView, _OffsetEffect>, _AnimationModifier<PillConfiguration.PillPosition>>)>>, _OffsetEffect>>>>, Spacer)>>, MetricRow> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA6SpacerV_ACyACyACyAA6HStackVyAGyAA06_ShapeG0VyAA9RectangleVAA5ColorVG_ARtGGAA12_FrameLayoutVGAA11_ClipEffectVyAA07RoundedK0VGGAA16_OverlayModifierVyAA14GeometryReaderVyACyAA6ZStackVyAGyAQ_ACyACy07WorkoutB009PacerPillG0VAA07_OffsetP0VGAA010_AnimationS0VyA8_0Y13ConfigurationV0Y8PositionOGGtGGA12_GGGGAItGGA8_9MetricRowVGMd);
    lazy protocol witness table accessor for type VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(_ShapeView<Rectangle, Color>, _ShapeView<Rectangle, Color>)>>, _FrameLayout>, _ClipEffect<RoundedRectangle>>, _OverlayModifier<GeometryReader<ModifiedContent<ZStack<TupleView<(Color, ModifiedContent<ModifiedContent<PacerPillView, _OffsetEffect>, _AnimationModifier<PillConfiguration.PillPosition>>)>>, _OffsetEffect>>>>, Spacer)>> and conformance VStack<A>();
    lazy protocol witness table accessor for type MetricRow and conformance MetricRow();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(_ShapeView<Rectangle, Color>, _ShapeView<Rectangle, Color>)>>, _FrameLayout>, _ClipEffect<RoundedRectangle>>, _OverlayModifier<GeometryReader<ModifiedContent<ZStack<TupleView<(Color, ModifiedContent<ModifiedContent<PacerPillView, _OffsetEffect>, _AnimationModifier<PillConfiguration.PillPosition>>)>>, _OffsetEffect>>>>, Spacer)>>, MetricRow> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(_ShapeView<Rectangle, Color>, _ShapeView<Rectangle, Color>)>>, _FrameLayout>, _ClipEffect<RoundedRectangle>>, _OverlayModifier<GeometryReader<ModifiedContent<ZStack<TupleView<(Color, ModifiedContent<ModifiedContent<PacerPillView, _OffsetEffect>, _AnimationModifier<PillConfiguration.PillPosition>>)>>, _OffsetEffect>>>>, Spacer)>> and conformance VStack<A>()
{
  result = lazy protocol witness table cache variable for type VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(_ShapeView<Rectangle, Color>, _ShapeView<Rectangle, Color>)>>, _FrameLayout>, _ClipEffect<RoundedRectangle>>, _OverlayModifier<GeometryReader<ModifiedContent<ZStack<TupleView<(Color, ModifiedContent<ModifiedContent<PacerPillView, _OffsetEffect>, _AnimationModifier<PillConfiguration.PillPosition>>)>>, _OffsetEffect>>>>, Spacer)>> and conformance VStack<A>;
  if (!lazy protocol witness table cache variable for type VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(_ShapeView<Rectangle, Color>, _ShapeView<Rectangle, Color>)>>, _FrameLayout>, _ClipEffect<RoundedRectangle>>, _OverlayModifier<GeometryReader<ModifiedContent<ZStack<TupleView<(Color, ModifiedContent<ModifiedContent<PacerPillView, _OffsetEffect>, _AnimationModifier<PillConfiguration.PillPosition>>)>>, _OffsetEffect>>>>, Spacer)>> and conformance VStack<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAIyAIyAA6HStackVyAEyAA06_ShapeE0VyAA9RectangleVAA5ColorVG_ARtGGAA12_FrameLayoutVGAA11_ClipEffectVyAA07RoundedK0VGGAA16_OverlayModifierVyAA14GeometryReaderVyAIyAA6ZStackVyAEyAQ_AIyAIy07WorkoutB009PacerPillE0VAA07_OffsetP0VGAA010_AnimationS0VyA8_0Y13ConfigurationV0Y8PositionOGGtGGA12_GGGGAGtGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(_ShapeView<Rectangle, Color>, _ShapeView<Rectangle, Color>)>>, _FrameLayout>, _ClipEffect<RoundedRectangle>>, _OverlayModifier<GeometryReader<ModifiedContent<ZStack<TupleView<(Color, ModifiedContent<ModifiedContent<PacerPillView, _OffsetEffect>, _AnimationModifier<PillConfiguration.PillPosition>>)>>, _OffsetEffect>>>>, Spacer)>> and conformance VStack<A>);
  }

  return result;
}

uint64_t type metadata accessor for AlertsPickerViewWatch()
{
  result = type metadata singleton initialization cache for AlertsPickerViewWatch;
  if (!type metadata singleton initialization cache for AlertsPickerViewWatch)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for AlertsPickerViewWatch()
{
  type metadata accessor for Environment<DismissAction>();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ObservedObject<AlertsPickerViewModel>();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for ObservedObject<AlertsPickerViewModel>()
{
  if (!lazy cache variable for type metadata for ObservedObject<AlertsPickerViewModel>)
  {
    type metadata accessor for AlertsPickerViewModel();
    lazy protocol witness table accessor for type AlertsPickerViewModel and conformance AlertsPickerViewModel();
    v0 = type metadata accessor for ObservedObject();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ObservedObject<AlertsPickerViewModel>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type AlertsPickerViewModel and conformance AlertsPickerViewModel()
{
  result = lazy protocol witness table cache variable for type AlertsPickerViewModel and conformance AlertsPickerViewModel;
  if (!lazy protocol witness table cache variable for type AlertsPickerViewModel and conformance AlertsPickerViewModel)
  {
    type metadata accessor for AlertsPickerViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AlertsPickerViewModel and conformance AlertsPickerViewModel);
  }

  return result;
}

uint64_t AlertsPickerViewWatch.dismiss.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  _s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVG07WorkoutB0012PinnedBottomE13ModifierPhoneVGWOcTm_0(v2, &v14 - v9, &_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for DismissAction();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t AlertsPickerViewWatch.body.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = static HorizontalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA14GeometryReaderVyAA15ModifiedContentVyAA0F0VyAIyAMyAMyAMyAA6PickerVyAA05EmptyD0VSdAA7ForEachVySaySdGSdAA0D0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SdQo_GGAA06_FrameG0VGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleY0VyAA14TintShapeStyleVGG_AA6SpacerVtGGA5_GG_AMyAA6ButtonVyA0_G07WorkoutB0018PinnedBottomButtonY5PhoneVGtGGMd);
  closure #1 in AlertsPickerViewWatch.body.getter(v1, (a1 + *(v3 + 44)));
  v4 = *(v1 + *(type metadata accessor for AlertsPickerViewWatch() + 20) + 8);
  v6 = *(v4 + OBJC_IVAR____TtC9WorkoutUI21AlertsPickerViewModel_pickerText);
  v5 = *(v4 + OBJC_IVAR____TtC9WorkoutUI21AlertsPickerViewModel_pickerText + 8);
  v7 = *(v4 + OBJC_IVAR____TtC9WorkoutUI21AlertsPickerViewModel_color);
  swift_retain_n();

  v8 = static Edge.Set.all.getter();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA14GeometryReaderVyACyAEyAGyACyACyACyAA6PickerVyAA05EmptyG0VSdAA7ForEachVySaySdGSdAA0G0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SdQo_GGAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleW0VyAA09TintShapeZ0VGG_AA6SpacerVtGGA_GG_ACyAA6ButtonVyAVG07WorkoutB0018PinnedBottomButtonW5PhoneVGtGGA23_0jgW0VGMd);
  v10 = a1 + *(result + 36);
  *v10 = v6;
  *(v10 + 8) = v5;
  *(v10 + 16) = v7;
  *(v10 + 24) = v7;
  *(v10 + 32) = v8;
  return result;
}

uint64_t closure #1 in AlertsPickerViewWatch.body.getter@<X0>(uint64_t a1@<X0>, double (**a2)@<D0>(uint64_t a1@<X8>)@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVG07WorkoutB0012PinnedBottomE13ModifierPhoneVGMd);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  v10 = type metadata accessor for AlertsPickerViewWatch();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  outlined init with copy of AlertsPickerViewWatch(a1, &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v14 = swift_allocObject();
  outlined init with take of AlertsPickerViewWatch(&v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  outlined init with copy of AlertsPickerViewWatch(a1, &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = swift_allocObject();
  outlined init with take of AlertsPickerViewWatch(&v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v13);
  Button.init(action:label:)();
  _s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVG07WorkoutB0012PinnedBottomE13ModifierPhoneVGWOcTm_0(v9, v6, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVG07WorkoutB0012PinnedBottomE13ModifierPhoneVGMd);
  *a2 = partial apply for closure #1 in closure #1 in AlertsPickerViewWatch.body.getter;
  a2[1] = v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI14GeometryReaderVyAA15ModifiedContentVyAA6VStackVyAA9TupleViewVyAEyAEyAEyAA6PickerVyAA05EmptyI0VSdAA7ForEachVySaySdGSdAA0I0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SdQo_GGAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleW0VyAA09TintShapeZ0VGG_AA6SpacerVtGGA_GG_AEyAA6ButtonVyAVG07WorkoutB0018PinnedBottomButtonW5PhoneVGtMd);
  _s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVG07WorkoutB0012PinnedBottomE13ModifierPhoneVGWOcTm_0(v6, a2 + *(v16 + 48), &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVG07WorkoutB0012PinnedBottomE13ModifierPhoneVGMd);

  _s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVG07WorkoutB0012PinnedBottomE13ModifierPhoneVGWOhTm_0(v9, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVG07WorkoutB0012PinnedBottomE13ModifierPhoneVGMd);
  _s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVG07WorkoutB0012PinnedBottomE13ModifierPhoneVGWOhTm_0(v6, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVG07WorkoutB0012PinnedBottomE13ModifierPhoneVGMd);
}

double closure #1 in closure #1 in AlertsPickerViewWatch.body.getter@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *a2 = static HorizontalAlignment.center.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAKyAA6PickerVyAA05EmptyD0VSdAA7ForEachVySaySdGSdAA0D0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SdQo_GGAA06_FrameG0VGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleW0VyAA09TintShapeZ0VGG_AA6SpacerVtGGMd);
  closure #1 in closure #1 in closure #1 in AlertsPickerViewWatch.body.getter(a1, a2 + *(v4 + 44));
  GeometryProxy.size.getter();
  GeometryProxy.size.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v5 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyACyACyAA6PickerVyAA05EmptyG0VSdAA7ForEachVySaySdGSdAA0G0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SdQo_GGAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleU0VyAA09TintShapeX0VGG_AA6SpacerVtGGAYGMd) + 36));
  *v5 = v7;
  v5[1] = v8;
  result = *&v9;
  v5[2] = v9;
  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in AlertsPickerViewWatch.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v31 - v4;
  v33 = type metadata accessor for Font.TextStyle();
  v6 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6PickerVyAA9EmptyViewVSdAA7ForEachVySaySdGSdAA0G0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SdQo_GGAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleS0VyAA09TintShapeV0VGGMd);
  MEMORY[0x28223BE20](v32);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v31 - v12;
  v14 = (a1 + *(type metadata accessor for AlertsPickerViewWatch() + 20));
  v15 = *v14;
  v16 = v14[1];
  v17 = type metadata accessor for AlertsPickerViewModel();
  v18 = lazy protocol witness table accessor for type AlertsPickerViewModel and conformance AlertsPickerViewModel();
  MEMORY[0x20F308920](v15, v16, v17, v18);
  swift_getKeyPath();
  ObservedObject.Wrapper.subscript.getter();

  v35 = a1;
  v36 = v38;
  v37 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySaySdGSdAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SdQo_GMd);
  lazy protocol witness table accessor for type ForEach<[Double], Double, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0> and conformance <> ForEach<A, B, C>();
  Picker.init(selection:label:content:)();
  if (one-time initialization token for singlePickerHeight != -1)
  {
    swift_once();
  }

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v19 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6PickerVyAA9EmptyViewVSdAA7ForEachVySaySdGSdAA0G0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SdQo_GGAA12_FrameLayoutVGMd) + 36)];
  v20 = v39;
  *v19 = v38;
  *(v19 + 1) = v20;
  *(v19 + 2) = v40;
  v21 = v33;
  (*(v6 + 104))(v8, *MEMORY[0x277CE0A80], v33);
  v22 = *MEMORY[0x277CE09A0];
  v23 = type metadata accessor for Font.Design();
  v24 = *(v23 - 8);
  (*(v24 + 104))(v5, v22, v23);
  (*(v24 + 56))(v5, 0, 1, v23);
  v25 = static Font.system(_:design:weight:)();
  _s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVG07WorkoutB0012PinnedBottomE13ModifierPhoneVGWOhTm_0(v5, &_s7SwiftUI4FontV6DesignOSgMd);
  (*(v6 + 8))(v8, v21);
  KeyPath = swift_getKeyPath();
  v27 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6PickerVyAA9EmptyViewVSdAA7ForEachVySaySdGSdAA0G0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SdQo_GGAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMd) + 36)];
  *v27 = KeyPath;
  v27[1] = v25;
  TintShapeStyle.init()();
  sub_20C68B7D0(v13, v10);
  v28 = v34;
  sub_20C68B7D0(v10, v34);
  v29 = v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6PickerVyAA9EmptyViewVSdAA7ForEachVySaySdGSdAA0G0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SdQo_GGAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleS0VyAA09TintShapeV0VGG_AA6SpacerVtMd) + 48);
  sub_20C68B840(v13);
  *v29 = 0;
  *(v29 + 8) = 1;
  return sub_20C68B840(v10);
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in AlertsPickerViewWatch.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for AlertsPickerViewWatch();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v9[5] = *(*(a1 + *(v5 + 28) + 8) + OBJC_IVAR____TtC9WorkoutUI21AlertsPickerViewModel_pickerValues);
  swift_getKeyPath();
  outlined init with copy of AlertsPickerViewWatch(a1, v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  outlined init with take of AlertsPickerViewWatch(v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySdGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SdQo_Md);
  lazy protocol witness table accessor for type [Double] and conformance [A](&lazy protocol witness table cache variable for type [Double] and conformance [A], &_sSaySdGMd);
  v9[1] = MEMORY[0x277CE0BD8];
  v9[2] = MEMORY[0x277D839F8];
  v9[3] = MEMORY[0x277CE0BC8];
  v9[4] = MEMORY[0x277D83A18];
  swift_getOpaqueTypeConformance2();
  return ForEach<>.init(_:id:content:)();
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in AlertsPickerViewWatch.body.getter@<X0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  specialized AlertsPickerViewModel.pickerText(for:)(*a1);
  lazy protocol witness table accessor for type String and conformance String();
  result = Text.init<A>(_:)();
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  *(a2 + 24) = v7;
  *(a2 + 32) = v3;
  *(a2 + 40) = 1;
  return result;
}

uint64_t closure #2 in closure #1 in AlertsPickerViewWatch.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for DismissAction();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + *(type metadata accessor for AlertsPickerViewWatch() + 20) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v7 = v12;
  v8 = v6[3];
  v9 = v6[4];
  v12 = v6[2];
  v13 = v8;
  v14 = v9;
  v11 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySdGMd);
  Binding.wrappedValue.setter();
  AlertsPickerViewModel.updateValueDisplay()();
  AlertsPickerViewWatch.dismiss.getter(v5);
  DismissAction.callAsFunction()();
  return (*(v3 + 8))(v5, v2);
}

uint64_t closure #3 in closure #1 in AlertsPickerViewWatch.body.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = WorkoutUIBundle.super.isa;
  v10._object = 0xE000000000000000;
  v3._countAndFlagsBits = 0x535F535452454C41;
  v4.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v4.value._object = 0xEB00000000656C62;
  v3._object = 0xEA00000000005445;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v10._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v3, v4, v2, v5, v10);

  lazy protocol witness table accessor for type String and conformance String();
  result = Text.init<A>(_:)();
  *a1 = result;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8 & 1;
  *(a1 + 24) = v9;
  return result;
}

uint64_t outlined init with take of AlertsPickerViewWatch(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AlertsPickerViewWatch();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double partial apply for closure #1 in closure #1 in AlertsPickerViewWatch.body.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AlertsPickerViewWatch() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return closure #1 in closure #1 in AlertsPickerViewWatch.body.getter(v4, a1);
}

uint64_t partial apply for closure #2 in closure #1 in AlertsPickerViewWatch.body.getter()
{
  v1 = *(type metadata accessor for AlertsPickerViewWatch() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return closure #2 in closure #1 in AlertsPickerViewWatch.body.getter(v2);
}

uint64_t _s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVG07WorkoutB0012PinnedBottomE13ModifierPhoneVGWOcTm_0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ForEach<[Double], Double, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0> and conformance <> ForEach<A, B, C>()
{
  result = lazy protocol witness table cache variable for type ForEach<[Double], Double, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0> and conformance <> ForEach<A, B, C>;
  if (!lazy protocol witness table cache variable for type ForEach<[Double], Double, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0> and conformance <> ForEach<A, B, C>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7ForEachVySaySdGSdAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SdQo_GMd);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForEach<[Double], Double, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0> and conformance <> ForEach<A, B, C>);
  }

  return result;
}

uint64_t _s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVG07WorkoutB0012PinnedBottomE13ModifierPhoneVGWOhTm_0(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroyTm_59()
{
  v1 = *(type metadata accessor for AlertsPickerViewWatch() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = type metadata accessor for DismissAction();
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in AlertsPickerViewWatch.body.getter@<X0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for AlertsPickerViewWatch();

  return closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in AlertsPickerViewWatch.body.getter(a1, a2);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(GeometryReader<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Picker<EmptyView, Double, ForEach<[Double], Double, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, _FrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<TintShapeStyle>>, Spacer)>>, _FrameLayout>>, ModifiedContent<Button<Text>, PinnedBottomButtonModifierPhone>)>>, PickerViewModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(GeometryReader<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Picker<EmptyView, Double, ForEach<[Double], Double, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, _FrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<TintShapeStyle>>, Spacer)>>, _FrameLayout>>, ModifiedContent<Button<Text>, PinnedBottomButtonModifierPhone>)>>, PickerViewModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(GeometryReader<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Picker<EmptyView, Double, ForEach<[Double], Double, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, _FrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<TintShapeStyle>>, Spacer)>>, _FrameLayout>>, ModifiedContent<Button<Text>, PinnedBottomButtonModifierPhone>)>>, PickerViewModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA14GeometryReaderVyACyAEyAGyACyACyACyAA6PickerVyAA05EmptyG0VSdAA7ForEachVySaySdGSdAA0G0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SdQo_GGAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleW0VyAA09TintShapeZ0VGG_AA6SpacerVtGGA_GG_ACyAA6ButtonVyAVG07WorkoutB0018PinnedBottomButtonW5PhoneVGtGGA23_0jgW0VGMd);
    lazy protocol witness table accessor for type [Double] and conformance [A](&lazy protocol witness table cache variable for type VStack<TupleView<(GeometryReader<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Picker<EmptyView, Double, ForEach<[Double], Double, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, _FrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<TintShapeStyle>>, Spacer)>>, _FrameLayout>>, ModifiedContent<Button<Text>, PinnedBottomButtonModifierPhone>)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA14GeometryReaderVyAA15ModifiedContentVyACyAEyAIyAIyAIyAA6PickerVyAA05EmptyE0VSdAA7ForEachVySaySdGSdAA0E0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SdQo_GGAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleW0VyAA09TintShapeZ0VGG_AA6SpacerVtGGA_GG_AIyAA6ButtonVyAVG07WorkoutB0018PinnedBottomButtonW5PhoneVGtGGMd);
    lazy protocol witness table accessor for type PickerViewModifier and conformance PickerViewModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(GeometryReader<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Picker<EmptyView, Double, ForEach<[Double], Double, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, _FrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<TintShapeStyle>>, Spacer)>>, _FrameLayout>>, ModifiedContent<Button<Text>, PinnedBottomButtonModifierPhone>)>>, PickerViewModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [Double] and conformance [A](unint64_t *a1, uint64_t *a2)
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

uint64_t getEnumTagSinglePayload for EffortViewCurrentWorkloadButton(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for EffortViewCurrentWorkloadButton(uint64_t result, int a2, int a3)
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

void closure #1 in EffortViewCurrentWorkloadButton.body.getter(void (*a1)(double))
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &aBlock[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  a1(v4);
  v7 = [objc_opt_self() sharedApplication];
  LOBYTE(aBlock[0]) = 0;
  v15 = 4;
  TrainingLoadURLBuilder.url(route:source:)(aBlock, &v15, v6);
  URL._bridgeToObjectiveC()(v8);
  v10 = v9;
  (*(v3 + 8))(v6, v2);
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo38UIApplicationOpenExternalURLOptionsKeya_ypTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  type metadata accessor for UIApplicationOpenExternalURLOptionsKey(0);
  lazy protocol witness table accessor for type UIApplicationOpenExternalURLOptionsKey and conformance UIApplicationOpenExternalURLOptionsKey();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  aBlock[4] = closure #1 in closure #1 in EffortViewCurrentWorkloadButton.body.getter;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool) -> ();
  aBlock[3] = &block_descriptor_21;
  v12 = _Block_copy(aBlock);
  [v7 openURL:v10 options:isa completionHandler:v12];
  _Block_release(v12);
}

uint64_t closure #1 in closure #1 in EffortViewCurrentWorkloadButton.body.getter(char a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static WOLog.trainingLoad.getter();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 67109120;
    *(v8 + 4) = a1 & 1;
    _os_log_impl(&dword_20C66F000, v6, v7, "Launching Training Load Details Page Successful: %{BOOL}d", v8, 8u);
    MEMORY[0x20F30E080](v8, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

__n128 closure #2 in EffortViewCurrentWorkloadButton.body.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = static VerticalAlignment.center.getter();
  v41 = 1;
  closure #1 in closure #2 in EffortViewCurrentWorkloadButton.body.getter(&v27);
  v52 = v37;
  v53 = v38;
  v48 = v33;
  v49 = v34;
  v50 = v35;
  v51 = v36;
  v44 = v29;
  v45 = v30;
  v46 = v31;
  v47 = v32;
  v42 = v27;
  v43 = v28;
  v55[9] = v36;
  v55[10] = v37;
  v55[11] = v38;
  v55[6] = v33;
  v55[7] = v34;
  v55[8] = v35;
  v55[2] = v29;
  v55[3] = v30;
  v55[4] = v31;
  v55[5] = v32;
  v54 = v39;
  v56 = v39;
  v55[0] = v27;
  v55[1] = v28;
  outlined init with copy of TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _PaddingLayout>)>(&v42, v26, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA4TextVAA14_PaddingLayoutVG_AA6SpacerVAEyAEyAA5ImageVAIGAIGtGMd);
  outlined destroy of TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _PaddingLayout>)>(v55, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA4TextVAA14_PaddingLayoutVG_AA6SpacerVAEyAEyAA5ImageVAIGAIGtGMd);
  *&v40[151] = v51;
  *&v40[167] = v52;
  *&v40[183] = v53;
  *&v40[87] = v47;
  *&v40[103] = v48;
  *&v40[119] = v49;
  *&v40[135] = v50;
  *&v40[23] = v43;
  *&v40[39] = v44;
  *&v40[55] = v45;
  *&v40[71] = v46;
  v40[199] = v54;
  *&v40[7] = v42;
  v3 = v41;
  v4 = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  LOBYTE(v27) = 0;
  v13 = static Font.body.getter();
  KeyPath = swift_getKeyPath();
  v15 = static Color.white.getter();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v16 = swift_getKeyPath();
  v17 = *&v40[128];
  *(a1 + 161) = *&v40[144];
  v18 = *&v40[176];
  *(a1 + 177) = *&v40[160];
  *(a1 + 193) = v18;
  v19 = *&v40[64];
  *(a1 + 97) = *&v40[80];
  v20 = *&v40[112];
  *(a1 + 113) = *&v40[96];
  *(a1 + 129) = v20;
  *(a1 + 145) = v17;
  v21 = *v40;
  *(a1 + 33) = *&v40[16];
  v22 = *&v40[48];
  *(a1 + 49) = *&v40[32];
  *(a1 + 65) = v22;
  *(a1 + 81) = v19;
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = v3;
  *(a1 + 209) = *&v40[192];
  *(a1 + 17) = v21;
  *(a1 + 224) = v4;
  *(a1 + 232) = v6;
  *(a1 + 240) = v8;
  *(a1 + 248) = v10;
  *(a1 + 256) = v12;
  *(a1 + 264) = 0;
  *(a1 + 272) = KeyPath;
  *(a1 + 280) = v13;
  *(a1 + 288) = v15;
  v23 = v32;
  *(a1 + 360) = v31;
  *(a1 + 376) = v23;
  *(a1 + 392) = v33;
  v24 = v28;
  *(a1 + 296) = v27;
  *(a1 + 312) = v24;
  result = v30;
  *(a1 + 328) = v29;
  *(a1 + 344) = result;
  *(a1 + 408) = v16;
  *(a1 + 416) = 2;
  *(a1 + 424) = 0;
  *(a1 + 432) = 0x402C000000000000;
  return result;
}

uint64_t closure #1 in closure #2 in EffortViewCurrentWorkloadButton.body.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = WorkoutUIBundle.super.isa;
  v86._object = 0xE000000000000000;
  v3.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v3.value._object = 0xEB00000000656C62;
  v4._object = 0x800000020CB9D200;
  v4._countAndFlagsBits = 0xD000000000000015;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v86._countAndFlagsBits = 0;
  object = NSLocalizedString(_:tableName:bundle:value:comment:)(v4, v3, v2, v5, v86)._object;

  v74 = object;
  lazy protocol witness table accessor for type String and conformance String();
  v7 = Text.init<A>(_:)();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  LOBYTE(v2) = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = Image.init(systemName:)();
  v23 = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v32 = static Edge.Set.trailing.getter();
  EdgeInsets.init(_all:)();
  *&v58 = v7;
  *(&v58 + 1) = v9;
  LOBYTE(v59) = v11 & 1;
  *(&v59 + 1) = v13;
  LOBYTE(v60) = v2;
  *(&v60 + 1) = v15;
  *v61 = v17;
  *&v61[8] = v19;
  *&v61[16] = v21;
  v61[24] = 0;
  v69 = v58;
  *(v72 + 9) = *&v61[9];
  v71 = v60;
  v72[0] = *v61;
  v70 = v59;
  v57 = 1;
  *&v62 = v22;
  BYTE8(v62) = v23;
  *&v63 = v25;
  *(&v63 + 1) = v27;
  *&v64 = v29;
  *(&v64 + 1) = v31;
  LOBYTE(v65) = 0;
  BYTE8(v65) = v32;
  *&v66 = v33;
  *(&v66 + 1) = v34;
  *&v67 = v35;
  *(&v67 + 1) = v36;
  v68 = 0;
  *&v56[39] = v64;
  *&v56[23] = v63;
  *&v56[7] = v62;
  v56[103] = 0;
  *&v56[87] = v67;
  *&v56[71] = v66;
  *&v56[55] = v65;
  v37 = v58;
  v38 = v59;
  v39 = v72[1];
  *(a1 + 48) = *v61;
  *(a1 + 64) = v39;
  v40 = v71;
  *(a1 + 16) = v38;
  *(a1 + 32) = v40;
  *a1 = v37;
  *(a1 + 80) = 0;
  *(a1 + 88) = 1;
  v41 = *v56;
  v42 = *&v56[16];
  v43 = *&v56[48];
  *(a1 + 121) = *&v56[32];
  *(a1 + 105) = v42;
  *(a1 + 89) = v41;
  v44 = *&v56[64];
  v45 = *&v56[80];
  *(a1 + 185) = *&v56[96];
  *(a1 + 169) = v45;
  *(a1 + 153) = v44;
  *(a1 + 137) = v43;
  v73 = v22;
  LOBYTE(v74) = v23;
  v75 = v25;
  v76 = v27;
  v77 = v29;
  v78 = v31;
  v79 = 0;
  v80 = v32;
  v81 = v33;
  v82 = v34;
  v83 = v35;
  v84 = v36;
  v85 = 0;
  outlined init with copy of TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _PaddingLayout>)>(&v58, v47, &_s7SwiftUI15ModifiedContentVyAA4TextVAA14_PaddingLayoutVGMd);
  outlined init with copy of TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _PaddingLayout>)>(&v62, v47, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA14_PaddingLayoutVGAGGMd);
  outlined destroy of TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _PaddingLayout>)>(&v73, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA14_PaddingLayoutVGAGGMd);
  v47[0] = v7;
  v47[1] = v9;
  v48 = v11 & 1;
  v49 = v13;
  v50 = v2;
  v51 = v15;
  v52 = v17;
  v53 = v19;
  v54 = v21;
  v55 = 0;
  return outlined destroy of TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _PaddingLayout>)>(v47, &_s7SwiftUI15ModifiedContentVyAA4TextVAA14_PaddingLayoutVGMd);
}

__n128 protocol witness for View.body.getter in conformance EffortViewCurrentWorkloadButton@<Q0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA6HStackVyAA9TupleViewVyACyAA4TextVAA14_PaddingLayoutVG_AA6SpacerVACyACyAA5ImageVAKGAKGtGGAKGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleP0VyAA5ColorVGGAA010_FlexFrameJ0VGAWySiSgGG07WorkoutB0022EffortButtonBackgroundP0VGMd);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _PaddingLayout>)>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Int?>>, EffortButtonBackgroundModifier> and conformance <> ModifiedContent<A, B>();
  Button.init(action:label:)();
  v6 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyACyACyACyACyACyACyAA6HStackVyAA9TupleViewVyACyAA4TextVAA14_PaddingLayoutVG_AA6SpacerVACyACyAA5ImageVAMGAMGtGGAMGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleQ0VyAA5ColorVGGAA010_FlexFrameK0VGAYySiSgGG07WorkoutB006Efforte10BackgroundQ0VGGAA01_d9ShapeKindQ0VyAA16RoundedRectangleVGGMd) + 36));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI25_ContentShapeKindModifierVyAA16RoundedRectangleVGMd);
  static ContentShapeKinds.accessibility.getter();
  v8 = *(type metadata accessor for RoundedRectangle() + 20);
  v9 = *MEMORY[0x277CE0118];
  v10 = type metadata accessor for RoundedCornerStyle();
  (*(*(v10 - 8) + 104))(v6 + v8, v9, v10);
  __asm { FMOV            V0.2D, #14.0 }

  *v6 = result;
  v6->n128_u8[*(v7 + 36)] = 0;
  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _PaddingLayout>)>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Int?>>, EffortButtonBackgroundModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _PaddingLayout>)>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Int?>>, EffortButtonBackgroundModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _PaddingLayout>)>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Int?>>, EffortButtonBackgroundModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA6HStackVyAA9TupleViewVyACyAA4TextVAA14_PaddingLayoutVG_AA6SpacerVACyACyAA5ImageVAKGAKGtGGAKGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleP0VyAA5ColorVGGAA010_FlexFrameJ0VGAWySiSgGG07WorkoutB0022EffortButtonBackgroundP0VGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _PaddingLayout>)>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type EffortButtonBackgroundModifier and conformance EffortButtonBackgroundModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _PaddingLayout>)>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Int?>>, EffortButtonBackgroundModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _PaddingLayout>)>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _PaddingLayout>)>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _PaddingLayout>)>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6HStackVyAA9TupleViewVyACyAA4TextVAA14_PaddingLayoutVG_AA6SpacerVACyACyAA5ImageVAKGAKGtGGAKGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleP0VyAA5ColorVGGAA010_FlexFrameJ0VGAWySiSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _PaddingLayout>)>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _PaddingLayout>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Int?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVySiSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _PaddingLayout>)>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _PaddingLayout>)>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _PaddingLayout>)>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _PaddingLayout>)>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA6HStackVyAA9TupleViewVyACyAA4TextVAA14_PaddingLayoutVG_AA6SpacerVACyACyAA5ImageVAKGAKGtGGAKGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleP0VyAA5ColorVGGAA010_FlexFrameJ0VGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _PaddingLayout>)>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _PaddingLayout>)>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _PaddingLayout>)>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _PaddingLayout>)>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _PaddingLayout>)>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyACyAA4TextVAA14_PaddingLayoutVG_AA6SpacerVACyACyAA5ImageVAKGAKGtGGAKGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleP0VyAA5ColorVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _PaddingLayout>)>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _PaddingLayout>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type _ForegroundStyleModifier<Color> and conformance _ForegroundStyleModifier<A>, &_s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _PaddingLayout>)>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _PaddingLayout>)>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _PaddingLayout>)>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _PaddingLayout>)>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyAA4TextVAA14_PaddingLayoutVG_AA6SpacerVACyACyAA5ImageVAKGAKGtGGAKGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _PaddingLayout>)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _PaddingLayout>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _PaddingLayout>)>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _PaddingLayout>)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _PaddingLayout>)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _PaddingLayout>)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyAA4TextVAA14_PaddingLayoutVG_AA6SpacerVACyACyAA5ImageVAKGAKGtGGAKGMd);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _PaddingLayout>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _PaddingLayout>)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA4TextVAA14_PaddingLayoutVG_AA6SpacerVAGyAGyAA5ImageVAKGAKGtGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _PaddingLayout>)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EffortButtonBackgroundModifier and conformance EffortButtonBackgroundModifier()
{
  result = lazy protocol witness table cache variable for type EffortButtonBackgroundModifier and conformance EffortButtonBackgroundModifier;
  if (!lazy protocol witness table cache variable for type EffortButtonBackgroundModifier and conformance EffortButtonBackgroundModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EffortButtonBackgroundModifier and conformance EffortButtonBackgroundModifier);
  }

  return result;
}

uint64_t outlined init with copy of TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _PaddingLayout>)>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _PaddingLayout>)>(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type UIApplicationOpenExternalURLOptionsKey and conformance UIApplicationOpenExternalURLOptionsKey()
{
  result = lazy protocol witness table cache variable for type UIApplicationOpenExternalURLOptionsKey and conformance UIApplicationOpenExternalURLOptionsKey;
  if (!lazy protocol witness table cache variable for type UIApplicationOpenExternalURLOptionsKey and conformance UIApplicationOpenExternalURLOptionsKey)
  {
    type metadata accessor for UIApplicationOpenExternalURLOptionsKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UIApplicationOpenExternalURLOptionsKey and conformance UIApplicationOpenExternalURLOptionsKey);
  }

  return result;
}

uint64_t block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Button<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _PaddingLayout>)>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Int?>>, EffortButtonBackgroundModifier>>, _ContentShapeKindModifier<RoundedRectangle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Button<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _PaddingLayout>)>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Int?>>, EffortButtonBackgroundModifier>>, _ContentShapeKindModifier<RoundedRectangle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Button<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _PaddingLayout>)>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Int?>>, EffortButtonBackgroundModifier>>, _ContentShapeKindModifier<RoundedRectangle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyACyACyACyACyACyACyAA6HStackVyAA9TupleViewVyACyAA4TextVAA14_PaddingLayoutVG_AA6SpacerVACyACyAA5ImageVAMGAMGtGGAMGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleQ0VyAA5ColorVGGAA010_FlexFrameK0VGAYySiSgGG07WorkoutB006Efforte10BackgroundQ0VGGAA01_d9ShapeKindQ0VyAA16RoundedRectangleVGGMd);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _PaddingLayout>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Button<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _PaddingLayout>)>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Int?>>, EffortButtonBackgroundModifier>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAEyAEyAEyAA6HStackVyAA9TupleViewVyAEyAA4TextVAA14_PaddingLayoutVG_AA6SpacerVAEyAEyAA5ImageVAMGAMGtGGAMGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleQ0VyAA5ColorVGGAA010_FlexFrameK0VGAYySiSgGG07WorkoutB006Effortc10BackgroundQ0VGGMd);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _PaddingLayout>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type _ContentShapeKindModifier<RoundedRectangle> and conformance _ContentShapeKindModifier<A>, &_s7SwiftUI25_ContentShapeKindModifierVyAA16RoundedRectangleVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Button<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _PaddingLayout>)>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Int?>>, EffortButtonBackgroundModifier>>, _ContentShapeKindModifier<RoundedRectangle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _PaddingLayout>)>> and conformance HStack<A>(unint64_t *a1, uint64_t *a2)
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

uint64_t getEnumTagSinglePayload for RaceStartWorkoutButton(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for RaceStartWorkoutButton(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t RaceStartWorkoutButton.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for BorderedProminentButtonStyle();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA4TextVAA16_FlexFrameLayoutVGGMd);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v22[-v10];
  v12 = swift_allocObject();
  v13 = *(v2 + 16);
  *(v12 + 16) = *v2;
  *(v12 + 32) = v13;
  *(v12 + 48) = *(v2 + 32);
  *(v12 + 64) = *(v2 + 48);
  v23 = v2;
  outlined init with copy of RaceStartWorkoutButton(v2, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA16_FlexFrameLayoutVGMd);
  lazy protocol witness table accessor for type ModifiedContent<Text, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
  Button.init(action:label:)();
  BorderedProminentButtonStyle.init()();
  _s7SwiftUI6ButtonVyAA15ModifiedContentVyAA4TextVAA16_FlexFrameLayoutVGGACyxGAA4ViewAAWlTm_0(&lazy protocol witness table cache variable for type Button<ModifiedContent<Text, _FlexFrameLayout>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA4TextVAA16_FlexFrameLayoutVGGMd);
  _s7SwiftUI28BorderedProminentButtonStyleVAcA09PrimitiveeF0AAWlTm_1(&lazy protocol witness table cache variable for type BorderedProminentButtonStyle and conformance BorderedProminentButtonStyle, MEMORY[0x277CDE400]);
  View.buttonStyle<A>(_:)();
  (*(v5 + 8))(v7, v4);
  (*(v9 + 8))(v11, v8);
  v14 = static Color.black.getter();
  KeyPath = swift_getKeyPath();
  v16 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyAA4TextVAA16_FlexFrameLayoutVGG_AA017BorderedProminentiG0VQo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd) + 36));
  *v16 = KeyPath;
  v16[1] = v14;
  v17 = static Font.headline.getter();
  v18 = swift_getKeyPath();
  v19 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyAA4TextVAA16_FlexFrameLayoutVGG_AA017BorderedProminentiG0VQo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGATyAA4FontVSgGGMd) + 36));
  *v19 = v18;
  v19[1] = v17;
  v24[0] = static Color.clear.getter();
  v20 = AnyView.init<A>(_:)();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyAA4TextVAA16_FlexFrameLayoutVGG_AA017BorderedProminentiG0VQo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGATyAA4FontVSgGGAA06_TraitrS0VyAA017ListRowBackgroundvQ0VGGMd);
  *(a1 + *(result + 36)) = v20;
  return result;
}

uint64_t closure #1 in RaceStartWorkoutButton.body.getter(uint64_t *a1)
{
  v1 = *a1;
  if (*a1)
  {
    v2 = a1[6];
    swift_beginAccess();
    v3 = *(v1 + 16);

    v4 = v3;
    v5 = dispatch thunk of QuickWorkoutSwitchProvider.quickWorkoutSwitch.getter();

    if (v5)
    {
      v6 = 8;
    }

    else
    {
      v6 = 15;
    }

    v7 = *(v1 + 16);
    dispatch thunk of QuickWorkoutSwitchProvider.quickWorkoutSwitch.setter();

    v8 = *(v1 + OBJC_IVAR____TtC9WorkoutUI28ConfigurationNavigationModel__startWorkout);

    v8(v2, v6);
  }

  else
  {
    type metadata accessor for ConfigurationNavigationModel();
    _s7SwiftUI28BorderedProminentButtonStyleVAcA09PrimitiveeF0AAWlTm_1(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

__n128 closure #2 in RaceStartWorkoutButton.body.getter@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v11 = *(a1 + 32);
  lazy protocol witness table accessor for type String and conformance String();

  v3 = Text.init<A>(_:)();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *a2 = v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = v7 & 1;
  *(a2 + 24) = v9;
  *(a2 + 96) = v15;
  *(a2 + 112) = v16;
  *(a2 + 128) = v17;
  *(a2 + 32) = v11;
  *(a2 + 48) = v12;
  result = v14;
  *(a2 + 64) = v13;
  *(a2 + 80) = v14;
  return result;
}

uint64_t _s7SwiftUI28BorderedProminentButtonStyleVAcA09PrimitiveeF0AAWlTm_1(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyAA4TextVAA16_FlexFrameLayoutVGG_AA017BorderedProminentiG0VQo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGATyAA4FontVSgGGAA06_TraitrS0VyAA017ListRowBackgroundvQ0VGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    _s7SwiftUI6ButtonVyAA15ModifiedContentVyAA4TextVAA16_FlexFrameLayoutVGGACyxGAA4ViewAAWlTm_0(&lazy protocol witness table cache variable for type _TraitWritingModifier<ListRowBackgroundTraitKey> and conformance _TraitWritingModifier<A>, &_s7SwiftUI21_TraitWritingModifierVyAA017ListRowBackgroundC3KeyVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t _s7SwiftUI6ButtonVyAA15ModifiedContentVyAA4TextVAA16_FlexFrameLayoutVGGACyxGAA4ViewAAWlTm_0(unint64_t *a1, uint64_t *a2)
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

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyx07WorkoutB027StackedListSectionsModifier33_B33B451D6D59C74C7A089BCD2EE64343LLVGAaBHPxAaBHD1__AhA0cJ0HPyHCHCTm(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  type metadata accessor for ModifiedContent();
  a3();
  return swift_getWitnessTable();
}

uint64_t protocol witness for ViewModifier.body(content:) in conformance StackedListSectionsModifier@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  v6 = *(*(v5 - 8) + 16);

  return v6(a3, a1, v5);
}

uint64_t lazy protocol witness table accessor for type _ViewModifier_Content<UnstackedSectionSpacingModifier> and conformance _ViewModifier_Content<A>(unint64_t *a1, uint64_t *a2)
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

Swift::Void __swiftcall UIViewController.setNavigationItemForegroundColor(_:)(UIColor a1)
{
  v2 = v1;
  v4 = [v2 navigationController];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 navigationBar];

    v7 = [v6 standardAppearance];
    v8 = [v7 copy];

    v9 = [v8 buttonAppearance];
    v10 = [v9 normal];
    v11 = [v10 titleTextAttributes];

    type metadata accessor for NSAttributedStringKey(0);
    lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey();
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v12 = *MEMORY[0x277D740C0];
    v20 = type metadata accessor for UIColor();
    *&v19 = a1;
    outlined init with take of Any(&v19, v18);
    v13 = a1.super.isa;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v18, v12, isUniquelyReferenced_nonNull_native);
    v15 = [v9 normal];
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v15 setTitleTextAttributes_];

    [v8 setButtonAppearance_];
    v17 = [v2 navigationItem];
    [v17 setStandardAppearance_];
  }
}

unint64_t lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey()
{
  result = lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey;
  if (!lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey)
  {
    type metadata accessor for NSAttributedStringKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey);
  }

  return result;
}

unint64_t DataLinkWorkoutState.description.getter()
{
  v1 = 0x657669746341;
  v2 = 0x726F576E49746F4ELL;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000012;
  }

  if (*v0)
  {
    v1 = 0xD00000000000001ELL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

WorkoutUI::DataLinkWorkoutState_optional __swiftcall DataLinkWorkoutState.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t lazy protocol witness table accessor for type DataLinkWorkoutState and conformance DataLinkWorkoutState()
{
  result = lazy protocol witness table cache variable for type DataLinkWorkoutState and conformance DataLinkWorkoutState;
  if (!lazy protocol witness table cache variable for type DataLinkWorkoutState and conformance DataLinkWorkoutState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DataLinkWorkoutState and conformance DataLinkWorkoutState);
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DataLinkWorkoutState()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DataLinkWorkoutState()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v1);
  return Hasher._finalize()();
}