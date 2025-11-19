uint64_t storeEnumTagSinglePayload for CyclingPowerZonesConfiguration.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t base witness table accessor for Equatable in NLWorkoutPausedReason()
{
  return lazy protocol witness table accessor for type FunctionalThresholdPower and conformance FunctionalThresholdPower(&lazy protocol witness table cache variable for type NLWorkoutPausedReason and conformance NLWorkoutPausedReason, type metadata accessor for NLWorkoutPausedReason);
}

{
  return _s10Foundation4DateVACSeAAWlTm_1(&lazy protocol witness table cache variable for type NLWorkoutPausedReason and conformance NLWorkoutPausedReason, type metadata accessor for NLWorkoutPausedReason);
}

unint64_t specialized CyclingPowerZonesConfiguration.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of CyclingPowerZonesConfiguration.CodingKeys.init(rawValue:), v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

uint64_t specialized SetAlgebra<>.init(arrayLiteral:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t outlined destroy of (CyclingPowerZonesSize, [CyclingPowerZone])(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore21CyclingPowerZonesSizeO_SayAA0cD4ZoneCGtMd, &_s11WorkoutCore21CyclingPowerZonesSizeO_SayAA0cD4ZoneCGtMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for UIBackgroundTaskIdentifier(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t GoalWorkoutConfiguration.analyticsKey.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v0 = [v2 goalTypeIdentifier];

  if (v0 > 1)
  {
    if (v0 != 2)
    {
      if (v0 == 3)
      {
        return 0x796772656E65;
      }

      return 0x6E776F6E6B6E75;
    }

    return 1701669236;
  }

  else
  {
    if (v0)
    {
      if (v0 == 1)
      {
        return 0x65636E6174736964;
      }

      return 0x6E776F6E6B6E75;
    }

    return 1852141679;
  }
}

uint64_t key path getter for GoalWorkoutConfiguration.goal : GoalWorkoutConfiguration@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t key path setter for GoalWorkoutConfiguration.goal : GoalWorkoutConfiguration(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  v5 = v2;
  return static Published.subscript.setter();
}

void *specialized static ChartDataProvider.makeFakePowerSamples(startDate:workoutDuration:values:)(uint64_t a1, uint64_t a2)
{
  v34 = a1;
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v28 - v9;
  v11 = *(a2 + 16);
  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v35 = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    v33 = a2 + 32;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v13 = 0;
    v15 = *(v4 + 16);
    v14 = v4 + 16;
    v30 = *MEMORY[0x277CCCC38];
    v31 = v15;
    v28 = (v14 - 8);
    v29 = v11;
    while (1)
    {
      v16 = *(v33 + 8 * v13);
      v17 = v14;
      v31(v8, v34, v3);
      Date.init(timeInterval:since:)();
      result = [ObjCClassFromMetadata quantityTypeForIdentifier_];
      if (!result)
      {
        break;
      }

      v19 = result;
      ++v13;
      v20 = [objc_opt_self() wattUnit];
      v21 = [objc_opt_self() quantityWithUnit:v20 doubleValue:v16];

      static Date.+ infix(_:_:)();
      isa = Date._bridgeToObjectiveC()().super.isa;
      v23 = Date._bridgeToObjectiveC()().super.isa;
      v24 = [objc_opt_self() quantitySampleWithType:v19 quantity:v21 startDate:isa endDate:v23];

      v25 = *v28;
      (*v28)(v8, v3);
      v25(v10, v3);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v26 = *(v35 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v14 = v17;
      if (v29 == v13)
      {
        v12 = v35;
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:
    v27 = specialized _arrayForceCast<A, B>(_:)(v12);

    return v27;
  }

  return result;
}

void *specialized static ChartDataProvider.makeFakePowerSamples(startDate:workoutDuration:minValue:maxValue:)(uint64_t a1, double a2, double a3, double a4)
{
  v40 = a1;
  v7 = type metadata accessor for Date();
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v15 = &v36 - v14;
  v41 = MEMORY[0x277D84F90];
  v16 = a2 / 5.0;
  if (COERCE__INT64(fabs(a2 / 5.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v16 <= -9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v16 >= 9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v16 < 0)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v16)
  {
    v17 = 0;
    v18 = 360.0 / v16;
    v19 = (a4 - a3) * 0.5;
    v20 = v19 + a3;
    v38 = *(v13 + 16);
    v37 = *MEMORY[0x277CCCC38];
    v39 = v13 + 16;
    v21 = (v13 + 8);
    v36 = v16;
    while (1)
    {
      v22 = v17;
      v23 = v17;
      v38(v11, v40, v7);
      Date.init(timeInterval:since:)();
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
      result = [swift_getObjCClassFromMetadata() quantityTypeForIdentifier_];
      if (!result)
      {
        goto LABEL_18;
      }

      v24 = result;
      v25 = v20 + v19 * sin(v18 * v23 * 0.0174532925);
      v26 = [objc_opt_self() wattUnit];
      v27 = [objc_opt_self() quantityWithUnit:v26 doubleValue:v25];

      static Date.+ infix(_:_:)();
      isa = Date._bridgeToObjectiveC()().super.isa;
      v29 = Date._bridgeToObjectiveC()().super.isa;
      v30 = [objc_opt_self() quantitySampleWithType:v24 quantity:v27 startDate:isa endDate:v29];

      v31 = *v21;
      (*v21)(v11, v7);
      v32 = v30;
      MEMORY[0x20F2E6F30]();
      if (*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v33 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v31(v15, v7);
      v17 = v22 + 1;
      if (v36 == v22 + 1)
      {
        v34 = v41;
        goto LABEL_13;
      }
    }
  }

  v34 = MEMORY[0x277D84F90];
LABEL_13:
  v35 = specialized _arrayForceCast<A, B>(_:)(v34);

  return v35;
}

uint64_t specialized static ChartDataProvider.fakePowerData(values:)(uint64_t a1)
{
  v45 = a1;
  v1 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v43 = *(v1 - 8);
  v44 = v1;
  v2 = *(v43 + 64);
  MEMORY[0x28223BE20](v1);
  v42 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for OS_dispatch_queue.Attributes();
  v4 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41);
  v40 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C16ChartDataElementCGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C16ChartDataElementCGGMR);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v35 - v11;
  v13 = type metadata accessor for Date();
  v38 = *(v13 - 8);
  v14 = v38;
  v39 = v13;
  v15 = *(v38 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v35 - v19;
  v21 = [objc_opt_self() wattUnit];
  static Date.now.getter();
  Date.init(timeInterval:since:)();
  (*(v14 + 16))(v18, v20, v13);
  v22 = type metadata accessor for ChartDataProvider();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  v25 = swift_allocObject();
  v26 = OBJC_IVAR____TtC11WorkoutCore17ChartDataProvider__dataElements;
  v27 = MEMORY[0x277D84F90];
  v46 = MEMORY[0x277D84F90];
  v37 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore0A16ChartDataElementCGMd, &_sSay11WorkoutCore0A16ChartDataElementCGMR);
  Published.init(initialValue:)();
  (*(v9 + 32))(v25 + v26, v12, v8);
  v28 = OBJC_IVAR____TtC11WorkoutCore17ChartDataProvider_dataBuckets;
  *(v25 + v28) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4DateV_11WorkoutCore0E10DataBucketCTt0g5Tf4g_n(v27);
  v36 = OBJC_IVAR____TtC11WorkoutCore17ChartDataProvider_processingQueue;
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  static DispatchQoS.unspecified.getter();
  v46 = v27;
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]();
  v29 = v37;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v43 + 104))(v42, *MEMORY[0x277D85260], v44);
  v30 = v38;
  *(v25 + v36) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v31 = v39;
  (*(v30 + 32))(v25 + OBJC_IVAR____TtC11WorkoutCore17ChartDataProvider_startDate, v18, v39);
  v32 = v45;
  *(v25 + OBJC_IVAR____TtC11WorkoutCore17ChartDataProvider_units) = v29;
  *(v25 + OBJC_IVAR____TtC11WorkoutCore17ChartDataProvider_timeWindow) = 0x4082C00000000000;
  *(v25 + OBJC_IVAR____TtC11WorkoutCore17ChartDataProvider_maxBuckets) = 48;
  *(v25 + OBJC_IVAR____TtC11WorkoutCore17ChartDataProvider_populateAsynchronously) = 0;
  if (v32)
  {
    v33 = specialized static ChartDataProvider.makeFakePowerSamples(startDate:workoutDuration:values:)(v20, v32);
  }

  else
  {
    v33 = specialized static ChartDataProvider.makeFakePowerSamples(startDate:workoutDuration:minValue:maxValue:)(v20, 600.0, 200.0, 300.0);
  }

  ChartDataProvider.add(samples:)(v33);

  (*(v30 + 8))(v20, v31);
  return v25;
}

char *specialized static ChartDataProvider.fakeElevationData(unit:)(void *a1)
{
  v62 = a1;
  v1 = type metadata accessor for ElevationSample();
  v68 = *(v1 - 8);
  v69 = v1;
  v2 = *(v68 + 64);
  v3 = MEMORY[0x28223BE20](v1);
  v70 = v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = v56 - v5;
  v7 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v64 = *(v7 - 1);
  v65 = v7;
  v8 = v64[8];
  MEMORY[0x28223BE20](v7);
  v63 = v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for OS_dispatch_queue.Attributes();
  v10 = *(*(v61 - 8) + 64);
  MEMORY[0x28223BE20](v61);
  v60 = v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v59 = v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C16ChartDataElementCGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C16ChartDataElementCGGMR);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = v56 - v18;
  v20 = type metadata accessor for Date();
  v58 = *(v20 - 8);
  v21 = v58;
  v22 = *(v58 + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = v56 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v23);
  v28 = v56 - v27;
  v71 = v56 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = v56 - v29;
  static Date.now.getter();
  Date.init(timeInterval:since:)();
  v31 = *(v21 + 16);
  v72 = v30;
  v66 = v31;
  v67 = v21 + 16;
  v31(v28, v30, v20);
  v32 = type metadata accessor for ChartDataProvider();
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  v35 = swift_allocObject();
  v36 = OBJC_IVAR____TtC11WorkoutCore17ChartDataProvider__dataElements;
  v37 = MEMORY[0x277D84F90];
  v73 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore0A16ChartDataElementCGMd, &_sSay11WorkoutCore0A16ChartDataElementCGMR);
  Published.init(initialValue:)();
  (*(v16 + 32))(v35 + v36, v19, v15);
  v38 = OBJC_IVAR____TtC11WorkoutCore17ChartDataProvider_dataBuckets;
  *(v35 + v38) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4DateV_11WorkoutCore0E10DataBucketCTt0g5Tf4g_n(v37);
  v57 = OBJC_IVAR____TtC11WorkoutCore17ChartDataProvider_processingQueue;
  v56[1] = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  static DispatchQoS.unspecified.getter();
  v73 = v37;
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (v64[13])(v63, *MEMORY[0x277D85260], v65);
  v39 = v70;
  *(v35 + v57) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v40 = v58 + 32;
  (*(v58 + 32))(v35 + OBJC_IVAR____TtC11WorkoutCore17ChartDataProvider_startDate, v71, v20);
  v41 = v62;
  *(v35 + OBJC_IVAR____TtC11WorkoutCore17ChartDataProvider_units) = v62;
  *(v35 + OBJC_IVAR____TtC11WorkoutCore17ChartDataProvider_timeWindow) = 0x409C200000000000;
  *(v35 + OBJC_IVAR____TtC11WorkoutCore17ChartDataProvider_maxBuckets) = 48;
  v63 = v35;
  *(v35 + OBJC_IVAR____TtC11WorkoutCore17ChartDataProvider_populateAsynchronously) = 0;
  v65 = objc_opt_self();
  v64 = objc_opt_self();
  v42 = (v40 - 24);
  v43 = v41;
  v44 = 0;
  do
  {
    v45 = sin(v44 * 7.5 * 0.0174532925) * 125.0 + 175.0;
    v46 = v66;
    v66(v71, v72, v20);
    Date.init(timeInterval:since:)();
    v46(v6, v25, v20);
    v47 = [v65 footUnit];
    v48 = [v64 quantityWithUnit:v47 doubleValue:v45];

    *&v6[*(v69 + 20)] = v48;
    outlined init with copy of ElevationSample(v6, v39);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v37[2] + 1, 1, v37);
    }

    v50 = v37[2];
    v49 = v37[3];
    if (v50 >= v49 >> 1)
    {
      v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v49 > 1, v50 + 1, 1, v37);
    }

    ++v44;
    outlined destroy of ElevationSample(v6);
    v51 = *v42;
    (*v42)(v25, v20);
    v37[2] = v50 + 1;
    v52 = v37 + ((*(v68 + 80) + 32) & ~*(v68 + 80)) + *(v68 + 72) * v50;
    v39 = v70;
    outlined init with take of ElevationSample(v70, v52);
  }

  while (v44 != 48);
  v53 = specialized _arrayForceCast<A, B>(_:)(v37);

  v54 = v63;
  ChartDataProvider.add(samples:)(v53);

  v51(v72, v20);
  return v54;
}

unint64_t lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes()
{
  result = lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes;
  if (!lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes)
  {
    type metadata accessor for OS_dispatch_queue.Attributes();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A];
  if (!lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A]);
  }

  return result;
}

uint64_t outlined init with copy of ElevationSample(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ElevationSample();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of ElevationSample(uint64_t a1)
{
  v2 = type metadata accessor for ElevationSample();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with take of ElevationSample(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ElevationSample();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

WorkoutCore::FakeableMetric __swiftcall FakeableMetric.init(key:value:)(Swift::String key, Swift::Double value)
{
  *v2 = key;
  *(v2 + 16) = value;
  result.key = key;
  result.value = value;
  return result;
}

double FakeableMetric.wrappedValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = v0[2];
  v4 = objc_opt_self();
  if ([v4 shouldShowFakeData])
  {
    v5 = MEMORY[0x20F2E6C00](*&v1, v2);
    v6 = [v4 fakeValueForKey_];

    if (v6)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      memset(v10, 0, sizeof(v10));
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
    v7 = Optional._bridgeToObjectiveC()();
    outlined destroy of Any?(v10);
    v3 = 0.0;
    if ([v7 respondsToSelector_])
    {
      [v7 doubleValue];
      v3 = v8;
    }

    swift_unknownObjectRelease();
  }

  return v3;
}

double (*FakeableMetric.wrappedValue.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  *a1 = FakeableMetric.wrappedValue.getter();
  return FakeableMetric.wrappedValue.modify;
}

double FakeableMetric.wrappedValue.modify(uint64_t a1)
{
  result = *a1;
  *(*(a1 + 8) + 16) = *a1;
  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for FakeableMetric(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t storeEnumTagSinglePayload for FakeableMetric(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t FIUIWorkoutActivityType.ActivityTypeMetadata.encode(to:)(void *a1, uint64_t a2, unint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVySo23FIUIWorkoutActivityTypeC11WorkoutCoreE0eF8Metadata33_B1F58F99D22EFFC3BA188270C3371452LLV10CodingKeysOGMd, &_ss22KeyedEncodingContainerVySo23FIUIWorkoutActivityTypeC11WorkoutCoreE0eF8Metadata33_B1F58F99D22EFFC3BA188270C3371452LLV10CodingKeysOGMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type FIUIWorkoutActivityType.ActivityTypeMetadata.CodingKeys and conformance FIUIWorkoutActivityType.ActivityTypeMetadata.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = a2;
  v14 = a3;
  outlined copy of Data?(a2, a3);
  lazy protocol witness table accessor for type Data and conformance Data();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  outlined consume of Data?(v13, v14);
  return (*(v7 + 8))(v10, v6);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance FIUIWorkoutActivityType.ActivityTypeMetadata.CodingKeys()
{
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance FIUIWorkoutActivityType.ActivityTypeMetadata.CodingKeys()
{
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](0);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance FIUIWorkoutActivityType.ActivityTypeMetadata.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance FIUIWorkoutActivityType.ActivityTypeMetadata.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type FIUIWorkoutActivityType.ActivityTypeMetadata.CodingKeys and conformance FIUIWorkoutActivityType.ActivityTypeMetadata.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance FIUIWorkoutActivityType.ActivityTypeMetadata.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type FIUIWorkoutActivityType.ActivityTypeMetadata.CodingKeys and conformance FIUIWorkoutActivityType.ActivityTypeMetadata.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FIUIWorkoutActivityType.ActivityType.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVySo23FIUIWorkoutActivityTypeC11WorkoutCoreE0eF033_B1F58F99D22EFFC3BA188270C3371452LLV10CodingKeysOGMd, &_ss22KeyedEncodingContainerVySo23FIUIWorkoutActivityTypeC11WorkoutCoreE0eF033_B1F58F99D22EFFC3BA188270C3371452LLV10CodingKeysOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type FIUIWorkoutActivityType.ActivityType.CodingKeys and conformance FIUIWorkoutActivityType.ActivityType.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v16[0] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v12 = *(v3 + 8);
    v16[0] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v13 = *(v3 + 16);
    v16[0] = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v17 = *(v3 + 24);
    v16[47] = 3;
    outlined init with copy of FIUIWorkoutActivityType.ActivityType(v3, v16);
    lazy protocol witness table accessor for type FIUIWorkoutActivityType.ActivityTypeMetadata and conformance FIUIWorkoutActivityType.ActivityTypeMetadata();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    outlined consume of Data?(v17, *(&v17 + 1));
    v14 = *(v3 + 40);
    v16[0] = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance FIUIWorkoutActivityType.ActivityType.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance FIUIWorkoutActivityType.ActivityType.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance FIUIWorkoutActivityType.ActivityType.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized FIUIWorkoutActivityType.ActivityType.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance FIUIWorkoutActivityType.ActivityType.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type FIUIWorkoutActivityType.ActivityType.CodingKeys and conformance FIUIWorkoutActivityType.ActivityType.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance FIUIWorkoutActivityType.ActivityType.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type FIUIWorkoutActivityType.ActivityType.CodingKeys and conformance FIUIWorkoutActivityType.ActivityType.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance FIUIWorkoutActivityType.ActivityType(void *a1)
{
  v3 = *v1;
  *v4 = v1[1];
  *&v4[9] = *(v1 + 25);
  return FIUIWorkoutActivityType.ActivityType.encode(to:)(a1);
}

uint64_t FIUIWorkoutActivityType.serialize()()
{
  v1 = v0;
  specialized FIUIWorkoutActivityType.ActivityType.init(activityType:)(v1, &v7);

  v2 = type metadata accessor for JSONEncoder();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  lazy protocol witness table accessor for type FIUIWorkoutActivityType.ActivityType and conformance FIUIWorkoutActivityType.ActivityType();
  v5 = dispatch thunk of JSONEncoder.encode<A>(_:)();

  outlined destroy of FIUIWorkoutActivityType.ActivityType(&v7);
  return v5;
}

uint64_t specialized FIUIWorkoutActivityType.ActivityTypeMetadata.init(metadata:)(uint64_t a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  if (*(a1 + 16))
  {
    v1 = objc_opt_self();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v9[0] = 0;
    v3 = [v1 archivedDataWithRootObject:isa requiringSecureCoding:1 error:v9];

    v4 = v9[0];
    if (v3)
    {
      v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

      result = v5;
    }

    else
    {
      v7 = v4;
      _convertNSErrorToError(_:)();

      result = swift_willThrow();
    }
  }

  else
  {

    result = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

id specialized FIUIWorkoutActivityType.ActivityType.init(activityType:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 identifier];
  v5 = [a1 auxiliaryTypeIdentifier];
  v6 = [a1 isIndoor];
  v7 = [a1 metadata];
  v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v9 = specialized FIUIWorkoutActivityType.ActivityTypeMetadata.init(metadata:)(v8);
  v11 = v10;
  result = [a1 isPartOfMultiSport];
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v9;
  *(a2 + 32) = v11;
  *(a2 + 40) = result;
  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for FIUIWorkoutActivityType.ActivityType(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for FIUIWorkoutActivityType.ActivityType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

uint64_t specialized FIUIWorkoutActivityType.ActivityType.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000017 && 0x800000020B455A80 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726F6F646E497369 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x800000020B455AA0 == a2)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t getEnumTagSinglePayload for FIUIWorkoutActivityType.ActivityTypeMetadata(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xC && *(a1 + 16))
  {
    return (*a1 + 12);
  }

  v3 = *(a1 + 8) >> 60;
  if (((4 * v3) & 0xC) != 0)
  {
    v4 = 14 - ((4 * v3) & 0xC | (v3 >> 2));
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for FIUIWorkoutActivityType.ActivityTypeMetadata(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xB)
  {
    *result = a2 - 12;
    *(result + 8) = 0;
    if (a3 >= 0xC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = ((4 * (a2 ^ 0xF)) | ((a2 ^ 0xF) >> 2)) << 60;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FIUIWorkoutActivityType.ActivityTypeMetadata.CodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

double WorkoutStep.workoutKitAlertRepresentation.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_targetZones;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4 >> 62)
  {
LABEL_54:
    v5 = __CocoaSet.count.getter();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v5)
  {
    v6 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x20F2E7A20](v6, v4);
        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
LABEL_13:
          __break(1u);
          goto LABEL_14;
        }
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_53:
          __break(1u);
          goto LABEL_54;
        }

        v7 = *(v4 + 8 * v6 + 32);

        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_13;
        }
      }

      swift_beginAccess();
      if (*(v7 + 40))
      {
        break;
      }

      ++v6;
      if (v8 == v5)
      {
        goto LABEL_14;
      }
    }

    v17 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_activityType;
    swift_beginAccess();
    v18 = *(v2 + v17);
    v19 = v34;
    TargetZone.workoutKitRepresentation(activityType:)(v18, &v30);

    if (v19)
    {
      return result;
    }

    if (!*(&v31 + 1))
    {
      v34 = 0;
      goto LABEL_15;
    }

    goto LABEL_42;
  }

LABEL_14:

  v32 = 0;
  v30 = 0u;
  v31 = 0u;
LABEL_15:
  outlined destroy of WorkoutAlert?(&v30);
  v4 = *(v2 + v3);
  if (v4 >> 62)
  {
    if (v4 < 0)
    {
      v28 = *(v2 + v3);
    }

    v9 = __CocoaSet.count.getter();
  }

  else
  {
    v9 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v9)
  {
    v10 = 0;
    v3 = v4 & 0xC000000000000001;
    do
    {
      if (v3)
      {
        v11 = MEMORY[0x20F2E7A20](v10, v4);
        v12 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          goto LABEL_27;
        }
      }

      else
      {
        if (v10 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_53;
        }

        v11 = *(v4 + 8 * v10 + 32);

        v12 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
LABEL_27:
          __break(1u);
          break;
        }
      }

      swift_beginAccess();
      v13 = *(v11 + 40);

      if (v13 == 1)
      {
        goto LABEL_44;
      }

      ++v10;
    }

    while (v12 != v9);
  }

  v14 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_heartRateTargetZone;
  swift_beginAccess();
  v15 = *(v2 + v14);
  if (v15)
  {
    v16 = *(v2 + v14);
  }

  else
  {
    if (one-time initialization token for defaultZone != -1)
    {
      swift_once();
    }

    v16 = static HeartRateTargetZone.defaultZone;
  }

  if (*(v16 + OBJC_IVAR___WOCoreHeartRateTargetZone_type) && *(v16 + OBJC_IVAR___WOCoreHeartRateTargetZone_type) != 1)
  {
    v23 = v15;

LABEL_44:

    goto LABEL_45;
  }

  v21 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v22 = v15;

  if (v21)
  {

LABEL_45:
    v32 = 0;
    v30 = 0u;
    v31 = 0u;
    goto LABEL_46;
  }

  HeartRateTargetZone.workoutKitRepresentation.getter(&v30);

  if (*(&v31 + 1))
  {
LABEL_42:
    outlined init with take of WorkoutAlert(&v30, v33);
    outlined init with take of WorkoutAlert(v33, a1);
    return result;
  }

LABEL_46:
  outlined destroy of WorkoutAlert?(&v30);
  v24 = WorkoutStep.activePowerZonesAlertTargetZone.getter();
  if (v24)
  {
    v25 = v24;
    v26 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_activityType;
    swift_beginAccess();
    v27 = *(v2 + v26);
    PowerZonesAlertTargetZone.workoutKitRepresentation(activityType:)(v27, &v30);

    if (*(&v31 + 1))
    {
      goto LABEL_42;
    }
  }

  else
  {
    v32 = 0;
    v30 = 0u;
    v31 = 0u;
  }

  outlined destroy of WorkoutAlert?(&v30);
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t WorkoutStep.workoutCoreRepresentation(activityType:configurationContext:stepType:validator:)(void *a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v77 = *(v8 - 8);
  v78 = v8;
  v9 = *(v77 + 64);
  MEMORY[0x28223BE20](v8);
  v76 = &v66[-v10];
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSSgGMd, &_s7Combine9PublishedVySSSgGMR);
  v73 = *(v74 - 8);
  v11 = *(v73 + 64);
  MEMORY[0x28223BE20](v74);
  v13 = &v66[-v12];
  v14 = type metadata accessor for UUID();
  v80 = *(v14 - 8);
  v81 = v14;
  v15 = *(v80 + 64);
  MEMORY[0x28223BE20](v14);
  v79 = &v66[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = type metadata accessor for WorkoutGoal();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = *a2;
  v22 = &v66[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v72 = *a3;
  WorkoutStep.goal.getter();
  WorkoutStep.alert.getter();
  v75 = WorkoutStep.displayName.getter();
  v24 = v23;
  LOBYTE(v84) = 1;
  v82 = a1;
  v25 = v88;
  v26 = WorkoutGoal.workoutCoreRepresentation(activityType:configurationType:validator:)(a1, &v84, a4);
  if (v25)
  {

    outlined destroy of WorkoutAlert?(v87);
    (*(v18 + 8))(v22, v17);
    return v21;
  }

  v67 = v21;
  v68 = a4;
  v69 = v22;
  v70 = 0;
  v71 = v18;
  v88 = v17;
  v27 = v26;
  v28 = v79;
  UUID.init()();
  v29 = type metadata accessor for WorkoutStep();
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  v21 = swift_allocObject();
  v32 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep__displayName;
  v84 = 0;
  v85 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  Published.init(initialValue:)();
  (*(v73 + 32))(v21 + v32, v13, v74);
  *(v21 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_targetZones) = MEMORY[0x277D84F90];
  *(v21 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_heartRateTargetZone) = 0;
  v33 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep__forcePublisherUpdate;
  LOBYTE(v84) = 0;
  v34 = v76;
  Published.init(initialValue:)();
  (*(v77 + 32))(v21 + v33, v34, v78);
  *(v21 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_powerZonesAlertTargetZone) = 0;
  *(v21 + 16) = v72;
  swift_beginAccess();
  v83 = v27;
  type metadata accessor for NLSessionActivityGoal();
  v35 = v27;
  Published.init(initialValue:)();
  swift_endAccess();
  v37 = v81;
  v36 = v82;
  *(v21 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_activityType) = v82;
  v38 = v80;
  (*(v80 + 16))(v21 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_uuid, v28, v37);
  swift_getKeyPath();
  swift_getKeyPath();
  v84 = v75;
  v85 = v24;
  v39 = v36;

  static Published.subscript.setter();
  v40 = v35;

  (*(v38 + 8))(v28, v37);
  outlined init with copy of WorkoutAlert?(v87, &v84);
  v41 = v86;
  if (v86)
  {
    __swift_project_boxed_opaque_existential_1(&v84, v86);
    LOBYTE(v83) = v67;
    v42 = WorkoutAlert.targetZone(activityType:configurationContext:validator:)(v39, &v83, v68, v41);
    __swift_destroy_boxed_opaque_existential_1(&v84);
    v43 = v88;
    v44 = v69;
    if (v42)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v45 = swift_allocObject();
      *(v45 + 16) = xmmword_20B425990;
      *(v45 + 32) = v42;
      v46 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_targetZones;
      swift_beginAccess();
      v47 = *(v21 + v46);
      *(v21 + v46) = v45;

      swift_getKeyPath();
      swift_getKeyPath();
      v48 = static Published.subscript.modify();
      *v49 = !*v49;
      v48(&v84, 0);

LABEL_10:

      outlined destroy of WorkoutAlert?(v87);
      (*(v71 + 8))(v44, v43);
      return v21;
    }
  }

  else
  {
    outlined destroy of WorkoutAlert?(&v84);
    v43 = v88;
    v44 = v69;
  }

  outlined init with copy of WorkoutAlert?(v87, &v84);
  v50 = v86;
  if (v86)
  {
    __swift_project_boxed_opaque_existential_1(&v84, v86);
    v51 = WorkoutAlert.heartRateTargetZone.getter(v50);
    __swift_destroy_boxed_opaque_existential_1(&v84);
    if (v51)
    {
      v52 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_heartRateTargetZone;
      swift_beginAccess();
      v53 = *(v21 + v52);
      *(v21 + v52) = v51;
      v54 = v51;

      swift_getKeyPath();
      swift_getKeyPath();
      v55 = static Published.subscript.modify();
      *v56 = !*v56;
      v55(&v84, 0);

      goto LABEL_10;
    }
  }

  else
  {
    outlined destroy of WorkoutAlert?(&v84);
  }

  outlined init with copy of WorkoutAlert?(v87, &v84);
  v57 = v86;
  if (v86)
  {
    __swift_project_boxed_opaque_existential_1(&v84, v86);
    v58 = WorkoutAlert.powerZonesAlertTargetZone(activityType:)(v39, v57);
    __swift_destroy_boxed_opaque_existential_1(&v84);
    v59 = v71;
    if (v58)
    {
      v60 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_powerZonesAlertTargetZone;
      swift_beginAccess();
      v61 = *(v21 + v60);
      *(v21 + v60) = v58;
      v62 = v58;

      swift_getKeyPath();
      swift_getKeyPath();
      v63 = static Published.subscript.modify();
      *v64 = !*v64;
      v63(&v84, 0);
    }

    else
    {
    }

    outlined destroy of WorkoutAlert?(v87);
    (*(v59 + 8))(v44, v43);
  }

  else
  {

    outlined destroy of WorkoutAlert?(v87);
    (*(v71 + 8))(v44, v43);
    outlined destroy of WorkoutAlert?(&v84);
  }

  return v21;
}

uint64_t outlined destroy of WorkoutAlert?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A5Alert_pSgMd, &_s10WorkoutKit0A5Alert_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of WorkoutAlert?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A5Alert_pSgMd, &_s10WorkoutKit0A5Alert_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of WorkoutAlert(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t one-time initialization function for shared()
{
  type metadata accessor for AudioRoutingControlManager();
  v0 = swift_allocObject();
  result = AudioRoutingControlManager.init()();
  static AudioRoutingControlManager.shared = v0;
  return result;
}

{
  result = specialized MusicSiriRepresentationAppIntentDispatcher.init()();
  static MusicSiriRepresentationAppIntentDispatcher.shared = result;
  unk_27C7299A0 = v1;
  return result;
}

{
  type metadata accessor for WorkoutConfigurationValidator();
  v0 = swift_allocObject();
  result = WorkoutConfigurationValidator.init()();
  static WorkoutConfigurationValidator.shared = v0;
  return result;
}

uint64_t AudioRoutingControlManager.__allocating_init()()
{
  v0 = swift_allocObject();
  AudioRoutingControlManager.init()();
  return v0;
}

uint64_t static AudioRoutingControlManager.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }
}

uint64_t AudioRoutingControlManager.init()()
{
  v11[0] = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v11[0] - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v11[0]);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  swift_defaultActor_initialize();
  *(v0 + 120) = 0;
  _sSo17OS_dispatch_queueCMaTm_0(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  static DispatchQoS.userInitiated.getter();
  v11[1] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, 255, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v4, *MEMORY[0x277D85260], v11[0]);
  *(v0 + 128) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v0 + 136) = 0u;
  *(v0 + 152) = 0u;
  *(v0 + 168) = 0;
  v9 = [objc_allocWithZone(MEMORY[0x277CEF7E0]) init];
  *(v0 + 112) = v9;
  [v9 setDispatchQueue_];
  return v0;
}

uint64_t AudioRoutingControlManager.activate()()
{
  v1[14] = v0;
  v2 = type metadata accessor for NSNotificationCenter.Publisher();
  v1[15] = v2;
  v3 = *(v2 - 8);
  v1[16] = v3;
  v4 = *(v3 + 64) + 15;
  v1[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](AudioRoutingControlManager.activate(), v0, 0);
}

{
  if (*(v0[14] + 120))
  {
    if (one-time initialization token for audio != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, static WOLog.audio);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_20AEA4000, v2, v3, "AAAudioRoutingControl is already active", v4, 2u);
      MEMORY[0x20F2E9420](v4, -1, -1);
    }

    v5 = v0[17];

    v6 = v0[1];

    return v6();
  }

  else
  {
    if (one-time initialization token for audio != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    v0[18] = __swift_project_value_buffer(v8, static WOLog.audio);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_20AEA4000, v9, v10, "Activating AAAudioRoutingControl", v11, 2u);
      MEMORY[0x20F2E9420](v11, -1, -1);
    }

    v12 = v0[14];

    v14 = lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type AudioRoutingControlManager and conformance AudioRoutingControlManager, v13, type metadata accessor for AudioRoutingControlManager);
    v15 = *(MEMORY[0x277D85A40] + 4);
    v16 = swift_task_alloc();
    v0[19] = v16;
    *v16 = v0;
    v16[1] = AudioRoutingControlManager.activate();
    v17 = v0[14];
    v18 = MEMORY[0x277D839B0];

    return MEMORY[0x2822008A0](v0 + 21, v12, v14, 0x6574617669746361, 0xEA00000000002928, partial apply for closure #1 in AudioRoutingControlManager.activate(), v17, v18);
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v4 = *v1;
  *(*v1 + 160) = v0;

  v5 = *(v2 + 112);
  if (v0)
  {
    v6 = AudioRoutingControlManager.activate();
  }

  else
  {
    v6 = AudioRoutingControlManager.activate();
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

{
  v1 = *(v0 + 168);
  *(*(v0 + 112) + 120) = v1;
  v2 = *(v0 + 144);
  v3 = Logger.logObject.getter();
  if (v1 == 1)
  {
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_20AEA4000, v3, v4, "Activated AAAudioRoutingControl", v5, 2u);
      MEMORY[0x20F2E9420](v5, -1, -1);
    }

    v7 = *(v0 + 128);
    v6 = *(v0 + 136);
    v8 = *(v0 + 112);
    v9 = *(v0 + 120);

    v10 = [objc_opt_self() defaultCenter];
    v11 = MEMORY[0x20F2E6C00](0xD00000000000001FLL, 0x800000020B455AF0);
    NSNotificationCenter.publisher(for:object:)();

    lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type NSNotificationCenter.Publisher and conformance NSNotificationCenter.Publisher, 255, MEMORY[0x277CC9DB0]);

    v12 = Publisher<>.sink(receiveValue:)();

    (*(v7 + 8))(v6, v9);
    v13 = type metadata accessor for AnyCancellable();
    v14 = MEMORY[0x277CBCDA0];
    *(v0 + 40) = v13;
    *(v0 + 48) = v14;
    *(v0 + 16) = v12;
    swift_beginAccess();
    outlined assign with take of Cancellable?(v0 + 16, v8 + 136);
    swift_endAccess();
  }

  else
  {
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_20AEA4000, v3, v15, "AudioRoutingControlManager not activated", v16, 2u);
      MEMORY[0x20F2E9420](v16, -1, -1);
    }
  }

  v17 = *(v0 + 136);

  v18 = *(v0 + 8);

  return v18();
}

{
  v1 = v0[20];
  v2 = v0[18];
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[20];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_20AEA4000, v4, v5, "Error activating AAAudioRoutingControl, error=%@", v7, 0xCu);
    outlined destroy of NSObject?(v8, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v8, -1, -1);
    MEMORY[0x20F2E9420](v7, -1, -1);
  }

  v11 = v0[20];

  swift_getErrorValue();
  v13 = v0[7];
  v12 = v0[8];
  v14 = v0[9];
  if (Error.code.getter() == -6721)
  {
    v15 = v0[18];
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_20AEA4000, v16, v17, "AudioRoutingControlManager already active, marking as activated", v18, 2u);
      MEMORY[0x20F2E9420](v18, -1, -1);
    }

    v19 = v0[20];
    v20 = v0[14];

    *(v20 + 120) = 1;
    v21 = v0[18];
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_20AEA4000, v22, v23, "Activated AAAudioRoutingControl", v24, 2u);
      MEMORY[0x20F2E9420](v24, -1, -1);
    }

    v26 = v0[16];
    v25 = v0[17];
    v27 = v0[14];
    v28 = v0[15];

    v29 = [objc_opt_self() defaultCenter];
    v30 = MEMORY[0x20F2E6C00](0xD00000000000001FLL, 0x800000020B455AF0);
    NSNotificationCenter.publisher(for:object:)();

    lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type NSNotificationCenter.Publisher and conformance NSNotificationCenter.Publisher, 255, MEMORY[0x277CC9DB0]);

    v31 = Publisher<>.sink(receiveValue:)();

    (*(v26 + 8))(v25, v28);
    v32 = type metadata accessor for AnyCancellable();
    v33 = MEMORY[0x277CBCDA0];
    v0[5] = v32;
    v0[6] = v33;
    v0[2] = v31;
    swift_beginAccess();
    outlined assign with take of Cancellable?((v0 + 2), v27 + 136);
    swift_endAccess();
    v34 = v0[17];

    v35 = v0[1];
  }

  else
  {
    v36 = v0[20];
    v37 = v0[17];
    swift_willThrow();

    v35 = v0[1];
    v38 = v0[20];
  }

  return v35();
}

void closure #1 in AudioRoutingControlManager.activate()(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5Error_pGMd, &_sScCySbs5Error_pGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = aBlock - v7;
  v9 = *(a2 + 112);
  (*(v5 + 16))(aBlock - v7, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v8, v4);
  aBlock[4] = partial apply for closure #1 in closure #1 in AudioRoutingControlManager.activate();
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_67;
  v12 = _Block_copy(aBlock);

  [v9 activateWithCompletion_];
  _Block_release(v12);
}

uint64_t closure #1 in closure #1 in AudioRoutingControlManager.activate()(void *a1)
{
  if (a1)
  {
    v1 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5Error_pGMd, &_sScCySbs5Error_pGMR);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5Error_pGMd, &_sScCySbs5Error_pGMR);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t closure #2 in AudioRoutingControlManager.activate()(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v9 = lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type AudioRoutingControlManager and conformance AudioRoutingControlManager, v8, type metadata accessor for AudioRoutingControlManager);
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = v9;
  v10[4] = a2;
  swift_retain_n();
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v6, &async function pointer to partial apply for closure #1 in closure #2 in AudioRoutingControlManager.activate(), v10);
}

uint64_t closure #1 in closure #2 in AudioRoutingControlManager.activate()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = closure #1 in closure #2 in AudioRoutingControlManager.activate();

  return AudioRoutingControlManager.handleAudioAccessoryDiedNotification()();
}

{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t AudioRoutingControlManager.areHeadphonesNearbyAndEligibleToPlay()()
{
  *(v1 + 16) = v0;
  return MEMORY[0x2822009F8](AudioRoutingControlManager.areHeadphonesNearbyAndEligibleToPlay(), v0, 0);
}

{
  v2 = *v1;
  v3 = *(*v1 + 24);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {
    v7 = *(v2 + 16);

    return MEMORY[0x2822009F8](AudioRoutingControlManager.areHeadphonesNearbyAndEligibleToPlay(), v7, 0);
  }
}

{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 16);
  v4 = *v0;

  return MEMORY[0x2822009F8](AudioRoutingControlManager.areHeadphonesNearbyAndEligibleToPlay(), v2, 0);
}

{
  return (*(v0 + 8))(*(v0 + 40));
}

uint64_t AudioRoutingControlManager.areHeadphonesNearbyAndEligibleToPlay()(uint64_t a1, uint64_t a2)
{
  v3 = v2[2];
  if (*(v3 + 120))
  {
    v4 = lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type AudioRoutingControlManager and conformance AudioRoutingControlManager, a2, type metadata accessor for AudioRoutingControlManager);
    v5 = *(MEMORY[0x277D859E0] + 4);
    v6 = swift_task_alloc();
    v2[4] = v6;
    type metadata accessor for AASmartRoutingDeviceNearbyAndStreamingStatus(0);
    *v6 = v2;
    v6[1] = AudioRoutingControlManager.areHeadphonesNearbyAndEligibleToPlay();
    v8 = v2[2];

    return MEMORY[0x2822007B8](v2 + 5, v3, v4, 0xD000000000000026, 0x800000020B455B10, partial apply for closure #1 in AudioRoutingControlManager.areHeadphonesNearbyAndEligibleToPlay(), v8, v7);
  }

  else
  {
    v9 = swift_task_alloc();
    v2[3] = v9;
    *v9 = v2;
    v9[1] = AudioRoutingControlManager.areHeadphonesNearbyAndEligibleToPlay();
    v10 = v2[2];

    return AudioRoutingControlManager.activate()();
  }
}

{
  v3 = *(v2 + 16);
  v4 = lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type AudioRoutingControlManager and conformance AudioRoutingControlManager, a2, type metadata accessor for AudioRoutingControlManager);
  v5 = *(MEMORY[0x277D859E0] + 4);
  v6 = swift_task_alloc();
  *(v2 + 32) = v6;
  type metadata accessor for AASmartRoutingDeviceNearbyAndStreamingStatus(0);
  *v6 = v2;
  v6[1] = AudioRoutingControlManager.areHeadphonesNearbyAndEligibleToPlay();
  v8 = *(v2 + 16);

  return MEMORY[0x2822007B8](v2 + 40, v3, v4, 0xD000000000000026, 0x800000020B455B10, partial apply for closure #1 in AudioRoutingControlManager.areHeadphonesNearbyAndEligibleToPlay(), v8, v7);
}

void closure #1 in AudioRoutingControlManager.areHeadphonesNearbyAndEligibleToPlay()(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo44AASmartRoutingDeviceNearbyAndStreamingStatusVs5NeverOGMd, &_sScCySo44AASmartRoutingDeviceNearbyAndStreamingStatusVs5NeverOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = aBlock - v7;
  v9 = *(a2 + 112);
  (*(v5 + 16))(aBlock - v7, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v8, v4);
  aBlock[4] = partial apply for closure #1 in closure #1 in AudioRoutingControlManager.areHeadphonesNearbyAndEligibleToPlay();
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned AASmartRoutingDeviceNearbyAndStreamingStatus, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_56;
  v12 = _Block_copy(aBlock);

  [v9 areHeadphonesNearbyAndEligibleToPlay_];
  _Block_release(v12);
}

uint64_t closure #1 in closure #1 in AudioRoutingControlManager.areHeadphonesNearbyAndEligibleToPlay()(unsigned __int8 a1, void *a2)
{
  AASmartRoutingDeviceNearbyAndStreamingStatusToString(a1);
  if (a2)
  {
    v4 = a2;
    if (one-time initialization token for audio != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static WOLog.audio);
    v6 = a2;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v7, v8))
    {

      goto LABEL_12;
    }

    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v25 = v11;
    *v9 = 136315394;
    v12 = String.init(cString:)();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v25);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2112;
    v15 = a2;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v16;
    *v10 = v16;
    _os_log_impl(&dword_20AEA4000, v7, v8, "smart routing areHeadphonesNearbyAndEligibleToPlay=%s error=(%@)", v9, 0x16u);
    outlined destroy of NSObject?(v10, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x20F2E9420](v11, -1, -1);
    MEMORY[0x20F2E9420](v9, -1, -1);
  }

  else
  {
    if (one-time initialization token for audio != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static WOLog.audio);
    v7 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v25 = v20;
      *v19 = 136315138;
      v21 = String.init(cString:)();
      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v25);

      *(v19 + 4) = v23;
      _os_log_impl(&dword_20AEA4000, v7, v18, "smart routing areHeadphonesNearbyAndEligibleToPlay=%s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x20F2E9420](v20, -1, -1);
      MEMORY[0x20F2E9420](v19, -1, -1);
    }
  }

LABEL_12:
  LOBYTE(v25) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo44AASmartRoutingDeviceNearbyAndStreamingStatusVs5NeverOGMd, &_sScCySo44AASmartRoutingDeviceNearbyAndStreamingStatusVs5NeverOGMR);
  return CheckedContinuation.resume(returning:)();
}

void thunk for @escaping @callee_guaranteed @Sendable (@unowned AASmartRoutingDeviceNearbyAndStreamingStatus, @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

uint64_t @objc closure #1 in AudioRoutingControlManager.areHeadphonesNearbyAndEligibleToPlay()(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = @objc closure #1 in AudioRoutingControlManager.areHeadphonesNearbyAndEligibleToPlay();

  return AudioRoutingControlManager.areHeadphonesNearbyAndEligibleToPlay()();
}

uint64_t @objc closure #1 in AudioRoutingControlManager.areHeadphonesNearbyAndEligibleToPlay()(unsigned __int8 a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *(*v2 + 32);
  v8 = *(*v2 + 16);
  v9 = *v2;

  v10 = *(v5 + 24);
  if (v3)
  {
    v11 = _convertErrorToNSError(_:)();

    (*(v10 + 16))(v10, 0, v11);
  }

  else
  {
    (*(v10 + 16))(v10, a1, 0);
  }

  _Block_release(*(v6 + 24));
  v12 = *(v9 + 8);

  return v12();
}

uint64_t AudioRoutingControlManager.otherDevicePlayingAudioToNearbyHeadphones()()
{
  *(v1 + 16) = v0;
  return MEMORY[0x2822009F8](AudioRoutingControlManager.otherDevicePlayingAudioToNearbyHeadphones(), v0, 0);
}

{
  v2 = *v1;
  v3 = *(*v1 + 24);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v4 + 8);

    return v5(0);
  }

  else
  {
    v7 = *(v2 + 16);

    return MEMORY[0x2822009F8](AudioRoutingControlManager.otherDevicePlayingAudioToNearbyHeadphones(), v7, 0);
  }
}

{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 16);
  v4 = *v0;

  return MEMORY[0x2822009F8](AudioRoutingControlManager.otherDevicePlayingAudioToNearbyHeadphones(), v2, 0);
}

{
  v1 = *(v0 + 48);
  if (v1 <= 1)
  {
    if (*(v0 + 48))
    {
      if (v1 != 1)
      {
LABEL_8:
        if (one-time initialization token for audio != -1)
        {
          swift_once();
        }

        v2 = type metadata accessor for Logger();
        __swift_project_value_buffer(v2, static WOLog.audio);
        v3 = Logger.logObject.getter();
        v4 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v3, v4))
        {
          v5 = swift_slowAlloc();
          *v5 = 0;
          _os_log_impl(&dword_20AEA4000, v3, v4, "Unknown default isNearbyAndEligibleStatus when calling AAAudioRoutingControl's areHeadphonesNearbyAndEligibleToPlay", v5, 2u);
          MEMORY[0x20F2E9420](v5, -1, -1);
        }
      }

LABEL_13:
      v6 = 0;
LABEL_18:
      v10 = *(v0 + 8);

      return v10(v6);
    }
  }

  else if (v1 != 4)
  {
    if (v1 == 3)
    {
      v6 = 1;
      goto LABEL_18;
    }

    if (v1 != 2)
    {
      goto LABEL_8;
    }

    goto LABEL_13;
  }

  v7 = swift_task_alloc();
  *(v0 + 40) = v7;
  *v7 = v0;
  v7[1] = AudioRoutingControlManager.otherDevicePlayingAudioToNearbyHeadphones();
  v8 = *(v0 + 16);

  return AudioRoutingControlManager.otherDevicePlayingAudioToConnectedHeadphones()();
}

uint64_t AudioRoutingControlManager.otherDevicePlayingAudioToNearbyHeadphones()(uint64_t a1, uint64_t a2)
{
  v3 = v2[2];
  if (*(v3 + 120))
  {
    v4 = lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type AudioRoutingControlManager and conformance AudioRoutingControlManager, a2, type metadata accessor for AudioRoutingControlManager);
    v5 = *(MEMORY[0x277D859E0] + 4);
    v6 = swift_task_alloc();
    v2[4] = v6;
    type metadata accessor for AASmartRoutingDeviceNearbyAndStreamingStatus(0);
    *v6 = v2;
    v6[1] = AudioRoutingControlManager.otherDevicePlayingAudioToNearbyHeadphones();
    v8 = v2[2];

    return MEMORY[0x2822007B8](v2 + 6, v3, v4, 0xD000000000000026, 0x800000020B455B10, closure #1 in AudioRoutingControlManager.areHeadphonesNearbyAndEligibleToPlay()partial apply, v8, v7);
  }

  else
  {
    v9 = swift_task_alloc();
    v2[3] = v9;
    *v9 = v2;
    v9[1] = AudioRoutingControlManager.otherDevicePlayingAudioToNearbyHeadphones();
    v10 = v2[2];

    return AudioRoutingControlManager.activate()();
  }
}

{
  v3 = *(v2 + 16);
  v4 = lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type AudioRoutingControlManager and conformance AudioRoutingControlManager, a2, type metadata accessor for AudioRoutingControlManager);
  v5 = *(MEMORY[0x277D859E0] + 4);
  v6 = swift_task_alloc();
  *(v2 + 32) = v6;
  type metadata accessor for AASmartRoutingDeviceNearbyAndStreamingStatus(0);
  *v6 = v2;
  v6[1] = AudioRoutingControlManager.otherDevicePlayingAudioToNearbyHeadphones();
  v8 = *(v2 + 16);

  return MEMORY[0x2822007B8](v2 + 48, v3, v4, 0xD000000000000026, 0x800000020B455B10, closure #1 in AudioRoutingControlManager.areHeadphonesNearbyAndEligibleToPlay()partial apply, v8, v7);
}

uint64_t AudioRoutingControlManager.otherDevicePlayingAudioToNearbyHeadphones()(uint64_t a1)
{
  v3 = *(*v1 + 40);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t AudioRoutingControlManager.prewarmAudioAccessoriesForFitnessWorkout()()
{
  *(v1 + 16) = v0;
  return MEMORY[0x2822009F8](AudioRoutingControlManager.prewarmAudioAccessoriesForFitnessWorkout(), v0, 0);
}

{
  v1 = v0[2];
  if (*(v1 + 120))
  {
    [*(v1 + 112) prewarmAudioAccessoriesForFitnessWorkout];
    v2 = v0[1];

    return v2();
  }

  else
  {
    v4 = swift_task_alloc();
    v0[3] = v4;
    *v4 = v0;
    v4[1] = AudioRoutingControlManager.prewarmAudioAccessoriesForFitnessWorkout();
    v5 = v0[2];

    return AudioRoutingControlManager.activate()();
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 24);
  v4 = *v1;
  *(*v1 + 32) = v0;

  v5 = *(v2 + 16);
  if (v0)
  {
    v6 = AudioRoutingControlManager.prewarmAudioAccessoriesForFitnessWorkout();
  }

  else
  {
    v6 = AudioRoutingControlManager.prewarmAudioAccessoriesForFitnessWorkout();
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

{
  [*(*(v0 + 16) + 112) prewarmAudioAccessoriesForFitnessWorkout];
  v1 = *(v0 + 8);

  return v1();
}

{
  v16 = v0;
  if (one-time initialization token for audio != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static WOLog.audio);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 32);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v8 = 136315394;
    *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002ALL, 0x800000020B455B40, &v15);
    *(v8 + 12) = 2112;
    v11 = v7;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v12;
    *v9 = v12;
    _os_log_impl(&dword_20AEA4000, v4, v5, "%s Failed to activate AudioRoutingControlManager: %@", v8, 0x16u);
    outlined destroy of NSObject?(v9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x20F2E9420](v10, -1, -1);
    MEMORY[0x20F2E9420](v8, -1, -1);
  }

  else
  {
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t AudioRoutingControlManager.otherDevicePlayingAudioToConnectedHeadphones()()
{
  *(v1 + 88) = v0;
  v2 = swift_task_alloc();
  *(v1 + 96) = v2;
  *v2 = v1;
  v2[1] = AudioRoutingControlManager.otherDevicePlayingAudioToConnectedHeadphones();

  return AudioRoutingControlManager.otherDevicePlayingAudioWhenWatchNotConnectedToHeadphones()();
}

{
  v73 = v0;
  v1 = [objc_opt_self() sharedAVSystemController];
  if (!v1)
  {
    if (one-time initialization token for audio != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static WOLog.audio);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_20AEA4000, v4, v5, "AVSystemController does not have a shared object, probably in simulator", v6, 2u);
      MEMORY[0x20F2E9420](v6, -1, -1);
    }

    goto LABEL_19;
  }

  v2 = v1;
  if ([v1 attributeForKey_])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v71 = 0u;
    v72 = 0u;
  }

  v7 = v72;
  *(v0 + 16) = v71;
  *(v0 + 32) = v7;
  if (!*(v0 + 40))
  {
    outlined destroy of NSObject?(v0 + 16, &_sypSgMd, &_sypSgMR);
LABEL_15:
    if (one-time initialization token for audio == -1)
    {
LABEL_16:
      v12 = type metadata accessor for Logger();
      __swift_project_value_buffer(v12, static WOLog.audio);
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_20AEA4000, v13, v14, "No pickable audio routes to determine if connected device is playing audio", v15, 2u);
        MEMORY[0x20F2E9420](v15, -1, -1);
      }

LABEL_19:
      v16 = *(v0 + 104);
      goto LABEL_20;
    }

LABEL_61:
    swift_once();
    goto LABEL_16;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySDySSypGGMd, &_sSaySDySSypGGMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_15;
  }

  v8 = *(v0 + 80);
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = objc_opt_self();
    v11 = 0;
    v63 = v8 + 32;
    v70 = v0;
    v61 = v8;
    v62 = v2;
    v59 = v10;
    v60 = v9;
    while (v11 < *(v8 + 16))
    {
      v64 = v11;
      v19 = *(v63 + 8 * v11);

      specialized _dictionaryUpCast<A, B, C, D>(_:)(v20);

      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v22 = [v10 otherConnectedDevicesFromRouteDescription_];

      if (v22)
      {
        _sSo17OS_dispatch_queueCMaTm_0(0, &lazy cache variable for type metadata for MPAVAuxiliaryDevice, 0x277CD5D08);
        v23 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v23 >> 62)
        {
          v24 = __CocoaSet.count.getter();
          v25 = &_OBJC_LABEL_PROTOCOL___HRCBluetoothLESourceObserverDelegate;
          if (v24)
          {
LABEL_29:
            v26 = 0;
            v69 = v23 & 0xC000000000000001;
            v65 = v23 & 0xFFFFFFFFFFFFFF8;
            v66 = v24;
            v67 = v23;
            while (1)
            {
              if (v69)
              {
                v27 = MEMORY[0x20F2E7A20](v26, v23);
              }

              else
              {
                if (v26 >= *(v65 + 16))
                {
                  goto LABEL_59;
                }

                v27 = *(v23 + 8 * v26 + 32);
              }

              v28 = v27;
              v29 = v26 + 1;
              if (__OFADD__(v26, 1))
              {
                break;
              }

              if (one-time initialization token for audio != -1)
              {
                swift_once();
              }

              v30 = type metadata accessor for Logger();
              __swift_project_value_buffer(v30, static WOLog.audio);
              v2 = v28;
              v31 = Logger.logObject.getter();
              v0 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v31, v0))
              {
                v32 = swift_slowAlloc();
                v33 = swift_slowAlloc();
                *&v71 = v33;
                *v32 = 136315650;
                v34 = [v2 deviceName];
                v68 = v33;
                if (v34)
                {
                  v35 = v34;
                  v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v38 = v37;
                }

                else
                {
                  v36 = 0;
                  v38 = 0;
                }

                v70[6] = v36;
                v70[7] = v38;
                __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
                v39 = Optional.description.getter();
                v41 = v40;

                v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v41, &v71);

                *(v32 + 4) = v42;
                *(v32 + 12) = 2082;
                v43 = [v2 productName];
                if (v43)
                {
                  v44 = v43;
                  v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v47 = v46;
                }

                else
                {
                  v45 = 0;
                  v47 = 0;
                }

                v70[8] = v45;
                v70[9] = v47;
                v48 = Optional.description.getter();
                v50 = v49;

                v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v50, &v71);

                *(v32 + 14) = v51;
                *(v32 + 22) = 1024;
                v25 = &_OBJC_LABEL_PROTOCOL___HRCBluetoothLESourceObserverDelegate;
                LODWORD(v51) = [v2 isPlaying];

                *(v32 + 24) = v51;
                _os_log_impl(&dword_20AEA4000, v31, v0, "Pickable audio route has connected device. name=%s product_name=%{public}s playing_audio=%{BOOL}d", v32, 0x1Cu);
                swift_arrayDestroy();
                MEMORY[0x20F2E9420](v68, -1, -1);
                MEMORY[0x20F2E9420](v32, -1, -1);

                v24 = v66;
                v23 = v67;
              }

              else
              {
              }

              v52 = [v2 v25[72]];

              if (v52)
              {

                v53 = 1;
                v0 = v70;
                v2 = v62;
                goto LABEL_53;
              }

              ++v26;
              if (v29 == v24)
              {
                goto LABEL_23;
              }
            }

            __break(1u);
LABEL_59:
            __break(1u);
            break;
          }
        }

        else
        {
          v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v25 = &_OBJC_LABEL_PROTOCOL___HRCBluetoothLESourceObserverDelegate;
          if (v24)
          {
            goto LABEL_29;
          }
        }

LABEL_23:

        v0 = v70;
        v8 = v61;
        v2 = v62;
        v10 = v59;
        v9 = v60;
      }

      v11 = v64 + 1;
      if (v64 + 1 == v9)
      {
        goto LABEL_52;
      }
    }

    __break(1u);
    goto LABEL_61;
  }

LABEL_52:

  v53 = 0;
LABEL_53:
  if (one-time initialization token for audio != -1)
  {
    swift_once();
  }

  v54 = type metadata accessor for Logger();
  __swift_project_value_buffer(v54, static WOLog.audio);
  v55 = Logger.logObject.getter();
  v56 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    *v57 = 67109120;
    *(v57 + 4) = v53;
    _os_log_impl(&dword_20AEA4000, v55, v56, "otherDevicePlayingAudioToConnectedHeadphones=%{BOOL}d", v57, 8u);
    MEMORY[0x20F2E9420](v57, -1, -1);
  }

  v58 = *(v0 + 104);

  v16 = v53 | v58;
LABEL_20:
  v17 = *(v0 + 8);

  return v17(v16 & 1);
}

uint64_t AudioRoutingControlManager.otherDevicePlayingAudioToConnectedHeadphones()(char a1)
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 104) = a1;

  return MEMORY[0x2822009F8](AudioRoutingControlManager.otherDevicePlayingAudioToConnectedHeadphones(), v3, 0);
}

uint64_t AudioRoutingControlManager.otherDevicePlayingAudioWhenWatchNotConnectedToHeadphones()()
{
  *(v1 + 16) = v0;
  return MEMORY[0x2822009F8](AudioRoutingControlManager.otherDevicePlayingAudioWhenWatchNotConnectedToHeadphones(), v0, 0);
}

{
  v1 = [objc_allocWithZone(MEMORY[0x277CD5D10]) init];
  v0[3] = v1;
  v2 = objc_allocWithZone(MEMORY[0x277CD5D48]);
  v3 = v1;
  v4 = MEMORY[0x20F2E6C00](0xD000000000000025, 0x800000020B455C10);
  v5 = [v2 initWithDataSource:v3 name:v4];
  v0[4] = v5;

  [v5 setFetchAvailableRoutesSynchronously_];
  v6 = [v5 availableRoutes];
  _sSo17OS_dispatch_queueCMaTm_0(0, &lazy cache variable for type metadata for MPAVRoute, 0x277CD5D38);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v0[5] = v7;

  if (v7 >> 62)
  {
    if (__CocoaSet.count.getter())
    {
      goto LABEL_3;
    }
  }

  else if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v9 = v0[2];
    v10 = lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type AudioRoutingControlManager and conformance AudioRoutingControlManager, v8, type metadata accessor for AudioRoutingControlManager);
    v11 = swift_task_alloc();
    v0[6] = v11;
    *(v11 + 16) = v7;
    v12 = *(MEMORY[0x277D858E8] + 4);
    v13 = swift_task_alloc();
    v0[7] = v13;
    *v13 = v0;
    v13[1] = AudioRoutingControlManager.otherDevicePlayingAudioWhenWatchNotConnectedToHeadphones();
    v14 = MEMORY[0x277D839B0];
    v15 = MEMORY[0x277D839B0];
    v16 = MEMORY[0x277D839B0];

    return MEMORY[0x282200600](v0 + 8, v14, v15, v9, v10, &async function pointer to partial apply for closure #1 in AudioRoutingControlManager.otherDevicePlayingAudioWhenWatchNotConnectedToHeadphones(), v11, v16);
  }

  if (one-time initialization token for audio != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static WOLog.audio);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_20AEA4000, v18, v19, "No available routes for companion", v20, 2u);
    MEMORY[0x20F2E9420](v20, -1, -1);
  }

  v21 = v0[1];

  return v21(0);
}

{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 16);
  v6 = *v0;

  return MEMORY[0x2822009F8](AudioRoutingControlManager.otherDevicePlayingAudioWhenWatchNotConnectedToHeadphones(), v4, 0);
}

{
  v1 = *(v0 + 64);
  if (one-time initialization token for audio != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static WOLog.audio);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  v7 = *(v0 + 24);
  v6 = *(v0 + 32);
  if (v5)
  {
    v8 = swift_slowAlloc();
    *v8 = 67109120;
    *(v8 + 4) = v1;
    _os_log_impl(&dword_20AEA4000, v3, v4, "otherDevicePlayingAudioToConnectedHeadphonesWhenWatchNotConnectedToHeadphones=%{BOOL}d", v8, 8u);
    MEMORY[0x20F2E9420](v8, -1, -1);
  }

  v9 = *(v0 + 8);

  return v9(v1);
}

uint64_t closure #1 in AudioRoutingControlManager.otherDevicePlayingAudioWhenWatchNotConnectedToHeadphones()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a2;
  v3[11] = a3;
  v3[9] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScG8IteratorVySb_GMd, &_sScG8IteratorVySb_GMR);
  v3[14] = v5;
  v6 = *(v5 - 8);
  v3[15] = v6;
  v7 = *(v6 + 64) + 15;
  v3[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in AudioRoutingControlManager.otherDevicePlayingAudioWhenWatchNotConnectedToHeadphones(), 0, 0);
}

uint64_t closure #1 in AudioRoutingControlManager.otherDevicePlayingAudioWhenWatchNotConnectedToHeadphones()()
{
  v1 = *(v0 + 88);
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v28 = *(v0 + 88);
    }

    v2 = __CocoaSet.count.getter();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_20:
    v29 = *(v0 + 128);
    v30 = **(v0 + 80);
    TaskGroup.makeAsyncIterator()();
    *(v0 + 145) = 0;
    v31 = *(MEMORY[0x277D856B0] + 4);
    v32 = swift_task_alloc();
    *(v0 + 136) = v32;
    *v32 = v0;
    v32[1] = closure #1 in AudioRoutingControlManager.otherDevicePlayingAudioWhenWatchNotConnectedToHeadphones();
    v33 = *(v0 + 128);
    v7 = *(v0 + 112);
    v4 = v0 + 144;
    v5 = 0;
    v6 = 0;

    return MEMORY[0x2822002E8](v4, v5, v6, v7);
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_20;
  }

LABEL_3:
  v3 = *(v0 + 80);
  v4 = objc_opt_self();
  v39 = v4;
  if (v2 >= 1)
  {
    v8 = 0;
    v37 = *v3;
    v38 = v2;
    v36 = v1 & 0xC000000000000001;
    v35 = *(v0 + 88) + 32;
    while (1)
    {
      if (v36)
      {
        v11 = MEMORY[0x20F2E7A20](v8, *(v0 + 88));
      }

      else
      {
        v11 = *(v35 + 8 * v8);
      }

      v12 = v11;
      v13 = *(v0 + 96);
      v14 = *(v0 + 104);
      v15 = [objc_allocWithZone(MEMORY[0x277D278F0]) init];
      v40 = v12;
      v16 = [v39 pathWithRoute:v12 bundleID:0 playerID:0];
      [v15 setPlayerPath_];

      [v15 setQualityOfService_];
      v17 = type metadata accessor for TaskPriority();
      v18 = *(v17 - 8);
      (*(v18 + 56))(v14, 1, 1, v17);
      v19 = swift_allocObject();
      v19[2] = 0;
      v20 = v19 + 2;
      v19[3] = 0;
      v19[4] = v15;
      outlined init with copy of TaskPriority?(v14, v13);
      LODWORD(v16) = (*(v18 + 48))(v13, 1, v17);
      v21 = v15;
      v22 = *(v0 + 96);
      if (v16 == 1)
      {
        outlined destroy of NSObject?(*(v0 + 96), &_sScPSgMd, &_sScPSgMR);
        if (!*v20)
        {
          goto LABEL_14;
        }
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*(v18 + 8))(v22, v17);
        if (!*v20)
        {
LABEL_14:
          v24 = 0;
          v26 = 0;
          goto LABEL_15;
        }
      }

      v23 = v19[3];
      swift_getObjectType();
      swift_unknownObjectRetain();
      v24 = dispatch thunk of Actor.unownedExecutor.getter();
      v26 = v25;
      swift_unknownObjectRelease();
LABEL_15:
      v27 = swift_allocObject();
      *(v27 + 16) = &async function pointer to partial apply for closure #1 in closure #1 in AudioRoutingControlManager.otherDevicePlayingAudioWhenWatchNotConnectedToHeadphones();
      *(v27 + 24) = v19;

      if (v26 | v24)
      {
        v9 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v24;
        *(v0 + 40) = v26;
      }

      else
      {
        v9 = 0;
      }

      ++v8;
      v10 = *(v0 + 104);
      *(v0 + 48) = 1;
      *(v0 + 56) = v9;
      *(v0 + 64) = v37;
      swift_task_create();

      outlined destroy of NSObject?(v10, &_sScPSgMd, &_sScPSgMR);
      if (v38 == v8)
      {
        goto LABEL_20;
      }
    }
  }

  __break(1u);
  return MEMORY[0x2822002E8](v4, v5, v6, v7);
}

{
  v1 = *(*v0 + 136);
  v3 = *v0;

  return MEMORY[0x2822009F8](closure #1 in AudioRoutingControlManager.otherDevicePlayingAudioWhenWatchNotConnectedToHeadphones(), 0, 0);
}

{
  v1 = *(v0 + 144);
  v2 = *(v0 + 145);
  if (v1 == 2)
  {
    v3 = *(v0 + 104);
    v4 = *(v0 + 96);
    v5 = *(v0 + 72);
    (*(*(v0 + 120) + 8))(*(v0 + 128), *(v0 + 112));
    *v5 = v2;

    v6 = *(v0 + 8);

    return v6();
  }

  else
  {
    *(v0 + 145) = (v2 | v1) & 1;
    v8 = *(MEMORY[0x277D856B0] + 4);
    v9 = swift_task_alloc();
    *(v0 + 136) = v9;
    *v9 = v0;
    v9[1] = closure #1 in AudioRoutingControlManager.otherDevicePlayingAudioWhenWatchNotConnectedToHeadphones();
    v10 = *(v0 + 128);
    v11 = *(v0 + 112);

    return MEMORY[0x2822002E8](v0 + 144, 0, 0, v11);
  }
}

uint64_t closure #1 in closure #1 in AudioRoutingControlManager.otherDevicePlayingAudioWhenWatchNotConnectedToHeadphones()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a1;
  *(v4 + 32) = a4;
  return MEMORY[0x2822009F8](closure #1 in closure #1 in AudioRoutingControlManager.otherDevicePlayingAudioWhenWatchNotConnectedToHeadphones(), 0, 0);
}

uint64_t closure #1 in closure #1 in AudioRoutingControlManager.otherDevicePlayingAudioWhenWatchNotConnectedToHeadphones()()
{
  v1 = v0[4];
  v2 = swift_task_alloc();
  v0[5] = v2;
  *(v2 + 16) = v1;
  v3 = *(MEMORY[0x277D85A40] + 4);
  v4 = swift_task_alloc();
  v0[6] = v4;
  v5 = _sSo17OS_dispatch_queueCMaTm_0(0, &lazy cache variable for type metadata for MPCPlayerResponse, 0x277D278F8);
  *v4 = v0;
  v4[1] = closure #1 in closure #1 in AudioRoutingControlManager.otherDevicePlayingAudioWhenWatchNotConnectedToHeadphones();

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD00000000000003ALL, 0x800000020B455C40, partial apply for closure #1 in closure #1 in closure #1 in AudioRoutingControlManager.otherDevicePlayingAudioWhenWatchNotConnectedToHeadphones(), v2, v5);
}

{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v7 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = closure #1 in closure #1 in AudioRoutingControlManager.otherDevicePlayingAudioWhenWatchNotConnectedToHeadphones();
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = closure #1 in closure #1 in AudioRoutingControlManager.otherDevicePlayingAudioWhenWatchNotConnectedToHeadphones();
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

{
  v1 = *(v0 + 16);
  v2 = [v1 state];

  **(v0 + 24) = (v2 < 6) & (0x2Cu >> v2);
  v3 = *(v0 + 8);

  return v3();
}

{
  v1 = *(v0 + 40);

  if (one-time initialization token for audio != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 56);
  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static WOLog.audio);
  v4 = v2;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 56);
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v8;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_20AEA4000, v5, v6, "Failed to get player responses for companion with error=%@", v9, 0xCu);
    outlined destroy of NSObject?(v10, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v10, -1, -1);
    MEMORY[0x20F2E9420](v9, -1, -1);
  }

  else
  {
  }

  **(v0 + 24) = 0;
  v13 = *(v0 + 8);

  return v13();
}

uint64_t closure #1 in closure #1 in closure #1 in AudioRoutingControlManager.otherDevicePlayingAudioWhenWatchNotConnectedToHeadphones()(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo17MPCPlayerResponseCs5Error_pGMd, &_sScCySo17MPCPlayerResponseCs5Error_pGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = aBlock - v7;
  (*(v5 + 16))(aBlock - v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  aBlock[4] = partial apply for closure #1 in closure #1 in closure #1 in closure #1 in AudioRoutingControlManager.otherDevicePlayingAudioWhenWatchNotConnectedToHeadphones();
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed MPCPlayerResponse?, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor;
  v11 = _Block_copy(aBlock);

  v12 = [a2 performWithCompletion_];
  _Block_release(v11);
  return swift_unknownObjectRelease();
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in AudioRoutingControlManager.otherDevicePlayingAudioWhenWatchNotConnectedToHeadphones()(void *a1, id a2)
{
  if (a1)
  {
    v2 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo17MPCPlayerResponseCs5Error_pGMd, &_sScCySo17MPCPlayerResponseCs5Error_pGMR);
    return CheckedContinuation.resume(returning:)();
  }

  else
  {
    if (!a2)
    {
      lazy protocol witness table accessor for type NLPlaybackError and conformance NLPlaybackError();
      swift_allocError();
      v5 = v4;
      a2 = 0;
      *v5 = 1;
    }

    v6 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo17MPCPlayerResponseCs5Error_pGMd, &_sScCySo17MPCPlayerResponseCs5Error_pGMR);
    return CheckedContinuation.resume(throwing:)();
  }
}

uint64_t AudioRoutingControlManager.handleAudioAccessoryDiedNotification()()
{
  *(v1 + 16) = v0;
  return MEMORY[0x2822009F8](AudioRoutingControlManager.handleAudioAccessoryDiedNotification(), v0, 0);
}

{
  if (one-time initialization token for audio != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[3] = __swift_project_value_buffer(v1, static WOLog.audio);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_20AEA4000, v2, v3, "handleAudioAccessoryDiedNotification reactivating AudioRoutingControlManager", v4, 2u);
    MEMORY[0x20F2E9420](v4, -1, -1);
  }

  v5 = v0[2];

  *(v5 + 120) = 0;
  v6 = swift_task_alloc();
  v0[4] = v6;
  *v6 = v0;
  v6[1] = AudioRoutingControlManager.handleAudioAccessoryDiedNotification();
  v7 = v0[2];

  return AudioRoutingControlManager.activate()();
}

{
  v2 = *(*v1 + 32);
  v3 = *v1;
  v3[5] = v0;

  if (v0)
  {
    v4 = v3[2];

    return MEMORY[0x2822009F8](AudioRoutingControlManager.handleAudioAccessoryDiedNotification(), v4, 0);
  }

  else
  {
    v5 = v3[1];

    return v5();
  }
}

{
  v1 = v0[5];
  v2 = v0[3];
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[5];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_20AEA4000, v4, v5, "failed reactivating AudioRoutingControlManager error=%@", v8, 0xCu);
    outlined destroy of NSObject?(v9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v9, -1, -1);
    MEMORY[0x20F2E9420](v8, -1, -1);
  }

  else
  {
  }

  v12 = v0[1];

  return v12();
}

uint64_t AudioRoutingControlManager.deinit()
{
  outlined destroy of NSObject?(v0 + 136, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t AudioRoutingControlManager.__deallocating_deinit()
{
  outlined destroy of NSObject?(v0 + 136, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t outlined assign with take of Cancellable?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
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
    if (v10 != a4 || v12 >= &v13[v8])
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySnySiGGMd, &_ss23_ContiguousArrayStorageCySnySiGGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11WorkoutCore16ZonesAccumulatorC5EntryOGMd, &_ss23_ContiguousArrayStorageCy11WorkoutCore16ZonesAccumulatorC5EntryOGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4DataVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4DataVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11WorkoutCore0D10DeviceTypeOGMd, &_ss23_ContiguousArrayStorageCy11WorkoutCore0D10DeviceTypeOGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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
    if (v10 != a4 || v12 >= &v13[v8])
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys6UInt32VGMd, &_ss23_ContiguousArrayStorageCys6UInt32VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11WorkoutCore06Apple_d1_e1_D14StatePublisherV0D12PausedReasonOGMd, &_ss23_ContiguousArrayStorageCy11WorkoutCore06Apple_d1_e1_D14StatePublisherV0D12PausedReasonOGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySdGMd, &_ss23_ContiguousArrayStorageCySdGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11WorkoutCore0D15MediaSuggestionVGMd, &_ss23_ContiguousArrayStorageCy11WorkoutCore0D15MediaSuggestionVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[96 * v8])
    {
      memmove(v12, v13, 96 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11WorkoutCore26MeanDistributionByPositionC5debugyyF11DebugResultL_VGMd, &_ss23_ContiguousArrayStorageCy11WorkoutCore26MeanDistributionByPositionC5debugyyF11DebugResultL_VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 24 * v8);
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11WorkoutCore21AnyActivityPickerItemVGMd, &_ss23_ContiguousArrayStorageCy11WorkoutCore21AnyActivityPickerItemVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11WorkoutCore13MetricPlatterVGMd, &_ss23_ContiguousArrayStorageCy11WorkoutCore13MetricPlatterVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11WorkoutCore0D6DeviceVGMd, &_ss23_ContiguousArrayStorageCy11WorkoutCore0D6DeviceVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11WorkoutCore11MetricValueVGMd, &_ss23_ContiguousArrayStorageCy11WorkoutCore11MetricValueVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySnySiGGMd, &_ss23_ContiguousArrayStorageCySnySiGGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_6(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t dispatch thunk of AudioRoutingControlManager.activate()()
{
  v2 = *(*v0 + 176);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = dispatch thunk of AudioRoutingControlManager.activate();

  return v6();
}

{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t dispatch thunk of AudioRoutingControlManager.areHeadphonesNearbyAndEligibleToPlay()()
{
  v2 = *(*v0 + 184);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = dispatch thunk of AudioRoutingControlManager.areHeadphonesNearbyAndEligibleToPlay();

  return v6();
}

uint64_t dispatch thunk of AudioRoutingControlManager.areHeadphonesNearbyAndEligibleToPlay()(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t dispatch thunk of AudioRoutingControlManager.otherDevicePlayingAudioToNearbyHeadphones()()
{
  v2 = *(*v0 + 192);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = dispatch thunk of AudioRoutingControlManager.otherDevicePlayingAudioToNearbyHeadphones();

  return v6();
}

uint64_t dispatch thunk of AudioRoutingControlManager.otherDevicePlayingAudioToNearbyHeadphones()(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t dispatch thunk of AudioRoutingControlManager.prewarmAudioAccessoriesForFitnessWorkout()()
{
  v2 = *(*v0 + 200);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = dispatch thunk of AudioRoutingControlManager.prewarmAudioAccessoriesForFitnessWorkout();

  return v6();
}

uint64_t partial apply for closure #1 in AudioRoutingControlManager.otherDevicePlayingAudioWhenWatchNotConnectedToHeadphones()(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = partial apply for closure #1 in AudioRoutingControlManager.otherDevicePlayingAudioWhenWatchNotConnectedToHeadphones();

  return closure #1 in AudioRoutingControlManager.otherDevicePlayingAudioWhenWatchNotConnectedToHeadphones()(a1, a2, v6);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTRSb_TG5(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTRSb_TG5TQ0_;

  return v6(v2 + 32);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTRSb_TG5TQ0_()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t partial apply for closure #1 in closure #1 in AudioRoutingControlManager.otherDevicePlayingAudioWhenWatchNotConnectedToHeadphones()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in closure #1 in AudioRoutingControlManager.otherDevicePlayingAudioWhenWatchNotConnectedToHeadphones();

  return closure #1 in closure #1 in AudioRoutingControlManager.otherDevicePlayingAudioWhenWatchNotConnectedToHeadphones()(a1, v4, v5, v6);
}

uint64_t partial apply for closure #1 in closure #1 in AudioRoutingControlManager.otherDevicePlayingAudioWhenWatchNotConnectedToHeadphones()()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t outlined init with copy of TaskPriority?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTRSb_TG5TA(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTRSb_TG5TATQ0_;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTRSb_TG5(a1, v5);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in closure #1 in AudioRoutingControlManager.otherDevicePlayingAudioWhenWatchNotConnectedToHeadphones()(void *a1, void *a2)
{
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo17MPCPlayerResponseCs5Error_pGMd, &_sScCySo17MPCPlayerResponseCs5Error_pGMR) - 8) + 80);

  return closure #1 in closure #1 in closure #1 in closure #1 in AudioRoutingControlManager.otherDevicePlayingAudioWhenWatchNotConnectedToHeadphones()(a1, a2);
}

unint64_t lazy protocol witness table accessor for type NLPlaybackError and conformance NLPlaybackError()
{
  result = lazy protocol witness table cache variable for type NLPlaybackError and conformance NLPlaybackError;
  if (!lazy protocol witness table cache variable for type NLPlaybackError and conformance NLPlaybackError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NLPlaybackError and conformance NLPlaybackError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NLPlaybackError and conformance NLPlaybackError;
  if (!lazy protocol witness table cache variable for type NLPlaybackError and conformance NLPlaybackError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NLPlaybackError and conformance NLPlaybackError);
  }

  return result;
}

uint64_t partial apply for @objc closure #1 in AudioRoutingControlManager.areHeadphonesNearbyAndEligibleToPlay()()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = partial apply for @objc closure #1 in AudioRoutingControlManager.areHeadphonesNearbyAndEligibleToPlay();

  return @objc closure #1 in AudioRoutingControlManager.areHeadphonesNearbyAndEligibleToPlay()(v2, v3);
}

uint64_t objectdestroy_42Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t _sIeAgH_ytIeAgHr_TRTA(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = _sIeAgH_ytIeAgHr_TRTATQ0_;

  return _sIeAgH_ytIeAgHr_TR(a1, v4, v5, v7);
}

uint64_t partial apply for closure #1 in closure #1 in AudioRoutingControlManager.areHeadphonesNearbyAndEligibleToPlay()(unsigned __int8 a1, void *a2)
{
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo44AASmartRoutingDeviceNearbyAndStreamingStatusVs5NeverOGMd, &_sScCySo44AASmartRoutingDeviceNearbyAndStreamingStatusVs5NeverOGMR) - 8) + 80);

  return closure #1 in closure #1 in AudioRoutingControlManager.areHeadphonesNearbyAndEligibleToPlay()(a1, a2);
}

const char *AASmartRoutingDeviceNearbyAndStreamingStatusToString(unsigned int a1)
{
  if (a1 > 4)
  {
    return "?";
  }

  else
  {
    return off_277D89590[a1];
  }
}

uint64_t partial apply for closure #1 in closure #2 in AudioRoutingControlManager.activate()()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = partial apply for closure #1 in closure #2 in AudioRoutingControlManager.activate();

  return closure #1 in closure #2 in AudioRoutingControlManager.activate()();
}

uint64_t objectdestroy_35Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

uint64_t partial apply for closure #1 in closure #1 in AudioRoutingControlManager.activate()(void *a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5Error_pGMd, &_sScCySbs5Error_pGMR) - 8) + 80);

  return closure #1 in closure #1 in AudioRoutingControlManager.activate()(a1);
}

void MirroredBlobContentType.init(protobuf:)(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  if ((a1[1] & 1) == 0)
  {
    if (one-time initialization token for dataLink != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static WOLog.dataLink);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v9 = v8;
      *v7 = 134218242;
      *(v7 + 4) = v3;
      *(v7 + 12) = 2080;
      *(v7 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6675626F746F7270, 0xE800000000000000, &v9);
      _os_log_impl(&dword_20AEA4000, v5, v6, "Unrecognized MirroredBlobContentType rawValue: %ld, defaulted to %s", v7, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x20F2E9420](v8, -1, -1);
      MEMORY[0x20F2E9420](v7, -1, -1);
    }

    LOBYTE(v3) = 0;
  }

  *a2 = v3;
}

uint64_t MirroredBlobContentType.description.getter()
{
  v1 = 0x6675626F746F7270;
  v2 = 0x61646F4365636172;
  if (*v0 != 2)
  {
    v2 = 0x6C61767265746E69;
  }

  if (*v0)
  {
    v1 = 0x61646579656B736ELL;
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

WorkoutCore::MirroredBlobContentType_optional __swiftcall MirroredBlobContentType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MirroredBlobContentType()
{
  v1 = 0x6675626F746F7270;
  v2 = 0x61646F4365636172;
  if (*v0 != 2)
  {
    v2 = 0x6C61767265746E69;
  }

  if (*v0)
  {
    v1 = 0x61646579656B736ELL;
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

void protocol witness for MirroredEnumProtocol.init(protobuf:) in conformance MirroredBlobContentType(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v2 = *(a1 + 8);
  v3 = *a1;
  v4 = v2;
  MirroredBlobContentType.init(protobuf:)(&v3, a2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MirroredBlobContentType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MirroredBlobContentType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

unint64_t instantiation function for generic protocol witness table for MirroredBlobContentType(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MirroredBlobContentType and conformance MirroredBlobContentType();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type MirroredBlobContentType and conformance MirroredBlobContentType()
{
  result = lazy protocol witness table cache variable for type MirroredBlobContentType and conformance MirroredBlobContentType;
  if (!lazy protocol witness table cache variable for type MirroredBlobContentType and conformance MirroredBlobContentType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MirroredBlobContentType and conformance MirroredBlobContentType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MirroredBlobContentType and conformance MirroredBlobContentType;
  if (!lazy protocol witness table cache variable for type MirroredBlobContentType and conformance MirroredBlobContentType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MirroredBlobContentType and conformance MirroredBlobContentType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Apple_Workout_Core_MirroredBlobContentType and conformance Apple_Workout_Core_MirroredBlobContentType()
{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredBlobContentType and conformance Apple_Workout_Core_MirroredBlobContentType;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredBlobContentType and conformance Apple_Workout_Core_MirroredBlobContentType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredBlobContentType and conformance Apple_Workout_Core_MirroredBlobContentType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredBlobContentType and conformance Apple_Workout_Core_MirroredBlobContentType;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredBlobContentType and conformance Apple_Workout_Core_MirroredBlobContentType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredBlobContentType and conformance Apple_Workout_Core_MirroredBlobContentType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredBlobContentType and conformance Apple_Workout_Core_MirroredBlobContentType;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredBlobContentType and conformance Apple_Workout_Core_MirroredBlobContentType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredBlobContentType and conformance Apple_Workout_Core_MirroredBlobContentType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredBlobContentType and conformance Apple_Workout_Core_MirroredBlobContentType;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredBlobContentType and conformance Apple_Workout_Core_MirroredBlobContentType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredBlobContentType and conformance Apple_Workout_Core_MirroredBlobContentType);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MirroredBlobContentType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MirroredBlobContentType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

WorkoutCore::WorkoutBlockType_optional __swiftcall WorkoutBlockType.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance WorkoutBlockType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance WorkoutBlockType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance WorkoutBlockType@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance WorkoutBlock.CodingKeys(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x7370657473;
  if (v2 != 1)
  {
    v5 = 1684632949;
    v4 = 0xE400000000000000;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x746E756F63;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  v8 = 0x7370657473;
  if (*a2 != 1)
  {
    v8 = 1684632949;
    v3 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x746E756F63;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance WorkoutBlock.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance WorkoutBlock.CodingKeys()
{
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance WorkoutBlock.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance WorkoutBlock.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized WorkoutBlock.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance WorkoutBlock.CodingKeys(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x7370657473;
  if (v2 != 1)
  {
    v5 = 1684632949;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x746E756F63;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance WorkoutBlock.CodingKeys()
{
  v1 = 0x7370657473;
  if (*v0 != 1)
  {
    v1 = 1684632949;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746E756F63;
  }
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance WorkoutBlock.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized WorkoutBlock.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WorkoutBlock.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkoutBlock.CodingKeys and conformance WorkoutBlock.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WorkoutBlock.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkoutBlock.CodingKeys and conformance WorkoutBlock.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WorkoutBlock.repetitions.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t key path getter for WorkoutBlock.repetitions : WorkoutBlock@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t WorkoutBlock.repetitions.setter(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (!a1)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t (*WorkoutBlock.repetitions.modify(void *a1))(uint64_t *a1)
{
  a1[2] = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = a1[1];
  return WorkoutBlock.repetitions.modify;
}

uint64_t key path setter for WorkoutBlock.$repetitions : WorkoutBlock(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySi_GMd, &_s7Combine9PublishedV9PublisherVySi_GMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiGMd, &_s7Combine9PublishedVySiGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t WorkoutBlock.$repetitions.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySi_GMd, &_s7Combine9PublishedV9PublisherVySi_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiGMd, &_s7Combine9PublishedVySiGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*WorkoutBlock.$repetitions.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySi_GMd, &_s7Combine9PublishedV9PublisherVySi_GMR);
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

  v10 = OBJC_IVAR____TtC11WorkoutCore12WorkoutBlock__repetitions;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiGMd, &_s7Combine9PublishedVySiGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return WorkoutBlock.$repetitions.modify;
}

uint64_t WorkoutBlock.steps.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t key path getter for WorkoutBlock.steps : WorkoutBlock@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t key path setter for WorkoutBlock.steps : WorkoutBlock(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t WorkoutBlock.steps.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

void (*WorkoutBlock.steps.modify(uint64_t *a1))(void *a1)
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
  return WorkoutBlock.steps.modify;
}

void WorkoutBlock.steps.modify(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = *(*a1 + 32);
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t WorkoutBlock.$repetitions.getter(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a1;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path getter for WorkoutBlock.$repetitions : WorkoutBlock(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v8 = *a1;
  v9 = *a4;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path setter for WorkoutBlock.$steps : WorkoutBlock(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D4StepCG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D4StepCG_GMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C4StepCGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C4StepCGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t WorkoutBlock.$steps.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D4StepCG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D4StepCG_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C4StepCGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C4StepCGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*WorkoutBlock.$steps.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D4StepCG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D4StepCG_GMR);
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

  v10 = OBJC_IVAR____TtC11WorkoutCore12WorkoutBlock__steps;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C4StepCGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C4StepCGGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return WorkoutBlock.$steps.modify;
}

void WorkoutBlock.$repetitions.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[16];
  v6 = v3[13];
  v13 = v3[14];
  v8 = v3[11];
  v7 = v3[12];
  v10 = v3[9];
  v9 = v3[10];
  if (a2)
  {
    v4(v3[12], v6, v3[10]);
    swift_beginAccess();
    Published.projectedValue.setter();
    swift_endAccess();
    v11 = *(v8 + 8);
    v11(v6, v9);
    v12 = v13;
    v11(v13, v9);
  }

  else
  {
    swift_beginAccess();
    Published.projectedValue.setter();
    swift_endAccess();
    v12 = v13;
    (*(v8 + 8))(v13, v9);
  }

  free(v12);
  free(v6);
  free(v7);

  free(v3);
}

uint64_t WorkoutBlock.blockType.getter@<X0>(BOOL *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3 != 1;
  return result;
}

uint64_t WorkoutBlock.hash(into:)(uint64_t a1)
{
  WorkoutBlock.equivalentHash(into:)(a1);
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
  return dispatch thunk of Hashable.hash(into:)();
}

uint64_t WorkoutBlock.equivalentHash(into:)(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  MEMORY[0x20F2E7FF0]();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (!(v7 >> 62))
  {
    result = MEMORY[0x20F2E7FF0](*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10));
    v3 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }
  }

  v6 = __CocoaSet.count.getter();
  MEMORY[0x20F2E7FF0](v6);
  result = __CocoaSet.count.getter();
  v3 = result;
  if (!result)
  {
  }

LABEL_3:
  if (v3 >= 1)
  {
    v4 = 0;
    do
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        MEMORY[0x20F2E7A20](v4);
      }

      else
      {
        v5 = *(v7 + 8 * v4 + 32);
      }

      ++v4;
      WorkoutStep.equivalentHash(into:)(a1);
      type metadata accessor for UUID();
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
      dispatch thunk of Hashable.hash(into:)();
    }

    while (v3 != v4);
  }

  __break(1u);
  return result;
}

uint64_t WorkoutBlock.__allocating_init(_:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  Published.init(initialValue:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore0A4StepCGMd, &_sSay11WorkoutCore0A4StepCGMR);
  Published.init(initialValue:)();
  v6 = OBJC_IVAR____TtC11WorkoutCore12WorkoutBlock_uuid;
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 32))(v5 + v6, a1, v7);
  return v5;
}

uint64_t WorkoutBlock.init(_:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C4StepCGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C4StepCGGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiGMd, &_s7Combine9PublishedVySiGMR);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v18 - v11;
  v13 = OBJC_IVAR____TtC11WorkoutCore12WorkoutBlock__repetitions;
  v19 = 1;
  Published.init(initialValue:)();
  (*(v9 + 32))(v1 + v13, v12, v8);
  v14 = OBJC_IVAR____TtC11WorkoutCore12WorkoutBlock__steps;
  v19 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore0A4StepCGMd, &_sSay11WorkoutCore0A4StepCGMR);
  Published.init(initialValue:)();
  (*(v4 + 32))(v1 + v14, v7, v3);
  v15 = OBJC_IVAR____TtC11WorkoutCore12WorkoutBlock_uuid;
  v16 = type metadata accessor for UUID();
  (*(*(v16 - 8) + 32))(v1 + v15, a1, v16);
  return v1;
}

uint64_t WorkoutBlock.__allocating_init(from:)(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  WorkoutBlock.init(from:)(a1);
  return v5;
}

char *WorkoutBlock.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v63 = a1;
  v57 = *v1;
  v58 = v2;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v51 = v4;
  v52 = v5;
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v48 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v49 = &v47 - v9;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11WorkoutCore0D5BlockC10CodingKeys33_5D74E672B45A4C730D6E0D240D85CBC9LLOGMd, &_ss22KeyedDecodingContainerVy11WorkoutCore0D5BlockC10CodingKeys33_5D74E672B45A4C730D6E0D240D85CBC9LLOGMR);
  v54 = *(v56 - 8);
  v10 = *(v54 + 64);
  MEMORY[0x28223BE20](v56);
  v12 = &v47 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C4StepCGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C4StepCGGMR);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v47 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiGMd, &_s7Combine9PublishedVySiGMR);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v47 - v21;
  v23 = OBJC_IVAR____TtC11WorkoutCore12WorkoutBlock__repetitions;
  v65 = 1;
  Published.init(initialValue:)();
  v59 = v19;
  v24 = *(v19 + 32);
  v53 = v23;
  v62 = v18;
  v24(&v3[v23], v22, v18);
  v25 = OBJC_IVAR____TtC11WorkoutCore12WorkoutBlock__steps;
  v65 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore0A4StepCGMd, &_sSay11WorkoutCore0A4StepCGMR);
  Published.init(initialValue:)();
  v60 = v14;
  v61 = v13;
  v26 = *(v14 + 32);
  v50 = v25;
  v26(&v3[v25], v17, v13);
  v27 = v63[4];
  __swift_project_boxed_opaque_existential_1(v63, v63[3]);
  lazy protocol witness table accessor for type WorkoutBlock.CodingKeys and conformance WorkoutBlock.CodingKeys();
  v55 = v12;
  v28 = v58;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v28)
  {
    v31 = v60;
    v32 = v61;
    v37 = v3;
    (*(v59 + 8))(&v3[OBJC_IVAR____TtC11WorkoutCore12WorkoutBlock__repetitions], v62);
    (*(v31 + 8))(&v3[OBJC_IVAR____TtC11WorkoutCore12WorkoutBlock__steps], v32);
    v33 = *(*v3 + 48);
    v34 = *(*v3 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v29 = v53;
    v30 = v54;
    LOBYTE(v65) = 0;
    v36 = KeyedDecodingContainer.decode(_:forKey:)();
    swift_beginAccess();
    (*(v59 + 8))(&v3[v29], v62);
    v66 = v36;
    v37 = v3;
    Published.init(initialValue:)();
    swift_endAccess();
    LOBYTE(v65) = 1;
    lazy protocol witness table accessor for type [WorkoutStep] and conformance <A> [A](&lazy protocol witness table cache variable for type [WorkoutStep] and conformance <A> [A], &lazy protocol witness table cache variable for type WorkoutStep and conformance WorkoutStep);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v38 = v60;
    v39 = v66;
    v40 = v50;
    swift_beginAccess();
    (*(v38 + 8))(&v3[v40], v61);
    v64 = v39;
    Published.init(initialValue:)();
    swift_endAccess();
    LOBYTE(v65) = 2;
    if (KeyedDecodingContainer.contains(_:)())
    {
      LOBYTE(v65) = 2;
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
      v41 = v51;
      v42 = v55;
      v43 = v56;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v30 + 8))(v42, v43);
      v44 = v52;
      v45 = v49;
    }

    else
    {
      v46 = v48;
      UUID.init()();
      (*(v30 + 8))(v55, v56);
      v45 = v46;
      v41 = v51;
      v44 = v52;
    }

    (*(v44 + 32))(&v37[OBJC_IVAR____TtC11WorkoutCore12WorkoutBlock_uuid], v45, v41);
  }

  __swift_destroy_boxed_opaque_existential_1(v63);
  return v37;
}

uint64_t WorkoutBlock.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11WorkoutCore0D5BlockC10CodingKeys33_5D74E672B45A4C730D6E0D240D85CBC9LLOGMd, &_ss22KeyedEncodingContainerVy11WorkoutCore0D5BlockC10CodingKeys33_5D74E672B45A4C730D6E0D240D85CBC9LLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type WorkoutBlock.CodingKeys and conformance WorkoutBlock.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  LOBYTE(v11) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v10[7] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore0A4StepCGMd, &_sSay11WorkoutCore0A4StepCGMR);
    lazy protocol witness table accessor for type [WorkoutStep] and conformance <A> [A](&lazy protocol witness table cache variable for type [WorkoutStep] and conformance <A> [A], &lazy protocol witness table cache variable for type WorkoutStep and conformance WorkoutStep);
    KeyedEncodingContainer.encode<A>(_:forKey:)();

    LOBYTE(v11) = 2;
    type metadata accessor for UUID();
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t WorkoutBlock.isEquivalent(to:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, v2);

  return specialized WorkoutBlock.isEquivalent(to:)(v4, v1, v2, v3);
}

uint64_t WorkoutBlock.deinit()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore12WorkoutBlock__repetitions;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiGMd, &_s7Combine9PublishedVySiGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC11WorkoutCore12WorkoutBlock__steps;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C4StepCGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C4StepCGGMR);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC11WorkoutCore12WorkoutBlock_uuid;
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return v0;
}

uint64_t WorkoutBlock.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore12WorkoutBlock__repetitions;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiGMd, &_s7Combine9PublishedVySiGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC11WorkoutCore12WorkoutBlock__steps;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C4StepCGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C4StepCGGMR);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC11WorkoutCore12WorkoutBlock_uuid;
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t WorkoutBlock.hashValue.getter()
{
  v1 = *v0;
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type WorkoutBlock and conformance WorkoutBlock, type metadata accessor for WorkoutBlock);
  return dispatch thunk of Hashable._rawHashValue(seed:)();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance WorkoutBlock(uint64_t a1)
{
  v2 = *v1;
  WorkoutBlock.equivalentHash(into:)(a1);
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance WorkoutBlock()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  MEMORY[0x20F2E7FF0]();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (!(v7 >> 62))
  {
    result = MEMORY[0x20F2E7FF0](*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10));
    v3 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_10:

    type metadata accessor for UUID();
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    dispatch thunk of Hashable.hash(into:)();
    return Hasher._finalize()();
  }

  v6 = __CocoaSet.count.getter();
  MEMORY[0x20F2E7FF0](v6);
  result = __CocoaSet.count.getter();
  v3 = result;
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v3 >= 1)
  {
    v4 = 0;
    do
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        MEMORY[0x20F2E7A20](v4);
      }

      else
      {
        v5 = *(v7 + 8 * v4 + 32);
      }

      ++v4;
      WorkoutStep.equivalentHash(into:)(v8);
      type metadata accessor for UUID();
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
      dispatch thunk of Hashable.hash(into:)();
    }

    while (v3 != v4);
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

char *protocol witness for Decodable.init(from:) in conformance WorkoutBlock@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = *(v2 + 48);
  v7 = *(v2 + 52);
  v8 = swift_allocObject();
  result = WorkoutBlock.init(from:)(a1);
  if (!v3)
  {
    *a2 = v8;
  }

  return result;
}

uint64_t protocol witness for Equivalent.isEquivalent(to:) in conformance WorkoutBlock(void *a1)
{
  v2 = *v1;
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_project_boxed_opaque_existential_1(a1, v3);

  return specialized WorkoutBlock.isEquivalent(to:)(v5, v2, v3, v4);
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance WorkoutBlock@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t static WorkoutBlock.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  return specialized WorkoutBlock.isEquivalent(to:)(a2, a1);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance WorkoutBlock(uint64_t **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  return specialized WorkoutBlock.isEquivalent(to:)(v3, v2);
}

uint64_t WorkoutBlock.uuid.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11WorkoutCore12WorkoutBlock_uuid;
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t protocol witness for Identifiable.id.getter in conformance WorkoutBlock@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC11WorkoutCore12WorkoutBlock_uuid;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

unint64_t lazy protocol witness table accessor for type WorkoutBlock.CodingKeys and conformance WorkoutBlock.CodingKeys()
{
  result = lazy protocol witness table cache variable for type WorkoutBlock.CodingKeys and conformance WorkoutBlock.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkoutBlock.CodingKeys and conformance WorkoutBlock.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutBlock.CodingKeys and conformance WorkoutBlock.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkoutBlock.CodingKeys and conformance WorkoutBlock.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkoutBlock.CodingKeys and conformance WorkoutBlock.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutBlock.CodingKeys and conformance WorkoutBlock.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkoutBlock.CodingKeys and conformance WorkoutBlock.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkoutBlock.CodingKeys and conformance WorkoutBlock.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutBlock.CodingKeys and conformance WorkoutBlock.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkoutBlock.CodingKeys and conformance WorkoutBlock.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkoutBlock.CodingKeys and conformance WorkoutBlock.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutBlock.CodingKeys and conformance WorkoutBlock.CodingKeys);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [WorkoutStep] and conformance <A> [A](unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay11WorkoutCore0A4StepCGMd, &_sSay11WorkoutCore0A4StepCGMR);
    lazy protocol witness table accessor for type UUID and conformance UUID(a2, type metadata accessor for WorkoutStep);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t specialized WorkoutBlock.isEquivalent(to:)(uint64_t a1, uint64_t *a2)
{
  v8[3] = *a2;
  v8[4] = &protocol witness table for WorkoutBlock;
  v8[0] = a1;
  outlined init with copy of Equivalent(v8, v7);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore10Equivalent_pMd, &_s11WorkoutCore10Equivalent_pMR);
  if (!swift_dynamicCast())
  {
    goto LABEL_5;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v2 = v7[0];
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v2 != v7[0])
  {

LABEL_5:
    v5 = 0;
    goto LABEL_6;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v3 = v7[0];
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v4 = specialized _arrayForceCast<A, B>(_:)(v7[0]);

  v5 = specialized Array.isEquivalent(to:)(v4, v3);

LABEL_6:
  __swift_destroy_boxed_opaque_existential_1(v8);
  return v5 & 1;
}

uint64_t specialized WorkoutBlock.isEquivalent(to:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = *a2;
  v14[3] = a3;
  v14[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v14);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a1, a3);
  outlined init with copy of Equivalent(v14, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore10Equivalent_pMd, &_s11WorkoutCore10Equivalent_pMR);
  if (!swift_dynamicCast())
  {
    goto LABEL_5;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v8 = v13[0];
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v8 != v13[0])
  {

LABEL_5:
    v11 = 0;
    goto LABEL_6;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v9 = v13[0];
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v10 = specialized _arrayForceCast<A, B>(_:)(v13[0]);

  v11 = specialized Array.isEquivalent(to:)(v10, v9);

LABEL_6:
  __swift_destroy_boxed_opaque_existential_1(v14);
  return v11 & 1;
}

uint64_t type metadata accessor for WorkoutBlock()
{
  result = type metadata singleton initialization cache for WorkoutBlock;
  if (!type metadata singleton initialization cache for WorkoutBlock)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t specialized WorkoutBlock.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of WorkoutBlock.CodingKeys.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

id specialized static WorkoutBlock.workStep(activityType:activityMoveMode:)(void *a1, uint64_t a2)
{
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v4 = *(v45 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v45);
  v7 = &v42 - v6;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSSgGMd, &_s7Combine9PublishedVySSSgGMR);
  v8 = *(v44 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v44);
  v11 = &v42 - v10;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_allocWithZone(MEMORY[0x277D0A828]) initWithWorkoutActivityType:a1 activityMoveMode:a2];
  if (result)
  {
    v18 = result;
    specialized static IntervalWorkout.supportedGoalTypes(for:)(result);
    v20 = v19;

    v21 = *(v20 + 16);
    v22 = 32;
    v23 = v21;
    v43 = a1;
    while (v23)
    {
      v24 = *(v20 + v22);
      v22 += 8;
      --v23;
      if (v24 == 1)
      {

        v25 = [objc_opt_self() meterUnit];
        v26 = [objc_opt_self() quantityWithUnit:v25 doubleValue:100.0];

        v27 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:1 value:v26];
LABEL_10:
        v31 = v27;

        goto LABEL_12;
      }
    }

    v28 = 32;
    while (v21)
    {
      v29 = *(v20 + v28);
      v28 += 8;
      --v21;
      if (v29 == 2)
      {

        v30 = [objc_opt_self() secondUnit];
        v26 = [objc_opt_self() quantityWithUnit:v30 doubleValue:30.0];

        v27 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:2 value:v26];
        goto LABEL_10;
      }
    }

    v31 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:0 value:0];
LABEL_12:
    v32 = v31;
    UUID.init()();
    v33 = type metadata accessor for WorkoutStep();
    v34 = *(v33 + 48);
    v35 = *(v33 + 52);
    v36 = swift_allocObject();
    v37 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep__displayName;
    v47 = 0;
    v48 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    Published.init(initialValue:)();
    (*(v8 + 32))(v36 + v37, v11, v44);
    *(v36 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_targetZones) = MEMORY[0x277D84F90];
    *(v36 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_heartRateTargetZone) = 0;
    v38 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep__forcePublisherUpdate;
    LOBYTE(v47) = 0;
    Published.init(initialValue:)();
    (*(v4 + 32))(v36 + v38, v7, v45);
    *(v36 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_powerZonesAlertTargetZone) = 0;
    *(v36 + 16) = 0;
    swift_beginAccess();
    v46 = v32;
    type metadata accessor for NLSessionActivityGoal();
    v39 = v32;
    Published.init(initialValue:)();
    swift_endAccess();
    v40 = v43;
    *(v36 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_activityType) = v43;
    (*(v13 + 16))(v36 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_uuid, v16, v12);
    swift_getKeyPath();
    swift_getKeyPath();
    v47 = 0;
    v48 = 0;
    v41 = v40;

    static Published.subscript.setter();

    (*(v13 + 8))(v16, v12);
    return v36;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id specialized static WorkoutBlock.restStep(activityType:activityMoveMode:)(void *a1, uint64_t a2)
{
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v4 = *(v45 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v45);
  v7 = &v42 - v6;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSSgGMd, &_s7Combine9PublishedVySSSgGMR);
  v8 = *(v44 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v44);
  v11 = &v42 - v10;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_allocWithZone(MEMORY[0x277D0A828]) initWithWorkoutActivityType:a1 activityMoveMode:a2];
  if (result)
  {
    v18 = result;
    specialized static IntervalWorkout.supportedGoalTypes(for:)(result);
    v20 = v19;

    v21 = *(v20 + 16);
    v22 = 32;
    v23 = v21;
    v43 = a1;
    while (v23)
    {
      v24 = *(v20 + v22);
      v22 += 8;
      --v23;
      if (v24 == 2)
      {

        v25 = [objc_opt_self() secondUnit];
        v26 = [objc_opt_self() quantityWithUnit:v25 doubleValue:30.0];

        v27 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:2 value:v26];
LABEL_10:
        v31 = v27;

        goto LABEL_12;
      }
    }

    v28 = 32;
    while (v21)
    {
      v29 = *(v20 + v28);
      v28 += 8;
      --v21;
      if (v29 == 1)
      {

        v30 = [objc_opt_self() meterUnit];
        v26 = [objc_opt_self() quantityWithUnit:v30 doubleValue:100.0];

        v27 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:1 value:v26];
        goto LABEL_10;
      }
    }

    v31 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:0 value:0];
LABEL_12:
    v32 = v31;
    UUID.init()();
    v33 = type metadata accessor for WorkoutStep();
    v34 = *(v33 + 48);
    v35 = *(v33 + 52);
    v36 = swift_allocObject();
    v37 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep__displayName;
    v47 = 0;
    v48 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    Published.init(initialValue:)();
    (*(v8 + 32))(v36 + v37, v11, v44);
    *(v36 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_targetZones) = MEMORY[0x277D84F90];
    *(v36 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_heartRateTargetZone) = 0;
    v38 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep__forcePublisherUpdate;
    LOBYTE(v47) = 0;
    Published.init(initialValue:)();
    (*(v4 + 32))(v36 + v38, v7, v45);
    *(v36 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_powerZonesAlertTargetZone) = 0;
    *(v36 + 16) = 1;
    swift_beginAccess();
    v46 = v32;
    type metadata accessor for NLSessionActivityGoal();
    v39 = v32;
    Published.init(initialValue:)();
    swift_endAccess();
    v40 = v43;
    *(v36 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_activityType) = v43;
    (*(v13 + 16))(v36 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_uuid, v16, v12);
    swift_getKeyPath();
    swift_getKeyPath();
    v47 = 0;
    v48 = 0;
    v41 = v40;

    static Published.subscript.setter();

    (*(v13 + 8))(v16, v12);
    return v36;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t specialized static WorkoutBlock.canonical(activityType:activityMoveMode:)(void *a1, uint64_t a2)
{
  v35 = a2;
  v37 = a1;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C4StepCGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C4StepCGGMR);
  v2 = *(v36 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v36);
  v5 = &v34 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiGMd, &_s7Combine9PublishedVySiGMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v34 - v9;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  v16 = type metadata accessor for WorkoutBlock();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  v19 = swift_allocObject();
  v20 = OBJC_IVAR____TtC11WorkoutCore12WorkoutBlock__repetitions;
  v38[0] = 1;
  Published.init(initialValue:)();
  v21 = v10;
  v22 = v35;
  (*(v7 + 32))(v19 + v20, v21, v6);
  v23 = OBJC_IVAR____TtC11WorkoutCore12WorkoutBlock__steps;
  v38[0] = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore0A4StepCGMd, &_sSay11WorkoutCore0A4StepCGMR);
  Published.init(initialValue:)();
  (*(v2 + 32))(v19 + v23, v5, v36);
  v24 = v37;
  (*(v12 + 32))(v19 + OBJC_IVAR____TtC11WorkoutCore12WorkoutBlock_uuid, v15, v11);
  WorkoutBlock.repetitions.setter(4);
  specialized static WorkoutBlock.workStep(activityType:activityMoveMode:)(v24, v22);
  swift_getKeyPath();
  swift_getKeyPath();
  v25 = static Published.subscript.modify();
  v27 = v26;
  MEMORY[0x20F2E6F30]();
  if (*((*v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v32 = *((*v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v25(v38, 0);

  specialized static WorkoutBlock.restStep(activityType:activityMoveMode:)(v24, v22);
  swift_getKeyPath();
  swift_getKeyPath();
  v28 = static Published.subscript.modify();
  v30 = v29;
  MEMORY[0x20F2E6F30]();
  if (*((*v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v33 = *((*v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v28(v38, 0);

  return v19;
}

unint64_t lazy protocol witness table accessor for type WorkoutBlockType and conformance WorkoutBlockType()
{
  result = lazy protocol witness table cache variable for type WorkoutBlockType and conformance WorkoutBlockType;
  if (!lazy protocol witness table cache variable for type WorkoutBlockType and conformance WorkoutBlockType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutBlockType and conformance WorkoutBlockType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkoutBlockType and conformance WorkoutBlockType;
  if (!lazy protocol witness table cache variable for type WorkoutBlockType and conformance WorkoutBlockType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutBlockType and conformance WorkoutBlockType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [WorkoutBlockType] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [WorkoutBlockType] and conformance [A];
  if (!lazy protocol witness table cache variable for type [WorkoutBlockType] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay11WorkoutCore0A9BlockTypeOGMd, &_sSay11WorkoutCore0A9BlockTypeOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [WorkoutBlockType] and conformance [A]);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WorkoutBlockType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WorkoutBlockType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void type metadata completion function for WorkoutBlock()
{
  type metadata accessor for Published<Int>();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    type metadata accessor for Published<[WorkoutStep]>();
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      v4 = type metadata accessor for UUID();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void type metadata accessor for Published<[WorkoutStep]>()
{
  if (!lazy cache variable for type metadata for Published<[WorkoutStep]>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay11WorkoutCore0A4StepCGMd, &_sSay11WorkoutCore0A4StepCGMR);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Published<[WorkoutStep]>);
    }
  }
}

uint64_t getEnumTagSinglePayload for WorkoutBlock.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WorkoutBlock.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t outlined init with copy of Equivalent(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t specialized == infix<A>(_:_:)(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0xD000000000000012;
    }

    else
    {
      v4 = 0x5379616C70736964;
    }

    if (v2)
    {
      v3 = 0x800000020B455000;
    }

    else
    {
      v3 = 0xEB000000006E6170;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0x800000020B455020;
    v4 = 0xD000000000000012;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0x800000020B455040;
    }

    else
    {
      v3 = 0x800000020B455060;
    }

    v4 = 0xD000000000000011;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v8 = 0xD000000000000012;
    }

    else
    {
      v8 = 0x5379616C70736964;
    }

    if (a2)
    {
      v7 = 0x800000020B455000;
    }

    else
    {
      v7 = 0xEB000000006E6170;
    }

    if (v4 != v8)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v5 = 0x800000020B455040;
    if (a2 != 3)
    {
      v5 = 0x800000020B455060;
    }

    if (a2 == 2)
    {
      v6 = 0xD000000000000012;
    }

    else
    {
      v6 = 0xD000000000000011;
    }

    if (a2 == 2)
    {
      v7 = 0x800000020B455020;
    }

    else
    {
      v7 = v5;
    }

    if (v4 != v6)
    {
      goto LABEL_34;
    }
  }

  if (v3 != v7)
  {
LABEL_34:
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_35;
  }

  v9 = 1;
LABEL_35:

  return v9 & 1;
}

{
  v2 = 0xEF64656C62616E45;
  v3 = 0x79616C506F747561;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x677553616964656DLL;
      v6 = 0xEF6E6F6974736567;
    }

    else
    {
      v6 = 0x800000020B454810;
      v5 = 0xD000000000000019;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0xD000000000000013;
    }

    else
    {
      v5 = 0x79616C506F747561;
    }

    if (v4)
    {
      v6 = 0x800000020B4547E0;
    }

    else
    {
      v6 = 0xEF64656C62616E45;
    }
  }

  v7 = 0x677553616964656DLL;
  v8 = 0x800000020B454810;
  if (a2 == 2)
  {
    v8 = 0xEF6E6F6974736567;
  }

  else
  {
    v7 = 0xD000000000000019;
  }

  if (a2)
  {
    v3 = 0xD000000000000013;
    v2 = 0x800000020B4547E0;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

{
  v2 = 0xEC00000050544663;
  v3 = 0x6974616D6F747561;
  v4 = a1;
  v5 = 0xEF657A695373656ELL;
  v6 = 0xD000000000000011;
  v7 = 0x800000020B453FB0;
  if (a1 != 4)
  {
    v6 = 0x6E6F697461657263;
    v7 = 0xEC00000065746144;
  }

  if (a1 == 3)
  {
    v6 = 0x6F5A6C61756E616DLL;
  }

  else
  {
    v5 = v7;
  }

  v8 = 0xD000000000000011;
  v9 = 0x800000020B453F70;
  v10 = 0x54466C61756E616DLL;
  v11 = 0xE900000000000050;
  if (a1 == 1)
  {
    v10 = 0x6974616D6F747561;
    v11 = 0xEC00000050544663;
  }

  if (a1)
  {
    v8 = v10;
    v9 = v11;
  }

  if (a1 <= 2u)
  {
    v12 = v8;
  }

  else
  {
    v12 = v6;
  }

  if (v4 <= 2)
  {
    v13 = v9;
  }

  else
  {
    v13 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 != 3)
    {
      if (a2 == 4)
      {
        v2 = 0x800000020B453FB0;
        if (v12 != 0xD000000000000011)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v2 = 0xEC00000065746144;
        if (v12 != 0x6E6F697461657263)
        {
          goto LABEL_32;
        }
      }

      goto LABEL_29;
    }

    v3 = 0x6F5A6C61756E616DLL;
    v2 = 0xEF657A695373656ELL;
  }

  else
  {
    if (!a2)
    {
      v2 = 0x800000020B453F70;
      if (v12 != 0xD000000000000011)
      {
        goto LABEL_32;
      }

      goto LABEL_29;
    }

    if (a2 != 1)
    {
      v2 = 0xE900000000000050;
      if (v12 != 0x54466C61756E616DLL)
      {
        goto LABEL_32;
      }

      goto LABEL_29;
    }
  }

  if (v12 != v3)
  {
LABEL_32:
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_33;
  }

LABEL_29:
  if (v13 != v2)
  {
    goto LABEL_32;
  }

  v14 = 1;
LABEL_33:

  return v14 & 1;
}

{
  v2 = 0x65756C6176;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x6E6F697461657263;
    }

    else
    {
      v4 = 0x7461446863746566;
    }

    if (v3 == 2)
    {
      v5 = 0xEC00000065746144;
    }

    else
    {
      v5 = 0xE900000000000065;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x656372756F73;
    }

    else
    {
      v4 = 0x65756C6176;
    }

    if (v3)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  v6 = 0xE500000000000000;
  v7 = 0x6E6F697461657263;
  v8 = 0xEC00000065746144;
  if (a2 != 2)
  {
    v7 = 0x7461446863746566;
    v8 = 0xE900000000000065;
  }

  if (a2)
  {
    v2 = 0x656372756F73;
    v6 = 0xE600000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

{
  v2 = 0xEC00000065636170;
  v3 = 0x5F676E696C6C6F72;
  v4 = a1;
  v5 = 0xED00007265776F70;
  v6 = 1701736302;
  if (a1 == 6)
  {
    v6 = 0x5F65676172657661;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  v7 = 0x5F65676172657661;
  v8 = 0xEF65636E65646163;
  if (a1 != 4)
  {
    v7 = 0xD000000000000013;
    v8 = 0x800000020B4544E0;
  }

  if (a1 > 5u)
  {
    v8 = v5;
  }

  else
  {
    v6 = v7;
  }

  v9 = 0xD000000000000012;
  v10 = 0x800000020B454490;
  if (a1 != 2)
  {
    v9 = 0xD000000000000015;
    v10 = 0x800000020B4544B0;
  }

  v11 = 0x5F65676172657661;
  if (!a1)
  {
    v11 = 0x5F676E696C6C6F72;
  }

  if (a1 <= 1u)
  {
    v9 = v11;
    v10 = 0xEC00000065636170;
  }

  if (a1 <= 3u)
  {
    v12 = v9;
  }

  else
  {
    v12 = v6;
  }

  if (v4 <= 3)
  {
    v13 = v10;
  }

  else
  {
    v13 = v8;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v2 = 0xED00007265776F70;
        if (v12 != 0x5F65676172657661)
        {
          goto LABEL_43;
        }
      }

      else
      {
        v2 = 0xE400000000000000;
        if (v12 != 1701736302)
        {
          goto LABEL_43;
        }
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xEF65636E65646163;
      if (v12 != 0x5F65676172657661)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v2 = 0x800000020B4544E0;
      if (v12 != 0xD000000000000013)
      {
        goto LABEL_43;
      }
    }
  }

  else
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v2 = 0x800000020B454490;
        if (v12 != 0xD000000000000012)
        {
          goto LABEL_43;
        }

        goto LABEL_40;
      }

      v2 = 0x800000020B4544B0;
      v3 = 0xD000000000000015;
    }

    else if (a2)
    {
      if (v12 != 0x5F65676172657661)
      {
        goto LABEL_43;
      }

      goto LABEL_40;
    }

    if (v12 != v3)
    {
LABEL_43:
      v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_44;
    }
  }

LABEL_40:
  if (v13 != v2)
  {
    goto LABEL_43;
  }

  v14 = 1;
LABEL_44:

  return v14 & 1;
}

{
  v2 = 1701869940;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x756F427265707075;
    }

    else
    {
      v4 = 0xD000000000000010;
    }

    if (v3 == 2)
    {
      v5 = 0xEA0000000000646ELL;
    }

    else
    {
      v5 = 0x800000020B454030;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x756F427265776F6CLL;
    }

    else
    {
      v4 = 1701869940;
    }

    if (v3)
    {
      v5 = 0xEA0000000000646ELL;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  v6 = 0xE400000000000000;
  v7 = 0x756F427265707075;
  v8 = 0x800000020B454030;
  if (a2 == 2)
  {
    v8 = 0xEA0000000000646ELL;
  }

  else
  {
    v7 = 0xD000000000000010;
  }

  if (a2)
  {
    v2 = 0x756F427265776F6CLL;
    v6 = 0xEA0000000000646ELL;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0xD000000000000016;
    }

    else
    {
      v3 = 0x614E656372756F73;
    }

    if (v2)
    {
      v4 = 0x800000020B455080;
    }

    else
    {
      v4 = 0xEA0000000000656DLL;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0x6D49656372756F73;
    v4 = 0xEF61746144656761;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0x72617453636E7973;
    }

    else
    {
      v3 = 1684632949;
    }

    if (v2 == 3)
    {
      v4 = 0xED00006574614474;
    }

    else
    {
      v4 = 0xE400000000000000;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0xD000000000000016;
    }

    else
    {
      v6 = 0x614E656372756F73;
    }

    if (a2)
    {
      v5 = 0x800000020B455080;
    }

    else
    {
      v5 = 0xEA0000000000656DLL;
    }

    if (v3 != v6)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0xEF61746144656761;
    if (v3 != 0x6D49656372756F73)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0xED00006574614474;
    if (v3 != 0x72617453636E7973)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v5 = 0xE400000000000000;
    if (v3 != 1684632949)
    {
LABEL_34:
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_35;
    }
  }

  if (v4 != v5)
  {
    goto LABEL_34;
  }

  v7 = 1;
LABEL_35:

  return v7 & 1;
}

{
  v2 = "audioTranscriptionsEnabled";
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0xD000000000000024;
    }

    else
    {
      v5 = 0xD000000000000022;
    }

    if (v3 == 2)
    {
      v4 = "oneMasterTypePace";
    }

    else
    {
      v4 = "oneMasterTypeCadence";
    }
  }

  else
  {
    if (a1)
    {
      v4 = "oneMasterTypeNone";
    }

    else
    {
      v4 = "audioTranscriptionsEnabled";
    }

    v5 = 0xD000000000000021;
  }

  v6 = "oneMasterTypePace";
  v7 = 0xD000000000000024;
  if (a2 != 2)
  {
    v7 = 0xD000000000000022;
    v6 = "oneMasterTypeCadence";
  }

  if (a2)
  {
    v2 = "oneMasterTypeNone";
  }

  if (a2 <= 1u)
  {
    v8 = 0xD000000000000021;
  }

  else
  {
    v8 = v7;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v6;
  }

  if (v5 == v8 && (v4 | 0x8000000000000000) == (v9 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v10 & 1;
}

{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v3 = 0x6E6F697461657263;
    }

    else
    {
      v3 = 0xD000000000000010;
    }

    if (v2 == 2)
    {
      v4 = 0xEC00000065746144;
    }

    else
    {
      v4 = 0x800000020B454000;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 0xD000000000000015;
    }

    else
    {
      v3 = 0x746E756F63;
    }

    if (v2)
    {
      v4 = 0x800000020B453FE0;
    }

    else
    {
      v4 = 0xE500000000000000;
    }
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v7 = 0x6E6F697461657263;
    }

    else
    {
      v7 = 0xD000000000000010;
    }

    if (a2 == 2)
    {
      v6 = 0xEC00000065746144;
    }

    else
    {
      v6 = 0x800000020B454000;
    }

    if (v3 != v7)
    {
      goto LABEL_32;
    }
  }

  else
  {
    if (a2)
    {
      v5 = 0xD000000000000015;
    }

    else
    {
      v5 = 0x746E756F63;
    }

    if (a2)
    {
      v6 = 0x800000020B453FE0;
    }

    else
    {
      v6 = 0xE500000000000000;
    }

    if (v3 != v5)
    {
      goto LABEL_32;
    }
  }

  if (v4 != v6)
  {
LABEL_32:
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_33;
  }

  v8 = 1;
LABEL_33:

  return v8 & 1;
}

{
  v2 = a1;
  v3 = 0xE400000000000000;
  v4 = 0x7974697669746361;
  v5 = 0xEC00000065707954;
  v6 = 0x6C61567472656C61;
  v7 = 0xEA00000000006575;
  if (a1 != 4)
  {
    v6 = 0x746144746E657665;
    v7 = 0xE900000000000065;
  }

  if (a1 != 3)
  {
    v4 = v6;
    v5 = v7;
  }

  v8 = 0x6F5A746567726174;
  v9 = 0xEA0000000000656ELL;
  if (a1 != 1)
  {
    v8 = 0x65636E6174736964;
    v9 = 0xEC00000065707954;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 1701869940;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 <= 2u)
  {
    if (!a2)
    {
      v12 = 0xE400000000000000;
      if (v10 != 1701869940)
      {
        goto LABEL_34;
      }

      goto LABEL_32;
    }

    if (a2 == 1)
    {
      v12 = 0xEA0000000000656ELL;
      if (v10 != 0x6F5A746567726174)
      {
        goto LABEL_34;
      }

      goto LABEL_32;
    }

    v13 = 0x65636E6174736964;
LABEL_29:
    v12 = 0xEC00000065707954;
    if (v10 != v13)
    {
      goto LABEL_34;
    }

    goto LABEL_32;
  }

  if (a2 == 3)
  {
    v13 = 0x7974697669746361;
    goto LABEL_29;
  }

  if (a2 == 4)
  {
    v12 = 0xEA00000000006575;
    if (v10 != 0x6C61567472656C61)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v12 = 0xE900000000000065;
    if (v10 != 0x746144746E657665)
    {
LABEL_34:
      v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_35;
    }
  }

LABEL_32:
  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v14 = 1;
LABEL_35:

  return v14 & 1;
}

{
  v2 = 0xD000000000000015;
  v3 = "alertValue";
  if (a1 > 3u)
  {
    v4 = "wo_disconnect_powerbeats";
    v10 = 0xD00000000000001DLL;
    if (a1 != 6)
    {
      v10 = 0xD000000000000020;
      v4 = "wo_connect_heart_rate_monitor";
    }

    v6 = "wo_disconnect_airpods";
    v11 = 0xD000000000000018;
    if (a1 == 4)
    {
      v11 = 0xD000000000000015;
    }

    else
    {
      v6 = "wo_connect_powerbeats";
    }

    v8 = a1 <= 5u;
    if (a1 <= 5u)
    {
      v9 = v11;
    }

    else
    {
      v9 = v10;
    }
  }

  else
  {
    v4 = "wo_disconnect_watch";
    v5 = 0xD000000000000012;
    if (a1 != 2)
    {
      v5 = 0xD000000000000015;
      v4 = "wo_connect_airpods";
    }

    v6 = "wo_connect_watch";
    v7 = 0xD000000000000013;
    if (!a1)
    {
      v7 = 0xD000000000000010;
      v6 = "alertValue";
    }

    v8 = a1 <= 1u;
    if (a1 <= 1u)
    {
      v9 = v7;
    }

    else
    {
      v9 = v5;
    }
  }

  if (v8)
  {
    v12 = v6;
  }

  else
  {
    v12 = v4;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v3 = "wo_disconnect_powerbeats";
        v2 = 0xD00000000000001DLL;
      }

      else
      {
        v3 = "wo_connect_heart_rate_monitor";
        v2 = 0xD000000000000020;
      }
    }

    else if (a2 == 4)
    {
      v3 = "wo_disconnect_airpods";
    }

    else
    {
      v3 = "wo_connect_powerbeats";
      v2 = 0xD000000000000018;
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v3 = "wo_disconnect_watch";
      v2 = 0xD000000000000012;
    }

    else
    {
      v3 = "wo_connect_airpods";
    }
  }

  else if (a2)
  {
    v3 = "wo_connect_watch";
    v2 = 0xD000000000000013;
  }

  else
  {
    v2 = 0xD000000000000010;
  }

  if (v9 == v2 && (v12 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v13 = 1;
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v13 & 1;
}

{
  v2 = 0xEC00000065707954;
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v6 = 0xD000000000000013;
    }

    else
    {
      v6 = 0x7974697669746361;
    }

    if (v3)
    {
      v7 = 0x800000020B454C70;
    }

    else
    {
      v7 = 0xEC00000065707954;
    }
  }

  else
  {
    v4 = 0x6E6F697461636F6CLL;
    if (a1 == 3)
    {
      v5 = 0xEC00000065707954;
    }

    else
    {
      v4 = 0xD000000000000011;
      v5 = 0x800000020B454CA0;
    }

    if (a1 == 2)
    {
      v6 = 0x646574754D7369;
    }

    else
    {
      v6 = v4;
    }

    if (v3 == 2)
    {
      v7 = 0xE700000000000000;
    }

    else
    {
      v7 = v5;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v11 = 0xD000000000000013;
    }

    else
    {
      v11 = 0x7974697669746361;
    }

    if (a2)
    {
      v10 = 0x800000020B454C70;
    }

    else
    {
      v10 = 0xEC00000065707954;
    }

    if (v6 != v11)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v8 = 0x6E6F697461636F6CLL;
    if (a2 != 3)
    {
      v8 = 0xD000000000000011;
      v2 = 0x800000020B454CA0;
    }

    if (a2 == 2)
    {
      v9 = 0x646574754D7369;
    }

    else
    {
      v9 = v8;
    }

    if (a2 == 2)
    {
      v10 = 0xE700000000000000;
    }

    else
    {
      v10 = v2;
    }

    if (v6 != v9)
    {
      goto LABEL_37;
    }
  }

  if (v7 != v10)
  {
LABEL_37:
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_38;
  }

  v12 = 1;
LABEL_38:

  return v12 & 1;
}

{
  v2 = "art_rate_monitor";
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = "incompatibleGizmoVersion";
      v4 = 0xD000000000000017;
    }

    else
    {
      v5 = "fitnessTrackingDisabled";
      v4 = 0xD00000000000001BLL;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0xD000000000000018;
    }

    else
    {
      v4 = 0xD000000000000016;
    }

    if (v3)
    {
      v5 = "gizmoWorkoutAppMissing";
    }

    else
    {
      v5 = "art_rate_monitor";
    }
  }

  if (a2 > 1u)
  {
    v2 = "incompatibleGizmoVersion";
    v6 = "fitnessTrackingDisabled";
    v7 = a2 == 2;
    if (a2 == 2)
    {
      v8 = 0xD000000000000017;
    }

    else
    {
      v8 = 0xD00000000000001BLL;
    }
  }

  else
  {
    v6 = "gizmoWorkoutAppMissing";
    v7 = a2 == 0;
    if (a2)
    {
      v8 = 0xD000000000000018;
    }

    else
    {
      v8 = 0xD000000000000016;
    }
  }

  if (v7)
  {
    v9 = v2;
  }

  else
  {
    v9 = v6;
  }

  if (v4 == v8 && (v5 | 0x8000000000000000) == (v9 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v10 & 1;
}

{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 7955819;
    }

    else
    {
      v3 = 1701869940;
    }

    if (v2)
    {
      v4 = 0xE300000000000000;
    }

    else
    {
      v4 = 0xE400000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE500000000000000;
    v3 = 0x65756C6176;
  }

  else if (a1 == 3)
  {
    v3 = 0x694C676E69727473;
    v4 = 0xED00006C61726574;
  }

  else
  {
    v3 = 0x7974697669746361;
    v4 = 0xEC00000065707954;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 7955819;
    }

    else
    {
      v9 = 1701869940;
    }

    if (a2)
    {
      v8 = 0xE300000000000000;
    }

    else
    {
      v8 = 0xE400000000000000;
    }

    if (v3 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0x694C676E69727473;
    v6 = 0xED00006C61726574;
    if (a2 != 3)
    {
      v5 = 0x7974697669746361;
      v6 = 0xEC00000065707954;
    }

    if (a2 == 2)
    {
      v7 = 0x65756C6176;
    }

    else
    {
      v7 = v5;
    }

    if (a2 == 2)
    {
      v8 = 0xE500000000000000;
    }

    else
    {
      v8 = v6;
    }

    if (v3 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v4 != v8)
  {
LABEL_33:
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

{
  v2 = a1;
  v3 = 0xE500000000000000;
  v4 = 0xEF6E6F6974617275;
  v5 = 0x4164657461657263;
  if (a1 == 2)
  {
    v5 = 0x4479616C70736964;
  }

  else
  {
    v4 = 0xE900000000000074;
  }

  v6 = 0xD000000000000010;
  if (a1)
  {
    v6 = 0x7374696E75;
  }

  else
  {
    v3 = 0x800000020B454460;
  }

  if (a1 <= 1u)
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  if (v2 <= 1)
  {
    v8 = v3;
  }

  else
  {
    v8 = v4;
  }

  if (a2 > 1u)
  {
    v11 = a2 == 2;
    v10 = 0xEF6E6F6974617275;
    v9 = 0xE900000000000074;
    if (a2 == 2)
    {
      v12 = 0x4479616C70736964;
    }

    else
    {
      v12 = 0x4164657461657263;
    }
  }

  else
  {
    v9 = 0xE500000000000000;
    v10 = 0x800000020B454460;
    v11 = a2 == 0;
    if (a2)
    {
      v12 = 0x7374696E75;
    }

    else
    {
      v12 = 0xD000000000000010;
    }
  }

  if (v11)
  {
    v13 = v10;
  }

  else
  {
    v13 = v9;
  }

  if (v7 == v12 && v8 == v13)
  {
    v14 = 1;
  }

  else
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v14 & 1;
}

{
  v2 = a1;
  if (a1 > 3u)
  {
    v9 = 0x697263736E617274;
    v10 = 0xEA00000000007470;
    if (a1 != 6)
    {
      v9 = 1701736314;
      v10 = 0xE400000000000000;
    }

    v11 = 0x706D6F4365636172;
    v12 = 0xEC0000006574656CLL;
    if (a1 != 4)
    {
      v11 = 0x647261646E617473;
      v12 = 0xE800000000000000;
    }

    if (a1 <= 5u)
    {
      v7 = v11;
    }

    else
    {
      v7 = v9;
    }

    if (v2 <= 5)
    {
      v8 = v12;
    }

    else
    {
      v8 = v10;
    }
  }

  else
  {
    v3 = 0xE800000000000000;
    v4 = 0x6E6F7473656C696DLL;
    v5 = 0xE900000000000065;
    if (a1 != 2)
    {
      v4 = 0x6D6F437265636170;
      v5 = 0xED00006574656C70;
    }

    v6 = 0xD000000000000012;
    if (a1)
    {
      v3 = 0x800000020B454400;
    }

    else
    {
      v6 = 0x6C61767265746E69;
    }

    if (a1 <= 1u)
    {
      v7 = v6;
    }

    else
    {
      v7 = v4;
    }

    if (v2 <= 1)
    {
      v8 = v3;
    }

    else
    {
      v8 = v5;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v13 = 0xEA00000000007470;
        if (v7 != 0x697263736E617274)
        {
          goto LABEL_47;
        }
      }

      else
      {
        v13 = 0xE400000000000000;
        if (v7 != 1701736314)
        {
LABEL_47:
          v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
          goto LABEL_48;
        }
      }
    }

    else if (a2 == 4)
    {
      v13 = 0xEC0000006574656CLL;
      if (v7 != 0x706D6F4365636172)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v13 = 0xE800000000000000;
      if (v7 != 0x647261646E617473)
      {
        goto LABEL_47;
      }
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v13 = 0xE900000000000065;
      if (v7 != 0x6E6F7473656C696DLL)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v13 = 0xED00006574656C70;
      if (v7 != 0x6D6F437265636170)
      {
        goto LABEL_47;
      }
    }
  }

  else if (a2)
  {
    v13 = 0x800000020B454400;
    if (v7 != 0xD000000000000012)
    {
      goto LABEL_47;
    }
  }

  else
  {
    v13 = 0xE800000000000000;
    if (v7 != 0x6C61767265746E69)
    {
      goto LABEL_47;
    }
  }

  if (v8 != v13)
  {
    goto LABEL_47;
  }

  v14 = 1;
LABEL_48:

  return v14 & 1;
}

{
  if (a1 <= 1u)
  {
    if (a1)
    {
      v2 = 1684632949;
    }

    else
    {
      v2 = 1701667182;
    }

    v3 = 0xE400000000000000;
  }

  else if (a1 == 2)
  {
    v2 = 0x6C4270756D726177;
    v3 = 0xEB000000006B636FLL;
  }

  else if (a1 == 3)
  {
    v2 = 0x6E776F646C6F6F63;
    v3 = 0xED00006B636F6C42;
  }

  else
  {
    v2 = 0x636F6C4270657473;
    v3 = 0xEA0000000000736BLL;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v8 = 1684632949;
    }

    else
    {
      v8 = 1701667182;
    }

    v7 = 0xE400000000000000;
    if (v2 != v8)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v4 = 0x6E776F646C6F6F63;
    v5 = 0xED00006B636F6C42;
    if (a2 != 3)
    {
      v4 = 0x636F6C4270657473;
      v5 = 0xEA0000000000736BLL;
    }

    if (a2 == 2)
    {
      v6 = 0x6C4270756D726177;
    }

    else
    {
      v6 = v4;
    }

    if (a2 == 2)
    {
      v7 = 0xEB000000006B636FLL;
    }

    else
    {
      v7 = v5;
    }

    if (v2 != v6)
    {
      goto LABEL_28;
    }
  }

  if (v3 != v7)
  {
LABEL_28:
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_29;
  }

  v9 = 1;
LABEL_29:

  return v9 & 1;
}

BOOL specialized == infix<A>(_:_:)(char a1, char a2)
{
  v9 = a1;
  v8 = a2;
  AppleExertionScale.rawValue.getter(&v6);
  AppleExertionScale.rawValue.getter(&v4);
  return v6 == v4 && v7 == v5;
}

uint64_t specialized == infix<A>(_:_:)()
{
  type metadata accessor for NSString(0, &lazy cache variable for type metadata for NSString, 0x277CCACA8);
  v0 = NSString.init(stringLiteral:)();
  v1 = NSString.init(stringLiteral:)();
  v2 = static NSObject.== infix(_:_:)();

  return v2 & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ11WorkoutCore16CyclingPowerZoneC_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    v5 = __CocoaSet.count.getter();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (a2 >> 62)
  {
    result = __CocoaSet.count.getter();
    if (v5 == result)
    {
      goto LABEL_5;
    }

    return 0;
  }

  result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 != result)
  {
    return 0;
  }

LABEL_5:
  if (!v5)
  {
    return 1;
  }

  v7 = a1 & 0xFFFFFFFFFFFFFF8;
  v8 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
  if (a1 < 0)
  {
    v7 = a1;
  }

  if (v4)
  {
    v8 = v7;
  }

  v9 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
  if (a2 < 0)
  {
    v10 = a2;
  }

  else
  {
    v10 = a2 & 0xFFFFFFFFFFFFFF8;
  }

  if (a2 >> 62)
  {
    v9 = v10;
  }

  if (v8 == v9)
  {
    return 1;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    if (((a2 | a1) & 0xC000000000000001) != 0)
    {
      v29 = a2 & 0xC000000000000001;
      v11 = 4;
      while (1)
      {
        v12 = v11 - 4;
        v13 = v11 - 3;
        if (__OFADD__(v11 - 4, 1))
        {
          __break(1u);
LABEL_58:
          __break(1u);
          goto LABEL_59;
        }

        if ((a1 & 0xC000000000000001) != 0)
        {
          result = MEMORY[0x20F2E7A20](v11 - 4, a1);
          v14 = result;
          if (v29)
          {
            goto LABEL_22;
          }
        }

        else
        {
          if (v12 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_60;
          }

          v14 = *(a1 + 8 * v11);

          if (v29)
          {
LABEL_22:
            v15 = MEMORY[0x20F2E7A20](v11 - 4, a2);
            goto LABEL_27;
          }
        }

        if (v12 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_61;
        }

        v15 = *(a2 + 8 * v11);

LABEL_27:
        v33 = type metadata accessor for Zone();
        v32[0] = v15;
        outlined init with copy of Any(v32, v31);

        if (!swift_dynamicCast())
        {
          goto LABEL_51;
        }

        if (*(v14 + 16) != *(v30 + 16) || *(v14 + 24) != *(v30 + 24) || *(v14 + 32) != *(v30 + 32))
        {

          goto LABEL_51;
        }

        v16 = *(v14 + 40);
        v17 = *(v30 + 40);

        __swift_destroy_boxed_opaque_existential_0(v32);

        result = v16 == v17;
        if (v16 == v17)
        {
          ++v11;
          if (v13 != v5)
          {
            continue;
          }
        }

        return result;
      }
    }

    v18 = (a1 + 32);
    v19 = (a2 + 32);
    v20 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v21 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = v5 - 1;
    while (1)
    {
      if (!v20)
      {
        goto LABEL_58;
      }

      if (!v21)
      {
        break;
      }

      v23 = *v18;
      v24 = *v19;
      v33 = type metadata accessor for Zone();
      v32[0] = v24;
      outlined init with copy of Any(v32, v31);
      swift_retain_n();

      if (!swift_dynamicCast())
      {
        goto LABEL_51;
      }

      if (*(v23 + 16) != *(v30 + 16) || *(v23 + 24) != *(v30 + 24) || *(v23 + 32) != *(v30 + 32))
      {

LABEL_51:
        __swift_destroy_boxed_opaque_existential_0(v32);

        return 0;
      }

      v25 = *(v23 + 40);
      v26 = *(v30 + 40);

      __swift_destroy_boxed_opaque_existential_0(v32);

      v28 = v22-- != 0;
      result = v25 == v26;
      if (v25 == v26)
      {
        --v21;
        --v20;
        ++v18;
        ++v19;
        if (v28)
        {
          continue;
        }
      }

      return result;
    }

LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ11WorkoutCore11MetricValueV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 48);
    for (i = (a1 + 48); ; i += 9)
    {
      v6 = *(i - 1);
      v7 = *i;
      v9 = i[1];
      v8 = i[2];
      v10 = i[3];
      v28 = i[5];
      v11 = *(v3 - 1);
      v12 = *v3;
      v13 = v3[1];
      v14 = v3[2];
      v15 = v3[3];
      v27 = v3[5];
      v25 = *(v3 + 48);
      v26 = *(i + 48);
      v23 = i[4];
      v24 = v3[4];
      if (v6)
      {
        if (!v11)
        {
          return 0;
        }

        if (*(i - 2) != *(v3 - 2) || v6 != v11)
        {
          v22 = i[3];
          v16 = v3[3];
          v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v15 = v16;
          v10 = v22;
          if ((v17 & 1) == 0)
          {
            return 0;
          }
        }
      }

      else if (v11)
      {
        return 0;
      }

      if (v7 != v12 || v9 != v13)
      {
        v18 = v10;
        v19 = v15;
        v20 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v15 = v19;
        v10 = v18;
        if ((v20 & 1) == 0)
        {
          return 0;
        }
      }

      if (v10)
      {
        if (!v15 || (v8 != v14 || v10 != v15) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v15)
      {
        return 0;
      }

      if (!v28)
      {
        break;
      }

      if (!v27)
      {
        return 0;
      }

      if (v23 != v24 || v28 != v27)
      {
        v21 = _stringCompareWithSmolCheck(_:_:expecting:)();
        result = 0;
        if ((v21 & 1) == 0)
        {
          return result;
        }

        goto LABEL_6;
      }

      if (v26 != v25)
      {
        return 0;
      }

LABEL_7:
      v3 += 9;
      if (!--v2)
      {
        return 1;
      }
    }

    result = 0;
    if (v27)
    {
      return result;
    }

LABEL_6:
    if ((v26 ^ v25))
    {
      return result;
    }

    goto LABEL_7;
  }

  return 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZSo19HKWorkoutMetricTypeV_Tt1g5(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ11WorkoutCore10TargetZoneC_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_141:
    v5 = __CocoaSet.count.getter();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (a2 >> 62)
  {
    result = __CocoaSet.count.getter();
    if (v5 == result)
    {
      goto LABEL_5;
    }

LABEL_137:
    v31 = 0;
    return v31 & 1;
  }

  result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 != result)
  {
    goto LABEL_137;
  }

LABEL_5:
  if (!v5)
  {
    goto LABEL_85;
  }

  v7 = a1 & 0xFFFFFFFFFFFFFF8;
  v8 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
  if (a1 < 0)
  {
    v7 = a1;
  }

  if (v4)
  {
    v8 = v7;
  }

  v9 = a2 & 0xFFFFFFFFFFFFFF8;
  v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
  if (a2 < 0)
  {
    v9 = a2;
  }

  if (a2 >> 62)
  {
    v10 = v9;
  }

  if (v8 == v10)
  {
LABEL_85:
    v31 = 1;
    return v31 & 1;
  }

  if (v5 < 0)
  {
    goto LABEL_148;
  }

  if (((a2 | a1) & 0xC000000000000001) != 0)
  {
    v52 = a2 & 0xC000000000000001;
    v11 = 4;
    while (1)
    {
      v12 = v11 - 4;
      v13 = v11 - 3;
      if (__OFADD__(v11 - 4, 1))
      {
        __break(1u);
        goto LABEL_141;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        result = MEMORY[0x20F2E7A20](v11 - 4, a1);
        v14 = result;
        if (v52)
        {
          goto LABEL_21;
        }
      }

      else
      {
        if (v12 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_146;
        }

        v14 = *(a1 + 8 * v11);

        if (v52)
        {
LABEL_21:
          v15 = MEMORY[0x20F2E7A20](v11 - 4, a2);
          goto LABEL_26;
        }
      }

      if (v12 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_147;
      }

      v15 = *(a2 + 8 * v11);

LABEL_26:
      v16 = *(v14 + 16);
      v17 = *(v15 + 16);
      if (v16 > 3)
      {
        if (*(v14 + 16) > 5u)
        {
          if (v16 == 6)
          {
            v18 = 0x5F65676172657661;
            v19 = 0xED00007265776F70;
            if (*(v15 + 16) <= 3u)
            {
              goto LABEL_32;
            }
          }

          else
          {
            v19 = 0xE400000000000000;
            v18 = 1701736302;
            if (*(v15 + 16) <= 3u)
            {
              goto LABEL_32;
            }
          }
        }

        else if (v16 == 4)
        {
          v18 = 0x5F65676172657661;
          v19 = 0xEF65636E65646163;
          if (*(v15 + 16) <= 3u)
          {
            goto LABEL_32;
          }
        }

        else
        {
          v18 = 0xD000000000000013;
          v19 = 0x800000020B4544E0;
          if (*(v15 + 16) <= 3u)
          {
            goto LABEL_32;
          }
        }
      }

      else if (*(v14 + 16) > 1u)
      {
        if (v16 == 2)
        {
          v18 = 0xD000000000000012;
        }

        else
        {
          v18 = 0xD000000000000015;
        }

        if (v16 == 2)
        {
          v19 = 0x800000020B454490;
        }

        else
        {
          v19 = 0x800000020B4544B0;
        }

        if (*(v15 + 16) <= 3u)
        {
LABEL_32:
          if (*(v15 + 16) > 1u)
          {
            if (v17 == 2)
            {
              v26 = 0xD000000000000012;
            }

            else
            {
              v26 = 0xD000000000000015;
            }

            if (v17 == 2)
            {
              v21 = 0x800000020B454490;
            }

            else
            {
              v21 = 0x800000020B4544B0;
            }

            if (v18 != v26)
            {
              goto LABEL_75;
            }
          }

          else
          {
            if (*(v15 + 16))
            {
              v20 = 0x5F65676172657661;
            }

            else
            {
              v20 = 0x5F676E696C6C6F72;
            }

            v21 = 0xEC00000065636170;
            if (v18 != v20)
            {
              goto LABEL_75;
            }
          }

          goto LABEL_73;
        }
      }

      else
      {
        if (*(v14 + 16))
        {
          v18 = 0x5F65676172657661;
        }

        else
        {
          v18 = 0x5F676E696C6C6F72;
        }

        v19 = 0xEC00000065636170;
        if (*(v15 + 16) <= 3u)
        {
          goto LABEL_32;
        }
      }

      if (*(v15 + 16) > 5u)
      {
        v22 = v17 == 6;
        if (v17 == 6)
        {
          v23 = 0x5F65676172657661;
        }

        else
        {
          v23 = 1701736302;
        }

        v24 = 0xED00007265776F70;
        v25 = 0xE400000000000000;
      }

      else
      {
        v22 = v17 == 4;
        if (v17 == 4)
        {
          v23 = 0x5F65676172657661;
        }

        else
        {
          v23 = 0xD000000000000013;
        }

        v24 = 0xEF65636E65646163;
        v25 = 0x800000020B4544E0;
      }

      if (v22)
      {
        v21 = v24;
      }

      else
      {
        v21 = v25;
      }

      if (v18 != v23)
      {
LABEL_75:
        v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v27 & 1) == 0)
        {
          goto LABEL_136;
        }

        goto LABEL_76;
      }

LABEL_73:
      if (v19 != v21)
      {
        goto LABEL_75;
      }

LABEL_76:
      swift_beginAccess();
      v28 = *(v14 + 24);
      swift_beginAccess();
      if (v28 != *(v15 + 24))
      {
        goto LABEL_136;
      }

      swift_beginAccess();
      v29 = *(v14 + 32);
      swift_beginAccess();
      if (v29 != *(v15 + 32))
      {
        goto LABEL_136;
      }

      swift_beginAccess();
      v30 = *(v14 + 40);

      swift_beginAccess();
      v4 = *(v15 + 40);

      if (((v30 ^ v4) & 1) == 0)
      {
        ++v11;
        if (v13 != v5)
        {
          continue;
        }
      }

      v31 = v30 ^ v4 ^ 1;
      return v31 & 1;
    }
  }

  v32 = a1 + 32;
  v33 = a2 + 32;
  v34 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v35 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v36 = v5 - 1;
  while (v34)
  {
    if (!v35)
    {
      goto LABEL_145;
    }

    v37 = v36;
    v38 = *v32;
    v39 = *(*v32 + 16);
    if (v39 > 3)
    {
      if (*(*v32 + 16) > 5u)
      {
        if (v39 == 6)
        {
          v40 = 0x5F65676172657661;
          v41 = 0xED00007265776F70;
        }

        else
        {
          v41 = 0xE400000000000000;
          v40 = 1701736302;
        }
      }

      else if (v39 == 4)
      {
        v40 = 0x5F65676172657661;
        v41 = 0xEF65636E65646163;
      }

      else
      {
        v40 = 0xD000000000000013;
        v41 = 0x800000020B4544E0;
      }
    }

    else if (*(*v32 + 16) > 1u)
    {
      if (v39 == 2)
      {
        v40 = 0xD000000000000012;
        v41 = 0x800000020B454490;
      }

      else
      {
        v40 = 0xD000000000000015;
        v41 = 0x800000020B4544B0;
      }
    }

    else
    {
      if (*(*v32 + 16))
      {
        v40 = 0x5F65676172657661;
      }

      else
      {
        v40 = 0x5F676E696C6C6F72;
      }

      v41 = 0xEC00000065636170;
    }

    v42 = *v33;
    v43 = *(*v33 + 16);
    if (v43 > 3)
    {
      if (*(*v33 + 16) > 5u)
      {
        if (v43 == 6)
        {
          v45 = 0xED00007265776F70;
          if (v40 != 0x5F65676172657661)
          {
            goto LABEL_130;
          }
        }

        else
        {
          v45 = 0xE400000000000000;
          if (v40 != 1701736302)
          {
            goto LABEL_130;
          }
        }
      }

      else if (v43 == 4)
      {
        v45 = 0xEF65636E65646163;
        if (v40 != 0x5F65676172657661)
        {
          goto LABEL_130;
        }
      }

      else
      {
        v45 = 0x800000020B4544E0;
        if (v40 != 0xD000000000000013)
        {
          goto LABEL_130;
        }
      }
    }

    else if (*(*v33 + 16) > 1u)
    {
      if (v43 == 2)
      {
        v45 = 0x800000020B454490;
        if (v40 != 0xD000000000000012)
        {
          goto LABEL_130;
        }
      }

      else
      {
        v45 = 0x800000020B4544B0;
        if (v40 != 0xD000000000000015)
        {
          goto LABEL_130;
        }
      }
    }

    else
    {
      if (*(*v33 + 16))
      {
        v44 = 0x5F65676172657661;
      }

      else
      {
        v44 = 0x5F676E696C6C6F72;
      }

      v45 = 0xEC00000065636170;
      if (v40 != v44)
      {
        goto LABEL_130;
      }
    }

    if (v41 == v45)
    {
      v46 = *v32;

      goto LABEL_131;
    }

LABEL_130:
    v47 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v47 & 1) == 0)
    {
      goto LABEL_136;
    }

LABEL_131:
    swift_beginAccess();
    v48 = *(v38 + 24);
    swift_beginAccess();
    if (v48 != *(v42 + 24) || (swift_beginAccess(), v49 = *(v38 + 32), swift_beginAccess(), v49 != *(v42 + 32)))
    {
LABEL_136:

      goto LABEL_137;
    }

    swift_beginAccess();
    v50 = *(v38 + 40);

    swift_beginAccess();
    v51 = *(v42 + 40);

    if (((v50 ^ v51) & 1) == 0)
    {
      --v35;
      --v34;
      v36 = v37 - 1;
      v32 += 8;
      v33 += 8;
      if (v37)
      {
        continue;
      }
    }

    v31 = v50 ^ v51 ^ 1;
    return v31 & 1;
  }

  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
  return result;
}