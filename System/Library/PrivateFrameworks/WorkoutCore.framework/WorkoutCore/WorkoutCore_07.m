uint64_t HeartRateZonesAccumulator.liveHeartRateZones.getter()
{
  v1 = *(v0 + OBJC_IVAR___NLSessionActivityHeartRateZonesAccumulator_liveHeartRateZonesInternal);
  if (!v1)
  {
    return 0;
  }

  swift_beginAccess();
  v2 = *(v1 + 16);
  swift_beginAccess();
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  swift_beginAccess();
  v5 = *(v1 + 33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore9LiveZonesCyAA0C13HeartRateZoneCGMd, &_s11WorkoutCore9LiveZonesCyAA0C13HeartRateZoneCGMR);
  v6 = swift_allocObject();
  *(v6 + 24) = 0;
  *(v6 + 32) = 1;
  *(v6 + 16) = v2;
  swift_beginAccess();
  *(v6 + 24) = v3;
  *(v6 + 32) = v4;
  *(v6 + 33) = v5;
  v8 = v6;

  specialized ZonesAccumulator.update<A>(liveZones:)(&v8);

  return v6;
}

uint64_t HeartRateZonesAccumulator.zones.getter()
{
  v1 = *(v0 + OBJC_IVAR___NLSessionActivityHeartRateZonesAccumulator_liveHeartRateZonesInternal);
  if (v1)
  {
    swift_beginAccess();
    v2 = *(v1 + 16);
    swift_beginAccess();
    v3 = *(v1 + 24);
    v4 = *(v1 + 32);
    swift_beginAccess();
    v5 = *(v1 + 33);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore9LiveZonesCyAA0C13HeartRateZoneCGMd, &_s11WorkoutCore9LiveZonesCyAA0C13HeartRateZoneCGMR);
    inited = swift_initStackObject();
    *(inited + 24) = 0;
    *(inited + 32) = 1;
    *(inited + 16) = v2;
    swift_beginAccess();
    *(inited + 24) = v3;
    *(inited + 32) = v4;
    *(inited + 33) = v5;
    v8 = inited;

    specialized ZonesAccumulator.update<A>(liveZones:)(&v8);

    swift_beginAccess();
    v1 = specialized _arrayForceCast<A, B>(_:)(*(inited + 16), specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:), type metadata accessor for LiveHeartRateZone, &protocol witness table for Zone, outlined init with take of ZoneProtocol);
  }

  return v1;
}

uint64_t HeartRateZonesAccumulator.oldZoneState.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR___NLSessionActivityHeartRateZonesAccumulator_oldZoneState;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t HeartRateZonesAccumulator.oldZoneState.setter(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR___NLSessionActivityHeartRateZonesAccumulator_oldZoneState;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

uint64_t (*HeartRateZonesAccumulator.workoutAlertDelegate.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___NLSessionActivityHeartRateZonesAccumulator_workoutAlertDelegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return HeartRateZonesAccumulator.workoutAlertDelegate.modify;
}

id @objc HeartRateZonesAccumulator.workoutAlertDelegate.getter(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

uint64_t HeartRateZonesAccumulator.workoutAlertDelegate.getter(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t @objc HeartRateZonesAccumulator.workoutAlertDelegate.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = *a4;
  swift_beginAccess();
  return swift_unknownObjectWeakAssign();
}

uint64_t HeartRateZonesAccumulator.workoutAlertDelegate.setter(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*HeartRateZonesAccumulator.heartRateZoneConfigurationDelegate.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___NLSessionActivityHeartRateZonesAccumulator_heartRateZoneConfigurationDelegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return HeartRateZonesAccumulator.heartRateZoneConfigurationDelegate.modify;
}

void HeartRateZonesAccumulator.workoutAlertDelegate.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  v5 = *(*a1 + 32) + *(*a1 + 40);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v6 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t key path setter for HeartRateZonesAccumulator.lastAlertFiredAtDate : HeartRateZonesAccumulator(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - v6;
  outlined init with copy of Date?(a1, &v11 - v6);
  v8 = *a2;
  v9 = OBJC_IVAR___NLSessionActivityHeartRateZonesAccumulator_lastAlertFiredAtDate;
  swift_beginAccess();
  outlined assign with take of Date?(v7, v8 + v9);
  return swift_endAccess();
}

uint64_t HeartRateZonesAccumulator.lastAlertFiredAtDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___NLSessionActivityHeartRateZonesAccumulator_lastAlertFiredAtDate;
  swift_beginAccess();
  return outlined init with copy of Date?(v1 + v3, a1);
}

uint64_t HeartRateZonesAccumulator.lastAlertFiredAtDate.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___NLSessionActivityHeartRateZonesAccumulator_lastAlertFiredAtDate;
  swift_beginAccess();
  outlined assign with take of Date?(a1, v1 + v3);
  return swift_endAccess();
}

id HeartRateZonesAccumulator.__allocating_init(builder:healthStore:staleTimeout:alertHoldoffTime:shouldSplitByActivity:targetZone:)(void *a1, void *a2, int a3, void *a4, double a5, double a6)
{
  v13 = objc_allocWithZone(v6);
  *&v13[OBJC_IVAR___NLSessionActivityHeartRateZonesAccumulator_liveHeartRateZonesInternal] = 0;
  v13[OBJC_IVAR___NLSessionActivityHeartRateZonesAccumulator_oldZoneState] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v14 = OBJC_IVAR___NLSessionActivityHeartRateZonesAccumulator_lastAlertFiredAtDate;
  v15 = type metadata accessor for Date();
  (*(*(v15 - 8) + 56))(&v13[v14], 1, 1, v15);
  *&v13[OBJC_IVAR___NLSessionActivityHeartRateZonesAccumulator_heartRateTargetZone] = a4;
  *&v13[OBJC_IVAR___NLSessionActivityHeartRateZonesAccumulator_alertHoldoffTime] = a6;
  v16 = *MEMORY[0x277CCCB90];
  v17 = objc_opt_self();
  v18 = a4;
  v19 = a1;
  v20 = a2;
  v21 = v16;
  v22 = [v17 _countPerMinuteUnit];
  v23 = specialized ZonesAccumulator.init(builder:healthStore:staleTimeout:shouldSplitByActivity:quantityTypeIdentifier:quantitySampleUnit:)(v19, v20, a3, v21, v22, a5);

  v24 = v23;
  HeartRateZonesAccumulator.loadHeartRateZones()();

  return v24;
}

id HeartRateZonesAccumulator.init(builder:healthStore:staleTimeout:alertHoldoffTime:shouldSplitByActivity:targetZone:)(void *a1, void *a2, int a3, void *a4, double a5, double a6)
{
  v7 = v6;
  v82 = a3;
  v80 = a2;
  ObjectType = swift_getObjectType();
  v12 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v13 = *(v12 - 8);
  v85 = v12;
  v86 = v13;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v79 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v81 = type metadata accessor for OS_dispatch_queue.Attributes();
  v18 = *(*(v81 - 8) + 64);
  MEMORY[0x28223BE20](v81);
  v20 = &v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v7[OBJC_IVAR___NLSessionActivityHeartRateZonesAccumulator_liveHeartRateZonesInternal] = 0;
  v7[OBJC_IVAR___NLSessionActivityHeartRateZonesAccumulator_oldZoneState] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v21 = OBJC_IVAR___NLSessionActivityHeartRateZonesAccumulator_lastAlertFiredAtDate;
  v22 = type metadata accessor for Date();
  v23 = *(*(v22 - 8) + 56);
  v23(&v7[v21], 1, 1, v22);
  v72 = v23;
  *&v7[OBJC_IVAR___NLSessionActivityHeartRateZonesAccumulator_heartRateTargetZone] = a4;
  *&v7[OBJC_IVAR___NLSessionActivityHeartRateZonesAccumulator_alertHoldoffTime] = a6;
  v24 = *MEMORY[0x277CCCB90];
  v25 = objc_opt_self();
  v84 = a4;
  v83 = a1;
  v78 = v80;
  v80 = v24;
  v77 = [v25 _countPerMinuteUnit];
  v23(&v7[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_activityStartDate], 1, 1, v22);
  v26 = MEMORY[0x277D84F90];
  *&v7[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_pendingSamples] = MEMORY[0x277D84F90];
  v71 = OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_propertyQueue;
  v75 = _sSo17OS_dispatch_queueCMaTm_2(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v73 = v20;
  static OS_dispatch_queue.Attributes.concurrent.getter();
  static DispatchQoS.unspecified.getter();
  v74 = *MEMORY[0x277D85260];
  v27 = *(v86 + 104);
  v86 += 104;
  v76 = v27;
  v28 = v79;
  v27(v79);
  *&v7[v71] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v29 = OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator__elapsedTimes;
  *&v7[v29] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SdTt0g5Tf4g_n(v26);
  v30 = v72;
  v72(&v7[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator__lastProcessedEntryDate], 1, 1, v22);
  v31 = &v7[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator__currentZoneIndex];
  *v31 = 0;
  v31[8] = 1;
  v30(&v7[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_activeStartDate], 1, 1, v22);
  v30(&v7[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_lastProcessedEventDate], 1, 1, v22);
  v7[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_isPaused] = 0;
  v32 = OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_processingQueue;
  static DispatchQoS.unspecified.getter();
  v88[0] = v26;
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  v33 = v77;
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  v34 = v78;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v76(v28, v74, v85);
  v35 = v80;
  *&v7[v32] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v36 = OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_threeSecondAccumulator;
  *&v7[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_threeSecondAccumulator] = 0;
  v7[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_disabledForSession] = 0;
  *&v7[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_query] = 0;
  *&v7[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_healthStore] = v34;
  *&v7[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_staleTimeout] = a5;
  v7[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_shouldSplitByActivity] = v82;
  *&v7[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_quantityTypeIdentifier] = v35;
  v37 = v33;
  *&v7[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_quantitySampleUnit] = v33;
  v38 = *MEMORY[0x277CCC9C0];
  v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v41 = v40;
  if (v39 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v41 == v42)
  {
    v43 = v34;
    v44 = v35;
    v45 = v33;
  }

  else
  {
    v46 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v47 = v34;
    v48 = v35;
    v49 = v33;

    if ((v46 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  type metadata accessor for WindowedAccumulator();
  v50 = swift_allocObject();
  *(v50 + 48) = MEMORY[0x277D84F90];
  *(v50 + 56) = 0;
  *(v50 + 16) = 0x4010000000000000;
  *(v50 + 24) = 0;
  *(v50 + 32) = 0;
  *(v50 + 40) = 1;
  v51 = *&v7[v36];
  *&v7[v36] = v50;

  if (one-time initialization token for zones != -1)
  {
    swift_once();
  }

  v52 = type metadata accessor for Logger();
  __swift_project_value_buffer(v52, static WOLog.zones);
  v53 = v35;
  v54 = Logger.logObject.getter();
  v55 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v88[0] = v57;
    *v56 = 136315394;
    implicit closure #1 in ZonesAccumulator.init(builder:healthStore:staleTimeout:shouldSplitByActivity:quantityTypeIdentifier:quantitySampleUnit:)(ObjectType);
    v58 = _typeName(_:qualified:)();
    v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v59, v88);

    *(v56 + 4) = v60;
    *(v56 + 12) = 2080;
    v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v63 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v62, v88);

    *(v56 + 14) = v63;
    _os_log_impl(&dword_20AEA4000, v54, v55, "%s using 3s average accumulator for processing %s samples", v56, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v57, -1, -1);
    MEMORY[0x20F2E9420](v56, -1, -1);
  }

LABEL_10:
  v64 = type metadata accessor for ZonesAccumulator();
  v87.receiver = v7;
  v87.super_class = v64;
  v65 = v83;
  v66 = objc_msgSendSuper2(&v87, sel_initWithBuilder_, v83);

  v67 = v66;
  HeartRateZonesAccumulator.loadHeartRateZones()();

  return v67;
}

id HeartRateZonesAccumulator.__allocating_init(builder:healthStore:staleTimeout:liveWorkoutConfiguration:shouldSplitByActivity:targetZone:)(void *a1, void *a2, char *a3, int a4, void *a5, double a6)
{
  v7 = v6;
  v14 = objc_allocWithZone(v7);
  *&v14[OBJC_IVAR___NLSessionActivityHeartRateZonesAccumulator_liveHeartRateZonesInternal] = 0;
  v14[OBJC_IVAR___NLSessionActivityHeartRateZonesAccumulator_oldZoneState] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v15 = OBJC_IVAR___NLSessionActivityHeartRateZonesAccumulator_lastAlertFiredAtDate;
  v16 = type metadata accessor for Date();
  (*(*(v16 - 8) + 56))(&v14[v15], 1, 1, v16);
  *&v14[OBJC_IVAR___NLSessionActivityHeartRateZonesAccumulator_heartRateTargetZone] = a5;
  v17 = *&a3[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_configuration];
  type metadata accessor for IntervalWorkoutConfiguration();
  v18 = swift_dynamicCastClass();
  v19 = 60.0;
  if (v18)
  {
    v19 = 10.0;
  }

  *&v14[OBJC_IVAR___NLSessionActivityHeartRateZonesAccumulator_alertHoldoffTime] = v19;
  v20 = *MEMORY[0x277CCCB90];
  v21 = objc_opt_self();
  v22 = a5;
  v23 = a1;
  v24 = a2;
  v25 = v20;
  v26 = [v21 _countPerMinuteUnit];
  v27 = specialized ZonesAccumulator.init(builder:healthStore:staleTimeout:shouldSplitByActivity:quantityTypeIdentifier:quantitySampleUnit:)(v23, v24, a4, v25, v26, a6);

  v28 = v27;
  HeartRateZonesAccumulator.loadHeartRateZones()();

  return v28;
}

id HeartRateZonesAccumulator.init(builder:healthStore:staleTimeout:liveWorkoutConfiguration:shouldSplitByActivity:targetZone:)(void *a1, void *a2, char *a3, int a4, void *a5, double a6)
{
  v7 = v6;
  v83 = a4;
  v89 = a2;
  ObjectType = swift_getObjectType();
  v12 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v13 = *(v12 - 8);
  v87 = v12;
  v88 = v13;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v81 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v79 = &v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for OS_dispatch_queue.Attributes();
  v19 = *(*(v82 - 8) + 64);
  MEMORY[0x28223BE20](v82);
  *&v6[OBJC_IVAR___NLSessionActivityHeartRateZonesAccumulator_liveHeartRateZonesInternal] = 0;
  v6[OBJC_IVAR___NLSessionActivityHeartRateZonesAccumulator_oldZoneState] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v20 = OBJC_IVAR___NLSessionActivityHeartRateZonesAccumulator_lastAlertFiredAtDate;
  v21 = type metadata accessor for Date();
  v22 = *(v21 - 8);
  v23 = *(v22 + 56);
  v24 = v22 + 56;
  v23(&v7[v20], 1, 1, v21);
  v74 = v24;
  v25 = v23;
  *&v7[OBJC_IVAR___NLSessionActivityHeartRateZonesAccumulator_heartRateTargetZone] = a5;
  v86 = a3;
  v26 = *&a3[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_configuration];
  type metadata accessor for IntervalWorkoutConfiguration();
  v27 = swift_dynamicCastClass();
  v28 = 60.0;
  if (v27)
  {
    v28 = 10.0;
  }

  *&v7[OBJC_IVAR___NLSessionActivityHeartRateZonesAccumulator_alertHoldoffTime] = v28;
  v29 = *MEMORY[0x277CCCB90];
  v30 = objc_opt_self();
  v85 = a5;
  v84 = a1;
  v80 = v89;
  v78 = v29;
  v89 = [v30 _countPerMinuteUnit];
  v25(&v7[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_activityStartDate], 1, 1, v21);
  v31 = MEMORY[0x277D84F90];
  *&v7[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_pendingSamples] = MEMORY[0x277D84F90];
  v32 = OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_propertyQueue;
  v75 = _sSo17OS_dispatch_queueCMaTm_2(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  static OS_dispatch_queue.Attributes.concurrent.getter();
  static DispatchQoS.unspecified.getter();
  v77 = *MEMORY[0x277D85260];
  v33 = *(v88 + 104);
  v88 += 104;
  v76 = v33;
  v34 = v81;
  v33(v81);
  *&v7[v32] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v35 = OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator__elapsedTimes;
  *&v7[v35] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SdTt0g5Tf4g_n(v31);
  v25(&v7[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator__lastProcessedEntryDate], 1, 1, v21);
  v36 = &v7[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator__currentZoneIndex];
  *v36 = 0;
  v36[8] = 1;
  v25(&v7[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_activeStartDate], 1, 1, v21);
  v25(&v7[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_lastProcessedEventDate], 1, 1, v21);
  v7[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_isPaused] = 0;
  v37 = OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_processingQueue;
  static DispatchQoS.unspecified.getter();
  v91[0] = v31;
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  v38 = v78;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v39 = v80;
  v76(v34, v77, v87);
  *&v7[v37] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v40 = OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_threeSecondAccumulator;
  *&v7[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_threeSecondAccumulator] = 0;
  v7[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_disabledForSession] = 0;
  *&v7[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_query] = 0;
  *&v7[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_healthStore] = v39;
  *&v7[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_staleTimeout] = a6;
  v7[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_shouldSplitByActivity] = v83;
  *&v7[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_quantityTypeIdentifier] = v38;
  *&v7[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_quantitySampleUnit] = v89;
  v41 = *MEMORY[0x277CCC9C0];
  v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v44 = v43;
  if (v42 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v44 == v45)
  {
    v46 = v39;
    v47 = v38;
    v48 = v89;
  }

  else
  {
    v49 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v50 = v39;
    v51 = v38;
    v52 = v89;

    if ((v49 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  type metadata accessor for WindowedAccumulator();
  v53 = swift_allocObject();
  *(v53 + 48) = MEMORY[0x277D84F90];
  *(v53 + 56) = 0;
  *(v53 + 16) = 0x4010000000000000;
  *(v53 + 24) = 0;
  *(v53 + 32) = 0;
  *(v53 + 40) = 1;
  v54 = *&v7[v40];
  *&v7[v40] = v53;

  if (one-time initialization token for zones != -1)
  {
    swift_once();
  }

  v55 = type metadata accessor for Logger();
  __swift_project_value_buffer(v55, static WOLog.zones);
  v56 = v38;
  v57 = Logger.logObject.getter();
  v58 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v91[0] = v60;
    *v59 = 136315394;
    implicit closure #1 in ZonesAccumulator.init(builder:healthStore:staleTimeout:shouldSplitByActivity:quantityTypeIdentifier:quantitySampleUnit:)(ObjectType);
    v61 = _typeName(_:qualified:)();
    v63 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v62, v91);

    *(v59 + 4) = v63;
    *(v59 + 12) = 2080;
    v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v65, v91);

    *(v59 + 14) = v66;
    _os_log_impl(&dword_20AEA4000, v57, v58, "%s using 3s average accumulator for processing %s samples", v59, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v60, -1, -1);
    MEMORY[0x20F2E9420](v59, -1, -1);
  }

LABEL_12:
  v67 = type metadata accessor for ZonesAccumulator();
  v90.receiver = v7;
  v90.super_class = v67;
  v68 = v84;
  v69 = objc_msgSendSuper2(&v90, sel_initWithBuilder_, v84);

  v70 = v69;
  HeartRateZonesAccumulator.loadHeartRateZones()();

  return v70;
}

uint64_t HeartRateZonesAccumulator.updateTargetZone(_:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v19 = *(v4 - 8);
  v5 = *(v19 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v8 = *(v18 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v18);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v2 + OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_processingQueue);
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = a1;
  aBlock[4] = partial apply for closure #1 in HeartRateZonesAccumulator.updateTargetZone(_:);
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_4;
  v14 = _Block_copy(aBlock);

  v15 = a1;
  static DispatchQoS.unspecified.getter();
  v20 = MEMORY[0x277D84F90];
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v11, v7, v14);
  _Block_release(v14);
  (*(v19 + 8))(v7, v4);
  (*(v8 + 8))(v11, v18);
}

void closure #1 in HeartRateZonesAccumulator.updateTargetZone(_:)(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + OBJC_IVAR___NLSessionActivityHeartRateZonesAccumulator_heartRateTargetZone);
    *(Strong + OBJC_IVAR___NLSessionActivityHeartRateZonesAccumulator_heartRateTargetZone) = a2;
    v5 = Strong;
    v6 = a2;
  }
}

uint64_t HeartRateZonesAccumulator.loadHeartRateZones()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v111 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v121 = &v111 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v111 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v124 = &v111 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v125 = &v111 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v111 - v16;
  v18 = [v0 builder];
  v19 = [v18 metadata];
  v20 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v21 = unpackedHeartRateZones(from:)(v20);

  if (v21)
  {
    v118 = v6;
    v22 = v1;
    v23 = [v1 builder];
    v24 = [v23 metadata];
    v25 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v26 = specialized static ZonesMetadata.unpackedTimeInZones(from:key:)(v25, 0xD00000000000002CLL, 0x800000020B456CA0);

    if (v26)
    {
      v119 = v26;
      v120 = v11;
      if (one-time initialization token for zones != -1)
      {
        swift_once();
      }

      v116 = v21;
      v122 = v17;
      v27 = type metadata accessor for Logger();
      v114 = __swift_project_value_buffer(v27, static WOLog.zones);
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.default.getter();
      v30 = os_log_type_enabled(v28, v29);
      v31 = v125;
      if (v30)
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v126 = v33;
        *v32 = 136315138;
        v34 = _typeName(_:qualified:)();
        v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v35, &v126);

        *(v32 + 4) = v36;
        _os_log_impl(&dword_20AEA4000, v28, v29, "%s is recovering HeartRateZones and state from builder metadata", v32, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v33);
        v37 = v33;
        v31 = v125;
        MEMORY[0x20F2E9420](v37, -1, -1);
        MEMORY[0x20F2E9420](v32, -1, -1);
      }

      v38 = [v22 builder];
      v39 = [v38 metadata];
      v40 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      static ZonesMetadata.unpackedLastProcessedDate(from:key:)(v40, 0xD000000000000035, 0x800000020B456CD0, v122);

      v41 = [v22 builder];
      v42 = [v41 &selRef_setChronicledInstance_];
      v43 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      static ZonesMetadata.unpackedLastProcessedDate(from:key:)(v43, 0xD000000000000035, 0x800000020B456D10, v31);

      v115 = v22;
      v44 = [v22 builder];
      v45 = [v44 &selRef_setChronicledInstance_];
      v46 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v47 = specialized static ZonesMetadata.unpackedCurrentZoneIndex(from:key:)(v46, 0xD00000000000002FLL, 0x800000020B456D50);
      v117 = v48;

      v49 = v116;

      v50 = Logger.logObject.getter();
      v51 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v126 = v53;
        *v52 = 136315394;
        v54 = _typeName(_:qualified:)();
        v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v55, &v126);

        *(v52 + 4) = v56;
        *(v52 + 12) = 2080;
        v57 = type metadata accessor for HeartRateZone();
        v58 = MEMORY[0x20F2E6F70](v49, v57);
        v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v59, &v126);

        *(v52 + 14) = v60;
        _os_log_impl(&dword_20AEA4000, v50, v51, "%s recovered metadataHeartRateZones: %s", v52, 0x16u);
        swift_arrayDestroy();
        v61 = v53;
        v31 = v125;
        MEMORY[0x20F2E9420](v61, -1, -1);
        MEMORY[0x20F2E9420](v52, -1, -1);
      }

      v62 = v120;
      v63 = v122;
      v64 = v124;
      outlined init with copy of Date?(v122, v124);
      outlined init with copy of Date?(v31, v62);
      v65 = v119;

      v66 = Logger.logObject.getter();
      v67 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v66, v67))
      {
        v112 = v67;
        v113 = v66;
        v114 = v47;
        v68 = swift_slowAlloc();
        v111 = swift_slowAlloc();
        v128 = v111;
        *v68 = 136316162;
        v69 = _typeName(_:qualified:)();
        v71 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v69, v70, &v128);

        *(v68 + 4) = v71;
        *(v68 + 12) = 2080;
        v72 = Dictionary.description.getter();
        v74 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v72, v73, &v128);

        *(v68 + 14) = v74;
        *(v68 + 22) = 2080;
        v75 = v121;
        outlined init with copy of Date?(v64, v121);
        v76 = type metadata accessor for Date();
        v77 = *(v76 - 8);
        v78 = *(v77 + 48);
        if (v78(v75, 1, v76) == 1)
        {
          outlined destroy of Date?(v75);
          v79 = 0;
          v80 = 0;
        }

        else
        {
          if (one-time initialization token for logDateFormatter != -1)
          {
            swift_once();
          }

          v86 = static WOLog.logDateFormatter;
          isa = Date._bridgeToObjectiveC()().super.isa;
          v88 = [v86 stringFromDate_];

          v79 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v80 = v89;

          (*(v77 + 8))(v75, v76);
        }

        v126 = v79;
        v127 = v80;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
        v90 = Optional.description.getter();
        v92 = v91;
        outlined destroy of Date?(v124);

        v93 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v90, v92, &v128);

        *(v68 + 24) = v93;
        *(v68 + 32) = 2080;
        v94 = v118;
        outlined init with copy of Date?(v120, v118);
        if (v78(v94, 1, v76) == 1)
        {
          outlined destroy of Date?(v94);
          v95 = 0;
          v96 = 0;
          v47 = v114;
        }

        else
        {
          v47 = v114;
          if (one-time initialization token for logDateFormatter != -1)
          {
            swift_once();
          }

          v97 = static WOLog.logDateFormatter;
          v98 = Date._bridgeToObjectiveC()().super.isa;
          v99 = [v97 stringFromDate_];

          v95 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v100 = v94;
          v96 = v101;

          (*(v77 + 8))(v100, v76);
        }

        v126 = v95;
        v127 = v96;
        v102 = Optional.description.getter();
        v104 = v103;
        outlined destroy of Date?(v120);

        v105 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v102, v104, &v128);

        *(v68 + 34) = v105;
        *(v68 + 42) = 2080;
        v126 = v47;
        v85 = v117;
        LOBYTE(v127) = v117 & 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, &_sSiSgMR);
        v106 = Optional.description.getter();
        v108 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v106, v107, &v128);

        *(v68 + 44) = v108;
        v109 = v113;
        _os_log_impl(&dword_20AEA4000, v113, v112, "%s recovered elapsedTimeInHeartRateZones: %s, lastProcessedEntryDate: %s, lastProcessedEventDate: %s, currentZoneIndex: %s", v68, 0x34u);
        v110 = v111;
        swift_arrayDestroy();
        MEMORY[0x20F2E9420](v110, -1, -1);
        MEMORY[0x20F2E9420](v68, -1, -1);

        v31 = v125;
        v63 = v122;
        v65 = v119;
      }

      else
      {

        outlined destroy of Date?(v62);
        outlined destroy of Date?(v64);
        v85 = v117;
      }

      HeartRateZonesAccumulator._mainThread_handleRecovery(metadataHeartRateZones:elapsedTimeInHeartRateZones:lastProcessedEntryDate:lastProcessedEventDate:currentZoneIndex:)(v49, v65, v63, v31, v47, v85 & 1);

      outlined destroy of Date?(v31);
      return outlined destroy of Date?(v63);
    }
  }

  type metadata accessor for HeartRateConfigurationRequest();
  v81 = swift_allocObject();
  v82 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for HeartRateConfiguration();
  v83 = swift_allocObject();
  v83[2] = v81;
  v83[3] = partial apply for closure #1 in HeartRateZonesAccumulator.loadHeartRateZones();
  v83[4] = v82;
  swift_retain_n();

  static HeartRateConfiguration.fetchConfigurationType(completion:)(_s11WorkoutCore29HeartRateConfigurationRequestC011fetchActivecdE010completionyyAA0cdE0CSgc_tFyAG0E4TypeOcfU_TA_0, v83);
}

uint64_t closure #1 in HeartRateZonesAccumulator.loadHeartRateZones()(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v18 = *(v2 - 8);
  v3 = *(v18 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v6 = *(v17 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v17);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  _sSo17OS_dispatch_queueCMaTm_2(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v10 = static OS_dispatch_queue.main.getter();
  v11 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  *(v13 + 24) = a1;
  aBlock[4] = partial apply for closure #1 in closure #1 in HeartRateZonesAccumulator.loadHeartRateZones();
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_75;
  v14 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v9, v5, v14);
  _Block_release(v14);

  (*(v18 + 8))(v5, v2);
  return (*(v6 + 8))(v9, v17);
}

void closure #1 in closure #1 in HeartRateZonesAccumulator.loadHeartRateZones()(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    HeartRateZonesAccumulator._mainThread_handleActiveConfigurationLoad(_:)(a2);
  }
}

id HeartRateZonesAccumulator._mainThread_handleRecovery(metadataHeartRateZones:elapsedTimeInHeartRateZones:lastProcessedEntryDate:lastProcessedEventDate:currentZoneIndex:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, char a6)
{
  v7 = v6;
  v187 = a4;
  v192 = a3;
  v206 = a2;
  ObjectType = swift_getObjectType();
  v204 = type metadata accessor for DispatchQoS();
  v11 = *(v204 - 8);
  v12 = v11[8];
  MEMORY[0x28223BE20](v204);
  v203 = v178 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v202 = type metadata accessor for DispatchWorkItemFlags();
  v14 = *(v202 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v202);
  v201 = v178 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v182 = v178 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  isUniquelyReferenced_nonNull_native = v178 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v181 = v178 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v186 = v178 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v180 = v178 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v191 = v178 - v31;
  MEMORY[0x28223BE20](v30);
  v33 = v178 - v32;
  v207 = type metadata accessor for Date();
  v205 = *(v207 - 8);
  v34 = *(v205 + 64);
  v35 = MEMORY[0x28223BE20](v207);
  v189 = v178 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v35);
  v179 = v178 - v38;
  MEMORY[0x28223BE20](v37);
  v185 = v178 - v39;
  v40 = a1 >> 62;
  if ((a6 & 1) == 0)
  {
    if (!v40)
    {
      v41 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_4;
    }

    goto LABEL_93;
  }

LABEL_8:
  v188 = isUniquelyReferenced_nonNull_native;
  outlined init with copy of Date?(v192, v33);
  v44 = v205;
  v45 = *(v205 + 48);
  v46 = v207;
  v199 = v205 + 48;
  v198 = v45;
  v47 = v45(v33, 1, v207);
  v184 = a1;
  v183 = v40;
  if (v47 == 1)
  {
    outlined destroy of Date?(v33);
    if (one-time initialization token for zones != -1)
    {
      swift_once();
    }

    v48 = type metadata accessor for Logger();
    __swift_project_value_buffer(v48, static WOLog.zones);
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      aBlock = v52;
      *v51 = 136315138;
      v53 = _typeName(_:qualified:)();
      v55 = v40;
      v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v54, &aBlock);

      *(v51 + 4) = v56;
      v40 = v55;
      _os_log_impl(&dword_20AEA4000, v49, v50, "%s no lastProcessedEntryDate found in metadata, recovering from the beginning with HK query", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v52);
      MEMORY[0x20F2E9420](v52, -1, -1);
      MEMORY[0x20F2E9420](v51, -1, -1);
    }

    v33 = v207;
    v57 = v205;
    goto LABEL_46;
  }

  v178[2] = v17;
  v58 = v185;
  (*(v44 + 32))(v185, v33, v46);
  v59 = *(v44 + 16);
  v60 = v191;
  v178[1] = v44 + 16;
  v178[0] = v59;
  v59(v191, v58, v46);
  (*(v44 + 56))(v60, 0, 1, v46);
  ZonesAccumulator.lastProcessedEntryDate.setter(v60);
  isUniquelyReferenced_nonNull_native = v206 + 64;
  v61 = 1 << *(v206 + 32);
  v62 = -1;
  if (v61 < 64)
  {
    v62 = ~(-1 << v61);
  }

  a1 = v62 & *(v206 + 64);
  v200 = OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_propertyQueue;
  v63 = (v61 + 63) >> 6;
  v195 = v210;
  v194 = (v11 + 1);
  v193 = (v14 + 8);

  v40 = 0;
  v197 = isUniquelyReferenced_nonNull_native;
  for (i = v63; ; v63 = i)
  {
    if (!a1)
    {
      while (1)
      {
        v69 = v40 + 1;
        if (__OFADD__(v40, 1))
        {
          break;
        }

        if (v69 >= v63)
        {

          if (one-time initialization token for zones != -1)
          {
            swift_once();
          }

          v84 = type metadata accessor for Logger();
          __swift_project_value_buffer(v84, static WOLog.zones);
          v85 = v7;
          v86 = v7;
          v87 = Logger.logObject.getter();
          v88 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v87, v88))
          {
            LODWORD(v204) = v88;
            v89 = swift_slowAlloc();
            v203 = swift_slowAlloc();
            v211 = v203;
            *v89 = 136315906;
            v90 = _typeName(_:qualified:)();
            v92 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v90, v91, &v211);

            *(v89 + 4) = v92;
            *(v89 + 12) = 2080;
            v206 = v85;
            v94 = *&v85[v200];
            MEMORY[0x28223BE20](v93);
            v178[-2] = v86;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySiSdGMd, &_sSDySiSdGMR);
            OS_dispatch_queue.sync<A>(execute:)();
            v95 = Dictionary.description.getter();
            v97 = v96;

            v98 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v95, v97, &v211);

            *(v89 + 14) = v98;
            *(v89 + 22) = 2080;
            MEMORY[0x28223BE20](v99);
            v178[-2] = v86;
            v100 = v180;
            OS_dispatch_queue.sync<A>(execute:)();
            v33 = v207;
            if (v198(v100, 1, v207))
            {
              outlined destroy of Date?(v100);
              v101 = 0;
              v102 = 0;
            }

            else
            {
              v202 = v94;
              v103 = v179;
              (v178[0])(v179, v100, v33);
              outlined destroy of Date?(v100);
              if (one-time initialization token for logDateFormatter != -1)
              {
                swift_once();
              }

              v104 = static WOLog.logDateFormatter;
              isa = Date._bridgeToObjectiveC()().super.isa;
              v106 = [v104 stringFromDate_];

              v101 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v102 = v107;

              (*(v205 + 8))(v103, v33);
            }

            aBlock = v101;
            v209 = v102;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
            v108 = Optional.description.getter();
            v110 = v109;

            v111 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v108, v110, &v211);

            *(v89 + 24) = v111;
            *(v89 + 32) = 2080;
            MEMORY[0x28223BE20](v112);
            v178[-2] = v86;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, &_sSiSgMR);
            OS_dispatch_queue.sync<A>(execute:)();
            v113 = Optional.description.getter();
            v115 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v113, v114, &v211);

            *(v89 + 34) = v115;
            _os_log_impl(&dword_20AEA4000, v87, v204, "%s recovered elapsedTimes: %s from metadata with lastProcessedEntryDate: %s, currentZoneIndex: %s", v89, 0x2Au);
            v116 = v203;
            swift_arrayDestroy();
            MEMORY[0x20F2E9420](v116, -1, -1);
            MEMORY[0x20F2E9420](v89, -1, -1);

            v57 = v205;
            (*(v205 + 8))(v185, v33);
            v7 = v206;
          }

          else
          {

            v57 = v205;
            v33 = v207;
            (*(v205 + 8))(v185, v207);
            v7 = v85;
          }

          a1 = v184;
          v40 = v183;
LABEL_46:
          v117 = v186;
          outlined init with copy of Date?(v187, v186);
          if (v198(v117, 1, v33) == 1)
          {
            outlined destroy of Date?(v117);
            v118 = v192;
            v119 = v191;
            outlined init with copy of Date?(v192, v191);
            v120 = OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_lastProcessedEventDate;
            swift_beginAccess();
            outlined assign with take of Date?(v119, &v7[v120]);
            swift_endAccess();
            if (one-time initialization token for zones != -1)
            {
              swift_once();
            }

            v121 = type metadata accessor for Logger();
            __swift_project_value_buffer(v121, static WOLog.zones);
            isUniquelyReferenced_nonNull_native = v188;
            outlined init with copy of Date?(v118, v188);
            v122 = Logger.logObject.getter();
            v11 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v122, v11))
            {
              v123 = swift_slowAlloc();
              v124 = swift_slowAlloc();
              v211 = v124;
              *v123 = 136315394;
              v125 = _typeName(_:qualified:)();
              v127 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v125, v126, &v211);

              *(v123 + 4) = v127;
              *(v123 + 12) = 2080;
              v33 = v182;
              outlined init with copy of Date?(v188, v182);
              if (v198(v33, 1, v207) == 1)
              {
                outlined destroy of Date?(v33);
                v128 = 0;
                v129 = 0;
              }

              else
              {
                v206 = v124;
                if (one-time initialization token for logDateFormatter != -1)
                {
                  swift_once();
                }

                v145 = static WOLog.logDateFormatter;
                v146 = Date._bridgeToObjectiveC()().super.isa;
                v147 = [v145 stringFromDate_];

                v128 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v129 = v148;

                (*(v205 + 8))(v33, v207);
                v124 = v206;
              }

              aBlock = v128;
              v209 = v129;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
              v149 = Optional.description.getter();
              v151 = v150;
              outlined destroy of Date?(v188);

              isUniquelyReferenced_nonNull_native = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v149, v151, &v211);

              *(v123 + 14) = isUniquelyReferenced_nonNull_native;
              _os_log_impl(&dword_20AEA4000, v122, v11, "%s no lastProcessedEventDate found in metadata, assign lastProcessedEntryDate: %s", v123, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x20F2E9420](v124, -1, -1);
              MEMORY[0x20F2E9420](v123, -1, -1);

              goto LABEL_67;
            }

            outlined destroy of Date?(isUniquelyReferenced_nonNull_native);
          }

          else
          {
            v130 = v189;
            (*(v57 + 32))(v189, v117, v33);
            v131 = *(v57 + 16);
            v132 = v191;
            v131(v191, v130, v33);
            (*(v57 + 56))(v132, 0, 1, v33);
            v133 = OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_lastProcessedEventDate;
            swift_beginAccess();
            outlined assign with take of Date?(v132, &v7[v133]);
            swift_endAccess();
            if (one-time initialization token for zones != -1)
            {
              swift_once();
            }

            v134 = type metadata accessor for Logger();
            __swift_project_value_buffer(v134, static WOLog.zones);
            isUniquelyReferenced_nonNull_native = v7;
            v135 = Logger.logObject.getter();
            v11 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v135, v11))
            {
              v136 = swift_slowAlloc();
              v33 = swift_slowAlloc();
              v211 = v33;
              *v136 = 136315394;
              v137 = _typeName(_:qualified:)();
              v139 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v137, v138, &v211);

              *(v136 + 4) = v139;
              *(v136 + 12) = 2080;
              v140 = v181;
              outlined init with copy of Date?(&v7[v133], v181);
              v141 = v207;
              if (v198(v140, 1, v207))
              {
                outlined destroy of Date?(v140);
                v142 = 0;
                v143 = 0;
                a1 = v184;
                v144 = v205;
              }

              else
              {
                v152 = v179;
                v131(v179, v140, v141);
                outlined destroy of Date?(v140);
                if (one-time initialization token for logDateFormatter != -1)
                {
                  swift_once();
                }

                v153 = static WOLog.logDateFormatter;
                v154 = Date._bridgeToObjectiveC()().super.isa;
                v155 = [v153 stringFromDate_];

                v142 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v143 = v156;

                v144 = v205;
                (*(v205 + 8))(v152, v207);
                a1 = v184;
              }

              aBlock = v142;
              v209 = v143;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
              v157 = Optional.description.getter();
              v159 = v158;

              isUniquelyReferenced_nonNull_native = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v157, v159, &v211);

              *(v136 + 14) = isUniquelyReferenced_nonNull_native;
              _os_log_impl(&dword_20AEA4000, v135, v11, "%s recovered lastProcessedEventDate: %s", v136, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x20F2E9420](v33, -1, -1);
              MEMORY[0x20F2E9420](v136, -1, -1);

              (*(v144 + 8))(v189, v207);
LABEL_67:
              v40 = v183;
            }

            else
            {

              (*(v205 + 8))(v189, v207);
              a1 = v184;
            }
          }

          if (!v40)
          {
            v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
            goto LABEL_70;
          }

          goto LABEL_91;
        }

        a1 = *(isUniquelyReferenced_nonNull_native + 8 * v69);
        ++v40;
        if (a1)
        {
          v40 = v69;
          goto LABEL_24;
        }
      }

      __break(1u);
      goto LABEL_87;
    }

LABEL_24:
    v70 = (v40 << 9) | (8 * __clz(__rbit64(a1)));
    v33 = *(*(v206 + 48) + v70);
    v71 = *(*(v206 + 56) + v70);
    v72 = *&v7[v200];
    MEMORY[0x28223BE20](v64);
    v11 = v7;
    v178[-2] = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySiSdGMd, &_sSDySiSdGMR);
    OS_dispatch_queue.sync<A>(execute:)();
    v73 = aBlock;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    aBlock = v73;
    v75 = specialized __RawDictionaryStorage.find<A>(_:)(v33);
    v76 = *(v73 + 16);
    v77 = (v74 & 1) == 0;
    v78 = v76 + v77;
    if (__OFADD__(v76, v77))
    {
      break;
    }

    v7 = v74;
    if (*(v73 + 24) >= v78)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        isUniquelyReferenced_nonNull_native = aBlock;
        if (v74)
        {
          goto LABEL_17;
        }
      }

      else
      {
        specialized _NativeDictionary.copy()();
        isUniquelyReferenced_nonNull_native = aBlock;
        if (v7)
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v78, isUniquelyReferenced_nonNull_native);
      v79 = specialized __RawDictionaryStorage.find<A>(_:)(v33);
      if ((v7 & 1) != (v80 & 1))
      {
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }

      v75 = v79;
      isUniquelyReferenced_nonNull_native = aBlock;
      if (v7)
      {
LABEL_17:
        *(*(isUniquelyReferenced_nonNull_native + 56) + 8 * v75) = v71;
        goto LABEL_18;
      }
    }

    *(isUniquelyReferenced_nonNull_native + 8 * (v75 >> 6) + 64) |= 1 << v75;
    *(*(isUniquelyReferenced_nonNull_native + 48) + 8 * v75) = v33;
    *(*(isUniquelyReferenced_nonNull_native + 56) + 8 * v75) = v71;
    v81 = *(isUniquelyReferenced_nonNull_native + 16);
    v82 = __OFADD__(v81, 1);
    v83 = v81 + 1;
    if (v82)
    {
      goto LABEL_90;
    }

    *(isUniquelyReferenced_nonNull_native + 16) = v83;
LABEL_18:
    a1 &= a1 - 1;
    v33 = v201;
    static DispatchWorkItemFlags.barrier.getter();
    v65 = swift_allocObject();
    v7 = v11;
    *(v65 + 16) = v11;
    *(v65 + 24) = isUniquelyReferenced_nonNull_native;
    v210[2] = _s11WorkoutCore16ZonesAccumulatorC12elapsedTimesSDySiSdGvsyyYbcfU_TA_0;
    v210[3] = v65;
    aBlock = MEMORY[0x277D85DD0];
    v209 = 1107296256;
    v210[0] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v210[1] = &block_descriptor_57;
    v66 = _Block_copy(&aBlock);
    v67 = v11;
    v68 = v203;
    static DispatchQoS.unspecified.getter();
    MEMORY[0x20F2E7580](0, v68, v33, v66);
    _Block_release(v66);
    (*v194)(v68, v204);
    (*v193)(v33, v202);

    isUniquelyReferenced_nonNull_native = v197;
  }

  while (1)
  {
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    v14 = __CocoaSet.count.getter();
LABEL_70:
    v17 = MEMORY[0x277D84F90];
    if (!v14)
    {
      break;
    }

    v211 = MEMORY[0x277D84F90];
    a5 = &v211;
    specialized ContiguousArray.reserveCapacity(_:)();
    if (v14 < 0)
    {
      __break(1u);
LABEL_93:
      v41 = __CocoaSet.count.getter();
LABEL_4:
      v42 = v41 <= a5;
      if (v41 > a5)
      {
        v43 = a5;
      }

      else
      {
        v43 = 0;
      }

      ZonesAccumulator.currentZoneIndex.setter(v43, v42);
      goto LABEL_8;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v160 = 0;
      while (1)
      {
        isUniquelyReferenced_nonNull_native = MEMORY[0x20F2E7A20](v160, a1);
        v161 = *(isUniquelyReferenced_nonNull_native + 16);
        v162 = *(isUniquelyReferenced_nonNull_native + 24);
        v40 = *(isUniquelyReferenced_nonNull_native + 32);
        v11 = *(isUniquelyReferenced_nonNull_native + 40);
        type metadata accessor for LiveHeartRateZone();
        v163 = swift_allocObject();
        *(v163 + 48) = 0;
        swift_beginAccess();
        *(v163 + 48) = 0;
        swift_unknownObjectRelease();
        v164 = floor(v161);
        v165 = floor(v162);
        if (v164 > v165)
        {
          break;
        }

        ++v160;
        *(v163 + 16) = v164;
        *(v163 + 24) = v165;
        *(v163 + 32) = v40;
        *(v163 + 40) = v11;
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v166 = *(v211 + 2);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        if (v14 == v160)
        {
          goto LABEL_80;
        }
      }

LABEL_87:
      __break(1u);
      goto LABEL_88;
    }

    v40 = a1 + 32;
    type metadata accessor for LiveHeartRateZone();
    while (1)
    {
      v167 = *(*v40 + 16);
      v168 = *(*v40 + 24);
      v169 = *(*v40 + 32);
      v11 = *(*v40 + 40);
      v170 = swift_allocObject();
      *(v170 + 48) = 0;
      isUniquelyReferenced_nonNull_native = v170 + 48;
      swift_beginAccess();
      *(v170 + 48) = 0;
      v171 = floor(v167);
      v172 = floor(v168);
      if (v171 > v172)
      {
        break;
      }

      *(v170 + 16) = v171;
      *(v170 + 24) = v172;
      *(v170 + 32) = v169;
      *(v170 + 40) = v11;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v173 = *(v211 + 2);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v40 += 8;
      if (!--v14)
      {
LABEL_80:
        v17 = v211;
        goto LABEL_81;
      }
    }

LABEL_88:
    __break(1u);
  }

LABEL_81:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore9LiveZonesCyAA0C13HeartRateZoneCGMd, &_s11WorkoutCore9LiveZonesCyAA0C13HeartRateZoneCGMR);
  v174 = swift_allocObject();
  *(v174 + 24) = 0;
  *(v174 + 32) = 1;
  *(v174 + 16) = v17;
  swift_beginAccess();
  *(v174 + 24) = 0;
  *(v174 + 32) = 257;
  v175 = *&v7[OBJC_IVAR___NLSessionActivityHeartRateZonesAccumulator_liveHeartRateZonesInternal];
  *&v7[OBJC_IVAR___NLSessionActivityHeartRateZonesAccumulator_liveHeartRateZonesInternal] = v174;

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong heartRateZoneConfigurationDidUpdate];
    swift_unknownObjectRelease();
  }

  result = [v7 isAccumulating];
  if (result)
  {
    return [v7 update];
  }

  return result;
}

id HeartRateZonesAccumulator._mainThread_handleActiveConfigurationLoad(_:)(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  _sSo17OS_dispatch_queueCMaTm_2(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  *v8 = static OS_dispatch_queue.main.getter();
  (*(v5 + 104))(v8, *MEMORY[0x277D85200], v4);
  v9 = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v8, v4);
  if ((v9 & 1) == 0)
  {
    goto LABEL_34;
  }

  if (one-time initialization token for zones != -1)
  {
    goto LABEL_35;
  }

  while (1)
  {
    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static WOLog.zones);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      aBlock = v14;
      *v13 = 136315138;
      v15 = _typeName(_:qualified:)();
      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &aBlock);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_20AEA4000, v11, v12, "%s is loading HeartRateZones from configuration", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x20F2E9420](v14, -1, -1);
      MEMORY[0x20F2E9420](v13, -1, -1);
    }

    if (!a1)
    {
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        aBlock = v37;
        *v36 = 136315138;
        v38 = _typeName(_:qualified:)();
        v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v39, &aBlock);

        *(v36 + 4) = v40;
        _os_log_impl(&dword_20AEA4000, v34, v35, "%s No HeartRateConfiguration. Defaulting to automatic type but with no heart rate zones", v36, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v37);
        MEMORY[0x20F2E9420](v37, -1, -1);
        MEMORY[0x20F2E9420](v36, -1, -1);
      }

      v41 = [v2 builder];
      LOBYTE(aBlock) = 0;
      HKLiveWorkoutBuilder.heartRateZonesConfigurationType.setter(&aBlock);

      v42 = [v2 builder];
      v43 = MEMORY[0x20F2E6C00](0xD00000000000001FLL, 0x800000020B456BF0);
      v76 = closure #2 in HKLiveWorkoutBuilder.heartRateZones.setter;
      v77 = 0;
      aBlock = MEMORY[0x277D85DD0];
      v73 = 1107296256;
      v74 = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
      v75 = &block_descriptor_47;
      v44 = _Block_copy(&aBlock);
      [v42 _removeMetadata_completion_];
      _Block_release(v44);

      goto LABEL_28;
    }

    v18 = [v2 builder];
    LOBYTE(aBlock) = *(a1 + 16);
    HKLiveWorkoutBuilder.heartRateZonesConfigurationType.setter(&aBlock);

    swift_retain_n();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      aBlock = v22;
      *v21 = 136315650;
      v23 = _typeName(_:qualified:)();
      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &aBlock);

      *(v21 + 4) = v25;
      *(v21 + 12) = 2080;
      v26 = *(a1 + 40);
      v27 = type metadata accessor for HeartRateZone();

      v29 = MEMORY[0x20F2E6F70](v28, v27);
      v30 = v2;
      v32 = v31;

      v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v32, &aBlock);
      v2 = v30;

      *(v21 + 14) = v33;
      *(v21 + 22) = 1024;
      LODWORD(v30) = *(a1 + 49);

      *(v21 + 24) = v30;

      _os_log_impl(&dword_20AEA4000, v19, v20, "%s heartRateConfiguration.zones=%s heartRateConfiguration.hasDefaultRestingHeartRate=%{BOOL}d", v21, 0x1Cu);
      swift_arrayDestroy();
      MEMORY[0x20F2E9420](v22, -1, -1);
      MEMORY[0x20F2E9420](v21, -1, -1);
    }

    else
    {
    }

    if (*(a1 + 48) != 1)
    {
      goto LABEL_26;
    }

    v45 = [v2 builder];
    v46 = *(a1 + 40);

    HKLiveWorkoutBuilder.heartRateZones.setter(v47);

    v48 = v46 >> 62 ? __CocoaSet.count.getter() : *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v49 = MEMORY[0x277D84F90];
    if (!v48)
    {
      break;
    }

    v71 = v2;
    aBlock = MEMORY[0x277D84F90];
    result = specialized ContiguousArray.reserveCapacity(_:)();
    if (v48 < 0)
    {
      __break(1u);
      return result;
    }

    v51 = 0;
    v2 = (v46 & 0xC000000000000001);
    while (1)
    {
      if (v2)
      {
        v52 = MEMORY[0x20F2E7A20](v51, v46);
      }

      else
      {
        v52 = *(v46 + 8 * v51 + 32);
      }

      v53 = v52[2];
      v54 = v52[3];
      v56 = *(v52 + 4);
      v55 = *(v52 + 5);
      type metadata accessor for LiveHeartRateZone();
      v57 = swift_allocObject();
      *(v57 + 48) = 0;
      swift_beginAccess();
      *(v57 + 48) = 0;

      v58 = floor(v53);
      v59 = floor(v54);
      if (v58 > v59)
      {
        break;
      }

      ++v51;
      *(v57 + 16) = v58;
      *(v57 + 24) = v59;
      *(v57 + 32) = v56;
      *(v57 + 40) = v55;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v60 = *(aBlock + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      if (v48 == v51)
      {
        v49 = aBlock;
        v2 = v71;
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    swift_once();
  }

LABEL_24:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore9LiveZonesCyAA0C13HeartRateZoneCGMd, &_s11WorkoutCore9LiveZonesCyAA0C13HeartRateZoneCGMR);
  v61 = swift_allocObject();
  *(v61 + 24) = 0;
  *(v61 + 32) = 1;
  *(v61 + 16) = v49;
  swift_beginAccess();
  *(v61 + 24) = 0;
  *(v61 + 32) = 257;
  v62 = *&v2[OBJC_IVAR___NLSessionActivityHeartRateZonesAccumulator_liveHeartRateZonesInternal];
  *&v2[OBJC_IVAR___NLSessionActivityHeartRateZonesAccumulator_liveHeartRateZonesInternal] = v61;

  v63 = *(a1 + 49);
  v64 = [v2 builder];
  if (v63)
  {
    v65 = *(a1 + 32);
    v66 = v65;
    HKLiveWorkoutBuilder.defaultRestingHeartRate.setter(v65);

LABEL_26:

    goto LABEL_28;
  }

  v67 = MEMORY[0x20F2E6C00](0xD000000000000028, 0x800000020B456C30);
  v76 = closure #2 in HKLiveWorkoutBuilder.defaultRestingHeartRate.setter;
  v77 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v73 = 1107296256;
  v74 = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
  v75 = &block_descriptor_50;
  v68 = _Block_copy(&aBlock);
  [v64 _removeMetadata_completion_];
  _Block_release(v68);

LABEL_28:
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong heartRateZoneConfigurationDidUpdate];
    swift_unknownObjectRelease();
  }

  result = [v2 isAccumulating];
  if (result)
  {
    return [v2 update];
  }

  return result;
}

Swift::Void __swiftcall HeartRateZonesAccumulator.notifyZonesUpdateIfNeeded()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong heartRateZoneConfigurationDidUpdate];
    swift_unknownObjectRelease();
  }

  if ([v0 isAccumulating])
  {
    [v0 update];
  }
}

Swift::Void __swiftcall HeartRateZonesAccumulator.finalZonesElapsedTimes(_:)(Swift::OpaquePointer a1)
{
  swift_getObjectType();
  if (one-time initialization token for zones != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static WOLog.zones);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315394;
    v8 = _typeName(_:qualified:)();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v14);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    v11 = ZonesAccumulator.zonesSnapshotString.getter();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v14);

    *(v6 + 14) = v13;
    _os_log_impl(&dword_20AEA4000, v4, v5, "%s final zones: (%s)", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v7, -1, -1);
    MEMORY[0x20F2E9420](v6, -1, -1);
  }

  HeartRateZonesAccumulator.updateMetadata()();
}

Swift::Void __swiftcall HeartRateZonesAccumulator.updateMetadata()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v22 - v7;
  v9 = v0[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_shouldSplitByActivity];
  v10 = [v1 builder];
  v11 = v10;
  if (v9 == 1)
  {
    v12 = *&v1[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_propertyQueue];
    MEMORY[0x28223BE20](v10);
    *(&v22 - 2) = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySiSdGMd, &_sSDySiSdGMR);
    v13 = OS_dispatch_queue.sync<A>(execute:)();
    v14 = v24;
    MEMORY[0x28223BE20](v13);
    *(&v22 - 2) = v1;
    OS_dispatch_queue.sync<A>(execute:)();
    v15 = OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_lastProcessedEventDate;
    swift_beginAccess();
    v16 = outlined init with copy of Date?(&v1[v15], v6);
    MEMORY[0x28223BE20](v16);
    *(&v22 - 2) = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, &_sSiSgMR);
    OS_dispatch_queue.sync<A>(execute:)();
    HKLiveWorkoutBuilder.updateCurrentActivityHeartRate(elapsedTimeInZones:lastProcessedEntryDate:lastProcessedEventDate:currentZoneIndex:)(v14, v8, v6, v22, v23);

    outlined destroy of Date?(v6);
    outlined destroy of Date?(v8);
  }

  else
  {
    v17 = *&v1[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_propertyQueue];
    MEMORY[0x28223BE20](v10);
    *(&v22 - 2) = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySiSdGMd, &_sSDySiSdGMR);
    OS_dispatch_queue.sync<A>(execute:)();
    HKLiveWorkoutBuilder.elapsedTimeInHeartRateZones.setter(v24);

    v18 = [v1 builder];
    MEMORY[0x28223BE20](v18);
    *(&v22 - 2) = v1;
    OS_dispatch_queue.sync<A>(execute:)();
    HKLiveWorkoutBuilder.lastProcessedEntryDateInHeartRateZones.setter(v8);

    v19 = [v1 builder];
    v20 = OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_lastProcessedEventDate;
    swift_beginAccess();
    outlined init with copy of Date?(&v1[v20], v8);
    HKLiveWorkoutBuilder.lastProcessedEventDateInHeartRateZones.setter(v8);

    v21 = [v1 builder];
    MEMORY[0x28223BE20](v21);
    *(&v22 - 2) = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, &_sSiSgMR);
    OS_dispatch_queue.sync<A>(execute:)();
    HKLiveWorkoutBuilder.currentZoneIndexInHeartRateZones.setter(v22, v23);
  }
}

void HeartRateZonesAccumulator.trackTargetZone(for:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v59 - v7;
  v9 = [v1 builder];
  [v9 elapsedTime];
  v11 = v10;

  if (specialized ZonesAlertTrackingProtocol.alertPreconditionSatified(_:)(v11))
  {
    v12 = [a1 quantity];
    [v12 doubleValueForUnit_];
    v14 = v13;

    v15 = OBJC_IVAR___NLSessionActivityHeartRateZonesAccumulator_heartRateTargetZone;
    v16 = *&v2[OBJC_IVAR___NLSessionActivityHeartRateZonesAccumulator_heartRateTargetZone];
    v17 = COERCE_DOUBLE(HeartRateTargetZone.applicableRange.getter());
    v19 = v18;
    v21 = v20;

    if ((v21 & 1) != 0 || v14 <= 2.22044605e-16)
    {
      v22 = 0;
    }

    else if (v14 >= v19)
    {
      v22 = 3;
    }

    else if (v14 < v17)
    {
      v22 = 1;
    }

    else
    {
      v22 = 2;
    }

    v23 = OBJC_IVAR___NLSessionActivityHeartRateZonesAccumulator_oldZoneState;
    swift_beginAccess();
    v24 = v2[v23];
    if (v22 && v24 != v22)
    {
      if (one-time initialization token for zones != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      __swift_project_value_buffer(v25, static WOLog.zones);
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v60 = v23;
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v62[0] = v29;
        *v28 = 136315394;
        v59[1] = ObjectType;
        v30 = _typeName(_:qualified:)();
        v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, v62);

        *(v28 + 4) = v32;
        *(v28 + 12) = 2080;
        v33 = 0xE600000000000000;
        v34 = 0x6E6968746977;
        if (v22 != 2)
        {
          v34 = 0x65766F6261;
          v33 = 0xE500000000000000;
        }

        if (v22 == 1)
        {
          v35 = 0x776F6C6562;
        }

        else
        {
          v35 = v34;
        }

        if (v22 == 1)
        {
          v36 = 0xE500000000000000;
        }

        else
        {
          v36 = v33;
        }

        v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, v62);

        *(v28 + 14) = v37;
        _os_log_impl(&dword_20AEA4000, v26, v27, "%s should fire alert for: %s", v28, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x20F2E9420](v29, -1, -1);
        MEMORY[0x20F2E9420](v28, -1, -1);

        v23 = v60;
      }

      else
      {
      }

      v38 = *&v2[v15];
      v39 = objc_allocWithZone(type metadata accessor for WorkoutAlertHeartRateZone());
      v40 = WorkoutAlertHeartRateZone.init(heartRateTargetZone:heartRate:)(v38, v14);
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        [Strong alertSource:v2 didTriggerAlert:v40];
        swift_unknownObjectRelease();
      }

      static Date.now.getter();

      v42 = type metadata accessor for Date();
      (*(*(v42 - 8) + 56))(v8, 0, 1, v42);
      v43 = OBJC_IVAR___NLSessionActivityHeartRateZonesAccumulator_lastAlertFiredAtDate;
      swift_beginAccess();
      outlined assign with take of Date?(v8, &v2[v43]);
      swift_endAccess();
      v24 = v2[v23];
    }

    if (v24 != v22)
    {
      if (one-time initialization token for zones != -1)
      {
        swift_once();
      }

      v44 = type metadata accessor for Logger();
      __swift_project_value_buffer(v44, static WOLog.zones);
      v45 = v2;
      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v46, v47))
      {
        v48 = 1701736302;
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v61[0] = v50;
        *v49 = 136315650;
        v51 = _typeName(_:qualified:)();
        v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v52, v61);

        *(v49 + 4) = v53;
        *(v49 + 12) = 2080;
        if (v2[v23] > 1u)
        {
          if (v2[v23] == 2)
          {
            v54 = 0xE600000000000000;
            v55 = 0x6E6968746977;
          }

          else
          {
            v54 = 0xE500000000000000;
            v55 = 0x65766F6261;
          }
        }

        else if (v2[v23])
        {
          v54 = 0xE500000000000000;
          v55 = 0x776F6C6562;
        }

        else
        {
          v54 = 0xE400000000000000;
          v55 = 1701736302;
        }

        v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v54, v61);

        *(v49 + 14) = v56;
        *(v49 + 22) = 2080;
        if (v22 > 1)
        {
          if (v22 == 2)
          {
            v57 = 0xE600000000000000;
            v48 = 0x6E6968746977;
          }

          else
          {
            v57 = 0xE500000000000000;
            v48 = 0x65766F6261;
          }
        }

        else if (v22)
        {
          v57 = 0xE500000000000000;
          v48 = 0x776F6C6562;
        }

        else
        {
          v57 = 0xE400000000000000;
        }

        v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v57, v61);

        *(v49 + 24) = v58;
        _os_log_impl(&dword_20AEA4000, v46, v47, "%s zone state transitioned from: %s to: %s", v49, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x20F2E9420](v50, -1, -1);
        MEMORY[0x20F2E9420](v49, -1, -1);
      }

      v2[v23] = v22;
    }
  }
}

uint64_t specialized ZonesAlertTrackingProtocol.alertPreconditionSatified(_:)(double a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v34 - v5;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v34 - v13;
  v15 = *&v1[OBJC_IVAR___NLSessionActivityPowerZonesAccumulator_alertHoldoffTime];
  if (v15 >= a1)
  {
    if (one-time initialization token for zones != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static WOLog.zones);
    v18 = v1;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v19, v20))
    {
      goto LABEL_9;
    }

    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v35 = v22;
    *v21 = 136315650;
    *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x800000020B456C80, &v35);
    *(v21 + 12) = 2048;
    *(v21 + 14) = a1;
    *(v21 + 22) = 2048;
    *(v21 + 24) = v15;
    v23 = "%s Not alerting. Elapsed time: %f < %f";
    v24 = v20;
    v25 = v19;
    v26 = v21;
    v27 = 32;
    goto LABEL_8;
  }

  v16 = OBJC_IVAR___NLSessionActivityPowerZonesAccumulator_lastAlertFiredAtDate;
  swift_beginAccess();
  outlined init with copy of Date?(&v1[v16], v6);
  if ((*(v8 + 48))(v6, 1, v7) != 1)
  {
    (*(v8 + 32))(v14, v6, v7);
    static Date.now.getter();
    Date.timeIntervalSince(_:)();
    v30 = v29;
    v31 = *(v8 + 8);
    v31(v12, v7);
    v31(v14, v7);
    if (v30 >= 15.0)
    {
      return 1;
    }

    if (one-time initialization token for zones != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    __swift_project_value_buffer(v32, static WOLog.zones);
    v19 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v19, v33))
    {
LABEL_9:

      return 0;
    }

    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v34 = v22;
    *v21 = 136315138;
    *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x800000020B456C80, &v34);
    v23 = "%s Not alerting. Enough time not passed between two heart rate alerts";
    v24 = v33;
    v25 = v19;
    v26 = v21;
    v27 = 12;
LABEL_8:
    _os_log_impl(&dword_20AEA4000, v25, v24, v23, v26, v27);
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x20F2E9420](v22, -1, -1);
    MEMORY[0x20F2E9420](v21, -1, -1);
    goto LABEL_9;
  }

  outlined destroy of Date?(v6);
  return 1;
}

{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v34 - v5;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v34 - v13;
  v15 = *&v1[OBJC_IVAR___NLSessionActivityHeartRateZonesAccumulator_alertHoldoffTime];
  if (v15 >= a1)
  {
    if (one-time initialization token for zones != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static WOLog.zones);
    v18 = v1;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v19, v20))
    {
      goto LABEL_9;
    }

    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v35 = v22;
    *v21 = 136315650;
    *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000019, 0x800000020B427F50, &v35);
    *(v21 + 12) = 2048;
    *(v21 + 14) = a1;
    *(v21 + 22) = 2048;
    *(v21 + 24) = v15;
    v23 = "%s Not alerting. Elapsed time: %f < %f";
    v24 = v20;
    v25 = v19;
    v26 = v21;
    v27 = 32;
    goto LABEL_8;
  }

  v16 = OBJC_IVAR___NLSessionActivityHeartRateZonesAccumulator_lastAlertFiredAtDate;
  swift_beginAccess();
  outlined init with copy of Date?(&v1[v16], v6);
  if ((*(v8 + 48))(v6, 1, v7) != 1)
  {
    (*(v8 + 32))(v14, v6, v7);
    static Date.now.getter();
    Date.timeIntervalSince(_:)();
    v30 = v29;
    v31 = *(v8 + 8);
    v31(v12, v7);
    v31(v14, v7);
    if (v30 >= 15.0)
    {
      return 1;
    }

    if (one-time initialization token for zones != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    __swift_project_value_buffer(v32, static WOLog.zones);
    v19 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v19, v33))
    {
LABEL_9:

      return 0;
    }

    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v34 = v22;
    *v21 = 136315138;
    *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000019, 0x800000020B427F50, &v34);
    v23 = "%s Not alerting. Enough time not passed between two heart rate alerts";
    v24 = v33;
    v25 = v19;
    v26 = v21;
    v27 = 12;
LABEL_8:
    _os_log_impl(&dword_20AEA4000, v25, v24, v23, v26, v27);
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x20F2E9420](v22, -1, -1);
    MEMORY[0x20F2E9420](v21, -1, -1);
    goto LABEL_9;
  }

  outlined destroy of Date?(v6);
  return 1;
}

{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v34 - v5;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v34 - v13;
  v15 = *&v1[OBJC_IVAR___NLSessionActivityPowerAccumulator_alertHoldoffTime];
  if (v15 >= a1)
  {
    if (one-time initialization token for zones != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static WOLog.zones);
    v18 = v1;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v19, v20))
    {
      goto LABEL_9;
    }

    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v35 = v22;
    *v21 = 136315650;
    *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x800000020B456C60, &v35);
    *(v21 + 12) = 2048;
    *(v21 + 14) = a1;
    *(v21 + 22) = 2048;
    *(v21 + 24) = v15;
    v23 = "%s Not alerting. Elapsed time: %f < %f";
    v24 = v20;
    v25 = v19;
    v26 = v21;
    v27 = 32;
    goto LABEL_8;
  }

  v16 = OBJC_IVAR___NLSessionActivityPowerAccumulator_lastAlertFiredAtDate;
  swift_beginAccess();
  outlined init with copy of Date?(&v1[v16], v6);
  if ((*(v8 + 48))(v6, 1, v7) != 1)
  {
    (*(v8 + 32))(v14, v6, v7);
    static Date.now.getter();
    Date.timeIntervalSince(_:)();
    v30 = v29;
    v31 = *(v8 + 8);
    v31(v12, v7);
    v31(v14, v7);
    if (v30 >= 15.0)
    {
      return 1;
    }

    if (one-time initialization token for zones != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    __swift_project_value_buffer(v32, static WOLog.zones);
    v19 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v19, v33))
    {
LABEL_9:

      return 0;
    }

    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v34 = v22;
    *v21 = 136315138;
    *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x800000020B456C60, &v34);
    v23 = "%s Not alerting. Enough time not passed between two heart rate alerts";
    v24 = v33;
    v25 = v19;
    v26 = v21;
    v27 = 12;
LABEL_8:
    _os_log_impl(&dword_20AEA4000, v25, v24, v23, v26, v27);
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x20F2E9420](v22, -1, -1);
    MEMORY[0x20F2E9420](v21, -1, -1);
    goto LABEL_9;
  }

  outlined destroy of Date?(v6);
  return 1;
}

uint64_t HeartRateZonesAccumulator.__ivar_destroyer()
{
  v1 = *(v0 + OBJC_IVAR___NLSessionActivityHeartRateZonesAccumulator_liveHeartRateZonesInternal);

  _sSo22NLWorkoutAlertDelegate_pSgXwWOh_0(v0 + OBJC_IVAR___NLSessionActivityHeartRateZonesAccumulator_workoutAlertDelegate);
  _sSo22NLWorkoutAlertDelegate_pSgXwWOh_0(v0 + OBJC_IVAR___NLSessionActivityHeartRateZonesAccumulator_heartRateZoneConfigurationDelegate);
  v2 = v0 + OBJC_IVAR___NLSessionActivityHeartRateZonesAccumulator_lastAlertFiredAtDate;

  return outlined destroy of Date?(v2);
}

id HeartRateZonesAccumulator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HeartRateZonesAccumulator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t protocol witness for ZonesAlertTrackingProtocol.lastAlertFiredAtDate.getter in conformance HeartRateZonesAccumulator@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___NLSessionActivityHeartRateZonesAccumulator_lastAlertFiredAtDate;
  swift_beginAccess();
  return outlined init with copy of Date?(v1 + v3, a1);
}

uint64_t protocol witness for ZonesAlertTrackingProtocol.lastAlertFiredAtDate.setter in conformance HeartRateZonesAccumulator(uint64_t a1)
{
  v3 = OBJC_IVAR___NLSessionActivityHeartRateZonesAccumulator_lastAlertFiredAtDate;
  swift_beginAccess();
  outlined assign with take of Date?(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t protocol witness for ZonesAlertTrackingProtocol.oldZoneState.getter in conformance HeartRateZonesAccumulator@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR___NLSessionActivityHeartRateZonesAccumulator_oldZoneState;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t protocol witness for ZonesAlertTrackingProtocol.oldZoneState.setter in conformance HeartRateZonesAccumulator(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR___NLSessionActivityHeartRateZonesAccumulator_oldZoneState;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

uint64_t type metadata accessor for HeartRateZonesAccumulator()
{
  result = type metadata singleton initialization cache for HeartRateZonesAccumulator;
  if (!type metadata singleton initialization cache for HeartRateZonesAccumulator)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t keypath_get_7Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a3 = result;
  return result;
}

uint64_t keypath_set_8Tm(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  return swift_unknownObjectWeakAssign();
}

void type metadata completion function for HeartRateZonesAccumulator()
{
  type metadata accessor for Date?();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t closure #1 in ZonesAccumulator.currentZoneIndex.getterpartial apply@<X0>(uint64_t a1@<X8>)
{
  return _s11WorkoutCore16ZonesAccumulatorC16currentZoneIndexSiSgvgAEyXEfU_TA_0(a1);
}

{
  return _s11WorkoutCore16ZonesAccumulatorC16currentZoneIndexSiSgvgAEyXEfU_TA_0(a1);
}

{
  return _s11WorkoutCore16ZonesAccumulatorC16currentZoneIndexSiSgvgAEyXEfU_TA_0(a1);
}

{
  return _s11WorkoutCore16ZonesAccumulatorC16currentZoneIndexSiSgvgAEyXEfU_TA_0(a1);
}

{
  return _s11WorkoutCore16ZonesAccumulatorC16currentZoneIndexSiSgvgAEyXEfU_TA_0(a1);
}

{
  return _s11WorkoutCore16ZonesAccumulatorC16currentZoneIndexSiSgvgAEyXEfU_TA_0(a1);
}

{
  return _s11WorkoutCore16ZonesAccumulatorC16currentZoneIndexSiSgvgAEyXEfU_TA_1(a1);
}

{
  return _s11WorkoutCore16ZonesAccumulatorC16currentZoneIndexSiSgvgAEyXEfU_TA_1(a1);
}

uint64_t RacePositionStatePublisher.racePositionState.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t key path getter for RacePositionStatePublisher.racePositionState : RacePositionStatePublisher@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t key path setter for RacePositionStatePublisher.racePositionState : RacePositionStatePublisher(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t RacePositionStatePublisher.racePositionState.setter(char *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t (*RacePositionStatePublisher.racePositionState.modify(uint64_t *a1))()
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
  return RacePositionStatePublisher.racePositionState.modify;
}

uint64_t key path setter for RacePositionStatePublisher.$racePositionState : RacePositionStatePublisher(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy11WorkoutCore17RacePositionStateO_GMd, &_s7Combine9PublishedV9PublisherVy11WorkoutCore17RacePositionStateO_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore17RacePositionStateOGMd, &_s7Combine9PublishedVy11WorkoutCore17RacePositionStateOGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t RacePositionStatePublisher.$racePositionState.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy11WorkoutCore17RacePositionStateO_GMd, &_s7Combine9PublishedV9PublisherVy11WorkoutCore17RacePositionStateO_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore17RacePositionStateOGMd, &_s7Combine9PublishedVy11WorkoutCore17RacePositionStateOGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*RacePositionStatePublisher.$racePositionState.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy11WorkoutCore17RacePositionStateO_GMd, &_s7Combine9PublishedV9PublisherVy11WorkoutCore17RacePositionStateO_GMR);
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

  v10 = OBJC_IVAR____TtC11WorkoutCore26RacePositionStatePublisher__racePositionState;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore17RacePositionStateOGMd, &_s7Combine9PublishedVy11WorkoutCore17RacePositionStateOGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return RacePositionStatePublisher.$racePositionState.modify;
}

uint64_t RacePositionStatePublisher.racePosition.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t key path getter for RacePositionStatePublisher.racePosition : RacePositionStatePublisher@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  *(a2 + 8) = v6;
  *(a2 + 12) = v7;
  return result;
}

uint64_t key path setter for RacePositionStatePublisher.racePosition : RacePositionStatePublisher(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  v4 = *(a1 + 12);
  v5 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t RacePositionStatePublisher.racePosition.setter(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 2);
  v3 = *(a1 + 12);
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t (*RacePositionStatePublisher.racePosition.modify(uint64_t *a1))()
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
  return RacePositionStatePublisher.racePosition.modify;
}

uint64_t key path setter for RacePositionStatePublisher.$racePosition : RacePositionStatePublisher(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy11WorkoutCore12RacePositionO_GMd, &_s7Combine9PublishedV9PublisherVy11WorkoutCore12RacePositionO_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore12RacePositionOGMd, &_s7Combine9PublishedVy11WorkoutCore12RacePositionOGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t RacePositionStatePublisher.$racePosition.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy11WorkoutCore12RacePositionO_GMd, &_s7Combine9PublishedV9PublisherVy11WorkoutCore12RacePositionO_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore12RacePositionOGMd, &_s7Combine9PublishedVy11WorkoutCore12RacePositionOGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*RacePositionStatePublisher.$racePosition.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy11WorkoutCore12RacePositionO_GMd, &_s7Combine9PublishedV9PublisherVy11WorkoutCore12RacePositionO_GMR);
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

  v10 = OBJC_IVAR____TtC11WorkoutCore26RacePositionStatePublisher__racePosition;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore12RacePositionOGMd, &_s7Combine9PublishedVy11WorkoutCore12RacePositionOGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return RacePositionStatePublisher.$racePosition.modify;
}

double RacePositionStatePublisher.positionOnRoute.getter()
{
  return RacePositionStatePublisher.positionOnRoute.getter();
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

double key path getter for RacePositionStatePublisher.positionOnRoute : RacePositionStatePublisher@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  return key path getter for RacePositionStatePublisher.positionOnRoute : RacePositionStatePublisher(a1, a2);
}

{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = v5;
  *a2 = v5;
  return result;
}

uint64_t key path setter for RacePositionStatePublisher.positionOnRoute : RacePositionStatePublisher(uint64_t *a1, uint64_t *a2)
{
  return key path setter for RacePositionStatePublisher.positionOnRoute : RacePositionStatePublisher(a1, a2);
}

{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t RacePositionStatePublisher.positionOnRoute.setter()
{
  return RacePositionStatePublisher.positionOnRoute.setter();
}

{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t (*RacePositionStatePublisher.positionOnRoute.modify(uint64_t *a1))()
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
  return RacePositionStatePublisher.positionOnRoute.modify;
}

uint64_t key path setter for RacePositionStatePublisher.$positionOnRoute : RacePositionStatePublisher(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySd_GMd, &_s7Combine9PublishedV9PublisherVySd_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t RacePositionStatePublisher.$positionOnRoute.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySd_GMd, &_s7Combine9PublishedV9PublisherVySd_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*RacePositionStatePublisher.$positionOnRoute.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySd_GMd, &_s7Combine9PublishedV9PublisherVySd_GMR);
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

  v10 = OBJC_IVAR____TtC11WorkoutCore26RacePositionStatePublisher__positionOnRoute;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return RacePositionStatePublisher.$positionOnRoute.modify;
}

uint64_t (*RacePositionStatePublisher.ghostPositionOnRoute.modify(uint64_t *a1))()
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
  return RacePositionStatePublisher.ghostPositionOnRoute.modify;
}

uint64_t key path setter for RacePositionStatePublisher.$ghostPositionOnRoute : RacePositionStatePublisher(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySd_GMd, &_s7Combine9PublishedV9PublisherVySd_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t RacePositionStatePublisher.$ghostPositionOnRoute.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySd_GMd, &_s7Combine9PublishedV9PublisherVySd_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*RacePositionStatePublisher.$ghostPositionOnRoute.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySd_GMd, &_s7Combine9PublishedV9PublisherVySd_GMR);
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

  v10 = OBJC_IVAR____TtC11WorkoutCore26RacePositionStatePublisher__ghostPositionOnRoute;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return RacePositionStatePublisher.$ghostPositionOnRoute.modify;
}

uint64_t (*RacePositionStatePublisher.secondsAheadOfGhost.modify(uint64_t *a1))()
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
  return RacePositionStatePublisher.secondsAheadOfGhost.modify;
}

uint64_t key path setter for RacePositionStatePublisher.$secondsAheadOfGhost : RacePositionStatePublisher(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySd_GMd, &_s7Combine9PublishedV9PublisherVySd_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t RacePositionStatePublisher.$secondsAheadOfGhost.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySd_GMd, &_s7Combine9PublishedV9PublisherVySd_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*RacePositionStatePublisher.$secondsAheadOfGhost.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySd_GMd, &_s7Combine9PublishedV9PublisherVySd_GMR);
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

  v10 = OBJC_IVAR____TtC11WorkoutCore26RacePositionStatePublisher__secondsAheadOfGhost;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return RacePositionStatePublisher.$secondsAheadOfGhost.modify;
}

uint64_t (*RacePositionStatePublisher.remainingRouteDistance.modify(uint64_t *a1))()
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
  return RacePositionStatePublisher.remainingRouteDistance.modify;
}

uint64_t key path setter for RacePositionStatePublisher.$remainingRouteDistance : RacePositionStatePublisher(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySd_GMd, &_s7Combine9PublishedV9PublisherVySd_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t RacePositionStatePublisher.$remainingRouteDistance.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySd_GMd, &_s7Combine9PublishedV9PublisherVySd_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*RacePositionStatePublisher.$remainingRouteDistance.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySd_GMd, &_s7Combine9PublishedV9PublisherVySd_GMR);
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

  v10 = OBJC_IVAR____TtC11WorkoutCore26RacePositionStatePublisher__remainingRouteDistance;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return RacePositionStatePublisher.$remainingRouteDistance.modify;
}

uint64_t (*RacePositionStatePublisher.raceFinishTime.modify(uint64_t *a1))()
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
  return RacePositionStatePublisher.raceFinishTime.modify;
}

void RacePositionStatePublisher.racePositionState.modify(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = *(*a1 + 32);
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t RacePositionStatePublisher.$racePositionState.getter(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a1;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path getter for RacePositionStatePublisher.$racePositionState : RacePositionStatePublisher(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v8 = *a1;
  v9 = *a4;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path setter for RacePositionStatePublisher.$raceFinishTime : RacePositionStatePublisher(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySd_GMd, &_s7Combine9PublishedV9PublisherVySd_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t RacePositionStatePublisher.$raceFinishTime.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySd_GMd, &_s7Combine9PublishedV9PublisherVySd_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*RacePositionStatePublisher.$raceFinishTime.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySd_GMd, &_s7Combine9PublishedV9PublisherVySd_GMR);
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

  v10 = OBJC_IVAR____TtC11WorkoutCore26RacePositionStatePublisher__raceFinishTime;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return RacePositionStatePublisher.$raceFinishTime.modify;
}

void RacePositionStatePublisher.$racePositionState.modify(uint64_t a1, char a2)
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

uint64_t RacePositionStatePublisher.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  RacePositionStatePublisher.init()();
  return v3;
}

uint64_t RacePositionStatePublisher.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v24 - v4;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore12RacePositionOGMd, &_s7Combine9PublishedVy11WorkoutCore12RacePositionOGMR);
  v6 = *(v25 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v25);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore17RacePositionStateOGMd, &_s7Combine9PublishedVy11WorkoutCore17RacePositionStateOGMR);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v24 - v13;
  v15 = OBJC_IVAR____TtC11WorkoutCore26RacePositionStatePublisher__racePositionState;
  LOBYTE(v26) = 0;
  Published.init(initialValue:)();
  (*(v11 + 32))(v0 + v15, v14, v10);
  v16 = OBJC_IVAR____TtC11WorkoutCore26RacePositionStatePublisher__racePosition;
  v26 = 0;
  v27 = 0;
  v28 = 1;
  Published.init(initialValue:)();
  (*(v6 + 32))(v0 + v16, v9, v25);
  v17 = OBJC_IVAR____TtC11WorkoutCore26RacePositionStatePublisher__positionOnRoute;
  v26 = 0;
  Published.init(initialValue:)();
  v18 = *(v2 + 32);
  v18(v0 + v17, v5, v1);
  v19 = OBJC_IVAR____TtC11WorkoutCore26RacePositionStatePublisher__ghostPositionOnRoute;
  v26 = 0;
  Published.init(initialValue:)();
  v18(v0 + v19, v5, v1);
  v20 = OBJC_IVAR____TtC11WorkoutCore26RacePositionStatePublisher__secondsAheadOfGhost;
  v26 = 0;
  Published.init(initialValue:)();
  v18(v0 + v20, v5, v1);
  v21 = OBJC_IVAR____TtC11WorkoutCore26RacePositionStatePublisher__remainingRouteDistance;
  v26 = 0;
  Published.init(initialValue:)();
  v18(v0 + v21, v5, v1);
  v22 = OBJC_IVAR____TtC11WorkoutCore26RacePositionStatePublisher__raceFinishTime;
  v26 = 0;
  Published.init(initialValue:)();
  v18(v0 + v22, v5, v1);
  return v0;
}

uint64_t RacePositionStatePublisher.deinit()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore26RacePositionStatePublisher__racePositionState;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore17RacePositionStateOGMd, &_s7Combine9PublishedVy11WorkoutCore17RacePositionStateOGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC11WorkoutCore26RacePositionStatePublisher__racePosition;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore12RacePositionOGMd, &_s7Combine9PublishedVy11WorkoutCore12RacePositionOGMR);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC11WorkoutCore26RacePositionStatePublisher__positionOnRoute;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v5, v6);
  v7(v0 + OBJC_IVAR____TtC11WorkoutCore26RacePositionStatePublisher__ghostPositionOnRoute, v6);
  v7(v0 + OBJC_IVAR____TtC11WorkoutCore26RacePositionStatePublisher__secondsAheadOfGhost, v6);
  v7(v0 + OBJC_IVAR____TtC11WorkoutCore26RacePositionStatePublisher__remainingRouteDistance, v6);
  v7(v0 + OBJC_IVAR____TtC11WorkoutCore26RacePositionStatePublisher__raceFinishTime, v6);
  return v0;
}

uint64_t RacePositionStatePublisher.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore26RacePositionStatePublisher__racePositionState;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore17RacePositionStateOGMd, &_s7Combine9PublishedVy11WorkoutCore17RacePositionStateOGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC11WorkoutCore26RacePositionStatePublisher__racePosition;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore12RacePositionOGMd, &_s7Combine9PublishedVy11WorkoutCore12RacePositionOGMR);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC11WorkoutCore26RacePositionStatePublisher__positionOnRoute;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v5, v6);
  v7(v0 + OBJC_IVAR____TtC11WorkoutCore26RacePositionStatePublisher__ghostPositionOnRoute, v6);
  v7(v0 + OBJC_IVAR____TtC11WorkoutCore26RacePositionStatePublisher__secondsAheadOfGhost, v6);
  v7(v0 + OBJC_IVAR____TtC11WorkoutCore26RacePositionStatePublisher__remainingRouteDistance, v6);
  v7(v0 + OBJC_IVAR____TtC11WorkoutCore26RacePositionStatePublisher__raceFinishTime, v6);
  v8 = *(*v0 + 48);
  v9 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance RacePositionStatePublisher@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t RacePositionStatePublisher.wireData()()
{
  v0 = type metadata accessor for Apple_Workout_Core_RacePositionStatePublisher(0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  RacePositionStatePublisher.protobuf.getter(v3);
  lazy protocol witness table accessor for type Apple_Workout_Core_RacePositionStatePublisher and conformance Apple_Workout_Core_RacePositionStatePublisher();
  v4 = Message.serializedData(partial:)();
  outlined destroy of Apple_Workout_Core_RacePositionStatePublisher(v3, type metadata accessor for Apple_Workout_Core_RacePositionStatePublisher);
  return v4;
}

double RacePositionStatePublisher.protobuf.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Apple_Workout_Core_RacePosition(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a1 = 0;
  *(a1 + 8) = 1;
  v7 = type metadata accessor for Apple_Workout_Core_RacePositionStatePublisher(0);
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0;
  v8 = a1 + *(v7 + 40);
  UnknownStorage.init()();
  v9 = *(v7 + 44);
  v10 = *(v3 + 56);
  v10(a1 + v9, 1, 1, v2);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = LOBYTE(v15);
  *(a1 + 8) = 1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v12 = v15;
  v13 = v16;
  v14 = v17;
  RacePosition.protobuf.getter(v6);
  outlined destroy of Apple_Workout_Core_RacePosition?(a1 + v9, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMR);
  outlined init with take of Apple_Workout_Core_RacePosition(v6, a1 + v9, type metadata accessor for Apple_Workout_Core_RacePosition);
  v10(a1 + v9, 0, 1, v2);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *(a1 + 16) = v15;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *(a1 + 24) = v15;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *(a1 + 32) = v15;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *(a1 + 40) = v15;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = v15;
  *(a1 + 48) = v15;
  return result;
}

unint64_t lazy protocol witness table accessor for type Apple_Workout_Core_RacePositionStatePublisher and conformance Apple_Workout_Core_RacePositionStatePublisher()
{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_RacePositionStatePublisher and conformance Apple_Workout_Core_RacePositionStatePublisher;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_RacePositionStatePublisher and conformance Apple_Workout_Core_RacePositionStatePublisher)
  {
    type metadata accessor for Apple_Workout_Core_RacePositionStatePublisher(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_RacePositionStatePublisher and conformance Apple_Workout_Core_RacePositionStatePublisher);
  }

  return result;
}

uint64_t RacePosition.protobuf.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Apple_Workout_Core_RacePositionExpired(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v43 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Apple_Workout_Core_RacePositionUnknown(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v42 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Apple_Workout_Core_RacePositionCompleted(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v41 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Apple_Workout_Core_RacePositionOffRoute(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Apple_Workout_Core_RacePositionOnRoute(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v40 - v21;
  v23 = type metadata accessor for Apple_Workout_Core_RacePositionNotYetOnRoute(0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v26 = &v40 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *v1;
  v28 = *(v1 + 8);
  v29 = *(v1 + 12);
  v30 = type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type(0);
  v31 = *(v30 - 8);
  v32 = *(v31 + 56);
  v44 = v31 + 56;
  v45 = v32;
  v32(a1, 1, 1, v30);
  v33 = a1 + *(type metadata accessor for Apple_Workout_Core_RacePosition(0) + 20);
  UnknownStorage.init()();
  if (v29 == 1)
  {
    if (v27 <= 1)
    {
      UnknownStorage.init()();
      outlined destroy of Apple_Workout_Core_RacePosition?(a1, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
      if (v27 | v28)
      {
        outlined init with take of Apple_Workout_Core_RacePosition(v15, a1, type metadata accessor for Apple_Workout_Core_RacePositionOffRoute);
      }

      else
      {
        outlined init with take of Apple_Workout_Core_RacePosition(v26, a1, type metadata accessor for Apple_Workout_Core_RacePositionNotYetOnRoute);
      }
    }

    else if (v27 ^ 2 | v28)
    {
      if (v27 ^ 3 | v28)
      {
        v39 = v43;
        UnknownStorage.init()();
        outlined destroy of Apple_Workout_Core_RacePosition?(a1, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
        outlined init with take of Apple_Workout_Core_RacePosition(v39, a1, type metadata accessor for Apple_Workout_Core_RacePositionExpired);
      }

      else
      {
        v34 = v42;
        UnknownStorage.init()();
        outlined destroy of Apple_Workout_Core_RacePosition?(a1, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
        outlined init with take of Apple_Workout_Core_RacePosition(v34, a1, type metadata accessor for Apple_Workout_Core_RacePositionUnknown);
      }
    }

    else
    {
      v38 = v41;
      UnknownStorage.init()();
      outlined destroy of Apple_Workout_Core_RacePosition?(a1, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
      outlined init with take of Apple_Workout_Core_RacePosition(v38, a1, type metadata accessor for Apple_Workout_Core_RacePositionCompleted);
    }
  }

  else
  {
    v35 = &v22[*(v16 + 24)];
    UnknownStorage.init()();
    *v22 = v27;
    *(v22 + 2) = v28;
    outlined init with take of Apple_Workout_Core_RacePosition(v22, v20, type metadata accessor for Apple_Workout_Core_RacePositionOnRoute);
    outlined destroy of Apple_Workout_Core_RacePosition?(a1, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
    outlined init with take of Apple_Workout_Core_RacePosition(v20, a1, type metadata accessor for Apple_Workout_Core_RacePositionOnRoute);
  }

  v36 = v45;
  swift_storeEnumTagMultiPayload();
  return v36(a1, 0, 1, v30);
}

uint64_t Apple_Workout_Core_RacePositionStatePublisher.decodeInto(publisher:)()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v25 - v4;
  v6 = type metadata accessor for Apple_Workout_Core_RacePosition(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v0 + 8);
  v28 = *v0;
  LOBYTE(v29) = v11;
  Apple_Workout_Core_RacePositionState.decoded.getter(&v25);
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  v12 = type metadata accessor for Apple_Workout_Core_RacePositionStatePublisher(0);
  outlined init with copy of Apple_Workout_Core_RacePosition.OneOf_Type?(v0 + *(v12 + 44), v5, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMR);
  v13 = *(v7 + 48);
  if (v13(v5, 1, v6) == 1)
  {
    v14 = type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type(0);
    (*(*(v14 - 8) + 56))(v10, 1, 1, v14);
    v15 = &v10[*(v6 + 20)];
    UnknownStorage.init()();
    if (v13(v5, 1, v6) != 1)
    {
      outlined destroy of Apple_Workout_Core_RacePosition?(v5, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMR);
    }
  }

  else
  {
    outlined init with take of Apple_Workout_Core_RacePosition(v5, v10, type metadata accessor for Apple_Workout_Core_RacePosition);
  }

  Apple_Workout_Core_RacePosition.decoded.getter(&v28);
  outlined destroy of Apple_Workout_Core_RacePositionStatePublisher(v10, type metadata accessor for Apple_Workout_Core_RacePosition);
  v16 = v28;
  v17 = v29;
  v18 = v30;
  swift_getKeyPath();
  swift_getKeyPath();
  v25 = v16;
  v26 = v17;
  v27 = v18;

  static Published.subscript.setter();
  v19 = v1[2];
  swift_getKeyPath();
  swift_getKeyPath();
  v28 = v19;

  static Published.subscript.setter();
  v20 = v1[3];
  swift_getKeyPath();
  swift_getKeyPath();
  v28 = v20;

  static Published.subscript.setter();
  v21 = v1[4];
  swift_getKeyPath();
  swift_getKeyPath();
  v28 = v21;

  static Published.subscript.setter();
  v22 = v1[5];
  swift_getKeyPath();
  swift_getKeyPath();
  v28 = v22;

  static Published.subscript.setter();
  v23 = v1[6];
  swift_getKeyPath();
  swift_getKeyPath();
  v28 = v23;

  return static Published.subscript.setter();
}

uint64_t RacePositionStatePublisher.__allocating_init(serializedData:)(uint64_t a1, unint64_t a2)
{
  v4 = specialized static RacePositionStatePublisher.decodeProto(serializedData:)(a1, a2);
  outlined consume of Data._Representation(a1, a2);
  return v4;
}

uint64_t protocol witness for ProDatable.wireData() in conformance RacePositionStatePublisher()
{
  v1 = type metadata accessor for Apple_Workout_Core_RacePositionStatePublisher(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  RacePositionStatePublisher.protobuf.getter(v4);
  lazy protocol witness table accessor for type Apple_Workout_Core_RacePositionStatePublisher and conformance Apple_Workout_Core_RacePositionStatePublisher();
  v6 = Message.serializedData(partial:)();
  outlined destroy of Apple_Workout_Core_RacePositionStatePublisher(v4, type metadata accessor for Apple_Workout_Core_RacePositionStatePublisher);
  return v6;
}

uint64_t protocol witness for static ProDatable.decodeProto(serializedData:) in conformance RacePositionStatePublisher@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = specialized static RacePositionStatePublisher.decodeProto(serializedData:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t protocol witness for ProDatable.init(serializedData:) in conformance RacePositionStatePublisher@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = specialized static RacePositionStatePublisher.decodeProto(serializedData:)(a1, a2);
  result = outlined consume of Data._Representation(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

void Apple_Workout_Core_RacePositionState.decoded.getter(_BYTE *a1@<X8>)
{
  v3 = *v1;
  if ((v1[1] & 1) == 0)
  {
    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static WOLog.core);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 134217984;
      *(v7 + 4) = v3;
      MEMORY[0x20F2E9420](v7, -1, -1);
    }

    LOBYTE(v3) = 5;
  }

  *a1 = v3;
}

void Apple_Workout_Core_RacePosition.decoded.getter(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Apple_Workout_Core_RacePositionOnRoute(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v28 - v10;
  v12 = type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v28 - v18;
  outlined init with copy of Apple_Workout_Core_RacePosition.OneOf_Type?(v2, v11, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  if ((*(v13 + 48))(v11, 1, v12) != 1)
  {
    outlined init with take of Apple_Workout_Core_RacePosition(v11, v19, type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type);
    outlined init with take of Apple_Workout_Core_RacePosition(v19, v17, type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        v27 = 2;
      }

      else if (EnumCaseMultiPayload == 4)
      {
        v27 = 3;
      }

      else
      {
        v27 = 4;
      }

      *a1 = v27;
    }

    else
    {
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          outlined init with take of Apple_Workout_Core_RacePosition(v17, v7, type metadata accessor for Apple_Workout_Core_RacePositionOnRoute);
          v25 = *v7;
          v26 = *(v7 + 2);
          outlined destroy of Apple_Workout_Core_RacePositionStatePublisher(v7, type metadata accessor for Apple_Workout_Core_RacePositionOnRoute);
          *a1 = v25;
          *(a1 + 8) = v26;
          *(a1 + 12) = 0;
          return;
        }

        *a1 = 1;
        *(a1 + 8) = 0;
        *(a1 + 12) = 1;
        goto LABEL_20;
      }

      *a1 = 0;
    }

    *(a1 + 8) = 0;
    *(a1 + 12) = 1;
LABEL_20:
    outlined destroy of Apple_Workout_Core_RacePositionStatePublisher(v17, type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type);
    return;
  }

  outlined destroy of Apple_Workout_Core_RacePosition?(v11, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  if (one-time initialization token for core != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  __swift_project_value_buffer(v20, static WOLog.core);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    MEMORY[0x20F2E9420](v23, -1, -1);
  }

  *a1 = 3;
  *(a1 + 8) = 0;
  *(a1 + 12) = 1;
}

uint64_t specialized static RacePositionStatePublisher.decodeProto(serializedData:)(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for BinaryDecodingOptions();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for Apple_Workout_Core_RacePositionStatePublisher(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for RacePositionStatePublisher();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  v14 = swift_allocObject();
  RacePositionStatePublisher.init()();
  v18 = a1;
  v19 = a2;
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  outlined copy of Data._Representation(a1, a2);
  BinaryDecodingOptions.init()();
  lazy protocol witness table accessor for type Apple_Workout_Core_RacePositionStatePublisher and conformance Apple_Workout_Core_RacePositionStatePublisher();
  Message.init<A>(serializedBytes:extensions:partial:options:)();
  if (v2)
  {
  }

  else
  {
    Apple_Workout_Core_RacePositionStatePublisher.decodeInto(publisher:)();
    outlined destroy of Apple_Workout_Core_RacePositionStatePublisher(v10, type metadata accessor for Apple_Workout_Core_RacePositionStatePublisher);
  }

  return v14;
}

uint64_t type metadata accessor for RacePositionStatePublisher()
{
  result = type metadata singleton initialization cache for RacePositionStatePublisher;
  if (!type metadata singleton initialization cache for RacePositionStatePublisher)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for RacePositionStatePublisher()
{
  type metadata accessor for Published<RacePositionState>(319, &lazy cache variable for type metadata for Published<RacePositionState>);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    type metadata accessor for Published<RacePositionState>(319, &lazy cache variable for type metadata for Published<RacePosition>);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      type metadata accessor for Published<RacePositionState>(319, &lazy cache variable for type metadata for Published<Double>);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void type metadata accessor for Published<RacePositionState>(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Published();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t outlined destroy of Apple_Workout_Core_RacePosition?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined init with copy of Apple_Workout_Core_RacePosition.OneOf_Type?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of Apple_Workout_Core_RacePositionStatePublisher(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of Apple_Workout_Core_RacePosition(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t Apple_Workout_Core_TrackRunningMetricsPublisher.trackInfo.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgMd, &_s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher();
  outlined init with copy of Apple_Workout_Core_RunningTrackInfo?(v1 + *(v7 + 20), v6, &_s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgMd, &_s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgMR);
  v8 = type metadata accessor for Apple_Workout_Core_RunningTrackInfo();
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of Apple_Workout_Core_RunningTrackInfo(v6, a1, type metadata accessor for Apple_Workout_Core_RunningTrackInfo);
  }

  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 20) = 0;
  *(a1 + 12) = 0;
  *(a1 + 28) = 0;
  v10 = a1 + *(v8 + 36);
  UnknownStorage.init()();
  v11 = *(v8 + 40);
  v12 = type metadata accessor for Apple_Workout_Core_CLLocation();
  (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Apple_Workout_Core_RunningTrackInfo?(v6, &_s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgMd, &_s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgMR);
  }

  return result;
}

uint64_t key path getter for Apple_Workout_Core_TrackRunningMetricsPublisher.trackInfo : Apple_Workout_Core_TrackRunningMetricsPublisher@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgMd, &_s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v15 - v6;
  v8 = type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher();
  outlined init with copy of Apple_Workout_Core_RunningTrackInfo?(a1 + *(v8 + 20), v7, &_s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgMd, &_s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgMR);
  v9 = type metadata accessor for Apple_Workout_Core_RunningTrackInfo();
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return outlined init with take of Apple_Workout_Core_RunningTrackInfo(v7, a2, type metadata accessor for Apple_Workout_Core_RunningTrackInfo);
  }

  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 20) = 0;
  *(a2 + 12) = 0;
  *(a2 + 28) = 0;
  v11 = a2 + *(v9 + 36);
  UnknownStorage.init()();
  v12 = *(v9 + 40);
  v13 = type metadata accessor for Apple_Workout_Core_CLLocation();
  (*(*(v13 - 8) + 56))(a2 + v12, 1, 1, v13);
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Apple_Workout_Core_RunningTrackInfo?(v7, &_s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgMd, &_s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgMR);
  }

  return result;
}

uint64_t key path setter for Apple_Workout_Core_TrackRunningMetricsPublisher.trackInfo : Apple_Workout_Core_TrackRunningMetricsPublisher(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_RunningTrackInfo();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_Core_RunningTrackInfo(a1, v8, type metadata accessor for Apple_Workout_Core_RunningTrackInfo);
  v9 = *(type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher() + 20);
  outlined destroy of Apple_Workout_Core_RunningTrackInfo?(a2 + v9, &_s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgMd, &_s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgMR);
  outlined init with take of Apple_Workout_Core_RunningTrackInfo(v8, a2 + v9, type metadata accessor for Apple_Workout_Core_RunningTrackInfo);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Apple_Workout_Core_TrackRunningMetricsPublisher.trackInfo.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher() + 20);
  outlined destroy of Apple_Workout_Core_RunningTrackInfo?(v1 + v3, &_s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgMd, &_s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgMR);
  outlined init with take of Apple_Workout_Core_RunningTrackInfo(a1, v1 + v3, type metadata accessor for Apple_Workout_Core_RunningTrackInfo);
  v4 = type metadata accessor for Apple_Workout_Core_RunningTrackInfo();
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher()
{
  result = type metadata singleton initialization cache for Apple_Workout_Core_TrackRunningMetricsPublisher;
  if (!type metadata singleton initialization cache for Apple_Workout_Core_TrackRunningMetricsPublisher)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void (*Apple_Workout_Core_TrackRunningMetricsPublisher.trackInfo.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgMd, &_s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Apple_Workout_Core_RunningTrackInfo();
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher() + 20);
  *(v5 + 12) = v15;
  outlined init with copy of Apple_Workout_Core_RunningTrackInfo?(v1 + v15, v8, &_s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgMd, &_s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 1;
    *(v14 + 20) = 0;
    *(v14 + 12) = 0;
    *(v14 + 28) = 0;
    v17 = v14 + *(v9 + 36);
    UnknownStorage.init()();
    v18 = *(v9 + 40);
    v19 = type metadata accessor for Apple_Workout_Core_CLLocation();
    (*(*(v19 - 8) + 56))(v14 + v18, 1, 1, v19);
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Apple_Workout_Core_RunningTrackInfo?(v8, &_s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgMd, &_s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgMR);
    }
  }

  else
  {
    outlined init with take of Apple_Workout_Core_RunningTrackInfo(v8, v14, type metadata accessor for Apple_Workout_Core_RunningTrackInfo);
  }

  return Apple_Workout_Core_TrackRunningMetricsPublisher.trackInfo.modify;
}

BOOL Apple_Workout_Core_TrackRunningMetricsPublisher.hasTrackInfo.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgMd, &_s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher();
  outlined init with copy of Apple_Workout_Core_RunningTrackInfo?(v0 + *(v5 + 20), v4, &_s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgMd, &_s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgMR);
  v6 = type metadata accessor for Apple_Workout_Core_RunningTrackInfo();
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  outlined destroy of Apple_Workout_Core_RunningTrackInfo?(v4, &_s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgMd, &_s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgMR);
  return v7;
}

Swift::Void __swiftcall Apple_Workout_Core_TrackRunningMetricsPublisher.clearTrackInfo()()
{
  v1 = *(type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher() + 20);
  outlined destroy of Apple_Workout_Core_RunningTrackInfo?(v0 + v1, &_s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgMd, &_s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgMR);
  v2 = type metadata accessor for Apple_Workout_Core_RunningTrackInfo();
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Apple_Workout_Core_TrackRunningMetricsPublisher.trackRunningCoordinator.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B24_TrackRunningCoordinatorVSgMd, &_s11WorkoutCore06Apple_a1_B24_TrackRunningCoordinatorVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher();
  outlined init with copy of Apple_Workout_Core_RunningTrackInfo?(v1 + *(v7 + 24), v6, &_s11WorkoutCore06Apple_a1_B24_TrackRunningCoordinatorVSgMd, &_s11WorkoutCore06Apple_a1_B24_TrackRunningCoordinatorVSgMR);
  v8 = type metadata accessor for Apple_Workout_Core_TrackRunningCoordinator();
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of Apple_Workout_Core_RunningTrackInfo(v6, a1, type metadata accessor for Apple_Workout_Core_TrackRunningCoordinator);
  }

  *a1 = 0;
  v10 = &a1[*(v8 + 20)];
  UnknownStorage.init()();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Apple_Workout_Core_RunningTrackInfo?(v6, &_s11WorkoutCore06Apple_a1_B24_TrackRunningCoordinatorVSgMd, &_s11WorkoutCore06Apple_a1_B24_TrackRunningCoordinatorVSgMR);
  }

  return result;
}

uint64_t key path getter for Apple_Workout_Core_TrackRunningMetricsPublisher.trackRunningCoordinator : Apple_Workout_Core_TrackRunningMetricsPublisher@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B24_TrackRunningCoordinatorVSgMd, &_s11WorkoutCore06Apple_a1_B24_TrackRunningCoordinatorVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher();
  outlined init with copy of Apple_Workout_Core_RunningTrackInfo?(a1 + *(v8 + 24), v7, &_s11WorkoutCore06Apple_a1_B24_TrackRunningCoordinatorVSgMd, &_s11WorkoutCore06Apple_a1_B24_TrackRunningCoordinatorVSgMR);
  v9 = type metadata accessor for Apple_Workout_Core_TrackRunningCoordinator();
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return outlined init with take of Apple_Workout_Core_RunningTrackInfo(v7, a2, type metadata accessor for Apple_Workout_Core_TrackRunningCoordinator);
  }

  *a2 = 0;
  v11 = &a2[*(v9 + 20)];
  UnknownStorage.init()();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Apple_Workout_Core_RunningTrackInfo?(v7, &_s11WorkoutCore06Apple_a1_B24_TrackRunningCoordinatorVSgMd, &_s11WorkoutCore06Apple_a1_B24_TrackRunningCoordinatorVSgMR);
  }

  return result;
}

uint64_t key path setter for Apple_Workout_Core_TrackRunningMetricsPublisher.trackRunningCoordinator : Apple_Workout_Core_TrackRunningMetricsPublisher(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_TrackRunningCoordinator();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_Core_RunningTrackInfo(a1, v8, type metadata accessor for Apple_Workout_Core_TrackRunningCoordinator);
  v9 = *(type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher() + 24);
  outlined destroy of Apple_Workout_Core_RunningTrackInfo?(a2 + v9, &_s11WorkoutCore06Apple_a1_B24_TrackRunningCoordinatorVSgMd, &_s11WorkoutCore06Apple_a1_B24_TrackRunningCoordinatorVSgMR);
  outlined init with take of Apple_Workout_Core_RunningTrackInfo(v8, a2 + v9, type metadata accessor for Apple_Workout_Core_TrackRunningCoordinator);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Apple_Workout_Core_TrackRunningMetricsPublisher.trackRunningCoordinator.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher() + 24);
  outlined destroy of Apple_Workout_Core_RunningTrackInfo?(v1 + v3, &_s11WorkoutCore06Apple_a1_B24_TrackRunningCoordinatorVSgMd, &_s11WorkoutCore06Apple_a1_B24_TrackRunningCoordinatorVSgMR);
  outlined init with take of Apple_Workout_Core_RunningTrackInfo(a1, v1 + v3, type metadata accessor for Apple_Workout_Core_TrackRunningCoordinator);
  v4 = type metadata accessor for Apple_Workout_Core_TrackRunningCoordinator();
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t outlined init with copy of Apple_Workout_Core_RunningTrackInfo?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined init with take of Apple_Workout_Core_RunningTrackInfo(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void (*Apple_Workout_Core_TrackRunningMetricsPublisher.trackRunningCoordinator.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B24_TrackRunningCoordinatorVSgMd, &_s11WorkoutCore06Apple_a1_B24_TrackRunningCoordinatorVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Apple_Workout_Core_TrackRunningCoordinator();
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher() + 24);
  *(v5 + 12) = v15;
  outlined init with copy of Apple_Workout_Core_RunningTrackInfo?(v1 + v15, v8, &_s11WorkoutCore06Apple_a1_B24_TrackRunningCoordinatorVSgMd, &_s11WorkoutCore06Apple_a1_B24_TrackRunningCoordinatorVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    v17 = &v14[*(v9 + 20)];
    UnknownStorage.init()();
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Apple_Workout_Core_RunningTrackInfo?(v8, &_s11WorkoutCore06Apple_a1_B24_TrackRunningCoordinatorVSgMd, &_s11WorkoutCore06Apple_a1_B24_TrackRunningCoordinatorVSgMR);
    }
  }

  else
  {
    outlined init with take of Apple_Workout_Core_RunningTrackInfo(v8, v14, type metadata accessor for Apple_Workout_Core_TrackRunningCoordinator);
  }

  return Apple_Workout_Core_TrackRunningMetricsPublisher.trackRunningCoordinator.modify;
}

void Apple_Workout_Core_TrackRunningMetricsPublisher.trackInfo.modify(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  v8 = *a1;
  v9 = *(*a1 + 12);
  v10 = (*a1)[4];
  v11 = (*a1)[5];
  v12 = (*a1)[2];
  v13 = (*a1)[3];
  v14 = **a1;
  v15 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of Apple_Workout_Core_RunningTrackInfo(v11, v10, a5);
    outlined destroy of Apple_Workout_Core_RunningTrackInfo?(v14 + v9, a3, a4);
    outlined init with take of Apple_Workout_Core_RunningTrackInfo(v10, v14 + v9, a5);
    (*(v13 + 56))(v14 + v9, 0, 1, v12);
    outlined destroy of Apple_Workout_Core_RunningTrackInfo(v11, a5);
  }

  else
  {
    outlined destroy of Apple_Workout_Core_RunningTrackInfo?(v14 + v9, a3, a4);
    outlined init with take of Apple_Workout_Core_RunningTrackInfo(v11, v14 + v9, a5);
    (*(v13 + 56))(v14 + v9, 0, 1, v12);
  }

  free(v11);
  free(v10);
  free(v15);

  free(v8);
}

uint64_t outlined init with copy of Apple_Workout_Core_RunningTrackInfo(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of Apple_Workout_Core_RunningTrackInfo(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL Apple_Workout_Core_TrackRunningMetricsPublisher.hasTrackRunningCoordinator.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B24_TrackRunningCoordinatorVSgMd, &_s11WorkoutCore06Apple_a1_B24_TrackRunningCoordinatorVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher();
  outlined init with copy of Apple_Workout_Core_RunningTrackInfo?(v0 + *(v5 + 24), v4, &_s11WorkoutCore06Apple_a1_B24_TrackRunningCoordinatorVSgMd, &_s11WorkoutCore06Apple_a1_B24_TrackRunningCoordinatorVSgMR);
  v6 = type metadata accessor for Apple_Workout_Core_TrackRunningCoordinator();
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  outlined destroy of Apple_Workout_Core_RunningTrackInfo?(v4, &_s11WorkoutCore06Apple_a1_B24_TrackRunningCoordinatorVSgMd, &_s11WorkoutCore06Apple_a1_B24_TrackRunningCoordinatorVSgMR);
  return v7;
}

Swift::Void __swiftcall Apple_Workout_Core_TrackRunningMetricsPublisher.clearTrackRunningCoordinator()()
{
  v1 = *(type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher() + 24);
  outlined destroy of Apple_Workout_Core_RunningTrackInfo?(v0 + v1, &_s11WorkoutCore06Apple_a1_B24_TrackRunningCoordinatorVSgMd, &_s11WorkoutCore06Apple_a1_B24_TrackRunningCoordinatorVSgMR);
  v2 = type metadata accessor for Apple_Workout_Core_TrackRunningCoordinator();
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Apple_Workout_Core_TrackRunningMetricsPublisher.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Apple_Workout_Core_TrackRunningMetricsPublisher.unknownFields.setter(uint64_t a1)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t Apple_Workout_Core_TrackRunningMetricsPublisher.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher();
  v3 = *(v2 + 20);
  v4 = type metadata accessor for Apple_Workout_Core_RunningTrackInfo();
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v5 = *(v2 + 24);
  v6 = type metadata accessor for Apple_Workout_Core_TrackRunningCoordinator();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1 + v5, 1, 1, v6);
}

uint64_t static Apple_Workout_Core_TrackRunningMetricsPublisher._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for _protobuf_nameMap != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for _NameMap();
  v3 = __swift_project_value_buffer(v2, static Apple_Workout_Core_TrackRunningMetricsPublisher._protobuf_nameMap);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Apple_Workout_Core_TrackRunningMetricsPublisher.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      closure #1 in Apple_Workout_Core_TrackRunningMetricsPublisher.decodeMessage<A>(decoder:)();
    }

    else if (result == 2)
    {
      closure #2 in Apple_Workout_Core_TrackRunningMetricsPublisher.decodeMessage<A>(decoder:)();
    }
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_Core_TrackRunningMetricsPublisher.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher() + 20);
  type metadata accessor for Apple_Workout_Core_RunningTrackInfo();
  lazy protocol witness table accessor for type Apple_Workout_Core_TrackRunningMetricsPublisher and conformance Apple_Workout_Core_TrackRunningMetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_RunningTrackInfo and conformance Apple_Workout_Core_RunningTrackInfo, type metadata accessor for Apple_Workout_Core_RunningTrackInfo);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t closure #2 in Apple_Workout_Core_TrackRunningMetricsPublisher.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher() + 24);
  type metadata accessor for Apple_Workout_Core_TrackRunningCoordinator();
  lazy protocol witness table accessor for type Apple_Workout_Core_TrackRunningMetricsPublisher and conformance Apple_Workout_Core_TrackRunningMetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_TrackRunningCoordinator and conformance Apple_Workout_Core_TrackRunningCoordinator, type metadata accessor for Apple_Workout_Core_TrackRunningCoordinator);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t Apple_Workout_Core_TrackRunningMetricsPublisher.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = closure #1 in Apple_Workout_Core_TrackRunningMetricsPublisher.traverse<A>(visitor:)(v3, a1, a2, a3);
  if (!v4)
  {
    closure #2 in Apple_Workout_Core_TrackRunningMetricsPublisher.traverse<A>(visitor:)(v3, a1, a2, a3);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_Core_TrackRunningMetricsPublisher.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgMd, &_s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Workout_Core_RunningTrackInfo();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher();
  outlined init with copy of Apple_Workout_Core_RunningTrackInfo?(a1 + *(v14 + 20), v8, &_s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgMd, &_s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Apple_Workout_Core_RunningTrackInfo?(v8, &_s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgMd, &_s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgMR);
  }

  outlined init with take of Apple_Workout_Core_RunningTrackInfo(v8, v13, type metadata accessor for Apple_Workout_Core_RunningTrackInfo);
  lazy protocol witness table accessor for type Apple_Workout_Core_TrackRunningMetricsPublisher and conformance Apple_Workout_Core_TrackRunningMetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_RunningTrackInfo and conformance Apple_Workout_Core_RunningTrackInfo, type metadata accessor for Apple_Workout_Core_RunningTrackInfo);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Apple_Workout_Core_RunningTrackInfo(v13, type metadata accessor for Apple_Workout_Core_RunningTrackInfo);
}

uint64_t closure #2 in Apple_Workout_Core_TrackRunningMetricsPublisher.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B24_TrackRunningCoordinatorVSgMd, &_s11WorkoutCore06Apple_a1_B24_TrackRunningCoordinatorVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Workout_Core_TrackRunningCoordinator();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher();
  outlined init with copy of Apple_Workout_Core_RunningTrackInfo?(a1 + *(v14 + 24), v8, &_s11WorkoutCore06Apple_a1_B24_TrackRunningCoordinatorVSgMd, &_s11WorkoutCore06Apple_a1_B24_TrackRunningCoordinatorVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Apple_Workout_Core_RunningTrackInfo?(v8, &_s11WorkoutCore06Apple_a1_B24_TrackRunningCoordinatorVSgMd, &_s11WorkoutCore06Apple_a1_B24_TrackRunningCoordinatorVSgMR);
  }

  outlined init with take of Apple_Workout_Core_RunningTrackInfo(v8, v13, type metadata accessor for Apple_Workout_Core_TrackRunningCoordinator);
  lazy protocol witness table accessor for type Apple_Workout_Core_TrackRunningMetricsPublisher and conformance Apple_Workout_Core_TrackRunningMetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_TrackRunningCoordinator and conformance Apple_Workout_Core_TrackRunningCoordinator, type metadata accessor for Apple_Workout_Core_TrackRunningCoordinator);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Apple_Workout_Core_RunningTrackInfo(v13, type metadata accessor for Apple_Workout_Core_TrackRunningCoordinator);
}

Swift::Int Apple_Workout_Core_TrackRunningMetricsPublisher.hashValue.getter()
{
  Hasher.init(_seed:)();
  type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher();
  lazy protocol witness table accessor for type Apple_Workout_Core_TrackRunningMetricsPublisher and conformance Apple_Workout_Core_TrackRunningMetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_TrackRunningMetricsPublisher and conformance Apple_Workout_Core_TrackRunningMetricsPublisher, type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_Core_TrackRunningMetricsPublisher@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = *(a1 + 20);
  v5 = type metadata accessor for Apple_Workout_Core_RunningTrackInfo();
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = *(a1 + 24);
  v7 = type metadata accessor for Apple_Workout_Core_TrackRunningCoordinator();
  v8 = *(*(v7 - 8) + 56);

  return v8(a2 + v6, 1, 1, v7);
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_Core_TrackRunningMetricsPublisher@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_Core_TrackRunningMetricsPublisher(uint64_t a1)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_Core_TrackRunningMetricsPublisher(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_Core_TrackRunningMetricsPublisher and conformance Apple_Workout_Core_TrackRunningMetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_TrackRunningMetricsPublisher and conformance Apple_Workout_Core_TrackRunningMetricsPublisher, type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for static _ProtoNameProviding._protobuf_nameMap.getter in conformance Apple_Workout_Core_TrackRunningMetricsPublisher@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for _protobuf_nameMap != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for _NameMap();
  v3 = __swift_project_value_buffer(v2, static Apple_Workout_Core_TrackRunningMetricsPublisher._protobuf_nameMap);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_Core_TrackRunningMetricsPublisher(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Apple_Workout_Core_TrackRunningMetricsPublisher and conformance Apple_Workout_Core_TrackRunningMetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_TrackRunningMetricsPublisher and conformance Apple_Workout_Core_TrackRunningMetricsPublisher, type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher);

  return MEMORY[0x28217E428](a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Apple_Workout_Core_TrackRunningMetricsPublisher()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_TrackRunningMetricsPublisher()
{
  lazy protocol witness table accessor for type Apple_Workout_Core_TrackRunningMetricsPublisher and conformance Apple_Workout_Core_TrackRunningMetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_TrackRunningMetricsPublisher and conformance Apple_Workout_Core_TrackRunningMetricsPublisher, type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher);

  return Message.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Apple_Workout_Core_TrackRunningMetricsPublisher()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t specialized static Apple_Workout_Core_TrackRunningMetricsPublisher.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v50 = a1;
  v51 = a2;
  v2 = type metadata accessor for Apple_Workout_Core_TrackRunningCoordinator();
  v47 = *(v2 - 8);
  v48 = v2;
  v3 = *(v47 + 64);
  MEMORY[0x28223BE20](v2);
  v43 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B24_TrackRunningCoordinatorVSgMd, &_s11WorkoutCore06Apple_a1_B24_TrackRunningCoordinatorVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v44 = &v42 - v7;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B24_TrackRunningCoordinatorVSg_ADtMd, &_s11WorkoutCore06Apple_a1_B24_TrackRunningCoordinatorVSg_ADtMR);
  v8 = *(*(v46 - 8) + 64);
  MEMORY[0x28223BE20](v46);
  v49 = &v42 - v9;
  v10 = type metadata accessor for Apple_Workout_Core_RunningTrackInfo();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgMd, &_s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgMR);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v42 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSg_ADtMd, &_s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSg_ADtMR);
  v20 = v19 - 8;
  v21 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v42 - v22;
  v45 = type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher();
  v24 = *(v45 + 20);
  v25 = *(v20 + 56);
  outlined init with copy of Apple_Workout_Core_RunningTrackInfo?(v50 + v24, v23, &_s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgMd, &_s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgMR);
  outlined init with copy of Apple_Workout_Core_RunningTrackInfo?(v51 + v24, &v23[v25], &_s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgMd, &_s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgMR);
  v26 = *(v11 + 48);
  if (v26(v23, 1, v10) == 1)
  {
    if (v26(&v23[v25], 1, v10) == 1)
    {
      outlined destroy of Apple_Workout_Core_RunningTrackInfo?(v23, &_s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgMd, &_s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgMR);
      goto LABEL_8;
    }

LABEL_6:
    v27 = &_s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSg_ADtMd;
    v28 = &_s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSg_ADtMR;
    v29 = v23;
LABEL_16:
    outlined destroy of Apple_Workout_Core_RunningTrackInfo?(v29, v27, v28);
    goto LABEL_17;
  }

  outlined init with copy of Apple_Workout_Core_RunningTrackInfo?(v23, v18, &_s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgMd, &_s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgMR);
  if (v26(&v23[v25], 1, v10) == 1)
  {
    outlined destroy of Apple_Workout_Core_RunningTrackInfo(v18, type metadata accessor for Apple_Workout_Core_RunningTrackInfo);
    goto LABEL_6;
  }

  outlined init with take of Apple_Workout_Core_RunningTrackInfo(&v23[v25], v14, type metadata accessor for Apple_Workout_Core_RunningTrackInfo);
  v30 = static Apple_Workout_Core_RunningTrackInfo.== infix(_:_:)(v18, v14);
  outlined destroy of Apple_Workout_Core_RunningTrackInfo(v14, type metadata accessor for Apple_Workout_Core_RunningTrackInfo);
  outlined destroy of Apple_Workout_Core_RunningTrackInfo(v18, type metadata accessor for Apple_Workout_Core_RunningTrackInfo);
  outlined destroy of Apple_Workout_Core_RunningTrackInfo?(v23, &_s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgMd, &_s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgMR);
  if ((v30 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_8:
  v31 = *(v45 + 24);
  v32 = *(v46 + 48);
  v33 = v49;
  outlined init with copy of Apple_Workout_Core_RunningTrackInfo?(v50 + v31, v49, &_s11WorkoutCore06Apple_a1_B24_TrackRunningCoordinatorVSgMd, &_s11WorkoutCore06Apple_a1_B24_TrackRunningCoordinatorVSgMR);
  outlined init with copy of Apple_Workout_Core_RunningTrackInfo?(v51 + v31, v33 + v32, &_s11WorkoutCore06Apple_a1_B24_TrackRunningCoordinatorVSgMd, &_s11WorkoutCore06Apple_a1_B24_TrackRunningCoordinatorVSgMR);
  v34 = v48;
  v35 = *(v47 + 48);
  if (v35(v33, 1, v48) != 1)
  {
    v37 = v44;
    outlined init with copy of Apple_Workout_Core_RunningTrackInfo?(v33, v44, &_s11WorkoutCore06Apple_a1_B24_TrackRunningCoordinatorVSgMd, &_s11WorkoutCore06Apple_a1_B24_TrackRunningCoordinatorVSgMR);
    if (v35(v33 + v32, 1, v34) == 1)
    {
      outlined destroy of Apple_Workout_Core_RunningTrackInfo(v37, type metadata accessor for Apple_Workout_Core_TrackRunningCoordinator);
      goto LABEL_14;
    }

    v39 = v33 + v32;
    v40 = v43;
    outlined init with take of Apple_Workout_Core_RunningTrackInfo(v39, v43, type metadata accessor for Apple_Workout_Core_TrackRunningCoordinator);
    if (*v37 != *v40)
    {
      outlined destroy of Apple_Workout_Core_RunningTrackInfo(v40, type metadata accessor for Apple_Workout_Core_TrackRunningCoordinator);
      outlined destroy of Apple_Workout_Core_RunningTrackInfo(v37, type metadata accessor for Apple_Workout_Core_TrackRunningCoordinator);
      v27 = &_s11WorkoutCore06Apple_a1_B24_TrackRunningCoordinatorVSgMd;
      v28 = &_s11WorkoutCore06Apple_a1_B24_TrackRunningCoordinatorVSgMR;
      goto LABEL_15;
    }

    v41 = *(v34 + 20);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type Apple_Workout_Core_TrackRunningMetricsPublisher and conformance Apple_Workout_Core_TrackRunningMetricsPublisher(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
    LOBYTE(v41) = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of Apple_Workout_Core_RunningTrackInfo(v40, type metadata accessor for Apple_Workout_Core_TrackRunningCoordinator);
    outlined destroy of Apple_Workout_Core_RunningTrackInfo(v37, type metadata accessor for Apple_Workout_Core_TrackRunningCoordinator);
    outlined destroy of Apple_Workout_Core_RunningTrackInfo?(v33, &_s11WorkoutCore06Apple_a1_B24_TrackRunningCoordinatorVSgMd, &_s11WorkoutCore06Apple_a1_B24_TrackRunningCoordinatorVSgMR);
    if (v41)
    {
      goto LABEL_11;
    }

LABEL_17:
    v36 = 0;
    return v36 & 1;
  }

  if (v35(v33 + v32, 1, v34) != 1)
  {
LABEL_14:
    v27 = &_s11WorkoutCore06Apple_a1_B24_TrackRunningCoordinatorVSg_ADtMd;
    v28 = &_s11WorkoutCore06Apple_a1_B24_TrackRunningCoordinatorVSg_ADtMR;
LABEL_15:
    v29 = v33;
    goto LABEL_16;
  }

  outlined destroy of Apple_Workout_Core_RunningTrackInfo?(v33, &_s11WorkoutCore06Apple_a1_B24_TrackRunningCoordinatorVSgMd, &_s11WorkoutCore06Apple_a1_B24_TrackRunningCoordinatorVSgMR);
LABEL_11:
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Apple_Workout_Core_TrackRunningMetricsPublisher and conformance Apple_Workout_Core_TrackRunningMetricsPublisher(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  v36 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v36 & 1;
}

void type metadata completion function for Apple_Workout_Core_TrackRunningMetricsPublisher()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Apple_Workout_Core_RunningTrackInfo?(319, &lazy cache variable for type metadata for Apple_Workout_Core_RunningTrackInfo?, type metadata accessor for Apple_Workout_Core_RunningTrackInfo);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Apple_Workout_Core_RunningTrackInfo?(319, &lazy cache variable for type metadata for Apple_Workout_Core_TrackRunningCoordinator?, type metadata accessor for Apple_Workout_Core_TrackRunningCoordinator);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for Apple_Workout_Core_RunningTrackInfo?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t outlined destroy of Apple_Workout_Core_RunningTrackInfo?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t lazy protocol witness table accessor for type Apple_Workout_Core_TrackRunningMetricsPublisher and conformance Apple_Workout_Core_TrackRunningMetricsPublisher(unint64_t *a1, void (*a2)(uint64_t))
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

id FIUIWorkoutActivityType.healthKitRepresentation.getter()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CCDC38]) init];
  [v1 setActivityType_];
  [v1 setLocationType_];
  if ([v0 effectiveTypeIdentifier] == 46)
  {
    [v1 setSwimmingLocationType_];
  }

  return v1;
}

id HKWorkoutConfiguration.fiuiWorkoutActivityType(isPartOfMultisport:)(char a1)
{
  if ([v1 activityType] == 46)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_20B423A90;
    v4 = *MEMORY[0x277CCC510];
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v5;
    v6 = [v1 swimmingLocationType];
    v7 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    *(inited + 72) = type metadata accessor for NSNumber();
    *(inited + 48) = v7;
    v8 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of (String, Any)(inited + 32);
  }

  else
  {
    v8 = 0;
  }

  v9 = [v1 activityType];
  v10 = [v1 locationType];
  if (v8)
  {
    v11.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v11.super.isa = 0;
  }

  v12 = [objc_allocWithZone(MEMORY[0x277D0A810]) initWithActivityTypeIdentifier:v9 location:v10 isPartOfMultiSport:a1 & 1 metadata:v11.super.isa];

  return v12;
}

unint64_t type metadata accessor for NSNumber()
{
  result = lazy cache variable for type metadata for NSNumber;
  if (!lazy cache variable for type metadata for NSNumber)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSNumber);
  }

  return result;
}

uint64_t outlined destroy of (String, Any)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySiG_11WorkoutCore0D5BlockCs5NeverOTg504_s11d58Core08IntervalA0C12regroupSteps_4from11repeatCountSayAA0A5f5CGSayQ26A4StepCG_AISitFZAHSiXEfU1_SayAIGTf1cn_n(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (!v3)
  {
    return result;
  }

  v12 = MEMORY[0x277D84F90];
  specialized ContiguousArray.reserveCapacity(_:)();
  v6 = (a1 + 32);
  while (1)
  {
    v8 = *v6++;
    v7 = v8;
    result = swift_beginAccess();
    v9 = *a2;
    if ((*a2 & 0xC000000000000001) != 0)
    {
      MEMORY[0x20F2E7A20](v7);
      goto LABEL_7;
    }

    if ((v7 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v7 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

    v10 = *(v9 + 8 * v7 + 32);

LABEL_7:
    swift_endAccess();
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    v11 = *(v12 + 16);
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    if (!--v3)
    {
      return v12;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

unint64_t specialized Sequence.forEach(_:)(unint64_t result, uint64_t *a2, uint64_t *a3)
{
  v5 = result;
  if (result >> 62)
  {
    goto LABEL_14;
  }

  v6 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v6)
  {
    do
    {
      v7 = 0;
      while ((v5 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x20F2E7A20](v7, v5);
        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_12;
        }

LABEL_7:
        v11 = v8;
        closure #1 in static IntervalWorkout.regroupSteps(_:from:repeatCount:)(&v11, a2, a3);

        if (!v3)
        {
          ++v7;
          if (v9 != v6)
          {
            continue;
          }
        }

        return result;
      }

      if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v8 = *(v5 + 8 * v7 + 32);

      v9 = v7 + 1;
      if (!__OFADD__(v7, 1))
      {
        goto LABEL_7;
      }

LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      result = __CocoaSet.count.getter();
      v6 = result;
    }

    while (result);
  }

  return result;
}

uint64_t IntervalWorkout.name.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t key path getter for IntervalWorkout.name : IntervalWorkout@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t key path setter for IntervalWorkout.name : IntervalWorkout(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v5 = v4;
  return static Published.subscript.setter();
}

uint64_t IntervalWorkout.name.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return static Published.subscript.setter();
}

uint64_t (*IntervalWorkout.name.modify(uint64_t *a1))()
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
  return IntervalWorkout.name.modify;
}

uint64_t key path setter for IntervalWorkout.$name : IntervalWorkout(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySS_GMd, &_s7Combine9PublishedV9PublisherVySS_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSGMd, &_s7Combine9PublishedVySSGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t IntervalWorkout.$name.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySS_GMd, &_s7Combine9PublishedV9PublisherVySS_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSGMd, &_s7Combine9PublishedVySSGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*IntervalWorkout.$name.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySS_GMd, &_s7Combine9PublishedV9PublisherVySS_GMR);
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

  v10 = OBJC_IVAR____TtC11WorkoutCore15IntervalWorkout__name;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSGMd, &_s7Combine9PublishedVySSGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return IntervalWorkout.$name.modify;
}

uint64_t IntervalWorkout.uuid.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11WorkoutCore15IntervalWorkout_uuid;
  swift_beginAccess();
  v4 = type metadata accessor for UUID();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t IntervalWorkout.uuid.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11WorkoutCore15IntervalWorkout_uuid;
  swift_beginAccess();
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t IntervalWorkout.warmupBlock.getter()
{
  return IntervalWorkout.warmupBlock.getter();
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t key path getter for IntervalWorkout.warmupBlock : IntervalWorkout@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  return key path getter for IntervalWorkout.warmupBlock : IntervalWorkout(a1, a2);
}

{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t key path setter for IntervalWorkout.warmupBlock : IntervalWorkout(uint64_t *a1, void **a2)
{
  return key path setter for IntervalWorkout.warmupBlock : IntervalWorkout(a1, a2);
}

{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;

  return static Published.subscript.setter();
}

uint64_t IntervalWorkout.warmupBlock.setter()
{
  return IntervalWorkout.warmupBlock.setter();
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return static Published.subscript.setter();
}

uint64_t (*IntervalWorkout.warmupBlock.modify(uint64_t *a1))()
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
  return IntervalWorkout.warmupBlock.modify;
}

uint64_t key path setter for IntervalWorkout.$warmupBlock : IntervalWorkout(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy11WorkoutCore0D5BlockC_GMd, &_s7Combine9PublishedV9PublisherVy11WorkoutCore0D5BlockC_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore0C5BlockCGMd, &_s7Combine9PublishedVy11WorkoutCore0C5BlockCGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t IntervalWorkout.$warmupBlock.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy11WorkoutCore0D5BlockC_GMd, &_s7Combine9PublishedV9PublisherVy11WorkoutCore0D5BlockC_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore0C5BlockCGMd, &_s7Combine9PublishedVy11WorkoutCore0C5BlockCGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*IntervalWorkout.$warmupBlock.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy11WorkoutCore0D5BlockC_GMd, &_s7Combine9PublishedV9PublisherVy11WorkoutCore0D5BlockC_GMR);
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

  v10 = OBJC_IVAR____TtC11WorkoutCore15IntervalWorkout__warmupBlock;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore0C5BlockCGMd, &_s7Combine9PublishedVy11WorkoutCore0C5BlockCGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return IntervalWorkout.$warmupBlock.modify;
}

uint64_t (*IntervalWorkout.cooldownBlock.modify(uint64_t *a1))()
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
  return IntervalWorkout.cooldownBlock.modify;
}

uint64_t key path setter for IntervalWorkout.$cooldownBlock : IntervalWorkout(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy11WorkoutCore0D5BlockC_GMd, &_s7Combine9PublishedV9PublisherVy11WorkoutCore0D5BlockC_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore0C5BlockCGMd, &_s7Combine9PublishedVy11WorkoutCore0C5BlockCGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t IntervalWorkout.$cooldownBlock.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy11WorkoutCore0D5BlockC_GMd, &_s7Combine9PublishedV9PublisherVy11WorkoutCore0D5BlockC_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore0C5BlockCGMd, &_s7Combine9PublishedVy11WorkoutCore0C5BlockCGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*IntervalWorkout.$cooldownBlock.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy11WorkoutCore0D5BlockC_GMd, &_s7Combine9PublishedV9PublisherVy11WorkoutCore0D5BlockC_GMR);
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

  v10 = OBJC_IVAR____TtC11WorkoutCore15IntervalWorkout__cooldownBlock;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore0C5BlockCGMd, &_s7Combine9PublishedVy11WorkoutCore0C5BlockCGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return IntervalWorkout.$cooldownBlock.modify;
}

uint64_t IntervalWorkout.stepBlocks.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t key path getter for IntervalWorkout.stepBlocks : IntervalWorkout@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t key path setter for IntervalWorkout.stepBlocks : IntervalWorkout(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v4 = v3;
  return static Published.subscript.setter();
}

uint64_t IntervalWorkout.stepBlocks.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return static Published.subscript.setter();
}

uint64_t (*IntervalWorkout.stepBlocks.modify(uint64_t *a1))()
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
  return IntervalWorkout.stepBlocks.modify;
}

void IntervalWorkout.name.modify(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = *(*a1 + 32);
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t IntervalWorkout.$name.getter(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a1;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path getter for IntervalWorkout.$name : IntervalWorkout(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v8 = *a1;
  v9 = *a4;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path setter for IntervalWorkout.$stepBlocks : IntervalWorkout(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D5BlockCG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D5BlockCG_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C5BlockCGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C5BlockCGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t IntervalWorkout.$stepBlocks.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D5BlockCG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D5BlockCG_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C5BlockCGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C5BlockCGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*IntervalWorkout.$stepBlocks.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D5BlockCG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D5BlockCG_GMR);
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

  v10 = OBJC_IVAR____TtC11WorkoutCore15IntervalWorkout__stepBlocks;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C5BlockCGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C5BlockCGGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return IntervalWorkout.$stepBlocks.modify;
}

void IntervalWorkout.$name.modify(uint64_t a1, char a2)
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

uint64_t IntervalWorkout.blocks.getter()
{
  if (IntervalWorkout.warmupStep.getter())
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v0 = swift_allocObject();
    *(v0 + 16) = xmmword_20B425990;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    *(v0 + 32) = v6;
  }

  else
  {
    v0 = MEMORY[0x277D84F90];
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v1 = v6;
  v7 = v0;
  specialized Array.append<A>(contentsOf:)(v1, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized Array._copyContents(initializing:));
  v2 = v0;
  if (IntervalWorkout.cooldownStep.getter())
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_20B425990;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v4 = v3;
    *(v3 + 32) = v7;
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  specialized Array.append<A>(contentsOf:)(v4, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized Array._copyContents(initializing:));
  return v2;
}

uint64_t IntervalWorkout.warmupStep.getter()
{
  return IntervalWorkout.warmupStep.getter();
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (!(v2 >> 62))
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:

    return 0;
  }

  result = __CocoaSet.count.getter();
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v2 & 0xC000000000000001) != 0)
  {
    v1 = MEMORY[0x20F2E7A20](0);
    goto LABEL_6;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v1 = *(v2 + 32);

LABEL_6:

    return v1;
  }

  __break(1u);
  return result;
}

uint64_t IntervalWorkout.warmupStep.setter(uint64_t a1)
{
  if (!a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    swift_getKeyPath();
    swift_getKeyPath();
    return static Published.subscript.setter();
  }

  swift_beginAccess();
  if (*(a1 + 16) == 2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_20B425990;
    *(v2 + 32) = a1;
    swift_getKeyPath();
    swift_getKeyPath();
    return static Published.subscript.setter();
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t (*IntervalWorkout.warmupStep.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = IntervalWorkout.warmupStep.getter();
  return IntervalWorkout.warmupStep.modify;
}

uint64_t IntervalWorkout.cooldownStep.setter(uint64_t a1)
{
  if (!a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    swift_getKeyPath();
    swift_getKeyPath();
    return static Published.subscript.setter();
  }

  swift_beginAccess();
  if (*(a1 + 16) == 3)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_20B425990;
    *(v2 + 32) = a1;
    swift_getKeyPath();
    swift_getKeyPath();
    return static Published.subscript.setter();
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t (*IntervalWorkout.cooldownStep.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = IntervalWorkout.cooldownStep.getter();
  return IntervalWorkout.cooldownStep.modify;
}

uint64_t IntervalWorkout.warmupStep.modify(uint64_t *a1, char a2, uint64_t (*a3)(uint64_t))
{
  v5 = *a1;
  v4 = a1[1];
  if ((a2 & 1) == 0)
  {
    return a3(*a1);
  }

  v6 = *a1;

  a3(v7);
}

uint64_t IntervalWorkout.displayName.getter()
{
  swift_getObjectType();
  v0 = type metadata accessor for Locale();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v4 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v4 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    return v8;
  }

  else
  {
    String.LocalizationValue.init(stringLiteral:)();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v7 = [objc_opt_self() bundleForClass_];
    static Locale.current.getter();
    return String.init(localized:table:bundle:locale:comment:)();
  }
}

BOOL IntervalWorkout.isValid.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v8 >> 62)
  {
    goto LABEL_21;
  }

  v0 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (v0)
  {
    do
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      if (v8 >> 62)
      {
        v1 = __CocoaSet.count.getter();
      }

      else
      {
        v1 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v2 = 0;
      while (1)
      {
        v3 = v1 == v2;
        if (v1 == v2)
        {
LABEL_18:

          return v3;
        }

        if ((v8 & 0xC000000000000001) != 0)
        {
          MEMORY[0x20F2E7A20](v2);
          if (__OFADD__(v2, 1))
          {
            break;
          }

          goto LABEL_10;
        }

        if (v2 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v4 = *(v8 + 8 * v2 + 32);

        if (__OFADD__(v2, 1))
        {
          break;
        }

LABEL_10:
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        if (v8 >> 62)
        {
          v5 = __CocoaSet.count.getter();
        }

        else
        {
          v5 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        ++v2;
        if (!v5)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      v6 = __CocoaSet.count.getter();
    }

    while (v6);
  }

  return 0;
}

BOOL IntervalWorkout.canAddRepeat.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v5 >> 62)
  {
LABEL_15:
    v0 = __CocoaSet.count.getter();
  }

  else
  {
    v0 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v1 = 0;
  do
  {
    v2 = v1;
    if (v0 == v1)
    {
      break;
    }

    if ((v5 & 0xC000000000000001) != 0)
    {
      MEMORY[0x20F2E7A20](v1);
      if (__OFADD__(v2, 1))
      {
LABEL_12:
        __break(1u);
        break;
      }
    }

    else
    {
      if (v1 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_15;
      }

      v3 = *(v5 + 8 * v1 + 32);

      if (__OFADD__(v2, 1))
      {
        goto LABEL_12;
      }
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v1 = v2 + 1;
  }

  while (v5 != 1);

  return v0 != v2;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance IntervalWorkout.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance IntervalWorkout.CodingKeys()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance IntervalWorkout.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance IntervalWorkout.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized IntervalWorkout.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance IntervalWorkout.CodingKeys(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1701667182;
  v5 = 0xEB000000006B636FLL;
  v6 = 0x6C4270756D726177;
  v7 = 0xED00006B636F6C42;
  v8 = 0x6E776F646C6F6F63;
  if (v2 != 3)
  {
    v8 = 0x636F6C4270657473;
    v7 = 0xEA0000000000736BLL;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 1684632949;
    v3 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance IntervalWorkout.CodingKeys()
{
  v1 = *v0;
  v2 = 1701667182;
  v3 = 0x6C4270756D726177;
  v4 = 0x6E776F646C6F6F63;
  if (v1 != 3)
  {
    v4 = 0x636F6C4270657473;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1684632949;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance IntervalWorkout.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized IntervalWorkout.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance IntervalWorkout.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type IntervalWorkout.CodingKeys and conformance IntervalWorkout.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance IntervalWorkout.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type IntervalWorkout.CodingKeys and conformance IntervalWorkout.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

Swift::Int IntervalWorkout.hash.getter()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0) + 8;
  Hasher.init()();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  String.hash(into:)();

  v6 = IntervalWorkout.blocks.getter();
  specialized Array<A>.hash(into:)(v10, v6);

  v7 = OBJC_IVAR____TtC11WorkoutCore15IntervalWorkout_uuid;
  swift_beginAccess();
  (*(v2 + 16))(v5, v0 + v7, v1);
  _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
  dispatch thunk of Hashable.hash(into:)();
  (*(v2 + 8))(v5, v1);
  return Hasher.finalize()();
}

uint64_t IntervalWorkout.equivalentHash(into:)(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  String.hash(into:)();

  v2 = IntervalWorkout.blocks.getter();
  specialized Array<A>.hash(into:)(a1, v2);
}

id IntervalWorkout.__allocating_init(_:uuid:warmupStep:cooldownStep:)(uint64_t a1, void (*a2)(void, void, void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = objc_allocWithZone(v5);
  v12 = specialized IntervalWorkout.init(_:uuid:warmupStep:cooldownStep:)(a1, a2, a3, a4, a5);

  return v12;
}

id IntervalWorkout.init(_:uuid:warmupStep:cooldownStep:)(uint64_t a1, void (*a2)(void, void, void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = specialized IntervalWorkout.init(_:uuid:warmupStep:cooldownStep:)(a1, a2, a3, a4, a5);

  return v5;
}

char *IntervalWorkout.init(from:)(uint64_t *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for UUID();
  v51 = *(v4 - 8);
  v52 = v4;
  v5 = *(v51 + 64);
  MEMORY[0x28223BE20](v4);
  v48 = v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11WorkoutCore08IntervalD0C10CodingKeys33_16E702E5523E97149029D34F69A873FCLLOGMd, &_ss22KeyedDecodingContainerVy11WorkoutCore08IntervalD0C10CodingKeys33_16E702E5523E97149029D34F69A873FCLLOGMR);
  v49 = *(v7 - 8);
  v50 = v7;
  v8 = *(v49 + 64);
  MEMORY[0x28223BE20](v7);
  v61 = v47 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C5BlockCGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C5BlockCGGMR);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v47 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSGMd, &_s7Combine9PublishedVySSGMR);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = v47 - v18;
  v20 = OBJC_IVAR____TtC11WorkoutCore15IntervalWorkout__name;
  v65 = 0;
  v66 = 0xE000000000000000;
  Published.init(initialValue:)();
  v54 = v16;
  v21 = *(v16 + 32);
  v60 = v20;
  v22 = &v2[v20];
  v23 = v2;
  v21(v22, v19, v15);
  v24 = OBJC_IVAR____TtC11WorkoutCore15IntervalWorkout__stepBlocks;
  v65 = MEMORY[0x277D84F90];
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore0A5BlockCGMd, &_sSay11WorkoutCore0A5BlockCGMR);
  Published.init(initialValue:)();
  v55 = v11;
  v56 = v24;
  v26 = *(v11 + 32);
  v57 = v10;
  v26(&v23[v24], v14, v10);
  v28 = a1[3];
  v27 = a1[4];
  v58 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v28);
  lazy protocol witness table accessor for type IntervalWorkout.CodingKeys and conformance IntervalWorkout.CodingKeys();
  v29 = v53;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v29)
  {
    v30 = v54;
    __swift_destroy_boxed_opaque_existential_1(v58);
    (*(v30 + 8))(&v23[v60], v15);
    (*(v55 + 8))(&v23[v56], v57);
    v31 = *((*MEMORY[0x277D85000] & *v23) + 0x30);
    v32 = *((*MEMORY[0x277D85000] & *v23) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v65) = 0;
    v34 = KeyedDecodingContainer.decode(_:forKey:)();
    v36 = v35;
    v47[1] = v25;
    v37 = v60;
    swift_beginAccess();
    (*(v54 + 8))(&v23[v37], v15);
    v63 = v34;
    v64 = v36;
    Published.init(initialValue:)();
    swift_endAccess();
    LOBYTE(v65) = 1;
    _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    v38 = v48;
    v39 = v52;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v51 + 32))(&v23[OBJC_IVAR____TtC11WorkoutCore15IntervalWorkout_uuid], v38, v39);
    type metadata accessor for WorkoutBlock();
    LOBYTE(v65) = 2;
    _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type WorkoutBlock and conformance WorkoutBlock, type metadata accessor for WorkoutBlock);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v40 = v63;
    swift_beginAccess();
    v67 = v40;
    Published.init(initialValue:)();
    swift_endAccess();
    LOBYTE(v65) = 3;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v41 = v49;
    v42 = v63;
    swift_beginAccess();
    v67 = v42;
    Published.init(initialValue:)();
    swift_endAccess();
    LOBYTE(v65) = 4;
    lazy protocol witness table accessor for type [WorkoutBlock] and conformance <A> [A](&lazy protocol witness table cache variable for type [WorkoutBlock] and conformance <A> [A], &lazy protocol witness table cache variable for type WorkoutBlock and conformance WorkoutBlock);
    v43 = v50;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v44 = v63;
    v45 = v41;
    v46 = v56;
    swift_beginAccess();
    (*(v55 + 8))(&v23[v46], v57);
    v67 = v44;
    Published.init(initialValue:)();
    swift_endAccess();
    (*(v45 + 8))(v61, v43);
    v62.receiver = v23;
    v62.super_class = ObjectType;
    v23 = objc_msgSendSuper2(&v62, sel_init);
    __swift_destroy_boxed_opaque_existential_1(v58);
  }

  return v23;
}

uint64_t static IntervalWorkout.migrateLegacyBlocks(_:)(unint64_t a1)
{
  v27 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_50;
  }

  v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v2 = MEMORY[0x277D84F90];
    if (!v1)
    {
      return 0;
    }

    v3 = 0;
    v4 = 0;
    v23 = a1 & 0xC000000000000001;
    v24 = 0;
    v20 = a1 & 0xFFFFFFFFFFFFFF8;
    v21 = a1;
    v19 = a1 + 32;
    v22 = v1;
    while (1)
    {
      if (v23)
      {
        a1 = MEMORY[0x20F2E7A20](v4, v21);
        v5 = __OFADD__(v4++, 1);
        if (v5)
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (v4 >= *(v20 + 16))
        {
          goto LABEL_49;
        }

        v6 = *(v19 + 8 * v4);

        v5 = __OFADD__(v4++, 1);
        if (v5)
        {
LABEL_47:
          __break(1u);
          goto LABEL_48;
        }
      }

      v26 = v2;
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      if (!(v25 >> 62))
      {
        v7 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v7)
        {
          break;
        }

        goto LABEL_32;
      }

      a1 = __CocoaSet.count.getter();
      v7 = a1;
      if (a1)
      {
        break;
      }

LABEL_32:
      v8 = v2;
LABEL_33:

      if (v8 >> 62)
      {
        v13 = __CocoaSet.count.getter();
      }

      else
      {
        v13 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v2 = MEMORY[0x277D84F90];
      if (v13)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        v25 = v8;

        static Published.subscript.setter();
        if (v8 >> 62)
        {
          v14 = __CocoaSet.count.getter();
        }

        else
        {
          v14 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v14 == 1)
        {
          swift_getKeyPath();
          swift_getKeyPath();
          v25 = 1;

          static Published.subscript.setter();
          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter();
        }

        MEMORY[0x20F2E6F30](v15);
        if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v16 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      else
      {
      }

      if (v4 == v22)
      {
        return v3;
      }
    }

    if (v7 >= 1)
    {
      v8 = v2;
      v9 = 0;
      while (1)
      {
        if ((v25 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x20F2E7A20](v9, v25);
        }

        else
        {
          v10 = *(v25 + 8 * v9 + 32);
        }

        swift_beginAccess();
        v11 = *(v10 + 16);
        if (v11 < 2)
        {

          MEMORY[0x20F2E6F30](v12);
          if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          v8 = v26;
          goto LABEL_19;
        }

        if (v11 == 2)
        {
          if (!v3)
          {
            v3 = v10;
            goto LABEL_19;
          }
        }

        else if (!v24)
        {
          v24 = v10;
          goto LABEL_19;
        }

LABEL_19:
        if (v7 == ++v9)
        {
          goto LABEL_33;
        }
      }
    }

LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    v18 = a1;
    v1 = __CocoaSet.count.getter();
    a1 = v18;
  }
}

uint64_t IntervalWorkout.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v22 = *(v4 - 8);
  v5 = *(v22 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11WorkoutCore08IntervalD0C10CodingKeys33_16E702E5523E97149029D34F69A873FCLLOGMd, &_ss22KeyedEncodingContainerVy11WorkoutCore08IntervalD0C10CodingKeys33_16E702E5523E97149029D34F69A873FCLLOGMR);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v21 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type IntervalWorkout.CodingKeys and conformance IntervalWorkout.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  swift_getKeyPath();
  swift_getKeyPath();
  v23 = v2;
  static Published.subscript.getter();

  LOBYTE(v26) = 0;
  v14 = v8;
  v15 = v24;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v15)
  {
    (*(v9 + 8))(v12, v8);
  }

  else
  {
    v17 = v9;

    v18 = OBJC_IVAR____TtC11WorkoutCore15IntervalWorkout_uuid;
    v19 = v23;
    swift_beginAccess();
    v20 = v22;
    (*(v22 + 16))(v7, v19 + v18, v4);
    LOBYTE(v27) = 1;
    _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v20 + 8))(v7, v4);
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v25 = 2;
    type metadata accessor for WorkoutBlock();
    _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type WorkoutBlock and conformance WorkoutBlock, type metadata accessor for WorkoutBlock);
    KeyedEncodingContainer.encode<A>(_:forKey:)();

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v25 = 3;
    KeyedEncodingContainer.encode<A>(_:forKey:)();

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v25 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore0A5BlockCGMd, &_sSay11WorkoutCore0A5BlockCGMR);
    lazy protocol witness table accessor for type [WorkoutBlock] and conformance <A> [A](&lazy protocol witness table cache variable for type [WorkoutBlock] and conformance <A> [A], &lazy protocol witness table cache variable for type WorkoutBlock and conformance WorkoutBlock);
    KeyedEncodingContainer.encode<A>(_:forKey:)();

    return (*(v17 + 8))(v12, v14);
  }
}

uint64_t IntervalWorkout.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = v4[8];
  v6 = MEMORY[0x28223BE20](v3);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v18 - v9;
  outlined init with copy of Any?(a1, v19);
  if (!v20)
  {
    outlined destroy of Any?(v19);
    goto LABEL_7;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v16 = 0;
    return v16 & 1;
  }

  v11 = v18[1];
  v12 = OBJC_IVAR____TtC11WorkoutCore15IntervalWorkout_uuid;
  swift_beginAccess();
  v13 = v4[2];
  v13(v10, &v11[v12], v3);
  v14 = OBJC_IVAR____TtC11WorkoutCore15IntervalWorkout_uuid;
  swift_beginAccess();
  v13(v8, &v1[v14], v3);
  LOBYTE(v14) = static UUID.== infix(_:_:)();
  v15 = v4[1];
  v15(v8, v3);
  v15(v10, v3);
  if ((v14 & 1) == 0)
  {

    goto LABEL_7;
  }

  v16 = specialized IntervalWorkout.isEquivalent(to:)(v1);

  return v16 & 1;
}

uint64_t IntervalWorkout.isEquivalent(to:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, v2);

  return specialized IntervalWorkout.isEquivalent(to:)(v4, v1, v2, v3);
}

Swift::Bool __swiftcall IntervalWorkout.isLastKeyPath(currentKeyPath:)(WorkoutCore::IntervalWorkoutKeyPath currentKeyPath)
{
  v3 = *currentKeyPath.block;
  v4 = *(currentKeyPath.block + 8);
  v5 = *(currentKeyPath.block + 16);
  v6 = IntervalWorkout.blocks.getter();
  if (v6 >> 62)
  {
    v2 = v6;
    v7 = __CocoaSet.count.getter();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (__OFSUB__(v7, 1))
  {
    __break(1u);
LABEL_23:
    MEMORY[0x20F2E7A20](v3, v2);
    goto LABEL_9;
  }

  if (v3 != v7 - 1)
  {
LABEL_19:
    LOBYTE(v10) = 0;
    return v10;
  }

  v8 = IntervalWorkout.blocks.getter();
  v2 = v8;
  if ((v8 & 0xC000000000000001) != 0)
  {
    goto LABEL_23;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (v3 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v9 = *(v8 + 8 * v3 + 32);

LABEL_9:

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (__OFSUB__(v14, 1))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v4 != v14 - 1)
  {
    goto LABEL_19;
  }

  v10 = IntervalWorkout.blocks.getter();
  v1 = v10;
  if ((v10 & 0xC000000000000001) != 0)
  {
LABEL_27:
    MEMORY[0x20F2E7A20](v3, v1);
    goto LABEL_15;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_29;
  }

  if (v3 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_31:
    __break(1u);
    return v10;
  }

  v11 = *(v10 + 8 * v3 + 32);

LABEL_15:

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (!(v14 >> 62))
  {
    v12 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_17;
  }

LABEL_29:
  v12 = __CocoaSet.count.getter();
LABEL_17:

  if (__OFSUB__(v12, 1))
  {
    __break(1u);
    goto LABEL_31;
  }

  LOBYTE(v10) = v5 == v12 - 1;
  return v10;
}

WorkoutCore::IntervalWorkoutKeyPath_optional __swiftcall IntervalWorkout.nextKeyPath(currentKeyPath:)(WorkoutCore::IntervalWorkoutKeyPath currentKeyPath)
{
  v2 = v1;
  v3 = *currentKeyPath.block;
  if ((*currentKeyPath.block & 0x8000000000000000) != 0)
  {
    goto LABEL_19;
  }

  v4 = *(currentKeyPath.block + 8);
  if (v4 < 0)
  {
    goto LABEL_19;
  }

  v5 = *(currentKeyPath.block + 16);
  if (v5 < 0)
  {
    goto LABEL_19;
  }

  v6 = IntervalWorkout.blocks.getter();
  v7 = v6 >> 62 ? __CocoaSet.count.getter() : *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (v3 >= v7)
  {
    goto LABEL_19;
  }

  v8 = IntervalWorkout.blocks.getter();
  v9 = v8;
  if ((v8 & 0xC000000000000001) != 0)
  {
    MEMORY[0x20F2E7A20](v3, v8);
  }

  else
  {
    if (v3 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_34;
    }

    v10 = *(v8 + 8 * v3 + 32);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v4 >= v25)
  {
LABEL_19:
    if (one-time initialization token for intervalWorkout != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static WOLog.intervalWorkout);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_20AEA4000, v20, v21, "keyPath is already beyond current configuration", v22, 2u);
      MEMORY[0x20F2E9420](v22, -1, -1);
    }

LABEL_24:
    *v2 = 0;
    *(v2 + 8) = 0;
    *(v2 + 16) = 0;
    *(v2 + 24) = 1;
    goto LABEL_39;
  }

  v11 = IntervalWorkout.blocks.getter();
  v9 = v11;
  if ((v11 & 0xC000000000000001) != 0)
  {
LABEL_34:
    MEMORY[0x20F2E7A20](v3, v9);
    goto LABEL_14;
  }

  if (v3 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v12 = *(v11 + 8 * v3 + 32);

LABEL_14:

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v25 >> 62)
  {
    v13 = __CocoaSet.count.getter();
  }

  else
  {
    v13 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = v5 + 1;
  if (__OFADD__(v5, 1))
  {
    __break(1u);
    goto LABEL_37;
  }

  if (v14 >= v13)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v4 + 1 < v25)
    {

      *v2 = v3;
      *(v2 + 8) = v4 + 1;
      *(v2 + 16) = 0;
      *(v2 + 24) = 0;
      goto LABEL_39;
    }

    v23 = IntervalWorkout.blocks.getter();
    if (!(v23 >> 62))
    {
      v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_29;
    }

LABEL_38:
    v24 = __CocoaSet.count.getter();
LABEL_29:

    if ((v3 + 1) < v24)
    {
      *(v2 + 8) = 0;
      *(v2 + 16) = 0;
      *v2 = v3 + 1;
      *(v2 + 24) = 0;
      goto LABEL_39;
    }

    goto LABEL_24;
  }

  *v2 = v3;
  *(v2 + 8) = v4;
  *(v2 + 16) = v14;
  *(v2 + 24) = 0;
LABEL_39:
  result.value.step = v17;
  result.value.blockCount = v16;
  result.value.block = v15;
  result.is_nil = v18;
  return result;
}

uint64_t IntervalWorkout.stepForKeyPath(_:)(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 < 0)
  {
    goto LABEL_27;
  }

  if (a1[1] < 0)
  {
    goto LABEL_27;
  }

  v2 = a1[2];
  if (v2 < 0)
  {
    goto LABEL_27;
  }

  v3 = IntervalWorkout.blocks.getter();
  v4 = v3 >> 62 ? __CocoaSet.count.getter() : *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (v1 >= v4)
  {
    goto LABEL_27;
  }

  v5 = IntervalWorkout.blocks.getter();
  if ((v5 & 0xC000000000000001) != 0)
  {
    MEMORY[0x20F2E7A20](v1, v5);
  }

  else
  {
    if (v1 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v6 = *(v5 + 8 * v1 + 32);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v7 = v10 >> 62 ? __CocoaSet.count.getter() : *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (v2 >= v7)
  {
LABEL_27:
    while (1)
    {
LABEL_23:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((v10 & 0xC000000000000001) != 0)
  {
    v8 = MEMORY[0x20F2E7A20](v2);
    goto LABEL_16;
  }

  if (v2 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_22;
  }

  v8 = *(v10 + 8 * v2 + 32);

LABEL_16:

  return v8;
}

uint64_t IntervalWorkout.blockForKeyPath(_:)(uint64_t *a1)
{
  v1 = *a1;
  if ((*a1 & 0x8000000000000000) == 0 && (a1[1] & 0x8000000000000000) == 0 && (a1[2] & 0x8000000000000000) == 0)
  {
    v2 = IntervalWorkout.blocks.getter();
    v3 = v2 >> 62 ? __CocoaSet.count.getter() : *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v1 < v3)
    {
      v4 = IntervalWorkout.blocks.getter();
      if ((v4 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x20F2E7A20](v1, v4);
        goto LABEL_10;
      }

      if (v1 < *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v5 = *(v4 + 8 * v1 + 32);

LABEL_10:

        return v5;
      }

      __break(1u);
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t IntervalWorkout.removeRepeat(from:)(uint64_t a1)
{
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C4StepCGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C4StepCGGMR);
  v3 = *(v52 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v52);
  v51 = v41 - v5;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiGMd, &_s7Combine9PublishedVySiGMR);
  v6 = *(v50 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v50);
  v49 = v41 - v8;
  v48 = type metadata accessor for UUID();
  v9 = *(v48 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v48);
  v47 = v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v53[0] == 1)
  {
    goto LABEL_18;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v12 = specialized Collection<>.firstIndex(of:)(a1, v53[0]);
  v14 = v13;

  if (v14)
  {
    goto LABEL_18;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v15 = v53[0];
  if (v53[0] >> 62)
  {
    v36 = v53[0];
    v16 = __CocoaSet.count.getter();
    v15 = v36;
    v42 = v12;
    if (v16)
    {
      goto LABEL_5;
    }

LABEL_15:

    v35 = MEMORY[0x277D84F90];
LABEL_16:
    swift_getKeyPath();
    swift_getKeyPath();
    v37 = static Published.subscript.modify();
    v38 = v42;
    specialized Array.remove(at:)(v42, specialized _ArrayBuffer._consumeAndCreateNew());

    v37(v53, 0);

    swift_getKeyPath();
    swift_getKeyPath();
    v39 = static Published.subscript.modify();
    specialized Array.replaceSubrange<A>(_:with:)(v38, v38, v35, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));

    v39(v53, 0);
  }

  v16 = *((v53[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
  v42 = v12;
  if (!v16)
  {
    goto LABEL_15;
  }

LABEL_5:
  v17 = v15;
  v54 = MEMORY[0x277D84F90];
  specialized ContiguousArray.reserveCapacity(_:)();
  if ((v16 & 0x8000000000000000) == 0)
  {
    v41[1] = v1;
    v18 = 0;
    v19 = v17;
    v44 = (v6 + 32);
    v45 = v17 & 0xC000000000000001;
    v43 = (v3 + 32);
    v46 = v17;
    do
    {
      v20 = v16;
      if (v45)
      {
        MEMORY[0x20F2E7A20](v18, v19);
      }

      else
      {
        v21 = *(v19 + 8 * v18 + 32);
      }

      v22 = v47;
      UUID.init()();
      v23 = type metadata accessor for WorkoutBlock();
      v24 = *(v23 + 48);
      v25 = *(v23 + 52);
      v26 = swift_allocObject();
      v27 = OBJC_IVAR____TtC11WorkoutCore12WorkoutBlock__repetitions;
      v53[0] = 1;
      v28 = v49;
      Published.init(initialValue:)();
      (*v44)(v26 + v27, v28, v50);
      v29 = OBJC_IVAR____TtC11WorkoutCore12WorkoutBlock__steps;
      v53[0] = MEMORY[0x277D84F90];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore0A4StepCGMd, &_sSay11WorkoutCore0A4StepCGMR);
      v30 = v51;
      Published.init(initialValue:)();
      (*v43)(v26 + v29, v30, v52);
      (*(v9 + 32))(v26 + OBJC_IVAR____TtC11WorkoutCore12WorkoutBlock_uuid, v22, v48);
      swift_getKeyPath();
      swift_getKeyPath();

      v31 = static Published.subscript.modify();
      v33 = v32;
      MEMORY[0x20F2E6F30]();
      if (*((*v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      ++v18;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v31(v53, 0);

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v34 = *(v54 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v16 = v20;
      v19 = v46;
    }

    while (v20 != v18);

    v35 = v54;
    goto LABEL_16;
  }

  __break(1u);
LABEL_18:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

unint64_t specialized Collection<>.firstIndex(of:)(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
LABEL_25:
    v4 = __CocoaSet.count.getter();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
LABEL_3:
      v5 = 0;
      v6 = a2 & 0xC000000000000001;
      v14 = v4;
      while (1)
      {
        if (v6)
        {
          MEMORY[0x20F2E7A20](v5, a2);
        }

        else
        {
          if (v5 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_25;
          }

          v7 = *(a2 + 8 * v5 + 32);
        }

        if ((static UUID.== infix(_:_:)() & 1) == 0)
        {

          v12 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            goto LABEL_22;
          }

          goto LABEL_18;
        }

        v16[3] = type metadata accessor for WorkoutBlock();
        v16[4] = &protocol witness table for WorkoutBlock;
        v16[0] = a1;
        outlined init with copy of Equivalent(v16, v15);

        __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore10Equivalent_pMd, &_s11WorkoutCore10Equivalent_pMR);
        if (!swift_dynamicCast())
        {
          break;
        }

        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        v8 = v15[0];
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        if (v8 == v15[0])
        {
          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter();

          v9 = v15[0];
          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter();

          v10 = specialized _arrayForceCast<A, B>(_:)(v15[0]);

          v11 = specialized Array.isEquivalent(to:)(v10, v9);

          __swift_destroy_boxed_opaque_existential_1(v16);
          v6 = a2 & 0xC000000000000001;
          v4 = v14;
          if (v11)
          {
            return v5;
          }

LABEL_17:
          v12 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            goto LABEL_22;
          }

          goto LABEL_18;
        }

        __swift_destroy_boxed_opaque_existential_1(v16);
        v6 = a2 & 0xC000000000000001;
        v4 = v14;
        v12 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
LABEL_22:
          __break(1u);
          return v5;
        }

LABEL_18:
        ++v5;
        if (v12 == v4)
        {
          return 0;
        }
      }

      __swift_destroy_boxed_opaque_existential_1(v16);
      goto LABEL_17;
    }
  }

  return 0;
}

unint64_t specialized Collection<>.firstIndex(of:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    return 0;
  }

  v7 = 4 * v4;
  v8 = 15;
  while (String.subscript.getter() != a1 || v9 != a2)
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v10)
    {
      return v8;
    }

    v8 = String.index(after:)();
    if (v7 == v8 >> 14)
    {
      return 0;
    }
  }

  return v8;
}

uint64_t specialized Collection<>.firstIndex(of:)(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  if (a2 >> 62)
  {
    goto LABEL_30;
  }

  v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    return 0;
  }

LABEL_3:
  if ((v2 & 0xC000000000000001) != 0)
  {
    swift_beginAccess();
    swift_beginAccess();
    for (i = 0; ; ++i)
    {
      v6 = MEMORY[0x20F2E7A20](i, v2);
      swift_beginAccess();
      v7 = *(v6 + 16);
      v8 = *(a1 + 16);
      swift_beginAccess();
      v9 = *(v7 + 32);
      v10 = *(v7 + 40);
      swift_beginAccess();
      v11 = v9 == *(v8 + 32) && v10 == *(v8 + 40);
      if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        swift_beginAccess();
        v12 = *(v6 + 24);
        swift_unknownObjectRelease();
        if (v12 == *(a1 + 24))
        {
          return i;
        }

        v13 = i + 1;
        if (__OFADD__(i, 1))
        {
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          v4 = __CocoaSet.count.getter();
          if (!v4)
          {
            return 0;
          }

          goto LABEL_3;
        }
      }

      else
      {
        swift_unknownObjectRelease();
        v13 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_28;
        }
      }

      if (v13 == v4)
      {
        return 0;
      }
    }
  }

  v14 = v2 + 32;
  v15 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  swift_beginAccess();
  swift_beginAccess();
  i = 0;
  while (1)
  {
    if (v15 == i)
    {
      goto LABEL_29;
    }

    v16 = *(v14 + 8 * i);
    swift_beginAccess();
    v17 = *(v16 + 16);
    v18 = *(a1 + 16);
    swift_beginAccess();
    v2 = *(v17 + 32);
    v19 = *(v17 + 40);
    swift_beginAccess();
    v20 = v2 == *(v18 + 32) && v19 == *(v18 + 40);
    if (v20 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      swift_beginAccess();
      if (*(v16 + 24) == *(a1 + 24))
      {
        return i;
      }
    }

    if (v4 == ++i)
    {
      return 0;
    }
  }
}

uint64_t specialized Array.remove(at:)(unint64_t a1)
{
  return specialized Array.remove(at:)(a1, specialized _ArrayBuffer._consumeAndCreateNew());
}

{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 8 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 40), 8 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t specialized Array.remove(at:)(unint64_t a1, uint64_t (*a2)(uint64_t))
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v5 < 0 || (v5 & 0x4000000000000000) != 0)
  {
    result = a2(v5);
    v5 = result;
  }

  v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v7 - 1 - a1));
    *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) = v8;
    *v2 = v5;
    return v9;
  }

  return result;
}

uint64_t IntervalWorkout.removeBlock(_:)(uint64_t *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  v2 = static Published.subscript.modify();
  v4 = v3;
  v5 = specialized MutableCollection._halfStablePartition(isSuffixElement:)(v3, a1);

  v7 = *v4;
  if (*v4 >> 62)
  {
    if (v7 < 0)
    {
      v9 = *v4;
    }

    result = __CocoaSet.count.getter();
    v8 = result;
    if (result >= v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8 >= v5)
    {
LABEL_3:
      specialized Array.replaceSubrange<A>(_:with:)(v5, v8, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
      v2(v10, 0);
    }
  }

  __break(1u);
  return result;
}

uint64_t IntervalWorkout.removeStep(_:from:)(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  v4 = static Published.subscript.modify();
  v6 = v5;
  v7 = specialized MutableCollection._halfStablePartition(isSuffixElement:)(v5, a1);

  v9 = *v6;
  if (*v6 >> 62)
  {
    if (v9 < 0)
    {
      v11 = *v6;
    }

    result = __CocoaSet.count.getter();
    v10 = result;
    if (result >= v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10 >= v7)
    {
LABEL_3:
      specialized Array.replaceSubrange<A>(_:with:)(v7, v10, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
      v4(v12, 0);

      return IntervalWorkout.cleanupBlockIfNecessary(_:)(a2);
    }
  }

  __break(1u);
  return result;
}

uint64_t IntervalWorkout.cleanupBlockIfNecessary(_:)(uint64_t *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (!(v12[0] >> 62))
  {
    v2 = *((v12[0] & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v2)
    {
      return result;
    }

LABEL_3:
    swift_getKeyPath();
    swift_getKeyPath();

    v4 = static Published.subscript.modify();
    v6 = v5;
    v7 = specialized MutableCollection._halfStablePartition(isSuffixElement:)(v5, a1);

    v8 = *v6;
    if (*v6 >> 62)
    {
      if (v8 < 0)
      {
        v11 = *v6;
      }

      result = __CocoaSet.count.getter();
      v9 = result;
      if (result >= v7)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v9 >= v7)
      {
LABEL_5:
        specialized Array.replaceSubrange<A>(_:with:)(v7, v9, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
        v4(v12, 0);
      }
    }

    __break(1u);
    return result;
  }

  v10 = __CocoaSet.count.getter();

  if (!v10)
  {
    goto LABEL_3;
  }

  return result;
}

uint64_t IntervalWorkout.removeSteps(atOffsets:from:)(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = static Published.subscript.modify();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore0A4StepCGMd, &_sSay11WorkoutCore0A4StepCGMR);
  lazy protocol witness table accessor for type [WorkoutStep] and conformance [A](&lazy protocol witness table cache variable for type [WorkoutStep] and conformance [A]);
  lazy protocol witness table accessor for type [WorkoutStep] and conformance [A](&lazy protocol witness table cache variable for type [WorkoutStep] and conformance [A]);
  RangeReplaceableCollection<>.remove(atOffsets:)();
  v3(&v5, 0);

  return IntervalWorkout.cleanupBlockIfNecessary(_:)(a2);
}

Swift::Void __swiftcall IntervalWorkout.repeatSteps(_:repeatCount:)(Swift::OpaquePointer _, Swift::Int repeatCount)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  specialized static IntervalWorkout.regroupSteps(_:from:repeatCount:)(_._rawValue, v6, repeatCount);

  swift_getKeyPath();
  swift_getKeyPath();
  v5 = v2;
  static Published.subscript.setter();
}

uint64_t closure #1 in static IntervalWorkout.regroupSteps(_:from:repeatCount:)(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v22 = a3;
  v23 = v3;
  v4 = *a2;
  v5 = *a2 & 0xFFFFFFFFFFFFFF8;
  if (*a2 >> 62)
  {
LABEL_21:
    v6 = __CocoaSet.count.getter();
  }

  else
  {
    v6 = *((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  while (1)
  {
    if (v6 == v7)
    {

      v21 = 0;
      v20 = 323;
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    if ((v4 & 0xC000000000000001) != 0)
    {
      MEMORY[0x20F2E7A20](v7, v4);
    }

    else
    {
      if (v7 >= *(v5 + 16))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v9 = *(v4 + 8 * v7 + 32);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v26 == 1)
    {
      break;
    }

LABEL_5:
    if (__OFADD__(v7++, 1))
    {
      goto LABEL_20;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v24 = &v22;
  v11 = v26;
  v26 = v23;
  MEMORY[0x28223BE20](v10);
  v20 = &v26;
  v12 = v25;
  v13 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), &v19, v11);
  v25 = v12;

  if ((v13 & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = v22;
  v15 = *v22;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v14 = v15;
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v15 + 16) + 1, 1, v15);
    v15 = result;
    *v14 = result;
  }

  v18 = *(v15 + 16);
  v17 = *(v15 + 24);
  if (v18 >= v17 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v15);
    v15 = result;
    *v14 = result;
  }

  *(v15 + 16) = v18 + 1;
  *(v15 + 8 * v18 + 32) = v7;
  return result;
}

uint64_t specialized closure #2 in static IntervalWorkout.regroupSteps(_:from:repeatCount:)(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C4StepCGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C4StepCGGMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v46 - v9;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiGMd, &_s7Combine9PublishedVySiGMR);
  v11 = *(v52 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v52);
  v14 = &v46 - v13;
  v53 = type metadata accessor for UUID();
  v15 = *(v53 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v53);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v48 = a3;
  v49 = a1;
  v19 = *a1;
  v20 = *a1 >> 62;
  v54 = v6;
  if (v20)
  {
    goto LABEL_55;
  }

  if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

LABEL_56:
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  while (1)
  {

    a3 = MEMORY[0x20F2E7A20](0, a3);
LABEL_6:
    swift_endAccess();
    v47 = specialized Collection<>.firstIndex(of:)(a3, a1);
    v23 = v22;

    if (v23)
    {
      goto LABEL_56;
    }

    UUID.init()();
    v24 = type metadata accessor for WorkoutBlock();
    v25 = *(v24 + 48);
    v26 = *(v24 + 52);
    a3 = swift_allocObject();
    a1 = OBJC_IVAR____TtC11WorkoutCore12WorkoutBlock__repetitions;
    v55[0] = 1;
    Published.init(initialValue:)();
    (*(v11 + 32))(a3 + a1, v14, v52);
    v11 = OBJC_IVAR____TtC11WorkoutCore12WorkoutBlock__steps;
    v55[0] = MEMORY[0x277D84F90];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore0A4StepCGMd, &_sSay11WorkoutCore0A4StepCGMR);
    Published.init(initialValue:)();
    (*(v7 + 32))(a3 + v11, v10, v54);
    v27 = *(v15 + 32);
    v54 = a3;
    v27(a3 + OBJC_IVAR____TtC11WorkoutCore12WorkoutBlock_uuid, v18, v53);
    v28 = v49;
    swift_beginAccess();
    v7 = *v28;
    v10 = v7 >> 62 ? __CocoaSet.count.getter() : *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v10)
    {
      break;
    }

    v29 = 0;
    v15 = 0;
    v52 = v7 & 0xFFFFFFFFFFFFFF8;
    v53 = v7 & 0xC000000000000001;
    v50 = v10;
    v51 = v7;
    while (v53)
    {
      v7 = MEMORY[0x20F2E7A20](v29, v7);
      a3 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        goto LABEL_49;
      }

LABEL_17:
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v31 = v55[0];
      swift_getKeyPath();
      swift_getKeyPath();
      v32 = static Published.subscript.modify();
      specialized Array.append<A>(contentsOf:)(v31, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized Array._copyContents(initializing:));
      v32(v55, 0);

      swift_beginAccess();

      v10 = specialized MutableCollection._halfStablePartition(isSuffixElement:)(a2, v7);

      a1 = *a2;
      v18 = (*a2 >> 62);
      if (v18)
      {
        if (a1 < 0)
        {
          v39 = *a2;
        }

        else
        {
          v39 = *a2 & 0xFFFFFFFFFFFFFF8;
        }

        v11 = __CocoaSet.count.getter();
        v14 = v11 - v10;
        if (v11 < v10)
        {
LABEL_43:
          __break(1u);
          goto LABEL_44;
        }
      }

      else
      {
        v11 = *((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v14 = v11 - v10;
        if (v11 < v10)
        {
          goto LABEL_43;
        }
      }

      if (v10 < 0)
      {
        goto LABEL_51;
      }

      if (v18)
      {
        v33 = __CocoaSet.count.getter();
      }

      else
      {
        v33 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v33 < v11)
      {
        goto LABEL_52;
      }

      v34 = __OFSUB__(0, v14);
      v14 = -v14;
      if (v34)
      {
        goto LABEL_53;
      }

      if (v18)
      {
        v35 = __CocoaSet.count.getter();
      }

      else
      {
        v35 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v34 = __OFADD__(v35, v14);
      v14 += v35;
      if (v34)
      {
        goto LABEL_54;
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      *a2 = a1;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v18)
        {
          v37 = a1 & 0xFFFFFFFFFFFFFF8;
          if (v14 <= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_13;
          }

          goto LABEL_35;
        }
      }

      else if (!v18)
      {
        v37 = a1 & 0xFFFFFFFFFFFFFF8;
LABEL_35:
        v38 = *(v37 + 16);
        goto LABEL_12;
      }

      __CocoaSet.count.getter();
LABEL_12:
      a1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      *a2 = a1;
LABEL_13:
      v30 = v10;
      v10 = a2;
      specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v30, v11, 0);
      *a2 = a1;
      swift_endAccess();

      ++v29;
      v7 = v51;
      if (a3 == v50)
      {
        goto LABEL_44;
      }
    }

    if (v29 >= *(v52 + 16))
    {
      goto LABEL_50;
    }

    v7 = *(v7 + 8 * v29 + 32);

    a3 = v29 + 1;
    if (!__OFADD__(v29, 1))
    {
      goto LABEL_17;
    }

LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    if (!__CocoaSet.count.getter())
    {
      goto LABEL_56;
    }

LABEL_3:
    swift_beginAccess();
    a1 = *a2;
    v21 = v49;
    swift_beginAccess();
    a3 = *v21;
    if ((a3 & 0xC000000000000001) == 0)
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        a3 = *(a3 + 32);

        goto LABEL_6;
      }

      __break(1u);
LABEL_60:
      v40 = __CocoaSet.count.getter();
      goto LABEL_46;
    }
  }

LABEL_44:

  WorkoutBlock.repetitions.setter(v48);
  swift_beginAccess();
  if (*a2 >> 62)
  {
    goto LABEL_60;
  }

  v40 = *((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_46:
  v41 = v47;
  if (v40 < v47)
  {
    __break(1u);
  }

  else if ((v47 & 0x8000000000000000) == 0)
  {
    v42 = v54;

    specialized Array.replaceSubrange<A>(_:with:)(v41, v41, v42, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
    swift_endAccess();

    v43 = v49;
    swift_beginAccess();
    v44 = *v43;
    *v43 = MEMORY[0x277D84F90];
  }

  __break(1u);
  result = swift_endAccess();
  __break(1u);
  return result;
}

Swift::Int_optional __swiftcall IntervalWorkout.stepIndex(for:)(WorkoutCore::IntervalWorkoutKeyPath a1)
{
  v1 = *a1.block;
  v2 = *(a1.block + 8);
  v3 = *(a1.block + 16);
  if (IntervalWorkout.isValid.getter())
  {
    if (one-time initialization token for InitialState != -1)
    {
LABEL_20:
      swift_once();
    }

    v5 = 0;
    v6 = static IntervalWorkoutKeyPath.InitialState;
    v7 = qword_27C729E28;
    while (1)
    {
      v8 = v1 == v6 && v2 == *(&v6 + 1);
      v9 = v8 && v3 == v7;
      v10 = !v9;
      if (v9)
      {
        break;
      }

      if (__OFADD__(v5, 1))
      {
        __break(1u);
        goto LABEL_20;
      }

      v14 = v7;
      v13 = v6;
      v4.value.block = &v13;
      v4 = IntervalWorkout.nextKeyPath(currentKeyPath:)(v4.value);
      v6 = v15;
      v7 = v16;
      ++v5;
      if (v17 == 1)
      {
        v5 = 0;
        break;
      }
    }
  }

  else
  {
    v5 = 0;
    v10 = 1;
  }

  v11 = v5;
  v12 = v10;
  result.value = v11;
  result.is_nil = v12;
  return result;
}

uint64_t IntervalWorkout.totalStepCount.getter()
{
  if (!IntervalWorkout.isValid.getter())
  {
    return 0;
  }

  if (one-time initialization token for InitialState != -1)
  {
    swift_once();
  }

  v1 = static IntervalWorkoutKeyPath.InitialState;
  v2 = qword_27C729E28;
  v3 = 1;
  while (1)
  {
    v7 = v2;
    v6 = v1;
    v0.value.block = &v6;
    v0 = IntervalWorkout.nextKeyPath(currentKeyPath:)(v0.value);
    if (v10)
    {
      break;
    }

    v1 = v8;
    v2 = v9;
    if (__OFADD__(v3++, 1))
    {
      __break(1u);
      return 0;
    }
  }

  return v3;
}

id IntervalWorkout.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id IntervalWorkout.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *protocol witness for Decodable.init(from:) in conformance IntervalWorkout@<X0>(uint64_t *a1@<X0>, char **a2@<X8>)
{
  v6 = objc_allocWithZone(v2);
  result = IntervalWorkout.init(from:)(a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t protocol witness for Equivalent.isEquivalent(to:) in conformance IntervalWorkout(void *a1)
{
  v2 = *v1;
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_project_boxed_opaque_existential_1(a1, v3);

  return specialized IntervalWorkout.isEquivalent(to:)(v5, v2, v3, v4);
}

uint64_t protocol witness for Equivalent.equivalentHash(into:) in conformance IntervalWorkout(uint64_t a1)
{
  v3 = *v1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  String.hash(into:)();

  v4 = IntervalWorkout.blocks.getter();
  specialized Array<A>.hash(into:)(a1, v4);
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance IntervalWorkout@<X0>(uint64_t *a1@<X8>)
{
  swift_getObjectType();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

Swift::Int specialized MutableCollection<>.sort(by:)(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 8;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[24 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          if (v11 >= *v13)
          {
            break;
          }

          v14 = *(v13 + 2);
          *(v13 + 24) = *v13;
          *(v13 + 5) = *(v13 + 2);
          *v13 = v11;
          *(v13 + 8) = v14;
          v13 -= 24;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 24;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v5);
  *a1 = v2;
  return result;
}

{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v5);
  *a1 = v2;
  return result;
}

{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[16 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          if (v11 >= *v13)
          {
            break;
          }

          v14 = *(v13 + 3);
          *(v13 + 1) = *v13;
          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 16;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 16;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v83 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v83;
    if (!*v83)
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

    v75 = (v8 + 16);
    v76 = *(v8 + 16);
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = (v8 + 16 * v76);
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * *v77), (*a3 + 8 * *v79), (*a3 + 8 * v80), v5);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        result = memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v82 = a4;
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
        v15 = (v10 < v11) ^ (v14 >= v13);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
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
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + 8 * v17);
            *(v20 + 8 * v17) = *(v20 + 8 * v16);
            *(v20 + 8 * v16) = v18;
          }
        }

        while (++v17 < v16--);
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
    v29 = *(v8 + 24);
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v30;
    v31 = v8 + 32;
    v32 = (v8 + 32 + 16 * v5);
    *v32 = v9;
    v32[1] = v7;
    v84 = *v83;
    if (!*v83)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = *(v8 + 32);
          v34 = *(v8 + 40);
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = (v8 + 16 * v30);
          v51 = *v49;
          v50 = v49[1];
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = (v31 + 16 * v5);
          v57 = *v55;
          v56 = v55[1];
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = (v8 + 16 * v30);
        v61 = *v59;
        v60 = v59[1];
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = (v31 + 16 * v5);
        v64 = *v62;
        v63 = v62[1];
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
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

        v70 = (v31 + 16 * (v5 - 1));
        v71 = *v70;
        v72 = (v31 + 16 * v5);
        v73 = v72[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * *v70), (*a3 + 8 * *v72), (*a3 + 8 * v73), v84);
        if (v4)
        {
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v70 = v71;
        v70[1] = v73;
        v74 = *(v8 + 16);
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        result = memmove((v31 + 16 * v5), v72 + 2, 16 * (v74 - 1 - v5));
        *(v8 + 16) = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = v31 + 16 * v30;
      v38 = *(v37 - 64);
      v39 = *(v37 - 56);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 48);
      v41 = *(v37 - 40);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = (v8 + 16 * v30);
      v46 = *v44;
      v45 = v44[1];
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = (v31 + 16 * v5);
        v68 = *v66;
        v67 = v66[1];
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + 8 * v7 - 8;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 8 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (v24 >= *v26)
    {
LABEL_29:
      ++v7;
      v22 += 8;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    *v26 = v24;
    v26[1] = v27;
    --v26;
    if (__CFADD__(v25++, 1))
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
  v92 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_88:
    v93 = *v92;
    if (!*v92)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
      v7 = result;
    }

    v84 = (v7 + 16);
    v85 = *(v7 + 16);
    if (v85 >= 2)
    {
      while (*a3)
      {
        v86 = (v7 + 16 * v85);
        v87 = *v86;
        v88 = &v84[2 * v85];
        v89 = v88[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 24 * *v86), (*a3 + 24 * *v88), *a3 + 24 * v89, v93);
        if (v4)
        {
        }

        if (v89 < v87)
        {
          goto LABEL_114;
        }

        if (v85 - 2 >= *v84)
        {
          goto LABEL_115;
        }

        *v86 = v87;
        v86[1] = v89;
        v90 = *v84 - v85;
        if (*v84 < v85)
        {
          goto LABEL_116;
        }

        v85 = *v84 - 1;
        result = memmove(v88, v88 + 2, 16 * v90);
        *v84 = v85;
        if (v85 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  v91 = a4;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 24 * v6);
      v10 = 24 * v8;
      v11 = (*a3 + 24 * v8);
      v13 = *v11;
      v12 = v11 + 6;
      v14 = v13;
      v15 = v8 + 2;
      v16 = v9;
      while (v5 != v15)
      {
        v17 = *v12;
        v12 += 3;
        v18 = v17 >= v16;
        ++v15;
        v16 = v17;
        if ((((v9 < v14) ^ v18) & 1) == 0)
        {
          v6 = v15 - 1;
          if (v9 >= v14)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v9 >= v14)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v19 = 0;
        v20 = 24 * v6;
        v21 = v8;
        do
        {
          if (v21 != v6 + v19 - 1)
          {
            v27 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = (v27 + v10);
            v23 = v27 + v20;
            v24 = *(v22 + 2);
            v25 = *v22;
            v26 = *(v23 - 8);
            *v22 = *(v23 - 24);
            *(v22 + 2) = v26;
            *(v23 - 24) = v25;
            *(v23 - 8) = v24;
          }

          ++v21;
          --v19;
          v20 -= 24;
          v10 += 24;
        }

        while (v21 < v6 + v19);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 16) + 1, 1, v7);
      v7 = result;
    }

    v37 = *(v7 + 16);
    v36 = *(v7 + 24);
    v38 = v37 + 1;
    if (v37 >= v36 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v37 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 16) = v38;
    v39 = v7 + 32;
    v40 = (v7 + 32 + 16 * v37);
    *v40 = v8;
    v40[1] = v6;
    v93 = *v92;
    if (!*v92)
    {
      goto LABEL_127;
    }

    if (v37)
    {
      while (1)
      {
        v41 = v38 - 1;
        if (v38 >= 4)
        {
          break;
        }

        if (v38 == 3)
        {
          v42 = *(v7 + 32);
          v43 = *(v7 + 40);
          v52 = __OFSUB__(v43, v42);
          v44 = v43 - v42;
          v45 = v52;
LABEL_57:
          if (v45)
          {
            goto LABEL_104;
          }

          v58 = (v7 + 16 * v38);
          v60 = *v58;
          v59 = v58[1];
          v61 = __OFSUB__(v59, v60);
          v62 = v59 - v60;
          v63 = v61;
          if (v61)
          {
            goto LABEL_106;
          }

          v64 = (v39 + 16 * v41);
          v66 = *v64;
          v65 = v64[1];
          v52 = __OFSUB__(v65, v66);
          v67 = v65 - v66;
          if (v52)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v62, v67))
          {
            goto LABEL_111;
          }

          if (v62 + v67 >= v44)
          {
            if (v44 < v67)
            {
              v41 = v38 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v38 < 2)
        {
          goto LABEL_112;
        }

        v68 = (v7 + 16 * v38);
        v70 = *v68;
        v69 = v68[1];
        v52 = __OFSUB__(v69, v70);
        v62 = v69 - v70;
        v63 = v52;
LABEL_72:
        if (v63)
        {
          goto LABEL_108;
        }

        v71 = (v39 + 16 * v41);
        v73 = *v71;
        v72 = v71[1];
        v52 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v52)
        {
          goto LABEL_110;
        }

        if (v74 < v62)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v41 - 1 >= v38)
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

        v79 = (v39 + 16 * (v41 - 1));
        v80 = *v79;
        v81 = (v39 + 16 * v41);
        v82 = v81[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 24 * *v79), (*a3 + 24 * *v81), *a3 + 24 * v82, v93);
        if (v4)
        {
        }

        if (v82 < v80)
        {
          goto LABEL_99;
        }

        if (v41 > *(v7 + 16))
        {
          goto LABEL_100;
        }

        *v79 = v80;
        v79[1] = v82;
        v83 = *(v7 + 16);
        if (v41 >= v83)
        {
          goto LABEL_101;
        }

        v38 = v83 - 1;
        result = memmove((v39 + 16 * v41), v81 + 2, 16 * (v83 - 1 - v41));
        *(v7 + 16) = v83 - 1;
        if (v83 <= 2)
        {
          goto LABEL_3;
        }
      }

      v46 = v39 + 16 * v38;
      v47 = *(v46 - 64);
      v48 = *(v46 - 56);
      v52 = __OFSUB__(v48, v47);
      v49 = v48 - v47;
      if (v52)
      {
        goto LABEL_102;
      }

      v51 = *(v46 - 48);
      v50 = *(v46 - 40);
      v52 = __OFSUB__(v50, v51);
      v44 = v50 - v51;
      v45 = v52;
      if (v52)
      {
        goto LABEL_103;
      }

      v53 = (v7 + 16 * v38);
      v55 = *v53;
      v54 = v53[1];
      v52 = __OFSUB__(v54, v55);
      v56 = v54 - v55;
      if (v52)
      {
        goto LABEL_105;
      }

      v52 = __OFADD__(v44, v56);
      v57 = v44 + v56;
      if (v52)
      {
        goto LABEL_107;
      }

      if (v57 >= v49)
      {
        v75 = (v39 + 16 * v41);
        v77 = *v75;
        v76 = v75[1];
        v52 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v52)
        {
          goto LABEL_113;
        }

        if (v44 < v78)
        {
          v41 = v38 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    a4 = v91;
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v28 = *a3;
  v29 = *a3 + 24 * v6 - 24;
  v30 = v8 - v6;
LABEL_30:
  v31 = *(v28 + 24 * v6);
  v32 = v30;
  v33 = v29;
  while (1)
  {
    if (v31 >= *v33)
    {
LABEL_29:
      ++v6;
      v29 += 24;
      --v30;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v28)
    {
      break;
    }

    v34 = *(v33 + 32);
    *(v33 + 24) = *v33;
    *(v33 + 40) = *(v33 + 16);
    *v33 = v31;
    *(v33 + 8) = v34;
    v33 -= 24;
    if (__CFADD__(v32++, 1))
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
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = _stringCompareWithSmolCheck(_:_:expecting:)();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
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
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = specialized Array.remove(at:)(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = (v9 + a4);
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

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
  return result;
}

{
  v136 = result;
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x277D84F90];
    while (1)
    {
      v8 = v6;
      v9 = v6 + 1;
      if (v6 + 1 < v5)
      {
        v149 = v7;
        v10 = *(*a3 + 8 * v9);
        v144 = 8 * v6;
        v11 = (*a3 + 8 * v6);
        v13 = *v11;
        v12 = v11 + 2;
        v14 = OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence;
        swift_beginAccess();
        v15 = *(v10 + v14);
        v4 = &OBJC_IVAR____TtC11WorkoutCore10Occurrence_count;
        v16 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_count;
        swift_beginAccess();
        v155 = *(v15 + v16);
        v17 = OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence;
        swift_beginAccess();
        v18 = *(v13 + v17);
        v19 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_count;
        result = swift_beginAccess();
        __src = *(v18 + v19);
        v146 = v8;
        v20 = v8 + 2;
        while (v5 != v20)
        {
          v21 = *(v12 - 1);
          v22 = *v12;
          v23 = OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence;
          swift_beginAccess();
          v24 = *(v22 + v23);
          v25 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_count;
          swift_beginAccess();
          LODWORD(v24) = *(v24 + v25);
          v26 = OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence;
          swift_beginAccess();
          v27 = *(v21 + v26);
          v4 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_count;
          result = swift_beginAccess();
          ++v20;
          ++v12;
          if (__src < v155 == *(v4 + v27) >= v24)
          {
            v5 = v20 - 1;
            break;
          }
        }

        v8 = v146;
        v7 = v149;
        v28 = v144;
        if (__src < v155)
        {
          if (v5 < v146)
          {
            goto LABEL_154;
          }

          if (v146 < v5)
          {
            v29 = 8 * v5 - 8;
            v30 = v5;
            v31 = v146;
            do
            {
              if (v31 != --v30)
              {
                v32 = *a3;
                if (!*a3)
                {
                  goto LABEL_160;
                }

                v33 = *(v32 + v28);
                *(v32 + v28) = *(v32 + v29);
                *(v32 + v29) = v33;
              }

              ++v31;
              v29 -= 8;
              v28 += 8;
            }

            while (v31 < v30);
          }
        }

        v9 = v5;
      }

      v34 = a3[1];
      if (v9 < v34)
      {
        if (__OFSUB__(v9, v8))
        {
          goto LABEL_153;
        }

        if (v9 - v8 < a4)
        {
          v35 = (v8 + a4);
          if (__OFADD__(v8, a4))
          {
            goto LABEL_155;
          }

          if (v35 >= v34)
          {
            v35 = a3[1];
          }

          if (v35 < v8)
          {
            goto LABEL_156;
          }

          if (v9 != v35)
          {
            v147 = v8;
            v150 = v7;
            v36 = *a3;
            v37 = *a3 + 8 * v9 - 8;
            v38 = v8 - v9;
            __srca = v35;
            do
            {
              v139 = v9;
              v39 = *(v36 + 8 * v9);
              v40 = v38;
              v156 = v37;
              v41 = v37;
              do
              {
                v42 = *v41;
                v4 = &OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence;
                v43 = OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence;
                swift_beginAccess();
                v44 = *(v39 + v43);
                v7 = &OBJC_IVAR____TtC11WorkoutCore10Occurrence_count;
                v45 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_count;
                swift_beginAccess();
                LODWORD(v44) = *(v44 + v45);
                v46 = OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence;
                swift_beginAccess();
                v47 = *(v42 + v46);
                v48 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_count;
                swift_beginAccess();
                if (*(v47 + v48) >= v44)
                {
                  break;
                }

                if (!v36)
                {
                  goto LABEL_157;
                }

                v49 = *v41;
                v39 = v41[1];
                *v41 = v39;
                v41[1] = v49;
                --v41;
              }

              while (!__CFADD__(v40++, 1));
              v9 = v139 + 1;
              v37 = v156 + 8;
              --v38;
            }

            while ((v139 + 1) != __srca);
            v9 = __srca;
            v8 = v147;
            v7 = v150;
          }
        }
      }

      if (v9 < v8)
      {
        goto LABEL_150;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      v140 = v9;
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2) + 1, 1, v7);
        v7 = result;
      }

      v52 = *(v7 + 2);
      v51 = *(v7 + 3);
      v53 = v52 + 1;
      if (v52 >= v51 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v51 > 1), v52 + 1, 1, v7);
        v7 = result;
      }

      *(v7 + 2) = v53;
      v54 = &v7[16 * v52];
      *(v54 + 4) = v8;
      *(v54 + 5) = v140;
      v55 = *v136;
      if (!*v136)
      {
        goto LABEL_161;
      }

      if (v52)
      {
        break;
      }

LABEL_3:
      v6 = v140;
      v5 = a3[1];
      if (v140 >= v5)
      {
        goto LABEL_125;
      }
    }

    __srcb = *v136;
    while (1)
    {
      v56 = v53 - 1;
      if (v53 >= 4)
      {
        break;
      }

      if (v53 == 3)
      {
        v57 = *(v7 + 4);
        v58 = *(v7 + 5);
        v67 = __OFSUB__(v58, v57);
        v59 = v58 - v57;
        v60 = v67;
LABEL_56:
        if (v60)
        {
          goto LABEL_141;
        }

        v73 = &v7[16 * v53];
        v75 = *v73;
        v74 = *(v73 + 1);
        v76 = __OFSUB__(v74, v75);
        v77 = v74 - v75;
        v78 = v76;
        if (v76)
        {
          goto LABEL_144;
        }

        v79 = &v7[16 * v56 + 32];
        v81 = *v79;
        v80 = *(v79 + 1);
        v67 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v67)
        {
          goto LABEL_147;
        }

        if (__OFADD__(v77, v82))
        {
          goto LABEL_148;
        }

        if (v77 + v82 >= v59)
        {
          if (v59 < v82)
          {
            v56 = v53 - 2;
          }

          goto LABEL_77;
        }

        goto LABEL_70;
      }

      v83 = &v7[16 * v53];
      v85 = *v83;
      v84 = *(v83 + 1);
      v67 = __OFSUB__(v84, v85);
      v77 = v84 - v85;
      v78 = v67;
LABEL_70:
      if (v78)
      {
        goto LABEL_143;
      }

      v86 = &v7[16 * v56];
      v88 = *(v86 + 4);
      v87 = *(v86 + 5);
      v67 = __OFSUB__(v87, v88);
      v89 = v87 - v88;
      if (v67)
      {
        goto LABEL_146;
      }

      if (v89 < v77)
      {
        goto LABEL_3;
      }

LABEL_77:
      if (v56 - 1 >= v53)
      {
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
LABEL_145:
        __break(1u);
LABEL_146:
        __break(1u);
LABEL_147:
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
LABEL_153:
        __break(1u);
LABEL_154:
        __break(1u);
LABEL_155:
        __break(1u);
LABEL_156:
        __break(1u);
LABEL_157:
        __break(1u);
        goto LABEL_158;
      }

      v94 = *a3;
      if (!*a3)
      {
        __break(1u);
LABEL_160:
        __break(1u);
LABEL_161:
        __break(1u);
LABEL_162:
        __break(1u);
LABEL_163:
        __break(1u);
        return result;
      }

      v148 = v56;
      v151 = v7;
      v142 = v56 - 1;
      v95 = *&v7[16 * v56 + 16];
      v143 = *&v7[16 * v56 + 40];
      v145 = v95;
      v96 = 8 * v95;
      v97 = (v94 + 8 * v95);
      v98 = 8 * *&v7[16 * v56 + 32];
      v99 = (v94 + v98);
      v100 = (v94 + 8 * v143);
      v101 = v98 - 8 * v95;
      v102 = 8 * v143 - v98;
      if (v101 >= v102)
      {
        v115 = (v94 + v98);
        if (v99 != v55 || v100 <= v55)
        {
          memmove(v55, v99, 8 * v143 - v98);
        }

        v157 = &v55[v102];
        if (v102 < 1 || v98 <= v96)
        {
          v7 = v55;
          v128 = v115;
        }

        else
        {
          v138 = v97;
          v97 = v115;
          do
          {
            v116 = v97 - 8;
            v100 -= 8;
            v117 = v157;
            while (1)
            {
              v118 = v100 + 8;
              v119 = *(v117 - 1);
              v117 -= 8;
              v120 = v116;
              v121 = *v116;
              v122 = OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence;
              swift_beginAccess();
              v123 = *(v119 + v122);
              v124 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_count;
              swift_beginAccess();
              LODWORD(v123) = *(v123 + v124);
              v125 = OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence;
              swift_beginAccess();
              v126 = *(v121 + v125);
              v127 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_count;
              swift_beginAccess();
              if (*(v126 + v127) < v123)
              {
                break;
              }

              if (v118 != v157)
              {
                *v100 = *v117;
              }

              v100 -= 8;
              v157 = v117;
              v116 = v120;
              if (v117 <= __srcb)
              {
                v157 = v117;
                v7 = __srcb;
                goto LABEL_114;
              }
            }

            v7 = __srcb;
            v128 = v120;
            if (v118 != v97)
            {
              *v100 = *v120;
            }

            if (v157 <= __srcb)
            {
              break;
            }

            v97 = v120;
          }

          while (v138 < v120);
        }
      }

      else
      {
        v103 = (v94 + v98);
        if (v97 != v55 || v99 <= v55)
        {
          memmove(v55, (v94 + 8 * v95), v98 - 8 * v95);
        }

        v157 = &v55[v101];
        if (v101 >= 1 && 8 * v143 > v98)
        {
          v7 = v55;
          v104 = v103;
          while (1)
          {
            v105 = *v104;
            v106 = *v7;
            v107 = OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence;
            swift_beginAccess();
            v108 = *(v105 + v107);
            v109 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_count;
            swift_beginAccess();
            LODWORD(v108) = *(v108 + v109);
            v110 = OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence;
            swift_beginAccess();
            v111 = *(v106 + v110);
            v112 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_count;
            swift_beginAccess();
            if (*(v111 + v112) >= v108)
            {
              break;
            }

            v113 = v104;
            v114 = v97 == v104;
            v104 += 8;
            if (!v114)
            {
              goto LABEL_91;
            }

LABEL_92:
            v97 += 8;
            if (v7 >= v157 || v104 >= v100)
            {
              goto LABEL_114;
            }
          }

          v113 = v7;
          v114 = v97 == v7;
          v7 += 8;
          if (v114)
          {
            goto LABEL_92;
          }

LABEL_91:
          *v97 = *v113;
          goto LABEL_92;
        }

        v7 = v55;
LABEL_114:
        v128 = v97;
      }

      if (v128 != v7 || v128 >= &v7[(v157 - v7 + (v157 - v7 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
      {
        memmove(v128, v7, 8 * ((v157 - v7) / 8));
      }

      v4 = v143;
      if (v143 < v145)
      {
        goto LABEL_137;
      }

      v129 = v151;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v129 = specialized _ArrayBuffer._consumeAndCreateNew()(v151);
      }

      if (v148 > *(v129 + 2))
      {
        goto LABEL_138;
      }

      v130 = &v129[16 * v142];
      *(v130 + 4) = v145;
      *(v130 + 5) = v143;
      result = specialized Array.remove(at:)(v148);
      v55 = __srcb;
      v7 = v129;
      v53 = *(v129 + 2);
      if (v53 <= 1)
      {
        goto LABEL_3;
      }
    }

    v61 = &v7[16 * v53 + 32];
    v62 = *(v61 - 64);
    v63 = *(v61 - 56);
    v67 = __OFSUB__(v63, v62);
    v64 = v63 - v62;
    if (v67)
    {
      goto LABEL_139;
    }

    v66 = *(v61 - 48);
    v65 = *(v61 - 40);
    v67 = __OFSUB__(v65, v66);
    v59 = v65 - v66;
    v60 = v67;
    if (v67)
    {
      goto LABEL_140;
    }

    v68 = &v7[16 * v53];
    v70 = *v68;
    v69 = *(v68 + 1);
    v67 = __OFSUB__(v69, v70);
    v71 = v69 - v70;
    if (v67)
    {
      goto LABEL_142;
    }

    v67 = __OFADD__(v59, v71);
    v72 = v59 + v71;
    if (v67)
    {
      goto LABEL_145;
    }

    if (v72 >= v64)
    {
      v90 = &v7[16 * v56 + 32];
      v92 = *v90;
      v91 = *(v90 + 1);
      v67 = __OFSUB__(v91, v92);
      v93 = v91 - v92;
      if (v67)
      {
        goto LABEL_149;
      }

      if (v59 < v93)
      {
        v56 = v53 - 2;
      }

      goto LABEL_77;
    }

    goto LABEL_56;
  }

  v7 = MEMORY[0x277D84F90];
LABEL_125:
  v4 = *v136;
  if (!*v136)
  {
    goto LABEL_163;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_158:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
    v7 = result;
  }

  v131 = *(v7 + 2);
  if (v131 >= 2)
  {
    while (*a3)
    {
      v132 = *&v7[16 * v131];
      v133 = *&v7[16 * v131 + 24];
      specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * v132), (*a3 + 8 * *&v7[16 * v131 + 16]), (*a3 + 8 * v133), v4);
      if (v137)
      {
      }

      if (v133 < v132)
      {
        goto LABEL_151;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
      }

      if (v131 - 2 >= *(v7 + 2))
      {
        goto LABEL_152;
      }

      v134 = &v7[16 * v131];
      *v134 = v132;
      *(v134 + 1) = v133;
      result = specialized Array.remove(at:)(v131 - 1);
      v131 = *(v7 + 2);
      if (v131 <= 1)
      {
      }
    }

    goto LABEL_162;
  }
}

{
  v126 = result;
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x277D84F90];
    while (1)
    {
      v8 = v6;
      v9 = v6 + 1;
      if (v6 + 1 < v5)
      {
        v10 = *a3;
        v11 = *(*a3 + 8 * v9);
        v12 = *(*a3 + 8 * v6);
        swift_beginAccess();
        v13 = *(v11 + 16);
        swift_beginAccess();
        v14 = *(v13 + 16);
        v15 = *(v13 + 24);
        swift_beginAccess();
        v16 = *(v12 + 16);
        result = swift_beginAccess();
        v17 = v14 == *(v16 + 16) && v15 == *(v16 + 24);
        if (v17)
        {
          v4 = 0;
        }

        else
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          v4 = result;
        }

        v9 = v8 + 2;
        if (v8 + 2 < v5)
        {
          v133 = v8;
          v18 = (v10 + 8 * v8 + 16);
          do
          {
            v19 = v9;
            v21 = *(v18 - 1);
            v20 = *v18;
            swift_beginAccess();
            v22 = *(v20 + 16);
            swift_beginAccess();
            v23 = *(v22 + 16);
            v24 = *(v22 + 24);
            swift_beginAccess();
            v25 = *(v21 + 16);
            result = swift_beginAccess();
            if (v23 == *(v25 + 16) && v24 == *(v25 + 24))
            {
              v9 = v19;
              if (v4)
              {
                v8 = v133;
                goto LABEL_25;
              }
            }

            else
            {
              result = _stringCompareWithSmolCheck(_:_:expecting:)();
              v9 = v19;
              if ((v4 ^ result))
              {
                goto LABEL_23;
              }
            }

            ++v9;
            ++v18;
          }

          while (v5 != v9);
          v9 = v5;
LABEL_23:
          v8 = v133;
        }

        if (v4)
        {
LABEL_25:
          if (v9 < v8)
          {
            goto LABEL_180;
          }

          if (v8 < v9)
          {
            v27 = 8 * v9 - 8;
            v28 = 8 * v8;
            v29 = v9;
            v30 = v8;
            do
            {
              if (v30 != --v29)
              {
                v32 = *a3;
                if (!*a3)
                {
                  goto LABEL_186;
                }

                v31 = *(v32 + v28);
                *(v32 + v28) = *(v32 + v27);
                *(v32 + v27) = v31;
              }

              ++v30;
              v27 -= 8;
              v28 += 8;
            }

            while (v30 < v29);
          }
        }
      }

      v33 = a3[1];
      if (v9 < v33)
      {
        if (__OFSUB__(v9, v8))
        {
          goto LABEL_179;
        }

        if (v9 - v8 < a4)
        {
          v34 = (v8 + a4);
          if (__OFADD__(v8, a4))
          {
            goto LABEL_181;
          }

          if (v34 >= v33)
          {
            v34 = a3[1];
          }

          if (v34 < v8)
          {
            goto LABEL_182;
          }

          if (v9 != v34)
          {
            v134 = v8;
            v136 = v7;
            v35 = *a3;
            v36 = *a3 + 8 * v9 - 8;
            v37 = v8 - v9;
            __src = v34;
            do
            {
              v38 = v9;
              v39 = *(v35 + 8 * v9);
              v40 = v37;
              v41 = v36;
              do
              {
                v42 = *v41;
                swift_beginAccess();
                v43 = *(v39 + 16);
                swift_beginAccess();
                v44 = *(v43 + 16);
                v4 = *(v43 + 24);
                swift_beginAccess();
                v7 = *(v42 + 16);
                swift_beginAccess();
                v45 = v44 == *(v7 + 2) && v4 == *(v7 + 3);
                if (v45 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                {
                  break;
                }

                if (!v35)
                {
                  goto LABEL_183;
                }

                v46 = *v41;
                v39 = v41[1];
                *v41 = v39;
                v41[1] = v46;
                --v41;
              }

              while (!__CFADD__(v40++, 1));
              v9 = v38 + 1;
              v36 += 8;
              --v37;
            }

            while ((v38 + 1) != __src);
            v9 = __src;
            v8 = v134;
            v7 = v136;
          }
        }
      }

      if (v9 < v8)
      {
        goto LABEL_176;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      v128 = v9;
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2) + 1, 1, v7);
        v7 = result;
      }

      v49 = *(v7 + 2);
      v48 = *(v7 + 3);
      v50 = v49 + 1;
      if (v49 >= v48 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v48 > 1), v49 + 1, 1, v7);
        v7 = result;
      }

      *(v7 + 2) = v50;
      v51 = &v7[16 * v49];
      *(v51 + 4) = v8;
      *(v51 + 5) = v128;
      v52 = *v126;
      if (!*v126)
      {
        goto LABEL_187;
      }

      if (v49)
      {
        break;
      }

LABEL_3:
      v6 = v128;
      v5 = a3[1];
      if (v128 >= v5)
      {
        goto LABEL_151;
      }
    }

    __srca = *v126;
    while (1)
    {
      v53 = v50 - 1;
      if (v50 >= 4)
      {
        break;
      }

      if (v50 == 3)
      {
        v54 = *(v7 + 4);
        v55 = *(v7 + 5);
        v64 = __OFSUB__(v55, v54);
        v56 = v55 - v54;
        v57 = v64;
LABEL_75:
        if (v57)
        {
          goto LABEL_167;
        }

        v70 = &v7[16 * v50];
        v72 = *v70;
        v71 = *(v70 + 1);
        v73 = __OFSUB__(v71, v72);
        v74 = v71 - v72;
        v75 = v73;
        if (v73)
        {
          goto LABEL_170;
        }

        v76 = &v7[16 * v53 + 32];
        v78 = *v76;
        v77 = *(v76 + 1);
        v64 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v64)
        {
          goto LABEL_173;
        }

        if (__OFADD__(v74, v79))
        {
          goto LABEL_174;
        }

        if (v74 + v79 >= v56)
        {
          if (v56 < v79)
          {
            v53 = v50 - 2;
          }

          goto LABEL_96;
        }

        goto LABEL_89;
      }

      v80 = &v7[16 * v50];
      v82 = *v80;
      v81 = *(v80 + 1);
      v64 = __OFSUB__(v81, v82);
      v74 = v81 - v82;
      v75 = v64;
LABEL_89:
      if (v75)
      {
        goto LABEL_169;
      }

      v83 = &v7[16 * v53];
      v85 = *(v83 + 4);
      v84 = *(v83 + 5);
      v64 = __OFSUB__(v84, v85);
      v86 = v84 - v85;
      if (v64)
      {
        goto LABEL_172;
      }

      if (v86 < v74)
      {
        goto LABEL_3;
      }

LABEL_96:
      if (v53 - 1 >= v50)
      {
        __break(1u);
LABEL_163:
        __break(1u);
LABEL_164:
        __break(1u);
LABEL_165:
        __break(1u);
LABEL_166:
        __break(1u);
LABEL_167:
        __break(1u);
LABEL_168:
        __break(1u);
LABEL_169:
        __break(1u);
LABEL_170:
        __break(1u);
LABEL_171:
        __break(1u);
LABEL_172:
        __break(1u);
LABEL_173:
        __break(1u);
LABEL_174:
        __break(1u);
LABEL_175:
        __break(1u);
LABEL_176:
        __break(1u);
LABEL_177:
        __break(1u);
LABEL_178:
        __break(1u);
LABEL_179:
        __break(1u);
LABEL_180:
        __break(1u);
LABEL_181:
        __break(1u);
LABEL_182:
        __break(1u);
LABEL_183:
        __break(1u);
        goto LABEL_184;
      }

      v91 = *a3;
      if (!*a3)
      {
        __break(1u);
LABEL_186:
        __break(1u);
LABEL_187:
        __break(1u);
LABEL_188:
        __break(1u);
LABEL_189:
        __break(1u);
        return result;
      }

      v130 = v53 - 1;
      v131 = v53;
      v92 = *&v7[16 * v53 + 32];
      v93 = *&v7[16 * v53 + 40];
      v135 = *&v7[16 * v53 + 16];
      v137 = v7;
      v7 = (8 * v135);
      v94 = (v91 + 8 * v135);
      v95 = 8 * v92;
      v96 = (v91 + 8 * v92);
      v132 = v93;
      v97 = 8 * v93;
      v98 = (v91 + 8 * v93);
      v99 = 8 * v92 - 8 * v135;
      v100 = 8 * v93 - 8 * v92;
      if (v99 >= v100)
      {
        if (v96 != v52 || v98 <= v52)
        {
          memmove(v52, (v91 + 8 * v92), 8 * v93 - 8 * v92);
        }

        v101 = v52 + v100;
        if (v100 < 1 || v95 <= v7)
        {
LABEL_140:
          v102 = __srca;
          v111 = v96;
        }

        else
        {
          do
          {
            v111 = v96 - 1;
            --v98;
            v7 = v101;
            while (1)
            {
              v112 = *(v7 - 1);
              v7 -= 8;
              v113 = *v111;
              swift_beginAccess();
              v114 = *(v112 + 16);
              swift_beginAccess();
              v116 = *(v114 + 16);
              v115 = *(v114 + 24);
              swift_beginAccess();
              v117 = *(v113 + 16);
              swift_beginAccess();
              v118 = v116 == *(v117 + 16) && v115 == *(v117 + 24);
              if (!v118 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {
                break;
              }

              if (v98 + 1 != v101)
              {
                *v98 = *v7;
              }

              --v98;
              v101 = v7;
              if (v7 <= __srca)
              {
                v101 = v7;
                goto LABEL_140;
              }
            }

            if (v98 + 1 != v96)
            {
              *v98 = *v111;
            }

            v102 = __srca;
            if (v101 <= __srca)
            {
              break;
            }

            --v96;
          }

          while (v94 < v111);
        }
      }

      else
      {
        if (v94 != v52 || v96 <= v52)
        {
          memmove(v52, (v91 + 8 * v135), 8 * v92 - 8 * v135);
        }

        v101 = v52 + v99;
        if (v99 >= 1 && v97 > v95)
        {
          v102 = __srca;
          while (1)
          {
            v103 = *v96;
            v104 = *v102;
            swift_beginAccess();
            v105 = *(v103 + 16);
            swift_beginAccess();
            v106 = *(v105 + 16);
            v107 = *(v105 + 24);
            swift_beginAccess();
            v108 = *(v104 + 16);
            swift_beginAccess();
            v109 = v106 == *(v108 + 16) && v107 == *(v108 + 24);
            if (v109 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {
              break;
            }

            v110 = v96;
            v17 = v94 == v96++;
            if (!v17)
            {
              goto LABEL_114;
            }

LABEL_115:
            ++v94;
            if (v102 >= v101 || v96 >= v98)
            {
              goto LABEL_138;
            }
          }

          v110 = v102;
          v17 = v94 == v102++;
          if (v17)
          {
            goto LABEL_115;
          }

LABEL_114:
          *v94 = *v110;
          goto LABEL_115;
        }

        v102 = __srca;
LABEL_138:
        v111 = v94;
      }

      if (v111 != v102 || v111 >= (v102 + ((v101 - v102 + (v101 - v102 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
      {
        memmove(v111, v102, 8 * ((v101 - v102) / 8));
      }

      v4 = v132;
      v119 = v137;
      v52 = __srca;
      if (v132 < v135)
      {
        goto LABEL_163;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v119 = specialized _ArrayBuffer._consumeAndCreateNew()(v137);
      }

      if (v131 > *(v119 + 2))
      {
        goto LABEL_164;
      }

      v120 = &v119[16 * v130];
      *(v120 + 4) = v135;
      *(v120 + 5) = v132;
      result = specialized Array.remove(at:)(v131);
      v7 = v119;
      v50 = *(v119 + 2);
      if (v50 <= 1)
      {
        goto LABEL_3;
      }
    }

    v58 = &v7[16 * v50 + 32];
    v59 = *(v58 - 64);
    v60 = *(v58 - 56);
    v64 = __OFSUB__(v60, v59);
    v61 = v60 - v59;
    if (v64)
    {
      goto LABEL_165;
    }

    v63 = *(v58 - 48);
    v62 = *(v58 - 40);
    v64 = __OFSUB__(v62, v63);
    v56 = v62 - v63;
    v57 = v64;
    if (v64)
    {
      goto LABEL_166;
    }

    v65 = &v7[16 * v50];
    v67 = *v65;
    v66 = *(v65 + 1);
    v64 = __OFSUB__(v66, v67);
    v68 = v66 - v67;
    if (v64)
    {
      goto LABEL_168;
    }

    v64 = __OFADD__(v56, v68);
    v69 = v56 + v68;
    if (v64)
    {
      goto LABEL_171;
    }

    if (v69 >= v61)
    {
      v87 = &v7[16 * v53 + 32];
      v89 = *v87;
      v88 = *(v87 + 1);
      v64 = __OFSUB__(v88, v89);
      v90 = v88 - v89;
      if (v64)
      {
        goto LABEL_175;
      }

      if (v56 < v90)
      {
        v53 = v50 - 2;
      }

      goto LABEL_96;
    }

    goto LABEL_75;
  }

  v7 = MEMORY[0x277D84F90];
LABEL_151:
  v4 = *v126;
  if (!*v126)
  {
    goto LABEL_189;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_184:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
    v7 = result;
  }

  v121 = *(v7 + 2);
  if (v121 >= 2)
  {
    while (*a3)
    {
      v122 = *&v7[16 * v121];
      v123 = *&v7[16 * v121 + 24];
      specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * v122), (*a3 + 8 * *&v7[16 * v121 + 16]), (*a3 + 8 * v123), v4);
      if (v127)
      {
      }

      if (v123 < v122)
      {
        goto LABEL_177;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
      }

      if (v121 - 2 >= *(v7 + 2))
      {
        goto LABEL_178;
      }

      v124 = &v7[16 * v121];
      *v124 = v122;
      *(v124 + 1) = v123;
      result = specialized Array.remove(at:)(v121 - 1);
      v121 = *(v7 + 2);
      if (v121 <= 1)
      {
      }
    }

    goto LABEL_188;
  }
}

{
  v87 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v87;
    if (!*v87)
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

    v79 = (v8 + 16);
    v80 = *(v8 + 16);
    if (v80 >= 2)
    {
      while (*a3)
      {
        v81 = (v8 + 16 * v80);
        v82 = *v81;
        v83 = &v79[2 * v80];
        v84 = v83[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 16 * *v81), (*a3 + 16 * *v83), (*a3 + 16 * v84), v5);
        if (v4)
        {
        }

        if (v84 < v82)
        {
          goto LABEL_114;
        }

        if (v80 - 2 >= *v79)
        {
          goto LABEL_115;
        }

        *v81 = v82;
        v81[1] = v84;
        v85 = *v79 - v80;
        if (*v79 < v80)
        {
          goto LABEL_116;
        }

        v80 = *v79 - 1;
        result = memmove(v83, v83 + 2, 16 * v85);
        *v79 = v80;
        if (v80 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v86 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 16 * v7);
      v11 = 16 * v9;
      v12 = (*a3 + 16 * v9);
      v14 = *v12;
      v13 = v12 + 4;
      v15 = v14;
      v16 = v9 + 2;
      v17 = v10;
      while (v6 != v16)
      {
        v18 = *v13;
        v13 += 2;
        v19 = v18 >= v17;
        ++v16;
        v17 = v18;
        if ((((v10 < v15) ^ v19) & 1) == 0)
        {
          v7 = v16 - 1;
          if (v10 >= v15)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v15)
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
        v20 = 16 * v7 - 16;
        v21 = v7;
        v22 = v9;
        do
        {
          if (v22 != --v21)
          {
            v24 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v23 = *(v24 + v11);
            *(v24 + v11) = *(v24 + v20);
            *(v24 + v20) = v23;
          }

          ++v22;
          v20 -= 16;
          v11 += 16;
        }

        while (v22 < v21);
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
    v33 = *(v8 + 24);
    v34 = v5 + 1;
    if (v5 >= v33 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v34;
    v35 = v8 + 32;
    v36 = (v8 + 32 + 16 * v5);
    *v36 = v9;
    v36[1] = v7;
    v88 = *v87;
    if (!*v87)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v34 - 1;
        if (v34 >= 4)
        {
          break;
        }

        if (v34 == 3)
        {
          v37 = *(v8 + 32);
          v38 = *(v8 + 40);
          v47 = __OFSUB__(v38, v37);
          v39 = v38 - v37;
          v40 = v47;
LABEL_57:
          if (v40)
          {
            goto LABEL_104;
          }

          v53 = (v8 + 16 * v34);
          v55 = *v53;
          v54 = v53[1];
          v56 = __OFSUB__(v54, v55);
          v57 = v54 - v55;
          v58 = v56;
          if (v56)
          {
            goto LABEL_106;
          }

          v59 = (v35 + 16 * v5);
          v61 = *v59;
          v60 = v59[1];
          v47 = __OFSUB__(v60, v61);
          v62 = v60 - v61;
          if (v47)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v57, v62))
          {
            goto LABEL_111;
          }

          if (v57 + v62 >= v39)
          {
            if (v39 < v62)
            {
              v5 = v34 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v34 < 2)
        {
          goto LABEL_112;
        }

        v63 = (v8 + 16 * v34);
        v65 = *v63;
        v64 = v63[1];
        v47 = __OFSUB__(v64, v65);
        v57 = v64 - v65;
        v58 = v47;
LABEL_72:
        if (v58)
        {
          goto LABEL_108;
        }

        v66 = (v35 + 16 * v5);
        v68 = *v66;
        v67 = v66[1];
        v47 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v47)
        {
          goto LABEL_110;
        }

        if (v69 < v57)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v34)
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

        v74 = (v35 + 16 * (v5 - 1));
        v75 = *v74;
        v76 = (v35 + 16 * v5);
        v77 = v76[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 16 * *v74), (*a3 + 16 * *v76), (*a3 + 16 * v77), v88);
        if (v4)
        {
        }

        if (v77 < v75)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v74 = v75;
        v74[1] = v77;
        v78 = *(v8 + 16);
        if (v5 >= v78)
        {
          goto LABEL_101;
        }

        v34 = v78 - 1;
        result = memmove((v35 + 16 * v5), v76 + 2, 16 * (v78 - 1 - v5));
        *(v8 + 16) = v78 - 1;
        if (v78 <= 2)
        {
          goto LABEL_3;
        }
      }

      v41 = v35 + 16 * v34;
      v42 = *(v41 - 64);
      v43 = *(v41 - 56);
      v47 = __OFSUB__(v43, v42);
      v44 = v43 - v42;
      if (v47)
      {
        goto LABEL_102;
      }

      v46 = *(v41 - 48);
      v45 = *(v41 - 40);
      v47 = __OFSUB__(v45, v46);
      v39 = v45 - v46;
      v40 = v47;
      if (v47)
      {
        goto LABEL_103;
      }

      v48 = (v8 + 16 * v34);
      v50 = *v48;
      v49 = v48[1];
      v47 = __OFSUB__(v49, v50);
      v51 = v49 - v50;
      if (v47)
      {
        goto LABEL_105;
      }

      v47 = __OFADD__(v39, v51);
      v52 = v39 + v51;
      if (v47)
      {
        goto LABEL_107;
      }

      if (v52 >= v44)
      {
        v70 = (v35 + 16 * v5);
        v72 = *v70;
        v71 = v70[1];
        v47 = __OFSUB__(v71, v72);
        v73 = v71 - v72;
        if (v47)
        {
          goto LABEL_113;
        }

        if (v39 < v73)
        {
          v5 = v34 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v86;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v25 = *a3;
  v26 = *a3 + 16 * v7 - 16;
  v27 = v9 - v7;
LABEL_30:
  v28 = *(v25 + 16 * v7);
  v29 = v27;
  v30 = v26;
  while (1)
  {
    if (v28 >= *v30)
    {
LABEL_29:
      ++v7;
      v26 += 16;
      --v27;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v25)
    {
      break;
    }

    v31 = *(v30 + 24);
    *(v30 + 16) = *v30;
    *v30 = v28;
    *(v30 + 8) = v31;
    v30 -= 16;
    if (__CFADD__(v29++, 1))
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